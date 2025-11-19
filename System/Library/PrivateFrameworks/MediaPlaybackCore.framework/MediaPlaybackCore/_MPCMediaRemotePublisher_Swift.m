@interface _MPCMediaRemotePublisher_Swift
- (BOOL)getRequestingImmediatePlaybackFromSetPlaybackSessionCommandEvent:(id)a3;
- (BOOL)sonicStageCondition:(id)a3 forIdentifier:(id)a4 error:(id *)a5;
- (_MPCMediaRemotePublisher_Swift)initWithPublisher:(id)a3;
- (id)getMigrationRequirementsFilterDataForAccounts:(id)a3 features:(unint64_t)a4;
- (id)getQOSMetricsForDialogHandler;
- (id)getSwiftQOSDialogForError:(id)a3 withItem:(id)a4;
- (id)processStatus:(id)a3 withCommandEvent:(id)a4;
- (void)didEndMigration:(NSString *)a3 setPlaybackSessionCommandStatus:(MRSendCommandResultStatus *)a4 error:(NSError *)a5 completion:(id)a6;
- (void)findContentItemIDWithIncomingContentItemID:(NSString *)a3 trackID:(int64_t)a4 completion:(id)a5;
- (void)getTransportablePlaybackSessionRepresentationForRequest:(MPNowPlayingInfoTransportableSessionRequest *)a3 completion:(id)a4;
- (void)performSetQueueWithEvent:(MPSetPlaybackQueueCommandEvent *)a3 installQueueBeforeLoaded:(BOOL)a4 donatedStartPlayerItem:(MPAVItem *)a5 completion:(id)a6;
- (void)willBeginSessionMigrationWithIdentifier:(id)a3;
@end

@implementation _MPCMediaRemotePublisher_Swift

- (_MPCMediaRemotePublisher_Swift)initWithPublisher:(id)a3
{
  swift_unknownObjectRetain();
  _MediaRemotePublisher.init(_:)();
  return result;
}

- (id)getMigrationRequirementsFilterDataForAccounts:(id)a3 features:(unint64_t)a4
{
  v6 = sub_1C6016B10();
  v7 = self;
  _MediaRemotePublisher.getMigrationRequirementsFilterData(for:features:)(v6, a4, v8, v9, v10, v11, v12, v13, v20, v21);
  v15 = v14;
  v17 = v16;

  v18 = sub_1C6014F50();
  sub_1C5C8F8BC(v15, v17);

  return v18;
}

- (void)performSetQueueWithEvent:(MPSetPlaybackQueueCommandEvent *)a3 installQueueBeforeLoaded:(BOOL)a4 donatedStartPlayerItem:(MPAVItem *)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  *(v11 + 32) = a5;
  *(v11 + 40) = v10;
  *(v11 + 48) = self;
  v12 = a3;
  v13 = a5;
  v14 = self;

  sub_1C5E3A9D0(&unk_1C6044748, v11);
}

- (void)findContentItemIDWithIncomingContentItemID:(NSString *)a3 trackID:(int64_t)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a3;
  v11 = self;

  sub_1C5E3A9D0(&unk_1C6044718, v9);
}

- (id)processStatus:(id)a3 withCommandEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = _MediaRemotePublisher.processStatus(_:commandEvent:)();

  return v9;
}

- (id)getQOSMetricsForDialogHandler
{
  v2 = self;
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

- (id)getSwiftQOSDialogForError:(id)a3 withItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  _MediaRemotePublisher.getSwiftQOSDialog(for:item:)();

  v9 = sub_1C6016840();

  return v9;
}

- (BOOL)sonicStageCondition:(id)a3 forIdentifier:(id)a4 error:(id *)a5
{
  v7 = sub_1C6016940();
  v9 = v8;
  v10 = sub_1C6016940();
  v12 = v11;
  v13 = self;
  v14._countAndFlagsBits = v7;
  v14._object = v9;
  v15._countAndFlagsBits = v10;
  v15._object = v12;
  _MediaRemotePublisher.sonicStageCondition(_:for:)(v14, v15);

  if (v16)
  {
    if (a5)
    {
      v17 = sub_1C6014D30();

      v18 = v17;
      *a5 = v17;
    }

    else
    {
    }
  }

  return v16 == 0;
}

- (void)getTransportablePlaybackSessionRepresentationForRequest:(MPNowPlayingInfoTransportableSessionRequest *)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  swift_unknownObjectRetain();
  v8 = self;

  sub_1C5E3A9D0(&unk_1C60446F8, v7);
}

- (void)willBeginSessionMigrationWithIdentifier:(id)a3
{
  v4 = sub_1C6016940();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  _MediaRemotePublisher.willBeginSessionMigration(with:)(v8);
}

- (void)didEndMigration:(NSString *)a3 setPlaybackSessionCommandStatus:(MRSendCommandResultStatus *)a4 error:(NSError *)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = self;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = self;

  sub_1C5E3A9D0(&unk_1C60446E0, v11);
}

- (BOOL)getRequestingImmediatePlaybackFromSetPlaybackSessionCommandEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = _MediaRemotePublisher.getRequestingImmediatePlayback(from:)();

  return self & 1;
}

@end