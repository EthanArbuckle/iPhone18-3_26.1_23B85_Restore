@interface CNAutocompletePeopleSuggesterFeedback
+ (id)bundleIdentifier;
+ (id)sharedInstance;
+ (void)didReceiveSuggestions:(id)a3;
+ (void)provideFeedback:(id)a3;
+ (void)userEnteredContact:(id)a3;
+ (void)userEnteredExistingSession;
+ (void)userEnteredNewSession;
+ (void)userNavigatedAwayFromSession;
+ (void)userRemovedContact:(id)a3;
+ (void)userSelectedFromContactPicker:(id)a3;
+ (void)userSelectedSuggestion:(id)a3;
+ (void)userTerminatedSession;
- (CNAutocompletePeopleSuggesterFeedback)init;
@end

@implementation CNAutocompletePeopleSuggesterFeedback

+ (id)bundleIdentifier
{
  v2 = [objc_opt_class() sharedInstance];
  v3 = [v2 bundleIdentifier];

  return v3;
}

+ (id)sharedInstance
{
  if (sharedInstance_cn_once_token_1 != -1)
  {
    +[CNAutocompletePeopleSuggesterFeedback sharedInstance];
  }

  v3 = sharedInstance_cn_once_object_1;

  return v3;
}

uint64_t __55__CNAutocompletePeopleSuggesterFeedback_sharedInstance__block_invoke()
{
  sharedInstance_cn_once_object_1 = objc_alloc_init(CNAutocompletePeopleSuggesterFeedback);

  return MEMORY[0x2821F96F8]();
}

- (CNAutocompletePeopleSuggesterFeedback)init
{
  v10.receiver = self;
  v10.super_class = CNAutocompletePeopleSuggesterFeedback;
  v2 = [(CNAutocompletePeopleSuggesterFeedback *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA8D8] mainBundle];
    v4 = [v3 bundleIdentifier];
    bundleIdentifier = v2->_bundleIdentifier;
    v2->_bundleIdentifier = v4;

    v6 = objc_alloc_init(get_PSSuggesterClass_0());
    psSuggester = v2->_psSuggester;
    v2->_psSuggester = v6;

    v8 = v2;
  }

  return v2;
}

+ (void)didReceiveSuggestions:(id)a3
{
  v4 = get_PSCNAutocompleteFeedbackClass;
  v5 = a3;
  v6 = v4();
  v7 = [a1 bundleIdentifier];
  v8 = [v6 createVendedSuggestionsFeedbackWithBundleIdentifier:v7 suggestions:v5];

  [a1 provideFeedback:v8];
}

+ (void)userSelectedSuggestion:(id)a3
{
  v4 = get_PSCNAutocompleteFeedbackClass;
  v5 = a3;
  v6 = v4();
  v7 = [a1 bundleIdentifier];
  v8 = [v6 createTappedSuggestionFeedbackWithBundleIdentifier:v7 suggestion:v5];

  [a1 provideFeedback:v8];
}

+ (void)userEnteredNewSession
{
  PSCNAutocompleteFeedbackClass = get_PSCNAutocompleteFeedbackClass();
  v4 = [a1 bundleIdentifier];
  v5 = [(objc_class *)PSCNAutocompleteFeedbackClass createEnteredFeedbackWithBundleIdentifier:v4 status:0];

  [a1 provideFeedback:v5];
}

+ (void)userEnteredExistingSession
{
  PSCNAutocompleteFeedbackClass = get_PSCNAutocompleteFeedbackClass();
  v4 = [a1 bundleIdentifier];
  v5 = [(objc_class *)PSCNAutocompleteFeedbackClass createEnteredFeedbackWithBundleIdentifier:v4 status:1];

  [a1 provideFeedback:v5];
}

+ (void)userNavigatedAwayFromSession
{
  PSCNAutocompleteFeedbackClass = get_PSCNAutocompleteFeedbackClass();
  v4 = [a1 bundleIdentifier];
  v5 = [(objc_class *)PSCNAutocompleteFeedbackClass createExitedFeedbackWithBundleIdentifier:v4 status:1];

  [a1 provideFeedback:v5];
}

+ (void)userTerminatedSession
{
  PSCNAutocompleteFeedbackClass = get_PSCNAutocompleteFeedbackClass();
  v4 = [a1 bundleIdentifier];
  v5 = [(objc_class *)PSCNAutocompleteFeedbackClass createExitedFeedbackWithBundleIdentifier:v4 status:0];

  [a1 provideFeedback:v5];
}

+ (void)userEnteredContact:(id)a3
{
  v4 = get_PSCNAutocompleteFeedbackClass;
  v5 = a3;
  v6 = v4();
  v7 = [a1 bundleIdentifier];
  v8 = [v6 createTypedHandleFeedbackWithBundleIdentifier:v7 contact:v5 viaContactPicker:0];

  [a1 provideFeedback:v8];
}

+ (void)userSelectedFromContactPicker:(id)a3
{
  v4 = get_PSCNAutocompleteFeedbackClass;
  v5 = a3;
  v6 = v4();
  v7 = [a1 bundleIdentifier];
  v8 = [v6 createTypedHandleFeedbackWithBundleIdentifier:v7 contact:v5 viaContactPicker:1];

  [a1 provideFeedback:v8];
}

+ (void)userRemovedContact:(id)a3
{
  v4 = get_PSCNAutocompleteFeedbackClass;
  v5 = a3;
  v6 = v4();
  v7 = [a1 bundleIdentifier];
  v8 = [v6 createErasedHandleFeedbackWithBundleIdentifier:v7 contact:v5];

  [a1 provideFeedback:v8];
}

+ (void)provideFeedback:(id)a3
{
  v3 = a3;
  v5 = [objc_opt_class() sharedInstance];
  v4 = [v5 psSuggester];
  [v4 provideFeedbackForContactsAutocompleteSuggestions:v3];
}

@end