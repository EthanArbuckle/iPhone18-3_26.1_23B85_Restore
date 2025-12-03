@interface MSVFrameworkDescription
- (MSVFrameworkDescription)initWithName:(id)name uuid:(id)uuid version:(id)version root:(BOOL)root debug:(BOOL)debug;
- (id)description;
@end

@implementation MSVFrameworkDescription

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  uTF8String = [(NSString *)self->_name UTF8String];
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  v6 = uUIDString;
  v7 = @"NO";
  if (self->_root)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if (self->_debug)
  {
    v7 = @"YES";
  }

  v9 = [v3 stringWithFormat:@"name: %-40s uuid: %@; version: %@; isRoot: %@; isDebug: %@", uTF8String, uUIDString, self->_version, v8, v7];;

  return v9;
}

- (MSVFrameworkDescription)initWithName:(id)name uuid:(id)uuid version:(id)version root:(BOOL)root debug:(BOOL)debug
{
  nameCopy = name;
  uuidCopy = uuid;
  versionCopy = version;
  v23.receiver = self;
  v23.super_class = MSVFrameworkDescription;
  v15 = [(MSVFrameworkDescription *)&v23 init];
  if (v15)
  {
    v16 = [nameCopy copy];
    name = v15->_name;
    v15->_name = v16;

    v18 = [uuidCopy copy];
    uuid = v15->_uuid;
    v15->_uuid = v18;

    v20 = [versionCopy copy];
    version = v15->_version;
    v15->_version = v20;

    v15->_root = root;
    v15->_debug = debug;
  }

  return v15;
}

@end