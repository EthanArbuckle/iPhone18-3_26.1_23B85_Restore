@interface CNAutocompletePeopleSuggesterFeedback
+ (id)bundleIdentifier;
+ (id)sharedInstance;
+ (void)didReceiveSuggestions:(id)suggestions;
+ (void)provideFeedback:(id)feedback;
+ (void)userEnteredContact:(id)contact;
+ (void)userEnteredExistingSession;
+ (void)userEnteredNewSession;
+ (void)userNavigatedAwayFromSession;
+ (void)userRemovedContact:(id)contact;
+ (void)userSelectedFromContactPicker:(id)picker;
+ (void)userSelectedSuggestion:(id)suggestion;
+ (void)userTerminatedSession;
- (CNAutocompletePeopleSuggesterFeedback)init;
@end

@implementation CNAutocompletePeopleSuggesterFeedback

+ (id)bundleIdentifier
{
  sharedInstance = [objc_opt_class() sharedInstance];
  bundleIdentifier = [sharedInstance bundleIdentifier];

  return bundleIdentifier;
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
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    bundleIdentifier = v2->_bundleIdentifier;
    v2->_bundleIdentifier = bundleIdentifier;

    v6 = objc_alloc_init(get_PSSuggesterClass_0());
    psSuggester = v2->_psSuggester;
    v2->_psSuggester = v6;

    v8 = v2;
  }

  return v2;
}

+ (void)didReceiveSuggestions:(id)suggestions
{
  v4 = get_PSCNAutocompleteFeedbackClass;
  suggestionsCopy = suggestions;
  v6 = v4();
  bundleIdentifier = [self bundleIdentifier];
  v8 = [v6 createVendedSuggestionsFeedbackWithBundleIdentifier:bundleIdentifier suggestions:suggestionsCopy];

  [self provideFeedback:v8];
}

+ (void)userSelectedSuggestion:(id)suggestion
{
  v4 = get_PSCNAutocompleteFeedbackClass;
  suggestionCopy = suggestion;
  v6 = v4();
  bundleIdentifier = [self bundleIdentifier];
  v8 = [v6 createTappedSuggestionFeedbackWithBundleIdentifier:bundleIdentifier suggestion:suggestionCopy];

  [self provideFeedback:v8];
}

+ (void)userEnteredNewSession
{
  PSCNAutocompleteFeedbackClass = get_PSCNAutocompleteFeedbackClass();
  bundleIdentifier = [self bundleIdentifier];
  v5 = [(objc_class *)PSCNAutocompleteFeedbackClass createEnteredFeedbackWithBundleIdentifier:bundleIdentifier status:0];

  [self provideFeedback:v5];
}

+ (void)userEnteredExistingSession
{
  PSCNAutocompleteFeedbackClass = get_PSCNAutocompleteFeedbackClass();
  bundleIdentifier = [self bundleIdentifier];
  v5 = [(objc_class *)PSCNAutocompleteFeedbackClass createEnteredFeedbackWithBundleIdentifier:bundleIdentifier status:1];

  [self provideFeedback:v5];
}

+ (void)userNavigatedAwayFromSession
{
  PSCNAutocompleteFeedbackClass = get_PSCNAutocompleteFeedbackClass();
  bundleIdentifier = [self bundleIdentifier];
  v5 = [(objc_class *)PSCNAutocompleteFeedbackClass createExitedFeedbackWithBundleIdentifier:bundleIdentifier status:1];

  [self provideFeedback:v5];
}

+ (void)userTerminatedSession
{
  PSCNAutocompleteFeedbackClass = get_PSCNAutocompleteFeedbackClass();
  bundleIdentifier = [self bundleIdentifier];
  v5 = [(objc_class *)PSCNAutocompleteFeedbackClass createExitedFeedbackWithBundleIdentifier:bundleIdentifier status:0];

  [self provideFeedback:v5];
}

+ (void)userEnteredContact:(id)contact
{
  v4 = get_PSCNAutocompleteFeedbackClass;
  contactCopy = contact;
  v6 = v4();
  bundleIdentifier = [self bundleIdentifier];
  v8 = [v6 createTypedHandleFeedbackWithBundleIdentifier:bundleIdentifier contact:contactCopy viaContactPicker:0];

  [self provideFeedback:v8];
}

+ (void)userSelectedFromContactPicker:(id)picker
{
  v4 = get_PSCNAutocompleteFeedbackClass;
  pickerCopy = picker;
  v6 = v4();
  bundleIdentifier = [self bundleIdentifier];
  v8 = [v6 createTypedHandleFeedbackWithBundleIdentifier:bundleIdentifier contact:pickerCopy viaContactPicker:1];

  [self provideFeedback:v8];
}

+ (void)userRemovedContact:(id)contact
{
  v4 = get_PSCNAutocompleteFeedbackClass;
  contactCopy = contact;
  v6 = v4();
  bundleIdentifier = [self bundleIdentifier];
  v8 = [v6 createErasedHandleFeedbackWithBundleIdentifier:bundleIdentifier contact:contactCopy];

  [self provideFeedback:v8];
}

+ (void)provideFeedback:(id)feedback
{
  feedbackCopy = feedback;
  sharedInstance = [objc_opt_class() sharedInstance];
  psSuggester = [sharedInstance psSuggester];
  [psSuggester provideFeedbackForContactsAutocompleteSuggestions:feedbackCopy];
}

@end