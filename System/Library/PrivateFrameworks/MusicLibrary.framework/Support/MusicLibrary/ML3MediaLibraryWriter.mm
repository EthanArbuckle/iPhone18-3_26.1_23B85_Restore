@interface ML3MediaLibraryWriter
- (void)collectDiagnostic:(id)diagnostic;
@end

@implementation ML3MediaLibraryWriter

- (void)collectDiagnostic:(id)diagnostic
{
  diagnosticCopy = diagnostic;
  serialQueue = [(ML3MediaLibraryWriter *)self serialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000066D8;
  v7[3] = &unk_100031BA8;
  v8 = diagnosticCopy;
  selfCopy = self;
  v6 = diagnosticCopy;
  dispatch_sync(serialQueue, v7);
}

@end