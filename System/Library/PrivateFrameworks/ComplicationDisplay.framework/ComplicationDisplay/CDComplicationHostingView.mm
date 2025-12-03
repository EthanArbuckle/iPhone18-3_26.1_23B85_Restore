@interface CDComplicationHostingView
+ (id)async;
+ (id)sync;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
@end

@implementation CDComplicationHostingView

+ (id)async
{
  v2 = [self alloc];
  v3 = [v2 initWithFrame:1 async:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

  return v3;
}

+ (id)sync
{
  v2 = [self alloc];
  v3 = [v2 initWithFrame:0 async:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

  return v3;
}

- (void)setFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = CDComplicationHostingView;
  [(CDComplicationHostingView *)&v13 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(CDComplicationHostingView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  view = [(_ComplicationHosting *)self->_hosting view];
  [view setFrame:{v5, v7, v9, v11}];
}

- (void)setBounds:(CGRect)bounds
{
  v13.receiver = self;
  v13.super_class = CDComplicationHostingView;
  [(CDComplicationHostingView *)&v13 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(CDComplicationHostingView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  view = [(_ComplicationHosting *)self->_hosting view];
  [view setFrame:{v5, v7, v9, v11}];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(_ComplicationHosting *)self->_hosting sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

@end