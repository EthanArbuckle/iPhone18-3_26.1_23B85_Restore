@interface CKRichLinkMetadataCache
- (_TtC7ChatKit23CKRichLinkMetadataCache)init;
@end

@implementation CKRichLinkMetadataCache

- (_TtC7ChatKit23CKRichLinkMetadataCache)init
{
  v3 = OBJC_IVAR____TtC7ChatKit23CKRichLinkMetadataCache_metadataCache;
  v4 = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  [v4 setCountLimit_];
  *(&self->super.isa + v3) = v4;
  v6.receiver = self;
  v6.super_class = type metadata accessor for CKRichLinkMetadataCache();
  return [(CKRichLinkMetadataCache *)&v6 init];
}

@end