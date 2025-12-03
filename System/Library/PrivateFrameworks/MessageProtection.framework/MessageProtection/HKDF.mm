@interface HKDF
+ (id)deriveKeyWith:(id)with salt:(id)salt outputSize:(int64_t)size;
- (_TtC17MessageProtection4HKDF)init;
@end

@implementation HKDF

+ (id)deriveKeyWith:(id)with salt:(id)salt outputSize:(int64_t)size
{
  withCopy = with;
  saltCopy = salt;
  v8 = specialized static HKDF.deriveKeyWith(_:salt:outputSize:)(withCopy, saltCopy);

  return v8;
}

- (_TtC17MessageProtection4HKDF)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HKDF();
  return [(HKDF *)&v3 init];
}

@end