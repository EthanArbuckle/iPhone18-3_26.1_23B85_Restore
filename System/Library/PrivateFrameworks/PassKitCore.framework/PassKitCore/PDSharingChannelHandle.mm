@interface PDSharingChannelHandle
+ (void)bootstrapProximityChannelWithTemplateSession:(id)session group:(id)group completion:(id)completion;
- (PDSharingChannelHandle)initWithEndpoint:(id)endpoint queue:(id)queue delegate:(id)delegate dataSource:(id)source;
- (PDSharingChannelHandleDataSource)dataSource;
- (PDSharingChannelHandleDelegate)delegate;
- (id)_initWithQueue:(id)queue delegate:(id)delegate dataSource:(id)source;
- (void)attachWithCompletion:(id)completion;
- (void)bootstrapProximityChannelWithTemplateSession:(id)session group:(id)group completion:(id)completion;
- (void)closeWithCompletion:(id)completion;
- (void)descriptorsForAccountDevices:(id)devices;
- (void)didInvalidate;
- (void)fetchHandleTransferToken:(id)token;
- (void)markMessageAsHandled:(id)handled;
- (void)markMessageAsHandled:(id)handled completion:(id)completion;
- (void)pingWithCompletion:(id)completion;
- (void)relinquishWithCompletion:(id)completion;
- (void)remoteDeviceInformation:(id)information;
- (void)sendMessage:(id)message completion:(id)completion;
- (void)startProximityAdvertisementOfType:(unint64_t)type completion:(id)completion;
- (void)startProximityDetectionForAdvertisement:(id)advertisement completion:(id)completion;
- (void)terminateProximityChannelForGroup:(id)group;
- (void)universalShareURLWithDecoration:(id)decoration completion:(id)completion;
@end

@implementation PDSharingChannelHandle

- (id)_initWithQueue:(id)queue delegate:(id)delegate dataSource:(id)source
{
  delegateCopy = delegate;
  sourceCopy = source;
  v13.receiver = self;
  v13.super_class = PDSharingChannelHandle;
  v10 = [(PDSharingChannelHandle *)&v13 _initWithQueue:queue];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(v10 + 2, delegateCopy);
    objc_storeWeak(v11 + 3, sourceCopy);
  }

  return v11;
}

- (PDSharingChannelHandle)initWithEndpoint:(id)endpoint queue:(id)queue delegate:(id)delegate dataSource:(id)source
{
  endpointCopy = endpoint;
  v12 = [(PDSharingChannelHandle *)self _initWithQueue:queue delegate:delegate dataSource:source];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(v12 + 1, endpoint);
  }

  return v13;
}

- (void)didInvalidate
{
  v4.receiver = self;
  v4.super_class = PDSharingChannelHandle;
  [(PDSharingChannelHandle *)&v4 didInvalidate];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained sharingChannelHandle:self wasInvalidatedRemotelyForEndpoint:self->_endpoint];
}

- (void)pingWithCompletion:(id)completion
{
  completionCopy = completion;
  createActionAssertion = [(PDSharingChannelHandle *)self createActionAssertion];
  if (createActionAssertion)
  {
    replyQueue = [(PDSharingChannelHandle *)self replyQueue];
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10019A6F8;
    v9[3] = &unk_100841F40;
    v10 = replyQueue;
    v12 = completionCopy;
    v11 = createActionAssertion;
    v8 = replyQueue;
    [WeakRetained pingForHandle:self completion:v9];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)attachWithCompletion:(id)completion
{
  completionCopy = completion;
  createActionAssertion = [(PDSharingChannelHandle *)self createActionAssertion];
  if (createActionAssertion)
  {
    replyQueue = [(PDSharingChannelHandle *)self replyQueue];
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10019A914;
    v9[3] = &unk_100841F40;
    v10 = replyQueue;
    v12 = completionCopy;
    v11 = createActionAssertion;
    v8 = replyQueue;
    [WeakRetained attachForHandle:self completion:v9];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)sendMessage:(id)message completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  createActionAssertion = [(PDSharingChannelHandle *)self createActionAssertion];
  if (createActionAssertion)
  {
    replyQueue = [(PDSharingChannelHandle *)self replyQueue];
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10019AB48;
    v12[3] = &unk_100841F40;
    v13 = replyQueue;
    v15 = completionCopy;
    v14 = createActionAssertion;
    v11 = replyQueue;
    [WeakRetained sendMessageTo:self message:messageCopy completion:v12];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)closeWithCompletion:(id)completion
{
  completionCopy = completion;
  createActionAssertion = [(PDSharingChannelHandle *)self createActionAssertion];
  if (createActionAssertion)
  {
    replyQueue = [(PDSharingChannelHandle *)self replyQueue];
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10019AD70;
    v9[3] = &unk_100841F40;
    v10 = replyQueue;
    v12 = completionCopy;
    v11 = createActionAssertion;
    v8 = replyQueue;
    [WeakRetained closeForHandle:self completion:v9];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)relinquishWithCompletion:(id)completion
{
  completionCopy = completion;
  createActionAssertion = [(PDSharingChannelHandle *)self createActionAssertion];
  if (createActionAssertion)
  {
    replyQueue = [(PDSharingChannelHandle *)self replyQueue];
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10019AF98;
    v9[3] = &unk_100841F40;
    v10 = replyQueue;
    v12 = completionCopy;
    v11 = createActionAssertion;
    v8 = replyQueue;
    [WeakRetained relinquishForHandle:self completion:v9];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)markMessageAsHandled:(id)handled
{
  handledCopy = handled;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained didHandleMessageForHandle:self message:handledCopy completion:&stru_10084AE68];
}

- (void)markMessageAsHandled:(id)handled completion:(id)completion
{
  completionCopy = completion;
  handledCopy = handled;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained didHandleMessageForHandle:self message:handledCopy completion:completionCopy];
}

- (void)universalShareURLWithDecoration:(id)decoration completion:(id)completion
{
  decorationCopy = decoration;
  completionCopy = completion;
  createActionAssertion = [(PDSharingChannelHandle *)self createActionAssertion];
  if (createActionAssertion)
  {
    replyQueue = [(PDSharingChannelHandle *)self replyQueue];
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10019B2D0;
    v12[3] = &unk_10084AE90;
    v13 = replyQueue;
    v15 = completionCopy;
    v14 = createActionAssertion;
    v11 = replyQueue;
    [WeakRetained universalShareURLForHandle:self urlDecoration:decorationCopy completion:v12];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)fetchHandleTransferToken:(id)token
{
  tokenCopy = token;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained fetchHandleTransferTokenForHandle:self completion:tokenCopy];
}

- (void)remoteDeviceInformation:(id)information
{
  informationCopy = information;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained remoteDeviceInformationForHandle:self completion:informationCopy];
}

- (void)startProximityAdvertisementOfType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained startProximityAdvertisementForHandle:self type:type completion:completionCopy];
}

- (void)startProximityDetectionForAdvertisement:(id)advertisement completion:(id)completion
{
  completionCopy = completion;
  advertisementCopy = advertisement;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained startProximityDetectionForHandle:self advertisement:advertisementCopy completion:completionCopy];
}

+ (void)bootstrapProximityChannelWithTemplateSession:(id)session group:(id)group completion:(id)completion
{
  sessionCopy = session;
  groupCopy = group;
  completionCopy = completion;
  __break(1u);
}

- (void)descriptorsForAccountDevices:(id)devices
{
  devicesCopy = devices;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained descriptorsForAccountDevicesForHandle:self completion:devicesCopy];
}

- (void)bootstrapProximityChannelWithTemplateSession:(id)session group:(id)group completion:(id)completion
{
  completionCopy = completion;
  groupCopy = group;
  sessionCopy = session;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained bootstrapProximityChannelForHandle:self templateSession:sessionCopy group:groupCopy completion:completionCopy];
}

- (void)terminateProximityChannelForGroup:(id)group
{
  groupCopy = group;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained terminateProximityChannelForHandle:self group:groupCopy];
}

- (PDSharingChannelHandleDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PDSharingChannelHandleDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end