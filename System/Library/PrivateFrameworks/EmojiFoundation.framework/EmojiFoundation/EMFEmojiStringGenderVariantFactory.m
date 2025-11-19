@interface EMFEmojiStringGenderVariantFactory
- (EMFEmojiStringGenderVariantFactory)initWithSourceString:(id)a3 gender:(int)a4;
- (id)stringForGenderVariant:(int)a3;
@end

@implementation EMFEmojiStringGenderVariantFactory

- (EMFEmojiStringGenderVariantFactory)initWithSourceString:(id)a3 gender:(int)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = EMFEmojiStringGenderVariantFactory;
  v7 = [(EMFEmojiStringGenderVariantFactory *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    sourceString = v7->_sourceString;
    v7->_sourceString = v8;

    v7->_gender = a4;
  }

  return v7;
}

- (id)stringForGenderVariant:(int)a3
{
  v30 = *MEMORY[0x1E69E9840];
  if ([(NSString *)self->_sourceString length]>= 0x11)
  {
    v5 = [(EMFEmojiStringGenderVariantFactory *)self sourceString];
    goto LABEL_50;
  }

  memset(v29, 0, sizeof(v29));
  v6 = [(EMFEmojiStringGenderVariantFactory *)self sourceString];
  Length = CFStringGetLength(v6);
  if (Length < 1)
  {

    goto LABEL_25;
  }

  v8 = Length;
  v28 = a3;
  v9 = 0;
  v10 = 0;
  do
  {
    CharacterAtIndex = CFStringGetCharacterAtIndex(v6, v9);
    v12 = v9 + 1;
    if ((CharacterAtIndex & 0xFC00) == 0xD800 && v12 < v8)
    {
      v14 = CFStringGetCharacterAtIndex(v6, v9 + 1);
      if ((v14 & 0xFC00) != 0xDC00)
      {
        ++v9;
        continue;
      }

      CharacterAtIndex = v14 + (CharacterAtIndex << 10) - 56613888;
    }

    else
    {
      v12 = v9;
    }

    *(v29 + v10++) = CharacterAtIndex;
    v9 = v12 + 1;
  }

  while (v9 < v8 && v9 != 16);
  if (v9 < v8)
  {
    v15 = 0;
  }

  else
  {
    v15 = v10;
  }

  v16 = v29[0];

  a3 = v28;
  if ((v16 - 128104) < 2 || v16 == 129489)
  {
    if ((v28 - 1) > 2)
    {
      v17 = 0;
    }

    else
    {
      v17 = dword_1AF0ABF20[v28 - 1];
    }

    LODWORD(v29[0]) = v17;
    goto LABEL_46;
  }

LABEL_25:
  v18 = DWORD1(v29[0]);
  if (DWORD1(v29[0]) == 65039)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  if (a3 != 3)
  {
    if (a3 == 2)
    {
      v19 = 9792;
    }

    else
    {
      v19 = 0;
    }

    if (a3 == 1)
    {
      v19 = 9794;
    }

    v20 = 8;
    if (DWORD1(v29[0]) == 65039)
    {
      v21 = 8;
    }

    else
    {
      v21 = 4;
    }

    *(v29 | v21) = 8205;
    if (v18 == 65039)
    {
      v20 = 12;
    }

    *(v29 | v20) = v19;
    v22 = 16;
    if (v18 != 65039)
    {
      v22 = 12;
    }

    *(v29 + v22) = 65039;
    if (v18 == 65039)
    {
      v15 = 5;
    }

    else
    {
      v15 = 4;
    }
  }

LABEL_46:
  v23 = [MEMORY[0x1E695DEF0] dataWithBytes:v29 length:4 * v15];
  v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v23 encoding:2617245952];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = [(EMFEmojiStringGenderVariantFactory *)self sourceString];
  }

  v5 = v26;

LABEL_50:

  return v5;
}

@end