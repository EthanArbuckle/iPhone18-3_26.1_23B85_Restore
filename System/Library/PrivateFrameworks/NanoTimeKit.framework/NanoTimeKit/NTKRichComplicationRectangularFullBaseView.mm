@interface NTKRichComplicationRectangularFullBaseView
- (NTKRichComplicationRectangularFullBaseView)init;
- (id)content;
- (void)layoutSubviews;
@end

@implementation NTKRichComplicationRectangularFullBaseView

- (NTKRichComplicationRectangularFullBaseView)init
{
  v7.receiver = self;
  v7.super_class = NTKRichComplicationRectangularFullBaseView;
  v2 = [(NTKRichComplicationRectangularBaseView *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(NTKRichComplicationRectangularFullBaseView *)v2 content];
    content = v3->_content;
    v3->_content = v4;

    [(NTKRichComplicationRectangularFullBaseView *)v3 addSubview:v3->_content];
  }

  return v3;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = NTKRichComplicationRectangularFullBaseView;
  [(NTKRichComplicationRectangularFullBaseView *)&v7 layoutSubviews];
  v3 = [(CDRichComplicationView *)self device];
  v4 = ___LayoutConstants_block_invoke_64(v3, v3);
  v6 = v5;

  [(UIView *)self->_content setFrame:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v4, v6];
}

- (id)content
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end