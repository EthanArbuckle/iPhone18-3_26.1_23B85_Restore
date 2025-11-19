@interface StocksKitCurrencyCacheImpl
- (BOOL)initializeSynchronously;
- (BOOL)needsRefresh;
- (BOOL)refreshSynchronously;
- (BOOL)refreshSynchronouslyWithTimeout:(double)a3;
- (NSDictionary)currencyData;
- (void)refreshWithCompletionHandler:(id)a3;
- (void)refreshWithTimeout:(double)a3 completionHandler:(id)a4;
@end

@implementation StocksKitCurrencyCacheImpl

- (void)refreshWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21288, &qword_1C1F56D58);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1C1F527A4();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1C1F57028;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1C1F57030;
  v13[5] = v12;
  v14 = self;
  sub_1C1EC1A4C(0, 0, v8, &unk_1C1F57038, v13);
}

- (void)refreshWithTimeout:(double)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21288, &qword_1C1F56D58);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = sub_1C1F527A4();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1C1F56FE0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1C1F56FF0;
  v15[5] = v14;
  v16 = self;
  sub_1C1EC1A4C(0, 0, v10, &unk_1C1F57000, v15);
}

- (BOOL)refreshSynchronouslyWithTimeout:(double)a3
{
  v4 = self;
  v5 = StocksKitCurrencyCacheImpl.refreshSynchronously(timeout:)(a3);

  return v5;
}

- (BOOL)initializeSynchronously
{
  v2 = self;
  v3 = StocksKitCurrencyCacheImpl.initializeSynchronously()();

  return v3;
}

- (BOOL)refreshSynchronously
{
  v2 = self;
  v3 = StocksKitCurrencyCacheImpl.refreshSynchronously(timeout:)(0.0);

  return v3;
}

- (BOOL)needsRefresh
{
  v2 = self;
  v3 = StocksKitCurrencyCacheImpl.needsRefresh.getter();

  return v3 & 1;
}

- (NSDictionary)currencyData
{
  v2 = self;
  v3 = StocksKitCurrencyCacheImpl.currencyData.getter();

  if (v3)
  {
    sub_1C1EC353C();
    v4 = sub_1C1F52344();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end