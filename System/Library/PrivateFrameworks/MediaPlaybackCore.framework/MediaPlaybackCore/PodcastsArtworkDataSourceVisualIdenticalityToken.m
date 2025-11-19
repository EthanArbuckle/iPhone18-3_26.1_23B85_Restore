@interface PodcastsArtworkDataSourceVisualIdenticalityToken
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(void *)a3;
- (id)stringRepresentation;
- (int64_t)hash;
@end

@implementation PodcastsArtworkDataSourceVisualIdenticalityToken

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_1C5D04454(v6);

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = sub_1C6017850();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1C6017390();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_1C5D04594(v8);

  sub_1C5D04A84(v8, sub_1C5CBCFA8);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = self;
  v3 = sub_1C5D04718();

  return v3;
}

- (id)stringRepresentation
{
  sub_1C5D04760();
  if (v2)
  {
    v3 = sub_1C6016900();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end