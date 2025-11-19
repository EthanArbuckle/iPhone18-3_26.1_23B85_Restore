@interface GPServiceSideExportedObject
- (void)didDismissPickerWithStagedAssets:(id)a3;
- (void)didFinishServiceConfiguration;
- (void)routeTo:(int64_t)a3;
- (void)setAllowedGenerationStyles:(id)a3;
- (void)setIsLoadingRecipe:(BOOL)a3;
- (void)setPreviewAspectRatio:(id)a3;
- (void)setPromptElements:(id)a3;
- (void)setRecipeData:(id)a3;
- (void)setResponsibleAuditToken:(id)a3;
- (void)setSourceImage:(id)a3;
- (void)startUpscaling;
@end

@implementation GPServiceSideExportedObject

- (void)didFinishServiceConfiguration
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_1D28785F8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1D2878568();
  swift_retain_n();
  v7 = sub_1D2878558();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = self;
  sub_1D22AE01C(0, 0, v5, &unk_1D28ACDF8, v8);
}

- (void)setResponsibleAuditToken:(id)a3
{
  v3 = a3;
  sub_1D2870F78();
  v4 = sub_1D28716E8();
  v6 = v5;

  sub_1D285D0DC(v4, v6);
  sub_1D22D6D60(v4, v6);
}

- (void)setPromptElements:(id)a3
{
  sub_1D22BCFD0(0, &qword_1EC6D9418);
  v3 = sub_1D28783E8();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  sub_1D2870F78();
  sub_1D2855B38(sub_1D2852B54, 0, sub_1D285FB68, v4);
}

- (void)setAllowedGenerationStyles:(id)a3
{
  sub_1D22BCFD0(0, &qword_1EC6D9420);
  v3 = sub_1D28783E8();
  v4 = v3;
  if (v3 >> 62)
  {
    if (sub_1D2879368())
    {
      goto LABEL_3;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    sub_1D2870F78();
    sub_1D2855B38(sub_1D2852F9C, 0, sub_1D285FB64, v5);

    return;
  }
}

- (void)setIsLoadingRecipe:(BOOL)a3
{
  v4 = swift_allocObject();
  *(v4 + 16) = a3;
  sub_1D2870F78();
  sub_1D2855B38(sub_1D2853740, 0, sub_1D285FB5C, v4);
}

- (void)setRecipeData:(id)a3
{
  if (a3)
  {
    sub_1D2870F78();
    v4 = a3;
    v5 = sub_1D28716E8();
    v7 = v6;

    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    *(v8 + 24) = v7;
    sub_1D22D6CF8(v5, v7);
    sub_1D2855B38(sub_1D28539E0, 0, sub_1D285FB30, v8);

    sub_1D22D6D60(v5, v7);
  }
}

- (void)setSourceImage:(id)a3
{
  v4 = swift_allocObject();
  *(v4 + 16) = a3;
  v5 = a3;
  sub_1D2870F78();
  sub_1D2855B38(sub_1D2853E4C, 0, sub_1D285FB58, v4);
}

- (void)setPreviewAspectRatio:(id)a3
{
  v4 = sub_1D2871DD8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  v11 = a3;
  sub_1D2870F78();
  [v11 floatValue];
  sub_1D2871DB8();
  (*(v5 + 16))(v7, v10, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v7, v4);
  sub_1D2855B38(sub_1D285477C, 0, sub_1D285FBAC, v13);

  (*(v5 + 8))(v10, v4);
}

- (void)startUpscaling
{
  sub_1D2870F78();
  sub_1D2855B38(sub_1D285521C, 0, sub_1D2855228, 0);
}

- (void)routeTo:(int64_t)a3
{
  v4 = swift_allocObject();
  *(v4 + 16) = a3;
  sub_1D2870F78();
  sub_1D2855B38(sub_1D2855448, 0, sub_1D285FB50, v4);
}

- (void)didDismissPickerWithStagedAssets:(id)a3
{
  sub_1D22BCFD0(0, &qword_1EC6D9420);
  v3 = sub_1D28783E8();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  sub_1D2870F78();
  sub_1D2855B38(sub_1D28558AC, 0, sub_1D285FB44, v4);
}

@end