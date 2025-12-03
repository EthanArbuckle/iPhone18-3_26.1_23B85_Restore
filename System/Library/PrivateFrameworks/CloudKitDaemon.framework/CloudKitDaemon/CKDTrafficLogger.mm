@interface CKDTrafficLogger
+ (CKDTrafficLogger)shared;
- (void)logRequestWithRequestUUID:(NSString *)d request:(NSURLRequest *)request url:(NSURL *)url method:(NSString *)method messageClass:(NSString *)class parsingStandaloneMessage:(BOOL)message completionHandler:(id)aBlock;
- (void)logResponseConfigurationWithRequestUUID:(NSString *)d format:(int64_t)format messageClass:(NSString *)class completionHandler:(id)handler;
@end

@implementation CKDTrafficLogger

+ (CKDTrafficLogger)shared
{
  v2 = sub_22507C284();

  return v2;
}

- (void)logRequestWithRequestUUID:(NSString *)d request:(NSURLRequest *)request url:(NSURL *)url method:(NSString *)method messageClass:(NSString *)class parsingStandaloneMessage:(BOOL)message completionHandler:(id)aBlock
{
  v16 = _Block_copy(aBlock);
  v17 = swift_allocObject();
  *(v17 + 16) = d;
  *(v17 + 24) = request;
  *(v17 + 32) = url;
  *(v17 + 40) = method;
  *(v17 + 48) = class;
  *(v17 + 56) = message;
  *(v17 + 64) = v16;
  *(v17 + 72) = self;
  dCopy = d;
  requestCopy = request;
  urlCopy = url;
  methodCopy = method;
  classCopy = class;

  sub_22507C7AC(&unk_225447810, v17);
}

- (void)logResponseConfigurationWithRequestUUID:(NSString *)d format:(int64_t)format messageClass:(NSString *)class completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = format;
  v11[4] = class;
  v11[5] = v10;
  v11[6] = self;
  dCopy = d;
  classCopy = class;

  sub_22507C7AC(&unk_2254477A0, v11);
}

@end