@interface HomesStore.CoreData.XPCStoreServer
- (BOOL)willPerformRecoveryForError:(id)a3 fromContext:(id)a4;
@end

@implementation HomesStore.CoreData.XPCStoreServer

- (BOOL)willPerformRecoveryForError:(id)a3 fromContext:(id)a4
{
  v4 = a4;
  v6 = a4;

  v7 = a3;
  LOBYTE(v4) = sub_2530D1F10(a3, v4);

  return v4 & 1;
}

@end