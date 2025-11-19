@interface DMFMDMv1UpdateAppRequest
- (DMFMDMv1UpdateAppRequest)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFMDMv1UpdateAppRequest

- (DMFMDMv1UpdateAppRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v60.receiver = self;
  v60.super_class = DMFMDMv1UpdateAppRequest;
  v5 = [(DMFAppRequest *)&v60 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"originator"];
    originator = v5->_originator;
    v5->_originator = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"managementOptions"];
    v5->_managementOptions = [v9 integerValue];

    v10 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"VPNUUIDString"];
    VPNUUIDString = v5->_VPNUUIDString;
    v5->_VPNUUIDString = v11;

    v13 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"cellularSliceUUIDString"];
    cellularSliceUUIDString = v5->_cellularSliceUUIDString;
    v5->_cellularSliceUUIDString = v14;

    v16 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"contentFilterUUIDString"];
    contentFilterUUIDString = v5->_contentFilterUUIDString;
    v5->_contentFilterUUIDString = v17;

    v19 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"DNSProxyUUIDString"];
    DNSProxyUUIDString = v5->_DNSProxyUUIDString;
    v5->_DNSProxyUUIDString = v20;

    v22 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"relayUUIDString"];
    relayUUIDString = v5->_relayUUIDString;
    v5->_relayUUIDString = v23;

    v25 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"associatedDomains"];
    associatedDomains = v5->_associatedDomains;
    v5->_associatedDomains = v28;

    v30 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v31 = [v4 decodeObjectOfClasses:v30 forKey:@"associatedDomainsEnableDirectDownloads"];
    associatedDomainsEnableDirectDownloads = v5->_associatedDomainsEnableDirectDownloads;
    v5->_associatedDomainsEnableDirectDownloads = v31;

    v33 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v34 = [v4 decodeObjectOfClasses:v33 forKey:@"removable"];
    removable = v5->_removable;
    v5->_removable = v34;

    v36 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v37 = [v4 decodeObjectOfClasses:v36 forKey:@"tapToPayScreenLock"];
    tapToPayScreenLock = v5->_tapToPayScreenLock;
    v5->_tapToPayScreenLock = v37;

    v39 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v40 = [v4 decodeObjectOfClasses:v39 forKey:@"allowUserToHide"];
    allowUserToHide = v5->_allowUserToHide;
    v5->_allowUserToHide = v40;

    v42 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v43 = [v4 decodeObjectOfClasses:v42 forKey:@"allowUserToLock"];
    allowUserToLock = v5->_allowUserToLock;
    v5->_allowUserToLock = v43;

    v59 = MEMORY[0x1E695DFD8];
    v58 = objc_opt_class();
    v57 = objc_opt_class();
    v45 = objc_opt_class();
    v46 = objc_opt_class();
    v47 = objc_opt_class();
    v48 = objc_opt_class();
    v49 = objc_opt_class();
    v50 = objc_opt_class();
    v51 = objc_opt_class();
    v52 = objc_opt_class();
    v53 = [v59 setWithObjects:{v58, v57, v45, v46, v47, v48, v49, v50, v51, v52, objc_opt_class(), 0}];
    v54 = [v4 decodeObjectOfClasses:v53 forKey:@"configuration"];
    configuration = v5->_configuration;
    v5->_configuration = v54;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v19.receiver = self;
  v19.super_class = DMFMDMv1UpdateAppRequest;
  v4 = a3;
  [(DMFAppRequest *)&v19 encodeWithCoder:v4];
  v5 = [(DMFMDMv1UpdateAppRequest *)self originator:v19.receiver];
  [v4 encodeObject:v5 forKey:@"originator"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFMDMv1UpdateAppRequest managementOptions](self, "managementOptions")}];
  [v4 encodeObject:v6 forKey:@"managementOptions"];

  v7 = [(DMFMDMv1UpdateAppRequest *)self VPNUUIDString];
  [v4 encodeObject:v7 forKey:@"VPNUUIDString"];

  v8 = [(DMFMDMv1UpdateAppRequest *)self cellularSliceUUIDString];
  [v4 encodeObject:v8 forKey:@"cellularSliceUUIDString"];

  v9 = [(DMFMDMv1UpdateAppRequest *)self contentFilterUUIDString];
  [v4 encodeObject:v9 forKey:@"contentFilterUUIDString"];

  v10 = [(DMFMDMv1UpdateAppRequest *)self DNSProxyUUIDString];
  [v4 encodeObject:v10 forKey:@"DNSProxyUUIDString"];

  v11 = [(DMFMDMv1UpdateAppRequest *)self relayUUIDString];
  [v4 encodeObject:v11 forKey:@"relayUUIDString"];

  v12 = [(DMFMDMv1UpdateAppRequest *)self associatedDomains];
  [v4 encodeObject:v12 forKey:@"associatedDomains"];

  v13 = [(DMFMDMv1UpdateAppRequest *)self associatedDomainsEnableDirectDownloads];
  [v4 encodeObject:v13 forKey:@"associatedDomainsEnableDirectDownloads"];

  v14 = [(DMFMDMv1UpdateAppRequest *)self removable];
  [v4 encodeObject:v14 forKey:@"removable"];

  v15 = [(DMFMDMv1UpdateAppRequest *)self tapToPayScreenLock];
  [v4 encodeObject:v15 forKey:@"tapToPayScreenLock"];

  v16 = [(DMFMDMv1UpdateAppRequest *)self allowUserToHide];
  [v4 encodeObject:v16 forKey:@"allowUserToHide"];

  v17 = [(DMFMDMv1UpdateAppRequest *)self allowUserToLock];
  [v4 encodeObject:v17 forKey:@"allowUserToLock"];

  v18 = [(DMFMDMv1UpdateAppRequest *)self configuration];
  [v4 encodeObject:v18 forKey:@"configuration"];
}

- (id)description
{
  v7[19] = *MEMORY[0x1E69E9840];
  v7[0] = @"bundleIdentifier";
  v7[1] = @"storeItemIdentifier";
  v7[2] = @"manifestURL";
  v7[3] = @"personaIdentifier";
  v7[4] = @"sourceIdentifier";
  v7[5] = @"originator";
  v7[6] = @"managementOptions";
  v7[7] = @"VPNUUIDString";
  v7[8] = @"cellularSliceUUIDString";
  v7[9] = @"contentFilterUUIDString";
  v7[10] = @"DNSProxyUUIDString";
  v7[11] = @"relayUUIDString";
  v7[12] = @"associatedDomains";
  v7[13] = @"associatedDomainsEnableDirectDownloads";
  v7[14] = @"removable";
  v7[15] = @"tapToPayScreenLock";
  v7[16] = @"allowUserToHide";
  v7[17] = @"allowUserToLock";
  v7[18] = @"configuration";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:19];
  v4 = DMFObjectDescriptionWithProperties(self, v3);

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end