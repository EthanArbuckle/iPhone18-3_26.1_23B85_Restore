@interface MSSuggestion
- (BOOL)hasArtwork;
- (BOOL)isEqual:(id)a3;
- (INPlayMediaIntent)intent;
- (MSUnifiedMediaIntent)unifiedIntent;
- (NSSet)editorialTags;
- (NSString)bundleID;
- (id)copyWithZone:(void *)a3;
- (int)contentType;
- (int64_t)hash;
- (void)artworkWithCompletion:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setBundleID:(id)a3;
- (void)setIntent:(id)a3;
@end

@implementation MSSuggestion

- (NSString)bundleID
{
  sub_22C9DB188();
  v2 = sub_22CA20E10();

  return v2;
}

- (void)setBundleID:(id)a3
{
  v4 = sub_22CA20E20();
  v6 = v5;
  v7 = self;
  sub_22C9DB234(v4, v6);
}

- (INPlayMediaIntent)intent
{
  v2 = sub_22C9DB284();

  return v2;
}

- (void)setIntent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_22C9DB2EC(v4);
}

- (MSUnifiedMediaIntent)unifiedIntent
{
  v2 = sub_22C9DB334();

  return v2;
}

- (int)contentType
{
  v2 = self;
  v3 = MSSuggestion.contentType.getter();

  return v3;
}

- (NSSet)editorialTags
{
  MSSuggestion.editorialTags.getter();
  v2 = sub_22CA20FB0();

  return v2;
}

- (BOOL)hasArtwork
{
  v2 = self;
  v3 = MSSuggestion.hasArtwork.getter();

  return v3 & 1;
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  MSSuggestion.copy(with:)(v6);

  sub_22C9D05CC(v6, v6[3]);
  v4 = sub_22CA21350();
  sub_22C9D04CC(v6);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  MSSuggestion.encode(with:)(v4);
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_22CA21130();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = MSSuggestion.isEqual(_:)(v8);

  sub_22C9D027C(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = self;
  v3 = MSSuggestion.hash.getter();

  return v3;
}

- (void)artworkWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  MSSuggestion.artwork(completion:)(sub_22C9DE140, v5);
}

@end