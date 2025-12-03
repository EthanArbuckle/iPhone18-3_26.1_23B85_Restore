@interface CoreDataStoreArchive
+ (id)copyCoreDataStoresWithUrl:(id)url;
- (CoreDataStoreArchive)init;
@end

@implementation CoreDataStoreArchive

+ (id)copyCoreDataStoresWithUrl:(id)url
{
  v3 = sub_1000037FC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000031A4(&qword_10000C2A0, &qword_100003DE0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v17 - v10;
  sub_1000037EC();
  sub_10000287C(v7, v11);
  v12 = *(v4 + 8);
  v12(v7, v3);
  v13 = (*(v4 + 48))(v11, 1, v3);
  result = 0;
  if (v13 != 1)
  {
    sub_1000037BC(v13);
    v16 = v15;
    v12(v11, v3);
    return v16;
  }

  return result;
}

- (CoreDataStoreArchive)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CoreDataStoreArchive();
  return [(CoreDataStoreArchive *)&v3 init];
}

@end