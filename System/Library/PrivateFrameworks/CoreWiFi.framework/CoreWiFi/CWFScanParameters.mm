@interface CWFScanParameters
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToScanParameters:(id)parameters;
- (CWFScanParameters)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)visitPredicateExpression:(id)expression;
- (void)visitPredicateOperator:(id)operator;
@end

@implementation CWFScanParameters

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"channels=%@, ", self->_channels];
  redactedForWiFi = [(NSString *)self->_SSID redactedForWiFi];
  [string appendFormat:@"SSID=%@, ", redactedForWiFi];

  redactedForWiFi2 = [(NSString *)self->_BSSID redactedForWiFi];
  [string appendFormat:@"BSSID=%@, ", redactedForWiFi2];

  [string appendFormat:@"shortSSID=%lu, ", self->_shortSSID];
  v6 = [(NSArray *)self->_SSIDList componentsJoinedByString:@", "];
  redactedForWiFi3 = [v6 redactedForWiFi];
  [string appendFormat:@"SSIDList=[%@], ", redactedForWiFi3];

  [string appendFormat:@"numberOfScans=%lu, ", self->_numberOfScans];
  [string appendFormat:@"restTime=%lu, ", self->_restTime];
  [string appendFormat:@"dwellTime=%lu, ", self->_dwellTime];
  [string appendFormat:@"acceptableCacheAge=%lu, ", self->_acceptableCacheAge];
  [string appendFormat:@"BSSType=%u, ", self->_BSSType];
  [string appendFormat:@"PHYMode=%u, ", self->_PHYMode];
  [string appendFormat:@"scanType=%u, ", self->_scanType];
  [string appendFormat:@"minRSSI=%ld, ", self->_minimumRSSI];
  [string appendFormat:@"maxAge=%lu, ", self->_maximumAge];
  [string appendFormat:@"minTimestamp=%llu, ", self->_minimumTimestamp];
  [string appendFormat:@"scanFlags=0x%x, ", self->_scanFlags];
  [string appendFormat:@"merge=%d, ", self->_mergeScanResults];
  [string appendFormat:@"includeHidden=%d, ", self->_includeHiddenNetworks];
  [string appendFormat:@"includeProperties=%@, ", self->_includeProperties];
  [string appendFormat:@"includeScanResults=%@, ", self->_includeScanResults];
  [string appendFormat:@"includeMatchingKnownNetworks=%d, ", self->_includeMatchingKnownNetworkProfiles];
  [string appendFormat:@"ANQPElementIDList=%@, ", self->_ANQPElementIDListForPasspointScanResults];
  [string appendFormat:@"acceptableANQPCacheAge=%lu, ", self->_acceptableANQPCacheAgeForPasspointScanResults];
  [string appendFormat:@"maxANQPAge=%lu, ", self->_maximumANQPAgeForPasspointScanResults];
  [string appendFormat:@"exclude6GChannels=%d, ", self->_exclude6GChannels];
  [string appendFormat:@"matchNetworkNamePrefix=%@, ", self->_matchNetworkNamePrefix];
  [string appendFormat:@"filterPredicate=%@, ", self->_filterPredicate];
  [string appendFormat:@"includeBeaconCache=%d, ", self->_includeBeaconCacheResults];
  [string appendFormat:@"includeBackgroundCache=%d, ", self->_includeBackgroundScanCacheResults];
  [string appendFormat:@"sortByAutoJoinPreference=%d", self->_sortByAutoJoinPreference];
  [string appendFormat:@"addScanDurationToMaxAge=%d, ", self->_addScanDurationToMaxAge];

  return string;
}

- (BOOL)isEqualToScanParameters:(id)parameters
{
  parametersCopy = parameters;
  channels = self->_channels;
  channels = [parametersCopy channels];
  if (channels != channels)
  {
    if (!self->_channels || ([parametersCopy channels], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v11 = 0;
      goto LABEL_66;
    }

    v3 = v8;
    v9 = self->_channels;
    channels2 = [parametersCopy channels];
    if (![(NSArray *)v9 isEqual:channels2])
    {
      v11 = 0;
LABEL_65:

      goto LABEL_66;
    }

    v98 = channels2;
  }

  SSID = self->_SSID;
  sSID = [parametersCopy SSID];
  if (SSID != sSID)
  {
    if (!self->_SSID)
    {
      v11 = 0;
      goto LABEL_64;
    }

    sSID2 = [parametersCopy SSID];
    if (!sSID2)
    {
      goto LABEL_33;
    }

    v15 = sSID2;
    v16 = self->_SSID;
    sSID3 = [parametersCopy SSID];
    v18 = v16;
    v19 = sSID3;
    if (([(NSString *)v18 isEqual:sSID3]& 1) == 0)
    {

      goto LABEL_28;
    }

    v96 = v19;
    v97 = v15;
  }

  BSSID = self->_BSSID;
  bSSID = [parametersCopy BSSID];
  if (BSSID == bSSID)
  {
    shortSSID = self->_shortSSID;
    if (shortSSID == [parametersCopy shortSSID])
    {
      goto LABEL_21;
    }

LABEL_26:
    v11 = 0;
    goto LABEL_62;
  }

  if (!self->_BSSID)
  {
    goto LABEL_26;
  }

  bSSID2 = [parametersCopy BSSID];
  if (!bSSID2)
  {
    goto LABEL_31;
  }

  v95 = bSSID2;
  v23 = self->_BSSID;
  bSSID3 = [parametersCopy BSSID];
  v25 = v23;
  v26 = bSSID3;
  if (([(NSString *)v25 isEqual:bSSID3]& 1) == 0)
  {

LABEL_30:
LABEL_31:

    if (SSID != sSID)
    {
    }

    goto LABEL_33;
  }

  v93 = v26;
  v27 = self->_shortSSID;
  if (v27 == [parametersCopy shortSSID])
  {
LABEL_21:
    SSIDList = self->_SSIDList;
    sSIDList = [parametersCopy SSIDList];
    if (SSIDList == sSIDList)
    {
      v92 = SSIDList;
      v94 = sSIDList;
      goto LABEL_37;
    }

    if (!self->_SSIDList)
    {
      v11 = 0;
      goto LABEL_60;
    }

    v94 = sSIDList;
    sSIDList2 = [parametersCopy SSIDList];
    if (sSIDList2)
    {
      v91 = sSIDList2;
      v92 = SSIDList;
      v32 = self->_SSIDList;
      sSIDList3 = [parametersCopy SSIDList];
      v34 = v32;
      v35 = sSIDList3;
      if (([(NSArray *)v34 isEqual:sSIDList3]& 1) != 0)
      {
        v90 = v35;
LABEL_37:
        numberOfScans = self->_numberOfScans;
        if (numberOfScans != [parametersCopy numberOfScans])
        {
          goto LABEL_56;
        }

        restTime = self->_restTime;
        if (restTime != [parametersCopy restTime])
        {
          goto LABEL_56;
        }

        dwellTime = self->_dwellTime;
        if (dwellTime != [parametersCopy dwellTime])
        {
          goto LABEL_56;
        }

        acceptableCacheAge = self->_acceptableCacheAge;
        if (acceptableCacheAge != [parametersCopy acceptableCacheAge])
        {
          goto LABEL_56;
        }

        BSSType = self->_BSSType;
        if (BSSType != [parametersCopy BSSType])
        {
          goto LABEL_56;
        }

        PHYMode = self->_PHYMode;
        if (PHYMode != [parametersCopy PHYMode])
        {
          goto LABEL_56;
        }

        scanType = self->_scanType;
        if (scanType != [parametersCopy scanType] || (minimumRSSI = self->_minimumRSSI, minimumRSSI != objc_msgSend(parametersCopy, "minimumRSSI")) || (maximumAge = self->_maximumAge, maximumAge != objc_msgSend(parametersCopy, "maximumAge")) || (minimumTimestamp = self->_minimumTimestamp, minimumTimestamp != objc_msgSend(parametersCopy, "minimumTimestamp")) || (mergeScanResults = self->_mergeScanResults, mergeScanResults != objc_msgSend(parametersCopy, "mergeScanResults")) || (includeHiddenNetworks = self->_includeHiddenNetworks, includeHiddenNetworks != objc_msgSend(parametersCopy, "includeHiddenNetworks")) || (addScanDurationToMaxAge = self->_addScanDurationToMaxAge, addScanDurationToMaxAge != objc_msgSend(parametersCopy, "addScanDurationToMaxAge")) || (scanFlags = self->_scanFlags, scanFlags != objc_msgSend(parametersCopy, "scanFlags")))
        {
LABEL_56:
          v52 = 0;
          v11 = 0;
          goto LABEL_57;
        }

        includeProperties = self->_includeProperties;
        [parametersCopy includeProperties];
        v89 = v88 = includeProperties;
        if (includeProperties != v89)
        {
          if (!self->_includeProperties)
          {
            v52 = 0;
LABEL_113:

            v11 = v52;
LABEL_57:
            sSIDList = v94;
            if (v92 != v94)
            {

              sSIDList = v94;
              v11 = v52;
            }

LABEL_60:

            if (BSSID == bSSID)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          }

          includeProperties = [parametersCopy includeProperties];
          if (!includeProperties)
          {
            goto LABEL_89;
          }

          v51 = self->_includeProperties;
          includeProperties2 = [parametersCopy includeProperties];
          if (([(NSSet *)v51 isEqual:?]& 1) == 0)
          {
            goto LABEL_88;
          }
        }

        includeScanResults = self->_includeScanResults;
        includeScanResults = [parametersCopy includeScanResults];
        v85 = includeScanResults;
        if (includeScanResults != includeScanResults)
        {
          if (!self->_includeScanResults)
          {
            v52 = 0;
LABEL_111:

            if (v88 != v89)
            {
            }

            goto LABEL_113;
          }

          includeScanResults2 = [parametersCopy includeScanResults];
          if (!includeScanResults2)
          {
            goto LABEL_87;
          }

          v56 = self->_includeScanResults;
          includeScanResults3 = [parametersCopy includeScanResults];
          if (([(NSArray *)v56 isEqual:?]& 1) == 0)
          {
LABEL_86:

LABEL_87:
            if (v88 != v89)
            {
LABEL_88:
            }

LABEL_89:

            if (v92 != v94)
            {
            }

            if (BSSID == bSSID)
            {
              goto LABEL_31;
            }

            goto LABEL_30;
          }
        }

        includeMatchingKnownNetworkProfiles = self->_includeMatchingKnownNetworkProfiles;
        if (includeMatchingKnownNetworkProfiles != [parametersCopy includeMatchingKnownNetworkProfiles])
        {
          v52 = 0;
          goto LABEL_109;
        }

        ANQPElementIDListForPasspointScanResults = self->_ANQPElementIDListForPasspointScanResults;
        [parametersCopy ANQPElementIDListForPasspointScanResults];
        v81 = v80 = ANQPElementIDListForPasspointScanResults;
        if (ANQPElementIDListForPasspointScanResults != v81)
        {
          if (!self->_ANQPElementIDListForPasspointScanResults)
          {
            v52 = 0;
LABEL_108:

LABEL_109:
            if (v85 != includeScanResults)
            {
            }

            goto LABEL_111;
          }

          aNQPElementIDListForPasspointScanResults = [parametersCopy ANQPElementIDListForPasspointScanResults];
          if (!aNQPElementIDListForPasspointScanResults)
          {
            goto LABEL_85;
          }

          v59 = self->_ANQPElementIDListForPasspointScanResults;
          aNQPElementIDListForPasspointScanResults2 = [parametersCopy ANQPElementIDListForPasspointScanResults];
          if (([(NSArray *)v59 isEqual:?]& 1) == 0)
          {
            goto LABEL_84;
          }
        }

        acceptableANQPCacheAgeForPasspointScanResults = self->_acceptableANQPCacheAgeForPasspointScanResults;
        if (acceptableANQPCacheAgeForPasspointScanResults != [parametersCopy acceptableANQPCacheAgeForPasspointScanResults] || (maximumANQPAgeForPasspointScanResults = self->_maximumANQPAgeForPasspointScanResults, maximumANQPAgeForPasspointScanResults != objc_msgSend(parametersCopy, "maximumANQPAgeForPasspointScanResults")) || (exclude6GChannels = self->_exclude6GChannels, exclude6GChannels != objc_msgSend(parametersCopy, "exclude6GChannels")))
        {
          v52 = 0;
          goto LABEL_105;
        }

        matchNetworkNamePrefix = self->_matchNetworkNamePrefix;
        [parametersCopy matchNetworkNamePrefix];
        v77 = v76 = matchNetworkNamePrefix;
        if (matchNetworkNamePrefix != v77)
        {
          if (!self->_matchNetworkNamePrefix)
          {
            v52 = 0;
LABEL_132:

LABEL_105:
            if (v80 != v81)
            {
            }

            goto LABEL_108;
          }

          matchNetworkNamePrefix = [parametersCopy matchNetworkNamePrefix];
          if (!matchNetworkNamePrefix)
          {
            v11 = 0;
LABEL_134:

            if (v80 != v81)
            {
            }

            if (v85 != includeScanResults)
            {
            }

            if (v88 != v89)
            {
            }

            if (v92 != v94)
            {
            }

            if (BSSID != bSSID)
            {
            }

            if (SSID != sSID)
            {
            }

LABEL_34:
            channels2 = v98;
            if (channels == channels)
            {
              goto LABEL_66;
            }

            goto LABEL_65;
          }

          v64 = self->_matchNetworkNamePrefix;
          matchNetworkNamePrefix2 = [parametersCopy matchNetworkNamePrefix];
          if (([(NSString *)v64 isEqual:?]& 1) == 0)
          {

            if (v80 == v81)
            {
LABEL_85:

              if (v85 == includeScanResults)
              {
                goto LABEL_87;
              }

              goto LABEL_86;
            }

LABEL_84:

            goto LABEL_85;
          }
        }

        filterPredicate = self->_filterPredicate;
        filterPredicate = [parametersCopy filterPredicate];
        v73 = filterPredicate;
        if (filterPredicate != filterPredicate)
        {
          if (!self->_filterPredicate)
          {
            goto LABEL_128;
          }

          filterPredicate2 = [parametersCopy filterPredicate];
          if (!filterPredicate2)
          {
LABEL_127:

            v52 = 0;
            goto LABEL_130;
          }

          v66 = self->_filterPredicate;
          filterPredicate3 = [parametersCopy filterPredicate];
          if (![(NSPredicate *)v66 isEqual:?])
          {
            v11 = 0;
            goto LABEL_123;
          }
        }

        includeBeaconCacheResults = self->_includeBeaconCacheResults;
        if (includeBeaconCacheResults == [parametersCopy includeBeaconCacheResults])
        {
          includeBackgroundScanCacheResults = self->_includeBackgroundScanCacheResults;
          if (includeBackgroundScanCacheResults == [parametersCopy includeBackgroundScanCacheResults])
          {
            sortByAutoJoinPreference = self->_sortByAutoJoinPreference;
            v11 = sortByAutoJoinPreference == [parametersCopy sortByAutoJoinPreference];
            v52 = v11;
            if (v73 != filterPredicate)
            {
LABEL_123:

              if (v76 != v77)
              {
              }

              goto LABEL_134;
            }

            goto LABEL_129;
          }
        }

        if (v73 != filterPredicate)
        {

          goto LABEL_127;
        }

LABEL_128:
        v52 = 0;
LABEL_129:

LABEL_130:
        if (v76 != v77)
        {
        }

        goto LABEL_132;
      }

      v54 = v93;
      if (BSSID == bSSID)
      {
        goto LABEL_71;
      }
    }

    else
    {

      if (BSSID == bSSID)
      {
LABEL_71:

        v15 = v97;
        if (SSID == sSID)
        {
          goto LABEL_33;
        }

LABEL_28:
LABEL_33:

        v11 = 0;
        goto LABEL_34;
      }

      v54 = v93;
    }

    goto LABEL_71;
  }

  v11 = 0;
LABEL_61:

LABEL_62:
  if (SSID != sSID)
  {
  }

LABEL_64:
  channels2 = v98;

  if (channels != channels)
  {
    goto LABEL_65;
  }

LABEL_66:

  return v11;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFScanParameters *)self isEqualToScanParameters:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v35 = [(NSArray *)self->_channels hash];
  v34 = [(NSString *)self->_SSID hash];
  v33 = [(NSString *)self->_BSSID hash];
  shortSSID = self->_shortSSID;
  v31 = [(NSArray *)self->_SSIDList hash];
  v23 = *&self->_numberOfScans;
  v24 = *&self->_dwellTime;
  BSSType = self->_BSSType;
  scanType = self->_scanType;
  PHYMode = self->_PHYMode;
  v32 = [MEMORY[0x1E696AD98] numberWithInteger:self->_minimumRSSI];
  v25 = [v32 hash];
  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_maximumAge];
  v3 = [v26 hash];
  mergeScanResults = self->_mergeScanResults;
  includeHiddenNetworks = self->_includeHiddenNetworks;
  addScanDurationToMaxAge = self->_addScanDurationToMaxAge;
  scanFlags = self->_scanFlags;
  v22 = v3;
  minimumTimestamp = self->_minimumTimestamp;
  v19 = [(NSSet *)self->_includeProperties hash];
  v6 = [(NSArray *)self->_includeScanResults hash];
  includeMatchingKnownNetworkProfiles = self->_includeMatchingKnownNetworkProfiles;
  v8 = [(NSArray *)self->_ANQPElementIDListForPasspointScanResults hash];
  acceptableANQPCacheAgeForPasspointScanResults = self->_acceptableANQPCacheAgeForPasspointScanResults;
  maximumANQPAgeForPasspointScanResults = self->_maximumANQPAgeForPasspointScanResults;
  exclude6GChannels = self->_exclude6GChannels;
  v12 = [(NSString *)self->_matchNetworkNamePrefix hash];
  v13 = [(NSPredicate *)self->_filterPredicate hash];
  v14 = veorq_s8(v23, v24);
  v15 = *&veor_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL)) ^ mergeScanResults;
  v16 = (includeHiddenNetworks ^ addScanDurationToMaxAge) & 1 ^ ((includeMatchingKnownNetworkProfiles ^ exclude6GChannels ^ self->_includeBeaconCacheResults ^ self->_includeBackgroundScanCacheResults) & 1) ^ shortSSID ^ self->_sortByAutoJoinPreference ^ minimumTimestamp ^ acceptableANQPCacheAgeForPasspointScanResults ^ maximumANQPAgeForPasspointScanResults ^ BSSType ^ PHYMode ^ scanType ^ v13 ^ scanFlags ^ v12 ^ v8 ^ v31 ^ v33 ^ v35 ^ v34 ^ v6 ^ v19 ^ v22 ^ v25;

  return v15 ^ v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CWFScanParameters allocWithZone:?]];
  [(CWFScanParameters *)v4 setSSID:self->_SSID];
  [(CWFScanParameters *)v4 setBSSID:self->_BSSID];
  [(CWFScanParameters *)v4 setShortSSID:self->_shortSSID];
  [(CWFScanParameters *)v4 setSSIDList:self->_SSIDList];
  [(CWFScanParameters *)v4 setChannels:self->_channels];
  [(CWFScanParameters *)v4 setBSSType:self->_BSSType];
  [(CWFScanParameters *)v4 setScanType:self->_scanType];
  [(CWFScanParameters *)v4 setAcceptableCacheAge:self->_acceptableCacheAge];
  [(CWFScanParameters *)v4 setMergeScanResults:self->_mergeScanResults];
  [(CWFScanParameters *)v4 setRestTime:self->_restTime];
  [(CWFScanParameters *)v4 setDwellTime:self->_dwellTime];
  [(CWFScanParameters *)v4 setNumberOfScans:self->_numberOfScans];
  [(CWFScanParameters *)v4 setPHYMode:self->_PHYMode];
  [(CWFScanParameters *)v4 setMinimumRSSI:self->_minimumRSSI];
  [(CWFScanParameters *)v4 setMaximumAge:self->_maximumAge];
  [(CWFScanParameters *)v4 setMinimumTimestamp:self->_minimumTimestamp];
  [(CWFScanParameters *)v4 setIncludeHiddenNetworks:self->_includeHiddenNetworks];
  [(CWFScanParameters *)v4 setAddScanDurationToMaxAge:self->_addScanDurationToMaxAge];
  [(CWFScanParameters *)v4 setScanFlags:self->_scanFlags];
  [(CWFScanParameters *)v4 setIncludeProperties:self->_includeProperties];
  [(CWFScanParameters *)v4 setIncludeScanResults:self->_includeScanResults];
  [(CWFScanParameters *)v4 setIncludeMatchingKnownNetworkProfiles:self->_includeMatchingKnownNetworkProfiles];
  [(CWFScanParameters *)v4 setANQPElementIDListForPasspointScanResults:self->_ANQPElementIDListForPasspointScanResults];
  [(CWFScanParameters *)v4 setAcceptableANQPCacheAgeForPasspointScanResults:self->_acceptableANQPCacheAgeForPasspointScanResults];
  [(CWFScanParameters *)v4 setMaximumANQPAgeForPasspointScanResults:self->_maximumANQPAgeForPasspointScanResults];
  [(CWFScanParameters *)v4 setExclude6GChannels:self->_exclude6GChannels];
  [(CWFScanParameters *)v4 setMatchNetworkNamePrefix:self->_matchNetworkNamePrefix];
  [(CWFScanParameters *)v4 setFilterPredicate:self->_filterPredicate];
  [(CWFScanParameters *)v4 setIncludeBeaconCacheResults:self->_includeBeaconCacheResults];
  [(CWFScanParameters *)v4 setIncludeBackgroundScanCacheResults:self->_includeBackgroundScanCacheResults];
  [(CWFScanParameters *)v4 setSortByAutoJoinPreference:self->_sortByAutoJoinPreference];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  SSID = self->_SSID;
  coderCopy = coder;
  [coderCopy encodeObject:SSID forKey:@"_SSID"];
  [coderCopy encodeObject:self->_BSSID forKey:@"_BSSID"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_shortSSID];
  [coderCopy encodeObject:v5 forKey:@"_shortSSID"];

  [coderCopy encodeObject:self->_SSIDList forKey:@"_SSIDList"];
  [coderCopy encodeObject:self->_channels forKey:@"_channels"];
  [coderCopy encodeInteger:self->_scanType forKey:@"_scanType"];
  [coderCopy encodeInteger:self->_PHYMode forKey:@"_PHYMode"];
  [coderCopy encodeInteger:self->_BSSType forKey:@"_BSSType"];
  [coderCopy encodeInteger:self->_minimumRSSI forKey:@"_minimumRSSI"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_maximumAge];
  [coderCopy encodeObject:v6 forKey:@"_maximumAge"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_minimumTimestamp];
  [coderCopy encodeObject:v7 forKey:@"_minimumTimestamp"];

  [coderCopy encodeBool:self->_includeHiddenNetworks forKey:@"_includeHiddenNetworks"];
  [coderCopy encodeBool:self->_addScanDurationToMaxAge forKey:@"_addScanDurationToMaxAge"];
  [coderCopy encodeBool:self->_mergeScanResults forKey:@"_mergeScanResults"];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_restTime];
  [coderCopy encodeObject:v8 forKey:@"_restTime"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_dwellTime];
  [coderCopy encodeObject:v9 forKey:@"_dwellTime"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_numberOfScans];
  [coderCopy encodeObject:v10 forKey:@"_numberOfScans"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_acceptableCacheAge];
  [coderCopy encodeObject:v11 forKey:@"_acceptableCacheAge"];

  [coderCopy encodeInteger:self->_scanFlags forKey:@"_scanFlags"];
  [coderCopy encodeObject:self->_includeProperties forKey:@"_includeProperties"];
  [coderCopy encodeObject:self->_includeScanResults forKey:@"_includeScanResults"];
  [coderCopy encodeBool:self->_includeMatchingKnownNetworkProfiles forKey:@"_includeMatchingKnownNetworkProfiles"];
  [coderCopy encodeObject:self->_ANQPElementIDListForPasspointScanResults forKey:@"_ANQPElementIDListForPasspointScanResults"];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_acceptableANQPCacheAgeForPasspointScanResults];
  [coderCopy encodeObject:v12 forKey:@"_acceptableANQPCacheAgeForPasspointScanResults"];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_maximumANQPAgeForPasspointScanResults];
  [coderCopy encodeObject:v13 forKey:@"_maximumANQPAgeForPasspointScanResults"];

  [coderCopy encodeBool:self->_exclude6GChannels forKey:@"_exclude6GChannels"];
  [coderCopy encodeObject:self->_matchNetworkNamePrefix forKey:@"_matchNetworkNamePrefix"];
  [coderCopy encodeObject:self->_filterPredicate forKey:@"_filterPredicate"];
  [coderCopy encodeBool:self->_includeBeaconCacheResults forKey:@"_includeBeaconCacheResults"];
  [coderCopy encodeBool:self->_includeBackgroundScanCacheResults forKey:@"_includeBackgroundScanCacheResults"];
  [coderCopy encodeBool:self->_sortByAutoJoinPreference forKey:@"_sortByAutoJoinPreference"];
}

- (CWFScanParameters)initWithCoder:(id)coder
{
  coderCopy = coder;
  v49.receiver = self;
  v49.super_class = CWFScanParameters;
  v5 = [(CWFScanParameters *)&v49 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_SSID"];
    SSID = v5->_SSID;
    v5->_SSID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_BSSID"];
    BSSID = v5->_BSSID;
    v5->_BSSID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_shortSSID"];
    v5->_shortSSID = [v10 unsignedIntegerValue];

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"_SSIDList"];
    SSIDList = v5->_SSIDList;
    v5->_SSIDList = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"_channels"];
    channels = v5->_channels;
    v5->_channels = v19;

    v5->_scanType = [coderCopy decodeIntegerForKey:@"_scanType"];
    v5->_BSSType = [coderCopy decodeIntegerForKey:@"_BSSType"];
    v5->_PHYMode = [coderCopy decodeIntegerForKey:@"_PHYMode"];
    v5->_minimumRSSI = [coderCopy decodeIntegerForKey:@"_minimumRSSI"];
    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_maximumAge"];
    v5->_maximumAge = [v21 unsignedIntegerValue];

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_minimumTimestamp"];
    v5->_minimumTimestamp = [v22 unsignedLongLongValue];

    v5->_includeHiddenNetworks = [coderCopy decodeBoolForKey:@"_includeHiddenNetworks"];
    v5->_addScanDurationToMaxAge = [coderCopy decodeBoolForKey:@"_addScanDurationToMaxAge"];
    v5->_mergeScanResults = [coderCopy decodeBoolForKey:@"_mergeScanResults"];
    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_restTime"];
    v5->_restTime = [v23 unsignedIntegerValue];

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_dwellTime"];
    v5->_dwellTime = [v24 unsignedIntegerValue];

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_numberOfScans"];
    v5->_numberOfScans = [v25 unsignedIntegerValue];

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_acceptableCacheAge"];
    v5->_acceptableCacheAge = [v26 unsignedIntegerValue];

    v5->_scanFlags = [coderCopy decodeIntegerForKey:@"_scanFlags"];
    v27 = MEMORY[0x1E695DFD8];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v30 = [coderCopy decodeObjectOfClasses:v29 forKey:@"_includeProperties"];
    includeProperties = v5->_includeProperties;
    v5->_includeProperties = v30;

    v32 = MEMORY[0x1E695DFD8];
    v33 = objc_opt_class();
    v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
    v35 = [coderCopy decodeObjectOfClasses:v34 forKey:@"_includeScanResults"];
    includeScanResults = v5->_includeScanResults;
    v5->_includeScanResults = v35;

    v5->_includeMatchingKnownNetworkProfiles = [coderCopy decodeBoolForKey:@"_includeMatchingKnownNetworkProfiles"];
    v37 = MEMORY[0x1E695DFD8];
    v38 = objc_opt_class();
    v39 = [v37 setWithObjects:{v38, objc_opt_class(), 0}];
    v40 = [coderCopy decodeObjectOfClasses:v39 forKey:@"_ANQPElementIDListForPasspointScanResults"];
    ANQPElementIDListForPasspointScanResults = v5->_ANQPElementIDListForPasspointScanResults;
    v5->_ANQPElementIDListForPasspointScanResults = v40;

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_acceptableANQPCacheAgeForPasspointScanResults"];
    v5->_acceptableANQPCacheAgeForPasspointScanResults = [v42 unsignedIntegerValue];

    v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_maximumANQPAgeForPasspointScanResults"];
    v5->_maximumANQPAgeForPasspointScanResults = [v43 unsignedIntegerValue];

    v5->_exclude6GChannels = [coderCopy decodeBoolForKey:@"_exclude6GChannels"];
    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_matchNetworkNamePrefix"];
    matchNetworkNamePrefix = v5->_matchNetworkNamePrefix;
    v5->_matchNetworkNamePrefix = v44;

    v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_filterPredicate"];
    filterPredicate = v5->_filterPredicate;
    v5->_filterPredicate = v46;

    [(NSPredicate *)v5->_filterPredicate acceptVisitor:v5 flags:3];
    if (![(CWFScanParameters *)v5 invalidPredicate])
    {
      [(NSPredicate *)v5->_filterPredicate allowEvaluation];
    }

    v5->_includeBeaconCacheResults = [coderCopy decodeBoolForKey:@"_includeBeaconCacheResults"];
    v5->_includeBackgroundScanCacheResults = [coderCopy decodeBoolForKey:@"_includeBackgroundScanCacheResults"];
    v5->_sortByAutoJoinPreference = [coderCopy decodeBoolForKey:@"_sortByAutoJoinPreference"];
  }

  return v5;
}

- (void)visitPredicateExpression:(id)expression
{
  expressionType = [expression expressionType];
  if (expressionType <= 0x13 && ((1 << expressionType) & 0x8001C) != 0)
  {

    MEMORY[0x1EEE66B58](self, sel_setInvalidPredicate_);
  }
}

- (void)visitPredicateOperator:(id)operator
{
  operatorType = [operator operatorType];
  if (operatorType == 11 || operatorType == 6)
  {

    MEMORY[0x1EEE66B58](self, sel_setInvalidPredicate_);
  }
}

@end