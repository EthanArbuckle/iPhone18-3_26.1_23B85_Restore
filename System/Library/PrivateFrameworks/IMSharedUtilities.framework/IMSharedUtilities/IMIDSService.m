@interface IMIDSService
+ (BOOL)service:(id)a3 sendMessage:(id)a4 fromAccount:(id)a5 toDestinations:(id)a6 priority:(int64_t)a7 options:(id)a8 identifier:(id *)a9 error:(id *)a10;
+ (BOOL)service:(id)a3 sendMessage:(id)a4 toDestinations:(id)a5 priority:(int64_t)a6 options:(id)a7 identifier:(id *)a8 error:(id *)a9;
@end

@implementation IMIDSService

+ (BOOL)service:(id)a3 sendMessage:(id)a4 toDestinations:(id)a5 priority:(int64_t)a6 options:(id)a7 identifier:(id *)a8 error:(id *)a9
{
  v14 = a7;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = +[IMIDSServiceController sharedInstance];
  v19 = [v17 serviceIdentifier];
  [v18 logIfDebuggingService:v19 method:"+[IMIDSService service:sendMessage:toDestinations:priority:options:identifier:error:]"];

  LOBYTE(a8) = [v17 sendMessage:v16 toDestinations:v15 priority:a6 options:v14 identifier:a8 error:a9];
  return a8;
}

+ (BOOL)service:(id)a3 sendMessage:(id)a4 fromAccount:(id)a5 toDestinations:(id)a6 priority:(int64_t)a7 options:(id)a8 identifier:(id *)a9 error:(id *)a10
{
  v15 = a8;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = +[IMIDSServiceController sharedInstance];
  v21 = [v19 serviceIdentifier];
  [v20 logIfDebuggingService:v21 method:"+[IMIDSService service:sendMessage:fromAccount:toDestinations:priority:options:identifier:error:]"];

  LOBYTE(a7) = [v19 sendMessage:v18 fromAccount:v17 toDestinations:v16 priority:a7 options:v15 identifier:a9 error:a10];
  return a7;
}

@end