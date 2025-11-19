@interface CKDTrafficLogger
+ (CKDTrafficLogger)shared;
- (void)logRequestWithRequestUUID:(NSString *)a3 request:(NSURLRequest *)a4 url:(NSURL *)a5 method:(NSString *)a6 messageClass:(NSString *)a7 parsingStandaloneMessage:(BOOL)a8 completionHandler:(id)aBlock;
- (void)logResponseConfigurationWithRequestUUID:(NSString *)a3 format:(int64_t)a4 messageClass:(NSString *)a5 completionHandler:(id)a6;
@end

@implementation CKDTrafficLogger

+ (CKDTrafficLogger)shared
{
  v2 = sub_22507C284();

  return v2;
}

- (void)logRequestWithRequestUUID:(NSString *)a3 request:(NSURLRequest *)a4 url:(NSURL *)a5 method:(NSString *)a6 messageClass:(NSString *)a7 parsingStandaloneMessage:(BOOL)a8 completionHandler:(id)aBlock
{
  v16 = _Block_copy(aBlock);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *(v17 + 32) = a5;
  *(v17 + 40) = a6;
  *(v17 + 48) = a7;
  *(v17 + 56) = a8;
  *(v17 + 64) = v16;
  *(v17 + 72) = self;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;

  sub_22507C7AC(&unk_225447810, v17);
}

- (void)logResponseConfigurationWithRequestUUID:(NSString *)a3 format:(int64_t)a4 messageClass:(NSString *)a5 completionHandler:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = self;
  v12 = a3;
  v13 = a5;

  sub_22507C7AC(&unk_2254477A0, v11);
}

@end