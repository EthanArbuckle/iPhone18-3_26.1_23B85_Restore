@interface CDMBaseCommand
- (CDMBaseCommand)init;
- (CDMBaseCommand)initWithCoder:(id)a3;
- (NSString)commandName;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CDMBaseCommand

- (CDMBaseCommand)init
{
  v8.receiver = self;
  v8.super_class = CDMBaseCommand;
  v2 = [(CDMBaseCommand *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    v4 = [v3 UUIDString];
    uuid = v2->_uuid;
    v2->_uuid = v4;

    cmdError = v2->_cmdError;
    v2->_cmdError = 0;
  }

  return v2;
}

- (NSString)commandName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)encodeWithCoder:(id)a3
{
  uuid = self->_uuid;
  v5 = a3;
  [v5 encodeObject:uuid forKey:@"uuid"];
  [v5 encodeObject:self->_cmdError forKey:@"cmdError"];
}

- (CDMBaseCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CDMBaseCommand;
  v5 = [(CDMBaseCommand *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cmdError"];
    cmdError = v5->_cmdError;
    v5->_cmdError = v8;
  }

  return v5;
}

@end