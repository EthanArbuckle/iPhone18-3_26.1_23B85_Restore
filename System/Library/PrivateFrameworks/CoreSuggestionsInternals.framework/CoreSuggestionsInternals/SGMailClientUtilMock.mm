@interface SGMailClientUtilMock
- (SGMailClientUtilMock)init;
@end

@implementation SGMailClientUtilMock

- (SGMailClientUtilMock)init
{
  v6.receiver = self;
  v6.super_class = SGMailClientUtilMock;
  v2 = [(SGMailClientUtilMock *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB98] set];
    vips = v2->_vips;
    v2->_vips = v3;
  }

  return v2;
}

@end