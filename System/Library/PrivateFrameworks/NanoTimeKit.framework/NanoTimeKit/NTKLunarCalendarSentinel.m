@interface NTKLunarCalendarSentinel
- (NTKLunarCalendarSentinel)init;
@end

@implementation NTKLunarCalendarSentinel

- (NTKLunarCalendarSentinel)init
{
  v5.receiver = self;
  v5.super_class = NTKLunarCalendarSentinel;
  v2 = [(NTKLunarCalendarSentinel *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel__handleLocaleChange name:*MEMORY[0x277CBE620] object:0];
    [v3 addObserver:v2 selector:sel__handleLocaleChange name:*MEMORY[0x277CC5B50] object:0];
  }

  return v2;
}

@end