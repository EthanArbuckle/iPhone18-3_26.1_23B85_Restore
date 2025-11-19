@interface BlastDoorAPSUserPayloadDeliveryContext
- (BlastDoorAPSUserPayloadDeliveryContext)init;
- (NSString)description;
- (int64_t)count;
@end

@implementation BlastDoorAPSUserPayloadDeliveryContext

- (NSString)description
{
  v4 = *(&self->super.isa + OBJC_IVAR___BlastDoorAPSUserPayloadDeliveryContext_aPSUserPayloadDeliveryContext);
  v5 = self->aPSUserPayloadDeliveryContext[OBJC_IVAR___BlastDoorAPSUserPayloadDeliveryContext_aPSUserPayloadDeliveryContext];
  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (int64_t)count
{
  if (self->aPSUserPayloadDeliveryContext[OBJC_IVAR___BlastDoorAPSUserPayloadDeliveryContext_aPSUserPayloadDeliveryContext])
  {
    return 0;
  }

  else
  {
    return *(&self->super.isa + OBJC_IVAR___BlastDoorAPSUserPayloadDeliveryContext_aPSUserPayloadDeliveryContext);
  }
}

- (BlastDoorAPSUserPayloadDeliveryContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end