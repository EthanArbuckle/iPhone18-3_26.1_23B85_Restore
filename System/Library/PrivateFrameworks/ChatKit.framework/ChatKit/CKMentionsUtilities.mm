@interface CKMentionsUtilities
+ (BOOL)isPredictionBarAvailableForMentions;
+ (BOOL)isValidPostfixCharacter:(unsigned __int16)a3;
+ (BOOL)metionedHandleMatchesMeCard:(id)a3;
+ (BOOL)range:(_NSRange)a3 containsEmptySelectedRange:(_NSRange)a4;
+ (BOOL)range:(_NSRange)a3 hasValidPostfixCharacterForString:(id)a4;
+ (BOOL)range:(_NSRange)a3 isPrefixedWithAtForString:(id)a4;
+ (BOOL)supportsSupplementalLexiconMentions;
+ (_NSRange)range:(_NSRange)a3 appendingSubstringRange:(_NSRange)a4;
+ (id)languagesWithoutSpaces;
+ (void)configureAttributedString:(id)a3 automaticMentionAttributeWithOriginalText:(id)a4 entityNode:(id)a5 nodeId:(id)a6 forRange:(_NSRange)a7;
+ (void)configureAttributedString:(id)a3 inTextView:(id)a4 boldingFont:(BOOL)a5 inRange:(_NSRange)a6;
+ (void)configureAttributedString:(id)a3 inTextView:(id)a4 forConfirmedMentionInRange:(_NSRange)a5 needingAnimation:(BOOL)a6;
+ (void)configureAttributedString:(id)a3 inTextView:(id)a4 forDirectMentionInRange:(_NSRange)a5 forChildNode:(id)a6 nodeId:(id)a7 addingVisualStyling:(BOOL)a8 shouldAddAutoComplete:(BOOL)a9;
+ (void)configureAttributedString:(id)a3 inTextView:(id)a4 forNoMentionInRange:(_NSRange)a5;
+ (void)configureAttributedString:(id)a3 inTextView:(id)a4 forUnconfirmedDirectMention:(id)a5 inRange:(_NSRange)a6 addingVisualStyling:(BOOL)a7;
+ (void)configureAttributedString:(id)a3 inTextView:(id)a4 forUnconfirmedMentionInRange:(_NSRange)a5;
+ (void)configureAttributedString:(id)a3 withParagraphStyleInTextView:(id)a4 inRange:(_NSRange)a5;
+ (void)configureAttributedStringForMentionsChecking:(id)a3 excludingRange:(const _NSRange *)a4;
+ (void)hideMentionsInAttributedString:(id)a3 inTextView:(id)a4;
+ (void)removeMentionsAtIndex:(int64_t)a3 onAttributedString:(id)a4 inTextView:(id)a5;
+ (void)replaceAttributedString:(id)a3 withEntity:(id)a4 fromInputText:(id)a5 inRange:(_NSRange)a6 updatingRange:(_NSRange *)a7;
@end

@implementation CKMentionsUtilities

+ (BOOL)supportsSupplementalLexiconMentions
{
  v2 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  v3 = [v2 currentInputMode];
  v4 = [v3 isExtensionInputMode];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E69DCBE0] activeInstance];
    if ([v6 predictionFromPreference])
    {
      v7 = UIKeyboardPredictionEnabledForCurrentInputMode();
    }

    else
    {
      v7 = 0;
    }

    v8 = NSSelectorFromString(&cfstr_Autocorrection_0.isa);
    v9 = [MEMORY[0x1E69DCBE0] activeInstance];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [MEMORY[0x1E69DCBE0] activeInstance];
      v12 = [v11 v8];
    }

    else
    {
      v12 = 0;
    }

    v13 = [MEMORY[0x1E69DCBE0] activeInstance];
    v14 = [v13 displaysCandidates];

    v5 = v7 | v12 | v14;
  }

  return v5 & 1;
}

+ (BOOL)isPredictionBarAvailableForMentions
{
  v2 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  v3 = [v2 currentInputMode];
  v4 = [v3 isExtensionInputMode];

  if (v4)
  {
    return 0;
  }

  v6 = [MEMORY[0x1E69DCBE0] activeInstance];
  v7 = [v6 isInHardwareKeyboardMode];

  if (v7)
  {
    if (+[CKUtilities isIphone])
    {
      return 0;
    }

    v8 = [MEMORY[0x1E69DCC08] activeKeyboardSceneDelegate];
    v9 = [v8 windowingModeEnabled];

    if (v9)
    {
      return 0;
    }
  }

  v10 = [MEMORY[0x1E69DCBE0] activeInstance];
  if ([v10 predictionFromPreference])
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

  v12 = [MEMORY[0x1E69DCBE0] activeInstance];
  v13 = [v12 displaysCandidates];

  return v13;
}

+ (BOOL)metionedHandleMatchesMeCard:(id)a3
{
  v3 = MEMORY[0x1E69A5A80];
  v4 = a3;
  v5 = [v3 sharedInstance];
  v6 = [v5 metionedHandleMatchesMeCard:v4];

  return v6;
}

+ (void)replaceAttributedString:(id)a3 withEntity:(id)a4 fromInputText:(id)a5 inRange:(_NSRange)a6 updatingRange:(_NSRange *)a7
{
  length = a6.length;
  location = a6.location;
  v17 = a3;
  v12 = a5;
  v13 = a4;
  v14 = [v13 mentionsHandleID];
  v15 = [v13 displayNameMatchingInputText:v12];

  if ([v15 length])
  {
    [v17 replaceCharactersInRange:location withString:{length, v15}];
    v16 = [v15 length];
    a7->location = location;
    a7->length = v16;
  }

  else
  {
    location = a7->location;
    v16 = a7->length;
  }

  [v17 addAttribute:*MEMORY[0x1E69A70F8] value:v14 range:{location, v16}];
}

+ (void)configureAttributedString:(id)a3 inTextView:(id)a4 boldingFont:(BOOL)a5 inRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v8 = a5;
  v10 = a3;
  v11 = a4;
  v12 = [v11 font];
  v13 = [v12 fontDescriptor];
  v14 = [v13 symbolicTraits];

  v15 = v14 & 0xFFFFFFFD;
  if (v8)
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  v17 = [v11 font];
  v18 = [v17 fontDescriptor];
  v19 = [v18 fontDescriptorWithSymbolicTraits:v15 | v16];

  v20 = MEMORY[0x1E69DB878];
  v21 = [v11 font];

  [v21 pointSize];
  v22 = [v20 fontWithDescriptor:v19 size:?];

  if (v10 && v22 && length)
  {
    [v10 addAttribute:*MEMORY[0x1E69DB648] value:v22 range:{location, length}];
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

+ (void)configureAttributedString:(id)a3 withParagraphStyleInTextView:(id)a4 inRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v11 = a3;
  v8 = [a4 typingAttributes];
  v9 = *MEMORY[0x1E69DB688];
  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69DB688]];

  if (v10)
  {
    [v11 addAttribute:v9 value:v10 range:{location, length}];
  }
}

+ (void)configureAttributedString:(id)a3 inTextView:(id)a4 forConfirmedMentionInRange:(_NSRange)a5 needingAnimation:(BOOL)a6
{
  v6 = a6;
  length = a5.length;
  location = a5.location;
  v19 = a3;
  v11 = a4;
  [v19 addAttribute:*MEMORY[0x1E69A70C8] value:&stru_1F04268F8 range:{location, length}];
  [v19 removeAttribute:*MEMORY[0x1E69A7110] range:{location, length}];
  [v19 removeAttribute:*MEMORY[0x1E69A70D8] range:{location, length}];
  v12 = +[CKUIBehavior sharedBehaviors];
  v13 = [v12 theme];
  v14 = [v13 entryFieldConfirmedMentionColor];

  if (v6)
  {
    v15 = [MEMORY[0x1E696AFB0] UUID];
    v16 = [v15 UUIDString];

    [v19 addAttribute:*MEMORY[0x1E69A70D0] value:v16 range:{location, length}];
  }

  [a1 configureAttributedString:v19 inTextView:v11 boldingFont:1 inRange:{location, length}];
  [a1 configureAttributedString:v19 withFontColor:v14 forRange:{location, length}];
  [a1 configureAttributedString:v19 withParagraphStyleInTextView:v11 inRange:{location, length}];
  v17 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v18 = [v17 isExpressiveTextEnabled];

  if (v18 && [v11 allowsTextAnimations])
  {
    [v19 ck_removeTextStyle:2 options:3 range:{location, length}];
    [v19 ck_removeTextStyle:4 options:3 range:{location, length}];
    [v19 ck_removeTextStyle:8 options:3 range:{location, length}];
    [v19 ck_removeTextStyle:1 options:1 range:{location, length}];
  }
}

+ (void)configureAttributedString:(id)a3 inTextView:(id)a4 forNoMentionInRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v9 = *MEMORY[0x1E69A70D0];
  v10 = a4;
  v14 = a3;
  [v14 removeAttribute:v9 range:{location, length}];
  [v14 removeAttribute:*MEMORY[0x1E69A70C8] range:{location, length}];
  [v14 removeAttribute:*MEMORY[0x1E69A70F8] range:{location, length}];
  [v14 removeAttribute:*MEMORY[0x1E69A7100] range:{location, length}];
  [v14 removeAttribute:*MEMORY[0x1E69A7108] range:{location, length}];
  [v14 removeAttribute:*MEMORY[0x1E69A7110] range:{location, length}];
  [a1 configureAttributedString:v14 inTextView:v10 boldingFont:0 inRange:{location, length}];
  v11 = +[CKUIBehavior sharedBehaviors];
  v12 = [v11 theme];
  v13 = [v12 entryFieldTextColor];
  [a1 configureAttributedString:v14 withFontColor:v13 forRange:{location, length}];

  [a1 configureAttributedString:v14 withParagraphStyleInTextView:v10 inRange:{location, length}];
}

+ (void)hideMentionsInAttributedString:(id)a3 inTextView:(id)a4
{
  v18 = a3;
  v6 = a4;
  v7 = [v18 length];
  v8 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v9 = [v8 isExpressiveTextEnabled];

  v10 = MEMORY[0x1E69A70C8];
  v11 = MEMORY[0x1E69A70D0];
  if (!v9 || ![v6 allowsTextAnimations] || (v12 = objc_msgSend(a1, "attributedString:containsConfirmedMentionInRange:", v18, 0, v7), v13 = objc_msgSend(v18, "attribute:existsInRange:", *v10, 0, v7), v14 = objc_msgSend(v18, "attribute:existsInRange:", *v11, 0, v7), (v12 & 1) != 0) || (v13 & 1) != 0 || v14)
  {
    [v18 removeAttribute:*v10 range:{0, v7}];
    [v18 removeAttribute:*v11 range:{0, v7}];
    [a1 configureAttributedString:v18 inTextView:v6 boldingFont:0 inRange:{0, v7}];
    v15 = +[CKUIBehavior sharedBehaviors];
    v16 = [v15 theme];
    v17 = [v16 entryFieldTextColor];
    [a1 configureAttributedString:v18 withFontColor:v17 forRange:{0, v7}];

    [a1 configureAttributedString:v18 withParagraphStyleInTextView:v6 inRange:{0, v7}];
  }
}

+ (void)configureAttributedStringForMentionsChecking:(id)a3 excludingRange:(const _NSRange *)a4
{
  v6 = a3;
  v25 = v6;
  if (a4 && (location = a4->location, a4->location != 0x7FFFFFFFFFFFFFFFLL))
  {
    v16 = [v6 length];
    if (location >= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = location;
    }

    v18 = a4->length + a4->location;
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
    v23 = [v22 theme];
    v24 = [v23 entryFieldTextColor];
    [a1 configureAttributedString:v25 withFontColor:v24 forRange:{0, v17}];

    v8 = +[CKUIBehavior sharedBehaviors];
    v9 = [v8 theme];
    v10 = [v9 entryFieldTextColor];
    v12 = a1;
    v13 = v25;
    v14 = v10;
    v15 = v18;
    v11 = v20;
  }

  else
  {
    [v6 removeAttribute:*MEMORY[0x1E69A70C8] range:{0, objc_msgSend(v6, "length")}];
    v8 = +[CKUIBehavior sharedBehaviors];
    v9 = [v8 theme];
    v10 = [v9 entryFieldTextColor];
    v11 = [v25 length];
    v12 = a1;
    v13 = v25;
    v14 = v10;
    v15 = 0;
  }

  [v12 configureAttributedString:v13 withFontColor:v14 forRange:{v15, v11}];
}

+ (_NSRange)range:(_NSRange)a3 appendingSubstringRange:(_NSRange)a4
{
  if (a3.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    location = a4.location;
  }

  else
  {
    location = a3.location;
  }

  v5 = a4.location + a4.length - location;
  result.length = v5;
  result.location = location;
  return result;
}

+ (BOOL)range:(_NSRange)a3 isPrefixedWithAtForString:(id)a4
{
  location = a3.location;
  v5 = a4;
  v6 = v5;
  v7 = location < 1;
  v8 = location - 1;
  v9 = !v7 && v8 < [v5 length] && objc_msgSend(v6, "characterAtIndex:", v8) == 64;

  return v9;
}

+ (BOOL)range:(_NSRange)a3 hasValidPostfixCharacterForString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = v7;
  v9 = location + length;
  if (v9 < 0 || v9 >= [v7 length])
  {
    v10 = 0;
  }

  else
  {
    v10 = [a1 isValidPostfixCharacter:{objc_msgSend(v8, "characterAtIndex:", v9)}];
  }

  return v10;
}

+ (BOOL)range:(_NSRange)a3 containsEmptySelectedRange:(_NSRange)a4
{
  v4 = a4.location <= a3.location + a3.length;
  if (a4.location < a3.location)
  {
    v4 = 0;
  }

  if (!a3.length)
  {
    v4 = 0;
  }

  return !a4.length && v4;
}

+ (BOOL)isValidPostfixCharacter:(unsigned __int16)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  if ([v4 characterIsMember:v3])
  {
    v5 = 1;
  }

  else
  {
    v6 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
    v5 = [v6 characterIsMember:v3];
  }

  return v5;
}

+ (void)configureAttributedString:(id)a3 automaticMentionAttributeWithOriginalText:(id)a4 entityNode:(id)a5 nodeId:(id)a6 forRange:(_NSRange)a7
{
  length = a7.length;
  location = a7.location;
  v21 = a4;
  v11 = a6;
  v12 = a3;
  v13 = [v12 string];
  v14 = [v13 substringWithRange:{location, length}];

  v15 = [MEMORY[0x1E695DF90] dictionary];
  if (v21)
  {
    v16 = [v21 copy];
    [v15 setObject:v16 forKeyedSubscript:*MEMORY[0x1E69A70F0]];
  }

  if (v14)
  {
    v17 = [v14 copy];
    [v15 setObject:v17 forKeyedSubscript:*MEMORY[0x1E69A70E0]];
  }

  if (v11)
  {
    v18 = [v11 keys];
    [v15 setObject:v18 forKeyedSubscript:*MEMORY[0x1E69A70E8]];
  }

  v19 = *MEMORY[0x1E69A70D8];
  v20 = [v15 copy];
  [v12 addAttribute:v19 value:v20 range:{location, length}];
}

+ (void)configureAttributedString:(id)a3 inTextView:(id)a4 forDirectMentionInRange:(_NSRange)a5 forChildNode:(id)a6 nodeId:(id)a7 addingVisualStyling:(BOOL)a8 shouldAddAutoComplete:(BOOL)a9
{
  length = a5.length;
  location = a5.location;
  v21 = a3;
  v15 = a6;
  v16 = a7;
  v17 = a4;
  v18 = [v21 string];
  v19 = [v18 substringWithRange:{location, length}];

  v20 = location - 1;
  [a1 configureAttributedString:v21 inTextView:v17 forUnconfirmedDirectMention:v19 inRange:v20 addingVisualStyling:{length + 1, a8}];

  if (a9)
  {
    [a1 configureAttributedString:v21 automaticMentionAttributeWithOriginalText:v19 entityNode:v15 nodeId:v16 forRange:{v20, length + 1}];
  }
}

+ (void)configureAttributedString:(id)a3 inTextView:(id)a4 forUnconfirmedDirectMention:(id)a5 inRange:(_NSRange)a6 addingVisualStyling:(BOOL)a7
{
  v7 = a7;
  length = a6.length;
  location = a6.location;
  v20 = a3;
  v13 = a5;
  v14 = a4;
  v15 = [v20 string];
  v16 = [v15 substringWithRange:{location, length}];

  [v20 addAttribute:*MEMORY[0x1E69A70C8] value:v16 range:{location, length}];
  [v20 addAttribute:*MEMORY[0x1E69A7110] value:v13 range:{location, length}];

  [v20 removeAttribute:*MEMORY[0x1E69A70F8] range:{location, length}];
  [v20 removeAttribute:*MEMORY[0x1E69A7100] range:{location, length}];
  [a1 configureAttributedString:v20 inTextView:v14 boldingFont:0 inRange:{location, length}];
  [a1 configureAttributedString:v20 withParagraphStyleInTextView:v14 inRange:{location, length}];

  if (v7)
  {
    v17 = +[CKUIBehavior sharedBehaviors];
    v18 = [v17 theme];
    v19 = [v18 entryFieldUnconfirmedMentionColor];
    [a1 configureAttributedString:v20 withFontColor:v19 forRange:{location, length}];
  }
}

+ (void)removeMentionsAtIndex:(int64_t)a3 onAttributedString:(id)a4 inTextView:(id)a5
{
  v8 = a4;
  v9 = a5;
  if ((a3 & 0x8000000000000000) == 0 && [v8 length] > a3)
  {
    v11 = 0;
    v12 = 0;
    v10 = [v8 attribute:*MEMORY[0x1E69A70C8] atIndex:a3 longestEffectiveRange:&v11 inRange:{0, objc_msgSend(v8, "length")}];

    if (v10)
    {
      [a1 configureAttributedString:v8 inTextView:v9 forNoMentionInRange:{v11, v12}];
    }
  }
}

+ (void)configureAttributedString:(id)a3 inTextView:(id)a4 forUnconfirmedMentionInRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v9 = a4;
  v10 = a3;
  v11 = [v10 string];
  v15 = [v11 substringWithRange:{location, length}];

  [v10 addAttribute:*MEMORY[0x1E69A70C8] value:v15 range:{location, length}];
  [v10 removeAttribute:*MEMORY[0x1E69A70F8] range:{location, length}];
  [v10 removeAttribute:*MEMORY[0x1E69A7100] range:{location, length}];
  [a1 configureAttributedString:v10 inTextView:v9 boldingFont:0 inRange:{location, length}];
  [a1 configureAttributedString:v10 withParagraphStyleInTextView:v9 inRange:{location, length}];

  v12 = +[CKUIBehavior sharedBehaviors];
  v13 = [v12 theme];
  v14 = [v13 entryFieldUnconfirmedMentionColor];
  [a1 configureAttributedString:v10 withFontColor:v14 forRange:{location, length}];
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