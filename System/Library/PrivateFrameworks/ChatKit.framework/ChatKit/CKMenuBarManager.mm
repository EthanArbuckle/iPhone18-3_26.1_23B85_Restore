@interface CKMenuBarManager
+ (id)sharedInstance;
- (NSArray)filterCommands;
- (id)_keyCommandForInboxCellData:(id)data input:(id)input shouldShowIcon:(BOOL)icon;
- (id)allKeyboardShortcutKeyCommands;
- (id)generateFilterMenuHideSettings:(BOOL)settings;
- (id)keyForInboxCellDataFilterMode:(unint64_t)mode;
- (id)menuPhoneCall;
- (void)_buildConversationMenuWithBuilder:(id)builder;
- (void)_buildDebugMenuWithBuilder:(id)builder;
- (void)_buildEditMenuWithBuilder:(id)builder;
- (void)_buildFileMenuWithBuilder:(id)builder;
- (void)_buildFormatMenuWithBuilder:(id)builder;
- (void)_buildViewMenuWithBuilder:(id)builder;
- (void)_buildWindowMenuWithBuilder:(id)builder;
- (void)buildMenuWithBuilder:(id)builder;
- (void)deferredImageSetupForFilterCommands;
- (void)deferredSetupForTextStyleCommands;
@end

@implementation CKMenuBarManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[CKMenuBarManager sharedInstance];
  }

  v3 = sharedInstance_sInstance;

  return v3;
}

void __34__CKMenuBarManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CKMenuBarManager);
  v1 = sharedInstance_sInstance;
  sharedInstance_sInstance = v0;
}

- (id)allKeyboardShortcutKeyCommands
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:NSSelectorFromString(&cfstr_Escbuttonpress.isa)];
  [array addObject:v4];

  v5 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"]" modifierFlags:0x100000 action:NSSelectorFromString(&cfstr_Keycommandnext.isa)];
  [array addObject:v5];

  v6 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"[" modifierFlags:0x100000 action:NSSelectorFromString(&cfstr_Keycommandprev.isa)];
  [array addObject:v6];

  v7 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"}" modifierFlags:0x100000 action:NSSelectorFromString(&cfstr_Keycommandnext.isa)];
  [array addObject:v7];

  v8 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"{" modifierFlags:0x100000 action:NSSelectorFromString(&cfstr_Keycommandprev.isa)];
  [array addObject:v8];

  v9 = +[CKUIBehavior sharedBehaviors];
  maximumNumberOfPinnedConversations = [v9 maximumNumberOfPinnedConversations];

  if (maximumNumberOfPinnedConversations)
  {
    if (maximumNumberOfPinnedConversations >= 9)
    {
      v11 = 9;
    }

    else
    {
      v11 = maximumNumberOfPinnedConversations;
    }

    v12 = 1;
    do
    {
      v13 = MEMORY[0x1E69DCBA0];
      v14 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
      stringValue = [v14 stringValue];
      v16 = [v13 keyCommandWithInput:stringValue modifierFlags:0x100000 action:NSSelectorFromString(&cfstr_Keycommandsele.isa)];
      [array addObject:v16];

      ++v12;
      --v11;
    }

    while (v11);
  }

  v17 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"1" modifierFlags:1179648 action:NSSelectorFromString(&cfstr_Keycommandsele_0.isa)];
  [array addObject:v17];

  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (isInternalInstall)
  {
    v20 = [MEMORY[0x1E69DCBA0] ck_debugMenuWithAction:NSSelectorFromString(&cfstr_Showdebugmenu.isa)];
    if (v20)
    {
      [array addObject:v20];
    }
  }

  if ((_CKUIEnhancedMainMenuEnabled() & 1) == 0)
  {
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isModernFilteringEnabled = [mEMORY[0x1E69A8070] isModernFilteringEnabled];

    if ((isModernFilteringEnabled & 1) == 0)
    {
      filterCommands = [(CKMenuBarManager *)self filterCommands];
      [array addObjectsFromArray:filterCommands];
    }

    v24 = MEMORY[0x1E69DCBA0];
    v25 = NSSelectorFromString(&cfstr_Keycommandcomp.isa);
    v26 = CKFrameworkBundle();
    v27 = [v26 localizedStringForKey:@"NEW_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
    v28 = [v24 keyCommandWithInput:@"N" modifierFlags:0x100000 action:v25 upAction:0 discoverabilityTitle:v27];
    [array addObject:v28];

    mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedInstance];
    LODWORD(v25) = [mEMORY[0x1E69A8070]2 isExpressiveTextEnabled];

    if (v25)
    {
      v30 = 1572864;
    }

    else
    {
      v30 = 0x100000;
    }

    v31 = MEMORY[0x1E69DCBA0];
    v32 = NSSelectorFromString(&cfstr_Keycommandtogg.isa);
    v33 = CKFrameworkBundle();
    v34 = [v33 localizedStringForKey:@"SHOW_DETAILS" value:&stru_1F04268F8 table:@"ChatKit"];
    v35 = [v31 keyCommandWithInput:@"I" modifierFlags:v30 action:v32 upAction:0 discoverabilityTitle:v34];
    [array addObject:v35];

    v36 = MEMORY[0x1E69DCBA0];
    v37 = NSSelectorFromString(&cfstr_Keycommandfind.isa);
    v38 = CKFrameworkBundle();
    v39 = [v38 localizedStringForKey:@"FIND_ELLIPSIS" value:&stru_1F04268F8 table:@"ChatKit"];
    v40 = [v36 keyCommandWithInput:@"F" modifierFlags:0x100000 action:v37 upAction:0 discoverabilityTitle:v39];
    [array addObject:v40];

    v41 = MEMORY[0x1E69DCBA0];
    v42 = NSSelectorFromString(&cfstr_Keycommandnext.isa);
    v43 = CKFrameworkBundle();
    v44 = [v43 localizedStringForKey:@"NEXT_CONVERSATION" value:&stru_1F04268F8 table:@"ChatKit"];
    v45 = [v41 keyCommandWithInput:@"\t" modifierFlags:0x40000 action:v42 upAction:0 discoverabilityTitle:v44];

    [v45 setWantsPriorityOverSystemBehavior:1];
    [array addObject:v45];
    v46 = MEMORY[0x1E69DCBA0];
    v47 = NSSelectorFromString(&cfstr_Keycommandprev.isa);
    v48 = CKFrameworkBundle();
    v49 = [v48 localizedStringForKey:@"PREVIOUS_CONVERSATION" value:&stru_1F04268F8 table:@"ChatKit"];
    v50 = [v46 keyCommandWithInput:@"\t" modifierFlags:393216 action:v47 upAction:0 discoverabilityTitle:v49];

    [v50 setWantsPriorityOverSystemBehavior:1];
    [array addObject:v50];
    mEMORY[0x1E69A8070]3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    LODWORD(v46) = [mEMORY[0x1E69A8070]3 isExpressiveTextEnabled];

    if (v46)
    {
      v52 = [CKTextEffectsMenuFactory effectKeyCommandsWithAction:NSSelectorFromString(&cfstr_Keycommandappl.isa)];
      [array addObjectsFromArray:v52];
      v53 = [CKTextEffectsMenuFactory textStyleKeyCommandsWithAction:NSSelectorFromString(&cfstr_Keycommandappl_0.isa) configureImages:0 configureAttributedTitles:0 activeTextStyles:0 selectedText:&stru_1F04268F8];
      [array addObjectsFromArray:v53];
    }
  }

  return array;
}

- (void)deferredImageSetupForFilterCommands
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernFilteringEnabled = [mEMORY[0x1E69A8070] isModernFilteringEnabled];

  if (isModernFilteringEnabled)
  {
    [(CKMenuBarManager *)self setShouldGenerateFilters:1];
    mainSystem = [MEMORY[0x1E69DCC88] mainSystem];
    [mainSystem setNeedsRebuild];
  }

  else
  {
    filterImagesByFilterMode = [(CKMenuBarManager *)self filterImagesByFilterMode];

    if (filterImagesByFilterMode)
    {
      return;
    }

    mainSystem = objc_opt_new();
    v6 = +[CKInboxCellData allMessagesCellData];
    v7 = -[CKMenuBarManager keyForInboxCellDataFilterMode:](self, "keyForInboxCellDataFilterMode:", [v6 filterMode]);

    v8 = +[CKInboxCellData allMessagesCellData];
    image = [v8 image];
    [mainSystem setObject:image forKey:v7];

    v10 = +[CKInboxCellData knownSendersCellData];
    v11 = -[CKMenuBarManager keyForInboxCellDataFilterMode:](self, "keyForInboxCellDataFilterMode:", [v10 filterMode]);

    v12 = +[CKInboxCellData knownSendersCellData];
    image2 = [v12 image];
    [mainSystem setObject:image2 forKey:v11];

    v14 = +[CKInboxCellData unknownSendersCellData];
    v15 = -[CKMenuBarManager keyForInboxCellDataFilterMode:](self, "keyForInboxCellDataFilterMode:", [v14 filterMode]);

    v16 = +[CKInboxCellData unknownSendersCellData];
    image3 = [v16 image];
    [mainSystem setObject:image3 forKey:v15];

    v18 = +[CKInboxCellData unreadMessagesCellData];
    v19 = -[CKMenuBarManager keyForInboxCellDataFilterMode:](self, "keyForInboxCellDataFilterMode:", [v18 filterMode]);

    v20 = +[CKInboxCellData unreadMessagesCellData];
    image4 = [v20 image];
    [mainSystem setObject:image4 forKey:v19];

    v22 = +[CKInboxCellData oscarCellData];
    v23 = -[CKMenuBarManager keyForInboxCellDataFilterMode:](self, "keyForInboxCellDataFilterMode:", [v22 filterMode]);

    v24 = +[CKInboxCellData oscarCellData];
    image5 = [v24 image];
    [mainSystem setObject:image5 forKey:v23];

    v26 = +[CKInboxCellData recentlyDeletedCellData];
    v27 = -[CKMenuBarManager keyForInboxCellDataFilterMode:](self, "keyForInboxCellDataFilterMode:", [v26 filterMode]);

    v28 = +[CKInboxCellData recentlyDeletedCellData];
    image6 = [v28 image];
    [mainSystem setObject:image6 forKey:v27];

    [(CKMenuBarManager *)self setFilterImagesByFilterMode:mainSystem];
    self->_shouldForceFilterImageReload = 1;
    mainSystem2 = [MEMORY[0x1E69DCC88] mainSystem];
    [mainSystem2 setNeedsRebuild];
  }
}

- (void)deferredSetupForTextStyleCommands
{
  self->_shouldConfigureAttributedTextStyleTitles = 1;
  mainSystem = [MEMORY[0x1E69DCC88] mainSystem];
  [mainSystem setNeedsRebuild];
}

- (void)_buildFileMenuWithBuilder:(id)builder
{
  builderCopy = builder;
  [builderCopy removeMenuForIdentifier:*MEMORY[0x1E69DE158]];
  [builderCopy removeMenuForIdentifier:*MEMORY[0x1E69DE178]];
  [builderCopy removeMenuForIdentifier:*MEMORY[0x1E69DE0F0]];
  [builderCopy removeMenuForIdentifier:*MEMORY[0x1E69DE160]];
  [builderCopy removeMenuForIdentifier:*MEMORY[0x1E69DE168]];
  v5 = *MEMORY[0x1E69DE0D8];
  v6 = [builderCopy menuForIdentifier:*MEMORY[0x1E69DE0D8]];
  if (v6)
  {
    v7 = v6;
    children = [v6 children];
    v9 = [children mutableCopy];

    v10 = MEMORY[0x1E69DC8B0];
    v11 = CKFrameworkBundle();
    v12 = [v11 localizedStringForKey:@"OPEN_CONVERSATION_IN_NEW_WINDOW" value:&stru_1F04268F8 table:@"ChatKit"];
    v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"rectangle.badge.plus"];
    v14 = [v10 commandWithTitle:v12 image:v13 action:NSSelectorFromString(&cfstr_Keycommandopen.isa) propertyList:0];
    [v9 addObject:v14];

    v15 = [v7 menuByReplacingChildren:v9];

    [builderCopy replaceMenuForIdentifier:v5 withMenu:v15];
  }

  v16 = *MEMORY[0x1E69DE100];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __46__CKMenuBarManager__buildFileMenuWithBuilder___block_invoke;
  v17[3] = &unk_1E72ECD60;
  v17[4] = self;
  [builderCopy replaceChildrenOfMenuForIdentifier:v16 fromChildrenBlock:v17];
}

id __46__CKMenuBarManager__buildFileMenuWithBuilder___block_invoke(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = [a2 mutableCopy];
  v4 = MEMORY[0x1E69DCBA0];
  v5 = CKFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"NEW_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
  v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.pencil"];
  v8 = [v4 commandWithTitle:v6 image:v7 action:NSSelectorFromString(&cfstr_Keycommandcomp.isa) input:@"N" modifierFlags:0x100000 propertyList:0];

  [v3 insertObject:v8 atIndex:0];
  v9 = *(a1 + 32);
  v10 = MEMORY[0x1E69DCBA0];
  v11 = CKFrameworkBundle();
  v12 = [v11 localizedStringForKey:@"PRINT" value:&stru_1F04268F8 table:@"ChatKit"];
  v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"printer"];
  v14 = [v10 commandWithTitle:v12 image:v13 action:NSSelectorFromString(&cfstr_Keycommandprin.isa) input:@"P" modifierFlags:0x100000 propertyList:0];
  v18[0] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v16 = [v9 _inlineMenuWithChildren:v15];
  [v3 addObject:v16];

  return v3;
}

- (void)_buildEditMenuWithBuilder:(id)builder
{
  v4 = *MEMORY[0x1E69DE220];
  builderCopy = builder;
  [builderCopy removeMenuForIdentifier:v4];
  [builderCopy replaceChildrenOfMenuForIdentifier:*MEMORY[0x1E69DE108] fromChildrenBlock:&__block_literal_global_324_0];
  v6 = *MEMORY[0x1E69DE0F8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__CKMenuBarManager__buildEditMenuWithBuilder___block_invoke_2;
  v7[3] = &unk_1E72ECD60;
  v7[4] = self;
  [builderCopy replaceChildrenOfMenuForIdentifier:v6 fromChildrenBlock:v7];
}

id __46__CKMenuBarManager__buildEditMenuWithBuilder___block_invoke()
{
  v14[3] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E69DCBA0];
  v13 = CKFrameworkBundle();
  v1 = [v13 localizedStringForKey:@"FIND_ELLIPSIS" value:&stru_1F04268F8 table:@"ChatKit"];
  v2 = [v0 commandWithTitle:v1 image:0 action:NSSelectorFromString(&cfstr_Find.isa) input:@"F" modifierFlags:0x100000 propertyList:0];
  v14[0] = v2;
  v3 = MEMORY[0x1E69DCBA0];
  v4 = CKFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"FIND_NEXT" value:&stru_1F04268F8 table:@"ChatKit"];
  v6 = [v3 commandWithTitle:v5 image:0 action:NSSelectorFromString(&cfstr_Findnext.isa) input:@"G" modifierFlags:0x100000 propertyList:0];
  v14[1] = v6;
  v7 = MEMORY[0x1E69DCBA0];
  v8 = CKFrameworkBundle();
  v9 = [v8 localizedStringForKey:@"FIND_PREVIOUS" value:&stru_1F04268F8 table:@"ChatKit"];
  v10 = [v7 commandWithTitle:v9 image:0 action:NSSelectorFromString(&cfstr_Findprevious.isa) input:@"G" modifierFlags:1179648 propertyList:0];
  v14[2] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];

  return v11;
}

id __46__CKMenuBarManager__buildEditMenuWithBuilder___block_invoke_2(uint64_t a1, void *a2)
{
  v35[1] = *MEMORY[0x1E69E9840];
  v32 = [a2 mutableCopy];
  v2 = MEMORY[0x1E69DCBA0];
  v3 = CKFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"SEND_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up.circle.fill"];
  v31 = [v2 commandWithTitle:v4 image:v5 action:NSSelectorFromString(&cfstr_Keycommandsend.isa) input:@"\r" modifierFlags:0x100000 propertyList:0];

  v6 = MEMORY[0x1E69DC8B8];
  v7 = CKFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"REPLY_TO_REPLY" value:&stru_1F04268F8 table:@"ChatKit"];
  v30 = [v6 alternateWithTitle:v8 action:NSSelectorFromString(&cfstr_Keycommandrepl.isa) modifierFlags:0x20000];

  v9 = MEMORY[0x1E69DCBA0];
  v10 = CKFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"REPLY_TO_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
  v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrowshape.turn.up.left"];
  v13 = NSSelectorFromString(&cfstr_Keycommandrepl_0.isa);
  v35[0] = v30;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
  v15 = [v9 commandWithTitle:v11 image:v12 action:v13 input:@"R" modifierFlags:0x100000 propertyList:0 alternates:v14];

  v16 = MEMORY[0x1E69DCBA0];
  v17 = CKFrameworkBundle();
  v18 = [v17 localizedStringForKey:@"TAPBACK_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
  v19 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"plus.bubble.tapback"];
  v20 = [v16 commandWithTitle:v18 image:v19 action:NSSelectorFromString(&cfstr_Keycommandtapb.isa) input:@"T" modifierFlags:0x100000 propertyList:0];

  v21 = MEMORY[0x1E69DCBA0];
  v22 = CKFrameworkBundle();
  v23 = [v22 localizedStringForKey:@"EDIT_LAST_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
  v24 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"pencil"];
  v25 = [v21 commandWithTitle:v23 image:v24 action:NSSelectorFromString(&cfstr_Keycommandedit.isa) input:@"E" modifierFlags:0x100000 propertyList:0];

  v26 = *(a1 + 32);
  v34[0] = v31;
  v34[1] = v15;
  v34[2] = v20;
  v34[3] = v25;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:4];
  v28 = [v26 _inlineMenuWithChildren:v27];
  [v32 addObject:v28];

  return v32;
}

- (void)_buildWindowMenuWithBuilder:(id)builder
{
  v4 = *MEMORY[0x1E69DE238];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__CKMenuBarManager__buildWindowMenuWithBuilder___block_invoke;
  v5[3] = &unk_1E72ECD60;
  v5[4] = self;
  [builder replaceChildrenOfMenuForIdentifier:v4 fromChildrenBlock:v5];
}

id __48__CKMenuBarManager__buildWindowMenuWithBuilder___block_invoke(uint64_t a1, void *a2)
{
  v27[2] = *MEMORY[0x1E69E9840];
  v25 = [a2 mutableCopy];
  v3 = MEMORY[0x1E69DCBA0];
  v4 = CKFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"NEXT_CONVERSATION" value:&stru_1F04268F8 table:@"ChatKit"];
  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.forward"];
  v7 = [v3 commandWithTitle:v5 image:v6 action:NSSelectorFromString(&cfstr_Keycommandnext.isa) input:@"\t" modifierFlags:0x40000 propertyList:0];

  [v7 setWantsPriorityOverSystemBehavior:1];
  v8 = MEMORY[0x1E69DCBA0];
  v9 = CKFrameworkBundle();
  v10 = [v9 localizedStringForKey:@"PREVIOUS_CONVERSATION" value:&stru_1F04268F8 table:@"ChatKit"];
  v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.backward"];
  v12 = [v8 commandWithTitle:v10 image:v11 action:NSSelectorFromString(&cfstr_Keycommandprev.isa) input:@"\t" modifierFlags:393216 propertyList:0];

  [v12 setWantsPriorityOverSystemBehavior:1];
  v13 = *(a1 + 32);
  v27[0] = v7;
  v27[1] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v15 = [v13 _inlineMenuWithChildren:v14];
  [v25 addObject:v15];

  v16 = *(a1 + 32);
  v17 = MEMORY[0x1E69DCBA0];
  v18 = CKFrameworkBundle();
  v19 = [v18 localizedStringForKey:@"MESSAGES_WINDOW" value:&stru_1F04268F8 table:@"ChatKit"];
  v20 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"message"];
  v21 = [v17 commandWithTitle:v19 image:v20 action:NSSelectorFromString(&cfstr_Showmainmessag.isa) input:@"0" modifierFlags:0x100000 propertyList:0];
  v26 = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  v23 = [v16 _inlineMenuWithChildren:v22];
  [v25 addObject:v23];

  return v25;
}

- (void)_buildViewMenuWithBuilder:(id)builder
{
  v4 = *MEMORY[0x1E69DE218];
  builderCopy = builder;
  [builderCopy removeMenuForIdentifier:v4];
  [builderCopy removeMenuForIdentifier:*MEMORY[0x1E69DE1A8]];
  v6 = *MEMORY[0x1E69DE230];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__CKMenuBarManager__buildViewMenuWithBuilder___block_invoke;
  v7[3] = &unk_1E72ECD60;
  v7[4] = self;
  [builderCopy replaceChildrenOfMenuForIdentifier:v6 fromChildrenBlock:v7];
}

id __46__CKMenuBarManager__buildViewMenuWithBuilder___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = [MEMORY[0x1E69DC8B0] ck_toggleTimeStampWithAction:NSSelectorFromString(&cfstr_Keycommandtogg_0.isa)];
  [v3 insertObject:v4 atIndex:1];
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isModernFilteringEnabled];

  v7 = *(a1 + 32);
  if (v6)
  {
    if ([*(a1 + 32) shouldGenerateFilters])
    {
      v8 = [*(a1 + 32) generateFilterMenuHideSettings:1];
      v9 = [v8 children];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __46__CKMenuBarManager__buildViewMenuWithBuilder___block_invoke_2;
      v13[3] = &unk_1E72ECDA8;
      v14 = v3;
      v15 = 2;
      [v9 enumerateObjectsUsingBlock:v13];
    }
  }

  else
  {
    v10 = [*(a1 + 32) filterCommands];
    v11 = [v7 _inlineMenuWithChildren:v10];

    [v3 insertObject:v11 atIndex:2];
  }

  return v3;
}

- (NSArray)filterCommands
{
  v24[4] = *MEMORY[0x1E69E9840];
  if (self->_shouldForceFilterImageReload || (v3 = self->_filterCommands) == 0)
  {
    filterImagesByFilterMode = [(CKMenuBarManager *)self filterImagesByFilterMode];
    v5 = [filterImagesByFilterMode count];
    v6 = v5 != 0;

    v7 = +[CKInboxCellData allMessagesCellData];
    v8 = [(CKMenuBarManager *)self _keyCommandForInboxCellData:v7 input:@"1" shouldShowIcon:v6];

    v9 = +[CKInboxCellData knownSendersCellData];
    v10 = [(CKMenuBarManager *)self _keyCommandForInboxCellData:v9 input:@"2" shouldShowIcon:v6];

    v11 = +[CKInboxCellData unknownSendersCellData];
    v12 = [(CKMenuBarManager *)self _keyCommandForInboxCellData:v11 input:@"3" shouldShowIcon:v6];

    v13 = +[CKInboxCellData unreadMessagesCellData];
    v14 = [(CKMenuBarManager *)self _keyCommandForInboxCellData:v13 input:@"4" shouldShowIcon:v6];

    v24[0] = v8;
    v24[1] = v10;
    v24[2] = v12;
    v24[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
    v16 = [v15 mutableCopy];

    if (IMIsOscarEnabled())
    {
      v17 = +[CKInboxCellData oscarCellData];
      v18 = [(CKMenuBarManager *)self _keyCommandForInboxCellData:v17 input:@"5" shouldShowIcon:v5 != 0];

      [(NSArray *)v16 addObject:v18];
      v19 = @"6";
    }

    else
    {
      v19 = @"5";
    }

    v20 = +[CKInboxCellData recentlyDeletedCellData];
    v21 = [(CKMenuBarManager *)self _keyCommandForInboxCellData:v20 input:v19 shouldShowIcon:v5 != 0];

    [(NSArray *)v16 addObject:v21];
    filterCommands = self->_filterCommands;
    self->_filterCommands = v16;

    self->_shouldForceFilterImageReload = 0;
    v3 = self->_filterCommands;
  }

  return v3;
}

- (id)_keyCommandForInboxCellData:(id)data input:(id)input shouldShowIcon:(BOOL)icon
{
  iconCopy = icon;
  dataCopy = data;
  inputCopy = input;
  if (iconCopy)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(dataCopy, "filterMode")}];
    v12 = [v10 stringWithFormat:@"%@", v11];

    filterImagesByFilterMode = [(CKMenuBarManager *)self filterImagesByFilterMode];
    v14 = [filterImagesByFilterMode objectForKey:v12];
  }

  else
  {
    v14 = 0;
  }

  v15 = MEMORY[0x1E69DCBA0];
  title = [dataCopy title];
  v17 = NSSelectorFromString(&cfstr_Legacydidselec.isa);
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(dataCopy, "filterMode")}];
  v19 = [v15 commandWithTitle:title image:v14 action:v17 input:inputCopy modifierFlags:1310720 propertyList:v18];

  return v19;
}

- (id)keyForInboxCellDataFilterMode:(unint64_t)mode
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:mode];
  v5 = [v3 stringWithFormat:@"%@", v4];

  return v5;
}

- (void)_buildDebugMenuWithBuilder:(id)builder
{
  v25[4] = *MEMORY[0x1E69E9840];
  builderCopy = builder;
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  if (([mEMORY[0x1E69A60F0] isInternalInstall] & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [standardUserDefaults BOOLForKey:@"showDebugMenu"];

  if (v6)
  {
    v7 = IMGetDomainBoolForKey();
    v8 = @"Hide Sensitive UI";
    if (v7)
    {
      v8 = @"Show Sensitive UI";
    }

    v9 = MEMORY[0x1E69DC8B0];
    v10 = v8;
    mEMORY[0x1E69A60F0] = [v9 commandWithTitle:v10 image:0 action:NSSelectorFromString(&cfstr_Togglesensitiv.isa) propertyList:0];

    v11 = MEMORY[0x1E69DCBA0];
    v12 = CKFrameworkBundle();
    v13 = [v12 localizedStringForKey:@"Show responder chain" value:&stru_1F04268F8 table:@"ChatKit"];
    v14 = [v11 commandWithTitle:v13 image:0 action:NSSelectorFromString(&cfstr_Showresponderc.isa) input:@"r" modifierFlags:393216 propertyList:0];
    v25[0] = v14;
    v15 = MEMORY[0x1E69DC8B0];
    v16 = CKFrameworkBundle();
    v17 = [v16 localizedStringForKey:@"Purge attachment files for current chat" value:&stru_1F04268F8 table:@"ChatKit"];
    v18 = [v15 commandWithTitle:v17 image:0 action:NSSelectorFromString(&cfstr_Purgeattachmen.isa) propertyList:0];
    v25[1] = v18;
    v19 = [MEMORY[0x1E69DCBA0] ck_debugMenuWithAction:NSSelectorFromString(&cfstr_Showdebugmenu.isa)];
    v25[2] = v19;
    v25[3] = mEMORY[0x1E69A60F0];
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];

    v21 = MEMORY[0x1E69DCC60];
    v22 = CKFrameworkBundle();
    v23 = [v22 localizedStringForKey:@"Debug" value:&stru_1F04268F8 table:@"ChatKit"];
    v24 = [v21 menuWithTitle:v23 children:v20];

    [builderCopy insertSiblingMenu:v24 afterMenuForIdentifier:*MEMORY[0x1E69DE128]];
    goto LABEL_6;
  }

LABEL_7:
}

- (void)_buildConversationMenuWithBuilder:(id)builder
{
  v94[5] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69A8070];
  builderCopy = builder;
  sharedInstance = [v4 sharedInstance];
  isExpressiveTextEnabled = [sharedInstance isExpressiveTextEnabled];

  if (isExpressiveTextEnabled)
  {
    v7 = 1572864;
  }

  else
  {
    v7 = 0x100000;
  }

  v8 = MEMORY[0x1E69DCBA0];
  v84 = CKFrameworkBundle();
  v83 = [v84 localizedStringForKey:@"SHOW_DETAILS" value:&stru_1F04268F8 table:@"ChatKit"];
  v82 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"info.circle"];
  v81 = [v8 commandWithTitle:v83 image:v82 action:NSSelectorFromString(&cfstr_Toggledetailsf.isa) input:@"I" modifierFlags:v7 propertyList:0];
  v93[0] = v81;
  v9 = MEMORY[0x1E69DCBA0];
  v80 = CKFrameworkBundle();
  v79 = [v80 localizedStringForKey:@"SHOW_CONTACT_CARD" value:&stru_1F04268F8 table:@"ChatKit"];
  v78 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.crop.circle"];
  v77 = [v9 commandWithTitle:v79 image:v78 action:NSSelectorFromString(&cfstr_Showcontactcar.isa) input:@"B" modifierFlags:1572864 propertyList:0];
  v93[1] = v77;
  v76 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:2];
  v75 = [(CKMenuBarManager *)self _inlineMenuWithChildren:v76];
  v94[0] = v75;
  v10 = MEMORY[0x1E69DCBA0];
  v74 = CKFrameworkBundle();
  v73 = [v74 localizedStringForKey:@"MARK_AS_UNREAD" value:&stru_1F04268F8 table:@"ChatKit"];
  v72 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"message.badge"];
  v71 = [v10 commandWithTitle:v73 image:v72 action:NSSelectorFromString(&cfstr_Toggleunreadst.isa) input:@"U" modifierFlags:1179648 propertyList:0];
  v92[0] = v71;
  v11 = MEMORY[0x1E69DCBA0];
  v70 = CKFrameworkBundle();
  v69 = [v70 localizedStringForKey:@"MENU_BAR_HIDE_ALERTS_TOGGLE_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  v68 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"bell.slash"];
  v67 = [v11 commandWithTitle:v69 image:v68 action:NSSelectorFromString(&cfstr_Togglehidealer.isa) input:@"M" modifierFlags:1572864 propertyList:0];
  v92[1] = v67;
  v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:2];
  v65 = [(CKMenuBarManager *)self _inlineMenuWithChildren:v66];
  v94[1] = v65;
  v12 = MEMORY[0x1E69DC8B0];
  v64 = CKFrameworkBundle();
  v63 = [v64 localizedStringForKey:@"BLOCK_PERSON_ELLIPSIS" value:&stru_1F04268F8 table:@"ChatKit"];
  v62 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"nosign"];
  v61 = [v12 commandWithTitle:v63 image:v62 action:NSSelectorFromString(&cfstr_Blockuserfromb.isa) propertyList:0];
  v91[0] = v61;
  v13 = MEMORY[0x1E69DC8B0];
  v60 = CKFrameworkBundle();
  v59 = [v60 localizedStringForKey:@"DELETE_CONVERSATION_ELLIPSIS" value:&stru_1F04268F8 table:@"ChatKit"];
  v58 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
  v57 = [v13 commandWithTitle:v59 image:v58 action:NSSelectorFromString(&cfstr_Keycommanddele.isa) propertyList:0];
  v91[1] = v57;
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:2];
  v55 = [(CKMenuBarManager *)self _inlineMenuWithChildren:v56];
  v94[2] = v55;
  v14 = MEMORY[0x1E69DCBA0];
  v54 = CKFrameworkBundle();
  v53 = [v54 localizedStringForKey:@"SEND_EMAIL_ELLIPSIS" value:&stru_1F04268F8 table:@"ChatKit"];
  v52 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"envelope"];
  v51 = [v14 commandWithTitle:v53 image:v52 action:NSSelectorFromString(&cfstr_Sendemailfromb.isa) input:@"E" modifierFlags:1572864 propertyList:0];
  v90[0] = v51;
  v15 = MEMORY[0x1E69DC8B0];
  v50 = CKFrameworkBundle();
  v49 = [v50 localizedStringForKey:@"SEND_FILE_ELLIPSIS" value:&stru_1F04268F8 table:@"ChatKit"];
  v48 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"document"];
  v47 = [v15 commandWithTitle:v49 image:v48 action:NSSelectorFromString(&cfstr_Sendfilefrombu.isa) propertyList:0];
  v90[1] = v47;
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:2];
  v45 = [(CKMenuBarManager *)self _inlineMenuWithChildren:v46];
  v94[3] = v45;
  v16 = MEMORY[0x1E69DC8B0];
  v17 = CKFrameworkBundle();
  v18 = [v17 localizedStringForKey:@"INVITE_TO_SHARE_MY_SCREEN" value:&stru_1F04268F8 table:@"ChatKit"];
  v19 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"inset.filled.rectangle.and.person.filled"];
  v20 = [v16 commandWithTitle:v18 image:v19 action:NSSelectorFromString(&cfstr_Invitetoshares.isa) propertyList:0];
  v89[0] = v20;
  v21 = MEMORY[0x1E69DC8B0];
  v22 = CKFrameworkBundle();
  v23 = [v22 localizedStringForKey:@"ASK_TO_SHARE_THEIR_SCREEN" value:&stru_1F04268F8 table:@"ChatKit"];
  v24 = [v21 commandWithTitle:v23 image:0 action:NSSelectorFromString(&cfstr_Asktosharescre.isa) propertyList:0];
  v89[1] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:2];
  selfCopy = self;
  v26 = [(CKMenuBarManager *)self _inlineMenuWithChildren:v25];
  v94[4] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:5];
  v86 = [v27 mutableCopy];

  if ((IMDeviceIsGreenTea() & 1) == 0 && ([MEMORY[0x1E69A8020] IMDeviceIsChinaRegion] & 1) == 0)
  {
    v28 = MEMORY[0x1E69DC8B0];
    v29 = CKFrameworkBundle();
    v30 = [v29 localizedStringForKey:@"FACETIME_VIDEO" value:&stru_1F04268F8 table:@"ChatKit"];
    v31 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"video"];
    v32 = [v28 commandWithTitle:v30 image:v31 action:NSSelectorFromString(&cfstr_Facetimevideof.isa) propertyList:0];
    v88[0] = v32;
    v33 = MEMORY[0x1E69DC8B0];
    v34 = CKFrameworkBundle();
    v35 = [v34 localizedStringForKey:@"FACETIME_AUDIO" value:&stru_1F04268F8 table:@"ChatKit"];
    v36 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"phone"];
    v37 = [v33 commandWithTitle:v35 image:v36 action:NSSelectorFromString(&cfstr_Facetimeaudiof.isa) propertyList:0];
    v88[1] = v37;
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:2];
    v39 = [(CKMenuBarManager *)selfCopy _inlineMenuWithChildren:v38];

    [v86 addObject:v39];
  }

  menuPhoneCall = [(CKMenuBarManager *)selfCopy menuPhoneCall];
  if (menuPhoneCall)
  {
    [v86 addObject:menuPhoneCall];
  }

  v41 = MEMORY[0x1E69DCC60];
  v42 = CKFrameworkBundle();
  v43 = [v42 localizedStringForKey:@"CONVERSATIONS_MENU" value:&stru_1F04268F8 table:@"ChatKit"];
  v44 = [v41 menuWithTitle:v43 image:0 identifier:@"com.messages.conversationsmenu" options:0 children:v86];

  [builderCopy insertSiblingMenu:v44 afterMenuForIdentifier:*MEMORY[0x1E69DE230]];
}

- (void)_buildFormatMenuWithBuilder:(id)builder
{
  v18[2] = *MEMORY[0x1E69E9840];
  builderCopy = builder;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (isExpressiveTextEnabled)
  {
    v7 = [CKTextEffectsMenuFactory effectMenuCommandsWithAction:NSSelectorFromString(&cfstr_Keycommandappl.isa)];
    v8 = +[CKUIBehavior sharedBehaviors];
    v9 = [v8 __ck_localizedString:@"TEXT_EFFECTS_MENU_TITLE"];

    v10 = [(CKMenuBarManager *)self _inlineMenuWithTitle:v9 children:v7];
    v11 = [CKTextEffectsMenuFactory textStyleCommandsWithAction:NSSelectorFromString(&cfstr_Keycommandappl_0.isa) configureImages:0 configureAttributedTitles:self->_shouldConfigureAttributedTextStyleTitles selectedText:&stru_1F04268F8];
    v12 = [(CKMenuBarManager *)self _inlineMenuWithChildren:v11];
    v18[0] = v12;
    v18[1] = v10;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v14 = MEMORY[0x1E69DCC60];
    v15 = CKFrameworkBundle();
    v16 = [v15 localizedStringForKey:@"FORMAT_MENU" value:&stru_1F04268F8 table:@"ChatKit"];
    v17 = [v14 menuWithTitle:v16 image:0 identifier:@"com.messages.formatmenu" options:0 children:v13];

    [builderCopy insertSiblingMenu:v17 afterMenuForIdentifier:@"com.messages.conversationsmenu"];
  }
}

- (void)buildMenuWithBuilder:(id)builder
{
  builderCopy = builder;
  if (CKIsRunningInMacCatalyst() || _CKUIEnhancedMainMenuEnabled())
  {
    [builderCopy removeMenuForIdentifier:*MEMORY[0x1E69DE118]];
    [(CKMenuBarManager *)self _buildAppMenuWithBuilder:builderCopy];
    [(CKMenuBarManager *)self _buildFileMenuWithBuilder:builderCopy];
    [(CKMenuBarManager *)self _buildEditMenuWithBuilder:builderCopy];
    [(CKMenuBarManager *)self _buildViewMenuWithBuilder:builderCopy];
    [(CKMenuBarManager *)self _buildConversationMenuWithBuilder:builderCopy];
    [(CKMenuBarManager *)self _buildFormatMenuWithBuilder:builderCopy];
    [(CKMenuBarManager *)self _buildWindowMenuWithBuilder:builderCopy];
    [(CKMenuBarManager *)self _buildDebugMenuWithBuilder:builderCopy];
  }
}

- (id)menuPhoneCall
{
  v29 = *MEMORY[0x1E69E9840];
  labelByPhoneNumber = [(CKMenuBarManager *)self labelByPhoneNumber];
  v4 = [labelByPhoneNumber count];

  if (v4)
  {
    v5 = objc_opt_new();
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    labelByPhoneNumber2 = [(CKMenuBarManager *)self labelByPhoneNumber];
    allKeys = [labelByPhoneNumber2 allKeys];

    obj = allKeys;
    v8 = [allKeys countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      v11 = 1;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          if (v11)
          {
            v14 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"phone"];
          }

          else
          {
            v14 = 0;
          }

          v15 = MEMORY[0x1E69D8A40];
          formatForDisplayIfPhoneNumber = [v13 formatForDisplayIfPhoneNumber];
          v17 = [v15 supplementalDialTelephonyCallStringForDestination:formatForDisplayIfPhoneNumber isPhoneNumber:1];

          v18 = [MEMORY[0x1E69DC8B0] commandWithTitle:v17 image:v14 action:NSSelectorFromString(&cfstr_Relayphonecall.isa) propertyList:v13];
          labelByPhoneNumber3 = [(CKMenuBarManager *)self labelByPhoneNumber];
          v20 = [labelByPhoneNumber3 objectForKeyedSubscript:v13];

          if ([v20 length])
          {
            [v18 setSubtitle:v20];
          }

          [v5 addObject:v18];

          v11 = 0;
        }

        v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
        v11 = 0;
      }

      while (v9);
    }

    v21 = [(CKMenuBarManager *)self _inlineMenuWithChildren:v5];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)generateFilterMenuHideSettings:(BOOL)settings
{
  selfCopy = self;
  CKMenuBarManager.generateFilterMenu(hideSettings:)(v5, settings);
  v7 = v6;

  return v7;
}

@end