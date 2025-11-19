uint64_t DLCSessionShouldLogLevel(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return IMShouldLogCategory();
  }

  else
  {
    return IMShouldLog();
  }
}

uint64_t DLCSessionBeginSession(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  IMSyncLoggingsPreferences();
  result = IMShouldLog();
  if (result)
  {

    return MEMORY[0x282173898](a1, a2, a3, a4);
  }

  return result;
}

uint64_t DLCSessionEndSession(uint64_t a1, uint64_t a2)
{
  result = IMShouldLog();
  if (result)
  {

    return MEMORY[0x2821738A0](a1, a2);
  }

  return result;
}

uint64_t DLCSessionLogCallInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    if (IMShouldLog())
    {
      goto LABEL_3;
    }

    return 0;
  }

  if ((IMShouldLogCategory() & 1) == 0)
  {
    return 0;
  }

LABEL_3:

  return MEMORY[0x2821738B0](a1, a2, a3, a4);
}

uint64_t DLCSessionNoteCheckpoint()
{
  result = IMShouldLog();
  if (result)
  {
    return _IMLoggingNoteCheckpoint_V();
  }

  return result;
}

uint64_t DLCSessionLogWithLevel()
{
  result = IMShouldLogCategory();
  if (result)
  {
    return _IMLoggingLog_V();
  }

  return result;
}

uint64_t DLCSessionLogWithLevelV()
{
  result = IMShouldLogCategory();
  if (result)
  {

    return _IMLoggingLog_V();
  }

  return result;
}

uint64_t DLCSessionPulse(uint64_t a1, uint64_t a2)
{
  result = IMShouldLog();
  if (result)
  {

    return MEMORY[0x2821738C8](a1, a2);
  }

  return result;
}

uint64_t DLCSessionEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = IMShouldLog();
  if (result)
  {

    return MEMORY[0x2821738A8](a1, a2, a3);
  }

  return result;
}

uint64_t DLCSessionPerformSnapshot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = IMShouldLog();
  if (result)
  {
    v5 = objc_autoreleasePoolPush();
    [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{a3, @"reasonForSnapshot", 0}];
    v6 = _IMLoggingActionWithUserInfo();
    objc_autoreleasePoolPop(v5);
    return v6;
  }

  return result;
}

uint64_t DLCSessionSetFailureReason(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = IMShouldLog();
  if (result)
  {

    return MEMORY[0x2821738D0](a1, a2, a3);
  }

  return result;
}

uint64_t DLCSessionSetInitiator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = IMShouldLog();
  if (result)
  {

    return MEMORY[0x2821738D8](a1, a2, a3);
  }

  return result;
}

uint64_t DLCSessionSetRecipient(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = IMShouldLog();
  if (result)
  {

    return MEMORY[0x2821738E0](a1, a2, a3);
  }

  return result;
}

uint64_t DLCShouldLogLevel(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return IMShouldLogCategory();
  }

  else
  {
    return IMShouldLog();
  }
}

uint64_t DLCCollectLogsWithCompletionHandler(uint64_t result, void *a2, void *a3)
{
  if (result)
  {
    v5 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{objc_msgSend(a2, "objectForKey:", @"DLCLogGatheringFlagsKey", @"collectionFlags", objc_msgSend(a2, "objectForKey:", @"DLCAlertTitleKey", @"title", objc_msgSend(a2, "objectForKey:", @"DLCGatheringDisplayFlagsKey", @"displayFlags", 0}];
    v6 = [a2 objectForKey:@"DLCDefaultRadarComponentKey"];
    if (v6)
    {
      CFDictionarySetValue(v5, @"radarComponent", v6);
    }

    v7 = [a2 objectForKey:@"DLCDefaultRadarComponentKey"];
    if (v7)
    {
      CFDictionarySetValue(v5, @"radarComponentVersion", v7);
    }

    v8 = [a3 copy];
    return _IMLoggingActionWithUserInfo();
  }

  return result;
}

void sub_248B84188(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 objectForKey:@"logPath"];
  if ([objc_msgSend(a3 objectForKey:{@"replyAction", "integerValue"}] != 14 || v5 == 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v5, @"DLCLogPathKey", 0}];
  }

  v8 = v7;
  (*(*(a1 + 32) + 16))();
}

uint64_t DLCCollectLogs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a1;
  }

  v8 = objc_alloc(MEMORY[0x277CBEAC0]);
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v10 = [v8 initWithObjectsAndKeys:{v9, @"DLCGatheringDisplayFlagsKey", objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", a4), @"DLCLogGatheringFlagsKey", v7, @"DLCAlertTitleKey", 0}];
  v11 = DLCCollectLogsWithCompletionHandler(a1, v10, 0);

  return v11;
}

uint64_t DLCShouldLogMessageBodies(uint64_t a1)
{
  result = IMShouldLog();
  if (result)
  {

    return MEMORY[0x282173728](a1);
  }

  return result;
}