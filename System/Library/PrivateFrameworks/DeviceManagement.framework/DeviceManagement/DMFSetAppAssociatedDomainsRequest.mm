@interface DMFSetAppAssociatedDomainsRequest
- (DMFSetAppAssociatedDomainsRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFSetAppAssociatedDomainsRequest

- (DMFSetAppAssociatedDomainsRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = DMFSetAppAssociatedDomainsRequest;
  v5 = [(DMFAppRequest *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"associatedDomains"];
    associatedDomains = v5->_associatedDomains;
    v5->_associatedDomains = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DMFSetAppAssociatedDomainsRequest;
  coderCopy = coder;
  [(DMFAppRequest *)&v6 encodeWithCoder:coderCopy];
  v5 = [(DMFSetAppAssociatedDomainsRequest *)self associatedDomains:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"associatedDomains"];
}

@end