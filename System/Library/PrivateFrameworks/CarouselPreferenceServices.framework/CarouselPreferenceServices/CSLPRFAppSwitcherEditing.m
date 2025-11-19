@interface CSLPRFAppSwitcherEditing
+ (void)logAppSwitcherEditingAction:(unint64_t)a3 fromSource:(unint64_t)a4;
@end

@implementation CSLPRFAppSwitcherEditing

+ (void)logAppSwitcherEditingAction:(unint64_t)a3 fromSource:(unint64_t)a4
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = @"gizmoSettings";
  if (!a4)
  {
    v4 = @"gizmoSwitcher";
  }

  if (a4 == 2)
  {
    v5 = @"companionSettings";
  }

  else
  {
    v5 = v4;
  }

  v12[0] = @"source";
  v12[1] = @"action";
  v6 = @"remove";
  if (a3 == 1)
  {
    v6 = @"add";
  }

  if (a3 == 2)
  {
    v6 = @"reorder";
  }

  v13[0] = v5;
  v13[1] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = v6;
  v9 = v5;
  v10 = [v7 dictionaryWithObjects:v13 forKeys:v12 count:2];

  AnalyticsSendEvent();
  v11 = *MEMORY[0x277D85DE8];
}

@end