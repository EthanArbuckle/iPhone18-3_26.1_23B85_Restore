@interface ITunesStoreAPIInit
@end

@implementation ITunesStoreAPIInit

void ___ITunesStoreAPIInit_block_invoke()
{
  if (!kITunesDaemonDidDismissDialog)
  {
    v0 = MEMORY[0x193AF5ED0]("kITunesDaemonDidDismissDialog", @"iTunesStore");
    if (v0)
    {
      v1 = *v0;
    }

    else
    {
      v1 = 0;
    }

    objc_storeStrong(&kITunesDaemonDidDismissDialog, v1);
  }

  if (!kITunesDaemonWillDisplayDialog)
  {
    v2 = MEMORY[0x193AF5ED0]("kITunesDaemonWillDisplayDialog", @"iTunesStore");
    if (v2)
    {
      v3 = *v2;
    }

    else
    {
      v3 = 0;
    }

    objc_storeStrong(&kITunesDaemonWillDisplayDialog, v3);
  }
}

@end