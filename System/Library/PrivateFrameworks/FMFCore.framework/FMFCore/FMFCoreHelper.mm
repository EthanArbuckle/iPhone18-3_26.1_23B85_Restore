@interface FMFCoreHelper
+ (id)displayNameFor:(id)for;
- (_TtC7FMFCore13FMFCoreHelper)init;
@end

@implementation FMFCoreHelper

+ (id)displayNameFor:(id)for
{
  v3 = qword_27EF3EBE8;
  forCopy = for;
  if (v3 != -1)
  {
    swift_once();
  }

  sub_24A42E63C(forCopy, v7);

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