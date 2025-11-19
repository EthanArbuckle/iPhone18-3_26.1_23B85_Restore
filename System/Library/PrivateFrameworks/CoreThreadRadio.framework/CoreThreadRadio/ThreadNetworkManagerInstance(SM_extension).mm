@interface ThreadNetworkManagerInstance(SM_extension)
- (void)clearProvideEmacTracker;
- (void)getWasChildStatus;
- (void)handleAdv;
- (void)handleRouterModeFailSafeTrigger;
- (void)notifyOnNodeStatusChange;
@end

@implementation ThreadNetworkManagerInstance(SM_extension)

- (void)validateExtendedMACAddress:()SM_extension .cold.1(const char *a1, NSObject *a2)
{
  strlen(a1);
  OUTLINED_FUNCTION_5();
  v7 = 29;
  v8 = 2080;
  v9 = a1;
  v10 = 2048;
  v11 = v4;
  OUTLINED_FUNCTION_7_1(&_mh_execute_header, a2, v5, "%s:%d  extendedMACAddress : %s, Length = %ld", v6);
}

- (void)startPairing:()SM_extension isWED:output:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)startPairing:()SM_extension isWED:output:.cold.2(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_6(a1);
  *v3 = 136315906;
  OUTLINED_FUNCTION_6_2(v2, v3);
  OUTLINED_FUNCTION_5_5(v4, v5);
  *(v6 + 20) = "false";
  *(v6 + 28) = v7;
  *(v6 + 30) = v8;
  OUTLINED_FUNCTION_7_1(&_mh_execute_header, v9, v9, "%s:%d isWed = [%s] Current Node = [%s] no-op", v10);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

- (void)startPairing:()SM_extension isWED:output:.cold.3(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_6(a1);
  *v3 = 136315906;
  OUTLINED_FUNCTION_6_2(v2, v3);
  OUTLINED_FUNCTION_5_5(v4, v5);
  *(v6 + 20) = "true";
  *(v6 + 28) = v7;
  *(v6 + 30) = v8;
  OUTLINED_FUNCTION_7_1(&_mh_execute_header, v9, v9, "%s:%d isWed = [%s] Current Node = [%s] no-op", v10);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

- (void)stopPairing:()SM_extension .cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)stopPairing:()SM_extension .cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)stopPairing:()SM_extension .cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)startFWUpdate:()SM_extension isWED:output:.cold.2(char a1, char *a2, uint64_t a3, NSObject *a4)
{
  v5 = "false";
  v6 = a2[23];
  v7 = *a2;
  *(a3 + 4) = "[ThreadNetworkManagerInstance(SM_extension) startFWUpdate:isWED:output:]";
  *(a3 + 12) = 1024;
  if (a1)
  {
    v5 = "true";
  }

  *(a3 + 14) = 334;
  *a3 = 136315906;
  *(a3 + 18) = 2080;
  *(a3 + 20) = v5;
  if (v6 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = v7;
  }

  *(a3 + 28) = 2080;
  *(a3 + 30) = v8;
  OUTLINED_FUNCTION_7_1(&_mh_execute_header, a4, a3, "%s:%d isWed = [%s] Device Current Node = [%s] no-op for Starting FW Update", a3);
  if (a2[23] < 0)
  {
    operator delete(*a2);
  }
}

- (void)nodeChangeToChildStatus:()SM_extension .cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleRouterModeFailSafeTrigger
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)handleAdv
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)notifyOnWedStatusChange:()SM_extension .cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)notifyOnWedStatusChange:()SM_extension .cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)notifyOnNodeStatusChange
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)clearProvideEmacTracker
{
  v1 = 136315138;
  v2 = "[ThreadNetworkManagerInstance(SM_extension) clearProvideEmacTracker]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s:", &v1, 0xCu);
}

- (void)eraseKeyFromProvideEmacTracker:()SM_extension .cold.1(char *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  *buf = 136315650;
  *(buf + 4) = "[ThreadNetworkManagerInstance(SM_extension) eraseKeyFromProvideEmacTracker:]";
  *(buf + 6) = 2080;
  *(buf + 14) = a3;
  *(buf + 11) = 2080;
  *(buf + 3) = v5;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Already erase complete, wedAddr=[%s], Wed Status=[%s]", buf, 0x20u);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

- (void)provideExtendedMACAddress:()SM_extension output:.cold.1(char *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  if (a1[23] >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  *a3 = 136315906;
  *(a3 + 4) = "[ThreadNetworkManagerInstance(SM_extension) provideExtendedMACAddress:output:]";
  *(a3 + 12) = 1024;
  *(a3 + 14) = 1328;
  *(a3 + 18) = 2080;
  *(a3 + 20) = v5;
  *(a3 + 28) = 2080;
  *(a3 + 30) = a2;
  OUTLINED_FUNCTION_7_1(&_mh_execute_header, a4, a3, "%s:%d State Machine Disabled Cmd received in state %s, extendedMACAddress : %s", a3);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

- (void)provideExtendedMACAddress:()SM_extension output:.cold.5(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_2_6(a1);
  *v3 = 136315650;
  OUTLINED_FUNCTION_6_2(v2, v3);
  OUTLINED_FUNCTION_5_5(v4, v5);
  *(v6 + 20) = v7;
  _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s:%d Cmd received in state %s, Detach request rejected as there is no Wed Connected no-op", v9, 0x1Cu);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

- (void)getWasChildStatus
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end