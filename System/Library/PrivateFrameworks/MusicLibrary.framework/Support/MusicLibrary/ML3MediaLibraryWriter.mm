@interface ML3MediaLibraryWriter
- (void)collectDiagnostic:(id)a3;
@end

@implementation ML3MediaLibraryWriter

- (void)collectDiagnostic:(id)a3
{
  v4 = a3;
  v5 = [(ML3MediaLibraryWriter *)self serialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000066D8;
  v7[3] = &unk_100031BA8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(v5, v7);
}

@end