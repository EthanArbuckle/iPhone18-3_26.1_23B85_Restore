@interface HRERecommendationEmptyTriggerBuilderContext
- (HRERecommendationEmptyTriggerBuilderContext)init;
@end

@implementation HRERecommendationEmptyTriggerBuilderContext

- (HRERecommendationEmptyTriggerBuilderContext)init
{
  v7.receiver = self;
  v7.super_class = HRERecommendationEmptyTriggerBuilderContext;
  v2 = [(HRERecommendationEmptyTriggerBuilderContext *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *&v2->allowDurationEditing = 0;
    if (qword_27F5F9818 != -1)
    {
      dispatch_once(&qword_27F5F9818, &__block_literal_global_274);
    }

    objc_storeStrong(&v3->testActionsInstructionDescription, qword_27F5F9820);
    if (qword_27F5F9828 != -1)
    {
      dispatch_once(&qword_27F5F9828, &__block_literal_global_281);
    }

    objc_storeStrong(&v3->serviceActionsInstructionDescription, qword_27F5F9830);
    if (qword_27F5F9838 != -1)
    {
      dispatch_once(&qword_27F5F9838, &__block_literal_global_285);
    }

    objc_storeStrong(&v3->actionEditorInstructionsDescription, qword_27F5F9840);
    if (qword_27F5F9848 != -1)
    {
      dispatch_once(&qword_27F5F9848, &__block_literal_global_289);
    }

    objc_storeStrong(&v3->triggerContextAwareTitle, qword_27F5F9850);
    if (qword_27F5F9858 != -1)
    {
      dispatch_once(&qword_27F5F9858, &__block_literal_global_293);
    }

    objc_storeStrong(&v3->deleteInstructionDescription, qword_27F5F9860);
    if (qword_27F5F9868 != -1)
    {
      dispatch_once(&qword_27F5F9868, &__block_literal_global_297);
    }

    objc_storeStrong(&v3->deleteConfirmationAlertTitle, qword_27F5F9870);
    if (qword_27F5F9878 != -1)
    {
      dispatch_once(&qword_27F5F9878, &__block_literal_global_301);
    }

    objc_storeStrong(&v3->deleteConfirmationAlertMessage, qword_27F5F9880);
    if (qword_27F5F9888 != -1)
    {
      dispatch_once(&qword_27F5F9888, &__block_literal_global_305);
    }

    objc_storeStrong(&v3->doneButtonTitle, qword_27F5F9890);
    v4 = [MEMORY[0x277CBEB98] set];
    unsupportedTriggers = v3->unsupportedTriggers;
    v3->unsupportedTriggers = v4;
  }

  return v3;
}

void __51__HRERecommendationEmptyTriggerBuilderContext_init__block_invoke_2()
{
  v0 = qword_27F5F9820;
  qword_27F5F9820 = &stru_286657A08;
}

void __51__HRERecommendationEmptyTriggerBuilderContext_init__block_invoke_4()
{
  v0 = qword_27F5F9830;
  qword_27F5F9830 = &stru_286657A08;
}

void __51__HRERecommendationEmptyTriggerBuilderContext_init__block_invoke_6()
{
  v0 = qword_27F5F9840;
  qword_27F5F9840 = &stru_286657A08;
}

void __51__HRERecommendationEmptyTriggerBuilderContext_init__block_invoke_8()
{
  v0 = qword_27F5F9850;
  qword_27F5F9850 = &stru_286657A08;
}

void __51__HRERecommendationEmptyTriggerBuilderContext_init__block_invoke_10()
{
  v0 = qword_27F5F9860;
  qword_27F5F9860 = &stru_286657A08;
}

void __51__HRERecommendationEmptyTriggerBuilderContext_init__block_invoke_12()
{
  v0 = qword_27F5F9870;
  qword_27F5F9870 = &stru_286657A08;
}

void __51__HRERecommendationEmptyTriggerBuilderContext_init__block_invoke_14()
{
  v0 = qword_27F5F9880;
  qword_27F5F9880 = &stru_286657A08;
}

void __51__HRERecommendationEmptyTriggerBuilderContext_init__block_invoke_16()
{
  v0 = qword_27F5F9890;
  qword_27F5F9890 = &stru_286657A08;
}

@end