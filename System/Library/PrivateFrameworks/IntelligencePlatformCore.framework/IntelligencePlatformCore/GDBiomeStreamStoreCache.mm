@interface GDBiomeStreamStoreCache
- (GDBiomeStreamStoreCache)initWithStreamLookup:(id)lookup;
- (id)getLibraryStreamWithIdentifier:(id)identifier error:(id *)error;
- (void)clearCache;
@end

@implementation GDBiomeStreamStoreCache

- (id)getLibraryStreamWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  selfCopy = self;
  sub_1C4448370();

  sub_1C4409678(v9, v9[3]);
  v7 = sub_1C4F02918();
  sub_1C440962C(v9);

  return v7;
}

- (void)clearCache
{
  selfCopy = self;
  sub_1C446380C();
}

- (GDBiomeStreamStoreCache)initWithStreamLookup:(id)lookup
{
  v3 = _Block_copy(lookup);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  return sub_1C463F908(sub_1C4448434, v4);
}

@end