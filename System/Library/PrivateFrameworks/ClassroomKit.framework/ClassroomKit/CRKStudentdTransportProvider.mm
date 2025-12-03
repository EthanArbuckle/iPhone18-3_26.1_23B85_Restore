@interface CRKStudentdTransportProvider
- (void)fetchTransportWithCompletion:(id)completion;
@end

@implementation CRKStudentdTransportProvider

- (void)fetchTransportWithCompletion:(id)completion
{
  v3 = MEMORY[0x277CCAE80];
  completionCopy = completion;
  crk_studentDaemonConnection = [v3 crk_studentDaemonConnection];
  v5 = [objc_alloc(MEMORY[0x277CF95B8]) initWithXPCConnection:crk_studentDaemonConnection];
  completionCopy[2](completionCopy, v5, 0);
}

@end