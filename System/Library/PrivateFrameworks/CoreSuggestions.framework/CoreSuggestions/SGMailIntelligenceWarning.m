@interface SGMailIntelligenceWarning
+ (id)snippetFromString:(id)a3 coreRange:(_NSRange)a4 withMaxWindowSizeAroundCore:(unint64_t)a5;
- (SGMailIntelligenceWarning)initWithCoder:(id)a3;
- (SGMailIntelligenceWarning)initWithSnippet:(id)a3 core:(id)a4 signature:(id)a5 detectedLanguage:(id)a6 isIncomingMessage:(BOOL)a7 score:(id)a8;
- (id)description;
- (id)initFromString:(id)a3 coreRange:(_NSRange)a4 signature:(id)a5 maxWindowSizeAroundCore:(unint64_t)a6 detectedLanguage:(id)a7 isIncomingMessage:(BOOL)a8 score:(id)a9;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SGMailIntelligenceWarning

- (id)initFromString:(id)a3 coreRange:(_NSRange)a4 signature:(id)a5 maxWindowSizeAroundCore:(unint64_t)a6 detectedLanguage:(id)a7 isIncomingMessage:(BOOL)a8 score:(id)a9
{
  length = a4.length;
  location = a4.location;
  v13 = a3;
  v14 = a5;
  v15 = a7;
  v16 = a9;
  v17 = 0;
  if ([v13 length] && location != 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v14 length] && objc_msgSend(v15, "length"))
    {
      v26.receiver = self;
      v26.super_class = SGMailIntelligenceWarning;
      v18 = [(SGMailIntelligenceWarning *)&v26 init];
      if (v18)
      {
        v19 = [SGMailIntelligenceWarning snippetFromString:v13 coreRange:location withMaxWindowSizeAroundCore:length, a6];
        snippet = v18->_snippet;
        v18->_snippet = v19;

        v21 = [v13 substringWithRange:{location, length}];
        core = v18->_core;
        v18->_core = v21;

        objc_storeStrong(&v18->_signature, a5);
        objc_storeStrong(&v18->_detectedLanguage, a7);
        v18->_isIncomingMessage = a8;
        objc_storeStrong(&v18->_score, a9);
      }

      self = v18;
      v17 = self;
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  signature = self->_signature;
  v5 = [v3 initWithFormat:@"<SGMailIntelligenceWarning triggered on: %@ (with signature %@) score: %@>", self->_snippet, signature, self->_score];

  return v5;
}

- (SGMailIntelligenceWarning)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E69C5D78];
  v5 = objc_opt_class();
  v6 = sgMailIntelligenceLogHandle();
  v7 = [v4 robustDecodeObjectOfClass:v5 forKey:@"snippet" withCoder:v3 expectNonNull:1 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v6];

  v8 = MEMORY[0x1E69C5D78];
  v9 = objc_opt_class();
  v10 = sgMailIntelligenceLogHandle();
  v11 = [v8 robustDecodeObjectOfClass:v9 forKey:@"core" withCoder:v3 expectNonNull:1 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v10];

  v12 = MEMORY[0x1E69C5D78];
  v13 = objc_opt_class();
  v14 = sgMailIntelligenceLogHandle();
  v15 = [v12 robustDecodeObjectOfClass:v13 forKey:@"signature" withCoder:v3 expectNonNull:1 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v14];

  v16 = MEMORY[0x1E69C5D78];
  v17 = objc_opt_class();
  v18 = sgMailIntelligenceLogHandle();
  v19 = [v16 robustDecodeObjectOfClass:v17 forKey:@"detectedLanguage" withCoder:v3 expectNonNull:1 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v18];

  v20 = [v3 decodeBoolForKey:@"isIncomingMessage"];
  v21 = MEMORY[0x1E69C5D78];
  v22 = objc_opt_class();
  v23 = sgMailIntelligenceLogHandle();
  v24 = [v21 robustDecodeObjectOfClass:v22 forKey:@"score" withCoder:v3 expectNonNull:1 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v23];

  v25 = 0;
  if (v7 && v11 && v15 && v24 && v19)
  {
    v26 = [v3 error];

    if (v26)
    {
      v25 = 0;
    }

    else
    {
      v25 = [[SGMailIntelligenceWarning alloc] initWithSnippet:v7 core:v11 signature:v15 detectedLanguage:v19 isIncomingMessage:v20 score:v24];
    }
  }

  return v25;
}

- (void)encodeWithCoder:(id)a3
{
  snippet = self->_snippet;
  v5 = a3;
  [v5 encodeObject:snippet forKey:@"snippet"];
  [v5 encodeObject:self->_core forKey:@"core"];
  [v5 encodeObject:self->_signature forKey:@"signature"];
  [v5 encodeObject:self->_detectedLanguage forKey:@"detectedLanguage"];
  [v5 encodeBool:self->_isIncomingMessage forKey:@"isIncomingMessage"];
  [v5 encodeObject:self->_score forKey:@"score"];
}

- (SGMailIntelligenceWarning)initWithSnippet:(id)a3 core:(id)a4 signature:(id)a5 detectedLanguage:(id)a6 isIncomingMessage:(BOOL)a7 score:(id)a8
{
  v22 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = SGMailIntelligenceWarning;
  v18 = [(SGMailIntelligenceWarning *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_snippet, a3);
    objc_storeStrong(&v19->_core, a4);
    objc_storeStrong(&v19->_signature, a5);
    objc_storeStrong(&v19->_detectedLanguage, a6);
    v19->_isIncomingMessage = a7;
    objc_storeStrong(&v19->_score, a8);
  }

  return v19;
}

+ (id)snippetFromString:(id)a3 coreRange:(_NSRange)a4 withMaxWindowSizeAroundCore:(unint64_t)a5
{
  length = a4.length;
  location = a4.location;
  v8 = a3;
  v9 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  if (location <= a5)
  {
    goto LABEL_10;
  }

  if (location - a5 >= location)
  {
LABEL_7:
    v11 = location;
  }

  else
  {
    v10 = -a5;
    while (1)
    {
      v11 = location + v10;
      if ([v9 characterIsMember:{objc_msgSend(v8, "characterAtIndex:", location + v10)}])
      {
        break;
      }

      if (__CFADD__(v10++, 1))
      {
        goto LABEL_7;
      }
    }
  }

  v13 = [v8 rangeOfComposedCharacterSequenceAtIndex:v11];
  if (v13)
  {
    v14 = v13;
    v15 = @"…";
  }

  else
  {
LABEL_10:
    v14 = 0;
    v15 = &stru_1F385B250;
  }

  v16 = location + length;
  v17 = v16 + a5;
  if (v17 >= [v8 length] - 1)
  {
    v18 = [v8 length];
  }

  else
  {
    while (v17 > v16)
    {
      if ([v9 characterIsMember:{objc_msgSend(v8, "characterAtIndex:", v17)}])
      {
        v16 = v17;
        break;
      }

      --v17;
    }

    v19 = [v8 rangeOfComposedCharacterSequenceAtIndex:v16];
    if (v20 >= 2)
    {
      v18 = v19 + v20;
    }

    else
    {
      v18 = v16;
    }
  }

  v21 = [v8 length];
  v22 = [v8 substringWithRange:{v14, v18 - v14}];
  v23 = [v22 stringByTrimmingCharactersInSet:v9];

  v36 = 0;
  v24 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\s+" options:1 error:&v36];
  v25 = [v24 stringByReplacingMatchesInString:v23 options:0 range:0 withTemplate:{objc_msgSend(v23, "length"), @" "}];
  v26 = &stru_1F385B250;
  if ([v8 length])
  {
    v27 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
    v35 = v21;
    v28 = v15;
    v29 = [v27 characterIsMember:{objc_msgSend(v25, "characterAtIndex:", 0)}];

    if (v29)
    {
      v28 = &stru_1F385B250;
    }

    v30 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
    v31 = [v30 characterIsMember:{objc_msgSend(v25, "characterAtIndex:", objc_msgSend(v25, "length") - 1)}];

    if (v18 == v35)
    {
      v32 = 1;
    }

    else
    {
      v32 = v31;
    }

    if (v32)
    {
      v33 = &stru_1F385B250;
    }

    else
    {
      v33 = @"…";
    }

    v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%@%@", v28, v25, v33];
  }

  return v26;
}

@end