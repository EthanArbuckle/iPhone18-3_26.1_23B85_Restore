@interface HADayStreamProcessorService
- (BOOL)shouldSendCoreAnalytics;
- (void)appendDays:(id)a3;
- (void)beginSessionWithConfig:(id)a3;
@end

@implementation HADayStreamProcessorService

- (BOOL)shouldSendCoreAnalytics
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 isHealthDataSubmissionAllowed];

  if (v3)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = [v4 valueForKeyPath:@"HADateOfLastDayStreamProcessorCAEvent"];

    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v5 timeIntervalSinceNow];
      LOBYTE(v3) = v6 < -84600.0;
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (void)beginSessionWithConfig:(id)a3
{
  v4 = a3;
  v5 = sub_100001A74();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136446210;
    v13 = "[HADayStreamProcessorService beginSessionWithConfig:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", &v12, 0xCu);
  }

  v6 = [(HADayStreamProcessorService *)self processor];

  if (v6)
  {
    v7 = sub_100001A74();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_100001AFC();
    }
  }

  v8 = [[MAIDayStreamProcessor alloc] initWithConfig:v4];
  [(HADayStreamProcessorService *)self setProcessor:v8];

  v9 = [(HADayStreamProcessorService *)self processor];

  if (v9)
  {
    v10 = [[MAIDayStreamDiagnosticLogger alloc] initWithConfig:v4];
    [(HADayStreamProcessorService *)self setDiagnosticLogger:v10];

    v11 = sub_100001A74();
    self->_signpostID = os_signpost_id_make_with_pointer(v11, self);
  }

  else
  {
    v11 = sub_100001A74();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_100001B30();
    }
  }
}

- (void)appendDays:(id)a3
{
  v4 = a3;
  v5 = [(HADayStreamProcessorService *)self processor];

  if (v5)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = [(HADayStreamProcessorService *)self processor];
          [v12 appendDay:v11];

          v13 = [(HADayStreamProcessorService *)self diagnosticLogger];
          [v13 appendDay:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v6 = sub_100001A74();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_100001B64();
    }
  }
}

@end