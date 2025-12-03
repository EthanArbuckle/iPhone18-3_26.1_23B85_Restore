@interface FCUIFocusEnablementIndicatorBannerPresentable
+ (id)accessibilityIdentifierForActivityDescription:(id)description;
- (BNTemplateItemProviding)primaryTemplateItemProvider;
- (BNTemplateItemProviding)secondaryTemplateItemProvider;
- (BNTemplateViewProviding)leadingTemplateViewProvider;
- (BNTemplateViewProviding)trailingTemplateViewProvider;
- (FCUIFocusEnablementIndicatorBannerPresentable)initWithActivityDescription:(id)description requesterIdentifier:(id)identifier enabled:(BOOL)enabled forPreviewing:(BOOL)previewing;
- (NSString)requestIdentifier;
- (id)presentableDescription;
- (int64_t)userInterfaceStyleOverride;
- (void)_enumerateObserversRespondingToSelector:(SEL)selector usingBlock:(id)block;
- (void)addPresentableObserver:(id)observer;
- (void)handleTemplateContentEvent:(int64_t)event;
- (void)presentableDidAppearAsBanner:(id)banner;
- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)presentableWillAppearAsBanner:(id)banner;
- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)removePresentableObserver:(id)observer;
- (void)userInteractionDidEndForBannerForPresentable:(id)presentable;
- (void)userInteractionWillBeginForBannerForPresentable:(id)presentable;
@end

@implementation FCUIFocusEnablementIndicatorBannerPresentable

- (FCUIFocusEnablementIndicatorBannerPresentable)initWithActivityDescription:(id)description requesterIdentifier:(id)identifier enabled:(BOOL)enabled forPreviewing:(BOOL)previewing
{
  descriptionCopy = description;
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = FCUIFocusEnablementIndicatorBannerPresentable;
  v12 = [(FCUIFocusEnablementIndicatorBannerPresentable *)&v18 init];
  if (v12)
  {
    v13 = [descriptionCopy copyWithZone:0];
    activityDescription = v12->_activityDescription;
    v12->_activityDescription = v13;

    v15 = [identifierCopy copy];
    requesterIdentifier = v12->_requesterIdentifier;
    v12->_requesterIdentifier = v15;

    v12->_activityEnabled = enabled;
    v12->_forPreviewing = previewing;
  }

  return v12;
}

- (NSString)requestIdentifier
{
  requestIdentifier = self->_requestIdentifier;
  if (!requestIdentifier)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v6 = self->_requestIdentifier;
    self->_requestIdentifier = uUIDString;

    requestIdentifier = self->_requestIdentifier;
  }

  return requestIdentifier;
}

- (id)presentableDescription
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"activityEnabled";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:self->_activityEnabled];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = BNPresentableDescription();

  return v4;
}

- (BNTemplateViewProviding)leadingTemplateViewProvider
{
  v3 = [MEMORY[0x277D755D0] configurationWithPointSize:21.0];
  if (self->_activityEnabled)
  {
    [MEMORY[0x277D75348] fcui_colorForActivity:self->_activityDescription];
  }

  else
  {
    [MEMORY[0x277D75348] secondaryLabelColor];
  }
  v4 = ;
  v5 = MEMORY[0x277D755D0];
  v6 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v4, 0}];
  v7 = [v5 configurationWithPaletteColors:v6];
  v8 = [v3 configurationByApplyingConfiguration:v7];

  v9 = MEMORY[0x277D755B8];
  activitySymbolImageName = [(FCActivityDescribing *)self->_activityDescription activitySymbolImageName];
  v11 = [v9 _systemImageNamed:activitySymbolImageName withConfiguration:v8];

  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277CF0AD0]);
    v13 = [objc_alloc(MEMORY[0x277CF0AB0]) initWithImage:v11];
    v14 = [v12 initWithItem:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BNTemplateViewProviding)trailingTemplateViewProvider
{
  borderedButtonConfiguration = [MEMORY[0x277D75230] borderedButtonConfiguration];
  [borderedButtonConfiguration setCornerStyle:4];
  v4 = [MEMORY[0x277D755D0] configurationWithPointSize:5 weight:12.0];
  v5 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark" withConfiguration:v4];
  [borderedButtonConfiguration setImage:v5];

  v6 = [objc_alloc(MEMORY[0x277CF0AD0]) initWithItem:borderedButtonConfiguration];
  [v6 setVisualStyleCategory:2];
  [v6 setVisualStyle:1];
  [v6 setHidden:!self->_activityEnabled];
  [v6 setAccessibilityIdentifier:@"disable-focus-mode"];

  return v6;
}

- (BNTemplateItemProviding)primaryTemplateItemProvider
{
  v3 = objc_alloc(MEMORY[0x277CF0AD0]);
  activityDisplayName = [(FCActivityDescribing *)self->_activityDescription activityDisplayName];
  v5 = [v3 initWithItem:activityDisplayName];

  return v5;
}

- (BNTemplateItemProviding)secondaryTemplateItemProvider
{
  activityEnabled = self->_activityEnabled;
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (activityEnabled)
  {
    v5 = @"FLANKING_BANNER_ON";
  }

  else
  {
    v5 = @"FLANKING_BANNER_OFF";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_285ECE868 table:0];

  v7 = [objc_alloc(MEMORY[0x277CF0AD0]) initWithItem:v6];

  return v7;
}

- (int64_t)userInterfaceStyleOverride
{
  if (self->_forPreviewing)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (void)handleTemplateContentEvent:(int64_t)event
{
  if (event == 2 && self->_activityEnabled)
  {
    mEMORY[0x277D0A9E8] = [MEMORY[0x277D0A9E8] sharedActivityManager];
    [mEMORY[0x277D0A9E8] setActivity:self->_activityDescription active:0 withLifetime:0 reason:@"banner deactivation button tapped"];
  }
}

+ (id)accessibilityIdentifierForActivityDescription:(id)description
{
  v3 = MEMORY[0x277CCACA8];
  activityDisplayName = [description activityDisplayName];
  v5 = [v3 stringWithFormat:@"focus-mode-notice-%@", activityDisplayName];

  return v5;
}

- (void)presentableWillAppearAsBanner:(id)banner
{
  bannerCopy = banner;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__FCUIFocusEnablementIndicatorBannerPresentable_presentableWillAppearAsBanner___block_invoke;
  v6[3] = &unk_27901A5F8;
  v7 = bannerCopy;
  v5 = bannerCopy;
  [(FCUIFocusEnablementIndicatorBannerPresentable *)self _enumerateObserversRespondingToSelector:sel_presentableWillAppearAsBanner_ usingBlock:v6];
}

- (void)presentableDidAppearAsBanner:(id)banner
{
  bannerCopy = banner;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__FCUIFocusEnablementIndicatorBannerPresentable_presentableDidAppearAsBanner___block_invoke;
  v6[3] = &unk_27901A5F8;
  v7 = bannerCopy;
  v5 = bannerCopy;
  [(FCUIFocusEnablementIndicatorBannerPresentable *)self _enumerateObserversRespondingToSelector:sel_presentableDidAppearAsBanner_ usingBlock:v6];
}

- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason
{
  bannerCopy = banner;
  reasonCopy = reason;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __93__FCUIFocusEnablementIndicatorBannerPresentable_presentableWillDisappearAsBanner_withReason___block_invoke;
  v10[3] = &unk_27901A620;
  v11 = bannerCopy;
  v12 = reasonCopy;
  v8 = reasonCopy;
  v9 = bannerCopy;
  [(FCUIFocusEnablementIndicatorBannerPresentable *)self _enumerateObserversRespondingToSelector:sel_presentableWillDisappearAsBanner_withReason_ usingBlock:v10];
}

- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason
{
  bannerCopy = banner;
  reasonCopy = reason;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __92__FCUIFocusEnablementIndicatorBannerPresentable_presentableDidDisappearAsBanner_withReason___block_invoke;
  v10[3] = &unk_27901A620;
  v11 = bannerCopy;
  v12 = reasonCopy;
  v8 = reasonCopy;
  v9 = bannerCopy;
  [(FCUIFocusEnablementIndicatorBannerPresentable *)self _enumerateObserversRespondingToSelector:sel_presentableDidDisappearAsBanner_withReason_ usingBlock:v10];
}

- (void)userInteractionWillBeginForBannerForPresentable:(id)presentable
{
  presentableCopy = presentable;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __97__FCUIFocusEnablementIndicatorBannerPresentable_userInteractionWillBeginForBannerForPresentable___block_invoke;
  v6[3] = &unk_27901A5F8;
  v7 = presentableCopy;
  v5 = presentableCopy;
  [(FCUIFocusEnablementIndicatorBannerPresentable *)self _enumerateObserversRespondingToSelector:sel_userInteractionWillBeginForBannerForPresentable_ usingBlock:v6];
}

- (void)userInteractionDidEndForBannerForPresentable:(id)presentable
{
  presentableCopy = presentable;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __94__FCUIFocusEnablementIndicatorBannerPresentable_userInteractionDidEndForBannerForPresentable___block_invoke;
  v6[3] = &unk_27901A5F8;
  v7 = presentableCopy;
  v5 = presentableCopy;
  [(FCUIFocusEnablementIndicatorBannerPresentable *)self _enumerateObserversRespondingToSelector:sel_userInteractionDidEndForBannerForPresentable_ usingBlock:v6];
}

- (void)addPresentableObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    observers = self->_observers;
    v8 = observerCopy;
    if (!observers)
    {
      v6 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
      v7 = self->_observers;
      self->_observers = v6;

      observers = self->_observers;
    }

    [(NSHashTable *)observers addObject:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)removePresentableObserver:(id)observer
{
  if (observer)
  {
    observers = self->_observers;
    if (observers)
    {
      [(NSHashTable *)observers removeObject:?];
    }
  }
}

- (void)_enumerateObserversRespondingToSelector:(SEL)selector usingBlock:(id)block
{
  v17 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy && [(NSHashTable *)self->_observers count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(NSHashTable *)self->_observers copy];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            blockCopy[2](blockCopy, v11);
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

@end