@interface DMFFetchActivationLockBypassCodeResultObject
- (DMFFetchActivationLockBypassCodeResultObject)initWithBypassCode:(id)a3;
- (DMFFetchActivationLockBypassCodeResultObject)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFFetchActivationLockBypassCodeResultObject

- (DMFFetchActivationLockBypassCodeResultObject)initWithBypassCode:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DMFFetchActivationLockBypassCodeResultObject;
  v5 = [(CATTaskResultObject *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    bypassCode = v5->_bypassCode;
    v5->_bypassCode = v6;
  }

  return v5;
}

- (DMFFetchActivationLockBypassCodeResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = DMFFetchActivationLockBypassCodeResultObject;
  v5 = [(CATTaskResultObject *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"bypassCode"];
    bypassCode = v5->_bypassCode;
    v5->_bypassCode = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = DMFFetchActivationLockBypassCodeResultObject;
  v4 = a3;
  [(CATTaskResultObject *)&v6 encodeWithCoder:v4];
  v5 = [(DMFFetchActivationLockBypassCodeResultObject *)self bypassCode:v6.receiver];
  [v4 encodeObject:v5 forKey:@"bypassCode"];
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(DMFFetchActivationLockBypassCodeResultObject *)self bypassCode];
  v4 = [v2 stringWithFormat:@"Bypass code: %@", v3];

  return v4;
}

@end