@interface DIPURLCache
- (_TtC17CoreODIEssentials11DIPURLCache)init;
- (_TtC17CoreODIEssentials11DIPURLCache)initWithMemoryCapacity:(int64_t)capacity diskCapacity:(int64_t)diskCapacity directoryURL:(id)l;
- (_TtC17CoreODIEssentials11DIPURLCache)initWithMemoryCapacity:(int64_t)capacity diskCapacity:(int64_t)diskCapacity diskPath:(id)path;
- (void)storeCachedResponse:(id)response forDataTask:(id)task;
- (void)storeCachedResponse:(id)response forRequest:(id)request;
@end

@implementation DIPURLCache

- (void)storeCachedResponse:(id)response forDataTask:(id)task
{
  responseCopy = response;
  taskCopy = task;
  selfCopy = self;
  v8 = sub_1DAFE5358(responseCopy);
  if (v8)
  {
    v9 = v8;
    v11.receiver = selfCopy;
    v11.super_class = type metadata accessor for DIPURLCache();
    [(NSURLCache *)&v11 storeCachedResponse:v9 forDataTask:taskCopy];
  }

  else
  {
  }
}

- (void)storeCachedResponse:(id)response forRequest:(id)request
{
  v6 = sub_1DB09CBF4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB09CBA4();
  responseCopy = response;
  selfCopy = self;
  v14 = sub_1DAFE5358(responseCopy);
  if (v14)
  {
    v15 = v14;
    v16 = sub_1DB09CB84();
    v17 = type metadata accessor for DIPURLCache();
    v18.receiver = selfCopy;
    v18.super_class = v17;
    [(NSURLCache *)&v18 storeCachedResponse:v15 forRequest:v16];

    responseCopy = v15;
    selfCopy = v16;
  }

  (*(v7 + 8))(v11, v6);
}

- (_TtC17CoreODIEssentials11DIPURLCache)initWithMemoryCapacity:(int64_t)capacity diskCapacity:(int64_t)diskCapacity diskPath:(id)path
{
  if (path)
  {
    sub_1DB09D6C4();
    v8 = (&self->super.super.isa + OBJC_IVAR____TtC17CoreODIEssentials11DIPURLCache_logger);
    *v8 = 45;
    v8[1] = 0xE100000000000000;
    v9 = sub_1DB09D6B4();
  }

  else
  {
    v9 = 0;
    v10 = (&self->super.super.isa + OBJC_IVAR____TtC17CoreODIEssentials11DIPURLCache_logger);
    *v10 = 45;
    v10[1] = 0xE100000000000000;
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for DIPURLCache();
  v11 = [(NSURLCache *)&v13 initWithMemoryCapacity:capacity diskCapacity:diskCapacity diskPath:v9];

  return v11;
}

- (_TtC17CoreODIEssentials11DIPURLCache)initWithMemoryCapacity:(int64_t)capacity diskCapacity:(int64_t)diskCapacity directoryURL:(id)l
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAB0, &qword_1DB0A9530);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v25 - v16;
  if (l)
  {
    sub_1DB09CF04();
    v18 = sub_1DB09CF64();
    (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
  }

  else
  {
    v18 = sub_1DB09CF64();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  }

  v19 = (&self->super.super.isa + OBJC_IVAR____TtC17CoreODIEssentials11DIPURLCache_logger);
  *v19 = 45;
  v19[1] = 0xE100000000000000;
  sub_1DAFE6928(v17, v14);
  sub_1DB09CF64();
  v20 = *(v18 - 8);
  v21 = 0;
  if ((*(v20 + 48))(v14, 1, v18) != 1)
  {
    v21 = sub_1DB09CEE4();
    (*(v20 + 8))(v14, v18);
  }

  v22 = type metadata accessor for DIPURLCache();
  v25.receiver = self;
  v25.super_class = v22;
  v23 = [(NSURLCache *)&v25 initWithMemoryCapacity:capacity diskCapacity:diskCapacity directoryURL:v21];

  sub_1DAF40AEC(v17, &unk_1ECC0EAB0, &qword_1DB0A9530);
  return v23;
}

- (_TtC17CoreODIEssentials11DIPURLCache)init
{
  v2 = (&self->super.super.isa + OBJC_IVAR____TtC17CoreODIEssentials11DIPURLCache_logger);
  *v2 = 45;
  v2[1] = 0xE100000000000000;
  v4.receiver = self;
  v4.super_class = type metadata accessor for DIPURLCache();
  return [(NSURLCache *)&v4 init];
}

@end