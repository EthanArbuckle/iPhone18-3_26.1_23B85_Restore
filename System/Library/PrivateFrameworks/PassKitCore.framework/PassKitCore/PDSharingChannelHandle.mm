@interface PDSharingChannelHandle
+ (void)bootstrapProximityChannelWithTemplateSession:(id)a3 group:(id)a4 completion:(id)a5;
- (PDSharingChannelHandle)initWithEndpoint:(id)a3 queue:(id)a4 delegate:(id)a5 dataSource:(id)a6;
- (PDSharingChannelHandleDataSource)dataSource;
- (PDSharingChannelHandleDelegate)delegate;
- (id)_initWithQueue:(id)a3 delegate:(id)a4 dataSource:(id)a5;
- (void)attachWithCompletion:(id)a3;
- (void)bootstrapProximityChannelWithTemplateSession:(id)a3 group:(id)a4 completion:(id)a5;
- (void)closeWithCompletion:(id)a3;
- (void)descriptorsForAccountDevices:(id)a3;
- (void)didInvalidate;
- (void)fetchHandleTransferToken:(id)a3;
- (void)markMessageAsHandled:(id)a3;
- (void)markMessageAsHandled:(id)a3 completion:(id)a4;
- (void)pingWithCompletion:(id)a3;
- (void)relinquishWithCompletion:(id)a3;
- (void)remoteDeviceInformation:(id)a3;
- (void)sendMessage:(id)a3 completion:(id)a4;
- (void)startProximityAdvertisementOfType:(unint64_t)a3 completion:(id)a4;
- (void)startProximityDetectionForAdvertisement:(id)a3 completion:(id)a4;
- (void)terminateProximityChannelForGroup:(id)a3;
- (void)universalShareURLWithDecoration:(id)a3 completion:(id)a4;
@end

@implementation PDSharingChannelHandle

- (id)_initWithQueue:(id)a3 delegate:(id)a4 dataSource:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = PDSharingChannelHandle;
  v10 = [(PDSharingChannelHandle *)&v13 _initWithQueue:a3];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(v10 + 2, v8);
    objc_storeWeak(v11 + 3, v9);
  }

  return v11;
}

- (PDSharingChannelHandle)initWithEndpoint:(id)a3 queue:(id)a4 delegate:(id)a5 dataSource:(id)a6
{
  v11 = a3;
  v12 = [(PDSharingChannelHandle *)self _initWithQueue:a4 delegate:a5 dataSource:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(v12 + 1, a3);
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

- (void)pingWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PDSharingChannelHandle *)self createActionAssertion];
  if (v5)
  {
    v6 = [(PDSharingChannelHandle *)self replyQueue];
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10019A6F8;
    v9[3] = &unk_100841F40;
    v10 = v6;
    v12 = v4;
    v11 = v5;
    v8 = v6;
    [WeakRetained pingForHandle:self completion:v9];
  }

  else
  {
    (*(v4 + 2))(v4, 0, 0);
  }
}

- (void)attachWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PDSharingChannelHandle *)self createActionAssertion];
  if (v5)
  {
    v6 = [(PDSharingChannelHandle *)self replyQueue];
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10019A914;
    v9[3] = &unk_100841F40;
    v10 = v6;
    v12 = v4;
    v11 = v5;
    v8 = v6;
    [WeakRetained attachForHandle:self completion:v9];
  }

  else
  {
    (*(v4 + 2))(v4, 0, 0);
  }
}

- (void)sendMessage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PDSharingChannelHandle *)self createActionAssertion];
  if (v8)
  {
    v9 = [(PDSharingChannelHandle *)self replyQueue];
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10019AB48;
    v12[3] = &unk_100841F40;
    v13 = v9;
    v15 = v7;
    v14 = v8;
    v11 = v9;
    [WeakRetained sendMessageTo:self message:v6 completion:v12];
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

- (void)closeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PDSharingChannelHandle *)self createActionAssertion];
  if (v5)
  {
    v6 = [(PDSharingChannelHandle *)self replyQueue];
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10019AD70;
    v9[3] = &unk_100841F40;
    v10 = v6;
    v12 = v4;
    v11 = v5;
    v8 = v6;
    [WeakRetained closeForHandle:self completion:v9];
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 0, 0);
  }
}

- (void)relinquishWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PDSharingChannelHandle *)self createActionAssertion];
  if (v5)
  {
    v6 = [(PDSharingChannelHandle *)self replyQueue];
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10019AF98;
    v9[3] = &unk_100841F40;
    v10 = v6;
    v12 = v4;
    v11 = v5;
    v8 = v6;
    [WeakRetained relinquishForHandle:self completion:v9];
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 0, 0);
  }
}

- (void)markMessageAsHandled:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained didHandleMessageForHandle:self message:v4 completion:&stru_10084AE68];
}

- (void)markMessageAsHandled:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained didHandleMessageForHandle:self message:v7 completion:v6];
}

- (void)universalShareURLWithDecoration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PDSharingChannelHandle *)self createActionAssertion];
  if (v8)
  {
    v9 = [(PDSharingChannelHandle *)self replyQueue];
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10019B2D0;
    v12[3] = &unk_10084AE90;
    v13 = v9;
    v15 = v7;
    v14 = v8;
    v11 = v9;
    [WeakRetained universalShareURLForHandle:self urlDecoration:v6 completion:v12];
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

- (void)fetchHandleTransferToken:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained fetchHandleTransferTokenForHandle:self completion:v4];
}

- (void)remoteDeviceInformation:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained remoteDeviceInformationForHandle:self completion:v4];
}

- (void)startProximityAdvertisementOfType:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained startProximityAdvertisementForHandle:self type:a3 completion:v6];
}

- (void)startProximityDetectionForAdvertisement:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained startProximityDetectionForHandle:self advertisement:v7 completion:v6];
}

+ (void)bootstrapProximityChannelWithTemplateSession:(id)a3 group:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  __break(1u);
}

- (void)descriptorsForAccountDevices:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained descriptorsForAccountDevicesForHandle:self completion:v4];
}

- (void)bootstrapProximityChannelWithTemplateSession:(id)a3 group:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained bootstrapProximityChannelForHandle:self templateSession:v10 group:v9 completion:v8];
}

- (void)terminateProximityChannelForGroup:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained terminateProximityChannelForHandle:self group:v4];
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