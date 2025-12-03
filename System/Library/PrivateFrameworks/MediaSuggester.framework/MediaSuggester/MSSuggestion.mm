@interface MSSuggestion
- (BOOL)hasArtwork;
- (BOOL)isEqual:(id)equal;
- (INPlayMediaIntent)intent;
- (MSUnifiedMediaIntent)unifiedIntent;
- (NSSet)editorialTags;
- (NSString)bundleID;
- (id)copyWithZone:(void *)zone;
- (int)contentType;
- (int64_t)hash;
- (void)artworkWithCompletion:(id)completion;
- (void)encodeWithCoder:(id)coder;
- (void)setBundleID:(id)d;
- (void)setIntent:(id)intent;
@end

@implementation MSSuggestion

- (NSString)bundleID
{
  sub_22C9DB188();
  v2 = sub_22CA20E10();

  return v2;
}

- (void)setBundleID:(id)d
{
  v4 = sub_22CA20E20();
  v6 = v5;
  selfCopy = self;
  sub_22C9DB234(v4, v6);
}

- (INPlayMediaIntent)intent
{
  v2 = sub_22C9DB284();

  return v2;
}

- (void)setIntent:(id)intent
{
  intentCopy = intent;
  selfCopy = self;
  sub_22C9DB2EC(intentCopy);
}

- (MSUnifiedMediaIntent)unifiedIntent
{
  v2 = sub_22C9DB334();

  return v2;
}

- (int)contentType
{
  selfCopy = self;
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
  selfCopy = self;
  v3 = MSSuggestion.hasArtwork.getter();

  return v3 & 1;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  MSSuggestion.copy(with:)(v6);

  sub_22C9D05CC(v6, v6[3]);
  v4 = sub_22CA21350();
  sub_22C9D04CC(v6);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  MSSuggestion.encode(with:)(coderCopy);
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_22CA21130();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = MSSuggestion.isEqual(_:)(v8);

  sub_22C9D027C(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = MSSuggestion.hash.getter();

  return v3;
}

- (void)artworkWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  MSSuggestion.artwork(completion:)(sub_22C9DE140, v5);
}

@end