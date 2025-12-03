@interface EMFEmojiToken
+ (id)emojiTokenWithCEMEmojiToken:(__EmojiTokenWrapper *)token;
+ (id)emojiTokenWithLongCharacter:(unsigned int)character localeData:(id)data;
+ (id)emojiTokenWithString:(id)string localeData:(id)data;
+ (id)emojiTokensForCEMEmojiTokens:(__CFArray *)tokens;
- (BOOL)_shouldHighlightEmoji;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualIgnoringModifiers:(id)modifiers;
- (BOOL)isValid;
- (EMFEmojiLocaleData)localeData;
- (EMFEmojiToken)initWithCEMEmojiToken:(__EmojiTokenWrapper *)token;
- (EMFEmojiToken)initWithCoder:(id)coder;
- (EMFEmojiToken)initWithString:(id)string localeData:(id)data;
- (EMFEmojiToken)initWithString:(id)string localeIdentifier:(id)identifier;
- (NSArray)_skinToneVariantStrings;
- (NSArray)skinToneChooserVariants;
- (NSArray)skinToneVariants;
- (NSString)_baseString;
- (NSString)longFormEncodedStringVariantForMultiPersonGrouping;
- (NSString)shortFormEncodedStringVariantForMultiPersonGrouping;
- (NSString)string;
- (id)copyWithPresentationStyle:(int)style;
- (id)copyWithSkinToneVariant:(int)variant;
- (id)copyWithSkinToneVariantSpecifier:(id)specifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyWithoutModifiers;
- (id)description;
- (id)nameForType:(int)type;
- (id)relatedEmojiTokens:(unint64_t)tokens;
- (int)gender;
- (int)presentationStyle;
- (int)skinTone;
- (unint64_t)hash;
- (unsigned)_emojiIndex;
- (void)_createEmojiTokenRefIfNecessary;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMFEmojiToken

- (NSString)string
{
  string = self->_string;
  if (string)
  {
    v3 = [(NSString *)string copy];
  }

  else
  {
    v3 = CEMEmojiTokenGetString();
  }

  return v3;
}

- (BOOL)_shouldHighlightEmoji
{
  v3 = MGGetBoolAnswer();
  if (v3)
  {

    LOBYTE(v3) = [(EMFEmojiToken *)self isNewEmoji];
  }

  return v3;
}

- (NSArray)skinToneVariants
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(EMFEmojiToken *)self supportsSkinToneVariants])
  {
    string = [(EMFEmojiToken *)self string];
    v4 = [EMFStringUtilities _skinToneVariantsForString:string];

    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [EMFEmojiToken emojiTokenWithString:*(*(&v14 + 1) + 8 * i) localeData:0, v14];
          localeIdentifier = [(EMFEmojiToken *)self localeIdentifier];
          [v11 setLocaleIdentifier:localeIdentifier];

          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (void)dealloc
{
  emojiTokenRef = self->_emojiTokenRef;
  if (emojiTokenRef)
  {
    CFRelease(emojiTokenRef);
  }

  self->_emojiTokenRef = 0;
  localeIdentifier = self->_localeIdentifier;
  self->_localeIdentifier = 0;

  localeData = self->_localeData;
  self->_localeData = 0;

  string = self->_string;
  self->_string = 0;

  v7.receiver = self;
  v7.super_class = EMFEmojiToken;
  [(EMFEmojiToken *)&v7 dealloc];
}

- (int)skinTone
{
  if ([(EMFEmojiToken *)self emojiTokenRef])
  {
    emojiTokenRef = self->_emojiTokenRef;

    return MEMORY[0x1EEDF8FC8](emojiTokenRef);
  }

  else
  {
    string = self->_string;

    return [EMFStringUtilities _skinToneForString:string];
  }
}

- (void)_createEmojiTokenRefIfNecessary
{
  if (self->_emojiTokenRef || !self->_string || self->_didFailCEM)
  {
    return;
  }

  localeData = [(EMFEmojiToken *)self localeData];
  if (![localeData emojiLocaleDataRef] && self->_localeIdentifier)
  {
    v4 = CEMCreateEmojiLocaleData();
    self->_emojiTokenRef = CEMEmojiTokenCreateWithString();
    CFRelease(v4);
    if (self->_emojiTokenRef)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = CEMEmojiTokenCreateWithString();
  self->_emojiTokenRef = v3;
  if (!v3)
  {
LABEL_7:
    self->_didFailCEM = 1;
  }

LABEL_8:
}

+ (id)emojiTokenWithCEMEmojiToken:(__EmojiTokenWrapper *)token
{
  v3 = [[self alloc] initWithCEMEmojiToken:token];

  return v3;
}

+ (id)emojiTokensForCEMEmojiTokens:(__CFArray *)tokens
{
  if (tokens)
  {
    Count = CFArrayGetCount(tokens);
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:Count];
    if (Count)
    {
      for (i = 0; i != Count; ++i)
      {
        v7 = [EMFEmojiToken emojiTokenWithCEMEmojiToken:CFArrayGetValueAtIndex(tokens, i)];
        [v5 addObject:v7];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)emojiTokenWithString:(id)string localeData:(id)data
{
  dataCopy = data;
  stringCopy = string;
  v8 = [[self alloc] initWithString:stringCopy localeData:dataCopy];

  return v8;
}

+ (id)emojiTokenWithLongCharacter:(unsigned int)character localeData:(id)data
{
  dataCopy = data;
  [dataCopy emojiLocaleDataRef];
  v6 = CEMEmojiTokenCreateWithLongCharacter();
  v7 = [self emojiTokenWithCEMEmojiToken:v6];
  if (v6)
  {
    CFRelease(v6);
  }

  localeIdentifier = [dataCopy localeIdentifier];
  [v7 setLocaleIdentifier:localeIdentifier];

  return v7;
}

- (EMFEmojiToken)initWithCEMEmojiToken:(__EmojiTokenWrapper *)token
{
  if (token)
  {
    v13.receiver = self;
    v13.super_class = EMFEmojiToken;
    v4 = [(EMFEmojiToken *)&v13 init];
    if (v4)
    {
      v4->_emojiTokenRef = CFRetain(token);
      v5 = [CEMEmojiTokenGetString() copy];
      string = v4->_string;
      v4->_string = v5;

      localeData = [(EMFEmojiToken *)v4 localeData];
      v8 = localeData;
      if (localeData)
      {
        localeIdentifier = [localeData localeIdentifier];
        v10 = [localeIdentifier copy];
        localeIdentifier = v4->_localeIdentifier;
        v4->_localeIdentifier = v10;

        objc_storeStrong(&v4->_localeData, v8);
      }
    }
  }

  else
  {

    return 0;
  }

  return v4;
}

- (EMFEmojiToken)initWithString:(id)string localeData:(id)data
{
  dataCopy = data;
  stringCopy = string;
  localeIdentifier = [dataCopy localeIdentifier];
  v10 = [(EMFEmojiToken *)self initWithString:stringCopy localeIdentifier:localeIdentifier];

  if (v10)
  {
    objc_storeStrong(&v10->_localeData, data);
  }

  return v10;
}

- (EMFEmojiToken)initWithString:(id)string localeIdentifier:(id)identifier
{
  stringCopy = string;
  identifierCopy = identifier;
  if ([stringCopy length])
  {
    v15.receiver = self;
    v15.super_class = EMFEmojiToken;
    v8 = [(EMFEmojiToken *)&v15 init];
    if (v8)
    {
      if ([EMFStringUtilities _genderEmojiBaseStringNeedVariantSelector:stringCopy])
      {
        v9 = [stringCopy stringByAppendingString:@"️"];

        stringCopy = v9;
      }

      v8->_emojiTokenRef = 0;
      v10 = [stringCopy copy];
      string = v8->_string;
      v8->_string = v10;

      v12 = [identifierCopy copy];
      localeIdentifier = v8->_localeIdentifier;
      v8->_localeIdentifier = v12;
    }
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  string = [(EMFEmojiToken *)self string];
  [v3 appendFormat:@"; string = %@", string];

  if (self->_localeIdentifier)
  {
    [v3 appendFormat:@"; locale = %@", self->_localeIdentifier];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  emojiTokenRef = self->_emojiTokenRef;
  v5 = [objc_opt_class() allocWithZone:zone];
  if (emojiTokenRef)
  {
    v6 = [v5 initWithCEMEmojiToken:self->_emojiTokenRef];
    v7 = [(NSString *)self->_localeIdentifier copy];
    v8 = v6[4];
    v6[4] = v7;

    return v6;
  }

  else
  {
    string = self->_string;
    localeData = self->_localeData;

    return [v5 initWithString:string localeData:localeData];
  }
}

- (EMFEmojiToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"emojiString"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localeIdentifier"];

  v7 = [(EMFEmojiToken *)self initWithString:v5 localeIdentifier:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  string = [(EMFEmojiToken *)self string];
  if (string)
  {
    [coderCopy encodeObject:string forKey:@"emojiString"];
  }

  localeIdentifier = self->_localeIdentifier;
  if (localeIdentifier)
  {
    [coderCopy encodeObject:localeIdentifier forKey:@"localeIdentifier"];
  }
}

- (unint64_t)hash
{
  string = [(EMFEmojiToken *)self string];
  v3 = [string hash];

  return v3;
}

- (NSString)_baseString
{
  string = [(EMFEmojiToken *)self string];
  v3 = [EMFStringUtilities _baseStringForEmojiString:string];

  return v3;
}

- (EMFEmojiLocaleData)localeData
{
  localeData = self->_localeData;
  if (!localeData)
  {
    if (self->_emojiTokenRef)
    {
      v4 = [EMFEmojiLocaleData emojiLocaleDataWithCEMEmojiLocaleData:CEMEmojiTokenGetLocaleData()];
    }

    else
    {
      if (!self->_localeIdentifier)
      {
LABEL_7:
        localeData = self->_localeData;
        goto LABEL_8;
      }

      v4 = [EMFEmojiLocaleData emojiLocaleDataWithLocaleIdentifier:?];
    }

    v5 = self->_localeData;
    self->_localeData = v4;

    goto LABEL_7;
  }

LABEL_8:
  v6 = localeData;

  return v6;
}

- (NSArray)skinToneChooserVariants
{
  v30 = *MEMORY[0x1E69E9840];
  if ([(EMFEmojiToken *)self supportsSkinToneVariants])
  {
    string = [(EMFEmojiToken *)self string];
    v4 = [EMFStringUtilities _skinToneChooserVariantsForString:string];

    array = [MEMORY[0x1E695DF70] array];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v4;
    v19 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v19)
    {
      v17 = *v25;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v24 + 1) + 8 * i);
          array2 = [MEMORY[0x1E695DF70] array];
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v8 = v6;
          v9 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v21;
            do
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v21 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = [EMFEmojiToken emojiTokenWithString:*(*(&v20 + 1) + 8 * j) localeData:0];
                localeIdentifier = [(EMFEmojiToken *)self localeIdentifier];
                [v13 setLocaleIdentifier:localeIdentifier];

                [array2 addObject:v13];
              }

              v10 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v10);
          }

          [array addObject:array2];
        }

        v19 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v19);
    }
  }

  else
  {
    array = MEMORY[0x1E695E0F0];
  }

  return array;
}

- (NSArray)_skinToneVariantStrings
{
  if ([(EMFEmojiToken *)self supportsSkinToneVariants])
  {
    string = [(EMFEmojiToken *)self string];
    v4 = [EMFStringUtilities _skinToneVariantsForString:string];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (id)copyWithSkinToneVariant:(int)variant
{
  string = [(EMFEmojiToken *)self string];
  v6 = [EMFStringUtilities _skinToneVariantsForString:string];

  if (![v6 count] || objc_msgSend(v6, "count") > 0x18 || (variant > 6 || ((0x7Bu >> variant) & 1) == 0 ? (v7 = 0) : (objc_msgSend(v6, "objectAtIndex:", qword_1AF0AB8F0[variant]), v7 = objc_claimAutoreleasedReturnValue()), +[EMFEmojiToken emojiTokenWithString:localeData:](EMFEmojiToken, "emojiTokenWithString:localeData:", v7, 0), v8 = objc_claimAutoreleasedReturnValue(), -[EMFEmojiToken localeIdentifier](self, "localeIdentifier"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "setLocaleIdentifier:", v9), v9, v7, !v8))
  {
    v8 = [(EMFEmojiToken *)self copy];
  }

  return v8;
}

- (id)copyWithSkinToneVariantSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = specifierCopy;
  if (specifierCopy)
  {
    [specifierCopy count];
  }

  if ([v5 count] == 1)
  {
    v6 = [v5 objectAtIndex:0];
    v7 = [EMFStringUtilities _skinToneModifierFromSpecifierType:v6];

    v8 = [(EMFEmojiToken *)self copyWithSkinToneVariant:v7];
    if (!v8)
    {
LABEL_8:
      v8 = [(EMFEmojiToken *)self copy];
    }
  }

  else
  {
    if ([v5 count] != 2)
    {
      goto LABEL_8;
    }

    string = [(EMFEmojiToken *)self string];
    v10 = [EMFStringUtilities _multiPersonStringForString:string skinToneVariantSpecifier:v5];

    v8 = [EMFEmojiToken emojiTokenWithString:v10 localeData:0];
    localeIdentifier = [(EMFEmojiToken *)self localeIdentifier];
    [v8 setLocaleIdentifier:localeIdentifier];

    if (!v8)
    {
      goto LABEL_8;
    }
  }

  return v8;
}

- (NSString)longFormEncodedStringVariantForMultiPersonGrouping
{
  string = [(EMFEmojiToken *)self string];
  v3 = [EMFStringUtilities _normalizeMultiPersonGroupToLongFormEncoding:string];

  return v3;
}

- (NSString)shortFormEncodedStringVariantForMultiPersonGrouping
{
  string = [(EMFEmojiToken *)self string];
  v3 = [EMFStringUtilities _normalizeMultiPersonGroupToShortFormEncoding:string];

  return v3;
}

- (int)gender
{
  [(EMFEmojiToken *)self emojiTokenRef];

  return CEMEmojiTokenGetGender();
}

- (unsigned)_emojiIndex
{
  [(EMFEmojiToken *)self _createEmojiTokenRefIfNecessary];
  emojiTokenRef = self->_emojiTokenRef;
  if (emojiTokenRef)
  {

    LOWORD(emojiTokenRef) = MEMORY[0x1EEDF8FB0]();
  }

  return emojiTokenRef;
}

- (int)presentationStyle
{
  emojiTokenRef = [(EMFEmojiToken *)self emojiTokenRef];

  return MEMORY[0x1EEDF8FC0](emojiTokenRef);
}

- (id)copyWithPresentationStyle:(int)style
{
  [(EMFEmojiToken *)self emojiTokenRef];
  PresentationVariant = CEMEmojiTokenCreatePresentationVariant();
  v4 = [objc_opt_class() emojiTokenWithCEMEmojiToken:PresentationVariant];
  if (PresentationVariant)
  {
    CFRelease(PresentationVariant);
  }

  return v4;
}

- (id)copyWithoutModifiers
{
  if ([(EMFEmojiToken *)self emojiTokenRef])
  {
    CopyRemovingModifiers = CEMEmojiTokenCreateCopyRemovingModifiers();
    v4 = [objc_opt_class() emojiTokenWithCEMEmojiToken:CopyRemovingModifiers];
    if (CopyRemovingModifiers)
    {
      CFRelease(CopyRemovingModifiers);
    }
  }

  else
  {
    _baseString = [(EMFEmojiToken *)self _baseString];
    v4 = [EMFEmojiToken emojiTokenWithString:_baseString localeData:0];

    localeIdentifier = [(EMFEmojiToken *)self localeIdentifier];
    [v4 setLocaleIdentifier:localeIdentifier];
  }

  return v4;
}

- (BOOL)isEqualIgnoringModifiers:(id)modifiers
{
  modifiersCopy = modifiers;
  _baseString = [(EMFEmojiToken *)self _baseString];
  _baseString2 = [modifiersCopy _baseString];

  if (_baseString == _baseString2)
  {
    v7 = 1;
  }

  else
  {
    v7 = [_baseString isEqualToString:_baseString2];
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    string = [(EMFEmojiToken *)self string];
    string2 = [v5 string];
    v8 = string2;
    if (string == string2)
    {
    }

    else
    {
      string3 = [(EMFEmojiToken *)self string];
      string4 = [v5 string];
      v11 = [string3 isEqualToString:string4];

      if (!v11)
      {
        v12 = 0;
LABEL_11:

        goto LABEL_12;
      }
    }

    localeIdentifier = [(EMFEmojiToken *)self localeIdentifier];
    localeIdentifier2 = [v5 localeIdentifier];
    if (localeIdentifier == localeIdentifier2)
    {
      v12 = 1;
    }

    else
    {
      localeIdentifier3 = [(EMFEmojiToken *)self localeIdentifier];
      localeIdentifier4 = [v5 localeIdentifier];
      v12 = [localeIdentifier3 isEqualToString:localeIdentifier4];
    }

    goto LABEL_11;
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (id)relatedEmojiTokens:(unint64_t)tokens
{
  [(EMFEmojiToken *)self emojiTokenRef];
  v3 = CEMEmojiTokenCopyRelatedEmoji();
  v4 = [objc_opt_class() emojiTokensForCEMEmojiTokens:v3];
  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

- (id)nameForType:(int)type
{
  [(EMFEmojiToken *)self emojiTokenRef];
  v3 = CEMEmojiTokenCopyName();

  return v3;
}

- (BOOL)isValid
{
  string = [(EMFEmojiToken *)self string];
  v3 = CEMStringIsSingleEmoji() != 0;

  return v3;
}

@end