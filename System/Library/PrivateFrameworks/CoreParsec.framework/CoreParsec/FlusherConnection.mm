@interface FlusherConnection
- (void)deleteSafariFeedbackEagerly;
- (void)flush:(id)flush;
- (void)flushCustomFeedbackType:(id)type completion:(id)completion;
- (void)flushSessionEagerly:(id)eagerly completion:(id)completion;
- (void)teeCohortsFeedbackWithCompletion:(id)completion;
- (void)teeUploadsWithCompletion:(id)completion;
- (void)updateWhitelists:(unint64_t)whitelists completion:(id)completion;
@end

@implementation FlusherConnection

- (void)updateWhitelists:(unint64_t)whitelists completion:(id)completion
{
  v5 = _Block_copy(completion);
  *(swift_allocObject() + 16) = v5;
  selfCopy = self;
  sub_100004DC0();
}

- (void)flush:(id)flush
{
  v4 = _Block_copy(flush);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_10012CD74(sub_10012F2C8, v5);
}

- (void)flushCustomFeedbackType:(id)type completion:(id)completion
{
  v5 = _Block_copy(completion);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(swift_allocObject() + 16) = v5;
  selfCopy = self;
  sub_10012D854();
}

- (void)flushSessionEagerly:(id)eagerly completion:(id)completion
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(completion);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  *(swift_allocObject() + 16) = v11;
  selfCopy = self;
  sub_10012DE08();

  (*(v7 + 8))(v10, v6);
}

- (void)deleteSafariFeedbackEagerly
{
  selfCopy = self;
  sub_10012E4EC();
}

- (void)teeUploadsWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  *(swift_allocObject() + 16) = v4;
  selfCopy = self;
  sub_10012EAA4();
}

- (void)teeCohortsFeedbackWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  *(swift_allocObject() + 16) = v4;
  selfCopy = self;
  sub_10012EAA4();
}

@end