@interface BSBrandMessagingDetailsObjcShim
- (BSBrandMessagingDetailsObjcShim)init;
- (NSString)localizedResponseTime;
@end

@implementation BSBrandMessagingDetailsObjcShim

- (NSString)localizedResponseTime
{
  if (*&self->messagingDetails[OBJC_IVAR___BSBrandMessagingDetailsObjcShim_messagingDetails])
  {
    v2 = *(&self->super.isa + OBJC_IVAR___BSBrandMessagingDetailsObjcShim_messagingDetails);
    v3 = *&self->messagingDetails[OBJC_IVAR___BSBrandMessagingDetailsObjcShim_messagingDetails];

    v4 = sub_2155DA7DC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BSBrandMessagingDetailsObjcShim)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end