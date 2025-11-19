uint64_t _touchesContainDirectTouch(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = *v7;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(v1);
        }

        if (![*(*(&v6 + 1) + 8 * i) type])
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

id CPUIImageForTransportButton(unint64_t a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  if (a1 > 6)
  {
    v9 = 0;
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v9 = off_278D9C360[a1];
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  if ([v7 isEqualToString:@"1"])
  {
    v10 = @"minus.arrow.trianglehead.counterclockwise";
    if (a1 == 3)
    {
      v10 = @"plus.arrow.trianglehead.clockwise";
    }

    v11 = v10;
  }

  else
  {
    v11 = [v7 stringByAppendingFormat:@".%@", v9];
  }

  v9 = v11;
LABEL_11:
  v12 = _CPUIGlyphFactoryWithTraitCollection(v9, 5, v8, a4);

  return v12;
}

id CPUIHighlightedImageForTransportButton(unint64_t a1, void *a2, void *a3, double a4)
{
  v7 = MEMORY[0x277D75348];
  v8 = a3;
  v9 = a2;
  v10 = [v7 labelColor];
  v11 = [v10 colorWithAlphaComponent:0.2];

  v12 = CPUIImageForTransportButton(a1, v9, v8, a4);

  v13 = [v12 flattenedImageWithColor:v11];

  return v13;
}

id _CPUIGlyphFactoryWithTraitCollection(void *a1, uint64_t a2, void *a3, double a4)
{
  v7 = MEMORY[0x277D755D0];
  v8 = a3;
  v9 = a1;
  v10 = [v7 configurationWithPointSize:a2 weight:a4];
  v11 = [MEMORY[0x277D755B8] systemImageNamed:v9 compatibleWithTraitCollection:v8];

  v12 = [v11 imageWithSymbolConfiguration:v10];

  return v12;
}

void *_sSo27CPUIWallpaperAppearanceTypeVSYSCSY8rawValuexSg03RawE0Qz_tcfCTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t _sSo21UIContentSizeCategoryaSYSCSY8rawValue03RawE0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t _sSo6CGRectVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _sSo6CGRectVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
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

uint64_t sub_2431382BC()
{
  type metadata accessor for GradientMaskModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI20_MaskAlignmentEffectVyAA15ModifiedContentVyAA14LinearGradientVAA12_FrameLayoutVGGMd);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _MaskAlignmentEffect<ModifiedContent<LinearGradient, _FrameLayout>> and conformance _MaskAlignmentEffect<A>, &_s7SwiftUI20_MaskAlignmentEffectVyAA15ModifiedContentVyAA14LinearGradientVAA12_FrameLayoutVGGMd);
  return swift_getWitnessTable();
}

uint64_t sub_2431383C8()
{
  MEMORY[0x245D2CB30](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243138400@<X0>(_BYTE *a1@<X8>)
{
  lazy protocol witness table accessor for type CPUIHorizontalSizeClassKey and conformance CPUIHorizontalSizeClassKey();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_24313849C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy07CarPlayB023CPUIHorizontalSizeClassOGMd);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CPUIHorizontalSizeClass> and conformance _EnvironmentKeyWritingModifier<A>();
  return swift_getWitnessTable();
}

uint64_t sub_243138514@<X0>(_BYTE *a1@<X8>)
{
  result = UIMutableTraits.cpuiIsPortrait.getter();
  *a1 = result & 1;
  return result;
}

__n128 sub_243138588(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_243138594@<X0>(_BYTE *a1@<X8>)
{
  lazy protocol witness table accessor for type CPUIIsPortraitKey and conformance CPUIIsPortraitKey();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_243138630()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMd);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>();
  return swift_getWitnessTable();
}

uint64_t sub_2431386A8@<X0>(uint64_t *a1@<X8>)
{
  result = UIMutableTraits.wallpaperAppearanceType.getter();
  *a1 = result;
  return result;
}

__n128 sub_243138718(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2431387C4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24313887C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isFocused.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2431388AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyAEyAEyAA0I0Vy07CarPlayB004GridF0C4BaseO7ArtworkVGAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGG_AN06SquareL0O4CellVAIVQo_AA08_OverlayT0VyAgAE12onTapGesture5count7performQrSi_yyctFQOyAEyAA5ColorVAA01_d5ShapeT0VyAA9RectangleVGG_Qo_GGA4_GMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243138964(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSgMd);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationVSgMd);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMd);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_243138AF4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSgMd);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationVSgMd);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMd);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_243138CF0@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_243138D54()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_243138D9C@<X0>(_BYTE *a1@<X8>)
{
  lazy protocol witness table accessor for type EnvironmentValues.__Key_isHighlighted and conformance EnvironmentValues.__Key_isHighlighted();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_243138ECC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSg6radius_7SwiftUI18RoundedCornerStyleOSg5styletMd);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_243138F44(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSg6radius_7SwiftUI18RoundedCornerStyleOSg5styletMd);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_243138FEC()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24313903C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_243139074@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9CarPlayUI8GridView_layout;
  swift_beginAccess();
  return outlined init with copy of InsettableShape(v3 + v4, a2);
}

uint64_t sub_2431390D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC9CarPlayUI8GridView_dataSource;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

void sub_243139148(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  VideoArtworkSnapshot.image.setter(v1);
}

uint64_t sub_2431391BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6VStackVyAA05TupleE0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA23_GeometryActionModifierVy12CoreGraphics7CGFloatVGG_ACyACyACyACyACyACyACyACyAA5LabelVyAA4TextVAOGAA011_ForegroundgR0VyAA5ColorVGGAA022_EnvironmentKeyWritingR0VyAA4FontVSgGGA10_yAWGGA10_ySiSgGGAA08_PaddingO0VGAA06_FrameO0VGAA011_BackgroundgR0VyAA8MaterialVGGA10_yAA0Y6SchemeOGGSgtGGG_AA05PlainiG0VQo_AA01_z12KeyTransformR0VySbGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA13_ShadowEffectVGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24313922C()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_243139284@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.minimumScaleFactor.getter();
  *a1 = v3;
  return result;
}

uint64_t _sxRi_zRi0_zlyytIsegr_SgWOy_0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_243139318(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  CPUIArtworkView.placeholderImage.setter(v1);
}

uint64_t sub_243139348@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9CarPlayUI15CPUIArtworkView_videoPlaybackState;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_2431393A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9CarPlayUI15CPUIArtworkView_videoPlaybackState;
  swift_beginAccess();
  *(v3 + v4) = v2;
  CPUIArtworkView.updateWrappedView()();
}

uint64_t sub_243139400()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243139438()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_243139488()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_243139590@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.displayScale.getter();
  *a1 = v3;
  return result;
}

double sub_243139608@<D0>(uint64_t a1@<X8>)
{
  lazy protocol witness table accessor for type IconLayerSizeKey and conformance IconLayerSizeKey();
  EnvironmentValues.subscript.getter();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_2431396B4@<X0>(_BYTE *a1@<X8>)
{
  lazy protocol witness table accessor for type IconLayerDrawsBorderKey and conformance IconLayerDrawsBorderKey();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_2431397D0@<X0>(_BYTE *a1@<X8>)
{
  lazy protocol witness table accessor for type DisableIconLayerEnviromentSettingsKey and conformance DisableIconLayerEnviromentSettingsKey();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_24313986C@<X0>(void *a1@<X8>)
{
  lazy protocol witness table accessor for type HomeScreenIconModeKey and conformance HomeScreenIconModeKey();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_2431398BC()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_243139900(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_24313990C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15LayoutDirectionOGMd);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[9];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA19ColorSchemeContrastOGMd);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[11];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[18]);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    type metadata accessor for AsyncIconLayer.LoadingState();
    v17 = type metadata accessor for State();
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[22];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_243139AFC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15LayoutDirectionOGMd);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[9];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA19ColorSchemeContrastOGMd);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[11];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[18]) = (a2 - 1);
  }

  else
  {
    type metadata accessor for AsyncIconLayer.LoadingState();
    v17 = type metadata accessor for State();
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + a4[22];

    return v18(v19, a2, a2, v17);
  }

  return result;
}

uint64_t sub_243139CEC()
{
  type metadata accessor for AsyncIconLayer.Inner();
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9CarPlayUI21IconEnvironmentTraitsVSgMd);
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type IconEnvironmentTraits? and conformance <A> A?(&lazy protocol witness table cache variable for type IconEnvironmentTraits? and conformance <A> A?, &_s9CarPlayUI21IconEnvironmentTraitsVSgMd, &_s9CarPlayUI21IconEnvironmentTraitsVSgMR, lazy protocol witness table accessor for type IconEnvironmentTraits and conformance IconEnvironmentTraits);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo17ISImageDescriptorCSgMd);
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type IconEnvironmentTraits? and conformance <A> A?(&lazy protocol witness table cache variable for type ISImageDescriptor? and conformance <A> A?, &_sSo17ISImageDescriptorCSgMd, &_sSo17ISImageDescriptorCSgMR, lazy protocol witness table accessor for type ISImageDescriptor and conformance NSObject);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_243139EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AsyncIconLayerPhase();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_243139F5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AsyncIconLayerPhase();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24313A014(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI21IconEnvironmentTraitsVSgMd);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 40);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = type metadata accessor for AsyncIconLayerPhase();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 48);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_24313A150(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI21IconEnvironmentTraitsVSgMd);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AsyncIconLayerPhase();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_24313A280()
{
  v1 = type metadata accessor for AsyncIconLayer();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for LayoutDirection();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  outlined consume of Environment<Bool>.Content(*(v5 + v1[10]), *(v5 + v1[10] + 8));
  v9 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for ColorSchemeContrast();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  outlined consume of Environment<CGSize?>.Content(*(v5 + v1[12]), *(v5 + v1[12] + 8), *(v5 + v1[12] + 16), *(v5 + v1[12] + 17));
  outlined consume of Environment<Bool>.Content(*(v5 + v1[13]), *(v5 + v1[13] + 8));
  sub_243139900(*(v5 + v1[14]), *(v5 + v1[14] + 8), *(v5 + v1[14] + 9));
  sub_243139900(*(v5 + v1[15]), *(v5 + v1[15] + 8), *(v5 + v1[15] + 9));
  outlined consume of Environment<Bool>.Content(*(v5 + v1[16]), *(v5 + v1[16] + 8));
  outlined consume of Environment<SBSHomeScreenIconStyleConfiguration?>.Content(*(v5 + v1[17]), *(v5 + v1[17] + 8));

  v11 = (v5 + v1[22]);

  v12 = type metadata accessor for AsyncIconLayer.LoadingState();
  v13 = v11 + *(v12 + 40);
  v14 = type metadata accessor for IconEnvironmentTraits();
  if (!(*(*(v14 - 1) + 48))(v13, 1, v14))
  {
    v15 = type metadata accessor for ColorScheme();
    (*(*(v15 - 8) + 8))(v13, v15);
    v30 = v2;
    v16 = v4;
    v17 = v3;
    v18 = v14[5];
    v19 = type metadata accessor for ColorSchemeContrast();
    (*(*(v19 - 8) + 8))(&v13[v18], v19);
    v20 = v14[6];
    v21 = type metadata accessor for LayoutDirection();
    v22 = &v13[v20];
    v3 = v17;
    v4 = v16;
    v2 = v30;
    (*(*(v21 - 8) + 8))(v22, v21);
  }

  v23 = (v11 + *(v12 + 48));
  type metadata accessor for AsyncIconLayerPhase();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v31 = v4;
    v25 = v3;
    outlined consume of Environment<Bool>.Content(*v23, *(v23 + 8));
    v26 = type metadata accessor for IconLayer();
    v27 = v26[5];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = type metadata accessor for ColorScheme();
      (*(*(v28 - 8) + 8))(v23 + v27, v28);
    }

    else
    {
    }

    outlined consume of Environment<Bool>.Content(*(v23 + v26[6]), *(v23 + v26[6] + 8));
    outlined consume of Environment<Bool>.Content(*(v23 + v26[7]), *(v23 + v26[7] + 8));

    v3 = v25;
    v4 = v31;
  }

  type metadata accessor for State();

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24313A804()
{
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _AccessibilityIgnoresInvertColorsViewModifier and conformance _AccessibilityIgnoresInvertColorsViewModifier();
  swift_getWitnessTable();
  type metadata accessor for _UnaryViewAdaptor();
  return swift_getWitnessTable();
}

uint64_t sub_24313A9E4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ColorScheme();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ColorSchemeContrast();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for LayoutDirection();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[11]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_24313AB44(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for ColorScheme();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for ColorSchemeContrast();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = type metadata accessor for LayoutDirection();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[11]) = a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_24313AC94()
{
  v1 = type metadata accessor for IconLayer();
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  outlined consume of Environment<Bool>.Content(*(v0 + v4), *(v0 + v4 + 8));
  v6 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ColorScheme();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  outlined consume of Environment<Bool>.Content(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  outlined consume of Environment<Bool>.Content(*(v5 + v1[7]), *(v5 + v1[7] + 8));

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_24313AE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_24313AECC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24313AFC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA21_GlassEffectContainerVyAA4ViewPAAE06_glassF0_2inQrAA01_E0V_qd__tAA5ShapeRd__lFQOyAA5ColorV_AA03AnyK0VQo_GAA30_EnvironmentKeyWritingModifierVyAA0L6SchemeOGGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24313B030(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA21_GlassEffectContainerVyAA4ViewPAAE06_glassF0_2inQrAA01_E0V_qd__tAA5ShapeRd__lFQOyAA5ColorV_AA03AnyK0VQo_GAA30_EnvironmentKeyWritingModifierVyAA0L6SchemeOGGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24313B09C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return GridView.Base.ViewModel.title.setter(v1, v2);
}

uint64_t sub_24313B0E0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return GridView.Base.ViewModel.subtitle.setter(v1, v2);
}

uint64_t sub_24313B1B8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24313B1F0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24313B230@<X0>(uint64_t *a1@<X8>)
{
  *a1 = specialized GridView.Base.BaseDataSource.viewModels.getter();
}

__n128 sub_24313B2A4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24313B2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV5ShapeOSgMd);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_24313B3EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV5ShapeOSgMd);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_24313B508(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSg6radius_7SwiftUI18RoundedCornerStyleOSg5styletMd);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24313B580(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSg6radius_7SwiftUI18RoundedCornerStyleOSg5styletMd);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24313B610(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24313B67C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24313B6EC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV0H0O11PlaceholderOSgMd) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = (v0 + v3);
  v6 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {

      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_7SwiftUI5ImageV5ScaleOSgAA4FontV6WeightVSgtMd) + 48);
      v9 = type metadata accessor for Image.Scale();
      v10 = *(v9 - 8);
      if (!(*(v10 + 48))(v5 + v8, 1, v9))
      {
        (*(v10 + 8))(v5 + v8, v9);
      }
    }

    else if (!EnumCaseMultiPayload)
    {
    }
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24313B8A4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24313B8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA5ImageV5ScaleOGMd);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24313BA0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA5ImageV5ScaleOGMd);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_24313BB3C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5ImageV5ScaleOSgMd);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA5ImageV5ScaleOGMd);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24313BC78(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5ImageV5ScaleOSgMd);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA5ImageV5ScaleOGMd);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_24313BDC4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
  lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24313BE48@<X0>(_BYTE *a1@<X8>)
{
  result = UIMutableTraits.limitedUI.getter();
  *a1 = result & 1;
  return result;
}

__n128 sub_24313BEBC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24313BEC8@<X0>(uint64_t *a1@<X8>)
{
  result = UIMutableTraits.limitedUserInterfaces.getter();
  *a1 = result;
  return result;
}

uint64_t sub_24313BF58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_items;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

__n128 sub_24313BFB8@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_itemSize;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

void sub_24313C010(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_itemSize);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  ArtworkShelfViewController.itemSize.didset();
}

uint64_t sub_24313C06C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24313C0C8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24313C12C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelV5ImageOSgMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24313C1E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelV5ImageOSgMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24313C2A0()
{
  MEMORY[0x245D2CB30](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24313C2D8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ArtworkShelfViewController.ViewModel(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24313C384(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ArtworkShelfViewController.ViewModel(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24313C42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24313C4E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24313C5A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_AA016_ForegroundStyleM0VyAA5ColorVGGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24313C614(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_AA016_ForegroundStyleM0VyAA5ColorVGGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24313C684(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_AA016_ForegroundStyleM0VyAA5ColorVGGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24313C6F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return CPUITableHeaderFooterView.ViewModel.title.setter(v1, v2);
}

void sub_24313C740(void *a1, void **a2)
{
  v2 = *a2;
  v3 = MEMORY[0x245D2BBE0](*a1, a1[1]);
  [v2 setTitle_];
}

uint64_t sub_24313C7AC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24313C7E4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24313C824()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24313C85C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24313C8A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAeAE10textSuffixyQrAA4TextV0J0VFQOyAN_Qo_AA24_ForegroundStyleModifierVyAA017HierarchicalShapeM0VGGAA022_EnvironmentKeyWritingN0VyAHSgGG_Qo_AYyAA5ImageV5ScaleOGGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_24313C9EC@<Q0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___CPUIGridViewBaseTableViewCell_gridViewStyle);
  swift_beginAccess();
  v4 = v3[1].n128_u64[0];
  v5 = v3[1].n128_u16[4];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u64[0] = v4;
  a2[1].n128_u16[4] = v5;
  return result;
}

uint64_t sub_24313CA74()
{
  MEMORY[0x245D2CB30](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_24313CABC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isPressed];
  *a2 = result;
  return result;
}

uint64_t sub_24313CB04@<X0>(_BYTE *a1@<X8>)
{
  lazy protocol witness table accessor for type CPUIIsLimitedUIKey and conformance CPUIIsLimitedUIKey();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_24313CBA0@<X0>(void *a1@<X8>)
{
  lazy protocol witness table accessor for type CPUIIslimitedUserInterfacesKey and conformance CPUIIslimitedUserInterfacesKey();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_24313CC2C@<X0>(_BYTE *a1@<X8>)
{
  result = UIMutableTraits.cpuiHorizontalSizeClass.getter();
  *a1 = v3;
  return result;
}

__n128 sub_24313CCBC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24313CCC8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_24313CD84(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24313CE40(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_24313CEFC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24313CFB4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_24313D034@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 image];
  *a2 = result;
  return result;
}

id sub_24313D104@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 buttonImage];
  *a2 = result;
  return result;
}

id sub_24313D15C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enabled];
  *a2 = result;
  return result;
}

uint64_t sub_24313D1A4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24313D1DC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24313D214(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyAA6CircleVAA011_ForegroundG8ModifierVyAA5ColorVGGAA12_FrameLayoutVGAA08_OverlayL0VyACyACyACyAA5ImageVAA012_AspectRatioO0VGASGAPGGGG_AA05PlainiG0VQo_AA024_EnvironmentKeyTransformL0VySbGGAA14_OpacityEffectVGSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24313D284(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyAA6CircleVAA011_ForegroundG8ModifierVyAA5ColorVGGAA12_FrameLayoutVGAA08_OverlayL0VyACyACyACyAA5ImageVAA012_AspectRatioO0VGASGAPGGGG_AA05PlainiG0VQo_AA024_EnvironmentKeyTransformL0VySbGGAA14_OpacityEffectVGSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24313D30C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_24313D370@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_24313D3C8@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_24313D44C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyACyACyAA0H0VyAA012_ConditionalD0VyACy07CarPlayB004GridE0C4BaseO7ArtworkVAA16_OverlayModifierVyACyAA6VStackVyAA05TupleE0VyACyACyACyAA5ColorVAA18_AspectRatioLayoutVGAA08_PaddingV0VGAA013_TraitWritingP0VyAA0v8PriorityX3KeyVGG_ACyAA6ZStackVyAXyAA14LinearGradientV_AL15ProgressiveBlurVtGGATyACyACyACyAN4HeroO4CellV6LabelsVAA015_EnvironmentKeyyP0VyAA0S6SchemeOGGAA010_FlexFrameV0VGA3_GGGtGGA32_GGGACyAzTyACyACyACyAVyAXyACyACyACyARA0_GAL014InnerHighlightP0VGA9_G_A33_tGGA32_GA3_GA3_GGGGGA26_yAA4FontVSgGGA26_yAA13TextAlignmentOGG_A22_AGVQo_AA14_OpacityEffectVGAA024_EnvironmentKeyTransformP0VySbGGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24313D4B8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_24313D56C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24313D654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24313D72C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_24313D7F0()
{
  v1 = *(type metadata accessor for ProgressBarView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for ColorScheme();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24313D94C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24313D984()
{
  MEMORY[0x245D2CB30](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24313D9FC()
{
  v1 = (type metadata accessor for GridView.ImageGrid.Cell(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA5ImageV5ScaleO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Image.Scale();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24313DB50(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA5ImageV5ScaleOGMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24313DC0C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA5ImageV5ScaleOGMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24313DCC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV5ShapeOSgMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24313DDC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV5ShapeOSgMd);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_24313DEDC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24313DF48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSg6radius_7SwiftUI18RoundedCornerStyleOSg5styletMd);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24313DFC0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSg6radius_7SwiftUI18RoundedCornerStyleOSg5styletMd);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24313E05C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return CPUIMediaContainerTableHeaderFooterView.ViewModel.title.setter(v1, v2);
}

uint64_t sub_24313E0A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return CPUIMediaContainerTableHeaderFooterView.ViewModel.subtitle.setter(v1, v2);
}

void sub_24313E0FC(void *a1, void **a2)
{
  v2 = *a2;
  v3 = MEMORY[0x245D2BBE0](*a1, a1[1]);
  [v2 setTitle_];
}

uint64_t sub_24313E1F8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24313E230()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24313E288()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24313E2C0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t outlined consume of Environment<Bool>.Content(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t __CPUITextVariantsSort_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v6 = [v4 length];
    if (v6 >= [v5 length])
    {
      v9 = [v4 length];
      if (v9 <= [v5 length])
      {
        v7 = 0;
      }

      else
      {
        v7 = -1;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id CarPlayUIGeneralLogging()
{
  if (CarPlayUIGeneralLogging_onceToken != -1)
  {
    CarPlayUIGeneralLogging_cold_1();
  }

  v1 = CarPlayUIGeneralLogging_facility;

  return v1;
}

uint64_t __CarPlayUIGeneralLogging_block_invoke()
{
  CarPlayUIGeneralLogging_facility = os_log_create("com.apple.carplayui", "General");

  return MEMORY[0x2821F96F8]();
}

id CPUIChevronRightGlyph()
{
  v0 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76920] variant:1024];
  v1 = [MEMORY[0x277D755D0] configurationWithFont:v0 scale:1];
  v2 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.forward" withConfiguration:v1];

  return v2;
}

id CPUIImageCancelGlyph(void *a1)
{
  v1 = MEMORY[0x277D74300];
  v2 = *MEMORY[0x277D76968];
  v3 = *MEMORY[0x277D74410];
  v4 = a1;
  v5 = [v1 _preferredFontForTextStyle:v2 weight:v3];
  v6 = [MEMORY[0x277D755D0] configurationWithFont:v5 scale:2];
  v7 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark" compatibleWithTraitCollection:v4];

  v8 = [v7 imageWithConfiguration:v6];

  v9 = [v8 imageWithRenderingMode:2];

  return v9;
}

id CPUIImageStarRatingEmpty(void *a1, int a2)
{
  v2 = 18.0;
  if (a2)
  {
    v2 = 9.0;
  }

  return _CPUIGlyphFactoryWithTraitCollection(@"star", 5, a1, v2);
}

id CPUIImageStarRatingHalf(void *a1, int a2)
{
  v2 = 18.0;
  if (a2)
  {
    v2 = 9.0;
  }

  return _CPUIGlyphFactoryWithTraitCollection(@"star.leadinghalf.fill", 5, a1, v2);
}

id CPUIImageStarRatingFull(void *a1, int a2)
{
  v2 = 18.0;
  if (a2)
  {
    v2 = 9.0;
  }

  return _CPUIGlyphFactoryWithTraitCollection(@"star.fill", 5, a1, v2);
}

id CPUIFilteredString(void *a1)
{
  v1 = MEMORY[0x277CCA900];
  v2 = a1;
  v3 = [v1 newlineCharacterSet];
  v4 = [v2 componentsSeparatedByCharactersInSet:v3];

  v5 = [v4 componentsJoinedByString:&stru_2855CA368];

  return v5;
}

__CFString *CPUILocalizedExplicitLabelString()
{
  v0 = [MEMORY[0x277D7FA28] defaultManager];
  v1 = [v0 ageVerificationState];
  v2 = [v1 treatment];

  if (v2 == 1)
  {
    return @"⓳";
  }

  else
  {
    return @"🅴";
  }
}

id CPUILocalizedExplicitImageForTraitCollection(void *a1)
{
  v1 = MEMORY[0x277D7FA28];
  v2 = a1;
  v3 = [v1 defaultManager];
  v4 = [v3 ageVerificationState];
  v5 = [v4 treatment];

  if (v5 == 1)
  {
    v6 = @"ExplicitGlyph19";
  }

  else
  {
    v6 = @"ExplicitGlyph";
  }

  v7 = CPUIImageNamedWithTraitCollection(v6, v2);

  return v7;
}

id CPUITableCellExplicitLabel()
{
  v0 = objc_alloc_init(MEMORY[0x277D756B8]);
  v1 = [MEMORY[0x277D74300] systemFontOfSize:15.0 weight:*MEMORY[0x277D74418]];
  [v0 setFont:v1];

  v2 = CPUILocalizedExplicitLabelString();
  [v0 setText:v2];

  v3 = [MEMORY[0x277D75348] _carSystemSecondaryColor];
  [v0 setTextColor:v3];

  v4 = [MEMORY[0x277D75348] _carSystemFocusPrimaryColor];
  [v0 setHighlightedTextColor:v4];

  [v0 sizeToFit];

  return v0;
}

id CPUIFormattedNumberString(void *a1)
{
  v1 = CPUIFormattedNumberString_sOnceToken;
  v2 = a1;
  if (v1 != -1)
  {
    CPUIFormattedNumberString_cold_1();
  }

  v3 = [CPUIFormattedNumberString_sNumberFormatter stringFromNumber:v2];

  return v3;
}

uint64_t __CPUIFormattedNumberString_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v1 = CPUIFormattedNumberString_sNumberFormatter;
  CPUIFormattedNumberString_sNumberFormatter = v0;

  [CPUIFormattedNumberString_sNumberFormatter setNumberStyle:1];
  [CPUIFormattedNumberString_sNumberFormatter setUsesSignificantDigits:0];
  [CPUIFormattedNumberString_sNumberFormatter setMaximumFractionDigits:2];
  v2 = CPUIFormattedNumberString_sNumberFormatter;

  return [v2 setUsesGroupingSeparator:1];
}

uint64_t CPUITimeDurationForSeconds(float a1)
{
  if (CPUITimeDurationForSeconds_sOnceToken != -1)
  {
    CPUITimeDurationForSeconds_cold_1();
  }

  v2 = CPUITimeDurationForSeconds_sTimeFormatter;

  return [v2 stringFromSeconds:a1];
}

uint64_t __CPUITimeDurationForSeconds_block_invoke()
{
  CPUITimeDurationForSeconds_sTimeFormatter = objc_alloc_init(MEMORY[0x277CE6640]);

  return MEMORY[0x2821F96F8]();
}

id CPUIFormattedPlaybackRateString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToNumber:&unk_2855D8590])
  {
    v2 = @"PLAYBACK_RATE_SPEED_HALF";
LABEL_15:
    v3 = CPUILocalizedStringForKey(v2);
    goto LABEL_16;
  }

  if ([v1 isEqualToNumber:&unk_2855D85A0])
  {
    v2 = @"PLAYBACK_RATE_SPEED_THREE_QUARTERS";
    goto LABEL_15;
  }

  if ([v1 isEqualToNumber:&unk_2855D8260])
  {
    v2 = @"PLAYBACK_RATE_SPEED_ONE";
    goto LABEL_15;
  }

  if ([v1 isEqualToNumber:&unk_2855D85B0])
  {
    v2 = @"PLAYBACK_RATE_SPEED_ONE_AND_QUARTER";
    goto LABEL_15;
  }

  if ([v1 isEqualToNumber:&unk_2855D85C0])
  {
    v2 = @"PLAYBACK_RATE_SPEED_ONE_AND_HALF";
    goto LABEL_15;
  }

  if ([v1 isEqualToNumber:&unk_2855D85D0])
  {
    v2 = @"PLAYBACK_RATE_SPEED_ONE_AND_THREE_QUARTERS";
    goto LABEL_15;
  }

  if ([v1 isEqualToNumber:&unk_2855D8278])
  {
    v2 = @"PLAYBACK_RATE_SPEED_TWO";
    goto LABEL_15;
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = CPUILocalizedStringForKey(@"PLAYBACK_RATE_%@");
  v7 = CPUIFormattedNumberString(v1);
  v3 = [v5 stringWithFormat:v6, v7];

LABEL_16:

  return v3;
}

id CPUIAccessiblePlaybackRateString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToNumber:&unk_2855D8590])
  {
    v2 = @"ACCESSIBLE_PLAYBACK_RATE_SPEED_HALF";
LABEL_15:
    v3 = CPUILocalizedStringForKey(v2);
    goto LABEL_16;
  }

  if ([v1 isEqualToNumber:&unk_2855D85A0])
  {
    v2 = @"ACCESSIBLE_PLAYBACK_RATE_SPEED_THREE_QUARTERS";
    goto LABEL_15;
  }

  if ([v1 isEqualToNumber:&unk_2855D8260])
  {
    v2 = @"ACCESSIBLE_PLAYBACK_RATE_SPEED_ONE";
    goto LABEL_15;
  }

  if ([v1 isEqualToNumber:&unk_2855D85B0])
  {
    v2 = @"ACCESSIBLE_PLAYBACK_RATE_SPEED_ONE_AND_QUARTER";
    goto LABEL_15;
  }

  if ([v1 isEqualToNumber:&unk_2855D85C0])
  {
    v2 = @"ACCESSIBLE_PLAYBACK_RATE_SPEED_ONE_AND_HALF";
    goto LABEL_15;
  }

  if ([v1 isEqualToNumber:&unk_2855D85D0])
  {
    v2 = @"ACCESSIBLE_PLAYBACK_RATE_SPEED_ONE_AND_THREE_QUARTERS";
    goto LABEL_15;
  }

  if ([v1 isEqualToNumber:&unk_2855D8278])
  {
    v2 = @"ACCESSIBLE_PLAYBACK_RATE_SPEED_TWO";
    goto LABEL_15;
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = CPUILocalizedStringForKey(@"ACCESSIBLE_PLAYBACK_RATE_%@");
  v7 = CPUIFormattedNumberString(v1);
  v3 = [v5 stringWithFormat:v6, v7];

LABEL_16:

  return v3;
}

uint64_t CPUIDeviceSupportsSoundRecognition()
{
  if (CPUIDeviceSupportsSoundRecognition_onceToken != -1)
  {
    CPUIDeviceSupportsSoundRecognition_cold_1();
  }

  return CPUIDeviceSupportsSoundRecognition_supportsSoundRecognition;
}

void __CPUIDeviceSupportsSoundRecognition_block_invoke()
{
  v0 = [MEMORY[0x277CE6FA0] sharedInstance];
  CPUIDeviceSupportsSoundRecognition_supportsSoundRecognition = [v0 supportsVirtualAudioDevice];
}

uint64_t CPUIPlaceholderTypeForBundleIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:CPUINewsBundleIdentifier])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:CPUIAudiobooksBundleIdentifier])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:CPUIPodcastsBundleIdentifier])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:CPUIClassicalBundleIdentifier])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *CPUIImageNameForPlaceholderType(uint64_t a1)
{
  if ((a1 - 1) > 8)
  {
    return @"PlaceholderMusic";
  }

  else
  {
    return off_278D9C398[a1 - 1];
  }
}

id CPUIImageForPlaceholderTypeWithTraitCollection(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CPUIImageNameForPlaceholderType(a1);
  v5 = CPUIImageNamedWithTraitCollection(v4, v3);

  return v5;
}

uint64_t CPUIVideoPlaybackStateForCarPlay()
{
  v0 = [MEMORY[0x277CB8698] sharedSystemRemoteDisplayContext];
  v1 = [v0 outputDevices];
  v2 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_184];
  v3 = [v1 filteredArrayUsingPredicate:v2];
  v4 = [v3 firstObject];

  v5 = [v4 mediaSessionStatus];
  v6 = 3;
  if (v5 != 2)
  {
    v6 = 0;
  }

  if (v5 == 3)
  {
    v7 = 2;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

id CPUIImageByScalingImageToSize(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = [MEMORY[0x277D759A0] _carScreen];
  v7 = [v6 traitCollection];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x277D75C80] _currentTraitCollection];
  }

  v10 = v9;

  if ([v5 isSymbolImage] || (objc_msgSend(v5, "size"), v12 <= a2) && (objc_msgSend(v5, "size"), v13 <= a3))
  {
    v11 = v5;
  }

  else
  {
    [v5 size];
    v15 = a2 / v14;
    [v5 size];
    if (v15 >= a3 / v16)
    {
      v15 = a3 / v16;
    }

    [v5 size];
    v18 = v17 * v15;
    [v5 size];
    v20 = v19 * v15;
    v21 = objc_alloc(MEMORY[0x277D75560]);
    v22 = [MEMORY[0x277D75568] formatForTraitCollection:v10];
    v23 = [v21 initWithSize:v22 format:{v18, v20}];

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __CPUIImageByScalingImageToSize_block_invoke;
    v27[3] = &unk_278D9C410;
    v24 = v5;
    v28 = v24;
    v29 = v18;
    v30 = v20;
    v25 = [v23 imageWithActions:v27];
    v11 = [v25 imageWithRenderingMode:{objc_msgSend(v24, "renderingMode")}];
  }

  return v11;
}

id CPUIFrameworkBundle()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 0);
  v1 = [v0 objectAtIndex:0];

  v2 = [GSSystemRootDirectory() stringByAppendingPathComponent:v1];
  v3 = [v2 stringByAppendingPathComponent:@"PrivateFrameworks/CarPlayUI.framework"];

  v4 = [MEMORY[0x277CCA8D8] bundleWithPath:v3];

  return v4;
}

id CPUIImageNamedWithTraitCollection(void *a1, void *a2)
{
  v3 = MEMORY[0x277D755B8];
  v4 = a2;
  v5 = a1;
  v6 = CPUIFrameworkBundle();
  v7 = [v3 imageNamed:v5 inBundle:v6 compatibleWithTraitCollection:v4];

  return v7;
}

unint64_t CPUITraitCollectionSupportsFocus(void *a1)
{
  v1 = a1;
  if ([v1 primaryInteractionModel] == 8)
  {
    v2 = 1;
  }

  else
  {
    v2 = ([v1 interactionModel] >> 1) & 1;
  }

  return v2;
}

uint64_t CPUIIsUIRefreshFeatureEnabled()
{
  result = _os_feature_enabled_impl();
  if (result)
  {

    return _UISolariumEnabled();
  }

  return result;
}

id CPUILocalizedStringForKey(void *a1)
{
  v1 = a1;
  v2 = CPUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_2855CA368 table:@"Localizable"];

  return v3;
}

double CPUIRectByApplyingUserInterfaceLayoutDirectionInRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8)
{
  *&v18[16] = a7;
  *&v18[24] = a8;
  *v18 = a5;
  *&v18[8] = a6;
  *&v12 = CGRectIntegral(*&a1);
  v13 = [MEMORY[0x277D75128] sharedApplication];
  v14 = [v13 userInterfaceLayoutDirection];

  if (v14 == 1)
  {
    MaxX = CGRectGetMaxX(*v18);
    v19.origin.x = a1;
    v19.origin.y = a2;
    v19.size.width = a3;
    v19.size.height = a4;
    v16 = MaxX - CGRectGetMinX(v19);
    v20.origin.x = a1;
    v20.origin.y = a2;
    v20.size.width = a3;
    v20.size.height = a4;
    v12 = v16 - CGRectGetWidth(v20);
    v21.origin.x = a1;
    v21.origin.y = a2;
    v21.size.width = a3;
    v21.size.height = a4;
    CGRectGetMinY(v21);
    v22.origin.x = a1;
    v22.origin.y = a2;
    v22.size.width = a3;
    v22.size.height = a4;
    CGRectGetWidth(v22);
    v23.origin.x = a1;
    v23.origin.y = a2;
    v23.size.width = a3;
    v23.size.height = a4;
    CGRectGetHeight(v23);
  }

  return v12;
}

__CFString *CPUIDescriptionForUserInterfaceStyle(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"invalid style";
  }

  else
  {
    return off_278D9C450[a1];
  }
}

double CPUISizeForText(void *a1, void *a2, void *a3, double a4)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v15 = *MEMORY[0x277D740A8];
  v16[0] = a2;
  v7 = MEMORY[0x277CBEAC0];
  v8 = a3;
  v9 = a2;
  v10 = a1;
  v11 = [v7 dictionaryWithObjects:v16 forKeys:&v15 count:1];

  [v10 boundingRectWithSize:1 options:v11 attributes:v8 context:{a4, 1.79769313e308}];
  UICeilToScale();
  v13 = v12;
  UICeilToScale();
  return v13;
}

double CPUISizeForAttributedText(void *a1, uint64_t a2, double a3)
{
  [a1 boundingRectWithSize:1 options:a2 context:{a3, 1.79769313e308}];
  UICeilToScale();
  v4 = v3;
  UICeilToScale();
  return v4;
}

void __CPUICannedArtworkSizeNearestToSize_block_invoke()
{
  v0 = CPUICannedArtworkSizeNearestToSize__cannedSizes;
  CPUICannedArtworkSizeNearestToSize__cannedSizes = &unk_2855D84B8;
}

id CPUINowPlayingLayoutForSafeAreaFrameScaleArtworkSports(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = a9;
  if (a1)
  {
    CGRectGetWidth(*&a2);
    v30.origin.x = a2;
    v30.origin.y = a3;
    v30.size.width = a4;
    v30.size.height = a5;
    CGRectGetHeight(v30);
    v18 = a9;
  }

  v25 = [objc_alloc(objc_opt_class()) initWithSafeArea:a1 frame:a2 displayScale:a3 showsArtwork:{a4, a5, a6, a7, a8, v18, a17}];

  return v25;
}

void sub_24315C9B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL _nonCapturedPressType_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 type] != 3 && objc_msgSend(v2, "type") != 2 && objc_msgSend(v2, "type") && objc_msgSend(v2, "type") != 1;

  return v3;
}

double UIEdgeInsetsFromRectWithRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v10 = *MEMORY[0x277D768C8];
  v11 = *MEMORY[0x277CBF3A0];
  v12 = *(MEMORY[0x277CBF3A0] + 8);
  v14 = *(MEMORY[0x277CBF3A0] + 16);
  v13 = *(MEMORY[0x277CBF3A0] + 24);
  v30.origin.x = *MEMORY[0x277CBF3A0];
  v30.origin.y = v12;
  v30.size.width = v14;
  v30.size.height = v13;
  if (CGRectEqualToRect(*&a1, v30))
  {
    return v10;
  }

  v23.size.height = a8;
  v23.origin.x = a5;
  v23.origin.y = a6;
  v23.size.width = a7;
  v31.origin.x = v11;
  v31.origin.y = v12;
  v31.size.width = v14;
  v31.size.height = v13;
  MinY = v10;
  if (!CGRectEqualToRect(v23, v31))
  {
    v24.origin.x = a1;
    v24.origin.y = a2;
    v24.size.width = a3;
    v24.size.height = a4;
    MinY = CGRectGetMinY(v24);
    v25.origin.x = a1;
    v25.origin.y = a2;
    v25.size.width = a3;
    v25.size.height = a4;
    CGRectGetMinX(v25);
    v26.origin.x = a5;
    v26.origin.y = a6;
    v26.size.width = a7;
    v26.size.height = a8;
    CGRectGetHeight(v26);
    v27.origin.x = a1;
    v27.origin.y = a2;
    v27.size.width = a3;
    v27.size.height = a4;
    CGRectGetMaxY(v27);
    v28.origin.x = a5;
    v28.origin.y = a6;
    v28.size.width = a7;
    v28.size.height = a8;
    CGRectGetWidth(v28);
    v29.origin.x = a1;
    v29.origin.y = a2;
    v29.size.width = a3;
    v29.size.height = a4;
    CGRectGetMaxX(v29);
  }

  return MinY;
}

id __CPUIBaseColorWithAlphaComponent_block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    [MEMORY[0x277D75348] blackColor];
  }
  v3 = ;
  v4 = [v3 colorWithAlphaComponent:*(a1 + 32)];

  return v4;
}

void sub_243163F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

unint64_t lazy protocol witness table accessor for type CPUIHorizontalSizeClassTrait and conformance CPUIHorizontalSizeClassTrait()
{
  result = lazy protocol witness table cache variable for type CPUIHorizontalSizeClassTrait and conformance CPUIHorizontalSizeClassTrait;
  if (!lazy protocol witness table cache variable for type CPUIHorizontalSizeClassTrait and conformance CPUIHorizontalSizeClassTrait)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CPUIHorizontalSizeClassTrait and conformance CPUIHorizontalSizeClassTrait);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance UIViewAutoresizing(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance ISImageDescriptorName(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance ISImageDescriptorName(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance ISImageDescriptorName@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x245D2BBE0](v2);

  *a1 = v3;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CPUINowPlayingPlaceholderType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x245D2C000](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CPUINowPlayingPlaceholderType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x245D2C000](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ISImageDescriptorName@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x245D2BBE0](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance ISImageDescriptorName(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ISIconShape and conformance ISIconShape(&lazy protocol witness table cache variable for type ISImageDescriptorName and conformance ISImageDescriptorName, type metadata accessor for ISImageDescriptorName);
  v3 = lazy protocol witness table accessor for type ISIconShape and conformance ISIconShape(&lazy protocol witness table cache variable for type ISImageDescriptorName and conformance ISImageDescriptorName, type metadata accessor for ISImageDescriptorName);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance ISImageDescriptorName()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x245D2BC40](v0);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ISImageDescriptorName()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ISImageDescriptorName()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UIContentSizeCategory()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

unint64_t lazy protocol witness table accessor for type CPUIHorizontalSizeClassKey and conformance CPUIHorizontalSizeClassKey()
{
  result = lazy protocol witness table cache variable for type CPUIHorizontalSizeClassKey and conformance CPUIHorizontalSizeClassKey;
  if (!lazy protocol witness table cache variable for type CPUIHorizontalSizeClassKey and conformance CPUIHorizontalSizeClassKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CPUIHorizontalSizeClassKey and conformance CPUIHorizontalSizeClassKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CPUIHorizontalSizeClassKey and conformance CPUIHorizontalSizeClassKey;
  if (!lazy protocol witness table cache variable for type CPUIHorizontalSizeClassKey and conformance CPUIHorizontalSizeClassKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CPUIHorizontalSizeClassKey and conformance CPUIHorizontalSizeClassKey);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t lazy protocol witness table accessor for type ISIconShape and conformance ISIconShape(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for UIBlurEffectStyle(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GlowModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for GlowModifier(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t instantiation function for generic protocol witness table for GlowModifier(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GlowModifier and conformance GlowModifier();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type GlowModifier and conformance GlowModifier()
{
  result = lazy protocol witness table cache variable for type GlowModifier and conformance GlowModifier;
  if (!lazy protocol witness table cache variable for type GlowModifier and conformance GlowModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlowModifier and conformance GlowModifier);
  }

  return result;
}

uint64_t GradientProperties.colors.getter(uint64_t a1, void *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  getContiguousArrayStorageType<A>(for:)(AssociatedTypeWitness, AssociatedTypeWitness);
  swift_allocObject();
  v5 = static Array._adoptStorage(_:count:)();
  v6 = a2[7];
  v6(a1, a2);
  v6(a1, a2);
  v7 = a2[8];
  v7(a1, a2);
  v7(a1, a2);
  v8 = a2[9];
  v8(a1, a2);
  v8(a1, a2);
  type metadata accessor for Array();
  return v5;
}

double GradientProperties.locations.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4();
  v9 = v5 / ((v4)(a1, a2) + 60.0);
  v8 = (1.0 - v9) * 0.5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2431E2E20;
  *(v6 + 32) = 0;
  *(v6 + 40) = v8;
  *(v6 + 48) = vaddq_f64(vmulq_n_f64(xmmword_2431E2E30, v9), vdupq_lane_s64(*&v8, 0));
  result = 1.0 - v8;
  *(v6 + 64) = 1.0 - v8;
  *(v6 + 72) = 0x3FF0000000000000;
  return result;
}

uint64_t GradientProperties<>.stops.getter(uint64_t a1, void *a2)
{
  v4 = GradientProperties.colors.getter(a1, a2);
  GradientProperties.locations.getter(a1, a2);
  v6 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay7SwiftUI5ColorVGSaySdGG_AH8GradientV4StopVs5NeverOTg503_s7f3UI5h6VSdAA8i2V4j17VIggyo_AC_SdtAGs5k77OIegnrzr_TR014_s9CarPlayUI18d15PropertiesPAA05a3C05c25VAERtzrlE5stopsSayAD0D0p11E16VGvgAlF_S15XEfU_Tf3nnnpf_nTf1cn_n(v4, v5);

  return v6;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay7SwiftUI5ColorVGSaySdGG_AH8GradientV4StopVs5NeverOTg503_s7f3UI5h6VSdAA8i2V4j17VIggyo_AC_SdtAGs5k77OIegnrzr_TR014_s9CarPlayUI18d15PropertiesPAA05a3C05c25VAERtzrlE5stopsSayAD0D0p11E16VGvgAlF_S15XEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v29 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
  v27 = v4;
  v28 = v5;
  if (v6)
  {
    v8 = a1 + 32;
    v9 = a2 + 32;
    v10 = v6;
    while (v4)
    {
      if (!v5)
      {
        goto LABEL_21;
      }

      result = Gradient.Stop.init(color:location:)();
      v13 = *(v29 + 16);
      v12 = *(v29 + 24);
      if (v13 >= v12 >> 1)
      {
        v26 = result;
        v15 = v11;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v11 = v15;
        result = v26;
      }

      *(v29 + 16) = v13 + 1;
      v14 = v29 + 16 * v13;
      --v5;
      *(v14 + 32) = result;
      *(v14 + 40) = v11;
      --v4;
      v9 += 8;
      v8 += 8;
      if (!--v10)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_11:
    v16 = v27;
    v17 = v28;
    if (v27 <= v28)
    {
      return v29;
    }

    while (v6 < v16)
    {
      v18 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_23;
      }

      if (v17 != v6)
      {
        if (v6 >= v17)
        {
          goto LABEL_24;
        }

        result = Gradient.Stop.init(color:location:)();
        v21 = *(v29 + 16);
        v20 = *(v29 + 24);
        if (v21 >= v20 >> 1)
        {
          v23 = v16;
          v24 = result;
          v25 = v19;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
          v19 = v25;
          result = v24;
          v16 = v23;
          v17 = v28;
        }

        *(v29 + 16) = v21 + 1;
        v22 = v29 + 16 * v21;
        *(v22 + 32) = result;
        *(v22 + 40) = v19;
        ++v6;
        if (v18 != v16)
        {
          continue;
        }
      }

      return v29;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t closure #1 in StrokeView.body.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v29 = *a1;
  v30 = v4;
  v31 = *(a1 + 32);
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  Path.strokedPath(_:)();
  outlined destroy of StrokeStyle(v25);
  v5 = *(a1 + 5);
  v28 = v5;
  outlined init with copy of Color(&v28, v57);
  swift_retain_n();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  Path.strokedPath(_:)();
  outlined destroy of StrokeStyle(v26);
  v6 = v28;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  Path.strokedPath(_:)();
  outlined destroy of StrokeStyle(v27);
  v7 = v28;
  v32[0] = v22;
  v32[1] = v23;
  *&v33 = v24;
  *(&v33 + 1) = v5;
  LOWORD(v34) = 256;
  *(&v34 + 1) = 0x3FE0000000000000;
  v35 = 0;
  v11[0] = 0;
  v9 = v33;
  v10 = v34;
  v36[0] = v19;
  v36[1] = v20;
  *&v37 = v21;
  *(&v37 + 1) = v6;
  LOWORD(v38) = 256;
  *(&v38 + 1) = 0x4000000000000000;
  v39 = 0;
  *&v11[8] = v19;
  v11[72] = 0;
  *&v11[56] = v38;
  *&v11[40] = v37;
  *&v11[24] = v20;
  v40 = v16;
  v41 = v17;
  *&v42 = v18;
  *(&v42 + 1) = v28;
  LOWORD(v43) = 256;
  *(a2 + 208) = 0;
  *(&v43 + 1) = 0x4018000000000000;
  v44 = 0;
  v14 = v42;
  v15 = v43;
  v12 = v40;
  v13 = v41;
  *a2 = v22;
  *(a2 + 16) = v23;
  *(a2 + 64) = *v11;
  *(a2 + 80) = *&v11[16];
  *(a2 + 32) = v9;
  *(a2 + 48) = v10;
  *(a2 + 128) = *&v11[64];
  *(a2 + 144) = v12;
  *(a2 + 96) = *&v11[32];
  *(a2 + 112) = *&v11[48];
  *(a2 + 176) = v14;
  *(a2 + 192) = v15;
  *(a2 + 160) = v13;
  v45[0] = v16;
  v45[1] = v17;
  v46 = v18;
  v47 = v7;
  v48 = 256;
  v49 = 0x4018000000000000;
  v50 = 0;
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v32, v57, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA4PathVAA5ColorVGAA11_BlurEffectVGMd);
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v36, v57, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA4PathVAA5ColorVGAA11_BlurEffectVGMd);
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(&v40, v57, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA4PathVAA5ColorVGAA11_BlurEffectVGMd);
  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v45, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA4PathVAA5ColorVGAA11_BlurEffectVGMd);
  v51[0] = v19;
  v51[1] = v20;
  v52 = v21;
  v53 = v6;
  v54 = 256;
  v55 = 0x4000000000000000;
  v56 = 0;
  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v51, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA4PathVAA5ColorVGAA11_BlurEffectVGMd);
  v57[0] = v22;
  v57[1] = v23;
  v58 = v24;
  v59 = v5;
  v60 = 256;
  v61 = 0x3FE0000000000000;
  v62 = 0;
  return outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v57, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA4PathVAA5ColorVGAA11_BlurEffectVGMd);
}

double protocol witness for View.body.getter in conformance StrokeView@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v18[0] = *v1;
  v18[1] = v3;
  v18[2] = v1[2];
  v4 = static Alignment.center.getter();
  v6 = v5;
  closure #1 in StrokeView.body.getter(v18, &v35);
  v29 = v45;
  v30 = v46;
  v31 = v47;
  v25 = v41;
  v26 = v42;
  v27 = v43;
  v28 = v44;
  v21 = v37;
  v22 = v38;
  v23 = v39;
  v24 = v40;
  v19 = v35;
  v20 = v36;
  v33[10] = v45;
  v33[11] = v46;
  v33[12] = v47;
  v33[6] = v41;
  v33[7] = v42;
  v33[8] = v43;
  v33[9] = v44;
  v33[2] = v37;
  v33[3] = v38;
  v33[4] = v39;
  v33[5] = v40;
  v32 = v48;
  v34 = v48;
  v33[0] = v35;
  v33[1] = v36;
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(&v19, v17, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA06_ShapeD0VyAA4PathVAA5ColorVGAA11_BlurEffectVG_A2OtGMd);
  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v33, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA06_ShapeD0VyAA4PathVAA5ColorVGAA11_BlurEffectVG_A2OtGMd);
  v45 = v29;
  v46 = v30;
  v47 = v31;
  v48 = v32;
  v41 = v25;
  v42 = v26;
  v43 = v27;
  v44 = v28;
  v37 = v21;
  v38 = v22;
  v39 = v23;
  v40 = v24;
  v35 = v19;
  v36 = v20;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA06_ShapeG0VyAA4PathVAA5ColorVGAA11_BlurEffectVG_A2QtGGAA010_BlendModeL0VGMd) + 36);
  v8 = *MEMORY[0x277CE13B8];
  v9 = type metadata accessor for BlendMode();
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  *a1 = v4;
  *(a1 + 8) = v6;
  v10 = v46;
  *(a1 + 176) = v45;
  *(a1 + 192) = v10;
  *(a1 + 208) = v47;
  *(a1 + 224) = v48;
  v11 = v42;
  *(a1 + 112) = v41;
  *(a1 + 128) = v11;
  v12 = v44;
  *(a1 + 144) = v43;
  *(a1 + 160) = v12;
  v13 = v38;
  *(a1 + 48) = v37;
  *(a1 + 64) = v13;
  v14 = v40;
  *(a1 + 80) = v39;
  *(a1 + 96) = v14;
  result = *&v35;
  v16 = v36;
  *(a1 + 16) = v35;
  *(a1 + 32) = v16;
  return result;
}

uint64_t GradientMaskModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a1;
  v19 = a3;
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI20_MaskAlignmentEffectVyAA15ModifiedContentVyAA14LinearGradientVAA12_FrameLayoutVGGMd);
  v5 = type metadata accessor for ModifiedContent();
  v17 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  v20 = *(a2 + 16);
  v21 = v3;
  static Alignment.center.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA14LinearGradientVAA12_FrameLayoutVGMd);
  WitnessTable = swift_getWitnessTable();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>>, _FrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<LinearGradient, _FrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyAA14LinearGradientVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA14LinearGradientVAA12_FrameLayoutVGMR, lazy protocol witness table accessor for type LinearGradient and conformance LinearGradient);
  View.mask<A>(alignment:_:)();
  v12 = lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _MaskAlignmentEffect<ModifiedContent<LinearGradient, _FrameLayout>> and conformance _MaskAlignmentEffect<A>, &_s7SwiftUI20_MaskAlignmentEffectVyAA15ModifiedContentVyAA14LinearGradientVAA12_FrameLayoutVGGMd);
  v22 = WitnessTable;
  v23 = v12;
  v13 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v8, v5, v13);
  v14 = *(v17 + 8);
  v14(v8, v5);
  static ViewBuilder.buildExpression<A>(_:)(v10, v5, v13);
  return (v14)(v10, v5);
}

double closure #1 in GradientMaskModifier.body(content:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  GradientProperties<>.stops.getter(a1, a2);
  (*(a2 + 40))(&v11, a1, a2);
  (*(a2 + 48))(&v10, a1, a2);
  Gradient.init(stops:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v6 = *(a2 + 32);
  v6(a1, a2);
  v6(a1, a2);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v7 = v15;
  *(a3 + 32) = v14;
  *(a3 + 48) = v7;
  *(a3 + 64) = v16;
  *(a3 + 80) = v17;
  result = *&v12;
  v9 = v13;
  *a3 = v12;
  *(a3 + 16) = v9;
  return result;
}

uint64_t GlowModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, unint64_t a4@<D0>, double a5@<D1>)
{
  v51 = a2;
  v9 = type metadata accessor for RoundedCornerStyle();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07CarPlayB004GlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGMd) + 36));
  v14 = type metadata accessor for RoundedRectangle();
  v15 = *MEMORY[0x277CE0118];
  v16 = *(v10 + 104);
  v16(v13 + *(v14 + 20), v15, v9);
  *v13 = a5;
  v13[1] = a5;
  *(v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd) + 36)) = 256;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07CarPlayB004GlowD0VGMd);
  v18 = *(*(v17 - 8) + 16);
  v50 = a3;
  v18(a3, a1, v17);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v19 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07CarPlayB004GlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGAA12_FrameLayoutVGMd) + 36));
  v20 = v56;
  *v19 = v55;
  v19[1] = v20;
  v19[2] = v57;
  v21 = static Alignment.center.getter();
  v48 = v22;
  v49 = v21;
  v16(v12, v15, v9);
  Path.init(roundedRect:cornerRadius:style:)();
  v23 = v58;
  v24 = v59;
  v25 = v60;
  v26 = v61;
  LOBYTE(a1) = v62;
  v47 = v62;
  v27 = v51;

  v52 = static Color.white.getter();
  v28 = static Color.clear.getter();
  static Color.white.getter();
  v29 = Color.opacity(_:)();

  *&v63 = v23;
  *(&v63 + 1) = v24;
  *&v64 = v25;
  *(&v64 + 1) = v26;
  LOBYTE(v65) = a1;
  *(&v65 + 1) = *v54;
  DWORD1(v65) = *&v54[3];
  v30 = v27;
  *(&v65 + 1) = v27;
  v66 = a4;
  *&v67[0] = 0;
  __asm { FMOV            V0.2D, #1.0 }

  v46 = _Q0;
  *(v67 + 8) = _Q0;
  *(&v67[1] + 1) = v52;
  *&v68 = v28;
  v36 = v29;
  v37 = v49;
  *(&v68 + 1) = v29;
  *&v69 = v49;
  v38 = v48;
  *(&v69 + 1) = v48;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA014_ViewModifier_D0Vy07CarPlayB004GlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGAA12_FrameLayoutVGAA08_OverlayF0VyACyAF06StrokeE0VAF012GradientMaskF0VyAH06StaticR10Properties33_7FA4945C62998D2E6A7EF0190F6C3B8ALLVGGGGMd);
  v40 = (v50 + *(v39 + 36));
  v41 = v67[1];
  v40[4] = v67[0];
  v40[5] = v41;
  v42 = v69;
  v40[6] = v68;
  v40[7] = v42;
  v43 = v64;
  *v40 = v63;
  v40[1] = v43;
  v44 = v66;
  v40[2] = v65;
  v40[3] = v44;
  v70[0] = v23;
  v70[1] = v24;
  v70[2] = v25;
  v70[3] = v26;
  v71 = v47;
  *&v72[3] = *&v54[3];
  *v72 = *v54;
  v73 = v30;
  v74 = a4;
  v75 = 0;
  v76 = 0;
  v77 = v46;
  v78 = v52;
  v79 = v28;
  v80 = v36;
  v81 = v37;
  v82 = v38;
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(&v63, &v53, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVy07CarPlayB010StrokeViewVAF012GradientMaskD0VyAF04GlowD0V06StaticK10Properties33_7FA4945C62998D2E6A7EF0190F6C3B8ALLVGGGMd);
  return outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v70, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVy07CarPlayB010StrokeViewVAF012GradientMaskD0VyAF04GlowD0V06StaticK10Properties33_7FA4945C62998D2E6A7EF0190F6C3B8ALLVGGGMd);
}

__n128 protocol witness for GradientProperties.startPoint.getter in conformance GlowModifier.StaticGradientProperties@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

__n128 protocol witness for GradientProperties.endPoint.getter in conformance GlowModifier.StaticGradientProperties@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = result;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GlowModifier.StaticGradientProperties(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return specialized static GlowModifier.StaticGradientProperties.== infix(_:_:)(v7, v8) & 1;
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for GlowModifier.StaticGradientProperties(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GlowModifier.StaticGradientProperties(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for GradientMaskModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GradientMaskModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *storeEnumTagSinglePayload for GradientMaskModifier(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI4PathV7StorageO(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 5)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for StrokeView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for StrokeView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>>, _FrameLayout>, _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>>, _FrameLayout>, _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>>, _FrameLayout>, _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA014_ViewModifier_D0Vy07CarPlayB004GlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGAA12_FrameLayoutVGAA08_OverlayF0VyACyAF06StrokeE0VAF012GradientMaskF0VyAH06StaticR10Properties33_7FA4945C62998D2E6A7EF0190F6C3B8ALLVGGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>>, _FrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>>, _FrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07CarPlayB004GlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07CarPlayB004GlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGAA12_FrameLayoutVGMR, lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVy07CarPlayB010StrokeViewVAF012GradientMaskD0VyAF04GlowD0V06StaticK10Properties33_7FA4945C62998D2E6A7EF0190F6C3B8ALLVGGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>>, _FrameLayout>, _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>> and conformance <> ModifiedContent<A, B>);
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07CarPlayB004GlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy07CarPlayB004GlowD0VGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ClipEffect<RoundedRectangle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for GlowModifier.StaticGradientProperties(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GlowModifier.StaticGradientProperties and conformance GlowModifier.StaticGradientProperties();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type GlowModifier.StaticGradientProperties and conformance GlowModifier.StaticGradientProperties()
{
  result = lazy protocol witness table cache variable for type GlowModifier.StaticGradientProperties and conformance GlowModifier.StaticGradientProperties;
  if (!lazy protocol witness table cache variable for type GlowModifier.StaticGradientProperties and conformance GlowModifier.StaticGradientProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlowModifier.StaticGradientProperties and conformance GlowModifier.StaticGradientProperties);
  }

  return result;
}

uint64_t getContiguousArrayStorageType<A>(for:)(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  }

  else
  {

    return MEMORY[0x2821FDC00](0, a2);
  }
}

uint64_t specialized static GlowModifier.StaticGradientProperties.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2 || (static UnitPoint.== infix(_:_:)() & 1) == 0 || (static UnitPoint.== infix(_:_:)() & 1) == 0 || (static Color.== infix(_:_:)() & 1) == 0 || (static Color.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static Color.== infix(_:_:)();
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>>, _FrameLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LinearGradient and conformance LinearGradient()
{
  result = lazy protocol witness table cache variable for type LinearGradient and conformance LinearGradient;
  if (!lazy protocol witness table cache variable for type LinearGradient and conformance LinearGradient)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinearGradient and conformance LinearGradient);
  }

  return result;
}

uint64_t outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>, ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>, ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>)>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>, ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>, ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>)>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>, ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>, ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>)>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA06_ShapeG0VyAA4PathVAA5ColorVGAA11_BlurEffectVG_A2QtGGAA010_BlendModeL0VGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>, ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>, ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA06_ShapeE0VyAA4PathVAA5ColorVGAA11_BlurEffectVG_A2QtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>, ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>, ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>)>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(unint64_t *a1, uint64_t *a2)
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

id CPUIArtworkBackgroundView.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC9CarPlayUI25CPUIArtworkBackgroundView_animationPauseTimer];
  if (v1)
  {
    [v1 invalidate];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for CPUIArtworkBackgroundView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id CPUIArtworkBackgroundView.isPaused.getter()
{
  result = *(v0 + OBJC_IVAR____TtC9CarPlayUI25CPUIArtworkBackgroundView_metalView);
  if (result)
  {
    return [result isPaused];
  }

  return result;
}

Swift::Void __swiftcall CPUIArtworkBackgroundView.setPaused(_:)(Swift::Bool a1)
{
  v3 = OBJC_IVAR____TtC9CarPlayUI25CPUIArtworkBackgroundView_metalView;
  [*(v1 + OBJC_IVAR____TtC9CarPlayUI25CPUIArtworkBackgroundView_metalView) setEnableSetNeedsDisplay_];
  v4 = *(v1 + v3);

  [v4 setPaused_];
}

Swift::Void __swiftcall CPUIArtworkBackgroundView.update(image:animated:)(UIImage_optional image, Swift::Bool animated)
{
  v3 = v2;
  isa = image.value.super.isa;
  v5 = OBJC_IVAR____TtC9CarPlayUI25CPUIArtworkBackgroundView_renderer;
  v6 = *(v2 + OBJC_IVAR____TtC9CarPlayUI25CPUIArtworkBackgroundView_renderer);
  if (v6)
  {
    v7 = v6;
    v8 = dispatch thunk of Backdrop.CompositeRenderer.image.getter();

    if (isa)
    {
      if (v8)
      {
        type metadata accessor for UIImage();
        v9 = isa;
        v10 = static NSObject.== infix(_:_:)();

        if (v10)
        {
          return;
        }
      }
    }

    else
    {
      if (!v8)
      {
        return;
      }
    }
  }

  else if (!image.value.super.isa)
  {
    return;
  }

  v11 = OBJC_IVAR____TtC9CarPlayUI25CPUIArtworkBackgroundView_metalView;
  [*(v3 + OBJC_IVAR____TtC9CarPlayUI25CPUIArtworkBackgroundView_metalView) setEnableSetNeedsDisplay_];
  [*(v3 + v11) setPaused_];
  v12 = *(v3 + v5);
  if (v12)
  {
    v13 = v12;
    dispatch thunk of Backdrop.CompositeRenderer.setImage(_:animated:)();
  }

  v14 = *(v3 + v11);
  if (v14)
  {
    [v14 setNeedsDisplay];
  }

  CPUIArtworkBackgroundView.scheduleAnimationPauseTimer()();
}

Swift::Void __swiftcall CPUIArtworkBackgroundView.scheduleAnimationPauseTimer()()
{
  v1 = OBJC_IVAR____TtC9CarPlayUI25CPUIArtworkBackgroundView_animationPauseTimer;
  v2 = *(v0 + OBJC_IVAR____TtC9CarPlayUI25CPUIArtworkBackgroundView_animationPauseTimer);
  if (v2 && [v2 isValid])
  {
    [*(v0 + v1) invalidate];
    v3 = *(v0 + v1);
    *(v0 + v1) = 0;
  }

  v4 = objc_opt_self();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = partial apply for closure #1 in CPUIArtworkBackgroundView.scheduleAnimationPauseTimer();
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
  v9[3] = &block_descriptor;
  v6 = _Block_copy(v9);

  v7 = [v4 scheduledTimerWithTimeInterval:0 repeats:v6 block:5.0];
  _Block_release(v6);
  v8 = *(v0 + v1);
  *(v0 + v1) = v7;
}

unint64_t type metadata accessor for UIImage()
{
  result = lazy cache variable for type metadata for UIImage;
  if (!lazy cache variable for type metadata for UIImage)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIImage);
  }

  return result;
}

void closure #1 in CPUIArtworkBackgroundView.scheduleAnimationPauseTimer()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = OBJC_IVAR____TtC9CarPlayUI25CPUIArtworkBackgroundView_metalView;
    v2 = Strong;
    [*(Strong + OBJC_IVAR____TtC9CarPlayUI25CPUIArtworkBackgroundView_metalView) setEnableSetNeedsDisplay_];
    v3 = *&v2[v1];
    [v3 setPaused_];
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t CPUIArtworkBackgroundView.buildBackgroundView()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MediaCoreUI8BackdropO17ViewConfigurationVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v34 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MediaCoreUI12MetalContextVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - v6;
  v8 = type metadata accessor for MetalContext();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v15 = &v34 - v14;
  v16 = OBJC_IVAR____TtC9CarPlayUI25CPUIArtworkBackgroundView_metalView;
  if (!*&v1[OBJC_IVAR____TtC9CarPlayUI25CPUIArtworkBackgroundView_metalView])
  {
    static MetalContext.shared.getter();
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      return outlined destroy of MetalContext?(v7);
    }

    else
    {
      (*(v9 + 32))(v15, v7, v8);
      [v1 bounds];
      v21 = [objc_allocWithZone(MEMORY[0x277CD71F8]) initWithFrame:MetalContext.device.getter() device:{v17, v18, v19, v20}];
      swift_unknownObjectRelease();
      v22 = v21;
      [v22 setAutoresizingMask_];
      v23 = [v22 layer];

      [v23 setAllowsDisplayCompositing_];
      v24 = *&v1[v16];
      if (v24)
      {
        v25 = [v24 isPaused];
      }

      else
      {
        v25 = 0;
      }

      [v22 setEnableSetNeedsDisplay_];
      [v22 setPreferredFramesPerSecond_];
      (*(v9 + 16))(v12, v15, v8);
      v26 = type metadata accessor for Backdrop.ViewConfiguration();
      (*(*(v26 - 8) + 56))(v4, 1, 1, v26);
      v27 = objc_allocWithZone(type metadata accessor for Backdrop.CompositeRenderer());
      v28 = Backdrop.CompositeRenderer.init(context:configuration:)();
      lazy protocol witness table accessor for type CPUIArtworkBackgroundView and conformance CPUIArtworkBackgroundView();
      swift_unknownObjectRetain();
      dispatch thunk of Backdrop.CompositeRenderer.observer.setter();
      v29 = [objc_opt_self() systemGrayColor];
      dispatch thunk of Backdrop.CompositeRenderer.setPlaceholderColor(_:animated:)();

      [v22 colorPixelFormat];
      dispatch thunk of Backdrop.CompositeRenderer.framebufferPixelFormat.setter();
      dispatch thunk of Backdrop.CompositeRenderer.spectrumAnalysis.getter();
      dispatch thunk of SpectrumAnalysis.delayCount.setter();

      [v22 setDelegate_];
      v30 = *&v1[v16];
      *&v1[v16] = v22;
      v31 = v22;

      v32 = *&v1[OBJC_IVAR____TtC9CarPlayUI25CPUIArtworkBackgroundView_renderer];
      *&v1[OBJC_IVAR____TtC9CarPlayUI25CPUIArtworkBackgroundView_renderer] = v28;
      v33 = v28;

      [v1 addSubview_];
      return (*(v9 + 8))(v15, v8);
    }
  }

  return result;
}

uint64_t outlined destroy of MetalContext?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MediaCoreUI12MetalContextVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type CPUIArtworkBackgroundView and conformance CPUIArtworkBackgroundView()
{
  result = lazy protocol witness table cache variable for type CPUIArtworkBackgroundView and conformance CPUIArtworkBackgroundView;
  if (!lazy protocol witness table cache variable for type CPUIArtworkBackgroundView and conformance CPUIArtworkBackgroundView)
  {
    type metadata accessor for CPUIArtworkBackgroundView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CPUIArtworkBackgroundView and conformance CPUIArtworkBackgroundView);
  }

  return result;
}

Swift::Int CPUIHorizontalSizeClass.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x245D2C000](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CPUIHorizontalSizeClass()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x245D2C000](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CPUIHorizontalSizeClass()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x245D2C000](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type CPUIHorizontalSizeClass and conformance CPUIHorizontalSizeClass()
{
  result = lazy protocol witness table cache variable for type CPUIHorizontalSizeClass and conformance CPUIHorizontalSizeClass;
  if (!lazy protocol witness table cache variable for type CPUIHorizontalSizeClass and conformance CPUIHorizontalSizeClass)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CPUIHorizontalSizeClass and conformance CPUIHorizontalSizeClass);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CPUIHorizontalSizeClass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CPUIHorizontalSizeClass(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance CPUIHorizontalSizeClassKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type CPUIHorizontalSizeClass and conformance CPUIHorizontalSizeClass();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.cpuiHorizontalSizeClass.getter()
{
  lazy protocol witness table accessor for type CPUIHorizontalSizeClassKey and conformance CPUIHorizontalSizeClassKey();

  return EnvironmentValues.subscript.getter();
}

uint64_t key path getter for EnvironmentValues.cpuiHorizontalSizeClass : EnvironmentValues@<X0>(_BYTE *a1@<X8>)
{
  lazy protocol witness table accessor for type CPUIHorizontalSizeClassKey and conformance CPUIHorizontalSizeClassKey();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t (*EnvironmentValues.cpuiHorizontalSizeClass.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = lazy protocol witness table accessor for type CPUIHorizontalSizeClassKey and conformance CPUIHorizontalSizeClassKey();
  EnvironmentValues.subscript.getter();
  return EnvironmentValues.cpuiHorizontalSizeClass.modify;
}

uint64_t View.cpuiHorizontalSizeClass(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t getEnumTagSinglePayload for CPUIHorizontalSizeClassKey(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CPUIHorizontalSizeClassKey(_WORD *result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CPUIHorizontalSizeClass> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CPUIHorizontalSizeClass> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CPUIHorizontalSizeClass> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy07CarPlayB023CPUIHorizontalSizeClassOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CPUIHorizontalSizeClass> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

CPUIGridViewBaseWidthControlledColumnCountGridSize __swiftcall CPUIGridViewBaseWidthControlledColumnCountGridSize.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t specialized static CPUIGridViewBaseWidthControlledColumnCountGridSize.numberOfColumns(for:)(double a1)
{
  if (a1 < 284.0)
  {
    return 3;
  }

  if (a1 < 382.0)
  {
    return 4;
  }

  if (a1 < 460.0)
  {
    return 5;
  }

  if (a1 >= 538.0)
  {
    return 7;
  }

  return 6;
}

unint64_t type metadata accessor for CPUIGridViewBaseWidthControlledColumnCountGridSize()
{
  result = lazy cache variable for type metadata for CPUIGridViewBaseWidthControlledColumnCountGridSize;
  if (!lazy cache variable for type metadata for CPUIGridViewBaseWidthControlledColumnCountGridSize)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CPUIGridViewBaseWidthControlledColumnCountGridSize);
  }

  return result;
}

uint64_t UITraitCollection.cpuiIsPortrait.getter()
{
  lazy protocol witness table accessor for type CPUIIsPortraitTrait and conformance CPUIIsPortraitTrait();

  return UITraitCollection.subscript.getter();
}

unint64_t lazy protocol witness table accessor for type CPUIIsPortraitTrait and conformance CPUIIsPortraitTrait()
{
  result = lazy protocol witness table cache variable for type CPUIIsPortraitTrait and conformance CPUIIsPortraitTrait;
  if (!lazy protocol witness table cache variable for type CPUIIsPortraitTrait and conformance CPUIIsPortraitTrait)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CPUIIsPortraitTrait and conformance CPUIIsPortraitTrait);
  }

  return result;
}

uint64_t UIMutableTraits.cpuiIsPortrait.getter()
{
  lazy protocol witness table accessor for type CPUIIsPortraitTrait and conformance CPUIIsPortraitTrait();

  return dispatch thunk of UIMutableTraits.subscript.getter();
}

uint64_t UIMutableTraits.cpuiIsPortrait.setter()
{
  lazy protocol witness table accessor for type CPUIIsPortraitTrait and conformance CPUIIsPortraitTrait();

  return dispatch thunk of UIMutableTraits.subscript.setter();
}

uint64_t (*UIMutableTraits.cpuiIsPortrait.modify(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  lazy protocol witness table accessor for type CPUIIsPortraitTrait and conformance CPUIIsPortraitTrait();
  *(a1 + 24) = dispatch thunk of UIMutableTraits.subscript.getter() & 1;
  return UIMutableTraits.cpuiIsPortrait.modify;
}

uint64_t EnvironmentValues.cpuiIsPortrait.getter()
{
  lazy protocol witness table accessor for type CPUIIsPortraitKey and conformance CPUIIsPortraitKey();
  EnvironmentValues.subscript.getter();
  return v1;
}

unint64_t lazy protocol witness table accessor for type CPUIIsPortraitKey and conformance CPUIIsPortraitKey()
{
  result = lazy protocol witness table cache variable for type CPUIIsPortraitKey and conformance CPUIIsPortraitKey;
  if (!lazy protocol witness table cache variable for type CPUIIsPortraitKey and conformance CPUIIsPortraitKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CPUIIsPortraitKey and conformance CPUIIsPortraitKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CPUIIsPortraitKey and conformance CPUIIsPortraitKey;
  if (!lazy protocol witness table cache variable for type CPUIIsPortraitKey and conformance CPUIIsPortraitKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CPUIIsPortraitKey and conformance CPUIIsPortraitKey);
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.cpuiIsPortrait : EnvironmentValues@<X0>(_BYTE *a1@<X8>)
{
  lazy protocol witness table accessor for type CPUIIsPortraitKey and conformance CPUIIsPortraitKey();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t (*EnvironmentValues.cpuiIsPortrait.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = lazy protocol witness table accessor for type CPUIIsPortraitKey and conformance CPUIIsPortraitKey();
  EnvironmentValues.subscript.getter();
  *(a1 + 16) = *(a1 + 17);
  return EnvironmentValues.cpuiIsPortrait.modify;
}

uint64_t View.cpuiIsPortrait(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t protocol witness for static UITraitBridgedEnvironmentKey.read(from:) in conformance CPUIIsPortraitKey@<X0>(_BYTE *a1@<X8>)
{
  lazy protocol witness table accessor for type CPUIIsPortraitTrait and conformance CPUIIsPortraitTrait();
  result = UITraitCollection.subscript.getter();
  *a1 = result & 1;
  return result;
}

uint64_t UITraitCollection.wallpaperAppearanceType.getter()
{
  lazy protocol witness table accessor for type CPUIWallpaperAppearanceTypeTrait and conformance CPUIWallpaperAppearanceTypeTrait();
  lazy protocol witness table accessor for type CPUIWallpaperAppearanceType and conformance CPUIWallpaperAppearanceType();
  UITraitCollection.subscript.getter();
  return v1;
}

unint64_t lazy protocol witness table accessor for type CPUIWallpaperAppearanceTypeTrait and conformance CPUIWallpaperAppearanceTypeTrait()
{
  result = lazy protocol witness table cache variable for type CPUIWallpaperAppearanceTypeTrait and conformance CPUIWallpaperAppearanceTypeTrait;
  if (!lazy protocol witness table cache variable for type CPUIWallpaperAppearanceTypeTrait and conformance CPUIWallpaperAppearanceTypeTrait)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CPUIWallpaperAppearanceTypeTrait and conformance CPUIWallpaperAppearanceTypeTrait);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CPUIWallpaperAppearanceType and conformance CPUIWallpaperAppearanceType()
{
  result = lazy protocol witness table cache variable for type CPUIWallpaperAppearanceType and conformance CPUIWallpaperAppearanceType;
  if (!lazy protocol witness table cache variable for type CPUIWallpaperAppearanceType and conformance CPUIWallpaperAppearanceType)
  {
    type metadata accessor for CPUIWallpaperAppearanceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CPUIWallpaperAppearanceType and conformance CPUIWallpaperAppearanceType);
  }

  return result;
}

uint64_t UIMutableTraits.wallpaperAppearanceType.getter()
{
  lazy protocol witness table accessor for type CPUIWallpaperAppearanceTypeTrait and conformance CPUIWallpaperAppearanceTypeTrait();
  lazy protocol witness table accessor for type CPUIWallpaperAppearanceType and conformance CPUIWallpaperAppearanceType();
  dispatch thunk of UIMutableTraits.subscript.getter();
  return v1;
}

uint64_t UIMutableTraits.wallpaperAppearanceType.setter()
{
  lazy protocol witness table accessor for type CPUIWallpaperAppearanceTypeTrait and conformance CPUIWallpaperAppearanceTypeTrait();
  lazy protocol witness table accessor for type CPUIWallpaperAppearanceType and conformance CPUIWallpaperAppearanceType();
  return dispatch thunk of UIMutableTraits.subscript.setter();
}

uint64_t (*UIMutableTraits.wallpaperAppearanceType.modify(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = UIMutableTraits.wallpaperAppearanceType.getter();
  return UIMutableTraits.wallpaperAppearanceType.modify;
}

__n128 GridView.SquareGrid.Cell.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVy07CarPlayB08GridViewC4BaseO7ArtworkVGMd);
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v32 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVy07CarPlayB08GridViewC4BaseO7ArtworkVGAA14_OpacityEffectVGMd);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - v7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVy07CarPlayB08GridViewC4BaseO7ArtworkVGAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  MEMORY[0x28223BE20](v33);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA15ModifiedContentVyAGyAA0F0Vy07CarPlayB004GridC0C4BaseO7ArtworkVGAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGG_AL06SquareK0O4CellVAEVQo_Md);
  v36 = *(v11 - 8);
  v37 = v11;
  MEMORY[0x28223BE20](v11);
  v34 = &v32 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyAEyAEyAA0I0Vy07CarPlayB004GridF0C4BaseO7ArtworkVGAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGG_AN06SquareL0O4CellVAIVQo_AA08_OverlayT0VyAgAE12onTapGesture5count7performQrSi_yyctFQOyAEyAA5ColorVAA01_d5ShapeT0VyAA9RectangleVGG_Qo_GGA4_GMd);
  MEMORY[0x28223BE20](v13 - 8);
  v35 = &v32 - v14;
  v15 = *v1;
  type metadata accessor for GridView.Base.Artwork(0);
  lazy protocol witness table accessor for type GridView.Base.Artwork and conformance GridView.Base.Artwork(&lazy protocol witness table cache variable for type GridView.Base.Artwork and conformance GridView.Base.Artwork, type metadata accessor for GridView.Base.Artwork);

  Button.init(action:label:)();
  swift_getKeyPath();
  *&v39 = v15;
  lazy protocol witness table accessor for type GridView.Base.Artwork and conformance GridView.Base.Artwork(&lazy protocol witness table cache variable for type GridView.Base.ViewModel and conformance GridView.Base.ViewModel, type metadata accessor for GridView.Base.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v15 + OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__disabledAppearance))
  {
    v16 = 0.25;
  }

  else
  {
    v16 = 1.0;
  }

  (*(v2 + 32))(v8, v4, v32);
  *&v8[*(v6 + 44)] = v16;
  swift_getKeyPath();
  *&v39 = v15;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__allowsTouches;
  v18 = *(v15 + OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__allowsTouches);
  KeyPath = swift_getKeyPath();
  v20 = swift_allocObject();
  *(v20 + 16) = (v18 & 1) == 0;
  outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v8, v10, &_s7SwiftUI15ModifiedContentVyAA6ButtonVy07CarPlayB08GridViewC4BaseO7ArtworkVGAA14_OpacityEffectVGMd);
  v21 = &v10[*(v33 + 36)];
  *v21 = KeyPath;
  v21[1] = partial apply for closure #1 in View.disabled(_:);
  v21[2] = v20;
  swift_getKeyPath();
  *&v39 = v15;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = *(v15 + OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__isPressed);
  v23 = swift_getKeyPath();
  LOBYTE(v39) = v22;
  *(&v39 + 1) = v23;
  LOBYTE(v40) = 0;
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type GridView.SquareGrid.Cell.ButtonStyle and conformance GridView.SquareGrid.Cell.ButtonStyle();
  v24 = v34;
  View.buttonStyle<A>(_:)();

  outlined destroy of ModifiedContent<ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>(v10);
  swift_getKeyPath();
  *&v39 = v15;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = v35;
  specialized View.absorbTap(_:)((*(v15 + v17) & 1) == 0);
  (*(v36 + 8))(v24, v37);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v26 = v25;
  v27 = v38;
  sub_2431388AC(v26, v38);
  v28 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyACyACyAA0I0Vy07CarPlayB004GridF0C4BaseO7ArtworkVGAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGG_AN06SquareL0O4CellVAIVQo_AA08_OverlayT0VyAgAE12onTapGesture5count7performQrSi_yyctFQOyACyAA5ColorVAA01_d5ShapeT0VyAA9RectangleVGG_Qo_GGA4_GAA16_FlexFrameLayoutVGMd) + 36);
  v29 = v44;
  *(v28 + 64) = v43;
  *(v28 + 80) = v29;
  *(v28 + 96) = v45;
  v30 = v40;
  *v28 = v39;
  *(v28 + 16) = v30;
  result = v42;
  *(v28 + 32) = v41;
  *(v28 + 48) = result;
  return result;
}

uint64_t closure #1 in GridView.SquareGrid.Cell.body.getter(uint64_t a1)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type GridView.Base.Artwork and conformance GridView.Base.Artwork(&lazy protocol witness table cache variable for type GridView.Base.ViewModel and conformance GridView.Base.ViewModel, type metadata accessor for GridView.Base.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(a1 + OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__action);

  v2(v3);

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(a1 + OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__canStayPressed) == 1)
  {
    if (*(a1 + OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__isPressed) == 1)
    {
      *(a1 + OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__isPressed) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

uint64_t closure #2 in GridView.SquareGrid.Cell.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type GridView.Base.Artwork and conformance GridView.Base.Artwork(&lazy protocol witness table cache variable for type GridView.Base.ViewModel and conformance GridView.Base.ViewModel, type metadata accessor for GridView.Base.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__imageConfiguration;
  swift_beginAccess();
  return outlined init with copy of RoundedRectangle(a1 + v4, a2, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image);
}

uint64_t specialized View.absorbTap(_:)(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonI0Rd__lFQOyAGyAGyAA0J0Vy07CarPlayB004GridG0C4BaseO7ArtworkVGAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGG_AP06SquareM0O4CellVAKVQo_AA08_OverlayU0VyAiAE12onTapGesture5count7performQrSi_yyctFQOyAGyAA5ColorVAA01_d5ShapeU0VyAA9RectangleVGG_Qo_GGA6__GMd);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyACyACyAA0H0Vy07CarPlayB004GridE0C4BaseO7ArtworkVGAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGG_AL06SquareK0O4CellVAGVQo_AA08_OverlayS0VyAeAE12onTapGesture5count7performQrSi_yyctFQOyACyAA5ColorVAA01_d5ShapeS0VyAA9RectangleVGG_Qo_GGMd);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  if (a1)
  {
    v24 = static Color.clear.getter();
    LOBYTE(v25) = 0;
    v10 = &v9[*(v7 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ColorVAA01_D13ShapeModifierVyAA9RectangleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Color, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>();
    View.onTapGesture(count:perform:)();

    v11 = static Alignment.center.getter();
    v13 = v12;
    v14 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16_OverlayModifierVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyAA5ColorVAA01_l5ShapeD0VyAA9RectangleVGG_Qo_GMd) + 36)];
    *v14 = v11;
    v14[1] = v13;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA15ModifiedContentVyAGyAA0F0Vy07CarPlayB004GridC0C4BaseO7ArtworkVGAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGG_AL06SquareK0O4CellVAEVQo_Md);
    (*(*(v15 - 8) + 16))(v9, v2, v15);
    outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v9, v6, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyACyACyAA0H0Vy07CarPlayB004GridE0C4BaseO7ArtworkVGAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGG_AL06SquareK0O4CellVAGVQo_AA08_OverlayS0VyAeAE12onTapGesture5count7performQrSi_yyctFQOyACyAA5ColorVAA01_d5ShapeS0VyAA9RectangleVGG_Qo_GGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>> and conformance <> ModifiedContent<A, B>();
    v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVy07CarPlayB08GridViewC4BaseO7ArtworkVGAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGMd);
    v17 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    v18 = lazy protocol witness table accessor for type GridView.SquareGrid.Cell.ButtonStyle and conformance GridView.SquareGrid.Cell.ButtonStyle();
    v24 = v16;
    v25 = &type metadata for GridView.SquareGrid.Cell.ButtonStyle;
    v26 = v17;
    v27 = v18;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v9, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyACyACyAA0H0Vy07CarPlayB004GridE0C4BaseO7ArtworkVGAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGG_AL06SquareK0O4CellVAGVQo_AA08_OverlayS0VyAeAE12onTapGesture5count7performQrSi_yyctFQOyACyAA5ColorVAA01_d5ShapeS0VyAA9RectangleVGG_Qo_GGMd);
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA15ModifiedContentVyAGyAA0F0Vy07CarPlayB004GridC0C4BaseO7ArtworkVGAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGG_AL06SquareK0O4CellVAEVQo_Md);
    (*(*(v20 - 8) + 16))(v6, v2, v20);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>> and conformance <> ModifiedContent<A, B>();
    v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVy07CarPlayB08GridViewC4BaseO7ArtworkVGAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGMd);
    v22 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    v23 = lazy protocol witness table accessor for type GridView.SquareGrid.Cell.ButtonStyle and conformance GridView.SquareGrid.Cell.ButtonStyle();
    v24 = v21;
    v25 = &type metadata for GridView.SquareGrid.Cell.ButtonStyle;
    v26 = v22;
    v27 = v23;
    swift_getOpaqueTypeConformance2();
    return _ConditionalContent<>.init(storage:)();
  }
}

{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonI0Rd__lFQOyAA0J0Vy07CarPlayB004GridG0C9CondensedO4CellV0D0VG_AtKVQo_AA32_EnvironmentKeyTransformModifierVySbGGAA08_OverlayS0VyAiAE12onTapGesture5count7performQrSi_yyctFQOyAGyAA5ColorVAA01_d5ShapeS0VyAA9RectangleVGG_Qo_GGA1__GMd);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0Vy07CarPlayB004GridE0C9CondensedO4CellV0D0VG_ApGVQo_AA32_EnvironmentKeyTransformModifierVySbGGAA08_OverlayQ0VyAeAE12onTapGesture5count7performQrSi_yyctFQOyACyAA5ColorVAA01_d5ShapeQ0VyAA9RectangleVGG_Qo_GGMd);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  if (a1)
  {
    v16 = static Color.clear.getter();
    v17 = 0;
    v10 = &v9[*(v7 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ColorVAA01_D13ShapeModifierVyAA9RectangleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Color, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>();
    View.onTapGesture(count:perform:)();

    v11 = static Alignment.center.getter();
    v13 = v12;
    v14 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16_OverlayModifierVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyAA5ColorVAA01_l5ShapeD0VyAA9RectangleVGG_Qo_GMd) + 36)];
    *v14 = v11;
    v14[1] = v13;
    outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v2, v9, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0Vy07CarPlayB004GridE0C9CondensedO4CellV0D0VG_ApGVQo_AA32_EnvironmentKeyTransformModifierVySbGGMd);
    outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v9, v6, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0Vy07CarPlayB004GridE0C9CondensedO4CellV0D0VG_ApGVQo_AA32_EnvironmentKeyTransformModifierVySbGGAA08_OverlayQ0VyAeAE12onTapGesture5count7performQrSi_yyctFQOyACyAA5ColorVAA01_d5ShapeQ0VyAA9RectangleVGG_Qo_GGMd);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0Vy07CarPlayB004GridE0C9CondensedO4CellV0D0VG_ApGVQo_AA32_EnvironmentKeyTransformModifierVySbGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v9, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0Vy07CarPlayB004GridE0C9CondensedO4CellV0D0VG_ApGVQo_AA32_EnvironmentKeyTransformModifierVySbGGAA08_OverlayQ0VyAeAE12onTapGesture5count7performQrSi_yyctFQOyACyAA5ColorVAA01_d5ShapeQ0VyAA9RectangleVGG_Qo_GGMd);
  }

  else
  {
    outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v2, v6, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0Vy07CarPlayB004GridE0C9CondensedO4CellV0D0VG_ApGVQo_AA32_EnvironmentKeyTransformModifierVySbGGMd);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0Vy07CarPlayB004GridE0C9CondensedO4CellV0D0VG_ApGVQo_AA32_EnvironmentKeyTransformModifierVySbGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    return _ConditionalContent<>.init(storage:)();
  }
}

{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonI0Rd__lFQOyAGyAGyAA0J0VyACyAGy07CarPlayB004GridG0C4BaseO7ArtworkVAA16_OverlayModifierVyAGyAA6VStackVyAA05TupleG0VyAGyAGyAGyAA5ColorVAA18_AspectRatioLayoutVGAA08_PaddingW0VGAA013_TraitWritingQ0VyAA0w8PriorityY3KeyVGG_AGyAA6ZStackVyAZyAA14LinearGradientV_AN15ProgressiveBlurVtGGAVyAGyAGyAGyAP4HeroO4CellV6LabelsVAA015_EnvironmentKeyzQ0VyAA0T6SchemeOGGAA010_FlexFrameW0VGA5_GGGtGGA34_GGGAGyA0_AVyAGyAGyAGyAXyAZyAGyAGyAGyATA2_GAN014InnerHighlightQ0VGA11_G_A35_tGGA34_GA5_GA5_GGGGGA28_yAA4FontVSgGGA28_yAA13TextAlignmentOGG_A24_AKVQo_AA14_OpacityEffectVGAA024_EnvironmentKeyTransformQ0VySbGGAVyAiAE12onTapGesture5count7performQrSi_yyctFQOyAGyA0_AA01_d5ShapeQ0VyAA9RectangleVGG_Qo_GGA75__GMd);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyACyACyAA0H0VyAA012_ConditionalD0VyACy07CarPlayB004GridE0C4BaseO7ArtworkVAA16_OverlayModifierVyACyAA6VStackVyAA05TupleE0VyACyACyACyAA5ColorVAA18_AspectRatioLayoutVGAA08_PaddingV0VGAA013_TraitWritingP0VyAA0v8PriorityX3KeyVGG_ACyAA6ZStackVyAXyAA14LinearGradientV_AL15ProgressiveBlurVtGGATyACyACyACyAN4HeroO4CellV6LabelsVAA015_EnvironmentKeyyP0VyAA0S6SchemeOGGAA010_FlexFrameV0VGA3_GGGtGGA32_GGGACyAzTyACyACyACyAVyAXyACyACyACyARA0_GAL014InnerHighlightP0VGA9_G_A33_tGGA32_GA3_GA3_GGGGGA26_yAA4FontVSgGGA26_yAA13TextAlignmentOGG_A22_AGVQo_AA14_OpacityEffectVGAA024_EnvironmentKeyTransformP0VySbGGATyAeAE12onTapGesture5count7performQrSi_yyctFQOyACyAzA01_d5ShapeP0VyAA9RectangleVGG_Qo_GGMd);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  if (a1)
  {
    v16 = static Color.clear.getter();
    v17 = 0;
    v10 = &v9[*(v7 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ColorVAA01_D13ShapeModifierVyAA9RectangleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Color, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>();
    View.onTapGesture(count:perform:)();

    v11 = static Alignment.center.getter();
    v13 = v12;
    v14 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16_OverlayModifierVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyAA5ColorVAA01_l5ShapeD0VyAA9RectangleVGG_Qo_GMd) + 36)];
    *v14 = v11;
    v14[1] = v13;
    outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v2, v9, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyACyACyAA0H0VyAA012_ConditionalD0VyACy07CarPlayB004GridE0C4BaseO7ArtworkVAA16_OverlayModifierVyACyAA6VStackVyAA05TupleE0VyACyACyACyAA5ColorVAA18_AspectRatioLayoutVGAA08_PaddingV0VGAA013_TraitWritingP0VyAA0v8PriorityX3KeyVGG_ACyAA6ZStackVyAXyAA14LinearGradientV_AL15ProgressiveBlurVtGGATyACyACyACyAN4HeroO4CellV6LabelsVAA015_EnvironmentKeyyP0VyAA0S6SchemeOGGAA010_FlexFrameV0VGA3_GGGtGGA32_GGGACyAzTyACyACyACyAVyAXyACyACyACyARA0_GAL014InnerHighlightP0VGA9_G_A33_tGGA32_GA3_GA3_GGGGGA26_yAA4FontVSgGGA26_yAA13TextAlignmentOGG_A22_AGVQo_AA14_OpacityEffectVGAA024_EnvironmentKeyTransformP0VySbGGMd);
    outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v9, v6, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyACyACyAA0H0VyAA012_ConditionalD0VyACy07CarPlayB004GridE0C4BaseO7ArtworkVAA16_OverlayModifierVyACyAA6VStackVyAA05TupleE0VyACyACyACyAA5ColorVAA18_AspectRatioLayoutVGAA08_PaddingV0VGAA013_TraitWritingP0VyAA0v8PriorityX3KeyVGG_ACyAA6ZStackVyAXyAA14LinearGradientV_AL15ProgressiveBlurVtGGATyACyACyACyAN4HeroO4CellV6LabelsVAA015_EnvironmentKeyyP0VyAA0S6SchemeOGGAA010_FlexFrameV0VGA3_GGGtGGA32_GGGACyAzTyACyACyACyAVyAXyACyACyACyARA0_GAL014InnerHighlightP0VGA9_G_A33_tGGA32_GA3_GA3_GGGGGA26_yAA4FontVSgGGA26_yAA13TextAlignmentOGG_A22_AGVQo_AA14_OpacityEffectVGAA024_EnvironmentKeyTransformP0VySbGGATyAeAE12onTapGesture5count7performQrSi_yyctFQOyACyAzA01_d5ShapeP0VyAA9RectangleVGG_Qo_GGMd);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyACyACyAA0H0VyAA012_ConditionalD0VyACy07CarPlayB004GridE0C4BaseO7ArtworkVAA16_OverlayModifierVyACyAA6VStackVyAA05TupleE0VyACyACyACyAA5ColorVAA18_AspectRatioLayoutVGAA08_PaddingV0VGAA013_TraitWritingP0VyAA0v8PriorityX3KeyVGG_ACyAA6ZStackVyAXyAA14LinearGradientV_AL15ProgressiveBlurVtGGATyACyACyACyAN4HeroO4CellV6LabelsVAA015_EnvironmentKeyyP0VyAA0S6SchemeOGGAA010_FlexFrameV0VGA3_GGGtGGA32_GGGACyAzTyACyACyACyAVyAXyACyACyACyARA0_GAL014InnerHighlightP0VGA9_G_A33_tGGA32_GA3_GA3_GGGGGA26_yAA4FontVSgGGA26_yAA13TextAlignmentOGG_A22_AGVQo_AA14_OpacityEffectVGAA024_EnvironmentKeyTransformP0VySbGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v9, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyACyACyAA0H0VyAA012_ConditionalD0VyACy07CarPlayB004GridE0C4BaseO7ArtworkVAA16_OverlayModifierVyACyAA6VStackVyAA05TupleE0VyACyACyACyAA5ColorVAA18_AspectRatioLayoutVGAA08_PaddingV0VGAA013_TraitWritingP0VyAA0v8PriorityX3KeyVGG_ACyAA6ZStackVyAXyAA14LinearGradientV_AL15ProgressiveBlurVtGGATyACyACyACyAN4HeroO4CellV6LabelsVAA015_EnvironmentKeyyP0VyAA0S6SchemeOGGAA010_FlexFrameV0VGA3_GGGtGGA32_GGGACyAzTyACyACyACyAVyAXyACyACyACyARA0_GAL014InnerHighlightP0VGA9_G_A33_tGGA32_GA3_GA3_GGGGGA26_yAA4FontVSgGGA26_yAA13TextAlignmentOGG_A22_AGVQo_AA14_OpacityEffectVGAA024_EnvironmentKeyTransformP0VySbGGATyAeAE12onTapGesture5count7performQrSi_yyctFQOyACyAzA01_d5ShapeP0VyAA9RectangleVGG_Qo_GGMd);
  }

  else
  {
    outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v2, v6, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyACyACyAA0H0VyAA012_ConditionalD0VyACy07CarPlayB004GridE0C4BaseO7ArtworkVAA16_OverlayModifierVyACyAA6VStackVyAA05TupleE0VyACyACyACyAA5ColorVAA18_AspectRatioLayoutVGAA08_PaddingV0VGAA013_TraitWritingP0VyAA0v8PriorityX3KeyVGG_ACyAA6ZStackVyAXyAA14LinearGradientV_AL15ProgressiveBlurVtGGATyACyACyACyAN4HeroO4CellV6LabelsVAA015_EnvironmentKeyyP0VyAA0S6SchemeOGGAA010_FlexFrameV0VGA3_GGGtGGA32_GGGACyAzTyACyACyACyAVyAXyACyACyACyARA0_GAL014InnerHighlightP0VGA9_G_A33_tGGA32_GA3_GA3_GGGGGA26_yAA4FontVSgGGA26_yAA13TextAlignmentOGG_A22_AGVQo_AA14_OpacityEffectVGAA024_EnvironmentKeyTransformP0VySbGGMd);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyACyACyAA0H0VyAA012_ConditionalD0VyACy07CarPlayB004GridE0C4BaseO7ArtworkVAA16_OverlayModifierVyACyAA6VStackVyAA05TupleE0VyACyACyACyAA5ColorVAA18_AspectRatioLayoutVGAA08_PaddingV0VGAA013_TraitWritingP0VyAA0v8PriorityX3KeyVGG_ACyAA6ZStackVyAXyAA14LinearGradientV_AL15ProgressiveBlurVtGGATyACyACyACyAN4HeroO4CellV6LabelsVAA015_EnvironmentKeyyP0VyAA0S6SchemeOGGAA010_FlexFrameV0VGA3_GGGtGGA32_GGGACyAzTyACyACyACyAVyAXyACyACyACyARA0_GAL014InnerHighlightP0VGA9_G_A33_tGGA32_GA3_GA3_GGGGGA26_yAA4FontVSgGGA26_yAA13TextAlignmentOGG_A22_AGVQo_AA14_OpacityEffectVGAA024_EnvironmentKeyTransformP0VySbGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t specialized View.absorbTap(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonI0Rd__lFQOyAGyAGyAA0J0VyAA5LabelVyAGyAA6HStackVyAA05TupleG0VyAGyAA5GroupVyACyAGyAiAE10fontWeightyQrAA4FontV0P0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyA1_5ScaleOGG07CarPlayB004GridG0C4BaseO09Accessoryg7HostingG0VGGAA011_ForegroundiV0VyAA017HierarchicalShapeI0VGGSg_AGyAA4TextVA4_ySiSgGGtGGA4_yAXSgGGA13_7ArtworkVGGAA14_OpacityEffectVGAA01_st9TransformV0VySbGG_A11_0rZ0O4CellVAKVQo_AA08_OverlayV0VyAiAE12onTapGesture5count7performQrSi_yyctFQOyAGyAA5ColorVAA01_d5ShapeV0VyAA9RectangleVGG_Qo_GGA51__GMd);
  MEMORY[0x28223BE20](v6);
  v8 = v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyACyACyAA0H0VyAA5LabelVyACyAA6HStackVyAA05TupleE0VyACyAA5GroupVyAA012_ConditionalD0VyACyAeAE10fontWeightyQrAA4FontV0O0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyA_5ScaleOGG07CarPlayB004GridE0C4BaseO09Accessorye7HostingE0VGGAA011_ForegroundgU0VyAA017HierarchicalShapeG0VGGSg_ACyAA4TextVA2_ySiSgGGtGGA2_yAVSgGGA11_7ArtworkVGGAA14_OpacityEffectVGAA01_rs9TransformU0VySbGG_A9_0qY0O4CellVAGVQo_AA08_OverlayU0VyAeAE12onTapGesture5count7performQrSi_yyctFQOyACyAA5ColorVAA01_d5ShapeU0VyAA9RectangleVGG_Qo_GGMd);
  MEMORY[0x28223BE20](v9);
  v11 = v29 - v10;
  if (a1)
  {
    v12 = static Color.clear.getter();
    v29[1] = a2;
    v30 = v12;
    LOBYTE(v31) = 0;
    v13 = &v11[*(v9 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ColorVAA01_D13ShapeModifierVyAA9RectangleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Color, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>();
    View.onTapGesture(count:perform:)();

    v14 = static Alignment.center.getter();
    v16 = v15;
    v17 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16_OverlayModifierVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyAA5ColorVAA01_l5ShapeD0VyAA9RectangleVGG_Qo_GMd) + 36)];
    *v17 = v14;
    v17[1] = v16;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA15ModifiedContentVyAGyAA0F0VyAA5LabelVyAGyAA6HStackVyAA05TupleC0VyAGyAA5GroupVyAA012_ConditionalH0VyAGyAcAE10fontWeightyQrAA4FontV0O0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyA_5ScaleOGG07CarPlayB004GridC0C4BaseO09Accessoryc7HostingC0VGGAA011_ForegroundeU0VyAA017HierarchicalShapeE0VGGSg_AGyAA4TextVA2_ySiSgGGtGGA2_yAVSgGGA11_7ArtworkVGGAA14_OpacityEffectVGAA01_rs9TransformU0VySbGG_A9_0qY0O4CellVAEVQo_Md);
    (*(*(v18 - 8) + 16))(v11, v3, v18);
    outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v11, v8, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyACyACyAA0H0VyAA5LabelVyACyAA6HStackVyAA05TupleE0VyACyAA5GroupVyAA012_ConditionalD0VyACyAeAE10fontWeightyQrAA4FontV0O0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyA_5ScaleOGG07CarPlayB004GridE0C4BaseO09Accessorye7HostingE0VGGAA011_ForegroundgU0VyAA017HierarchicalShapeG0VGGSg_ACyAA4TextVA2_ySiSgGGtGGA2_yAVSgGGA11_7ArtworkVGGAA14_OpacityEffectVGAA01_rs9TransformU0VySbGG_A9_0qY0O4CellVAGVQo_AA08_OverlayU0VyAeAE12onTapGesture5count7performQrSi_yyctFQOyACyAA5ColorVAA01_d5ShapeU0VyAA9RectangleVGG_Qo_GGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>> and conformance <> ModifiedContent<A, B>();
    v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5LabelVyACyAA6HStackVyAA9TupleViewVyACyAA5GroupVyAA012_ConditionalD0VyACyAA0I0PAAE10fontWeightyQrAA4FontV0M0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAY5ScaleOGG07CarPlayB004GridI0C4BaseO09Accessoryi7HostingI0VGGAA016_ForegroundStyleS0VyAA22HierarchicalShapeStyleVGGSg_ACyAA4TextVA0_ySiSgGGtGGA0_yATSgGGA9_7ArtworkVGGAA14_OpacityEffectVGAA01_pq9TransformS0VySbGGMd);
    v20 = type metadata accessor for GridView.ImageGrid.Cell.ButtonStyle(255);
    v21 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<Label<ModifiedContent<HStack<TupleView<(ModifiedContent<Group<_ConditionalContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, GridView.Base.AccessoryViewHostingView>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, GridView.Base.Artwork>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    v22 = lazy protocol witness table accessor for type GridView.Base.Artwork and conformance GridView.Base.Artwork(&lazy protocol witness table cache variable for type GridView.ImageGrid.Cell.ButtonStyle and conformance GridView.ImageGrid.Cell.ButtonStyle, type metadata accessor for GridView.ImageGrid.Cell.ButtonStyle);
    v30 = v19;
    v31 = v20;
    v32 = v21;
    v33 = v22;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v11, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyACyACyAA0H0VyAA5LabelVyACyAA6HStackVyAA05TupleE0VyACyAA5GroupVyAA012_ConditionalD0VyACyAeAE10fontWeightyQrAA4FontV0O0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyA_5ScaleOGG07CarPlayB004GridE0C4BaseO09Accessorye7HostingE0VGGAA011_ForegroundgU0VyAA017HierarchicalShapeG0VGGSg_ACyAA4TextVA2_ySiSgGGtGGA2_yAVSgGGA11_7ArtworkVGGAA14_OpacityEffectVGAA01_rs9TransformU0VySbGG_A9_0qY0O4CellVAGVQo_AA08_OverlayU0VyAeAE12onTapGesture5count7performQrSi_yyctFQOyACyAA5ColorVAA01_d5ShapeU0VyAA9RectangleVGG_Qo_GGMd);
  }

  else
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA15ModifiedContentVyAGyAA0F0VyAA5LabelVyAGyAA6HStackVyAA05TupleC0VyAGyAA5GroupVyAA012_ConditionalH0VyAGyAcAE10fontWeightyQrAA4FontV0O0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyA_5ScaleOGG07CarPlayB004GridC0C4BaseO09Accessoryc7HostingC0VGGAA011_ForegroundeU0VyAA017HierarchicalShapeE0VGGSg_AGyAA4TextVA2_ySiSgGGtGGA2_yAVSgGGA11_7ArtworkVGGAA14_OpacityEffectVGAA01_rs9TransformU0VySbGG_A9_0qY0O4CellVAEVQo_Md);
    (*(*(v24 - 8) + 16))(v8, v3, v24);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>> and conformance <> ModifiedContent<A, B>();
    v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5LabelVyACyAA6HStackVyAA9TupleViewVyACyAA5GroupVyAA012_ConditionalD0VyACyAA0I0PAAE10fontWeightyQrAA4FontV0M0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAY5ScaleOGG07CarPlayB004GridI0C4BaseO09Accessoryi7HostingI0VGGAA016_ForegroundStyleS0VyAA22HierarchicalShapeStyleVGGSg_ACyAA4TextVA0_ySiSgGGtGGA0_yATSgGGA9_7ArtworkVGGAA14_OpacityEffectVGAA01_pq9TransformS0VySbGGMd);
    v26 = type metadata accessor for GridView.ImageGrid.Cell.ButtonStyle(255);
    v27 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<Label<ModifiedContent<HStack<TupleView<(ModifiedContent<Group<_ConditionalContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, GridView.Base.AccessoryViewHostingView>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, GridView.Base.Artwork>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    v28 = lazy protocol witness table accessor for type GridView.Base.Artwork and conformance GridView.Base.Artwork(&lazy protocol witness table cache variable for type GridView.ImageGrid.Cell.ButtonStyle and conformance GridView.ImageGrid.Cell.ButtonStyle, type metadata accessor for GridView.ImageGrid.Cell.ButtonStyle);
    v30 = v25;
    v31 = v26;
    v32 = v27;
    v33 = v28;
    swift_getOpaqueTypeConformance2();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t GridView.SquareGrid.Cell.ButtonStyle.makeBody(configuration:)@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA24ButtonStyleConfigurationV5LabelVAA18_AspectRatioLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGMd);
  MEMORY[0x28223BE20](v3);
  v5 = &v54 - v4;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA24ButtonStyleConfigurationV5LabelVAA18_AspectRatioLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_OpacityM0VGMd);
  MEMORY[0x28223BE20](v58);
  v7 = &v54 - v6;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA18_AspectRatioLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_OpacityM0VGAA19_BackgroundModifierVyAA11_ShadowViewVy07CarPlayB018AnyInsettableShapeVGGGMd);
  MEMORY[0x28223BE20](v59);
  v9 = &v54 - v8;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA18_AspectRatioLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_OpacityM0VGAA19_BackgroundModifierVyAA11_ShadowViewVy07CarPlayB018AnyInsettableShapeVGGGAX09FocusRingR033_C2414E8B1C72748AF3156B15159BFF28LLVGMd);
  MEMORY[0x28223BE20](v60);
  v62 = &v54 - v10;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA18_AspectRatioLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_OpacityM0VGAA19_BackgroundModifierVyAA11_ShadowViewVy07CarPlayB018AnyInsettableShapeVGGGAX09FocusRingR033_C2414E8B1C72748AF3156B15159BFF28LLVGAA06_ScaleM0VGMd);
  MEMORY[0x28223BE20](v61);
  v63 = &v54 - v11;
  v12 = type metadata accessor for RoundedRectangle();
  MEMORY[0x28223BE20](v12);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v15 = 1;
  }

  else
  {
    v15 = ButtonStyleConfiguration.isPressed.getter();
  }

  if (one-time initialization token for style != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for RoundedCornerStyle();
  v17 = __swift_project_value_buffer(v16, static GridView.SquareGrid.Cell.Specs.Corner.style);
  (*(*(v16 - 8) + 16))(&v14[*(v12 + 20)], v17, v16);
  __asm { FMOV            V0.2D, #14.0 }

  *v14 = _Q0;
  ButtonStyleConfiguration.label.getter();
  v23 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA18_AspectRatioLayoutVGMd) + 36)];
  *v23 = 0x3FF0000000000000;
  *(v23 + 4) = 0;
  v24 = &v5[*(v3 + 36)];
  outlined init with copy of RoundedRectangle(v14, v24, MEMORY[0x277CDFC08]);
  *(v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd) + 36)) = 256;
  if (v15)
  {
    v25 = 0.75;
  }

  else
  {
    v25 = 1.0;
  }

  outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v5, v7, &_s7SwiftUI15ModifiedContentVyACyAA24ButtonStyleConfigurationV5LabelVAA18_AspectRatioLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGMd);
  *&v7[*(v58 + 36)] = v25;
  v57 = v7;
  LODWORD(v58) = v15;
  if (one-time initialization token for color != -1)
  {
    swift_once();
  }

  v56 = static GridView.SquareGrid.Cell.Specs.Shadow.color;
  v67 = v12;
  v26 = lazy protocol witness table accessor for type GridView.Base.Artwork and conformance GridView.Base.Artwork(&lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle, MEMORY[0x277CDFC08]);
  v68 = v26;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v66);
  v28 = MEMORY[0x277CDFC08];
  outlined init with copy of RoundedRectangle(v14, boxed_opaque_existential_1, MEMORY[0x277CDFC08]);
  v29 = static Alignment.center.getter();
  v55 = v14;
  v31 = v30;
  v32 = &v9[*(v59 + 36)];
  outlined init with copy of InsettableShape(v66, v65);
  v59 = v12;
  v33 = v9;
  __swift_project_boxed_opaque_existential_1(v65, v65[3]);
  *(v32 + 3) = swift_getAssociatedTypeWitness();
  *(v32 + 4) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v32);
  dispatch thunk of InsettableShape.inset(by:)();
  outlined destroy of AnyInsettableShape(v65);
  *(v32 + 5) = v56;
  *(v32 + 3) = xmmword_2431E35B0;
  *(v32 + 8) = 0x4014000000000000;
  *(v32 + 9) = v29;
  *(v32 + 10) = v31;
  outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v57, v9, &_s7SwiftUI15ModifiedContentVyACyACyAA24ButtonStyleConfigurationV5LabelVAA18_AspectRatioLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_OpacityM0VGMd);

  __swift_destroy_boxed_opaque_existential_1(v66);
  v67 = v59;
  v68 = v26;
  v34 = __swift_allocate_boxed_opaque_existential_1(v66);
  v35 = v55;
  outlined init with copy of RoundedRectangle(v55, v34, v28);
  v36 = static Color.accentColor.getter();
  v37 = v62;
  v38 = &v62[*(v60 + 36)];
  outlined init with copy of InsettableShape(v66, (v38 + 24));
  *(v38 + 8) = swift_getKeyPath();
  v38[72] = 0;
  *v38 = v36;
  *(v38 + 8) = xmmword_2431E35C0;
  outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v33, v37, &_s7SwiftUI15ModifiedContentVyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA18_AspectRatioLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_OpacityM0VGAA19_BackgroundModifierVyAA11_ShadowViewVy07CarPlayB018AnyInsettableShapeVGGGMd);
  __swift_destroy_boxed_opaque_existential_1(v66);
  v39 = v58 & 1;
  if (v58)
  {
    v40 = 0.9;
  }

  else
  {
    v40 = 1.0;
  }

  static UnitPoint.center.getter();
  v42 = v41;
  v44 = v43;
  v45 = v37;
  v46 = v63;
  v47 = outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v45, v63, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA18_AspectRatioLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_OpacityM0VGAA19_BackgroundModifierVyAA11_ShadowViewVy07CarPlayB018AnyInsettableShapeVGGGAX09FocusRingR033_C2414E8B1C72748AF3156B15159BFF28LLVGMd);
  v48 = v46 + *(v61 + 36);
  *v48 = v40;
  *(v48 + 8) = v40;
  *(v48 + 16) = v42;
  *(v48 + 24) = v44;
  v49 = MEMORY[0x245D2BB10](v47, 0.2, 0.5, 0.0);
  outlined destroy of RoundedRectangle(v35);
  v50 = v46;
  v51 = v64;
  outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v50, v64, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA18_AspectRatioLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_OpacityM0VGAA19_BackgroundModifierVyAA11_ShadowViewVy07CarPlayB018AnyInsettableShapeVGGGAX09FocusRingR033_C2414E8B1C72748AF3156B15159BFF28LLVGAA06_ScaleM0VGMd);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA18_AspectRatioLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_OpacityM0VGAA19_BackgroundModifierVyAA11_ShadowViewVy07CarPlayB018AnyInsettableShapeVGGGAX09FocusRingR033_C2414E8B1C72748AF3156B15159BFF28LLVGAA06_ScaleM0VGAA010_AnimationR0VySbGGMd);
  v53 = v51 + *(result + 36);
  *v53 = v49;
  *(v53 + 8) = v39;
  return result;
}

uint64_t one-time initialization function for style()
{
  v0 = type metadata accessor for RoundedCornerStyle();
  __swift_allocate_value_buffer(v0, static GridView.SquareGrid.Cell.Specs.Corner.style);
  v1 = __swift_project_value_buffer(v0, static GridView.SquareGrid.Cell.Specs.Corner.style);
  v2 = *MEMORY[0x277CE0118];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for RoundedCornerStyle();
  __swift_allocate_value_buffer(v0, static CPUITableHeaderFooterView.Content.Specs.Corner.style);
  v1 = __swift_project_value_buffer(v0, static CPUITableHeaderFooterView.Content.Specs.Corner.style);
  v2 = *MEMORY[0x277CE0118];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t one-time initialization function for color()
{
  static Color.black.getter();
  v0 = Color.opacity(_:)();

  static GridView.SquareGrid.Cell.Specs.Shadow.color = v0;
  return result;
}

{
  static Color.black.getter();
  v0 = Color.opacity(_:)();

  static GridView.Condensed.Cell.Specs.Image.Shadow.color = v0;
  return result;
}

{
  result = static Color.accentColor.getter();
  static GridView.Condensed.Cell.Specs.Highlight.color = result;
  return result;
}

{
  result = static Color.primary.getter();
  static Specs.Title.color = result;
  return result;
}

{
  result = static Color.accentColor.getter();
  static Specs.Subtitle.color = result;
  return result;
}

{
  result = static Color.accentColor.getter();
  static Specs.Controls.color = result;
  return result;
}

uint64_t key path getter for EnvironmentValues.isFocused : EnvironmentValues@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isFocused.getter();
  *a1 = result & 1;
  return result;
}

uint64_t key path getter for GridView.Base.ViewModel.allowsTouches : GridView.Base.ViewModel@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type GridView.Base.Artwork and conformance GridView.Base.Artwork(&lazy protocol witness table cache variable for type GridView.Base.ViewModel and conformance GridView.Base.ViewModel, type metadata accessor for GridView.Base.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t key path getter for EnvironmentValues.isEnabled : EnvironmentValues, serialized@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVy07CarPlayB08GridViewC4BaseO7ArtworkVGAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVy07CarPlayB08GridViewC4BaseO7ArtworkVGAA14_OpacityEffectVGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type Button<GridView.Base.Artwork> and conformance Button<A>, &_s7SwiftUI6ButtonVy07CarPlayB08GridViewC4BaseO7ArtworkVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GridView.SquareGrid.Cell.ButtonStyle and conformance GridView.SquareGrid.Cell.ButtonStyle()
{
  result = lazy protocol witness table cache variable for type GridView.SquareGrid.Cell.ButtonStyle and conformance GridView.SquareGrid.Cell.ButtonStyle;
  if (!lazy protocol witness table cache variable for type GridView.SquareGrid.Cell.ButtonStyle and conformance GridView.SquareGrid.Cell.ButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GridView.SquareGrid.Cell.ButtonStyle and conformance GridView.SquareGrid.Cell.ButtonStyle);
  }

  return result;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVy07CarPlayB08GridViewC4BaseO7ArtworkVGAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t instantiation function for generic protocol witness table for GridView.SquareGrid.Cell(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GridView.SquareGrid.Cell and conformance GridView.SquareGrid.Cell();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type GridView.SquareGrid.Cell and conformance GridView.SquareGrid.Cell()
{
  result = lazy protocol witness table cache variable for type GridView.SquareGrid.Cell and conformance GridView.SquareGrid.Cell;
  if (!lazy protocol witness table cache variable for type GridView.SquareGrid.Cell and conformance GridView.SquareGrid.Cell)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GridView.SquareGrid.Cell and conformance GridView.SquareGrid.Cell);
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for GridView.SquareGrid.Cell(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for GridView.SquareGrid.Cell(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyACyACyAA0I0Vy07CarPlayB004GridF0C4BaseO7ArtworkVGAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGG_AN06SquareL0O4CellVAIVQo_AA08_OverlayT0VyAgAE12onTapGesture5count7performQrSi_yyctFQOyACyAA5ColorVAA01_d5ShapeT0VyAA9RectangleVGG_Qo_GGA4_GAA16_FlexFrameLayoutVGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyACyACyAA0I0VyAA5LabelVyACyAA6HStackVyAA05TupleF0VyACyAA5GroupVyAEyACyAgAE10fontWeightyQrAA4FontV0O0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyA_5ScaleOGG07CarPlayB004GridF0C4BaseO09Accessoryf7HostingF0VGGAA011_ForegroundhU0VyAA017HierarchicalShapeH0VGGSg_ACyAA4TextVA2_ySiSgGGtGGA2_yAVSgGGA11_7ArtworkVGGAA14_OpacityEffectVGAA01_rs9TransformU0VySbGG_A9_0qY0O4CellVAIVQo_AA08_OverlayU0VyAgAE12onTapGesture5count7performQrSi_yyctFQOyACyAA5ColorVAA01_d5ShapeU0VyAA9RectangleVGG_Qo_GGA49_GAA16_FlexFrameLayoutVGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyAEyAEyAA0I0Vy07CarPlayB004GridF0C4BaseO7ArtworkVGAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGG_AN06SquareL0O4CellVAIVQo_AA08_OverlayT0VyAgAE12onTapGesture5count7performQrSi_yyctFQOyAEyAA5ColorVAA01_d5ShapeT0VyAA9RectangleVGG_Qo_GGA4_GMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>> and conformance <> ModifiedContent<A, B>();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVy07CarPlayB08GridViewC4BaseO7ArtworkVGAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type GridView.SquareGrid.Cell.ButtonStyle and conformance GridView.SquareGrid.Cell.ButtonStyle();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyAEyAEyAA0I0VyAA5LabelVyAEyAA6HStackVyAA05TupleF0VyAEyAA5GroupVyACyAEyAgAE10fontWeightyQrAA4FontV0O0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyA_5ScaleOGG07CarPlayB004GridF0C4BaseO09Accessoryf7HostingF0VGGAA011_ForegroundhU0VyAA017HierarchicalShapeH0VGGSg_AEyAA4TextVA2_ySiSgGGtGGA2_yAVSgGGA11_7ArtworkVGGAA14_OpacityEffectVGAA01_rs9TransformU0VySbGG_A9_0qY0O4CellVAIVQo_AA08_OverlayU0VyAgAE12onTapGesture5count7performQrSi_yyctFQOyAEyAA5ColorVAA01_d5ShapeU0VyAA9RectangleVGG_Qo_GGA49_GMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>> and conformance <> ModifiedContent<A, B>();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5LabelVyACyAA6HStackVyAA9TupleViewVyACyAA5GroupVyAA012_ConditionalD0VyACyAA0I0PAAE10fontWeightyQrAA4FontV0M0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAY5ScaleOGG07CarPlayB004GridI0C4BaseO09Accessoryi7HostingI0VGGAA016_ForegroundStyleS0VyAA22HierarchicalShapeStyleVGGSg_ACyAA4TextVA0_ySiSgGGtGGA0_yATSgGGA9_7ArtworkVGGAA14_OpacityEffectVGAA01_pq9TransformS0VySbGGMd);
    type metadata accessor for GridView.ImageGrid.Cell.ButtonStyle(255);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<Label<ModifiedContent<HStack<TupleView<(ModifiedContent<Group<_ConditionalContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, GridView.Base.AccessoryViewHostingView>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, GridView.Base.Artwork>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    _s9CarPlayUI8GridViewC4BaseO0E5ModelCAG11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type GridView.ImageGrid.Cell.ButtonStyle and conformance GridView.ImageGrid.Cell.ButtonStyle, type metadata accessor for GridView.ImageGrid.Cell.ButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyACyACyAA0H0Vy07CarPlayB004GridE0C4BaseO7ArtworkVGAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGG_AL06SquareK0O4CellVAGVQo_AA08_OverlayS0VyAeAE12onTapGesture5count7performQrSi_yyctFQOyACyAA5ColorVAA01_d5ShapeS0VyAA9RectangleVGG_Qo_GGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVy07CarPlayB08GridViewC4BaseO7ArtworkVGAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type GridView.SquareGrid.Cell.ButtonStyle and conformance GridView.SquareGrid.Cell.ButtonStyle();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyAA5ColorVAA01_l5ShapeD0VyAA9RectangleVGG_Qo_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyACyACyAA0H0VyAA5LabelVyACyAA6HStackVyAA05TupleE0VyACyAA5GroupVyAA012_ConditionalD0VyACyAeAE10fontWeightyQrAA4FontV0O0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyA_5ScaleOGG07CarPlayB004GridE0C4BaseO09Accessorye7HostingE0VGGAA011_ForegroundgU0VyAA017HierarchicalShapeG0VGGSg_ACyAA4TextVA2_ySiSgGGtGGA2_yAVSgGGA11_7ArtworkVGGAA14_OpacityEffectVGAA01_rs9TransformU0VySbGG_A9_0qY0O4CellVAGVQo_AA08_OverlayU0VyAeAE12onTapGesture5count7performQrSi_yyctFQOyACyAA5ColorVAA01_d5ShapeU0VyAA9RectangleVGG_Qo_GGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5LabelVyACyAA6HStackVyAA9TupleViewVyACyAA5GroupVyAA012_ConditionalD0VyACyAA0I0PAAE10fontWeightyQrAA4FontV0M0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAY5ScaleOGG07CarPlayB004GridI0C4BaseO09Accessoryi7HostingI0VGGAA016_ForegroundStyleS0VyAA22HierarchicalShapeStyleVGGSg_ACyAA4TextVA0_ySiSgGGtGGA0_yATSgGGA9_7ArtworkVGGAA14_OpacityEffectVGAA01_pq9TransformS0VySbGGMd);
    type metadata accessor for GridView.ImageGrid.Cell.ButtonStyle(255);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<Label<ModifiedContent<HStack<TupleView<(ModifiedContent<Group<_ConditionalContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, GridView.Base.AccessoryViewHostingView>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, GridView.Base.Artwork>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type GridView.Base.Artwork and conformance GridView.Base.Artwork(&lazy protocol witness table cache variable for type GridView.ImageGrid.Cell.ButtonStyle and conformance GridView.ImageGrid.Cell.ButtonStyle, type metadata accessor for GridView.ImageGrid.Cell.ButtonStyle);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyAA5ColorVAA01_l5ShapeD0VyAA9RectangleVGG_Qo_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GridView.SquareGrid.Cell.ButtonStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for GridView.SquareGrid.Cell.ButtonStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t outlined init with copy of InsettableShape(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
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

uint64_t outlined destroy of RoundedRectangle(uint64_t a1)
{
  v2 = type metadata accessor for RoundedRectangle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<Label<ModifiedContent<HStack<TupleView<(ModifiedContent<Group<_ConditionalContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, GridView.Base.AccessoryViewHostingView>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, GridView.Base.Artwork>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<Label<ModifiedContent<HStack<TupleView<(ModifiedContent<Group<_ConditionalContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, GridView.Base.AccessoryViewHostingView>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, GridView.Base.Artwork>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<Label<ModifiedContent<HStack<TupleView<(ModifiedContent<Group<_ConditionalContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, GridView.Base.AccessoryViewHostingView>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, GridView.Base.Artwork>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5LabelVyACyAA6HStackVyAA9TupleViewVyACyAA5GroupVyAA012_ConditionalD0VyACyAA0I0PAAE10fontWeightyQrAA4FontV0M0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAY5ScaleOGG07CarPlayB004GridI0C4BaseO09Accessoryi7HostingI0VGGAA016_ForegroundStyleS0VyAA22HierarchicalShapeStyleVGGSg_ACyAA4TextVA0_ySiSgGGtGGA0_yATSgGGA9_7ArtworkVGGAA14_OpacityEffectVGAA01_pq9TransformS0VySbGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Button<Label<ModifiedContent<HStack<TupleView<(ModifiedContent<Group<_ConditionalContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, GridView.Base.AccessoryViewHostingView>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, GridView.Base.Artwork>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<Label<ModifiedContent<HStack<TupleView<(ModifiedContent<Group<_ConditionalContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, GridView.Base.AccessoryViewHostingView>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, GridView.Base.Artwork>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<Label<ModifiedContent<HStack<TupleView<(ModifiedContent<Group<_ConditionalContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, GridView.Base.AccessoryViewHostingView>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, GridView.Base.Artwork>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<Label<ModifiedContent<HStack<TupleView<(ModifiedContent<Group<_ConditionalContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, GridView.Base.AccessoryViewHostingView>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, GridView.Base.Artwork>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<Label<ModifiedContent<HStack<TupleView<(ModifiedContent<Group<_ConditionalContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, GridView.Base.AccessoryViewHostingView>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, GridView.Base.Artwork>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyACyAA6HStackVyAA9TupleViewVyACyAA5GroupVyAA012_ConditionalD0VyACyAA0I0PAAE10fontWeightyQrAA4FontV0M0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAY5ScaleOGG07CarPlayB004GridI0C4BaseO09Accessoryi7HostingI0VGGAA016_ForegroundStyleS0VyAA22HierarchicalShapeStyleVGGSg_ACyAA4TextVA0_ySiSgGGtGGA0_yATSgGGA9_7ArtworkVGGAA14_OpacityEffectVGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type Button<Label<ModifiedContent<HStack<TupleView<(ModifiedContent<Group<_ConditionalContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, GridView.Base.AccessoryViewHostingView>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, GridView.Base.Artwork>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA5LabelVyAA15ModifiedContentVyAA6HStackVyAA9TupleViewVyAGyAA5GroupVyAA012_ConditionalF0VyAGyAA0I0PAAE10fontWeightyQrAA4FontV0M0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAY5ScaleOGG07CarPlayB004GridI0C4BaseO09Accessoryi7HostingI0VGGAA016_ForegroundStyleS0VyAA22HierarchicalShapeStyleVGGSg_AGyAA4TextVA0_ySiSgGGtGGA0_yATSgGGA9_7ArtworkVGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<Label<ModifiedContent<HStack<TupleView<(ModifiedContent<Group<_ConditionalContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, GridView.Base.AccessoryViewHostingView>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, GridView.Base.Artwork>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Color, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Color, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Color, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ColorVAA01_D13ShapeModifierVyAA9RectangleVGGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>, &_s7SwiftUI21_ContentShapeModifierVyAA9RectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Color, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyACyACyAA0H0VyAA012_ConditionalD0VyACy07CarPlayB004GridE0C4BaseO7ArtworkVAA16_OverlayModifierVyACyAA6VStackVyAA05TupleE0VyACyACyACyAA5ColorVAA18_AspectRatioLayoutVGAA08_PaddingV0VGAA013_TraitWritingP0VyAA0v8PriorityX3KeyVGG_ACyAA6ZStackVyAXyAA14LinearGradientV_AL15ProgressiveBlurVtGGATyACyACyACyAN4HeroO4CellV6LabelsVAA015_EnvironmentKeyyP0VyAA0S6SchemeOGGAA010_FlexFrameV0VGA3_GGGtGGA32_GGGACyAzTyACyACyACyAVyAXyACyACyACyARA0_GAL014InnerHighlightP0VGA9_G_A33_tGGA32_GA3_GA3_GGGGGA26_yAA4FontVSgGGA26_yAA13TextAlignmentOGG_A22_AGVQo_AA14_OpacityEffectVGAA024_EnvironmentKeyTransformP0VySbGGATyAeAE12onTapGesture5count7performQrSi_yyctFQOyACyAzA01_d5ShapeP0VyAA9RectangleVGG_Qo_GGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyAA5ColorVAA01_l5ShapeD0VyAA9RectangleVGG_Qo_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyACyACyAA0H0VyAA012_ConditionalD0VyACy07CarPlayB004GridE0C4BaseO7ArtworkVAA16_OverlayModifierVyACyAA6VStackVyAA05TupleE0VyACyACyACyAA5ColorVAA18_AspectRatioLayoutVGAA08_PaddingV0VGAA013_TraitWritingP0VyAA0v8PriorityX3KeyVGG_ACyAA6ZStackVyAXyAA14LinearGradientV_AL15ProgressiveBlurVtGGATyACyACyACyAN4HeroO4CellV6LabelsVAA015_EnvironmentKeyyP0VyAA0S6SchemeOGGAA010_FlexFrameV0VGA3_GGGtGGA32_GGGACyAzTyACyACyACyAVyAXyACyACyACyARA0_GAL014InnerHighlightP0VGA9_G_A33_tGGA32_GA3_GA3_GGGGGA26_yAA4FontVSgGGA26_yAA13TextAlignmentOGG_A22_AGVQo_AA14_OpacityEffectVGAA024_EnvironmentKeyTransformP0VySbGGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyACyACyAA0H0VyAA012_ConditionalD0VyACy07CarPlayB004GridE0C4BaseO7ArtworkVAA16_OverlayModifierVyACyAA6VStackVyAA05TupleE0VyACyACyACyAA5ColorVAA18_AspectRatioLayoutVGAA08_PaddingV0VGAA013_TraitWritingP0VyAA0v8PriorityX3KeyVGG_ACyAA6ZStackVyAXyAA14LinearGradientV_AL15ProgressiveBlurVtGGATyACyACyACyAN4HeroO4CellV6LabelsVAA015_EnvironmentKeyyP0VyAA0S6SchemeOGGAA010_FlexFrameV0VGA3_GGGtGGA32_GGGACyAzTyACyACyACyAVyAXyACyACyACyARA0_GAL014InnerHighlightP0VGA9_G_A33_tGGA32_GA3_GA3_GGGGGA26_yAA4FontVSgGGA26_yAA13TextAlignmentOGG_A22_AGVQo_AA14_OpacityEffectVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA012_ConditionalD0VyACy07CarPlayB08GridViewC4BaseO7ArtworkVAA16_OverlayModifierVyACyAA6VStackVyAA05TupleJ0VyACyACyACyAA5ColorVAA18_AspectRatioLayoutVGAA08_PaddingT0VGAA013_TraitWritingN0VyAA0t8PriorityV3KeyVGG_ACyAA6ZStackVyATyAA14LinearGradientV_AH15ProgressiveBlurVtGGAPyACyACyACyAJ4HeroO4CellV6LabelsVAA012_EnvironmentywN0VyAA0Q6SchemeOGGAA010_FlexFrameT0VGA_GGGtGGA28_GGGACyAvPyACyACyACyARyATyACyACyACyAnXGAH014InnerHighlightN0VGA5_G_A29_tGGA28_GA_GA_GGGGGA22_yAA4FontVSgGGA22_yAA13TextAlignmentOGGMd);
    type metadata accessor for GridView.Hero.Cell.ButtonStyle();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<_ConditionalContent<ModifiedContent<GridView.Base.Artwork, _OverlayModifier<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Color, _AspectRatioLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ZStack<TupleView<(LinearGradient, ProgressiveBlur)>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<GridView.Hero.Cell.Labels, _EnvironmentKeyWritingModifier<ColorScheme>>, _FlexFrameLayout>, _PaddingLayout>>>)>>, _FlexFrameLayout>>>, ModifiedContent<Color, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork, _AspectRatioLayout>, InnerHighlightModifier>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<GridView.Hero.Cell.Labels, _EnvironmentKeyWritingModifier<ColorScheme>>, _FlexFrameLayout>)>>, _FlexFrameLayout>, ();
    lazy protocol witness table accessor for type GridView.Base.Artwork and conformance GridView.Base.Artwork(&lazy protocol witness table cache variable for type GridView.Hero.Cell.ButtonStyle and conformance GridView.Hero.Cell.ButtonStyle, type metadata accessor for GridView.Hero.Cell.ButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<_ConditionalContent<ModifiedContent<GridView.Base.Artwork, _OverlayModifier<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Color, _AspectRatioLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ZStack<TupleView<(LinearGradient, ProgressiveBlur)>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<GridView.Hero.Cell.Labels, _EnvironmentKeyWritingModifier<ColorScheme>>, _FlexFrameLayout>, _PaddingLayout>>>)>>, _FlexFrameLayout>>>, ModifiedContent<Color, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork, _AspectRatioLayout>, InnerHighlightModifier>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<GridView.Hero.Cell.Labels, _EnvironmentKeyWritingModifier<ColorScheme>>, _FlexFrameLayout>)>>, _FlexFrameLayout>, ()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<_ConditionalContent<ModifiedContent<GridView.Base.Artwork, _OverlayModifier<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Color, _AspectRatioLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ZStack<TupleView<(LinearGradient, ProgressiveBlur)>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<GridView.Hero.Cell.Labels, _EnvironmentKeyWritingModifier<ColorScheme>>, _FlexFrameLayout>, _PaddingLayout>>>)>>, _FlexFrameLayout>>>, ModifiedContent<Color, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork, _AspectRatioLayout>, InnerHighlightModifier>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<GridView.Hero.Cell.Labels, _EnvironmentKeyWritingModifier<ColorScheme>>, _FlexFrameLayout>)>>, _FlexFrameLay;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<_ConditionalContent<ModifiedContent<GridView.Base.Artwork, _OverlayModifier<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Color, _AspectRatioLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ZStack<TupleView<(LinearGradient, ProgressiveBlur)>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<GridView.Hero.Cell.Labels, _EnvironmentKeyWritingModifier<ColorScheme>>, _FlexFrameLayout>, _PaddingLayout>>>)>>, _FlexFrameLayout>>>, ModifiedContent<Color, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork, _AspectRatioLayout>, InnerHighlightModifier>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<GridView.Hero.Cell.Labels, _EnvironmentKeyWritingModifier<ColorScheme>>, _FlexFrameLayout>)>>, _FlexFrameLay)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA012_ConditionalD0VyACy07CarPlayB08GridViewC4BaseO7ArtworkVAA16_OverlayModifierVyACyAA6VStackVyAA05TupleJ0VyACyACyACyAA5ColorVAA18_AspectRatioLayoutVGAA08_PaddingT0VGAA013_TraitWritingN0VyAA0t8PriorityV3KeyVGG_ACyAA6ZStackVyATyAA14LinearGradientV_AH15ProgressiveBlurVtGGAPyACyACyACyAJ4HeroO4CellV6LabelsVAA012_EnvironmentywN0VyAA0Q6SchemeOGGAA010_FlexFrameT0VGA_GGGtGGA28_GGGACyAvPyACyACyACyARyATyACyACyACyAnXGAH014InnerHighlightN0VGA5_G_A29_tGGA28_GA_GA_GGGGGA22_yAA4FontVSgGGA22_yAA13TextAlignmentOGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Button<_ConditionalContent<ModifiedContent<GridView.Base.Artwork, _OverlayModifier<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Color, _AspectRatioLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ZStack<TupleView<(LinearGradient, ProgressiveBlur)>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<GridView.Hero.Cell.Labels, _EnvironmentKeyWritingModifier<ColorScheme>>, _FlexFrameLayout>, _PaddingLayout>>>)>>, _FlexFrameLayout>>>, ModifiedContent<Color, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork, _AspectRatioLayout>, InnerHighlightModifier>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<GridView.Hero.Cell.Labels, _EnvironmentKeyWritingModifier<ColorScheme>>, _FlexFrameLayout>)>>, _FlexFrameLayout>, _PaddingLayout>,();
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<_ConditionalContent<ModifiedContent<GridView.Base.Artwork, _OverlayModifier<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Color, _AspectRatioLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ZStack<TupleView<(LinearGradient, ProgressiveBlur)>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<GridView.Hero.Cell.Labels, _EnvironmentKeyWritingModifier<ColorScheme>>, _FlexFrameLayout>, _PaddingLayout>>>)>>, _FlexFrameLayout>>>, ModifiedContent<Color, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork, _AspectRatioLayout>, InnerHighlightModifier>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<GridView.Hero.Cell.Labels, _EnvironmentKeyWritingModifier<ColorScheme>>, _FlexFrameLayout>)>>, _FlexFrameLay);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<_ConditionalContent<ModifiedContent<GridView.Base.Artwork, _OverlayModifier<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Color, _AspectRatioLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ZStack<TupleView<(LinearGradient, ProgressiveBlur)>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<GridView.Hero.Cell.Labels, _EnvironmentKeyWritingModifier<ColorScheme>>, _FlexFrameLayout>, _PaddingLayout>>>)>>, _FlexFrameLayout>>>, ModifiedContent<Color, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork, _AspectRatioLayout>, InnerHighlightModifier>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<GridView.Hero.Cell.Labels, _EnvironmentKeyWritingModifier<ColorScheme>>, _FlexFrameLayout>)>>, _FlexFrameLayout>, _PaddingLayout>,()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<_ConditionalContent<ModifiedContent<GridView.Base.Artwork, _OverlayModifier<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Color, _AspectRatioLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ZStack<TupleView<(LinearGradient, ProgressiveBlur)>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<GridView.Hero.Cell.Labels, _EnvironmentKeyWritingModifier<ColorScheme>>, _FlexFrameLayout>, _PaddingLayout>>>)>>, _FlexFrameLayout>>>, ModifiedContent<Color, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork, _AspectRatioLayout>, InnerHighlightModifier>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<GridView.Hero.Cell.Labels, _EnvironmentKeyWritingModifier<ColorScheme>>, _FlexFrameLayout>)>>, _FlexFrameLayout>, _PaddingLa;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<_ConditionalContent<ModifiedContent<GridView.Base.Artwork, _OverlayModifier<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Color, _AspectRatioLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ZStack<TupleView<(LinearGradient, ProgressiveBlur)>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<GridView.Hero.Cell.Labels, _EnvironmentKeyWritingModifier<ColorScheme>>, _FlexFrameLayout>, _PaddingLayout>>>)>>, _FlexFrameLayout>>>, ModifiedContent<Color, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork, _AspectRatioLayout>, InnerHighlightModifier>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<GridView.Hero.Cell.Labels, _EnvironmentKeyWritingModifier<ColorScheme>>, _FlexFrameLayout>)>>, _FlexFrameLayout>, _PaddingLa)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA012_ConditionalD0VyACy07CarPlayB08GridViewC4BaseO7ArtworkVAA16_OverlayModifierVyACyAA6VStackVyAA05TupleJ0VyACyACyACyAA5ColorVAA18_AspectRatioLayoutVGAA08_PaddingT0VGAA013_TraitWritingN0VyAA0t8PriorityV3KeyVGG_ACyAA6ZStackVyATyAA14LinearGradientV_AH15ProgressiveBlurVtGGAPyACyACyACyAJ4HeroO4CellV6LabelsVAA012_EnvironmentywN0VyAA0Q6SchemeOGGAA010_FlexFrameT0VGA_GGGtGGA28_GGGACyAvPyACyACyACyARyATyACyACyACyAnXGAH014InnerHighlightN0VGA5_G_A29_tGGA28_GA_GA_GGGGGA22_yAA4FontVSgGGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type Button<_ConditionalContent<ModifiedContent<GridView.Base.Artwork, _OverlayModifier<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Color, _AspectRatioLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ZStack<TupleView<(LinearGradient, ProgressiveBlur)>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<GridView.Hero.Cell.Labels, _EnvironmentKeyWritingModifier<ColorScheme>>, _FlexFrameLayout>, _PaddingLayout>>>)>>, _FlexFrameLayout>>>, ModifiedContent<Color, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork, _AspectRatioLayout>, InnerHighlightModifier>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<GridView.Hero.Cell.Labels, _EnvironmentKeyWritingModifier<ColorScheme>>, _FlexFrameLayout>)>>, _FlexFrameLayout>, _PaddingLayout>, _PaddingL, &_s7SwiftUI6ButtonVyAA19_ConditionalContentVyAA08ModifiedE0Vy07CarPlayB08GridViewC4BaseO7ArtworkVAA16_OverlayModifierVyAGyAA6VStackVyAA05TupleJ0VyAGyAGyAGyAA5ColorVAA18_AspectRatioLayoutVGAA08_PaddingT0VGAA013_TraitWritingN0VyAA0t8PriorityV3KeyVGG_AGyAA6ZStackVyATyAA14LinearGradientV_AH15ProgressiveBlurVtGGAPyAGyAGyAGyAJ4HeroO4CellV6LabelsVAA012_EnvironmentywN0VyAA0Q6SchemeOGGAA010_FlexFrameT0VGA_GGGtGGA28_GGGAGyAvPyAGyAGyAGyARyATyAGyAGyAGyAnXGAH014InnerHighlightN0VGA5_G_A29_tGGA28_GA_GA_GGGGGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<_ConditionalContent<ModifiedContent<GridView.Base.Artwork, _OverlayModifier<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Color, _AspectRatioLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ZStack<TupleView<(LinearGradient, ProgressiveBlur)>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<GridView.Hero.Cell.Labels, _EnvironmentKeyWritingModifier<ColorScheme>>, _FlexFrameLayout>, _PaddingLayout>>>)>>, _FlexFrameLayout>>>, ModifiedContent<Color, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork, _AspectRatioLayout>, InnerHighlightModifier>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<GridView.Hero.Cell.Labels, _EnvironmentKeyWritingModifier<ColorScheme>>, _FlexFrameLayout>)>>, _FlexFrameLayout>, _PaddingLa);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0Vy07CarPlayB004GridE0C9CondensedO4CellV0D0VG_ApGVQo_AA32_EnvironmentKeyTransformModifierVySbGGAA08_OverlayQ0VyAeAE12onTapGesture5count7performQrSi_yyctFQOyACyAA5ColorVAA01_d5ShapeQ0VyAA9RectangleVGG_Qo_GGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyAA5ColorVAA01_l5ShapeD0VyAA9RectangleVGG_Qo_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0Vy07CarPlayB004GridE0C9CondensedO4CellV0D0VG_ApGVQo_AA32_EnvironmentKeyTransformModifierVySbGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVy07CarPlayB08GridViewC9CondensedO4CellV7ContentVGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type Button<GridView.Condensed.Cell.Content> and conformance Button<A>, &_s7SwiftUI6ButtonVy07CarPlayB08GridViewC9CondensedO4CellV7ContentVGMd);
    lazy protocol witness table accessor for type GridView.Condensed.Cell.ButtonStyle and conformance GridView.Condensed.Cell.ButtonStyle();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6VStackVyAA05TupleE0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA23_GeometryActionModifierVy12CoreGraphics7CGFloatVGG_ACyACyACyACyACyACyACyACyAA5LabelVyAA4TextVAOGAA011_ForegroundgR0VyAA5ColorVGGAA022_EnvironmentKeyWritingR0VyAA4FontVSgGGA10_yAWGGA10_ySiSgGGAA08_PaddingO0VGAA06_FrameO0VGAA011_BackgroundgR0VyAA8MaterialVGGA10_yAA0Y6SchemeOGGSgtGGG_AA05PlainiG0VQo_AA01_z12KeyTransformR0VySbGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA6VStackVyAA9TupleViewVyAA15ModifiedContentVyAIyAA5ImageVAA18_AspectRatioLayoutVGAA23_GeometryActionModifierVy12CoreGraphics7CGFloatVGG_AIyAIyAIyAIyAIyAIyAIyAIyAA5LabelVyAA4TextVAKGAA016_ForegroundStyleO0VyAA5ColorVGGAA022_EnvironmentKeyWritingO0VyAA4FontVSgGGA6_yASGGA6_ySiSgGGAA08_PaddingL0VGAA06_FrameL0VGAA011_BackgroundvO0VyAA8MaterialVGGA6_yAA0W6SchemeOGGSgtGGGMd);
    type metadata accessor for PlainButtonStyle();
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type Button<VStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _GeometryActionModifier<CGFloat>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, Image>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, _PaddingLayout>, _FrameLayout>, _BackgroundStyleModifier<Material>>, _EnvironmentKeyWritingModifier<ColorScheme>>?)>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA6VStackVyAA9TupleViewVyAA15ModifiedContentVyAIyAA5ImageVAA18_AspectRatioLayoutVGAA23_GeometryActionModifierVy12CoreGraphics7CGFloatVGG_AIyAIyAIyAIyAIyAIyAIyAIyAA5LabelVyAA4TextVAKGAA016_ForegroundStyleO0VyAA5ColorVGGAA022_EnvironmentKeyWritingO0VyAA4FontVSgGGA6_yASGGA6_ySiSgGGAA08_PaddingL0VGAA06_FrameL0VGAA011_BackgroundvO0VyAA8MaterialVGGA6_yAA0W6SchemeOGGSgtGGGMd);
    lazy protocol witness table accessor for type VideoArtworkSnapshot and conformance VideoArtworkSnapshot(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GridView.Condensed.Cell.ButtonStyle and conformance GridView.Condensed.Cell.ButtonStyle()
{
  result = lazy protocol witness table cache variable for type GridView.Condensed.Cell.ButtonStyle and conformance GridView.Condensed.Cell.ButtonStyle;
  if (!lazy protocol witness table cache variable for type GridView.Condensed.Cell.ButtonStyle and conformance GridView.Condensed.Cell.ButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GridView.Condensed.Cell.ButtonStyle and conformance GridView.Condensed.Cell.ButtonStyle);
  }

  return result;
}

uint64_t outlined init with copy of RoundedRectangle(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _AspectRatioLayout>, _ClipEffect<RoundedRectangle>>, _OpacityEffect>, _BackgroundModifier<_ShadowView<AnyInsettableShape>>>, FocusRingModifier>, _ScaleEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _AspectRatioLayout>, _ClipEffect<RoundedRectangle>>, _OpacityEffect>, _BackgroundModifier<_ShadowView<AnyInsettableShape>>>, FocusRingModifier>, _ScaleEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _AspectRatioLayout>, _ClipEffect<RoundedRectangle>>, _OpacityEffect>, _BackgroundModifier<_ShadowView<AnyInsettableShape>>>, FocusRingModifier>, _ScaleEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA18_AspectRatioLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_OpacityM0VGAA19_BackgroundModifierVyAA11_ShadowViewVy07CarPlayB018AnyInsettableShapeVGGGAX09FocusRingR033_C2414E8B1C72748AF3156B15159BFF28LLVGAA06_ScaleM0VGAA010_AnimationR0VySbGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _AspectRatioLayout>, _ClipEffect<RoundedRectangle>>, _OpacityEffect>, _BackgroundModifier<_ShadowView<AnyInsettableShape>>>, FocusRingModifier>, _ScaleEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _AspectRatioLayout>, _ClipEffect<RoundedRectangle>>, _OpacityEffect>, _BackgroundModifier<_ShadowView<AnyInsettableShape>>>, FocusRingModifier>, _ScaleEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _AspectRatioLayout>, _ClipEffect<RoundedRectangle>>, _OpacityEffect>, _BackgroundModifier<_ShadowView<AnyInsettableShape>>>, FocusRingModifier>, _ScaleEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _AspectRatioLayout>, _ClipEffect<RoundedRectangle>>, _OpacityEffect>, _BackgroundModifier<_ShadowView<AnyInsettableShape>>>, FocusRingModifier>, _ScaleEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _AspectRatioLayout>, _ClipEffect<RoundedRectangle>>, _OpacityEffect>, _BackgroundModifier<_ShadowView<AnyInsettableShape>>>, FocusRingModifier>, _ScaleEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA18_AspectRatioLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_OpacityM0VGAA19_BackgroundModifierVyAA11_ShadowViewVy07CarPlayB018AnyInsettableShapeVGGGAX09FocusRingR033_C2414E8B1C72748AF3156B15159BFF28LLVGAA06_ScaleM0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _AspectRatioLayout>, _ClipEffect<RoundedRectangle>>, _OpacityEffect>, _BackgroundModifier<_ShadowView<AnyInsettableShape>>>, FocusRingModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _AspectRatioLayout>, _ClipEffect<RoundedRectangle>>, _OpacityEffect>, _BackgroundModifier<_ShadowView<AnyInsettableShape>>>, FocusRingModifier>, _ScaleEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _AspectRatioLayout>, _ClipEffect<RoundedRectangle>>, _OpacityEffect>, _BackgroundModifier<_ShadowView<AnyInsettableShape>>>, FocusRingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _AspectRatioLayout>, _ClipEffect<RoundedRectangle>>, _OpacityEffect>, _BackgroundModifier<_ShadowView<AnyInsettableShape>>>, FocusRingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _AspectRatioLayout>, _ClipEffect<RoundedRectangle>>, _OpacityEffect>, _BackgroundModifier<_ShadowView<AnyInsettableShape>>>, FocusRingModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA18_AspectRatioLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_OpacityM0VGAA19_BackgroundModifierVyAA11_ShadowViewVy07CarPlayB018AnyInsettableShapeVGGGAX09FocusRingR033_C2414E8B1C72748AF3156B15159BFF28LLVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _AspectRatioLayout>, _ClipEffect<RoundedRectangle>>, _OpacityEffect>, _BackgroundModifier<_ShadowView<AnyInsettableShape>>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type FocusRingModifier and conformance FocusRingModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _AspectRatioLayout>, _ClipEffect<RoundedRectangle>>, _OpacityEffect>, _BackgroundModifier<_ShadowView<AnyInsettableShape>>>, FocusRingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _AspectRatioLayout>, _ClipEffect<RoundedRectangle>>, _OpacityEffect>, _BackgroundModifier<_ShadowView<AnyInsettableShape>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _AspectRatioLayout>, _ClipEffect<RoundedRectangle>>, _OpacityEffect>, _BackgroundModifier<_ShadowView<AnyInsettableShape>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _AspectRatioLayout>, _ClipEffect<RoundedRectangle>>, _OpacityEffect>, _BackgroundModifier<_ShadowView<AnyInsettableShape>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA18_AspectRatioLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_OpacityM0VGAA19_BackgroundModifierVyAA11_ShadowViewVy07CarPlayB018AnyInsettableShapeVGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _AspectRatioLayout>, _ClipEffect<RoundedRectangle>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _BackgroundModifier<_ShadowView<AnyInsettableShape>> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA11_ShadowViewVy07CarPlayB018AnyInsettableShapeVGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _AspectRatioLayout>, _ClipEffect<RoundedRectangle>>, _OpacityEffect>, _BackgroundModifier<_ShadowView<AnyInsettableShape>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _AspectRatioLayout>, _ClipEffect<RoundedRectangle>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _AspectRatioLayout>, _ClipEffect<RoundedRectangle>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _AspectRatioLayout>, _ClipEffect<RoundedRectangle>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA24ButtonStyleConfigurationV5LabelVAA18_AspectRatioLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA08_OpacityM0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _AspectRatioLayout>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _AspectRatioLayout>, _ClipEffect<RoundedRectangle>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _AspectRatioLayout>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _AspectRatioLayout>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _AspectRatioLayout>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA24ButtonStyleConfigurationV5LabelVAA18_AspectRatioLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ClipEffect<RoundedRectangle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _AspectRatioLayout>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA18_AspectRatioLayoutVGMd);
    lazy protocol witness table accessor for type GridView.Base.Artwork and conformance GridView.Base.Artwork(&lazy protocol witness table cache variable for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label, MEMORY[0x277CDE278]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type GridView.Base.Artwork and conformance GridView.Base.Artwork(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type FocusRingModifier and conformance FocusRingModifier()
{
  result = lazy protocol witness table cache variable for type FocusRingModifier and conformance FocusRingModifier;
  if (!lazy protocol witness table cache variable for type FocusRingModifier and conformance FocusRingModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FocusRingModifier and conformance FocusRingModifier);
  }

  return result;
}

__n128 static GridView.Layout<>.pins.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *MEMORY[0x277D768C8];
  v2 = *(MEMORY[0x277D768C8] + 16);
  *a1 = *MEMORY[0x277D768C8];
  *(a1 + 16) = v2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  return result;
}

__n128 static GridView.Layout<>.condensed(maximumNumberOfLinesOverride:maximumNumberOfColumns:prefersFillingRows:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  result = *MEMORY[0x277D768C8];
  v7 = *(MEMORY[0x277D768C8] + 16);
  *a6 = *MEMORY[0x277D768C8];
  *(a6 + 16) = v7;
  *(a6 + 32) = a1;
  *(a6 + 40) = a2 & 1;
  *(a6 + 48) = a3;
  *(a6 + 56) = a4 & 1;
  *(a6 + 57) = a5;
  return result;
}

Swift::UInt __swiftcall GridView.Condensed.Layout.maximumNumberOfLines(for:)(CGSize a1)
{
  if (*(v1 + 40))
  {
    return 0;
  }

  else
  {
    return *(v1 + 32);
  }
}

Swift::UInt __swiftcall GridView.Condensed.Layout.numberOfViewsPerLine(for:itemsCount:traitCollection:)(CGSize a1, Swift::UInt itemsCount, UITraitCollection traitCollection)
{
  v5 = *(v3 + 48);
  v6 = *(v3 + 56);
  v7 = *(v3 + 57);
  lazy protocol witness table accessor for type CPUIIsPortraitTrait and conformance CPUIIsPortraitTrait();
  v8 = UITraitCollection.subscript.getter();
  lazy protocol witness table accessor for type CPUIHorizontalSizeClassTrait and conformance CPUIHorizontalSizeClassTrait();
  UITraitCollection.subscript.getter();
  if ((v8 & 1) != 0 || (v13 & 1) == 0)
  {
    v9 = 1;
    if (itemsCount > 1)
    {
      v9 = 2;
    }
  }

  else if (itemsCount < 2)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
    if (itemsCount != 2 && itemsCount != 4)
    {
      if (itemsCount == 3 * (itemsCount / 3))
      {
        v10 = 0;
      }

      else
      {
        v10 = v7;
      }

      if (v10 == 1)
      {
        v9 = itemsCount & 1 | 2;
      }

      else
      {
        v9 = 3;
      }
    }
  }

  if (v9 >= v5)
  {
    v11 = v5;
  }

  else
  {
    v11 = v9;
  }

  if (v6)
  {
    return v9;
  }

  else
  {
    return v11;
  }
}

unint64_t GridView.Condensed.Layout.GridType.maxItemsPerRow(itemCount:prefersFillingRow:maximumNumberOfColumns:)(unint64_t a1, char a2, unint64_t a3, char a4, char a5)
{
  if (a5 == 1)
  {
    if (a1 < 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
      if (a1 != 2 && a1 != 4)
      {
        v5 = 3;
        if (a2)
        {
          if (a1 % 3)
          {
            v5 = a1 & 1 | 2;
          }
        }
      }
    }
  }

  else
  {
    v5 = 1;
    if (a1 > 1)
    {
      v5 = 2;
    }
  }

  if (v5 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = v5;
  }

  if (a4)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

CGSize __swiftcall GridView.Condensed.Layout.sizeForViews(for:itemsCount:traitCollection:)(CGSize a1, Swift::UInt itemsCount, UITraitCollection traitCollection)
{
  v4 = v3;
  width = a1.width;
  v8 = *(v4 + 48);
  v9 = *(v4 + 56);
  v10 = *(v4 + 57);
  lazy protocol witness table accessor for type CPUIIsPortraitTrait and conformance CPUIIsPortraitTrait();
  v11 = UITraitCollection.subscript.getter();
  lazy protocol witness table accessor for type CPUIHorizontalSizeClassTrait and conformance CPUIHorizontalSizeClassTrait();
  UITraitCollection.subscript.getter();
  if ((v11 & 1) != 0 || (v41 & 1) == 0)
  {
    if (itemsCount <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }
  }

  else if (itemsCount < 2)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
    if (itemsCount != 2 && itemsCount != 4)
    {
      if (itemsCount == 3 * (itemsCount / 3))
      {
        v13 = 0;
      }

      else
      {
        v13 = v10;
      }

      if (v13 == 1)
      {
        v12 = itemsCount & 1 | 2;
      }

      else
      {
        v12 = 3;
      }
    }
  }

  v14 = [(objc_class *)traitCollection.super.isa preferredContentSizeCategory];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {
    goto LABEL_23;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
LABEL_20:

LABEL_24:
    v25 = 0x4045000000000000;
LABEL_25:
    v26 = *&v25;
    goto LABEL_26;
  }

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
  {
LABEL_23:

    goto LABEL_24;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {
    goto LABEL_20;
  }

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;
  if (v30 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v32 == v33)
  {

LABEL_39:
    v25 = 0x4047000000000000;
    goto LABEL_25;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v34)
  {

    goto LABEL_39;
  }

  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;
  if (v35 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v37 == v38)
  {

    v25 = 0x4049000000000000;
    goto LABEL_25;
  }

  v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v26 = 50.0;
  if ((v39 & 1) == 0)
  {
    v26 = 42.0;
  }

LABEL_26:
  if (v12 >= v8)
  {
    v27 = v8;
  }

  else
  {
    v27 = v12;
  }

  if (v9)
  {
    v27 = v12;
  }

  v28 = (width + (v27 + -1.0) * -8.0) / v27;
  result.height = v26;
  result.width = v28;
  return result;
}

CGSize __swiftcall GridView.Condensed.Layout.sizeThatFits(_:itemsCount:traitCollection:)(CGSize _, Swift::UInt itemsCount, UITraitCollection traitCollection)
{
  width = _.width;
  v6 = *(v3 + 4);
  v7 = *(v3 + 40);
  v8 = *(v3 + 6);
  v9 = *(v3 + 56);
  v10 = *(v3 + 57);
  v21 = *v3;
  v22 = v3[1];
  v23 = *v3;
  height = GridView.Condensed.Layout.sizeForViews(for:itemsCount:traitCollection:)(__PAIR128__(*v3, *&_), itemsCount, traitCollection).height;
  lazy protocol witness table accessor for type CPUIIsPortraitTrait and conformance CPUIIsPortraitTrait();
  v12 = UITraitCollection.subscript.getter();
  lazy protocol witness table accessor for type CPUIHorizontalSizeClassTrait and conformance CPUIHorizontalSizeClassTrait();
  UITraitCollection.subscript.getter();
  if ((v12 & 1) != 0 || (v23 & 1) == 0)
  {
    v14 = 1;
    if (itemsCount > 1)
    {
      v14 = 2;
    }
  }

  else if (itemsCount < 2)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
    if (itemsCount != 2 && itemsCount != 4)
    {
      v14 = 3;
      if (v10)
      {
        if (itemsCount % 3)
        {
          v14 = itemsCount & 1 | 2;
        }
      }
    }
  }

  if (v14 >= v8)
  {
    v15 = v8;
  }

  else
  {
    v15 = v14;
  }

  if ((v9 & 1) == 0)
  {
    v14 = v15;
  }

  if ((v7 & 1) == 0)
  {
    if (!v14)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (v14)
  {
    v6 = 0;
LABEL_23:
    v16 = ceil(itemsCount / v14);
    v13 = 1.0;
    if (v16 >= 1.0)
    {
      v13 = INFINITY;
      if (v16 == INFINITY)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v13 = -1.0;
      if (v16 <= -1.0)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v13 = 1.84467441e19;
      if (v16 >= 1.84467441e19)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

LABEL_28:
      v17 = v16;
      if (v6 >= v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = v6;
      }

      if (v6)
      {
        v17 = v18;
      }

      if (v17)
      {
        goto LABEL_34;
      }

      __break(1u);
      goto LABEL_37;
    }

LABEL_24:
    v16 = 1.0;
    goto LABEL_28;
  }

  v17 = 1;
LABEL_34:
  v19 = *&v21 + height * v17;
  lazy protocol witness table accessor for type Double and conformance Double();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  lazy protocol witness table accessor for type UInt64 and conformance UInt64();
  static BinaryFloatingPoint<>._convert<A>(from:)();
  v13 = *&v22 + v19 + *&v23 * 8.0;
  v16 = width;
LABEL_40:
  result.height = v13;
  result.width = v16;
  return result;
}

uint64_t protocol witness for GridView.Layout.maximumNumberOfLines(for:) in conformance GridView.Condensed.Layout()
{
  if (*(v0 + 40))
  {
    return 0;
  }

  else
  {
    return *(v0 + 32);
  }
}

unint64_t protocol witness for GridView.Layout.numberOfViewsPerLine(for:itemsCount:traitCollection:) in conformance GridView.Condensed.Layout(unint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 57);
  lazy protocol witness table accessor for type CPUIIsPortraitTrait and conformance CPUIIsPortraitTrait();
  v6 = UITraitCollection.subscript.getter();
  lazy protocol witness table accessor for type CPUIHorizontalSizeClassTrait and conformance CPUIHorizontalSizeClassTrait();
  UITraitCollection.subscript.getter();
  if (v6)
  {
    v7 = 2;
  }

  else
  {
    v7 = v9;
  }

  return GridView.Condensed.Layout.GridType.maxItemsPerRow(itemCount:prefersFillingRow:maximumNumberOfColumns:)(a1, v5, v3, v4, v7);
}

unint64_t lazy protocol witness table accessor for type Double and conformance Double()
{
  result = lazy protocol witness table cache variable for type Double and conformance Double;
  if (!lazy protocol witness table cache variable for type Double and conformance Double)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Double and conformance Double);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UInt and conformance UInt()
{
  result = lazy protocol witness table cache variable for type UInt and conformance UInt;
  if (!lazy protocol witness table cache variable for type UInt and conformance UInt)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt and conformance UInt);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UInt64 and conformance UInt64()
{
  result = lazy protocol witness table cache variable for type UInt64 and conformance UInt64;
  if (!lazy protocol witness table cache variable for type UInt64 and conformance UInt64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt64 and conformance UInt64);
  }

  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GridView.Condensed.Layout(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 58))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 57);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for GridView.Condensed.Layout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 57) = a2 + 1;
    }
  }

  return result;
}

uint64_t GridView.Condensed.Cell.body.getter@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVy07CarPlayB08GridViewC9CondensedO4CellV7ContentVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0Vy07CarPlayB004GridE0C9CondensedO4CellV0D0VG_ApGVQo_AA32_EnvironmentKeyTransformModifierVySbGGMd);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v16 - v8;
  v10 = *v1;
  type metadata accessor for GridView.Condensed.Cell.Content(0);
  lazy protocol witness table accessor for type GridView.Condensed.Cell.Content and conformance GridView.Condensed.Cell.Content(&lazy protocol witness table cache variable for type GridView.Condensed.Cell.Content and conformance GridView.Condensed.Cell.Content, type metadata accessor for GridView.Condensed.Cell.Content);

  Button.init(action:label:)();
  KeyPath = swift_getKeyPath();
  v18 = 0;
  lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type Button<GridView.Condensed.Cell.Content> and conformance Button<A>, &_s7SwiftUI6ButtonVy07CarPlayB08GridViewC9CondensedO4CellV7ContentVGMd);
  lazy protocol witness table accessor for type GridView.Condensed.Cell.ButtonStyle and conformance GridView.Condensed.Cell.ButtonStyle();
  View.buttonStyle<A>(_:)();

  (*(v3 + 8))(v5, v2);
  swift_getKeyPath();
  KeyPath = v10;
  lazy protocol witness table accessor for type GridView.Condensed.Cell.Content and conformance GridView.Condensed.Cell.Content(&lazy protocol witness table cache variable for type GridView.Base.ViewModel and conformance GridView.Base.ViewModel, type metadata accessor for GridView.Base.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__allowsTouches;
  LOBYTE(v5) = *(v10 + OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__allowsTouches);
  v12 = swift_getKeyPath();
  v13 = swift_allocObject();
  *(v13 + 16) = (v5 & 1) == 0;
  v14 = &v9[*(v7 + 44)];
  *v14 = v12;
  v14[1] = _s7SwiftUI4ViewPAAE8disabledyQrSbFySbzcfU_TA_0;
  v14[2] = v13;
  swift_getKeyPath();
  KeyPath = v10;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  specialized View.absorbTap(_:)((*(v10 + v11) & 1) == 0);
  return outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v9, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0Vy07CarPlayB004GridE0C9CondensedO4CellV0D0VG_ApGVQo_AA32_EnvironmentKeyTransformModifierVySbGGMd);
}

uint64_t closure #1 in GridView.Condensed.Cell.body.getter(uint64_t a1)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type GridView.Condensed.Cell.Content and conformance GridView.Condensed.Cell.Content(&lazy protocol witness table cache variable for type GridView.Base.ViewModel and conformance GridView.Base.ViewModel, type metadata accessor for GridView.Base.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(a1 + OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__action);

  v2(v3);
}

uint64_t closure #2 in GridView.Condensed.Cell.body.getter@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type GridView.Condensed.Cell.Content and conformance GridView.Condensed.Cell.Content(&lazy protocol witness table cache variable for type GridView.Base.ViewModel and conformance GridView.Base.ViewModel, type metadata accessor for GridView.Base.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = a1[5];
  v17 = a1[4];
  swift_getKeyPath();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = a1[7];
  v16 = a1[6];
  swift_getKeyPath();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__accessory;
  swift_beginAccess();
  v7 = type metadata accessor for GridView.Condensed.Cell.Content(0);
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(a1 + v6, &a2[v7[6]], &_s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSgMd);
  v8 = v7[7];
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__imageConfiguration;
  swift_beginAccess();
  outlined init with copy of GridView.Condensed.Cell.Specs.Image.Shape(a1 + v9, &a2[v8], type metadata accessor for GridView.Base.ViewModel.ImageConfiguration);
  v10 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration(0);
  (*(*(v10 - 8) + 56))(&a2[v8], 0, 1, v10);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v8) = *(a1 + OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__allowsTouches);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(a1 + OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__disabledAppearance);
  *a2 = v17;
  *(a2 + 1) = v4;
  *(a2 + 2) = v16;
  *(a2 + 3) = v5;
  a2[v7[8]] = v8;
  a2[v7[9]] = v11;
  v12 = v7[10];
  *&a2[v12] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd);
  swift_storeEnumTagMultiPayload();
  v13 = &a2[v7[11]];
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  v14 = &a2[v7[12]];
  result = swift_getKeyPath();
  *v14 = result;
  v14[8] = 0;
  return result;
}

uint64_t GridView.Condensed.Cell.Content.body.getter@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA5GroupVyAA19_ConditionalContentVyAIyAA08ModifiedH0VyAKyAKyAKy07CarPlayB004GridE0C4BaseO7ArtworkV11SystemImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleT0VyAA5ColorVGGAA12_FrameLayoutVGAA08_PaddingZ0VGAKyAKyARA7_GA10_GGAKyAKyAKyAKyArA012_AspectRatioZ0VGAL014InnerHighlightT0VGAA13_ShadowEffectVGA10_GGSgG_AKyAKyAKyAKyAKyAA6VStackVyAEyAKyAKyAKyAA4TextVAVySiSgGGAZGA4_G_AEyAKyAA27_TextBaselineRelativeSpacerVA7_G_A36_tGSgtGGAA14_OpacityEffectVGAA01_qr9TransformT0VySbGGAA05_FlexyZ0VGA10_GAA06_TraitsT0VyAA0z13PriorityTraitR0VGGAKyAA6ZStackVyAIyAKyAKyAKyAA0E0PAAE10fontWeightyQrAX6WeightVSgFQOyAKyAA0P0VAZG_Qo_A4_GAVyA70_5ScaleOGGA7_GAP09Accessorye7HostingE0VGGA56_yAA015TransitionTraitR0VGGSgtGGMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v47 - v3;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA5GroupVyAA012_ConditionalD0VyAKyACyACyACyACy07CarPlayB004GridG0C4BaseO7ArtworkV11SystemImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleT0VyAA5ColorVGGAA12_FrameLayoutVGAA08_PaddingZ0VGACyACyARA7_GA10_GGACyACyACyACyArA012_AspectRatioZ0VGAL014InnerHighlightT0VGAA13_ShadowEffectVGA10_GGSgG_ACyACyACyACyACyAA6VStackVyAGyACyACyACyAA4TextVAVySiSgGGAZGA4_G_AGyACyAA27_TextBaselineRelativeSpacerVA7_G_A36_tGSgtGGAA14_OpacityEffectVGAA01_qr9TransformT0VySbGGAA05_FlexyZ0VGA10_GAA06_TraitsT0VyAA0z13PriorityTraitR0VGGACyAA6ZStackVyAKyACyACyACyAA0G0PAAE10fontWeightyQrAX6WeightVSgFQOyACyAA0P0VAZG_Qo_A4_GAVyA70_5ScaleOGGA7_GAP09Accessoryg7HostingG0VGGA56_yAA015TransitionTraitR0VGGSgtGGA52_GMd);
  MEMORY[0x28223BE20](v55);
  v56 = &v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI18RoundedCornerStyleOSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v48 = &v47 - v7;
  v53 = type metadata accessor for GridView.Condensed.Cell.Specs.Image.Shape(0);
  v8 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v50 = (&v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Shape(0);
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV5ShapeOSgMd);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationVSgMd);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v47 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC9CondensedO4CellV5SpecsO5ImageO5ShapeOSgMd);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v47 - v24;
  v26 = *(type metadata accessor for GridView.Condensed.Cell.Content(0) + 28);
  v54 = v1;
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v1 + v26, v19, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationVSgMd);
  v27 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration(0);
  if ((*(*(v27 - 8) + 48))(v19, 1, v27) == 1)
  {
    outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v19, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationVSgMd);
    v28 = 1;
  }

  else
  {
    outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(&v19[*(v27 + 20)], v16, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV5ShapeOSgMd);
    outlined destroy of GridView.Condensed.Cell.Specs.Image.Shape(v19, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration);
    outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v16, v14, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV5ShapeOSgMd);
    v28 = 1;
    if ((*(v51 + 48))(v14, 1, v52) != 1)
    {
      v29 = v49;
      outlined init with take of GridView.Base.ViewModel.ImageConfiguration.Shape(v14, v49, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Shape);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSg6radius_7SwiftUI18RoundedCornerStyleOSg5styletMd);
      v31 = *(v30 - 8);
      if ((*(v31 + 48))(v29, 1, v30) != 1)
      {
        v32 = *v29;
        v33 = *(v29 + 8);
        v34 = v48;
        outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v29 + *(v30 + 48), v48, &_s7SwiftUI18RoundedCornerStyleOSgMd);
        v35 = *(v30 + 48);
        v36 = v50;
        *v50 = v32;
        *(v36 + 8) = v33;
        outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v34, v36 + v35, &_s7SwiftUI18RoundedCornerStyleOSgMd);
        v28 = 0;
      }

      v37 = v50;
      (*(v31 + 56))(v50, v28, 1, v30);
      outlined init with take of GridView.Base.ViewModel.ImageConfiguration.Shape(v37, v25, type metadata accessor for GridView.Condensed.Cell.Specs.Image.Shape);
      v28 = 0;
    }
  }

  v38 = v28;
  v39 = v53;
  (*(v8 + 56))(v25, v38, 1, v53);
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v25, v23, &_s9CarPlayUI8GridViewC9CondensedO4CellV5SpecsO5ImageO5ShapeOSgMd);
  if ((*(v8 + 48))(v23, 1, v39) == 1)
  {
    outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v23, &_s9CarPlayUI8GridViewC9CondensedO4CellV5SpecsO5ImageO5ShapeOSgMd);
    v60 = MEMORY[0x277CE14A8];
    v61 = lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
  }

  else
  {
    GridView.Condensed.Cell.Specs.Image.Shape.insettableShape.getter(v62);
    outlined destroy of GridView.Condensed.Cell.Specs.Image.Shape(v23, type metadata accessor for GridView.Condensed.Cell.Specs.Image.Shape);
    outlined init with take of InsettableShape(v62, v59);
  }

  outlined init with copy of InsettableShape(v59, v58);
  *v4 = static VerticalAlignment.center.getter();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA5GroupVyAA19_ConditionalContentVyAMyAA08ModifiedK0VyAOyAOyAOy07CarPlayB004GridD0C4BaseO7ArtworkV11SystemImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleW0VyAA5ColorVGGAA06_FrameG0VGAA08_PaddingG0VGAOyAOyAVA11_GA14_GGAOyAOyAOyAOyAvA012_AspectRatioG0VGAP014InnerHighlightW0VGAA13_ShadowEffectVGA14_GGSgG_AOyAOyAOyAOyAOyAA6VStackVyAIyAOyAOyAOyAA4TextVAZySiSgGGA2_GA8_G_AIyAOyAA27_TextBaselineRelativeSpacerVA11_G_A40_tGSgtGGAA14_OpacityEffectVGAA01_tu9TransformW0VySbGGAA010_FlexFrameG0VGA14_GAA06_TraitvW0VyAA0g13PriorityTraitU0VGGAOyAA6ZStackVyAMyAOyAOyAOyAA0D0PAAE10fontWeightyQrA0_6WeightVSgFQOyAOyAA0S0VA2_G_Qo_A8_GAZyA74_5ScaleOGGA11_GAT09Accessoryd7HostingD0VGGA60_yAA015TransitionTraitU0VGGSgtGGMd);
  closure #1 in GridView.Condensed.Cell.Content.body.getter(v54, v58, &v4[*(v40 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v25, &_s9CarPlayUI8GridViewC9CondensedO4CellV5SpecsO5ImageO5ShapeOSgMd);
  v41 = v56;
  outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v4, v56, &_s7SwiftUI6HStackVyAA9TupleViewVyAA5GroupVyAA19_ConditionalContentVyAIyAA08ModifiedH0VyAKyAKyAKy07CarPlayB004GridE0C4BaseO7ArtworkV11SystemImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleT0VyAA5ColorVGGAA12_FrameLayoutVGAA08_PaddingZ0VGAKyAKyARA7_GA10_GGAKyAKyAKyAKyArA012_AspectRatioZ0VGAL014InnerHighlightT0VGAA13_ShadowEffectVGA10_GGSgG_AKyAKyAKyAKyAKyAA6VStackVyAEyAKyAKyAKyAA4TextVAVySiSgGGAZGA4_G_AEyAKyAA27_TextBaselineRelativeSpacerVA7_G_A36_tGSgtGGAA14_OpacityEffectVGAA01_qr9TransformT0VySbGGAA05_FlexyZ0VGA10_GAA06_TraitsT0VyAA0z13PriorityTraitR0VGGAKyAA6ZStackVyAIyAKyAKyAKyAA0E0PAAE10fontWeightyQrAX6WeightVSgFQOyAKyAA0P0VAZG_Qo_A4_GAVyA70_5ScaleOGGA7_GAP09Accessorye7HostingE0VGGA56_yAA015TransitionTraitR0VGGSgtGGMd);
  v42 = (v41 + *(v55 + 36));
  v43 = v62[5];
  v42[4] = v62[4];
  v42[5] = v43;
  v42[6] = v62[6];
  v44 = v62[1];
  *v42 = v62[0];
  v42[1] = v44;
  v45 = v62[3];
  v42[2] = v62[2];
  v42[3] = v45;
  outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v41, v57, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA5GroupVyAA012_ConditionalD0VyAKyACyACyACyACy07CarPlayB004GridG0C4BaseO7ArtworkV11SystemImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleT0VyAA5ColorVGGAA12_FrameLayoutVGAA08_PaddingZ0VGACyACyARA7_GA10_GGACyACyACyACyArA012_AspectRatioZ0VGAL014InnerHighlightT0VGAA13_ShadowEffectVGA10_GGSgG_ACyACyACyACyACyAA6VStackVyAGyACyACyACyAA4TextVAVySiSgGGAZGA4_G_AGyACyAA27_TextBaselineRelativeSpacerVA7_G_A36_tGSgtGGAA14_OpacityEffectVGAA01_qr9TransformT0VySbGGAA05_FlexyZ0VGA10_GAA06_TraitsT0VyAA0z13PriorityTraitR0VGGACyAA6ZStackVyAKyACyACyACyAA0G0PAAE10fontWeightyQrAX6WeightVSgFQOyACyAA0P0VAZG_Qo_A4_GAVyA70_5ScaleOGGA7_GAP09Accessoryg7HostingG0VGGA56_yAA015TransitionTraitR0VGGSgtGGA52_GMd);
  __swift_destroy_boxed_opaque_existential_1(v59);
  return outlined destroy of AnyInsettableShape(v58);
}

unint64_t GridView.Condensed.Cell.Specs.Image.Shape.insettableShape.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RoundedCornerStyle();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI18RoundedCornerStyleOSgMd);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  v14 = type metadata accessor for GridView.Condensed.Cell.Specs.Image.Shape(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (&v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of GridView.Condensed.Cell.Specs.Image.Shape(v2, v16, type metadata accessor for GridView.Condensed.Cell.Specs.Image.Shape);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSg6radius_7SwiftUI18RoundedCornerStyleOSg5styletMd);
  if ((*(*(v17 - 8) + 48))(v16, 1, v17) == 1)
  {
    a1[3] = MEMORY[0x277CE1120];
    result = lazy protocol witness table accessor for type Circle and conformance Circle();
    a1[4] = result;
  }

  else
  {
    v19 = *v16;
    v20 = *(v16 + 8);
    outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v16 + *(v17 + 48), v13, &_s7SwiftUI18RoundedCornerStyleOSgMd);
    if (v20)
    {
      v19 = 5.0;
    }

    outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v13, v11, &_s7SwiftUI18RoundedCornerStyleOSgMd);
    v21 = *(v5 + 48);
    if (v21(v11, 1, v4) == 1)
    {
      (*(v5 + 104))(v7, *MEMORY[0x277CE0118], v4);
      if (v21(v11, 1, v4) != 1)
      {
        outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v11, &_s7SwiftUI18RoundedCornerStyleOSgMd);
      }
    }

    else
    {
      (*(v5 + 32))(v7, v11, v4);
    }

    v22 = type metadata accessor for RoundedRectangle();
    a1[3] = v22;
    a1[4] = lazy protocol witness table accessor for type GridView.Condensed.Cell.Content and conformance GridView.Condensed.Cell.Content(&lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle, MEMORY[0x277CDFC08]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    *boxed_opaque_existential_1 = v19;
    boxed_opaque_existential_1[1] = v19;
    (*(v5 + 32))(boxed_opaque_existential_1 + *(v22 + 20), v7, v4);
    return outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v13, &_s7SwiftUI18RoundedCornerStyleOSgMd);
  }

  return result;
}

uint64_t closure #1 in GridView.Condensed.Cell.Content.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA012_ConditionalD0VyACyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0I0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_AA016_ForegroundStyleO0VyAA5ColorVGGASyAQ5ScaleOGGAA12_FrameLayoutVG07CarPlayB004GridG0C4BaseO09Accessoryg7HostingG0VGGAA06_TraitnO0VyAA015TransitionTraitM0VGGMd);
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = (&v50 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v50 - v9;
  v52 = type metadata accessor for GridView.Base.ViewModel.Accessory(0);
  v11 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA012_ConditionalD0VyACyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0I0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_AA016_ForegroundStyleO0VyAA5ColorVGGASyAQ5ScaleOGGAA12_FrameLayoutVG07CarPlayB004GridG0C4BaseO09Accessoryg7HostingG0VGGAA06_TraitnO0VyAA015TransitionTraitM0VGGSgMd);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v59 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v64 = &v50 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAGyAGyAGy07CarPlayB08GridViewC4BaseO7ArtworkV11SystemImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleR0VyAA5ColorVGGAA12_FrameLayoutVGAA08_PaddingX0VGAGyAGyANA3_GA6_GGAGyAGyAGyAGyAnA012_AspectRatioX0VGAH014InnerHighlightR0VGAA13_ShadowEffectVGA6_GGSgGMd);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v63 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v62 = &v50 - v20;
  closure #1 in closure #1 in GridView.Condensed.Cell.Content.body.getter(a1, a2, &v50 - v20);
  v60 = static HorizontalAlignment.leading.getter();
  v95 = 1;
  closure #2 in closure #1 in GridView.Condensed.Cell.Content.body.getter(a1, &v66);
  v107 = *&v67[144];
  v108 = *&v67[160];
  v109 = *&v67[176];
  v110 = *&v67[192];
  v103 = *&v67[80];
  v104 = *&v67[96];
  v105 = *&v67[112];
  v106 = *&v67[128];
  v99 = *&v67[16];
  v100 = *&v67[32];
  v101 = *&v67[48];
  v102 = *&v67[64];
  v97 = v66;
  v98 = *v67;
  v111[10] = *&v67[144];
  v111[11] = *&v67[160];
  v111[12] = *&v67[176];
  v111[13] = *&v67[192];
  v111[6] = *&v67[80];
  v111[7] = *&v67[96];
  v111[8] = *&v67[112];
  v111[9] = *&v67[128];
  v111[2] = *&v67[16];
  v111[3] = *&v67[32];
  v111[4] = *&v67[48];
  v111[5] = *&v67[64];
  v111[0] = v66;
  v111[1] = *v67;
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(&v97, v65, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAIyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGG_ACyAEyAA01_G22BaselineRelativeSpacerVAA12_FrameLayoutVG_AWtGSgtGMd);
  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v111, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAIyAA4FontVSgGGAA016_ForegroundStyleK0VyAA5ColorVGG_ACyAEyAA01_G22BaselineRelativeSpacerVAA12_FrameLayoutVG_AWtGSgtGMd);
  *&v94[167] = v107;
  *&v94[183] = v108;
  *&v94[199] = v109;
  *&v94[215] = v110;
  *&v94[103] = v103;
  *&v94[119] = v104;
  *&v94[135] = v105;
  *&v94[151] = v106;
  *&v94[39] = v99;
  *&v94[55] = v100;
  *&v94[71] = v101;
  *&v94[87] = v102;
  *&v94[7] = v97;
  *&v94[23] = v98;
  v56 = v95;
  v21 = type metadata accessor for GridView.Condensed.Cell.Content(0);
  v22 = *(a1 + v21[9]);
  LOBYTE(a2) = *(a1 + v21[8]);
  KeyPath = swift_getKeyPath();
  v54 = swift_allocObject();
  *(v54 + 16) = (a2 & 1) == 0;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v53 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v96 = 0;
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(a1 + v21[6], v10, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSgMd);
  if ((*(v11 + 48))(v10, 1, v52) == 1)
  {
    outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v10, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSgMd);
    (*(v57 + 56))(v64, 1, 1, v58);
  }

  else
  {
    v31 = v51;
    outlined init with take of GridView.Base.ViewModel.ImageConfiguration.Shape(v10, v51, type metadata accessor for GridView.Base.ViewModel.Accessory);
    *v7 = static Alignment.center.getter();
    v7[1] = v32;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA19_ConditionalContentVyAA08ModifiedI0VyAKyAKyAA0D0PAAE10fontWeightyQrAA4FontV0L0VSgFQOyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAPSgGG_Qo_AA016_ForegroundStyleR0VyAA5ColorVGGAWyAU5ScaleOGGAA06_FrameG0VG07CarPlayB004GridD0C4BaseO09Accessoryd7HostingD0VGGMd);
    closure #3 in closure #1 in GridView.Condensed.Cell.Content.body.getter(v31, a1, v7 + *(v33 + 44));
    v34 = static AnyTransition.blur(radius:)();
    v35 = v58;
    *(v7 + *(v58 + 36)) = v34;
    v36 = v64;
    outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v7, v64, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA012_ConditionalD0VyACyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0I0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_AA016_ForegroundStyleO0VyAA5ColorVGGASyAQ5ScaleOGGAA12_FrameLayoutVG07CarPlayB004GridG0C4BaseO09Accessoryg7HostingG0VGGAA06_TraitnO0VyAA015TransitionTraitM0VGGMd);
    (*(v57 + 56))(v36, 0, 1, v35);
    outlined destroy of GridView.Condensed.Cell.Specs.Image.Shape(v31, type metadata accessor for GridView.Base.ViewModel.Accessory);
  }

  if (v22)
  {
    v37 = 0.25;
  }

  else
  {
    v37 = 1.0;
  }

  v38 = v63;
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v62, v63, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAGyAGyAGy07CarPlayB08GridViewC4BaseO7ArtworkV11SystemImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleR0VyAA5ColorVGGAA12_FrameLayoutVGAA08_PaddingX0VGAGyAGyANA3_GA6_GGAGyAGyAGyAGyAnA012_AspectRatioX0VGAH014InnerHighlightR0VGAA13_ShadowEffectVGA6_GGSgGMd);
  v39 = v59;
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v64, v59, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA012_ConditionalD0VyACyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0I0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_AA016_ForegroundStyleO0VyAA5ColorVGGASyAQ5ScaleOGGAA12_FrameLayoutVG07CarPlayB004GridG0C4BaseO09Accessoryg7HostingG0VGGAA06_TraitnO0VyAA015TransitionTraitM0VGGSgMd);
  v40 = v38;
  v41 = v61;
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v40, v61, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAGyAGyAGy07CarPlayB08GridViewC4BaseO7ArtworkV11SystemImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleR0VyAA5ColorVGGAA12_FrameLayoutVGAA08_PaddingX0VGAGyAGyANA3_GA6_GGAGyAGyAGyAGyAnA012_AspectRatioX0VGAH014InnerHighlightR0VGAA13_ShadowEffectVGA6_GGSgGMd);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAGyAGyAGy07CarPlayB08GridViewC4BaseO7ArtworkV11SystemImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleR0VyAA5ColorVGGAA12_FrameLayoutVGAA08_PaddingX0VGAGyAGyANA3_GA6_GGAGyAGyAGyAGyAnA012_AspectRatioX0VGAH014InnerHighlightR0VGAA13_ShadowEffectVGA6_GGSgG_AGyAGyAGyAGyAGyAA6VStackVyAA05TupleJ0VyAGyAGyAGyAA4TextVARySiSgGGAVGA0_G_A27_yAGyAA27_TextBaselineRelativeSpacerVA3_G_A34_tGSgtGGAA14_OpacityEffectVGAA01_op9TransformR0VySbGGAA05_FlexwX0VGA6_GAA06_TraitqR0VyAA0x13PriorityTraitP0VGGAGyAA6ZStackVyAEyAGyAGyAGyAA0J0PAAE10fontWeightyQrAT6WeightVSgFQOyAGyAA0N0VAVG_Qo_A0_GARyA68_5ScaleOGGA3_GAL09Accessoryj7HostingJ0VGGA54_yAA015TransitionTraitP0VGGSgtMd);
  v43 = *(v42 + 48);
  *(&v65[24] + 1) = *&v94[176];
  *(&v65[26] + 1) = *&v94[192];
  *(&v65[28] + 1) = *&v94[208];
  *(&v65[16] + 1) = *&v94[112];
  *(&v65[18] + 1) = *&v94[128];
  *(&v65[20] + 1) = *&v94[144];
  *(&v65[22] + 1) = *&v94[160];
  *(&v65[8] + 1) = *&v94[48];
  *(&v65[10] + 1) = *&v94[64];
  *(&v65[12] + 1) = *&v94[80];
  *(&v65[14] + 1) = *&v94[96];
  *(&v65[4] + 1) = *&v94[16];
  v44 = v60;
  v65[0] = v60;
  v65[1] = 0;
  v45 = v56;
  LOBYTE(v65[2]) = v56;
  v65[30] = *&v94[223];
  *(&v65[6] + 1) = *&v94[32];
  *(&v65[2] + 1) = *v94;
  *&v65[31] = v37;
  v47 = v54;
  v46 = KeyPath;
  v65[32] = KeyPath;
  v65[33] = closure #1 in View.disabled(_:)partial apply;
  v65[34] = v54;
  *&v65[43] = v91;
  *&v65[45] = v92;
  *&v65[47] = v93;
  *&v65[35] = v87;
  *&v65[37] = v88;
  *&v65[39] = v89;
  *&v65[41] = v90;
  v48 = v53;
  LOBYTE(v65[49]) = v53;
  v65[50] = v24;
  v65[51] = v26;
  v65[52] = v28;
  v65[53] = v30;
  LOBYTE(v65[54]) = 0;
  v65[55] = 0x3FF0000000000000;
  memcpy((v41 + v43), v65, 0x1C0uLL);
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v39, v41 + *(v42 + 64), &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA012_ConditionalD0VyACyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0I0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_AA016_ForegroundStyleO0VyAA5ColorVGGASyAQ5ScaleOGGAA12_FrameLayoutVG07CarPlayB004GridG0C4BaseO09Accessoryg7HostingG0VGGAA06_TraitnO0VyAA015TransitionTraitM0VGGSgMd);
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v65, &v66, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAKyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGG_AGyACyAA01_H22BaselineRelativeSpacerVAA12_FrameLayoutVG_AYtGSgtGGAA14_OpacityEffectVGAA01_ij9TransformL0VySbGGAA05_FlextU0VGAA08_PaddingU0VGAA06_TraitkL0VyAA0u13PriorityTraitJ0VGGMd);
  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v64, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA012_ConditionalD0VyACyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0I0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_AA016_ForegroundStyleO0VyAA5ColorVGGASyAQ5ScaleOGGAA12_FrameLayoutVG07CarPlayB004GridG0C4BaseO09Accessoryg7HostingG0VGGAA06_TraitnO0VyAA015TransitionTraitM0VGGSgMd);
  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v62, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAGyAGyAGy07CarPlayB08GridViewC4BaseO7ArtworkV11SystemImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleR0VyAA5ColorVGGAA12_FrameLayoutVGAA08_PaddingX0VGAGyAGyANA3_GA6_GGAGyAGyAGyAGyAnA012_AspectRatioX0VGAH014InnerHighlightR0VGAA13_ShadowEffectVGA6_GGSgGMd);
  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v39, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA012_ConditionalD0VyACyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0I0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_AA016_ForegroundStyleO0VyAA5ColorVGGASyAQ5ScaleOGGAA12_FrameLayoutVG07CarPlayB004GridG0C4BaseO09Accessoryg7HostingG0VGGAA06_TraitnO0VyAA015TransitionTraitM0VGGSgMd);
  *&v67[177] = *&v94[176];
  *&v67[193] = *&v94[192];
  *v68 = *&v94[208];
  *&v67[113] = *&v94[112];
  *&v67[129] = *&v94[128];
  *&v67[145] = *&v94[144];
  *&v67[161] = *&v94[160];
  *&v67[49] = *&v94[48];
  *&v67[65] = *&v94[64];
  *&v67[81] = *&v94[80];
  *&v67[97] = *&v94[96];
  *&v67[1] = *v94;
  *&v67[17] = *&v94[16];
  v66 = v44;
  v67[0] = v45;
  *&v68[15] = *&v94[223];
  *&v67[33] = *&v94[32];
  v69 = v37;
  v70 = v46;
  v71 = closure #1 in View.disabled(_:)partial apply;
  v72 = v47;
  v77 = v91;
  v78 = v92;
  v79 = v93;
  v73 = v87;
  v74 = v88;
  v75 = v89;
  v76 = v90;
  v80 = v48;
  v81 = v24;
  v82 = v26;
  v83 = v28;
  v84 = v30;
  v85 = 0;
  v86 = 0x3FF0000000000000;
  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(&v66, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAKyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGG_AGyACyAA01_H22BaselineRelativeSpacerVAA12_FrameLayoutVG_AYtGSgtGGAA14_OpacityEffectVGAA01_ij9TransformL0VySbGGAA05_FlextU0VGAA08_PaddingU0VGAA06_TraitkL0VyAA0u13PriorityTraitJ0VGGMd);
  return outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v63, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAGyAGyAGy07CarPlayB08GridViewC4BaseO7ArtworkV11SystemImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleR0VyAA5ColorVGGAA12_FrameLayoutVGAA08_PaddingX0VGAGyAGyANA3_GA6_GGAGyAGyAGyAGyAnA012_AspectRatioX0VGAH014InnerHighlightR0VGAA13_ShadowEffectVGA6_GGSgGMd);
}

uint64_t closure #1 in closure #1 in GridView.Condensed.Cell.Content.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v142 = a2;
  v158 = a3;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07CarPlayB08GridViewC4BaseO7ArtworkVAA18_AspectRatioLayoutVGAD22InnerHighlightModifierVGAA13_ShadowEffectVGAA08_PaddingM0VGMd);
  MEMORY[0x28223BE20](v155);
  v143 = &v126 - v4;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07CarPlayB08GridViewC4BaseO7ArtworkVAA12_FrameLayoutVGAA08_PaddingL0VGMd);
  MEMORY[0x28223BE20](v147);
  v127 = &v126 - v5;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0VyAGyAGyAGy07CarPlayB08GridViewC4BaseO7ArtworkV11SystemImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleR0VyAA5ColorVGGAA12_FrameLayoutVGAA08_PaddingX0VGAGyAGyANA3_GA6_GGAGyAGyAGyAGyAnA012_AspectRatioX0VGAH014InnerHighlightR0VGAA13_ShadowEffectVGA6_G_GMd);
  MEMORY[0x28223BE20](v152);
  v154 = &v126 - v6;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAGy07CarPlayB08GridViewC4BaseO7ArtworkV11SystemImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleR0VyAA5ColorVGGAA12_FrameLayoutVGAA08_PaddingX0VGAGyAGyANA3_GA6_G_GMd);
  MEMORY[0x28223BE20](v145);
  v146 = &v126 - v7;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEy07CarPlayB08GridViewC4BaseO7ArtworkV11SystemImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleQ0VyAA5ColorVGGAA12_FrameLayoutVGAA08_PaddingW0VGAEyAEyALA1_GA4_GGMd);
  MEMORY[0x28223BE20](v153);
  v148 = &v126 - v8;
  v130 = type metadata accessor for EnvironmentValues();
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v128 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for GridView.Base.Artwork.SystemImage(0);
  MEMORY[0x28223BE20](v132);
  v134 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07CarPlayB08GridViewC4BaseO7ArtworkV11SystemImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
  MEMORY[0x28223BE20](v133);
  v136 = &v126 - v11;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07CarPlayB08GridViewC4BaseO7ArtworkV11SystemImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleP0VyAA5ColorVGGMd);
  MEMORY[0x28223BE20](v135);
  v139 = &v126 - v12;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy07CarPlayB08GridViewC4BaseO7ArtworkV11SystemImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleP0VyAA5ColorVGGAA12_FrameLayoutVGMd);
  MEMORY[0x28223BE20](v137);
  v141 = &v126 - v13;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07CarPlayB08GridViewC4BaseO7ArtworkV11SystemImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleP0VyAA5ColorVGGAA12_FrameLayoutVGAA08_PaddingV0VGMd);
  v14 = MEMORY[0x28223BE20](v144);
  v140 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v138 = &v126 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5ImageV5ScaleOSgMd);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v126 - v22;
  MEMORY[0x28223BE20](v21);
  v149 = &v126 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAEy07CarPlayB08GridViewC4BaseO7ArtworkV11SystemImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleQ0VyAA5ColorVGGAA12_FrameLayoutVGAA08_PaddingW0VGAEyAEyALA1_GA4_GGAEyAEyAEyAEyAlA012_AspectRatioW0VGAF014InnerHighlightQ0VGAA13_ShadowEffectVGA4_GGMd);
  v156 = *(v25 - 8);
  v157 = v25;
  MEMORY[0x28223BE20](v25);
  v151 = &v126 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationVSgMd);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v126 - v28;
  v30 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image(0);
  v31 = MEMORY[0x28223BE20](v30);
  v33 = (&v126 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v126 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v126 - v37;
  v131 = type metadata accessor for GridView.Condensed.Cell.Content(0);
  v39 = *(v131 + 28);
  v150 = a1;
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(a1 + v39, v29, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationVSgMd);
  v40 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration(0);
  if ((*(*(v40 - 8) + 48))(v29, 1, v40) != 1)
  {
    outlined init with copy of GridView.Condensed.Cell.Specs.Image.Shape(v29, v36, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image);
    outlined destroy of GridView.Condensed.Cell.Specs.Image.Shape(v29, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration);
    outlined init with take of GridView.Base.ViewModel.ImageConfiguration.Shape(v36, v38, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image);
    outlined init with copy of GridView.Condensed.Cell.Specs.Image.Shape(v38, v33, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v126 = v38;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v46 = *v33;

        v47 = [v46 isSymbolImage];
        v44 = v156;
        v48 = v151;
        if (v47)
        {
          v49 = v127;
          outlined init with copy of GridView.Condensed.Cell.Specs.Image.Shape(v38, v127, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image);
          static Alignment.center.getter();
          _FrameLayout.init(width:height:alignment:)();
          v50 = (v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07CarPlayB08GridViewC4BaseO7ArtworkVAA12_FrameLayoutVGMd) + 36));
          v51 = v160;
          *v50 = v159;
          v50[1] = v51;
          v50[2] = v161;
          v52 = static Edge.Set.all.getter();
          EdgeInsets.init(_all:)();
          v53 = v49 + *(v147 + 36);
          *v53 = v52;
          *(v53 + 8) = v54;
          *(v53 + 16) = v55;
          *(v53 + 24) = v56;
          *(v53 + 32) = v57;
          *(v53 + 40) = 0;
          outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v49, v146, &_s7SwiftUI15ModifiedContentVyACy07CarPlayB08GridViewC4BaseO7ArtworkVAA12_FrameLayoutVGAA08_PaddingL0VGMd);
          swift_storeEnumTagMultiPayload();
          lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork.SystemImage, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
          lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GridView.Base.Artwork, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
          v58 = v148;
          _ConditionalContent<>.init(storage:)();
          outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v58, v154, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEy07CarPlayB08GridViewC4BaseO7ArtworkV11SystemImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleQ0VyAA5ColorVGGAA12_FrameLayoutVGAA08_PaddingW0VGAEyAEyALA1_GA4_GGMd);
          swift_storeEnumTagMultiPayload();
          lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork.SystemImage, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<GridView.Base.Artwork, _FrameLayout>, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
          lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork, _AspectRatioLayout>, InnerHighlightModifier>, _ShadowEffect>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
          _ConditionalContent<>.init(storage:)();

          outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v58, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEy07CarPlayB08GridViewC4BaseO7ArtworkV11SystemImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleQ0VyAA5ColorVGGAA12_FrameLayoutVGAA08_PaddingW0VGAEyAEyALA1_GA4_GGMd);
          outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v49, &_s7SwiftUI15ModifiedContentVyACy07CarPlayB08GridViewC4BaseO7ArtworkVAA12_FrameLayoutVGAA08_PaddingL0VGMd);
          v42 = v158;
LABEL_17:
          v43 = v157;
LABEL_39:
          outlined destroy of GridView.Condensed.Cell.Specs.Image.Shape(v126, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image);
          outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v48, v42, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAEyAEy07CarPlayB08GridViewC4BaseO7ArtworkV11SystemImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleQ0VyAA5ColorVGGAA12_FrameLayoutVGAA08_PaddingW0VGAEyAEyALA1_GA4_GGAEyAEyAEyAEyAlA012_AspectRatioW0VGAF014InnerHighlightQ0VGAA13_ShadowEffectVGA4_GGMd);
          v41 = 0;
          return (*(v44 + 56))(v42, v41, 1, v43);
        }

        v42 = v158;
      }

      else
      {
        v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSg_9CarPlayUI8GridViewC4BaseO0H5ModelC18ImageConfigurationV0K0O11PlaceholderOSgtMd);
        outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v33 + *(v71 + 48), &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV0H0O11PlaceholderOSgMd);
        outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v33, &_s8MusicKit7ArtworkVSgMd);
        v42 = v158;
        v44 = v156;
        v48 = v151;
      }

      v72 = v38;
      v73 = v143;
      outlined init with copy of GridView.Condensed.Cell.Specs.Image.Shape(v72, v143, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image);
      v74 = GridView.Condensed.Cell.Content.aspectRatio.getter();
      v76 = v75;
      v77 = v73 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07CarPlayB08GridViewC4BaseO7ArtworkVAA18_AspectRatioLayoutVGMd) + 36);
      *v77 = v74;
      *(v77 + 8) = v76 & 1;
      *(v77 + 9) = 1;
      *(&v160 + 1) = &type metadata for AnyInsettableShape;
      *&v161 = lazy protocol witness table accessor for type AnyInsettableShape and conformance AnyInsettableShape();
      *&v159 = swift_allocObject();
      outlined init with copy of AnyInsettableShape(v142, v159 + 16);
      v78 = v73 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07CarPlayB08GridViewC4BaseO7ArtworkVAA18_AspectRatioLayoutVGAD22InnerHighlightModifierVGMd) + 36);
      outlined init with copy of InsettableShape(&v159, v78 + 24);
      *v78 = 0;
      *(v78 + 8) = 0;
      *(v78 + 16) = 1;
      v79 = *(type metadata accessor for InnerHighlightModifier() + 28);
      *(v78 + v79) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
      swift_storeEnumTagMultiPayload();
      __swift_destroy_boxed_opaque_existential_1(&v159);
      if (one-time initialization token for color != -1)
      {
        swift_once();
      }

      v80 = static GridView.Condensed.Cell.Specs.Image.Shadow.color;
      v81 = v73 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy07CarPlayB08GridViewC4BaseO7ArtworkVAA18_AspectRatioLayoutVGAD22InnerHighlightModifierVGAA13_ShadowEffectVGMd) + 36);
      *v81 = v80;
      *(v81 + 8) = xmmword_2431E35B0;
      *(v81 + 24) = 0x4014000000000000;

      LOBYTE(v80) = static Edge.Set.all.getter();
      EdgeInsets.init(_all:)();
      v82 = v154;
      v83 = v73 + *(v155 + 36);
      *v83 = v80;
      *(v83 + 8) = v84;
      *(v83 + 16) = v85;
      *(v83 + 24) = v86;
      *(v83 + 32) = v87;
      *(v83 + 40) = 0;
      outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v73, v82, &_s7SwiftUI15ModifiedContentVyACyACyACy07CarPlayB08GridViewC4BaseO7ArtworkVAA18_AspectRatioLayoutVGAD22InnerHighlightModifierVGAA13_ShadowEffectVGAA08_PaddingM0VGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork.SystemImage, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<GridView.Base.Artwork, _FrameLayout>, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork, _AspectRatioLayout>, InnerHighlightModifier>, _ShadowEffect>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v73, &_s7SwiftUI15ModifiedContentVyACyACyACy07CarPlayB08GridViewC4BaseO7ArtworkVAA18_AspectRatioLayoutVGAD22InnerHighlightModifierVGAA13_ShadowEffectVGAA08_PaddingM0VGMd);
      goto LABEL_17;
    }

    v59 = *v33;
    v60 = v33[1];
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_7SwiftUI5ImageV5ScaleOSgAA4FontV6WeightVSgtMd);
    v62 = v33 + *(v61 + 64);
    v63 = *v62;
    v64 = v62[8];
    v65 = v33 + *(v61 + 48);
    v66 = v149;
    outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v65, v149, &_s7SwiftUI5ImageV5ScaleOSgMd);
    outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v66, v20, &_s7SwiftUI5ImageV5ScaleOSgMd);
    v67 = type metadata accessor for Image.Scale();
    v68 = *(v67 - 8);
    v69 = *(v68 + 48);
    if (v69(v20, 1, v67) == 1)
    {
      if (one-time initialization token for scale != -1)
      {
        swift_once();
      }

      v70 = __swift_project_value_buffer(v67, static GridView.Condensed.Cell.Specs.Image.Symbol.scale);
      (*(v68 + 16))(v23, v70, v67);
      if (v69(v20, 1, v67) != 1)
      {
        outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v20, &_s7SwiftUI5ImageV5ScaleOSgMd);
      }
    }

    else
    {
      (*(v68 + 32))(v23, v20, v67);
    }

    (*(v68 + 56))(v23, 0, 1, v67);
    v44 = v156;
    v48 = v151;
    v88 = v134;
    if (v64)
    {
      if (one-time initialization token for weight != -1)
      {
        swift_once();
      }

      v63 = static GridView.Condensed.Cell.Specs.Image.Symbol.weight;
    }

    *v88 = v59;
    v88[1] = v60;
    v89 = v132;
    outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v23, v88 + *(v132 + 20), &_s7SwiftUI5ImageV5ScaleOSgMd);
    v90 = v88 + *(v89 + 24);
    *v90 = v63;
    v90[8] = 0;
    v91 = *(v89 + 28);
    *(v88 + v91) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA5ImageV5ScaleO_GMd);
    swift_storeEnumTagMultiPayload();
    if (one-time initialization token for font != -1)
    {
      swift_once();
    }

    v92 = static GridView.Condensed.Cell.Specs.Image.Symbol.font;
    KeyPath = swift_getKeyPath();
    v94 = v136;
    outlined init with take of GridView.Base.ViewModel.ImageConfiguration.Shape(v88, v136, type metadata accessor for GridView.Base.Artwork.SystemImage);
    v95 = (v94 + *(v133 + 36));
    *v95 = KeyPath;
    v95[1] = v92;
    v96 = v131;
    v97 = v150;
    v98 = v150 + *(v131 + 44);
    v99 = *v98;
    v100 = *(v98 + 8);

    v43 = v157;
    if (v100 == 1)
    {
      if (v99)
      {
        goto LABEL_35;
      }
    }

    else
    {
      outlined copy of Environment<Bool>.Content(v99, 0);
      static os_log_type_t.fault.getter();
      v101 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v102 = v128;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      outlined consume of Environment<Bool>.Content(v99, 0);
      (*(v129 + 8))(v102, v130);
      if (v159)
      {
        goto LABEL_35;
      }
    }

    v103 = v97 + *(v96 + 48);
    v104 = *v103;
    if (*(v103 + 8) == 1)
    {
      if ((v104 & 1) == 0)
      {
LABEL_31:
        if (one-time initialization token for normal != -1)
        {
          swift_once();
        }

        v105 = &static GridView.Condensed.Cell.Specs.Image.Symbol.Color.normal;
        goto LABEL_38;
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v106 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v107 = v128;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      outlined consume of Environment<Bool>.Content(v104, 0);
      (*(v129 + 8))(v107, v130);
      if (v159 != 1)
      {
        goto LABEL_31;
      }
    }

LABEL_35:
    if (one-time initialization token for highlighted != -1)
    {
      swift_once();
    }

    v105 = &static GridView.Condensed.Cell.Specs.Image.Symbol.Color.highlighted;
LABEL_38:
    v108 = v141;
    v109 = v140;
    v110 = v139;
    v111 = *v105;

    outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v94, v110, &_s7SwiftUI15ModifiedContentVy07CarPlayB08GridViewC4BaseO7ArtworkV11SystemImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
    *(v110 + *(v135 + 36)) = v111;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v110, v108, &_s7SwiftUI15ModifiedContentVyACy07CarPlayB08GridViewC4BaseO7ArtworkV11SystemImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleP0VyAA5ColorVGGMd);
    v112 = (v108 + *(v137 + 36));
    v113 = v160;
    *v112 = v159;
    v112[1] = v113;
    v112[2] = v161;
    LOBYTE(v111) = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v115 = v114;
    v117 = v116;
    v119 = v118;
    v121 = v120;
    outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v108, v109, &_s7SwiftUI15ModifiedContentVyACyACy07CarPlayB08GridViewC4BaseO7ArtworkV11SystemImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleP0VyAA5ColorVGGAA12_FrameLayoutVGMd);
    v122 = v109 + *(v144 + 36);
    *v122 = v111;
    *(v122 + 8) = v115;
    *(v122 + 16) = v117;
    *(v122 + 24) = v119;
    *(v122 + 32) = v121;
    *(v122 + 40) = 0;
    v123 = v138;
    outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v109, v138, &_s7SwiftUI15ModifiedContentVyACyACyACy07CarPlayB08GridViewC4BaseO7ArtworkV11SystemImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleP0VyAA5ColorVGGAA12_FrameLayoutVGAA08_PaddingV0VGMd);
    outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v123, v146, &_s7SwiftUI15ModifiedContentVyACyACyACy07CarPlayB08GridViewC4BaseO7ArtworkV11SystemImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleP0VyAA5ColorVGGAA12_FrameLayoutVGAA08_PaddingV0VGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork.SystemImage, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GridView.Base.Artwork, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    v124 = v148;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v124, v154, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEy07CarPlayB08GridViewC4BaseO7ArtworkV11SystemImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleQ0VyAA5ColorVGGAA12_FrameLayoutVGAA08_PaddingW0VGAEyAEyALA1_GA4_GGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork.SystemImage, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<GridView.Base.Artwork, _FrameLayout>, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork, _AspectRatioLayout>, InnerHighlightModifier>, _ShadowEffect>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v124, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEy07CarPlayB08GridViewC4BaseO7ArtworkV11SystemImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleQ0VyAA5ColorVGGAA12_FrameLayoutVGAA08_PaddingW0VGAEyAEyALA1_GA4_GGMd);
    outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v123, &_s7SwiftUI15ModifiedContentVyACyACyACy07CarPlayB08GridViewC4BaseO7ArtworkV11SystemImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleP0VyAA5ColorVGGAA12_FrameLayoutVGAA08_PaddingV0VGMd);
    outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v149, &_s7SwiftUI5ImageV5ScaleOSgMd);
    v42 = v158;
    goto LABEL_39;
  }

  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v29, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationVSgMd);
  v41 = 1;
  v43 = v157;
  v42 = v158;
  v44 = v156;
  return (*(v44 + 56))(v42, v41, 1, v43);
}

uint64_t GridView.Condensed.Cell.Content.aspectRatio.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationVSgMd);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  v4 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GridView.Condensed.Cell.Content(0);
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v0 + *(v7 + 28), v3, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationVSgMd);
  v8 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration(0);
  if ((*(*(v8 - 8) + 48))(v3, 1, v8) == 1)
  {
    v9 = &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationVSgMd;
    v10 = v3;
LABEL_7:
    outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v10, v9);
    return 0;
  }

  outlined init with copy of GridView.Condensed.Cell.Specs.Image.Shape(v3, v6, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image);
  outlined destroy of GridView.Condensed.Cell.Specs.Image.Shape(v3, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_7SwiftUI5ImageV5ScaleOSgAA4FontV6WeightVSgtMd);
    v9 = &_s7SwiftUI5ImageV5ScaleOSgMd;
    v10 = &v6[*(v12 + 48)];
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 1)
  {
    outlined destroy of GridView.Condensed.Cell.Specs.Image.Shape(v6, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSg_9CarPlayUI8GridViewC4BaseO0H5ModelC18ImageConfigurationV0K0O11PlaceholderOSgtMd);
    outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(&v6[*(v14 + 48)], &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV0H0O11PlaceholderOSgMd);
    outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v6, &_s8MusicKit7ArtworkVSgMd);
  }

  return 0x3FF0000000000000;
}

uint64_t closure #2 in closure #1 in GridView.Condensed.Cell.Content.body.getter@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v94 = type metadata accessor for EnvironmentValues();
  v98 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v97 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DynamicTypeSize();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v85 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v79 = &v75 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v75 - v11;
  v13 = a1[1];
  *&v152 = *a1;
  *(&v152 + 1) = v13;
  v14 = lazy protocol witness table accessor for type String and conformance String();

  v84 = v14;
  v15 = Text.init<A>(_:)();
  v91 = v16;
  v92 = v15;
  LOBYTE(v14) = v17;
  v93 = v18;
  v19 = a1[3];
  v82 = a1[2];
  v100 = v19;
  KeyPath = swift_getKeyPath();
  v20 = type metadata accessor for GridView.Condensed.Cell.Content(0);
  v95 = *(v20 + 40);
  specialized Environment.wrappedValue.getter(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, MEMORY[0x277CDFA28], v12);
  v89 = specialized static GridView.Condensed.Cell.Specs.Labels.Title.font(size:)(v12);
  v80 = v12;
  v81 = v6;
  v21 = *(v6 + 8);
  v96 = v5;
  v86 = v21;
  v87 = v6 + 8;
  v21(v12, v5);
  v101 = swift_getKeyPath();
  v102 = a1;
  v99 = v14 & 1;
  v164 = v14 & 1;
  v162 = 0;
  v88 = v20;
  v22 = a1 + *(v20 + 44);
  v23 = *v22;
  v83 = v22[8];
  if (v83 == 1)
  {
    v24 = v98;
    v25 = v100;
    if (v23)
    {
      goto LABEL_11;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v26 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v27 = v97;
    v24 = v98;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Bool>.Content(v23, 0);
    (*(v24 + 8))(v27, v94);
    v25 = v100;
    if (v152)
    {
      goto LABEL_11;
    }
  }

  v28 = v102 + *(v88 + 48);
  v29 = *v28;
  if (*(v28 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v31 = a2;
    v32 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    a2 = v31;
    v33 = v97;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Bool>.Content(v29, 0);
    v25 = v100;
    (*(v24 + 8))(v33, v94);
    if (v152 != 1)
    {
      goto LABEL_7;
    }

LABEL_11:
    if (one-time initialization token for highlighted != -1)
    {
      swift_once();
    }

    v30 = &static GridView.Condensed.Cell.Specs.Labels.Title.Color.highlighted;
    goto LABEL_14;
  }

  if (v29)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (one-time initialization token for normal != -1)
  {
    swift_once();
  }

  v30 = &static GridView.Condensed.Cell.Specs.Labels.Title.Color.normal;
LABEL_14:
  v100 = *v30;

  if (v25)
  {
    v34 = v23;

    v35 = v79;
    specialized Environment.wrappedValue.getter(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, MEMORY[0x277CDFA28], v79);
    v36 = v81;
    v37 = v85;
    v38 = v96;
    (*(v81 + 32))(v85, v35, v96);
    v39 = (*(v36 + 88))(v37, v38);
    if (v39 != *MEMORY[0x277CDF9D8] && v39 != *MEMORY[0x277CDF9F0] && v39 != *MEMORY[0x277CDFA00] && v39 != *MEMORY[0x277CDFA10])
    {
      v86(v85, v96);
    }

    v40 = v34;
    v85 = a2;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v81 = v165;
    v78 = v169;
    v79 = v167;
    v77 = v170;
    v109 = 1;
    v108 = v166;
    v107 = v168;
    *&v152 = v82;
    *(&v152 + 1) = v25;
    v76 = Text.init<A>(_:)();
    v84 = v41;
    v43 = v42;
    v45 = v44;
    v82 = swift_getKeyPath();
    v46 = v80;
    specialized Environment.wrappedValue.getter(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, MEMORY[0x277CDFA28], v80);
    v95 = specialized static GridView.Condensed.Cell.Specs.Labels.Subtitle.font(size:)(v46);
    v86(v46, v96);
    v47 = swift_getKeyPath();
    v48 = v43 & 1;
    v106 = v43 & 1;
    v104 = 0;
    if (v83)
    {
      v49 = v97;
      if (v40)
      {
LABEL_31:
        if (one-time initialization token for highlighted == -1)
        {
LABEL_32:

          v56 = v109;
          v57 = v108;
          *(&v130 + 1) = *v105;
          DWORD1(v130) = *&v105[3];
          *(&v132 + 1) = *v103;
          DWORD1(v132) = *&v103[3];
          v58 = v107;
          *&v129 = v76;
          *(&v129 + 1) = v84;
          LOBYTE(v130) = v48;
          *(&v130 + 1) = v45;
          *&v131 = v82;
          *(&v133 + 1) = v55;
          *&v134 = v76;
          *(&v131 + 1) = 1;
          LOBYTE(v132) = 0;
          *(&v132 + 1) = v47;
          *&v133 = v95;
          v113 = v132;
          v114 = v133;
          v111 = v130;
          v112 = v131;
          v110 = v129;
          *(&v134 + 1) = v84;
          LOBYTE(v135) = v48;
          DWORD1(v135) = *&v105[3];
          *(&v135 + 1) = *v105;
          *(&v135 + 1) = v45;
          *&v136 = v82;
          v102 = 1;
          *(&v136 + 1) = 1;
          LOBYTE(v137) = 0;
          DWORD1(v137) = *&v103[3];
          *(&v137 + 1) = *v103;
          *(&v137 + 1) = v47;
          *&v138 = v95;
          *(&v138 + 1) = v55;
          outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(&v129, &v152, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGMd);
          outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(&v134, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGMd);
          *&v143 = 0;
          BYTE8(v143) = v56;
          *&v144 = v81;
          BYTE8(v144) = v57;
          *&v145 = v79;
          BYTE8(v145) = v58;
          *&v146 = v78;
          *(&v146 + 1) = v77;
          v149 = v112;
          v150 = v113;
          v151 = v114;
          v147 = v110;
          v148 = v111;
          CPUIArtworkBackgroundView.didChangeState(renderer:)(&v143);
          v158 = v149;
          v159 = v150;
          v160 = v151;
          v154 = v145;
          v155 = v146;
          v156 = v147;
          v157 = v148;
          v152 = v143;
          v153 = v144;
          a2 = v85;
          goto LABEL_33;
        }

LABEL_34:
        swift_once();
        goto LABEL_32;
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v50 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v49 = v97;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      outlined consume of Environment<Bool>.Content(v40, 0);
      (*(v98 + 8))(v49, v94);
      if (v152)
      {
        goto LABEL_31;
      }
    }

    v51 = v102 + *(v88 + 48);
    v52 = *v51;
    if (*(v51 + 8) == 1)
    {
      if (v52)
      {
        goto LABEL_31;
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v53 = v45;
      v54 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v45 = v53;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      outlined consume of Environment<Bool>.Content(v52, 0);
      (*(v98 + 8))(v49, v94);
      if (v152 == 1)
      {
        goto LABEL_31;
      }
    }

    if (one-time initialization token for normal == -1)
    {
      goto LABEL_32;
    }

    goto LABEL_34;
  }

  _s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA27_TextBaselineRelativeSpacerVAA12_FrameLayoutVG_AEyAEyAEyAA0G0VAA30_EnvironmentKeyWritingModifierVySiSgGGANyAA4FontVSgGGAA016_ForegroundStyleP0VyAA5ColorVGGtGSgWOi0_(&v152);
  v102 = 2;
LABEL_33:
  v59 = v156;
  v148 = v157;
  v149 = v158;
  v60 = v158;
  v61 = v159;
  v150 = v159;
  v151 = v160;
  v62 = v153;
  v63 = v152;
  v144 = v153;
  v145 = v154;
  v64 = v154;
  v65 = v155;
  v146 = v155;
  v147 = v156;
  v66 = v91;
  v67 = v92;
  *&v129 = v92;
  *(&v129 + 1) = v91;
  LOBYTE(v130) = v99;
  *(&v130 + 1) = *v163;
  DWORD1(v130) = *&v163[3];
  v68 = v93;
  v69 = v89;
  v70 = KeyPath;
  *(&v130 + 1) = v93;
  *&v131 = KeyPath;
  *(&v131 + 1) = v102;
  LOBYTE(v132) = 0;
  *(&v132 + 1) = *v161;
  DWORD1(v132) = *&v161[3];
  *(&v132 + 1) = v101;
  *&v133 = v89;
  *(&v133 + 1) = v100;
  v117 = v131;
  v118 = v132;
  v115 = v129;
  v116 = v130;
  v136 = v154;
  v137 = v155;
  v134 = v152;
  v135 = v153;
  v142 = v160;
  v143 = v152;
  v140 = v158;
  v141 = v159;
  v138 = v156;
  v139 = v157;
  v125 = v157;
  v126 = v158;
  v71 = v160;
  v127 = v159;
  v128 = v160;
  v121 = v153;
  v122 = v154;
  v123 = v155;
  v124 = v156;
  v119 = v133;
  v120 = v152;
  *(a2 + 10) = v157;
  *(a2 + 11) = v60;
  *(a2 + 12) = v61;
  *(a2 + 13) = v71;
  *(a2 + 6) = v62;
  *(a2 + 7) = v64;
  *(a2 + 8) = v65;
  *(a2 + 9) = v59;
  v72 = v118;
  *(a2 + 2) = v117;
  *(a2 + 3) = v72;
  *(a2 + 4) = v119;
  *(a2 + 5) = v63;
  v73 = v116;
  *a2 = v115;
  *(a2 + 1) = v73;
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(&v129, &v110, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGMd);
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(&v134, &v110, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA27_TextBaselineRelativeSpacerVAA12_FrameLayoutVG_AEyAEyAEyAA0G0VAA30_EnvironmentKeyWritingModifierVySiSgGGANyAA4FontVSgGGAA016_ForegroundStyleP0VyAA5ColorVGGtGSgMd);
  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(&v143, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA27_TextBaselineRelativeSpacerVAA12_FrameLayoutVG_AEyAEyAEyAA0G0VAA30_EnvironmentKeyWritingModifierVySiSgGGANyAA4FontVSgGGAA016_ForegroundStyleP0VyAA5ColorVGGtGSgMd);
  *&v110 = v67;
  *(&v110 + 1) = v66;
  LOBYTE(v111) = v99;
  *(&v111 + 1) = *v163;
  DWORD1(v111) = *&v163[3];
  *(&v111 + 1) = v68;
  *&v112 = v70;
  *(&v112 + 1) = v102;
  LOBYTE(v113) = 0;
  *(&v113 + 1) = *v161;
  DWORD1(v113) = *&v161[3];
  *(&v113 + 1) = v101;
  *&v114 = v69;
  *(&v114 + 1) = v100;
  return outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(&v110, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGMd);
}

uint64_t closure #3 in closure #1 in GridView.Condensed.Cell.Content.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAA4ViewPAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_AA016_ForegroundStyleO0VyAA5ColorVGGASyAQ5ScaleOGGAA12_FrameLayoutVG07CarPlayB004GridG0C4BaseO09Accessoryg7HostingG0V_GMd);
  MEMORY[0x28223BE20](v5);
  v7 = (v66 - v6);
  v8 = type metadata accessor for Image.Scale();
  v80 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v79 = v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EnvironmentValues();
  v68 = *(v10 - 8);
  v69 = v10;
  MEMORY[0x28223BE20](v10);
  v67 = v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAFSgGG_Qo_Md);
  v72 = *(v12 - 8);
  v73 = v12;
  MEMORY[0x28223BE20](v12);
  v81 = v66 - v13;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_AA016_ForegroundStyleM0VyAA5ColorVGGMd);
  MEMORY[0x28223BE20](v71);
  v82 = v66 - v14;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_AA016_ForegroundStyleM0VyAA5ColorVGGAOyAM5ScaleOGGMd);
  MEMORY[0x28223BE20](v74);
  v76 = v66 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_AA016_ForegroundStyleM0VyAA5ColorVGGAOyAM5ScaleOGGAA12_FrameLayoutVGMd);
  v17 = MEMORY[0x28223BE20](v16);
  v75 = v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v78 = v66 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5ImageV5ScaleOSgMd);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v66 - v24;
  v26 = type metadata accessor for GridView.Base.ViewModel.Accessory(0);
  MEMORY[0x28223BE20](v26);
  v28 = (v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of GridView.Condensed.Cell.Specs.Image.Shape(a1, v28, type metadata accessor for GridView.Base.ViewModel.Accessory);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v30 = v28[1];
  if (EnumCaseMultiPayload == 1)
  {
    *v7 = *v28;
    v7[1] = v30;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type GridView.Base.AccessoryViewHostingView and conformance GridView.Base.AccessoryViewHostingView();
    return _ConditionalContent<>.init(storage:)();
  }

  v66[0] = v8;
  v66[1] = v5;
  v66[2] = a3;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS4name_7SwiftUI5ImageV5ScaleOSgAB4FontV6WeightVSgtMd);
  v33 = *(v28 + *(v32 + 64) + 8);
  v34 = v28 + *(v32 + 48);
  v77 = v25;
  outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v34, v25, &_s7SwiftUI5ImageV5ScaleOSgMd);
  v35 = Image.init(systemName:)();
  if (one-time initialization token for font != -1)
  {
    swift_once();
  }

  v36 = static GridView.Condensed.Cell.Specs.Accessory.Image.font;
  KeyPath = swift_getKeyPath();
  *&v83 = v35;
  *(&v83 + 1) = KeyPath;
  *&v84 = v36;
  v38 = v70;
  if (v33)
  {
    v39 = one-time initialization token for weight;

    if (v39 != -1)
    {
      swift_once();
    }
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  View.fontWeight(_:)();

  v40 = type metadata accessor for GridView.Condensed.Cell.Content(0);
  v41 = v38 + *(v40 + 44);
  v42 = *v41;
  if (*(v41 + 8) == 1)
  {
    v43 = v66[0];
    if (v42)
    {
      goto LABEL_19;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v44 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v45 = v67;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Bool>.Content(v42, 0);
    (*(v68 + 8))(v45, v69);
    v43 = v66[0];
    if (v83)
    {
      goto LABEL_19;
    }
  }

  v46 = v38 + *(v40 + 48);
  v47 = *v46;
  if (*(v46 + 8) == 1)
  {
    if ((v47 & 1) == 0)
    {
LABEL_15:
      if (one-time initialization token for normal != -1)
      {
        swift_once();
      }

      v48 = &static GridView.Condensed.Cell.Specs.Accessory.Image.Color.normal;
      goto LABEL_22;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v49 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v50 = v67;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Bool>.Content(v47, 0);
    (*(v68 + 8))(v50, v69);
    if (v83 != 1)
    {
      goto LABEL_15;
    }
  }

LABEL_19:
  if (one-time initialization token for highlighted != -1)
  {
    swift_once();
  }

  v48 = &static GridView.Condensed.Cell.Specs.Accessory.Image.Color.highlighted;
LABEL_22:
  v51 = v79;
  v52 = v77;
  v53 = *v48;

  v54 = v82;
  (*(v72 + 32))(v82, v81, v73);
  *(v54 + *(v71 + 36)) = v53;
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v52, v23, &_s7SwiftUI5ImageV5ScaleOSgMd);
  v55 = v80;
  v56 = *(v80 + 48);
  if (v56(v23, 1, v43) == 1)
  {
    if (one-time initialization token for scale != -1)
    {
      swift_once();
    }

    v57 = __swift_project_value_buffer(v43, static GridView.Condensed.Cell.Specs.Accessory.Image.scale);
    (*(v55 + 16))(v51, v57, v43);
    if (v56(v23, 1, v43) != 1)
    {
      outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v23, &_s7SwiftUI5ImageV5ScaleOSgMd);
    }
  }

  else
  {
    (*(v55 + 32))(v51, v23, v43);
  }

  v58 = swift_getKeyPath();
  v59 = v76;
  v60 = &v76[*(v74 + 36)];
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd);
  (*(v55 + 32))(v60 + *(v61 + 28), v51, v43);
  *v60 = v58;
  outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v82, v59, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_AA016_ForegroundStyleM0VyAA5ColorVGGMd);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v62 = v75;
  outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v59, v75, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_AA016_ForegroundStyleM0VyAA5ColorVGGAOyAM5ScaleOGGMd);
  v63 = (v62 + *(v16 + 36));
  v64 = v84;
  *v63 = v83;
  v63[1] = v64;
  v63[2] = v85;
  v65 = v78;
  outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v62, v78, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_AA016_ForegroundStyleM0VyAA5ColorVGGAOyAM5ScaleOGGAA12_FrameLayoutVGMd);
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v65, v7, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_AA016_ForegroundStyleM0VyAA5ColorVGGAOyAM5ScaleOGGAA12_FrameLayoutVGMd);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type GridView.Base.AccessoryViewHostingView and conformance GridView.Base.AccessoryViewHostingView();
  _ConditionalContent<>.init(storage:)();
  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v65, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_AA016_ForegroundStyleM0VyAA5ColorVGGAOyAM5ScaleOGGAA12_FrameLayoutVGMd);
  return outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v77, &_s7SwiftUI5ImageV5ScaleOSgMd);
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  return specialized Environment.wrappedValue.getter(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, MEMORY[0x277CDF3E0], a1);
}

{
  return specialized Environment.wrappedValue.getter(&_s7SwiftUI11EnvironmentV7ContentOyAA5ImageV5ScaleO_GMd, MEMORY[0x277CE1060], a1);
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t EnvironmentValues.isHighlighted.getter()
{
  lazy protocol witness table accessor for type EnvironmentValues.__Key_isHighlighted and conformance EnvironmentValues.__Key_isHighlighted();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t key path getter for EnvironmentValues.isHighlighted : EnvironmentValues@<X0>(_BYTE *a1@<X8>)
{
  lazy protocol witness table accessor for type EnvironmentValues.__Key_isHighlighted and conformance EnvironmentValues.__Key_isHighlighted();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t GridView.Condensed.Cell.ButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVySbGGMd);
  MEMORY[0x28223BE20](v51);
  v9 = &v48[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVySbGGAA011_BackgroundfL0VyAA5ColorVGGMd);
  MEMORY[0x28223BE20](v10);
  v54 = &v48[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVySbGGAA011_BackgroundfL0VyAA5ColorVGGAA23_CompositingGroupEffectVGMd);
  MEMORY[0x28223BE20](v12 - 8);
  v53 = &v48[-v13];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVySbGGAA011_BackgroundfL0VyAA5ColorVGGAA23_CompositingGroupEffectVGAA010_AnimationL0VySbGGMd);
  MEMORY[0x28223BE20](v52);
  v15 = &v48[-v14];
  v16 = type metadata accessor for EnvironmentValues();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v48[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v50 = a1;
  v49 = ButtonStyleConfiguration.isPressed.getter();
  if ((a3 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v20 = v10;
    v21 = v9;
    v22 = v15;
    v23 = a4;
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    a4 = v23;
    v15 = v22;
    v9 = v21;
    v10 = v20;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Bool>.Content(a2, 0);
    (*(v17 + 8))(v19, v16);
    LOBYTE(a2) = v55;
  }

  v25 = v49;
  v26 = a2 | v49;
  ButtonStyleConfiguration.label.getter();
  KeyPath = swift_getKeyPath();
  v28 = &v9[*(v51 + 36)];
  *v28 = KeyPath;
  v28[8] = v26 & 1;
  if (v26)
  {
    if (one-time initialization token for color != -1)
    {
      swift_once();
    }

    v29 = &static GridView.Condensed.Cell.Specs.Highlight.color;
  }

  else
  {
    if (one-time initialization token for color != -1)
    {
      swift_once();
    }

    v29 = &static GridView.Condensed.Cell.Specs.Background.color;
  }

  v30 = *v29;

  v31 = static Edge.Set.all.getter();
  v32 = v9;
  v33 = v54;
  outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v32, v54, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVySbGGMd);
  v34 = &v33[*(v10 + 36)];
  *v34 = v30;
  v34[8] = v31;
  v35 = v53;
  outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v33, v53, &_s7SwiftUI15ModifiedContentVyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVySbGGAA011_BackgroundfL0VyAA5ColorVGGMd);
  v36 = static Animation.default.getter();
  outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v35, v15, &_s7SwiftUI15ModifiedContentVyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVySbGGAA011_BackgroundfL0VyAA5ColorVGGAA23_CompositingGroupEffectVGMd);
  v37 = &v15[*(v52 + 36)];
  *v37 = v36;
  v37[8] = v25 & 1;
  if (one-time initialization token for style != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for RoundedCornerStyle();
  v39 = __swift_project_value_buffer(v38, static GridView.Condensed.Cell.Specs.Corner.style);
  v40 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVySbGGAA011_BackgroundfL0VyAA5ColorVGGAA23_CompositingGroupEffectVGAA010_AnimationL0VySbGGAA05_ClipQ0VyAA16RoundedRectangleVGGMd) + 36));
  v41 = type metadata accessor for RoundedRectangle();
  (*(*(v38 - 8) + 16))(&v40[*(v41 + 20)], v39, v38);
  __asm { FMOV            V0.2D, #10.0 }

  *v40 = _Q0;
  *&v40[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd) + 36)] = 256;
  return outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v15, a4, &_s7SwiftUI15ModifiedContentVyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVySbGGAA011_BackgroundfL0VyAA5ColorVGGAA23_CompositingGroupEffectVGAA010_AnimationL0VySbGGMd);
}

id one-time initialization function for color()
{
  result = [objc_opt_self() tableCellPlainBackgroundColor];
  if (result)
  {
    result = Color.init(uiColor:)();
    static GridView.Condensed.Cell.Specs.Background.color = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t one-time initialization function for style(uint64_t a1)
{
  return one-time initialization function for style(a1, MEMORY[0x277CE0130], static GridView.Condensed.Cell.Specs.Corner.style, MEMORY[0x277CE0118]);
}

{
  return one-time initialization function for style(a1, static GridView.Hero.Cell.Specs.Image.Corner.style);
}

{
  return one-time initialization function for style(a1, static GridView.Hero.Cell.Specs.Corner.style);
}

uint64_t one-time initialization function for normal()
{
  result = static Color.accentColor.getter();
  static GridView.Condensed.Cell.Specs.Image.Symbol.Color.normal = result;
  return result;
}

uint64_t one-time initialization function for highlighted(uint64_t a1)
{
  return one-time initialization function for highlighted(a1, &selRef__carSystemFocusLabelColor, &static GridView.Condensed.Cell.Specs.Image.Symbol.Color.highlighted);
}

{
  return one-time initialization function for highlighted(a1, &selRef__carSystemFocusLabelColor, &static GridView.Condensed.Cell.Specs.Labels.Title.Color.highlighted);
}

{
  return one-time initialization function for highlighted(a1, &selRef__carSystemFocusPrimaryColor, &static GridView.Condensed.Cell.Specs.Labels.Subtitle.Color.highlighted);
}

{
  return one-time initialization function for highlighted(a1, &selRef__carSystemFocusPrimaryColor, &static GridView.Condensed.Cell.Specs.Accessory.Image.Color.highlighted);
}

uint64_t one-time initialization function for scale(uint64_t a1)
{
  return one-time initialization function for style(a1, MEMORY[0x277CE1060], static GridView.Condensed.Cell.Specs.Image.Symbol.scale, MEMORY[0x277CE1058]);
}

{
  return one-time initialization function for style(a1, MEMORY[0x277CE1060], static GridView.Condensed.Cell.Specs.Accessory.Image.scale, MEMORY[0x277CE1050]);
}

uint64_t one-time initialization function for font()
{
  result = static Font.subheadline.getter();
  static GridView.Condensed.Cell.Specs.Image.Symbol.font = result;
  return result;
}

{
  result = static Font.subheadline.getter();
  static GridView.Condensed.Cell.Specs.Accessory.Image.font = result;
  return result;
}

{
  static Font.title3.getter();
  v0 = Font.bold()();

  static Specs.Title.font = v0;
  return result;
}

{
  result = static Font.subheadline.getter();
  static Specs.Subtitle.font = result;
  return result;
}

{
  result = static Font.callout.getter();
  static Specs.Controls.font = result;
  return result;
}

uint64_t one-time initialization function for weight()
{
  result = static Font.Weight.semibold.getter();
  static GridView.Condensed.Cell.Specs.Image.Symbol.weight = v1;
  return result;
}

{
  result = static Font.Weight.semibold.getter();
  static GridView.Condensed.Cell.Specs.Accessory.Image.weight = v1;
  return result;
}

uint64_t one-time initialization function for normal(uint64_t a1)
{
  return one-time initialization function for highlighted(a1, &selRef_labelColor, &static GridView.Condensed.Cell.Specs.Labels.Title.Color.normal);
}

{
  return one-time initialization function for highlighted(a1, &selRef_secondaryLabelColor, &static GridView.Condensed.Cell.Specs.Labels.Subtitle.Color.normal);
}

{
  return one-time initialization function for highlighted(a1, &selRef_tertiaryLabelColor, &static GridView.Condensed.Cell.Specs.Accessory.Image.Color.normal);
}

uint64_t one-time initialization function for highlighted(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = Color.init(uiColor:)();
  *a3 = result;
  return result;
}

uint64_t one-time initialization function for style(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, unsigned int *a4)
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  v7 = __swift_project_value_buffer(v6, a3);
  v8 = *a4;
  v9 = *(*(v6 - 8) + 104);

  return v9(v7, v8, v6);
}

uint64_t lazy protocol witness table accessor for type GridView.Condensed.Cell.Content and conformance GridView.Condensed.Cell.Content(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t instantiation function for generic protocol witness table for GridView.Condensed.Cell(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GridView.Condensed.Cell and conformance GridView.Condensed.Cell();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type GridView.Condensed.Cell and conformance GridView.Condensed.Cell()
{
  result = lazy protocol witness table cache variable for type GridView.Condensed.Cell and conformance GridView.Condensed.Cell;
  if (!lazy protocol witness table cache variable for type GridView.Condensed.Cell and conformance GridView.Condensed.Cell)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GridView.Condensed.Cell and conformance GridView.Condensed.Cell);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyAA0I0Vy07CarPlayB004GridF0C9CondensedO4CellV0D0VG_ArIVQo_AA32_EnvironmentKeyTransformModifierVySbGGAA08_OverlayR0VyAgAE12onTapGesture5count7performQrSi_yyctFQOyAEyAA5ColorVAA01_d5ShapeR0VyAA9RectangleVGG_Qo_GGA_GMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, _OverlayModifier<<<opaque return type of View.onTapGesture(count:perform:)>>.0>>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for GridView.Condensed.Cell.ButtonStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for GridView.Condensed.Cell.ButtonStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void type metadata completion function for GridView.Condensed.Cell.Content()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for GridView.Base.ViewModel.Accessory?(319, &lazy cache variable for type metadata for GridView.Base.ViewModel.Accessory?, type metadata accessor for GridView.Base.ViewModel.Accessory, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for GridView.Base.ViewModel.Accessory?(319, &lazy cache variable for type metadata for GridView.Base.ViewModel.ImageConfiguration?, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for GridView.Base.ViewModel.Accessory?(319, &lazy cache variable for type metadata for Environment<DynamicTypeSize>, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for String?(319, &lazy cache variable for type metadata for Environment<Bool>, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for GridView.Base.ViewModel.Accessory?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for String?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t type metadata accessor for GridView.Condensed.Cell.Content(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Rectangle and conformance Rectangle()
{
  result = lazy protocol witness table cache variable for type Rectangle and conformance Rectangle;
  if (!lazy protocol witness table cache variable for type Rectangle and conformance Rectangle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Rectangle and conformance Rectangle);
  }

  return result;
}

uint64_t outlined init with take of InsettableShape(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t outlined destroy of GridView.Condensed.Cell.Specs.Image.Shape(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of GridView.Base.ViewModel.ImageConfiguration.Shape(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Circle and conformance Circle()
{
  result = lazy protocol witness table cache variable for type Circle and conformance Circle;
  if (!lazy protocol witness table cache variable for type Circle and conformance Circle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Circle and conformance Circle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Circle and conformance Circle;
  if (!lazy protocol witness table cache variable for type Circle and conformance Circle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Circle and conformance Circle);
  }

  return result;
}

uint64_t outlined init with copy of GridView.Condensed.Cell.Specs.Image.Shape(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_AA016_ForegroundStyleM0VyAA5ColorVGGAOyAM5ScaleOGGAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_AA016_ForegroundStyleM0VyAA5ColorVGGAOyAM5ScaleOGGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Image.Scale> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_AA016_ForegroundStyleM0VyAA5ColorVGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GridView.Base.AccessoryViewHostingView and conformance GridView.Base.AccessoryViewHostingView()
{
  result = lazy protocol witness table cache variable for type GridView.Base.AccessoryViewHostingView and conformance GridView.Base.AccessoryViewHostingView;
  if (!lazy protocol witness table cache variable for type GridView.Base.AccessoryViewHostingView and conformance GridView.Base.AccessoryViewHostingView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GridView.Base.AccessoryViewHostingView and conformance GridView.Base.AccessoryViewHostingView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GridView.Base.AccessoryViewHostingView and conformance GridView.Base.AccessoryViewHostingView;
  if (!lazy protocol witness table cache variable for type GridView.Base.AccessoryViewHostingView and conformance GridView.Base.AccessoryViewHostingView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GridView.Base.AccessoryViewHostingView and conformance GridView.Base.AccessoryViewHostingView);
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.lineLimit : EnvironmentValues, serialized@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t key path setter for EnvironmentValues.dynamicTypeSize : EnvironmentValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  MEMORY[0x28223BE20]();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
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

uint64_t specialized static GridView.Condensed.Cell.Specs.Labels.Title.font(size:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for DynamicTypeSize();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1, v5);
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 == *MEMORY[0x277CDF9D8] || v9 == *MEMORY[0x277CDF9F0] || v9 == *MEMORY[0x277CDFA00])
  {
    static Font.Weight.medium.getter();
    v10 = type metadata accessor for Font.Design();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  }

  else
  {
    v13 = *MEMORY[0x277CDFA10];
    v14 = v9;
    static Font.Weight.medium.getter();
    v15 = type metadata accessor for Font.Design();
    (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
    if (v14 != v13)
    {
      v11 = static Font.system(size:weight:design:)();
      outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v4, &_s7SwiftUI4FontV6DesignOSgMd);
      (*(v6 + 8))(v8, v5);
      return v11;
    }
  }

  v11 = static Font.system(size:weight:design:)();
  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v4, &_s7SwiftUI4FontV6DesignOSgMd);
  return v11;
}

double _s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA27_TextBaselineRelativeSpacerVAA12_FrameLayoutVG_AEyAEyAEyAA0G0VAA30_EnvironmentKeyWritingModifierVySiSgGGANyAA4FontVSgGGAA016_ForegroundStyleP0VyAA5ColorVGGtGSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t specialized static GridView.Condensed.Cell.Specs.Labels.Subtitle.font(size:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for DynamicTypeSize();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1, v5);
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 == *MEMORY[0x277CDF9D8] || v9 == *MEMORY[0x277CDF9F0] || v9 == *MEMORY[0x277CDFA00])
  {
    static Font.Weight.regular.getter();
    v10 = type metadata accessor for Font.Design();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  }

  else
  {
    v13 = *MEMORY[0x277CDFA10];
    v14 = v9;
    static Font.Weight.regular.getter();
    v15 = type metadata accessor for Font.Design();
    (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
    if (v14 != v13)
    {
      v11 = static Font.system(size:weight:design:)();
      outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v4, &_s7SwiftUI4FontV6DesignOSgMd);
      (*(v6 + 8))(v8, v5);
      return v11;
    }
  }

  v11 = static Font.system(size:weight:design:)();
  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v4, &_s7SwiftUI4FontV6DesignOSgMd);
  return v11;
}

unint64_t lazy protocol witness table accessor for type AnyInsettableShape and conformance AnyInsettableShape()
{
  result = lazy protocol witness table cache variable for type AnyInsettableShape and conformance AnyInsettableShape;
  if (!lazy protocol witness table cache variable for type AnyInsettableShape and conformance AnyInsettableShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyInsettableShape and conformance AnyInsettableShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyInsettableShape and conformance AnyInsettableShape;
  if (!lazy protocol witness table cache variable for type AnyInsettableShape and conformance AnyInsettableShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyInsettableShape and conformance AnyInsettableShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyInsettableShape and conformance AnyInsettableShape;
  if (!lazy protocol witness table cache variable for type AnyInsettableShape and conformance AnyInsettableShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyInsettableShape and conformance AnyInsettableShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyInsettableShape and conformance AnyInsettableShape;
  if (!lazy protocol witness table cache variable for type AnyInsettableShape and conformance AnyInsettableShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyInsettableShape and conformance AnyInsettableShape);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork.SystemImage, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<GridView.Base.Artwork, _FrameLayout>, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork.SystemImage, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<GridView.Base.Artwork, _FrameLayout>, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork.SystemImage, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<GridView.Base.Artwork, _FrameLayout>, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEy07CarPlayB08GridViewC4BaseO7ArtworkV11SystemImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleQ0VyAA5ColorVGGAA12_FrameLayoutVGAA08_PaddingW0VGAEyAEyALA1_GA4_GGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork.SystemImage, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GridView.Base.Artwork, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork.SystemImage, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<GridView.Base.Artwork, _FrameLayout>, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork.SystemImage, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork.SystemImage, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork.SystemImage, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07CarPlayB08GridViewC4BaseO7ArtworkV11SystemImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleP0VyAA5ColorVGGAA12_FrameLayoutVGAA08_PaddingV0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork.SystemImage, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork.SystemImage, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork.SystemImage, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork.SystemImage, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork.SystemImage, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy07CarPlayB08GridViewC4BaseO7ArtworkV11SystemImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleP0VyAA5ColorVGGAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GridView.Base.Artwork.SystemImage, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork.SystemImage, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GridView.Base.Artwork.SystemImage, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GridView.Base.Artwork.SystemImage, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GridView.Base.Artwork.SystemImage, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07CarPlayB08GridViewC4BaseO7ArtworkV11SystemImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleP0VyAA5ColorVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<GridView.Base.Artwork.SystemImage, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GridView.Base.Artwork.SystemImage, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<GridView.Base.Artwork.SystemImage, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<GridView.Base.Artwork.SystemImage, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<GridView.Base.Artwork.SystemImage, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07CarPlayB08GridViewC4BaseO7ArtworkV11SystemImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type GridView.Condensed.Cell.Content and conformance GridView.Condensed.Cell.Content(&lazy protocol witness table cache variable for type GridView.Base.Artwork.SystemImage and conformance GridView.Base.Artwork.SystemImage, type metadata accessor for GridView.Base.Artwork.SystemImage);
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<GridView.Base.Artwork.SystemImage, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GridView.Base.Artwork, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GridView.Base.Artwork, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GridView.Base.Artwork, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07CarPlayB08GridViewC4BaseO7ArtworkVAA12_FrameLayoutVGAA08_PaddingL0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<GridView.Base.Artwork, _FrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<GridView.Base.Artwork, _FrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVy07CarPlayB08GridViewC4BaseO7ArtworkVAA12_FrameLayoutVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GridView.Base.Artwork, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork, _AspectRatioLayout>, InnerHighlightModifier>, _ShadowEffect>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork, _AspectRatioLayout>, InnerHighlightModifier>, _ShadowEffect>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork, _AspectRatioLayout>, InnerHighlightModifier>, _ShadowEffect>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07CarPlayB08GridViewC4BaseO7ArtworkVAA18_AspectRatioLayoutVGAD22InnerHighlightModifierVGAA13_ShadowEffectVGAA08_PaddingM0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork, _AspectRatioLayout>, InnerHighlightModifier>, _ShadowEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork, _AspectRatioLayout>, InnerHighlightModifier>, _ShadowEffect>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork, _AspectRatioLayout>, InnerHighlightModifier>, _ShadowEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork, _AspectRatioLayout>, InnerHighlightModifier>, _ShadowEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork, _AspectRatioLayout>, InnerHighlightModifier>, _ShadowEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy07CarPlayB08GridViewC4BaseO7ArtworkVAA18_AspectRatioLayoutVGAD22InnerHighlightModifierVGAA13_ShadowEffectVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GridView.Base.Artwork, _AspectRatioLayout>, InnerHighlightModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<GridView.Base.Artwork, _AspectRatioLayout>, InnerHighlightModifier>, _ShadowEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GridView.Base.Artwork, _AspectRatioLayout>, InnerHighlightModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GridView.Base.Artwork, _AspectRatioLayout>, InnerHighlightModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GridView.Base.Artwork, _AspectRatioLayout>, InnerHighlightModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07CarPlayB08GridViewC4BaseO7ArtworkVAA18_AspectRatioLayoutVGAD22InnerHighlightModifierVGMd);
    lazy protocol witness table accessor for type ModifiedContent<GridView.Base.Artwork, _FrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<GridView.Base.Artwork, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVy07CarPlayB08GridViewC4BaseO7ArtworkVAA18_AspectRatioLayoutVGMd);
    lazy protocol witness table accessor for type GridView.Condensed.Cell.Content and conformance GridView.Condensed.Cell.Content(&lazy protocol witness table cache variable for type InnerHighlightModifier and conformance InnerHighlightModifier, type metadata accessor for InnerHighlightModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GridView.Base.Artwork, _AspectRatioLayout>, InnerHighlightModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<GridView.Base.Artwork, _FrameLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    lazy protocol witness table accessor for type GridView.Condensed.Cell.Content and conformance GridView.Condensed.Cell.Content(&lazy protocol witness table cache variable for type GridView.Base.Artwork and conformance GridView.Base.Artwork, type metadata accessor for GridView.Base.Artwork);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined copy of Environment<Bool>.Content(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentValues.__Key_isHighlighted and conformance EnvironmentValues.__Key_isHighlighted()
{
  result = lazy protocol witness table cache variable for type EnvironmentValues.__Key_isHighlighted and conformance EnvironmentValues.__Key_isHighlighted;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.__Key_isHighlighted and conformance EnvironmentValues.__Key_isHighlighted)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.__Key_isHighlighted and conformance EnvironmentValues.__Key_isHighlighted);
  }

  return result;
}