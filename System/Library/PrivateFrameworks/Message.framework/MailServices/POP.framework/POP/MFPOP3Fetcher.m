@interface MFPOP3Fetcher
+ (int64_t)_fetchWithAccount:(id)a3 intoQueue:(id)a4 newMessages:(unint64_t)a5 oldMessages:(unint64_t)a6 preservingUID:(id)a7 withStore:(id)a8;
+ (int64_t)fetchWithAccount:(id)a3 newMessages:(unint64_t)a4 oldMessages:(unint64_t)a5 preservingUID:(id)a6 withStore:(id)a7;
@end

@implementation MFPOP3Fetcher

+ (int64_t)_fetchWithAccount:(id)a3 intoQueue:(id)a4 newMessages:(unint64_t)a5 oldMessages:(unint64_t)a6 preservingUID:(id)a7 withStore:(id)a8
{
  v129 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v122 = a7;
  v119 = a8;
  v124 = v11;
  v117 = v12;
  v120 = [v11 library];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("+[MFPOP3Fetcher _fetchWithAccount:intoQueue:newMessages:oldMessages:preservingUID:withStore:]", "MFPOP3Fetcher.m", 105, "[library isKindOfClass:[MFMailMessageLibrary class]]");
  }

  v13 = objc_alloc(MEMORY[0x277D28268]);
  v14 = [v11 URLString];
  v15 = [v13 initWithLibrary:v120 URLString:v14];

  v118 = v15;
  objc_storeStrong(v12 + 6, v15);
  v16 = objc_autoreleasePoolPush();
  if (a5)
  {
    [v11 releaseAllConnections];
  }

  v17 = MFLogGeneral();
  context = v16;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = [v11 hostname];
    [MFPOP3Fetcher _fetchWithAccount:v18 intoQueue:v128 newMessages:? oldMessages:? preservingUID:? withStore:?];
  }

  v19 = [v11 authenticatedConnection];
  v121 = v19;
  [v19 setIsFetching:1];
  if (v19)
  {
    v20 = MFLogGeneral();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = [v11 hostname];
      [MFPOP3Fetcher _fetchWithAccount:v21 intoQueue:v127 newMessages:? oldMessages:? preservingUID:? withStore:?];
    }

    v22 = v19;
    v23 = v11;
    if (([v19 messagesAvailable] & 1) == 0)
    {
      [v19 doStat];
    }

    if (![v19 messagesAvailable])
    {
      if (objc_opt_respondsToSelector())
      {
        [v119 setServerMessageCount:0];
      }

      if (objc_opt_respondsToSelector())
      {
        [v119 setServerUnreadOnlyOnServerCount:0];
      }

      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      goto LABEL_145;
    }

    v109 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v24 = [v19 numberOfMessagesAvailable];
    v25 = [v124 numberOfKnownUIDs];
    if (!v25)
    {
      v25 = [v118 numberOfMessageIDs];
      [v124 setNumberOfKnownUIDs:v25];
    }

    if (a6 || !v24 || v24 != v25)
    {
      if (!v24)
      {
        goto LABEL_20;
      }

      goto LABEL_30;
    }

    v26 = [v19 idForMessageNumber:1];
    v27 = [v124 oldestKnownMessageUID];
    if (!v27)
    {
      v42 = [MEMORY[0x277CBEB98] setWithObject:v26];
      v43 = [v118 knownMessageIDsFromSet:v42];

      if (![v43 count])
      {
        v27 = v43;
        goto LABEL_49;
      }

      v27 = [v43 anyObject];
      [v124 setOldestKnownMessageUID:v27];

      v23 = v124;
      if (!v27)
      {
        goto LABEL_50;
      }
    }

    if (v24 == 1)
    {
      v28 = [v27 isEqual:v26];

      v23 = v124;
      if (v28)
      {
LABEL_20:
        if ((objc_opt_respondsToSelector() & 1) != 0 && [v119 serverMessageCount] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v29 = 0;
        }

        else
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            v110 = 0;
            v29 = 0;
            v37 = 0;
            v36 = 0;
            v38 = 0;
            goto LABEL_53;
          }

          v34 = [v119 serverUnreadOnlyOnServerCount];
          v35 = 0;
          if (v34)
          {
            v36 = 0;
            v37 = 0;
            v38 = 0;
            v29 = 0;
LABEL_52:
            v110 = v35;
LABEL_53:
            v123 = v38;
            v47 = [v38 count];
            v48 = v110;
            if (!v36)
            {
              v48 = 0;
            }

            if (v48 == 1)
            {
              v49 = [MEMORY[0x277CBEB58] setWithCapacity:v47];
              v50 = MEMORY[0x277CBEB98];
              v51 = [v124 library];
              v52 = [v124 URLString];
              v53 = [v51 hiddenPOPUIDsInMailbox:v52];
              v113 = [v50 setWithArray:v53];

              v54 = MEMORY[0x277CBEB98];
              v55 = [v124 library];
              v56 = [v124 URLString];
              v57 = [v55 allUIDsInMailbox:v56];
              v58 = [v54 setWithArray:v57];

              if (v47)
              {
                v59 = 0;
                v60 = 0;
                v61 = 1;
                do
                {
                  v62 = [v123 objectAtIndexedSubscript:v59];
                  v63 = [v36 objectForKeyedSubscript:v62];

                  [v49 addObject:v63];
                  v59 = v61;
                  v64 = v47 > v61++;
                  v60 = v63;
                }

                while (v64);
              }

              else
              {
                v63 = 0;
              }

              v71 = [MEMORY[0x277CBEB58] setWithSet:v49];
              [v71 unionSet:v58];
              [v71 minusSet:v113];
              v106 = [v71 count];
              [v71 setSet:v49];
              [v71 minusSet:v58];
              v108 = [v71 count];

              v23 = v124;
              if (!v29)
              {
                goto LABEL_68;
              }
            }

            else
            {
              v63 = 0;
              v106 = 0x7FFFFFFFFFFFFFFFLL;
              v108 = 0x7FFFFFFFFFFFFFFFLL;
              if (!v29)
              {
LABEL_68:
                v32 = 0;
                v31 = 0;
                v30 = 0;
                v22 = v121;
                goto LABEL_129;
              }
            }

            if (!v37)
            {
              v32 = 0;
              v31 = 0;
              v69 = v121;
              [v121 quit];
              v70 = 0;
              v30 = 0;
LABEL_128:

              v22 = v70;
LABEL_129:
              if (([v117 flush] & 1) == 0)
              {
                [v22 quit];

                v22 = 0;
              }

              if (v110)
              {
                if (objc_opt_respondsToSelector())
                {
                  [v119 setServerMessageCount:v106];
                }

                if (objc_opt_respondsToSelector())
                {
                  [v119 setServerUnreadOnlyOnServerCount:v108];
                }
              }

              v33 = 0;
              if (v22)
              {
                v23 = v124;
                if (!v31)
                {
LABEL_145:
                  [v23 checkInConnection:v22 currentUIDs:v33];

                  v19 = v121;
                  goto LABEL_146;
                }

                v96 = [v32 count];
                if (v96)
                {
                  for (i = 0; i != v96; ++i)
                  {
                    v98 = [v32 objectAtIndexedSubscript:i];
                    [v31 removeObjectForKey:v98];

                    v23 = v124;
                  }
                }

                v33 = [v31 allValues];
                if (!v32)
                {
                  [v118 deleteUIDsNotInArray:v33];

                  v33 = 0;
                  v23 = v124;
                }

                v99 = [v31 count];
                [v23 setNumberOfKnownUIDs:v99];
                v100 = [v31 objectForKeyedSubscript:&unk_2869E1140];
                [v23 setOldestKnownMessageUID:v100];

                v101 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v99];
                v102 = [v31 objectForKeyedSubscript:v101];
                [v124 setNewestKnownMessageUID:v102];
              }

              v23 = v124;
              goto LABEL_145;
            }

            v65 = [v23 messageDeletionPolicy];
            if (v65 == 2)
            {
              v72 = [v23 delayedMessageDeletionInterval];
              v73 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-(86400 * v72)];
              [v73 timeIntervalSinceReferenceDate];
              v75 = v74;

              v68 = [v118 messageIDsAddedBeforeDate:v75];
            }

            else if (v65 == 3)
            {
              v66 = [v23 library];
              v67 = [v23 URLString];
              v68 = [v66 UIDsToDeleteInMailbox:v67];
            }

            else
            {
              v68 = 0;
            }

            v31 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v47];
            v114 = v68;
            if (v122)
            {
              if (v36)
              {
                if (v47)
                {
                  v76 = v47 - 1;
                  do
                  {
                    v77 = [v123 objectAtIndexedSubscript:v76];
                    v78 = [v36 objectForKeyedSubscript:v77];
                    v79 = [v78 isEqual:v122];

                    v80 = (v76-- == 0) | v79;
                  }

                  while ((v80 & 1) == 0);
                  if (v79)
                  {
LABEL_79:
                    if (v47)
                    {
                      v105 = 0;
                      v81 = 0;
                      v111 = 0;
                      v32 = 0;
                      v82 = v47 - 1;
                      v107 = *MEMORY[0x277D06FE0];
                      while (1)
                      {
                        v83 = [v123 objectAtIndexedSubscript:v82];
                        v84 = v83;
                        if (v36)
                        {
                          [v36 objectForKeyedSubscript:v83];
                          v63 = v85 = v63;
                        }

                        else
                        {
                          v85 = [v121 copyMessageHeaderForMessageNumber:{objc_msgSend(v83, "unsignedLongValue")}];
                          v86 = [(__CFString *)v85 firstHeaderForKey:v107];

                          if (v86)
                          {
                            v63 = v86;
                          }

                          else
                          {
                            v63 = @"Missing Message-ID";
                          }
                        }

                        if ([v114 containsObject:v63])
                        {
                          if (!v32)
                          {
                            v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
                          }

                          [v32 addObject:v84];
                        }

                        else
                        {
                          v87 = [MEMORY[0x277CBEB98] setWithObjects:{v63, 0}];
                          v88 = [v118 knownMessageIDsFromSet:v87];
                          v89 = [v88 count] == 0;

                          if (!v89)
                          {
                            goto LABEL_91;
                          }

                          if (v111)
                          {
                            if (a6 <= v105)
                            {
                              if (!v122)
                              {
                                v111 = 1;
                                goto LABEL_94;
                              }

                              if (v81)
                              {
                                v111 = 1;
LABEL_93:
                                v81 |= [(__CFString *)v63 isEqualToString:?];
                                goto LABEL_94;
                              }
                            }

                            v90 = v108 - 1;
                            if (!v108)
                            {
                              v90 = 0;
                            }

                            v108 = v90;
                            [v109 addObject:v84];
                            LODWORD(v105) = v105 + 1;
LABEL_91:
                            v111 = 1;
                            goto LABEL_92;
                          }

                          if (HIDWORD(v105) >= a5 && (v122 == 0) | v81 & 1)
                          {
                            v111 = 0;
                          }

                          else
                          {
                            [v109 addObject:v84];
                            v111 = 0;
                            v91 = v108 - 1;
                            if (!v108)
                            {
                              v91 = 0;
                            }

                            v108 = v91;
                            ++HIDWORD(v105);
                            v92 = a6 - 1;
                            if (!a6)
                            {
                              v92 = 0;
                            }

                            a6 = v92;
                          }
                        }

LABEL_92:
                        if (v122)
                        {
                          goto LABEL_93;
                        }

LABEL_94:
                        [v31 setObject:v63 forKeyedSubscript:v84];

                        if (--v82 == -1)
                        {
                          v93 = HIDWORD(v105) == 0;
                          goto LABEL_114;
                        }
                      }
                    }

                    v32 = 0;
                    v93 = 1;
LABEL_114:
                    v30 = [v109 count];
                    if (v30)
                    {
                      if ([v121 fetchMessages:v109 intoQueue:v117 serverIDsByNumber:v36])
                      {
                        [v121 quit];
                        v94 = 0;
                        v30 = 0;
                        v95 = v121;
LABEL_121:

LABEL_122:
                        if (v32 && [v32 count] && objc_msgSend(v94, "deleteMessagesOnServer:", v32))
                        {
                          [v94 quit];

                          v70 = 0;
                        }

                        else
                        {
                          v70 = v94;
                        }

                        v69 = v114;
                        goto LABEL_128;
                      }

                      if (!v93)
                      {
                        v95 = [MEMORY[0x277D281F0] currentMonitor];
                        [v95 setGotNewMessagesState:1];
                        v94 = v121;
                        goto LABEL_121;
                      }
                    }

                    v94 = v121;
                    goto LABEL_122;
                  }
                }
              }
            }

            v122 = 0;
            goto LABEL_79;
          }

          v29 = 0;
        }

LABEL_51:
        v126 = 0;
        v125 = 0;
        v46 = [v121 getMessageNumbers:&v126 andMessageIdsByNumber:&v125];
        v38 = v126;
        v36 = v125;
        v37 = v46 == 0;
        v35 = 1;
        goto LABEL_52;
      }

LABEL_30:
      v29 = 1;
      goto LABEL_51;
    }

    v39 = [v121 idForMessageNumber:v24];
    v40 = [v23 newestKnownMessageUID];
    if (!v40)
    {
      v45 = [MEMORY[0x277CBEB98] setWithObject:v39];
      v44 = [v118 knownMessageIDsFromSet:v45];

      if (![v44 count])
      {
LABEL_46:

LABEL_47:
LABEL_49:

LABEL_50:
        v29 = 1;
        v23 = v124;
        goto LABEL_51;
      }

      v40 = [v44 anyObject];
      [v124 setNewestKnownMessageUID:v40];

      if (!v40)
      {
        goto LABEL_47;
      }
    }

    if ([v27 isEqual:v26])
    {
      v41 = [v40 isEqual:v39];

      v23 = v124;
      if (v41)
      {
        goto LABEL_20;
      }

      goto LABEL_30;
    }

    v44 = v40;
    goto LABEL_46;
  }

  v22 = 0;
  v30 = -1;
LABEL_146:
  [v19 setIsFetching:0];

  objc_autoreleasePoolPop(context);
  v103 = *MEMORY[0x277D85DE8];
  return v30;
}

+ (int64_t)fetchWithAccount:(id)a3 newMessages:(unint64_t)a4 oldMessages:(unint64_t)a5 preservingUID:(id)a6 withStore:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = objc_alloc_init(MFPOPDownloadQueue);
  v16 = [v12 primaryMailboxUid];
  mailbox = v15->_mailbox;
  v15->_mailbox = v16;

  v18 = [v12 library];
  library = v15->_library;
  v15->_library = v18;

  v20 = [a1 _fetchWithAccount:v12 intoQueue:v15 newMessages:a4 oldMessages:a5 preservingUID:v13 withStore:v14];
  return v20;
}

+ (void)_fetchWithAccount:(void *)a1 intoQueue:(uint64_t)a2 newMessages:oldMessages:preservingUID:withStore:.cold.1(void *a1, uint64_t a2)
{
  v3 = a1;
  *a2 = 138412290;
  *(a2 + 4) = v3;
  OUTLINED_FUNCTION_0(&dword_258B68000, v4, v5, "%@: Connecting... starting");
}

+ (void)_fetchWithAccount:(void *)a1 intoQueue:(uint64_t)a2 newMessages:oldMessages:preservingUID:withStore:.cold.2(void *a1, uint64_t a2)
{
  v3 = a1;
  *a2 = 138412290;
  *(a2 + 4) = v3;
  OUTLINED_FUNCTION_0(&dword_258B68000, v4, v5, "%@: Connecting... completed");
}

@end