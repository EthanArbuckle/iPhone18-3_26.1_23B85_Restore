@interface ASFolderItemsSyncTask
- (BOOL)checkForErrorInContext:(id)a3;
- (BOOL)getTopLevelToken:(char *)a3 outStatusCodePage:(char *)a4 outStatusToken:(char *)a5;
- (BOOL)processContext:(id)a3;
- (NSString)previousSyncKeyForAgent;
- (double)percentComplete;
- (id)copyWithZone:(_NSZone *)a3;
- (id)replacementObjectForEmailItem:(id)a3;
- (id)requestBody;
- (int)_bodyTruncationCode;
- (int)_mimeSupportCode;
- (int)_mimeTruncationCode;
- (int)bodyType;
- (int64_t)taskStatusForExchangeStatus:(int)a3;
- (void)_addRejectedServerId:(id)a3;
- (void)_handleChangedLeaf:(id)a3 addedChanges:(id)a4 modifiedChanges:(id)a5 removedChanges:(id)a6;
- (void)_handleResponseToLeaf:(id)a3 addedResponses:(id)a4 modifiedResponses:(id)a5 removedResponses:(id)a6 fetchedResponses:(id)a7;
- (void)appendActionData:(id)a3;
- (void)appendSupportedFieldsData:(id)a3;
- (void)dealloc;
- (void)finishWithError:(id)a3;
- (void)reportStatusWithError:(id)a3;
@end

@implementation ASFolderItemsSyncTask

- (void)dealloc
{
  if (self->_isSpinning)
  {
    [(ASFolderItemsSyncTask *)self _setSpinning:0];
  }

  v3.receiver = self;
  v3.super_class = ASFolderItemsSyncTask;
  [(ASTask *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ASFolderItemsSyncTask alloc];
  v5 = [(ASFolderItemsSyncTask *)self folderID];
  v6 = [(ASFolderItemsSyncTask *)v4 initWithFolderID:v5];

  v7 = [(ASFolderItemsSyncTask *)self previousSyncKey];
  [(ASFolderItemsSyncTask *)v6 setPreviousSyncKey:v7];

  [(ASFolderItemsSyncTask *)v6 setDataclass:[(ASFolderItemsSyncTask *)self dataclass]];
  v8 = [(ASFolderItemsSyncTask *)self actions];
  [(ASFolderItemsSyncTask *)v6 setActions:v8];

  [(ASFolderItemsSyncTask *)v6 setIsInitialSync:[(ASFolderItemsSyncTask *)self isInitialSync]];
  [(ASFolderItemsSyncTask *)v6 setWillUpdate:[(ASFolderItemsSyncTask *)self willUpdate]];
  [(ASFolderItemsSyncTask *)v6 setMoreAvailable:[(ASFolderItemsSyncTask *)self moreAvailable]];
  [(ASFolderItemsSyncTask *)v6 setIsResyncAfterConnectionFailed:[(ASFolderItemsSyncTask *)self isResyncAfterConnectionFailed]];
  [(ASFolderItemsSyncTask *)v6 setBodyTruncationBytes:[(ASFolderItemsSyncTask *)self bodyTruncationBytes]];
  [(ASFolderItemsSyncTask *)v6 setMIMESupport:[(ASFolderItemsSyncTask *)self mimeSupport]];
  [(ASFolderItemsSyncTask *)v6 setFilterDays:[(ASFolderItemsSyncTask *)self filterDays]];
  v9 = [(ASFolderItemsSyncTask *)self preservedActions];
  [(ASFolderItemsSyncTask *)v6 setPreservedActions:v9];

  v10 = [(ASFolderItemsSyncTask *)self pushedActions];
  [(ASFolderItemsSyncTask *)v6 setPushedActions:v10];

  return v6;
}

- (int)bodyType
{
  if ([(ASFolderItemsSyncTask *)self dataclass]!= 1 && [(ASFolderItemsSyncTask *)self dataclass]!= 32)
  {
    return 1;
  }

  v3 = [(ASFolderItemsSyncTask *)self mimeSupport];
  if (v3 == 3)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 1;
  }
}

- (void)appendActionData:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASFolderItemsSyncTask *)self actions];
  v6 = [v5 count];

  v7 = [(ASFolderItemsSyncTask *)self actions];
  v8 = [v7 count];

  if (!v8)
  {
    goto LABEL_44;
  }

  [v4 switchToCodePage:0];
  [v4 openTag:22];
  if (!v6)
  {
LABEL_43:
    [v4 closeTag:22];
    goto LABEL_44;
  }

  v10 = 0;
  v11 = *(MEMORY[0x277D03988] + 3);
  type = *(MEMORY[0x277D03988] + 7);
  *&v9 = 138412290;
  v36 = v9;
  v38 = v11;
  v37 = v6;
  while (1)
  {
    [v4 switchToCodePage:{0, v36}];
    v12 = [(ASFolderItemsSyncTask *)self actions];
    v13 = [v12 objectAtIndexedSubscript:v10];

    v14 = [v13 asServerID];
    v15 = [v13 asClientID];
    if (!(v14 | v15))
    {
      v19 = DALoggingwithCategory();
      if (os_log_type_enabled(v19, v11))
      {
        *buf = v36;
        v44 = v13;
        _os_log_impl(&dword_24A0AC000, v19, v11, "Action does not have a server ID or client ID. Dropping action: %@", buf, 0xCu);
      }

      goto LABEL_42;
    }

    v16 = [v13 itemChangeType];
    if (v16 <= 1)
    {
      break;
    }

    if (v16 == 2)
    {
      goto LABEL_9;
    }

    if (v16 != 3)
    {
      if (v16 != 8)
      {
        goto LABEL_45;
      }

LABEL_9:
      v17 = 0;
      v18 = 9;
      goto LABEL_18;
    }

    v17 = 0;
    v18 = 10;
LABEL_18:
    [v4 openTag:v18];
    v20 = [(ASTask *)self taskManager];
    v21 = [v20 protocol];
    v40 = [v21 useInstanceIdForException];

    v22 = DALoggingwithCategory();
    if (os_log_type_enabled(v22, type))
    {
      v23 = [v13 asServerID];
      *buf = 138412546;
      v44 = v13;
      v45 = 2112;
      v46 = v23;
      _os_log_impl(&dword_24A0AC000, v22, type, "checking out action %@.  Got a server ID of %@", buf, 0x16u);
    }

    v11 = v38;
    if (v14)
    {
      if (v17)
      {
        v24 = DALoggingwithCategory();
        if (os_log_type_enabled(v24, v38))
        {
          v25 = [v13 asServerID];
          *buf = 138412546;
          v44 = v13;
          v45 = 2112;
          v46 = v25;
          _os_log_impl(&dword_24A0AC000, v24, v38, "An add action %@, has a server ID %@", buf, 0x16u);

          v11 = v38;
        }

        v26 = DALoggingwithCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          *buf = v36;
          v44 = v14;
          _os_log_fault_impl(&dword_24A0AC000, v26, OS_LOG_TYPE_FAULT, "An add action contains server ID %@", buf, 0xCu);
        }

LABEL_28:
        if (v15)
        {
          v27 = v4;
          v28 = 12;
          v29 = v15;
          goto LABEL_31;
        }

        v30 = DALoggingwithCategory();
        if (os_log_type_enabled(v30, v11))
        {
          *buf = v36;
          v44 = v13;
          _os_log_impl(&dword_24A0AC000, v30, v11, "An add action %@, without a client ID", buf, 0xCu);
        }

        v31 = DALoggingwithCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
        {
          [(ASFolderItemsSyncTask *)&v41 appendActionData:v42, v31];
        }
      }

      else
      {
        v27 = v4;
        v28 = 13;
        v29 = v14;
LABEL_31:
        [v27 appendTag:v28 withStringContent:v29];
      }

      if (((v14 != 0) & v40) == 1)
      {
        v32 = [v13 asInstanceID];
        if (v32)
        {
          [v4 switchToCodePage:17];
          [v4 appendTag:45 withStringContent:v32];
        }
      }

      goto LABEL_41;
    }

    if (v17)
    {
      goto LABEL_28;
    }

LABEL_41:
    [v4 switchToCodePage:0];
    [v4 openProspectiveTag:29];
    [v13 appendApplicationDataForTask:self toWBXMLData:v4];
    [v4 switchToCodePage:0];
    [v4 closeProspectiveTag:29];
    [v4 closeTag:v18];
    v6 = v37;
LABEL_42:

    if (v6 == ++v10)
    {
      goto LABEL_43;
    }
  }

  if (!v16)
  {
    v18 = 7;
    v17 = 1;
    goto LABEL_18;
  }

  if (v16 == 1)
  {
    v17 = 0;
    v18 = 8;
    goto LABEL_18;
  }

LABEL_45:
  v34 = DALoggingwithCategory();
  if (os_log_type_enabled(v34, v11))
  {
    v35 = [v13 itemChangeType];
    *buf = 134218242;
    v44 = v35;
    v45 = 2112;
    v46 = self;
    _os_log_impl(&dword_24A0AC000, v34, v11, "UNKNOWN CHANGE TYPE %lu %@", buf, 0x16u);
  }

LABEL_44:
  v33 = *MEMORY[0x277D85DE8];
}

- (void)appendSupportedFieldsData:(id)a3
{
  v11 = a3;
  v4 = [(ASTask *)self taskManager];
  v5 = [v4 protocol];
  v6 = [v5 usesAirSyncBaseNamespace];

  if ([(ASFolderItemsSyncTask *)self dataclass]== 2)
  {
    v7 = [(ASTask *)self taskManager];
    v8 = [v7 protocol];
    v9 = [v8 shouldSendFullContactInfo];

    if ((v9 & 1) == 0)
    {
      [v11 openTag:32];
      v10 = [v11 currentCodePage];
      [v11 switchToCodePage:1];
      [v11 appendEmptyTag:5];
      [v11 appendEmptyTag:8];
      if ((v6 & 1) == 0)
      {
        [v11 appendEmptyTag:9];
      }

      [v11 appendEmptyTag:55];
      [v11 appendEmptyTag:14];
      [v11 appendEmptyTag:26];
      [v11 appendEmptyTag:27];
      [v11 appendEmptyTag:28];
      [v11 appendEmptyTag:29];
      [v11 appendEmptyTag:18];
      [v11 appendEmptyTag:30];
      [v11 appendEmptyTag:31];
      [v11 appendEmptyTag:33];
      [v11 appendEmptyTag:34];
      [v11 appendEmptyTag:38];
      [v11 appendEmptyTag:39];
      [v11 appendEmptyTag:32];
      [v11 appendEmptyTag:35];
      [v11 appendEmptyTag:36];
      [v11 appendEmptyTag:37];
      [v11 appendEmptyTag:13];
      [v11 appendEmptyTag:42];
      [v11 appendEmptyTag:43];
      [v11 appendEmptyTag:53];
      [v11 appendEmptyTag:25];
      [v11 appendEmptyTag:45];
      [v11 appendEmptyTag:46];
      [v11 appendEmptyTag:20];
      [v11 appendEmptyTag:47];
      [v11 appendEmptyTag:48];
      [v11 appendEmptyTag:49];
      [v11 appendEmptyTag:50];
      [v11 appendEmptyTag:60];
      [v11 appendEmptyTag:54];
      [v11 appendEmptyTag:15];
      [v11 appendEmptyTag:6];
      [v11 appendEmptyTag:7];
      [v11 appendEmptyTag:41];
      [v11 appendEmptyTag:52];
      [v11 appendEmptyTag:16];
      [v11 appendEmptyTag:17];
      [v11 appendEmptyTag:19];
      [v11 appendEmptyTag:12];
      [v11 appendEmptyTag:40];
      [v11 appendEmptyTag:57];
      [v11 appendEmptyTag:58];
      [v11 appendEmptyTag:51];
      [v11 switchToCodePage:12];
      [v11 appendEmptyTag:7];
      [v11 appendEmptyTag:8];
      [v11 appendEmptyTag:9];
      [v11 appendEmptyTag:10];
      [v11 appendEmptyTag:11];
      [v11 appendEmptyTag:13];
      [v11 switchToCodePage:v10];
      [v11 closeTag:32];
    }
  }
}

- (int)_mimeSupportCode
{
  v3 = [(ASFolderItemsSyncTask *)self mimeSupport]+ 1;
  if (v3 < 4)
  {
    return dword_24A14DC90[v3];
  }

  NSLog(&cfstr_UnexpectedMime.isa, [(ASFolderItemsSyncTask *)self mimeSupport]);
  return 2;
}

- (int)_bodyTruncationCode
{
  if ([(ASFolderItemsSyncTask *)self bodyTruncationBytes]== -1)
  {
    return 9;
  }

  if (![(ASFolderItemsSyncTask *)self bodyTruncationBytes])
  {
    return 0;
  }

  v3 = 9;
  v4 = &dword_24A14DF4C;
  v5 = 8;
  while (v5 >= 2)
  {
    --v5;
    v6 = *v4--;
    --v3;
    if (v6 <= [(ASFolderItemsSyncTask *)self bodyTruncationBytes])
    {
      return v3;
    }
  }

  return 1;
}

- (int)_mimeTruncationCode
{
  if ([(ASFolderItemsSyncTask *)self bodyTruncationBytes]== -1)
  {
    return 8;
  }

  if (![(ASFolderItemsSyncTask *)self bodyTruncationBytes])
  {
    return 0;
  }

  v3 = 8;
  v4 = &dword_24A14DF6C;
  v5 = 7;
  while (v5 >= 2)
  {
    --v5;
    v6 = *v4--;
    --v3;
    if (v6 <= [(ASFolderItemsSyncTask *)self bodyTruncationBytes])
    {
      return v3;
    }
  }

  return 1;
}

- (id)requestBody
{
  v34 = *MEMORY[0x277D85DE8];
  [(ASFolderItemsSyncTask *)self _setSpinning:1];
  v3 = [(ASTask *)self taskManager];
  v4 = [v3 protocol];

  v5 = objc_opt_new();
  v6 = [(ASFolderItemsSyncTask *)self previousSyncKey];
  v7 = v6;
  if (!v6 || [(__CFString *)v6 isEqualToString:@"0"])
  {
    v8 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = [(ASFolderItemsSyncTask *)self folderID];
      v28 = 134218498;
      v29 = self;
      v30 = 2114;
      v31 = v7;
      v32 = 2114;
      v33 = v10;
      _os_log_impl(&dword_24A0AC000, v8, v9, "Folder item sync task %p is using sync key %{public}@ for folder %{public}@", &v28, 0x20u);
    }
  }

  v11 = [v4 usesAirSyncBaseNamespace];
  [v5 openTag:5];
  [v5 openTag:28];
  [v5 openTag:15];
  if ([v4 shouldSendClassForFolderItemsSync])
  {
    v12 = NSStringForDASingleDataclass([(ASFolderItemsSyncTask *)self dataclass]);
    [v5 appendTag:16 withStringContent:v12];
  }

  if (v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = @"0";
  }

  [v5 appendTag:11 withStringContent:v13];
  v14 = [(ASFolderItemsSyncTask *)self folderID];
  [v5 appendTag:18 withStringContent:v14];

  if (!v7)
  {
    [(ASFolderItemsSyncTask *)self appendSupportedFieldsData:v5];
    goto LABEL_26;
  }

  if ([(__CFString *)v7 isEqualToString:@"0"])
  {
    [(ASFolderItemsSyncTask *)self appendSupportedFieldsData:v5];
  }

  if (([(__CFString *)v7 isEqualToString:@"0"]& 1) == 0)
  {
    v15 = [v4 useBooleanFolderItemsSyncDeletesAsMoves];
    v16 = [(ASFolderItemsSyncTask *)self deletesAsMoves];
    if (v15)
    {
      if (!v16)
      {
        [v5 appendTag:30 withIntContent:0];
      }
    }

    else if (v16)
    {
      [v5 appendEmptyTag:30];
    }

    if ([(ASFolderItemsSyncTask *)self willUpdate])
    {
      [v5 appendEmptyTag:19];
      v17 = v5;
      v18 = 21;
      v19 = 25;
    }

    else
    {
      if (![v4 requiresExplicitlyFalseGetChanges])
      {
        goto LABEL_26;
      }

      v17 = v5;
      v18 = 19;
      v19 = 0;
    }

    [v17 appendTag:v18 withIntContent:v19];
  }

LABEL_26:
  [v5 openProspectiveTag:23];
  if ([(ASFolderItemsSyncTask *)self dataclass]== 1)
  {
    if ([(ASFolderItemsSyncTask *)self filterDays])
    {
      [v5 appendTag:24 withIntContent:{ASFilterCodeForNumPastDays(-[ASFolderItemsSyncTask filterDays](self, "filterDays"), -[ASFolderItemsSyncTask dataclass](self, "dataclass"))}];
    }

    if ([(ASFolderItemsSyncTask *)self bodyTruncationBytes]!= -1)
    {
      if ((v11 & 1) == 0)
      {
        [v5 appendTag:25 withIntContent:{-[ASFolderItemsSyncTask _bodyTruncationCode](self, "_bodyTruncationCode")}];
      }

      [v5 appendTag:35 withIntContent:{-[ASFolderItemsSyncTask _mimeTruncationCode](self, "_mimeTruncationCode")}];
    }

    if ([(ASFolderItemsSyncTask *)self clientWinsOnSyncConflict])
    {
      [v5 appendTag:27 withIntContent:0];
    }

    if ([(ASFolderItemsSyncTask *)self mimeSupport]!= -1)
    {
      v20 = [(ASFolderItemsSyncTask *)self _mimeSupportCode];
      v21 = v5;
      v22 = 34;
LABEL_42:
      [v21 appendTag:v22 withIntContent:v20];
    }
  }

  else if ([(ASFolderItemsSyncTask *)self dataclass]== 4)
  {
    if ([(ASFolderItemsSyncTask *)self clientWinsOnSyncConflict])
    {
      [v5 appendTag:27 withIntContent:0];
    }

    if ([(ASFolderItemsSyncTask *)self filterDays])
    {
      v20 = ASFilterCodeForNumPastDays([(ASFolderItemsSyncTask *)self filterDays], [(ASFolderItemsSyncTask *)self dataclass]);
      v21 = v5;
      v22 = 24;
      goto LABEL_42;
    }
  }

  if ([(ASFolderItemsSyncTask *)self dataclass]!= 2 && [(ASFolderItemsSyncTask *)self dataclass]!= 4 && [(ASFolderItemsSyncTask *)self dataclass]!= 1 && [(ASFolderItemsSyncTask *)self dataclass]!= 16)
  {
    if ((([(ASFolderItemsSyncTask *)self dataclass]== 32) & v11) == 0)
    {
      goto LABEL_61;
    }

LABEL_48:
    v23 = [v5 currentCodePage];
    [v5 switchToCodePage:17];
    [v5 openTag:5];
    [v5 appendTag:6 withIntContent:{-[ASFolderItemsSyncTask bodyType](self, "bodyType")}];
    if ([(ASFolderItemsSyncTask *)self dataclass]== 1)
    {
      if ([(ASFolderItemsSyncTask *)self bodyTruncationBytes]== -1)
      {
        goto LABEL_60;
      }
    }

    else if ([(ASFolderItemsSyncTask *)self dataclass]== 32 || [(ASFolderItemsSyncTask *)self dataclass]== 16)
    {
      if ([(ASFolderItemsSyncTask *)self bodyTruncationBytes]== -1)
      {
        v24 = 0x200000;
LABEL_59:
        [v5 appendTag:7 withIntContent:v24];
LABEL_60:
        [v5 closeTag:5];
        [v5 switchToCodePage:v23];
        goto LABEL_61;
      }
    }

    else if ([(ASFolderItemsSyncTask *)self bodyTruncationBytes]== -1)
    {
      v24 = 0x8000;
      goto LABEL_59;
    }

    v24 = [(ASFolderItemsSyncTask *)self bodyTruncationBytes];
    goto LABEL_59;
  }

  if (v11)
  {
    goto LABEL_48;
  }

LABEL_61:
  [v5 closeProspectiveTag:23];
  if (v7 && ([(__CFString *)v7 isEqualToString:@"0"]& 1) == 0)
  {
    [(ASFolderItemsSyncTask *)self appendActionData:v5];
  }

  [v5 closeTag:15];
  [v5 closeTag:28];
  [v5 closeTag:5];
  v25 = [v5 data];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (void)_handleChangedLeaf:(id)a3 addedChanges:(id)a4 modifiedChanges:(id)a5 removedChanges:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 changeType];
  if (v14 <= 1)
  {
    v15 = v11;
    if (v14)
    {
      v15 = v12;
      if (v14 != 1)
      {
        goto LABEL_10;
      }
    }

LABEL_8:
    v16 = v15;
    [v16 addObject:v10];
    goto LABEL_9;
  }

  if (v14 == 2 || v14 == 7)
  {
    [(ASFolderItemsSyncTask *)self setNumDownloadedElements:[(ASFolderItemsSyncTask *)self numDownloadedElements]+ 1];
    v15 = v13;
    goto LABEL_8;
  }

LABEL_10:
  v16 = DALoggingwithCategory();
  v17 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v16, v17))
  {
    *v18 = 0;
    _os_log_impl(&dword_24A0AC000, v16, v17, "How did I get a change with a fetch type?  skipping", v18, 2u);
  }

LABEL_9:
}

- (void)_handleResponseToLeaf:(id)a3 addedResponses:(id)a4 modifiedResponses:(id)a5 removedResponses:(id)a6 fetchedResponses:(id)a7
{
  v22 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v22 changeType];
  v18 = v17;
  if (v17 <= 1)
  {
    if (!v17)
    {
      v19 = v13;
      goto LABEL_11;
    }

    if (v17 == 1)
    {
      v19 = v14;
      goto LABEL_11;
    }
  }

  else
  {
    switch(v17)
    {
      case 2:
        goto LABEL_5;
      case 3:
        v19 = v16;
        goto LABEL_11;
      case 7:
LABEL_5:
        [(ASFolderItemsSyncTask *)self setNumDownloadedElements:[(ASFolderItemsSyncTask *)self numDownloadedElements]+ 1];
        v19 = v15;
LABEL_11:
        v20 = v19;
        goto LABEL_12;
    }
  }

  v21 = [MEMORY[0x277CCA890] currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"ASFolderItemsSyncTask.m" lineNumber:539 description:{@"Asked to handle a response to a leaf with change type %ld, which isn't known to me.  Item is %@", v18, v22}];

  v20 = 0;
LABEL_12:
  [v20 addObject:v22];
}

- (id)replacementObjectForEmailItem:(id)a3
{
  *&v45[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v43 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v42 = objc_opt_new();
  v41 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = [v4 parent];
  v10 = [v9 parent];

  v11 = [v10 dataclass];
  if ([v4 isResponse])
  {
    if (v11 <= 0x20 && ((1 << v11) & 0x100010016) != 0)
    {
      v12 = [v4 status];
      if ([v12 intValue] == 8)
      {
        v13 = [(ASFolderItemsSyncTask *)self willUpdate];

        if (v13)
        {
          v14 = DALoggingwithCategory();
          v15 = *(MEMORY[0x277D03988] + 3);
          if (os_log_type_enabled(v14, v15))
          {
            *buf = 138412290;
            *v45 = v4;
            _os_log_impl(&dword_24A0AC000, v14, v15, "The following collection item isn't known by the server.  We'll delete it locally.  Item %@", buf, 0xCu);
          }

          [v4 setChangeType:2];
LABEL_16:
          [(ASFolderItemsSyncTask *)self _handleChangedLeaf:v4 addedChanges:v43 modifiedChanges:v5 removedChanges:v6];
          goto LABEL_25;
        }
      }

      else
      {
      }

      [(ASFolderItemsSyncTask *)self _handleResponseToLeaf:v4 addedResponses:v42 modifiedResponses:v41 removedResponses:v7 fetchedResponses:v8];
    }

    else
    {
      v21 = v5;
      v22 = DALoggingwithCategory();
      v23 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v22, v23))
      {
        *buf = 134217984;
        *v45 = v11;
        _os_log_impl(&dword_24A0AC000, v22, v23, "No support yet for responses of dataclass %lu", buf, 0xCu);
      }

      v5 = v21;
    }
  }

  else
  {
    v40 = v5;
    v16 = [v4 status];
    v17 = [v16 intValue];

    if (v17 == 31 || v17 == 9)
    {
      v18 = DALoggingwithCategory();
      v19 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v18, v19))
      {
        v20 = [v4 status];
        *buf = 67109378;
        v45[0] = [v20 intValue];
        LOWORD(v45[1]) = 2112;
        *(&v45[1] + 2) = v4;
        _os_log_impl(&dword_24A0AC000, v18, v19, "The following collection item had an unsuccessful status (%d) %@", buf, 0x12u);
      }
    }

    v5 = v40;
    if (v11 <= 0x20 && ((1 << v11) & 0x100010016) != 0)
    {
      goto LABEL_16;
    }

    v24 = DALoggingwithCategory();
    v25 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v24, v25))
    {
      *buf = 134217984;
      *v45 = v11;
      _os_log_impl(&dword_24A0AC000, v24, v25, "No support yet for collections of dataclass %lu", buf, 0xCu);
    }

    v5 = v40;
  }

LABEL_25:
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  v27 = [v10 moreAvailable];
  LOBYTE(v39) = [v27 BOOLValue];
  v28 = v8;
  v37 = v7;
  v38 = v8;
  v29 = v7;
  v30 = v6;
  v31 = v6;
  v32 = v5;
  v33 = [WeakRetained folderItemsSyncTask:self hasPartialAdded:v43 removed:v31 modified:v5 addedResponse:v42 modifiedResponse:v41 removedResponse:v37 fetchedResponse:v38 moreAvailable:v39];

  v34 = v4;
  if (v33)
  {

    [(ASFolderItemsSyncTask *)self setNumReplacedItems:[(ASFolderItemsSyncTask *)self numReplacedItems]+ 1];
    v34 = 0;
  }

  v35 = *MEMORY[0x277D85DE8];

  return v34;
}

- (BOOL)getTopLevelToken:(char *)a3 outStatusCodePage:(char *)a4 outStatusToken:(char *)a5
{
  *a4 = 0;
  *a3 = 5;
  *a5 = 14;
  return 1;
}

- (BOOL)checkForErrorInContext:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASTask *)self currentlyParsingItem];

  if (!v5)
  {
    if ([v4 dataGeneration] == 1 && !objc_msgSend(v4, "currentBytesReceivedCount"))
    {
      goto LABEL_31;
    }

    v29 = 0;
    v28 = 0;
    if ([(ASFolderItemsSyncTask *)self getTopLevelToken:&v29 + 1 outStatusCodePage:&v29 outStatusToken:&v28])
    {
      if (![v4 currentByte] && !self->super._haveSwitchedCodePage)
      {
        if (![v4 hasNumberOfTokensRemaining:2])
        {
          goto LABEL_22;
        }

        if ([v4 currentByte])
        {
          v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to code page 0x%x", v29];
          v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASFolderItemsSyncTask.m", 683, objc_msgSend(v4, "curOffset")];
          v16 = DALoggingwithCategory();
          v17 = *(MEMORY[0x277D03988] + 3);
          if (os_log_type_enabled(v16, v17))
          {
            v18 = [v4 curOffset];
            *buf = 134217984;
            v31 = v18;
            _os_log_impl(&dword_24A0AC000, v16, v17, "Failure at index %lld:", buf, 0xCu);
          }

          v19 = DALoggingwithCategory();
          if (!os_log_type_enabled(v19, v17))
          {
            goto LABEL_28;
          }

          *buf = 138412290;
          v31 = v11;
          goto LABEL_27;
        }

        [v4 advanceOffsetByAmount:1];
        v25 = v29;
        if (v25 != [v4 currentByte])
        {
          v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to code page 0x%x", v29];
          v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASFolderItemsSyncTask.m", 683, objc_msgSend(v4, "curOffset")];
          v26 = DALoggingwithCategory();
          v17 = *(MEMORY[0x277D03988] + 3);
          if (os_log_type_enabled(v26, v17))
          {
            v27 = [v4 curOffset];
            *buf = 134217984;
            v31 = v27;
            _os_log_impl(&dword_24A0AC000, v26, v17, "Failure at index %lld:", buf, 0xCu);
          }

          v19 = DALoggingwithCategory();
          if (!os_log_type_enabled(v19, v17))
          {
            goto LABEL_28;
          }

          *buf = 138412290;
          v31 = v11;
          goto LABEL_27;
        }

        [v4 advanceOffsetByAmount:1];
        [v4 setCodePage:v29];
        self->super._haveSwitchedCodePage = 1;
      }

      if (self->super._haveParsedCommand)
      {
LABEL_12:
        v13 = [ASTopLevelErrorChecker alloc];
        v14 = [(ASTopLevelErrorChecker *)v13 initWithCodePage:v29 statusToken:v28];
        [(ASTask *)self setCurrentlyParsingItem:v14];

        goto LABEL_2;
      }

      if (![v4 hasNumberOfTokensRemaining:1])
      {
        goto LABEL_22;
      }

      v15 = [v4 currentByte];
      if ((v15 & 0x3F) == HIBYTE(v29))
      {
        self->super._haveParsedCommand = 1;
        goto LABEL_12;
      }

      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected top level token 0x%x", HIBYTE(v29)];
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASFolderItemsSyncTask.m", 685, objc_msgSend(v4, "curOffset")];
      v21 = DALoggingwithCategory();
      v17 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v21, v17))
      {
        v22 = [v4 curOffset];
        *buf = 134217984;
        v31 = v22;
        _os_log_impl(&dword_24A0AC000, v21, v17, "Failure at index %lld:", buf, 0xCu);
      }

      v19 = DALoggingwithCategory();
      if (!os_log_type_enabled(v19, v17))
      {
LABEL_28:

        [v4 setParseErrorReason:v12];
        goto LABEL_29;
      }

      *buf = 138412290;
      v31 = v11;
LABEL_27:
      _os_log_impl(&dword_24A0AC000, v19, v17, "failure reason was %@", buf, 0xCu);
      goto LABEL_28;
    }
  }

LABEL_2:
  v6 = [(ASTask *)self currentlyParsingItem];
  v7 = [(ASTask *)self taskManager];
  v8 = [v7 account];
  [v6 parseASParseContext:v4 root:0 parent:0 callbackDict:0 streamCallbackDict:0 account:v8];

  currentlyParsingItem = self->super._currentlyParsingItem;
  if (currentlyParsingItem)
  {
    v10 = [(ASItem *)currentlyParsingItem parsingState];
    if (v10 >= 2)
    {
      if (v10 - 3 < 2)
      {
LABEL_30:
        [(ASTask *)self setCurrentlyParsingItem:0];
LABEL_31:
        v20 = 1;
        goto LABEL_32;
      }

      v11 = [(ASTask *)self currentlyParsingItem];
      v12 = [v11 foundStatus];
      [(ASTask *)self handleTopLevelErrorStatus:v12];
LABEL_29:

      goto LABEL_30;
    }
  }

LABEL_22:
  v20 = 0;
LABEL_32:

  v23 = *MEMORY[0x277D85DE8];
  return v20;
}

- (BOOL)processContext:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASTask *)self currentlyParsingItem];

  if (v5)
  {
    goto LABEL_8;
  }

  if ([v4 dataGeneration] == 1 && !objc_msgSend(v4, "currentBytesReceivedCount"))
  {
    [(ASFolderItemsSyncTask *)self setHaveShortcut121Response:1];
    goto LABEL_8;
  }

  if ([v4 currentByte] || self->super._haveSwitchedCodePage)
  {
LABEL_6:
    v6 = [[ASFolderItemsSyncResponse alloc] initWithDataclass:[(ASFolderItemsSyncTask *)self dataclass]];
    [(ASTask *)self setCurrentlyParsingItem:v6];
    [(ASFolderItemsSyncTask *)self setNumReplacedItems:0];

LABEL_8:
    v7 = [(ASTask *)self currentlyParsingItem];

    if (!v7)
    {
      goto LABEL_18;
    }

    v43 = v4;
    [(ASFolderItemsSyncTask *)self setHaveShortcut121Response:0];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __40__ASFolderItemsSyncTask_processContext___block_invoke;
    v45[3] = &unk_278FC7D20;
    v45[4] = self;
    v8 = MEMORY[0x24C2119B0](v45);
    v50[0] = @"ASFolderItemsSyncResponse.ASArray.ASCollection.ASArray.ASEmailItem";
    v9 = MEMORY[0x24C2119B0]();
    v50[1] = @"ASFolderItemsSyncResponse.ASArray.ASCollection.ASArray.ASEmailItemResponse";
    v51[0] = v9;
    v42 = v8;
    v10 = MEMORY[0x24C2119B0](v8);
    v51[1] = v10;
    v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];

    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __40__ASFolderItemsSyncTask_processContext___block_invoke_2;
    v44[3] = &unk_278FC7D98;
    v44[4] = self;
    v11 = MEMORY[0x24C2119B0](v44);
    v12 = [(ASTask *)self taskManager];
    v13 = [v12 protocol];
    v14 = [v13 usesAirSyncBaseNamespace];

    if (v14)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"ASFolderItemsSyncResponse.ASArray.ASCollection.ASArray.ASEmailItem.ASDictionary.ASDictionary.%d", 69899];
      v48[0] = v15;
      v16 = MEMORY[0x24C2119B0](v11);
      v49[0] = v16;
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"ASFolderItemsSyncResponse.ASArray.ASCollection.ASArray.ASEmailItemResponse.ASDictionary.ASDictionary.%d", 69899];
      v48[1] = v17;
      v18 = MEMORY[0x24C2119B0](v11);
      v49[1] = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
    }

    else
    {
      v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"ASFolderItemsSyncResponse.ASArray.ASCollection.ASArray.ASEmailItem.ASDictionary.%d", 66102];
      v46[0] = v40;
      v16 = MEMORY[0x24C2119B0](v11);
      v47[0] = v16;
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"ASFolderItemsSyncResponse.ASArray.ASCollection.ASArray.ASEmailItemResponse.ASDictionary.%d", 66102];
      v46[1] = v17;
      v18 = MEMORY[0x24C2119B0](v11);
      v47[1] = v18;
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"ASFolderItemsSyncResponse.ASArray.ASCollection.ASArray.ASEmailItem.ASDictionary.%d", 66060];
      v46[2] = v20;
      v21 = MEMORY[0x24C2119B0](v11);
      v47[2] = v21;
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"ASFolderItemsSyncResponse.ASArray.ASCollection.ASArray.ASEmailItemResponse.ASDictionary.%d", 66060];
      v46[3] = v22;
      v23 = MEMORY[0x24C2119B0](v11);
      v47[3] = v23;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:4];

      v15 = v40;
    }

    v24 = [(ASTask *)self currentlyParsingItem];
    v25 = [(ASTask *)self taskManager];
    v26 = [v25 account];
    v4 = v43;
    [v24 parseASParseContext:v43 root:0 parent:0 callbackDict:v41 streamCallbackDict:v19 account:v26];

    currentlyParsingItem = self->super._currentlyParsingItem;
    if (currentlyParsingItem)
    {
      v28 = [(ASItem *)currentlyParsingItem parsingState];
      v29 = v28 > 4 ? 0 : dword_24A14DF74[v28];
    }

    else
    {
      v29 = 1;
    }

    if ((v29 | 2) == 2)
    {
      goto LABEL_18;
    }

LABEL_25:
    v31 = 0;
    goto LABEL_26;
  }

  if (![v4 hasNumberOfTokensRemaining:2])
  {
    goto LABEL_25;
  }

  if ([v4 currentByte])
  {
    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to sync code page"];
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASFolderItemsSyncTask.m", 712, objc_msgSend(v4, "curOffset")];
    v34 = DALoggingwithCategory();
    v35 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v34, v35))
    {
      *buf = 134217984;
      v53 = [v4 curOffset];
      _os_log_impl(&dword_24A0AC000, v34, v35, "Failure at index %lld:", buf, 0xCu);
    }

    v36 = DALoggingwithCategory();
    if (!os_log_type_enabled(v36, v35))
    {
      goto LABEL_33;
    }

    *buf = 138412290;
    v53 = v32;
    goto LABEL_32;
  }

  [v4 advanceOffsetByAmount:1];
  if (![v4 currentByte])
  {
    [v4 advanceOffsetByAmount:1];
    [v4 setCodePage:0];
    self->super._haveSwitchedCodePage = 1;
    goto LABEL_6;
  }

  v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to sync code page"];
  v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASFolderItemsSyncTask.m", 712, objc_msgSend(v4, "curOffset")];
  v39 = DALoggingwithCategory();
  v35 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v39, v35))
  {
    *buf = 134217984;
    v53 = [v4 curOffset];
    _os_log_impl(&dword_24A0AC000, v39, v35, "Failure at index %lld:", buf, 0xCu);
  }

  v36 = DALoggingwithCategory();
  if (os_log_type_enabled(v36, v35))
  {
    *buf = 138412290;
    v53 = v32;
LABEL_32:
    _os_log_impl(&dword_24A0AC000, v36, v35, "failure reason was %@", buf, 0xCu);
  }

LABEL_33:

  [v4 setParseErrorReason:v33];
LABEL_18:
  v30 = [v4 parseErrorReason];
  v31 = v30 == 0;

LABEL_26:
  v37 = *MEMORY[0x277D85DE8];
  return v31;
}

- (void)_addRejectedServerId:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(ASFolderItemsSyncTask *)self mRejectedServerIds];

    if (!v5)
    {
      v6 = objc_opt_new();
      [(ASFolderItemsSyncTask *)self setMRejectedServerIds:v6];
    }

    v7 = [(ASFolderItemsSyncTask *)self mRejectedServerIds];
    [v7 addObject:v4];
  }
}

- (void)finishWithError:(id)a3
{
  v89 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_isSpinning)
  {
    [(ASFolderItemsSyncTask *)self _setSpinning:0];
  }

  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v71 = objc_opt_new();
  v72 = objc_opt_new();
  v73 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = [(ASTask *)self taskStatusForError:v4];
  [(ASFolderItemsSyncTask *)self setNumDownloadedElements:[(ASFolderItemsSyncTask *)self numReplacedItems]];
  if (!v4)
  {
    v11 = [(ASTask *)self currentlyParsingItem];
    if ([(ASFolderItemsSyncTask *)self haveShortcut121Response]&& !v11)
    {
      [(ASFolderItemsSyncTask *)self previousSyncKey];
      v17 = v16 = v6;
      v15 = [v17 copy];

      v6 = v16;
      goto LABEL_39;
    }

    v70 = v6;
    if (v11 && [v11 parsingState]== 2)
    {
      v20 = DALoggingwithCategory();
      v21 = *(MEMORY[0x277D03988] + 6);
      v67 = v5;
      if (os_log_type_enabled(v20, v21))
      {
        v22 = objc_opt_class();
        v23 = v22;
        *buf = 138412802;
        *v86 = v22;
        *&v86[8] = 2112;
        *&v86[10] = v11;
        v87 = 1024;
        v88 = [(ASFolderItemsSyncTask *)self numReplacedItems];
        _os_log_impl(&dword_24A0AC000, v20, v21, "%@ Parsed response of %@ (%d items downloaded and replaced while parsing)", buf, 0x1Cu);

        v5 = v67;
      }

      v24 = [v11 status];
      v9 = -[ASFolderItemsSyncTask taskStatusForExchangeStatus:](self, "taskStatusForExchangeStatus:", [v24 intValue]);

      if (v9 == 2)
      {
        v25 = [v11 collection];
        v26 = [v25 dataclass];
        v66 = v25;
        v27 = [v25 changedItems];
        v28 = [v27 objectEnumerator];

        v69 = v28;
        v29 = [v28 nextObject];
        if (v29)
        {
          v30 = v29;
          v31 = *(MEMORY[0x277D03988] + 3);
          do
          {
            v32 = [v30 status];
            v33 = [v32 intValue];

            if (v33 == 31 || v33 == 9)
            {
              v34 = DALoggingwithCategory();
              if (os_log_type_enabled(v34, v31))
              {
                v35 = [v30 status];
                v36 = [v35 intValue];
                *buf = 67109378;
                *v86 = v36;
                *&v86[4] = 2112;
                *&v86[6] = v30;
                _os_log_impl(&dword_24A0AC000, v34, v31, "The following collection item had an unsuccessful status (%d) %@", buf, 0x12u);
              }

              v37 = [v30 serverID];
              [(ASFolderItemsSyncTask *)self _addRejectedServerId:v37];
            }

            else
            {
              if (v26 <= 0x20 && ((1 << v26) & 0x100010016) != 0)
              {
                [(ASFolderItemsSyncTask *)self _handleChangedLeaf:v30 addedChanges:v67 modifiedChanges:v70 removedChanges:v71];
                goto LABEL_30;
              }

              v37 = DALoggingwithCategory();
              if (os_log_type_enabled(v37, v31))
              {
                *buf = 134217984;
                *v86 = v26;
                _os_log_impl(&dword_24A0AC000, v37, v31, "No support yet for collections of dataclass %lu", buf, 0xCu);
              }
            }

LABEL_30:
            v38 = [v69 nextObject];

            v30 = v38;
          }

          while (v38);
        }

        v42 = [v66 responseItems];
        v43 = [v42 objectEnumerator];

        v68 = v43;
        v44 = [v43 nextObject];
        if (v44)
        {
          v46 = v44;
          v47 = *(MEMORY[0x277D03988] + 3);
          *&v45 = 134217984;
          v65 = v45;
          do
          {
            if (v26 > 0x20 || ((1 << v26) & 0x100010016) == 0)
            {
              v51 = DALoggingwithCategory();
              if (os_log_type_enabled(v51, v47))
              {
                *buf = v65;
                *v86 = v26;
                _os_log_impl(&dword_24A0AC000, v51, v47, "No support yet for responses of dataclass %lu", buf, 0xCu);
              }

              goto LABEL_56;
            }

            v48 = [v46 status];
            if ([v48 intValue] == 8)
            {
              v49 = [(ASFolderItemsSyncTask *)self willUpdate];

              if (v49)
              {
                v50 = DALoggingwithCategory();
                if (os_log_type_enabled(v50, v47))
                {
                  *buf = 138412290;
                  *v86 = v46;
                  _os_log_impl(&dword_24A0AC000, v50, v47, "The following collection item isn't known by the server.  We'll delete it locally.  Item %@", buf, 0xCu);
                }

                [v46 setChangeType:2];
                [(ASFolderItemsSyncTask *)self _handleChangedLeaf:v46 addedChanges:v67 modifiedChanges:v70 removedChanges:v71];
                goto LABEL_56;
              }
            }

            else
            {
            }

            [(ASFolderItemsSyncTask *)self _handleResponseToLeaf:v46 addedResponses:v72 modifiedResponses:v73 removedResponses:v7 fetchedResponses:v8, v65];
LABEL_56:
            v52 = [v68 nextObject];

            v46 = v52;
          }

          while (v52);
        }

        v53 = v66;
        v54 = [v66 status];
        v9 = -[ASFolderItemsSyncTask taskStatusForExchangeStatus:](self, "taskStatusForExchangeStatus:", [v54 intValue]);

        v55 = [v66 syncKey];

        if (v55 && v9 == 2)
        {
          v15 = [v66 syncKey];
          v5 = v67;
        }

        else
        {
          v5 = v67;
          if (v9 == 2)
          {
            v15 = 0;
          }

          else
          {
            v56 = DALoggingwithCategory();
            v57 = *(MEMORY[0x277D03988] + 4);
            if (os_log_type_enabled(v56, v57))
            {
              *buf = 138412546;
              *v86 = self;
              *&v86[8] = 2048;
              *&v86[10] = v9;
              _os_log_impl(&dword_24A0AC000, v56, v57, "%@ collection error code was %ld", buf, 0x16u);
            }

            v15 = 0;
            v53 = v66;
          }
        }

        if ([(ASFolderItemsSyncTask *)self numReplacedItems]<= 0)
        {
          [v53 changedItems];
          v60 = v59 = v53;
          if ([v60 count])
          {
            v58 = 1;
          }

          else
          {
            v61 = [v59 responseItems];
            v58 = [v61 count] != 0;

            v5 = v67;
          }

          v53 = v66;
        }

        else
        {
          v58 = 1;
        }

        v62 = [v53 moreAvailable];
        -[ASFolderItemsSyncTask setMoreAvailable:](self, "setMoreAvailable:", [v62 BOOLValue]);

        if ([(ASFolderItemsSyncTask *)self moreAvailable]&& !v58)
        {
          v63 = DALoggingwithCategory();
          v64 = *(MEMORY[0x277D03988] + 3);
          if (os_log_type_enabled(v63, v64))
          {
            *buf = 138412290;
            *v86 = self;
            _os_log_impl(&dword_24A0AC000, v63, v64, "%@ saw more available, but no new content", buf, 0xCu);
          }

          [(ASFolderItemsSyncTask *)self setHadFalseMoreAvailable:1];
          [(ASFolderItemsSyncTask *)self setMoreAvailable:0];
          v5 = v67;
        }

LABEL_38:
        v6 = v70;
        goto LABEL_39;
      }
    }

    else
    {
      v9 = 1;
    }

    v39 = DALoggingwithCategory();
    v40 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v39, v40))
    {
      *buf = 134218240;
      *v86 = self;
      *&v86[8] = 2048;
      *&v86[10] = v9;
      _os_log_impl(&dword_24A0AC000, v39, v40, "ASFolderItemsSyncTask %p failed with status: %ld", buf, 0x16u);
    }

    v15 = 0;
    goto LABEL_38;
  }

  v10 = DALoggingwithCategory();
  v11 = v10;
  if (v9 == -1)
  {
    v18 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v10, v18))
    {
      *buf = 138412290;
      *v86 = objc_opt_class();
      v19 = *v86;
      _os_log_impl(&dword_24A0AC000, v11, v18, "%@ cancelled", buf, 0xCu);
    }

    v15 = 0;
    v9 = -1;
  }

  else
  {
    v12 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v10, v12))
    {
      *buf = 138412546;
      *v86 = objc_opt_class();
      *&v86[8] = 2112;
      *&v86[10] = v4;
      v13 = v6;
      v14 = *v86;
      _os_log_impl(&dword_24A0AC000, v11, v12, "%@ failed: %@", buf, 0x16u);

      v6 = v13;
    }

    v15 = 0;
  }

LABEL_39:

  if (![(ASTask *)self attemptRetryWithStatus:v9 error:v4])
  {
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __41__ASFolderItemsSyncTask_finishWithError___block_invoke;
    v74[3] = &unk_278FC8000;
    v74[4] = self;
    v84 = v9;
    v75 = v4;
    v76 = v15;
    v77 = v5;
    v78 = v71;
    v79 = v6;
    v80 = v72;
    v81 = v73;
    v82 = v7;
    v83 = v8;
    [(ASTask *)self finishWithError:v75 afterDelegateCallout:v74];
  }

  [(ASTask *)self setCurrentlyParsingItem:0];

  v41 = *MEMORY[0x277D85DE8];
}

void __41__ASFolderItemsSyncTask_finishWithError___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  v2 = *(a1 + 72);
  [v3 folderItemsSyncTask:*(a1 + 32) completedWithStatus:*(a1 + 112) error:*(a1 + 40) newSyncKey:*(a1 + 48) added:*(a1 + 56) removed:*(a1 + 64) modified:*(a1 + 72) addedResponse:*(a1 + 80) modifiedResponse:*(a1 + 88) removedResponse:*(a1 + 96) fetchedResponse:*(a1 + 104)];
}

- (double)percentComplete
{
  v3 = [(ASTask *)self parseContext];
  v4 = [v3 expectedTotalBytesCount];

  if (v4 < 1)
  {
    return -1.0;
  }

  v5 = [(ASTask *)self parseContext];
  v6 = [v5 currentBytesReceivedCount];
  v7 = [(ASTask *)self parseContext];
  v8 = v6 / [v7 expectedTotalBytesCount];

  return v8;
}

- (int64_t)taskStatusForExchangeStatus:(int)a3
{
  v14 = *MEMORY[0x277D85DE8];
  result = 2;
  switch(a3)
  {
    case 0:
    case 1:
      break;
    case 2:
      result = 30;
      break;
    case 3:
      result = 8;
      break;
    case 4:
    case 14:
    case 15:
      result = 9;
      break;
    case 5:
    case 13:
    case 16:
      result = 5;
      break;
    case 6:
      result = 31;
      break;
    case 7:
      result = 32;
      break;
    case 8:
      result = 12;
      break;
    case 9:
      result = 33;
      break;
    case 10:
      result = 34;
      break;
    case 11:
      result = 21;
      break;
    case 12:
      result = 67;
      break;
    default:
      if (a3 == 111)
      {
        result = 80;
      }

      else
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

      break;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (NSString)previousSyncKeyForAgent
{
  if ([(ASFolderItemsSyncTask *)self isInitialBootstrapSync])
  {
    v3 = @"0";
  }

  else
  {
    v3 = [(ASFolderItemsSyncTask *)self previousSyncKey];
  }

  return v3;
}

- (void)reportStatusWithError:(id)a3
{
  v4 = a3;
  if (!overSimplifiedStatusForError(v4) && [(ASFolderItemsSyncTask *)self hadFalseMoreAvailable])
  {
    v5 = [(ASTask *)self taskManager];
    v6 = [v5 account];
    v7 = [v6 statusReport];

    [v7 noteFalseMoreAvailableResponse];
  }

  v8.receiver = self;
  v8.super_class = ASFolderItemsSyncTask;
  [(ASTask *)&v8 reportStatusWithError:v4];
}

- (void)appendActionData:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_fault_impl(&dword_24A0AC000, log, OS_LOG_TYPE_FAULT, "An add action does not contain client ID", buf, 2u);
}

@end