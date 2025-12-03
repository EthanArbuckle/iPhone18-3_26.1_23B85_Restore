@interface DDEventsAction
+ (BOOL)actionAvailableForResult:(__DDResult *)result url:(id)url context:(id)context;
+ (id)actionsWithURL:(id)l result:(__DDResult *)result context:(id)context;
- (id)localizedName;
- (id)makeURL;
- (id)notificationURL;
- (void)performFromView:(id)view;
@end

@implementation DDEventsAction

+ (BOOL)actionAvailableForResult:(__DDResult *)result url:(id)url context:(id)context
{
  HasType = DDResultHasType();
  if (HasType)
  {

    LOBYTE(HasType) = [self isAvailable];
  }

  return HasType;
}

+ (id)actionsWithURL:(id)l result:(__DDResult *)result context:(id)context
{
  v14[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  contextCopy = context;
  if ([self isAvailable])
  {
    v10 = [(DDAction *)DDEventsAction actionWithURL:lCopy result:result context:contextCopy];
    v14[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)localizedName
{
  notificationIconBundleIdentifier = [(DDEventsAction *)self notificationIconBundleIdentifier];
  v3 = dd_applicationNameWithBundleIdentifier(notificationIconBundleIdentifier);

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = DDLocalizedStringFromTable(@"Apple Invites", @"Action name when tap and holding a Confetti app trigger link. Must match the Confetti marketing name localization.", @"Apple Invites", @"Localizable-extra");
  }

  v5 = v4;

  return v5;
}

- (id)makeURL
{
  v22[6] = *MEMORY[0x277D85DE8];
  v22[0] = @"EventTitle";
  v22[1] = @"SelectedText";
  v22[2] = @"ReferenceDate";
  v22[3] = @"SpecialURL";
  v22[4] = @"CoreSpotlightUniqueIdentifier";
  v22[5] = @"DocumentLanguage";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:6];
  context = [(DDAction *)self context];
  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v3, "count") + 1}];
  v6 = beginDateOfEventResults([(DDAction *)self associatedResults], context, 0, 0, 0);
  if (v6)
  {
    [v5 setObject:v6 forKeyedSubscript:@"event-start-date"];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [context objectForKeyedSubscript:{v12, v17}];
        [v5 setObject:v13 forKeyedSubscript:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v14 = [MEMORY[0x277CFB450] urlForRSVPDataDetectorsWithContext:v5];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)notificationURL
{
  if (self->_targetURL)
  {
    targetURL = self->_targetURL;
  }

  else
  {
    makeURL = [(DDEventsAction *)self makeURL];
    v6 = self->_targetURL;
    self->_targetURL = makeURL;

    targetURL = self->_targetURL;
  }

  return targetURL;
}

- (void)performFromView:(id)view
{
  viewCopy = view;
  v5 = dispatch_get_global_queue(33, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__DDEventsAction_performFromView___block_invoke;
  v7[3] = &unk_278290BC8;
  v7[4] = self;
  v8 = viewCopy;
  v6 = viewCopy;
  dispatch_async(v5, v7);
}

void __34__DDEventsAction_performFromView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) makeURL];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 scheme];
    if (!v4)
    {
      v5 = [v3 absoluteString];

      if (!v5)
      {
LABEL_6:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __34__DDEventsAction_performFromView___block_invoke_2;
        block[3] = &unk_278290E68;
        v10 = *(a1 + 40);
        block[4] = *(a1 + 32);
        v14 = v10;
        v15 = v3;
        v11 = v3;
        dispatch_async(MEMORY[0x277D85CD0], block);

        return;
      }

      v6 = MEMORY[0x277CBEBC0];
      v7 = [v3 absoluteString];
      v8 = [@"https://" stringByAppendingString:v7];
      v9 = [v6 URLWithString:v8];

      v4 = v7;
      v3 = v9;
    }

    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Couldn't get feature url", v12, 2u);
  }
}

@end