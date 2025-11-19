@interface FCUIFocusEnablementIndicatorBannerPresentable
+ (id)accessibilityIdentifierForActivityDescription:(id)a3;
- (BNTemplateItemProviding)primaryTemplateItemProvider;
- (BNTemplateItemProviding)secondaryTemplateItemProvider;
- (BNTemplateViewProviding)leadingTemplateViewProvider;
- (BNTemplateViewProviding)trailingTemplateViewProvider;
- (FCUIFocusEnablementIndicatorBannerPresentable)initWithActivityDescription:(id)a3 requesterIdentifier:(id)a4 enabled:(BOOL)a5 forPreviewing:(BOOL)a6;
- (NSString)requestIdentifier;
- (id)presentableDescription;
- (int64_t)userInterfaceStyleOverride;
- (void)_enumerateObserversRespondingToSelector:(SEL)a3 usingBlock:(id)a4;
- (void)addPresentableObserver:(id)a3;
- (void)handleTemplateContentEvent:(int64_t)a3;
- (void)presentableDidAppearAsBanner:(id)a3;
- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4;
- (void)presentableWillAppearAsBanner:(id)a3;
- (void)presentableWillDisappearAsBanner:(id)a3 withReason:(id)a4;
- (void)removePresentableObserver:(id)a3;
- (void)userInteractionDidEndForBannerForPresentable:(id)a3;
- (void)userInteractionWillBeginForBannerForPresentable:(id)a3;
@end

@implementation FCUIFocusEnablementIndicatorBannerPresentable

- (FCUIFocusEnablementIndicatorBannerPresentable)initWithActivityDescription:(id)a3 requesterIdentifier:(id)a4 enabled:(BOOL)a5 forPreviewing:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v18.receiver = self;
  v18.super_class = FCUIFocusEnablementIndicatorBannerPresentable;
  v12 = [(FCUIFocusEnablementIndicatorBannerPresentable *)&v18 init];
  if (v12)
  {
    v13 = [v10 copyWithZone:0];
    activityDescription = v12->_activityDescription;
    v12->_activityDescription = v13;

    v15 = [v11 copy];
    requesterIdentifier = v12->_requesterIdentifier;
    v12->_requesterIdentifier = v15;

    v12->_activityEnabled = a5;
    v12->_forPreviewing = a6;
  }

  return v12;
}

- (NSString)requestIdentifier
{
  requestIdentifier = self->_requestIdentifier;
  if (!requestIdentifier)
  {
    v4 = [MEMORY[0x277CCAD78] UUID];
    v5 = [v4 UUIDString];
    v6 = self->_requestIdentifier;
    self->_requestIdentifier = v5;

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
  v10 = [(FCActivityDescribing *)self->_activityDescription activitySymbolImageName];
  v11 = [v9 _systemImageNamed:v10 withConfiguration:v8];

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
  v3 = [MEMORY[0x277D75230] borderedButtonConfiguration];
  [v3 setCornerStyle:4];
  v4 = [MEMORY[0x277D755D0] configurationWithPointSize:5 weight:12.0];
  v5 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark" withConfiguration:v4];
  [v3 setImage:v5];

  v6 = [objc_alloc(MEMORY[0x277CF0AD0]) initWithItem:v3];
  [v6 setVisualStyleCategory:2];
  [v6 setVisualStyle:1];
  [v6 setHidden:!self->_activityEnabled];
  [v6 setAccessibilityIdentifier:@"disable-focus-mode"];

  return v6;
}

- (BNTemplateItemProviding)primaryTemplateItemProvider
{
  v3 = objc_alloc(MEMORY[0x277CF0AD0]);
  v4 = [(FCActivityDescribing *)self->_activityDescription activityDisplayName];
  v5 = [v3 initWithItem:v4];

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

- (void)handleTemplateContentEvent:(int64_t)a3
{
  if (a3 == 2 && self->_activityEnabled)
  {
    v4 = [MEMORY[0x277D0A9E8] sharedActivityManager];
    [v4 setActivity:self->_activityDescription active:0 withLifetime:0 reason:@"banner deactivation button tapped"];
  }
}

+ (id)accessibilityIdentifierForActivityDescription:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [a3 activityDisplayName];
  v5 = [v3 stringWithFormat:@"focus-mode-notice-%@", v4];

  return v5;
}

- (void)presentableWillAppearAsBanner:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__FCUIFocusEnablementIndicatorBannerPresentable_presentableWillAppearAsBanner___block_invoke;
  v6[3] = &unk_27901A5F8;
  v7 = v4;
  v5 = v4;
  [(FCUIFocusEnablementIndicatorBannerPresentable *)self _enumerateObserversRespondingToSelector:sel_presentableWillAppearAsBanner_ usingBlock:v6];
}

- (void)presentableDidAppearAsBanner:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__FCUIFocusEnablementIndicatorBannerPresentable_presentableDidAppearAsBanner___block_invoke;
  v6[3] = &unk_27901A5F8;
  v7 = v4;
  v5 = v4;
  [(FCUIFocusEnablementIndicatorBannerPresentable *)self _enumerateObserversRespondingToSelector:sel_presentableDidAppearAsBanner_ usingBlock:v6];
}

- (void)presentableWillDisappearAsBanner:(id)a3 withReason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __93__FCUIFocusEnablementIndicatorBannerPresentable_presentableWillDisappearAsBanner_withReason___block_invoke;
  v10[3] = &unk_27901A620;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(FCUIFocusEnablementIndicatorBannerPresentable *)self _enumerateObserversRespondingToSelector:sel_presentableWillDisappearAsBanner_withReason_ usingBlock:v10];
}

- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __92__FCUIFocusEnablementIndicatorBannerPresentable_presentableDidDisappearAsBanner_withReason___block_invoke;
  v10[3] = &unk_27901A620;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(FCUIFocusEnablementIndicatorBannerPresentable *)self _enumerateObserversRespondingToSelector:sel_presentableDidDisappearAsBanner_withReason_ usingBlock:v10];
}

- (void)userInteractionWillBeginForBannerForPresentable:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __97__FCUIFocusEnablementIndicatorBannerPresentable_userInteractionWillBeginForBannerForPresentable___block_invoke;
  v6[3] = &unk_27901A5F8;
  v7 = v4;
  v5 = v4;
  [(FCUIFocusEnablementIndicatorBannerPresentable *)self _enumerateObserversRespondingToSelector:sel_userInteractionWillBeginForBannerForPresentable_ usingBlock:v6];
}

- (void)userInteractionDidEndForBannerForPresentable:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __94__FCUIFocusEnablementIndicatorBannerPresentable_userInteractionDidEndForBannerForPresentable___block_invoke;
  v6[3] = &unk_27901A5F8;
  v7 = v4;
  v5 = v4;
  [(FCUIFocusEnablementIndicatorBannerPresentable *)self _enumerateObserversRespondingToSelector:sel_userInteractionDidEndForBannerForPresentable_ usingBlock:v6];
}

- (void)addPresentableObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    observers = self->_observers;
    v8 = v4;
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

- (void)removePresentableObserver:(id)a3
{
  if (a3)
  {
    observers = self->_observers;
    if (observers)
    {
      [(NSHashTable *)observers removeObject:?];
    }
  }
}

- (void)_enumerateObserversRespondingToSelector:(SEL)a3 usingBlock:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (v5 && [(NSHashTable *)self->_observers count])
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
            v5[2](v5, v11);
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