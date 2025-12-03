@interface PKApplicationMessageContent
- (PKApplicationMessageContent)initWithCoder:(id)coder;
- (PKApplicationMessageContentDefault)contentTypeDefault;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKApplicationMessageContent

- (PKApplicationMessageContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (![coderCopy decodeIntegerForKey:@"type"] && objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    if (!self || (v13.receiver = self, v13.super_class = PKApplicationMessageContent, (v8 = [(PKApplicationMessageContent *)&v13 init]) == 0))
    {
      self = 0;
      goto LABEL_11;
    }

    self = v8;
    v8->_type = 0;
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"group"];
    group = self->_group;
    self->_group = v9;

    if (self->_group)
    {
      v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"action"];
      action = self->_action;
      self->_action = v11;

LABEL_11:
      self = self;
      selfCopy = self;
      goto LABEL_3;
    }
  }

  v5 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKApplicationMessageContent" code:0 userInfo:0];
  [coderCopy failWithError:v5];

  selfCopy = 0;
LABEL_3:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeObject:self->_group forKey:@"group"];
  [coderCopy encodeObject:self->_action forKey:@"action"];
}

- (PKApplicationMessageContentDefault)contentTypeDefault
{
  if (self->_type)
  {
    self = 0;
  }

  return self;
}

@end