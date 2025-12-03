@interface ICThumbnailKey
+ (NSString)recentObjectId;
- (BOOL)isEqual:(id)equal;
- (ICThumbnailKey)init;
- (ICThumbnailKey)initWithAccountId:(id)id objectId:(id)objectId;
- (ICThumbnailKey)initWithAccountId:(id)id objectId:(id)objectId thumbnailId:(id)thumbnailId;
- (ICThumbnailKey)initWithType:(int64_t)type accountId:(id)id objectId:(id)objectId preferredSize:(CGSize)size scale:(double)scale appearance:(unint64_t)appearance;
- (ICThumbnailKey)initWithType:(int64_t)type accountId:(id)id objectId:(id)objectId preferredSize:(CGSize)size scale:(double)scale appearance:(unint64_t)appearance isRTL:(BOOL)l contentSizeCategory:(id)self0 hasBoldText:(BOOL)self1 hasButtonShapes:(BOOL)self2 hasDarkerSystemColors:(BOOL)self3 hasBorder:(BOOL)self4;
- (ICThumbnailKey)initWithType:(int64_t)type accountId:(id)id objectId:(id)objectId preferredSize:(CGSize)size traitCollection:(id)collection;
- (NSString)description;
- (NSString)thumbnailId;
- (NSURL)containerUrl;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
@end

@implementation ICThumbnailKey

- (ICThumbnailKey)initWithType:(int64_t)type accountId:(id)id objectId:(id)objectId preferredSize:(CGSize)size scale:(double)scale appearance:(unint64_t)appearance
{
  height = size.height;
  width = size.width;
  if (!id)
  {
    v14 = 0;
    v16 = 0;
    if (objectId)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = 0;
    v19 = 0;
    return ThumbnailKey.init(type:accountId:objectId:preferredSize:scale:appearance:)(type, width, height, scale, v14, v16, v17, v19, appearance);
  }

  v14 = sub_1D4419C54();
  v16 = v15;
  if (!objectId)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = sub_1D4419C54();
  v19 = v18;
  return ThumbnailKey.init(type:accountId:objectId:preferredSize:scale:appearance:)(type, width, height, scale, v14, v16, v17, v19, appearance);
}

- (ICThumbnailKey)initWithType:(int64_t)type accountId:(id)id objectId:(id)objectId preferredSize:(CGSize)size scale:(double)scale appearance:(unint64_t)appearance isRTL:(BOOL)l contentSizeCategory:(id)self0 hasBoldText:(BOOL)self1 hasButtonShapes:(BOOL)self2 hasDarkerSystemColors:(BOOL)self3 hasBorder:(BOOL)self4
{
  height = size.height;
  width = size.width;
  objectIdCopy = objectId;
  if (id)
  {
    v20 = sub_1D4419C54();
    v22 = v21;
    if (objectIdCopy)
    {
LABEL_3:
      objectIdCopy = sub_1D4419C54();
      v24 = v23;
      goto LABEL_6;
    }
  }

  else
  {
    v20 = 0;
    v22 = 0;
    if (objectId)
    {
      goto LABEL_3;
    }
  }

  v24 = 0;
LABEL_6:
  if (category)
  {
    v25 = sub_1D4419C54();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  return sub_1D418B114(type, v20, v22, objectIdCopy, v24, appearance, v25, v27, width, height, scale, text, colors, border);
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = ThumbnailKey.hash.getter();

  return v3;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  ThumbnailKey.copy(with:)(v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = sub_1D441AD64();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1D441A804();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = ThumbnailKey.isEqual(_:)(v8);

  sub_1D418D074(v8);
  return v6 & 1;
}

+ (NSString)recentObjectId
{
  v2 = sub_1D4419C14();

  return v2;
}

- (NSString)thumbnailId
{

  v2 = sub_1D4419C14();

  return v2;
}

- (ICThumbnailKey)initWithAccountId:(id)id objectId:(id)objectId thumbnailId:(id)thumbnailId
{
  ObjectType = swift_getObjectType();
  if (!id)
  {
    v10 = 0;
    if (objectId)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  id = sub_1D4419C54();
  v10 = v9;
  if (!objectId)
  {
    goto LABEL_5;
  }

LABEL_3:
  objectId = sub_1D4419C54();
  v12 = v11;
LABEL_6:
  v13 = sub_1D4419C54();
  v14 = (self + OBJC_IVAR___ICThumbnailKey_accountId);
  *v14 = id;
  v14[1] = v10;
  v15 = (self + OBJC_IVAR___ICThumbnailKey_objectId);
  *v15 = objectId;
  v15[1] = v12;
  v16 = (self + OBJC_IVAR___ICThumbnailKey_thumbnailId);
  *v16 = v13;
  v16[1] = v17;
  v19.receiver = self;
  v19.super_class = ObjectType;
  return [(ICThumbnailKey *)&v19 init];
}

- (ICThumbnailKey)initWithAccountId:(id)id objectId:(id)objectId
{
  if (!id)
  {
    v5 = 0;
    v7 = 0;
    if (objectId)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    v10 = 0;
    return ThumbnailKey.init(accountId:objectId:)(v5, v7, v8, v10);
  }

  v5 = sub_1D4419C54();
  v7 = v6;
  if (!objectId)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_1D4419C54();
  v10 = v9;
  return ThumbnailKey.init(accountId:objectId:)(v5, v7, v8, v10);
}

- (ICThumbnailKey)initWithType:(int64_t)type accountId:(id)id objectId:(id)objectId preferredSize:(CGSize)size traitCollection:(id)collection
{
  height = size.height;
  width = size.width;
  objectIdCopy = objectId;
  if (!id)
  {
    v12 = 0;
    v14 = 0;
    if (objectId)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    return ThumbnailKey.init(type:accountId:objectId:preferredSize:traitCollection:)(type, width, height, v12, v14, objectIdCopy, v16, collection);
  }

  v12 = sub_1D4419C54();
  v14 = v13;
  if (!objectIdCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  objectIdCopy = sub_1D4419C54();
  v16 = v15;
  return ThumbnailKey.init(type:accountId:objectId:preferredSize:traitCollection:)(type, width, height, v12, v14, objectIdCopy, v16, collection);
}

- (NSString)description
{
  selfCopy = self;
  ThumbnailKey.description.getter();

  v3 = sub_1D4419C14();

  return v3;
}

- (NSURL)containerUrl
{
  v3 = sub_1D4417234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  ThumbnailKey.containerUrl.getter(v6);

  v8 = sub_1D44171C4();
  (*(v4 + 8))(v6, v3);

  return v8;
}

- (ICThumbnailKey)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end