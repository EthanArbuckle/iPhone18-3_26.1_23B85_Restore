@interface ICREnvironment
+ (ICREnvironment)currentEnvironment;
- (void)dealloc;
@end

@implementation ICREnvironment

+ (ICREnvironment)currentEnvironment
{
  if (qword_1EB7525F8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB752DC8;

  return v3;
}

- (void)dealloc
{
  v2 = *(self + OBJC_IVAR___ICREnvironment__shortInfoString);
  selfCopy = self;
  free(v2);
  v4.receiver = selfCopy;
  v4.super_class = ICREnvironment;
  [(ICREnvironment *)&v4 dealloc];
}

@end