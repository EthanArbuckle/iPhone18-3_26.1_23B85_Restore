@interface NTKRichComplicationRectangularFullView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (NTKRichComplicationRectangularFullView)init;
- (int64_t)tritiumUpdateMode;
- (void)_handleTemplate:(id)a3 reason:(int64_t)a4;
- (void)layoutSubviews;
- (void)setPaused:(BOOL)a3;
@end

@implementation NTKRichComplicationRectangularFullView

+ (BOOL)handlesComplicationTemplate:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (NTKRichComplicationRectangularFullView)init
{
  v8.receiver = self;
  v8.super_class = NTKRichComplicationRectangularFullView;
  v2 = [(NTKRichComplicationRectangularBaseView *)&v8 init];
  if (v2)
  {
    v3 = [off_27877BEB0 alloc];
    v4 = [(CDRichComplicationView *)v2 device];
    v5 = [v3 initWithDevice:v4 useAccentColor:0];
    imageView = v2->_imageView;
    v2->_imageView = v5;

    [(CDRichComplicationImageView *)v2->_imageView setPaused:[(CDRichComplicationView *)v2 paused]];
    [(CDRichComplicationImageView *)v2->_imageView setFilterProvider:v2];
    [(NTKRichComplicationRectangularFullView *)v2 addSubview:v2->_imageView];
  }

  return v2;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = NTKRichComplicationRectangularFullView;
  [(NTKRichComplicationRectangularFullView *)&v13 layoutSubviews];
  [(NTKRichComplicationRectangularFullView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CDRichComplicationImageView *)self->_imageView setFrame:?];
  imageView = self->_imageView;
  v14.origin.x = v4;
  v14.origin.y = v6;
  v14.size.width = v8;
  v14.size.height = v10;
  MidX = CGRectGetMidX(v14);
  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v8;
  v15.size.height = v10;
  [(CDRichComplicationImageView *)imageView setCenter:MidX, CGRectGetMidY(v15)];
}

- (void)_handleTemplate:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  v9.receiver = self;
  v9.super_class = NTKRichComplicationRectangularFullView;
  [(CDRichComplicationTemplateView *)&v9 _handleTemplate:v6 reason:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    imageView = self->_imageView;
    v8 = [v6 imageProvider];
    [(CDRichComplicationImageView *)imageView setImageProvider:v8 reason:a4];
  }
}

- (void)setPaused:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = NTKRichComplicationRectangularFullView;
  [(CDRichComplicationView *)&v5 setPaused:?];
  [(CDRichComplicationImageView *)self->_imageView setPaused:v3];
}

- (int64_t)tritiumUpdateMode
{
  v3 = [(CDRichComplicationImageView *)self->_imageView tritiumUpdateMode];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
    if (v5 >= 2)
    {
      v6 = 2;
    }

    else
    {
      v6 = v5;
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKRichComplicationRectangularFullView;
    v6 = [(CDRichComplicationTemplateView *)&v8 tritiumUpdateMode];
  }

  return v6;
}

@end