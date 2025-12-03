@interface MonochromeModel
- (id)colorForView:(id)view accented:(BOOL)accented;
- (id)filtersForView:(id)view style:(int64_t)style;
- (id)filtersForView:(id)view style:(int64_t)style fraction:(double)fraction;
@end

@implementation MonochromeModel

- (id)filtersForView:(id)view style:(int64_t)style
{
  viewCopy = view;
  selfCopy = self;
  v7 = sub_243D99838();

  if (v7)
  {
    sub_243D96A78(0, &qword_27EDBB040, 0x277CD9EA0);
    v8 = sub_243DAE1A0();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)filtersForView:(id)view style:(int64_t)style fraction:(double)fraction
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_243D99994();

  if (v8)
  {
    sub_243D96A78(0, &qword_27EDBB040, 0x277CD9EA0);
    v9 = sub_243DAE1A0();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)colorForView:(id)view accented:(BOOL)accented
{
  viewCopy = view;
  selfCopy = self;
  v7 = sub_243D99AFC();

  return v7;
}

@end