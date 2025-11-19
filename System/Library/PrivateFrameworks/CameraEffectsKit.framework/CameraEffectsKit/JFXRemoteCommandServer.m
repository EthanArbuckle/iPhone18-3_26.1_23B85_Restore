@interface JFXRemoteCommandServer
- (JFXRemoteCommandServer)initWithDelegate:(id)a3;
- (JFXRemoteCommandServerDelegate)delegate;
- (void)onAddAREffectWithIdentifierNotification:(id)a3;
- (void)onAddEffectWithIdentifierNotification:(id)a3;
- (void)onAddEffectWithNameNotification:(id)a3;
- (void)onAddPosterWithIdentifierNotification:(id)a3;
- (void)onAddPosterWithNameNotification:(id)a3;
- (void)onAddShapeWithIdentifierNotification:(id)a3;
- (void)onAddStickerNotification:(id)a3;
- (void)onAddStickerWithIdentifierNotification:(id)a3;
- (void)onAddTextNotification:(id)a3;
- (void)onExportProjectNotification:(id)a3;
- (void)onExportProjectResponseNotification:(id)a3;
- (void)onGetEffectsRequest:(id)a3;
- (void)onGetEffectsResponse:(id)a3;
- (void)onNewProjectNotification:(id)a3;
- (void)onOpenProjectNotification:(id)a3;
- (void)onOpenProjectPickerNotification:(id)a3;
- (void)onPlayClipAtIndexNotification:(id)a3;
- (void)onPlayNotification:(id)a3;
- (void)onRecordNotification:(id)a3;
- (void)onRemoveEffectsNotification:(id)a3;
- (void)onSetAnimojiNotification:(id)a3;
- (void)onSetAspectRatioNotification:(id)a3;
- (void)onSetFilterWithIdentifierNotification:(id)a3;
- (void)onSetMemojiWithContentsOfFileNotification:(id)a3;
@end

@implementation JFXRemoteCommandServer

- (JFXRemoteCommandServer)initWithDelegate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = JFXRemoteCommandServer;
  v5 = [(JFXRemoteCommandServer *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = [MEMORY[0x277CCA9A0] defaultCenter];
    distributedNotificationCenter = v6->_distributedNotificationCenter;
    v6->_distributedNotificationCenter = v7;

    [(NSDistributedNotificationCenter *)v6->_distributedNotificationCenter addObserver:v6 selector:sel_onRemoveEffectsNotification_ name:@"JFXRemoveEffectsNotification" object:0];
    [(NSDistributedNotificationCenter *)v6->_distributedNotificationCenter addObserver:v6 selector:sel_onSetAnimojiNotification_ name:@"JFXSetAnimojiNotification" object:0];
    [(NSDistributedNotificationCenter *)v6->_distributedNotificationCenter addObserver:v6 selector:sel_onSetMemojiWithContentsOfFileNotification_ name:@"JFXSetMemojiWithContentsOfFileNotification" object:0];
    [(NSDistributedNotificationCenter *)v6->_distributedNotificationCenter addObserver:v6 selector:sel_onSetFilterWithIdentifierNotification_ name:@"JFXSetFilterWithIdentifierNotification" object:0];
    [(NSDistributedNotificationCenter *)v6->_distributedNotificationCenter addObserver:v6 selector:sel_onGetEffectsRequest_ name:@"JFXGetEffectsNotification" object:0];
    [(NSDistributedNotificationCenter *)v6->_distributedNotificationCenter addObserver:v6 selector:sel_onGetEffectsResponse_ name:@"JFXSendEffectsNotification" object:0];
    [(NSDistributedNotificationCenter *)v6->_distributedNotificationCenter addObserver:v6 selector:sel_onOpenProjectPickerNotification_ name:@"JFXOpenProjectPickerNotification" object:0];
    [(NSDistributedNotificationCenter *)v6->_distributedNotificationCenter addObserver:v6 selector:sel_onOpenProjectNotification_ name:@"JFXOpenProjectNotification" object:0];
    [(NSDistributedNotificationCenter *)v6->_distributedNotificationCenter addObserver:v6 selector:sel_onNewProjectNotification_ name:@"JFXNewProjectNotification" object:0];
    [(NSDistributedNotificationCenter *)v6->_distributedNotificationCenter addObserver:v6 selector:sel_onPlayNotification_ name:@"JFXPlayNotification" object:0];
    [(NSDistributedNotificationCenter *)v6->_distributedNotificationCenter addObserver:v6 selector:sel_onPlayClipAtIndexNotification_ name:@"JFXPlayClipAtIndexNotification" object:0];
    [(NSDistributedNotificationCenter *)v6->_distributedNotificationCenter addObserver:v6 selector:sel_onRecordNotification_ name:@"JFXRecordNotification" object:0];
    [(NSDistributedNotificationCenter *)v6->_distributedNotificationCenter addObserver:v6 selector:sel_onExportProjectNotification_ name:@"JFXExportNotification" object:0];
    [(NSDistributedNotificationCenter *)v6->_distributedNotificationCenter addObserver:v6 selector:sel_onExportProjectResponseNotification_ name:@"JFXSendExportNotification" object:0];
    [(NSDistributedNotificationCenter *)v6->_distributedNotificationCenter addObserver:v6 selector:sel_onAddPosterWithIdentifierNotification_ name:@"JFXAddPosterWithIdentifierNotification" object:0];
    [(NSDistributedNotificationCenter *)v6->_distributedNotificationCenter addObserver:v6 selector:sel_onAddPosterWithNameNotification_ name:@"JFXAddPosterWithNameNotification" object:0];
    [(NSDistributedNotificationCenter *)v6->_distributedNotificationCenter addObserver:v6 selector:sel_onAddEffectWithIdentifierNotification_ name:@"JFXAddEffectWithIdentifierNotification" object:0];
    [(NSDistributedNotificationCenter *)v6->_distributedNotificationCenter addObserver:v6 selector:sel_onAddEffectWithNameNotification_ name:@"JFXAddEffectWithNameNotification" object:0];
    [(NSDistributedNotificationCenter *)v6->_distributedNotificationCenter addObserver:v6 selector:sel_onAddAREffectWithIdentifierNotification_ name:@"JFXAddAREffectWithIdentifierNotification" object:0];
    [(NSDistributedNotificationCenter *)v6->_distributedNotificationCenter addObserver:v6 selector:sel_onSetAspectRatioNotification_ name:@"JFXAspectRatioNotification" object:0];
    [(NSDistributedNotificationCenter *)v6->_distributedNotificationCenter addObserver:v6 selector:sel_onAddShapeWithIdentifierNotification_ name:@"JFXAddShapeWithIdentifierNotification" object:0];
    [(NSDistributedNotificationCenter *)v6->_distributedNotificationCenter addObserver:v6 selector:sel_onAddStickerNotification_ name:@"JFXAddStickerNotification" object:0];
    [(NSDistributedNotificationCenter *)v6->_distributedNotificationCenter addObserver:v6 selector:sel_onAddStickerWithIdentifierNotification_ name:@"JFXAddStickerWithIdentifierNotification" object:0];
    [(NSDistributedNotificationCenter *)v6->_distributedNotificationCenter addObserver:v6 selector:sel_onAddTextNotification_ name:@"JFXAddTextNotification" object:0];
  }

  return v6;
}

- (void)onRemoveEffectsNotification:(id)a3
{
  v5 = JFXRemoveEffectsNotificationGetEffectTypeIdentifiers(a3);
  v4 = [(JFXRemoteCommandServer *)self delegate];
  [v4 remoteCommandServer:self didReceiveRemoveEffectsCommandWithTypeIdentifiers:v5];
}

- (void)onSetAnimojiNotification:(id)a3
{
  v5 = JFXSetAnimojiNotificationGetEffectIdentifier(a3);
  v4 = [(JFXRemoteCommandServer *)self delegate];
  [v4 remoteCommandServer:self didReceiveSetAnimojiCommandWithIdentifier:v5];
}

- (void)onSetMemojiWithContentsOfFileNotification:(id)a3
{
  v5 = JFXSetMemojiNotificationGetFile(a3);
  v4 = [(JFXRemoteCommandServer *)self delegate];
  [v4 remoteCommandServer:self didReceiveSetMemojiCommandWithContentsOfFile:v5];
}

- (void)onSetFilterWithIdentifierNotification:(id)a3
{
  v5 = JFXSetFilterNotificationGetEffectIdentifier(a3);
  v4 = [(JFXRemoteCommandServer *)self delegate];
  [v4 remoteCommandServer:self didReceiveSetFilterCommandWithIdentifier:v5];
}

- (void)onGetEffectsRequest:(id)a3
{
  v5 = JFXEffectsRequestGetEffectsType(a3);
  v4 = [(JFXRemoteCommandServer *)self delegate];
  [v4 remoteCommandServer:self didReceiveGetEffectsRequest:v5];
}

- (void)onGetEffectsResponse:(id)a3
{
  v5 = JFXEffectsResponseGetEffects(a3, a2);
  v4 = [(JFXRemoteCommandServer *)self delegate];
  [v4 remoteCommandServer:self didReceiveGetEffectsResponse:v5];
}

- (void)onOpenProjectPickerNotification:(id)a3
{
  v4 = [(JFXRemoteCommandServer *)self delegate];
  [v4 remoteCommandServer:self didReceiveOpenProjectPicker:0];
}

- (void)onOpenProjectNotification:(id)a3
{
  v5 = JFXOpenProjectGetProjectIndex(a3);
  v4 = [(JFXRemoteCommandServer *)self delegate];
  [v4 remoteCommandServer:self didReceiveOpenProjectAtIndex:{objc_msgSend(v5, "integerValue")}];
}

- (void)onNewProjectNotification:(id)a3
{
  v4 = [(JFXRemoteCommandServer *)self delegate];
  [v4 remoteCommandServer:self didReceiveNewProject:0];
}

- (void)onPlayNotification:(id)a3
{
  v4 = [(JFXRemoteCommandServer *)self delegate];
  [v4 remoteCommandServer:self didReceivePlay:0];
}

- (void)onPlayClipAtIndexNotification:(id)a3
{
  v5 = JFXPlayGetClipIndex(a3);
  v4 = [(JFXRemoteCommandServer *)self delegate];
  [v4 remoteCommandServer:self didReceivePlayClipAtIndex:v5];
}

- (void)onRecordNotification:(id)a3
{
  v5 = JFXRecordGetDuration(a3);
  v4 = [(JFXRemoteCommandServer *)self delegate];
  [v4 remoteCommandServer:self didReceiveRecordWithDuration:v5];
}

- (void)onExportProjectNotification:(id)a3
{
  v4 = a3;
  v7 = JFXExportGetProjectIndex(v4);
  v5 = JFXExportGetAsMovie(v4);

  v6 = [(JFXRemoteCommandServer *)self delegate];
  [v6 remoteCommandServer:self didReceiveExportProjectAtIndex:objc_msgSend(v7 asMovie:{"integerValue"), objc_msgSend(v5, "integerValue") != 0}];
}

- (void)onExportProjectResponseNotification:(id)a3
{
  v4 = [(JFXRemoteCommandServer *)self delegate];
  [v4 remoteCommandServer:self didReceiveExportResponse:0];
}

- (void)onAddPosterWithIdentifierNotification:(id)a3
{
  v5 = JFXAddPosterWithIdentifierNotificationGetPosterIdentifier(a3);
  v4 = [(JFXRemoteCommandServer *)self delegate];
  [v4 remoteCommandServer:self didReceiveAddPosterWithPosterIdentifier:v5];
}

- (void)onAddPosterWithNameNotification:(id)a3
{
  v5 = JFXAddPosterWithNameNotificationGetPosterName(a3);
  v4 = [(JFXRemoteCommandServer *)self delegate];
  [v4 remoteCommandServer:self didReceiveAddPosterWithPosterName:v5];
}

- (void)onAddEffectWithIdentifierNotification:(id)a3
{
  v5 = JFXAddEffectWithIdentifierNotificationGetEffectIdentifier(a3);
  v4 = [(JFXRemoteCommandServer *)self delegate];
  [v4 remoteCommandServer:self didReceiveAddEffectWithEffectIdentifier:v5];
}

- (void)onAddEffectWithNameNotification:(id)a3
{
  v5 = JFXAddEffectWithNameNotificationGetEffectName(a3);
  v4 = [(JFXRemoteCommandServer *)self delegate];
  [v4 remoteCommandServer:self didReceiveAddEffectWithEffectName:v5];
}

- (void)onAddAREffectWithIdentifierNotification:(id)a3
{
  v4 = a3;
  v7 = JFXAddAREffectWithIdentifierNotificationGetEffectIdentifier(v4);
  v5 = JFXAddAREffectWithIdentifierNotificationGetReplayFilename(v4);

  v6 = [(JFXRemoteCommandServer *)self delegate];
  [v6 remoteCommandServer:self didReceiveAddAREffectWithEffectIdentifier:v7 replayFilename:v5];
}

- (void)onSetAspectRatioNotification:(id)a3
{
  v5 = JFXGetAspectRatio(a3);
  v4 = [(JFXRemoteCommandServer *)self delegate];
  [v4 remoteCommandServer:self didReceiveSetAspectRatio:{objc_msgSend(v5, "integerValue")}];
}

- (void)onAddShapeWithIdentifierNotification:(id)a3
{
  v5 = JFXAddShapeWithIdentifierNotificationGetEffectIdentifier(a3);
  v4 = [(JFXRemoteCommandServer *)self delegate];
  [v4 remoteCommandServer:self didReceiveAddShapeCommandWithIdentifier:v5];
}

- (void)onAddStickerNotification:(id)a3
{
  v4 = a3;
  v11 = JFXAddStickerNotificationGetData(v4);
  Offset = JFXAddStickerNotificationGetOffset(v4);
  v7 = v6;
  Scale = JFXAddStickerNotificationGetScale(v4);
  Rotation = JFXAddStickerNotificationGetRotation(v4);

  v10 = [(JFXRemoteCommandServer *)self delegate];
  [v10 remoteCommandServer:self didReceiveAddStickerCommandWithData:v11 offset:Offset scale:v7 rotation:{Scale, Rotation}];
}

- (void)onAddStickerWithIdentifierNotification:(id)a3
{
  v4 = a3;
  v11 = JFXAddStickerNotificationGetEffectIdentifier(v4);
  Offset = JFXAddStickerNotificationGetOffset(v4);
  v7 = v6;
  Scale = JFXAddStickerNotificationGetScale(v4);
  Rotation = JFXAddStickerNotificationGetRotation(v4);

  v10 = [(JFXRemoteCommandServer *)self delegate];
  [v10 remoteCommandServer:self didReceiveAddStickerCommandWithIdentifier:v11 offset:Offset scale:v7 rotation:{Scale, Rotation}];
}

- (void)onAddTextNotification:(id)a3
{
  v4 = a3;
  v7 = JFXAddTextNotificationGetEffectIdentifier(v4);
  v5 = JFXAddTextNotificationGetEffectString(v4);

  v6 = [(JFXRemoteCommandServer *)self delegate];
  [v6 remoteCommandServer:self didReceiveAddTextCommandWithIdentifier:v7 string:v5];
}

- (JFXRemoteCommandServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end