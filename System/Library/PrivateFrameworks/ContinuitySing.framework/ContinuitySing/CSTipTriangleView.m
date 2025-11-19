@interface CSTipTriangleView
- (CSTipTriangleView)init;
- (void)drawRect:(CGRect)a3;
@end

@implementation CSTipTriangleView

- (CSTipTriangleView)init
{
  v5.receiver = self;
  v5.super_class = CSTipTriangleView;
  v2 = [(CSTipTriangleView *)&v5 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v3 = v2;
  if (v2)
  {
    [(CSTipTriangleView *)v2 setOpaque:0];
  }

  return v3;
}

- (void)drawRect:(CGRect)a3
{
  y = a3.origin.y;
  x = a3.origin.x;
  v5 = a3.origin.x + a3.size.width * 0.5;
  v6 = a3.origin.y + a3.size.height;
  v7 = a3.origin.x + a3.size.width;
  v9 = objc_alloc_init(MEMORY[0x277D75200]);
  [v9 moveToPoint:{x, y}];
  [v9 addLineToPoint:{v5, v6}];
  [v9 addLineToPoint:{v7, y}];
  [v9 closePath];
  v8 = [MEMORY[0x277D75340] systemBlueColor];
  [v8 setFill];

  [v9 fill];
}

@end