@interface DMFFetchDMDStateResultObject
- (DMFFetchDMDStateResultObject)initWithCoder:(id)coder;
- (DMFFetchDMDStateResultObject)initWithStateDescription:(id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFFetchDMDStateResultObject

- (DMFFetchDMDStateResultObject)initWithStateDescription:(id)description
{
  descriptionCopy = description;
  v9.receiver = self;
  v9.super_class = DMFFetchDMDStateResultObject;
  v5 = [(CATTaskResultObject *)&v9 init];
  if (v5)
  {
    v6 = [descriptionCopy copy];
    dmdStateDescription = v5->_dmdStateDescription;
    v5->_dmdStateDescription = v6;
  }

  return v5;
}

- (DMFFetchDMDStateResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = DMFFetchDMDStateResultObject;
  v5 = [(CATTaskResultObject *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"dmdStateDescription"];
    dmdStateDescription = v5->_dmdStateDescription;
    v5->_dmdStateDescription = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DMFFetchDMDStateResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v6 encodeWithCoder:coderCopy];
  v5 = [(DMFFetchDMDStateResultObject *)self dmdStateDescription:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"dmdStateDescription"];
}

@end