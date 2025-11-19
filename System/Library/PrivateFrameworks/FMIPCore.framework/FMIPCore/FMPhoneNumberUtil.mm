@interface FMPhoneNumberUtil
+ (BOOL)isEmailValidWithEmail:(id)a3;
+ (BOOL)isPhoneNumberValidWithPhoneNumber:(id)a3;
+ (id)unformatWithPhoneNumber:(id)a3;
- (_TtC8FMIPCore17FMPhoneNumberUtil)init;
@end

@implementation FMPhoneNumberUtil

+ (id)unformatWithPhoneNumber:(id)a3
{
  v3 = sub_24A82C604();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A82CFC4();
  v10 = v9;
  sub_24A82C594();
  sub_24A82C5D4();
  sub_24A78FD0C(v8, v10, v7);

  (*(v4 + 8))(v7, v3);
  v11 = sub_24A82CF94();

  return v11;
}

+ (BOOL)isEmailValidWithEmail:(id)a3
{
  v3 = qword_27EF5CC30;
  v4 = a3;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = [qword_27EF5F5D0 evaluateWithObject_];

  return v5;
}

+ (BOOL)isPhoneNumberValidWithPhoneNumber:(id)a3
{
  v3 = sub_24A82CFC4();
  v5 = sub_24A78F7E8(v3, v4);

  return v5;
}

- (_TtC8FMIPCore17FMPhoneNumberUtil)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMPhoneNumberUtil();
  return [(FMPhoneNumberUtil *)&v3 init];
}

@end