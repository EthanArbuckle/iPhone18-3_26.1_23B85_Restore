@interface NBObjCURLHasher
- (NBObjCURLHasher)init;
- (id)hashForURL:(id)a3 maxLength:(int64_t)a4;
@end

@implementation NBObjCURLHasher

- (NBObjCURLHasher)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___NBObjCURLHasher_urlHasher;
  type metadata accessor for URLHasher();
  v5 = swift_allocObject();
  type metadata accessor for StringHasher();
  *(v5 + 2) = swift_allocObject();
  *(&self->super.isa + v4) = v5;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(NBObjCURLHasher *)&v7 init];
}

- (id)hashForURL:(id)a3 maxLength:(int64_t)a4
{
  v6 = sub_25C339C50();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25C339BE0();
  v11 = self;
  v12 = sub_25C339BC0();
  v14 = _s13NewsURLBucket12StringHasherC4hash3for9maxLength10Foundation4DataVSS_SitF_0(v12, v13, a4);
  v16 = v15;

  (*(v7 + 8))(v10, v6);

  v17 = sub_25C339CB0();
  sub_25C335C20(v14, v16);

  return v17;
}

@end