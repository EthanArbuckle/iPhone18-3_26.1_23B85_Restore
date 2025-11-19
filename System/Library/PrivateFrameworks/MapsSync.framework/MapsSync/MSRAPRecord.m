@interface MSRAPRecord
+ (Class)managedClass;
- (MSCommunityID)communityID;
- (MSRAPRecord)initWithClientRevision:(signed __int16)a3 contentData:(id)a4 countryCode:(id)a5 positionIndex:(int64_t)a6 rapResponse:(id)a7 reportId:(id)a8 status:(signed __int16)a9 statusLastUpdatedDate:(id)a10 summary:(id)a11 type:(signed __int16)a12;
- (MSRAPRecord)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6;
- (MSRAPRecord)initWithStore:(id)a3 clientRevision:(signed __int16)a4 contentData:(id)a5 countryCode:(id)a6 positionIndex:(int64_t)a7 rapResponse:(id)a8 reportId:(id)a9 status:(signed __int16)a10 statusLastUpdatedDate:(id)a11 summary:(id)a12 type:(signed __int16)a13;
- (NSDate)statusLastUpdatedDate;
- (int64_t)positionIndex;
- (void)setClientRevision:(signed __int16)a3;
- (void)setCommunityID:(id)a3;
- (void)setPositionIndex:(int64_t)a3;
- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5;
- (void)setStatus:(signed __int16)a3;
- (void)setStatusLastUpdatedDate:(id)a3;
- (void)setType:(signed __int16)a3;
@end

@implementation MSRAPRecord

- (MSRAPRecord)initWithClientRevision:(signed __int16)a3 contentData:(id)a4 countryCode:(id)a5 positionIndex:(int64_t)a6 rapResponse:(id)a7 reportId:(id)a8 status:(signed __int16)a9 statusLastUpdatedDate:(id)a10 summary:(id)a11 type:(signed __int16)a12
{
  v57 = self;
  v58 = a6;
  v56 = a3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v51 - v18;
  if (a4)
  {
    v20 = a5;
    v21 = a7;
    v22 = a8;
    v23 = a10;
    v24 = a11;
    v25 = a4;
    v26 = sub_1B63BE924();
    v54 = v27;
    v55 = v26;

    if (a5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v37 = a5;
    v38 = a7;
    v39 = a8;
    v40 = a10;
    v41 = a11;
    v54 = 0xF000000000000000;
    v55 = 0;
    if (a5)
    {
LABEL_3:
      v28 = sub_1B63BEBD4();
      v52 = v29;
      v53 = v28;

      if (a7)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  v52 = 0;
  v53 = 0;
  if (a7)
  {
LABEL_4:
    v30 = sub_1B63BE924();
    v32 = v31;

    if (a8)
    {
      goto LABEL_5;
    }

LABEL_10:
    v33 = 0;
    v35 = 0;
    if (a10)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v30 = 0;
  v32 = 0xF000000000000000;
  if (!a8)
  {
    goto LABEL_10;
  }

LABEL_5:
  v33 = sub_1B63BEBD4();
  v35 = v34;

  if (a10)
  {
LABEL_6:
    sub_1B63BE974();

    v36 = sub_1B63BE994();
    (*(*(v36 - 8) + 56))(v19, 0, 1, v36);
    goto LABEL_12;
  }

LABEL_11:
  v42 = sub_1B63BE994();
  (*(*(v42 - 8) + 56))(v19, 1, 1, v42);
LABEL_12:
  if (a11)
  {
    v43 = sub_1B63BEBD4();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

  v50 = v19;
  v47 = v54;
  v46 = v55;
  v48 = sub_1B6310620(v56, v55, v54, v53, v52, v58, v30, v32, v33, v35, a9, v50, v43, v45, a12);
  sub_1B6284F64(v30, v32);
  sub_1B6284F64(v46, v47);
  return v48;
}

- (MSRAPRecord)initWithStore:(id)a3 clientRevision:(signed __int16)a4 contentData:(id)a5 countryCode:(id)a6 positionIndex:(int64_t)a7 rapResponse:(id)a8 reportId:(id)a9 status:(signed __int16)a10 statusLastUpdatedDate:(id)a11 summary:(id)a12 type:(signed __int16)a13
{
  v56 = self;
  v57 = a7;
  v55 = a4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v50 - v19;
  v54 = a3;
  if (a5)
  {
    v21 = a3;
    v22 = a6;
    v23 = a8;
    v24 = a9;
    v25 = a11;
    v26 = a12;
    v27 = a5;
    v28 = sub_1B63BE924();
    v52 = v29;
    v53 = v28;

    if (a6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v39 = a3;
    v40 = a6;
    v41 = a8;
    v42 = a9;
    v43 = a11;
    v44 = a12;
    v52 = 0xF000000000000000;
    v53 = 0;
    if (a6)
    {
LABEL_3:
      v30 = sub_1B63BEBD4();
      v50 = v31;
      v51 = v30;

      if (a8)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  v50 = 0;
  v51 = 0;
  if (a8)
  {
LABEL_4:
    v32 = sub_1B63BE924();
    v34 = v33;

    if (a9)
    {
      goto LABEL_5;
    }

LABEL_10:
    v35 = 0;
    v37 = 0;
    if (a11)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v32 = 0;
  v34 = 0xF000000000000000;
  if (!a9)
  {
    goto LABEL_10;
  }

LABEL_5:
  v35 = sub_1B63BEBD4();
  v37 = v36;

  if (a11)
  {
LABEL_6:
    sub_1B63BE974();

    v38 = sub_1B63BE994();
    (*(*(v38 - 8) + 56))(v20, 0, 1, v38);
    goto LABEL_12;
  }

LABEL_11:
  v45 = sub_1B63BE994();
  (*(*(v45 - 8) + 56))(v20, 1, 1, v45);
LABEL_12:
  if (a12)
  {
    v46 = sub_1B63BEBD4();
    v48 = v47;
  }

  else
  {
    v46 = 0;
    v48 = 0;
  }

  return RAPRecord.init(store:clientRevision:contentData:countryCode:positionIndex:rapResponse:reportId:status:statusLastUpdatedDate:summary:type:)(v54, v55, v53, v52, v51, v50, v57, v32, v34, v35, v37, a10, v20, v46, v48, a13);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedRAPRecord();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5
{
  v7 = a3;
  v8 = self;
  sub_1B631018C(v7, a4);
}

- (void)setClientRevision:(signed __int16)a3
{
  v4 = self;
  sub_1B630B5B4(a3);
}

- (int64_t)positionIndex
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v5 = self;
  [v4 lock];
  v6 = *(&v5->super.super.isa + OBJC_IVAR___MSRAPRecord__positionIndex);
  [*(&self->super.super.isa + v3) unlock];

  return v6;
}

- (void)setPositionIndex:(int64_t)a3
{
  v4 = self;
  sub_1B630C37C(a3);
}

- (void)setStatus:(signed __int16)a3
{
  v4 = self;
  sub_1B630D500(a3);
}

- (NSDate)statusLastUpdatedDate
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = self;
  sub_1B630D870(v6);

  v8 = sub_1B63BE994();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_1B63BE954();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

- (void)setStatusLastUpdatedDate:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  if (a3)
  {
    sub_1B63BE974();
    v9 = sub_1B63BE994();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_1B63BE994();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = self;
  sub_1B630DE70(v8);
}

- (void)setType:(signed __int16)a3
{
  v4 = self;
  sub_1B630F090(a3);
}

- (MSCommunityID)communityID
{
  v2 = self;
  v3 = sub_1B630F38C();

  return v3;
}

- (void)setCommunityID:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1B630F83C(a3);
}

- (MSRAPRecord)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  return sub_1B630F9F8(a3, a4, v7, v6);
}

@end