@interface MBHSFileEncodingTask
+ (id)connection;
- (void)_finishWithError:(id)error;
- (void)start;
@end

@implementation MBHSFileEncodingTask

+ (id)connection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (qword_1004216F8)
  {
    v3 = qword_1004216F8;
  }

  else
  {
    if (qword_100421708 != -1)
    {
      dispatch_once(&qword_100421708, &stru_1003BE678);
    }

    v4 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.MobileBackup.MBHelperService"];
    [v4 setRemoteObjectInterface:qword_100421700];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000EE748;
    v6[3] = &unk_1003BBFE8;
    v6[4] = selfCopy;
    [v4 setInvalidationHandler:v6];
    objc_storeStrong(&qword_1004216F8, v4);
    [v4 resume];
    v3 = qword_1004216F8;
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (void)start
{
  if ([(MBHSFileEncodingTask *)self type]!= 1)
  {
    __assert_rtn("[MBHSFileEncodingTask start]", "MBHSFileEncodingTask.m", 63, "self.type == MBFileEncodingTypeEncode");
  }

  group = [(MBHSFileEncodingTask *)self group];
  if (!group)
  {
    __assert_rtn("[MBHSFileEncodingTask start]", "MBHSFileEncodingTask.m", 64, "self.group");
  }

  group2 = [(MBHSFileEncodingTask *)self group];
  dispatch_group_enter(group2);

  v5 = [MBFileEncodingTask encodingTaskWithEncodingMethod:[(MBHSFileEncodingTask *)self encodingMethod]];
  sourcePath = [(MBHSFileEncodingTask *)self sourcePath];
  [v5 setSourcePath:sourcePath];

  [v5 setSourceIsLive:{-[MBHSFileEncodingTask sourceIsLive](self, "sourceIsLive")}];
  [v5 setCompressionMethod:{-[MBHSFileEncodingTask compressionMethod](self, "compressionMethod")}];
  [v5 setProtectionClass:{-[MBHSFileEncodingTask protectionClass](self, "protectionClass")}];
  spaceSavingsThreshold = [(MBHSFileEncodingTask *)self spaceSavingsThreshold];
  [v5 setSpaceSavingsThreshold:spaceSavingsThreshold];

  destinationPath = [(MBHSFileEncodingTask *)self destinationPath];
  [v5 setDestinationPath:destinationPath];

  connection = [objc_opt_class() connection];
  if (!connection)
  {
    __assert_rtn("[MBHSFileEncodingTask start]", "MBHSFileEncodingTask.m", 77, "connection");
  }

  v10 = connection;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000EEA1C;
  v14[3] = &unk_1003BC010;
  v14[4] = self;
  v11 = [connection remoteObjectProxyWithErrorHandler:v14];
  if (!v11)
  {
    __assert_rtn("[MBHSFileEncodingTask start]", "MBHSFileEncodingTask.m", 82, "proxy");
  }

  v12 = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000EEA28;
  v13[3] = &unk_1003BC010;
  v13[4] = self;
  [v11 runEncodingTask:v5 reply:v13];
}

- (void)_finishWithError:(id)error
{
  if (error)
  {
    [(MBHSFileEncodingTask *)self setError:?];
    [(MBHSFileEncodingTask *)self setDestinationSize:0];
    [(MBHSFileEncodingTask *)self setCompressionMethod:0];
  }

  group = [(MBHSFileEncodingTask *)self group];
  dispatch_group_leave(group);

  [(MBHSFileEncodingTask *)self setGroup:0];
}

@end