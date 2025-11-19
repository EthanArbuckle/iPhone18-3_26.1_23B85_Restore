void sub_24D954D18(_Unwind_Exception *a1)
{
  __destructor_8_s0_S_s8_s16_s40_s48_s56_s64_s80_s88_s96_s104_s112_s120_s128_s136_s144_s152_s160_s168_s176(&STACK[0x268]);
  __destructor_8_s0_s8_s16(&STACK[0x330]);
  _Unwind_Resume(a1);
}

uint64_t GenerateThumbnails()
{
  v1 = MEMORY[0x28223BE20]();
  v349 = v2;
  v4 = v3;
  v341 = v5;
  v370 = v6;
  v425 = v1;
  v543 = *MEMORY[0x277D85DE8];
  v342 = v7;
  v8 = objc_alloc(MEMORY[0x277CBEB38]);
  v473[0] = MEMORY[0x277CBEC38];
  v472[0] = @"enable";
  v472[1] = @"resolution";
  v9 = v4[46];
  v354 = v4;
  if ((v9 & 8) != 0)
  {
    v10 = &unk_2860D6218;
  }

  else
  {
    v470[0] = @"width";
    v4 = [MEMORY[0x277CCABB0] numberWithInt:v4[39]];
    v471[0] = v4;
    v470[1] = @"height";
    v0 = [MEMORY[0x277CCABB0] numberWithInt:v354[40]];
    v471[1] = v0;
    v470[2] = @"format";
    v471[2] = &unk_2860D6818;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v471 forKeys:v470 count:3];
  }

  v11 = (v9 & 8) == 0;
  v473[1] = v10;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v473 forKeys:v472 count:2];
  v369 = [v8 initWithDictionary:v12];

  if (v11)
  {
  }

  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, v13);
  v357 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:64];
  v424 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
  v15 = v354[46];
  if ((v15 & 4) != 0)
  {
    v427 = *v425;
    parent[0] = 0;
    v504[0] = 0;
    apr_pool_create_ex(parent, 0, 0, v14);
    v393 = parent[0];
    apr_pool_create_ex(v504, parent[0], 0, v142);
    v362 = objc_alloc_init(MEMORY[0x277CBEB38]);
    obja = objc_alloc_init(MEMORY[0x277CBEB18]);
    v143 = v427[15];
    if (*(v143 + 12) >= 1)
    {
      v144 = 0;
      pb = v504[0];
      do
      {
        v410 = (*(v143 + 24) + 24 * v144);
        v145 = *(v427[16] + 24) + (*v410 << 6);
        v146 = *(v145 + 8);
        if (v146 != -16286)
        {
          ConstructorType = GTFenum_getConstructorType(v146);
          if (GTFenum_isMTLCommandEncoder(ConstructorType))
          {
            v511 = *(v427 + 1);
            v512 = pb;
            v148 = GTResourceTrackerMakeWithDescriptor(&v511);
            GTResourceTrackerProcessFunction();
            bzero(&v511, 0x2BA0uLL);
            GTMTLSMCommandEncoder_processTraceFunc(&v511, v145, v427[2]);
            if (v511 == 70)
            {
              v149 = 0;
              v150 = v514;
              v151 = v514;
              do
              {
                AddAttachmentToArray(obja, v151, v149++, v148[5], v427[1]);
                v151 += 8;
              }

              while (v149 != 8);
              AddAttachmentToArray(obja, (v150 + 672), 8, v148[5], v427[1]);
              AddAttachmentToArray(obja, (v150 + 720), 9, v148[5], v427[1]);
            }

            v417 = [obja copy];
            v152 = v148[5];
            *(v152 + 24) = 0;
            *(v152 + 32) = 0;
            *(v152 + 16) = v152;
            *(v152 + 40) = 0;
            for (i = (v152 + 16); ; i = v155)
            {
              v154 = apr_hash_next(i);
              v155 = v154;
              if (!v154)
              {
                break;
              }

              v156 = *(*(v154 + 1) + 32);
              if (*(v156 + 10) == 80 && (v156[4] & 0x8000000000000000) == 0)
              {
                v157 = *v156;
                v158 = v417;
                v475 = 0u;
                v476 = 0u;
                v477 = 0u;
                v478 = 0u;
                v159 = v158;
                v160 = [v159 countByEnumeratingWithState:&v475 objects:&v527 count:16];
                if (v160)
                {
                  v161 = *v476;
                  while (2)
                  {
                    for (j = 0; j != v160; ++j)
                    {
                      if (*v476 != v161)
                      {
                        objc_enumerationMutation(v159);
                      }

                      v163 = [*(*(&v475 + 1) + 8 * j) objectForKeyedSubscript:@"DependencyGraphRequestedTextureID"];
                      v164 = [v163 unsignedLongLongValue] == v157;

                      if (v164)
                      {

                        goto LABEL_161;
                      }
                    }

                    v160 = [v159 countByEnumeratingWithState:&v475 objects:&v527 count:16];
                    if (v160)
                    {
                      continue;
                    }

                    break;
                  }
                }

                *&v495 = @"DependencyGraphRequestedTextureID";
                v165 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v157];
                *&v500 = v165;
                v166 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v500 forKeys:&v495 count:1];
                [obja addObject:v166];
              }

LABEL_161:
              ;
            }

            if ([obja count])
            {
              v167 = v410[1];
              v168 = [obja copy];
              v169 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v167];
              [v362 setObject:v168 forKeyedSubscript:v169];

              [obja removeAllObjects];
            }

            apr_pool_clear(pb);

            v143 = v427[15];
          }
        }

        ++v144;
      }

      while (v144 < *(v143 + 12));
    }

    apr_pool_destroy(v393);

    [v369 setObject:v362 forKeyedSubscript:@"DependencyGraphRequestedTexturesForThumbnail"];
    v428 = *v425;
    v170 = v369;
    v394 = v357;
    v345 = v170;
    v367 = [v170 objectForKeyedSubscript:@"DependencyGraphRequestedTexturesForThumbnail"];
    v379 = [v170 objectForKeyedSubscript:@"resolution"];
    v352 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v367, "count")}];
    v171 = [v367 allKeys];
    v172 = [v171 sortedArrayUsingSelector:sel_compare_];

    v510 = 0u;
    v509 = 0u;
    v508 = 0u;
    *parent = 0u;
    v350 = v172;
    v355 = [v350 countByEnumeratingWithState:parent objects:&v511 count:16];
    if (v355)
    {
      v347 = *v508;
      v372 = *MEMORY[0x277CCA450];
      do
      {
        for (k = 0; k != v355; ++k)
        {
          if (*v508 != v347)
          {
            objc_enumerationMutation(v350);
          }

          v360 = *(parent[1] + k);
          v418 = [v360 unsignedLongLongValue];
          v173 = [v367 objectForKeyedSubscript:v360];
          v382 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v506 = 0u;
          v505 = 0u;
          memset(v504, 0, sizeof(v504));
          v375 = v173;
          v388 = [v375 countByEnumeratingWithState:v504 objects:&v527 count:16];
          if (v388)
          {
            v385 = *v504[2];
            do
            {
              for (m = 0; m != v388; ++m)
              {
                if (*v504[2] != v385)
                {
                  objc_enumerationMutation(v375);
                }

                v175 = *(v504[1] + m);
                objb = [v175 objectForKeyedSubscript:@"DependencyGraphRequestedTextureID"];
                AliasStream = GetAliasStream(v428[3], [objb unsignedLongLongValue], v428[11] + v418);
                if (AliasStream)
                {
                  v177 = *AliasStream;
                }

                else
                {
                  v177 = 0;
                }

                v498 = 0;
                v497 = 0u;
                v496 = 0u;
                v495 = 0u;
                GTMTLSMContext_getTextureDescriptor(v428[5], v177, v428[11] + v418, &v495);
                if (DWORD2(v496))
                {
                  v178 = WORD1(v497);
                  if (WORD1(v497) - 261 >= 2)
                  {
                    if (WORD1(v497) == 1)
                    {
                      v178 = 10;
                    }
                  }

                  else
                  {
                    v178 = 253;
                  }

                  v182 = [v175 objectForKeyedSubscript:@"DependencyGraphRequestedTextureAttachmentIndex"];
                  v181 = v182;
                  if (v182 && (v178 == 260 || v178 == 255) && [v182 unsignedIntegerValue] == 9)
                  {
                    WORD1(v497) = 253;
                    v178 = 253;
                  }

                  v411 = [v175 mutableCopy];
                  pc = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v394, "count")}];
                  v531 = @"DependencyGraphRequestedThumbnailTextureID";
                  v532 = @"format";
                  v533 = pc;
                  v183 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:ResizeFormat(v178)];
                  v534 = v183;
                  v184 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v533 forKeys:&v531 count:2];
                  [v411 addEntriesFromDictionary:v184];

                  [v382 addObject:v411];
                  v479 = @"type";
                  v480 = @"object";
                  v487 = &unk_2860D6758;
                  v488 = objb;
                  v481 = @"functionIndex";
                  v185 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v418 + 1];
                  v489 = v185;
                  v490 = v379;
                  v482 = @"resolution";
                  v483 = @"DependencyGraphRequestedThumbnailTextureID";
                  v491 = pc;
                  v186 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v487 forKeys:&v479 count:5];
                  v187 = [v186 mutableCopy];

                  v503 = 0u;
                  v502 = 0u;
                  v501 = 0u;
                  v500 = 0u;
                  v188 = [&unk_2860D5B58 countByEnumeratingWithState:&v500 objects:&v475 count:16];
                  if (v188)
                  {
                    v189 = *v501;
                    do
                    {
                      for (n = 0; n != v188; ++n)
                      {
                        if (*v501 != v189)
                        {
                          objc_enumerationMutation(&unk_2860D5B58);
                        }

                        v191 = *(*(&v500 + 1) + 8 * n);
                        v192 = [v175 objectForKeyedSubscript:v191];
                        if (v192)
                        {
                          [v187 setObject:v192 forKeyedSubscript:v191];
                        }
                      }

                      v188 = [&unk_2860D5B58 countByEnumeratingWithState:&v500 objects:&v475 count:16];
                    }

                    while (v188);
                  }

                  [v394 addObject:v187];
                }

                else
                {
                  v539 = @"Failed to generate dependency graph thumbnail";
                  v535 = v372;
                  v536 = @"GTErrorKeyTraceStreamID";
                  v179 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v177];
                  v540 = v179;
                  v180 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v539 forKeys:&v535 count:2];
                  v181 = MakeNSError(101, v180);

                  GTMTLReplay_handleNSError(v181);
                }
              }

              v388 = [v375 countByEnumeratingWithState:v504 objects:&v527 count:16];
            }

            while (v388);
          }

          [v352 setObject:v382 forKeyedSubscript:v360];
        }

        v355 = [v350 countByEnumeratingWithState:parent objects:&v511 count:16];
      }

      while (v355);
    }

    v193 = v428[1];
    *&v495 = 1;
    entry = find_entry(v193, &v495, 8uLL, 0);
    if (*entry && (v195 = *(*entry + 32)) != 0)
    {
      v196 = atomic_load((v195 + 56));
      v197 = v195 + (~(v196 >> 2) & 8);
    }

    else
    {
      v197 = 8;
    }

    v222 = *v197;
    v474[0] = @"device";
    v223 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v222];
    *&v495 = v223;
    v474[1] = @"object";
    v224 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v352];
    *(&v495 + 1) = v224;
    v376 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v495 forKeys:v474 count:2];

    v414 = [v376 objectForKeyedSubscript:@"object"];
    v225 = [v414 allKeys];
    v226 = [v225 sortedArrayUsingSelector:?];

    objc = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v414, "count")}];
    v478 = 0u;
    v477 = 0u;
    v476 = 0u;
    v475 = 0u;
    v397 = v226;
    v421 = [v397 countByEnumeratingWithState:&v475 objects:&v511 count:16];
    if (v421)
    {
      pf = *v476;
      do
      {
        v227 = 0;
        do
        {
          if (*v476 != pf)
          {
            v228 = v227;
            objc_enumerationMutation(v397);
            v227 = v228;
          }

          v431 = v227;
          v229 = [v414 objectForKeyedSubscript:*(*(&v475 + 1) + 8 * v227)];
          v510 = 0u;
          v509 = 0u;
          v508 = 0u;
          *parent = 0u;
          v230 = [v229 countByEnumeratingWithState:parent objects:&v527 count:16];
          if (v230)
          {
            v231 = *v508;
            do
            {
              for (ii = 0; ii != v230; ++ii)
              {
                if (*v508 != v231)
                {
                  objc_enumerationMutation(v229);
                }

                v233 = *(parent[1] + ii);
                *&v500 = @"context";
                v234 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:0];
                v504[0] = v234;
                v504[1] = &unk_2860D67D0;
                *(&v500 + 1) = @"type";
                *&v501 = @"object";
                v235 = [v233 objectForKeyedSubscript:@"DependencyGraphRequestedThumbnailTextureID"];
                *(&v501 + 1) = @"functionIndex";
                v504[2] = v235;
                v504[3] = &unk_2860D6830;
                v236 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v504 forKeys:&v500 count:4];
                [objc addObject:v236];
              }

              v230 = [v229 countByEnumeratingWithState:parent objects:&v527 count:16];
            }

            while (v230);
          }

          v227 = v431 + 1;
        }

        while (v431 + 1 != v421);
        v421 = [v397 countByEnumeratingWithState:&v475 objects:&v511 count:16];
      }

      while (v421);
    }

    v237 = [v376 objectForKeyedSubscript:@"object"];
    v430 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v237, "count")}];
    v478 = 0u;
    v477 = 0u;
    v476 = 0u;
    v475 = 0u;
    v413 = v237;
    pg = [(apr_pool_t *)v413 countByEnumeratingWithState:&v475 objects:&v511 count:16];
    if (pg)
    {
      v398 = *v476;
      do
      {
        v238 = 0;
        do
        {
          if (*v476 != v398)
          {
            v239 = v238;
            objc_enumerationMutation(v413);
            v238 = v239;
          }

          v422 = v238;
          v240 = *(*(&v475 + 1) + 8 * v238);
          *parent = 0u;
          v508 = 0u;
          v509 = 0u;
          v510 = 0u;
          v241 = [(apr_pool_t *)v413 objectForKeyedSubscript:v240];
          v242 = [v241 countByEnumeratingWithState:parent objects:&v527 count:16];
          if (v242)
          {
            v243 = *v508;
            do
            {
              for (jj = 0; jj != v242; ++jj)
              {
                if (*v508 != v243)
                {
                  objc_enumerationMutation(v241);
                }

                v245 = *(parent[1] + jj);
                v246 = [v245 objectForKeyedSubscript:@"DependencyGraphRequestedThumbnailTextureID"];
                v247 = [v245 objectForKeyedSubscript:@"DependencyGraphRequestedTextureAttachmentIndex"];
                v248 = v247;
                v504[0] = v240;
                if (v247)
                {
                  [&unk_2860D5B40 objectAtIndexedSubscript:{objc_msgSend(v247, "unsignedIntegerValue")}];
                }

                else
                {
                  [v245 objectForKeyedSubscript:@"DependencyGraphRequestedTextureID"];
                }
                v249 = ;
                v504[1] = v249;
                v250 = [MEMORY[0x277CBEA60] arrayWithObjects:v504 count:2];
                [v430 setObject:v250 forKeyedSubscript:v246];
              }

              v242 = [v241 countByEnumeratingWithState:parent objects:&v527 count:16];
            }

            while (v242);
          }

          v238 = v422 + 1;
        }

        while ((v422 + 1) != pg);
        pg = [(apr_pool_t *)v413 countByEnumeratingWithState:&v475 objects:&v511 count:16];
      }

      while (pg);
    }
  }

  else
  {
    if ((v15 & 2) != 0)
    {
      v16 = @"All";
    }

    else
    {
      v16 = @"First";
    }

    v362 = [&unk_2860D5B40 arrayByAddingObject:v16];
    [v369 setObject:v362 forKeyedSubscript:@"attachments"];
    v416 = *v425;
    v17 = v369;
    v381 = v357;
    v359 = v17;
    v18 = [v17 objectForKeyedSubscript:@"attachments"];
    v392 = [v359 objectForKeyedSubscript:@"resolution"];
    v374 = v416[2];
    v378 = v416[16];
    v366 = v416[15];
    v475 = 0u;
    v476 = 0u;
    v477 = 0u;
    v478 = 0u;
    obj = v18;
    v19 = 0;
    v20 = [obj countByEnumeratingWithState:&v475 objects:&v527 count:16];
    if (v20)
    {
      v21 = *v476;
      do
      {
        for (kk = 0; kk != v20; ++kk)
        {
          if (*v476 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = [&unk_2860D5B40 indexOfObject:*(*(&v475 + 1) + 8 * kk)];
          v24 = 1 << v23;
          if (v23 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v24 = 0;
          }

          v19 |= v24;
        }

        v20 = [obj countByEnumeratingWithState:&v475 objects:&v527 count:16];
      }

      while (v20);
    }

    v387 = [obj containsObject:@"All"];
    v384 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v409 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:8];
    v25 = v378;
    if (*(v378 + 12) >= 1)
    {
      v26 = 0;
      v27 = 0;
      do
      {
        v28 = *(v25 + 24) + (v26 << 6);
        v29 = *(v28 + 8);
        v426 = v28;
        if (v29 <= -16359)
        {
          if (v29 <= -20446)
          {
            if (v29 != -20474)
            {
              if (v29 != -20457)
              {
                goto LABEL_53;
              }

              v28 = *(v25 + 24) + (v26 << 6);
LABEL_43:
              v36 = GTTraceFunc_argumentBytesWithMap(v28, *(v28 + 13), v374);
              Object = GTMTLSMContext_getObject(*v416[5], *v36, *v28);
              if (!Object)
              {
                goto LABEL_53;
              }

              v30 = Object + 12;
              goto LABEL_49;
            }

            v38 = GTTraceFunc_argumentBytesWithMap(v28, *(v28 + 13), v374);
            v39 = GTMTLSMContext_getObject(*v416[5], *v38, *v28);
            if (!v39)
            {
              goto LABEL_53;
            }

            v30 = v39 + 9;
          }

          else
          {
            if (v29 == -20445)
            {
              goto LABEL_43;
            }

            if (v29 != -20420)
            {
              if (v29 != -16359)
              {
                goto LABEL_53;
              }

              v28 = *(v25 + 24) + (v26 << 6);
LABEL_32:
              v31 = GTTraceFunc_argumentBytesWithMap(v28, *(v28 + 13), v374);
              v32 = v416[5];
              v33 = *(v31 + 1);
LABEL_38:
              v35 = GTMTLSMContext_getObject(*v32, v33, *v28);
              if (!v35)
              {
                goto LABEL_53;
              }

              v30 = v35 + 6;
              goto LABEL_49;
            }

            v40 = GTTraceFunc_argumentBytesWithMap(v28, *(v28 + 13), v374);
            v41 = GTMTLSMContext_getObject(*v416[5], *v40, *v28);
            if (!v41)
            {
              goto LABEL_53;
            }

            v30 = v41 + 18;
          }
        }

        else
        {
          if (v29 > -7159)
          {
            if (v29 != -7156 && v29 != -7157)
            {
              if (v29 != -7158)
              {
                goto LABEL_53;
              }

              v28 = *(v25 + 24) + (v26 << 6);
            }

            v34 = GTTraceFunc_argumentBytesWithMap(v28, *(v28 + 13), v374);
            v32 = v416[5];
            v33 = *v34;
            goto LABEL_38;
          }

          if (v29 == -16358 || v29 == -16133)
          {
            goto LABEL_32;
          }

          if (v29 != -15310)
          {
            goto LABEL_53;
          }

          v30 = (GTTraceFunc_argumentBytesWithMap(v28, *(v28 + 13), v374) + 8);
        }

LABEL_49:
        v42 = *v30;
        if (*v30)
        {
          v43 = v392;
          v44 = v381;
          memset(v513, 0, sizeof(v513));
          v512 = 0u;
          v511 = 0u;
          GTMTLSMContext_getTextureDescriptor(v416[5], v42, *v426, &v511);
          v45 = v416[1];
          v539 = v42;
          v46 = *find_entry(v45, &v539, 8uLL, 0);
          p = v27;
          if (v46 && (v47 = *(v46 + 32)) != 0)
          {
            v48 = v26;
            v49 = atomic_load((v47 + 56));
            v50 = v47 + (~(v49 >> 2) & 8);
          }

          else
          {
            v48 = v26;
            v50 = 8;
          }

          v55 = *v50;
          v539 = &unk_2860D6758;
          v535 = @"type";
          v536 = @"object";
          v56 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v55];
          v540 = v56;
          v541 = v43;
          v537 = @"resolution";
          v538 = @"format";
          v57 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:ResizeFormat(*&v513[2])];
          v542 = v57;
          v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v539 forKeys:&v535 count:4];

          v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v44, "count")}];
          v60 = [v58 objectForKeyedSubscript:@"format"];
          InclusiveRange = GroupBuilder_findInclusiveRange(*(v366 + 12), *(v366 + 24), v48);
          if (InclusiveRange)
          {
            while ((GTFenum_isBeginCommandBuffer(InclusiveRange[5]) & 1) == 0)
            {
              v62 = InclusiveRange[2];
              if (v62)
              {
                InclusiveRange -= 6 * v62;
              }

              else
              {
                InclusiveRange = 0;
              }

              if (!v62)
              {
                goto LABEL_69;
              }
            }

            v63 = [v58 mutableCopy];
            v64 = InclusiveRange[1];
          }

          else
          {
LABEL_69:
            v63 = [v58 mutableCopy];
            v64 = v48;
          }

          v65 = [MEMORY[0x277CCABB0] numberWithInt:(v64 + 1)];
          [v63 setObject:v65 forKeyedSubscript:@"functionIndex"];

          [v63 setObject:v59 forKeyedSubscript:@"DependencyGraphRequestedThumbnailTextureID"];
          [v44 addObject:v63];

          v531 = @"object";
          v532 = @"format";
          v533 = v59;
          v534 = v60;
          v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v533 forKeys:&v531 count:2];

          v67 = [MEMORY[0x277CCABB0] numberWithInt:v48];
          [v384 setObject:v66 forKeyedSubscript:v67];

          v25 = v378;
          v26 = v48;
          v27 = p;
          goto LABEL_135;
        }

LABEL_53:
        v51 = *(v426 + 8);
        if ((GTFenum_isDrawCall(v51) & 1) == 0 && (v51 & 0xFFFFFFFC) != 0xFFFFC1A4)
        {
          goto LABEL_73;
        }

        v371 = v26;
        if (!v27 || v26 < *v27 || v26 > *(v27 + 1))
        {
          v52 = GroupBuilder_findInclusiveRange(*(v366 + 12), *(v366 + 24), v26);
          v53 = GroupRange_encoderWithAttachments(v52);
          if (!v53)
          {
            v27 = 0;
LABEL_73:
            v25 = v378;
            goto LABEL_135;
          }

          v54 = v53;
          bzero(&v511, 0x2BA0uLL);
          GTMTLSMCommandEncoder_processTraceFunc(&v511, (*(v378 + 24) + (*v54 << 6)), v374);
          pa = v54;
          if (v511 == 70 || v511 == 65)
          {
            v363 = v514;
          }

          else
          {
            v363 = 0;
          }

          [v409 removeAllObjects];
          v68 = 0;
          v69 = v363;
          v27 = v54;
          while (1)
          {
            if (((v19 >> v68) & 1) != 0 && v69[1])
            {
              v70 = *v69;
              if (*v69)
              {
                v71 = *v69;
              }

              else
              {
                v71 = v69[1];
              }

              memset(v513, 0, sizeof(v513));
              v512 = 0u;
              v511 = 0u;
              GTMTLSMContext_getTextureDescriptor(v416[5], v71, *v426, &v511);
              v72 = v416[1];
              v539 = v71;
              v73 = find_entry(v72, &v539, 8uLL, 0);
              if (*v73 && (v74 = *(*v73 + 32)) != 0)
              {
                v75 = atomic_load((v74 + 56));
                v76 = v74 + (~(v75 >> 2) & 8);
              }

              else
              {
                v76 = 8;
              }

              v77 = v70 == 0;
              v78 = *v76;
              parent[0] = &unk_2860D6758;
              v504[0] = @"type";
              v504[1] = @"DependencyGraphRequestedTextureAttachmentIndex";
              v79 = [MEMORY[0x277CCABB0] numberWithInt:v68];
              parent[1] = v79;
              v504[2] = @"object";
              v80 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v78];
              *&v508 = v80;
              *(&v508 + 1) = v392;
              v504[3] = @"resolution";
              *&v505 = @"DependencyGraphRequestedTextureSlice";
              v81 = 20;
              if (v77)
              {
                v81 = 22;
              }

              v82 = [MEMORY[0x277CCABB0] numberWithInt:*(v69 + v81)];
              *&v509 = v82;
              *(&v505 + 1) = @"DependencyGraphRequestedTextureLevel";
              v83 = 26;
              if (v77)
              {
                v83 = 24;
              }

              v84 = [MEMORY[0x277CCABB0] numberWithInt:*(v69 + v83)];
              *(&v509 + 1) = v84;
              *&v506 = @"DependencyGraphRequestedTextureDepthPlane";
              v85 = 18;
              if (v77)
              {
                v85 = 16;
              }

              v86 = [MEMORY[0x277CCABB0] numberWithInt:*(v69 + v85)];
              *&v510 = v86;
              *(&v506 + 1) = @"format";
              v87 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:ResizeFormat(*&v513[2])];
              *(&v510 + 1) = v87;
              v88 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:parent forKeys:v504 count:8];
              [v409 addObject:v88];

              v27 = pa;
              if (!v387)
              {
                break;
              }
            }

            ++v68;
            v69 += 8;
            if (v68 == 8)
            {
              v89 = v363;
              if ((v19 & 0x100) == 0 || !v363[85])
              {
                goto LABEL_346;
              }

              v90 = v363[84];
              if (v90)
              {
                v91 = v363[84];
              }

              else
              {
                v91 = v363[85];
              }

              memset(v513, 0, sizeof(v513));
              v512 = 0u;
              v511 = 0u;
              GTMTLSMContext_getTextureDescriptor(v416[5], v91, *v426, &v511);
              v92 = v416[1];
              v539 = v91;
              v93 = find_entry(v92, &v539, 8uLL, 0);
              if (*v93 && (v94 = *(*v93 + 32)) != 0)
              {
                v95 = atomic_load((v94 + 56));
                v96 = v94 + (~(v95 >> 2) & 8);
              }

              else
              {
                v96 = 8;
              }

              v97 = v90 == 0;
              v98 = *v96;
              *&v495 = @"type";
              *(&v495 + 1) = @"DependencyGraphRequestedTextureAttachmentIndex";
              *&v500 = &unk_2860D6758;
              *(&v500 + 1) = &unk_2860D6770;
              *&v496 = @"object";
              v99 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v98];
              *&v501 = v99;
              *(&v501 + 1) = v392;
              *(&v496 + 1) = @"resolution";
              *&v497 = @"DependencyGraphRequestedTextureSlice";
              v100 = 692;
              if (v97)
              {
                v100 = 694;
              }

              v101 = [MEMORY[0x277CCABB0] numberWithInt:*(v363 + v100)];
              *&v502 = v101;
              *(&v497 + 1) = @"DependencyGraphRequestedTextureLevel";
              v102 = 698;
              if (v97)
              {
                v102 = 696;
              }

              v103 = [MEMORY[0x277CCABB0] numberWithInt:*(v363 + v102)];
              *(&v502 + 1) = v103;
              v498 = @"DependencyGraphRequestedTextureDepthPlane";
              v104 = 690;
              if (v97)
              {
                v104 = 688;
              }

              v105 = [MEMORY[0x277CCABB0] numberWithInt:*(v363 + v104)];
              *&v503 = v105;
              v499 = @"format";
              v106 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:ResizeFormat(*&v513[2])];
              *(&v503 + 1) = v106;
              v107 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v500 forKeys:&v495 count:8];
              [v409 addObject:v107];

              v27 = pa;
              v89 = v363;
              if (v387)
              {
LABEL_346:
                if ((v19 & 0x200) != 0 && v89[91])
                {
                  v108 = v89[90];
                  if (v108)
                  {
                    v109 = v89[90];
                  }

                  else
                  {
                    v109 = v89[91];
                  }

                  memset(v513, 0, sizeof(v513));
                  v512 = 0u;
                  v511 = 0u;
                  GTMTLSMContext_getTextureDescriptor(v416[5], v109, *v426, &v511);
                  v110 = v416[1];
                  v539 = v109;
                  v111 = find_entry(v110, &v539, 8uLL, 0);
                  if (*v111 && (v112 = *(*v111 + 32)) != 0)
                  {
                    v113 = atomic_load((v112 + 56));
                    v114 = v112 + (~(v113 >> 2) & 8);
                  }

                  else
                  {
                    v114 = 8;
                  }

                  v115 = v108 == 0;
                  v116 = *v114;
                  v479 = @"type";
                  v480 = @"DependencyGraphRequestedTextureAttachmentIndex";
                  v487 = &unk_2860D6758;
                  v488 = &unk_2860D6788;
                  v481 = @"object";
                  v117 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v116];
                  v489 = v117;
                  v490 = v392;
                  v482 = @"resolution";
                  v483 = @"DependencyGraphRequestedTextureSlice";
                  v118 = 740;
                  if (v115)
                  {
                    v118 = 742;
                  }

                  v119 = [MEMORY[0x277CCABB0] numberWithInt:*(v363 + v118)];
                  v491 = v119;
                  v484 = @"DependencyGraphRequestedTextureLevel";
                  v120 = 746;
                  if (v115)
                  {
                    v120 = 744;
                  }

                  v121 = [MEMORY[0x277CCABB0] numberWithInt:*(v363 + v120)];
                  v492 = v121;
                  v485 = @"DependencyGraphRequestedTextureDepthPlane";
                  v122 = 738;
                  if (v115)
                  {
                    v122 = 736;
                  }

                  v123 = [MEMORY[0x277CCABB0] numberWithInt:*(v363 + v122)];
                  v493 = v123;
                  v486 = @"format";
                  v124 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:ResizeFormat(*&v513[2])];
                  v494 = v124;
                  v125 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v487 forKeys:&v479 count:8];
                  [v409 addObject:v125];

                  v27 = pa;
                }
              }

              break;
            }
          }
        }

        v126 = v27;
        if ([v409 count])
        {
          if (*(v426 + 8) >> 2 == 1073737833)
          {
            GetExecuteCommandsInBufferArgs(&v511, *(v378 + 24) + (v371 << 6), v416[2]);
            v526 = 0;
            v525 = 0u;
            v524 = 0u;
            v523 = 0u;
            v522 = 0u;
            v521 = 0u;
            v520 = 0u;
            v519 = 0u;
            v518 = 0u;
            v517 = 0u;
            v516 = 0u;
            v515 = 0u;
            v514 = 0u;
            *&v513[8] = 0u;
            v127 = GTMTLSMContext_getObject(*v416[5], v511, *v426);
            GTMTLCreateIndirectCommandEncoder(&v513[8], v127[14]);
            v128 = v512;
            if (v512)
            {
              v129 = 0;
              v130 = v526;
              v131 = v371 + (*(&v511 + 1) << 32);
              v132 = (*(&v512 + 1) + *&v513[16] + *(&v511 + 1) * v526);
              do
              {
                if (*v132)
                {
                  v133 = _processThumbnailAttachments(v381, v409, v131);
                  v134 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v131];
                  [v384 setObject:v133 forKeyedSubscript:v134];

                  v27 = v126;
                }

                v132 = (v132 + v130);
                ++v129;
                v131 += 0x100000000;
              }

              while (v128 > v129);
            }

            v25 = v378;
            v26 = v371;
            goto LABEL_135;
          }

          v135 = _processThumbnailAttachments(v381, v409, v371);
          v136 = [MEMORY[0x277CCABB0] numberWithInt:v371];
          [v384 setObject:v135 forKeyedSubscript:v136];
        }

        v25 = v378;
        v26 = v371;
LABEL_135:
        ++v26;
      }

      while (v26 < *(v25 + 12));
    }

    v137 = v416[1];
    *&v511 = 1;
    v138 = find_entry(v137, &v511, 8uLL, 0);
    if (*v138 && (v139 = *(*v138 + 32)) != 0)
    {
      v140 = atomic_load((v139 + 56));
      v141 = v139 + (~(v140 >> 2) & 8);
    }

    else
    {
      v141 = 8;
    }

    v198 = *v141;
    v539 = @"device";
    v199 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v198];
    v540 = @"object";
    *&v511 = v199;
    *(&v511 + 1) = v384;
    v376 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v511 forKeys:&v539 count:2];

    pd = [v376 objectForKeyedSubscript:@"object"];
    v200 = [(apr_pool_t *)pd allKeys];
    v201 = [v200 sortedArrayUsingSelector:?];

    objc = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[apr_pool_t count](pd, "count")}];
    v478 = 0u;
    v477 = 0u;
    v476 = 0u;
    v475 = 0u;
    v389 = v201;
    v412 = [v389 countByEnumeratingWithState:&v475 objects:&v511 count:16];
    if (v412)
    {
      v395 = *v476;
      do
      {
        for (mm = 0; mm != v412; mm = mm + 1)
        {
          if (*v476 != v395)
          {
            objc_enumerationMutation(v389);
          }

          v419 = [(apr_pool_t *)pd objectForKeyedSubscript:*(*(&v475 + 1) + 8 * mm)];
          v202 = [v419 objectForKeyedSubscript:@"target"];
          v510 = 0u;
          v509 = 0u;
          v508 = 0u;
          *parent = 0u;
          v203 = [v202 countByEnumeratingWithState:parent objects:&v527 count:16];
          if (v203)
          {
            v204 = *v508;
            do
            {
              for (nn = 0; nn != v203; ++nn)
              {
                if (*v508 != v204)
                {
                  objc_enumerationMutation(v202);
                }

                v206 = [v202 objectForKeyedSubscript:*(parent[1] + nn)];
                *&v500 = @"context";
                v207 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:0];
                v504[0] = v207;
                v504[1] = &unk_2860D67D0;
                *(&v500 + 1) = @"type";
                *&v501 = @"object";
                v208 = [v206 objectForKeyedSubscript:@"object"];
                *(&v501 + 1) = @"functionIndex";
                v504[2] = v208;
                v504[3] = &unk_2860D6830;
                v209 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v504 forKeys:&v500 count:4];
                [objc addObject:v209];
              }

              v203 = [v202 countByEnumeratingWithState:parent objects:&v527 count:16];
            }

            while (v203);
          }
        }

        v412 = [v389 countByEnumeratingWithState:&v475 objects:&v511 count:16];
      }

      while (v412);
    }

    v210 = pd;
    v430 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[apr_pool_t count](v210, "count")}];
    v478 = 0u;
    v477 = 0u;
    v476 = 0u;
    v475 = 0u;
    v413 = v210;
    v396 = [(apr_pool_t *)v413 countByEnumeratingWithState:&v475 objects:&v511 count:16];
    if (v396)
    {
      v390 = *v476;
      do
      {
        v211 = 0;
        do
        {
          if (*v476 != v390)
          {
            v212 = v211;
            objc_enumerationMutation(v413);
            v211 = v212;
          }

          pe = v211;
          v213 = *(*(&v475 + 1) + 8 * v211);
          v420 = [(apr_pool_t *)v413 objectForKeyedSubscript:v213];
          v214 = [v420 objectForKeyedSubscript:@"target"];
          v510 = 0u;
          v509 = 0u;
          v508 = 0u;
          *parent = 0u;
          v215 = [v214 countByEnumeratingWithState:parent objects:&v527 count:16];
          if (v215)
          {
            v216 = *v508;
            do
            {
              for (i1 = 0; i1 != v215; ++i1)
              {
                if (*v508 != v216)
                {
                  objc_enumerationMutation(v214);
                }

                v218 = *(parent[1] + i1);
                v219 = [v214 objectForKeyedSubscript:v218];
                v220 = [v219 objectForKeyedSubscript:@"object"];
                v504[0] = v213;
                v504[1] = v218;
                v221 = [MEMORY[0x277CBEA60] arrayWithObjects:v504 count:2];
                [v430 setObject:v221 forKeyedSubscript:v220];
              }

              v215 = [v214 countByEnumeratingWithState:parent objects:&v527 count:16];
            }

            while (v215);
          }

          v211 = (pe + 1);
        }

        while (pe + 1 != v396);
        v396 = [(apr_pool_t *)v413 countByEnumeratingWithState:&v475 objects:&v511 count:16];
      }

      while (v396);
    }
  }

  v251 = objc;
  v252 = v357;
  v423 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v530 = 0u;
  v529 = 0u;
  v528 = 0u;
  v527 = 0u;
  v415 = v251;
  v253 = [v415 countByEnumeratingWithState:&v527 objects:&v511 count:16];
  if (v253)
  {
    v254 = *v528;
    do
    {
      for (i2 = 0; i2 != v253; ++i2)
      {
        if (*v528 != v254)
        {
          objc_enumerationMutation(v415);
        }

        v256 = *(*(&v527 + 1) + 8 * i2);
        v257 = [v256 objectForKeyedSubscript:@"functionIndex"];
        if ([v257 unsignedIntValue] == -1)
        {
          v258 = [v256 objectForKeyedSubscript:@"object"];
          v259 = [v258 unsignedLongLongValue];

          v260 = [v252 objectAtIndexedSubscript:v259];
          v261 = [v260 objectForKeyedSubscript:@"functionIndex"];

          v257 = v261;
        }

        v262 = [v423 objectForKeyedSubscript:v257];
        if (!v262)
        {
          v262 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v423 setObject:v262 forKeyedSubscript:v257];
        }

        [v262 addObject:v256];
      }

      v253 = [v415 countByEnumeratingWithState:&v527 objects:&v511 count:16];
    }

    while (v253);
  }

  v504[0] = &v511;
  *&v504[1] = xmmword_24DA8BC70;
  v504[2] = [MEMORY[0x277CBEB28] dataWithCapacity:4096];
  v340 = *(v425 + 24);
  v263 = [v423 allKeys];
  v264 = [v263 sortedArrayUsingSelector:sel_compare_];

  if ((v354[46] & 0x10) != 0 && [v264 count])
  {
    v265 = [v264 subarrayWithRange:{objc_msgSend(v264, "count") - 1, 1}];

    v264 = v265;
  }

  v460 = 0u;
  v461 = 0u;
  v458 = 0u;
  v459 = 0u;
  v343 = v264;
  v346 = [v343 countByEnumeratingWithState:&v458 objects:v469 count:16];
  if (v346)
  {
    v339 = v438;
    v344 = *v459;
    v348 = *MEMORY[0x277CCA7E8];
    while (2)
    {
      for (i3 = 0; i3 != v346; ++i3)
      {
        if (*v459 != v344)
        {
          objc_enumerationMutation(v343);
        }

        v266 = *(*(&v458 + 1) + 8 * i3);
        GTMTLReplayController_debugSubCommandStop(v425, [v266 unsignedIntegerValue], 0);
        v267 = [v423 objectForKeyedSubscript:v266];
        v268 = [v267 count];
        v356 = [MEMORY[0x277CBEB18] arrayWithCapacity:v268];
        v358 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v268];
        [v424 removeAllObjects];
        v269 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v456 = 0u;
        v457 = 0u;
        v454 = 0u;
        v455 = 0u;
        objd = v267;
        v270 = [objd countByEnumeratingWithState:&v454 objects:v468 count:16];
        if (v270)
        {
          v271 = *v455;
          do
          {
            for (i4 = 0; i4 != v270; ++i4)
            {
              if (*v455 != v271)
              {
                objc_enumerationMutation(objd);
              }

              v273 = [*(*(&v454 + 1) + 8 * i4) objectForKeyedSubscript:@"object"];
              v274 = [v273 unsignedIntegerValue];

              v275 = [v252 objectAtIndexedSubscript:v274];
              [v424 addObject:v275];
              v276 = [v275 objectForKeyedSubscript:@"object"];
              v277 = [v276 unsignedLongLongValue];

              v278 = [v275 objectForKeyedSubscript:@"functionIndex"];
              v279 = [v278 unsignedIntValue];

              v280 = GetAliasStream(*(*v425 + 24), v277, *(*v425 + 88) + v279 - 1);
              if (v280)
              {
                v281 = *v280;
              }

              else
              {
                v281 = 0;
              }

              v282 = *(v425 + 56);
              v283 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v281];
              v284 = [v282 objectForKeyedSubscript:v283];

              if (!v284)
              {
                v284 = [*(v425 + 8) textureForKey:v281];
              }

              [v269 addObject:v284];
            }

            v270 = [objd countByEnumeratingWithState:&v454 objects:v468 count:16];
          }

          while (v270);
        }

        GTMTLReplayClient_waitForUntrackedWritesToComplete(v425, v269);
        v453 = 0;
        v351 = GTMTLReplayClient_retrieveTexturesForResize(v425, v424, v269, 1, &v453);
        v285 = v453;
        if (v285)
        {
          v286 = v285;
          v466 = v348;
          v467 = v285;
          v386 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v467 forKeys:&v466 count:1];
          GTMTLReplay_fillError(v349, 101, v386);
          if (v349)
          {
            v287 = *v349;
          }

          else
          {
            v287 = 0;
          }

          GTMTLReplay_handleNSError(v287);
          v332 = 0;
        }

        else
        {
          v386 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v351, "count")}];
          v288 = [*(v425 + 8) defaultCommandQueue];
          v383 = [v288 commandBuffer];

          v289 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.gputools.replay", @"TextureResize", v339];
          [v383 setLabel:v289];

          v451 = 0u;
          v452 = 0u;
          v449 = 0u;
          v450 = 0u;
          v290 = v351;
          v373 = [v290 countByEnumeratingWithState:&v449 objects:v465 count:16];
          if (v373)
          {
            v365 = v290;
            v368 = *v450;
            while (2)
            {
              for (ph = 0; ph != v373; ph = (ph + 1))
              {
                if (*v450 != v368)
                {
                  objc_enumerationMutation(v290);
                }

                v291 = *(*(&v449 + 1) + 8 * ph);
                v292 = [v291 width];
                v293 = [v291 height];
                v500 = 0uLL;
                *&v501 = 0;
                v294 = [v369 objectForKeyedSubscript:@"resolution"];
                *&v527 = v292;
                *(&v527 + 1) = v293;
                *&v528 = 1;
                GTMTLReplayClient_resizeResolution(&v500, v294, &v527);

                *&v510 = 0;
                v509 = 0u;
                v508 = 0u;
                *parent = 0u;
                v295 = [v291 device];
                [v291 pixelFormat];
                MTLPixelFormatGetInfoForDevice();

                v296 = parent[1];
                v297 = *(v425 + 16);
                v448 = 0;
                v298 = GTMTLReplayController_resizeTexture(v297, v370, v383, v291, v500, *(&v500 + 1), &v448);
                v391 = v448;
                if ((v296 & 0x20000) != 0)
                {
                  v362 = v362 & 0xFFFFFFFF00000000 | 0x1040302;
                  v300 = [v298 newTextureViewWithPixelFormat:objc_msgSend(v298 textureType:"pixelFormat") levels:2 slices:0 swizzle:objc_msgSend(v291, "mipmapLevelCount"), 0, 1, v362];

                  if ((v354[46] & 0x20) != 0)
                  {
                    v301 = 70;
                  }

                  else
                  {
                    v301 = 125;
                  }

                  v302 = *(v425 + 16);
                  v377 = v383;
                  v303 = v300;
                  v304 = v302;
                  v305 = v303;
                  v380 = [v303 device];
                  [v303 pixelFormat];
                  *&v530 = 0;
                  v529 = 0u;
                  v528 = 0u;
                  v527 = 0u;
                  GTMTLPixelFormatGetInfoForDevice(&v527, v380, v301);
                  v399 = [MEMORY[0x277CD7050] texture2DDescriptorWithPixelFormat:v301 width:objc_msgSend(v303 height:"width") mipmapped:objc_msgSend(v303, "height"), 0];
                  [v399 setUsage:5];
                  [v399 setResourceOptions:32];
                  *&v495 = 0;
                  v298 = [v304 newTextureWithDescriptor:v399 error:&v495];

                  v306 = v495;
                  v361 = v306;
                  if (v298)
                  {
                    v307 = objc_alloc_init(MEMORY[0x277CD6F48]);
                    v308 = [v307 colorAttachments];
                    v309 = [v308 objectAtIndexedSubscript:0];
                    [v309 setTexture:v298];

                    v310 = [v377 renderCommandEncoderWithDescriptor:v307];
                    v475 = v527;
                    v476 = v528;
                    v477 = v529;
                    *&v478 = v530;
                    v311 = GTMTLReplayController_getResizeRenderPipelineState(v370, &v475, v301);
                    [v310 setRenderPipelineState:v311];

                    [v310 setVertexBuffer:*(v370 + 168) offset:0 atIndex:0];
                    [v310 setVertexBuffer:*(v370 + 168) offset:96 atIndex:1];
                    [v310 setFragmentSamplerState:*(v370 + 152) atIndex:0];
                    [v310 setFragmentTexture:v305 atIndex:0];
                    [v310 drawPrimitives:3 vertexStart:0 vertexCount:6];
                    [v310 endEncoding];
                    v312 = v298;

                    v313 = v391;
                  }

                  else
                  {
                    if (v306)
                    {
                      v487 = v348;
                      *&v475 = v306;
                      v314 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v475 forKeys:&v487 count:1];
                    }

                    else
                    {
                      v314 = 0;
                    }

                    v307 = v314;
                    v313 = MakeNSError(101, v314);
                    v315 = v313;
                    GTMTLReplay_handleNSError(v313);
                  }

                  v316 = v313;
                  v299 = v316;
                  if (v316)
                  {
LABEL_333:
                    v463 = v348;
                    v464 = v299;
                    v334 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v464 forKeys:&v463 count:1];
                    GTMTLReplay_fillError(v349, 101, v334);
                    if (v349)
                    {
                      v335 = *v349;
                    }

                    else
                    {
                      v335 = 0;
                    }

                    GTMTLReplay_handleNSError(v335);
                    v286 = v299;

                    v332 = 0;
                    v333 = v365;
                    goto LABEL_337;
                  }
                }

                else
                {
                  v299 = v391;
                  if (v391)
                  {
                    goto LABEL_333;
                  }
                }

                [v386 addObject:v298];

                v290 = v365;
              }

              v373 = [v365 countByEnumeratingWithState:&v449 objects:v465 count:16];
              if (v373)
              {
                continue;
              }

              break;
            }
          }

          GTMTLReplay_commitCommandBuffer(v383);
          v317 = [v424 count];
          if (v317)
          {
            for (i5 = 0; i5 != v317; ++i5)
            {
              v319 = [v386 objectAtIndexedSubscript:i5];
              v320 = [objd objectAtIndexedSubscript:i5];
              v321 = [v320 objectForKeyedSubscript:@"object"];
              v322 = [v321 unsignedIntegerValue];

              [(apr_pool_t *)v504[2] setLength:0];
              [(apr_pool_t *)v504[2] appendBytes:"MTSP" length:8];
              v445 = 0u;
              v446 = 0u;
              v447 = 0u;
              DWORD2(v445) = 7;
              LODWORD(v446) = 2;
              DYTraceEncode_InternalData(&v445, v504[0]);
              v323 = *v504[0];
              if ((*(v504[0] + 33) & 0x10) != 0)
              {
                v325 = v504[0];
                v326 = *v504[0];
                do
                {
                  v325 = (v325 + v323);
                  v323 = *v325;
                  v326 += v323;
                }

                while ((*(v325 + 33) & 0x20) == 0);
              }

              else
              {
                v324 = *v504[0];
              }

              [apr_pool_t appendBytes:"appendBytes:length:" length:?];
              *&v527 = v504;
              v327 = v358;
              *(&v527 + 1) = v327;
              *&v528 = 0;
              v328 = *(v425 + 24);
              v444 = 0;
              GTMTLReplayClient_harvestTexture(v370, v328, v319, v322, &v527, 0xFFFFFFFFFFFFFFFFLL, 0, 0, &v444);
              v329 = v444;
              v330 = [(apr_pool_t *)v504[2] copy];
              [v356 addObject:v330];
            }
          }

          v331 = [v340 commandBuffer];
          v437[0] = MEMORY[0x277D85DD0];
          v437[1] = 3221225472;
          v438[0] = __GenerateThumbnails_block_invoke;
          v438[1] = &unk_2796584E0;
          v439 = v356;
          v440 = v430;
          v441 = v358;
          v443 = v341;
          v442 = v342;
          [v331 addCompletedHandler:v437];

          [v340 commitCommandBuffer];
          v286 = 0;
          v332 = 1;
          v333 = v439;
LABEL_337:
        }

        if (!v332)
        {

          v336 = 0;
          goto LABEL_343;
        }
      }

      v346 = [v343 countByEnumeratingWithState:&v458 objects:v469 count:16];
      if (v346)
      {
        continue;
      }

      break;
    }
  }

  apr_pool_destroy(newpool);
  v336 = 1;
LABEL_343:

  v337 = *MEMORY[0x277D85DE8];
  return v336;
}

id ComputeDerivedCounters(void *a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v26 = a1;
  v5 = a2;
  v25 = a3;
  v24 = [v5 objectForKeyedSubscript:@"counters"];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = [v5 objectForKeyedSubscript:@"AverageSamples"];
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v28;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v28 != v16)
              {
                objc_enumerationMutation(v13);
              }

              [v6 addObjectsFromArray:*(*(&v27 + 1) + 8 * j)];
            }

            v15 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v15);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v9);
  }

  v18 = [v26 objectForKeyedSubscript:@"DerivedCounterDictionary"];
  verifyCounterDictionary(v18);
  v19 = [v18 objectForKeyedSubscript:@"DerivedCounters"];
  v20 = [v19 allKeys];

  v21 = GTMTLReplayHost_computeDerivedCountersFromData(v24, v6, v25, v20, v26);

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

id BatchIdFiterableCounters()
{
  if (BatchIdFiterableCounters__once != -1)
  {
    dispatch_once(&BatchIdFiterableCounters__once, &__block_literal_global_516);
  }

  v1 = BatchIdFiterableCounters_filterableCounters;

  return v1;
}

void WriteToCSVFromCounterData(void *a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v26 = a2;
  v4 = [v3 objectForKeyedSubscript:@"counters"];
  v27 = v3;
  v5 = [v3 objectForKeyedSubscript:@"AverageSamples"];
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count") + 1}];
  [v6 addObject:@"Index"];
  v25 = v4;
  [v6 addObjectsFromArray:v4];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [v6 componentsJoinedByString:{@", "}];
  [v7 addObject:v8];

  [v7 addObject:@"Frame Start 1"];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v5;
  v30 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v30)
  {
    v9 = 0;
    v29 = *v45;
    do
    {
      v10 = 0;
      do
      {
        if (*v45 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = v10;
        v11 = *(*(&v44 + 1) + 8 * v10);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v32 = v11;
        v34 = [v32 countByEnumeratingWithState:&v40 objects:v49 count:16];
        if (v34)
        {
          v33 = *v41;
          do
          {
            v12 = 0;
            do
            {
              if (*v41 != v33)
              {
                objc_enumerationMutation(v32);
              }

              v35 = v12;
              v13 = *(*(&v40 + 1) + 8 * v12);
              v36 = 0u;
              v37 = 0u;
              v38 = 0u;
              v39 = 0u;
              v14 = v13;
              v15 = [v14 countByEnumeratingWithState:&v36 objects:v48 count:16];
              if (v15)
              {
                v16 = v15;
                v17 = *v37;
                do
                {
                  v18 = 0;
                  v19 = v9;
                  do
                  {
                    if (*v37 != v17)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v20 = *(*(&v36 + 1) + 8 * v18);
                    [v6 removeAllObjects];
                    v9 = v19 + 1;
                    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
                    [v6 addObject:v21];

                    [v6 addObjectsFromArray:v20];
                    v22 = [v6 componentsJoinedByString:{@", "}];
                    [v7 addObject:v22];

                    ++v18;
                    v19 = v9;
                  }

                  while (v16 != v18);
                  v16 = [v14 countByEnumeratingWithState:&v36 objects:v48 count:16];
                }

                while (v16);
              }

              v12 = v35 + 1;
            }

            while (v35 + 1 != v34);
            v34 = [v32 countByEnumeratingWithState:&v40 objects:v49 count:16];
          }

          while (v34);
        }

        v10 = v31 + 1;
      }

      while (v31 + 1 != v30);
      v30 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v30);
  }

  [v7 addObject:@"Frame End 1"];
  v23 = [v7 componentsJoinedByString:@"\n"];
  [v23 writeToURL:v26 atomically:0 encoding:4 error:0];

  v24 = *MEMORY[0x277D85DE8];
}

void WriteToPlistFromCounterData(void *a1, void *a2)
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v31 = a2;
  v4 = [v3 objectForKeyedSubscript:@"counters"];
  v32 = v3;
  v5 = [v3 objectForKeyedSubscript:@"AverageSamples"];
  v35 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v5;
  v36 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
  if (v36)
  {
    v6 = 0;
    v34 = *v55;
    do
    {
      v7 = 0;
      v8 = v6;
      do
      {
        v37 = v8;
        if (*v55 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v38 = v7;
        v9 = *(*(&v54 + 1) + 8 * v7);
        v41 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v9, "count")}];
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v39 = v9;
        v42 = [v39 countByEnumeratingWithState:&v50 objects:v61 count:16];
        if (v42)
        {
          v10 = 0;
          v40 = *v51;
          do
          {
            v11 = 0;
            v12 = v10;
            do
            {
              v43 = v12;
              if (*v51 != v40)
              {
                objc_enumerationMutation(v39);
              }

              v44 = v11;
              v13 = *(*(&v50 + 1) + 8 * v11);
              v14 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v13, "count")}];
              v46 = 0u;
              v47 = 0u;
              v48 = 0u;
              v49 = 0u;
              v15 = v13;
              v16 = [v15 countByEnumeratingWithState:&v46 objects:v60 count:16];
              if (v16)
              {
                v17 = v16;
                v18 = 0;
                v19 = *v47;
                do
                {
                  v20 = 0;
                  v21 = v18;
                  do
                  {
                    if (*v47 != v19)
                    {
                      objc_enumerationMutation(v15);
                    }

                    v22 = *(*(&v46 + 1) + 8 * v20);
                    v18 = v21 + 1;
                    v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Draw Call %llu", v21];
                    v24 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjects:v22 forKeys:v4];
                    [v14 setObject:v24 forKeyedSubscript:v23];

                    ++v20;
                    v21 = v18;
                  }

                  while (v17 != v20);
                  v17 = [v15 countByEnumeratingWithState:&v46 objects:v60 count:16];
                }

                while (v17);
              }

              v10 = v43 + 1;
              v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Command Encoder %llu", v43];
              [v41 setObject:v14 forKeyedSubscript:v25];

              v11 = v44 + 1;
              v12 = v43 + 1;
            }

            while (v44 + 1 != v42);
            v42 = [v39 countByEnumeratingWithState:&v50 objects:v61 count:16];
          }

          while (v42);
        }

        v6 = v37 + 1;
        v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Command Buffer %llu", v37];
        [v35 setObject:v41 forKeyedSubscript:v26];

        v7 = v38 + 1;
        v8 = v37 + 1;
      }

      while (v38 + 1 != v36);
      v36 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
    }

    while (v36);
  }

  v27 = MEMORY[0x277CCAC58];
  v58 = @"Frame 0";
  v59 = v35;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
  v45 = 0;
  v29 = [v27 dataWithPropertyList:v28 format:100 options:0 error:&v45];

  [v29 writeToURL:v31 atomically:0];
  v30 = *MEMORY[0x277D85DE8];
}

void __destructor_8_s0_S_s8_s16_s40_s48_s56_s64_s80_s88_s96_s104_s112_s120_s128_s136_s144_s152_s160_s168_s176(uint64_t a1)
{
  v2 = *(a1 + 176);
}

void __BatchIdFiterableCounters_block_invoke()
{
  v0 = BatchIdFiterableCounters_filterableCounters;
  BatchIdFiterableCounters_filterableCounters = &unk_2860D5B88;
}

void __GenerateThumbnails_block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = *(a1 + 32);
  v23 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v23)
  {
    v22 = *v34;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v33 + 1) + 8 * i);
        if ([v3 length] >= 9)
        {
          v4 = 8;
          do
          {
            v5 = ([v3 bytes] + v4);
            v6 = v5[1];
            if (v6 == -10236 || v6 == -16236)
            {
              v32 = 0;
              v30 = 0u;
              v31 = 0u;
              memset(v29, 0, sizeof(v29));
              DYTraceDecode_MTLTexture_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage(v29, v5, *v5 - 36, 0);
              v8 = *(a1 + 40);
              v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*&v29[0]];
              v10 = [v8 objectForKeyedSubscript:v9];

              v11 = *(a1 + 48);
              v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(&v30 + 1)];
              v13 = [v11 objectForKeyedSubscript:v12];

              v14 = *(*(a1 + 64) + 8);
              v24[0] = MEMORY[0x277D85DD0];
              v24[1] = 3221225472;
              v24[2] = __GenerateThumbnails_block_invoke_2;
              v24[3] = &unk_2796584B8;
              v25 = *(a1 + 48);
              v15 = *(a1 + 56);
              v27 = v10;
              v28 = v15;
              v26 = v13;
              v16 = v10;
              v17 = v13;
              [v14 addOperationWithBlock:v24];
            }

            v18 = *v5;
            if ((*(v5 + 33) & 0x10) != 0)
            {
              v19 = *v5;
              do
              {
                v5 = (v5 + v18);
                v18 = *v5;
                v19 += v18;
              }

              while ((*(v5 + 33) & 0x20) == 0);
            }

            else
            {
              v19 = *v5;
            }

            v4 += v19;
          }

          while (v4 < [v3 length]);
        }
      }

      v23 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v23);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __GenerateThumbnails_block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) count];
  v2 = *(a1 + 56);
  v3 = *(a1 + 40);
  v5 = [*(a1 + 48) objectAtIndexedSubscript:0];
  v4 = [*(a1 + 48) objectAtIndexedSubscript:1];
  (*(v2 + 16))(v2, v3, v5, v4);
}

void __FetchResourceObject_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __FetchResourceObject_block_invoke_3;
  v2[3] = &unk_279658B28;
  v3[1] = *(a1 + 48);
  objc_copyWeak(v3, (a1 + 40));
  dispatch_async(v1, v2);
  objc_destroyWeak(v3);
}

void __FetchResourceObject_block_invoke_4(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v30 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  [MEMORY[0x277CBEB28] dataWithCapacity:4096];
  v35[0] = &v47;
  v29 = v35[1] = 1024;
  v36 = v29;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained isCancelled];

  if ((v3 & 1) == 0)
  {
    [*(*(a1 + 56) + 312) waitUntilDownloadCapacity];
    v4 = *(*(a1 + 56) + 8);
    [*(v4 + 24) releaseBuffer];
    [*(v4 + 16) waitUntilCapacity];
    v5 = GetAttributes(*(a1 + 56), *(a1 + 32));
    v37 = v35;
    v6 = v30;
    v38 = v6;
    v39 = 0;
    v7 = *(*(a1 + 56) + 8);
    v34 = 0;
    v8 = HarvestResourceObject();
    v9 = 0;
    v10 = v9;
    if ((v8 & 1) == 0)
    {
      (*(*(a1 + 40) + 16))();

      goto LABEL_8;
    }
  }

  v5 = *(*(*(a1 + 56) + 8) + 24);
  v11 = objc_loadWeakRetained((a1 + 48));
  v12 = [v11 isCancelled];

  if (v12)
  {
    (*(*(a1 + 40) + 16))();
    [v5 clearCommandBuffer];
  }

  else
  {
    v13 = objc_loadWeakRetained((a1 + 48));
    v14 = *(a1 + 64);
    v15 = *(a1 + 72);
    v16 = *(a1 + 40);
    objc_initWeak(&location, v13);
    v17 = v30;
    v18 = v29;
    v19 = v16;
    v20 = MEMORY[0x277CCA8C8];
    v37 = MEMORY[0x277D85DD0];
    v38 = 3221225472;
    v39 = __FetchResourceObjectReplyOperation_block_invoke;
    v40 = &unk_2796585A8;
    objc_copyWeak(v44, &location);
    v21 = v17;
    v41 = v21;
    v44[1] = v14;
    v45 = v15;
    v22 = v18;
    v42 = v22;
    v23 = v19;
    v43 = v23;
    v24 = [v20 blockOperationWithBlock:&v37];

    objc_destroyWeak(v44);
    objc_destroyWeak(&location);

    v25 = objc_loadWeakRetained((a1 + 48));
    [v25 addDependency:v24];

    v26 = [v5 commandBuffer];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __FetchResourceObject_block_invoke_29;
    v31[3] = &unk_2796588A0;
    v33 = *(a1 + 56);
    v27 = v24;
    v32 = v27;
    [v26 addCompletedHandler:v31];

    [v5 commitCommandBuffer];
  }

LABEL_8:

  v28 = *MEMORY[0x277D85DE8];
}

void sub_24D95A170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v32 + 56));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

id GetAttributes(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"functionIndex"];
  v5 = [v4 unsignedIntValue];

  if (v5 == -1)
  {
    v7 = [v3 objectForKeyedSubscript:@"object"];
    v8 = [v7 unsignedLongLongValue];

    v6 = [*(a1 + 88) objectAtIndexedSubscript:v8];
  }

  else
  {
    v6 = v3;
  }

  v9 = v6;

  return v9;
}

void __FetchResourceObjectReplyOperation_block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained isCancelled];

  if (v3)
  {
    v4 = *(*(a1 + 48) + 16);
    v5 = *MEMORY[0x277D85DE8];

    v4();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = [*(a1 + 32) allKeys];
    v7 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v27;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v26 + 1) + 8 * i);
          v12 = [*(a1 + 32) objectForKeyedSubscript:v11];
          v13 = PreprocessICBData(v12);
          [*(a1 + 32) setObject:v13 forKeyedSubscript:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v8);
    }

    v14 = g_signpostLog;
    v15 = v14;
    v16 = *(a1 + 64);
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      v17 = *(a1 + 72);
      v18 = [*(a1 + 40) length];
      *buf = 67109376;
      v31 = v17;
      v32 = 2048;
      v33 = v18;
      _os_signpost_emit_with_name_impl(&dword_24D764000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v16, "Replayer-5-network", "%u. sendFbufStreamData %{xcode:size-in-bytes}lu", buf, 0x12u);
    }

    v19 = *(a1 + 48);
    v20 = [*(a1 + 40) copy];
    v21 = [*(a1 + 32) copy];
    (*(v19 + 16))(v19, v20, v21);

    v22 = g_signpostLog;
    v23 = v22;
    v24 = *(a1 + 64);
    if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_24D764000, v23, OS_SIGNPOST_INTERVAL_END, v24, "Replayer-5-network", &unk_24DA93952, buf, 2u);
    }

    v25 = *MEMORY[0x277D85DE8];
  }
}

id PreprocessICBData(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v1 count] != 2)
  {
    v8 = v1;
    goto LABEL_240;
  }

  v2 = [v1 objectAtIndexedSubscript:0];
  if (([v2 conformsToProtocol:&unk_2860F89E8] & 1) == 0)
  {
    v8 = v1;
    goto LABEL_239;
  }

  v3 = [v1 objectAtIndexedSubscript:1];
  v4 = 0x277CBE000uLL;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v3 length] != 48)
  {
    v8 = v1;
    goto LABEL_238;
  }

  v5 = [v3 bytes];
  v6 = v2;
  v197 = 0;
  v195 = 0u;
  v196 = 0u;
  v193 = 0u;
  v194 = 0u;
  v191 = 0u;
  v192 = 0u;
  v189 = 0u;
  v190 = 0u;
  v187 = 0u;
  v188 = 0u;
  v185 = 0u;
  v186 = 0u;
  v184 = 0u;
  GTMTLCreateIndirectCommandEncoder(&v184, v5);
  v7 = *(v5 + 16);
  if ((v7 & 0xFE70) == 0)
  {
    v166 = v6;
    v9 = [v166 size];
    v160 = v197;
    v168 = [MEMORY[0x277CBEB28] dataWithLength:v197 * v9];
    v164 = v9;
    if (!v9)
    {
      goto LABEL_234;
    }

    v152 = v6;
    v154 = v3;
    v155 = v2;
    v157 = 0;
    v10 = 0;
    context = 0;
    v182 = 0;
    v11 = 0;
    v12 = 0;
    v158 = 0;
    v176 = 0;
    v173 = 16;
    v162 = *(&v184 + 1);
    v13 = v160;
    while (1)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = [v166 indirectRenderCommandAtIndex:v12];
      v174 = [v168 mutableBytes];
      v16 = v174 + v13 * v12;
      v17 = [v15 getCommandType];
      *(v16 + v162) = v17;
      if (v17)
      {
        break;
      }

LABEL_196:

      objc_autoreleasePoolPop(v14);
      ++v12;
      v10 += v13;
      v173 += v13;
      if (v12 == v164)
      {
        v3 = v154;
        v2 = v155;
        v4 = 0x277CBE000;
        v6 = v152;
        goto LABEL_234;
      }
    }

    v18 = v17;
    v169 = v14;
    v171 = v11;
    v19 = *(&v196 + 1);
    if (((*(&v196 + 1) - v189) >> 3) >= 1)
    {
      v20 = 0;
      v21 = ((*(&v196 + 1) - v189) >> 3) & 0x7FFFFFFFLL;
      v22 = v174 + v189 + v10;
      do
      {
        *(v22 + 8 * v20) = [v15 getVertexAttributeStrideAtIndex:v20];
        ++v20;
      }

      while (v21 != v20);
    }

    if (v18 <= 7)
    {
      if (v18 != 1)
      {
        v11 = v171;
        if (v18 == 2)
        {
          v26 = [v15 drawIndexedArguments];
          v37 = (v16 + v19);
          *v37 = [v26 primitiveType];
          v37[1] = [v26 indexCount];
          v37[2] = [v26 indexType];
          v37[3] = [v26 indexBufferGPUVirtualAddress];
          v37[4] = [v26 instanceCount];
          v37[5] = [v26 baseVertex];
          v37[6] = [v26 baseInstance];
          if (*(v16 + v19 + 16) == -1)
          {
            v37[2] = *(v157 + 16);
          }

          v157 = v16 + v19;
          goto LABEL_48;
        }

        if (v18 == 4)
        {
          v23 = [v15 getTessellationFactorArguments];
          v24 = v16 + v19;
          *v24 = [v23 virtualAddress];
          *(v24 + 8) = [v23 instanceStride];
          [v23 scale];
          *(v24 + 16) = v25;

          v26 = [v15 drawPatchesArguments];
          *(v24 + 24) = [v26 numberOfPatchControlPoints];
          *(v24 + 32) = [v26 patchStart];
          *(v24 + 40) = [v26 patchCount];
          *(v24 + 48) = [v26 patchIndexBufferVirtualAddress];
          *(v24 + 56) = [v26 instanceCount];
          *(v24 + 64) = [v26 baseInstance];
LABEL_48:
        }

LABEL_49:
        v46 = v184;
        if (!*(v184 + 26))
        {
          v47 = [v15 getPipelineStateUniqueIdentifier];
          v48 = v158;
          if (v47 != -1)
          {
            v48 = v47;
          }

          v158 = v48;
          *(v16 + v185) = v48;
        }

        if (!v46[19])
        {
          v159 = *(&v185 + 1);
          if (v46[38])
          {
            v49 = 0;
            v50 = v174 + *(&v185 + 1) + v10;
            do
            {
              if (objc_opt_respondsToSelector())
              {
                v51 = [v15 getVertexBufferAddressAtIndex:v49];
              }

              else
              {
                v51 = [v15 getVertexBufferAtIndex:v49];
              }

              if (v51 == -1)
              {
                v52 = 0;
              }

              else
              {
                v52 = v51;
              }

              if (v51 == -1 && context)
              {
                v52 = context[v49];
              }

              *(v50 + 8 * v49++) = v52;
            }

            while (v49 < v46[38]);
          }

          v53 = v186;
          if (v46[31])
          {
            v54 = 0;
            v55 = v174 + v186 + v10;
            do
            {
              if (objc_opt_respondsToSelector())
              {
                v56 = [v15 getFragmentBufferAddressAtIndex:v54];
              }

              else
              {
                v56 = [v15 getFragmentBufferAtIndex:v54];
              }

              if (v56 == -1)
              {
                v57 = 0;
              }

              else
              {
                v57 = v56;
              }

              if (v56 == -1 && v182)
              {
                v57 = *(v182 + 8 * v54);
              }

              *(v55 + 8 * v54++) = v57;
            }

            while (v54 < v46[31]);
          }

          v58 = *(&v186 + 1);
          if (v46[35])
          {
            v59 = 0;
            v60 = v174 + *(&v186 + 1) + v10;
            do
            {
              if (objc_opt_respondsToSelector())
              {
                v61 = [v15 getObjectBufferAddressAtIndex:v59];
                if (v61 == -1)
                {
                  v62 = 0;
                }

                else
                {
                  v62 = v61;
                }

                if (v61 == -1 && v176)
                {
                  v62 = *(v176 + 8 * v59);
                }
              }

              else
              {
                if (GTMTLDecodeIndirectRenderCommandBuffer_onceToken != -1)
                {
                  dispatch_once(&GTMTLDecodeIndirectRenderCommandBuffer_onceToken, &__block_literal_global_1606);
                }

                v62 = 0;
              }

              *(v60 + 8 * v59++) = v62;
            }

            while (v59 < v46[35]);
          }

          context = (v16 + v159);
          v182 = v16 + v53;
          v176 = v16 + v58;
          v63 = v16 + v187;
          if (v46[34])
          {
            v64 = 0;
            v65 = v174 + v187 + v10;
            do
            {
              if (objc_opt_respondsToSelector())
              {
                v66 = [v15 getMeshBufferAddressAtIndex:v64];
                if (v66 == -1)
                {
                  v67 = 0;
                }

                else
                {
                  v67 = v66;
                }

                if (v66 == -1 && v171)
                {
                  v67 = *(v171 + 8 * v64);
                }
              }

              else
              {
                if (GTMTLDecodeIndirectRenderCommandBuffer_onceToken_41 != -1)
                {
                  dispatch_once(&GTMTLDecodeIndirectRenderCommandBuffer_onceToken_41, &__block_literal_global_43);
                }

                v67 = 0;
              }

              *(v65 + 8 * v64++) = v67;
            }

            while (v64 < v46[34]);
          }

          v11 = v63;
        }

        if (!v46[23])
        {
          if (objc_opt_respondsToSelector())
          {
            v68 = [v15 getDepthStencilStateUniqueIdentifier];
          }

          else
          {
            if (GTMTLDecodeIndirectRenderCommandBuffer_onceToken_46 != -1)
            {
              dispatch_once(&GTMTLDecodeIndirectRenderCommandBuffer_onceToken_46, &__block_literal_global_48);
            }

            v68 = 0;
          }

          *(v16 + v190) = v68;
        }

        if (!v46[22])
        {
          if (objc_opt_respondsToSelector())
          {
            v69 = [v15 getDepthClipMode];
          }

          else
          {
            if (GTMTLDecodeIndirectRenderCommandBuffer_onceToken_51 != -1)
            {
              dispatch_once(&GTMTLDecodeIndirectRenderCommandBuffer_onceToken_51, &__block_literal_global_53);
            }

            v69 = 0;
          }

          *(v16 + *(&v190 + 1)) = v69;
        }

        if (!v46[20])
        {
          if (objc_opt_respondsToSelector())
          {
            v70 = [v15 getCullMode];
          }

          else
          {
            if (GTMTLDecodeIndirectRenderCommandBuffer_onceToken_56 != -1)
            {
              dispatch_once(&GTMTLDecodeIndirectRenderCommandBuffer_onceToken_56, &__block_literal_global_58);
            }

            v70 = 0;
          }

          *(v16 + v191) = v70;
        }

        if (!v46[25])
        {
          if (objc_opt_respondsToSelector())
          {
            v71 = [v15 getFrontFacingWinding];
          }

          else
          {
            if (GTMTLDecodeIndirectRenderCommandBuffer_onceToken_61 != -1)
            {
              dispatch_once(&GTMTLDecodeIndirectRenderCommandBuffer_onceToken_61, &__block_literal_global_63);
            }

            v71 = 0;
          }

          *(v16 + *(&v191 + 1)) = v71;
        }

        if (!v46[29])
        {
          if (objc_opt_respondsToSelector())
          {
            v72 = [v15 getTriangleFillMode];
          }

          else
          {
            if (GTMTLDecodeIndirectRenderCommandBuffer_onceToken_66 != -1)
            {
              dispatch_once(&GTMTLDecodeIndirectRenderCommandBuffer_onceToken_66, &__block_literal_global_68);
            }

            v72 = 0;
          }

          *(v16 + v192) = v72;
        }

        if (!v46[21])
        {
          if (objc_opt_respondsToSelector())
          {
            v73 = [v15 getDepthBiasInfo];
            [v73 depthBias];
            v75 = v74;
            [v73 slopeScale];
            v77 = v76;
            [v73 clamp];
            v79 = v78;

            v80 = v75 | (v77 << 32);
            v81 = v79;
          }

          else
          {
            if (GTMTLDecodeIndirectRenderCommandBuffer_onceToken_71 != -1)
            {
              dispatch_once(&GTMTLDecodeIndirectRenderCommandBuffer_onceToken_71, &__block_literal_global_73);
            }

            v81 = 0;
            v80 = 0;
          }

          v82 = (v16 + *(&v192 + 1));
          *v82 = v80;
          v82[1] = v81;
        }

        if (!v46[28])
        {
          if (objc_opt_respondsToSelector())
          {
            v83 = [v15 getStencilReferenceValues];
            v84 = [v83 frontReferenceValue];
            v85 = [v83 backReferenceValue];

            v86 = v84 | (v85 << 32);
          }

          else
          {
            if (GTMTLDecodeIndirectRenderCommandBuffer_onceToken_76 != -1)
            {
              dispatch_once(&GTMTLDecodeIndirectRenderCommandBuffer_onceToken_76, &__block_literal_global_78);
            }

            v86 = 0;
          }

          *(v16 + v193) = v86;
        }

        if (!v46[24])
        {
          if (objc_opt_respondsToSelector())
          {
            v87 = [v15 getDepthTestBounds];
            [v87 minBounds];
            v89 = v88;
            [v87 maxBounds];
            v91 = v90;
          }

          else
          {
            if (GTMTLDecodeIndirectRenderCommandBuffer_onceToken_81 != -1)
            {
              dispatch_once(&GTMTLDecodeIndirectRenderCommandBuffer_onceToken_81, &__block_literal_global_83);
            }

            v89 = 0;
            v91 = 0;
          }

          v92 = (v16 + *(&v193 + 1));
          *v92 = v89;
          v92[1] = v91;
        }

        if (!v46[27])
        {
          if (objc_opt_respondsToSelector())
          {
            v93 = [v15 getScissorRects];
            v94 = [v93 count];
            v95 = [v93 scissorRects];
            if (v94)
            {
              v96 = v46[37];
              v97 = (v95 + 16);
              v98 = (v174 + v173 + *(&v194 + 1));
              v99 = v94;
              do
              {
                if (!v96)
                {
                  break;
                }

                *v98 = *v97;
                *(v98 - 1) = *(v97 - 1);
                --v96;
                v97 += 2;
                v98 += 2;
                --v99;
              }

              while (v99);
            }
          }

          else
          {
            if (GTMTLDecodeIndirectRenderCommandBuffer_onceToken_86 != -1)
            {
              dispatch_once(&GTMTLDecodeIndirectRenderCommandBuffer_onceToken_86, &__block_literal_global_88);
            }

            v94 = 0;
          }

          *(v16 + v194) = v94;
        }

        if (!v46[30])
        {
          if (objc_opt_respondsToSelector())
          {
            v100 = [v15 getViewports];
            v101 = [v100 count];
            v102 = [v100 viewports];
            if (v101)
            {
              v103 = v46[39];
              v104 = (v102 + 32);
              v105 = (v174 + v173 + *(&v195 + 1));
              v106 = v101;
              do
              {
                if (!v103)
                {
                  break;
                }

                *v105 = *(v104 - 1);
                *(v105 - 1) = *(v104 - 2);
                v107 = *v104;
                v104 += 3;
                v105[1] = v107;
                --v103;
                v105 += 3;
                --v106;
              }

              while (v106);
            }
          }

          else
          {
            if (GTMTLDecodeIndirectRenderCommandBuffer_onceToken_91 != -1)
            {
              dispatch_once(&GTMTLDecodeIndirectRenderCommandBuffer_onceToken_91, &__block_literal_global_93);
            }

            v101 = 0;
          }

          *(v16 + v195) = v101;
        }

        if (!v46[18])
        {
          if (objc_opt_respondsToSelector())
          {
            v108 = [v15 getBlendColor];
            [v108 red];
            v110 = v109;
            [v108 green];
            v112 = v111;
            [v108 blue];
            v114 = v113;
            [v108 alpha];
            v116 = v115;
          }

          else
          {
            if (GTMTLDecodeIndirectRenderCommandBuffer_onceToken_96 != -1)
            {
              dispatch_once(&GTMTLDecodeIndirectRenderCommandBuffer_onceToken_96, &__block_literal_global_98);
            }

            v110 = 0;
            v112 = 0;
            v114 = 0;
            v116 = 0;
          }

          v117 = (v16 + v196);
          *v117 = v110;
          v117[1] = v112;
          v117[2] = v114;
          v117[3] = v116;
        }

        if (v46[36])
        {
          v118 = 0;
          v119 = v174 + v188 + v10;
          do
          {
            *(v119 + 8 * v118) = [v15 getObjectThreadgroupMemoryLengthAtIndex:v118];
            ++v118;
          }

          while (v118 < v46[36]);
        }

        if (v46[42])
        {
          v120 = *(&v189 + 1);
          *(v16 + v120) = [v15 hasBarrier];
        }

        v13 = v160;
        v14 = v169;
        goto LABEL_196;
      }

      v26 = [v15 drawArguments];
      v33 = (v16 + v19);
      *v33 = [v26 primitiveType];
      v33[1] = [v26 vertexStart];
      v33[2] = [v26 vertexCount];
      v33[3] = [v26 instanceCount];
      v33[4] = [v26 baseInstance];
LABEL_30:
      v11 = v171;
      goto LABEL_48;
    }

    switch(v18)
    {
      case 8:
        v34 = [v15 getTessellationFactorArguments];
        v35 = v16 + v19;
        *v35 = [v34 virtualAddress];
        *(v35 + 8) = [v34 instanceStride];
        [v34 scale];
        *(v35 + 16) = v36;

        v26 = [v15 drawIndexedPatchesArguments];
        *(v35 + 24) = [v26 numberOfPatchControlPoints];
        *(v35 + 32) = [v26 patchStart];
        *(v35 + 40) = [v26 patchCount];
        *(v35 + 48) = [v26 patchIndexBufferVirtualAddress];
        *(v35 + 56) = [v26 controlPointIndexBufferVirtualAddress];
        *(v35 + 64) = [v26 instanceCount];
        *(v35 + 72) = [v26 baseInstance];
        goto LABEL_30;
      case 128:
        v27 = v16 + v19;
        v38 = [v15 drawMeshThreadgroupsArguments];
        v26 = v38;
        if (v38)
        {
          [v38 threadgroupsPerGrid];
          v39 = v199;
          *v27 = *buf;
          *(v27 + 16) = v39;
          [v26 threadsPerObjectThreadgroup];
          v40 = v199;
          *(v27 + 24) = *buf;
          *(v27 + 40) = v40;
          [v26 threadsPerMeshThreadgroup];
          v31 = *buf;
          v32 = v199;
          v11 = v171;
          goto LABEL_47;
        }

        if (s_logUsingOsLog != 1)
        {
          v45 = *MEMORY[0x277D85DF8];
          v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"fail: Unable to decode MTLIndirectCommandTypeDrawMeshThreadgroups"];
          fprintf(v45, "%s\n", [v41 UTF8String]);
          v11 = v171;
          break;
        }

        v41 = gt_tagged_log(3u);
        v11 = v171;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          v42 = v41;
          v43 = "fail: Unable to decode MTLIndirectCommandTypeDrawMeshThreadgroups";
          goto LABEL_43;
        }

        break;
      case 256:
        v27 = v16 + v19;
        v28 = [v15 drawMeshThreadsArguments];
        v26 = v28;
        v11 = v171;
        if (v28)
        {
          [v28 threadsPerGrid];
          v29 = v199;
          *v27 = *buf;
          *(v27 + 16) = v29;
          [v26 threadsPerObjectThreadgroup];
          v30 = v199;
          *(v27 + 24) = *buf;
          *(v27 + 40) = v30;
          [v26 threadsPerMeshThreadgroup];
          v31 = *buf;
          v32 = v199;
LABEL_47:
          *(v27 + 48) = v31;
          *(v27 + 64) = v32;
          goto LABEL_48;
        }

        if (s_logUsingOsLog != 1)
        {
          v44 = *MEMORY[0x277D85DF8];
          v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"fail: Unable to decode MTLIndirectCommandTypeDrawMeshThreads"];
          fprintf(v44, "%s\n", [v41 UTF8String]);
          break;
        }

        v41 = gt_tagged_log(3u);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          v42 = v41;
          v43 = "fail: Unable to decode MTLIndirectCommandTypeDrawMeshThreads";
LABEL_43:
          _os_log_fault_impl(&dword_24D764000, v42, OS_LOG_TYPE_FAULT, v43, buf, 2u);
        }

        break;
      default:
        v11 = v171;
        goto LABEL_49;
    }

    v32 = 0;
    *(v27 + 16) = 0u;
    *(v27 + 32) = 0u;
    v31 = 0uLL;
    *v27 = 0u;
    goto LABEL_47;
  }

  if ((v7 & 0xFFFFFF9F) != 0)
  {

    goto LABEL_236;
  }

  v178 = v6;
  v121 = [v178 size];
  v122 = v197;
  v168 = [MEMORY[0x277CBEB28] dataWithLength:v197 * v121];
  v123 = [v168 mutableBytes];
  v177 = v121;
  if (!v121)
  {
    goto LABEL_234;
  }

  v153 = v6;
  v156 = v2;
  v183 = 0;
  v124 = 0;
  v165 = *(&v196 + 1);
  v167 = 0;
  v170 = (*(&v196 + 1) - v189) >> 3;
  v172 = v122;
  v125 = v184;
  v175 = v123;
  v126 = v123 + v189;
  v161 = *(&v187 + 1);
  v163 = v185;
  v127 = v123 + *(&v187 + 1);
  v128 = v123 + *(&v188 + 1);
  do
  {
    contexta = objc_autoreleasePoolPush();
    v129 = [v178 indirectComputeCommandAtIndex:v124];
    v130 = [v129 getCommandType];
    v179 = v175 + v122 * v124;
    *(v179 + *(&v125 + 1)) = v130;
    if (!v130)
    {
      goto LABEL_232;
    }

    v131 = v130;
    if (v170 >= 1)
    {
      v132 = 0;
      do
      {
        *(v126 + 8 * v132) = [v129 getKernelAttributeStrideAtIndex:v132];
        ++v132;
      }

      while ((v170 & 0x7FFFFFFF) != v132);
    }

    if (v131 == 32)
    {
      v135 = [v129 dispatchThreadgroupsArguments];
      v134 = v135;
      v203 = 0uLL;
      v204 = 0;
      if (v135)
      {
        [v135 threadgroupsPerGrid];
        goto LABEL_210;
      }

LABEL_211:
      v139 = 0;
      v137 = 0;
      v202 = 0;
      v136 = 0uLL;
      v201 = 0u;
      v138 = 0uLL;
      goto LABEL_212;
    }

    if (v131 == 64)
    {
      v133 = [v129 dispatchThreadsArguments];
      v134 = v133;
      v203 = 0uLL;
      v204 = 0;
      if (v133)
      {
        [v133 threadsPerGrid];
LABEL_210:
        v201 = 0uLL;
        v202 = 0;
        [v134 threadsPerThreadgroup];
        v136 = v203;
        v137 = v204;
        v138 = v201;
        v139 = v202;
LABEL_212:
        v140 = v179 + v165;
        *(v140 + 72) = v136;
        *(v140 + 88) = v137;
        *(v140 + 96) = v138;
        *(v140 + 112) = v139;
        v141 = 0uLL;
        v199 = 0u;
        v200 = 0u;
        *buf = 0u;
        if (v129)
        {
          [v129 getStageInRegion];
          v141 = *buf;
          v142 = v199;
          v143 = v200;
        }

        else
        {
          v142 = 0uLL;
          v143 = 0uLL;
        }

        *v140 = v141;
        *(v140 + 16) = v142;
        *(v140 + 32) = v143;
        *(v140 + 64) = [v129 hasBarrier];

        goto LABEL_216;
      }

      goto LABEL_211;
    }

LABEL_216:
    if (!*(v125 + 26))
    {
      v144 = [v129 getPipelineStateUniqueIdentifier];
      v145 = v167;
      if (v144 != -1)
      {
        v145 = v144;
      }

      v167 = v145;
      *(v179 + v163) = v145;
    }

    v122 = v172;
    if (!*(v125 + 19))
    {
      if (*(v125 + 32))
      {
        v146 = 0;
        do
        {
          v147 = [v129 getKernelBufferAtIndex:v146];
          if (v147 == -1)
          {
            if (v183)
            {
              v147 = *(v183 + 8 * v146);
            }

            else
            {
              v147 = 0;
            }
          }

          *(v127 + 8 * v146++) = v147;
        }

        while (v146 < *(v125 + 32));
      }

      v183 = v179 + v161;
      v122 = v172;
    }

    if (*(v125 + 33))
    {
      v148 = 0;
      do
      {
        *(v128 + 8 * v148) = [v129 getThreadgroupMemoryLengthAtIndex:v148];
        ++v148;
      }

      while (v148 < *(v125 + 33));
    }

LABEL_232:

    objc_autoreleasePoolPop(contexta);
    ++v124;
    v126 += v122;
    v127 += v122;
    v128 += v122;
  }

  while (v124 != v177);
  v2 = v156;
  v4 = 0x277CBE000;
  v6 = v153;
LABEL_234:
  v149 = [v168 copy];

  if (v149)
  {
    v150 = v149;
    v8 = v150;
    goto LABEL_237;
  }

LABEL_236:
  v8 = [*(v4 + 2704) data];
  v150 = 0;
LABEL_237:

LABEL_238:
LABEL_239:

LABEL_240:

  return v8;
}

void __FetchResourceObject_block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 304);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v1 removeObject:WeakRetained];
}

void FetchResourceObjectBatch(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = os_signpost_id_make_with_pointer(g_signpostLog, v5);
  v8 = [v5 count];
  v9 = g_signpostLog;
  v10 = v9;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    buf = 67109376;
    v25 = 2048;
    v26 = v8;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v10, OS_SIGNPOST_EVENT, v7, "Replayer-1-serial", "%u. kDYMessageFetchResourceObjectBatch x%lu", &buf, 0x12u);
  }

  v11 = MEMORY[0x277CCA8C8];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __FetchResourceObjectBatch_block_invoke;
  v16[3] = &unk_279658580;
  v19 = v6;
  v20 = v8;
  v21 = a1;
  v22 = v7;
  v23 = 0;
  v17 = v5;
  v18 = 0;
  v12 = v6;
  v13 = v5;
  v14 = [v11 blockOperationWithBlock:v16];
  [v14 setQueuePriority:-4];
  [*(a1 + 280) addOperation:v14];

  v15 = *MEMORY[0x277D85DE8];
}

void __FetchResourceObjectBatch_block_invoke(uint64_t a1)
{
  v96 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:8 * *(a1 + 56)];
  v61 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 56)];
  v58 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:*(a1 + 56)];
  v57 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:*(a1 + 56)];
  v52 = v2;
  v55 = [v2 mutableBytes];
  [*(*(a1 + 64) + 312) waitUntilDownloadCapacity];
  v3 = *(*(a1 + 64) + 8);
  [*(v3 + 24) releaseBuffer];
  [*(v3 + 16) waitUntilCapacity];
  v62 = a1;
  v63 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v88 objects:v95 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v89;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v89 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = GetAttributes(*(v62 + 64), *(*(&v88 + 1) + 8 * i));
        v9 = [v8 objectForKeyedSubscript:@"functionIndex"];
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v9, "unsignedIntValue")}];
        v11 = [v63 objectForKeyedSubscript:v10];
        if (!v11)
        {
          v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v63 setObject:v11 forKeyedSubscript:v10];
        }

        v12 = [v8 mutableCopy];
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
        [v12 setObject:v13 forKeyedSubscript:@"requestStreamIndex"];

        [v11 addObject:v12];
        v14 = [MEMORY[0x277CBEB68] null];
        [v61 addObject:v14];

        ++v5;
      }

      v4 = [obj countByEnumeratingWithState:&v88 objects:v95 count:16];
    }

    while (v4);
  }

  v15 = [v63 allKeys];
  v16 = [v15 sortedArrayUsingSelector:sel_compare_];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*(*(v62 + 64) + 8) + 22560)];
  v18 = [v16 indexOfObject:v17 inSortedRange:0 options:objc_msgSend(v16 usingComparator:{"count"), 1024, &__block_literal_global_6390}];

  v19 = [v16 subarrayWithRange:{0, v18}];
  v20 = [v16 subarrayWithRange:{v18, objc_msgSend(v16, "count") - v18}];
  v21 = [v20 arrayByAddingObjectsFromArray:v19];

  v86[0] = &v94;
  v86[1] = 1024;
  v87 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:4096];
  v54 = *(*(*(v62 + 64) + 8) + 24);
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v53 = v21;
  v22 = [v53 countByEnumeratingWithState:&v82 objects:v93 count:16];
  if (v22)
  {
    v23 = *v83;
    v49 = *v83;
    do
    {
      v24 = 0;
      v50 = v22;
      do
      {
        if (*v83 != v23)
        {
          objc_enumerationMutation(v53);
        }

        v51 = v24;
        v56 = *(*(&v82 + 1) + 8 * v24);
        v25 = [v63 objectForKeyedSubscript:?];
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        obja = v25;
        v26 = [obja countByEnumeratingWithState:&v78 objects:v92 count:16];
        if (v26)
        {
          v27 = *v79;
          while (2)
          {
            for (j = 0; j != v26; ++j)
            {
              if (*v79 != v27)
              {
                objc_enumerationMutation(obja);
              }

              v29 = *(*(&v78 + 1) + 8 * j);
              v30 = objc_autoreleasePoolPush();
              [v87 setLength:0];
              v75 = v86;
              v31 = v58;
              v76 = v31;
              v32 = v57;
              v77 = v32;
              v33 = *(*(v62 + 64) + 8);
              v74 = 0;
              v34 = HarvestResourceObject();
              v35 = 0;
              if ((v34 & 1) == 0 && [obja count] == 1 && (objc_msgSend(v29, "objectForKeyedSubscript:", @"object"), v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "unsignedLongLongValue") == -1026, v36, v37))
              {
                (*(*(v62 + 48) + 16))();
                v38 = 0;
              }

              else
              {
                v39 = [v29 objectForKeyedSubscript:@"requestStreamIndex"];
                v40 = [v39 unsignedIntegerValue];

                v41 = [v87 copy];
                [v61 setObject:v41 atIndexedSubscript:v40];

                *(v55 + 8 * v40) = [v56 unsignedLongLongValue];
                v38 = 1;
              }

              objc_autoreleasePoolPop(v30);
              if (!v38)
              {

                v47 = v53;
                goto LABEL_32;
              }
            }

            v26 = [obja countByEnumeratingWithState:&v78 objects:v92 count:16];
            if (v26)
            {
              continue;
            }

            break;
          }
        }

        v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.gputools.replay", @"FetchResourceObjectBatch"];
        v43 = [v54 commandBuffer];
        [v43 setLabel:v42];

        [v54 commitCommandBuffer];
        v24 = v51 + 1;
        v23 = v49;
      }

      while (v51 + 1 != v50);
      v22 = [v53 countByEnumeratingWithState:&v82 objects:v93 count:16];
    }

    while (v22);
  }

  v44 = [v54 commandBuffer];
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __FetchResourceObjectBatch_block_invoke_3;
  v64[3] = &unk_279658558;
  v71 = *(v62 + 64);
  v73 = *(v62 + 80);
  v72 = *(v62 + 56);
  v65 = v58;
  v66 = v61;
  v67 = v52;
  v68 = v57;
  v69 = *(v62 + 40);
  v70 = *(v62 + 48);
  [v44 addCompletedHandler:v64];

  v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.gputools.replay", @"FetchResourceObjectBatchFinish"];
  v46 = [v54 commandBuffer];
  [v46 setLabel:v45];

  [v54 commitCommandBuffer];
  v47 = v65;
LABEL_32:

  v48 = *MEMORY[0x277D85DE8];
}

void __FetchResourceObjectBatch_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 88);
  v23 = *(*(a1 + 80) + 288);
  v2 = *(a1 + 104);
  v3 = *(a1 + 96);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 32);
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v14 = v8;
  v15 = MEMORY[0x277CCA8C8];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __FetchResourceObjectBatchReplyOperation_block_invoke;
  v24[3] = &unk_2796585D0;
  v33 = v2;
  v31 = v1;
  v32 = v3;
  v25 = v9;
  v26 = v10;
  v27 = v11;
  v28 = v12;
  v29 = v13;
  v30 = v14;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v22 = [v15 blockOperationWithBlock:v24];

  [v23 addOperation:v22];
}

void __FetchResourceObjectBatchReplyOperation_block_invoke(uint64_t a1)
{
  v85 = *MEMORY[0x277D85DE8];
  v2 = g_signpostLog;
  v3 = v2;
  v4 = *(a1 + 80);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v5 = *(a1 + 96);
    v6 = *(a1 + 88);
    *buf = 67109376;
    *v79 = v5;
    *&v79[4] = 2048;
    *&v79[6] = v6;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "Replayer-4-parallel", "%u. kDYMessageFetchResourceObjectBatch x%lu", buf, 0x12u);
  }

  context = objc_autoreleasePoolPush();
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v7 = [*(a1 + 32) allKeys];
  v8 = [v7 countByEnumeratingWithState:&v72 objects:v84 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v73;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v73 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v72 + 1) + 8 * i);
        v13 = [*(a1 + 32) objectForKeyedSubscript:v12];
        v14 = PreprocessICBData(v13);
        [*(a1 + 32) setObject:v14 forKeyedSubscript:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v72 objects:v84 count:16];
    }

    while (v9);
  }

  v15 = g_signpostLog;
  v16 = v15;
  v17 = *(a1 + 80);
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    v18 = *(a1 + 96);
    *buf = 67109120;
    *v79 = v18;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v17, "Replayer-6-high", "%u. archivedDataWithRootObject", buf, 8u);
  }

  v19 = MEMORY[0x277CCAAB0];
  v82[0] = @"stream";
  v82[1] = @"object";
  v20 = *(a1 + 32);
  v83[0] = *(a1 + 40);
  v83[1] = v20;
  v82[2] = @"functionIndex";
  v82[3] = @"requestID";
  v21 = *(a1 + 56);
  v83[2] = *(a1 + 48);
  v83[3] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:4];
  v71 = 0;
  v23 = [v19 archivedDataWithRootObject:v22 requiringSecureCoding:1 error:&v71];
  v68 = v71;

  v24 = g_signpostLog;
  v25 = v24;
  v26 = *(a1 + 80);
  if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    v27 = [v23 length];
    *buf = 134217984;
    *v79 = v27;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v25, OS_SIGNPOST_INTERVAL_END, v26, "Replayer-6-high", "%{xcode:size-in-bytes}lu", buf, 0xCu);
  }

  v28 = *(a1 + 64);
  v29 = [&unk_2860D6240 objectForKeyedSubscript:v28];
  if (v29)
  {
    v30 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:{objc_msgSend(v23, "length")}];
    v31 = g_signpostLog;
    v32 = v31;
    v33 = *(a1 + 80);
    if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
    {
      v34 = *(a1 + 96);
      v35 = [(__CFString *)v28 UTF8String];
      v36 = [v23 length];
      *buf = 67109634;
      *v79 = v34;
      *&v79[4] = 2082;
      *&v79[6] = v35;
      v80 = 2048;
      v81 = v36;
      _os_signpost_emit_with_name_impl(&dword_24D764000, v32, OS_SIGNPOST_INTERVAL_BEGIN, v33, "Replayer-6-high", "%u. %{public}s %{xcode:size-in-bytes}lu", buf, 0x1Cu);
    }

    v37 = compression_encode_buffer([v30 mutableBytes], objc_msgSend(v30, "length"), objc_msgSend(v23, "bytes"), objc_msgSend(v23, "length"), 0, objc_msgSend(v29, "unsignedIntValue"));
    v38 = g_signpostLog;
    v39 = v38;
    v40 = *(a1 + 80);
    if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
    {
      *buf = 134217984;
      *v79 = v37;
      _os_signpost_emit_with_name_impl(&dword_24D764000, v39, OS_SIGNPOST_INTERVAL_END, v40, "Replayer-6-high", "%{xcode:size-in-bytes}zu", buf, 0xCu);
    }

    [v30 setLength:v37];
  }

  else
  {
    v30 = 0;
  }

  if (![v30 length])
  {

    v41 = v23;
    v28 = @"none";
    v30 = v41;
  }

  v42 = g_signpostLog;
  v43 = v42;
  v44 = *(a1 + 80);
  if (v44 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
  {
    v45 = *(a1 + 96);
    *buf = 67109120;
    *v79 = v45;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v43, OS_SIGNPOST_INTERVAL_BEGIN, v44, "Replayer-6-high", "%u. archivedDataWithRootObject", buf, 8u);
  }

  v46 = MEMORY[0x277CCAAB0];
  v77[0] = v28;
  v76[0] = @"compressed";
  v76[1] = @"stream";
  v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v23, "length")}];
  v76[2] = @"object";
  v77[1] = v47;
  v77[2] = v30;
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:3];
  v70 = v68;
  v49 = [v46 archivedDataWithRootObject:v48 requiringSecureCoding:1 error:&v70];
  v50 = v70;

  v51 = g_signpostLog;
  v52 = v51;
  v53 = *(a1 + 80);
  if (v53 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
  {
    v54 = [v23 length];
    *buf = 134217984;
    *v79 = v54;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v52, OS_SIGNPOST_INTERVAL_END, v53, "Replayer-6-high", "%{xcode:size-in-bytes}lu", buf, 0xCu);
  }

  v55 = g_signpostLog;
  v56 = v55;
  v57 = *(a1 + 80);
  if (v57 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v55))
  {
    v58 = [v49 length];
    *buf = 134217984;
    *v79 = v58;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v56, OS_SIGNPOST_INTERVAL_END, v57, "Replayer-4-parallel", "%{xcode:size-in-bytes}lu", buf, 0xCu);
  }

  objc_autoreleasePoolPop(context);
  v59 = g_signpostLog;
  v60 = v59;
  v61 = *(a1 + 80);
  if (v61 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v59))
  {
    v62 = *(a1 + 96);
    v63 = [v49 length];
    *buf = 67109376;
    *v79 = v62;
    *&v79[4] = 2048;
    *&v79[6] = v63;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v60, OS_SIGNPOST_INTERVAL_BEGIN, v61, "Replayer-5-network", "%u. send compressedData %{xcode:size-in-bytes}lu", buf, 0x12u);
  }

  (*(*(a1 + 72) + 16))();
  v64 = g_signpostLog;
  v65 = v64;
  v66 = *(a1 + 80);
  if (v66 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v64))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v65, OS_SIGNPOST_INTERVAL_END, v66, "Replayer-5-network", &unk_24DA93952, buf, 2u);
  }

  v67 = *MEMORY[0x277D85DE8];
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

void GTMTLReplaySupport_init(void *a1)
{
  v56 = DEVICEOBJECT(a1);
  GT_SUPPORT_0 = 0;
  v1 = NSClassFromString(&cfstr_Mtltilerenderp.isa);
  v2 = GT_SUPPORT_0 & 0xFFFFFFFFFFFFFFFELL;
  if (v1)
  {
    ++v2;
  }

  GT_SUPPORT_0 = v2;
  v3 = objc_opt_respondsToSelector();
  v4 = 2;
  if ((v3 & 1) == 0)
  {
    v4 = 0;
  }

  GT_SUPPORT_0 = GT_SUPPORT_0 & 0xFFFFFFFFFFFFFFFDLL | v4;
  v5 = objc_alloc_init(MEMORY[0x277CD6D10]);
  v6 = objc_opt_respondsToSelector();
  v7 = 4;
  if ((v6 & 1) == 0)
  {
    v7 = 0;
  }

  GT_SUPPORT_0 = GT_SUPPORT_0 & 0xFFFFFFFFFFFFFFFBLL | v7;

  v8 = NSClassFromString(&cfstr_Mtlindirectcom_0.isa);
  GT_SUPPORT_0 = GT_SUPPORT_0 & 0xFFFFFFFFFFFFFFF7 | (8 * (v8 != 0));
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CD6E68]);
    v10 = objc_opt_respondsToSelector();
    v11 = 16;
    if ((v10 & 1) == 0)
    {
      v11 = 0;
    }

    GT_SUPPORT_0 = GT_SUPPORT_0 & 0xFFFFFFFFFFFFFFEFLL | v11;
  }

  v12 = objc_alloc_init(MEMORY[0x277CD6F70]);
  if ([v56 supportsTessellation])
  {
    v13 = objc_opt_respondsToSelector();
    v14 = 32;
    if ((v13 & 1) == 0)
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  GT_SUPPORT_0 = GT_SUPPORT_0 & 0xFFFFFFFFFFFFFFDFLL | v14;

  v15 = objc_alloc_init(MEMORY[0x277CD6F48]);
  v16 = objc_opt_respondsToSelector();
  v17 = 64;
  if ((v16 & 1) == 0)
  {
    v17 = 0;
  }

  GT_SUPPORT_0 = GT_SUPPORT_0 & 0xFFFFFFFFFFFFFFBFLL | v17;
  v18 = [v56 supportsLayeredRendering];
  v19 = 128;
  if (!v18)
  {
    v19 = 0;
  }

  GT_SUPPORT_0 = GT_SUPPORT_0 & 0xFFFFFFFFFFFFFF7FLL | v19;

  GT_SUPPORT_0 = GT_SUPPORT_0 & 0xFFFFFFFFFFFFFEFFLL | ((NSClassFromString(&cfstr_Mtlrasterizati_0.isa) != 0) << 8);
  v20 = [v56 supportsImageBlocks];
  v21 = 512;
  if (!v20)
  {
    v21 = 0;
  }

  GT_SUPPORT_0 = GT_SUPPORT_0 & 0xFFFFFFFFFFFFFDFFLL | v21;
  v22 = objc_opt_respondsToSelector();
  v23 = 1024;
  if ((v22 & 1) == 0)
  {
    v23 = 0;
  }

  GT_SUPPORT_0 = GT_SUPPORT_0 & 0xFFFFFFFFFFFFFBFFLL | v23;
  v24 = objc_opt_respondsToSelector();
  v25 = 2048;
  if ((v24 & 1) == 0)
  {
    v25 = 0;
  }

  GT_SUPPORT_0 = GT_SUPPORT_0 & 0xFFFFFFFFFFFFF7FFLL | v25;
  v26 = qword_27F09CF90;
  v27 = objc_alloc_init(MEMORY[0x277CD6F70]);
  v28 = 0;
  if ((v26 & 0x8000) == 0)
  {
    v29 = objc_opt_respondsToSelector();
    v28 = 0x8000;
    if ((v29 & 1) == 0)
    {
      v28 = 0;
    }
  }

  GT_SUPPORT_0 = GT_SUPPORT_0 & 0xFFFFFFFFFFFF7FFFLL | v28;

  v30 = objc_alloc_init(MEMORY[0x277CD6D28]);
  v31 = objc_opt_respondsToSelector();
  v32 = 0x4000;
  if ((v31 & 1) == 0)
  {
    v32 = 0;
  }

  v33 = GT_SUPPORT_0 & 0xFFFFFFFFFFFFBFFFLL | v32;
  GT_SUPPORT_0 = v33;
  if (v26 < 0)
  {
    v34 = 0;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v34 = 0x10000;
    }

    else
    {
      v34 = 0;
    }

    v33 = GT_SUPPORT_0;
  }

  GT_SUPPORT_0 = v33 & 0xFFFFFFFFFFFEFFFFLL | v34;

  v35 = [v56 argumentBuffersSupport] != 0;
  GT_SUPPORT_0 = GT_SUPPORT_0 & 0xFFFFFFFFFFFFDFFFLL | (v35 << 13);
  v36 = objc_alloc_init(MEMORY[0x277CD6F70]);
  v37 = objc_opt_respondsToSelector();
  v38 = 0x20000;
  if ((v37 & 1) == 0)
  {
    v38 = 0;
  }

  GT_SUPPORT_0 = GT_SUPPORT_0 & 0xFFFFFFFFFFFDFFFFLL | v38;

  v39 = objc_opt_respondsToSelector();
  v40 = 0;
  if (v39)
  {
    v41 = [v56 supportsGlobalVariableRelocation];
    v40 = 0x40000;
    if (!v41)
    {
      v40 = 0;
    }
  }

  GT_SUPPORT_0 = GT_SUPPORT_0 & 0xFFFFFFFFFFFBFFFFLL | v40;
  v42 = NSClassFromString(&cfstr_Mtlbufferdescr.isa);
  v43 = DEVICEOBJECT(v56);
  v44 = objc_opt_respondsToSelector();

  if ((v44 & 1) != 0 && v42)
  {
    v45 = DEVICEOBJECT(v56);
    v46 = [v45 resourcePatchingTypeForResourceType:3] != 2;

    v47 = 0x80000;
    if ((v46 & BYTE1(qword_27F09CF90) & 1) == 0)
    {
      v47 = 0;
    }

    GT_SUPPORT_0 = v47 | GT_SUPPORT_0 & 0xFFFFFFFFFFF7FFFFLL;
  }

  v48 = DEVICEOBJECT(v56);
  v49 = objc_opt_respondsToSelector();

  if (v49)
  {
    v50 = DEVICEOBJECT(v56);
    v51 = [v50 resourcePatchingTypeForResourceType:8] == 1;

    GT_SUPPORT_0 = GT_SUPPORT_0 & 0xFFFFFFFFFFEFFFFFLL | (v51 << 20);
  }

  v52 = [v56 supportsFamily:1006];
  v53 = 0x200000;
  if (!v52)
  {
    v53 = 0;
  }

  GT_SUPPORT_0 = GT_SUPPORT_0 & 0xFFFFFFFFFFDFFFFFLL | v53;
  if (objc_opt_respondsToSelector())
  {
    v54 = [v56 supportsMeshShaders];
    v55 = 0x400000;
    if (!v54)
    {
      v55 = 0;
    }

    GT_SUPPORT_0 = GT_SUPPORT_0 & 0xFFFFFFFFFFBFFFFFLL | v55;
  }
}

unsigned int *ExpectedState(uint64_t a1)
{
  v2 = **a1;
  FileWithFilename = GTCaptureArchive_getFileWithFilename(v2, "XPState");
  if (FileWithFilename)
  {
    v4 = [MEMORY[0x277CBEB28] dataWithLength:FileWithFilename[2]];
    GTCaptureArchive_fillBufferCompressedDeflate(v2, *(a1 + 184), FileWithFilename, [v4 mutableBytes], FileWithFilename[2], 0);
    v5 = MEMORY[0x277CCAAC8];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
    v12 = [v5 unarchivedObjectOfClasses:v11 fromData:v4 error:0];

    if (v12)
    {
      FileWithFilename = [v12 objectForKeyedSubscript:@"XPState"];
    }

    else
    {
      FileWithFilename = 0;
    }
  }

  return FileWithFilename;
}

uint64_t GetIOAccelerator()
{
  v0 = *MEMORY[0x277CD28A0];
  v1 = IOServiceMatching("IOAccelerator");
  result = IOServiceGetMatchingService(v0, v1);
  if (!result)
  {
    v3 = IOServiceMatching("IOAcceleratorES");

    return IOServiceGetMatchingService(v0, v3);
  }

  return result;
}

id GetMetalPluginName(io_registry_entry_t a1, _DWORD *a2)
{
  CFProperty = IORegistryEntryCreateCFProperty(a1, @"MetalPluginName", 0, 0);
  v5 = CFProperty;
  if (CFProperty)
  {
    CFRelease(CFProperty);
    if (a2)
    {
      v6 = IORegistryEntryCreateCFProperty(a1, @"GPUConfigurationVariable", 0, 0);
      v7 = v6;
      if (v6)
      {
        v8 = [v6 objectForKeyedSubscript:@"gpu_gen"];
        v9 = v8;
        if (v8)
        {
          v10 = [v8 intValue];
          if (v10 == 15)
          {
            v11 = [v7 objectForKeyedSubscript:@"num_cores"];
            if ([v11 intValue] < 6)
            {
              v10 = 14;
            }

            else
            {
              v10 = 15;
            }
          }

          *a2 = v10 - 10;
        }
      }
    }
  }

  return v5;
}

id GTProfilerConfigurationVariables(io_registry_entry_t a1)
{
  CFProperty = IORegistryEntryCreateCFProperty(a1, @"GPUConfigurationVariable", 0, 0);

  return CFProperty;
}

uint64_t MetalPluginTarget(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && ([v1 hasPrefix:@"AGXMetal"] & 1) != 0)
  {
    v3 = [v2 substringFromIndex:{objc_msgSend(@"AGXMetal", "length")}];
    v4 = v3;
    if (v3)
    {
      if ([v3 hasPrefix:@"S4"] & 1) != 0 || (objc_msgSend(v4, "hasPrefix:", @"S5") & 1) != 0 || (objc_msgSend(v4, "hasPrefix:", @"S6"))
      {
        v5 = 1;
LABEL_18:

        goto LABEL_19;
      }

      if (([v4 hasPrefix:@"G"] & 1) != 0 || (objc_msgSend(v4, "hasPrefix:", @"A") & 1) != 0 || objc_msgSend(v4, "hasPrefix:", @"1"))
      {
        v6 = [v4 UTF8String];
        v7 = 0;
        v8 = [v4 hasPrefix:@"1"] ^ 1;
        v9 = MEMORY[0x277D85DE0];
        while (v8 < [v4 length])
        {
          v10 = *(v6 + v8);
          if (v10 < 0 || (*(v9 + 4 * v10 + 60) & 0x400) == 0)
          {
            break;
          }

          v7 = v10 + 10 * v7 - 48;
          ++v8;
        }

        if (v7 == 15)
        {
          if (v8 < [v4 length] && objc_msgSend(v4, "characterAtIndex:", v8) == 95 || v8 == objc_msgSend(v4, "length"))
          {
            v7 = 14;
          }

          else
          {
            v7 = 15;
          }
        }

        if ([v4 hasPrefix:@"A"])
        {
          v12 = -11;
        }

        else
        {
          v12 = -10;
        }

        v13 = v12 + v7;
        if (v13 <= -2)
        {
          v5 = 0x80000000;
        }

        else
        {
          v5 = v13;
        }

        goto LABEL_18;
      }
    }

    v5 = 0x80000000;
    goto LABEL_18;
  }

  v5 = 0x80000000;
LABEL_19:

  return v5;
}

id ProcessEncoderTimeData(void *a1, void *a2, void *a3, unint64_t a4)
{
  v76 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v50 = v9;
  if (!v7)
  {
    v7 = objc_opt_new();
  }

  v53 = v8;
  if (!v8)
  {
    v53 = objc_opt_new();
  }

  v59 = [v9 objectForKeyedSubscript:@"activePerEncoderDrawCallCount"];
  v57 = [v9 objectForKeyedSubscript:{@"perEncoderKickCount", v7}];
  v10 = [v7 count];
  __p = 0;
  __b = 0;
  v71 = 0;
  v54 = v8;
  if (v10)
  {
    std::vector<double>::__vallocate[abi:nn200100](&__p, v10);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v65 objects:v75 count:16];
  if (v12)
  {
    v13 = 0;
    v14 = *v66;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v66 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v13 += [*(*(&v65 + 1) + 8 * i) unsignedLongLongValue];
      }

      v12 = [v11 countByEnumeratingWithState:&v65 objects:v75 count:16];
    }

    while (v12);
    v16 = v13;
  }

  else
  {
    v16 = 0.0;
  }

  if (a4)
  {
    v17 = a4 / v16;
    v18 = __p;
    v19 = v71;
    v20 = -__p;
    v21 = -__p >> 3;
    if (v71 - __p < -__p)
    {
      if (__p)
      {
        operator delete(__p);
        v19 = 0;
        __p = 0;
        __b = 0;
        v71 = 0;
      }

      if (!(v21 >> 61))
      {
        v22 = v19 >> 2;
        if (v19 >> 2 <= v21)
        {
          v22 = v21;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFF8)
        {
          v23 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v22;
        }

        std::vector<double>::__vallocate[abi:nn200100](&__p, v23);
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    if (__p)
    {
      v24 = 0;
      v25 = vdupq_n_s64(v21 - 1);
      do
      {
        v26 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v24), xmmword_24DA8B910)));
        if (v26.i8[0])
        {
          v18[v24] = v17;
        }

        if (v26.i8[4])
        {
          v18[v24 + 1] = v17;
        }

        v24 += 2;
      }

      while (((v21 + 1) & 0xFFFFFFFFFFFFFFFELL) != v24);
    }

    __b = v18 + v20;
  }

  if (!v57)
  {
    v74[0] = v11;
    v74[1] = v53;
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:2];
    v28 = __p;
    goto LABEL_58;
  }

  v56 = objc_opt_new();
  v51 = objc_opt_new();
  v52 = objc_opt_new();
  v55 = objc_opt_new();
  v27 = 0;
  v58 = 0;
  v28 = __p;
  while (1)
  {
    if ([v59 count] <= v27)
    {
      v72[0] = v55;
      v72[1] = v52;
      v72[2] = v56;
      v72[3] = v51;
      v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:4];
      goto LABEL_57;
    }

    v60 = v27;
    v29 = [v59 objectAtIndexedSubscript:?];
    v30 = [v29 unsignedIntValue];

    v31 = [v57 objectAtIndexedSubscript:v27];
    v32 = [v31 unsignedIntValue];

    if (!v30 && v32 == 1)
    {
      [v55 addObject:&unk_2860D68A8];
      [v56 addObject:&unk_2860D68A8];
      if (v54)
      {
        v33 = [MEMORY[0x277CBEA60] arrayWithObject:&unk_2860D68A8];
        [v52 addObject:v33];

        v34 = [MEMORY[0x277CBEA60] arrayWithObject:&unk_2860D68A8];
        [v51 addObject:v34];
      }

      goto LABEL_53;
    }

    if ([v11 count] <= v58)
    {
      break;
    }

    v35 = [v11 objectAtIndexedSubscript:v58];
    [v56 addObject:v35];

    if (v54)
    {
      v36 = objc_opt_new();
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v37 = [v53 objectAtIndexedSubscript:v58];
      v38 = [v37 countByEnumeratingWithState:&v61 objects:v73 count:16];
      if (v38)
      {
        v39 = *v62;
        do
        {
          for (j = 0; j != v38; ++j)
          {
            if (*v62 != v39)
            {
              objc_enumerationMutation(v37);
            }

            v41 = [*(*(&v61 + 1) + 8 * j) unsignedLongLongValue];
            v42 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:(v28[v58] * v41)];
            [v36 addObject:v42];
          }

          v38 = [v37 countByEnumeratingWithState:&v61 objects:v73 count:16];
        }

        while (v38);
      }

      [v52 addObject:v36];
      v43 = [v53 objectAtIndexedSubscript:v58];
      [v51 addObject:v43];
    }

    v44 = [v11 objectAtIndexedSubscript:v58];
    v45 = [v44 unsignedLongLongValue];

    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:(v28[v58] * v45)];
    [v55 addObject:v46];

    ++v58;
LABEL_53:
    v27 = v60 + 1;
  }

  v47 = 0;
LABEL_57:

LABEL_58:
  if (v28)
  {
    operator delete(v28);
  }

  v48 = *MEMORY[0x277D85DE8];

  return v47;
}

void sub_24D95DFD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id ProcessDerivedCounterDataFromDevice(void *a1, void *a2, void *a3)
{
  v167 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v100 = a2;
  v119 = a3;
  v101 = v5;
  if (!v5)
  {
    goto LABEL_114;
  }

  v98 = objc_opt_new();
  v6 = [v5 objectForKeyedSubscript:@"counters"];
  v130 = [v100 objectForKeyedSubscript:@"NormalizedCounters"];
  if (!v6)
  {
    v5 = 0;
    goto LABEL_113;
  }

  [v6 count];
  v117 = objc_opt_new();
  if (v130)
  {
    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v145 objects:v159 count:16];
    if (v7)
    {
      v8 = *v146;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v146 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v145 + 1) + 8 * i);
          if ([v130 containsObject:v10])
          {
            v11 = [v10 stringByAppendingString:@"_norm"];
            [v117 addObject:v11];
          }
        }

        v7 = [obj countByEnumeratingWithState:&v145 objects:v159 count:16];
      }

      while (v7);
    }
  }

  memset(__p, 0, sizeof(__p));
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  obja = v6;
  v12 = [obja countByEnumeratingWithState:&v140 objects:v158 count:16];
  if (v12)
  {
    v13 = *v141;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v141 != v13)
        {
          objc_enumerationMutation(obja);
        }

        LOBYTE(v164[0]) = [v130 containsObject:*(*(&v140 + 1) + 8 * j)];
        std::vector<BOOL>::push_back(__p, v164);
      }

      v12 = [obja countByEnumeratingWithState:&v140 objects:v158 count:16];
    }

    while (v12);
  }

  v15 = [MEMORY[0x277CBEB98] setWithObjects:{@"MTLStatDataMaster", @"MTLStat_nSec", 0}];
  objb = obja;
  v16 = objc_opt_new();
  v164[0] = MEMORY[0x277D85DD0];
  v164[1] = 3221225472;
  v164[2] = ___ZL28CounterIndicesFromCounterSetP5NSSetP7NSArray_block_invoke;
  v164[3] = &unk_2796585F8;
  v17 = v15;
  v165 = v17;
  v18 = v16;
  v166 = v18;
  [objb enumerateObjectsUsingBlock:v164];
  v19 = v166;
  v99 = v18;

  v20 = [v99 objectForKeyedSubscript:@"MTLStatDataMaster"];
  v133 = CounterIndex(v20);

  v21 = [v99 objectForKeyedSubscript:@"MTLStat_nSec"];
  v131 = CounterIndex(v21);

  v5 = 0;
  if (v133 == -1 || v131 == -1)
  {
    goto LABEL_110;
  }

  v22 = [objb arrayByAddingObjectsFromArray:v117];

  v128 = [v22 count];
  v23 = v22;
  objb = v23;
  v135 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{4 * objc_msgSend(v23, "count")}];
  v155 = 0u;
  v156 = 0u;
  v153 = 0u;
  v154 = 0u;
  v24 = [&unk_2860D5BA0 countByEnumeratingWithState:&v153 objects:v164 count:16];
  if (v24)
  {
    v25 = *v154;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v154 != v25)
        {
          objc_enumerationMutation(&unk_2860D5BA0);
        }

        v27 = *(*(&v153 + 1) + 8 * k);
        v149 = 0u;
        v150 = 0u;
        v151 = 0u;
        v152 = 0u;
        v28 = v23;
        v29 = [v28 countByEnumeratingWithState:&v149 objects:&v160 count:16];
        if (v29)
        {
          v30 = *v150;
          do
          {
            for (m = 0; m != v29; ++m)
            {
              if (*v150 != v30)
              {
                objc_enumerationMutation(v28);
              }

              v32 = [*(*(&v149 + 1) + 8 * m) stringByAppendingString:v27];
              [v135 addObject:v32];
            }

            v29 = [v28 countByEnumeratingWithState:&v149 objects:&v160 count:16];
          }

          while (v29);
        }

        v23 = objb;
      }

      v24 = [&unk_2860D5BA0 countByEnumeratingWithState:&v153 objects:v164 count:16];
    }

    while (v24);
  }

  LODWORD(v153) = 0;
  DWORD1(v153) = v128;
  DWORD2(v153) = 2 * v128;
  HIDWORD(v153) = 3 * v128;
  v94 = [v101 objectForKeyedSubscript:@"AverageSamples"];
  v84 = objc_opt_new();
  v97 = [v100 objectForKeyedSubscript:@"perCommandBufferEncoderCount"];
  v91 = [v100 objectForKeyedSubscript:@"activePerEncoderDrawCallCount"];
  v92 = [v100 objectForKeyedSubscript:@"perEncoderKickCount"];
  v33 = 0;
  v34 = 0;
  v88 = 0;
  v96 = (4 * v128);
  v103 = v133;
  v115 = v131;
  while (1)
  {
    if ([v97 count] <= v33)
    {
      [v98 setObject:v135 forKeyedSubscript:@"counters"];
      [v98 setObject:v84 forKeyedSubscript:@"AverageSamples"];
      v80 = [v101 objectForKeyedSubscript:@"counterLists"];
      v81 = [v80 copy];
      [v98 setObject:v81 forKeyedSubscript:@"counterLists"];

      v5 = v98;
      goto LABEL_109;
    }

    v89 = v33;
    v35 = [v97 objectAtIndexedSubscript:?];
    v36 = [v35 unsignedIntValue];

    if (v36)
    {
      break;
    }

LABEL_104:
    v33 = v89 + 1;
  }

  if ([v94 count] <= v88)
  {
    goto LABEL_108;
  }

  v90 = [v94 objectAtIndexedSubscript:?];
  v86 = objc_opt_new();
  v95 = 0;
  v85 = v34 + v36;
  v87 = 1;
  while (1)
  {
    v112 = v34;
    v37 = [v92 objectAtIndexedSubscript:?];
    v38 = [v37 unsignedIntValue];

    v39 = [v91 objectAtIndexedSubscript:v34];
    v40 = [v39 unsignedIntValue];

    if (v40 || v38 != 1)
    {
      break;
    }

    v106 = objc_opt_new();
LABEL_47:
    v93 = objc_opt_new();
    v105 = [MEMORY[0x277CBEB18] arrayWithCapacity:v96];
    if (v96)
    {
      v41 = v96;
      do
      {
        [v105 addObject:&unk_2860D68F0];
        --v41;
      }

      while (v41);
    }

    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v107 = v106;
    v42 = [v107 countByEnumeratingWithState:&v136 objects:v157 count:16];
    if (v42)
    {
      v110 = 0;
      v102 = *v137;
      do
      {
        v111 = 0;
        v104 = v42;
        do
        {
          if (*v137 != v102)
          {
            objc_enumerationMutation(v107);
          }

          v43 = *(*(&v136 + 1) + 8 * v111);
          v129 = v105;
          v118 = v119;
          v44 = v43;
          v116 = v107;
          v108 = objb;
          v109 = v135;
          v123 = v44;
          v45 = [v44 objectAtIndexedSubscript:0];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          [v123 objectAtIndexedSubscript:v103];
          if (isKindOfClass)
            v46 = {;
            v47 = [v46 objectAtIndexedSubscript:0];
          }

          else
            v47 = {;
            v46 = v47;
          }

          v121 = [v47 unsignedLongLongValue];
          if (isKindOfClass)
          {
          }

          if (v121 < 4)
          {
            v113 = [v123 count];
            v114 = v110;
            if (v119 && [v118 count] > v112)
            {
              v48 = [v118 objectAtIndexedSubscript:?];
              v49 = [v48 count];
              if (v49 <= 1)
              {
                v50 = 1;
              }

              else
              {
                v50 = v49;
              }

              v114 = v110 % v50;
            }

            v51 = 0;
            v120 = 0;
            while (v51 < [v123 count])
            {
              v127 = [v123 objectAtIndexedSubscript:v51];
              if (isKindOfClass)
              {
                v132 = [v127 objectAtIndexedSubscript:0];
              }

              else
              {
                v132 = v127;
              }

              if (v119 && v51 == v115 && [v118 count] > v112)
              {
                v52 = [v118 objectAtIndexedSubscript:?];
                v53 = [v52 objectAtIndexedSubscript:v114];

                v132 = v53;
              }

              v54 = MEMORY[0x277CCABB0];
              v55 = [v132 unsignedLongLongValue];
              v56 = HIDWORD(v153);
              v57 = [v129 objectAtIndexedSubscript:v51 + HIDWORD(v153)];
              v58 = [v54 numberWithUnsignedLongLong:{objc_msgSend(v57, "unsignedLongLongValue") + v55}];
              [v129 setObject:v58 atIndexedSubscript:v51 + v56];

              [v129 setObject:v132 atIndexedSubscript:v51 + *(&v153 + v121)];
              if (isKindOfClass & 1) != 0 && ((*(__p[0] + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v51))
              {
                v59 = [v132 unsignedLongLongValue];
                v60 = [v127 objectAtIndexedSubscript:1];
                v61 = [v60 unsignedLongLongValue];

                if (v61 <= 1)
                {
                  v62 = 1;
                }

                else
                {
                  v62 = v61;
                }

                v63 = v59 * 100.0 / v62;
                v64 = [MEMORY[0x277CCABB0] numberWithDouble:v63];
                [v129 setObject:v64 atIndexedSubscript:v120 + (*(&v153 + v121) + v113)];

                v65 = [v116 count];
                if (v114 || v65 < 2)
                {
                  if ([v116 count] == 1)
                  {
                    v79 = [MEMORY[0x277CCABB0] numberWithDouble:v63];
                    [v129 setObject:v79 atIndexedSubscript:v120 + (HIDWORD(v153) + v113)];
                    goto LABEL_97;
                  }
                }

                else
                {
                  v163 = 0u;
                  v162 = 0u;
                  v161 = 0u;
                  v160 = 0u;
                  v134 = v116;
                  v66 = [v134 countByEnumeratingWithState:&v160 objects:v164 count:16];
                  if (!v66)
                  {

                    v78 = 0.0;
                    goto LABEL_95;
                  }

                  v67 = 0;
                  v68 = 0;
                  v69 = *v161;
                  do
                  {
                    for (n = 0; n != v66; ++n)
                    {
                      if (*v161 != v69)
                      {
                        objc_enumerationMutation(v134);
                      }

                      v71 = *(*(&v160 + 1) + 8 * n);
                      v72 = [v71 objectAtIndexedSubscript:v51];
                      v73 = [v72 objectAtIndexedSubscript:0];
                      v74 = [v73 unsignedLongLongValue];

                      v75 = [v71 objectAtIndexedSubscript:v51];
                      v76 = [v75 objectAtIndexedSubscript:1];
                      v77 = [v76 unsignedLongLongValue];

                      v68 += v74;
                      v67 += v77;
                    }

                    v66 = [v134 countByEnumeratingWithState:&v160 objects:v164 count:16];
                  }

                  while (v66);

                  v78 = v68 * 100.0;
                  if (!v67)
                  {
LABEL_95:
                    v67 = 1;
                  }

                  v79 = [MEMORY[0x277CCABB0] numberWithDouble:v78 / v67];
                  [v129 setObject:v79 atIndexedSubscript:v120 + (HIDWORD(v153) + v113)];
LABEL_97:
                }

                ++v120;
              }

              ++v51;
              continue;
            }
          }

          ++v110;
          ++v111;
        }

        while (v111 != v104);
        v42 = [v116 countByEnumeratingWithState:&v136 objects:v157 count:16];
      }

      while (v42);
    }

    [v93 addObject:v105];
    [v86 addObject:v93];

    v34 = v112 + 1;
    if (v112 + 1 == v85)
    {
      [v84 addObject:v86];

      v88 += (v87 & 1) == 0;
      v34 = v85;
      goto LABEL_104;
    }
  }

  if ([v90 count] > v95)
  {
    v106 = [v90 objectAtIndexedSubscript:?];
    v87 = 0;
    ++v95;
    goto LABEL_47;
  }

LABEL_108:
  v5 = 0;
LABEL_109:

LABEL_110:
  if (__p[0])
  {
    operator delete(__p[0]);
  }

LABEL_113:
LABEL_114:

  v82 = *MEMORY[0x277D85DE8];

  return v5;
}

void sub_24D95F078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, void *a25, void *a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, void *a56)
{
  if (STACK[0x208])
  {
    operator delete(STACK[0x208]);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<BOOL>::push_back(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = std::vector<BOOL>::reserve(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  v8 = *v3;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
  return result;
}

void ___ZL28CounterIndicesFromCounterSetP5NSSetP7NSArray_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
  }
}

uint64_t CounterIndex(NSNumber *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [(NSNumber *)v1 unsignedIntValue];
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
  }

  return v3;
}

BOOL IsGPUPerformanceStateInduced(void *a1)
{
  v6 = 0;
  v4 = 0;
  v5 = 0;
  v1 = [a1 defaultDevice];
  GTAGXPerfStateControl::InitWithDevice(&v4, v1);

  v2 = GTAGXPerfStateControl::IsGPUPerformanceStateInduced(&v4);
  GTAGXPerfStateControl::~GTAGXPerfStateControl(&v4);
  return v2;
}

void sub_24D95F69C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  GTAGXPerfStateControl::~GTAGXPerfStateControl(va);
  _Unwind_Resume(a1);
}

id GTShaderProfilerGenerateComputedKey(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%08u%09u%09llu_%@", a1, a2, a3, v7];

  return v8;
}

void GTMTLReplayClient_init(uint64_t a1, uint64_t a2)
{
  v24 = 0u;
  v29 = 0;
  v23 = 0u;
  obj = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  memset(&v11[8], 0, 64);
  *v11 = a2;
  *&v11[72] = 0xFF0000FF00FF00FFLL;
  v12 = 1082130432;
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:128];
  *&v13 = v3;
  v25 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v26 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v27 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v28 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:16];
  v4 = *&v11[48];
  *(a1 + 32) = *&v11[32];
  *(a1 + 48) = v4;
  *(a1 + 64) = *&v11[64];
  *(a1 + 80) = v12;
  v5 = *&v11[16];
  *a1 = *v11;
  *(a1 + 16) = v5;
  objc_storeStrong((a1 + 88), v3);
  objc_storeStrong((a1 + 96), 0);
  objc_storeStrong((a1 + 104), 0);
  objc_storeStrong((a1 + 112), 0);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  objc_storeStrong((a1 + 136), 0);
  objc_storeStrong((a1 + 144), 0);
  objc_storeStrong((a1 + 152), 0);
  objc_storeStrong((a1 + 160), 0);
  *(a1 + 168) = 0;
  objc_storeStrong((a1 + 176), 0);
  objc_storeStrong((a1 + 184), 0);
  objc_storeStrong((a1 + 192), 0);
  objc_storeStrong((a1 + 200), 0);
  objc_storeStrong((a1 + 208), 0);
  objc_storeStrong((a1 + 216), 0);
  objc_storeStrong((a1 + 224), 0);
  objc_storeStrong((a1 + 232), obj);
  objc_storeStrong((a1 + 240), *(&obj + 1));
  objc_storeStrong((a1 + 248), v23);
  objc_storeStrong((a1 + 256), *(&v23 + 1));
  objc_storeStrong((a1 + 264), v24);
  objc_storeStrong((a1 + 272), *(&v24 + 1));
  objc_storeStrong((a1 + 280), v25);
  objc_storeStrong((a1 + 288), v26);
  objc_storeStrong((a1 + 296), v27);
  objc_storeStrong((a1 + 304), v28);
  objc_storeStrong((a1 + 312), v29);
  v6 = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [v6 objectForInfoDictionaryKey:@"CFBundleName"];

  if (!v7)
  {
    v7 = @"MTLReplayController";
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"gputools.%@.parallelQueue", v7];
  [*(a1 + 288) setName:v8];

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"gputools.%@.serialQueue", v7];
  [*(a1 + 280) setName:v9];

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"gputools.%@.profilingSerialQueue", v7];
  [*(a1 + 296) setName:v10];

  [*(a1 + 280) setMaxConcurrentOperationCount:1];
  [*(a1 + 296) setMaxConcurrentOperationCount:1];

  __destructor_8_s88_S_s96_S_s104_s112_s136_s144_s152_s160_s176_s184_s192_s200_s208_s216_s224_s232_s240_s248_s256_s264_s272_S_s280_s288_s296_s304_s312(v11);
}

void sub_24D95FA9C(_Unwind_Exception *a1)
{
  __destructor_8_s0_S_s8_s16_s40_s48_s56_s64_s80_s88_s96_s104_s112_s120_s128_s136_s144_s152_s160_s168_s176(v4 + 96);

  _Unwind_Resume(a1);
}

void __destructor_8_s88_S_s96_S_s104_s112_s136_s144_s152_s160_s176_s184_s192_s200_s208_s216_s224_s232_s240_s248_s256_s264_s272_S_s280_s288_s296_s304_s312(uint64_t a1)
{
  __destructor_8_s0_S_s8_s16_s40_s48_s56_s64_s80_s88_s96_s104_s112_s120_s128_s136_s144_s152_s160_s168_s176(a1 + 96);
  __destructor_8_s0_s8_s16(a1 + 280);

  v2 = *(a1 + 312);
}

GTMTLReplayService *GTMTLReplayClient_createNewTransport(uint64_t a1, uint64_t a2, uint64_t a3, apr_allocator_t *a4)
{
  if ((qword_27F09CF90 & 0x800000000) != 0)
  {
    v19 = 0;
  }

  else
  {
    newpool = 0;
    apr_pool_create_ex(&newpool, 0, 0, a4);
    GTMTLReplayClient_init(a1, newpool);
    v5 = dispatch_queue_create("com.apple.gputools.replay", 0);
    dispatch_suspend(v5);
    v6 = GTTransportLaunchedProcessConnectionNew();
    v7 = connection;
    connection = v6;

    objc_initWeak(&location, connection);
    v8 = connection;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __GTMTLReplayClient_createNewTransport_block_invoke;
    v21[3] = &unk_279658620;
    objc_copyWeak(&v22, &location);
    [v8 activateWithMessageHandler:v21 andErrorHandler:&__block_literal_global_6755];
    v9 = objc_alloc_init(MEMORY[0x277D0B508]);
    objc_storeStrong((a1 + 312), v9);
    v10 = [objc_alloc(MEMORY[0x277D0B698]) initWithProtocol:&unk_2860F8A48];
    v11 = [connection connection];
    v12 = registerService();

    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x277D0B510]) initWithService:v9 properties:v10];
      [connection registerDispatcher:v13 forPort:{objc_msgSend(v10, "servicePort")}];
      v14 = [[GTMTLReplayService alloc] initWithContext:a1];
      objc_storeStrong(&_observer, v14);
      v15 = [objc_alloc(MEMORY[0x277D0B698]) initWithProtocol:&unk_2860DBC30];
      [v15 setVersion:1];
      v16 = [connection connection];
      v17 = registerService();

      if (v17)
      {
        -[GTMTLReplayService setServicePort:](v14, "setServicePort:", [v15 servicePort]);
        v18 = [objc_alloc(MEMORY[0x277D0B530]) initWithService:v14 properties:v15 bulkDataService:v9 bulkDataServiceProperties:v10];
        [connection registerDispatcher:v18 forPort:{objc_msgSend(v15, "servicePort")}];
        dispatch_resume(v5);
        v19 = v14;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v19;
}

void sub_24D95FE18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void GTMTLReplayClient_destroyNewTransport()
{
  [connection cancel];
  v0 = connection;
  connection = 0;
}

id GTMTLReplayHost_computeDerivedCountersFromData(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  exception[16] = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = &unk_2860D5B70;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [v14 objectForKeyedSubscript:@"DerivedCounterScript"];
  v18 = v15;
  if (v15)
  {
    v157 = v15;
    v167 = v12;
    v172 = [v14 objectForKeyedSubscript:@"DerivedCounterConfigurationVariables"];
    v168 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v9, "count") + objc_msgSend(v13, "count") + objc_msgSend(&unk_2860D5B70, "count")}];
    [v9 count];
    MEMORY[0x28223BE20]();
    v170 = &v155 - v19;
    bzero(&v155 - v19, v20);
    v21 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v9, "count")}];
    if ([v9 count])
    {
      v22 = 0;
      do
      {
        v23 = [v9 objectAtIndexedSubscript:v22];
        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
        [v21 setObject:v24 forKeyedSubscript:v23];

        ++v22;
      }

      while (v22 < [v9 count]);
    }

    v158 = v14;
    v25 = [v9 sortedArrayUsingSelector:sel_compare_];
    v26 = [v25 count];
    v27 = v170;
    if (v26)
    {
      v28 = 0;
      do
      {
        v29 = [v25 objectAtIndexedSubscript:v28];
        v30 = [v21 objectForKeyedSubscript:v29];
        *&v27[4 * v28] = [v30 intValue];

        ++v28;
      }

      while (v28 < [v25 count]);
    }

    v31 = v168;
    v159 = v13;
    [v168 addObjectsFromArray:v13];
    [v31 addObjectsFromArray:v25];
    [v31 addObjectsFromArray:&unk_2860D5B70];

    v166 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v10, "count")}];
    v32 = objc_alloc(MEMORY[0x277CBEB18]);
    v164 = v10;
    v165 = [v32 initWithCapacity:{objc_msgSend(v10, "count")}];
    v33 = objc_alloc_init(MEMORY[0x277CD4660]);
    v34 = objc_alloc(MEMORY[0x277CD4640]);
    v155 = v33;
    v35 = [v34 initWithVirtualMachine:v33];
    [v35 setObject:&__block_literal_global_6776 forKeyedSubscript:@"ErrorLog"];
    [v35 setExceptionHandler:&__block_literal_global_19];
    v36 = [v35 evaluateScript:v157];
    v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v185 = 0u;
    v186 = 0u;
    v187 = 0u;
    v188 = 0u;
    v156 = v9;
    v38 = v9;
    v39 = [v38 countByEnumeratingWithState:&v185 objects:v202 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v186;
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v186 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"var %@ = 0", *(*(&v185 + 1) + 8 * i)];;
          [v37 addObject:v43];
        }

        v40 = [v38 countByEnumeratingWithState:&v185 objects:v202 count:16];
      }

      while (v40);
    }

    [v37 addObject:@"function _SetRawCounterValues() {"];
    if ([v38 count])
    {
      v44 = 0;
      do
      {
        v45 = MEMORY[0x277CCACA8];
        v46 = [v38 objectAtIndexedSubscript:v44];
        v47 = [v45 stringWithFormat:@"\t%@ = _RawCounterValues[%lu]", v46, v44];;
        [v37 addObject:v47];

        ++v44;
      }

      while (v44 < [v38 count]);
    }

    v163 = v38;
    [v37 addObject:@"}"];
    v183 = 0u;
    v184 = 0u;
    v181 = 0u;
    v182 = 0u;
    v48 = &unk_2860D5B70;
    v49 = [&unk_2860D5B70 countByEnumeratingWithState:&v181 objects:v201 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v182;
      do
      {
        for (j = 0; j != v50; ++j)
        {
          if (*v182 != v51)
          {
            objc_enumerationMutation(&unk_2860D5B70);
          }

          v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"var %@ = 0", *(*(&v181 + 1) + 8 * j)];;
          [v37 addObject:v53];
        }

        v50 = [&unk_2860D5B70 countByEnumeratingWithState:&v181 objects:v201 count:16];
      }

      while (v50);
    }

    [v37 addObject:@"function _SetSoftwareCounterValues() {"];
    if ([&unk_2860D5B70 count])
    {
      v54 = 0;
      do
      {
        v55 = MEMORY[0x277CCACA8];
        v56 = [&unk_2860D5B70 objectAtIndexedSubscript:v54];
        v57 = [v55 stringWithFormat:@"\t%@ = _SoftwareCounterValues[%lu]", v56, v54];;
        [v37 addObject:v57];

        ++v54;
      }

      while (v54 < [&unk_2860D5B70 count]);
    }

    [v37 addObject:@"}"];
    [v37 addObject:@"var _DerivedCounterResult = [];"];
    [v37 addObject:@"function _EvaluteDerivedCounters() {"];
    [v37 addObject:@"\t_DerivedCounterResult = [];"];
    v179 = 0u;
    v180 = 0u;
    v177 = 0u;
    v178 = 0u;
    v58 = v159;
    v59 = [v58 countByEnumeratingWithState:&v177 objects:v200 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v178;
      do
      {
        for (k = 0; k != v60; ++k)
        {
          if (*v178 != v61)
          {
            objc_enumerationMutation(v58);
          }

          v63 = [MEMORY[0x277CCACA8] stringWithFormat:@"\ttry { value = %@() if (!isFinite(value)) { value = 0; } _DerivedCounterResult.push(value); } catch(err) { ErrorLog(err); _DerivedCounterResult.push(0); }", *(*(&v177 + 1) + 8 * k)];;
          [v37 addObject:v63];
        }

        v60 = [v58 countByEnumeratingWithState:&v177 objects:v200 count:16];
      }

      while (v60);
    }

    v169 = v58;

    [v37 addObject:@"}"];
    v64 = [v37 componentsJoinedByString:@"\n"];
    v65 = [v35 evaluateScript:v64];

    v175 = 0u;
    v176 = 0u;
    v173 = 0u;
    v174 = 0u;
    v66 = v172;
    v67 = [v66 countByEnumeratingWithState:&v173 objects:v199 count:16];
    v68 = 0x277CD4000uLL;
    v69 = v167;
    v172 = v66;
    if (v67)
    {
      v70 = v67;
      v71 = *v174;
      do
      {
        for (m = 0; m != v70; ++m)
        {
          if (*v174 != v71)
          {
            objc_enumerationMutation(v66);
          }

          v73 = *(*(&v173 + 1) + 8 * m);
          v74 = [v66 objectForKeyedSubscript:v73];
          v75 = [MEMORY[0x277CD4658] valueWithObject:v74 inContext:v35];
          [v35 setObject:v75 forKeyedSubscript:v73];

          v66 = v172;
        }

        v70 = [v172 countByEnumeratingWithState:&v173 objects:v199 count:16];
      }

      while (v70);
    }

    exception[0] = 0;
    v76 = [v35 JSGlobalContextRef];
    v77 = [v35 objectForKeyedSubscript:@"_SetSoftwareCounterValues"];
    v160 = JSValueToObject(v76, [v77 JSValueRef], exception);

    v78 = [v35 JSGlobalContextRef];
    v79 = [v35 objectForKeyedSubscript:@"_SetRawCounterValues"];
    v162 = JSValueToObject(v78, [v79 JSValueRef], exception);

    v80 = [v35 JSGlobalContextRef];
    v81 = [v35 objectForKeyedSubscript:@"_EvaluteDerivedCounters"];
    v161 = JSValueToObject(v80, [v81 JSValueRef], exception);

    v82 = [v35 JSGlobalContextRef];
    LogException(v82, exception[0]);
    v83 = v164;
    v84 = [v164 count];
    v85 = v169;
    if (v84)
    {
      v86 = 0;
      do
      {
        v171 = objc_autoreleasePoolPush();
        if ([v69 count])
        {
          v87 = *(v68 + 1624);
          v88 = [v69 objectAtIndexedSubscript:v86];
          v89 = [v87 valueWithObject:v88 inContext:v35];
          [v35 setObject:v89 forKeyedSubscript:@"_SoftwareCounterValues"];

          v90 = [v35 JSGlobalContextRef];
          JSObjectCallAsFunction(v90, v160, 0, 0, 0, exception);
          v91 = [v35 JSGlobalContextRef];
          LogException(v91, exception[0]);
        }

        v92 = *(v68 + 1624);
        v93 = [v83 objectAtIndexedSubscript:v86];
        v94 = [v92 valueWithObject:v93 inContext:v35];
        [v35 setObject:v94 forKeyedSubscript:@"_RawCounterValues"];

        v95 = [v35 JSGlobalContextRef];
        JSObjectCallAsFunction(v95, v162, 0, 0, 0, exception);
        v96 = [v35 JSGlobalContextRef];
        LogException(v96, exception[0]);
        v97 = [v35 JSGlobalContextRef];
        JSObjectCallAsFunction(v97, v161, 0, 0, 0, exception);
        v98 = [v35 objectForKeyedSubscript:@"_DerivedCounterResult"];
        v99 = [v98 toArray];

        v100 = [v35 JSGlobalContextRef];
        LogException(v100, exception[0]);
        [v166 addObject:v99];
        v101 = [v99 count];
        if (v101 != [v85 count])
        {
          if (g_runningInCI)
          {
            v102 = "#CI_ERROR# ";
          }

          else
          {
            v102 = "";
          }

          [v99 count];
          [v85 count];
          GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/launcher/DYJavaScriptHelper.m", "GTMTLReplayHost_computeDerivedCountersFromData", 190, 2, "%s%s %u: derivedCounterResult contains %lu results, %lu expected (derivedCounterNames)\n", v103, v104, v102);
        }

        v105 = [v99 mutableCopy];
        v106 = v86;
        v107 = [v83 objectAtIndexedSubscript:v86];
        v108 = v163;
        v109 = [v163 count];
        v110 = v170;
        if (v109)
        {
          v111 = 0;
          do
          {
            v112 = [v107 objectAtIndexedSubscript:*&v110[4 * v111]];
            [v105 addObject:v112];

            ++v111;
          }

          while (v111 < [v108 count]);
        }

        v69 = v167;
        v113 = [v167 objectAtIndexedSubscript:v106];
        [v105 addObjectsFromArray:v113];

        [v165 addObject:v105];
        v114 = [v105 count];
        if (v114 != [v168 count])
        {
          if (g_runningInCI)
          {
            v115 = "#CI_ERROR# ";
          }

          else
          {
            v115 = "";
          }

          [v99 count];
          [v168 count];
          v154 = v115;
          v69 = v167;
          GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/launcher/DYJavaScriptHelper.m", "GTMTLReplayHost_computeDerivedCountersFromData", 208, 2, "%s%s %u: resultsForAnalysis contains %lu results, %lu expected (counterNamesForAnalysis)\n", v116, v117, v154);
        }

        objc_autoreleasePoolPop(v171);
        v86 = v106 + 1;
        v83 = v164;
        v118 = [v164 count];
        v85 = v169;
        v68 = 0x277CD4000;
      }

      while (v86 < v118);
    }

    if (![v166 count])
    {
      v121 = "";
      if (g_runningInCI)
      {
        v121 = "#CI_ERROR# ";
      }

      GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/launcher/DYJavaScriptHelper.m", "GTMTLReplayHost_computeDerivedCountersFromData", 216, 2, "%s%s %u: derivedDataResults contains no results\n", v119, v120, v121);
    }

    v122 = [v165 count];
    v125 = v158;
    if (!v122)
    {
      v126 = "";
      if (g_runningInCI)
      {
        v126 = "#CI_ERROR# ";
      }

      GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/launcher/DYJavaScriptHelper.m", "GTMTLReplayHost_computeDerivedCountersFromData", 221, 2, "%s%s %u: derivedDataResultsForBottleNeckAnalysis contains no results\n", v123, v124, v126);
    }

    v163 = [v125 objectForKeyedSubscript:@"DerivedCounterDictionary"];
    v171 = [v163 objectForKeyedSubscript:@"DerivedCounters"];
    v127 = v85;
    v170 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
    v128 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
    v129 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
    v189 = 0u;
    v190 = 0u;
    v191 = 0u;
    v192 = 0u;
    v169 = v127;
    v130 = [v169 countByEnumeratingWithState:&v189 objects:exception count:16];
    if (v130)
    {
      v131 = v130;
      v132 = *v190;
      do
      {
        for (n = 0; n != v131; ++n)
        {
          if (*v190 != v132)
          {
            objc_enumerationMutation(v169);
          }

          v134 = [v171 objectForKeyedSubscript:*(*(&v189 + 1) + 8 * n)];
          v135 = [v134 objectForKeyedSubscript:@"name"];
          v136 = [v134 objectForKeyedSubscript:@"description"];
          v137 = [v134 objectForKeyedSubscript:@"type"];
          if (v135)
          {
            v138 = v135;
          }

          else
          {
            v138 = @"Unknown";
          }

          [v170 addObject:v138];
          if (v136)
          {
            v139 = v136;
          }

          else
          {
            v139 = &stru_2860BD438;
          }

          [v128 addObject:v139];
          if (v137)
          {
            v140 = v137;
          }

          else
          {
            v140 = @"Value";
          }

          [v129 addObject:v140];
        }

        v131 = [v169 countByEnumeratingWithState:&v189 objects:exception count:16];
      }

      while (v131);
    }

    v141 = v169;

    v142 = v170;
    v203[0] = v141;
    v203[1] = v170;
    v203[2] = v128;
    v203[3] = v129;
    v143 = [MEMORY[0x277CBEA60] arrayWithObjects:v203 count:4];

    v14 = v158;
    v144 = [v158 objectForKeyedSubscript:@"DerivedCounterAnalysis"];
    v145 = [v163 objectForKeyedSubscript:@"Bottlenecks"];
    if (!v145)
    {
      v145 = objc_opt_new();
    }

    v197[0] = @"derivedCounterDataForBottleneckAnalysis";
    v195[0] = @"AverageSamples";
    v195[1] = @"counters";
    v196[0] = v165;
    v196[1] = v168;
    v146 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v196 forKeys:v195 count:2];
    v198[0] = v146;
    v197[1] = @"derivedCounterData";
    v193[0] = @"AverageSamples";
    v193[1] = @"counters";
    v194[0] = v166;
    v194[1] = v143;
    v147 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v194 forKeys:v193 count:2];
    v198[1] = v147;
    v198[2] = v144;
    v197[2] = @"DerivedCounterAnalysis";
    v197[3] = @"DerivedCounterAnalysisFunctions";
    v198[3] = v145;
    v148 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v198 forKeys:v197 count:4];

    v10 = v164;
    v149 = v172;
    if (v172)
    {
      v150 = [v148 mutableCopy];
      [v150 setObject:v149 forKeyedSubscript:@"DerivedCounterConfigurationVariables"];

      v148 = v150;
    }

    v9 = v156;
    v12 = v167;

    v13 = v159;
    v18 = v157;
  }

  else
  {
    if (g_runningInCI)
    {
      v151 = "#CI_ERROR# ";
    }

    else
    {
      v151 = "";
    }

    GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/launcher/DYJavaScriptHelper.m", "GTMTLReplayHost_computeDerivedCountersFromData", 59, 2, "%s%s %u: derivedScriptCode missing\n", v16, v17, v151);
    v148 = MEMORY[0x277CBEC10];
  }

  v152 = *MEMORY[0x277D85DE8];

  return v148;
}

void LogException(const OpaqueJSContext *a1, const OpaqueJSValue *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = JSValueToStringCopy(a1, a2, 0);
    MaximumUTF8CStringSize = JSStringGetMaximumUTF8CStringSize(v2);
    MEMORY[0x28223BE20]();
    v5 = v8 - v4;
    bzero(v8 - v4, MaximumUTF8CStringSize);
    JSStringGetUTF8CString(v2, v5, MaximumUTF8CStringSize);
    JSStringRelease(v2);
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v5];
    NSLog(&cfstr_Dyjsscripting_0.isa, v6);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_24D96151C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose((v21 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_24D961758(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_24D961994(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_24D961CB8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_24D961FC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id GTMTLReplayClient_loadDerivedCounterInfo(void *a1, void *a2)
{
  v21[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277CBEBC0];
  v5 = a1;
  v6 = [v4 alloc];
  v7 = [v5 stringByAppendingString:@"-counters.plist"];

  v8 = [v6 initFileURLWithPath:v7 isDirectory:0];
  v9 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:v8 error:0];
  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x277CCACA8]);
    v11 = [v3 stringByAppendingString:@"-derived.js"];
    v12 = [v10 initWithContentsOfFile:v11 encoding:4 error:0];

    v13 = objc_alloc(MEMORY[0x277CCACA8]);
    v14 = [v3 stringByAppendingString:@"-analysis.js"];
    v15 = [v13 initWithContentsOfFile:v14 encoding:4 error:0];

    v20[0] = @"DerivedCounterDictionary";
    v20[1] = @"DerivedCounterScript";
    v21[0] = v9;
    v21[1] = v12;
    v20[2] = @"DerivedCounterAnalysis";
    v16 = &stru_2860BD438;
    if (v15)
    {
      v16 = v15;
    }

    v21[2] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

id GTMTLReplayClient_mergeDerivedCounterInfo(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 mutableCopy];
  v6 = [v4 objectForKeyedSubscript:@"DerivedCounterDictionary"];
  if (v6)
  {
    v7 = [v3 objectForKeyedSubscript:@"DerivedCounterDictionary"];
    verifyCounterDictionary(v7);
    v8 = MergeDictionaries(v7, v6);
    [v5 setObject:v8 forKeyedSubscript:@"DerivedCounterDictionary"];
  }

  v9 = [v4 objectForKeyedSubscript:@"DerivedCounterScript"];
  if (v9)
  {
    v10 = [v3 objectForKeyedSubscript:@"DerivedCounterScript"];
    v11 = [v10 stringByAppendingString:v9];
    [v5 setObject:v11 forKeyedSubscript:@"DerivedCounterScript"];
  }

  v12 = [v4 objectForKeyedSubscript:@"DerivedCounterAnalysis"];
  if (v12)
  {
    v13 = [v3 objectForKeyedSubscript:@"DerivedCounterAnalysis"];
    v14 = [v13 stringByAppendingString:v12];
    [v5 setObject:v14 forKeyedSubscript:@"DerivedCounterAnalysis"];
  }

  v15 = [v5 copy];

  return v15;
}

uint64_t verifyCounterDictionary(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"DerivedCounters"];

  if (!v2)
  {
    if (g_runningInCI)
    {
      v10 = "#CI_ERROR# ";
    }

    else
    {
      v10 = "";
    }

    GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_frameProfiler.m", "verifyCounterDictionary", 967, 1, "%s%s %u: %@ missing in plist\n", v3, v4, v10);
    goto LABEL_12;
  }

  v5 = [v1 objectForKeyedSubscript:@"DerivedCounters"];
  v6 = [v5 count];

  if (!v6)
  {
    if (g_runningInCI)
    {
      v11 = "#CI_ERROR# ";
    }

    else
    {
      v11 = "";
    }

    GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_frameProfiler.m", "verifyCounterDictionary", 972, 1, "%s%s %u: No derived counters in plist\n", v7, v8, v11);
LABEL_12:
    v9 = 0;
    goto LABEL_13;
  }

  v9 = 1;
LABEL_13:

  return v9;
}

id MergeDictionaries(void *a1, void *a2)
{
  v3 = a1;
  v4 = MEMORY[0x277CBEB38];
  v5 = a2;
  v6 = [[v4 alloc] initWithDictionary:v3];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __MergeDictionaries_block_invoke;
  v14 = &unk_279658828;
  v15 = v3;
  v16 = v6;
  v7 = v6;
  v8 = v3;
  [v5 enumerateKeysAndObjectsUsingBlock:&v11];

  v9 = [v7 copy];

  return v9;
}

void __MergeDictionaries_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v9];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = MergeDictionaries(v6, v5);
LABEL_6:
      v8 = v7;
      [*(a1 + 40) setObject:v7 forKeyedSubscript:v9];

      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 arrayByAddingObjectsFromArray:v5];
      goto LABEL_6;
    }
  }

  [*(a1 + 40) setObject:v5 forKeyedSubscript:v9];
LABEL_8:
}

void __debugDumpCounterDictionary_block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (g_runningInCI == 1)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = a2;
    v7 = [a3 objectForKeyedSubscript:@"counters"];
    v8 = [v7 componentsJoinedByString:{@", "}];
    v9 = [v5 stringWithFormat:@"Counter %@:%@", v6, v8];

    v12 = [v9 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

    v10 = *MEMORY[0x277D85E08];
    v11 = v12;
    fprintf(v10, "#CI-INFO# %s\n", [v12 UTF8String]);
  }
}

id DYMTLReplayFrameProfiler_loadAnalysis(void *a1)
{
  v141 = *MEMORY[0x277D85DE8];
  v111 = DEVICEOBJECT(a1);
  v1 = [v111 acceleratorPort];
  CFProperty = IORegistryEntryCreateCFProperty(v1, @"GPUConfigurationVariable", 0, 0);
  v117 = CFProperty;
  if (g_runningInCI == 1)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Configuration Variables=%@", CFProperty];
    v4 = [v3 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

    fprintf(*MEMORY[0x277D85E08], "#CI-INFO# %s\n", [v4 UTF8String]);
  }

  v5 = IORegistryEntryCreateCFProperty(v1, @"MetalStatisticsName", 0, 0);
  if (v5)
  {
    v6 = v5;
    v7 = CFGetTypeID(v5);
    if (v7 == CFStringGetTypeID())
    {
      v8 = v6;
      v9 = v8;
    }

    else
    {
      if (v7 != CFArrayGetTypeID())
      {
        goto LABEL_14;
      }

      v21 = MEMORY[0x277CCAC30];
      v22 = v6;
      v23 = [v21 predicateWithFormat:@"NOT (self BEGINSWITH 'autocorr')"];
      v24 = [v22 filteredArrayUsingPredicate:v23];

      v9 = [v24 firstObject];

      CFProperty = v117;
      if (!v9)
      {
LABEL_14:
        if (g_runningInCI)
        {
          v25 = "#CI_ERROR# ";
        }

        else
        {
          v25 = "";
        }

        GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_frameProfiler.m", "DYMTLReplayFrameProfiler_loadAnalysis", 1003, 1, "%s%s %u: Failed to determine statisticsName\n", v19, v20, v25);
        CFRelease(v6);
        v18 = MEMORY[0x277CBEC10];
        goto LABEL_107;
      }

      v8 = v22;
    }

    CFRelease(v8);
LABEL_32:
    v114 = v9;
    if (g_runningInCI == 1)
    {
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"statisticsName=%@", v9];
      v32 = [v31 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

      fprintf(*MEMORY[0x277D85E08], "#CI-INFO# %s\n", [v32 UTF8String]);
    }

    v118 = IORegistryEntryCreateCFProperty(v1, @"MetalPluginName", 0, 0);
    v33 = [v118 containsString:@"AGXMetal"];
    v34 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
    [v34 addObject:v9];
    if (v33)
    {
      v35 = [v9 rangeOfString:@"AGXMetalStatistics"];
      if ([v9 rangeOfString:@"AGXMetalStatisticsExternal"] == 0x7FFFFFFFFFFFFFFFLL && v35 < objc_msgSend(v9, "length"))
      {
        v36 = [v9 substringFromIndex:{objc_msgSend(@"AGXMetalStatistics", "length")}];
        v37 = [@"AGXMetalStatisticsExternal" stringByAppendingString:v36];

        [v34 addObject:v37];
      }
    }

    v38 = IORegistryEntryCreateCFProperty(v1, @"MetalStatisticsScriptName", 0, 0);
    v39 = IORegistryEntryCreateCFProperty(v1, @"AGXInternalPerfCounterResourcesPath", 0, 0);
    if (v39)
    {
      v40 = v39;
      v41 = [v39 stringByAppendingString:@"/%@/%@"];
    }

    else
    {
      v41 = @"/AppleInternal/Library/AGX/Performance/%@/%@";
    }

    v107 = v41;
    v139[0] = v41;
    v139[1] = @"/System/Library/Extensions/%@.bundle/%@";
    v139[2] = @"/System/Library/Extensions/%@.bundle/Contents/Resources/%@";
    v112 = [MEMORY[0x277CBEA60] arrayWithObjects:v139 count:3];
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    obj = v34;
    v109 = [obj countByEnumeratingWithState:&v123 objects:v138 count:16];
    if (v109)
    {
      v42 = *v124;
      v105 = *v124;
      do
      {
        v43 = 0;
        do
        {
          if (*v124 != v42)
          {
            v44 = v43;
            objc_enumerationMutation(obj);
            v43 = v44;
          }

          v106 = v43;
          v45 = *(*(&v123 + 1) + 8 * v43);
          v119 = 0u;
          v120 = 0u;
          v121 = 0u;
          v122 = 0u;
          v46 = v112;
          v47 = [v46 countByEnumeratingWithState:&v119 objects:v137 count:16];
          if (v47)
          {
            v48 = *v120;
            while (2)
            {
              for (i = 0; i != v47; ++i)
              {
                if (*v120 != v48)
                {
                  objc_enumerationMutation(v46);
                }

                v50 = *(*(&v119 + 1) + 8 * i);
                v51 = [MEMORY[0x277CCACA8] stringWithFormat:v50, v118, v45];
                v52 = v51;
                if (v38)
                {
                  v53 = [MEMORY[0x277CCACA8] stringWithFormat:v50, v118, v38];
                }

                else
                {
                  v53 = v51;
                }

                v54 = v53;
                if (g_runningInCI == 1)
                {
                  v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"Checking with plistPrefix=%@, scriptPrefix=%@", v52, v53];
                  v56 = [v55 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

                  v57 = *MEMORY[0x277D85E08];
                  v58 = v56;
                  fprintf(v57, "#CI-INFO# %s\n", [v56 UTF8String]);
                }

                v59 = GTMTLReplayClient_loadDerivedCounterInfo(v52, v54);

                if (v59)
                {

                  goto LABEL_64;
                }
              }

              v47 = [v46 countByEnumeratingWithState:&v119 objects:v137 count:16];
              if (v47)
              {
                continue;
              }

              break;
            }
          }

          v42 = v105;
          v43 = v106 + 1;
        }

        while (v106 + 1 != v109);
        v109 = [obj countByEnumeratingWithState:&v123 objects:v138 count:16];
        v59 = 0;
        v42 = v105;
      }

      while (v109);
    }

    else
    {
      v59 = 0;
    }

LABEL_64:

    if (v38)
    {
      CFRelease(v38);
    }

    if (v59)
    {
      v62 = [v59 objectForKeyedSubscript:@"DerivedCounterScript"];
      v63 = [v62 length] == 0;

      if (v63)
      {
        if (g_runningInCI)
        {
          v102 = "#CI_ERROR# ";
        }

        else
        {
          v102 = "";
        }

        GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_frameProfiler.m", "DYMTLReplayFrameProfiler_loadAnalysis", 1131, 1, "%s%s %u: Derived counter script missing\n", v64, v65, v102);
      }

      else
      {
        v66 = [v59 objectForKeyedSubscript:@"DerivedCounterDictionary"];
        v67 = v66;
        if (g_runningInCI == 1)
        {
          v68 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d counters found", objc_msgSend(v66, "count")];
          v69 = [v68 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

          v70 = *MEMORY[0x277D85E08];
          v71 = v69;
          fprintf(v70, "#CI-INFO# %s\n", [v69 UTF8String]);

          if (![v67 count])
          {
            if (g_runningInCI)
            {
              v74 = "#CI_ERROR# ";
            }

            else
            {
              v74 = "";
            }

            GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_frameProfiler.m", "debugDumpCounterDictionary", 952, 1, "%s%s %u: No derivedCounterInfoResult counters present!\n", v72, v73, v74);
          }

          if (g_runningValidationCI == 1)
          {
            v75 = [v67 objectForKeyedSubscript:@"DerivedCounters"];
            [v75 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_170];
          }
        }

        v76 = [v59 objectForKeyedSubscript:@"DerivedCounterDictionary"];
        if (verifyCounterDictionary(v76))
        {
          v135[0] = @"DerivedCounterDictionary";
          v133[0] = @"Version";
          v77 = [v76 objectForKeyedSubscript:?];
          v133[1] = @"DerivedCounters";
          v134[0] = v77;
          v131 = @"GPUToolsGPUTime";
          v132 = &unk_2860D6290;
          v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
          v134[1] = v78;
          v79 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v134 forKeys:v133 count:2];
          v135[1] = @"DerivedCounterScript";
          v136[0] = v79;
          v136[1] = @"\nfunction GPUToolsGPUTime()\n{\n   return MTLStat_nSec\n}\n";
          v108 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v136 forKeys:v135 count:2];

          v110 = GTMTLReplayClient_mergeDerivedCounterInfo(v59, v108);

          v80 = [v110 objectForKeyedSubscript:@"DerivedCounterDictionary"];
          v113 = v76;
          obja = v80;
          if (g_runningInCI == 1)
          {
            v81 = [MEMORY[0x277CCACA8] stringWithFormat:@"Validating merged derived counters"];
            v82 = [v81 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

            v83 = *MEMORY[0x277D85E08];
            v84 = v82;
            fprintf(v83, "#CI-INFO# %s\n", [v82 UTF8String]);
          }

          v85 = [obja objectForKeyedSubscript:@"DerivedCounters"];
          v129 = 0u;
          v130 = 0u;
          v127 = 0u;
          v128 = 0u;
          v86 = [v113 objectForKeyedSubscript:@"DerivedCounters"];
          v87 = [v86 countByEnumeratingWithState:&v127 objects:v140 count:16];
          if (v87)
          {
            v88 = *v128;
            do
            {
              for (j = 0; j != v87; ++j)
              {
                if (*v128 != v88)
                {
                  objc_enumerationMutation(v86);
                }

                v90 = [v85 objectForKeyedSubscript:*(*(&v127 + 1) + 8 * j)];
                v91 = v90 == 0;

                if (v91)
                {
                  v94 = "";
                  if (g_runningInCI)
                  {
                    v94 = "#CI_ERROR# ";
                  }

                  GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_frameProfiler.m", "validateMergeDerivedCounterInfo", 940, 1, "%s%s %u: Counter %@ is missing from merged counter list\n", v92, v93, v94);
                }
              }

              v87 = [v86 countByEnumeratingWithState:&v127 objects:v140 count:16];
            }

            while (v87);
          }

          v95 = [v110 mutableCopy];
          [v95 setObject:v118 forKeyedSubscript:@"MetalPluginName"];
          if (v117)
          {
            v96 = v117;
            if (g_runningInCI == 1)
            {
              v97 = [MEMORY[0x277CCACA8] stringWithFormat:@"Configuration Variables: %@", v117];
              v98 = [v97 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

              v99 = *MEMORY[0x277D85E08];
              v100 = v98;
              fprintf(v99, "#CI-INFO# %s\n", [v98 UTF8String]);

              v96 = v117;
            }

            [v95 setObject:v96 forKeyedSubscript:@"DerivedCounterConfigurationVariables"];
          }

          v18 = [v95 copy];

          v59 = v110;
          goto LABEL_105;
        }
      }
    }

    else
    {
      if (g_runningInCI)
      {
        v101 = "#CI_ERROR# ";
      }

      else
      {
        v101 = "";
      }

      GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_frameProfiler.m", "DYMTLReplayFrameProfiler_loadAnalysis", 1125, 1, "%s%s %u: Failed to load any derived counters\n", v60, v61, v101);
      v59 = 0;
    }

    v18 = MEMORY[0x277CBEC10];
LABEL_105:

    goto LABEL_106;
  }

  if (!CFProperty)
  {
    v9 = 0;
    goto LABEL_32;
  }

  v10 = [CFProperty objectForKeyedSubscript:@"gpu_gen"];
  v11 = [v10 unsignedIntValue];

  v12 = [CFProperty objectForKeyedSubscript:@"num_cores"];
  v13 = [v12 unsignedIntValue];

  v14 = [v117 objectForKeyedSubscript:@"num_mgpus"];
  v15 = [v14 unsignedIntValue];

  v16 = [v117 objectForKeyedSubscript:@"usc_gen"];
  v17 = v16;
  if (!v16 || [v16 unsignedIntValue] <= 2)
  {
    if (v11 < 0xE)
    {
      v9 = 0;
    }

    else
    {
      v26 = [MEMORY[0x277CCAB68] stringWithFormat:@"AGXMetalStatisticsG%u", v11];
      v27 = v26;
      v28 = @"D";
      v29 = @"P";
      if (v13 > 6)
      {
        v29 = @"G";
      }

      if (v15 == 4)
      {
        v29 = @"C";
      }

      if (v15 != 8)
      {
        v28 = v29;
      }

      if (v15 == 2)
      {
        v30 = @"S";
      }

      else
      {
        v30 = v28;
      }

      [v26 appendString:v30];
      v9 = [v27 copy];
    }

    goto LABEL_32;
  }

  v18 = MEMORY[0x277CBEC10];
LABEL_106:
  CFProperty = v117;
LABEL_107:

  v103 = *MEMORY[0x277D85DE8];

  return v18;
}

id AddShaderBinary(void *a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  v6 = crc32(0, 0, 0);
  v7 = [v5 initWithFormat:@"%0.8x", crc32(v6, objc_msgSend(v4, "bytes"), objc_msgSend(v4, "length"))];
  if (v4)
  {
    v11 = @"binary";
    v12[0] = v4;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [v3 setObject:v8 forKeyedSubscript:v7];
  }

  else
  {
    [v3 setObject:MEMORY[0x277CBEC10] forKeyedSubscript:v7];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

id GTMTLReplayClient_collectPipelinePerformanceStatistics(uint64_t a1)
{
  v60[2] = *MEMORY[0x277D85DE8];
  p = **(a1 + 184);
  v2 = *a1;
  v52 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = v4;
  if (*(a1 + 22560) < *(*(v2 + 128) + 12))
  {
    v6 = 0;
    v53 = v4;
    v51 = v3;
    while (1)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(*(v2 + 128) + 24) + (*(a1 + 22560) << 6);
      if (GTFenum_isBeginCommandBuffer(*(v8 + 8)))
      {
        GTMTLReplayController_restoreCommandBuffer(a1, v8);
      }

      GTMTLReplayController_updateCommandEncoder(a1, v8);
      GTMTLReplayController_defaultDispatchFunction(a1, v8);
      v9 = *(a1 + 22560);
      v10 = *(v2 + 104);
      if (v10 > v9 || *(v2 + 112) + v10 <= v9)
      {
        goto LABEL_25;
      }

      v12 = *(v8 + 8);
      if ((GTFenum_isDrawCall(v12) & 1) == 0 && !GTFenum_isComputeCall(v12))
      {
        goto LABEL_25;
      }

      v13 = *(a1 + 11360);
      if (v13 == 28)
      {
        break;
      }

      if (v13 == 70)
      {
        v14 = *(a1 + 8792);
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v14];
        v54 = v6 + 1;
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6];
        v59[0] = v16;
        v59[1] = v15;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
        [v52 addObject:v17];

        v5 = v53;
        v18 = v15;
        if (([v53 containsObject:v15] & 1) == 0)
        {
          v50 = v15;
          [v53 addObject:v15];
          v47 = v14;
          v19 = GTMTLSMContext_getObject(**(v2 + 40), v14, *v8) + 7;
          v20 = 112;
          v21 = 120;
          goto LABEL_19;
        }

LABEL_17:
        v3 = v51;
        goto LABEL_24;
      }

LABEL_25:
      objc_autoreleasePoolPop(v7);
      v42 = *(a1 + 22560) + 1;
      *(a1 + 22560) = v42;
      if (v42 >= *(*(v2 + 128) + 12))
      {
        goto LABEL_26;
      }
    }

    v22 = *(a1 + 8792);
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 256)];
    v54 = v6 + 1;
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6];
    v58[0] = v24;
    v58[1] = v23;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
    [v52 addObject:v25];

    v5 = v53;
    v18 = v23;
    if ([v53 containsObject:v23])
    {
      goto LABEL_17;
    }

    v50 = v23;
    [v53 addObject:v23];
    v47 = v22;
    v19 = GTMTLSMContext_getObject(**(v2 + 40), v22, *v8) + 8;
    v20 = 56;
    v21 = 64;
LABEL_19:
    v3 = v51;
    v26 = *v19;
    v27 = *(v26 + v20);
    v28 = *(v26 + v21);
    v29 = v51;
    if (v27)
    {
      v49 = v29;
      v30 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v27 length:v28 freeWhenDone:0];
      v46 = MEMORY[0x277CCAAC8];
      v31 = MEMORY[0x277CBEB98];
      v32 = objc_opt_class();
      v33 = objc_opt_class();
      v34 = objc_opt_class();
      v35 = objc_opt_class();
      v36 = [v31 setWithObjects:{v32, v33, v34, v35, objc_opt_class(), 0}];
      v55 = 0;
      v37 = v30;
      v38 = [v46 unarchivedObjectOfClasses:v36 fromData:v30 error:&v55];
      v39 = v55;

      if (v38)
      {
        v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v47];
        v60[0] = v40;
        v60[1] = v38;
        v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];
        [v49 addObject:v41];
      }

      v3 = v51;
      v29 = v49;
    }

    apr_pool_clear(p);
    v5 = v53;
    v18 = v50;
LABEL_24:

    v6 = v54;
    goto LABEL_25;
  }

LABEL_26:
  v56[0] = @"Draw ID -> PipelineState ID";
  v56[1] = @"PipelineState ID";
  v57[0] = v52;
  v57[1] = v3;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];

  v44 = *MEMORY[0x277D85DE8];

  return v43;
}

void validateSubdividedCounterLists(void *a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (g_runningValidationCI == 1)
  {
    if (g_runningInCI == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Required counters: %@, divided list: %@", v3, v4];
      v6 = [v5 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

      fprintf(*MEMORY[0x277D85E08], "#CI-INFO# %s\n", [v6 UTF8String]);
    }

    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v22 = v4;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v28;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v7 addObjectsFromArray:*(*(&v27 + 1) + 8 * i)];
        }

        v10 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v10);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = v3;
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          if (([v7 containsObject:*(*(&v23 + 1) + 8 * j)] & 1) == 0)
          {
            v20 = "";
            if (g_runningInCI)
            {
              v20 = "#CI_ERROR# ";
            }

            GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_frameProfiler.m", "validateSubdividedCounterLists", 1521, 1, "%s%s %u: Counter %@ missing from subdivided counter list\n", v18, v19, v20);
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v15);
    }

    v4 = v22;
  }

  v21 = *MEMORY[0x277D85DE8];
}

id GTMTLReplayClient_queryShaderInfo(uint64_t a1, id *a2, void *a3)
{
  v86[6] = *MEMORY[0x277D85DE8];
  v45 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CCABD0]);
  v86[0] = @"MTLStatCommandBufferIndex";
  v86[1] = @"MTLStatEncoderIndex";
  v86[2] = @"MTLStatCommandIndex";
  v86[3] = @"MTLStat_nSec";
  v86[4] = @"MTLStatVertexCost";
  v86[5] = @"MTLStatFragmentCost";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:6];
  v7 = [v45 objectForKeyedSubscript:@"GPUState"];
  v8 = objc_autoreleasePoolPush();
  if (v7)
  {
    v9 = [GTPMController alloc];
    v10 = [*(a1 + 8) defaultDevice];
    v11 = [v10 name];
    v12 = [(GTPMController *)v9 initWithGPUFamily:v11];
  }

  else
  {
    v12 = 0;
  }

  objc_autoreleasePoolPop(v8);
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0xBFF0000000000000;
  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = __Block_byref_object_copy__7224;
  v76 = __Block_byref_object_dispose__7225;
  v77 = 0;
  v13 = objc_alloc_init(MEMORY[0x277CCABD0]);
  v14 = *a2;
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __GTMTLReplayClient_queryShaderInfo_block_invoke;
  v64[3] = &unk_2796587D8;
  v15 = v7;
  v65 = v15;
  v16 = v12;
  v66 = v16;
  v70 = a1;
  v44 = v6;
  v67 = v44;
  v69 = &v72;
  v17 = v13;
  v68 = v17;
  v71 = a2;
  [v14 addOperationWithBlock:v64];
  [v5 addDependency:v17];

  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__7224;
  v62 = __Block_byref_object_dispose__7225;
  v63 = 0;
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __GTMTLReplayClient_queryShaderInfo_block_invoke_2;
  v57[3] = &unk_279659168;
  v57[4] = &v58;
  v57[5] = a1;
  v18 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v57];
  [v18 setQueuePriority:-8];
  [*a2 addOperation:v18];
  v19 = MEMORY[0x277CCA8C8];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __GTMTLReplayClient_queryShaderInfo_block_invoke_3;
  v53[3] = &unk_279658800;
  v42 = v15;
  v54 = v42;
  v56 = &v78;
  v20 = v16;
  v55 = v20;
  v21 = [v19 blockOperationWithBlock:v53];
  [v21 addDependency:v18];
  [a2[1] addOperation:v21];
  [v5 addDependency:v21];

  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__7224;
  v51 = __Block_byref_object_dispose__7225;
  v52 = 0;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __GTMTLReplayClient_queryShaderInfo_block_invoke_4;
  v46[3] = &unk_279659168;
  v46[4] = &v47;
  v46[5] = a1;
  v22 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v46];
  [a2[1] addOperation:v22];
  [v5 addDependency:v22];

  [a2[1] addOperation:v5];
  [v5 waitUntilFinished];
  if (v20)
  {
    [(GTPMController *)v20 tearDown];
  }

  v23 = [v59[5] objectForKeyedSubscript:{@"frametime", v42}];
  v24 = [v48[5] objectForKeyedSubscript:@"MetalPluginName"];
  v25 = objc_opt_new();
  v26 = v25;
  v27 = MEMORY[0x277CBEC28];
  if (v7)
  {
    v28 = [GTPMController stateFromWeightedAverage:v79[3]];
    if (v79[3] <= -2.22044605e-16)
    {
      v29 = v27;
    }

    else
    {
      v29 = MEMORY[0x277CBEC38];
    }

    [v26 setObject:v29 forKeyedSubscript:@"enabled"];
    v30 = MEMORY[0x277CCABB0];
    if ([v28 isEqualToString:@"mixed"])
    {
      v31 = 0;
    }

    else
    {
      v31 = [v28 isEqualToString:@"none"] ^ 1;
    }

    v32 = [v30 numberWithInt:v31];
    [v26 setObject:v32 forKeyedSubscript:@"consistent"];

    [v26 setObject:v43 forKeyedSubscript:@"level"];
  }

  else
  {
    [v25 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"enabled"];
  }

  v33 = objc_alloc(MEMORY[0x277CBEB38]);
  v82[0] = @"frame counters";
  v82[1] = @"frame profile data";
  v34 = v73[5];
  v83[0] = v44;
  v83[1] = v34;
  v84[0] = @"frameProfile";
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:2];
  v85[0] = v35;
  v85[1] = v23;
  v84[1] = @"frametime";
  v84[2] = @"Frame Consistent Perf Info";
  v36 = v48[5];
  v85[2] = v26;
  v85[3] = v36;
  v84[3] = @"derivedCounterData";
  v84[4] = @"BatchingFilteringAvailable";
  v85[4] = v27;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:5];
  v38 = [v33 initWithDictionary:v37];

  v39 = [v59[5] objectForKeyedSubscript:@"frameGPUTime"];
  if (v39)
  {
    [v38 setObject:v39 forKeyedSubscript:@"frameGPUTime"];
  }

  if (v24)
  {
    [v38 setObject:v24 forKeyedSubscript:@"MetalPluginName"];
  }

  [v38 addEntriesFromDictionary:MEMORY[0x277CBEC10]];
  [v38 addEntriesFromDictionary:MEMORY[0x277CBEC10]];

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v58, 8);

  _Block_object_dispose(&v72, 8);
  _Block_object_dispose(&v78, 8);

  v40 = *MEMORY[0x277D85DE8];

  return v38;
}

void sub_24D964784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a61, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7224(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __performFrameTimingDesktop_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 GPUStartTime];
  **(a1 + 32) = v4;
  [v3 GPUEndTime];
  v6 = v5;

  *(*(a1 + 32) + 8) = v6;
}

uint64_t CommandBufferTimeInfo_compare(double *a1, double *a2)
{
  if (*a1 == *a2)
  {
    v3 = a1[1];
    v4 = a2[1];
    if (v3 < v4)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v3 != v4;
    }
  }

  else if (*a1 >= *a2)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

id CollectFrameCounters(uint64_t a1, id *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v48 = a1;
  v13 = [*(a1 + 8) defaultCommandQueue];
  v14 = [v11 count];
  v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v14];
  if (v14)
  {
    v16 = v14;
    do
    {
      v17 = [MEMORY[0x277CBEB28] dataWithCapacity:0x10000];
      [v15 addObject:v17];

      --v16;
    }

    while (v16);
  }

  v18 = 0x277CCA000uLL;
  v19 = MEMORY[0x277CCA8C8];
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __CollectFrameCounters_block_invoke;
  v70[3] = &unk_279658850;
  v42 = v12;
  v71 = v42;
  v44 = v10;
  v72 = v44;
  v20 = v11;
  v73 = v20;
  v21 = v15;
  v74 = v21;
  v22 = [v19 blockOperationWithBlock:v70];
  v23 = v22;
  if (v14)
  {
    v24 = 0;
    v45 = v52;
    v46 = v64;
    v50 = v14;
    v47 = v22;
    do
    {
      v25 = g_signpostLog;
      v26 = [v21 objectAtIndexedSubscript:{v24, v42, v44, v45, v46}];
      v27 = os_signpost_id_make_with_pointer(v25, v26);

      v28 = *(v18 + 2248);
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v64[0] = __CollectFrameCounters_block_invoke_411;
      v64[1] = &unk_279658878;
      v67 = v27;
      v68 = v24;
      v69 = v14;
      v29 = v21;
      v65 = v29;
      v30 = v21;
      v31 = v13;
      v32 = v20;
      v66 = v32;
      v33 = [v28 blockOperationWithBlock:v63];
      [v23 addDependency:v33];
      v34 = v20;
      v35 = MEMORY[0x277CCA8C8];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v52[0] = __CollectFrameCounters_block_invoke_412;
      v52[1] = &unk_2796588C8;
      v36 = v32;
      v13 = v31;
      v21 = v30;
      v53 = v36;
      v57 = v24;
      v58 = a5;
      v59 = v27;
      v60 = v50;
      v61 = v48;
      v54 = v29;
      v37 = v13;
      v62 = a2;
      v55 = v37;
      v56 = v33;
      v38 = v33;
      v39 = v35;
      v20 = v34;
      v23 = v47;
      v40 = [v39 blockOperationWithBlock:v51];
      [v40 setQueuePriority:-8];
      [*a2 addOperation:v40];

      v18 = 0x277CCA000;
      v14 = v50;

      ++v24;
    }

    while (v50 != v24);
  }

  [a2[1] addOperation:{v23, v42}];

  return v23;
}

void __ProfileFrame_block_invoke(uint64_t a1)
{
  v61 = *MEMORY[0x277D85DE8];
  v2 = os_signpost_id_make_with_pointer(g_signpostLog, *(a1 + 32));
  v3 = g_signpostLog;
  v4 = v3;
  v43 = v2 - 1;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "Replayer-4-parallel", "ProcessFrameData", buf, 2u);
  }

  spid = v2;

  v5 = *(a1 + 40);
  v42 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = [*(a1 + 56) count];
  v8 = v5;
  v9 = v6;
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "length") >> 3}];
  v11 = [v8 bytes];
  v12 = [v8 bytes];
  v41 = v8;
  v13 = v12 + [v8 length];
  v40 = v9;
  v14 = [v9 bytes];
  v46 = v13;
  if (&v11[2 * v7] <= v13)
  {
    v15 = 0;
    v16 = 0;
    v44 = 2 * v7;
    v45 = v7;
    v17 = 8 * v7;
    v18 = -1;
    v50 = 8 * v7;
    v54 = v10;
    do
    {
      v19 = 0;
      v20 = 0;
      for (i = v11; *(i + v17) == *i && *(i + v17 + 8) == i[1]; i = (i + v17))
      {
        v19 = *(i + v17 + 24) + v19 - i[3];
        ++v20;
      }

      if (v18 == *v11)
      {
        v23 = v16;
      }

      else
      {
        v23 = 0;
      }

      if (v18 != *v11)
      {
        ++v15;
      }

      v48 = *v11;
      v49 = v15;
      v47 = v14 + 8 * v7;
      if (v20)
      {
        v24 = 0;
        v25 = v19;
        v26 = (*(v14 + 8 * v7 + 24) - *(v14 + 24));
        v51 = v15 - 1;
        v52 = v23;
        v53 = v20;
        do
        {
          v27 = (v11 + v17);
          v28 = (*(v11 + v17 + 24) - v11[3]) / v25 * v26;
          v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{v51, spid}];
          *buf = v29;
          v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v23];
          v56 = v30;
          v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v24];
          v57 = v31;
          v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v28];
          v58 = v32;
          v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v27[4]];
          v59 = v33;
          v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v27[5]];
          v60 = v34;
          v35 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:6];
          [v54 addObjectsFromArray:v35];

          v23 = v52;
          v17 = v50;
          ++v24;
          v11 = v27;
        }

        while (v53 != v24);
      }

      else
      {
        v27 = v11;
      }

      v7 = v45;
      v14 = v47 + 8 * v45;
      v16 = v23 + 1;
      v11 = &v27[v45];
      v18 = v48;
      v15 = v49;
      v10 = v54;
    }

    while (&v11[v44] <= v46);
  }

  [v42 setArray:v10];
  v36 = g_signpostLog;
  v37 = v36;
  if (v43 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v37, OS_SIGNPOST_INTERVAL_END, spid, "Replayer-4-parallel", &unk_24DA93952, buf, 2u);
  }

  v38 = *MEMORY[0x277D85DE8];
}

void __CollectFrameCounters_block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = os_signpost_id_make_with_pointer(g_signpostLog, *(a1 + 32));
  v3 = g_signpostLog;
  v4 = v3;
  v5 = v2 - 1;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "Replayer-4-parallel", "MergeCounterData", buf, 2u);
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10 = v6;
  v11 = v9;
  v41 = v8;
  v39 = [v11 count];
  if (v39 == 1 && ([v11 objectAtIndexedSubscript:0], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToArray:", v10), v12, v13))
  {
    v14 = [v11 objectAtIndexedSubscript:0];
    [v10 objectAtIndexedSubscript:0];

    v40 = [v41 objectAtIndexedSubscript:0];
  }

  else
  {
    v15 = [v41 objectAtIndexedSubscript:0];
    v16 = [v11 objectAtIndexedSubscript:0];
    v17 = [v15 length];
    v36 = 8 * [v16 count];
    v37 = v17;
    v18 = v17 / v36;

    v19 = [v10 count];
    v40 = [MEMORY[0x277CBEB28] dataWithLength:8 * v18 * v19];
    if (v39)
    {
      v38 = v11;
      v34 = v2 - 1;
      v35 = v2;
      for (i = 0; i != v39; ++i)
      {
        v21 = [v38 objectAtIndexedSubscript:i];
        v22 = [v21 count];
        if (v22)
        {
          for (j = 0; j != v22; ++j)
          {
            v24 = [v21 objectAtIndexedSubscript:j];
            *&buf[8 * j] = [v10 indexOfObject:v24];
          }
        }

        v25 = [v41 objectAtIndexedSubscript:i];
        v26 = [v25 bytes];
        v27 = [v40 mutableBytes];
        if (v36 <= v37)
        {
          v28 = 0;
          do
          {
            if (v22)
            {
              for (k = 0; k != v22; ++k)
              {
                v30 = *&buf[8 * k];
                if (v30 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  *(v27 + 8 * v30) = *(v26 + 8 * k);
                }
              }
            }

            v27 += 8 * v19;
            ++v28;
            v26 += 8 * v22;
          }

          while (v28 < v18);
        }
      }

      v5 = v34;
      v2 = v35;
      v11 = v38;
    }
  }

  [v7 setData:v40];
  v31 = g_signpostLog;
  v32 = v31;
  if (v5 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v32, OS_SIGNPOST_INTERVAL_END, v2, "Replayer-4-parallel", &unk_24DA93952, buf, 2u);
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __CollectFrameCounters_block_invoke_411(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = g_signpostLog;
  v3 = v2;
  v4 = *(a1 + 48);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    v17 = 134218240;
    v18 = v5;
    v19 = 2048;
    v20 = v6;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "Replayer-4-parallel", "SortCounterData %lu/%lu", &v17, 0x16u);
  }

  v7 = [*(a1 + 32) objectAtIndexedSubscript:*(a1 + 56)];
  v8 = [*(a1 + 40) objectAtIndexedSubscript:*(a1 + 56)];
  v9 = 8 * [v8 count];
  v10 = v7;
  v11 = [v10 length] / v9;
  v12 = [v10 mutableBytes];

  qsort(v12, v11, v9, compareSampleData);
  v13 = g_signpostLog;
  v14 = v13;
  v15 = *(a1 + 48);
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(v17) = 0;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v14, OS_SIGNPOST_INTERVAL_END, v15, "Replayer-4-parallel", &unk_24DA93952, &v17, 2u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __CollectFrameCounters_block_invoke_412()
{
  v0 = MEMORY[0x28223BE20]();
  v88 = *MEMORY[0x277D85DE8];
  v1 = &unk_27F09C000;
  v2 = g_activityLog;
  v70 = v0;
  v3 = [*(v0 + 32) objectAtIndexedSubscript:*(v0 + 64)];
  [v2 enterCollectCounters:v3 statLocations:*(v70 + 72) withIndex:*(v70 + 64)];

  v4 = g_signpostLog;
  v5 = v4;
  v6 = *(v70 + 80);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = *(v70 + 64);
    v8 = *(v70 + 88);
    v87[0] = 134218240;
    *&v87[1] = v7;
    LOWORD(v87[3]) = 2048;
    *(&v87[3] + 2) = v8;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v6, "Replayer-1-serial", "CollectCounterData %lu/%lu", v87, 0x16u);
  }

  v9 = *(v70 + 96);
  v10 = [*(v70 + 32) objectAtIndexedSubscript:*(v70 + 64)];
  v11 = *(v70 + 40);
  v12 = *(v70 + 64);
  v64 = *(v70 + 72);
  v67 = v10;
  v63 = v11;
  GTMTLReplayController_prePlayForProfiling(v9);
  [v67 count];
  v62 = [g_commandBufferDescriptor errorOptions];
  [g_commandBufferDescriptor setErrorOptions:0];
  v13 = [*(v9 + 8) defaultCommandQueue];
  [v13 setStatEnabled:1];
  [v13 setStatOptions:1];
  [v13 setStatOptions:0x10000000];
  [v13 setGPUPriority:0];
  [v13 setStatLocations:v64];
  if ([v13 requestCounters:v67 withIndex:v12])
  {
    if (g_runningInCI)
    {
      v16 = "#CI_ERROR# ";
    }

    else
    {
      v16 = "";
    }

    GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_frameProfiler.m", "CollectCounterData", 294, 1, "%s%s %u: CollectCounterData requestCounters on index %d failed with error %d\n", v14, v15, v16);
  }

  v17 = [v63 objectAtIndexedSubscript:v12];
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __CollectCounterData_block_invoke;
  v77[3] = &unk_2796588F0;
  v78 = v17;
  v18 = v17;
  [v13 addPerfSampleHandler:v77];
  v69 = v13;

  v65 = *v9;
  v73 = v65[14] + v65[13];
  if (v73 > *(v9 + 22560))
  {
    v68 = 0;
    v72 = v65[16];
    while (1)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = *(v72 + 24) + (*(v9 + 22560) << 6);
      if (GTFenum_isBeginCommandBuffer(*(v20 + 8)))
      {
        GTMTLReplayController_restoreCommandBuffer(v9, v20);
      }

      GTMTLReplayController_updateCommandEncoder(v9, v20);
      v21 = *(v20 + 8);
      if (v21 + 15756 <= 6 && ((1 << (v21 - 116)) & 0x47) != 0 || v21 == -15637)
      {
        goto LABEL_21;
      }

      v25 = v68;
      if (v68)
      {
        ConstructorType = GTFenum_getConstructorType(*(v20 + 8));
        if (GTFenum_isMTLCommandEncoder(ConstructorType))
        {
          v27 = [*(v9 + 8) commandBufferForKey:v68];
          [v27 commit];
          [v69 setStatLocations:v64];
          v28 = [*(v9 + 8) defaultCommandQueue];
          v29 = [v28 commandBuffer];

          [*(v9 + 8) setCommandBuffer:v29 forKey:v68];
          v25 = 0;
          v21 = *(v20 + 8);
        }
      }

      if (v21 == -15673)
      {
        v30 = GTTraceFunc_argumentBytesWithMap(v20, *(v20 + 13), v65[2]);
        v31 = [*(v9 + 8) commandBufferForKey:*v30];
        [v31 commit];
        [v69 setStatLocations:0];
        v32 = [v69 commandBuffer];

        [*(v9 + 8) setCommandBuffer:v32 forKey:*v30];
        v25 = *v30;
        v21 = *(v20 + 8);
      }

      v68 = v25;
      if (v21 + 20474 <= 0x36 && ((0x40000020020001uLL >> (v21 - 6)) & 1) != 0)
      {
        break;
      }

LABEL_42:
      if (v21 >> 2 == 1073737833)
      {
        v41 = *v9;
        p = 0;
        v84 = 0u;
        v82 = 0u;
        memset(v83, 0, sizeof(v83));
        v80 = 0u;
        memset(v81, 0, sizeof(v81));
        v79 = 0u;
        GetExecuteCommandsInBufferArgs(&v79, v20, v41[2]);
        v90.location = *(&v79 + 1);
        v90.length = v80;
        v89.location = 0;
        v89.length = -1;
        v42 = NSIntersectionRange(v89, v90);
        length = v42.length;
        if (v42.length)
        {
          p = **(v9 + 184);
          GTMTLSMContext_indirectCommandBufferResources(v83, v41[5], *v20, p);
          Object = GTMTLSMContext_getObject(*v41[5], v79, *v20);
          GTMTLCreateIndirectCommandEncoder(&v81[1], Object[14]);
          v71 = *(v9 + 8);
          v45 = *(v9 + 11360);
          if (v45 == 28)
          {
            memcpy(v87, (v9 + 192), 0x2BA0uLL);
            if ((GT_SUPPORT_0 & 0x10) != 0)
            {
              v47 = [*(v9 + 8) computeCommandEncoderForKey:*(v9 + 200)];
              v48 = *(&v80 + 1);
              v49 = *(&v82 + 1);
              v50 = v42.location << 32;
              do
              {
                *(&v84 + 1) = v48 + v49 * (v50 >> 32);
                memcpy(__dst, &v87[14], 0x8D0uLL);
                if (GTMTLSMComputeCommandEncoder_loadIndirectCommand(&v87[14], &v81[1], *(&v84 + 1), v83))
                {
                  GTMTLReplayController_restoreComputeCommandEncoder(v47, __dst, &v87[14], v71);
                  DYMTLDispatchComputeCommandEncoder(v47, &v81[1], v48 + v49 * (v50 >> 32));
                }

                v50 += 0x100000000;
                --length;
              }

              while (length);
              v1 = &unk_27F09C000;
              GTMTLReplayController_restoreComputeCommandEncoder(v47, &v87[14], v9 + 248, v71);
            }
          }

          else if (v45 == 70)
          {
            memcpy(v87, (v9 + 192), 0x2BA0uLL);
            v66 = [v71 executeIndirectCommandBufferMap];
            if (*(v9 + 11360))
            {
              v46 = *(v9 + 200);
            }

            else
            {
              v46 = 0;
            }

            v51 = [*(v9 + 8) renderCommandEncoderForKey:v46];
            v52 = *(&v80 + 1);
            v53 = *(&v82 + 1);
            v54 = v42.location << 32;
            do
            {
              *(&v84 + 1) = v52 + v53 * (v54 >> 32);
              memcpy(__dst, &v87[14], sizeof(__dst));
              if (GTMTLSMRenderCommandEncoder_loadIndirectCommand(&v87[14], &v81[1], *(&v84 + 1), v83))
              {
                GTMTLReplayController_restoreRenderCommandEncoder(v51, __dst, &v87[14], v71);
                DYMTLDrawRenderCommandEncoder(v51, &v81[1], v52 + v53 * (v54 >> 32), v83, v66);
              }

              v54 += 0x100000000;
              --length;
            }

            while (length);
            v1 = &unk_27F09C000;
            GTMTLReplayController_restoreRenderCommandEncoder(v51, &v87[14], v9 + 248, v71);
          }

          apr_pool_clear(p);
        }
      }

      else
      {
        GTMTLReplayController_defaultDispatchFunction(v9, v20);
      }

LABEL_21:
      objc_autoreleasePoolPop(v19);
      v24 = (*(v9 + 22560) + 1);
      *(v9 + 22560) = v24;
      if (v73 <= v24)
      {
        goto LABEL_62;
      }
    }

    v33 = GTTraceFunc_argumentBytesWithMap(v20, *(v20 + 13), v65[2]);
    v34 = [*(v9 + 8) commandBufferForKey:*(v33 + 1)];
    [v34 commit];

    v35 = *(v20 + 8);
    if (v35 > -20446)
    {
      if (v35 == -20445)
      {
        v36 = [*(v9 + 8) frameInterpolatorForKey:*v33];
      }

      else
      {
        if (v35 != -20420)
        {
          goto LABEL_41;
        }

        v36 = [*(v9 + 8) temporalDenoisedScalerForKey:*v33];
      }
    }

    else
    {
      if (v35 != -20474)
      {
        if (v35 == -20457)
        {
          v36 = [*(v9 + 8) temporalScalerForKey:*v33];
          goto LABEL_39;
        }

LABEL_41:
        v39 = [*(v9 + 8) defaultCommandQueue];
        v40 = [v39 commandBuffer];

        [*(v9 + 8) setCommandBuffer:v40 forKey:*(v33 + 1)];
        v21 = *(v20 + 8);
        goto LABEL_42;
      }

      v36 = [*(v9 + 8) spatialScalerForKey:*v33];
    }

LABEL_39:
    v37 = v36;
    if (v36)
    {
      [v69 setStatLocations:0];
      v38 = [v69 commandBuffer];
      [v37 encodeToCommandBuffer:v38];
      [v38 commit];
      [v69 setStatLocations:v64];
    }

    goto LABEL_41;
  }

LABEL_62:
  *(v9 + 22564) = 0;
  [v69 finish];
  [v69 setGPUPriority:1];
  [v69 setStatEnabled:0];
  [g_commandBufferDescriptor setErrorOptions:v62];

  v55 = g_signpostLog;
  v56 = v55;
  v57 = *(v70 + 80);
  if (v57 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v55))
  {
    LOWORD(v87[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v56, OS_SIGNPOST_INTERVAL_END, v57, "Replayer-1-serial", &unk_24DA93952, v87, 2u);
  }

  v58 = [*(v70 + 48) commandBufferWithUnretainedReferences];
  v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.gputools.replay", @"CollectFrameCounters"];
  [v58 setLabel:v59];

  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __CollectFrameCounters_block_invoke_416;
  v74[3] = &unk_2796588A0;
  v76 = *(v70 + 104);
  v75 = *(v70 + 56);
  [v58 addCompletedHandler:v74];
  GTMTLReplay_commitCommandBuffer(v58);

  result = [v1[451] leaveActivity];
  v61 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CollectCounterData_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    if (a4)
    {
      return [*(result + 32) appendData:?];
    }
  }

  return result;
}

uint64_t compareSampleData(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  while (1)
  {
    v3 = *(a1 + v2);
    v4 = *(a2 + v2);
    if (v3 < v4)
    {
      return 0xFFFFFFFFLL;
    }

    if (v4 < v3)
    {
      break;
    }

    v2 += 8;
    if (v2 == 24)
    {
      return 0;
    }
  }

  return 1;
}

id GTMTLReplayClient_derivedCounterData(id *a1, id *a2, void *a3)
{
  v50[7] = *MEMORY[0x277D85DE8];
  v33 = a3;
  v4 = [v33 objectForKeyedSubscript:@"profileCounters"];
  v50[0] = @"MTLStatCommandBufferIndex";
  v50[1] = @"MTLStatEncoderIndex";
  v50[2] = @"MTLStatCommandIndex";
  v50[3] = @"MTLStatDataMaster";
  v50[4] = @"MTLStatSampleLocation";
  v50[5] = @"MTLStatTotalGPUCycles";
  v50[6] = @"MTLStat_nSec";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:7];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count") + objc_msgSend(v5, "count")}];
  [v6 addObjectsFromArray:v5];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v36 objects:&v42 count:16];
  if (v8)
  {
    v9 = *v37;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v36 + 1) + 8 * i);
        if (([v5 containsObject:v11] & 1) == 0)
        {
          [v6 addObject:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v36 objects:&v42 count:16];
    }

    while (v8);
  }

  v12 = v6;
  *&v36 = 0;
  *(&v36 + 1) = &v36;
  *&v37 = 0x3032000000;
  *(&v37 + 1) = __Block_byref_object_copy__7224;
  *&v38 = __Block_byref_object_dispose__7225;
  *(&v38 + 1) = 0;
  v13 = MEMORY[0x277CCA8C8];
  v42 = MEMORY[0x277D85DD0];
  v43 = 3221225472;
  v44 = __SubdivideCounterList_block_invoke;
  v45 = &unk_279658938;
  v47 = &v36;
  v48 = a1;
  v14 = v12;
  v46 = v14;
  v15 = [v13 blockOperationWithBlock:&v42];
  [v15 setQueuePriority:8];
  [*a2 addOperation:v15];
  [v15 waitUntilFinished];
  v16 = *(*(&v36 + 1) + 40);

  _Block_object_dispose(&v36, 8);
  [a1[1] defaultDevice];

  v34 = objc_alloc_init(MEMORY[0x277CCABD0]);
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = v14;
  v19 = v17;
  v20 = MEMORY[0x277CBEB28];
  v21 = v16;
  v22 = objc_alloc_init(v20);
  v23 = CollectFrameCounters(a1, a2, v18, v21, 63, v22);

  v24 = MEMORY[0x277CCA8C8];
  v42 = MEMORY[0x277D85DD0];
  v43 = 3221225472;
  v44 = __ProfileFrameWithCounterListsForProfileInfo_block_invoke;
  v45 = &unk_279658960;
  v46 = v19;
  v47 = v18;
  v48 = v22;
  v49 = a1;
  v25 = v19;
  v26 = v18;
  v27 = v22;
  v28 = [v24 blockOperationWithBlock:&v42];
  [v28 addDependency:v23];
  [a2[1] addOperation:v28];

  [v34 addDependency:v28];
  [a2[1] addOperation:v34];
  [v34 waitUntilFinished];
  v40[0] = @"numberOfPasses";
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v21, "count")}];
  v41[0] = v29;
  v41[1] = v21;
  v40[1] = @"counterLists";
  v40[2] = @"counters";
  v40[3] = @"AverageSamples";
  v41[2] = v26;
  v41[3] = v25;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:4];

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

void sub_24D967198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SubdivideCounterList_block_invoke(uint64_t a1)
{
  v7 = [*(*(a1 + 48) + 8) defaultCommandQueue];
  if (g_runningInCI == 1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"SubdivideCounterList - subdividing counter list"];
    v3 = [v2 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

    fprintf(*MEMORY[0x277D85E08], "#CI-INFO# %s\n", [v3 UTF8String]);
  }

  v4 = [v7 subdivideCounterList:*(a1 + 32)];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  validateSubdividedCounterLists(*(a1 + 32), *(*(*(a1 + 40) + 8) + 40));
}

void __ProfileFrameWithCounterListsForProfileInfo_block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 56) + 8) defaultCommandQueue];
  v3 = os_signpost_id_make_with_pointer(g_signpostLog, *(a1 + 32));
  v4 = g_signpostLog;
  v5 = v4;
  v46 = v3 - 1;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "Replayer-4-parallel", "FormatSampleData", buf, 2u);
  }

  spid = v3;

  v6 = *(a1 + 40);
  v7 = [v2 counterInfo];
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = v6;
  v11 = v7;
  v12 = v10;
  v13 = v11;
  v14 = v8;
  v49 = v9;
  v15 = [v12 count];
  v47 = v14;
  v16 = [v14 length];
  v56 = 0u;
  v57 = 0u;
  *buf = 0u;
  v55 = 0u;
  v52 = v15;
  v53 = v15;
  v48 = v16 / (8 * v15);
  if (v15)
  {
    v17 = 0;
    do
    {
      v18 = [v12 objectAtIndexedSubscript:v17];
      v19 = [v13 objectForKeyedSubscript:v18];
      v20 = [v19 objectForKeyedSubscript:@"type"];
      v21 = [v20 unsignedIntegerValue];

      *&buf[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= (v21 == 1) << v17;
      v15 = v53;
      ++v17;
    }

    while (v53 != v17);
  }

  v45 = v13;
  v22 = [v47 bytes];
  if (v48 >= 2)
  {
    v23 = v22;
    v24 = 0;
    v25 = 0;
    v26 = v15 - 3;
    v27 = 1;
    v28 = 0x277CBE000uLL;
    while (1)
    {
      v29 = v23;
      v23 = (v23 + v52 * 8);
      if (*v23 == *v29)
      {
        break;
      }

      v25 = 0;
      v24 = 0;
      if (v23[2])
      {
        goto LABEL_16;
      }

LABEL_27:
      if (++v27 >= v48)
      {

        goto LABEL_29;
      }
    }

    if (v23[1] != v29[1])
    {

      v25 = 0;
    }

    if (!v23[2])
    {
      goto LABEL_27;
    }

    if (!v24)
    {
LABEL_16:
      v24 = [*(v28 + 2840) array];
      [v49 addObject:v24];
    }

    v50 = v23;
    if (!v25)
    {
      v25 = [*(v28 + 2840) array];
      [v24 addObject:v25];
    }

    [*(v28 + 2840) arrayWithCapacity:v15];
    v31 = v30 = v25;
    [v30 addObject:v31];
    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v49, "count") - 1}];
    [v31 addObject:v32];

    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v24, "count") - 1}];
    [v31 addObject:v33];

    v51 = v30;
    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v30, "count") - 1}];
    [v31 addObject:v34];

    v23 = v50;
    if (v15 >= 4)
    {
      v35 = 0;
      do
      {
        v36 = v29[v52 + 3 + v35];
        if ((*&buf[((v35 + 3) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v35 + 3)))
        {
          v37 = v29[v35 + 3];
          v38 = v36 >= v37;
          v39 = v36 - v37;
          if (v38)
          {
            v36 = v39;
          }

          else
          {
            v36 = 0;
          }
        }

        v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v36];
        [v31 addObject:v40];

        ++v35;
      }

      while (v26 != v35);
    }

    v15 = v53;
    v25 = v51;
    v28 = 0x277CBE000;
    goto LABEL_27;
  }

LABEL_29:

  v41 = g_signpostLog;
  v42 = v41;
  if (v46 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v42, OS_SIGNPOST_INTERVAL_END, spid, "Replayer-4-parallel", &unk_24DA93952, buf, 2u);
  }

  v43 = *MEMORY[0x277D85DE8];
}

id GTShaderDebuggerMakeError(unsigned int a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x277CBEB38];
  v13 = a2;
  v14 = [v12 alloc];
  v15 = [v14 initWithObjectsAndKeys:{v13, *MEMORY[0x277CCA450], 0}];

  if (v9)
  {
    [v15 setObject:v9 forKeyedSubscript:*MEMORY[0x277CCA498]];
  }

  if (v10)
  {
    [v15 setObject:v10 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  if (v11)
  {
    [v15 setObject:v11 forKeyedSubscript:@"ErrorInfo"];
  }

  v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"GTShaderDebuggerErrorDomain" code:a1 userInfo:v15];

  return v16;
}

void GTShaderDebuggerContextDeinit(void *a1)
{
  if (*a1)
  {
    [*(*a1 + 8) commitCommandBuffers];
  }

  v2 = a1[27];
  if (v2)
  {
    apr_pool_destroy(v2);
  }

  *a1 = 0;
  a1[27] = 0;
  v3 = a1[24];
  a1[24] = 0;

  v4 = a1[25];
  a1[25] = 0;

  a1[10] = 0;
  a1[11] = 0;
  v5 = a1[1];
  a1[1] = 0;

  v6 = a1[2];
  a1[2] = 0;

  v7 = a1[3];
  a1[3] = 0;

  v8 = a1[4];
  a1[4] = 0;

  v9 = a1[5];
  a1[5] = 0;

  v10 = a1[6];
  a1[6] = 0;

  v11 = a1[7];
  a1[7] = 0;

  v12 = a1[12];
  a1[12] = 0;

  v13 = a1[13];
  a1[13] = 0;

  v14 = a1[14];
  a1[14] = 0;

  v15 = a1[15];
  a1[15] = 0;

  v16 = a1[16];
  a1[16] = 0;

  v17 = a1[17];
  a1[17] = 0;

  v18 = a1[19];
  a1[19] = 0;

  v19 = a1[21];
  a1[21] = 0;

  v20 = a1[22];
  a1[22] = 0;

  v21 = a1[23];
  a1[23] = 0;
}

id GTShaderDebuggerSanitizeResponse(void *a1, void *a2, _DWORD *a3, void *a4)
{
  v95 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = v7;
  v10 = [v8 objectForKeyedSubscript:@"ProtocolVersion"];
  v11 = [v10 intValue];

  v12 = v11 > 2 || v11 == 2;
  v13 = v9;
  if (v12)
  {
    if (!a4)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v74 = v8;
  v75 = a4;
  v73 = v9;
  v16 = v9;
  v71 = [v16 objectForKeyedSubscript:@"TraceData"];
  v70 = [v16 objectForKeyedSubscript:@"TraceMetadata"];
  v72 = v16;
  v17 = [v16 objectForKeyedSubscript:@"ResourceMapping"];
  v68 = [v17 objectForKeyedSubscript:@"Bytes"];
  v18 = [v17 objectForKeyedSubscript:@"Buffers"];
  v67 = [v17 objectForKeyedSubscript:@"Textures"];
  v66 = [v17 objectForKeyedSubscript:@"Samplers"];
  v69 = v17;
  v19 = [v17 objectForKeyedSubscript:@"ConstantSamplers"];
  v20 = 0x277CBE000uLL;
  if ([v18 count])
  {
    v21 = a3[5640];
    v22 = *(*(*a3 + 128) + 24);
    v23 = *(*a3 + 40);
    v76 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v24 = v18;
    v25 = [v24 countByEnumeratingWithState:&v81 objects:v94 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = (v22 + ((v21 - 1) << 6));
      v28 = *v82;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v82 != v28)
          {
            objc_enumerationMutation(v24);
          }

          v30 = *(*(&v81 + 1) + 8 * i);
          Object = GTMTLSMContext_getObject(*v23, [v30 unsignedLongLongValue], *v27);
          if (Object)
          {
            v32 = Object;
            v33 = [v24 objectForKeyedSubscript:v30];
            v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v32[15]];
            [v76 setObject:v33 forKeyedSubscript:v34];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v81 objects:v94 count:16];
      }

      while (v26);
    }

    v20 = 0x277CBE000;
  }

  else
  {
    v76 = v18;
  }

  if ([v19 count])
  {
    v35 = objc_alloc_init(*(v20 + 2872));
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v36 = v19;
    v37 = [v36 countByEnumeratingWithState:&v77 objects:v93 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v78;
      do
      {
        for (j = 0; j != v38; ++j)
        {
          if (*v78 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = *(*(&v77 + 1) + 8 * j);
          v92 = 0;
          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v42 = [v36 objectForKeyedSubscript:v41];
          v43 = [v42 objectForKeyedSubscript:@"borderColor"];
          BYTE6(v91) = [v43 unsignedCharValue];

          v44 = [v42 objectForKeyedSubscript:@"compareFunction"];
          BYTE7(v91) = [v44 unsignedCharValue];

          v45 = [v42 objectForKeyedSubscript:@"lodMinClamp"];
          [v45 floatValue];
          LODWORD(v91) = v46;

          v47 = [v42 objectForKeyedSubscript:@"lodMaxClamp"];
          [v47 floatValue];
          HIDWORD(v90) = v48;

          v49 = [v42 objectForKeyedSubscript:@"lodBias"];
          [v49 floatValue];
          DWORD2(v90) = v50;

          v51 = [v42 objectForKeyedSubscript:@"lodAverage"];
          BYTE10(v91) = [v51 unsignedCharValue];

          v52 = [v42 objectForKeyedSubscript:@"minFilter"];
          BYTE12(v91) = [v52 unsignedCharValue];

          v53 = [v42 objectForKeyedSubscript:@"magFilter"];
          BYTE11(v91) = [v53 unsignedCharValue];

          v54 = [v42 objectForKeyedSubscript:@"mipFilter"];
          BYTE13(v91) = [v54 unsignedCharValue];

          v55 = [v42 objectForKeyedSubscript:@"maxAnisotropy"];
          *(&v88 + 1) = [v55 unsignedCharValue];

          v56 = [v42 objectForKeyedSubscript:@"normalizedCoordinates"];
          BYTE14(v91) = [v56 unsignedCharValue];

          v57 = [v42 objectForKeyedSubscript:@"pixelFormat"];
          WORD2(v91) = [v57 unsignedShortValue];

          v58 = [v42 objectForKeyedSubscript:@"reductionMode"];
          LOBYTE(v92) = [v58 unsignedCharValue];

          v59 = [v42 objectForKeyedSubscript:@"rAddressMode"];
          HIBYTE(v91) = [v59 unsignedCharValue];

          v60 = [v42 objectForKeyedSubscript:@"sAddressMode"];
          BYTE1(v92) = [v60 unsignedCharValue];

          v61 = [v42 objectForKeyedSubscript:@"tAddressMode"];
          BYTE3(v92) = [v61 unsignedCharValue];

          v62 = EncodeDYMTLSamplerDescriptor(&v88, 0, 0);
          v63 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v62];
          EncodeDYMTLSamplerDescriptor(&v88, [v63 mutableBytes], v62);
          v64 = [v63 copy];
          [v35 setObject:v64 forKeyedSubscript:v41];
        }

        v38 = [v36 countByEnumeratingWithState:&v77 objects:v93 count:16];
      }

      while (v38);
    }
  }

  else
  {
    v35 = v19;
  }

  v86[0] = @"DYMTLShaderDebuggerTrace";
  v86[1] = @"DYMTLShaderDebuggerMetadata";
  v87[0] = v71;
  v87[1] = v70;
  v86[2] = @"DYMTLShaderDebuggerResourceResolutionRemappingTables";
  v85[0] = @"DYMTLShaderDebuggerResourceResolutionRemappingTablesBytes";
  v85[1] = @"DYMTLShaderDebuggerResourceResolutionRemappingTablesTextures";
  *&v88 = v68;
  *(&v88 + 1) = v67;
  v85[2] = @"DYMTLShaderDebuggerResourceResolutionRemappingTablesSamplers";
  v85[3] = @"DYMTLShaderDebuggerResourceResolutionRemappingTablesBuffers";
  *&v89 = v66;
  *(&v89 + 1) = v76;
  v85[4] = @"DYMTLShaderDebuggerResourceResolutionRemappingTablesConstantSamplersReflection";
  *&v90 = v35;
  v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v88 forKeys:v85 count:5];
  v87[2] = v65;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:3];

  v8 = v74;
  a4 = v75;
  v9 = v73;
  if (v75)
  {
LABEL_7:
    if (!v13)
    {
      *a4 = GTShaderDebuggerMakeError(1u, @"Internal error: Unexpected response", 0, 0, 0);
    }
  }

LABEL_9:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __GTShaderDebuggerMakeRuntimeLibrariesFromSources_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v8 = [v7 pointerValue];

  v9 = [*(a1 + 32) objectForKeyedSubscript:v6];
  v10 = [v9 pointerValue];

  v11 = *(v8 + 176);
  v12 = *(v10 + 176);
  if (v11 == v12)
  {
    v13 = [v5 compare:v6];
  }

  else if (v11 > v12)
  {
    v13 = -1;
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

uint64_t _FindDylibObjectIDForParentLibrary(unint64_t **a1, uint64_t a2, uint64_t a3, apr_allocator_t *a4)
{
  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, a4);
  v6 = newpool;
  v7 = apr_array_make(newpool, 32, 8);
  GTMTLSMContext_getObjects(*(*(**a1 + 40) + 120), *a1[11], v7);
  nelts = v7->nelts;
  if (nelts < 1)
  {
LABEL_5:
    v10 = 0;
  }

  else
  {
    elts = v7->elts;
    while (*(*elts + 56) != *(a2 + 8))
    {
      elts += 8;
      if (!--nelts)
      {
        goto LABEL_5;
      }
    }

    v10 = *(*elts + 8);
  }

  apr_pool_destroy(v6);
  return v10;
}

uint64_t GTShaderDebuggerMakeRuntimeLibrariesFromMetallibs(id *a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2;
  [*(*a1 + 1) defaultDevice];
  v40 = v39 = a1;
  v6 = a1[11];
  v37 = v6;
  v38 = *(**a1 + 40);
  v7 = [a1[12] mutableCopy];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v8 = v5;
  v34 = [v8 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (!v34)
  {
    v9 = 0;
    goto LABEL_20;
  }

  v33 = a3;
  v9 = 0;
  v35 = *v44;
  v36 = v7;
  while (2)
  {
    for (i = 0; i != v34; ++i)
    {
      if (*v44 != v35)
      {
        objc_enumerationMutation(v8);
      }

      v11 = *(*(&v43 + 1) + 8 * i);
      AliasStream = GetAliasStream(*(**v39 + 24), [v11 unsignedIntegerValue], *v39[11]);
      if (AliasStream)
      {
        v13 = *AliasStream;
      }

      else
      {
        v13 = 0;
      }

      Function = GTMTLSMContext_lastFunction(*v38, v13, *v37);
      if (!Function)
      {
        if (v33)
        {
          GTShaderDebuggerMakeError(1u, @"Internal error: Library not found", 0, 0, 0);
          *v33 = v29 = 0;
        }

        else
        {
          v29 = 0;
        }

        v28 = v8;
        v7 = v36;
        goto LABEL_36;
      }

      v15 = Function;
      v16 = v8;
      v17 = [v8 objectForKeyedSubscript:v11];
      v18 = dispatch_data_create([v17 bytes], objc_msgSend(v17, "length"), 0, 0);
      v42 = v9;
      v19 = [v40 newLibraryWithData:v18 error:&v42];
      v20 = v42;

      if (!v19)
      {
        v7 = v36;
        if (v33)
        {
          GTShaderDebuggerMakeError(1u, @"Internal error: Failed to set up runtime library", 0, v20, 0);
          *v33 = v19 = 0;
        }

        else
        {
          v19 = 0;
        }

        v9 = v20;
        v8 = v16;
        goto LABEL_35;
      }

      if (*(v15 + 176) == 1)
      {
        v41 = v20;
        v21 = [v40 newDynamicLibrary:v19 error:&v41];
        v9 = v41;

        if (v21)
        {
          DylibObjectIDForParentLibrary = _FindDylibObjectIDForParentLibrary(v39, v15, v22, v23);
          v8 = v16;
          if (DylibObjectIDForParentLibrary)
          {
            v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:DylibObjectIDForParentLibrary];
            [v36 setObject:v21 forKeyedSubscript:v25];

            v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v15 + 8)];
            [v36 setObject:v19 forKeyedSubscript:v26];

            goto LABEL_16;
          }

          v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"Internal error: Failed to resolve dynamic library identifier %@", v11];
          if (v33)
          {
            *v33 = GTShaderDebuggerMakeError(1u, v30, 0, 0, 0);
          }
        }

        else
        {
          v8 = v16;
          if (v33)
          {
            *v33 = GTShaderDebuggerMakeError(1u, @"Internal error: Failed to set up runtime dynamic library", 0, v9, 0);
          }
        }

        v7 = v36;
LABEL_35:

        v29 = 0;
        v28 = v8;
        goto LABEL_36;
      }

      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v15 + 8)];
      [v36 setObject:v19 forKeyedSubscript:v21];
      v9 = v20;
      v8 = v16;
LABEL_16:
    }

    v7 = v36;
    v34 = [v8 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v34)
    {
      continue;
    }

    break;
  }

LABEL_20:

  v27 = [v7 copy];
  v28 = v39[12];
  v39[12] = v27;
  v29 = 1;
LABEL_36:

  v31 = *MEMORY[0x277D85DE8];
  return v29;
}

uint64_t GTShaderDebuggerMakeRuntimeLibrariesFromDependentLibs(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v36 = a1;
  v5 = [*(*a1 + 8) defaultDevice];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v39 = *v43;
    v35 = *MEMORY[0x277CD6A10];
    v37 = v7;
    obj = v8;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v43 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v13 = v6;
        v14 = *(*(&v42 + 1) + 8 * i);
        v15 = dispatch_data_create([v14 bytes], objc_msgSend(v14, "length"), 0, 0);
        v41 = v11;
        v16 = [v5 newLibraryWithData:v15 error:&v41];
        v17 = v41;

        if (!v16)
        {
          if ([v17 code] != 1)
          {
            goto LABEL_23;
          }

          v18 = [v17 domain];
          v19 = [v18 isEqualToString:v35];

          if (!v19)
          {
            goto LABEL_23;
          }

          v20 = GTShaderDebuggerMakeRuntimeLibrariesFromDependentLibs_lib_index++;
          v21 = [@"dylib-" stringByAppendingFormat:@"%llu.metallib", v20];
          v22 = [*(v36 + 200) stringByAppendingPathComponent:v21];
          if (([v14 writeToFile:v22 options:0 error:0] & 1) == 0)
          {

LABEL_23:
            if (a3)
            {
              *a3 = GTShaderDebuggerMakeError(1u, @"Internal error: Failed to set up dependent dynamic library", 0, v17, 0);
            }

            v11 = v17;
            v6 = v13;
LABEL_26:
            v7 = v37;
            v8 = obj;

            v31 = 0;
            v30 = obj;
            goto LABEL_27;
          }

          v23 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v22 isDirectory:0];
          v16 = [v5 newLibraryWithURL:v23 error:0];

          if (!v16)
          {
            goto LABEL_23;
          }
        }

        v24 = [v16 installName];
        v25 = [v24 containsString:@"libtracepoint"];

        if ((v25 & 1) == 0)
        {
          [v37 addObject:v16];
        }

        v40 = v17;
        v26 = [v5 newDynamicLibrary:v16 error:&v40];
        v11 = v40;

        if (!v26)
        {
          v6 = v13;
          if (a3)
          {
            *a3 = GTShaderDebuggerMakeError(1u, @"Internal error: Failed to set up dependent dynamic library", 0, v11, 0);
          }

          goto LABEL_26;
        }

        v6 = v13;
        [v13 addObject:v26];
      }

      v8 = obj;
      v10 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      v7 = v37;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

  v27 = [v6 copy];
  v28 = *(v36 + 112);
  *(v36 + 112) = v27;

  v29 = [v7 copy];
  v30 = *(v36 + 120);
  *(v36 + 120) = v29;
  v31 = 1;
LABEL_27:

  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

uint64_t GTShaderDebuggerMakeRuntimeFunctions(uint64_t a1, void *a2, void *a3)
{
  v81 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([v5 count])
  {
    v6 = [*(a1 + 96) mutableCopy];
    v62 = *(**a1 + 40);
    v63 = **(a1 + 88);
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    obj = v5;
    v60 = [obj countByEnumeratingWithState:&v75 objects:v80 count:16];
    if (v60)
    {
      v61 = *v76;
      v7 = &selRef_minPixelPosition;
      v56 = a3;
      v57 = v5;
      v59 = a1;
      do
      {
        v8 = 0;
        v55 = v7[35];
        do
        {
          if (*v76 != v61)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v75 + 1) + 8 * v8);
          v10 = _ObjectUIDsWithAliasID(a1, [v9 unsignedLongLongValue]);
          if (![v10 count] || (objc_msgSend(v10, "firstObject"), v11 = objc_claimAutoreleasedReturnValue(), Function = GTMTLSMContext_lastFunction(*v62, objc_msgSend(v11, "unsignedLongLongValue"), v63), v11, !Function))
          {
            v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"Internal error: Function '%@' not found", v9];
            v45 = v56;
            v5 = v57;
            v42 = obj;
            if (!v56)
            {
              goto LABEL_58;
            }

            goto LABEL_50;
          }

          v65 = v8;
          v13 = *(a1 + 96);
          v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:Function[5]];
          v15 = [v13 objectForKeyedSubscript:v14];

          if (!v15)
          {
            v46 = GTMTLSMContext_lastFunction(*v62, Function[5], v63);
            if (v46)
            {
              v47 = *(v46 + 177);
              v42 = obj;
              if (v47 > 7)
              {
                v48 = @"Unknown";
              }

              else
              {
                v48 = off_279658A40[v47];
              }
            }

            else
            {
              v48 = @"NULL";
              v42 = obj;
            }

            v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"Internal error: Failed to find runtime library (%@) for function '%@'", v48, v9];
            v45 = v56;
            v5 = v57;
            if (!v56)
            {
              goto LABEL_58;
            }

LABEL_50:
            *v45 = GTShaderDebuggerMakeError(1u, v44, 0, 0, 0);
LABEL_58:

            v43 = 0;
            goto LABEL_59;
          }

          v16 = v15;
          v17 = Function[15];
          v66 = v16;
          if (v17)
          {
            v18 = [*(*a1 + 8) functionMap];
            v19 = MakeMTLIntersectionFunctionDescriptor(v17);
            v74 = 0;
            v20 = [v16 newIntersectionFunctionWithDescriptor:v19 error:&v74];
            v21 = v74;
LABEL_14:
            v64 = v21;

            v22 = *(v17 + 8);
            goto LABEL_15;
          }

          v17 = Function[14];
          if (v17)
          {
            v18 = [*(*a1 + 8) functionMap];
            v19 = MakeMTLFunctionDescriptor(v17, v18);
            v73 = 0;
            v20 = [v16 newFunctionWithDescriptor:v19 error:&v73];
            v21 = v73;
            goto LABEL_14;
          }

          v22 = Function[7];
          if (!v22 || !*v22)
          {
            v49 = GTShaderDebuggerMakeError(1u, @"Capture did not resolve function name", 0, 0, 0);
            goto LABEL_52;
          }

          v32 = Function[9];
          v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:Function[7]];
          if (v32)
          {
            v34 = MakeMTLFunctionConstantValues(Function[9]);
            v72 = 0;
            v20 = [v66 newFunctionWithName:v33 constantValues:v34 error:&v72];
            v64 = v72;
          }

          else
          {
            v35 = [v66 newFunctionWithName:v33];

            v36 = v35;
            if ((objc_opt_respondsToSelector() & 1) != 0 && [v36 needsFunctionConstantValues])
            {
              v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:v22];
              v38 = objc_alloc_init(MEMORY[0x277CD6D68]);
              v71 = 0;
              v39 = [v66 newFunctionWithName:v37 constantValues:v38 error:&v71];
              v64 = v71;

              v20 = v36;
              if (v39)
              {
                v20 = v39;
              }
            }

            else
            {
              v64 = 0;
              v20 = v36;
            }
          }

LABEL_15:
          if (!v20)
          {
            v49 = v64;
LABEL_52:
            v50 = MEMORY[0x277CCACA8];
            if (v22)
            {
              v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:v22];
              v52 = [v50 stringWithFormat:@"Internal error: Failed to set up function '%@' (%@)", v51, v9];
            }

            else
            {
              v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"Internal error: Failed to set up function '%@' (%@)", @"NULL", v9];
            }

            v5 = v57;
            v42 = obj;
            if (v56)
            {
              *v56 = GTShaderDebuggerMakeError(2u, v52, 0, v49, 0);
            }

            v44 = v66;
            goto LABEL_58;
          }

          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          v23 = v10;
          v24 = [v23 countByEnumeratingWithState:&v67 objects:v79 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v68;
            do
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v68 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v28 = [*(*(&v67 + 1) + 8 * i) unsignedLongLongValue];
                v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v28];
                v30 = [v29 stringValue];
                [v20 setLabel:v30];

                v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v28];
                [v6 setObject:v20 forKeyedSubscript:v31];
              }

              v25 = [v23 countByEnumeratingWithState:&v67 objects:v79 count:16];
            }

            while (v25);
          }

          v8 = v65 + 1;
          a1 = v59;
        }

        while (v65 + 1 != v60);
        v40 = [obj countByEnumeratingWithState:&v75 objects:v80 count:16];
        v5 = v57;
        v7 = &selRef_minPixelPosition;
        v60 = v40;
      }

      while (v40);
    }

    v41 = [v6 copy];
    v42 = *(a1 + 96);
    *(a1 + 96) = v41;
    v43 = 1;
LABEL_59:
  }

  else if (a3)
  {
    GTShaderDebuggerMakeError(1u, @"Internal error: Entry function not found", 0, 0, 0);
    *a3 = v43 = 0;
  }

  else
  {
    v43 = 0;
  }

  v53 = *MEMORY[0x277D85DE8];
  return v43;
}