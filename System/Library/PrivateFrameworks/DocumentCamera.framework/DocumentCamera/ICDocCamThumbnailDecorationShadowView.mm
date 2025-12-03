@interface ICDocCamThumbnailDecorationShadowView
- (ICDocCamThumbnailDecorationShadowView)initWithFrame:(CGRect)frame;
@end

@implementation ICDocCamThumbnailDecorationShadowView

- (ICDocCamThumbnailDecorationShadowView)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = ICDocCamThumbnailDecorationShadowView;
  v3 = [(ICDocCamThumbnailDecorationShadowView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
    cGColor = [blackColor CGColor];
    layer = [(ICDocCamThumbnailDecorationShadowView *)v3 layer];
    [layer setShadowColor:cGColor];

    layer2 = [(ICDocCamThumbnailDecorationShadowView *)v3 layer];
    [layer2 setShadowRadius:1.0];

    layer3 = [(ICDocCamThumbnailDecorationShadowView *)v3 layer];
    [layer3 setShadowOffset:{0.0, 0.0}];

    layer4 = [(ICDocCamThumbnailDecorationShadowView *)v3 layer];
    LODWORD(v10) = 1045220557;
    [layer4 setShadowOpacity:v10];

    layer5 = [(ICDocCamThumbnailDecorationShadowView *)v3 layer];
    [layer5 setShadowPathIsBounds:1];

    v12 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.7];
    [(ICDocCamThumbnailDecorationShadowView *)v3 setBackgroundColor:v12];
  }

  return v3;
}

@end