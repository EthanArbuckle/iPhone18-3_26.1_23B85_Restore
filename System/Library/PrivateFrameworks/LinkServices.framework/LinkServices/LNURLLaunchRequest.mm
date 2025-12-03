@interface LNURLLaunchRequest
+ (BOOL)isValidURLForLaunching:(id)launching;
- (LNURLLaunchRequest)initWithEntity:(id)entity metadata:(id)metadata;
- (LNURLLaunchRequest)initWithEnumCaseIdentifier:(id)identifier metadata:(id)metadata;
- (LNURLLaunchRequest)initWithURL:(id)l;
- (NSString)doNotDismissSiriKey;
- (void)performValidatingURLScheme:(BOOL)scheme completionHandler:(id)handler;
- (void)performWithCompletionHandler:(id)handler;
@end

@implementation LNURLLaunchRequest

- (LNURLLaunchRequest)initWithURL:(id)l
{
  v3 = sub_19774EAD0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_19774EA90();
  return sub_19768A2B4();
}

- (LNURLLaunchRequest)initWithEntity:(id)entity metadata:(id)metadata
{
  entityCopy = entity;
  metadataCopy = metadata;
  return sub_19768A3F8();
}

- (LNURLLaunchRequest)initWithEnumCaseIdentifier:(id)identifier metadata:(id)metadata
{
  sub_19774EF50();
  metadataCopy = metadata;
  return sub_19768A4B4();
}

- (void)performWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_197693D14();
}

- (void)performValidatingURLScheme:(BOOL)scheme completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = scheme;
  *(v7 + 24) = v6;
  *(v7 + 32) = self;
  selfCopy = self;

  sub_197693D14();
}

+ (BOOL)isValidURLForLaunching:(id)launching
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