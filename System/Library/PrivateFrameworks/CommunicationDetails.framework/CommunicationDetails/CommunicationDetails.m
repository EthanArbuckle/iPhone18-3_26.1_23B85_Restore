uint64_t sub_19011B254()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19011B2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContactCardActionsProvider();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_19011B374(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ContactCardActionsProvider();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19011B42C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19011B46C()
{
  MEMORY[0x193AEBC30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19011B4A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_19011B4DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19011B55C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19011B594()
{
  if (*(v0 + 16))
  {
  }

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 312, 7);
}

uint64_t sub_19011B6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails12BlendedColorVSgMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_19011B788(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails12BlendedColorVSgMd);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19011B84C()
{
  MEMORY[0x193AEBC30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19011B884()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19011B8E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16_OverlayModifierVyAA21StrokeBorderShapeViewVyAA6CircleVAA5ColorVAA05EmptyH0VGGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19011B950(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16_OverlayModifierVyAA21StrokeBorderShapeViewVyAA6CircleVAA5ColorVAA05EmptyH0VGGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19011B9C0()
{
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type DetailsMediaBadge and conformance DetailsMediaBadge();
  return swift_getWitnessTable();
}

uint64_t sub_19011BADC()
{

  if (*(v0 + 88))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 232, 7);
}

uint64_t sub_19011BB78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyAA4TextVAA14_OpacityEffectVGAA14_PaddingLayoutVGAA011_ForegroundG8ModifierVyAA08AnyShapeG0VGGG_AA05PlainiG0VQo_AMGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_19011BBF8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_19011BC04()
{
  type metadata accessor for DetailsInfoListRowModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for Section();
  lazy protocol witness table accessor for type DetailsInfoListRowModifier and conformance DetailsInfoListRowModifier();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_19011BCC8()
{
  type metadata accessor for DetailsInfoListRowModifier();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type DetailsInfoListRowModifier and conformance DetailsInfoListRowModifier();
  return swift_getWitnessTable();
}

uint64_t sub_19011BD3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails12BlendedColorVSgMd);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_19011BDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails12BlendedColorVSgMd);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_19011BE4C()
{
  v1 = (type metadata accessor for PosterBackgroundView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;

  v6 = v1[7];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy20CommunicationDetails27PosterScrollGeometryTrackerCGMd);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for UserInterfaceSizeClass();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_19011C008(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy20CommunicationDetails27PosterScrollGeometryTrackerCGMd);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMd);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_19011C144(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy20CommunicationDetails27PosterScrollGeometryTrackerCGMd);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMd);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_19011C280()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy08ContactsB027ContactPosterBackgroundViewVAA30_SafeAreaRegionsIgnoringLayoutVGMd);
  lazy protocol witness table accessor for type ModifiedContent<ContactPosterBackgroundView, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>();
  return swift_getOpaqueTypeConformance2();
}

uint64_t _sSo7CGPointVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _sSo7CGPointVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_19011C32C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19011C364()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19011C3A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19011C3E4()
{
  MEMORY[0x193AEBC30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19011C41C()
{
  outlined consume of EditAction(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_19011C46C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19011C4CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void _sSo6CGSizeVSgIgd_ACIegr_TR0897_s20CommunicationDetails6HeaderV10StyleGuideV19preferredTopPadding16usesScrollPocket30quickActionButtonConfiguration0lmN15BackgroundColor0lmn10ForegroundQ00lmn6CornerD00lmN13ContentInsets0lmN4Size0lmN7Spacing0lmgW0014collapsedQuickM11Translation0lm6BottomW00lm6BottomW13ForHiddenTabs06avatargH00x6AvatargH006avatarpD008avatarToc12TextVerticalW00x8AvatarToc12TextVerticalW017singleContactFont019singleContactVStackW018blockedContactFont020blockedContactHStackW005titleQ021editableTextFieldFont017editableTextFieldH0017editableTextFieldP0018groupNameTextFieldH013groupNameFont013defaultAvatarV00x6AvatarV00lmnP8Material0lmnpQ11Transformer20buttonTypeComparatorAE12CoreGraphics7CGFloatV_SbSo8UIButtonC5UIKitE0O0VAA07BlendedQ0VSgSo7UIColorCA18_0sD0OSo017NSDirectionalEdgeU0VA18_0V0OA13_SgA13_A13_A13_A13_A13_A13_7SwiftUI08AnyShapeD0VSgA13_A13_A31_4FontVA13_A36_A13_A23_A36_A31_04EdgeU0VA33_A13_A36_So6A109VA40_A31_8MaterialVSgA16_015UIConfigurationQ11TransformerVSgSbAA0yM4ViewC0N4TypeO_A50_tctcfcfA27_A40_Sgycfu2_Tf3npf_n_0(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t sub_19011C52C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 88);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for UIButton.Configuration();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[23];
LABEL_15:
    v16 = *(v10 + 48);

    return v16(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails12BlendedColorVSgMd);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[24];
    goto LABEL_15;
  }

  v13 = type metadata accessor for UIButton.Configuration.CornerStyle();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[26];
    goto LABEL_15;
  }

  v14 = type metadata accessor for UIButton.Configuration.Size();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[28];
    goto LABEL_15;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8MaterialVSgMd);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[34];
    goto LABEL_15;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit31UIConfigurationColorTransformerVSgMd);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[35];

  return v18(v19, a2, v17);
}

uint64_t sub_19011C794(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 88) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for UIButton.Configuration();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[23];
LABEL_13:
    v16 = *(v10 + 56);

    return v16(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails12BlendedColorVSgMd);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[24];
    goto LABEL_13;
  }

  v13 = type metadata accessor for UIButton.Configuration.CornerStyle();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[26];
    goto LABEL_13;
  }

  v14 = type metadata accessor for UIButton.Configuration.Size();
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[28];
    goto LABEL_13;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8MaterialVSgMd);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[34];
    goto LABEL_13;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit31UIConfigurationColorTransformerVSgMd);
  v18 = *(*(v17 - 8) + 56);
  v19 = v5 + a4[35];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_19011C9FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19011CA34()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19011CA6C()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_19011CAA8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19011CAE8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t _sSo16CNVisualIdentityCIegg_SgWOe_0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_19011CB08()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19011CB5C()
{
  MEMORY[0x193AEBC30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19011CB94()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19011CBDC()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_19011CC30()
{
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type HorizontalFadeAndBlur and conformance HorizontalFadeAndBlur();
  return swift_getWitnessTable();
}

uint64_t sub_19011CCA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Material();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_19011CD0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Material();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_19011CD9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Image.Scale();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_19011CE48(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Image.Scale();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19011CEEC()
{
  MEMORY[0x193AEBC30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19011CF24()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_19011CF7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Alert.Button();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_19011D028(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Alert.Button();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19011D0CC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails010DebugAlertD0VGMd);
  lazy protocol witness table accessor for type _ViewModifier_Content<DebugAlertModifier> and conformance _ViewModifier_Content<A>();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_19011D130()
{
  type metadata accessor for DebugAlertModifier();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type DebugAlertModifier and conformance DebugAlertModifier();
  return swift_getWitnessTable();
}

uint64_t sub_19011D1A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9BlendModeOSgMd);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_19011D2DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9BlendModeOSgMd);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t _sSo29UIFontDescriptorAttributeNameaSYSCSY8rawValue03RawF0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_19011D474()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19011D4AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19011D4E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_19011D534()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19011D584()
{
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type VerticalScrollViewFade and conformance VerticalScrollViewFade();
  return swift_getWitnessTable();
}

uint64_t sub_19011D5EC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19011D62C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19011D664()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_19011D744()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_19011D7D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo14PHPhotoLibraryCSg_So14PHConversationCSgts5NeverOGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_19011D8FC()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_19011D988()
{
  MEMORY[0x193AEBC30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19011D9C0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19011DA00()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_19011DA48()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19011DA84()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA4ViewP20CommunicationDetailsE22contactCellHoverEffectQryFQOyAA6VStackVyAA05TupleD0VyAA15ModifiedContentVyAMyAMyAA6ZStackVyAKyAA06_ShapeD0VyAA6CircleVAA03AnyP5StyleVG_AMyAMyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAX5ScaleOGGAZyAA4FontVSgGGAZyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVG_AMyAIyAMyAMyAMyAA4TextVAZySiSgGGA6_GA11_GGA22_GtGG_Qo_GMd);
  type metadata accessor for PlainButtonStyle();
  lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(_ShapeView<Circle, AnyShapeStyle>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>>, _AspectRatioLayout>, _FlexFrameLayout>, _PaddingLayout>, ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>>, _PaddingLayout>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Button<<<opaque return type of View.contactCellHoverEffect()>>.0> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4ViewP20CommunicationDetailsE22contactCellHoverEffectQryFQOyAA6VStackVyAA05TupleD0VyAA15ModifiedContentVyAMyAMyAA6ZStackVyAKyAA06_ShapeD0VyAA6CircleVAA03AnyP5StyleVG_AMyAMyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAX5ScaleOGGAZyAA4FontVSgGGAZyAA5ColorVSgGGtGGAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVG_AMyAIyAMyAMyAMyAA4TextVAZySiSgGGA6_GA11_GGA22_GtGG_Qo_GMd);
  lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle();
  return swift_getOpaqueTypeConformance2();
}

double _s7SwiftUI10EdgeInsetsVSgIgd_ADIegr_TR073_s20CommunicationDetails17AttachmentResultsV10StyleGuideV7defaultAEvpZfi7a4UI10cD11VSgyXEfu43_Tf3npf_n_0@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

uint64_t sub_19011DB70(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for BlendedColor();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 96);

    return v9(v10, a2, v8);
  }
}

void *sub_19011DC1C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for BlendedColor();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 96);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19011DCC0()
{
  MEMORY[0x193AEBC30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19011DCF8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19011DD38()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_19011DD90(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Header.StyleGuide();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_19011DE3C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Header.StyleGuide();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19011DEE0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for DetailsStyleGuide();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_19011DF8C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DetailsStyleGuide();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19011E030()
{
  type metadata accessor for DetailsViewControllerRepresentable(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyyt20CommunicationDetails04EditcH0VGQo_Md);
  lazy protocol witness table accessor for type DetailsViewControllerRepresentable and conformance DetailsViewControllerRepresentable();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyyt20CommunicationDetails04EditcD0VGMd);
  lazy protocol witness table accessor for type ToolbarItem<(), EditToolbarItem> and conformance ToolbarItem<A, B>();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_19011E0F0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19011E134()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19011E17C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19011E1B4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19011E1FC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19011E234()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_19011E29C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4MenuVyAA4TextVAA7ForEachVySay20CommunicationDetails10EditActionOGAjA6ButtonVyAA5LabelVyAeA5ImageVGGGGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s20CommunicationDetails0B3TabVSgMd);
  lazy protocol witness table accessor for type Button<Label<Text, Image>> and conformance Button<A>(&lazy protocol witness table cache variable for type Menu<Text, ForEach<[EditAction], EditAction, Button<Label<Text, Image>>>> and conformance Menu<A, B>, &_s7SwiftUI4MenuVyAA4TextVAA7ForEachVySay20CommunicationDetails10EditActionOGAjA6ButtonVyAA5LabelVyAeA5ImageVGGGGMd);
  lazy protocol witness table accessor for type DetailsTab? and conformance <A> A?();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_19011E358()
{
  outlined consume of EditAction(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  if (*(v0 + 96))
  {
  }

  MEMORY[0x193AEBC30](v0 + 152);

  return MEMORY[0x1EEE6BDD0](v0, 168, 7);
}

uint64_t sub_19011E3EC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_19011E40C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19011E44C()
{
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type ParticipantView.AddContactButtonBadgeOverlay and conformance ParticipantView.AddContactButtonBadgeOverlay();
  return swift_getWitnessTable();
}

uint64_t sub_19011E4B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_19011E500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for DetailsStyleGuide();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_19011E5AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DetailsStyleGuide();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19011E650()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_19011E770()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19011E7B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19011E7F0()
{
  type metadata accessor for DetailsScrollView.HeaderBodyLayout();
  swift_getWitnessTable();
  type metadata accessor for _LayoutRoot();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6SpacerVSgMd);
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy20CommunicationDetails0F15HeaderContainer33_2DB30AA36CA0269A8F3FE974D4E61064LLVAA21_TraitWritingModifierVyAA07_LayoutQ0VyAD0fgH3KeyAFLLVGGGAA13_OffsetEffectVGAA06_FrameT0VGMd);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for _VariadicView.Tree();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  type metadata accessor for DetailsScrollView.DetailsScrollBehavior();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type DetailsContentOffsetProxy.ScrollMetrics and conformance DetailsContentOffsetProxy.ScrollMetrics();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI23_GeometryActionModifierVy12CoreGraphics7CGFloatVGMd);
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type _GeometryActionModifier<CGFloat> and conformance _GeometryActionModifier<A>(&lazy protocol witness table cache variable for type _GeometryActionModifier<CGFloat> and conformance _GeometryActionModifier<A>, &_s7SwiftUI23_GeometryActionModifierVy12CoreGraphics7CGFloatVGMd);
  return swift_getWitnessTable();
}

uint64_t sub_19011EE44()
{
  MEMORY[0x193AEBC30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19011EE90(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Header.StyleGuide();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_19011EFC0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Header.StyleGuide();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_19011F134()
{
  MEMORY[0x193AEBC30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19011F16C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_19011F1F4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_19011F2B8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19011F2FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 16);
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for Header.StyleGuide();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 64);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_19011F3A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 16) = a2 + 2;
  }

  else
  {
    v7 = type metadata accessor for Header.StyleGuide();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 64);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19011F440()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewP20CommunicationDetailsE22contactCellHoverEffectQryFQOyAA15ModifiedContentVyAcAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleC0VyAcAE12onTapGesture5count7performQrSi_yyctFQOyAGyAGyAcDE22participantContextMenu9viewModel17presentationProxy13previewTargetQrAD011ParticipantC0V0C5ModelC_AD0E17PresentationProxyCSgAX0Z4MenuV13PreviewTargetOtFQOyAcDE28addContactButtonBadgeOverlay19addToContactsButton17isAddedToContactsQrAA03AnyC0V_SbtFQOyAC017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAcAE18confirmationDialog_A14_15titleVisibility7actionsQrqd___A20_AA10VisibilityOqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAcAEA21__A14_A22_A23_Qrqd___A20_A25_qd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAGyAGy08ContactsB006AvatarC0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA6ButtonVyAA4TextVGQo__SSA39_Qo__Qo__Qo__Qo_AA14_PaddingLayoutVGA33_G_Qo__AGyAMyAOyAGyAGyAGyAGyA38_AA30_EnvironmentKeyWritingModifierVySiSgGGA51_yAA4FontVSgGGA51_yAA5ColorVSgGGAA0O18AttachmentModifierVG_AcDE20shouldHideBlockLabelyQrSbFQOyAX12BlockedLabelV_Qo_AGyAcAE14contentMargins__A13_QrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0K15MarginPlacementVtFQOyAX17AddToContactsMenuV_Qo_A66_GSgtGGA46_GtGG_Qo_A66_G_Qo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleE0VyAeAE12onTapGesture5count7performQrSi_yyctFQOyACyACyAE20CommunicationDetailsE22participantContextMenu9viewModel17presentationProxy13previewTargetQrAQ011ParticipantE0V0eY0C_AQ0T17PresentationProxyCSgAW0vW0V13PreviewTargetOtFQOyAeQE28addContactButtonBadgeOverlay19addToContactsButton17isAddedToContactsQrAA03AnyE0V_SbtFQOyAE017DigitalSeparationB0E15showSafetyCheck3for11isPresentedQrSaySo9CNContactCG_AA7BindingVySbGtFQOyAeAE18confirmationDialog_A13_15titleVisibility7actionsQrqd___A19_AA10VisibilityOqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyAeAEA20__A13_A21_A22_Qrqd___A19_A24_qd_0_yXEtSyRd__AaDRd_0_r0_lFQOyACyACy08ContactsB006AvatarE0VAA18_AspectRatioLayoutVGAA16_FlexFrameLayoutVG_SSAA6ButtonVyAA4TextVGQo__SSA38_Qo__Qo__Qo__Qo_AA14_PaddingLayoutVGA32_G_Qo__ACyAKyAMyACyACyACyACyA37_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA4FontVSgGGA50_yAA5ColorVSgGGAA0I18AttachmentModifierVG_AeQE20shouldHideBlockLabelyQrSbFQOyAW12BlockedLabelV_Qo_ACyAeAE14contentMargins__A12_QrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAW013AddToContactsW0V_Qo_A65_GSgtGGA45_GtGG_Qo_A65_GMd);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_19011F4EC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t _sSbs5Error_pSgIeghyg_SgIegg_SgWOe_0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_19011F51C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19011F554()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19011F594()
{
  MEMORY[0x193AEBC30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19011F5D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19011F658(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Header.StyleGuide();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    if ((*(a1 + a3[5] + 64) >> 1) > 0x80000000)
    {
      return -(*(a1 + a3[5] + 64) >> 1);
    }

    else
    {
      return 0;
    }
  }

  v12 = type metadata accessor for AttachmentResults.StyleGuide();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a2)
  {
    v8 = v12;
    v9 = *(v13 + 48);
    v10 = a1 + a3[8];
    goto LABEL_3;
  }

  v14 = type metadata accessor for InfoTab.StyleGuide();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_19011F7D0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for Header.StyleGuide();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    v13 = a1 + a4[5];
    *(v13 + 32) = 0u;
    *(v13 + 48) = 0u;
    *v13 = 0u;
    *(v13 + 16) = 0u;
    *(v13 + 64) = 2 * -a2;
    *(v13 + 72) = 0;
    *(v13 + 80) = 0;
    *(v13 + 88) = 0;
    return result;
  }

  v14 = type metadata accessor for AttachmentResults.StyleGuide();
  v15 = *(v14 - 8);
  if (*(v15 + 84) == a3)
  {
    v10 = v14;
    v11 = *(v15 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v16 = type metadata accessor for InfoTab.StyleGuide();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + a4[9];

  return v17(v18, a2, a2, v16);
}

uint64_t ParticipantView.ContextMenu.QuickActionsSection.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGG_A2UtGGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGG_A2UtGGMd);
  return ControlGroup.init(content:)();
}

uint64_t closure #1 in ParticipantView.ContextMenu.QuickActionsSection.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGG_A2YtGGMd);
  closure #1 in closure #1 in ParticipantView.ContextMenu.QuickActionsSection.body.getter(a1, a2 + *(v4 + 44));
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t closure #1 in closure #1 in ParticipantView.ContextMenu.QuickActionsSection.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  v3 = MEMORY[0x1EEE9AC00](v47);
  v52 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v51 = &v45 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v50 = &v45 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v46 = &v45 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v45 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v45 - v14;
  type metadata accessor for MainActor();
  v48 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(swift_allocObject() + 16) = a1;
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd);
  v17 = Button.init(action:label:)();
  v18 = MEMORY[0x1E69E7D40];
  v19 = (*((*MEMORY[0x1E69E7D40] & *v16) + 0x140))(v17);
  KeyPath = swift_getKeyPath();
  v45 = v15;
  v21 = KeyPath;
  v22 = swift_allocObject();
  *(v22 + 16) = (v19 & 1) == 0;
  v23 = v47;
  v24 = &v15[*(v47 + 36)];
  *v24 = v21;
  *(v24 + 1) = closure #1 in View.disabled(_:)partial apply;
  *(v24 + 2) = v22;
  *(swift_allocObject() + 16) = v16;
  v25 = v16;
  v26 = Button.init(action:label:)();
  v27 = (*((*v18 & *v25) + 0x148))(v26);
  v28 = swift_getKeyPath();
  v29 = swift_allocObject();
  *(v29 + 16) = (v27 & 1) == 0;
  v30 = &v13[*(v23 + 36)];
  *v30 = v28;
  v30[1] = closure #1 in View.disabled(_:)partial apply;
  v30[2] = v29;
  *(swift_allocObject() + 16) = v25;
  v31 = v25;
  v32 = v46;
  v33 = Button.init(action:label:)();
  v34 = (*((*MEMORY[0x1E69E7D40] & *v31) + 0x150))(v33);
  v35 = swift_getKeyPath();
  v36 = swift_allocObject();
  *(v36 + 16) = (v34 & 1) == 0;
  v37 = (v32 + *(v23 + 36));
  *v37 = v35;
  v37[1] = closure #1 in View.disabled(_:)partial apply;
  v37[2] = v36;
  v38 = v45;
  v39 = v50;
  outlined init with copy of Button<Label<Text, Image>>?(v45, v50, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  v40 = v51;
  outlined init with copy of Button<Label<Text, Image>>?(v13, v51, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  v41 = v52;
  outlined init with copy of Button<Label<Text, Image>>?(v32, v52, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  v42 = v49;
  outlined init with copy of Button<Label<Text, Image>>?(v39, v49, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGG_A2QtMd);
  outlined init with copy of Button<Label<Text, Image>>?(v40, v42 + *(v43 + 48), &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  outlined init with copy of Button<Label<Text, Image>>?(v41, v42 + *(v43 + 64), &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  outlined destroy of Button<Label<Text, Image>>?(v32, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  outlined destroy of Button<Label<Text, Image>>?(v13, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  outlined destroy of Button<Label<Text, Image>>?(v38, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  outlined destroy of Button<Label<Text, Image>>?(v41, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  outlined destroy of Button<Label<Text, Image>>?(v40, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  outlined destroy of Button<Label<Text, Image>>?(v39, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGGMd);
}

uint64_t closure #4 in closure #1 in closure #1 in ParticipantView.ContextMenu.QuickActionsSection.body.getter()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0._countAndFlagsBits = 0x656D695465636146;
  v0._object = 0xE800000000000000;
  LocalizedString(_:)(v0);
  lazy protocol witness table accessor for type String and conformance String();
  Label<>.init<A>(_:systemImage:)();
}

uint64_t closure #2 in closure #1 in closure #1 in ParticipantView.ContextMenu.QuickActionsSection.body.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3._countAndFlagsBits = a2;
  v3._object = 0xE400000000000000;
  LocalizedString(_:)(v3);
  lazy protocol witness table accessor for type String and conformance String();
  Label<>.init<A>(_:systemImage:)();
}

uint64_t protocol witness for View.body.getter in conformance ParticipantView.ContextMenu.QuickActionsSection()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGG_A2UtGGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGG_A2UtGGMd);
  return ControlGroup.init(content:)();
}

uint64_t ParticipantView.ContextMenu.ContactSection.body.getter(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 64);
  if (!v1)
  {

    v1 = 0;
  }

  MEMORY[0x1EEE9AC00](v1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG_AMtGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleView<(Button<Label<Text, Image>>, Button<Label<Text, Image>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG_AMtGMd);
  lazy protocol witness table accessor for type String and conformance String();
  return Section<>.init<A>(_:content:)();
}

uint64_t closure #1 in ParticipantView.ContextMenu.ContactSection.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v38 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGMd);
  v33 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v37 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v36 = v31 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v35 = v31 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v32 = v31 - v12;
  type metadata accessor for MainActor();
  v34 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13._countAndFlagsBits = 0x6567617373654DLL;
  v13._object = 0xE700000000000000;
  v14 = LocalizedString(_:)(v13);
  v15 = swift_allocObject();
  v31[2] = v31;
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v39 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v31[-4] = &v39;
  v31[-3] = 0x6567617373656DLL;
  v31[-2] = 0xE700000000000000;

  v16 = a1;
  v31[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd);
  v17 = v32;
  Button.init(action:label:)();

  v18._object = 0x80000001901FC4A0;
  v18._countAndFlagsBits = 0xD000000000000011;
  v19 = LocalizedString(_:)(v18);
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  *(v20 + 24) = a2;
  v39 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v31[-4] = &v39;
  v31[-3] = 0xD000000000000012;
  v31[-2] = 0x80000001901FC4C0;
  v21 = v16;

  v22 = v35;
  Button.init(action:label:)();

  v23 = v33;
  v24 = *(v33 + 16);
  v25 = v36;
  v24(v36, v17, v5);
  v26 = v37;
  v24(v37, v22, v5);
  v27 = v38;
  v24(v38, v25, v5);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG_AKtMd);
  v24(&v27[*(v28 + 48)], v26, v5);
  v29 = *(v23 + 8);
  v29(v22, v5);
  v29(v17, v5);
  v29(v26, v5);
  v29(v25, v5);
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t protocol witness for View.body.getter in conformance ParticipantView.ContextMenu.ContactSection()
{
  v1 = *(*v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 64);
  if (!v1)
  {

    v1 = 0;
  }

  MEMORY[0x1EEE9AC00](v1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG_AMtGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleView<(Button<Label<Text, Image>>, Button<Label<Text, Image>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG_AMtGMd);
  lazy protocol witness table accessor for type String and conformance String();
  return Section<>.init<A>(_:content:)();
}

uint64_t ParticipantView.ContextMenu.DestructiveSection.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSg_AMtGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleView<(Button<Label<Text, Image>>?, Button<Label<Text, Image>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSg_AMtGMd);
  return Section<>.init(content:)();
}

uint64_t closure #1 in ParticipantView.ContextMenu.DestructiveSection.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ButtonRoleVSgMd);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGMd);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v45 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v44 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v48 = &v41 - v18;
  type metadata accessor for MainActor();
  v43 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v20 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *a1) + 0x160))(isCurrentExecutor))
  {
    static ButtonRole.destructive.getter();
    v21 = type metadata accessor for ButtonRole();
    (*(*(v21 - 8) + 56))(v8, 0, 1, v21);
    *(swift_allocObject() + 16) = a1;
    v22 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd);
    v20 = MEMORY[0x1E69E7D40];
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd);
    Button.init(role:action:label:)();
    v23 = v48;
    (*(v10 + 32))(v48, v14, v9);
    v24 = (*(v10 + 56))(v23, 0, 1, v9);
  }

  else
  {
    v24 = (*(v10 + 56))(v48, 1, 1, v9);
  }

  v42 = v10;
  v25 = (*((*v20 & *a1) + 0x168))(v24);
  v46 = v14;
  v26 = v9;
  if (v25)
  {
    v27 = 1;
  }

  else
  {
    static ButtonRole.destructive.getter();
    v27 = 0;
  }

  v28 = type metadata accessor for ButtonRole();
  (*(*(v28 - 8) + 56))(v6, v27, 1, v28);
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  MEMORY[0x1EEE9AC00](v29);
  *(&v41 - 2) = a1;
  v30 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd);
  v31 = v45;
  Button.init(role:action:label:)();
  v32 = v48;
  v33 = v44;
  outlined init with copy of Button<Label<Text, Image>>?(v48, v44, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd);
  v34 = v42;
  v35 = *(v42 + 16);
  v36 = v46;
  v35(v46, v31, v26);
  v37 = v47;
  outlined init with copy of Button<Label<Text, Image>>?(v33, v47, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSg_AKtMd);
  v35((v37 + *(v38 + 48)), v36, v26);
  v39 = *(v34 + 8);
  v39(v31, v26);
  outlined destroy of Button<Label<Text, Image>>?(v32, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd);
  v39(v36, v26);
  outlined destroy of Button<Label<Text, Image>>?(v33, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd);
}

uint64_t closure #2 in closure #1 in ParticipantView.ContextMenu.DestructiveSection.body.getter()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0._object = 0x80000001901FC480;
  v0._countAndFlagsBits = 0xD000000000000011;
  LocalizedString(_:)(v0);
  lazy protocol witness table accessor for type String and conformance String();
  Label<>.init<A>(_:systemImage:)();
}

uint64_t protocol witness for View.body.getter in conformance ParticipantView.ContextMenu.DestructiveSection()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSg_AMtGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleView<(Button<Label<Text, Image>>?, Button<Label<Text, Image>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSg_AMtGMd);
  return Section<>.init(content:)();
}

uint64_t ParticipantView.ContextMenu.ScreenSharingSection.body.getter@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG_AMtGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleView<(Button<Label<Text, Image>>, Button<Label<Text, Image>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG_AMtGMd);
  Section<>.init(content:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  KeyPath = swift_getKeyPath();
  v9 = swift_allocObject();
  *(v9 + 16) = (v15 & 1) == 0;
  v10 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7SectionVyAA9EmptyViewVAA05TupleG0VyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG_AStGAGGAA32_EnvironmentKeyTransformModifierVySbGGMd) + 36));
  *v10 = KeyPath;
  v10[1] = partial apply for closure #1 in View.disabled(_:);
  v10[2] = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  v12 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA7SectionVyAA9EmptyViewVAA05TupleG0VyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG_AStGAGGAA32_EnvironmentKeyTransformModifierVySbGGAA05_TaskP0VGMd) + 36));
  type metadata accessor for _TaskModifier();

  v13 = a1;
  result = static TaskPriority.userInitiated.getter();
  *v12 = &async function pointer to partial apply for closure #2 in ParticipantView.ContextMenu.ScreenSharingSection.body.getter;
  v12[1] = v11;
  return result;
}

uint64_t closure #1 in ParticipantView.ContextMenu.ScreenSharingSection.body.getter@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v42 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGMd);
  v37 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v41 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v40 = v33 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v39 = v33 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = v33 - v14;
  type metadata accessor for MainActor();
  v38 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15._countAndFlagsBits = 0xD000000000000013;
  v15._object = 0x80000001901FC440;
  v16 = LocalizedString(_:)(v15);
  v34 = 0x80000001901FC460;
  v17 = swift_allocObject();
  v33[2] = v33;
  *(v17 + 16) = a1;
  v35 = a2 & 1;
  *(v17 + 24) = a2 & 1;
  *(v17 + 32) = a3;
  v43 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v33[-4] = &v43;
  v33[-3] = 0xD000000000000016;
  v33[-2] = 0x80000001901FC460;

  v18 = a1;
  v33[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd);
  v19 = v36;
  Button.init(action:label:)();

  v20._countAndFlagsBits = 0x594D5F4552414853;
  v20._object = 0xEF4E45455243535FLL;
  v21 = LocalizedString(_:)(v20);
  v22 = swift_allocObject();
  *(v22 + 16) = v18;
  *(v22 + 24) = v35;
  *(v22 + 32) = a3;
  v43 = v21;
  MEMORY[0x1EEE9AC00](v22);
  v33[-4] = &v43;
  v33[-3] = 0xD000000000000016;
  v33[-2] = v34;
  v23 = v18;

  v24 = v39;
  Button.init(action:label:)();

  v25 = v37;
  v26 = *(v37 + 16);
  v27 = v40;
  v26(v40, v19, v7);
  v28 = v41;
  v26(v41, v24, v7);
  v29 = v42;
  v26(v42, v27, v7);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG_AKtMd);
  v26(&v29[*(v30 + 48)], v28, v7);
  v31 = *(v25 + 8);
  v31(v24, v7);
  v31(v19, v7);
  v31(v28, v7);
  v31(v27, v7);
}

uint64_t closure #2 in ParticipantView.ContextMenu.ScreenSharingSection.body.getter(void *a1, char a2, uint64_t a3)
{
  *(v3 + 32) = a3;
  *(v3 + 65) = a2;
  *(v3 + 40) = type metadata accessor for MainActor();
  *(v3 + 48) = static MainActor.shared.getter();
  v5 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x158);
  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  *v6 = v3;
  v6[1] = closure #2 in ParticipantView.ContextMenu.ScreenSharingSection.body.getter;

  return v8();
}

uint64_t closure #2 in ParticipantView.ContextMenu.ScreenSharingSection.body.getter(char a1)
{
  *(*v1 + 66) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #2 in ParticipantView.ContextMenu.ScreenSharingSection.body.getter, v3, v2);
}

uint64_t closure #2 in ParticipantView.ContextMenu.ScreenSharingSection.body.getter()
{
  v1 = *(v0 + 66);
  v2 = *(v0 + 32);
  v3 = *(v0 + 65);

  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  *(v0 + 64) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.setter();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t key path getter for EnvironmentValues.isEnabled : EnvironmentValues, serialized@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t partial apply for closure #2 in ParticipantView.ContextMenu.ScreenSharingSection.body.getter()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #2 in ParticipantView.ContextMenu.ScreenSharingSection.body.getter;

  return closure #2 in ParticipantView.ContextMenu.ScreenSharingSection.body.getter(v2, v3, v4);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ParticipantView.ContextMenu.ContactSection(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticipantView.ContextMenu.ContactSection(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ParticipantView.ContextMenu.ScreenSharingSection(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticipantView.ContextMenu.ScreenSharingSection(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Section<EmptyView, TupleView<(Button<Label<Text, Image>>?, Button<Label<Text, Image>>)>, EmptyView> and conformance <> Section<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Section<EmptyView, TupleView<(Button<Label<Text, Image>>?, Button<Label<Text, Image>>)>, EmptyView> and conformance <> Section<A, B, C>;
  if (!lazy protocol witness table cache variable for type Section<EmptyView, TupleView<(Button<Label<Text, Image>>?, Button<Label<Text, Image>>)>, EmptyView> and conformance <> Section<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0VyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSg_AQtGAEGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleView<(Button<Label<Text, Image>>?, Button<Label<Text, Image>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSg_AMtGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Section<EmptyView, TupleView<(Button<Label<Text, Image>>?, Button<Label<Text, Image>>)>, EmptyView> and conformance <> Section<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Section<EmptyView, TupleView<(Button<Label<Text, Image>>, Button<Label<Text, Image>>)>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TaskModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Section<EmptyView, TupleView<(Button<Label<Text, Image>>, Button<Label<Text, Image>>)>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TaskModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Section<EmptyView, TupleView<(Button<Label<Text, Image>>, Button<Label<Text, Image>>)>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TaskModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA7SectionVyAA9EmptyViewVAA05TupleG0VyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG_AStGAGGAA32_EnvironmentKeyTransformModifierVySbGGAA05_TaskP0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<Section<EmptyView, TupleView<(Button<Label<Text, Image>>, Button<Label<Text, Image>>)>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _TaskModifier and conformance _TaskModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Section<EmptyView, TupleView<(Button<Label<Text, Image>>, Button<Label<Text, Image>>)>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>>, _TaskModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Section<EmptyView, TupleView<(Button<Label<Text, Image>>, Button<Label<Text, Image>>)>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Section<EmptyView, TupleView<(Button<Label<Text, Image>>, Button<Label<Text, Image>>)>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Section<EmptyView, TupleView<(Button<Label<Text, Image>>, Button<Label<Text, Image>>)>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA7SectionVyAA9EmptyViewVAA05TupleG0VyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG_AStGAGGAA32_EnvironmentKeyTransformModifierVySbGGMd);
    lazy protocol witness table accessor for type Section<Text, TupleView<(Button<Label<Text, Image>>, Button<Label<Text, Image>>)>, EmptyView> and conformance <> Section<A, B, C>(&lazy protocol witness table cache variable for type Section<EmptyView, TupleView<(Button<Label<Text, Image>>, Button<Label<Text, Image>>)>, EmptyView> and conformance <> Section<A, B, C>, &_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0VyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG_AQtGAEGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Section<EmptyView, TupleView<(Button<Label<Text, Image>>, Button<Label<Text, Image>>)>, EmptyView>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Section<Text, TupleView<(Button<Label<Text, Image>>, Button<Label<Text, Image>>)>, EmptyView> and conformance <> Section<A, B, C>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleView<(Button<Label<Text, Image>>, Button<Label<Text, Image>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG_AMtGMd);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _TaskModifier and conformance _TaskModifier()
{
  result = lazy protocol witness table cache variable for type _TaskModifier and conformance _TaskModifier;
  if (!lazy protocol witness table cache variable for type _TaskModifier and conformance _TaskModifier)
  {
    type metadata accessor for _TaskModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TaskModifier and conformance _TaskModifier);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in ParticipantView.ContextMenu.ScreenSharingSection.body.getter()
{
  v1 = *(v0 + 16);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x198))(isCurrentExecutor);
}

uint64_t specialized closure #1 in Button<>.init<A>(_:systemImage:action:)()
{
  lazy protocol witness table accessor for type String and conformance String();

  return Label<>.init<A>(_:systemImage:)();
}

uint64_t lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>, ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyTransformModifier<Bool>>)>> and conformance HStack<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t partial apply for closure #2 in closure #1 in ParticipantView.ContextMenu.ScreenSharingSection.body.getter()
{
  v1 = *(v0 + 16);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x190))(isCurrentExecutor);
}

uint64_t partial apply for closure #3 in closure #1 in ParticipantView.ContextMenu.DestructiveSection.body.getter()
{
  v1 = *(v0 + 16);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v3 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x168))(isCurrentExecutor))
  {
    (*((*v3 & *v1) + 0x1B0))();
  }

  else
  {
    (*((*v3 & *v1) + 0x118))(1);
  }
}

uint64_t partial apply for closure #4 in closure #1 in ParticipantView.ContextMenu.DestructiveSection.body.getter()
{
  v1 = *(v0 + 16);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x168))(isCurrentExecutor))
  {
    v3 = 0x206B636F6C626E55;
    v4 = 0xEF746361746E6F43;
  }

  else
  {
    v3 = 0x6F43206B636F6C42;
    v4 = 0xED0000746361746ELL;
  }

  LocalizedString(_:)(*&v3);
  lazy protocol witness table accessor for type String and conformance String();
  Label<>.init<A>(_:systemImage:)();
}

uint64_t partial apply for closure #1 in closure #1 in ParticipantView.ContextMenu.DestructiveSection.body.getter()
{
  v1 = *(v0 + 16);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xE8))(1);
}

uint64_t partial apply for closure #1 in closure #1 in ParticipantView.ContextMenu.ContactSection.body.getter()
{
  v1 = *(v0 + 16);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x180))(isCurrentExecutor);
}

uint64_t objectdestroy_34Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t partial apply for closure #2 in closure #1 in ParticipantView.ContextMenu.ContactSection.body.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1A0))(v2);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in ParticipantView.ContextMenu.QuickActionsSection.body.getter()
{
  v1 = *(v0 + 16);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x170))(isCurrentExecutor);
}

uint64_t partial apply for closure #3 in closure #1 in closure #1 in ParticipantView.ContextMenu.QuickActionsSection.body.getter()
{
  v1 = *(v0 + 16);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x178))(isCurrentExecutor);
}

uint64_t partial apply for closure #5 in closure #1 in closure #1 in ParticipantView.ContextMenu.QuickActionsSection.body.getter()
{
  v1 = *(v0 + 16);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x188))(isCurrentExecutor);
}

uint64_t outlined init with copy of Button<Label<Text, Image>>?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Button<Label<Text, Image>>?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Header.ViewModel.CachedActionsProvider.actionsProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ContactCardActionsProvider();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id Header.ViewModel.CachedActionsProvider.contact.getter()
{
  v1 = *(v0 + *(type metadata accessor for Header.ViewModel.CachedActionsProvider(0) + 20));

  return v1;
}

uint64_t Header.ViewModel.CachedActionsProvider.init(actionsProvider:contact:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ContactCardActionsProvider();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for Header.ViewModel.CachedActionsProvider(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t key path setter for Header.ViewModel.cachedActionsProvider : Header.ViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails6HeaderV9ViewModelC21CachedActionsProviderVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of Header.ViewModel.CachedActionsProvider?(a1, &v8 - v5);
  return (*(**a2 + 136))(v6);
}

uint64_t Header.ViewModel.cachedActionsProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV20CommunicationDetails6Header9ViewModel_cachedActionsProvider;
  swift_beginAccess();
  return outlined init with copy of Header.ViewModel.CachedActionsProvider?(v1 + v3, a1);
}

uint64_t outlined init with copy of Header.ViewModel.CachedActionsProvider?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails6HeaderV9ViewModelC21CachedActionsProviderVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Header.ViewModel.cachedActionsProvider.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV20CommunicationDetails6Header9ViewModel_cachedActionsProvider;
  swift_beginAccess();
  outlined assign with take of Header.ViewModel.CachedActionsProvider?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t outlined assign with take of Header.ViewModel.CachedActionsProvider?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails6HeaderV9ViewModelC21CachedActionsProviderVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Header.ViewModel.actionsProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ContactCardActionsProvider();
  v31 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails6HeaderV9ViewModelC21CachedActionsProviderVSgMd);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for Header.ViewModel.CachedActionsProvider(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (*(*v1 + 224))(v15);
  if (*(v18 + 16))
  {
    v30 = a1;
    v19 = *(v18 + 96);
    v36 = *(v18 + 80);
    v37 = v19;
    v38 = *(v18 + 112);
    v39 = *(v18 + 128);
    v20 = *(v18 + 48);
    v33 = *(v18 + 32);
    v34 = v20;
    v35 = *(v18 + 64);
    outlined init with copy of CommunicationDetailsContact(&v33, v32);

    v21 = v34;
    v22 = outlined destroy of CommunicationDetailsContact(&v33);
    (*(*v1 + 128))(v22);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      outlined destroy of Header.ViewModel.CachedActionsProvider?(v12);
    }

    else
    {
      outlined init with take of Header.ViewModel.CachedActionsProvider(v12, v17, type metadata accessor for Header.ViewModel.CachedActionsProvider);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
      if (static NSObject.== infix(_:_:)())
      {

        v25 = v30;
        (*(v31 + 16))(v30, v17, v4);
        outlined destroy of Header.ViewModel.CachedActionsProvider(v17, type metadata accessor for Header.ViewModel.CachedActionsProvider);
        return (*(v31 + 56))(v25, 0, 1, v4);
      }

      outlined destroy of Header.ViewModel.CachedActionsProvider(v17, type metadata accessor for Header.ViewModel.CachedActionsProvider);
    }

    v26 = v21;
    ContactCardActionsProvider.init(contact:)();
    (*(v31 + 16))(v10, v6, v4);
    *&v10[*(v13 + 20)] = v26;
    (*(v14 + 56))(v10, 0, 1, v13);
    v27 = *(*v2 + 136);
    v28 = v26;
    v27(v10);

    v25 = v30;
    (*(v31 + 32))(v30, v6, v4);
    return (*(v31 + 56))(v25, 0, 1, v4);
  }

  v23 = *(v31 + 56);

  return v23(a1, 1, 1, v4);
}

uint64_t outlined destroy of Header.ViewModel.CachedActionsProvider?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails6HeaderV9ViewModelC21CachedActionsProviderVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double Header.ViewModel.headerHeightProgress.getter()
{
  swift_getKeyPath();
  (*(*v0 + 264))();

  v1 = OBJC_IVAR____TtCV20CommunicationDetails6Header9ViewModel__headerHeightProgress;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t Header.ViewModel.headerHeightProgress.setter(double a1)
{
  v3 = OBJC_IVAR____TtCV20CommunicationDetails6Header9ViewModel__headerHeightProgress;
  result = swift_beginAccess();
  if (*(v1 + v3) == a1)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 272))(v6, partial apply for closure #1 in Header.ViewModel.headerHeightProgress.setter);
  }

  return result;
}

uint64_t partial apply for closure #1 in Header.ViewModel.headerHeightProgress.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtCV20CommunicationDetails6Header9ViewModel__headerHeightProgress;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void (*Header.ViewModel.headerHeightProgress.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 264))(KeyPath);

  v4[5] = OBJC_IVAR____TtCV20CommunicationDetails6Header9ViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type Header.ViewModel and conformance Header.ViewModel();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = Header.ViewModel._headerHeightProgress.modify();
  return Header.ViewModel.headerHeightProgress.modify;
}

void Header.ViewModel.headerHeightProgress.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

unint64_t lazy protocol witness table accessor for type Header.ViewModel and conformance Header.ViewModel()
{
  result = lazy protocol witness table cache variable for type Header.ViewModel and conformance Header.ViewModel;
  if (!lazy protocol witness table cache variable for type Header.ViewModel and conformance Header.ViewModel)
  {
    type metadata accessor for Header.ViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Header.ViewModel and conformance Header.ViewModel);
  }

  return result;
}

uint64_t type metadata accessor for Header.ViewModel.CachedActionsProvider(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Header.ViewModel.__allocating_init(configuration:)(uint64_t a1)
{
  v3 = type metadata accessor for Header.StyleGuide();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Header.StyleGuide.default.unsafeMutableAddressor();
  outlined init with copy of HeaderSizeInterpolator(v6, v5, type metadata accessor for Header.StyleGuide);
  return (*(v1 + 208))(a1, v5);
}

uint64_t outlined init with copy of HeaderSizeInterpolator(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t Header.ViewModel.__allocating_init(configuration:headerStyleGuide:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = specialized Header.ViewModel.init(configuration:headerStyleGuide:)(a1, a2);

  return v4;
}

uint64_t Header.ViewModel.init(configuration:headerStyleGuide:)(uint64_t a1, uint64_t a2)
{
  v2 = specialized Header.ViewModel.init(configuration:headerStyleGuide:)(a1, a2);

  return v2;
}

BOOL Header.ViewModel.titleIcon.getter@<W0>(_BYTE *a1@<X8>)
{
  v3 = 4;
  result = DetailsViewController.ObservableConfiguration.supportsCapability(_:)(&v3);
  *a1 = result;
  return result;
}

uint64_t Header.ViewModel.cnContacts.getter()
{
  v1 = (*(*v0 + 224))();
  v2 = *(v1 + 16);
  if (v2)
  {
    v6 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = 48;
    do
    {
      v4 = *(v1 + v3);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v3 += 104;
      --v2;
    }

    while (v2);

    return v6;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t Header.ViewModel.hasBlockedContact.getter()
{
  v1 = *(**(v0 + 16) + 192);
  v2 = *(v1() + 16);

  if (v2 != 1)
  {
    return 0;
  }

  v4 = (v1)(v3);
  if (*(v4 + 16))
  {
    v5 = *(v4 + 104);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t Header.ViewModel.displayName.getter()
{
  v1 = v0;
  (*(**(v0 + 16) + 200))(v13);
  if ((v13[9] & 0x8000000000000000) != 0)
  {
    v3 = v13[1];

    if (v3)
    {
      v4 = v3;
      v5 = [v4 groupName];
      if (v5)
      {
        v6 = v5;
        v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v7;

        v9 = HIBYTE(v8) & 0xF;
        if ((v8 & 0x2000000000000000) == 0)
        {
          v9 = v2 & 0xFFFFFFFFFFFFLL;
        }

        if (v9)
        {

          return v2;
        }
      }

      v10 = [*(v1 + OBJC_IVAR____TtCV20CommunicationDetails6Header9ViewModel_contactFormatter) stringFromGroupIdentity_];
      if (v10)
      {
        v11 = v10;
        v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v2;
      }
    }

    return 0;
  }

  v2 = v13[3];

  outlined destroy of DetailsViewController.CommunicationType(v13);
  return v2;
}

char *Header.ViewModel.requestedQuickActions.getter()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = 5;
  if (DetailsViewController.ObservableConfiguration.supportsCapability(_:)(&v32))
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    v4[v6 + 32] = 0;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v31 = 6;
  if (DetailsViewController.ObservableConfiguration.supportsCapability(_:)(&v31))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
    }

    v8 = *(v4 + 2);
    v7 = *(v4 + 3);
    if (v8 >= v7 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v4);
    }

    *(v4 + 2) = v8 + 1;
    v4[v8 + 32] = 1;
  }

  v30 = 7;
  if (DetailsViewController.ObservableConfiguration.supportsCapability(_:)(&v30))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
    }

    v10 = *(v4 + 2);
    v9 = *(v4 + 3);
    if (v10 >= v9 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v4);
    }

    *(v4 + 2) = v10 + 1;
    v4[v10 + 32] = 2;
  }

  v29 = 8;
  if (DetailsViewController.ObservableConfiguration.supportsCapability(_:)(&v29))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
    }

    v12 = *(v4 + 2);
    v11 = *(v4 + 3);
    if (v12 >= v11 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v4);
    }

    *(v4 + 2) = v12 + 1;
    v4[v12 + 32] = 3;
  }

  v28 = 9;
  if (DetailsViewController.ObservableConfiguration.supportsCapability(_:)(&v28))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
    }

    v14 = *(v4 + 2);
    v13 = *(v4 + 3);
    v15 = v14 + 1;
    if (v14 >= v13 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v4);
    }

    v16 = 4;
LABEL_44:
    *(v4 + 2) = v15;
    v4[v14 + 32] = v16;
    return v4;
  }

  if (!*(v4 + 2))
  {
    v17 = Logger.detailsViewController.unsafeMutableAddressor();
    (*(v1 + 16))(v3, v17, v0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      MEMORY[0x193AEBB30](v20, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
    }

    v22 = *(v4 + 2);
    v21 = *(v4 + 3);
    v23 = v21 >> 1;
    v24 = v22 + 1;
    if (v21 >> 1 <= v22)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v4);
      v21 = *(v4 + 3);
      v23 = v21 >> 1;
    }

    *(v4 + 2) = v24;
    v4[v22 + 32] = 0;
    v25 = v22 + 2;
    if (v23 < (v22 + 2))
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 2, 1, v4);
      v21 = *(v4 + 3);
      v23 = v21 >> 1;
    }

    *(v4 + 2) = v25;
    v4[v24 + 32] = 1;
    v14 = v22 + 3;
    if (v23 < (v22 + 3))
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 3, 1, v4);
      v21 = *(v4 + 3);
      v23 = v21 >> 1;
    }

    *(v4 + 2) = v14;
    v4[v25 + 32] = 3;
    v15 = v22 + 4;
    if (v23 < (v22 + 4))
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 4, 1, v4);
    }

    v16 = 2;
    goto LABEL_44;
  }

  return v4;
}

uint64_t Header.ViewModel.deinit()
{

  outlined destroy of Header.ViewModel.CachedActionsProvider(v0 + OBJC_IVAR____TtCV20CommunicationDetails6Header9ViewModel_headerSizeInterpolator, type metadata accessor for HeaderSizeInterpolator);
  outlined destroy of Header.ViewModel.CachedActionsProvider?(v0 + OBJC_IVAR____TtCV20CommunicationDetails6Header9ViewModel_cachedActionsProvider);

  v1 = OBJC_IVAR____TtCV20CommunicationDetails6Header9ViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t Header.ViewModel.__deallocating_deinit()
{

  outlined destroy of Header.ViewModel.CachedActionsProvider(v0 + OBJC_IVAR____TtCV20CommunicationDetails6Header9ViewModel_headerSizeInterpolator, type metadata accessor for HeaderSizeInterpolator);
  outlined destroy of Header.ViewModel.CachedActionsProvider?(v0 + OBJC_IVAR____TtCV20CommunicationDetails6Header9ViewModel_cachedActionsProvider);

  v1 = OBJC_IVAR____TtCV20CommunicationDetails6Header9ViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20CommunicationDetails15QuickActionViewC10ButtonTypeOGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20CommunicationDetails10EditActionOGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_2(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_2(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_3(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20CommunicationDetails0E3TabVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_4(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_6(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_7(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t specialized Header.ViewModel.init(configuration:headerStyleGuide:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Header.StyleGuide();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for HeaderSizeInterpolator();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = OBJC_IVAR____TtCV20CommunicationDetails6Header9ViewModel_cachedActionsProvider;
  v13 = type metadata accessor for Header.ViewModel.CachedActionsProvider(0);
  (*(*(v13 - 8) + 56))(v3 + v12, 1, 1, v13);
  *(v3 + OBJC_IVAR____TtCV20CommunicationDetails6Header9ViewModel__headerHeightProgress) = 0x3FF0000000000000;
  v14 = OBJC_IVAR____TtCV20CommunicationDetails6Header9ViewModel_contactFormatter;
  v15 = [objc_allocWithZone(MEMORY[0x1E695CD80]) init];
  [v15 setStyle_];
  [v15 setFallbackStyle_];
  *(v3 + v14) = v15;
  ObservationRegistrar.init()();
  *(v3 + 16) = a1;
  v16 = *(*a1 + 584);

  v16(&v20, v17);
  v19[14] = v20;
  outlined init with copy of HeaderSizeInterpolator(a2, v8, type metadata accessor for Header.StyleGuide);
  HeaderSizeInterpolator.init(style:styleGuide:)(v8, v11);
  outlined destroy of Header.ViewModel.CachedActionsProvider(a2, type metadata accessor for Header.StyleGuide);
  outlined init with take of Header.ViewModel.CachedActionsProvider(v11, v3 + OBJC_IVAR____TtCV20CommunicationDetails6Header9ViewModel_headerSizeInterpolator, type metadata accessor for HeaderSizeInterpolator);
  return v3;
}

uint64_t outlined destroy of Header.ViewModel.CachedActionsProvider(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata completion function for Header.ViewModel()
{
  type metadata accessor for HeaderSizeInterpolator();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Header.ViewModel.CachedActionsProvider?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ObservationRegistrar();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for Header.ViewModel.CachedActionsProvider?()
{
  if (!lazy cache variable for type metadata for Header.ViewModel.CachedActionsProvider?)
  {
    type metadata accessor for Header.ViewModel.CachedActionsProvider(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Header.ViewModel.CachedActionsProvider?);
    }
  }
}

uint64_t type metadata completion function for Header.ViewModel.CachedActionsProvider()
{
  result = type metadata accessor for ContactCardActionsProvider();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NSObject(319, &lazy cache variable for type metadata for CNContact);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for NSObject(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t outlined init with take of Header.ViewModel.CachedActionsProvider(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id QuickActionCustomButton.__allocating_init(type:delegate:styleGuide:)(char a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v7[OBJC_IVAR____TtC20CommunicationDetails23QuickActionCustomButton_type] = a1;
  *&v7[OBJC_IVAR____TtC20CommunicationDetails23QuickActionCustomButton_delegate] = a2;
  outlined init with copy of Header.StyleGuide(a3, &v7[OBJC_IVAR____TtC20CommunicationDetails23QuickActionCustomButton_styleGuide]);
  v10.receiver = v7;
  v10.super_class = v3;

  v8 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  QuickActionCustomButton.setupButton()();

  outlined destroy of Header.StyleGuide(a3);
  return v8;
}

id QuickActionCustomButton.init(type:delegate:styleGuide:)(char a1, uint64_t a2, uint64_t a3)
{
  v3[OBJC_IVAR____TtC20CommunicationDetails23QuickActionCustomButton_type] = a1;
  *&v3[OBJC_IVAR____TtC20CommunicationDetails23QuickActionCustomButton_delegate] = a2;
  outlined init with copy of Header.StyleGuide(a3, &v3[OBJC_IVAR____TtC20CommunicationDetails23QuickActionCustomButton_styleGuide]);
  v7.receiver = v3;
  v7.super_class = type metadata accessor for QuickActionCustomButton();

  v5 = objc_msgSendSuper2(&v7, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  QuickActionCustomButton.setupButton()();

  outlined destroy of Header.StyleGuide(a3);
  return v5;
}

uint64_t outlined init with copy of Header.StyleGuide(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Header.StyleGuide();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id QuickActionCustomButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t QuickActionCustomButton.setupButton()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v28 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v28 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = v0;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in QuickActionCustomButton.setupButton(), v10);

  LOBYTE(v6) = v8[OBJC_IVAR____TtC20CommunicationDetails23QuickActionCustomButton_type];
  Header.StyleGuide.buttonConfiguration(for:)(v6, v3);
  v12 = type metadata accessor for UIButton.Configuration();
  (*(*(v12 - 8) + 56))(v3, 0, 1, v12);
  UIButton.configuration.setter();
  v13 = MEMORY[0x1E69E7CC0];
  v29 = MEMORY[0x1E69E7CC0];
  v14 = QuickActionView.ButtonType.menuItems.getter(v6);
  v15 = v14[2];
  if (v15)
  {
    v16 = v14;
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIAction);
    v28 = v16;
    v17 = (v16 + 4);
    do
    {
      v18 = *v17;
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      QuickActionView.ButtonType.MenuItem.title.getter(v18);
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      *(v20 + 24) = v18;
      v21 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      MEMORY[0x193AEA9A0](v21);
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v13 = v29;

      ++v17;
      --v15;
    }

    while (v15);
  }

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIMenu);

  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v30.value.super.isa = 0;
  v30.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v23, v22, 0, v30, 1, 0xFFFFFFFFFFFFFFFFLL, v13, v27);
  v25 = v24;
  [v8 setMenu_];

  [v8 setShowsMenuAsPrimaryAction_];
}

uint64_t outlined destroy of Header.StyleGuide(uint64_t a1)
{
  v2 = type metadata accessor for Header.StyleGuide();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for QuickActionCustomButton()
{
  result = type metadata singleton initialization cache for QuickActionCustomButton;
  if (!type metadata singleton initialization cache for QuickActionCustomButton)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #1 in QuickActionCustomButton.setupButton()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](closure #1 in QuickActionCustomButton.setupButton(), v6, v5);
}

uint64_t closure #1 in QuickActionCustomButton.setupButton()()
{
  v1 = (*(**(*(v0 + 16) + OBJC_IVAR____TtC20CommunicationDetails23QuickActionCustomButton_delegate) + 120))();
  *(v0 + 48) = v1;
  if (v1)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    *(v0 + 64) = 0;
    v8 = (*(v3 + 16) + **(v3 + 16));
    v5 = swift_task_alloc();
    *(v0 + 56) = v5;
    *v5 = v0;
    v5[1] = closure #1 in QuickActionCustomButton.setupButton();

    return v8(v0 + 64, ObjectType, v3);
  }

  else
  {

    [*(v0 + 16) setEnabled_];
    v7 = *(v0 + 8);

    return v7();
  }
}

{

  [*(v0 + 16) setEnabled_];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in QuickActionCustomButton.setupButton()(char a1)
{
  v2 = *v1;
  *(*v1 + 65) = a1;

  swift_unknownObjectRelease();
  v3 = *(v2 + 40);
  v4 = *(v2 + 32);

  return MEMORY[0x1EEE6DFA0](closure #1 in QuickActionCustomButton.setupButton(), v4, v3);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of TaskPriority?(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of TaskPriority?(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of TaskPriority?(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

Swift::Void __swiftcall QuickActionCustomButton.layoutSubviews()()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for QuickActionCustomButton();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = [v0 layer];
  [v0 frame];
  [v1 setCornerRadius_];
}

id QuickActionCustomButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id QuickActionCustomButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QuickActionCustomButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata completion function for QuickActionCustomButton()
{
  result = type metadata accessor for Header.StyleGuide();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in QuickActionCustomButton.setupButton()()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in QuickActionCustomButton.setupButton();

  return closure #1 in QuickActionCustomButton.setupButton()(v3, v4, v5, v2);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t partial apply for closure #1 in closure #2 in QuickActionCustomButton.setupButton()()
{
  v1 = *(v0 + 24);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC20CommunicationDetails23QuickActionCustomButton_delegate);
    v4 = Strong;

    v5 = (*(*v3 + 120))();
    v7 = v6;

    if (v5)
    {
      ObjectType = swift_getObjectType();
      QuickActionView.ButtonType.MenuItem.externalActionType.getter(v1, &v10);
      (*(v7 + 8))(&v10, ObjectType, v7);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t type metadata accessor for UIAction(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_16(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_16TQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_16TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t ParticipantGrid.init(configuration:styleGuide:actionHandlers:presentationProxy:delegate:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v51 = a4;
  v45 = a3;
  v50 = type metadata accessor for GridItem.Size();
  v53 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v15 = (&v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a2[11];
  v17 = a2[13];
  v66 = a2[12];
  v67 = v17;
  v18 = a2[7];
  v19 = a2[9];
  v62 = a2[8];
  v20 = v62;
  v63 = v19;
  v21 = a2[9];
  v22 = a2[11];
  v64 = a2[10];
  v23 = v64;
  v65 = v22;
  v24 = a2[3];
  v25 = a2[5];
  v58 = a2[4];
  v26 = v58;
  v59 = v25;
  v27 = a2[5];
  v28 = a2[7];
  v60 = a2[6];
  v29 = v60;
  v61 = v28;
  v30 = a2[1];
  v55[0] = *a2;
  v55[1] = v30;
  v31 = a2[3];
  v33 = *a2;
  v32 = a2[1];
  v56 = a2[2];
  v34 = v56;
  v57 = v31;
  v35 = a2[13];
  *(a7 + 208) = v66;
  *(a7 + 224) = v35;
  *(a7 + 144) = v20;
  *(a7 + 160) = v21;
  *(a7 + 176) = v23;
  *(a7 + 192) = v16;
  *(a7 + 80) = v26;
  *(a7 + 96) = v27;
  *(a7 + 112) = v29;
  *(a7 + 128) = v18;
  *(a7 + 16) = v33;
  *(a7 + 32) = v32;
  v68 = *(a2 + 28);
  *a7 = 0;
  *(a7 + 8) = 0;
  v36 = *(a2 + 28);
  *(a7 + 48) = v34;
  *(a7 + 64) = v24;
  *(a7 + 240) = v36;
  *(a7 + 248) = a3;
  v46 = a1;
  v47 = a5;
  *(a7 + 256) = a4;
  *(a7 + 264) = a1;
  *(a7 + 272) = a5;
  *(a7 + 280) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI8GridItemVGMd);
  v37 = *(type metadata accessor for GridItem() - 8);
  v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v48 = 2 * *(v37 + 72);
  v39 = swift_allocObject();
  v49 = v39;
  *(v39 + 16) = xmmword_1901E51F0;
  v44 = v39 + v38;
  v52 = xmmword_1901E5200;
  *v15 = xmmword_1901E5200;
  v40 = *MEMORY[0x1E697D748];
  v41 = *(v53 + 104);
  v53 += 104;
  v42 = v50;
  v41(v15, v40, v50);

  outlined init with copy of ParticipantGrid.StyleGuide(v55, &v54);
  swift_unknownObjectRetain();
  v45 = v45;

  static Alignment.top.getter();
  GridItem.init(_:spacing:alignment:)();
  outlined destroy of ParticipantGrid.StyleGuide(v55);
  *v15 = v52;
  v41(v15, v40, v42);
  static Alignment.top.getter();
  GridItem.init(_:spacing:alignment:)();
  *v15 = v52;
  v41(v15, v40, v42);
  static Alignment.top.getter();
  GridItem.init(_:spacing:alignment:)();

  result = swift_unknownObjectRelease();
  *(a7 + 288) = v49;
  return result;
}

uint64_t ParticipantGrid.body.getter()
{
  v1 = type metadata accessor for PinnedScrollableViews();
  MEMORY[0x1EEE9AC00](v1);
  memcpy(v3, v0, sizeof(v3));

  static HorizontalAlignment.center.getter();
  lazy protocol witness table accessor for type PinnedScrollableViews and conformance PinnedScrollableViews();
  dispatch thunk of OptionSet.init(rawValue:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7ForEachVySay20CommunicationDetails0gH7ContactVGSSAF011ParticipantD0VG_AF21AddParticipantsButtonVSgtGMd);
  lazy protocol witness table accessor for type TupleView<(ForEach<[CommunicationDetailsContact], String, ParticipantView>, AddParticipantsButton?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ForEach<[CommunicationDetailsContact], String, ParticipantView>, AddParticipantsButton?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA7ForEachVySay20CommunicationDetails0gH7ContactVGSSAF011ParticipantD0VG_AF21AddParticipantsButtonVSgtGMd);
  return LazyVGrid.init(columns:alignment:spacing:pinnedViews:content:)();
}

uint64_t closure #1 in ParticipantGrid.body.getter@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay20CommunicationDetails0eF7ContactVGSSAD15ParticipantViewVGMd);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v56 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v53 - v7;
  type metadata accessor for MainActor();
  v55 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  *&v75 = (*(*a1[33] + 192))(isCurrentExecutor);
  v10 = swift_allocObject();
  memcpy((v10 + 16), a1, 0x128uLL);
  outlined init with copy of ParticipantGrid(a1, &v91);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay20CommunicationDetails0aB7ContactVGMd);
  lazy protocol witness table accessor for type TupleView<(ForEach<[CommunicationDetailsContact], String, ParticipantView>, AddParticipantsButton?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [CommunicationDetailsContact] and conformance [A], &_sSay20CommunicationDetails0aB7ContactVGMd);
  lazy protocol witness table accessor for type ParticipantView and conformance ParticipantView();
  lazy protocol witness table accessor for type CommunicationDetailsContact and conformance CommunicationDetailsContact();
  ForEach<>.init(_:content:)();
  v11 = *a1;
  if (!*a1)
  {
    goto LABEL_7;
  }

  v12 = a1[1];
  LOBYTE(v91) = 1;

  if (!DetailsViewController.ObservableConfiguration.supportsCapability(_:)(&v91))
  {
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v11);
LABEL_7:
    _s20CommunicationDetails21AddParticipantsButtonVSgWOi0_(&v91);
    goto LABEL_8;
  }

  v13 = *(a1 + 12);
  v14 = *(a1 + 14);
  v116 = *(a1 + 13);
  v117 = v14;
  v15 = *(a1 + 8);
  v16 = *(a1 + 10);
  v112 = *(a1 + 9);
  v113 = v16;
  v18 = *(a1 + 10);
  v17 = *(a1 + 11);
  v19 = v17;
  v115 = *(a1 + 12);
  v114 = v17;
  v20 = *(a1 + 4);
  v21 = *(a1 + 6);
  v108 = *(a1 + 5);
  v109 = v21;
  v23 = *(a1 + 6);
  v22 = *(a1 + 7);
  v24 = v22;
  v111 = *(a1 + 8);
  v110 = v22;
  v25 = *(a1 + 2);
  v107[0] = *(a1 + 1);
  v107[1] = v25;
  v26 = *(a1 + 3);
  v28 = *(a1 + 1);
  v27 = *(a1 + 2);
  v29 = v26;
  v107[3] = *(a1 + 4);
  v107[2] = v26;
  v30 = *(a1 + 14);
  v103 = v116;
  v104 = v30;
  v99 = v112;
  v100 = v18;
  v101 = v19;
  v102 = v13;
  v95 = v108;
  v96 = v23;
  v97 = v24;
  v98 = v15;
  v91 = v28;
  v92 = v27;
  v118 = a1[30];
  *&v105 = a1[30];
  v93 = v29;
  v94 = v20;
  outlined init with copy of ParticipantGrid.StyleGuide(v107, &v75);
  v31 = AddParticipantsButton.init(styleGuide:addParticipantAction:)(&v91, v11, v12, &v75);
  _s20CommunicationDetails21AddParticipantsButtonVSgWOi_(&v75, v31);
  v103 = v87;
  v104 = v88;
  v105 = v89;
  v106 = v90;
  v99 = v83;
  v100 = v84;
  v101 = v85;
  v102 = v86;
  v95 = v79;
  v96 = v80;
  v97 = v81;
  v98 = v82;
  v91 = v75;
  v92 = v76;
  v93 = v77;
  v94 = v78;
LABEL_8:
  v32 = *(v4 + 16);
  v33 = v56;
  v32(v56, v8, v3);
  v69 = v103;
  v70 = v104;
  v71 = v105;
  v72 = v106;
  v65 = v99;
  v66 = v100;
  v67 = v101;
  v68 = v102;
  v61 = v95;
  v62 = v96;
  v63 = v97;
  v64 = v98;
  v57 = v91;
  v58 = v92;
  v59 = v93;
  v60 = v94;
  v34 = v54;
  v32(v54, v33, v3);
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay20CommunicationDetails0eF7ContactVGSSAD15ParticipantViewVG_AD21AddParticipantsButtonVSgtMd) + 48);
  v36 = v70;
  v73[12] = v69;
  v73[13] = v70;
  v37 = v71;
  v73[14] = v71;
  v38 = v65;
  v39 = v66;
  v73[8] = v65;
  v73[9] = v66;
  v40 = v67;
  v41 = v68;
  v73[10] = v67;
  v73[11] = v68;
  v42 = v61;
  v43 = v62;
  v73[4] = v61;
  v73[5] = v62;
  v44 = v63;
  v45 = v64;
  v73[6] = v63;
  v73[7] = v64;
  v46 = v57;
  v47 = v58;
  v73[0] = v57;
  v73[1] = v58;
  v48 = v59;
  v49 = v60;
  v73[2] = v59;
  v73[3] = v60;
  v50 = &v34[v35];
  *(v50 + 12) = v69;
  *(v50 + 13) = v36;
  *(v50 + 14) = v37;
  *(v50 + 8) = v38;
  *(v50 + 9) = v39;
  *(v50 + 10) = v40;
  *(v50 + 11) = v41;
  *(v50 + 4) = v42;
  *(v50 + 5) = v43;
  *(v50 + 6) = v44;
  *(v50 + 7) = v45;
  *v50 = v46;
  *(v50 + 1) = v47;
  v74 = v72;
  *(v50 + 30) = v72;
  *(v50 + 2) = v48;
  *(v50 + 3) = v49;
  outlined init with copy of AddParticipantsButton?(v73, &v75);
  v51 = *(v4 + 8);
  v51(v8, v3);
  v87 = v69;
  v88 = v70;
  v89 = v71;
  v90 = v72;
  v83 = v65;
  v84 = v66;
  v85 = v67;
  v86 = v68;
  v79 = v61;
  v80 = v62;
  v81 = v63;
  v82 = v64;
  v75 = v57;
  v76 = v58;
  v77 = v59;
  v78 = v60;
  outlined destroy of AddParticipantsButton?(&v75);
  v51(v33, v3);
}

unint64_t lazy protocol witness table accessor for type PinnedScrollableViews and conformance PinnedScrollableViews()
{
  result = lazy protocol witness table cache variable for type PinnedScrollableViews and conformance PinnedScrollableViews;
  if (!lazy protocol witness table cache variable for type PinnedScrollableViews and conformance PinnedScrollableViews)
  {
    type metadata accessor for PinnedScrollableViews();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PinnedScrollableViews and conformance PinnedScrollableViews);
  }

  return result;
}

uint64_t ParticipantGrid.onAddParticipants(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  memcpy(__dst, v3, 0x128uLL);
  v7 = __dst[0];
  memcpy(a3, v3, 0x128uLL);
  outlined init with copy of ParticipantGrid(__dst, v9);

  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v7);
  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t outlined consume of (@escaping @callee_guaranteed () -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t key path getter for ParticipantGrid.ActionHandlers.removeParticipant : ParticipantGrid.ActionHandlers@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x90))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = thunk for @escaping @callee_guaranteed (@guaranteed String) -> ()partial apply;
  a2[1] = result;
  return result;
}

uint64_t key path setter for ParticipantGrid.ActionHandlers.removeParticipant : ParticipantGrid.ActionHandlers(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x98);

  return v6(thunk for @escaping @callee_guaranteed (@in_guaranteed String) -> (@out ())partial apply, v5);
}

uint64_t key path getter for ParticipantGrid.ActionHandlers.blockContact : ParticipantGrid.ActionHandlers@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA8))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = thunk for @escaping @callee_guaranteed (@guaranteed CNContact) -> ()partial apply;
  a2[1] = result;
  return result;
}

uint64_t key path setter for ParticipantGrid.ActionHandlers.blockContact : ParticipantGrid.ActionHandlers(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xB0);

  return v6(thunk for @escaping @callee_guaranteed (@in_guaranteed CNContact) -> (@out ())partial apply, v5);
}

uint64_t key path getter for ParticipantGrid.ActionHandlers.unblockContact : ParticipantGrid.ActionHandlers@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC0))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed CNContact) -> ();
  a2[1] = result;
  return result;
}

uint64_t key path setter for ParticipantGrid.ActionHandlers.unblockContact : ParticipantGrid.ActionHandlers(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xC8);

  return v6(partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CNContact) -> (@out ()), v5);
}

uint64_t key path getter for ParticipantGrid.ActionHandlers.isPhoneCallAvailable : ParticipantGrid.ActionHandlers@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xD8))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@unowned Bool)partial apply;
  a2[1] = result;
  return result;
}

uint64_t key path setter for ParticipantGrid.ActionHandlers.isPhoneCallAvailable : ParticipantGrid.ActionHandlers(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xE0);

  return v6(thunk for @escaping @callee_guaranteed (@in_guaranteed String) -> (@out Bool)partial apply, v5);
}

uint64_t key path getter for ParticipantGrid.ActionHandlers.startPhoneCall : ParticipantGrid.ActionHandlers@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF0))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = thunk for @escaping @callee_guaranteed (@guaranteed String) -> ()partial apply;
  a2[1] = result;
  return result;
}

uint64_t key path setter for ParticipantGrid.ActionHandlers.startPhoneCall : ParticipantGrid.ActionHandlers(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xF8);

  return v6(thunk for @escaping @callee_guaranteed (@in_guaranteed String) -> (@out ())partial apply, v5);
}

uint64_t key path getter for ParticipantGrid.ActionHandlers.isFaceTimeVideoAvailable : ParticipantGrid.ActionHandlers@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x108))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@unowned Bool);
  a2[1] = result;
  return result;
}

uint64_t key path setter for ParticipantGrid.ActionHandlers.isFaceTimeVideoAvailable : ParticipantGrid.ActionHandlers(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x110);

  return v6(partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed String) -> (@out Bool), v5);
}

uint64_t key path getter for ParticipantGrid.ActionHandlers.startFaceTimeVideoCall : ParticipantGrid.ActionHandlers@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x120))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String) -> ();
  a2[1] = result;
  return result;
}

uint64_t key path setter for ParticipantGrid.ActionHandlers.startFaceTimeVideoCall : ParticipantGrid.ActionHandlers(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x128);

  return v6(partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed String) -> (@out ()), v5);
}

uint64_t key path getter for ParticipantGrid.ActionHandlers.presentPopoverForUnknownContact : ParticipantGrid.ActionHandlers@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x138))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed CNContact, @guaranteed UIView?) -> ();
  a2[1] = result;
  return result;
}

uint64_t key path setter for ParticipantGrid.ActionHandlers.presentPopoverForUnknownContact : ParticipantGrid.ActionHandlers(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x140);

  return v6(partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CNContact, @in_guaranteed UIView?) -> (@out ()), v5);
}

uint64_t ParticipantGrid.ActionHandlers.removeParticipant.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t ParticipantGrid.ActionHandlers.removeParticipant.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

id ParticipantGrid.ActionHandlers.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ParticipantGrid.ActionHandlers.init()()
{
  v1 = &v0[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantGrid14ActionHandlers_removeParticipant];
  *v1 = closure #1 in variable initialization expression of ParticipantGrid.ActionHandlers.removeParticipant;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantGrid14ActionHandlers_blockContact];
  *v2 = closure #1 in variable initialization expression of ParticipantGrid.ActionHandlers.blockContact;
  *(v2 + 1) = 0;
  v3 = &v0[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantGrid14ActionHandlers_unblockContact];
  *v3 = closure #1 in variable initialization expression of ParticipantGrid.ActionHandlers.unblockContact;
  *(v3 + 1) = 0;
  v4 = &v0[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantGrid14ActionHandlers_isPhoneCallAvailable];
  *v4 = closure #1 in variable initialization expression of ParticipantGrid.ActionHandlers.isPhoneCallAvailable;
  v4[1] = 0;
  v5 = &v0[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantGrid14ActionHandlers_startPhoneCall];
  *v5 = closure #1 in variable initialization expression of ParticipantGrid.ActionHandlers.startPhoneCall;
  *(v5 + 1) = 0;
  v6 = &v0[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantGrid14ActionHandlers_isFaceTimeVideoAvailable];
  *v6 = closure #1 in variable initialization expression of ParticipantGrid.ActionHandlers.isFaceTimeVideoAvailable;
  v6[1] = 0;
  v7 = &v0[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantGrid14ActionHandlers_startFaceTimeVideoCall];
  *v7 = closure #1 in variable initialization expression of ParticipantGrid.ActionHandlers.startFaceTimeVideoCall;
  *(v7 + 1) = 0;
  v8 = &v0[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantGrid14ActionHandlers_presentPopoverForUnknownContact];
  *v8 = closure #1 in variable initialization expression of ParticipantGrid.ActionHandlers.presentPopoverForUnknownContact;
  *(v8 + 1) = 0;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for ParticipantGrid.ActionHandlers();
  return objc_msgSendSuper2(&v10, sel_init);
}

id ParticipantGrid.ActionHandlers.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParticipantGrid.ActionHandlers();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for View.body.getter in conformance ParticipantGrid()
{
  v1 = type metadata accessor for PinnedScrollableViews();
  MEMORY[0x1EEE9AC00](v1);
  memcpy(v3, v0, sizeof(v3));

  static HorizontalAlignment.center.getter();
  lazy protocol witness table accessor for type PinnedScrollableViews and conformance PinnedScrollableViews();
  dispatch thunk of OptionSet.init(rawValue:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7ForEachVySay20CommunicationDetails0gH7ContactVGSSAF011ParticipantD0VG_AF21AddParticipantsButtonVSgtGMd);
  lazy protocol witness table accessor for type TupleView<(ForEach<[CommunicationDetailsContact], String, ParticipantView>, AddParticipantsButton?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ForEach<[CommunicationDetailsContact], String, ParticipantView>, AddParticipantsButton?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA7ForEachVySay20CommunicationDetails0gH7ContactVGSSAF011ParticipantD0VG_AF21AddParticipantsButtonVSgtGMd);
  return LazyVGrid.init(columns:alignment:spacing:pinnedViews:content:)();
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for ParticipantGrid(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 296))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticipantGrid(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *(result + 280) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 296) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 296) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CNContact, @in_guaranteed UIView?) -> (@out ())(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed String) -> (@out Bool)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v3(&v5, v6);
  return v5;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@unowned Bool)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result & 1;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CNContact) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed String) -> (@out ())(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

double partial apply for closure #1 in closure #1 in ParticipantGrid.body.getter@<D0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = a1[5];
  v72[4] = a1[4];
  v72[5] = v5;
  v73 = *(a1 + 12);
  v6 = a1[1];
  v72[0] = *a1;
  v72[1] = v6;
  v7 = a1[3];
  v72[2] = a1[2];
  v72[3] = v7;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for ParticipantView.ViewModel();
  v8 = a1[5];
  v46 = a1[4];
  v47 = v8;
  *&v48 = *(a1 + 12);
  v9 = a1[1];
  v42 = *a1;
  v43 = v9;
  v10 = a1[3];
  v44 = a1[2];
  v45 = v10;
  v11 = *(v2 + 264);
  v12 = *(v2 + 280);
  v13 = *(v2 + 288);
  v14 = *(v2 + 296);
  outlined init with copy of CommunicationDetailsContact(v72, v58);
  swift_unknownObjectRetain();

  ParticipantView.ViewModel.__allocating_init(contact:configuration:participantGridActionHandlers:delegate:)(&v42, v12, v11, v13, v14);
  v15 = *(v2 + 208);
  v16 = *(v2 + 240);
  v69 = *(v2 + 224);
  v70 = v16;
  v17 = *(v2 + 144);
  v18 = *(v2 + 176);
  v65 = *(v2 + 160);
  v66 = v18;
  v19 = *(v2 + 176);
  v20 = *(v2 + 208);
  v67 = *(v2 + 192);
  v68 = v20;
  v21 = *(v2 + 80);
  v22 = *(v2 + 112);
  v61 = *(v2 + 96);
  v62 = v22;
  v23 = *(v2 + 112);
  v24 = *(v2 + 144);
  v63 = *(v2 + 128);
  v64 = v24;
  v25 = *(v2 + 48);
  v58[0] = *(v2 + 32);
  v58[1] = v25;
  v26 = *(v2 + 80);
  v28 = *(v2 + 32);
  v27 = *(v2 + 48);
  v59 = *(v2 + 64);
  v60 = v26;
  v29 = *(v2 + 240);
  v40[12] = v69;
  v40[13] = v29;
  v40[8] = v65;
  v40[9] = v19;
  v40[10] = v67;
  v40[11] = v15;
  v40[4] = v61;
  v40[5] = v23;
  v40[6] = v63;
  v40[7] = v17;
  v40[0] = v28;
  v40[1] = v27;
  v71 = *(v2 + 256);
  v41 = *(v2 + 256);
  v40[2] = v59;
  v40[3] = v21;
  v30 = *(v2 + 272);
  outlined init with copy of ParticipantGrid.StyleGuide(v58, &v42);

  ParticipantView.init(viewModel:styleGuide:presentationProxy:)(v40, v30, &v42);

  v31 = v55;
  a2[12] = v54;
  a2[13] = v31;
  v32 = v57;
  a2[14] = v56;
  a2[15] = v32;
  v33 = v51;
  a2[8] = v50;
  a2[9] = v33;
  v34 = v53;
  a2[10] = v52;
  a2[11] = v34;
  v35 = v47;
  a2[4] = v46;
  a2[5] = v35;
  v36 = v49;
  a2[6] = v48;
  a2[7] = v36;
  v37 = v43;
  *a2 = v42;
  a2[1] = v37;
  result = *&v44;
  v39 = v45;
  a2[2] = v44;
  a2[3] = v39;
  return result;
}

uint64_t lazy protocol witness table accessor for type TupleView<(ForEach<[CommunicationDetailsContact], String, ParticipantView>, AddParticipantsButton?)> and conformance TupleView<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticipantView and conformance ParticipantView()
{
  result = lazy protocol witness table cache variable for type ParticipantView and conformance ParticipantView;
  if (!lazy protocol witness table cache variable for type ParticipantView and conformance ParticipantView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantView and conformance ParticipantView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommunicationDetailsContact and conformance CommunicationDetailsContact()
{
  result = lazy protocol witness table cache variable for type CommunicationDetailsContact and conformance CommunicationDetailsContact;
  if (!lazy protocol witness table cache variable for type CommunicationDetailsContact and conformance CommunicationDetailsContact)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommunicationDetailsContact and conformance CommunicationDetailsContact);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CommunicationDetailsContact and conformance CommunicationDetailsContact;
  if (!lazy protocol witness table cache variable for type CommunicationDetailsContact and conformance CommunicationDetailsContact)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommunicationDetailsContact and conformance CommunicationDetailsContact);
  }

  return result;
}

double _s20CommunicationDetails21AddParticipantsButtonVSgWOi0_(uint64_t a1)
{
  *(a1 + 240) = 0;
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t outlined init with copy of AddParticipantsButton?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails21AddParticipantsButtonVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AddParticipantsButton?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails21AddParticipantsButtonVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double key path getter for HorizontalTabControl.scrollState : HorizontalTabControl@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails0E3TabVSgGMd);
  State.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t key path setter for HorizontalTabControl.scrollState : HorizontalTabControl(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5 = *a2;
  outlined copy of DetailsTab?(*a1, a1[1]);
  outlined copy of DetailsTab?(v2, v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails0E3TabVSgGMd);
  State.wrappedValue.setter();
  outlined consume of DetailsTab?(v5, v3);
}

uint64_t HorizontalTabControl.scrollState.setter()
{
  v2 = *v0;
  v3 = v0[1];
  outlined copy of DetailsTab?(*v0, v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails0E3TabVSgGMd);
  State.wrappedValue.setter();
  outlined consume of DetailsTab?(v2, v3);
}

uint64_t outlined copy of DetailsTab?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined consume of DetailsTab?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void (*HorizontalTabControl.scrollState.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xE8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = v1[1];
  v4[22] = *v1;
  v4[23] = v6;
  v7 = v1[2];
  v8 = v1[3];
  v4[24] = v7;
  v4[25] = v8;
  v9 = v1[4];
  v10 = v1[5];
  v4[26] = v9;
  v4[27] = v10;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  v4[4] = v9;
  v4[5] = v10;
  outlined copy of DetailsTab?(v5, v6);

  v4[28] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails0E3TabVSgGMd);
  State.wrappedValue.getter();
  return HorizontalTabControl.scrollState.modify;
}

void HorizontalTabControl.scrollState.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  *(v3 + 48) = *(*a1 + 176);
  v5 = *(v3 + 96);
  *(v3 + 136) = v5;
  v6 = *(v3 + 104);
  v7 = *(v3 + 112);
  v8 = *(v3 + 120);
  v9 = *(v3 + 128);
  v10 = *(v3 + 208);
  *(v3 + 64) = v4;
  *(v3 + 80) = v10;
  *(v3 + 144) = v6;
  *(v3 + 152) = v7;
  *(v3 + 160) = v8;
  *(v3 + 168) = v9;
  if (a2)
  {
    outlined copy of DetailsTab?(v5, v6);
    State.wrappedValue.setter();
    outlined consume of DetailsTab?(*(v3 + 48), *(v3 + 56));

    outlined consume of DetailsTab?(*(v3 + 96), *(v3 + 104));
  }

  else
  {
    State.wrappedValue.setter();
    outlined consume of DetailsTab?(*(v3 + 48), *(v3 + 56));
  }

  free(v3);
}

uint64_t HorizontalTabControl.viewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails20HorizontalTabControlV9ViewModelCGMd);
  State.wrappedValue.getter();
  return v1;
}

uint64_t key path getter for HorizontalTabControl.viewModel : HorizontalTabControl@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails20HorizontalTabControlV9ViewModelCGMd);
  result = State.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t key path setter for HorizontalTabControl.viewModel : HorizontalTabControl()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails20HorizontalTabControlV9ViewModelCGMd);
  return State.wrappedValue.setter();
}

void (*HorizontalTabControl.viewModel.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v6 = *(v1 + 56);
  v5 = *(v1 + 64);
  v4[6] = v6;
  v4[7] = v5;
  *v4 = v6;
  v4[1] = v5;

  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails20HorizontalTabControlV9ViewModelCGMd);
  State.wrappedValue.getter();
  return HorizontalTabControl.viewModel.modify;
}

void HorizontalTabControl.viewModel.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v2[2] = *(*a1 + 48);
  v2[5] = v2[4];
  v2[3] = v3;
  if (a2)
  {

    State.wrappedValue.setter();
  }

  else
  {
    State.wrappedValue.setter();
  }

  free(v2);
}

uint64_t HorizontalTabControl.$viewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails20HorizontalTabControlV9ViewModelCGMd);
  State.projectedValue.getter();
  return v1;
}

uint64_t HorizontalTabControl.styleGuide.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 136);
  v10 = *(v1 + 120);
  v11 = v2;
  v4 = *(v1 + 168);
  v12 = *(v1 + 152);
  v3 = v12;
  v13 = v4;
  v6 = *(v1 + 104);
  v9[0] = *(v1 + 88);
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return outlined init with copy of HorizontalTabControl.StyleGuide(v9, &v8);
}

__n128 HorizontalTabControl.styleGuide.setter(uint64_t a1)
{
  v3 = *(v1 + 136);
  v10[2] = *(v1 + 120);
  v10[3] = v3;
  v4 = *(v1 + 168);
  v10[4] = *(v1 + 152);
  v10[5] = v4;
  v5 = *(v1 + 104);
  v10[0] = *(v1 + 88);
  v10[1] = v5;
  outlined destroy of HorizontalTabControl.StyleGuide(v10);
  v6 = *(a1 + 48);
  *(v1 + 120) = *(a1 + 32);
  *(v1 + 136) = v6;
  v7 = *(a1 + 80);
  *(v1 + 152) = *(a1 + 64);
  *(v1 + 168) = v7;
  result = *a1;
  v9 = *(a1 + 16);
  *(v1 + 88) = *a1;
  *(v1 + 104) = v9;
  return result;
}

double HorizontalTabControl.init(viewModel:styleGuide:)@<D0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  v12 = a1[5];
  v7 = *a1;
  v8 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails0B3TabVSgMd);
  State.init(wrappedValue:)();
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = 0;
  State.init(wrappedValue:)();
  *(a2 + 72) = v4;
  *(a2 + 80) = *(&v4 + 1);
  type metadata accessor for HorizontalTabControl.ViewModel();
  State.init(wrappedValue:)();
  *(a2 + 120) = v9;
  *(a2 + 136) = v10;
  *(a2 + 152) = v11;
  *(a2 + 168) = v12;
  result = *&v7;
  *(a2 + 88) = v7;
  *(a2 + 56) = v4;
  *(a2 + 104) = v8;
  return result;
}

uint64_t HorizontalTabControl.body.getter@<X0>(uint64_t a1@<X8>)
{
  v88 = a1;
  v2 = type metadata accessor for ViewAlignedScrollTargetBehavior.LimitBehavior();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v79 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ViewAlignedScrollTargetBehavior();
  v5 = *(v4 - 8);
  v80 = v4;
  v81 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v78 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6IDViewVyAA10ScrollViewVyAA15ModifiedContentVyAGyAA0E0PAAE18scrollTargetLayout9isEnabledQrSb_tFQOyAA6HStackVyAA7ForEachVySay20CommunicationDetails0Q3TabVGArP0r4ItemE0VGG_Qo_AA08_PaddingJ0VGAZGGSbGMd);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v70 - v8;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19defaultScrollAnchoryQrAA9UnitPointVSgFQOyAA6IDViewVyAA0eC0VyAA15ModifiedContentVyAMyAcAE18scrollTargetLayout9isEnabledQrSb_tFQOyAA6HStackVyAA7ForEachVySay20CommunicationDetails0U3TabVGAvT0v4ItemC0VGG_Qo_AA08_PaddingN0VGA2_GGSbG_Qo_Md);
  v75 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v11 = &v70 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE14scrollPosition2id6anchorQrAA7BindingVyqd__SgG_AA9UnitPointVSgtSHRd__lFQOyAcAE19defaultScrollAnchoryQrAMFQOyAA6IDViewVyAA0lC0VyAA15ModifiedContentVyATyAcAE0D12TargetLayout9isEnabledQrSb_tFQOyAA6HStackVyAA7ForEachVySay20CommunicationDetails0Y3TabVGA1_A_0z4ItemC0VGG_Qo_AA08_PaddingR0VGA9_GGSbG_Qo__A1_Qo_Md);
  v13 = *(v12 - 8);
  v76 = v12;
  v77 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v70 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20scrollTargetBehavioryQrqd__AA06ScrolleF0Rd__lFQOyAcAE0D8Position2id6anchorQrAA7BindingVyqd__SgG_AA9UnitPointVSgtSHRd__lFQOyAcAE07defaultG6AnchoryQrAOFQOyAA6IDViewVyAA0gC0VyAA15ModifiedContentVyAVyAcAE0dE6Layout9isEnabledQrSb_tFQOyAA6HStackVyAA7ForEachVySay20CommunicationDetails0Z3TabVGA3_A1_07TabItemC0VGG_Qo_AA08_PaddingS0VGA11_GGSbG_Qo__A3_Qo__AA0c7AlignedgeF0VQo_Md);
  v16 = *(v15 - 8);
  v82 = v15;
  v83 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v74 = &v70 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAE20scrollTargetBehavioryQrqd__AA06ScrolliJ0Rd__lFQOyAcAE0H8Position2id6anchorQrAA7BindingVyqd__SgG_AA9UnitPointVSgtSHRd__lFQOyAcAE07defaultK6AnchoryQrARFQOyAA6IDViewVyAA0kC0VyAA15ModifiedContentVyAYyAcAE0hI6Layout9isEnabledQrSb_tFQOyAA6HStackVyAA7ForEachVySay20CommunicationDetails10DetailsTabVGA6_A4_07TabItemC0VGG_Qo_AA08_PaddingW0VGA14_GGSbG_Qo__A6_Qo__AA0c7AlignedkiJ0VQo__A6_SgQo_Md);
  v19 = *(v18 - 8);
  v85 = v18;
  v86 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v89 = &v70 - v20;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAE20scrollTargetBehavioryQrqd__AA06ScrollkL0Rd__lFQOyAeAE0J8Position2id6anchorQrAA7BindingVyqd__SgG_AA9UnitPointVSgtSHRd__lFQOyAeAE07defaultM6AnchoryQrATFQOyAA6IDViewVyAA0mE0VyACyACyAeAE0jK6Layout9isEnabledQrSb_tFQOyAA6HStackVyAA7ForEachVySay20CommunicationDetails10DetailsTabVGA6_A4_07TabItemE0VGG_Qo_AA08_PaddingW0VGA14_GGSbG_Qo__A6_Qo__AA0e7AlignedmkL0VQo__A6_SgQo__A7_Qo_AA18_AnimationModifierVyA24_GGMd);
  MEMORY[0x1EEE9AC00](v87);
  v84 = &v70 - v21;
  v22 = v1[9];
  v108 = v1[8];
  v109 = v22;
  v110 = v1[10];
  v111 = *(v1 + 22);
  v23 = v1[5];
  v105[1] = v1[4];
  v105[2] = v23;
  v24 = v1[7];
  v106 = v1[6];
  v107 = v24;
  v25 = v1[1];
  v102 = *v1;
  v103 = v25;
  v26 = v1[3];
  v104 = v1[2];
  v105[0] = v26;
  static Axis.Set.horizontal.getter();
  v90 = &v102;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE18scrollTargetLayout9isEnabledQrSb_tFQOyAA6HStackVyAA7ForEachVySay20CommunicationDetails0O3TabVGAnL0p4ItemE0VGG_Qo_AA08_PaddingH0VGAVGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.scrollTargetLayout(isEnabled:)>>.0, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  ScrollView.init(_:showsIndicators:content:)();
  v91 = *(&v105[1] + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  v9[*(v7 + 52)] = v98;
  static UnitPoint.center.getter();
  v27 = lazy protocol witness table accessor for type HStack<ForEach<[DetailsTab], DetailsTab, TabItemView>> and conformance HStack<A>(&lazy protocol witness table cache variable for type IDView<ScrollView<ModifiedContent<ModifiedContent<<<opaque return type of View.scrollTargetLayout(isEnabled:)>>.0, _PaddingLayout>, _PaddingLayout>>, Bool> and conformance IDView<A, B>, &_s7SwiftUI6IDViewVyAA10ScrollViewVyAA15ModifiedContentVyAGyAA0E0PAAE18scrollTargetLayout9isEnabledQrSb_tFQOyAA6HStackVyAA7ForEachVySay20CommunicationDetails0Q3TabVGArP0r4ItemE0VGG_Qo_AA08_PaddingJ0VGAZGGSbGMd);
  View.defaultScrollAnchor(_:)();
  outlined destroy of IDView<ScrollView<ModifiedContent<ModifiedContent<<<opaque return type of View.scrollTargetLayout(isEnabled:)>>.0, _PaddingLayout>, _PaddingLayout>>, Bool>(v9, &_s7SwiftUI6IDViewVyAA10ScrollViewVyAA15ModifiedContentVyAGyAA0E0PAAE18scrollTargetLayout9isEnabledQrSb_tFQOyAA6HStackVyAA7ForEachVySay20CommunicationDetails0Q3TabVGArP0r4ItemE0VGG_Qo_AA08_PaddingJ0VGAZGGSbGMd);
  v98 = v102;
  v99 = v103;
  v100 = v104;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails0E3TabVSgGMd);
  State.projectedValue.getter();
  v98 = v91;
  v99 = v92;
  v100 = v93;
  v101 = v94;
  static UnitPoint.center.getter();
  *&v95 = v7;
  *(&v95 + 1) = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = lazy protocol witness table accessor for type DetailsTab and conformance DetailsTab();
  v29 = v73;
  View.scrollPosition<A>(id:anchor:)();
  v30 = v99;

  outlined consume of DetailsTab?(v30, *(&v30 + 1));
  (*(v75 + 8))(v11, v29);
  static ViewAlignedScrollTargetBehavior.LimitBehavior.automatic.getter();
  v31 = v78;
  ViewAlignedScrollTargetBehavior.init(limitBehavior:)();
  *&v91 = v29;
  *(&v91 + 1) = &type metadata for DetailsTab;
  *&v92 = OpaqueTypeConformance2;
  *(&v92 + 1) = v28;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = v74;
  v34 = v31;
  v35 = v76;
  v36 = v80;
  v37 = v72;
  View.scrollTargetBehavior<A>(_:)();
  (*(v81 + 8))(v34, v36);
  v38 = v35;
  (*(v77 + 8))(v37, v35);
  v112 = *(v105 + 8);
  v91 = *(v105 + 8);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails20HorizontalTabControlV9ViewModelCGMd);
  v39 = State.wrappedValue.getter();
  (*(*v98 + 184))(&v98, v39);

  v95 = v98;
  v96 = v99;
  v97 = v100;
  v40 = swift_allocObject();
  v41 = v109;
  *(v40 + 144) = v108;
  *(v40 + 160) = v41;
  *(v40 + 176) = v110;
  *(v40 + 192) = v111;
  v42 = v105[2];
  *(v40 + 80) = v105[1];
  *(v40 + 96) = v42;
  v43 = v107;
  *(v40 + 112) = v106;
  *(v40 + 128) = v43;
  v44 = v103;
  *(v40 + 16) = v102;
  *(v40 + 32) = v44;
  v45 = v105[0];
  *(v40 + 48) = v104;
  *(v40 + 64) = v45;
  outlined init with copy of HorizontalTabControl(&v102, &v91);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails0B3TabVSgMd);
  *&v91 = v38;
  *(&v91 + 1) = v36;
  *&v92 = v32;
  *(&v92 + 1) = MEMORY[0x1E697CC08];
  v47 = swift_getOpaqueTypeConformance2();
  v48 = lazy protocol witness table accessor for type DetailsTab? and conformance <A> A?(&lazy protocol witness table cache variable for type DetailsTab? and conformance <A> A?, &_s20CommunicationDetails0B3TabVSgMd);
  v49 = v82;
  View.onChange<A>(of:initial:_:)();

  outlined consume of DetailsTab?(v95, *(&v95 + 1));
  v50 = v33;
  v51 = v49;
  (*(v83 + 8))(v50, v49);
  v91 = v112;
  v52 = State.wrappedValue.getter();
  v53 = (*(*v98 + 136))(v52);

  *&v98 = v53;
  v54 = swift_allocObject();
  v55 = v109;
  *(v54 + 144) = v108;
  *(v54 + 160) = v55;
  *(v54 + 176) = v110;
  *(v54 + 192) = v111;
  v56 = v105[2];
  *(v54 + 80) = v105[1];
  *(v54 + 96) = v56;
  v57 = v107;
  *(v54 + 112) = v106;
  *(v54 + 128) = v57;
  v58 = v103;
  *(v54 + 16) = v102;
  *(v54 + 32) = v58;
  v59 = v105[0];
  *(v54 + 48) = v104;
  *(v54 + 64) = v59;
  outlined init with copy of HorizontalTabControl(&v102, &v91);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay20CommunicationDetails0B3TabVGMd);
  *&v91 = v51;
  *(&v91 + 1) = v46;
  *&v92 = v47;
  *(&v92 + 1) = v48;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type DetailsTab? and conformance <A> A?(&lazy protocol witness table cache variable for type [DetailsTab] and conformance <A> [A], &_sSay20CommunicationDetails0B3TabVGMd);
  v61 = v84;
  v60 = v85;
  v62 = v89;
  View.onChange<A>(of:initial:_:)();

  (*(v86 + 8))(v62, v60);
  v63 = static Animation.default.getter();
  v91 = v112;
  v64 = State.wrappedValue.getter();
  (*(*v98 + 184))(&v91, v64);

  v65 = v91;
  v66 = v92;
  v67 = v93;
  v68 = v61 + *(v87 + 36);
  *v68 = v63;
  *(v68 + 8) = v65;
  *(v68 + 24) = v66;
  *(v68 + 40) = v67;

  outlined copy of DetailsTab?(v65, *(&v65 + 1));

  outlined consume of DetailsTab?(v65, *(&v65 + 1));
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AnimationModifier<DetailsTab?>> and conformance <> ModifiedContent<A, B>();
  View.accessibilityIdentifier(_:)();
  return outlined destroy of IDView<ScrollView<ModifiedContent<ModifiedContent<<<opaque return type of View.scrollTargetLayout(isEnabled:)>>.0, _PaddingLayout>, _PaddingLayout>>, Bool>(v61, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAE20scrollTargetBehavioryQrqd__AA06ScrollkL0Rd__lFQOyAeAE0J8Position2id6anchorQrAA7BindingVyqd__SgG_AA9UnitPointVSgtSHRd__lFQOyAeAE07defaultM6AnchoryQrATFQOyAA6IDViewVyAA0mE0VyACyACyAeAE0jK6Layout9isEnabledQrSb_tFQOyAA6HStackVyAA7ForEachVySay20CommunicationDetails10DetailsTabVGA6_A4_07TabItemE0VGG_Qo_AA08_PaddingW0VGA14_GGSbG_Qo__A6_Qo__AA0e7AlignedmkL0VQo__A6_SgQo__A7_Qo_AA18_AnimationModifierVyA24_GGMd);
}

uint64_t closure #1 in HorizontalTabControl.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  *&v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA7ForEachVySay20CommunicationDetails0G3TabVGAhF0H8ItemViewVGGMd);
  MEMORY[0x1EEE9AC00](v45);
  v4 = &v35 - v3;
  *&v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE18scrollTargetLayout9isEnabledQrSb_tFQOyAA6HStackVyAA7ForEachVySay20CommunicationDetails0M3TabVGAlJ0n4ItemC0VGG_Qo_Md);
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v6 = &v35 - v5;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE18scrollTargetLayout9isEnabledQrSb_tFQOyAA6HStackVyAA7ForEachVySay20CommunicationDetails0O3TabVGAnL0p4ItemE0VGG_Qo_AA08_PaddingH0VGMd);
  MEMORY[0x1EEE9AC00](v39);
  v8 = &v35 - v7;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE18scrollTargetLayout9isEnabledQrSb_tFQOyAA6HStackVyAA7ForEachVySay20CommunicationDetails0O3TabVGAnL0p4ItemE0VGG_Qo_AA08_PaddingH0VGAVGMd);
  MEMORY[0x1EEE9AC00](v43);
  v10 = &v35 - v9;
  type metadata accessor for MainActor();
  v41 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v37 = *(a1 + 152);
  v38 = *(a1 + 168);
  v11 = *(a1 + 176);
  *v4 = static VerticalAlignment.center.getter();
  *(v4 + 1) = v11;
  v4[16] = 0;
  *&v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA7ForEachVySay20CommunicationDetails0K3TabVGAlJ0l4ItemD0VGGMd) + 44);
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v46[0] = *(a1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails20HorizontalTabControlV9ViewModelCGMd);
  v12 = State.wrappedValue.getter();
  v13 = (*(*v47 + 136))(v12);

  v47 = v13;
  swift_getKeyPath();
  v14 = swift_allocObject();
  v15 = *(a1 + 144);
  *(v14 + 144) = *(a1 + 128);
  *(v14 + 160) = v15;
  *(v14 + 176) = *(a1 + 160);
  *(v14 + 192) = *(a1 + 176);
  v16 = *(a1 + 80);
  *(v14 + 80) = *(a1 + 64);
  *(v14 + 96) = v16;
  v17 = *(a1 + 112);
  *(v14 + 112) = *(a1 + 96);
  *(v14 + 128) = v17;
  v18 = *(a1 + 16);
  *(v14 + 16) = *a1;
  *(v14 + 32) = v18;
  v19 = *(a1 + 48);
  *(v14 + 48) = *(a1 + 32);
  *(v14 + 64) = v19;
  outlined init with copy of HorizontalTabControl(a1, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay20CommunicationDetails0B3TabVGMd);
  lazy protocol witness table accessor for type HStack<ForEach<[DetailsTab], DetailsTab, TabItemView>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [DetailsTab] and conformance [A], &_sSay20CommunicationDetails0B3TabVGMd);
  lazy protocol witness table accessor for type DetailsTab and conformance DetailsTab();
  lazy protocol witness table accessor for type TabItemView and conformance TabItemView();
  ForEach<>.init(_:id:content:)();

  lazy protocol witness table accessor for type HStack<ForEach<[DetailsTab], DetailsTab, TabItemView>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<ForEach<[DetailsTab], DetailsTab, TabItemView>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA7ForEachVySay20CommunicationDetails0G3TabVGAhF0H8ItemViewVGGMd);
  View.scrollTargetLayout(isEnabled:)();
  outlined destroy of State<Bool>(v4, &_s7SwiftUI6HStackVyAA7ForEachVySay20CommunicationDetails0G3TabVGAhF0H8ItemViewVGGMd);
  v45 = 0u;
  v20 = static Edge.Set.horizontal.getter();
  v21 = 0uLL;
  v22 = 0uLL;
  v23 = v37;
  if ((v37 & 1) == 0)
  {
    EdgeInsets.init(_all:)();
    *(&v22 + 1) = v24;
    *(&v21 + 1) = v25;
  }

  v35 = v22;
  v36 = v21;
  (*(v40 + 32))(v8, v6, v42);
  v26 = &v8[*(v39 + 36)];
  *v26 = v20;
  *(v26 + 24) = v35;
  *(v26 + 8) = v36;
  v26[40] = v23 & 1;
  v27 = static Edge.Set.vertical.getter();
  v28 = 0uLL;
  v29 = v38;
  if ((v38 & 1) == 0)
  {
    EdgeInsets.init(_all:)();
    *(&v28 + 1) = v30;
    *(&v32 + 1) = v31;
    v45 = v32;
  }

  v42 = v28;
  outlined init with take of ModifiedContent<<<opaque return type of View.scrollTargetLayout(isEnabled:)>>.0, _PaddingLayout>(v8, v10, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE18scrollTargetLayout9isEnabledQrSb_tFQOyAA6HStackVyAA7ForEachVySay20CommunicationDetails0O3TabVGAnL0p4ItemE0VGG_Qo_AA08_PaddingH0VGMd);
  v33 = &v10[*(v43 + 36)];
  *v33 = v27;
  *(v33 + 24) = v42;
  *(v33 + 8) = v45;
  v33[40] = v29 & 1;
  outlined init with take of ModifiedContent<<<opaque return type of View.scrollTargetLayout(isEnabled:)>>.0, _PaddingLayout>(v10, v44, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE18scrollTargetLayout9isEnabledQrSb_tFQOyAA6HStackVyAA7ForEachVySay20CommunicationDetails0O3TabVGAnL0p4ItemE0VGG_Qo_AA08_PaddingH0VGAVGMd);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.scrollTargetLayout(isEnabled:)>>.0, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.scrollTargetLayout(isEnabled:)>>.0, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.scrollTargetLayout(isEnabled:)>>.0, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE18scrollTargetLayout9isEnabledQrSb_tFQOyAA6HStackVyAA7ForEachVySay20CommunicationDetails0O3TabVGAnL0p4ItemE0VGG_Qo_AA08_PaddingH0VGAVGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.scrollTargetLayout(isEnabled:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.scrollTargetLayout(isEnabled:)>>.0, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.scrollTargetLayout(isEnabled:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.scrollTargetLayout(isEnabled:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.scrollTargetLayout(isEnabled:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE18scrollTargetLayout9isEnabledQrSb_tFQOyAA6HStackVyAA7ForEachVySay20CommunicationDetails0O3TabVGAnL0p4ItemE0VGG_Qo_AA08_PaddingH0VGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6HStackVyAA7ForEachVySay20CommunicationDetails0G3TabVGAhF0H8ItemViewVGGMd);
    lazy protocol witness table accessor for type HStack<ForEach<[DetailsTab], DetailsTab, TabItemView>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<ForEach<[DetailsTab], DetailsTab, TabItemView>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA7ForEachVySay20CommunicationDetails0G3TabVGAhF0H8ItemViewVGGMd);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.scrollTargetLayout(isEnabled:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DetailsTab and conformance DetailsTab()
{
  result = lazy protocol witness table cache variable for type DetailsTab and conformance DetailsTab;
  if (!lazy protocol witness table cache variable for type DetailsTab and conformance DetailsTab)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DetailsTab and conformance DetailsTab);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DetailsTab and conformance DetailsTab;
  if (!lazy protocol witness table cache variable for type DetailsTab and conformance DetailsTab)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DetailsTab and conformance DetailsTab);
  }

  return result;
}

double key path getter for HorizontalTabControl.ViewModel.selectedTab : HorizontalTabControl.ViewModel@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 184))(v6);
  v3 = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v3;
  return result;
}

uint64_t key path setter for HorizontalTabControl.ViewModel.selectedTab : HorizontalTabControl.ViewModel(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = *a2;
  v9[0] = *a1;
  v9[1] = v2;
  v9[2] = v3;
  v9[3] = v4;
  v9[4] = v5;
  v7 = *(*v6 + 192);
  outlined copy of DetailsTab?(v9[0], v2);
  return v7(v9);
}

uint64_t closure #2 in HorizontalTabControl.body.getter()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x1EEE9AC00](isCurrentExecutor);
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t closure #3 in HorizontalTabControl.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v5 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  v17[1] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for OS_dispatch_queue();
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  v10 = *(a1 + 144);
  *(v9 + 144) = *(a1 + 128);
  *(v9 + 160) = v10;
  *(v9 + 176) = *(a1 + 160);
  *(v9 + 192) = *(a1 + 176);
  v11 = *(a1 + 80);
  *(v9 + 80) = *(a1 + 64);
  *(v9 + 96) = v11;
  v12 = *(a1 + 112);
  *(v9 + 112) = *(a1 + 96);
  *(v9 + 128) = v12;
  v13 = *(a1 + 16);
  *(v9 + 16) = *a1;
  *(v9 + 32) = v13;
  v14 = *(a1 + 48);
  *(v9 + 48) = *(a1 + 32);
  *(v9 + 64) = v14;
  aBlock[4] = partial apply for closure #1 in closure #3 in HorizontalTabControl.body.getter;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor;
  v15 = _Block_copy(aBlock);
  outlined init with copy of HorizontalTabControl(a1, v20);
  static DispatchQoS.unspecified.getter();
  v20[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type HStack<ForEach<[DetailsTab], DetailsTab, TabItemView>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x193AEACA0](0, v7, v4, v15);
  _Block_release(v15);

  (*(v19 + 8))(v4, v2);
  (*(v5 + 8))(v7, v18);
}

uint64_t lazy protocol witness table accessor for type DetailsTab? and conformance <A> A?(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    lazy protocol witness table accessor for type DetailsTab and conformance DetailsTab();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AnimationModifier<DetailsTab?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AnimationModifier<DetailsTab?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AnimationModifier<DetailsTab?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAE20scrollTargetBehavioryQrqd__AA06ScrollkL0Rd__lFQOyAeAE0J8Position2id6anchorQrAA7BindingVyqd__SgG_AA9UnitPointVSgtSHRd__lFQOyAeAE07defaultM6AnchoryQrATFQOyAA6IDViewVyAA0mE0VyACyACyAeAE0jK6Layout9isEnabledQrSb_tFQOyAA6HStackVyAA7ForEachVySay20CommunicationDetails10DetailsTabVGA6_A4_07TabItemE0VGG_Qo_AA08_PaddingW0VGA14_GGSbG_Qo__A6_Qo__AA0e7AlignedmkL0VQo__A6_SgQo__A7_Qo_AA18_AnimationModifierVyA24_GGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAE20scrollTargetBehavioryQrqd__AA06ScrolliJ0Rd__lFQOyAcAE0H8Position2id6anchorQrAA7BindingVyqd__SgG_AA9UnitPointVSgtSHRd__lFQOyAcAE07defaultK6AnchoryQrARFQOyAA6IDViewVyAA0kC0VyAA15ModifiedContentVyAYyAcAE0hI6Layout9isEnabledQrSb_tFQOyAA6HStackVyAA7ForEachVySay20CommunicationDetails10DetailsTabVGA6_A4_07TabItemC0VGG_Qo_AA08_PaddingW0VGA14_GGSbG_Qo__A6_Qo__AA0c7AlignedkiJ0VQo__A6_SgQo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay20CommunicationDetails0B3TabVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE20scrollTargetBehavioryQrqd__AA06ScrolleF0Rd__lFQOyAcAE0D8Position2id6anchorQrAA7BindingVyqd__SgG_AA9UnitPointVSgtSHRd__lFQOyAcAE07defaultG6AnchoryQrAOFQOyAA6IDViewVyAA0gC0VyAA15ModifiedContentVyAVyAcAE0dE6Layout9isEnabledQrSb_tFQOyAA6HStackVyAA7ForEachVySay20CommunicationDetails0Z3TabVGA3_A1_07TabItemC0VGG_Qo_AA08_PaddingS0VGA11_GGSbG_Qo__A3_Qo__AA0c7AlignedgeF0VQo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s20CommunicationDetails0B3TabVSgMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE14scrollPosition2id6anchorQrAA7BindingVyqd__SgG_AA9UnitPointVSgtSHRd__lFQOyAcAE19defaultScrollAnchoryQrAMFQOyAA6IDViewVyAA0lC0VyAA15ModifiedContentVyATyAcAE0D12TargetLayout9isEnabledQrSb_tFQOyAA6HStackVyAA7ForEachVySay20CommunicationDetails0Y3TabVGA1_A_0z4ItemC0VGG_Qo_AA08_PaddingR0VGA9_GGSbG_Qo__A1_Qo_Md);
    type metadata accessor for ViewAlignedScrollTargetBehavior();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE19defaultScrollAnchoryQrAA9UnitPointVSgFQOyAA6IDViewVyAA0eC0VyAA15ModifiedContentVyAMyAcAE18scrollTargetLayout9isEnabledQrSb_tFQOyAA6HStackVyAA7ForEachVySay20CommunicationDetails0U3TabVGAvT0v4ItemC0VGG_Qo_AA08_PaddingN0VGA2_GGSbG_Qo_Md);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6IDViewVyAA10ScrollViewVyAA15ModifiedContentVyAGyAA0E0PAAE18scrollTargetLayout9isEnabledQrSb_tFQOyAA6HStackVyAA7ForEachVySay20CommunicationDetails0Q3TabVGArP0r4ItemE0VGG_Qo_AA08_PaddingJ0VGAZGGSbGMd);
    lazy protocol witness table accessor for type HStack<ForEach<[DetailsTab], DetailsTab, TabItemView>> and conformance HStack<A>(&lazy protocol witness table cache variable for type IDView<ScrollView<ModifiedContent<ModifiedContent<<<opaque return type of View.scrollTargetLayout(isEnabled:)>>.0, _PaddingLayout>, _PaddingLayout>>, Bool> and conformance IDView<A, B>, &_s7SwiftUI6IDViewVyAA10ScrollViewVyAA15ModifiedContentVyAGyAA0E0PAAE18scrollTargetLayout9isEnabledQrSb_tFQOyAA6HStackVyAA7ForEachVySay20CommunicationDetails0Q3TabVGArP0r4ItemE0VGG_Qo_AA08_PaddingJ0VGAZGGSbGMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type DetailsTab and conformance DetailsTab();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type DetailsTab? and conformance <A> A?(&lazy protocol witness table cache variable for type DetailsTab? and conformance <A> A?, &_s20CommunicationDetails0B3TabVSgMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type DetailsTab? and conformance <A> A?(&lazy protocol witness table cache variable for type [DetailsTab] and conformance <A> [A], &_sSay20CommunicationDetails0B3TabVGMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type HStack<ForEach<[DetailsTab], DetailsTab, TabItemView>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _AnimationModifier<DetailsTab?> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVy20CommunicationDetails0F3TabVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AnimationModifier<DetailsTab?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of IDView<ScrollView<ModifiedContent<ModifiedContent<<<opaque return type of View.scrollTargetLayout(isEnabled:)>>.0, _PaddingLayout>, _PaddingLayout>>, Bool>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t get_enum_tag_for_layout_string_20CommunicationDetails0B3TabVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy184_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for HorizontalTabControl(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for HorizontalTabControl(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AnimationModifier<DetailsTab?>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AnimationModifier<DetailsTab?>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AnimationModifier<DetailsTab?>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAE20scrollTargetBehavioryQrqd__AA06ScrollkL0Rd__lFQOyAeAE0J8Position2id6anchorQrAA7BindingVyqd__SgG_AA9UnitPointVSgtSHRd__lFQOyAeAE07defaultM6AnchoryQrATFQOyAA6IDViewVyAA0mE0VyACyACyAeAE0jK6Layout9isEnabledQrSb_tFQOyAA6HStackVyAA7ForEachVySay20CommunicationDetails10DetailsTabVGA6_A4_07TabItemE0VGG_Qo_AA08_PaddingW0VGA14_GGSbG_Qo__A6_Qo__AA0e7AlignedmkL0VQo__A6_SgQo__A7_Qo_AA18_AnimationModifierVyA24_GGAA31AccessibilityAttachmentModifierVGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AnimationModifier<DetailsTab?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AnimationModifier<DetailsTab?>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #3 in HorizontalTabControl.body.getter()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(v0 + 88);
  v2[1] = *(v0 + 88);
  v4 = *(&v3 + 1);
  outlined init with copy of AnyLocation<Bool>?(&v4, v2, &_s7SwiftUI11AnyLocationCySbGSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  v2[0] = v3;
  State.wrappedValue.setter();
  outlined destroy of State<Bool>(&v3, &_s7SwiftUI5StateVySbGMd);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #2 in HorizontalTabControl.body.getter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *v2;
  v4 = v2[2];
  v15[1] = v2[1];
  v15[2] = v4;
  v15[0] = v3;
  v5 = *v2;
  v6 = v2[2];
  v13 = v2[1];
  v14 = v6;
  v12 = v5;
  v7 = *v1;
  v8 = *(v1 + 16);
  v11 = *(v1 + 32);
  v10[3] = v7;
  v10[4] = v8;
  outlined init with copy of AnyLocation<Bool>?(v15, v10, &_s7SwiftUI5StateVy20CommunicationDetails0E3TabVSgGMd);
  outlined init with copy of AnyLocation<Bool>?(v1, v10, &_s20CommunicationDetails0B3TabVSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails0E3TabVSgGMd);
  State.wrappedValue.setter();
  outlined consume of DetailsTab?(v12, *(&v12 + 1));
}

uint64_t outlined init with copy of AnyLocation<Bool>?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of State<Bool>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of ModifiedContent<<<opaque return type of View.scrollTargetLayout(isEnabled:)>>.0, _PaddingLayout>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 200, 7);
}

double partial apply for closure #1 in closure #1 in closure #1 in HorizontalTabControl.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v21 = *(a1 + 16);
  v6 = *(a1 + 32);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = Namespace.wrappedValue.getter();
  v34[0] = v5;
  v34[1] = v4;
  v35 = v21;
  v36 = v6;
  v51[0] = *(v2 + 72);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails20HorizontalTabControlV9ViewModelCGMd);
  State.projectedValue.getter();
  swift_getKeyPath();
  v32 = v37;
  v33 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy20CommunicationDetails20HorizontalTabControlV9ViewModelCGMd);
  Binding.subscript.getter();

  v23[0] = v27;
  v23[1] = v28;
  v25 = v30;
  v24 = v29;
  v26 = v31;
  v7 = *(v2 + 152);
  v51[2] = *(v2 + 136);
  v51[3] = v7;
  v8 = *(v2 + 184);
  v51[4] = *(v2 + 168);
  v51[5] = v8;
  v9 = *(v2 + 120);
  v51[0] = *(v2 + 104);
  v51[1] = v9;
  v10 = *(v2 + 152);
  v22[2] = *(v2 + 136);
  v22[3] = v10;
  v11 = *(v2 + 184);
  v22[4] = *(v2 + 168);
  v22[5] = v11;
  v12 = *(v2 + 120);
  v22[0] = *(v2 + 104);
  v22[1] = v12;
  outlined init with copy of HorizontalTabControl.StyleGuide(v51, &v37);
  TabItemView.init(namespace:tab:selectedTab:styleGuide:)(v20, v34, v23, v22, &v37);

  v13 = v48;
  *(a2 + 160) = v47;
  *(a2 + 176) = v13;
  *(a2 + 192) = v49;
  *(a2 + 208) = v50;
  v14 = v44;
  *(a2 + 96) = v43;
  *(a2 + 112) = v14;
  v15 = v46;
  *(a2 + 128) = v45;
  *(a2 + 144) = v15;
  v16 = v40;
  *(a2 + 32) = v39;
  *(a2 + 48) = v16;
  v17 = v42;
  *(a2 + 64) = v41;
  *(a2 + 80) = v17;
  result = *&v37;
  v19 = v38;
  *a2 = v37;
  *(a2 + 16) = v19;
  return result;
}

uint64_t lazy protocol witness table accessor for type HStack<ForEach<[DetailsTab], DetailsTab, TabItemView>> and conformance HStack<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TabItemView and conformance TabItemView()
{
  result = lazy protocol witness table cache variable for type TabItemView and conformance TabItemView;
  if (!lazy protocol witness table cache variable for type TabItemView and conformance TabItemView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabItemView and conformance TabItemView);
  }

  return result;
}

double static Geometry.clamp(_:lower:upper:)(double result, double a2, double a3)
{
  if (result <= a2)
  {
    result = a2;
  }

  if (result >= a3)
  {
    return a3;
  }

  return result;
}

uint64_t default argument 2 of HorizontalTabControl.StyleGuide.init(tabFont:tabForegroundStyle:tabBackgroundStyle:tabTitlePadding:tabBarHorizontalEdgePadding:tabBarVerticalEdgePadding:tabSpacing:)()
{
  v0 = type metadata accessor for BlendedColor();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = DetailsStyleGuide.globalListRowBackgroundColor.unsafeMutableAddressor();
  outlined init with copy of BlendedColor(v3, v2);
  lazy protocol witness table accessor for type BlendedColor and conformance BlendedColor();
  return AnyShapeStyle.init<A>(_:)();
}

uint64_t outlined init with copy of BlendedColor(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BlendedColor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type BlendedColor and conformance BlendedColor()
{
  result = lazy protocol witness table cache variable for type BlendedColor and conformance BlendedColor;
  if (!lazy protocol witness table cache variable for type BlendedColor and conformance BlendedColor)
  {
    type metadata accessor for BlendedColor();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BlendedColor and conformance BlendedColor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BlendedColor and conformance BlendedColor;
  if (!lazy protocol witness table cache variable for type BlendedColor and conformance BlendedColor)
  {
    type metadata accessor for BlendedColor();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BlendedColor and conformance BlendedColor);
  }

  return result;
}

uint64_t HorizontalTabControl.StyleGuide.init(tabFont:tabForegroundStyle:tabBackgroundStyle:tabTitlePadding:tabBarHorizontalEdgePadding:tabBarVerticalEdgePadding:tabSpacing:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X5>, char a6@<W6>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>)
{
  static Font.Weight.medium.getter();
  v24 = Font.weight(_:)();

  *a7 = v24;
  *(a7 + 8) = a1;
  *(a7 + 16) = a2;
  *(a7 + 24) = a8;
  *(a7 + 32) = a9;
  *(a7 + 40) = a10;
  *(a7 + 48) = a11;
  *(a7 + 56) = a3;
  *(a7 + 64) = a4 & 1;
  *(a7 + 72) = a5;
  *(a7 + 80) = a6 & 1;
  *(a7 + 88) = a12;
  return result;
}

double closure #1 in variable initialization expression of static HorizontalTabControl.StyleGuide.default()
{
  v0 = type metadata accessor for BlendedColor();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Font.subheadline.getter();
  v10 = static Color.primary.getter();
  v3 = AnyShapeStyle.init<A>(_:)();
  v4 = DetailsStyleGuide.globalListRowBackgroundColor.unsafeMutableAddressor();
  outlined init with copy of BlendedColor(v4, v2);
  lazy protocol witness table accessor for type BlendedColor and conformance BlendedColor();
  v5 = AnyShapeStyle.init<A>(_:)();
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #1 in default argument 5 of HorizontalTabControl.StyleGuide.init(tabFont:tabForegroundStyle:tabBackgroundStyle:tabTitlePadding:tabBarHorizontalEdgePadding:tabBarVerticalEdgePadding:tabSpacing:), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v10, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, MEMORY[0x1E69E7DE0]);
  v6 = v10;
  static Font.Weight.medium.getter();
  v7 = Font.weight(_:)();

  *&static HorizontalTabControl.StyleGuide.default = v7;
  *(&static HorizontalTabControl.StyleGuide.default + 1) = v3;
  qword_1EAD3A088 = v5;
  result = 10.0;
  unk_1EAD3A090 = xmmword_1901E5590;
  *(&xmmword_1EAD3A098 + 8) = xmmword_1901E5590;
  qword_1EAD3A0B0 = 0x4030000000000000;
  LOBYTE(xmmword_1EAD3A0B8) = 0;
  *(&xmmword_1EAD3A0B8 + 1) = v6;
  byte_1EAD3A0C8 = 0;
  qword_1EAD3A0D0 = 0;
  return result;
}

__int128 *HorizontalTabControl.StyleGuide.default.unsafeMutableAddressor()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  return &static HorizontalTabControl.StyleGuide.default;
}

uint64_t static HorizontalTabControl.StyleGuide.default.getter@<X0>(__int128 *a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1EAD3A0A8;
  v9[2] = xmmword_1EAD3A098;
  v9[3] = unk_1EAD3A0A8;
  v2 = xmmword_1EAD3A0B8;
  v3 = *&byte_1EAD3A0C8;
  v9[4] = xmmword_1EAD3A0B8;
  v9[5] = *&byte_1EAD3A0C8;
  v4 = static HorizontalTabControl.StyleGuide.default;
  v5 = *&qword_1EAD3A088;
  v9[0] = static HorizontalTabControl.StyleGuide.default;
  v9[1] = *&qword_1EAD3A088;
  a1[2] = xmmword_1EAD3A098;
  a1[3] = v1;
  a1[4] = v2;
  a1[5] = v3;
  *a1 = v4;
  a1[1] = v5;
  return outlined init with copy of HorizontalTabControl.StyleGuide(v9, &v8);
}

double closure #1 in variable initialization expression of static HorizontalTabControl.StyleGuide.poster()
{
  v0 = type metadata accessor for Material();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - v5;
  static ContactCardStyleProvider.defaultBackgroundMaterial.getter();
  v13 = static Color.white.getter();
  v7 = AnyShapeStyle.init<A>(_:)();
  (*(v1 + 16))(v4, v6, v0);
  v8 = AnyShapeStyle.init<A>(_:)();
  static Font.subheadline.getter();
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #1 in default argument 5 of HorizontalTabControl.StyleGuide.init(tabFont:tabForegroundStyle:tabBackgroundStyle:tabTitlePadding:tabBarHorizontalEdgePadding:tabBarVerticalEdgePadding:tabSpacing:), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v13, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, MEMORY[0x1E69E7DE0]);
  v9 = v13;
  static Font.Weight.medium.getter();
  v10 = Font.weight(_:)();

  (*(v1 + 8))(v6, v0);
  *&static HorizontalTabControl.StyleGuide.poster = v10;
  *(&static HorizontalTabControl.StyleGuide.poster + 1) = v7;
  qword_1EAD3A898 = v8;
  result = 10.0;
  unk_1EAD3A8A0 = xmmword_1901E5590;
  *(&xmmword_1EAD3A8A8 + 8) = xmmword_1901E5590;
  qword_1EAD3A8C0 = 0x4030000000000000;
  LOBYTE(xmmword_1EAD3A8C8) = 0;
  *(&xmmword_1EAD3A8C8 + 1) = v9;
  byte_1EAD3A8D8 = 0;
  qword_1EAD3A8E0 = 0;
  return result;
}

uint64_t static HorizontalTabControl.StyleGuide.poster.getter@<X0>(__int128 *a1@<X8>)
{
  if (one-time initialization token for poster != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1EAD3A8B8;
  v9[2] = xmmword_1EAD3A8A8;
  v9[3] = unk_1EAD3A8B8;
  v2 = xmmword_1EAD3A8C8;
  v3 = *&byte_1EAD3A8D8;
  v9[4] = xmmword_1EAD3A8C8;
  v9[5] = *&byte_1EAD3A8D8;
  v4 = static HorizontalTabControl.StyleGuide.poster;
  v5 = *&qword_1EAD3A898;
  v9[0] = static HorizontalTabControl.StyleGuide.poster;
  v9[1] = *&qword_1EAD3A898;
  a1[2] = xmmword_1EAD3A8A8;
  a1[3] = v1;
  a1[4] = v2;
  a1[5] = v3;
  *a1 = v4;
  a1[1] = v5;
  return outlined init with copy of HorizontalTabControl.StyleGuide(v9, &v8);
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for HorizontalTabControl.StyleGuide(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for HorizontalTabControl.StyleGuide(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined init with copy of BlendedColor?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails12BlendedColorVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for InfoTab.StyleGuide()
{
  result = type metadata singleton initialization cache for InfoTab.StyleGuide;
  if (!type metadata singleton initialization cache for InfoTab.StyleGuide)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t InfoTab.StyleGuide.encryptionFooterFont.getter()
{
  type metadata accessor for InfoTab.StyleGuide();
}

uint64_t InfoTab.StyleGuide.encryptionFooterColor.getter()
{
  type metadata accessor for InfoTab.StyleGuide();
}

int *InfoTab.StyleGuide.init(listRowBackgroundColor:tabContentTopMargin:listSectionSpacing:encryptionFooterFont:encryptionFooterColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  outlined init with take of BlendedColor?(a1, a4);
  result = type metadata accessor for InfoTab.StyleGuide();
  *(a4 + result[5]) = a5;
  *(a4 + result[6]) = a6;
  *(a4 + result[7]) = a2;
  *(a4 + result[8]) = a3;
  return result;
}

uint64_t outlined init with take of BlendedColor?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails12BlendedColorVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t one-time initialization function for default()
{
  v0 = type metadata accessor for InfoTab.StyleGuide();
  __swift_allocate_value_buffer(v0, static InfoTab.StyleGuide.default);
  v1 = __swift_project_value_buffer(v0, static InfoTab.StyleGuide.default);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails12BlendedColorVSgMd);
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #1 in closure #1 in variable initialization expression of static InfoTab.StyleGuide.default, 0, implicit closure #2 in closure #1 in variable initialization expression of static InfoTab.StyleGuide.default, v1, 0, implicit closure #5 in closure #1 in variable initialization expression of static InfoTab.StyleGuide.default, 0, implicit closure #6 in closure #1 in variable initialization expression of static InfoTab.StyleGuide.default, 0, v2);
  v3 = MEMORY[0x1E69E7DE0];
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #7 in closure #1 in variable initialization expression of static InfoTab.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v13, 0, implicit closure #11 in closure #1 in variable initialization expression of static InfoTab.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, MEMORY[0x1E69E7DE0]);
  v4 = v13;
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #13 in closure #1 in variable initialization expression of static InfoTab.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v12, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, v3);
  v5 = v12;
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #19 in closure #1 in variable initialization expression of static InfoTab.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@owned Font?), &v11, 0, specialized thunk for @callee_guaranteed () -> (@owned Font?), 0, specialized thunk for @callee_guaranteed () -> (@owned Font?), 0, MEMORY[0x1E6980F50]);
  v6 = v11;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5ColorVSgMd);
  result = cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #25 in closure #1 in variable initialization expression of static InfoTab.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@owned Color??), &v10, 0, specialized thunk for @callee_guaranteed () -> (@owned Color??), 0, specialized thunk for @callee_guaranteed () -> (@owned Color??), 0, v7);
  v9 = v10;
  *(v1 + v0[5]) = v4;
  *(v1 + v0[6]) = v5;
  *(v1 + v0[7]) = v6;
  *(v1 + v0[8]) = v9;
  return result;
}

{
  v0 = type metadata accessor for BlendedColor();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for AttachmentResults.StyleGuide();
  __swift_allocate_value_buffer(v3, static AttachmentResults.StyleGuide.default);
  v4 = __swift_project_value_buffer(v3, static AttachmentResults.StyleGuide.default);
  v5 = MEMORY[0x1E6980F50];
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #1 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@owned Font?), &v51, 0, implicit closure #5 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@owned Font?), 0, MEMORY[0x1E6980F50]);
  v6 = v51;
  v7 = static Color.primary.getter();
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #7 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@owned Font?), &v50, 0, implicit closure #11 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@owned Font?), 0, v5);
  v8 = v50;
  v9 = static Color.secondary.getter();
  v10 = MEMORY[0x1E69E7DE0];
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #13 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v49, 0, implicit closure #17 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, MEMORY[0x1E69E7DE0]);
  v32 = v49;
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #19 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v48, 0, implicit closure #23 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, v10);
  v31 = v48;
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #25 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v47, 0, implicit closure #29 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, v10);
  v30 = v47;
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #31 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v46, 0, implicit closure #35 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, v10);
  v11 = v46;
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #37 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v45, 0, implicit closure #41 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, v10);
  *&v12 = v45;
  v33 = v12;
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #43 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned EdgeInsets?), &v42, 0, implicit closure #47 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned EdgeInsets?), 0, MEMORY[0x1E697DA60]);
  *&v13 = v33;
  *(&v13 + 1) = v42;
  v33 = v13;
  v14 = v44;
  v29 = v43;
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #49 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v41, 0, implicit closure #53 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, v10);
  v15 = v41;
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #55 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v40, 0, implicit closure #59 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, v10);
  v16 = v40;
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #61 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v39, 0, implicit closure #65 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, v10);
  v17 = v39;
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #67 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@owned AnyShapeStyle?), &v38, 0, implicit closure #71 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@owned AnyShapeStyle?), 0, MEMORY[0x1E697E0B8]);
  v18 = v38;
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #73 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v37, 0, implicit closure #77 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, v10);
  v19 = v37;
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #79 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v36, 0, implicit closure #83 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, v10);
  v20 = v36;
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #85 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v35, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, v10);
  v21 = v35;
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #91 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned Edge.Set?), &v34, 0, implicit closure #95 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, specialized thunk for @callee_guaranteed () -> (@unowned Edge.Set?), 0, MEMORY[0x1E6980D50]);
  LOBYTE(v10) = v34;
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #97 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, implicit closure #98 in variable initialization expression of static AttachmentResults.StyleGuide.default, v2, 0, implicit closure #101 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, implicit closure #102 in variable initialization expression of static AttachmentResults.StyleGuide.default, 0, v0);
  *v4 = v6;
  *(v4 + 8) = v7;
  *(v4 + 16) = v8;
  *(v4 + 24) = v9;
  v22 = v31;
  *(v4 + 32) = v32;
  *(v4 + 40) = v22;
  *(v4 + 48) = 0x4008000000000000;
  *(v4 + 56) = v30;
  *(v4 + 64) = v11;
  __asm { FMOV            V0.2D, #2.0 }

  *(v4 + 72) = _Q0;
  *(v4 + 88) = _Q0;
  *(v4 + 120) = v29;
  *(v4 + 104) = v33;
  *(v4 + 136) = v14;
  *(v4 + 144) = v15;
  *(v4 + 152) = v16;
  *(v4 + 160) = v17;
  *(v4 + 168) = v18;
  *(v4 + 176) = v19;
  *(v4 + 184) = v20;
  *(v4 + 192) = v21;
  *(v4 + 200) = v10;
  return outlined init with take of BlendedColor(v2, v4 + *(v3 + 96));
}

{
  v0 = type metadata accessor for AttachmentResults.StyleGuide();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v49 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for InfoTab.StyleGuide();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Header.StyleGuide();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DetailsStyleGuide();
  __swift_allocate_value_buffer(v9, static DetailsStyleGuide.default);
  v10 = __swift_project_value_buffer(v9, static DetailsStyleGuide.default);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v53 = xmmword_1EAD3FB70;
  v54 = unk_1EAD3FB80;
  v55 = xmmword_1EAD3FB90;
  v56 = *&qword_1EAD3FBA0;
  v51 = static DetailsStyleGuide.TabBarConfiguration.default;
  v52 = unk_1EAD3FB60;
  outlined init with copy of DetailsStyleGuide.TabBarConfiguration(&v51, &v57);
  v11 = Header.StyleGuide.default.unsafeMutableAddressor();
  outlined init with copy of Header.StyleGuide(v11, v8, type metadata accessor for Header.StyleGuide);
  v12 = ParticipantGrid.StyleGuide.default.unsafeMutableAddressor();
  v14 = v12[1];
  v13 = v12[2];
  v57 = *v12;
  v58 = v14;
  v59 = v13;
  v15 = v12[6];
  v17 = v12[3];
  v16 = v12[4];
  v62 = v12[5];
  v63 = v15;
  v60 = v17;
  v61 = v16;
  v18 = v12[10];
  v20 = v12[7];
  v19 = v12[8];
  v66 = v12[9];
  v67 = v18;
  v64 = v20;
  v65 = v19;
  v22 = v12[12];
  v21 = v12[13];
  v23 = v12[11];
  v71 = *(v12 + 28);
  v69 = v22;
  v70 = v21;
  v68 = v23;
  outlined init with copy of ParticipantGrid.StyleGuide(&v57, &v50);
  v24 = InfoTab.StyleGuide.default.unsafeMutableAddressor();
  swift_beginAccess();
  outlined init with copy of Header.StyleGuide(v24, v5, type metadata accessor for InfoTab.StyleGuide);
  v25 = AttachmentResults.StyleGuide.default.unsafeMutableAddressor();
  outlined init with copy of Header.StyleGuide(v25, v2, type metadata accessor for AttachmentResults.StyleGuide);
  v26 = DetailsViewController.StyleGuide.default.unsafeMutableAddressor();
  v28 = *v26;
  v27 = v26[1];
  v29 = v26[2];
  _s20CommunicationDetails6HeaderV10StyleGuideVWObTm_0(v8, v10, type metadata accessor for Header.StyleGuide);
  v30 = (v10 + v9[5]);
  v31 = v52;
  *v30 = v51;
  v30[1] = v31;
  v32 = v53;
  v33 = v54;
  v34 = v56;
  v30[4] = v55;
  v30[5] = v34;
  v30[2] = v32;
  v30[3] = v33;
  v35 = v10 + v9[6];
  v36 = v68;
  v37 = v69;
  v38 = v70;
  *(v35 + 224) = v71;
  *(v35 + 192) = v37;
  *(v35 + 208) = v38;
  *(v35 + 176) = v36;
  v39 = v64;
  v40 = v65;
  v41 = v67;
  *(v35 + 144) = v66;
  *(v35 + 160) = v41;
  *(v35 + 112) = v39;
  *(v35 + 128) = v40;
  v42 = v60;
  v43 = v61;
  v44 = v63;
  *(v35 + 80) = v62;
  *(v35 + 96) = v44;
  *(v35 + 48) = v42;
  *(v35 + 64) = v43;
  v46 = v58;
  v45 = v59;
  *v35 = v57;
  *(v35 + 16) = v46;
  *(v35 + 32) = v45;
  _s20CommunicationDetails6HeaderV10StyleGuideVWObTm_0(v5, v10 + v9[9], type metadata accessor for InfoTab.StyleGuide);
  _s20CommunicationDetails6HeaderV10StyleGuideVWObTm_0(v2, v10 + v9[8], type metadata accessor for AttachmentResults.StyleGuide);
  v47 = (v10 + v9[7]);
  *v47 = v28;
  v47[1] = v27;
  v47[2] = v29;
}

{
  v0 = HorizontalTabControl.StyleGuide.default.unsafeMutableAddressor();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v8 = v0[4];
  v9 = v3;
  v4 = v0[1];
  v7[0] = *v0;
  v7[1] = v4;
  v7[2] = v1;
  v7[3] = v2;
  static DetailsStyleGuide.TabBarConfiguration.default = v7[0];
  unk_1EAD3FB60 = v4;
  xmmword_1EAD3FB70 = v1;
  unk_1EAD3FB80 = v2;
  *&xmmword_1EAD3FB90 = v8 & 1;
  *(&xmmword_1EAD3FB90 + 1) = *(&v8 + 1);
  qword_1EAD3FBA0 = v9 & 1;
  unk_1EAD3FBA8 = *(&v9 + 1);
  return outlined init with copy of HorizontalTabControl.StyleGuide(v7, &v6);
}

uint64_t implicit closure #1 in closure #1 in variable initialization expression of static InfoTab.StyleGuide.default@<X0>(uint64_t a1@<X8>)
{
  v2 = DetailsStyleGuide.globalListRowBackgroundColor.unsafeMutableAddressor();
  outlined init with copy of InfoTab.StyleGuide(v2, a1, type metadata accessor for BlendedColor);
  v3 = type metadata accessor for BlendedColor();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t implicit closure #2 in closure #1 in variable initialization expression of static InfoTab.StyleGuide.default@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails12BlendedColorVSgMd);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t implicit closure #19 in closure #1 in variable initialization expression of static InfoTab.StyleGuide.default@<X0>(uint64_t *a1@<X8>)
{
  result = static Font.footnote.getter();
  *a1 = result;
  return result;
}

uint64_t implicit closure #27 in closure #1 in variable initialization expression of static InfoTab.StyleGuide.default@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() tertiaryLabelColor];
  result = Color.init(uiColor:)();
  *a1 = result;
  return result;
}

uint64_t InfoTab.StyleGuide.default.unsafeMutableAddressor()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for InfoTab.StyleGuide();

  return __swift_project_value_buffer(v0, static InfoTab.StyleGuide.default);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static InfoTab.StyleGuide.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for InfoTab.StyleGuide();
  v3 = __swift_project_value_buffer(v2, static InfoTab.StyleGuide.default);
  swift_beginAccess();
  return outlined init with copy of InfoTab.StyleGuide(v3, a1, type metadata accessor for InfoTab.StyleGuide);
}

uint64_t static InfoTab.StyleGuide.default.setter(uint64_t a1)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for InfoTab.StyleGuide();
  v3 = __swift_project_value_buffer(v2, static InfoTab.StyleGuide.default);
  swift_beginAccess();
  outlined assign with copy of InfoTab.StyleGuide(a1, v3);
  swift_endAccess();
  return outlined destroy of InfoTab.StyleGuide(a1);
}

uint64_t outlined assign with copy of InfoTab.StyleGuide(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InfoTab.StyleGuide();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of InfoTab.StyleGuide(uint64_t a1)
{
  v2 = type metadata accessor for InfoTab.StyleGuide();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*static InfoTab.StyleGuide.default.modify())()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for InfoTab.StyleGuide();
  __swift_project_value_buffer(v0, static InfoTab.StyleGuide.default);
  swift_beginAccess();
  return static InfoTab.StyleGuide.default.modify;
}

uint64_t getEnumTagSinglePayload for InfoTab(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for InfoTab(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void type metadata completion function for InfoTab.StyleGuide()
{
  type metadata accessor for BlendedColor?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Color?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for BlendedColor?()
{
  if (!lazy cache variable for type metadata for BlendedColor?)
  {
    type metadata accessor for BlendedColor();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BlendedColor?);
    }
  }
}

void type metadata accessor for Color?()
{
  if (!lazy cache variable for type metadata for Color?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Color?);
    }
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t outlined init with copy of InfoTab.StyleGuide(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

Swift::Void __swiftcall DetailsViewController.configureNavigationBar()()
{
  v2 = v0;
  v3 = *(v0 + OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_configuration);
  if ((*(v3 + 64) & 1) == 0)
  {
    v4 = OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_styleGuide;
    v5 = (v2 + *(type metadata accessor for DetailsStyleGuide() + 28) + v4);
    v6 = *v5;
    v7 = v5[1];
    v8 = [objc_opt_self() configurationWithWeight_];
    v9 = MEMORY[0x193AEA8E0](v6, v7);
    v10 = [objc_opt_self() systemImageNamed:v9 withConfiguration:v8];

    v11 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithImage:v10 style:0 target:v2 action:sel_dismissDetails];
    v1 = [v2 navigationItem];
    [v1 setLeftBarButtonItem_];
  }

  v12 = (*(*v3 + 200))(v119);
  v104 = v2;
  if (((v121 | (v122 << 32)) & 0x8000000000000000) != 0)
  {
    v22 = v119[1];

    LOBYTE(v114) = 10;
    v98 = DetailsViewController.ObservableConfiguration.supportsCapability(_:)(&v114);
    v95 = v3;
    v23 = (*(*v3 + 344))();
    v24 = (v23 + 80);
    v100 = -*(v23 + 16);
    v101 = v23;
    v15 = -1;
    while (v100 + v15 != -1)
    {
      if (++v15 >= *(v101 + 16))
      {
        __break(1u);
        goto LABEL_58;
      }

      v25 = *(v24 - 6);
      v26 = *(v24 - 5);
      v28 = *(v24 - 4);
      v27 = *(v24 - 3);
      v29 = *(v24 - 2);
      v2 = *(v24 - 1);
      v1 = *v24;
      type metadata accessor for MainActor();
      v106 = v27;
      outlined copy of EditAction(v25, v26, v28, v27, v29, v2, v1);
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v24 += 56;
      v114 = v25;
      *&v115 = v26;
      *(&v115 + 1) = v28;
      *&v116 = v27;
      *(&v116 + 1) = v29;
      v117 = v2;
      v118 = v1;
      v109 = 1;
      v110 = 0u;
      v111 = 0u;
      v112 = 0;
      v113 = 1;
      lazy protocol witness table accessor for type EditAction and conformance EditAction();
      v3 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined consume of EditAction(v25, v26, v28, v106, v29, v2, v1);

      if (v3)
      {

        v2 = v104;
        if (v98)
        {
          goto LABEL_54;
        }

        goto LABEL_24;
      }
    }

    v2 = v104;
    if (v98)
    {
      v30 = (*(*v95 + 360))(&v114);
      v32 = v31;
      v33 = *v31;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v32 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 2) + 1, 1, v33);
        *v32 = v33;
      }

      v36 = *(v33 + 2);
      v35 = *(v33 + 3);
      if (v36 >= v35 >> 1)
      {
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v33);
        *v32 = v33;
      }

      *(v33 + 2) = v36 + 1;
      v37 = &v33[56 * v36];
      *(v37 + 4) = 1;
      *(v37 + 40) = 0u;
      *(v37 + 56) = 0u;
      *(v37 + 9) = 0;
      v37[80] = 1;
      v21 = v30(&v114, 0);
      goto LABEL_54;
    }

LABEL_24:
    v3 = v95;
    v88 = (*(*v95 + 360))(v108);
    v15 = *v38;
    v96 = *(*v38 + 16);
    v99 = v38;
    v39 = 0;
    if (!v96)
    {
      v47 = 0;
LABEL_53:
      specialized Array.replaceSubrange<A>(_:with:)(v39, v47);
      v21 = v88(v108, 0);
      v2 = v104;
      goto LABEL_54;
    }

    type metadata accessor for MainActor();
    v40 = 0;
    v41 = (v15 + 80);
    v42 = -136;
    v93 = v15;
    while (v40 < *(v15 + 16))
    {
      v102 = v42;
      v107 = v40;
      v15 = *(v41 - 6);
      v43 = *(v41 - 5);
      v44 = *(v41 - 4);
      v45 = *(v41 - 3);
      v1 = *(v41 - 2);
      v2 = *(v41 - 1);
      v46 = *v41;
      outlined copy of EditAction(v15, v43, v44, v45, v1, v2, *v41);
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v114 = v15;
      *&v115 = v43;
      *(&v115 + 1) = v44;
      *&v116 = v45;
      *(&v116 + 1) = v1;
      v117 = v2;
      v118 = v46;
      v109 = 1;
      v110 = 0u;
      v111 = 0u;
      v112 = 0;
      v113 = 1;
      lazy protocol witness table accessor for type EditAction and conformance EditAction();
      v3 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined consume of EditAction(v15, v43, v44, v45, v1, v2, v46);

      v47 = v107 + 1;
      if (v3)
      {
        v48 = *v99;
        v49 = *(*v99 + 16);
        if (v49 - 1 == v107)
        {
          v39 = v107;
          goto LABEL_53;
        }

        v3 = -v102;
        while (v47 < v49)
        {
          v105 = v3;
          v50 = (v48 + v3);
          v15 = *(v50 - 6);
          v1 = *(v50 - 5);
          v51 = *(v50 - 4);
          v2 = *(v50 - 3);
          v52 = *(v50 - 2);
          v53 = *(v50 - 1);
          v54 = *v50;
          outlined copy of EditAction(v15, v1, v51, v2, v52, v53, *v50);
          static MainActor.shared.getter();
          dispatch thunk of Actor.unownedExecutor.getter();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v114 = v15;
          *&v115 = v1;
          *(&v115 + 1) = v51;
          *&v116 = v2;
          *(&v116 + 1) = v52;
          v117 = v53;
          v118 = v54;
          v109 = 1;
          v110 = 0u;
          v111 = 0u;
          v112 = 0;
          v113 = 1;
          v55 = dispatch thunk of static Equatable.== infix(_:_:)();
          outlined consume of EditAction(v15, v1, v51, v2, v52, v53, v54);

          if (v55)
          {
            v3 = v105;
          }

          else
          {
            v3 = v105;
            v56 = v107;
            if (v47 != v107)
            {
              if ((v107 & 0x8000000000000000) != 0)
              {
                goto LABEL_60;
              }

              v15 = *v99;
              v57 = *(*v99 + 16);
              if (v107 >= v57)
              {
                goto LABEL_61;
              }

              if (v47 >= v57)
              {
                goto LABEL_62;
              }

              v58 = 56 * v107;
              v59 = v15 + 56 * v107;
              v2 = *(v15 + v105 - 48);
              v60 = *(v15 + v105 - 40);
              v3 = *(v15 + v105 - 32);
              v1 = *(v15 + v105 - 24);
              v61 = *(v15 + v105 - 16);
              v62 = *(v15 + v105 - 8);
              v63 = *(v15 + v105);
              v94 = *(v59 + 40);
              v97 = *(v59 + 32);
              v91 = *(v59 + 56);
              v92 = *(v59 + 48);
              v89 = *(v59 + 72);
              v90 = *(v59 + 64);
              v103 = *(v59 + 80);
              outlined copy of EditAction(v97, v94, v92, v91, v90, v89, v103);
              outlined copy of EditAction(v2, v60, v3, v1, v61, v62, v63);
              v64 = swift_isUniquelyReferenced_nonNull_native();
              *v99 = v15;
              if ((v64 & 1) == 0)
              {
                v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
                *v99 = v15;
              }

              if (v107 >= *(v15 + 16))
              {
                goto LABEL_63;
              }

              v65 = v15 + v58;
              v66 = *(v15 + v58 + 32);
              v67 = *(v15 + v58 + 40);
              v68 = *(v15 + v58 + 48);
              v69 = *(v15 + v58 + 56);
              v70 = *(v15 + v58 + 64);
              v71 = *(v15 + v58 + 72);
              *(v65 + 32) = v2;
              *(v65 + 40) = v60;
              *(v65 + 48) = v3;
              *(v65 + 56) = v1;
              *(v65 + 64) = v61;
              *(v65 + 72) = v62;
              v72 = *(v15 + v58 + 80);
              *(v65 + 80) = v63;
              outlined consume of EditAction(v66, v67, v68, v69, v70, v71, v72);
              if (v47 >= *(*v99 + 16))
              {
                goto LABEL_64;
              }

              v3 = v105;
              v73 = (*v99 + v105);
              v74 = *(v73 - 6);
              v75 = *(v73 - 5);
              v76 = *(v73 - 4);
              v77 = *(v73 - 3);
              v78 = *(v73 - 2);
              v79 = *(v73 - 1);
              *(v73 - 6) = v97;
              *(v73 - 5) = v94;
              *(v73 - 4) = v92;
              *(v73 - 3) = v91;
              *(v73 - 2) = v90;
              *(v73 - 1) = v89;
              v80 = *v73;
              *v73 = v103;
              outlined consume of EditAction(v74, v75, v76, v77, v78, v79, v80);
              v56 = v107;
            }

            v107 = v56 + 1;
          }

          ++v47;
          v48 = *v99;
          v49 = *(*v99 + 16);
          v3 += 56;
          if (v47 == v49)
          {
            v39 = v107;
            if (v47 < v107)
            {
              goto LABEL_65;
            }

            goto LABEL_53;
          }
        }

        goto LABEL_59;
      }

      v42 = v102 - 56;
      v41 += 56;
      v40 = v107 + 1;
      v15 = v93;
      if (v96 == v47)
      {
        v39 = *(*v99 + 16);
        v47 = v39;
        goto LABEL_53;
      }
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v13 = v120;
  v14 = *((*(*v3 + 344))(v12) + 16);

  if (!v14 && (v13 & 1) != 0)
  {
    v15 = (*(*v3 + 360))(&v114);
    v1 = v16;
    v3 = *v16;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    *v1 = v3;
    if (v17)
    {
LABEL_7:
      v19 = *(v3 + 16);
      v18 = *(v3 + 24);
      if (v19 >= v18 >> 1)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v3);
        *v1 = v3;
      }

      *(v3 + 16) = v19 + 1;
      v20 = v3 + 56 * v19;
      *(v20 + 32) = 0u;
      *(v20 + 48) = 0u;
      *(v20 + 64) = 0u;
      *(v20 + 80) = 1;
      (v15)(&v114, 0);
      goto LABEL_10;
    }

LABEL_66:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 16) + 1, 1, v3);
    *v1 = v3;
    goto LABEL_7;
  }

LABEL_10:
  v21 = outlined destroy of DetailsViewController.CommunicationType(v119);
LABEL_54:
  v81 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0xF0))(&v114, v21);
  v82 = v114;
  v83 = v115;
  v109 = v114;
  v110 = v115;
  v111 = v116;
  DetailsViewController.configureDefaultActions(for:)(&v109);
  v84 = outlined consume of DetailsTab?(v82, v83);
  if ((*((*v81 & *v104) + 0x210))(v84))
  {
    v86 = v85;
    ObjectType = swift_getObjectType();
    (*(v86 + 16))(v104, ObjectType, v86);
    swift_unknownObjectRelease();
  }
}

id outlined copy of EditAction(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  switch(a7)
  {
    case 2:

    case 1:

      return outlined copy of EditAction.InfoEditMode(result);
    case 0:
  }

  return result;
}

id outlined copy of EditAction.InfoEditMode(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EditAction and conformance EditAction()
{
  result = lazy protocol witness table cache variable for type EditAction and conformance EditAction;
  if (!lazy protocol witness table cache variable for type EditAction and conformance EditAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EditAction and conformance EditAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EditAction and conformance EditAction;
  if (!lazy protocol witness table cache variable for type EditAction and conformance EditAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EditAction and conformance EditAction);
  }

  return result;
}

void outlined consume of EditAction(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  switch(a7)
  {
    case 2:

      break;
    case 1:

      outlined consume of EditAction.InfoEditMode(a1);
      break;
    case 0:

      break;
  }
}

void outlined consume of EditAction.InfoEditMode(id a1)
{
  if (a1 >= 2)
  {
  }
}

void DetailsViewController.configureDefaultActions(for:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v33 = a1[3];
  v34 = a1[2];
  v32 = a1[4];
  v4 = (*(**(v1 + OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_configuration) + 344))();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v40 = -v5;
    v36 = v4 + 80;
    v37 = MEMORY[0x1E69E7CC0];
    v41 = v4;
    v38 = v2;
    v39 = v3;
    do
    {
      v7 = (v36 + 56 * v6++);
      while (1)
      {
        if ((v6 - 1) >= *(v4 + 16))
        {
          __break(1u);
          return;
        }

        v11 = *(v7 - 6);
        v10 = *(v7 - 5);
        v13 = *(v7 - 4);
        v12 = *(v7 - 3);
        v15 = *(v7 - 2);
        v14 = *(v7 - 1);
        v16 = *v7;
        type metadata accessor for MainActor();
        v42 = v12;
        v43 = v15;
        outlined copy of EditAction(v11, v10, v13, v12, v15, v14, v16);
        static MainActor.shared.getter();
        dispatch thunk of Actor.unownedExecutor.getter();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v2 = v38;
        v3 = v39;
        if (v16 != 2)
        {
          break;
        }

        if (!v39)
        {

          break;
        }

        if (v11 == v38 && v10 == v39)
        {

          v8 = v38;
          v9 = v39;
        }

        else
        {
          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v17 & 1) == 0)
          {
            break;
          }

          v8 = v11;
          v9 = v10;
        }

        outlined consume of EditAction(v8, v9, v13, v42, v43, v14, 2);

        ++v6;
        v4 = v41;
        v7 += 56;
        if (v40 + v6 == 1)
        {

          goto LABEL_25;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v37;
      v45[0] = v37;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 2) + 1, 1);
        v19 = v45[0];
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
        v19 = v45[0];
      }

      *(v19 + 2) = v21 + 1;
      v37 = v19;
      v22 = &v19[56 * v21];
      *(v22 + 4) = v11;
      *(v22 + 5) = v10;
      *(v22 + 6) = v13;
      *(v22 + 7) = v42;
      *(v22 + 8) = v43;
      *(v22 + 9) = v14;
      v22[80] = v16;
      v4 = v41;
    }

    while (v40 + v6);
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC0];
  }

  if (v3)
  {
LABEL_25:
    v23 = *(*v34 + 136);

    if (v23(v24))
    {
      v25 = *(v37 + 2);
      v26 = swift_isUniquelyReferenced_nonNull_native();
      if (!v26 || v25 >= *(v37 + 3) >> 1)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v26, v25 + 1, 1, v37);
      }

      v45[0] = v2;
      v45[1] = v3;
      v45[2] = v34;
      v45[3] = v33;
      v45[4] = v32;
      v45[5] = 0;
      v46 = 0;
      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, v45);
    }

    outlined consume of DetailsTab?(v2, v3);
  }

  if (*(v37 + 2))
  {
    v27 = [v35 navigationItem];
    type metadata accessor for UIBarButtonItem(0, &lazy cache variable for type metadata for UIBarButtonItem);
    v28._countAndFlagsBits = 1953064005;
    v28._object = 0xE400000000000000;
    v29 = LocalizedString(_:)(v28);
    type metadata accessor for EditMenu();
    swift_unknownObjectRetain();
    v30 = EditMenu.__allocating_init(actions:handler:)(v37, v35, &protocol witness table for DetailsViewController);
    v48.value.super.isa = 0;
    v48.is_nil = 0;
    isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v29, v48, v30, v31).super.super.isa;
    [v27 setRightBarButtonItem_];
  }

  else
  {

    isa = [v35 navigationItem];
    [(objc_class *)isa setRightBarButtonItem:0];
  }
}

uint64_t DetailsViewController.updateEditMenuButton(for:)(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[1];
  v37 = *a1;
  v10 = a1[2];
  v9 = a1[3];
  v11 = a1[4];
  v12 = Logger.detailsViewController.unsafeMutableAddressor();
  v13 = *(v5 + 16);
  v38 = v4;
  v13(v7, v12, v4);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  v36 = v11;

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v35 = v9;
    v17 = v16;
    v34 = swift_slowAlloc();
    v39[0] = v34;
    *v17 = 136315394;
    v18 = (*(*v10 + 168))();
    v20 = v2;
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v39);

    *(v17 + 4) = v21;
    v2 = v20;
    *(v17 + 12) = 2080;

    v22 = v37;
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v8, v39);

    *(v17 + 14) = v23;
    _os_log_impl(&dword_190119000, v14, v15, "Call to update bar buttons for selectedTab %s with id %s.", v17, 0x16u);
    v24 = v34;
    swift_arrayDestroy();
    MEMORY[0x193AEBB30](v24, -1, -1);
    v25 = v17;
    v9 = v35;
    MEMORY[0x193AEBB30](v25, -1, -1);

    (*(v5 + 8))(v7, v38);
  }

  else
  {

    (*(v5 + 8))(v7, v38);
    v22 = v37;
  }

  if ([v2 isEditing])
  {
    v26 = [v2 navigationItem];
    type metadata accessor for UIBarButtonItem(0, &lazy cache variable for type metadata for UIBarButtonItem);
    type metadata accessor for UIBarButtonItem(0, &lazy cache variable for type metadata for UIAction);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemDone, v27, 0).super.super.isa;
    [v26 setRightBarButtonItem_];
  }

  else
  {
    v39[0] = v22;
    v39[1] = v8;
    v39[2] = v10;
    v39[3] = v9;
    v39[4] = v36;

    DetailsViewController.configureDefaultActions(for:)(v39);
    v29 = outlined consume of DetailsTab?(v22, v8);
  }

  result = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x210))(v29);
  if (result)
  {
    v32 = v31;
    ObjectType = swift_getObjectType();
    (*(v32 + 16))(v2, ObjectType, v32);
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20CommunicationDetails10EditActionOGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20CommunicationDetails0dE7ContactVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_2(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_3(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20CommunicationDetails15QuickActionViewC10ButtonTypeOGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_8(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 56 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 56 * a3;
  v13 = (v7 + 32 + 56 * a2);
  v14 = 56 * v12;
  v15 = &v13[56 * v12];
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t type metadata accessor for UIBarButtonItem(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t partial apply for closure #1 in DetailsViewController.updateEditMenuButton(for:)()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x238))();
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v5 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = a2;
  v9 = *v4;
  v10 = v9 + 32 + 56 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, v8);
  v14 = v13 - v8;
  if (v11)
  {
    goto LABEL_19;
  }

  result = v10 + 56 * a3;
  a2 = (v9 + 32 + 56 * v8);
  v15 = 56 * v14;
  v16 = &a2[56 * v14];
  if (result != a2 || result >= v16)
  {
    result = memmove(result, a2, v15);
  }

  v18 = *(v9 + 16);
  v11 = __OFADD__(v18, v12);
  v19 = v18 + v12;
  if (v11)
  {
    goto LABEL_20;
  }

  *(v9 + 16) = v19;
LABEL_13:
  if (a3 <= 0)
  {
    return result;
  }

  v20 = *a4;
  v21 = *(a4 + 16);
  v22 = *(a4 + 32);
  *(v10 + 48) = *(a4 + 48);
  *(v10 + 16) = v21;
  *(v10 + 32) = v22;
  *v10 = v20;
  a2 = v23;
  result = a4;
  if (a3 != 1)
  {
LABEL_21:
    result = outlined init with copy of CollectionOfOne<EditAction>(result, a2);
    __break(1u);
    return result;
  }

  return outlined init with copy of CollectionOfOne<EditAction>(a4, v23);
}

{
  v5 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = a2;
  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, v8);
  v14 = v13 - v8;
  if (v11)
  {
    goto LABEL_19;
  }

  result = v10 + 40 * a3;
  a2 = (v9 + 32 + 40 * v8);
  if (result != a2 || result >= &a2[40 * v14])
  {
    result = memmove(result, a2, 40 * v14);
  }

  v16 = *(v9 + 16);
  v11 = __OFADD__(v16, v12);
  v17 = v16 + v12;
  if (v11)
  {
    goto LABEL_20;
  }

  *(v9 + 16) = v17;
LABEL_13:
  if (a3 <= 0)
  {
    return result;
  }

  v18 = *a4;
  v19 = *(a4 + 16);
  *(v10 + 32) = *(a4 + 32);
  *v10 = v18;
  *(v10 + 16) = v19;
  a2 = v20;
  result = a4;
  if (a3 != 1)
  {
LABEL_21:
    result = outlined init with copy of CollectionOfOne<DetailsTab>(result, a2);
    __break(1u);
    return result;
  }

  return outlined init with copy of CollectionOfOne<DetailsTab>(a4, v20);
}

uint64_t outlined init with copy of CollectionOfOne<EditAction>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVy20CommunicationDetails10EditActionOGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t key path getter for HeaderView.ActionHandlers.initiateGroupAudioCall : HeaderView.ActionHandlers@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x60))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  a2[1] = result;
  return result;
}

uint64_t key path setter for HeaderView.ActionHandlers.initiateGroupAudioCall : HeaderView.ActionHandlers(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x68);

  return v6(thunk for @escaping @callee_guaranteed () -> (@out ())partial apply, v5);
}

uint64_t key path getter for HeaderView.ActionHandlers.initiateGroupVideoCall : HeaderView.ActionHandlers@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x78))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  a2[1] = result;
  return result;
}

uint64_t key path setter for HeaderView.ActionHandlers.initiateGroupVideoCall : HeaderView.ActionHandlers(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x80);

  return v6(partial apply for thunk for @escaping @callee_guaranteed () -> (@out ()), v5);
}

uint64_t HeaderView.ActionHandlers.initiateGroupAudioCall.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t HeaderView.ActionHandlers.initiateGroupAudioCall.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

id HeaderView.ActionHandlers.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HeaderView.ActionHandlers.init()()
{
  v1 = &v0[OBJC_IVAR____TtCV20CommunicationDetails10HeaderView14ActionHandlers_initiateGroupAudioCall];
  *v1 = closure #1 in variable initialization expression of HeaderView.ActionHandlers.initiateGroupAudioCall;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR____TtCV20CommunicationDetails10HeaderView14ActionHandlers_initiateGroupVideoCall];
  *v2 = closure #1 in variable initialization expression of HeaderView.ActionHandlers.initiateGroupVideoCall;
  *(v2 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for HeaderView.ActionHandlers();
  return objc_msgSendSuper2(&v4, sel_init);
}

id HeaderView.ActionHandlers.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeaderView.ActionHandlers();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for Header(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for Header(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t type metadata accessor for AttributionAvatarView.ViewModel()
{
  result = type metadata singleton initialization cache for AttributionAvatarView.ViewModel;
  if (!type metadata singleton initialization cache for AttributionAvatarView.ViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AttributionAvatarView.viewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails21AttributionAvatarViewV0H5ModelCGMd);
  State.wrappedValue.getter();
  return v1;
}

uint64_t key path getter for AttributionAvatarView.viewModel : AttributionAvatarView@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails21AttributionAvatarViewV0H5ModelCGMd);
  result = State.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t key path setter for AttributionAvatarView.viewModel : AttributionAvatarView()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails21AttributionAvatarViewV0H5ModelCGMd);
  State.wrappedValue.setter();
}

void (*AttributionAvatarView.viewModel.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v6 = *v1;
  v5 = v1[1];
  v4[6] = *v1;
  v4[7] = v5;
  *v4 = v6;
  v4[1] = v5;

  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails21AttributionAvatarViewV0H5ModelCGMd);
  State.wrappedValue.getter();
  return AttributionAvatarView.viewModel.modify;
}

void AttributionAvatarView.viewModel.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v2[2] = *(*a1 + 48);
  v2[5] = v2[4];
  v2[3] = v3;
  if (a2)
  {

    State.wrappedValue.setter();
  }

  else
  {
    State.wrappedValue.setter();
  }

  free(v2);
}

uint64_t AttributionAvatarView.$viewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails21AttributionAvatarViewV0H5ModelCGMd);
  State.projectedValue.getter();
  return v1;
}

uint64_t AttributionAvatarView.init(viewModel:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for AttributionAvatarView.ViewModel();
  result = State.init(wrappedValue:)();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t AttributionAvatarView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy08ContactsB010AvatarViewV20CommunicationDetails0I10MediaBadgeVGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - v5;
  v7 = v1[1];
  v12[2] = *v1;
  v12[3] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails21AttributionAvatarViewV0H5ModelCGMd);
  v8 = State.wrappedValue.getter();
  v9 = (*(*v12[1] + 120))(v8);

  if (v9)
  {
    AvatarView.init(contact:)();
    outlined init with take of ModifiedContent<AvatarView, DetailsMediaBadge>(v6, a1);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return (*(v4 + 56))(a1, v10, 1, v3);
}

uint64_t outlined init with take of ModifiedContent<AvatarView, DetailsMediaBadge>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy08ContactsB010AvatarViewV20CommunicationDetails0I10MediaBadgeVGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t key path getter for AttributionAvatarView.ViewModel.contact : AttributionAvatarView.ViewModel@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t key path setter for AttributionAvatarView.ViewModel.contact : AttributionAvatarView.ViewModel(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 128);
  v4 = *a1;
  return v3(v2);
}

void *AttributionAvatarView.ViewModel.contact.getter()
{
  swift_getKeyPath();
  (*(*v0 + 152))();

  swift_beginAccess();
  v1 = v0[2];
  v2 = v1;
  return v1;
}

void AttributionAvatarView.ViewModel.contact.setter(void *a1)
{
  swift_beginAccess();
  v3 = v1[2];
  if (!v3)
  {
    if (!a1)
    {
      v7 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 160))(v9, partial apply for closure #1 in AttributionAvatarView.ViewModel.contact.setter);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for CNContact();
  v4 = v3;
  v5 = a1;
  v6 = static NSObject.== infix(_:_:)();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = v1[2];
LABEL_8:
  v1[2] = a1;
}

void (*AttributionAvatarView.ViewModel.contact.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  (*(*v1 + 152))();

  v4[5] = OBJC_IVAR____TtCV20CommunicationDetails21AttributionAvatarView9ViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type AttributionAvatarView.ViewModel and conformance AttributionAvatarView.ViewModel(&lazy protocol witness table cache variable for type AttributionAvatarView.ViewModel and conformance AttributionAvatarView.ViewModel, type metadata accessor for AttributionAvatarView.ViewModel);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = AttributionAvatarView.ViewModel._contact.modify();
  return AttributionAvatarView.ViewModel.contact.modify;
}

void AttributionAvatarView.ViewModel.contact.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t AttributionAvatarView.ViewModel.__allocating_init(_:)(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  ObservationRegistrar.init()();
  AttributionAvatarView.ViewModel.contact.setter(a1);
  return v2;
}

uint64_t AttributionAvatarView.ViewModel.init(_:)(void *a1)
{
  *(v1 + 16) = 0;
  ObservationRegistrar.init()();
  AttributionAvatarView.ViewModel.contact.setter(a1);
  return v1;
}

uint64_t AttributionAvatarView.ViewModel.deinit()
{
  v1 = OBJC_IVAR____TtCV20CommunicationDetails21AttributionAvatarView9ViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AttributionAvatarView.ViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV20CommunicationDetails21AttributionAvatarView9ViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t DetailsMediaBadge.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Alignment.center.getter();
  v6 = v5;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  static Color.black.getter();
  v7 = MEMORY[0x1E69E63B0];
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #1 in closure #1 in DetailsMediaBadge.body(content:), 0, specialized thunk for @callee_guaranteed () -> (@unowned Double?), v49, 0, implicit closure #5 in closure #1 in DetailsMediaBadge.body(content:), 0, specialized thunk for @callee_guaranteed () -> (@unowned Double?), 0, MEMORY[0x1E69E63B0]);
  v8 = Color.opacity(_:)();

  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #7 in closure #1 in DetailsMediaBadge.body(content:), 0, specialized thunk for @callee_guaranteed () -> (@unowned Double?), v49, 0, implicit closure #11 in closure #1 in DetailsMediaBadge.body(content:), 0, specialized thunk for @callee_guaranteed () -> (@unowned Double?), 0, v7);
  v9 = v49[0];
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #13 in closure #1 in DetailsMediaBadge.body(content:), 0, specialized thunk for @callee_guaranteed () -> (@unowned Double?), v49, 0, implicit closure #17 in closure #1 in DetailsMediaBadge.body(content:), 0, specialized thunk for @callee_guaranteed () -> (@unowned Double?), 0, v7);
  v10 = v49[0];
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #19 in closure #1 in DetailsMediaBadge.body(content:), 0, specialized thunk for @callee_guaranteed () -> (@unowned Double?), v49, 0, implicit closure #23 in closure #1 in DetailsMediaBadge.body(content:), 0, specialized thunk for @callee_guaranteed () -> (@unowned Double?), 0, v7);

  v11 = v49[0];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails0G10MediaBadgeVGMd);
  (*(*(v12 - 8) + 16))(a2, a1, v12);
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy20CommunicationDetails0H10MediaBadgeVGAA011_BackgroundF0VyAA07_ShadowE0VyAA6CircleVGGGMd) + 36));
  *v13 = v8;
  *(v13 + 1) = v9;
  *(v13 + 2) = v10;
  *(v13 + 3) = v11;
  v13[4] = v4;
  v13[5] = v6;
  v14 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v16 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy20CommunicationDetails0H10MediaBadgeVGAA011_BackgroundF0VyAA07_ShadowE0VyAA6CircleVGGGAA022_EnvironmentKeyWritingF0VyAA4FontVSgGGMd) + 36));
  *v16 = KeyPath;
  v16[1] = v14;
  v17 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA014_ViewModifier_D0Vy20CommunicationDetails0H10MediaBadgeVGAA011_BackgroundF0VyAA07_ShadowE0VyAA6CircleVGGGAA022_EnvironmentKeyWritingF0VyAA4FontVSgGGATyAA5ImageV5ScaleOGGMd) + 36));
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
  v19 = *MEMORY[0x1E69816C0];
  v20 = type metadata accessor for Image.Scale();
  (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
  *v17 = swift_getKeyPath();
  DetailsStyleGuide.mediaItemBadgeSize.unsafeMutableAddressor();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v21 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA014_ViewModifier_D0Vy20CommunicationDetails0H10MediaBadgeVGAA011_BackgroundF0VyAA07_ShadowE0VyAA6CircleVGGGAA022_EnvironmentKeyWritingF0VyAA4FontVSgGGATyAA5ImageV5ScaleOGGAA12_FrameLayoutVGMd) + 36));
  v22 = v64;
  *v21 = v63;
  v21[1] = v22;
  v21[2] = v65;
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #1 in DetailsMediaBadge.body(content:), 0, specialized thunk for @callee_guaranteed () -> (@owned Color?), v49, 0, implicit closure #5 in DetailsMediaBadge.body(content:), 0, specialized thunk for @callee_guaranteed () -> (@owned Color?), 0, MEMORY[0x1E69815C0]);
  v23 = v49[0];
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #7 in DetailsMediaBadge.body(content:), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v43, 0, implicit closure #11 in DetailsMediaBadge.body(content:), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, MEMORY[0x1E69E7DE0]);
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v24 = v66;
  LODWORD(v8) = v67;
  v25 = v68;
  v26 = v69;
  v27 = v70;
  v28 = v71;
  v29 = static Alignment.center.getter();
  v31 = v30;
  v32 = static Alignment.center.getter();
  v34 = v33;
  *&v43 = v24 * 0.5;
  *(&v43 + 1) = v24;
  *&v44 = __PAIR64__(v25, v8);
  *(&v44 + 1) = v26;
  *&v45 = v27;
  *(&v45 + 1) = v28;
  *&v46 = v23;
  WORD4(v46) = 256;
  *(&v46 + 10) = v41;
  HIWORD(v46) = v42;
  *&v47 = v29;
  *(&v47 + 1) = v31;
  *&v48 = v32;
  *(&v48 + 1) = v33;
  v35 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA014_ViewModifier_D0Vy20CommunicationDetails0H10MediaBadgeVGAA011_BackgroundF0VyAA07_ShadowE0VyAA6CircleVGGGAA022_EnvironmentKeyWritingF0VyAA4FontVSgGGATyAA5ImageV5ScaleOGGAA12_FrameLayoutVGAA08_OverlayF0VyAA017StrokeBorderShapeE0VyAoA5ColorVAA05EmptyE0VGGGMd) + 36));
  v36 = v46;
  v35[2] = v45;
  v35[3] = v36;
  v37 = v48;
  v35[4] = v47;
  v35[5] = v37;
  v38 = v44;
  *v35 = v43;
  v35[1] = v38;
  v49[0] = v24 * 0.5;
  v49[1] = v24;
  v50 = v8;
  v51 = v25;
  v52 = v26;
  v53 = v27;
  v54 = v28;
  v55 = v23;
  v56 = 256;
  v58 = v42;
  v57 = v41;
  v59 = v29;
  v60 = v31;
  v61 = v32;
  v62 = v34;
  sub_19011B8E0(&v43, v40);
  return sub_19011B950(v49);
}