@interface CallCenter
- (void)audioDeviceControllerMutedTalkerDidEnd:(id)end;
- (void)audioDeviceControllerMutedTalkerDidStart:(id)start;
- (void)conversationManager:(id)manager activeRemoteParticipantsChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager activitySessionsChangedForConversation:(id)conversation fromOldConversation:(id)oldConversation;
- (void)conversationManager:(id)manager addedActiveConversation:(id)conversation;
- (void)conversationManager:(id)manager avModeChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager cameraMixedWithScreenDidChangeForConversation:(id)conversation;
- (void)conversationManager:(id)manager collaborationChanged:(id)changed forConversation:(id)conversation collaborationState:(int64_t)state;
- (void)conversationManager:(id)manager conversation:(id)conversation buzzedMember:(id)member;
- (void)conversationManager:(id)manager conversation:(id)conversation launchStateChanged:(unint64_t)changed forActivitySession:(id)session;
- (void)conversationManager:(id)manager conversation:(id)conversation updatedMessagesGroupPhoto:(id)photo;
- (void)conversationManager:(id)manager ignoreLMIRequestsChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager letMeInRequestStateChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager linkChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager linkInvitedMemberHandlesChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager localVideoToggledForConversation:(id)conversation;
- (void)conversationManager:(id)manager migratingFromConversation:(id)conversation toConversation:(id)toConversation;
- (void)conversationManager:(id)manager oneToOneModeChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager otherInvitedHandlesChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager pendingMembersChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager rejectedMembersChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager remoteMembersChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager remoteScreenShareAttributesChanged:(id)changed isLocallySharing:(BOOL)sharing;
- (void)conversationManager:(id)manager removedActiveConversation:(id)conversation;
- (void)conversationManager:(id)manager resolvedAudioVideoModeChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager screenSharingAvailableChanged:(BOOL)changed;
- (void)conversationManager:(id)manager screenSharingRequestsChangedForConversation:(id)conversation fromOldConversation:(id)oldConversation;
- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation;
- (void)mediaController:(id)controller participantMediaPrioritiesChangedForConversation:(id)conversation;
- (void)reactionsController:(id)controller conversation:(id)conversation participant:(id)participant didReact:(id)react;
- (void)reactionsController:(id)controller conversation:(id)conversation participantDidStopReacting:(id)reacting;
- (void)routesChangedForRouteController:(id)controller;
@end

@implementation CallCenter

- (void)audioDeviceControllerMutedTalkerDidStart:(id)start
{
  startCopy = start;
  selfCopy = self;
  CallCenter.audioDeviceControllerMutedTalkerDidStart(_:)();
}

- (void)audioDeviceControllerMutedTalkerDidEnd:(id)end
{
  endCopy = end;
  selfCopy = self;
  CallCenter.audioDeviceControllerMutedTalkerDidEnd(_:)();
}

- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  CallCenter.conversationManager(_:stateChangedFor:)();
}

- (void)conversationManager:(id)manager localVideoToggledForConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  CallCenter.conversationManager(_:localVideoToggledFor:)();
}

- (void)conversationManager:(id)manager remoteMembersChangedForConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  CallCenter.conversationManager(_:remoteMembersChangedFor:)();
}

- (void)conversationManager:(id)manager activeRemoteParticipantsChangedForConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  CallCenter.conversationManager(_:activeRemoteParticipantsChangedFor:)(selfCopy, conversationCopy);
}

- (void)conversationManager:(id)manager pendingMembersChangedForConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  CallCenter.conversationManager(_:pendingMembersChangedFor:)();
}

- (void)conversationManager:(id)manager otherInvitedHandlesChangedForConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  CallCenter.conversationManager(_:otherInvitedHandlesChangedFor:)();
}

- (void)conversationManager:(id)manager oneToOneModeChangedForConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  CallCenter.conversationManager(_:oneToOneModeChangedFor:)();
}

- (void)conversationManager:(id)manager avModeChangedForConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  CallCenter.conversationManager(_:avModeChangedFor:)();
}

- (void)conversationManager:(id)manager resolvedAudioVideoModeChangedForConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  CallCenter.conversationManager(_:resolvedAudioVideoModeChangedFor:)();
}

- (void)conversationManager:(id)manager removedActiveConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  CallCenter.conversationManager(_:removedActiveConversation:)();
}

- (void)conversationManager:(id)manager addedActiveConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  CallCenter.conversationManager(_:addedActiveConversation:)();
}

- (void)conversationManager:(id)manager letMeInRequestStateChangedForConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  CallCenter.conversationManager(_:letMeInRequestStateChangedFor:)();
}

- (void)conversationManager:(id)manager ignoreLMIRequestsChangedForConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  CallCenter.conversationManager(_:ignoreLMIRequestsChangedFor:)();
}

- (void)conversationManager:(id)manager rejectedMembersChangedForConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  CallCenter.conversationManager(_:rejectedMembersChangedFor:)();
}

- (void)conversationManager:(id)manager linkChangedForConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  CallCenter.conversationManager(_:linkChangedFor:)();
}

- (void)conversationManager:(id)manager screenSharingAvailableChanged:(BOOL)changed
{
  managerCopy = manager;
  selfCopy = self;
  CallCenter.conversationManager(_:screenSharingAvailableChanged:)();
}

- (void)conversationManager:(id)manager linkInvitedMemberHandlesChangedForConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  CallCenter.conversationManager(_:linkInvitedMemberHandlesChangedFor:)();
}

- (void)conversationManager:(id)manager migratingFromConversation:(id)conversation toConversation:(id)toConversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  toConversationCopy = toConversation;
  selfCopy = self;
  CallCenter.conversationManager(_:migratingFrom:to:)();
}

- (void)conversationManager:(id)manager activitySessionsChangedForConversation:(id)conversation fromOldConversation:(id)oldConversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  oldConversationCopy = oldConversation;
  selfCopy = self;
  CallCenter.conversationManager(_:activitySessionsChangedFor:fromOldConversation:)();
}

- (void)conversationManager:(id)manager conversation:(id)conversation updatedMessagesGroupPhoto:(id)photo
{
  if (photo)
  {
    managerCopy = manager;
    conversationCopy = conversation;
    selfCopy = self;
    photoCopy = photo;
    v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    managerCopy2 = manager;
    conversationCopy2 = conversation;
    selfCopy2 = self;
    v12 = 0;
    v14 = 0xF000000000000000;
  }

  CallCenter.conversationManager(_:conversation:updatedMessagesGroupPhoto:)();
  outlined consume of Data?(v12, v14);
}

- (void)conversationManager:(id)manager conversation:(id)conversation launchStateChanged:(unint64_t)changed forActivitySession:(id)session
{
  managerCopy = manager;
  conversationCopy = conversation;
  sessionCopy = session;
  selfCopy = self;
  CallCenter.conversationManager(_:conversation:launchStateChanged:session:)();
}

- (void)conversationManager:(id)manager remoteScreenShareAttributesChanged:(id)changed isLocallySharing:(BOOL)sharing
{
  managerCopy = manager;
  swift_unknownObjectRetain();
  selfCopy = self;
  CallCenter.conversationManager(_:remoteScreenShareAttributesChanged:isLocallySharing:)(selfCopy, changed, sharing);

  swift_unknownObjectRelease();
}

- (void)conversationManager:(id)manager conversation:(id)conversation buzzedMember:(id)member
{
  managerCopy = manager;
  conversationCopy = conversation;
  memberCopy = member;
  selfCopy = self;
  CallCenter.conversationManager(_:conversation:buzzedMember:)();
}

- (void)conversationManager:(id)manager collaborationChanged:(id)changed forConversation:(id)conversation collaborationState:(int64_t)state
{
  managerCopy = manager;
  changedCopy = changed;
  conversationCopy = conversation;
  selfCopy = self;
  CallCenter.conversationManager(_:collaborationChanged:for:collaborationState:)();
}

- (void)conversationManager:(id)manager cameraMixedWithScreenDidChangeForConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  CallCenter.conversationManager(_:cameraMixedWithScreenDidChangeFor:)();
}

- (void)conversationManager:(id)manager screenSharingRequestsChangedForConversation:(id)conversation fromOldConversation:(id)oldConversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  oldConversationCopy = oldConversation;
  selfCopy = self;
  CallCenter.conversationManager(_:screenSharingRequestsChangedFor:fromOldConversation:)();
}

- (void)mediaController:(id)controller participantMediaPrioritiesChangedForConversation:(id)conversation
{
  controllerCopy = controller;
  conversationCopy = conversation;
  selfCopy = self;
  CallCenter.mediaController(_:participantMediaPrioritiesChangedFor:)();
}

- (void)reactionsController:(id)controller conversation:(id)conversation participant:(id)participant didReact:(id)react
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  conversationCopy = conversation;
  participantCopy = participant;
  selfCopy = self;
  CallCenter.reactionsController(_:conversation:participant:didReact:)();
}

- (void)reactionsController:(id)controller conversation:(id)conversation participantDidStopReacting:(id)reacting
{
  controllerCopy = controller;
  conversationCopy = conversation;
  reactingCopy = reacting;
  selfCopy = self;
  CallCenter.reactionsController(_:conversation:participantDidStopReacting:)();
}

- (void)routesChangedForRouteController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  CallCenter.routesChanged(for:)();
}

@end