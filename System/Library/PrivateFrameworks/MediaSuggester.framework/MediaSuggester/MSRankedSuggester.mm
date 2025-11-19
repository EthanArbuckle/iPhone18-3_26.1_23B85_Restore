@interface MSRankedSuggester
+ (id)availablebundleIDsForMediaSuggestions;
+ (id)defaultRequest;
+ (void)availableBundleIDsWithCompletion:(id)a3;
- (NSString)description;
- (NSString)requestIdentifier;
- (id)candidatesForRequestOptions:(id)a3;
- (id)candidatesForRequestOptions:(id)a3 from:(id)a4 to:(id)a5;
- (id)copyWithZone:(void *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setRequestIdentifier:(id)a3;
- (void)suggestionsWith:(id)a3 completion:(id)a4;
- (void)suggestionsWithOptions:(MSSuggesterRequestOptions *)a3 completion:(id)a4;
@end

@implementation MSRankedSuggester

- (NSString)requestIdentifier
{
  sub_22CA05598();
  v2 = sub_22CA20E10();

  return v2;
}

- (void)setRequestIdentifier:(id)a3
{
  v4 = sub_22CA20E20();
  v6 = v5;
  v7 = self;
  sub_22CA05640(v4, v6);
}

+ (id)defaultRequest
{
  swift_getObjCClassMetadata();
  v2 = sub_22CA056D4();

  return v2;
}

- (NSString)description
{
  v2 = self;
  MSRankedSuggester.description.getter();

  v3 = sub_22CA20E10();

  return v3;
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  MSRankedSuggester.copy(with:)(v6);

  sub_22C9D05CC(v6, v6[3]);
  v4 = sub_22CA21350();
  sub_22C9D04CC(v6);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  MSRankedSuggester.encode(with:)(v4);
}

- (void)suggestionsWithOptions:(MSSuggesterRequestOptions *)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_22CA0EBDC(&unk_22CA24868, v7);
}

+ (id)availablebundleIDsForMediaSuggestions
{
  static MSRankedSuggester.availablebundleIDsForMediaSuggestions()();
  v2 = sub_22CA20EB0();

  return v2;
}

+ (void)availableBundleIDsWithCompletion:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  swift_getObjCClassMetadata();
  static MSRankedSuggester.availableBundleIDs(completion:)(sub_22CA0CDB8, v4);
}

- (void)suggestionsWith:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_22CA0B1CC(v8, sub_22CA0CC30, v7);
}

- (id)candidatesForRequestOptions:(id)a3
{
  v4 = a3;
  v5 = self;
  MSRankedSuggester.candidates(for:)(v4);

  type metadata accessor for MSSuggestion(0);
  v6 = sub_22CA20EB0();

  return v6;
}

- (id)candidatesForRequestOptions:(id)a3 from:(id)a4 to:(id)a5
{
  v7 = sub_22CA209F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  sub_22CA209D0();
  sub_22CA209D0();
  v15 = a3;
  v16 = self;
  MSRankedSuggester.candidates(for:from:to:)(v15, v14, v12);

  v17 = *(v8 + 8);
  v17(v12, v7);
  v17(v14, v7);
  type metadata accessor for MSSuggestion(0);
  v18 = sub_22CA20EB0();

  return v18;
}

@end