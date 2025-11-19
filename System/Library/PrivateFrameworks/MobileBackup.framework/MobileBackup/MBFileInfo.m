@interface MBFileInfo
+ (id)fileInfoWithAbsolutePath:(id)a3 mode:(unsigned __int16)a4 priority:(unint64_t)a5;
+ (id)fileInfoWithRestorable:(id)a3;
- (MBFileInfo)initWithCoder:(id)a3;
- (id)_initWithAbsolutePath:(id)a3 extendedAttributes:(id)a4 isDirectory:(BOOL)a5 priority:(unint64_t)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MBFileInfo

+ (id)fileInfoWithRestorable:(id)a3
{
  v3 = a3;
  v4 = [MBFileInfo alloc];
  v5 = [v3 absolutePath];
  v6 = [v3 extendedAttributes];
  v7 = ([v3 type] & 0xF000) == 0x4000;
  v8 = [v3 priority];

  v9 = [(MBFileInfo *)v4 _initWithAbsolutePath:v5 extendedAttributes:v6 isDirectory:v7 priority:v8];

  return v9;
}

+ (id)fileInfoWithAbsolutePath:(id)a3 mode:(unsigned __int16)a4 priority:(unint64_t)a5
{
  v7 = a3;
  v8 = [[MBFileInfo alloc] _initWithAbsolutePath:v7 extendedAttributes:0 isDirectory:(a4 & 0xF000) == 0x4000 priority:a5];

  return v8;
}

- (id)_initWithAbsolutePath:(id)a3 extendedAttributes:(id)a4 isDirectory:(BOOL)a5 priority:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v18.receiver = self;
  v18.super_class = MBFileInfo;
  v12 = [(MBFileInfo *)&v18 init];
  if (v12)
  {
    v13 = [v10 copy];
    path = v12->_path;
    v12->_path = v13;

    v15 = [v11 copy];
    extendedAttributes = v12->_extendedAttributes;
    v12->_extendedAttributes = v15;

    v12->_isDirectory = a5;
    v12->_priority = a6;
  }

  return v12;
}

- (MBFileInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MBFileInfo;
  v5 = [(MBFileInfo *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"path"];
    path = v5->_path;
    v5->_path = v6;

    v5->_isDirectory = [v4 decodeBoolForKey:@"isDirectory"];
    v5->_priority = [v4 decodeIntegerForKey:@"priority"];
    v8 = objc_opt_class();
    v9 = [v4 decodeDictionaryWithKeysOfClass:v8 objectsOfClass:objc_opt_class() forKey:@"extendedAttributes"];
    extendedAttributes = v5->_extendedAttributes;
    v5->_extendedAttributes = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  path = self->_path;
  v5 = a3;
  [v5 encodeObject:path forKey:@"path"];
  [v5 encodeBool:self->_isDirectory forKey:@"isDirectory"];
  [v5 encodeInteger:self->_priority forKey:@"priority"];
  [v5 encodeObject:self->_extendedAttributes forKey:@"extendedAttributes"];
}

- (id)copyWithZone:(_NSZone *)a3
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