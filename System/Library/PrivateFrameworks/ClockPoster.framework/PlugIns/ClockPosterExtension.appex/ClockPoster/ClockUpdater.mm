@interface ClockUpdater
- (void)dealloc;
- (void)updateConfiguration:(id)configuration completion:(id)completion;
- (void)updateConfiguration:(id)configuration withSessionInfo:(id)info completion:(id)completion;
- (void)updateDescriptors:(id)descriptors withSessionInfo:(id)info completion:(id)completion;
@end

@implementation ClockUpdater

- (void)dealloc
{
  v3 = sub_100008A28();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008A68();
  selfCopy = self;
  sub_1000089F8();
  (*(v4 + 104))(v7, enum case for ClockLogger.Role.update(_:), v3);
  sub_100008A48();

  (*(v4 + 8))(v7, v3);
  v9 = type metadata accessor for ClockUpdater();
  v10.receiver = selfCopy;
  v10.super_class = v9;
  [(ClockUpdater *)&v10 dealloc];
}

- (void)updateDescriptors:(id)descriptors withSessionInfo:(id)info completion:(id)completion
{
  v7 = _Block_copy(completion);
  sub_100001B94();
  v8 = sub_100008C48();
  _Block_copy(v7);
  infoCopy = info;
  selfCopy = self;
  sub_100002EDC(v8, selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)updateConfiguration:(id)configuration completion:(id)completion
{
  v5 = _Block_copy(completion);
  v5[2](v5, configuration, 0);

  _Block_release(v5);
}

- (void)updateConfiguration:(id)configuration withSessionInfo:(id)info completion:(id)completion
{
  v6 = _Block_copy(completion);
  v6[2](v6, configuration, 0);

  _Block_release(v6);
}

@end