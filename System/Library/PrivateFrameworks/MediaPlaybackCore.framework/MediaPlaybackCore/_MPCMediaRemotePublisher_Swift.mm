@interface _MPCMediaRemotePublisher_Swift
- (BOOL)getRequestingImmediatePlaybackFromSetPlaybackSessionCommandEvent:(id)event;
- (BOOL)sonicStageCondition:(id)condition forIdentifier:(id)identifier error:(id *)error;
- (_MPCMediaRemotePublisher_Swift)initWithPublisher:(id)publisher;
- (id)getMigrationRequirementsFilterDataForAccounts:(id)accounts features:(unint64_t)features;
- (id)getQOSMetricsForDialogHandler;
- (id)getSwiftQOSDialogForError:(id)error withItem:(id)item;
- (id)processStatus:(id)status withCommandEvent:(id)event;
- (void)didEndMigration:(NSString *)migration setPlaybackSessionCommandStatus:(MRSendCommandResultStatus *)status error:(NSError *)error completion:(id)completion;
- (void)findContentItemIDWithIncomingContentItemID:(NSString *)d trackID:(int64_t)iD completion:(id)completion;
- (void)getTransportablePlaybackSessionRepresentationForRequest:(MPNowPlayingInfoTransportableSessionRequest *)request completion:(id)completion;
- (void)performSetQueueWithEvent:(MPSetPlaybackQueueCommandEvent *)event installQueueBeforeLoaded:(BOOL)loaded donatedStartPlayerItem:(MPAVItem *)item completion:(id)completion;
- (void)willBeginSessionMigrationWithIdentifier:(id)identifier;
@end

@implementation _MPCMediaRemotePublisher_Swift

- (_MPCMediaRemotePublisher_Swift)initWithPublisher:(id)publisher
{
  swift_unknownObjectRetain();
  _MediaRemotePublisher.init(_:)();
  return result;
}

- (id)getMigrationRequirementsFilterDataForAccounts:(id)accounts features:(unint64_t)features
{
  v6 = sub_1C6016B10();
  selfCopy = self;
  _MediaRemotePublisher.getMigrationRequirementsFilterData(for:features:)(v6, features, v8, v9, v10, v11, v12, v13, v20, v21);
  v15 = v14;
  v17 = v16;

  v18 = sub_1C6014F50();
  sub_1C5C8F8BC(v15, v17);

  return v18;
}

- (void)performSetQueueWithEvent:(MPSetPlaybackQueueCommandEvent *)event installQueueBeforeLoaded:(BOOL)loaded donatedStartPlayerItem:(MPAVItem *)item completion:(id)completion
{
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = event;
  *(v11 + 24) = loaded;
  *(v11 + 32) = item;
  *(v11 + 40) = v10;
  *(v11 + 48) = self;
  eventCopy = event;
  itemCopy = item;
  selfCopy = self;

  sub_1C5E3A9D0(&unk_1C6044748, v11);
}

- (void)findContentItemIDWithIncomingContentItemID:(NSString *)d trackID:(int64_t)iD completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  v9[2] = d;
  v9[3] = iD;
  v9[4] = v8;
  v9[5] = self;
  dCopy = d;
  selfCopy = self;

  sub_1C5E3A9D0(&unk_1C6044718, v9);
}

- (id)processStatus:(id)status withCommandEvent:(id)event
{
  statusCopy = status;
  eventCopy = event;
  selfCopy = self;
  v9 = _MediaRemotePublisher.processStatus(_:commandEvent:)();

  return v9;
}

- (id)getQOSMetricsForDialogHandler
{
  selfCopy = self;
  v3 = _MediaRemotePublisher.getQOSMetricsForDialogHandler()();

  if (v3)
  {
    v4 = sub_1C6016840();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)getSwiftQOSDialogForError:(id)error withItem:(id)item
{
  errorCopy = error;
  itemCopy = item;
  selfCopy = self;
  _MediaRemotePublisher.getSwiftQOSDialog(for:item:)();

  v9 = sub_1C6016840();

  return v9;
}

- (BOOL)sonicStageCondition:(id)condition forIdentifier:(id)identifier error:(id *)error
{
  v7 = sub_1C6016940();
  v9 = v8;
  v10 = sub_1C6016940();
  v12 = v11;
  selfCopy = self;
  v14._countAndFlagsBits = v7;
  v14._object = v9;
  v15._countAndFlagsBits = v10;
  v15._object = v12;
  _MediaRemotePublisher.sonicStageCondition(_:for:)(v14, v15);

  if (v16)
  {
    if (error)
    {
      v17 = sub_1C6014D30();

      v18 = v17;
      *error = v17;
    }

    else
    {
    }
  }

  return v16 == 0;
}

- (void)getTransportablePlaybackSessionRepresentationForRequest:(MPNowPlayingInfoTransportableSessionRequest *)request completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  v7[2] = request;
  v7[3] = v6;
  v7[4] = self;
  swift_unknownObjectRetain();
  selfCopy = self;

  sub_1C5E3A9D0(&unk_1C60446F8, v7);
}

- (void)willBeginSessionMigrationWithIdentifier:(id)identifier
{
  v4 = sub_1C6016940();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  _MediaRemotePublisher.willBeginSessionMigration(with:)(v8);
}

- (void)didEndMigration:(NSString *)migration setPlaybackSessionCommandStatus:(MRSendCommandResultStatus *)status error:(NSError *)error completion:(id)completion
{
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = migration;
  v11[3] = status;
  v11[4] = error;
  v11[5] = v10;
  v11[6] = self;
  migrationCopy = migration;
  statusCopy = status;
  errorCopy = error;
  selfCopy = self;

  sub_1C5E3A9D0(&unk_1C60446E0, v11);
}

- (BOOL)getRequestingImmediatePlaybackFromSetPlaybackSessionCommandEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  LOBYTE(self) = _MediaRemotePublisher.getRequestingImmediatePlayback(from:)();

  return self & 1;
}

@end