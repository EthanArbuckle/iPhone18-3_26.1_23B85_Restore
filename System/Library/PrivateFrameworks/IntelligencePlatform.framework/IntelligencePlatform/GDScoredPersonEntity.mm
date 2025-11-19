@interface GDScoredPersonEntity
- (GDScoredPersonEntity)initWithIDValue:(int64_t)a3 score:(double)a4;
@end

@implementation GDScoredPersonEntity

- (GDScoredPersonEntity)initWithIDValue:(int64_t)a3 score:(double)a4
{
  v10.receiver = self;
  v10.super_class = GDScoredPersonEntity;
  v6 = [(GDScoredPersonEntity *)&v10 init];
  if (v6)
  {
    v7 = [[GDScoredPersonInner alloc] initWithIdValue:a3 score:0 inferenceEventIdValue:a4];
    inner = v6->inner;
    v6->inner = v7;
  }

  return v6;
}

@end