@interface NBObjCURLCanonicalizer
- (id)canonicalizedURLForURL:(id)a3;
@end

@implementation NBObjCURLCanonicalizer

- (id)canonicalizedURLForURL:(id)a3
{
  v4 = sub_25C339C50();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  sub_25C339BE0();
  v12 = *(&self->super.isa + OBJC_IVAR___NBObjCURLCanonicalizer_urlCanonicalizer);
  v13 = self;
  URLCanonicalizer.canonicalizedURL(for:)(v9, v11);
  v14 = *(v5 + 8);
  v14(v9, v4);

  v15 = sub_25C339BD0();
  v14(v11, v4);

  return v15;
}

@end