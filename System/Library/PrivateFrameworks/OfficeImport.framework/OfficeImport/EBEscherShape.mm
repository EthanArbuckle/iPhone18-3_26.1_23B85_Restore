@interface EBEscherShape
- (void)setChart:(id)a3;
@end

@implementation EBEscherShape

- (void)setChart:(id)a3
{
  v5 = a3;
  if (self->mChart != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->mChart, a3);
    v5 = v6;
  }
}

@end