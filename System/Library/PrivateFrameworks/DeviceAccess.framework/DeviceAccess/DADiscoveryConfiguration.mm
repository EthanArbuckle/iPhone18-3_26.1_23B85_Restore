@interface DADiscoveryConfiguration
- (DADiscoveryConfiguration)initWithCoder:(id)a3;
- (DADiscoveryConfiguration)initWithXPCObject:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCObject:(id)a3;
@end

@implementation DADiscoveryConfiguration

- (DADiscoveryConfiguration)initWithCoder:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DADiscoveryConfiguration *)self init];
  if (v5)
  {
    v6 = v4;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v7 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v8 = v7;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    objc_opt_class();
    NSDecodeNSArrayOfClassIfPresent();
    v9 = v8;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v10 = v9;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v30 = 0;
    objc_opt_class();
    NSDecodeNSArrayOfClassIfPresent();
    v11 = v10;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v12 = v11;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v13 = v12;
    if ([v13 containsValueForKey:@"btNC"])
    {
      v5->_bluetoothNameSubstringCompareOptions = [v13 decodeIntegerForKey:@"btNC"];
    }

    v14 = v13;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v15 = v14;
    if ([v15 containsValueForKey:@"btAP"])
    {
      v5->_allowsBluetoothPairing = [v15 decodeBoolForKey:@"btAP"];
    }

    v16 = v15;
    if ([v16 containsValueForKey:@"btRg"])
    {
      v5->_bluetoothRange = [v16 decodeIntegerForKey:@"btRg"];
    }

    v17 = v16;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    objc_opt_class();
    NSDecodeNSArrayOfClassIfPresent();
    objc_opt_class();
    NSDecodeNSArrayOfClassIfPresent();
    v18 = v17;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v19 = v18;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v20 = v19;
    if ([v20 containsValueForKey:@"alRn"])
    {
      v5->_allowsRename = [v20 decodeBoolForKey:@"alRn"];
    }

    v21 = v20;
    if ([v21 containsValueForKey:@"dsFs"])
    {
      v5->_flags = [v21 decodeIntegerForKey:@"dsFs"];
    }

    v22 = v21;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    objc_opt_class();
    NSDecodeNSArrayOfClassIfPresent();
    objc_opt_class();
    NSDecodeNSArrayOfClassIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    v23 = v22;
    if ([v23 containsValueForKey:@"prOn"])
    {
      v5->_presenceOnly = [v23 decodeBoolForKey:@"prOn"];
    }

    v24 = v23;
    if ([v24 containsValueForKey:@"wFPi"])
    {
      v5->_wifiAwarePairingID = [v24 decodeInt64ForKey:@"wFPi"];
    }

    v25 = v24;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v26 = v25;
    if ([v26 containsValueForKey:@"wFSt"])
    {
      v5->_wifiAwareServiceType = [v26 decodeIntegerForKey:@"wFSt"];
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    v27 = v5;
  }

  else
  {
    [DADiscoveryConfiguration initWithCoder:v4];
  }

  v28 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  existingDeviceIdentifier = self->_existingDeviceIdentifier;
  if (existingDeviceIdentifier)
  {
    [v4 encodeObject:existingDeviceIdentifier forKey:@"id"];
  }

  associationIdentifier = self->_associationIdentifier;
  if (associationIdentifier)
  {
    [v5 encodeObject:associationIdentifier forKey:@"asdID"];
  }

  bluetoothIdentifier = self->_bluetoothIdentifier;
  if (bluetoothIdentifier)
  {
    [v5 encodeObject:bluetoothIdentifier forKey:@"btID"];
  }

  bluetoothCompanyIdentifiers = self->_bluetoothCompanyIdentifiers;
  if (bluetoothCompanyIdentifiers)
  {
    [v5 encodeObject:bluetoothCompanyIdentifiers forKey:@"btCI"];
  }

  bluetoothCompanyPayload = self->_bluetoothCompanyPayload;
  if (bluetoothCompanyPayload)
  {
    [v5 encodeObject:bluetoothCompanyPayload forKey:@"btCP"];
  }

  bluetoothCompanyPayloadMask = self->_bluetoothCompanyPayloadMask;
  if (bluetoothCompanyPayloadMask)
  {
    [v5 encodeObject:bluetoothCompanyPayloadMask forKey:@"btCM"];
  }

  v12 = self->_bluetoothServices;
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](v12, "count")}];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v14 = v12;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v42;
    do
    {
      v18 = 0;
      do
      {
        if (*v42 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v41 + 1) + 8 * v18) data];
        [v13 addObject:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v16);
  }

  if (v13)
  {
    [v5 encodeObject:v13 forKey:@"btSv"];
  }

  bluetoothServicePayload = self->_bluetoothServicePayload;
  if (bluetoothServicePayload)
  {
    [v5 encodeObject:bluetoothServicePayload forKey:@"btSP"];
  }

  bluetoothServicePayloadMask = self->_bluetoothServicePayloadMask;
  if (bluetoothServicePayloadMask)
  {
    [v5 encodeObject:bluetoothServicePayloadMask forKey:@"btSM"];
  }

  bluetoothNameSubstringCompareOptions = self->_bluetoothNameSubstringCompareOptions;
  if (bluetoothNameSubstringCompareOptions)
  {
    [v5 encodeInteger:bluetoothNameSubstringCompareOptions forKey:@"btNC"];
  }

  bluetoothNameSubstring = self->_bluetoothNameSubstring;
  if (bluetoothNameSubstring)
  {
    [v5 encodeObject:bluetoothNameSubstring forKey:@"btNS"];
  }

  if (self->_allowsBluetoothPairing)
  {
    [v5 encodeBool:1 forKey:@"btAP"];
  }

  bluetoothRange = self->_bluetoothRange;
  if (bluetoothRange)
  {
    [v5 encodeInteger:bluetoothRange forKey:@"btRg"];
  }

  bonjourServiceName = self->_bonjourServiceName;
  if (bonjourServiceName)
  {
    [v5 encodeObject:bonjourServiceName forKey:@"bjSn"];
  }

  bonjourServiceTypes = self->_bonjourServiceTypes;
  if (bonjourServiceTypes)
  {
    [v5 encodeObject:bonjourServiceTypes forKey:@"bjST"];
  }

  bonjourTXTRecordData = self->_bonjourTXTRecordData;
  if (bonjourTXTRecordData)
  {
    [v5 encodeObject:bonjourTXTRecordData forKey:@"txRD"];
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v5 encodeObject:bundleID forKey:@"bndI"];
  }

  displayName = self->_displayName;
  if (displayName)
  {
    [v5 encodeObject:displayName forKey:@"name"];
  }

  if (self->_allowsRename)
  {
    [v5 encodeBool:1 forKey:@"alRn"];
  }

  flags = self->_flags;
  if (flags)
  {
    [v5 encodeInteger:flags forKey:@"dsFs"];
  }

  networkHotspotSSID = self->_networkHotspotSSID;
  if (networkHotspotSSID)
  {
    [v5 encodeObject:networkHotspotSSID forKey:@"neHsd"];
  }

  hotspotSSIDs = self->_hotspotSSIDs;
  if (hotspotSSIDs)
  {
    [v5 encodeObject:hotspotSSIDs forKey:@"hSds"];
  }

  hotspotSSIDPrefixes = self->_hotspotSSIDPrefixes;
  if (hotspotSSIDPrefixes)
  {
    [v5 encodeObject:hotspotSSIDPrefixes forKey:@"hSPs"];
  }

  iconType = self->_iconType;
  if (iconType)
  {
    [v5 encodeObject:iconType forKey:@"dvPT"];
  }

  if (self->_presenceOnly)
  {
    [v5 encodeBool:1 forKey:@"prOn"];
  }

  wifiAwarePairingID = self->_wifiAwarePairingID;
  if (wifiAwarePairingID)
  {
    [v5 encodeInt64:wifiAwarePairingID forKey:@"wFPi"];
  }

  wifiAwareServiceName = self->_wifiAwareServiceName;
  if (wifiAwareServiceName)
  {
    [v5 encodeObject:wifiAwareServiceName forKey:@"wFSn"];
  }

  wifiAwareServiceType = self->_wifiAwareServiceType;
  if (wifiAwareServiceType)
  {
    [v5 encodeInteger:wifiAwareServiceType forKey:@"wFSt"];
  }

  wifiAwareModelNameMatch = self->_wifiAwareModelNameMatch;
  if (wifiAwareModelNameMatch)
  {
    [v5 encodeObject:wifiAwareModelNameMatch forKey:@"wFMnm"];
  }

  wifiAwareVendorNameMatch = self->_wifiAwareVendorNameMatch;
  if (wifiAwareVendorNameMatch)
  {
    [v5 encodeObject:wifiAwareVendorNameMatch forKey:@"wFVim"];
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithXPCObject:(id)a3
{
  v80 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSString *)self->_existingDeviceIdentifier UTF8String];
  if (v5)
  {
    xpc_dictionary_set_string(v4, "id", v5);
  }

  associationIdentifier = self->_associationIdentifier;
  v7 = v4;
  v8 = [(NSString *)associationIdentifier UTF8String];
  if (v8)
  {
    xpc_dictionary_set_string(v7, "asdID", v8);
  }

  bluetoothIdentifier = self->_bluetoothIdentifier;
  if (bluetoothIdentifier)
  {
    v10 = v7;
    [(NSUUID *)bluetoothIdentifier getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v10, "btID", uuid);
  }

  bluetoothCompanyIdentifiers = self->_bluetoothCompanyIdentifiers;
  CUXPCEncodeNSArrayOfNSNumber();
  bluetoothCompanyPayload = self->_bluetoothCompanyPayload;
  if (bluetoothCompanyPayload)
  {
    v13 = bluetoothCompanyPayload;
    v14 = v7;
    v15 = bluetoothCompanyPayload;
    v16 = [(NSData *)v15 bytes];
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = "";
    }

    v18 = [(NSData *)v15 length];

    xpc_dictionary_set_data(v14, "btCP", v17, v18);
  }

  bluetoothCompanyPayloadMask = self->_bluetoothCompanyPayloadMask;
  if (bluetoothCompanyPayloadMask)
  {
    v20 = bluetoothCompanyPayloadMask;
    v21 = v7;
    v22 = bluetoothCompanyPayloadMask;
    v23 = [(NSData *)v22 bytes];
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = "";
    }

    v25 = [(NSData *)v22 length];

    xpc_dictionary_set_data(v21, "btCM", v24, v25);
  }

  bluetoothRange = self->_bluetoothRange;
  if (bluetoothRange)
  {
    xpc_dictionary_set_int64(v7, "btRg", bluetoothRange);
  }

  DAXPCEncodeNSArrayOfCBUUID(v7, "btSv", self->_bluetoothServices);
  bluetoothServicePayload = self->_bluetoothServicePayload;
  if (bluetoothServicePayload)
  {
    v28 = bluetoothServicePayload;
    v29 = v7;
    v30 = bluetoothServicePayload;
    v31 = [(NSData *)v30 bytes];
    if (v31)
    {
      v32 = v31;
    }

    else
    {
      v32 = "";
    }

    v33 = [(NSData *)v30 length];

    xpc_dictionary_set_data(v29, "btSP", v32, v33);
  }

  bluetoothServicePayloadMask = self->_bluetoothServicePayloadMask;
  if (bluetoothServicePayloadMask)
  {
    v35 = bluetoothServicePayloadMask;
    v36 = v7;
    v37 = bluetoothServicePayloadMask;
    v38 = [(NSData *)v37 bytes];
    if (v38)
    {
      v39 = v38;
    }

    else
    {
      v39 = "";
    }

    v40 = [(NSData *)v37 length];

    xpc_dictionary_set_data(v36, "btSM", v39, v40);
  }

  bluetoothNameSubstringCompareOptions = self->_bluetoothNameSubstringCompareOptions;
  if (bluetoothNameSubstringCompareOptions)
  {
    xpc_dictionary_set_uint64(v7, "btNC", bluetoothNameSubstringCompareOptions);
  }

  bluetoothNameSubstring = self->_bluetoothNameSubstring;
  v43 = v7;
  v44 = [(NSString *)bluetoothNameSubstring UTF8String];
  if (v44)
  {
    xpc_dictionary_set_string(v43, "btNS", v44);
  }

  if (self->_allowsBluetoothPairing)
  {
    xpc_dictionary_set_BOOL(v43, "btAP", 1);
  }

  bonjourServiceName = self->_bonjourServiceName;
  v46 = v43;
  v47 = [(NSString *)bonjourServiceName UTF8String];
  if (v47)
  {
    xpc_dictionary_set_string(v46, "bjSn", v47);
  }

  bonjourServiceTypes = self->_bonjourServiceTypes;
  CUXPCEncodeNSArrayOfNSString();
  bonjourTXTRecordData = self->_bonjourTXTRecordData;
  if (bonjourTXTRecordData)
  {
    v50 = bonjourTXTRecordData;
    v51 = v46;
    v52 = bonjourTXTRecordData;
    v53 = [(NSData *)v52 bytes];
    if (v53)
    {
      v54 = v53;
    }

    else
    {
      v54 = "";
    }

    v55 = [(NSData *)v52 length];

    xpc_dictionary_set_data(v51, "txRD", v54, v55);
  }

  bundleID = self->_bundleID;
  v57 = v46;
  v58 = [(NSString *)bundleID UTF8String];
  if (v58)
  {
    xpc_dictionary_set_string(v57, "bndI", v58);
  }

  flags = self->_flags;
  if (flags)
  {
    xpc_dictionary_set_uint64(v57, "dsFs", flags);
  }

  networkHotspotSSID = self->_networkHotspotSSID;
  v61 = v57;
  v62 = [(NSString *)networkHotspotSSID UTF8String];
  if (v62)
  {
    xpc_dictionary_set_string(v61, "neHsd", v62);
  }

  hotspotSSIDs = self->_hotspotSSIDs;
  CUXPCEncodeNSArrayOfNSString();
  hotspotSSIDPrefixes = self->_hotspotSSIDPrefixes;
  CUXPCEncodeNSArrayOfNSString();
  displayName = self->_displayName;
  v66 = v61;
  v67 = [(NSString *)displayName UTF8String];
  if (v67)
  {
    xpc_dictionary_set_string(v66, "name", v67);
  }

  if (self->_allowsRename)
  {
    xpc_dictionary_set_BOOL(v66, "alRn", 1);
  }

  v68 = [(UTType *)self->_iconType identifier];
  v69 = v66;
  v70 = [v68 UTF8String];
  if (v70)
  {
    xpc_dictionary_set_string(v69, "dvPT", v70);
  }

  if (self->_presenceOnly)
  {
    xpc_dictionary_set_BOOL(v69, "prOn", 1);
  }

  wifiAwarePairingID = self->_wifiAwarePairingID;
  if (wifiAwarePairingID)
  {
    xpc_dictionary_set_uint64(v69, "wFPi", wifiAwarePairingID);
  }

  wifiAwareServiceName = self->_wifiAwareServiceName;
  v73 = v69;
  v74 = [(NSString *)wifiAwareServiceName UTF8String];
  if (v74)
  {
    xpc_dictionary_set_string(v73, "wFSn", v74);
  }

  wifiAwareModelNameMatch = self->_wifiAwareModelNameMatch;
  CUXPCEncodeObject();
  wifiAwareServiceType = self->_wifiAwareServiceType;
  if (wifiAwareServiceType)
  {
    xpc_dictionary_set_uint64(v73, "wFSt", wifiAwareServiceType);
  }

  wifiAwareVendorNameMatch = self->_wifiAwareVendorNameMatch;
  CUXPCEncodeObject();

  v78 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_existingDeviceIdentifier copy];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_associationIdentifier copy];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSUUID *)self->_bluetoothIdentifier copy];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(NSArray *)self->_bluetoothCompanyIdentifiers copy];
  v13 = *(v5 + 48);
  *(v5 + 48) = v12;

  objc_storeStrong((v5 + 56), self->_bluetoothCompanyPayload);
  objc_storeStrong((v5 + 64), self->_bluetoothCompanyPayloadMask);
  *(v5 + 152) = self->_bluetoothRange;
  v14 = [(NSArray *)self->_bluetoothServices copy];
  v15 = *(v5 + 72);
  *(v5 + 72) = v14;

  v16 = [(NSData *)self->_bluetoothServicePayload copy];
  v17 = *(v5 + 80);
  *(v5 + 80) = v16;

  v18 = [(NSData *)self->_bluetoothServicePayloadMask copy];
  v19 = *(v5 + 88);
  *(v5 + 88) = v18;

  *(v5 + 96) = self->_bluetoothNameSubstringCompareOptions;
  v20 = [(NSString *)self->_bluetoothNameSubstring copy];
  v21 = *(v5 + 104);
  *(v5 + 104) = v20;

  *(v5 + 8) = self->_allowsBluetoothPairing;
  v22 = [(NSString *)self->_bonjourServiceName copy];
  v23 = *(v5 + 112);
  *(v5 + 112) = v22;

  v24 = [(NSArray *)self->_bonjourServiceTypes copy];
  v25 = *(v5 + 120);
  *(v5 + 120) = v24;

  v26 = [(NSData *)self->_bonjourTXTRecordData copy];
  v27 = *(v5 + 128);
  *(v5 + 128) = v26;

  v28 = [(NSString *)self->_bundleID copy];
  v29 = *(v5 + 216);
  *(v5 + 216) = v28;

  v30 = [(NSString *)self->_displayName copy];
  v31 = *(v5 + 136);
  *(v5 + 136) = v30;

  *(v5 + 9) = self->_allowsRename;
  *(v5 + 144) = self->_flags;
  v32 = [(NSString *)self->_networkHotspotSSID copy];
  v33 = *(v5 + 160);
  *(v5 + 160) = v32;

  v34 = [(NSArray *)self->_hotspotSSIDs copy];
  v35 = *(v5 + 168);
  *(v5 + 168) = v34;

  v36 = [(NSArray *)self->_hotspotSSIDPrefixes copy];
  v37 = *(v5 + 176);
  *(v5 + 176) = v36;

  v38 = [(UTType *)self->_iconType copy];
  v39 = *(v5 + 224);
  *(v5 + 224) = v38;

  *(v5 + 10) = self->_presenceOnly;
  *(v5 + 40) = self->_wifiAwarePairingID;
  v40 = [(NSString *)self->_wifiAwareServiceName copyWithZone:a3];
  v41 = *(v5 + 184);
  *(v5 + 184) = v40;

  *(v5 + 200) = self->_wifiAwareServiceType;
  v42 = [(DAPropertyCompareString *)self->_wifiAwareModelNameMatch copyWithZone:a3];
  v43 = *(v5 + 192);
  *(v5 + 192) = v42;

  v44 = [(DAPropertyCompareString *)self->_wifiAwareVendorNameMatch copyWithZone:a3];
  v45 = *(v5 + 208);
  *(v5 + 208) = v44;

  return v5;
}

- (id)description
{
  existingDeviceIdentifier = self->_existingDeviceIdentifier;
  if (existingDeviceIdentifier)
  {
    v4 = existingDeviceIdentifier;
    v74 = CUPrintNSObjectOneLine();
    CUAppendF();
    v5 = 0;
  }

  else
  {
    v5 = 0;
  }

  associationIdentifier = self->_associationIdentifier;
  if (associationIdentifier)
  {
    v7 = associationIdentifier;
    v75 = CUPrintNSObjectOneLine();
    CUAppendF();
    v8 = v5;

    v5 = v8;
  }

  bluetoothIdentifier = self->_bluetoothIdentifier;
  if (bluetoothIdentifier)
  {
    v10 = bluetoothIdentifier;
    v76 = CUPrintNSObjectOneLine();
    CUAppendF();
    v11 = v5;

    v5 = v11;
  }

  bluetoothCompanyIdentifiers = self->_bluetoothCompanyIdentifiers;
  if (bluetoothCompanyIdentifiers)
  {
    v13 = bluetoothCompanyIdentifiers;
    v77 = CUPrintNSObjectOneLine();
    CUAppendF();
    v14 = v5;

    v5 = v14;
  }

  bluetoothCompanyPayload = self->_bluetoothCompanyPayload;
  if (bluetoothCompanyPayload)
  {
    v16 = bluetoothCompanyPayload;
    v78 = CUPrintNSObjectOneLine();
    CUAppendF();
    v17 = v5;

    v5 = v17;
  }

  bluetoothCompanyPayloadMask = self->_bluetoothCompanyPayloadMask;
  if (bluetoothCompanyPayloadMask)
  {
    v19 = bluetoothCompanyPayloadMask;
    v79 = CUPrintNSObjectOneLine();
    CUAppendF();
    v20 = v5;

    v5 = v20;
  }

  if (self->_bluetoothRange)
  {
    CUAppendF();
    v21 = v5;

    v5 = v21;
  }

  bluetoothServices = self->_bluetoothServices;
  if (bluetoothServices)
  {
    v23 = bluetoothServices;
    v80 = CUPrintNSObjectOneLine();
    CUAppendF();
    v24 = v5;

    v5 = v24;
  }

  bluetoothServicePayload = self->_bluetoothServicePayload;
  if (bluetoothServicePayload)
  {
    v26 = bluetoothServicePayload;
    v81 = CUPrintNSObjectOneLine();
    CUAppendF();
    v27 = v5;

    v5 = v27;
  }

  bluetoothServicePayloadMask = self->_bluetoothServicePayloadMask;
  if (bluetoothServicePayloadMask)
  {
    v29 = bluetoothServicePayloadMask;
    v82 = CUPrintNSObjectOneLine();
    CUAppendF();
    v30 = v5;

    v5 = v30;
  }

  if (self->_bluetoothNameSubstringCompareOptions)
  {
    CUAppendF();
    v31 = v5;

    v5 = v31;
  }

  bluetoothNameSubstring = self->_bluetoothNameSubstring;
  if (bluetoothNameSubstring)
  {
    v33 = bluetoothNameSubstring;
    v83 = CUPrintNSObjectOneLine();
    CUAppendF();
    v34 = v5;

    v5 = v34;
  }

  if (self->_allowsBluetoothPairing)
  {
    CUAppendF();
    v35 = v5;

    v5 = v35;
  }

  bonjourServiceName = self->_bonjourServiceName;
  if (bonjourServiceName)
  {
    v37 = bonjourServiceName;
    v84 = CUPrintNSObjectOneLine();
    CUAppendF();
    v38 = v5;

    v5 = v38;
  }

  bonjourServiceTypes = self->_bonjourServiceTypes;
  if (bonjourServiceTypes)
  {
    v40 = bonjourServiceTypes;
    v85 = CUPrintNSObjectOneLine();
    CUAppendF();
    v41 = v5;

    v5 = v41;
  }

  bonjourTXTRecordData = self->_bonjourTXTRecordData;
  if (bonjourTXTRecordData)
  {
    v43 = bonjourTXTRecordData;
    v86 = CUPrintNSObjectOneLine();
    CUAppendF();
    v44 = v5;

    v5 = v44;
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    v87 = bundleID;
    CUAppendF();
    v46 = v5;

    v5 = v46;
  }

  if (self->_flags)
  {
    v88 = CUPrintFlags64();
    CUAppendF();
    v47 = v5;

    v5 = v47;
  }

  networkHotspotSSID = self->_networkHotspotSSID;
  if (networkHotspotSSID)
  {
    v49 = networkHotspotSSID;
    v89 = CUPrintNSObjectOneLine();
    CUAppendF();
    v50 = v5;

    v5 = v50;
  }

  hotspotSSIDs = self->_hotspotSSIDs;
  if (hotspotSSIDs)
  {
    v52 = hotspotSSIDs;
    v90 = CUPrintNSObjectOneLine();
    CUAppendF();
    v53 = v5;

    v5 = v53;
  }

  hotspotSSIDPrefixes = self->_hotspotSSIDPrefixes;
  if (hotspotSSIDPrefixes)
  {
    v55 = hotspotSSIDPrefixes;
    v91 = CUPrintNSObjectOneLine();
    CUAppendF();
    v56 = v5;

    v5 = v56;
  }

  iconType = self->_iconType;
  if (iconType)
  {
    v58 = iconType;
    v92 = CUPrintNSObjectOneLine();
    CUAppendF();
    v59 = v5;

    v5 = v59;
  }

  if (self->_presenceOnly)
  {
    CUAppendF();
    v60 = v5;

    v5 = v60;
  }

  if (self->_wifiAwarePairingID)
  {
    CUAppendF();
    v61 = v5;

    v5 = v61;
  }

  wifiAwareServiceName = self->_wifiAwareServiceName;
  if (wifiAwareServiceName)
  {
    v63 = self->_wifiAwareServiceName;
    v64 = wifiAwareServiceName;
    CUAppendF();
    v65 = v5;

    v5 = v65;
  }

  if (self->_wifiAwareServiceType)
  {
    CUAppendF();
    v66 = v5;

    v5 = v66;
  }

  wifiAwareModelNameMatch = self->_wifiAwareModelNameMatch;
  if (wifiAwareModelNameMatch)
  {
    v93 = wifiAwareModelNameMatch;
    CUAppendF();
    v68 = v5;

    v5 = v68;
  }

  wifiAwareVendorNameMatch = self->_wifiAwareVendorNameMatch;
  if (wifiAwareVendorNameMatch)
  {
    v94 = wifiAwareVendorNameMatch;
    CUAppendF();
    v70 = v5;

    v5 = v70;
  }

  v71 = @"none";
  if (v5)
  {
    v71 = v5;
  }

  v72 = v71;

  return v72;
}

- (DADiscoveryConfiguration)initWithXPCObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(DADiscoveryConfiguration *)self init];
  if (!v7)
  {
    if (!a4)
    {
      goto LABEL_39;
    }

    v23 = objc_opt_class();
    v21 = OUTLINED_FUNCTION_8();
LABEL_38:
    DAErrorF(v21, v22, v8, v9, v10, v11, v12, v13, v23);
    *a4 = v19 = 0;
    goto LABEL_33;
  }

  if (MEMORY[0x24C1DC9E0](v6) != MEMORY[0x277D86468])
  {
    if (!a4)
    {
      goto LABEL_39;
    }

    v22 = "XPC non-dict";
    v21 = 350004;
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_1();
  CUXPCDecodeNSString();
  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeNSUUID())
  {
    goto LABEL_39;
  }

  if (!CUXPCDecodeNSArrayOfInteger())
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_39;
  }

  v14 = CUXPCDecodeSInt64RangedEx();
  if (v14 == 6)
  {
    v7->_bluetoothRange = 0;
    goto LABEL_11;
  }

  if (v14 == 5)
  {
LABEL_39:
    v19 = 0;
    goto LABEL_33;
  }

LABEL_11:
  v15 = OUTLINED_FUNCTION_1();
  if (!DAXPCDecodeNSArrayOfCBUUID(v15, v16, v17, v18))
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_39;
  }

  if (OUTLINED_FUNCTION_0() == 6)
  {
    v7->_bluetoothNameSubstringCompareOptions = 0;
  }

  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeBool())
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeNSArrayOfNSString())
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_1();
  CUXPCDecodeNSString();
  OUTLINED_FUNCTION_1();
  CUXPCDecodeBool();
  if (OUTLINED_FUNCTION_0() == 6)
  {
    v7->_flags = 0;
  }

  OUTLINED_FUNCTION_1();
  CUXPCDecodeNSString();
  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeNSArrayOfNSString())
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_1();
  if (!CUXPCDecodeNSArrayOfNSString())
  {
    goto LABEL_39;
  }

  CUXPCDecodeNSString();
  OUTLINED_FUNCTION_1();
  if (CUXPCDecodeBool())
  {
    if (OUTLINED_FUNCTION_0() == 6)
    {
      v7->_wifiAwarePairingID = 0;
    }

    OUTLINED_FUNCTION_1();
    CUXPCDecodeNSString();
    if (OUTLINED_FUNCTION_0() == 6)
    {
      v7->_wifiAwareServiceType = 0;
    }

    objc_opt_class();
    OUTLINED_FUNCTION_9();
    CUXPCDecodeObject();
    objc_opt_class();
    OUTLINED_FUNCTION_9();
    CUXPCDecodeObject();
    v19 = v7;
  }

  else
  {
    v19 = 0;
  }

LABEL_33:
  return v19;
}

- (void)initWithCoder:(void *)a1 .cold.1(void *a1)
{
  v10 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_8();
  v11 = DAErrorF(v2, v3, v4, v5, v6, v7, v8, v9, v10);
  [a1 failWithError:v11];
}

@end