@interface EKEvent(Saving)
+ (uint64_t)updateVirtualConference:()Saving replacing:with:;
- (uint64_t)CUIKEditingContext_removeWithSpan:()Saving error:;
- (uint64_t)CUIKEditingContext_saveWithSpan:()Saving error:;
- (void)fixInvalidatedVirtualConferenceURLs:()Saving;
@end

@implementation EKEvent(Saving)

- (uint64_t)CUIKEditingContext_saveWithSpan:()Saving error:
{
  [self fixInvalidatedVirtualConferenceURLs:?];
  eventStore = [self eventStore];
  v8 = [eventStore saveEvent:self span:a3 commit:0 error:a4];

  if (v8)
  {
    [self postModifiedNotification];
  }

  else
  {
    v9 = +[CUIKLogSubsystem editingContext];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [EKEvent(Saving) CUIKEditingContext_saveWithSpan:error:];
    }
  }

  return v8;
}

- (uint64_t)CUIKEditingContext_removeWithSpan:()Saving error:
{
  eventStore = [self eventStore];
  v8 = [eventStore removeEvent:self span:a3 commit:0 error:a4];

  if (v8)
  {
    [self postModifiedNotification];
    [CUIKEditingContext postLiveEditNotificationForObject:self];
  }

  else
  {
    v9 = +[CUIKLogSubsystem editingContext];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [EKEvent(Saving) CUIKEditingContext_removeWithSpan:error:];
    }
  }

  return v8;
}

- (void)fixInvalidatedVirtualConferenceURLs:()Saving
{
  v38 = *MEMORY[0x1E69E9840];
  [self virtualConference];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v22 = v32 = 0u;
  joinMethods = [v22 joinMethods];
  v6 = [joinMethods countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = v6;
  v8 = *v30;
  v24 = 0;
  obj = joinMethods;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v30 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = [*(*(&v29 + 1) + 8 * i) URL];
      v11 = MEMORY[0x1E69669E0];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __55__EKEvent_Saving__fixInvalidatedVirtualConferenceURLs___block_invoke;
      v25[3] = &unk_1E839A2B0;
      v12 = v10;
      v26 = v12;
      selfCopy = self;
      v28 = a3;
      v13 = [v11 validURLForConferenceURL:v12 completion:v25];
      v14 = v13;
      if (v13)
      {
        v15 = [v13 isEqual:v12];
        v16 = +[CUIKLogSubsystem editingContext];
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
        if (v15)
        {
          if (v17)
          {
            *buf = 138412290;
            v34 = v12;
            _os_log_impl(&dword_1CAB19000, v16, OS_LOG_TYPE_INFO, "URL %@ is still valid.", buf, 0xCu);
          }
        }

        else
        {
          v18 = v8;
          if (v17)
          {
            *buf = 138412546;
            v34 = v12;
            v35 = 2112;
            v36 = v14;
            _os_log_impl(&dword_1CAB19000, v16, OS_LOG_TYPE_INFO, "Replacing URL %@ with %@.", buf, 0x16u);
          }

          v19 = a3;

          v20 = v24;
          if (!v24)
          {
            v20 = [v22 copy];
          }

          v21 = objc_opt_class();
          v16 = [MEMORY[0x1E695DFD8] setWithObject:v12];
          v24 = v20;
          [v21 updateVirtualConference:v20 replacing:v16 with:v14];
          a3 = v19;
          v8 = v18;
        }
      }
    }

    v7 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  }

  while (v7);

  if (v24)
  {
    [self setVirtualConference:v24];
    joinMethods = v24;
LABEL_20:
  }
}

+ (uint64_t)updateVirtualConference:()Saving replacing:with:
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v22 = a5;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [v7 joinMethods];
  v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = [v15 URL];
        v17 = [v8 containsObject:v16];

        if (v17)
        {
          joinMethods = [v7 joinMethods];
          v19 = [joinMethods mutableCopy];

          v20 = [v15 copy];
          [v20 setURL:v22];
          [v19 setObject:v20 atIndexedSubscript:v11];
          [v7 setJoinMethods:v19];

          v12 = 1;
        }

        ++v11;
      }

      v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

@end