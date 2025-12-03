@interface IMSenderContext
+ (id)businessChatContext;
+ (id)businessChatContextWithServiceName:(id)name;
+ (id)contextWithKnownSender:(BOOL)sender;
+ (id)contextWithKnownSender:(BOOL)sender serviceName:(id)name;
+ (id)fromMeContext;
+ (id)fromMeContextWithServiceName:(id)name;
+ (id)untrustedContext;
+ (id)untrustedContextWithServiceName:(id)name;
- (IMSenderContext)initWithCoder:(id)coder;
- (IMSenderContext)initWithSenderContext_Impl:(id)impl;
@end

@implementation IMSenderContext

- (IMSenderContext)initWithSenderContext_Impl:(id)impl
{
  implCopy = impl;
  v9.receiver = self;
  v9.super_class = IMSenderContext;
  v6 = [(IMSenderContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->swiftImpl, impl);
  }

  return v7;
}

+ (id)contextWithKnownSender:(BOOL)sender
{
  senderCopy = sender;
  v4 = [IMSenderContext alloc];
  v5 = [IMSenderContext_Impl contextWithKnownSender:senderCopy];
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

+ (id)contextWithKnownSender:(BOOL)sender serviceName:(id)name
{
  senderCopy = sender;
  nameCopy = name;
  v6 = [IMSenderContext alloc];
  v7 = [IMSenderContext_Impl contextWithKnownSender:senderCopy serviceName:nameCopy];

  v8 = [(IMSenderContext *)v6 initWithSenderContext_Impl:v7];

  return v8;
}

+ (id)fromMeContextWithServiceName:(id)name
{
  nameCopy = name;
  v4 = [IMSenderContext alloc];
  v5 = [IMSenderContext_Impl fromMeContextWithServiceName:nameCopy];

  v6 = [(IMSenderContext *)v4 initWithSenderContext_Impl:v5];

  return v6;
}

+ (id)untrustedContextWithServiceName:(id)name
{
  nameCopy = name;
  v4 = [IMSenderContext alloc];
  v5 = [IMSenderContext_Impl untrustedContextWithServiceName:nameCopy];

  v6 = [(IMSenderContext *)v4 initWithSenderContext_Impl:v5];

  return v6;
}

+ (id)businessChatContextWithServiceName:(id)name
{
  nameCopy = name;
  v4 = [IMSenderContext alloc];
  v5 = [IMSenderContext_Impl businessChatContextWithServiceName:nameCopy];

  v6 = [(IMSenderContext *)v4 initWithSenderContext_Impl:v5];

  return v6;
}

- (IMSenderContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = IMSenderContext;
  v5 = [(IMSenderContext *)&v9 init];
  if (v5)
  {
    v6 = [[IMSenderContext_Impl alloc] initWithCoder:coderCopy];
    swiftImpl = v5->swiftImpl;
    v5->swiftImpl = v6;
  }

  return v5;
}

@end