@interface DRSRequestAllStats
+ (id)statsForRequests:(id)a3;
- (id)terminalRequestProtobufRepresentation;
- (unint64_t)generateCoreAnalyticsEvents:(BOOL)a3;
@end

@implementation DRSRequestAllStats

- (id)terminalRequestProtobufRepresentation
{
  v106 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(DRSProtoDiagnosticRequestStatsBatch);
  v4 = DRSDeviceMetadata();
  v66 = v3;
  [(DRSProtoDiagnosticRequestStatsBatch *)v3 setClientMetadata:v4];

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v5 = [(DRSRequestAllStats *)self perBuildStats];
  v6 = [v5 objectEnumerator];

  obj = v6;
  v56 = [v6 countByEnumeratingWithState:&v96 objects:v105 count:16];
  if (v56)
  {
    v55 = *v97;
    do
    {
      v7 = 0;
      do
      {
        if (*v97 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v57 = v7;
        v8 = *(*(&v96 + 1) + 8 * v7);
        v92 = 0u;
        v93 = 0u;
        v94 = 0u;
        v95 = 0u;
        v9 = [v8 perTeamIDStats];
        v10 = [v9 objectEnumerator];

        v58 = v10;
        v60 = [v10 countByEnumeratingWithState:&v92 objects:v104 count:16];
        if (v60)
        {
          v59 = *v93;
          do
          {
            v11 = 0;
            do
            {
              if (*v93 != v59)
              {
                objc_enumerationMutation(v58);
              }

              v61 = v11;
              v12 = *(*(&v92 + 1) + 8 * v11);
              v88 = 0u;
              v89 = 0u;
              v90 = 0u;
              v91 = 0u;
              v13 = [v12 perIssueCategoryStats];
              v14 = [v13 objectEnumerator];

              v62 = v14;
              v64 = [v14 countByEnumeratingWithState:&v88 objects:v103 count:16];
              if (v64)
              {
                v63 = *v89;
                do
                {
                  v15 = 0;
                  do
                  {
                    if (*v89 != v63)
                    {
                      objc_enumerationMutation(v62);
                    }

                    v65 = v15;
                    v16 = *(*(&v88 + 1) + 8 * v15);
                    v84 = 0u;
                    v85 = 0u;
                    v86 = 0u;
                    v87 = 0u;
                    v17 = [v16 perIssueDescriptionStats];
                    v18 = [v17 objectEnumerator];

                    v67 = v18;
                    v69 = [v18 countByEnumeratingWithState:&v84 objects:v102 count:16];
                    if (v69)
                    {
                      v68 = *v85;
                      do
                      {
                        for (i = 0; i != v69; ++i)
                        {
                          if (*v85 != v68)
                          {
                            objc_enumerationMutation(v67);
                          }

                          v20 = *(*(&v84 + 1) + 8 * i);
                          v21 = [v20 requests];
                          v22 = [v21 firstObject];

                          if (v22)
                          {
                            v71 = i;
                            v23 = objc_alloc_init(DRSProtoDiagnosticRequestStats);
                            v24 = [v22 build];
                            [(DRSProtoDiagnosticRequestStats *)v23 setBuild:v24];

                            v25 = [v22 teamID];
                            [(DRSProtoDiagnosticRequestStats *)v23 setTeamId:v25];

                            v26 = [v22 issueCategory];
                            [(DRSProtoDiagnosticRequestStats *)v23 setIssueCategory:v26];

                            v70 = v22;
                            v27 = [v22 issueDescription];
                            [(DRSProtoDiagnosticRequestStats *)v23 setIssueDescription:v27];

                            v82 = 0u;
                            v83 = 0u;
                            v80 = 0u;
                            v81 = 0u;
                            v28 = [v20 perOutcomeStats];
                            v29 = [v28 objectEnumerator];

                            v74 = v29;
                            v30 = [v29 countByEnumeratingWithState:&v80 objects:v101 count:16];
                            if (v30)
                            {
                              v31 = v30;
                              v32 = *v81;
                              v72 = *v81;
                              do
                              {
                                v33 = 0;
                                v73 = v31;
                                do
                                {
                                  if (*v81 != v32)
                                  {
                                    objc_enumerationMutation(v74);
                                  }

                                  v34 = *(*(&v80 + 1) + 8 * v33);
                                  v35 = [v34 requests];
                                  v36 = [v35 firstObject];

                                  if (v36 && [v36 requestOutcome])
                                  {
                                    v75 = v36;
                                    v78 = 0u;
                                    v79 = 0u;
                                    v76 = 0u;
                                    v77 = 0u;
                                    v37 = [v34 perStateStats];
                                    v38 = [v37 objectEnumerator];

                                    v39 = [v38 countByEnumeratingWithState:&v76 objects:v100 count:16];
                                    if (v39)
                                    {
                                      v40 = v39;
                                      v41 = *v77;
                                      do
                                      {
                                        for (j = 0; j != v40; ++j)
                                        {
                                          if (*v77 != v41)
                                          {
                                            objc_enumerationMutation(v38);
                                          }

                                          v43 = *(*(&v76 + 1) + 8 * j);
                                          v44 = [v43 requests];
                                          v45 = [v44 firstObject];

                                          if (v45)
                                          {
                                            v46 = objc_alloc_init(DRSProtoDiagnosticRequestOutcomeBucket);
                                            -[DRSProtoDiagnosticRequestOutcomeBucket setCount:](v46, "setCount:", [v43 requestCount]);
                                            -[DRSProtoDiagnosticRequestOutcomeBucket setOutcome:](v46, "setOutcome:", [v45 requestOutcome]);
                                            -[DRSProtoDiagnosticRequestOutcomeBucket setRequestState:](v46, "setRequestState:", [v45 requestState]);
                                            [(DRSProtoDiagnosticRequestStats *)v23 addOutcomes:v46];
                                          }
                                        }

                                        v40 = [v38 countByEnumeratingWithState:&v76 objects:v100 count:16];
                                      }

                                      while (v40);
                                    }

                                    v32 = v72;
                                    v31 = v73;
                                    v36 = v75;
                                  }

                                  ++v33;
                                }

                                while (v33 != v31);
                                v31 = [v74 countByEnumeratingWithState:&v80 objects:v101 count:16];
                              }

                              while (v31);
                            }

                            v47 = [(DRSProtoDiagnosticRequestStats *)v23 outcomes];
                            v48 = [v47 count];

                            if (v48)
                            {
                              [(DRSProtoDiagnosticRequestStatsBatch *)v66 addRequestsResultsStats:v23];
                            }

                            v22 = v70;
                            i = v71;
                          }
                        }

                        v69 = [v67 countByEnumeratingWithState:&v84 objects:v102 count:16];
                      }

                      while (v69);
                    }

                    v15 = v65 + 1;
                  }

                  while (v65 + 1 != v64);
                  v64 = [v62 countByEnumeratingWithState:&v88 objects:v103 count:16];
                }

                while (v64);
              }

              v11 = v61 + 1;
            }

            while (v61 + 1 != v60);
            v60 = [v58 countByEnumeratingWithState:&v92 objects:v104 count:16];
          }

          while (v60);
        }

        v7 = v57 + 1;
      }

      while (v57 + 1 != v56);
      v56 = [obj countByEnumeratingWithState:&v96 objects:v105 count:16];
    }

    while (v56);
  }

  v49 = [(DRSProtoDiagnosticRequestStatsBatch *)v66 requestsResultsStats];
  v50 = [v49 count];

  if (v50)
  {
    v51 = v66;
  }

  else
  {
    v51 = 0;
  }

  v52 = *MEMORY[0x277D85DE8];

  return v51;
}

- (unint64_t)generateCoreAnalyticsEvents:(BOOL)a3
{
  v74 = a3;
  v108 = *MEMORY[0x277D85DE8];
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v3 = [(DRSRequestAllStats *)self perBuildStats];
  v4 = [v3 objectEnumerator];

  obj = v4;
  v54 = [v4 countByEnumeratingWithState:&v96 objects:v107 count:16];
  if (v54)
  {
    v75 = 0;
    v53 = *v97;
    do
    {
      v5 = 0;
      do
      {
        if (*v97 != v53)
        {
          v6 = v5;
          objc_enumerationMutation(obj);
          v5 = v6;
        }

        v55 = v5;
        v7 = *(*(&v96 + 1) + 8 * v5);
        v92 = 0u;
        v93 = 0u;
        v94 = 0u;
        v95 = 0u;
        v8 = [v7 perTeamIDStats];
        v9 = [v8 objectEnumerator];

        v56 = v9;
        v58 = [v9 countByEnumeratingWithState:&v92 objects:v106 count:16];
        if (v58)
        {
          v57 = *v93;
          do
          {
            v10 = 0;
            do
            {
              if (*v93 != v57)
              {
                v11 = v10;
                objc_enumerationMutation(v56);
                v10 = v11;
              }

              v59 = v10;
              v12 = *(*(&v92 + 1) + 8 * v10);
              v88 = 0u;
              v89 = 0u;
              v90 = 0u;
              v91 = 0u;
              v13 = [v12 perIssueCategoryStats];
              v14 = [v13 objectEnumerator];

              v60 = v14;
              v62 = [v14 countByEnumeratingWithState:&v88 objects:v105 count:16];
              if (v62)
              {
                v61 = *v89;
                do
                {
                  v15 = 0;
                  do
                  {
                    if (*v89 != v61)
                    {
                      v16 = v15;
                      objc_enumerationMutation(v60);
                      v15 = v16;
                    }

                    v63 = v15;
                    v17 = *(*(&v88 + 1) + 8 * v15);
                    v84 = 0u;
                    v85 = 0u;
                    v86 = 0u;
                    v87 = 0u;
                    v18 = [v17 perIssueDescriptionStats];
                    v19 = [v18 objectEnumerator];

                    v64 = v19;
                    v66 = [v19 countByEnumeratingWithState:&v84 objects:v104 count:16];
                    if (v66)
                    {
                      v65 = *v85;
                      do
                      {
                        v20 = 0;
                        do
                        {
                          if (*v85 != v65)
                          {
                            objc_enumerationMutation(v64);
                          }

                          v68 = v20;
                          v21 = *(*(&v84 + 1) + 8 * v20);
                          v22 = [v21 requests];
                          v23 = [v22 firstObject];

                          if (v23)
                          {
                            v102[0] = kTeamIDKey;
                            v24 = [v23 teamID];
                            v103[0] = v24;
                            v102[1] = kDiagnosticRequestStatsKey_IssueCategory;
                            v25 = [v23 issueCategory];
                            v103[1] = v25;
                            v102[2] = kDiagnosticRequestStatsKey_IssueDescription;
                            v67 = v23;
                            v26 = [v23 issueDescription];
                            v103[2] = v26;
                            v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:v102 count:3];

                            v82 = 0u;
                            v83 = 0u;
                            v80 = 0u;
                            v81 = 0u;
                            v28 = [v21 perOutcomeStats];
                            v29 = [v28 objectEnumerator];

                            v71 = v29;
                            v30 = [v29 countByEnumeratingWithState:&v80 objects:v101 count:16];
                            if (v30)
                            {
                              v31 = v30;
                              v32 = *v81;
                              v69 = *v81;
                              do
                              {
                                v33 = 0;
                                v70 = v31;
                                do
                                {
                                  if (*v81 != v32)
                                  {
                                    objc_enumerationMutation(v71);
                                  }

                                  v34 = *(*(&v80 + 1) + 8 * v33);
                                  v35 = [v34 requests];
                                  v36 = [v35 firstObject];

                                  if (v36 && [v36 requestOutcome])
                                  {
                                    v72 = v36;
                                    v73 = v33;
                                    v78 = 0u;
                                    v79 = 0u;
                                    v76 = 0u;
                                    v77 = 0u;
                                    v37 = [v34 perStateStats];
                                    v38 = [v37 objectEnumerator];

                                    v39 = [v38 countByEnumeratingWithState:&v76 objects:v100 count:16];
                                    if (v39)
                                    {
                                      v40 = v39;
                                      v41 = *v77;
                                      do
                                      {
                                        for (i = 0; i != v40; ++i)
                                        {
                                          if (*v77 != v41)
                                          {
                                            objc_enumerationMutation(v38);
                                          }

                                          v43 = *(*(&v76 + 1) + 8 * i);
                                          v44 = [v43 requests];
                                          v45 = [v44 firstObject];

                                          if (v45 && [v43 requestCount])
                                          {
                                            v46 = [v27 mutableCopy];
                                            v47 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v43, "requestCount")}];
                                            [v46 setObject:v47 forKeyedSubscript:kDiagnosticRequestStatsKey_RequestCount];

                                            v48 = [v34 requestOutcome];
                                            [v46 setObject:v48 forKeyedSubscript:kDiagnosticRequestStatsKey_RequestOutcome];

                                            v49 = [v43 requestState];
                                            [v46 setObject:v49 forKeyedSubscript:kDiagnosticRequestStatsKey_RequestState];

                                            if (v74)
                                            {
                                              DRSCoreAnalyticsSendEvent(kDiagnosticRequestStatsName, v46);
                                            }

                                            ++v75;
                                          }
                                        }

                                        v40 = [v38 countByEnumeratingWithState:&v76 objects:v100 count:16];
                                      }

                                      while (v40);
                                    }

                                    v32 = v69;
                                    v31 = v70;
                                    v36 = v72;
                                    v33 = v73;
                                  }

                                  ++v33;
                                }

                                while (v33 != v31);
                                v31 = [v71 countByEnumeratingWithState:&v80 objects:v101 count:16];
                              }

                              while (v31);
                            }

                            v23 = v67;
                          }

                          v20 = v68 + 1;
                        }

                        while (v68 + 1 != v66);
                        v66 = [v64 countByEnumeratingWithState:&v84 objects:v104 count:16];
                      }

                      while (v66);
                    }

                    v15 = v63 + 1;
                  }

                  while (v63 + 1 != v62);
                  v62 = [v60 countByEnumeratingWithState:&v88 objects:v105 count:16];
                }

                while (v62);
              }

              v10 = v59 + 1;
            }

            while (v59 + 1 != v58);
            v58 = [v56 countByEnumeratingWithState:&v92 objects:v106 count:16];
          }

          while (v58);
        }

        v5 = v55 + 1;
      }

      while (v55 + 1 != v54);
      v54 = [obj countByEnumeratingWithState:&v96 objects:v107 count:16];
    }

    while (v54);
  }

  else
  {
    v75 = 0;
  }

  v50 = *MEMORY[0x277D85DE8];
  return v75;
}

+ (id)statsForRequests:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(DRSRequestAllStats);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(DRSRequestStats *)v4 addRequest:*(*(&v13 + 1) + 8 * i), v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if ([(DRSRequestStats *)v4 requestCount])
  {
    v10 = v4;
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end