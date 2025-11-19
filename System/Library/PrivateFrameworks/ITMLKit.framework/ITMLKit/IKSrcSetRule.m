@interface IKSrcSetRule
- (IKSrcSetRule)initWithURL:(id)a3 descriptor:(id)a4;
- (void)_parseDescriptor:(id)a3;
- (void)_parseMediaQueryDescriptor:(id)a3;
- (void)_parseResolutionDescriptor:(id)a3;
@end

@implementation IKSrcSetRule

- (IKSrcSetRule)initWithURL:(id)a3 descriptor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = IKSrcSetRule;
  v8 = [(IKSrcSetRule *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(IKSrcSetRule *)v8 setImageURL:v6];
    if ([v7 length])
    {
      [(IKSrcSetRule *)v9 _parseDescriptor:v7];
    }
  }

  return v9;
}

- (void)_parseDescriptor:(id)a3
{
  v4 = a3;
  [(IKSrcSetRule *)self setDescriptor:v4];
  if ([v4 hasPrefix:{@"(", "hasSuffix:", @")"}])
  {
    [(IKSrcSetRule *)self _parseMediaQueryDescriptor:v4];
  }

  else
  {
    [(IKSrcSetRule *)self _parseResolutionDescriptor:v4];
  }
}

- (void)_parseMediaQueryDescriptor:(id)a3
{
  v12 = a3;
  v4 = [[IKCSSTokenizer alloc] initWithText:v12];
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [(IKCSSTokenizer *)v4 getNextToken];
  if ([v6 type] == 2)
  {
    v7 = v6;
  }

  else
  {
    do
    {
      [(IKCSSTokenizer *)v4 reconsumeToken:v6];
      v8 = [IKCSSParser consumeComponentValue:v4];
      [v5 addObject:v8];

      v7 = [(IKCSSTokenizer *)v4 getNextToken];

      v6 = v7;
    }

    while ([v7 type] != 2);
  }

  if ([v5 count])
  {
    v9 = [IKCSSMediaQuery mediaQueryFromTokenList:v5];
    v10 = [IKStyleMediaQuery mediaQueryListWithCSSMediaQuery:v9];
    v11 = [v10 firstObject];

    [(IKSrcSetRule *)self setMediaQuery:v11];
  }
}

- (void)_parseResolutionDescriptor:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = @"1x";
  v6 = @"2x";
  if (([v4 isEqualToString:@"2x"] & 1) != 0 || (v6 = @"3x", objc_msgSend(v4, "isEqualToString:", @"3x")))
  {
    v7 = v6;

    v5 = v7;
  }

  v11 = @"min-pixel-ratio";
  v12[0] = v5;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [[IKStyleMediaQuery alloc] initWithMediaType:@"all" featureValues:v8 isNegated:0];
  [(IKSrcSetRule *)self setMediaQuery:v9];

  v10 = *MEMORY[0x277D85DE8];
}

@end