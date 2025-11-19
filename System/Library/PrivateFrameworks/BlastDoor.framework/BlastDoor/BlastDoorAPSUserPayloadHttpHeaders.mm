@interface BlastDoorAPSUserPayloadHttpHeaders
- (BlastDoorAPSUserPayloadHttpHeaders)init;
- (NSString)asHttpHeader;
- (NSString)description;
@end

@implementation BlastDoorAPSUserPayloadHttpHeaders

- (NSString)description
{
  v2 = *&self->aPSUserPayloadHttpHeaders[OBJC_IVAR___BlastDoorAPSUserPayloadHttpHeaders_aPSUserPayloadHttpHeaders + 40];
  v3 = *&self->aPSUserPayloadHttpHeaders[OBJC_IVAR___BlastDoorAPSUserPayloadHttpHeaders_aPSUserPayloadHttpHeaders + 8];
  v12 = *&self->aPSUserPayloadHttpHeaders[OBJC_IVAR___BlastDoorAPSUserPayloadHttpHeaders_aPSUserPayloadHttpHeaders + 24];
  v13 = v2;
  v4 = *&self->aPSUserPayloadHttpHeaders[OBJC_IVAR___BlastDoorAPSUserPayloadHttpHeaders_aPSUserPayloadHttpHeaders + 40];
  v5 = *&self->aPSUserPayloadHttpHeaders[OBJC_IVAR___BlastDoorAPSUserPayloadHttpHeaders_aPSUserPayloadHttpHeaders + 72];
  v14 = *&self->aPSUserPayloadHttpHeaders[OBJC_IVAR___BlastDoorAPSUserPayloadHttpHeaders_aPSUserPayloadHttpHeaders + 56];
  v15 = v5;
  v6 = *&self->aPSUserPayloadHttpHeaders[OBJC_IVAR___BlastDoorAPSUserPayloadHttpHeaders_aPSUserPayloadHttpHeaders + 8];
  v11[0] = *(&self->super.isa + OBJC_IVAR___BlastDoorAPSUserPayloadHttpHeaders_aPSUserPayloadHttpHeaders);
  v11[1] = v6;
  v10[8] = v12;
  v10[9] = v4;
  v7 = *&self->aPSUserPayloadHttpHeaders[OBJC_IVAR___BlastDoorAPSUserPayloadHttpHeaders_aPSUserPayloadHttpHeaders + 72];
  v10[10] = v14;
  v10[11] = v7;
  v10[6] = v11[0];
  v10[7] = v3;
  sub_21454AF44(v11, v10);
  sub_2146D9608();
  v8 = sub_2146D9588();

  return v8;
}

- (NSString)asHttpHeader
{
  if (*&self->aPSUserPayloadHttpHeaders[OBJC_IVAR___BlastDoorAPSUserPayloadHttpHeaders_aPSUserPayloadHttpHeaders + 80])
  {
    v2 = *&self->aPSUserPayloadHttpHeaders[OBJC_IVAR___BlastDoorAPSUserPayloadHttpHeaders_aPSUserPayloadHttpHeaders + 72];
    v3 = *&self->aPSUserPayloadHttpHeaders[OBJC_IVAR___BlastDoorAPSUserPayloadHttpHeaders_aPSUserPayloadHttpHeaders + 80];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BlastDoorAPSUserPayloadHttpHeaders)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end