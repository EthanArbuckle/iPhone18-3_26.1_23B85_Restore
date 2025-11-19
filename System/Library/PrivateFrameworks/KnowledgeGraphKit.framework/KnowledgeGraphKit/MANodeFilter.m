@interface MANodeFilter
+ (BOOL)scanInstance:(id *)a3 withScanner:(id)a4;
+ (id)nodeFilterWithVisualString:(id)a3;
- (BOOL)matchesNode:(id)a3;
- (KGNodeFilter)kgNodeFilter;
- (MARelation)relation;
- (void)appendVisualStringToString:(id)a3;
@end

@implementation MANodeFilter

- (MARelation)relation
{
  v2 = [[MANodeFilterRelation alloc] initWithNodeFilter:self];

  return v2;
}

- (void)appendVisualStringToString:(id)a3
{
  v4 = a3;
  objc_msgSend(v4, "appendString:", @"(");
  v5.receiver = self;
  v5.super_class = MANodeFilter;
  [(MAElementFilter *)&v5 appendVisualStringToString:v4];
  [v4 appendString:@""]);
}

- (KGNodeFilter)kgNodeFilter
{
  v3 = [KGNodeFilter alloc];
  v4 = [(MAElementFilter *)self kgRequiredLabels];
  v5 = [(MAElementFilter *)self kgOptionalLabels];
  v6 = [(MAElementFilter *)self properties];
  v7 = [(KGElementFilter *)v3 initWithRequiredLabels:v4 optionalLabels:v5 properties:v6];

  [(KGNodeFilter *)v7 setWhereNoInAndOutEdges:[(MANodeFilter *)self whereNoInAndOutEdges]];
  [(KGNodeFilter *)v7 setWhereNoOutEdges:[(MANodeFilter *)self whereNoOutEdges]];
  [(KGNodeFilter *)v7 setWhereNoInEdges:[(MANodeFilter *)self whereNoInEdges]];

  return v7;
}

- (BOOL)matchesNode:(id)a3
{
  v4.receiver = self;
  v4.super_class = MANodeFilter;
  return [(MAElementFilter *)&v4 matchesElement:a3];
}

+ (id)nodeFilterWithVisualString:(id)a3
{
  v4 = MEMORY[0x277CCAC80];
  v5 = a3;
  v6 = [[v4 alloc] initWithString:v5];

  v7 = [a1 scanFilterWithScanner:v6];

  return v7;
}

+ (BOOL)scanInstance:(id *)a3 withScanner:(id)a4
{
  v6 = a4;
  if ([v6 scanString:@"(" intoString:{0) && (v9.receiver = a1, v9.super_class = &OBJC_METACLASS___MANodeFilter, objc_msgSendSuper2(&v9, sel_scanInstance_withScanner_, a3, v6))}]
  {
    v7 = [v6 scanString:@"" intoString:?], 0);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end