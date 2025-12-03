@interface IDSToolKTSelfVerificationHealableErrors
- (IDSToolKTSelfVerificationHealableErrors)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSToolKTSelfVerificationHealableErrors

- (void)encodeWithCoder:(id)coder
{
  accountHealableErrors = self->_accountHealableErrors;
  coderCopy = coder;
  [coderCopy encodeObject:accountHealableErrors forKey:@"account-healable-errors"];
  [coderCopy encodeObject:self->_deviceIdToHealableErrors forKey:@"device-id-to-healable-errors"];
  [coderCopy encodeInteger:self->_healableState forKey:@"healable-state"];
}

- (IDSToolKTSelfVerificationHealableErrors)initWithCoder:(id)coder
{
  v15[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = IDSToolKTSelfVerificationHealableErrors;
  v5 = [(IDSToolKTSelfVerificationHealableErrors *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    v8 = [v6 setWithArray:v7];
    v5->_accountHealableErrors = [coderCopy decodeObjectOfClasses:v8 forKey:@"account-healable-errors"];

    v9 = MEMORY[0x1E695DFD8];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v14[2] = objc_opt_class();
    v14[3] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:4];
    v11 = [v9 setWithArray:v10];
    v5->_deviceIdToHealableErrors = [coderCopy decodeObjectOfClasses:v11 forKey:@"device-id-to-healable-errors"];

    v5->_healableState = [coderCopy decodeIntegerForKey:@"healable-state"];
  }

  return v5;
}

@end