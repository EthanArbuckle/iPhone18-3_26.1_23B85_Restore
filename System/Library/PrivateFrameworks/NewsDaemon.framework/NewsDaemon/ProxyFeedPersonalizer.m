@interface ProxyFeedPersonalizer
- (_TtC10NewsDaemon21ProxyFeedPersonalizer)init;
- (double)decayedPublisherDiversificationPenalty;
- (id)limitItemsByFlowRate:(id)a3 timeInterval:(double)a4 publisherCount:(unint64_t)a5;
- (id)limitItemsByMinimumItemQuality:(id)a3;
- (id)rankTagIDsDescending:(id)a3;
- (id)scoresForTagIDs:(id)a3;
- (id)sortItems:(id)a3 options:(int64_t)a4 configurationSet:(int64_t)a5;
- (void)prepareForUseWithCompletionHandler:(id)a3;
@end

@implementation ProxyFeedPersonalizer

- (id)sortItems:(id)a3 options:(int64_t)a4 configurationSet:(int64_t)a5
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBE0940, &qword_25BE4E430);
  v7 = sub_25BE4BB2C();
  v8 = self;
  v9 = sub_25BE37948(v7, a5);

  return v9;
}

- (id)limitItemsByMinimumItemQuality:(id)a3
{
  result = sub_25BE4BD5C();
  __break(1u);
  return result;
}

- (id)limitItemsByFlowRate:(id)a3 timeInterval:(double)a4 publisherCount:(unint64_t)a5
{
  result = sub_25BE4BD5C();
  __break(1u);
  return result;
}

- (void)prepareForUseWithCompletionHandler:(id)a3
{
  v3 = _Block_copy(a3);
  v3[2]();

  _Block_release(v3);
}

- (double)decayedPublisherDiversificationPenalty
{
  sub_25BE4BD5C();
  __break(1u);
  return result;
}

- (id)rankTagIDsDescending:(id)a3
{
  result = sub_25BE4BD5C();
  __break(1u);
  return result;
}

- (id)scoresForTagIDs:(id)a3
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