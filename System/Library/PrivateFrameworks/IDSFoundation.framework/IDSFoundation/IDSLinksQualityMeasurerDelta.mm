@interface IDSLinksQualityMeasurerDelta
+ (id)createWithJSON:(id)n;
- (IDSLinksQualityMeasurerSyncToken)syncToken;
- (id)json;
@end

@implementation IDSLinksQualityMeasurerDelta

- (IDSLinksQualityMeasurerSyncToken)syncToken
{
  v3 = *(*(&self->super.isa + OBJC_IVAR___IDSLinksQualityMeasurerDelta_delta) + OBJC_IVAR____TtC13IDSFoundation29_IDSLinksQualityMeasurerDelta_syncToken);
  v4 = objc_allocWithZone(IDSLinksQualityMeasurerSyncToken);
  selfCopy = self;
  v6 = v3;
  v7 = [v4 init];
  v8 = *&v7[OBJC_IVAR___IDSLinksQualityMeasurerSyncToken_syncToken];
  *&v7[OBJC_IVAR___IDSLinksQualityMeasurerSyncToken_syncToken] = v6;

  return v7;
}

+ (id)createWithJSON:(id)n
{
  nCopy = n;
  v4 = sub_1A7E21A10();
  v6 = v5;

  v7 = _s13IDSFoundation29_IDSLinksQualityMeasurerDeltaC6create4jsonACSg10Foundation4DataV_tFZ_0();
  if (v7)
  {
    v8 = v7;
    v9 = [objc_allocWithZone(IDSLinksQualityMeasurerDelta) init];
    sub_1A7CC7E50(v4, v6);
    v10 = *&v9[OBJC_IVAR___IDSLinksQualityMeasurerDelta_delta];
    *&v9[OBJC_IVAR___IDSLinksQualityMeasurerDelta_delta] = v8;
    v11 = v9;
  }

  else
  {
    sub_1A7CC7E50(v4, v6);
    v11 = 0;
  }

  return v11;
}

- (id)json
{
  v2 = *(&self->super.isa + OBJC_IVAR___IDSLinksQualityMeasurerDelta_delta);
  selfCopy = self;
  v4 = v2;
  v5 = _IDSLinksQualityMeasurerDelta.json()();
  v7 = v6;

  if (v7 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v9 = sub_1A7E219F0();
    sub_1A7B1516C(v5, v7);
    v8 = v9;
  }

  return v8;
}

@end