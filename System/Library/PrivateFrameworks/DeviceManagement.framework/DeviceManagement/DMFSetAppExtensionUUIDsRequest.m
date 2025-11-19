@interface DMFSetAppExtensionUUIDsRequest
- (DMFSetAppExtensionUUIDsRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFSetAppExtensionUUIDsRequest

- (DMFSetAppExtensionUUIDsRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = DMFSetAppExtensionUUIDsRequest;
  v5 = [(DMFAppRequest *)&v22 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"VPNUUIDString"];
    VPNUUIDString = v5->_VPNUUIDString;
    v5->_VPNUUIDString = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"cellularSliceUUIDString"];
    cellularSliceUUIDString = v5->_cellularSliceUUIDString;
    v5->_cellularSliceUUIDString = v10;

    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"contentFilterUUIDString"];
    contentFilterUUIDString = v5->_contentFilterUUIDString;
    v5->_contentFilterUUIDString = v13;

    v15 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"DNSProxyUUIDString"];
    DNSProxyUUIDString = v5->_DNSProxyUUIDString;
    v5->_DNSProxyUUIDString = v16;

    v18 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"relayUUIDString"];
    relayUUIDString = v5->_relayUUIDString;
    v5->_relayUUIDString = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = DMFSetAppExtensionUUIDsRequest;
  v4 = a3;
  [(DMFAppRequest *)&v10 encodeWithCoder:v4];
  v5 = [(DMFSetAppExtensionUUIDsRequest *)self VPNUUIDString:v10.receiver];
  [v4 encodeObject:v5 forKey:@"VPNUUIDString"];

  v6 = [(DMFSetAppExtensionUUIDsRequest *)self cellularSliceUUIDString];
  [v4 encodeObject:v6 forKey:@"cellularSliceUUIDString"];

  v7 = [(DMFSetAppExtensionUUIDsRequest *)self contentFilterUUIDString];
  [v4 encodeObject:v7 forKey:@"contentFilterUUIDString"];

  v8 = [(DMFSetAppExtensionUUIDsRequest *)self DNSProxyUUIDString];
  [v4 encodeObject:v8 forKey:@"DNSProxyUUIDString"];

  v9 = [(DMFSetAppExtensionUUIDsRequest *)self relayUUIDString];
  [v4 encodeObject:v9 forKey:@"relayUUIDString"];
}

@end