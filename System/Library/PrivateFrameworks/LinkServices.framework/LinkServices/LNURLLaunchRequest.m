@interface LNURLLaunchRequest
+ (BOOL)isValidURLForLaunching:(id)a3;
- (LNURLLaunchRequest)initWithEntity:(id)a3 metadata:(id)a4;
- (LNURLLaunchRequest)initWithEnumCaseIdentifier:(id)a3 metadata:(id)a4;
- (LNURLLaunchRequest)initWithURL:(id)a3;
- (NSString)doNotDismissSiriKey;
- (void)performValidatingURLScheme:(BOOL)a3 completionHandler:(id)a4;
- (void)performWithCompletionHandler:(id)a3;
@end

@implementation LNURLLaunchRequest

- (LNURLLaunchRequest)initWithURL:(id)a3
{
  v3 = sub_19774EAD0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_19774EA90();
  return sub_19768A2B4();
}

- (LNURLLaunchRequest)initWithEntity:(id)a3 metadata:(id)a4
{
  v5 = a3;
  v6 = a4;
  return sub_19768A3F8();
}

- (LNURLLaunchRequest)initWithEnumCaseIdentifier:(id)a3 metadata:(id)a4
{
  sub_19774EF50();
  v5 = a4;
  return sub_19768A4B4();
}

- (void)performWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_197693D14();
}

- (void)performValidatingURLScheme:(BOOL)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = v6;
  *(v7 + 32) = self;
  v8 = self;

  sub_197693D14();
}

+ (BOOL)isValidURLForLaunching:(id)a3
{
  v3 = sub_19774EAD0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19774EA90();
  v8 = sub_19768E1BC();
  (*(v4 + 8))(v7, v3);
  return v8;
}

- (NSString)doNotDismissSiriKey
{
  sub_19768E504();
  v2 = sub_19774EF20();

  return v2;
}

@end