@interface DMFFetchActivationLockBypassCodeResultObject
- (DMFFetchActivationLockBypassCodeResultObject)initWithBypassCode:(id)code;
- (DMFFetchActivationLockBypassCodeResultObject)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFFetchActivationLockBypassCodeResultObject

- (DMFFetchActivationLockBypassCodeResultObject)initWithBypassCode:(id)code
{
  codeCopy = code;
  v9.receiver = self;
  v9.super_class = DMFFetchActivationLockBypassCodeResultObject;
  v5 = [(CATTaskResultObject *)&v9 init];
  if (v5)
  {
    v6 = [codeCopy copy];
    bypassCode = v5->_bypassCode;
    v5->_bypassCode = v6;
  }

  return v5;
}

- (DMFFetchActivationLockBypassCodeResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = DMFFetchActivationLockBypassCodeResultObject;
  v5 = [(CATTaskResultObject *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"bypassCode"];
    bypassCode = v5->_bypassCode;
    v5->_bypassCode = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DMFFetchActivationLockBypassCodeResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v6 encodeWithCoder:coderCopy];
  v5 = [(DMFFetchActivationLockBypassCodeResultObject *)self bypassCode:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"bypassCode"];
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  bypassCode = [(DMFFetchActivationLockBypassCodeResultObject *)self bypassCode];
  v4 = [v2 stringWithFormat:@"Bypass code: %@", bypassCode];

  return v4;
}

@end