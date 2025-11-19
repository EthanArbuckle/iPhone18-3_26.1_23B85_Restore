@interface HMDIOPMWrapper
- (int)iopmUpdateAssertionsByProcess;
@end

@implementation HMDIOPMWrapper

- (int)iopmUpdateAssertionsByProcess
{
  p_assertionsByPID = &self->assertionsByPID;
  assertionsByPID = self->assertionsByPID;
  if (assertionsByPID)
  {
    CFRelease(assertionsByPID);
    *p_assertionsByPID = 0;
  }

  return IOPMCopyAssertionsByProcess(p_assertionsByPID);
}

@end