@interface CalculateToken
+ (id)tokenWithType:(unint64_t)a3 range:(_NSRange)a4 text:(id)a5 ranks:(id)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isMaybeX;
- (BOOL)isPotentialVariable;
- (BOOL)isXVariable;
- (BOOL)needsWhitespaceAfter;
- (CalculateToken)initWithType:(unint64_t)a3 range:(_NSRange)a4 text:(id)a5 ranks:(id)a6;
- (NSString)normalizedText;
- (_NSRange)range;
@end

@implementation CalculateToken

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

- (BOOL)needsWhitespaceAfter
{
  tokenType = self->_tokenType;
  if (tokenType == 52 || tokenType == 39)
  {
    if (!self->_loadedNeedsWhitespaceAfter)
    {
      self->_loadedNeedsWhitespaceAfter = 1;
      if ([(NSString *)self->_text length])
      {
        v4 = +[CalculateTokenizer nonWhitespaceLanguageSet];
        self->_needsWhitespaceAfter = [v4 characterIsMember:{-[NSString characterAtIndex:](self->_text, "characterAtIndex:", 0)}] ^ 1;
      }

      else
      {
        self->_needsWhitespaceAfter = 0;
      }
    }

    return self->_needsWhitespaceAfter;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isPotentialVariable
{
  tokenType = self->_tokenType;
  v3 = 1;
  if (tokenType <= 38)
  {
    if (tokenType == 2)
    {
      return v3 & 1;
    }

    if (tokenType == 35)
    {
      if ([(NSString *)self->_text length]> 1)
      {
        v3 = 1;
        return v3 & 1;
      }

      tokenType = self->_tokenType;
    }

    goto LABEL_10;
  }

  if (tokenType != 39 && tokenType != 52)
  {
LABEL_10:
    v5 = tokenType > 0x26;
    v6 = 0x700007E000uLL >> tokenType;
    if (v5)
    {
      v3 = 0;
    }

    else
    {
      v3 = v6;
    }
  }

  return v3 & 1;
}

- (BOOL)isMaybeX
{
  tokenType = self->_tokenType;
  v3 = tokenType > 0x34;
  v4 = (1 << tokenType) & 0x10008000000040;
  v5 = v3 || v4 == 0;
  if (v5 || self->_range.length != 1)
  {
    return 0;
  }

  if ([(NSString *)self->_text isEqualToString:@"x"])
  {
    return 1;
  }

  text = self->_text;

  return [(NSString *)text isEqualToString:@"X"];
}

- (BOOL)isXVariable
{
  if (self->_tokenType != 39 || self->_range.length != 1)
  {
    return 0;
  }

  if ([(NSString *)self->_text isEqualToString:@"x"])
  {
    return 1;
  }

  text = self->_text;

  return [(NSString *)text isEqualToString:@"X"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (v5 = -[CalculateToken range](self, "range"), v5 == [v4 range]) && (-[CalculateToken range](self, "range"), v7 = v6, objc_msgSend(v4, "range"), v7 == v8))
  {
    v9 = [(CalculateToken *)self tokenType];
    v10 = v9 == [v4 tokenType];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CalculateToken)initWithType:(unint64_t)a3 range:(_NSRange)a4 text:(id)a5 ranks:(id)a6
{
  length = a4.length;
  location = a4.location;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = CalculateToken;
  v14 = [(CalculateToken *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_tokenType = a3;
    v14->_range.location = location;
    v14->_range.length = length;
    objc_storeStrong(&v14->_text, a5);
    objc_storeStrong(&v15->_ranks, a6);
  }

  return v15;
}

- (NSString)normalizedText
{
  normalizedText = self->_normalizedText;
  if (!normalizedText)
  {
    normalizedText = self->_text;
  }

  return normalizedText;
}

+ (id)tokenWithType:(unint64_t)a3 range:(_NSRange)a4 text:(id)a5 ranks:(id)a6
{
  length = a4.length;
  location = a4.location;
  v10 = a6;
  v11 = a5;
  v12 = [[CalculateToken alloc] initWithType:a3 range:location text:length ranks:v11, v10];

  return v12;
}

@end