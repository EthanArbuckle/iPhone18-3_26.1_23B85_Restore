@interface MapsSuggestionsFakeFindMyConnector
- (CLLocation)cachedLocation;
- (CLLocation)refreshedLocation;
- (NSArray)friends;
- (_TtC15MapsSuggestions34MapsSuggestionsFakeFindMyConnector)init;
- (void)expireCachedLocation;
- (void)latestLocationFor:(NSString *)a3 completionHandler:(id)a4;
- (void)listOfFriendsWithCompletionHandler:(id)a3;
- (void)locationFor:(NSString *)a3 completionHandler:(id)a4;
- (void)nilCachedLocation;
- (void)setCachedLocation:(double)a3 :(double)a4;
- (void)setFriends:(id)a3;
- (void)setTestFriends;
@end

@implementation MapsSuggestionsFakeFindMyConnector

- (NSArray)friends
{
  swift_beginAccess();

  v2 = sub_1C529D7CC();

  return v2;
}

- (void)setFriends:(id)a3
{
  v4 = sub_1C529D7DC();
  v5 = OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsFakeFindMyConnector_friends;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (CLLocation)cachedLocation
{
  v3 = OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsFakeFindMyConnector_cachedLocation;
  swift_beginAccess();
  return *(self + v3);
}

- (CLLocation)refreshedLocation
{
  v3 = OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsFakeFindMyConnector_refreshedLocation;
  swift_beginAccess();
  return *(self + v3);
}

- (_TtC15MapsSuggestions34MapsSuggestionsFakeFindMyConnector)init
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsFakeFindMyConnector_uniqueName);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsFakeFindMyConnector_cachedLocation;
  *(self + OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsFakeFindMyConnector_cachedLocation) = 0;
  v6 = OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsFakeFindMyConnector_refreshedLocation;
  *(self + OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsFakeFindMyConnector_refreshedLocation) = 0;
  *(self + OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsFakeFindMyConnector_friends) = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  *(self + v5) = 0;
  swift_beginAccess();
  *(self + v6) = 0;
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(MapsSuggestionsFakeFindMyConnector *)&v8 init];
}

- (void)nilCachedLocation
{
  v3 = OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsFakeFindMyConnector_cachedLocation;
  swift_beginAccess();
  v4 = *(self + v3);
  *(self + v3) = 0;
}

- (void)setCachedLocation:(double)a3 :(double)a4
{
  v7 = sub_1C529D3AC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = self;
  sub_1C529D38C();
  v12 = objc_allocWithZone(MEMORY[0x1E6985C40]);
  v13 = sub_1C529D31C();
  v14 = [v12 initWithCoordinate:v13 altitude:a3 horizontalAccuracy:a4 verticalAccuracy:0.0 timestamp:{0.0, 0.0}];

  (*(v8 + 8))(v10, v7);
  v15 = OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsFakeFindMyConnector_cachedLocation;
  swift_beginAccess();
  v16 = *(v11 + v15);
  *(v11 + v15) = v14;
}

- (void)expireCachedLocation
{
  v3 = sub_1C529D3AC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = self;
  sub_1C529D38C();
  sub_1C529D30C();
  v11 = *(v4 + 8);
  v11(v7, v3);
  v12 = objc_allocWithZone(MEMORY[0x1E6985C40]);
  v13 = sub_1C529D31C();
  v14 = [v12 initWithCoordinate:v13 altitude:37.323 horizontalAccuracy:-122.0322 verticalAccuracy:0.0 timestamp:{0.0, 0.0}];

  v11(v9, v3);
  v15 = OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsFakeFindMyConnector_cachedLocation;
  swift_beginAccess();
  v16 = *(v10 + v15);
  *(v10 + v15) = v14;
}

- (void)setTestFriends
{
  v3 = OBJC_IVAR____TtC15MapsSuggestions34MapsSuggestionsFakeFindMyConnector_friends;
  swift_beginAccess();
  *(self + v3) = &unk_1F4449EB8;
}

- (void)listOfFriendsWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156340);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1C529D85C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1C52A9508;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1C52A9510;
  v12[5] = v11;
  v13 = self;
  sub_1C5264C18(0, 0, v7, &unk_1C52A9518, v12);
}

- (void)locationFor:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156340);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1C529D85C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1C52A94E8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1C52A94F0;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_1C5264C18(0, 0, v9, &unk_1C52A94F8, v14);
}

- (void)latestLocationFor:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC156340);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1C529D85C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1C52A94A0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1C52A94B0;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_1C5264C18(0, 0, v9, &unk_1C52A8F50, v14);
}

@end