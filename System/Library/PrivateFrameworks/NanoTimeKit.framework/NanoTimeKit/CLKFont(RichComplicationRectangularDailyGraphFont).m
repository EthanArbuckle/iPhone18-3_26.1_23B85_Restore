@interface CLKFont(RichComplicationRectangularDailyGraphFont)
+ (id)alternatePunctuationRoundedSemiBoldSystemFontOfSize:()RichComplicationRectangularDailyGraphFont;
@end

@implementation CLKFont(RichComplicationRectangularDailyGraphFont)

+ (id)alternatePunctuationRoundedSemiBoldSystemFontOfSize:()RichComplicationRectangularDailyGraphFont
{
  if (alternatePunctuationRoundedSemiBoldSystemFontOfSize__onceToken != -1)
  {
    +[CLKFont(RichComplicationRectangularDailyGraphFont) alternatePunctuationRoundedSemiBoldSystemFontOfSize:];
  }

  v2 = alternatePunctuationRoundedSemiBoldSystemFontOfSize__cache;
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:a1];
  v4 = [v2 objectForKey:v3];

  if (!v4)
  {
    v4 = [MEMORY[0x277CBBB08] fontWithDescriptor:alternatePunctuationRoundedSemiBoldSystemFontOfSize__baseDescriptor size:a1];
    v5 = alternatePunctuationRoundedSemiBoldSystemFontOfSize__cache;
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:a1];
    [v5 setObject:v4 forKey:v6];
  }

  return v4;
}

@end