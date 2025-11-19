@interface DMFFetchLocationResultObject
- (DMFFetchLocationResultObject)initWithCoder:(id)a3;
- (DMFFetchLocationResultObject)initWithLocation:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFFetchLocationResultObject

- (DMFFetchLocationResultObject)initWithLocation:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DMFFetchLocationResultObject;
  v5 = [(CATTaskResultObject *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    location = v5->_location;
    v5->_location = v6;
  }

  return v5;
}

- (DMFFetchLocationResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = DMFFetchLocationResultObject;
  v5 = [(CATTaskResultObject *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"location"];
    location = v5->_location;
    v5->_location = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = DMFFetchLocationResultObject;
  v4 = a3;
  [(CATTaskResultObject *)&v6 encodeWithCoder:v4];
  v5 = [(DMFFetchLocationResultObject *)self location:v6.receiver];
  [v4 encodeObject:v5 forKey:@"location"];
}

- (id)description
{
  v2 = [(DMFFetchLocationResultObject *)self location];
  v3 = [v2 description];

  return v3;
}

@end