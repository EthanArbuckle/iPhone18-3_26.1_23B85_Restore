@interface BRLTEmojiPrintPreprocessor
- (BRLTEmojiPrintPreprocessor)init;
- (BRLTEmojiPrintPreprocessor)initWithPrimaryLanguageCode:(id)a3;
- (id)preprocessPrintString:(id)a3 withLocationMap:(id *)a4 isEightDot:(BOOL)a5 textFormattingRanges:(id)a6;
- (void)_commonInit;
- (void)_setupLocale;
- (void)dealloc;
@end

@implementation BRLTEmojiPrintPreprocessor

- (BRLTEmojiPrintPreprocessor)initWithPrimaryLanguageCode:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BRLTEmojiPrintPreprocessor;
  v6 = [(BRLTEmojiPrintPreprocessor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_primaryLanguageCode, a3);
    [(BRLTEmojiPrintPreprocessor *)v7 _commonInit];
  }

  return v7;
}

- (BRLTEmojiPrintPreprocessor)init
{
  v5.receiver = self;
  v5.super_class = BRLTEmojiPrintPreprocessor;
  v2 = [(BRLTEmojiPrintPreprocessor *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BRLTEmojiPrintPreprocessor *)v2 _commonInit];
  }

  return v3;
}

- (void)_commonInit
{
  [(BRLTEmojiPrintPreprocessor *)self _setupLocale];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__setupLocale name:*MEMORY[0x277CBEEB0] object:0];
}

- (id)preprocessPrintString:(id)a3 withLocationMap:(id *)a4 isEightDot:(BOOL)a5 textFormattingRanges:(id)a6
{
  v9 = a3;
  v10 = a6;
  if (v9)
  {
    v25 = v10;
    v11 = [v9 length];
    v12 = [MEMORY[0x277CCAB68] string];
    if (a4)
    {
      v13 = [MEMORY[0x277CBEB28] dataWithLength:0];
    }

    else
    {
      v13 = 0;
    }

    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    [v9 length];
    locale = self->_locale;
    v16 = v9;
    v17 = v12;
    v18 = v13;
    CEMEnumerateEmojiTokensInStringWithLocaleAndBlock();
    v19 = v27[3];
    if (v11 > v19)
    {
      v20 = v17;
      v21 = v18;
      v22 = [v16 substringWithRange:{v19, v11 - v19}];
      [v20 appendString:v22];

      do
      {
        v30 = v19;
        [v21 appendBytes:&v30 length:8];
        ++v19;
      }

      while (v11 != v19);
    }

    if (a4)
    {
      v23 = v18;
      *a4 = v18;
    }

    v14 = v17;

    _Block_object_dispose(&v26, 8);
    v10 = v25;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __100__BRLTEmojiPrintPreprocessor_preprocessPrintString_withLocationMap_isEightDot_textFormattingRanges___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = *(*(*(a1 + 56) + 8) + 24);
  v8 = a3 - v7;
  if (a3 > v7)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    v11 = *(a1 + 40);
    v12 = v10;
    v13 = [v9 substringWithRange:{v7, v8}];
    [v11 appendString:v13];

    do
    {
      v20 = v7;
      [v12 appendBytes:&v20 length:8];
      ++v7;
    }

    while (a3 != v7);
  }

  v14 = CEMEmojiTokenCopyName();
  if ([v14 length])
  {
    if (*(a1 + 64))
    {
      v15 = @":";
    }

    else
    {
      v15 = [MEMORY[0x277CCACA8] stringWithCharacters:&_TranscriberNoteStart length:5];
    }

    if (*(a1 + 64))
    {
      v16 = @":";
    }

    else
    {
      v16 = [MEMORY[0x277CCACA8] stringWithCharacters:&_TranscriberNoteEnd length:5];
    }

    v17 = [(__CFString *)v15 stringByAppendingString:v14];
    v18 = [v17 stringByAppendingString:v16];

    v19 = [v18 length];
    [*(a1 + 40) appendString:v18];
    for (; v19; --v19)
    {
      v20 = a3;
      [*(a1 + 48) appendBytes:&v20 length:8];
    }

    v14 = v18;
  }

  *(*(*(a1 + 56) + 8) + 24) = a3 + a4;
}

- (void)_setupLocale
{
  v3 = CFLocaleCopyCurrent();
  locale = self->_locale;
  if (locale)
  {
    CFRelease(locale);
    self->_locale = 0;
  }

  v5 = CFLocaleGetValue(v3, *MEMORY[0x277CBEED0]);
  v6 = [v5 componentsSeparatedByString:@"-"];
  v7 = [v6 firstObject];
  v8 = [(NSString *)self->_primaryLanguageCode componentsSeparatedByString:@"-"];
  v9 = [v8 firstObject];
  if ([v7 isEqual:v9])
  {

    primaryLanguageCode = v5;
  }

  else
  {
    v11 = [(NSString *)self->_primaryLanguageCode length];

    primaryLanguageCode = v5;
    if (v11)
    {
      primaryLanguageCode = self->_primaryLanguageCode;
    }
  }

  v12 = primaryLanguageCode;
  self->_locale = CEMCreateEmojiLocaleData();
  if (v3)
  {
    CFRelease(v3);
  }
}

- (void)dealloc
{
  locale = self->_locale;
  if (locale)
  {
    CFRelease(locale);
  }

  v4.receiver = self;
  v4.super_class = BRLTEmojiPrintPreprocessor;
  [(BRLTEmojiPrintPreprocessor *)&v4 dealloc];
}

@end