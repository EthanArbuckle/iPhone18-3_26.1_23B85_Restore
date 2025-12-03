@interface NSXPCConnection(CRKAdditions)
+ (id)crk_applicationInfoServiceConnection;
+ (id)crk_booksServiceConnection;
+ (id)crk_internetDateServiceConnection;
+ (id)crk_screenshotServiceConnection;
+ (id)crk_screenshotServiceConnectionWithInterface:()CRKAdditions;
+ (id)crk_studentDaemonConnection;
+ (id)crk_studentDaemonNonCatalystConnection;
@end

@implementation NSXPCConnection(CRKAdditions)

+ (id)crk_studentDaemonConnection
{
  v0 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.studentd" options:{objc_msgSend(objc_opt_class(), "crk_studentDaemonConnectionOptions")}];

  return v0;
}

+ (id)crk_studentDaemonNonCatalystConnection
{
  crk_studentDaemonConnection = [self crk_studentDaemonConnection];
  v2 = CRKStudentDaemonXPCInterface();
  [crk_studentDaemonConnection setRemoteObjectInterface:v2];

  return crk_studentDaemonConnection;
}

+ (id)crk_screenshotServiceConnection
{
  v2 = CRKScreenshotServiceXPCInterface();
  v3 = [self crk_screenshotServiceConnectionWithInterface:v2];

  return v3;
}

+ (id)crk_applicationInfoServiceConnection
{
  v2 = CRKApplicationInfoServiceXPCInterface();
  v3 = [self crk_screenshotServiceConnectionWithInterface:v2];

  return v3;
}

+ (id)crk_internetDateServiceConnection
{
  v2 = CRKInternetDateFetchingXPCInterface();
  v3 = [self crk_screenshotServiceConnectionWithInterface:v2];

  return v3;
}

+ (id)crk_booksServiceConnection
{
  v0 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.ClassroomKit.BooksService"];
  v1 = CRKBooksServiceXPCInterface();
  [v0 setRemoteObjectInterface:v1];

  return v0;
}

+ (id)crk_screenshotServiceConnectionWithInterface:()CRKAdditions
{
  v3 = MEMORY[0x277CCAE80];
  v4 = a3;
  v5 = [[v3 alloc] initWithServiceName:@"com.apple.ClassroomKit.ScreenshotService"];
  [v5 setRemoteObjectInterface:v4];

  return v5;
}

@end