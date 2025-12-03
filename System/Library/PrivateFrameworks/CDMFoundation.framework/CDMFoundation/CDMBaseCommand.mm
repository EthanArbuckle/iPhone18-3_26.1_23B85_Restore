@interface CDMBaseCommand
- (CDMBaseCommand)init;
- (CDMBaseCommand)initWithCoder:(id)coder;
- (NSString)commandName;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CDMBaseCommand

- (CDMBaseCommand)init
{
  v8.receiver = self;
  v8.super_class = CDMBaseCommand;
  v2 = [(CDMBaseCommand *)&v8 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    uuid = v2->_uuid;
    v2->_uuid = uUIDString;

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

- (void)encodeWithCoder:(id)coder
{
  uuid = self->_uuid;
  coderCopy = coder;
  [coderCopy encodeObject:uuid forKey:@"uuid"];
  [coderCopy encodeObject:self->_cmdError forKey:@"cmdError"];
}

- (CDMBaseCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CDMBaseCommand;
  v5 = [(CDMBaseCommand *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cmdError"];
    cmdError = v5->_cmdError;
    v5->_cmdError = v8;
  }

  return v5;
}

@end