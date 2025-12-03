@interface IMRemoteIntentFileDownloadObserver
+ (id)sharedObserver;
- (BOOL)isDownloadingTransferGUID:(id)d;
@end

@implementation IMRemoteIntentFileDownloadObserver

+ (id)sharedObserver
{
  if (qword_1EB302270 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB306470;

  return v3;
}

- (BOOL)isDownloadingTransferGUID:(id)d
{
  sub_1A88C82E8();
  selfCopy = self;
  sub_1A88C8A58();

  return v6;
}

@end