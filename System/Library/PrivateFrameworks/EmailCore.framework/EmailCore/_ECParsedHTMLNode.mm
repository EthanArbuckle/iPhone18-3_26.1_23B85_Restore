@interface _ECParsedHTMLNode
- (_ECParsedHTMLNode)init;
- (_NSRange)range;
- (id)recursiveDescription;
- (void)addRecursiveDescriptionWithLevel:(unint64_t)a3 toString:(id)a4;
- (void)appendChild:(id)a3;
- (void)collectDescendanceIntoArray:(id)a3;
- (void)dealloc;
@end

@implementation _ECParsedHTMLNode

- (_ECParsedHTMLNode)init
{
  v5.receiver = self;
  v5.super_class = _ECParsedHTMLNode;
  v2 = [(_ECParsedHTMLNode *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_ECParsedHTMLNode *)v2 setStartLocation:0x7FFFFFFFFFFFFFFFLL];
    [(_ECParsedHTMLNode *)v3 setEndLocation:0x7FFFFFFFFFFFFFFFLL];
  }

  return v3;
}

- (void)dealloc
{
  [(_ECParsedHTMLNode *)self setParentNode:0];
  [(_ECParsedHTMLNode *)self setNextSibling:0];
  [(_ECParsedHTMLNode *)self setHtmlString:0];
  v3.receiver = self;
  v3.super_class = _ECParsedHTMLNode;
  [(_ECParsedHTMLNode *)&v3 dealloc];
}

- (void)appendChild:(id)a3
{
  childNodes = self->_childNodes;
  if (childNodes)
  {
    [-[NSMutableArray lastObject](childNodes "lastObject")];
    v6 = self->_childNodes;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    self->_childNodes = v6;
  }

  [(NSMutableArray *)v6 addObject:a3];

  [a3 setParentNode:self];
}

- (_NSRange)range
{
  v3 = [[(_ECParsedHTMLNode *)self firstChild] startLocation];
  v4 = [[(_ECParsedHTMLNode *)self firstChild] endLocation]- v3;
  v5 = v3;
  result.length = v4;
  result.location = v5;
  return result;
}

- (void)collectDescendanceIntoArray:(id)a3
{
  v4 = [(NSMutableArray *)self->_childNodes mutableCopy];
  v6 = v4;
  while ([v4 count])
  {
    v5 = [v6 firstObject];
    [a3 addObject:v5];
    [v6 addObjectsFromArray:*(v5 + 8)];
    [v6 removeObjectAtIndex:0];
    v4 = v6;
  }
}

- (void)addRecursiveDescriptionWithLevel:(unint64_t)a3 toString:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v7 = a3;
    do
    {
      [a4 appendString:@"| "];
      --v7;
    }

    while (v7);
  }

  [a4 appendFormat:@"%@\n", -[_ECParsedHTMLNode description](self, "description")];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  childNodes = self->_childNodes;
  v9 = [(NSMutableArray *)childNodes countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(childNodes);
        }

        [*(*(&v14 + 1) + 8 * v12++) addRecursiveDescriptionWithLevel:a3 + 1 toString:a4];
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)childNodes countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)recursiveDescription
{
  v3 = [MEMORY[0x277CCAB68] string];
  [(_ECParsedHTMLNode *)self addRecursiveDescriptionWithLevel:0 toString:v3];
  return v3;
}

@end