@interface IDSGLLinkEngine
- (BOOL)allowOngoingTasks;
- (BOOL)isH2Enabled;
- (BOOL)isLinkConnecting:(id)connecting;
- (BOOL)isQUICAndH2Enabled;
- (BOOL)shouldFallbackToTCPFirst;
- (BOOL)shouldPreferIPv6;
- (IDSGLLinkEngine)init;
- (IDSGLLinkEngine)initWithLinkConnector:(id)connector allocateType:(int64_t)type isInitiator:(BOOL)initiator useLinkSelection:(BOOL)selection recordExpensiveQualityMetrics:(BOOL)metrics linkSelectionStrategy:(id)strategy serverBag:(id)bag timeFn:(id)self0;
- (IDSLinkSelectorPrimarySecondary)idsPrimarySecondaryLinkSelector;
- (IDSRelayLinkProvider)relayLinkProvider;
- (NSString)idsSessionID;
- (NSString)qrSessionID;
- (NSString)tag;
- (id)addLinkForCandidatePair:(id)pair;
- (id)compactLinkQualityEvents;
- (id)packetQualityHandlerForLinkWithUniqueName:(id)name;
- (int64_t)allocateType;
- (int64_t)relayConnectionBehavior;
- (void)addRemotePushToken:(id)token;
- (void)addTwoWayAllocation:(id)allocation localAffinity:(int)affinity remoteAffinity:(int)remoteAffinity resolvedCandidates:(id)candidates;
- (void)didReceiveStatsTestPacketWithPayload:(NSData *)payload linkName:(NSString *)name completionHandler:(id)handler;
- (void)importQualityDelta:(id)delta source:(id)source;
- (void)invalidate;
- (void)linkDidFail:(id)fail errorCode:(int64_t)code isRecoverable:(BOOL)recoverable shouldReconnect:(BOOL)reconnect;
- (void)registerEngine;
- (void)scheduleUpdate;
- (void)setAllowOngoingTasks:(BOOL)tasks;
- (void)setAvailableInterfaceTypesWithLocalTypes:(int)types remoteTypes:(int)remoteTypes;
- (void)setIDSLinkID:(char)d forLinkWithUniqueID:(id)iD;
- (void)setIdsSessionID:(id)d;
- (void)setQrSessionID:(id)d;
- (void)setRelayConnectionBehavior:(int64_t)behavior;
- (void)setRemoteRATForLink:(id)link rat:(unsigned int)rat;
- (void)setShouldFallbackToTCPFirst:(BOOL)first;
- (void)setShouldPreferIPv6:(BOOL)pv6;
- (void)setTag:(id)tag;
- (void)setTestableLink:(id)link forLinkWithUniqueID:(id)d;
- (void)unregisterEngine;
@end

@implementation IDSGLLinkEngine

- (IDSRelayLinkProvider)relayLinkProvider
{
  v2 = *(&self->super.isa + OBJC_IVAR___IDSGLLinkEngine_linkEngine);
  if (v2)
  {
    return *(v2 + 32);
  }

  __break(1u);
  return self;
}

- (int64_t)relayConnectionBehavior
{
  selfCopy = self;
  sub_1A7DE2884();
  v4 = v3;

  return v4;
}

- (void)setRelayConnectionBehavior:(int64_t)behavior
{
  if (*(&self->super.isa + OBJC_IVAR___IDSGLLinkEngine_linkEngine))
  {
    selfCopy = self;

    sub_1A7DE150C(behavior);
  }

  else
  {
    __break(1u);
  }
}

- (BOOL)allowOngoingTasks
{
  v2 = *(&self->super.isa + OBJC_IVAR___IDSGLLinkEngine_linkEngine);
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
  v3 = *(&self->super.isa + OBJC_IVAR___IDSGLLinkEngine_linkEngine);
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

- (BOOL)isQUICAndH2Enabled
{
  v2 = *(&self->super.isa + OBJC_IVAR___IDSGLLinkEngine_linkEngine);
  if (v2)
  {
    selfCopy = self;

    os_unfair_lock_lock((v2 + 72));
    v4 = *(v2 + 80);
    os_unfair_lock_unlock((v2 + 72));

    LOBYTE(self) = v4;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (BOOL)isH2Enabled
{
  v2 = *(&self->super.isa + OBJC_IVAR___IDSGLLinkEngine_linkEngine);
  if (v2)
  {
    selfCopy = self;

    os_unfair_lock_lock((v2 + 72));
    v4 = *(v2 + 81);
    os_unfair_lock_unlock((v2 + 72));

    LOBYTE(self) = v4;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (NSString)tag
{
  v2 = *(self + OBJC_IVAR___IDSGLLinkEngine_linkEngine);
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
  v6 = *(&self->super.isa + OBJC_IVAR___IDSGLLinkEngine_linkEngine);
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

- (NSString)idsSessionID
{
  v2 = *(self + OBJC_IVAR___IDSGLLinkEngine_linkEngine);
  if (v2)
  {
    selfCopy = self;

    os_unfair_lock_lock((v2 + 72));
    v4 = *(v2 + 96);

    os_unfair_lock_unlock((v2 + 72));

    if (v4)
    {
      v5 = sub_1A7E22260();
    }

    else
    {
      v5 = 0;
    }

    return v5;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (void)setIdsSessionID:(id)d
{
  if (d)
  {
    v4 = sub_1A7E22290();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = *(&self->super.isa + OBJC_IVAR___IDSGLLinkEngine_linkEngine);
  if (v7)
  {
    selfCopy = self;

    os_unfair_lock_lock((v7 + 72));
    *(v7 + 88) = v4;
    *(v7 + 96) = v6;

    os_unfair_lock_unlock((v7 + 72));
  }

  else
  {
    __break(1u);
  }
}

- (NSString)qrSessionID
{
  v2 = *(self + OBJC_IVAR___IDSGLLinkEngine_linkEngine);
  if (v2)
  {
    selfCopy = self;

    os_unfair_lock_lock((v2 + 72));
    v4 = *(v2 + 112);

    os_unfair_lock_unlock((v2 + 72));

    if (v4)
    {
      v5 = sub_1A7E22260();
    }

    else
    {
      v5 = 0;
    }

    return v5;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (void)setQrSessionID:(id)d
{
  if (d)
  {
    v4 = sub_1A7E22290();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = *(&self->super.isa + OBJC_IVAR___IDSGLLinkEngine_linkEngine);
  if (v7)
  {
    selfCopy = self;

    os_unfair_lock_lock((v7 + 72));
    *(v7 + 104) = v4;
    *(v7 + 112) = v6;

    os_unfair_lock_unlock((v7 + 72));
  }

  else
  {
    __break(1u);
  }
}

- (int64_t)allocateType
{
  v2 = *(self + OBJC_IVAR___IDSGLLinkEngine_linkEngine);
  if (v2)
  {
    return *(v2 + 24);
  }

  __break(1u);
  return self;
}

- (BOOL)shouldPreferIPv6
{
  v2 = *(&self->super.isa + OBJC_IVAR___IDSGLLinkEngine_linkEngine);
  if (v2)
  {
    v3 = *(v2 + 56);
    selfCopy = self;

    os_unfair_lock_lock((v3 + 208));
    v5 = *(v3 + 213);
    os_unfair_lock_unlock((v3 + 208));

    LOBYTE(self) = v5;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (void)setShouldPreferIPv6:(BOOL)pv6
{
  v3 = *(&self->super.isa + OBJC_IVAR___IDSGLLinkEngine_linkEngine);
  if (v3)
  {
    v5 = *(v3 + 56);
    selfCopy = self;

    os_unfair_lock_lock((v5 + 208));
    *(v5 + 213) = pv6;
    os_unfair_lock_unlock((v5 + 208));
  }

  else
  {
    __break(1u);
  }
}

- (BOOL)shouldFallbackToTCPFirst
{
  v2 = *(&self->super.isa + OBJC_IVAR___IDSGLLinkEngine_linkEngine);
  if (v2)
  {
    v3 = *(v2 + 56);
    selfCopy = self;

    os_unfair_lock_lock((v3 + 208));
    v5 = *(v3 + 212);
    os_unfair_lock_unlock((v3 + 208));

    LOBYTE(self) = v5;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (void)setShouldFallbackToTCPFirst:(BOOL)first
{
  v3 = *(&self->super.isa + OBJC_IVAR___IDSGLLinkEngine_linkEngine);
  if (v3)
  {
    v5 = *(v3 + 56);
    selfCopy = self;

    os_unfair_lock_lock((v5 + 208));
    *(v5 + 212) = first;
    os_unfair_lock_unlock((v5 + 208));
  }

  else
  {
    __break(1u);
  }
}

- (IDSLinkSelectorPrimarySecondary)idsPrimarySecondaryLinkSelector
{
  if (*(&self->super.isa + OBJC_IVAR___IDSGLLinkEngine_linkEngine))
  {
    selfCopy = self;

    v4 = j___s13IDSFoundation10LinkEngineC03idsB24SelectorPrimarySecondarySo07IDSLinkefG0CSgvg(v3);

    return v4;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (IDSGLLinkEngine)initWithLinkConnector:(id)connector allocateType:(int64_t)type isInitiator:(BOOL)initiator useLinkSelection:(BOOL)selection recordExpensiveQualityMetrics:(BOOL)metrics linkSelectionStrategy:(id)strategy serverBag:(id)bag timeFn:(id)self0
{
  v16 = _Block_copy(fn);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  swift_unknownObjectRetain();
  strategyCopy = strategy;
  bagCopy = bag;
  v20 = sub_1A7DE8114(connector, type, initiator, selection, metrics, strategy, bagCopy, sub_1A7DE8758, v17);
  swift_unknownObjectRelease();

  return v20;
}

- (void)scheduleUpdate
{
  v2 = *(&self->super.isa + OBJC_IVAR___IDSGLLinkEngine_linkEngine);
  if (v2)
  {
    swift_retain_n();
    selfCopy = self;
    idsGLRunInTaskWithInferredTaskPriority(_:)(&unk_1A7E54028, v2);
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
    if (*(&self->super.isa + OBJC_IVAR___IDSGLLinkEngine_linkEngine))
    {
      v12 = v10;
      v13 = v11;
      selfCopy = self;

      sub_1A7DE07A4(v12, v13, code, recoverableCopy, reconnect, &unk_1A7E54010);
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
    if (!*(&self->super.isa + OBJC_IVAR___IDSGLLinkEngine_linkEngine))
    {
      __break(1u);
      return v4;
    }

    v6 = v4;
    v7 = v5;
    selfCopy = self;

    v9 = sub_1A7DE0B9C(v6, v7);
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v4) = v9 & 1;
  return v4;
}

- (void)addTwoWayAllocation:(id)allocation localAffinity:(int)affinity remoteAffinity:(int)remoteAffinity resolvedCandidates:(id)candidates
{
  remoteAffinityCopy = remoteAffinity;
  affinityCopy = affinity;
  v9 = sub_1A7E22290();
  v11 = v10;
  sub_1A7CC79C8(0, &qword_1EB2B28F0);
  v12 = sub_1A7E22530();
  selfCopy = self;
  sub_1A7DE36B8(v9, v11, affinityCopy, remoteAffinityCopy, v12);
}

- (void)addRemotePushToken:(id)token
{
  tokenCopy = token;
  selfCopy = self;
  sub_1A7DE3C8C(tokenCopy);
}

- (void)invalidate
{
  v2 = *(&self->super.isa + OBJC_IVAR___IDSGLLinkEngine_linkEngine);
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

- (void)setAvailableInterfaceTypesWithLocalTypes:(int)types remoteTypes:(int)remoteTypes
{
  if (*(&self->super.isa + OBJC_IVAR___IDSGLLinkEngine_linkEngine))
  {
    remoteTypesCopy = remoteTypes;
    typesCopy = types;
    v6 = (types >> 1) & 1;
    v7 = (remoteTypes >> 1) & 1;
    selfCopy = self;

    sub_1A7DE19FC(typesCopy & 1, v6, remoteTypesCopy & 1, v7);
  }

  else
  {
    __break(1u);
  }
}

- (void)setRemoteRATForLink:(id)link rat:(unsigned int)rat
{
  v6 = sub_1A7E22290();
  if (*(&self->super.isa + OBJC_IVAR___IDSGLLinkEngine_linkEngine))
  {
    v8 = v6;
    v9 = v7;
    selfCopy = self;

    sub_1A7DDFE28(v8, v9, rat);
  }

  else
  {
    __break(1u);
  }
}

- (void)importQualityDelta:(id)delta source:(id)source
{
  v6 = sub_1A7E22290();
  if (*(&self->super.isa + OBJC_IVAR___IDSGLLinkEngine_linkEngine))
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
      sub_1A7DE0D40(v11, v12, v8, v9);

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
  sub_1A7DE4058(linkCopy, v6, v8);
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
  v16[4] = &unk_1A7E53FC0;
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
  sub_1A7DE46E8();

  sub_1A7CC7FFC(&unk_1EB2B66C0);
  v3 = sub_1A7E22520();

  return v3;
}

- (id)addLinkForCandidatePair:(id)pair
{
  if (*(self + OBJC_IVAR___IDSGLLinkEngine_linkEngine))
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

- (void)registerEngine
{
  selfCopy = self;
  sub_1A7DE48A4();
}

- (void)unregisterEngine
{
  selfCopy = self;
  sub_1A7DE49E4();
}

- (id)packetQualityHandlerForLinkWithUniqueName:(id)name
{
  v4 = sub_1A7E22290();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1A7DE4B50(v4, v6);

  return v8;
}

- (void)setIDSLinkID:(char)d forLinkWithUniqueID:(id)iD
{
  v6 = sub_1A7E22290();
  v8 = v7;
  selfCopy = self;
  sub_1A7DE4CB8(d, v6, v8);
}

- (IDSGLLinkEngine)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end