@interface PKApplyVerificationInformation
- (PKApplyVerificationInformation)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKApplyVerificationInformation

- (PKApplyVerificationInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = PKApplyVerificationInformation;
  v5 = [(PKApplyVerificationInformation *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    data = v5->_data;
    v5->_data = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"trialDeposits"];
    trialDeposits = v5->_trialDeposits;
    v5->_trialDeposits = v11;

    v5->_skippedVerification = [coderCopy decodeBoolForKey:@"skippedVerification"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  data = self->_data;
  coderCopy = coder;
  [coderCopy encodeObject:data forKey:@"data"];
  [coderCopy encodeObject:self->_trialDeposits forKey:@"trialDeposits"];
  [coderCopy encodeBool:self->_skippedVerification forKey:@"skippedVerification"];
}

@end