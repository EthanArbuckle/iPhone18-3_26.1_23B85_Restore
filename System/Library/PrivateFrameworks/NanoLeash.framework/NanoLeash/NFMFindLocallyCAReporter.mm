@interface NFMFindLocallyCAReporter
+ (void)sendEvent:(id)event with:(id)with;
@end

@implementation NFMFindLocallyCAReporter

+ (void)sendEvent:(id)event with:(id)with
{
  eventCopy = event;
  withCopy = with;
  v7 = nfm_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = eventCopy;
    v10 = 2114;
    v11 = withCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[NFMFindLocallyCAReporter] Sending event: <%{public}@; %{public}@>", &v8, 0x16u);
  }

  AnalyticsSendEvent();
}

@end