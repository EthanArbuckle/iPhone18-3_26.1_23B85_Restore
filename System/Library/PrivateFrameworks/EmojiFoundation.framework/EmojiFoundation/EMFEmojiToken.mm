@interface EMFEmojiToken
+ (id)emojiTokenWithCEMEmojiToken:(__EmojiTokenWrapper *)a3;
+ (id)emojiTokenWithLongCharacter:(unsigned int)a3 localeData:(id)a4;
+ (id)emojiTokenWithString:(id)a3 localeData:(id)a4;
+ (id)emojiTokensForCEMEmojiTokens:(__CFArray *)a3;
- (BOOL)_shouldHighlightEmoji;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualIgnoringModifiers:(id)a3;
- (BOOL)isValid;
- (EMFEmojiLocaleData)localeData;
- (EMFEmojiToken)initWithCEMEmojiToken:(__EmojiTokenWrapper *)a3;
- (EMFEmojiToken)initWithCoder:(id)a3;
- (EMFEmojiToken)initWithString:(id)a3 localeData:(id)a4;
- (EMFEmojiToken)initWithString:(id)a3 localeIdentifier:(id)a4;
- (NSArray)_skinToneVariantStrings;
- (NSArray)skinToneChooserVariants;
- (NSArray)skinToneVariants;
- (NSString)_baseString;
- (NSString)longFormEncodedStringVariantForMultiPersonGrouping;
- (NSString)shortFormEncodedStringVariantForMultiPersonGrouping;
- (NSString)string;
- (id)copyWithPresentationStyle:(int)a3;
- (id)copyWithSkinToneVariant:(int)a3;
- (id)copyWithSkinToneVariantSpecifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyWithoutModifiers;
- (id)description;
- (id)nameForType:(int)a3;
- (id)relatedEmojiTokens:(unint64_t)a3;
- (int)gender;
- (int)presentationStyle;
- (int)skinTone;
- (unint64_t)hash;
- (unsigned)_emojiIndex;
- (void)_createEmojiTokenRefIfNecessary;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
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
    v3 = [(EMFEmojiToken *)self string];
    v4 = [EMFStringUtilities _skinToneVariantsForString:v3];

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
          v12 = [(EMFEmojiToken *)self localeIdentifier];
          [v11 setLocaleIdentifier:v12];

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

  v5 = [(EMFEmojiToken *)self localeData];
  if (![v5 emojiLocaleDataRef] && self->_localeIdentifier)
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

+ (id)emojiTokenWithCEMEmojiToken:(__EmojiTokenWrapper *)a3
{
  v3 = [[a1 alloc] initWithCEMEmojiToken:a3];

  return v3;
}

+ (id)emojiTokensForCEMEmojiTokens:(__CFArray *)a3
{
  if (a3)
  {
    Count = CFArrayGetCount(a3);
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:Count];
    if (Count)
    {
      for (i = 0; i != Count; ++i)
      {
        v7 = [EMFEmojiToken emojiTokenWithCEMEmojiToken:CFArrayGetValueAtIndex(a3, i)];
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

+ (id)emojiTokenWithString:(id)a3 localeData:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithString:v7 localeData:v6];

  return v8;
}

+ (id)emojiTokenWithLongCharacter:(unsigned int)a3 localeData:(id)a4
{
  v5 = a4;
  [v5 emojiLocaleDataRef];
  v6 = CEMEmojiTokenCreateWithLongCharacter();
  v7 = [a1 emojiTokenWithCEMEmojiToken:v6];
  if (v6)
  {
    CFRelease(v6);
  }

  v8 = [v5 localeIdentifier];
  [v7 setLocaleIdentifier:v8];

  return v7;
}

- (EMFEmojiToken)initWithCEMEmojiToken:(__EmojiTokenWrapper *)a3
{
  if (a3)
  {
    v13.receiver = self;
    v13.super_class = EMFEmojiToken;
    v4 = [(EMFEmojiToken *)&v13 init];
    if (v4)
    {
      v4->_emojiTokenRef = CFRetain(a3);
      v5 = [CEMEmojiTokenGetString() copy];
      string = v4->_string;
      v4->_string = v5;

      v7 = [(EMFEmojiToken *)v4 localeData];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 localeIdentifier];
        v10 = [v9 copy];
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

- (EMFEmojiToken)initWithString:(id)a3 localeData:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [v7 localeIdentifier];
  v10 = [(EMFEmojiToken *)self initWithString:v8 localeIdentifier:v9];

  if (v10)
  {
    objc_storeStrong(&v10->_localeData, a4);
  }

  return v10;
}

- (EMFEmojiToken)initWithString:(id)a3 localeIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    v15.receiver = self;
    v15.super_class = EMFEmojiToken;
    v8 = [(EMFEmojiToken *)&v15 init];
    if (v8)
    {
      if ([EMFStringUtilities _genderEmojiBaseStringNeedVariantSelector:v6])
      {
        v9 = [v6 stringByAppendingString:@"️"];

        v6 = v9;
      }

      v8->_emojiTokenRef = 0;
      v10 = [v6 copy];
      string = v8->_string;
      v8->_string = v10;

      v12 = [v7 copy];
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
  v4 = [(EMFEmojiToken *)self string];
  [v3 appendFormat:@"; string = %@", v4];

  if (self->_localeIdentifier)
  {
    [v3 appendFormat:@"; locale = %@", self->_localeIdentifier];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  emojiTokenRef = self->_emojiTokenRef;
  v5 = [objc_opt_class() allocWithZone:a3];
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

- (EMFEmojiToken)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"emojiString"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localeIdentifier"];

  v7 = [(EMFEmojiToken *)self initWithString:v5 localeIdentifier:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(EMFEmojiToken *)self string];
  if (v4)
  {
    [v6 encodeObject:v4 forKey:@"emojiString"];
  }

  localeIdentifier = self->_localeIdentifier;
  if (localeIdentifier)
  {
    [v6 encodeObject:localeIdentifier forKey:@"localeIdentifier"];
  }
}

- (unint64_t)hash
{
  v2 = [(EMFEmojiToken *)self string];
  v3 = [v2 hash];

  return v3;
}

- (NSString)_baseString
{
  v2 = [(EMFEmojiToken *)self string];
  v3 = [EMFStringUtilities _baseStringForEmojiString:v2];

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
    v3 = [(EMFEmojiToken *)self string];
    v4 = [EMFStringUtilities _skinToneChooserVariantsForString:v3];

    v18 = [MEMORY[0x1E695DF70] array];
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
          v7 = [MEMORY[0x1E695DF70] array];
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
                v14 = [(EMFEmojiToken *)self localeIdentifier];
                [v13 setLocaleIdentifier:v14];

                [v7 addObject:v13];
              }

              v10 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v10);
          }

          [v18 addObject:v7];
        }

        v19 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v19);
    }
  }

  else
  {
    v18 = MEMORY[0x1E695E0F0];
  }

  return v18;
}

- (NSArray)_skinToneVariantStrings
{
  if ([(EMFEmojiToken *)self supportsSkinToneVariants])
  {
    v3 = [(EMFEmojiToken *)self string];
    v4 = [EMFStringUtilities _skinToneVariantsForString:v3];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (id)copyWithSkinToneVariant:(int)a3
{
  v5 = [(EMFEmojiToken *)self string];
  v6 = [EMFStringUtilities _skinToneVariantsForString:v5];

  if (![v6 count] || objc_msgSend(v6, "count") > 0x18 || (a3 > 6 || ((0x7Bu >> a3) & 1) == 0 ? (v7 = 0) : (objc_msgSend(v6, "objectAtIndex:", qword_1AF0AB8F0[a3]), v7 = objc_claimAutoreleasedReturnValue()), +[EMFEmojiToken emojiTokenWithString:localeData:](EMFEmojiToken, "emojiTokenWithString:localeData:", v7, 0), v8 = objc_claimAutoreleasedReturnValue(), -[EMFEmojiToken localeIdentifier](self, "localeIdentifier"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "setLocaleIdentifier:", v9), v9, v7, !v8))
  {
    v8 = [(EMFEmojiToken *)self copy];
  }

  return v8;
}

- (id)copyWithSkinToneVariantSpecifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 count];
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

    v9 = [(EMFEmojiToken *)self string];
    v10 = [EMFStringUtilities _multiPersonStringForString:v9 skinToneVariantSpecifier:v5];

    v8 = [EMFEmojiToken emojiTokenWithString:v10 localeData:0];
    v11 = [(EMFEmojiToken *)self localeIdentifier];
    [v8 setLocaleIdentifier:v11];

    if (!v8)
    {
      goto LABEL_8;
    }
  }

  return v8;
}

- (NSString)longFormEncodedStringVariantForMultiPersonGrouping
{
  v2 = [(EMFEmojiToken *)self string];
  v3 = [EMFStringUtilities _normalizeMultiPersonGroupToLongFormEncoding:v2];

  return v3;
}

- (NSString)shortFormEncodedStringVariantForMultiPersonGrouping
{
  v2 = [(EMFEmojiToken *)self string];
  v3 = [EMFStringUtilities _normalizeMultiPersonGroupToShortFormEncoding:v2];

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
  v2 = [(EMFEmojiToken *)self emojiTokenRef];

  return MEMORY[0x1EEDF8FC0](v2);
}

- (id)copyWithPresentationStyle:(int)a3
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
    v5 = [(EMFEmojiToken *)self _baseString];
    v4 = [EMFEmojiToken emojiTokenWithString:v5 localeData:0];

    v6 = [(EMFEmojiToken *)self localeIdentifier];
    [v4 setLocaleIdentifier:v6];
  }

  return v4;
}

- (BOOL)isEqualIgnoringModifiers:(id)a3
{
  v4 = a3;
  v5 = [(EMFEmojiToken *)self _baseString];
  v6 = [v4 _baseString];

  if (v5 == v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = [v5 isEqualToString:v6];
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(EMFEmojiToken *)self string];
    v7 = [v5 string];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(EMFEmojiToken *)self string];
      v10 = [v5 string];
      v11 = [v9 isEqualToString:v10];

      if (!v11)
      {
        v12 = 0;
LABEL_11:

        goto LABEL_12;
      }
    }

    v13 = [(EMFEmojiToken *)self localeIdentifier];
    v14 = [v5 localeIdentifier];
    if (v13 == v14)
    {
      v12 = 1;
    }

    else
    {
      v15 = [(EMFEmojiToken *)self localeIdentifier];
      v16 = [v5 localeIdentifier];
      v12 = [v15 isEqualToString:v16];
    }

    goto LABEL_11;
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (id)relatedEmojiTokens:(unint64_t)a3
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

- (id)nameForType:(int)a3
{
  [(EMFEmojiToken *)self emojiTokenRef];
  v3 = CEMEmojiTokenCopyName();

  return v3;
}

- (BOOL)isValid
{
  v2 = [(EMFEmojiToken *)self string];
  v3 = CEMStringIsSingleEmoji() != 0;

  return v3;
}

@end