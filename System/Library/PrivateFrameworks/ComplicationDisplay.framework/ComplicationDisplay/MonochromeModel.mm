@interface MonochromeModel
- (id)colorForView:(id)a3 accented:(BOOL)a4;
- (id)filtersForView:(id)a3 style:(int64_t)a4;
- (id)filtersForView:(id)a3 style:(int64_t)a4 fraction:(double)a5;
@end

@implementation MonochromeModel

- (id)filtersForView:(id)a3 style:(int64_t)a4
{
  v5 = a3;
  v6 = self;
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

- (id)filtersForView:(id)a3 style:(int64_t)a4 fraction:(double)a5
{
  v6 = a3;
  v7 = self;
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

- (id)colorForView:(id)a3 accented:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_243D99AFC();

  return v7;
}

@end