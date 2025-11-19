@interface NSError
+ (id)ds_errorWithPOSIXCode:(int)a3 itemURL:(id)a4 debugDescription:(id)a5 message:(id)a6;
@end

@implementation NSError

+ (id)ds_errorWithPOSIXCode:(int)a3 itemURL:(id)a4 debugDescription:(id)a5 message:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = +[NSMutableDictionary dictionary];
  [v12 setObject:v9 forKeyedSubscript:NSURLErrorKey];
  [v12 setObject:v10 forKeyedSubscript:NSDebugDescriptionErrorKey];
  if (v11)
  {
    [v12 setObject:v11 forKeyedSubscript:kCFErrorDescriptionKey];
  }

  v13 = [NSError errorWithDomain:NSPOSIXErrorDomain code:a3 userInfo:v12];

  return v13;
}

@end