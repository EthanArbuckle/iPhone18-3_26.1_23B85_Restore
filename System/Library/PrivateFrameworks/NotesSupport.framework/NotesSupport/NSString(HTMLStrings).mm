@interface NSString(HTMLStrings)
- (id)_HTMLTagNameClosing:()HTMLStrings;
- (uint64_t)_HTMLRangeOfLastTagBeforeIndex:()HTMLStrings;
- (uint64_t)ic_HTMLInsertionPoint;
@end

@implementation NSString(HTMLStrings)

- (uint64_t)ic_HTMLInsertionPoint
{
  v2 = [self length];
  v3 = [self _HTMLRangeOfLastTagBeforeIndex:{objc_msgSend(self, "length")}];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v3;
    v6 = [self substringWithRange:{v3, v4}];
    v16 = 0;
    v7 = [v6 _HTMLTagNameClosing:&v16];
    v8 = v7;
    if (v16 == 1 && ![v7 caseInsensitiveCompare:@"html"])
    {
      v11 = [self _HTMLRangeOfLastTagBeforeIndex:v5];
      v9 = 0x7FFFFFFFFFFFFFFFLL;
      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = v11;
        v14 = [self substringWithRange:{v11, v12}];

        v15 = [v14 _HTMLTagNameClosing:&v16];

        v6 = v14;
        v8 = v15;
        v9 = v13;
      }
    }

    else
    {
      v9 = v5;
      v5 = v2;
    }

    if (v16 == 1 && ![v8 caseInsensitiveCompare:@"body"])
    {
      v5 = v9;
    }

    return v5;
  }

  return v2;
}

- (uint64_t)_HTMLRangeOfLastTagBeforeIndex:()HTMLStrings
{
  alphanumericCharacterSet = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
  v6 = [alphanumericCharacterSet mutableCopy];
  [v6 addCharactersInString:@">"];
  v7 = [self rangeOfCharacterFromSet:v6 options:4 range:{0, a3}];
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v7;
    v11 = [self substringWithRange:{v7, v8}];
    v12 = [v11 isEqualToString:@">"];

    v9 = 0x7FFFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = [self rangeOfString:@"<" options:4 range:{0, v10}];
      if (v13 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = v13;
      }
    }
  }

  return v9;
}

- (id)_HTMLTagNameClosing:()HTMLStrings
{
  alphanumericCharacterSet = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
  v6 = [alphanumericCharacterSet mutableCopy];
  [v6 addCharactersInString:@"/>"];
  v7 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:self];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__NSString_HTMLStrings___HTMLTagNameClosing___block_invoke;
  aBlock[3] = &unk_1E8485948;
  v8 = v7;
  v19 = v8;
  v9 = _Block_copy(aBlock);
  [v8 setCharactersToBeSkipped:0];
  [v8 scanUpToCharactersFromSet:v6 intoString:0];
  [v6 removeCharactersInString:@"/"];
  v10 = v9[2](v9);
  v11 = [v10 hasPrefix:@"/"];

  if (v11)
  {
    if (a3)
    {
      *a3 = 1;
    }

    [v8 scanUpToCharactersFromSet:v6 intoString:0];
  }

  else if (a3)
  {
    *a3 = 0;
  }

  v12 = v9[2](v9);
  if ([v12 length] && objc_msgSend(alphanumericCharacterSet, "characterIsMember:", objc_msgSend(v12, "characterAtIndex:", 0)))
  {
    invertedSet = [alphanumericCharacterSet invertedSet];
    v17 = 0;
    v14 = [v8 scanUpToCharactersFromSet:invertedSet intoString:&v17];
    v15 = v17;

    if (v14)
    {
      goto LABEL_12;
    }
  }

  v15 = 0;
LABEL_12:

  return v15;
}

@end