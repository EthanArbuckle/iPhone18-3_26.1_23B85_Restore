@interface NWCForecastSeparatorView
+ (void)initialize;
- (CGSize)intrinsicContentSize;
- (NWCForecastSeparatorView)init;
@end

@implementation NWCForecastSeparatorView

+ (void)initialize
{
  if (initialize_onceToken_1 != -1)
  {
    +[NWCForecastSeparatorView initialize];
  }
}

uint64_t __38__NWCForecastSeparatorView_initialize__block_invoke()
{
  DefaultColor = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.25];

  return MEMORY[0x2821F96F8]();
}

- (NWCForecastSeparatorView)init
{
  v6.receiver = self;
  v6.super_class = NWCForecastSeparatorView;
  v2 = [(NWCForecastSeparatorView *)&v6 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v3 = v2;
  if (v2)
  {
    [(NWCForecastSeparatorView *)v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v4) = 1148846080;
    [(NWCForecastSeparatorView *)v3 setContentHuggingPriority:0 forAxis:v4];
  }

  return v3;
}

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x277D77260];
  v3 = 1.0;
  result.height = v2;
  result.width = v3;
  return result;
}

@end