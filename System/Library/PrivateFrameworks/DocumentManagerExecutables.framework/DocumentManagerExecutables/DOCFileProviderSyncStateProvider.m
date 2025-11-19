@interface DOCFileProviderSyncStateProvider
- (void)didUpdateSyncInAppMessage;
- (void)didUpdateSyncProgress;
@end

@implementation DOCFileProviderSyncStateProvider

- (void)didUpdateSyncProgress
{
  v2 = *(self->super.isa + 21);

  v3 = v2();
  if (v3)
  {
    v4 = v3;
    v3();

    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v4);
  }

  else
  {
  }
}

- (void)didUpdateSyncInAppMessage
{
  v2 = *(self->super.isa + 25);

  v3 = v2();
  if (v3)
  {
    v4 = v3;
    v3();

    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v4);
  }

  else
  {
  }
}

@end