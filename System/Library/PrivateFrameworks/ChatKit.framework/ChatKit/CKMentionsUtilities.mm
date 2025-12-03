@interface CKMentionsUtilities
+ (BOOL)isPredictionBarAvailableForMentions;
+ (BOOL)isValidPostfixCharacter:(unsigned __int16)character;
+ (BOOL)metionedHandleMatchesMeCard:(id)card;
+ (BOOL)range:(_NSRange)range containsEmptySelectedRange:(_NSRange)selectedRange;
+ (BOOL)range:(_NSRange)range hasValidPostfixCharacterForString:(id)string;
+ (BOOL)range:(_NSRange)range isPrefixedWithAtForString:(id)string;
+ (BOOL)supportsSupplementalLexiconMentions;
+ (_NSRange)range:(_NSRange)range appendingSubstringRange:(_NSRange)substringRange;
+ (id)languagesWithoutSpaces;
+ (void)configureAttributedString:(id)string automaticMentionAttributeWithOriginalText:(id)text entityNode:(id)node nodeId:(id)id forRange:(_NSRange)range;
+ (void)configureAttributedString:(id)string inTextView:(id)view boldingFont:(BOOL)font inRange:(_NSRange)range;
+ (void)configureAttributedString:(id)string inTextView:(id)view forConfirmedMentionInRange:(_NSRange)range needingAnimation:(BOOL)animation;
+ (void)configureAttributedString:(id)string inTextView:(id)view forDirectMentionInRange:(_NSRange)range forChildNode:(id)node nodeId:(id)id addingVisualStyling:(BOOL)styling shouldAddAutoComplete:(BOOL)complete;
+ (void)configureAttributedString:(id)string inTextView:(id)view forNoMentionInRange:(_NSRange)range;
+ (void)configureAttributedString:(id)string inTextView:(id)view forUnconfirmedDirectMention:(id)mention inRange:(_NSRange)range addingVisualStyling:(BOOL)styling;
+ (void)configureAttributedString:(id)string inTextView:(id)view forUnconfirmedMentionInRange:(_NSRange)range;
+ (void)configureAttributedString:(id)string withParagraphStyleInTextView:(id)view inRange:(_NSRange)range;
+ (void)configureAttributedStringForMentionsChecking:(id)checking excludingRange:(const _NSRange *)range;
+ (void)hideMentionsInAttributedString:(id)string inTextView:(id)view;
+ (void)removeMentionsAtIndex:(int64_t)index onAttributedString:(id)string inTextView:(id)view;
+ (void)replaceAttributedString:(id)string withEntity:(id)entity fromInputText:(id)text inRange:(_NSRange)range updatingRange:(_NSRange *)updatingRange;
@end

@implementation CKMentionsUtilities

+ (BOOL)supportsSupplementalLexiconMentions
{
  mEMORY[0x1E69DCBF0] = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  currentInputMode = [mEMORY[0x1E69DCBF0] currentInputMode];
  isExtensionInputMode = [currentInputMode isExtensionInputMode];

  if (isExtensionInputMode)
  {
    v5 = 0;
  }

  else
  {
    activeInstance = [MEMORY[0x1E69DCBE0] activeInstance];
    if ([activeInstance predictionFromPreference])
    {
      v7 = UIKeyboardPredictionEnabledForCurrentInputMode();
    }

    else
    {
      v7 = 0;
    }

    v8 = NSSelectorFromString(&cfstr_Autocorrection_0.isa);
    activeInstance2 = [MEMORY[0x1E69DCBE0] activeInstance];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      activeInstance3 = [MEMORY[0x1E69DCBE0] activeInstance];
      v12 = [activeInstance3 v8];
    }

    else
    {
      v12 = 0;
    }

    activeInstance4 = [MEMORY[0x1E69DCBE0] activeInstance];
    displaysCandidates = [activeInstance4 displaysCandidates];

    v5 = v7 | v12 | displaysCandidates;
  }

  return v5 & 1;
}

+ (BOOL)isPredictionBarAvailableForMentions
{
  mEMORY[0x1E69DCBF0] = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  currentInputMode = [mEMORY[0x1E69DCBF0] currentInputMode];
  isExtensionInputMode = [currentInputMode isExtensionInputMode];

  if (isExtensionInputMode)
  {
    return 0;
  }

  activeInstance = [MEMORY[0x1E69DCBE0] activeInstance];
  isInHardwareKeyboardMode = [activeInstance isInHardwareKeyboardMode];

  if (isInHardwareKeyboardMode)
  {
    if (+[CKUtilities isIphone])
    {
      return 0;
    }

    activeKeyboardSceneDelegate = [MEMORY[0x1E69DCC08] activeKeyboardSceneDelegate];
    windowingModeEnabled = [activeKeyboardSceneDelegate windowingModeEnabled];

    if (windowingModeEnabled)
    {
      return 0;
    }
  }

  activeInstance2 = [MEMORY[0x1E69DCBE0] activeInstance];
  if ([activeInstance2 predictionFromPreference])
  {
    v11 = UIKeyboardPredictionEnabledForCurrentInputMode();

    if (v11)
    {
      return 1;
    }
  }

  else
  {
  }

  activeInstance3 = [MEMORY[0x1E69DCBE0] activeInstance];
  displaysCandidates = [activeInstance3 displaysCandidates];

  return displaysCandidates;
}

+ (BOOL)metionedHandleMatchesMeCard:(id)card
{
  v3 = MEMORY[0x1E69A5A80];
  cardCopy = card;
  sharedInstance = [v3 sharedInstance];
  v6 = [sharedInstance metionedHandleMatchesMeCard:cardCopy];

  return v6;
}

+ (void)replaceAttributedString:(id)string withEntity:(id)entity fromInputText:(id)text inRange:(_NSRange)range updatingRange:(_NSRange *)updatingRange
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  textCopy = text;
  entityCopy = entity;
  mentionsHandleID = [entityCopy mentionsHandleID];
  v15 = [entityCopy displayNameMatchingInputText:textCopy];

  if ([v15 length])
  {
    [stringCopy replaceCharactersInRange:location withString:{length, v15}];
    v16 = [v15 length];
    updatingRange->location = location;
    updatingRange->length = v16;
  }

  else
  {
    location = updatingRange->location;
    v16 = updatingRange->length;
  }

  [stringCopy addAttribute:*MEMORY[0x1E69A70F8] value:mentionsHandleID range:{location, v16}];
}

+ (void)configureAttributedString:(id)string inTextView:(id)view boldingFont:(BOOL)font inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  fontCopy = font;
  stringCopy = string;
  viewCopy = view;
  font = [viewCopy font];
  fontDescriptor = [font fontDescriptor];
  symbolicTraits = [fontDescriptor symbolicTraits];

  v15 = symbolicTraits & 0xFFFFFFFD;
  if (fontCopy)
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  font2 = [viewCopy font];
  fontDescriptor2 = [font2 fontDescriptor];
  v19 = [fontDescriptor2 fontDescriptorWithSymbolicTraits:v15 | v16];

  v20 = MEMORY[0x1E69DB878];
  font3 = [viewCopy font];

  [font3 pointSize];
  v22 = [v20 fontWithDescriptor:v19 size:?];

  if (stringCopy && v22 && length)
  {
    [stringCopy addAttribute:*MEMORY[0x1E69DB648] value:v22 range:{location, length}];
  }

  else
  {
    v23 = IMLogHandleForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24.location = location;
      v24.length = length;
      [CKMentionsUtilities configureAttributedString:v22 inTextView:v24 boldingFont:v23 inRange:?];
    }
  }
}

+ (void)configureAttributedString:(id)string withParagraphStyleInTextView:(id)view inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  typingAttributes = [view typingAttributes];
  v9 = *MEMORY[0x1E69DB688];
  v10 = [typingAttributes objectForKeyedSubscript:*MEMORY[0x1E69DB688]];

  if (v10)
  {
    [stringCopy addAttribute:v9 value:v10 range:{location, length}];
  }
}

+ (void)configureAttributedString:(id)string inTextView:(id)view forConfirmedMentionInRange:(_NSRange)range needingAnimation:(BOOL)animation
{
  animationCopy = animation;
  length = range.length;
  location = range.location;
  stringCopy = string;
  viewCopy = view;
  [stringCopy addAttribute:*MEMORY[0x1E69A70C8] value:&stru_1F04268F8 range:{location, length}];
  [stringCopy removeAttribute:*MEMORY[0x1E69A7110] range:{location, length}];
  [stringCopy removeAttribute:*MEMORY[0x1E69A70D8] range:{location, length}];
  v12 = +[CKUIBehavior sharedBehaviors];
  theme = [v12 theme];
  entryFieldConfirmedMentionColor = [theme entryFieldConfirmedMentionColor];

  if (animationCopy)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    [stringCopy addAttribute:*MEMORY[0x1E69A70D0] value:uUIDString range:{location, length}];
  }

  [self configureAttributedString:stringCopy inTextView:viewCopy boldingFont:1 inRange:{location, length}];
  [self configureAttributedString:stringCopy withFontColor:entryFieldConfirmedMentionColor forRange:{location, length}];
  [self configureAttributedString:stringCopy withParagraphStyleInTextView:viewCopy inRange:{location, length}];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (isExpressiveTextEnabled && [viewCopy allowsTextAnimations])
  {
    [stringCopy ck_removeTextStyle:2 options:3 range:{location, length}];
    [stringCopy ck_removeTextStyle:4 options:3 range:{location, length}];
    [stringCopy ck_removeTextStyle:8 options:3 range:{location, length}];
    [stringCopy ck_removeTextStyle:1 options:1 range:{location, length}];
  }
}

+ (void)configureAttributedString:(id)string inTextView:(id)view forNoMentionInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v9 = *MEMORY[0x1E69A70D0];
  viewCopy = view;
  stringCopy = string;
  [stringCopy removeAttribute:v9 range:{location, length}];
  [stringCopy removeAttribute:*MEMORY[0x1E69A70C8] range:{location, length}];
  [stringCopy removeAttribute:*MEMORY[0x1E69A70F8] range:{location, length}];
  [stringCopy removeAttribute:*MEMORY[0x1E69A7100] range:{location, length}];
  [stringCopy removeAttribute:*MEMORY[0x1E69A7108] range:{location, length}];
  [stringCopy removeAttribute:*MEMORY[0x1E69A7110] range:{location, length}];
  [self configureAttributedString:stringCopy inTextView:viewCopy boldingFont:0 inRange:{location, length}];
  v11 = +[CKUIBehavior sharedBehaviors];
  theme = [v11 theme];
  entryFieldTextColor = [theme entryFieldTextColor];
  [self configureAttributedString:stringCopy withFontColor:entryFieldTextColor forRange:{location, length}];

  [self configureAttributedString:stringCopy withParagraphStyleInTextView:viewCopy inRange:{location, length}];
}

+ (void)hideMentionsInAttributedString:(id)string inTextView:(id)view
{
  stringCopy = string;
  viewCopy = view;
  v7 = [stringCopy length];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  v10 = MEMORY[0x1E69A70C8];
  v11 = MEMORY[0x1E69A70D0];
  if (!isExpressiveTextEnabled || ![viewCopy allowsTextAnimations] || (v12 = objc_msgSend(self, "attributedString:containsConfirmedMentionInRange:", stringCopy, 0, v7), v13 = objc_msgSend(stringCopy, "attribute:existsInRange:", *v10, 0, v7), v14 = objc_msgSend(stringCopy, "attribute:existsInRange:", *v11, 0, v7), (v12 & 1) != 0) || (v13 & 1) != 0 || v14)
  {
    [stringCopy removeAttribute:*v10 range:{0, v7}];
    [stringCopy removeAttribute:*v11 range:{0, v7}];
    [self configureAttributedString:stringCopy inTextView:viewCopy boldingFont:0 inRange:{0, v7}];
    v15 = +[CKUIBehavior sharedBehaviors];
    theme = [v15 theme];
    entryFieldTextColor = [theme entryFieldTextColor];
    [self configureAttributedString:stringCopy withFontColor:entryFieldTextColor forRange:{0, v7}];

    [self configureAttributedString:stringCopy withParagraphStyleInTextView:viewCopy inRange:{0, v7}];
  }
}

+ (void)configureAttributedStringForMentionsChecking:(id)checking excludingRange:(const _NSRange *)range
{
  checkingCopy = checking;
  v25 = checkingCopy;
  if (range && (location = range->location, range->location != 0x7FFFFFFFFFFFFFFFLL))
  {
    v16 = [checkingCopy length];
    if (location >= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = location;
    }

    v18 = range->length + range->location;
    v19 = [v25 length];
    if (v18 >= v19)
    {
      v18 = v19;
    }

    v20 = [v25 length] - v18;
    v21 = *MEMORY[0x1E69A70C8];
    [v25 removeAttribute:*MEMORY[0x1E69A70C8] range:{0, v17}];
    [v25 removeAttribute:v21 range:{v18, v20}];
    v22 = +[CKUIBehavior sharedBehaviors];
    theme = [v22 theme];
    entryFieldTextColor = [theme entryFieldTextColor];
    [self configureAttributedString:v25 withFontColor:entryFieldTextColor forRange:{0, v17}];

    v8 = +[CKUIBehavior sharedBehaviors];
    theme2 = [v8 theme];
    entryFieldTextColor2 = [theme2 entryFieldTextColor];
    selfCopy2 = self;
    v13 = v25;
    v14 = entryFieldTextColor2;
    v15 = v18;
    v11 = v20;
  }

  else
  {
    [checkingCopy removeAttribute:*MEMORY[0x1E69A70C8] range:{0, objc_msgSend(checkingCopy, "length")}];
    v8 = +[CKUIBehavior sharedBehaviors];
    theme2 = [v8 theme];
    entryFieldTextColor2 = [theme2 entryFieldTextColor];
    v11 = [v25 length];
    selfCopy2 = self;
    v13 = v25;
    v14 = entryFieldTextColor2;
    v15 = 0;
  }

  [selfCopy2 configureAttributedString:v13 withFontColor:v14 forRange:{v15, v11}];
}

+ (_NSRange)range:(_NSRange)range appendingSubstringRange:(_NSRange)substringRange
{
  if (range.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    location = substringRange.location;
  }

  else
  {
    location = range.location;
  }

  v5 = substringRange.location + substringRange.length - location;
  result.length = v5;
  result.location = location;
  return result;
}

+ (BOOL)range:(_NSRange)range isPrefixedWithAtForString:(id)string
{
  location = range.location;
  stringCopy = string;
  v6 = stringCopy;
  v7 = location < 1;
  v8 = location - 1;
  v9 = !v7 && v8 < [stringCopy length] && objc_msgSend(v6, "characterAtIndex:", v8) == 64;

  return v9;
}

+ (BOOL)range:(_NSRange)range hasValidPostfixCharacterForString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  v8 = stringCopy;
  v9 = location + length;
  if (v9 < 0 || v9 >= [stringCopy length])
  {
    v10 = 0;
  }

  else
  {
    v10 = [self isValidPostfixCharacter:{objc_msgSend(v8, "characterAtIndex:", v9)}];
  }

  return v10;
}

+ (BOOL)range:(_NSRange)range containsEmptySelectedRange:(_NSRange)selectedRange
{
  v4 = selectedRange.location <= range.location + range.length;
  if (selectedRange.location < range.location)
  {
    v4 = 0;
  }

  if (!range.length)
  {
    v4 = 0;
  }

  return !selectedRange.length && v4;
}

+ (BOOL)isValidPostfixCharacter:(unsigned __int16)character
{
  characterCopy = character;
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  if ([whitespaceAndNewlineCharacterSet characterIsMember:characterCopy])
  {
    v5 = 1;
  }

  else
  {
    punctuationCharacterSet = [MEMORY[0x1E696AB08] punctuationCharacterSet];
    v5 = [punctuationCharacterSet characterIsMember:characterCopy];
  }

  return v5;
}

+ (void)configureAttributedString:(id)string automaticMentionAttributeWithOriginalText:(id)text entityNode:(id)node nodeId:(id)id forRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  idCopy = id;
  stringCopy = string;
  string = [stringCopy string];
  v14 = [string substringWithRange:{location, length}];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (textCopy)
  {
    v16 = [textCopy copy];
    [dictionary setObject:v16 forKeyedSubscript:*MEMORY[0x1E69A70F0]];
  }

  if (v14)
  {
    v17 = [v14 copy];
    [dictionary setObject:v17 forKeyedSubscript:*MEMORY[0x1E69A70E0]];
  }

  if (idCopy)
  {
    keys = [idCopy keys];
    [dictionary setObject:keys forKeyedSubscript:*MEMORY[0x1E69A70E8]];
  }

  v19 = *MEMORY[0x1E69A70D8];
  v20 = [dictionary copy];
  [stringCopy addAttribute:v19 value:v20 range:{location, length}];
}

+ (void)configureAttributedString:(id)string inTextView:(id)view forDirectMentionInRange:(_NSRange)range forChildNode:(id)node nodeId:(id)id addingVisualStyling:(BOOL)styling shouldAddAutoComplete:(BOOL)complete
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  nodeCopy = node;
  idCopy = id;
  viewCopy = view;
  string = [stringCopy string];
  v19 = [string substringWithRange:{location, length}];

  v20 = location - 1;
  [self configureAttributedString:stringCopy inTextView:viewCopy forUnconfirmedDirectMention:v19 inRange:v20 addingVisualStyling:{length + 1, styling}];

  if (complete)
  {
    [self configureAttributedString:stringCopy automaticMentionAttributeWithOriginalText:v19 entityNode:nodeCopy nodeId:idCopy forRange:{v20, length + 1}];
  }
}

+ (void)configureAttributedString:(id)string inTextView:(id)view forUnconfirmedDirectMention:(id)mention inRange:(_NSRange)range addingVisualStyling:(BOOL)styling
{
  stylingCopy = styling;
  length = range.length;
  location = range.location;
  stringCopy = string;
  mentionCopy = mention;
  viewCopy = view;
  string = [stringCopy string];
  v16 = [string substringWithRange:{location, length}];

  [stringCopy addAttribute:*MEMORY[0x1E69A70C8] value:v16 range:{location, length}];
  [stringCopy addAttribute:*MEMORY[0x1E69A7110] value:mentionCopy range:{location, length}];

  [stringCopy removeAttribute:*MEMORY[0x1E69A70F8] range:{location, length}];
  [stringCopy removeAttribute:*MEMORY[0x1E69A7100] range:{location, length}];
  [self configureAttributedString:stringCopy inTextView:viewCopy boldingFont:0 inRange:{location, length}];
  [self configureAttributedString:stringCopy withParagraphStyleInTextView:viewCopy inRange:{location, length}];

  if (stylingCopy)
  {
    v17 = +[CKUIBehavior sharedBehaviors];
    theme = [v17 theme];
    entryFieldUnconfirmedMentionColor = [theme entryFieldUnconfirmedMentionColor];
    [self configureAttributedString:stringCopy withFontColor:entryFieldUnconfirmedMentionColor forRange:{location, length}];
  }
}

+ (void)removeMentionsAtIndex:(int64_t)index onAttributedString:(id)string inTextView:(id)view
{
  stringCopy = string;
  viewCopy = view;
  if ((index & 0x8000000000000000) == 0 && [stringCopy length] > index)
  {
    v11 = 0;
    v12 = 0;
    v10 = [stringCopy attribute:*MEMORY[0x1E69A70C8] atIndex:index longestEffectiveRange:&v11 inRange:{0, objc_msgSend(stringCopy, "length")}];

    if (v10)
    {
      [self configureAttributedString:stringCopy inTextView:viewCopy forNoMentionInRange:{v11, v12}];
    }
  }
}

+ (void)configureAttributedString:(id)string inTextView:(id)view forUnconfirmedMentionInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  viewCopy = view;
  stringCopy = string;
  string = [stringCopy string];
  v15 = [string substringWithRange:{location, length}];

  [stringCopy addAttribute:*MEMORY[0x1E69A70C8] value:v15 range:{location, length}];
  [stringCopy removeAttribute:*MEMORY[0x1E69A70F8] range:{location, length}];
  [stringCopy removeAttribute:*MEMORY[0x1E69A7100] range:{location, length}];
  [self configureAttributedString:stringCopy inTextView:viewCopy boldingFont:0 inRange:{location, length}];
  [self configureAttributedString:stringCopy withParagraphStyleInTextView:viewCopy inRange:{location, length}];

  v12 = +[CKUIBehavior sharedBehaviors];
  theme = [v12 theme];
  entryFieldUnconfirmedMentionColor = [theme entryFieldUnconfirmedMentionColor];
  [self configureAttributedString:stringCopy withFontColor:entryFieldUnconfirmedMentionColor forRange:{location, length}];
}

+ (id)languagesWithoutSpaces
{
  if (languagesWithoutSpaces_once != -1)
  {
    +[CKMentionsUtilities languagesWithoutSpaces];
  }

  v3 = languagesWithoutSpaces_sLanguages;

  return v3;
}

void __45__CKMentionsUtilities_languagesWithoutSpaces__block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"zh", @"yue", @"ja", @"th", 0}];
  v1 = languagesWithoutSpaces_sLanguages;
  languagesWithoutSpaces_sLanguages = v0;
}

+ (void)configureAttributedString:(NSObject *)a3 inTextView:boldingFont:inRange:.cold.1(uint64_t a1, NSRange range, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromRange(range);
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_19020E000, a3, OS_LOG_TYPE_ERROR, "Attempted to call addAttribute with value:%@ for range:%@", &v6, 0x16u);
}

@end