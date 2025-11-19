@interface CWFAutoJoinMetric
- (BOOL)isEqual:(id)a3;
- (CWFAutoJoinMetric)initWithCoder:(id)a3;
- (NSDictionary)coreAnalyticsEventPayload;
- (NSString)description;
- (id)JSONCompatibleKeyValueMap;
- (id)__descriptionForError:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CWFAutoJoinMetric

- (id)JSONCompatibleKeyValueMap
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(CWFAutoJoinMetric *)self coreAnalyticsEventPayload];
  if (v4)
  {
    [v3 addEntriesFromDictionary:v4];
  }

  v5 = [(CWFAutoJoinMetric *)self channelList];
  [v3 setObject:v5 forKeyedSubscript:@"channel_list"];

  v6 = sub_1E0BCEC64(v3, 0, 1u);
  if (v6)
  {
    v7 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)__descriptionForError:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = *MEMORY[0x1E696A578];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696A578]];

  v7 = [v3 userInfo];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  v9 = [v8 userInfo];
  v10 = [v9 objectForKeyedSubscript:v5];

  v11 = v8;
  v12 = v10;
  if (v8 || (v11 = v3, v12 = v6, v3))
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld '%@'", objc_msgSend(v11, "code"), v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (NSDictionary)coreAnalyticsEventPayload
{
  v520 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFAutoJoinMetric result](self, "result")}];
  [v3 setObject:v4 forKeyedSubscript:@"result"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFAutoJoinMetric wasAborted](self, "wasAborted")}];
  [v3 setObject:v5 forKeyedSubscript:@"wasAborted"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFAutoJoinMetric wasCancelled](self, "wasCancelled")}];
  [v3 setObject:v6 forKeyedSubscript:@"wasCancelled"];

  v7 = MEMORY[0x1E696AD98];
  v8 = [(CWFAutoJoinMetric *)self endedAt];
  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;
  v11 = [(CWFAutoJoinMetric *)self startedAt];
  [v11 timeIntervalSinceReferenceDate];
  v13 = [v7 numberWithUnsignedInteger:((v10 - v12) * 1000.0)];
  [v3 setObject:v13 forKeyedSubscript:@"duration"];

  v14 = [(CWFAutoJoinMetric *)self triggeredByLinkDownAt];
  if (v14)
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [(CWFAutoJoinMetric *)self endedAt];
    [v16 timeIntervalSinceReferenceDate];
    v18 = v17;
    v19 = [(CWFAutoJoinMetric *)self triggeredByLinkDownAt];
    [v19 timeIntervalSinceReferenceDate];
    v21 = [v15 numberWithUnsignedInteger:((v18 - v20) * 1000.0)];
    [v3 setObject:v21 forKeyedSubscript:@"durationFromLinkDownTrigger"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"durationFromLinkDownTrigger"];
  }

  v22 = [(CWFAutoJoinMetric *)self triggeredByDeviceWakeAt];
  if (v22)
  {
    v23 = MEMORY[0x1E696AD98];
    v24 = [(CWFAutoJoinMetric *)self endedAt];
    [v24 timeIntervalSinceReferenceDate];
    v26 = v25;
    v27 = [(CWFAutoJoinMetric *)self triggeredByDeviceWakeAt];
    [v27 timeIntervalSinceReferenceDate];
    v29 = [v23 numberWithUnsignedInteger:((v26 - v28) * 1000.0)];
    [v3 setObject:v29 forKeyedSubscript:@"durationFromDisplayOnTrigger"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"durationFromDisplayOnTrigger"];
  }

  v30 = [(CWFAutoJoinMetric *)self triggeredByFirstUnlockAt];
  if (v30)
  {
    v31 = MEMORY[0x1E696AD98];
    v32 = [(CWFAutoJoinMetric *)self endedAt];
    [v32 timeIntervalSinceReferenceDate];
    v34 = v33;
    v35 = [(CWFAutoJoinMetric *)self triggeredByFirstUnlockAt];
    [v35 timeIntervalSinceReferenceDate];
    v37 = [v31 numberWithUnsignedInteger:((v34 - v36) * 1000.0)];
    [v3 setObject:v37 forKeyedSubscript:@"durationFromDeviceUnlockTrigger"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"durationFromDeviceUnlockTrigger"];
  }

  v38 = [(CWFAutoJoinMetric *)self triggeredByWiFiOnAt];
  if (v38)
  {
    v39 = MEMORY[0x1E696AD98];
    v40 = [(CWFAutoJoinMetric *)self endedAt];
    [v40 timeIntervalSinceReferenceDate];
    v42 = v41;
    v43 = [(CWFAutoJoinMetric *)self triggeredByWiFiOnAt];
    [v43 timeIntervalSinceReferenceDate];
    v45 = [v39 numberWithUnsignedInteger:((v42 - v44) * 1000.0)];
    [v3 setObject:v45 forKeyedSubscript:@"durationFromWiFiPowerOnTrigger"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"durationFromWiFiPowerOnTrigger"];
  }

  v46 = [(CWFAutoJoinMetric *)self triggeredByMotionEndedAt];
  if (v46)
  {
    v47 = MEMORY[0x1E696AD98];
    v48 = [(CWFAutoJoinMetric *)self endedAt];
    [v48 timeIntervalSinceReferenceDate];
    v50 = v49;
    v51 = [(CWFAutoJoinMetric *)self triggeredByMotionEndedAt];
    [v51 timeIntervalSinceReferenceDate];
    v53 = [v47 numberWithUnsignedInteger:((v50 - v52) * 1000.0)];
    [v3 setObject:v53 forKeyedSubscript:@"durationFromMotionEndedTrigger"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"durationFromMotionEndedTrigger"];
  }

  v54 = [(CWFAutoJoinMetric *)self triggeredByAutoJoinEnabledAt];
  if (v54)
  {
    v55 = MEMORY[0x1E696AD98];
    v56 = [(CWFAutoJoinMetric *)self endedAt];
    [v56 timeIntervalSinceReferenceDate];
    v58 = v57;
    v59 = [(CWFAutoJoinMetric *)self triggeredByAutoJoinEnabledAt];
    [v59 timeIntervalSinceReferenceDate];
    v61 = [v55 numberWithUnsignedInteger:((v58 - v60) * 1000.0)];
    [v3 setObject:v61 forKeyedSubscript:@"durationFromAutoJoinEnabledTrigger"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"durationFromAutoJoinEnabledTrigger"];
  }

  v62 = [(CWFAutoJoinMetric *)self error];
  if (v62)
  {
    v63 = [(CWFAutoJoinMetric *)self error];
    v64 = [(CWFAutoJoinMetric *)self __descriptionForError:v63];
    [v3 setObject:v64 forKeyedSubscript:@"error"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"error"];
  }

  v65 = [(CWFAutoJoinMetric *)self autoJoinParameters];
  v66 = sub_1E0BCC05C([v65 trigger]);
  [v3 setObject:v66 forKeyedSubscript:@"trigger"];

  v67 = [(CWFAutoJoinMetric *)self autoJoinParameters];
  v68 = sub_1E0BCCB90([v67 mode]);
  [v3 setObject:v68 forKeyedSubscript:@"mode"];

  v69 = [(CWFAutoJoinMetric *)self autoJoinParameters];
  v70 = [v69 targetNetworkProfile];
  v71 = MEMORY[0x1E695E118];
  v72 = MEMORY[0x1E695E110];
  if (v70)
  {
    v73 = MEMORY[0x1E695E118];
  }

  else
  {
    v73 = MEMORY[0x1E695E110];
  }

  [v3 setObject:v73 forKeyedSubscript:@"didTargetSpecificNetwork"];

  v74 = sub_1E0BEE2F0([(CWFAutoJoinMetric *)self retrySchedule]);
  [v3 setObject:v74 forKeyedSubscript:@"retrySchedule"];

  v75 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAutoJoinMetric retryScheduleIndex](self, "retryScheduleIndex")}];
  [v3 setObject:v75 forKeyedSubscript:@"retryScheduleIndex"];

  v76 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFAutoJoinMetric didUseLocationOptimizedChannelList](self, "didUseLocationOptimizedChannelList")}];
  [v3 setObject:v76 forKeyedSubscript:@"didUseLocationOptimizedChannelList"];

  v77 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFAutoJoinMetric didDetectColocatedNetworkEnvironment](self, "didDetectColocatedNetworkEnvironment")}];
  [v3 setObject:v77 forKeyedSubscript:@"didDetectColocatedNetworkEnvironment"];

  v78 = [(CWFAutoJoinMetric *)self wasAlreadyAssociatedToNetwork];
  if (v78)
  {
    v79 = v71;
  }

  else
  {
    v79 = v72;
  }

  [v3 setObject:v79 forKeyedSubscript:@"wasAlreadyAssociated"];

  v80 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFAutoJoinMetric didDeferJoinToDiscoverMorePreferredNetwork](self, "didDeferJoinToDiscoverMorePreferredNetwork")}];
  [v3 setObject:v80 forKeyedSubscript:@"didDeferJoinToDiscoverMorePreferredNetwork"];

  v81 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFAutoJoinMetric didFallbackToJoinLessPreferredNetwork](self, "didFallbackToJoinLessPreferredNetwork")}];
  [v3 setObject:v81 forKeyedSubscript:@"didFallbackToJoinLessPreferredNetwork"];

  v82 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFAutoJoinMetric didExcludeDisabledNetwork](self, "didExcludeDisabledNetwork")}];
  [v3 setObject:v82 forKeyedSubscript:@"didExcludeDisabledNetwork"];

  v83 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFAutoJoinMetric didExcludeDisallowedNetwork](self, "didExcludeDisallowedNetwork")}];
  [v3 setObject:v83 forKeyedSubscript:@"didExcludeDisallowedNetwork"];

  v84 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFAutoJoinMetric didExcludeLowRSSINetwork](self, "didExcludeLowRSSINetwork")}];
  [v3 setObject:v84 forKeyedSubscript:@"didExcludeLowRSSINetwork"];

  v85 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFAutoJoinMetric didExcludePartiallyMatchedNetwork](self, "didExcludePartiallyMatchedNetwork")}];
  [v3 setObject:v85 forKeyedSubscript:@"didExcludePartiallyMatchedNetwork"];

  v86 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFAutoJoinMetric didExcludeStandalone6GHzNetwork](self, "didExcludeStandalone6GHzNetwork")}];
  [v3 setObject:v86 forKeyedSubscript:@"didExcludeStandalone6GHzNetwork"];

  v87 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFAutoJoinMetric didExclude6GHzOnlyNetwork](self, "didExclude6GHzOnlyNetwork")}];
  [v3 setObject:v87 forKeyedSubscript:@"didExclude6GHzOnlyNetwork"];

  v88 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFAutoJoinMetric didJoinDeferredNetwork](self, "didJoinDeferredNetwork")}];
  [v3 setObject:v88 forKeyedSubscript:@"didJoinDeferredNetworks"];

  v89 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFAutoJoinMetric didJoinPreviouslyLowRSSINetwork](self, "didJoinPreviouslyLowRSSINetwork")}];
  [v3 setObject:v89 forKeyedSubscript:@"didJoinPreviouslyLowRSSINetwork"];

  v90 = [(CWFAutoJoinMetric *)self userJoinedNetwork];

  if (v90)
  {
    v91 = MEMORY[0x1E696AD98];
    v92 = [(CWFAutoJoinMetric *)self userJoinedNetwork];
    v93 = [v92 matchingKnownNetworkProfile];
    v94 = [v91 numberWithBool:{objc_msgSend(v93, "isAutoJoinDisabled")}];
    [v3 setObject:v94 forKeyedSubscript:@"didUserJoinDisabledNetwork"];

    v95 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFAutoJoinMetric didUserJoinDisallowedNetwork](self, "didUserJoinDisallowedNetwork")}];
    [v3 setObject:v95 forKeyedSubscript:@"didUserJoinDisallowedNetwork"];

    v96 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFAutoJoinMetric didUserJoinLowRSSINetwork](self, "didUserJoinLowRSSINetwork")}];
    [v3 setObject:v96 forKeyedSubscript:@"didUserJoinLowRSSINetwork"];

    v97 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFAutoJoinMetric didUserJoinPartiallyMatchedNetwork](self, "didUserJoinPartiallyMatchedNetwork")}];
    [v3 setObject:v97 forKeyedSubscript:@"didUserJoinPartiallyMatchedNetwork"];

    v98 = MEMORY[0x1E696AD98];
    v99 = [(CWFAutoJoinMetric *)self userJoinedNetwork];
    v100 = [v99 matchingKnownNetworkProfile];
    v101 = [v98 numberWithBool:{objc_msgSend(v100, "isStandalone6G")}];
    [v3 setObject:v101 forKeyedSubscript:@"didUserJoinStandalone6GHzNetwork"];

    v102 = [(CWFAutoJoinMetric *)self userJoinedNetwork];
    v103 = [v102 matchingKnownNetworkProfile];
    v104 = [v103 wasRecently6GHzOnlyOnAnyDevice];
    v105 = MEMORY[0x1E695E118];
    if (v104)
    {
      v106 = MEMORY[0x1E695E118];
    }

    else
    {
      v106 = v72;
    }

    [v3 setObject:v106 forKeyedSubscript:@"didUserJoin6GHzOnlyNetwork"];

    v107 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFAutoJoinMetric didUserJoinDeferredNetwork](self, "didUserJoinDeferredNetwork")}];
    [v3 setObject:v107 forKeyedSubscript:@"didUserJoinDeferredNetwork"];

    v108 = [(CWFAutoJoinMetric *)self wasAlreadyAssociatedToNetwork];
    v109 = [v108 matchingKnownNetworkProfile];
    v110 = [(CWFAutoJoinMetric *)self userJoinedNetwork];
    v111 = [v110 matchingKnownNetworkProfile];
    if ([v109 compareUserPriority:v111] == -1)
    {
      v112 = v105;
    }

    else
    {
      v112 = v72;
    }

    [v3 setObject:v112 forKeyedSubscript:@"didUserJoinLessPreferredNetwork"];

    v113 = [(CWFAutoJoinMetric *)self userJoinedNetworkAt];
    if (v113)
    {
      v114 = MEMORY[0x1E696AD98];
      v115 = [(CWFAutoJoinMetric *)self userJoinedNetworkAt];
      [v115 timeIntervalSinceReferenceDate];
      v117 = v116;
      v118 = [(CWFAutoJoinMetric *)self endedAt];
      [v118 timeIntervalSinceReferenceDate];
      v120 = [v114 numberWithUnsignedInteger:((v117 - v119) * 1000.0)];
      [v3 setObject:v120 forKeyedSubscript:@"userJoinDelay"];
    }

    else
    {
      [v3 setObject:0 forKeyedSubscript:@"userJoinDelay"];
    }
  }

  v121 = [(CWFAutoJoinMetric *)self autoJoinedNetwork];
  v122 = [v121 matchingKnownNetworkProfile];
  v491 = v122;
  if (v122)
  {
    v123 = v122;
    v124 = [(CWFAutoJoinMetric *)self autoJoinParameters];
    v125 = [v124 targetNetworkProfile];
    v126 = [v125 identifier];
    v127 = [v123 identifier];
    if ([v126 isEqualToString:v127])
    {
      v128 = MEMORY[0x1E695E118];
    }

    else
    {
      v128 = v72;
    }

    [v3 setObject:v128 forKeyedSubscript:@"didJoinTargetNetwork"];
  }

  else
  {
    [v3 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"didJoinTargetNetwork"];
  }

  v490 = v121;
  v129 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAutoJoinMetric scanDuration](self, "scanDuration")}];
  [v3 setObject:v129 forKeyedSubscript:@"scanDuration"];

  v130 = MEMORY[0x1E696AD98];
  v131 = [(CWFAutoJoinMetric *)self scanChannels];
  v132 = [v130 numberWithUnsignedInteger:{objc_msgSend(v131, "count")}];
  [v3 setObject:v132 forKeyedSubscript:@"scanChannelCount"];

  v513 = 0u;
  v514 = 0u;
  v511 = 0u;
  v512 = 0u;
  v133 = [(CWFAutoJoinMetric *)self scanChannels];
  v134 = [v133 countByEnumeratingWithState:&v511 objects:v519 count:16];
  if (v134)
  {
    v135 = v134;
    v136 = 0;
    v492 = 0;
    v137 = 0;
    v138 = *v512;
    do
    {
      for (i = 0; i != v135; ++i)
      {
        if (*v512 != v138)
        {
          objc_enumerationMutation(v133);
        }

        v140 = *(*(&v511 + 1) + 8 * i);
        if ([v140 is2GHz])
        {
          ++v136;
        }

        else if ([v140 is5GHz])
        {
          ++v492;
        }

        else
        {
          v137 += [v140 is6GHz];
        }
      }

      v135 = [v133 countByEnumeratingWithState:&v511 objects:v519 count:16];
    }

    while (v135);
  }

  else
  {
    v136 = 0;
    v492 = 0;
    v137 = 0;
  }

  v141 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v136];
  [v3 setObject:v141 forKeyedSubscript:@"scanChannelCount2GHz"];

  v142 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v492];
  [v3 setObject:v142 forKeyedSubscript:@"scanChannelCount5GHz"];

  v143 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v137];
  v488 = v3;
  [v3 setObject:v143 forKeyedSubscript:@"scanChannelCount6GHz"];

  v509 = 0u;
  v510 = 0u;
  v507 = 0u;
  v508 = 0u;
  v489 = self;
  v144 = [(CWFAutoJoinMetric *)self preAssociationScanChannels];
  v145 = [v144 countByEnumeratingWithState:&v507 objects:v518 count:16];
  if (v145)
  {
    v146 = v145;
    v147 = 0;
    v148 = 0;
    v149 = 0;
    v150 = *v508;
    do
    {
      for (j = 0; j != v146; ++j)
      {
        if (*v508 != v150)
        {
          objc_enumerationMutation(v144);
        }

        v152 = *(*(&v507 + 1) + 8 * j);
        if ([v152 is2GHz])
        {
          ++v147;
        }

        else if ([v152 is5GHz])
        {
          ++v148;
        }

        else
        {
          v149 += [v152 is6GHz];
        }
      }

      v146 = [v144 countByEnumeratingWithState:&v507 objects:v518 count:16];
    }

    while (v146);
  }

  else
  {
    v147 = 0;
    v148 = 0;
    v149 = 0;
  }

  v153 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAutoJoinMetric preAssociationScanDuration](v489, "preAssociationScanDuration")}];
  [v488 setObject:v153 forKeyedSubscript:@"preAssocScanDuration"];

  v154 = MEMORY[0x1E696AD98];
  v155 = [(CWFAutoJoinMetric *)v489 preAssociationScanChannels];
  v156 = [v154 numberWithUnsignedInteger:{objc_msgSend(v155, "count")}];
  [v488 setObject:v156 forKeyedSubscript:@"preAssocScanChannelCount"];

  v157 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v147];
  [v488 setObject:v157 forKeyedSubscript:@"preAssocScanChannelCount2GHz"];

  v158 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v148];
  [v488 setObject:v158 forKeyedSubscript:@"preAssocScanChannelCount5GHz"];

  v159 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v149];
  [v488 setObject:v159 forKeyedSubscript:@"preAssocScanChannelCount6GHz"];

  v160 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAutoJoinMetric followup6GHzScanDuration](v489, "followup6GHzScanDuration")}];
  [v488 setObject:v160 forKeyedSubscript:@"followup6GHzScanDuration"];

  v161 = MEMORY[0x1E696AD98];
  v162 = [(CWFAutoJoinMetric *)v489 followup6GHzScanChannels];
  v163 = [v161 numberWithUnsignedInteger:{objc_msgSend(v162, "count")}];
  [v488 setObject:v163 forKeyedSubscript:@"followup6GHzScanChannelCount"];

  v164 = [(CWFAutoJoinMetric *)v489 scanDuration];
  v486 = [(CWFAutoJoinMetric *)v489 preAssociationScanDuration]+ v164;
  v485 = [(CWFAutoJoinMetric *)v489 followup6GHzScanDuration];
  v165 = [(CWFAutoJoinMetric *)v489 scanChannels];
  v166 = [v165 count];

  v167 = [(CWFAutoJoinMetric *)v489 preAssociationScanChannels];
  v168 = [v167 count] + v166;

  v169 = [(CWFAutoJoinMetric *)v489 followup6GHzScanChannels];
  v170 = [v169 count];

  v487 = v149 + v137;
  v171 = [(CWFAutoJoinMetric *)v489 followup6GHzScanChannels];
  v172 = [v171 count];

  v173 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v486 + v485];
  [v488 setObject:v173 forKeyedSubscript:@"combinedScanDuration"];

  v174 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v168 + v170];
  [v488 setObject:v174 forKeyedSubscript:@"combinedScanChannelCount"];

  v175 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v147 + v136];
  [v488 setObject:v175 forKeyedSubscript:@"combinedScanChannelCount2GHz"];

  v176 = v148 + v492;
  v177 = v489;
  v178 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v176];
  [v488 setObject:v178 forKeyedSubscript:@"combinedScanChannelCount5GHz"];

  v179 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v487 + v172];
  [v488 setObject:v179 forKeyedSubscript:@"combinedScanChannelCount6GHz"];

  v180 = [(CWFAutoJoinMetric *)v489 didIncludeRemainingNon2GHzChannels];
  v181 = MEMORY[0x1E695E110];
  if (v180)
  {
    v182 = MEMORY[0x1E695E118];
  }

  else
  {
    v182 = MEMORY[0x1E695E110];
  }

  [v488 setObject:v182 forKeyedSubscript:@"didIncludeRemainingNon2GHzChannels"];
  v183 = MEMORY[0x1E696AD98];
  v184 = [(CWFAutoJoinMetric *)v489 scanErrors];
  v185 = [v183 numberWithUnsignedInteger:{objc_msgSend(v184, "count")}];
  [v488 setObject:v185 forKeyedSubscript:@"scanErrorCount"];

  v186 = [(CWFAutoJoinMetric *)v489 scanErrors];
  if ([v186 count])
  {
    v187 = [(CWFAutoJoinMetric *)v489 scanErrors];
    v188 = [v187 lastObject];
    v189 = [(CWFAutoJoinMetric *)v489 __descriptionForError:v188];
    [v488 setObject:v189 forKeyedSubscript:@"lastScanError"];
  }

  else
  {
    [v488 setObject:0 forKeyedSubscript:@"lastScanError"];
  }

  v190 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAutoJoinMetric GASQueryDuration](v489, "GASQueryDuration")}];
  [v488 setObject:v190 forKeyedSubscript:@"GASQueryDuration"];

  v191 = MEMORY[0x1E696AD98];
  v192 = [(CWFAutoJoinMetric *)v489 GASQueryNetworks];
  v193 = [v191 numberWithUnsignedInteger:{objc_msgSend(v192, "count")}];
  [v488 setObject:v193 forKeyedSubscript:@"GASQueryCount"];

  v194 = MEMORY[0x1E696AD98];
  v195 = [(CWFAutoJoinMetric *)v489 GASQueryErrors];
  v196 = [v194 numberWithUnsignedInteger:{objc_msgSend(v195, "count")}];
  [v488 setObject:v196 forKeyedSubscript:@"GASQueryErrorCount"];

  v197 = [(CWFAutoJoinMetric *)v489 GASQueryErrors];
  if ([v197 count])
  {
    v198 = [(CWFAutoJoinMetric *)v489 GASQueryErrors];
    v199 = [v198 lastObject];
    v200 = [(CWFAutoJoinMetric *)v489 __descriptionForError:v199];
    [v488 setObject:v200 forKeyedSubscript:@"lastGASQueryError"];
  }

  else
  {
    [v488 setObject:0 forKeyedSubscript:@"lastGASQueryError"];
  }

  v201 = [(CWFAutoJoinMetric *)v489 joinEndedAt];
  if (v201)
  {
    v202 = MEMORY[0x1E696AD98];
    v203 = [(CWFAutoJoinMetric *)v489 joinEndedAt];
    [v203 timeIntervalSinceReferenceDate];
    v205 = v204;
    v206 = [(CWFAutoJoinMetric *)v489 joinStartedAt];
    [v206 timeIntervalSinceReferenceDate];
    v208 = [v202 numberWithUnsignedInteger:((v205 - v207) * 1000.0)];
    [v488 setObject:v208 forKeyedSubscript:@"joinDuration"];
  }

  else
  {
    [v488 setObject:0 forKeyedSubscript:@"joinDuration"];
  }

  v209 = MEMORY[0x1E696AD98];
  v210 = [(CWFAutoJoinMetric *)v489 joinErrors];
  v211 = [v209 numberWithUnsignedInteger:{objc_msgSend(v210, "count")}];
  [v488 setObject:v211 forKeyedSubscript:@"joinErrorCount"];

  v212 = [(CWFAutoJoinMetric *)v489 joinErrors];
  if ([v212 count])
  {
    v213 = [(CWFAutoJoinMetric *)v489 joinErrors];
    v214 = [v213 lastObject];
    v215 = [(CWFAutoJoinMetric *)v489 __descriptionForError:v214];
    [v488 setObject:v215 forKeyedSubscript:@"lastJoinError"];
  }

  else
  {
    [v488 setObject:0 forKeyedSubscript:@"lastJoinError"];
  }

  v216 = [(CWFAutoJoinMetric *)v489 joinEndedAt];
  if (v216)
  {
    v217 = MEMORY[0x1E696AD98];
    v218 = [(CWFAutoJoinMetric *)v489 joinEndedAt];
    [v218 timeIntervalSinceReferenceDate];
    v220 = v219;
    v221 = [(CWFAutoJoinMetric *)v489 startedAt];
    [v221 timeIntervalSinceReferenceDate];
    v223 = [v217 numberWithUnsignedInteger:((v220 - v222) * 1000.0)];
    [v488 setObject:v223 forKeyedSubscript:@"joinLatency"];
  }

  else
  {
    [v488 setObject:0 forKeyedSubscript:@"joinLatency"];
  }

  v224 = [(CWFAutoJoinMetric *)v489 matchedCandidateAt];
  if (v224)
  {
    v225 = MEMORY[0x1E696AD98];
    v226 = [(CWFAutoJoinMetric *)v489 matchedCandidateAt];
    [v226 timeIntervalSinceReferenceDate];
    v228 = v227;
    v229 = [(CWFAutoJoinMetric *)v489 startedAt];
    [v229 timeIntervalSinceReferenceDate];
    v231 = [v225 numberWithUnsignedInteger:((v228 - v230) * 1000.0)];
    [v488 setObject:v231 forKeyedSubscript:@"matchedCandidateLatency"];
  }

  else
  {
    [v488 setObject:0 forKeyedSubscript:@"matchedCandidateLatency"];
  }

  v232 = [(CWFAutoJoinMetric *)v489 joinStartedAt];
  if (v232)
  {
    v233 = MEMORY[0x1E696AD98];
    v234 = [(CWFAutoJoinMetric *)v489 joinStartedAt];
    [v234 timeIntervalSinceReferenceDate];
    v236 = v235;
    v237 = [(CWFAutoJoinMetric *)v489 startedAt];
    [v237 timeIntervalSinceReferenceDate];
    v239 = [v233 numberWithUnsignedInteger:((v236 - v238) * 1000.0)];
    [v488 setObject:v239 forKeyedSubscript:@"scanLatency"];
  }

  else
  {
    [v488 setObject:0 forKeyedSubscript:@"scanLatency"];
  }

  v240 = [(CWFAutoJoinMetric *)v489 routableIPv4AddressAt];
  if (v240)
  {
    v241 = MEMORY[0x1E696AD98];
    v242 = [(CWFAutoJoinMetric *)v489 routableIPv4AddressAt];
    [v242 timeIntervalSinceReferenceDate];
    v244 = v243;
    v245 = [(CWFAutoJoinMetric *)v489 joinEndedAt];
    [v245 timeIntervalSinceReferenceDate];
    v247 = [v241 numberWithUnsignedInteger:((v244 - v246) * 1000.0)];
    [v488 setObject:v247 forKeyedSubscript:@"routableIPv4Duration"];
  }

  else
  {
    [v488 setObject:0 forKeyedSubscript:@"routableIPv4Duration"];
  }

  v248 = [(CWFAutoJoinMetric *)v489 routableIPv4AddressAt];
  if (v248)
  {
    v249 = MEMORY[0x1E696AD98];
    v250 = [(CWFAutoJoinMetric *)v489 routableIPv4AddressAt];
    [v250 timeIntervalSinceReferenceDate];
    v252 = v251;
    v253 = [(CWFAutoJoinMetric *)v489 startedAt];
    [v253 timeIntervalSinceReferenceDate];
    v255 = [v249 numberWithUnsignedInteger:((v252 - v254) * 1000.0)];
    [v488 setObject:v255 forKeyedSubscript:@"routableIPv4Latency"];
  }

  else
  {
    [v488 setObject:0 forKeyedSubscript:@"routableIPv4Latency"];
  }

  v256 = [(CWFAutoJoinMetric *)v489 primaryIPv4InterfaceAt];
  if (v256)
  {
    v257 = MEMORY[0x1E696AD98];
    v258 = [(CWFAutoJoinMetric *)v489 primaryIPv4InterfaceAt];
    [v258 timeIntervalSinceReferenceDate];
    v260 = v259;
    v261 = [(CWFAutoJoinMetric *)v489 routableIPv4AddressAt];
    [v261 timeIntervalSinceReferenceDate];
    v263 = [v257 numberWithUnsignedInteger:((v260 - v262) * 1000.0)];
    [v488 setObject:v263 forKeyedSubscript:@"primaryIPv4InterfaceDuration"];
  }

  else
  {
    [v488 setObject:0 forKeyedSubscript:@"primaryIPv4InterfaceDuration"];
  }

  v264 = [(CWFAutoJoinMetric *)v489 primaryIPv4InterfaceAt];
  if (v264)
  {
    v265 = MEMORY[0x1E696AD98];
    v266 = [(CWFAutoJoinMetric *)v489 primaryIPv4InterfaceAt];
    [v266 timeIntervalSinceReferenceDate];
    v268 = v267;
    v269 = [(CWFAutoJoinMetric *)v489 startedAt];
    [v269 timeIntervalSinceReferenceDate];
    v271 = [v265 numberWithUnsignedInteger:((v268 - v270) * 1000.0)];
    [v488 setObject:v271 forKeyedSubscript:@"primaryIPv4InterfaceLatency"];
  }

  else
  {
    [v488 setObject:0 forKeyedSubscript:@"primaryIPv4InterfaceLatency"];
  }

  v272 = [(CWFAutoJoinMetric *)v489 routableIPv6AddressAt];
  if (v272)
  {
    v273 = MEMORY[0x1E696AD98];
    v274 = [(CWFAutoJoinMetric *)v489 routableIPv6AddressAt];
    [v274 timeIntervalSinceReferenceDate];
    v276 = v275;
    v277 = [(CWFAutoJoinMetric *)v489 joinEndedAt];
    [v277 timeIntervalSinceReferenceDate];
    v279 = [v273 numberWithUnsignedInteger:((v276 - v278) * 1000.0)];
    [v488 setObject:v279 forKeyedSubscript:@"routableIPv6Duration"];
  }

  else
  {
    [v488 setObject:0 forKeyedSubscript:@"routableIPv6Duration"];
  }

  v280 = [(CWFAutoJoinMetric *)v489 routableIPv6AddressAt];
  if (v280)
  {
    v281 = MEMORY[0x1E696AD98];
    v282 = [(CWFAutoJoinMetric *)v489 routableIPv6AddressAt];
    [v282 timeIntervalSinceReferenceDate];
    v284 = v283;
    v285 = [(CWFAutoJoinMetric *)v489 startedAt];
    [v285 timeIntervalSinceReferenceDate];
    v287 = [v281 numberWithUnsignedInteger:((v284 - v286) * 1000.0)];
    [v488 setObject:v287 forKeyedSubscript:@"routableIPv6Latency"];
  }

  else
  {
    [v488 setObject:0 forKeyedSubscript:@"routableIPv6Latency"];
  }

  v288 = [(CWFAutoJoinMetric *)v489 primaryIPv6InterfaceAt];
  if (v288)
  {
    v289 = MEMORY[0x1E696AD98];
    v290 = [(CWFAutoJoinMetric *)v489 primaryIPv6InterfaceAt];
    [v290 timeIntervalSinceReferenceDate];
    v292 = v291;
    v293 = [(CWFAutoJoinMetric *)v489 routableIPv6AddressAt];
    [v293 timeIntervalSinceReferenceDate];
    v295 = [v289 numberWithUnsignedInteger:((v292 - v294) * 1000.0)];
    [v488 setObject:v295 forKeyedSubscript:@"primaryIPv6InterfaceDuration"];
  }

  else
  {
    [v488 setObject:0 forKeyedSubscript:@"primaryIPv6InterfaceDuration"];
  }

  v296 = [(CWFAutoJoinMetric *)v489 primaryIPv6InterfaceAt];
  if (v296)
  {
    v297 = MEMORY[0x1E696AD98];
    v298 = [(CWFAutoJoinMetric *)v489 primaryIPv6InterfaceAt];
    [v298 timeIntervalSinceReferenceDate];
    v300 = v299;
    v301 = [(CWFAutoJoinMetric *)v489 startedAt];
    [v301 timeIntervalSinceReferenceDate];
    v303 = [v297 numberWithUnsignedInteger:((v300 - v302) * 1000.0)];
    [v488 setObject:v303 forKeyedSubscript:@"primaryIPv6InterfaceLatency"];
  }

  else
  {
    [v488 setObject:0 forKeyedSubscript:@"primaryIPv6InterfaceLatency"];
  }

  v304 = v491;

  v305 = [(CWFAutoJoinMetric *)v489 routableIPv4AddressAt];
  if (v305 && (v306 = v305, [(CWFAutoJoinMetric *)v489 routableIPv6AddressAt], v307 = objc_claimAutoreleasedReturnValue(), v307, v306, v307))
  {
    v308 = [(CWFAutoJoinMetric *)v489 routableIPv4AddressAt];
    v309 = [(CWFAutoJoinMetric *)v489 routableIPv6AddressAt];
    v310 = [v308 earlierDate:v309];
  }

  else
  {
    v308 = [(CWFAutoJoinMetric *)v489 routableIPv4AddressAt];
    if (v308)
    {
      [(CWFAutoJoinMetric *)v489 routableIPv4AddressAt];
    }

    else
    {
      [(CWFAutoJoinMetric *)v489 routableIPv6AddressAt];
    }
    v310 = ;
    v309 = v310;
  }

  v311 = v310;

  if (v311)
  {
    v312 = MEMORY[0x1E696AD98];
    [v311 timeIntervalSinceReferenceDate];
    v314 = v313;
    v315 = [(CWFAutoJoinMetric *)v489 joinEndedAt];
    [v315 timeIntervalSinceReferenceDate];
    v317 = [v312 numberWithUnsignedInteger:((v314 - v316) * 1000.0)];
    [v488 setObject:v317 forKeyedSubscript:@"routableIPDuration"];

    v318 = MEMORY[0x1E696AD98];
    [v311 timeIntervalSinceReferenceDate];
    v320 = v319;
    v321 = [(CWFAutoJoinMetric *)v489 startedAt];
    [v321 timeIntervalSinceReferenceDate];
    v323 = [v318 numberWithUnsignedInteger:((v320 - v322) * 1000.0)];
    [v488 setObject:v323 forKeyedSubscript:@"routableIPLatency"];

    v324 = [(CWFAutoJoinMetric *)v489 primaryIPv4InterfaceAt];
    if (v324 && (v325 = v324, [(CWFAutoJoinMetric *)v489 primaryIPv6InterfaceAt], v326 = objc_claimAutoreleasedReturnValue(), v326, v325, v326))
    {
      v327 = [(CWFAutoJoinMetric *)v489 primaryIPv4InterfaceAt];
      v328 = [(CWFAutoJoinMetric *)v489 primaryIPv6InterfaceAt];
      v329 = [v327 earlierDate:v328];
    }

    else
    {
      v327 = [(CWFAutoJoinMetric *)v489 primaryIPv4InterfaceAt];
      if (v327)
      {
        [(CWFAutoJoinMetric *)v489 primaryIPv4InterfaceAt];
      }

      else
      {
        [(CWFAutoJoinMetric *)v489 primaryIPv6InterfaceAt];
      }
      v329 = ;
      v328 = v329;
    }

    v330 = v329;

    if (v330)
    {
      v331 = [(CWFAutoJoinMetric *)v489 primaryIPv4InterfaceAt];
      if (v331 && (v332 = v331, -[CWFAutoJoinMetric primaryIPv4InterfaceAt](v489, "primaryIPv4InterfaceAt"), v333 = objc_claimAutoreleasedReturnValue(), v334 = [v333 isEqual:v330], v333, v332, v334))
      {
        v335 = MEMORY[0x1E696AD98];
        [v330 timeIntervalSinceReferenceDate];
        v337 = v336;
        v338 = [(CWFAutoJoinMetric *)v489 routableIPv4AddressAt];
      }

      else
      {
        v335 = MEMORY[0x1E696AD98];
        [v330 timeIntervalSinceReferenceDate];
        v337 = v339;
        v338 = [(CWFAutoJoinMetric *)v489 routableIPv6AddressAt];
      }

      v340 = v338;
      [v338 timeIntervalSinceReferenceDate];
      v342 = [v335 numberWithUnsignedInteger:((v337 - v341) * 1000.0)];
      [v488 setObject:v342 forKeyedSubscript:@"primaryInterfaceDuration"];

      v343 = MEMORY[0x1E696AD98];
      [v330 timeIntervalSinceReferenceDate];
      v345 = v344;
      v346 = [(CWFAutoJoinMetric *)v489 startedAt];
      [v346 timeIntervalSinceReferenceDate];
      v348 = [v343 numberWithUnsignedInteger:((v345 - v347) * 1000.0)];
      [v488 setObject:v348 forKeyedSubscript:@"primaryInterfaceLatency"];
    }

    v304 = v491;
  }

  if ([(CWFAutoJoinMetric *)v489 linkRecoveryDelay])
  {
    v349 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAutoJoinMetric linkRecoveryDelay](v489, "linkRecoveryDelay")}];
    [v488 setObject:v349 forKeyedSubscript:@"linkRecoveryDelay"];
  }

  else
  {
    [v488 setObject:0 forKeyedSubscript:@"linkRecoveryDelay"];
  }

  v350 = [(CWFAutoJoinMetric *)v489 didJoinPreviouslyAssociatedNetwork];
  v351 = MEMORY[0x1E695E118];
  if (v350)
  {
    v352 = MEMORY[0x1E695E118];
  }

  else
  {
    v352 = v181;
  }

  [v488 setObject:v352 forKeyedSubscript:@"didJoinPreviousAssocNetwork"];
  if (v490)
  {
    v353 = sub_1E0BD331C([v490 supportedSecurityTypes], objc_msgSend(v304, "WEPSubtype"), objc_msgSend(v304, "WAPISubtype"));
    [v488 setObject:v353 forKeyedSubscript:@"networkSecurityType"];

    v354 = sub_1E0BD3F78([v304 addReason]);
    [v488 setObject:v354 forKeyedSubscript:@"networkAddReason"];

    v355 = sub_1E0BEE5D4([v490 supportedPHYModes]);
    [v488 setObject:v355 forKeyedSubscript:@"networkPHYMode"];

    v351 = MEMORY[0x1E695E118];
  }

  else
  {
    [v488 setObject:0 forKeyedSubscript:@"networkSecurityType"];
    [v488 setObject:0 forKeyedSubscript:@"networkAddReason"];
    [v488 setObject:0 forKeyedSubscript:@"networkPHYMode"];
  }

  if ([v304 hiddenState] == 1)
  {
    v356 = v351;
  }

  else
  {
    v356 = v181;
  }

  [v488 setObject:v356 forKeyedSubscript:@"networkIsHidden"];
  if (([v304 isCaptive] & 1) == 0 && !objc_msgSend(v304, "wasCaptive"))
  {
    v351 = v181;
  }

  [v488 setObject:v351 forKeyedSubscript:@"networkIsCaptive"];
  v357 = [v304 isPasspoint];
  v358 = MEMORY[0x1E695E118];
  if ((v357 & 1) == 0 && ![v490 isPasspoint])
  {
    v358 = v181;
  }

  [v488 setObject:v358 forKeyedSubscript:@"networkIsPasspoint"];
  v359 = [v304 isPersonalHotspot];
  v360 = MEMORY[0x1E695E118];
  if ((v359 & 1) == 0 && ![v490 isPersonalHotspot])
  {
    v360 = v181;
  }

  [v488 setObject:v360 forKeyedSubscript:@"networkIsPersonalHotspot"];
  v361 = [v304 isCarPlay];
  v362 = MEMORY[0x1E695E118];
  v363 = MEMORY[0x1E695E118];
  if ((v361 & 1) == 0)
  {
    if ([v490 supportsCarPlay])
    {
      v363 = v362;
    }

    else
    {
      v363 = MEMORY[0x1E695E110];
    }
  }

  [v488 setObject:v363 forKeyedSubscript:@"networkIsCarPlay"];
  v364 = [v304 publicAttribute];
  v365 = MEMORY[0x1E695E110];
  if (v364 == 1)
  {
    v366 = v362;
  }

  else
  {
    v366 = MEMORY[0x1E695E110];
  }

  [v488 setObject:v366 forKeyedSubscript:@"networkIsPublic"];
  if ([v304 movingAttribute] == 1)
  {
    v367 = v362;
  }

  else
  {
    v367 = v365;
  }

  [v488 setObject:v367 forKeyedSubscript:@"networkIsMoving"];
  v368 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v490, "RSSI")}];
  [v488 setObject:v368 forKeyedSubscript:@"networkRSSI"];

  if ([v304 isAddReasonCarrierBundle])
  {
    v369 = [v304 payloadIdentifier];

    if (v369)
    {
      v370 = [v304 isPayloadIdentifierTelemetryApproved];
      v371 = v370 ? v362 : MEMORY[0x1E695E110];
      [v488 setObject:v371 forKeyedSubscript:@"networkCarrierPayloadIdentifierIsAllowed"];
      if (v370)
      {
        v372 = [v304 payloadIdentifier];
        [v488 setObject:v372 forKeyedSubscript:@"networkCarrierPayloadIdentifier"];
      }
    }
  }

  v373 = [v490 channel];
  v374 = v373;
  if (v373)
  {
    v375 = MEMORY[0x1E696AEC0];
    v376 = [v373 channel];
    v377 = sub_1E0BEE518([v374 band]);
    v378 = [v375 stringWithFormat:@"%ld (%@, %dMHz)", v376, v377, objc_msgSend(v374, "width")];
    [v488 setObject:v378 forKeyedSubscript:@"networkChannel"];

    v379 = sub_1E0BEE518([v374 band]);
    [v488 setObject:v379 forKeyedSubscript:@"networkChannelBand"];
  }

  else
  {
    [v488 setObject:0 forKeyedSubscript:@"networkChannel"];
    [v488 setObject:0 forKeyedSubscript:@"networkChannelBand"];
  }

  v380 = [(CWFAutoJoinMetric *)v489 was6EDisabled];
  v381 = MEMORY[0x1E695E110];
  if (v380)
  {
    v382 = v362;
  }

  else
  {
    v382 = MEMORY[0x1E695E110];
  }

  [v488 setObject:v382 forKeyedSubscript:@"was6EDisabled"];
  if ([(CWFAutoJoinMetric *)v489 was6EPreferOn])
  {
    v383 = 0;
  }

  else
  {
    v383 = v381;
  }

  [v488 setObject:v383 forKeyedSubscript:@"was6EPreferOn"];
  if ([v490 isWiFi6E])
  {
    v384 = v362;
  }

  else
  {
    v384 = v381;
  }

  [v488 setObject:v384 forKeyedSubscript:@"networkIsWiFi6E"];
  if ([(CWFAutoJoinMetric *)v489 wasDiscoveredViaRNR])
  {
    v385 = v362;
  }

  else
  {
    v385 = v381;
  }

  [v488 setObject:v385 forKeyedSubscript:@"wasDiscoveredViaRNR"];
  if ([(CWFAutoJoinMetric *)v489 wasDiscoveredViaFILSD])
  {
    v386 = v362;
  }

  else
  {
    v386 = v381;
  }

  [v488 setObject:v386 forKeyedSubscript:@"wasDiscoveredViaFILSD"];
  if ([(CWFAutoJoinMetric *)v489 wasDiscoveredVia6GHzFollowup])
  {
    v387 = v362;
  }

  else
  {
    v387 = v381;
  }

  [v488 setObject:v387 forKeyedSubscript:@"wasDiscoveredVia6GHzFollowup"];
  if ([(CWFAutoJoinMetric *)v489 was6GHzDeprioritized])
  {
    v388 = v362;
  }

  else
  {
    v388 = v381;
  }

  [v488 setObject:v388 forKeyedSubscript:@"was6GHzDeprioritized"];
  v389 = [v490 matchingKnownNetworkProfile];
  if ([v389 isStandalone6G])
  {
    v390 = v362;
  }

  else
  {
    v390 = v381;
  }

  [v488 setObject:v390 forKeyedSubscript:@"networkIsStandalone6GHz"];

  if ([v491 wasRecently6GHzOnlyOnAnyDevice])
  {
    v391 = v362;
  }

  else
  {
    v391 = v381;
  }

  [v488 setObject:v391 forKeyedSubscript:@"networkIs6GHzOnly"];
  v392 = [v490 BSSID];
  v393 = [v392 substringToIndex:8];
  [v488 setObject:v393 forKeyedSubscript:@"networkOUI"];

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v395 = v394;
  v396 = [v491 lastJoinedAt];
  v397 = v396;
  if (v396)
  {
    [v396 timeIntervalSinceReferenceDate];
    v399 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:((v395 - v398) / 86400.0 / 30.4375)];
    [v488 setObject:v399 forKeyedSubscript:@"numberOfMonthsSinceLastJoin"];

    v400 = MEMORY[0x1E695E118];
  }

  else
  {
    [v488 setObject:&unk_1F5BBD528 forKeyedSubscript:@"numberOfMonthsSinceLastJoin"];
    v400 = MEMORY[0x1E695E110];
  }

  [v488 setObject:v400 forKeyedSubscript:@"networkWasJoinedBefore"];
  v401 = [(CWFAutoJoinMetric *)v489 didPerformSeamlessSSIDTransition];
  v402 = MEMORY[0x1E695E110];
  if (v401)
  {
    v403 = v362;
  }

  else
  {
    v403 = MEMORY[0x1E695E110];
  }

  [v488 setObject:v403 forKeyedSubscript:@"didPerformSeamlessSSIDTransition"];
  if ([(CWFAutoJoinMetric *)v489 didTriggerReassoc])
  {
    v404 = v362;
  }

  else
  {
    v404 = v402;
  }

  [v488 setObject:v404 forKeyedSubscript:@"didTriggerReassoc"];
  v505 = 0u;
  v506 = 0u;
  v503 = 0u;
  v504 = 0u;
  v405 = [(CWFAutoJoinMetric *)v489 preferredChannelList];
  v406 = [v405 countByEnumeratingWithState:&v503 objects:v517 count:16];
  if (v406)
  {
    v407 = v406;
    v408 = *v504;
    while (2)
    {
      for (k = 0; k != v407; ++k)
      {
        if (*v504 != v408)
        {
          objc_enumerationMutation(v405);
        }

        v410 = *(*(&v503 + 1) + 8 * k);
        if (v410 == v374 || v374 && v410 && [v410 isEqual:v374])
        {
          [v488 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"didJoinPreferredChannel"];
          goto LABEL_233;
        }
      }

      v407 = [v405 countByEnumeratingWithState:&v503 objects:v517 count:16];
      if (v407)
      {
        continue;
      }

      break;
    }
  }

LABEL_233:

  v501 = 0u;
  v502 = 0u;
  v499 = 0u;
  v500 = 0u;
  v411 = [(CWFAutoJoinMetric *)v489 recentChannelList];
  v412 = [v411 countByEnumeratingWithState:&v499 objects:v516 count:16];
  if (v412)
  {
    v413 = v412;
    v414 = *v500;
    while (2)
    {
      for (m = 0; m != v413; ++m)
      {
        if (*v500 != v414)
        {
          objc_enumerationMutation(v411);
        }

        v416 = *(*(&v499 + 1) + 8 * m);
        if (v416 == v374 || v374 && v416 && [v416 isEqual:v374])
        {
          [v488 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"didJoinRecentChannel"];
          goto LABEL_246;
        }
      }

      v413 = [v411 countByEnumeratingWithState:&v499 objects:v516 count:16];
      if (v413)
      {
        continue;
      }

      break;
    }
  }

LABEL_246:

  v497 = 0u;
  v498 = 0u;
  v495 = 0u;
  v496 = 0u;
  v417 = [(CWFAutoJoinMetric *)v489 remainingChannelList];
  v418 = [v417 countByEnumeratingWithState:&v495 objects:v515 count:16];
  if (v418)
  {
    v419 = v418;
    v420 = *v496;
    while (2)
    {
      for (n = 0; n != v419; ++n)
      {
        if (*v496 != v420)
        {
          objc_enumerationMutation(v417);
        }

        v422 = *(*(&v495 + 1) + 8 * n);
        if (v422 == v374 || v374 && v422 && [v422 isEqual:v374])
        {
          [v488 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"didJoinRemainingChannel"];
          goto LABEL_259;
        }
      }

      v419 = [v417 countByEnumeratingWithState:&v495 objects:v515 count:16];
      if (v419)
      {
        continue;
      }

      break;
    }
  }

LABEL_259:

  v423 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAutoJoinMetric candidateBSSCount](v489, "candidateBSSCount")}];
  [v488 setObject:v423 forKeyedSubscript:@"candidateBSSCount"];

  v424 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAutoJoinMetric candidateSSIDCount](v489, "candidateSSIDCount")}];
  [v488 setObject:v424 forKeyedSubscript:@"candidateSSIDCount"];

  v425 = MEMORY[0x1E696AD98];
  v426 = [(CWFAutoJoinMetric *)v489 bestCandidateRSSI];
  v427 = [(CWFAutoJoinMetric *)v489 autoJoinedNetwork];
  v428 = [v425 numberWithInteger:{v426 - objc_msgSend(v427, "RSSI")}];
  [v488 setObject:v428 forKeyedSubscript:@"bestRSSIDelta"];

  v429 = [(CWFAutoJoinMetric *)v489 wasAlreadyAssociatedToNetwork];
  if (v429)
  {
    v430 = MEMORY[0x1E696AD98];
    v431 = [(CWFAutoJoinMetric *)v489 wasAlreadyAssociatedToNetwork];
    v432 = [v431 RSSI];
    v433 = [(CWFAutoJoinMetric *)v489 autoJoinedNetwork];
    v434 = [v430 numberWithInteger:{v432 - objc_msgSend(v433, "RSSI")}];
    [v488 setObject:v434 forKeyedSubscript:@"associatedRSSIDelta"];

    v177 = v489;
  }

  else
  {
    [v488 setObject:0 forKeyedSubscript:@"associatedRSSIDelta"];
  }

  v435 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFAutoJoinMetric wasLockdownModeEnabled](v177, "wasLockdownModeEnabled")}];
  [v488 setObject:v435 forKeyedSubscript:@"wasLockdownModeEnabled"];

  if ([(CWFAutoJoinMetric *)v177 wasBeforeFirstUnlock])
  {
    v436 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFAutoJoinMetric wasBeforeFirstUnlock](v177, "wasBeforeFirstUnlock")}];
    [v488 setObject:v436 forKeyedSubscript:@"wasBeforeFirstUnlock"];
  }

  else
  {
    [v488 setObject:0 forKeyedSubscript:@"wasBeforeFirstUnlock"];
  }

  v437 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFAutoJoinMetric autoHotspotWasAttempted](v177, "autoHotspotWasAttempted")}];
  [v488 setObject:v437 forKeyedSubscript:@"autoHotspotWasAttempted"];

  if ([(CWFAutoJoinMetric *)v177 autoHotspotWasAttempted])
  {
    v438 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFAutoJoinMetric autoHotspotResult](v177, "autoHotspotResult")}];
    [v488 setObject:v438 forKeyedSubscript:@"autoHotspotResult"];

    v439 = sub_1E0BEE210([(CWFAutoJoinMetric *)v177 autoHotspotMode]);
    [v488 setObject:v439 forKeyedSubscript:@"autoHotspotMode"];

    v440 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFAutoJoinMetric autoHotspotWasAborted](v177, "autoHotspotWasAborted")}];
    [v488 setObject:v440 forKeyedSubscript:@"autoHotspotWasAborted"];

    v441 = [(CWFAutoJoinMetric *)v177 autoHotspotStartedAt];
    if (v441)
    {
      v442 = MEMORY[0x1E696AD98];
      v443 = [(CWFAutoJoinMetric *)v177 autoHotspotEndedAt];
      [v443 timeIntervalSinceReferenceDate];
      v445 = v444;
      v446 = [(CWFAutoJoinMetric *)v177 autoHotspotStartedAt];
      [v446 timeIntervalSinceReferenceDate];
      v448 = [v442 numberWithUnsignedInteger:((v445 - v447) * 1000.0)];
      [v488 setObject:v448 forKeyedSubscript:@"autoHotspotDuration"];
    }

    else
    {
      [v488 setObject:0 forKeyedSubscript:@"autoHotspotDuration"];
    }

    v449 = [(CWFAutoJoinMetric *)v177 autoHotspotError];
    if (v449)
    {
      v450 = [(CWFAutoJoinMetric *)v177 autoHotspotError];
      v451 = [(CWFAutoJoinMetric *)v177 __descriptionForError:v450];
      [v488 setObject:v451 forKeyedSubscript:@"autoHotspotError"];
    }

    else
    {
      [v488 setObject:0 forKeyedSubscript:@"autoHotspotError"];
    }

    v452 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFAutoJoinMetric autoHotspotBrowseDuration](v177, "autoHotspotBrowseDuration")}];
    [v488 setObject:v452 forKeyedSubscript:@"autoHotspotBrowseDuration"];

    v453 = [(CWFAutoJoinMetric *)v177 autoHotspotBrowseError];
    if (v453)
    {
      v454 = [(CWFAutoJoinMetric *)v177 autoHotspotBrowseError];
      v455 = [(CWFAutoJoinMetric *)v177 __descriptionForError:v454];
      [v488 setObject:v455 forKeyedSubscript:@"autoHotspotBrowseError"];
    }

    else
    {
      [v488 setObject:0 forKeyedSubscript:@"autoHotspotBrowseError"];
    }

    v456 = MEMORY[0x1E696AD98];
    v457 = [(CWFAutoJoinMetric *)v177 autoHotspotJoinErrors];
    v458 = [v456 numberWithUnsignedInteger:{objc_msgSend(v457, "count")}];
    [v488 setObject:v458 forKeyedSubscript:@"autoHotspotJoinErrorCount"];

    v459 = [(CWFAutoJoinMetric *)v177 autoHotspotJoinEndedAt];
    if (v459)
    {
      v460 = MEMORY[0x1E696AD98];
      v461 = [(CWFAutoJoinMetric *)v177 autoHotspotJoinEndedAt];
      [v461 timeIntervalSinceReferenceDate];
      v463 = v462;
      v464 = [(CWFAutoJoinMetric *)v177 autoHotspotJoinStartedAt];
      [v464 timeIntervalSinceReferenceDate];
      v466 = [v460 numberWithUnsignedInteger:((v463 - v465) * 1000.0)];
      [v488 setObject:v466 forKeyedSubscript:@"autoHotspotJoinDuration"];
    }

    else
    {
      [v488 setObject:0 forKeyedSubscript:@"autoHotspotJoinDuration"];
    }

    v467 = [(CWFAutoJoinMetric *)v177 autoHotspotJoinErrors];
    if ([v467 count])
    {
      v468 = [(CWFAutoJoinMetric *)v177 autoHotspotJoinErrors];
      v469 = [v468 lastObject];
      v470 = [(CWFAutoJoinMetric *)v177 __descriptionForError:v469];
      [v488 setObject:v470 forKeyedSubscript:@"autoHotspotLastJoinError"];
    }

    else
    {
      [v488 setObject:0 forKeyedSubscript:@"autoHotspotLastJoinError"];
    }

    v471 = [(CWFAutoJoinMetric *)v177 hotspot];
    v472 = sub_1E0BEE3AC([v471 networkType]);
    [v488 setObject:v472 forKeyedSubscript:@"autoHotspotHotspotNetworkType"];

    v473 = [(CWFAutoJoinMetric *)v177 hotspot];
    v474 = sub_1E0BEE42C([v473 group]);
    [v488 setObject:v474 forKeyedSubscript:@"autoHotspotHotspotDeviceGroup"];

    v475 = [(CWFAutoJoinMetric *)v177 hotspot];
    v476 = [v475 batteryLife];
    [v488 setObject:v476 forKeyedSubscript:@"autoHotspotHotspotBatteryLevel"];

    v477 = [(CWFAutoJoinMetric *)v177 hotspot];
    v478 = [v477 signalStrength];
    [v488 setObject:v478 forKeyedSubscript:@"autoHotspotHotspotSignalStrength"];

    v479 = [(CWFAutoJoinMetric *)v177 hotspot];
    v480 = [v479 model];
    [v488 setObject:v480 forKeyedSubscript:@"autoHotspotHotspotDeviceModel"];
  }

  v493[0] = MEMORY[0x1E69E9820];
  v493[1] = 3221225472;
  v493[2] = sub_1E0D48514;
  v493[3] = &unk_1E86E9BB0;
  v481 = v488;
  v494 = v481;
  [v481 enumerateKeysAndObjectsUsingBlock:v493];
  v482 = [v481 copy];

  v483 = *MEMORY[0x1E69E9840];

  return v482;
}

- (NSString)description
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(CWFAutoJoinMetric *)self UUID];
  v6 = [v5 UUIDString];
  v7 = [v6 substringToIndex:5];
  v8 = [v4 stringWithFormat:@"uuid=%@", v7];
  [v3 addObject:v8];

  v26 = self;
  v9 = [(CWFAutoJoinMetric *)self coreAnalyticsEventPayload];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = [v9 allKeys];
  v11 = [v10 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

  v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        v17 = MEMORY[0x1E696AEC0];
        v18 = [v9 objectForKeyedSubscript:v16];
        v19 = [v17 stringWithFormat:@"%@=%@", v16, v18];
        [v3 addObject:v19];
      }

      v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v13);
  }

  v20 = MEMORY[0x1E696AEC0];
  v21 = [(CWFAutoJoinMetric *)v26 channelList];
  v22 = [v20 stringWithFormat:@"channelList=%@", v21];
  [v3 addObject:v22];

  v23 = [v3 componentsJoinedByString:{@", "}];

  v24 = *MEMORY[0x1E69E9840];

  return v23;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFAutoJoinMetric *)self isEqualToAutoJoinMetric:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v74 = [(NSUUID *)self->_UUID hash];
  v3 = self->_result;
  v73 = [(NSDate *)self->_startedAt hash];
  v72 = [(NSDate *)self->_endedAt hash];
  v71 = [(NSDate *)self->_joinStartedAt hash];
  v70 = [(NSDate *)self->_joinEndedAt hash];
  v69 = [(NSDate *)self->_matchedCandidateAt hash];
  v68 = [(NSDate *)self->_routableIPv4AddressAt hash];
  v67 = [(NSDate *)self->_routableIPv6AddressAt hash];
  v66 = [(NSDate *)self->_primaryIPv4InterfaceAt hash];
  v65 = [(NSDate *)self->_primaryIPv6InterfaceAt hash];
  v64 = [(NSDate *)self->_triggeredByLinkDownAt hash];
  v63 = [(NSDate *)self->_triggeredByFirstUnlockAt hash];
  v62 = [(NSDate *)self->_triggeredByWiFiOnAt hash];
  v60 = [(NSDate *)self->_triggeredByDeviceWakeAt hash];
  v59 = [(NSDate *)self->_triggeredByMotionEndedAt hash];
  v58 = [(NSDate *)self->_triggeredByAutoJoinEnabledAt hash];
  v57 = [(NSError *)self->_error hash];
  v4.i16[0] = *&self->_wasCancelled;
  v33 = v4;
  v56 = [(CWFAutoJoinParameters *)self->_autoJoinParameters hash];
  retryScheduleIndex = self->_retryScheduleIndex;
  retrySchedule = self->_retrySchedule;
  didUseLocationOptimizedChannelList = self->_didUseLocationOptimizedChannelList;
  didDetectColocatedNetworkEnvironment = self->_didDetectColocatedNetworkEnvironment;
  v55 = [(CWFScanResult *)self->_wasAlreadyAssociatedToNetwork hash];
  didDeferJoinToDiscoverMorePreferredNetwork = self->_didDeferJoinToDiscoverMorePreferredNetwork;
  didFallbackToJoinLessPreferredNetwork = self->_didFallbackToJoinLessPreferredNetwork;
  linkRecoveryDelay = self->_linkRecoveryDelay;
  didJoinPreviouslyLowRSSINetwork = self->_didJoinPreviouslyLowRSSINetwork;
  v10.i8[0] = self->_didJoinPreviouslyAssociatedNetwork;
  v32 = v10;
  v52 = [(NSArray *)self->_preferredChannelList hash];
  v50 = [(NSArray *)self->_recentChannelList hash];
  v49 = [(NSArray *)self->_remainingChannelList hash];
  v48 = [(NSArray *)self->_channelList hash];
  scanDuration = self->_scanDuration;
  v47 = [(NSArray *)self->_scanChannels hash];
  preAssociationScanDuration = self->_preAssociationScanDuration;
  v45 = [(NSArray *)self->_preAssociationScanChannels hash];
  followup6GHzScanDuration = self->_followup6GHzScanDuration;
  v43 = [(NSArray *)self->_followup6GHzScanChannels hash];
  v41 = [(NSArray *)self->_scanErrors hash];
  GASQueryDuration = self->_GASQueryDuration;
  v40 = [(NSArray *)self->_GASQueryNetworks hash];
  v38 = [(NSArray *)self->_GASQueryErrors hash];
  v37 = [(NSArray *)self->_joinErrors hash];
  v36 = [(CWFScanResult *)self->_autoJoinedNetwork hash];
  v35 = [(CWFScanResult *)self->_userJoinedNetwork hash];
  v34 = [(NSDate *)self->_userJoinedNetworkAt hash];
  v11 = v32;
  v11.i8[1] = v3;
  v12.i32[0] = vzip1q_s16(v11, v33).u32[0];
  v12.i16[2] = *&self->_was6EDisabled;
  v12.i8[6] = self->_was6GHzDeprioritized;
  v12.i8[7] = didUseLocationOptimizedChannelList;
  v12.i8[8] = didDetectColocatedNetworkEnvironment;
  v12.i8[9] = didDeferJoinToDiscoverMorePreferredNetwork;
  v12.i8[10] = didFallbackToJoinLessPreferredNetwork;
  v12.i8[11] = self->_didJoinDeferredNetwork;
  v12.i8[12] = didJoinPreviouslyLowRSSINetwork;
  v12.i8[13] = self->_didExcludeLowRSSINetwork;
  v12.i16[7] = *&self->_didExcludePartiallyMatchedNetwork;
  v13 = vandq_s8(vcltzq_s8(vshlq_n_s8(v12, 7uLL)), xmmword_1E0D81CE0);
  v14 = vandq_s8(vcltzq_s8(vshlq_n_s8(*&self->_didExcludeDisallowedNetwork, 7uLL)), xmmword_1E0D81CE0);
  v15 = vzip1q_s8(v14, vextq_s8(v14, v14, 8uLL));
  v15.i16[0] = vaddvq_s16(v15);
  v16 = v15.i32[0] << 16;
  v17 = (v15.i32[0] << 16) | vaddvq_s16(vzip1q_s8(v13, vextq_s8(v13, v13, 8uLL)));
  v33.i64[0] = self->_autoHotspotWasAttempted;
  autoHotspotWasAborted = self->_autoHotspotWasAborted;
  autoHotspotResult = self->_autoHotspotResult;
  v32.i64[0] = self->_bestCandidateRSSI;
  v61 = *&self->_candidateBSSCount;
  v18 = [(NSDate *)self->_autoHotspotStartedAt hash];
  v19 = [(NSDate *)self->_autoHotspotEndedAt hash];
  v20 = [(NSError *)self->_autoHotspotError hash];
  v29 = *&self->_autoHotspotMode;
  v21 = [(NSError *)self->_autoHotspotBrowseError hash];
  v22 = [(NSDate *)self->_autoHotspotJoinStartedAt hash];
  v23 = [(NSDate *)self->_autoHotspotJoinEndedAt hash];
  v24 = [(NSArray *)self->_autoHotspotJoinErrors hash];
  v25 = [(SFRemoteHotspotDevice *)self->_hotspot hash];
  v26 = veorq_s8(v61, v29);
  v27 = v17 ^ HIWORD(v16) ^ ((v17 ^ HIWORD(v16)) >> 8) ^ ((v17 ^ HIWORD(v16) ^ ((v17 ^ HIWORD(v16)) >> 8)) >> 4);
  return *&veor_s8(*v26.i8, *&vextq_s8(v26, v26, 8uLL)) ^ v33.i64[0] ^ (autoHotspotResult ^ autoHotspotWasAborted) & 1 ^ retrySchedule ^ retryScheduleIndex ^ linkRecoveryDelay ^ scanDuration ^ preAssociationScanDuration ^ followup6GHzScanDuration ^ GASQueryDuration ^ v32.i64[0] ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v34 ^ v35 ^ v36 ^ v37 ^ v38 ^ v40 ^ v41 ^ v43 ^ v45 ^ v47 ^ v48 ^ v49 ^ v50 ^ v52 ^ v55 ^ v56 ^ v57 ^ v58 ^ v59 ^ v60 ^ v62 ^ v63 ^ v64 ^ v65 ^ v66 ^ v67 ^ v68 ^ v69 ^ v70 ^ v71 ^ v72 ^ v73 ^ v74 ^ (v27 ^ (v27 >> 2) ^ ((v27 ^ (v27 >> 2)) >> 1)) & 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CWFAutoJoinMetric allocWithZone:?]];
  [(CWFAutoJoinMetric *)v4 setUUID:self->_UUID];
  [(CWFAutoJoinMetric *)v4 setResult:self->_result];
  [(CWFAutoJoinMetric *)v4 setStartedAt:self->_startedAt];
  [(CWFAutoJoinMetric *)v4 setEndedAt:self->_endedAt];
  [(CWFAutoJoinMetric *)v4 setJoinStartedAt:self->_joinStartedAt];
  [(CWFAutoJoinMetric *)v4 setJoinEndedAt:self->_joinEndedAt];
  [(CWFAutoJoinMetric *)v4 setMatchedCandidateAt:self->_matchedCandidateAt];
  [(CWFAutoJoinMetric *)v4 setRoutableIPv4AddressAt:self->_routableIPv4AddressAt];
  [(CWFAutoJoinMetric *)v4 setRoutableIPv6AddressAt:self->_routableIPv6AddressAt];
  [(CWFAutoJoinMetric *)v4 setPrimaryIPv4InterfaceAt:self->_primaryIPv4InterfaceAt];
  [(CWFAutoJoinMetric *)v4 setPrimaryIPv6InterfaceAt:self->_primaryIPv6InterfaceAt];
  [(CWFAutoJoinMetric *)v4 setTriggeredByLinkDownAt:self->_triggeredByLinkDownAt];
  [(CWFAutoJoinMetric *)v4 setTriggeredByFirstUnlockAt:self->_triggeredByFirstUnlockAt];
  [(CWFAutoJoinMetric *)v4 setTriggeredByWiFiOnAt:self->_triggeredByWiFiOnAt];
  [(CWFAutoJoinMetric *)v4 setTriggeredByDeviceWakeAt:self->_triggeredByDeviceWakeAt];
  [(CWFAutoJoinMetric *)v4 setTriggeredByMotionEndedAt:self->_triggeredByMotionEndedAt];
  [(CWFAutoJoinMetric *)v4 setTriggeredByAutoJoinEnabledAt:self->_triggeredByAutoJoinEnabledAt];
  [(CWFAutoJoinMetric *)v4 setError:self->_error];
  [(CWFAutoJoinMetric *)v4 setWasCancelled:self->_wasCancelled];
  [(CWFAutoJoinMetric *)v4 setWasAborted:self->_wasAborted];
  [(CWFAutoJoinMetric *)v4 setAutoJoinParameters:self->_autoJoinParameters];
  [(CWFAutoJoinMetric *)v4 setRetrySchedule:self->_retrySchedule];
  [(CWFAutoJoinMetric *)v4 setRetryScheduleIndex:self->_retryScheduleIndex];
  [(CWFAutoJoinMetric *)v4 setDidUseLocationOptimizedChannelList:self->_didUseLocationOptimizedChannelList];
  [(CWFAutoJoinMetric *)v4 setDidDetectColocatedNetworkEnvironment:self->_didDetectColocatedNetworkEnvironment];
  [(CWFAutoJoinMetric *)v4 setWasAlreadyAssociatedToNetwork:self->_wasAlreadyAssociatedToNetwork];
  [(CWFAutoJoinMetric *)v4 setDidDeferJoinToDiscoverMorePreferredNetwork:self->_didDeferJoinToDiscoverMorePreferredNetwork];
  [(CWFAutoJoinMetric *)v4 setDidFallbackToJoinLessPreferredNetwork:self->_didFallbackToJoinLessPreferredNetwork];
  [(CWFAutoJoinMetric *)v4 setDidJoinPreviouslyAssociatedNetwork:self->_didJoinPreviouslyAssociatedNetwork];
  [(CWFAutoJoinMetric *)v4 setLinkRecoveryDelay:self->_linkRecoveryDelay];
  [(CWFAutoJoinMetric *)v4 setDidJoinPreviouslyLowRSSINetwork:self->_didJoinPreviouslyLowRSSINetwork];
  [(CWFAutoJoinMetric *)v4 setPreferredChannelList:self->_preferredChannelList];
  [(CWFAutoJoinMetric *)v4 setRecentChannelList:self->_recentChannelList];
  [(CWFAutoJoinMetric *)v4 setRemainingChannelList:self->_remainingChannelList];
  [(CWFAutoJoinMetric *)v4 setChannelList:self->_channelList];
  [(CWFAutoJoinMetric *)v4 setScanDuration:self->_scanDuration];
  [(CWFAutoJoinMetric *)v4 setScanChannels:self->_scanChannels];
  [(CWFAutoJoinMetric *)v4 setPreAssociationScanDuration:self->_preAssociationScanDuration];
  [(CWFAutoJoinMetric *)v4 setPreAssociationScanChannels:self->_preAssociationScanChannels];
  [(CWFAutoJoinMetric *)v4 setFollowup6GHzScanDuration:self->_followup6GHzScanDuration];
  [(CWFAutoJoinMetric *)v4 setFollowup6GHzScanChannels:self->_followup6GHzScanChannels];
  [(CWFAutoJoinMetric *)v4 setScanErrors:self->_scanErrors];
  [(CWFAutoJoinMetric *)v4 setGASQueryDuration:self->_GASQueryDuration];
  [(CWFAutoJoinMetric *)v4 setGASQueryNetworks:self->_GASQueryNetworks];
  [(CWFAutoJoinMetric *)v4 setGASQueryErrors:self->_GASQueryErrors];
  [(CWFAutoJoinMetric *)v4 setJoinErrors:self->_joinErrors];
  [(CWFAutoJoinMetric *)v4 setAutoJoinedNetwork:self->_autoJoinedNetwork];
  [(CWFAutoJoinMetric *)v4 setUserJoinedNetwork:self->_userJoinedNetwork];
  [(CWFAutoJoinMetric *)v4 setUserJoinedNetworkAt:self->_userJoinedNetworkAt];
  [(CWFAutoJoinMetric *)v4 setDidTriggerReassoc:self->_didTriggerReassoc];
  [(CWFAutoJoinMetric *)v4 setDidPerformSeamlessSSIDTransition:self->_didPerformSeamlessSSIDTransition];
  [(CWFAutoJoinMetric *)v4 setWasDiscoveredViaRNR:self->_wasDiscoveredViaRNR];
  [(CWFAutoJoinMetric *)v4 setWasDiscoveredViaFILSD:self->_wasDiscoveredViaFILSD];
  [(CWFAutoJoinMetric *)v4 setWasDiscoveredVia6GHzFollowup:self->_wasDiscoveredVia6GHzFollowup];
  [(CWFAutoJoinMetric *)v4 setWas6EDisabled:self->_was6EDisabled];
  [(CWFAutoJoinMetric *)v4 setWas6EPreferOn:self->_was6EPreferOn];
  [(CWFAutoJoinMetric *)v4 setWas6GHzDeprioritized:self->_was6GHzDeprioritized];
  [(CWFAutoJoinMetric *)v4 setDidExcludeStandalone6GHzNetwork:self->_didExcludeStandalone6GHzNetwork];
  [(CWFAutoJoinMetric *)v4 setDidExclude6GHzOnlyNetwork:self->_didExclude6GHzOnlyNetwork];
  [(CWFAutoJoinMetric *)v4 setDidExcludeDisabledNetwork:self->_didExcludeDisabledNetwork];
  [(CWFAutoJoinMetric *)v4 setDidExcludeDisallowedNetwork:self->_didExcludeDisallowedNetwork];
  [(CWFAutoJoinMetric *)v4 setDidExcludeLowRSSINetwork:self->_didExcludeLowRSSINetwork];
  [(CWFAutoJoinMetric *)v4 setDidExcludePartiallyMatchedNetwork:self->_didExcludePartiallyMatchedNetwork];
  [(CWFAutoJoinMetric *)v4 setDidJoinDeferredNetwork:self->_didJoinDeferredNetwork];
  [(CWFAutoJoinMetric *)v4 setDidUserJoinKnownNetwork:self->_didUserJoinKnownNetwork];
  [(CWFAutoJoinMetric *)v4 setDidUserJoinPartiallyMatchedNetwork:self->_didUserJoinPartiallyMatchedNetwork];
  [(CWFAutoJoinMetric *)v4 setDidUserJoinDisallowedNetwork:self->_didUserJoinDisallowedNetwork];
  [(CWFAutoJoinMetric *)v4 setDidUserJoinLowRSSINetwork:self->_didUserJoinLowRSSINetwork];
  [(CWFAutoJoinMetric *)v4 setDidUserJoinDeferredNetwork:self->_didUserJoinDeferredNetwork];
  [(CWFAutoJoinMetric *)v4 setDidIncludeRemainingNon2GHzChannels:self->_didIncludeRemainingNon2GHzChannels];
  [(CWFAutoJoinMetric *)v4 setBestCandidateRSSI:self->_bestCandidateRSSI];
  [(CWFAutoJoinMetric *)v4 setCandidateBSSCount:self->_candidateBSSCount];
  [(CWFAutoJoinMetric *)v4 setCandidateSSIDCount:self->_candidateSSIDCount];
  [(CWFAutoJoinMetric *)v4 setWasLockdownModeEnabled:self->_wasLockdownModeEnabled];
  [(CWFAutoJoinMetric *)v4 setWasBeforeFirstUnlock:self->_wasBeforeFirstUnlock];
  [(CWFAutoJoinMetric *)v4 setAutoHotspotWasAttempted:self->_autoHotspotWasAttempted];
  [(CWFAutoJoinMetric *)v4 setAutoHotspotResult:self->_autoHotspotResult];
  [(CWFAutoJoinMetric *)v4 setAutoHotspotWasAborted:self->_autoHotspotWasAborted];
  [(CWFAutoJoinMetric *)v4 setAutoHotspotStartedAt:self->_autoHotspotStartedAt];
  [(CWFAutoJoinMetric *)v4 setAutoHotspotEndedAt:self->_autoHotspotEndedAt];
  [(CWFAutoJoinMetric *)v4 setAutoHotspotError:self->_autoHotspotError];
  [(CWFAutoJoinMetric *)v4 setAutoHotspotMode:self->_autoHotspotMode];
  [(CWFAutoJoinMetric *)v4 setAutoHotspotBrowseDuration:self->_autoHotspotBrowseDuration];
  [(CWFAutoJoinMetric *)v4 setAutoHotspotBrowseError:self->_autoHotspotBrowseError];
  [(CWFAutoJoinMetric *)v4 setAutoHotspotJoinStartedAt:self->_autoHotspotJoinStartedAt];
  [(CWFAutoJoinMetric *)v4 setAutoHotspotJoinEndedAt:self->_autoHotspotJoinEndedAt];
  [(CWFAutoJoinMetric *)v4 setAutoHotspotJoinErrors:self->_autoHotspotJoinErrors];
  [(CWFAutoJoinMetric *)v4 setHotspot:self->_hotspot];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  UUID = self->_UUID;
  v14 = a3;
  [v14 encodeObject:UUID forKey:@"_UUID"];
  [v14 encodeBool:self->_result forKey:@"_result"];
  [v14 encodeObject:self->_startedAt forKey:@"_startedAt"];
  [v14 encodeObject:self->_endedAt forKey:@"_endedAt"];
  [v14 encodeObject:self->_joinStartedAt forKey:@"_joinStartedAt"];
  [v14 encodeObject:self->_joinEndedAt forKey:@"_joinEndedAt"];
  [v14 encodeObject:self->_matchedCandidateAt forKey:@"_matchedCandidateAt"];
  [v14 encodeObject:self->_routableIPv4AddressAt forKey:@"_routableIPv4AddressAt"];
  [v14 encodeObject:self->_routableIPv6AddressAt forKey:@"_routableIPv6AddressAt"];
  [v14 encodeObject:self->_primaryIPv4InterfaceAt forKey:@"_primaryIPv4InterfaceAt"];
  [v14 encodeObject:self->_primaryIPv6InterfaceAt forKey:@"_primaryIPv6InterfaceAt"];
  [v14 encodeObject:self->_triggeredByLinkDownAt forKey:@"_triggeredByLinkDownAt"];
  [v14 encodeObject:self->_triggeredByFirstUnlockAt forKey:@"_triggeredByFirstUnlockAt"];
  [v14 encodeObject:self->_triggeredByWiFiOnAt forKey:@"_triggeredByWiFiOnAt"];
  [v14 encodeObject:self->_triggeredByDeviceWakeAt forKey:@"_triggeredByDeviceWakeAt"];
  [v14 encodeObject:self->_triggeredByMotionEndedAt forKey:@"_triggeredByMotionEndedAt"];
  [v14 encodeObject:self->_triggeredByAutoJoinEnabledAt forKey:@"_triggeredByAutoJoinEnabledAt"];
  [v14 encodeObject:self->_error forKey:@"_error"];
  [v14 encodeBool:self->_wasCancelled forKey:@"_wasCancelled"];
  [v14 encodeBool:self->_wasAborted forKey:@"_wasAborted"];
  [v14 encodeObject:self->_autoJoinParameters forKey:@"_autoJoinParameters"];
  [v14 encodeInteger:self->_retrySchedule forKey:@"_retrySchedule"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_retryScheduleIndex];
  [v14 encodeObject:v5 forKey:@"_retryScheduleIndex"];

  [v14 encodeBool:self->_didUseLocationOptimizedChannelList forKey:@"_didUseLocationOptimizedChannelList"];
  [v14 encodeBool:self->_didDetectColocatedNetworkEnvironment forKey:@"_didDetectColocatedNetworkEnvironment"];
  [v14 encodeObject:self->_wasAlreadyAssociatedToNetwork forKey:@"_wasAlreadyAssociatedToNetwork"];
  [v14 encodeBool:self->_didDeferJoinToDiscoverMorePreferredNetwork forKey:@"_didDeferJoinToDiscoverMorePreferredNetwork"];
  [v14 encodeBool:self->_didFallbackToJoinLessPreferredNetwork forKey:@"_didFallbackToJoinLessPreferredNetwork"];
  [v14 encodeBool:self->_didJoinPreviouslyAssociatedNetwork forKey:@"_didJoinPreviouslyAssociatedNetwork"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_linkRecoveryDelay];
  [v14 encodeObject:v6 forKey:@"_linkRecoveryDelay"];

  [v14 encodeBool:self->_didJoinPreviouslyLowRSSINetwork forKey:@"_didJoinPreviouslyLowRSSINetwork"];
  [v14 encodeObject:self->_preferredChannelList forKey:@"_preferredChannelList"];
  [v14 encodeObject:self->_recentChannelList forKey:@"_recentChannelList"];
  [v14 encodeObject:self->_remainingChannelList forKey:@"_remainingChannelList"];
  [v14 encodeObject:self->_channelList forKey:@"_channelList"];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_scanDuration];
  [v14 encodeObject:v7 forKey:@"_scanDuration"];

  [v14 encodeObject:self->_scanChannels forKey:@"_scanChannels"];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_preAssociationScanDuration];
  [v14 encodeObject:v8 forKey:@"_preAssociationScanDuration"];

  [v14 encodeObject:self->_preAssociationScanChannels forKey:@"_preAssociationScanChannels"];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_followup6GHzScanDuration];
  [v14 encodeObject:v9 forKey:@"_followup6GHzScanDuration"];

  [v14 encodeObject:self->_followup6GHzScanChannels forKey:@"_followup6GHzScanChannels"];
  [v14 encodeObject:self->_scanErrors forKey:@"_scanErrors"];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_GASQueryDuration];
  [v14 encodeObject:v10 forKey:@"_GASQueryDuration"];

  [v14 encodeObject:self->_GASQueryNetworks forKey:@"_GASQueryNetworks"];
  [v14 encodeObject:self->_GASQueryErrors forKey:@"_GASQueryErrors"];
  [v14 encodeObject:self->_joinErrors forKey:@"_joinErrors"];
  [v14 encodeObject:self->_autoJoinedNetwork forKey:@"_autoJoinedNetwork"];
  [v14 encodeObject:self->_userJoinedNetwork forKey:@"_userJoinedNetwork"];
  [v14 encodeObject:self->_userJoinedNetworkAt forKey:@"_userJoinedNetworkAt"];
  [v14 encodeBool:self->_didTriggerReassoc forKey:@"_didTriggerReassoc"];
  [v14 encodeBool:self->_didPerformSeamlessSSIDTransition forKey:@"_didPerformSeamlessSSIDTransition"];
  [v14 encodeBool:self->_wasDiscoveredViaRNR forKey:@"_wasDiscoveredViaRNR"];
  [v14 encodeBool:self->_wasDiscoveredViaFILSD forKey:@"_wasDiscoveredViaFILSD"];
  [v14 encodeBool:self->_wasDiscoveredVia6GHzFollowup forKey:@"_wasDiscoveredVia6GHzFollowup"];
  [v14 encodeBool:self->_was6EDisabled forKey:@"_was6EDisabled"];
  [v14 encodeBool:self->_was6EPreferOn forKey:@"_was6EPreferOn"];
  [v14 encodeBool:self->_was6GHzDeprioritized forKey:@"_was6GHzDeprioritized"];
  [v14 encodeBool:self->_didExcludeStandalone6GHzNetwork forKey:@"_didExcludeStandalone6GHzNetwork"];
  [v14 encodeBool:self->_didExclude6GHzOnlyNetwork forKey:@"_didExclude6GHzOnlyNetwork"];
  [v14 encodeBool:self->_didExcludeDisabledNetwork forKey:@"_didExcludeDisabledNetwork"];
  [v14 encodeBool:self->_didExcludeDisallowedNetwork forKey:@"_didExcludeDisallowedNetwork"];
  [v14 encodeBool:self->_didExcludeLowRSSINetwork forKey:@"_didExcludeLowRSSINetwork"];
  [v14 encodeBool:self->_didExcludePartiallyMatchedNetwork forKey:@"_didExcludePartiallyMatchedNetwork"];
  [v14 encodeBool:self->_didJoinDeferredNetwork forKey:@"_didJoinDeferredNetwork"];
  [v14 encodeBool:self->_didUserJoinKnownNetwork forKey:@"_didUserJoinKnownNetwork"];
  [v14 encodeBool:self->_didUserJoinPartiallyMatchedNetwork forKey:@"_didUserJoinPartiallyMatchedNetwork"];
  [v14 encodeBool:self->_didUserJoinDisallowedNetwork forKey:@"_didUserJoinDisallowedNetwork"];
  [v14 encodeBool:self->_didUserJoinLowRSSINetwork forKey:@"_didUserJoinLowRSSINetwork"];
  [v14 encodeBool:self->_didUserJoinDeferredNetwork forKey:@"_didUserJoinDeferredNetwork"];
  [v14 encodeBool:self->_didIncludeRemainingNon2GHzChannels forKey:@"_didIncludeRemainingNon2GHzChannels"];
  [v14 encodeInteger:self->_bestCandidateRSSI forKey:@"_bestCandidateRSSI"];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_candidateBSSCount];
  [v14 encodeObject:v11 forKey:@"_candidateBSSCount"];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_candidateSSIDCount];
  [v14 encodeObject:v12 forKey:@"_candidateSSIDCount"];

  [v14 encodeBool:self->_wasLockdownModeEnabled forKey:@"_wasLockdownModeEnabled"];
  [v14 encodeBool:self->_wasBeforeFirstUnlock forKey:@"_wasBeforeFirstUnlock"];
  [v14 encodeBool:self->_autoHotspotWasAttempted forKey:@"_autoHotspotWasAttempted"];
  [v14 encodeBool:self->_autoHotspotResult forKey:@"_autoHotspotResult"];
  [v14 encodeBool:self->_autoHotspotWasAborted forKey:@"_autoHotspotWasAborted"];
  [v14 encodeObject:self->_autoHotspotStartedAt forKey:@"_autoHotspotStartedAt"];
  [v14 encodeObject:self->_autoHotspotEndedAt forKey:@"_autoHotspotEndedAt"];
  [v14 encodeObject:self->_autoHotspotError forKey:@"_autoHotspotError"];
  [v14 encodeInteger:self->_autoHotspotMode forKey:@"_autoHotspotMode"];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_autoHotspotBrowseDuration];
  [v14 encodeObject:v13 forKey:@"_autoHotspotBrowseDuration"];

  [v14 encodeObject:self->_autoHotspotBrowseError forKey:@"_autoHotspotBrowseError"];
  [v14 encodeObject:self->_autoHotspotJoinStartedAt forKey:@"_autoHotspotJoinStartedAt"];
  [v14 encodeObject:self->_autoHotspotJoinEndedAt forKey:@"_autoHotspotJoinEndedAt"];
  [v14 encodeObject:self->_autoHotspotJoinErrors forKey:@"_autoHotspotJoinErrors"];
  [v14 encodeObject:self->_hotspot forKey:@"_hotspot"];
}

- (CWFAutoJoinMetric)initWithCoder:(id)a3
{
  v4 = a3;
  v136.receiver = self;
  v136.super_class = CWFAutoJoinMetric;
  v5 = [(CWFAutoJoinMetric *)&v136 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v5->_result = [v4 decodeBoolForKey:@"_result"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_startedAt"];
    startedAt = v5->_startedAt;
    v5->_startedAt = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_endedAt"];
    endedAt = v5->_endedAt;
    v5->_endedAt = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_joinStartedAt"];
    joinStartedAt = v5->_joinStartedAt;
    v5->_joinStartedAt = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_joinEndedAt"];
    joinEndedAt = v5->_joinEndedAt;
    v5->_joinEndedAt = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_matchedCandidateAt"];
    matchedCandidateAt = v5->_matchedCandidateAt;
    v5->_matchedCandidateAt = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_routableIPv4AddressAt"];
    routableIPv4AddressAt = v5->_routableIPv4AddressAt;
    v5->_routableIPv4AddressAt = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_routableIPv6AddressAt"];
    routableIPv6AddressAt = v5->_routableIPv6AddressAt;
    v5->_routableIPv6AddressAt = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_primaryIPv4InterfaceAt"];
    primaryIPv4InterfaceAt = v5->_primaryIPv4InterfaceAt;
    v5->_primaryIPv4InterfaceAt = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_primaryIPv6InterfaceAt"];
    primaryIPv6InterfaceAt = v5->_primaryIPv6InterfaceAt;
    v5->_primaryIPv6InterfaceAt = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_triggeredByLinkDownAt"];
    triggeredByLinkDownAt = v5->_triggeredByLinkDownAt;
    v5->_triggeredByLinkDownAt = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_triggeredByFirstUnlockAt"];
    triggeredByFirstUnlockAt = v5->_triggeredByFirstUnlockAt;
    v5->_triggeredByFirstUnlockAt = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_triggeredByWiFiOnAt"];
    triggeredByWiFiOnAt = v5->_triggeredByWiFiOnAt;
    v5->_triggeredByWiFiOnAt = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_triggeredByDeviceWakeAt"];
    triggeredByDeviceWakeAt = v5->_triggeredByDeviceWakeAt;
    v5->_triggeredByDeviceWakeAt = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_triggeredByMotionEndedAt"];
    triggeredByMotionEndedAt = v5->_triggeredByMotionEndedAt;
    v5->_triggeredByMotionEndedAt = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_triggeredByAutoJoinEnabledAt"];
    triggeredByAutoJoinEnabledAt = v5->_triggeredByAutoJoinEnabledAt;
    v5->_triggeredByAutoJoinEnabledAt = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_error"];
    error = v5->_error;
    v5->_error = v38;

    v5->_wasCancelled = [v4 decodeBoolForKey:@"_wasCancelled"];
    v5->_wasAborted = [v4 decodeBoolForKey:@"_wasAborted"];
    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_autoJoinParameters"];
    autoJoinParameters = v5->_autoJoinParameters;
    v5->_autoJoinParameters = v40;

    v5->_retrySchedule = [v4 decodeIntegerForKey:@"_retrySchedule"];
    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_retryScheduleIndex"];
    v5->_retryScheduleIndex = [v42 unsignedIntegerValue];

    v5->_didUseLocationOptimizedChannelList = [v4 decodeBoolForKey:@"_didUseLocationOptimizedChannelList"];
    v5->_didDetectColocatedNetworkEnvironment = [v4 decodeBoolForKey:@"_didDetectColocatedNetworkEnvironment"];
    v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_wasAlreadyAssociatedToNetwork"];
    wasAlreadyAssociatedToNetwork = v5->_wasAlreadyAssociatedToNetwork;
    v5->_wasAlreadyAssociatedToNetwork = v43;

    v5->_didDeferJoinToDiscoverMorePreferredNetwork = [v4 decodeBoolForKey:@"_didDeferJoinToDiscoverMorePreferredNetwork"];
    v5->_didFallbackToJoinLessPreferredNetwork = [v4 decodeBoolForKey:@"_didFallbackToJoinLessPreferredNetwork"];
    v5->_didJoinPreviouslyAssociatedNetwork = [v4 decodeBoolForKey:@"_didJoinPreviouslyAssociatedNetwork"];
    v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_linkRecoveryDelay"];
    v5->_linkRecoveryDelay = [v45 unsignedIntegerValue];

    v5->_didJoinPreviouslyLowRSSINetwork = [v4 decodeBoolForKey:@"_didJoinPreviouslyLowRSSINetwork"];
    v46 = MEMORY[0x1E695DFD8];
    v47 = objc_opt_class();
    v48 = [v46 setWithObjects:{v47, objc_opt_class(), 0}];
    v49 = [v4 decodeObjectOfClasses:v48 forKey:@"_preferredChannelList"];
    preferredChannelList = v5->_preferredChannelList;
    v5->_preferredChannelList = v49;

    v51 = MEMORY[0x1E695DFD8];
    v52 = objc_opt_class();
    v53 = [v51 setWithObjects:{v52, objc_opt_class(), 0}];
    v54 = [v4 decodeObjectOfClasses:v53 forKey:@"_recentChannelList"];
    recentChannelList = v5->_recentChannelList;
    v5->_recentChannelList = v54;

    v56 = MEMORY[0x1E695DFD8];
    v57 = objc_opt_class();
    v58 = [v56 setWithObjects:{v57, objc_opt_class(), 0}];
    v59 = [v4 decodeObjectOfClasses:v58 forKey:@"_remainingChannelList"];
    remainingChannelList = v5->_remainingChannelList;
    v5->_remainingChannelList = v59;

    v61 = MEMORY[0x1E695DFD8];
    v62 = objc_opt_class();
    v63 = [v61 setWithObjects:{v62, objc_opt_class(), 0}];
    v64 = [v4 decodeObjectOfClasses:v63 forKey:@"_channelList"];
    channelList = v5->_channelList;
    v5->_channelList = v64;

    v66 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_scanDuration"];
    v5->_scanDuration = [v66 unsignedIntegerValue];

    v67 = MEMORY[0x1E695DFD8];
    v68 = objc_opt_class();
    v69 = [v67 setWithObjects:{v68, objc_opt_class(), 0}];
    v70 = [v4 decodeObjectOfClasses:v69 forKey:@"_scanChannels"];
    scanChannels = v5->_scanChannels;
    v5->_scanChannels = v70;

    v72 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_preAssociationScanDuration"];
    v5->_preAssociationScanDuration = [v72 unsignedIntegerValue];

    v73 = MEMORY[0x1E695DFD8];
    v74 = objc_opt_class();
    v75 = [v73 setWithObjects:{v74, objc_opt_class(), 0}];
    v76 = [v4 decodeObjectOfClasses:v75 forKey:@"_preAssociationScanChannels"];
    preAssociationScanChannels = v5->_preAssociationScanChannels;
    v5->_preAssociationScanChannels = v76;

    v78 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_followup6GHzScanDuration"];
    v5->_followup6GHzScanDuration = [v78 unsignedIntegerValue];

    v79 = MEMORY[0x1E695DFD8];
    v80 = objc_opt_class();
    v81 = [v79 setWithObjects:{v80, objc_opt_class(), 0}];
    v82 = [v4 decodeObjectOfClasses:v81 forKey:@"_followup6GHzScanChannels"];
    followup6GHzScanChannels = v5->_followup6GHzScanChannels;
    v5->_followup6GHzScanChannels = v82;

    v84 = MEMORY[0x1E695DFD8];
    v85 = objc_opt_class();
    v86 = [v84 setWithObjects:{v85, objc_opt_class(), 0}];
    v87 = [v4 decodeObjectOfClasses:v86 forKey:@"_scanErrors"];
    scanErrors = v5->_scanErrors;
    v5->_scanErrors = v87;

    v89 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_GASQueryDuration"];
    v5->_GASQueryDuration = [v89 unsignedIntegerValue];

    v90 = MEMORY[0x1E695DFD8];
    v91 = objc_opt_class();
    v92 = [v90 setWithObjects:{v91, objc_opt_class(), 0}];
    v93 = [v4 decodeObjectOfClasses:v92 forKey:@"_GASQueryNetworks"];
    GASQueryNetworks = v5->_GASQueryNetworks;
    v5->_GASQueryNetworks = v93;

    v95 = MEMORY[0x1E695DFD8];
    v96 = objc_opt_class();
    v97 = [v95 setWithObjects:{v96, objc_opt_class(), 0}];
    v98 = [v4 decodeObjectOfClasses:v97 forKey:@"_GASQueryErrors"];
    GASQueryErrors = v5->_GASQueryErrors;
    v5->_GASQueryErrors = v98;

    v100 = MEMORY[0x1E695DFD8];
    v101 = objc_opt_class();
    v102 = [v100 setWithObjects:{v101, objc_opt_class(), 0}];
    v103 = [v4 decodeObjectOfClasses:v102 forKey:@"_joinErrors"];
    joinErrors = v5->_joinErrors;
    v5->_joinErrors = v103;

    v105 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_autoJoinedNetwork"];
    autoJoinedNetwork = v5->_autoJoinedNetwork;
    v5->_autoJoinedNetwork = v105;

    v107 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_userJoinedNetwork"];
    userJoinedNetwork = v5->_userJoinedNetwork;
    v5->_userJoinedNetwork = v107;

    v109 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_userJoinedNetworkAt"];
    userJoinedNetworkAt = v5->_userJoinedNetworkAt;
    v5->_userJoinedNetworkAt = v109;

    v5->_didTriggerReassoc = [v4 decodeBoolForKey:@"_didTriggerReassoc"];
    v5->_didPerformSeamlessSSIDTransition = [v4 decodeBoolForKey:@"_didPerformSeamlessSSIDTransition"];
    v5->_wasDiscoveredViaRNR = [v4 decodeBoolForKey:@"_wasDiscoveredViaRNR"];
    v5->_wasDiscoveredViaFILSD = [v4 decodeBoolForKey:@"_wasDiscoveredViaFILSD"];
    v5->_wasDiscoveredVia6GHzFollowup = [v4 decodeBoolForKey:@"_wasDiscoveredVia6GHzFollowup"];
    v5->_was6EDisabled = [v4 decodeBoolForKey:@"_was6EDisabled"];
    v5->_was6EPreferOn = [v4 decodeBoolForKey:@"_was6EPreferOn"];
    v5->_was6GHzDeprioritized = [v4 decodeBoolForKey:@"_was6GHzDeprioritized"];
    v5->_didExcludeStandalone6GHzNetwork = [v4 decodeBoolForKey:@"_didExcludeStandalone6GHzNetwork"];
    v5->_didExclude6GHzOnlyNetwork = [v4 decodeBoolForKey:@"_didExclude6GHzOnlyNetwork"];
    v5->_didExcludeDisabledNetwork = [v4 decodeBoolForKey:@"_didExcludeDisabledNetwork"];
    v5->_didExcludeDisallowedNetwork = [v4 decodeBoolForKey:@"_didExcludeDisallowedNetwork"];
    v5->_didExcludeLowRSSINetwork = [v4 decodeBoolForKey:@"_didExcludeLowRSSINetwork"];
    v5->_didExcludePartiallyMatchedNetwork = [v4 decodeBoolForKey:@"_didExcludePartiallyMatchedNetwork"];
    v5->_didJoinDeferredNetwork = [v4 decodeBoolForKey:@"_didJoinDeferredNetwork"];
    v5->_didUserJoinKnownNetwork = [v4 decodeBoolForKey:@"_didUserJoinKnownNetwork"];
    v5->_didUserJoinPartiallyMatchedNetwork = [v4 decodeBoolForKey:@"_didUserJoinPartiallyMatchedNetwork"];
    v5->_didUserJoinDisallowedNetwork = [v4 decodeBoolForKey:@"_didUserJoinDisallowedNetwork"];
    v5->_didUserJoinLowRSSINetwork = [v4 decodeBoolForKey:@"_didUserJoinLowRSSINetwork"];
    v5->_didUserJoinDeferredNetwork = [v4 decodeBoolForKey:@"_didUserJoinDeferredNetwork"];
    v5->_didIncludeRemainingNon2GHzChannels = [v4 decodeBoolForKey:@"_didIncludeRemainingNon2GHzChannels"];
    v5->_bestCandidateRSSI = [v4 decodeIntegerForKey:@"_bestCandidateRSSI"];
    v111 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_candidateBSSCount"];
    v5->_candidateBSSCount = [v111 unsignedIntegerValue];

    v112 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_candidateSSIDCount"];
    v5->_candidateSSIDCount = [v112 unsignedIntegerValue];

    v5->_wasLockdownModeEnabled = [v4 decodeBoolForKey:@"_wasLockdownModeEnabled"];
    v5->_wasBeforeFirstUnlock = [v4 decodeBoolForKey:@"_wasBeforeFirstUnlock"];
    v5->_autoHotspotWasAttempted = [v4 decodeBoolForKey:@"_autoHotspotWasAttempted"];
    v5->_autoHotspotResult = [v4 decodeBoolForKey:@"_autoHotspotResult"];
    v5->_autoHotspotWasAborted = [v4 decodeBoolForKey:@"_autoHotspotWasAborted"];
    v113 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_autoHotspotStartedAt"];
    autoHotspotStartedAt = v5->_autoHotspotStartedAt;
    v5->_autoHotspotStartedAt = v113;

    v115 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_autoHotspotEndedAt"];
    autoHotspotEndedAt = v5->_autoHotspotEndedAt;
    v5->_autoHotspotEndedAt = v115;

    v117 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_autoHotspotError"];
    autoHotspotError = v5->_autoHotspotError;
    v5->_autoHotspotError = v117;

    v5->_autoHotspotMode = [v4 decodeIntegerForKey:@"_autoHotspotMode"];
    v119 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_autoHotspotBrowseDuration"];
    v5->_autoHotspotBrowseDuration = [v119 unsignedIntegerValue];

    v120 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_autoHotspotBrowseError"];
    autoHotspotBrowseError = v5->_autoHotspotBrowseError;
    v5->_autoHotspotBrowseError = v120;

    v122 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_autoHotspotJoinStartedAt"];
    autoHotspotJoinStartedAt = v5->_autoHotspotJoinStartedAt;
    v5->_autoHotspotJoinStartedAt = v122;

    v124 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_autoHotspotJoinEndedAt"];
    autoHotspotJoinEndedAt = v5->_autoHotspotJoinEndedAt;
    v5->_autoHotspotJoinEndedAt = v124;

    v126 = MEMORY[0x1E695DFD8];
    v127 = objc_opt_class();
    v128 = [v126 setWithObjects:{v127, objc_opt_class(), 0}];
    v129 = [v4 decodeObjectOfClasses:v128 forKey:@"_autoHotspotJoinErrors"];
    autoHotspotJoinErrors = v5->_autoHotspotJoinErrors;
    v5->_autoHotspotJoinErrors = v129;

    if (sub_1E0D5E7D4())
    {
      v138 = 0;
      v139 = &v138;
      v140 = 0x2050000000;
      v131 = qword_1ECE81B18;
      v141 = qword_1ECE81B18;
      if (!qword_1ECE81B18)
      {
        v137[0] = MEMORY[0x1E69E9820];
        v137[1] = 3221225472;
        v137[2] = sub_1E0D5E918;
        v137[3] = &unk_1E86E5600;
        v137[4] = &v138;
        sub_1E0D5E918(v137);
        v131 = v139[3];
      }

      v132 = v131;
      _Block_object_dispose(&v138, 8);
      v133 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_hotspot"];
      hotspot = v5->_hotspot;
      v5->_hotspot = v133;
    }
  }

  return v5;
}

@end