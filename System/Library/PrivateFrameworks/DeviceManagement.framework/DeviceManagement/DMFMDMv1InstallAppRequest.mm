@interface DMFMDMv1InstallAppRequest
- (DMFMDMv1InstallAppRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFMDMv1InstallAppRequest

- (DMFMDMv1InstallAppRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v64.receiver = self;
  v64.super_class = DMFMDMv1InstallAppRequest;
  v5 = [(DMFInstallAppRequest *)&v64 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"redemptionCode"];
    redemptionCode = v5->_redemptionCode;
    v5->_redemptionCode = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"manage"];
    v5->_manage = [v9 BOOLValue];

    v10 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"originator"];
    originator = v5->_originator;
    v5->_originator = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"managementOptions"];
    v5->_managementOptions = [v13 integerValue];

    v14 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"VPNUUIDString"];
    VPNUUIDString = v5->_VPNUUIDString;
    v5->_VPNUUIDString = v15;

    v17 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"cellularSliceUUIDString"];
    cellularSliceUUIDString = v5->_cellularSliceUUIDString;
    v5->_cellularSliceUUIDString = v18;

    v20 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"contentFilterUUIDString"];
    contentFilterUUIDString = v5->_contentFilterUUIDString;
    v5->_contentFilterUUIDString = v21;

    v23 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"DNSProxyUUIDString"];
    DNSProxyUUIDString = v5->_DNSProxyUUIDString;
    v5->_DNSProxyUUIDString = v24;

    v26 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v27 = [coderCopy decodeObjectOfClasses:v26 forKey:@"relayUUIDString"];
    relayUUIDString = v5->_relayUUIDString;
    v5->_relayUUIDString = v27;

    v29 = MEMORY[0x1E695DFD8];
    v30 = objc_opt_class();
    v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
    v32 = [coderCopy decodeObjectOfClasses:v31 forKey:@"associatedDomains"];
    associatedDomains = v5->_associatedDomains;
    v5->_associatedDomains = v32;

    v34 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v35 = [coderCopy decodeObjectOfClasses:v34 forKey:@"associatedDomainsEnableDirectDownloads"];
    associatedDomainsEnableDirectDownloads = v5->_associatedDomainsEnableDirectDownloads;
    v5->_associatedDomainsEnableDirectDownloads = v35;

    v37 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v38 = [coderCopy decodeObjectOfClasses:v37 forKey:@"removable"];
    removable = v5->_removable;
    v5->_removable = v38;

    v40 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v41 = [coderCopy decodeObjectOfClasses:v40 forKey:@"tapToPayScreenLock"];
    tapToPayScreenLock = v5->_tapToPayScreenLock;
    v5->_tapToPayScreenLock = v41;

    v43 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v44 = [coderCopy decodeObjectOfClasses:v43 forKey:@"allowUserToHide"];
    allowUserToHide = v5->_allowUserToHide;
    v5->_allowUserToHide = v44;

    v46 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v47 = [coderCopy decodeObjectOfClasses:v46 forKey:@"allowUserToLock"];
    allowUserToLock = v5->_allowUserToLock;
    v5->_allowUserToLock = v47;

    v63 = MEMORY[0x1E695DFD8];
    v62 = objc_opt_class();
    v61 = objc_opt_class();
    v49 = objc_opt_class();
    v50 = objc_opt_class();
    v51 = objc_opt_class();
    v52 = objc_opt_class();
    v53 = objc_opt_class();
    v54 = objc_opt_class();
    v55 = objc_opt_class();
    v56 = objc_opt_class();
    v57 = [v63 setWithObjects:{v62, v61, v49, v50, v51, v52, v53, v54, v55, v56, objc_opt_class(), 0}];
    v58 = [coderCopy decodeObjectOfClasses:v57 forKey:@"configuration"];
    configuration = v5->_configuration;
    v5->_configuration = v58;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v21.receiver = self;
  v21.super_class = DMFMDMv1InstallAppRequest;
  coderCopy = coder;
  [(DMFInstallAppRequest *)&v21 encodeWithCoder:coderCopy];
  v5 = [(DMFMDMv1InstallAppRequest *)self redemptionCode:v21.receiver];
  [coderCopy encodeObject:v5 forKey:@"redemptionCode"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFMDMv1InstallAppRequest manage](self, "manage")}];
  [coderCopy encodeObject:v6 forKey:@"manage"];

  originator = [(DMFMDMv1InstallAppRequest *)self originator];
  [coderCopy encodeObject:originator forKey:@"originator"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFMDMv1InstallAppRequest managementOptions](self, "managementOptions")}];
  [coderCopy encodeObject:v8 forKey:@"managementOptions"];

  vPNUUIDString = [(DMFMDMv1InstallAppRequest *)self VPNUUIDString];
  [coderCopy encodeObject:vPNUUIDString forKey:@"VPNUUIDString"];

  cellularSliceUUIDString = [(DMFMDMv1InstallAppRequest *)self cellularSliceUUIDString];
  [coderCopy encodeObject:cellularSliceUUIDString forKey:@"cellularSliceUUIDString"];

  contentFilterUUIDString = [(DMFMDMv1InstallAppRequest *)self contentFilterUUIDString];
  [coderCopy encodeObject:contentFilterUUIDString forKey:@"contentFilterUUIDString"];

  dNSProxyUUIDString = [(DMFMDMv1InstallAppRequest *)self DNSProxyUUIDString];
  [coderCopy encodeObject:dNSProxyUUIDString forKey:@"DNSProxyUUIDString"];

  relayUUIDString = [(DMFMDMv1InstallAppRequest *)self relayUUIDString];
  [coderCopy encodeObject:relayUUIDString forKey:@"relayUUIDString"];

  associatedDomains = [(DMFMDMv1InstallAppRequest *)self associatedDomains];
  [coderCopy encodeObject:associatedDomains forKey:@"associatedDomains"];

  associatedDomainsEnableDirectDownloads = [(DMFMDMv1InstallAppRequest *)self associatedDomainsEnableDirectDownloads];
  [coderCopy encodeObject:associatedDomainsEnableDirectDownloads forKey:@"associatedDomainsEnableDirectDownloads"];

  removable = [(DMFMDMv1InstallAppRequest *)self removable];
  [coderCopy encodeObject:removable forKey:@"removable"];

  tapToPayScreenLock = [(DMFMDMv1InstallAppRequest *)self tapToPayScreenLock];
  [coderCopy encodeObject:tapToPayScreenLock forKey:@"tapToPayScreenLock"];

  allowUserToHide = [(DMFMDMv1InstallAppRequest *)self allowUserToHide];
  [coderCopy encodeObject:allowUserToHide forKey:@"allowUserToHide"];

  allowUserToLock = [(DMFMDMv1InstallAppRequest *)self allowUserToLock];
  [coderCopy encodeObject:allowUserToLock forKey:@"allowUserToLock"];

  configuration = [(DMFMDMv1InstallAppRequest *)self configuration];
  [coderCopy encodeObject:configuration forKey:@"configuration"];
}

- (id)description
{
  v7[23] = *MEMORY[0x1E69E9840];
  v7[0] = @"bundleIdentifier";
  v7[1] = @"storeItemIdentifier";
  v7[2] = @"manifestURL";
  v7[3] = @"personaIdentifier";
  v7[4] = @"sourceIdentifier";
  v7[5] = @"licenseType";
  v7[6] = @"allowFreePurchases";
  v7[7] = @"redemptionCode";
  v7[8] = @"manage";
  v7[9] = @"originator";
  v7[10] = @"managementOptions";
  v7[11] = @"VPNUUIDString";
  v7[12] = @"cellularSliceUUIDString";
  v7[13] = @"contentFilterUUIDString";
  v7[14] = @"DNSProxyUUIDString";
  v7[15] = @"relayUUIDString";
  v7[16] = @"associatedDomains";
  v7[17] = @"associatedDomainsEnableDirectDownloads";
  v7[18] = @"removable";
  v7[19] = @"tapToPayScreenLock";
  v7[20] = @"allowUserToHide";
  v7[21] = @"allowUserToLock";
  v7[22] = @"configuration";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:23];
  v4 = DMFObjectDescriptionWithProperties(self, v3);

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end