@interface CUIKSubscribedCalendarUtilities
+ (BOOL)canHandleURL:(id)l;
+ (id)checkSubscriptionURL:(id)l missingSchemeBlock:(id)block unsupportedSchemeBlock:(id)schemeBlock;
+ (id)subscriptionURL:(id)l usingHTTPS:(BOOL)s;
+ (id)subscriptionURLForCalendar:(id)calendar inStore:(id)store;
+ (void)checkURLForSpam:(id)spam completionHandler:(id)handler queue:(id)queue;
+ (void)fetchAvailableHolidayCalendarsWithCompletion:(id)completion queue:(id)queue;
+ (void)reportLocalSubscribedCalendarAsJunkWithoutRemoval:(id)removal;
+ (void)unsubscribeFromCalendar:(id)calendar reportAsJunk:(BOOL)junk;
@end

@implementation CUIKSubscribedCalendarUtilities

+ (id)checkSubscriptionURL:(id)l missingSchemeBlock:(id)block unsupportedSchemeBlock:(id)schemeBlock
{
  blockCopy = block;
  schemeBlockCopy = schemeBlock;
  v10 = [MEMORY[0x1E695DFF8] URLWithString:l];
  v11 = v10;
  if (v10)
  {
    scheme = [v10 scheme];
    if (scheme)
    {
      cDVRawPath = scheme;
      scheme2 = [v11 scheme];
      if (![scheme2 length])
      {
        goto LABEL_7;
      }

      host = [v11 host];
      if (!host)
      {
        goto LABEL_7;
      }

      v16 = host;
      host2 = [v11 host];
      v18 = [host2 length];

      if (v18)
      {
        cDVRawPath = [v11 CDVRawPath];
        scheme2 = [cDVRawPath CDVStringByAddingPercentEscapesForHREF];
        v19 = [v11 CDVURLWithPath:scheme2];

        v11 = v19;
LABEL_7:
      }
    }
  }

  scheme3 = [v11 scheme];
  if (!scheme3 || (v21 = scheme3, [v11 scheme], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isEqualToString:", &stru_1F4AA8958), v22, v21, v23))
  {
    if (blockCopy)
    {
      blockCopy[2](blockCopy, v11);
    }

LABEL_12:
    v24 = 0;
    goto LABEL_13;
  }

  if (([self canHandleURL:v11] & 1) == 0)
  {
    if (schemeBlockCopy)
    {
      schemeBlockCopy[2](schemeBlockCopy, v11);
    }

    goto LABEL_12;
  }

  v24 = v11;
LABEL_13:

  return v24;
}

+ (BOOL)canHandleURL:(id)l
{
  scheme = [l scheme];
  v4 = 1;
  if ([scheme compare:@"webcal" options:1])
  {
    v4 = 1;
    if ([scheme compare:@"http" options:1])
    {
      v4 = [scheme compare:@"https" options:1] == 0;
    }
  }

  return v4;
}

+ (id)subscriptionURLForCalendar:(id)calendar inStore:(id)store
{
  storeCopy = store;
  subcalAccountID = [calendar subcalAccountID];
  v7 = [storeCopy accountWithIdentifier:subcalAccountID];

  if (v7)
  {
    v8 = [MEMORY[0x1E6999830] daAccountSubclassWithBackingAccountInfo:v7];
    if ([v8 conformsToProtocol:&unk_1F4AF85C0])
    {
      subscriptionURL = [v8 subscriptionURL];
    }

    else
    {
      v10 = +[CUIKLogSubsystem defaultCategory];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(CUIKSubscribedCalendarUtilities *)v8 subscriptionURLForCalendar:v7 inStore:v10];
      }

      subscriptionURL = 0;
    }
  }

  else
  {
    subscriptionURL = 0;
  }

  return subscriptionURL;
}

+ (id)subscriptionURL:(id)l usingHTTPS:(BOOL)s
{
  sCopy = s;
  lCopy = l;
  scheme = [lCopy scheme];
  v7 = scheme;
  if (sCopy)
  {
    v8 = @"https";
  }

  else
  {
    v8 = @"http";
  }

  if ([scheme compare:v8 options:1])
  {
    v9 = [MEMORY[0x1E696AF20] componentsWithURL:lCopy resolvingAgainstBaseURL:0];
    [v9 setScheme:v8];
    v10 = [v9 URL];
  }

  else
  {
    v10 = lCopy;
  }

  return v10;
}

+ (void)unsubscribeFromCalendar:(id)calendar reportAsJunk:(BOOL)junk
{
  junkCopy = junk;
  v29 = *MEMORY[0x1E69E9840];
  calendarCopy = calendar;
  subcalURL = [calendarCopy subcalURL];
  subcalAccountID = [calendarCopy subcalAccountID];
  v9 = objc_alloc_init(MEMORY[0x1E6959A48]);
  v10 = [v9 accountWithIdentifier:subcalAccountID];
  mEMORY[0x1E6966A10] = [MEMORY[0x1E6966A10] sharedInstance];
  [mEMORY[0x1E6966A10] removeInteractionsForCalendar:calendarCopy];

  source = [calendarCopy source];
  sourceType = [source sourceType];

  if (sourceType == 2)
  {
    parentAccount = [v10 parentAccount];
    calIsiCloudCalDAVAccount = [parentAccount calIsiCloudCalDAVAccount];

    if (!junkCopy)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v16 = +[CUIKLogSubsystem defaultCategory];
  v17 = v16;
  if (v10)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v26 = subcalAccountID;
      v27 = 2112;
      v28 = calendarCopy;
      _os_log_impl(&dword_1CAB19000, v17, OS_LOG_TYPE_DEFAULT, "Deleting account %{public}@ to delete subscribed calendar %@", buf, 0x16u);
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __72__CUIKSubscribedCalendarUtilities_unsubscribeFromCalendar_reportAsJunk___block_invoke;
    v22[3] = &unk_1E8399810;
    v23 = subcalAccountID;
    v24 = calendarCopy;
    [v9 removeAccount:v10 withCompletionHandler:v22];
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(CUIKSubscribedCalendarUtilities *)subcalAccountID unsubscribeFromCalendar:calendarCopy reportAsJunk:v17];
    }
  }

  calIsiCloudCalDAVAccount = 0;
  if (junkCopy)
  {
LABEL_12:
    if (calIsiCloudCalDAVAccount)
    {
      [calendarCopy setIsSubscribedCalendarJunk:1];
      eventStore = [calendarCopy eventStore];
      [eventStore saveCalendar:calendarCopy commit:1 error:0];
    }

    else
    {
      [self reportLocalSubscribedCalendarAsJunkWithoutRemoval:subcalURL];
    }
  }

LABEL_15:
  eventStore2 = [calendarCopy eventStore];
  v21 = 0;
  [eventStore2 removeCalendar:calendarCopy commit:1 error:&v21];
  v20 = v21;
}

void __72__CUIKSubscribedCalendarUtilities_unsubscribeFromCalendar_reportAsJunk___block_invoke(uint64_t a1, char a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[CUIKLogSubsystem defaultCategory];
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&dword_1CAB19000, v7, OS_LOG_TYPE_DEFAULT, "Successfully removed account %{public}@ for delete of subscribed calendar %@", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __72__CUIKSubscribedCalendarUtilities_unsubscribeFromCalendar_reportAsJunk___block_invoke_cold_1(a1, v5, v7);
  }
}

+ (void)reportLocalSubscribedCalendarAsJunkWithoutRemoval:(id)removal
{
  if (removal)
  {
    v3 = MEMORY[0x1E69998A8];
    removalCopy = removal;
    sharedConnection = [v3 sharedConnection];
    [sharedConnection reportSubscriptionCalendarAsJunk:removalCopy];
  }
}

+ (void)fetchAvailableHolidayCalendarsWithCompletion:(id)completion queue:(id)queue
{
  completionCopy = completion;
  queueCopy = queue;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__8;
  v15[4] = __Block_byref_object_dispose__8;
  array = [MEMORY[0x1E695DF70] array];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__CUIKSubscribedCalendarUtilities_fetchAvailableHolidayCalendarsWithCompletion_queue___block_invoke;
  aBlock[3] = &unk_1E839A970;
  aBlock[4] = v15;
  v7 = _Block_copy(aBlock);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86__CUIKSubscribedCalendarUtilities_fetchAvailableHolidayCalendarsWithCompletion_queue___block_invoke_2;
  v11[3] = &unk_1E839A9B8;
  v13 = v15;
  v8 = completionCopy;
  v12 = v8;
  v9 = _Block_copy(v11);
  mEMORY[0x1E69998A8] = [MEMORY[0x1E69998A8] sharedConnection];
  [mEMORY[0x1E69998A8] fetchAvailableHolidayCalendarsWithResultsBlock:v7 completionBlock:v9 queue:queueCopy];

  _Block_object_dispose(v15, 8);
}

void __86__CUIKSubscribedCalendarUtilities_fetchAvailableHolidayCalendarsWithCompletion_queue___block_invoke(uint64_t a1, void *a2)
{
  v26 = a1;
  v37 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v31;
    v28 = *MEMORY[0x1E695D978];
    v29 = *MEMORY[0x1E695D9B0];
    do
    {
      v6 = 0;
      v27 = v4;
      do
      {
        if (*v31 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v30 + 1) + 8 * v6);
        v8 = [v7 language];
        if (v8)
        {
          v9 = v8;
          v10 = [v7 region];
          if (v10)
          {
            v11 = v10;
            v12 = [v7 URLString];

            if (!v12)
            {
              goto LABEL_15;
            }

            v34[0] = v29;
            v13 = [v7 language];
            v34[1] = v28;
            v35[0] = v13;
            v14 = [v7 region];
            v35[1] = v14;
            v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];

            v15 = [MEMORY[0x1E695DF58] localeIdentifierFromComponents:v9];
            v16 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v15];
            if (v16)
            {
              v17 = MEMORY[0x1E695DFF8];
              v18 = [v7 URLString];
              v19 = [v17 URLWithString:v18];

              if (v19)
              {
                v20 = [CUIKSubscribedHolidayCalendar alloc];
                [v7 language];
                v21 = v5;
                v23 = v22 = v2;
                v24 = [(CUIKSubscribedHolidayCalendar *)v20 initWithLocale:v16 languageCode:v23 URL:v19];

                v2 = v22;
                v5 = v21;
                v4 = v27;
                v25 = [v7 region];
                [(CUIKSubscribedHolidayCalendar *)v24 setCountryCode:v25];

                [*(*(*(v26 + 32) + 8) + 40) addObject:v24];
              }
            }
          }
        }

LABEL_15:
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v4);
  }
}

void __86__CUIKSubscribedCalendarUtilities_fetchAvailableHolidayCalendarsWithCompletion_queue___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __86__CUIKSubscribedCalendarUtilities_fetchAvailableHolidayCalendarsWithCompletion_queue___block_invoke_2_cold_1(v3, v4);
    }
  }

  v5 = [MEMORY[0x1E695DF70] arrayWithArray:*(*(*(a1 + 40) + 8) + 40)];
  [v5 sortUsingComparator:&__block_literal_global_18];
  (*(*(a1 + 32) + 16))();
}

uint64_t __86__CUIKSubscribedCalendarUtilities_fetchAvailableHolidayCalendarsWithCompletion_queue___block_invoke_95(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 localizedDescription];
  v6 = [v4 localizedDescription];

  v7 = [v5 localizedCompare:v6];
  return v7;
}

+ (void)checkURLForSpam:(id)spam completionHandler:(id)handler queue:(id)queue
{
  spamCopy = spam;
  handlerCopy = handler;
  if (spamCopy)
  {
    v9 = MEMORY[0x1E69998A8];
    queueCopy = queue;
    queueCopy2 = [v9 sharedConnection];
    absoluteString = [spamCopy absoluteString];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __75__CUIKSubscribedCalendarUtilities_checkURLForSpam_completionHandler_queue___block_invoke;
    v21[3] = &unk_1E839A9E0;
    v13 = &v23;
    v23 = handlerCopy;
    v14 = &v22;
    v22 = spamCopy;
    v15 = handlerCopy;
    [queueCopy2 checkSubscriptionCalendarIsJunk:absoluteString queue:queueCopy completionBlock:v21];
  }

  else
  {
    queueCopy2 = queue;
    v16 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CUIKSubscribedCalendarUtilities checkURLForSpam:v16 completionHandler:? queue:?];
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __75__CUIKSubscribedCalendarUtilities_checkURLForSpam_completionHandler_queue___block_invoke_99;
    v18[3] = &unk_1E839A1F0;
    v13 = &v20;
    v14 = &v19;
    v19 = 0;
    v20 = handlerCopy;
    v17 = handlerCopy;
    dispatch_async(queueCopy2, v18);
  }
}

void __75__CUIKSubscribedCalendarUtilities_checkURLForSpam_completionHandler_queue___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (v6)
  {
    v7 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __75__CUIKSubscribedCalendarUtilities_checkURLForSpam_completionHandler_queue___block_invoke_cold_1(v6, v7);
    }
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), *(a1 + 32), a3 > 0);
}

+ (void)subscriptionURLForCalendar:(NSObject *)a3 inStore:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [a2 identifier];
  v8 = 138543618;
  v9 = v6;
  v10 = 2114;
  v11 = v7;
  _os_log_error_impl(&dword_1CAB19000, a3, OS_LOG_TYPE_ERROR, "Unexpected DAAccount implementation (%{public}@) for account %{public}@", &v8, 0x16u);
}

+ (void)unsubscribeFromCalendar:(os_log_t)log reportAsJunk:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1CAB19000, log, OS_LOG_TYPE_ERROR, "Couldn't find account with ID %{public}@ to remove while deleting subscribed calendar %@", &v3, 0x16u);
}

void __72__CUIKSubscribedCalendarUtilities_unsubscribeFromCalendar_reportAsJunk___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = 138543874;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1CAB19000, log, OS_LOG_TYPE_ERROR, "Failed to remove account %{public}@ while deleting subscribed calendar %@: %@", &v5, 0x20u);
}

void __86__CUIKSubscribedCalendarUtilities_fetchAvailableHolidayCalendarsWithCompletion_queue___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1CAB19000, a2, OS_LOG_TYPE_ERROR, "Error when fetching available holiday calendars: %@", &v2, 0xCu);
}

void __75__CUIKSubscribedCalendarUtilities_checkURLForSpam_completionHandler_queue___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1CAB19000, a2, OS_LOG_TYPE_ERROR, "Received error when checking URL for junk: %@", &v2, 0xCu);
}

@end