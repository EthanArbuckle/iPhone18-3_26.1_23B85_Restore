@interface HKAxisLabelStyle
+ (HKAxisLabelStyle)labelStyleWithColor:(id)a3 font:(id)a4 horizontalAlignment:(int64_t)a5 verticalAlignment:(int64_t)a6;
+ (HKAxisLabelStyle)labelStyleWithColor:(id)a3 font:(id)a4 horizontalAlignment:(int64_t)a5 verticalAlignment:(int64_t)a6 hyphenationFactor:(id)a7;
+ (HKAxisLabelStyle)labelStyleWithColor:(id)a3 font:(id)a4 horizontalAlignment:(int64_t)a5 verticalAlignment:(int64_t)a6 isSystemSymbol:(BOOL)a7;
+ (HKAxisLabelStyle)labelStyleWithColor:(id)a3 font:(id)a4 horizontalAlignment:(int64_t)a5 verticalAlignment:(int64_t)a6 numberFormatter:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HKAxisLabelStyle

+ (HKAxisLabelStyle)labelStyleWithColor:(id)a3 font:(id)a4 horizontalAlignment:(int64_t)a5 verticalAlignment:(int64_t)a6
{
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_new();
  [v11 setTextColor:v10];

  [v11 setFont:v9];
  [v11 setHorizontalAlignment:a5];
  [v11 setVerticalAlignment:a6];
  [v11 setIsSystemSymbol:0];

  return v11;
}

+ (HKAxisLabelStyle)labelStyleWithColor:(id)a3 font:(id)a4 horizontalAlignment:(int64_t)a5 verticalAlignment:(int64_t)a6 numberFormatter:(id)a7
{
  v12 = a7;
  v13 = [a1 labelStyleWithColor:a3 font:a4 horizontalAlignment:a5 verticalAlignment:a6];
  [v13 setNumberFormatter:v12];

  [v13 setIsSystemSymbol:0];

  return v13;
}

+ (HKAxisLabelStyle)labelStyleWithColor:(id)a3 font:(id)a4 horizontalAlignment:(int64_t)a5 verticalAlignment:(int64_t)a6 hyphenationFactor:(id)a7
{
  v12 = a7;
  v13 = [a1 labelStyleWithColor:a3 font:a4 horizontalAlignment:a5 verticalAlignment:a6];
  [v13 setHyphenationFactor:v12];

  [v13 setIsSystemSymbol:0];

  return v13;
}

+ (HKAxisLabelStyle)labelStyleWithColor:(id)a3 font:(id)a4 horizontalAlignment:(int64_t)a5 verticalAlignment:(int64_t)a6 isSystemSymbol:(BOOL)a7
{
  v7 = a7;
  v8 = [a1 labelStyleWithColor:a3 font:a4 horizontalAlignment:a5 verticalAlignment:a6];
  [v8 setIsSystemSymbol:v7];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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