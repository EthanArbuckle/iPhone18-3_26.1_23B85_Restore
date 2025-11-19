@interface FIDaemon
- (void)appRegistry:(id)a3 didRemoveAppsWithBundleIDs:(id)a4;
- (void)appRegistry:(id)a3 didUpdateApps:(id)a4;
@end

@implementation FIDaemon

- (void)appRegistry:(id)a3 didUpdateApps:(id)a4
{
  sub_24AB943C0(0, &unk_27EF95DC8, 0x277CC6388);
  v6 = sub_24ABABFFC();
  v7 = a3;
  v8 = self;
  sub_24ABA2B90(v6, &unk_285E1D508, sub_24ABA47BC, &block_descriptor_229);
}

- (void)appRegistry:(id)a3 didRemoveAppsWithBundleIDs:(id)a4
{
  v6 = sub_24ABABFFC();
  v7 = a3;
  v8 = self;
  sub_24ABA2B90(v6, &unk_285E1D4B8, sub_24ABA47B4, &block_descriptor_223);
}

@end