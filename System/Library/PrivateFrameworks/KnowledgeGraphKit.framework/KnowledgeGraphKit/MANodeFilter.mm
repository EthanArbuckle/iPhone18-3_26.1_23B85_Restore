@interface MANodeFilter
+ (BOOL)scanInstance:(id *)instance withScanner:(id)scanner;
+ (id)nodeFilterWithVisualString:(id)string;
- (BOOL)matchesNode:(id)node;
- (KGNodeFilter)kgNodeFilter;
- (MARelation)relation;
- (void)appendVisualStringToString:(id)string;
@end

@implementation MANodeFilter

- (MARelation)relation
{
  v2 = [[MANodeFilterRelation alloc] initWithNodeFilter:self];

  return v2;
}

- (void)appendVisualStringToString:(id)string
{
  stringCopy = string;
  objc_msgSend(stringCopy, "appendString:", @"(");
  v5.receiver = self;
  v5.super_class = MANodeFilter;
  [(MAElementFilter *)&v5 appendVisualStringToString:stringCopy];
  [stringCopy appendString:@""]);
}

- (KGNodeFilter)kgNodeFilter
{
  v3 = [KGNodeFilter alloc];
  kgRequiredLabels = [(MAElementFilter *)self kgRequiredLabels];
  kgOptionalLabels = [(MAElementFilter *)self kgOptionalLabels];
  properties = [(MAElementFilter *)self properties];
  v7 = [(KGElementFilter *)v3 initWithRequiredLabels:kgRequiredLabels optionalLabels:kgOptionalLabels properties:properties];

  [(KGNodeFilter *)v7 setWhereNoInAndOutEdges:[(MANodeFilter *)self whereNoInAndOutEdges]];
  [(KGNodeFilter *)v7 setWhereNoOutEdges:[(MANodeFilter *)self whereNoOutEdges]];
  [(KGNodeFilter *)v7 setWhereNoInEdges:[(MANodeFilter *)self whereNoInEdges]];

  return v7;
}

- (BOOL)matchesNode:(id)node
{
  v4.receiver = self;
  v4.super_class = MANodeFilter;
  return [(MAElementFilter *)&v4 matchesElement:node];
}

+ (id)nodeFilterWithVisualString:(id)string
{
  v4 = MEMORY[0x277CCAC80];
  stringCopy = string;
  v6 = [[v4 alloc] initWithString:stringCopy];

  v7 = [self scanFilterWithScanner:v6];

  return v7;
}

+ (BOOL)scanInstance:(id *)instance withScanner:(id)scanner
{
  scannerCopy = scanner;
  if ([scannerCopy scanString:@"(" intoString:{0) && (v9.receiver = self, v9.super_class = &OBJC_METACLASS___MANodeFilter, objc_msgSendSuper2(&v9, sel_scanInstance_withScanner_, instance, scannerCopy))}]
  {
    v7 = [scannerCopy scanString:@"" intoString:?], 0);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end