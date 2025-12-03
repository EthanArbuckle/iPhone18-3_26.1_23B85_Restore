@interface DRSRequestAllStats
+ (id)statsForRequests:(id)requests;
- (id)terminalRequestProtobufRepresentation;
- (unint64_t)generateCoreAnalyticsEvents:(BOOL)events;
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
  perBuildStats = [(DRSRequestAllStats *)self perBuildStats];
  objectEnumerator = [perBuildStats objectEnumerator];

  obj = objectEnumerator;
  v56 = [objectEnumerator countByEnumeratingWithState:&v96 objects:v105 count:16];
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
        perTeamIDStats = [v8 perTeamIDStats];
        objectEnumerator2 = [perTeamIDStats objectEnumerator];

        v58 = objectEnumerator2;
        v60 = [objectEnumerator2 countByEnumeratingWithState:&v92 objects:v104 count:16];
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
              perIssueCategoryStats = [v12 perIssueCategoryStats];
              objectEnumerator3 = [perIssueCategoryStats objectEnumerator];

              v62 = objectEnumerator3;
              v64 = [objectEnumerator3 countByEnumeratingWithState:&v88 objects:v103 count:16];
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
                    perIssueDescriptionStats = [v16 perIssueDescriptionStats];
                    objectEnumerator4 = [perIssueDescriptionStats objectEnumerator];

                    v67 = objectEnumerator4;
                    v69 = [objectEnumerator4 countByEnumeratingWithState:&v84 objects:v102 count:16];
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
                          requests = [v20 requests];
                          firstObject = [requests firstObject];

                          if (firstObject)
                          {
                            v71 = i;
                            v23 = objc_alloc_init(DRSProtoDiagnosticRequestStats);
                            build = [firstObject build];
                            [(DRSProtoDiagnosticRequestStats *)v23 setBuild:build];

                            teamID = [firstObject teamID];
                            [(DRSProtoDiagnosticRequestStats *)v23 setTeamId:teamID];

                            issueCategory = [firstObject issueCategory];
                            [(DRSProtoDiagnosticRequestStats *)v23 setIssueCategory:issueCategory];

                            v70 = firstObject;
                            issueDescription = [firstObject issueDescription];
                            [(DRSProtoDiagnosticRequestStats *)v23 setIssueDescription:issueDescription];

                            v82 = 0u;
                            v83 = 0u;
                            v80 = 0u;
                            v81 = 0u;
                            perOutcomeStats = [v20 perOutcomeStats];
                            objectEnumerator5 = [perOutcomeStats objectEnumerator];

                            v74 = objectEnumerator5;
                            v30 = [objectEnumerator5 countByEnumeratingWithState:&v80 objects:v101 count:16];
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
                                  requests2 = [v34 requests];
                                  firstObject2 = [requests2 firstObject];

                                  if (firstObject2 && [firstObject2 requestOutcome])
                                  {
                                    v75 = firstObject2;
                                    v78 = 0u;
                                    v79 = 0u;
                                    v76 = 0u;
                                    v77 = 0u;
                                    perStateStats = [v34 perStateStats];
                                    objectEnumerator6 = [perStateStats objectEnumerator];

                                    v39 = [objectEnumerator6 countByEnumeratingWithState:&v76 objects:v100 count:16];
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
                                            objc_enumerationMutation(objectEnumerator6);
                                          }

                                          v43 = *(*(&v76 + 1) + 8 * j);
                                          requests3 = [v43 requests];
                                          firstObject3 = [requests3 firstObject];

                                          if (firstObject3)
                                          {
                                            v46 = objc_alloc_init(DRSProtoDiagnosticRequestOutcomeBucket);
                                            -[DRSProtoDiagnosticRequestOutcomeBucket setCount:](v46, "setCount:", [v43 requestCount]);
                                            -[DRSProtoDiagnosticRequestOutcomeBucket setOutcome:](v46, "setOutcome:", [firstObject3 requestOutcome]);
                                            -[DRSProtoDiagnosticRequestOutcomeBucket setRequestState:](v46, "setRequestState:", [firstObject3 requestState]);
                                            [(DRSProtoDiagnosticRequestStats *)v23 addOutcomes:v46];
                                          }
                                        }

                                        v40 = [objectEnumerator6 countByEnumeratingWithState:&v76 objects:v100 count:16];
                                      }

                                      while (v40);
                                    }

                                    v32 = v72;
                                    v31 = v73;
                                    firstObject2 = v75;
                                  }

                                  ++v33;
                                }

                                while (v33 != v31);
                                v31 = [v74 countByEnumeratingWithState:&v80 objects:v101 count:16];
                              }

                              while (v31);
                            }

                            outcomes = [(DRSProtoDiagnosticRequestStats *)v23 outcomes];
                            v48 = [outcomes count];

                            if (v48)
                            {
                              [(DRSProtoDiagnosticRequestStatsBatch *)v66 addRequestsResultsStats:v23];
                            }

                            firstObject = v70;
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

  requestsResultsStats = [(DRSProtoDiagnosticRequestStatsBatch *)v66 requestsResultsStats];
  v50 = [requestsResultsStats count];

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

- (unint64_t)generateCoreAnalyticsEvents:(BOOL)events
{
  eventsCopy = events;
  v108 = *MEMORY[0x277D85DE8];
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  perBuildStats = [(DRSRequestAllStats *)self perBuildStats];
  objectEnumerator = [perBuildStats objectEnumerator];

  obj = objectEnumerator;
  v54 = [objectEnumerator countByEnumeratingWithState:&v96 objects:v107 count:16];
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
        perTeamIDStats = [v7 perTeamIDStats];
        objectEnumerator2 = [perTeamIDStats objectEnumerator];

        v56 = objectEnumerator2;
        v58 = [objectEnumerator2 countByEnumeratingWithState:&v92 objects:v106 count:16];
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
              perIssueCategoryStats = [v12 perIssueCategoryStats];
              objectEnumerator3 = [perIssueCategoryStats objectEnumerator];

              v60 = objectEnumerator3;
              v62 = [objectEnumerator3 countByEnumeratingWithState:&v88 objects:v105 count:16];
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
                    perIssueDescriptionStats = [v17 perIssueDescriptionStats];
                    objectEnumerator4 = [perIssueDescriptionStats objectEnumerator];

                    v64 = objectEnumerator4;
                    v66 = [objectEnumerator4 countByEnumeratingWithState:&v84 objects:v104 count:16];
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
                          requests = [v21 requests];
                          firstObject = [requests firstObject];

                          if (firstObject)
                          {
                            v102[0] = kTeamIDKey;
                            teamID = [firstObject teamID];
                            v103[0] = teamID;
                            v102[1] = kDiagnosticRequestStatsKey_IssueCategory;
                            issueCategory = [firstObject issueCategory];
                            v103[1] = issueCategory;
                            v102[2] = kDiagnosticRequestStatsKey_IssueDescription;
                            v67 = firstObject;
                            issueDescription = [firstObject issueDescription];
                            v103[2] = issueDescription;
                            v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:v102 count:3];

                            v82 = 0u;
                            v83 = 0u;
                            v80 = 0u;
                            v81 = 0u;
                            perOutcomeStats = [v21 perOutcomeStats];
                            objectEnumerator5 = [perOutcomeStats objectEnumerator];

                            v71 = objectEnumerator5;
                            v30 = [objectEnumerator5 countByEnumeratingWithState:&v80 objects:v101 count:16];
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
                                  requests2 = [v34 requests];
                                  firstObject2 = [requests2 firstObject];

                                  if (firstObject2 && [firstObject2 requestOutcome])
                                  {
                                    v72 = firstObject2;
                                    v73 = v33;
                                    v78 = 0u;
                                    v79 = 0u;
                                    v76 = 0u;
                                    v77 = 0u;
                                    perStateStats = [v34 perStateStats];
                                    objectEnumerator6 = [perStateStats objectEnumerator];

                                    v39 = [objectEnumerator6 countByEnumeratingWithState:&v76 objects:v100 count:16];
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
                                            objc_enumerationMutation(objectEnumerator6);
                                          }

                                          v43 = *(*(&v76 + 1) + 8 * i);
                                          requests3 = [v43 requests];
                                          firstObject3 = [requests3 firstObject];

                                          if (firstObject3 && [v43 requestCount])
                                          {
                                            v46 = [v27 mutableCopy];
                                            v47 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v43, "requestCount")}];
                                            [v46 setObject:v47 forKeyedSubscript:kDiagnosticRequestStatsKey_RequestCount];

                                            requestOutcome = [v34 requestOutcome];
                                            [v46 setObject:requestOutcome forKeyedSubscript:kDiagnosticRequestStatsKey_RequestOutcome];

                                            requestState = [v43 requestState];
                                            [v46 setObject:requestState forKeyedSubscript:kDiagnosticRequestStatsKey_RequestState];

                                            if (eventsCopy)
                                            {
                                              DRSCoreAnalyticsSendEvent(kDiagnosticRequestStatsName, v46);
                                            }

                                            ++v75;
                                          }
                                        }

                                        v40 = [objectEnumerator6 countByEnumeratingWithState:&v76 objects:v100 count:16];
                                      }

                                      while (v40);
                                    }

                                    v32 = v69;
                                    v31 = v70;
                                    firstObject2 = v72;
                                    v33 = v73;
                                  }

                                  ++v33;
                                }

                                while (v33 != v31);
                                v31 = [v71 countByEnumeratingWithState:&v80 objects:v101 count:16];
                              }

                              while (v31);
                            }

                            firstObject = v67;
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

+ (id)statsForRequests:(id)requests
{
  v18 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  v4 = objc_alloc_init(DRSRequestAllStats);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = requestsCopy;
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