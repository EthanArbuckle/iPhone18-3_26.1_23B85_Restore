@interface CWFAutoJoinContext
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAutoJoinContext:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation CWFAutoJoinContext

- (BOOL)isEqualToAutoJoinContext:(id)a3
{
  v6 = a3;
  autoJoinParameters = self->_autoJoinParameters;
  v8 = [v6 autoJoinParameters];
  if (autoJoinParameters != v8)
  {
    if (!self->_autoJoinParameters || ([v6 autoJoinParameters], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v11 = 0;
      goto LABEL_109;
    }

    v3 = v9;
    v10 = self->_autoJoinParameters;
    v4 = [v6 autoJoinParameters];
    if (![(CWFAutoJoinParameters *)v10 isEqual:v4])
    {
      v11 = 0;
LABEL_108:

      goto LABEL_109;
    }
  }

  knownNetworks = self->_knownNetworks;
  v13 = [v6 knownNetworks];
  if (knownNetworks != v13)
  {
    if (!self->_knownNetworks)
    {
      v11 = 0;
LABEL_90:

      goto LABEL_107;
    }

    v14 = [v6 knownNetworks];
    if (!v14)
    {
      goto LABEL_106;
    }

    v108 = v14;
    v15 = self->_knownNetworks;
    v16 = [v6 knownNetworks];
    v17 = v15;
    v18 = v16;
    if (([(NSOrderedSet *)v17 isEqual:v16]& 1) == 0)
    {

LABEL_105:
      goto LABEL_106;
    }

    v104 = v18;
  }

  recentChannelList = self->_recentChannelList;
  v20 = [v6 recentChannelList];
  v21 = v20;
  if (recentChannelList == v20)
  {
    v105 = v13;
    v107 = recentChannelList;
    v26 = v20;
    v27 = v3;
    v28 = knownNetworks;
    v29 = v4;
  }

  else
  {
    if (!self->_recentChannelList)
    {
      v11 = 0;
LABEL_88:

      if (knownNetworks != v13)
      {
      }

      goto LABEL_90;
    }

    v22 = [v6 recentChannelList];
    if (!v22)
    {
      goto LABEL_102;
    }

    v107 = recentChannelList;
    v101 = v22;
    v23 = self->_recentChannelList;
    v24 = [v6 recentChannelList];
    v25 = v23;
    recentChannelList = v24;
    if (([(NSArray *)v25 isEqual:v24]& 1) == 0)
    {
LABEL_100:

LABEL_101:
      goto LABEL_102;
    }

    v105 = v13;
    v26 = v21;
    v27 = v3;
    v28 = knownNetworks;
    v29 = v4;
  }

  remainingChannelList = self->_remainingChannelList;
  v31 = [v6 remainingChannelList];
  v102 = remainingChannelList;
  if (remainingChannelList == v31)
  {
    v100 = recentChannelList;
    v103 = v31;
    v4 = v29;
    knownNetworks = v28;
    v3 = v27;
    goto LABEL_27;
  }

  v4 = v29;
  if (!self->_remainingChannelList)
  {
    v11 = 0;
    knownNetworks = v28;
    v3 = v27;
    v21 = v26;
    v13 = v105;
LABEL_86:

    if (v107 != v21)
    {
    }

    goto LABEL_88;
  }

  v103 = v31;
  v32 = [v6 remainingChannelList];
  knownNetworks = v28;
  if (v32)
  {
    v100 = recentChannelList;
    v97 = v32;
    v33 = v4;
    v34 = self->_remainingChannelList;
    v35 = [v6 remainingChannelList];
    v36 = v34;
    v37 = v35;
    if (([(NSArray *)v36 isEqual:v35]& 1) == 0)
    {

      v4 = v33;
      if (v107 != v26)
      {
      }

      v13 = v105;
      v3 = v27;
      if (knownNetworks == v105)
      {
        goto LABEL_106;
      }

      goto LABEL_104;
    }

    v94 = v37;
    v4 = v33;
    v3 = v27;
LABEL_27:
    SSIDList = self->_SSIDList;
    v39 = [v6 SSIDList];
    v98 = SSIDList;
    if (SSIDList == v39)
    {
      v99 = v39;
    }

    else
    {
      if (!self->_SSIDList)
      {
        v11 = 0;
        v21 = v26;
        v13 = v105;
LABEL_83:

        v31 = v103;
        if (v102 != v103)
        {

          v31 = v103;
        }

        recentChannelList = v100;
        goto LABEL_86;
      }

      v99 = v39;
      v40 = [v6 SSIDList];
      recentChannelList = v100;
      v21 = v26;
      v13 = v105;
      if (!v40)
      {
        goto LABEL_93;
      }

      v93 = v40;
      v95 = v4;
      v41 = self->_SSIDList;
      v42 = [v6 SSIDList];
      if (([(NSArray *)v41 isEqual:v42]& 1) == 0)
      {

        v4 = v95;
        if (v102 != v103)
        {
        }

        if (v107 == v21)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      }

      v26 = v21;
      v4 = v95;
      v90 = v42;
    }

    ANQPElementIDList = self->_ANQPElementIDList;
    v44 = [v6 ANQPElementIDList];
    if (ANQPElementIDList == v44)
    {
      v92 = ANQPElementIDList;
      v45 = v44;
      v96 = v4;
      v21 = v26;
      v13 = v105;
LABEL_48:
      maxScanChannelCount = self->_maxScanChannelCount;
      if (maxScanChannelCount == [v6 maxScanChannelCount])
      {
        maxScanSSIDCount = self->_maxScanSSIDCount;
        if (maxScanSSIDCount == [v6 maxScanSSIDCount])
        {
          maxScanCacheAge = self->_maxScanCacheAge;
          if (maxScanCacheAge == [v6 maxScanCacheAge])
          {
            maxANQPCacheAge = self->_maxANQPCacheAge;
            if (maxANQPCacheAge == [v6 maxANQPCacheAge])
            {
              minRSSI = self->_minRSSI;
              if (minRSSI == [v6 minRSSI])
              {
                dwellTime = self->_dwellTime;
                if (dwellTime == [v6 dwellTime])
                {
                  passiveScan = self->_passiveScan;
                  if (passiveScan == [v6 passiveScan])
                  {
                    cacheOnly = self->_cacheOnly;
                    if (cacheOnly == [v6 cacheOnly])
                    {
                      useCacheForPreviouslyScannedChannels = self->_useCacheForPreviouslyScannedChannels;
                      if (useCacheForPreviouslyScannedChannels == [v6 useCacheForPreviouslyScannedChannels])
                      {
                        v106 = v13;
                        v87 = knownNetworks;
                        v91 = v21;
                        v60 = v3;
                        v61 = [MEMORY[0x1E696AD98] numberWithDouble:self->_minBSSLocationAccuracy];
                        v62 = MEMORY[0x1E696AD98];
                        [v6 minBSSLocationAccuracy];
                        v63 = [v62 numberWithDouble:?];
                        if ([v61 isEqualToNumber:?])
                        {
                          v64 = [MEMORY[0x1E696AD98] numberWithDouble:self->_maxBSSLocationDistance];
                          v65 = MEMORY[0x1E696AD98];
                          [v6 maxBSSLocationDistance];
                          v66 = [v65 numberWithDouble:?];
                          v86 = v64;
                          v67 = v64;
                          v68 = v66;
                          if (![v67 isEqualToNumber:?])
                          {
                            goto LABEL_111;
                          }

                          maxScanCycles = self->_maxScanCycles;
                          if (maxScanCycles != [v6 maxScanCycles])
                          {
                            goto LABEL_111;
                          }

                          BSSChannelsOnly = self->_BSSChannelsOnly;
                          if (BSSChannelsOnly != [v6 BSSChannelsOnly])
                          {
                            goto LABEL_111;
                          }

                          maxBSSChannelCount = self->_maxBSSChannelCount;
                          if (maxBSSChannelCount != [v6 maxBSSChannelCount])
                          {
                            goto LABEL_111;
                          }

                          maxBSSChannelAge = self->_maxBSSChannelAge;
                          if (maxBSSChannelAge != [v6 maxBSSChannelAge])
                          {
                            goto LABEL_111;
                          }

                          maxHiddenKnownNetworkSSIDAge = self->_maxHiddenKnownNetworkSSIDAge;
                          if (maxHiddenKnownNetworkSSIDAge != [v6 maxHiddenKnownNetworkSSIDAge])
                          {
                            goto LABEL_111;
                          }

                          includeAdjacent5GHzChannel = self->_includeAdjacent5GHzChannel;
                          if (includeAdjacent5GHzChannel != [v6 includeAdjacent5GHzChannel])
                          {
                            goto LABEL_111;
                          }

                          allowStandalone6GHz = self->_allowStandalone6GHz;
                          if (allowStandalone6GHz == [v6 allowStandalone6GHz] && (include6GHzChannels = self->_include6GHzChannels, include6GHzChannels == objc_msgSend(v6, "include6GHzChannels")) && (alwaysIncludeRemainingNon2GHzChannels = self->_alwaysIncludeRemainingNon2GHzChannels, alwaysIncludeRemainingNon2GHzChannels == objc_msgSend(v6, "alwaysIncludeRemainingNon2GHzChannels")) && (allowDeferredCandidates = self->_allowDeferredCandidates, allowDeferredCandidates == objc_msgSend(v6, "allowDeferredCandidates")) && (didForceAllRemainingChannels = self->_didForceAllRemainingChannels, didForceAllRemainingChannels == objc_msgSend(v6, "didForceAllRemainingChannels")) && (skipRemainingNon2GHzChannelsUnlessKnownNetworkFound = self->_skipRemainingNon2GHzChannelsUnlessKnownNetworkFound, skipRemainingNon2GHzChannelsUnlessKnownNetworkFound == objc_msgSend(v6, "skipRemainingNon2GHzChannelsUnlessKnownNetworkFound")) && (preferUserConfiguredNetworks = self->_preferUserConfiguredNetworks, preferUserConfiguredNetworks == objc_msgSend(v6, "preferUserConfiguredNetworks")))
                          {
                            allowSSIDBasedMatchingForPasspointNetworks = self->_allowSSIDBasedMatchingForPasspointNetworks;
                            v11 = allowSSIDBasedMatchingForPasspointNetworks == [v6 allowSSIDBasedMatchingForPasspointNetworks];
                          }

                          else
                          {
LABEL_111:
                            v11 = 0;
                          }
                        }

                        else
                        {

                          v11 = 0;
                        }

                        v44 = v45;
                        v21 = v91;
                        v4 = v96;
                        v3 = v60;
                        knownNetworks = v87;
                        v13 = v106;
                        if (v92 == v45)
                        {
                          goto LABEL_78;
                        }

                        goto LABEL_74;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v11 = 0;
      v44 = v45;
      v4 = v96;
      if (v92 != v45)
      {
LABEL_74:
        v45 = v44;

LABEL_80:
LABEL_81:
        v39 = v99;
        if (v98 != v99)
        {

          v39 = v99;
        }

        goto LABEL_83;
      }

LABEL_78:

      goto LABEL_81;
    }

    v21 = v26;
    if (!self->_ANQPElementIDList)
    {
      v11 = 0;
      v13 = v105;
      goto LABEL_78;
    }

    v92 = ANQPElementIDList;
    v45 = v44;
    v46 = [v6 ANQPElementIDList];
    v13 = v105;
    if (!v46)
    {
      v11 = 0;
      goto LABEL_80;
    }

    v89 = v46;
    v96 = v4;
    v47 = self->_ANQPElementIDList;
    v48 = [v6 ANQPElementIDList];
    v49 = v47;
    v50 = v48;
    if (([(NSArray *)v49 isEqual:v48]& 1) != 0)
    {
      v88 = v50;
      goto LABEL_48;
    }

    v4 = v96;
    if (v98 == v99)
    {

      v83 = v103;
      recentChannelList = v100;
      if (v102 != v103)
      {
        goto LABEL_94;
      }

      goto LABEL_98;
    }

    recentChannelList = v100;
LABEL_93:

    v83 = v103;
    if (v102 != v103)
    {
LABEL_94:
      v84 = v83;

      goto LABEL_99;
    }

LABEL_98:

LABEL_99:
    if (v107 == v21)
    {
LABEL_102:

      goto LABEL_103;
    }

    goto LABEL_100;
  }

  v3 = v27;
  if (v107 != v26)
  {
  }

  v13 = v105;
LABEL_103:
  if (knownNetworks != v13)
  {
LABEL_104:

    goto LABEL_105;
  }

LABEL_106:

  v11 = 0;
LABEL_107:
  if (autoJoinParameters != v8)
  {
    goto LABEL_108;
  }

LABEL_109:

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFAutoJoinContext *)self isEqualToAutoJoinContext:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v31 = [(CWFAutoJoinParameters *)self->_autoJoinParameters hash];
  v30 = [(NSOrderedSet *)self->_knownNetworks hash];
  v29 = [(NSArray *)self->_recentChannelList hash];
  v28 = [(NSArray *)self->_remainingChannelList hash];
  v27 = [(NSArray *)self->_SSIDList hash];
  v3 = [(NSArray *)self->_ANQPElementIDList hash];
  maxScanChannelCount = self->_maxScanChannelCount;
  maxScanSSIDCount = self->_maxScanSSIDCount;
  passiveScan = self->_passiveScan;
  cacheOnly = self->_cacheOnly;
  useCacheForPreviouslyScannedChannels = self->_useCacheForPreviouslyScannedChannels;
  v26 = *&self->_maxScanCacheAge;
  v25 = *&self->_minRSSI;
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_minBSSLocationAccuracy];
  v10 = [v9 hash];
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_maxBSSLocationDistance];
  v12 = [v11 hash];
  maxScanCycles = self->_maxScanCycles;
  BSSChannelsOnly = self->_BSSChannelsOnly;
  maxBSSChannelCount = self->_maxBSSChannelCount;
  maxBSSChannelAge = self->_maxBSSChannelAge;
  maxHiddenKnownNetworkSSIDAge = self->_maxHiddenKnownNetworkSSIDAge;
  v18 = vand_s8(vcltz_s8(vshl_n_s8(*&self->_includeAdjacent5GHzChannel, 7uLL)), 0x8040201008040201);
  v18.i8[0] = vaddv_s8(v18);
  allowSSIDBasedMatchingForPasspointNetworks = self->_allowSSIDBasedMatchingForPasspointNetworks;
  v20 = v18.i32[0] ^ (v18.i32[0] >> 4) ^ ((v18.i32[0] ^ (v18.i32[0] >> 4)) >> 2);
  v21 = (v20 ^ (v20 >> 1)) & 1;
  v22 = veorq_s8(v26, v25);
  v23 = *&veor_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL)) ^ passiveScan ^ (cacheOnly ^ useCacheForPreviouslyScannedChannels) & 1 ^ maxScanChannelCount ^ maxScanSSIDCount ^ (BSSChannelsOnly ^ allowSSIDBasedMatchingForPasspointNetworks) & 1 ^ maxScanCycles ^ maxBSSChannelCount ^ maxBSSChannelAge ^ maxHiddenKnownNetworkSSIDAge ^ v12 ^ v10 ^ v3 ^ v27 ^ v28 ^ v29 ^ v31 ^ v30;

  return v23 ^ v21;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CWFAutoJoinContext allocWithZone:?]];
  [(CWFAutoJoinContext *)v4 setAutoJoinParameters:self->_autoJoinParameters];
  [(CWFAutoJoinContext *)v4 setKnownNetworks:self->_knownNetworks];
  [(CWFAutoJoinContext *)v4 setRecentChannelList:self->_recentChannelList];
  [(CWFAutoJoinContext *)v4 setRemainingChannelList:self->_remainingChannelList];
  [(CWFAutoJoinContext *)v4 setSSIDList:self->_SSIDList];
  [(CWFAutoJoinContext *)v4 setANQPElementIDList:self->_ANQPElementIDList];
  [(CWFAutoJoinContext *)v4 setMaxScanChannelCount:self->_maxScanChannelCount];
  [(CWFAutoJoinContext *)v4 setMaxScanSSIDCount:self->_maxScanSSIDCount];
  [(CWFAutoJoinContext *)v4 setMaxScanCacheAge:self->_maxScanCacheAge];
  [(CWFAutoJoinContext *)v4 setMaxANQPCacheAge:self->_maxANQPCacheAge];
  [(CWFAutoJoinContext *)v4 setMinRSSI:self->_minRSSI];
  [(CWFAutoJoinContext *)v4 setDwellTime:self->_dwellTime];
  [(CWFAutoJoinContext *)v4 setPassiveScan:self->_passiveScan];
  [(CWFAutoJoinContext *)v4 setCacheOnly:self->_cacheOnly];
  [(CWFAutoJoinContext *)v4 setUseCacheForPreviouslyScannedChannels:self->_useCacheForPreviouslyScannedChannels];
  [(CWFAutoJoinContext *)v4 setMinBSSLocationAccuracy:self->_minBSSLocationAccuracy];
  [(CWFAutoJoinContext *)v4 setMaxBSSLocationDistance:self->_maxBSSLocationDistance];
  [(CWFAutoJoinContext *)v4 setMaxScanCycles:self->_maxScanCycles];
  [(CWFAutoJoinContext *)v4 setBSSChannelsOnly:self->_BSSChannelsOnly];
  [(CWFAutoJoinContext *)v4 setMaxBSSChannelCount:self->_maxBSSChannelCount];
  [(CWFAutoJoinContext *)v4 setMaxBSSChannelAge:self->_maxBSSChannelAge];
  [(CWFAutoJoinContext *)v4 setMaxHiddenKnownNetworkSSIDAge:self->_maxHiddenKnownNetworkSSIDAge];
  [(CWFAutoJoinContext *)v4 setIncludeAdjacent5GHzChannel:self->_includeAdjacent5GHzChannel];
  [(CWFAutoJoinContext *)v4 setAllowStandalone6GHz:self->_allowStandalone6GHz];
  [(CWFAutoJoinContext *)v4 setInclude6GHzChannels:self->_include6GHzChannels];
  [(CWFAutoJoinContext *)v4 setAlwaysIncludeRemainingNon2GHzChannels:self->_alwaysIncludeRemainingNon2GHzChannels];
  [(CWFAutoJoinContext *)v4 setAllowDeferredCandidates:self->_allowDeferredCandidates];
  [(CWFAutoJoinContext *)v4 setDidForceAllRemainingChannels:self->_didForceAllRemainingChannels];
  [(CWFAutoJoinContext *)v4 setSkipRemainingNon2GHzChannelsUnlessKnownNetworkFound:self->_skipRemainingNon2GHzChannelsUnlessKnownNetworkFound];
  [(CWFAutoJoinContext *)v4 setPreferUserConfiguredNetworks:self->_preferUserConfiguredNetworks];
  [(CWFAutoJoinContext *)v4 setAllowSSIDBasedMatchingForPasspointNetworks:self->_allowSSIDBasedMatchingForPasspointNetworks];
  return v4;
}

@end