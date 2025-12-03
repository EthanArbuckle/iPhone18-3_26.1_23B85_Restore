@interface MUISearchSuggestionPhraseManager
+ (MUISearchSuggestionPhraseManager)phraseManagerWithPhrase:(id)phrase updatedSuggestion:(id)suggestion filterQuery:(id)query inputLanguages:(id)languages customFlags:(id)flags feedbackQueryID:(int64_t)d includeTopHitsAndInstantAnswers:(BOOL)answers;
- (BOOL)hasPhraseOrSuggestions;
- (MUISearchSuggestionPhraseManager)initWithPhrase:(id)phrase selectedSuggestions:(id)suggestions vipManager:(id)manager updatedSuggestion:(id)suggestion scopeIdentifierForPeopleSuggestions:(id)peopleSuggestions inputLanguages:(id)languages implicitSuggestions:(id)implicitSuggestions filterQuery:(id)self0 excludedMailboxes:(id)self1 customFlags:(id)self2 feedbackQueryID:(int64_t)self3 includeTopHitsAndInstantAnswers:(BOOL)self4;
@end

@implementation MUISearchSuggestionPhraseManager

+ (MUISearchSuggestionPhraseManager)phraseManagerWithPhrase:(id)phrase updatedSuggestion:(id)suggestion filterQuery:(id)query inputLanguages:(id)languages customFlags:(id)flags feedbackQueryID:(int64_t)d includeTopHitsAndInstantAnswers:(BOOL)answers
{
  flagsCopy = flags;
  languagesCopy = languages;
  queryCopy = query;
  suggestionCopy = suggestion;
  phraseCopy = phrase;
  LOBYTE(v22) = answers;
  v20 = [[self alloc] initWithPhrase:phraseCopy selectedSuggestions:0 vipManager:0 updatedSuggestion:suggestionCopy scopeIdentifierForPeopleSuggestions:0 inputLanguages:languagesCopy implicitSuggestions:0 filterQuery:queryCopy excludedMailboxes:0 customFlags:flagsCopy feedbackQueryID:d includeTopHitsAndInstantAnswers:v22];

  return v20;
}

- (MUISearchSuggestionPhraseManager)initWithPhrase:(id)phrase selectedSuggestions:(id)suggestions vipManager:(id)manager updatedSuggestion:(id)suggestion scopeIdentifierForPeopleSuggestions:(id)peopleSuggestions inputLanguages:(id)languages implicitSuggestions:(id)implicitSuggestions filterQuery:(id)self0 excludedMailboxes:(id)self1 customFlags:(id)self2 feedbackQueryID:(int64_t)self3 includeTopHitsAndInstantAnswers:(BOOL)self4
{
  phraseCopy = phrase;
  suggestionsCopy = suggestions;
  managerCopy = manager;
  v51 = suggestionsCopy;
  managerCopy2 = manager;
  obj = suggestion;
  suggestionCopy = suggestion;
  peopleSuggestionsCopy = peopleSuggestions;
  languagesCopy = languages;
  implicitSuggestionsCopy = implicitSuggestions;
  queryCopy = query;
  mailboxesCopy = mailboxes;
  flagsCopy = flags;
  v52.receiver = self;
  v52.super_class = MUISearchSuggestionPhraseManager;
  v28 = [(MUISearchSuggestionPhraseManager *)&v52 init];
  if (v28)
  {
    v29 = [phraseCopy copy];
    phrase = v28->_phrase;
    v28->_phrase = v29;

    v31 = [v51 copy];
    selectedSuggestions = v28->_selectedSuggestions;
    v28->_selectedSuggestions = v31;

    objc_storeStrong(&v28->_vipManager, managerCopy);
    objc_storeStrong(&v28->_updatedSuggestion, obj);
    v33 = [peopleSuggestionsCopy copy];
    scopeIdentifierForPeopleSuggestions = v28->_scopeIdentifierForPeopleSuggestions;
    v28->_scopeIdentifierForPeopleSuggestions = v33;

    v35 = [languagesCopy copy];
    inputLanguages = v28->_inputLanguages;
    v28->_inputLanguages = v35;

    v37 = [implicitSuggestionsCopy copy];
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

    v41 = [queryCopy copy];
    filterQuery = v28->_filterQuery;
    v28->_filterQuery = v41;

    v43 = [mailboxesCopy copy];
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
    objc_storeStrong(&v28->_customFlags, flags);
    v28->_feedbackQueryID = d;
    v28->_includeTopHitsAndInstantAnswers = answers;
  }

  return v28;
}

- (BOOL)hasPhraseOrSuggestions
{
  phrase = [(MUISearchSuggestionPhraseManager *)self phrase];
  if ([phrase length])
  {
    v4 = 1;
  }

  else
  {
    updatedSuggestion = [(MUISearchSuggestionPhraseManager *)self updatedSuggestion];
    suggestionTokens = [updatedSuggestion suggestionTokens];
    v4 = [suggestionTokens count] != 0;
  }

  return v4;
}

@end