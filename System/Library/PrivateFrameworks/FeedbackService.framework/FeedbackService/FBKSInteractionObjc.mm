@interface FBKSInteractionObjc
- (FBKSInteractionObjc)initWithFeatureDomain:(id)a3 feedbackTitle:(id)a4 prefillQuestions:(id)a5 attributionBundleId:(id)a6 modelVersion:(id)a7 originalAnnotatedContent:(id)a8 generatedAnnotatedContent:(id)a9 extraContent:(id)a10;
- (void)presentedWithCompletion:(id)a3;
@end

@implementation FBKSInteractionObjc

- (FBKSInteractionObjc)initWithFeatureDomain:(id)a3 feedbackTitle:(id)a4 prefillQuestions:(id)a5 attributionBundleId:(id)a6 modelVersion:(id)a7 originalAnnotatedContent:(id)a8 generatedAnnotatedContent:(id)a9 extraContent:(id)a10
{
  v34 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = Log_0();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v31 = "[FBKSInteractionObjc initWithFeatureDomain:feedbackTitle:prefillQuestions:attributionBundleId:modelVersion:originalAnnotatedContent:generatedAnnotatedContent:extraContent:]";
    v32 = 2114;
    v33 = v16;
    _os_log_impl(&dword_1B00C4000, v24, OS_LOG_TYPE_DEFAULT, "%{public}s on %{public}@", buf, 0x16u);
  }

  v29.receiver = self;
  v29.super_class = FBKSInteractionObjc;
  v25 = [(FBKSInteractionObjc *)&v29 init];
  if (v25)
  {
    if (!(v21 | v22) && (!v23 || ![v23 count]))
    {
      v26 = Log_0();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [FBKSInteractionObjc initWithFeatureDomain:v16 feedbackTitle:v26 prefillQuestions:? attributionBundleId:? modelVersion:? originalAnnotatedContent:? generatedAnnotatedContent:? extraContent:?];
      }
    }

    [(FBKSInteractionObjc *)v25 setFeatureDomain:v16];
    [(FBKSInteractionObjc *)v25 setFeedbackTitle:v17];
    [(FBKSInteractionObjc *)v25 setOriginalAnnotatedContent:v21];
    [(FBKSInteractionObjc *)v25 setGeneratedAnnotatedContent:v22];
    [(FBKSInteractionObjc *)v25 setExtraContent:v23];
    [(FBKSInteractionObjc *)v25 setPrefillQuestions:v18];
    [(FBKSInteractionObjc *)v25 setAttributionBundleId:v19];
    [(FBKSInteractionObjc *)v25 setModelVersion:v20];
  }

  v27 = *MEMORY[0x1E69E9840];
  return v25;
}

- (void)presentedWithCompletion:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = Log_0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(FBKSInteractionObjc *)self featureDomain];
    v8 = 136446466;
    v9 = "[FBKSInteractionObjc presentedWithCompletion:]";
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_1B00C4000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s on %{public}@", &v8, 0x16u);
  }

  [_TtC15FeedbackService24ReportAConcernObjCBridge presentedWithInteraction:self completion:v4];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)initWithFeatureDomain:(uint64_t)a1 feedbackTitle:(NSObject *)a2 prefillQuestions:attributionBundleId:modelVersion:originalAnnotatedContent:generatedAnnotatedContent:extraContent:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B00C4000, a2, OS_LOG_TYPE_ERROR, "All annotated content inputs are nil for feature domain %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end