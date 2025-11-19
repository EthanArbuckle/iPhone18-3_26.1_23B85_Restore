@interface MMCSHTTPContext
- (BOOL)createNewRequestBodyInputStream;
- (BOOL)requestBodyCanAcceptData;
- (MMCSHTTPContext)initWithContext:(mmcs_http_context *)a3 options:(const mmcs_http_context_options *)a4 activityMarker:(os_activity_s *)a5;
- (NSString)description;
- (__CFError)send;
- (int64_t)countOfRequestBodyBytesSent;
- (int64_t)writeRequestBody:(const char *)a3 maxLength:(unint64_t)a4;
- (void)URLSession:(id)a3 _willRetryBackgroundDataTask:(id)a4 withError:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 _willSendRequestForEstablishedConnection:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7;
- (void)URLSession:(id)a3 task:(id)a4 needNewBodyStream:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7;
- (void)cleanupResponse;
- (void)dealloc;
- (void)invalidate;
- (void)invalidateStreamPair;
- (void)requestBodyDone;
- (void)stream:(id)a3 handleEvent:(unint64_t)a4;
@end

@implementation MMCSHTTPContext

- (void)stream:(id)a3 handleEvent:(unint64_t)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter([(MMCSHTTPContext *)self hc][584], &state);
  v7 = self;
  v8 = [(MMCSHTTPContext *)v7 outputStream];
  if (v8 == v6 && ![(MMCSHTTPContext *)v7 isTaskDone])
  {
    v13 = [(MMCSHTTPContext *)v7 isValid];

    if (!v13)
    {
      goto LABEL_4;
    }

    if (a4 > 7)
    {
      if (a4 == 8)
      {
        v29 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = [v6 streamError];
          v31 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ stream %@ error %@", v7, v6, v30);

          v32 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v46 = v31;
            _os_log_impl(&dword_2577D8000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
          }

          if (v31)
          {
            CFRelease(v31);
          }
        }

        v33 = MEMORY[0x277CCACA8];
        v34 = [v6 streamError];
        v35 = [v33 stringWithFormat:@"Write stream had error:%@", v34];

        v36 = [v6 streamError];
        error_with_underlying_error = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 38, v36, @"%@", v37, v38, v39, v40, v35);
        mmcs_http_context_set_error([(MMCSHTTPContext *)v7 hc], error_with_underlying_error);
        if (error_with_underlying_error)
        {
          CFRelease(error_with_underlying_error);
        }

        v42 = [(MMCSHTTPContext *)v7 outputStream];
        [v42 close];

        if (![(MMCSHTTPContext *)v7 hc][496])
        {
          __assert_rtn("[MMCSHTTPContext stream:handleEvent:]", "MMCSHTTPContext.m", 138, "self.hc->requestBodyCallback");
        }

        ([(MMCSHTTPContext *)v7 hc][496])([(MMCSHTTPContext *)v7 hc], [(MMCSHTTPContext *)v7 hc][576], 3);

        goto LABEL_9;
      }

      if (a4 != 16)
      {
        goto LABEL_33;
      }

      if (gMMCS_DebugLevel >= 4)
      {
        v17 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v18 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ stream %@ ended", v7, v6);
          v19 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v46 = v18;
            _os_log_impl(&dword_2577D8000, v19, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
          }

          if (v18)
          {
            CFRelease(v18);
          }
        }
      }

      if (![(MMCSHTTPContext *)v7 hc][496])
      {
        v43 = 148;
        goto LABEL_59;
      }

      v20 = [(MMCSHTTPContext *)v7 hc][496];
      v21 = [(MMCSHTTPContext *)v7 hc];
      v22 = [(MMCSHTTPContext *)v7 hc];
      v23 = 4;
    }

    else
    {
      if (a4 != 1)
      {
        if (a4 == 4)
        {
          if (gMMCS_DebugLevel >= 5)
          {
            v14 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ stream %@ has space available", v7, v6);
              v16 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                v46 = v15;
                _os_log_impl(&dword_2577D8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
              }

              if (v15)
              {
                CFRelease(v15);
              }
            }
          }

          if ([(MMCSHTTPContext *)v7 hc][496])
          {
            ([(MMCSHTTPContext *)v7 hc][496])([(MMCSHTTPContext *)v7 hc], [(MMCSHTTPContext *)v7 hc][576], 2);
            if (![(MMCSHTTPContext *)v7 isTaskDone])
            {
              [(MMCSHTTPContext *)v7 isValid];
            }

            goto LABEL_9;
          }

          v43 = 121;
LABEL_59:
          __assert_rtn("[MMCSHTTPContext stream:handleEvent:]", "MMCSHTTPContext.m", v43, "self.hc->requestBodyCallback");
        }

LABEL_33:
        v24 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ ignoring stream event %u from stream %@", v7, a4, v6);
          v25 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v46 = v10;
            _os_log_impl(&dword_2577D8000, v25, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v10)
          {
            goto LABEL_8;
          }
        }

        goto LABEL_9;
      }

      if (gMMCS_DebugLevel >= 4)
      {
        v26 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v27 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ stream %@ opened", v7, v6);
          v28 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v46 = v27;
            _os_log_impl(&dword_2577D8000, v28, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
          }

          if (v27)
          {
            CFRelease(v27);
          }
        }
      }

      if (![(MMCSHTTPContext *)v7 hc][496])
      {
        v43 = 113;
        goto LABEL_59;
      }

      v20 = [(MMCSHTTPContext *)v7 hc][496];
      v21 = [(MMCSHTTPContext *)v7 hc];
      v22 = [(MMCSHTTPContext *)v7 hc];
      v23 = 1;
    }

    v20(v21, *(v22 + 576), v23);
    goto LABEL_9;
  }

LABEL_4:
  v9 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ ignoring stream event %u from stream %@", v7, a4, v6);
    v11 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v46 = v10;
      _os_log_impl(&dword_2577D8000, v11, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v10)
    {
LABEL_8:
      CFRelease(v10);
    }
  }

LABEL_9:

  os_activity_scope_leave(&state);
  v12 = *MEMORY[0x277D85DE8];
}

- (int64_t)writeRequestBody:(const char *)a3 maxLength:(unint64_t)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = self;
  objc_sync_enter(v6);
  v7 = [(MMCSHTTPContext *)v6 outputStream];
  v8 = [(MMCSHTTPContext *)v6 isHandlingError];
  objc_sync_exit(v6);

  if (v7 == 0 || v8)
  {
    v9 = mmcs_logging_logger_default();
    if (v7)
    {
      if (!v8)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ not writing to output stream for unknown reason; attempted to write %lu bytes.", v6, a4);
          v19 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v24 = v10;
            _os_log_impl(&dword_2577D8000, v19, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          v14 = -1;
          if (v10)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v14 = -1;
        }

        goto LABEL_28;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ writing 0 bytes because request cannot accept data at the moment.", v6);
        v11 = mmcs_logging_logger_default();
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_26;
        }

        *buf = 138543362;
        v24 = v10;
        v12 = v11;
        v13 = OS_LOG_TYPE_DEBUG;
        goto LABEL_25;
      }

LABEL_14:
      v14 = 0;
      goto LABEL_28;
    }

    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ output stream is nil; attempted to write %lu bytes.", v6, a4);
    v18 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    *buf = 138543362;
    v24 = v10;
LABEL_24:
    v12 = v18;
    v13 = OS_LOG_TYPE_ERROR;
LABEL_25:
    _os_log_impl(&dword_2577D8000, v12, v13, "%{public}@", buf, 0xCu);
    goto LABEL_26;
  }

  v14 = [v7 write:a3 maxLength:a4];
  if (v14 != -1)
  {
    goto LABEL_28;
  }

  v15 = mmcs_logging_logger_default();
  if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_14;
  }

  v16 = [v7 streamStatus];
  if (v16 > 7)
  {
    v17 = @"none";
  }

  else
  {
    v17 = off_279845078[v16];
  }

  v20 = [v7 streamError];
  v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ output stream %@ had an error writing in state %@: stream error %@: Ignoring this, and treating this as if the stream cannot accept data at the moment", v6, v7, v17, v20);

  v18 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v24 = v10;
    goto LABEL_24;
  }

LABEL_26:
  v14 = 0;
  if (v10)
  {
LABEL_27:
    CFRelease(v10);
  }

LABEL_28:

  v21 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)requestBodyDone
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(MMCSHTTPContext *)self outputStream];

  if (v3)
  {
    v9 = [(MMCSHTTPContext *)self outputStream];
    [v9 close];
    v4 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v5 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ has no output stream to close.", self);
      v7 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v11 = v6;
        _os_log_impl(&dword_2577D8000, v7, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }

    v8 = *MEMORY[0x277D85DE8];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  if ([(MMCSHTTPContext *)self isValid])
  {
    v4 = "valid";
  }

  else
  {
    v4 = "invalid";
  }

  if ([(MMCSHTTPContext *)self isTaskDone])
  {
    v5 = "done";
  }

  else
  {
    v5 = "undone";
  }

  return [v3 stringWithFormat:@"%s %s %@", v4, v5, MMCSRequestOptionsDiscretionaryNetworkBehaviorGetString(*(-[MMCSHTTPContext hc](self, "hc")[368] + 80))];
}

- (void)invalidateStreamPair
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = [(MMCSHTTPContext *)self inputStream];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = [(MMCSHTTPContext *)self outputStream];
  if (v13[5] || v7[5])
  {
    v3 = [(MMCSHTTPContext *)self outputStream];
    [v3 setDelegate:0];

    v4 = [(MMCSHTTPContext *)self outputStream];
    [v4 close];

    [(MMCSHTTPContext *)self setOutputStream:0];
    [(MMCSHTTPContext *)self setInputStream:0];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __39__MMCSHTTPContext_invalidateStreamPair__block_invoke;
    v5[3] = &unk_279844F68;
    v5[4] = &v12;
    v5[5] = &v6;
    HttpContextPerformBlockAsync(self, v5);
  }

  _Block_object_dispose(&v6, 8);

  _Block_object_dispose(&v12, 8);
}

void __39__MMCSHTTPContext_invalidateStreamPair__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

- (BOOL)requestBodyCanAcceptData
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MMCSHTTPContext *)v2 outputStream];

  if (v3)
  {
    v4 = [(MMCSHTTPContext *)v2 outputStream];
    v5 = [v4 hasSpaceAvailable];

    if (v5)
    {
      LODWORD(v3) = ![(MMCSHTTPContext *)v2 isHandlingError];
    }

    else
    {
      LODWORD(v3) = 0;
    }
  }

  objc_sync_exit(v2);

  if (gMMCS_DebugLevel >= 5)
  {
    v6 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = @"NO";
      if (v3)
      {
        v7 = @"YES";
      }

      v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ canAcceptData %@", v2, v7);
      v9 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v13 = v8;
        _os_log_impl(&dword_2577D8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v8)
      {
        CFRelease(v8);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

- (int64_t)countOfRequestBodyBytesSent
{
  v2 = [(MMCSHTTPContext *)self dataTask];
  v3 = [v2 countOfBytesSent];

  return v3;
}

- (BOOL)createNewRequestBodyInputStream
{
  v18 = *MEMORY[0x277D85DE8];
  if (gMMCS_DebugLevel >= 4)
  {
    v3 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"createNewRequestBodyInputStream %@", self);
      v5 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v17 = v4;
        _os_log_impl(&dword_2577D8000, v5, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v4)
      {
        CFRelease(v4);
      }
    }
  }

  [(MMCSHTTPContext *)self invalidateStreamPair];
  mmcs_http_reset_context_for_new_stream([(MMCSHTTPContext *)self hc]);
  v14 = 0;
  v15 = 0;
  [MEMORY[0x277CBEBA0] getBoundStreamsWithBufferSize:0x8000 inputStream:&v15 outputStream:&v14];
  v6 = v15;
  v7 = v14;
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (!v9)
  {
    [(MMCSHTTPContext *)self setInputStream:v6];
    [(MMCSHTTPContext *)self setOutputStream:v8];
    v11 = self;
    objc_sync_enter(v11);
    [(MMCSHTTPContext *)v11 setIsHandlingError:0];
    objc_sync_exit(v11);

    [v8 setDelegate:v11];
    mmcs_nshttp_schedule_stream([(MMCSHTTPContext *)v11 hc]);
    [v8 open];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (MMCSHTTPContext)initWithContext:(mmcs_http_context *)a3 options:(const mmcs_http_context_options *)a4 activityMarker:(os_activity_s *)a5
{
  if (!a3)
  {
    [MMCSHTTPContext initWithContext:options:activityMarker:];
  }

  v12.receiver = self;
  v12.super_class = MMCSHTTPContext;
  v7 = [(MMCSHTTPContext *)&v12 init:a3];
  v8 = v7;
  if (v7)
  {
    [(MMCSHTTPContext *)v7 setHc:a3];
    C3BaseRetain([(MMCSHTTPContext *)v8 hc]);
    *([(MMCSHTTPContext *)v8 hc]+ 560) = appendTrailers;
    [(MMCSHTTPContext *)v8 setIsValid:1];
    if (a5)
    {
      os_retain(a5);
    }

    [(MMCSHTTPContext *)v8 setActivityMarker:a5];
    valuePtr = 0;
    if (*([(MMCSHTTPContext *)v8 hc][368] + 136))
    {
      CFNumberGetValue(*([(MMCSHTTPContext *)v8 hc][368] + 136), kCFNumberNSIntegerType, &valuePtr);
      v9 = valuePtr;
    }

    else
    {
      v9 = 0;
    }

    [(MMCSHTTPContext *)v8 setContainerType:v9];
  }

  return v8;
}

- (__CFError)send
{
  v3 = [(MMCSHTTPContext *)self hc][368];
  [(MMCSHTTPContext *)self setIsHandlingError:0];
  v4 = [MEMORY[0x277CF36D8] sharedManager];
  v5 = CFHTTPMessageCopyRequestURL([(MMCSHTTPContext *)self hc][336]);
  v6 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:v5 cachePolicy:0 timeoutInterval:300.0];
  v7 = CFHTTPMessageCopyRequestMethod([(MMCSHTTPContext *)self hc][336]);
  if (v7)
  {
    [v6 setHTTPMethod:v7];
    [v6 _setRequiresShortConnectionTimeout:*(v3 + 77) != 0];
    [v6 setHTTPShouldHandleCookies:0];
    [v6 setAllowsCellularAccess:*(v3 + 74) != 0];
    [v6 _setAllowsUCA:*(v3 + 76) != 0];
    v8 = *(v3 + 56);
    if (v8)
    {
      [v6 setNetworkServiceType:{objc_msgSend(v8, "intValue")}];
    }

    if (*(v3 + 16))
    {
      [v6 setBoundInterfaceIdentifier:?];
    }

    v9 = CFHTTPMessageCopyAllHeaderFields([(MMCSHTTPContext *)self hc][336]);
    if (v9)
    {
      [v6 setAllHTTPHeaderFields:v9];
    }

    v10 = [(__CFDictionary *)v9 objectForKey:@"Trailer"];

    if (v10)
    {
      [v6 _CFURLRequest];
      _CFURLRequestSetAllowedProtocolTypes();
    }

    if ([(MMCSHTTPContext *)self hc][496])
    {
      if (![(MMCSHTTPContext *)self createNewRequestBodyInputStream])
      {
        error = mmcs_cferror_create_error(@"com.apple.mmcs", 1, @"createNewRequestBodyInputStream failed");
        goto LABEL_69;
      }

      v48 = v7;
      v11 = v9;
      v12 = v5;
      v13 = v4;
      v14 = [(MMCSHTTPContext *)self inputStream];
      [v6 setHTTPBodyStream:v14];
    }

    else
    {
      v48 = v7;
      v11 = v9;
      v12 = v5;
      v14 = CFHTTPMessageCopyBody([(MMCSHTTPContext *)self hc][336]);
      v13 = v4;
      if (v14)
      {
        [v6 setHTTPBody:v14];
      }
    }

    v16 = MEMORY[0x277CCACA8];
    v52.receiver = self;
    v52.super_class = MMCSHTTPContext;
    v17 = [(MMCSHTTPContext *)&v52 description];
    v18 = [v16 stringWithFormat:@"%@ hc=%p tx%04ld uuid:%@", v17, -[MMCSHTTPContext hc](self, "hc"), -[MMCSHTTPContext hc](self, "hc")[272], -[MMCSHTTPContext hc](self, "hc")[304]];

    if (mmcs_http_request_options_is_background(v3) && [(MMCSHTTPContext *)self hc][384] > 0.0)
    {
      v19 = v18;
      v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{-[MMCSHTTPContext hc](self, "hc")[384]}];
      [v6 _setStartTimeoutDate:v20];

      v18 = v19;
      [v6 _setPayloadTransmissionTimeout:3600.0];
    }

    v4 = v13;
    if (v13)
    {
      v47 = v13;
      v21 = objc_alloc_init(MEMORY[0x277CF36E0]);
      v22 = [(MMCSHTTPContext *)self hc][368];
      v5 = v12;
      if (*(v22 + 80) <= 2uLL)
      {
        [v21 setDiscretionaryNetworkBehavior:?];
      }

      v46 = v18;
      v9 = v11;
      if (*(v22 + 88) <= 2uLL)
      {
        [v21 setDuetPreClearedMode:?];
      }

      [v21 set_allowsRetryForBackgroundDataTasks:*(v22 + 96) != 0];
      v7 = v48;
      if (*(v22 + 104))
      {
        v23 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:CFBooleanGetValue(*(v22 + 104)) != 0];
        [v21 setPrivacyProxyFailClosedOverride:v23];
      }

      if (*(v22 + 112))
      {
        v24 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:CFBooleanGetValue(*(v22 + 112)) != 0];
        [v21 setUseNWLoaderOverride:v24];
      }

      [v21 setTlsPinning:{mmcs_http_context_is_to_mobile_me(-[MMCSHTTPContext hc](self, "hc")) != 0}];
      [v21 setAllowRouting:{mmcs_http_context_is_to_mobile_me(-[MMCSHTTPContext hc](self, "hc")) != 0}];
      [v21 setMetricOptions:*(v22 + 120)];
      [v21 setNetworkingDelegate:*(v22 + 128)];
      [v21 setRedactRemoteEndpointFromNetworkMetrics:*(v22 + 78) != 0];
      [v21 setRedactUniformResourceIdentifierFromNetworkMetrics:1];
      if ([(MMCSHTTPContext *)self hc][304])
      {
        v25 = CFUUIDCreateString(*MEMORY[0x277CBECE8], [(MMCSHTTPContext *)self hc][304]);
        if (v25)
        {
          v26 = v25;
          v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ requestUUID:%@", -[MMCSHTTPContext hc](self, "hc")[264], v25];
          CFRelease(v26);
          if (v27)
          {
            [v21 setIdentifier:v27];
          }
        }
      }

      v28 = mmcs_http_total_timeout(3600.0);
      if (v28 <= 0.0)
      {
        v28 = 3600.0;
      }

      [v21 set_timeoutIntervalForResource:v28];
      if (mmcs_http_context_is_container_upload([(MMCSHTTPContext *)self hc]))
      {
        [v21 set_timeoutIntervalForRequest:600.0];
      }

      [v21 set_appleIDContextSessionIdentifier:0];
      if (v21)
      {
        [v21 setOutOfProcessPoolName:*(v22 + 48)];
        [v21 setAllowsCellularAccess:*(v22 + 74) != 0];
        [v21 set_allowsExpensiveAccess:*(v22 + 75) != 0];
        [v21 set_allowsPowerNapScheduling:*(v22 + 73) != 0];
        [v21 setAllowsUCA:*(v22 + 76) != 0];
      }

      v29 = *(v22 + 136);
      v4 = v47;
      if (v29)
      {
        *valuePtr = 0;
        if (CFNumberGetValue(v29, kCFNumberNSIntegerType, valuePtr))
        {
          [v21 setContainerType:*valuePtr];
        }
      }

      if (*([(MMCSHTTPContext *)self hc][368] + 24))
      {
        [v21 set_sourceApplicationBundleIdentifier:{*(-[MMCSHTTPContext hc](self, "hc")[368] + 24)}];
      }

      if (*([(MMCSHTTPContext *)self hc][368] + 32))
      {
        [v21 set_sourceApplicationSecondaryIdentifier:{*(-[MMCSHTTPContext hc](self, "hc")[368] + 32)}];
      }

      if (*([(MMCSHTTPContext *)self hc][368] + 40))
      {
        [v21 set_sourceApplicationAuditTokenData:{*(-[MMCSHTTPContext hc](self, "hc")[368] + 40)}];
      }

      v50 = 0;
      v30 = [v47 createDataTaskWithRequest:v6 options:v21 delegate:self sessionHandle:&v50];
      v31 = v50;
      [(MMCSHTTPContext *)self setDataTask:v30];

      v32 = [(MMCSHTTPContext *)self dataTask];

      if (v32)
      {
        if (mmcs_http_request_options_is_background(v3))
        {
          v33 = [(MMCSHTTPContext *)self hc][352];
          if (v33 != -1)
          {
            v34 = [(MMCSHTTPContext *)self dataTask];
            [v34 setCountOfBytesClientExpectsToSend:v33];
          }

          v35 = [(MMCSHTTPContext *)self hc][360];
          if (v35 != -1)
          {
            v36 = [(MMCSHTTPContext *)self dataTask];
            [v36 setCountOfBytesClientExpectsToReceive:v35];
          }
        }

        if (*([(MMCSHTTPContext *)self hc][368] + 144))
        {
          v37 = [(MMCSHTTPContext *)self hc];
          if (v21)
          {
            if (!v37->var48)
            {
              v49 = 0;
              v38 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v21 requiringSecureCoding:1 error:&v49];
              v39 = v49;
              if (v38)
              {
                v40 = v38;
                *([(MMCSHTTPContext *)self hc]+ 616) = v40;
              }

              else
              {
                v41 = mmcs_logging_logger_default();
                if (v39)
                {
                  XCFPrintError(v41, @"ErrorSerializingWarmRequestOptions", v39);
                }

                else
                {
                  log = v41;
                  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                  {
                    *valuePtr = 0;
                    _os_log_impl(&dword_2577D8000, log, OS_LOG_TYPE_ERROR, "Unable to serialize archivedData, error not returned.", valuePtr, 2u);
                  }
                }
              }
            }
          }
        }
      }

      v18 = v46;
    }

    else
    {
      v31 = 0;
      v5 = v12;
      v9 = v11;
      v7 = v48;
    }

    v42 = [(MMCSHTTPContext *)self dataTask];

    if (v42)
    {
      [(MMCSHTTPContext *)self setUrlSession:v31];
      v43 = [(MMCSHTTPContext *)self dataTask];
      [v43 resume];

      error = 0;
      goto LABEL_70;
    }

    [(MMCSHTTPContext *)self setIsTaskDone:1];
    error = mmcs_cferror_create_error(@"com.apple.mmcs", 50, @"Session was invalidated");

LABEL_69:
    goto LABEL_70;
  }

  error = mmcs_cferror_create_error(@"com.apple.mmcs", 1, @"CFHTTPMessageCopyRequestMethod failed");
LABEL_70:

  return error;
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  if (gMMCS_DebugLevel >= 5)
  {
    v3 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"dealloc");
      v5 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v9 = v4;
        _os_log_impl(&dword_2577D8000, v5, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v4)
      {
        CFRelease(v4);
      }
    }
  }

  if ([(MMCSHTTPContext *)self activityMarker])
  {
    os_release([(MMCSHTTPContext *)self activityMarker]);
  }

  [(MMCSHTTPContext *)self setActivityMarker:0];
  if ([(MMCSHTTPContext *)self hc])
  {
    C3BaseRelease([(MMCSHTTPContext *)self hc]);
  }

  [(MMCSHTTPContext *)self setHc:0];
  v7.receiver = self;
  v7.super_class = MMCSHTTPContext;
  [(MMCSHTTPContext *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)cleanupResponse
{
  [(MMCSHTTPContext *)self invalidate];
  [(MMCSHTTPContext *)self setUrlSession:0];

  [(MMCSHTTPContext *)self setDataTask:0];
}

- (void)invalidate
{
  v10 = *MEMORY[0x277D85DE8];
  if (gMMCS_DebugLevel >= 4)
  {
    v3 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ invalidate", self);
      v5 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v9 = v4;
        _os_log_impl(&dword_2577D8000, v5, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v4)
      {
        CFRelease(v4);
      }
    }
  }

  [(MMCSHTTPContext *)self invalidateStreamPair];
  [(MMCSHTTPContext *)self setIsValid:0];
  v6 = [(MMCSHTTPContext *)self dataTask];
  [v6 cancel];

  [(MMCSHTTPContext *)self setDataTask:0];
  [(MMCSHTTPContext *)self setUrlSession:0];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  os_activity_scope_enter([(MMCSHTTPContext *)self activityMarker:0], &v17);
  v16[2](v16, v15);
  os_activity_scope_leave(&v17);
}

- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7
{
  v36 = *MEMORY[0x277D85DE8];
  v31 = a3;
  v11 = a4;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter([(MMCSHTTPContext *)self activityMarker], &state);
  if (gMMCS_DebugLevel >= 5)
  {
    v12 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ %@ %@ didSendBodyData:%lld totalBytesSent:%lld totalBytesExpectedToSend:%lld", self, v31, v11, a5, a6, a7);
      v14 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v35 = v13;
        _os_log_impl(&dword_2577D8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v13)
      {
        CFRelease(v13);
      }
    }
  }

  if ([(MMCSHTTPContext *)self isValid])
  {
    v15 = [(MMCSHTTPContext *)self dataTask];
    v16 = [v15 taskDescription];
    if (v16)
    {
      v17 = [(MMCSHTTPContext *)self dataTask];
      v18 = [v17 taskDescription];
      v19 = [v11 taskDescription];
      v20 = [v18 isEqualToString:v19];

      if (v20)
      {
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __91__MMCSHTTPContext_URLSession_task_didSendBodyData_totalBytesSent_totalBytesExpectedToSend___block_invoke;
        v32[3] = &unk_279844F90;
        v32[4] = self;
        v32[5] = a5;
        v32[6] = a6;
        v32[7] = a7;
        HttpContextPerformBlockAsync(self, v32);
        goto LABEL_22;
      }
    }

    else
    {
    }

    v24 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = [v11 taskDescription];
      v26 = [(MMCSHTTPContext *)self dataTask];
      v27 = [v26 taskDescription];
      v22 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ unknown task %@. Expected %@: ignoring delegate callback", self, v25, v27);

      v28 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v35 = v22;
        _os_log_impl(&dword_2577D8000, v28, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v22)
      {
LABEL_21:
        CFRelease(v22);
      }
    }
  }

  else
  {
    v21 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ invalid: ignoring delegate callback", self);
      v23 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v35 = v22;
        _os_log_impl(&dword_2577D8000, v23, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v22)
      {
        goto LABEL_21;
      }
    }
  }

LABEL_22:
  os_activity_scope_leave(&state);

  v29 = *MEMORY[0x277D85DE8];
}

void __91__MMCSHTTPContext_URLSession_task_didSendBodyData_totalBytesSent_totalBytesExpectedToSend___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isValid])
  {
    v2 = [*(a1 + 32) hc];
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *MEMORY[0x277D85DE8];

    mmcs_nshttp_sent_data(v2, v3, v4);
  }

  else
  {
    v7 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs runloop: %@ invalid: ignoring delegate callback", *(a1 + 32));
      v9 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v12 = v8;
        _os_log_impl(&dword_2577D8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v8)
      {
        CFRelease(v8);
      }
    }

    v10 = *MEMORY[0x277D85DE8];
  }
}

- (void)URLSession:(id)a3 task:(id)a4 needNewBodyStream:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter([(MMCSHTTPContext *)self activityMarker], &state);
  if (gMMCS_DebugLevel >= 5)
  {
    v11 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ %@ %@ needNewBodyStream", self, v8, v9);
      v13 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v35 = v12;
        _os_log_impl(&dword_2577D8000, v13, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v12)
      {
        CFRelease(v12);
      }
    }
  }

  if (![(MMCSHTTPContext *)self isValid])
  {
    v20 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_22;
    }

    v21 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ invalid: calling completionHandler with nil", self);
    v22 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v35 = v21;
      _os_log_impl(&dword_2577D8000, v22, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (!v21)
    {
      goto LABEL_22;
    }

LABEL_21:
    CFRelease(v21);
LABEL_22:
    v10[2](v10, 0);
    goto LABEL_23;
  }

  v14 = [(MMCSHTTPContext *)self dataTask];
  v15 = [v14 taskDescription];
  if (!v15)
  {

    goto LABEL_17;
  }

  v16 = [(MMCSHTTPContext *)self dataTask];
  v17 = [v16 taskDescription];
  v18 = [v9 taskDescription];
  v19 = [v17 isEqualToString:v18];

  if ((v19 & 1) == 0)
  {
LABEL_17:
    v23 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_22;
    }

    v24 = [v9 taskDescription];
    v25 = [(MMCSHTTPContext *)self dataTask];
    v26 = [v25 taskDescription];
    v21 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ unknown task %@. Expected %@: ignoring delegate callback", self, v24, v26);

    v27 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v35 = v21;
      _os_log_impl(&dword_2577D8000, v27, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (!v21)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __53__MMCSHTTPContext_URLSession_task_needNewBodyStream___block_invoke;
  v29[3] = &unk_279844FB8;
  v29[4] = self;
  v32 = v10;
  v30 = v8;
  v31 = v9;
  HttpContextPerformBlockAsync(self, v29);

LABEL_23:
  os_activity_scope_leave(&state);

  v28 = *MEMORY[0x277D85DE8];
}

void __53__MMCSHTTPContext_URLSession_task_needNewBodyStream___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isValid])
  {
    if (gMMCS_DebugLevel >= 4)
    {
      v2 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v3 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ %@ %@ needNewBodyStream on run loop", *(a1 + 32), *(a1 + 40), *(a1 + 48));
        v4 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v11 = v3;
          _os_log_impl(&dword_2577D8000, v4, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v3)
        {
          CFRelease(v3);
        }
      }
    }

    [*(a1 + 32) setDidOpen:0];
    if ([*(a1 + 32) createNewRequestBodyInputStream])
    {
      v5 = [*(a1 + 32) inputStream];
    }

    else
    {
      v5 = 0;
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs runloop: %@ invalid. Returning nil body stream", *(a1 + 32));
      v8 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v11 = v7;
        _os_log_impl(&dword_2577D8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v7)
      {
        CFRelease(v7);
      }
    }

    (*(*(a1 + 56) + 16))();
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter([(MMCSHTTPContext *)self activityMarker], &state);
  [(MMCSHTTPContext *)self setIsTaskDone:1];
  if ([(MMCSHTTPContext *)self hc][120] == 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    *([(MMCSHTTPContext *)self hc]+ 120) = Current;
  }

  v12 = self;
  objc_sync_enter(v12);
  [(MMCSHTTPContext *)v12 setIsHandlingError:1];
  objc_sync_exit(v12);

  v13 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = [v9 originalRequest];
    v15 = [v14 URL];
    if (v10)
    {
      v16 = [v10 description];
    }

    else
    {
      v16 = &stru_2868BF3F0;
    }

    v17 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ with %@ did complete %@", v12, v15, v16);
    if (v10)
    {
    }

    v18 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v39 = v17;
      _os_log_impl(&dword_2577D8000, v18, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  if ([(MMCSHTTPContext *)v12 isValid])
  {
    v19 = [(MMCSHTTPContext *)v12 dataTask];
    v20 = [v19 taskDescription];
    if (v20)
    {
      v21 = [(MMCSHTTPContext *)v12 dataTask];
      v22 = [v21 taskDescription];
      v23 = [v9 taskDescription];
      v24 = [v22 isEqualToString:v23];

      if (v24)
      {
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __56__MMCSHTTPContext_URLSession_task_didCompleteWithError___block_invoke;
        v34[3] = &unk_279844FE0;
        v34[4] = v12;
        v35 = v9;
        v36 = v10;
        HttpContextPerformBlockAsync(v12, v34);

        goto LABEL_28;
      }
    }

    else
    {
    }

    v28 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v29 = [v9 taskDescription];
      v30 = [(MMCSHTTPContext *)v12 dataTask];
      v31 = [v30 taskDescription];
      v26 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ unknown task %@. Expected %@: ignoring delegate callback", v12, v29, v31);

      v32 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v39 = v26;
        _os_log_impl(&dword_2577D8000, v32, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v26)
      {
LABEL_27:
        CFRelease(v26);
      }
    }
  }

  else
  {
    v25 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v26 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ invalid: ignoring delegate callback", v12);
      v27 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v39 = v26;
        _os_log_impl(&dword_2577D8000, v27, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v26)
      {
        goto LABEL_27;
      }
    }
  }

LABEL_28:
  os_activity_scope_leave(&state);

  v33 = *MEMORY[0x277D85DE8];
}

void __56__MMCSHTTPContext_URLSession_task_didCompleteWithError___block_invoke(id *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  [a1[4] invalidateStreamPair];
  if ([a1[4] isValid])
  {
    v2 = [a1[5] _timingData];
    [a1[4] setTimingData:v2];

    if (gMMCS_DebugLevel >= 5)
    {
      v3 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v4 = *MEMORY[0x277CBECE8];
        v5 = a1[4];
        v6 = [v5 timingData];
        v7 = [v6 description];
        v8 = CFStringCreateWithFormat(v4, 0, @"%@ %@", v5, v7);

        v9 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v17 = v8;
          _os_log_impl(&dword_2577D8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v8)
        {
          CFRelease(v8);
        }
      }
    }

    if (([a1[4] didOpen] & 1) == 0)
    {
      [a1[4] setDidOpen:1];
      mmcs_nshttp_did_open([a1[4] hc]);
    }

    v10 = [a1[4] hc];
    v11 = [a1[5] countOfBytesSent];
    [a1[5] countOfBytesExpectedToSend];
    mmcs_nshttp_sent_data(v10, 0, v11);
    mmcs_nshttp_did_complete([a1[4] hc], a1[6]);
  }

  else
  {
    v12 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs runloop: %@ invalid: ignoring delegate callback", a1[4]);
      v14 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v17 = v13;
        _os_log_impl(&dword_2577D8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v13)
      {
        CFRelease(v13);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter([(MMCSHTTPContext *)self activityMarker], &state);
  if ([(MMCSHTTPContext *)self isValid])
  {
    v11 = [(MMCSHTTPContext *)self dataTask];
    v12 = [v11 taskDescription];
    if (v12)
    {
      v13 = [(MMCSHTTPContext *)self dataTask];
      v14 = [v13 taskDescription];
      v15 = [v9 taskDescription];
      v16 = [v14 isEqualToString:v15];

      if (v16)
      {
LABEL_16:
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __54__MMCSHTTPContext_URLSession_dataTask_didReceiveData___block_invoke;
        v27[3] = &unk_279844FE0;
        v27[4] = self;
        v28 = v9;
        v29 = v10;
        HttpContextPerformBlockSync(self, v27);

        goto LABEL_17;
      }
    }

    else
    {
    }

    v20 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = [v9 taskDescription];
      v22 = [(MMCSHTTPContext *)self dataTask];
      v23 = [v22 taskDescription];
      v24 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ unknown task %@. Expected %@: ignoring delegate callback", self, v21, v23);

      v25 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v32 = v24;
        _os_log_impl(&dword_2577D8000, v25, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v24)
      {
        CFRelease(v24);
      }
    }

    goto LABEL_16;
  }

  v17 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ invalid: ignoring delegate callback", self);
    v19 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v32 = v18;
      _os_log_impl(&dword_2577D8000, v19, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v18)
    {
      CFRelease(v18);
    }
  }

LABEL_17:
  os_activity_scope_leave(&state);

  v26 = *MEMORY[0x277D85DE8];
}

void __54__MMCSHTTPContext_URLSession_dataTask_didReceiveData___block_invoke(id *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if ([a1[4] isValid])
  {
    if (([a1[4] didOpen] & 1) == 0)
    {
      v2 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v3 = *MEMORY[0x277CBECE8];
        v4 = a1[4];
        v5 = [a1[5] response];
        v6 = CFStringCreateWithFormat(v3, 0, @"%@ not already open. Is there a response?'%@'", v4, v5);

        v7 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v13 = v6;
          _os_log_impl(&dword_2577D8000, v7, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v6)
        {
          CFRelease(v6);
        }
      }

      [a1[4] setDidOpen:1];
      mmcs_nshttp_did_open([a1[4] hc]);
    }

    mmcs_nshttp_received_data([a1[4] hc], a1[6]);
  }

  else
  {
    v8 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs runloop: %@ invalid: ignoring delegate callback", a1[4]);
      v10 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v13 = v9;
        _os_log_impl(&dword_2577D8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v32 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter([(MMCSHTTPContext *)self activityMarker], &state);
  v13 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ URLSession:%@ dataTask:%@ didReceiveResponse:%@", self, v32, v10, v11);
    v15 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v37 = v14;
      _os_log_impl(&dword_2577D8000, v15, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }

  if ([(MMCSHTTPContext *)self hc][120] == 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    *([(MMCSHTTPContext *)self hc]+ 120) = Current;
  }

  if (![(MMCSHTTPContext *)self isValid])
  {
    v23 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_23;
    }

    v24 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ invalid: calling completionHandler with NSURLSessionResponseCancel", self);
    v25 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v37 = v24;
      _os_log_impl(&dword_2577D8000, v25, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (!v24)
    {
      goto LABEL_23;
    }

LABEL_22:
    CFRelease(v24);
LABEL_23:
    v12[2](v12, 0);
    goto LABEL_24;
  }

  v17 = [(MMCSHTTPContext *)self dataTask];
  v18 = [v17 taskDescription];
  if (!v18)
  {

    goto LABEL_18;
  }

  v19 = [(MMCSHTTPContext *)self dataTask];
  v20 = [v19 taskDescription];
  v21 = [v10 taskDescription];
  v22 = [v20 isEqualToString:v21];

  if ((v22 & 1) == 0)
  {
LABEL_18:
    v26 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_23;
    }

    v27 = [v10 taskDescription];
    v28 = [(MMCSHTTPContext *)self dataTask];
    v29 = [v28 taskDescription];
    v24 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ unknown task %@. Expected %@: ignoring delegate callback", self, v27, v29);

    v30 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v37 = v24;
      _os_log_impl(&dword_2577D8000, v30, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (!v24)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __76__MMCSHTTPContext_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke;
  v33[3] = &unk_279845008;
  v33[4] = self;
  v34 = v12;
  HttpContextPerformBlockAsync(self, v33);

LABEL_24:
  os_activity_scope_leave(&state);

  v31 = *MEMORY[0x277D85DE8];
}

uint64_t __76__MMCSHTTPContext_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isValid])
  {
    if (([*(a1 + 32) didOpen] & 1) == 0)
    {
      [*(a1 + 32) setDidOpen:1];
      mmcs_nshttp_did_open([*(a1 + 32) hc]);
    }

    v2 = *(*(a1 + 40) + 16);
    v3 = *MEMORY[0x277D85DE8];

    return v2();
  }

  else
  {
    v5 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs runloop: %@ invalid: ignoring delegate callback", *(a1 + 32));
      v7 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v10 = v6;
        _os_log_impl(&dword_2577D8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }

    result = (*(*(a1 + 40) + 16))();
    v8 = *MEMORY[0x277D85DE8];
  }

  return result;
}

- (void)URLSession:(id)a3 task:(id)a4 _willSendRequestForEstablishedConnection:(id)a5 completionHandler:(id)a6
{
  v52 = *MEMORY[0x277D85DE8];
  v42 = a3;
  v10 = a4;
  v43 = a5;
  v11 = a6;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter([(MMCSHTTPContext *)self activityMarker], &state);
  if (gMMCS_DebugLevel >= 4)
  {
    v12 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ %@ %@ %@", self, v42, v10, v43);
      v14 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v51 = v13;
        _os_log_impl(&dword_2577D8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v13)
      {
        CFRelease(v13);
      }
    }
  }

  if (![(MMCSHTTPContext *)self isValid])
  {
    v25 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_26;
    }

    v26 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ invalid: calling completionHandler with nil request", self);
    v27 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v51 = v26;
      _os_log_impl(&dword_2577D8000, v27, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (!v26)
    {
      goto LABEL_26;
    }

LABEL_25:
    CFRelease(v26);
LABEL_26:
    v33 = 0;
LABEL_27:
    (v11)[2](v11, v33);
    goto LABEL_28;
  }

  v15 = [(MMCSHTTPContext *)self dataTask];
  v16 = [v15 taskDescription];
  if (!v16)
  {

    goto LABEL_21;
  }

  v17 = [(MMCSHTTPContext *)self dataTask];
  v18 = [v17 taskDescription];
  v19 = [v10 taskDescription];
  v20 = [v18 isEqualToString:v19];

  if ((v20 & 1) == 0)
  {
LABEL_21:
    v28 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_26;
    }

    v29 = [v10 taskDescription];
    v30 = [(MMCSHTTPContext *)self dataTask];
    v31 = [v30 taskDescription];
    v26 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ unknown task %@. Expected %@: ignoring delegate callback", self, v29, v31);

    v32 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v51 = v26;
      _os_log_impl(&dword_2577D8000, v32, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (!v26)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (![(MMCSHTTPContext *)self requestIsStreamed])
  {
    v33 = v43;
    if (gMMCS_DebugLevel < 5)
    {
      goto LABEL_27;
    }

    v35 = mmcs_logging_logger_default();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG);
    v33 = v43;
    if (!v36)
    {
      goto LABEL_27;
    }

    v37 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ %@ %@ %@ is not streamed; using as is.", self, v42, v10, v43);
    v38 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v51 = v37;
      _os_log_impl(&dword_2577D8000, v38, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    v33 = v43;
    if (!v37)
    {
      goto LABEL_27;
    }

LABEL_34:
    CFRelease(v37);
    v33 = v43;
    goto LABEL_27;
  }

  if ([(MMCSHTTPContext *)self requestIsStreamed])
  {
    v21 = [v43 HTTPBodyStream];
    if (v21)
    {
      v22 = [v43 HTTPBodyStream];
      v23 = [(MMCSHTTPContext *)self inputStream];
      v24 = v22 == v23;

      if (v24)
      {
        v33 = v43;
        if (gMMCS_DebugLevel < 5)
        {
          goto LABEL_27;
        }

        v39 = mmcs_logging_logger_default();
        v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG);
        v33 = v43;
        if (!v40)
        {
          goto LABEL_27;
        }

        v37 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ %@ %@ %@ is streamed, and the request input stream is non-nil and equal context input stream; using as is.", self, v42, v10, v43);
        v41 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v51 = v37;
          _os_log_impl(&dword_2577D8000, v41, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        v33 = v43;
        if (!v37)
        {
          goto LABEL_27;
        }

        goto LABEL_34;
      }
    }
  }

  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __94__MMCSHTTPContext_URLSession_task__willSendRequestForEstablishedConnection_completionHandler___block_invoke;
  v44[3] = &unk_279845030;
  v44[4] = self;
  v48 = v11;
  v45 = v42;
  v46 = v10;
  v47 = v43;
  HttpContextPerformBlockAsync(self, v44);

LABEL_28:
  os_activity_scope_leave(&state);

  v34 = *MEMORY[0x277D85DE8];
}

void __94__MMCSHTTPContext_URLSession_task__willSendRequestForEstablishedConnection_completionHandler___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) isValid] & 1) == 0)
  {
    v14 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs runloop: %@ invalid: ignoring delegate callback", *(a1 + 32));
      v16 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_21;
      }

      *buf = 138543362;
      v21 = v15;
      goto LABEL_20;
    }

LABEL_23:
    (*(*(a1 + 64) + 16))();
    goto LABEL_24;
  }

  if (gMMCS_DebugLevel >= 5)
  {
    v2 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = *MEMORY[0x277CBECE8];
      v4 = *(a1 + 32);
      v19 = *(a1 + 40);
      v5 = *(a1 + 56);
      v6 = [v4 inputStream];
      v7 = @"using existing stream";
      if (!v6)
      {
        v7 = @"creating new stream";
      }

      v8 = CFStringCreateWithFormat(v3, 0, @"%@ %@ %@ %@ is streamed, and the request input stream is nil or not equal the context input stream; %@.", v4, v19, v5, v7);

      v9 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v21 = v8;
        _os_log_impl(&dword_2577D8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v8)
      {
        CFRelease(v8);
      }
    }
  }

  mmcs_http_context_mark_as_writing([*(a1 + 32) hc]);
  v10 = [*(a1 + 32) inputStream];

  if (!v10)
  {
    [*(a1 + 32) createNewRequestBodyInputStream];
  }

  v11 = [*(a1 + 32) inputStream];

  if (!v11)
  {
    v17 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs runloop: %@ unable to create new input stream", *(a1 + 32));
      v16 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_21;
      }

      *buf = 138543362;
      v21 = v15;
LABEL_20:
      _os_log_impl(&dword_2577D8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
LABEL_21:
      if (v15)
      {
        CFRelease(v15);
      }

      goto LABEL_23;
    }

    goto LABEL_23;
  }

  v12 = [*(a1 + 56) mutableCopy];
  v13 = [*(a1 + 32) inputStream];
  [v12 setHTTPBodyStream:v13];

  (*(*(a1 + 64) + 16))();
LABEL_24:
  v18 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)a3 _willRetryBackgroundDataTask:(id)a4 withError:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter([(MMCSHTTPContext *)self activityMarker], &state);
  v11 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ %@ %@ _willRetryBackgroundDataTask after error %@", self, v8, v9, v10);
    v13 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v35 = v12;
      _os_log_impl(&dword_2577D8000, v13, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v12)
    {
      CFRelease(v12);
    }
  }

  if ([(MMCSHTTPContext *)self isValid])
  {
    v14 = [(MMCSHTTPContext *)self dataTask];
    v15 = [v14 taskDescription];
    if (v15)
    {
      v16 = [(MMCSHTTPContext *)self dataTask];
      v17 = [v16 taskDescription];
      v18 = [v9 taskDescription];
      v19 = [v17 isEqualToString:v18];

      if (v19)
      {
        v20 = self;
        objc_sync_enter(v20);
        [(MMCSHTTPContext *)v20 setIsHandlingError:1];
        objc_sync_exit(v20);

        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __69__MMCSHTTPContext_URLSession__willRetryBackgroundDataTask_withError___block_invoke;
        v30[3] = &unk_279844FE0;
        v30[4] = v20;
        v31 = v9;
        v32 = v10;
        HttpContextPerformBlockSync(v20, v30);

        goto LABEL_21;
      }
    }

    else
    {
    }

    v24 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = [v9 taskDescription];
      v26 = [(MMCSHTTPContext *)self dataTask];
      v27 = [v26 taskDescription];
      v22 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ unknown task %@. Expected %@: ignoring delegate callback", self, v25, v27);

      v28 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v35 = v22;
        _os_log_impl(&dword_2577D8000, v28, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v22)
      {
LABEL_20:
        CFRelease(v22);
      }
    }
  }

  else
  {
    v21 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ invalid: ignoring delegate callback", self);
      v23 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v35 = v22;
        _os_log_impl(&dword_2577D8000, v23, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v22)
      {
        goto LABEL_20;
      }
    }
  }

LABEL_21:
  os_activity_scope_leave(&state);

  v29 = *MEMORY[0x277D85DE8];
}

void __69__MMCSHTTPContext_URLSession__willRetryBackgroundDataTask_withError___block_invoke(id *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v26 = a1[4];
    v3 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs runloop: %@ synchronous callback");
    v4 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v28 = v3;
      _os_log_impl(&dword_2577D8000, v4, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v3)
    {
      CFRelease(v3);
    }
  }

  if ([a1[4] isValid])
  {
    v5 = [a1[5] _timingData];
    [a1[4] setTimingData:v5];

    [a1[4] invalidateStreamPair];
    mmcs_nshttp_will_retry_in_background([a1[4] hc], a1[6]);
    if (![a1[4] hc] || *(objc_msgSend(a1[4], "hc") + 292))
    {
LABEL_9:
      if ([a1[4] isValid])
      {
        [a1[4] setDidOpen:0];
      }

      goto LABEL_16;
    }

    user_data = mmcs_http_context_get_user_data([a1[4] hc]);
    if (*([a1[4] hc] + 368) && *(*(objc_msgSend(a1[4], "hc") + 368) + 77))
    {
      v11 = [a1[6] domain];
      if (![v11 isEqualToString:*MEMORY[0x277CCA738]])
      {

        goto LABEL_9;
      }

      v12 = [a1[6] code];

      if (v12 != -1001)
      {
        goto LABEL_9;
      }

      v13 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v18 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Cancelling request with FailFail enabled after initial background error");
        v19 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v28 = v18;
          _os_log_impl(&dword_2577D8000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }

        if (v18)
        {
          CFRelease(v18);
        }
      }

      v20 = a1[6];
      v21 = @"Fastfail enabled; cancelling background request after timeout.";
    }

    else
    {
      if (!mmcs_http_context_is_request_body_done([a1[4] hc]) || !user_data || !mmcs_http_request_is_put_complete_at_edge_protocol_v2(*(user_data + 24)))
      {
        goto LABEL_9;
      }

      v22 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Cancelling background retry with PutCompleteAtEdge && RequestBodyDone after initial background error");
        v24 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v28 = v23;
          _os_log_impl(&dword_2577D8000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }

        if (v23)
        {
          CFRelease(v23);
        }
      }

      v20 = a1[6];
      v21 = @"PutCompleteAtEdge && RequestBodyDone; cancelling background request upon automatic retry.";
    }

    error_with_underlying_error = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 38, v20, v21, v14, v15, v16, v17, v26);
    mmcs_http_context_should_cancel([a1[4] hc], error_with_underlying_error);
    if (error_with_underlying_error)
    {
      CFRelease(error_with_underlying_error);
    }

    goto LABEL_9;
  }

  v6 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs runloop: %@ invalid: ignoring delegate callback", a1[4]);
    v8 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v28 = v7;
      _os_log_impl(&dword_2577D8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

LABEL_16:
  v9 = *MEMORY[0x277D85DE8];
}

@end