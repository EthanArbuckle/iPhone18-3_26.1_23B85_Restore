@interface SiriNLUOverrideProxy
- (BOOL)isOverrideStoreValid;
- (id)matchWithInputs:(id)inputs overrideNamespace:(int)namespace;
- (id)matchWithInputs:(id)inputs shouldAppend:(BOOL *)append;
- (void)preheatWithLanguageCode:(id)code;
@end

@implementation SiriNLUOverrideProxy

- (id)matchWithInputs:(id)inputs shouldAppend:(BOOL *)append
{
  sub_1DC298C74(0, &qword_1EDAC7F98, 0x1E69D1338);
  v6 = sub_1DC517A1C();
  selfCopy = self;
  sub_1DC2C1648(v6, append);

  sub_1DC298C74(0, &qword_1ECC7B948, 0x1E69D1240);
  v8 = sub_1DC517A0C();

  return v8;
}

- (void)preheatWithLanguageCode:(id)code
{
  sub_1DC51772C();
  selfCopy = self;
  sub_1DC2C5CD4();
}

- (BOOL)isOverrideStoreValid
{
  selfCopy = self;
  v3 = sub_1DC401068();

  return v3 & 1;
}

- (id)matchWithInputs:(id)inputs overrideNamespace:(int)namespace
{
  sub_1DC298C74(0, &qword_1EDAC7F98, 0x1E69D1338);
  sub_1DC517A1C();
  selfCopy = self;
  v6 = sub_1DC4014C8();

  return v6;
}

@end