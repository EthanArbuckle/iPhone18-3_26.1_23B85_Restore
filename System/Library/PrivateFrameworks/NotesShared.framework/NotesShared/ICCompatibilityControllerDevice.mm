@interface ICCompatibilityControllerDevice
+ (int64_t)maximumNotesVersionForHardwareInfo:(ICDeviceHardwareInfo *)info;
+ (int64_t)notesVersionForDeviceInfo:(id)info;
- (BOOL)isEqual:(id)equal;
- (ICCompatibilityControllerDevice)initWithCoder:(id)coder;
- (ICCompatibilityControllerDevice)initWithMigrationDeviceInfo:(id)info;
- (ICCompatibilityControllerDevice)initWithNotesVersion:(int64_t)version maximumNotesVersion:(int64_t)notesVersion name:(id)name;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICCompatibilityControllerDevice

- (ICCompatibilityControllerDevice)initWithNotesVersion:(int64_t)version maximumNotesVersion:(int64_t)notesVersion name:(id)name
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = ICCompatibilityControllerDevice;
  v10 = [(ICCompatibilityControllerDevice *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_notesVersion = version;
    v10->_maximumNotesVersion = notesVersion;
    objc_storeStrong(&v10->_name, name);
  }

  return v11;
}

- (ICCompatibilityControllerDevice)initWithMigrationDeviceInfo:(id)info
{
  infoCopy = info;
  if (([infoCopy isIOSDevice] & 1) != 0 || objc_msgSend(infoCopy, "isOSXDevice"))
  {
    v5 = [objc_opt_class() notesVersionForDeviceInfo:infoCopy];
    v6 = objc_opt_class();
    if (infoCopy)
    {
      [infoCopy hardwareInfo];
    }

    else
    {
      memset(v11, 0, sizeof(v11));
    }

    v7 = [v6 maximumNotesVersionForHardwareInfo:v11];
    name = [infoCopy name];
    self = [(ICCompatibilityControllerDevice *)self initWithNotesVersion:v5 maximumNotesVersion:v7 name:name];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  notesVersion = [(ICCompatibilityControllerDevice *)self notesVersion];
  if (notesVersion == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = @"—";
  }

  else
  {
    [(ICCompatibilityControllerDevice *)self notesVersion];
    v7 = NSStringFromNotesVersion();
  }

  maximumNotesVersion = [(ICCompatibilityControllerDevice *)self maximumNotesVersion];
  if (maximumNotesVersion == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = @"—";
  }

  else
  {
    [(ICCompatibilityControllerDevice *)self maximumNotesVersion];
    v9 = NSStringFromNotesVersion();
  }

  name = [(ICCompatibilityControllerDevice *)self name];
  v11 = [v3 stringWithFormat:@"<%@: %p, notesVersion: %@, maximumNotesVersion: %@, name: %@>", v5, self, v7, v9, name];

  if (maximumNotesVersion != 0x7FFFFFFFFFFFFFFFLL)
  {
  }

  if (notesVersion != 0x7FFFFFFFFFFFFFFFLL)
  {
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  equalCopy = equal;
  objc_opt_class();
  v5 = ICDynamicCast();

  notesVersion = [v5 notesVersion];
  if (notesVersion == -[ICCompatibilityControllerDevice notesVersion](self, "notesVersion") && (v7 = [v5 maximumNotesVersion], v7 == -[ICCompatibilityControllerDevice maximumNotesVersion](self, "maximumNotesVersion")))
  {
    name = [v5 name];
    name2 = [(ICCompatibilityControllerDevice *)self name];
    v10 = [name isEqualToString:name2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[ICCompatibilityControllerDevice notesVersion](self, "notesVersion")}];
  v4 = [v3 hash];
  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[ICCompatibilityControllerDevice maximumNotesVersion](self, "maximumNotesVersion")}];
  v6 = [v5 hash];
  name = [(ICCompatibilityControllerDevice *)self name];
  [name hash];
  v15 = ICHashWithHashKeys(v4, v8, v9, v10, v11, v12, v13, v14, v6);

  return v15;
}

- (ICCompatibilityControllerDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ICCompatibilityControllerDevice;
  v5 = [(ICCompatibilityControllerDevice *)&v9 init];
  if (v5)
  {
    v5->_notesVersion = [coderCopy decodeIntegerForKey:@"notesVersion"];
    v5->_maximumNotesVersion = [coderCopy decodeIntegerForKey:@"maximumNotesVersion"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[ICCompatibilityControllerDevice notesVersion](self forKey:{"notesVersion"), @"notesVersion"}];
  [coderCopy encodeInteger:-[ICCompatibilityControllerDevice maximumNotesVersion](self forKey:{"maximumNotesVersion"), @"maximumNotesVersion"}];
  name = [(ICCompatibilityControllerDevice *)self name];
  [coderCopy encodeObject:name forKey:@"name"];
}

+ (int64_t)notesVersionForDeviceInfo:(id)info
{
  infoCopy = info;
  softwareVersion = [infoCopy softwareVersion];
  lowercaseString = [softwareVersion lowercaseString];
  v6 = [lowercaseString hasPrefix:@"osx"];

  if (!v6)
  {
LABEL_13:
    softwareVersion2 = [infoCopy softwareVersion];
    lowercaseString2 = [softwareVersion2 lowercaseString];
    v9 = [lowercaseString2 hasPrefix:@"ios"];

    if (!v9)
    {
LABEL_35:
      softwareVersion3 = [infoCopy softwareVersion];
      lowercaseString3 = [softwareVersion3 lowercaseString];
      v13 = [lowercaseString3 hasPrefix:@"visionos"];

      if (!v13 || ([infoCopy upgradedToMajor:1 minor:0] & 1) == 0)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if (([infoCopy upgradedToMajor:17 minor:0] & 1) == 0)
    {
      if ([infoCopy upgradedToMajor:16 minor:0])
      {
        goto LABEL_16;
      }

      if ([infoCopy upgradedToMajor:15 minor:4])
      {
LABEL_18:
        v10 = 8;
        goto LABEL_39;
      }

      if ([infoCopy upgradedToMajor:15 minor:0])
      {
LABEL_20:
        v10 = 7;
        goto LABEL_39;
      }

      if ([infoCopy upgradedToMajor:14 minor:5])
      {
LABEL_22:
        v10 = 6;
        goto LABEL_39;
      }

      if ([infoCopy upgradedToMajor:14 minor:0])
      {
LABEL_24:
        v10 = 5;
        goto LABEL_39;
      }

      if ([infoCopy upgradedToMajor:13 minor:0])
      {
LABEL_26:
        v10 = 4;
        goto LABEL_39;
      }

      if ([infoCopy upgradedToMajor:12 minor:0])
      {
LABEL_28:
        v10 = 3;
        goto LABEL_39;
      }

      if ([infoCopy upgradedToMajor:11 minor:0])
      {
LABEL_30:
        v10 = 2;
        goto LABEL_39;
      }

      if ([infoCopy upgradedToMajor:10 minor:0])
      {
LABEL_32:
        v10 = 1;
        goto LABEL_39;
      }

      if ([infoCopy upgradedToMajor:9 minor:0])
      {
LABEL_34:
        v10 = 0;
        goto LABEL_39;
      }

      goto LABEL_35;
    }

LABEL_37:
    v10 = 13;
    goto LABEL_39;
  }

  if ([infoCopy upgradedToMajor:14 minor:0])
  {
    goto LABEL_37;
  }

  if (([infoCopy upgradedToMajor:13 minor:0] & 1) == 0)
  {
    if ([infoCopy upgradedToMajor:12 minor:3])
    {
      goto LABEL_18;
    }

    if ([infoCopy upgradedToMajor:12 minor:0])
    {
      goto LABEL_20;
    }

    if ([infoCopy upgradedToMajor:11 minor:3])
    {
      goto LABEL_22;
    }

    if ([infoCopy upgradedToMajor:11 minor:0])
    {
      goto LABEL_24;
    }

    if ([infoCopy upgradedToMajor:10 minor:15])
    {
      goto LABEL_26;
    }

    if ([infoCopy upgradedToMajor:10 minor:14])
    {
      goto LABEL_28;
    }

    if ([infoCopy upgradedToMajor:10 minor:13])
    {
      goto LABEL_30;
    }

    if ([infoCopy upgradedToMajor:10 minor:12])
    {
      goto LABEL_32;
    }

    if ([infoCopy upgradedToMajor:10 minor:11])
    {
      goto LABEL_34;
    }

    goto LABEL_13;
  }

LABEL_16:
  v10 = 9;
LABEL_39:

  return v10;
}

+ (int64_t)maximumNotesVersionForHardwareInfo:(ICDeviceHardwareInfo *)info
{
  switch(info->modelName)
  {
    case 0uLL:
    case 0xCuLL:
    case 0xDuLL:
      return 0x7FFFFFFFFFFFFFFFLL;
    case 1uLL:
      version = info->version;
      if (version <= 9)
      {
        if ((version - 1) < 8)
        {
          return -1;
        }

        if (version == 9)
        {
          return 0;
        }

        return +[ICCloudSyncingObject currentNotesVersion];
      }

      if (version <= 14)
      {
        if ((version - 10) < 3)
        {
          return 2;
        }

        if (version == 13)
        {
          return 4;
        }

        if (version != 14)
        {
          return +[ICCloudSyncingObject currentNotesVersion];
        }

        v9 = (info->subVersion - 1) >= 3;
        v10 = 6;
        v11 = 4;
        goto LABEL_54;
      }

      if ((version - 16) < 2)
      {
        return 8;
      }

      if (version != 15)
      {
        if (version == 18)
        {
          return 12;
        }

        return +[ICCloudSyncingObject currentNotesVersion];
      }

      return 6;
    case 2uLL:
      return +[ICCloudSyncingObject currentNotesVersion];
    case 3uLL:
    case 5uLL:
      v4 = info->version - 1;
      if (v4 >= 7)
      {
        return +[ICCloudSyncingObject currentNotesVersion];
      }

      v5 = &unk_2150C0910;
      return v5[v4];
    case 4uLL:
      v4 = info->version - 1;
      if (v4 >= 6)
      {
        return +[ICCloudSyncingObject currentNotesVersion];
      }

      v5 = &unk_2150C08E0;
      return v5[v4];
    case 6uLL:
      v4 = info->version - 1;
      if (v4 >= 0xA)
      {
        return +[ICCloudSyncingObject currentNotesVersion];
      }

      v5 = &unk_2150C0948;
      return v5[v4];
    case 7uLL:
      v6 = info->version;
      if (v6 <= 8)
      {
        if ((v6 - 3) < 3)
        {
          return 0;
        }

        if ((v6 - 6) < 3)
        {
          return 2;
        }

        if ((v6 - 1) < 2)
        {
          return -1;
        }

        return +[ICCloudSyncingObject currentNotesVersion];
      }

      if (v6 <= 11)
      {
        if ((v6 - 9) < 2)
        {
          return 4;
        }

        if (v6 != 11)
        {
          return +[ICCloudSyncingObject currentNotesVersion];
        }

        v9 = (info->subVersion - 1) >= 3;
        v10 = 8;
        v11 = 6;
LABEL_54:
        if (v9)
        {
          return v10;
        }

        else
        {
          return v11;
        }
      }

      if ((v6 - 12) < 2)
      {
        return 8;
      }

      if (v6 == 14)
      {
        return 12;
      }

      return +[ICCloudSyncingObject currentNotesVersion];
    case 8uLL:
      v4 = info->version - 1;
      if (v4 >= 7)
      {
        return +[ICCloudSyncingObject currentNotesVersion];
      }

      v5 = &unk_2150C0998;
      return v5[v4];
    case 9uLL:
      v4 = info->version - 1;
      if (v4 >= 7)
      {
        return 8;
      }

      v5 = &unk_2150C09D0;
      return v5[v4];
    case 0xAuLL:
      v4 = info->version - 1;
      if (v4 >= 0xA)
      {
        return +[ICCloudSyncingObject currentNotesVersion];
      }

      v5 = &unk_2150C0A08;
      return v5[v4];
    case 0xBuLL:
      v8 = info->version;
      if (v8 > 3)
      {
        switch(v8)
        {
          case 4:
            return 3;
          case 5:
            return 8;
          case 6:
            return 12;
          default:
            return +[ICCloudSyncingObject currentNotesVersion];
        }
      }

      else
      {
        if (v8 == 1)
        {
          return -1;
        }

        if (v8 != 2)
        {
          if (v8 == 3)
          {
            return (info->subVersion - 4) < 0xFFFFFFFFFFFFFFFDLL;
          }

          return +[ICCloudSyncingObject currentNotesVersion];
        }

        return 0;
      }

    default:
      return 13;
  }
}

@end