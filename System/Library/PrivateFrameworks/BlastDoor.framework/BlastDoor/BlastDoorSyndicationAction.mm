@interface BlastDoorSyndicationAction
- (BlastDoorGroupContext)groupContext;
- (BlastDoorSyndicationAction)init;
- (NSString)description;
- (_NSRange)syndicatedMessagePartRange;
- (unsigned)itemType;
@end

@implementation BlastDoorSyndicationAction

- (NSString)description
{
  v2 = *&self->syndicationAction[OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 104];
  v3 = *&self->syndicationAction[OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 136];
  v34 = *&self->syndicationAction[OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 120];
  v35 = v3;
  v4 = *&self->syndicationAction[OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 40];
  v5 = *&self->syndicationAction[OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 72];
  v30 = *&self->syndicationAction[OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 56];
  v31 = v5;
  v6 = *&self->syndicationAction[OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 72];
  v7 = *&self->syndicationAction[OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 104];
  v32 = *&self->syndicationAction[OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 88];
  v33 = v7;
  v8 = *&self->syndicationAction[OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 8];
  v27[0] = *(&self->super.isa + OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction);
  v27[1] = v8;
  v9 = *&self->syndicationAction[OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 40];
  v11 = *(&self->super.isa + OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction);
  v10 = *&self->syndicationAction[OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 8];
  v28 = *&self->syndicationAction[OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 24];
  v29 = v9;
  v12 = *&self->syndicationAction[OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 136];
  v24 = v34;
  v25 = v12;
  v20 = v30;
  v21 = v6;
  v22 = v32;
  v23 = v2;
  v16 = v11;
  v17 = v10;
  v36 = *&self->syndicationAction[OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 152];
  v26 = *&self->syndicationAction[OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 152];
  v18 = v28;
  v19 = v4;
  sub_21459300C(v27, v15);
  sub_2146D9608();
  v13 = sub_2146D9588();

  return v13;
}

- (unsigned)itemType
{
  v2 = *(&self->super.isa + OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction);
  if (v2 > 2)
  {
    __break(1u);
  }

  return v2;
}

- (_NSRange)syndicatedMessagePartRange
{
  v2 = self + OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction;
  v3 = *&self->syndicationAction[OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 8];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = *(v2 + 3);
  if (v4 < 0)
  {
LABEL_5:
    __break(1u);
    goto LABEL_6;
  }

  a2 = (v4 - v3);
LABEL_6:
  result.length = a2;
  result.location = v3;
  return result;
}

- (BlastDoorGroupContext)groupContext
{
  v2 = *&self->syndicationAction[OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 120];
  v22 = *&self->syndicationAction[OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 104];
  v23 = v2;
  v24 = *&self->syndicationAction[OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 136];
  v25 = self->syndicationAction[OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 152];
  v3 = *&self->syndicationAction[OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 56];
  v18 = *&self->syndicationAction[OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 40];
  v19 = v3;
  v4 = *&self->syndicationAction[OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 88];
  v20 = *&self->syndicationAction[OBJC_IVAR___BlastDoorSyndicationAction_syndicationAction + 72];
  v21 = v4;
  v5 = type metadata accessor for _ObjCGroupContextWrapper();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorGroupContext_groupContext];
  v8 = v21;
  v10 = v18;
  v9 = v19;
  *(v7 + 2) = v20;
  *(v7 + 3) = v8;
  *v7 = v10;
  *(v7 + 1) = v9;
  v12 = v23;
  v11 = v24;
  v13 = v22;
  v7[112] = v25;
  *(v7 + 5) = v12;
  *(v7 + 6) = v11;
  *(v7 + 4) = v13;
  sub_2142F236C(&v18, v17);
  v16.receiver = v6;
  v16.super_class = v5;
  v14 = [(BlastDoorSyndicationAction *)&v16 init];

  return v14;
}

- (BlastDoorSyndicationAction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end