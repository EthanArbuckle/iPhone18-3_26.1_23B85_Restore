@interface EMListUnsubscribeSuggestion
- (BOOL)isEqual:(id)a3;
- (NSString)unsubscribeMessageAlertString;
- (SGSuggestionDelegate)suggestionDelegate;
- (SGSuggestionPresenter)suggestionPresenter;
- (id)suggestionCategoryLocalizedCountOfItems:(id)a3;
- (id)suggestionCategoryTitleForItems:(id)a3;
- (id)suggestionComparator;
- (unint64_t)hash;
- (void)_sendAnalyticsForUnsubscribe:(int64_t)a3;
- (void)ignore;
- (void)unsubscribe;
@end

@implementation EMListUnsubscribeSuggestion

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(EMListUnsubscribeSuggestion *)self listUnsubscribeCommand];
    v6 = [v4 listUnsubscribeCommand];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(EMListUnsubscribeSuggestion *)self listUnsubscribeCommand];
  v3 = [v2 hash];

  return v3;
}

- (NSString)unsubscribeMessageAlertString
{
  v3 = [(EMListUnsubscribeSuggestion *)self shouldShowICloudUnsubscribe];
  v4 = [(EMListUnsubscribeSuggestion *)self listUnsubscribeCommand];
  [v4 isMailtoOperation];

  if (v3)
  {
    _EFLocalizedStringFromTable();
  }

  else
  {
    _EFLocalizedString();
  }
  v5 = ;

  return v5;
}

- (id)suggestionCategoryLocalizedCountOfItems:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  v5 = MEMORY[0x1E696AEC0];
  v6 = _EFLocalizedString();
  v7 = [MEMORY[0x1E696ADA0] ef_formatInteger:v4 withGrouping:0];
  v8 = [v5 localizedStringWithFormat:v6, v4, v7];

  return v8;
}

- (id)suggestionCategoryTitleForItems:(id)a3
{
  v3 = [(EMListUnsubscribeSuggestion *)self suggestionTitle];

  return v3;
}

- (id)suggestionComparator
{
  v2 = objc_opt_class();

  return [v2 unsubscribeSuggestionComparator];
}

- (void)unsubscribe
{
  v3 = [(EMListUnsubscribeSuggestion *)self suggestionPresenter];
  v4 = [(EMListUnsubscribeSuggestion *)self suggestion];
  [v3 removeSuggestion:v4];

  [(EMListUnsubscribeSuggestion *)self _sendAnalyticsForUnsubscribe:1];
}

- (void)ignore
{
  v3 = [(EMListUnsubscribeSuggestion *)self suggestionPresenter];
  v4 = [(EMListUnsubscribeSuggestion *)self suggestion];
  [v3 removeSuggestion:v4];

  [(EMListUnsubscribeSuggestion *)self _sendAnalyticsForUnsubscribe:0];
}

uint64_t __62__EMListUnsubscribeSuggestion_unsubscribeSuggestionComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v7 = objc_opt_isKindOfClass();
  if ((isKindOfClass ^ 1 | v7))
  {
    v8 = ((v7 & (isKindOfClass ^ 1u)) << 63) >> 63;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)_sendAnalyticsForUnsubscribe:(int64_t)a3
{
  v3 = [(EMListUnsubscribeSuggestion *)self listUnsubscribeCommand];
  [v3 headerUnsubscribeTypes];

  AnalyticsSendEventLazy();
}

id __60__EMListUnsubscribeSuggestion__sendAnalyticsForUnsubscribe___block_invoke(uint64_t a1)
{
  v15[4] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695E118];
  v3 = MEMORY[0x1E695E110];
  if (*(a1 + 32))
  {
    v4 = MEMORY[0x1E695E118];
  }

  else
  {
    v4 = MEMORY[0x1E695E110];
  }

  v5 = v4;
  if ((*(a1 + 32) & 2) != 0)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;
  if ((*(a1 + 32) & 4) != 0)
  {
    v8 = v2;
  }

  else
  {
    v8 = v3;
  }

  v9 = v8;
  v14[0] = @"unsubscribeReason";
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
  v15[0] = v10;
  v15[1] = v5;
  v14[1] = @"mailto";
  v14[2] = @"https";
  v14[3] = @"post";
  v15[2] = v7;
  v15[3] = v9;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (SGSuggestionDelegate)suggestionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->suggestionDelegate);

  return WeakRetained;
}

- (SGSuggestionPresenter)suggestionPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_suggestionPresenter);

  return WeakRetained;
}

@end