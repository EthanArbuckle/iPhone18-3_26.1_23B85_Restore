@interface IKSrcSetRule
- (IKSrcSetRule)initWithURL:(id)l descriptor:(id)descriptor;
- (void)_parseDescriptor:(id)descriptor;
- (void)_parseMediaQueryDescriptor:(id)descriptor;
- (void)_parseResolutionDescriptor:(id)descriptor;
@end

@implementation IKSrcSetRule

- (IKSrcSetRule)initWithURL:(id)l descriptor:(id)descriptor
{
  lCopy = l;
  descriptorCopy = descriptor;
  v11.receiver = self;
  v11.super_class = IKSrcSetRule;
  v8 = [(IKSrcSetRule *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(IKSrcSetRule *)v8 setImageURL:lCopy];
    if ([descriptorCopy length])
    {
      [(IKSrcSetRule *)v9 _parseDescriptor:descriptorCopy];
    }
  }

  return v9;
}

- (void)_parseDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  [(IKSrcSetRule *)self setDescriptor:descriptorCopy];
  if ([descriptorCopy hasPrefix:{@"(", "hasSuffix:", @")"}])
  {
    [(IKSrcSetRule *)self _parseMediaQueryDescriptor:descriptorCopy];
  }

  else
  {
    [(IKSrcSetRule *)self _parseResolutionDescriptor:descriptorCopy];
  }
}

- (void)_parseMediaQueryDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v4 = [[IKCSSTokenizer alloc] initWithText:descriptorCopy];
  array = [MEMORY[0x277CBEB18] array];
  getNextToken = [(IKCSSTokenizer *)v4 getNextToken];
  if ([getNextToken type] == 2)
  {
    getNextToken2 = getNextToken;
  }

  else
  {
    do
    {
      [(IKCSSTokenizer *)v4 reconsumeToken:getNextToken];
      v8 = [IKCSSParser consumeComponentValue:v4];
      [array addObject:v8];

      getNextToken2 = [(IKCSSTokenizer *)v4 getNextToken];

      getNextToken = getNextToken2;
    }

    while ([getNextToken2 type] != 2);
  }

  if ([array count])
  {
    v9 = [IKCSSMediaQuery mediaQueryFromTokenList:array];
    v10 = [IKStyleMediaQuery mediaQueryListWithCSSMediaQuery:v9];
    firstObject = [v10 firstObject];

    [(IKSrcSetRule *)self setMediaQuery:firstObject];
  }
}

- (void)_parseResolutionDescriptor:(id)descriptor
{
  v12[1] = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  v5 = @"1x";
  v6 = @"2x";
  if (([descriptorCopy isEqualToString:@"2x"] & 1) != 0 || (v6 = @"3x", objc_msgSend(descriptorCopy, "isEqualToString:", @"3x")))
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