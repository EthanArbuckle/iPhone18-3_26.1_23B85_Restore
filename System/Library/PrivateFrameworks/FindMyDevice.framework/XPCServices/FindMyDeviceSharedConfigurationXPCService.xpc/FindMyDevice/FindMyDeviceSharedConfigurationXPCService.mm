@interface FindMyDeviceSharedConfigurationXPCService
- (void)clearTheftAndLossCFU:(id)u;
- (void)downloadSharedConfigurationWithLocale:(id)locale reply:(id)reply;
- (void)getTheftAndLossCoverageWithSerialNumber:(id)number reply:(id)reply;
- (void)getTheftAndLossCoverageWithUDID:(id)d reply:(id)reply;
- (void)postTheftAndLossCFUWithEntry:(id)entry reply:(id)reply;
- (void)requestTheftAndLossCFUWithString:(id)string andReply:(id)reply;
@end

@implementation FindMyDeviceSharedConfigurationXPCService

- (void)getTheftAndLossCoverageWithUDID:(id)d reply:(id)reply
{
  v5 = _Block_copy(reply);
  v6 = sub_100010854();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  sub_10000314C(v6, v8, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)getTheftAndLossCoverageWithSerialNumber:(id)number reply:(id)reply
{
  v6 = _Block_copy(reply);
  if (number)
  {
    v7 = sub_100010854();
    number = v8;
  }

  else
  {
    v7 = 0;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  selfCopy = self;
  sub_100003B88(v7, number, sub_10000FF2C, v9);
}

- (void)requestTheftAndLossCFUWithString:(id)string andReply:(id)reply
{
  v6 = _Block_copy(reply);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  stringCopy = string;
  selfCopy = self;
  sub_10000CF18(stringCopy, selfCopy, sub_10000FF4C, v7);
}

- (void)postTheftAndLossCFUWithEntry:(id)entry reply:(id)reply
{
  v6 = _Block_copy(reply);
  _Block_copy(v6);
  entryCopy = entry;
  selfCopy = self;
  sub_10000D658(entryCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)clearTheftAndLossCFU:(id)u
{
  v4 = _Block_copy(u);
  _Block_copy(v4);
  selfCopy = self;
  sub_10000DD30(v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)downloadSharedConfigurationWithLocale:(id)locale reply:(id)reply
{
  v5 = _Block_copy(reply);
  v6 = sub_100010854();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  sub_100006AE0(v6, v8, sub_10000D650, v9);
}

@end