@interface CCUIAudioVideoControlsView
- (CCUIAudioVideoControlsView)initWithFrame:(CGRect)frame;
- (CGRect)cachedExpandedRect;
- (void)setBlurRadius:(double)radius;
@end

@implementation CCUIAudioVideoControlsView

- (CCUIAudioVideoControlsView)initWithFrame:(CGRect)frame
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = CCUIAudioVideoControlsView;
  v3 = [(CCUIAudioVideoControlsView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    layer = [(CCUIAudioVideoControlsView *)v3 layer];
    v9[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    [layer setFilters:v6];

    [(SBFView *)v3 setAnimatedLayerProperties:&unk_28302E370];
    [(CCUIAudioVideoControlsView *)v3 setClipsToBounds:0];
  }

  return v3;
}

- (void)setBlurRadius:(double)radius
{
  layer = [(CCUIAudioVideoControlsView *)self layer];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:radius];
  [layer setValue:v4 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

- (CGRect)cachedExpandedRect
{
  x = self->cachedExpandedRect.origin.x;
  y = self->cachedExpandedRect.origin.y;
  width = self->cachedExpandedRect.size.width;
  height = self->cachedExpandedRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end