@interface SGEventSuggestionBase
+ (id)_eventStore;
+ (void)confirm:(BOOL)confirm event:(id)event completion:(id)completion;
- (SGEventSuggestionBase)initWithRealtimeEvent:(id)event;
- (SGSuggestionDelegate)suggestionDelegate;
- (id)eventKitEvent;
- (id)primaryActionTitle;
- (id)suggestionCategoryImage;
- (id)suggestionCategoryLocalizedCountOfItems:(id)items;
- (id)suggestionCategorySubtitleForItems:(id)items;
- (id)suggestionCategoryTitle;
- (id)suggestionCategoryTitleForItems:(id)items;
- (id)suggestionComparator;
- (id)suggestionDismissAction;
- (id)suggestionImage;
- (id)suggestionSubtitle;
- (id)suggestionTitle;
- (int64_t)suggestionActionButtonType;
- (int64_t)suggestionCategoryActionButtonType;
- (void)dealloc;
- (void)eventKitStoreChangedNotification:(id)notification;
@end

@implementation SGEventSuggestionBase

- (SGSuggestionDelegate)suggestionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_suggestionDelegate);

  return WeakRetained;
}

- (id)suggestionImage
{
  calendarImage = self->_calendarImage;
  if (!calendarImage)
  {
    event = [(SGRealtimeEvent *)self->_realtimeEvent event];
    startTimeZone = [event startTimeZone];

    [(SGRealtimeEvent *)self->_realtimeEvent event];
    if (startTimeZone)
      v6 = {;
      start = [v6 start];
    }

    else
      v6 = {;
      start2 = [v6 start];
      start = [SGBannerUtility dateForUTCDate:start2];
    }

    v9 = [SGUIIconSupport iconForCalendarDate:start drawBorder:1];
    v10 = self->_calendarImage;
    self->_calendarImage = v9;

    calendarImage = self->_calendarImage;
  }

  return calendarImage;
}

- (id)suggestionComparator
{
  v2 = _Block_copy(SGSuggestionEventTrailingComparator);

  return v2;
}

- (id)suggestionCategoryLocalizedCountOfItems:(id)items
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = MEMORY[0x1E696AAE8];
  itemsCopy = items;
  v6 = [v4 bundleWithIdentifier:@"com.apple.CoreSuggestionsUI"];
  v7 = [v6 localizedStringForKey:@"SuggestionsBannerMixedSubtitleEvents" value:&stru_1F3012140 table:0];
  v8 = [itemsCopy count];

  v9 = [v3 localizedStringWithFormat:v7, v8];

  return v9;
}

- (id)suggestionCategorySubtitleForItems:(id)items
{
  itemsCopy = items;
  v4 = [itemsCopy count];
  if (v4)
  {
    v5 = v4;
    if (v4 == 1)
    {
      v6 = [itemsCopy objectAtIndexedSubscript:0];
      suggestionTitle = [v6 suggestionTitle];
    }

    else
    {
      v8 = MEMORY[0x1E696AEC0];
      v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreSuggestionsUI"];
      v9 = [v6 localizedStringForKey:@"SuggestionsBannerMixedSubtitleEvents" value:&stru_1F3012140 table:0];
      suggestionTitle = [v8 localizedStringWithFormat:v9, v5];
    }
  }

  else
  {
    suggestionTitle = &stru_1F3012140;
  }

  return suggestionTitle;
}

- (id)suggestionCategoryTitleForItems:(id)items
{
  if ([items count])
  {
    v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreSuggestionsUI"];
    v4 = [v3 localizedStringForKey:@"SuggestionsBannerMultipleSuggestionsTitleFormat" value:&stru_1F3012140 table:0];
  }

  else
  {
    v4 = &stru_1F3012140;
  }

  return v4;
}

- (int64_t)suggestionCategoryActionButtonType
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [currentDevice userInterfaceIdiom] == 6;

  return 4 * v3;
}

- (id)suggestionCategoryTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreSuggestionsUI"];
  v3 = [v2 localizedStringForKey:@"SuggestionsListSectionEvents" value:&stru_1F3012140 table:0];

  return v3;
}

- (id)suggestionCategoryImage
{
  v2 = objc_opt_class();

  return [v2 calendarImage];
}

- (int64_t)suggestionActionButtonType
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [currentDevice userInterfaceIdiom] == 6;

  return 4 * v3;
}

- (id)suggestionDismissAction
{
  if ([(SGRealtimeEvent *)self->_realtimeEvent state]== 4 || [(SGRealtimeEvent *)self->_realtimeEvent state]== 5)
  {
    v3 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreSuggestionsUI"];
    v5 = [v4 localizedStringForKey:@"SuggestionsListButtonIgnoreEvent" value:&stru_1F3012140 table:0];

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__SGEventSuggestionBase_suggestionDismissAction__block_invoke;
    v7[3] = &unk_1E7CD9340;
    v7[4] = self;
    v3 = [SGSuggestionAction actionWithTitle:v5 handler:v7];
  }

  return v3;
}

void __48__SGEventSuggestionBase_suggestionDismissAction__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = sgEventsLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(*(a1 + 32) + 8) event];
    v4 = [v3 loggingIdentifier];
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_1B8182000, v2, OS_LOG_TYPE_DEFAULT, "Dismissing suggested event (%{public}@) view controller", &v6, 0xCu);
  }

  [objc_opt_class() confirm:0 event:*(*(a1 + 32) + 8) completion:0];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  [WeakRetained suggestion:*(a1 + 32) actionFinished:1];
}

- (id)primaryActionTitle
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = _currentContext;
  v4 = sgEventsLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    event = [(SGRealtimeEvent *)self->_realtimeEvent event];
    loggingIdentifier = [event loggingIdentifier];
    state = [(SGRealtimeEvent *)self->_realtimeEvent state];
    v18 = 138543618;
    v19 = loggingIdentifier;
    v20 = 1026;
    v21 = state;
    _os_log_debug_impl(&dword_1B8182000, v4, OS_LOG_TYPE_DEBUG, "SGEventSuggestionBase - [SGEvent %{public}@] in State %{public}d", &v18, 0x12u);
  }

  state2 = [(SGRealtimeEvent *)self->_realtimeEvent state];
  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreSuggestionsUI"];
  v7 = v6;
  v8 = @"SuggestionsListButtonAddToCalendar";
  if (!v3)
  {
    v8 = @"SuggestionsBannerButtonAdd";
  }

  v9 = @"SuggestionsNewListButtonEventUpdate";
  if (!v3)
  {
    v9 = @"SuggestionsBannerButtonUpdate";
  }

  v10 = @"SuggestionsNewListButtonEventDelete";
  if (!v3)
  {
    v10 = @"SuggestionsBannerButtonDelete";
  }

  v11 = @"SuggestionsListButtonEventShow";
  if (!v3)
  {
    v11 = @"SuggestionsBannerButtonShow";
  }

  if (state2 != 3)
  {
    v10 = v11;
  }

  if (state2 != 2)
  {
    v9 = v10;
  }

  if (state2 == 1)
  {
    v12 = v8;
  }

  else
  {
    v12 = v9;
  }

  v13 = [v6 localizedStringForKey:v12 value:&stru_1F3012140 table:0];

  return v13;
}

- (id)suggestionSubtitle
{
  suggestionsEvent = [(SGEventSuggestionBase *)self suggestionsEvent];
  title = [suggestionsEvent title];

  eventKitEvent = [(SGEventSuggestionBase *)self eventKitEvent];
  v6 = eventKitEvent;
  if (eventKitEvent)
  {
    v7 = timeStringForDate(eventKitEvent);
    v8 = dateStringForDate(v6);
  }

  else
  {
    v8 = &stru_1F3012140;
    v7 = &stru_1F3012140;
  }

  v9 = objc_opt_new();
  [v9 appendString:v8];
  if ([(__CFString *)v7 length])
  {
    [v9 appendString:@"\n"];
    [v9 appendString:v7];
  }

  if (![v9 length])
  {
    v10 = title;
    title = v10;
    goto LABEL_10;
  }

  if (_currentContext || ![title length])
  {
    v10 = v9;
LABEL_10:
    v11 = v10;
    goto LABEL_11;
  }

  v13 = [title stringByAppendingString:@"\n"];

  v11 = [v13 stringByAppendingString:v9];
  title = v13;
LABEL_11:

  return v11;
}

- (id)suggestionTitle
{
  if (_currentContext)
  {
    suggestionsEvent = [(SGEventSuggestionBase *)self suggestionsEvent];
    title = [suggestionsEvent title];
  }

  else
  {
    if ([(SGRealtimeEvent *)self->_realtimeEvent state]== 2)
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreSuggestionsUI"];
      suggestionsEvent = v6;
      v7 = @"SuggestionsBannerUpdatedEventTitle";
    }

    else
    {
      state = [(SGRealtimeEvent *)self->_realtimeEvent state];
      v5 = MEMORY[0x1E696AEC0];
      v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreSuggestionsUI"];
      suggestionsEvent = v6;
      if (state == 3)
      {
        v7 = @"SuggestionsBannerCanceledEventTitle";
      }

      else
      {
        v7 = @"SuggestionsBannerFoundEventsTitle";
      }
    }

    v9 = [v6 localizedStringForKey:v7 value:&stru_1F3012140 table:0];
    title = [v5 localizedStringWithFormat:v9, 1];
  }

  return title;
}

- (id)eventKitEvent
{
  v23 = *MEMORY[0x1E69E9840];
  eventKitEvent = self->_eventKitEvent;
  if (!eventKitEvent || ![(EKEvent *)eventKitEvent refresh])
  {
    _eventStore = [objc_opt_class() _eventStore];
    state = [(SGRealtimeEvent *)self->_realtimeEvent state];
    if (state > 2)
    {
      if ((state - 3) < 3)
      {
        eventIdentifier = [(SGRealtimeEvent *)self->_realtimeEvent eventIdentifier];
        v7 = [_eventStore eventWithIdentifier:eventIdentifier];
LABEL_15:
        v16 = self->_eventKitEvent;
        self->_eventKitEvent = v7;

        goto LABEL_16;
      }

      if (state == 6)
      {
        eventIdentifier = sgEventsLogHandle();
        if (os_log_type_enabled(eventIdentifier, OS_LOG_TYPE_DEBUG))
        {
          event = [(SGRealtimeEvent *)self->_realtimeEvent event];
          loggingIdentifier = [event loggingIdentifier];
          state2 = [(SGRealtimeEvent *)self->_realtimeEvent state];
          v19 = 138543618;
          v20 = loggingIdentifier;
          v21 = 1026;
          v22 = state2;
          _os_log_debug_impl(&dword_1B8182000, eventIdentifier, OS_LOG_TYPE_DEBUG, "SGEventSuggestionBase - [SGEvent %{public}@] in unsupported state %{public}d", &v19, 0x12u);
        }

        goto LABEL_16;
      }

LABEL_17:

      goto LABEL_18;
    }

    if (state == 1)
    {
      event2 = [(SGRealtimeEvent *)self->_realtimeEvent event];
      eventIdentifier = event2;
    }

    else
    {
      if (state != 2)
      {
        goto LABEL_17;
      }

      eventIdentifier2 = [(SGRealtimeEvent *)self->_realtimeEvent eventIdentifier];
      v9 = [_eventStore eventWithIdentifier:eventIdentifier2];
      v10 = self->_eventKitEvent;
      self->_eventKitEvent = v9;

      v11 = self->_eventKitEvent;
      event2 = [(SGRealtimeEvent *)self->_realtimeEvent event];
      eventIdentifier = event2;
      if (v11)
      {
        [event2 mergeIntoEKEvent:self->_eventKitEvent withStore:_eventStore];
LABEL_16:

        goto LABEL_17;
      }
    }

    v7 = [event2 toEKEventWithStore:_eventStore];
    goto LABEL_15;
  }

LABEL_18:
  v17 = self->_eventKitEvent;

  return v17;
}

- (void)eventKitStoreChangedNotification:(id)notification
{
  suggestionDelegate = [(SGEventSuggestionBase *)self suggestionDelegate];
  [suggestionDelegate suggestionWasUpdated:self];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = SGEventSuggestionBase;
  [(SGEventSuggestionBase *)&v4 dealloc];
}

- (SGEventSuggestionBase)initWithRealtimeEvent:(id)event
{
  eventCopy = event;
  v10.receiver = self;
  v10.super_class = SGEventSuggestionBase;
  v6 = [(SGEventSuggestionBase *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_realtimeEvent, event);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel_eventKitStoreChangedNotification_ name:*MEMORY[0x1E6966928] object:0];
  }

  [(SGEventSuggestionBase *)v7 preloadPrimaryActionViewController];

  return v7;
}

+ (id)_eventStore
{
  if (_eventStore_predicate != -1)
  {
    dispatch_once(&_eventStore_predicate, &__block_literal_global_86);
  }

  v3 = _eventStore_eventStore;

  return v3;
}

uint64_t __36__SGEventSuggestionBase__eventStore__block_invoke()
{
  _eventStore_eventStore = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

+ (void)confirm:(BOOL)confirm event:(id)event completion:(id)completion
{
  confirmCopy = confirm;
  v31 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  completionCopy = completion;
  if (!confirm_event_completion__service)
  {
    serviceForEvents = [MEMORY[0x1E69992A0] serviceForEvents];
    v10 = confirm_event_completion__service;
    confirm_event_completion__service = serviceForEvents;
  }

  v11 = sgEventsLogHandle();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
  if (confirmCopy)
  {
    if (v12)
    {
      event = [eventCopy event];
      loggingIdentifier = [event loggingIdentifier];
      *buf = 138543362;
      v30 = loggingIdentifier;
      _os_log_debug_impl(&dword_1B8182000, v11, OS_LOG_TYPE_DEBUG, "SGEventSuggestionBase - Confirming Event %{public}@", buf, 0xCu);
    }

    v13 = confirm_event_completion__service;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __50__SGEventSuggestionBase_confirm_event_completion___block_invoke;
    v26[3] = &unk_1E7CD9388;
    v14 = &v27;
    v15 = &v28;
    v27 = eventCopy;
    v28 = completionCopy;
    v16 = completionCopy;
    [v13 confirmEvent:eventCopy withCompletion:v26];
  }

  else
  {
    if (v12)
    {
      event2 = [eventCopy event];
      loggingIdentifier2 = [event2 loggingIdentifier];
      *buf = 138543362;
      v30 = loggingIdentifier2;
      _os_log_debug_impl(&dword_1B8182000, v11, OS_LOG_TYPE_DEBUG, "SGEventSuggestionBase - Rejecting Event %{public}@", buf, 0xCu);
    }

    v17 = confirm_event_completion__service;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __50__SGEventSuggestionBase_confirm_event_completion___block_invoke_83;
    v23[3] = &unk_1E7CD9388;
    v14 = &v24;
    v15 = &v25;
    v24 = eventCopy;
    v25 = completionCopy;
    v18 = completionCopy;
    [v17 rejectEvent:eventCopy withCompletion:v23];
  }
}

void __50__SGEventSuggestionBase_confirm_event_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = sgEventsLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) event];
      v7 = [v6 loggingIdentifier];
      v8 = 138543618;
      v9 = v7;
      v10 = 2114;
      v11 = v3;
      _os_log_error_impl(&dword_1B8182000, v4, OS_LOG_TYPE_ERROR, "SGEventSuggestionBase: Unable to confirm event %{public}@. Error: %{public}@", &v8, 0x16u);
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __50__SGEventSuggestionBase_confirm_event_completion___block_invoke_83(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = sgEventsLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) event];
      v7 = [v6 loggingIdentifier];
      v8 = 138543618;
      v9 = v7;
      v10 = 2114;
      v11 = v3;
      _os_log_error_impl(&dword_1B8182000, v4, OS_LOG_TYPE_ERROR, "SGEventSuggestionBase: Unable to reject event %{public}@. Error: %{public}@", &v8, 0x16u);
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

@end