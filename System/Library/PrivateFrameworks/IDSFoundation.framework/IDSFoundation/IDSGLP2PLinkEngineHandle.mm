@interface IDSGLP2PLinkEngineHandle
- (BOOL)allowOngoingTasks;
- (BOOL)isLinkConnecting:(id)connecting;
- (IDSGLP2PLinkEngineHandle)init;
- (NSString)tag;
- (id)addLinkForCandidatePair:(id)pair;
- (id)compactLinkQualityEvents;
- (id)initUsingLinkSelection:(BOOL)selection recordingExpensiveQualityMetrics:(BOOL)metrics serverBag:(id)bag timeFn:(id)fn;
- (void)didReceiveStatsTestPacketWithPayload:(NSData *)payload linkName:(NSString *)name completionHandler:(id)handler;
- (void)importQualityDelta:(id)delta source:(id)source;
- (void)invalidate;
- (void)linkDidFail:(id)fail errorCode:(int64_t)code isRecoverable:(BOOL)recoverable shouldReconnect:(BOOL)reconnect;
- (void)registerEngine;
- (void)removeAllLinks;
- (void)removeLinkWithUniqueName:(id)name;
- (void)scheduleUpdate;
- (void)setAllowOngoingTasks:(BOOL)tasks;
- (void)setIDSLinkID:(char)d forLinkWithUniqueID:(id)iD;
- (void)setIdsPrimarySecondaryLinkSelector:(id)selector;
- (void)setRemoteRATForLink:(id)link rat:(unsigned int)rat;
- (void)setTag:(id)tag;
- (void)setTestableLink:(id)link forLinkWithUniqueID:(id)d;
- (void)unregisterEngine;
@end

@implementation IDSGLP2PLinkEngineHandle

- (NSString)tag
{
  v2 = *(self + OBJC_IVAR___IDSGLP2PLinkEngineHandle_engine);
  if (v2)
  {
    v3 = *(v2 + 16);
    selfCopy = self;

    os_unfair_lock_lock(v3 + 30);

    os_unfair_lock_unlock(v3 + 30);

    v5 = sub_1A7E22260();

    return v5;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (void)setTag:(id)tag
{
  v4 = sub_1A7E22290();
  v6 = *(&self->super.isa + OBJC_IVAR___IDSGLP2PLinkEngineHandle_engine);
  if (v6)
  {
    v7 = v4;
    v8 = v5;
    v9 = *(v6 + 16);
    selfCopy = self;

    os_unfair_lock_lock((v9 + 120));

    *(v9 + 128) = v7;
    *(v9 + 136) = v8;
    os_unfair_lock_unlock((v9 + 120));
  }

  else
  {
    __break(1u);
  }
}

- (BOOL)allowOngoingTasks
{
  v2 = *(&self->super.isa + OBJC_IVAR___IDSGLP2PLinkEngineHandle_engine);
  if (v2)
  {
    v3 = *(v2 + 16);
    selfCopy = self;

    os_unfair_lock_lock((v3 + 32));
    v5 = *(v3 + 36);
    os_unfair_lock_unlock((v3 + 32));

    LOBYTE(self) = v5;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (void)setAllowOngoingTasks:(BOOL)tasks
{
  v3 = *(&self->super.isa + OBJC_IVAR___IDSGLP2PLinkEngineHandle_engine);
  if (v3)
  {
    v5 = *(v3 + 16);
    selfCopy = self;

    os_unfair_lock_lock((v5 + 32));
    *(v5 + 36) = tasks;
    os_unfair_lock_unlock((v5 + 32));
    LinkEngine.scheduleUpdate()();
  }

  else
  {
    __break(1u);
  }
}

- (id)initUsingLinkSelection:(BOOL)selection recordingExpensiveQualityMetrics:(BOOL)metrics serverBag:(id)bag timeFn:(id)fn
{
  v9 = _Block_copy(fn);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  return sub_1A7D59110(selection, metrics, bag, sub_1A7D53CC8, v10);
}

- (id)addLinkForCandidatePair:(id)pair
{
  if (*(self + OBJC_IVAR___IDSGLP2PLinkEngineHandle_engine))
  {
    selfCopy = self;
    pairCopy = pair;
    v5 = selfCopy;

    sub_1A7CE5188(pairCopy);
    v7 = v6;

    if (v7)
    {
      v8 = sub_1A7E22260();
    }

    else
    {
      v8 = 0;
    }

    return v8;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (void)removeLinkWithUniqueName:(id)name
{
  v4 = sub_1A7E22290();
  if (*(&self->super.isa + OBJC_IVAR___IDSGLP2PLinkEngineHandle_engine))
  {
    v6 = v4;
    v7 = v5;
    selfCopy = self;

    v9._countAndFlagsBits = v6;
    v9._object = v7;
    LinkEngine.remove(linkWithUniqueName:)(v9);
  }

  else
  {
    __break(1u);
  }
}

- (void)removeAllLinks
{
  if (*(&self->super.isa + OBJC_IVAR___IDSGLP2PLinkEngineHandle_engine))
  {
    selfCopy = self;

    LinkEngine.removeAllLinks()();
  }

  else
  {
    __break(1u);
  }
}

- (void)invalidate
{
  v2 = *(&self->super.isa + OBJC_IVAR___IDSGLP2PLinkEngineHandle_engine);
  if (v2)
  {
    v3 = *(v2 + 16);
    selfCopy = self;

    os_unfair_lock_lock((v3 + 32));
    *(v3 + 36) = 0;
    os_unfair_lock_unlock((v3 + 32));
    LinkEngine.scheduleUpdate()();
    LinkEngine.removeAllLinks()();
  }

  else
  {
    __break(1u);
  }
}

- (void)setRemoteRATForLink:(id)link rat:(unsigned int)rat
{
  v4 = *&rat;
  v6 = sub_1A7E22290();
  if (*(&self->super.isa + OBJC_IVAR___IDSGLP2PLinkEngineHandle_engine))
  {
    v8 = v6;
    v9 = v7;
    selfCopy = self;

    sub_1A7DDFE24(v8, v9, v4);
  }

  else
  {
    __break(1u);
  }
}

- (void)scheduleUpdate
{
  v2 = *(&self->super.isa + OBJC_IVAR___IDSGLP2PLinkEngineHandle_engine);
  if (v2)
  {
    swift_retain_n();
    selfCopy = self;
    idsGLRunInTaskWithInferredTaskPriority(_:)(&unk_1A7E54060, v2);
  }

  else
  {
    __break(1u);
  }
}

- (void)linkDidFail:(id)fail errorCode:(int64_t)code isRecoverable:(BOOL)recoverable shouldReconnect:(BOOL)reconnect
{
  if (fail)
  {
    recoverableCopy = recoverable;
    v10 = sub_1A7E22290();
    if (*(&self->super.isa + OBJC_IVAR___IDSGLP2PLinkEngineHandle_engine))
    {
      v12 = v10;
      v13 = v11;
      selfCopy = self;

      sub_1A7DE078C(v12, v13, code, recoverableCopy, reconnect);
    }

    else
    {
      __break(1u);
    }
  }
}

- (BOOL)isLinkConnecting:(id)connecting
{
  if (connecting)
  {
    v4 = sub_1A7E22290();
    if (!*(&self->super.isa + OBJC_IVAR___IDSGLP2PLinkEngineHandle_engine))
    {
      __break(1u);
      return v4;
    }

    v6 = v4;
    v7 = v5;
    selfCopy = self;

    v9 = sub_1A7DE0B98(v6, v7);
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v4) = v9 & 1;
  return v4;
}

- (void)importQualityDelta:(id)delta source:(id)source
{
  v6 = sub_1A7E22290();
  if (*(&self->super.isa + OBJC_IVAR___IDSGLP2PLinkEngineHandle_engine))
  {
    v8 = v6;
    v9 = v7;
    v10 = (delta + OBJC_IVAR___IDSLinksQualityReportDeltaObject_delta);
    swift_beginAccess();
    v11 = *v10;
    if (*v10)
    {
      v12 = v10[1];
      deltaCopy = delta;
      selfCopy = self;

      sub_1A7CD3B24(v11);
      sub_1A7DE0D3C(v11, v12, v8, v9);

      sub_1A7CD3BC0(v11);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

- (void)setTestableLink:(id)link forLinkWithUniqueID:(id)d
{
  v6 = sub_1A7E22290();
  v8 = v7;
  linkCopy = link;
  selfCopy = self;
  sub_1A7D59920(linkCopy, v6, v8);
}

- (void)registerEngine
{
  selfCopy = self;
  sub_1A7D59AAC();
}

- (void)unregisterEngine
{
  selfCopy = self;
  sub_1A7D59BEC();
}

- (void)didReceiveStatsTestPacketWithPayload:(NSData *)payload linkName:(NSString *)name completionHandler:(id)handler
{
  v9 = sub_1A7CC7FFC(&unk_1EB2B61C0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = payload;
  v14[3] = name;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_1A7E226D0();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1A7E4A8C0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1A7E48E60;
  v17[5] = v16;
  payloadCopy = payload;
  nameCopy = name;
  selfCopy = self;
  sub_1A7DE5274(0, 0, v12, &unk_1A7E45700, v17);
}

- (id)compactLinkQualityEvents
{
  selfCopy = self;
  sub_1A7D5A568();

  sub_1A7CC7FFC(&unk_1EB2B66C0);
  v3 = sub_1A7E22520();

  return v3;
}

- (void)setIdsPrimarySecondaryLinkSelector:(id)selector
{
  v4 = *(&self->super.isa + OBJC_IVAR___IDSGLP2PLinkEngineHandle_idsPrimarySecondaryLinkSelector);
  *(&self->super.isa + OBJC_IVAR___IDSGLP2PLinkEngineHandle_idsPrimarySecondaryLinkSelector) = selector;
  selectorCopy = selector;
}

- (void)setIDSLinkID:(char)d forLinkWithUniqueID:(id)iD
{
  dCopy = d;
  v6 = sub_1A7E22290();
  v8 = v7;
  selfCopy = self;
  sub_1A7D5A6C8(dCopy, v6, v8);
}

- (IDSGLP2PLinkEngineHandle)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end