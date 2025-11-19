@interface BlastDoorAttributionInfo
- (BlastDoorAttributionInfo)init;
- (BlastDoorAttributionInfo_PreviewGenerationConstraints)previewGenerationConstraints;
- (NSString)description;
- (double)previewGenerationSizeHeight;
- (double)previewGenerationSizeWidth;
- (unint64_t)adamID;
@end

@implementation BlastDoorAttributionInfo

- (NSString)description
{
  v2 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 136];
  v3 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 104];
  v35 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 120];
  v36 = v2;
  v4 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 136];
  v37 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 152];
  v5 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 72];
  v6 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 40];
  v31 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 56];
  v32 = v5;
  v7 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 72];
  v8 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 104];
  v33 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 88];
  v34 = v8;
  v9 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 8];
  v28[0] = *(&self->super.isa + OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo);
  v28[1] = v9;
  v10 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 40];
  v12 = *(&self->super.isa + OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo);
  v11 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 8];
  v29 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 24];
  v30 = v10;
  v24 = v35;
  v25 = v4;
  v26 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 152];
  v20 = v31;
  v21 = v7;
  v22 = v33;
  v23 = v3;
  v16 = v12;
  v17 = v11;
  v38 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 168];
  v27 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 168];
  v18 = v29;
  v19 = v6;
  sub_2142E4A90(v28, v15);
  sub_2146D9608();
  v13 = sub_2146D9588();

  return v13;
}

- (unint64_t)adamID
{
  if (self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo])
  {
    return 0;
  }

  else
  {
    return *(&self->super.isa + OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo);
  }
}

- (double)previewGenerationSizeHeight
{
  result = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 80];
  if (self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 88])
  {
    return 0.0;
  }

  return result;
}

- (double)previewGenerationSizeWidth
{
  result = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 96];
  if (self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 104])
  {
    return 0.0;
  }

  return result;
}

- (BlastDoorAttributionInfo_PreviewGenerationConstraints)previewGenerationConstraints
{
  v2 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 128];
  v11 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 112];
  v12 = v2;
  v13 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 144];
  v14 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 160];
  v3 = *&self->attributionInfo[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo + 168];
  if ((v3 & 0xFF00) == 0x200)
  {
    v4 = 0;
  }

  else
  {
    v5 = type metadata accessor for _ObjCAttributionInfo_PreviewGenerationConstraintsWrapper();
    v6 = objc_allocWithZone(v5);
    v7 = &v6[OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints];
    v8 = v12;
    *v7 = v11;
    *(v7 + 1) = v8;
    *(v7 + 2) = v13;
    *(v7 + 6) = v14;
    *(v7 + 28) = v3;
    v10.receiver = v6;
    v10.super_class = v5;
    v4 = [(BlastDoorAttributionInfo *)&v10 init];
  }

  return v4;
}

- (BlastDoorAttributionInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end