@interface DMFFetchLocationResultObject
- (DMFFetchLocationResultObject)initWithCoder:(id)coder;
- (DMFFetchLocationResultObject)initWithLocation:(id)location;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFFetchLocationResultObject

- (DMFFetchLocationResultObject)initWithLocation:(id)location
{
  locationCopy = location;
  v9.receiver = self;
  v9.super_class = DMFFetchLocationResultObject;
  v5 = [(CATTaskResultObject *)&v9 init];
  if (v5)
  {
    v6 = [locationCopy copy];
    location = v5->_location;
    v5->_location = v6;
  }

  return v5;
}

- (DMFFetchLocationResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = DMFFetchLocationResultObject;
  v5 = [(CATTaskResultObject *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"location"];
    location = v5->_location;
    v5->_location = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DMFFetchLocationResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v6 encodeWithCoder:coderCopy];
  v5 = [(DMFFetchLocationResultObject *)self location:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"location"];
}

- (id)description
{
  location = [(DMFFetchLocationResultObject *)self location];
  v3 = [location description];

  return v3;
}

@end