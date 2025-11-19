@interface GDBiomeStreamStoreCache
- (GDBiomeStreamStoreCache)initWithStreamLookup:(id)a3;
- (id)getLibraryStreamWithIdentifier:(id)a3 error:(id *)a4;
- (void)clearCache;
@end

@implementation GDBiomeStreamStoreCache

- (id)getLibraryStreamWithIdentifier:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  sub_1C4448370();

  sub_1C4409678(v9, v9[3]);
  v7 = sub_1C4F02918();
  sub_1C440962C(v9);

  return v7;
}

- (void)clearCache
{
  v2 = self;
  sub_1C446380C();
}

- (GDBiomeStreamStoreCache)initWithStreamLookup:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  return sub_1C463F908(sub_1C4448434, v4);
}

@end