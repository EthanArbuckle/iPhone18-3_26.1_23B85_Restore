@interface DAEGrantedDelegate
- (DAEGrantedDelegate)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DAEGrantedDelegate

- (DAEGrantedDelegate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = DAEGrantedDelegate;
  v5 = [(DAEGrantedDelegate *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uri"];
    uri = v5->_uri;
    v5->_uri = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferredUserAddress"];
    preferredUserAddress = v5->_preferredUserAddress;
    v5->_preferredUserAddress = v10;

    v5->_permission = [coderCopy decodeIntegerForKey:@"permission"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  uri = self->_uri;
  coderCopy = coder;
  [coderCopy encodeObject:uri forKey:@"uri"];
  [coderCopy encodeObject:self->_displayName forKey:@"displayName"];
  [coderCopy encodeObject:self->_preferredUserAddress forKey:@"preferredUserAddress"];
  [coderCopy encodeInteger:self->_permission forKey:@"permission"];
}

@end