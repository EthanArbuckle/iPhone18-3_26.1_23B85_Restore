@interface FallbackTabSnapshotCacheProvider
+ (FallbackTabSnapshotCacheProvider)defaultProvider;
- (BOOL)tabSnapshotCache:(id)cache canAcceptRequestForIdentifier:(id)identifier;
- (FallbackTabSnapshotCacheProvider)init;
- (id)URLProvider;
- (id)sizingProviders;
- (void)setURLProviderWithTabGroupManager:(id)manager;
- (void)tabSnapshotCache:(id)cache requestSnapshotWithIdentifier:(id)identifier completion:(id)completion;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
- (void)webView:(void *)view didFailNavigation:(void *)navigation withError:(void *)error;
@end

@implementation FallbackTabSnapshotCacheProvider

+ (FallbackTabSnapshotCacheProvider)defaultProvider
{
  if (qword_2811A21E8 != -1)
  {
    swift_once();
  }

  v3 = qword_2811A2790;

  return v3;
}

- (FallbackTabSnapshotCacheProvider)init
{
  *(self + OBJC_IVAR___FallbackTabSnapshotCacheProvider_contentProvider) = 0;
  v3 = (self + OBJC_IVAR___FallbackTabSnapshotCacheProvider_urlProvider);
  *v3 = sub_215A21320;
  v3[1] = 0;
  v4 = OBJC_IVAR___FallbackTabSnapshotCacheProvider_generator;
  *(self + v4) = [objc_allocWithZone(TabSnapshotGenerator) init];
  *(self + OBJC_IVAR___FallbackTabSnapshotCacheProvider____lazy_storage___networkMonitor) = 0;
  v5 = (self + OBJC_IVAR___FallbackTabSnapshotCacheProvider_sizingProviders);
  *v5 = sub_215A217AC;
  v5[1] = 0;
  v7.receiver = self;
  v7.super_class = FallbackTabSnapshotCacheProvider;
  return [(FallbackTabSnapshotCacheProvider *)&v7 init];
}

- (void)setURLProviderWithTabGroupManager:(id)manager
{
  v5 = swift_allocObject();
  *(v5 + 16) = manager;
  v9[4] = sub_215A26120;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_215A21444;
  v9[3] = &block_descriptor_9;
  v6 = _Block_copy(v9);
  managerCopy = manager;
  selfCopy = self;

  [(FallbackTabSnapshotCacheProvider *)selfCopy setURLProvider:v6];

  _Block_release(v6);
}

- (void)webView:(void *)view didFailNavigation:(void *)navigation withError:(void *)error
{
  viewCopy = view;
  navigationCopy = navigation;
  errorCopy = error;
  selfCopy = self;
  sub_215A25C7C(viewCopy, 0);
}

- (id)URLProvider
{
  v2 = *(self + OBJC_IVAR___FallbackTabSnapshotCacheProvider_urlProvider + 8);
  v5[4] = *(self + OBJC_IVAR___FallbackTabSnapshotCacheProvider_urlProvider);
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_215A21444;
  v5[3] = &block_descriptor_37;
  v3 = _Block_copy(v5);

  return v3;
}

- (id)sizingProviders
{
  v2 = *(self + OBJC_IVAR___FallbackTabSnapshotCacheProvider_sizingProviders + 8);
  v5[4] = *(self + OBJC_IVAR___FallbackTabSnapshotCacheProvider_sizingProviders);
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_215A21870;
  v5[3] = &block_descriptor_31_0;
  v3 = _Block_copy(v5);

  return v3;
}

- (void)tabSnapshotCache:(id)cache requestSnapshotWithIdentifier:(id)identifier completion:(id)completion
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E060);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DF80);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - v16;
  v18 = _Block_copy(completion);
  if (identifier)
  {
    sub_215A6F950();
    v19 = sub_215A6F960();
    (*(*(v19 - 8) + 56))(v17, 0, 1, v19);
  }

  else
  {
    v20 = sub_215A6F960();
    (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  }

  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  v22 = sub_215A706E0();
  (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
  sub_215A07074(v17, v15, &unk_27CA7DF80);
  sub_215A706C0();
  selfCopy = self;

  v24 = sub_215A706B0();
  v25 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  v26[2] = v24;
  v26[3] = v27;
  v26[4] = selfCopy;
  sub_215A26130(v15, v26 + v25, &unk_27CA7DF80);
  v28 = (v26 + ((v13 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v28 = sub_215A180C4;
  v28[1] = v21;
  sub_215A20960(0, 0, v10, &unk_215A96F08, v26);

  sub_21583F14C(v17, &unk_27CA7DF80);
}

- (BOOL)tabSnapshotCache:(id)cache canAcceptRequestForIdentifier:(id)identifier
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DF80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  if (identifier)
  {
    sub_215A6F950();
    v10 = sub_215A6F960();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_215A6F960();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  cacheCopy = cache;
  selfCopy = self;
  v14 = sub_215A259A8(v9);

  sub_21583F14C(v9, &unk_27CA7DF80);
  return v14 & 1;
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  viewCopy = view;
  navigationCopy = navigation;
  selfCopy = self;
  sub_215A25C7C(viewCopy, 1);
}

@end