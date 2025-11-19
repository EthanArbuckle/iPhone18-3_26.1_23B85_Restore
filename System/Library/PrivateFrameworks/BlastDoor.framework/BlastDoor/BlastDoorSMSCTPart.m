@interface BlastDoorSMSCTPart
- (BlastDoorSMSCTPart)init;
- (BlastDoorSMSCTPartContentWrapper)content;
- (NSString)description;
@end

@implementation BlastDoorSMSCTPart

- (NSString)description
{
  v2 = *&self->sMSCTPart[OBJC_IVAR___BlastDoorSMSCTPart_sMSCTPart + 40];
  v3 = *&self->sMSCTPart[OBJC_IVAR___BlastDoorSMSCTPart_sMSCTPart + 8];
  v17 = *&self->sMSCTPart[OBJC_IVAR___BlastDoorSMSCTPart_sMSCTPart + 24];
  v18 = v2;
  v4 = *&self->sMSCTPart[OBJC_IVAR___BlastDoorSMSCTPart_sMSCTPart + 40];
  v19 = *&self->sMSCTPart[OBJC_IVAR___BlastDoorSMSCTPart_sMSCTPart + 56];
  v5 = *&self->sMSCTPart[OBJC_IVAR___BlastDoorSMSCTPart_sMSCTPart + 8];
  v16[0] = *(&self->super.isa + OBJC_IVAR___BlastDoorSMSCTPart_sMSCTPart);
  v16[1] = v5;
  v11 = v3;
  v12 = v17;
  v6 = *&self->sMSCTPart[OBJC_IVAR___BlastDoorSMSCTPart_sMSCTPart + 56];
  v13 = v4;
  v14 = v6;
  v20 = self->sMSCTPart[OBJC_IVAR___BlastDoorSMSCTPart_sMSCTPart + 72];
  v15 = self->sMSCTPart[OBJC_IVAR___BlastDoorSMSCTPart_sMSCTPart + 72];
  v10 = v16[0];
  sub_214592D30(v16, v9);
  sub_2146D9608();
  v7 = sub_2146D9588();

  return v7;
}

- (BlastDoorSMSCTPartContentWrapper)content
{
  v2 = *&self->sMSCTPart[OBJC_IVAR___BlastDoorSMSCTPart_sMSCTPart + 40];
  v3 = *&self->sMSCTPart[OBJC_IVAR___BlastDoorSMSCTPart_sMSCTPart + 48];
  v4 = *&self->sMSCTPart[OBJC_IVAR___BlastDoorSMSCTPart_sMSCTPart + 56];
  v5 = *&self->sMSCTPart[OBJC_IVAR___BlastDoorSMSCTPart_sMSCTPart + 64];
  v6 = self->sMSCTPart[OBJC_IVAR___BlastDoorSMSCTPart_sMSCTPart + 72];
  v7 = type metadata accessor for _ObjCEnumSMSCTPartContentWrapper();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR___BlastDoorSMSCTPartContentWrapper_sMSCTPart_Content];
  *v9 = v2;
  *(v9 + 1) = v3;
  *(v9 + 2) = v4;
  *(v9 + 3) = v5;
  v9[32] = v6;
  sub_214300110(v2, v3, v4, v5, v6);
  v12.receiver = v8;
  v12.super_class = v7;
  v10 = [(BlastDoorSMSCTPart *)&v12 init];

  return v10;
}

- (BlastDoorSMSCTPart)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end