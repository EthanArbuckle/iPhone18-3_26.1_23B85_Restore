@interface CKFullScreenEffectManager
+ (double)delayBeforeEffectWithIdentifier:(id)identifier;
+ (double)idleDurationAfterEffectWithIdentifier:(id)identifier;
+ (id)localizedMaskStringForEffectWithIdentifier:(id)identifier;
- (CKFullScreenEffectManager)init;
- (CKFullScreenEffectManagerDelegate)delegate;
- (id)effectForIdentifier:(id)identifier;
- (id)effectIdentifiers;
- (id)fullscreenEffectMap;
- (id)localizedDisplayNameForEffectWithIdentifier:(id)identifier;
- (id)localizedPickerTitleForEffectWithIdentifier:(id)identifier;
- (void)beginHoldingUpdatesForKey:(id)key;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)endHoldingUpdatesForKey:(id)key;
- (void)fullScreenEffectDidPrepareSoundEffect:(id)effect;
- (void)startFullscreenEffectForChatItem:(id)item language:(id)language;
- (void)stopFullscreenEffect;
- (void)triggerNextEffect;
@end

@implementation CKFullScreenEffectManager

+ (id)localizedMaskStringForEffectWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"com.apple.messages.effect.CKHappyBirthdayEffect"])
  {
    v4 = @"SUMMARY_BALLOONS_MESSAGE";
LABEL_19:
    v5 = CKFrameworkBundle();
    v6 = [v5 localizedStringForKey:v4 value:&stru_1F04268F8 table:@"ChatKit"];

    goto LABEL_20;
  }

  if ([identifierCopy isEqualToString:@"com.apple.messages.effect.CKConfettiEffect"])
  {
    v4 = @"SUMMARY_CONFETTI_MESSAGE";
    goto LABEL_19;
  }

  if ([identifierCopy isEqualToString:@"com.apple.messages.effect.CKLasersEffect"])
  {
    v4 = @"SUMMARY_LASERS_MESSAGE";
    goto LABEL_19;
  }

  if ([identifierCopy isEqualToString:@"com.apple.messages.effect.CKFireworksEffect"])
  {
    v4 = @"SUMMARY_FIREWORKS_MESSAGE";
    goto LABEL_19;
  }

  if ([identifierCopy isEqualToString:@"com.apple.messages.effect.CKShootingStarEffect"])
  {
    v4 = @"SUMMARY_SHOOTING_STAR_MESSAGE";
    goto LABEL_19;
  }

  if ([identifierCopy isEqualToString:@"com.apple.messages.effect.CKSparklesEffect"])
  {
    v4 = @"SUMMARY_CELEBRATION_MESSAGE";
    goto LABEL_19;
  }

  if ([identifierCopy isEqualToString:@"com.apple.messages.effect.CKHeartEffect"])
  {
    v4 = @"SUMMARY_LOVE_MESSAGE";
    goto LABEL_19;
  }

  if ([identifierCopy isEqualToString:@"com.apple.messages.effect.CKEchoEffect"])
  {
    v4 = @"SUMMARY_ECHO_MESSAGE";
    goto LABEL_19;
  }

  if ([identifierCopy isEqualToString:@"com.apple.messages.effect.CKSpotlightEffect"])
  {
    v4 = @"SUMMARY_SPOTLIGHT_MESSAGE";
    goto LABEL_19;
  }

  v6 = 0;
LABEL_20:

  return v6;
}

- (CKFullScreenEffectManager)init
{
  v6.receiver = self;
  v6.super_class = CKFullScreenEffectManager;
  v2 = [(CKFullScreenEffectManager *)&v6 init];
  if (v2)
  {
    v3 = [[CKScheduledUpdater alloc] initWithTarget:v2 action:sel_triggerNextEffect];
    [(CKFullScreenEffectManager *)v2 setTriggerUpdater:v3];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_didReceiveMemoryWarning name:*MEMORY[0x1E69DDAD8] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(CKScheduledUpdater *)self->_triggerUpdater invalidate];
  [(NSTimer *)self->_effectDurationTimer invalidate];
  v4.receiver = self;
  v4.super_class = CKFullScreenEffectManager;
  [(CKFullScreenEffectManager *)&v4 dealloc];
}

- (void)didReceiveMemoryWarning
{
  v2 = sFullscreenEffectMap;
  sFullscreenEffectMap = 0;
}

- (id)fullscreenEffectMap
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = sFullscreenEffectMap;
  if (!sFullscreenEffectMap)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/System/Library/Messages/iMessageEffects"];
    v6 = [defaultManager enumeratorAtURL:v5 includingPropertiesForKeys:0 options:7 errorHandler:&__block_literal_global_37];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v8)
    {
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithURL:*(*(&v16 + 1) + 8 * i)];
          bundleIdentifier = [v11 bundleIdentifier];
          if (bundleIdentifier)
          {
            [v3 setObject:v11 forKey:bundleIdentifier];
          }

          else if (IMOSLoggingEnabled())
          {
            v13 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v21 = v11;
              _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Failed to get bundle identifier for %@", buf, 0xCu);
            }
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v8);
    }

    v14 = sFullscreenEffectMap;
    sFullscreenEffectMap = v3;

    v2 = sFullscreenEffectMap;
  }

  return v2;
}

uint64_t __48__CKFullScreenEffectManager_fullscreenEffectMap__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138412546;
      v9 = v4;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Couldn't enumerate %@: %@", &v8, 0x16u);
    }
  }

  return 1;
}

- (id)localizedDisplayNameForEffectWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  fullscreenEffectMap = [(CKFullScreenEffectManager *)self fullscreenEffectMap];
  v6 = [fullscreenEffectMap objectForKey:identifierCopy];

  localizedInfoDictionary = [v6 localizedInfoDictionary];
  v8 = [localizedInfoDictionary objectForKey:@"CFBundleDisplayName"];

  return v8;
}

- (id)localizedPickerTitleForEffectWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[CKUIBehavior sharedBehaviors];
  isAccessibilityPreferredContentSizeCategory = [v5 isAccessibilityPreferredContentSizeCategory];

  if (isAccessibilityPreferredContentSizeCategory)
  {
    v7 = @"AXEffectPickerTitle";
  }

  else
  {
    v7 = @"EffectPickerTitle";
  }

  fullscreenEffectMap = [(CKFullScreenEffectManager *)self fullscreenEffectMap];
  v9 = [fullscreenEffectMap objectForKey:identifierCopy];

  localizedInfoDictionary = [v9 localizedInfoDictionary];
  v11 = [localizedInfoDictionary objectForKey:v7];

  return v11;
}

- (id)effectIdentifiers
{
  v4[8] = *MEMORY[0x1E69E9840];
  v4[0] = @"com.apple.messages.effect.CKEchoEffect";
  v4[1] = @"com.apple.messages.effect.CKSpotlightEffect";
  v4[2] = @"com.apple.messages.effect.CKHappyBirthdayEffect";
  v4[3] = @"com.apple.messages.effect.CKConfettiEffect";
  v4[4] = @"com.apple.messages.effect.CKHeartEffect";
  v4[5] = @"com.apple.messages.effect.CKLasersEffect";
  v4[6] = @"com.apple.messages.effect.CKFireworksEffect";
  v4[7] = @"com.apple.messages.effect.CKSparklesEffect";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:8];

  return v2;
}

- (id)effectForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    fullscreenEffectMap = [(CKFullScreenEffectManager *)self fullscreenEffectMap];
    v6 = [fullscreenEffectMap objectForKey:identifierCopy];

    if (v6)
    {
      if (([v6 isLoaded] & 1) == 0)
      {
        [v6 load];
      }

      v7 = objc_alloc_init([v6 principalClass]);
      [v7 setIdentifier:identifierCopy];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)startFullscreenEffectForChatItem:(id)item language:(id)language
{
  v59 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  languageCopy = language;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([itemCopy supportsCommunicationSafety] && objc_msgSend(itemCopy, "isCommSafetySensitive"))
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Do not execute effects for sensitive messages", buf, 2u);
        }

LABEL_16:
      }
    }

    else
    {
      message = [itemCopy message];
      subject = [message subject];
      isStewie = [subject isStewie];

      if (isStewie)
      {
        if (IMOSLoggingEnabled())
        {
          v8 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Do not execute effects for Stewie chat", buf, 2u);
          }

          goto LABEL_16;
        }
      }

      else
      {
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        effectQueue = [(CKFullScreenEffectManager *)self effectQueue];
        v14 = [effectQueue countByEnumeratingWithState:&v50 objects:v54 count:16];
        if (v14)
        {
          v15 = *v51;
          while (2)
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v51 != v15)
              {
                objc_enumerationMutation(effectQueue);
              }

              triggeringChatItem = [*(*(&v50 + 1) + 8 * i) triggeringChatItem];
              v18 = [triggeringChatItem isEqual:itemCopy];

              if (v18)
              {

                goto LABEL_42;
              }
            }

            v14 = [effectQueue countByEnumeratingWithState:&v50 objects:v54 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __71__CKFullScreenEffectManager_startFullscreenEffectForChatItem_language___block_invoke;
        aBlock[3] = &unk_1E72EEAA0;
        v19 = itemCopy;
        v48 = v19;
        selfCopy = self;
        v20 = _Block_copy(aBlock);
        if (__CurrentTestName)
        {
          v21 = [__CurrentTestName rangeOfString:@"Transcript"];
          v23 = v22;
          v24 = [__CurrentTestName rangeOfString:@"FSM"];
          if (v23)
          {
            if (v25)
            {
              v26 = [__CurrentTestName substringWithRange:{v21 + v23, v24 - (v21 + v23)}];
              if ([(__CFString *)v26 containsString:@"Balloons"])
              {

                v26 = @"HappyBirthday";
              }

              effectIdentifiers = [(CKFullScreenEffectManager *)self effectIdentifiers];
              v44[0] = MEMORY[0x1E69E9820];
              v44[1] = 3221225472;
              v44[2] = __71__CKFullScreenEffectManager_startFullscreenEffectForChatItem_language___block_invoke_145;
              v44[3] = &unk_1E72EEAC8;
              v45 = v26;
              v46 = v19;
              v28 = v26;
              [effectIdentifiers enumerateObjectsUsingBlock:v44];
            }
          }
        }

        fullscreenEffectMap = [(CKFullScreenEffectManager *)self fullscreenEffectMap];
        message2 = [v19 message];
        expressiveSendStyleID = [message2 expressiveSendStyleID];
        v32 = [fullscreenEffectMap objectForKey:expressiveSendStyleID];
        v33 = v32 == 0;

        if (v33)
        {
          if ([MEMORY[0x1E69A8020] supportsScreenEffects])
          {
            mEMORY[0x1E69C7510] = [MEMORY[0x1E69C7510] sharedManager];
            message3 = [v19 message];
            plainBody = [message3 plainBody];
            v42[0] = MEMORY[0x1E69E9820];
            v42[1] = 3221225472;
            v42[2] = __71__CKFullScreenEffectManager_startFullscreenEffectForChatItem_language___block_invoke_149;
            v42[3] = &unk_1E72EEAF0;
            v42[4] = self;
            v43 = v20;
            [mEMORY[0x1E69C7510] responsesForMessage:plainBody maximumResponses:1 forContext:0 withLanguage:languageCopy options:576 completionBlock:v42];
          }
        }

        else if (v20)
        {
          if (IMOSLoggingEnabled())
          {
            v34 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              message4 = [v19 message];
              expressiveSendStyleID2 = [message4 expressiveSendStyleID];
              *buf = 138412290;
              v56 = expressiveSendStyleID2;
              _os_log_impl(&dword_19020E000, v34, OS_LOG_TYPE_INFO, "Starting effect for explicit identifier: %@", buf, 0xCu);
            }
          }

          message5 = [v19 message];
          expressiveSendStyleID3 = [message5 expressiveSendStyleID];
          (*(v20 + 2))(v20, expressiveSendStyleID3, 0);
        }
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v56 = "[CKFullScreenEffectManager startFullscreenEffectForChatItem:language:]";
      v57 = 2112;
      v58 = objc_opt_class();
      v9 = v58;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "%s called with non-message part chat item (type %@). Please file a bug", buf, 0x16u);
    }

    goto LABEL_16;
  }

LABEL_42:
}

void __71__CKFullScreenEffectManager_startFullscreenEffectForChatItem_language___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if ([*(a1 + 32) isFromMe])
  {
    v6 = a3 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = [MEMORY[0x1E69A8168] sharedInstance];
    [v7 trackEvent:*MEMORY[0x1E69A73E0]];
  }

  v8 = [*(a1 + 40) effectForIdentifier:v5];
  [v8 setMessageOrientation:{objc_msgSend(*(a1 + 32), "isFromMe")}];
  [v8 setTriggeredByResponseKit:a3];
  [v8 setDelegate:*(a1 + 40)];
  if (v8)
  {
    v9 = [*(a1 + 40) effectQueue];

    if (!v9)
    {
      v10 = *(a1 + 40);
      v11 = [MEMORY[0x1E695DF70] array];
      [v10 setEffectQueue:v11];
    }

    v12 = [*(a1 + 40) effectQueue];
    [v12 addObject:v8];

    [v8 setTriggeringChatItem:*(a1 + 32)];
    v13 = [*(a1 + 40) triggerUpdater];
    [v13 setNeedsUpdate];

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [*(a1 + 40) triggerUpdater];
        v16 = 138412546;
        v17 = v5;
        v18 = 2112;
        v19 = v15;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Starting effect: %@ updater: %@", &v16, 0x16u);
      }
    }
  }
}

void __71__CKFullScreenEffectManager_startFullscreenEffectForChatItem_language___block_invoke_145(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 rangeOfString:*(a1 + 32)] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [*(a1 + 40) message];
    [v6 setExpressiveSendStyleID:v7];

    *a4 = 1;
  }
}

void __71__CKFullScreenEffectManager_startFullscreenEffectForChatItem_language___block_invoke_149(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__CKFullScreenEffectManager_startFullscreenEffectForChatItem_language___block_invoke_2;
  block[3] = &unk_1E72EDA68;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __71__CKFullScreenEffectManager_startFullscreenEffectForChatItem_language___block_invoke_2(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      v2 = *(a1 + 32);
      *buf = 138412290;
      v27 = v2;
      _os_log_impl(&dword_19020E000, v1, OS_LOG_TYPE_INFO, "Starting effect for RK responses: %@", buf, 0xCu);
    }
  }

  if ([*(a1 + 32) count] == 1)
  {
    v18 = [*(a1 + 32) firstObject];
    v3 = [v18 attributes];
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v27 = v3;
        _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "RK attributes: %@", buf, 0xCu);
      }
    }

    v5 = [v3 objectForKey:@"type"];
    v6 = [v5 isEqualToString:@"moment"];

    if (v6)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v7 = [*(a1 + 40) fullscreenEffectMap];
      obj = [v7 allValues];

      v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        v9 = *v22;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v22 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v21 + 1) + 8 * i);
            v12 = [v11 infoDictionary];
            v13 = [v12 objectForKey:@"Triggers"];

            v14 = [v3 objectForKey:@"subtype"];
            v15 = [v13 containsObject:v14];

            if (v15)
            {
              v16 = *(a1 + 48);
              if (v16)
              {
                v17 = [v11 bundleIdentifier];
                (*(v16 + 16))(v16, v17, 1);
              }

              goto LABEL_23;
            }
          }

          v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

LABEL_23:
    }
  }
}

- (void)triggerNextEffect
{
  effectQueue = [(CKFullScreenEffectManager *)self effectQueue];
  v4 = [effectQueue count];

  if (v4)
  {
    effectQueue2 = [(CKFullScreenEffectManager *)self effectQueue];
    firstObject = [effectQueue2 firstObject];

    effectDurationTimer = [(CKFullScreenEffectManager *)self effectDurationTimer];
    [effectDurationTimer invalidate];

    [(CKFullScreenEffectManager *)self beginHoldingUpdatesForKey:@"CKFullscreenEffectManagerUpdatesPlaying"];
    [firstObject prepareSoundEffect];
  }
}

- (void)fullScreenEffectDidPrepareSoundEffect:(id)effect
{
  effectCopy = effect;
  [effectCopy duration];
  v5 = v4;
  if (__CurrentTestName)
  {
    identifier = [effectCopy identifier];
    [CKFullScreenEffectManager idleDurationAfterEffectWithIdentifier:identifier];
    v8 = v7;

    v5 = v5 - v8;
  }

  v9 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:self target:sel_stopFullscreenEffect selector:0 userInfo:0 repeats:v5];
  currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
  [currentRunLoop addTimer:v9 forMode:*MEMORY[0x1E695DA28]];

  [(CKFullScreenEffectManager *)self setEffectDurationTimer:v9];
  [(CKFullScreenEffectManager *)self setCurrentEffect:effectCopy];
  delegate = [(CKFullScreenEffectManager *)self delegate];
  [delegate effectManager:self didStartEffect:effectCopy];
}

- (void)stopFullscreenEffect
{
  effectDurationTimer = [(CKFullScreenEffectManager *)self effectDurationTimer];
  [effectDurationTimer invalidate];

  [(CKFullScreenEffectManager *)self setEffectDurationTimer:0];
  currentEffect = [(CKFullScreenEffectManager *)self currentEffect];
  if (currentEffect)
  {
    [(CKFullScreenEffectManager *)self setCurrentEffect:0];
    [(CKFullScreenEffectManager *)self endHoldingUpdatesForKey:@"CKFullscreenEffectManagerUpdatesPlaying"];
    delegate = [(CKFullScreenEffectManager *)self delegate];
    [delegate effectManager:self didStopEffect:currentEffect];

    effectQueue = [(CKFullScreenEffectManager *)self effectQueue];
    [effectQueue removeObject:currentEffect];
  }

  triggerUpdater = [(CKFullScreenEffectManager *)self triggerUpdater];
  [triggerUpdater setNeedsUpdate];
}

- (void)beginHoldingUpdatesForKey:(id)key
{
  keyCopy = key;
  triggerUpdater = [(CKFullScreenEffectManager *)self triggerUpdater];
  [triggerUpdater beginHoldingUpdatesForKey:keyCopy];
}

- (void)endHoldingUpdatesForKey:(id)key
{
  keyCopy = key;
  triggerUpdater = [(CKFullScreenEffectManager *)self triggerUpdater];
  [triggerUpdater endHoldingUpdatesForKey:keyCopy];
}

+ (double)delayBeforeEffectWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = 1.0;
  if (([identifierCopy isEqualToString:@"com.apple.messages.effect.CKConfettiEffect"] & 1) == 0)
  {
    if ([identifierCopy isEqualToString:@"com.apple.messages.effect.CKHappyBirthdayEffect"])
    {
      v4 = 0.15;
    }

    else
    {
      v4 = 0.0;
    }
  }

  return v4;
}

+ (double)idleDurationAfterEffectWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"com.apple.messages.effect.CKConfettiEffect"])
  {
    v4 = 0.4;
  }

  else if ([identifierCopy isEqualToString:@"com.apple.messages.effect.CKHappyBirthdayEffect"])
  {
    v4 = 0.55;
  }

  else
  {
    v4 = 0.0;
  }

  return v4;
}

- (CKFullScreenEffectManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end