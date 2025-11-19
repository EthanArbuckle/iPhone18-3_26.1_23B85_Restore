@interface EMKTextEnumerator
- (EMKTextEnumerator)initWithEmojiPreferences:(id)a3;
- (id)emojiDataForLanguage:(id)a3;
- (void)enumerateEmojiSignifiersInString:(id)a3 touchingRange:(_NSRange)a4 language:(id)a5 usingBlock:(id)a6;
@end

@implementation EMKTextEnumerator

- (EMKTextEnumerator)initWithEmojiPreferences:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = EMKTextEnumerator;
  v6 = [(EMKTextEnumerator *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    emojiDatasByLanguage = v6->_emojiDatasByLanguage;
    v6->_emojiDatasByLanguage = v7;

    objc_storeStrong(&v6->_emojiPreferences, a3);
  }

  return v6;
}

- (id)emojiDataForLanguage:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_emojiDatasByLanguage objectForKey:v4];
  if (!v5)
  {
    v9 = [MEMORY[0x277D072F8] emojiLocaleDataWithLocaleIdentifier:v4];
    emojiDatasByLanguage = self->_emojiDatasByLanguage;
    if (v9)
    {
      v6 = v9;
      [(NSMutableDictionary *)emojiDatasByLanguage setObject:v9 forKey:v4];
      goto LABEL_8;
    }

    v6 = [MEMORY[0x277CBEB68] null];
    [(NSMutableDictionary *)emojiDatasByLanguage setObject:v6 forKey:v4];
    goto LABEL_7;
  }

  v6 = v5;
  v7 = [MEMORY[0x277CBEB68] null];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
LABEL_7:

    v6 = 0;
  }

LABEL_8:

  return v6;
}

- (void)enumerateEmojiSignifiersInString:(id)a3 touchingRange:(_NSRange)a4 language:(id)a5 usingBlock:(id)a6
{
  length = a4.length;
  location = a4.location;
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (enumerateEmojiSignifiersInString_touchingRange_language_usingBlock__onceToken != -1)
  {
    [EMKTextEnumerator enumerateEmojiSignifiersInString:touchingRange:language:usingBlock:];
  }

  if (location)
  {
    v14 = location - 1;
  }

  else
  {
    v14 = 0;
  }

  if (location)
  {
    ++length;
  }

  if (length + v14 >= [v11 length])
  {
    v15 = length;
  }

  else
  {
    v15 = length + 1;
  }

  v16 = [v11 paragraphRangeForRange:{v14, v15}];
  v18 = v17;
  [v11 rangeOfCharacterFromSet:enumerateEmojiSignifiersInString_touchingRange_language_usingBlock__searchableCharacterSet options:0 range:{v16, v17}];
  if (v19)
  {
    v20 = [(EMKTextEnumerator *)self emojiDataForLanguage:v12];
    if (v20 && v18)
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __88__EMKTextEnumerator_enumerateEmojiSignifiersInString_touchingRange_language_usingBlock___block_invoke_2;
      v21[3] = &unk_2781C2408;
      v25 = v14;
      v26 = v15;
      v21[4] = self;
      v22 = v11;
      v23 = v12;
      v24 = v13;
      [v20 enumerateSearchResultsInText:v22 range:v16 options:v18 searchType:17 usingBlock:{1, v21}];
    }
  }

  else
  {
    v20 = 0;
  }
}

void __88__EMKTextEnumerator_enumerateEmojiSignifiersInString_touchingRange_language_usingBlock___block_invoke()
{
  v3 = [MEMORY[0x277CCAB50] controlCharacterSet];
  v0 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  [v3 formUnionWithCharacterSet:v0];

  [v3 addCharactersInRange:{65532, 4}];
  [v3 invert];
  v1 = [v3 copy];
  v2 = enumerateEmojiSignifiersInString_touchingRange_language_usingBlock__searchableCharacterSet;
  enumerateEmojiSignifiersInString_touchingRange_language_usingBlock__searchableCharacterSet = v1;
}

void __88__EMKTextEnumerator_enumerateEmojiSignifiersInString_touchingRange_language_usingBlock___block_invoke_2(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (a4)
  {
    v8 = *(a1 + 64);
    if (a3 <= *(a1 + 72) + v8 && v8 <= a3 + a4)
    {
      v13 = v7;
      if ([v7 count])
      {
        if (*(*(a1 + 32) + 16))
        {
          v10 = [*(a1 + 40) substringWithRange:{a3, a4}];
          v11 = [*(*(a1 + 32) + 16) copySortedEmojis:v13 keyword:v10 localeIdentifier:*(a1 + 48)];

          v13 = v11;
        }

        v12 = [[EMKEmojiTokenList alloc] initWithEmojiTokenArray:v13];
        (*(*(a1 + 56) + 16))();
      }

      v7 = v13;
    }
  }
}

@end