@interface GDScoredPersonEntityTagType
- (GDScoredPersonEntityTagType)initWithTag:(int64_t)tag score:(double)score;
@end

@implementation GDScoredPersonEntityTagType

- (GDScoredPersonEntityTagType)initWithTag:(int64_t)tag score:(double)score
{
  v10.receiver = self;
  v10.super_class = GDScoredPersonEntityTagType;
  v6 = [(GDScoredPersonEntityTagType *)&v10 init];
  if (v6)
  {
    v7 = [[GDScoredPersonEntityTagInner alloc] initWithGdTag:tag score:0 inferenceEventIdValue:score];
    inner = v6->inner;
    v6->inner = v7;
  }

  return v6;
}

@end