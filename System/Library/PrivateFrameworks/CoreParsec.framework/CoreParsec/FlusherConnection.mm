@interface FlusherConnection
- (void)deleteSafariFeedbackEagerly;
- (void)flush:(id)a3;
- (void)flushCustomFeedbackType:(id)a3 completion:(id)a4;
- (void)flushSessionEagerly:(id)a3 completion:(id)a4;
- (void)teeCohortsFeedbackWithCompletion:(id)a3;
- (void)teeUploadsWithCompletion:(id)a3;
- (void)updateWhitelists:(unint64_t)a3 completion:(id)a4;
@end

@implementation FlusherConnection

- (void)updateWhitelists:(unint64_t)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  *(swift_allocObject() + 16) = v5;
  v6 = self;
  sub_100004DC0();
}

- (void)flush:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_10012CD74(sub_10012F2C8, v5);
}

- (void)flushCustomFeedbackType:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(swift_allocObject() + 16) = v5;
  v6 = self;
  sub_10012D854();
}

- (void)flushSessionEagerly:(id)a3 completion:(id)a4
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  *(swift_allocObject() + 16) = v11;
  v12 = self;
  sub_10012DE08();

  (*(v7 + 8))(v10, v6);
}

- (void)deleteSafariFeedbackEagerly
{
  v2 = self;
  sub_10012E4EC();
}

- (void)teeUploadsWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  *(swift_allocObject() + 16) = v4;
  v5 = self;
  sub_10012EAA4();
}

- (void)teeCohortsFeedbackWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  *(swift_allocObject() + 16) = v4;
  v5 = self;
  sub_10012EAA4();
}

@end