@interface PKNFCTagReaderSession
- (PKNFCTagReaderSession)initWithInternalSession:(id)session targetQueue:(id)queue;
- (PKNFCTagReaderSessionDelegate)delegate;
- (void)readNDEFMessageFromTag:(id)tag completion:(id)completion;
- (void)readerSession:(id)session didDetectTags:(id)tags;
- (void)readerSessionDidEndUnexpectedly:(id)unexpectedly reason:(id)reason;
@end

@implementation PKNFCTagReaderSession

- (PKNFCTagReaderSession)initWithInternalSession:(id)session targetQueue:(id)queue
{
  sessionCopy = session;
  queueCopy = queue;
  nfSession = [sessionCopy nfSession];
  PKGetClassNFReaderSession();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [sessionCopy endSession];

    sessionCopy = 0;
  }

  v14.receiver = self;
  v14.super_class = PKNFCTagReaderSession;
  v10 = [(PKPaymentSession *)&v14 initWithInternalSession:sessionCopy targetQueue:queueCopy];
  v11 = v10;
  if (sessionCopy && v10)
  {
    nfSession2 = [sessionCopy nfSession];
    [nfSession2 setDelegate:v11];
  }

  return v11;
}

void __37__PKNFCTagReaderSession_startPolling__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [a2 nfSession];
  v6 = 0;
  v3 = [v2 startPollingWithError:&v6];
  v4 = v6;

  if ((v3 & 1) == 0)
  {
    v5 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Failed to start Tag Reader polling. Error: %@", buf, 0xCu);
    }
  }
}

void __36__PKNFCTagReaderSession_stopPolling__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [a2 nfSession];
  v6 = 0;
  v3 = [v2 stopPollingWithError:&v6];
  v4 = v6;

  if ((v3 & 1) == 0)
  {
    v5 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Failed to stop Tag Reader polling. Error: %@", buf, 0xCu);
    }
  }
}

void __35__PKNFCTagReaderSession_endSession__block_invoke()
{
  v0 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1AD337000, v0, OS_LOG_TYPE_ERROR, "Reader Session Invalidated", v1, 2u);
  }
}

- (void)readNDEFMessageFromTag:(id)tag completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v7 = *(tag + 1);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__PKNFCTagReaderSession_readNDEFMessageFromTag_completion___block_invoke;
    v10[3] = &unk_1E79CC6B0;
    v11 = v7;
    v12 = completionCopy;
    v8 = v7;
    tagCopy = tag;
    [(PKPaymentSession *)self performBlockAsyncOnInternalSession:v10];
  }
}

void __59__PKNFCTagReaderSession_readNDEFMessageFromTag_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 nfSession];
  v4 = *(a1 + 32);
  v17 = 0;
  v5 = [v3 connectTag:v4 error:&v17];
  v6 = v17;
  if (v5)
  {
    v16 = 0;
    v15 = 0;
    v7 = [v3 checkNdefSupportsRead:&v16 andWrite:0 error:&v15];
    v8 = v15;
    if (v7)
    {
      if (v16 == 1)
      {
        v14 = 0;
        v9 = [v3 ndefReadWithError:&v14];
        v10 = v14;
        v11 = [v9 decode];
      }

      else
      {
        v11 = 0;
        v10 = 0;
      }

      v13 = 0;
      [v3 disconnectTagWithError:&v13];
      v12 = v13;
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)readerSession:(id)session didDetectTags:(id)tags
{
  tagsCopy = tags;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__PKNFCTagReaderSession_readerSession_didDetectTags___block_invoke;
  v7[3] = &unk_1E79C7CE0;
  v7[4] = self;
  v8 = tagsCopy;
  v6 = tagsCopy;
  [(PKPaymentSession *)self performBlockAsyncOnInternalSession:v7];
}

void __53__PKNFCTagReaderSession_readerSession_didDetectTags___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53__PKNFCTagReaderSession_readerSession_didDetectTags___block_invoke_2;
    v8[3] = &unk_1E79D0028;
    v9 = v4;
    v6 = v4;
    [v5 enumerateObjectsUsingBlock:v8];
    v7 = objc_loadWeakRetained((*(a1 + 32) + 32));
    [v7 nfcTagReaderSession:*(a1 + 32) didDetectTags:v6];
  }
}

void __53__PKNFCTagReaderSession_readerSession_didDetectTags___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[PKNFCTag alloc] initWithNFTag:v3];

  [v2 addObject:v4];
}

- (void)readerSessionDidEndUnexpectedly:(id)unexpectedly reason:(id)reason
{
  reasonCopy = reason;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__PKNFCTagReaderSession_readerSessionDidEndUnexpectedly_reason___block_invoke;
  v7[3] = &unk_1E79C7CE0;
  v8 = reasonCopy;
  selfCopy = self;
  v6 = reasonCopy;
  [(PKPaymentSession *)self performBlockAsyncOnInternalSession:v7];
}

void __64__PKNFCTagReaderSession_readerSessionDidEndUnexpectedly_reason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) domain];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"nfcd"];
  if ([v2 isEqualToString:v3])
  {
    v4 = [*(a1 + 32) code];

    if (v4 == 5)
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 32));
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        v9 = objc_loadWeakRetained((*(a1 + 40) + 32));
        [v9 nfcTagReaderSessionDidTimeout:*(a1 + 40)];
        goto LABEL_8;
      }
    }
  }

  else
  {
  }

  v7 = objc_loadWeakRetained((*(a1 + 40) + 32));
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) == 0)
  {
    return;
  }

  v9 = objc_loadWeakRetained((*(a1 + 40) + 32));
  [v9 nfcTagReaderSessionDidEndUnexpectedly:*(a1 + 40)];
LABEL_8:
}

- (PKNFCTagReaderSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end