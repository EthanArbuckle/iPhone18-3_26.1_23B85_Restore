@interface MNRouteDivergenceOverlappingSection
- (id)objectAtIndexedSubscript:(unint64_t)a3;
@end

@implementation MNRouteDivergenceOverlappingSection

- (id)objectAtIndexedSubscript:(unint64_t)a3
{
  v4 = [(MNRouteDivergenceOverlappingSection *)self components];
  v5 = [v4 objectAtIndexedSubscript:a3];

  return v5;
}

@end