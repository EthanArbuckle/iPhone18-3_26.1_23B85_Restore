@interface GSKDebugNotification
- (BOOL)isEqual:(id)a3;
- (GSKDebugNotification)initWithText:(id)a3;
- (unint64_t)hash;
@end

@implementation GSKDebugNotification

- (GSKDebugNotification)initWithText:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = GSKDebugNotification;
  v6 = [(GSKDebugNotification *)&v11 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CCAD78] UUID];
    v8 = [v7 UUIDString];
    identifier = v6->_identifier;
    v6->_identifier = v8;

    objc_storeStrong(&v6->_text, a3);
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(GSKDebugNotification *)self identifier];
  v4 = [v3 hash];
  v5 = [(GSKDebugNotification *)self text];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(GSKDebugNotification *)self identifier];
    v7 = [v5 identifier];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(GSKDebugNotification *)self text];
      v9 = [v5 text];
      v10 = [v8 isEqualToString:v9];
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