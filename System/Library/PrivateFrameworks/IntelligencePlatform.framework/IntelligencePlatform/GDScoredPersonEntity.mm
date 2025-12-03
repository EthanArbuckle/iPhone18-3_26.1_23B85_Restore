@interface GDScoredPersonEntity
- (GDScoredPersonEntity)initWithIDValue:(int64_t)value score:(double)score;
@end

@implementation GDScoredPersonEntity

- (GDScoredPersonEntity)initWithIDValue:(int64_t)value score:(double)score
{
  v10.receiver = self;
  v10.super_class = GDScoredPersonEntity;
  v6 = [(GDScoredPersonEntity *)&v10 init];
  if (v6)
  {
    v7 = [[GDScoredPersonInner alloc] initWithIdValue:value score:0 inferenceEventIdValue:score];
    inner = v6->inner;
    v6->inner = v7;
  }

  return v6;
}

@end