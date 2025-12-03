@interface IDSIDStatusKey
+ (id)statusIDKeyWithService:(id)service URI:(id)i;
- (BOOL)isEqual:(id)equal;
- (IDSIDStatusKey)initWithCoder:(id)coder;
- (IDSIDStatusKey)initWithService:(id)service URI:(id)i;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSIDStatusKey

+ (id)statusIDKeyWithService:(id)service URI:(id)i
{
  iCopy = i;
  serviceCopy = service;
  v8 = [[self alloc] initWithService:serviceCopy URI:iCopy];

  return v8;
}

- (IDSIDStatusKey)initWithService:(id)service URI:(id)i
{
  serviceCopy = service;
  iCopy = i;
  v9 = iCopy;
  selfCopy = 0;
  if (serviceCopy && iCopy)
  {
    v14.receiver = self;
    v14.super_class = IDSIDStatusKey;
    v11 = [(IDSIDStatusKey *)&v14 init];
    p_isa = &v11->super.isa;
    if (v11)
    {
      objc_storeStrong(&v11->_service, service);
      objc_storeStrong(p_isa + 2, i);
    }

    self = p_isa;
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    service = [v5 service];
    service2 = [(IDSIDStatusKey *)self service];
    if ([service isEqualToString:service2])
    {
      uriString = [v5 uriString];
      uriString2 = [(IDSIDStatusKey *)self uriString];
      v10 = [uriString isEqual:uriString2];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  service = [(IDSIDStatusKey *)self service];
  v4 = [service hash];
  uriString = [(IDSIDStatusKey *)self uriString];
  v6 = [uriString hash];

  return v6 ^ v4;
}

- (id)description
{
  service = [(IDSIDStatusKey *)self service];
  uriString = [(IDSIDStatusKey *)self uriString];
  v5 = [NSString stringWithFormat:@"<service:%@, URI:%@>", service, uriString];

  return v5;
}

- (IDSIDStatusKey)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URI"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URI"];

  v7 = [(IDSIDStatusKey *)self initWithService:v5 URI:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  service = [(IDSIDStatusKey *)self service];
  [coderCopy encodeObject:service forKey:@"URI"];

  uriString = [(IDSIDStatusKey *)self uriString];
  [coderCopy encodeObject:uriString forKey:@"URI"];
}

@end