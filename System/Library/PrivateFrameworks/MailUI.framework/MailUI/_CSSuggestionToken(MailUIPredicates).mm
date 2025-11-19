@interface _CSSuggestionToken(MailUIPredicates)
+ (id)log;
- (id)_flagColorPredicate;
- (id)mui_messageListSearchPredicate;
- (void)_flagColorPredicate;
@end

@implementation _CSSuggestionToken(MailUIPredicates)

+ (id)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43___CSSuggestionToken_MailUIPredicates__log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken != -1)
  {
    dispatch_once(&log_onceToken, block);
  }

  v1 = log_log;

  return v1;
}

- (id)mui_messageListSearchPredicate
{
  v2 = [a1 tokenKind];
  v3 = 0;
  if (v2 > 25)
  {
    if ((v2 - 26) < 7)
    {
      v4 = [a1 _flagColorPredicate];
LABEL_4:
      v3 = v4;
      goto LABEL_21;
    }

    if (v2 == 33)
    {
      v5 = [a1 itemSummary];
      v6 = [v5 _flagStatusPredicate];
    }

    else
    {
      if (v2 != 46)
      {
        goto LABEL_21;
      }

      v5 = [a1 itemSummary];
      v6 = [v5 _senderContainsPredicate];
    }

    goto LABEL_20;
  }

  if (v2 > 13)
  {
    switch(v2)
    {
      case 14:
        v5 = [a1 itemSummary];
        v6 = [v5 mui_messageListSearchPredicate];
        break;
      case 16:
        v5 = [a1 itemSummary];
        v6 = [v5 _personPredicate];
        break;
      case 19:
        v5 = [a1 itemSummary];
        v6 = [v5 _readStatusPredicate];
        break;
      default:
        goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v2 == 2)
  {
    v4 = [MEMORY[0x277D06E08] predicateForMessagesWithAttachments];
    goto LABEL_4;
  }

  if (v2 == 5)
  {
    v5 = [a1 itemSummary];
    v6 = [v5 _datePredicate];
LABEL_20:
    v3 = v6;
  }

LABEL_21:

  return v3;
}

- (id)_flagColorPredicate
{
  v2 = [a1 tokenKind];
  if (v2 <= 28)
  {
    switch(v2)
    {
      case 26:
        v3 = MEMORY[0x277D06E08];
        v4 = 0;
        goto LABEL_19;
      case 27:
        v3 = MEMORY[0x277D06E08];
        v4 = 1;
        goto LABEL_19;
      case 28:
        v3 = MEMORY[0x277D06E08];
        v4 = 2;
LABEL_19:
        v6 = [v3 predicateForFlagColor:v4];
        goto LABEL_20;
    }
  }

  else
  {
    if (v2 <= 30)
    {
      if (v2 == 29)
      {
        v3 = MEMORY[0x277D06E08];
        v4 = 3;
      }

      else
      {
        v3 = MEMORY[0x277D06E08];
        v4 = 4;
      }

      goto LABEL_19;
    }

    if (v2 == 31)
    {
      v3 = MEMORY[0x277D06E08];
      v4 = 5;
      goto LABEL_19;
    }

    if (v2 == 32)
    {
      v3 = MEMORY[0x277D06E08];
      v4 = 6;
      goto LABEL_19;
    }
  }

  v5 = [MEMORY[0x277CC3528] log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(_CSSuggestionToken(MailUIPredicates) *)a1 _flagColorPredicate];
  }

  v6 = 0;
LABEL_20:

  return v6;
}

- (void)_flagColorPredicate
{
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "tokenKind")}];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end