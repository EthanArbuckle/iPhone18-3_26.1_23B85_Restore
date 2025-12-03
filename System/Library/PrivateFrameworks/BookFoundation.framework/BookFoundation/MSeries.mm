@interface MSeries
- (BOOL)isAudiobookSeries;
- (BOOL)isBookSeries;
- (BOOL)isExplicit;
- (NSArray)assets;
- (NSArray)authorNames;
- (NSArray)genres;
- (NSNumber)authorCount;
- (NSString)name;
- (NSURL)url;
@end

@implementation MSeries

- (NSNumber)authorCount
{
  selfCopy = self;
  MSeries.authorCount.getter();
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_241CF9408();
  }

  return v4;
}

- (NSArray)assets
{
  selfCopy = self;
  if (MSeries.assetsResourceSet.getter() && (v3 = sub_241CF1858(), , v3))
  {
    sub_241CB6F3C(v3, &unk_27EC6A150, &unk_241CFC8B8);

    sub_241C93918(&unk_27EC6A150, &unk_241CFC8B8);
    v4 = sub_241CF9288();

    v5 = v4;
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (NSArray)genres
{
  selfCopy = self;
  v3 = sub_241CA8170(@"genres");
  if (v3)
  {
    sub_241CB6F3C(v3, &unk_27EC6A700, &qword_241CFC8C8);

    sub_241C93918(&unk_27EC6A700, &qword_241CFC8C8);
    v4 = sub_241CF9288();
  }

  else
  {

    v4 = 0;
  }

  return v4;
}

- (NSString)name
{
  v2 = *(self + OBJC_IVAR____TtC14BookFoundation7MSeries_name);
  v3 = *(self + OBJC_IVAR____TtC14BookFoundation7MSeries_name + 8);

  v4 = sub_241CF9008();

  return v4;
}

- (NSURL)url
{
  v3 = sub_241CF8CF8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC14BookFoundation7MSeries_url, v3);
  v8 = sub_241CF8C98();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (BOOL)isBookSeries
{
  ObjectType = swift_getObjectType();
  (*(ObjectType + 136))(&v4);
  return v4 == 4;
}

- (BOOL)isAudiobookSeries
{
  ObjectType = swift_getObjectType();
  (*(ObjectType + 136))(&v4);
  return v4 == 1;
}

- (BOOL)isExplicit
{
  selfCopy = self;
  v3 = MSeries.isExplicit.getter();

  return v3 & 1;
}

- (NSArray)authorNames
{
  selfCopy = self;
  v3 = MSeries.authorNames.getter();

  if (v3)
  {
    v4 = sub_241CF9288();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end