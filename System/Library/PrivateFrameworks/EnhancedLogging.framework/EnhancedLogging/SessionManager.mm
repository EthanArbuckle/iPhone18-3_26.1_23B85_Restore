@interface SessionManager
- (void)session:(id)session didDiscoverDevices:(id)devices;
- (void)session:(id)session didEndWithError:(id)error;
- (void)session:(id)session didUpdateCollectionProgress:(id)progress;
- (void)session:(id)session didUpdateStatus:(unint64_t)status;
@end

@implementation SessionManager

- (void)session:(id)session didUpdateStatus:(unint64_t)status
{
  v5 = sub_24A0761C8();
  v7 = v6;

  SessionManager.session(_:didUpdateStatus:)(v5, v7, status);
}

- (void)session:(id)session didUpdateCollectionProgress:(id)progress
{
  v4 = sub_24A076108();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A0761C8();
  v11 = v10;
  sub_24A0760F8();

  SessionManager.session(_:didUpdateCollectionProgress:)(v9, v11, v8);

  (*(v5 + 8))(v8, v4);
}

- (void)session:(id)session didEndWithError:(id)error
{
  v5 = sub_24A0761C8();
  v7 = v6;

  errorCopy = error;
  SessionManager.session(_:didEndWithError:)(v5, v7, error);
}

- (void)session:(id)session didDiscoverDevices:(id)devices
{
  v4 = sub_24A0761C8();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF31D80, &qword_24A077488);
  v7 = sub_24A076238();

  v8._countAndFlagsBits = v4;
  v8._object = v6;
  SessionManager.session(_:didDiscoverDevices:)(v8, v7);
}

@end