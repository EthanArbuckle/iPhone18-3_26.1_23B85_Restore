@interface ASMeetingResponseTask
- (ASMeetingResponseTask)initWithResponseItems:(id)a3;
- (BOOL)getTopLevelToken:(char *)a3 outStatusCodePage:(char *)a4 outStatusToken:(char *)a5;
- (BOOL)processContext:(id)a3;
- (id)requestBody;
- (int64_t)taskStatusForExchangeStatus:(int)a3;
- (void)finishWithError:(id)a3;
@end

@implementation ASMeetingResponseTask

- (ASMeetingResponseTask)initWithResponseItems:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ASMeetingResponseTask;
  v6 = [(ASTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_responseItems, a3);
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
        v8 = [v7 deliveryItemFolderId];
        [v3 appendTag:6 withStringContent:v8];

        v9 = [v7 deliveryItemServerId];
        [v3 appendTag:8 withStringContent:v9];

        v10 = [v7 instanceDate];
        if (v10)
        {
          v11 = v10;
          v12 = [(ASTask *)self taskManager];
          v13 = [v12 account];
          v14 = [v13 protocol];
          v15 = [v14 useEventIdsInMeetingResponse];

          if (v15)
          {
            v16 = [v7 instanceDate];
            v17 = [v16 activeSyncString];
            [v3 appendTag:14 withStringContent:v17];
          }
        }

        v18 = [(ASTask *)self taskManager];
        v19 = [v18 protocol];

        if ([v19 includeCommentInMeetingResponse] && objc_msgSend(v7, "responseRequested"))
        {
          v20 = [v7 comment];
          if (v20)
          {
          }

          else
          {
            v27 = [v7 proposedStartTime];
            if (!v27)
            {
              goto LABEL_24;
            }

            v28 = v27;
            v29 = [v7 proposedEndTime];
            if (!v29)
            {

LABEL_24:
              [v3 appendEmptyTag:18];
              goto LABEL_25;
            }

            v30 = v29;
            v31 = [v7 meetingResponse];

            if (v31 == 1)
            {
              goto LABEL_24;
            }
          }

          [v3 openTag:18];
          v21 = [v7 comment];

          if (v21)
          {
            [v3 switchToCodePage:17];
            [v3 openTag:10];
            [v3 appendTag:6 withIntContent:1];
            v22 = [v7 comment];
            [v3 appendTag:11 withStringContent:v22];

            [v3 closeTag:10];
            [v3 switchToCodePage:8];
          }

          if ([v19 supportsProposeNewTime] && objc_msgSend(v7, "meetingResponse") != 1)
          {
            v23 = [v7 proposedStartTime];
            v24 = [v23 activeSyncStringWithoutSeparators];
            [v3 appendTag:16 withStringContent:v24];

            v25 = [v7 proposedEndTime];
            v26 = [v25 activeSyncStringWithoutSeparators];
            [v3 appendTag:17 withStringContent:v26];
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
  v32 = [v3 data];

  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

- (BOOL)getTopLevelToken:(char *)a3 outStatusCodePage:(char *)a4 outStatusToken:(char *)a5
{
  *a4 = 8;
  *a3 = 7;
  *a5 = 11;
  return 1;
}

- (BOOL)processContext:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASTask *)self currentlyParsingItem];

  if (!v5)
  {
    if (!self->super._haveSwitchedCodePage)
    {
      if (![v4 hasNumberOfTokensRemaining:2])
      {
        goto LABEL_17;
      }

      if ([v4 currentByte])
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to meeting response code page"];
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASMeetingResponseTask.m", 129, objc_msgSend(v4, "curOffset")];
        v13 = DALoggingwithCategory();
        v14 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v13, v14))
        {
          *buf = 134217984;
          v23 = [v4 curOffset];
          _os_log_impl(&dword_24A0AC000, v13, v14, "Failure at index %lld:", buf, 0xCu);
        }

        v15 = DALoggingwithCategory();
        if (!os_log_type_enabled(v15, v14))
        {
          goto LABEL_29;
        }

        *buf = 138412290;
        v23 = v11;
        goto LABEL_28;
      }

      [v4 advanceOffsetByAmount:1];
      if ([v4 currentByte] != 8)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to meeting response code page"];
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASMeetingResponseTask.m", 129, objc_msgSend(v4, "curOffset")];
        v18 = DALoggingwithCategory();
        v14 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v18, v14))
        {
          *buf = 134217984;
          v23 = [v4 curOffset];
          _os_log_impl(&dword_24A0AC000, v18, v14, "Failure at index %lld:", buf, 0xCu);
        }

        v15 = DALoggingwithCategory();
        if (!os_log_type_enabled(v15, v14))
        {
          goto LABEL_29;
        }

        *buf = 138412290;
        v23 = v11;
        goto LABEL_28;
      }

      [v4 advanceOffsetByAmount:1];
      [v4 setCodePage:8];
      self->super._haveSwitchedCodePage = 1;
    }

    if (self->super._haveParsedCommand)
    {
LABEL_7:
      v10 = objc_opt_new();
      [(ASTask *)self setCurrentlyParsingItem:v10];

      goto LABEL_2;
    }

    if (![v4 hasNumberOfTokensRemaining:1])
    {
      goto LABEL_17;
    }

    if (([v4 currentByte] & 0x3F) == 7)
    {
      self->super._haveParsedCommand = 1;
      goto LABEL_7;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected meeting response response"];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASMeetingResponseTask.m", 130, objc_msgSend(v4, "curOffset")];
    v17 = DALoggingwithCategory();
    v14 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v17, v14))
    {
      *buf = 134217984;
      v23 = [v4 curOffset];
      _os_log_impl(&dword_24A0AC000, v17, v14, "Failure at index %lld:", buf, 0xCu);
    }

    v15 = DALoggingwithCategory();
    if (!os_log_type_enabled(v15, v14))
    {
LABEL_29:

      [v4 setParseErrorReason:v12];
LABEL_30:
      v19 = [v4 parseErrorReason];
      v16 = v19 == 0;

      goto LABEL_31;
    }

    *buf = 138412290;
    v23 = v11;
LABEL_28:
    _os_log_impl(&dword_24A0AC000, v15, v14, "failure reason was %@", buf, 0xCu);
    goto LABEL_29;
  }

LABEL_2:
  v6 = [(ASTask *)self currentlyParsingItem];
  v7 = [(ASTask *)self taskManager];
  v8 = [v7 account];
  [v6 parseASParseContext:v4 root:0 parent:0 callbackDict:0 streamCallbackDict:0 account:v8];

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

- (void)finishWithError:(id)a3
{
  v103 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASTask *)self taskStatusForError:v4];
  if (v4)
  {
    v6 = DALoggingwithCategory();
    v7 = v6;
    if (v5 == -1)
    {
      v22 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v6, v22))
      {
        *buf = 138412290;
        v95 = objc_opt_class();
        v23 = v95;
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
        v95 = objc_opt_class();
        v96 = 2112;
        v97 = v4;
        v9 = v95;
        _os_log_impl(&dword_24A0AC000, v7, v8, "%@ failed: %@", buf, 0x16u);
      }
    }

    goto LABEL_66;
  }

  v10 = [(ASTask *)self currentlyParsingItem];
  v7 = v10;
  if (!v10 || [v10 parsingState]!= 2)
  {
    v5 = 1;
    v16 = DALoggingwithCategory();
    v21 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v16, v21))
    {
      *buf = 138412290;
      v95 = self;
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
    v95 = objc_opt_class();
    v96 = 2112;
    v97 = v7;
    v13 = v95;
    _os_log_impl(&dword_24A0AC000, v11, v12, "%@ Parsed response of %@", buf, 0x16u);
  }

  if ([(NSArray *)self->_responseItems count]== 1)
  {
    v14 = [v7 singularResponses];
    v15 = [v14 count];

    if (v15 == 1)
    {
      v16 = [(NSArray *)self->_responseItems objectAtIndexedSubscript:0];
      v17 = [v7 singularResponses];
      v18 = [v17 objectAtIndexedSubscript:0];

      v19 = [v18 eventId];
      [v16 setCalEventServerId:v19];

      v20 = [v18 status];
      -[NSObject setStatus:](v16, "setStatus:", -[ASMeetingResponseTask taskStatusForExchangeStatus:](self, "taskStatusForExchangeStatus:", [v20 intValue]));

      goto LABEL_65;
    }
  }

  v24 = [v7 singularResponses];
  v16 = [v24 count];

  if (v16)
  {
    v25 = [v7 singularResponses];
    v16 = [v25 objectAtIndexedSubscript:0];
  }

  v26 = [v7 singularResponses];
  if ([v26 count] == 1)
  {
    v27 = [v16 status];
    v28 = v5;
    v29 = [v27 intValue];

    if (v29 == 4)
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
            v38 = [v16 eventId];
            [v37 setCalEventServerId:v38];

            v39 = [v16 status];
            [v37 setStatus:{-[ASMeetingResponseTask taskStatusForExchangeStatus:](self, "taskStatusForExchangeStatus:", objc_msgSend(v39, "intValue"))}];
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
  v73 = [v7 singularResponses];
  v74 = [v73 countByEnumeratingWithState:&v86 objects:v101 count:16];
  if (!v74)
  {
    goto LABEL_60;
  }

  v71 = v5;
  v72 = v7;
  v75 = *v87;
  v76 = self;
  while (2)
  {
    v40 = 0;
    do
    {
      if (*v87 != v75)
      {
        objc_enumerationMutation(v73);
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
        self = v76;
        v7 = v72;
        if (os_log_type_enabled(v60, v61))
        {
          responseItems = v76->_responseItems;
          v63 = [v72 singularResponses];
          *buf = 138412546;
          v95 = responseItems;
          v96 = 2112;
          v97 = v63;
          _os_log_impl(&dword_24A0AC000, v60, v61, "Got a meeting response for something I didn't respond to?.  Sent responses %@, responses-to-the-responses %@", buf, 0x16u);

          v7 = v72;
        }

        v5 = 1;
        v4 = 0;
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
        v48 = [v47 deliveryItemServerId];
        v49 = [v41 requestId];
        v50 = [v48 isEqualToString:v49];

        if (!v50)
        {
          goto LABEL_47;
        }

        v51 = [v41 instanceId];

        if (!v51)
        {
          v56 = v47;
          goto LABEL_52;
        }

        v52 = MEMORY[0x277CBEAA8];
        v53 = [v41 instanceId];
        v54 = [v52 dateWithActiveSyncString:v53];

        v55 = [v47 instanceDate];
        LODWORD(v53) = [v54 isEqualToDate:v55];

        if (v53)
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

      v58 = [v41 eventId];
      [v47 setCalEventServerId:v58];

      v59 = [v41 status];
      self = v76;
      [v47 setStatus:{-[ASMeetingResponseTask taskStatusForExchangeStatus:](v76, "taskStatusForExchangeStatus:", objc_msgSend(v59, "intValue"))}];

      [(NSArray *)v42 removeObject:v47];
      v40 = v77 + 1;
    }

    while (v77 + 1 != v74);
    v74 = [v73 countByEnumeratingWithState:&v86 objects:v101 count:16];
    if (v74)
    {
      continue;
    }

    break;
  }

  v4 = 0;
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
      v69 = [v66 singularResponses];
      *buf = 134218498;
      v95 = v67;
      v7 = v66;
      v96 = 2112;
      v97 = v68;
      v98 = 2112;
      v99 = v69;
      _os_log_impl(&dword_24A0AC000, v64, v65, "No response for %lu meeting responses.  Sent responses %@, responses-to-the-responses %@", buf, 0x20u);
    }

    v5 = 1;
  }

LABEL_64:

LABEL_65:
LABEL_66:

  if (![(ASTask *)self attemptRetryWithStatus:v5 error:v4])
  {
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __41__ASMeetingResponseTask_finishWithError___block_invoke;
    v79[3] = &unk_278FC7B68;
    v79[4] = self;
    v81 = v5;
    v80 = v4;
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

- (int64_t)taskStatusForExchangeStatus:(int)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3 >= 5)
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
      v13 = a3;
      _os_log_impl(&dword_24A0AC000, v5, v6, "%@: Unknown status code (%d)", &v10, 0x12u);
    }

    result = 10;
  }

  else
  {
    result = qword_24A14DB60[a3];
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

@end