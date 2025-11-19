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
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToScanResult:(id)a3;
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
- (CWFScanResult)initWithCoder:(id)a3;
- (CWFScanResult)initWithScanRecord:(id)a3 knownNetworkProfile:(id)a4 includeProperties:(id)a5;
- (CWFScanResult)scanResultWithMatchingKnownNetworkProfile:(id)a3;
- (NSDictionary)OSSpecificAttributes;
- (NSSet)properties;
- (NSString)description;
- (NSString)networkName;
- (id)JSONCompatibleKeyValueMap;
- (id)OSSpecificValueForKey:(id)a3;
- (id)__descriptionForAirPortBaseStationModel:(int64_t)a3;
- (id)__descriptionForRSNIE;
- (id)__descriptionForWPAIE;
- (id)__internalDictionaryFromScanRecord:(id)a3 knownNetworkProfile:(id)a4 includeProperties:(id)a5;
- (id)__supportedProperties;
- (id)copyWithZone:(_NSZone *)a3;
- (id)filteredScanResultWithProperties:(id)a3;
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
- (int64_t)compareLowDataModes:(id)a3;
- (int64_t)compareSupportedPHYModes:(id)a3;
- (int64_t)compareSupportedSecurityTypes:(id)a3;
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
- (void)setMatchingKnownNetworkProfile:(id)a3;
- (void)setOSSpecificAttributes:(id)a3;
- (void)setOSSpecificValue:(id)a3 forKey:(id)a4;
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
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (BOOL)isFILSDiscoveryFrame
{
  v2 = [(CWFScanResult *)self networkFlags];
  v3 = [v2 containsObject:&unk_1F5BBCD00];

  return v3;
}

- (id)networkProfile
{
  v3 = [(CWFScanResult *)self matchingKnownNetworkProfile];
  if (!v3)
  {
    v3 = objc_alloc_init(CWFNetworkProfile);
    v4 = [(CWFScanResult *)self SSID];
    [(CWFNetworkProfile *)v3 setSSID:v4];

    [(CWFNetworkProfile *)v3 setSupportedSecurityTypes:[(CWFScanResult *)self supportedSecurityTypes]];
    [(CWFNetworkProfile *)v3 setWAPISubtype:[(CWFScanResult *)self WAPISubtype]];
    [(CWFNetworkProfile *)v3 setCarplayNetwork:[(CWFScanResult *)self supportsCarPlay]];
    [(CWFNetworkProfile *)v3 setPersonalHotspot:[(CWFScanResult *)self isPersonalHotspot]];
  }

  return v3;
}

- (BOOL)isBackgroundScanResult
{
  v2 = [(CWFScanResult *)self networkFlags];
  v3 = [v2 containsObject:&unk_1F5BBD300];

  return v3;
}

- (NSString)description
{
  v114 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = [(CWFScanResult *)self SSID];

  if (v4)
  {
    v5 = [(CWFScanResult *)self networkName];
    v6 = [v5 redactedForWiFi];

    if (([v6 hasPrefix:@" "] & 1) != 0 || objc_msgSend(v6, "hasSuffix:", @" "))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@'", v6];

      v6 = v7;
    }

    [v3 appendFormat:@"%@ - ", v6];
    v8 = [(CWFScanResult *)self SSID];
    v9 = CWFHexadecimalStringFromData(v8);
    v10 = [v9 redactedForWiFi];
    [v3 appendFormat:@"ssid=%@ (%lu), ", v10, -[CWFScanResult shortSSID](self, "shortSSID")];
  }

  v11 = [(CWFScanResult *)self BSSID];

  if (v11)
  {
    v12 = [(CWFScanResult *)self BSSID];
    v13 = [v12 redactedForWiFi];
    [v3 appendFormat:@"bssid=%@, ", v13];
  }

  if ([(CWFScanResult *)self supportedSecurityTypes])
  {
    v14 = sub_1E0BD331C([(CWFScanResult *)self supportedSecurityTypes], 0, [(CWFScanResult *)self WAPISubtype]);
    [v3 appendFormat:@"security=%@, ", v14];
  }

  v15 = [(CWFScanResult *)self __descriptionForRSNIE];
  v16 = v15;
  if (v15)
  {
    [v3 appendFormat:@"rsn=%@, ", v15];
  }

  v17 = [(CWFScanResult *)self __descriptionForWPAIE];
  v18 = v17;
  if (v17)
  {
    [v3 appendFormat:@"wpa=%@, ", v17];
  }

  v19 = [(CWFScanResult *)self channel];

  if (v19)
  {
    v20 = [(CWFScanResult *)self channel];
    [v3 appendFormat:@"channel=%@", v20];

    v21 = [(CWFScanResult *)self RNRChannelList];
    if ([v21 count])
    {
      objc_msgSend(v3, "appendString:", @" (");
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v22 = v21;
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

            [v3 appendFormat:@"%@, ", *(*(&v103 + 1) + 8 * v26++)];
          }

          while (v24 != v26);
          v24 = [v22 countByEnumeratingWithState:&v103 objects:v113 count:16];
        }

        while (v24);
      }

      [v3 deleteCharactersInRange:{objc_msgSend(v3, "length") - 2, 2}];
      v27 = @", ");
    }

    else
    {
      v27 = @", ";
    }

    [v3 appendString:v27];
  }

  v28 = [(CWFScanResult *)self countryCode];

  if (v28)
  {
    v29 = [(CWFScanResult *)self countryCode];
    [v3 appendFormat:@"cc=%@, ", v29];
  }

  if ([(CWFScanResult *)self supportedPHYModes])
  {
    v30 = sub_1E0BEE5D4([(CWFScanResult *)self supportedPHYModes]);
    [v3 appendFormat:@"phy=%@, ", v30];
  }

  if ([(CWFScanResult *)self RSSI])
  {
    [v3 appendFormat:@"rssi=%li, ", -[CWFScanResult RSSI](self, "RSSI")];
  }

  [v3 appendFormat:@"wasConnectedDuringSleep=%li, ", -[CWFScanResult wasConnectedDuringSleep](self, "wasConnectedDuringSleep")];
  if ([(CWFScanResult *)self beaconInterval])
  {
    [v3 appendFormat:@"bi=%li, ", -[CWFScanResult beaconInterval](self, "beaconInterval")];
  }

  if ([(CWFScanResult *)self isPasspoint])
  {
    [v3 appendString:{@"hs20=yes, "}];
  }

  if ([(CWFScanResult *)self isIBSS])
  {
    [v3 appendString:{@"ibss=yes, "}];
  }

  if ([(CWFScanResult *)self isPersonalHotspot])
  {
    [v3 appendString:{@"ph=yes, "}];
  }

  if ([(CWFScanResult *)self isAppleSWAP])
  {
    [v3 appendString:{@"swap=yes, "}];
  }

  if ([(CWFScanResult *)self supportsCarPlay])
  {
    [v3 appendString:{@"carplay=yes, "}];
  }

  v31 = [(CWFScanResult *)self airPortBaseStationModel];
  if (v31)
  {
    v32 = [(CWFScanResult *)self __descriptionForAirPortBaseStationModel:v31];
    [v3 appendFormat:@"airport=[%@], ", v32];
  }

  if ([(CWFScanResult *)self isWiFi6E])
  {
    [v3 appendString:{@"6e=yes, "}];
  }

  if ([(CWFScanResult *)self isFILSDiscoveryFrame])
  {
    [v3 appendString:{@"filsd=yes, "}];
  }

  v33 = [(CWFScanResult *)self RNRBSSList];
  if ([v33 count])
  {
    [v3 appendString:@"rnr=["];
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v34 = v33;
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

          [v3 appendFormat:@"(%@), ", *(*(&v99 + 1) + 8 * v38++)];
        }

        while (v36 != v38);
        v36 = [v34 countByEnumeratingWithState:&v99 objects:v112 count:16];
      }

      while (v36);
    }

    [v3 deleteCharactersInRange:{objc_msgSend(v3, "length") - 2, 2}];
    [v3 appendString:{@"], "}];
  }

  if ([(CWFScanResult *)self isBackgroundScanResult])
  {
    [v3 appendString:{@"bgscan=yes, "}];
  }

  if ([(CWFScanResult *)self isPasspoint])
  {
    v78 = [(CWFScanResult *)self domainNameList];
    if ([v78 count])
    {
      [v3 appendString:@"hs20-domains=["];
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v39 = v78;
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

            [v3 appendFormat:@"%@, ", *(*(&v95 + 1) + 8 * v43++)];
          }

          while (v41 != v43);
          v41 = [v39 countByEnumeratingWithState:&v95 objects:v111 count:16];
        }

        while (v41);
      }

      [v3 deleteCharactersInRange:{objc_msgSend(v3, "length") - 2, 2}];
      [v3 appendString:{@"], "}];
    }

    v44 = [(CWFScanResult *)self NAIRealmNameList];
    v75 = v18;
    if ([v44 count])
    {
      [v3 appendString:@"hs20-nai=["];
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v45 = v44;
      v46 = v44;
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

            [v3 appendFormat:@"%@, ", *(*(&v91 + 1) + 8 * v50++)];
          }

          while (v48 != v50);
          v48 = [v46 countByEnumeratingWithState:&v91 objects:v110 count:16];
        }

        while (v48);
      }

      [v3 deleteCharactersInRange:{objc_msgSend(v3, "length") - 2, 2}];
      [v3 appendString:{@"], "}];
      v44 = v45;
    }

    v76 = v16;
    v77 = [(CWFScanResult *)self roamingConsortiumList];
    if ([v77 count])
    {
      [v3 appendString:@"hs20-rc=["];
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v51 = v77;
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

            [v3 appendFormat:@"%@, ", *(*(&v87 + 1) + 8 * v55++)];
          }

          while (v53 != v55);
          v53 = [v51 countByEnumeratingWithState:&v87 objects:v109 count:16];
        }

        while (v53);
      }

      [v3 deleteCharactersInRange:{objc_msgSend(v3, "length") - 2, 2}];
      [v3 appendString:{@"], "}];
    }

    v56 = [(CWFScanResult *)self operatorFriendlyNameList];
    if ([v56 count])
    {
      [v3 appendString:@"hs20-friend=["];
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v57 = v56;
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

            [v3 appendFormat:@"%@, ", *(*(&v83 + 1) + 8 * v61++)];
          }

          while (v59 != v61);
          v59 = [v57 countByEnumeratingWithState:&v83 objects:v108 count:16];
        }

        while (v59);
      }

      [v3 deleteCharactersInRange:{objc_msgSend(v3, "length") - 2, 2}];
      [v3 appendString:{@"], "}];
    }

    v62 = [(CWFScanResult *)self cellularNetworkInfo];
    if ([v62 count])
    {
      v74 = v44;
      v63 = v33;
      [v3 appendString:@"hs20-cell=["];
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v64 = v62;
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

            [v3 appendFormat:@"%@, ", *(*(&v79 + 1) + 8 * v68++)];
          }

          while (v66 != v68);
          v66 = [v64 countByEnumeratingWithState:&v79 objects:v107 count:16];
        }

        while (v66);
      }

      [v3 deleteCharactersInRange:{objc_msgSend(v3, "length") - 2, 2}];
      [v3 appendString:{@"], "}];
      v33 = v63;
      v44 = v74;
    }

    v18 = v75;
    v16 = v76;
  }

  [v3 appendFormat:@"age=%lums (%llu), ", -[CWFScanResult age](self, "age"), -[CWFScanResult timestamp](self, "timestamp")];
  v69 = [(CWFScanResult *)self matchingKnownNetworkProfile];

  if (v69)
  {
    v70 = [(CWFScanResult *)self matchingKnownNetworkProfile];
    [v3 appendFormat:@"match=[%@], ", v70];
  }

  if ([v3 hasSuffix:{@", "}])
  {
    [v3 deleteCharactersInRange:{objc_msgSend(v3, "length") - 2, 2}];
  }

  v71 = v3;

  v72 = *MEMORY[0x1E69E9840];
  return v3;
}

- (id)__descriptionForRSNIE
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = [(CWFScanResult *)self scanRecord];
  v4 = [v3 objectForKeyedSubscript:@"RSN_IE"];

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

    v10 = [v4 objectForKeyedSubscript:@"IE_KEY_RSN_UCIPHERS"];
    if (!v10)
    {
      v10 = [(CWFScanResult *)self RSNUnicastCiphers];
    }

    v11 = [v4 objectForKeyedSubscript:@"IE_KEY_RSN_AUTHSELS"];
    if (!v11)
    {
      v11 = [(CWFScanResult *)self RSNAuthSelectors];
    }

    v38 = v11;
    v12 = [v4 objectForKeyedSubscript:@"IE_KEY_RSN_CAPS"];
    v13 = [v12 objectForKeyedSubscript:@"RSN_CAPABILITIES"];

    if (!v13)
    {
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CWFScanResult RSNCapabilities](self, "RSNCapabilities")}];
    }

    v14 = [MEMORY[0x1E696AD60] string];
    [v14 appendString:@"["];
    v40 = v8;
    v15 = -[CWFScanResult __descriptionForRSNCipher:](self, "__descriptionForRSNCipher:", [v8 intValue]);
    [v14 appendFormat:@"mcast=%@, ", v15];

    v39 = v9;
    v16 = -[CWFScanResult __descriptionForRSNCipher:](self, "__descriptionForRSNCipher:", [v9 intValue]);
    [v14 appendFormat:@"bip=%@, ", v16];

    [v14 appendString:@"ucast={ "];
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v17 = v10;
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
          [v14 appendFormat:@"%@ ", v22];

          ++v21;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v19);
    }

    v41 = v4;

    [v14 appendString:{@"}, "}];
    [v14 appendString:@"auths={ "];
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
          [v14 appendFormat:@"%@ ", v28];

          ++v27;
        }

        while (v25 != v27);
        v25 = [v23 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v25);
    }

    [v14 appendString:{@"}, "}];
    v29 = [v13 unsignedIntValue];
    v30 = [v13 unsignedIntValue];
    v31 = "capable";
    if ((v29 & 0x80) == 0)
    {
      v31 = "no";
    }

    if ((v30 & 0x40) != 0)
    {
      v31 = "required";
    }

    [v14 appendFormat:@"mfp=%s, ", v31];
    if (v13)
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%X", objc_msgSend(v13, "shortValue")];
      [v14 appendFormat:@"caps=%@", v32];
    }

    else
    {
      [v14 appendFormat:@"caps=%@", @"n/a"];
    }

    v33 = v40;
    v4 = v41;
    v34 = v39;
    [v14 appendString:@"]"];
  }

  else
  {
    v34 = 0;
    v17 = 0;
    v23 = 0;
    v13 = 0;
    v33 = 0;
    v14 = 0;
  }

  v35 = v14;

  v36 = *MEMORY[0x1E69E9840];
  return v14;
}

- (int64_t)beaconInterval
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCC70];
  v3 = [v2 integerValue];

  return v3;
}

- (BOOL)isAppleSWAP
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCCE8];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)supportsCarPlay
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCEF8];
  v3 = [v2 BOOLValue];

  return v3;
}

- (int64_t)airPortBaseStationModel
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCD90];
  v3 = [v2 integerValue];

  return v3;
}

- (NSSet)properties
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(NSMutableDictionary *)self->_internal allKeys];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (unint64_t)timestamp
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBD258];
  v3 = [v2 unsignedLongLongValue];

  return v3;
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
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)__descriptionForWPAIE
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = [(CWFScanResult *)self scanRecord];
  v4 = [v3 objectForKeyedSubscript:@"WPA_IE"];

  if (v4 || ([MEMORY[0x1E695DFD8] setWithArray:&unk_1F5BB9D30], v5 = objc_claimAutoreleasedReturnValue(), -[CWFScanResult properties](self, "properties"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isSubsetOfSet:", v6), v6, v5, v7))
  {
    v8 = [v4 objectForKeyedSubscript:@"IE_KEY_WPA_MCIPHER"];
    if (!v8)
    {
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[CWFScanResult WPAMulticastCipher](self, "WPAMulticastCipher")}];
    }

    v9 = [v4 objectForKeyedSubscript:@"IE_KEY_WPA_UCIPHERS"];
    if (!v9)
    {
      v9 = [(CWFScanResult *)self WPAUnicastCiphers];
    }

    v10 = [v4 objectForKeyedSubscript:@"IE_KEY_WPA_AUTHSELS"];
    if (!v10)
    {
      v10 = [(CWFScanResult *)self WPAAuthSelectors];
    }

    v11 = [MEMORY[0x1E696AD60] string];
    [v11 appendString:@"["];
    v29 = v8;
    v12 = -[CWFScanResult __descriptionForWPACipher:](self, "__descriptionForWPACipher:", [v8 intValue]);
    [v11 appendFormat:@"mcast=%@, ", v12];

    [v11 appendString:@"ucast={ "];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = v9;
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
          [v11 appendFormat:@"%@ ", v18];

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v15);
    }

    [v11 appendString:{@"}, "}];
    [v11 appendString:@"auths={ "];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v19 = v10;
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
          [v11 appendFormat:@"%@ ", v24];

          ++v23;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v21);
    }

    [v11 appendString:@"}"];
    [v11 appendString:@"]"];
    v25 = v29;
  }

  else
  {
    v13 = 0;
    v19 = 0;
    v25 = 0;
    v11 = 0;
  }

  v26 = v11;

  v27 = *MEMORY[0x1E69E9840];
  return v11;
}

- (int)supportedPHYModes
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCCA0];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (int64_t)RSSI
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCC28];
  v3 = [v2 integerValue];

  return v3;
}

- (BOOL)wasConnectedDuringSleep
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCC40];
  v3 = [v2 BOOLValue];

  return v3;
}

- (int)APMode
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCD30];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (BOOL)isPersonalHotspot
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCCD0];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isWiFi6E
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(CWFScanResult *)self channel];
  v4 = [v3 is6GHz];

  if (v4)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [(CWFScanResult *)self RNRBSSList];
    v5 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v7 = *v15;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v6);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [v9 channel];
          if ([v10 is6GHz])
          {
            v11 = [v9 isColocatedAP];

            if (v11)
            {
              LOBYTE(v5) = 1;
              goto LABEL_14;
            }
          }

          else
          {
          }
        }

        v5 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

  v5 = [(CWFScanResult *)self channel];
  v6 = [v5 JSONCompatibleKeyValueMap];
  [v3 setObject:v6 forKeyedSubscript:@"channel"];

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

  v51 = [(CWFScanResult *)self countryCode];
  [v3 setObject:v51 forKeyedSubscript:@"country_code"];

  v52 = [(CWFScanResult *)self networkName];
  [v3 setObject:v52 forKeyedSubscript:@"networkName"];

  v53 = [(CWFScanResult *)self BSSID];
  [v3 setObject:v53 forKeyedSubscript:@"bssid"];

  v54 = [(CWFScanResult *)self HESSID];
  [v3 setObject:v54 forKeyedSubscript:@"hessid"];

  v55 = [(CWFScanResult *)self friendlyName];
  [v3 setObject:v55 forKeyedSubscript:@"friendly_name"];

  v56 = [(CWFScanResult *)self manufacturerName];
  [v3 setObject:v56 forKeyedSubscript:@"manufacturer_name"];

  v57 = [(CWFScanResult *)self modelName];
  [v3 setObject:v57 forKeyedSubscript:@"model_name"];

  v58 = [(CWFScanResult *)self displayName];
  [v3 setObject:v58 forKeyedSubscript:@"display_name"];

  v59 = [(CWFScanResult *)self primaryMAC];
  [v3 setObject:v59 forKeyedSubscript:@"primary_mac"];

  v60 = [(CWFScanResult *)self bluetoothMAC];
  [v3 setObject:v60 forKeyedSubscript:@"bluetooth_name"];

  v61 = [(CWFScanResult *)self deviceID];
  [v3 setObject:v61 forKeyedSubscript:@"device_id"];

  v62 = [(CWFScanResult *)self cellularNetworkInfo];
  [v3 setObject:v62 forKeyedSubscript:@"cellular_network_info"];

  v63 = [(CWFScanResult *)self NAIRealmNameList];
  [v3 setObject:v63 forKeyedSubscript:@"nai_realm_name_list"];

  v64 = [(CWFScanResult *)self roamingConsortiumList];
  [v3 setObject:v64 forKeyedSubscript:@"roaming_consortium_list"];

  v65 = [(CWFScanResult *)self operatorFriendlyNameList];
  [v3 setObject:v65 forKeyedSubscript:@"operator_friendly_name_list"];

  v66 = [(CWFScanResult *)self domainNameList];
  [v3 setObject:v66 forKeyedSubscript:@"domain_name_list"];

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
  v71 = [(CWFScanResult *)self RNRBSSList];
  v72 = [v71 countByEnumeratingWithState:&v95 objects:v100 count:16];
  if (v72)
  {
    v73 = v72;
    v74 = 0;
    v75 = *v96;
    do
    {
      for (i = 0; i != v73; ++i)
      {
        if (*v96 != v75)
        {
          objc_enumerationMutation(v71);
        }

        v77 = *(*(&v95 + 1) + 8 * i);
        if (!v74)
        {
          v74 = [MEMORY[0x1E695DF70] array];
        }

        v78 = [v77 JSONCompatibleKeyValueMap];
        [v74 addObject:v78];
      }

      v73 = [v71 countByEnumeratingWithState:&v95 objects:v100 count:16];
    }

    while (v73);
  }

  else
  {
    v74 = 0;
  }

  [v3 setObject:v74 forKeyedSubscript:@"rnr_bss_list"];
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v79 = [(CWFScanResult *)self RNRChannelList];
  v80 = [v79 countByEnumeratingWithState:&v91 objects:v99 count:16];
  if (v80)
  {
    v81 = v80;
    v82 = 0;
    v83 = *v92;
    do
    {
      for (j = 0; j != v81; ++j)
      {
        if (*v92 != v83)
        {
          objc_enumerationMutation(v79);
        }

        v85 = *(*(&v91 + 1) + 8 * j);
        if (!v82)
        {
          v82 = [MEMORY[0x1E695DF70] array];
        }

        v86 = [v85 JSONCompatibleKeyValueMap];
        [v82 addObject:v86];
      }

      v81 = [v79 countByEnumeratingWithState:&v91 objects:v99 count:16];
    }

    while (v81);
  }

  else
  {
    v82 = 0;
  }

  [v3 setObject:v82 forKeyedSubscript:@"rnr_channel_list"];
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
  v3 = [(CWFScanResult *)self isOpen]|| [(CWFScanResult *)self isOWE];
  if ([(CWFScanResult *)self isWEP]|| [(CWFScanResult *)self hasWEP40Cipher]|| [(CWFScanResult *)self hasWEP104Cipher])
  {
    v4 = ![(CWFScanResult *)self isEAP];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(CWFScanResult *)self supportedSecurityTypes];
  v6 = ([(CWFScanResult *)self isWPA]|| [(CWFScanResult *)self isWPA2]) && [(CWFScanResult *)self hasTKIPCipher];
  v7 = [(CWFScanResult *)self matchingKnownNetworkProfile];

  if (v7)
  {
    v8 = [(CWFScanResult *)self matchingKnownNetworkProfile];
    v9 = [v8 hiddenState] == 1;

    if (v3)
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
    if (v3)
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
  if (v5 == 4)
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
  if (![(CWFScanResult *)self hasWEP40Cipher]&& ![(CWFScanResult *)self hasWEP104Cipher]&& v5 == 4)
  {
    v13 |= 4uLL;
  }

  v14 = [(CWFScanResult *)self scanRecord];
  v15 = [v14 objectForKey:@"PHY_MODE"];
  v16 = [v15 integerValue];

  if (v16 == 4)
  {
    v13 |= 0x10uLL;
  }

  v17 = [(CWFScanResult *)self scanRecord];
  v18 = [v17 objectForKey:@"AmbiguousSSIDs"];
  v19 = [v18 BOOLValue];

  if (v19)
  {
    v20 = v13 | 0x20;
  }

  else
  {
    v20 = v13;
  }

  v21 = [(CWFScanResult *)self OSSpecificAttributes];
  v22 = [v21 objectForKey:@"PrivateMacInfoDictionary"];

  if (v22)
  {
    v23 = [v22 objectForKey:@"PrivateMacDisableReason"];
    v24 = [v23 intValue];

    if (v24)
    {
      v20 |= 0x2000uLL;
    }
  }

  return v20;
}

- (id)__internalDictionaryFromScanRecord:(id)a3 knownNetworkProfile:(id)a4 includeProperties:(id)a5
{
  v56 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E695DF90] dictionary];
  v12 = [(CWFScanResult *)self __supportedProperties];
  v13 = [v12 mutableCopy];

  if (v10)
  {
    [v13 intersectSet:v10];
  }

  v50 = v10;
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
            v20 = v11;
            v21 = v8;
            goto LABEL_225;
          case 2:
            v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v8, "timestamp")}];
            v25 = &unk_1F5BBD258;
            goto LABEL_205;
          case 3:
            if ([v8 hasFILSDiscoveryInformation])
            {
              [v8 FILSSSID];
            }

            else
            {
              [v8 SSID];
            }
            v22 = ;
            v25 = &unk_1F5BBCBC8;
            goto LABEL_205;
          case 4:
            v22 = [v8 BSSID];
            v25 = &unk_1F5BBCBE0;
            goto LABEL_205;
          case 5:
            v34 = [v8 channelInfo];
            [v11 setObject:v34 forKeyedSubscript:&unk_1F5BBCBF8];

            if (![v8 hasFILSDiscoveryInformation])
            {
              goto LABEL_226;
            }

            v22 = [v8 FILSPrimaryChannelInfo];
            if (!v22)
            {
              goto LABEL_207;
            }

            v25 = &unk_1F5BBCBF8;
            goto LABEL_205;
          case 6:
            v22 = [v8 countryCode];
            v25 = &unk_1F5BBCC10;
            goto LABEL_205;
          case 7:
            v22 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "RSSI")}];
            v25 = &unk_1F5BBCC28;
            goto LABEL_205;
          case 8:
            v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "wasConnectedDuringSleep")}];
            v25 = &unk_1F5BBCC40;
            goto LABEL_205;
          case 9:
            v22 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "noise")}];
            v25 = &unk_1F5BBCC58;
            goto LABEL_205;
          case 10:
            v35 = [v8 hasFILSDiscoveryInformation];
            v36 = MEMORY[0x1E696AD98];
            if (v35)
            {
              v37 = [v8 FILSBeaconInterval];
            }

            else
            {
              v37 = [v8 beaconInterval];
            }

            v22 = [v36 numberWithInteger:v37];
            v25 = &unk_1F5BBCC70;
            goto LABEL_205;
          case 11:
            v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "isPasspoint")}];
            v25 = &unk_1F5BBCCB8;
            goto LABEL_205;
          case 12:
            v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "isPersonalHotspot")}];
            v25 = &unk_1F5BBCCD0;
            goto LABEL_205;
          case 13:
            v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "isAppleSWAP")}];
            v25 = &unk_1F5BBCCE8;
            goto LABEL_205;
          case 14:
            if ([v8 hasFILSDiscoveryInformation])
            {
              if ([v8 hasFILSCaps])
              {
                if ([v8 FILSIsESS])
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
              v20 = v11;
              goto LABEL_225;
            }

            v45 = [v8 APMode];
            if (!v45)
            {
              goto LABEL_226;
            }

            v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v45];
            v25 = &unk_1F5BBCD30;
            goto LABEL_205;
          case 15:
            v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "isUnconfiguredAirPortBaseStation")}];
            v25 = &unk_1F5BBCD78;
            goto LABEL_205;
          case 16:
            v22 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "airPortBaseStationModel")}];
            v25 = &unk_1F5BBCD90;
            goto LABEL_205;
          case 17:
            v22 = [v8 informationElementData];
            v25 = &unk_1F5BBCD48;
            goto LABEL_205;
          case 18:
            if (![v8 hasFILSDiscoveryInformation])
            {
              v38 = MEMORY[0x1E696AD98];
              v39 = [v8 supportedPHYModes];
              goto LABEL_191;
            }

            if ([v8 hasFILSCaps])
            {
              v38 = MEMORY[0x1E696AD98];
              v39 = [v8 FILSSupportedPHYModes];
LABEL_191:
              v22 = [v38 numberWithUnsignedInt:v39];
              v25 = &unk_1F5BBCCA0;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCCA0;
LABEL_224:
            v20 = v11;
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
            v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "supportedSecurityTypes")}];
            v25 = &unk_1F5BBCC88;
            goto LABEL_205;
          case 20:
            v22 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "WAPISubtype")}];
            v25 = &unk_1F5BBCD60;
            goto LABEL_205;
          case 21:
            v22 = [v8 WPAUnicastCiphers];
            v25 = &unk_1F5BBD168;
            goto LABEL_205;
          case 22:
            if ([v8 hasWPAIE])
            {
              v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v8, "WPAMulticastCipher")}];
              v25 = &unk_1F5BBD180;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBD180;
            goto LABEL_224;
          case 23:
            v22 = [v8 WPAAuthSelectors];
            v25 = &unk_1F5BBD198;
            goto LABEL_205;
          case 24:
            v22 = [v8 RSNUnicastCiphers];
            v25 = &unk_1F5BBD1B0;
            goto LABEL_205;
          case 25:
            if ([v8 hasRSNIE])
            {
              v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v8, "RSNMulticastCipher")}];
              v25 = &unk_1F5BBD1C8;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBD1C8;
            goto LABEL_224;
          case 26:
            if ([v8 hasRSNIE])
            {
              v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v8, "RSNBroadcastCipher")}];
              v25 = &unk_1F5BBD1E0;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBD1E0;
            goto LABEL_224;
          case 27:
            v22 = [v8 RSNAuthSelectors];
            v25 = &unk_1F5BBD1F8;
            goto LABEL_205;
          case 28:
            if ([v8 hasRSNIE])
            {
              v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v8, "RSNCapabilities")}];
              v25 = &unk_1F5BBD210;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBD210;
            goto LABEL_224;
          case 31:
            if ([v8 hasFILSDiscoveryInformation])
            {
              if ([v8 hasFILSAccessNetworkOptions])
              {
                v26 = MEMORY[0x1E696AD98];
                v27 = [v8 FILSAccessNetworkType];
LABEL_164:
                v22 = [v26 numberWithUnsignedInt:v27];
                v25 = &unk_1F5BBCDA8;
                goto LABEL_205;
              }
            }

            else if ([v8 hasInterworkingIE])
            {
              v26 = MEMORY[0x1E696AD98];
              v27 = [v8 accessNetworkType];
              goto LABEL_164;
            }

            v19 = &unk_1F5BBCDA8;
            goto LABEL_224;
          case 32:
            if ([v8 hasFILSDiscoveryInformation])
            {
              if ([v8 hasFILSAccessNetworkOptions])
              {
                v28 = MEMORY[0x1E696AD98];
                v29 = [v8 FILSIsInternetAccessible];
LABEL_171:
                v22 = [v28 numberWithBool:v29];
                v25 = &unk_1F5BBCDC0;
                goto LABEL_205;
              }
            }

            else if ([v8 hasInterworkingIE])
            {
              v28 = MEMORY[0x1E696AD98];
              v29 = [v8 isInternetAccessible];
              goto LABEL_171;
            }

            v19 = &unk_1F5BBCDC0;
            goto LABEL_224;
          case 33:
            if ([v8 hasFILSDiscoveryInformation])
            {
              if ([v8 hasFILSAccessNetworkOptions])
              {
                v32 = MEMORY[0x1E696AD98];
                v33 = [v8 FILSIsAdditionalStepRequiredForAccess];
LABEL_183:
                v22 = [v32 numberWithBool:v33];
                v25 = &unk_1F5BBCDD8;
                goto LABEL_205;
              }
            }

            else if ([v8 hasInterworkingIE])
            {
              v32 = MEMORY[0x1E696AD98];
              v33 = [v8 isAdditionalStepRequiredForAccess];
              goto LABEL_183;
            }

            v19 = &unk_1F5BBCDD8;
            goto LABEL_224;
          case 34:
            if ([v8 hasFILSDiscoveryInformation])
            {
              if ([v8 hasFILSAccessNetworkOptions])
              {
                v30 = MEMORY[0x1E696AD98];
                v31 = [v8 FILSIsEmergencyServicesReachable];
LABEL_175:
                v22 = [v30 numberWithBool:v31];
                v25 = &unk_1F5BBCDF0;
                goto LABEL_205;
              }
            }

            else if ([v8 hasInterworkingIE])
            {
              v30 = MEMORY[0x1E696AD98];
              v31 = [v8 isEmergencyServicesReachable];
              goto LABEL_175;
            }

            v19 = &unk_1F5BBCDF0;
            goto LABEL_224;
          case 35:
            if ([v8 hasFILSDiscoveryInformation])
            {
              if ([v8 hasFILSAccessNetworkOptions])
              {
                v43 = MEMORY[0x1E696AD98];
                v44 = [v8 FILSIsUnauthenticatedEmergencyServiceAccessible];
LABEL_204:
                v22 = [v43 numberWithBool:v44];
                v25 = &unk_1F5BBCE08;
                goto LABEL_205;
              }
            }

            else if ([v8 hasInterworkingIE])
            {
              v43 = MEMORY[0x1E696AD98];
              v44 = [v8 isUnauthenticatedEmergencyServiceAccessible];
              goto LABEL_204;
            }

            v19 = &unk_1F5BBCE08;
            goto LABEL_224;
          case 36:
            if ([v8 hasInterworkingIE])
            {
              v22 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "venueGroup")}];
              v25 = &unk_1F5BBCE20;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCE20;
            goto LABEL_224;
          case 37:
            if ([v8 hasInterworkingIE])
            {
              v22 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "venueType")}];
              v25 = &unk_1F5BBCE38;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCE38;
            goto LABEL_224;
          case 38:
            if ([v8 hasInterworkingIE])
            {
              v22 = [v8 HESSID];
              v25 = &unk_1F5BBCE50;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCE50;
            goto LABEL_224;
          case 39:
            if ([v8 hasAppleIE])
            {
              v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "isUnconfiguredDevice")}];
              v25 = &unk_1F5BBCE68;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCE68;
            goto LABEL_224;
          case 40:
            if ([v8 hasAppleIE])
            {
              v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "providesInternetAccess")}];
              v25 = &unk_1F5BBCE80;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCE80;
            goto LABEL_224;
          case 41:
            if ([v8 hasAppleIE])
            {
              v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "supportsWPS")}];
              v25 = &unk_1F5BBCE98;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCE98;
            goto LABEL_224;
          case 42:
            if ([v8 hasAppleIE])
            {
              v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "supportsiAPOverWiFi")}];
              v25 = &unk_1F5BBCEB0;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCEB0;
            goto LABEL_224;
          case 43:
            if ([v8 hasAppleIE])
            {
              v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "supports2GHzNetworks")}];
              v25 = &unk_1F5BBCEC8;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCEC8;
            goto LABEL_224;
          case 44:
            if ([v8 hasAppleIE])
            {
              v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "supports5GHzNetworks")}];
              v25 = &unk_1F5BBCEE0;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCEE0;
            goto LABEL_224;
          case 45:
            if ([v8 hasAppleIE])
            {
              v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "supportsCarPlay")}];
              v25 = &unk_1F5BBCEF8;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCEF8;
            goto LABEL_224;
          case 46:
            if ([v8 hasAppleIE])
            {
              v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "supportsHomeKit")}];
              v25 = &unk_1F5BBCF10;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCF10;
            goto LABEL_224;
          case 47:
            if ([v8 hasAppleIE])
            {
              v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "supportsHomeKit2")}];
              v25 = &unk_1F5BBCF28;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCF28;
            goto LABEL_224;
          case 48:
            if ([v8 hasAppleIE])
            {
              v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "supportsAirPlay")}];
              v25 = &unk_1F5BBCF40;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCF40;
            goto LABEL_224;
          case 49:
            if ([v8 hasAppleIE])
            {
              v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "supportsAirPlay2")}];
              v25 = &unk_1F5BBCF58;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCF58;
            goto LABEL_224;
          case 50:
            if ([v8 hasAppleIE])
            {
              v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "supportsAirPrint")}];
              v25 = &unk_1F5BBCF70;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCF70;
            goto LABEL_224;
          case 51:
            if ([v8 hasAppleIE])
            {
              v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "supportsMFi")}];
              v25 = &unk_1F5BBCF88;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCF88;
            goto LABEL_224;
          case 52:
            if ([v8 hasAppleIE])
            {
              v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "supportsMFiHardwareAuth")}];
              v25 = &unk_1F5BBCFA0;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCFA0;
            goto LABEL_224;
          case 53:
            if ([v8 hasAppleIE])
            {
              v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "supportsSoftwareTokenAuth")}];
              v25 = &unk_1F5BBCFB8;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCFB8;
            goto LABEL_224;
          case 54:
            if ([v8 hasAppleIE])
            {
              v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "supportsSoftwareCertAuth")}];
              v25 = &unk_1F5BBCFD0;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCFD0;
            goto LABEL_224;
          case 55:
            if ([v8 hasAppleIE])
            {
              v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "supportsSecureWAC")}];
              v25 = &unk_1F5BBCFE8;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBCFE8;
            goto LABEL_224;
          case 56:
            if ([v8 hasAppleIE])
            {
              v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "supportsWoW")}];
              v25 = &unk_1F5BBD000;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBD000;
            goto LABEL_224;
          case 57:
            if ([v8 hasAppleIE])
            {
              v22 = [v8 friendlyName];
              v25 = &unk_1F5BBD018;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBD018;
            goto LABEL_224;
          case 58:
            if ([v8 hasAppleIE])
            {
              v22 = [v8 manufacturerName];
              v25 = &unk_1F5BBD030;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBD030;
            goto LABEL_224;
          case 59:
            if ([v8 hasAppleIE])
            {
              v22 = [v8 modelName];
              v25 = &unk_1F5BBD048;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBD048;
            goto LABEL_224;
          case 60:
            if ([v8 hasAppleIE])
            {
              v22 = [v8 displayName];
              v25 = &unk_1F5BBD060;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBD060;
            goto LABEL_224;
          case 61:
            if ([v8 hasAppleIE])
            {
              v22 = [v8 primaryMAC];
              v25 = &unk_1F5BBD078;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBD078;
            goto LABEL_224;
          case 62:
            if ([v8 hasAppleIE])
            {
              v22 = [v8 bluetoothMAC];
              v25 = &unk_1F5BBD090;
              goto LABEL_205;
            }

            v19 = &unk_1F5BBD090;
            goto LABEL_224;
          case 63:
            if (([v8 hasAppleIE] & 1) == 0)
            {
              v19 = &unk_1F5BBD0A8;
              goto LABEL_224;
            }

            v22 = [v8 deviceID];
            v25 = &unk_1F5BBD0A8;
LABEL_205:
            v46 = v11;
            v47 = v22;
            goto LABEL_206;
          case 64:
            v22 = [v8 ANQPResponse];
            v25 = &unk_1F5BBD0C0;
            goto LABEL_205;
          case 65:
            v22 = [v8 ANQPResponse];
            if (v22)
            {
              v23 = [v8 cellularNetworkInfo];
              v24 = &unk_1F5BBD0D8;
              goto LABEL_138;
            }

            v25 = &unk_1F5BBD0D8;
            goto LABEL_219;
          case 66:
            v22 = [v8 ANQPResponse];
            if (v22)
            {
              v23 = [v8 NAIRealmNameList];
              v24 = &unk_1F5BBD0F0;
              goto LABEL_138;
            }

            v25 = &unk_1F5BBD0F0;
            goto LABEL_219;
          case 67:
            v22 = [v8 ANQPResponse];
            if (v22)
            {
              v23 = [v8 roamingConsortiumList];
              v24 = &unk_1F5BBD108;
              goto LABEL_138;
            }

            v25 = &unk_1F5BBD108;
            goto LABEL_219;
          case 68:
            v22 = [v8 ANQPResponse];
            if (v22)
            {
              v23 = [v8 operatorFriendlyNameList];
              v24 = &unk_1F5BBD120;
              goto LABEL_138;
            }

            v25 = &unk_1F5BBD120;
            goto LABEL_219;
          case 69:
            v22 = [v8 ANQPResponse];
            if (v22)
            {
              v23 = [v8 domainNameList];
              v24 = &unk_1F5BBD138;
              goto LABEL_138;
            }

            v25 = &unk_1F5BBD138;
            goto LABEL_219;
          case 70:
            v22 = [v8 ANQPResponse];
            if (v22)
            {
              v23 = [v8 venueURLList];
              v24 = &unk_1F5BBD150;
LABEL_138:
              [v11 setObject:v23 forKeyedSubscript:v24];
            }

            else
            {
              v25 = &unk_1F5BBD150;
LABEL_219:
              v46 = v11;
              v47 = 0;
LABEL_206:
              [v46 setObject:v47 forKeyedSubscript:v25];
            }

LABEL_207:

            goto LABEL_226;
          case 71:
            v22 = [v8 objectForKeyedSubscript:@"__OSSpecific__"];
            v25 = &unk_1F5BBD228;
            goto LABEL_205;
          case 72:
            v19 = &unk_1F5BBD240;
            v20 = v11;
            v21 = v9;
            goto LABEL_225;
          case 73:
            v22 = [v8 networkFlags];
            v25 = &unk_1F5BBD270;
            goto LABEL_205;
          case 74:
            v40 = [v8 hasFILSDiscoveryInformation];
            v41 = MEMORY[0x1E696AD98];
            if (v40)
            {
              v42 = [v8 FILSShortSSID];
            }

            else
            {
              v42 = [v8 shortSSID];
            }

            v22 = [v41 numberWithUnsignedInteger:v42];
            v25 = &unk_1F5BBD288;
            goto LABEL_205;
          case 75:
            v22 = [v8 RNRBSSList];
            v25 = &unk_1F5BBD2A0;
            goto LABEL_205;
          case 76:
            if ([v8 associationDisallowedReason])
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
            v22 = [v8 RNRChannelList];
            v25 = &unk_1F5BBD2D0;
            goto LABEL_205;
          case 78:
            v22 = [v8 privateMACAddress];
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

  return v11;
}

- (CWFScanResult)initWithScanRecord:(id)a3 knownNetworkProfile:(id)a4 includeProperties:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = CWFScanResult;
  v11 = [(CWFScanResult *)&v16 init];
  v12 = v11;
  if (!v8 || !v11 || ([(CWFScanResult *)v11 __internalDictionaryFromScanRecord:v8 knownNetworkProfile:v9 includeProperties:v10], v13 = objc_claimAutoreleasedReturnValue(), internal = v12->_internal, v12->_internal = v13, internal, !v12->_internal))
  {

    v12 = 0;
  }

  return v12;
}

- (CWFScanResult)scanResultWithMatchingKnownNetworkProfile:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CWFScanResult);
  v6 = [(NSMutableDictionary *)self->_internal mutableCopy];
  [v6 setObject:v4 forKeyedSubscript:&unk_1F5BBD240];

  [(CWFScanResult *)v5 setInternal:v6];

  return v5;
}

- (id)filteredScanResultWithProperties:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CWFScanResult);
  v6 = [(NSMutableDictionary *)self->_internal mutableCopy];
  if (v4)
  {
    v7 = [(CWFScanResult *)self properties];
    v8 = [v7 mutableCopy];

    [v8 minusSet:v4];
    v9 = [v8 allObjects];
    [v6 removeObjectsForKeys:v9];
  }

  [(CWFScanResult *)v5 setInternal:v6];

  return v5;
}

- (int64_t)compareSupportedSecurityTypes:(id)a3
{
  v4 = a3;
  v5 = [(CWFScanResult *)self weakestSupportedSecurityType];
  v6 = [v4 weakestSupportedSecurityType];
  v7 = [(CWFScanResult *)self strongestSupportedSecurityType];
  v8 = [v4 strongestSupportedSecurityType];
  v9 = [(CWFScanResult *)self WAPISubtype];
  v10 = [v4 WAPISubtype];

  if (v5 == v6)
  {
    if (v7 == v8)
    {
      return 0;
    }

    v12 = v7;
    v13 = v9;
    v14 = v8;
  }

  else
  {
    v12 = v5;
    v13 = v9;
    v14 = v6;
  }

  return CWFCompareSecurityType(v12, 0, v13, v14, 0, v10);
}

- (int64_t)compareSupportedPHYModes:(id)a3
{
  v4 = a3;
  v5 = [(CWFScanResult *)self fastestSupportedPHYMode];
  v6 = [(CWFScanResult *)self slowestSupportedPHYMode];
  v7 = [v4 fastestSupportedPHYMode];
  v8 = [v4 slowestSupportedPHYMode];

  if (v5 == v7)
  {
    if (v6 == v8)
    {
      return 0;
    }

    v10 = v6;
    v11 = v8;
  }

  else
  {
    v10 = v5;
    v11 = v7;
  }

  return CWFComparePHYMode(v10, v11);
}

- (int64_t)compareLowDataModes:(id)a3
{
  v4 = a3;
  v5 = [(CWFScanResult *)self matchingKnownNetworkProfile];
  v6 = [v5 lowDataMode];

  v7 = [v4 matchingKnownNetworkProfile];

  v8 = [v7 lowDataMode];
  v9 = v8 == 1;
  if (v6 == 1)
  {
    v9 = -1;
  }

  if (v6 == v8)
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
  v3 = [(CWFScanResult *)self supportedSecurityTypes];
  v4 = [(CWFScanResult *)self WAPISubtype];

  return CWFStrongestSecurityType(v3, v4, 0);
}

- (unint64_t)weakestSupportedSecurityType
{
  v3 = [(CWFScanResult *)self supportedSecurityTypes];
  v4 = [(CWFScanResult *)self WAPISubtype];

  return CWFWeakestSecurityType(v3, v4, 0);
}

- (int64_t)WAPISubtype
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCD60];
  v3 = [v2 integerValue];

  return v3;
}

- (int)fastestSupportedPHYMode
{
  v2 = [(CWFScanResult *)self supportedPHYModes];

  return CWFFastestPHYMode(v2);
}

- (int)slowestSupportedPHYMode
{
  v2 = [(CWFScanResult *)self supportedPHYModes];

  return CWFSlowestPHYMode(v2);
}

- (unint64_t)shortSSID
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBD288];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (NSString)networkName
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCBC8];
  v3 = CWFHumanReadableStringFromData(v2);

  return v3;
}

- (BOOL)isAmbiguousNetworkName
{
  v2 = [(CWFScanResult *)self networkName];
  v3 = sub_1E0BEE360(v2);

  return v3;
}

- (int64_t)noise
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCC58];
  v3 = [v2 integerValue];

  return v3;
}

- (BOOL)isHotspot
{
  v3 = [(CWFScanResult *)self matchingKnownNetworkProfile];
  if (([v3 isHotspot] & 1) != 0 || -[CWFScanResult isPasspoint](self, "isPasspoint") || -[CWFScanResult accessNetworkType](self, "accessNetworkType") == 2)
  {

    return 1;
  }

  v5 = [(CWFScanResult *)self accessNetworkType];

  return v5 == 3;
}

- (BOOL)isUnconfiguredAirPortBaseStation
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCD78];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setOSSpecificAttributes:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v20 = self;
    v5 = [MEMORY[0x1E695DF90] dictionary];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = [v4 allKeys];
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v33 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          v12 = [CWFScanResult supportedOSSpecificKeys:v18];
          v13 = [v12 containsObject:v11];

          if (v13)
          {
            v14 = [v4 objectForKeyedSubscript:v11];
            [v5 setObject:v14 forKeyedSubscript:v11];
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

        v8 = [v6 countByEnumeratingWithState:&v21 objects:v33 count:16];
      }

      while (v8);
    }

    self = v20;
  }

  else
  {
    v5 = 0;
  }

  [(NSMutableDictionary *)self->_internal setObject:v5 forKeyedSubscript:&unk_1F5BBD228, v18, v19];

  v17 = *MEMORY[0x1E69E9840];
}

- (NSDictionary)OSSpecificAttributes
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBD228];
  v3 = [v2 copy];

  return v3;
}

- (void)setOSSpecificValue:(id)a3 forKey:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7 && (+[CWFScanResult supportedOSSpecificKeys](CWFScanResult, "supportedOSSpecificKeys"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 containsObject:v7], v8, v9))
  {
    v10 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBD228];

    if (v6 && !v10)
    {
      v11 = [MEMORY[0x1E695DF90] dictionary];
      [(NSMutableDictionary *)self->_internal setObject:v11 forKeyedSubscript:&unk_1F5BBD228];
    }

    v12 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBD228];
    [v12 setObject:v6 forKeyedSubscript:v7];
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

- (id)OSSpecificValueForKey:(id)a3
{
  if (a3)
  {
    internal = self->_internal;
    v4 = a3;
    v5 = [(NSMutableDictionary *)internal objectForKeyedSubscript:&unk_1F5BBD228];
    v6 = [v5 objectForKeyedSubscript:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setMatchingKnownNetworkProfile:(id)a3
{
  v4 = [a3 copy];
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
    v4 = [(CWFScanResult *)self matchingKnownNetworkProfile];
    if ([v4 isCaptive])
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
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

- (unint64_t)RSNMulticastCipher
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBD1C8];
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

- (unint64_t)RSNBroadcastCipher
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBD1E0];
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

- (int)RSNCapabilities
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBD210];
  v3 = [v2 unsignedIntValue];

  return v3;
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

      v9 = [(CWFScanResult *)self RSNUnicastCiphers];

      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v4 = v9;
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

      v9 = [(CWFScanResult *)self RSNUnicastCiphers];

      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v4 = v9;
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

      v9 = [(CWFScanResult *)self RSNUnicastCiphers];

      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v4 = v9;
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
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (BOOL)isInternetAccessible
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCDC0];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isAdditionalStepRequiredForAccess
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCDD8];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isEmergencyServicesReachable
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCDF0];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isUnauthenticatedEmergencyServiceAccessible
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCE08];
  v3 = [v2 BOOLValue];

  return v3;
}

- (int64_t)venueGroup
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCE20];
  v3 = [v2 integerValue];

  return v3;
}

- (int64_t)venueType
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCE38];
  v3 = [v2 integerValue];

  return v3;
}

- (BOOL)isUnconfiguredDevice
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCE68];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)providesInternetAccess
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCE80];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)supportsWPS
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCE98];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)supportsiAPOverWiFi
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCEB0];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)supports2GHzNetworks
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCEC8];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)supports5GHzNetworks
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCEE0];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)supportsMFi
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCF88];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)supportsMFiHardwareAuth
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCFA0];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)supportsMFiSoftwareTokenAuth
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCFB8];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)supportsMFiSoftwareCertAuth
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCFD0];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)supportsHomeKit
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCF10];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)supportsHomeKit2
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCF28];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)supportsAirPrint
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCF70];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)supportsWoW
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBD000];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)supportsSecureWAC
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCFE8];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)supportsAirPlay
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCF40];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)supportsAirPlay2
{
  v2 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBCF58];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)hasNon6GHzRNRChannel
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(CWFScanResult *)self RNRChannelList];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([v7 is2GHz] & 1) != 0 || (objc_msgSend(v7, "is5GHz"))
        {
          v8 = 1;
          goto LABEL_13;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)__descriptionForAirPortBaseStationModel:(int64_t)a3
{
  switch(a3)
  {
    case 'f':
      v4 = @"AirPort Express (802.11 b/g)";

      break;
    case 'g':
    case 'n':
    case 'o':
    case 'p':
    case 'v':
      goto LABEL_10;
    case 'h':
      v4 = @"AirPort Extreme 802.11n (1st Generation)";

      break;
    case 'i':
      v4 = @"AirPort Extreme 802.11n w/ Gigabit Ethernet (2nd Generation)";

      break;
    case 'j':
      v4 = @"Time Capsule (1st Generation)";

      break;
    case 'k':
      v4 = @"AirPort Express 802.11n (1st Generation)";

      break;
    case 'l':
      v4 = @"AirPort Extreme 802.11n w/ Simultaneous Dual-Band (3rd Generation)";

      break;
    case 'm':
      v4 = @"Time Capsule w/ Simultaneous Dual-Band (2nd Generation)";

      break;
    case 'q':
      v4 = @"Time Capsule w/ Simultaneous Dual-Band (3rd Generation)";

      break;
    case 'r':
      v4 = @"AirPort Extreme 802.11n w/ Simultaneous Dual-Band (4th Generation)";

      break;
    case 's':
      v4 = @"AirPort Express 802.11n w/ Simultaneous Dual-Band (2nd Generation)";

      break;
    case 't':
      v4 = @"Time Capsule w/ Simultaneous Dual-Band (4th Generation)";

      break;
    case 'u':
      v4 = @"AirPort Extreme 802.11n w/ Simultaneous Dual-Band (5th Generation)";

      break;
    case 'w':
      v4 = @"Time Capsule 802.11ac (5th Generation)";

      break;
    case 'x':
      v4 = @"AirPort Extreme 802.11ac (6th Generation)";

      break;
    default:
      if (a3)
      {
        if (a3 == 3)
        {
          v4 = @"AirPort Extreme (802.11 b/g)";
        }

        else
        {
LABEL_10:
          v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (%ld)", a3];
        }
      }

      else
      {
        v4 = 0;
      }

      break;
  }

  return v4;
}

- (BOOL)isEqualToScanResult:(id)a3
{
  v4 = a3;
  v5 = [(CWFScanResult *)self SSID];
  if (v5)
  {
    v6 = [v4 SSID];
    if (v6)
    {
      v7 = [(CWFScanResult *)self SSID];
      v8 = [v4 SSID];
      if ([v7 isEqual:v8])
      {
        v9 = [(CWFScanResult *)self BSSID];
        if (v9)
        {
          v10 = [v4 BSSID];
          if (v10)
          {
            v11 = [(CWFScanResult *)self BSSID];
            v12 = [v4 BSSID];
            if ([v11 isEqual:v12] && (v16 = -[CWFScanResult isFILSDiscoveryFrame](self, "isFILSDiscoveryFrame"), v16 == objc_msgSend(v4, "isFILSDiscoveryFrame")))
            {
              v14 = [(CWFScanResult *)self supportedSecurityTypes];
              v13 = v14 == [v4 supportedSecurityTypes];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFScanResult *)self isEqualToScanResult:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(CWFScanResult *)self SSID];
  v4 = [v3 hash];
  v5 = [(CWFScanResult *)self BSSID];
  v6 = [v5 hash] ^ v4;
  v7 = v6 ^ [(CWFScanResult *)self isFILSDiscoveryFrame];
  v8 = [(CWFScanResult *)self supportedSecurityTypes];

  return v7 ^ v8;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (CWFScanResult)initWithCoder:(id)a3
{
  v4 = a3;
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
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"_internal"];
    v16 = [v15 mutableCopy];
    internal = v5->_internal;
    v5->_internal = v16;
  }

  return v5;
}

@end