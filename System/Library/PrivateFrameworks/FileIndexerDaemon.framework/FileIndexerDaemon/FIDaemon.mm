@interface FIDaemon
- (void)appRegistry:(id)registry didRemoveAppsWithBundleIDs:(id)ds;
- (void)appRegistry:(id)registry didUpdateApps:(id)apps;
@end

@implementation FIDaemon

- (void)appRegistry:(id)registry didUpdateApps:(id)apps
{
  sub_24AB943C0(0, &unk_27EF95DC8, 0x277CC6388);
  v6 = sub_24ABABFFC();
  registryCopy = registry;
  selfCopy = self;
  sub_24ABA2B90(v6, &unk_285E1D508, sub_24ABA47BC, &block_descriptor_229);
}

- (void)appRegistry:(id)registry didRemoveAppsWithBundleIDs:(id)ds
{
  v6 = sub_24ABABFFC();
  registryCopy = registry;
  selfCopy = self;
  sub_24ABA2B90(v6, &unk_285E1D4B8, sub_24ABA47B4, &block_descriptor_223);
}

@end