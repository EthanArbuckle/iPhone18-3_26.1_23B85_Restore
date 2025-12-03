@interface DMFBeginTransactionResultObject
- (DMFBeginTransactionResultObject)initWithCoder:(id)coder;
- (DMFBeginTransactionResultObject)initWithUUID:(id)d;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFBeginTransactionResultObject

- (DMFBeginTransactionResultObject)initWithUUID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = DMFBeginTransactionResultObject;
  v5 = [(CATTaskResultObject *)&v9 init];
  if (v5)
  {
    v6 = [dCopy copy];
    UUID = v5->_UUID;
    v5->_UUID = v6;
  }

  return v5;
}

- (DMFBeginTransactionResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = DMFBeginTransactionResultObject;
  v5 = [(CATTaskResultObject *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DMFBeginTransactionResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v6 encodeWithCoder:coderCopy];
  v5 = [(DMFBeginTransactionResultObject *)self UUID:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"UUID"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  uUID = [(DMFBeginTransactionResultObject *)self UUID];
  v6 = [v3 stringWithFormat:@"<%@: %p {\n\tUUID: %@\n}>", v4, self, uUID];

  return v6;
}

@end