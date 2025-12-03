@interface DMFUpdateAppAttributesRequest
- (DMFUpdateAppAttributesRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFUpdateAppAttributesRequest

- (DMFUpdateAppAttributesRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v43.receiver = self;
  v43.super_class = DMFUpdateAppAttributesRequest;
  v5 = [(DMFAppRequest *)&v43 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"managementOptions"];
    v5->_managementOptions = [v6 integerValue];

    v7 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"VPNUUIDString"];
    VPNUUIDString = v5->_VPNUUIDString;
    v5->_VPNUUIDString = v8;

    v10 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"cellularSliceUUIDString"];
    cellularSliceUUIDString = v5->_cellularSliceUUIDString;
    v5->_cellularSliceUUIDString = v11;

    v13 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"contentFilterUUIDString"];
    contentFilterUUIDString = v5->_contentFilterUUIDString;
    v5->_contentFilterUUIDString = v14;

    v16 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"DNSProxyUUIDString"];
    DNSProxyUUIDString = v5->_DNSProxyUUIDString;
    v5->_DNSProxyUUIDString = v17;

    v19 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"relayUUIDString"];
    relayUUIDString = v5->_relayUUIDString;
    v5->_relayUUIDString = v20;

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"associatedDomains"];
    associatedDomains = v5->_associatedDomains;
    v5->_associatedDomains = v25;

    v27 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"associatedDomainsEnableDirectDownloads"];
    associatedDomainsEnableDirectDownloads = v5->_associatedDomainsEnableDirectDownloads;
    v5->_associatedDomainsEnableDirectDownloads = v28;

    v30 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v31 = [coderCopy decodeObjectOfClasses:v30 forKey:@"removable"];
    removable = v5->_removable;
    v5->_removable = v31;

    v33 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v34 = [coderCopy decodeObjectOfClasses:v33 forKey:@"tapToPayScreenLock"];
    tapToPayScreenLock = v5->_tapToPayScreenLock;
    v5->_tapToPayScreenLock = v34;

    v36 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v37 = [coderCopy decodeObjectOfClasses:v36 forKey:@"allowUserToHide"];
    allowUserToHide = v5->_allowUserToHide;
    v5->_allowUserToHide = v37;

    v39 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v40 = [coderCopy decodeObjectOfClasses:v39 forKey:@"allowUserToLock"];
    allowUserToLock = v5->_allowUserToLock;
    v5->_allowUserToLock = v40;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v17.receiver = self;
  v17.super_class = DMFUpdateAppAttributesRequest;
  coderCopy = coder;
  [(DMFAppRequest *)&v17 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFUpdateAppAttributesRequest managementOptions](self, "managementOptions", v17.receiver, v17.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"managementOptions"];

  vPNUUIDString = [(DMFUpdateAppAttributesRequest *)self VPNUUIDString];
  [coderCopy encodeObject:vPNUUIDString forKey:@"VPNUUIDString"];

  cellularSliceUUIDString = [(DMFUpdateAppAttributesRequest *)self cellularSliceUUIDString];
  [coderCopy encodeObject:cellularSliceUUIDString forKey:@"cellularSliceUUIDString"];

  contentFilterUUIDString = [(DMFUpdateAppAttributesRequest *)self contentFilterUUIDString];
  [coderCopy encodeObject:contentFilterUUIDString forKey:@"contentFilterUUIDString"];

  dNSProxyUUIDString = [(DMFUpdateAppAttributesRequest *)self DNSProxyUUIDString];
  [coderCopy encodeObject:dNSProxyUUIDString forKey:@"DNSProxyUUIDString"];

  relayUUIDString = [(DMFUpdateAppAttributesRequest *)self relayUUIDString];
  [coderCopy encodeObject:relayUUIDString forKey:@"relayUUIDString"];

  associatedDomains = [(DMFUpdateAppAttributesRequest *)self associatedDomains];
  [coderCopy encodeObject:associatedDomains forKey:@"associatedDomains"];

  associatedDomainsEnableDirectDownloads = [(DMFUpdateAppAttributesRequest *)self associatedDomainsEnableDirectDownloads];
  [coderCopy encodeObject:associatedDomainsEnableDirectDownloads forKey:@"associatedDomainsEnableDirectDownloads"];

  removable = [(DMFUpdateAppAttributesRequest *)self removable];
  [coderCopy encodeObject:removable forKey:@"removable"];

  tapToPayScreenLock = [(DMFUpdateAppAttributesRequest *)self tapToPayScreenLock];
  [coderCopy encodeObject:tapToPayScreenLock forKey:@"tapToPayScreenLock"];

  allowUserToHide = [(DMFUpdateAppAttributesRequest *)self allowUserToHide];
  [coderCopy encodeObject:allowUserToHide forKey:@"allowUserToHide"];

  allowUserToLock = [(DMFUpdateAppAttributesRequest *)self allowUserToLock];
  [coderCopy encodeObject:allowUserToLock forKey:@"allowUserToLock"];
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