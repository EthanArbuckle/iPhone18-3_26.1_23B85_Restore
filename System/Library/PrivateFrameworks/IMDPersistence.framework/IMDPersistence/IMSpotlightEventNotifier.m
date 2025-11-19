@interface IMSpotlightEventNotifier
+ (id)sharedNotifier;
- (id)_displayStringForReason:(int64_t)a3;
- (id)_formatDate:(id)a3;
- (void)_presentNotificationWithMessage:(id)a3 newState:(id)a4 verbose:(BOOL)a5;
- (void)deferredReindexScheduled;
- (void)reindexCompletedWithState:(id)a3 reason:(int64_t)a4;
- (void)reindexInitiatedWithTotalMessages:(int64_t)a3 reason:(int64_t)a4;
- (void)reindexPausedWithState:(id)a3 reason:(int64_t)a4;
- (void)reindexResumedWithState:(id)a3 reason:(int64_t)a4;
- (void)reindexSuspendedUntilDate:(id)a3 withError:(id)a4;
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

- (id)_displayStringForReason:(int64_t)a3
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

- (void)_presentNotificationWithMessage:(id)a3 newState:(id)a4 verbose:(BOOL)a5
{
  v5 = a5;
  v21 = a3;
  v9 = a4;
  if (!v5 || objc_msgSend_notifyForVerboseSpotlightEvents(MEMORY[0x1E69A7FF8], v7, v8))
  {
    v10 = objc_alloc(MEMORY[0x1E69A8028]);
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v11, @"Messages Indexing %@", v9);
    v14 = objc_msgSend_initWithTitle_body_(v10, v13, v12, v21);

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

- (id)_formatDate:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x1E696AB78];
    v4 = a3;
    v5 = objc_alloc_init(v3);
    objc_msgSend_setDateStyle_(v5, v6, 1);
    objc_msgSend_setTimeStyle_(v5, v7, 2);
    v9 = objc_msgSend_stringFromDate_(v5, v8, v4);
  }

  else
  {
    v9 = @"(nil)";
  }

  return v9;
}

- (void)reindexCompletedWithState:(id)a3 reason:(int64_t)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v23 = objc_msgSend_indexBeginDate(v7, v8, v9);
  v11 = objc_msgSend__formatDate_(self, v10, v23);
  v13 = objc_msgSend__displayStringForReason_(self, v12, a4);
  v16 = objc_msgSend_initialIndexedMessages(v7, v14, v15);
  v19 = objc_msgSend_initialTotalMessages(v7, v17, v18);

  v21 = objc_msgSend_stringWithFormat_(v6, v20, @"Indexing initially began %@ due to %@. Indexed %lld/%lld messages.", v11, v13, v16, v19);
  objc_msgSend__presentNotificationWithMessage_newState_verbose_(self, v22, v21, @"Finished", 0);
}

- (void)reindexInitiatedWithTotalMessages:(int64_t)a3 reason:(int64_t)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v10 = objc_msgSend__displayStringForReason_(self, a2, a4);
  v8 = objc_msgSend_stringWithFormat_(v6, v7, @"Initiating reindex of %lld messages due to %@.", a3, v10);
  objc_msgSend__presentNotificationWithMessage_newState_verbose_(self, v9, v8, @"Initiated", 0);
}

- (void)reindexResumedWithState:(id)a3 reason:(int64_t)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v23 = objc_msgSend_indexBeginDate(v7, v8, v9);
  v11 = objc_msgSend__formatDate_(self, v10, v23);
  v13 = objc_msgSend__displayStringForReason_(self, v12, a4);
  v16 = objc_msgSend_initialIndexedMessages(v7, v14, v15);
  v19 = objc_msgSend_initialTotalMessages(v7, v17, v18);

  v21 = objc_msgSend_stringWithFormat_(v6, v20, @"Resuming indexing, which initially began %@ due to %@. Indexed %lld/%lld messages.", v11, v13, v16, v19);
  objc_msgSend__presentNotificationWithMessage_newState_verbose_(self, v22, v21, @"Resumed", 1);
}

- (void)reindexPausedWithState:(id)a3 reason:(int64_t)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v23 = objc_msgSend_indexBeginDate(v7, v8, v9);
  v11 = objc_msgSend__formatDate_(self, v10, v23);
  v13 = objc_msgSend__displayStringForReason_(self, v12, a4);
  v16 = objc_msgSend_initialIndexedMessages(v7, v14, v15);
  v19 = objc_msgSend_initialTotalMessages(v7, v17, v18);

  v21 = objc_msgSend_stringWithFormat_(v6, v20, @"Reindexing paused, which initially began %@ due to %@. Indexed %lld/%lld messages.", v11, v13, v16, v19);
  objc_msgSend__presentNotificationWithMessage_newState_verbose_(self, v22, v21, @"Paused", 1);
}

- (void)reindexSuspendedUntilDate:(id)a3 withError:(id)a4
{
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"Reindexing suspended until %@ due to an error.\n\n%@", a3, a4);
  objc_msgSend__presentNotificationWithMessage_newState_verbose_(self, v5, v6, @"Suspended", 1);
}

@end