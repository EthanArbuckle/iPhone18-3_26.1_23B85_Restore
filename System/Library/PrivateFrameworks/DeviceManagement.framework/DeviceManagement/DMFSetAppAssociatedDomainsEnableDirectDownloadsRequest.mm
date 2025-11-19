@interface DMFSetAppAssociatedDomainsEnableDirectDownloadsRequest
- (DMFSetAppAssociatedDomainsEnableDirectDownloadsRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFSetAppAssociatedDomainsEnableDirectDownloadsRequest

- (DMFSetAppAssociatedDomainsEnableDirectDownloadsRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = DMFSetAppAssociatedDomainsEnableDirectDownloadsRequest;
  v5 = [(DMFAppRequest *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"associatedDomainsEnableDirectDownloads"];
    associatedDomainsEnableDirectDownloads = v5->_associatedDomainsEnableDirectDownloads;
    v5->_associatedDomainsEnableDirectDownloads = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = DMFSetAppAssociatedDomainsEnableDirectDownloadsRequest;
  v4 = a3;
  [(DMFAppRequest *)&v6 encodeWithCoder:v4];
  v5 = [(DMFSetAppAssociatedDomainsEnableDirectDownloadsRequest *)self associatedDomainsEnableDirectDownloads:v6.receiver];
  [v4 encodeObject:v5 forKey:@"associatedDomainsEnableDirectDownloads"];
}

@end