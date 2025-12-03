@interface ProxyFeedPersonalizer
- (_TtC10NewsDaemon21ProxyFeedPersonalizer)init;
- (double)decayedPublisherDiversificationPenalty;
- (id)limitItemsByFlowRate:(id)rate timeInterval:(double)interval publisherCount:(unint64_t)count;
- (id)limitItemsByMinimumItemQuality:(id)quality;
- (id)rankTagIDsDescending:(id)descending;
- (id)scoresForTagIDs:(id)ds;
- (id)sortItems:(id)items options:(int64_t)options configurationSet:(int64_t)set;
- (void)prepareForUseWithCompletionHandler:(id)handler;
@end

@implementation ProxyFeedPersonalizer

- (id)sortItems:(id)items options:(int64_t)options configurationSet:(int64_t)set
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBE0940, &qword_25BE4E430);
  v7 = sub_25BE4BB2C();
  selfCopy = self;
  v9 = sub_25BE37948(v7, set);

  return v9;
}

- (id)limitItemsByMinimumItemQuality:(id)quality
{
  result = sub_25BE4BD5C();
  __break(1u);
  return result;
}

- (id)limitItemsByFlowRate:(id)rate timeInterval:(double)interval publisherCount:(unint64_t)count
{
  result = sub_25BE4BD5C();
  __break(1u);
  return result;
}

- (void)prepareForUseWithCompletionHandler:(id)handler
{
  v3 = _Block_copy(handler);
  v3[2]();

  _Block_release(v3);
}

- (double)decayedPublisherDiversificationPenalty
{
  sub_25BE4BD5C();
  __break(1u);
  return result;
}

- (id)rankTagIDsDescending:(id)descending
{
  result = sub_25BE4BD5C();
  __break(1u);
  return result;
}

- (id)scoresForTagIDs:(id)ds
{
  result = sub_25BE4BD5C();
  __break(1u);
  return result;
}

- (_TtC10NewsDaemon21ProxyFeedPersonalizer)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC10NewsDaemon21ProxyFeedPersonalizer_proxyConnection;
  if (qword_280C8CB98 != -1)
  {
    v8 = ObjectType;
    swift_once();
    ObjectType = v8;
  }

  v5 = qword_280C8C9C0;
  *(&self->super.isa + v4) = qword_280C8C9C0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = v5;
  return [(ProxyFeedPersonalizer *)&v9 init];
}

@end