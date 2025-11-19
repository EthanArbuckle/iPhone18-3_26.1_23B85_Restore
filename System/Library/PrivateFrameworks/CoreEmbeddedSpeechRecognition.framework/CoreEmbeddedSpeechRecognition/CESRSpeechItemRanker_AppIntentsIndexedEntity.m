@interface CESRSpeechItemRanker_AppIntentsIndexedEntity
+ (BOOL)_isEntityAllowListed:(id)a3 bundleId:(id)a4 appEntityConfig:(id)a5;
+ (BOOL)_shouldAcceptEntity:(id)a3 bundleId:(id)a4 appEntityConfig:(id)a5 entityTypes:(id)a6 numEntitiesRejected:(unint64_t *)a7 numEmptyDisplayRepresentations:(unint64_t *)a8;
+ (id)_itemCountsFromSetDict:(id)a3 appEntityConfig:(id)a4 numDonatingFirstPartyApps:(unint64_t *)a5 numDonatingThirdPartyApps:(unint64_t *)a6 totalNumEntitiesPresent:(unint64_t *)a7 itemCountSum:(unint64_t *)a8;
+ (id)_transformedItemCountsFromItemCounts:(id)a3 transformationFunction:(unint64_t)a4 transformationFunctionAlpha:(double)a5 transformedCountSum:(double *)a6;
+ (unint64_t)_bundleQuotaFromAllocationStrategy:(unint64_t)a3 remainingQuota:(unint64_t)a4 numBundles:(unint64_t)a5 transformedRelativeSize:(double)a6;
+ (void)_logAppEntitiesEnumeratedWithTotalNumEntitiesPresent:(unint64_t)a3 numTotalAccepted:(unint64_t)a4 numTotalRankedAccepted:(unint64_t)a5 numTotalUnrankedAccepted:(unint64_t)a6 numDonatingFirstPartyApps:(unint64_t)a7 numDonatingThirdPartyApps:(unint64_t)a8;
+ (void)_logAppEntityPartitionEnumeratedWithSourceBundleId:(id)a3 numEntitiesPresent:(unint64_t)a4 numDistinctEntityTypes:(unint64_t)a5 numEmptyTitleDisplayRepresentations:(unint64_t)a6 numRankedEntitiesAccepted:(unint64_t)a7 numUnrankedEntitiesAccepted:(unint64_t)a8 numEntitiesRejected:(unint64_t)a9 calculatedQuota:(unint64_t)a10;
- (BOOL)addSet:(id)a3;
- (BOOL)enumerateRankedItemsWithError:(id *)a3 usingBlock:(id)a4;
- (CESRSpeechItemRanker_AppIntentsIndexedEntity)initWithInstance:(id)a3 speechProfileSite:(id)a4 categoryGroup:(id)a5;
- (id)getActivatedCodepathIds;
@end

@implementation CESRSpeechItemRanker_AppIntentsIndexedEntity

- (BOOL)enumerateRankedItemsWithError:(id *)a3 usingBlock:(id)a4
{
  v167 = *MEMORY[0x277D85DE8];
  v85 = a4;
  v82 = [(CESRAppEntityConfig *)self->_appEntityConfig allocationStrategy];
  v5 = [(CESRAppEntityConfig *)self->_appEntityConfig proportionTransformationFunction];
  [(CESRAppEntityConfig *)self->_appEntityConfig proportionTransformationAlpha];
  v7 = v6;
  v76 = [(CESRAppEntityConfig *)self->_appEntityConfig interactionStoreRankingEnabled];
  v135 = 0;
  v134 = 0;
  v133 = 0;
  v132 = 0;
  v87 = [CESRSpeechItemRanker_AppIntentsIndexedEntity _itemCountsFromSetDict:self->_setDict appEntityConfig:self->_appEntityConfig numDonatingFirstPartyApps:&v134 numDonatingThirdPartyApps:&v133 totalNumEntitiesPresent:&v135 itemCountSum:&v132];
  v131 = 0.0;
  v86 = [CESRSpeechItemRanker_AppIntentsIndexedEntity _transformedItemCountsFromItemCounts:v87 transformationFunction:v5 transformationFunctionAlpha:&v131 transformedCountSum:v7];
  v8 = [v87 keysSortedByValueUsingComparator:&__block_literal_global_381];
  v9 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = [v8 count];
    v12 = [(CESRSpeechItemRanker_AppIntentsIndexedEntity *)self sets];
    v13 = [v12 count];
    v14 = [(CESRAppEntityConfig *)self->_appEntityConfig overallAppEntityLimit];
    *buf = 136315906;
    v137 = "[CESRSpeechItemRanker_AppIntentsIndexedEntity enumerateRankedItemsWithError:usingBlock:]";
    v138 = 2048;
    v139 = v11;
    v140 = 2048;
    v141 = v13;
    v142 = 2048;
    v143 = v14;
    _os_log_impl(&dword_225EEB000, v10, OS_LOG_TYPE_INFO, "%s Enumerating %lu of %lu total AppIntentsIndexEntity sets with overall limit of %lu entities", buf, 0x2Au);

    v9 = *MEMORY[0x277CEF0E8];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v137 = "[CESRSpeechItemRanker_AppIntentsIndexedEntity enumerateRankedItemsWithError:usingBlock:]";
    v138 = 2112;
    v139 = v87;
    _os_log_debug_impl(&dword_225EEB000, v9, OS_LOG_TYPE_DEBUG, "%s App Entity item counts from supported bundleIds:\n%@", buf, 0x16u);
    v9 = *MEMORY[0x277CEF0E8];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v137 = "[CESRSpeechItemRanker_AppIntentsIndexedEntity enumerateRankedItemsWithError:usingBlock:]";
    v138 = 2112;
    v139 = v86;
    _os_log_debug_impl(&dword_225EEB000, v9, OS_LOG_TYPE_DEBUG, "%s Transformed App Entity counts from supported bundleIds:\n%@", buf, 0x16u);
  }

  v88 = [(CESRAppEntityConfig *)self->_appEntityConfig overallAppEntityLimit];
  v89 = [v8 count];
  v15 = v132;
  v16 = *MEMORY[0x277CEF0E8];
  v17 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG);
  if (v15 <= v88)
  {
    if (v17)
    {
      v66 = v16;
      v67 = CESRAppEntityAllocationStrategyEnumAsString(v82);
      *buf = 136315906;
      v137 = "[CESRSpeechItemRanker_AppIntentsIndexedEntity enumerateRankedItemsWithError:usingBlock:]";
      v138 = 2048;
      v139 = v15;
      v140 = 2048;
      v141 = v88;
      v142 = 2112;
      v143 = v67;
      _os_log_debug_impl(&dword_225EEB000, v66, OS_LOG_TYPE_DEBUG, "%s Selecting In-Order allocation strategy given we can ingest all %lu items, which is less than the %lu limit. (Previously was CESRAppEntityAllocationStrategy=%@", buf, 0x2Au);
    }

    v82 = 1;
  }

  else if (v17)
  {
    v18 = v16;
    v19 = CESRAppEntityAllocationStrategyEnumAsString(v82);
    *buf = 136315394;
    v137 = "[CESRSpeechItemRanker_AppIntentsIndexedEntity enumerateRankedItemsWithError:usingBlock:]";
    v138 = 2112;
    v139 = v19;
    _os_log_debug_impl(&dword_225EEB000, v18, OS_LOG_TYPE_DEBUG, "%s Using CESRAppEntityAllocationStrategy=%@ defined from config.", buf, 0x16u);
  }

  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  obj = v8;
  v84 = [obj countByEnumeratingWithState:&v127 objects:v166 count:16];
  if (v84)
  {
    v80 = 0;
    v81 = 0;
    v83 = 0;
    v75 = *v128;
    v20 = &selRef__endTransaction;
    v79 = self;
    while (2)
    {
      v90 = 0;
      v78 = v20[324];
      do
      {
        if (*v128 != v75)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v127 + 1) + 8 * v90);
        v123 = 0;
        v124 = &v123;
        v125 = 0x2020000000;
        v126 = 0;
        v119 = 0;
        v120 = &v119;
        v121 = 0x2020000000;
        v122 = 0;
        v115 = 0;
        v116 = &v115;
        v117 = 0x2020000000;
        v118 = 0;
        v109 = 0;
        v110 = &v109;
        v111 = 0x3032000000;
        v112 = __Block_byref_object_copy__388;
        v113 = __Block_byref_object_dispose__389;
        v114 = [MEMORY[0x277CBEB58] set];
        v103 = 0;
        v104 = &v103;
        v105 = 0x3032000000;
        v106 = __Block_byref_object_copy__388;
        v107 = __Block_byref_object_dispose__389;
        v108 = [MEMORY[0x277CBEB18] array];
        v92 = [(NSMutableDictionary *)self->_setDict objectForKey:v21];
        v22 = [v87 objectForKeyedSubscript:v21];
        v23 = [v22 unsignedIntegerValue];
        v24 = v132;

        v25 = [v86 objectForKeyedSubscript:v21];
        [v25 doubleValue];
        v27 = v26;
        v28 = v131;

        v29 = v27 / v28;
        v30 = [CESRSpeechItemRanker_AppIntentsIndexedEntity _bundleQuotaFromAllocationStrategy:v82 remainingQuota:v88 numBundles:v89 transformedRelativeSize:v29];
        v31 = [(CESRAppEntityConfig *)self->_appEntityConfig limitForBundleId:v21];
        v32 = v31;
        if (v31)
        {
          v33 = [v31 intValue];
          v34 = v33;
          if (v30 >= v33)
          {
            v30 = v33;
          }

          v35 = *MEMORY[0x277CEF0E8];
          if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v137 = "[CESRSpeechItemRanker_AppIntentsIndexedEntity enumerateRankedItemsWithError:usingBlock:]";
            v138 = 2048;
            v139 = v34;
            v140 = 2112;
            v141 = v21;
            _os_log_debug_impl(&dword_225EEB000, v35, OS_LOG_TYPE_DEBUG, "%s App Entity Config specifies entity limit of %lu for app=%@", buf, 0x20u);
          }
        }

        v94[0] = MEMORY[0x277D85DD0];
        v94[1] = 3221225472;
        v94[2] = __89__CESRSpeechItemRanker_AppIntentsIndexedEntity_enumerateRankedItemsWithError_usingBlock___block_invoke_23;
        v94[3] = &unk_27857F370;
        v94[4] = v21;
        v94[5] = self;
        v96 = &v109;
        v97 = &v119;
        v98 = &v123;
        v99 = &v115;
        v102 = v76;
        v100 = &v103;
        v101 = v30;
        v36 = v85;
        v95 = v36;
        v93.receiver = self;
        v93.super_class = CESRSpeechItemRanker_AppIntentsIndexedEntity;
        v91 = objc_msgSendSuper2(&v93, v78, v92, a3, v94);
        if (v91)
        {
          v37 = 0;
          v38 = v23 / v24;
          while (v37 < [v104[5] count] && v37 < v30 - v116[3])
          {
            v39 = [v104[5] objectAtIndex:v37];
            (*(v85 + 2))(v36, v39, v21, 0, 0);

            ++v37;
          }

          v40 = [v87 objectForKeyedSubscript:v21];
          v41 = [v40 unsignedIntValue];
          v42 = [v110[5] count];
          v43 = v124[3];
          v44 = v116[3];
          v45 = [v104[5] count];
          [CESRSpeechItemRanker_AppIntentsIndexedEntity _logAppEntityPartitionEnumeratedWithSourceBundleId:v21 numEntitiesPresent:v41 numDistinctEntityTypes:v42 numEmptyTitleDisplayRepresentations:v43 numRankedEntitiesAccepted:v44 numUnrankedEntitiesAccepted:v45 numEntitiesRejected:v120[3] calculatedQuota:v30];

          self = v79;
          v20 = &selRef__endTransaction;
          v46 = [v104[5] count];
          v47 = v116[3];
          v48 = [v86 objectForKeyedSubscript:v21];
          [v48 floatValue];
          v131 = v131 - v49;

          v50 = v116[3];
          v51 = [v104[5] count];
          v52 = v47 + v46;
          v88 -= v52;
          v53 = *MEMORY[0x277CEF0E8];
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
          {
            v73 = [v87 objectForKeyedSubscript:v21];
            v71 = [v73 unsignedLongValue];
            v72 = [v86 objectForKeyedSubscript:v21];
            [v72 doubleValue];
            v55 = v54;
            v56 = v131;
            v68 = v120[3];
            v69 = v124[3];
            v70 = v116[3];
            v57 = [v104[5] count];
            v58 = [v110[5] count];
            *buf = 136318722;
            v137 = "[CESRSpeechItemRanker_AppIntentsIndexedEntity enumerateRankedItemsWithError:usingBlock:]";
            v138 = 2112;
            v139 = v21;
            v140 = 2048;
            v141 = v71;
            v142 = 2048;
            v143 = v55;
            v144 = 2048;
            v145 = v56;
            v146 = 2048;
            v147 = v30;
            v148 = 2048;
            v149 = v69;
            v150 = 2048;
            v151 = v68;
            v152 = 2048;
            v153 = v52;
            v154 = 2048;
            v155 = v70;
            v156 = 2048;
            v157 = v57;
            v158 = 2048;
            v159 = v88;
            v160 = 2048;
            v161 = v38;
            v162 = 2048;
            v163 = v29;
            v164 = 2048;
            v165 = v58;
            _os_log_debug_impl(&dword_225EEB000, v53, OS_LOG_TYPE_DEBUG, "%s Finished processing set for app=%@: setSize=%lu, transformedSetSize=%f, transformedSum=%f bundleQuota=%lu, numEmptyDisplayRepresentations=%lu, numEntitiesRejected=%lu, numEntitiesAccepted=%lu (numRankedAccepted=%lu, numUnrankedAccepted=%lu), remainingQuota=%lu, relativeSize=%f, transformedRelativeSize=%f, numDistinctEntityTypes=%lu", buf, 0x98u);

            self = v79;
            v20 = &selRef__endTransaction;
          }

          v80 += v50;
          v81 += v51;
          v83 += v52;
        }

        else
        {
          self = v79;
          v20 = &selRef__endTransaction;
        }

        _Block_object_dispose(&v103, 8);
        _Block_object_dispose(&v109, 8);

        _Block_object_dispose(&v115, 8);
        _Block_object_dispose(&v119, 8);
        _Block_object_dispose(&v123, 8);
        if (!v91)
        {

          v59 = 0;
          goto LABEL_41;
        }

        --v89;
        ++v90;
      }

      while (v90 != v84);
      v84 = [obj countByEnumeratingWithState:&v127 objects:v166 count:16];
      if (v84)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v80 = 0;
    v81 = 0;
    v83 = 0;
  }

  v60 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    appEntityConfig = self->_appEntityConfig;
    v62 = v60;
    v63 = [(CESRAppEntityConfig *)appEntityConfig overallAppEntityLimit];
    *buf = 136315906;
    v137 = "[CESRSpeechItemRanker_AppIntentsIndexedEntity enumerateRankedItemsWithError:usingBlock:]";
    v138 = 2048;
    v139 = v63;
    v140 = 2048;
    v141 = v83;
    v142 = 2048;
    v143 = v88;
    _os_log_impl(&dword_225EEB000, v62, OS_LOG_TYPE_INFO, "%s Finished processing all App Entity sets: appEntityLimit=%lu, totalNumEntitiesAccepted=%lu remainingQuota=%lu", buf, 0x2Au);
  }

  [CESRSpeechItemRanker_AppIntentsIndexedEntity _logAppEntitiesEnumeratedWithTotalNumEntitiesPresent:v135 numTotalAccepted:v83 numTotalRankedAccepted:v80 numTotalUnrankedAccepted:v81 numDonatingFirstPartyApps:v134 numDonatingThirdPartyApps:v133];
  self->_numTotalEnrolled = v83;
  v59 = 1;
LABEL_41:

  v64 = *MEMORY[0x277D85DE8];
  return v59;
}

- (BOOL)addSet:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_appEntityIngestionEnabled && [v4 itemType] == 47341)
  {
    setDict = self->_setDict;
    v7 = [v5 descriptorWithKey:*MEMORY[0x277CF9498]];
    v8 = [v7 value];
    [(NSMutableDictionary *)setDict setObject:v5 forKey:v8];

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)getActivatedCodepathIds
{
  if (self->_numTotalEnrolled)
  {
    [(NSMutableSet *)self->_codepathIds addObject:@"d410c25f-be26-42d1-a48b-90486d3d0503"];
    numTotalEnrolled = self->_numTotalEnrolled;
  }

  else
  {
    numTotalEnrolled = 0;
  }

  if (numTotalEnrolled >= [(CESRAppEntityConfig *)self->_appEntityConfig overallAppEntityLimit])
  {
    [(NSMutableSet *)self->_codepathIds addObject:@"7864a108-4619-4805-baf3-7640729d0c98"];
  }

  if (self->_didLoadConfigFromTrial)
  {
    [(NSMutableSet *)self->_codepathIds addObject:@"d52e8465-38bb-4ffe-81e9-56fe013a4075"];
  }

  codepathIds = self->_codepathIds;

  return codepathIds;
}

- (CESRSpeechItemRanker_AppIntentsIndexedEntity)initWithInstance:(id)a3 speechProfileSite:(id)a4 categoryGroup:(id)a5
{
  v14.receiver = self;
  v14.super_class = CESRSpeechItemRanker_AppIntentsIndexedEntity;
  v5 = [(CESRSpeechItemRanker *)&v14 initWithInstance:a3 speechProfileSite:a4 categoryGroup:a5];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    setDict = v5->_setDict;
    v5->_setDict = v6;

    v8 = objc_alloc_init(CESRSpeechProfileConfig);
    v9 = [(CESRSpeechProfileConfig *)v8 appEntityConfig];
    appEntityConfig = v5->_appEntityConfig;
    v5->_appEntityConfig = v9;

    v5->_appEntityIngestionEnabled = +[CESRSpeechItemRanker_AppIntentsIndexedEntity _appEntityIngestionEnabledForFeatureFlagStatus:overallAppEntityLimit:](CESRSpeechItemRanker_AppIntentsIndexedEntity, "_appEntityIngestionEnabledForFeatureFlagStatus:overallAppEntityLimit:", +[CESRSpeechProfileBuilder appEntityFeatureFlagEnabled], [(CESRAppEntityConfig *)v5->_appEntityConfig overallAppEntityLimit]);
    v11 = [MEMORY[0x277CBEB58] set];
    codepathIds = v5->_codepathIds;
    v5->_codepathIds = v11;

    v5->_didLoadConfigFromTrial = [(CESRSpeechProfileConfig *)v8 loadedFromTrial];
  }

  return v5;
}

+ (void)_logAppEntityPartitionEnumeratedWithSourceBundleId:(id)a3 numEntitiesPresent:(unint64_t)a4 numDistinctEntityTypes:(unint64_t)a5 numEmptyTitleDisplayRepresentations:(unint64_t)a6 numRankedEntitiesAccepted:(unint64_t)a7 numUnrankedEntitiesAccepted:(unint64_t)a8 numEntitiesRejected:(unint64_t)a9 calculatedQuota:(unint64_t)a10
{
  v36 = *MEMORY[0x277D85DE8];
  v15 = MEMORY[0x277CBEB38];
  v16 = a3;
  v17 = [v15 dictionary];
  [v17 setObject:v16 forKeyedSubscript:@"source_bundle_id"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  [v17 setObject:v18 forKeyedSubscript:@"num_entities_present"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  [v17 setObject:v19 forKeyedSubscript:@"num_distinct_entity_types"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
  [v17 setObject:v20 forKeyedSubscript:@"num_empty_title_display_representations"];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a8 + a7];
  [v17 setObject:v21 forKeyedSubscript:@"num_entities_accepted"];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a7];
  [v17 setObject:v22 forKeyedSubscript:@"num_ranked_entities_accepted"];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a8];
  [v17 setObject:v23 forKeyedSubscript:@"num_unranked_entities_accepted"];

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a9];
  [v17 setObject:v24 forKeyedSubscript:@"num_entities_rejected"];

  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a10];
  [v17 setObject:v25 forKeyedSubscript:@"calculated_quota"];

  v26 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v31 = "+[CESRSpeechItemRanker_AppIntentsIndexedEntity _logAppEntityPartitionEnumeratedWithSourceBundleId:numEntitiesPresent:numDistinctEntityTypes:numEmptyTitleDisplayRepresentations:numRankedEntitiesAccepted:numUnrankedEntitiesAccepted:numEntitiesRejected:calculatedQuota:]";
    v32 = 2112;
    v33 = @"com.apple.siri.asr.speechprofile.AppEntityPartitionEnumerated";
    v34 = 2112;
    v35 = v17;
    _os_log_debug_impl(&dword_225EEB000, v26, OS_LOG_TYPE_DEBUG, "%s Emitting CoreAnalytics event %@ : %@", buf, 0x20u);
  }

  v29 = v17;
  v27 = v17;
  AnalyticsSendEventLazy();

  v28 = *MEMORY[0x277D85DE8];
}

+ (void)_logAppEntitiesEnumeratedWithTotalNumEntitiesPresent:(unint64_t)a3 numTotalAccepted:(unint64_t)a4 numTotalRankedAccepted:(unint64_t)a5 numTotalUnrankedAccepted:(unint64_t)a6 numDonatingFirstPartyApps:(unint64_t)a7 numDonatingThirdPartyApps:(unint64_t)a8
{
  v31 = *MEMORY[0x277D85DE8];
  v14 = [MEMORY[0x277CBEB38] dictionary];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v14 setObject:v15 forKeyedSubscript:@"total_num_entities_present"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  [v14 setObject:v16 forKeyedSubscript:@"total_num_entities_accepted"];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  [v14 setObject:v17 forKeyedSubscript:@"total_num_ranked_entities_accepted"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
  [v14 setObject:v18 forKeyedSubscript:@"total_num_unranked_entities_accepted"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a7];
  [v14 setObject:v19 forKeyedSubscript:@"num_donating_first_party_apps"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a8];
  [v14 setObject:v20 forKeyedSubscript:@"num_donating_third_party_apps"];

  v21 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v26 = "+[CESRSpeechItemRanker_AppIntentsIndexedEntity _logAppEntitiesEnumeratedWithTotalNumEntitiesPresent:numTotalAccepted:numTotalRankedAccepted:numTotalUnrankedAccepted:numDonatingFirstPartyApps:numDonatingThirdPartyApps:]";
    v27 = 2112;
    v28 = @"com.apple.siri.asr.speechprofile.AppEntitiesEnumerated";
    v29 = 2112;
    v30 = v14;
    _os_log_debug_impl(&dword_225EEB000, v21, OS_LOG_TYPE_DEBUG, "%s Emitting CoreAnalytics event %@ : %@", buf, 0x20u);
  }

  v24 = v14;
  v22 = v14;
  AnalyticsSendEventLazy();

  v23 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_isEntityAllowListed:(id)a3 bundleId:(id)a4 appEntityConfig:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([CESRUtilities isFirstPartyBundleId:v8])
  {
    v10 = [v7 typeIdentifier];
    v11 = [v9 appEntityMappingForBundleId:v8 appEntityName:v10];
    v12 = v11 != 0;
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = [v7 assistantDefinedSchemas];
    v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v22 + 1) + 8 * i) type];
          v18 = CCAssistantSchemaTypeAsString();
          v19 = [v9 isAssistantSchemaTypeSupported:v18];

          if (v19)
          {

            v12 = 1;
            goto LABEL_13;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
  }

LABEL_13:

  v20 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (BOOL)_shouldAcceptEntity:(id)a3 bundleId:(id)a4 appEntityConfig:(id)a5 entityTypes:(id)a6 numEntitiesRejected:(unint64_t *)a7 numEmptyDisplayRepresentations:(unint64_t *)a8
{
  v13 = a3;
  v14 = a6;
  if ([CESRSpeechItemRanker_AppIntentsIndexedEntity _isEntityAllowListed:v13 bundleId:a4 appEntityConfig:a5])
  {
    v15 = [v13 displayRepresentation];
    v16 = [v15 title];

    v17 = [v16 length];
    v18 = v17 != 0;
    if (v17)
    {
      v19 = [v13 typeIdentifier];
      [v14 addObject:v19];
    }

    else if (a8)
    {
      ++*a8;
    }
  }

  else
  {
    v18 = 0;
    if (a7)
    {
      ++*a7;
    }
  }

  return v18;
}

+ (unint64_t)_bundleQuotaFromAllocationStrategy:(unint64_t)a3 remainingQuota:(unint64_t)a4 numBundles:(unint64_t)a5 transformedRelativeSize:(double)a6
{
  if (!a5)
  {
    return 0;
  }

  result = a4;
  if (a3 != 1)
  {
    if (a3 == 2)
    {
      return a4 / a5;
    }

    else
    {
      return (a4 * a6);
    }
  }

  return result;
}

+ (id)_transformedItemCountsFromItemCounts:(id)a3 transformationFunction:(unint64_t)a4 transformationFunctionAlpha:(double)a5 transformedCountSum:(double *)a6
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v8, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = [v8 allKeys];
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    v14 = 0.0;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v26 + 1) + 8 * i);
        v17 = [v8 objectForKeyedSubscript:v16];
        v18 = [v17 unsignedIntValue];

        if (v18)
        {
          v19 = v18;
          if (a4 >= 2)
          {
            v20 = v18;
            if (a4 == 2)
            {
              v21 = log(v20);
            }

            else
            {
              v21 = pow(v20, a5);
            }

            v19 = v21;
          }

          v22 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
          [v9 setObject:v22 forKey:v16];

          v14 = v14 + v19;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v12);
  }

  else
  {
    v14 = 0.0;
  }

  if (a6)
  {
    *a6 = v14;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)_itemCountsFromSetDict:(id)a3 appEntityConfig:(id)a4 numDonatingFirstPartyApps:(unint64_t *)a5 numDonatingThirdPartyApps:(unint64_t *)a6 totalNumEntitiesPresent:(unint64_t *)a7 itemCountSum:(unint64_t *)a8
{
  v28 = a5;
  v46 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v34 = a4;
  v32 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v9, "count")}];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v10 = v9;
  v36 = [v10 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (!v36)
  {
    v33 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_19;
  }

  v33 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v35 = *v38;
  do
  {
    v14 = 0;
    do
    {
      if (*v38 != v35)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v37 + 1) + 8 * v14);
      v16 = [CESRUtilities isFirstPartyBundleId:v15, v28];
      v17 = [v10 objectForKey:v15];
      v18 = [v17 changePublisherWithUseCase:@"SpeechProfile"];
      v19 = [v18 sharedItemCount];

      if (!v19)
      {
        v21 = *MEMORY[0x277CEF0E8];
        if (!os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_12;
        }

        *buf = 136315394;
        v42 = "+[CESRSpeechItemRanker_AppIntentsIndexedEntity _itemCountsFromSetDict:appEntityConfig:numDonatingFirstPartyApps:numDonatingThirdPartyApps:totalNumEntitiesPresent:itemCountSum:]";
        v43 = 2112;
        v44 = v15;
        v22 = v21;
        v23 = "%s Skipping app=%@ because the set is empty";
        goto LABEL_15;
      }

      if ([v34 isBundleIdSupported:v15])
      {
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
        [v32 setObject:v20 forKey:v15];

        v33 += v19;
        goto LABEL_12;
      }

      v24 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v42 = "+[CESRSpeechItemRanker_AppIntentsIndexedEntity _itemCountsFromSetDict:appEntityConfig:numDonatingFirstPartyApps:numDonatingThirdPartyApps:totalNumEntitiesPresent:itemCountSum:]";
        v43 = 2112;
        v44 = v15;
        v22 = v24;
        v23 = "%s Skipping app=%@ because it is either not supported or deny-listed";
LABEL_15:
        _os_log_debug_impl(&dword_225EEB000, v22, OS_LOG_TYPE_DEBUG, v23, buf, 0x16u);
      }

LABEL_12:
      v12 += !v16;
      v13 += v16;
      v11 += v19;

      ++v14;
    }

    while (v36 != v14);
    v25 = [v10 countByEnumeratingWithState:&v37 objects:v45 count:16];
    v36 = v25;
  }

  while (v25);
LABEL_19:

  if (v28)
  {
    *v28 = v13;
  }

  if (a6)
  {
    *a6 = v12;
  }

  if (a7)
  {
    *a7 = v11;
  }

  if (a8)
  {
    *a8 = v33;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v32;
}

@end