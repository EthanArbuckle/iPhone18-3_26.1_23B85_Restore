@interface GKDebugHighlightView
- (GKDebugHighlightView)init;
- (void)drawRect:(CGRect)a3;
@end

@implementation GKDebugHighlightView

- (GKDebugHighlightView)init
{
  v5.receiver = self;
  v5.super_class = GKDebugHighlightView;
  v2 = [(GKDebugHighlightView *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D75348] clearColor];
    [(GKDebugHighlightView *)v2 setBackgroundColor:v3];

    [(GKDebugHighlightView *)v2 setAutoresizingMask:0];
    [(GKDebugHighlightView *)v2 setOpaque:0];
  }

  return v2;
}

- (void)drawRect:(CGRect)a3
{
  [(GKDebugHighlightView *)self bounds:a3.origin.x];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v17 = [(GKDebugHighlightView *)self color];
  v12 = [v17 colorWithAlphaComponent:0.75];
  v13 = [v17 colorWithAlphaComponent:0.25];
  [v12 setStroke];
  [v13 setFill];
  CurrentContext = UIGraphicsGetCurrentContext();
  if ([(GKDebugHighlightView *)self isOval])
  {
    v19.origin.x = v5;
    v19.origin.y = v7;
    v19.size.width = v9;
    v19.size.height = v11;
    CGContextStrokeEllipseInRect(CurrentContext, v19);
    v20.origin.x = v5;
    v20.origin.y = v7;
    v20.size.width = v9;
    v20.size.height = v11;
    CGContextFillEllipseInRect(CurrentContext, v20);
  }

  else
  {
    v21.origin.x = v5;
    v21.origin.y = v7;
    v21.size.width = v9;
    v21.size.height = v11;
    CGContextStrokeRect(CurrentContext, v21);
    v22.origin.x = v5;
    v22.origin.y = v7;
    v22.size.width = v9;
    v22.size.height = v11;
    CGContextFillRect(CurrentContext, v22);
  }

  [v17 set];
  v15 = [(GKDebugHighlightView *)self caption];
  v16 = [MEMORY[0x277D74300] systemFontOfSize:9.0];
  [v15 _legacy_drawInRect:v16 withFont:{v5, v7, v9, v11}];
}

@end