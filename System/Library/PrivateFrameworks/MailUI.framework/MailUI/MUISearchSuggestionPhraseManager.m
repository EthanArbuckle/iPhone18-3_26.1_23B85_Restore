@interface MUISearchSuggestionPhraseManager
+ (MUISearchSuggestionPhraseManager)phraseManagerWithPhrase:(id)a3 updatedSuggestion:(id)a4 filterQuery:(id)a5 inputLanguages:(id)a6 customFlags:(id)a7 feedbackQueryID:(int64_t)a8 includeTopHitsAndInstantAnswers:(BOOL)a9;
- (BOOL)hasPhraseOrSuggestions;
- (MUISearchSuggestionPhraseManager)initWithPhrase:(id)a3 selectedSuggestions:(id)a4 vipManager:(id)a5 updatedSuggestion:(id)a6 scopeIdentifierForPeopleSuggestions:(id)a7 inputLanguages:(id)a8 implicitSuggestions:(id)a9 filterQuery:(id)a10 excludedMailboxes:(id)a11 customFlags:(id)a12 feedbackQueryID:(int64_t)a13 includeTopHitsAndInstantAnswers:(BOOL)a14;
@end

@implementation MUISearchSuggestionPhraseManager

+ (MUISearchSuggestionPhraseManager)phraseManagerWithPhrase:(id)a3 updatedSuggestion:(id)a4 filterQuery:(id)a5 inputLanguages:(id)a6 customFlags:(id)a7 feedbackQueryID:(int64_t)a8 includeTopHitsAndInstantAnswers:(BOOL)a9
{
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  LOBYTE(v22) = a9;
  v20 = [[a1 alloc] initWithPhrase:v19 selectedSuggestions:0 vipManager:0 updatedSuggestion:v18 scopeIdentifierForPeopleSuggestions:0 inputLanguages:v16 implicitSuggestions:0 filterQuery:v17 excludedMailboxes:0 customFlags:v15 feedbackQueryID:a8 includeTopHitsAndInstantAnswers:v22];

  return v20;
}

- (MUISearchSuggestionPhraseManager)initWithPhrase:(id)a3 selectedSuggestions:(id)a4 vipManager:(id)a5 updatedSuggestion:(id)a6 scopeIdentifierForPeopleSuggestions:(id)a7 inputLanguages:(id)a8 implicitSuggestions:(id)a9 filterQuery:(id)a10 excludedMailboxes:(id)a11 customFlags:(id)a12 feedbackQueryID:(int64_t)a13 includeTopHitsAndInstantAnswers:(BOOL)a14
{
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v51 = v20;
  v50 = a5;
  obj = a6;
  v49 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v25 = a10;
  v26 = a11;
  v27 = a12;
  v52.receiver = self;
  v52.super_class = MUISearchSuggestionPhraseManager;
  v28 = [(MUISearchSuggestionPhraseManager *)&v52 init];
  if (v28)
  {
    v29 = [v19 copy];
    phrase = v28->_phrase;
    v28->_phrase = v29;

    v31 = [v51 copy];
    selectedSuggestions = v28->_selectedSuggestions;
    v28->_selectedSuggestions = v31;

    objc_storeStrong(&v28->_vipManager, v21);
    objc_storeStrong(&v28->_updatedSuggestion, obj);
    v33 = [v22 copy];
    scopeIdentifierForPeopleSuggestions = v28->_scopeIdentifierForPeopleSuggestions;
    v28->_scopeIdentifierForPeopleSuggestions = v33;

    v35 = [v23 copy];
    inputLanguages = v28->_inputLanguages;
    v28->_inputLanguages = v35;

    v37 = [v24 copy];
    v38 = v37;
    v39 = MEMORY[0x277CBEBF8];
    if (v37)
    {
      v40 = v37;
    }

    else
    {
      v40 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&v28->_implicitSuggestions, v40);

    v41 = [v25 copy];
    filterQuery = v28->_filterQuery;
    v28->_filterQuery = v41;

    v43 = [v26 copy];
    v44 = v43;
    if (v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = v39;
    }

    objc_storeStrong(&v28->_excludedMailboxes, v45);

    v28->_signpostID = atomic_fetch_add(makeSignpostID_nextSignpostID, 1u) | 0xE508EB2E00000000;
    objc_storeStrong(&v28->_customFlags, a12);
    v28->_feedbackQueryID = a13;
    v28->_includeTopHitsAndInstantAnswers = a14;
  }

  return v28;
}

- (BOOL)hasPhraseOrSuggestions
{
  v3 = [(MUISearchSuggestionPhraseManager *)self phrase];
  if ([v3 length])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(MUISearchSuggestionPhraseManager *)self updatedSuggestion];
    v6 = [v5 suggestionTokens];
    v4 = [v6 count] != 0;
  }

  return v4;
}

@end