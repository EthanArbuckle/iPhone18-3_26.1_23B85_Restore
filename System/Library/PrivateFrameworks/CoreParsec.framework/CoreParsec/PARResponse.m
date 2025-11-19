@interface PARResponse
+ (id)responseFromData:(id)a3 session:(id)a4 request:(id)a5;
+ (id)responseFromJSON:(id)a3 session:(id)a4;
+ (id)responseFromReply:(id)a3;
- (PARResponse)initWithReply:(id)a3;
- (PARResponse)initWithReply:(id)a3 factory:(id)a4 responseData:(id)a5;
@end

@implementation PARResponse

- (PARResponse)initWithReply:(id)a3 factory:(id)a4 responseData:(id)a5
{
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = a5;
  sub_1B11218CC();

  return PARResponse.init(reply:factory:responseData:)(v7, a4);
}

- (PARResponse)initWithReply:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PARResponse;
  v6 = [(PARResponse *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reply, a3);
    v8 = [v5 rawResponse];
    rawResponse = v7->_rawResponse;
    v7->_rawResponse = v8;
  }

  return v7;
}

+ (id)responseFromReply:(id)a3
{
  v126 = *MEMORY[0x1E69E9840];
  v100 = a3;
  v3 = [v100 task];
  v99 = [v3 request];

  [v99 scale];
  if (v4 > 0.0)
  {
    [v100 scale];
    if (v5 == 0.0)
    {
      [v99 scale];
      [v100 setScale:?];
    }
  }

  [v100 scale];
  v7 = v6;
  v92 = [v99 queryId];
  v8 = [v100 task];
  v98 = [v8 session];

  context = objc_autoreleasePoolPush();
  v9 = [v98 configuration];
  v10 = [v9 factory];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = objc_alloc_init(PARDefaultFactory);
  }

  v96 = v12;

  v13 = [[PARResponse alloc] initWithReply:v100];
  v97 = [(PARResponse *)v13 rawResponse];
  v14 = [v97 firstObject];
  v102 = v14;
  if (v14)
  {
    v15 = [v14 parsec_stringForKey:@"prefix"];
    prefix = v13->_prefix;
    v13->_prefix = v15;

    v17 = [v102 parsec_stringForKey:@"query"];
    query = v13->_query;
    v13->_query = v17;

    v19 = [v102 parsec_stringForKey:@"server_completion"];
    serverCompletion = v13->_serverCompletion;
    v13->_serverCompletion = v19;

    v101 = [v102 parsec_dictionaryForKey:@"engagement_scores"];
    v90 = [v101 parsec_numberForKey:@"version"];
    v89 = [v101 parsec_numberForKey:@"serverScore"];
    v88 = [v101 parsec_numberForKey:@"serverScoreConfidence"];
    v87 = [v101 parsec_numberForKey:@"localScore"];
    v86 = [v101 parsec_numberForKey:@"localScoreConfidence"];
    v91 = [v101 parsec_arrayForKey:@"domainEngagementScores"];
    v85 = [v91 parsec_mapObjectsUsingBlock:&__block_literal_global_1896];
    v21 = [objc_alloc(MEMORY[0x1E69CA070]) initWithVersion:v90 serverScore:v89 severScoreConfidence:v88 localScore:v87 localScoreConfidence:v86 domainScores:v85];
    engagementSignal = v13->_engagementSignal;
    v13->_engagementSignal = v21;

    v23 = [v102 parsec_stringForKey:@"sqf"];
    v82 = [v23 parsec_base64DecodedData];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v80 = 0;
LABEL_32:
      v40 = [v102 parsec_dictionaryForKey:@"l3b"];
      serverFeatures = v13->_serverFeatures;
      v13->_serverFeatures = v40;

      v84 = [v102 parsec_arrayForKey:@"suggestions"];
      v118[0] = MEMORY[0x1E69E9820];
      v118[1] = 3221225472;
      v118[2] = __33__PARResponse_responseFromReply___block_invoke_2;
      v118[3] = &unk_1E7AC67F0;
      v42 = v100;
      v119 = v42;
      v43 = [v84 parsec_mapObjectsUsingBlock:v118];
      v44 = [MEMORY[0x1E695DF90] dictionary];
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v45 = v43;
      v46 = [v45 countByEnumeratingWithState:&v114 objects:v125 count:16];
      if (v46)
      {
        v47 = *v115;
        do
        {
          for (i = 0; i != v46; ++i)
          {
            if (*v115 != v47)
            {
              objc_enumerationMutation(v45);
            }

            v49 = *(*(&v114 + 1) + 8 * i);
            v50 = [v49 detailText];
            v51 = [v49 suggestion];
            [v44 setObject:v50 forKeyedSubscript:v51];
          }

          v46 = [v45 countByEnumeratingWithState:&v114 objects:v125 count:16];
        }

        while (v46);
      }

      obj = objc_alloc_init(MEMORY[0x1E695DF70]);
      if ([v45 count])
      {
        v52 = [v45 firstObject];
        [obj insertObject:v52 atIndex:0];

        if ([v45 count] >= 2)
        {
          v53 = [v45 subarrayWithRange:{1, objc_msgSend(v45, "count") - 1}];
          [obj addObjectsFromArray:v53];
        }
      }

      objc_storeStrong(&v13->_suggestions, obj);
      v13->_suggestionsAreBlended = [v102 parsec_BOOLForKey:@"suggestions_are_blended"];
      v83 = [v102 parsec_arrayForKey:@"corrections"];
      v54 = [v83 parsec_mapObjectsUsingBlock:&__block_literal_global_64];
      corrections = v13->_corrections;
      v13->_corrections = v54;

      v56 = [MEMORY[0x1E695DF90] dictionary];
      v57 = [MEMORY[0x1E695DF70] array];
      v95 = [v102 parsec_arrayForKey:@"results"];
      v58 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v95, "count")}];
      v103[0] = MEMORY[0x1E69E9820];
      v103[1] = 3221225472;
      v103[2] = __33__PARResponse_responseFromReply___block_invoke_4;
      v103[3] = &unk_1E7AC6818;
      v104 = v42;
      v105 = v96;
      v112 = v92;
      v78 = v80;
      v106 = v78;
      v107 = v98;
      v113 = v7;
      v81 = v58;
      v108 = v81;
      v79 = v56;
      v109 = v79;
      v59 = v57;
      v110 = v59;
      v60 = v13;
      v111 = v60;
      v61 = [v95 parsec_mapObjectsUsingBlock:v103];
      results = v60->_results;
      v60->_results = v61;

      objc_storeStrong(&v60->_alternativeResults, v58);
      if (PARLogHandleForCategory_onceToken_1898 != -1)
      {
        dispatch_once(&PARLogHandleForCategory_onceToken_1898, &__block_literal_global_331);
      }

      v63 = PARLogHandleForCategory_logHandles_2_1899;
      if (os_log_type_enabled(PARLogHandleForCategory_logHandles_2_1899, OS_LOG_TYPE_INFO))
      {
        v76 = v13->_prefix;
        v64 = v63;
        v77 = [(PARResponse *)v60 suggestions];
        v65 = [v77 count];
        v66 = [(PARResponse *)v60 results];
        v67 = [v66 count];
        v68 = [(PARResponse *)v60 alternativeResults];
        v69 = [v68 count];
        *buf = 134219011;
        *&buf[4] = v92;
        *&buf[12] = 2117;
        *&buf[14] = v76;
        *&buf[22] = 2048;
        v123 = v65;
        *v124 = 2048;
        *&v124[2] = v67;
        *&v124[10] = 2048;
        *&v124[12] = v69;
        _os_log_impl(&dword_1B1064000, v64, OS_LOG_TYPE_INFO, "Response for qid:%llu[%{sensitive}@] processed with %lu suggestions, %lu results and %lu alternative results", buf, 0x34u);
      }

      sections = v60->_sections;
      v60->_sections = v59;
      v71 = v59;

      v72 = v111;
      v73 = v60;

      v14 = v102;
      goto LABEL_47;
    }

    v24 = v99;
    v25 = [v24 queryString];
    v26 = v82;
    v27 = v25;
    v28 = v27;
    if (v26)
    {
      if (v27)
      {
        v29 = v27;
        v121 = 0;
        v30 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v26 options:0 error:&v121];
        v31 = v121;
        if (v31)
        {
          if (PARLogHandleForCategory_onceToken_1898 != -1)
          {
            dispatch_once(&PARLogHandleForCategory_onceToken_1898, &__block_literal_global_331);
          }

          v32 = PARLogHandleForCategory_logHandles_2_1899;
          if (!os_log_type_enabled(PARLogHandleForCategory_logHandles_2_1899, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_29;
          }

          *buf = 138412290;
          *&buf[4] = v31;
          v33 = "error decoding sqf: %@";
          v34 = v32;
          v35 = 12;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v123 = __Block_byref_object_copy_;
            *v124 = __Block_byref_object_dispose_;
            *&v124[8] = 0;
            v120[0] = MEMORY[0x1E69E9820];
            v120[1] = 3221225472;
            v120[2] = __decodeSqf_block_invoke;
            v120[3] = &unk_1E7AC6860;
            v120[4] = v29;
            v120[5] = buf;
            [v30 enumerateObjectsUsingBlock:v120];
            v37 = *(*&buf[8] + 40);
            _Block_object_dispose(buf, 8);

LABEL_30:
            v28 = v29;
            goto LABEL_31;
          }

          if (PARLogHandleForCategory_onceToken_1898 != -1)
          {
            dispatch_once(&PARLogHandleForCategory_onceToken_1898, &__block_literal_global_331);
          }

          v38 = PARLogHandleForCategory_logHandles_2_1899;
          if (!os_log_type_enabled(PARLogHandleForCategory_logHandles_2_1899, OS_LOG_TYPE_ERROR))
          {
LABEL_29:
            v37 = 0;
            goto LABEL_30;
          }

          *buf = 0;
          v33 = "sqf not an array";
          v34 = v38;
          v35 = 2;
        }

        _os_log_error_impl(&dword_1B1064000, v34, OS_LOG_TYPE_ERROR, v33, buf, v35);
        goto LABEL_29;
      }
    }

    else
    {
      if (PARLogHandleForCategory_onceToken_1898 != -1)
      {
        dispatch_once(&PARLogHandleForCategory_onceToken_1898, &__block_literal_global_331);
      }

      v36 = PARLogHandleForCategory_logHandles_2_1899;
      if (os_log_type_enabled(PARLogHandleForCategory_logHandles_2_1899, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1B1064000, v36, OS_LOG_TYPE_DEBUG, "no sqf", buf, 2u);
      }
    }

    v37 = 0;
LABEL_31:
    v80 = v28;

    rawSqf = v13->_rawSqf;
    v13->_rawSqf = v37;

    goto LABEL_32;
  }

LABEL_47:

  objc_autoreleasePoolPop(context);
  v74 = *MEMORY[0x1E69E9840];

  return v13;
}

id __33__PARResponse_responseFromReply___block_invoke_4(uint64_t a1, void *a2)
{
  v62 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 sf_asSearchResult:*(a1 + 32) factory:*(a1 + 40)];
  [v4 setQueryId:*(a1 + 96)];
  [v4 setUserInput:*(a1 + 48)];
  v5 = [v3 parsec_stringForKey:@"fbr"];
  [v4 setFbr:v5];

  v6 = [v3 parsec_stringForKey:@"more_results_url"];
  if ([v6 length])
  {
    v7 = [MEMORY[0x1E695DFF8] URLWithString:v6];
    if (v7)
    {
      v8 = [v3 parsec_stringForKey:@"more_results_label"];
      v9 = [PARAsyncMoreResults moreResults:v7 label:v8 session:*(a1 + 56) scale:*(a1 + 96) queryId:*(a1 + 96) clientQueryId:*(a1 + 104)];
      [v4 setMoreResults:v9];
    }
  }

  if ([v4 type] == 26)
  {
    [*(a1 + 64) addObject:v4];
    v10 = 0;
  }

  else
  {
    v11 = [v4 sectionHeader];

    if (v11)
    {
      v12 = *(a1 + 72);
      v13 = [v4 sectionHeader];
      v14 = [v12 objectForKey:v13];

      if (!v14)
      {
        v14 = objc_alloc_init(MEMORY[0x1E69CA390]);
        v15 = [v4 sectionHeader];
        [v14 setTitle:v15];

        v16 = [v4 sectionBundleIdentifier];
        [v14 setBundleIdentifier:v16];

        v17 = *(a1 + 72);
        v18 = [v14 title];
        [v17 setObject:v14 forKey:v18];

        [*(a1 + 80) addObject:v14];
      }

      v19 = [v14 moreText];

      if (!v19)
      {
        v20 = [v4 sectionHeaderMore];
        [v14 setMoreText:v20];
      }

      [v14 setIsInitiallyHidden:{objc_msgSend(v3, "parsec_BOOLForKey:", @"initially_hidden"}];
      v21 = [v3 parsec_numberForKey:@"maxInitiallyVisibleResults"];
      v22 = v21;
      if (v21)
      {
        [v14 setMaxInitiallyVisibleResults:{objc_msgSend(v21, "unsignedIntValue")}];
      }

      v23 = [v14 results];
      v24 = v23;
      if (v23)
      {
        v25 = v23;
      }

      else
      {
        v25 = [MEMORY[0x1E695DF70] array];
      }

      v26 = v25;

      [v26 addObject:v4];
      [v14 setResults:v26];
      v27 = [v4 inlineCard];
      v28 = [v27 cardSections];
      v29 = [v28 firstObject];

      if (v29)
      {
        v30 = [v4 inlineCard];
        v31 = [v30 cardSections];
        v32 = [v31 firstObject];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v33 = [v32 titleButtonItem];
          [v14 setTitleButtonItem:v33];
        }
      }

      v34 = [v3 parsec_stringForKey:@"more_results_button"];
      v35 = [v34 parsec_base64DecodedData];

      if (v35)
      {
        v36 = [objc_alloc(MEMORY[0x1E69CA5F0]) initWithData:v35];
        if (v36)
        {
          v37 = [objc_alloc(MEMORY[0x1E69C9F90]) initWithProtobuf:v36];
          [v14 setButton:v37];
          [v4 setMoreResultsButton:v37];
        }
      }
    }

    [v4 setIntendedQuery:*(*(a1 + 88) + 32)];
    v38 = *(*(a1 + 88) + 96);
    if (v38 && [v38 count])
    {
      v39 = [*(*(a1 + 88) + 96) firstObject];
      v40 = [v39 suggestion];
      [v4 setCorrectedQuery:v40];
    }

    v41 = [v4 card];

    if (!v41)
    {
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v42 = [v4 inlineCard];
      v43 = [v42 cardSections];

      v44 = [v43 countByEnumeratingWithState:&v57 objects:v61 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v58;
        while (2)
        {
          for (i = 0; i != v45; ++i)
          {
            if (*v58 != v46)
            {
              objc_enumerationMutation(v43);
            }

            v48 = *(*(&v57 + 1) + 8 * i);
            v49 = [v48 nextCard];

            if (v49)
            {
              v50 = [v48 nextCard];
              [v4 setCard:v50];

              goto LABEL_40;
            }
          }

          v45 = [v43 countByEnumeratingWithState:&v57 objects:v61 count:16];
          if (v45)
          {
            continue;
          }

          break;
        }
      }

LABEL_40:
    }

    v51 = [v4 card];
    recursiveSetQueryId(v51, *(a1 + 96));

    v52 = [v4 inlineCard];
    recursiveSetQueryId(v52, *(a1 + 96));

    v53 = [v4 compactCard];
    recursiveSetQueryId(v53, *(a1 + 96));

    v54 = [v4 tophitCard];
    recursiveSetQueryId(v54, *(a1 + 96));

    v10 = v4;
  }

  v55 = *MEMORY[0x1E69E9840];

  return v10;
}

id __33__PARResponse_responseFromReply___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69CA3F0];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 parsec_stringForKey:@"c"];
  v6 = [v3 parsec_stringForKey:@"p"];
  v7 = [v3 parsec_numberForKey:@"s"];
  [v7 doubleValue];
  v8 = [v4 initWithIdentifier:0 suggestion:v5 query:v6 score:1 type:?];

  v9 = [v3 parsec_stringForKey:@"fbr"];

  [v8 setFbr:v9];

  return v8;
}

id __33__PARResponse_responseFromReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 parsec_numberForKey:@"domain"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 intValue];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v2 parsec_numberForKey:@"score"];
  v7 = [v2 parsec_numberForKey:@"scoreConfidence"];

  v8 = [objc_alloc(MEMORY[0x1E69CA038]) initWithDomain:v5 scoreConfidence:v7 score:v6];

  return v8;
}

+ (id)responseFromJSON:(id)a3 session:(id)a4
{
  v6 = a4;
  if (a3)
  {
    a3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:a3 options:0 error:0];
  }

  v7 = [a1 responseFromData:a3 session:v6 request:0];

  return v7;
}

+ (id)responseFromData:(id)a3 session:(id)a4 request:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(PARReply);
  [(PARReply *)v10 setData:v9];

  v11 = objc_alloc_init(PARTask);
  [(PARTask *)v11 setSession:v8];

  [(PARTask *)v11 setRequest:v7];
  [(PARReply *)v10 setTask:v11];
  v12 = [PARResponse responseFromReply:v10];

  return v12;
}

@end