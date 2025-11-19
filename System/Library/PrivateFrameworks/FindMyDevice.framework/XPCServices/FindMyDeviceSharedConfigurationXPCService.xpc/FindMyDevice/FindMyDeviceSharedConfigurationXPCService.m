@interface FindMyDeviceSharedConfigurationXPCService
- (void)clearTheftAndLossCFU:(id)a3;
- (void)downloadSharedConfigurationWithLocale:(id)a3 reply:(id)a4;
- (void)getTheftAndLossCoverageWithSerialNumber:(id)a3 reply:(id)a4;
- (void)getTheftAndLossCoverageWithUDID:(id)a3 reply:(id)a4;
- (void)postTheftAndLossCFUWithEntry:(id)a3 reply:(id)a4;
- (void)requestTheftAndLossCFUWithString:(id)a3 andReply:(id)a4;
@end

@implementation FindMyDeviceSharedConfigurationXPCService

- (void)getTheftAndLossCoverageWithUDID:(id)a3 reply:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_100010854();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  sub_10000314C(v6, v8, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)getTheftAndLossCoverageWithSerialNumber:(id)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  if (a3)
  {
    v7 = sub_100010854();
    a3 = v8;
  }

  else
  {
    v7 = 0;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  v10 = self;
  sub_100003B88(v7, a3, sub_10000FF2C, v9);
}

- (void)requestTheftAndLossCFUWithString:(id)a3 andReply:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_10000CF18(v8, v9, sub_10000FF4C, v7);
}

- (void)postTheftAndLossCFUWithEntry:(id)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_10000D658(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)clearTheftAndLossCFU:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_10000DD30(v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)downloadSharedConfigurationWithLocale:(id)a3 reply:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_100010854();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self;
  sub_100006AE0(v6, v8, sub_10000D650, v9);
}

@end