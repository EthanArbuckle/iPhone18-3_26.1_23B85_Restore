@interface IMSenderContext_Impl
+ (id)businessChatContext;
+ (id)contextWithKnownSender:(BOOL)sender;
+ (id)contextWithKnownSender:(BOOL)sender serviceName:(id)name;
- (BOOL)isTrustedSender;
- (IMSenderContext_Impl)init;
- (IMSenderContext_Impl)initWithCoder:(id)coder;
- (NSString)serviceName;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMSenderContext_Impl

- (BOOL)isTrustedSender
{
  if (*(self + OBJC_IVAR___IMSenderContext_Impl_isKnownSender))
  {
    return 1;
  }

  else
  {
    return *(self + OBJC_IVAR___IMSenderContext_Impl_isFromMe);
  }
}

- (NSString)serviceName
{
  if (*(self + OBJC_IVAR___IMSenderContext_Impl_serviceName + 8))
  {

    v2 = sub_1A88C82A8();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (id)contextWithKnownSender:(BOOL)sender
{
  v4 = type metadata accessor for SenderContext();
  v5 = objc_allocWithZone(v4);
  v5[OBJC_IVAR___IMSenderContext_Impl_isKnownSender] = sender;
  v5[OBJC_IVAR___IMSenderContext_Impl_isFromMe] = 0;
  v6 = &v5[OBJC_IVAR___IMSenderContext_Impl_serviceName];
  *v6 = 0;
  v6[1] = 0;
  v9.receiver = v5;
  v9.super_class = v4;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

+ (id)businessChatContext
{
  v2 = sub_1A88C82E8();
  v4 = v3;
  v5 = type metadata accessor for SenderContext();
  v6 = objc_allocWithZone(v5);
  v6[OBJC_IVAR___IMSenderContext_Impl_isKnownSender] = 1;
  v6[OBJC_IVAR___IMSenderContext_Impl_isFromMe] = 0;
  v7 = &v6[OBJC_IVAR___IMSenderContext_Impl_serviceName];
  *v7 = v2;
  v7[1] = v4;
  v10.receiver = v6;
  v10.super_class = v5;
  v8 = objc_msgSendSuper2(&v10, sel_init);

  return v8;
}

+ (id)contextWithKnownSender:(BOOL)sender serviceName:(id)name
{
  if (name)
  {
    v5 = sub_1A88C82E8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = type metadata accessor for SenderContext();
  v9 = objc_allocWithZone(v8);
  v9[OBJC_IVAR___IMSenderContext_Impl_isKnownSender] = sender;
  v9[OBJC_IVAR___IMSenderContext_Impl_isFromMe] = 0;
  v10 = &v9[OBJC_IVAR___IMSenderContext_Impl_serviceName];
  *v10 = v5;
  v10[1] = v7;
  v13.receiver = v9;
  v13.super_class = v8;
  v11 = objc_msgSendSuper2(&v13, sel_init);

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1A87A5ED0(coderCopy);
}

- (IMSenderContext_Impl)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_1A87A6204(coderCopy);

  return v4;
}

- (IMSenderContext_Impl)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end