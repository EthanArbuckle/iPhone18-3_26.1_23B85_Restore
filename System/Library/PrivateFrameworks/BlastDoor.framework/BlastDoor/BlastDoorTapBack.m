@interface BlastDoorTapBack
- (BlastDoorTapBack)init;
- (NSString)description;
- (_NSRange)associatedMessageRange;
- (int64_t)associatedMessageType;
@end

@implementation BlastDoorTapBack

- (NSString)description
{
  v2 = *&self->tapBack[OBJC_IVAR___BlastDoorTapBack_tapBack + 136];
  v3 = *&self->tapBack[OBJC_IVAR___BlastDoorTapBack_tapBack + 104];
  v35 = *&self->tapBack[OBJC_IVAR___BlastDoorTapBack_tapBack + 120];
  v36 = v2;
  v4 = *&self->tapBack[OBJC_IVAR___BlastDoorTapBack_tapBack + 136];
  v37 = *&self->tapBack[OBJC_IVAR___BlastDoorTapBack_tapBack + 152];
  v5 = *&self->tapBack[OBJC_IVAR___BlastDoorTapBack_tapBack + 72];
  v6 = *&self->tapBack[OBJC_IVAR___BlastDoorTapBack_tapBack + 40];
  v31 = *&self->tapBack[OBJC_IVAR___BlastDoorTapBack_tapBack + 56];
  v32 = v5;
  v7 = *&self->tapBack[OBJC_IVAR___BlastDoorTapBack_tapBack + 72];
  v8 = *&self->tapBack[OBJC_IVAR___BlastDoorTapBack_tapBack + 104];
  v33 = *&self->tapBack[OBJC_IVAR___BlastDoorTapBack_tapBack + 88];
  v34 = v8;
  v9 = *&self->tapBack[OBJC_IVAR___BlastDoorTapBack_tapBack + 8];
  v28[0] = *(&self->super.isa + OBJC_IVAR___BlastDoorTapBack_tapBack);
  v28[1] = v9;
  v10 = *&self->tapBack[OBJC_IVAR___BlastDoorTapBack_tapBack + 40];
  v12 = *(&self->super.isa + OBJC_IVAR___BlastDoorTapBack_tapBack);
  v11 = *&self->tapBack[OBJC_IVAR___BlastDoorTapBack_tapBack + 8];
  v29 = *&self->tapBack[OBJC_IVAR___BlastDoorTapBack_tapBack + 24];
  v30 = v10;
  v24 = v35;
  v25 = v4;
  v26 = *&self->tapBack[OBJC_IVAR___BlastDoorTapBack_tapBack + 152];
  v20 = v31;
  v21 = v7;
  v22 = v33;
  v23 = v3;
  v16 = v12;
  v17 = v11;
  v38 = *&self->tapBack[OBJC_IVAR___BlastDoorTapBack_tapBack + 168];
  v27 = *&self->tapBack[OBJC_IVAR___BlastDoorTapBack_tapBack + 168];
  v18 = v29;
  v19 = v6;
  sub_21430208C(v28, v15);
  sub_2146D9608();
  v13 = sub_2146D9588();

  return v13;
}

- (int64_t)associatedMessageType
{
  result = sub_21459308C(qword_214760550[*(&self->super.isa + OBJC_IVAR___BlastDoorTapBack_tapBack)]);
  if (v3)
  {
    __break(1u);
  }

  return result;
}

- (_NSRange)associatedMessageRange
{
  v2 = sub_21457AF78(self, a2, &OBJC_IVAR___BlastDoorTapBack_tapBack);
  result.length = v3;
  result.location = v2;
  return result;
}

- (BlastDoorTapBack)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end