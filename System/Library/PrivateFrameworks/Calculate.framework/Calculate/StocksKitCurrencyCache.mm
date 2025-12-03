@interface StocksKitCurrencyCache
+ (BOOL)isEnabled;
+ (_TtC9Calculate22StocksKitCurrencyCache)shared;
- (NSDictionary)currencyData;
- (_TtC9Calculate22StocksKitCurrencyCache)init;
- (void)refreshWithCompletionHandler:(id)handler;
- (void)refreshWithTimeout:(double)timeout completionHandler:(id)handler;
@end

@implementation StocksKitCurrencyCache

+ (_TtC9Calculate22StocksKitCurrencyCache)shared
{
  if (qword_1EDC2F390 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDC2F398;

  return v3;
}

+ (BOOL)isEnabled
{
  if (MEMORY[0x1E69D4828])
  {
    v2 = MEMORY[0x1E69D4830] == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2 && MEMORY[0x1E69D4840] != 0 && MEMORY[0x1E69D4820] != 0 && MEMORY[0x1E69D4838] != 0;
}

- (void)refreshWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21288, &qword_1C1F56D58);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1C1F527A4();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1C1F57068;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1C1F57070;
  v13[5] = v12;
  selfCopy = self;
  sub_1C1EC1A4C(0, 0, v8, &unk_1C1F57078, v13);
}

- (void)refreshWithTimeout:(double)timeout completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21288, &qword_1C1F56D58);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  *(v12 + 16) = timeout;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = sub_1C1F527A4();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1C1F57048;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1C1F57050;
  v15[5] = v14;
  selfCopy = self;
  sub_1C1EC1A4C(0, 0, v10, &unk_1C1F57058, v15);
}

- (NSDictionary)currencyData
{
  sub_1C1EC25F0(MEMORY[0x1E69E7CC0]);
  sub_1C1EC353C();
  v2 = sub_1C1F52344();

  return v2;
}

- (_TtC9Calculate22StocksKitCurrencyCache)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for StocksKitCurrencyCache();
  return [(StocksKitCurrencyCache *)&v3 init];
}

@end