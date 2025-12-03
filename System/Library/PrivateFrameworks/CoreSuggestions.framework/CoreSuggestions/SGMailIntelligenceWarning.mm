@interface SGMailIntelligenceWarning
+ (id)snippetFromString:(id)string coreRange:(_NSRange)range withMaxWindowSizeAroundCore:(unint64_t)core;
- (SGMailIntelligenceWarning)initWithCoder:(id)coder;
- (SGMailIntelligenceWarning)initWithSnippet:(id)snippet core:(id)core signature:(id)signature detectedLanguage:(id)language isIncomingMessage:(BOOL)message score:(id)score;
- (id)description;
- (id)initFromString:(id)string coreRange:(_NSRange)range signature:(id)signature maxWindowSizeAroundCore:(unint64_t)core detectedLanguage:(id)language isIncomingMessage:(BOOL)message score:(id)score;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SGMailIntelligenceWarning

- (id)initFromString:(id)string coreRange:(_NSRange)range signature:(id)signature maxWindowSizeAroundCore:(unint64_t)core detectedLanguage:(id)language isIncomingMessage:(BOOL)message score:(id)score
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  signatureCopy = signature;
  languageCopy = language;
  scoreCopy = score;
  selfCopy = 0;
  if ([stringCopy length] && location != 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([signatureCopy length] && objc_msgSend(languageCopy, "length"))
    {
      v26.receiver = self;
      v26.super_class = SGMailIntelligenceWarning;
      v18 = [(SGMailIntelligenceWarning *)&v26 init];
      if (v18)
      {
        core = [SGMailIntelligenceWarning snippetFromString:stringCopy coreRange:location withMaxWindowSizeAroundCore:length, core];
        snippet = v18->_snippet;
        v18->_snippet = core;

        v21 = [stringCopy substringWithRange:{location, length}];
        core = v18->_core;
        v18->_core = v21;

        objc_storeStrong(&v18->_signature, signature);
        objc_storeStrong(&v18->_detectedLanguage, language);
        v18->_isIncomingMessage = message;
        objc_storeStrong(&v18->_score, score);
      }

      self = v18;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  signature = self->_signature;
  v5 = [v3 initWithFormat:@"<SGMailIntelligenceWarning triggered on: %@ (with signature %@) score: %@>", self->_snippet, signature, self->_score];

  return v5;
}

- (SGMailIntelligenceWarning)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = MEMORY[0x1E69C5D78];
  v5 = objc_opt_class();
  v6 = sgMailIntelligenceLogHandle();
  v7 = [v4 robustDecodeObjectOfClass:v5 forKey:@"snippet" withCoder:coderCopy expectNonNull:1 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v6];

  v8 = MEMORY[0x1E69C5D78];
  v9 = objc_opt_class();
  v10 = sgMailIntelligenceLogHandle();
  v11 = [v8 robustDecodeObjectOfClass:v9 forKey:@"core" withCoder:coderCopy expectNonNull:1 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v10];

  v12 = MEMORY[0x1E69C5D78];
  v13 = objc_opt_class();
  v14 = sgMailIntelligenceLogHandle();
  v15 = [v12 robustDecodeObjectOfClass:v13 forKey:@"signature" withCoder:coderCopy expectNonNull:1 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v14];

  v16 = MEMORY[0x1E69C5D78];
  v17 = objc_opt_class();
  v18 = sgMailIntelligenceLogHandle();
  v19 = [v16 robustDecodeObjectOfClass:v17 forKey:@"detectedLanguage" withCoder:coderCopy expectNonNull:1 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v18];

  v20 = [coderCopy decodeBoolForKey:@"isIncomingMessage"];
  v21 = MEMORY[0x1E69C5D78];
  v22 = objc_opt_class();
  v23 = sgMailIntelligenceLogHandle();
  v24 = [v21 robustDecodeObjectOfClass:v22 forKey:@"score" withCoder:coderCopy expectNonNull:1 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v23];

  v25 = 0;
  if (v7 && v11 && v15 && v24 && v19)
  {
    error = [coderCopy error];

    if (error)
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

- (void)encodeWithCoder:(id)coder
{
  snippet = self->_snippet;
  coderCopy = coder;
  [coderCopy encodeObject:snippet forKey:@"snippet"];
  [coderCopy encodeObject:self->_core forKey:@"core"];
  [coderCopy encodeObject:self->_signature forKey:@"signature"];
  [coderCopy encodeObject:self->_detectedLanguage forKey:@"detectedLanguage"];
  [coderCopy encodeBool:self->_isIncomingMessage forKey:@"isIncomingMessage"];
  [coderCopy encodeObject:self->_score forKey:@"score"];
}

- (SGMailIntelligenceWarning)initWithSnippet:(id)snippet core:(id)core signature:(id)signature detectedLanguage:(id)language isIncomingMessage:(BOOL)message score:(id)score
{
  snippetCopy = snippet;
  coreCopy = core;
  signatureCopy = signature;
  languageCopy = language;
  scoreCopy = score;
  v23.receiver = self;
  v23.super_class = SGMailIntelligenceWarning;
  v18 = [(SGMailIntelligenceWarning *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_snippet, snippet);
    objc_storeStrong(&v19->_core, core);
    objc_storeStrong(&v19->_signature, signature);
    objc_storeStrong(&v19->_detectedLanguage, language);
    v19->_isIncomingMessage = message;
    objc_storeStrong(&v19->_score, score);
  }

  return v19;
}

+ (id)snippetFromString:(id)string coreRange:(_NSRange)range withMaxWindowSizeAroundCore:(unint64_t)core
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  if (location <= core)
  {
    goto LABEL_10;
  }

  if (location - core >= location)
  {
LABEL_7:
    v11 = location;
  }

  else
  {
    v10 = -core;
    while (1)
    {
      v11 = location + v10;
      if ([whitespaceCharacterSet characterIsMember:{objc_msgSend(stringCopy, "characterAtIndex:", location + v10)}])
      {
        break;
      }

      if (__CFADD__(v10++, 1))
      {
        goto LABEL_7;
      }
    }
  }

  v13 = [stringCopy rangeOfComposedCharacterSequenceAtIndex:v11];
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
  v17 = v16 + core;
  if (v17 >= [stringCopy length] - 1)
  {
    v18 = [stringCopy length];
  }

  else
  {
    while (v17 > v16)
    {
      if ([whitespaceCharacterSet characterIsMember:{objc_msgSend(stringCopy, "characterAtIndex:", v17)}])
      {
        v16 = v17;
        break;
      }

      --v17;
    }

    v19 = [stringCopy rangeOfComposedCharacterSequenceAtIndex:v16];
    if (v20 >= 2)
    {
      v18 = v19 + v20;
    }

    else
    {
      v18 = v16;
    }
  }

  v21 = [stringCopy length];
  v22 = [stringCopy substringWithRange:{v14, v18 - v14}];
  v23 = [v22 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  v36 = 0;
  v24 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\s+" options:1 error:&v36];
  v25 = [v24 stringByReplacingMatchesInString:v23 options:0 range:0 withTemplate:{objc_msgSend(v23, "length"), @" "}];
  v26 = &stru_1F385B250;
  if ([stringCopy length])
  {
    punctuationCharacterSet = [MEMORY[0x1E696AB08] punctuationCharacterSet];
    v35 = v21;
    v28 = v15;
    v29 = [punctuationCharacterSet characterIsMember:{objc_msgSend(v25, "characterAtIndex:", 0)}];

    if (v29)
    {
      v28 = &stru_1F385B250;
    }

    punctuationCharacterSet2 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
    v31 = [punctuationCharacterSet2 characterIsMember:{objc_msgSend(v25, "characterAtIndex:", objc_msgSend(v25, "length") - 1)}];

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