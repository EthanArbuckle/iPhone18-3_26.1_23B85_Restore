@interface GDVUChangeBookmark
+ (id)decodeFromData:(id)data error:(id *)error;
- (id)encodeToDataAndReturnError:(id *)error;
- (int64_t)hash;
@end

@implementation GDVUChangeBookmark

- (id)encodeToDataAndReturnError:(id *)error
{
  selfCopy = self;
  v4 = GDVUChangeBookmark.encodeToData()();
  v6 = v5;

  v7 = sub_1ABF21DB4();
  sub_1ABA96210(v4, v6);

  return v7;
}

+ (id)decodeFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v5 = sub_1ABF21DD4();
  v7 = v6;

  v8 = static GDVUChangeBookmark.decode(from:)(v5, v7);
  sub_1ABA96210(v5, v7);

  return v8;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = GDVUChangeBookmark.hash.getter();

  return v3;
}

@end