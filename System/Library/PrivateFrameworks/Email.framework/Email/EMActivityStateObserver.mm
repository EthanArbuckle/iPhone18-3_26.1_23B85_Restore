@interface EMActivityStateObserver
- (EMActivityStateObserver)init;
- (void)activityRegistry:(id)a3 startedActivity:(id)a4;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation EMActivityStateObserver

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR___EMActivityStateObserver_state);
  v5 = self;
  os_unfair_lock_lock(v4);
  if (*&v4[2]._os_unfair_lock_opaque >= 2uLL)
  {
    sub_1C67259CC();
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v4);
    v6.receiver = v5;
    v6.super_class = ObjectType;
    [(EMActivityStateObserver *)&v6 dealloc];
  }
}

- (void)activityRegistry:(id)a3 startedActivity:(id)a4
{
  v5 = a4;
  v6 = self;
  ActivityStateObserver.registryDidStartActivity(_:)(v5);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a3)
  {
    v10 = sub_1C672588C();
    v12 = v11;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v18, 0, sizeof(v18));
    v16 = a5;
    v17 = self;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  v12 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v13 = a5;
  v14 = self;
  sub_1C672596C();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_1C6719B40(&qword_1EC1CABB0, type metadata accessor for NSKeyValueChangeKey);
  v15 = sub_1C672581C();

LABEL_8:
  ActivityStateObserver.observeValue(forKeyPath:of:change:context:)(v10, v12, v18, v15, a6);

  sub_1C6719B88(v18, &qword_1EC1CD248, &qword_1C674ED30);
}

- (EMActivityStateObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end