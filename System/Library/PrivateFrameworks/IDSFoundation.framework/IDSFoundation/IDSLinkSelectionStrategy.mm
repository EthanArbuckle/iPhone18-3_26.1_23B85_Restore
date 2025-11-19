@interface IDSLinkSelectionStrategy
+ (IDSLinkSelectionStrategy)defaultStrategy;
+ (id)adaptiveWithAllowedOverheadPerPacket:(int64_t)a3 allowedPacketsPerSecond:(double)a4;
+ (id)createWithJSON:(id)a3 error:(id *)a4;
- (BOOL)wrapsPacketsWithQualityMetadata;
- (IDSLinkSelectionStrategy)init;
- (NSString)description;
- (id)jsonWithError:(id *)a3;
@end

@implementation IDSLinkSelectionStrategy

+ (IDSLinkSelectionStrategy)defaultStrategy
{
  v2 = [objc_allocWithZone(IDSLinkSelectionStrategy) init];
  v3 = &v2[OBJC_IVAR___IDSLinkSelectionStrategy_strategy];
  swift_beginAccess();
  *v3 = xmmword_1A7E43F70;
  *(v3 + 8) = 1;

  return v2;
}

+ (id)createWithJSON:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = sub_1A7E21A10();
  v7 = v6;

  if (qword_1EB2B4870 != -1)
  {
    swift_once();
  }

  sub_1A7DAAC88();
  sub_1A7E21590();
  v8 = [objc_allocWithZone(IDSLinkSelectionStrategy) init];
  v9 = &v8[OBJC_IVAR___IDSLinkSelectionStrategy_strategy];
  swift_beginAccess();
  *v9 = v11;
  *(v9 + 1) = v12;
  v9[16] = v13;
  v9[17] = 0;
  sub_1A7CC7E50(v5, v7);

  return v8;
}

+ (id)adaptiveWithAllowedOverheadPerPacket:(int64_t)a3 allowedPacketsPerSecond:(double)a4
{
  v6 = [objc_allocWithZone(IDSLinkSelectionStrategy) init];
  v7 = &v6[OBJC_IVAR___IDSLinkSelectionStrategy_strategy];
  swift_beginAccess();
  *v7 = a3;
  v7[1] = a4;
  *(v7 + 8) = 0;

  return v6;
}

- (id)jsonWithError:(id *)a3
{
  v3 = qword_1EB2B4868;
  v4 = self;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1A7CC7FFC(&qword_1EB2B7260);
  sub_1A7DAB35C();
  v5 = sub_1A7E215E0();
  v7 = v6;

  v8 = sub_1A7E219F0();
  sub_1A7CC7E50(v5, v7);

  return v8;
}

- (BOOL)wrapsPacketsWithQualityMetadata
{
  v2 = self + OBJC_IVAR___IDSLinkSelectionStrategy_strategy;
  result = swift_beginAccess();
  if ((v2[17] & 1) == 0)
  {
    return (*v2 > 0) & ~v2[16];
  }

  __break(1u);
  return result;
}

- (NSString)description
{
  v2 = self + OBJC_IVAR___IDSLinkSelectionStrategy_strategy;
  result = swift_beginAccess();
  if (v2[17])
  {
    __break(1u);
  }

  else
  {
    LinkSelectionStrategy.description.getter();
    v4 = sub_1A7E22260();

    return v4;
  }

  return result;
}

- (IDSLinkSelectionStrategy)init
{
  v2 = self + OBJC_IVAR___IDSLinkSelectionStrategy_strategy;
  *(v2 + 8) = 256;
  *v2 = 0;
  *(v2 + 1) = 0;
  v4.receiver = self;
  v4.super_class = IDSLinkSelectionStrategy;
  return [(IDSLinkSelectionStrategy *)&v4 init];
}

@end