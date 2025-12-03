@interface MSLegacySuggester
+ (id)availablebundleIDsForMediaSuggestions;
+ (id)defaultRequest;
+ (void)availableBundleIDsWithCompletion:(id)completion;
- (NSString)description;
- (NSString)requestIdentifier;
- (id)candidatesForRequestOptions:(id)options;
- (id)candidatesForRequestOptions:(id)options from:(id)from to:(id)to;
- (id)copyWithZone:(void *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setRequestIdentifier:(id)identifier;
- (void)suggestionsWith:(id)with completion:(id)completion;
- (void)suggestionsWithOptions:(MSSuggesterRequestOptions *)options completion:(id)completion;
@end

@implementation MSLegacySuggester

- (NSString)requestIdentifier
{
  sub_22CA0EDAC();
  v2 = sub_22CA20E10();

  return v2;
}

- (void)setRequestIdentifier:(id)identifier
{
  v4 = sub_22CA20E20();
  v6 = v5;
  selfCopy = self;
  sub_22CA0EE58(v4, v6);
}

+ (id)defaultRequest
{
  swift_getObjCClassMetadata();
  v2 = sub_22CA0EEEC();

  return v2;
}

- (NSString)description
{
  selfCopy = self;
  MSLegacySuggester.description.getter();

  v3 = sub_22CA20E10();

  return v3;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  MSLegacySuggester.copy(with:)(v6);

  sub_22C9D05CC(v6, v6[3]);
  v4 = sub_22CA21350();
  sub_22C9D04CC(v6);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  MSLegacySuggester.encode(with:)(coderCopy);
}

- (void)suggestionsWithOptions:(MSSuggesterRequestOptions *)options completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  v7[2] = options;
  v7[3] = v6;
  v7[4] = self;
  optionsCopy = options;
  selfCopy = self;

  sub_22CA0EBDC(&unk_22CA24B00, v7);
}

+ (id)availablebundleIDsForMediaSuggestions
{
  static MSLegacySuggester.availablebundleIDsForMediaSuggestions()();
  v2 = sub_22CA20EB0();

  return v2;
}

+ (void)availableBundleIDsWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  ObjCClassMetadata = swift_getObjCClassMetadata();

  sub_22CA0FE70(ObjCClassMetadata, v3);
}

- (id)candidatesForRequestOptions:(id)options
{
  type metadata accessor for MSSuggestion(0);
  v3 = sub_22CA20EB0();

  return v3;
}

- (id)candidatesForRequestOptions:(id)options from:(id)from to:(id)to
{
  v5 = sub_22CA209F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  sub_22CA209D0();
  sub_22CA209D0();
  v13 = *(v6 + 8);
  v13(v10, v5);
  v13(v12, v5);
  type metadata accessor for MSSuggestion(0);
  v14 = sub_22CA20EB0();

  return v14;
}

- (void)suggestionsWith:(id)with completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  withCopy = with;
  selfCopy = self;
  sub_22CA1019C(withCopy, sub_22CA0CC30, v7);
}

@end