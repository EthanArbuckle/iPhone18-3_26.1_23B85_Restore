@interface IDSSOSLogger
+ (id)loggerWithURLString:(id)a3;
- (IDSRateLimiter)rateLimiter;
- (IDSSOSLogger)initWithSOSURLString:(id)a3;
- (id)deviceSOSIdentifier;
- (void)logMetric:(id)a3;
@end

@implementation IDSSOSLogger

+ (id)loggerWithURLString:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithSOSURLString:v4];

  return v5;
}

- (IDSSOSLogger)initWithSOSURLString:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSSOSLogger;
  v6 = [(IDSSOSLogger *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sosURLString, a3);
  }

  return v7;
}

- (id)deviceSOSIdentifier
{
  os_unfair_lock_lock(&unk_1EB2BBF68);
  v3 = qword_1EB2BBF78;
  if (qword_1EB2BBF70)
  {
    v4 = qword_1EB2BBF78 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringGUID];
    v6 = qword_1EB2BBF70;
    qword_1EB2BBF70 = v5;

    v7 = [MEMORY[0x1E695DF00] now];
    v8 = qword_1EB2BBF78;
    qword_1EB2BBF78 = v7;

    os_unfair_lock_unlock(&unk_1EB2BBF68);
    v9 = qword_1EB2BBF70;
  }

  else
  {
    [(IDSSOSLogger *)self deviceSOSIdentifierRefreshInterval];
    v10 = [v3 dateByAddingTimeInterval:?];
    v11 = [MEMORY[0x1E695DF00] now];
    v12 = [v10 compare:v11];

    if (v12 == -1)
    {
      v13 = [MEMORY[0x1E696AEC0] stringGUID];
      v14 = qword_1EB2BBF70;
      qword_1EB2BBF70 = v13;

      v15 = [MEMORY[0x1E695DF00] date];
      v16 = qword_1EB2BBF78;
      qword_1EB2BBF78 = v15;
    }

    os_unfair_lock_unlock(&unk_1EB2BBF68);
    v9 = qword_1EB2BBF70;
  }

  return v9;
}

- (IDSRateLimiter)rateLimiter
{
  rateLimiter = self->_rateLimiter;
  if (!rateLimiter)
  {
    v4 = [[IDSRateLimiter alloc] initWithLimit:1 timeLimit:300.0];
    v5 = self->_rateLimiter;
    self->_rateLimiter = v4;

    rateLimiter = self->_rateLimiter;
  }

  return rateLimiter;
}

- (void)logMetric:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4 || ([0 operationID], v17 = objc_claimAutoreleasedReturnValue(), v17, !v17))
  {
    v5 = [(IDSSOSLogger *)self rateLimiter];
    v6 = [v5 underLimitForItem:@"SOSRateLimitItem"];

    if (v6)
    {
      v7 = v4;
      v8 = [v7 sosType];
      v9 = v8;
      v10 = @"warn";
      if (v8 != 1)
      {
        v10 = 0;
      }

      if (!v8)
      {
        v10 = @"fatal";
      }

      v11 = v10;
      v12 = [v7 sosDomain];
      if (v12 > 2 || v9 > 1)
      {
        v14 = 0;
      }

      else
      {
        v13 = off_1E77E1D90[v12];
        v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [v14 setObject:v11 forKeyedSubscript:@"errorType"];
        [v14 setObject:v13 forKeyedSubscript:@"domain"];
        v15 = [v7 operationID];
        [v14 setObject:v15 forKeyedSubscript:@"operationId"];

        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", objc_msgSend(v7, "sosError")];
        [v14 setObject:v16 forKeyedSubscript:@"errorCode"];
      }

      if (v14)
      {
        v18 = MEMORY[0x1E696AEC0];
        v19 = [MEMORY[0x1E69A60B8] sharedInstance];
        v20 = [v19 productName];
        v21 = [MEMORY[0x1E69A60B8] sharedInstance];
        v22 = [v21 productVersion];
        v23 = [MEMORY[0x1E69A60B8] sharedInstance];
        v24 = [v23 productBuildVersion];
        v25 = [v18 stringWithFormat:@"%@, %@, %@", v20, v22, v24];
        [v14 setObject:v25 forKeyedSubscript:@"osv"];

        v26 = [MEMORY[0x1E69A60B8] sharedInstance];
        v27 = [v26 model];

        if (v27)
        {
          [v14 setObject:v27 forKeyedSubscript:@"hwv"];
        }

        v28 = [(IDSSOSLogger *)self deviceSOSIdentifier];
        [v14 setObject:v28 forKeyedSubscript:@"id"];

        v29 = MEMORY[0x1E696AF78];
        v30 = [MEMORY[0x1E696AF80] ephemeralSessionConfiguration];
        v31 = [v29 sessionWithConfiguration:v30];

        v32 = MEMORY[0x1E696AD68];
        v33 = [MEMORY[0x1E695DFF8] URLWithString:self->_sosURLString];
        v34 = [v32 requestWithURL:v33];

        [v34 setHTTPMethod:@"POST"];
        v41 = 0;
        v35 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v14 options:0 error:&v41];
        v36 = v41;
        if (v35)
        {
          [v34 setHTTPBody:v35];
          v37 = [MEMORY[0x1E69A6138] serverBag];
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v43 = v14;
            v44 = 2112;
            v45 = v34;
            _os_log_impl(&dword_1A7AD9000, v37, OS_LOG_TYPE_DEFAULT, "Posting SOS! {payload: %@, request: %@}", buf, 0x16u);
          }

          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 3221225472;
          v39[2] = sub_1A7C29E00;
          v39[3] = &unk_1E77E1D70;
          v39[4] = self;
          v40 = v31;
          v38 = [v40 dataTaskWithRequest:v34 completionHandler:v39];
          [v38 resume];
        }
      }
    }
  }
}

@end