@interface _ECParsedHTMLTag
- (BOOL)needsPriceFormatting:(id)formatting tagName:(id)name;
- (id)copyConsumableNodesAndAppendInnerTextToStringAccumulator:(id)accumulator;
- (void)dealloc;
- (void)setTagName:(id)name;
@end

@implementation _ECParsedHTMLTag

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _ECParsedHTMLTag;
  [(_ECParsedHTMLNode *)&v3 dealloc];
}

- (void)setTagName:(id)name
{
  tagName = self->_tagName;
  if (tagName != name)
  {

    self->_tagName = name;
  }
}

- (BOOL)needsPriceFormatting:(id)formatting tagName:(id)name
{
  if (![formatting ec_isPotentialPriceBeginning] || objc_msgSend(name, "compare:options:", @"sup", 3) || !-[_ECParsedHTMLNode hasChildNodes](self, "hasChildNodes"))
  {
    return 0;
  }

  htmlString = [(_ECParsedHTMLNode *)self htmlString];
  range = [(_ECParsedHTMLNode *)self range];
  v9 = [(NSString *)htmlString substringWithRange:range, v8];

  return [(NSString *)v9 ec_isPotentialPriceEnd];
}

- (id)copyConsumableNodesAndAppendInnerTextToStringAccumulator:(id)accumulator
{
  tagName = [(_ECParsedHTMLTag *)self tagName];
  if ([accumulator isFull])
  {
    return 0;
  }

  if ([ECMessageBodyParser isLinebreakImpliedBeforeTagName:tagName])
  {
    [accumulator appendNewline];
  }

  if ([objc_msgSend(accumulator "currencyFormatter")] && -[_ECParsedHTMLTag needsPriceFormatting:tagName:](self, "needsPriceFormatting:tagName:", objc_msgSend(accumulator, "accumulatedString"), -[_ECParsedHTMLTag tagName](self, "tagName")))
  {
    [accumulator appendCurrencyDecimalSeparator];
  }

  v10.receiver = self;
  v10.super_class = _ECParsedHTMLTag;
  v7 = [(_ECParsedHTMLNode *)&v10 copyMutableConsumableNodesAndAppendInnerTextToStringAccumulator:accumulator];
  if ([ECMessageBodyParser isLinebreakImpliedAfterTagName:tagName])
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