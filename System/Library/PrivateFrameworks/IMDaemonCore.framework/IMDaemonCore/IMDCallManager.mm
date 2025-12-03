@interface IMDCallManager
- (IMDCallManager)initWithServiceSession:(id)session;
@end

@implementation IMDCallManager

- (IMDCallManager)initWithServiceSession:(id)session
{
  sessionCopy = session;
  v9.receiver = self;
  v9.super_class = IMDCallManager;
  v5 = [(IMDCallManager *)&v9 init];
  if (v5)
  {
    v6 = [[IMDCallManager_Impl alloc] initWithServiceSession:sessionCopy];
    swiftImpl = v5->_swiftImpl;
    v5->_swiftImpl = v6;
  }

  return v5;
}

@end