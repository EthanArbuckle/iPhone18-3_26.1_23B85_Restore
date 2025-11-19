@interface CWFScanParameters
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToScanParameters:(id)a3;
- (CWFScanParameters)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)visitPredicateExpression:(id)a3;
- (void)visitPredicateOperator:(id)a3;
@end

@implementation CWFScanParameters

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  [v3 appendFormat:@"channels=%@, ", self->_channels];
  v4 = [(NSString *)self->_SSID redactedForWiFi];
  [v3 appendFormat:@"SSID=%@, ", v4];

  v5 = [(NSString *)self->_BSSID redactedForWiFi];
  [v3 appendFormat:@"BSSID=%@, ", v5];

  [v3 appendFormat:@"shortSSID=%lu, ", self->_shortSSID];
  v6 = [(NSArray *)self->_SSIDList componentsJoinedByString:@", "];
  v7 = [v6 redactedForWiFi];
  [v3 appendFormat:@"SSIDList=[%@], ", v7];

  [v3 appendFormat:@"numberOfScans=%lu, ", self->_numberOfScans];
  [v3 appendFormat:@"restTime=%lu, ", self->_restTime];
  [v3 appendFormat:@"dwellTime=%lu, ", self->_dwellTime];
  [v3 appendFormat:@"acceptableCacheAge=%lu, ", self->_acceptableCacheAge];
  [v3 appendFormat:@"BSSType=%u, ", self->_BSSType];
  [v3 appendFormat:@"PHYMode=%u, ", self->_PHYMode];
  [v3 appendFormat:@"scanType=%u, ", self->_scanType];
  [v3 appendFormat:@"minRSSI=%ld, ", self->_minimumRSSI];
  [v3 appendFormat:@"maxAge=%lu, ", self->_maximumAge];
  [v3 appendFormat:@"minTimestamp=%llu, ", self->_minimumTimestamp];
  [v3 appendFormat:@"scanFlags=0x%x, ", self->_scanFlags];
  [v3 appendFormat:@"merge=%d, ", self->_mergeScanResults];
  [v3 appendFormat:@"includeHidden=%d, ", self->_includeHiddenNetworks];
  [v3 appendFormat:@"includeProperties=%@, ", self->_includeProperties];
  [v3 appendFormat:@"includeScanResults=%@, ", self->_includeScanResults];
  [v3 appendFormat:@"includeMatchingKnownNetworks=%d, ", self->_includeMatchingKnownNetworkProfiles];
  [v3 appendFormat:@"ANQPElementIDList=%@, ", self->_ANQPElementIDListForPasspointScanResults];
  [v3 appendFormat:@"acceptableANQPCacheAge=%lu, ", self->_acceptableANQPCacheAgeForPasspointScanResults];
  [v3 appendFormat:@"maxANQPAge=%lu, ", self->_maximumANQPAgeForPasspointScanResults];
  [v3 appendFormat:@"exclude6GChannels=%d, ", self->_exclude6GChannels];
  [v3 appendFormat:@"matchNetworkNamePrefix=%@, ", self->_matchNetworkNamePrefix];
  [v3 appendFormat:@"filterPredicate=%@, ", self->_filterPredicate];
  [v3 appendFormat:@"includeBeaconCache=%d, ", self->_includeBeaconCacheResults];
  [v3 appendFormat:@"includeBackgroundCache=%d, ", self->_includeBackgroundScanCacheResults];
  [v3 appendFormat:@"sortByAutoJoinPreference=%d", self->_sortByAutoJoinPreference];
  [v3 appendFormat:@"addScanDurationToMaxAge=%d, ", self->_addScanDurationToMaxAge];

  return v3;
}

- (BOOL)isEqualToScanParameters:(id)a3
{
  v5 = a3;
  channels = self->_channels;
  v7 = [v5 channels];
  if (channels != v7)
  {
    if (!self->_channels || ([v5 channels], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v11 = 0;
      goto LABEL_66;
    }

    v3 = v8;
    v9 = self->_channels;
    v10 = [v5 channels];
    if (![(NSArray *)v9 isEqual:v10])
    {
      v11 = 0;
LABEL_65:

      goto LABEL_66;
    }

    v98 = v10;
  }

  SSID = self->_SSID;
  v13 = [v5 SSID];
  if (SSID != v13)
  {
    if (!self->_SSID)
    {
      v11 = 0;
      goto LABEL_64;
    }

    v14 = [v5 SSID];
    if (!v14)
    {
      goto LABEL_33;
    }

    v15 = v14;
    v16 = self->_SSID;
    v17 = [v5 SSID];
    v18 = v16;
    v19 = v17;
    if (([(NSString *)v18 isEqual:v17]& 1) == 0)
    {

      goto LABEL_28;
    }

    v96 = v19;
    v97 = v15;
  }

  BSSID = self->_BSSID;
  v21 = [v5 BSSID];
  if (BSSID == v21)
  {
    shortSSID = self->_shortSSID;
    if (shortSSID == [v5 shortSSID])
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

  v22 = [v5 BSSID];
  if (!v22)
  {
    goto LABEL_31;
  }

  v95 = v22;
  v23 = self->_BSSID;
  v24 = [v5 BSSID];
  v25 = v23;
  v26 = v24;
  if (([(NSString *)v25 isEqual:v24]& 1) == 0)
  {

LABEL_30:
LABEL_31:

    if (SSID != v13)
    {
    }

    goto LABEL_33;
  }

  v93 = v26;
  v27 = self->_shortSSID;
  if (v27 == [v5 shortSSID])
  {
LABEL_21:
    SSIDList = self->_SSIDList;
    v30 = [v5 SSIDList];
    if (SSIDList == v30)
    {
      v92 = SSIDList;
      v94 = v30;
      goto LABEL_37;
    }

    if (!self->_SSIDList)
    {
      v11 = 0;
      goto LABEL_60;
    }

    v94 = v30;
    v31 = [v5 SSIDList];
    if (v31)
    {
      v91 = v31;
      v92 = SSIDList;
      v32 = self->_SSIDList;
      v33 = [v5 SSIDList];
      v34 = v32;
      v35 = v33;
      if (([(NSArray *)v34 isEqual:v33]& 1) != 0)
      {
        v90 = v35;
LABEL_37:
        numberOfScans = self->_numberOfScans;
        if (numberOfScans != [v5 numberOfScans])
        {
          goto LABEL_56;
        }

        restTime = self->_restTime;
        if (restTime != [v5 restTime])
        {
          goto LABEL_56;
        }

        dwellTime = self->_dwellTime;
        if (dwellTime != [v5 dwellTime])
        {
          goto LABEL_56;
        }

        acceptableCacheAge = self->_acceptableCacheAge;
        if (acceptableCacheAge != [v5 acceptableCacheAge])
        {
          goto LABEL_56;
        }

        BSSType = self->_BSSType;
        if (BSSType != [v5 BSSType])
        {
          goto LABEL_56;
        }

        PHYMode = self->_PHYMode;
        if (PHYMode != [v5 PHYMode])
        {
          goto LABEL_56;
        }

        scanType = self->_scanType;
        if (scanType != [v5 scanType] || (minimumRSSI = self->_minimumRSSI, minimumRSSI != objc_msgSend(v5, "minimumRSSI")) || (maximumAge = self->_maximumAge, maximumAge != objc_msgSend(v5, "maximumAge")) || (minimumTimestamp = self->_minimumTimestamp, minimumTimestamp != objc_msgSend(v5, "minimumTimestamp")) || (mergeScanResults = self->_mergeScanResults, mergeScanResults != objc_msgSend(v5, "mergeScanResults")) || (includeHiddenNetworks = self->_includeHiddenNetworks, includeHiddenNetworks != objc_msgSend(v5, "includeHiddenNetworks")) || (addScanDurationToMaxAge = self->_addScanDurationToMaxAge, addScanDurationToMaxAge != objc_msgSend(v5, "addScanDurationToMaxAge")) || (scanFlags = self->_scanFlags, scanFlags != objc_msgSend(v5, "scanFlags")))
        {
LABEL_56:
          v52 = 0;
          v11 = 0;
          goto LABEL_57;
        }

        includeProperties = self->_includeProperties;
        [v5 includeProperties];
        v89 = v88 = includeProperties;
        if (includeProperties != v89)
        {
          if (!self->_includeProperties)
          {
            v52 = 0;
LABEL_113:

            v11 = v52;
LABEL_57:
            v30 = v94;
            if (v92 != v94)
            {

              v30 = v94;
              v11 = v52;
            }

LABEL_60:

            if (BSSID == v21)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          }

          v86 = [v5 includeProperties];
          if (!v86)
          {
            goto LABEL_89;
          }

          v51 = self->_includeProperties;
          v84 = [v5 includeProperties];
          if (([(NSSet *)v51 isEqual:?]& 1) == 0)
          {
            goto LABEL_88;
          }
        }

        includeScanResults = self->_includeScanResults;
        v87 = [v5 includeScanResults];
        v85 = includeScanResults;
        if (includeScanResults != v87)
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

          v83 = [v5 includeScanResults];
          if (!v83)
          {
            goto LABEL_87;
          }

          v56 = self->_includeScanResults;
          v82 = [v5 includeScanResults];
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

            if (BSSID == v21)
            {
              goto LABEL_31;
            }

            goto LABEL_30;
          }
        }

        includeMatchingKnownNetworkProfiles = self->_includeMatchingKnownNetworkProfiles;
        if (includeMatchingKnownNetworkProfiles != [v5 includeMatchingKnownNetworkProfiles])
        {
          v52 = 0;
          goto LABEL_109;
        }

        ANQPElementIDListForPasspointScanResults = self->_ANQPElementIDListForPasspointScanResults;
        [v5 ANQPElementIDListForPasspointScanResults];
        v81 = v80 = ANQPElementIDListForPasspointScanResults;
        if (ANQPElementIDListForPasspointScanResults != v81)
        {
          if (!self->_ANQPElementIDListForPasspointScanResults)
          {
            v52 = 0;
LABEL_108:

LABEL_109:
            if (v85 != v87)
            {
            }

            goto LABEL_111;
          }

          v79 = [v5 ANQPElementIDListForPasspointScanResults];
          if (!v79)
          {
            goto LABEL_85;
          }

          v59 = self->_ANQPElementIDListForPasspointScanResults;
          v78 = [v5 ANQPElementIDListForPasspointScanResults];
          if (([(NSArray *)v59 isEqual:?]& 1) == 0)
          {
            goto LABEL_84;
          }
        }

        acceptableANQPCacheAgeForPasspointScanResults = self->_acceptableANQPCacheAgeForPasspointScanResults;
        if (acceptableANQPCacheAgeForPasspointScanResults != [v5 acceptableANQPCacheAgeForPasspointScanResults] || (maximumANQPAgeForPasspointScanResults = self->_maximumANQPAgeForPasspointScanResults, maximumANQPAgeForPasspointScanResults != objc_msgSend(v5, "maximumANQPAgeForPasspointScanResults")) || (exclude6GChannels = self->_exclude6GChannels, exclude6GChannels != objc_msgSend(v5, "exclude6GChannels")))
        {
          v52 = 0;
          goto LABEL_105;
        }

        matchNetworkNamePrefix = self->_matchNetworkNamePrefix;
        [v5 matchNetworkNamePrefix];
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

          v74 = [v5 matchNetworkNamePrefix];
          if (!v74)
          {
            v11 = 0;
LABEL_134:

            if (v80 != v81)
            {
            }

            if (v85 != v87)
            {
            }

            if (v88 != v89)
            {
            }

            if (v92 != v94)
            {
            }

            if (BSSID != v21)
            {
            }

            if (SSID != v13)
            {
            }

LABEL_34:
            v10 = v98;
            if (channels == v7)
            {
              goto LABEL_66;
            }

            goto LABEL_65;
          }

          v64 = self->_matchNetworkNamePrefix;
          v72 = [v5 matchNetworkNamePrefix];
          if (([(NSString *)v64 isEqual:?]& 1) == 0)
          {

            if (v80 == v81)
            {
LABEL_85:

              if (v85 == v87)
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
        v75 = [v5 filterPredicate];
        v73 = filterPredicate;
        if (filterPredicate != v75)
        {
          if (!self->_filterPredicate)
          {
            goto LABEL_128;
          }

          v71 = [v5 filterPredicate];
          if (!v71)
          {
LABEL_127:

            v52 = 0;
            goto LABEL_130;
          }

          v66 = self->_filterPredicate;
          v70 = [v5 filterPredicate];
          if (![(NSPredicate *)v66 isEqual:?])
          {
            v11 = 0;
            goto LABEL_123;
          }
        }

        includeBeaconCacheResults = self->_includeBeaconCacheResults;
        if (includeBeaconCacheResults == [v5 includeBeaconCacheResults])
        {
          includeBackgroundScanCacheResults = self->_includeBackgroundScanCacheResults;
          if (includeBackgroundScanCacheResults == [v5 includeBackgroundScanCacheResults])
          {
            sortByAutoJoinPreference = self->_sortByAutoJoinPreference;
            v11 = sortByAutoJoinPreference == [v5 sortByAutoJoinPreference];
            v52 = v11;
            if (v73 != v75)
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

        if (v73 != v75)
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
      if (BSSID == v21)
      {
        goto LABEL_71;
      }
    }

    else
    {

      if (BSSID == v21)
      {
LABEL_71:

        v15 = v97;
        if (SSID == v13)
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
  if (SSID != v13)
  {
  }

LABEL_64:
  v10 = v98;

  if (channels != v7)
  {
    goto LABEL_65;
  }

LABEL_66:

  return v11;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFScanParameters *)self isEqualToScanParameters:v5];
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

- (id)copyWithZone:(_NSZone *)a3
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

- (void)encodeWithCoder:(id)a3
{
  SSID = self->_SSID;
  v14 = a3;
  [v14 encodeObject:SSID forKey:@"_SSID"];
  [v14 encodeObject:self->_BSSID forKey:@"_BSSID"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_shortSSID];
  [v14 encodeObject:v5 forKey:@"_shortSSID"];

  [v14 encodeObject:self->_SSIDList forKey:@"_SSIDList"];
  [v14 encodeObject:self->_channels forKey:@"_channels"];
  [v14 encodeInteger:self->_scanType forKey:@"_scanType"];
  [v14 encodeInteger:self->_PHYMode forKey:@"_PHYMode"];
  [v14 encodeInteger:self->_BSSType forKey:@"_BSSType"];
  [v14 encodeInteger:self->_minimumRSSI forKey:@"_minimumRSSI"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_maximumAge];
  [v14 encodeObject:v6 forKey:@"_maximumAge"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_minimumTimestamp];
  [v14 encodeObject:v7 forKey:@"_minimumTimestamp"];

  [v14 encodeBool:self->_includeHiddenNetworks forKey:@"_includeHiddenNetworks"];
  [v14 encodeBool:self->_addScanDurationToMaxAge forKey:@"_addScanDurationToMaxAge"];
  [v14 encodeBool:self->_mergeScanResults forKey:@"_mergeScanResults"];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_restTime];
  [v14 encodeObject:v8 forKey:@"_restTime"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_dwellTime];
  [v14 encodeObject:v9 forKey:@"_dwellTime"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_numberOfScans];
  [v14 encodeObject:v10 forKey:@"_numberOfScans"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_acceptableCacheAge];
  [v14 encodeObject:v11 forKey:@"_acceptableCacheAge"];

  [v14 encodeInteger:self->_scanFlags forKey:@"_scanFlags"];
  [v14 encodeObject:self->_includeProperties forKey:@"_includeProperties"];
  [v14 encodeObject:self->_includeScanResults forKey:@"_includeScanResults"];
  [v14 encodeBool:self->_includeMatchingKnownNetworkProfiles forKey:@"_includeMatchingKnownNetworkProfiles"];
  [v14 encodeObject:self->_ANQPElementIDListForPasspointScanResults forKey:@"_ANQPElementIDListForPasspointScanResults"];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_acceptableANQPCacheAgeForPasspointScanResults];
  [v14 encodeObject:v12 forKey:@"_acceptableANQPCacheAgeForPasspointScanResults"];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_maximumANQPAgeForPasspointScanResults];
  [v14 encodeObject:v13 forKey:@"_maximumANQPAgeForPasspointScanResults"];

  [v14 encodeBool:self->_exclude6GChannels forKey:@"_exclude6GChannels"];
  [v14 encodeObject:self->_matchNetworkNamePrefix forKey:@"_matchNetworkNamePrefix"];
  [v14 encodeObject:self->_filterPredicate forKey:@"_filterPredicate"];
  [v14 encodeBool:self->_includeBeaconCacheResults forKey:@"_includeBeaconCacheResults"];
  [v14 encodeBool:self->_includeBackgroundScanCacheResults forKey:@"_includeBackgroundScanCacheResults"];
  [v14 encodeBool:self->_sortByAutoJoinPreference forKey:@"_sortByAutoJoinPreference"];
}

- (CWFScanParameters)initWithCoder:(id)a3
{
  v4 = a3;
  v49.receiver = self;
  v49.super_class = CWFScanParameters;
  v5 = [(CWFScanParameters *)&v49 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_SSID"];
    SSID = v5->_SSID;
    v5->_SSID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_BSSID"];
    BSSID = v5->_BSSID;
    v5->_BSSID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_shortSSID"];
    v5->_shortSSID = [v10 unsignedIntegerValue];

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"_SSIDList"];
    SSIDList = v5->_SSIDList;
    v5->_SSIDList = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"_channels"];
    channels = v5->_channels;
    v5->_channels = v19;

    v5->_scanType = [v4 decodeIntegerForKey:@"_scanType"];
    v5->_BSSType = [v4 decodeIntegerForKey:@"_BSSType"];
    v5->_PHYMode = [v4 decodeIntegerForKey:@"_PHYMode"];
    v5->_minimumRSSI = [v4 decodeIntegerForKey:@"_minimumRSSI"];
    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_maximumAge"];
    v5->_maximumAge = [v21 unsignedIntegerValue];

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_minimumTimestamp"];
    v5->_minimumTimestamp = [v22 unsignedLongLongValue];

    v5->_includeHiddenNetworks = [v4 decodeBoolForKey:@"_includeHiddenNetworks"];
    v5->_addScanDurationToMaxAge = [v4 decodeBoolForKey:@"_addScanDurationToMaxAge"];
    v5->_mergeScanResults = [v4 decodeBoolForKey:@"_mergeScanResults"];
    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_restTime"];
    v5->_restTime = [v23 unsignedIntegerValue];

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_dwellTime"];
    v5->_dwellTime = [v24 unsignedIntegerValue];

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_numberOfScans"];
    v5->_numberOfScans = [v25 unsignedIntegerValue];

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_acceptableCacheAge"];
    v5->_acceptableCacheAge = [v26 unsignedIntegerValue];

    v5->_scanFlags = [v4 decodeIntegerForKey:@"_scanFlags"];
    v27 = MEMORY[0x1E695DFD8];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v30 = [v4 decodeObjectOfClasses:v29 forKey:@"_includeProperties"];
    includeProperties = v5->_includeProperties;
    v5->_includeProperties = v30;

    v32 = MEMORY[0x1E695DFD8];
    v33 = objc_opt_class();
    v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
    v35 = [v4 decodeObjectOfClasses:v34 forKey:@"_includeScanResults"];
    includeScanResults = v5->_includeScanResults;
    v5->_includeScanResults = v35;

    v5->_includeMatchingKnownNetworkProfiles = [v4 decodeBoolForKey:@"_includeMatchingKnownNetworkProfiles"];
    v37 = MEMORY[0x1E695DFD8];
    v38 = objc_opt_class();
    v39 = [v37 setWithObjects:{v38, objc_opt_class(), 0}];
    v40 = [v4 decodeObjectOfClasses:v39 forKey:@"_ANQPElementIDListForPasspointScanResults"];
    ANQPElementIDListForPasspointScanResults = v5->_ANQPElementIDListForPasspointScanResults;
    v5->_ANQPElementIDListForPasspointScanResults = v40;

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_acceptableANQPCacheAgeForPasspointScanResults"];
    v5->_acceptableANQPCacheAgeForPasspointScanResults = [v42 unsignedIntegerValue];

    v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_maximumANQPAgeForPasspointScanResults"];
    v5->_maximumANQPAgeForPasspointScanResults = [v43 unsignedIntegerValue];

    v5->_exclude6GChannels = [v4 decodeBoolForKey:@"_exclude6GChannels"];
    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_matchNetworkNamePrefix"];
    matchNetworkNamePrefix = v5->_matchNetworkNamePrefix;
    v5->_matchNetworkNamePrefix = v44;

    v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_filterPredicate"];
    filterPredicate = v5->_filterPredicate;
    v5->_filterPredicate = v46;

    [(NSPredicate *)v5->_filterPredicate acceptVisitor:v5 flags:3];
    if (![(CWFScanParameters *)v5 invalidPredicate])
    {
      [(NSPredicate *)v5->_filterPredicate allowEvaluation];
    }

    v5->_includeBeaconCacheResults = [v4 decodeBoolForKey:@"_includeBeaconCacheResults"];
    v5->_includeBackgroundScanCacheResults = [v4 decodeBoolForKey:@"_includeBackgroundScanCacheResults"];
    v5->_sortByAutoJoinPreference = [v4 decodeBoolForKey:@"_sortByAutoJoinPreference"];
  }

  return v5;
}

- (void)visitPredicateExpression:(id)a3
{
  v4 = [a3 expressionType];
  if (v4 <= 0x13 && ((1 << v4) & 0x8001C) != 0)
  {

    MEMORY[0x1EEE66B58](self, sel_setInvalidPredicate_);
  }
}

- (void)visitPredicateOperator:(id)a3
{
  v4 = [a3 operatorType];
  if (v4 == 11 || v4 == 6)
  {

    MEMORY[0x1EEE66B58](self, sel_setInvalidPredicate_);
  }
}

@end