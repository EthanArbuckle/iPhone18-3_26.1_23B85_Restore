@interface ExclaveLayout
- (ExclaveLayout)init;
@end

@implementation ExclaveLayout

- (ExclaveLayout)init
{
  v6.receiver = self;
  v6.super_class = ExclaveLayout;
  v2 = [(ExclaveLayout *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    segments = v2->_segments;
    v2->_segments = v3;
  }

  return v2;
}

@end