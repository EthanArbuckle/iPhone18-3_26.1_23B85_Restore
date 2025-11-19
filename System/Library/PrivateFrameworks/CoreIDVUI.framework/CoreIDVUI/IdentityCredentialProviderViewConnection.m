@interface IdentityCredentialProviderViewConnection
- (void)dismissWithCompletionHandler:(id)a3;
- (void)presentAuthorizationViewFromAuxiliaryViewWithRequest:(_TtC13CoreIDVShared43XPCMobileDocumentProviderPresentmentRequest *)a3 completionHandler:(id)a4;
- (void)presentAuthorizationViewFromSelectionViewWithRequest:(_TtC13CoreIDVShared43XPCMobileDocumentProviderPresentmentRequest *)a3 completionHandler:(id)a4;
- (void)presentAuxiliaryView:(_TtC13CoreIDVShared38XPCMobileDocumentProviderAuxiliaryView *)a3 completionHandler:(id)a4;
- (void)presentScannableCodeViewWithPayload:(NSURL *)a3 completionHandler:(id)a4;
- (void)presentSelectionViewFromAuxiliaryViewWithConfiguration:(_TtC13CoreIDVShared51XPCMobileDocumentProviderLocalOptionUIConfiguration *)a3 completionHandler:(id)a4;
@end

@implementation IdentityCredentialProviderViewConnection

- (void)dismissWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_245910D64();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_24591F2F0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_24591F2F8;
  v12[5] = v11;

  sub_2459090D0(0, 0, v7, &unk_24591F300, v12);
}

- (void)presentAuthorizationViewFromSelectionViewWithRequest:(_TtC13CoreIDVShared43XPCMobileDocumentProviderPresentmentRequest *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_245910D64();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_24591F2C8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_24591F2D0;
  v14[5] = v13;
  v15 = a3;

  sub_2459090D0(0, 0, v9, &unk_24591F2D8, v14);
}

- (void)presentScannableCodeViewWithPayload:(NSURL *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_245910D64();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_24591F2A0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_24591F2A8;
  v14[5] = v13;
  v15 = a3;

  sub_2459090D0(0, 0, v9, &unk_24591F2B0, v14);
}

- (void)presentAuxiliaryView:(_TtC13CoreIDVShared38XPCMobileDocumentProviderAuxiliaryView *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_245910D64();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_24591F278;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_24591F280;
  v14[5] = v13;
  v15 = a3;

  sub_2459090D0(0, 0, v9, &unk_24591F288, v14);
}

- (void)presentSelectionViewFromAuxiliaryViewWithConfiguration:(_TtC13CoreIDVShared51XPCMobileDocumentProviderLocalOptionUIConfiguration *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_245910D64();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_24591F250;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_24591F258;
  v14[5] = v13;
  v15 = a3;

  sub_2459090D0(0, 0, v9, &unk_24591F260, v14);
}

- (void)presentAuthorizationViewFromAuxiliaryViewWithRequest:(_TtC13CoreIDVShared43XPCMobileDocumentProviderPresentmentRequest *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_245910D64();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_24591F200;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_24591D030;
  v14[5] = v13;
  v15 = a3;

  sub_2459090D0(0, 0, v9, &unk_24591CD60, v14);
}

@end