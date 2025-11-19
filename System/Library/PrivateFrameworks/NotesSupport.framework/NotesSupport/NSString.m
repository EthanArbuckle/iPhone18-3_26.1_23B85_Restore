@interface NSString
@end

@implementation NSString

void __50__NSString_IC__ic_containsNonWhitespaceCharacters__block_invoke()
{
  v2 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v0 = [v2 invertedSet];
  v1 = ic_containsNonWhitespaceCharacters_invertedWhitespaces;
  ic_containsNonWhitespaceCharacters_invertedWhitespaces = v0;
}

uint64_t __54__NSString_IC__ic_whitespaceAndNewlineCoalescedString__block_invoke()
{
  ic_whitespaceAndNewlineCoalescedString_regex = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"[\r\n\\s]+" options:0 error:0];

  return MEMORY[0x1EEE66BB8]();
}

BOOL __54__NSString_IC__ic_stringByRemovingWhitespaceOnlyLines__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AB08];
  v3 = a2;
  v4 = [v2 whitespaceAndNewlineCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  v6 = [v5 length] != 0;
  return v6;
}

void __44__NSString_IC__ic_uniqueWordsWithMinLength___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  if ([v9 isEqualToString:*MEMORY[0x1E696A568]] && objc_msgSend(v9, "length") >= *(a1 + 48))
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) substringWithRange:{a3, a4}];
    [v7 addObject:v8];
  }
}

uint64_t __44__NSString_IC__ic_uniqueWordsWithMinLength___block_invoke_133(uint64_t a1, uint64_t a2)
{
  [*(*(*(a1 + 32) + 8) + 40) appendString:a2];
  v3 = *(*(*(a1 + 32) + 8) + 40);

  return [v3 appendString:@" "];
}

void __63__NSString_IC__ic_containsNonWhitespaceAndAttachmentCharacters__block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v4 = [v0 mutableCopy];

  v1 = [objc_opt_class() ic_attachmentCharacterString];
  [v4 addCharactersInString:v1];

  v2 = [v4 invertedSet];
  v3 = ic_containsNonWhitespaceAndAttachmentCharacters_invertedWhitespaceAndAttachmentCharacters;
  ic_containsNonWhitespaceAndAttachmentCharacters_invertedWhitespaceAndAttachmentCharacters = v2;
}

void __58__NSString_IC__ic_stringByReplacingCharactersInStringMap___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v12 = v3;
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v3 = v12;
    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  v8 = MEMORY[0x1E696B098];
  v9 = [v3 range];
  v11 = [v8 valueWithRange:{v9, v10}];
  [v4 addObject:v11];
}

NSUInteger __41__NSString_IC__ic_sentenceRangeForRange___block_invoke(uint64_t a1, int a2, NSRange range1, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  length = range1.length;
  location = range1.location;
  v17 = *(a1 + 40);
  v16.location = location;
  v16.length = length;
  v12 = NSIntersectionRange(v16, v17);
  if (v12.length)
  {
    v13 = v12.location == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v14 = *(*(a1 + 32) + 8);
    v12.location = *(v14 + 32);
    if (v12.location == 0x7FFFFFFFFFFFFFFFLL)
    {
      *(v14 + 32) = location;
      *(v14 + 40) = length;
    }

    else
    {
      v12.length = *(v14 + 40);
      v18.location = location;
      v18.length = length;
      v12 = NSUnionRange(v12, v18);
      *(*(*(a1 + 32) + 8) + 32) = v12;
    }
  }

  if ((a4 + a5) > *(a1 + 48) + *(a1 + 40))
  {
    *a6 = 1;
  }

  return v12.location;
}

unint64_t __38__NSString_IC__ic_lengthOfLongestLine__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  result = [a2 length];
  if (v3 <= result)
  {
    v5 = result;
  }

  else
  {
    v5 = v3;
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;
  return result;
}

id __45__NSString_HTMLStrings___HTMLTagNameClosing___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isAtEnd])
  {
    v2 = 0;
  }

  else
  {
    v3 = [*(a1 + 32) string];
    v2 = [v3 substringFromIndex:{objc_msgSend(*(a1 + 32), "scanLocation")}];
  }

  return v2;
}

@end