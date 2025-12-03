@interface HomesStore.CoreData.XPCStoreServer
- (BOOL)willPerformRecoveryForError:(id)error fromContext:(id)context;
@end

@implementation HomesStore.CoreData.XPCStoreServer

- (BOOL)willPerformRecoveryForError:(id)error fromContext:(id)context
{
  contextCopy = context;
  contextCopy2 = context;

  errorCopy = error;
  LOBYTE(contextCopy) = sub_2530D1F10(error, contextCopy);

  return contextCopy & 1;
}

@end