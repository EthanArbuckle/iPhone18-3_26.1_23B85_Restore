@interface FIUIFormattedDepthStringComponents
- (NSString)_unitString;
- (NSString)formattedString;
- (NSString)unitString;
- (NSString)valueString;
- (void)set_unitString:(id)a3;
@end

@implementation FIUIFormattedDepthStringComponents

- (NSString)_unitString
{
  if (*(self + OBJC_IVAR___FIUIFormattedDepthStringComponents__unitString + 8))
  {

    v2 = sub_1E5DA911C();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)set_unitString:(id)a3
{
  if (a3)
  {
    v4 = sub_1E5DA915C();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___FIUIFormattedDepthStringComponents__unitString);
  *v6 = v4;
  v6[1] = v5;
}

- (NSString)formattedString
{
  v2 = [(FIUIFormattedDepthStringComponents *)self _formattedString];

  return v2;
}

- (NSString)valueString
{
  v2 = [(FIUIFormattedDepthStringComponents *)self _valueString];

  return v2;
}

- (NSString)unitString
{
  v2 = self;
  v3 = [(FIUIFormattedDepthStringComponents *)v2 _unitString];
  if (v3)
  {
    v4 = v3;
    sub_1E5DA915C();

    v5 = sub_1E5DA911C();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

@end