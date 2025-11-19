@interface CCUIAudioVideoControlsView
- (CCUIAudioVideoControlsView)initWithFrame:(CGRect)a3;
- (CGRect)cachedExpandedRect;
- (void)setBlurRadius:(double)a3;
@end

@implementation CCUIAudioVideoControlsView

- (CCUIAudioVideoControlsView)initWithFrame:(CGRect)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = CCUIAudioVideoControlsView;
  v3 = [(CCUIAudioVideoControlsView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    v5 = [(CCUIAudioVideoControlsView *)v3 layer];
    v9[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    [v5 setFilters:v6];

    [(SBFView *)v3 setAnimatedLayerProperties:&unk_28302E370];
    [(CCUIAudioVideoControlsView *)v3 setClipsToBounds:0];
  }

  return v3;
}

- (void)setBlurRadius:(double)a3
{
  v5 = [(CCUIAudioVideoControlsView *)self layer];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v5 setValue:v4 forKeyPath:@"filters.gaussianBlur.inputRadius"];
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