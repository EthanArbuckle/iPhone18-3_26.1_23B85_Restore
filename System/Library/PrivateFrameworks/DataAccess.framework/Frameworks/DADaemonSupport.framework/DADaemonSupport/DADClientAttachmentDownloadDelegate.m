@interface DADClientAttachmentDownloadDelegate
- (DADClientAttachmentDownloadDelegate)initWithAccountID:(id)a3 attachmentUUID:(id)a4 client:(id)a5;
- (void)beginDownload;
- (void)dealloc;
- (void)downloadProgressDownloadedByteCount:(int64_t)a3 totalByteCount:(int64_t)a4;
- (void)finishWithError:(id)a3;
@end

@implementation DADClientAttachmentDownloadDelegate

- (DADClientAttachmentDownloadDelegate)initWithAccountID:(id)a3 attachmentUUID:(id)a4 client:(id)a5
{
  v8 = a4;
  v12.receiver = self;
  v12.super_class = DADClientAttachmentDownloadDelegate;
  v9 = [(DADClientDelegate *)&v12 initWithAccountID:a3 client:a5];
  v10 = v9;
  if (v9)
  {
    [(DADClientAttachmentDownloadDelegate *)v9 setAttachmentUUID:v8];
  }

  return v10;
}

- (void)dealloc
{
  [(DADClientDelegate *)self disable];
  v3.receiver = self;
  v3.super_class = DADClientAttachmentDownloadDelegate;
  [(DADClientDelegate *)&v3 dealloc];
}

- (void)beginDownload
{
  v13 = *MEMORY[0x277D85DE8];
  if (![(DADisableableObject *)self isDisabled])
  {
    v3 = +[DADAgentManager sharedManager];
    v4 = [(DADClientDelegate *)self accountID];
    v5 = [v3 accountWithAccountID:v4];

    if (v5)
    {
      v6 = [v5 beginDownloadingAttachmentWithUUID:self->_attachmentUUID consumer:self];
      [(DADClientAttachmentDownloadDelegate *)self setDownloadID:v6];
    }

    else
    {
      v7 = DALoggingwithCategory();
      v8 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v7, v8))
      {
        v9 = [(DADClientDelegate *)self accountID];
        v11 = 138543362;
        v12 = v9;
        _os_log_impl(&dword_248524000, v7, v8, "Could not get an account with the ID %{public}@", &v11, 0xCu);
      }

      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:55 userInfo:0];
      [(DADClientAttachmentDownloadDelegate *)self finishWithError:v6];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)downloadProgressDownloadedByteCount:(int64_t)a3 totalByteCount:(int64_t)a4
{
  v21[5] = *MEMORY[0x277D85DE8];
  if (![(DADisableableObject *)self isDisabled])
  {
    v7 = [(DADClientDelegate *)self client];
    v8 = [v7 rawConnection];

    if (v8)
    {
      v9 = *MEMORY[0x277D03C88];
      v21[0] = *MEMORY[0x277D03A28];
      v10 = *MEMORY[0x277D03A38];
      v20[0] = v9;
      v20[1] = v10;
      v11 = [(DADClientAttachmentDownloadDelegate *)self attachmentUUID];
      v21[1] = v11;
      v20[2] = *MEMORY[0x277D03A30];
      v12 = [(DADClientDelegate *)self delegateID];
      v19 = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
      v21[2] = v13;
      v20[3] = *MEMORY[0x277D03B30];
      v14 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
      v21[3] = v14;
      v20[4] = *MEMORY[0x277D03E90];
      v15 = [MEMORY[0x277CCABB0] numberWithLongLong:a4];
      v21[4] = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:5];

      v17 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_connection_send_message(v8, v17);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)finishWithError:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(DADisableableObject *)self isDisabled]&& ![(DADClientDelegate *)self finished])
  {
    [(DADClientDelegate *)self setFinished:1];
    v5 = DALoggingwithCategory();
    v6 = MEMORY[0x277D03988];
    v7 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v5, v7))
    {
      *buf = 138412290;
      v32 = v4;
      _os_log_impl(&dword_248524000, v5, v7, "DADAttachmentDownloadDelegate finished with error %@", buf, 0xCu);
    }

    v8 = [v4 domain];
    if ([v8 isEqualToString:*MEMORY[0x277D038E0]])
    {
      v9 = [v4 code];

      if (v9 == -1)
      {
        v10 = +[DADAgentManager sharedManager];
        v11 = [(DADClientDelegate *)self accountID];
        v12 = [v10 accountWithAccountID:v11];

        if (v12)
        {
          [v12 cancelDownloadingInstance:self->_downloadID error:v4];
        }

        else
        {
          v25 = DALoggingwithCategory();
          v26 = *(v6 + 3);
          if (os_log_type_enabled(v25, v26))
          {
            v27 = [(DADClientDelegate *)self accountID];
            *buf = 138543362;
            v32 = v27;
            _os_log_impl(&dword_248524000, v25, v26, "DADAttachmentDownloadDelegate finished, but could not find an account with the ID %{public}@", buf, 0xCu);
          }
        }

LABEL_12:

        v22 = [(DADClientDelegate *)self client];
        v23 = [(DADClientDelegate *)self delegateID];
        [v22 delegateWithIDIsGoingAway:v23];

        goto LABEL_13;
      }
    }

    else
    {
    }

    v13 = [(DADClientDelegate *)self client];
    v12 = [v13 rawConnection];

    if (v12)
    {
      v14 = *MEMORY[0x277D03C88];
      v30[0] = *MEMORY[0x277D03A18];
      v15 = *MEMORY[0x277D03A38];
      v29[0] = v14;
      v29[1] = v15;
      v16 = [(DADClientAttachmentDownloadDelegate *)self attachmentUUID];
      v30[1] = v16;
      v29[2] = *MEMORY[0x277D03A30];
      v17 = [(DADClientDelegate *)self delegateID];
      v28 = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
      v30[2] = v18;
      v29[3] = *MEMORY[0x277D03B40];
      v19 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4];
      v30[3] = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:4];

      v21 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_connection_send_message(v12, v21);
    }

    goto LABEL_12;
  }

LABEL_13:

  v24 = *MEMORY[0x277D85DE8];
}

@end