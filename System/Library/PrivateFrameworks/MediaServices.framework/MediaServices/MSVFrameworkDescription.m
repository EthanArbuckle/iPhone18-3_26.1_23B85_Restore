@interface MSVFrameworkDescription
- (MSVFrameworkDescription)initWithName:(id)a3 uuid:(id)a4 version:(id)a5 root:(BOOL)a6 debug:(BOOL)a7;
- (id)description;
@end

@implementation MSVFrameworkDescription

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NSString *)self->_name UTF8String];
  v5 = [(NSUUID *)self->_uuid UUIDString];
  v6 = v5;
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

  v9 = [v3 stringWithFormat:@"name: %-40s uuid: %@; version: %@; isRoot: %@; isDebug: %@", v4, v5, self->_version, v8, v7];;

  return v9;
}

- (MSVFrameworkDescription)initWithName:(id)a3 uuid:(id)a4 version:(id)a5 root:(BOOL)a6 debug:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v23.receiver = self;
  v23.super_class = MSVFrameworkDescription;
  v15 = [(MSVFrameworkDescription *)&v23 init];
  if (v15)
  {
    v16 = [v12 copy];
    name = v15->_name;
    v15->_name = v16;

    v18 = [v13 copy];
    uuid = v15->_uuid;
    v15->_uuid = v18;

    v20 = [v14 copy];
    version = v15->_version;
    v15->_version = v20;

    v15->_root = a6;
    v15->_debug = a7;
  }

  return v15;
}

@end