@interface DUPaths
+ (id)topDirectory;
@end

@implementation DUPaths

+ (id)topDirectory
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_232CE044C;
  block[3] = &unk_2789A7E98;
  block[4] = self;
  if (qword_27DDD4DE8 != -1)
  {
    dispatch_once(&qword_27DDD4DE8, block);
  }

  v2 = qword_27DDD4DE0;

  return v2;
}

@end