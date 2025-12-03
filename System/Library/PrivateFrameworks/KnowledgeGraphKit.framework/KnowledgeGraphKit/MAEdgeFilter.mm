@interface MAEdgeFilter
+ (BOOL)scanInstance:(id *)instance withScanner:(id)scanner;
+ (id)edgeFilterWithVisualString:(id)string;
- (BOOL)matchesEdge:(id)edge;
- (KGEdgeFilter)kgEdgeFilter;
- (MARelation)anyDirectionRelation;
- (MARelation)inRelation;
- (MARelation)outRelation;
- (id)relationWithType:(unint64_t)type;
- (void)appendVisualStringToString:(id)string;
@end

@implementation MAEdgeFilter

- (id)relationWithType:(unint64_t)type
{
  v3 = [[MANeighborRelation alloc] initWithEdgeType:type edgeFilter:self];

  return v3;
}

- (MARelation)anyDirectionRelation
{
  v2 = [[MANeighborRelation alloc] initWithEdgeType:3 edgeFilter:self];

  return v2;
}

- (MARelation)inRelation
{
  v2 = [[MANeighborRelation alloc] initWithEdgeType:1 edgeFilter:self];

  return v2;
}

- (MARelation)outRelation
{
  v2 = [[MANeighborRelation alloc] initWithEdgeType:2 edgeFilter:self];

  return v2;
}

- (void)appendVisualStringToString:(id)string
{
  stringCopy = string;
  [stringCopy appendString:@"["];
  v5.receiver = self;
  v5.super_class = MAEdgeFilter;
  [(MAElementFilter *)&v5 appendVisualStringToString:stringCopy];
  [stringCopy appendString:@"]"];
}

- (KGEdgeFilter)kgEdgeFilter
{
  v3 = [KGEdgeFilter alloc];
  kgRequiredLabels = [(MAElementFilter *)self kgRequiredLabels];
  kgOptionalLabels = [(MAElementFilter *)self kgOptionalLabels];
  properties = [(MAElementFilter *)self properties];
  v7 = [(KGElementFilter *)v3 initWithRequiredLabels:kgRequiredLabels optionalLabels:kgOptionalLabels properties:properties];

  return v7;
}

- (BOOL)matchesEdge:(id)edge
{
  v4.receiver = self;
  v4.super_class = MAEdgeFilter;
  return [(MAElementFilter *)&v4 matchesElement:edge];
}

+ (id)edgeFilterWithVisualString:(id)string
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
  if ([scannerCopy scanString:@"[" intoString:0] && (v9.receiver = self, v9.super_class = &OBJC_METACLASS___MAEdgeFilter, objc_msgSendSuper2(&v9, sel_scanInstance_withScanner_, instance, scannerCopy)))
  {
    v7 = [scannerCopy scanString:@"]" intoString:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end