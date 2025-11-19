@interface NSUserDefaults(NSUserDefaults_TSUAdditions)
+ (void)tsu_registerDefaults;
@end

@implementation NSUserDefaults(NSUserDefaults_TSUAdditions)

+ (void)tsu_registerDefaults
{
  if (tsu_registerDefaults_onceToken != -1)
  {
    +[NSUserDefaults(NSUserDefaults_TSUAdditions) tsu_registerDefaults];
  }
}

@end