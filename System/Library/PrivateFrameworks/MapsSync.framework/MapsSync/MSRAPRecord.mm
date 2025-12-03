@interface MSRAPRecord
+ (Class)managedClass;
- (MSCommunityID)communityID;
- (MSRAPRecord)initWithClientRevision:(signed __int16)revision contentData:(id)data countryCode:(id)code positionIndex:(int64_t)index rapResponse:(id)response reportId:(id)id status:(signed __int16)status statusLastUpdatedDate:(id)self0 summary:(id)self1 type:(signed __int16)self2;
- (MSRAPRecord)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent;
- (MSRAPRecord)initWithStore:(id)store clientRevision:(signed __int16)revision contentData:(id)data countryCode:(id)code positionIndex:(int64_t)index rapResponse:(id)response reportId:(id)id status:(signed __int16)self0 statusLastUpdatedDate:(id)self1 summary:(id)self2 type:(signed __int16)self3;
- (NSDate)statusLastUpdatedDate;
- (int64_t)positionIndex;
- (void)setClientRevision:(signed __int16)revision;
- (void)setCommunityID:(id)d;
- (void)setPositionIndex:(int64_t)index;
- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent;
- (void)setStatus:(signed __int16)status;
- (void)setStatusLastUpdatedDate:(id)date;
- (void)setType:(signed __int16)type;
@end

@implementation MSRAPRecord

- (MSRAPRecord)initWithClientRevision:(signed __int16)revision contentData:(id)data countryCode:(id)code positionIndex:(int64_t)index rapResponse:(id)response reportId:(id)id status:(signed __int16)status statusLastUpdatedDate:(id)self0 summary:(id)self1 type:(signed __int16)self2
{
  selfCopy = self;
  indexCopy = index;
  revisionCopy = revision;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v51 - v18;
  if (data)
  {
    codeCopy = code;
    responseCopy = response;
    idCopy = id;
    dateCopy = date;
    summaryCopy = summary;
    dataCopy = data;
    v26 = sub_1B63BE924();
    v54 = v27;
    v55 = v26;

    if (code)
    {
      goto LABEL_3;
    }
  }

  else
  {
    codeCopy2 = code;
    responseCopy2 = response;
    idCopy2 = id;
    dateCopy2 = date;
    summaryCopy2 = summary;
    v54 = 0xF000000000000000;
    v55 = 0;
    if (code)
    {
LABEL_3:
      v28 = sub_1B63BEBD4();
      v52 = v29;
      v53 = v28;

      if (response)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  v52 = 0;
  v53 = 0;
  if (response)
  {
LABEL_4:
    v30 = sub_1B63BE924();
    v32 = v31;

    if (id)
    {
      goto LABEL_5;
    }

LABEL_10:
    v33 = 0;
    v35 = 0;
    if (date)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v30 = 0;
  v32 = 0xF000000000000000;
  if (!id)
  {
    goto LABEL_10;
  }

LABEL_5:
  v33 = sub_1B63BEBD4();
  v35 = v34;

  if (date)
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
  if (summary)
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
  v48 = sub_1B6310620(revisionCopy, v55, v54, v53, v52, indexCopy, v30, v32, v33, v35, status, v50, v43, v45, type);
  sub_1B6284F64(v30, v32);
  sub_1B6284F64(v46, v47);
  return v48;
}

- (MSRAPRecord)initWithStore:(id)store clientRevision:(signed __int16)revision contentData:(id)data countryCode:(id)code positionIndex:(int64_t)index rapResponse:(id)response reportId:(id)id status:(signed __int16)self0 statusLastUpdatedDate:(id)self1 summary:(id)self2 type:(signed __int16)self3
{
  selfCopy = self;
  indexCopy = index;
  revisionCopy = revision;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v50 - v19;
  storeCopy = store;
  if (data)
  {
    storeCopy2 = store;
    codeCopy = code;
    responseCopy = response;
    idCopy = id;
    dateCopy = date;
    summaryCopy = summary;
    dataCopy = data;
    v28 = sub_1B63BE924();
    v52 = v29;
    v53 = v28;

    if (code)
    {
      goto LABEL_3;
    }
  }

  else
  {
    storeCopy3 = store;
    codeCopy2 = code;
    responseCopy2 = response;
    idCopy2 = id;
    dateCopy2 = date;
    summaryCopy2 = summary;
    v52 = 0xF000000000000000;
    v53 = 0;
    if (code)
    {
LABEL_3:
      v30 = sub_1B63BEBD4();
      v50 = v31;
      v51 = v30;

      if (response)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  v50 = 0;
  v51 = 0;
  if (response)
  {
LABEL_4:
    v32 = sub_1B63BE924();
    v34 = v33;

    if (id)
    {
      goto LABEL_5;
    }

LABEL_10:
    v35 = 0;
    v37 = 0;
    if (date)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v32 = 0;
  v34 = 0xF000000000000000;
  if (!id)
  {
    goto LABEL_10;
  }

LABEL_5:
  v35 = sub_1B63BEBD4();
  v37 = v36;

  if (date)
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
  if (summary)
  {
    v46 = sub_1B63BEBD4();
    v48 = v47;
  }

  else
  {
    v46 = 0;
    v48 = 0;
  }

  return RAPRecord.init(store:clientRevision:contentData:countryCode:positionIndex:rapResponse:reportId:status:statusLastUpdatedDate:summary:type:)(storeCopy, revisionCopy, v53, v52, v51, v50, indexCopy, v32, v34, v35, v37, status, v20, v46, v48, type);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedRAPRecord();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent
{
  objectCopy = object;
  selfCopy = self;
  sub_1B631018C(objectCopy, load);
}

- (void)setClientRevision:(signed __int16)revision
{
  selfCopy = self;
  sub_1B630B5B4(revision);
}

- (int64_t)positionIndex
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  v6 = *(&selfCopy->super.super.isa + OBJC_IVAR___MSRAPRecord__positionIndex);
  [*(&self->super.super.isa + v3) unlock];

  return v6;
}

- (void)setPositionIndex:(int64_t)index
{
  selfCopy = self;
  sub_1B630C37C(index);
}

- (void)setStatus:(signed __int16)status
{
  selfCopy = self;
  sub_1B630D500(status);
}

- (NSDate)statusLastUpdatedDate
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  selfCopy = self;
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

- (void)setStatusLastUpdatedDate:(id)date
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  if (date)
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

  selfCopy = self;
  sub_1B630DE70(v8);
}

- (void)setType:(signed __int16)type
{
  selfCopy = self;
  sub_1B630F090(type);
}

- (MSCommunityID)communityID
{
  selfCopy = self;
  v3 = sub_1B630F38C();

  return v3;
}

- (void)setCommunityID:(id)d
{
  dCopy = d;
  selfCopy = self;
  sub_1B630F83C(d);
}

- (MSRAPRecord)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent
{
  parentCopy = parent;
  loadCopy = load;
  objectCopy = object;
  return sub_1B630F9F8(object, store, loadCopy, parentCopy);
}

@end