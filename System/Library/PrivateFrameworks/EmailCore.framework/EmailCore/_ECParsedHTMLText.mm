@interface _ECParsedHTMLText
- (id)copyConsumableNodesAndAppendInnerTextToStringAccumulator:(id)a3;
- (id)description;
@end

@implementation _ECParsedHTMLText

- (id)copyConsumableNodesAndAppendInnerTextToStringAccumulator:(id)a3
{
  v5 = [(_ECParsedHTMLNode *)self startLocation];
  [a3 appendRange:v5 ofString:{-[_ECParsedHTMLNode endLocation](self, "endLocation") - v5, -[_ECParsedHTMLNode htmlString](self, "htmlString")}];
  return 0;
}

- (id)description
{
  v3 = [[ECMessageBodyStringAccumulator alloc] initWithOptions:0 lengthLimit:81];
  [(ECMessageBodyStringAccumulator *)v3 appendInnerTextWithConsumableNode:self];
  v4 = [(ECMessageBodyStringAccumulator *)v3 accumulatedString];
  if ([(NSString *)v4 length]> 0x50)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@...", -[NSString substringToIndex:](v4, "substringToIndex:", 80)];
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v4];
  }

  v6 = v5;

  return v6;
}

@end