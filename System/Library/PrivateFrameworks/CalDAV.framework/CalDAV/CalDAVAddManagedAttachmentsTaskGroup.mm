@interface CalDAVAddManagedAttachmentsTaskGroup
- (BOOL)_postedLastAttachment;
- (CalDAVAddManagedAttachmentsTaskGroup)initWithAccountInfoProvider:(id)provider resourceURL:(id)l attachments:(id)attachments contentTypes:(id)types taskManager:(id)manager;
- (id)urlWithQuery;
- (void)_fetchUpdatedContent;
- (void)_handlePostResponse:(id)response;
- (void)_sendAttachments;
- (void)startTaskGroup;
@end

@implementation CalDAVAddManagedAttachmentsTaskGroup

- (CalDAVAddManagedAttachmentsTaskGroup)initWithAccountInfoProvider:(id)provider resourceURL:(id)l attachments:(id)attachments contentTypes:(id)types taskManager:(id)manager
{
  lCopy = l;
  attachmentsCopy = attachments;
  typesCopy = types;
  v20.receiver = self;
  v20.super_class = CalDAVAddManagedAttachmentsTaskGroup;
  v15 = [(CoreDAVTaskGroup *)&v20 initWithAccountInfoProvider:provider taskManager:manager];
  v16 = v15;
  if (v15)
  {
    [(CalDAVAddManagedAttachmentsTaskGroup *)v15 setState:0];
    [(CalDAVAddManagedAttachmentsTaskGroup *)v16 setResourceURL:lCopy];
    [(CalDAVAddManagedAttachmentsTaskGroup *)v16 setAttachments:attachmentsCopy];
    [(CalDAVAddManagedAttachmentsTaskGroup *)v16 setContentTypes:typesCopy];
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    filenamesToServerLocation = v16->_filenamesToServerLocation;
    v16->_filenamesToServerLocation = v17;
  }

  return v16;
}

- (BOOL)_postedLastAttachment
{
  attachments = [(CalDAVAddManagedAttachmentsTaskGroup *)self attachments];
  v4 = [attachments count];
  filenamesToServerLocation = [(CalDAVAddManagedAttachmentsTaskGroup *)self filenamesToServerLocation];
  LOBYTE(v4) = v4 <= [filenamesToServerLocation count];

  return v4;
}

- (id)urlWithQuery
{
  postURLWithQuery = self->_postURLWithQuery;
  if (!postURLWithQuery)
  {
    v4 = MEMORY[0x277CCACA8];
    resourceURL = [(CalDAVAddManagedAttachmentsTaskGroup *)self resourceURL];
    v6 = [v4 stringWithFormat:@"%@%@", resourceURL, @"?action=attachment-add"];

    v7 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v6];
    v8 = self->_postURLWithQuery;
    self->_postURLWithQuery = v7;

    postURLWithQuery = self->_postURLWithQuery;
  }

  return postURLWithQuery;
}

- (void)_fetchUpdatedContent
{
  [(CalDAVAddManagedAttachmentsTaskGroup *)self setState:2];
  v3 = objc_alloc(MEMORY[0x277CFDBC8]);
  resourceURL = [(CalDAVAddManagedAttachmentsTaskGroup *)self resourceURL];
  v5 = [v3 initWithURL:resourceURL];

  accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
  [v5 setAccountInfoProvider:accountInfoProvider];

  objc_initWeak(&location, v5);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__CalDAVAddManagedAttachmentsTaskGroup__fetchUpdatedContent__block_invoke;
  v8[3] = &unk_278D66CC8;
  v8[4] = self;
  objc_copyWeak(&v9, &location);
  [v5 setCompletionBlock:v8];
  taskManager = [(CoreDAVTaskGroup *)self taskManager];
  [taskManager submitQueuedCoreDAVTask:v5];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __60__CalDAVAddManagedAttachmentsTaskGroup__fetchUpdatedContent__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained responseBodyParser];
  v4 = [v3 octetStreamData];
  [*(a1 + 32) setUpdatedResourcePayload:v4];

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 responseHeaders];
  v7 = [v6 CDVObjectForKeyCaseInsensitive:@"Schedule-Tag"];
  [*(a1 + 32) setUpdatedScheduleTag:v7];

  v8 = objc_loadWeakRetained((a1 + 40));
  v9 = [v8 responseHeaders];
  v10 = [v9 CDVObjectForKeyCaseInsensitive:*MEMORY[0x277CFDB30]];
  [*(a1 + 32) setUpdatedETag:v10];

  v11 = objc_loadWeakRetained((a1 + 40));
  v12 = [v11 error];
  if (v12)
  {
    v13 = 3;
  }

  else
  {
    v13 = 7;
  }

  v14 = *(a1 + 32);
  v16 = objc_loadWeakRetained((a1 + 40));
  v15 = [v16 error];
  [v14 _finishWithError:v15 state:v13];
}

- (void)_handlePostResponse:(id)response
{
  responseCopy = response;
  error = [responseCopy error];

  if (!error)
  {
    [(CalDAVAddManagedAttachmentsTaskGroup *)self setPreviousScheduleTag:0];
    [(CalDAVAddManagedAttachmentsTaskGroup *)self setPreviousETag:0];
    responseHeaders = [responseCopy responseHeaders];
    v10 = [responseHeaders CDVObjectForKeyCaseInsensitive:@"Schedule-Tag"];
    [(CalDAVAddManagedAttachmentsTaskGroup *)self setUpdatedScheduleTag:v10];

    responseHeaders2 = [responseCopy responseHeaders];
    v12 = [responseHeaders2 CDVObjectForKeyCaseInsensitive:*MEMORY[0x277CFDB30]];
    [(CalDAVAddManagedAttachmentsTaskGroup *)self setUpdatedETag:v12];

    responseHeaders3 = [responseCopy responseHeaders];
    v14 = [responseHeaders3 CDVObjectForKeyCaseInsensitive:*MEMORY[0x277CFDB48]];
    v15 = v14;
    if (v14)
    {
      null = v14;
    }

    else
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    v19 = null;

    filenamesToServerLocation = self->_filenamesToServerLocation;
    filename = [responseCopy filename];
    [(NSMutableDictionary *)filenamesToServerLocation setObject:v19 forKey:filename];

    if (![(CalDAVAddManagedAttachmentsTaskGroup *)self _postedLastAttachment])
    {
      [(CalDAVAddManagedAttachmentsTaskGroup *)self _sendAttachments];
      goto LABEL_19;
    }

    responseData = [responseCopy responseData];
    [(CalDAVAddManagedAttachmentsTaskGroup *)self setUpdatedResourcePayload:responseData];

    responseData2 = [responseCopy responseData];
    if ([responseData2 length])
    {
      updatedScheduleTag = [(CalDAVAddManagedAttachmentsTaskGroup *)self updatedScheduleTag];
      if (updatedScheduleTag)
      {

LABEL_18:
        [(CalDAVAddManagedAttachmentsTaskGroup *)self _finishWithError:0 state:7];
        goto LABEL_19;
      }

      updatedETag = [(CalDAVAddManagedAttachmentsTaskGroup *)self updatedETag];

      if (updatedETag)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    [(CalDAVAddManagedAttachmentsTaskGroup *)self _fetchUpdatedContent];
    goto LABEL_19;
  }

  error2 = [responseCopy error];
  domain = [error2 domain];
  if ([domain isEqualToString:*MEMORY[0x277CFDB80]])
  {
    error3 = [responseCopy error];
    code = [error3 code];

    if (code == 412)
    {
      [(CalDAVAddManagedAttachmentsTaskGroup *)self setHadPreconditionFailure:1];
      [(CalDAVAddManagedAttachmentsTaskGroup *)self setPreviousScheduleTag:0];
      [(CalDAVAddManagedAttachmentsTaskGroup *)self setPreviousETag:0];
      [(CalDAVAddManagedAttachmentsTaskGroup *)self _sendAttachments];
      goto LABEL_20;
    }
  }

  else
  {
  }

  v17 = MEMORY[0x277CCABB0];
  requestDataPayload = [responseCopy requestDataPayload];
  v19 = [v17 numberWithUnsignedLongLong:{objc_msgSend(requestDataPayload, "length")}];

  v20 = MEMORY[0x277CBEAC0];
  filename2 = [responseCopy filename];
  v22 = [v20 dictionaryWithObject:v19 forKey:filename2];
  [(CalDAVAddManagedAttachmentsTaskGroup *)self setPostFailureSizes:v22];

  error4 = [responseCopy error];
  [(CalDAVAddManagedAttachmentsTaskGroup *)self _finishWithError:error4 state:5];

LABEL_19:
LABEL_20:
}

- (void)_sendAttachments
{
  v38 = *MEMORY[0x277D85DE8];
  [(CalDAVAddManagedAttachmentsTaskGroup *)self setState:1];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  attachments = [(CalDAVAddManagedAttachmentsTaskGroup *)self attachments];
  v4 = [attachments countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v4)
  {
    v5 = *v34;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v34 != v5)
      {
        objc_enumerationMutation(attachments);
      }

      v7 = *(*(&v33 + 1) + 8 * v6);
      filenamesToServerLocation = [(CalDAVAddManagedAttachmentsTaskGroup *)self filenamesToServerLocation];
      v9 = [filenamesToServerLocation objectForKey:v7];
      v10 = v9 == 0;

      if (v10)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [attachments countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    contentTypes = [(CalDAVAddManagedAttachmentsTaskGroup *)self contentTypes];
    v12 = [contentTypes objectForKey:v7];

    if (![v12 length])
    {
      [(CalDAVAddManagedAttachmentsTaskGroup *)self _finishWithError:0 state:4];
LABEL_22:

      goto LABEL_23;
    }

    attachments2 = [(CalDAVAddManagedAttachmentsTaskGroup *)self attachments];
    v14 = [attachments2 objectForKey:v7];

    v15 = [CalDAVPostStreamTask alloc];
    urlWithQuery = [(CalDAVAddManagedAttachmentsTaskGroup *)self urlWithQuery];
    v17 = [(CoreDAVPostTask *)v15 initWithDataPayload:v14 dataContentType:v12 atURL:urlWithQuery previousETag:0];

    if ([(CalDAVAddManagedAttachmentsTaskGroup *)self hadPreconditionFailure])
    {
      goto LABEL_12;
    }

    updatedScheduleTag = [(CalDAVAddManagedAttachmentsTaskGroup *)self updatedScheduleTag];
    if (updatedScheduleTag)
    {
    }

    else
    {
      previousScheduleTag = [(CalDAVAddManagedAttachmentsTaskGroup *)self previousScheduleTag];
      v20 = previousScheduleTag == 0;

      if (v20)
      {
        updatedETag = [(CalDAVAddManagedAttachmentsTaskGroup *)self updatedETag];
        if (updatedETag)
        {
        }

        else
        {
          previousETag = [(CalDAVAddManagedAttachmentsTaskGroup *)self previousETag];
          v28 = previousETag == 0;

          if (v28)
          {
LABEL_12:
            [(CoreDAVPostOrPutTask *)v17 setForceToServer:1];
LABEL_21:
            [(CalDAVPostStreamTask *)v17 setFilename:v7];
            accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
            [(CalDAVPostStreamTask *)v17 setAccountInfoProvider:accountInfoProvider];

            objc_initWeak(&location, v17);
            v30[0] = MEMORY[0x277D85DD0];
            v30[1] = 3221225472;
            v30[2] = __56__CalDAVAddManagedAttachmentsTaskGroup__sendAttachments__block_invoke;
            v30[3] = &unk_278D66CC8;
            v30[4] = self;
            objc_copyWeak(&v31, &location);
            [(CalDAVPostStreamTask *)v17 setCompletionBlock:v30];
            taskManager = [(CoreDAVTaskGroup *)self taskManager];
            [taskManager submitQueuedCoreDAVTask:v17];

            objc_destroyWeak(&v31);
            objc_destroyWeak(&location);

            goto LABEL_22;
          }
        }

        updatedETag2 = [(CalDAVAddManagedAttachmentsTaskGroup *)self updatedETag];
        if (updatedETag2)
        {
          [(CoreDAVPostOrPutTask *)v17 setPreviousETag:updatedETag2];
        }

        else
        {
          previousETag2 = [(CalDAVAddManagedAttachmentsTaskGroup *)self previousETag];
          [(CoreDAVPostOrPutTask *)v17 setPreviousETag:previousETag2];
        }

LABEL_20:

        goto LABEL_21;
      }
    }

    updatedETag2 = [(CalDAVAddManagedAttachmentsTaskGroup *)self updatedScheduleTag];
    if (updatedETag2)
    {
      [(CalDAVPostStreamTask *)v17 setPreviousScheduleTag:updatedETag2];
    }

    else
    {
      previousScheduleTag2 = [(CalDAVAddManagedAttachmentsTaskGroup *)self previousScheduleTag];
      [(CalDAVPostStreamTask *)v17 setPreviousScheduleTag:previousScheduleTag2];
    }

    goto LABEL_20;
  }

LABEL_9:

  [(CalDAVAddManagedAttachmentsTaskGroup *)self _finishWithError:0 state:6];
LABEL_23:
  v25 = *MEMORY[0x277D85DE8];
}

void __56__CalDAVAddManagedAttachmentsTaskGroup__sendAttachments__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 _handlePostResponse:WeakRetained];
}

- (void)startTaskGroup
{
  [(CalDAVAddManagedAttachmentsTaskGroup *)self setState:1];

  [(CalDAVAddManagedAttachmentsTaskGroup *)self _sendAttachments];
}

@end