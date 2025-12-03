@interface SGThreadParser
+ (id)emailFrom:(id)from entity:(id)entity;
+ (id)ipsosMessageWithSearchableItem:(id)item;
+ (id)nextMessage:(id)message entity:(id)entity;
+ (id)stripChevrons:(id)chevrons;
+ (void)enumeratePreviousMessages:(id)messages inEntity:(id)entity usingBlock:(id)block;
@end

@implementation SGThreadParser

+ (id)ipsosMessageWithSearchableItem:(id)item
{
  v3 = [(SGMessage *)SGSimpleMailMessage messageWithSearchableItem:item];
  textContent = [v3 textContent];
  v5 = [textContent length];

  if (v5)
  {
    v6 = [SGNaturalLanguageDissector ipsosMessageWithMailMessage:v3 store:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)enumeratePreviousMessages:(id)messages inEntity:(id)entity usingBlock:(id)block
{
  messagesCopy = messages;
  entityCopy = entity;
  blockCopy = block;
  v10 = objc_autoreleasePoolPush();
  v11 = [SGThreadParser nextMessage:messagesCopy entity:entityCopy];
  objc_autoreleasePoolPop(v10);
  if (v11)
  {
    do
    {
      v12 = MEMORY[0x277D020E0];
      v13 = [v11 objectAtIndexedSubscript:1];
      v14 = [v12 namedEmailAddressWithFieldValue:v13];

      v15 = [v11 objectAtIndexedSubscript:0];
      emailAddress = [v14 emailAddress];
      v17 = SGNormalizeEmailAddress();
      blockCopy[2](blockCopy, v15, v17);

      v19 = [v11 objectAtIndexedSubscript:0];

      v18 = objc_autoreleasePoolPush();
      v11 = [SGThreadParser nextMessage:v19 entity:entityCopy];
      objc_autoreleasePoolPop(v18);
      messagesCopy = v19;
    }

    while (v11);
  }

  else
  {
    v19 = messagesCopy;
  }
}

+ (id)nextMessage:(id)message entity:(id)entity
{
  v72[2] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  entityCopy = entity;
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy__9240;
  v70 = __Block_byref_object_dispose__9241;
  v7 = messageCopy;
  v71 = v7;
  v63 = 0;
  v64[0] = &v63;
  v64[1] = 0x3032000000;
  v64[2] = __Block_byref_object_copy__9240;
  v64[3] = __Block_byref_object_dispose__9241;
  v65 = 0;
  v60 = 0;
  v61[0] = &v60;
  v61[1] = 0x3032000000;
  v61[2] = __Block_byref_object_copy__9240;
  v61[3] = __Block_byref_object_dispose__9241;
  v62 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__9240;
  v58 = __Block_byref_object_dispose__9241;
  v59 = 0;
  v8 = +[SGMailPatterns replyAttributionPattern];
  v9 = v67[5];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __37__SGThreadParser_nextMessage_entity___block_invoke;
  v53[3] = &unk_27894FD80;
  v53[4] = &v63;
  [v8 enumerateMatchesInString:v9 ngroups:0 block:v53];

  v10 = [SGMailPatterns headerPattern:@"From"];
  v11 = v67[5];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __37__SGThreadParser_nextMessage_entity___block_invoke_2;
  v52[3] = &unk_27894FD80;
  v52[4] = &v60;
  [v10 enumerateMatchesInString:v11 ngroups:0 block:v52];

  v12 = +[SGMailPatterns quotedRegionStartPattern];
  v13 = v67[5];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __37__SGThreadParser_nextMessage_entity___block_invoke_3;
  v51[3] = &unk_27894FD80;
  v51[4] = &v54;
  [v12 enumerateMatchesInString:v13 ngroups:0 block:v51];

  v14 = *(v64[0] + 40);
  if (!v14)
  {
    v16 = *(v61[0] + 40);
    if (!v16)
    {
      if (!v55[5])
      {
        v47 = 0;
        goto LABEL_28;
      }

      rangeValue2 = -1;
      goto LABEL_9;
    }

    rangeValue2 = -1;
LABEL_6:
    rangeValue = [v16 rangeValue];
    goto LABEL_10;
  }

  rangeValue2 = [v14 rangeValue];
  v16 = *(v61[0] + 40);
  if (v16)
  {
    goto LABEL_6;
  }

LABEL_9:
  rangeValue = -1;
LABEL_10:
  v18 = v55[5];
  if (v18 && (v19 = [v18 rangeValue], v19 < rangeValue2) && v19 < rangeValue)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = [v67[5] substringFromIndex:{objc_msgSend(v55[5], "rangeValue")}];
    v22 = v67[5];
    v67[5] = v21;

    v23 = [SGThreadParser stripChevrons:v67[5]];
    v24 = v67[5];
    v67[5] = v23;

    objc_autoreleasePoolPop(v20);
    v25 = &stru_284703F00;
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = v64;
    if (rangeValue2 >= rangeValue)
    {
      v27 = v61;
    }

    v28 = *(*v27 + 40);
    v29 = v67[5];
    rangeValue3 = [v28 rangeValue];
    v32 = [v29 substringWithRange:{rangeValue3, v31}];
    v33 = v67[5];
    rangeValue4 = [v28 rangeValue];
    [v28 rangeValue];
    v36 = [v33 substringFromIndex:v35 + rangeValue4];
    v37 = v67[5];
    v67[5] = v36;

    if (v28 == *(v61[0] + 40))
    {
      v38 = +[SGMailPatterns headersPattern];
      v39 = v67[5];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __37__SGThreadParser_nextMessage_entity___block_invoke_4;
      v50[3] = &unk_27894FD80;
      v50[4] = &v66;
      [v38 enumerateMatchesInString:v39 ngroups:0 block:v50];
    }

    v40 = patterns();
    v41 = [v40 regex2ForKey:@"NextLineQuoted"];
    v42 = [v41 existsInString:v67[5]];

    if (v42)
    {
      v43 = [SGThreadParser stripChevrons:v67[5]];
      v44 = v67[5];
      v67[5] = v43;
    }

    v45 = [SGThreadParser emailFrom:v32 entity:entityCopy];
    v46 = v45;
    if (v45)
    {
      v25 = v45;
    }

    else
    {
      v25 = &stru_284703F00;
    }

    objc_autoreleasePoolPop(v26);
  }

  if ([v67[5] length])
  {
    v72[0] = v67[5];
    v72[1] = v25;
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:2];
  }

  else
  {
    v47 = 0;
  }

LABEL_28:
  _Block_object_dispose(&v54, 8);

  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v63, 8);

  _Block_object_dispose(&v66, 8);
  v48 = *MEMORY[0x277D85DE8];

  return v47;
}

uint64_t __37__SGThreadParser_nextMessage_entity___block_invoke(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x277CCAE60] valueWithRange:{*a2, a2[1]}];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

uint64_t __37__SGThreadParser_nextMessage_entity___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x277CCAE60] valueWithRange:{*a2, a2[1]}];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

uint64_t __37__SGThreadParser_nextMessage_entity___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x277CCAE60] valueWithRange:{*a2, a2[1]}];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

uint64_t __37__SGThreadParser_nextMessage_entity___block_invoke_4(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [*(*(*(a1 + 32) + 8) + 40) substringFromIndex:a2[1]];
    objc_autoreleasePoolPop(v4);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  return 0;
}

+ (id)emailFrom:(id)from entity:(id)entity
{
  fromCopy = from;
  entityCopy = entity;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0x7FFFFFFFFFFFFFFFLL;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0x7FFFFFFFFFFFFFFFLL;
  v7 = patterns();
  v8 = [v7 regex2ForKey:@"Email"];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __35__SGThreadParser_emailFrom_entity___block_invoke;
  v36[3] = &unk_27894CBB8;
  v36[4] = &v41;
  v36[5] = &v37;
  [v8 enumerateMatchesInString:fromCopy ngroups:0 block:v36];

  v9 = v42[3];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL || v38[3] == v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = [fromCopy substringWithRange:{v42[3], v38[3] - v42[3]}];
    objc_autoreleasePoolPop(v11);
    emailToCanonicalEmailCache = [entityCopy emailToCanonicalEmailCache];
    v14 = [emailToCanonicalEmailCache objectForKeyedSubscript:v12];

    if (v14)
    {
      v10 = v14;
    }

    else
    {
      v15 = [fromCopy length] - 1;
      if (v38[3] < v15 && [fromCopy characterAtIndex:?] == 62)
      {
        ++v38[3];
      }

      v16 = v42[3];
      if (v16)
      {
        v17 = [fromCopy characterAtIndex:v16 - 1];
        v18 = v42[3];
        if (v17 == 60)
        {
          v42[3] = --v18;
        }

        if (v18)
        {
          v19 = [fromCopy characterAtIndex:v18 - 1];
          v20 = MEMORY[0x277D85DE0];
          if (v19 > 0x7F ? __maskrune(v19, 0x4000uLL) : *(MEMORY[0x277D85DE0] + 4 * v19 + 60) & 0x4000)
          {
            while (1)
            {
              v22 = v42[3];
              v42[3] = v22 - 1;
              if (v22 == 1)
              {
                break;
              }

              v23 = [fromCopy characterAtIndex:v22 - 2];
              if (v23 > 0x7F)
              {
                if (!__maskrune(v23, 0x4000uLL))
                {
LABEL_22:
                  v24 = v42[3];
                  if (v24)
                  {
                    v25 = [fromCopy characterAtIndex:v24 - 1];
                    v26 = v42;
                    v27 = v42[3];
                    if (v25 == 34)
                    {
                      while (1)
                      {
                        v28 = v27 - 1;
                        v26[3] = v28;
                        if (!v28)
                        {
                          break;
                        }

                        v29 = [fromCopy characterAtIndex:v28 - 1];
                        v26 = v42;
                        v27 = v42[3];
                        if (v29 == 34)
                        {
                          if (v27 && [fromCopy characterAtIndex:v27 - 1] == 34)
                          {
                            --v42[3];
                          }

                          goto LABEL_34;
                        }
                      }
                    }

                    else
                    {
                      for (; v27; v42[3] = v27)
                      {
                        v30 = [fromCopy characterAtIndex:v27 - 1];
                        if (v30 <= 0x3F && ((1 << v30) & 0x8400100200000000) != 0)
                        {
                          break;
                        }

                        if (v30 == 65306)
                        {
                          break;
                        }

                        v27 = v42[3] - 1;
                      }
                    }
                  }

                  break;
                }
              }

              else if ((*(v20 + 4 * v23 + 60) & 0x4000) == 0)
              {
                goto LABEL_22;
              }
            }
          }
        }
      }

LABEL_34:
      v31 = objc_autoreleasePoolPush();
      v32 = [fromCopy substringWithRange:{v42[3], v38[3] - v42[3]}];
      whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      v10 = [v32 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

      objc_autoreleasePoolPop(v31);
      emailToCanonicalEmailCache2 = [entityCopy emailToCanonicalEmailCache];
      [emailToCanonicalEmailCache2 setObject:v10 forKeyedSubscript:v12];
    }
  }

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);

  return v10;
}

uint64_t __35__SGThreadParser_emailFrom_entity___block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 24) = *a2;
  *(*(*(a1 + 40) + 8) + 24) = a2[1] + *(*(*(a1 + 32) + 8) + 24);
  return 0;
}

+ (id)stripChevrons:(id)chevrons
{
  v30 = *MEMORY[0x277D85DE8];
  chevronsCopy = chevrons;
  context = objc_autoreleasePoolPush();
  v4 = patterns();
  v21 = [v4 regex2ForKey:@"NonQuotedLinePart"];

  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v6 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = [chevronsCopy componentsSeparatedByString:@"\n"];
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = [v12 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
        if ([v14 length])
        {
          v15 = objc_autoreleasePoolPush();
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __32__SGThreadParser_stripChevrons___block_invoke;
          v22[3] = &unk_27894FA58;
          v23 = v6;
          v24 = v14;
          [v21 enumerateMatchesInString:v24 ngroups:1 block:v22];

          objc_autoreleasePoolPop(v15);
        }

        objc_autoreleasePoolPop(v13);
      }

      v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  v16 = [v6 _pas_componentsJoinedByString:@"\n"];
  v17 = [v16 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  objc_autoreleasePoolPop(context);
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

uint64_t __32__SGThreadParser_stripChevrons___block_invoke(uint64_t a1, void *a2)
{
  if (a2[1])
  {
    v4 = objc_autoreleasePoolPush();
    if (a2[4])
    {
      v5 = *(a1 + 32);
      v6 = [*(a1 + 40) substringWithRange:a2[3]];
      [v5 addObject:v6];
    }

    else
    {
      [*(a1 + 32) addObject:&stru_284703F00];
    }

    objc_autoreleasePoolPop(v4);
  }

  return 0;
}

@end