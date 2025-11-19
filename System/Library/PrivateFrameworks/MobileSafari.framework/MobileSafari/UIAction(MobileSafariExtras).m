@interface UIAction(MobileSafariExtras)
+ (id)_sf_debugKillWebProcessActionForWebView:()MobileSafariExtras;
+ (id)_sf_openInNewTabActionWithHandler:()MobileSafariExtras;
+ (id)_sf_openInNewTabActionWithTabOrder:()MobileSafariExtras handler:identifierSuffix:;
+ (id)_sf_openInNewTabActionsWithHandler:()MobileSafariExtras identifierSuffix:;
+ (id)safari_actionWithTarget:()MobileSafariExtras selector:;
@end

@implementation UIAction(MobileSafariExtras)

+ (id)safari_actionWithTarget:()MobileSafariExtras selector:
{
  v5 = a3;
  objc_initWeak(&location, v5);
  v6 = MEMORY[0x1E69DC628];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__UIAction_MobileSafariExtras__safari_actionWithTarget_selector___block_invoke;
  v9[3] = &unk_1E721E940;
  objc_copyWeak(v10, &location);
  v11 = v5 == 0;
  v10[1] = a4;
  v7 = [v6 actionWithHandler:v9];
  objc_destroyWeak(v10);
  objc_destroyWeak(&location);

  return v7;
}

+ (id)_sf_openInNewTabActionWithHandler:()MobileSafariExtras
{
  v3 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__UIAction_MobileSafariExtras___sf_openInNewTabActionWithHandler___block_invoke;
  aBlock[3] = &unk_1E721DB00;
  v9 = v3;
  v4 = v3;
  v5 = _Block_copy(aBlock);
  v6 = [MEMORY[0x1E69DC628] _sf_openInNewTabActionWithTabOrder:0 handler:v5 identifierSuffix:0];

  return v6;
}

+ (id)_sf_openInNewTabActionsWithHandler:()MobileSafariExtras identifierSuffix:
{
  v12[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [a1 _sf_openInNewTabActionWithTabOrder:1 handler:v7 identifierSuffix:v6];
  v12[0] = v8;
  v9 = [a1 _sf_openInNewTabActionWithTabOrder:2 handler:v7 identifierSuffix:v6];

  v12[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];

  return v10;
}

+ (id)_sf_openInNewTabActionWithTabOrder:()MobileSafariExtras handler:identifierSuffix:
{
  v7 = a4;
  v8 = a5;
  v9 = [_SFNavigationIntent effectiveTabOrderWithPreferredTabOrder:a3];
  v10 = _WBSLocalizedString();
  v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus.square.on.square"];
  v12 = MEMORY[0x1E69DC628];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __92__UIAction_MobileSafariExtras___sf_openInNewTabActionWithTabOrder_handler_identifierSuffix___block_invoke;
  v22 = &unk_1E721E968;
  v13 = v7;
  v23 = v13;
  v24 = a3;
  v14 = [v12 actionWithTitle:v10 image:v11 identifier:0 handler:&v19];
  v15 = v14;
  if (v8)
  {
    v16 = @"Foreground";
    if (v9 == 2)
    {
      v16 = @"Background";
    }

    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"OpenInNewTab%@%@", v16, v8, v19, v20, v21, v22];
    [v15 setAccessibilityIdentifier:v17];
  }

  else
  {
    [v14 setAccessibilityIdentifier:0];
  }

  return v15;
}

+ (id)_sf_debugKillWebProcessActionForWebView:()MobileSafariExtras
{
  v3 = a3;
  v4 = MEMORY[0x1E69DC628];
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __72__UIAction_MobileSafariExtras___sf_debugKillWebProcessActionForWebView___block_invoke;
  v15 = &unk_1E721E990;
  v16 = v3;
  v6 = v3;
  v7 = [v4 actionWithTitle:@"Kill Web Process" image:v5 identifier:0 handler:&v12];

  [v7 setAttributes:2];
  v8 = MEMORY[0x1E696AEC0];
  v9 = [v6 _webProcessIdentifier];
  v10 = [v8 stringWithFormat:@"PID %d", v9, v12, v13, v14, v15];
  [v7 setSubtitle:v10];

  [v7 setAccessibilityIdentifier:@"KillWebProcess"];

  return v7;
}

@end