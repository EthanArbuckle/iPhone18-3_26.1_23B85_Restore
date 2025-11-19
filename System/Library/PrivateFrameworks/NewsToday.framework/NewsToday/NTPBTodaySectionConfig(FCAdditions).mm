@interface NTPBTodaySectionConfig(FCAdditions)
+ (id)sectionConfigWithJSONDictionary:()FCAdditions;
@end

@implementation NTPBTodaySectionConfig(FCAdditions)

+ (id)sectionConfigWithJSONDictionary:()FCAdditions
{
  v306 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v251 = v3;
  if (v3)
  {
    v4 = v3;
    v253 = [v4 objectForKeyedSubscript:*MEMORY[0x277D308E0]];
    v5 = [v253 objectForKeyedSubscript:*MEMORY[0x277D308E8]];
    v252 = v5;
    if (v253)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v7 = [MEMORY[0x277CCA968] dateFormatterWithFormat:@"yyyy-MM-dd'T'HH:mm:ss" forReuse:0];
      v8 = [v7 dateFromString:v252];

      if (v8)
      {
        v9 = [MEMORY[0x277CBEAA8] date];
        v10 = [v9 fc_isLaterThan:v8];

        if (v10)
        {
          v11 = [MEMORY[0x277CBEAC0] fc_dictionaryByAddingEntriesFromDictionary:v253 toDictionary:v4];

          v4 = v11;
        }
      }
    }

    v12 = objc_opt_new();
    v279 = 0;
    v280 = &v279;
    v281 = 0x2020000000;
    v282 = 1;
    v13 = [v4 objectForKeyedSubscript:*MEMORY[0x277D30880]];
    [v12 setIdentifier:v13];
    v242 = v13;
    if (!v13)
    {
      v14 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        +[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:].cold.1([objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"section config requires identifier"], v305);
      }

      v13 = 0;
    }

    *(v280 + 24) &= v13 != 0;
    v16 = [v4 objectForKeyedSubscript:*MEMORY[0x277D30908]];
    [v12 setSubidentifier:v16];
    v17 = [v4 objectForKeyedSubscript:*MEMORY[0x277D308B0]];
    [v12 setName:v17];
    v18 = [v4 objectForKeyedSubscript:*MEMORY[0x277D30818]];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = v17;
    }

    [v12 setCompactName:v20];
    v234 = v19;
    v21 = [v4 objectForKeyedSubscript:*MEMORY[0x277D308D8]];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = v20;
    }

    [v12 setReferralBarName:v23];
    v233 = v22;
    v24 = [v4 objectForKeyedSubscript:*MEMORY[0x277D308A8]];
    [v12 setNameColorLight:v24];
    v241 = v24;
    if (!v24)
    {
      v25 = MEMORY[0x277D86220];
      v26 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        +[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:].cold.2([objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"section config requires name color light"], v304);
      }

      v24 = 0;
    }

    v231 = v16;
    v232 = v17;
    *(v280 + 24) &= v24 != 0;
    v27 = [v4 objectForKeyedSubscript:*MEMORY[0x277D308A0]];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = v24;
    }

    v250 = v29;

    [v12 setNameColorDark:v250];
    v30 = [v4 objectForKeyedSubscript:*MEMORY[0x277D30910]];
    v240 = v30;
    if (!v30)
    {
      v31 = MEMORY[0x277D86220];
      v32 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        +[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:].cold.3([objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"section config requires a section type"], v303);
      }

      v30 = 0;
    }

    *(v280 + 24) &= v30 != 0;
    v33 = [v30 intValue];
    v34 = v33;
    if (!v30)
    {
LABEL_44:
      v38 = [v4 objectForKeyedSubscript:*MEMORY[0x277D30820]];
      v39 = v38;
      v239 = v38;
      if (v38)
      {
        [v12 setFallbackOrder:{objc_msgSend(v38, "integerValue")}];
      }

      else
      {
        v40 = MEMORY[0x277D86220];
        v41 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          +[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:].cold.4([objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"section config requires fallback order"], v302);
        }

        v39 = 0;
      }

      *(v280 + 24) &= v39 != 0;
      v42 = [v4 objectForKeyedSubscript:*MEMORY[0x277D30810]];
      v43 = v42;
      v238 = v42;
      if (v42)
      {
        [v12 setCachedResultCutoffTime:{objc_msgSend(v42, "unsignedIntegerValue")}];
      }

      else
      {
        v44 = MEMORY[0x277D86220];
        v45 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          +[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:].cold.5([objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"section config requires cached result cutoff time"], v301);
        }

        v43 = 0;
      }

      *(v280 + 24) &= v43 != 0;
      v46 = [v4 objectForKeyedSubscript:*MEMORY[0x277D30890]];
      v47 = v46;
      if (v46)
      {
        v48 = [v46 integerValue];
      }

      else
      {
        v48 = 0x7FFFFFFFFFFFFFFFLL;
      }

      [v12 setMinimumStoriesAllocation:v48];
      v49 = [v4 objectForKeyedSubscript:*MEMORY[0x277D30888]];
      v50 = v49;
      if (v49)
      {
        v51 = [v49 integerValue];
        v52 = [v12 minimumStoriesAllocation];
        if (v51 <= v52)
        {
          v53 = v52;
        }

        else
        {
          v53 = v51;
        }
      }

      else
      {
        v53 = 0x7FFFFFFFFFFFFFFFLL;
      }

      [v12 setMaximumStoriesAllocation:v53];
      v54 = [v4 objectForKeyedSubscript:*MEMORY[0x277D308D0]];
      v229 = v47;
      v230 = v50;
      v237 = v54;
      if (v54)
      {
        v55 = v54;
        v56 = [v54 intValue];
        if (v56 >= 2)
        {
          v57 = 2;
        }

        else
        {
          v57 = v56;
        }

        [v12 setReadArticlesFilterMethod:v57];
      }

      else
      {
        v58 = MEMORY[0x277D86220];
        v59 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          +[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:].cold.6([objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"section config requires a read stories filter method"], v300);
        }

        v55 = 0;
      }

      *(v280 + 24) &= v55 != 0;
      v60 = [v4 objectForKeyedSubscript:*MEMORY[0x277D308F0]];
      v228 = v60;
      if (v60)
      {
        v61 = [v60 intValue];
        if (v61 >= 3)
        {
          v62 = 0;
        }

        else
        {
          v62 = v61;
        }

        [v12 setSeenArticlesFilterMethod:v62];
        if (v62)
        {
          v63 = [v4 objectForKeyedSubscript:*MEMORY[0x277D308F8]];
          v64 = v63;
          if (v63)
          {
            [v12 setSeenArticlesMinimumTimeSinceFirstSeenToFilter:{objc_msgSend(v63, "integerValue")}];
          }

          else
          {
            v67 = MEMORY[0x277D86220];
            v68 = MEMORY[0x277D86220];
            if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              +[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:].cold.7([objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"section config requires seen stories minimum time to filter when seen stories filter method is not none"], v299);
            }
          }

          *(v280 + 24) &= v64 != 0;
        }
      }

      else
      {
        v65 = MEMORY[0x277D86220];
        v66 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          +[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:].cold.8([objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"section config requires seen stories filter method"], v299);
        }

        *(v280 + 24) = 0;
      }

      v69 = [v4 objectForKeyedSubscript:*MEMORY[0x277D30838]];
      v249 = v69;
      if (v69)
      {
        if ([v69 BOOLValue])
        {
          v70 = 4;
        }

        else
        {
          v70 = 0;
        }
      }

      else
      {
        v71 = MEMORY[0x277D86220];
        v72 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          +[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:].cold.9([objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"section config requires a policy around whether to filter duplicate clusters within the section it describes"], v298);
        }

        v70 = 1;
      }

      *(v280 + 24) &= v249 != 0;
      v73 = [v4 objectForKeyedSubscript:*MEMORY[0x277D30840]];
      v248 = v73;
      if (v73)
      {
        v74 = [v73 BOOLValue];
        v75 = 32;
        if (!v74)
        {
          v75 = 0;
        }

        v70 |= v75;
      }

      else
      {
        v76 = MEMORY[0x277D86220];
        v77 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          +[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:].cold.10([objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"section config requires a policy around whether to filter muted channels within the section it describes"], v297);
        }
      }

      *(v280 + 24) &= v248 != 0;
      v78 = [v4 objectForKeyedSubscript:*MEMORY[0x277D30850]];
      v79 = v78;
      v80 = MEMORY[0x277CBEC38];
      if (v78)
      {
        v80 = v78;
      }

      v247 = v80;

      if ([v247 BOOLValue])
      {
        v81 = [v4 objectForKeyedSubscript:*MEMORY[0x277D308B8]];
        v82 = v81;
        v83 = &unk_286D9ECD8;
        if (v81)
        {
          v83 = v81;
        }

        v84 = v83;

        [v12 setPaywalledStoriesMaxCount:{objc_msgSend(v84, "unsignedIntegerValue")}];
        v70 |= 0x800uLL;
      }

      v85 = [v4 objectForKeyedSubscript:*MEMORY[0x277D30828]];
      v246 = v85;
      if (v85)
      {
        v86 = [v85 BOOLValue];
        v87 = 8;
        if (!v86)
        {
          v87 = 0;
        }
      }

      else
      {
        v87 = 8;
      }

      [v12 setIntraSectionFilteringOptions:v87 | v70];
      v88 = [v4 objectForKeyedSubscript:*MEMORY[0x277D30830]];
      v89 = v88;
      v236 = v88;
      if (v88)
      {
        if ([v88 BOOLValue])
        {
          v90 = 4;
        }

        else
        {
          v90 = 0;
        }

        [v12 setInterSectionFilteringOptions:v90];
      }

      else
      {
        v91 = MEMORY[0x277D86220];
        v92 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
        {
          +[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:].cold.11([objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"section config requires a policy around whether to filter duplicate clusters across sections for the section it describes"], v296);
        }

        v89 = 0;
      }

      *(v280 + 24) &= v89 != 0;
      v93 = [v4 objectForKeyedSubscript:*MEMORY[0x277D30900]];
      v94 = v93;
      if (v93)
      {
        [v12 setShownInFavoritesOnlyMode:{objc_msgSend(v93, "BOOLValue")}];
      }

      else
      {
        v95 = MEMORY[0x277D86220];
        v96 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
        {
          +[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:].cold.12([objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"section config requires a policy around whether to shown the section it describes in Favorites-only mode"], v295);
        }

        v94 = 0;
      }

      *(v280 + 24) &= v94 != 0;
      v97 = [v4 objectForKeyedSubscript:*MEMORY[0x277D30848]];
      [v12 setFilterNonSubscribedInFavoritesOnlyMode:{objc_msgSend(v97, "BOOLValue")}];
      [v4 objectForKeyedSubscript:*MEMORY[0x277D308C8]];
      v226 = v94;
      v227 = v97;
      v277 = 0u;
      v278 = 0u;
      v275 = 0u;
      v98 = v276 = 0u;
      v99 = [v98 countByEnumeratingWithState:&v275 objects:v294 count:16];
      if (v99)
      {
        v100 = *v276;
        do
        {
          for (i = 0; i != v99; ++i)
          {
            if (*v276 != v100)
            {
              objc_enumerationMutation(v98);
            }

            [v12 addQueueMembership:{objc_msgSend(*(*(&v275 + 1) + 8 * i), "unsignedIntegerValue")}];
          }

          v99 = [v98 countByEnumeratingWithState:&v275 objects:v294 count:16];
        }

        while (v99);
      }

      v102 = [v98 count];
      if (!v102)
      {
        v103 = MEMORY[0x277D86220];
        v104 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
        {
          +[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:].cold.13([objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"section config requires queue memberships"], v293);
        }
      }

      *(v280 + 24) &= v102 != 0;
      v105 = [v4 objectForKeyedSubscript:*MEMORY[0x277D30858]];
      v245 = v105;
      if (v105)
      {
        [v12 setGlanceable:{objc_msgSend(v105, "BOOLValue")}];
      }

      else
      {
        v106 = MEMORY[0x277D86220];
        v107 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
        {
          +[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:].cold.14([objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"section config requires glanceability"], v292);
        }
      }

      *(v280 + 24) &= v245 != 0;
      v108 = [v4 objectForKeyedSubscript:*MEMORY[0x277D30860]];
      [v12 setGroupActionTitle:v108];

      v109 = [v4 objectForKeyedSubscript:*MEMORY[0x277D30868]];
      [v12 setGroupActionUrl:v109];

      v110 = [v4 objectForKeyedSubscript:*MEMORY[0x277D30878]];
      [v12 setGroupNameActionUrl:v110];

      v111 = [v4 objectForKeyedSubscript:*MEMORY[0x277D30808]];
      [v12 setBackgroundColorLight:v111];

      v112 = [v4 objectForKeyedSubscript:*MEMORY[0x277D30800]];
      [v12 setBackgroundColorDark:v112];

      v113 = [v4 objectForKeyedSubscript:*MEMORY[0x277D30870]];
      v114 = v113;
      v115 = MEMORY[0x277CBEBF8];
      if (v113)
      {
        v115 = v113;
      }

      v244 = v115;

      v116 = objc_opt_new();
      v272[0] = MEMORY[0x277D85DD0];
      v272[1] = 3221225472;
      v272[2] = __71__NTPBTodaySectionConfig_FCAdditions__sectionConfigWithJSONDictionary___block_invoke;
      v272[3] = &unk_279982B78;
      v235 = v116;
      v273 = v235;
      v274 = &v279;
      [v244 enumerateObjectsUsingBlock:v272];
      v117 = [v4 objectForKeyedSubscript:*MEMORY[0x277D308C0]];
      v118 = v117;
      v119 = &unk_286D9ECF0;
      if (v117)
      {
        v119 = v117;
      }

      v243 = v119;

      [v12 setPromotionCriterion:{objc_msgSend(v243, "intValue")}];
      v120 = [v4 objectForKeyedSubscript:*MEMORY[0x277D30898]];
      [v12 setMutingTagID:v120];

      if (v34 > 3)
      {
        switch(v34)
        {
          case 4:
            v121 = objc_opt_new();
            v129 = [v4 objectForKeyedSubscript:*MEMORY[0x277D307E0]];
            if (!v129)
            {
              v130 = MEMORY[0x277D86220];
              v131 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
              {
                +[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:].cold.17([objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"personalized section config requires mandatory articles"], v291);
              }
            }

            *(v280 + 24) &= v129 != 0;
            v267 = 0;
            v132 = NTPBTodaySectionConfigGenerateArticles(v129, &v267);
            if (v267)
            {
              v133 = 1;
            }

            else
            {
              v141 = MEMORY[0x277D86220];
              v142 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
              {
                +[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:].cold.18([objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"personalized section config requires valid mandatory articles"], v290);
              }

              v133 = v267;
            }

            v224 = v129;
            *(v280 + 24) &= v133;
            v265 = 0u;
            v266 = 0u;
            v263 = 0u;
            v264 = 0u;
            v143 = v132;
            v144 = [v143 countByEnumeratingWithState:&v263 objects:v286 count:16];
            if (v144)
            {
              v145 = *v264;
              do
              {
                for (j = 0; j != v144; ++j)
                {
                  if (*v264 != v145)
                  {
                    objc_enumerationMutation(v143);
                  }

                  [v121 addMandatoryArticles:*(*(&v263 + 1) + 8 * j)];
                }

                v144 = [v143 countByEnumeratingWithState:&v263 objects:v286 count:16];
              }

              while (v144);
            }

            v147 = [v4 objectForKeyedSubscript:*MEMORY[0x277D307F0]];
            if (!v147)
            {
              v148 = MEMORY[0x277D86220];
              v149 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
              {
                +[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:].cold.19([objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"personalized section config requires personalized articles"], v289);
              }
            }

            *(v280 + 24) &= v147 != 0;
            v262 = 0;
            v150 = NTPBTodaySectionConfigGenerateArticles(v147, &v262);
            if (v262)
            {
              v151 = 1;
            }

            else
            {
              v166 = MEMORY[0x277D86220];
              v167 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v166, OS_LOG_TYPE_ERROR))
              {
                +[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:].cold.20([objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"personalized section config requires valid personalized articles"], v288);
              }

              v151 = v262;
            }

            *(v280 + 24) &= v151;
            v260 = 0u;
            v261 = 0u;
            v258 = 0u;
            v259 = 0u;
            v168 = v150;
            v169 = [v168 countByEnumeratingWithState:&v258 objects:v285 count:16];
            if (v169)
            {
              v170 = *v259;
              do
              {
                for (k = 0; k != v169; ++k)
                {
                  if (*v259 != v170)
                  {
                    objc_enumerationMutation(v168);
                  }

                  [v121 addPersonalizedArticles:*(*(&v258 + 1) + 8 * k)];
                }

                v169 = [v168 countByEnumeratingWithState:&v258 objects:v285 count:16];
              }

              while (v169);
            }

            v128 = v224;
            v172 = [v4 objectForKeyedSubscript:*MEMORY[0x277D307E8]];
            v173 = v172;
            if (v172)
            {
              [v121 setMaxArticlesShown:{objc_msgSend(v172, "unsignedIntegerValue")}];
            }

            else
            {
              v215 = MEMORY[0x277D86220];
              v216 = MEMORY[0x277D86220];
              v217 = v215;
              v128 = v224;
              if (os_log_type_enabled(v217, OS_LOG_TYPE_ERROR))
              {
                +[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:].cold.21([objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"personalized section config requires max articles shown"], v284);
              }
            }

            *(v280 + 24) &= v173 != 0;
            [v12 setPersonalizedTodaySectionConfig:v121];

            goto LABEL_280;
          case 5:
            v121 = objc_opt_new();
            v136 = [v4 objectForKeyedSubscript:*MEMORY[0x277D307D8]];
            if (!v136)
            {
              v137 = MEMORY[0x277D86220];
              v138 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
              {
                +[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:].cold.15([objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"items section config requires items"], v291);
              }
            }

            *(v280 + 24) &= v136 != 0;
            LOBYTE(v289[0]) = 0;
            v139 = NTPBTodaySectionConfigGenerateItems(v136, v235, v289);
            if (v289[0])
            {
              v140 = 1;
            }

            else
            {
              v159 = MEMORY[0x277D86220];
              v160 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v159, OS_LOG_TYPE_ERROR))
              {
                +[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:].cold.16([objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"items section config requires valid items"], v290);
              }

              v140 = v289[0];
            }

            v161 = v136;
            *(v280 + 24) &= v140;
            v256 = 0u;
            v257 = 0u;
            v254 = 0u;
            v255 = 0u;
            v162 = v139;
            v163 = [v162 countByEnumeratingWithState:&v254 objects:v283 count:16];
            if (v163)
            {
              v164 = *v255;
              do
              {
                for (m = 0; m != v163; ++m)
                {
                  if (*v255 != v164)
                  {
                    objc_enumerationMutation(v162);
                  }

                  [v121 addItems:*(*(&v254 + 1) + 8 * m)];
                }

                v163 = [v162 countByEnumeratingWithState:&v254 objects:v283 count:16];
              }

              while (v163);
            }

            v128 = v161;
            [v12 setItemsTodaySectionConfig:v121];

            goto LABEL_280;
          case 6:
            v121 = objc_opt_new();
            v127 = [v4 objectForKeyedSubscript:*MEMORY[0x277D30778]];
            v128 = v127;
            if (v127)
            {
              [v121 setCutoffTime:{objc_msgSend(v127, "integerValue")}];
            }

            else
            {
              v176 = MEMORY[0x277D86220];
              v177 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
              {
                +[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:].cold.25([objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Tag section config requires cutoff time"], v291);
              }
            }

            *(v280 + 24) &= v128 != 0;
            v178 = [v4 objectForKeyedSubscript:*MEMORY[0x277D307A8]];
            v179 = v178;
            if (v178)
            {
              [v121 setMinimumUpdateInterval:{objc_msgSend(v178, "integerValue")}];
            }

            v180 = [v4 objectForKeyedSubscript:*MEMORY[0x277D30780]];
            v181 = v180;
            if (v180)
            {
              [v121 setFetchingBin:{objc_msgSend(v180, "intValue")}];
            }

            else
            {
              v185 = v128;
              v186 = MEMORY[0x277D86220];
              v187 = MEMORY[0x277D86220];
              v188 = v186;
              v128 = v185;
              if (os_log_type_enabled(v188, OS_LOG_TYPE_ERROR))
              {
                +[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:].cold.26([objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Tag section config requires fetching bin"], v290);
              }
            }

            v189 = [v4 objectForKeyedSubscript:*MEMORY[0x277D30788]];
            v190 = v189;
            if (v189)
            {
              [v121 setHeadlinesPerFeedFetchCount:{objc_msgSend(v189, "unsignedIntegerValue")}];
            }

            else
            {
              v195 = v128;
              v196 = MEMORY[0x277D86220];
              v197 = MEMORY[0x277D86220];
              v198 = v196;
              v128 = v195;
              if (os_log_type_enabled(v198, OS_LOG_TYPE_ERROR))
              {
                +[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:].cold.27([objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Tag section config requires headlines per feed fetch count"], v289);
              }
            }

            *(v280 + 24) &= v190 != 0;
            [v12 setTagTodaySectionConfig:v121];

            goto LABEL_280;
        }
      }

      else
      {
        switch(v34)
        {
          case 0:
            v121 = objc_opt_new();
            v128 = [v4 objectForKeyedSubscript:*MEMORY[0x277D30730]];
            if (v128)
            {
              [v121 setArticleListID:v128];
            }

            else
            {
              v174 = MEMORY[0x277D86220];
              v175 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v174, OS_LOG_TYPE_ERROR))
              {
                +[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:].cold.24([objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"article list section config requires an articleList ID"], v291);
              }
            }

            *(v280 + 24) &= v128 != 0;
            [v12 setArticleListTodaySectionConfig:v121];
            goto LABEL_280;
          case 1:
            v121 = objc_opt_new();
            v134 = [v4 objectForKeyedSubscript:*MEMORY[0x277D30778]];
            v135 = v134;
            if (v134)
            {
              [v121 setCutoffTime:{objc_msgSend(v134, "integerValue")}];
            }

            else
            {
              v182 = MEMORY[0x277D86220];
              v183 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v182, OS_LOG_TYPE_ERROR))
              {
                +[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:].cold.28([objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"For You section config requires cutoff time"], v291);
              }
            }

            *(v280 + 24) &= v135 != 0;
            v225 = [v4 objectForKeyedSubscript:*MEMORY[0x277D307A8]];
            if (v225)
            {
              [v121 setMinimumUpdateInterval:{objc_msgSend(v225, "integerValue")}];
            }

            v184 = [v4 objectForKeyedSubscript:*MEMORY[0x277D30780]];
            v222 = v184;
            if (v184)
            {
              [v121 setFetchingBin:{objc_msgSend(v184, "intValue")}];
            }

            else
            {
              v191 = MEMORY[0x277D86220];
              v192 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v191, OS_LOG_TYPE_ERROR))
              {
                +[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:].cold.29([objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"For You section config requires fetching bin"], v290);
              }
            }

            v193 = [v4 objectForKeyedSubscript:*MEMORY[0x277D307B0]];
            v194 = v193;
            v223 = v193;
            if (v193)
            {
              [v121 setSubscriptionsFetchCount:{objc_msgSend(v193, "unsignedIntegerValue")}];
            }

            else
            {
              v199 = MEMORY[0x277D86220];
              v200 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v199, OS_LOG_TYPE_ERROR))
              {
                +[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:].cold.30([objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"For You section config requires subscriptions fetch count"], v289);
              }

              v194 = 0;
            }

            *(v280 + 24) &= v194 != 0;
            v201 = [v4 objectForKeyedSubscript:*MEMORY[0x277D30788]];
            v202 = v201;
            if (v201)
            {
              [v121 setHeadlinesPerFeedFetchCount:{objc_msgSend(v201, "unsignedIntegerValue")}];
            }

            else
            {
              v203 = MEMORY[0x277D86220];
              v204 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v203, OS_LOG_TYPE_ERROR))
              {
                +[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:].cold.31([objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"For You section config requires headlines per feed fetch count"], v288);
              }
            }

            *(v280 + 24) &= v202 != 0;
            v205 = [v4 objectForKeyedSubscript:*MEMORY[0x277D30798]];
            if (v205)
            {
              v206 = v205;
            }

            else
            {
              v206 = &unk_286D9ED08;
            }

            [v121 setFeedMaxCount:{objc_msgSend(v206, "unsignedIntegerValue")}];
            v207 = [v4 objectForKeyedSubscript:*MEMORY[0x277D307A0]];
            if (v207)
            {
              v208 = v207;
            }

            else
            {
              v208 = &unk_286D9ED20;
            }

            [v121 setFeedItemMaxCount:{objc_msgSend(v208, "unsignedIntegerValue")}];
            v221 = v202;
            v209 = [v4 objectForKeyedSubscript:*MEMORY[0x277D307B8]];
            if (v209)
            {
              v210 = v209;
            }

            else
            {
              v210 = &unk_286D9ED38;
            }

            [v121 setSubscriptionsMinCount:{objc_msgSend(v210, "unsignedIntegerValue")}];
            v211 = [v4 objectForKeyedSubscript:*MEMORY[0x277D30790]];
            v212 = v211;
            if (v211)
            {
              v213 = v211;
            }

            else
            {
              v213 = &unk_286D9ED38;
            }

            v214 = v213;

            [v121 setLocalNewsPromotionIndex:{objc_msgSend(v214, "unsignedIntegerValue")}];
            [v12 setForYouTodaySectionConfig:v121];

            v128 = v135;
            goto LABEL_280;
          case 3:
            v121 = objc_opt_new();
            v122 = [v4 objectForKeyedSubscript:*MEMORY[0x277D30718]];
            if (!v122)
            {
              v123 = MEMORY[0x277D86220];
              v124 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
              {
                +[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:].cold.22([objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"articleIDs section config requires articles"], v291);
              }
            }

            *(v280 + 24) &= v122 != 0;
            LOBYTE(v289[0]) = 0;
            v125 = NTPBTodaySectionConfigGenerateArticles(v122, v289);
            if (v289[0])
            {
              v126 = 1;
            }

            else
            {
              v152 = MEMORY[0x277D86220];
              v153 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
              {
                +[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:].cold.23([objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"articleIDs section config requires valid articles"], v290);
              }

              v126 = v289[0];
            }

            v154 = v122;
            *(v280 + 24) &= v126;
            v270 = 0u;
            v271 = 0u;
            v268 = 0u;
            v269 = 0u;
            v155 = v125;
            v156 = [v155 countByEnumeratingWithState:&v268 objects:v287 count:16];
            if (v156)
            {
              v157 = *v269;
              do
              {
                for (n = 0; n != v156; ++n)
                {
                  if (*v269 != v157)
                  {
                    objc_enumerationMutation(v155);
                  }

                  [v121 addArticles:*(*(&v268 + 1) + 8 * n)];
                }

                v156 = [v155 countByEnumeratingWithState:&v268 objects:v287 count:16];
              }

              while (v156);
            }

            v128 = v154;
            [v12 setArticleIDsTodaySectionConfig:v121];

LABEL_280:
            break;
        }
      }

      if (*(v280 + 24) == 1)
      {
        v37 = v12;
      }

      else
      {
        v37 = 0;
      }

      _Block_object_dispose(&v279, 8);
      goto LABEL_285;
    }

    v35 = 0;
    if (v33 > 3)
    {
      if (v33 != 4 && v33 != 5)
      {
        v36 = 0;
        if (v33 != 6)
        {
          goto LABEL_43;
        }
      }
    }

    else if (v33 >= 2)
    {
      v36 = 0;
      if (v33 != 3)
      {
        goto LABEL_43;
      }
    }

    v36 = 1;
    v35 = v33;
LABEL_43:
    [v12 setSectionType:v35];
    *(v280 + 24) &= v36;
    goto LABEL_44;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:];
  }

  v37 = 0;
LABEL_285:
  v218 = v37;

  v219 = *MEMORY[0x277D85DE8];
  return v37;
}

+ (void)sectionConfigWithJSONDictionary:()FCAdditions .cold.1(void *a1, _DWORD *a2)
{
  v3 = a1;
  *a2 = 136315906;
  OUTLINED_FUNCTION_2_1("+[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:]");
  OUTLINED_FUNCTION_1_1("NTPBTodaySectionConfig+NTAdditions.m");
  OUTLINED_FUNCTION_0_1(v4, 174);
  OUTLINED_FUNCTION_3_1(&dword_25BF21000, MEMORY[0x277D86220], v5, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@");
}

+ (void)sectionConfigWithJSONDictionary:()FCAdditions .cold.2(void *a1, _DWORD *a2)
{
  v3 = a1;
  *a2 = 136315906;
  OUTLINED_FUNCTION_2_1("+[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:]");
  OUTLINED_FUNCTION_1_1("NTPBTodaySectionConfig+NTAdditions.m");
  OUTLINED_FUNCTION_0_1(v4, 192);
  OUTLINED_FUNCTION_3_1(&dword_25BF21000, MEMORY[0x277D86220], v5, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@");
}

+ (void)sectionConfigWithJSONDictionary:()FCAdditions .cold.3(void *a1, _DWORD *a2)
{
  v3 = a1;
  *a2 = 136315906;
  OUTLINED_FUNCTION_2_1("+[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:]");
  OUTLINED_FUNCTION_1_1("NTPBTodaySectionConfig+NTAdditions.m");
  OUTLINED_FUNCTION_0_1(v4, 200);
  OUTLINED_FUNCTION_3_1(&dword_25BF21000, MEMORY[0x277D86220], v5, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@");
}

+ (void)sectionConfigWithJSONDictionary:()FCAdditions .cold.4(void *a1, _DWORD *a2)
{
  v3 = a1;
  *a2 = 136315906;
  OUTLINED_FUNCTION_2_1("+[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:]");
  OUTLINED_FUNCTION_1_1("NTPBTodaySectionConfig+NTAdditions.m");
  OUTLINED_FUNCTION_0_1(v4, 252);
  OUTLINED_FUNCTION_3_1(&dword_25BF21000, MEMORY[0x277D86220], v5, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@");
}

+ (void)sectionConfigWithJSONDictionary:()FCAdditions .cold.5(void *a1, _DWORD *a2)
{
  v3 = a1;
  *a2 = 136315906;
  OUTLINED_FUNCTION_2_1("+[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:]");
  OUTLINED_FUNCTION_1_1("NTPBTodaySectionConfig+NTAdditions.m");
  OUTLINED_FUNCTION_0_1(v4, 261);
  OUTLINED_FUNCTION_3_1(&dword_25BF21000, MEMORY[0x277D86220], v5, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@");
}

+ (void)sectionConfigWithJSONDictionary:()FCAdditions .cold.6(void *a1, _DWORD *a2)
{
  v3 = a1;
  *a2 = 136315906;
  OUTLINED_FUNCTION_2_1("+[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:]");
  OUTLINED_FUNCTION_1_1("NTPBTodaySectionConfig+NTAdditions.m");
  OUTLINED_FUNCTION_0_1(v4, 308);
  OUTLINED_FUNCTION_3_1(&dword_25BF21000, MEMORY[0x277D86220], v5, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@");
}

+ (void)sectionConfigWithJSONDictionary:()FCAdditions .cold.7(void *a1, _DWORD *a2)
{
  v3 = a1;
  *a2 = 136315906;
  OUTLINED_FUNCTION_2_1("+[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:]");
  OUTLINED_FUNCTION_1_1("NTPBTodaySectionConfig+NTAdditions.m");
  OUTLINED_FUNCTION_0_1(v4, 343);
  OUTLINED_FUNCTION_3_1(&dword_25BF21000, MEMORY[0x277D86220], v5, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@");
}

+ (void)sectionConfigWithJSONDictionary:()FCAdditions .cold.8(void *a1, _DWORD *a2)
{
  v3 = a1;
  *a2 = 136315906;
  OUTLINED_FUNCTION_2_1("+[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:]");
  OUTLINED_FUNCTION_1_1("NTPBTodaySectionConfig+NTAdditions.m");
  OUTLINED_FUNCTION_0_1(v4, 332);
  OUTLINED_FUNCTION_3_1(&dword_25BF21000, MEMORY[0x277D86220], v5, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@");
}

+ (void)sectionConfigWithJSONDictionary:()FCAdditions .cold.9(void *a1, _DWORD *a2)
{
  v3 = a1;
  *a2 = 136315906;
  OUTLINED_FUNCTION_2_1("+[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:]");
  OUTLINED_FUNCTION_1_1("NTPBTodaySectionConfig+NTAdditions.m");
  OUTLINED_FUNCTION_0_1(v4, 355);
  OUTLINED_FUNCTION_3_1(&dword_25BF21000, MEMORY[0x277D86220], v5, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@");
}

+ (void)sectionConfigWithJSONDictionary:()FCAdditions .cold.10(void *a1, _DWORD *a2)
{
  v3 = a1;
  *a2 = 136315906;
  OUTLINED_FUNCTION_2_1("+[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:]");
  OUTLINED_FUNCTION_1_1("NTPBTodaySectionConfig+NTAdditions.m");
  OUTLINED_FUNCTION_0_1(v4, 364);
  OUTLINED_FUNCTION_3_1(&dword_25BF21000, MEMORY[0x277D86220], v5, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@");
}

+ (void)sectionConfigWithJSONDictionary:()FCAdditions .cold.11(void *a1, _DWORD *a2)
{
  v3 = a1;
  *a2 = 136315906;
  OUTLINED_FUNCTION_2_1("+[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:]");
  OUTLINED_FUNCTION_1_1("NTPBTodaySectionConfig+NTAdditions.m");
  OUTLINED_FUNCTION_0_1(v4, 394);
  OUTLINED_FUNCTION_3_1(&dword_25BF21000, MEMORY[0x277D86220], v5, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@");
}

+ (void)sectionConfigWithJSONDictionary:()FCAdditions .cold.12(void *a1, _DWORD *a2)
{
  v3 = a1;
  *a2 = 136315906;
  OUTLINED_FUNCTION_2_1("+[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:]");
  OUTLINED_FUNCTION_1_1("NTPBTodaySectionConfig+NTAdditions.m");
  OUTLINED_FUNCTION_0_1(v4, 403);
  OUTLINED_FUNCTION_3_1(&dword_25BF21000, MEMORY[0x277D86220], v5, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@");
}

+ (void)sectionConfigWithJSONDictionary:()FCAdditions .cold.13(void *a1, _DWORD *a2)
{
  v3 = a1;
  *a2 = 136315906;
  OUTLINED_FUNCTION_2_1("+[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:]");
  OUTLINED_FUNCTION_1_1("NTPBTodaySectionConfig+NTAdditions.m");
  OUTLINED_FUNCTION_0_1(v4, 416);
  OUTLINED_FUNCTION_3_1(&dword_25BF21000, MEMORY[0x277D86220], v5, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@");
}

+ (void)sectionConfigWithJSONDictionary:()FCAdditions .cold.14(void *a1, _DWORD *a2)
{
  v3 = a1;
  *a2 = 136315906;
  OUTLINED_FUNCTION_2_1("+[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:]");
  OUTLINED_FUNCTION_1_1("NTPBTodaySectionConfig+NTAdditions.m");
  OUTLINED_FUNCTION_0_1(v4, 425);
  OUTLINED_FUNCTION_3_1(&dword_25BF21000, MEMORY[0x277D86220], v5, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@");
}

+ (void)sectionConfigWithJSONDictionary:()FCAdditions .cold.15(void *a1, _DWORD *a2)
{
  v3 = a1;
  *a2 = 136315906;
  OUTLINED_FUNCTION_2_1("+[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:]");
  OUTLINED_FUNCTION_1_1("NTPBTodaySectionConfig+NTAdditions.m");
  OUTLINED_FUNCTION_0_1(v4, 673);
  OUTLINED_FUNCTION_3_1(&dword_25BF21000, MEMORY[0x277D86220], v5, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@");
}

+ (void)sectionConfigWithJSONDictionary:()FCAdditions .cold.16(void *a1, _DWORD *a2)
{
  v3 = a1;
  *a2 = 136315906;
  OUTLINED_FUNCTION_2_1("+[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:]");
  OUTLINED_FUNCTION_1_1("NTPBTodaySectionConfig+NTAdditions.m");
  OUTLINED_FUNCTION_0_1(v4, 678);
  OUTLINED_FUNCTION_3_1(&dword_25BF21000, MEMORY[0x277D86220], v5, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@");
}

+ (void)sectionConfigWithJSONDictionary:()FCAdditions .cold.17(void *a1, _DWORD *a2)
{
  v3 = a1;
  *a2 = 136315906;
  OUTLINED_FUNCTION_2_1("+[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:]");
  OUTLINED_FUNCTION_1_1("NTPBTodaySectionConfig+NTAdditions.m");
  OUTLINED_FUNCTION_0_1(v4, 628);
  OUTLINED_FUNCTION_3_1(&dword_25BF21000, MEMORY[0x277D86220], v5, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@");
}

+ (void)sectionConfigWithJSONDictionary:()FCAdditions .cold.18(void *a1, _DWORD *a2)
{
  v3 = a1;
  *a2 = 136315906;
  OUTLINED_FUNCTION_2_1("+[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:]");
  OUTLINED_FUNCTION_1_1("NTPBTodaySectionConfig+NTAdditions.m");
  OUTLINED_FUNCTION_0_1(v4, 633);
  OUTLINED_FUNCTION_3_1(&dword_25BF21000, MEMORY[0x277D86220], v5, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@");
}

+ (void)sectionConfigWithJSONDictionary:()FCAdditions .cold.19(void *a1, _DWORD *a2)
{
  v3 = a1;
  *a2 = 136315906;
  OUTLINED_FUNCTION_2_1("+[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:]");
  OUTLINED_FUNCTION_1_1("NTPBTodaySectionConfig+NTAdditions.m");
  OUTLINED_FUNCTION_0_1(v4, 642);
  OUTLINED_FUNCTION_3_1(&dword_25BF21000, MEMORY[0x277D86220], v5, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@");
}

+ (void)sectionConfigWithJSONDictionary:()FCAdditions .cold.20(void *a1, _DWORD *a2)
{
  v3 = a1;
  *a2 = 136315906;
  OUTLINED_FUNCTION_2_1("+[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:]");
  OUTLINED_FUNCTION_1_1("NTPBTodaySectionConfig+NTAdditions.m");
  OUTLINED_FUNCTION_0_1(v4, 647);
  OUTLINED_FUNCTION_3_1(&dword_25BF21000, MEMORY[0x277D86220], v5, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@");
}

+ (void)sectionConfigWithJSONDictionary:()FCAdditions .cold.21(void *a1, _DWORD *a2)
{
  v3 = a1;
  *a2 = 136315906;
  OUTLINED_FUNCTION_2_1("+[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:]");
  OUTLINED_FUNCTION_1_1("NTPBTodaySectionConfig+NTAdditions.m");
  OUTLINED_FUNCTION_0_1(v4, 660);
  OUTLINED_FUNCTION_3_1(&dword_25BF21000, MEMORY[0x277D86220], v5, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@");
}

+ (void)sectionConfigWithJSONDictionary:()FCAdditions .cold.22(void *a1, _DWORD *a2)
{
  v3 = a1;
  *a2 = 136315906;
  OUTLINED_FUNCTION_2_1("+[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:]");
  OUTLINED_FUNCTION_1_1("NTPBTodaySectionConfig+NTAdditions.m");
  OUTLINED_FUNCTION_0_1(v4, 606);
  OUTLINED_FUNCTION_3_1(&dword_25BF21000, MEMORY[0x277D86220], v5, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@");
}

+ (void)sectionConfigWithJSONDictionary:()FCAdditions .cold.23(void *a1, _DWORD *a2)
{
  v3 = a1;
  *a2 = 136315906;
  OUTLINED_FUNCTION_2_1("+[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:]");
  OUTLINED_FUNCTION_1_1("NTPBTodaySectionConfig+NTAdditions.m");
  OUTLINED_FUNCTION_0_1(v4, 611);
  OUTLINED_FUNCTION_3_1(&dword_25BF21000, MEMORY[0x277D86220], v5, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@");
}

+ (void)sectionConfigWithJSONDictionary:()FCAdditions .cold.24(void *a1, _DWORD *a2)
{
  v3 = a1;
  *a2 = 136315906;
  OUTLINED_FUNCTION_2_1("+[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:]");
  OUTLINED_FUNCTION_1_1("NTPBTodaySectionConfig+NTAdditions.m");
  OUTLINED_FUNCTION_0_1(v4, 594);
  OUTLINED_FUNCTION_3_1(&dword_25BF21000, MEMORY[0x277D86220], v5, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@");
}

+ (void)sectionConfigWithJSONDictionary:()FCAdditions .cold.25(void *a1, _DWORD *a2)
{
  v3 = a1;
  *a2 = 136315906;
  OUTLINED_FUNCTION_2_1("+[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:]");
  OUTLINED_FUNCTION_1_1("NTPBTodaySectionConfig+NTAdditions.m");
  OUTLINED_FUNCTION_0_1(v4, 554);
  OUTLINED_FUNCTION_3_1(&dword_25BF21000, MEMORY[0x277D86220], v5, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@");
}

+ (void)sectionConfigWithJSONDictionary:()FCAdditions .cold.26(void *a1, _DWORD *a2)
{
  v3 = a1;
  *a2 = 136315906;
  OUTLINED_FUNCTION_2_1("+[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:]");
  OUTLINED_FUNCTION_1_1("NTPBTodaySectionConfig+NTAdditions.m");
  OUTLINED_FUNCTION_0_1(v4, 569);
  OUTLINED_FUNCTION_3_1(&dword_25BF21000, MEMORY[0x277D86220], v5, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@");
}

+ (void)sectionConfigWithJSONDictionary:()FCAdditions .cold.27(void *a1, _DWORD *a2)
{
  v3 = a1;
  *a2 = 136315906;
  OUTLINED_FUNCTION_2_1("+[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:]");
  OUTLINED_FUNCTION_1_1("NTPBTodaySectionConfig+NTAdditions.m");
  OUTLINED_FUNCTION_0_1(v4, 577);
  OUTLINED_FUNCTION_3_1(&dword_25BF21000, MEMORY[0x277D86220], v5, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@");
}

+ (void)sectionConfigWithJSONDictionary:()FCAdditions .cold.28(void *a1, _DWORD *a2)
{
  v3 = a1;
  *a2 = 136315906;
  OUTLINED_FUNCTION_2_1("+[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:]");
  OUTLINED_FUNCTION_1_1("NTPBTodaySectionConfig+NTAdditions.m");
  OUTLINED_FUNCTION_0_1(v4, 482);
  OUTLINED_FUNCTION_3_1(&dword_25BF21000, MEMORY[0x277D86220], v5, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@");
}

+ (void)sectionConfigWithJSONDictionary:()FCAdditions .cold.29(void *a1, _DWORD *a2)
{
  v3 = a1;
  *a2 = 136315906;
  OUTLINED_FUNCTION_2_1("+[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:]");
  OUTLINED_FUNCTION_1_1("NTPBTodaySectionConfig+NTAdditions.m");
  OUTLINED_FUNCTION_0_1(v4, 497);
  OUTLINED_FUNCTION_3_1(&dword_25BF21000, MEMORY[0x277D86220], v5, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@");
}

+ (void)sectionConfigWithJSONDictionary:()FCAdditions .cold.30(void *a1, _DWORD *a2)
{
  v3 = a1;
  *a2 = 136315906;
  OUTLINED_FUNCTION_2_1("+[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:]");
  OUTLINED_FUNCTION_1_1("NTPBTodaySectionConfig+NTAdditions.m");
  OUTLINED_FUNCTION_0_1(v4, 505);
  OUTLINED_FUNCTION_3_1(&dword_25BF21000, MEMORY[0x277D86220], v5, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@");
}

+ (void)sectionConfigWithJSONDictionary:()FCAdditions .cold.31(void *a1, _DWORD *a2)
{
  v3 = a1;
  *a2 = 136315906;
  OUTLINED_FUNCTION_2_1("+[NTPBTodaySectionConfig(FCAdditions) sectionConfigWithJSONDictionary:]");
  OUTLINED_FUNCTION_1_1("NTPBTodaySectionConfig+NTAdditions.m");
  OUTLINED_FUNCTION_0_1(v4, 514);
  OUTLINED_FUNCTION_3_1(&dword_25BF21000, MEMORY[0x277D86220], v5, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@");
}

+ (void)sectionConfigWithJSONDictionary:()FCAdditions .cold.32()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "JSONDictionary", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end