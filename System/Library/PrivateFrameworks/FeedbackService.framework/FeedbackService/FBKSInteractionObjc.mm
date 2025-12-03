@interface FBKSInteractionObjc
- (FBKSInteractionObjc)initWithFeatureDomain:(id)domain feedbackTitle:(id)title prefillQuestions:(id)questions attributionBundleId:(id)id modelVersion:(id)version originalAnnotatedContent:(id)content generatedAnnotatedContent:(id)annotatedContent extraContent:(id)self0;
- (void)presentedWithCompletion:(id)completion;
@end

@implementation FBKSInteractionObjc

- (FBKSInteractionObjc)initWithFeatureDomain:(id)domain feedbackTitle:(id)title prefillQuestions:(id)questions attributionBundleId:(id)id modelVersion:(id)version originalAnnotatedContent:(id)content generatedAnnotatedContent:(id)annotatedContent extraContent:(id)self0
{
  v34 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  titleCopy = title;
  questionsCopy = questions;
  idCopy = id;
  versionCopy = version;
  contentCopy = content;
  annotatedContentCopy = annotatedContent;
  extraContentCopy = extraContent;
  v24 = Log_0();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v31 = "[FBKSInteractionObjc initWithFeatureDomain:feedbackTitle:prefillQuestions:attributionBundleId:modelVersion:originalAnnotatedContent:generatedAnnotatedContent:extraContent:]";
    v32 = 2114;
    v33 = domainCopy;
    _os_log_impl(&dword_1B00C4000, v24, OS_LOG_TYPE_DEFAULT, "%{public}s on %{public}@", buf, 0x16u);
  }

  v29.receiver = self;
  v29.super_class = FBKSInteractionObjc;
  v25 = [(FBKSInteractionObjc *)&v29 init];
  if (v25)
  {
    if (!(contentCopy | annotatedContentCopy) && (!extraContentCopy || ![extraContentCopy count]))
    {
      v26 = Log_0();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [FBKSInteractionObjc initWithFeatureDomain:domainCopy feedbackTitle:v26 prefillQuestions:? attributionBundleId:? modelVersion:? originalAnnotatedContent:? generatedAnnotatedContent:? extraContent:?];
      }
    }

    [(FBKSInteractionObjc *)v25 setFeatureDomain:domainCopy];
    [(FBKSInteractionObjc *)v25 setFeedbackTitle:titleCopy];
    [(FBKSInteractionObjc *)v25 setOriginalAnnotatedContent:contentCopy];
    [(FBKSInteractionObjc *)v25 setGeneratedAnnotatedContent:annotatedContentCopy];
    [(FBKSInteractionObjc *)v25 setExtraContent:extraContentCopy];
    [(FBKSInteractionObjc *)v25 setPrefillQuestions:questionsCopy];
    [(FBKSInteractionObjc *)v25 setAttributionBundleId:idCopy];
    [(FBKSInteractionObjc *)v25 setModelVersion:versionCopy];
  }

  v27 = *MEMORY[0x1E69E9840];
  return v25;
}

- (void)presentedWithCompletion:(id)completion
{
  v12 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = Log_0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    featureDomain = [(FBKSInteractionObjc *)self featureDomain];
    v8 = 136446466;
    v9 = "[FBKSInteractionObjc presentedWithCompletion:]";
    v10 = 2114;
    v11 = featureDomain;
    _os_log_impl(&dword_1B00C4000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s on %{public}@", &v8, 0x16u);
  }

  [_TtC15FeedbackService24ReportAConcernObjCBridge presentedWithInteraction:self completion:completionCopy];
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