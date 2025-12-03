@interface EMFStringUtilities
+ (BOOL)_genderEmojiBaseStringNeedVariantSelector:(id)selector;
+ (BOOL)_hasSkinToneVariantsForString:(id)string;
+ (id)_baseFirstCharacterString:(id)string;
+ (id)_baseStringForEmojiString:(id)string;
+ (id)_coupleSkinToneChooserVariantsForString:(id)string;
+ (id)_coupleStringWithLeftPerson:(id)person leftVariant:(id)variant joiningString:(id)string rightPerson:(id)rightPerson rightVariant:(id)rightVariant;
+ (id)_joiningStringForCoupleString:(id)string;
+ (id)_multiPersonStringForString:(id)string skinToneVariantSpecifier:(id)specifier;
+ (id)_normalizeMultiPersonGroupToLongFormEncoding:(id)encoding;
+ (id)_normalizeMultiPersonGroupToShortFormEncoding:(id)encoding;
+ (id)_preferenceIndexString:(id)string;
+ (id)_skinToneChooserArraysForCoupleType:(int64_t)type joiner:(id)joiner;
+ (id)_skinToneChooserVariantsForHandHoldingCoupleType:(int64_t)type;
+ (id)_skinToneChooserVariantsForString:(id)string;
+ (id)_skinToneChooserVariantsForString:(id)string usesSilhouetteSpecifiers:(BOOL)specifiers;
+ (id)_skinToneSpecifiersForString:(id)string;
+ (id)_skinToneSuffixFromSpecifierType:(id)type;
+ (id)_skinToneVariantsForCouple:(int64_t)couple joiner:(id)joiner;
+ (id)_skinToneVariantsForMultiPersonType:(int64_t)type;
+ (id)_skinToneVariantsForString:(id)string;
+ (id)_stringWithUnichar:(unsigned int)unichar;
+ (id)_tokenizedHandshakeFromString:(id)string;
+ (id)_tokenizedMultiPersonFromString:(id)string;
+ (id)professionSkinToneEmojiBaseKey:(id)key;
+ (id)skinToneSpecifierTypeFromEmojiFitzpatrickModifier:(int)modifier;
+ (int)_skinToneForString:(id)string;
+ (int)_skinToneModifierFromSpecifierType:(id)type;
+ (int64_t)multiPersonTypeForString:(id)string;
+ (unsigned)_firstLongCharacterOfString:(id)string;
@end

@implementation EMFStringUtilities

+ (id)_stringWithUnichar:(unsigned int)unichar
{
  if ((unichar - 0x10000) >> 20)
  {
    v4 = 1;
    LOWORD(v3) = unichar;
  }

  else
  {
    v3 = (unichar >> 10) - 10304;
    v7[1] = unichar & 0x3FF | 0xDC00;
    v4 = 2;
  }

  v7[0] = v3;
  v5 = [MEMORY[0x1E696AEC0] stringWithCharacters:v7 length:v4];

  return v5;
}

+ (id)_preferenceIndexString:(id)string
{
  stringCopy = string;
  if ([stringCopy length] == 1 && +[EMFEmojiCategory _isDingbatsVariantEmoji:](EMFEmojiCategory, "_isDingbatsVariantEmoji:", stringCopy))
  {
    v4 = [stringCopy stringByAppendingString:@"️"];
  }

  else
  {
    v4 = stringCopy;
  }

  v5 = v4;

  return v5;
}

+ (unsigned)_firstLongCharacterOfString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v4 = [stringCopy characterAtIndex:0];
    if ((v4 & 0xFC00) == 0xD800 && [stringCopy length] >= 2)
    {
      v5 = [stringCopy characterAtIndex:1];
      if ((v5 & 0xFC00) == 0xDC00)
      {
        v4 = v5 + (v4 << 10) - 56613888;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_baseFirstCharacterString:(id)string
{
  v4 = [self _firstLongCharacterOfString:string];

  return [self _stringWithUnichar:v4];
}

+ (BOOL)_genderEmojiBaseStringNeedVariantSelector:(id)selector
{
  selectorCopy = selector;
  if ([selectorCopy isEqualToString:@"⛹"] & 1) != 0 || (objc_msgSend(selectorCopy, "isEqualToString:", @"🏋") & 1) != 0 || (objc_msgSend(selectorCopy, "isEqualToString:", @"🏌"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [selectorCopy isEqualToString:@"🕵"];
  }

  return v4;
}

+ (id)professionSkinToneEmojiBaseKey:(id)key
{
  keyCopy = key;
  if ([self _emojiString:keyCopy containsSubstring:@"🏻"])
  {
    v5 = [keyCopy length];
    v6 = @"🏻";
LABEL_11:
    v7 = [keyCopy stringByReplacingOccurrencesOfString:v6 withString:&stru_1F24C94E8 options:2 range:{0, v5}];
    goto LABEL_12;
  }

  if ([self _emojiString:keyCopy containsSubstring:@"🏼"])
  {
    v5 = [keyCopy length];
    v6 = @"🏼";
    goto LABEL_11;
  }

  if ([self _emojiString:keyCopy containsSubstring:@"🏽"])
  {
    v5 = [keyCopy length];
    v6 = @"🏽";
    goto LABEL_11;
  }

  if ([self _emojiString:keyCopy containsSubstring:@"🏾"])
  {
    v5 = [keyCopy length];
    v6 = @"🏾";
    goto LABEL_11;
  }

  if ([self _emojiString:keyCopy containsSubstring:@"🏿"])
  {
    v5 = [keyCopy length];
    v6 = @"🏿";
    goto LABEL_11;
  }

  v7 = keyCopy;
LABEL_12:
  v8 = v7;

  return v8;
}

+ (id)_baseStringForEmojiString:(id)string
{
  stringCopy = string;
  if ([EMFEmojiCategory _isProfessionEmoji:stringCopy]|| [EMFEmojiCategory _isFlagEmoji:stringCopy]|| [EMFEmojiCategory _isMultiPersonFamilySkinToneEmoji:stringCopy]|| [EMFEmojiCategory _isCoupleMultiSkinToneEmoji:stringCopy]&& ![EMFEmojiCategory _isBaseHandshakeOrHandshakeWithSkintonesEmoji:stringCopy])
  {
    v5 = stringCopy;
    goto LABEL_5;
  }

  v7 = [objc_opt_class() multiPersonTypeForString:stringCopy];
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = v7;
  v9 = [self _joiningStringForCoupleString:stringCopy];
  if (v9 && ![EMFEmojiCategory _isHandholdingCoupleEmoji:stringCopy]&& ![EMFEmojiCategory _isBaseHandshakeOrHandshakeWithSkintonesEmoji:stringCopy])
  {
    if (v8 == 4)
    {
      if ([v9 isEqualToString:@"‍❤️‍"])
      {
        v5 = @"💑";
        goto LABEL_40;
      }

      if ([v9 isEqualToString:@"‍❤️‍💋‍"])
      {
        v5 = @"💏";
        goto LABEL_40;
      }
    }

    v13 = [self _tokenizedMultiPersonFromString:stringCopy];
    firstObject = [(__CFString *)v13 firstObject];
    lastObject = [(__CFString *)v13 lastObject];
    v5 = [self _coupleStringWithLeftPerson:firstObject leftVariant:0 joiningString:v9 rightPerson:lastObject rightVariant:0];

    goto LABEL_39;
  }

  if (v8 > 5)
  {

LABEL_17:
    v9 = [self professionSkinToneEmojiBaseKey:stringCopy];
    if ([EMFEmojiCategory _isProfessionEmoji:v9])
    {
      v5 = v9;
      goto LABEL_40;
    }

    if (([self _emojiString:stringCopy containsSubstring:@"♀"] & 1) == 0 && !objc_msgSend(self, "_emojiString:containsSubstring:", stringCopy, @"♂"))
    {
      v5 = [self _baseFirstCharacterString:stringCopy];
      if (([(__CFString *)v5 isEqualToString:@"☝"]& 1) != 0 || ([(__CFString *)v5 isEqualToString:@"✌"]& 1) != 0 || [(__CFString *)v5 isEqualToString:@"✍"])
      {
        v17 = [(__CFString *)v5 stringByAppendingString:@"️"];

        v5 = v17;
      }

      goto LABEL_40;
    }

    v10 = [self _baseFirstCharacterString:stringCopy];
    v11 = [self _genderEmojiBaseStringNeedVariantSelector:v10];
    v12 = &stru_1F24C94E8;
    if (v11)
    {
      v12 = @"️";
    }

    v13 = v12;

    if ([self _emojiString:stringCopy containsSubstring:@"♀"])
    {
      v14 = @"‍♀️";
    }

    else
    {
      if (![self _emojiString:stringCopy containsSubstring:@"♂"])
      {
        v5 = 0;
        goto LABEL_39;
      }

      v14 = @"‍♂️";
    }

    v15 = MEMORY[0x1E696AEC0];
    v16 = [self _baseFirstCharacterString:stringCopy];
    v5 = [v15 stringWithFormat:@"%@%@%@", v16, v13, v14];

LABEL_39:
    goto LABEL_40;
  }

  v5 = off_1E7A5F450[v8 - 1];
LABEL_40:

LABEL_5:

  return v5;
}

+ (BOOL)_hasSkinToneVariantsForString:(id)string
{
  stringCopy = string;
  if ([EMFEmojiCategory _isMultiPersonFamilySkinToneEmoji:stringCopy])
  {
    v5 = 0;
  }

  else
  {
    v6 = [self _baseFirstCharacterString:stringCopy];
    v5 = [EMFEmojiCategory _isSkinToneEmoji:v6]|| [EMFEmojiCategory _isCoupleMultiSkinToneEmoji:v6];
  }

  return v5;
}

+ (id)skinToneSpecifierTypeFromEmojiFitzpatrickModifier:(int)modifier
{
  if ((modifier - 1) > 5)
  {
    return @"EMFSkinToneSpecifierTypeFitzpatrickNone";
  }

  else
  {
    return off_1E7A5F478[modifier - 1];
  }
}

+ (int)_skinToneModifierFromSpecifierType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"EMFSkinToneSpecifierTypeFitzpatrickNone"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"EMFSkinToneSpecifierTypeFitzpatrick1_2"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"EMFSkinToneSpecifierTypeFitzpatrick3"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"EMFSkinToneSpecifierTypeFitzpatrick4"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"EMFSkinToneSpecifierTypeFitzpatrick5"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"EMFSkinToneSpecifierTypeFitzpatrick6"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_skinToneSuffixFromSpecifierType:(id)type
{
  typeCopy = type;
  v4 = &stru_1F24C94E8;
  if (([typeCopy isEqualToString:@"EMFSkinToneSpecifierTypeFitzpatrickNone"] & 1) == 0)
  {
    if ([typeCopy isEqualToString:@"EMFSkinToneSpecifierTypeFitzpatrick1_2"])
    {
      v4 = @"🏻";
    }

    else if ([typeCopy isEqualToString:@"EMFSkinToneSpecifierTypeFitzpatrick3"])
    {
      v4 = @"🏼";
    }

    else if ([typeCopy isEqualToString:@"EMFSkinToneSpecifierTypeFitzpatrick4"])
    {
      v4 = @"🏽";
    }

    else if ([typeCopy isEqualToString:@"EMFSkinToneSpecifierTypeFitzpatrick5"])
    {
      v4 = @"🏾";
    }

    else if ([typeCopy isEqualToString:@"EMFSkinToneSpecifierTypeFitzpatrick6"])
    {
      v4 = @"🏿";
    }
  }

  return v4;
}

+ (int)_skinToneForString:(id)string
{
  v17[5] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v16[0] = &unk_1F24DF328;
  v16[1] = &unk_1F24DF340;
  v17[0] = @"🏻";
  v17[1] = @"🏼";
  v16[2] = &unk_1F24DF358;
  v16[3] = &unk_1F24DF370;
  v17[2] = @"🏽";
  v17[3] = @"🏾";
  v16[4] = &unk_1F24DF388;
  v17[4] = @"🏿";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:5];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__EMFStringUtilities__skinToneForString___block_invoke;
  v8[3] = &unk_1E7A5F430;
  selfCopy = self;
  v6 = stringCopy;
  v9 = v6;
  v10 = &v12;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];
  LODWORD(stringCopy) = *(v13 + 6);

  _Block_object_dispose(&v12, 8);
  return stringCopy;
}

void __41__EMFStringUtilities__skinToneForString___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([*(a1 + 48) _emojiString:*(a1 + 32) containsSubstring:a3])
  {
    *(*(*(a1 + 40) + 8) + 24) = [v7 intValue];
    *a4 = 1;
  }
}

+ (id)_tokenizedMultiPersonFromString:(id)string
{
  stringCopy = string;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v5 = [stringCopy rangeOfString:@"‍🤝‍" options:2];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL || (v5 = [stringCopy rangeOfString:@"‍❤️‍💋‍" options:2], v5 != 0x7FFFFFFFFFFFFFFFLL) || (v5 = objc_msgSend(stringCopy, "rangeOfString:options:", @"‍❤️‍", 2), v5 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v7 = v5;
    v8 = v6;
    v9 = [stringCopy substringToIndex:v5];
    [v4 addObject:v9];
    v10 = [stringCopy substringFromIndex:v8 + v7];
    [v4 addObject:v10];
  }

  return v4;
}

+ (id)_tokenizedHandshakeFromString:(id)string
{
  v3 = _tokenizedHandshakeFromString__onceToken;
  stringCopy = string;
  if (v3 != -1)
  {
    +[EMFStringUtilities _tokenizedHandshakeFromString:];
  }

  v5 = [stringCopy componentsSeparatedByCharactersInSet:_tokenizedHandshakeFromString__zwjCharacterSet];

  return v5;
}

void __52__EMFStringUtilities__tokenizedHandshakeFromString___block_invoke()
{
  v2 = [MEMORY[0x1E696AD48] characterSetWithCharactersInString:@"‍"];
  v0 = [v2 copy];
  v1 = _tokenizedHandshakeFromString__zwjCharacterSet;
  _tokenizedHandshakeFromString__zwjCharacterSet = v0;
}

+ (id)_skinToneSpecifiersForString:(id)string
{
  v47[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if ([EMFEmojiCategory _isCoupleMultiSkinToneEmoji:stringCopy]&& ![EMFEmojiCategory _isBaseHandshakeOrHandshakeWithSkintonesEmoji:stringCopy])
  {
    v47[0] = @"EMFSkinToneSpecifierTypeFitzpatrickNone";
    v13 = MEMORY[0x1E695DEC8];
    v14 = v47;
LABEL_12:
    v12 = [v13 arrayWithObjects:v14 count:1];
    goto LABEL_13;
  }

  v5 = [self _baseFirstCharacterString:stringCopy];
  if ([v5 isEqualToString:@"👫"])
  {
    goto LABEL_6;
  }

  v6 = [self _baseFirstCharacterString:stringCopy];
  if ([v6 isEqualToString:@"👬"])
  {

LABEL_6:
LABEL_7:
    v7 = [objc_opt_class() _skinToneForString:stringCopy];
    if (v7)
    {
      v8 = [objc_opt_class() skinToneSpecifierTypeFromEmojiFitzpatrickModifier:v7];
      v45[0] = v8;
      v45[1] = v8;
      v9 = MEMORY[0x1E695DEC8];
      v10 = v45;
      v11 = 2;
LABEL_9:
      v12 = [v9 arrayWithObjects:v10 count:v11];

      goto LABEL_13;
    }

    v46 = @"EMFSkinToneSpecifierTypeFitzpatrickNone";
    v13 = MEMORY[0x1E695DEC8];
    v14 = &v46;
    goto LABEL_12;
  }

  v16 = [self _baseFirstCharacterString:stringCopy];
  v17 = [v16 isEqualToString:@"👭"];

  if (v17)
  {
    goto LABEL_7;
  }

  if ([EMFEmojiCategory _isComposedCoupleMultiSkinToneEmoji:stringCopy])
  {
    v18 = [objc_opt_class() _tokenizedMultiPersonFromString:stringCopy];
    v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v18, "count")}];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v19 = v18;
    v20 = [v19 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v39;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v39 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [objc_opt_class() _skinToneForString:*(*(&v38 + 1) + 8 * i)];
          if (v24)
          {
            v25 = [objc_opt_class() skinToneSpecifierTypeFromEmojiFitzpatrickModifier:v24];
            [v12 addObject:v25];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v21);
    }
  }

  else
  {
    if (![EMFEmojiCategory _isBaseHandshakeOrHandshakeWithSkintonesEmoji:stringCopy])
    {
      v33 = [objc_opt_class() _skinToneForString:stringCopy];
      v8 = [objc_opt_class() skinToneSpecifierTypeFromEmojiFitzpatrickModifier:v33];
      v42 = v8;
      v9 = MEMORY[0x1E695DEC8];
      v10 = &v42;
      v11 = 1;
      goto LABEL_9;
    }

    v26 = [self _tokenizedHandshakeFromString:stringCopy];
    v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v19 = v26;
    v27 = [v19 countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v35;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v35 != v29)
          {
            objc_enumerationMutation(v19);
          }

          v31 = [objc_opt_class() _skinToneForString:{*(*(&v34 + 1) + 8 * j), v34}];
          if (v31)
          {
            v32 = [objc_opt_class() skinToneSpecifierTypeFromEmojiFitzpatrickModifier:v31];
            [v12 addObject:v32];
          }
        }

        v28 = [v19 countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v28);
    }
  }

LABEL_13:

  return v12;
}

+ (int64_t)multiPersonTypeForString:(id)string
{
  stringCopy = string;
  if ([EMFEmojiCategory _isBaseHandshakeOrHandshakeWithSkintonesEmoji:stringCopy])
  {
    v5 = 5;
    goto LABEL_25;
  }

  v6 = [self _baseFirstCharacterString:stringCopy];
  v7 = [EMFEmojiCategory _isCoupleMultiSkinToneEmoji:v6];

  if (!v7)
  {
    if (stringCopy && ([EMFEmojiCategory _isComposedCoupleMultiSkinToneEmoji:stringCopy]|| [EMFEmojiCategory _supportsCoupleSkinToneSelection:stringCopy]))
    {
      v10 = [objc_opt_class() _tokenizedMultiPersonFromString:stringCopy];
      v11 = [v10 objectAtIndex:0];
      v12 = [self _baseFirstCharacterString:v11];
      v13 = [v12 isEqualToString:@"👩"];

      if (v13)
      {
        v14 = [v10 objectAtIndex:1];
        v15 = [self _baseFirstCharacterString:v14];
        v16 = [v15 isEqualToString:@"👩"];

        if (v16)
        {
          v5 = 2;
LABEL_24:

          goto LABEL_25;
        }

        v5 = 1;
        v27 = [v10 objectAtIndex:1];
        v28 = [self _baseFirstCharacterString:v27];
        v29 = [v28 isEqualToString:@"👨"];

        if (v29)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v21 = [v10 objectAtIndex:0];
        v22 = [self _baseFirstCharacterString:v21];
        v23 = [v22 isEqualToString:@"👨"];

        if (!v23)
        {
          v5 = 4;
          goto LABEL_24;
        }

        v24 = [v10 objectAtIndex:1];
        v25 = [self _baseFirstCharacterString:v24];
        v26 = [v25 isEqualToString:@"👨"];

        if (v26)
        {
          v5 = 3;
          goto LABEL_24;
        }
      }
    }

    v5 = 0;
    goto LABEL_25;
  }

  v8 = [self _baseFirstCharacterString:stringCopy];
  v9 = [v8 isEqualToString:@"👫"];

  if (v9)
  {
    v5 = 1;
  }

  else
  {
    v17 = [self _baseFirstCharacterString:stringCopy];
    v18 = [v17 isEqualToString:@"👭"];

    if (v18)
    {
      v5 = 2;
    }

    else
    {
      v19 = [self _baseFirstCharacterString:stringCopy];
      v20 = [v19 isEqualToString:@"👬"];

      if (v20)
      {
        v5 = 3;
      }

      else
      {
        v5 = 4;
      }
    }
  }

LABEL_25:

  return v5;
}

+ (id)_joiningStringForCoupleString:(id)string
{
  stringCopy = string;
  v4 = @"‍🤝‍";
  if ([stringCopy rangeOfString:@"‍🤝‍" options:2] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = @"‍❤️‍💋‍";
    if ([stringCopy rangeOfString:@"‍❤️‍💋‍" options:2] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(stringCopy, "rangeOfString:options:", @"💏", 2) == 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = @"‍❤️‍";
      if ([stringCopy rangeOfString:@"‍❤️‍" options:2] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(stringCopy, "rangeOfString:options:", @"💑", 2) == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([stringCopy isEqualToString:@"🤝"])
        {
          v4 = @"‍";
        }

        else
        {
          v4 = 0;
        }
      }
    }
  }

  return v4;
}

+ (id)_skinToneChooserVariantsForHandHoldingCoupleType:(int64_t)type
{
  v77[5] = *MEMORY[0x1E69E9840];
  v77[0] = @"🏻";
  v77[1] = @"🏼";
  v77[2] = @"🏽";
  v77[3] = @"🏾";
  v77[4] = @"🏿";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:5];
  v5 = v4;
  v6 = MEMORY[0x1E695E0F0];
  if (type <= 2)
  {
    if (type == 1)
    {
      v52 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
      v48 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v39 = v5;
      v40 = v5;
      v32 = [v40 countByEnumeratingWithState:&v65 objects:v76 count:16];
      if (v32)
      {
        v33 = v32;
        objc = *v66;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v66 != objc)
            {
              objc_enumerationMutation(v40);
            }

            v35 = *(*(&v65 + 1) + 8 * i);
            v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@%@%@", @"👩", v35, @"‍🤝‍", @"👨", @"‍"];
            [v52 addObject:v36];

            v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@%@%@", @"👩", @"‍", @"‍🤝‍", @"👨", v35];
            [v48 addObject:v37];
          }

          v33 = [v40 countByEnumeratingWithState:&v65 objects:v76 count:16];
        }

        while (v33);
      }

      v15 = v48;
      v14 = v52;
      v75[0] = v52;
      v75[1] = v48;
      v16 = MEMORY[0x1E695DEC8];
      v17 = v75;
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_41;
      }

      v50 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
      v46 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v39 = v5;
      obja = v5;
      v18 = [obja countByEnumeratingWithState:&v61 objects:v74 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v62;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v62 != v20)
            {
              objc_enumerationMutation(obja);
            }

            v22 = *(*(&v61 + 1) + 8 * j);
            v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@%@%@", @"👩", v22, @"‍🤝‍", @"👩", @"‍"];
            [v50 addObject:v23];

            v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@%@%@", @"👩", @"‍", @"‍🤝‍", @"👩", v22];
            [v46 addObject:v24];
          }

          v19 = [obja countByEnumeratingWithState:&v61 objects:v74 count:16];
        }

        while (v19);
      }

      v15 = v46;
      v14 = v50;
      v73[0] = v50;
      v73[1] = v46;
      v16 = MEMORY[0x1E695DEC8];
      v17 = v73;
    }
  }

  else
  {
    switch(type)
    {
      case 3:
        v51 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
        v47 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v39 = v5;
        objb = v5;
        v25 = [objb countByEnumeratingWithState:&v57 objects:v72 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v58;
          do
          {
            for (k = 0; k != v26; ++k)
            {
              if (*v58 != v27)
              {
                objc_enumerationMutation(objb);
              }

              v29 = *(*(&v57 + 1) + 8 * k);
              v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@%@%@", @"👨", v29, @"‍🤝‍", @"👨", @"‍"];
              [v51 addObject:v30];

              v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@%@%@", @"👨", @"‍", @"‍🤝‍", @"👨", v29];
              [v47 addObject:v31];
            }

            v26 = [objb countByEnumeratingWithState:&v57 objects:v72 count:16];
          }

          while (v26);
        }

        v15 = v47;
        v14 = v51;
        v71[0] = v51;
        v71[1] = v47;
        v16 = MEMORY[0x1E695DEC8];
        v17 = v71;
        break;
      case 4:
        v6 = [objc_opt_class() _skinToneChooserArraysForCoupleType:4 joiner:@"‍🤝‍"];
        goto LABEL_41;
      case 5:
        v49 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
        v45 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v39 = v5;
        obj = v5;
        v7 = [obj countByEnumeratingWithState:&v53 objects:v70 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v54;
          do
          {
            for (m = 0; m != v8; ++m)
            {
              if (*v54 != v9)
              {
                objc_enumerationMutation(obj);
              }

              v11 = *(*(&v53 + 1) + 8 * m);
              v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@%@%@", @"🫱", v11, @"‍", @"🫲", @"‍"];
              [v49 addObject:v12];

              v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@%@%@", @"🫱", @"‍", @"🫲", v11, @"‍"];
              [v45 addObject:v13];
            }

            v8 = [obj countByEnumeratingWithState:&v53 objects:v70 count:16];
          }

          while (v8);
        }

        v15 = v45;
        v14 = v49;
        v69[0] = v49;
        v69[1] = v45;
        v16 = MEMORY[0x1E695DEC8];
        v17 = v69;
        break;
      default:
        goto LABEL_41;
    }
  }

  v6 = [v16 arrayWithObjects:v17 count:2];

  v5 = v39;
LABEL_41:

  return v6;
}

+ (id)_skinToneChooserArraysForCoupleType:(int64_t)type joiner:(id)joiner
{
  v30[5] = *MEMORY[0x1E69E9840];
  joinerCopy = joiner;
  v30[0] = @"🏻";
  v30[1] = @"🏼";
  v30[2] = @"🏽";
  v30[3] = @"🏾";
  v30[4] = @"🏿";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:5];
  v7 = v6;
  v8 = type - 1;
  if ((type - 1) > 4)
  {
    v9 = 0;
    v10 = 0;
    v22 = 0;
  }

  else
  {
    v9 = off_1E7A5F4A8[v8];
    v10 = off_1E7A5F4D0[v8];
    v22 = off_1E7A5F4F8[v8];
  }

  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        if (joinerCopy)
        {
          [self _coupleStringWithLeftPerson:v10 leftVariant:v18 joiningString:joinerCopy rightPerson:v9 rightVariant:*(*(&v24 + 1) + 8 * i)];
        }

        else
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v22, v18];
        }
        v19 = ;
        [v11 addObject:v19];
        [v12 addObject:v19];
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v15);
  }

  v28[0] = v11;
  v28[1] = v12;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];

  return v20;
}

+ (id)_skinToneChooserVariantsForString:(id)string usesSilhouetteSpecifiers:(BOOL)specifiers
{
  specifiersCopy = specifiers;
  stringCopy = string;
  v6 = [objc_opt_class() multiPersonTypeForString:stringCopy];
  if (v6)
  {
    v7 = v6;
    v8 = objc_opt_class();
    if (specifiersCopy)
    {
      v9 = [v8 _skinToneChooserVariantsForHandHoldingCoupleType:v7];
    }

    else
    {
      v10 = [v8 _joiningStringForCoupleString:stringCopy];
      if (v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = @"‍🤝‍";
      }

      v9 = [objc_opt_class() _skinToneChooserArraysForCoupleType:v7 joiner:v11];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_coupleSkinToneChooserVariantsForString:(id)string
{
  stringCopy = string;
  v4 = [objc_opt_class() multiPersonTypeForString:stringCopy];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_class() _joiningStringForCoupleString:stringCopy];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = @"‍🤝‍";
    }

    v8 = [objc_opt_class() _skinToneChooserArraysForCoupleType:v5 joiner:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_skinToneChooserVariantsForString:(id)string
{
  stringCopy = string;
  if ([objc_opt_class() multiPersonTypeForString:stringCopy])
  {
    v4 = [objc_opt_class() _skinToneChooserVariantsForString:stringCopy usesSilhouetteSpecifiers:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_coupleStringWithLeftPerson:(id)person leftVariant:(id)variant joiningString:(id)string rightPerson:(id)rightPerson rightVariant:(id)rightVariant
{
  personCopy = person;
  variantCopy = variant;
  stringCopy = string;
  rightPersonCopy = rightPerson;
  rightVariantCopy = rightVariant;
  if (variantCopy && [(__CFString *)variantCopy length])
  {
    if (!rightVariantCopy)
    {
      goto LABEL_7;
    }

LABEL_6:
    if ([(__CFString *)rightVariantCopy length])
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v16 = [objc_opt_class() _baseStringForEmojiString:personCopy];

  variantCopy = &stru_1F24C94E8;
  personCopy = v16;
  if (rightVariantCopy)
  {
    goto LABEL_6;
  }

LABEL_7:
  v17 = [objc_opt_class() _baseStringForEmojiString:rightPersonCopy];

  rightVariantCopy = &stru_1F24C94E8;
  rightPersonCopy = v17;
LABEL_8:
  rightVariantCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@%@%@", personCopy, variantCopy, stringCopy, rightPersonCopy, rightVariantCopy];

  return rightVariantCopy;
}

+ (id)_skinToneVariantsForMultiPersonType:(int64_t)type
{
  v102[5] = *MEMORY[0x1E69E9840];
  v102[0] = @"🏻";
  v102[1] = @"🏼";
  v102[2] = @"🏽";
  v102[3] = @"🏾";
  v102[4] = @"🏿";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:5];
  array = [MEMORY[0x1E695DF70] array];
  if (type <= 2)
  {
    if (type == 1)
    {
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v45 = v4;
      v6 = v4;
      v57 = [v6 countByEnumeratingWithState:&v90 objects:v101 count:16];
      if (v57)
      {
        v49 = *v91;
        v53 = v6;
        do
        {
          v33 = 0;
          do
          {
            if (*v91 != v49)
            {
              objc_enumerationMutation(v6);
            }

            v61 = v33;
            v34 = *(*(&v90 + 1) + 8 * v33);
            v86 = 0u;
            v87 = 0u;
            v88 = 0u;
            v89 = 0u;
            v9 = v6;
            v35 = [v9 countByEnumeratingWithState:&v86 objects:v100 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v87;
              do
              {
                for (i = 0; i != v36; ++i)
                {
                  if (*v87 != v37)
                  {
                    objc_enumerationMutation(v9);
                  }

                  v39 = *(*(&v86 + 1) + 8 * i);
                  if ([v34 isEqualToString:v39])
                  {
                    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"👫", v34, v42, v43, v44];
                  }

                  else
                  {
                    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@%@%@", @"👩", v34, @"‍🤝‍", @"👨", v39];
                  }
                  v40 = ;
                  [array addObject:v40];
                }

                v36 = [v9 countByEnumeratingWithState:&v86 objects:v100 count:16];
              }

              while (v36);
            }

            v33 = v61 + 1;
            v6 = v53;
          }

          while (v61 + 1 != v57);
          v57 = [v9 countByEnumeratingWithState:&v90 objects:v101 count:16];
        }

        while (v57);
        goto LABEL_82;
      }

LABEL_81:
      v9 = v6;
      goto LABEL_82;
    }

    if (type != 2)
    {
      goto LABEL_83;
    }

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v45 = v4;
    v16 = v4;
    v55 = [v16 countByEnumeratingWithState:&v82 objects:v99 count:16];
    if (v55)
    {
      v47 = *v83;
      v51 = v16;
      do
      {
        v17 = 0;
        do
        {
          if (*v83 != v47)
          {
            objc_enumerationMutation(v16);
          }

          v59 = v17;
          v18 = *(*(&v82 + 1) + 8 * v17);
          v78 = 0u;
          v79 = 0u;
          v80 = 0u;
          v81 = 0u;
          v9 = v16;
          v19 = [v9 countByEnumeratingWithState:&v78 objects:v98 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v79;
            do
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v79 != v21)
                {
                  objc_enumerationMutation(v9);
                }

                v23 = *(*(&v78 + 1) + 8 * j);
                if ([v18 isEqualToString:v23])
                {
                  [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"👭", v18, v42, v43, v44];
                }

                else
                {
                  [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@%@%@", @"👩", v18, @"‍🤝‍", @"👩", v23];
                }
                v24 = ;
                [array addObject:v24];
              }

              v20 = [v9 countByEnumeratingWithState:&v78 objects:v98 count:16];
            }

            while (v20);
          }

          v17 = v59 + 1;
          v16 = v51;
        }

        while (v59 + 1 != v55);
        v55 = [v9 countByEnumeratingWithState:&v82 objects:v99 count:16];
      }

      while (v55);
      goto LABEL_82;
    }

    goto LABEL_80;
  }

  if (type == 3)
  {
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v45 = v4;
    v16 = v4;
    v56 = [v16 countByEnumeratingWithState:&v74 objects:v97 count:16];
    if (v56)
    {
      v48 = *v75;
      v52 = v16;
      do
      {
        v25 = 0;
        do
        {
          if (*v75 != v48)
          {
            objc_enumerationMutation(v16);
          }

          v60 = v25;
          v26 = *(*(&v74 + 1) + 8 * v25);
          v70 = 0u;
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v9 = v16;
          v27 = [v9 countByEnumeratingWithState:&v70 objects:v96 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v71;
            do
            {
              for (k = 0; k != v28; ++k)
              {
                if (*v71 != v29)
                {
                  objc_enumerationMutation(v9);
                }

                v31 = *(*(&v70 + 1) + 8 * k);
                if ([v26 isEqualToString:v31])
                {
                  [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"👬", v26, v42, v43, v44];
                }

                else
                {
                  [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@%@%@", @"👨", v26, @"‍🤝‍", @"👨", v31];
                }
                v32 = ;
                [array addObject:v32];
              }

              v28 = [v9 countByEnumeratingWithState:&v70 objects:v96 count:16];
            }

            while (v28);
          }

          v25 = v60 + 1;
          v16 = v52;
        }

        while (v60 + 1 != v56);
        v56 = [v9 countByEnumeratingWithState:&v74 objects:v97 count:16];
      }

      while (v56);
      goto LABEL_82;
    }

LABEL_80:
    v9 = v16;
    goto LABEL_82;
  }

  if (type != 4)
  {
    if (type != 5)
    {
      goto LABEL_83;
    }

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v45 = v4;
    v6 = v4;
    v54 = [v6 countByEnumeratingWithState:&v66 objects:v95 count:16];
    if (v54)
    {
      v46 = *v67;
      v50 = v6;
      do
      {
        v7 = 0;
        do
        {
          if (*v67 != v46)
          {
            objc_enumerationMutation(v6);
          }

          v58 = v7;
          v8 = *(*(&v66 + 1) + 8 * v7);
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v9 = v6;
          v10 = [v9 countByEnumeratingWithState:&v62 objects:v94 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v63;
            do
            {
              for (m = 0; m != v11; ++m)
              {
                if (*v63 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v62 + 1) + 8 * m);
                if ([v8 isEqualToString:v14])
                {
                  [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"🤝", v8, v42, v43, v44];
                }

                else
                {
                  [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@%@%@", @"🫱", v8, @"‍", @"🫲", v14];
                }
                v15 = ;
                [array addObject:v15];
              }

              v11 = [v9 countByEnumeratingWithState:&v62 objects:v94 count:16];
            }

            while (v11);
          }

          v7 = v58 + 1;
          v6 = v50;
        }

        while (v58 + 1 != v54);
        v54 = [v9 countByEnumeratingWithState:&v66 objects:v95 count:16];
      }

      while (v54);
      goto LABEL_82;
    }

    goto LABEL_81;
  }

  v45 = v4;
  v9 = [objc_opt_class() _skinToneVariantsForCouple:4 joiner:@"‍🤝‍"];
  [array addObjectsFromArray:v9];
LABEL_82:

  v4 = v45;
LABEL_83:

  return array;
}

+ (id)_skinToneVariantsForCouple:(int64_t)couple joiner:(id)joiner
{
  v34[5] = *MEMORY[0x1E69E9840];
  joinerCopy = joiner;
  v34[0] = @"🏻";
  v34[1] = @"🏼";
  v34[2] = @"🏽";
  v34[3] = @"🏾";
  v34[4] = @"🏿";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:5];
  v6 = couple - 1;
  if ((couple - 1) > 3)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = off_1E7A5F520[v6];
    v8 = off_1E7A5F540[v6];
  }

  v9 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v5;
  v20 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v20)
  {
    v19 = *v29;
    do
    {
      v10 = 0;
      do
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v10;
        v11 = *(*(&v28 + 1) + 8 * v10);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v12 = obj;
        v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v25;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v25 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = [objc_opt_class() _coupleStringWithLeftPerson:v8 leftVariant:v11 joiningString:joinerCopy rightPerson:v7 rightVariant:*(*(&v24 + 1) + 8 * i)];
              [v9 addObject:v17];
            }

            v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v14);
        }

        v10 = v22 + 1;
      }

      while (v22 + 1 != v20);
      v20 = [v12 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v20);
  }

  return v9;
}

+ (id)_skinToneVariantsForString:(id)string
{
  v34[5] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v5 = [objc_opt_class() multiPersonTypeForString:stringCopy];
  if (!v5)
  {
    v8 = [self _baseFirstCharacterString:stringCopy];
    v9 = 0x1E7A4C000uLL;
    if (![EMFEmojiCategory _isSkinToneEmoji:v8])
    {
      array = 0;
      goto LABEL_39;
    }

    v10 = [self _baseStringForEmojiString:stringCopy];
    array = [MEMORY[0x1E695DF70] array];
    v34[0] = @"🏻";
    v34[1] = @"🏼";
    v34[2] = @"🏽";
    v34[3] = @"🏾";
    v34[4] = @"🏿";
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:5];
    v11 = -1;
    while (![*(v9 + 1760) _isGenderEmoji:v8])
    {
      if (![*(v9 + 1760) _isProfessionEmoji:v10])
      {
        if (v11 == -1)
        {
          if ([*(v9 + 1760) _isDingbatsVariantEmoji:v8])
          {
            v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v8, @"️"];
          }

          else
          {
LABEL_27:
            v28 = v10;
          }

          v19 = v28;
          goto LABEL_29;
        }

        v26 = MEMORY[0x1E696AEC0];
        v16 = [v33 objectAtIndex:v11];
        v19 = [v26 stringWithFormat:@"%@%@", v8, v16];
        goto LABEL_24;
      }

      if (v11 == -1)
      {
        goto LABEL_27;
      }

      v20 = [v10 rangeOfString:v8 options:2];
      v22 = v21;
      v23 = MEMORY[0x1E696AEC0];
      v24 = [v33 objectAtIndex:v11];
      v25 = [v23 stringWithFormat:@"%@%@", v8, v24];

      v19 = [v10 stringByReplacingCharactersInRange:v20 withString:{v22, v25}];

      v9 = 0x1E7A4C000;
LABEL_29:
      [array addObject:v19];

      if (++v11 == 5)
      {

        goto LABEL_39;
      }
    }

    v12 = @"‍♀️";
    if (([self _emojiString:stringCopy containsSubstring:@"♀"] & 1) == 0)
    {
      if ([self _emojiString:stringCopy containsSubstring:@"♂"])
      {
        v12 = @"‍♂️";
      }

      else
      {
        v12 = &stru_1F24C94E8;
      }
    }

    v13 = [self _genderEmojiBaseStringNeedVariantSelector:v8];
    v14 = &stru_1F24C94E8;
    if (v13)
    {
      v14 = @"️";
    }

    v15 = v14;
    v16 = v15;
    v17 = MEMORY[0x1E696AEC0];
    if (v11 == -1)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v8, v15, v12];
    }

    else
    {
      v18 = [v33 objectAtIndex:v11];
      v19 = [v17 stringWithFormat:@"%@%@%@", v8, v18, v12];
    }

    if ([stringCopy hasSuffix:@"‍➡️"])
    {
      v27 = [v19 stringByAppendingString:@"‍➡️"];

      v19 = v27;
    }

    v9 = 0x1E7A4C000;
LABEL_24:

    goto LABEL_29;
  }

  v6 = v5;
  if (v5 == 5)
  {
    array = [objc_opt_class() _skinToneVariantsForMultiPersonType:5];
    goto LABEL_40;
  }

  v29 = [objc_opt_class() _joiningStringForCoupleString:stringCopy];
  if (v29)
  {
    v8 = v29;
  }

  else
  {
    v8 = @"‍🤝‍";
  }

  v30 = [EMFEmojiCategory _isHandholdingCoupleEmoji:stringCopy];
  v31 = objc_opt_class();
  if (v30)
  {
    [v31 _skinToneVariantsForMultiPersonType:v6];
  }

  else
  {
    [v31 _skinToneVariantsForCouple:v6 joiner:v8];
  }
  array = ;
LABEL_39:

LABEL_40:

  return array;
}

+ (id)_multiPersonStringForString:(id)string skinToneVariantSpecifier:(id)specifier
{
  v50[2] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  specifierCopy = specifier;
  v8 = [objc_opt_class() multiPersonTypeForString:stringCopy];
  if (!v8)
  {
    v17 = 0;
    goto LABEL_51;
  }

  v9 = v8;
  v10 = [objc_opt_class() _joiningStringForCoupleString:stringCopy];
  v11 = [specifierCopy containsObject:@"EMFSkinToneSpecifierTypeFitzpatrickSilhouette"];
  if (v11)
  {
    firstObject = [specifierCopy firstObject];
    v13 = [firstObject isEqualToString:@"EMFSkinToneSpecifierTypeFitzpatrickSilhouette"];

    if (v13)
    {
      lastObject = [specifierCopy lastObject];
      v15 = [lastObject isEqualToString:@"EMFSkinToneSpecifierTypeFitzpatrickSilhouette"];

      if (v15)
      {
        if (v10)
        {
          goto LABEL_12;
        }

        v16 = @"EMFSkinToneSpecifierTypeFitzpatrick6";
LABEL_11:
        v50[0] = v16;
        v50[1] = v16;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];

        specifierCopy = v19;
        goto LABEL_12;
      }

      lastObject2 = [specifierCopy lastObject];
    }

    else
    {
      lastObject2 = [specifierCopy firstObject];
    }

    v16 = lastObject2;
    if (!lastObject2)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_12:
  v20 = objc_opt_class();
  firstObject2 = [specifierCopy firstObject];
  v22 = [v20 _skinToneSuffixFromSpecifierType:firstObject2];

  if ([specifierCopy count] == 2)
  {
    v23 = objc_opt_class();
    lastObject3 = [specifierCopy lastObject];
    v25 = [v23 _skinToneSuffixFromSpecifierType:lastObject3];

    if (!v10)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v25 = v22;
    if (!v10)
    {
      goto LABEL_21;
    }
  }

  v26 = [v10 isEqualToString:@"‍🤝‍"];
  if (v9 != 5 && (v26 & 1) == 0)
  {
    v27 = [v22 length];
    v28 = objc_opt_class();
    if (v9 == 4 || v27)
    {
      v35 = [v28 _tokenizedMultiPersonFromString:stringCopy];
      if ([v35 count] <= 1)
      {

        v35 = &unk_1F24DF3E8;
      }

      v48 = objc_opt_class();
      firstObject3 = [v35 firstObject];
      v36 = [self _baseStringForEmojiString:firstObject3];
      lastObject4 = [v35 lastObject];
      v38 = [self _baseStringForEmojiString:lastObject4];
      v30 = [v48 _coupleStringWithLeftPerson:v36 leftVariant:v22 joiningString:v10 rightPerson:v38 rightVariant:v25];

      goto LABEL_50;
    }

    v29 = [v28 _baseStringForEmojiString:stringCopy];
    goto LABEL_49;
  }

LABEL_21:
  v30 = 0;
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v30 = @"👬";
      if (!v22 || !v25)
      {
        goto LABEL_50;
      }

      v40 = v11 | [v22 isEqualToString:v25] ^ 1;
      v32 = MEMORY[0x1E696AEC0];
      if (v40)
      {
        v47 = v25;
        v33 = @"👨";
        goto LABEL_45;
      }

LABEL_47:
      [v32 stringWithFormat:@"%@%@", v30, v22, v42, v44, v46];
      goto LABEL_48;
    }

    if (v9 != 5)
    {
      goto LABEL_50;
    }

    v30 = @"🤝";
    if (!v22 || !v25)
    {
      goto LABEL_50;
    }

    v34 = v11 | [v22 isEqualToString:v25] ^ 1;
    v32 = MEMORY[0x1E696AEC0];
    if ((v34 & 1) == 0)
    {
      goto LABEL_47;
    }

    v45 = @"🫲";
    v47 = v25;
    v43 = @"‍";
    v33 = @"🫱";
  }

  else
  {
    if (v9 != 1)
    {
      if (v9 != 2)
      {
        goto LABEL_50;
      }

      v30 = @"👭";
      if (!v22 || !v25)
      {
        goto LABEL_50;
      }

      v31 = v11 | [v22 isEqualToString:v25] ^ 1;
      v32 = MEMORY[0x1E696AEC0];
      if (v31)
      {
        v47 = v25;
        v33 = @"👩";
LABEL_45:
        v43 = @"‍🤝‍";
        v45 = v33;
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    v30 = @"👫";
    if (!v22 || !v25)
    {
      goto LABEL_50;
    }

    v39 = v11 | [v22 isEqualToString:v25] ^ 1;
    v32 = MEMORY[0x1E696AEC0];
    if ((v39 & 1) == 0)
    {
      goto LABEL_47;
    }

    v45 = @"👨";
    v47 = v25;
    v43 = @"‍🤝‍";
    v33 = @"👩";
  }

LABEL_46:
  [v32 stringWithFormat:@"%@%@%@%@%@", v33, v22, v43, v45, v47];
  v29 = LABEL_48:;
LABEL_49:
  v30 = v29;
LABEL_50:
  v17 = v30;

LABEL_51:

  return v17;
}

+ (id)_normalizeMultiPersonGroupToShortFormEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = objc_autoreleasePoolPush();
  v6 = [self multiPersonTypeForString:encodingCopy];
  if (!v6 || (v7 = v6, [encodingCopy length] < 3) || objc_msgSend(encodingCopy, "rangeOfString:options:", @"‍❤️‍", 2) != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(encodingCopy, "rangeOfString:options:", @"‍❤️‍💋‍", 2) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = encodingCopy;
    goto LABEL_11;
  }

  v8 = [MEMORY[0x1E696AD60] stringWithCapacity:4];
  v9 = v8;
  if (v7 < 6 && ((0x17u >> (v7 - 1)) & 1) != 0)
  {
    [v8 appendString:off_1E7A5F560[v7 - 1]];
    v10 = [self _skinToneSpecifiersForString:encodingCopy];
    if ([v10 count])
    {
      firstObject = [v10 firstObject];
      v12 = [firstObject isEqualToString:@"EMFSkinToneSpecifierTypeFitzpatrickNone"];

      if (!v12)
      {
        if ([v10 count] != 2 || (objc_msgSend(v10, "objectAtIndexedSubscript:", 0), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectAtIndexedSubscript:", 1), v17 = objc_claimAutoreleasedReturnValue(), v17, v16, v16 != v17))
        {
          v13 = encodingCopy;
          goto LABEL_18;
        }

        v18 = [v10 objectAtIndexedSubscript:0];
        v19 = [self _skinToneSuffixFromSpecifierType:v18];
        [v9 appendString:v19];
      }
    }

    v13 = [v9 copy];
LABEL_18:
    v14 = v13;

    goto LABEL_19;
  }

  v14 = encodingCopy;
LABEL_19:

LABEL_11:
  objc_autoreleasePoolPop(v5);

  return v14;
}

+ (id)_normalizeMultiPersonGroupToLongFormEncoding:(id)encoding
{
  v27[2] = *MEMORY[0x1E69E9840];
  encodingCopy = encoding;
  v5 = objc_autoreleasePoolPush();
  v6 = [self multiPersonTypeForString:encodingCopy];
  if (!v6 || (v7 = v6, [encodingCopy length] > 4) || objc_msgSend(encodingCopy, "rangeOfString:options:", @"‍❤️‍", 2) != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(encodingCopy, "rangeOfString:options:", @"‍❤️‍💋‍", 2) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = encodingCopy;
    goto LABEL_11;
  }

  v8 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v9 = v8;
  if (v7 < 6 && ((0x17u >> (v7 - 1)) & 1) != 0)
  {
    [v8 appendString:off_1E7A5F588[v7 - 1]];
    v10 = [self _skinToneSpecifiersForString:encodingCopy];
    if (![v10 count] || (objc_msgSend(v10, "firstObject"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", @"EMFSkinToneSpecifierTypeFitzpatrickNone"), v11, v12))
    {
      v13 = [v9 copy];
LABEL_29:

      goto LABEL_30;
    }

    if ([v10 count] == 1)
    {
      v15 = [v10 objectAtIndexedSubscript:0];
      v16 = [self _skinToneSuffixFromSpecifierType:v15];

      v27[0] = v16;
      v27[1] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    }

    else
    {
      if ([v10 count] != 2)
      {
        v17 = 0;
        goto LABEL_21;
      }

      v16 = [v10 objectAtIndexedSubscript:0];
      v18 = [self _skinToneSuffixFromSpecifierType:v16];
      v26[0] = v18;
      v19 = [v10 objectAtIndexedSubscript:1];
      v20 = [self _skinToneSuffixFromSpecifierType:v19];
      v26[1] = v20;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    }

LABEL_21:
    if (v7 == 5)
    {
      v21 = 7;
    }

    else
    {
      v21 = 10;
    }

    v22 = [v17 objectAtIndexedSubscript:0];

    if (v22)
    {
      v23 = [v17 objectAtIndexedSubscript:0];
      [v9 insertString:v23 atIndex:2];
    }

    v24 = [v17 objectAtIndexedSubscript:1];

    if (v24)
    {
      v25 = [v17 objectAtIndexedSubscript:1];
      [v9 insertString:v25 atIndex:v21];
    }

    v13 = [v9 copy];

    goto LABEL_29;
  }

  v13 = encodingCopy;
LABEL_30:

LABEL_11:
  objc_autoreleasePoolPop(v5);

  return v13;
}

@end