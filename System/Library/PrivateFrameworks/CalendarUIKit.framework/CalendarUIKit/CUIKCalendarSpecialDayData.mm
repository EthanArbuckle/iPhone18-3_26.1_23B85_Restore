@interface CUIKCalendarSpecialDayData
- (CUIKCalendarSpecialDayData)init;
- (UIColor)color;
- (void)setColor:(id)color;
@end

@implementation CUIKCalendarSpecialDayData

- (CUIKCalendarSpecialDayData)init
{
  v3.receiver = self;
  v3.super_class = CUIKCalendarSpecialDayData;
  result = [(CUIKCalendarSpecialDayData *)&v3 init];
  if (result)
  {
    result->_dayType = 0;
  }

  return result;
}

- (UIColor)color
{
  v2 = MEMORY[0x1E69DC888];
  cgColor = [(CUIKCalendarSpecialDayData *)self cgColor];

  return [v2 colorWithCGColor:cgColor];
}

- (void)setColor:(id)color
{
  colorCopy = color;
  cGColor = [color CGColor];

  [(CUIKCalendarSpecialDayData *)self setCgColor:cGColor];
}

@end