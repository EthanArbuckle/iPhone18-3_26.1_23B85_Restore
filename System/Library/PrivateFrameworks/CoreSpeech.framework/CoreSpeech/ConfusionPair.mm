@interface ConfusionPair
- (BOOL)isEqual:(id)equal;
- (BOOL)isPunctuationEdit;
- (ConfusionPair)initWithUttId:(id)id;
- (unint64_t)hash;
- (void)addRecognizedToken:(id)token correctedToken:(id)correctedToken;
@end

@implementation ConfusionPair

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      uttId = self->_uttId;
      uttId = [(ConfusionPair *)v5 uttId];
      if ([(NSString *)uttId isEqualToString:uttId])
      {
        recognizedTokens = self->_recognizedTokens;
        recognizedTokens = [(ConfusionPair *)v5 recognizedTokens];
        if ([(NSMutableArray *)recognizedTokens isEqualToArray:recognizedTokens])
        {
          correctedTokens = self->_correctedTokens;
          correctedTokens = [(ConfusionPair *)v5 correctedTokens];
          v12 = [(NSMutableArray *)correctedTokens isEqualToArray:correctedTokens];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uttId hash];
  v4 = [(NSMutableArray *)self->_correctedTokens hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_recognizedTokens hash];
}

- (BOOL)isPunctuationEdit
{
  if ([(ConfusionPair *)self isPunctuationDeletion]|| [(ConfusionPair *)self isPunctuationInsertion])
  {
    return 1;
  }

  return [(ConfusionPair *)self isPunctuationSubstitution];
}

- (void)addRecognizedToken:(id)token correctedToken:(id)correctedToken
{
  tokenCopy = token;
  correctedTokenCopy = correctedToken;
  if ([tokenCopy isEqualToString:@"~"])
  {
    ++self->_numInsertion;
    ++self->_placeholderCount;
    [(NSMutableArray *)self->_correctedTokens addObject:correctedTokenCopy];
    isCorrectedTextPunctuation = self->_isCorrectedTextPunctuation;
    p_isCorrectedTextPunctuation = &self->_isCorrectedTextPunctuation;
    if (!isCorrectedTextPunctuation)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (![correctedTokenCopy isEqualToString:@"~"])
  {
    ++self->_numSubstitution;
    [(NSMutableArray *)self->_recognizedTokens addObject:tokenCopy];
    [(NSMutableArray *)self->_correctedTokens addObject:correctedTokenCopy];
    if (self->_isRecognizedTextPunctuation)
    {
      v11 = sub_100004C98(tokenCopy);
    }

    else
    {
      v11 = 0;
    }

    v12 = self->_isCorrectedTextPunctuation;
    p_isCorrectedTextPunctuation = &self->_isCorrectedTextPunctuation;
    *(p_isCorrectedTextPunctuation - 1) = v11;
    if (!v12)
    {
      goto LABEL_13;
    }

LABEL_11:
    v10 = correctedTokenCopy;
    goto LABEL_12;
  }

  ++self->_numDeletion;
  [(NSMutableArray *)self->_recognizedTokens addObject:tokenCopy];
  isRecognizedTextPunctuation = self->_isRecognizedTextPunctuation;
  p_isCorrectedTextPunctuation = &self->_isRecognizedTextPunctuation;
  if (isRecognizedTextPunctuation)
  {
    v10 = tokenCopy;
LABEL_12:
    v13 = sub_100004C98(v10);
    goto LABEL_14;
  }

LABEL_13:
  v13 = 0;
LABEL_14:
  *p_isCorrectedTextPunctuation = v13;
}

- (ConfusionPair)initWithUttId:(id)id
{
  idCopy = id;
  v15.receiver = self;
  v15.super_class = ConfusionPair;
  v5 = [(ConfusionPair *)&v15 init];
  if (v5)
  {
    v6 = [idCopy copy];
    v7 = *(v5 + 2);
    *(v5 + 2) = v6;

    v8 = objc_alloc_init(NSMutableArray);
    v9 = *(v5 + 3);
    *(v5 + 3) = v8;

    v10 = objc_alloc_init(NSMutableArray);
    v11 = *(v5 + 4);
    *(v5 + 4) = v10;

    v12 = *(v5 + 5);
    *(v5 + 5) = &stru_100039238;

    v13 = *(v5 + 6);
    *(v5 + 6) = &stru_100039238;

    *(v5 + 13) = 0;
    *(v5 + 88) = 0u;
    *(v5 + 72) = 0u;
    *(v5 + 56) = 0u;
    *(v5 + 4) = 257;
  }

  return v5;
}

@end