@interface SGQuickResponsesML
+ (BOOL)_isImageAttachment:(id)attachment;
+ (BOOL)_isSharingSenderLocation:(id)location senderName:(id)name;
- (SGQuickResponsesML)initWithTraining:(id)training;
- (id)_dynamicLabelContentForReply:(id)reply prompt:(id)prompt language:(id)language;
- (void)trainQuickResponsesForMessage:(id)message withConversationHistory:(id)history;
@end

@implementation SGQuickResponsesML

- (void)trainQuickResponsesForMessage:(id)message withConversationHistory:(id)history
{
  v98 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  historyCopy = history;
  likelyLanguage = [historyCopy likelyLanguage];

  if (!likelyLanguage)
  {
    messages = sgLogHandle();
    if (!os_log_type_enabled(messages, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_33;
    }

    *buf = 0;
    v18 = "Quick responses: No likely language prediction for conversation";
LABEL_13:
    _os_log_debug_impl(&dword_231E60000, messages, OS_LOG_TYPE_DEBUG, v18, buf, 2u);
    goto LABEL_33;
  }

  conversationIdentifier = [messageCopy conversationIdentifier];
  v11 = [conversationIdentifier length];

  if (!v11)
  {
    messages = sgLogHandle();
    if (!os_log_type_enabled(messages, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_33;
    }

    *buf = 0;
    v18 = "Quick responses: Text message has no conversation identifier";
    goto LABEL_13;
  }

  if ([SGDetectedAttributeDissector isTwoPersonConversation:messageCopy])
  {
    messages = [historyCopy messages];
    v13 = [messages objectAtIndexedSubscript:[messages count]- 1];
    message = [v13 message];
    textContent = [message textContent];

    if ([textContent length] >= 0x65)
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

    if ([messages count]<= 1)
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
    likelyLanguage2 = [historyCopy likelyLanguage];
    LOBYTE(v19) = [v19 areModelsAvailableInLanguage:likelyLanguage2];

    if ((v19 & 1) == 0)
    {
      v16 = sgLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        likelyLanguage3 = [historyCopy likelyLanguage];
        *buf = 138412290;
        *v91 = likelyLanguage3;
        _os_log_debug_impl(&dword_231E60000, v16, OS_LOG_TYPE_DEBUG, "Quick responses: No model available for language: %@", buf, 0xCu);
      }

      goto LABEL_32;
    }

    v88 = textContent;
    v16 = [messages objectAtIndexedSubscript:[messages count]- 2];
    message2 = [v16 message];
    sender = [message2 sender];
    handles = [sender handles];
    v89 = v13;
    if ([handles count] == 1)
    {
      message3 = [v13 message];
      [message3 sender];
      v24 = v87 = v16;
      handles2 = [v24 handles];
      v84 = [handles2 count];

      v16 = v87;
      if (v84 == 1)
      {
        message4 = [v87 message];
        sender2 = [message4 sender];
        handles3 = [sender2 handles];
        firstObject = [handles3 firstObject];
        message5 = [v89 message];
        sender3 = [message5 sender];
        handles4 = [sender3 handles];
        firstObject2 = [handles4 firstObject];
        v75 = [firstObject isEqualToString:firstObject2];

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
        likelyLanguage4 = [historyCopy likelyLanguage];
        v31 = [v34 transformerInstanceForLanguage:likelyLanguage4 mode:0];

        config = [v31 config];
        classificationParams = [config classificationParams];

        v38 = [SGTextMessageConversationTracker getMergedPrompt:historyCopy withParams:classificationParams];
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
          textContent = v88;
          goto LABEL_32;
        }

        maxPromptLength = [classificationParams maxPromptLength];
        if (maxPromptLength >= 0x400)
        {
          v40 = 1024;
        }

        else
        {
          v40 = maxPromptLength;
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

        likelyLanguage5 = [historyCopy likelyLanguage];
        v46 = [(SGQuickResponsesML *)self _dynamicLabelContentForReply:v89 prompt:v38 language:likelyLanguage5];

        v82 = v46;
        if (v46)
        {
          v79 = classificationParams;
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
          maxReplyLength = [classificationParams maxReplyLength];
          if (maxReplyLength >= 0x400)
          {
            v50 = 1024;
          }

          else
          {
            v50 = maxReplyLength;
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

          v79 = classificationParams;
          v48 = 0x277D02000uLL;
        }

        v52 = *(v48 + 1408);
        likelyLanguage6 = [historyCopy likelyLanguage];
        v54 = [v52 labelOf:v41 inLanguage:likelyLanguage6];

        if (v54)
        {
          v76 = v82 != 0;
          v55 = *(v48 + 1408);
          likelyLanguage7 = [historyCopy likelyLanguage];
          v83 = v54;
          v57 = [v55 shouldSampleForLabel:v54 inLanguage:likelyLanguage7 isDynamicLabel:v76];

          v58 = sgLogHandle();
          v59 = os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG);
          if ((v57 & 1) == 0)
          {
            v68 = v58;
            v16 = v87;
            classificationParams = v79;
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

          source = [v31 source];
          sessionDescriptor = [source sessionDescriptor];

          featurizer = [v31 featurizer];
          v63 = [featurizer transform:v86];

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesML.m" lineNumber:303 description:{@"Invalid parameter not satisfying: %@", @"[vector isKindOfClass:PMLSparseVector.class]"}];
          }

          v77 = v63;
          if (self->_localTraining && ([messageCopy spotlightReference], v64 = objc_claimAutoreleasedReturnValue(), v64, v64) && v63 && sessionDescriptor)
          {
            localTraining = self->_localTraining;
            v51 = v83;
            unsignedIntegerValue = [v83 unsignedIntegerValue];
            spotlightReference = [messageCopy spotlightReference];
            v67 = unsignedIntegerValue;
            v68 = sessionDescriptor;
            [(PMLTrainingProtocol *)localTraining addSessionWithCovariates:v63 label:v67 sessionDescriptor:sessionDescriptor spotlightReference:spotlightReference isInternal:0];
            v16 = v87;
          }

          else
          {
            v68 = sessionDescriptor;
            spotlightReference = sgLogHandle();
            if (os_log_type_enabled(spotlightReference, OS_LOG_TYPE_DEBUG))
            {
              v72 = self->_localTraining != 0;
              spotlightReference2 = [messageCopy spotlightReference];
              version = [sessionDescriptor version];
              *buf = 67110146;
              *v91 = v72;
              *&v91[4] = 1024;
              *&v91[6] = spotlightReference2 != 0;
              v92 = 1024;
              v93 = v77 != 0;
              v94 = 1024;
              v95 = sessionDescriptor != 0;
              v96 = 2112;
              v97 = version;
              _os_log_debug_impl(&dword_231E60000, spotlightReference, OS_LOG_TYPE_DEBUG, "Quick responses: not adding session for training - localTraining %d, spotlightReference %d, vector %d, sessionDescriptor %d, version: %@", buf, 0x24u);
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
            likelyLanguage8 = [historyCopy likelyLanguage];
            *buf = 138412290;
            *v91 = likelyLanguage8;
            _os_log_error_impl(&dword_231E60000, v68, OS_LOG_TYPE_ERROR, "Quick responses: labeler failed to offer positive or negative label in language %@", buf, 0xCu);
          }

          v13 = v89;
          v16 = v87;
        }

        classificationParams = v79;
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

  messages = sgLogHandle();
  if (os_log_type_enabled(messages, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    v18 = "Quick responses: processing is disabled for group messages";
    goto LABEL_13;
  }

LABEL_33:

  v33 = *MEMORY[0x277D85DE8];
}

- (id)_dynamicLabelContentForReply:(id)reply prompt:(id)prompt language:(id)language
{
  v88 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  promptCopy = prompt;
  languageCopy = language;
  message = [replyCopy message];
  attachmentFilename = [message attachmentFilename];

  message2 = [replyCopy message];
  sender = [message2 sender];
  displayName = [sender displayName];

  if (attachmentFilename)
  {
    if ([SGQuickResponsesML _isImageAttachment:attachmentFilename])
    {
      v15 = @"photoSharingUEhPVE8K";
      goto LABEL_56;
    }

    if ([SGQuickResponsesML _isSharingSenderLocation:attachmentFilename senderName:displayName])
    {
      v15 = @"firstPartyLocTE9DLjFwCg";
      goto LABEL_56;
    }
  }

  if (!displayName)
  {
    v15 = 0;
    goto LABEL_56;
  }

  v75 = languageCopy;
  v76 = displayName;
  v74 = attachmentFilename;
  detectedData = [replyCopy detectedData];
  if (![detectedData count])
  {
    v17 = 0;
    v15 = 0;
    goto LABEL_55;
  }

  v72 = promptCopy;
  v73 = replyCopy;
  v17 = 0;
  v18 = 0;
  v19 = -1;
  v20 = 1;
  do
  {
    v21 = [detectedData objectAtIndexedSubscript:v20 - 1];
    matchType = [v21 matchType];

    switch(matchType)
    {
      case 2:
        v19 = 2;
        goto LABEL_16;
      case 1:
        v19 = 1;
LABEL_16:
        v28 = [detectedData objectAtIndexedSubscript:v20 - 1];

        ++v18;
        v17 = v28;
        break;
      case 0:
        v23 = v19;
        v24 = +[SGContactPipelineHelper sharedInstance];
        v25 = [detectedData objectAtIndexedSubscript:v20 - 1];
        valueString = [v25 valueString];
        v27 = [v24 numberMatchesContactsForm:valueString];

        if ((v27 & 1) == 0)
        {
          v19 = v23;
          break;
        }

        v19 = 0;
        goto LABEL_16;
    }

    if ([detectedData count] <= v20)
    {
      break;
    }

    ++v20;
  }

  while (v18 < 2);
  if (v18 == 1)
  {
    valueString2 = [v17 valueString];
    promptCopy = v72;
    replyCopy = v73;
    if (!valueString2)
    {
      range = [v17 range];
      v32 = v31;
      message3 = [v73 message];
      valueString2 = [message3 textContent];

      if (range + v32 > [valueString2 length])
      {
        v34 = sgLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218496;
          v83 = range;
          v84 = 2048;
          v85 = v32;
          v86 = 2048;
          v87 = [valueString2 length];
          _os_log_error_impl(&dword_231E60000, v34, OS_LOG_TYPE_ERROR, "Range {%tu, %tu} out of bounds; string length: %tu", buf, 0x20u);
        }

        v15 = 0;
        replyCopy = v73;
        goto LABEL_54;
      }

      v35 = objc_autoreleasePoolPush();
      v36 = [valueString2 substringWithRange:{range, v32}];
      objc_autoreleasePoolPop(v35);

      valueString2 = v36;
      replyCopy = v73;
    }

    v37 = [SGContactPipelineHelper findContactsForDetailType:v19 andValue:valueString2];
    v34 = v37;
    if (!v37 || ![v37 count])
    {
LABEL_36:
      v15 = 0;
      goto LABEL_54;
    }

    v68 = v19;
    message4 = [replyCopy message];
    sender2 = [message4 sender];
    handles = [sender2 handles];
    firstObject = [handles firstObject];
    v71 = v34;
    v41 = [SGContactPipelineHelper personExistsInContacts:v34 name:v76 handle:firstObject];

    if (v41)
    {
      if (v68 < 3)
      {
        v15 = off_27894D3B0[v68];
        goto LABEL_54;
      }

      goto LABEL_36;
    }

    v70 = valueString2;
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
          givenName = [v48 givenName];
          v50 = [givenName length];

          if (v50)
          {
            givenName2 = [v48 givenName];
            lowercaseString = [givenName2 lowercaseString];
            [v42 addObject:lowercaseString];
          }

          familyName = [v48 familyName];
          v54 = [familyName length];

          if (v54)
          {
            familyName2 = [v48 familyName];
            lowercaseString2 = [familyName2 lowercaseString];
            [v42 addObject:lowercaseString2];
          }
        }

        v45 = [v43 countByEnumeratingWithState:&v77 objects:v81 count:16];
      }

      while (v45);
    }

    v57 = objc_autoreleasePoolPush();
    v58 = [[SGNameDetector alloc] initWithLanguage:v75];
    promptCopy = v72;
    v59 = [(SGNameDetector *)v58 detectNames:v72 withNameSet:v42];

    objc_autoreleasePoolPop(v57);
    if ([v59 count] != 1)
    {
      goto LABEL_52;
    }

    v60 = objc_autoreleasePoolPush();
    firstObject2 = [v59 firstObject];
    range2 = [firstObject2 range];
    v64 = [v72 substringWithRange:{range2, v63}];

    promptCopy = v72;
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

    replyCopy = v73;
    valueString2 = v70;
    v34 = v71;
LABEL_54:
  }

  else
  {
    v15 = 0;
    promptCopy = v72;
    replyCopy = v73;
  }

LABEL_55:

  attachmentFilename = v74;
  languageCopy = v75;
  displayName = v76;
LABEL_56:

  v66 = *MEMORY[0x277D85DE8];
  return v15;
}

- (SGQuickResponsesML)initWithTraining:(id)training
{
  trainingCopy = training;
  v9.receiver = self;
  v9.super_class = SGQuickResponsesML;
  v6 = [(SGQuickResponsesML *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_localTraining, training);
  }

  return v7;
}

+ (BOOL)_isImageAttachment:(id)attachment
{
  lowercaseString = [attachment lowercaseString];
  pathExtension = [lowercaseString pathExtension];

  LOBYTE(lowercaseString) = [&unk_28474A5E8 containsObject:pathExtension];
  return lowercaseString;
}

+ (BOOL)_isSharingSenderLocation:(id)location senderName:(id)name
{
  locationCopy = location;
  nameCopy = name;
  v10 = 1;
  if (([@"CL.loc.vcf" isEqualToString:locationCopy] & 1) == 0 && (objc_msgSend(@"Shared Location.loc.vcf", "isEqualToString:", locationCopy) & 1) == 0)
  {
    if (!nameCopy || (v7 = objc_autoreleasePoolPush(), v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@'s Location.loc.vcf", nameCopy], v9 = objc_msgSend(v8, "isEqualToString:", locationCopy), v8, objc_autoreleasePoolPop(v7), (v9 & 1) == 0))
    {
      v10 = 0;
    }
  }

  return v10;
}

@end