@interface GDScoredPersonEntityTagType
- (GDScoredPersonEntityTagType)initWithTag:(int64_t)a3 score:(double)a4;
@end

@implementation GDScoredPersonEntityTagType

- (GDScoredPersonEntityTagType)initWithTag:(int64_t)a3 score:(double)a4
{
  v10.receiver = self;
  v10.super_class = GDScoredPersonEntityTagType;
  v6 = [(GDScoredPersonEntityTagType *)&v10 init];
  if (v6)
  {
    v7 = [[GDScoredPersonEntityTagInner alloc] initWithGdTag:a3 score:0 inferenceEventIdValue:a4];
    inner = v6->inner;
    v6->inner = v7;
  }

  return v6;
}

@end