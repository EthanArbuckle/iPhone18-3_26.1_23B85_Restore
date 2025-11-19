@interface PKApplyVerificationInformation
- (PKApplyVerificationInformation)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKApplyVerificationInformation

- (PKApplyVerificationInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKApplyVerificationInformation;
  v5 = [(PKApplyVerificationInformation *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    data = v5->_data;
    v5->_data = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"trialDeposits"];
    trialDeposits = v5->_trialDeposits;
    v5->_trialDeposits = v11;

    v5->_skippedVerification = [v4 decodeBoolForKey:@"skippedVerification"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  data = self->_data;
  v5 = a3;
  [v5 encodeObject:data forKey:@"data"];
  [v5 encodeObject:self->_trialDeposits forKey:@"trialDeposits"];
  [v5 encodeBool:self->_skippedVerification forKey:@"skippedVerification"];
}

@end