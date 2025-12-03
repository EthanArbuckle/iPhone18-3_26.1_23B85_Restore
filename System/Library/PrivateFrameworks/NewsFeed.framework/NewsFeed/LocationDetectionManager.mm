@interface LocationDetectionManager
- (BOOL)authorized;
- (CLLocation)mostFrequentLocation;
- (id)observableMostFrequentLocation;
- (void)isAuthorizedWithCompletionHandler:(id)handler;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)setMostFrequentLocation:(id)location;
- (void)setObservableMostFrequentLocation:(id)location;
@end

@implementation LocationDetectionManager

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  selfCopy = self;
  _s8NewsFeed24LocationDetectionManagerC08locationE22DidChangeAuthorizationyySo010CLLocationE0CF_0();
}

- (id)observableMostFrequentLocation
{
  v3 = OBJC_IVAR____TtC8NewsFeed24LocationDetectionManager_observableMostFrequentLocation;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (CLLocation)mostFrequentLocation
{
  selfCopy = self;

  sub_1D725B96C();

  return v4;
}

- (void)setObservableMostFrequentLocation:(id)location
{
  v5 = OBJC_IVAR____TtC8NewsFeed24LocationDetectionManager_observableMostFrequentLocation;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = location;
  locationCopy = location;
}

- (void)setMostFrequentLocation:(id)location
{
  locationCopy = location;
  selfCopy = self;

  sub_1D725B97C();
}

- (BOOL)authorized
{
  v2 = qword_1EDF29DF0;
  selfCopy = self;
  if (v2 != -1)
  {
    swift_once();
  }

  sub_1D7262EBC();
  sub_1D725C30C();
  _authorizationStatus = [*(&selfCopy->super.isa + OBJC_IVAR____TtC8NewsFeed24LocationDetectionManager_locationManager) _authorizationStatus];

  return _authorizationStatus - 3 < 2;
}

- (void)isAuthorizedWithCompletionHandler:(id)handler
{
  sub_1D5B5E61C(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1D726294C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1D731C228;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1D731C230;
  v13[5] = v12;
  selfCopy = self;
  sub_1D6DCF07C(0, 0, v8, &unk_1D731C238, v13);
}

@end