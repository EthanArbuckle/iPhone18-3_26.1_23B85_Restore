@interface ODDTransitionPoint
- (void)setType:(int)type;
@end

@implementation ODDTransitionPoint

- (void)setType:(int)type
{
  v3 = *&type;
  if (type != 3 && type != 5)
  {
    [MEMORY[0x277CBEAD8] raise:@"ODDException" format:@"Bad point type"];
  }

  v5.receiver = self;
  v5.super_class = ODDTransitionPoint;
  [(ODDPoint *)&v5 setType:v3];
}

@end