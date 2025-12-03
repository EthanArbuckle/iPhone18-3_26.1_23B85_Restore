@interface FCCKTestFeedQueryEndpoint
- (void)handleQueryOperation:(id)operation withRecords:(id)records droppedFeeds:(id)feeds;
@end

@implementation FCCKTestFeedQueryEndpoint

- (void)handleQueryOperation:(id)operation withRecords:(id)records droppedFeeds:(id)feeds
{
  v302 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  recordsCopy = records;
  feedsCopy = feeds;
  query = [operationCopy query];
  objc_opt_class();
  v165 = query;
  predicate = [query predicate];
  if (predicate)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = predicate;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v164 = v13;
  if (v13 && [v13 compoundPredicateType] == 1)
  {
    goto LABEL_11;
  }

  v14 = MEMORY[0x1E69E9C10];
  v15 = MEMORY[0x1E69E9C10];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v160 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unexpected feed query predicate type"];
    *buf = 136315906;
    v295 = "[FCCKTestFeedQueryEndpoint handleQueryOperation:withRecords:droppedFeeds:]";
    v296 = 2080;
    v297 = "FCCKTestContentDatabase.m";
    v298 = 1024;
    v299 = 637;
    v300 = 2114;
    v301 = v160;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (v13)
  {
LABEL_11:
    v280 = 0u;
    v279 = 0u;
    v278 = 0u;
    v277 = 0u;
    subpredicates = [v13 subpredicates];
    v17 = [subpredicates countByEnumeratingWithState:&v277 objects:v293 count:16];
    if (!v17)
    {
      v194 = 0;
      v195 = 0;
      v186 = 0;
      v189 = 0;
      v204 = 0;
      goto LABEL_39;
    }

    v18 = v17;
    v194 = 0;
    v195 = 0;
    v186 = 0;
    v189 = 0;
    v204 = 0;
    v19 = *v278;
    v213 = subpredicates;
    while (1)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v278 != v19)
        {
          objc_enumerationMutation(subpredicates);
        }

        keyPath = *(*(&v277 + 1) + 8 * i);
        objc_opt_class();
        if (!keyPath || (objc_opt_isKindOfClass() & 1) == 0)
        {
          v21 = 0;
          goto LABEL_35;
        }

        v21 = keyPath;
        predicateOperatorType = [v21 predicateOperatorType];
        if (predicateOperatorType != 99)
        {
          if (predicateOperatorType != 4)
          {
            goto LABEL_35;
          }

          leftExpression = [v21 leftExpression];
          keyPath = [leftExpression keyPath];
          v24 = [keyPath isEqualToString:@"tagField"];

          if (!v24)
          {
LABEL_33:
            subpredicates = v213;
            goto LABEL_34;
          }

          keyPath = [v21 rightExpression];
          constantValue = [keyPath constantValue];
          v26 = v194;
          v194 = constantValue;
          goto LABEL_32;
        }

        leftExpression = [v21 rightExpression];
        if ([leftExpression expressionType] == 3)
        {
          keyPath2 = [leftExpression keyPath];
          v28 = [keyPath2 isEqualToString:@"tagID"];

          if (v28)
          {
            keyPath = [v21 leftExpression];
            constantValue2 = [keyPath constantValue];
            v26 = v204;
            v204 = constantValue2;
          }

          else
          {
            keyPath3 = [leftExpression keyPath];
            v31 = [keyPath3 isEqualToString:@"cursor"];

            if (v31)
            {
              keyPath = [v21 leftExpression];
              constantValue3 = [keyPath constantValue];
              v26 = v195;
              v195 = constantValue3;
            }

            else
            {
              keyPath4 = [leftExpression keyPath];
              v34 = [keyPath4 isEqualToString:@"minOrder"];

              if (v34)
              {
                keyPath = [v21 leftExpression];
                constantValue4 = [keyPath constantValue];
                v26 = v189;
                v189 = constantValue4;
              }

              else
              {
                keyPath5 = [leftExpression keyPath];
                keyPath = [keyPath5 isEqualToString:@"hardLimit"];

                if (!keyPath)
                {
                  goto LABEL_33;
                }

                keyPath = [v21 leftExpression];
                constantValue5 = [keyPath constantValue];
                v26 = v186;
                v186 = constantValue5;
              }
            }
          }

LABEL_32:
          subpredicates = v213;
        }

LABEL_34:

LABEL_35:
      }

      v18 = [subpredicates countByEnumeratingWithState:&v277 objects:v293 count:16];
      if (!v18)
      {
LABEL_39:

        v38 = v204;
        goto LABEL_41;
      }
    }
  }

  v194 = 0;
  v195 = 0;
  v186 = 0;
  v189 = 0;
  v38 = 0;
LABEL_41:
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v273 = 0u;
  v274 = 0u;
  v275 = 0u;
  v276 = 0u;
  v39 = v38;
  v40 = [v39 countByEnumeratingWithState:&v273 objects:v292 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v274;
    do
    {
      for (j = 0; j != v41; ++j)
      {
        if (*v274 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v273 + 1) + 8 * j);
        v45 = MEMORY[0x1E695DF70];
        keyPath = FCSortedFeedItemRecordsForFeedID(recordsCopy, v44);
        v46 = [v45 arrayWithArray:keyPath];
        [dictionary setObject:v46 forKeyedSubscript:v44];
      }

      v41 = [v39 countByEnumeratingWithState:&v273 objects:v292 count:16];
    }

    while (v41);
  }

  v270[0] = MEMORY[0x1E69E9820];
  v270[1] = 3221225472;
  v270[2] = __75__FCCKTestFeedQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke;
  v270[3] = &unk_1E7C43448;
  v47 = v39;
  v271 = v47;
  v163 = v195;
  v272 = v163;
  v172 = __75__FCCKTestFeedQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke(v270);
  v267[0] = MEMORY[0x1E69E9820];
  v267[1] = 3221225472;
  v267[2] = __75__FCCKTestFeedQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke_2;
  v267[3] = &unk_1E7C43448;
  v48 = v47;
  v268 = v48;
  v162 = v189;
  v269 = v162;
  v188 = __75__FCCKTestFeedQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke_2(v267);
  v264[0] = MEMORY[0x1E69E9820];
  v264[1] = 3221225472;
  v264[2] = __75__FCCKTestFeedQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke_3;
  v264[3] = &unk_1E7C43448;
  v49 = v48;
  v265 = v49;
  v161 = v186;
  v266 = v161;
  v187 = __75__FCCKTestFeedQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke_3(v264);
  v260 = 0u;
  v261 = 0u;
  v262 = 0u;
  v263 = 0u;
  obj = v49;
  v50 = @"order";
  v200 = [obj countByEnumeratingWithState:&v260 objects:v291 count:16];
  if (v200)
  {
    v196 = *v261;
    do
    {
      for (k = 0; k != v200; k = k + 1)
      {
        if (*v261 != v196)
        {
          objc_enumerationMutation(obj);
        }

        v52 = *(*(&v260 + 1) + 8 * k);
        v53 = [v172 objectForKeyedSubscript:{v52, v161, v162, v163, v164}];
        if ([v53 length])
        {
          v209 = k;
          keyPath = [dictionary objectForKeyedSubscript:v52];
          v205 = v53;
          v54 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v53 error:0];
          while ([keyPath count])
          {
            firstObject = [keyPath firstObject];
            v56 = [firstObject objectForKeyedSubscript:@"order"];
            order = [v54 order];
            if ([v56 compare:order] == 1)
            {
            }

            else
            {
              firstObject2 = [keyPath firstObject];
              v59 = [firstObject2 objectForKeyedSubscript:@"subOrder"];
              subOrder = [v54 subOrder];
              v214 = [v59 compare:subOrder];

              v50 = @"order";
              if (v214 != 1)
              {
                break;
              }
            }

            [keyPath fc_removeFirstObject];
          }

          v53 = v205;
          k = v209;
        }
      }

      v200 = [obj countByEnumeratingWithState:&v260 objects:v291 count:16];
    }

    while (v200);
  }

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v256 = 0u;
  v257 = 0u;
  v258 = 0u;
  v259 = 0u;
  v167 = obj;
  v61 = [v167 countByEnumeratingWithState:&v256 objects:v290 count:16];
  if (v61)
  {
    v62 = v61;
    keyPath = *v257;
    do
    {
      for (m = 0; m != v62; ++m)
      {
        if (*v257 != keyPath)
        {
          objc_enumerationMutation(v167);
        }

        v64 = *(*(&v256 + 1) + 8 * m);
        v65 = [dictionary objectForKeyedSubscript:{v64, v161}];
        firstObject3 = [v65 firstObject];

        v67 = [firstObject3 objectForKeyedSubscript:@"order"];
        v50 = v67;
        if (v67)
        {
          v68 = v67;
        }

        else
        {
          v68 = &unk_1F2E70740;
        }

        [dictionary2 setObject:v68 forKeyedSubscript:v64];
      }

      v62 = [v167 countByEnumeratingWithState:&v256 objects:v290 count:16];
    }

    while (v62);
  }

  array = [MEMORY[0x1E695DF70] array];
  v185 = [MEMORY[0x1E696AB50] set];
  v174 = *MEMORY[0x1E695B7A8];
  v177 = array;
  while (2)
  {
    v70 = [array count];
    if (v70 >= [operationCopy resultsLimit] && objc_msgSend(operationCopy, "resultsLimit") != v174)
    {
      goto LABEL_108;
    }

    v254 = 0u;
    v255 = 0u;
    v252 = 0u;
    v253 = 0u;
    v71 = dictionary;
    v206 = [v71 countByEnumeratingWithState:&v252 objects:v289 count:16];
    if (!v206)
    {
      goto LABEL_107;
    }

    obja = 0;
    v72 = 0;
    v197 = v71;
    v201 = *v253;
    do
    {
      v73 = 0;
      do
      {
        v215 = v72;
        if (*v253 != v201)
        {
          objc_enumerationMutation(v71);
        }

        v74 = *(*(&v252 + 1) + 8 * v73);
        v75 = [v71 objectForKeyedSubscript:v74];
        firstObject4 = [v75 firstObject];

        v77 = [v188 objectForKeyedSubscript:v74];
        v78 = [v187 objectForKeyedSubscript:v74];
        if (!firstObject4)
        {
          v72 = v215;
          goto LABEL_100;
        }

        v210 = v78;
        v79 = [firstObject4 objectForKeyedSubscript:@"order"];
        if ([v79 compare:v77] == -1)
        {
          goto LABEL_93;
        }

        if (v215)
        {
          keyPath = [firstObject4 objectForKeyedSubscript:@"order"];
          v50 = [v215 objectForKeyedSubscript:@"order"];
          if ([keyPath compare:v50] != 1)
          {

LABEL_93:
            goto LABEL_94;
          }

          if (![v210 unsignedLongLongValue])
          {

LABEL_95:
            goto LABEL_97;
          }
        }

        else if (![v210 unsignedLongLongValue])
        {
          goto LABEL_95;
        }

        v80 = [v185 countForObject:v74];
        unsignedLongLongValue = [v210 unsignedLongLongValue];
        if (!v215)
        {

          if (v80 >= unsignedLongLongValue)
          {
            v72 = 0;
            goto LABEL_98;
          }

LABEL_97:
          v81 = firstObject4;

          v82 = v74;
          [v185 addObject:v82];
          obja = v82;
          v72 = v81;
LABEL_98:
          v71 = v197;
          goto LABEL_99;
        }

        if (v80 < unsignedLongLongValue)
        {
          goto LABEL_97;
        }

LABEL_94:
        v71 = v197;
        v72 = v215;
LABEL_99:
        v78 = v210;
LABEL_100:

        ++v73;
      }

      while (v206 != v73);
      v83 = [v71 countByEnumeratingWithState:&v252 objects:v289 count:16];
      v206 = v83;
    }

    while (v83);

    if (obja)
    {
      array = v177;
      v84 = v72;
      [v177 addObject:v72];
      v85 = [v71 objectForKeyedSubscript:obja];
      [v85 fc_removeFirstObject];

      continue;
    }

    break;
  }

  v71 = v72;
  array = v177;
LABEL_107:

LABEL_108:
  array2 = [MEMORY[0x1E695DF70] array];
  v248 = 0u;
  v249 = 0u;
  v250 = 0u;
  v251 = 0u;
  v166 = array;
  v175 = [v166 countByEnumeratingWithState:&v248 objects:v288 count:16];
  if (v175)
  {
    v168 = *v249;
    do
    {
      v86 = 0;
      do
      {
        if (*v249 != v168)
        {
          objc_enumerationMutation(v166);
        }

        v183 = v86;
        v87 = *(*(&v248 + 1) + 8 * v86);
        v88 = [v87 objectForKeyedSubscript:@"articleID"];
        v246[0] = MEMORY[0x1E69E9820];
        v246[1] = 3221225472;
        v246[2] = __75__FCCKTestFeedQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke_188;
        v246[3] = &unk_1E7C38030;
        v178 = v88;
        v247 = v178;
        v89 = [recordsCopy fc_firstObjectPassingTest:v246];
        v207 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"FeedItemAndArticle"];
        v242 = 0u;
        v243 = 0u;
        v244 = 0u;
        v245 = 0u;
        changedKeys = [v87 changedKeys];
        v91 = [changedKeys countByEnumeratingWithState:&v242 objects:v287 count:16];
        if (v91)
        {
          v92 = v91;
          v93 = *v243;
          do
          {
            for (n = 0; n != v92; ++n)
            {
              if (*v243 != v93)
              {
                objc_enumerationMutation(changedKeys);
              }

              v95 = *(*(&v242 + 1) + 8 * n);
              v96 = [v87 objectForKeyedSubscript:v95];
              if (v96)
              {
                [v207 setObject:v96 forKeyedSubscript:v95];
              }
            }

            v92 = [changedKeys countByEnumeratingWithState:&v242 objects:v287 count:16];
          }

          while (v92);
        }

        v240 = 0u;
        v241 = 0u;
        v238 = 0u;
        v239 = 0u;
        objb = [v89 changedKeys];
        v202 = [objb countByEnumeratingWithState:&v238 objects:v286 count:16];
        if (v202)
        {
          v198 = *v239;
          do
          {
            v97 = 0;
            do
            {
              if (*v239 != v198)
              {
                objc_enumerationMutation(objb);
              }

              v216 = v97;
              v98 = *(*(&v238 + 1) + 8 * v97);
              v99 = [v89 objectForKeyedSubscript:v98];
              if (v99)
              {
                [v207 setObject:v99 forKeyedSubscript:v98];
              }

              v211 = v99;
              v236 = 0u;
              v237 = 0u;
              v234 = 0u;
              v235 = 0u;
              v100 = v194;
              v101 = [v100 countByEnumeratingWithState:&v234 objects:v285 count:16];
              if (v101)
              {
                v102 = v101;
                v103 = *v235;
                do
                {
                  for (ii = 0; ii != v102; ++ii)
                  {
                    if (*v235 != v103)
                    {
                      objc_enumerationMutation(v100);
                    }

                    v105 = [v89 objectForKeyedSubscript:*(*(&v234 + 1) + 8 * ii)];
                    if (v105)
                    {
                      v106 = FCLookupRecordByName(recordsCopy, v105);
                      if (v106)
                      {
                        recordFetchedBlock = [operationCopy recordFetchedBlock];
                        (recordFetchedBlock)[2](recordFetchedBlock, v106);
                      }
                    }
                  }

                  v102 = [v100 countByEnumeratingWithState:&v234 objects:v285 count:16];
                }

                while (v102);
              }

              v97 = v216 + 1;
            }

            while (v216 + 1 != v202);
            v202 = [objb countByEnumeratingWithState:&v238 objects:v286 count:16];
          }

          while (v202);
        }

        desiredKeys = [operationCopy desiredKeys];

        if (desiredKeys)
        {
          v109 = MEMORY[0x1E695DFD8];
          desiredKeys2 = [operationCopy desiredKeys];
          v111 = [v109 setWithArray:desiredKeys2];

          v232 = 0u;
          v233 = 0u;
          v230 = 0u;
          v231 = 0u;
          changedKeys2 = [v207 changedKeys];
          v113 = [changedKeys2 countByEnumeratingWithState:&v230 objects:v284 count:16];
          if (v113)
          {
            v114 = v113;
            v115 = *v231;
            do
            {
              for (jj = 0; jj != v114; ++jj)
              {
                if (*v231 != v115)
                {
                  objc_enumerationMutation(changedKeys2);
                }

                v117 = *(*(&v230 + 1) + 8 * jj);
                if (([v111 containsObject:v117] & 1) == 0)
                {
                  [v207 setObject:0 forKeyedSubscript:v117];
                }
              }

              v114 = [changedKeys2 countByEnumeratingWithState:&v230 objects:v284 count:16];
            }

            while (v114);
          }
        }

        [v207 setObject:v178 forKeyedSubscript:@"articleID"];
        recordChangeTag = [v89 recordChangeTag];
        [v207 setObject:recordChangeTag forKeyedSubscript:@"articleETag"];

        creationDate = [v89 creationDate];
        [v207 setObject:creationDate forKeyedSubscript:@"articleCreationDate"];

        modificationDate = [v89 modificationDate];
        [v207 setObject:modificationDate forKeyedSubscript:@"articleModDate"];

        [array2 addObject:v207];
        v86 = v183 + 1;
      }

      while (v183 + 1 != v175);
      v175 = [v166 countByEnumeratingWithState:&v248 objects:v288 count:16];
    }

    while (v175);
  }

  v228 = 0u;
  v229 = 0u;
  v226 = 0u;
  v227 = 0u;
  v121 = array2;
  v122 = [v121 countByEnumeratingWithState:&v226 objects:v283 count:16];
  if (v122)
  {
    v123 = v122;
    v124 = *v227;
    do
    {
      for (kk = 0; kk != v123; ++kk)
      {
        if (*v227 != v124)
        {
          objc_enumerationMutation(v121);
        }

        v126 = *(*(&v226 + 1) + 8 * kk);
        recordFetchedBlock2 = [operationCopy recordFetchedBlock];
        recordFetchedBlock2[2](recordFetchedBlock2, v126);
      }

      v123 = [v121 countByEnumeratingWithState:&v226 objects:v283 count:16];
    }

    while (v123);
  }

  v169 = v121;

  array3 = [MEMORY[0x1E695DF70] array];
  array4 = [MEMORY[0x1E695DF70] array];
  objc = [MEMORY[0x1E695DF70] array];
  array5 = [MEMORY[0x1E695DF70] array];
  array6 = [MEMORY[0x1E695DF70] array];
  v222 = 0u;
  v223 = 0u;
  v224 = 0u;
  v225 = 0u;
  v171 = v167;
  v128 = v188;
  v208 = [v171 countByEnumeratingWithState:&v222 objects:v282 count:16];
  if (v208)
  {
    v176 = *v223;
    do
    {
      for (mm = 0; mm != v208; ++mm)
      {
        if (*v223 != v176)
        {
          objc_enumerationMutation(v171);
        }

        v130 = *(*(&v222 + 1) + 8 * mm);
        v131 = [dictionary objectForKeyedSubscript:v130];
        v217 = [dictionary2 objectForKeyedSubscript:v130];
        v212 = [feedsCopy containsObject:v130];
        if ([v131 count])
        {
          v132 = [v128 objectForKeyedSubscript:v130];
          firstObject5 = [v131 firstObject];
          v134 = [firstObject5 objectForKeyedSubscript:@"order"];
          v135 = [v134 compare:v132] == -1;

          v136 = [v131 count] == 0;
          v137 = objc_alloc_init(FCCKTestContentDatabaseFeedCursor);
          firstObject6 = [v131 firstObject];
          v139 = [firstObject6 objectForKeyedSubscript:@"order"];
          [(FCCKTestContentDatabaseFeedCursor *)v137 setOrder:v139];

          firstObject7 = [v131 firstObject];
          v141 = [firstObject7 objectForKeyedSubscript:@"subOrder"];
          [(FCCKTestContentDatabaseFeedCursor *)v137 setSubOrder:v141];

          v128 = v188;
          data = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v137 requiringSecureCoding:1 error:0];
        }

        else
        {
          data = [MEMORY[0x1E695DEF0] data];
          v135 = 0;
          v136 = 1;
        }

        v143 = [MEMORY[0x1E696AD98] numberWithBool:v135];
        [array3 addObject:v143];

        v144 = [MEMORY[0x1E696AD98] numberWithBool:v136];
        [array4 addObject:v144];

        [array5 addObject:v217];
        [objc addObject:data];
        v145 = [MEMORY[0x1E696AD98] numberWithBool:v212];
        [array6 addObject:v145];
      }

      v208 = [v171 countByEnumeratingWithState:&v222 objects:v282 count:16];
    }

    while (v208);
  }

  v146 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"Results"];
  [v146 setObject:array3 forKeyedSubscript:@"reachedMinOrder"];
  [v146 setObject:array4 forKeyedSubscript:@"reachedEnd"];
  [v146 setObject:objc forKeyedSubscript:@"cursor"];
  [v146 setObject:array5 forKeyedSubscript:@"topOrder"];
  [v146 setObject:array6 forKeyedSubscript:@"feedDropped"];
  desiredKeys3 = [operationCopy desiredKeys];

  if (desiredKeys3)
  {
    v148 = MEMORY[0x1E695DFD8];
    desiredKeys4 = [operationCopy desiredKeys];
    v150 = [v148 setWithArray:desiredKeys4];

    v220 = 0u;
    v221 = 0u;
    v218 = 0u;
    v219 = 0u;
    changedKeys3 = [v146 changedKeys];
    v152 = [changedKeys3 countByEnumeratingWithState:&v218 objects:v281 count:16];
    if (v152)
    {
      v153 = v152;
      v154 = *v219;
      do
      {
        for (nn = 0; nn != v153; ++nn)
        {
          if (*v219 != v154)
          {
            objc_enumerationMutation(changedKeys3);
          }

          v156 = *(*(&v218 + 1) + 8 * nn);
          if (([v150 containsObject:v156] & 1) == 0)
          {
            [v146 setObject:0 forKeyedSubscript:v156];
          }
        }

        v153 = [changedKeys3 countByEnumeratingWithState:&v218 objects:v281 count:16];
      }

      while (v153);
    }

    v128 = v188;
  }

  recordFetchedBlock3 = [operationCopy recordFetchedBlock];
  (recordFetchedBlock3)[2](recordFetchedBlock3, v146);

  queryCompletionBlock = [operationCopy queryCompletionBlock];
  queryCompletionBlock[2](queryCompletionBlock, 0, 0);

  v159 = *MEMORY[0x1E69E9840];
}

id __75__FCCKTestFeedQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [*(a1 + 32) count];
  if (v3)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      v6 = [*(a1 + 32) objectAtIndexedSubscript:i];
      v7 = [*(a1 + 40) objectAtIndexedSubscript:i];
      [v2 setObject:v7 forKeyedSubscript:v6];
    }
  }

  return v2;
}

id __75__FCCKTestFeedQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [*(a1 + 32) count];
  if (v3)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      v6 = [*(a1 + 32) objectAtIndexedSubscript:i];
      v7 = [*(a1 + 40) objectAtIndexedSubscript:i];
      [v2 setObject:v7 forKeyedSubscript:v6];
    }
  }

  return v2;
}

id __75__FCCKTestFeedQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [*(a1 + 32) count];
  if (v3)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      v6 = [*(a1 + 32) objectAtIndexedSubscript:i];
      v7 = [*(a1 + 40) objectAtIndexedSubscript:i];
      [v2 setObject:v7 forKeyedSubscript:v6];
    }
  }

  return v2;
}

uint64_t __75__FCCKTestFeedQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke_188(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 recordType];
  if ([v4 isEqualToString:@"Article"])
  {
    v5 = [v3 recordID];
    v6 = [v5 recordName];
    v7 = [v6 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end