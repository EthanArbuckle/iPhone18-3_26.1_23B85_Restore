@interface CUIKCalendarSpecialDayData
- (CUIKCalendarSpecialDayData)init;
- (UIColor)color;
- (void)setColor:(id)a3;
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
  v3 = [(CUIKCalendarSpecialDayData *)self cgColor];

  return [v2 colorWithCGColor:v3];
}

- (void)setColor:(id)a3
{
  v5 = a3;
  v6 = [a3 CGColor];

  [(CUIKCalendarSpecialDayData *)self setCgColor:v6];
}

@end