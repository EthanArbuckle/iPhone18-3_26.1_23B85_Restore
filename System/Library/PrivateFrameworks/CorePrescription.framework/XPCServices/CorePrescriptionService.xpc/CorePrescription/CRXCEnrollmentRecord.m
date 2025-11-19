@interface CRXCEnrollmentRecord
+ (NSString)noLensesUUID;
- (BOOL)isEqual:(id)a3;
- (NSDate)modifiedDate;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRXCEnrollmentRecord

+ (NSString)noLensesUUID
{
  v2 = sub_100081288();

  return v2;
}

- (NSDate)modifiedDate
{
  v3 = sub_100006940(&unk_1000B88B0, &qword_100086A40);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  sub_10001A8DC(self + OBJC_IVAR___CRXCEnrollmentRecord_modifiedDate, &v13 - v5, &unk_1000B88B0, &qword_100086A40);
  v7 = sub_100080D98();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    isa = sub_100080D48().super.isa;
    (*(v8 + 8))(v6, v7);
    v10 = isa;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_100081658();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = CRXCEnrollmentRecord.isEqual(_:)(v8);

  sub_10001A80C(v8, &qword_1000B75E0, &qword_1000856D0);
  return v6 & 1;
}

- (NSString)description
{
  v2 = self;
  CRXCEnrollmentRecord.description.getter();

  v3 = sub_100081288();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  CRXCEnrollmentRecord.encode(with:)(v4);
}

@end