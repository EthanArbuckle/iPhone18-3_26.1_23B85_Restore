@interface GSKDebugNotification
- (BOOL)isEqual:(id)equal;
- (GSKDebugNotification)initWithText:(id)text;
- (unint64_t)hash;
@end

@implementation GSKDebugNotification

- (GSKDebugNotification)initWithText:(id)text
{
  textCopy = text;
  v11.receiver = self;
  v11.super_class = GSKDebugNotification;
  v6 = [(GSKDebugNotification *)&v11 init];
  if (v6)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v6->_identifier;
    v6->_identifier = uUIDString;

    objc_storeStrong(&v6->_text, text);
  }

  return v6;
}

- (unint64_t)hash
{
  identifier = [(GSKDebugNotification *)self identifier];
  v4 = [identifier hash];
  text = [(GSKDebugNotification *)self text];
  v6 = [text hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [(GSKDebugNotification *)self identifier];
    identifier2 = [v5 identifier];
    if ([identifier isEqualToString:identifier2])
    {
      text = [(GSKDebugNotification *)self text];
      text2 = [v5 text];
      v10 = [text isEqualToString:text2];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end