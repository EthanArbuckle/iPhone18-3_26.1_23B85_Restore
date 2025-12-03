@interface HKAxisLabelStyle
+ (HKAxisLabelStyle)labelStyleWithColor:(id)color font:(id)font horizontalAlignment:(int64_t)alignment verticalAlignment:(int64_t)verticalAlignment;
+ (HKAxisLabelStyle)labelStyleWithColor:(id)color font:(id)font horizontalAlignment:(int64_t)alignment verticalAlignment:(int64_t)verticalAlignment hyphenationFactor:(id)factor;
+ (HKAxisLabelStyle)labelStyleWithColor:(id)color font:(id)font horizontalAlignment:(int64_t)alignment verticalAlignment:(int64_t)verticalAlignment isSystemSymbol:(BOOL)symbol;
+ (HKAxisLabelStyle)labelStyleWithColor:(id)color font:(id)font horizontalAlignment:(int64_t)alignment verticalAlignment:(int64_t)verticalAlignment numberFormatter:(id)formatter;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HKAxisLabelStyle

+ (HKAxisLabelStyle)labelStyleWithColor:(id)color font:(id)font horizontalAlignment:(int64_t)alignment verticalAlignment:(int64_t)verticalAlignment
{
  fontCopy = font;
  colorCopy = color;
  v11 = objc_opt_new();
  [v11 setTextColor:colorCopy];

  [v11 setFont:fontCopy];
  [v11 setHorizontalAlignment:alignment];
  [v11 setVerticalAlignment:verticalAlignment];
  [v11 setIsSystemSymbol:0];

  return v11;
}

+ (HKAxisLabelStyle)labelStyleWithColor:(id)color font:(id)font horizontalAlignment:(int64_t)alignment verticalAlignment:(int64_t)verticalAlignment numberFormatter:(id)formatter
{
  formatterCopy = formatter;
  v13 = [self labelStyleWithColor:color font:font horizontalAlignment:alignment verticalAlignment:verticalAlignment];
  [v13 setNumberFormatter:formatterCopy];

  [v13 setIsSystemSymbol:0];

  return v13;
}

+ (HKAxisLabelStyle)labelStyleWithColor:(id)color font:(id)font horizontalAlignment:(int64_t)alignment verticalAlignment:(int64_t)verticalAlignment hyphenationFactor:(id)factor
{
  factorCopy = factor;
  v13 = [self labelStyleWithColor:color font:font horizontalAlignment:alignment verticalAlignment:verticalAlignment];
  [v13 setHyphenationFactor:factorCopy];

  [v13 setIsSystemSymbol:0];

  return v13;
}

+ (HKAxisLabelStyle)labelStyleWithColor:(id)color font:(id)font horizontalAlignment:(int64_t)alignment verticalAlignment:(int64_t)verticalAlignment isSystemSymbol:(BOOL)symbol
{
  symbolCopy = symbol;
  v8 = [self labelStyleWithColor:color font:font horizontalAlignment:alignment verticalAlignment:verticalAlignment];
  [v8 setIsSystemSymbol:symbolCopy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(UIColor *)self->_textColor copy];
  v6 = *(v4 + 16);
  *(v4 + 16) = v5;

  v7 = [(UIFont *)self->_font copy];
  v8 = *(v4 + 24);
  *(v4 + 24) = v7;

  *(v4 + 32) = self->_horizontalAlignment;
  *(v4 + 40) = self->_verticalAlignment;
  objc_storeStrong((v4 + 48), self->_numberFormatter);
  objc_storeStrong((v4 + 56), self->_hyphenationFactor);
  *(v4 + 8) = self->_isSystemSymbol;
  return v4;
}

@end