@interface DMFBeginTransactionResultObject
- (DMFBeginTransactionResultObject)initWithCoder:(id)a3;
- (DMFBeginTransactionResultObject)initWithUUID:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFBeginTransactionResultObject

- (DMFBeginTransactionResultObject)initWithUUID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DMFBeginTransactionResultObject;
  v5 = [(CATTaskResultObject *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    UUID = v5->_UUID;
    v5->_UUID = v6;
  }

  return v5;
}

- (DMFBeginTransactionResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = DMFBeginTransactionResultObject;
  v5 = [(CATTaskResultObject *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = DMFBeginTransactionResultObject;
  v4 = a3;
  [(CATTaskResultObject *)&v6 encodeWithCoder:v4];
  v5 = [(DMFBeginTransactionResultObject *)self UUID:v6.receiver];
  [v4 encodeObject:v5 forKey:@"UUID"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(DMFBeginTransactionResultObject *)self UUID];
  v6 = [v3 stringWithFormat:@"<%@: %p {\n\tUUID: %@\n}>", v4, self, v5];

  return v6;
}

@end