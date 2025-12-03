@interface CWFScanResult
+ (id)supportedOSSpecificKeys;
- (BOOL)hasNon6GHzRNRChannel;
- (BOOL)hasTKIPCipher;
- (BOOL)hasWEP104Cipher;
- (BOOL)hasWEP40Cipher;
- (BOOL)isAdditionalStepRequiredForAccess;
- (BOOL)isAmbiguousNetworkName;
- (BOOL)isAppleSWAP;
- (BOOL)isAssociationDisallowed;
- (BOOL)isBackgroundScanResult;
- (BOOL)isEmergencyServicesReachable;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToScanResult:(id)result;
- (BOOL)isFILSDiscoveryFrame;
- (BOOL)isHotspot;
- (BOOL)isInternetAccessible;
- (BOOL)isMetered;
- (BOOL)isPasspoint;
- (BOOL)isPersonalHotspot;
- (BOOL)isUnauthenticatedEmergencyServiceAccessible;
- (BOOL)isUnconfiguredAirPortBaseStation;
- (BOOL)isUnconfiguredDevice;
- (BOOL)isWiFi6E;
- (BOOL)providesInternetAccess;
- (BOOL)supports2GHzNetworks;
- (BOOL)supports5GHzNetworks;
- (BOOL)supportsAirPlay;
- (BOOL)supportsAirPlay2;
- (BOOL)supportsAirPrint;
- (BOOL)supportsCarPlay;
- (BOOL)supportsHomeKit;
- (BOOL)supportsHomeKit2;
- (BOOL)supportsMFi;
- (BOOL)supportsMFiHardwareAuth;
- (BOOL)supportsMFiSoftwareCertAuth;
- (BOOL)supportsMFiSoftwareTokenAuth;
- (BOOL)supportsSecureWAC;
- (BOOL)supportsWPS;
- (BOOL)supportsWoW;
- (BOOL)supportsiAPOverWiFi;
- (BOOL)wasConnectedDuringSleep;
- (CWFChannel)channel;
- (CWFScanResult)initWithCoder:(id)coder;
- (CWFScanResult)initWithScanRecord:(id)record knownNetworkProfile:(id)profile includeProperties:(id)properties;
- (CWFScanResult)scanResultWithMatchingKnownNetworkProfile:(id)profile;
- (NSDictionary)OSSpecificAttributes;
- (NSSet)properties;
- (NSString)description;
- (NSString)networkName;
- (id)JSONCompatibleKeyValueMap;
- (id)OSSpecificValueForKey:(id)key;
- (id)__descriptionForAirPortBaseStationModel:(int64_t)model;
- (id)__descriptionForRSNIE;
- (id)__descriptionForWPAIE;
- (id)__internalDictionaryFromScanRecord:(id)record knownNetworkProfile:(id)profile includeProperties:(id)properties;
- (id)__supportedProperties;
- (id)copyWithZone:(_NSZone *)zone;
- (id)filteredScanResultWithProperties:(id)properties;
- (id)networkProfile;
- (int)APMode;
- (int)RSNCapabilities;
- (int)accessNetworkType;
- (int)fastestSupportedPHYMode;
- (int)slowestSupportedPHYMode;
- (int)supportedPHYModes;
- (int64_t)RSSI;
- (int64_t)WAPISubtype;
- (int64_t)airPortBaseStationModel;
- (int64_t)beaconInterval;
- (int64_t)compareLowDataModes:(id)modes;
- (int64_t)compareSupportedPHYModes:(id)modes;
- (int64_t)compareSupportedSecurityTypes:(id)types;
- (int64_t)noise;
- (int64_t)venueGroup;
- (int64_t)venueType;
- (unint64_t)CWFNetworkWarningFlagsFromScanResult;
- (unint64_t)RSNBroadcastCipher;
- (unint64_t)RSNMulticastCipher;
- (unint64_t)WPAMulticastCipher;
- (unint64_t)hash;
- (unint64_t)shortSSID;
- (unint64_t)strongestSupportedSecurityType;
- (unint64_t)supportedSecurityTypes;
- (unint64_t)timestamp;
- (unint64_t)weakestSupportedSecurityType;
- (void)setMatchingKnownNetworkProfile:(id)profile;
- (void)setOSSpecificAttributes:(id)attributes;
- (void)setOSSpecificValue:(id)value forKey:(id)key;
@end

@implementation CWFScanResult

+ (id)supportedOSSpecificKeys
{
  if (qword_1ED7E3A08 != -1)
  {
    dispatch_once(&qword_1ED7E3A08, &unk_1F5B89C90);
  }

  v3 = qword_1ED7E3A00;

  return v3;
}

- (id)__supportedProperties
{
  v2 = [MEMORY[0x1E695DFA8] set];
  for (i = 0; i != 79; ++i)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:i];
    [v2 addObject:v4];
  }

  v5 = [v2 copy];

  return v5;
}

- (unint64_t)supportedSecurityTypes
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCC88];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (BOOL)isFILSDiscoveryFrame
{
  networkFlags = [(CWFScanResult *)self networkFlags];
  v3 = [networkFlags containsObject:&unk_1F5BBCD00];

  return v3;
}

- (id)networkProfile
{
  matchingKnownNetworkProfile = [(CWFScanResult *)self matchingKnownNetworkProfile];
  if (!matchingKnownNetworkProfile)
  {
    matchingKnownNetworkProfile = objc_alloc_init(CWFNetworkProfile);
    sSID = [(CWFScanResult *)self SSID];
    [(CWFNetworkProfile *)matchingKnownNetworkProfile setSSID:sSID];

    [(CWFNetworkProfile *)matchingKnownNetworkProfile setSupportedSecurityTypes:[(CWFScanResult *)self supportedSecurityTypes]];
    [(CWFNetworkProfile *)matchingKnownNetworkProfile setWAPISubtype:[(CWFScanResult *)self WAPISubtype]];
    [(CWFNetworkProfile *)matchingKnownNetworkProfile setCarplayNetwork:[(CWFScanResult *)self supportsCarPlay]];
    [(CWFNetworkProfile *)matchingKnownNetworkProfile setPersonalHotspot:[(CWFScanResult *)self isPersonalHotspot]];
  }

  return matchingKnownNetworkProfile;
}

- (BOOL)isBackgroundScanResult
{
  networkFlags = [(CWFScanResult *)self networkFlags];
  v3 = [networkFlags containsObject:&unk_1F5BBD300];

  return v3;
}

- (NSString)description
{
  v114 = *MEMORY[0x1E69E9840];
  string = [MEMORY[0x1E696AD60] string];
  sSID = [(CWFScanResult *)self SSID];

  if (sSID)
  {
    networkName = [(CWFScanResult *)self networkName];
    redactedForWiFi = [networkName redactedForWiFi];

    if (([redactedForWiFi hasPrefix:@" "] & 1) != 0 || objc_msgSend(redactedForWiFi, "hasSuffix:", @" "))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@'", redactedForWiFi];

      redactedForWiFi = v7;
    }

    [string appendFormat:@"%@ - ", redactedForWiFi];
    sSID2 = [(CWFScanResult *)self SSID];
    v9 = CWFHexadecimalStringFromData(sSID2);
    redactedForWiFi2 = [v9 redactedForWiFi];
    [string appendFormat:@"ssid=%@ (%lu), ", redactedForWiFi2, -[CWFScanResult shortSSID](self, "shortSSID")];
  }

  bSSID = [(CWFScanResult *)self BSSID];

  if (bSSID)
  {
    bSSID2 = [(CWFScanResult *)self BSSID];
    redactedForWiFi3 = [bSSID2 redactedForWiFi];
    [string appendFormat:@"bssid=%@, ", redactedForWiFi3];
  }

  if ([(CWFScanResult *)self supportedSecurityTypes])
  {
    v14 = sub_1E0BD331C([(CWFScanResult *)self supportedSecurityTypes], 0, [(CWFScanResult *)self WAPISubtype]);
    [string appendFormat:@"security=%@, ", v14];
  }

  __descriptionForRSNIE = [(CWFScanResult *)self __descriptionForRSNIE];
  v16 = __descriptionForRSNIE;
  if (__descriptionForRSNIE)
  {
    [string appendFormat:@"rsn=%@, ", __descriptionForRSNIE];
  }

  __descriptionForWPAIE = [(CWFScanResult *)self __descriptionForWPAIE];
  v18 = __descriptionForWPAIE;
  if (__descriptionForWPAIE)
  {
    [string appendFormat:@"wpa=%@, ", __descriptionForWPAIE];
  }

  channel = [(CWFScanResult *)self channel];

  if (channel)
  {
    channel2 = [(CWFScanResult *)self channel];
    [string appendFormat:@"channel=%@", channel2];

    rNRChannelList = [(CWFScanResult *)self RNRChannelList];
    if ([rNRChannelList count])
    {
      objc_msgSend(string, "appendString:", @" (");
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v22 = rNRChannelList;
      v23 = [v22 countByEnumeratingWithState:&v103 objects:v113 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v104;
        do
        {
          v26 = 0;
          do
          {
            if (*v104 != v25)
            {
              objc_enumerationMutation(v22);
            }

            [string appendFormat:@"%@, ", *(*(&v103 + 1) + 8 * v26++)];
          }

          while (v24 != v26);
          v24 = [v22 countByEnumeratingWithState:&v103 objects:v113 count:16];
        }

        while (v24);
      }

      [string deleteCharactersInRange:{objc_msgSend(string, "length") - 2, 2}];
      v27 = @", ");
    }

    else
    {
      v27 = @", ";
    }

    [string appendString:v27];
  }

  countryCode = [(CWFScanResult *)self countryCode];

  if (countryCode)
  {
    countryCode2 = [(CWFScanResult *)self countryCode];
    [string appendFormat:@"cc=%@, ", countryCode2];
  }

  if ([(CWFScanResult *)self supportedPHYModes])
  {
    v30 = sub_1E0BEE5D4([(CWFScanResult *)self supportedPHYModes]);
    [string appendFormat:@"phy=%@, ", v30];
  }

  if ([(CWFScanResult *)self RSSI])
  {
    [string appendFormat:@"rssi=%li, ", -[CWFScanResult RSSI](self, "RSSI")];
  }

  [string appendFormat:@"wasConnectedDuringSleep=%li, ", -[CWFScanResult wasConnectedDuringSleep](self, "wasConnectedDuringSleep")];
  if ([(CWFScanResult *)self beaconInterval])
  {
    [string appendFormat:@"bi=%li, ", -[CWFScanResult beaconInterval](self, "beaconInterval")];
  }

  if ([(CWFScanResult *)self isPasspoint])
  {
    [string appendString:{@"hs20=yes, "}];
  }

  if ([(CWFScanResult *)self isIBSS])
  {
    [string appendString:{@"ibss=yes, "}];
  }

  if ([(CWFScanResult *)self isPersonalHotspot])
  {
    [string appendString:{@"ph=yes, "}];
  }

  if ([(CWFScanResult *)self isAppleSWAP])
  {
    [string appendString:{@"swap=yes, "}];
  }

  if ([(CWFScanResult *)self supportsCarPlay])
  {
    [string appendString:{@"carplay=yes, "}];
  }

  airPortBaseStationModel = [(CWFScanResult *)self airPortBaseStationModel];
  if (airPortBaseStationModel)
  {
    v32 = [(CWFScanResult *)self __descriptionForAirPortBaseStationModel:airPortBaseStationModel];
    [string appendFormat:@"airport=[%@], ", v32];
  }

  if ([(CWFScanResult *)self isWiFi6E])
  {
    [string appendString:{@"6e=yes, "}];
  }

  if ([(CWFScanResult *)self isFILSDiscoveryFrame])
  {
    [string appendString:{@"filsd=yes, "}];
  }

  rNRBSSList = [(CWFScanResult *)self RNRBSSList];
  if ([rNRBSSList count])
  {
    [string appendString:@"rnr=["];
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v34 = rNRBSSList;
    v35 = [v34 countByEnumeratingWithState:&v99 objects:v112 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v100;
      do
      {
        v38 = 0;
        do
        {
          if (*v100 != v37)
          {
            objc_enumerationMutation(v34);
          }

          [string appendFormat:@"(%@), ", *(*(&v99 + 1) + 8 * v38++)];
        }

        while (v36 != v38);
        v36 = [v34 countByEnumeratingWithState:&v99 objects:v112 count:16];
      }

      while (v36);
    }

    [string deleteCharactersInRange:{objc_msgSend(string, "length") - 2, 2}];
    [string appendString:{@"], "}];
  }

  if ([(CWFScanResult *)self isBackgroundScanResult])
  {
    [string appendString:{@"bgscan=yes, "}];
  }

  if ([(CWFScanResult *)self isPasspoint])
  {
    domainNameList = [(CWFScanResult *)self domainNameList];
    if ([domainNameList count])
    {
      [string appendString:@"hs20-domains=["];
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v39 = domainNameList;
      v40 = [v39 countByEnumeratingWithState:&v95 objects:v111 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v96;
        do
        {
          v43 = 0;
          do
          {
            if (*v96 != v42)
            {
              objc_enumerationMutation(v39);
            }

            [string appendFormat:@"%@, ", *(*(&v95 + 1) + 8 * v43++)];
          }

          while (v41 != v43);
          v41 = [v39 countByEnumeratingWithState:&v95 objects:v111 count:16];
        }

        while (v41);
      }

      [string deleteCharactersInRange:{objc_msgSend(string, "length") - 2, 2}];
      [string appendString:{@"], "}];
    }

    nAIRealmNameList = [(CWFScanResult *)self NAIRealmNameList];
    v75 = v18;
    if ([nAIRealmNameList count])
    {
      [string appendString:@"hs20-nai=["];
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v45 = nAIRealmNameList;
      v46 = nAIRealmNameList;
      v47 = [v46 countByEnumeratingWithState:&v91 objects:v110 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v92;
        do
        {
          v50 = 0;
          do
          {
            if (*v92 != v49)
            {
              objc_enumerationMutation(v46);
            }

            [string appendFormat:@"%@, ", *(*(&v91 + 1) + 8 * v50++)];
          }

          while (v48 != v50);
          v48 = [v46 countByEnumeratingWithState:&v91 objects:v110 count:16];
        }

        while (v48);
      }

      [string deleteCharactersInRange:{objc_msgSend(string, "length") - 2, 2}];
      [string appendString:{@"], "}];
      nAIRealmNameList = v45;
    }

    v76 = v16;
    roamingConsortiumList = [(CWFScanResult *)self roamingConsortiumList];
    if ([roamingConsortiumList count])
    {
      [string appendString:@"hs20-rc=["];
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v51 = roamingConsortiumList;
      v52 = [v51 countByEnumeratingWithState:&v87 objects:v109 count:16];
      if (v52)
      {
        v53 = v52;
        v54 = *v88;
        do
        {
          v55 = 0;
          do
          {
            if (*v88 != v54)
            {
              objc_enumerationMutation(v51);
            }

            [string appendFormat:@"%@, ", *(*(&v87 + 1) + 8 * v55++)];
          }

          while (v53 != v55);
          v53 = [v51 countByEnumeratingWithState:&v87 objects:v109 count:16];
        }

        while (v53);
      }

      [string deleteCharactersInRange:{objc_msgSend(string, "length") - 2, 2}];
      [string appendString:{@"], "}];
    }

    operatorFriendlyNameList = [(CWFScanResult *)self operatorFriendlyNameList];
    if ([operatorFriendlyNameList count])
    {
      [string appendString:@"hs20-friend=["];
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v57 = operatorFriendlyNameList;
      v58 = [v57 countByEnumeratingWithState:&v83 objects:v108 count:16];
      if (v58)
      {
        v59 = v58;
        v60 = *v84;
        do
        {
          v61 = 0;
          do
          {
            if (*v84 != v60)
            {
              objc_enumerationMutation(v57);
            }

            [string appendFormat:@"%@, ", *(*(&v83 + 1) + 8 * v61++)];
          }

          while (v59 != v61);
          v59 = [v57 countByEnumeratingWithState:&v83 objects:v108 count:16];
        }

        while (v59);
      }

      [string deleteCharactersInRange:{objc_msgSend(string, "length") - 2, 2}];
      [string appendString:{@"], "}];
    }

    cellularNetworkInfo = [(CWFScanResult *)self cellularNetworkInfo];
    if ([cellularNetworkInfo count])
    {
      v74 = nAIRealmNameList;
      v63 = rNRBSSList;
      [string appendString:@"hs20-cell=["];
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v64 = cellularNetworkInfo;
      v65 = [v64 countByEnumeratingWithState:&v79 objects:v107 count:16];
      if (v65)
      {
        v66 = v65;
        v67 = *v80;
        do
        {
          v68 = 0;
          do
          {
            if (*v80 != v67)
            {
              objc_enumerationMutation(v64);
            }

            [string appendFormat:@"%@, ", *(*(&v79 + 1) + 8 * v68++)];
          }

          while (v66 != v68);
          v66 = [v64 countByEnumeratingWithState:&v79 objects:v107 count:16];
        }

        while (v66);
      }

      [string deleteCharactersInRange:{objc_msgSend(string, "length") - 2, 2}];
      [string appendString:{@"], "}];
      rNRBSSList = v63;
      nAIRealmNameList = v74;
    }

    v18 = v75;
    v16 = v76;
  }

  [string appendFormat:@"age=%lums (%llu), ", -[CWFScanResult age](self, "age"), -[CWFScanResult timestamp](self, "timestamp")];
  matchingKnownNetworkProfile = [(CWFScanResult *)self matchingKnownNetworkProfile];

  if (matchingKnownNetworkProfile)
  {
    matchingKnownNetworkProfile2 = [(CWFScanResult *)self matchingKnownNetworkProfile];
    [string appendFormat:@"match=[%@], ", matchingKnownNetworkProfile2];
  }

  if ([string hasSuffix:{@", "}])
  {
    [string deleteCharactersInRange:{objc_msgSend(string, "length") - 2, 2}];
  }

  v71 = string;

  v72 = *MEMORY[0x1E69E9840];
  return string;
}

- (id)__descriptionForRSNIE
{
  v52 = *MEMORY[0x1E69E9840];
  scanRecord = [(CWFScanResult *)self scanRecord];
  v4 = [scanRecord objectForKeyedSubscript:@"RSN_IE"];

  if (v4 || ([MEMORY[0x1E695DFD8] setWithArray:&unk_1F5BB9D48], v5 = objc_claimAutoreleasedReturnValue(), -[CWFScanResult properties](self, "properties"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isSubsetOfSet:", v6), v6, v5, v7))
  {
    v8 = [v4 objectForKeyedSubscript:@"IE_KEY_RSN_MCIPHER"];
    if (!v8)
    {
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[CWFScanResult RSNMulticastCipher](self, "RSNMulticastCipher")}];
    }

    v9 = [v4 objectForKeyedSubscript:@"IE_KEY_RSN_BCIPHER"];
    if (!v9)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[CWFScanResult RSNBroadcastCipher](self, "RSNBroadcastCipher")}];
    }

    rSNUnicastCiphers = [v4 objectForKeyedSubscript:@"IE_KEY_RSN_UCIPHERS"];
    if (!rSNUnicastCiphers)
    {
      rSNUnicastCiphers = [(CWFScanResult *)self RSNUnicastCiphers];
    }

    rSNAuthSelectors = [v4 objectForKeyedSubscript:@"IE_KEY_RSN_AUTHSELS"];
    if (!rSNAuthSelectors)
    {
      rSNAuthSelectors = [(CWFScanResult *)self RSNAuthSelectors];
    }

    v38 = rSNAuthSelectors;
    v12 = [v4 objectForKeyedSubscript:@"IE_KEY_RSN_CAPS"];
    v13 = [v12 objectForKeyedSubscript:@"RSN_CAPABILITIES"];

    if (!v13)
    {
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CWFScanResult RSNCapabilities](self, "RSNCapabilities")}];
    }

    string = [MEMORY[0x1E696AD60] string];
    [string appendString:@"["];
    v40 = v8;
    v15 = -[CWFScanResult __descriptionForRSNCipher:](self, "__descriptionForRSNCipher:", [v8 intValue]);
    [string appendFormat:@"mcast=%@, ", v15];

    v39 = v9;
    v16 = -[CWFScanResult __descriptionForRSNCipher:](self, "__descriptionForRSNCipher:", [v9 intValue]);
    [string appendFormat:@"bip=%@, ", v16];

    [string appendString:@"ucast={ "];
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v17 = rSNUnicastCiphers;
    v18 = [v17 countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v47;
      do
      {
        v21 = 0;
        do
        {
          if (*v47 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = -[CWFScanResult __descriptionForRSNCipher:](self, "__descriptionForRSNCipher:", [*(*(&v46 + 1) + 8 * v21) intValue]);
          [string appendFormat:@"%@ ", v22];

          ++v21;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v19);
    }

    v41 = v4;

    [string appendString:{@"}, "}];
    [string appendString:@"auths={ "];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v23 = v38;
    v24 = [v23 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v43;
      do
      {
        v27 = 0;
        do
        {
          if (*v43 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = -[CWFScanResult __descriptionForRSNAuthSel:](self, "__descriptionForRSNAuthSel:", [*(*(&v42 + 1) + 8 * v27) intValue]);
          [string appendFormat:@"%@ ", v28];

          ++v27;
        }

        while (v25 != v27);
        v25 = [v23 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v25);
    }

    [string appendString:{@"}, "}];
    unsignedIntValue = [v13 unsignedIntValue];
    unsignedIntValue2 = [v13 unsignedIntValue];
    v31 = "capable";
    if ((unsignedIntValue & 0x80) == 0)
    {
      v31 = "no";
    }

    if ((unsignedIntValue2 & 0x40) != 0)
    {
      v31 = "required";
    }

    [string appendFormat:@"mfp=%s, ", v31];
    if (v13)
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%X", objc_msgSend(v13, "shortValue")];
      [string appendFormat:@"caps=%@", v32];
    }

    else
    {
      [string appendFormat:@"caps=%@", @"n/a"];
    }

    v33 = v40;
    v4 = v41;
    v34 = v39;
    [string appendString:@"]"];
  }

  else
  {
    v34 = 0;
    v17 = 0;
    v23 = 0;
    v13 = 0;
    v33 = 0;
    string = 0;
  }

  v35 = string;

  v36 = *MEMORY[0x1E69E9840];
  return string;
}

- (int64_t)beaconInterval
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCC70];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (BOOL)isAppleSWAP
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCCE8];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsCarPlay
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCEF8];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (int64_t)airPortBaseStationModel
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCD90];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (NSSet)properties
{
  v2 = MEMORY[0x1E695DFD8];
  allKeys = [(NSMutableDictionary *)self->_internal allKeys];
  v4 = [v2 setWithArray:allKeys];

  return v4;
}

- (unint64_t)timestamp
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBD258];
  unsignedLongLongValue = [v2 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (CWFChannel)channel
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCBF8];
  v3 = [v2 objectForKeyedSubscript:@"CHANNEL"];
  v4 = [v2 objectForKeyedSubscript:@"CHANNEL_FLAGS"];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = objc_alloc_init(CWFChannel);
    -[CWFChannel setChannel:](v7, "setChannel:", [v3 unsignedIntegerValue]);
    -[CWFChannel setFlags:](v7, "setFlags:", [v5 intValue]);
  }

  return v7;
}

- (BOOL)isPasspoint
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCCB8];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (id)__descriptionForWPAIE
{
  v40 = *MEMORY[0x1E69E9840];
  scanRecord = [(CWFScanResult *)self scanRecord];
  v4 = [scanRecord objectForKeyedSubscript:@"WPA_IE"];

  if (v4 || ([MEMORY[0x1E695DFD8] setWithArray:&unk_1F5BB9D30], v5 = objc_claimAutoreleasedReturnValue(), -[CWFScanResult properties](self, "properties"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isSubsetOfSet:", v6), v6, v5, v7))
  {
    v8 = [v4 objectForKeyedSubscript:@"IE_KEY_WPA_MCIPHER"];
    if (!v8)
    {
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[CWFScanResult WPAMulticastCipher](self, "WPAMulticastCipher")}];
    }

    wPAUnicastCiphers = [v4 objectForKeyedSubscript:@"IE_KEY_WPA_UCIPHERS"];
    if (!wPAUnicastCiphers)
    {
      wPAUnicastCiphers = [(CWFScanResult *)self WPAUnicastCiphers];
    }

    wPAAuthSelectors = [v4 objectForKeyedSubscript:@"IE_KEY_WPA_AUTHSELS"];
    if (!wPAAuthSelectors)
    {
      wPAAuthSelectors = [(CWFScanResult *)self WPAAuthSelectors];
    }

    string = [MEMORY[0x1E696AD60] string];
    [string appendString:@"["];
    v29 = v8;
    v12 = -[CWFScanResult __descriptionForWPACipher:](self, "__descriptionForWPACipher:", [v8 intValue]);
    [string appendFormat:@"mcast=%@, ", v12];

    [string appendString:@"ucast={ "];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = wPAUnicastCiphers;
    v14 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v35;
      do
      {
        v17 = 0;
        do
        {
          if (*v35 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = -[CWFScanResult __descriptionForWPACipher:](self, "__descriptionForWPACipher:", [*(*(&v34 + 1) + 8 * v17) intValue]);
          [string appendFormat:@"%@ ", v18];

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v15);
    }

    [string appendString:{@"}, "}];
    [string appendString:@"auths={ "];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v19 = wPAAuthSelectors;
    v20 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v31;
      do
      {
        v23 = 0;
        do
        {
          if (*v31 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = -[CWFScanResult __descriptionForWPAAuthSel:](self, "__descriptionForWPAAuthSel:", [*(*(&v30 + 1) + 8 * v23) intValue]);
          [string appendFormat:@"%@ ", v24];

          ++v23;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v21);
    }

    [string appendString:@"}"];
    [string appendString:@"]"];
    v25 = v29;
  }

  else
  {
    v13 = 0;
    v19 = 0;
    v25 = 0;
    string = 0;
  }

  v26 = string;

  v27 = *MEMORY[0x1E69E9840];
  return string;
}

- (int)supportedPHYModes
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCCA0];
  unsignedIntValue = [v2 unsignedIntValue];

  return unsignedIntValue;
}

- (int64_t)RSSI
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCC28];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (BOOL)wasConnectedDuringSleep
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCC40];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (int)APMode
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCD30];
  unsignedIntValue = [v2 unsignedIntValue];

  return unsignedIntValue;
}

- (BOOL)isPersonalHotspot
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCCD0];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isWiFi6E
{
  v19 = *MEMORY[0x1E69E9840];
  channel = [(CWFScanResult *)self channel];
  is6GHz = [channel is6GHz];

  if (is6GHz)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    rNRBSSList = [(CWFScanResult *)self RNRBSSList];
    v5 = [rNRBSSList countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v7 = *v15;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(rNRBSSList);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          channel2 = [v9 channel];
          if ([channel2 is6GHz])
          {
            isColocatedAP = [v9 isColocatedAP];

            if (isColocatedAP)
            {
              LOBYTE(v5) = 1;
              goto LABEL_14;
            }
          }

          else
          {
          }
        }

        v5 = [rNRBSSList countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v5);
    }

LABEL_14:
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)JSONCompatibleKeyValueMap
{
  v101 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFScanResult age](self, "age")}];
  [v3 setObject:v4 forKeyedSubscript:@"cache_age"];

  channel = [(CWFScanResult *)self channel];
  jSONCompatibleKeyValueMap = [channel JSONCompatibleKeyValueMap];
  [v3 setObject:jSONCompatibleKeyValueMap forKeyedSubscript:@"channel"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CWFScanResult RSSI](self, "RSSI")}];
  [v3 setObject:v7 forKeyedSubscript:@"rssi"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFScanResult wasConnectedDuringSleep](self, "wasConnectedDuringSleep")}];
  [v3 setObject:v8 forKeyedSubscript:@"wasConnectedDuringSleep"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CWFScanResult noise](self, "noise")}];
  [v3 setObject:v9 forKeyedSubscript:@"noise"];

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CWFScanResult beaconInterval](self, "beaconInterval")}];
  [v3 setObject:v10 forKeyedSubscript:@"beacon_interval"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFScanResult isUnconfiguredAirPortBaseStation](self, "isUnconfiguredAirPortBaseStation")}];
  [v3 setObject:v11 forKeyedSubscript:@"unconfigured_airport_base_station"];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFScanResult isPasspoint](self, "isPasspoint")}];
  [v3 setObject:v12 forKeyedSubscript:@"is_passpoint"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFScanResult isPersonalHotspot](self, "isPersonalHotspot")}];
  [v3 setObject:v13 forKeyedSubscript:@"is_personal_hotspot"];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFScanResult isAppleSWAP](self, "isAppleSWAP")}];
  [v3 setObject:v14 forKeyedSubscript:@"is_apple_swap"];

  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFScanResult isIBSS](self, "isIBSS")}];
  [v3 setObject:v15 forKeyedSubscript:@"is_ibss"];

  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFScanResult isWEP](self, "isWEP")}];
  [v3 setObject:v16 forKeyedSubscript:@"is_wep"];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFScanResult isWAPI](self, "isWAPI")}];
  [v3 setObject:v17 forKeyedSubscript:@"is_wapi"];

  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFScanResult isWPA](self, "isWPA")}];
  [v3 setObject:v18 forKeyedSubscript:@"is_wpa"];

  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFScanResult isWPA2](self, "isWPA2")}];
  [v3 setObject:v19 forKeyedSubscript:@"is_wpa2"];

  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFScanResult isWPA3](self, "isWPA3")}];
  [v3 setObject:v20 forKeyedSubscript:@"is_wpa3"];

  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFScanResult isEAP](self, "isEAP")}];
  [v3 setObject:v21 forKeyedSubscript:@"is_eap"];

  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFScanResult isPSK](self, "isPSK")}];
  [v3 setObject:v22 forKeyedSubscript:@"is_psk"];

  v23 = sub_1E0BD331C([(CWFScanResult *)self strongestSupportedSecurityType], 0, [(CWFScanResult *)self WAPISubtype]);
  [v3 setObject:v23 forKeyedSubscript:@"strongest_supported_security_type"];

  v24 = sub_1E0BEE5D4([(CWFScanResult *)self supportedPHYModes]);
  [v3 setObject:v24 forKeyedSubscript:@"supported_phy_modes"];

  v25 = sub_1E0BEE5D4([(CWFScanResult *)self fastestSupportedPHYMode]);
  [v3 setObject:v25 forKeyedSubscript:@"fastest_supported_phy_mode"];

  v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFScanResult isInternetAccessible](self, "isInternetAccessible")}];
  [v3 setObject:v26 forKeyedSubscript:@"is_internet_accessible"];

  v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFScanResult isAdditionalStepRequiredForAccess](self, "isAdditionalStepRequiredForAccess")}];
  [v3 setObject:v27 forKeyedSubscript:@"is_additional_step_required_for_access"];

  v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFScanResult isEmergencyServicesReachable](self, "isEmergencyServicesReachable")}];
  [v3 setObject:v28 forKeyedSubscript:@"is_emergency_services_reachable"];

  v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFScanResult isUnauthenticatedEmergencyServiceAccessible](self, "isUnauthenticatedEmergencyServiceAccessible")}];
  [v3 setObject:v29 forKeyedSubscript:@"is_unauthenticated_emergency_services_accessible"];

  v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFScanResult isUnconfiguredDevice](self, "isUnconfiguredDevice")}];
  [v3 setObject:v30 forKeyedSubscript:@"is_unconfigured_device"];

  v31 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFScanResult providesInternetAccess](self, "providesInternetAccess")}];
  [v3 setObject:v31 forKeyedSubscript:@"provides_internet_access"];

  v32 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CWFScanResult venueType](self, "venueType")}];
  [v3 setObject:v32 forKeyedSubscript:@"venue_type"];

  v33 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CWFScanResult venueGroup](self, "venueGroup")}];
  [v3 setObject:v33 forKeyedSubscript:@"venue_group"];

  v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFScanResult supportsWPS](self, "supportsWPS")}];
  [v3 setObject:v34 forKeyedSubscript:@"supports_wps"];

  v35 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFScanResult supportsiAPOverWiFi](self, "supportsiAPOverWiFi")}];
  [v3 setObject:v35 forKeyedSubscript:@"supports_iap_over_wifi"];

  v36 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFScanResult supports2GHzNetworks](self, "supports2GHzNetworks")}];
  [v3 setObject:v36 forKeyedSubscript:@"supports_2ghz_networks"];

  v37 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFScanResult supports5GHzNetworks](self, "supports5GHzNetworks")}];
  [v3 setObject:v37 forKeyedSubscript:@"supports_5ghz_networks"];

  v38 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFScanResult supportsCarPlay](self, "supportsCarPlay")}];
  [v3 setObject:v38 forKeyedSubscript:@"supports_carplay"];

  v39 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFScanResult supportsHomeKit](self, "supportsHomeKit")}];
  [v3 setObject:v39 forKeyedSubscript:@"supports_homekit"];

  v40 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFScanResult supportsHomeKit2](self, "supportsHomeKit2")}];
  [v3 setObject:v40 forKeyedSubscript:@"supports_homekit2"];

  v41 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFScanResult supportsAirPlay](self, "supportsAirPlay")}];
  [v3 setObject:v41 forKeyedSubscript:@"supports_airplay"];

  v42 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFScanResult supportsAirPlay2](self, "supportsAirPlay2")}];
  [v3 setObject:v42 forKeyedSubscript:@"supports_airplay2"];

  v43 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFScanResult supportsAirPrint](self, "supportsAirPrint")}];
  [v3 setObject:v43 forKeyedSubscript:@"supports_airprint"];

  v44 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFScanResult supportsMFi](self, "supportsMFi")}];
  [v3 setObject:v44 forKeyedSubscript:@"supports_mfi"];

  v45 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFScanResult supportsMFi](self, "supportsMFi")}];
  [v3 setObject:v45 forKeyedSubscript:@"supports_mfi"];

  v46 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFScanResult supportsMFiHardwareAuth](self, "supportsMFiHardwareAuth")}];
  [v3 setObject:v46 forKeyedSubscript:@"supports_mfi_hardware_auth"];

  v47 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFScanResult supportsMFiSoftwareTokenAuth](self, "supportsMFiSoftwareTokenAuth")}];
  [v3 setObject:v47 forKeyedSubscript:@"supports_mfi_software_token_auth"];

  v48 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFScanResult supportsMFiSoftwareCertAuth](self, "supportsMFiSoftwareCertAuth")}];
  [v3 setObject:v48 forKeyedSubscript:@"supports_mfi_software_cert_auth"];

  v49 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFScanResult supportsSecureWAC](self, "supportsSecureWAC")}];
  [v3 setObject:v49 forKeyedSubscript:@"supports_secure_wac"];

  v50 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFScanResult supportsWoW](self, "supportsWoW")}];
  [v3 setObject:v50 forKeyedSubscript:@"supports_wow"];

  countryCode = [(CWFScanResult *)self countryCode];
  [v3 setObject:countryCode forKeyedSubscript:@"country_code"];

  networkName = [(CWFScanResult *)self networkName];
  [v3 setObject:networkName forKeyedSubscript:@"networkName"];

  bSSID = [(CWFScanResult *)self BSSID];
  [v3 setObject:bSSID forKeyedSubscript:@"bssid"];

  hESSID = [(CWFScanResult *)self HESSID];
  [v3 setObject:hESSID forKeyedSubscript:@"hessid"];

  friendlyName = [(CWFScanResult *)self friendlyName];
  [v3 setObject:friendlyName forKeyedSubscript:@"friendly_name"];

  manufacturerName = [(CWFScanResult *)self manufacturerName];
  [v3 setObject:manufacturerName forKeyedSubscript:@"manufacturer_name"];

  modelName = [(CWFScanResult *)self modelName];
  [v3 setObject:modelName forKeyedSubscript:@"model_name"];

  displayName = [(CWFScanResult *)self displayName];
  [v3 setObject:displayName forKeyedSubscript:@"display_name"];

  primaryMAC = [(CWFScanResult *)self primaryMAC];
  [v3 setObject:primaryMAC forKeyedSubscript:@"primary_mac"];

  bluetoothMAC = [(CWFScanResult *)self bluetoothMAC];
  [v3 setObject:bluetoothMAC forKeyedSubscript:@"bluetooth_name"];

  deviceID = [(CWFScanResult *)self deviceID];
  [v3 setObject:deviceID forKeyedSubscript:@"device_id"];

  cellularNetworkInfo = [(CWFScanResult *)self cellularNetworkInfo];
  [v3 setObject:cellularNetworkInfo forKeyedSubscript:@"cellular_network_info"];

  nAIRealmNameList = [(CWFScanResult *)self NAIRealmNameList];
  [v3 setObject:nAIRealmNameList forKeyedSubscript:@"nai_realm_name_list"];

  roamingConsortiumList = [(CWFScanResult *)self roamingConsortiumList];
  [v3 setObject:roamingConsortiumList forKeyedSubscript:@"roaming_consortium_list"];

  operatorFriendlyNameList = [(CWFScanResult *)self operatorFriendlyNameList];
  [v3 setObject:operatorFriendlyNameList forKeyedSubscript:@"operator_friendly_name_list"];

  domainNameList = [(CWFScanResult *)self domainNameList];
  [v3 setObject:domainNameList forKeyedSubscript:@"domain_name_list"];

  v67 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFScanResult isWiFi6E](self, "isWiFi6E")}];
  [v3 setObject:v67 forKeyedSubscript:@"is_6e"];

  v68 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFScanResult isFILSDiscoveryFrame](self, "isFILSDiscoveryFrame")}];
  [v3 setObject:v68 forKeyedSubscript:@"is_filsd"];

  v69 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFScanResult shortSSID](self, "shortSSID")}];
  [v3 setObject:v69 forKeyedSubscript:@"short_ssid"];

  v70 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFScanResult isAssociationDisallowed](self, "isAssociationDisallowed")}];
  [v3 setObject:v70 forKeyedSubscript:@"is_assoc_disallowed"];

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  rNRBSSList = [(CWFScanResult *)self RNRBSSList];
  v72 = [rNRBSSList countByEnumeratingWithState:&v95 objects:v100 count:16];
  if (v72)
  {
    v73 = v72;
    array = 0;
    v75 = *v96;
    do
    {
      for (i = 0; i != v73; ++i)
      {
        if (*v96 != v75)
        {
          objc_enumerationMutation(rNRBSSList);
        }

        v77 = *(*(&v95 + 1) + 8 * i);
        if (!array)
        {
          array = [MEMORY[0x1E695DF70] array];
        }

        jSONCompatibleKeyValueMap2 = [v77 JSONCompatibleKeyValueMap];
        [array addObject:jSONCompatibleKeyValueMap2];
      }

      v73 = [rNRBSSList countByEnumeratingWithState:&v95 objects:v100 count:16];
    }

    while (v73);
  }

  else
  {
    array = 0;
  }

  [v3 setObject:array forKeyedSubscript:@"rnr_bss_list"];
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  rNRChannelList = [(CWFScanResult *)self RNRChannelList];
  v80 = [rNRChannelList countByEnumeratingWithState:&v91 objects:v99 count:16];
  if (v80)
  {
    v81 = v80;
    array2 = 0;
    v83 = *v92;
    do
    {
      for (j = 0; j != v81; ++j)
      {
        if (*v92 != v83)
        {
          objc_enumerationMutation(rNRChannelList);
        }

        v85 = *(*(&v91 + 1) + 8 * j);
        if (!array2)
        {
          array2 = [MEMORY[0x1E695DF70] array];
        }

        jSONCompatibleKeyValueMap3 = [v85 JSONCompatibleKeyValueMap];
        [array2 addObject:jSONCompatibleKeyValueMap3];
      }

      v81 = [rNRChannelList countByEnumeratingWithState:&v91 objects:v99 count:16];
    }

    while (v81);
  }

  else
  {
    array2 = 0;
  }

  [v3 setObject:array2 forKeyedSubscript:@"rnr_channel_list"];
  v87 = sub_1E0BCEC64(v3, 0, 1u);
  if (v87)
  {
    v88 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v87];
  }

  else
  {
    v88 = 0;
  }

  v89 = *MEMORY[0x1E69E9840];

  return v88;
}

- (unint64_t)CWFNetworkWarningFlagsFromScanResult
{
  isOWE = [(CWFScanResult *)self isOpen]|| [(CWFScanResult *)self isOWE];
  if ([(CWFScanResult *)self isWEP]|| [(CWFScanResult *)self hasWEP40Cipher]|| [(CWFScanResult *)self hasWEP104Cipher])
  {
    v4 = ![(CWFScanResult *)self isEAP];
  }

  else
  {
    v4 = 0;
  }

  supportedSecurityTypes = [(CWFScanResult *)self supportedSecurityTypes];
  v6 = ([(CWFScanResult *)self isWPA]|| [(CWFScanResult *)self isWPA2]) && [(CWFScanResult *)self hasTKIPCipher];
  matchingKnownNetworkProfile = [(CWFScanResult *)self matchingKnownNetworkProfile];

  if (matchingKnownNetworkProfile)
  {
    matchingKnownNetworkProfile2 = [(CWFScanResult *)self matchingKnownNetworkProfile];
    v9 = [matchingKnownNetworkProfile2 hiddenState] == 1;

    if (isOWE)
    {
LABEL_14:
      v10 = !v9;
      v11 = 8;
      v12 = 64;
      goto LABEL_20;
    }
  }

  else
  {
    v9 = 0;
    if (isOWE)
    {
      goto LABEL_14;
    }
  }

  if (v4)
  {
    v10 = !v9;
    v11 = 2;
    v12 = 256;
    goto LABEL_20;
  }

  if (v6)
  {
    v10 = !v9;
    v11 = 2048;
    v12 = 4096;
LABEL_20:
    if (v10)
    {
      v13 = v11;
    }

    else
    {
      v13 = v12;
    }

    goto LABEL_23;
  }

  v26 = 0x4000;
  if (supportedSecurityTypes == 4)
  {
    v26 = 128;
  }

  if (v9)
  {
    v13 = v26;
  }

  else
  {
    v13 = 0;
  }

LABEL_23:
  if (![(CWFScanResult *)self hasWEP40Cipher]&& ![(CWFScanResult *)self hasWEP104Cipher]&& supportedSecurityTypes == 4)
  {
    v13 |= 4uLL;
  }

  scanRecord = [(CWFScanResult *)self scanRecord];
  v15 = [scanRecord objectForKey:@"PHY_MODE"];
  integerValue = [v15 integerValue];

  if (integerValue == 4)
  {
    v13 |= 0x10uLL;
  }

  scanRecord2 = [(CWFScanResult *)self scanRecord];
  v18 = [scanRecord2 objectForKey:@"AmbiguousSSIDs"];
  bOOLValue = [v18 BOOLValue];

  if (bOOLValue)
  {
    v20 = v13 | 0x20;
  }

  else
  {
    v20 = v13;
  }

  oSSpecificAttributes = [(CWFScanResult *)self OSSpecificAttributes];
  v22 = [oSSpecificAttributes objectForKey:@"PrivateMacInfoDictionary"];

  if (v22)
  {
    v23 = [v22 objectForKey:@"PrivateMacDisableReason"];
    intValue = [v23 intValue];

    if (intValue)
    {
      v20 |= 0x2000uLL;
    }
  }

  return v20;
}

- (id)__internalDictionaryFromScanRecord:(id)record knownNetworkProfile:(id)profile includeProperties:(id)properties
{
  v56 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  profileCopy = profile;
  propertiesCopy = properties;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  __supportedProperties = [(CWFScanResult *)self __supportedProperties];
  v13 = [__supportedProperties mutableCopy];

  if (propertiesCopy)
  {
    [v13 intersectSet:propertiesCopy];
  }

  v50 = propertiesCopy;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v52;
    while (1)
    {
      v18 = 0;
      while (2)
      {
        if (*v52 != v17)
        {
          objc_enumerationMutation(v14);
        }

        switch([*(*(&v51 + 1) + 8 * v18) integerValue])
        {
          case 1:
            v19 = &unk_1F5BBCBB0;
            v20 = dictionary;
            v21 = recordCopy;
            goto LABEL_225;
          case 2:
            bSSID = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(recordCopy, "timestamp")}];
            v25 = &unk_1F5BBD258;
            goto LABEL_205;
          case 3:
            if ([recordCopy hasFILSDiscoveryInformation])
            {
              [recordCopy FILSSSID];
            }

            else
            {
              [recordCopy SSID];
            }
            bSSID = ;
            v25 = &unk_1F5BBCBC8;
            goto LABEL_205;
          case 4:
            bSSID = [recordCopy BSSID];
            v25 = &unk_1F5BBCBE0;
            goto LABEL_205;
          case 5:
            channelInfo = [recordCopy channelInfo];
            [dictionary setObject:channelInfo forKeyedSubscript:&unk_1F5BBCBF8];

            if (![recordCopy hasFILSDiscoveryInformation])
            {
              goto LABEL_226;
            }

            bSSID = [recordCopy FILSPrimaryChannelInfo];
            if (!bSSID)
            {
              goto LABEL_207;
            }

            v25 = &unk_1F5BBCBF8;
            goto LABEL_205;
          case 6:
            bSSID = [recordCopy countryCode];
            v25 = &unk_1F5BBCC10;
            goto LABEL_205;
          case 7:
            bSSID = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(recordCopy, "RSSI")}];
            v25 = &unk_1F5BBCC28;
            goto LABEL_205;
          case 8:
            bSSID = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(recordCopy, "wasConnectedDuringSleep")}];
            v25 = &unk_1F5BBCC40;
            goto LABEL_205;
          case 9:
            bSSID = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(recordCopy, "noise")}];
            v25 = &unk_1F5BBCC58;
            goto LABEL_205;
          case 10:
            hasFILSDiscoveryInformation = [recordCopy hasFILSDiscoveryInformation];
            v36 = MEMORY[0x1E696AD98];
            if (hasFILSDiscoveryInformation)
            {
              fILSBeaconInterval = [recordCopy FILSBeaconInterval];
            }

            else
            {
              fILSBeaconInterval = [recordCopy beaconInterval];
            }

            bSSID = [v36 numberWithInteger:fILSBeaconInterval];
            v25 = &unk_1F5BBCC70;
            goto LABEL_205;
          case 11:
            bSSID = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(recordCopy, "isPasspoint")}];
            v25 = &unk_1F5BBCCB8;
            goto LABEL_205;
          case 12:
            bSSID = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(recordCopy, "isPersonalHotspot")}];
            v25 = &unk_1F5BBCCD0;
            goto LABEL_205;
          case 13:
            bSSID = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(recordCopy, "isAppleSWAP")}];
            v25 = &unk_1F5BBCCE8;
            goto LABEL_205;
          case 14:
            if ([recordCopy hasFILSDiscoveryInformation])
            {
              if ([recordCopy hasFILSCaps])
              {
                if ([recordCopy FILSIsESS])
                {
                  v21 = &unk_1F5BBCD00;
                }

                else
                {
                  v21 = &unk_1F5BBCD18;
                }
              }

              else
              {
                v21 = 0;
              }

              v19 = &unk_1F5BBCD30;
LABEL_222:
              v20 = dictionary;
              goto LABEL_225;
            }

            aPMode = [recordCopy APMode];
            if (!aPMode)
            {
              goto LABEL_226;
            }

            bSSID = [MEMORY[0x1E696AD98] numberWithUnsignedInt:aPMode];
            v25 = &unk_1F5BBCD30;
            goto LABEL_205;
          case 15:
            bSSID = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(recordCopy, "isUnconfiguredAirPortBaseStation")}];
            v25 = &unk_1F5BBCD78;
            goto LABEL_205;
          case 16:
            bSSID = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(recordCopy, "airPortBaseStationModel")}];
            v25 = &unk_1F5BBCD90;
            goto LABEL_205;
          case 17:
            bSSID = [recordCopy informationElementData];
            v25 = &unk_1F5BBCD48;
            goto LABEL_205;
          case 18:
            if (![recordCopy hasFILSDiscoveryInformation])
            {
              v38 = MEMORY[0x1E696AD98];
              supportedPHYModes = [recordCopy supportedPHYModes];
              goto LABEL_191;
            }

            if ([recordCopy hasFILSCaps])
            {
              v38 = MEMORY[0x1E696AD98];
              supportedPHYModes = [recordCopy FILSSupportedPHYModes];
LABEL_191:
              bSSID = [v38 numberWithUnsignedInt:supportedPHYModes];
              v25 = &unk_1F5BBCCA0;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCCA0;
LABEL_224:
            v20 = dictionary;
            v21 = 0;
LABEL_225:
            [v20 setObject:v21 forKeyedSubscript:v19];
LABEL_226:
            if (v16 != ++v18)
            {
              continue;
            }

            v16 = [v14 countByEnumeratingWithState:&v51 objects:v55 count:16];
            if (!v16)
            {
              goto LABEL_228;
            }

            break;
          case 19:
            bSSID = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(recordCopy, "supportedSecurityTypes")}];
            v25 = &unk_1F5BBCC88;
            goto LABEL_205;
          case 20:
            bSSID = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(recordCopy, "WAPISubtype")}];
            v25 = &unk_1F5BBCD60;
            goto LABEL_205;
          case 21:
            bSSID = [recordCopy WPAUnicastCiphers];
            v25 = &unk_1F5BBD168;
            goto LABEL_205;
          case 22:
            if ([recordCopy hasWPAIE])
            {
              bSSID = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(recordCopy, "WPAMulticastCipher")}];
              v25 = &unk_1F5BBD180;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBD180;
            goto LABEL_224;
          case 23:
            bSSID = [recordCopy WPAAuthSelectors];
            v25 = &unk_1F5BBD198;
            goto LABEL_205;
          case 24:
            bSSID = [recordCopy RSNUnicastCiphers];
            v25 = &unk_1F5BBD1B0;
            goto LABEL_205;
          case 25:
            if ([recordCopy hasRSNIE])
            {
              bSSID = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(recordCopy, "RSNMulticastCipher")}];
              v25 = &unk_1F5BBD1C8;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBD1C8;
            goto LABEL_224;
          case 26:
            if ([recordCopy hasRSNIE])
            {
              bSSID = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(recordCopy, "RSNBroadcastCipher")}];
              v25 = &unk_1F5BBD1E0;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBD1E0;
            goto LABEL_224;
          case 27:
            bSSID = [recordCopy RSNAuthSelectors];
            v25 = &unk_1F5BBD1F8;
            goto LABEL_205;
          case 28:
            if ([recordCopy hasRSNIE])
            {
              bSSID = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(recordCopy, "RSNCapabilities")}];
              v25 = &unk_1F5BBD210;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBD210;
            goto LABEL_224;
          case 31:
            if ([recordCopy hasFILSDiscoveryInformation])
            {
              if ([recordCopy hasFILSAccessNetworkOptions])
              {
                v26 = MEMORY[0x1E696AD98];
                fILSAccessNetworkType = [recordCopy FILSAccessNetworkType];
LABEL_164:
                bSSID = [v26 numberWithUnsignedInt:fILSAccessNetworkType];
                v25 = &unk_1F5BBCDA8;
                goto LABEL_205;
              }
            }

            else if ([recordCopy hasInterworkingIE])
            {
              v26 = MEMORY[0x1E696AD98];
              fILSAccessNetworkType = [recordCopy accessNetworkType];
              goto LABEL_164;
            }

            v19 = &unk_1F5BBCDA8;
            goto LABEL_224;
          case 32:
            if ([recordCopy hasFILSDiscoveryInformation])
            {
              if ([recordCopy hasFILSAccessNetworkOptions])
              {
                v28 = MEMORY[0x1E696AD98];
                fILSIsInternetAccessible = [recordCopy FILSIsInternetAccessible];
LABEL_171:
                bSSID = [v28 numberWithBool:fILSIsInternetAccessible];
                v25 = &unk_1F5BBCDC0;
                goto LABEL_205;
              }
            }

            else if ([recordCopy hasInterworkingIE])
            {
              v28 = MEMORY[0x1E696AD98];
              fILSIsInternetAccessible = [recordCopy isInternetAccessible];
              goto LABEL_171;
            }

            v19 = &unk_1F5BBCDC0;
            goto LABEL_224;
          case 33:
            if ([recordCopy hasFILSDiscoveryInformation])
            {
              if ([recordCopy hasFILSAccessNetworkOptions])
              {
                v32 = MEMORY[0x1E696AD98];
                fILSIsAdditionalStepRequiredForAccess = [recordCopy FILSIsAdditionalStepRequiredForAccess];
LABEL_183:
                bSSID = [v32 numberWithBool:fILSIsAdditionalStepRequiredForAccess];
                v25 = &unk_1F5BBCDD8;
                goto LABEL_205;
              }
            }

            else if ([recordCopy hasInterworkingIE])
            {
              v32 = MEMORY[0x1E696AD98];
              fILSIsAdditionalStepRequiredForAccess = [recordCopy isAdditionalStepRequiredForAccess];
              goto LABEL_183;
            }

            v19 = &unk_1F5BBCDD8;
            goto LABEL_224;
          case 34:
            if ([recordCopy hasFILSDiscoveryInformation])
            {
              if ([recordCopy hasFILSAccessNetworkOptions])
              {
                v30 = MEMORY[0x1E696AD98];
                fILSIsEmergencyServicesReachable = [recordCopy FILSIsEmergencyServicesReachable];
LABEL_175:
                bSSID = [v30 numberWithBool:fILSIsEmergencyServicesReachable];
                v25 = &unk_1F5BBCDF0;
                goto LABEL_205;
              }
            }

            else if ([recordCopy hasInterworkingIE])
            {
              v30 = MEMORY[0x1E696AD98];
              fILSIsEmergencyServicesReachable = [recordCopy isEmergencyServicesReachable];
              goto LABEL_175;
            }

            v19 = &unk_1F5BBCDF0;
            goto LABEL_224;
          case 35:
            if ([recordCopy hasFILSDiscoveryInformation])
            {
              if ([recordCopy hasFILSAccessNetworkOptions])
              {
                v43 = MEMORY[0x1E696AD98];
                fILSIsUnauthenticatedEmergencyServiceAccessible = [recordCopy FILSIsUnauthenticatedEmergencyServiceAccessible];
LABEL_204:
                bSSID = [v43 numberWithBool:fILSIsUnauthenticatedEmergencyServiceAccessible];
                v25 = &unk_1F5BBCE08;
                goto LABEL_205;
              }
            }

            else if ([recordCopy hasInterworkingIE])
            {
              v43 = MEMORY[0x1E696AD98];
              fILSIsUnauthenticatedEmergencyServiceAccessible = [recordCopy isUnauthenticatedEmergencyServiceAccessible];
              goto LABEL_204;
            }

            v19 = &unk_1F5BBCE08;
            goto LABEL_224;
          case 36:
            if ([recordCopy hasInterworkingIE])
            {
              bSSID = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(recordCopy, "venueGroup")}];
              v25 = &unk_1F5BBCE20;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCE20;
            goto LABEL_224;
          case 37:
            if ([recordCopy hasInterworkingIE])
            {
              bSSID = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(recordCopy, "venueType")}];
              v25 = &unk_1F5BBCE38;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCE38;
            goto LABEL_224;
          case 38:
            if ([recordCopy hasInterworkingIE])
            {
              bSSID = [recordCopy HESSID];
              v25 = &unk_1F5BBCE50;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCE50;
            goto LABEL_224;
          case 39:
            if ([recordCopy hasAppleIE])
            {
              bSSID = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(recordCopy, "isUnconfiguredDevice")}];
              v25 = &unk_1F5BBCE68;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCE68;
            goto LABEL_224;
          case 40:
            if ([recordCopy hasAppleIE])
            {
              bSSID = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(recordCopy, "providesInternetAccess")}];
              v25 = &unk_1F5BBCE80;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCE80;
            goto LABEL_224;
          case 41:
            if ([recordCopy hasAppleIE])
            {
              bSSID = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(recordCopy, "supportsWPS")}];
              v25 = &unk_1F5BBCE98;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCE98;
            goto LABEL_224;
          case 42:
            if ([recordCopy hasAppleIE])
            {
              bSSID = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(recordCopy, "supportsiAPOverWiFi")}];
              v25 = &unk_1F5BBCEB0;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCEB0;
            goto LABEL_224;
          case 43:
            if ([recordCopy hasAppleIE])
            {
              bSSID = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(recordCopy, "supports2GHzNetworks")}];
              v25 = &unk_1F5BBCEC8;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCEC8;
            goto LABEL_224;
          case 44:
            if ([recordCopy hasAppleIE])
            {
              bSSID = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(recordCopy, "supports5GHzNetworks")}];
              v25 = &unk_1F5BBCEE0;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCEE0;
            goto LABEL_224;
          case 45:
            if ([recordCopy hasAppleIE])
            {
              bSSID = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(recordCopy, "supportsCarPlay")}];
              v25 = &unk_1F5BBCEF8;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCEF8;
            goto LABEL_224;
          case 46:
            if ([recordCopy hasAppleIE])
            {
              bSSID = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(recordCopy, "supportsHomeKit")}];
              v25 = &unk_1F5BBCF10;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCF10;
            goto LABEL_224;
          case 47:
            if ([recordCopy hasAppleIE])
            {
              bSSID = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(recordCopy, "supportsHomeKit2")}];
              v25 = &unk_1F5BBCF28;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCF28;
            goto LABEL_224;
          case 48:
            if ([recordCopy hasAppleIE])
            {
              bSSID = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(recordCopy, "supportsAirPlay")}];
              v25 = &unk_1F5BBCF40;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCF40;
            goto LABEL_224;
          case 49:
            if ([recordCopy hasAppleIE])
            {
              bSSID = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(recordCopy, "supportsAirPlay2")}];
              v25 = &unk_1F5BBCF58;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCF58;
            goto LABEL_224;
          case 50:
            if ([recordCopy hasAppleIE])
            {
              bSSID = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(recordCopy, "supportsAirPrint")}];
              v25 = &unk_1F5BBCF70;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCF70;
            goto LABEL_224;
          case 51:
            if ([recordCopy hasAppleIE])
            {
              bSSID = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(recordCopy, "supportsMFi")}];
              v25 = &unk_1F5BBCF88;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCF88;
            goto LABEL_224;
          case 52:
            if ([recordCopy hasAppleIE])
            {
              bSSID = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(recordCopy, "supportsMFiHardwareAuth")}];
              v25 = &unk_1F5BBCFA0;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCFA0;
            goto LABEL_224;
          case 53:
            if ([recordCopy hasAppleIE])
            {
              bSSID = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(recordCopy, "supportsSoftwareTokenAuth")}];
              v25 = &unk_1F5BBCFB8;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCFB8;
            goto LABEL_224;
          case 54:
            if ([recordCopy hasAppleIE])
            {
              bSSID = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(recordCopy, "supportsSoftwareCertAuth")}];
              v25 = &unk_1F5BBCFD0;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCFD0;
            goto LABEL_224;
          case 55:
            if ([recordCopy hasAppleIE])
            {
              bSSID = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(recordCopy, "supportsSecureWAC")}];
              v25 = &unk_1F5BBCFE8;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCFE8;
            goto LABEL_224;
          case 56:
            if ([recordCopy hasAppleIE])
            {
              bSSID = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(recordCopy, "supportsWoW")}];
              v25 = &unk_1F5BBD000;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBD000;
            goto LABEL_224;
          case 57:
            if ([recordCopy hasAppleIE])
            {
              bSSID = [recordCopy friendlyName];
              v25 = &unk_1F5BBD018;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBD018;
            goto LABEL_224;
          case 58:
            if ([recordCopy hasAppleIE])
            {
              bSSID = [recordCopy manufacturerName];
              v25 = &unk_1F5BBD030;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBD030;
            goto LABEL_224;
          case 59:
            if ([recordCopy hasAppleIE])
            {
              bSSID = [recordCopy modelName];
              v25 = &unk_1F5BBD048;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBD048;
            goto LABEL_224;
          case 60:
            if ([recordCopy hasAppleIE])
            {
              bSSID = [recordCopy displayName];
              v25 = &unk_1F5BBD060;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBD060;
            goto LABEL_224;
          case 61:
            if ([recordCopy hasAppleIE])
            {
              bSSID = [recordCopy primaryMAC];
              v25 = &unk_1F5BBD078;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBD078;
            goto LABEL_224;
          case 62:
            if ([recordCopy hasAppleIE])
            {
              bSSID = [recordCopy bluetoothMAC];
              v25 = &unk_1F5BBD090;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBD090;
            goto LABEL_224;
          case 63:
            if (([recordCopy hasAppleIE] & 1) == 0)
            {
              v19 = &unk_1F5BBD0A8;
              goto LABEL_224;
            }

            bSSID = [recordCopy deviceID];
            v25 = &unk_1F5BBD0A8;
LABEL_205:
            v46 = dictionary;
            v47 = bSSID;
            goto LABEL_206;
          case 64:
            bSSID = [recordCopy ANQPResponse];
            v25 = &unk_1F5BBD0C0;
            goto LABEL_205;
          case 65:
            bSSID = [recordCopy ANQPResponse];
            if (bSSID)
            {
              cellularNetworkInfo = [recordCopy cellularNetworkInfo];
              v24 = &unk_1F5BBD0D8;
              goto LABEL_138;
            }

            v25 = &unk_1F5BBD0D8;
            goto LABEL_219;
          case 66:
            bSSID = [recordCopy ANQPResponse];
            if (bSSID)
            {
              cellularNetworkInfo = [recordCopy NAIRealmNameList];
              v24 = &unk_1F5BBD0F0;
              goto LABEL_138;
            }

            v25 = &unk_1F5BBD0F0;
            goto LABEL_219;
          case 67:
            bSSID = [recordCopy ANQPResponse];
            if (bSSID)
            {
              cellularNetworkInfo = [recordCopy roamingConsortiumList];
              v24 = &unk_1F5BBD108;
              goto LABEL_138;
            }

            v25 = &unk_1F5BBD108;
            goto LABEL_219;
          case 68:
            bSSID = [recordCopy ANQPResponse];
            if (bSSID)
            {
              cellularNetworkInfo = [recordCopy operatorFriendlyNameList];
              v24 = &unk_1F5BBD120;
              goto LABEL_138;
            }

            v25 = &unk_1F5BBD120;
            goto LABEL_219;
          case 69:
            bSSID = [recordCopy ANQPResponse];
            if (bSSID)
            {
              cellularNetworkInfo = [recordCopy domainNameList];
              v24 = &unk_1F5BBD138;
              goto LABEL_138;
            }

            v25 = &unk_1F5BBD138;
            goto LABEL_219;
          case 70:
            bSSID = [recordCopy ANQPResponse];
            if (bSSID)
            {
              cellularNetworkInfo = [recordCopy venueURLList];
              v24 = &unk_1F5BBD150;
LABEL_138:
              [dictionary setObject:cellularNetworkInfo forKeyedSubscript:v24];
            }

            else
            {
              v25 = &unk_1F5BBD150;
LABEL_219:
              v46 = dictionary;
              v47 = 0;
LABEL_206:
              [v46 setObject:v47 forKeyedSubscript:v25];
            }

LABEL_207:

            goto LABEL_226;
          case 71:
            bSSID = [recordCopy objectForKeyedSubscript:@"__OSSpecific__"];
            v25 = &unk_1F5BBD228;
            goto LABEL_205;
          case 72:
            v19 = &unk_1F5BBD240;
            v20 = dictionary;
            v21 = profileCopy;
            goto LABEL_225;
          case 73:
            bSSID = [recordCopy networkFlags];
            v25 = &unk_1F5BBD270;
            goto LABEL_205;
          case 74:
            hasFILSDiscoveryInformation2 = [recordCopy hasFILSDiscoveryInformation];
            v41 = MEMORY[0x1E696AD98];
            if (hasFILSDiscoveryInformation2)
            {
              fILSShortSSID = [recordCopy FILSShortSSID];
            }

            else
            {
              fILSShortSSID = [recordCopy shortSSID];
            }

            bSSID = [v41 numberWithUnsignedInteger:fILSShortSSID];
            v25 = &unk_1F5BBD288;
            goto LABEL_205;
          case 75:
            bSSID = [recordCopy RNRBSSList];
            v25 = &unk_1F5BBD2A0;
            goto LABEL_205;
          case 76:
            if ([recordCopy associationDisallowedReason])
            {
              v21 = MEMORY[0x1E695E118];
            }

            else
            {
              v21 = MEMORY[0x1E695E110];
            }

            v19 = &unk_1F5BBD2B8;
            goto LABEL_222;
          case 77:
            bSSID = [recordCopy RNRChannelList];
            v25 = &unk_1F5BBD2D0;
            goto LABEL_205;
          case 78:
            bSSID = [recordCopy privateMACAddress];
            v25 = &unk_1F5BBD2E8;
            goto LABEL_205;
          default:
            goto LABEL_226;
        }

        break;
      }
    }
  }

LABEL_228:

  v48 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (CWFScanResult)initWithScanRecord:(id)record knownNetworkProfile:(id)profile includeProperties:(id)properties
{
  recordCopy = record;
  profileCopy = profile;
  propertiesCopy = properties;
  v16.receiver = self;
  v16.super_class = CWFScanResult;
  v11 = [(CWFScanResult *)&v16 init];
  v12 = v11;
  if (!recordCopy || !v11 || ([(CWFScanResult *)v11 __internalDictionaryFromScanRecord:recordCopy knownNetworkProfile:profileCopy includeProperties:propertiesCopy], v13 = objc_claimAutoreleasedReturnValue(), internal = v12->_internal, v12->_internal = v13, internal, !v12->_internal))
  {

    v12 = 0;
  }

  return v12;
}

- (CWFScanResult)scanResultWithMatchingKnownNetworkProfile:(id)profile
{
  profileCopy = profile;
  v5 = objc_alloc_init(CWFScanResult);
  v6 = [(NSMutableDictionary *)self->_internal mutableCopy];
  [v6 setObject:profileCopy forKeyedSubscript:&unk_1F5BBD240];

  [(CWFScanResult *)v5 setInternal:v6];

  return v5;
}

- (id)filteredScanResultWithProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = objc_alloc_init(CWFScanResult);
  v6 = [(NSMutableDictionary *)self->_internal mutableCopy];
  if (propertiesCopy)
  {
    properties = [(CWFScanResult *)self properties];
    v8 = [properties mutableCopy];

    [v8 minusSet:propertiesCopy];
    allObjects = [v8 allObjects];
    [v6 removeObjectsForKeys:allObjects];
  }

  [(CWFScanResult *)v5 setInternal:v6];

  return v5;
}

- (int64_t)compareSupportedSecurityTypes:(id)types
{
  typesCopy = types;
  weakestSupportedSecurityType = [(CWFScanResult *)self weakestSupportedSecurityType];
  weakestSupportedSecurityType2 = [typesCopy weakestSupportedSecurityType];
  strongestSupportedSecurityType = [(CWFScanResult *)self strongestSupportedSecurityType];
  strongestSupportedSecurityType2 = [typesCopy strongestSupportedSecurityType];
  wAPISubtype = [(CWFScanResult *)self WAPISubtype];
  wAPISubtype2 = [typesCopy WAPISubtype];

  if (weakestSupportedSecurityType == weakestSupportedSecurityType2)
  {
    if (strongestSupportedSecurityType == strongestSupportedSecurityType2)
    {
      return 0;
    }

    v12 = strongestSupportedSecurityType;
    v13 = wAPISubtype;
    v14 = strongestSupportedSecurityType2;
  }

  else
  {
    v12 = weakestSupportedSecurityType;
    v13 = wAPISubtype;
    v14 = weakestSupportedSecurityType2;
  }

  return CWFCompareSecurityType(v12, 0, v13, v14, 0, wAPISubtype2);
}

- (int64_t)compareSupportedPHYModes:(id)modes
{
  modesCopy = modes;
  fastestSupportedPHYMode = [(CWFScanResult *)self fastestSupportedPHYMode];
  slowestSupportedPHYMode = [(CWFScanResult *)self slowestSupportedPHYMode];
  fastestSupportedPHYMode2 = [modesCopy fastestSupportedPHYMode];
  slowestSupportedPHYMode2 = [modesCopy slowestSupportedPHYMode];

  if (fastestSupportedPHYMode == fastestSupportedPHYMode2)
  {
    if (slowestSupportedPHYMode == slowestSupportedPHYMode2)
    {
      return 0;
    }

    v10 = slowestSupportedPHYMode;
    v11 = slowestSupportedPHYMode2;
  }

  else
  {
    v10 = fastestSupportedPHYMode;
    v11 = fastestSupportedPHYMode2;
  }

  return CWFComparePHYMode(v10, v11);
}

- (int64_t)compareLowDataModes:(id)modes
{
  modesCopy = modes;
  matchingKnownNetworkProfile = [(CWFScanResult *)self matchingKnownNetworkProfile];
  lowDataMode = [matchingKnownNetworkProfile lowDataMode];

  matchingKnownNetworkProfile2 = [modesCopy matchingKnownNetworkProfile];

  lowDataMode2 = [matchingKnownNetworkProfile2 lowDataMode];
  v9 = lowDataMode2 == 1;
  if (lowDataMode == 1)
  {
    v9 = -1;
  }

  if (lowDataMode == lowDataMode2)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

- (unint64_t)strongestSupportedSecurityType
{
  supportedSecurityTypes = [(CWFScanResult *)self supportedSecurityTypes];
  wAPISubtype = [(CWFScanResult *)self WAPISubtype];

  return CWFStrongestSecurityType(supportedSecurityTypes, wAPISubtype, 0);
}

- (unint64_t)weakestSupportedSecurityType
{
  supportedSecurityTypes = [(CWFScanResult *)self supportedSecurityTypes];
  wAPISubtype = [(CWFScanResult *)self WAPISubtype];

  return CWFWeakestSecurityType(supportedSecurityTypes, wAPISubtype, 0);
}

- (int64_t)WAPISubtype
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCD60];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (int)fastestSupportedPHYMode
{
  supportedPHYModes = [(CWFScanResult *)self supportedPHYModes];

  return CWFFastestPHYMode(supportedPHYModes);
}

- (int)slowestSupportedPHYMode
{
  supportedPHYModes = [(CWFScanResult *)self supportedPHYModes];

  return CWFSlowestPHYMode(supportedPHYModes);
}

- (unint64_t)shortSSID
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBD288];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (NSString)networkName
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCBC8];
  v3 = CWFHumanReadableStringFromData(v2);

  return v3;
}

- (BOOL)isAmbiguousNetworkName
{
  networkName = [(CWFScanResult *)self networkName];
  v3 = sub_1E0BEE360(networkName);

  return v3;
}

- (int64_t)noise
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCC58];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (BOOL)isHotspot
{
  matchingKnownNetworkProfile = [(CWFScanResult *)self matchingKnownNetworkProfile];
  if (([matchingKnownNetworkProfile isHotspot] & 1) != 0 || -[CWFScanResult isPasspoint](self, "isPasspoint") || -[CWFScanResult accessNetworkType](self, "accessNetworkType") == 2)
  {

    return 1;
  }

  accessNetworkType = [(CWFScanResult *)self accessNetworkType];

  return accessNetworkType == 3;
}

- (BOOL)isUnconfiguredAirPortBaseStation
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCD78];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setOSSpecificAttributes:(id)attributes
{
  v34 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  if (attributesCopy)
  {
    selfCopy = self;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    allKeys = [attributesCopy allKeys];
    v7 = [allKeys countByEnumeratingWithState:&v21 objects:v33 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(allKeys);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          v12 = [CWFScanResult supportedOSSpecificKeys:v18];
          v13 = [v12 containsObject:v11];

          if (v13)
          {
            v14 = [attributesCopy objectForKeyedSubscript:v11];
            [dictionary setObject:v14 forKeyedSubscript:v11];
          }

          else
          {
            v15 = CWFGetOSLog();
            if (v15)
            {
              v14 = CWFGetOSLog();
            }

            else
            {
              v14 = MEMORY[0x1E69E9C10];
              v16 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
            {
              v25 = 136446978;
              v26 = "[CWFScanResult setOSSpecificAttributes:]";
              v27 = 2082;
              v28 = "CWFScanResult.m";
              v29 = 1024;
              v30 = 1052;
              v31 = 2112;
              v32 = v11;
              LODWORD(v19) = 38;
              v18 = &v25;
              _os_log_send_and_compose_impl();
            }
          }
        }

        v8 = [allKeys countByEnumeratingWithState:&v21 objects:v33 count:16];
      }

      while (v8);
    }

    self = selfCopy;
  }

  else
  {
    dictionary = 0;
  }

  [(NSMutableDictionary *)self->_internal setObject:dictionary forKeyedSubscript:&unk_1F5BBD228, v18, v19];

  v17 = *MEMORY[0x1E69E9840];
}

- (NSDictionary)OSSpecificAttributes
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBD228];
  v3 = [v2 copy];

  return v3;
}

- (void)setOSSpecificValue:(id)value forKey:(id)key
{
  v16 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  keyCopy = key;
  if (keyCopy && (+[CWFScanResult supportedOSSpecificKeys](CWFScanResult, "supportedOSSpecificKeys"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 containsObject:keyCopy], v8, v9))
  {
    v10 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBD228];

    if (valueCopy && !v10)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [(NSMutableDictionary *)self->_internal setObject:dictionary forKeyedSubscript:&unk_1F5BBD228];
    }

    v12 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBD228];
    [v12 setObject:valueCopy forKeyedSubscript:keyCopy];
  }

  else
  {
    v13 = CWFGetOSLog();
    if (v13)
    {
      v12 = CWFGetOSLog();
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      _os_log_send_and_compose_impl();
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)OSSpecificValueForKey:(id)key
{
  if (key)
  {
    internal = self->_internal;
    keyCopy = key;
    v5 = [(NSMutableDictionary *)internal objectForKeyedSubscript:&unk_1F5BBD228];
    v6 = [v5 objectForKeyedSubscript:keyCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setMatchingKnownNetworkProfile:(id)profile
{
  v4 = [profile copy];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBD240];
}

- (BOOL)isMetered
{
  if ([(CWFScanResult *)self isPasspoint])
  {
    v3 = [(CWFScanResult *)self accessNetworkType]== 2;
  }

  else
  {
    matchingKnownNetworkProfile = [(CWFScanResult *)self matchingKnownNetworkProfile];
    if ([matchingKnownNetworkProfile isCaptive])
    {
      v3 = [(CWFScanResult *)self accessNetworkType]== 2;
    }

    else
    {
      v3 = 0;
    }
  }

  if ([(CWFScanResult *)self isPersonalHotspot]|| v3 || (v5 = [(CWFScanResult *)self supportsCarPlay]))
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)WPAMulticastCipher
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBD180];
  unsignedLongLongValue = [v2 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (unint64_t)RSNMulticastCipher
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBD1C8];
  unsignedLongLongValue = [v2 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (unint64_t)RSNBroadcastCipher
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBD1E0];
  unsignedLongLongValue = [v2 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (int)RSNCapabilities
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBD210];
  unsignedIntValue = [v2 unsignedIntValue];

  return unsignedIntValue;
}

- (BOOL)hasWEP40Cipher
{
  v24 = *MEMORY[0x1E69E9840];
  if ([(CWFScanResult *)self WPAMulticastCipher]!= 1 && [(CWFScanResult *)self RSNMulticastCipher]!= 1)
  {
    [(CWFScanResult *)self WPAUnicastCiphers];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = v21 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
LABEL_6:
      v8 = 0;
      while (1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v18 + 1) + 8 * v8) intValue] == 1)
        {
          break;
        }

        if (v6 == ++v8)
        {
          v6 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
          if (v6)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:

      rSNUnicastCiphers = [(CWFScanResult *)self RSNUnicastCiphers];

      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v4 = rSNUnicastCiphers;
      v3 = [v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
      if (!v3)
      {
LABEL_22:

        goto LABEL_23;
      }

      v10 = *v15;
LABEL_14:
      v11 = 0;
      while (1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v14 + 1) + 8 * v11) intValue] == 1)
        {
          break;
        }

        if (v3 == ++v11)
        {
          v3 = [v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
          if (v3)
          {
            goto LABEL_14;
          }

          goto LABEL_22;
        }
      }
    }

    LOBYTE(v3) = 1;
    goto LABEL_22;
  }

  LOBYTE(v3) = 1;
LABEL_23:
  v12 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)hasWEP104Cipher
{
  v24 = *MEMORY[0x1E69E9840];
  if ([(CWFScanResult *)self WPAMulticastCipher]!= 5 && [(CWFScanResult *)self RSNMulticastCipher]!= 5)
  {
    [(CWFScanResult *)self WPAUnicastCiphers];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = v21 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
LABEL_6:
      v8 = 0;
      while (1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v18 + 1) + 8 * v8) intValue] == 5)
        {
          break;
        }

        if (v6 == ++v8)
        {
          v6 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
          if (v6)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:

      rSNUnicastCiphers = [(CWFScanResult *)self RSNUnicastCiphers];

      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v4 = rSNUnicastCiphers;
      v3 = [v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
      if (!v3)
      {
LABEL_22:

        goto LABEL_23;
      }

      v10 = *v15;
LABEL_14:
      v11 = 0;
      while (1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v14 + 1) + 8 * v11) intValue] == 5)
        {
          break;
        }

        if (v3 == ++v11)
        {
          v3 = [v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
          if (v3)
          {
            goto LABEL_14;
          }

          goto LABEL_22;
        }
      }
    }

    LOBYTE(v3) = 1;
    goto LABEL_22;
  }

  LOBYTE(v3) = 1;
LABEL_23:
  v12 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)hasTKIPCipher
{
  v24 = *MEMORY[0x1E69E9840];
  if ([(CWFScanResult *)self WPAMulticastCipher]!= 2 && [(CWFScanResult *)self RSNMulticastCipher]!= 2)
  {
    [(CWFScanResult *)self WPAUnicastCiphers];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = v21 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
LABEL_6:
      v8 = 0;
      while (1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v18 + 1) + 8 * v8) intValue] == 2)
        {
          break;
        }

        if (v6 == ++v8)
        {
          v6 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
          if (v6)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:

      rSNUnicastCiphers = [(CWFScanResult *)self RSNUnicastCiphers];

      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v4 = rSNUnicastCiphers;
      v3 = [v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
      if (!v3)
      {
LABEL_22:

        goto LABEL_23;
      }

      v10 = *v15;
LABEL_14:
      v11 = 0;
      while (1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v14 + 1) + 8 * v11) intValue] == 2)
        {
          break;
        }

        if (v3 == ++v11)
        {
          v3 = [v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
          if (v3)
          {
            goto LABEL_14;
          }

          goto LABEL_22;
        }
      }
    }

    LOBYTE(v3) = 1;
    goto LABEL_22;
  }

  LOBYTE(v3) = 1;
LABEL_23:
  v12 = *MEMORY[0x1E69E9840];
  return v3;
}

- (int)accessNetworkType
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCDA8];
  unsignedIntValue = [v2 unsignedIntValue];

  return unsignedIntValue;
}

- (BOOL)isInternetAccessible
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCDC0];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isAdditionalStepRequiredForAccess
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCDD8];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isEmergencyServicesReachable
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCDF0];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isUnauthenticatedEmergencyServiceAccessible
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCE08];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (int64_t)venueGroup
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCE20];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (int64_t)venueType
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCE38];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (BOOL)isUnconfiguredDevice
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCE68];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)providesInternetAccess
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCE80];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsWPS
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCE98];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsiAPOverWiFi
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCEB0];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)supports2GHzNetworks
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCEC8];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)supports5GHzNetworks
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCEE0];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsMFi
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCF88];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsMFiHardwareAuth
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCFA0];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsMFiSoftwareTokenAuth
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCFB8];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsMFiSoftwareCertAuth
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCFD0];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsHomeKit
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCF10];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsHomeKit2
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCF28];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsAirPrint
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCF70];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsWoW
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBD000];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsSecureWAC
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCFE8];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsAirPlay
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCF40];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsAirPlay2
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCF58];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)hasNon6GHzRNRChannel
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  rNRChannelList = [(CWFScanResult *)self RNRChannelList];
  v3 = [rNRChannelList countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(rNRChannelList);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([v7 is2GHz] & 1) != 0 || (objc_msgSend(v7, "is5GHz"))
        {
          v8 = 1;
          goto LABEL_13;
        }
      }

      v4 = [rNRChannelList countByEnumeratingWithState:&v11 objects:v15 count:16];
      v8 = 0;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_13:

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)isAssociationDisallowed
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBD2B8];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (id)__descriptionForAirPortBaseStationModel:(int64_t)model
{
  switch(model)
  {
    case 'f':
      model = @"AirPort Express (802.11 b/g)";

      break;
    case 'g':
    case 'n':
    case 'o':
    case 'p':
    case 'v':
      goto LABEL_10;
    case 'h':
      model = @"AirPort Extreme 802.11n (1st Generation)";

      break;
    case 'i':
      model = @"AirPort Extreme 802.11n w/ Gigabit Ethernet (2nd Generation)";

      break;
    case 'j':
      model = @"Time Capsule (1st Generation)";

      break;
    case 'k':
      model = @"AirPort Express 802.11n (1st Generation)";

      break;
    case 'l':
      model = @"AirPort Extreme 802.11n w/ Simultaneous Dual-Band (3rd Generation)";

      break;
    case 'm':
      model = @"Time Capsule w/ Simultaneous Dual-Band (2nd Generation)";

      break;
    case 'q':
      model = @"Time Capsule w/ Simultaneous Dual-Band (3rd Generation)";

      break;
    case 'r':
      model = @"AirPort Extreme 802.11n w/ Simultaneous Dual-Band (4th Generation)";

      break;
    case 's':
      model = @"AirPort Express 802.11n w/ Simultaneous Dual-Band (2nd Generation)";

      break;
    case 't':
      model = @"Time Capsule w/ Simultaneous Dual-Band (4th Generation)";

      break;
    case 'u':
      model = @"AirPort Extreme 802.11n w/ Simultaneous Dual-Band (5th Generation)";

      break;
    case 'w':
      model = @"Time Capsule 802.11ac (5th Generation)";

      break;
    case 'x':
      model = @"AirPort Extreme 802.11ac (6th Generation)";

      break;
    default:
      if (model)
      {
        if (model == 3)
        {
          model = @"AirPort Extreme (802.11 b/g)";
        }

        else
        {
LABEL_10:
          model = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (%ld)", model];
        }
      }

      else
      {
        model = 0;
      }

      break;
  }

  return model;
}

- (BOOL)isEqualToScanResult:(id)result
{
  resultCopy = result;
  sSID = [(CWFScanResult *)self SSID];
  if (sSID)
  {
    sSID2 = [resultCopy SSID];
    if (sSID2)
    {
      sSID3 = [(CWFScanResult *)self SSID];
      sSID4 = [resultCopy SSID];
      if ([sSID3 isEqual:sSID4])
      {
        bSSID = [(CWFScanResult *)self BSSID];
        if (bSSID)
        {
          bSSID2 = [resultCopy BSSID];
          if (bSSID2)
          {
            bSSID3 = [(CWFScanResult *)self BSSID];
            bSSID4 = [resultCopy BSSID];
            if ([bSSID3 isEqual:bSSID4] && (v16 = -[CWFScanResult isFILSDiscoveryFrame](self, "isFILSDiscoveryFrame"), v16 == objc_msgSend(resultCopy, "isFILSDiscoveryFrame")))
            {
              supportedSecurityTypes = [(CWFScanResult *)self supportedSecurityTypes];
              v13 = supportedSecurityTypes == [resultCopy supportedSecurityTypes];
            }

            else
            {
              v13 = 0;
            }
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFScanResult *)self isEqualToScanResult:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  sSID = [(CWFScanResult *)self SSID];
  v4 = [sSID hash];
  bSSID = [(CWFScanResult *)self BSSID];
  v6 = [bSSID hash] ^ v4;
  v7 = v6 ^ [(CWFScanResult *)self isFILSDiscoveryFrame];
  supportedSecurityTypes = [(CWFScanResult *)self supportedSecurityTypes];

  return v7 ^ supportedSecurityTypes;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CWFScanResult allocWithZone:?]];
  v5 = v4;
  if (self->_internal)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:self->_internal copyItems:1];
    [(CWFScanResult *)v5 setInternal:v6];
  }

  else
  {
    [(CWFScanResult *)v4 setInternal:0];
  }

  return v5;
}

- (CWFScanResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = CWFScanResult;
  v5 = [(CWFScanResult *)&v20 init];
  if (v5)
  {
    v19 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v19 setWithObjects:{v6, v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"_internal"];
    v16 = [v15 mutableCopy];
    internal = v5->_internal;
    v5->_internal = v16;
  }

  return v5;
}

@end