@interface DMFSetAppAssociatedDomainsRequest
- (DMFSetAppAssociatedDomainsRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFSetAppAssociatedDomainsRequest

- (DMFSetAppAssociatedDomainsRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = DMFSetAppAssociatedDomainsRequest;
  v5 = [(DMFAppRequest *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"associatedDomains"];
    associatedDomains = v5->_associatedDomains;
    v5->_associatedDomains = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = DMFSetAppAssociatedDomainsRequest;
  v4 = a3;
  [(DMFAppRequest *)&v6 encodeWithCoder:v4];
  v5 = [(DMFSetAppAssociatedDomainsRequest *)self associatedDomains:v6.receiver];
  [v4 encodeObject:v5 forKey:@"associatedDomains"];
}

@end