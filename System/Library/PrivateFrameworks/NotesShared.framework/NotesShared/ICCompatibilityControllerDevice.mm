@interface ICCompatibilityControllerDevice
+ (int64_t)maximumNotesVersionForHardwareInfo:(ICDeviceHardwareInfo *)a3;
+ (int64_t)notesVersionForDeviceInfo:(id)a3;
- (BOOL)isEqual:(id)a3;
- (ICCompatibilityControllerDevice)initWithCoder:(id)a3;
- (ICCompatibilityControllerDevice)initWithMigrationDeviceInfo:(id)a3;
- (ICCompatibilityControllerDevice)initWithNotesVersion:(int64_t)a3 maximumNotesVersion:(int64_t)a4 name:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICCompatibilityControllerDevice

- (ICCompatibilityControllerDevice)initWithNotesVersion:(int64_t)a3 maximumNotesVersion:(int64_t)a4 name:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = ICCompatibilityControllerDevice;
  v10 = [(ICCompatibilityControllerDevice *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_notesVersion = a3;
    v10->_maximumNotesVersion = a4;
    objc_storeStrong(&v10->_name, a5);
  }

  return v11;
}

- (ICCompatibilityControllerDevice)initWithMigrationDeviceInfo:(id)a3
{
  v4 = a3;
  if (([v4 isIOSDevice] & 1) != 0 || objc_msgSend(v4, "isOSXDevice"))
  {
    v5 = [objc_opt_class() notesVersionForDeviceInfo:v4];
    v6 = objc_opt_class();
    if (v4)
    {
      [v4 hardwareInfo];
    }

    else
    {
      memset(v11, 0, sizeof(v11));
    }

    v7 = [v6 maximumNotesVersionForHardwareInfo:v11];
    v8 = [v4 name];
    self = [(ICCompatibilityControllerDevice *)self initWithNotesVersion:v5 maximumNotesVersion:v7 name:v8];

    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ICCompatibilityControllerDevice *)self notesVersion];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = @"—";
  }

  else
  {
    [(ICCompatibilityControllerDevice *)self notesVersion];
    v7 = NSStringFromNotesVersion();
  }

  v8 = [(ICCompatibilityControllerDevice *)self maximumNotesVersion];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = @"—";
  }

  else
  {
    [(ICCompatibilityControllerDevice *)self maximumNotesVersion];
    v9 = NSStringFromNotesVersion();
  }

  v10 = [(ICCompatibilityControllerDevice *)self name];
  v11 = [v3 stringWithFormat:@"<%@: %p, notesVersion: %@, maximumNotesVersion: %@, name: %@>", v5, self, v7, v9, v10];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
  }

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v4 = a3;
  objc_opt_class();
  v5 = ICDynamicCast();

  v6 = [v5 notesVersion];
  if (v6 == -[ICCompatibilityControllerDevice notesVersion](self, "notesVersion") && (v7 = [v5 maximumNotesVersion], v7 == -[ICCompatibilityControllerDevice maximumNotesVersion](self, "maximumNotesVersion")))
  {
    v8 = [v5 name];
    v9 = [(ICCompatibilityControllerDevice *)self name];
    v10 = [v8 isEqualToString:v9];
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
  v7 = [(ICCompatibilityControllerDevice *)self name];
  [v7 hash];
  v15 = ICHashWithHashKeys(v4, v8, v9, v10, v11, v12, v13, v14, v6);

  return v15;
}

- (ICCompatibilityControllerDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICCompatibilityControllerDevice;
  v5 = [(ICCompatibilityControllerDevice *)&v9 init];
  if (v5)
  {
    v5->_notesVersion = [v4 decodeIntegerForKey:@"notesVersion"];
    v5->_maximumNotesVersion = [v4 decodeIntegerForKey:@"maximumNotesVersion"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[ICCompatibilityControllerDevice notesVersion](self forKey:{"notesVersion"), @"notesVersion"}];
  [v4 encodeInteger:-[ICCompatibilityControllerDevice maximumNotesVersion](self forKey:{"maximumNotesVersion"), @"maximumNotesVersion"}];
  v5 = [(ICCompatibilityControllerDevice *)self name];
  [v4 encodeObject:v5 forKey:@"name"];
}

+ (int64_t)notesVersionForDeviceInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 softwareVersion];
  v5 = [v4 lowercaseString];
  v6 = [v5 hasPrefix:@"osx"];

  if (!v6)
  {
LABEL_13:
    v7 = [v3 softwareVersion];
    v8 = [v7 lowercaseString];
    v9 = [v8 hasPrefix:@"ios"];

    if (!v9)
    {
LABEL_35:
      v11 = [v3 softwareVersion];
      v12 = [v11 lowercaseString];
      v13 = [v12 hasPrefix:@"visionos"];

      if (!v13 || ([v3 upgradedToMajor:1 minor:0] & 1) == 0)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if (([v3 upgradedToMajor:17 minor:0] & 1) == 0)
    {
      if ([v3 upgradedToMajor:16 minor:0])
      {
        goto LABEL_16;
      }

      if ([v3 upgradedToMajor:15 minor:4])
      {
LABEL_18:
        v10 = 8;
        goto LABEL_39;
      }

      if ([v3 upgradedToMajor:15 minor:0])
      {
LABEL_20:
        v10 = 7;
        goto LABEL_39;
      }

      if ([v3 upgradedToMajor:14 minor:5])
      {
LABEL_22:
        v10 = 6;
        goto LABEL_39;
      }

      if ([v3 upgradedToMajor:14 minor:0])
      {
LABEL_24:
        v10 = 5;
        goto LABEL_39;
      }

      if ([v3 upgradedToMajor:13 minor:0])
      {
LABEL_26:
        v10 = 4;
        goto LABEL_39;
      }

      if ([v3 upgradedToMajor:12 minor:0])
      {
LABEL_28:
        v10 = 3;
        goto LABEL_39;
      }

      if ([v3 upgradedToMajor:11 minor:0])
      {
LABEL_30:
        v10 = 2;
        goto LABEL_39;
      }

      if ([v3 upgradedToMajor:10 minor:0])
      {
LABEL_32:
        v10 = 1;
        goto LABEL_39;
      }

      if ([v3 upgradedToMajor:9 minor:0])
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

  if ([v3 upgradedToMajor:14 minor:0])
  {
    goto LABEL_37;
  }

  if (([v3 upgradedToMajor:13 minor:0] & 1) == 0)
  {
    if ([v3 upgradedToMajor:12 minor:3])
    {
      goto LABEL_18;
    }

    if ([v3 upgradedToMajor:12 minor:0])
    {
      goto LABEL_20;
    }

    if ([v3 upgradedToMajor:11 minor:3])
    {
      goto LABEL_22;
    }

    if ([v3 upgradedToMajor:11 minor:0])
    {
      goto LABEL_24;
    }

    if ([v3 upgradedToMajor:10 minor:15])
    {
      goto LABEL_26;
    }

    if ([v3 upgradedToMajor:10 minor:14])
    {
      goto LABEL_28;
    }

    if ([v3 upgradedToMajor:10 minor:13])
    {
      goto LABEL_30;
    }

    if ([v3 upgradedToMajor:10 minor:12])
    {
      goto LABEL_32;
    }

    if ([v3 upgradedToMajor:10 minor:11])
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

+ (int64_t)maximumNotesVersionForHardwareInfo:(ICDeviceHardwareInfo *)a3
{
  switch(a3->modelName)
  {
    case 0uLL:
    case 0xCuLL:
    case 0xDuLL:
      return 0x7FFFFFFFFFFFFFFFLL;
    case 1uLL:
      version = a3->version;
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

        v9 = (a3->subVersion - 1) >= 3;
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
      v4 = a3->version - 1;
      if (v4 >= 7)
      {
        return +[ICCloudSyncingObject currentNotesVersion];
      }

      v5 = &unk_2150C0910;
      return v5[v4];
    case 4uLL:
      v4 = a3->version - 1;
      if (v4 >= 6)
      {
        return +[ICCloudSyncingObject currentNotesVersion];
      }

      v5 = &unk_2150C08E0;
      return v5[v4];
    case 6uLL:
      v4 = a3->version - 1;
      if (v4 >= 0xA)
      {
        return +[ICCloudSyncingObject currentNotesVersion];
      }

      v5 = &unk_2150C0948;
      return v5[v4];
    case 7uLL:
      v6 = a3->version;
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

        v9 = (a3->subVersion - 1) >= 3;
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
      v4 = a3->version - 1;
      if (v4 >= 7)
      {
        return +[ICCloudSyncingObject currentNotesVersion];
      }

      v5 = &unk_2150C0998;
      return v5[v4];
    case 9uLL:
      v4 = a3->version - 1;
      if (v4 >= 7)
      {
        return 8;
      }

      v5 = &unk_2150C09D0;
      return v5[v4];
    case 0xAuLL:
      v4 = a3->version - 1;
      if (v4 >= 0xA)
      {
        return +[ICCloudSyncingObject currentNotesVersion];
      }

      v5 = &unk_2150C0A08;
      return v5[v4];
    case 0xBuLL:
      v8 = a3->version;
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
            return (a3->subVersion - 4) < 0xFFFFFFFFFFFFFFFDLL;
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