@interface BlastDoorGroupContext
- (BlastDoorGroupContext)init;
- (NSString)description;
- (unint64_t)groupParticipantVersion;
- (unint64_t)groupProtocolVersion;
@end

@implementation BlastDoorGroupContext

- (NSString)description
{
  v2 = *&self->groupContext[OBJC_IVAR___BlastDoorGroupContext_groupContext + 72];
  v3 = *&self->groupContext[OBJC_IVAR___BlastDoorGroupContext_groupContext + 40];
  v24 = *&self->groupContext[OBJC_IVAR___BlastDoorGroupContext_groupContext + 56];
  v25 = v2;
  v4 = *&self->groupContext[OBJC_IVAR___BlastDoorGroupContext_groupContext + 72];
  v26 = *&self->groupContext[OBJC_IVAR___BlastDoorGroupContext_groupContext + 88];
  v5 = *&self->groupContext[OBJC_IVAR___BlastDoorGroupContext_groupContext + 8];
  v21[0] = *(&self->super.isa + OBJC_IVAR___BlastDoorGroupContext_groupContext);
  v21[1] = v5;
  v6 = *&self->groupContext[OBJC_IVAR___BlastDoorGroupContext_groupContext + 40];
  v8 = *(&self->super.isa + OBJC_IVAR___BlastDoorGroupContext_groupContext);
  v7 = *&self->groupContext[OBJC_IVAR___BlastDoorGroupContext_groupContext + 8];
  v22 = *&self->groupContext[OBJC_IVAR___BlastDoorGroupContext_groupContext + 24];
  v23 = v6;
  v9 = *&self->groupContext[OBJC_IVAR___BlastDoorGroupContext_groupContext + 88];
  v18 = v4;
  v19 = v9;
  v13 = v8;
  v14 = v7;
  v15 = v22;
  v27 = self->groupContext[OBJC_IVAR___BlastDoorGroupContext_groupContext + 104];
  v20 = self->groupContext[OBJC_IVAR___BlastDoorGroupContext_groupContext + 104];
  v16 = v3;
  v17 = v24;
  sub_2142F236C(v21, v12);
  sub_2146D9608();
  v10 = sub_2146D9588();

  return v10;
}

- (unint64_t)groupParticipantVersion
{
  if (self->groupContext[OBJC_IVAR___BlastDoorGroupContext_groupContext + 88])
  {
    return 0;
  }

  else
  {
    return *&self->groupContext[OBJC_IVAR___BlastDoorGroupContext_groupContext + 80];
  }
}

- (unint64_t)groupProtocolVersion
{
  if (self->groupContext[OBJC_IVAR___BlastDoorGroupContext_groupContext + 104])
  {
    return 0;
  }

  else
  {
    return *&self->groupContext[OBJC_IVAR___BlastDoorGroupContext_groupContext + 96];
  }
}

- (BlastDoorGroupContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end