@interface FMFCoreHelper
+ (id)displayNameFor:(id)a3;
- (_TtC7FMFCore13FMFCoreHelper)init;
@end

@implementation FMFCoreHelper

+ (id)displayNameFor:(id)a3
{
  v3 = qword_27EF3EBE8;
  v4 = a3;
  if (v3 != -1)
  {
    swift_once();
  }

  sub_24A42E63C(v4, v7);

  v5 = sub_24A4AB820();

  return v5;
}

- (_TtC7FMFCore13FMFCoreHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMFCoreHelper();
  return [(FMFCoreHelper *)&v3 init];
}

@end