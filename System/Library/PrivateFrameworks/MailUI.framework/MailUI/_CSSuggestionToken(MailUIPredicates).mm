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
  block[4] = self;
  if (log_onceToken != -1)
  {
    dispatch_once(&log_onceToken, block);
  }

  v1 = log_log;

  return v1;
}

- (id)mui_messageListSearchPredicate
{
  tokenKind = [self tokenKind];
  v3 = 0;
  if (tokenKind > 25)
  {
    if ((tokenKind - 26) < 7)
    {
      _flagColorPredicate = [self _flagColorPredicate];
LABEL_4:
      v3 = _flagColorPredicate;
      goto LABEL_21;
    }

    if (tokenKind == 33)
    {
      itemSummary = [self itemSummary];
      _flagStatusPredicate = [itemSummary _flagStatusPredicate];
    }

    else
    {
      if (tokenKind != 46)
      {
        goto LABEL_21;
      }

      itemSummary = [self itemSummary];
      _flagStatusPredicate = [itemSummary _senderContainsPredicate];
    }

    goto LABEL_20;
  }

  if (tokenKind > 13)
  {
    switch(tokenKind)
    {
      case 14:
        itemSummary = [self itemSummary];
        _flagStatusPredicate = [itemSummary mui_messageListSearchPredicate];
        break;
      case 16:
        itemSummary = [self itemSummary];
        _flagStatusPredicate = [itemSummary _personPredicate];
        break;
      case 19:
        itemSummary = [self itemSummary];
        _flagStatusPredicate = [itemSummary _readStatusPredicate];
        break;
      default:
        goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (tokenKind == 2)
  {
    _flagColorPredicate = [MEMORY[0x277D06E08] predicateForMessagesWithAttachments];
    goto LABEL_4;
  }

  if (tokenKind == 5)
  {
    itemSummary = [self itemSummary];
    _flagStatusPredicate = [itemSummary _datePredicate];
LABEL_20:
    v3 = _flagStatusPredicate;
  }

LABEL_21:

  return v3;
}

- (id)_flagColorPredicate
{
  tokenKind = [self tokenKind];
  if (tokenKind <= 28)
  {
    switch(tokenKind)
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
    if (tokenKind <= 30)
    {
      if (tokenKind == 29)
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

    if (tokenKind == 31)
    {
      v3 = MEMORY[0x277D06E08];
      v4 = 5;
      goto LABEL_19;
    }

    if (tokenKind == 32)
    {
      v3 = MEMORY[0x277D06E08];
      v4 = 6;
      goto LABEL_19;
    }
  }

  v5 = [MEMORY[0x277CC3528] log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(_CSSuggestionToken(MailUIPredicates) *)self _flagColorPredicate];
  }

  v6 = 0;
LABEL_20:

  return v6;
}

- (void)_flagColorPredicate
{
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "tokenKind")}];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end