@interface CDComplicationHostingView
+ (id)async;
+ (id)sync;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation CDComplicationHostingView

+ (id)async
{
  v2 = [a1 alloc];
  v3 = [v2 initWithFrame:1 async:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

  return v3;
}

+ (id)sync
{
  v2 = [a1 alloc];
  v3 = [v2 initWithFrame:0 async:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

  return v3;
}

- (void)setFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = CDComplicationHostingView;
  [(CDComplicationHostingView *)&v13 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(CDComplicationHostingView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(_ComplicationHosting *)self->_hosting view];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (void)setBounds:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = CDComplicationHostingView;
  [(CDComplicationHostingView *)&v13 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(CDComplicationHostingView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(_ComplicationHosting *)self->_hosting view];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(_ComplicationHosting *)self->_hosting sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

@end