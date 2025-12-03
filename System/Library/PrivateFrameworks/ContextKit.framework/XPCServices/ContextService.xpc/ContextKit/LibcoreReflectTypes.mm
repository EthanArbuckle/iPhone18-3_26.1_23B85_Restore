@interface LibcoreReflectTypes
+ (void)initialize;
@end

@implementation LibcoreReflectTypes

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = new_JavaUtilHashMap_initWithInt_(9);
    JreStrongAssignAndConsume(&qword_100555090, v2);
    [qword_100555090 putWithId:+[IOSClass byteClass](IOSClass withId:{"byteClass"), @"B"}];
    [qword_100555090 putWithId:+[IOSClass charClass](IOSClass withId:{"charClass"), @"C"}];
    [qword_100555090 putWithId:+[IOSClass shortClass](IOSClass withId:{"shortClass"), @"S"}];
    [qword_100555090 putWithId:+[IOSClass intClass](IOSClass withId:{"intClass"), @"I"}];
    [qword_100555090 putWithId:+[IOSClass longClass](IOSClass withId:{"longClass"), @"J"}];
    [qword_100555090 putWithId:+[IOSClass floatClass](IOSClass withId:{"floatClass"), @"F"}];
    [qword_100555090 putWithId:+[IOSClass doubleClass](IOSClass withId:{"doubleClass"), @"D"}];
    [qword_100555090 putWithId:+[IOSClass voidClass](IOSClass withId:{"voidClass"), @"V"}];
    [qword_100555090 putWithId:+[IOSClass BOOLeanClass](IOSClass withId:{"BOOLeanClass"), @"Z"}];
    atomic_store(1u, LibcoreReflectTypes__initialized);
  }
}

@end