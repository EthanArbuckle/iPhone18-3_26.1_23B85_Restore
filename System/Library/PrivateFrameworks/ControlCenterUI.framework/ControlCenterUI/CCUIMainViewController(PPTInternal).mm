@interface CCUIMainViewController(PPTInternal)
@end

@implementation CCUIMainViewController(PPTInternal)

- (void)runTest:()PPTInternal subtests:eventStream:completionHandler:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CCUIMainViewController+PPTInternal.m" lineNumber:27 description:@"Invalid start state for test"];
}

@end