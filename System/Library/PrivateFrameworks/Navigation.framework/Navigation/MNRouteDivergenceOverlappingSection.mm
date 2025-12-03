@interface MNRouteDivergenceOverlappingSection
- (id)objectAtIndexedSubscript:(unint64_t)subscript;
@end

@implementation MNRouteDivergenceOverlappingSection

- (id)objectAtIndexedSubscript:(unint64_t)subscript
{
  components = [(MNRouteDivergenceOverlappingSection *)self components];
  v5 = [components objectAtIndexedSubscript:subscript];

  return v5;
}

@end