@interface _ECParsedHTMLText
- (id)copyConsumableNodesAndAppendInnerTextToStringAccumulator:(id)accumulator;
- (id)description;
@end

@implementation _ECParsedHTMLText

- (id)copyConsumableNodesAndAppendInnerTextToStringAccumulator:(id)accumulator
{
  startLocation = [(_ECParsedHTMLNode *)self startLocation];
  [accumulator appendRange:startLocation ofString:{-[_ECParsedHTMLNode endLocation](self, "endLocation") - startLocation, -[_ECParsedHTMLNode htmlString](self, "htmlString")}];
  return 0;
}

- (id)description
{
  v3 = [[ECMessageBodyStringAccumulator alloc] initWithOptions:0 lengthLimit:81];
  [(ECMessageBodyStringAccumulator *)v3 appendInnerTextWithConsumableNode:self];
  accumulatedString = [(ECMessageBodyStringAccumulator *)v3 accumulatedString];
  if ([(NSString *)accumulatedString length]> 0x50)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@...", -[NSString substringToIndex:](accumulatedString, "substringToIndex:", 80)];
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", accumulatedString];
  }

  v6 = v5;

  return v6;
}

@end