@interface ThreadNetworkManagerInstance(RCP2CAMetrics_extension)
- (void)updateThreadSessionStartTime;
@end

@implementation ThreadNetworkManagerInstance(RCP2CAMetrics_extension)

- (void)updateThreadSessionStartTime
{
  v1 = 136315394;
  v2 = "TNMRCP2:CA:";
  v3 = 2048;
  v4 = *&threadSessionMetrics[0];
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%sthreadStartTime:%lld", &v1, 0x16u);
}

- (void)resetMetrics:()RCP2CAMetrics_extension .cold.1(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315394;
  *(buf + 4) = "TNMRCP2:CA:";
  *(buf + 6) = 2080;
  *(buf + 14) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%sFail to reset %s", buf, 0x16u);
}

- (void)calculateCoexTaskPeriod:()RCP2CAMetrics_extension .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 134218496;
  v3 = *&threadSessionMetrics[0];
  v4 = 2048;
  v5 = qword_1004E5CB8;
  v6 = 2048;
  v7 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "threadStartTime = %lld, prevCoexChangeTime = %lld, currentCoexChangeTime = %lld.", &v2, 0x20u);
}

- (void)calculateCoexTaskPeriod:()RCP2CAMetrics_extension .cold.2(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "TNMRCP2:CA:";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%sValMap key is NULL.", buf, 0xCu);
}

@end