@interface CalDAVAddDropBoxAttachmentsTaskGroup
+ (id)dropboxACEItemsForPrincipalURLs:(id)ls baseURL:(id)l writable:(BOOL)writable;
- (NSDictionary)etags;
- (void)_makeDropBox;
- (void)_sendAttachments;
- (void)startTaskGroup;
- (void)task:(id)task didFinishWithError:(id)error;
- (void)taskGroup:(id)group didFinishWithError:(id)error;
@end

@implementation CalDAVAddDropBoxAttachmentsTaskGroup

- (NSDictionary)etags
{
  v20 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  sentAttachmentURLsToETags = [(CalDAVAddDropBoxAttachmentsTaskGroup *)self sentAttachmentURLsToETags];
  v5 = [sentAttachmentURLsToETags countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(sentAttachmentURLsToETags);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        sentAttachmentURLsToETags2 = [(CalDAVAddDropBoxAttachmentsTaskGroup *)self sentAttachmentURLsToETags];
        v11 = [sentAttachmentURLsToETags2 objectForKey:v9];

        null = [MEMORY[0x277CBEB68] null];

        if (v11 != null)
        {
          [dictionary setObject:v11 forKey:v9];
        }
      }

      v6 = [sentAttachmentURLsToETags countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)_makeDropBox
{
  [(CalDAVAddDropBoxAttachmentsTaskGroup *)self setState:3];
  v3 = objc_alloc(MEMORY[0x277CFDC20]);
  dropboxURL = [(CalDAVAddDropBoxAttachmentsTaskGroup *)self dropboxURL];
  v7 = [v3 initWithPropertiesToSet:0 atURL:dropboxURL];

  accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
  [v7 setAccountInfoProvider:accountInfoProvider];

  [v7 setDelegate:self];
  taskManager = [(CoreDAVTaskGroup *)self taskManager];
  [taskManager submitQueuedCoreDAVTask:v7];
}

- (void)_sendAttachments
{
  v29 = *MEMORY[0x277D85DE8];
  attachments = [(CalDAVAddDropBoxAttachmentsTaskGroup *)self attachments];
  v4 = [attachments count];
  sentAttachmentURLsToETags = [(CalDAVAddDropBoxAttachmentsTaskGroup *)self sentAttachmentURLsToETags];
  v6 = [sentAttachmentURLsToETags count];

  if (v4 <= v6)
  {
    v15 = *MEMORY[0x277D85DE8];

    [(CalDAVAddDropBoxAttachmentsTaskGroup *)self _finishWithError:0 state:11];
  }

  else
  {
    [(CalDAVAddDropBoxAttachmentsTaskGroup *)self setState:5];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    attachments2 = [(CalDAVAddDropBoxAttachmentsTaskGroup *)self attachments];
    v8 = [attachments2 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(attachments2);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          sentAttachmentURLsToETags2 = [(CalDAVAddDropBoxAttachmentsTaskGroup *)self sentAttachmentURLsToETags];
          v14 = [sentAttachmentURLsToETags2 objectForKey:v12];

          if (!v14)
          {
            contentTypes = [(CalDAVAddDropBoxAttachmentsTaskGroup *)self contentTypes];
            v17 = [contentTypes objectForKey:v12];

            if ([v17 length])
            {
              attachments3 = [(CalDAVAddDropBoxAttachmentsTaskGroup *)self attachments];
              v19 = [attachments3 objectForKey:v12];

              v20 = [objc_alloc(MEMORY[0x277CFDC80]) initWithDataPayload:v19 dataContentType:v17 atURL:v12 previousETag:0];
              [v20 setForceToServer:1];
              accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
              [v20 setAccountInfoProvider:accountInfoProvider];

              [v20 setDelegate:self];
              taskManager = [(CoreDAVTaskGroup *)self taskManager];
              [taskManager submitQueuedCoreDAVTask:v20];
            }

            else
            {
              [(CalDAVAddDropBoxAttachmentsTaskGroup *)self _finishWithError:0 state:8];
            }

            goto LABEL_18;
          }
        }

        v9 = [attachments2 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:

    v23 = *MEMORY[0x277D85DE8];
  }
}

- (void)startTaskGroup
{
  attendeePrincipalURLs = [(CalDAVAddDropBoxAttachmentsTaskGroup *)self attendeePrincipalURLs];
  v4 = [attendeePrincipalURLs count];

  if (v4)
  {

    [(CalDAVAddDropBoxAttachmentsTaskGroup *)self _updateACLWithState:1];
  }

  else
  {
    [(CalDAVAddDropBoxAttachmentsTaskGroup *)self setState:2];
    v5 = objc_alloc(MEMORY[0x277CFDBD0]);
    dropboxURL = [(CalDAVAddDropBoxAttachmentsTaskGroup *)self dropboxURL];
    v9 = [v5 initWithURL:dropboxURL];

    accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
    [v9 setAccountInfoProvider:accountInfoProvider];

    [v9 setDelegate:self];
    taskManager = [(CoreDAVTaskGroup *)self taskManager];
    [taskManager submitQueuedCoreDAVTask:v9];
  }
}

- (void)task:(id)task didFinishWithError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  if ([(CalDAVAddDropBoxAttachmentsTaskGroup *)self state]== 2)
  {
    if (errorCopy)
    {
      [(CalDAVAddDropBoxAttachmentsTaskGroup *)self _makeDropBox];
      goto LABEL_20;
    }

LABEL_15:
    [(CalDAVAddDropBoxAttachmentsTaskGroup *)self _sendAttachments];
    goto LABEL_20;
  }

  if ([(CalDAVAddDropBoxAttachmentsTaskGroup *)self state]== 3)
  {
    if (!errorCopy)
    {
      attendeePrincipalURLs = [(CalDAVAddDropBoxAttachmentsTaskGroup *)self attendeePrincipalURLs];
      v19 = [attendeePrincipalURLs count];

      if (v19)
      {
        [(CalDAVAddDropBoxAttachmentsTaskGroup *)self _updateACLWithState:4];
        goto LABEL_20;
      }

      goto LABEL_15;
    }

    selfCopy2 = self;
    v8 = errorCopy;
    v9 = 6;
LABEL_12:
    [(CalDAVAddDropBoxAttachmentsTaskGroup *)selfCopy2 _finishWithError:v8 state:v9];
    goto LABEL_20;
  }

  if ([(CalDAVAddDropBoxAttachmentsTaskGroup *)self state]!= 5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy2 = self;
    v8 = errorCopy;
    v9 = 10;
    goto LABEL_12;
  }

  v10 = taskCopy;
  v11 = v10;
  if (errorCopy)
  {
    v12 = MEMORY[0x277CCABB0];
    requestDataPayload = [v10 requestDataPayload];
    nextETag = [v12 numberWithUnsignedLongLong:{objc_msgSend(requestDataPayload, "length")}];

    v15 = MEMORY[0x277CBEAC0];
    v16 = [v11 url];
    v17 = [v15 dictionaryWithObject:nextETag forKey:v16];
    [(CalDAVAddDropBoxAttachmentsTaskGroup *)self setPutFailureSizes:v17];

    [(CalDAVAddDropBoxAttachmentsTaskGroup *)self _finishWithError:errorCopy state:9];
  }

  else
  {
    nextETag = [v10 nextETag];
    if (!nextETag)
    {
      nextETag = [MEMORY[0x277CBEB68] null];
    }

    sentAttachmentURLsToETags = [(CalDAVAddDropBoxAttachmentsTaskGroup *)self sentAttachmentURLsToETags];
    v21 = [v11 url];
    [sentAttachmentURLsToETags setObject:nextETag forKey:v21];

    [(CalDAVAddDropBoxAttachmentsTaskGroup *)self _sendAttachments];
  }

LABEL_20:
}

- (void)taskGroup:(id)group didFinishWithError:(id)error
{
  groupCopy = group;
  errorCopy = error;
  if ([(CalDAVAddDropBoxAttachmentsTaskGroup *)self state]== 1)
  {
    if (errorCopy)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [groupCopy state] == 5)
      {
        [(CalDAVAddDropBoxAttachmentsTaskGroup *)self _makeDropBox];
        goto LABEL_12;
      }

      goto LABEL_8;
    }

LABEL_9:
    [(CalDAVAddDropBoxAttachmentsTaskGroup *)self _sendAttachments];
    goto LABEL_12;
  }

  if ([(CalDAVAddDropBoxAttachmentsTaskGroup *)self state]!= 4)
  {
    selfCopy2 = self;
    v8 = errorCopy;
    v9 = 10;
    goto LABEL_11;
  }

  if (!errorCopy)
  {
    goto LABEL_9;
  }

LABEL_8:
  selfCopy2 = self;
  v8 = errorCopy;
  v9 = 7;
LABEL_11:
  [(CalDAVAddDropBoxAttachmentsTaskGroup *)selfCopy2 _finishWithError:v8 state:v9];
LABEL_12:
  [(CalDAVAddDropBoxAttachmentsTaskGroup *)self setUpdateACLTaskGroup:0];
}

+ (id)dropboxACEItemsForPrincipalURLs:(id)ls baseURL:(id)l writable:(BOOL)writable
{
  v38 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  v7 = *MEMORY[0x277CFDEF8];
  v8 = [MEMORY[0x277CFDB88] privilegeItemWithNameSpace:*MEMORY[0x277CFDEF8] andName:*MEMORY[0x277CFDFD0]];
  v9 = [MEMORY[0x277CFDB88] privilegeItemWithNameSpace:v7 andName:*MEMORY[0x277CFE048]];
  v10 = [MEMORY[0x277CBEB98] setWithObject:v8];
  v28 = v9;
  v29 = v8;
  v32 = v10;
  if (writable)
  {
    v11 = [MEMORY[0x277CBEB98] setWithObjects:{v8, v9, 0}];
  }

  else
  {
    v11 = v10;
  }

  v12 = v11;
  v13 = [MEMORY[0x277CBEB58] set];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = lsCopy;
  v14 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v14)
  {
    v15 = v14;
    v31 = *v34;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v34 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v33 + 1) + 8 * i);
        v18 = [objc_alloc(MEMORY[0x277CFDC60]) initTypeIsHREFWithURL:v17];
        v19 = [objc_alloc(MEMORY[0x277CFDB88]) initWithPrincipal:v18 shouldInvert:0 action:0 withPrivileges:v12];
        [v13 addObject:v19];

        v20 = [v17 CDVfixedURLByAppendingPathComponent:@"calendar-proxy-read/"];
        v21 = [objc_alloc(MEMORY[0x277CFDC60]) initTypeIsHREFWithURL:v20];

        v22 = [objc_alloc(MEMORY[0x277CFDB88]) initWithPrincipal:v21 shouldInvert:0 action:0 withPrivileges:v32];
        [v13 addObject:v22];

        v23 = [v17 CDVfixedURLByAppendingPathComponent:@"calendar-proxy-write/"];
        v24 = [objc_alloc(MEMORY[0x277CFDC60]) initTypeIsHREFWithURL:v23];

        v25 = [objc_alloc(MEMORY[0x277CFDB88]) initWithPrincipal:v24 shouldInvert:0 action:0 withPrivileges:v12];
        [v13 addObject:v25];
      }

      v15 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v15);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v13;
}

@end