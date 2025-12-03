@interface FIUIFormattedDepthStringComponents
- (NSString)_unitString;
- (NSString)formattedString;
- (NSString)unitString;
- (NSString)valueString;
- (void)set_unitString:(id)string;
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

- (void)set_unitString:(id)string
{
  if (string)
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
  _formattedString = [(FIUIFormattedDepthStringComponents *)self _formattedString];

  return _formattedString;
}

- (NSString)valueString
{
  _valueString = [(FIUIFormattedDepthStringComponents *)self _valueString];

  return _valueString;
}

- (NSString)unitString
{
  selfCopy = self;
  _unitString = [(FIUIFormattedDepthStringComponents *)selfCopy _unitString];
  if (_unitString)
  {
    v4 = _unitString;
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