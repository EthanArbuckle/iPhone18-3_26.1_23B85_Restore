@interface SGQuickResponsesML
+ (BOOL)_isImageAttachment:(id)a3;
+ (BOOL)_isSharingSenderLocation:(id)a3 senderName:(id)a4;
- (SGQuickResponsesML)initWithTraining:(id)a3;
- (id)_dynamicLabelContentForReply:(id)a3 prompt:(id)a4 language:(id)a5;
- (void)trainQuickResponsesForMessage:(id)a3 withConversationHistory:(id)a4;
@end

@implementation SGQuickResponsesML

- (void)trainQuickResponsesForMessage:(id)a3 withConversationHistory:(id)a4
{
  v98 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v8 likelyLanguage];

  if (!v9)
  {
    v12 = sgLogHandle();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_33;
    }

    *buf = 0;
    v18 = "Quick responses: No likely language prediction for conversation";
LABEL_13:
    _os_log_debug_impl(&dword_231E60000, v12, OS_LOG_TYPE_DEBUG, v18, buf, 2u);
    goto LABEL_33;
  }

  v10 = [v7 conversationIdentifier];
  v11 = [v10 length];

  if (!v11)
  {
    v12 = sgLogHandle();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_33;
    }

    *buf = 0;
    v18 = "Quick responses: Text message has no conversation identifier";
    goto LABEL_13;
  }

  if ([SGDetectedAttributeDissector isTwoPersonConversation:v7])
  {
    v12 = [v8 messages];
    v13 = [v12 objectAtIndexedSubscript:[v12 count]- 1];
    v14 = [v13 message];
    v15 = [v14 textContent];

    if ([v15 length] >= 0x65)
    {
      v16 = sgLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v17 = "Quick responses: response message is much too long for labeling or DP reporting";
LABEL_17:
        _os_log_debug_impl(&dword_231E60000, v16, OS_LOG_TYPE_DEBUG, v17, buf, 2u);
        goto LABEL_32;
      }

      goto LABEL_32;
    }

    if ([v12 count]<= 1)
    {
      v16 = sgLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v17 = "Quick responses: processing requires at least two text messages";
        goto LABEL_17;
      }

LABEL_32:

      goto LABEL_33;
    }

    v19 = MEMORY[0x277D025A8];
    v20 = [v8 likelyLanguage];
    LOBYTE(v19) = [v19 areModelsAvailableInLanguage:v20];

    if ((v19 & 1) == 0)
    {
      v16 = sgLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v32 = [v8 likelyLanguage];
        *buf = 138412290;
        *v91 = v32;
        _os_log_debug_impl(&dword_231E60000, v16, OS_LOG_TYPE_DEBUG, "Quick responses: No model available for language: %@", buf, 0xCu);
      }

      goto LABEL_32;
    }

    v88 = v15;
    v16 = [v12 objectAtIndexedSubscript:[v12 count]- 2];
    v21 = [v16 message];
    v22 = [v21 sender];
    v23 = [v22 handles];
    v89 = v13;
    if ([v23 count] == 1)
    {
      v80 = [v13 message];
      [v80 sender];
      v24 = v87 = v16;
      v25 = [v24 handles];
      v84 = [v25 count];

      v16 = v87;
      if (v84 == 1)
      {
        v85 = [v87 message];
        v81 = [v85 sender];
        v78 = [v81 handles];
        v26 = [v78 firstObject];
        v27 = [v89 message];
        v28 = [v27 sender];
        v29 = [v28 handles];
        v30 = [v29 firstObject];
        v75 = [v26 isEqualToString:v30];

        if (v75)
        {
          v31 = sgLogHandle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_231E60000, v31, OS_LOG_TYPE_DEBUG, "Quick responses: processing requires the reply to be to a different person's prompt", buf, 2u);
          }

          v13 = v89;
          v16 = v87;
          goto LABEL_31;
        }

        v34 = MEMORY[0x277D02580];
        v35 = [v8 likelyLanguage];
        v31 = [v34 transformerInstanceForLanguage:v35 mode:0];

        v36 = [v31 config];
        v37 = [v36 classificationParams];

        v38 = [SGTextMessageConversationTracker getMergedPrompt:v8 withParams:v37];
        v86 = v38;
        if (![v38 length] || !objc_msgSend(v88, "length"))
        {
          v41 = sgLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            v42 = "Quick responses: processing requires the prompt and the reply to have text content";
            v43 = v41;
            v44 = 2;
            goto LABEL_74;
          }

LABEL_43:
          v13 = v89;
          v16 = v87;
LABEL_44:

LABEL_31:
          v15 = v88;
          goto LABEL_32;
        }

        v39 = [v37 maxPromptLength];
        if (v39 >= 0x400)
        {
          v40 = 1024;
        }

        else
        {
          v40 = v39;
        }

        if ([v38 length] > v40)
        {
          v41 = sgLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            *v91 = v40;
            v42 = "Quick responses: processing requires the prompt to be no more than %lu characters in length";
            v43 = v41;
            v44 = 12;
LABEL_74:
            _os_log_debug_impl(&dword_231E60000, v43, OS_LOG_TYPE_DEBUG, v42, buf, v44);
            goto LABEL_43;
          }

          goto LABEL_43;
        }

        v45 = [v8 likelyLanguage];
        v46 = [(SGQuickResponsesML *)self _dynamicLabelContentForReply:v89 prompt:v38 language:v45];

        v82 = v46;
        if (v46)
        {
          v79 = v37;
          v47 = sgLogHandle();
          v48 = 0x277D02000;
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            *v91 = v82;
            _os_log_debug_impl(&dword_231E60000, v47, OS_LOG_TYPE_DEBUG, "Quick responses: using dynamic label with unique identifier %@", buf, 0xCu);
          }

          v41 = v82;
        }

        else
        {
          v41 = v88;
          v49 = [v37 maxReplyLength];
          if (v49 >= 0x400)
          {
            v50 = 1024;
          }

          else
          {
            v50 = v49;
          }

          if ([v41 length]> v50)
          {
            v51 = sgLogHandle();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134217984;
              *v91 = v50;
              _os_log_debug_impl(&dword_231E60000, v51, OS_LOG_TYPE_DEBUG, "Quick responses: not keeping response message because it is greater than %lu characters in length", buf, 0xCu);
            }

            v13 = v89;
            v16 = v87;
            goto LABEL_81;
          }

          v79 = v37;
          v48 = 0x277D02000uLL;
        }

        v52 = *(v48 + 1408);
        v53 = [v8 likelyLanguage];
        v54 = [v52 labelOf:v41 inLanguage:v53];

        if (v54)
        {
          v76 = v82 != 0;
          v55 = *(v48 + 1408);
          v56 = [v8 likelyLanguage];
          v83 = v54;
          v57 = [v55 shouldSampleForLabel:v54 inLanguage:v56 isDynamicLabel:v76];

          v58 = sgLogHandle();
          v59 = os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG);
          if ((v57 & 1) == 0)
          {
            v68 = v58;
            v16 = v87;
            v37 = v79;
            if (v59)
            {
              *buf = 138412290;
              v51 = v83;
              *v91 = v83;
              _os_log_debug_impl(&dword_231E60000, v68, OS_LOG_TYPE_DEBUG, "Quick responses: dropping sample with label %@", buf, 0xCu);
              v13 = v89;
            }

            else
            {
              v13 = v89;
              v51 = v83;
            }

            goto LABEL_80;
          }

          if (v59)
          {
            *buf = 138412290;
            *v91 = v83;
            _os_log_debug_impl(&dword_231E60000, v58, OS_LOG_TYPE_DEBUG, "Quick responses: keeping sample with label %@", buf, 0xCu);
          }

          v60 = [v31 source];
          v61 = [v60 sessionDescriptor];

          v62 = [v31 featurizer];
          v63 = [v62 transform:v86];

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v71 = [MEMORY[0x277CCA890] currentHandler];
            [v71 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesML.m" lineNumber:303 description:{@"Invalid parameter not satisfying: %@", @"[vector isKindOfClass:PMLSparseVector.class]"}];
          }

          v77 = v63;
          if (self->_localTraining && ([v7 spotlightReference], v64 = objc_claimAutoreleasedReturnValue(), v64, v64) && v63 && v61)
          {
            localTraining = self->_localTraining;
            v51 = v83;
            v65 = [v83 unsignedIntegerValue];
            v66 = [v7 spotlightReference];
            v67 = v65;
            v68 = v61;
            [(PMLTrainingProtocol *)localTraining addSessionWithCovariates:v63 label:v67 sessionDescriptor:v61 spotlightReference:v66 isInternal:0];
            v16 = v87;
          }

          else
          {
            v68 = v61;
            v66 = sgLogHandle();
            if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
            {
              v72 = self->_localTraining != 0;
              v74 = [v7 spotlightReference];
              v70 = [v61 version];
              *buf = 67110146;
              *v91 = v72;
              *&v91[4] = 1024;
              *&v91[6] = v74 != 0;
              v92 = 1024;
              v93 = v77 != 0;
              v94 = 1024;
              v95 = v61 != 0;
              v96 = 2112;
              v97 = v70;
              _os_log_debug_impl(&dword_231E60000, v66, OS_LOG_TYPE_DEBUG, "Quick responses: not adding session for training - localTraining %d, spotlightReference %d, vector %d, sessionDescriptor %d, version: %@", buf, 0x24u);
            }

            v16 = v87;
            v51 = v83;
          }

          v13 = v89;
        }

        else
        {
          v51 = 0;
          v68 = sgLogHandle();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            v69 = [v8 likelyLanguage];
            *buf = 138412290;
            *v91 = v69;
            _os_log_error_impl(&dword_231E60000, v68, OS_LOG_TYPE_ERROR, "Quick responses: labeler failed to offer positive or negative label in language %@", buf, 0xCu);
          }

          v13 = v89;
          v16 = v87;
        }

        v37 = v79;
LABEL_80:

LABEL_81:
        goto LABEL_44;
      }
    }

    else
    {
    }

    v31 = sgLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, v31, OS_LOG_TYPE_DEBUG, "Quick responses: processing requires the prompt and reply to have a single sender handle", buf, 2u);
    }

    v13 = v89;
    goto LABEL_31;
  }

  v12 = sgLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    v18 = "Quick responses: processing is disabled for group messages";
    goto LABEL_13;
  }

LABEL_33:

  v33 = *MEMORY[0x277D85DE8];
}

- (id)_dynamicLabelContentForReply:(id)a3 prompt:(id)a4 language:(id)a5
{
  v88 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 message];
  v11 = [v10 attachmentFilename];

  v12 = [v7 message];
  v13 = [v12 sender];
  v14 = [v13 displayName];

  if (v11)
  {
    if ([SGQuickResponsesML _isImageAttachment:v11])
    {
      v15 = @"photoSharingUEhPVE8K";
      goto LABEL_56;
    }

    if ([SGQuickResponsesML _isSharingSenderLocation:v11 senderName:v14])
    {
      v15 = @"firstPartyLocTE9DLjFwCg";
      goto LABEL_56;
    }
  }

  if (!v14)
  {
    v15 = 0;
    goto LABEL_56;
  }

  v75 = v9;
  v76 = v14;
  v74 = v11;
  v16 = [v7 detectedData];
  if (![v16 count])
  {
    v17 = 0;
    v15 = 0;
    goto LABEL_55;
  }

  v72 = v8;
  v73 = v7;
  v17 = 0;
  v18 = 0;
  v19 = -1;
  v20 = 1;
  do
  {
    v21 = [v16 objectAtIndexedSubscript:v20 - 1];
    v22 = [v21 matchType];

    switch(v22)
    {
      case 2:
        v19 = 2;
        goto LABEL_16;
      case 1:
        v19 = 1;
LABEL_16:
        v28 = [v16 objectAtIndexedSubscript:v20 - 1];

        ++v18;
        v17 = v28;
        break;
      case 0:
        v23 = v19;
        v24 = +[SGContactPipelineHelper sharedInstance];
        v25 = [v16 objectAtIndexedSubscript:v20 - 1];
        v26 = [v25 valueString];
        v27 = [v24 numberMatchesContactsForm:v26];

        if ((v27 & 1) == 0)
        {
          v19 = v23;
          break;
        }

        v19 = 0;
        goto LABEL_16;
    }

    if ([v16 count] <= v20)
    {
      break;
    }

    ++v20;
  }

  while (v18 < 2);
  if (v18 == 1)
  {
    v29 = [v17 valueString];
    v8 = v72;
    v7 = v73;
    if (!v29)
    {
      v30 = [v17 range];
      v32 = v31;
      v33 = [v73 message];
      v29 = [v33 textContent];

      if (v30 + v32 > [v29 length])
      {
        v34 = sgLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218496;
          v83 = v30;
          v84 = 2048;
          v85 = v32;
          v86 = 2048;
          v87 = [v29 length];
          _os_log_error_impl(&dword_231E60000, v34, OS_LOG_TYPE_ERROR, "Range {%tu, %tu} out of bounds; string length: %tu", buf, 0x20u);
        }

        v15 = 0;
        v7 = v73;
        goto LABEL_54;
      }

      v35 = objc_autoreleasePoolPush();
      v36 = [v29 substringWithRange:{v30, v32}];
      objc_autoreleasePoolPop(v35);

      v29 = v36;
      v7 = v73;
    }

    v37 = [SGContactPipelineHelper findContactsForDetailType:v19 andValue:v29];
    v34 = v37;
    if (!v37 || ![v37 count])
    {
LABEL_36:
      v15 = 0;
      goto LABEL_54;
    }

    v68 = v19;
    v69 = [v7 message];
    v38 = [v69 sender];
    v39 = [v38 handles];
    v40 = [v39 firstObject];
    v71 = v34;
    v41 = [SGContactPipelineHelper personExistsInContacts:v34 name:v76 handle:v40];

    if (v41)
    {
      if (v68 < 3)
      {
        v15 = off_27894D3B0[v68];
        goto LABEL_54;
      }

      goto LABEL_36;
    }

    v70 = v29;
    v42 = objc_opt_new();
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v43 = v34;
    v44 = [v43 countByEnumeratingWithState:&v77 objects:v81 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v78;
      do
      {
        for (i = 0; i != v45; ++i)
        {
          if (*v78 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v48 = *(*(&v77 + 1) + 8 * i);
          v49 = [v48 givenName];
          v50 = [v49 length];

          if (v50)
          {
            v51 = [v48 givenName];
            v52 = [v51 lowercaseString];
            [v42 addObject:v52];
          }

          v53 = [v48 familyName];
          v54 = [v53 length];

          if (v54)
          {
            v55 = [v48 familyName];
            v56 = [v55 lowercaseString];
            [v42 addObject:v56];
          }
        }

        v45 = [v43 countByEnumeratingWithState:&v77 objects:v81 count:16];
      }

      while (v45);
    }

    v57 = objc_autoreleasePoolPush();
    v58 = [[SGNameDetector alloc] initWithLanguage:v75];
    v8 = v72;
    v59 = [(SGNameDetector *)v58 detectNames:v72 withNameSet:v42];

    objc_autoreleasePoolPop(v57);
    if ([v59 count] != 1)
    {
      goto LABEL_52;
    }

    v60 = objc_autoreleasePoolPush();
    v61 = [v59 firstObject];
    v62 = [v61 range];
    v64 = [v72 substringWithRange:{v62, v63}];

    v8 = v72;
    objc_autoreleasePoolPop(v60);
    v65 = [SGContactPipelineHelper personExistsInContacts:v43 name:v64 handle:0];

    if (!v65)
    {
      goto LABEL_52;
    }

    if (v68 < 3)
    {
      v15 = off_27894D3C8[v68];
    }

    else
    {
LABEL_52:

      v15 = 0;
    }

    v7 = v73;
    v29 = v70;
    v34 = v71;
LABEL_54:
  }

  else
  {
    v15 = 0;
    v8 = v72;
    v7 = v73;
  }

LABEL_55:

  v11 = v74;
  v9 = v75;
  v14 = v76;
LABEL_56:

  v66 = *MEMORY[0x277D85DE8];
  return v15;
}

- (SGQuickResponsesML)initWithTraining:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SGQuickResponsesML;
  v6 = [(SGQuickResponsesML *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_localTraining, a3);
  }

  return v7;
}

+ (BOOL)_isImageAttachment:(id)a3
{
  v3 = [a3 lowercaseString];
  v4 = [v3 pathExtension];

  LOBYTE(v3) = [&unk_28474A5E8 containsObject:v4];
  return v3;
}

+ (BOOL)_isSharingSenderLocation:(id)a3 senderName:(id)a4
{
  v5 = a3;
  v6 = a4;
  v10 = 1;
  if (([@"CL.loc.vcf" isEqualToString:v5] & 1) == 0 && (objc_msgSend(@"Shared Location.loc.vcf", "isEqualToString:", v5) & 1) == 0)
  {
    if (!v6 || (v7 = objc_autoreleasePoolPush(), v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@'s Location.loc.vcf", v6], v9 = objc_msgSend(v8, "isEqualToString:", v5), v8, objc_autoreleasePoolPop(v7), (v9 & 1) == 0))
    {
      v10 = 0;
    }
  }

  return v10;
}

@end