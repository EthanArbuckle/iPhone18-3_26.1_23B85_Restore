@interface NSError
+ (id)ds_errorWithPOSIXCode:(int)code itemURL:(id)l debugDescription:(id)description message:(id)message;
@end

@implementation NSError

+ (id)ds_errorWithPOSIXCode:(int)code itemURL:(id)l debugDescription:(id)description message:(id)message
{
  lCopy = l;
  descriptionCopy = description;
  messageCopy = message;
  v12 = +[NSMutableDictionary dictionary];
  [v12 setObject:lCopy forKeyedSubscript:NSURLErrorKey];
  [v12 setObject:descriptionCopy forKeyedSubscript:NSDebugDescriptionErrorKey];
  if (messageCopy)
  {
    [v12 setObject:messageCopy forKeyedSubscript:kCFErrorDescriptionKey];
  }

  v13 = [NSError errorWithDomain:NSPOSIXErrorDomain code:code userInfo:v12];

  return v13;
}

@end