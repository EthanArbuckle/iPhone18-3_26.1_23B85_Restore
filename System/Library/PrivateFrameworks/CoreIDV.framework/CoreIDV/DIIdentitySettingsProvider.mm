@interface DIIdentitySettingsProvider
- (BOOL)isDocumentProviderExtensionEnabledFor:(id)a3;
- (void)setDocumentProviderExtensionEnablementFor:(id)a3 to:(BOOL)a4;
- (void)showDocumentProviderExtensionFor:(NSString *)a3 completion:(id)a4;
@end

@implementation DIIdentitySettingsProvider

- (void)showDocumentProviderExtensionFor:(NSString *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19190, &qword_21CD8E260);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v19 - v10;
  v12 = _Block_copy(a4);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_21CD83D74();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_21CD8EF48;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_21CD8E390;
  v16[5] = v15;
  v17 = a3;
  v18 = self;
  sub_21CD01F00(0, 0, v11, &unk_21CD8E280, v16);
}

- (BOOL)isDocumentProviderExtensionEnabledFor:(id)a3
{
  v4 = sub_21CD83B24();
  v6 = v5;
  v7 = self;
  LOBYTE(v4) = sub_21CD00C40(v4, v6);

  return v4 & 1;
}

- (void)setDocumentProviderExtensionEnablementFor:(id)a3 to:(BOOL)a4
{
  v6 = sub_21CD83B24();
  v8 = v7;
  v9 = self;
  sub_21CD00E98(v6, v8, a4);
}

@end