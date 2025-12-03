@interface CRXCEnrollmentRecord
+ (NSString)noLensesUUID;
- (BOOL)isEqual:(id)equal;
- (NSDate)modifiedDate;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRXCEnrollmentRecord

+ (NSString)noLensesUUID
{
  v2 = sub_247365C44();

  return v2;
}

- (NSDate)modifiedDate
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE4D8B0, &qword_247369DB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  sub_24735116C(self + OBJC_IVAR___CRXCEnrollmentRecord_modifiedDate, &v13 - v5, &unk_27EE4D8B0, &qword_247369DB0);
  v7 = sub_247365B94();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_247365B54();
    (*(v8 + 8))(v6, v7);
    v10 = v11;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_247365DC4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_24735080C(v8);

  sub_247351220(v8, &qword_27EE4D600, &qword_2473695A0);
  return v6 & 1;
}

- (NSString)description
{
  selfCopy = self;
  sub_247351370();

  v3 = sub_247365C44();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_247351D5C(coderCopy);
}

@end