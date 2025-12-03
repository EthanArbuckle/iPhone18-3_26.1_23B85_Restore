@interface IDSOffGridContactInfo
- (IDSOffGridContactInfo)initWithCoder:(id)coder;
- (IDSOffGridContactInfo)initWithURI:(id)i type:(int64_t)type;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSOffGridContactInfo

- (IDSOffGridContactInfo)initWithURI:(id)i type:(int64_t)type
{
  iCopy = i;
  v11.receiver = self;
  v11.super_class = IDSOffGridContactInfo;
  v8 = [(IDSOffGridContactInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_uri, i);
    v9->_type = type;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(IDSOffGridContactInfo *)self uri];
  v5 = [v3 stringWithFormat:@"<IDSOffGridContactInfo %p>: uri %@ type %ld", self, v4, -[IDSOffGridContactInfo type](self, "type")];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  uri = self->_uri;
  coderCopy = coder;
  [coderCopy encodeObject:uri forKey:@"uri"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
}

- (IDSOffGridContactInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uri"];
  v6 = [coderCopy decodeIntegerForKey:@"type"];

  v7 = [[IDSOffGridContactInfo alloc] initWithURI:v5 type:v6];
  return v7;
}

@end