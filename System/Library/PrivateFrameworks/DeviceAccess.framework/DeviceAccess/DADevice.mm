@interface DADevice
+ (BOOL)deviceMetadataURLValid:(id)valid;
+ (void)mergePersistentDictionary:(id)dictionary into:(id)into;
- (BOOL)requiresBluetoothSetup;
- (BOOL)requiresWiFiAwareSetup;
- (BOOL)requiresWiFiSoftAPSetup;
- (DADevice)initWithCoder:(id)coder;
- (DADevice)initWithPersistentDictionaryRepresentation:(id)representation error:(id *)error;
- (DADevice)initWithXPCObject:(id)object error:(id *)error;
- (NSDictionary)accessoryServicesMap;
- (NSDictionary)appAccessInfoMap;
- (NSDictionary)persistentDictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithLevel:(int)level;
- (void)decodeAdvDataWithCoder:(id)coder xpcObject:(id)object;
- (void)encodeAdvDataWithCoder:(id)coder xpcObject:(id)object;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCObject:(id)object;
- (void)setDeviceUpgradeFinished:(BOOL)finished inProgress:(BOOL)progress failed:(BOOL)failed;
@end

@implementation DADevice

- (DADevice)initWithCoder:(id)coder
{
  v40 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v38.receiver = self;
  v38.super_class = DADevice;
  v5 = [(DADevice *)&v38 init];
  if (v5)
  {
    v6 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v7 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v8 = v7;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v9 = v8;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v39 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_bluetoothAppearance = v39;
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    [(DADevice *)v5 decodeAdvDataWithCoder:v9];
    v10 = v9;
    if ([v10 containsValueForKey:@"dvFl"])
    {
      v5->_flags = [v10 decodeIntegerForKey:@"dvFl"];
    }

    v11 = v10;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v12 = v11;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v39 = 0;
    objc_opt_class();
    NSDecodeObjectIfPresent();
    copyCEndpoint = [v39 copyCEndpoint];
    networkEndpoint = v5->_networkEndpoint;
    v5->_networkEndpoint = copyCEndpoint;

    v15 = v12;
    if ([v15 containsValueForKey:@"dvPT"])
    {
      v5->_protocol = [v15 decodeIntegerForKey:@"dvPT"];
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    v16 = v15;
    if ([v16 containsValueForKey:@"dvGr"])
    {
      v5->_supportsGrouping = [v16 decodeBoolForKey:@"dvGr"];
    }

    v17 = v16;
    if ([v17 containsValueForKey:@"dvCa"])
    {
      v5->_type = [v17 decodeIntegerForKey:@"dvCa"];
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    v18 = v17;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v19 = v18;
    if ([v19 containsValueForKey:@"nwUsec"])
    {
      v5->_networkUnsecured = [v19 decodeBoolForKey:@"nwUsec"];
    }

    v20 = v19;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v21 = v20;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v22 = [MEMORY[0x277CBEBC0] URLWithString:0];
    if (v22)
    {
      objc_storeStrong(&v5->_url, v22);
    }

    v23 = v21;
    if ([v23 containsValueForKey:@"mpSt"])
    {
      v5->_mediaPlaybackState = [v23 decodeIntegerForKey:@"mpSt"];
    }

    v24 = v23;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v25 = v24;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v26 = v25;
    if ([v26 containsValueForKey:@"dvDe"])
    {
      v5->_discoveredInExtension = [v26 decodeBoolForKey:@"dvDe"];
    }

    v27 = v26;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v28 = v27;
    if ([v28 containsValueForKey:@"btAP"])
    {
      v5->_allowPairing = [v28 decodeBoolForKey:@"btAP"];
    }

    v29 = v28;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v30 = v29;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v31 = v30;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v32 = v31;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v33 = v32;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v34 = v33;
    if ([v34 containsValueForKey:@"sig"])
    {
      v5->_signature = [v34 decodeIntegerForKey:@"sig"];
    }

    v35 = v5;
  }

  else
  {
    [DADeviceAppAccessInfo initWithCoder:coderCopy];
  }

  v36 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = self->_accessoryServicesInternalMap;
  if (v4)
  {
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:0];
    if (v5)
    {
      [coderCopy encodeObject:v5 forKey:@"dAsI"];
    }
  }

  v6 = self->_appAccessInfoDeviceMap;
  if (v6)
  {
    v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];
    if (v7)
    {
      [coderCopy encodeObject:v7 forKey:@"dAaI"];
    }
  }

  bluetoothIdentifier = self->_bluetoothIdentifier;
  if (bluetoothIdentifier)
  {
    [coderCopy encodeObject:bluetoothIdentifier forKey:@"btID"];
  }

  bluetoothOTAName = self->_bluetoothOTAName;
  v10 = coderCopy;
  if (bluetoothOTAName)
  {
    [coderCopy encodeObject:bluetoothOTAName forKey:@"btNm"];
    v10 = coderCopy;
  }

  if (self->_bluetoothAppearance)
  {
    [v10 encodeInteger:? forKey:?];
    v10 = coderCopy;
  }

  bluetoothRSSI = self->_bluetoothRSSI;
  if (bluetoothRSSI)
  {
    [v10 encodeObject:bluetoothRSSI forKey:@"btRs"];
    v10 = coderCopy;
  }

  [(DADevice *)self encodeAdvDataWithCoder:v10];
  displayImageFileURL = self->_displayImageFileURL;
  if (displayImageFileURL)
  {
    [coderCopy encodeObject:displayImageFileURL forKey:@"dvDIuR"];
  }

  flags = self->_flags;
  if (flags)
  {
    [coderCopy encodeInteger:flags forKey:@"dvFl"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [coderCopy encodeObject:identifier forKey:@"id"];
  }

  name = self->_name;
  if (name)
  {
    [coderCopy encodeObject:name forKey:@"name"];
  }

  v16 = self->_networkEndpoint;
  if (v16)
  {
    v17 = [MEMORY[0x277CD91C8] endpointWithCEndpoint:v16];
    if (v17)
    {
      [coderCopy encodeObject:v17 forKey:@"nwEP"];
    }
  }

  protocol = self->_protocol;
  if (protocol)
  {
    [coderCopy encodeInteger:protocol forKey:@"dvPT"];
  }

  protocolType = self->_protocolType;
  if (protocolType)
  {
    [coderCopy encodeObject:protocolType forKey:@"prTy"];
  }

  SSID = self->_SSID;
  if (SSID)
  {
    [coderCopy encodeObject:SSID forKey:@"ssID"];
  }

  if (self->_networkUnsecured)
  {
    [coderCopy encodeBool:1 forKey:@"nwUsec"];
  }

  if (self->_supportsGrouping)
  {
    [coderCopy encodeBool:1 forKey:@"dvGr"];
  }

  type = self->_type;
  if (type)
  {
    [coderCopy encodeInteger:type forKey:@"dvCa"];
  }

  txtRecordData = self->_txtRecordData;
  if (txtRecordData)
  {
    [coderCopy encodeObject:txtRecordData forKey:@"txRD"];
  }

  absoluteString = [(NSURL *)self->_url absoluteString];
  if (absoluteString)
  {
    [coderCopy encodeObject:absoluteString forKey:@"urlS"];
  }

  mediaPlaybackState = self->_mediaPlaybackState;
  if (mediaPlaybackState)
  {
    [coderCopy encodeInteger:mediaPlaybackState forKey:@"mpSt"];
  }

  mediaContentTitle = self->_mediaContentTitle;
  if (mediaContentTitle)
  {
    [coderCopy encodeObject:mediaContentTitle forKey:@"mTi"];
  }

  mediaContentArtistName = self->_mediaContentArtistName;
  if (mediaContentArtistName)
  {
    [coderCopy encodeObject:mediaContentArtistName forKey:@"mArt"];
  }

  if (self->_discoveredInExtension)
  {
    [coderCopy encodeBool:1 forKey:@"dvDe"];
  }

  displayImageName = self->_displayImageName;
  if (displayImageName)
  {
    [coderCopy encodeObject:displayImageName forKey:@"dvDI"];
  }

  if (self->_allowPairing)
  {
    [coderCopy encodeBool:1 forKey:@"btAP"];
  }

  bluetoothClassicAddress = self->_bluetoothClassicAddress;
  if (bluetoothClassicAddress)
  {
    [coderCopy encodeObject:bluetoothClassicAddress forKey:@"btCa"];
  }

  wifiAwareOTAName = self->_wifiAwareOTAName;
  if (wifiAwareOTAName)
  {
    [coderCopy encodeObject:wifiAwareOTAName forKey:@"wfaNm"];
  }

  wifiAwareVendorName = self->_wifiAwareVendorName;
  if (wifiAwareVendorName)
  {
    [coderCopy encodeObject:wifiAwareVendorName forKey:@"wFVn"];
  }

  wifiAwareModelName = self->_wifiAwareModelName;
  if (wifiAwareModelName)
  {
    [coderCopy encodeObject:wifiAwareModelName forKey:@"wFMn"];
  }

  wifiAwareDevicePairingID = self->_wifiAwareDevicePairingID;
  if (wifiAwareDevicePairingID)
  {
    [coderCopy encodeObject:wifiAwareDevicePairingID forKey:@"dwFPi"];
  }

  signature = self->_signature;
  if (signature)
  {
    [coderCopy encodeInteger:signature forKey:@"sig"];
  }
}

- (DADevice)initWithPersistentDictionaryRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v60.receiver = self;
  v60.super_class = DADevice;
  v7 = [(DADevice *)&v60 init];
  if (v7)
  {
    CFDictionaryGetDouble();
    v7->_approveTime = v8;
    CFStringGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v9];
      bluetoothIdentifier = v7->_bluetoothIdentifier;
      v7->_bluetoothIdentifier = v10;
    }

    CFStringGetTypeID();
    v12 = CFDictionaryGetTypedValue();
    bluetoothOTAName = v7->_bluetoothOTAName;
    v7->_bluetoothOTAName = v12;

    v7->_bluetoothAppearance = CFDictionaryGetInt64Ranged();
    CFDataGetTypeID();
    v59 = CFDictionaryGetTypedValue();
    v14 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v59 error:0];
    discoveryConfiguration = v7->_discoveryConfiguration;
    v7->_discoveryConfiguration = v14;

    CFStringGetTypeID();
    v16 = CFDictionaryGetTypedValue();
    if (v16)
    {
      v17 = [MEMORY[0x277CBEBC0] URLWithString:v16];
      displayImageFileURL = v7->_displayImageFileURL;
      v7->_displayImageFileURL = v17;
    }

    v19 = NSDictionaryGetNSNumber();
    v20 = v19;
    if (v19)
    {
      v7->_flags = [v19 unsignedIntValue];
    }

    CFStringGetTypeID();
    v21 = CFDictionaryGetTypedValue();
    if (v21)
    {
      objc_storeStrong(&v7->_identifier, v21);
    }

    v58 = v16;
    CFStringGetTypeID();
    v22 = CFDictionaryGetTypedValue();
    if (v22)
    {
      objc_storeStrong(&v7->_name, v22);
    }

    v56 = v22;
    CFDataGetTypeID();
    v55 = CFDictionaryGetTypedValue();
    v54 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v55 error:0];
    copyCEndpoint = [v54 copyCEndpoint];
    networkEndpoint = v7->_networkEndpoint;
    v7->_networkEndpoint = copyCEndpoint;

    v25 = NSDictionaryGetNSNumber();
    v7->_protocol = [v25 integerValue];

    CFStringGetTypeID();
    v26 = CFDictionaryGetTypedValue();
    if (v26)
    {
      v27 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v26];
      if (v27)
      {
        objc_storeStrong(&v7->_protocolType, v27);
      }
    }

    v28 = NSDictionaryGetNSNumber();
    v7->_state = [v28 integerValue];

    CFStringGetTypeID();
    v29 = CFDictionaryGetTypedValue();
    SSID = v7->_SSID;
    v7->_SSID = v29;

    v7->_networkUnsecured = CFDictionaryGetInt64() != 0;
    v7->_supportsGrouping = CFDictionaryGetInt64() != 0;
    v31 = NSDictionaryGetNSNumber();
    v7->_type = [v31 integerValue];

    CFDataGetTypeID();
    v32 = CFDictionaryGetTypedValue();
    if (v32)
    {
      objc_storeStrong(&v7->_txtRecordData, v32);
    }

    CFStringGetTypeID();
    v33 = CFDictionaryGetTypedValue();
    if (v33)
    {
      v34 = [MEMORY[0x277CBEBC0] URLWithString:v33];
      if (v34)
      {
        objc_storeStrong(&v7->_url, v34);
      }
    }

    v7->_pendingRemoval = CFDictionaryGetInt64() != 0;
    v35 = NSDictionaryGetNSNumber();
    v7->_mediaPlaybackState = [v35 integerValue];

    CFStringGetTypeID();
    v36 = CFDictionaryGetTypedValue();
    if (v36)
    {
      objc_storeStrong(&v7->_mediaContentTitle, v36);
    }

    v57 = v21;
    CFStringGetTypeID();
    v37 = CFDictionaryGetTypedValue();
    if (v37)
    {
      objc_storeStrong(&v7->_mediaContentArtistName, v37);
    }

    v38 = v20;
    v7->_discoveredInExtension = CFDictionaryGetInt64() != 0;
    CFStringGetTypeID();
    v39 = CFDictionaryGetTypedValue();
    if (v39)
    {
      objc_storeStrong(&v7->_displayImageName, v39);
    }

    v7->_allowPairing = CFDictionaryGetInt64() != 0;
    CFDataGetTypeID();
    v40 = CFDictionaryGetTypedValue();
    bluetoothClassicAddress = v7->_bluetoothClassicAddress;
    v7->_bluetoothClassicAddress = v40;

    v7->_bluetoothSetupInProgress = CFDictionaryGetInt64() != 0;
    v7->_bluetoothSetupFinished = CFDictionaryGetInt64() != 0;
    v7->_wifiAwareSetupInProgress = CFDictionaryGetInt64() != 0;
    v7->_wifiAwareSetupFinished = CFDictionaryGetInt64() != 0;
    v7->_upgradeInProgress = CFDictionaryGetInt64() != 0;
    v7->_upgradeFinished = CFDictionaryGetInt64() != 0;
    v7->_upgradeFailed = CFDictionaryGetInt64() != 0;
    CFStringGetTypeID();
    v42 = CFDictionaryGetTypedValue();
    wifiAwareOTAName = v7->_wifiAwareOTAName;
    v7->_wifiAwareOTAName = v42;

    CFStringGetTypeID();
    v44 = CFDictionaryGetTypedValue();
    wifiAwareVendorName = v7->_wifiAwareVendorName;
    v7->_wifiAwareVendorName = v44;

    CFStringGetTypeID();
    v46 = CFDictionaryGetTypedValue();
    wifiAwareModelName = v7->_wifiAwareModelName;
    v7->_wifiAwareModelName = v46;

    CFStringGetTypeID();
    v48 = CFDictionaryGetTypedValue();
    if (v48)
    {
      v49 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v48];
      wifiAwareDevicePairingID = v7->_wifiAwareDevicePairingID;
      v7->_wifiAwareDevicePairingID = v49;
    }

    v51 = NSDictionaryGetNSNumber();
    v7->_signature = [v51 integerValue];

    v52 = v7;
  }

  else
  {
    [DADeviceAppAccessInfo initWithPersistentDictionaryRepresentation:error error:?];
  }

  return v7;
}

- (NSDictionary)persistentDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_approveTime];
  [v3 setObject:v4 forKeyedSubscript:@"approveTime"];

  bluetoothIdentifier = self->_bluetoothIdentifier;
  if (bluetoothIdentifier)
  {
    uUIDString = [(NSUUID *)bluetoothIdentifier UUIDString];
    [v3 setObject:uUIDString forKeyedSubscript:@"bluetoothIdentifier"];
  }

  bluetoothOTAName = self->_bluetoothOTAName;
  if (bluetoothOTAName)
  {
    [v3 setObject:bluetoothOTAName forKeyedSubscript:@"bluetoothOTAName"];
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:self->_bluetoothAppearance];
  [v3 setObject:v8 forKeyedSubscript:@"bluetoothAppearance"];

  v9 = self->_discoveryConfiguration;
  if (v9)
  {
    v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v9 requiringSecureCoding:1 error:0];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"configuration"];
    }
  }

  if (self->_flags)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v3 setObject:v11 forKeyedSubscript:@"flags"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKeyedSubscript:@"identifier"];
  }

  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKeyedSubscript:@"name"];
  }

  v14 = self->_networkEndpoint;
  if (v14)
  {
    v15 = [MEMORY[0x277CD91C8] endpointWithCEndpoint:v14];
    v16 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v15 requiringSecureCoding:1 error:0];
    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:@"nwEndpoint"];
    }
  }

  if (self->_protocol)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v3 setObject:v17 forKeyedSubscript:@"protocol"];
  }

  protocolType = self->_protocolType;
  if (protocolType)
  {
    identifier = [(UTType *)protocolType identifier];
    [v3 setObject:identifier forKeyedSubscript:@"protocolType"];
  }

  SSID = self->_SSID;
  if (SSID)
  {
    [v3 setObject:SSID forKeyedSubscript:@"deviceSSID"];
  }

  if (self->_networkUnsecured)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v3 setObject:v21 forKeyedSubscript:@"nwUnsecured"];
  }

  displayImageFileURL = self->_displayImageFileURL;
  if (displayImageFileURL)
  {
    absoluteString = [(NSURL *)displayImageFileURL absoluteString];
    [v3 setObject:absoluteString forKeyedSubscript:@"displayImageURL"];
  }

  v24 = [MEMORY[0x277CCABB0] numberWithInteger:self->_state];
  [v3 setObject:v24 forKeyedSubscript:@"deviceState"];

  v25 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsGrouping];
  [v3 setObject:v25 forKeyedSubscript:@"deviceSupportsGrouping"];

  if (self->_type)
  {
    v26 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v3 setObject:v26 forKeyedSubscript:@"type"];
  }

  txtRecordData = self->_txtRecordData;
  if (txtRecordData)
  {
    [v3 setObject:txtRecordData forKeyedSubscript:@"txtRecordData"];
  }

  url = self->_url;
  if (url)
  {
    absoluteString2 = [(NSURL *)url absoluteString];
    [v3 setObject:absoluteString2 forKeyedSubscript:@"url"];
  }

  if (self->_mediaPlaybackState)
  {
    v30 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v3 setObject:v30 forKeyedSubscript:@"mediaPlaybackState"];
  }

  mediaContentTitle = self->_mediaContentTitle;
  if (mediaContentTitle)
  {
    [v3 setObject:mediaContentTitle forKeyedSubscript:@"mediaContentTitle"];
  }

  mediaContentArtistName = self->_mediaContentArtistName;
  if (mediaContentArtistName)
  {
    [v3 setObject:mediaContentArtistName forKeyedSubscript:@"mediaContentArtist"];
  }

  v33 = [MEMORY[0x277CCABB0] numberWithBool:self->_discoveredInExtension];
  [v3 setObject:v33 forKeyedSubscript:@"discoveredInExtension"];

  displayImageName = self->_displayImageName;
  if (displayImageName)
  {
    [v3 setObject:displayImageName forKeyedSubscript:@"displayImageName"];
  }

  v35 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowPairing];
  [v3 setObject:v35 forKeyedSubscript:@"deviceAllowsPairing"];

  bluetoothClassicAddress = self->_bluetoothClassicAddress;
  if (bluetoothClassicAddress)
  {
    [v3 setObject:bluetoothClassicAddress forKeyedSubscript:@"deviceBluetoothClassicAddress"];
  }

  v37 = [MEMORY[0x277CCABB0] numberWithBool:self->_bluetoothSetupInProgress];
  [v3 setObject:v37 forKeyedSubscript:@"btSetupInProgress"];

  v38 = [MEMORY[0x277CCABB0] numberWithBool:self->_bluetoothSetupFinished];
  [v3 setObject:v38 forKeyedSubscript:@"btSetupFinished"];

  v39 = [MEMORY[0x277CCABB0] numberWithBool:self->_wifiAwareSetupInProgress];
  [v3 setObject:v39 forKeyedSubscript:@"wifiAwareSetupInProgress"];

  v40 = [MEMORY[0x277CCABB0] numberWithBool:self->_wifiAwareSetupFinished];
  [v3 setObject:v40 forKeyedSubscript:@"wifiAwareSetupFinished"];

  v41 = [MEMORY[0x277CCABB0] numberWithBool:self->_upgradeInProgress];
  [v3 setObject:v41 forKeyedSubscript:@"upgradeInProgress"];

  v42 = [MEMORY[0x277CCABB0] numberWithBool:self->_upgradeFinished];
  [v3 setObject:v42 forKeyedSubscript:@"upgradeFinished"];

  v43 = [MEMORY[0x277CCABB0] numberWithBool:self->_upgradeFailed];
  [v3 setObject:v43 forKeyedSubscript:@"upgradeFailed"];

  v44 = [MEMORY[0x277CCABB0] numberWithBool:self->_pendingRemoval];
  [v3 setObject:v44 forKeyedSubscript:@"pendingRemoval"];

  wifiAwareOTAName = self->_wifiAwareOTAName;
  if (wifiAwareOTAName)
  {
    [v3 setObject:wifiAwareOTAName forKeyedSubscript:@"wifiAwareOTAName"];
  }

  wifiAwareVendorName = self->_wifiAwareVendorName;
  if (wifiAwareVendorName)
  {
    [v3 setObject:wifiAwareVendorName forKeyedSubscript:@"wifiAwareVendorName"];
  }

  wifiAwareModelName = self->_wifiAwareModelName;
  if (wifiAwareModelName)
  {
    [v3 setObject:wifiAwareModelName forKeyedSubscript:@"wifiAwareModelName"];
  }

  wifiAwareDevicePairingID = self->_wifiAwareDevicePairingID;
  if (wifiAwareDevicePairingID)
  {
    uUIDString2 = [(NSUUID *)wifiAwareDevicePairingID UUIDString];
    [v3 setObject:uUIDString2 forKeyedSubscript:@"deviceWiFiAwarePairingID"];
  }

  if (self->_signature)
  {
    v50 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v3 setObject:v50 forKeyedSubscript:@"wifiAwareSignature"];
  }

  v51 = [v3 copy];

  return v51;
}

+ (void)mergePersistentDictionary:(id)dictionary into:(id)into
{
  dictionaryCopy = dictionary;
  intoCopy = into;
  CFDictionaryGetDouble();
  if (v6 == 0.0)
  {
    CFDictionaryGetDouble();
    if (v7 != 0.0)
    {
      v8 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      [intoCopy setObject:v8 forKeyedSubscript:@"approveTime"];
    }
  }
}

- (DADevice)initWithXPCObject:(id)object error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v38.receiver = self;
  v38.super_class = DADevice;
  v7 = [(DADevice *)&v38 init];
  if (v7)
  {
    CUXPCDecodeNSData();
    CUXPCDecodeNSData();
    if (CUXPCDecodeNSUUID() && CUXPCDecodeNSString())
    {
      [(DADevice *)v7 decodeAdvDataWithXPC:objectCopy];
      v39 = 0;
      v8 = CUXPCDecodeUInt64RangedEx();
      if (v8 == 6)
      {
        v7->_bluetoothAppearance = v39;
        v9 = 0x277CCA000;
LABEL_7:
        v39 = 0;
        if (CUXPCDecodeSInt64RangedEx() == 6 && v39)
        {
          v10 = [*(v9 + 2992) numberWithInt:?];
          bluetoothRSSI = v7->_bluetoothRSSI;
          v7->_bluetoothRSSI = v10;
        }

        objc_opt_class();
        CUXPCDecodeObject();
        if (!CUXPCDecodeNSString())
        {
          goto LABEL_59;
        }

        v39 = 0;
        v12 = CUXPCDecodeUInt64RangedEx();
        if (v12 == 6)
        {
          v7->_flags = v39;
        }

        else if (v12 == 5)
        {
          goto LABEL_59;
        }

        if (CUXPCDecodeNSString() && CUXPCDecodeNSString())
        {
          v13 = xpc_dictionary_get_dictionary(objectCopy, "nwEP");
          if (v13)
          {
            v14 = nw_endpoint_create_from_dictionary();
            if (!v14)
            {
              if (error)
              {
                DAErrorF(350001, "XPC->NW failed", v15, v16, v17, v18, v19, v20, v37);
                *error = v27 = 0;
                goto LABEL_53;
              }

              goto LABEL_66;
            }

            networkEndpoint = v7->_networkEndpoint;
            v7->_networkEndpoint = v14;
          }

          v39 = 0;
          v22 = CUXPCDecodeSInt64RangedEx();
          if (v22 == 6)
          {
            v7->_protocol = v39;
LABEL_22:
            if (!CUXPCDecodeNSString() || !CUXPCDecodeNSString() || !CUXPCDecodeBool())
            {
              goto LABEL_58;
            }

            v39 = 0;
            v23 = CUXPCDecodeSInt64RangedEx();
            if (v23 == 6)
            {
              v7->_state = v39;
            }

            else if (v23 == 5)
            {
              goto LABEL_58;
            }

            if (CUXPCDecodeBool())
            {
              v39 = 0;
              v24 = CUXPCDecodeSInt64RangedEx();
              if (v24 == 6)
              {
                v7->_type = v39;
              }

              else if (v24 == 5)
              {
                goto LABEL_58;
              }

              if (CUXPCDecodeNSData())
              {
                if (CUXPCDecodeNSString())
                {
                  v39 = 0;
                  v25 = CUXPCDecodeSInt64RangedEx();
                  if (v25 == 6)
                  {
                    v7->_mediaPlaybackState = v39;
                  }

                  else if (v25 == 5)
                  {
                    goto LABEL_57;
                  }

                  if (CUXPCDecodeNSString() && CUXPCDecodeNSString() && CUXPCDecodeBool() && CUXPCDecodeNSString() && CUXPCDecodeBool() && CUXPCDecodeNSData() && CUXPCDecodeNSString() && CUXPCDecodeNSString() && CUXPCDecodeNSString() && CUXPCDecodeNSUUID())
                  {
                    v39 = 0;
                    v26 = CUXPCDecodeSInt64RangedEx();
                    if (v26 == 6)
                    {
                      v7->_signature = v39;
LABEL_50:
                      v27 = v7;
LABEL_51:

LABEL_52:
LABEL_53:

LABEL_54:
LABEL_55:

                      goto LABEL_56;
                    }

                    if (v26 != 5)
                    {
                      goto LABEL_50;
                    }
                  }
                }

LABEL_57:
                v27 = 0;
                goto LABEL_51;
              }
            }

LABEL_58:
            v27 = 0;
            goto LABEL_52;
          }

          if (v22 != 5)
          {
            goto LABEL_22;
          }

LABEL_66:
          v27 = 0;
          goto LABEL_53;
        }

LABEL_59:
        v27 = 0;
        goto LABEL_54;
      }

      v9 = 0x277CCA000uLL;
      if (v8 != 5)
      {
        goto LABEL_7;
      }
    }

    v27 = 0;
    goto LABEL_55;
  }

  if (error)
  {
    v30 = objc_opt_class();
    DAErrorF(350001, "%@ super init failed", v31, v32, v33, v34, v35, v36, v30);
    *error = v27 = 0;
  }

  else
  {
    v27 = 0;
  }

LABEL_56:

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (void)encodeWithXPCObject:(id)object
{
  v88 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v5 = self->_accessoryServicesInternalMap;
  if (v5)
  {
    v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
      v9 = objectCopy;
      bytes = [v7 bytes];
      if (bytes)
      {
        v11 = bytes;
      }

      else
      {
        v11 = "";
      }

      xpc_dictionary_set_data(v9, "dAsI", v11, [v7 length]);
    }
  }

  v12 = self->_appAccessInfoDeviceMap;
  if (v12)
  {
    v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v12 requiringSecureCoding:1 error:0];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
      v16 = objectCopy;
      bytes2 = [v14 bytes];
      if (bytes2)
      {
        v18 = bytes2;
      }

      else
      {
        v18 = "";
      }

      xpc_dictionary_set_data(v16, "dAaI", v18, [v14 length]);
    }
  }

  bluetoothIdentifier = self->_bluetoothIdentifier;
  if (bluetoothIdentifier)
  {
    v20 = objectCopy;
    [(NSUUID *)bluetoothIdentifier getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v20, "btID", uuid);
  }

  bluetoothOTAName = self->_bluetoothOTAName;
  v22 = objectCopy;
  uTF8String = [(NSString *)bluetoothOTAName UTF8String];
  if (uTF8String)
  {
    xpc_dictionary_set_string(v22, "btNm", uTF8String);
  }

  [(DADevice *)self encodeAdvDataWithXPC:v22];
  if (self->_bluetoothAppearance)
  {
    xpc_dictionary_set_uint64(v22, "btAp", self->_bluetoothAppearance);
  }

  bluetoothRSSI = self->_bluetoothRSSI;
  if (bluetoothRSSI)
  {
    intValue = [(NSNumber *)bluetoothRSSI intValue];
    if (intValue)
    {
      xpc_dictionary_set_int64(v22, "btRs", intValue);
    }
  }

  discoveryConfiguration = self->_discoveryConfiguration;
  CUXPCEncodeObject();
  v27 = self->_displayImageFileURL;
  v28 = v27;
  if (v27)
  {
    absoluteString = [(NSURL *)v27 absoluteString];
    v30 = v22;
    uTF8String2 = [absoluteString UTF8String];
    if (uTF8String2)
    {
      xpc_dictionary_set_string(v30, "dvDIuR", uTF8String2);
    }
  }

  xpc_dictionary_set_uint64(v22, "dvFl", self->_flags);
  identifier = self->_identifier;
  v33 = v22;
  uTF8String3 = [(NSString *)identifier UTF8String];
  if (uTF8String3)
  {
    xpc_dictionary_set_string(v33, "id", uTF8String3);
  }

  name = self->_name;
  v36 = v33;
  uTF8String4 = [(NSString *)name UTF8String];
  if (uTF8String4)
  {
    xpc_dictionary_set_string(v36, "name", uTF8String4);
  }

  v38 = self->_networkEndpoint;
  if (v38)
  {
    v39 = nw_endpoint_copy_dictionary();
    if (v39)
    {
      xpc_dictionary_set_value(v36, "nwEP", v39);
    }
  }

  v86 = v5;
  xpc_dictionary_set_int64(v36, "dvPT", self->_protocol);
  identifier = [(UTType *)self->_protocolType identifier];
  v41 = v36;
  uTF8String5 = [identifier UTF8String];
  if (uTF8String5)
  {
    xpc_dictionary_set_string(v41, "prTy", uTF8String5);
  }

  SSID = self->_SSID;
  v44 = v41;
  uTF8String6 = [(NSString *)SSID UTF8String];
  if (uTF8String6)
  {
    xpc_dictionary_set_string(v44, "ssID", uTF8String6);
  }

  if (self->_networkUnsecured)
  {
    xpc_dictionary_set_BOOL(v44, "nwUsec", 1);
  }

  xpc_dictionary_set_int64(v44, "dvSt", self->_state);
  if (self->_supportsGrouping)
  {
    xpc_dictionary_set_BOOL(v44, "dvGr", 1);
  }

  xpc_dictionary_set_int64(v44, "dvCa", self->_type);
  txtRecordData = self->_txtRecordData;
  if (txtRecordData)
  {
    v47 = txtRecordData;
    v48 = v44;
    v49 = txtRecordData;
    bytes3 = [(NSData *)v49 bytes];
    if (bytes3)
    {
      v51 = bytes3;
    }

    else
    {
      v51 = "";
    }

    v52 = [(NSData *)v49 length];

    xpc_dictionary_set_data(v48, "txRD", v51, v52);
  }

  v53 = self->_url;
  v54 = v53;
  if (v53)
  {
    absoluteString2 = [(NSURL *)v53 absoluteString];
    v56 = v44;
    uTF8String7 = [absoluteString2 UTF8String];
    if (uTF8String7)
    {
      xpc_dictionary_set_string(v56, "urlS", uTF8String7);
    }
  }

  xpc_dictionary_set_int64(v44, "mpSt", self->_mediaPlaybackState);
  mediaContentTitle = self->_mediaContentTitle;
  v59 = v44;
  uTF8String8 = [(NSString *)mediaContentTitle UTF8String];
  if (uTF8String8)
  {
    xpc_dictionary_set_string(v59, "mTi", uTF8String8);
  }

  mediaContentArtistName = self->_mediaContentArtistName;
  v62 = v59;
  uTF8String9 = [(NSString *)mediaContentArtistName UTF8String];
  if (uTF8String9)
  {
    xpc_dictionary_set_string(v62, "mArt", uTF8String9);
  }

  if (self->_discoveredInExtension)
  {
    xpc_dictionary_set_BOOL(v62, "dvDe", 1);
  }

  displayImageName = self->_displayImageName;
  v65 = v62;
  uTF8String10 = [(NSString *)displayImageName UTF8String];
  if (uTF8String10)
  {
    xpc_dictionary_set_string(v65, "dvDI", uTF8String10);
  }

  if (self->_allowPairing)
  {
    xpc_dictionary_set_BOOL(v65, "btAP", 1);
  }

  bluetoothClassicAddress = self->_bluetoothClassicAddress;
  if (bluetoothClassicAddress)
  {
    v68 = bluetoothClassicAddress;
    v69 = v65;
    v70 = bluetoothClassicAddress;
    bytes4 = [(NSData *)v70 bytes];
    if (bytes4)
    {
      v72 = bytes4;
    }

    else
    {
      v72 = "";
    }

    v73 = [(NSData *)v70 length];

    xpc_dictionary_set_data(v69, "btCa", v72, v73);
  }

  wifiAwareOTAName = self->_wifiAwareOTAName;
  v75 = v65;
  uTF8String11 = [(NSString *)wifiAwareOTAName UTF8String];
  if (uTF8String11)
  {
    xpc_dictionary_set_string(v75, "wfaNm", uTF8String11);
  }

  wifiAwareDevicePairingID = self->_wifiAwareDevicePairingID;
  if (wifiAwareDevicePairingID)
  {
    v78 = v75;
    [(NSUUID *)wifiAwareDevicePairingID getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v78, "dwFPi", uuid);
  }

  wifiAwareVendorName = self->_wifiAwareVendorName;
  v80 = v75;
  uTF8String12 = [(NSString *)wifiAwareVendorName UTF8String];
  if (uTF8String12)
  {
    xpc_dictionary_set_string(v80, "wFVn", uTF8String12);
  }

  wifiAwareModelName = self->_wifiAwareModelName;
  v83 = v80;
  uTF8String13 = [(NSString *)wifiAwareModelName UTF8String];
  if (uTF8String13)
  {
    xpc_dictionary_set_string(v83, "wFMn", uTF8String13);
  }

  xpc_dictionary_set_int64(v83, "sig", self->_signature);
  v85 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v4 + 248) = self->_approveTime;
  v5 = [(NSMutableDictionary *)self->_appAccessInfoDeviceMap copy];
  v6 = *(v4 + 232);
  *(v4 + 232) = v5;

  v7 = [(NSDictionary *)self->_bluetoothAdvertisementData copy];
  v8 = *(v4 + 56);
  *(v4 + 56) = v7;

  v9 = [(NSData *)self->_bluetoothClassicAddress copy];
  v10 = *(v4 + 24);
  *(v4 + 24) = v9;

  v11 = [(NSUUID *)self->_bluetoothIdentifier copy];
  v12 = *(v4 + 32);
  *(v4 + 32) = v11;

  v13 = [(NSString *)self->_bluetoothOTAName copy];
  v14 = *(v4 + 40);
  *(v4 + 40) = v13;

  *(v4 + 20) = self->_bluetoothAppearance;
  v15 = [(NSNumber *)self->_bluetoothRSSI copy];
  v16 = *(v4 + 48);
  *(v4 + 48) = v15;

  v17 = [(DADiscoveryConfiguration *)self->_discoveryConfiguration copy];
  v18 = *(v4 + 264);
  *(v4 + 264) = v17;

  v19 = [(NSURL *)self->_displayImageFileURL copy];
  v20 = *(v4 + 64);
  *(v4 + 64) = v19;

  v21 = [(NSDictionary *)self->_endpoints copy];
  v22 = *(v4 + 272);
  *(v4 + 272) = v21;

  *(v4 + 80) = self->_flags;
  v23 = [(NSString *)self->_identifier copy];
  v24 = *(v4 + 88);
  *(v4 + 88) = v23;

  v25 = [(NSString *)self->_name copy];
  v26 = *(v4 + 120);
  *(v4 + 120) = v25;

  objc_storeStrong((v4 + 128), self->_networkEndpoint);
  *(v4 + 136) = self->_protocol;
  v27 = [(UTType *)self->_protocolType copy];
  v28 = *(v4 + 144);
  *(v4 + 144) = v27;

  v29 = [(NSString *)self->_SSID copy];
  v30 = *(v4 + 152);
  *(v4 + 152) = v29;

  *(v4 + 10) = self->_networkUnsecured;
  *(v4 + 160) = self->_state;
  *(v4 + 11) = self->_supportsGrouping;
  *(v4 + 176) = self->_type;
  v31 = [(NSData *)self->_txtRecordData copy];
  v32 = *(v4 + 168);
  *(v4 + 168) = v31;

  v33 = [(NSURL *)self->_url copy];
  v34 = *(v4 + 184);
  *(v4 + 184) = v33;

  *(v4 + 96) = self->_mediaPlaybackState;
  v35 = [(NSString *)self->_mediaContentTitle copy];
  v36 = *(v4 + 104);
  *(v4 + 104) = v35;

  v37 = [(NSString *)self->_mediaContentArtistName copy];
  v38 = *(v4 + 112);
  *(v4 + 112) = v37;

  *(v4 + 9) = self->_discoveredInExtension;
  v39 = [(NSString *)self->_displayImageName copy];
  v40 = *(v4 + 72);
  *(v4 + 72) = v39;

  *(v4 + 8) = self->_allowPairing;
  *(v4 + 12) = self->_bluetoothSetupInProgress;
  *(v4 + 14) = self->_bluetoothSetupFinished;
  *(v4 + 13) = self->_wifiAwareSetupInProgress;
  *(v4 + 15) = self->_wifiAwareSetupFinished;
  *(v4 + 16) = self->_upgradeInProgress;
  *(v4 + 17) = self->_upgradeFinished;
  *(v4 + 18) = self->_upgradeFailed;
  *(v4 + 19) = self->_pendingRemoval;
  v41 = [(NSString *)self->_wifiAwareOTAName copy];
  v42 = *(v4 + 200);
  *(v4 + 200) = v41;

  v43 = [(NSUUID *)self->_wifiAwareDevicePairingID copy];
  v44 = *(v4 + 208);
  *(v4 + 208) = v43;

  v45 = [(NSString *)self->_wifiAwareVendorName copy];
  v46 = *(v4 + 224);
  *(v4 + 224) = v45;

  v47 = [(NSString *)self->_wifiAwareModelName copy];
  v48 = *(v4 + 216);
  *(v4 + 216) = v47;

  *(v4 + 192) = self->_signature;
  return v4;
}

- (id)descriptionWithLevel:(int)level
{
  v129 = 0;
  v130 = &v129;
  v131 = 0x3032000000;
  v132 = __Block_byref_object_copy__0;
  v133 = __Block_byref_object_dispose__0;
  v134 = 0;
  v127[0] = 0;
  v127[1] = v127;
  v127[2] = 0x2020000000;
  if ((level & 0x8000000) != 0)
  {
    v5 = 8;
  }

  else
  {
    v5 = 12;
  }

  v128 = v5;
  if ((level & 0x8000000) == 0)
  {
    v126 = 0;
    objc_opt_class();
    CUAppendF();
    objc_storeStrong(&v134, 0);
  }

  v6 = self->_identifier;
  if (v6)
  {
    v7 = v130;
    v125 = v130[5];
    CUAppendF();
    objc_storeStrong(v7 + 5, v125);
  }

  v8 = self->_name;
  if (v8)
  {
    v9 = v130;
    v124 = v130[5];
    CUAppendF();
    objc_storeStrong(v9 + 5, v124);
  }

  v10 = self->_protocolType;
  if (v10)
  {
    v11 = v130;
    v123 = v130[5];
    CUAppendF();
    objc_storeStrong(v11 + 5, v123);
  }

  if ((self->_flags & 8) == 0)
  {
    v12 = v130;
    v122 = v130[5];
    v79 = DADeviceStateToString(self->_state);
    CUAppendF();
    objc_storeStrong(v12 + 5, v122);
  }

  if (self->_supportsGrouping)
  {
    v13 = v130;
    v121 = v130[5];
    CUAppendF();
    objc_storeStrong(v13 + 5, v121);
  }

  v14 = self->_bluetoothIdentifier;
  if (v14)
  {
    v15 = v130;
    v120 = v130[5];
    CUAppendF();
    objc_storeStrong(v15 + 5, v120);
  }

  v16 = self->_bluetoothClassicAddress;
  if (v16)
  {
    v17 = v130;
    v119 = v130[5];
    bluetoothClassicAddress = self->_bluetoothClassicAddress;
    v80 = CUPrintNSDataAddress();
    CUAppendF();
    objc_storeStrong(v17 + 5, v119);
  }

  v19 = self->_bluetoothOTAName;
  if (v19)
  {
    v20 = v130;
    v118 = v130[5];
    CUAppendF();
    objc_storeStrong(v20 + 5, v118);
  }

  if (self->_bluetoothAppearance)
  {
    v21 = v130;
    v117 = v130[5];
    CUAppendF();
    objc_storeStrong(v21 + 5, v117);
  }

  v22 = self->_networkEndpoint;
  if (v22)
  {
    v23 = v130;
    v116 = v130[5];
    CUAppendF();
    objc_storeStrong(v23 + 5, v116);
  }

  v24 = self->_wifiAwareDevicePairingID;
  if (v24)
  {
    v25 = v130;
    v115 = v130[5];
    CUAppendF();
    objc_storeStrong(v25 + 5, v115);
  }

  v26 = self->_wifiAwareOTAName;
  if (v26)
  {
    v27 = v130;
    obj = v130[5];
    CUAppendF();
    objc_storeStrong(v27 + 5, obj);
  }

  v28 = self->_wifiAwareVendorName;
  if (v28)
  {
    v29 = v130;
    v113 = v130[5];
    CUAppendF();
    objc_storeStrong(v29 + 5, v113);
  }

  v30 = self->_wifiAwareModelName;
  if (v30)
  {
    v31 = v130;
    v112 = v130[5];
    CUAppendF();
    objc_storeStrong(v31 + 5, v112);
  }

  if (self->_signature)
  {
    v32 = v130;
    v111 = v130[5];
    CUAppendF();
    objc_storeStrong(v32 + 5, v111);
  }

  v33 = self->_endpoints;
  v34 = v33;
  if (v33)
  {
    v35 = v130;
    v110 = v130[5];
    [(NSDictionary *)v33 count];
    CUAppendF();
    objc_storeStrong(v35 + 5, v110);
  }

  flags = self->_flags;
  if (flags)
  {
    v37 = v130;
    v109 = v130[5];
    v81 = DADeviceFlagsToString(flags);
    CUAppendF();
    objc_storeStrong(v37 + 5, v109);
  }

  protocol = self->_protocol;
  if (protocol)
  {
    if (protocol == 1)
    {
      v39 = @"DIAL";
    }

    else
    {
      v39 = @"?";
    }

    v40 = v130;
    v108 = v130[5];
    v82 = v39;
    CUAppendF();
    objc_storeStrong(v40 + 5, v108);
  }

  v41 = self->_SSID;
  if (v41)
  {
    v42 = v130;
    v107 = v130[5];
    CUAppendF();
    objc_storeStrong(v42 + 5, v107);
  }

  if (self->_networkUnsecured)
  {
    v43 = v130;
    v106 = v130[5];
    CUAppendF();
    objc_storeStrong(v43 + 5, v106);
  }

  v44 = v130;
  v105 = v130[5];
  v83 = DADeviceTypeToString(self->_type);
  CUAppendF();
  objc_storeStrong(v44 + 5, v105);

  v45 = self->_txtRecordData;
  if (v45)
  {
    v46 = v130;
    v104 = v130[5];
    v83 = CUPrintNSObjectOneLine();
    CUAppendF();
    objc_storeStrong(v46 + 5, v104);
  }

  v47 = self->_url;
  v48 = v47;
  if (v47)
  {
    v49 = v130;
    v103 = v130[5];
    v83 = v47;
    CUAppendF();
    objc_storeStrong(v49 + 5, v103);
  }

  mediaPlaybackState = self->_mediaPlaybackState;
  if (mediaPlaybackState)
  {
    v51 = @"Paused";
    if (mediaPlaybackState != 1)
    {
      v51 = @"?";
    }

    if (mediaPlaybackState == 2)
    {
      v52 = @"Playing";
    }

    else
    {
      v52 = v51;
    }

    v53 = v130;
    v102 = v130[5];
    v83 = v52;
    CUAppendF();
    objc_storeStrong(v53 + 5, v102);
  }

  v54 = self->_mediaContentTitle;
  v55 = v54;
  if (v54)
  {
    v56 = v130;
    v101 = v130[5];
    v83 = v54;
    CUAppendF();
    objc_storeStrong(v56 + 5, v101);
  }

  v57 = self->_mediaContentArtistName;
  v58 = v57;
  if (v57)
  {
    v59 = v130;
    v100 = v130[5];
    v83 = v57;
    CUAppendF();
    objc_storeStrong(v59 + 5, v100);
  }

  if (self->_discoveredInExtension)
  {
    v60 = v130;
    v99 = v130[5];
    v83 = "yes";
    CUAppendF();
    objc_storeStrong(v60 + 5, v99);
  }

  v61 = self->_displayImageName;
  v62 = v61;
  if (v61)
  {
    v63 = v130;
    v98 = v130[5];
    v83 = v61;
    CUAppendF();
    objc_storeStrong(v63 + 5, v98);
  }

  if (self->_allowPairing)
  {
    v64 = v130;
    v97 = v130[5];
    v83 = "yes";
    CUAppendF();
    objc_storeStrong(v64 + 5, v97);
  }

  if (self->_bluetoothSetupInProgress)
  {
    v65 = v130;
    v96 = v130[5];
    v83 = "yes";
    CUAppendF();
    objc_storeStrong(v65 + 5, v96);
  }

  if (self->_bluetoothSetupFinished)
  {
    v66 = v130;
    v95 = v130[5];
    v83 = "yes";
    CUAppendF();
    objc_storeStrong(v66 + 5, v95);
  }

  if (self->_wifiAwareSetupInProgress)
  {
    v67 = v130;
    v94 = v130[5];
    v83 = "yes";
    CUAppendF();
    objc_storeStrong(v67 + 5, v94);
  }

  if (self->_wifiAwareSetupFinished)
  {
    v68 = v130;
    v93 = v130[5];
    v83 = "yes";
    CUAppendF();
    objc_storeStrong(v68 + 5, v93);
  }

  if (self->_upgradeInProgress)
  {
    v69 = v130;
    v92 = v130[5];
    v83 = "yes";
    CUAppendF();
    objc_storeStrong(v69 + 5, v92);
  }

  if (self->_upgradeFinished)
  {
    v70 = v130;
    v91 = v130[5];
    v83 = "yes";
    CUAppendF();
    objc_storeStrong(v70 + 5, v91);
  }

  if (self->_upgradeFailed)
  {
    v71 = v130;
    v90 = v130[5];
    v83 = "yes";
    CUAppendF();
    objc_storeStrong(v71 + 5, v90);
  }

  if (self->_pendingRemoval)
  {
    v72 = v130;
    v89 = v130[5];
    v83 = "yes";
    CUAppendF();
    objc_storeStrong(v72 + 5, v89);
  }

  endpoints = self->_endpoints;
  v88[0] = MEMORY[0x277D85DD0];
  v88[1] = 3221225472;
  v88[2] = __33__DADevice_descriptionWithLevel___block_invoke;
  v88[3] = &unk_278F57B50;
  v88[4] = &v129;
  v88[5] = v127;
  [(NSDictionary *)endpoints enumerateKeysAndObjectsUsingBlock:v88, v83];
  appAccessInfoDeviceMap = self->_appAccessInfoDeviceMap;
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = __33__DADevice_descriptionWithLevel___block_invoke_2;
  v86[3] = &unk_278F57B78;
  v86[4] = &v129;
  v86[5] = v127;
  levelCopy = level;
  [(NSMutableDictionary *)appAccessInfoDeviceMap enumerateKeysAndObjectsUsingBlock:v86];
  accessoryServicesInternalMap = self->_accessoryServicesInternalMap;
  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = __33__DADevice_descriptionWithLevel___block_invoke_3;
  v84[3] = &unk_278F57BA0;
  v84[4] = &v129;
  v84[5] = v127;
  levelCopy2 = level;
  [(NSMutableDictionary *)accessoryServicesInternalMap enumerateKeysAndObjectsUsingBlock:v84];
  v76 = v130[5];
  if (!v76)
  {
    v76 = &stru_285B4C350;
  }

  v77 = v76;
  _Block_object_dispose(v127, 8);
  _Block_object_dispose(&v129, 8);

  return v77;
}

void __33__DADevice_descriptionWithLevel___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  if ([a3 selected])
  {
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 32) + 8);
    obj = *(v7 + 40);
    v8 = *(v6 + 8);
    CUAppendF();
    objc_storeStrong((v7 + 40), obj);
    *a4 = 1;
  }
}

void __33__DADevice_descriptionWithLevel___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  obj = *(v1 + 40);
  v2 = *(*(a1 + 40) + 8);
  v3 = *(a1 + 48);
  v4 = CUDescriptionWithLevel();
  CUAppendF();
  objc_storeStrong((v1 + 40), obj);
}

void __33__DADevice_descriptionWithLevel___block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  obj = *(v1 + 40);
  v2 = *(*(a1 + 40) + 8);
  v3 = *(a1 + 48);
  v4 = CUDescriptionWithLevel();
  CUAppendF();
  objc_storeStrong((v1 + 40), obj);
}

- (NSDictionary)accessoryServicesMap
{
  v2 = [(NSMutableDictionary *)self->_accessoryServicesInternalMap copy];

  return v2;
}

- (NSDictionary)appAccessInfoMap
{
  v2 = [(NSMutableDictionary *)self->_appAccessInfoDeviceMap copy];

  return v2;
}

- (BOOL)requiresBluetoothSetup
{
  v3 = self->_discoveryConfiguration;
  bluetoothCompanyIdentifiers = [(DADiscoveryConfiguration *)v3 bluetoothCompanyIdentifiers];
  if (!bluetoothCompanyIdentifiers)
  {
    bluetoothCompanyPayload = [(DADiscoveryConfiguration *)v3 bluetoothCompanyPayload];
    if (bluetoothCompanyPayload)
    {
      v5 = 1;
LABEL_18:

      goto LABEL_19;
    }

    bluetoothCompanyPayloadMask = [(DADiscoveryConfiguration *)v3 bluetoothCompanyPayloadMask];
    if (bluetoothCompanyPayloadMask)
    {
      v5 = 1;
LABEL_17:

      goto LABEL_18;
    }

    bluetoothNameSubstring = [(DADiscoveryConfiguration *)v3 bluetoothNameSubstring];
    if (bluetoothNameSubstring)
    {
      v5 = 1;
LABEL_16:

      goto LABEL_17;
    }

    bluetoothServices = [(DADiscoveryConfiguration *)v3 bluetoothServices];
    if (bluetoothServices && (-[DADiscoveryConfiguration bluetoothServices](v3, "bluetoothServices"), v2 = objc_claimAutoreleasedReturnValue(), [v2 count]))
    {
      v5 = 1;
    }

    else
    {
      bluetoothServicePayload = [(DADiscoveryConfiguration *)v3 bluetoothServicePayload];
      if (bluetoothServicePayload)
      {

        v5 = 1;
        if (!bluetoothServices)
        {
LABEL_15:

          goto LABEL_16;
        }
      }

      else
      {
        bluetoothServicePayloadMask = [(DADiscoveryConfiguration *)v3 bluetoothServicePayloadMask];
        v5 = bluetoothServicePayloadMask != 0;

        if (!bluetoothServices)
        {
          goto LABEL_15;
        }
      }
    }

    goto LABEL_15;
  }

  v5 = 1;
LABEL_19:

  return v5;
}

- (BOOL)requiresWiFiSoftAPSetup
{
  v2 = self->_discoveryConfiguration;
  hotspotSSIDs = [(DADiscoveryConfiguration *)v2 hotspotSSIDs];
  if (hotspotSSIDs)
  {
    v4 = 1;
  }

  else
  {
    hotspotSSIDPrefixes = [(DADiscoveryConfiguration *)v2 hotspotSSIDPrefixes];
    v4 = hotspotSSIDPrefixes != 0;
  }

  return v4;
}

- (BOOL)requiresWiFiAwareSetup
{
  wifiAwareServiceName = [(DADiscoveryConfiguration *)self->_discoveryConfiguration wifiAwareServiceName];
  v3 = wifiAwareServiceName != 0;

  return v3;
}

- (void)setDeviceUpgradeFinished:(BOOL)finished inProgress:(BOOL)progress failed:(BOOL)failed
{
  self->_upgradeInProgress = !failed && progress;
  self->_upgradeFinished = !failed && finished;
  self->_upgradeFailed = failed;
}

void __45__DADevice_encodeAdvDataWithCoder_xpcObject___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 UUIDString];
  [v4 setObject:v5 forKeyedSubscript:v6];
}

- (void)decodeAdvDataWithCoder:(id)coder xpcObject:(id)object
{
  v39 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  objectCopy = object;
  v7 = objectCopy;
  v36 = 0;
  if (coderCopy)
  {
    objc_opt_class();
    NSDecodeObjectIfPresent();
  }

  else if (objectCopy)
  {
    CUXPCDecodeNSData();
  }

  v28 = 0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = approvedCoreBluetoothADVKeysNested();
  v27 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v27)
  {
    v26 = *v33;
    v25 = *MEMORY[0x277CBDD28];
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v33 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v32 + 1) + 8 * i);
        v31 = 0;
        if (coderCopy)
        {
          v10 = coderCopy;
          v11 = v9;
          objc_opt_class();
          NSDecodeObjectIfPresent();
        }

        else
        {
          if (!v7)
          {
            continue;
          }

          [v9 cStringUsingEncoding:4];
          CUXPCDecodeNSData();
        }

        if (v31)
        {
          v12 = v7;
          v13 = MEMORY[0x277CBEB98];
          v37[0] = objc_opt_class();
          v37[1] = objc_opt_class();
          v37[2] = objc_opt_class();
          v37[3] = objc_opt_class();
          v37[4] = objc_opt_class();
          v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:5];
          v15 = [v13 setWithArray:v14];

          v16 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v15 fromData:v31 error:0];
          dictionary = [MEMORY[0x277CBEB38] dictionary];
          if ([v9 isEqualToString:v25])
          {
            v29[0] = MEMORY[0x277D85DD0];
            v29[1] = 3221225472;
            v29[2] = __45__DADevice_decodeAdvDataWithCoder_xpcObject___block_invoke;
            v29[3] = &unk_278F57BF0;
            v30 = dictionary;
            [v16 enumerateKeysAndObjectsUsingBlock:v29];
          }

          dictionary2 = v28;
          if (!v28)
          {
            dictionary2 = [MEMORY[0x277CBEB38] dictionary];
          }

          v19 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];
          v28 = dictionary2;
          [dictionary2 setObject:v19 forKeyedSubscript:v9];

          v7 = v12;
        }
      }

      v27 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v27);
  }

  if (v28)
  {
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v28];
    bluetoothAdvertisementData = self->_bluetoothAdvertisementData;
    self->_bluetoothAdvertisementData = v20;
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __45__DADevice_decodeAdvDataWithCoder_xpcObject___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [MEMORY[0x277CBE0A0] UUIDWithString:a2];
  if (v5)
  {
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }
}

+ (BOOL)deviceMetadataURLValid:(id)valid
{
  validCopy = valid;
  absoluteString = [validCopy absoluteString];
  v5 = [absoluteString length];

  if (v5 > 0x31)
  {
    v10 = 0;
  }

  else
  {
    query = [validCopy query];
    if (query)
    {
      v10 = 0;
    }

    else
    {
      host = [validCopy host];
      v8 = host;
      if (host && [host length] <= 0x13)
      {
        v9 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^[a-zA-Z0-9.-]+$" options:1 error:0];
        v10 = [v9 numberOfMatchesInString:v8 options:0 range:{0, objc_msgSend(v8, "length")}] != 0;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  return v10;
}

- (void)encodeAdvDataWithCoder:(id)coder xpcObject:(id)object
{
  v85[7] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  objectCopy = object;
  if (self->_bluetoothAdvertisementData)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v7 = *MEMORY[0x277CBDD48];
    v85[0] = *MEMORY[0x277CBDD08];
    v85[1] = v7;
    v8 = *MEMORY[0x277CBDD10];
    v62 = *MEMORY[0x277CBDD30];
    v85[2] = *MEMORY[0x277CBDD30];
    v85[3] = v8;
    v9 = *MEMORY[0x277CBDCF0];
    key = *MEMORY[0x277CBDD18];
    v85[4] = *MEMORY[0x277CBDD18];
    v85[5] = v9;
    xdict = *MEMORY[0x277CBDD38];
    v85[6] = *MEMORY[0x277CBDD38];
    obj = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:7];
    v10 = [obj countByEnumeratingWithState:&v78 objects:v84 count:16];
    v61 = dictionary;
    if (v10)
    {
      v11 = v10;
      v64 = *v79;
      do
      {
        v12 = 0;
        do
        {
          if (*v79 != v64)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v78 + 1) + 8 * v12);
          v14 = [(NSDictionary *)self->_bluetoothAdvertisementData objectForKeyedSubscript:v13];

          if (v14)
          {
            if (([v13 isEqualToString:v62] & 1) != 0 || (objc_msgSend(v13, "isEqualToString:", key) & 1) != 0 || objc_msgSend(v13, "isEqualToString:", xdict))
            {
              selfCopy = self;
              v16 = [(NSDictionary *)self->_bluetoothAdvertisementData objectForKeyedSubscript:v13];
              array = [MEMORY[0x277CBEB18] array];
              v74 = 0u;
              v75 = 0u;
              v76 = 0u;
              v77 = 0u;
              v18 = v16;
              v19 = [v18 countByEnumeratingWithState:&v74 objects:v83 count:16];
              if (v19)
              {
                v20 = v19;
                v21 = *v75;
                do
                {
                  for (i = 0; i != v20; ++i)
                  {
                    if (*v75 != v21)
                    {
                      objc_enumerationMutation(v18);
                    }

                    uUIDString = [*(*(&v74 + 1) + 8 * i) UUIDString];
                    [array addObject:uUIDString];
                  }

                  v20 = [v18 countByEnumeratingWithState:&v74 objects:v83 count:16];
                }

                while (v20);
              }

              dictionary = v61;
              [v61 setObject:array forKeyedSubscript:v13];

              self = selfCopy;
            }

            else
            {
              v18 = [(NSDictionary *)self->_bluetoothAdvertisementData objectForKeyedSubscript:v13];
              [dictionary setObject:v18 forKeyedSubscript:v13];
            }
          }

          ++v12;
        }

        while (v12 != v11);
        v24 = [obj countByEnumeratingWithState:&v78 objects:v84 count:16];
        v11 = v24;
      }

      while (v24);
    }

    if ([dictionary count])
    {
      v73 = 0;
      v25 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:dictionary requiringSecureCoding:1 error:&v73];
      v26 = v73;
      if (v26 && gLogCategory_DADevice <= 90 && (gLogCategory_DADevice != -1 || _LogCategory_Initialize()))
      {
        v51 = v26;
        v52 = dictionary;
        LogPrintF();
      }

      if (v25)
      {
        if (coderCopy)
        {
          [coderCopy encodeObject:v25 forKey:@"btAdv"];
        }

        else if (objectCopy)
        {
          v27 = objectCopy;
          v28 = v25;
          v29 = v25;
          bytes = [v29 bytes];
          if (bytes)
          {
            v31 = bytes;
          }

          else
          {
            v31 = "";
          }

          v32 = [v29 length];

          xpc_dictionary_set_data(v27, "btAdv", v31, v32);
        }
      }
    }

    else
    {
      v26 = 0;
    }

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v65 = approvedCoreBluetoothADVKeysNested();
    v33 = [v65 countByEnumeratingWithState:&v69 objects:v82 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v70;
      v36 = *MEMORY[0x277CBDD28];
      v63 = *MEMORY[0x277CBDD28];
      do
      {
        for (j = 0; j != v34; ++j)
        {
          v38 = v26;
          if (*v70 != v35)
          {
            objc_enumerationMutation(v65);
          }

          v39 = *(*(&v69 + 1) + 8 * j);
          v40 = [(NSDictionary *)self->_bluetoothAdvertisementData objectForKeyedSubscript:v39, v51, v52];

          if (v40 && [v39 isEqualToString:v36])
          {
            v41 = [(NSDictionary *)self->_bluetoothAdvertisementData objectForKeyedSubscript:v39];
            dictionary2 = [MEMORY[0x277CBEB38] dictionary];
            v67[0] = MEMORY[0x277D85DD0];
            v67[1] = 3221225472;
            v67[2] = __45__DADevice_encodeAdvDataWithCoder_xpcObject___block_invoke;
            v67[3] = &unk_278F57BC8;
            v43 = dictionary2;
            v68 = v43;
            [v41 enumerateKeysAndObjectsUsingBlock:v67];
            v66 = v26;
            v44 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v43 requiringSecureCoding:1 error:&v66];
            v26 = v66;

            if (v26 && gLogCategory_DADevice <= 90 && (gLogCategory_DADevice != -1 || _LogCategory_Initialize()))
            {
              v51 = v26;
              v52 = v43;
              LogPrintF();
            }

            if (v44)
            {
              if (coderCopy)
              {
                [coderCopy encodeObject:v44 forKey:v39];
              }

              else if (objectCopy)
              {
                keya = [v39 cStringUsingEncoding:4];
                xdicta = objectCopy;
                v45 = v44;
                v46 = v44;
                bytes2 = [v46 bytes];
                v48 = "";
                if (bytes2)
                {
                  v48 = bytes2;
                }

                bytes = v48;
                v49 = [v46 length];

                xpc_dictionary_set_data(xdicta, keya, bytes, v49);
              }
            }

            v36 = v63;
          }
        }

        v34 = [v65 countByEnumeratingWithState:&v69 objects:v82 count:16];
      }

      while (v34);
    }
  }

  v50 = *MEMORY[0x277D85DE8];
}

- (void)initWithXPCObject:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CBEBC0] URLWithString:a1];
  if (v3)
  {
    objc_storeStrong((a2 + 184), v3);
  }
}

@end