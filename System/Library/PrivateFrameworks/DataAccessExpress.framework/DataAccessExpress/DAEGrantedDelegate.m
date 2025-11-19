@interface DAEGrantedDelegate
- (DAEGrantedDelegate)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DAEGrantedDelegate

- (DAEGrantedDelegate)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DAEGrantedDelegate;
  v5 = [(DAEGrantedDelegate *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uri"];
    uri = v5->_uri;
    v5->_uri = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preferredUserAddress"];
    preferredUserAddress = v5->_preferredUserAddress;
    v5->_preferredUserAddress = v10;

    v5->_permission = [v4 decodeIntegerForKey:@"permission"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  uri = self->_uri;
  v5 = a3;
  [v5 encodeObject:uri forKey:@"uri"];
  [v5 encodeObject:self->_displayName forKey:@"displayName"];
  [v5 encodeObject:self->_preferredUserAddress forKey:@"preferredUserAddress"];
  [v5 encodeInteger:self->_permission forKey:@"permission"];
}

@end