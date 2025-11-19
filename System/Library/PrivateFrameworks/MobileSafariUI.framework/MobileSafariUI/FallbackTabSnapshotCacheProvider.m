@interface FallbackTabSnapshotCacheProvider
+ (FallbackTabSnapshotCacheProvider)defaultProvider;
- (BOOL)tabSnapshotCache:(id)a3 canAcceptRequestForIdentifier:(id)a4;
- (FallbackTabSnapshotCacheProvider)init;
- (id)URLProvider;
- (id)sizingProviders;
- (void)setURLProviderWithTabGroupManager:(id)a3;
- (void)tabSnapshotCache:(id)a3 requestSnapshotWithIdentifier:(id)a4 completion:(id)a5;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
- (void)webView:(void *)a3 didFailNavigation:(void *)a4 withError:(void *)a5;
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

- (void)setURLProviderWithTabGroupManager:(id)a3
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v9[4] = sub_215A26120;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_215A21444;
  v9[3] = &block_descriptor_9;
  v6 = _Block_copy(v9);
  v7 = a3;
  v8 = self;

  [(FallbackTabSnapshotCacheProvider *)v8 setURLProvider:v6];

  _Block_release(v6);
}

- (void)webView:(void *)a3 didFailNavigation:(void *)a4 withError:(void *)a5
{
  v8 = a3;
  v9 = a4;
  v11 = a5;
  v10 = a1;
  sub_215A25C7C(v8, 0);
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

- (void)tabSnapshotCache:(id)a3 requestSnapshotWithIdentifier:(id)a4 completion:(id)a5
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
  v18 = _Block_copy(a5);
  if (a4)
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
  v23 = self;

  v24 = sub_215A706B0();
  v25 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  v26[2] = v24;
  v26[3] = v27;
  v26[4] = v23;
  sub_215A26130(v15, v26 + v25, &unk_27CA7DF80);
  v28 = (v26 + ((v13 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v28 = sub_215A180C4;
  v28[1] = v21;
  sub_215A20960(0, 0, v10, &unk_215A96F08, v26);

  sub_21583F14C(v17, &unk_27CA7DF80);
}

- (BOOL)tabSnapshotCache:(id)a3 canAcceptRequestForIdentifier:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DF80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  if (a4)
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

  v12 = a3;
  v13 = self;
  v14 = sub_215A259A8(v9);

  sub_21583F14C(v9, &unk_27CA7DF80);
  return v14 & 1;
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_215A25C7C(v6, 1);
}

@end