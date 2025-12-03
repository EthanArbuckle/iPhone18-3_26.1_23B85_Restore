@interface CWFAutoJoinContext
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAutoJoinContext:(id)context;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation CWFAutoJoinContext

- (BOOL)isEqualToAutoJoinContext:(id)context
{
  contextCopy = context;
  autoJoinParameters = self->_autoJoinParameters;
  autoJoinParameters = [contextCopy autoJoinParameters];
  if (autoJoinParameters != autoJoinParameters)
  {
    if (!self->_autoJoinParameters || ([contextCopy autoJoinParameters], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v11 = 0;
      goto LABEL_109;
    }

    v3 = v9;
    v10 = self->_autoJoinParameters;
    autoJoinParameters2 = [contextCopy autoJoinParameters];
    if (![(CWFAutoJoinParameters *)v10 isEqual:autoJoinParameters2])
    {
      v11 = 0;
LABEL_108:

      goto LABEL_109;
    }
  }

  knownNetworks = self->_knownNetworks;
  knownNetworks = [contextCopy knownNetworks];
  if (knownNetworks != knownNetworks)
  {
    if (!self->_knownNetworks)
    {
      v11 = 0;
LABEL_90:

      goto LABEL_107;
    }

    knownNetworks2 = [contextCopy knownNetworks];
    if (!knownNetworks2)
    {
      goto LABEL_106;
    }

    v108 = knownNetworks2;
    v15 = self->_knownNetworks;
    knownNetworks3 = [contextCopy knownNetworks];
    v17 = v15;
    v18 = knownNetworks3;
    if (([(NSOrderedSet *)v17 isEqual:knownNetworks3]& 1) == 0)
    {

LABEL_105:
      goto LABEL_106;
    }

    v104 = v18;
  }

  recentChannelList = self->_recentChannelList;
  recentChannelList = [contextCopy recentChannelList];
  v21 = recentChannelList;
  if (recentChannelList == recentChannelList)
  {
    v105 = knownNetworks;
    v107 = recentChannelList;
    v26 = recentChannelList;
    v27 = v3;
    v28 = knownNetworks;
    v29 = autoJoinParameters2;
  }

  else
  {
    if (!self->_recentChannelList)
    {
      v11 = 0;
LABEL_88:

      if (knownNetworks != knownNetworks)
      {
      }

      goto LABEL_90;
    }

    recentChannelList2 = [contextCopy recentChannelList];
    if (!recentChannelList2)
    {
      goto LABEL_102;
    }

    v107 = recentChannelList;
    v101 = recentChannelList2;
    v23 = self->_recentChannelList;
    recentChannelList3 = [contextCopy recentChannelList];
    v25 = v23;
    recentChannelList = recentChannelList3;
    if (([(NSArray *)v25 isEqual:recentChannelList3]& 1) == 0)
    {
LABEL_100:

LABEL_101:
      goto LABEL_102;
    }

    v105 = knownNetworks;
    v26 = v21;
    v27 = v3;
    v28 = knownNetworks;
    v29 = autoJoinParameters2;
  }

  remainingChannelList = self->_remainingChannelList;
  remainingChannelList = [contextCopy remainingChannelList];
  v102 = remainingChannelList;
  if (remainingChannelList == remainingChannelList)
  {
    v100 = recentChannelList;
    v103 = remainingChannelList;
    autoJoinParameters2 = v29;
    knownNetworks = v28;
    v3 = v27;
    goto LABEL_27;
  }

  autoJoinParameters2 = v29;
  if (!self->_remainingChannelList)
  {
    v11 = 0;
    knownNetworks = v28;
    v3 = v27;
    v21 = v26;
    knownNetworks = v105;
LABEL_86:

    if (v107 != v21)
    {
    }

    goto LABEL_88;
  }

  v103 = remainingChannelList;
  remainingChannelList2 = [contextCopy remainingChannelList];
  knownNetworks = v28;
  if (remainingChannelList2)
  {
    v100 = recentChannelList;
    v97 = remainingChannelList2;
    v33 = autoJoinParameters2;
    v34 = self->_remainingChannelList;
    remainingChannelList3 = [contextCopy remainingChannelList];
    v36 = v34;
    v37 = remainingChannelList3;
    if (([(NSArray *)v36 isEqual:remainingChannelList3]& 1) == 0)
    {

      autoJoinParameters2 = v33;
      if (v107 != v26)
      {
      }

      knownNetworks = v105;
      v3 = v27;
      if (knownNetworks == v105)
      {
        goto LABEL_106;
      }

      goto LABEL_104;
    }

    v94 = v37;
    autoJoinParameters2 = v33;
    v3 = v27;
LABEL_27:
    SSIDList = self->_SSIDList;
    sSIDList = [contextCopy SSIDList];
    v98 = SSIDList;
    if (SSIDList == sSIDList)
    {
      v99 = sSIDList;
    }

    else
    {
      if (!self->_SSIDList)
      {
        v11 = 0;
        v21 = v26;
        knownNetworks = v105;
LABEL_83:

        remainingChannelList = v103;
        if (v102 != v103)
        {

          remainingChannelList = v103;
        }

        recentChannelList = v100;
        goto LABEL_86;
      }

      v99 = sSIDList;
      sSIDList2 = [contextCopy SSIDList];
      recentChannelList = v100;
      v21 = v26;
      knownNetworks = v105;
      if (!sSIDList2)
      {
        goto LABEL_93;
      }

      v93 = sSIDList2;
      v95 = autoJoinParameters2;
      v41 = self->_SSIDList;
      sSIDList3 = [contextCopy SSIDList];
      if (([(NSArray *)v41 isEqual:sSIDList3]& 1) == 0)
      {

        autoJoinParameters2 = v95;
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
      autoJoinParameters2 = v95;
      v90 = sSIDList3;
    }

    ANQPElementIDList = self->_ANQPElementIDList;
    aNQPElementIDList = [contextCopy ANQPElementIDList];
    if (ANQPElementIDList == aNQPElementIDList)
    {
      v92 = ANQPElementIDList;
      v45 = aNQPElementIDList;
      v96 = autoJoinParameters2;
      v21 = v26;
      knownNetworks = v105;
LABEL_48:
      maxScanChannelCount = self->_maxScanChannelCount;
      if (maxScanChannelCount == [contextCopy maxScanChannelCount])
      {
        maxScanSSIDCount = self->_maxScanSSIDCount;
        if (maxScanSSIDCount == [contextCopy maxScanSSIDCount])
        {
          maxScanCacheAge = self->_maxScanCacheAge;
          if (maxScanCacheAge == [contextCopy maxScanCacheAge])
          {
            maxANQPCacheAge = self->_maxANQPCacheAge;
            if (maxANQPCacheAge == [contextCopy maxANQPCacheAge])
            {
              minRSSI = self->_minRSSI;
              if (minRSSI == [contextCopy minRSSI])
              {
                dwellTime = self->_dwellTime;
                if (dwellTime == [contextCopy dwellTime])
                {
                  passiveScan = self->_passiveScan;
                  if (passiveScan == [contextCopy passiveScan])
                  {
                    cacheOnly = self->_cacheOnly;
                    if (cacheOnly == [contextCopy cacheOnly])
                    {
                      useCacheForPreviouslyScannedChannels = self->_useCacheForPreviouslyScannedChannels;
                      if (useCacheForPreviouslyScannedChannels == [contextCopy useCacheForPreviouslyScannedChannels])
                      {
                        v106 = knownNetworks;
                        v87 = knownNetworks;
                        v91 = v21;
                        v60 = v3;
                        v61 = [MEMORY[0x1E696AD98] numberWithDouble:self->_minBSSLocationAccuracy];
                        v62 = MEMORY[0x1E696AD98];
                        [contextCopy minBSSLocationAccuracy];
                        v63 = [v62 numberWithDouble:?];
                        if ([v61 isEqualToNumber:?])
                        {
                          v64 = [MEMORY[0x1E696AD98] numberWithDouble:self->_maxBSSLocationDistance];
                          v65 = MEMORY[0x1E696AD98];
                          [contextCopy maxBSSLocationDistance];
                          v66 = [v65 numberWithDouble:?];
                          v86 = v64;
                          v67 = v64;
                          v68 = v66;
                          if (![v67 isEqualToNumber:?])
                          {
                            goto LABEL_111;
                          }

                          maxScanCycles = self->_maxScanCycles;
                          if (maxScanCycles != [contextCopy maxScanCycles])
                          {
                            goto LABEL_111;
                          }

                          BSSChannelsOnly = self->_BSSChannelsOnly;
                          if (BSSChannelsOnly != [contextCopy BSSChannelsOnly])
                          {
                            goto LABEL_111;
                          }

                          maxBSSChannelCount = self->_maxBSSChannelCount;
                          if (maxBSSChannelCount != [contextCopy maxBSSChannelCount])
                          {
                            goto LABEL_111;
                          }

                          maxBSSChannelAge = self->_maxBSSChannelAge;
                          if (maxBSSChannelAge != [contextCopy maxBSSChannelAge])
                          {
                            goto LABEL_111;
                          }

                          maxHiddenKnownNetworkSSIDAge = self->_maxHiddenKnownNetworkSSIDAge;
                          if (maxHiddenKnownNetworkSSIDAge != [contextCopy maxHiddenKnownNetworkSSIDAge])
                          {
                            goto LABEL_111;
                          }

                          includeAdjacent5GHzChannel = self->_includeAdjacent5GHzChannel;
                          if (includeAdjacent5GHzChannel != [contextCopy includeAdjacent5GHzChannel])
                          {
                            goto LABEL_111;
                          }

                          allowStandalone6GHz = self->_allowStandalone6GHz;
                          if (allowStandalone6GHz == [contextCopy allowStandalone6GHz] && (include6GHzChannels = self->_include6GHzChannels, include6GHzChannels == objc_msgSend(contextCopy, "include6GHzChannels")) && (alwaysIncludeRemainingNon2GHzChannels = self->_alwaysIncludeRemainingNon2GHzChannels, alwaysIncludeRemainingNon2GHzChannels == objc_msgSend(contextCopy, "alwaysIncludeRemainingNon2GHzChannels")) && (allowDeferredCandidates = self->_allowDeferredCandidates, allowDeferredCandidates == objc_msgSend(contextCopy, "allowDeferredCandidates")) && (didForceAllRemainingChannels = self->_didForceAllRemainingChannels, didForceAllRemainingChannels == objc_msgSend(contextCopy, "didForceAllRemainingChannels")) && (skipRemainingNon2GHzChannelsUnlessKnownNetworkFound = self->_skipRemainingNon2GHzChannelsUnlessKnownNetworkFound, skipRemainingNon2GHzChannelsUnlessKnownNetworkFound == objc_msgSend(contextCopy, "skipRemainingNon2GHzChannelsUnlessKnownNetworkFound")) && (preferUserConfiguredNetworks = self->_preferUserConfiguredNetworks, preferUserConfiguredNetworks == objc_msgSend(contextCopy, "preferUserConfiguredNetworks")))
                          {
                            allowSSIDBasedMatchingForPasspointNetworks = self->_allowSSIDBasedMatchingForPasspointNetworks;
                            v11 = allowSSIDBasedMatchingForPasspointNetworks == [contextCopy allowSSIDBasedMatchingForPasspointNetworks];
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

                        aNQPElementIDList = v45;
                        v21 = v91;
                        autoJoinParameters2 = v96;
                        v3 = v60;
                        knownNetworks = v87;
                        knownNetworks = v106;
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
      aNQPElementIDList = v45;
      autoJoinParameters2 = v96;
      if (v92 != v45)
      {
LABEL_74:
        v45 = aNQPElementIDList;

LABEL_80:
LABEL_81:
        sSIDList = v99;
        if (v98 != v99)
        {

          sSIDList = v99;
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
      knownNetworks = v105;
      goto LABEL_78;
    }

    v92 = ANQPElementIDList;
    v45 = aNQPElementIDList;
    aNQPElementIDList2 = [contextCopy ANQPElementIDList];
    knownNetworks = v105;
    if (!aNQPElementIDList2)
    {
      v11 = 0;
      goto LABEL_80;
    }

    v89 = aNQPElementIDList2;
    v96 = autoJoinParameters2;
    v47 = self->_ANQPElementIDList;
    aNQPElementIDList3 = [contextCopy ANQPElementIDList];
    v49 = v47;
    v50 = aNQPElementIDList3;
    if (([(NSArray *)v49 isEqual:aNQPElementIDList3]& 1) != 0)
    {
      v88 = v50;
      goto LABEL_48;
    }

    autoJoinParameters2 = v96;
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

  knownNetworks = v105;
LABEL_103:
  if (knownNetworks != knownNetworks)
  {
LABEL_104:

    goto LABEL_105;
  }

LABEL_106:

  v11 = 0;
LABEL_107:
  if (autoJoinParameters != autoJoinParameters)
  {
    goto LABEL_108;
  }

LABEL_109:

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFAutoJoinContext *)self isEqualToAutoJoinContext:v5];
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

- (id)copyWithZone:(_NSZone *)zone
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