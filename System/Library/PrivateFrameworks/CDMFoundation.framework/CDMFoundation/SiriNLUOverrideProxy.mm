@interface SiriNLUOverrideProxy
- (BOOL)isOverrideStoreValid;
- (id)matchWithInputs:(id)a3 overrideNamespace:(int)a4;
- (id)matchWithInputs:(id)a3 shouldAppend:(BOOL *)a4;
- (void)preheatWithLanguageCode:(id)a3;
@end

@implementation SiriNLUOverrideProxy

- (id)matchWithInputs:(id)a3 shouldAppend:(BOOL *)a4
{
  sub_1DC298C74(0, &qword_1EDAC7F98, 0x1E69D1338);
  v6 = sub_1DC517A1C();
  v7 = self;
  sub_1DC2C1648(v6, a4);

  sub_1DC298C74(0, &qword_1ECC7B948, 0x1E69D1240);
  v8 = sub_1DC517A0C();

  return v8;
}

- (void)preheatWithLanguageCode:(id)a3
{
  sub_1DC51772C();
  v4 = self;
  sub_1DC2C5CD4();
}

- (BOOL)isOverrideStoreValid
{
  v2 = self;
  v3 = sub_1DC401068();

  return v3 & 1;
}

- (id)matchWithInputs:(id)a3 overrideNamespace:(int)a4
{
  sub_1DC298C74(0, &qword_1EDAC7F98, 0x1E69D1338);
  sub_1DC517A1C();
  v5 = self;
  v6 = sub_1DC4014C8();

  return v6;
}

@end