@interface EMSMockDataSource.MockLocation
- (_TtCC14ClassroomUIKit17EMSMockDataSource12MockLocation)init;
- (void)setName:(id)a3;
@end

@implementation EMSMockDataSource.MockLocation

- (void)setName:(id)a3
{
  if (a3)
  {
    v4 = sub_2436CBD38();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource12MockLocation_name);
  v7 = *(self + OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource12MockLocation_name + 8);
  *v6 = v4;
  v6[1] = v5;
}

- (_TtCC14ClassroomUIKit17EMSMockDataSource12MockLocation)init
{
  v3 = OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource12MockLocation_identifier;
  if (qword_27ED7DEC0 != -1)
  {
    swift_once();
  }

  v4 = (self + v3);
  v5 = qword_27ED83AE8;
  v6 = unk_27ED83AF0;
  v7 = unk_27ED83B00;
  *v4 = qword_27ED83AF8;
  v4[1] = v7;
  v8 = (self + OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource12MockLocation_name);
  *v8 = v5;
  v8[1] = v6;
  v10.receiver = self;
  v10.super_class = _s12MockLocationCMa();

  return [(EMSMockDataSource.MockLocation *)&v10 init];
}

@end