@interface DMFFetchDMDStateResultObject
- (DMFFetchDMDStateResultObject)initWithCoder:(id)a3;
- (DMFFetchDMDStateResultObject)initWithStateDescription:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFFetchDMDStateResultObject

- (DMFFetchDMDStateResultObject)initWithStateDescription:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DMFFetchDMDStateResultObject;
  v5 = [(CATTaskResultObject *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    dmdStateDescription = v5->_dmdStateDescription;
    v5->_dmdStateDescription = v6;
  }

  return v5;
}

- (DMFFetchDMDStateResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = DMFFetchDMDStateResultObject;
  v5 = [(CATTaskResultObject *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"dmdStateDescription"];
    dmdStateDescription = v5->_dmdStateDescription;
    v5->_dmdStateDescription = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = DMFFetchDMDStateResultObject;
  v4 = a3;
  [(CATTaskResultObject *)&v6 encodeWithCoder:v4];
  v5 = [(DMFFetchDMDStateResultObject *)self dmdStateDescription:v6.receiver];
  [v4 encodeObject:v5 forKey:@"dmdStateDescription"];
}

@end