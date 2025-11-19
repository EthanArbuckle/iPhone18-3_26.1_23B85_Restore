@interface CalDAVAddManagedAttachmentsTaskGroup
- (BOOL)_postedLastAttachment;
- (CalDAVAddManagedAttachmentsTaskGroup)initWithAccountInfoProvider:(id)a3 resourceURL:(id)a4 attachments:(id)a5 contentTypes:(id)a6 taskManager:(id)a7;
- (id)urlWithQuery;
- (void)_fetchUpdatedContent;
- (void)_handlePostResponse:(id)a3;
- (void)_sendAttachments;
- (void)startTaskGroup;
@end

@implementation CalDAVAddManagedAttachmentsTaskGroup

- (CalDAVAddManagedAttachmentsTaskGroup)initWithAccountInfoProvider:(id)a3 resourceURL:(id)a4 attachments:(id)a5 contentTypes:(id)a6 taskManager:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = CalDAVAddManagedAttachmentsTaskGroup;
  v15 = [(CoreDAVTaskGroup *)&v20 initWithAccountInfoProvider:a3 taskManager:a7];
  v16 = v15;
  if (v15)
  {
    [(CalDAVAddManagedAttachmentsTaskGroup *)v15 setState:0];
    [(CalDAVAddManagedAttachmentsTaskGroup *)v16 setResourceURL:v12];
    [(CalDAVAddManagedAttachmentsTaskGroup *)v16 setAttachments:v13];
    [(CalDAVAddManagedAttachmentsTaskGroup *)v16 setContentTypes:v14];
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    filenamesToServerLocation = v16->_filenamesToServerLocation;
    v16->_filenamesToServerLocation = v17;
  }

  return v16;
}

- (BOOL)_postedLastAttachment
{
  v3 = [(CalDAVAddManagedAttachmentsTaskGroup *)self attachments];
  v4 = [v3 count];
  v5 = [(CalDAVAddManagedAttachmentsTaskGroup *)self filenamesToServerLocation];
  LOBYTE(v4) = v4 <= [v5 count];

  return v4;
}

- (id)urlWithQuery
{
  postURLWithQuery = self->_postURLWithQuery;
  if (!postURLWithQuery)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [(CalDAVAddManagedAttachmentsTaskGroup *)self resourceURL];
    v6 = [v4 stringWithFormat:@"%@%@", v5, @"?action=attachment-add"];

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
  v4 = [(CalDAVAddManagedAttachmentsTaskGroup *)self resourceURL];
  v5 = [v3 initWithURL:v4];

  v6 = [(CoreDAVTaskGroup *)self accountInfoProvider];
  [v5 setAccountInfoProvider:v6];

  objc_initWeak(&location, v5);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__CalDAVAddManagedAttachmentsTaskGroup__fetchUpdatedContent__block_invoke;
  v8[3] = &unk_278D66CC8;
  v8[4] = self;
  objc_copyWeak(&v9, &location);
  [v5 setCompletionBlock:v8];
  v7 = [(CoreDAVTaskGroup *)self taskManager];
  [v7 submitQueuedCoreDAVTask:v5];

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

- (void)_handlePostResponse:(id)a3
{
  v30 = a3;
  v4 = [v30 error];

  if (!v4)
  {
    [(CalDAVAddManagedAttachmentsTaskGroup *)self setPreviousScheduleTag:0];
    [(CalDAVAddManagedAttachmentsTaskGroup *)self setPreviousETag:0];
    v9 = [v30 responseHeaders];
    v10 = [v9 CDVObjectForKeyCaseInsensitive:@"Schedule-Tag"];
    [(CalDAVAddManagedAttachmentsTaskGroup *)self setUpdatedScheduleTag:v10];

    v11 = [v30 responseHeaders];
    v12 = [v11 CDVObjectForKeyCaseInsensitive:*MEMORY[0x277CFDB30]];
    [(CalDAVAddManagedAttachmentsTaskGroup *)self setUpdatedETag:v12];

    v13 = [v30 responseHeaders];
    v14 = [v13 CDVObjectForKeyCaseInsensitive:*MEMORY[0x277CFDB48]];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = [MEMORY[0x277CBEB68] null];
    }

    v19 = v16;

    filenamesToServerLocation = self->_filenamesToServerLocation;
    v25 = [v30 filename];
    [(NSMutableDictionary *)filenamesToServerLocation setObject:v19 forKey:v25];

    if (![(CalDAVAddManagedAttachmentsTaskGroup *)self _postedLastAttachment])
    {
      [(CalDAVAddManagedAttachmentsTaskGroup *)self _sendAttachments];
      goto LABEL_19;
    }

    v26 = [v30 responseData];
    [(CalDAVAddManagedAttachmentsTaskGroup *)self setUpdatedResourcePayload:v26];

    v27 = [v30 responseData];
    if ([v27 length])
    {
      v28 = [(CalDAVAddManagedAttachmentsTaskGroup *)self updatedScheduleTag];
      if (v28)
      {

LABEL_18:
        [(CalDAVAddManagedAttachmentsTaskGroup *)self _finishWithError:0 state:7];
        goto LABEL_19;
      }

      v29 = [(CalDAVAddManagedAttachmentsTaskGroup *)self updatedETag];

      if (v29)
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

  v5 = [v30 error];
  v6 = [v5 domain];
  if ([v6 isEqualToString:*MEMORY[0x277CFDB80]])
  {
    v7 = [v30 error];
    v8 = [v7 code];

    if (v8 == 412)
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
  v18 = [v30 requestDataPayload];
  v19 = [v17 numberWithUnsignedLongLong:{objc_msgSend(v18, "length")}];

  v20 = MEMORY[0x277CBEAC0];
  v21 = [v30 filename];
  v22 = [v20 dictionaryWithObject:v19 forKey:v21];
  [(CalDAVAddManagedAttachmentsTaskGroup *)self setPostFailureSizes:v22];

  v23 = [v30 error];
  [(CalDAVAddManagedAttachmentsTaskGroup *)self _finishWithError:v23 state:5];

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
  v3 = [(CalDAVAddManagedAttachmentsTaskGroup *)self attachments];
  v4 = [v3 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v4)
  {
    v5 = *v34;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v34 != v5)
      {
        objc_enumerationMutation(v3);
      }

      v7 = *(*(&v33 + 1) + 8 * v6);
      v8 = [(CalDAVAddManagedAttachmentsTaskGroup *)self filenamesToServerLocation];
      v9 = [v8 objectForKey:v7];
      v10 = v9 == 0;

      if (v10)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v3 countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v11 = [(CalDAVAddManagedAttachmentsTaskGroup *)self contentTypes];
    v12 = [v11 objectForKey:v7];

    if (![v12 length])
    {
      [(CalDAVAddManagedAttachmentsTaskGroup *)self _finishWithError:0 state:4];
LABEL_22:

      goto LABEL_23;
    }

    v13 = [(CalDAVAddManagedAttachmentsTaskGroup *)self attachments];
    v14 = [v13 objectForKey:v7];

    v15 = [CalDAVPostStreamTask alloc];
    v16 = [(CalDAVAddManagedAttachmentsTaskGroup *)self urlWithQuery];
    v17 = [(CoreDAVPostTask *)v15 initWithDataPayload:v14 dataContentType:v12 atURL:v16 previousETag:0];

    if ([(CalDAVAddManagedAttachmentsTaskGroup *)self hadPreconditionFailure])
    {
      goto LABEL_12;
    }

    v18 = [(CalDAVAddManagedAttachmentsTaskGroup *)self updatedScheduleTag];
    if (v18)
    {
    }

    else
    {
      v19 = [(CalDAVAddManagedAttachmentsTaskGroup *)self previousScheduleTag];
      v20 = v19 == 0;

      if (v20)
      {
        v26 = [(CalDAVAddManagedAttachmentsTaskGroup *)self updatedETag];
        if (v26)
        {
        }

        else
        {
          v27 = [(CalDAVAddManagedAttachmentsTaskGroup *)self previousETag];
          v28 = v27 == 0;

          if (v28)
          {
LABEL_12:
            [(CoreDAVPostOrPutTask *)v17 setForceToServer:1];
LABEL_21:
            [(CalDAVPostStreamTask *)v17 setFilename:v7];
            v23 = [(CoreDAVTaskGroup *)self accountInfoProvider];
            [(CalDAVPostStreamTask *)v17 setAccountInfoProvider:v23];

            objc_initWeak(&location, v17);
            v30[0] = MEMORY[0x277D85DD0];
            v30[1] = 3221225472;
            v30[2] = __56__CalDAVAddManagedAttachmentsTaskGroup__sendAttachments__block_invoke;
            v30[3] = &unk_278D66CC8;
            v30[4] = self;
            objc_copyWeak(&v31, &location);
            [(CalDAVPostStreamTask *)v17 setCompletionBlock:v30];
            v24 = [(CoreDAVTaskGroup *)self taskManager];
            [v24 submitQueuedCoreDAVTask:v17];

            objc_destroyWeak(&v31);
            objc_destroyWeak(&location);

            goto LABEL_22;
          }
        }

        v21 = [(CalDAVAddManagedAttachmentsTaskGroup *)self updatedETag];
        if (v21)
        {
          [(CoreDAVPostOrPutTask *)v17 setPreviousETag:v21];
        }

        else
        {
          v29 = [(CalDAVAddManagedAttachmentsTaskGroup *)self previousETag];
          [(CoreDAVPostOrPutTask *)v17 setPreviousETag:v29];
        }

LABEL_20:

        goto LABEL_21;
      }
    }

    v21 = [(CalDAVAddManagedAttachmentsTaskGroup *)self updatedScheduleTag];
    if (v21)
    {
      [(CalDAVPostStreamTask *)v17 setPreviousScheduleTag:v21];
    }

    else
    {
      v22 = [(CalDAVAddManagedAttachmentsTaskGroup *)self previousScheduleTag];
      [(CalDAVPostStreamTask *)v17 setPreviousScheduleTag:v22];
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