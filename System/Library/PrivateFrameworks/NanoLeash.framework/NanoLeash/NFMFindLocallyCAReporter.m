@interface NFMFindLocallyCAReporter
+ (void)sendEvent:(id)a3 with:(id)a4;
@end

@implementation NFMFindLocallyCAReporter

+ (void)sendEvent:(id)a3 with:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = nfm_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[NFMFindLocallyCAReporter] Sending event: <%{public}@; %{public}@>", &v8, 0x16u);
  }

  AnalyticsSendEvent();
}

@end