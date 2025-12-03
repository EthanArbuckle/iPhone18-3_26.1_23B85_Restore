@interface CSAlwaysOnHomeAffordancePillView
- (CSAlwaysOnHomeAffordancePillView)initWithFrame:(CGRect)frame settings:(id)settings;
@end

@implementation CSAlwaysOnHomeAffordancePillView

- (CSAlwaysOnHomeAffordancePillView)initWithFrame:(CGRect)frame settings:(id)settings
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = CSAlwaysOnHomeAffordancePillView;
  v4 = [(MTPillView *)&v13 initWithFrame:settings settings:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v4)
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    v6 = [whiteColor colorWithAlphaComponent:0.25];
    [(CSAlwaysOnHomeAffordancePillView *)v4 setBackgroundColor:v6];

    v7 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    [v7 setValue:&unk_283078AD0 forKey:*MEMORY[0x277CDA4F0]];
    v8 = MEMORY[0x277CBEC38];
    [v7 setValue:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDA4C8]];
    [v7 setValue:v8 forKey:*MEMORY[0x277CDA4A0]];
    layer = [(CSAlwaysOnHomeAffordancePillView *)v4 layer];
    v14[0] = v7;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    [layer setFilters:v10];

    layer2 = [(CSAlwaysOnHomeAffordancePillView *)v4 layer];
    [layer2 setScale:0.125];
  }

  return v4;
}

@end