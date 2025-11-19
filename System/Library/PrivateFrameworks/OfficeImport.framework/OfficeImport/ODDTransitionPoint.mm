@interface ODDTransitionPoint
- (void)setType:(int)a3;
@end

@implementation ODDTransitionPoint

- (void)setType:(int)a3
{
  v3 = *&a3;
  if (a3 != 3 && a3 != 5)
  {
    [MEMORY[0x277CBEAD8] raise:@"ODDException" format:@"Bad point type"];
  }

  v5.receiver = self;
  v5.super_class = ODDTransitionPoint;
  [(ODDPoint *)&v5 setType:v3];
}

@end