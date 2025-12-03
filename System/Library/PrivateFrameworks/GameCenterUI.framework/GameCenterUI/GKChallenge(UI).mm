@interface GKChallenge(UI)
+ (id)challengesNotSupportedAlertController;
+ (id)tooManyPlayersAlertController;
- (id)detailFromText;
- (uint64_t)alertGoalText;
- (uint64_t)composeGoalText;
- (uint64_t)detailGoalText;
- (uint64_t)iconSource;
- (uint64_t)iconURLString;
- (uint64_t)listGoalText;
- (uint64_t)listTitleText;
- (uint64_t)smallIconURLString;
- (void)alertGoalText;
- (void)loadBannerImageWithHandler:()UI;
- (void)loadImageWithCompletionHandler:()UI;
- (void)loadImageWithSource:()UI URLString:withHandler:;
@end

@implementation GKChallenge(UI)

- (void)loadImageWithSource:()UI URLString:withHandler:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__13;
  v29 = __Block_byref_object_dispose__13;
  v30 = 0;
  v11 = dispatch_group_create();
  v12 = v11;
  if (v9)
  {
    dispatch_group_enter(v11);
    v13 = MEMORY[0x277D85CD0];
    v14 = MEMORY[0x277D85CD0];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __61__GKChallenge_UI__loadImageWithSource_URLString_withHandler___block_invoke;
    v21[3] = &unk_27966D790;
    v22 = v8;
    v24 = &v25;
    v23 = v12;
    [v22 loadImageForURLString:v9 reference:self queue:v13 handler:v21];

    v15 = v22;
  }

  else
  {
    renderedDefaultImage = [v8 renderedDefaultImage];
    v15 = v26[5];
    v26[5] = renderedDefaultImage;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__GKChallenge_UI__loadImageWithSource_URLString_withHandler___block_invoke_2;
  block[3] = &unk_27966D7B8;
  v19 = v10;
  v20 = &v25;
  v17 = v10;
  dispatch_group_notify(v12, MEMORY[0x277D85CD0], block);

  _Block_object_dispose(&v25, 8);
}

- (void)loadBannerImageWithHandler:()UI
{
  v4 = a3;
  iconSource = [self iconSource];
  smallIconURLString = [self smallIconURLString];
  [self loadImageWithSource:iconSource URLString:smallIconURLString withHandler:v4];
}

- (void)loadImageWithCompletionHandler:()UI
{
  v4 = a3;
  iconSource = [self iconSource];
  iconURLString = [self iconURLString];
  [self loadImageWithSource:iconSource URLString:iconURLString withHandler:v4];
}

- (uint64_t)alertGoalText
{
  if (!*MEMORY[0x277D0C2A0])
  {
    v0 = GKOSLoggers();
  }

  v1 = *MEMORY[0x277D0C290];
  if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
  {
    [(GKChallenge(UI) *)v1 alertGoalText];
  }

  return 0;
}

- (uint64_t)listTitleText
{
  if (!*MEMORY[0x277D0C2A0])
  {
    v0 = GKOSLoggers();
  }

  v1 = *MEMORY[0x277D0C290];
  if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
  {
    [(GKChallenge(UI) *)v1 alertGoalText];
  }

  return 0;
}

- (uint64_t)listGoalText
{
  if (!*MEMORY[0x277D0C2A0])
  {
    v0 = GKOSLoggers();
  }

  v1 = *MEMORY[0x277D0C290];
  if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
  {
    [(GKChallenge(UI) *)v1 alertGoalText];
  }

  return 0;
}

- (uint64_t)composeGoalText
{
  if (!*MEMORY[0x277D0C2A0])
  {
    v0 = GKOSLoggers();
  }

  v1 = *MEMORY[0x277D0C290];
  if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
  {
    [(GKChallenge(UI) *)v1 alertGoalText];
  }

  return 0;
}

- (uint64_t)detailGoalText
{
  if (!*MEMORY[0x277D0C2A0])
  {
    v0 = GKOSLoggers();
  }

  v1 = *MEMORY[0x277D0C290];
  if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
  {
    [(GKChallenge(UI) *)v1 alertGoalText];
  }

  return 0;
}

- (id)detailFromText
{
  v2 = MEMORY[0x277CCACA8];
  v3 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();
  issuingPlayer = [self issuingPlayer];
  v6 = [issuingPlayer displayNameWithOptions:0];
  v7 = [v2 stringWithFormat:v4, v6];

  return v7;
}

- (uint64_t)iconSource
{
  if (!*MEMORY[0x277D0C2A0])
  {
    v0 = GKOSLoggers();
  }

  v1 = *MEMORY[0x277D0C290];
  if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
  {
    [(GKChallenge(UI) *)v1 alertGoalText];
  }

  return 0;
}

- (uint64_t)smallIconURLString
{
  if (!*MEMORY[0x277D0C2A0])
  {
    v0 = GKOSLoggers();
  }

  v1 = *MEMORY[0x277D0C290];
  if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
  {
    [(GKChallenge(UI) *)v1 alertGoalText];
  }

  return 0;
}

- (uint64_t)iconURLString
{
  if (!*MEMORY[0x277D0C2A0])
  {
    v0 = GKOSLoggers();
  }

  v1 = *MEMORY[0x277D0C290];
  if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
  {
    [(GKChallenge(UI) *)v1 alertGoalText];
  }

  return 0;
}

+ (id)challengesNotSupportedAlertController
{
  v0 = MEMORY[0x277D75110];
  v1 = GKGameCenterUIFrameworkBundle();
  v2 = GKGetLocalizedStringFromTableInBundle();
  v3 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();
  v5 = [v0 alertControllerWithTitle:v2 message:v4 preferredStyle:1];

  v6 = MEMORY[0x277D750F8];
  v7 = GKGameCenterUIFrameworkBundle();
  v8 = GKGetLocalizedStringFromTableInBundle();
  v9 = [v6 actionWithTitle:v8 style:0 handler:0];
  [v5 addAction:v9];

  return v5;
}

+ (id)tooManyPlayersAlertController
{
  v0 = MEMORY[0x277CCACA8];
  v1 = GKGameCenterUIFrameworkBundle();
  v2 = GKGetLocalizedStringFromTableInBundle();
  v3 = [v0 stringWithFormat:v2, 10];

  v4 = MEMORY[0x277D75110];
  v5 = GKGameCenterUIFrameworkBundle();
  v6 = GKGetLocalizedStringFromTableInBundle();
  v7 = [v4 alertControllerWithTitle:v6 message:v3 preferredStyle:1];

  v8 = MEMORY[0x277D750F8];
  v9 = GKGameCenterUIFrameworkBundle();
  v10 = GKGetLocalizedStringFromTableInBundle();
  v11 = [v8 actionWithTitle:v10 style:0 handler:0];
  [v7 addAction:v11];

  return v7;
}

- (void)alertGoalText
{
  selfCopy = self;
  v3 = OUTLINED_FUNCTION_5_1();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_12(&dword_24DE53000, v5, v6, "%@ needs to implement me!", v7, v8, v9, v10, v11);
}

@end