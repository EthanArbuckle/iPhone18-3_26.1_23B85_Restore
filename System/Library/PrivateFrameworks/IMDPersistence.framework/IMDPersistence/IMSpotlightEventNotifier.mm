@interface IMSpotlightEventNotifier
+ (id)sharedNotifier;
- (id)_displayStringForReason:(int64_t)reason;
- (id)_formatDate:(id)date;
- (void)_presentNotificationWithMessage:(id)message newState:(id)state verbose:(BOOL)verbose;
- (void)deferredReindexScheduled;
- (void)reindexCompletedWithState:(id)state reason:(int64_t)reason;
- (void)reindexInitiatedWithTotalMessages:(int64_t)messages reason:(int64_t)reason;
- (void)reindexPausedWithState:(id)state reason:(int64_t)reason;
- (void)reindexResumedWithState:(id)state reason:(int64_t)reason;
- (void)reindexSuspendedUntilDate:(id)date withError:(id)error;
@end

@implementation IMSpotlightEventNotifier

+ (id)sharedNotifier
{
  if (qword_1EDBE5C28 != -1)
  {
    sub_1B7CFB5A8();
  }

  if (qword_1EDBE5C30 && objc_msgSend_notifyForSpotlightEvents(MEMORY[0x1E69A7FF8], a2, v2))
  {
    v3 = qword_1EDBE5C30;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_displayStringForReason:(int64_t)reason
{
  v3 = NSStringFromIMCoreSpotlightIndexReason();
  if (objc_msgSend_hasPrefix_(v3, v4, @"IMCoreSpotlightIndexReason"))
  {
    v7 = objc_msgSend_length(@"IMCoreSpotlightIndexReason", v5, v6);
    v9 = objc_msgSend_substringFromIndex_(v3, v8, v7);

    v3 = v9;
  }

  return v3;
}

- (void)_presentNotificationWithMessage:(id)message newState:(id)state verbose:(BOOL)verbose
{
  verboseCopy = verbose;
  messageCopy = message;
  stateCopy = state;
  if (!verboseCopy || objc_msgSend_notifyForVerboseSpotlightEvents(MEMORY[0x1E69A7FF8], v7, v8))
  {
    v10 = objc_alloc(MEMORY[0x1E69A8028]);
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v11, @"Messages Indexing %@", stateCopy);
    v14 = objc_msgSend_initWithTitle_body_(v10, v13, v12, messageCopy);

    v17 = objc_msgSend_spotlightEventsAreTimeSensitive(MEMORY[0x1E69A7FF8], v15, v16);
    objc_msgSend_setTimeSensitive_(v14, v18, v17);
    v19 = objc_alloc_init(MEMORY[0x1E69A8030]);
    objc_msgSend_postNotification_(v19, v20, v14);
  }
}

- (void)deferredReindexScheduled
{
  v4 = MEMORY[0x1E696AEC0];
  v8 = objc_msgSend_date(MEMORY[0x1E695DF00], a2, v2);
  v6 = objc_msgSend_stringWithFormat_(v4, v5, @"Full reindex requested by Spotlight at %@, scheduled to run later.", v8);
  objc_msgSend__presentNotificationWithMessage_newState_verbose_(self, v7, v6, @"Scheduled", 0);
}

- (id)_formatDate:(id)date
{
  if (date)
  {
    v3 = MEMORY[0x1E696AB78];
    dateCopy = date;
    v5 = objc_alloc_init(v3);
    objc_msgSend_setDateStyle_(v5, v6, 1);
    objc_msgSend_setTimeStyle_(v5, v7, 2);
    v9 = objc_msgSend_stringFromDate_(v5, v8, dateCopy);
  }

  else
  {
    v9 = @"(nil)";
  }

  return v9;
}

- (void)reindexCompletedWithState:(id)state reason:(int64_t)reason
{
  v6 = MEMORY[0x1E696AEC0];
  stateCopy = state;
  v23 = objc_msgSend_indexBeginDate(stateCopy, v8, v9);
  v11 = objc_msgSend__formatDate_(self, v10, v23);
  v13 = objc_msgSend__displayStringForReason_(self, v12, reason);
  v16 = objc_msgSend_initialIndexedMessages(stateCopy, v14, v15);
  v19 = objc_msgSend_initialTotalMessages(stateCopy, v17, v18);

  v21 = objc_msgSend_stringWithFormat_(v6, v20, @"Indexing initially began %@ due to %@. Indexed %lld/%lld messages.", v11, v13, v16, v19);
  objc_msgSend__presentNotificationWithMessage_newState_verbose_(self, v22, v21, @"Finished", 0);
}

- (void)reindexInitiatedWithTotalMessages:(int64_t)messages reason:(int64_t)reason
{
  v6 = MEMORY[0x1E696AEC0];
  v10 = objc_msgSend__displayStringForReason_(self, a2, reason);
  v8 = objc_msgSend_stringWithFormat_(v6, v7, @"Initiating reindex of %lld messages due to %@.", messages, v10);
  objc_msgSend__presentNotificationWithMessage_newState_verbose_(self, v9, v8, @"Initiated", 0);
}

- (void)reindexResumedWithState:(id)state reason:(int64_t)reason
{
  v6 = MEMORY[0x1E696AEC0];
  stateCopy = state;
  v23 = objc_msgSend_indexBeginDate(stateCopy, v8, v9);
  v11 = objc_msgSend__formatDate_(self, v10, v23);
  v13 = objc_msgSend__displayStringForReason_(self, v12, reason);
  v16 = objc_msgSend_initialIndexedMessages(stateCopy, v14, v15);
  v19 = objc_msgSend_initialTotalMessages(stateCopy, v17, v18);

  v21 = objc_msgSend_stringWithFormat_(v6, v20, @"Resuming indexing, which initially began %@ due to %@. Indexed %lld/%lld messages.", v11, v13, v16, v19);
  objc_msgSend__presentNotificationWithMessage_newState_verbose_(self, v22, v21, @"Resumed", 1);
}

- (void)reindexPausedWithState:(id)state reason:(int64_t)reason
{
  v6 = MEMORY[0x1E696AEC0];
  stateCopy = state;
  v23 = objc_msgSend_indexBeginDate(stateCopy, v8, v9);
  v11 = objc_msgSend__formatDate_(self, v10, v23);
  v13 = objc_msgSend__displayStringForReason_(self, v12, reason);
  v16 = objc_msgSend_initialIndexedMessages(stateCopy, v14, v15);
  v19 = objc_msgSend_initialTotalMessages(stateCopy, v17, v18);

  v21 = objc_msgSend_stringWithFormat_(v6, v20, @"Reindexing paused, which initially began %@ due to %@. Indexed %lld/%lld messages.", v11, v13, v16, v19);
  objc_msgSend__presentNotificationWithMessage_newState_verbose_(self, v22, v21, @"Paused", 1);
}

- (void)reindexSuspendedUntilDate:(id)date withError:(id)error
{
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"Reindexing suspended until %@ due to an error.\n\n%@", date, error);
  objc_msgSend__presentNotificationWithMessage_newState_verbose_(self, v5, v6, @"Suspended", 1);
}

@end