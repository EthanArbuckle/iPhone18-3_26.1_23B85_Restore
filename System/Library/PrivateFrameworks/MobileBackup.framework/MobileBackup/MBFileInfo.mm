@interface MBFileInfo
+ (id)fileInfoWithAbsolutePath:(id)path mode:(unsigned __int16)mode priority:(unint64_t)priority;
+ (id)fileInfoWithRestorable:(id)restorable;
- (MBFileInfo)initWithCoder:(id)coder;
- (id)_initWithAbsolutePath:(id)path extendedAttributes:(id)attributes isDirectory:(BOOL)directory priority:(unint64_t)priority;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MBFileInfo

+ (id)fileInfoWithRestorable:(id)restorable
{
  restorableCopy = restorable;
  v4 = [MBFileInfo alloc];
  absolutePath = [restorableCopy absolutePath];
  extendedAttributes = [restorableCopy extendedAttributes];
  v7 = ([restorableCopy type] & 0xF000) == 0x4000;
  priority = [restorableCopy priority];

  v9 = [(MBFileInfo *)v4 _initWithAbsolutePath:absolutePath extendedAttributes:extendedAttributes isDirectory:v7 priority:priority];

  return v9;
}

+ (id)fileInfoWithAbsolutePath:(id)path mode:(unsigned __int16)mode priority:(unint64_t)priority
{
  pathCopy = path;
  v8 = [[MBFileInfo alloc] _initWithAbsolutePath:pathCopy extendedAttributes:0 isDirectory:(mode & 0xF000) == 0x4000 priority:priority];

  return v8;
}

- (id)_initWithAbsolutePath:(id)path extendedAttributes:(id)attributes isDirectory:(BOOL)directory priority:(unint64_t)priority
{
  pathCopy = path;
  attributesCopy = attributes;
  v18.receiver = self;
  v18.super_class = MBFileInfo;
  v12 = [(MBFileInfo *)&v18 init];
  if (v12)
  {
    v13 = [pathCopy copy];
    path = v12->_path;
    v12->_path = v13;

    v15 = [attributesCopy copy];
    extendedAttributes = v12->_extendedAttributes;
    v12->_extendedAttributes = v15;

    v12->_isDirectory = directory;
    v12->_priority = priority;
  }

  return v12;
}

- (MBFileInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = MBFileInfo;
  v5 = [(MBFileInfo *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"path"];
    path = v5->_path;
    v5->_path = v6;

    v5->_isDirectory = [coderCopy decodeBoolForKey:@"isDirectory"];
    v5->_priority = [coderCopy decodeIntegerForKey:@"priority"];
    v8 = objc_opt_class();
    v9 = [coderCopy decodeDictionaryWithKeysOfClass:v8 objectsOfClass:objc_opt_class() forKey:@"extendedAttributes"];
    extendedAttributes = v5->_extendedAttributes;
    v5->_extendedAttributes = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  path = self->_path;
  coderCopy = coder;
  [coderCopy encodeObject:path forKey:@"path"];
  [coderCopy encodeBool:self->_isDirectory forKey:@"isDirectory"];
  [coderCopy encodeInteger:self->_priority forKey:@"priority"];
  [coderCopy encodeObject:self->_extendedAttributes forKey:@"extendedAttributes"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MBFileInfo alloc];
  path = self->_path;
  extendedAttributes = self->_extendedAttributes;
  isDirectory = self->_isDirectory;
  priority = self->_priority;

  return [(MBFileInfo *)v4 _initWithAbsolutePath:path extendedAttributes:extendedAttributes isDirectory:isDirectory priority:priority];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = MBFileInfo;
  v4 = [(MBFileInfo *)&v10 description];
  v5 = v4;
  v6 = "";
  if (self->_isDirectory)
  {
    v6 = "isDir ";
  }

  path = self->_path;
  v8 = [v3 stringWithFormat:@"%@(%spriority %ld %@ xattr %@)", v4, v6, self->_priority, path, self->_extendedAttributes];

  return v8;
}

@end