@interface JFXRemoteCommandServer
- (JFXRemoteCommandServer)initWithDelegate:(id)delegate;
- (JFXRemoteCommandServerDelegate)delegate;
- (void)onAddAREffectWithIdentifierNotification:(id)notification;
- (void)onAddEffectWithIdentifierNotification:(id)notification;
- (void)onAddEffectWithNameNotification:(id)notification;
- (void)onAddPosterWithIdentifierNotification:(id)notification;
- (void)onAddPosterWithNameNotification:(id)notification;
- (void)onAddShapeWithIdentifierNotification:(id)notification;
- (void)onAddStickerNotification:(id)notification;
- (void)onAddStickerWithIdentifierNotification:(id)notification;
- (void)onAddTextNotification:(id)notification;
- (void)onExportProjectNotification:(id)notification;
- (void)onExportProjectResponseNotification:(id)notification;
- (void)onGetEffectsRequest:(id)request;
- (void)onGetEffectsResponse:(id)response;
- (void)onNewProjectNotification:(id)notification;
- (void)onOpenProjectNotification:(id)notification;
- (void)onOpenProjectPickerNotification:(id)notification;
- (void)onPlayClipAtIndexNotification:(id)notification;
- (void)onPlayNotification:(id)notification;
- (void)onRecordNotification:(id)notification;
- (void)onRemoveEffectsNotification:(id)notification;
- (void)onSetAnimojiNotification:(id)notification;
- (void)onSetAspectRatioNotification:(id)notification;
- (void)onSetFilterWithIdentifierNotification:(id)notification;
- (void)onSetMemojiWithContentsOfFileNotification:(id)notification;
@end

@implementation JFXRemoteCommandServer

- (JFXRemoteCommandServer)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = JFXRemoteCommandServer;
  v5 = [(JFXRemoteCommandServer *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    distributedNotificationCenter = v6->_distributedNotificationCenter;
    v6->_distributedNotificationCenter = defaultCenter;

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

- (void)onRemoveEffectsNotification:(id)notification
{
  v5 = JFXRemoveEffectsNotificationGetEffectTypeIdentifiers(notification);
  delegate = [(JFXRemoteCommandServer *)self delegate];
  [delegate remoteCommandServer:self didReceiveRemoveEffectsCommandWithTypeIdentifiers:v5];
}

- (void)onSetAnimojiNotification:(id)notification
{
  v5 = JFXSetAnimojiNotificationGetEffectIdentifier(notification);
  delegate = [(JFXRemoteCommandServer *)self delegate];
  [delegate remoteCommandServer:self didReceiveSetAnimojiCommandWithIdentifier:v5];
}

- (void)onSetMemojiWithContentsOfFileNotification:(id)notification
{
  v5 = JFXSetMemojiNotificationGetFile(notification);
  delegate = [(JFXRemoteCommandServer *)self delegate];
  [delegate remoteCommandServer:self didReceiveSetMemojiCommandWithContentsOfFile:v5];
}

- (void)onSetFilterWithIdentifierNotification:(id)notification
{
  v5 = JFXSetFilterNotificationGetEffectIdentifier(notification);
  delegate = [(JFXRemoteCommandServer *)self delegate];
  [delegate remoteCommandServer:self didReceiveSetFilterCommandWithIdentifier:v5];
}

- (void)onGetEffectsRequest:(id)request
{
  v5 = JFXEffectsRequestGetEffectsType(request);
  delegate = [(JFXRemoteCommandServer *)self delegate];
  [delegate remoteCommandServer:self didReceiveGetEffectsRequest:v5];
}

- (void)onGetEffectsResponse:(id)response
{
  v5 = JFXEffectsResponseGetEffects(response, a2);
  delegate = [(JFXRemoteCommandServer *)self delegate];
  [delegate remoteCommandServer:self didReceiveGetEffectsResponse:v5];
}

- (void)onOpenProjectPickerNotification:(id)notification
{
  delegate = [(JFXRemoteCommandServer *)self delegate];
  [delegate remoteCommandServer:self didReceiveOpenProjectPicker:0];
}

- (void)onOpenProjectNotification:(id)notification
{
  v5 = JFXOpenProjectGetProjectIndex(notification);
  delegate = [(JFXRemoteCommandServer *)self delegate];
  [delegate remoteCommandServer:self didReceiveOpenProjectAtIndex:{objc_msgSend(v5, "integerValue")}];
}

- (void)onNewProjectNotification:(id)notification
{
  delegate = [(JFXRemoteCommandServer *)self delegate];
  [delegate remoteCommandServer:self didReceiveNewProject:0];
}

- (void)onPlayNotification:(id)notification
{
  delegate = [(JFXRemoteCommandServer *)self delegate];
  [delegate remoteCommandServer:self didReceivePlay:0];
}

- (void)onPlayClipAtIndexNotification:(id)notification
{
  v5 = JFXPlayGetClipIndex(notification);
  delegate = [(JFXRemoteCommandServer *)self delegate];
  [delegate remoteCommandServer:self didReceivePlayClipAtIndex:v5];
}

- (void)onRecordNotification:(id)notification
{
  v5 = JFXRecordGetDuration(notification);
  delegate = [(JFXRemoteCommandServer *)self delegate];
  [delegate remoteCommandServer:self didReceiveRecordWithDuration:v5];
}

- (void)onExportProjectNotification:(id)notification
{
  notificationCopy = notification;
  v7 = JFXExportGetProjectIndex(notificationCopy);
  v5 = JFXExportGetAsMovie(notificationCopy);

  delegate = [(JFXRemoteCommandServer *)self delegate];
  [delegate remoteCommandServer:self didReceiveExportProjectAtIndex:objc_msgSend(v7 asMovie:{"integerValue"), objc_msgSend(v5, "integerValue") != 0}];
}

- (void)onExportProjectResponseNotification:(id)notification
{
  delegate = [(JFXRemoteCommandServer *)self delegate];
  [delegate remoteCommandServer:self didReceiveExportResponse:0];
}

- (void)onAddPosterWithIdentifierNotification:(id)notification
{
  v5 = JFXAddPosterWithIdentifierNotificationGetPosterIdentifier(notification);
  delegate = [(JFXRemoteCommandServer *)self delegate];
  [delegate remoteCommandServer:self didReceiveAddPosterWithPosterIdentifier:v5];
}

- (void)onAddPosterWithNameNotification:(id)notification
{
  v5 = JFXAddPosterWithNameNotificationGetPosterName(notification);
  delegate = [(JFXRemoteCommandServer *)self delegate];
  [delegate remoteCommandServer:self didReceiveAddPosterWithPosterName:v5];
}

- (void)onAddEffectWithIdentifierNotification:(id)notification
{
  v5 = JFXAddEffectWithIdentifierNotificationGetEffectIdentifier(notification);
  delegate = [(JFXRemoteCommandServer *)self delegate];
  [delegate remoteCommandServer:self didReceiveAddEffectWithEffectIdentifier:v5];
}

- (void)onAddEffectWithNameNotification:(id)notification
{
  v5 = JFXAddEffectWithNameNotificationGetEffectName(notification);
  delegate = [(JFXRemoteCommandServer *)self delegate];
  [delegate remoteCommandServer:self didReceiveAddEffectWithEffectName:v5];
}

- (void)onAddAREffectWithIdentifierNotification:(id)notification
{
  notificationCopy = notification;
  v7 = JFXAddAREffectWithIdentifierNotificationGetEffectIdentifier(notificationCopy);
  v5 = JFXAddAREffectWithIdentifierNotificationGetReplayFilename(notificationCopy);

  delegate = [(JFXRemoteCommandServer *)self delegate];
  [delegate remoteCommandServer:self didReceiveAddAREffectWithEffectIdentifier:v7 replayFilename:v5];
}

- (void)onSetAspectRatioNotification:(id)notification
{
  v5 = JFXGetAspectRatio(notification);
  delegate = [(JFXRemoteCommandServer *)self delegate];
  [delegate remoteCommandServer:self didReceiveSetAspectRatio:{objc_msgSend(v5, "integerValue")}];
}

- (void)onAddShapeWithIdentifierNotification:(id)notification
{
  v5 = JFXAddShapeWithIdentifierNotificationGetEffectIdentifier(notification);
  delegate = [(JFXRemoteCommandServer *)self delegate];
  [delegate remoteCommandServer:self didReceiveAddShapeCommandWithIdentifier:v5];
}

- (void)onAddStickerNotification:(id)notification
{
  notificationCopy = notification;
  v11 = JFXAddStickerNotificationGetData(notificationCopy);
  Offset = JFXAddStickerNotificationGetOffset(notificationCopy);
  v7 = v6;
  Scale = JFXAddStickerNotificationGetScale(notificationCopy);
  Rotation = JFXAddStickerNotificationGetRotation(notificationCopy);

  delegate = [(JFXRemoteCommandServer *)self delegate];
  [delegate remoteCommandServer:self didReceiveAddStickerCommandWithData:v11 offset:Offset scale:v7 rotation:{Scale, Rotation}];
}

- (void)onAddStickerWithIdentifierNotification:(id)notification
{
  notificationCopy = notification;
  v11 = JFXAddStickerNotificationGetEffectIdentifier(notificationCopy);
  Offset = JFXAddStickerNotificationGetOffset(notificationCopy);
  v7 = v6;
  Scale = JFXAddStickerNotificationGetScale(notificationCopy);
  Rotation = JFXAddStickerNotificationGetRotation(notificationCopy);

  delegate = [(JFXRemoteCommandServer *)self delegate];
  [delegate remoteCommandServer:self didReceiveAddStickerCommandWithIdentifier:v11 offset:Offset scale:v7 rotation:{Scale, Rotation}];
}

- (void)onAddTextNotification:(id)notification
{
  notificationCopy = notification;
  v7 = JFXAddTextNotificationGetEffectIdentifier(notificationCopy);
  v5 = JFXAddTextNotificationGetEffectString(notificationCopy);

  delegate = [(JFXRemoteCommandServer *)self delegate];
  [delegate remoteCommandServer:self didReceiveAddTextCommandWithIdentifier:v7 string:v5];
}

- (JFXRemoteCommandServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end