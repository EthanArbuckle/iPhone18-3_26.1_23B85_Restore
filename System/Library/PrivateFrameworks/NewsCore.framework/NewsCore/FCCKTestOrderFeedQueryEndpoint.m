@interface FCCKTestOrderFeedQueryEndpoint
- (void)handleQueryOperation:(id)a3 withRecords:(id)a4 droppedFeeds:(id)a5;
@end

@implementation FCCKTestOrderFeedQueryEndpoint

- (void)handleQueryOperation:(id)a3 withRecords:(id)a4 droppedFeeds:(id)a5
{
  v300 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v172 = a5;
  v11 = [v9 query];
  objc_opt_class();
  v160 = v11;
  v12 = [v11 predicate];
  if (v12)
  {
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
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

  v14 = v13;

  v159 = v14;
  if (v14 && [v14 compoundPredicateType] == 1)
  {
    goto LABEL_11;
  }

  v15 = MEMORY[0x1E69E9C10];
  v16 = MEMORY[0x1E69E9C10];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    m = v14;
    v155 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unexpected feed query predicate type"];
    *buf = 136315906;
    v293 = "[FCCKTestOrderFeedQueryEndpoint handleQueryOperation:withRecords:droppedFeeds:]";
    v294 = 2080;
    v295 = "FCCKTestContentDatabase.m";
    v296 = 1024;
    v297 = 960;
    v298 = 2114;
    v299 = v155;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (v14)
  {
LABEL_11:
    v277 = 0u;
    v276 = 0u;
    v275 = 0u;
    v274 = 0u;
    v17 = [v14 subpredicates];
    v18 = [v17 countByEnumeratingWithState:&v274 objects:v291 count:16];
    if (!v18)
    {
      v189 = 0;
      v190 = 0;
      v182 = 0;
      v185 = 0;
      obj = 0;
      goto LABEL_39;
    }

    v19 = v18;
    v189 = 0;
    v190 = 0;
    v182 = 0;
    v185 = 0;
    obj = 0;
    m = *v275;
    v206 = v17;
    while (1)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v275 != m)
        {
          objc_enumerationMutation(v17);
        }

        v6 = *(*(&v274 + 1) + 8 * i);
        objc_opt_class();
        if (!v6 || (objc_opt_isKindOfClass() & 1) == 0)
        {
          v21 = 0;
          goto LABEL_35;
        }

        v21 = v6;
        v22 = [v21 predicateOperatorType];
        if (v22 != 99)
        {
          if (v22 != 4)
          {
            goto LABEL_35;
          }

          v23 = [v21 leftExpression];
          v6 = [v23 keyPath];
          v24 = [v6 isEqualToString:@"fetchFields"];

          if (!v24)
          {
LABEL_33:
            v17 = v206;
            goto LABEL_34;
          }

          v6 = [v21 rightExpression];
          v25 = [v6 constantValue];
          v26 = v189;
          v189 = v25;
          goto LABEL_32;
        }

        v23 = [v21 rightExpression];
        if ([v23 expressionType] == 3)
        {
          v27 = [v23 keyPath];
          v28 = [v27 isEqualToString:@"tagID"];

          if (v28)
          {
            v6 = [v21 leftExpression];
            v29 = [v6 constantValue];
            v26 = obj;
            obj = v29;
          }

          else
          {
            v30 = [v23 keyPath];
            v31 = [v30 isEqualToString:@"maxOrder"];

            if (v31)
            {
              v6 = [v21 leftExpression];
              v32 = [v6 constantValue];
              v26 = v190;
              v190 = v32;
            }

            else
            {
              v33 = [v23 keyPath];
              v34 = [v33 isEqualToString:@"minOrder"];

              if (v34)
              {
                v6 = [v21 leftExpression];
                v35 = [v6 constantValue];
                v26 = v185;
                v185 = v35;
              }

              else
              {
                v36 = [v23 keyPath];
                v6 = [v36 isEqualToString:@"hardLimit"];

                if (!v6)
                {
                  goto LABEL_33;
                }

                v6 = [v21 leftExpression];
                v37 = [v6 constantValue];
                v26 = v182;
                v182 = v37;
              }
            }
          }

LABEL_32:
          v17 = v206;
        }

LABEL_34:

LABEL_35:
      }

      v19 = [v17 countByEnumeratingWithState:&v274 objects:v291 count:16];
      if (!v19)
      {
LABEL_39:

        v38 = obj;
        goto LABEL_41;
      }
    }
  }

  v189 = 0;
  v190 = 0;
  v182 = 0;
  v185 = 0;
  v38 = 0;
LABEL_41:
  v174 = [MEMORY[0x1E695DF90] dictionary];
  v270 = 0u;
  v271 = 0u;
  v272 = 0u;
  v273 = 0u;
  v39 = v38;
  v40 = [v39 countByEnumeratingWithState:&v270 objects:v290 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v271;
    do
    {
      for (j = 0; j != v41; ++j)
      {
        if (*v271 != v42)
        {
          objc_enumerationMutation(v39);
        }

        m = *(*(&v270 + 1) + 8 * j);
        v44 = MEMORY[0x1E695DF70];
        v6 = FCSortedFeedItemRecordsForFeedID(v10, m);
        v45 = [v44 arrayWithArray:v6];
        [v174 setObject:v45 forKeyedSubscript:m];
      }

      v41 = [v39 countByEnumeratingWithState:&v270 objects:v290 count:16];
    }

    while (v41);
  }

  v269 = 0u;
  v268 = 0u;
  v267 = 0u;
  v266 = 0u;
  v46 = v39;
  v47 = [v46 countByEnumeratingWithState:&v266 objects:v289 count:16];
  if (v47)
  {
    v48 = v47;
    v6 = *v267;
    do
    {
      for (k = 0; k != v48; ++k)
      {
        if (*v267 != v6)
        {
          objc_enumerationMutation(v46);
        }

        v50 = *(*(&v266 + 1) + 8 * k);
        m = [v174 objectForKeyedSubscript:v50];
        if ([m count] >= 2 && objc_msgSend(v172, "containsObject:", v50))
        {
          [m removeObjectsInRange:{1, objc_msgSend(m, "count") - 1}];
        }
      }

      v48 = [v46 countByEnumeratingWithState:&v266 objects:v289 count:16];
    }

    while (v48);
  }

  v263[0] = MEMORY[0x1E69E9820];
  v263[1] = 3221225472;
  v263[2] = __80__FCCKTestOrderFeedQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke;
  v263[3] = &unk_1E7C43448;
  v51 = v46;
  v264 = v51;
  v158 = v190;
  v265 = v158;
  v168 = __80__FCCKTestOrderFeedQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke(v263);
  v260[0] = MEMORY[0x1E69E9820];
  v260[1] = 3221225472;
  v260[2] = __80__FCCKTestOrderFeedQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke_2;
  v260[3] = &unk_1E7C43448;
  v52 = v51;
  v261 = v52;
  v157 = v185;
  v262 = v157;
  v184 = __80__FCCKTestOrderFeedQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke_2(v260);
  v257[0] = MEMORY[0x1E69E9820];
  v257[1] = 3221225472;
  v257[2] = __80__FCCKTestOrderFeedQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke_3;
  v257[3] = &unk_1E7C43448;
  v53 = v52;
  v258 = v53;
  v156 = v182;
  v259 = v156;
  v183 = __80__FCCKTestOrderFeedQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke_3(v257);
  v253 = 0u;
  v254 = 0u;
  v255 = 0u;
  v256 = 0u;
  obja = v53;
  v207 = [obja countByEnumeratingWithState:&v253 objects:v288 count:16];
  if (v207)
  {
    v202 = *v254;
    do
    {
      for (m = 0; m != v207; ++m)
      {
        if (*v254 != v202)
        {
          objc_enumerationMutation(obja);
        }

        v54 = *(*(&v253 + 1) + 8 * m);
        v55 = [v168 objectForKeyedSubscript:{v54, v156, v157, v158, v159}];
        v56 = [v174 objectForKeyedSubscript:v54];
        v6 = v56;
        while ([v56 count])
        {
          v57 = [v6 firstObject];
          v58 = [v57 objectForKeyedSubscript:@"order"];
          if ([v58 compare:v55] == 1)
          {
          }

          else
          {
            v59 = [v6 firstObject];
            v60 = [v59 objectForKeyedSubscript:@"subOrder"];
            v61 = [v60 compare:v55];

            if (v61 != 1)
            {
              break;
            }
          }

          [v6 fc_removeFirstObject];
          v56 = v6;
        }
      }

      v207 = [obja countByEnumeratingWithState:&v253 objects:v288 count:16];
    }

    while (v207);
  }

  v173 = [MEMORY[0x1E695DF90] dictionary];
  v249 = 0u;
  v250 = 0u;
  v251 = 0u;
  v252 = 0u;
  v162 = obja;
  v62 = [v162 countByEnumeratingWithState:&v249 objects:v287 count:16];
  if (v62)
  {
    v63 = v62;
    v6 = *v250;
    do
    {
      for (n = 0; n != v63; ++n)
      {
        if (*v250 != v6)
        {
          objc_enumerationMutation(v162);
        }

        v65 = *(*(&v249 + 1) + 8 * n);
        v66 = [v174 objectForKeyedSubscript:{v65, v156}];
        v67 = [v66 firstObject];

        v68 = [v67 objectForKeyedSubscript:@"order"];
        m = v68;
        if (v68)
        {
          v69 = v68;
        }

        else
        {
          v69 = &unk_1F2E70740;
        }

        [v173 setObject:v69 forKeyedSubscript:v65];
      }

      v63 = [v162 countByEnumeratingWithState:&v249 objects:v287 count:16];
    }

    while (v63);
  }

  v70 = [MEMORY[0x1E695DF70] array];
  v175 = [MEMORY[0x1E696AB50] set];
  v165 = *MEMORY[0x1E695B7A8];
  v169 = v70;
  while (2)
  {
    v71 = [v70 count];
    if (v71 >= [v9 resultsLimit] && objc_msgSend(v9, "resultsLimit") != v165)
    {
      goto LABEL_116;
    }

    v247 = 0u;
    v248 = 0u;
    v245 = 0u;
    v246 = 0u;
    v72 = v174;
    v191 = [v72 countByEnumeratingWithState:&v245 objects:v286 count:16];
    if (!v191)
    {
      goto LABEL_115;
    }

    v176 = 0;
    v179 = v72;
    v194 = 0;
    v186 = *v246;
    do
    {
      v73 = 0;
      do
      {
        v203 = m;
        v208 = v6;
        if (*v246 != v186)
        {
          objc_enumerationMutation(v72);
        }

        v74 = *(*(&v245 + 1) + 8 * v73);
        v75 = [v72 objectForKeyedSubscript:v74];
        v76 = [v75 firstObject];

        v77 = [v184 objectForKeyedSubscript:v74];
        v78 = [v183 objectForKeyedSubscript:v74];
        objb = v77;
        if (!v76)
        {
          goto LABEL_107;
        }

        v79 = [v76 objectForKeyedSubscript:@"order"];
        if ([v79 compare:v77] == -1)
        {

          goto LABEL_96;
        }

        if (v194)
        {
          v6 = [v76 objectForKeyedSubscript:@"order"];
          m = [v194 objectForKeyedSubscript:@"order"];
          if ([v6 compare:m] != 1)
          {

            goto LABEL_102;
          }

          v203 = m;
          v208 = v6;
          if (![v78 unsignedLongLongValue])
          {

LABEL_103:
            goto LABEL_105;
          }
        }

        else if (![v78 unsignedLongLongValue])
        {
          goto LABEL_103;
        }

        v80 = [v175 countForObject:v74];
        v81 = [v78 unsignedLongLongValue];
        if (v194)
        {

          v72 = v179;
          if (v80 >= v81)
          {
            goto LABEL_107;
          }

          goto LABEL_106;
        }

        if (v80 >= v81)
        {
          v194 = 0;
LABEL_96:
          m = v203;
          v6 = v208;
LABEL_102:
          v72 = v179;
          goto LABEL_108;
        }

LABEL_105:
        v72 = v179;
LABEL_106:
        v82 = v76;

        v83 = v74;
        [v175 addObject:v83];
        v176 = v83;
        v194 = v82;
LABEL_107:
        m = v203;
        v6 = v208;
LABEL_108:

        ++v73;
      }

      while (v191 != v73);
      v84 = [v72 countByEnumeratingWithState:&v245 objects:v286 count:16];
      v191 = v84;
    }

    while (v84);

    if (v176)
    {
      v70 = v169;
      [v169 addObject:v194];
      v85 = [v72 objectForKeyedSubscript:v176];
      [v85 fc_removeFirstObject];

      continue;
    }

    break;
  }

  v72 = v194;
  v70 = v169;
LABEL_115:

LABEL_116:
  v166 = [MEMORY[0x1E695DF70] array];
  v241 = 0u;
  v242 = 0u;
  v243 = 0u;
  v244 = 0u;
  v161 = v70;
  v170 = [v161 countByEnumeratingWithState:&v241 objects:v285 count:16];
  if (v170)
  {
    v163 = *v242;
    do
    {
      v86 = 0;
      do
      {
        if (*v242 != v163)
        {
          objc_enumerationMutation(v161);
        }

        v180 = v86;
        v87 = *(*(&v241 + 1) + 8 * v86);
        v88 = [v87 objectForKeyedSubscript:@"articleID"];
        v239[0] = MEMORY[0x1E69E9820];
        v239[1] = 3221225472;
        v239[2] = __80__FCCKTestOrderFeedQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke_4;
        v239[3] = &unk_1E7C38030;
        v177 = v88;
        v240 = v177;
        v89 = [v10 fc_firstObjectPassingTest:v239];
        objc = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"FeedItemAndArticle"];
        v235 = 0u;
        v236 = 0u;
        v237 = 0u;
        v238 = 0u;
        v90 = [v87 changedKeys];
        v91 = [v90 countByEnumeratingWithState:&v235 objects:v284 count:16];
        if (v91)
        {
          v92 = v91;
          v93 = *v236;
          do
          {
            for (ii = 0; ii != v92; ++ii)
            {
              if (*v236 != v93)
              {
                objc_enumerationMutation(v90);
              }

              v95 = *(*(&v235 + 1) + 8 * ii);
              v96 = [v87 objectForKeyedSubscript:v95];
              if (v96)
              {
                [objc setObject:v96 forKeyedSubscript:v95];
              }
            }

            v92 = [v90 countByEnumeratingWithState:&v235 objects:v284 count:16];
          }

          while (v92);
        }

        v233 = 0u;
        v234 = 0u;
        v231 = 0u;
        v232 = 0u;
        v187 = [v89 changedKeys];
        v195 = [v187 countByEnumeratingWithState:&v231 objects:v283 count:16];
        if (v195)
        {
          v192 = *v232;
          do
          {
            v97 = 0;
            do
            {
              if (*v232 != v192)
              {
                objc_enumerationMutation(v187);
              }

              v209 = v97;
              v98 = *(*(&v231 + 1) + 8 * v97);
              v99 = [v89 objectForKeyedSubscript:v98];
              if (v99)
              {
                [objc setObject:v99 forKeyedSubscript:v98];
              }

              v204 = v99;
              v229 = 0u;
              v230 = 0u;
              v227 = 0u;
              v228 = 0u;
              v100 = v189;
              v101 = [v100 countByEnumeratingWithState:&v227 objects:v282 count:16];
              if (v101)
              {
                v102 = v101;
                v103 = *v228;
                do
                {
                  for (jj = 0; jj != v102; ++jj)
                  {
                    if (*v228 != v103)
                    {
                      objc_enumerationMutation(v100);
                    }

                    v105 = [v89 objectForKeyedSubscript:*(*(&v227 + 1) + 8 * jj)];
                    if (v105)
                    {
                      v106 = FCLookupRecordByName(v10, v105);
                      if (v106)
                      {
                        v107 = [v9 recordFetchedBlock];
                        (v107)[2](v107, v106);
                      }
                    }
                  }

                  v102 = [v100 countByEnumeratingWithState:&v227 objects:v282 count:16];
                }

                while (v102);
              }

              v97 = v209 + 1;
            }

            while (v209 + 1 != v195);
            v195 = [v187 countByEnumeratingWithState:&v231 objects:v283 count:16];
          }

          while (v195);
        }

        v108 = [v9 desiredKeys];

        if (v108)
        {
          v109 = MEMORY[0x1E695DFD8];
          v110 = [v9 desiredKeys];
          v111 = [v109 setWithArray:v110];

          v225 = 0u;
          v226 = 0u;
          v223 = 0u;
          v224 = 0u;
          v112 = [objc changedKeys];
          v113 = [v112 countByEnumeratingWithState:&v223 objects:v281 count:16];
          if (v113)
          {
            v114 = v113;
            v115 = *v224;
            do
            {
              for (kk = 0; kk != v114; ++kk)
              {
                if (*v224 != v115)
                {
                  objc_enumerationMutation(v112);
                }

                v117 = *(*(&v223 + 1) + 8 * kk);
                if (([v111 containsObject:v117] & 1) == 0)
                {
                  [objc setObject:0 forKeyedSubscript:v117];
                }
              }

              v114 = [v112 countByEnumeratingWithState:&v223 objects:v281 count:16];
            }

            while (v114);
          }
        }

        [objc setObject:v177 forKeyedSubscript:@"articleID"];
        v118 = [v89 recordChangeTag];
        [objc setObject:v118 forKeyedSubscript:@"articleETag"];

        v119 = [v89 creationDate];
        [objc setObject:v119 forKeyedSubscript:@"articleCreationDate"];

        v120 = [v89 modificationDate];
        [objc setObject:v120 forKeyedSubscript:@"articleModDate"];

        [v166 addObject:objc];
        v86 = v180 + 1;
      }

      while (v180 + 1 != v170);
      v170 = [v161 countByEnumeratingWithState:&v241 objects:v285 count:16];
    }

    while (v170);
  }

  v221 = 0u;
  v222 = 0u;
  v219 = 0u;
  v220 = 0u;
  v167 = v166;
  v121 = [v167 countByEnumeratingWithState:&v219 objects:v280 count:16];
  if (v121)
  {
    v122 = v121;
    v123 = *v220;
    do
    {
      for (mm = 0; mm != v122; ++mm)
      {
        if (*v220 != v123)
        {
          objc_enumerationMutation(v167);
        }

        v125 = *(*(&v219 + 1) + 8 * mm);
        v126 = [v9 recordFetchedBlock];
        v126[2](v126, v125);
      }

      v122 = [v167 countByEnumeratingWithState:&v219 objects:v280 count:16];
    }

    while (v122);
  }

  v196 = [MEMORY[0x1E695DF70] array];
  v193 = [MEMORY[0x1E695DF70] array];
  v188 = [MEMORY[0x1E695DF70] array];
  v181 = [MEMORY[0x1E695DF70] array];
  v178 = [MEMORY[0x1E695DF70] array];
  v215 = 0u;
  v216 = 0u;
  v217 = 0u;
  v218 = 0u;
  v164 = v162;
  objd = [v164 countByEnumeratingWithState:&v215 objects:v279 count:16];
  if (objd)
  {
    v171 = *v216;
    do
    {
      for (nn = 0; nn != objd; nn = nn + 1)
      {
        if (*v216 != v171)
        {
          objc_enumerationMutation(v164);
        }

        v128 = *(*(&v215 + 1) + 8 * nn);
        v129 = [v174 objectForKeyedSubscript:v128];
        v210 = [v173 objectForKeyedSubscript:v128];
        v205 = [v172 containsObject:v128];
        if ([v129 count])
        {
          v130 = [v184 objectForKeyedSubscript:v128];
          v131 = [v129 firstObject];
          v132 = [v131 objectForKeyedSubscript:@"order"];
          v133 = [v132 compare:v130] == -1;

          v134 = [v129 count] == 0;
          v135 = [v129 firstObject];
          v136 = [v135 objectForKeyedSubscript:@"order"];

          v137 = v133;
        }

        else
        {
          v137 = 0;
          v134 = 1;
          v136 = &unk_1F2E70740;
        }

        v138 = [MEMORY[0x1E696AD98] numberWithBool:(v205 ^ 1) & v137];
        [v196 addObject:v138];

        v139 = [MEMORY[0x1E696AD98] numberWithBool:(v205 ^ 1) & v134];
        [v193 addObject:v139];

        [v188 addObject:v210];
        [v181 addObject:v136];
        v140 = [MEMORY[0x1E696AD98] numberWithBool:v205];
        [v178 addObject:v140];
      }

      objd = [v164 countByEnumeratingWithState:&v215 objects:v279 count:16];
    }

    while (objd);
  }

  v141 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"Results"];
  [v141 setObject:v196 forKeyedSubscript:@"reachedMinOrder"];
  [v141 setObject:v193 forKeyedSubscript:@"reachedEnd"];
  [v141 setObject:v188 forKeyedSubscript:@"topOrder"];
  [v141 setObject:v181 forKeyedSubscript:@"bottomOrder"];
  [v141 setObject:v178 forKeyedSubscript:@"feedDropped"];
  v142 = [v9 desiredKeys];

  if (v142)
  {
    v143 = MEMORY[0x1E695DFD8];
    v144 = [v9 desiredKeys];
    v145 = [v143 setWithArray:v144];

    v213 = 0u;
    v214 = 0u;
    v211 = 0u;
    v212 = 0u;
    v146 = [v141 changedKeys];
    v147 = [v146 countByEnumeratingWithState:&v211 objects:v278 count:16];
    if (v147)
    {
      v148 = v147;
      v149 = *v212;
      do
      {
        for (i1 = 0; i1 != v148; ++i1)
        {
          if (*v212 != v149)
          {
            objc_enumerationMutation(v146);
          }

          v151 = *(*(&v211 + 1) + 8 * i1);
          if (([v145 containsObject:v151] & 1) == 0)
          {
            [v141 setObject:0 forKeyedSubscript:v151];
          }
        }

        v148 = [v146 countByEnumeratingWithState:&v211 objects:v278 count:16];
      }

      while (v148);
    }
  }

  v152 = [v9 recordFetchedBlock];
  (v152)[2](v152, v141);

  v153 = [v9 queryCompletionBlock];
  v153[2](v153, 0, 0);

  v154 = *MEMORY[0x1E69E9840];
}

id __80__FCCKTestOrderFeedQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke(uint64_t a1)
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

id __80__FCCKTestOrderFeedQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke_2(uint64_t a1)
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

id __80__FCCKTestOrderFeedQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke_3(uint64_t a1)
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

uint64_t __80__FCCKTestOrderFeedQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke_4(uint64_t a1, void *a2)
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