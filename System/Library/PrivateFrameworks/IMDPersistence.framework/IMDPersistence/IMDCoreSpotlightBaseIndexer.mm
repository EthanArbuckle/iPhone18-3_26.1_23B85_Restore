@interface IMDCoreSpotlightBaseIndexer
+ (NSString)timingProfileKey;
+ (id)_checkTimeSensitiveCustomKey;
+ (id)chatUniqueIdentifierKey;
+ (id)isBusinessChatCustomKey;
+ (id)isChatMutedCustomKey;
+ (id)isFromMeCustomKey;
+ (id)isTranslatedCustomKey;
+ (id)mentionedAddressesCustomKey;
+ (void)indexItem:(id)item withChat:(id)chat context:(id)context metadataToUpdate:(id)update timingProfiler:(id)profiler;
+ (void)startTimingWithProfiler:(id)profiler;
+ (void)stopTimingWithProfiler:(id)profiler;
@end

@implementation IMDCoreSpotlightBaseIndexer

+ (void)indexItem:(id)item withChat:(id)chat context:(id)context metadataToUpdate:(id)update timingProfiler:(id)profiler
{
  itemCopy = item;
  chatCopy = chat;
  contextCopy = context;
  updateCopy = update;
  profilerCopy = profiler;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "IMDCoreSpotlightIndexer - Invalid to call IMDCoreSpotlightBaseIndexer directly, use subclass", v17, 2u);
    }
  }
}

+ (id)isFromMeCustomKey
{
  if (qword_1EDBE5E60 != -1)
  {
    sub_1B7CFA258();
  }

  v3 = qword_1EDBE5E68;

  return v3;
}

+ (id)isBusinessChatCustomKey
{
  if (qword_1EDBE5E70 != -1)
  {
    sub_1B7CFA26C();
  }

  v3 = qword_1EDBE5E78;

  return v3;
}

+ (id)mentionedAddressesCustomKey
{
  if (qword_1EDBE5AD8 != -1)
  {
    sub_1B7CFA280();
  }

  v3 = qword_1EDBE5AE0;

  return v3;
}

+ (id)chatUniqueIdentifierKey
{
  if (qword_1EDBE5B68 != -1)
  {
    sub_1B7CFA294();
  }

  v3 = qword_1EDBE5B70;

  return v3;
}

+ (id)isChatMutedCustomKey
{
  if (qword_1EBA53B00 != -1)
  {
    sub_1B7CFA2A8();
  }

  v3 = qword_1EBA53B08;

  return v3;
}

+ (id)isTranslatedCustomKey
{
  if (qword_1EBA53AF0 != -1)
  {
    sub_1B7CFA2BC();
  }

  v3 = qword_1EBA53AF8;

  return v3;
}

+ (id)_checkTimeSensitiveCustomKey
{
  if (qword_1EBA54188 != -1)
  {
    sub_1B7CFA2D0();
  }

  v3 = qword_1EBA54180;

  return v3;
}

+ (NSString)timingProfileKey
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (void)startTimingWithProfiler:(id)profiler
{
  profilerCopy = profiler;
  v4 = objc_opt_class();
  v8 = objc_msgSend_timingProfileKey(v4, v5, v6);
  objc_msgSend_startTimingForKey_(profilerCopy, v7, v8);
}

+ (void)stopTimingWithProfiler:(id)profiler
{
  profilerCopy = profiler;
  v4 = objc_opt_class();
  v8 = objc_msgSend_timingProfileKey(v4, v5, v6);
  objc_msgSend_stopTimingForKey_(profilerCopy, v7, v8);
}

@end