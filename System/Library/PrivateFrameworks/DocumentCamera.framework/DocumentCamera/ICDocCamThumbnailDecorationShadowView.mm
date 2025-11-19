@interface ICDocCamThumbnailDecorationShadowView
- (ICDocCamThumbnailDecorationShadowView)initWithFrame:(CGRect)a3;
@end

@implementation ICDocCamThumbnailDecorationShadowView

- (ICDocCamThumbnailDecorationShadowView)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = ICDocCamThumbnailDecorationShadowView;
  v3 = [(ICDocCamThumbnailDecorationShadowView *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] blackColor];
    v5 = [v4 CGColor];
    v6 = [(ICDocCamThumbnailDecorationShadowView *)v3 layer];
    [v6 setShadowColor:v5];

    v7 = [(ICDocCamThumbnailDecorationShadowView *)v3 layer];
    [v7 setShadowRadius:1.0];

    v8 = [(ICDocCamThumbnailDecorationShadowView *)v3 layer];
    [v8 setShadowOffset:{0.0, 0.0}];

    v9 = [(ICDocCamThumbnailDecorationShadowView *)v3 layer];
    LODWORD(v10) = 1045220557;
    [v9 setShadowOpacity:v10];

    v11 = [(ICDocCamThumbnailDecorationShadowView *)v3 layer];
    [v11 setShadowPathIsBounds:1];

    v12 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.7];
    [(ICDocCamThumbnailDecorationShadowView *)v3 setBackgroundColor:v12];
  }

  return v3;
}

@end