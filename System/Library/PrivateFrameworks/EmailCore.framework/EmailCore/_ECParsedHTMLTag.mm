@interface _ECParsedHTMLTag
- (BOOL)needsPriceFormatting:(id)a3 tagName:(id)a4;
- (id)copyConsumableNodesAndAppendInnerTextToStringAccumulator:(id)a3;
- (void)dealloc;
- (void)setTagName:(id)a3;
@end

@implementation _ECParsedHTMLTag

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _ECParsedHTMLTag;
  [(_ECParsedHTMLNode *)&v3 dealloc];
}

- (void)setTagName:(id)a3
{
  tagName = self->_tagName;
  if (tagName != a3)
  {

    self->_tagName = a3;
  }
}

- (BOOL)needsPriceFormatting:(id)a3 tagName:(id)a4
{
  if (![a3 ec_isPotentialPriceBeginning] || objc_msgSend(a4, "compare:options:", @"sup", 3) || !-[_ECParsedHTMLNode hasChildNodes](self, "hasChildNodes"))
  {
    return 0;
  }

  v6 = [(_ECParsedHTMLNode *)self htmlString];
  v7 = [(_ECParsedHTMLNode *)self range];
  v9 = [(NSString *)v6 substringWithRange:v7, v8];

  return [(NSString *)v9 ec_isPotentialPriceEnd];
}

- (id)copyConsumableNodesAndAppendInnerTextToStringAccumulator:(id)a3
{
  v5 = [(_ECParsedHTMLTag *)self tagName];
  if ([a3 isFull])
  {
    return 0;
  }

  if ([ECMessageBodyParser isLinebreakImpliedBeforeTagName:v5])
  {
    [a3 appendNewline];
  }

  if ([objc_msgSend(a3 "currencyFormatter")] && -[_ECParsedHTMLTag needsPriceFormatting:tagName:](self, "needsPriceFormatting:tagName:", objc_msgSend(a3, "accumulatedString"), -[_ECParsedHTMLTag tagName](self, "tagName")))
  {
    [a3 appendCurrencyDecimalSeparator];
  }

  v10.receiver = self;
  v10.super_class = _ECParsedHTMLTag;
  v7 = [(_ECParsedHTMLNode *)&v10 copyMutableConsumableNodesAndAppendInnerTextToStringAccumulator:a3];
  if ([ECMessageBodyParser isLinebreakImpliedAfterTagName:v5])
  {
    v8 = objc_alloc_init(_ECMessageBodyConsumableNewline);
    if (v7)
    {
      [v7 addObject:v8];
      v9 = 0;
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v8, 0}];
    }
  }

  else
  {
    v9 = 0;
  }

  if (v7)
  {
    return v7;
  }

  else
  {
    return v9;
  }
}

@end