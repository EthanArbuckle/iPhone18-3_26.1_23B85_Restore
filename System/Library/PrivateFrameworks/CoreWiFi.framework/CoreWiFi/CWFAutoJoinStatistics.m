@interface CWFAutoJoinStatistics
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAutoJoinStatistics:(id)a3;
- (CWFAutoJoinStatistics)init;
- (CWFAutoJoinStatistics)initWithCoder:(id)a3;
- (NSDictionary)coreAnalyticsEventPayload;
- (NSString)description;
- (id)JSONCompatibleKeyValueMap;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)autoJoinCount;
- (unint64_t)autoJoinRetryCount;
- (unint64_t)combinedScanChannelCount;
- (unint64_t)combinedScanChannelCount6GHz;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CWFAutoJoinStatistics

- (CWFAutoJoinStatistics)init
{
  v6.receiver = self;
  v6.super_class = CWFAutoJoinStatistics;
  v2 = [(CWFAutoJoinStatistics *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    autoJoinTriggerCounts = v2->_autoJoinTriggerCounts;
    v2->_autoJoinTriggerCounts = v3;
  }

  return v2;
}

- (unint64_t)autoJoinCount
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(CWFAutoJoinStatistics *)self autoJoinTriggerCounts];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 += [*(*(&v11 + 1) + 8 * i) unsignedIntegerValue];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (unint64_t)autoJoinRetryCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(CWFAutoJoinStatistics *)self autoJoinTriggerCounts];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0BCDDEC;
  v5[3] = &unk_1E86EA4D0;
  v5[4] = &v6;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)combinedScanChannelCount
{
  v3 = [(CWFAutoJoinStatistics *)self scanChannelCount];
  v4 = [(CWFAutoJoinStatistics *)self preAssocScanChannelCount]+ v3;
  return v4 + [(CWFAutoJoinStatistics *)self followup6GHzScanChannelCount];
}

- (unint64_t)combinedScanChannelCount6GHz
{
  v3 = [(CWFAutoJoinStatistics *)self scanChannelCount6GHz];
  v4 = [(CWFAutoJoinStatistics *)self preAssocScanChannelCount6GHz]+ v3;
  return v4 + [(CWFAutoJoinStatistics *)self followup6GHzScanChannelCount];
}

- (id)JSONCompatibleKeyValueMap
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(CWFAutoJoinStatistics *)self coreAnalyticsEventPayload];
  if (v4)
  {
    [v3 addEntriesFromDictionary:v4];
  }

  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [(CWFAutoJoinStatistics *)self autoJoinTriggerCounts];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1E0BD30A0;
  v11[3] = &unk_1E86EA4A8;
  v7 = v5;
  v12 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v11];

  [v3 setObject:v7 forKeyedSubscript:@"triggers"];
  v8 = sub_1E0BCEC64(v3, 0, 1u);
  if (v8)
  {
    v9 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSDictionary)coreAnalyticsEventPayload
{
  v264 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(CWFAutoJoinStatistics *)self autoJoinCount])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAutoJoinStatistics autoJoinCount](self, "autoJoinCount")}];
    [v3 setObject:v4 forKeyedSubscript:@"autoJoinCount"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"autoJoinCount"];
  }

  if ([(CWFAutoJoinStatistics *)self autoJoinAlreadyAssociatedCount])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAutoJoinStatistics autoJoinAlreadyAssociatedCount](self, "autoJoinAlreadyAssociatedCount")}];
    [v3 setObject:v5 forKeyedSubscript:@"autoJoinAlreadyAssociatedCount"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"autoJoinAlreadyAssociatedCount"];
  }

  if ([(CWFAutoJoinStatistics *)self autoJoinDidFindCandidateCount])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAutoJoinStatistics autoJoinDidFindCandidateCount](self, "autoJoinDidFindCandidateCount")}];
    [v3 setObject:v6 forKeyedSubscript:@"autoJoinDidFindCandidateCount"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"autoJoinDidFindCandidateCount"];
  }

  if ([(CWFAutoJoinStatistics *)self autoJoinDidJoinCount])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAutoJoinStatistics autoJoinDidJoinCount](self, "autoJoinDidJoinCount")}];
    [v3 setObject:v7 forKeyedSubscript:@"autoJoinDidJoinCount"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"autoJoinDidJoinCount"];
  }

  if ([(CWFAutoJoinStatistics *)self autoJoinAbortedCount])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAutoJoinStatistics autoJoinAbortedCount](self, "autoJoinAbortedCount")}];
    [v3 setObject:v8 forKeyedSubscript:@"autoJoinAbortedCount"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"autoJoinAbortedCount"];
  }

  if ([(CWFAutoJoinStatistics *)self autoJoinRetryCount])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAutoJoinStatistics autoJoinRetryCount](self, "autoJoinRetryCount")}];
    [v3 setObject:v9 forKeyedSubscript:@"autoJoinRetryCount"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"autoJoinRetryCount"];
  }

  if ([(CWFAutoJoinStatistics *)self combinedScanChannelCount])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAutoJoinStatistics combinedScanChannelCount](self, "combinedScanChannelCount")}];
    [v3 setObject:v10 forKeyedSubscript:@"combinedScanChannelCount"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"combinedScanChannelCount"];
  }

  if ([(CWFAutoJoinStatistics *)self combinedScanChannelCount2GHz])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAutoJoinStatistics combinedScanChannelCount2GHz](self, "combinedScanChannelCount2GHz")}];
    [v3 setObject:v11 forKeyedSubscript:@"combinedScanChannelCount2GHz"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"combinedScanChannelCount2GHz"];
  }

  if ([(CWFAutoJoinStatistics *)self combinedScanChannelCount5GHz])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAutoJoinStatistics combinedScanChannelCount5GHz](self, "combinedScanChannelCount5GHz")}];
    [v3 setObject:v12 forKeyedSubscript:@"combinedScanChannelCount5GHz"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"combinedScanChannelCount5GHz"];
  }

  if ([(CWFAutoJoinStatistics *)self combinedScanChannelCount6GHz])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAutoJoinStatistics combinedScanChannelCount6GHz](self, "combinedScanChannelCount6GHz")}];
    [v3 setObject:v13 forKeyedSubscript:@"combinedScanChannelCount6GHz"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"combinedScanChannelCount6GHz"];
  }

  if ([(CWFAutoJoinStatistics *)self scanChannelCount])
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAutoJoinStatistics scanChannelCount](self, "scanChannelCount")}];
    [v3 setObject:v14 forKeyedSubscript:@"scanChannelCount"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"scanChannelCount"];
  }

  if ([(CWFAutoJoinStatistics *)self scanChannelCount2GHz])
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAutoJoinStatistics scanChannelCount2GHz](self, "scanChannelCount2GHz")}];
    [v3 setObject:v15 forKeyedSubscript:@"scanChannelCount2GHz"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"scanChannelCount2GHz"];
  }

  if ([(CWFAutoJoinStatistics *)self scanChannelCount5GHz])
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAutoJoinStatistics scanChannelCount5GHz](self, "scanChannelCount5GHz")}];
    [v3 setObject:v16 forKeyedSubscript:@"scanChannelCount5GHz"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"scanChannelCount5GHz"];
  }

  if ([(CWFAutoJoinStatistics *)self scanChannelCount6GHz])
  {
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAutoJoinStatistics scanChannelCount6GHz](self, "scanChannelCount6GHz")}];
    [v3 setObject:v17 forKeyedSubscript:@"scanChannelCount6GHz"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"scanChannelCount6GHz"];
  }

  if ([(CWFAutoJoinStatistics *)self preAssocScanChannelCount])
  {
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAutoJoinStatistics preAssocScanChannelCount](self, "preAssocScanChannelCount")}];
    [v3 setObject:v18 forKeyedSubscript:@"preAssocScanChannelCount"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"preAssocScanChannelCount"];
  }

  if ([(CWFAutoJoinStatistics *)self preAssocScanChannelCount2GHz])
  {
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAutoJoinStatistics preAssocScanChannelCount2GHz](self, "preAssocScanChannelCount2GHz")}];
    [v3 setObject:v19 forKeyedSubscript:@"preAssocScanChannelCount2GHz"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"preAssocScanChannelCount2GHz"];
  }

  if ([(CWFAutoJoinStatistics *)self preAssocScanChannelCount5GHz])
  {
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAutoJoinStatistics preAssocScanChannelCount5GHz](self, "preAssocScanChannelCount5GHz")}];
    [v3 setObject:v20 forKeyedSubscript:@"preAssocScanChannelCount5GHz"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"preAssocScanChannelCount5GHz"];
  }

  if ([(CWFAutoJoinStatistics *)self preAssocScanChannelCount6GHz])
  {
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAutoJoinStatistics preAssocScanChannelCount6GHz](self, "preAssocScanChannelCount6GHz")}];
    [v3 setObject:v21 forKeyedSubscript:@"preAssocScanChannelCount6GHz"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"preAssocScanChannelCount6GHz"];
  }

  if ([(CWFAutoJoinStatistics *)self followup6GHzScanChannelCount])
  {
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAutoJoinStatistics followup6GHzScanChannelCount](self, "followup6GHzScanChannelCount")}];
    [v3 setObject:v22 forKeyedSubscript:@"followup6GHzScanChannelCount"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"followup6GHzScanChannelCount"];
  }

  if ([(CWFAutoJoinStatistics *)self GASQueryCount])
  {
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAutoJoinStatistics GASQueryCount](self, "GASQueryCount")}];
    [v3 setObject:v23 forKeyedSubscript:@"GASQueryCount"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"GASQueryCount"];
  }

  if ([(CWFAutoJoinStatistics *)self autoHotspotCount])
  {
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAutoJoinStatistics autoHotspotCount](self, "autoHotspotCount")}];
    [v3 setObject:v24 forKeyedSubscript:@"autoHotspotCount"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"autoHotspotCount"];
  }

  if ([(CWFAutoJoinStatistics *)self autoHotspotDidFindCandidateCount])
  {
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAutoJoinStatistics autoHotspotDidFindCandidateCount](self, "autoHotspotDidFindCandidateCount")}];
    [v3 setObject:v25 forKeyedSubscript:@"autoHotspotDidFindCandidateCount"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"autoHotspotDidFindCandidateCount"];
  }

  if ([(CWFAutoJoinStatistics *)self autoHotspotDidJoinCount])
  {
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAutoJoinStatistics autoHotspotDidJoinCount](self, "autoHotspotDidJoinCount")}];
    [v3 setObject:v26 forKeyedSubscript:@"autoHotspotDidJoinCount"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"autoHotspotDidJoinCount"];
  }

  if ([(CWFAutoJoinStatistics *)self autoHotspotAbortedCount])
  {
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAutoJoinStatistics autoHotspotAbortedCount](self, "autoHotspotAbortedCount")}];
    [v3 setObject:v27 forKeyedSubscript:@"autoHotspotAbortedCount"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"autoHotspotAbortedCount"];
  }

  v28 = [(CWFAutoJoinStatistics *)self knownNetworks];
  if ([v28 count])
  {
    v29 = MEMORY[0x1E696AD98];
    v30 = [(CWFAutoJoinStatistics *)self knownNetworks];
    v31 = [v29 numberWithUnsignedInteger:{objc_msgSend(v30, "count")}];
    [v3 setObject:v31 forKeyedSubscript:@"totalKnownNetworkCount"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"totalKnownNetworkCount"];
  }

  v260 = 0u;
  v261 = 0u;
  v258 = 0u;
  v259 = 0u;
  obj = [(CWFAutoJoinStatistics *)self knownNetworks];
  v183 = [obj countByEnumeratingWithState:&v258 objects:v263 count:16];
  if (v183)
  {
    v32 = 0;
    v237 = 0;
    v238 = 0;
    v247 = 0;
    v235 = 0;
    v236 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v250 = 0;
    v233 = 0;
    v234 = 0;
    v249 = 0;
    v240 = 0;
    v36 = 0;
    v239 = 0;
    v214 = 0;
    v215 = 0;
    v212 = 0;
    v213 = 0;
    v210 = 0;
    v211 = 0;
    v208 = 0;
    v209 = 0;
    v206 = 0;
    v207 = 0;
    v204 = 0;
    v205 = 0;
    v202 = 0;
    v203 = 0;
    v200 = 0;
    v201 = 0;
    v231 = 0;
    v232 = 0;
    v198 = 0;
    v199 = 0;
    v196 = 0;
    v197 = 0;
    v194 = 0;
    v195 = 0;
    v192 = 0;
    v193 = 0;
    v219 = 0;
    v220 = 0;
    v190 = 0;
    v191 = 0;
    v188 = 0;
    v189 = 0;
    v186 = 0;
    v187 = 0;
    v184 = 0;
    v185 = 0;
    v37 = 0;
    v245 = 0;
    v244 = 0;
    v243 = 0;
    v242 = 0;
    v241 = 0;
    v248 = 0;
    v221 = 0;
    v222 = 0;
    v216 = 0;
    v217 = 0;
    v179 = -63115200.0;
    v181 = *v259;
    v182 = v3;
LABEL_78:
    v38 = 0;
    while (2)
    {
      if (*v259 != v181)
      {
        objc_enumerationMutation(obj);
      }

      v39 = *(*(&v258 + 1) + 8 * v38);
      v40 = [v39 isAutoJoinDisabled];
      v223 = [v39 isPersonalHotspot];
      v224 = [v39 isPasspoint];
      v228 = v38;
      if ([v39 isCaptiveStateDetermined])
      {
        v247 += [v39 isCaptive];
      }

      v225 = [v39 isCarPlay];
      if ([v39 hiddenState] == 1)
      {
        ++v33;
      }

      v41 = [v39 userPreferredNetworkNames];
      v253 = v39;
      v229 = v36;
      if ([v41 count])
      {
      }

      else
      {
        [v39 userPreferredPasspointDomains];
        v43 = v42 = v35;
        v44 = [v43 count];

        v35 = v42;
        v39 = v253;

        if (!v44)
        {
          goto LABEL_89;
        }
      }

      ++v34;
LABEL_89:
      v251 = v37;
      v226 = [v39 isPublicAirPlayNetwork];
      if ([v39 publicAttribute] == 1)
      {
        ++v35;
      }

      v246 = v35;
      v45 = [v39 movingAttribute];
      v46 = v250;
      if (v45 == 1)
      {
        v46 = v250 + 1;
      }

      v250 = v46;
      v227 = [v39 isPrivacyProxyEnabled];
      v47 = [v39 disable6EMode];
      v48 = v249;
      if (v47 == 2)
      {
        v48 = v249 + 1;
      }

      v249 = v48;
      v254 = 0u;
      v255 = 0u;
      v256 = 0u;
      v257 = 0u;
      v49 = [v39 BSSList];
      v50 = [v49 countByEnumeratingWithState:&v254 objects:v262 count:16];
      if (v50)
      {
        v51 = v50;
        v218 = v40;
        v52 = v32;
        v53 = *v255;
        while (2)
        {
          for (i = 0; i != v51; ++i)
          {
            if (*v255 != v53)
            {
              objc_enumerationMutation(v49);
            }

            v55 = [*(*(&v254 + 1) + 8 * i) channel];
            v56 = [v55 is6GHz];

            if (v56)
            {
              ++v240;
              goto LABEL_105;
            }
          }

          v51 = [v49 countByEnumeratingWithState:&v254 objects:v262 count:16];
          if (v51)
          {
            continue;
          }

          break;
        }

LABEL_105:
        v32 = v52;
        v57 = v247;
        v39 = v253;
        v40 = v218;
      }

      else
      {
        v57 = v247;
      }

      v32 += v40;

      v58 = [v39 isStandalone6G];
      v59 = [v39 wasRecently6GHzOnlyOnAnyDevice];
      v3 = v182;
      v35 = v246;
      if (v32)
      {
        v60 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v32];
        [v182 setObject:v60 forKeyedSubscript:@"disableCount"];
      }

      else
      {
        [v182 setObject:0 forKeyedSubscript:@"disableCount"];
      }

      v238 += v223;
      if (v238)
      {
        v61 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
        [v182 setObject:v61 forKeyedSubscript:@"personalHotspotCount"];
      }

      else
      {
        [v182 setObject:0 forKeyedSubscript:@"personalHotspotCount"];
      }

      v237 += v224;
      if (v237)
      {
        v62 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
        [v182 setObject:v62 forKeyedSubscript:@"passpointCount"];

        if (v57)
        {
LABEL_115:
          v63 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v57];
          [v182 setObject:v63 forKeyedSubscript:@"captiveCount"];

          goto LABEL_118;
        }
      }

      else
      {
        [v182 setObject:0 forKeyedSubscript:@"passpointCount"];
        if (v57)
        {
          goto LABEL_115;
        }
      }

      [v182 setObject:0 forKeyedSubscript:@"captiveCount"];
LABEL_118:
      v236 += v225;
      if (v236)
      {
        v64 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
        [v182 setObject:v64 forKeyedSubscript:@"carplayCount"];

        if (v33)
        {
          goto LABEL_120;
        }
      }

      else
      {
        [v182 setObject:0 forKeyedSubscript:@"carplayCount"];
        if (v33)
        {
LABEL_120:
          v65 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v33];
          [v182 setObject:v65 forKeyedSubscript:@"hiddenCount"];

          if (v34)
          {
LABEL_121:
            v66 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v34];
            [v182 setObject:v66 forKeyedSubscript:@"userJoinPrefCount"];

            goto LABEL_125;
          }

LABEL_124:
          [v182 setObject:0 forKeyedSubscript:@"userJoinPrefCount"];
LABEL_125:
          v235 += v226;
          if (v235)
          {
            v67 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
            [v182 setObject:v67 forKeyedSubscript:@"publicAirPlayCount"];

            if (v246)
            {
LABEL_127:
              v68 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v246];
              [v182 setObject:v68 forKeyedSubscript:@"publicAttrCount"];

              goto LABEL_130;
            }
          }

          else
          {
            [v182 setObject:0 forKeyedSubscript:@"publicAirPlayCount"];
            if (v246)
            {
              goto LABEL_127;
            }
          }

          [v182 setObject:0 forKeyedSubscript:@"publicAttrCount"];
LABEL_130:
          if (v250)
          {
            v69 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
            [v182 setObject:v69 forKeyedSubscript:@"movingAttrCount"];
          }

          else
          {
            [v182 setObject:0 forKeyedSubscript:@"movingAttrCount"];
          }

          v234 += v227 ^ 1u;
          if (v234)
          {
            v70 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
            [v182 setObject:v70 forKeyedSubscript:@"privacyProxyDisabledCount"];
          }

          else
          {
            [v182 setObject:0 forKeyedSubscript:@"privacyProxyDisabledCount"];
          }

          if (v249)
          {
            v71 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
            [v182 setObject:v71 forKeyedSubscript:@"disabled6EModeCount"];
          }

          else
          {
            [v182 setObject:0 forKeyedSubscript:@"disabled6EModeCount"];
          }

          if (v240)
          {
            v72 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
            [v182 setObject:v72 forKeyedSubscript:@"has6GHzBSSCount"];
          }

          else
          {
            [v182 setObject:0 forKeyedSubscript:@"has6GHzBSSCount"];
          }

          v36 = v229 + v58;
          if (v36)
          {
            v73 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v36];
            [v182 setObject:v73 forKeyedSubscript:@"standalone6GHzCount"];
          }

          else
          {
            [v182 setObject:0 forKeyedSubscript:@"standalone6GHzCount"];
          }

          v233 += v59;
          if (v233)
          {
            v74 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
            [v182 setObject:v74 forKeyedSubscript:@"wasRecently6GHzOnlyCount"];
          }

          else
          {
            [v182 setObject:0 forKeyedSubscript:@"wasRecently6GHzOnlyCount"];
          }

          v75 = [v253 supportedSecurityTypes];
          if (v75 <= 39)
          {
            v76 = v239;
            if (v75 <= 7)
            {
              if (v75 == 1)
              {
                v77 = [v253 WEPSubtype];
                v78 = v212;
                if (v77 != 5)
                {
                  v78 = v212 + 1;
                }

                v212 = v78;
              }

              else
              {
                if (v75 != 2)
                {
                  v76 = v239;
                  if (v75 == 4)
                  {
                    ++v210;
                    goto LABEL_188;
                  }

                  goto LABEL_183;
                }

                [v253 WAPISubtype];
                ++v211;
              }

              v76 = v239;
              goto LABEL_188;
            }

            if (v75 > 19)
            {
              if (v75 == 20)
              {
                ++v209;
                goto LABEL_188;
              }

              if (v75 == 32)
              {
                ++v203;
                goto LABEL_188;
              }
            }

            else
            {
              if (v75 == 8)
              {
                ++v205;
                goto LABEL_188;
              }

              if (v75 == 16)
              {
                ++v208;
                goto LABEL_188;
              }
            }
          }

          else
          {
            v76 = v239;
            if (v75 > 159)
            {
              if (v75 > 511)
              {
                if (v75 == 768)
                {
                  ++v214;
                  goto LABEL_188;
                }

                if (v75 == 512)
                {
                  ++v215;
                  goto LABEL_188;
                }
              }

              else
              {
                if (v75 == 160)
                {
                  ++v202;
                  goto LABEL_188;
                }

                if (v75 == 256)
                {
                  ++v213;
                  goto LABEL_188;
                }
              }
            }

            else if (v75 > 79)
            {
              if (v75 == 80)
              {
                ++v207;
                goto LABEL_188;
              }

              if (v75 == 128)
              {
                ++v201;
                goto LABEL_188;
              }
            }

            else
            {
              if (v75 == 40)
              {
                ++v204;
                goto LABEL_188;
              }

              if (v75 == 64)
              {
                ++v206;
LABEL_188:
                v239 = v76;
                if (v76)
                {
                  v79 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                  [v182 setObject:v79 forKeyedSubscript:@"unknownSecurityCount"];
                }

                else
                {
                  [v182 setObject:0 forKeyedSubscript:@"unknownSecurityCount"];
                }

                if (v215)
                {
                  v80 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                  [v182 setObject:v80 forKeyedSubscript:@"openCount"];
                }

                else
                {
                  [v182 setObject:0 forKeyedSubscript:@"openCount"];
                }

                if (v214)
                {
                  v81 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                  [v182 setObject:v81 forKeyedSubscript:@"oweTransitionCount"];
                }

                else
                {
                  [v182 setObject:0 forKeyedSubscript:@"oweTransitionCount"];
                }

                if (v213)
                {
                  v82 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                  [v182 setObject:v82 forKeyedSubscript:@"oweCount"];
                }

                else
                {
                  [v182 setObject:0 forKeyedSubscript:@"oweCount"];
                }

                if (v212)
                {
                  v83 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                  [v182 setObject:v83 forKeyedSubscript:@"wepCount"];
                }

                else
                {
                  [v182 setObject:0 forKeyedSubscript:@"wepCount"];
                }

                if (v211)
                {
                  v84 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                  [v182 setObject:v84 forKeyedSubscript:@"wapiPSKCount"];
                }

                else
                {
                  [v182 setObject:0 forKeyedSubscript:@"wapiPSKCount"];
                }

                [v182 setObject:0 forKeyedSubscript:@"wapiCertCount"];
                if (v210)
                {
                  v85 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                  [v182 setObject:v85 forKeyedSubscript:@"wpaPersonalCount"];
                }

                else
                {
                  [v182 setObject:0 forKeyedSubscript:@"wpaPersonalCount"];
                }

                if (v209)
                {
                  v86 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                  [v182 setObject:v86 forKeyedSubscript:@"wpa2PersonalMixedCount"];
                }

                else
                {
                  [v182 setObject:0 forKeyedSubscript:@"wpa2PersonalMixedCount"];
                }

                if (v208)
                {
                  v87 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                  [v182 setObject:v87 forKeyedSubscript:@"wpa2PersonalCount"];
                }

                else
                {
                  [v182 setObject:0 forKeyedSubscript:@"wpa2PersonalCount"];
                }

                if (v207)
                {
                  v88 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                  [v182 setObject:v88 forKeyedSubscript:@"wpa3TransitionCount"];
                }

                else
                {
                  [v182 setObject:0 forKeyedSubscript:@"wpa3TransitionCount"];
                }

                if (v206)
                {
                  v89 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                  [v182 setObject:v89 forKeyedSubscript:@"wpa3SAECount"];
                }

                else
                {
                  [v182 setObject:0 forKeyedSubscript:@"wpa3SAECount"];
                }

                if (v205)
                {
                  v90 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                  [v182 setObject:v90 forKeyedSubscript:@"wpaEnterpriseCount"];
                }

                else
                {
                  [v182 setObject:0 forKeyedSubscript:@"wpaEnterpriseCount"];
                }

                if (v204)
                {
                  v91 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                  [v182 setObject:v91 forKeyedSubscript:@"wpa2EnterpriseMixedCount"];
                }

                else
                {
                  [v182 setObject:0 forKeyedSubscript:@"wpa2EnterpriseMixedCount"];
                }

                if (v203)
                {
                  v92 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                  [v182 setObject:v92 forKeyedSubscript:@"wpa2EnterpriseCount"];
                }

                else
                {
                  [v182 setObject:0 forKeyedSubscript:@"wpa2EnterpriseCount"];
                }

                if (v202)
                {
                  v93 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                  [v182 setObject:v93 forKeyedSubscript:@"wpa3EnterpriseCount"];
                }

                else
                {
                  [v182 setObject:0 forKeyedSubscript:@"wpa3EnterpriseCount"];
                }

                if (v201)
                {
                  v94 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                  [v182 setObject:v94 forKeyedSubscript:@"wpa3EnterpriseSuiteBCount"];
                }

                else
                {
                  [v182 setObject:0 forKeyedSubscript:@"wpa3EnterpriseSuiteBCount"];
                }

                switch([v253 addReason])
                {
                  case 2:
                    ++v191;
                    goto LABEL_255;
                  case 3:
                  case 4:
                  case 5:
                    ++v219;
                    goto LABEL_255;
                  case 6:
                    ++v189;
                    goto LABEL_255;
                  case 7:
                    ++v190;
                    goto LABEL_255;
                  case 8:
                    ++v188;
                    goto LABEL_255;
                  case 9:
                    ++v199;
                    goto LABEL_255;
                  case 10:
                    v95 = v232 + 1;
                    goto LABEL_256;
                  case 11:
                    ++v187;
                    goto LABEL_255;
                  case 12:
                    ++v186;
                    goto LABEL_255;
                  case 13:
                    ++v185;
                    goto LABEL_255;
                  case 14:
                    ++v195;
                    goto LABEL_255;
                  case 15:
                    ++v194;
                    goto LABEL_255;
                  case 16:
                    ++v192;
                    goto LABEL_255;
                  case 17:
                    ++v198;
                    goto LABEL_255;
                  case 18:
                    ++v193;
                    goto LABEL_255;
                  case 19:
                    ++v197;
                    goto LABEL_255;
                  case 21:
                    ++v196;
                    goto LABEL_255;
                  default:
                    ++v184;
LABEL_255:
                    v95 = v232;
LABEL_256:
                    v232 = v95;
                    if (v95)
                    {
                      v96 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                      [v182 setObject:v96 forKeyedSubscript:@"addedByCarrierCount"];
                    }

                    else
                    {
                      [v182 setObject:0 forKeyedSubscript:@"addedByCarrierCount"];
                    }

                    if (v199)
                    {
                      v97 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                      [v182 setObject:v97 forKeyedSubscript:@"addedByProfileCount"];
                    }

                    else
                    {
                      [v182 setObject:0 forKeyedSubscript:@"addedByProfileCount"];
                    }

                    if (v198)
                    {
                      v98 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                      [v182 setObject:v98 forKeyedSubscript:@"addedByWalletCount"];
                    }

                    else
                    {
                      [v182 setObject:0 forKeyedSubscript:@"addedByWalletCount"];
                    }

                    if (v197)
                    {
                      v99 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                      [v182 setObject:v99 forKeyedSubscript:@"addedByNearbySyncCount"];
                    }

                    else
                    {
                      [v182 setObject:0 forKeyedSubscript:@"addedByNearbySyncCount"];
                    }

                    if (v196)
                    {
                      v100 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                      [v182 setObject:v100 forKeyedSubscript:@"addedByNearbyRecommendationCount"];
                    }

                    else
                    {
                      [v182 setObject:0 forKeyedSubscript:@"addedByNearbyRecommendationCount"];
                    }

                    if (v195)
                    {
                      v101 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                      [v182 setObject:v101 forKeyedSubscript:@"addedBySystemAppCount"];
                    }

                    else
                    {
                      [v182 setObject:0 forKeyedSubscript:@"addedBySystemAppCount"];
                    }

                    if (v194)
                    {
                      v102 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                      [v182 setObject:v102 forKeyedSubscript:@"addedBy3PAppCount"];
                    }

                    else
                    {
                      [v182 setObject:0 forKeyedSubscript:@"addedBy3PAppCount"];
                    }

                    if (v193)
                    {
                      v103 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                      [v182 setObject:v103 forKeyedSubscript:@"addedByAccessoryAppCount"];
                    }

                    else
                    {
                      [v182 setObject:0 forKeyedSubscript:@"addedByAccessoryAppCount"];
                    }

                    if (v192)
                    {
                      v104 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                      [v182 setObject:v104 forKeyedSubscript:@"addedByRecommendationCount"];
                    }

                    else
                    {
                      [v182 setObject:0 forKeyedSubscript:@"addedByRecommendationCount"];
                    }

                    if (v219)
                    {
                      v105 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                      [v182 setObject:v105 forKeyedSubscript:@"addedByWiFiSettingsCount"];
                    }

                    else
                    {
                      [v182 setObject:0 forKeyedSubscript:@"addedByWiFiSettingsCount"];
                    }

                    if (v191)
                    {
                      v106 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                      [v182 setObject:v106 forKeyedSubscript:@"addedByWiFiMenuCount"];
                    }

                    else
                    {
                      [v182 setObject:0 forKeyedSubscript:@"addedByWiFiMenuCount"];
                    }

                    if (v190)
                    {
                      v107 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                      [v182 setObject:v107 forKeyedSubscript:@"addedBySetupAssistantCount"];
                    }

                    else
                    {
                      [v182 setObject:0 forKeyedSubscript:@"addedBySetupAssistantCount"];
                    }

                    if (v189)
                    {
                      v108 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                      [v182 setObject:v108 forKeyedSubscript:@"addedByATJCount"];
                    }

                    else
                    {
                      [v182 setObject:0 forKeyedSubscript:@"addedByATJCount"];
                    }

                    if (v188)
                    {
                      v109 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                      [v182 setObject:v109 forKeyedSubscript:@"addedByCloudSyncCount"];
                    }

                    else
                    {
                      [v182 setObject:0 forKeyedSubscript:@"addedByCloudSyncCount"];
                    }

                    if (v187)
                    {
                      v110 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                      [v182 setObject:v110 forKeyedSubscript:@"addedByWiFiPasswordSharingCount"];
                    }

                    else
                    {
                      [v182 setObject:0 forKeyedSubscript:@"addedByWiFiPasswordSharingCount"];
                    }

                    if (v186)
                    {
                      v111 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                      [v182 setObject:v111 forKeyedSubscript:@"addedByTapToSetupCount"];
                    }

                    else
                    {
                      [v182 setObject:0 forKeyedSubscript:@"addedByTapToSetupCount"];
                    }

                    if (v185)
                    {
                      v112 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                      [v182 setObject:v112 forKeyedSubscript:@"addedBySSIDGuessingCount"];
                    }

                    else
                    {
                      [v182 setObject:0 forKeyedSubscript:@"addedBySSIDGuessingCount"];
                    }

                    if (v184)
                    {
                      v113 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                      [v182 setObject:v113 forKeyedSubscript:@"addedByUnknownReason"];
                    }

                    else
                    {
                      [v182 setObject:0 forKeyedSubscript:@"addedByUnknownReason"];
                    }

                    v114 = [v253 lastJoinedAt];

                    v247 = v57;
                    if (!v114)
                    {
                      v37 = v251;
                      v158 = v248;
                      goto LABEL_336;
                    }

                    v230 = v33;
                    v115 = [v253 lastJoinedAt];
                    [v115 timeIntervalSinceNow];
                    v117 = v116;
                    v118 = [v253 lastJoinedAt];
                    [v118 timeIntervalSinceNow];
                    v120 = v119;

                    if (v117 < 0.0)
                    {
                      v121 = v120 > -604800.0;
                    }

                    else
                    {
                      v121 = v120 < 604800.0;
                    }

                    v252 = v251 + v121;
                    v122 = [v253 lastJoinedAt];
                    [v122 timeIntervalSinceNow];
                    v124 = v123;
                    v125 = [v253 lastJoinedAt];
                    [v125 timeIntervalSinceNow];
                    if (v124 < 0.0)
                    {
                      v127 = v126 > -1209600.0;
                    }

                    else
                    {
                      v127 = v126 < 1209600.0;
                    }

                    v245 += v127;
                    v128 = [v253 lastJoinedAt];
                    [v128 timeIntervalSinceNow];
                    v130 = v129;
                    v131 = [v253 lastJoinedAt];
                    [v131 timeIntervalSinceNow];
                    if (v130 < 0.0)
                    {
                      v133 = v132 > -2629800.0;
                    }

                    else
                    {
                      v133 = v132 < 2629800.0;
                    }

                    v244 += v133;
                    v134 = [v253 lastJoinedAt];
                    [v134 timeIntervalSinceNow];
                    v136 = v135;
                    v137 = [v253 lastJoinedAt];
                    [v137 timeIntervalSinceNow];
                    if (v136 < 0.0)
                    {
                      v139 = v138 > -5259600.0;
                    }

                    else
                    {
                      v139 = v138 < 5259600.0;
                    }

                    v243 += v139;
                    v140 = [v253 lastJoinedAt];
                    [v140 timeIntervalSinceNow];
                    v142 = v141;
                    v143 = [v253 lastJoinedAt];
                    [v143 timeIntervalSinceNow];
                    if (v142 < 0.0)
                    {
                      v145 = v144 > -15778800.0;
                    }

                    else
                    {
                      v145 = v144 < 15778800.0;
                    }

                    v242 += v145;
                    v146 = [v253 lastJoinedAt];
                    [v146 timeIntervalSinceNow];
                    v148 = v147;
                    v149 = [v253 lastJoinedAt];
                    [v149 timeIntervalSinceNow];
                    if (v148 < 0.0)
                    {
                      v151 = v150 > -31557600.0;
                    }

                    else
                    {
                      v151 = v150 < 31557600.0;
                    }

                    v241 += v151;
                    v152 = [v253 lastJoinedAt];
                    [v152 timeIntervalSinceNow];
                    v154 = v153;
                    v155 = [v253 lastJoinedAt];
                    [v155 timeIntervalSinceNow];
                    v157 = v156;

                    if (v154 < 0.0)
                    {
                      v33 = v230;
                      v158 = v248;
                      if (v157 <= v179)
                      {
                        goto LABEL_335;
                      }
                    }

                    else
                    {
                      v33 = v230;
                      v158 = v248;
                      if (v157 >= 63115200.0)
                      {
                        goto LABEL_335;
                      }
                    }

                    ++v158;
LABEL_335:
                    v35 = v246;
                    v37 = v252;
LABEL_336:
                    v248 = v158;
                    if (v37)
                    {
                      v159 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v37];
                      [v182 setObject:v159 forKeyedSubscript:@"joinedInPastWeekCount"];
                    }

                    else
                    {
                      [v182 setObject:0 forKeyedSubscript:@"joinedInPastWeekCount"];
                    }

                    if (v245)
                    {
                      v160 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                      [v182 setObject:v160 forKeyedSubscript:@"joinedInPast2WeeksCount"];
                    }

                    else
                    {
                      [v182 setObject:0 forKeyedSubscript:@"joinedInPast2WeeksCount"];
                    }

                    if (v244)
                    {
                      v161 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                      [v182 setObject:v161 forKeyedSubscript:@"joinedInPastMonthCount"];
                    }

                    else
                    {
                      [v182 setObject:0 forKeyedSubscript:@"joinedInPastMonthCount"];
                    }

                    if (v243)
                    {
                      v162 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                      [v182 setObject:v162 forKeyedSubscript:@"joinedInPast2MonthsCount"];
                    }

                    else
                    {
                      [v182 setObject:0 forKeyedSubscript:@"joinedInPast2MonthsCount"];
                    }

                    if (v242)
                    {
                      v163 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                      [v182 setObject:v163 forKeyedSubscript:@"joinedInPast6MonthsCount"];
                    }

                    else
                    {
                      [v182 setObject:0 forKeyedSubscript:@"joinedInPast6MonthsCount"];
                    }

                    if (v241)
                    {
                      v164 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                      [v182 setObject:v164 forKeyedSubscript:@"joinedInPastYearCount"];
                    }

                    else
                    {
                      [v182 setObject:0 forKeyedSubscript:@"joinedInPastYearCount"];
                    }

                    if (v248)
                    {
                      v165 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                      [v182 setObject:v165 forKeyedSubscript:@"joinedInPast2YearsCount"];
                    }

                    else
                    {
                      [v182 setObject:0 forKeyedSubscript:@"joinedInPast2YearsCount"];
                    }

                    v166 = [v253 effectivePrivateMACModeWithSystemSetting:0];
                    if (v166 == 3)
                    {
                      if ([v253 privateMACAddressModeUserSetting])
                      {
                        ++v221;
                      }

                      else
                      {
                        ++v217;
                      }

                      goto LABEL_370;
                    }

                    if (v166 == 2)
                    {
                      if ([v253 privateMACAddressModeUserSetting])
                      {
                        ++v220;
                      }

                      else
                      {
                        ++v216;
                      }

                      goto LABEL_370;
                    }

                    if (v166 != 1)
                    {
                      goto LABEL_370;
                    }

                    if ([v253 privateMACAddressModeUserSetting])
                    {
                      ++v222;
LABEL_370:
                      v167 = v231;
                      goto LABEL_371;
                    }

                    if ([v253 privateMACAddressModeConfigurationProfileSetting])
                    {
                      ++v200;
                      goto LABEL_370;
                    }

                    v167 = v231 + 1;
LABEL_371:
                    v231 = v167;
                    if (v167)
                    {
                      v168 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                      [v182 setObject:v168 forKeyedSubscript:@"privateMACOffByDefaultCount"];
                    }

                    else
                    {
                      [v182 setObject:0 forKeyedSubscript:@"privateMACOffByDefaultCount"];
                    }

                    if (v222)
                    {
                      v169 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                      [v182 setObject:v169 forKeyedSubscript:@"privateMACOffByUserCount"];
                    }

                    else
                    {
                      [v182 setObject:0 forKeyedSubscript:@"privateMACOffByUserCount"];
                    }

                    if (v200)
                    {
                      v170 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                      [v182 setObject:v170 forKeyedSubscript:@"privateMACOffByProfileCount"];
                    }

                    else
                    {
                      [v182 setObject:0 forKeyedSubscript:@"privateMACOffByProfileCount"];
                    }

                    if (v217)
                    {
                      v171 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                      [v182 setObject:v171 forKeyedSubscript:@"privateMACStaticByDefaultCount"];
                    }

                    else
                    {
                      [v182 setObject:0 forKeyedSubscript:@"privateMACStaticByDefaultCount"];
                    }

                    if (v221)
                    {
                      v172 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                      [v182 setObject:v172 forKeyedSubscript:@"privateMACStaticByUserCount"];
                    }

                    else
                    {
                      [v182 setObject:0 forKeyedSubscript:@"privateMACStaticByUserCount"];
                    }

                    if (v216)
                    {
                      v173 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                      [v182 setObject:v173 forKeyedSubscript:@"privateMACRotatingByDefaultCount"];
                    }

                    else
                    {
                      [v182 setObject:0 forKeyedSubscript:@"privateMACRotatingByDefaultCount"];
                    }

                    if (v220)
                    {
                      v174 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
                      [v182 setObject:v174 forKeyedSubscript:@"privateMACRotatingByUserCount"];
                    }

                    else
                    {
                      [v182 setObject:0 forKeyedSubscript:@"privateMACRotatingByUserCount"];
                    }

                    v38 = v228 + 1;
                    if (v228 + 1 != v183)
                    {
                      continue;
                    }

                    v175 = [obj countByEnumeratingWithState:&v258 objects:v263 count:16];
                    v183 = v175;
                    if (!v175)
                    {
                      goto LABEL_396;
                    }

                    goto LABEL_78;
                }
              }
            }
          }

LABEL_183:
          ++v76;
          goto LABEL_188;
        }
      }

      break;
    }

    [v182 setObject:0 forKeyedSubscript:@"hiddenCount"];
    if (v34)
    {
      goto LABEL_121;
    }

    goto LABEL_124;
  }

LABEL_396:

  v176 = [v3 copy];
  v177 = *MEMORY[0x1E69E9840];

  return v176;
}

- (NSString)description
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v22 = self;
  v4 = [(CWFAutoJoinStatistics *)self coreAnalyticsEventPayload];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [v4 allKeys];
  v6 = [v5 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

  v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = MEMORY[0x1E696AEC0];
        v13 = [v4 objectForKeyedSubscript:v11];
        v14 = [v12 stringWithFormat:@"%@=%@", v11, v13];
        [v3 addObject:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  v15 = [MEMORY[0x1E695DF90] dictionary];
  v16 = [(CWFAutoJoinStatistics *)v22 autoJoinTriggerCounts];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1E0D666DC;
  v23[3] = &unk_1E86EA4A8;
  v24 = v15;
  v17 = v15;
  [v16 enumerateKeysAndObjectsUsingBlock:v23];

  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"triggers=%@", v17];
  [v3 addObject:v18];

  v19 = [v3 componentsJoinedByString:{@", "}];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (BOOL)isEqualToAutoJoinStatistics:(id)a3
{
  v5 = a3;
  startedAt = self->_startedAt;
  v7 = [v5 startedAt];
  if (startedAt != v7)
  {
    if (!self->_startedAt || ([v5 startedAt], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v11 = 0;
      goto LABEL_48;
    }

    v3 = v8;
    v9 = self->_startedAt;
    v10 = [v5 startedAt];
    if (![(NSDate *)v9 isEqual:v10])
    {
      v11 = 0;
LABEL_47:

      goto LABEL_48;
    }

    v50 = v10;
  }

  knownNetworks = self->_knownNetworks;
  v13 = [v5 knownNetworks];
  if (knownNetworks == v13)
  {
LABEL_12:
    autoJoinTriggerCounts = self->_autoJoinTriggerCounts;
    v21 = [v5 autoJoinTriggerCounts];
    if (autoJoinTriggerCounts != v21)
    {
      if (!self->_autoJoinTriggerCounts)
      {
        goto LABEL_41;
      }

      v22 = [v5 autoJoinTriggerCounts];
      if (!v22)
      {
LABEL_40:

        v11 = 0;
        goto LABEL_43;
      }

      v47 = v22;
      v23 = self->_autoJoinTriggerCounts;
      v24 = [v5 autoJoinTriggerCounts];
      v25 = v23;
      v26 = v24;
      if (![(NSMutableDictionary *)v25 isEqual:v24])
      {
        v11 = 0;
        goto LABEL_52;
      }

      v46 = v26;
    }

    autoJoinDidFindCandidateCount = self->_autoJoinDidFindCandidateCount;
    if (autoJoinDidFindCandidateCount == [v5 autoJoinDidFindCandidateCount])
    {
      autoJoinDidJoinCount = self->_autoJoinDidJoinCount;
      if (autoJoinDidJoinCount == [v5 autoJoinDidJoinCount])
      {
        autoJoinAlreadyAssociatedCount = self->_autoJoinAlreadyAssociatedCount;
        if (autoJoinAlreadyAssociatedCount == [v5 autoJoinAlreadyAssociatedCount])
        {
          autoJoinAbortedCount = self->_autoJoinAbortedCount;
          if (autoJoinAbortedCount == [v5 autoJoinAbortedCount])
          {
            scanChannelCount = self->_scanChannelCount;
            if (scanChannelCount == [v5 scanChannelCount])
            {
              scanChannelCount2GHz = self->_scanChannelCount2GHz;
              if (scanChannelCount2GHz == [v5 scanChannelCount2GHz])
              {
                scanChannelCount5GHz = self->_scanChannelCount5GHz;
                if (scanChannelCount5GHz == [v5 scanChannelCount5GHz])
                {
                  scanChannelCount6GHz = self->_scanChannelCount6GHz;
                  if (scanChannelCount6GHz == [v5 scanChannelCount6GHz])
                  {
                    preAssocScanChannelCount = self->_preAssocScanChannelCount;
                    if (preAssocScanChannelCount == [v5 preAssocScanChannelCount])
                    {
                      preAssocScanChannelCount2GHz = self->_preAssocScanChannelCount2GHz;
                      if (preAssocScanChannelCount2GHz == [v5 preAssocScanChannelCount2GHz])
                      {
                        preAssocScanChannelCount5GHz = self->_preAssocScanChannelCount5GHz;
                        if (preAssocScanChannelCount5GHz == [v5 preAssocScanChannelCount5GHz])
                        {
                          preAssocScanChannelCount6GHz = self->_preAssocScanChannelCount6GHz;
                          if (preAssocScanChannelCount6GHz == [v5 preAssocScanChannelCount6GHz])
                          {
                            followup6GHzScanChannelCount = self->_followup6GHzScanChannelCount;
                            if (followup6GHzScanChannelCount == [v5 followup6GHzScanChannelCount])
                            {
                              GASQueryCount = self->_GASQueryCount;
                              if (GASQueryCount == [v5 GASQueryCount])
                              {
                                autoHotspotCount = self->_autoHotspotCount;
                                if (autoHotspotCount == [v5 autoHotspotCount])
                                {
                                  autoHotspotDidFindCandidateCount = self->_autoHotspotDidFindCandidateCount;
                                  if (autoHotspotDidFindCandidateCount == [v5 autoHotspotDidFindCandidateCount])
                                  {
                                    autoHotspotDidJoinCount = self->_autoHotspotDidJoinCount;
                                    if (autoHotspotDidJoinCount == [v5 autoHotspotDidJoinCount])
                                    {
                                      autoHotspotAbortedCount = self->_autoHotspotAbortedCount;
                                      v11 = autoHotspotAbortedCount == [v5 autoHotspotAbortedCount];
                                      v26 = v46;
                                      if (autoJoinTriggerCounts == v21)
                                      {
                                        goto LABEL_42;
                                      }

LABEL_52:

                                      if (knownNetworks != v13)
                                      {

LABEL_54:
                                        v10 = v50;

                                        if (startedAt == v7)
                                        {
                                          goto LABEL_48;
                                        }

                                        goto LABEL_47;
                                      }

LABEL_45:

                                      goto LABEL_46;
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    if (autoJoinTriggerCounts != v21)
    {

      goto LABEL_40;
    }

LABEL_41:
    v11 = 0;
LABEL_42:

LABEL_43:
    if (knownNetworks != v13)
    {
    }

    goto LABEL_45;
  }

  if (!self->_knownNetworks)
  {
    v11 = 0;
    goto LABEL_45;
  }

  v14 = [v5 knownNetworks];
  if (!v14)
  {
    v11 = 0;
    goto LABEL_54;
  }

  v15 = v14;
  v16 = self->_knownNetworks;
  v17 = [v5 knownNetworks];
  v18 = v16;
  v19 = v17;
  if (([(NSArray *)v18 isEqual:v17]& 1) != 0)
  {
    v48 = v19;
    v49 = v15;
    goto LABEL_12;
  }

  v11 = 0;
LABEL_46:
  v10 = v50;
  if (startedAt != v7)
  {
    goto LABEL_47;
  }

LABEL_48:

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFAutoJoinStatistics *)self isEqualToAutoJoinStatistics:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSDate *)self->_startedAt hash];
  v4 = [(NSArray *)self->_knownNetworks hash];
  v5 = [(NSMutableDictionary *)self->_autoJoinTriggerCounts hash];
  v6 = veorq_s8(veorq_s8(veorq_s8(*&self->_autoJoinAlreadyAssociatedCount, *&self->_preAssocScanChannelCount), veorq_s8(*&self->_scanChannelCount, *&self->_followup6GHzScanChannelCount)), veorq_s8(veorq_s8(*&self->_autoJoinDidJoinCount, *&self->_preAssocScanChannelCount5GHz), veorq_s8(*&self->_scanChannelCount5GHz, *&self->_autoHotspotCount)));
  return *&veor_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) ^ self->_autoHotspotDidJoinCount ^ self->_autoHotspotAbortedCount ^ v5 ^ v3 ^ v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CWFAutoJoinStatistics allocWithZone:?]];
  [(CWFAutoJoinStatistics *)v4 setStartedAt:self->_startedAt];
  [(CWFAutoJoinStatistics *)v4 setKnownNetworks:self->_knownNetworks];
  v5 = [(NSMutableDictionary *)self->_autoJoinTriggerCounts mutableCopy];
  [(CWFAutoJoinStatistics *)v4 setAutoJoinTriggerCounts:v5];

  [(CWFAutoJoinStatistics *)v4 setAutoJoinDidFindCandidateCount:self->_autoJoinDidFindCandidateCount];
  [(CWFAutoJoinStatistics *)v4 setAutoJoinDidJoinCount:self->_autoJoinDidJoinCount];
  [(CWFAutoJoinStatistics *)v4 setAutoJoinAlreadyAssociatedCount:self->_autoJoinAlreadyAssociatedCount];
  [(CWFAutoJoinStatistics *)v4 setAutoJoinAbortedCount:self->_autoJoinAbortedCount];
  [(CWFAutoJoinStatistics *)v4 setScanChannelCount:self->_scanChannelCount];
  [(CWFAutoJoinStatistics *)v4 setScanChannelCount2GHz:self->_scanChannelCount2GHz];
  [(CWFAutoJoinStatistics *)v4 setScanChannelCount5GHz:self->_scanChannelCount5GHz];
  [(CWFAutoJoinStatistics *)v4 setScanChannelCount6GHz:self->_scanChannelCount6GHz];
  [(CWFAutoJoinStatistics *)v4 setPreAssocScanChannelCount:self->_preAssocScanChannelCount];
  [(CWFAutoJoinStatistics *)v4 setPreAssocScanChannelCount2GHz:self->_preAssocScanChannelCount2GHz];
  [(CWFAutoJoinStatistics *)v4 setPreAssocScanChannelCount5GHz:self->_preAssocScanChannelCount5GHz];
  [(CWFAutoJoinStatistics *)v4 setPreAssocScanChannelCount6GHz:self->_preAssocScanChannelCount6GHz];
  [(CWFAutoJoinStatistics *)v4 setFollowup6GHzScanChannelCount:self->_followup6GHzScanChannelCount];
  [(CWFAutoJoinStatistics *)v4 setGASQueryCount:self->_GASQueryCount];
  [(CWFAutoJoinStatistics *)v4 setAutoHotspotCount:self->_autoHotspotCount];
  [(CWFAutoJoinStatistics *)v4 setAutoHotspotDidFindCandidateCount:self->_autoHotspotDidFindCandidateCount];
  [(CWFAutoJoinStatistics *)v4 setAutoHotspotDidJoinCount:self->_autoHotspotDidJoinCount];
  [(CWFAutoJoinStatistics *)v4 setAutoHotspotAbortedCount:self->_autoHotspotAbortedCount];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  startedAt = self->_startedAt;
  v5 = a3;
  [v5 encodeObject:startedAt forKey:@"_startedAt"];
  [v5 encodeObject:self->_knownNetworks forKey:@"_knownNetworks"];
  v6 = [(NSMutableDictionary *)self->_autoJoinTriggerCounts copy];
  [v5 encodeObject:v6 forKey:@"_autoJoinTriggerCounts"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_autoJoinDidFindCandidateCount];
  [v5 encodeObject:v7 forKey:@"_autoJoinDidFindCandidateCount"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_autoJoinDidJoinCount];
  [v5 encodeObject:v8 forKey:@"_autoJoinDidJoinCount"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_autoJoinAlreadyAssociatedCount];
  [v5 encodeObject:v9 forKey:@"_autoJoinAlreadyAssociatedCount"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_autoJoinAbortedCount];
  [v5 encodeObject:v10 forKey:@"_autoJoinAbortedCount"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_scanChannelCount];
  [v5 encodeObject:v11 forKey:@"_scanChannelCount"];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_scanChannelCount2GHz];
  [v5 encodeObject:v12 forKey:@"_scanChannelCount2GHz"];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_scanChannelCount5GHz];
  [v5 encodeObject:v13 forKey:@"_scanChannelCount5GHz"];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_scanChannelCount6GHz];
  [v5 encodeObject:v14 forKey:@"_scanChannelCount6GHz"];

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_preAssocScanChannelCount];
  [v5 encodeObject:v15 forKey:@"_preAssocScanChannelCount"];

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_preAssocScanChannelCount2GHz];
  [v5 encodeObject:v16 forKey:@"_preAssocScanChannelCount2GHz"];

  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_preAssocScanChannelCount5GHz];
  [v5 encodeObject:v17 forKey:@"_preAssocScanChannelCount5GHz"];

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_preAssocScanChannelCount6GHz];
  [v5 encodeObject:v18 forKey:@"_preAssocScanChannelCount6GHz"];

  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_followup6GHzScanChannelCount];
  [v5 encodeObject:v19 forKey:@"_followup6GHzScanChannelCount"];

  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_GASQueryCount];
  [v5 encodeObject:v20 forKey:@"_GASQueryCount"];

  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_autoHotspotCount];
  [v5 encodeObject:v21 forKey:@"_autoHotspotCount"];

  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_autoHotspotDidFindCandidateCount];
  [v5 encodeObject:v22 forKey:@"_autoHotspotDidFindCandidateCount"];

  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_autoHotspotDidJoinCount];
  [v5 encodeObject:v23 forKey:@"_autoHotspotDidJoinCount"];

  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_autoHotspotAbortedCount];
  [v5 encodeObject:v24 forKey:@"_autoHotspotAbortedCount"];
}

- (CWFAutoJoinStatistics)initWithCoder:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = CWFAutoJoinStatistics;
  v5 = [(CWFAutoJoinStatistics *)&v39 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_startedAt"];
    startedAt = v5->_startedAt;
    v5->_startedAt = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"_knownNetworks"];
    v12 = [v11 mutableCopy];
    knownNetworks = v5->_knownNetworks;
    v5->_knownNetworks = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"_autoJoinTriggerCounts"];
    v18 = [v17 mutableCopy];
    autoJoinTriggerCounts = v5->_autoJoinTriggerCounts;
    v5->_autoJoinTriggerCounts = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_autoJoinDidFindCandidateCount"];
    v5->_autoJoinDidFindCandidateCount = [v20 unsignedIntegerValue];

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_autoJoinDidJoinCount"];
    v5->_autoJoinDidJoinCount = [v21 unsignedIntegerValue];

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_autoJoinAlreadyAssociatedCount"];
    v5->_autoJoinAlreadyAssociatedCount = [v22 unsignedIntegerValue];

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_autoJoinAbortedCount"];
    v5->_autoJoinAbortedCount = [v23 unsignedIntegerValue];

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_scanChannelCount"];
    v5->_scanChannelCount = [v24 unsignedIntegerValue];

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_scanChannelCount2GHz"];
    v5->_scanChannelCount2GHz = [v25 unsignedIntegerValue];

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_scanChannelCount5GHz"];
    v5->_scanChannelCount5GHz = [v26 unsignedIntegerValue];

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_scanChannelCount6GHz"];
    v5->_scanChannelCount6GHz = [v27 unsignedIntegerValue];

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_preAssocScanChannelCount"];
    v5->_preAssocScanChannelCount = [v28 unsignedIntegerValue];

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_preAssocScanChannelCount2GHz"];
    v5->_preAssocScanChannelCount2GHz = [v29 unsignedIntegerValue];

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_preAssocScanChannelCount5GHz"];
    v5->_preAssocScanChannelCount5GHz = [v30 unsignedIntegerValue];

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_preAssocScanChannelCount6GHz"];
    v5->_preAssocScanChannelCount6GHz = [v31 unsignedIntegerValue];

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_followup6GHzScanChannelCount"];
    v5->_followup6GHzScanChannelCount = [v32 unsignedIntegerValue];

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_GASQueryCount"];
    v5->_GASQueryCount = [v33 unsignedIntegerValue];

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_autoHotspotCount"];
    v5->_autoHotspotCount = [v34 unsignedIntegerValue];

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_autoHotspotDidFindCandidateCount"];
    v5->_autoHotspotDidFindCandidateCount = [v35 unsignedIntegerValue];

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_autoHotspotDidJoinCount"];
    v5->_autoHotspotDidJoinCount = [v36 unsignedIntegerValue];

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_autoHotspotAbortedCount"];
    v5->_autoHotspotAbortedCount = [v37 unsignedIntegerValue];
  }

  return v5;
}

@end