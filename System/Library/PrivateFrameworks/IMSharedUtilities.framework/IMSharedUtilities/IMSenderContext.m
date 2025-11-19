@interface IMSenderContext
+ (id)businessChatContext;
+ (id)businessChatContextWithServiceName:(id)a3;
+ (id)contextWithKnownSender:(BOOL)a3;
+ (id)contextWithKnownSender:(BOOL)a3 serviceName:(id)a4;
+ (id)fromMeContext;
+ (id)fromMeContextWithServiceName:(id)a3;
+ (id)untrustedContext;
+ (id)untrustedContextWithServiceName:(id)a3;
- (IMSenderContext)initWithCoder:(id)a3;
- (IMSenderContext)initWithSenderContext_Impl:(id)a3;
@end

@implementation IMSenderContext

- (IMSenderContext)initWithSenderContext_Impl:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IMSenderContext;
  v6 = [(IMSenderContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->swiftImpl, a3);
  }

  return v7;
}

+ (id)contextWithKnownSender:(BOOL)a3
{
  v3 = a3;
  v4 = [IMSenderContext alloc];
  v5 = [IMSenderContext_Impl contextWithKnownSender:v3];
  v6 = [(IMSenderContext *)v4 initWithSenderContext_Impl:v5];

  return v6;
}

+ (id)fromMeContext
{
  v2 = [IMSenderContext alloc];
  v3 = +[IMSenderContext_Impl fromMeContext];
  v4 = [(IMSenderContext *)v2 initWithSenderContext_Impl:v3];

  return v4;
}

+ (id)untrustedContext
{
  v2 = [IMSenderContext alloc];
  v3 = +[IMSenderContext_Impl untrustedContext];
  v4 = [(IMSenderContext *)v2 initWithSenderContext_Impl:v3];

  return v4;
}

+ (id)businessChatContext
{
  v2 = [IMSenderContext alloc];
  v3 = +[IMSenderContext_Impl businessChatContext];
  v4 = [(IMSenderContext *)v2 initWithSenderContext_Impl:v3];

  return v4;
}

+ (id)contextWithKnownSender:(BOOL)a3 serviceName:(id)a4
{
  v4 = a3;
  v5 = a4;
  v6 = [IMSenderContext alloc];
  v7 = [IMSenderContext_Impl contextWithKnownSender:v4 serviceName:v5];

  v8 = [(IMSenderContext *)v6 initWithSenderContext_Impl:v7];

  return v8;
}

+ (id)fromMeContextWithServiceName:(id)a3
{
  v3 = a3;
  v4 = [IMSenderContext alloc];
  v5 = [IMSenderContext_Impl fromMeContextWithServiceName:v3];

  v6 = [(IMSenderContext *)v4 initWithSenderContext_Impl:v5];

  return v6;
}

+ (id)untrustedContextWithServiceName:(id)a3
{
  v3 = a3;
  v4 = [IMSenderContext alloc];
  v5 = [IMSenderContext_Impl untrustedContextWithServiceName:v3];

  v6 = [(IMSenderContext *)v4 initWithSenderContext_Impl:v5];

  return v6;
}

+ (id)businessChatContextWithServiceName:(id)a3
{
  v3 = a3;
  v4 = [IMSenderContext alloc];
  v5 = [IMSenderContext_Impl businessChatContextWithServiceName:v3];

  v6 = [(IMSenderContext *)v4 initWithSenderContext_Impl:v5];

  return v6;
}

- (IMSenderContext)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IMSenderContext;
  v5 = [(IMSenderContext *)&v9 init];
  if (v5)
  {
    v6 = [[IMSenderContext_Impl alloc] initWithCoder:v4];
    swiftImpl = v5->swiftImpl;
    v5->swiftImpl = v6;
  }

  return v5;
}

@end