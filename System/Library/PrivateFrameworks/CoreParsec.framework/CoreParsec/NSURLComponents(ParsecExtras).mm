@interface NSURLComponents(ParsecExtras)
+ (id)parsec_componentsWithString:()ParsecExtras;
+ (id)parsec_componentsWithURL:()ParsecExtras resolvingAgainstBaseURL:;
- (id)parsec_componentsAfterRemovingSubdomains;
- (id)parsec_normalizedURLStringWithOptions:()ParsecExtras;
@end

@implementation NSURLComponents(ParsecExtras)

- (id)parsec_componentsAfterRemovingSubdomains
{
  v2 = [self URL];
  absoluteString = [v2 absoluteString];
  parsec_readableURLStringAfterRemovingSubdomains = [absoluteString parsec_readableURLStringAfterRemovingSubdomains];

  if (parsec_readableURLStringAfterRemovingSubdomains)
  {
    selfCopy = [objc_alloc(MEMORY[0x1E696AF20]) initWithString:parsec_readableURLStringAfterRemovingSubdomains];
  }

  else
  {
    selfCopy = self;
  }

  v6 = selfCopy;

  return v6;
}

- (id)parsec_normalizedURLStringWithOptions:()ParsecExtras
{
  v37 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v6 = [self URL];
    absoluteString = [v6 absoluteString];
    goto LABEL_29;
  }

  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  v6 = v5;
  if (v4)
  {
    [v5 addObject:@"www."];
  }

  if ((v4 & 2) != 0)
  {
    [v6 addObjectsFromArray:&unk_1F27A0920];
  }

  string = [self string];
  absoluteString = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:{objc_msgSend(string, "length")}];
  rangeOfHost = [self rangeOfHost];
  if (v10)
  {
    v31 = string;
    v11 = [string substringWithRange:{rangeOfHost, v10}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v12 = v6;
    v13 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v33;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [v11 rangeOfString:*(*(&v32 + 1) + 8 * i) options:9];
          if (v17 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v19 = [v11 substringFromIndex:v17 + v18];

            v11 = v19;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v14);
    }

    [absoluteString appendString:v11];
    string = v31;
  }

  rangeOfPath = [self rangeOfPath];
  if ((v4 & 4) == 0 && v21)
  {
    v22 = [string substringWithRange:{rangeOfPath, v21}];
    v23 = v22;
    if ((v4 & 8) != 0)
    {
      v23 = v22;
      lastPathComponent = [v23 lastPathComponent];
      if ([lastPathComponent containsString:@"."])
      {

LABEL_24:
        stringByDeletingLastPathComponent = [v23 stringByDeletingLastPathComponent];

        v23 = stringByDeletingLastPathComponent;
        goto LABEL_25;
      }

      v25 = [v23 parsec_hasCaseInsensitiveSuffix:@"html"];

      if (v25)
      {
        goto LABEL_24;
      }
    }

LABEL_25:
    v27 = [v23 rangeOfString:@"/" options:13];
    if (v27 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v28 = [v23 substringToIndex:v27];

      v23 = v28;
    }

    [absoluteString appendString:v23];
  }

LABEL_29:
  v29 = *MEMORY[0x1E69E9840];

  return absoluteString;
}

+ (id)parsec_componentsWithString:()ParsecExtras
{
  v0 = [MEMORY[0x1E696AF20] componentsWithString:?];
  fixQueryComponentEncoding(v0);
  objc_claimAutoreleasedReturnValue();

  return v0;
}

+ (id)parsec_componentsWithURL:()ParsecExtras resolvingAgainstBaseURL:
{
  v0 = [MEMORY[0x1E696AF20] componentsWithURL:? resolvingAgainstBaseURL:?];
  fixQueryComponentEncoding(v0);
  objc_claimAutoreleasedReturnValue();

  return v0;
}

@end