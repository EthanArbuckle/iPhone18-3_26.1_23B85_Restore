@interface ASMeetingResponseTask
- (ASMeetingResponseTask)initWithResponseItems:(id)items;
- (BOOL)getTopLevelToken:(char *)token outStatusCodePage:(char *)page outStatusToken:(char *)statusToken;
- (BOOL)processContext:(id)context;
- (id)requestBody;
- (int64_t)taskStatusForExchangeStatus:(int)status;
- (void)finishWithError:(id)error;
@end

@implementation ASMeetingResponseTask

- (ASMeetingResponseTask)initWithResponseItems:(id)items
{
  itemsCopy = items;
  v9.receiver = self;
  v9.super_class = ASMeetingResponseTask;
  v6 = [(ASTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_responseItems, items);
  }

  return v7;
}

- (id)requestBody
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [v3 switchToCodePage:8];
  [v3 openTag:7];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = self->_responseItems;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v4)
  {
    v5 = v4;
    v36 = *v38;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v38 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v37 + 1) + 8 * i);
        [v3 openTag:9];
        [v3 appendTag:12 withIntContent:{objc_msgSend(v7, "meetingResponse")}];
        deliveryItemFolderId = [v7 deliveryItemFolderId];
        [v3 appendTag:6 withStringContent:deliveryItemFolderId];

        deliveryItemServerId = [v7 deliveryItemServerId];
        [v3 appendTag:8 withStringContent:deliveryItemServerId];

        instanceDate = [v7 instanceDate];
        if (instanceDate)
        {
          v11 = instanceDate;
          taskManager = [(ASTask *)self taskManager];
          account = [taskManager account];
          protocol = [account protocol];
          useEventIdsInMeetingResponse = [protocol useEventIdsInMeetingResponse];

          if (useEventIdsInMeetingResponse)
          {
            instanceDate2 = [v7 instanceDate];
            activeSyncString = [instanceDate2 activeSyncString];
            [v3 appendTag:14 withStringContent:activeSyncString];
          }
        }

        taskManager2 = [(ASTask *)self taskManager];
        protocol2 = [taskManager2 protocol];

        if ([protocol2 includeCommentInMeetingResponse] && objc_msgSend(v7, "responseRequested"))
        {
          comment = [v7 comment];
          if (comment)
          {
          }

          else
          {
            proposedStartTime = [v7 proposedStartTime];
            if (!proposedStartTime)
            {
              goto LABEL_24;
            }

            v28 = proposedStartTime;
            proposedEndTime = [v7 proposedEndTime];
            if (!proposedEndTime)
            {

LABEL_24:
              [v3 appendEmptyTag:18];
              goto LABEL_25;
            }

            v30 = proposedEndTime;
            meetingResponse = [v7 meetingResponse];

            if (meetingResponse == 1)
            {
              goto LABEL_24;
            }
          }

          [v3 openTag:18];
          comment2 = [v7 comment];

          if (comment2)
          {
            [v3 switchToCodePage:17];
            [v3 openTag:10];
            [v3 appendTag:6 withIntContent:1];
            comment3 = [v7 comment];
            [v3 appendTag:11 withStringContent:comment3];

            [v3 closeTag:10];
            [v3 switchToCodePage:8];
          }

          if ([protocol2 supportsProposeNewTime] && objc_msgSend(v7, "meetingResponse") != 1)
          {
            proposedStartTime2 = [v7 proposedStartTime];
            activeSyncStringWithoutSeparators = [proposedStartTime2 activeSyncStringWithoutSeparators];
            [v3 appendTag:16 withStringContent:activeSyncStringWithoutSeparators];

            proposedEndTime2 = [v7 proposedEndTime];
            activeSyncStringWithoutSeparators2 = [proposedEndTime2 activeSyncStringWithoutSeparators];
            [v3 appendTag:17 withStringContent:activeSyncStringWithoutSeparators2];
          }

          [v3 closeTag:18];
        }

LABEL_25:
        [v3 closeTag:9];
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v5);
  }

  [v3 closeTag:7];
  data = [v3 data];

  v33 = *MEMORY[0x277D85DE8];

  return data;
}

- (BOOL)getTopLevelToken:(char *)token outStatusCodePage:(char *)page outStatusToken:(char *)statusToken
{
  *page = 8;
  *token = 7;
  *statusToken = 11;
  return 1;
}

- (BOOL)processContext:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  currentlyParsingItem = [(ASTask *)self currentlyParsingItem];

  if (!currentlyParsingItem)
  {
    if (!self->super._haveSwitchedCodePage)
    {
      if (![contextCopy hasNumberOfTokensRemaining:2])
      {
        goto LABEL_17;
      }

      if ([contextCopy currentByte])
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to meeting response code page"];
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASMeetingResponseTask.m", 129, objc_msgSend(contextCopy, "curOffset")];
        v13 = DALoggingwithCategory();
        v14 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v13, v14))
        {
          *buf = 134217984;
          curOffset = [contextCopy curOffset];
          _os_log_impl(&dword_24A0AC000, v13, v14, "Failure at index %lld:", buf, 0xCu);
        }

        v15 = DALoggingwithCategory();
        if (!os_log_type_enabled(v15, v14))
        {
          goto LABEL_29;
        }

        *buf = 138412290;
        curOffset = v11;
        goto LABEL_28;
      }

      [contextCopy advanceOffsetByAmount:1];
      if ([contextCopy currentByte] != 8)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to meeting response code page"];
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASMeetingResponseTask.m", 129, objc_msgSend(contextCopy, "curOffset")];
        v18 = DALoggingwithCategory();
        v14 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v18, v14))
        {
          *buf = 134217984;
          curOffset = [contextCopy curOffset];
          _os_log_impl(&dword_24A0AC000, v18, v14, "Failure at index %lld:", buf, 0xCu);
        }

        v15 = DALoggingwithCategory();
        if (!os_log_type_enabled(v15, v14))
        {
          goto LABEL_29;
        }

        *buf = 138412290;
        curOffset = v11;
        goto LABEL_28;
      }

      [contextCopy advanceOffsetByAmount:1];
      [contextCopy setCodePage:8];
      self->super._haveSwitchedCodePage = 1;
    }

    if (self->super._haveParsedCommand)
    {
LABEL_7:
      v10 = objc_opt_new();
      [(ASTask *)self setCurrentlyParsingItem:v10];

      goto LABEL_2;
    }

    if (![contextCopy hasNumberOfTokensRemaining:1])
    {
      goto LABEL_17;
    }

    if (([contextCopy currentByte] & 0x3F) == 7)
    {
      self->super._haveParsedCommand = 1;
      goto LABEL_7;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected meeting response response"];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASMeetingResponseTask.m", 130, objc_msgSend(contextCopy, "curOffset")];
    v17 = DALoggingwithCategory();
    v14 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v17, v14))
    {
      *buf = 134217984;
      curOffset = [contextCopy curOffset];
      _os_log_impl(&dword_24A0AC000, v17, v14, "Failure at index %lld:", buf, 0xCu);
    }

    v15 = DALoggingwithCategory();
    if (!os_log_type_enabled(v15, v14))
    {
LABEL_29:

      [contextCopy setParseErrorReason:v12];
LABEL_30:
      parseErrorReason = [contextCopy parseErrorReason];
      v16 = parseErrorReason == 0;

      goto LABEL_31;
    }

    *buf = 138412290;
    curOffset = v11;
LABEL_28:
    _os_log_impl(&dword_24A0AC000, v15, v14, "failure reason was %@", buf, 0xCu);
    goto LABEL_29;
  }

LABEL_2:
  currentlyParsingItem2 = [(ASTask *)self currentlyParsingItem];
  taskManager = [(ASTask *)self taskManager];
  account = [taskManager account];
  [currentlyParsingItem2 parseASParseContext:contextCopy root:0 parent:0 callbackDict:0 streamCallbackDict:0 account:account];

  currentlyParsingItem = self->super._currentlyParsingItem;
  if (currentlyParsingItem && [(ASItem *)currentlyParsingItem parsingState]>= 2)
  {
    goto LABEL_30;
  }

LABEL_17:
  v16 = 0;
LABEL_31:

  v20 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)finishWithError:(id)error
{
  v103 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = [(ASTask *)self taskStatusForError:errorCopy];
  if (errorCopy)
  {
    v6 = DALoggingwithCategory();
    v7 = v6;
    if (v5 == -1)
    {
      v22 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v6, v22))
      {
        *buf = 138412290;
        selfCopy = objc_opt_class();
        v23 = selfCopy;
        _os_log_impl(&dword_24A0AC000, v7, v22, "%@ cancelled", buf, 0xCu);
      }

      v5 = -1;
    }

    else
    {
      v8 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v6, v8))
      {
        *buf = 138412546;
        selfCopy = objc_opt_class();
        v96 = 2112;
        v97 = errorCopy;
        v9 = selfCopy;
        _os_log_impl(&dword_24A0AC000, v7, v8, "%@ failed: %@", buf, 0x16u);
      }
    }

    goto LABEL_66;
  }

  currentlyParsingItem = [(ASTask *)self currentlyParsingItem];
  v7 = currentlyParsingItem;
  if (!currentlyParsingItem || [currentlyParsingItem parsingState]!= 2)
  {
    v5 = 1;
    v16 = DALoggingwithCategory();
    v21 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v16, v21))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_24A0AC000, v16, v21, "%@ Parse error: no meeting response response!", buf, 0xCu);
      v5 = 1;
    }

    goto LABEL_65;
  }

  v11 = DALoggingwithCategory();
  v12 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v11, v12))
  {
    *buf = 138412546;
    selfCopy = objc_opt_class();
    v96 = 2112;
    v97 = v7;
    v13 = selfCopy;
    _os_log_impl(&dword_24A0AC000, v11, v12, "%@ Parsed response of %@", buf, 0x16u);
  }

  if ([(NSArray *)self->_responseItems count]== 1)
  {
    singularResponses = [v7 singularResponses];
    v15 = [singularResponses count];

    if (v15 == 1)
    {
      v16 = [(NSArray *)self->_responseItems objectAtIndexedSubscript:0];
      singularResponses2 = [v7 singularResponses];
      v18 = [singularResponses2 objectAtIndexedSubscript:0];

      eventId = [v18 eventId];
      [v16 setCalEventServerId:eventId];

      status = [v18 status];
      -[NSObject setStatus:](v16, "setStatus:", -[ASMeetingResponseTask taskStatusForExchangeStatus:](self, "taskStatusForExchangeStatus:", [status intValue]));

      goto LABEL_65;
    }
  }

  singularResponses3 = [v7 singularResponses];
  v16 = [singularResponses3 count];

  if (v16)
  {
    singularResponses4 = [v7 singularResponses];
    v16 = [singularResponses4 objectAtIndexedSubscript:0];
  }

  singularResponses5 = [v7 singularResponses];
  if ([singularResponses5 count] == 1)
  {
    status2 = [v16 status];
    v28 = v5;
    intValue = [status2 intValue];

    if (intValue == 4)
    {
      v30 = DALoggingwithCategory();
      v31 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v30, v31))
      {
        *buf = 0;
        _os_log_impl(&dword_24A0AC000, v30, v31, "Apply status code 4 to all meeting responses", buf, 2u);
      }

      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      obj = self->_responseItems;
      v32 = [(NSArray *)obj countByEnumeratingWithState:&v90 objects:v102 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = v7;
        v35 = *v91;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v91 != v35)
            {
              objc_enumerationMutation(obj);
            }

            v37 = *(*(&v90 + 1) + 8 * i);
            eventId2 = [v16 eventId];
            [v37 setCalEventServerId:eventId2];

            status3 = [v16 status];
            [v37 setStatus:{-[ASMeetingResponseTask taskStatusForExchangeStatus:](self, "taskStatusForExchangeStatus:", objc_msgSend(status3, "intValue"))}];
          }

          v33 = [(NSArray *)obj countByEnumeratingWithState:&v90 objects:v102 count:16];
        }

        while (v33);
        v7 = v34;
      }

      v5 = v28;
      goto LABEL_64;
    }
  }

  else
  {
  }

  obj = objc_opt_new();
  [(NSArray *)obj addObjectsFromArray:self->_responseItems];
  v88 = 0u;
  v89 = 0u;
  v87 = 0u;
  v86 = 0u;
  singularResponses6 = [v7 singularResponses];
  v74 = [singularResponses6 countByEnumeratingWithState:&v86 objects:v101 count:16];
  if (!v74)
  {
    goto LABEL_60;
  }

  v71 = v5;
  v72 = v7;
  v75 = *v87;
  selfCopy2 = self;
  while (2)
  {
    v40 = 0;
    do
    {
      if (*v87 != v75)
      {
        objc_enumerationMutation(singularResponses6);
      }

      v77 = v40;
      v41 = *(*(&v86 + 1) + 8 * v40);
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v42 = obj;
      v43 = [(NSArray *)v42 countByEnumeratingWithState:&v82 objects:v100 count:16];
      if (!v43)
      {
LABEL_56:

LABEL_57:
        v60 = DALoggingwithCategory();
        v61 = *(MEMORY[0x277D03988] + 3);
        self = selfCopy2;
        v7 = v72;
        if (os_log_type_enabled(v60, v61))
        {
          responseItems = selfCopy2->_responseItems;
          singularResponses7 = [v72 singularResponses];
          *buf = 138412546;
          selfCopy = responseItems;
          v96 = 2112;
          v97 = singularResponses7;
          _os_log_impl(&dword_24A0AC000, v60, v61, "Got a meeting response for something I didn't respond to?.  Sent responses %@, responses-to-the-responses %@", buf, 0x16u);

          v7 = v72;
        }

        v5 = 1;
        errorCopy = 0;
        goto LABEL_60;
      }

      v44 = v43;
      v45 = *v83;
LABEL_40:
      v46 = 0;
      while (1)
      {
        if (*v83 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = *(*(&v82 + 1) + 8 * v46);
        deliveryItemServerId = [v47 deliveryItemServerId];
        requestId = [v41 requestId];
        v50 = [deliveryItemServerId isEqualToString:requestId];

        if (!v50)
        {
          goto LABEL_47;
        }

        instanceId = [v41 instanceId];

        if (!instanceId)
        {
          v56 = v47;
          goto LABEL_52;
        }

        v52 = MEMORY[0x277CBEAA8];
        instanceId2 = [v41 instanceId];
        v54 = [v52 dateWithActiveSyncString:instanceId2];

        instanceDate = [v47 instanceDate];
        LODWORD(instanceId2) = [v54 isEqualToDate:instanceDate];

        if (instanceId2)
        {
          break;
        }

LABEL_47:
        if (v44 == ++v46)
        {
          v44 = [(NSArray *)v42 countByEnumeratingWithState:&v82 objects:v100 count:16];
          if (v44)
          {
            goto LABEL_40;
          }

          goto LABEL_56;
        }
      }

      v57 = v47;

LABEL_52:
      if (!v47)
      {
        goto LABEL_57;
      }

      eventId3 = [v41 eventId];
      [v47 setCalEventServerId:eventId3];

      status4 = [v41 status];
      self = selfCopy2;
      [v47 setStatus:{-[ASMeetingResponseTask taskStatusForExchangeStatus:](selfCopy2, "taskStatusForExchangeStatus:", objc_msgSend(status4, "intValue"))}];

      [(NSArray *)v42 removeObject:v47];
      v40 = v77 + 1;
    }

    while (v77 + 1 != v74);
    v74 = [singularResponses6 countByEnumeratingWithState:&v86 objects:v101 count:16];
    if (v74)
    {
      continue;
    }

    break;
  }

  errorCopy = 0;
  v7 = v72;
  v5 = v71;
LABEL_60:

  if ([(NSArray *)obj count])
  {
    v64 = DALoggingwithCategory();
    v65 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v64, v65))
    {
      v66 = v7;
      v67 = [(NSArray *)obj count];
      v68 = self->_responseItems;
      singularResponses8 = [v66 singularResponses];
      *buf = 134218498;
      selfCopy = v67;
      v7 = v66;
      v96 = 2112;
      v97 = v68;
      v98 = 2112;
      v99 = singularResponses8;
      _os_log_impl(&dword_24A0AC000, v64, v65, "No response for %lu meeting responses.  Sent responses %@, responses-to-the-responses %@", buf, 0x20u);
    }

    v5 = 1;
  }

LABEL_64:

LABEL_65:
LABEL_66:

  if (![(ASTask *)self attemptRetryWithStatus:v5 error:errorCopy])
  {
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __41__ASMeetingResponseTask_finishWithError___block_invoke;
    v79[3] = &unk_278FC7B68;
    v79[4] = self;
    v81 = v5;
    v80 = errorCopy;
    [(ASTask *)self finishWithError:v80 afterDelegateCallout:v79];
  }

  [(ASTask *)self setCurrentlyParsingItem:0];

  v70 = *MEMORY[0x277D85DE8];
}

void __41__ASMeetingResponseTask_finishWithError___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 24));
  [WeakRetained meetingResponseTask:a1[4] completedWithStatus:a1[6] error:a1[5]];
}

- (int64_t)taskStatusForExchangeStatus:(int)status
{
  v14 = *MEMORY[0x277D85DE8];
  if (status >= 5)
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v10 = 138412546;
      v11 = v8;
      v12 = 1024;
      statusCopy = status;
      _os_log_impl(&dword_24A0AC000, v5, v6, "%@: Unknown status code (%d)", &v10, 0x12u);
    }

    result = 10;
  }

  else
  {
    result = qword_24A14DB60[status];
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

@end