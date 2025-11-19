@interface DMFUpdateAppAttributesRequest
- (DMFUpdateAppAttributesRequest)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFUpdateAppAttributesRequest

- (DMFUpdateAppAttributesRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v43.receiver = self;
  v43.super_class = DMFUpdateAppAttributesRequest;
  v5 = [(DMFAppRequest *)&v43 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"managementOptions"];
    v5->_managementOptions = [v6 integerValue];

    v7 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"VPNUUIDString"];
    VPNUUIDString = v5->_VPNUUIDString;
    v5->_VPNUUIDString = v8;

    v10 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"cellularSliceUUIDString"];
    cellularSliceUUIDString = v5->_cellularSliceUUIDString;
    v5->_cellularSliceUUIDString = v11;

    v13 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"contentFilterUUIDString"];
    contentFilterUUIDString = v5->_contentFilterUUIDString;
    v5->_contentFilterUUIDString = v14;

    v16 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"DNSProxyUUIDString"];
    DNSProxyUUIDString = v5->_DNSProxyUUIDString;
    v5->_DNSProxyUUIDString = v17;

    v19 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"relayUUIDString"];
    relayUUIDString = v5->_relayUUIDString;
    v5->_relayUUIDString = v20;

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"associatedDomains"];
    associatedDomains = v5->_associatedDomains;
    v5->_associatedDomains = v25;

    v27 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"associatedDomainsEnableDirectDownloads"];
    associatedDomainsEnableDirectDownloads = v5->_associatedDomainsEnableDirectDownloads;
    v5->_associatedDomainsEnableDirectDownloads = v28;

    v30 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v31 = [v4 decodeObjectOfClasses:v30 forKey:@"removable"];
    removable = v5->_removable;
    v5->_removable = v31;

    v33 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v34 = [v4 decodeObjectOfClasses:v33 forKey:@"tapToPayScreenLock"];
    tapToPayScreenLock = v5->_tapToPayScreenLock;
    v5->_tapToPayScreenLock = v34;

    v36 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v37 = [v4 decodeObjectOfClasses:v36 forKey:@"allowUserToHide"];
    allowUserToHide = v5->_allowUserToHide;
    v5->_allowUserToHide = v37;

    v39 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v40 = [v4 decodeObjectOfClasses:v39 forKey:@"allowUserToLock"];
    allowUserToLock = v5->_allowUserToLock;
    v5->_allowUserToLock = v40;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v17.receiver = self;
  v17.super_class = DMFUpdateAppAttributesRequest;
  v4 = a3;
  [(DMFAppRequest *)&v17 encodeWithCoder:v4];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFUpdateAppAttributesRequest managementOptions](self, "managementOptions", v17.receiver, v17.super_class)}];
  [v4 encodeObject:v5 forKey:@"managementOptions"];

  v6 = [(DMFUpdateAppAttributesRequest *)self VPNUUIDString];
  [v4 encodeObject:v6 forKey:@"VPNUUIDString"];

  v7 = [(DMFUpdateAppAttributesRequest *)self cellularSliceUUIDString];
  [v4 encodeObject:v7 forKey:@"cellularSliceUUIDString"];

  v8 = [(DMFUpdateAppAttributesRequest *)self contentFilterUUIDString];
  [v4 encodeObject:v8 forKey:@"contentFilterUUIDString"];

  v9 = [(DMFUpdateAppAttributesRequest *)self DNSProxyUUIDString];
  [v4 encodeObject:v9 forKey:@"DNSProxyUUIDString"];

  v10 = [(DMFUpdateAppAttributesRequest *)self relayUUIDString];
  [v4 encodeObject:v10 forKey:@"relayUUIDString"];

  v11 = [(DMFUpdateAppAttributesRequest *)self associatedDomains];
  [v4 encodeObject:v11 forKey:@"associatedDomains"];

  v12 = [(DMFUpdateAppAttributesRequest *)self associatedDomainsEnableDirectDownloads];
  [v4 encodeObject:v12 forKey:@"associatedDomainsEnableDirectDownloads"];

  v13 = [(DMFUpdateAppAttributesRequest *)self removable];
  [v4 encodeObject:v13 forKey:@"removable"];

  v14 = [(DMFUpdateAppAttributesRequest *)self tapToPayScreenLock];
  [v4 encodeObject:v14 forKey:@"tapToPayScreenLock"];

  v15 = [(DMFUpdateAppAttributesRequest *)self allowUserToHide];
  [v4 encodeObject:v15 forKey:@"allowUserToHide"];

  v16 = [(DMFUpdateAppAttributesRequest *)self allowUserToLock];
  [v4 encodeObject:v16 forKey:@"allowUserToLock"];
}

- (id)description
{
  v7[17] = *MEMORY[0x1E69E9840];
  v7[0] = @"bundleIdentifier";
  v7[1] = @"storeItemIdentifier";
  v7[2] = @"manifestURL";
  v7[3] = @"personaIdentifier";
  v7[4] = @"sourceIdentifier";
  v7[5] = @"managementOptions";
  v7[6] = @"VPNUUIDString";
  v7[7] = @"cellularSliceUUIDString";
  v7[8] = @"contentFilterUUIDString";
  v7[9] = @"DNSProxyUUIDString";
  v7[10] = @"relayUUIDString";
  v7[11] = @"associatedDomains";
  v7[12] = @"associatedDomainsEnableDirectDownloads";
  v7[13] = @"removable";
  v7[14] = @"tapToPayScreenLock";
  v7[15] = @"allowUserToHide";
  v7[16] = @"allowUserToLock";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:17];
  v4 = DMFObjectDescriptionWithProperties(self, v3);

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end