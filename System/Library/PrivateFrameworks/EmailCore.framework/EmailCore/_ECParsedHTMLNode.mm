@interface _ECParsedHTMLNode
- (_ECParsedHTMLNode)init;
- (_NSRange)range;
- (id)recursiveDescription;
- (void)addRecursiveDescriptionWithLevel:(unint64_t)level toString:(id)string;
- (void)appendChild:(id)child;
- (void)collectDescendanceIntoArray:(id)array;
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

- (void)appendChild:(id)child
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

  [(NSMutableArray *)v6 addObject:child];

  [child setParentNode:self];
}

- (_NSRange)range
{
  startLocation = [[(_ECParsedHTMLNode *)self firstChild] startLocation];
  v4 = [[(_ECParsedHTMLNode *)self firstChild] endLocation]- startLocation;
  v5 = startLocation;
  result.length = v4;
  result.location = v5;
  return result;
}

- (void)collectDescendanceIntoArray:(id)array
{
  v4 = [(NSMutableArray *)self->_childNodes mutableCopy];
  v6 = v4;
  while ([v4 count])
  {
    firstObject = [v6 firstObject];
    [array addObject:firstObject];
    [v6 addObjectsFromArray:*(firstObject + 8)];
    [v6 removeObjectAtIndex:0];
    v4 = v6;
  }
}

- (void)addRecursiveDescriptionWithLevel:(unint64_t)level toString:(id)string
{
  v19 = *MEMORY[0x277D85DE8];
  if (level)
  {
    levelCopy = level;
    do
    {
      [string appendString:@"| "];
      --levelCopy;
    }

    while (levelCopy);
  }

  [string appendFormat:@"%@\n", -[_ECParsedHTMLNode description](self, "description")];
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

        [*(*(&v14 + 1) + 8 * v12++) addRecursiveDescriptionWithLevel:level + 1 toString:string];
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
  string = [MEMORY[0x277CCAB68] string];
  [(_ECParsedHTMLNode *)self addRecursiveDescriptionWithLevel:0 toString:string];
  return string;
}

@end