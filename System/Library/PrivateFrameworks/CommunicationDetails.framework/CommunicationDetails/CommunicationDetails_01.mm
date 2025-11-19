uint64_t implicit closure #1 in DetailsMediaBadge.body(content:)@<X0>(uint64_t *a1@<X8>)
{
  result = static Color.white.getter();
  *a1 = result;
  return result;
}

uint64_t implicit closure #5 in DetailsMediaBadge.body(content:)@<X0>(uint64_t *a1@<X8>)
{
  result = static Color.primary.getter();
  *a1 = result;
  return result;
}

void partial apply for closure #1 in AttributionAvatarView.ViewModel.contact.setter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;
  v4 = v1;
}

unint64_t type metadata accessor for CNContact()
{
  result = lazy cache variable for type metadata for CNContact;
  if (!lazy cache variable for type metadata for CNContact)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CNContact);
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.font : EnvironmentValues, serialized@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for EnvironmentValues.imageScale : EnvironmentValues, serialized(uint64_t a1)
{
  v2 = type metadata accessor for Image.Scale();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.imageScale.setter();
}

uint64_t getEnumTagSinglePayload for AttributionAvatarView(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AttributionAvatarView(uint64_t result, int a2, int a3)
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

uint64_t type metadata completion function for AttributionAvatarView.ViewModel()
{
  result = type metadata accessor for ObservationRegistrar();
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<AvatarView, DetailsMediaBadge>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AvatarView, DetailsMediaBadge>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AvatarView, DetailsMediaBadge>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy08ContactsB010AvatarViewV20CommunicationDetails0I10MediaBadgeVGSgMd);
    lazy protocol witness table accessor for type ModifiedContent<AvatarView, DetailsMediaBadge> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AvatarView, DetailsMediaBadge>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<AvatarView, DetailsMediaBadge> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AvatarView, DetailsMediaBadge> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AvatarView, DetailsMediaBadge> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy08ContactsB010AvatarViewV20CommunicationDetails0I10MediaBadgeVGMd);
    lazy protocol witness table accessor for type AttributionAvatarView.ViewModel and conformance AttributionAvatarView.ViewModel(&lazy protocol witness table cache variable for type AvatarView and conformance AvatarView, MEMORY[0x1E695CFD8]);
    lazy protocol witness table accessor for type DetailsMediaBadge and conformance DetailsMediaBadge();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AvatarView, DetailsMediaBadge> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AttributionAvatarView.ViewModel and conformance AttributionAvatarView.ViewModel(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type DetailsMediaBadge and conformance DetailsMediaBadge()
{
  result = lazy protocol witness table cache variable for type DetailsMediaBadge and conformance DetailsMediaBadge;
  if (!lazy protocol witness table cache variable for type DetailsMediaBadge and conformance DetailsMediaBadge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DetailsMediaBadge and conformance DetailsMediaBadge);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<DetailsMediaBadge>, _BackgroundModifier<_ShadowView<Circle>>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, _OverlayModifier<StrokeBorderShapeView<Circle, Color, EmptyView>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<DetailsMediaBadge>, _BackgroundModifier<_ShadowView<Circle>>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, _OverlayModifier<StrokeBorderShapeView<Circle, Color, EmptyView>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<DetailsMediaBadge>, _BackgroundModifier<_ShadowView<Circle>>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, _OverlayModifier<StrokeBorderShapeView<Circle, Color, EmptyView>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA014_ViewModifier_D0Vy20CommunicationDetails0H10MediaBadgeVGAA011_BackgroundF0VyAA07_ShadowE0VyAA6CircleVGGGAA022_EnvironmentKeyWritingF0VyAA4FontVSgGGATyAA5ImageV5ScaleOGGAA12_FrameLayoutVGAA08_OverlayF0VyAA017StrokeBorderShapeE0VyAoA5ColorVAA05EmptyE0VGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<DetailsMediaBadge>, _BackgroundModifier<_ShadowView<Circle>>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<DetailsMediaBadge> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _OverlayModifier<StrokeBorderShapeView<Circle, Color, EmptyView>> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA21StrokeBorderShapeViewVyAA6CircleVAA5ColorVAA05EmptyH0VGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<DetailsMediaBadge>, _BackgroundModifier<_ShadowView<Circle>>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, _OverlayModifier<StrokeBorderShapeView<Circle, Color, EmptyView>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<DetailsMediaBadge>, _BackgroundModifier<_ShadowView<Circle>>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<DetailsMediaBadge>, _BackgroundModifier<_ShadowView<Circle>>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<DetailsMediaBadge>, _BackgroundModifier<_ShadowView<Circle>>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA014_ViewModifier_D0Vy20CommunicationDetails0H10MediaBadgeVGAA011_BackgroundF0VyAA07_ShadowE0VyAA6CircleVGGGAA022_EnvironmentKeyWritingF0VyAA4FontVSgGGATyAA5ImageV5ScaleOGGAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<DetailsMediaBadge>, _BackgroundModifier<_ShadowView<Circle>>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<DetailsMediaBadge>, _BackgroundModifier<_ShadowView<Circle>>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<DetailsMediaBadge>, _BackgroundModifier<_ShadowView<Circle>>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<DetailsMediaBadge>, _BackgroundModifier<_ShadowView<Circle>>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<DetailsMediaBadge>, _BackgroundModifier<_ShadowView<Circle>>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA014_ViewModifier_D0Vy20CommunicationDetails0H10MediaBadgeVGAA011_BackgroundF0VyAA07_ShadowE0VyAA6CircleVGGGAA022_EnvironmentKeyWritingF0VyAA4FontVSgGGATyAA5ImageV5ScaleOGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<DetailsMediaBadge>, _BackgroundModifier<_ShadowView<Circle>>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<DetailsMediaBadge> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Image.Scale> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<DetailsMediaBadge>, _BackgroundModifier<_ShadowView<Circle>>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<DetailsMediaBadge>, _BackgroundModifier<_ShadowView<Circle>>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<DetailsMediaBadge>, _BackgroundModifier<_ShadowView<Circle>>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<DetailsMediaBadge>, _BackgroundModifier<_ShadowView<Circle>>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy20CommunicationDetails0H10MediaBadgeVGAA011_BackgroundF0VyAA07_ShadowE0VyAA6CircleVGGGAA022_EnvironmentKeyWritingF0VyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<DetailsMediaBadge>, _BackgroundModifier<_ShadowView<Circle>>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<DetailsMediaBadge> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<DetailsMediaBadge>, _BackgroundModifier<_ShadowView<Circle>>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<DetailsMediaBadge>, _BackgroundModifier<_ShadowView<Circle>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<DetailsMediaBadge>, _BackgroundModifier<_ShadowView<Circle>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<DetailsMediaBadge>, _BackgroundModifier<_ShadowView<Circle>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy20CommunicationDetails0H10MediaBadgeVGAA011_BackgroundF0VyAA07_ShadowE0VyAA6CircleVGGGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<DetailsMediaBadge> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<DetailsMediaBadge> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails0G10MediaBadgeVGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<DetailsMediaBadge> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _BackgroundModifier<_ShadowView<Circle>> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA11_ShadowViewVyAA6CircleVGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<DetailsMediaBadge>, _BackgroundModifier<_ShadowView<Circle>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<DetailsMediaBadge> and conformance _ViewModifier_Content<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t ParticipantView.ContactCellHoverEffect.styleGuide.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[13];
  v35 = v1[12];
  v36 = v3;
  v4 = v1[7];
  v5 = v1[9];
  v31 = v1[8];
  v6 = v31;
  v32 = v5;
  v7 = v1[9];
  v8 = v1[11];
  v33 = v1[10];
  v9 = v33;
  v34 = v8;
  v10 = v1[3];
  v11 = v1[5];
  v27 = v1[4];
  v12 = v27;
  v28 = v11;
  v13 = v1[5];
  v14 = v1[7];
  v29 = v1[6];
  v15 = v29;
  v30 = v14;
  v16 = v1[1];
  v24[0] = *v1;
  v24[1] = v16;
  v17 = v1[3];
  v19 = *v1;
  v18 = v1[1];
  v25 = v1[2];
  v20 = v25;
  v26 = v17;
  v21 = v1[13];
  *(a1 + 192) = v35;
  *(a1 + 208) = v21;
  *(a1 + 128) = v6;
  *(a1 + 144) = v7;
  *(a1 + 160) = v9;
  *(a1 + 176) = v2;
  *(a1 + 64) = v12;
  *(a1 + 80) = v13;
  *(a1 + 96) = v15;
  *(a1 + 112) = v4;
  *a1 = v19;
  *(a1 + 16) = v18;
  v37 = *(v1 + 28);
  *(a1 + 224) = *(v1 + 28);
  *(a1 + 32) = v20;
  *(a1 + 48) = v10;
  return outlined init with copy of ParticipantGrid.StyleGuide(v24, v23);
}

uint64_t ParticipantView.ContactCellHoverEffect.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails011ParticipantC0V22ContactCellHoverEffectVGMd);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t ParticipantView.ContactCellHoverEffect.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = ParticipantGrid.StyleGuide.default.unsafeMutableAddressor();
  v4 = v2[1];
  v3 = v2[2];
  v23[0] = *v2;
  v23[1] = v4;
  v23[2] = v3;
  v5 = v2[6];
  v7 = v2[3];
  v6 = v2[4];
  v23[5] = v2[5];
  v23[6] = v5;
  v23[3] = v7;
  v23[4] = v6;
  v8 = v2[10];
  v10 = v2[7];
  v9 = v2[8];
  v23[9] = v2[9];
  v23[10] = v8;
  v23[7] = v10;
  v23[8] = v9;
  v12 = v2[12];
  v11 = v2[13];
  v13 = v2[11];
  v24 = *(v2 + 28);
  v23[12] = v12;
  v23[13] = v11;
  v23[11] = v13;
  v14 = v2[13];
  *(a1 + 192) = v2[12];
  *(a1 + 208) = v14;
  *(a1 + 224) = *(v2 + 28);
  v15 = v2[9];
  *(a1 + 128) = v2[8];
  *(a1 + 144) = v15;
  v16 = v2[11];
  *(a1 + 160) = v2[10];
  *(a1 + 176) = v16;
  v17 = v2[5];
  *(a1 + 64) = v2[4];
  *(a1 + 80) = v17;
  v18 = v2[7];
  *(a1 + 96) = v2[6];
  *(a1 + 112) = v18;
  v19 = v2[1];
  *a1 = *v2;
  *(a1 + 16) = v19;
  v20 = v2[3];
  *(a1 + 32) = v2[2];
  *(a1 + 48) = v20;
  return outlined init with copy of ParticipantGrid.StyleGuide(v23, v22);
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance ParticipantView.ContactCellHoverEffect@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails011ParticipantC0V22ContactCellHoverEffectVGMd);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t ParticipantView.ShouldHideBlockLabel.styleGuide.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[13];
  v35 = v1[12];
  v36 = v3;
  v4 = v1[7];
  v5 = v1[9];
  v31 = v1[8];
  v6 = v31;
  v32 = v5;
  v7 = v1[9];
  v8 = v1[11];
  v33 = v1[10];
  v9 = v33;
  v34 = v8;
  v10 = v1[3];
  v11 = v1[5];
  v27 = v1[4];
  v12 = v27;
  v28 = v11;
  v13 = v1[5];
  v14 = v1[7];
  v29 = v1[6];
  v15 = v29;
  v30 = v14;
  v16 = v1[1];
  v24[0] = *v1;
  v24[1] = v16;
  v17 = v1[3];
  v19 = *v1;
  v18 = v1[1];
  v25 = v1[2];
  v20 = v25;
  v26 = v17;
  v21 = v1[13];
  *(a1 + 192) = v35;
  *(a1 + 208) = v21;
  *(a1 + 128) = v6;
  *(a1 + 144) = v7;
  *(a1 + 160) = v9;
  *(a1 + 176) = v2;
  *(a1 + 64) = v12;
  *(a1 + 80) = v13;
  *(a1 + 96) = v15;
  *(a1 + 112) = v4;
  *a1 = v19;
  *(a1 + 16) = v18;
  v37 = *(v1 + 28);
  *(a1 + 224) = *(v1 + 28);
  *(a1 + 32) = v20;
  *(a1 + 48) = v10;
  return outlined init with copy of ParticipantGrid.StyleGuide(v24, v23);
}

uint64_t ParticipantView.ShouldHideBlockLabel.body(content:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA014_ViewModifier_D0Vy20CommunicationDetails011ParticipantF0V20ShouldHideBlockLabelVGAA05EmptyF0V_GMd);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  if (*(v1 + 232))
  {
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails011ParticipantC0V20ShouldHideBlockLabelVGMd);
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails011ParticipantC0V20ShouldHideBlockLabelVGMd);
    (*(*(v6 - 8) + 16))(v5, a1, v6);
    swift_storeEnumTagMultiPayload();
  }

  lazy protocol witness table accessor for type _ViewModifier_Content<ParticipantView.ShouldHideBlockLabel> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ParticipantView.ShouldHideBlockLabel> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails011ParticipantC0V20ShouldHideBlockLabelVGMd);
  return _ConditionalContent<>.init(storage:)();
}

uint64_t ParticipantView.ShouldHideBlockLabel.init(shouldHide:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = ParticipantGrid.StyleGuide.default.unsafeMutableAddressor();
  v6 = v4[1];
  v5 = v4[2];
  v25[0] = *v4;
  v25[1] = v6;
  v25[2] = v5;
  v7 = v4[6];
  v9 = v4[3];
  v8 = v4[4];
  v25[5] = v4[5];
  v25[6] = v7;
  v25[3] = v9;
  v25[4] = v8;
  v10 = v4[10];
  v12 = v4[7];
  v11 = v4[8];
  v25[9] = v4[9];
  v25[10] = v10;
  v25[7] = v12;
  v25[8] = v11;
  v14 = v4[12];
  v13 = v4[13];
  v15 = v4[11];
  v26 = *(v4 + 28);
  v25[12] = v14;
  v25[13] = v13;
  v25[11] = v15;
  v16 = v4[13];
  *(a2 + 192) = v4[12];
  *(a2 + 208) = v16;
  *(a2 + 224) = *(v4 + 28);
  v17 = v4[9];
  *(a2 + 128) = v4[8];
  *(a2 + 144) = v17;
  v18 = v4[11];
  *(a2 + 160) = v4[10];
  *(a2 + 176) = v18;
  v19 = v4[5];
  *(a2 + 64) = v4[4];
  *(a2 + 80) = v19;
  v20 = v4[7];
  *(a2 + 96) = v4[6];
  *(a2 + 112) = v20;
  v21 = v4[1];
  *a2 = *v4;
  *(a2 + 16) = v21;
  v22 = v4[3];
  *(a2 + 32) = v4[2];
  *(a2 + 48) = v22;
  *(a2 + 232) = a1;
  return outlined init with copy of ParticipantGrid.StyleGuide(v25, v24);
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance ParticipantView.ShouldHideBlockLabel(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA014_ViewModifier_D0Vy20CommunicationDetails011ParticipantF0V20ShouldHideBlockLabelVGAA05EmptyF0V_GMd);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  if (*(v1 + 232) == 1)
  {
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails011ParticipantC0V20ShouldHideBlockLabelVGMd);
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails011ParticipantC0V20ShouldHideBlockLabelVGMd);
    (*(*(v6 - 8) + 16))(v5, a1, v6);
    swift_storeEnumTagMultiPayload();
  }

  lazy protocol witness table accessor for type _ViewModifier_Content<ParticipantView.ShouldHideBlockLabel> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ParticipantView.ShouldHideBlockLabel> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails011ParticipantC0V20ShouldHideBlockLabelVGMd);
  return _ConditionalContent<>.init(storage:)();
}

uint64_t View.contactCellHoverEffect()(uint64_t a1, uint64_t a2)
{
  v4 = ParticipantGrid.StyleGuide.default.unsafeMutableAddressor();
  v6 = v4[1];
  v5 = v4[2];
  v39[0] = *v4;
  v39[1] = v6;
  v39[2] = v5;
  v7 = v4[6];
  v9 = v4[3];
  v8 = v4[4];
  v39[5] = v4[5];
  v39[6] = v7;
  v39[3] = v9;
  v39[4] = v8;
  v10 = v4[10];
  v12 = v4[7];
  v11 = v4[8];
  v39[9] = v4[9];
  v39[10] = v10;
  v39[7] = v12;
  v39[8] = v11;
  v14 = v4[12];
  v13 = v4[13];
  v15 = v4[11];
  v40 = *(v4 + 28);
  v39[12] = v14;
  v39[13] = v13;
  v39[11] = v15;
  v16 = v4[13];
  v53 = v4[12];
  v54 = v16;
  v55 = *(v4 + 28);
  v17 = v4[9];
  v49 = v4[8];
  v50 = v17;
  v18 = v4[11];
  v51 = v4[10];
  v52 = v18;
  v19 = v4[5];
  v45 = v4[4];
  v46 = v19;
  v20 = v4[7];
  v47 = v4[6];
  v48 = v20;
  v21 = v4[1];
  v41 = *v4;
  v42 = v21;
  v22 = v4[3];
  v43 = v4[2];
  v44 = v22;
  v36 = v53;
  v37 = v54;
  v38 = v55;
  v32 = v49;
  v33 = v50;
  v34 = v51;
  v35 = v52;
  v28 = v45;
  v29 = v46;
  v30 = v47;
  v31 = v48;
  v24 = v41;
  v25 = v21;
  v26 = v43;
  v27 = v22;
  outlined init with copy of ParticipantGrid.StyleGuide(v39, v56);
  MEMORY[0x193AEA300](&v24, a1, &type metadata for ParticipantView.ContactCellHoverEffect, a2);
  v56[12] = v36;
  v56[13] = v37;
  v57 = v38;
  v56[8] = v32;
  v56[9] = v33;
  v56[10] = v34;
  v56[11] = v35;
  v56[4] = v28;
  v56[5] = v29;
  v56[6] = v30;
  v56[7] = v31;
  v56[0] = v24;
  v56[1] = v25;
  v56[2] = v26;
  v56[3] = v27;
  return outlined destroy of ParticipantView.ContactCellHoverEffect(v56);
}

uint64_t View.shouldHideBlockLabel(_:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = ParticipantGrid.StyleGuide.default.unsafeMutableAddressor();
  v8 = v6[1];
  v7 = v6[2];
  v40[0] = *v6;
  v40[1] = v8;
  v40[2] = v7;
  v9 = v6[6];
  v11 = v6[3];
  v10 = v6[4];
  v40[5] = v6[5];
  v40[6] = v9;
  v40[3] = v11;
  v40[4] = v10;
  v12 = v6[10];
  v14 = v6[7];
  v13 = v6[8];
  v40[9] = v6[9];
  v40[10] = v12;
  v40[7] = v14;
  v40[8] = v13;
  v16 = v6[12];
  v15 = v6[13];
  v17 = v6[11];
  v41 = *(v6 + 28);
  v40[12] = v16;
  v40[13] = v15;
  v40[11] = v17;
  v18 = v6[13];
  v54 = v6[12];
  v55 = v18;
  v56 = *(v6 + 28);
  v19 = v6[9];
  v50 = v6[8];
  v51 = v19;
  v20 = v6[11];
  v52 = v6[10];
  v53 = v20;
  v21 = v6[5];
  v46 = v6[4];
  v47 = v21;
  v22 = v6[7];
  v48 = v6[6];
  v49 = v22;
  v23 = v6[1];
  v42 = *v6;
  v43 = v23;
  v24 = v6[3];
  v44 = v6[2];
  v45 = v24;
  v38 = v54;
  *v39 = v55;
  *&v39[16] = v56;
  v34 = v50;
  v35 = v51;
  v36 = v52;
  v37 = v53;
  v30 = v46;
  v31 = v47;
  v32 = v48;
  v33 = v49;
  v26 = v42;
  v27 = v23;
  v28 = v44;
  v29 = v24;
  v39[24] = a1;
  outlined init with copy of ParticipantGrid.StyleGuide(v40, v57);
  MEMORY[0x193AEA300](&v26, a2, &type metadata for ParticipantView.ShouldHideBlockLabel, a3);
  v57[12] = v38;
  v58[0] = *v39;
  *(v58 + 9) = *&v39[9];
  v57[8] = v34;
  v57[9] = v35;
  v57[10] = v36;
  v57[11] = v37;
  v57[4] = v30;
  v57[5] = v31;
  v57[6] = v32;
  v57[7] = v33;
  v57[0] = v26;
  v57[1] = v27;
  v57[2] = v28;
  v57[3] = v29;
  return outlined destroy of ParticipantView.ShouldHideBlockLabel(v57);
}

uint64_t View.participantContextMenu(viewModel:presentationProxy:previewTarget:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1;

  ParticipantView.ContextMenuModifier.init(viewModel:presentationProxy:previewTarget:)();
  v9 = v8;
  v13[0] = v8;
  v13[1] = v10;
  v14 = v11 & 1;
  MEMORY[0x193AEA300](v13, a4, &type metadata for ParticipantView.ContextMenuModifier, a5);
}

__n128 __swift_memcpy232_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ParticipantView.ContactCellHoverEffect(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
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

uint64_t storeEnumTagSinglePayload for ParticipantView.ContactCellHoverEffect(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 232) = 1;
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

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy233_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 217) = *(a2 + 217);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ParticipantView.ShouldHideBlockLabel(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 233))
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

uint64_t storeEnumTagSinglePayload for ParticipantView.ShouldHideBlockLabel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 232) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 233) = 1;
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

    *(result + 233) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<ParticipantView.ShouldHideBlockLabel> and conformance _ViewModifier_Content<A>(unint64_t *a1, uint64_t *a2)
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ViewModifier_Content<ParticipantView.ShouldHideBlockLabel>, EmptyView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ViewModifier_Content<ParticipantView.ShouldHideBlockLabel>, EmptyView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ViewModifier_Content<ParticipantView.ShouldHideBlockLabel>, EmptyView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA014_ViewModifier_D0Vy20CommunicationDetails011ParticipantE0V20ShouldHideBlockLabelVGAA05EmptyE0VGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<ParticipantView.ShouldHideBlockLabel> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ParticipantView.ShouldHideBlockLabel> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails011ParticipantC0V20ShouldHideBlockLabelVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ViewModifier_Content<ParticipantView.ShouldHideBlockLabel>, EmptyView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticipantView.ContactCellHoverEffect and conformance ParticipantView.ContactCellHoverEffect()
{
  result = lazy protocol witness table cache variable for type ParticipantView.ContactCellHoverEffect and conformance ParticipantView.ContactCellHoverEffect;
  if (!lazy protocol witness table cache variable for type ParticipantView.ContactCellHoverEffect and conformance ParticipantView.ContactCellHoverEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantView.ContactCellHoverEffect and conformance ParticipantView.ContactCellHoverEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticipantView.ShouldHideBlockLabel and conformance ParticipantView.ShouldHideBlockLabel()
{
  result = lazy protocol witness table cache variable for type ParticipantView.ShouldHideBlockLabel and conformance ParticipantView.ShouldHideBlockLabel;
  if (!lazy protocol witness table cache variable for type ParticipantView.ShouldHideBlockLabel and conformance ParticipantView.ShouldHideBlockLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantView.ShouldHideBlockLabel and conformance ParticipantView.ShouldHideBlockLabel);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx20CommunicationDetails011ParticipantC0V22ContactCellHoverEffectVGAaBHPxAaBHD1__AiA0C8ModifierHPyHCHCTm(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  type metadata accessor for ModifiedContent();
  a3();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type ParticipantView.ContextMenuModifier and conformance ParticipantView.ContextMenuModifier()
{
  result = lazy protocol witness table cache variable for type ParticipantView.ContextMenuModifier and conformance ParticipantView.ContextMenuModifier;
  if (!lazy protocol witness table cache variable for type ParticipantView.ContextMenuModifier and conformance ParticipantView.ContextMenuModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantView.ContextMenuModifier and conformance ParticipantView.ContextMenuModifier);
  }

  return result;
}

uint64_t TabItemView.tab.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 24);
  *(a1 + 32) = v3;
}

double key path getter for TabItemView.selectedTab : TabItemView@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy20CommunicationDetails0E3TabVSgGMd);
  MEMORY[0x193AEA550](v6, v2);
  v3 = v7;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

uint64_t key path setter for TabItemView.selectedTab : TabItemView(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  v3 = *(a2 + 72);
  outlined copy of DetailsTab?(*a1, a1[1]);

  outlined copy of DetailsTab?(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy20CommunicationDetails0E3TabVSgGMd);
  Binding.wrappedValue.setter();

  return outlined consume of DetailsTab?(v2, v3);
}

uint64_t TabItemView.selectedTab.setter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  outlined copy of DetailsTab?(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy20CommunicationDetails0E3TabVSgGMd);
  Binding.wrappedValue.setter();

  return outlined consume of DetailsTab?(v1, v2);
}

void (*TabItemView.selectedTab.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x100uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[6];
  v6 = v1[7];
  v4[24] = v5;
  v4[25] = v6;
  v7 = v1[8];
  v8 = v1[9];
  v4[26] = v7;
  v4[27] = v8;
  v9 = v1[10];
  v10 = v1[11];
  v4[28] = v9;
  v4[29] = v10;
  v11 = v1[12];
  v4[30] = v11;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  v4[4] = v9;
  v4[5] = v10;
  v4[6] = v11;

  outlined copy of DetailsTab?(v7, v8);
  v4[31] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy20CommunicationDetails0E3TabVSgGMd);
  MEMORY[0x193AEA550]();
  return TabItemView.selectedTab.modify;
}

void TabItemView.selectedTab.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 224);
  *(v3 + 72) = *(*a1 + 208);
  v5 = *(v3 + 200);
  *(v3 + 56) = *(v3 + 192);
  v6 = *(v3 + 112);
  *(v3 + 152) = v6;
  v7 = *(v3 + 120);
  v8 = *(v3 + 128);
  v9 = *(v3 + 136);
  v10 = *(v3 + 144);
  v11 = *(v3 + 240);
  *(v3 + 64) = v5;
  *(v3 + 88) = v4;
  *(v3 + 104) = v11;
  *(v3 + 160) = v7;
  *(v3 + 168) = v8;
  *(v3 + 176) = v9;
  *(v3 + 184) = v10;
  if (a2)
  {
    outlined copy of DetailsTab?(v6, v7);
    Binding.wrappedValue.setter();
    v12 = *(v3 + 72);
    v13 = *(v3 + 80);

    outlined consume of DetailsTab?(v12, v13);
    v14 = *(v3 + 112);
    v15 = *(v3 + 120);
  }

  else
  {
    Binding.wrappedValue.setter();
    v16 = *(v3 + 72);
    v17 = *(v3 + 80);

    v14 = v16;
    v15 = v17;
  }

  outlined consume of DetailsTab?(v14, v15);

  free(v3);
}

uint64_t TabItemView.tabItem.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails10AnyTabItemCGMd);
  State.wrappedValue.getter();
  return v1;
}

uint64_t key path getter for TabItemView.tabItem : TabItemView@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails10AnyTabItemCGMd);
  result = State.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t key path setter for TabItemView.tabItem : TabItemView()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails10AnyTabItemCGMd);
  return State.wrappedValue.setter();
}

void (*TabItemView.tabItem.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = *(v1 + 104);
  v5 = *(v1 + 112);
  v4[6] = v6;
  v4[7] = v5;
  *v4 = v6;
  v4[1] = v5;

  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails10AnyTabItemCGMd);
  State.wrappedValue.getter();
  return TabItemView.tabItem.modify;
}

void TabItemView.tabItem.modify(uint64_t a1, char a2)
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

uint64_t TabItemView.$tabItem.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails10AnyTabItemCGMd);
  State.projectedValue.getter();
  return v1;
}

double TabItemView.init(namespace:tab:selectedTab:styleGuide:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[4];
  v9 = *a3;
  v10 = a3[1];
  v11 = a3[6];
  v18 = a4[2];
  v19 = a4[3];
  v20 = a4[4];
  v21 = a4[5];
  v16 = *a4;
  v17 = a4[1];
  *a5 = a1;
  *(a5 + 8) = v6;
  *(a5 + 16) = v7;
  *(a5 + 24) = *(a2 + 1);
  *(a5 + 40) = v8;
  *(a5 + 48) = v9;
  *(a5 + 56) = v10;
  v12 = *(a3 + 2);
  *(a5 + 64) = *(a3 + 1);
  *(a5 + 80) = v12;
  *(a5 + 96) = v11;
  type metadata accessor for AnyTabItem();

  State.init(wrappedValue:)();
  *(a5 + 152) = v18;
  *(a5 + 168) = v19;
  *(a5 + 184) = v20;
  *(a5 + 200) = v21;
  result = *&v16;
  *(a5 + 120) = v16;
  *(a5 + 104) = v14;
  *(a5 + 112) = v15;
  *(a5 + 136) = v17;
  return result;
}

uint64_t TabItemView.isSelected.getter()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy20CommunicationDetails0E3TabVSgGMd);
  MEMORY[0x193AEA550](&v8, v3);
  v4 = v8;
  v5 = v9;
  if (!v9)
  {
    if (!v1)
    {

      outlined consume of DetailsTab?(v4, 0);
      v6 = 1;
      return v6 & 1;
    }

    goto LABEL_7;
  }

  if (!v1)
  {

    outlined copy of DetailsTab?(v4, v5);

LABEL_7:
    outlined consume of DetailsTab?(v4, v5);
    outlined consume of DetailsTab?(v2, v1);
    v6 = 0;
    return v6 & 1;
  }

  outlined copy of DetailsTab?(v4, v5);
  lazy protocol witness table accessor for type DetailsTab and conformance DetailsTab();
  v6 = dispatch thunk of static Equatable.== infix(_:_:)();

  outlined consume of DetailsTab?(v4, v5);
  return v6 & 1;
}

uint64_t TabItemView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = type metadata accessor for PlainButtonStyle();
  v3 = *(v2 - 8);
  v41 = v2;
  v42 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA4TextVAA14_OpacityEffectVGAA14_PaddingLayoutVGAA24_ForegroundStyleModifierVyAA08AnyShapeL0VGGGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAIyAA4TextVAA14_OpacityEffectVGAA14_PaddingLayoutVGAA011_ForegroundE8ModifierVyAA08AnyShapeE0VGGG_AA05PlaingE0VQo_Md);
  v43 = *(v10 - 8);
  v44 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyAA4TextVAA14_OpacityEffectVGAA14_PaddingLayoutVGAA011_ForegroundG8ModifierVyAA08AnyShapeG0VGGG_AA05PlainiG0VQo_AMGMd);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v40 - v15;
  v17 = v1[11];
  v59 = v1[10];
  v60 = v17;
  v61 = v1[12];
  v62 = *(v1 + 26);
  v18 = v1[7];
  v55 = v1[6];
  v56 = v18;
  v19 = v1[9];
  v57 = v1[8];
  v58 = v19;
  v20 = v1[3];
  v51 = v1[2];
  v52 = v20;
  v21 = v1[5];
  v53 = v1[4];
  v54 = v21;
  v22 = v1[1];
  v49 = *v1;
  v50 = v22;
  v23 = swift_allocObject();
  v24 = v1[11];
  *(v23 + 176) = v1[10];
  *(v23 + 192) = v24;
  *(v23 + 208) = v1[12];
  *(v23 + 224) = *(v1 + 26);
  v25 = v1[7];
  *(v23 + 112) = v1[6];
  *(v23 + 128) = v25;
  v26 = v1[9];
  *(v23 + 144) = v1[8];
  *(v23 + 160) = v26;
  v27 = v1[3];
  *(v23 + 48) = v1[2];
  *(v23 + 64) = v27;
  v28 = v1[5];
  *(v23 + 80) = v1[4];
  *(v23 + 96) = v28;
  v29 = v1[1];
  *(v23 + 16) = *v1;
  *(v23 + 32) = v29;
  v46 = &v49;
  outlined init with copy of TabItemView(&v49, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_OpacityEffectVGAA14_PaddingLayoutVGAA24_ForegroundStyleModifierVyAA08AnyShapeK0VGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _PaddingLayout>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  lazy protocol witness table accessor for type _ForegroundStyleModifier<AnyShapeStyle> and conformance _ForegroundStyleModifier<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _PaddingLayout>, _ForegroundStyleModifier<AnyShapeStyle>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA4TextVAA14_OpacityEffectVGAA14_PaddingLayoutVGAA24_ForegroundStyleModifierVyAA08AnyShapeL0VGGGMd);
  lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle();
  v30 = v41;
  View.buttonStyle<A>(_:)();
  (*(v42 + 8))(v5, v30);
  (*(v7 + 8))(v9, v6);
  v47[10] = v59;
  v47[11] = v60;
  v47[12] = v61;
  v48 = v62;
  v47[6] = v55;
  v47[7] = v56;
  v47[8] = v57;
  v47[9] = v58;
  v47[2] = v51;
  v47[3] = v52;
  v47[4] = v53;
  v47[5] = v54;
  v47[0] = v49;
  v47[1] = v50;
  if (TabItemView.isSelected.getter())
  {
    v31 = 1.0;
  }

  else
  {
    v31 = 0.5;
  }

  (*(v43 + 32))(v16, v12, v44);
  *&v16[*(v14 + 44)] = v31;
  v32 = static Alignment.center.getter();
  v34 = v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyAA4TextVAA14_OpacityEffectVGAA14_PaddingLayoutVGAA011_ForegroundG8ModifierVyAA08AnyShapeG0VGGG_AA05PlainiG0VQo_AMGAA011_BackgroundP0VyACyAA01_rE0VyAA7CapsuleVAUGAA016_MatchedGeometryL0VySSGGSgGGMd);
  v36 = v45;
  v37 = v45 + *(v35 + 36);
  closure #3 in TabItemView.body.getter(&v49, v37);
  v38 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA10_ShapeViewVyAA7CapsuleVAA03AnyG5StyleVGAA22_MatchedGeometryEffectVySSGGSgGMd) + 36));
  *v38 = v32;
  v38[1] = v34;
  return sub_19011BB78(v16, v36);
}

uint64_t partial apply for closure #1 in TabItemView.body.getter()
{
  v1 = v0;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(v0 + 80);
  v19[0] = *(v0 + 64);
  v19[1] = v2;
  v4 = *(v0 + 64);
  v3 = *(v0 + 80);
  v19[2] = *(v0 + 96);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = *(v0 + 56);
  v20 = *(v1 + 112);
  v15 = v4;
  v16 = v3;
  v17 = *(v1 + 96);
  v18 = *(v1 + 112);
  v11 = v6;
  v12 = v5;
  v13 = *(v1 + 40);
  v14 = v7;

  outlined init with copy of Binding<DetailsTab?>(v19, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy20CommunicationDetails0E3TabVSgGMd);
  Binding.wrappedValue.setter();
  v8 = v16;

  outlined consume of DetailsTab?(v8, *(&v8 + 1));
}

__n128 partial apply for closure #2 in TabItemView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails10AnyTabItemCGMd);
  v4 = State.wrappedValue.getter();
  (*(*v26 + 96))(v4);
  v6 = v5;

  ObjectType = swift_getObjectType();
  (*(v6 + 32))(ObjectType, v6);
  swift_unknownObjectRelease();
  lazy protocol witness table accessor for type String and conformance String();
  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  v13 = *(v3 + 128);
  v24 = *(v3 + 160);
  v25 = *(v3 + 144);
  v14 = Text.font(_:)();
  v16 = v15;
  v18 = v17;
  v23 = v19;
  outlined consume of Text.Storage(v8, v10, v12 & 1);

  if (TabItemView.isSelected.getter())
  {
    v20 = 1.0;
  }

  else
  {
    v20 = 0.5;
  }

  v21 = static Edge.Set.all.getter();

  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v23;
  *(a1 + 32) = v20;
  *(a1 + 40) = v21;
  result = v25;
  *(a1 + 48) = v25;
  *(a1 + 64) = v24;
  *(a1 + 80) = 0;
  *(a1 + 88) = v13;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _PaddingLayout>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _PaddingLayout>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _PaddingLayout>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_OpacityEffectVGAA14_PaddingLayoutVGAA24_ForegroundStyleModifierVyAA08AnyShapeK0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ForegroundStyleModifier<AnyShapeStyle> and conformance _ForegroundStyleModifier<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<AnyShapeStyle> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA08AnyShapeD0VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _PaddingLayout>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_OpacityEffectVGAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA14_OpacityEffectVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle()
{
  result = lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle;
  if (!lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle)
  {
    type metadata accessor for PlainButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle);
  }

  return result;
}

uint64_t closure #3 in TabItemView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA7CapsuleVAA03AnyE5StyleVGAA22_MatchedGeometryEffectVySSGGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA7CapsuleVAA03AnyE5StyleVGAA22_MatchedGeometryEffectVySSGGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (TabItemView.isSelected.getter())
  {
    v11 = *MEMORY[0x1E697F468];
    v12 = type metadata accessor for RoundedCornerStyle();
    (*(*(v12 - 8) + 104))(v7, v11, v12);
    v13 = a1[17];
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA7CapsuleVAA03AnyC5StyleVGMd);
    *&v7[*(v14 + 52)] = v13;
    *&v7[*(v14 + 56)] = 256;
    v15 = *a1;

    LODWORD(v13) = static MatchedGeometryProperties.frame.getter();
    static UnitPoint.center.getter();
    v16 = &v7[*(v4 + 36)];
    *v16 = 0x64657463656C6553;
    *(v16 + 1) = 0xEB00000000626154;
    *(v16 + 2) = v15;
    *(v16 + 6) = v13;
    *(v16 + 4) = v17;
    *(v16 + 5) = v18;
    v16[48] = 1;
    outlined init with take of ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _MatchedGeometryEffect<String>>?(v7, v10, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA7CapsuleVAA03AnyE5StyleVGAA22_MatchedGeometryEffectVySSGGMd);
    (*(v5 + 56))(v10, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v10, 1, 1, v4);
  }

  outlined init with take of ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _MatchedGeometryEffect<String>>?(v10, a2, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA7CapsuleVAA03AnyE5StyleVGAA22_MatchedGeometryEffectVySSGGSgMd);
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TabItemView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
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

uint64_t storeEnumTagSinglePayload for TabItemView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OpacityEffect>, _BackgroundModifier<ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _MatchedGeometryEffect<String>>?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OpacityEffect>, _BackgroundModifier<ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _MatchedGeometryEffect<String>>?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OpacityEffect>, _BackgroundModifier<ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _MatchedGeometryEffect<String>>?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyAA4TextVAA14_OpacityEffectVGAA14_PaddingLayoutVGAA011_ForegroundG8ModifierVyAA08AnyShapeG0VGGG_AA05PlainiG0VQo_AMGAA011_BackgroundP0VyACyAA01_rE0VyAA7CapsuleVAUGAA016_MatchedGeometryL0VySSGGSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ForegroundStyleModifier<AnyShapeStyle> and conformance _ForegroundStyleModifier<A>(&lazy protocol witness table cache variable for type _BackgroundModifier<ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _MatchedGeometryEffect<String>>?> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA10_ShapeViewVyAA7CapsuleVAA03AnyG5StyleVGAA22_MatchedGeometryEffectVySSGGSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OpacityEffect>, _BackgroundModifier<ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _MatchedGeometryEffect<String>>?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyAA4TextVAA14_OpacityEffectVGAA14_PaddingLayoutVGAA011_ForegroundG8ModifierVyAA08AnyShapeG0VGGG_AA05PlainiG0VQo_AMGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA4TextVAA14_OpacityEffectVGAA14_PaddingLayoutVGAA24_ForegroundStyleModifierVyAA08AnyShapeL0VGGGMd);
    type metadata accessor for PlainButtonStyle();
    lazy protocol witness table accessor for type _ForegroundStyleModifier<AnyShapeStyle> and conformance _ForegroundStyleModifier<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _PaddingLayout>, _ForegroundStyleModifier<AnyShapeStyle>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA4TextVAA14_OpacityEffectVGAA14_PaddingLayoutVGAA24_ForegroundStyleModifierVyAA08AnyShapeL0VGGGMd);
    lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ForegroundStyleModifier<AnyShapeStyle> and conformance _ForegroundStyleModifier<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined init with take of ModifiedContent<_ShapeView<Capsule, AnyShapeStyle>, _MatchedGeometryEffect<String>>?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined consume of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t outlined init with copy of Binding<DetailsTab?>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy20CommunicationDetails0E3TabVSgGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TabItem.title.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v11 - v6;
  (*(a2 + 56))(a1, a2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v5 + 8))(v7, AssociatedTypeWitness);
  return v9;
}

uint64_t TabItem.editMenuTitle.getter(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 88))())
  {
    return (*(a2 + 32))(a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t TabItem.allowsEditingElements.getter()
{
  return 1;
}

{
  return 1;
}

uint64_t TabItem.isEditingElements.getter()
{
  return 0;
}

{
  return 0;
}

void (*TabItem.isEditingElements.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = TabItem.isEditingElements.modify(v2);
  return TabItem.isEditingElements.modify;
}

void TabItem.isEditingElements.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t TabItem.wantsPlatterBlur.getter()
{
  return 0;
}

{
  return 0;
}

uint64_t TabItem.hasFilterSelected.getter()
{
  return 0;
}

{
  return 0;
}

uint64_t TabItem.position.getter()
{
  return -1;
}

{
  return -1;
}

void TabItem.editingToolbarConfiguration(completion:)(void *a1@<X8>)
{
  TabItem.editingToolbarConfiguration(completion:)(a1);
}

{
  *a1 = 0;
  a1[1] = 0;
}

uint64_t TabItem.updateCurrentSelection(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v19[-v11 - 8];
  outlined init with copy of TabSubOption(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails12TabSubOption_pMd);
  swift_dynamicCast();
  (*(a3 + 64))(v12, a2, a3);
  result = TabItem.supportsMenu.getter(a2, a3);
  if (result)
  {
    v14 = Logger.detailsViewController.unsafeMutableAddressor();
    (*(v7 + 16))(v9, v14, v6);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      MEMORY[0x193AEBB30](v17, -1, -1);
    }

    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

BOOL TabItem.supportsMenu.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 80))();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = MEMORY[0x193AEAA00](v2, AssociatedTypeWitness);

  return v4 > 1;
}

uint64_t specialized TabItem.allOptions.getter()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  swift_checkMetadataState();
  dispatch thunk of static CaseIterable.allCases.getter();
  swift_getAssociatedConformanceWitness();
  return Array.init<A>(_:)();
}

uint64_t outlined init with copy of TabSubOption(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t closure #1 in PhotosGridViewController.viewDidLayoutSubviews()(void *a1)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for PhotosGridViewController();
  objc_msgSendSuper2(&v6, sel_viewDidLayoutSubviews);
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x228))(1);
  result = (*((*v2 & *a1) + 0x1F0))(v3);
  if ((result & 1) == 0)
  {
    result = (*((*v2 & *a1) + 0x1D8))();
    if ((result & 1) == 0)
    {
      result = (*((*v2 & *a1) + 0x1C0))();
      if ((result & 1) == 0)
      {
        MEMORY[0x1EEE9AC00](result);
        return PhotosGridViewController.pxScrollLog<A>(function:_:)(0xD000000000000021, v5 | 0x8000000000000000, closure #1 in PhotosGridViewController.scrollToInitialPositionIfNeeded()partial apply);
      }
    }
  }

  return result;
}

Swift::Void __swiftcall PhotosGridViewController.scrollToInitialPositionIfNeeded()()
{
  v1 = MEMORY[0x1E69E7D40];
  if (((*((*MEMORY[0x1E69E7D40] & *v0) + 0x1F0))() & 1) == 0 && ((*((*v1 & *v0) + 0x1D8))() & 1) == 0)
  {
    v2 = (*((*v1 & *v0) + 0x1C0))();
    if ((v2 & 1) == 0)
    {
      MEMORY[0x1EEE9AC00](v2);
      PhotosGridViewController.pxScrollLog<A>(function:_:)(0xD000000000000021, v3 | 0x8000000000000000, partial apply for closure #1 in PhotosGridViewController.scrollToInitialPositionIfNeeded());
    }
  }
}

uint64_t closure #1 in PhotosGridViewController.viewSafeAreaInsetsDidChange()(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x1D8);
  if (v3())
  {
    v16.receiver = a1;
    v16.super_class = type metadata accessor for PhotosGridViewController();
    v4 = objc_msgSendSuper2(&v16, sel_viewSafeAreaInsetsDidChange);
    v5 = (*((*v2 & *a1) + 0x208))(v4);
    if ((v5 & 1) == 0)
    {
      v6 = *((*v2 & *a1) + 0x210);
      v7 = v6(1);
      v8 = (*((*v2 & *a1) + 0x128))(v7);
      if (v8)
      {
        v10 = MEMORY[0x1EEE9AC00](v8);
        PhotosGridViewController.pxScrollLog<A>(function:_:)(0xD000000000000016, v9 | 0x8000000000000000, closure #1 in PhotosGridViewController.updateSafeAreaInsets()partial apply);
      }

      v5 = v6(0);
    }
  }

  else
  {
    v11 = *((*v2 & *a1) + 0x1E0);
    v12 = v11(1);
    MEMORY[0x1EEE9AC00](v12);
    PhotosGridViewController.pxScrollLog<A>(function:_:)(0xD00000000000001FLL, v13 | 0x8000000000000000, closure #1 in PhotosGridViewController.withPreservedScrollPosition<A>(_:)specialized partial apply);
    v5 = v11(0);
  }

  result = (*((*v2 & *a1) + 0x1F0))(v5);
  if ((result & 1) == 0)
  {
    result = v3();
    if ((result & 1) == 0)
    {
      result = (*((*v2 & *a1) + 0x1C0))();
      if ((result & 1) == 0)
      {
        MEMORY[0x1EEE9AC00](result);
        return PhotosGridViewController.pxScrollLog<A>(function:_:)(0xD000000000000021, v15 | 0x8000000000000000, closure #1 in PhotosGridViewController.scrollToInitialPositionIfNeeded()partial apply);
      }
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in PhotosGridViewController.viewSafeAreaInsetsDidChange()(void *a1)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for PhotosGridViewController();
  v2 = objc_msgSendSuper2(&v10, sel_viewSafeAreaInsetsDidChange);
  v3 = MEMORY[0x1E69E7D40];
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x208))(v2);
  if ((result & 1) == 0)
  {
    v5 = *((*v3 & *a1) + 0x210);
    v6 = v5(1);
    v7 = (*((*v3 & *a1) + 0x128))(v6);
    if (v7)
    {
      v9 = MEMORY[0x1EEE9AC00](v7);
      PhotosGridViewController.pxScrollLog<A>(function:_:)(0xD000000000000016, v8 | 0x8000000000000000, closure #1 in PhotosGridViewController.updateSafeAreaInsets()partial apply);
    }

    return v5(0);
  }

  return result;
}

Swift::Void __swiftcall PhotosGridViewController.updateSafeAreaInsets()()
{
  v1 = MEMORY[0x1E69E7D40];
  if (((*((*MEMORY[0x1E69E7D40] & *v0) + 0x208))() & 1) == 0)
  {
    v2 = *((*v1 & *v0) + 0x210);
    v3 = v2(1);
    v4 = (*((*v1 & *v0) + 0x128))(v3);
    if (v4)
    {
      MEMORY[0x1EEE9AC00](v4);
      v7 = v6;
      PhotosGridViewController.pxScrollLog<A>(function:_:)(0xD000000000000016, v5 | 0x8000000000000000, partial apply for closure #1 in PhotosGridViewController.updateSafeAreaInsets());
    }

    v2(0);
  }
}

uint64_t PhotosGridViewController.withPreservedScrollPosition<A>(_:)(uint64_t (*a1)(void))
{
  v3 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x1D8))())
  {
    return a1();
  }

  v5 = *((*v3 & *v1) + 0x1E0);
  v6 = v5(1);
  MEMORY[0x1EEE9AC00](v6);
  PhotosGridViewController.pxScrollLog<A>(function:_:)(0xD00000000000001FLL, v7 | 0x8000000000000000, partial apply for closure #1 in PhotosGridViewController.withPreservedScrollPosition<A>(_:));
  return v5(0);
}

void closure #1 in PhotosGridViewController.scrollToInitialPositionIfNeeded()(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x250);
  v4 = *v3();
  v5 = (*(v4 + 816))();

  if ((v5 & 1) != 0 && (v7 = *((*v2 & *a1) + 0x128), (v8 = (v7)(v6)) != 0))
  {
    v9 = v8;
    v39 = "viewDidLayoutSubviews()";
    v10 = PhotosGridViewController.pxScrollLog(_:function:)(implicit closure #1 in closure #1 in PhotosGridViewController.scrollToInitialPositionIfNeeded(), 0, 0xD000000000000021, 0x80000001901FCA30);
    if (((*((*v2 & *a1) + 0x208))(v10) & 1) == 0)
    {
      v38 = *((*v2 & *a1) + 0x210);
      v11 = v38(1);
      v12 = (v7)(v11);
      if (v12)
      {
        v36[1] = v36;
        MEMORY[0x1EEE9AC00](v12);
        v34 = *&a1;
        v35 = v13;
        v15 = v7;
        v16 = v13;
        PhotosGridViewController.pxScrollLog<A>(function:_:)(0xD000000000000016, v14 | 0x8000000000000000, closure #1 in PhotosGridViewController.updateSafeAreaInsets()partial apply);

        v7 = v15;
      }

      v38(0);
    }

    v37 = v7;
    v17 = v39;
    PhotosGridViewController.pxScrollLog(_:function:)(implicit closure #2 in closure #1 in PhotosGridViewController.scrollToInitialPositionIfNeeded(), 0, 0xD000000000000021, v39 | 0x8000000000000000);
    v18 = *((*v2 & *a1) + 0x1C8);
    v38 = ((*v2 & *a1) + 456);
    v19 = v18(1);
    v20 = *(v3)(v19);
    v21 = (*(v20 + 440))();

    v22 = [v9 safeAreaInsets];
    v24 = v21 - v23;
    MEMORY[0x1EEE9AC00](v22);
    v32 = v24;
    v33 = a1;
    v34 = *&v9;
    v25 = PhotosGridViewController.pxScrollLog(_:function:)(partial apply for implicit closure #3 in closure #1 in PhotosGridViewController.scrollToInitialPositionIfNeeded(), &v31, 0xD000000000000021, v17 | 0x8000000000000000);
    if (((*((*v2 & *a1) + 0x1F0))(v25) & 1) == 0)
    {
      v26 = v37();
      if (v26)
      {
        MEMORY[0x1EEE9AC00](v26);
        v32 = *&a1;
        v33 = v27;
        v34 = v24;
        v28 = v27;
        PhotosGridViewController.pxScrollLog<A>(function:_:)(0x79286C6C6F726373, 0xEA0000000000293ALL, closure #1 in PhotosGridViewController.scroll(y:)partial apply);

        if (v40 == 1)
        {
          v29 = PhotosGridViewController.pxScrollLog(_:function:)(implicit closure #4 in closure #1 in PhotosGridViewController.scrollToInitialPositionIfNeeded(), 0, 0xD000000000000021, v39 | 0x8000000000000000);
          v30 = *(v3)(v29);
          (*(v30 + 496))(0);
        }
      }
    }

    v18(0);
  }

  else
  {
    PhotosGridViewController.pxScrollLog(_:function:)(implicit closure #5 in closure #1 in PhotosGridViewController.scrollToInitialPositionIfNeeded(), 0, 0xD000000000000021, 0x80000001901FCA30);
  }
}

uint64_t PhotosGridViewController.scroll(y:)()
{
  v1 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x1F0))())
  {
    return 0;
  }

  result = (*((*v1 & *v0) + 0x128))();
  if (result)
  {
    v3 = MEMORY[0x1EEE9AC00](result);
    PhotosGridViewController.pxScrollLog<A>(function:_:)(0x79286C6C6F726373, 0xEA0000000000293ALL, partial apply for closure #1 in PhotosGridViewController.scroll(y:));

    return v4;
  }

  return result;
}

id closure #1 in PhotosGridViewController.updateSafeAreaInsets()(void *a1, void *a2)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x250);
  v5 = *v4();
  v6 = (*(v5 + 360))();

  result = [a1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = result;
  [result safeAreaInsets];
  v10 = v9;

  v11 = *v4();
  v12 = (*(v11 + 560))();

  [a2 bounds];
  Height = CGRectGetHeight(v40);
  v14 = [a2 scrollViewController];
  [v14 scrollViewContentBounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v41.origin.x = v16;
  v41.origin.y = v18;
  v41.size.width = v20;
  v41.size.height = v22;
  v23 = CGRectGetHeight(v41);
  v24 = *v4();
  v25 = (*(v24 + 360))();

  result = [a1 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v26 = result;
  v27 = v6 - v10;
  v28 = v12 + Height - v23 - v25;
  [result safeAreaInsets];
  v30 = v29;

  if (v28 - v30 < 0.0)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = v28 - v30;
  }

  MEMORY[0x1EEE9AC00](v31);
  *v37 = v27;
  *&v37[1] = v32;
  v38 = a1;
  v39 = a2;
  PhotosGridViewController.pxScrollLog(_:function:)(partial apply for implicit closure #1 in closure #1 in PhotosGridViewController.updateSafeAreaInsets(), &v36, 0xD000000000000016, 0x80000001901FCA80);
  [a2 additionalSafeAreaInsets];
  v34 = v33;
  [a2 additionalSafeAreaInsets];
  v35 = [a2 setAdditionalSafeAreaInsets_];
  MEMORY[0x1EEE9AC00](v35);
  v38 = a2;
  return PhotosGridViewController.pxScrollLog(_:function:)(partial apply for implicit closure #2 in closure #1 in PhotosGridViewController.updateSafeAreaInsets(), v37, 0xD000000000000016, 0x80000001901FCA80);
}

uint64_t closure #1 in PhotosGridViewController.scroll(y:)@<X0>(void *a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>, double a4@<D0>)
{
  v7 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x1F8);
  v7(1);
  v8 = [a2 scrollViewController];
  [v8 setDeferContentOffsetUpdates_];

  v9 = [a2 scrollViewController];
  [a2 bounds];
  [v9 scrollRectToVisible:0 avoidingContentInsetEdges:0 animated:{0.0, a4, 1.0, CGRectGetHeight(v20)}];

  v19 = a2;
  PhotosGridViewController.pxScrollLog(_:function:)(partial apply for implicit closure #1 in closure #1 in PhotosGridViewController.scroll(y:), v18, 0x79286C6C6F726373, 0xEA0000000000293ALL);
  [a2 forceUpdate];
  v17[2] = a2;
  PhotosGridViewController.pxScrollLog(_:function:)(partial apply for implicit closure #2 in closure #1 in PhotosGridViewController.scroll(y:), v17, 0x79286C6C6F726373, 0xEA0000000000293ALL);
  v7(0);
  v10 = [a2 scrollViewController];
  [v10 visibleOrigin];
  v12 = v11;

  v13 = vabdd_f64(v12, a4);
  v14 = v13 <= 1.0;
  if (v13 > 1.0)
  {
    v15 = implicit closure #3 in closure #1 in PhotosGridViewController.scroll(y:);
  }

  else
  {
    v15 = implicit closure #4 in closure #1 in PhotosGridViewController.scroll(y:);
  }

  result = PhotosGridViewController.pxScrollLog(_:function:)(v15, 0, 0x79286C6C6F726373, 0xEA0000000000293ALL);
  *a3 = v14;
  return result;
}

void specialized closure #1 in PhotosGridViewController.withPreservedScrollPosition<A>(_:)(void *a1, uint64_t (*a2)(void))
{
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x128);
  v6 = v5();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 scrollViewController];
    [v8 visibleOrigin];
    v10 = v9;

    v11 = [v7 scrollViewController];
    [v11 visibleOrigin];
    v13 = v12;

    [v7 safeAreaInsets];
    v15 = v14;

    v16 = a2();
    v17 = (v5)(v16);
    if (v17)
    {
      v18 = v17;
      v19 = v13 + v15;
      [v17 forceUpdate];
      v20 = [v18 safeAreaInsets];
      v22 = v19 - v21;
      MEMORY[0x1EEE9AC00](v20);
      v33 = v19;
      v34 = v10;
      v35 = v22;
      v36 = v18;
      PhotosGridViewController.pxScrollLog(_:function:)(partial apply for implicit closure #1 in closure #1 in PhotosGridViewController.withPreservedScrollPosition<A>(_:), &v32, 0xD00000000000001FLL, 0x80000001901FCAA0);
      v23 = [v18 scrollViewController];
      [v23 visibleOrigin];
      v25 = v24;

      if (vabdd_f64(v22, v25) > 0.01)
      {
        v26 = PhotosGridViewController.pxScrollLog(_:function:)(implicit closure #2 in closure #1 in PhotosGridViewController.withPreservedScrollPosition<A>(_:), 0, 0xD00000000000001FLL, 0x80000001901FCAA0);
        v27 = (*((*v4 & *a1) + 0x1F0))(v26);
        if ((v27 & 1) != 0 || (v27 = v5()) == 0 || (v28 = MEMORY[0x1EEE9AC00](v27), v33 = *&a1, v34 = v28, v35 = v22, v29 = v28, PhotosGridViewController.pxScrollLog<A>(function:_:)(0x79286C6C6F726373, 0xEA0000000000293ALL, closure #1 in PhotosGridViewController.scroll(y:)partial apply), v29, (v37 & 1) == 0))
        {
          MEMORY[0x1EEE9AC00](v27);
          v35 = *&a1;
          v30 = PhotosGridViewController.pxScrollLog(_:function:)(partial apply for implicit closure #3 in closure #1 in PhotosGridViewController.withPreservedScrollPosition<A>(_:), &v33, 0xD00000000000001FLL, 0x80000001901FCAA0);
          if (((*((*v4 & *a1) + 0x1A8))(v30) & 1) == 0)
          {
            v31 = *(*((*v4 & *a1) + 0x250))();
            (*(v31 + 496))(1);
          }
        }
      }
    }
  }

  else
  {
    a2();
  }
}

void closure #1 in PhotosGridViewController.withPreservedScrollPosition<A>(_:)(void *a1, uint64_t (*a2)(void))
{
  v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x128);
  v5 = v4();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 scrollViewController];
    [v7 visibleOrigin];
    v9 = v8;

    v10 = [v6 scrollViewController];
    [v10 visibleOrigin];
    v12 = v11;

    [v6 safeAreaInsets];
    v14 = v13;

    v15 = a2();
    v16 = (v4)(v15);
    if (v16)
    {
      v17 = v16;
      v18 = v12 + v14;
      [v16 forceUpdate];
      v19 = [v17 safeAreaInsets];
      v21 = v18 - v20;
      MEMORY[0x1EEE9AC00](v19);
      v33 = v18;
      v34 = v9;
      v35 = v21;
      v36 = v17;
      PhotosGridViewController.pxScrollLog(_:function:)(implicit closure #1 in closure #1 in PhotosGridViewController.withPreservedScrollPosition<A>(_:)partial apply, &v32, 0xD00000000000001FLL, 0x80000001901FCAA0);
      v22 = [v17 scrollViewController];
      [v22 visibleOrigin];
      v24 = v23;

      if (vabdd_f64(v21, v24) > 0.01)
      {
        v25 = PhotosGridViewController.pxScrollLog(_:function:)(implicit closure #2 in closure #1 in PhotosGridViewController.withPreservedScrollPosition<A>(_:), 0, 0xD00000000000001FLL, 0x80000001901FCAA0);
        v26 = MEMORY[0x1E69E7D40];
        v27 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x1F0))(v25);
        if ((v27 & 1) != 0 || (v27 = v4()) == 0 || (MEMORY[0x1EEE9AC00](v27), v33 = *&a1, v34 = v28, v35 = v21, v29 = v28, PhotosGridViewController.pxScrollLog<A>(function:_:)(0x79286C6C6F726373, 0xEA0000000000293ALL, closure #1 in PhotosGridViewController.scroll(y:)partial apply), v29, (v37 & 1) == 0))
        {
          MEMORY[0x1EEE9AC00](v27);
          v35 = *&a1;
          v30 = PhotosGridViewController.pxScrollLog(_:function:)(implicit closure #3 in closure #1 in PhotosGridViewController.withPreservedScrollPosition<A>(_:)partial apply, &v33, 0xD00000000000001FLL, 0x80000001901FCAA0);
          if (((*((*v26 & *a1) + 0x1A8))(v30) & 1) == 0)
          {
            v31 = *(*((*v26 & *a1) + 0x250))();
            (*(v31 + 496))(1);
          }
        }
      }
    }
  }

  else
  {
    a2();
  }
}

uint64_t implicit closure #1 in closure #1 in PhotosGridViewController.withPreservedScrollPosition<A>(_:)(void *a1)
{
  _StringGuts.grow(_:)(84);
  MEMORY[0x193AEA970](0xD000000000000020, 0x80000001901FCC00);
  v2 = Double.description.getter();
  MEMORY[0x193AEA970](v2);

  MEMORY[0x193AEA970](0xD000000000000017, 0x80000001901FCC30);
  v3 = Double.description.getter();
  MEMORY[0x193AEA970](v3);

  MEMORY[0x193AEA970](45, 0xE100000000000000);
  v4 = Double.description.getter();
  MEMORY[0x193AEA970](v4);

  MEMORY[0x193AEA970](0xD000000000000014, 0x80000001901FCC50);
  v5 = [a1 scrollViewController];
  [v5 visibleOrigin];

  v6 = Double.description.getter();
  MEMORY[0x193AEA970](v6);

  return 0;
}

unint64_t implicit closure #3 in closure #1 in PhotosGridViewController.withPreservedScrollPosition<A>(_:)(void *a1)
{
  _StringGuts.grow(_:)(23);

  v3 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x1A8))(v2);
  v4 = (v3 & 1) == 0;
  if (v3)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v4)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  MEMORY[0x193AEA970](v5, v6);

  return 0xD000000000000015;
}

Swift::Void __swiftcall PhotosGridViewController.updateScrollMetrics()()
{
  v1 = MEMORY[0x1E69E7D40];
  if (((*((*MEMORY[0x1E69E7D40] & *v0) + 0x1C0))() & 1) == 0)
  {
    v2 = (*((*v1 & *v0) + 0x128))();
    if (v2)
    {
      v4 = MEMORY[0x1EEE9AC00](v2);
      PhotosGridViewController.pxScrollLog<A>(function:_:)(0xD000000000000015, v3 | 0x8000000000000000, partial apply for closure #1 in PhotosGridViewController.updateScrollMetrics());
    }
  }
}

void closure #1 in PhotosGridViewController.updateScrollMetrics()(void *a1, void *a2)
{
  v4 = [a1 scrollViewController];
  v40[2] = v4;
  PhotosGridViewController.pxScrollLog(_:function:)(partial apply for implicit closure #1 in closure #1 in PhotosGridViewController.updateScrollMetrics(), v40, 0xD000000000000015, 0x80000001901FCAC0);
  [v4 visibleOrigin];
  v6 = v5;
  v7 = [a1 safeAreaInsets];
  v9 = v6 + v8;
  v10 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x250);
  v11 = (v10)(v7);
  [v4 scrollViewContentBounds];
  Height = CGRectGetHeight(v47);
  [a1 bounds];
  v13 = CGRectGetHeight(v48);
  DetailsContentOffsetProxy.ScrollMetrics.init(contentOffsetY:contentHeight:containerHeight:)(Height, 1, v44, v9, v13);
  v41[1] = v44[1];
  v41[0] = v44[0];
  v42 = v45;
  v43 = v46;
  (*(*v11 + 808))(v41);

  if (v9 < 0.0)
  {
    [v4 setVerticalScrollIndicatorInsets_];
  }

  v14 = *(a2 + OBJC_IVAR____TtC20CommunicationDetails24PhotosGridViewController_headerContainerView);
  v15 = [a2 view];
  if (v15)
  {
    v16 = v15;
    [v15 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v49.origin.x = v18;
    v49.origin.y = v20;
    v49.size.width = v22;
    v49.size.height = v24;
    v25 = CGRectGetWidth(v49) * 0.5;
    v26 = v10();
    v27 = (*(*v26 + 216))(v26);

    v29 = v25 - v27 * 0.5;
    v30 = *(v10)(v28);
    v31 = (*(v30 + 360))();

    v33 = v9 - v31;
    v34 = (v10)(v32);
    v35 = (*(*v34 + 216))(v34);

    v37 = (v10)(v36);
    (*(*v37 + 216))(v37);
    v39 = v38;

    [v14 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t PhotosGridViewController.scrollViewControllerDidLayoutSubviews(_:)()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1F0))();
  if ((result & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    return PhotosGridViewController.pxScrollLog<A>(function:_:)(0xD000000000000029, v2 | 0x8000000000000000, partial apply for closure #1 in PhotosGridViewController.scrollViewControllerDidLayoutSubviews(_:));
  }

  return result;
}

uint64_t closure #1 in PhotosGridViewController.scrollViewControllerDidLayoutSubviews(_:)(void *a1, uint64_t a2)
{
  v21 = a2;
  PhotosGridViewController.pxScrollLog(_:function:)(partial apply for implicit closure #1 in closure #1 in PhotosGridViewController.scrollViewControllerDidLayoutSubviews(_:), v20, 0xD000000000000029, 0x80000001901FCAE0);
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x240))(1);
  v5 = *((*v3 & *a1) + 0x1D8);
  if ((v5)(v4))
  {
    v6 = (*((*v3 & *a1) + 0x208))();
    if ((v6 & 1) == 0)
    {
      v7 = *((*v3 & *a1) + 0x210);
      v8 = v7(1);
      v9 = (*((*v3 & *a1) + 0x128))(v8);
      if (v9)
      {
        v10 = MEMORY[0x1EEE9AC00](v9);
        PhotosGridViewController.pxScrollLog<A>(function:_:)(0xD000000000000016, v11 | 0x8000000000000000, closure #1 in PhotosGridViewController.updateSafeAreaInsets()partial apply);
      }

      v6 = v7(0);
    }

    v12 = (*((*v3 & *a1) + 0x1C0))(v6);
    if ((v12 & 1) == 0)
    {
      v12 = (*((*v3 & *a1) + 0x128))();
      if (v12)
      {
        v14 = MEMORY[0x1EEE9AC00](v12);
        PhotosGridViewController.pxScrollLog<A>(function:_:)(0xD000000000000015, v13 | 0x8000000000000000, closure #1 in PhotosGridViewController.updateScrollMetrics()partial apply);
      }
    }
  }

  else
  {
    v15 = *((*v3 & *a1) + 0x1E0);
    v16 = v15(1);
    MEMORY[0x1EEE9AC00](v16);
    PhotosGridViewController.pxScrollLog<A>(function:_:)(0xD00000000000001FLL, v17 | 0x8000000000000000, closure #1 in PhotosGridViewController.withPreservedScrollPosition<A>(_:)specialized partial apply);
    v12 = v15(0);
  }

  result = (*((*v3 & *a1) + 0x1F0))(v12);
  if ((result & 1) == 0)
  {
    result = v5();
    if ((result & 1) == 0)
    {
      result = (*((*v3 & *a1) + 0x1C0))();
      if ((result & 1) == 0)
      {
        MEMORY[0x1EEE9AC00](result);
        return PhotosGridViewController.pxScrollLog<A>(function:_:)(0xD000000000000021, v19 | 0x8000000000000000, closure #1 in PhotosGridViewController.scrollToInitialPositionIfNeeded()partial apply);
      }
    }
  }

  return result;
}

uint64_t PhotosGridViewController.scrollViewControllerDidScroll(_:)()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1F0))();
  if ((result & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    return PhotosGridViewController.pxScrollLog<A>(function:_:)(0xD000000000000021, v2 | 0x8000000000000000, partial apply for closure #1 in PhotosGridViewController.scrollViewControllerDidScroll(_:));
  }

  return result;
}

uint64_t closure #1 in PhotosGridViewController.scrollViewControllerDidScroll(_:)(void *a1, uint64_t a2)
{
  v21 = a2;
  v3 = PhotosGridViewController.pxScrollLog(_:function:)(partial apply for implicit closure #1 in closure #1 in PhotosGridViewController.scrollViewControllerDidScroll(_:), v20, 0xD000000000000021, 0x80000001901FCB10);
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x1D8);
  if ((v5)(v3))
  {
    v6 = (*((*v4 & *a1) + 0x208))();
    if ((v6 & 1) == 0)
    {
      v7 = *((*v4 & *a1) + 0x210);
      v8 = v7(1);
      v9 = (*((*v4 & *a1) + 0x128))(v8);
      if (v9)
      {
        v11 = MEMORY[0x1EEE9AC00](v9);
        PhotosGridViewController.pxScrollLog<A>(function:_:)(0xD000000000000016, v10 | 0x8000000000000000, closure #1 in PhotosGridViewController.updateSafeAreaInsets()partial apply);
      }

      v6 = v7(0);
    }

    v12 = (*((*v4 & *a1) + 0x1C0))(v6);
    if ((v12 & 1) == 0)
    {
      v12 = (*((*v4 & *a1) + 0x128))();
      if (v12)
      {
        v14 = MEMORY[0x1EEE9AC00](v12);
        PhotosGridViewController.pxScrollLog<A>(function:_:)(0xD000000000000015, v13 | 0x8000000000000000, closure #1 in PhotosGridViewController.updateScrollMetrics()partial apply);
      }
    }
  }

  else
  {
    v15 = *((*v4 & *a1) + 0x1E0);
    v16 = v15(1);
    MEMORY[0x1EEE9AC00](v16);
    PhotosGridViewController.pxScrollLog<A>(function:_:)(0xD00000000000001FLL, v17 | 0x8000000000000000, partial apply for specialized closure #1 in PhotosGridViewController.withPreservedScrollPosition<A>(_:));
    v12 = v15(0);
  }

  result = (*((*v4 & *a1) + 0x1F0))(v12);
  if ((result & 1) == 0)
  {
    result = v5();
    if ((result & 1) == 0)
    {
      result = (*((*v4 & *a1) + 0x1C0))();
      if ((result & 1) == 0)
      {
        MEMORY[0x1EEE9AC00](result);
        return PhotosGridViewController.pxScrollLog<A>(function:_:)(0xD000000000000021, v19 | 0x8000000000000000, closure #1 in PhotosGridViewController.scrollToInitialPositionIfNeeded()partial apply);
      }
    }
  }

  return result;
}

void closure #1 in closure #1 in PhotosGridViewController.scrollViewControllerDidLayoutSubviews(_:)(void *a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v6 = MEMORY[0x1E69E7D40];
  v7 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x208))();
  if ((v7 & 1) == 0)
  {
    v8 = *((*v6 & *a1) + 0x210);
    v9 = v8(1);
    v10 = (*((*v6 & *a1) + 0x128))(v9);
    if (v10)
    {
      v11 = MEMORY[0x1EEE9AC00](v10);
      PhotosGridViewController.pxScrollLog<A>(function:_:)(0xD000000000000016, v12 | 0x8000000000000000, a2);
    }

    v7 = v8(0);
  }

  if (((*((*v6 & *a1) + 0x1C0))(v7) & 1) == 0)
  {
    v13 = (*((*v6 & *a1) + 0x128))();
    if (v13)
    {
      v15 = MEMORY[0x1EEE9AC00](v13);
      PhotosGridViewController.pxScrollLog<A>(function:_:)(0xD000000000000015, v14 | 0x8000000000000000, a3);
    }
  }
}

void specialized PhotosGridViewController.scrollViewControllerWillEndScrolling(_:withVelocity:targetContentOffset:currentContentOffset:)(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x128))();
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *((*v3 & *v1) + 0x250);
    v8 = *v7();
    v9 = (*(v8 + 560))();

    v23 = v5;
    v10 = [v23 safeAreaInsets];
    if (v6 >= v9 * 0.5 - v11)
    {
      v14 = *(a1 + 8);
      v15 = *(v7)(v10);
      v16 = (*(v15 + 560))();

      v17 = [v23 safeAreaInsets];
      if (v14 >= v16 - v18)
      {
      }

      else
      {
        v19 = (v7)(v17);
        v20 = (*(*v19 + 560))(v19);

        [v23 safeAreaInsets];
        v22 = v21;

        *(a1 + 8) = v20 - v22;
      }
    }

    else
    {
      [v23 safeAreaInsets];
      v13 = v12;

      *(a1 + 8) = -v13;
    }
  }
}

unint64_t partial apply for implicit closure #1 in closure #1 in PhotosGridViewController.scrollViewControllerDidScroll(_:)()
{
  v1 = *(v0 + 16);
  _StringGuts.grow(_:)(19);

  [v1 visibleOrigin];
  v2 = Double.description.getter();
  MEMORY[0x193AEA970](v2);

  return 0xD000000000000011;
}

unint64_t partial apply for implicit closure #1 in closure #1 in PhotosGridViewController.scroll(y:)()
{
  v1 = *(v0 + 16);
  _StringGuts.grow(_:)(28);

  v2 = [v1 scrollViewController];
  [v2 visibleOrigin];

  v3 = Double.description.getter();
  MEMORY[0x193AEA970](v3);

  return 0xD00000000000001ALL;
}

unint64_t partial apply for implicit closure #2 in closure #1 in PhotosGridViewController.scroll(y:)()
{
  v1 = *(v0 + 16);
  _StringGuts.grow(_:)(27);

  v2 = [v1 scrollViewController];
  [v2 visibleOrigin];

  v3 = Double.description.getter();
  MEMORY[0x193AEA970](v3);

  return 0xD000000000000019;
}

id partial apply for implicit closure #1 in closure #1 in PhotosGridViewController.updateSafeAreaInsets()()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  _StringGuts.grow(_:)(277);
  MEMORY[0x193AEA970](0x7465736E49706F74, 0xEA0000000000203ALL);
  v3 = Double.description.getter();
  MEMORY[0x193AEA970](v3);

  MEMORY[0x193AEA970](0x6D6F74746F62202CLL, 0xEF203A7465736E49);
  v4 = Double.description.getter();
  MEMORY[0x193AEA970](v4);

  MEMORY[0x193AEA970](0xD00000000000001ALL, 0x80000001901FCCF0);
  result = [v2 view];
  if (result)
  {
    v6 = result;
    [result safeAreaInsets];

    v7 = Double.description.getter();
    MEMORY[0x193AEA970](v7);

    MEMORY[0x193AEA970](0xD00000000000001ELL, 0x80000001901FCD10);
    result = [v2 view];
    if (result)
    {
      v8 = result;
      [result safeAreaInsets];

      v9 = Double.description.getter();
      MEMORY[0x193AEA970](v9);

      v10 = MEMORY[0x193AEA970](0xD00000000000001ELL, 0x80000001901FCD30);
      v11 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x250);
      v12 = *v11(v10);
      (*(v12 + 360))();

      v13 = Double.description.getter();
      MEMORY[0x193AEA970](v13);

      v14 = MEMORY[0x193AEA970](0xD000000000000035, 0x80000001901FCD50);
      v15 = *v11(v14);
      (*(v15 + 560))();

      v16 = Double.description.getter();
      MEMORY[0x193AEA970](v16);

      MEMORY[0x193AEA970](0xD000000000000043, 0x80000001901FCD90);
      v17 = [v1 scrollViewController];
      [v17 scrollViewContentBounds];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;

      v28.origin.x = v19;
      v28.origin.y = v21;
      v28.size.width = v23;
      v28.size.height = v25;
      CGRectGetHeight(v28);
      v26 = Double.description.getter();
      MEMORY[0x193AEA970](v26);

      MEMORY[0x193AEA970](0xD00000000000001ELL, 0x80000001901FCDE0);
      [v1 bounds];
      CGRectGetHeight(v29);
      v27 = Double.description.getter();
      MEMORY[0x193AEA970](v27);

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t partial apply for implicit closure #2 in closure #1 in PhotosGridViewController.updateSafeAreaInsets()()
{
  v1 = *(v0 + 16);
  _StringGuts.grow(_:)(27);

  strcpy(v5, "result: top: ");
  [v1 safeAreaInsets];
  v2 = Double.description.getter();
  MEMORY[0x193AEA970](v2);

  MEMORY[0x193AEA970](0x6D6F74746F62202CLL, 0xEA0000000000203ALL);
  [v1 safeAreaInsets];
  v3 = Double.description.getter();
  MEMORY[0x193AEA970](v3);

  return v5[0];
}

uint64_t partial apply for implicit closure #3 in closure #1 in PhotosGridViewController.scrollToInitialPositionIfNeeded()()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  _StringGuts.grow(_:)(72);
  MEMORY[0x193AEA970](0x203A74657366666FLL, 0xE800000000000000);
  v3 = Double.description.getter();
  MEMORY[0x193AEA970](v3);

  v4 = MEMORY[0x193AEA970](0xD000000000000024, 0x80000001901FCE30);
  v5 = *(*((*MEMORY[0x1E69E7D40] & *v2) + 0x250))(v4);
  (*(v5 + 440))();

  v6 = Double.description.getter();
  MEMORY[0x193AEA970](v6);

  MEMORY[0x193AEA970](0xD000000000000016, 0x80000001901FCE60);
  [v1 safeAreaInsets];
  v7 = Double.description.getter();
  MEMORY[0x193AEA970](v7);

  return 0;
}

uint64_t DetailsInfoSection.content.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DetailsInfoSection.init(content:header:footer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, void (*a4)(uint64_t)@<X4>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  type metadata accessor for DetailsInfoSection();

  v8 = a3(v7);
  a4(v8);
}

uint64_t DetailsInfoSection.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 32);
  v36 = a2;
  v37 = v4;
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v35 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v6 + 24);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v6);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 + 16);
  v32 = v12;
  v33 = v13;
  type metadata accessor for DetailsInfoListRowModifier();
  v34 = type metadata accessor for ModifiedContent();
  v14 = type metadata accessor for Section();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v32 - v19;
  (*(v9 + 16))(v12, v2 + *(a1 + 68), v8);
  v21 = v37;
  (*(v5 + 16))(v35, v2 + *(a1 + 72), v37);
  *&v22 = v21;
  v23 = *(a1 + 40);
  v24 = *(a1 + 48);
  *(&v22 + 1) = v23;
  *&v25 = v33;
  *(&v25 + 1) = v8;
  v38 = v25;
  v39 = v22;
  v26 = *(a1 + 56);
  v40 = v24;
  v41 = v26;
  v42 = v2;
  v27 = lazy protocol witness table accessor for type DetailsInfoListRowModifier and conformance DetailsInfoListRowModifier();
  v46 = v23;
  v47 = v27;
  WitnessTable = swift_getWitnessTable();
  Section<>.init(header:footer:content:)();
  v43 = v24;
  v44 = WitnessTable;
  v45 = v26;
  swift_getWitnessTable();
  v28 = *(v15 + 16);
  v28(v20, v18, v14);
  v29 = *(v15 + 8);
  v29(v18, v14);
  v28(v36, v20, v14);
  return (v29)(v20, v14);
}

uint64_t type metadata accessor for DetailsInfoListRowModifier()
{
  result = type metadata singleton initialization cache for DetailsInfoListRowModifier;
  if (!type metadata singleton initialization cache for DetailsInfoListRowModifier)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #1 in DetailsInfoSection.body.getter@<X0>(void (**a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v22 = a1;
  v23 = a3;
  v24 = a4;
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DetailsInfoListRowModifier();
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - v13;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*v22)(isCurrentExecutor);
  v16 = v23;
  View.detailsInfoList()(a2, v23);
  (*(v5 + 8))(v7, a2);
  v17 = lazy protocol witness table accessor for type DetailsInfoListRowModifier and conformance DetailsInfoListRowModifier();
  v25 = v16;
  v26 = v17;
  swift_getWitnessTable();
  v18 = *(v9 + 16);
  v18(v14, v12, v8);
  v19 = *(v9 + 8);
  v19(v12, v8);
  v18(v24, v14, v8);
  v19(v14, v8);
}

unint64_t lazy protocol witness table accessor for type DetailsInfoListRowModifier and conformance DetailsInfoListRowModifier()
{
  result = lazy protocol witness table cache variable for type DetailsInfoListRowModifier and conformance DetailsInfoListRowModifier;
  if (!lazy protocol witness table cache variable for type DetailsInfoListRowModifier and conformance DetailsInfoListRowModifier)
  {
    type metadata accessor for DetailsInfoListRowModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DetailsInfoListRowModifier and conformance DetailsInfoListRowModifier);
  }

  return result;
}

uint64_t View.detailsInfoList()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailsInfoListRowModifier();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + 2) = 0x4028000000000000;
  v8 = *(v5 + 28);
  v9 = InfoTab.StyleGuide.default.unsafeMutableAddressor();
  swift_beginAccess();
  outlined init with copy of BlendedColor?(v9, &v7[v8]);
  *v7 = xmmword_1901E5C90;
  MEMORY[0x193AEA300](v7, a1, v4, a2);
  return outlined destroy of DetailsInfoListRowModifier(v7);
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance DetailsInfoListRowModifier@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for BlendedColor();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails12BlendedColorVSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v17 - v12;
  outlined init with copy of BlendedColor?(v3 + *(a2 + 28), &v17 - v12);
  v14 = 0;
  if ((*(v8 + 48))(v13, 1, v7) != 1)
  {
    outlined init with take of BlendedColor(v13, v10);
    lazy protocol witness table accessor for type BlendedColor and conformance BlendedColor();
    v14 = AnyView.init<A>(_:)();
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails0g11InfoListRowD033_7A5047A3659C159A7D0ECB78C05453FBLLVGMd);
  (*(*(v15 - 8) + 16))(a3, a1, v15);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy20CommunicationDetails0h11InfoListRowF033_7A5047A3659C159A7D0ECB78C05453FBLLVGAA013_TraitWritingF0VyAA0jk10BackgroundT3KeyVGGMd);
  *(a3 + *(result + 36)) = v14;
  return result;
}

uint64_t outlined destroy of DetailsInfoListRowModifier(uint64_t a1)
{
  v2 = type metadata accessor for DetailsInfoListRowModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t View.multiItemSectionItem(at:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DetailsInfoListRowModifier();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11[2] = 0x4028000000000000;
  v12 = *(v9 + 28);
  v13 = InfoTab.StyleGuide.default.unsafeMutableAddressor();
  swift_beginAccess();
  outlined init with copy of BlendedColor?(v13, v11 + v12);
  *v11 = a1;
  v11[1] = a2;
  MEMORY[0x193AEA300](v11, a3, v8, a4);
  return outlined destroy of DetailsInfoListRowModifier(v11);
}

unint64_t type metadata completion function for DetailsInfoSection()
{
  result = type metadata accessor for ()();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DetailsInfoSection(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 32);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v15 = ((v10 + v11 + ((v9 + 16) & ~v9)) & ~v11) + *(*(v6 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if ((v12 & 0x80000000) != 0)
      {
        v24 = (a1 + v9 + 16) & ~v9;
        if (v5 == v13)
        {
          return (*(v4 + 48))(v24);
        }

        else
        {
          return (*(v7 + 48))((v24 + v10 + v11) & ~v11, v8, v6);
        }
      }

      else
      {
        v23 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v23) = -1;
        }

        return (v23 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v13 + (v22 | v20) + 1;
}

void storeEnumTagSinglePayload for DetailsInfoSection(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(a4 + 32);
  v8 = *(v6 + 84);
  v9 = *(v7 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v8 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((v11 + v12 + ((v10 + 16) & ~v10)) & ~v12) + *(*(v7 - 8) + 64);
  v16 = a3 >= v14;
  v17 = a3 - v14;
  if (v17 != 0 && v16)
  {
    if (v15 <= 3)
    {
      v21 = ((v17 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v15 < 4)
    {
      v20 = (v19 >> (8 * v15)) + 1;
      if (v15)
      {
        v23 = v19 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_53:
              if (v18 == 2)
              {
                *&a1[v15] = v20;
              }

              else
              {
                *&a1[v15] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v18)
    {
      a1[v15] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v15] = 0;
  }

  else if (v18)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if ((v13 & 0x80000000) != 0)
  {
    v24 = &a1[v10 + 16] & ~v10;
    if (v8 == v14)
    {
      v25 = *(v6 + 56);

      v25(v24);
    }

    else
    {
      v26 = *(v9 + 56);
      v27 = (v24 + v11 + v12) & ~v12;

      v26(v27);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = a2 - 1;
  }
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

void type metadata completion function for DetailsInfoListRowModifier()
{
  type metadata accessor for BlendedColor?();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t outlined init with take of BlendedColor(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BlendedColor();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<DetailsInfoListRowModifier>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<DetailsInfoListRowModifier>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<DetailsInfoListRowModifier>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy20CommunicationDetails0h11InfoListRowF033_7A5047A3659C159A7D0ECB78C05453FBLLVGAA013_TraitWritingF0VyAA0jk10BackgroundT3KeyVGGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<DetailsInfoListRowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<DetailsInfoListRowModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails0g11InfoListRowD033_7A5047A3659C159A7D0ECB78C05453FBLLVGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<DetailsInfoListRowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<DetailsInfoListRowModifier>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<DetailsInfoListRowModifier> and conformance _ViewModifier_Content<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t key path setter for PosterScrollGeometryTracker.scrollGeometry : PosterScrollGeometryTracker(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactPosterScrollGeometry();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 136))(v6);
}

uint64_t PosterScrollGeometryTracker.scrollGeometry.init@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ContactPosterScrollGeometry();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t PosterScrollGeometryTracker.scrollGeometry.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 208))();

  v3 = OBJC_IVAR____TtC20CommunicationDetails27PosterScrollGeometryTracker__scrollGeometry;
  swift_beginAccess();
  v4 = type metadata accessor for ContactPosterScrollGeometry();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t PosterScrollGeometryTracker.scrollGeometry.setter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ContactPosterScrollGeometry();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC20CommunicationDetails27PosterScrollGeometryTracker__scrollGeometry;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  lazy protocol witness table accessor for type ContactPosterScrollGeometry and conformance ContactPosterScrollGeometry(&lazy protocol witness table cache variable for type ContactPosterScrollGeometry and conformance ContactPosterScrollGeometry, MEMORY[0x1E695D040]);
  v15 = a1;
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v15, v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v12 = MEMORY[0x1EEE9AC00](KeyPath);
    v13 = v15;
    *(&v15 - 2) = v2;
    *(&v15 - 1) = v13;
    (*(*v2 + 216))(v12, partial apply for closure #1 in PosterScrollGeometryTracker.scrollGeometry.setter);
  }

  return (v10)(v15, v4);
}

uint64_t partial apply for closure #1 in PosterScrollGeometryTracker.scrollGeometry.setter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC20CommunicationDetails27PosterScrollGeometryTracker__scrollGeometry;
  swift_beginAccess();
  v4 = type metadata accessor for ContactPosterScrollGeometry();
  (*(*(v4 - 8) + 24))(v2 + v3, v1, v4);
  return swift_endAccess();
}

void (*PosterScrollGeometryTracker.scrollGeometry.modify(uint64_t *a1))(void *a1)
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
  (*(*v1 + 208))();

  v4[5] = OBJC_IVAR____TtC20CommunicationDetails27PosterScrollGeometryTracker___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type ContactPosterScrollGeometry and conformance ContactPosterScrollGeometry(&lazy protocol witness table cache variable for type PosterScrollGeometryTracker and conformance PosterScrollGeometryTracker, type metadata accessor for PosterScrollGeometryTracker);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = PosterScrollGeometryTracker._scrollGeometry.modify();
  return PosterScrollGeometryTracker.scrollGeometry.modify;
}

void PosterScrollGeometryTracker.scrollGeometry.modify(void *a1)
{
  PosterScrollGeometryTracker.scrollGeometry.modify(a1);
}

{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t lazy protocol witness table accessor for type ContactPosterScrollGeometry and conformance ContactPosterScrollGeometry(unint64_t *a1, void (*a2)(uint64_t))
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

void key path getter for PosterScrollGeometryTracker.saliencyRect : PosterScrollGeometryTracker(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*(**a1 + 176))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

void PosterScrollGeometryTracker.saliencyRect.init(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

double PosterScrollGeometryTracker.saliencyRect.getter()
{
  swift_getKeyPath();
  (*(*v0 + 208))();

  v1 = v0 + OBJC_IVAR____TtC20CommunicationDetails27PosterScrollGeometryTracker__saliencyRect;
  swift_beginAccess();
  return *v1;
}

uint64_t PosterScrollGeometryTracker.saliencyRect.setter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = (v4 + OBJC_IVAR____TtC20CommunicationDetails27PosterScrollGeometryTracker__saliencyRect);
  swift_beginAccess();
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  result = CGRectEqualToRect(*v9, v13);
  if (result)
  {
    v9->origin.x = a1;
    v9->origin.y = a2;
    v9->size.width = a3;
    v9->size.height = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v12 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v4 + 216))(v12, partial apply for closure #1 in PosterScrollGeometryTracker.saliencyRect.setter);
  }

  return result;
}

__n128 partial apply for closure #1 in PosterScrollGeometryTracker.saliencyRect.setter()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC20CommunicationDetails27PosterScrollGeometryTracker__saliencyRect);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  swift_beginAccess();
  result = v4;
  *v1 = v4;
  v1[1] = v3;
  return result;
}

void (*PosterScrollGeometryTracker.saliencyRect.modify(uint64_t *a1))(void *a1)
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
  (*(*v1 + 208))();

  v4[5] = OBJC_IVAR____TtC20CommunicationDetails27PosterScrollGeometryTracker___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type ContactPosterScrollGeometry and conformance ContactPosterScrollGeometry(&lazy protocol witness table cache variable for type PosterScrollGeometryTracker and conformance PosterScrollGeometryTracker, type metadata accessor for PosterScrollGeometryTracker);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = PosterScrollGeometryTracker._saliencyRect.modify();
  return PosterScrollGeometryTracker.saliencyRect.modify;
}

uint64_t PosterScrollGeometryTracker.__allocating_init(scrollGeometry:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = (v2 + OBJC_IVAR____TtC20CommunicationDetails27PosterScrollGeometryTracker__saliencyRect);
  *v3 = 0u;
  v3[1] = 0u;
  ObservationRegistrar.init()();
  v4 = OBJC_IVAR____TtC20CommunicationDetails27PosterScrollGeometryTracker__scrollGeometry;
  v5 = type metadata accessor for ContactPosterScrollGeometry();
  (*(*(v5 - 8) + 32))(v2 + v4, a1, v5);
  return v2;
}

uint64_t PosterScrollGeometryTracker.init(scrollGeometry:)(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC20CommunicationDetails27PosterScrollGeometryTracker__saliencyRect);
  *v3 = 0u;
  v3[1] = 0u;
  ObservationRegistrar.init()();
  v4 = OBJC_IVAR____TtC20CommunicationDetails27PosterScrollGeometryTracker__scrollGeometry;
  v5 = type metadata accessor for ContactPosterScrollGeometry();
  (*(*(v5 - 8) + 32))(v1 + v4, a1, v5);
  return v1;
}

uint64_t PosterScrollGeometryTracker.deinit()
{
  v1 = OBJC_IVAR____TtC20CommunicationDetails27PosterScrollGeometryTracker__scrollGeometry;
  v2 = type metadata accessor for ContactPosterScrollGeometry();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC20CommunicationDetails27PosterScrollGeometryTracker___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t PosterScrollGeometryTracker.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20CommunicationDetails27PosterScrollGeometryTracker__scrollGeometry;
  v2 = type metadata accessor for ContactPosterScrollGeometry();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC20CommunicationDetails27PosterScrollGeometryTracker___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

uint64_t PosterBackgroundView.geometryTracker.getter()
{
  type metadata accessor for PosterBackgroundView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy20CommunicationDetails27PosterScrollGeometryTrackerCGMd);
  Bindable.wrappedValue.getter();
  return v1;
}

uint64_t type metadata accessor for PosterScrollGeometryTracker(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t key path getter for PosterBackgroundView.geometryTracker : PosterBackgroundView@<X0>(void *a1@<X8>)
{
  type metadata accessor for PosterBackgroundView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy20CommunicationDetails27PosterScrollGeometryTrackerCGMd);
  result = Bindable.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t key path setter for PosterBackgroundView.geometryTracker : PosterBackgroundView()
{
  type metadata accessor for PosterBackgroundView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy20CommunicationDetails27PosterScrollGeometryTrackerCGMd);
  return Bindable.wrappedValue.setter();
}

uint64_t PosterBackgroundView.geometryTracker.setter()
{
  type metadata accessor for PosterBackgroundView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy20CommunicationDetails27PosterScrollGeometryTrackerCGMd);
  return Bindable.wrappedValue.setter();
}

void (*PosterBackgroundView.geometryTracker.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for PosterBackgroundView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy20CommunicationDetails27PosterScrollGeometryTrackerCGMd);
  *(v3 + 32) = Bindable.wrappedValue.modify();
  return PosterBackgroundView.geometryTracker.modify;
}

void PosterBackgroundView.geometryTracker.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t PosterBackgroundView.$geometryTracker.getter()
{
  type metadata accessor for PosterBackgroundView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy20CommunicationDetails27PosterScrollGeometryTrackerCGMd);
  return Bindable.projectedValue.getter();
}

uint64_t key path setter for EnvironmentValues.horizontalSizeClass : EnvironmentValues(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of UserInterfaceSizeClass?(a1, &v5 - v3, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  return EnvironmentValues.horizontalSizeClass.setter();
}

uint64_t PosterBackgroundView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v2 = type metadata accessor for PosterBackgroundView(0);
  v56 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v57 = v3;
  v58 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UserInterfaceSizeClass();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd) - 8;
  MEMORY[0x1EEE9AC00](v48);
  v45 = &v42 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v51 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v44 = &v42 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v43 = &v42 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08ContactsB027ContactPosterScrollGeometryVGMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy20CommunicationDetails27PosterScrollGeometryTrackerCGMd);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v42 - v16;
  v18 = type metadata accessor for ContactPosterBackgroundView();
  v52 = *(v18 - 8);
  v53 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy08ContactsB027ContactPosterBackgroundViewVAA30_SafeAreaRegionsIgnoringLayoutVGMd);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v42 - v21;
  v22 = *v1;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  (*(v15 + 8))(v17, v14);
  v50 = v20;
  v23 = v43;
  v25 = v46;
  v24 = v47;
  v26 = v45;
  ContactPosterBackgroundView.init(contact:scrollGeometry:)();
  v49 = v1;
  specialized Environment.wrappedValue.getter(v23);
  v27 = v44;
  (*(v25 + 104))(v44, *MEMORY[0x1E697FF38], v24);
  (*(v25 + 56))(v27, 0, 1, v24);
  v28 = *(v48 + 56);
  outlined init with copy of UserInterfaceSizeClass?(v23, v26, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined init with copy of UserInterfaceSizeClass?(v27, v26 + v28, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  v29 = *(v25 + 48);
  if (v29(v26, 1, v24) == 1)
  {
    outlined destroy of UserInterfaceSizeClass?(v27, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    outlined destroy of UserInterfaceSizeClass?(v23, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    if (v29(v26 + v28, 1, v24) == 1)
    {
      outlined destroy of UserInterfaceSizeClass?(v26, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
LABEL_9:
      v30 = 0;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  outlined init with copy of UserInterfaceSizeClass?(v26, v51, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  if (v29(v26 + v28, 1, v24) == 1)
  {
    outlined destroy of UserInterfaceSizeClass?(v27, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    outlined destroy of UserInterfaceSizeClass?(v23, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    (*(v25 + 8))(v51, v24);
LABEL_6:
    outlined destroy of UserInterfaceSizeClass?(v26, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
    goto LABEL_7;
  }

  v31 = v42;
  (*(v25 + 32))(v42, v26 + v28, v24);
  lazy protocol witness table accessor for type ContactPosterScrollGeometry and conformance ContactPosterScrollGeometry(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, MEMORY[0x1E697FF50]);
  v32 = v51;
  v33 = dispatch thunk of static Equatable.== infix(_:_:)();
  v34 = *(v25 + 8);
  v34(v31, v24);
  outlined destroy of UserInterfaceSizeClass?(v27, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined destroy of UserInterfaceSizeClass?(v23, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  v34(v32, v24);
  outlined destroy of UserInterfaceSizeClass?(v26, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  if (v33)
  {
    goto LABEL_9;
  }

LABEL_7:
  v30 = static SafeAreaRegions.all.getter();
LABEL_10:
  v35 = static Edge.Set.all.getter();
  v36 = v54;
  (*(v52 + 32))(v54, v50, v53);
  v37 = v36 + *(v55 + 36);
  *v37 = v30;
  *(v37 + 8) = v35;
  v38 = v58;
  outlined init with copy of PosterBackgroundView(v49, v58);
  v39 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v40 = swift_allocObject();
  outlined init with take of PosterBackgroundView(v38, v40 + v39);
  lazy protocol witness table accessor for type ModifiedContent<ContactPosterBackgroundView, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>();
  View.onPosterLayoutPreferenceChange(onChange:)();

  return outlined destroy of UserInterfaceSizeClass?(v36, &_s7SwiftUI15ModifiedContentVy08ContactsB027ContactPosterBackgroundViewVAA30_SafeAreaRegionsIgnoringLayoutVGMd);
}

uint64_t closure #1 in PosterBackgroundView.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ContactsUI23PosterLayoutPreferencesVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v22 - v3;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for PosterBackgroundView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy20CommunicationDetails27PosterScrollGeometryTrackerCGMd);
  Bindable.wrappedValue.getter();
  v5 = v22[1];
  outlined init with copy of UserInterfaceSizeClass?(a1, v4, &_s10ContactsUI23PosterLayoutPreferencesVSgMd);
  v6 = type metadata accessor for PosterLayoutPreferences();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    v8 = outlined destroy of UserInterfaceSizeClass?(v4, &_s10ContactsUI23PosterLayoutPreferencesVSgMd);
    v9.n128_u64[0] = 0;
    v10.n128_u64[0] = 0;
    v11.n128_u64[0] = 0;
    v12.n128_u64[0] = 0;
  }

  else
  {
    PosterLayoutPreferences.saliencyRect.getter();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v8 = (*(v7 + 8))(v4, v6);
    v12.n128_u64[0] = v20;
    v11.n128_u64[0] = v18;
    v10.n128_u64[0] = v16;
    v9.n128_u64[0] = v14;
  }

  (*(*v5 + 184))(v8, v9, v10, v11, v12);
}

uint64_t PosterBackgroundView.init(contact:geometryTracker:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = type metadata accessor for PosterBackgroundView(0);
  type metadata accessor for PosterScrollGeometryTracker(0);
  lazy protocol witness table accessor for type ContactPosterScrollGeometry and conformance ContactPosterScrollGeometry(&lazy protocol witness table cache variable for type PosterScrollGeometryTracker and conformance PosterScrollGeometryTracker, type metadata accessor for PosterScrollGeometryTracker);
  Bindable<A>.init(wrappedValue:)();
  v4 = *(v3 + 24);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);

  return swift_storeEnumTagMultiPayload();
}

Swift::Void __swiftcall DetailsViewController.setUpViewsForPosterStyle()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_configuration);
  v3 = (*(*v2 + 192))();
  if (*(v3 + 16))
  {
    v4 = *(v3 + 96);
    v20[3] = *(v3 + 80);
    v20[4] = v4;
    v20[5] = *(v3 + 112);
    v21 = *(v3 + 128);
    v5 = *(v3 + 48);
    v20[0] = *(v3 + 32);
    v20[1] = v5;
    v20[2] = *(v3 + 64);
    outlined init with copy of CommunicationDetailsContact(v20, v19);

    (*(*v2 + 200))(v22, v6);
    if ((v22[9] & 0x8000000000000000) != 0)
    {
      v18 = v22[1];

      goto LABEL_11;
    }

    v7 = v22[2];
    v8 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
    specialized DetailsViewController.addPoster(toViewController:contact:contactStore:)(v1, v7);
    v9 = MEMORY[0x1E69E7D40];
    v10 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1B0);
    v11 = v10();
    if (v11)
    {
      v12 = v11;
      v13 = [v11 view];

      if (v13)
      {
        v14 = [objc_opt_self() clearColor];
        [v13 setBackgroundColor_];

        v15 = v10();
        if (v15)
        {
          v16 = v15;
          v17 = (*((*v9 & *v15) + 0x78))();

          specialized DetailsViewController.updatePosterScrollGeometry(for:animated:)(v17);
          outlined destroy of DetailsViewController.CommunicationType(v22);
LABEL_11:
          outlined destroy of CommunicationDetailsContact(v20);
          return;
        }

        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  outlined init with copy of UserInterfaceSizeClass?(v2, &v13 - v9, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return outlined init with take of UserInterfaceSizeClass?(v10, a1);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  outlined init with copy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v2, &v14 - v9, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t outlined init with copy of PosterBackgroundView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PosterBackgroundView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of PosterBackgroundView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PosterBackgroundView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in PosterBackgroundView.body.getter(uint64_t a1)
{
  type metadata accessor for PosterBackgroundView(0);

  return closure #1 in PosterBackgroundView.body.getter(a1);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ContactPosterBackgroundView, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ContactPosterBackgroundView, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ContactPosterBackgroundView, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy08ContactsB027ContactPosterBackgroundViewVAA30_SafeAreaRegionsIgnoringLayoutVGMd);
    lazy protocol witness table accessor for type ContactPosterScrollGeometry and conformance ContactPosterScrollGeometry(&lazy protocol witness table cache variable for type ContactPosterBackgroundView and conformance ContactPosterBackgroundView, MEMORY[0x1E695D038]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ContactPosterBackgroundView, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void specialized DetailsViewController.addPoster(toViewController:contact:contactStore:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for PosterBackgroundView(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v64 = (&v63 - v11);
  v12 = MEMORY[0x1E69E7D40];
  v13 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1E0))(v10);
  if (v13)
  {
    v14 = v13;
    v15 = [v13 view];
    [v15 removeFromSuperview];

    [v14 removeFromParentViewController];
  }

  (*((*v12 & *v3) + 0x180))();
  v16 = v64;
  *v64 = a2;
  type metadata accessor for PosterScrollGeometryTracker(0);
  lazy protocol witness table accessor for type ContactPosterScrollGeometry and conformance ContactPosterScrollGeometry(&lazy protocol witness table cache variable for type PosterScrollGeometryTracker and conformance PosterScrollGeometryTracker, type metadata accessor for PosterScrollGeometryTracker);
  v17 = a2;
  Bindable<A>.init(wrappedValue:)();
  v18 = *(v6 + 24);
  *(v16 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of PosterBackgroundView(v16, v8);
  v19 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCy20CommunicationDetails20PosterBackgroundViewVGMd));
  v20 = UIHostingController.init(rootView:)();
  v21 = [v20 view];
  if (!v21)
  {
    __break(1u);
    goto LABEL_18;
  }

  v22 = v21;
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];

  [a1 addChildViewController_];
  v23 = [a1 view];
  if (!v23)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v24 = v23;
  v25 = [v20 view];
  if (!v25)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v26 = v25;
  [v24 addSubview_];

  v27 = [a1 view];
  if (!v27)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v28 = v27;
  v29 = [v20 view];
  if (!v29)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v30 = v29;
  [v28 sendSubviewToBack_];

  [v20 didMoveToParentViewController_];
  v31 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x1E8);
  v32 = v20;
  v31(v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1901E5DD0;
  v34 = [v32 view];
  if (!v34)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v35 = v34;
  v36 = [v34 topAnchor];

  v37 = [a1 view];
  if (!v37)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v38 = v37;
  v39 = [v37 topAnchor];

  v40 = [v36 constraintEqualToAnchor_];
  *(v33 + 32) = v40;
  v41 = [v32 view];
  if (!v41)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v42 = v41;
  v43 = [v41 leadingAnchor];

  v44 = [a1 view];
  if (!v44)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v45 = v44;
  v46 = [v44 leadingAnchor];

  v47 = [v43 constraintEqualToAnchor_];
  *(v33 + 40) = v47;
  v48 = [v32 view];
  if (!v48)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v49 = v48;
  v50 = [v48 trailingAnchor];

  v51 = [a1 view];
  if (!v51)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v52 = v51;
  v53 = [v51 trailingAnchor];

  v54 = [v50 constraintEqualToAnchor_];
  *(v33 + 48) = v54;
  v55 = [v32 view];

  if (!v55)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v56 = [v55 bottomAnchor];

  v57 = [a1 view];
  if (v57)
  {
    v58 = v57;
    v59 = objc_opt_self();
    v60 = [v58 bottomAnchor];

    v61 = [v56 constraintEqualToAnchor_];
    *(v33 + 56) = v61;
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v59 activateConstraints_];

    outlined destroy of PosterBackgroundView(v64);
    return;
  }

LABEL_29:
  __break(1u);
}

uint64_t specialized DetailsViewController.updatePosterScrollGeometry(for:animated:)(unint64_t a1)
{
  v2 = v1;
  (*(**(v1 + OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_configuration) + 584))(v24);
  v26 = v24[0];
  v25 = 1;
  lazy protocol witness table accessor for type DetailsViewController.HeaderStyle and conformance DetailsViewController.HeaderStyle();
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    result = [v1 view];
    if (result)
    {
      v5 = result;
      [result bounds];
      v7 = v6;
      v9 = v8;

      v10 = MEMORY[0x1E69E7D40];
      result = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x138))();
      if ((a1 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*(result + 16) > a1)
      {

        v12 = *((*v10 & *v2) + 0x1C8);
        result = (v12)(v11);
        if (result)
        {
          v13 = result;
          Header.HeaderView.rawSizeThatFits(_:strategy:)(0, v7, v9);

          result = v12();
          if (result)
          {
            v14 = result;
            (*((*v10 & *result) + 0x190))();

            v15 = *((*v10 & *v2) + 0x180);
            v16 = v15();
            v17 = (*(*v16 + 144))(v24);
            ContactPosterScrollGeometry.contentOffset.setter();
            v17(v24, 0);

            v19 = (v15)(v18);
            v20 = (*(*v19 + 144))(v24);
            ContactPosterScrollGeometry.contentInsets.setter();
            v20(v24, 0);

            v22 = (v15)(v21);
            v23 = (*(*v22 + 144))(v24);
            ContactPosterScrollGeometry.containerSize.setter();
            v23(v24, 0);
          }

LABEL_13:
          __break(1u);
          return result;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t type metadata completion function for PosterScrollGeometryTracker()
{
  result = type metadata accessor for ContactPosterScrollGeometry();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void type metadata completion function for PosterBackgroundView()
{
  type metadata accessor for CNContact(319, &lazy cache variable for type metadata for CNContact);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Bindable<PosterScrollGeometryTracker>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Environment<UserInterfaceSizeClass?>();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Bindable<PosterScrollGeometryTracker>()
{
  if (!lazy cache variable for type metadata for Bindable<PosterScrollGeometryTracker>)
  {
    type metadata accessor for PosterScrollGeometryTracker(255);
    v0 = type metadata accessor for Bindable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Bindable<PosterScrollGeometryTracker>);
    }
  }
}

void type metadata accessor for Environment<UserInterfaceSizeClass?>()
{
  if (!lazy cache variable for type metadata for Environment<UserInterfaceSizeClass?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<UserInterfaceSizeClass?>);
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CGRect(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CGRect(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type DetailsViewController.HeaderStyle and conformance DetailsViewController.HeaderStyle()
{
  result = lazy protocol witness table cache variable for type DetailsViewController.HeaderStyle and conformance DetailsViewController.HeaderStyle;
  if (!lazy protocol witness table cache variable for type DetailsViewController.HeaderStyle and conformance DetailsViewController.HeaderStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DetailsViewController.HeaderStyle and conformance DetailsViewController.HeaderStyle);
  }

  return result;
}

uint64_t type metadata accessor for CNContact(uint64_t a1, unint64_t *a2)
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

uint64_t outlined destroy of PosterBackgroundView(uint64_t a1)
{
  v2 = type metadata accessor for PosterBackgroundView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of UserInterfaceSizeClass?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of UserInterfaceSizeClass?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of UserInterfaceSizeClass?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for CGRect(uint64_t a1, unint64_t *a2)
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

void DetailsViewController.updateHeaderState(for:tabId:)(uint64_t a1, unint64_t a2, double a3)
{
  v4 = v3;
  v49 = a1;
  v50 = a2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x1C8);
  v12 = v11(v8);
  if (!v12)
  {
    __break(1u);
    goto LABEL_14;
  }

  v13 = v12;
  v14 = [v4 view];
  if (!v14)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;

  Header.HeaderView.rawSizeThatFits(_:strategy:)(1, v17, v19);
  v21 = v20;

  v22 = (v11)();
  if (!v22)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23 = v22;
  v24 = [v4 view];
  if (!v24)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25 = v24;
  [v24 bounds];
  v27 = v26;
  v29 = v28;

  Header.HeaderView.rawSizeThatFits(_:strategy:)(0, v27, v29);
  v31 = v30;

  v32 = v31 - a3;
  if (v21 > v31 - a3)
  {
    v33 = v21;
  }

  else
  {
    v33 = v31 - a3;
  }

  v34 = static Geometry.progress(current:start:end:)(v33, v21, v31);
  v35 = (v11)();
  if (!v35)
  {
    goto LABEL_17;
  }

  v36 = v35;
  v37 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v35) + 0x1E8))(v34);

  v38 = (v11)();
  if (!v38)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v40 = v38;
  v41 = v6;
  v39.n128_f64[0] = v32 + 1.0;
  (*((*v37 & *v38) + 0x200))(v32 + 1.0 < v33, v39);

  v42 = Logger.detailsViewController.unsafeMutableAddressor();
  (*(v7 + 16))(v10, v42, v6);
  v43 = v50;

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v51 = v47;
    *v46 = 136316162;
    *(v46 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v43, &v51);
    *(v46 + 12) = 2048;
    *(v46 + 14) = v32;
    *(v46 + 22) = 2048;
    *(v46 + 24) = v21;
    *(v46 + 32) = 2048;
    *(v46 + 34) = v31;
    *(v46 + 42) = 2048;
    *(v46 + 44) = v34;
    _os_log_impl(&dword_190119000, v44, v45, "Scroll tracking | %s | scrollPosY=%f | min=%f max=%f | t=%f", v46, 0x34u);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x193AEBB30](v47, -1, -1);
    MEMORY[0x193AEBB30](v46, -1, -1);
  }

  (*(v7 + 8))(v10, v41);
  DetailsViewController.setMaxScrollOffsetForScrollSync(_:)(v31 - v21);
  DetailsViewController.updateHeaderView()();
}

Swift::Void __swiftcall DetailsViewController.updateHeaderView()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_configuration);
  v12 = *(v11 + 64);
  v78 = v10;
  v79 = v7;
  if (v12 == 1)
  {
    v13 = *(v11 + 56);
    v14 = [v0 view];
    v15 = v14;
    if (!v13)
    {
      goto LABEL_9;
    }

    if (v14)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  v16 = [v1 view];
  if (!v16)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v17 = v16;
  v15 = [v16 window];

  if (!v15)
  {
    v18 = [v1 view];
    if (v18)
    {
LABEL_13:
      v15 = v18;
      goto LABEL_14;
    }

    __break(1u);
LABEL_9:
    if (!v15)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v19 = [v15 window];

    if (v19)
    {
      v15 = v19;
      goto LABEL_14;
    }

    v18 = [v1 view];
    if (!v18)
    {
LABEL_34:
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_14:
  [v15 safeAreaInsets];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = MEMORY[0x1E69E7D40];
  v29 = (*MEMORY[0x1E69E7D40] & *v1) + 456;
  v80 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1C8);
  v30 = v80();
  if (!v30)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v31 = v30;
  (*((*v28 & *v30) + 0x180))(v21, v23, v25, v27);

  v32 = (*((*v28 & *v1) + 0x1B0))();
  if (!v32)
  {
    return;
  }

  v33 = v32;
  v34 = [v1 view];
  if (!v34)
  {
    goto LABEL_28;
  }

  v35 = v34;
  [v34 bounds];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;

  v77 = v29;
  v44 = v80();
  if (!v44)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v45 = v44;
  v75 = v5;
  [v44 sizeThatFits_];
  v47 = v46;
  v49 = v48;

  v50 = (*((*v28 & *v33) + 0x98))();
  v51 = *(v50 + 16);
  v76 = v6;
  if (v51)
  {
    v72 = v3;
    v73 = v2;
    v74 = v50;
    v52 = (v50 + 40);
    do
    {
      v53 = *(v52 - 1);
      v54 = *v52;
      ObjectType = swift_getObjectType();
      aBlock[0] = v53;
      v56 = *(v54 + 8);
      v57 = v53;
      v58 = v56(ObjectType, v54);
      v83.origin.x = v37;
      v83.origin.y = v39;
      v83.size.width = v41;
      v83.size.height = v43;
      Width = CGRectGetWidth(v83);
      (*(*v58 + 224))(Width, v49);

      v52 += 2;
      --v51;
    }

    while (v51);

    v2 = v73;
    v3 = v72;
  }

  else
  {
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v60 = static OS_dispatch_queue.main.getter();
  v61 = swift_allocObject();
  *(v61 + 16) = v1;
  aBlock[4] = partial apply for closure #1 in DetailsViewController.updateHeaderView();
  aBlock[5] = v61;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_0;
  v62 = _Block_copy(aBlock);
  v1;
  v63 = v78;
  static DispatchQoS.unspecified.getter();
  v81 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v64 = v75;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x193AEACA0](0, v63, v64, v62);
  _Block_release(v62);

  (*(v3 + 8))(v64, v2);
  (*(v79 + 8))(v63, v76);

  v66 = v80;
  v67 = (v80)(v65);
  if (!v67)
  {
    goto LABEL_30;
  }

  v68 = v67;
  [v67 setBounds_];

  v69 = v66();
  if (!v69)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v70 = v69;
  [v69 setCenter_];
}

Swift::Void __swiftcall DetailsViewController.moveHeaderToAppropriateContainerIfNeeded()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v48 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for DispatchQoS();
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v46 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTimeInterval();
  v43 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = type metadata accessor for DispatchTime();
  v45 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v44 = &v40 - v13;
  v14 = MEMORY[0x1E69E7D40];
  v15 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1B0))(v12);
  if (!v15)
  {
    __break(1u);
    goto LABEL_19;
  }

  v16 = v15;
  v17 = (*((*v14 & *v15) + 0x90))();
  v19 = v18;

  if (!v17)
  {
    return;
  }

  ObjectType = swift_getObjectType();
  aBlock[0] = v17;
  v21 = (*(v19 + 8))(ObjectType, v19);
  v22 = (*((*v14 & *v1) + 0x228))();
  v41 = v3;
  v42 = v2;
  v50 = v21;
  if (v22)
  {
    v23 = *(v1 + OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_styleGuide + 8);
    v24 = (*(*v21 + 656))();
    if (v24)
    {
      goto LABEL_9;
    }

    v24 = [v1 view];
    if (v24)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v24 = [v1 view];
  if (!v24)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v23 = 0;
LABEL_9:
  v25 = *((*v14 & *v1) + 0x1C8);
  v26 = v24;
  v27 = v25();
  if (!v27)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v28 = v27;
  v29 = [v27 superview];

  if (v29)
  {

    if (v29 == v26)
    {
      goto LABEL_15;
    }
  }

  if (!v23)
  {
    DetailsViewController.moveHeaderToAppropriateContainerIfStillNeeded(container:)(v26);
LABEL_15:

    goto LABEL_16;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v40 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  *v8 = 500;
  v30 = v43;
  (*(v43 + 104))(v8, *MEMORY[0x1E69E7F38], v6);
  v31 = v44;
  DispatchTime.advanced(by:)();
  (*(v30 + 8))(v8, v6);
  v45 = *(v45 + 8);
  (v45)(v10, v51);
  v32 = swift_allocObject();
  *(v32 + 16) = v1;
  *(v32 + 24) = v26;
  aBlock[4] = partial apply for closure #1 in DetailsViewController.moveHeaderToAppropriateContainerIfNeeded();
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_6;
  v33 = _Block_copy(aBlock);
  v34 = v26;
  v35 = v1;
  v36 = v46;
  static DispatchQoS.unspecified.getter();
  v52 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v37 = v48;
  v38 = v42;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v39 = v40;
  MEMORY[0x193AEAC70](v31, v36, v37, v33);

  _Block_release(v33);

  (*(v41 + 8))(v37, v38);
  (*(v47 + 8))(v36, v49);
  (v45)(v31, v51);
LABEL_16:
}

void DetailsViewController.moveHeaderToAppropriateContainerIfStillNeeded(container:)(id a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1B0))();
  if (!v5)
  {
    __break(1u);
    goto LABEL_19;
  }

  v6 = v5;
  v7 = (*((*v4 & *v5) + 0x90))();
  v9 = v8;

  if (!v7)
  {
    return;
  }

  ObjectType = swift_getObjectType();
  v11 = (*(v9 + 8))(ObjectType, v9);
  if (((*((*v4 & *v2) + 0x228))() & 1) == 0)
  {
LABEL_7:
    v12 = [v2 view];
    if (v12)
    {
      goto LABEL_8;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = (*(*v11 + 656))();
  if (!v12)
  {
    v12 = [v2 view];
    if (!v12)
    {
      __break(1u);
      goto LABEL_7;
    }
  }

LABEL_8:
  v13 = v12;
  if (v12 == a1)
  {
    v14 = *((*v4 & *v2) + 0x1C8);
    v15 = v14();
    if (v15)
    {
      v16 = v15;
      v17 = [v15 superview];

      if (v17)
      {

        if (v17 == a1)
        {
          v22 = v7;
          v7 = v13;
          v13 = v22;
          goto LABEL_16;
        }
      }

      v18 = v14();
      if (v18)
      {
        v19 = v18;
        [v13 addSubview_];

        v20 = v14();
        if (v20)
        {
          v21 = v20;
          [v13 bringSubviewToFront_];

          v13 = v21;
          goto LABEL_16;
        }

LABEL_22:
        __break(1u);
        return;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_16:
}

Swift::Void __swiftcall DetailsViewController.performHeaderTransition(toTabIndex:tabId:animated:)(Swift::Int toTabIndex, Swift::String tabId, Swift::Bool animated)
{
  v18 = animated;
  object = tabId._object;
  countAndFlagsBits = tabId._countAndFlagsBits;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &countAndFlagsBits - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v12 = &countAndFlagsBits - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v3;
  *(v14 + 24) = toTabIndex;
  *(v14 + 32) = v18;
  *(v14 + 40) = countAndFlagsBits;
  *(v14 + 48) = object;
  aBlock[4] = partial apply for closure #1 in DetailsViewController.performHeaderTransition(toTabIndex:tabId:animated:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_12;
  v15 = _Block_copy(aBlock);
  v16 = v3;

  static DispatchQoS.unspecified.getter();
  v20 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x193AEACA0](0, v12, v9, v15);
  _Block_release(v15);

  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v19);
}

void closure #1 in DetailsViewController.performHeaderTransition(toTabIndex:tabId:animated:)(void *a1, unint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = DetailsViewController.contentOffset(for:)(a2);
  v12 = v11;
  v13 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x1C8);
  v14 = (v13)(v10);
  if (!v14)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v15 = v14;
  [v14 setNeedsLayout];

  if (a3)
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for UIView);
    v16 = MEMORY[0x193AEA740](0.5, 0.7, 0.0);
    MEMORY[0x1EEE9AC00](v16);
    static UIView.animate(_:changes:completion:)();

    return;
  }

  DetailsViewController.updateHeaderState(for:tabId:)(a4, a5, v12);
  v17 = v13();
  if (!v17)
  {
    goto LABEL_11;
  }

  v18 = v17;
  [v17 layoutIfNeeded];
}

uint64_t closure #1 in closure #1 in DetailsViewController.performHeaderTransition(toTabIndex:tabId:animated:)()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v1 = MEMORY[0x193AEA740](isCurrentExecutor, 0.5, 0.7, 0.0);
  MEMORY[0x1EEE9AC00](v1);
  withAnimation<A>(_:_:)();
}

void DetailsViewController.headerView(_:didRequestHiddenPocketEdges:)(uint64_t a1, uint64_t a2)
{
  v4 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1B0))();
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() scrollViewForPageViewController_];
    [v6 _setHiddenPocketEdges_];
  }
}

void protocol witness for Header.HeaderViewDelegate.headerView(_:didRequestHiddenPocketEdges:) in conformance DetailsViewController(uint64_t a1, uint64_t a2)
{
  v4 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1B0))();
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() scrollViewForPageViewController_];
    [v6 _setHiddenPocketEdges_];
  }
}

uint64_t partial apply for closure #1 in DetailsViewController.updateHeaderView()()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  DetailsViewController.moveHeaderToAppropriateContainerIfNeeded()();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t partial apply for closure #1 in DetailsViewController.moveHeaderToAppropriateContainerIfNeeded()()
{
  v1 = *(v0 + 24);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  DetailsViewController.moveHeaderToAppropriateContainerIfStillNeeded(container:)(v1);
}

uint64_t type metadata accessor for OS_dispatch_queue(uint64_t a1, unint64_t *a2)
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

void *partial apply for closure #1 in closure #1 in closure #1 in DetailsViewController.performHeaderTransition(toTabIndex:tabId:animated:)()
{
  v1 = *(v0 + 2);
  v2 = v0[3];
  v3 = *(v0 + 4);
  v4 = *(v0 + 5);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  DetailsViewController.updateHeaderState(for:tabId:)(v3, v4, v2);
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1C8))();
  if (result)
  {
    v6 = result;
    [result layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t EditMenu.__allocating_init(actions:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v25 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    type metadata accessor for MainActor();
    type metadata accessor for UIAction();
    v5 = objc_opt_self();
    v6 = a1;
    v7 = 32;
    do
    {
      v14 = v6;
      v15 = *(v6 + v7 + 16);
      v26 = *(v6 + v7);
      v27 = v15;
      v28 = *(v6 + v7 + 32);
      v29 = *(v6 + v7 + 48);
      outlined init with copy of EditAction(&v26, v23);
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v23[0] = v26;
      v23[1] = v27;
      v23[2] = v28;
      v24 = v29;
      EditAction.title.getter();
      v8 = EditAction.imageName.getter();
      v9 = MEMORY[0x193AEA8E0](v8);

      v10 = [v5 _systemImageNamed_];

      v11 = swift_allocObject();
      *(v11 + 24) = a3;
      swift_unknownObjectWeakInit();
      v12 = swift_allocObject();
      v13 = v27;
      *(v12 + 16) = v26;
      *(v12 + 32) = v13;
      *(v12 + 48) = v28;
      *(v12 + 64) = v29;
      *(v12 + 72) = v11;
      v21._rawValue = 0;
      UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v7 += 56;
      --v3;
      v6 = v14;
    }

    while (v3);

    preferredElementSize = v25;
  }

  else
  {

    preferredElementSize = MEMORY[0x1E69E7CC0];
  }

  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v30.value.super.isa = 0;
  v30.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(preferredElementSize, v17, 0, v30, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v21);
  v19 = v18;
  swift_unknownObjectRelease();
  return v19;
}

unint64_t type metadata accessor for UIAction()
{
  result = lazy cache variable for type metadata for UIAction;
  if (!lazy cache variable for type metadata for UIAction)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIAction);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in EditMenu.init(actions:handler:)()
{
  v1 = *(v0 + 72);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  EditAction.execute(with:)(Strong, *(v1 + 24));
  swift_unknownObjectRelease();
}

id EditMenu.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id EditMenu.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditMenu();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t default argument 2 of ParticipantGrid.StyleGuide.init(gridItemTextFont:gridItemCircleDiameter:addToContactsButtonFont:addToContactsButtonTextColor:addToContactsLabelPadding:addToContactsLabelBottomMargin:avatarInsets:displayNamePadding:blockedLabelFont:blockedLabelColor:blockedIconToTextSpacing:addParticipantBackground:addParticipantIconFont:addParticipantIconColor:horizontalGridSpacing:verticalGridSpacing:hoverCornerRadius:horizontalListPadding:avatarToLabelSpacing:participantViewInterLabelSpacing:)()
{
  v0 = type metadata accessor for Font.Leading();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Font.caption.getter();
  (*(v1 + 104))(v3, *MEMORY[0x1E6980EA8], v0);
  v4 = Font.leading(_:)();

  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t default argument 11 of ParticipantGrid.StyleGuide.init(gridItemTextFont:gridItemCircleDiameter:addToContactsButtonFont:addToContactsButtonTextColor:addToContactsLabelPadding:addToContactsLabelBottomMargin:avatarInsets:displayNamePadding:blockedLabelFont:blockedLabelColor:blockedIconToTextSpacing:addParticipantBackground:addParticipantIconFont:addParticipantIconColor:horizontalGridSpacing:verticalGridSpacing:hoverCornerRadius:horizontalListPadding:avatarToLabelSpacing:participantViewInterLabelSpacing:)()
{
  v0 = type metadata accessor for BlendedColor();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = DetailsStyleGuide.globalListRowBackgroundColor.unsafeMutableAddressor();
  outlined init with copy of BlendedColor(v3, v2);
  lazy protocol witness table accessor for type BlendedColor and conformance BlendedColor(&lazy protocol witness table cache variable for type BlendedColor and conformance BlendedColor, type metadata accessor for BlendedColor);
  return AnyShapeStyle.init<A>(_:)();
}

uint64_t default argument 12 of ParticipantGrid.StyleGuide.init(gridItemTextFont:gridItemCircleDiameter:addToContactsButtonFont:addToContactsButtonTextColor:addToContactsLabelPadding:addToContactsLabelBottomMargin:avatarInsets:displayNamePadding:blockedLabelFont:blockedLabelColor:blockedIconToTextSpacing:addParticipantBackground:addParticipantIconFont:addParticipantIconColor:horizontalGridSpacing:verticalGridSpacing:hoverCornerRadius:horizontalListPadding:avatarToLabelSpacing:participantViewInterLabelSpacing:)()
{
  static Font.largeTitle.getter();
  static Font.Weight.light.getter();
  v0 = Font.weight(_:)();

  return v0;
}

uint64_t default argument 17 of ParticipantGrid.StyleGuide.init(gridItemTextFont:gridItemCircleDiameter:addToContactsButtonFont:addToContactsButtonTextColor:addToContactsLabelPadding:addToContactsLabelBottomMargin:avatarInsets:displayNamePadding:blockedLabelFont:blockedLabelColor:blockedIconToTextSpacing:addParticipantBackground:addParticipantIconFont:addParticipantIconColor:horizontalGridSpacing:verticalGridSpacing:hoverCornerRadius:horizontalListPadding:avatarToLabelSpacing:participantViewInterLabelSpacing:)()
{
  v0 = type metadata accessor for UIListContentConfiguration();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  static UIListContentConfiguration.cell()();
  UIListContentConfiguration.directionalLayoutMargins.getter();
  v7 = *(v1 + 8);
  v7(v6, v0);
  static UIListContentConfiguration.cell()();
  UIListContentConfiguration.directionalLayoutMargins.getter();
  return (v7)(v4, v0);
}

uint64_t ParticipantGrid.StyleGuide.init(gridItemTextFont:gridItemCircleDiameter:addToContactsButtonFont:addToContactsButtonTextColor:addToContactsLabelPadding:addToContactsLabelBottomMargin:avatarInsets:displayNamePadding:blockedLabelFont:blockedLabelColor:blockedIconToTextSpacing:addParticipantBackground:addParticipantIconFont:addParticipantIconColor:horizontalGridSpacing:verticalGridSpacing:hoverCornerRadius:horizontalListPadding:avatarToLabelSpacing:participantViewInterLabelSpacing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, double a16@<D6>, double a17@<D7>, __int128 a18, __int128 a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  *a9 = result;
  *(a9 + 8) = a10;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a11;
  *(a9 + 40) = a12;
  *(a9 + 48) = a13;
  *(a9 + 56) = a14;
  *(a9 + 64) = a15;
  *(a9 + 72) = a16;
  *(a9 + 80) = a17;
  *(a9 + 88) = a18;
  *(a9 + 104) = a19;
  *(a9 + 120) = a20;
  *(a9 + 128) = a21;
  *(a9 + 136) = a4;
  *(a9 + 144) = a5;
  *(a9 + 152) = a22;
  *(a9 + 160) = a6;
  *(a9 + 168) = a7;
  *(a9 + 176) = a8;
  *(a9 + 184) = a23;
  *(a9 + 200) = a24;
  *(a9 + 208) = a26;
  *(a9 + 216) = a27;
  *(a9 + 224) = a25;
  return result;
}

uint64_t ParticipantGrid.StyleGuide.AddToContactMenuButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA0E11BorderShapeVGGAA01_dnL0VyAA16RoundedRectangleVGGAA011_ForegroundfL0VyAA04LinknF0VGGAA01_i10BackgroundfL0VyAA5ColorVGGMd);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v58 - v2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11hoverEffect_9isEnabledQrqd___SbtAA011CustomHoverG0Rd__lFQOyACyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA0L11BorderShapeVGGAA01_duS0VyAA16RoundedRectangleVGGAA011_ForegroundmS0VyAA04LinkuM0VGGAA01_p10BackgroundmS0VyAA5ColorVGG_AA09HighlightkG0VQo_AA06_ScaleG0VGAA010_AnimationS0VySbGGMd);
  MEMORY[0x1EEE9AC00](v62);
  v5 = &v58 - v4;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA4ViewPAAE11hoverEffect_9isEnabledQrqd___SbtAA011CustomHoverI0Rd__lFQOyAGyAGyAGyAGyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA0N11BorderShapeVGGAA01_dwU0VyAA16RoundedRectangleVGGAA011_ForegroundoU0VyAA5ColorVGGAA011_BackgroundoU0VyA4_GG_AA09HighlightmI0VQo_AA06_ScaleI0VGAA010_AnimationU0VySbGGAGyAGyAiAEAJ_AKQrqd___SbtAaLRd__lFQOyAGyAGyA0_A2_yAA04LinkwO0VGGAA01_r10BackgroundoU0VyA4_GG_A12_Qo_A15_GA19_G_GMd);
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v58 - v6;
  v58 = type metadata accessor for HighlightHoverEffect();
  v7 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA0E11BorderShapeVGGAA01_dnL0VyAA16RoundedRectangleVGGAA011_ForegroundfL0VyAA5ColorVGGAA011_BackgroundfL0VyAWGGMd);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v58 - v11;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11hoverEffect_9isEnabledQrqd___SbtAA011CustomHoverG0Rd__lFQOyACyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA0L11BorderShapeVGGAA01_duS0VyAA16RoundedRectangleVGGAA011_ForegroundmS0VyAA5ColorVGGAA011_BackgroundmS0VyA0_GG_AA09HighlightkG0VQo_AA06_ScaleG0VGAA010_AnimationS0VySbGGMd);
  MEMORY[0x1EEE9AC00](v59);
  v14 = &v58 - v13;
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    ButtonStyleConfiguration.label.getter();
    v15 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA0E11BorderShapeVGGMd) + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ButtonBorderShapeVGMd);
    static ButtonBorderShape.roundedRectangle(radius:)();
    *v15 = swift_getKeyPath();
    v16 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA0E11BorderShapeVGGAA01_dnL0VyAA16RoundedRectangleVGGMd) + 36)];
    v17 = *(type metadata accessor for RoundedRectangle() + 20);
    v18 = *MEMORY[0x1E697F468];
    v19 = type metadata accessor for RoundedCornerStyle();
    (*(*(v19 - 8) + 104))(&v16[v17], v18, v19);
    __asm { FMOV            V0.2D, #4.0 }

    *v16 = _Q0;
    v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ContentShapeModifierVyAA16RoundedRectangleVGMd) + 36)] = 0;
    v25 = static Color.black.getter();
    *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA0E11BorderShapeVGGAA01_dnL0VyAA16RoundedRectangleVGGAA011_ForegroundfL0VyAA5ColorVGGMd) + 36)] = v25;
    v26 = static Color.white.getter();
    v27 = static Edge.Set.all.getter();
    v28 = &v12[*(v10 + 36)];
    *v28 = v26;
    v28[8] = v27;
    static CustomHoverEffect<>.highlight.getter();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ContentShapeModifier<RoundedRectangle>>, _ForegroundStyleModifier<Color>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type BlendedColor and conformance BlendedColor(&lazy protocol witness table cache variable for type HighlightHoverEffect and conformance HighlightHoverEffect, MEMORY[0x1E697C688]);
    v29 = v58;
    View.hoverEffect<A>(_:isEnabled:)();
    (*(v7 + 8))(v9, v29);
    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ContentShapeModifier<RoundedRectangle>>, _ForegroundStyleModifier<LinkShapeStyle>>, _EnvironmentBackgroundStyleModifier<Color>>(v12, &_s7SwiftUI15ModifiedContentVyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA0E11BorderShapeVGGAA01_dnL0VyAA16RoundedRectangleVGGAA011_ForegroundfL0VyAA5ColorVGGAA011_BackgroundfL0VyAWGGMd);
    static UnitPoint.center.getter();
    v31 = v30;
    v33 = v32;
    v34 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11hoverEffect_9isEnabledQrqd___SbtAA011CustomHoverG0Rd__lFQOyACyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA0L11BorderShapeVGGAA01_duS0VyAA16RoundedRectangleVGGAA011_ForegroundmS0VyAA5ColorVGGAA011_BackgroundmS0VyA0_GG_AA09HighlightkG0VQo_AA06_ScaleG0VGMd) + 36)];
    *v34 = vdupq_n_s64(0x3FEF0A3D70A3D70AuLL);
    v34[1].i64[0] = v31;
    v34[1].i64[1] = v33;
    v35 = static Animation.easeInOut(duration:)();
    v36 = ButtonStyleConfiguration.isPressed.getter();
    v37 = &v14[*(v59 + 36)];
    *v37 = v35;
    v37[8] = v36 & 1;
    v38 = &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11hoverEffect_9isEnabledQrqd___SbtAA011CustomHoverG0Rd__lFQOyACyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA0L11BorderShapeVGGAA01_duS0VyAA16RoundedRectangleVGGAA011_ForegroundmS0VyAA5ColorVGGAA011_BackgroundmS0VyA0_GG_AA09HighlightkG0VQo_AA06_ScaleG0VGAA010_AnimationS0VySbGGMd;
    outlined init with copy of ModifiedContent<ModifiedContent<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0, _ScaleEffect>, _AnimationModifier<Bool>>(v14, v61, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11hoverEffect_9isEnabledQrqd___SbtAA011CustomHoverG0Rd__lFQOyACyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA0L11BorderShapeVGGAA01_duS0VyAA16RoundedRectangleVGGAA011_ForegroundmS0VyAA5ColorVGGAA011_BackgroundmS0VyA0_GG_AA09HighlightkG0VQo_AA06_ScaleG0VGAA010_AnimationS0VySbGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0, _ScaleEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0, _ScaleEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v39 = v14;
  }

  else
  {
    ButtonStyleConfiguration.label.getter();
    v40 = &v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA0E11BorderShapeVGGMd) + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ButtonBorderShapeVGMd);
    static ButtonBorderShape.roundedRectangle(radius:)();
    *v40 = swift_getKeyPath();
    v41 = &v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA0E11BorderShapeVGGAA01_dnL0VyAA16RoundedRectangleVGGMd) + 36)];
    v42 = *(type metadata accessor for RoundedRectangle() + 20);
    v43 = *MEMORY[0x1E697F468];
    v44 = type metadata accessor for RoundedCornerStyle();
    (*(*(v44 - 8) + 104))(&v41[v42], v43, v44);
    __asm { FMOV            V0.2D, #4.0 }

    *v41 = _Q0;
    v41[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ContentShapeModifierVyAA16RoundedRectangleVGMd) + 36)] = 0;
    LinkShapeStyle.init()();
    *&v3[*(v1 + 36)] = static Color.clear.getter();
    static CustomHoverEffect<>.highlight.getter();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ContentShapeModifier<RoundedRectangle>>, _ForegroundStyleModifier<LinkShapeStyle>>, _EnvironmentBackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type BlendedColor and conformance BlendedColor(&lazy protocol witness table cache variable for type HighlightHoverEffect and conformance HighlightHoverEffect, MEMORY[0x1E697C688]);
    v46 = v58;
    View.hoverEffect<A>(_:isEnabled:)();
    (*(v7 + 8))(v9, v46);
    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ContentShapeModifier<RoundedRectangle>>, _ForegroundStyleModifier<LinkShapeStyle>>, _EnvironmentBackgroundStyleModifier<Color>>(v3, &_s7SwiftUI15ModifiedContentVyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA0E11BorderShapeVGGAA01_dnL0VyAA16RoundedRectangleVGGAA011_ForegroundfL0VyAA04LinknF0VGGAA01_i10BackgroundfL0VyAA5ColorVGGMd);
    static UnitPoint.center.getter();
    v48 = v47;
    v50 = v49;
    v51 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11hoverEffect_9isEnabledQrqd___SbtAA011CustomHoverG0Rd__lFQOyACyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA0L11BorderShapeVGGAA01_duS0VyAA16RoundedRectangleVGGAA011_ForegroundmS0VyAA04LinkuM0VGGAA01_p10BackgroundmS0VyAA5ColorVGG_AA09HighlightkG0VQo_AA06_ScaleG0VGMd) + 36)];
    __asm { FMOV            V0.2D, #1.0 }

    *v51 = _Q0;
    *(v51 + 2) = v48;
    *(v51 + 3) = v50;
    v53 = static Animation.easeInOut(duration:)();
    v54 = ButtonStyleConfiguration.isPressed.getter();
    v55 = v61;
    v56 = &v5[*(v62 + 36)];
    *v56 = v53;
    v56[8] = v54 & 1;
    v38 = &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11hoverEffect_9isEnabledQrqd___SbtAA011CustomHoverG0Rd__lFQOyACyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA0L11BorderShapeVGGAA01_duS0VyAA16RoundedRectangleVGGAA011_ForegroundmS0VyAA04LinkuM0VGGAA01_p10BackgroundmS0VyAA5ColorVGG_AA09HighlightkG0VQo_AA06_ScaleG0VGAA010_AnimationS0VySbGGMd;
    outlined init with copy of ModifiedContent<ModifiedContent<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0, _ScaleEffect>, _AnimationModifier<Bool>>(v5, v55, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11hoverEffect_9isEnabledQrqd___SbtAA011CustomHoverG0Rd__lFQOyACyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA0L11BorderShapeVGGAA01_duS0VyAA16RoundedRectangleVGGAA011_ForegroundmS0VyAA04LinkuM0VGGAA01_p10BackgroundmS0VyAA5ColorVGG_AA09HighlightkG0VQo_AA06_ScaleG0VGAA010_AnimationS0VySbGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0, _ScaleEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0, _ScaleEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v39 = v5;
  }

  return outlined destroy of ModifiedContent<ModifiedContent<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0, _ScaleEffect>, _AnimationModifier<Bool>>(v39, v38);
}

double closure #1 in variable initialization expression of static ParticipantGrid.StyleGuide.default()
{
  v0 = type metadata accessor for UIListContentConfiguration();
  v40 = *(v0 - 8);
  v41 = v0;
  v1 = MEMORY[0x1EEE9AC00](v0);
  v39 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v34 - v3;
  v36 = type metadata accessor for BlendedColor();
  MEMORY[0x1EEE9AC00](v36);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Font.Leading();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = static Font.footnote.getter();
  static Font.caption.getter();
  v11 = *MEMORY[0x1E6980EA8];
  v12 = *(v8 + 104);
  v12(v10, v11, v7);
  v37 = Font.leading(_:)();

  v13 = *(v8 + 8);
  v13(v10, v7);
  v35 = static Color.primary.getter();
  static Font.caption.getter();
  v12(v10, v11, v7);
  v14 = Font.leading(_:)();

  v13(v10, v7);
  v15 = static Color.red.getter();
  v16 = DetailsStyleGuide.globalListRowBackgroundColor.unsafeMutableAddressor();
  outlined init with copy of BlendedColor(v16, v6);
  lazy protocol witness table accessor for type BlendedColor and conformance BlendedColor(&lazy protocol witness table cache variable for type BlendedColor and conformance BlendedColor, type metadata accessor for BlendedColor);
  v17 = AnyShapeStyle.init<A>(_:)();
  static Font.largeTitle.getter();
  static Font.Weight.light.getter();
  v18 = Font.weight(_:)();

  v19 = static Color.primary.getter();
  static UIListContentConfiguration.cell()();
  UIListContentConfiguration.directionalLayoutMargins.getter();
  v21 = v20;
  v22 = v41;
  v23 = *(v40 + 8);
  v23(v4, v41);
  v24 = v39;
  static UIListContentConfiguration.cell()();
  UIListContentConfiguration.directionalLayoutMargins.getter();
  v26 = v25;
  v23(v24, v22);
  *&static ParticipantGrid.StyleGuide.default = v38;
  *(&static ParticipantGrid.StyleGuide.default + 1) = 0x4056800000000000;
  if (v21 > v26)
  {
    *&v27 = v21;
  }

  else
  {
    *&v27 = v26;
  }

  qword_1EAD3A198 = v37;
  unk_1EAD3A1A0 = v35;
  xmmword_1EAD3A1A8 = 0u;
  xmmword_1EAD3A1B8 = 0u;
  xmmword_1EAD3A1C8 = 0u;
  xmmword_1EAD3A1D8 = 0u;
  xmmword_1EAD3A1E8 = 0u;
  xmmword_1EAD3A1F8 = 0u;
  *&xmmword_1EAD3A208 = 0;
  *(&xmmword_1EAD3A208 + 1) = v14;
  *&xmmword_1EAD3A218 = v15;
  *(&xmmword_1EAD3A218 + 1) = 0x4000000000000000;
  *&xmmword_1EAD3A228 = v17;
  *(&xmmword_1EAD3A228 + 1) = v18;
  *&xmmword_1EAD3A238 = v19;
  __asm { FMOV            V1.2D, #16.0 }

  *(&xmmword_1EAD3A238 + 8) = _Q1;
  qword_1EAD3A268 = v27;
  result = 0.0;
  *(&xmmword_1EAD3A248 + 8) = xmmword_1901E6030;
  qword_1EAD3A260 = 0;
  return result;
}

__int128 *ParticipantGrid.StyleGuide.default.unsafeMutableAddressor()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  return &static ParticipantGrid.StyleGuide.default;
}

uint64_t static ParticipantGrid.StyleGuide.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    v15 = a1;
    swift_once();
    a1 = v15;
  }

  v1 = xmmword_1EAD3A238;
  v17[12] = xmmword_1EAD3A248;
  v17[13] = unk_1EAD3A258;
  v2 = xmmword_1EAD3A1F8;
  v3 = xmmword_1EAD3A208;
  v17[8] = xmmword_1EAD3A208;
  v17[9] = xmmword_1EAD3A218;
  v4 = xmmword_1EAD3A218;
  v5 = xmmword_1EAD3A228;
  v17[10] = xmmword_1EAD3A228;
  v17[11] = xmmword_1EAD3A238;
  v6 = xmmword_1EAD3A1B8;
  v7 = xmmword_1EAD3A1C8;
  v17[4] = xmmword_1EAD3A1C8;
  v17[5] = xmmword_1EAD3A1D8;
  v8 = xmmword_1EAD3A1D8;
  v9 = xmmword_1EAD3A1E8;
  v17[6] = xmmword_1EAD3A1E8;
  v17[7] = xmmword_1EAD3A1F8;
  v17[0] = static ParticipantGrid.StyleGuide.default;
  v17[1] = *&qword_1EAD3A198;
  v11 = static ParticipantGrid.StyleGuide.default;
  v10 = *&qword_1EAD3A198;
  v12 = xmmword_1EAD3A1A8;
  v17[2] = xmmword_1EAD3A1A8;
  v17[3] = xmmword_1EAD3A1B8;
  v13 = unk_1EAD3A258;
  *(a1 + 192) = xmmword_1EAD3A248;
  *(a1 + 208) = v13;
  *(a1 + 128) = v3;
  *(a1 + 144) = v4;
  *(a1 + 160) = v5;
  *(a1 + 176) = v1;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *(a1 + 112) = v2;
  *a1 = v11;
  *(a1 + 16) = v10;
  v18 = qword_1EAD3A268;
  *(a1 + 224) = qword_1EAD3A268;
  *(a1 + 32) = v12;
  *(a1 + 48) = v6;
  return outlined init with copy of ParticipantGrid.StyleGuide(v17, v16);
}

uint64_t key path setter for EnvironmentValues._buttonBorderShape : EnvironmentValues, serialized(uint64_t a1)
{
  v2 = type metadata accessor for ButtonBorderShape();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues._buttonBorderShape.setter();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ContentShapeModifier<RoundedRectangle>>, _ForegroundStyleModifier<LinkShapeStyle>>, _EnvironmentBackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ContentShapeModifier<RoundedRectangle>>, _ForegroundStyleModifier<LinkShapeStyle>>, _EnvironmentBackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ContentShapeModifier<RoundedRectangle>>, _ForegroundStyleModifier<LinkShapeStyle>>, _EnvironmentBackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA0E11BorderShapeVGGAA01_dnL0VyAA16RoundedRectangleVGGAA011_ForegroundfL0VyAA04LinknF0VGGAA01_i10BackgroundfL0VyAA5ColorVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ContentShapeModifier<RoundedRectangle>>, _ForegroundStyleModifier<LinkShapeStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ButtonBorderShape> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentBackgroundStyleModifier<Color> and conformance _EnvironmentBackgroundStyleModifier<A>, &_s7SwiftUI35_EnvironmentBackgroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ContentShapeModifier<RoundedRectangle>>, _ForegroundStyleModifier<LinkShapeStyle>>, _EnvironmentBackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ContentShapeModifier<RoundedRectangle>>, _ForegroundStyleModifier<LinkShapeStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ContentShapeModifier<RoundedRectangle>>, _ForegroundStyleModifier<LinkShapeStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ContentShapeModifier<RoundedRectangle>>, _ForegroundStyleModifier<LinkShapeStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA0E11BorderShapeVGGAA01_dnL0VyAA16RoundedRectangleVGGAA011_ForegroundfL0VyAA04LinknF0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ContentShapeModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ButtonBorderShape> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<LinkShapeStyle> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA09LinkShapeD0VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ContentShapeModifier<RoundedRectangle>>, _ForegroundStyleModifier<LinkShapeStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ContentShapeModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ContentShapeModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ContentShapeModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA0E11BorderShapeVGGAA01_dnL0VyAA16RoundedRectangleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ButtonBorderShape> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _ContentShapeModifier<RoundedRectangle> and conformance _ContentShapeModifier<A>, &_s7SwiftUI21_ContentShapeModifierVyAA16RoundedRectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ContentShapeModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA0E11BorderShapeVGGMd);
    lazy protocol witness table accessor for type BlendedColor and conformance BlendedColor(&lazy protocol witness table cache variable for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label, MEMORY[0x1E697C8D0]);
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ButtonBorderShape> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ButtonBorderShape> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ButtonBorderShapeVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type BlendedColor and conformance BlendedColor(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0, _ScaleEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0, _ScaleEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0, _ScaleEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11hoverEffect_9isEnabledQrqd___SbtAA011CustomHoverG0Rd__lFQOyACyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA0L11BorderShapeVGGAA01_duS0VyAA16RoundedRectangleVGGAA011_ForegroundmS0VyAA5ColorVGGAA011_BackgroundmS0VyA0_GG_AA09HighlightkG0VQo_AA06_ScaleG0VGAA010_AnimationS0VySbGGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0, _ScaleEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ButtonBorderShape> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0, _ScaleEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0, _ScaleEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0, _ScaleEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11hoverEffect_9isEnabledQrqd___SbtAA011CustomHoverG0Rd__lFQOyACyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA0L11BorderShapeVGGAA01_duS0VyAA16RoundedRectangleVGGAA011_ForegroundmS0VyAA04LinkuM0VGGAA01_p10BackgroundmS0VyAA5ColorVGG_AA09HighlightkG0VQo_AA06_ScaleG0VGAA010_AnimationS0VySbGGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0, _ScaleEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ButtonBorderShape> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0, _ScaleEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0, _ScaleEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0, _ScaleEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0, _ScaleEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11hoverEffect_9isEnabledQrqd___SbtAA011CustomHoverG0Rd__lFQOyACyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA0L11BorderShapeVGGAA01_duS0VyAA16RoundedRectangleVGGAA011_ForegroundmS0VyAA5ColorVGGAA011_BackgroundmS0VyA0_GG_AA09HighlightkG0VQo_AA06_ScaleG0VGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA0E11BorderShapeVGGAA01_dnL0VyAA16RoundedRectangleVGGAA011_ForegroundfL0VyAA5ColorVGGAA011_BackgroundfL0VyAWGGMd);
    type metadata accessor for HighlightHoverEffect();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ContentShapeModifier<RoundedRectangle>>, _ForegroundStyleModifier<Color>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type BlendedColor and conformance BlendedColor(&lazy protocol witness table cache variable for type HighlightHoverEffect and conformance HighlightHoverEffect, MEMORY[0x1E697C688]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0, _ScaleEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0, _ScaleEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0, _ScaleEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11hoverEffect_9isEnabledQrqd___SbtAA011CustomHoverG0Rd__lFQOyACyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA0L11BorderShapeVGGAA01_duS0VyAA16RoundedRectangleVGGAA011_ForegroundmS0VyAA04LinkuM0VGGAA01_p10BackgroundmS0VyAA5ColorVGG_AA09HighlightkG0VQo_AA06_ScaleG0VGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA0E11BorderShapeVGGAA01_dnL0VyAA16RoundedRectangleVGGAA011_ForegroundfL0VyAA04LinknF0VGGAA01_i10BackgroundfL0VyAA5ColorVGGMd);
    type metadata accessor for HighlightHoverEffect();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ContentShapeModifier<RoundedRectangle>>, _ForegroundStyleModifier<LinkShapeStyle>>, _EnvironmentBackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type BlendedColor and conformance BlendedColor(&lazy protocol witness table cache variable for type HighlightHoverEffect and conformance HighlightHoverEffect, MEMORY[0x1E697C688]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0, _ScaleEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ContentShapeModifier<RoundedRectangle>>, _ForegroundStyleModifier<Color>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ContentShapeModifier<RoundedRectangle>>, _ForegroundStyleModifier<Color>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ContentShapeModifier<RoundedRectangle>>, _ForegroundStyleModifier<Color>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA0E11BorderShapeVGGAA01_dnL0VyAA16RoundedRectangleVGGAA011_ForegroundfL0VyAA5ColorVGGAA011_BackgroundfL0VyAWGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ContentShapeModifier<RoundedRectangle>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ButtonBorderShape> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ContentShapeModifier<RoundedRectangle>>, _ForegroundStyleModifier<Color>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ContentShapeModifier<RoundedRectangle>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ContentShapeModifier<RoundedRectangle>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ContentShapeModifier<RoundedRectangle>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA0E11BorderShapeVGGAA01_dnL0VyAA16RoundedRectangleVGGAA011_ForegroundfL0VyAA5ColorVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ContentShapeModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ButtonBorderShape> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ContentShapeModifier<RoundedRectangle>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ButtonBorderShape> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ContentShapeModifier<RoundedRectangle>>, _ForegroundStyleModifier<LinkShapeStyle>>, _EnvironmentBackgroundStyleModifier<Color>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0, _ScaleEffect>, _AnimationModifier<Bool>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0, _ScaleEffect>, _AnimationModifier<Bool>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for ParticipantGrid.StyleGuide(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
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

uint64_t storeEnumTagSinglePayload for ParticipantGrid.StyleGuide(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 232) = 1;
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

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0, _ScaleEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0, _ScaleEffect>, _AnimationModifier<Bool>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0, _ScaleEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0, _ScaleEffect>, _AnimationModifier<Bool>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0, _ScaleEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0, _ScaleEffect>, _AnimationModifier<Bool>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4ViewPAAE11hoverEffect_9isEnabledQrqd___SbtAA011CustomHoverH0Rd__lFQOyAEyAEyAEyAEyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA0M11BorderShapeVGGAA01_dvT0VyAA16RoundedRectangleVGGAA011_ForegroundnT0VyAA5ColorVGGAA011_BackgroundnT0VyA2_GG_AA09HighlightlH0VQo_AA06_ScaleH0VGAA010_AnimationT0VySbGGAEyAEyAgAEAH_AIQrqd___SbtAaJRd__lFQOyAEyAEyAZA0_yAA04LinkvN0VGGAA01_q10BackgroundnT0VyA2_GG_A10_Qo_A13_GA17_GGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0, _ScaleEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0, _ScaleEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0, _ScaleEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<<<opaque return type of View.hoverEffect<A>(_:isEnabled:)>>.0, _ScaleEffect>, _AnimationModifier<Bool>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t key path getter for PlatformTopEdgeBlurView.wantsPlatterBlur : PlatformTopEdgeBlurView@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x60))();
  *a2 = result & 1;
  return result;
}

uint64_t PlatformTopEdgeBlurView.wantsPlatterBlur.getter()
{
  v1 = OBJC_IVAR____TtC20CommunicationDetails23PlatformTopEdgeBlurView_wantsPlatterBlur;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PlatformTopEdgeBlurView.wantsPlatterBlur.setter(char a1)
{
  v3 = OBJC_IVAR____TtC20CommunicationDetails23PlatformTopEdgeBlurView_wantsPlatterBlur;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *PlatformTopEdgeBlurView.__allocating_init(wantsPlatterBlur:)(char a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC20CommunicationDetails23PlatformTopEdgeBlurView_backgroundView;
  *&v3[v4] = [objc_allocWithZone(MEMORY[0x1E69DD298]) init];
  v5 = OBJC_IVAR____TtC20CommunicationDetails23PlatformTopEdgeBlurView_wantsPlatterBlur;
  v3[OBJC_IVAR____TtC20CommunicationDetails23PlatformTopEdgeBlurView_wantsPlatterBlur] = 0;
  swift_beginAccess();
  v3[v5] = a1;
  v9.receiver = v3;
  v9.super_class = v1;
  v6 = objc_msgSendSuper2(&v9, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v6 setUserInteractionEnabled_];
  v7 = OBJC_IVAR____TtC20CommunicationDetails23PlatformTopEdgeBlurView_backgroundView;
  [*&v6[OBJC_IVAR____TtC20CommunicationDetails23PlatformTopEdgeBlurView_backgroundView] setUserInteractionEnabled_];
  [v6 addSubview_];

  return v6;
}

char *PlatformTopEdgeBlurView.init(wantsPlatterBlur:)(char a1)
{
  v3 = OBJC_IVAR____TtC20CommunicationDetails23PlatformTopEdgeBlurView_backgroundView;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E69DD298]) init];
  v4 = OBJC_IVAR____TtC20CommunicationDetails23PlatformTopEdgeBlurView_wantsPlatterBlur;
  v1[OBJC_IVAR____TtC20CommunicationDetails23PlatformTopEdgeBlurView_wantsPlatterBlur] = 0;
  swift_beginAccess();
  v1[v4] = a1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for PlatformTopEdgeBlurView();
  v5 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v5 setUserInteractionEnabled_];
  v6 = OBJC_IVAR____TtC20CommunicationDetails23PlatformTopEdgeBlurView_backgroundView;
  [*&v5[OBJC_IVAR____TtC20CommunicationDetails23PlatformTopEdgeBlurView_backgroundView] setUserInteractionEnabled_];
  [v5 addSubview_];

  return v5;
}

id PlatformTopEdgeBlurView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *PlatformTopEdgeBlurView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20CommunicationDetails23PlatformTopEdgeBlurView_backgroundView;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E69DD298]) init];
  v4[OBJC_IVAR____TtC20CommunicationDetails23PlatformTopEdgeBlurView_wantsPlatterBlur] = 0;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for PlatformTopEdgeBlurView();
  v10 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  [v10 setUserInteractionEnabled_];
  v11 = OBJC_IVAR____TtC20CommunicationDetails23PlatformTopEdgeBlurView_backgroundView;
  [*&v10[OBJC_IVAR____TtC20CommunicationDetails23PlatformTopEdgeBlurView_backgroundView] setUserInteractionEnabled_];
  [v10 addSubview_];

  return v10;
}

id PlatformTopEdgeBlurView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PlatformTopEdgeBlurView.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC20CommunicationDetails23PlatformTopEdgeBlurView_backgroundView;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E69DD298]) init];
  v1[OBJC_IVAR____TtC20CommunicationDetails23PlatformTopEdgeBlurView_wantsPlatterBlur] = 0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for PlatformTopEdgeBlurView();
  v4 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    [v6 setUserInteractionEnabled_];
    v7 = OBJC_IVAR____TtC20CommunicationDetails23PlatformTopEdgeBlurView_backgroundView;
    [*&v6[OBJC_IVAR____TtC20CommunicationDetails23PlatformTopEdgeBlurView_backgroundView] setUserInteractionEnabled_];
    [v6 addSubview_];
  }

  return v5;
}

Swift::Void __swiftcall PlatformTopEdgeBlurView.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlatformTopEdgeBlurView();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC20CommunicationDetails23PlatformTopEdgeBlurView_backgroundView];
  [v0 bounds];
  [v1 setFrame_];
  [v1 frame];
  [v1 setFrame_];
  [v0 setClipsToBounds_];
}

Swift::Void __swiftcall PlatformTopEdgeBlurView.setShowsBlurredBackground(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  v4 = _;
  v5 = *&v2[OBJC_IVAR____TtC20CommunicationDetails23PlatformTopEdgeBlurView_backgroundView];
  v6 = [v5 backgroundEffects];
  type metadata accessor for UIVisualEffect(0, &lazy cache variable for type metadata for UIVisualEffect);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    if (v7 < 0)
    {
      v25 = v7;
    }

    else
    {
      v25 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = MEMORY[0x193AEB0F0](v25);
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((((v8 == 0) ^ v4) & 1) == 0)
  {
    if (v4)
    {
      v26 = animated;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1901E6230;
      v10 = [objc_allocWithZone(MEMORY[0x1E69DCA80]) init];
      [v10 setScale_];
      [v10 setPreferredRange_];
      v11 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithBounds:v10 format:{0.0, 0.0, 100.0, 100.0}];
      v12 = swift_allocObject();
      v12[1].i64[0] = 0;
      v12[1].i64[1] = 0;
      v12[2] = vdupq_n_s64(0x4059000000000000uLL);
      v12[3].i64[0] = 0;
      v12[3].i64[1] = 0;
      v12[4].i64[0] = 0;
      v12[4].i64[1] = 0x3FEFAE147AE147AELL;
      v13 = swift_allocObject();
      *(v13 + 16) = partial apply for closure #1 in PlatformTopEdgeBlurView.makeMaskImage(start:end:);
      *(v13 + 24) = v12;
      v32 = partial apply for thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
      v33 = v13;
      aBlock = MEMORY[0x1E69E9820];
      v29 = 1107296256;
      v30 = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
      v31 = &block_descriptor_21;
      v14 = _Block_copy(&aBlock);

      v15 = [v11 imageWithActions_];

      _Block_release(v14);
      LODWORD(v14) = swift_isEscapingClosureAtFileLocation();

      if (v14)
      {
        __break(1u);
      }

      else
      {
        v16 = type metadata accessor for CustomTransparentBlurEffect();
        v17 = objc_allocWithZone(v16);
        *&v17[OBJC_IVAR____TtC20CommunicationDetailsP33_DC4BAC6700B115C68288899ABB1FCF9E27CustomTransparentBlurEffect_blurRadius] = 1077936128;
        v18 = [v15 CGImage];
        if (v18)
        {
          *&v17[OBJC_IVAR____TtC20CommunicationDetailsP33_DC4BAC6700B115C68288899ABB1FCF9E27CustomTransparentBlurEffect_maskImage] = v18;
          v27.receiver = v17;
          v27.super_class = v16;
          v19 = objc_msgSendSuper2(&v27, sel_init);

          *(v9 + 32) = v19;
          if (!v26)
          {
LABEL_8:
            isa = Array._bridgeToObjectiveC()().super.isa;

            [v5 setBackgroundEffects_];

            return;
          }

          goto LABEL_10;
        }
      }

      __break(1u);
      return;
    }

    v9 = MEMORY[0x1E69E7CC0];
    if (!animated)
    {
      goto LABEL_8;
    }

LABEL_10:
    v21 = objc_opt_self();
    v22 = swift_allocObject();
    *(v22 + 16) = v2;
    *(v22 + 24) = v9;
    v32 = partial apply for closure #1 in PlatformTopEdgeBlurView.setShowsBlurredBackground(_:animated:);
    v33 = v22;
    aBlock = MEMORY[0x1E69E9820];
    v29 = 1107296256;
    v30 = thunk for @escaping @callee_guaranteed () -> ();
    v31 = &block_descriptor_1;
    v23 = _Block_copy(&aBlock);
    v24 = v2;

    [v21 animateWithDuration:v23 animations:0.6];
    _Block_release(v23);
  }
}

uint64_t partial apply for closure #1 in PlatformTopEdgeBlurView.setShowsBlurredBackground(_:animated:)()
{
  v1 = *(v0 + 16);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(v1 + OBJC_IVAR____TtC20CommunicationDetails23PlatformTopEdgeBlurView_backgroundView);
  type metadata accessor for UIVisualEffect(0, &lazy cache variable for type metadata for UIVisualEffect);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v2 setBackgroundEffects_];
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void CustomTransparentBlurEffect._update(_:for:usage:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v31.receiver = v4;
  v31.super_class = type metadata accessor for CustomTransparentBlurEffect();
  objc_msgSendSuper2(&v31, sel__updateEffectDescriptor_forEnvironment_usage_, a1, a2, a3);
  if ([a2 allowsBlurring])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSNumberCtGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1901E51F0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v9;
    v10 = type metadata accessor for UIVisualEffect(0, &lazy cache variable for type metadata for NSNumber);
    *(inited + 48) = NSNumber.init(BOOLeanLiteral:)(1);
    *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 64) = v11;
    [a2 allowsDithering];
    *(inited + 72) = Bool._bridgeToObjectiveC()();
    *(inited + 80) = 0xD00000000000001ELL;
    *(inited + 88) = 0x80000001901FD250;
    *(inited + 96) = NSNumber.init(BOOLeanLiteral:)(1);
    v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSNumberCTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSNumberCtMd);
    swift_arrayDestroy();
    v29 = *MEMORY[0x1E6979D70];
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v12);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
    v13 = swift_initStackObject();
    *(v13 + 16) = xmmword_1901E6240;
    v30 = a1;
    *(v13 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v13 + 40) = v14;
    *(v13 + 48) = Float._bridgeToObjectiveC()();
    *(v13 + 72) = v10;
    strcpy((v13 + 80), "inputMaskImage");
    *(v13 + 95) = -18;
    v15 = OBJC_IVAR____TtC20CommunicationDetailsP33_DC4BAC6700B115C68288899ABB1FCF9E27CustomTransparentBlurEffect_maskImage;
    v16 = *&v4[OBJC_IVAR____TtC20CommunicationDetailsP33_DC4BAC6700B115C68288899ABB1FCF9E27CustomTransparentBlurEffect_maskImage];
    type metadata accessor for CGImageRef(0);
    v18 = v17;
    *(v13 + 120) = v17;
    *(v13 + 96) = v16;
    v19 = v16;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v13);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
    swift_arrayDestroy();
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_1901E6240;
    *(v20 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v20 + 40) = v21;
    *(v20 + 48) = NSNumber.init(floatLiteral:)(0.0);
    *(v20 + 72) = v10;
    strcpy((v20 + 80), "inputMaskImage");
    *(v20 + 95) = -18;
    v22 = *&v4[v15];
    *(v20 + 120) = v18;
    *(v20 + 96) = v22;
    v23 = v22;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v20);
    swift_setDeallocating();
    swift_arrayDestroy();
    v24 = objc_allocWithZone(MEMORY[0x1E69DD848]);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v26 = Dictionary._bridgeToObjectiveC()().super.isa;

    v27 = Dictionary._bridgeToObjectiveC()().super.isa;

    v28 = [v24 initWithFilterType:v29 configurationValues:isa requestedValues:v26 identityValues:v27];

    [v28 setIdentityScaleHint_];
    [v28 setRequestedScaleHint_];
    [v30 addFilterEntry_];
  }
}

unint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);
        type metadata accessor for UIVisualEffect(0, &lazy cache variable for type metadata for NSNumber);

        v19 = v18;
        swift_dynamicCast();
        outlined init with take of Any(&v25, v27);
        outlined init with take of Any(v27, v28);
        outlined init with take of Any(v28, &v26);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v17, v16);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v17;
          v9[1] = v16;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0(v11);
          result = outlined init with take of Any(&v26, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v17;
          v21[1] = v16;
          result = outlined init with take of Any(&v26, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

id PlatformTopEdgeBlurView.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t type metadata accessor for UIVisualEffect(uint64_t a1, unint64_t *a2)
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSNumberCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSNumberCGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Any)(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t outlined init with copy of (String, Any)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t partial apply for closure #1 in PlatformTopEdgeBlurView.makeMaskImage(start:end:)(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[9];
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
  [v11 setBounds_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1901E51F0;
  v13 = objc_opt_self();
  v14 = [v13 whiteColor];
  v15 = [v14 CGColor];

  type metadata accessor for CGColorRef(0);
  v17 = v16;
  *(v12 + 56) = v16;
  *(v12 + 32) = v15;
  v18 = [v13 whiteColor];
  v19 = [v18 CGColor];

  *(v12 + 88) = v17;
  *(v12 + 64) = v19;
  v20 = [v13 whiteColor];
  v21 = [v20 colorWithAlphaComponent_];

  v22 = [v21 CGColor];
  *(v12 + 120) = v17;
  *(v12 + 96) = v22;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v11 setColors_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1901E6250;
  *(v24 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(v24 + 40) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  *(v24 + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  type metadata accessor for UIVisualEffect(0, &lazy cache variable for type metadata for NSNumber);
  v25 = Array._bridgeToObjectiveC()().super.isa;

  [v11 setLocations_];

  [v11 setStartPoint_];
  [v11 setEndPoint_];
  v26 = [a1 CGContext];
  [v11 renderInContext_];
}

void type metadata accessor for CGImageRef(uint64_t a1, unint64_t *a2)
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

uint64_t key path getter for DetailsPageViewController.currentIndex : DetailsPageViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t DetailsPageViewController.currentIndex.getter()
{
  v1 = OBJC_IVAR____TtC20CommunicationDetails25DetailsPageViewController_currentIndex;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DetailsPageViewController.currentIndex.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20CommunicationDetails25DetailsPageViewController_currentIndex;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = v1 + OBJC_IVAR____TtC20CommunicationDetails25DetailsPageViewController_pageSelectionDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(a1, *(v1 + OBJC_IVAR____TtC20CommunicationDetails25DetailsPageViewController_isCurrentIndexSelectionAnimated), ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t DetailsPageViewController.currentPage.getter()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x78);
  v8 = (v7)(v3);
  v9 = *((*v6 & *v0) + 0x98);
  v10 = *(v9() + 16);

  if (v8 >= v10)
  {
    v15 = Logger.detailsViewController.unsafeMutableAddressor();
    (*(v2 + 16))(v5, v15, v1);
    v16 = v0;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = v7();

      _os_log_impl(&dword_190119000, v17, v18, "Not able to find current page for index: (%ld).", v19, 0xCu);
      MEMORY[0x193AEBB30](v19, -1, -1);
    }

    else
    {

      v17 = v16;
    }

    (*(v2 + 8))(v5, v1);
    return 0;
  }

  else
  {
    v12 = (v7)(v11);
    result = v9();
    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v12 < *(result + 16))
    {
      v14 = *(result + 16 * v12 + 32);

      return v14;
    }

    __break(1u);
  }

  return result;
}

uint64_t key path getter for DetailsPageViewController.pages : DetailsPageViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x98))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DetailsPageViewController.pages : DetailsPageViewController(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xA0);

  return v2(v3);
}

uint64_t DetailsPageViewController.pages.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20CommunicationDetails25DetailsPageViewController_pages;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t key path getter for DetailsPageViewController.isBetweenPages : DetailsPageViewController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC8))();
  *a2 = result & 1;
  return result;
}

uint64_t DetailsPageViewController.isBetweenPages.getter()
{
  v1 = OBJC_IVAR____TtC20CommunicationDetails25DetailsPageViewController_isBetweenPages;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DetailsPageViewController.isBetweenPages.setter(char a1)
{
  v3 = OBJC_IVAR____TtC20CommunicationDetails25DetailsPageViewController_isBetweenPages;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = v1 + OBJC_IVAR____TtC20CommunicationDetails25DetailsPageViewController_pageSelectionDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(a1 & 1, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

void (*DetailsPageViewController.isBetweenPages.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC20CommunicationDetails25DetailsPageViewController_isBetweenPages;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DetailsPageViewController.isBetweenPages.modify;
}

void DetailsPageViewController.isBetweenPages.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3] + OBJC_IVAR____TtC20CommunicationDetails25DetailsPageViewController_pageSelectionDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = v3[3];
      v5 = v3[4];
      v7 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      (*(v7 + 16))(*(v6 + v5), ObjectType, v7);
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

id DetailsPageViewController.__allocating_init(pages:pageSelectionDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = specialized DetailsPageViewController.init(pages:pageSelectionDelegate:)(a1, a2, a3);

  swift_unknownObjectRelease();
  return v8;
}

id DetailsPageViewController.init(pages:pageSelectionDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized DetailsPageViewController.init(pages:pageSelectionDelegate:)(a1, a2, a3);

  swift_unknownObjectRelease();
  return v3;
}

uint64_t DetailsPageViewController.addPage(_:at:)(void *a1, uint64_t a2, int64_t a3)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v3) + 0xA8))(v11);
  if (*(*v8 + 16) < a3)
  {
    __break(1u);
  }

  else if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = result;
    v10 = a1;
    specialized Array.replaceSubrange<A>(_:with:)(a3, a3, v10, a2);

    return v9(v11, 0);
  }

  __break(1u);
  return result;
}

id DetailsPageViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DetailsPageViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC20CommunicationDetails25DetailsPageViewController_currentIndex) = 0;
  *(v0 + OBJC_IVAR____TtC20CommunicationDetails25DetailsPageViewController_pageSelectionDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC20CommunicationDetails25DetailsPageViewController_isBetweenPages) = 0;
  *(v0 + OBJC_IVAR____TtC20CommunicationDetails25DetailsPageViewController_isCurrentIndexSelectionAnimated) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall DetailsPageViewController.viewDidLoad()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DetailsPageViewController();
  v24.receiver = v1;
  v24.super_class = v6;
  objc_msgSendSuper2(&v24, sel_viewDidLoad);
  [v1 setDataSource_];
  [v1 setDelegate_];
  v7 = Logger.detailsViewController.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v7, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_190119000, v8, v9, "DetailsPageViewController.viewDidLoad", v10, 2u);
    MEMORY[0x193AEBB30](v10, -1, -1);
  }

  v11 = (*(v3 + 8))(v5, v2);
  v12 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x98))(v11);
  if (*(v12 + 16))
  {
    v13 = *(v12 + 40);
    v14 = *(v12 + 32);

    ObjectType = swift_getObjectType();
    v23 = v14;
    v16 = *(v13 + 8);
    v17 = *v16(ObjectType, v13);
    (*(v17 + 496))(1);

    v23 = v14;
    v18 = *v16(ObjectType, v13);
    (*(v18 + 744))();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1901E6230;
    *(v19 + 32) = v14;
    type metadata accessor for UIViewController(0, &lazy cache variable for type metadata for UIViewController);
    v20 = v14;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v1 setViewControllers:isa direction:0 animated:1 completion:0];
  }

  else
  {
  }
}

Swift::Void __swiftcall DetailsPageViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DetailsPageViewController();
  objc_msgSendSuper2(&v3, sel_viewWillAppear_, a1);
  [v1 setDataSource_];
  [v1 setDataSource_];
}

id @objc DetailsPageViewController.pageViewController(_:viewControllerBefore:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t (*a6)(id))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = a6(v11);

  return v13;
}

Swift::Void __swiftcall DetailsPageViewController.navigate(to:animated:)(Swift::Int to, Swift::Bool animated)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v60 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v60 - v15;
  v17 = MEMORY[0x1E69E7D40];
  v18 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x78);
  v64 = (*MEMORY[0x1E69E7D40] & *v2) + 120;
  v65 = v18;
  if ((v18)(v14) == to)
  {
    v19 = Logger.detailsViewController.unsafeMutableAddressor();
    (*(v7 + 16))(v10, v19, v6);
    v20 = v2;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      *(v23 + 4) = v65();

      _os_log_impl(&dword_190119000, v21, v22, "> Tried to navigate to the current page (%ld). Bailing.", v23, 0xCu);
      MEMORY[0x193AEBB30](v23, -1, -1);
    }

    else
    {

      v21 = v20;
    }

    (*(v7 + 8))(v10, v6);
    return;
  }

  v63 = v6;
  v24 = [v2 view];
  if (!v24)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v25 = v24;
  v26 = [v24 effectiveUserInterfaceLayoutDirection];

  v27 = v26 != 1;
  if (v65() >= to || (v28 = *((*((*v17 & *v3) + 0x98))() + 16), v29 = , v28 <= to))
  {
    v29 = v65();
    if (to < 0 || v29 <= to)
    {
      v48 = Logger.detailsViewController.unsafeMutableAddressor();
      v49 = v63;
      (*(v7 + 16))(v16, v48, v63);
      v50 = v3;
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 134218240;
        *(v53 + 4) = to;
        *(v53 + 12) = 2048;
        *(v53 + 14) = v65();

        _os_log_impl(&dword_190119000, v51, v52, "Unable to go to page with index %ld from currentIndex %ld", v53, 0x16u);
        MEMORY[0x193AEBB30](v53, -1, -1);
      }

      else
      {

        v51 = v50;
      }

      (*(v7 + 8))(v16, v49);
      return;
    }
  }

  else
  {
    v27 = v26 == 1;
  }

  v30 = OBJC_IVAR____TtC20CommunicationDetails25DetailsPageViewController_isCurrentIndexSelectionAnimated;
  *(v3 + OBJC_IVAR____TtC20CommunicationDetails25DetailsPageViewController_isCurrentIndexSelectionAnimated) = animated;
  v31 = (*((*v17 & *v3) + 0x98))(v29);
  if (to < 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (*(v31 + 16) <= to)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v61 = v30;
  v32 = v27;
  v62 = *(v31 + 16 * to + 32);
  v33 = v62;

  ObjectType = swift_getObjectType();
  aBlock[0] = v33;
  v35 = *(*(*(&v62 + 1) + 8))(ObjectType);
  (*(v35 + 496))(1);

  (*((*v17 & *v3) + 0xD0))(1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1901E6230;
  *(v36 + 32) = v33;
  type metadata accessor for UIViewController(0, &lazy cache variable for type metadata for UIViewController);
  v37 = v33;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v39 = swift_allocObject();
  *(v39 + 16) = v3;
  *(v39 + 24) = v62;
  aBlock[4] = partial apply for closure #1 in DetailsPageViewController.navigate(to:animated:);
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_2;
  v40 = _Block_copy(aBlock);
  v41 = v3;
  v42 = v37;

  [v41 setViewControllers:isa direction:v32 animated:1 completion:v40];
  _Block_release(v40);

  v43 = Logger.detailsViewController.unsafeMutableAddressor();
  (*(v7 + 16))(v13, v43, v63);
  v44 = v41;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 134218240;
    *(v47 + 4) = v65();

    *(v47 + 12) = 2048;
    *(v47 + 14) = to;
    _os_log_impl(&dword_190119000, v45, v46, "> Transitioning from page=%ld to page=%ld.", v47, 0x16u);
    MEMORY[0x193AEBB30](v47, -1, -1);
  }

  else
  {

    v45 = v44;
  }

  (*(v7 + 8))(v13, v63);
  v54 = OBJC_IVAR____TtC20CommunicationDetails25DetailsPageViewController_currentIndex;
  swift_beginAccess();
  *(&v44->isa + v54) = to;
  v55 = v44 + OBJC_IVAR____TtC20CommunicationDetails25DetailsPageViewController_pageSelectionDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v57 = v61;
  if (Strong)
  {
    v58 = *(v55 + 1);
    v59 = swift_getObjectType();
    (*(v58 + 8))(to, *(v3 + v57), v59, v58);
    swift_unknownObjectRelease();
  }

  *(v3 + v57) = 1;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id DetailsPageViewController.__allocating_init(transitionStyle:navigationOrientation:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    type metadata accessor for UIPageViewControllerOptionsKey();
    lazy protocol witness table accessor for type UIPageViewControllerOptionsKey and conformance UIPageViewControllerOptionsKey(&lazy protocol witness table cache variable for type UIPageViewControllerOptionsKey and conformance UIPageViewControllerOptionsKey);
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v8 = [objc_allocWithZone(v4) initWithTransitionStyle:a1 navigationOrientation:a2 options:v7.super.isa];

  return v8;
}

id DetailsPageViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DetailsPageViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance UIPageViewControllerOptionsKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance UIPageViewControllerOptionsKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance UIPageViewControllerOptionsKey@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x193AEA8E0](v2);

  *a1 = v3;
  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance UIPageViewControllerOptionsKey()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x193AEA990](v0);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance UIPageViewControllerOptionsKey()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UIPageViewControllerOptionsKey()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UIPageViewControllerOptionsKey()
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

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance UIPageViewControllerOptionsKey@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x193AEA8E0](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance UIPageViewControllerOptionsKey@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIPageViewControllerOptionsKey()
{
  lazy protocol witness table accessor for type UIPageViewControllerOptionsKey and conformance UIPageViewControllerOptionsKey(&lazy protocol witness table cache variable for type UIPageViewControllerOptionsKey and conformance UIPageViewControllerOptionsKey);
  lazy protocol witness table accessor for type UIPageViewControllerOptionsKey and conformance UIPageViewControllerOptionsKey(&lazy protocol witness table cache variable for type UIPageViewControllerOptionsKey and conformance UIPageViewControllerOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20CommunicationDetails0E22ContentOffsetProviding_So16UIViewControllerCXcGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails0B22ContentOffsetProviding_So16UIViewControllerCXcMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

id specialized DetailsPageViewController.init(pages:pageSelectionDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC20CommunicationDetails25DetailsPageViewController_currentIndex] = 0;
  *&v3[OBJC_IVAR____TtC20CommunicationDetails25DetailsPageViewController_pageSelectionDelegate + 8] = 0;
  v6 = swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC20CommunicationDetails25DetailsPageViewController_isBetweenPages] = 0;
  v3[OBJC_IVAR____TtC20CommunicationDetails25DetailsPageViewController_isCurrentIndexSelectionAnimated] = 1;
  *&v3[OBJC_IVAR____TtC20CommunicationDetails25DetailsPageViewController_pages] = a1;
  *(v6 + 8) = a3;
  swift_unknownObjectWeakAssign();
  v18.receiver = v3;
  v18.super_class = type metadata accessor for DetailsPageViewController();

  result = objc_msgSendSuper2(&v18, sel_initWithTransitionStyle_navigationOrientation_options_, 1, 0, 0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = result;
    v10 = result;
    v11 = (a1 + 40);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      ObjectType = swift_getObjectType();
      v15 = *(v13 + 8);
      v16 = v12;
      v17 = *v15(ObjectType, v13);
      (*(v17 + 496))(1);

      v11 += 2;
      --v8;
    }

    while (v8);

    return v9;
  }

  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails0B22ContentOffsetProviding_So16UIViewControllerCXcMd);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;
    result = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > v6[3] >> 1)
  {
    if (v7 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v7;
    }

    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v16, 1, v6);
    *v4 = v6;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v8, a2, 1, a3, a4);
  *v4 = v6;
  return result;
}

uint64_t specialized DetailsPageViewController.pageViewController(_:viewControllerBefore:)()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x98);
  v2 = v1();
  v3 = *(v2 + 16);
  if (v3)
  {
    v11 = v1;
    type metadata accessor for MainActor();
    result = type metadata accessor for UIViewController(0, &lazy cache variable for type metadata for NSObject);
    v5 = 0;
    v6 = 0;
    while (1)
    {
      if (v6 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_14;
      }

      v7 = *(v2 + v5 + 32);
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        break;
      }

      ++v6;
      v5 += 16;
      if (v3 == v6)
      {
        goto LABEL_8;
      }
    }

    if (!v6)
    {
      return 0;
    }

    result = (v11)(v9);
    if (v6 <= *(result + 16))
    {
      v10 = *(result + v5 + 16);

      return v10;
    }

LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_8:

    return 0;
  }

  return result;
}

uint64_t specialized DetailsPageViewController.pageViewController(_:viewControllerAfter:)()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x98);
  v2 = v1();
  v3 = *(v2 + 16);
  if (v3)
  {
    v14 = v1;
    type metadata accessor for MainActor();
    result = type metadata accessor for UIViewController(0, &lazy cache variable for type metadata for NSObject);
    v5 = 0;
    v6 = 0;
    while (1)
    {
      if (v6 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_14;
      }

      v7 = *(v2 + v5 + 32);
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        break;
      }

      ++v6;
      v5 += 16;
      if (v3 == v6)
      {
        goto LABEL_8;
      }
    }

    v10 = v6 + 1;
    v11 = *((v14)(v9) + 16);

    if (v10 >= v11)
    {
      return 0;
    }

    result = (v14)(v12);
    if (v10 < *(result + 16))
    {
      v13 = *(result + v5 + 48);

      return v13;
    }

LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_8:

    return 0;
  }

  return result;
}

uint64_t specialized DetailsPageViewController.pageViewController(_:willTransitionTo:)(uint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    if (result >= 0)
    {
      result &= 0xFFFFFFFFFFFFFF8uLL;
    }

    result = MEMORY[0x193AEB0F0](result);
    v2 = result;
    if (!result)
    {
      return (*((*MEMORY[0x1E69E7D40] & *v22) + 0xD0))(1);
    }
  }

  else
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return (*((*MEMORY[0x1E69E7D40] & *v22) + 0xD0))(1);
    }
  }

  if (v2 >= 1)
  {
    v3 = 0;
    v4 = &lazy cache variable for type metadata for UIViewController;
    v5 = 0x1E69DD258uLL;
    v6 = v1 & 0xC000000000000001;
    v7 = &_s20CommunicationDetails0B22ContentOffsetProviding_pMd;
    do
    {
      if (v6)
      {
        v19 = MEMORY[0x193AEB000](v3, v1);
      }

      else
      {
        v19 = *(v1 + 8 * v3 + 32);
      }

      v20 = v19;
      v25 = v19;
      type metadata accessor for UIViewController(0, v4);
      v21 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(v7);
      if (swift_dynamicCast())
      {
        outlined init with take of DetailsContentOffsetProviding(v23, v26);
        v8 = v6;
        v9 = v2;
        v10 = v1;
        v11 = v7;
        v12 = v5;
        v13 = v4;
        v14 = v27;
        v15 = v28;
        __swift_project_boxed_opaque_existential_1(v26, v27);
        v16 = *(v15 + 8);
        v17 = v15;
        v4 = v13;
        v5 = v12;
        v7 = v11;
        v1 = v10;
        v2 = v9;
        v6 = v8;
        v18 = *v16(v14, v17);
        (*(v18 + 496))(1);

        __swift_destroy_boxed_opaque_existential_1(v26);
      }

      else
      {

        v24 = 0;
        memset(v23, 0, sizeof(v23));
        outlined destroy of DetailsContentOffsetProviding?(v23);
      }

      ++v3;
    }

    while (v2 != v3);
    return (*((*MEMORY[0x1E69E7D40] & *v22) + 0xD0))(1);
  }

  __break(1u);
  return result;
}

void specialized DetailsPageViewController.pageViewController(_:didFinishAnimating:previousViewControllers:transitionCompleted:)(void *a1, char a2, char a3)
{
  LOBYTE(v5) = a2;
  v6 = [a1 viewControllers];
  if (!v6)
  {
    return;
  }

  v7 = v6;
  type metadata accessor for UIViewController(0, &lazy cache variable for type metadata for UIViewController);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    goto LABEL_34;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_38;
  }

LABEL_4:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x193AEB000](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_43:
      __break(1u);
      return;
    }

    v9 = *(v8 + 32);
  }

  v49 = v9;

  v11 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x98);
  v12 = v11(v10);
  v8 = *(v12 + 16);
  if (!v8)
  {
LABEL_14:

LABEL_38:

    return;
  }

  v47 = v11;
  v45 = a3;
  v46 = v5;
  v48 = v3;
  type metadata accessor for MainActor();
  type metadata accessor for UIViewController(0, &lazy cache variable for type metadata for NSObject);
  v13 = 0;
  v14 = 0;
  while (1)
  {
    if (v14 >= *(v12 + 16))
    {
      __break(1u);
LABEL_34:
      if (v8 < 0)
      {
        v44 = v8;
      }

      else
      {
        v44 = v8 & 0xFFFFFFFFFFFFFF8;
      }

      if (!MEMORY[0x193AEB0F0](v44))
      {
        goto LABEL_38;
      }

      goto LABEL_4;
    }

    v5 = *(v12 + v13 + 32);
    static MainActor.shared.getter();
    dispatch thunk of Actor.unownedExecutor.getter();
    a3 = v15;
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v3 = static NSObject.== infix(_:_:)();

    if (v3)
    {
      break;
    }

    ++v14;
    v13 += 16;
    if (v8 == v14)
    {
      goto LABEL_14;
    }
  }

  v17 = v48;
  v18 = v11(v16);
  if (v14 >= *(v18 + 16))
  {
    goto LABEL_43;
  }

  v19 = *(v18 + v13 + 40);
  v20 = *(v18 + v13 + 32);

  ObjectType = swift_getObjectType();
  v22 = (*(v19 + 8))(ObjectType, v19);

  (*(*v22 + 496))(1);

  v23 = OBJC_IVAR____TtC20CommunicationDetails25DetailsPageViewController_currentIndex;
  swift_beginAccess();
  *(v48 + v23) = v14;
  v24 = v48 + OBJC_IVAR____TtC20CommunicationDetails25DetailsPageViewController_pageSelectionDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v26 = MEMORY[0x1E69E7D40];
  if (Strong)
  {
    v27 = *(v24 + 1);
    v28 = swift_getObjectType();
    (*(v27 + 8))(v14, *(v48 + OBJC_IVAR____TtC20CommunicationDetails25DetailsPageViewController_isCurrentIndexSelectionAnimated), v28, v27);
    Strong = swift_unknownObjectRelease();
  }

  if (v46)
  {
    if (v45)
    {
      v29 = v47(Strong);
      v30 = *(v29 + 16);
      if (v30)
      {
        v31 = (v29 + 40);
        do
        {
          v32 = *(v31 - 1);
          v33 = *v31;
          v34 = swift_getObjectType();
          if (v32 == v49)
          {
            v40 = *(v33 + 8);
            v35 = v32;
            v41 = *v40(v34, v33);
            v42 = (*(v41 + 720))();

            if (v42)
            {
              goto LABEL_23;
            }

            v43 = *v40(v34, v33);
            (*(v43 + 744))();
          }

          else
          {
            v35 = v32;
            v36 = *(v33 + 8);
            v37 = *v36(v34, v33);
            v38 = (*(v37 + 720))();

            if ((v38 & 1) == 0)
            {
              goto LABEL_23;
            }

            v39 = *v36(v34, v33);
            (*(v39 + 752))();
          }

LABEL_23:

          v31 += 2;
          --v30;
        }

        while (v30);
      }

      v17 = v48;
      v26 = MEMORY[0x1E69E7D40];
    }

    (*((*v26 & *v17) + 0xD0))(0);
  }
}

uint64_t partial apply for closure #1 in DetailsPageViewController.navigate(to:animated:)(char a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = MEMORY[0x1E69E7D40];
  v6 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0xD0))(0);
  if (a1)
  {
    v7 = (*((*v5 & *v3) + 0x98))(v6);
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = (v7 + 40);
      do
      {
        v10 = *(v9 - 1);
        v11 = *v9;
        ObjectType = swift_getObjectType();
        v13 = *(v11 + 8);
        v14 = v10;
        v15 = *v13(ObjectType, v11);
        if (v10 == v4)
        {
          (*(v15 + 744))();
        }

        else
        {
          (*(v15 + 752))();
        }

        v9 += 2;
        --v8;
      }

      while (v8);
    }
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void type metadata accessor for UIPageViewControllerOptionsKey()
{
  if (!lazy cache variable for type metadata for UIPageViewControllerOptionsKey)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for UIPageViewControllerOptionsKey);
    }
  }
}

uint64_t lazy protocol witness table accessor for type UIPageViewControllerOptionsKey and conformance UIPageViewControllerOptionsKey(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UIPageViewControllerOptionsKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for UIViewController(uint64_t a1, unint64_t *a2)
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

uint64_t outlined destroy of DetailsContentOffsetProviding?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails0B22ContentOffsetProviding_pSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of DetailsContentOffsetProviding(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
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

uint64_t ForEach<>.init(_:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  swift_getKeyPath();
  ForEach<>.init(_:id:content:)();
  return (*(v6 + 8))(a1, a4);
}

uint64_t key path getter for TabSubOption.id : TabSubOption@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 32))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t Header.StyleGuide.quickActionButtonConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Header.StyleGuide() + 92);
  v4 = type metadata accessor for UIButton.Configuration();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Header.StyleGuide()
{
  result = type metadata singleton initialization cache for Header.StyleGuide;
  if (!type metadata singleton initialization cache for Header.StyleGuide)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id Header.StyleGuide.quickActionButtonForegroundColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for Header.StyleGuide() + 100));

  return v1;
}

uint64_t Header.StyleGuide.quickActionButtonCornerStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Header.StyleGuide() + 104);
  v4 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Header.StyleGuide.quickActionButtonSize.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Header.StyleGuide() + 112);
  v4 = type metadata accessor for UIButton.Configuration.Size();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t outlined init with copy of BlendedColor?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t Header.StyleGuide.buttonTypeComparator.getter()
{
  v1 = *(v0 + *(type metadata accessor for Header.StyleGuide() + 144));

  return v1;
}

uint64_t default argument 3 of Header.StyleGuide.init(preferredTopPadding:usesScrollPocket:quickActionButtonConfiguration:quickActionButtonBackgroundColor:quickActionButtonForegroundColor:quickActionButtonCornerStyle:quickActionButtonContentInsets:quickActionButtonSize:quickActionButtonSpacing:quickActionTopSpacing:collapsedQuickActionTranslation:quickActionBottomSpacing:quickActionBottomSpacingForHiddenTabs:avatarTopPadding:collapsedAvatarTopPadding:avatarBackgroundStyle:avatarToHeaderTextVerticalSpacing:collapsedAvatarToHeaderTextVerticalSpacing:singleContactFont:singleContactVStackSpacing:blockedContactFont:blockedContactHStackSpacing:titleColor:editableTextFieldFont:editableTextFieldPadding:editableTextFieldBackground:groupNameTextFieldPadding:groupNameFont:defaultAvatarSize:collapsedAvatarSize:quickActionButtonBackgroundMaterial:quickActionButtonBackgroundColorTransformer:buttonTypeComparator:)@<X0>(uint64_t a1@<X8>)
{
  v2 = DetailsStyleGuide.globalListRowBackgroundColor.unsafeMutableAddressor();
  outlined init with copy of BlendedColor(v2, a1, type metadata accessor for BlendedColor);
  v3 = type metadata accessor for BlendedColor();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t default argument 5 of Header.StyleGuide.init(preferredTopPadding:usesScrollPocket:quickActionButtonConfiguration:quickActionButtonBackgroundColor:quickActionButtonForegroundColor:quickActionButtonCornerStyle:quickActionButtonContentInsets:quickActionButtonSize:quickActionButtonSpacing:quickActionTopSpacing:collapsedQuickActionTranslation:quickActionBottomSpacing:quickActionBottomSpacingForHiddenTabs:avatarTopPadding:collapsedAvatarTopPadding:avatarBackgroundStyle:avatarToHeaderTextVerticalSpacing:collapsedAvatarToHeaderTextVerticalSpacing:singleContactFont:singleContactVStackSpacing:blockedContactFont:blockedContactHStackSpacing:titleColor:editableTextFieldFont:editableTextFieldPadding:editableTextFieldBackground:groupNameTextFieldPadding:groupNameFont:defaultAvatarSize:collapsedAvatarSize:quickActionButtonBackgroundMaterial:quickActionButtonBackgroundColorTransformer:buttonTypeComparator:)@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t default argument 18 of Header.StyleGuide.init(preferredTopPadding:usesScrollPocket:quickActionButtonConfiguration:quickActionButtonBackgroundColor:quickActionButtonForegroundColor:quickActionButtonCornerStyle:quickActionButtonContentInsets:quickActionButtonSize:quickActionButtonSpacing:quickActionTopSpacing:collapsedQuickActionTranslation:quickActionBottomSpacing:quickActionBottomSpacingForHiddenTabs:avatarTopPadding:collapsedAvatarTopPadding:avatarBackgroundStyle:avatarToHeaderTextVerticalSpacing:collapsedAvatarToHeaderTextVerticalSpacing:singleContactFont:singleContactVStackSpacing:blockedContactFont:blockedContactHStackSpacing:titleColor:editableTextFieldFont:editableTextFieldPadding:editableTextFieldBackground:groupNameTextFieldPadding:groupNameFont:defaultAvatarSize:collapsedAvatarSize:quickActionButtonBackgroundMaterial:quickActionButtonBackgroundColorTransformer:buttonTypeComparator:)()
{
  static Font.title.getter();
  static Font.Weight.bold.getter();
  v0 = Font.weight(_:)();

  return v0;
}

uint64_t default argument 20 of Header.StyleGuide.init(preferredTopPadding:usesScrollPocket:quickActionButtonConfiguration:quickActionButtonBackgroundColor:quickActionButtonForegroundColor:quickActionButtonCornerStyle:quickActionButtonContentInsets:quickActionButtonSize:quickActionButtonSpacing:quickActionTopSpacing:collapsedQuickActionTranslation:quickActionBottomSpacing:quickActionBottomSpacingForHiddenTabs:avatarTopPadding:collapsedAvatarTopPadding:avatarBackgroundStyle:avatarToHeaderTextVerticalSpacing:collapsedAvatarToHeaderTextVerticalSpacing:singleContactFont:singleContactVStackSpacing:blockedContactFont:blockedContactHStackSpacing:titleColor:editableTextFieldFont:editableTextFieldPadding:editableTextFieldBackground:groupNameTextFieldPadding:groupNameFont:defaultAvatarSize:collapsedAvatarSize:quickActionButtonBackgroundMaterial:quickActionButtonBackgroundColorTransformer:buttonTypeComparator:)()
{
  static Font.body.getter();
  v0 = Font.bold()();

  return v0;
}

id default argument 22 of Header.StyleGuide.init(preferredTopPadding:usesScrollPocket:quickActionButtonConfiguration:quickActionButtonBackgroundColor:quickActionButtonForegroundColor:quickActionButtonCornerStyle:quickActionButtonContentInsets:quickActionButtonSize:quickActionButtonSpacing:quickActionTopSpacing:collapsedQuickActionTranslation:quickActionBottomSpacing:quickActionBottomSpacingForHiddenTabs:avatarTopPadding:collapsedAvatarTopPadding:avatarBackgroundStyle:avatarToHeaderTextVerticalSpacing:collapsedAvatarToHeaderTextVerticalSpacing:singleContactFont:singleContactVStackSpacing:blockedContactFont:blockedContactHStackSpacing:titleColor:editableTextFieldFont:editableTextFieldPadding:editableTextFieldBackground:groupNameTextFieldPadding:groupNameFont:defaultAvatarSize:collapsedAvatarSize:quickActionButtonBackgroundMaterial:quickActionButtonBackgroundColorTransformer:buttonTypeComparator:)()
{
  v0 = [objc_opt_self() labelColor];

  return v0;
}

uint64_t default argument 25 of Header.StyleGuide.init(preferredTopPadding:usesScrollPocket:quickActionButtonConfiguration:quickActionButtonBackgroundColor:quickActionButtonForegroundColor:quickActionButtonCornerStyle:quickActionButtonContentInsets:quickActionButtonSize:quickActionButtonSpacing:quickActionTopSpacing:collapsedQuickActionTranslation:quickActionBottomSpacing:quickActionBottomSpacingForHiddenTabs:avatarTopPadding:collapsedAvatarTopPadding:avatarBackgroundStyle:avatarToHeaderTextVerticalSpacing:collapsedAvatarToHeaderTextVerticalSpacing:singleContactFont:singleContactVStackSpacing:blockedContactFont:blockedContactHStackSpacing:titleColor:editableTextFieldFont:editableTextFieldPadding:editableTextFieldBackground:groupNameTextFieldPadding:groupNameFont:defaultAvatarSize:collapsedAvatarSize:quickActionButtonBackgroundMaterial:quickActionButtonBackgroundColorTransformer:buttonTypeComparator:)()
{
  static Color.gray.getter();
  Color.opacity(_:)();

  return AnyShapeStyle.init<A>(_:)();
}

uint64_t default argument 27 of Header.StyleGuide.init(preferredTopPadding:usesScrollPocket:quickActionButtonConfiguration:quickActionButtonBackgroundColor:quickActionButtonForegroundColor:quickActionButtonCornerStyle:quickActionButtonContentInsets:quickActionButtonSize:quickActionButtonSpacing:quickActionTopSpacing:collapsedQuickActionTranslation:quickActionBottomSpacing:quickActionBottomSpacingForHiddenTabs:avatarTopPadding:collapsedAvatarTopPadding:avatarBackgroundStyle:avatarToHeaderTextVerticalSpacing:collapsedAvatarToHeaderTextVerticalSpacing:singleContactFont:singleContactVStackSpacing:blockedContactFont:blockedContactHStackSpacing:titleColor:editableTextFieldFont:editableTextFieldPadding:editableTextFieldBackground:groupNameTextFieldPadding:groupNameFont:defaultAvatarSize:collapsedAvatarSize:quickActionButtonBackgroundMaterial:quickActionButtonBackgroundColorTransformer:buttonTypeComparator:)()
{
  v0 = type metadata accessor for Font.Leading();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Font.title.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  (*(v1 + 104))(v3, *MEMORY[0x1E6980EA8], v0);
  v4 = Font.leading(_:)();

  (*(v1 + 8))(v3, v0);
  return v4;
}

double default argument 28 of Header.StyleGuide.init(preferredTopPadding:usesScrollPocket:quickActionButtonConfiguration:quickActionButtonBackgroundColor:quickActionButtonForegroundColor:quickActionButtonCornerStyle:quickActionButtonContentInsets:quickActionButtonSize:quickActionButtonSpacing:quickActionTopSpacing:collapsedQuickActionTranslation:quickActionBottomSpacing:quickActionBottomSpacingForHiddenTabs:avatarTopPadding:collapsedAvatarTopPadding:avatarBackgroundStyle:avatarToHeaderTextVerticalSpacing:collapsedAvatarToHeaderTextVerticalSpacing:singleContactFont:singleContactVStackSpacing:blockedContactFont:blockedContactHStackSpacing:titleColor:editableTextFieldFont:editableTextFieldPadding:editableTextFieldBackground:groupNameTextFieldPadding:groupNameFont:defaultAvatarSize:collapsedAvatarSize:quickActionButtonBackgroundMaterial:quickActionButtonBackgroundColorTransformer:buttonTypeComparator:)()
{
  type metadata accessor for CGSize(0);
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #1 in default argument 28 of Header.StyleGuide.init(preferredTopPadding:usesScrollPocket:quickActionButtonConfiguration:quickActionButtonBackgroundColor:quickActionButtonForegroundColor:quickActionButtonCornerStyle:quickActionButtonContentInsets:quickActionButtonSize:quickActionButtonSpacing:quickActionTopSpacing:collapsedQuickActionTranslation:quickActionBottomSpacing:quickActionBottomSpacingForHiddenTabs:avatarTopPadding:collapsedAvatarTopPadding:avatarBackgroundStyle:avatarToHeaderTextVerticalSpacing:collapsedAvatarToHeaderTextVerticalSpacing:singleContactFont:singleContactVStackSpacing:blockedContactFont:blockedContactHStackSpacing:titleColor:editableTextFieldFont:editableTextFieldPadding:editableTextFieldBackground:groupNameTextFieldPadding:groupNameFont:defaultAvatarSize:collapsedAvatarSize:quickActionButtonBackgroundMaterial:quickActionButtonBackgroundColorTransformer:buttonTypeComparator:), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGSize?), &v2, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGSize?), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGSize?), 0, v0);
  return v2;
}

int64x2_t implicit closure #1 in default argument 28 of Header.StyleGuide.init(preferredTopPadding:usesScrollPocket:quickActionButtonConfiguration:quickActionButtonBackgroundColor:quickActionButtonForegroundColor:quickActionButtonCornerStyle:quickActionButtonContentInsets:quickActionButtonSize:quickActionButtonSpacing:quickActionTopSpacing:collapsedQuickActionTranslation:quickActionBottomSpacing:quickActionBottomSpacingForHiddenTabs:avatarTopPadding:collapsedAvatarTopPadding:avatarBackgroundStyle:avatarToHeaderTextVerticalSpacing:collapsedAvatarToHeaderTextVerticalSpacing:singleContactFont:singleContactVStackSpacing:blockedContactFont:blockedContactHStackSpacing:titleColor:editableTextFieldFont:editableTextFieldPadding:editableTextFieldBackground:groupNameTextFieldPadding:groupNameFont:defaultAvatarSize:collapsedAvatarSize:quickActionButtonBackgroundMaterial:quickActionButtonBackgroundColorTransformer:buttonTypeComparator:)@<Q0>(int64x2_t *a1@<X8>)
{
  result = vdupq_n_s64(0x4054000000000000uLL);
  *a1 = result;
  return result;
}

int64x2_t implicit closure #3 in default argument 28 of Header.StyleGuide.init(preferredTopPadding:usesScrollPocket:quickActionButtonConfiguration:quickActionButtonBackgroundColor:quickActionButtonForegroundColor:quickActionButtonCornerStyle:quickActionButtonContentInsets:quickActionButtonSize:quickActionButtonSpacing:quickActionTopSpacing:collapsedQuickActionTranslation:quickActionBottomSpacing:quickActionBottomSpacingForHiddenTabs:avatarTopPadding:collapsedAvatarTopPadding:avatarBackgroundStyle:avatarToHeaderTextVerticalSpacing:collapsedAvatarToHeaderTextVerticalSpacing:singleContactFont:singleContactVStackSpacing:blockedContactFont:blockedContactHStackSpacing:titleColor:editableTextFieldFont:editableTextFieldPadding:editableTextFieldBackground:groupNameTextFieldPadding:groupNameFont:defaultAvatarSize:collapsedAvatarSize:quickActionButtonBackgroundMaterial:quickActionButtonBackgroundColorTransformer:buttonTypeComparator:)@<Q0>(int64x2_t *a1@<X8>)
{
  result = vdupq_n_s64(0x404E000000000000uLL);
  *a1 = result;
  a1[1].i8[0] = 0;
  return result;
}

double default argument 29 of Header.StyleGuide.init(preferredTopPadding:usesScrollPocket:quickActionButtonConfiguration:quickActionButtonBackgroundColor:quickActionButtonForegroundColor:quickActionButtonCornerStyle:quickActionButtonContentInsets:quickActionButtonSize:quickActionButtonSpacing:quickActionTopSpacing:collapsedQuickActionTranslation:quickActionBottomSpacing:quickActionBottomSpacingForHiddenTabs:avatarTopPadding:collapsedAvatarTopPadding:avatarBackgroundStyle:avatarToHeaderTextVerticalSpacing:collapsedAvatarToHeaderTextVerticalSpacing:singleContactFont:singleContactVStackSpacing:blockedContactFont:blockedContactHStackSpacing:titleColor:editableTextFieldFont:editableTextFieldPadding:editableTextFieldBackground:groupNameTextFieldPadding:groupNameFont:defaultAvatarSize:collapsedAvatarSize:quickActionButtonBackgroundMaterial:quickActionButtonBackgroundColorTransformer:buttonTypeComparator:)()
{
  type metadata accessor for CGSize(0);
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #1 in default argument 29 of Header.StyleGuide.init(preferredTopPadding:usesScrollPocket:quickActionButtonConfiguration:quickActionButtonBackgroundColor:quickActionButtonForegroundColor:quickActionButtonCornerStyle:quickActionButtonContentInsets:quickActionButtonSize:quickActionButtonSpacing:quickActionTopSpacing:collapsedQuickActionTranslation:quickActionBottomSpacing:quickActionBottomSpacingForHiddenTabs:avatarTopPadding:collapsedAvatarTopPadding:avatarBackgroundStyle:avatarToHeaderTextVerticalSpacing:collapsedAvatarToHeaderTextVerticalSpacing:singleContactFont:singleContactVStackSpacing:blockedContactFont:blockedContactHStackSpacing:titleColor:editableTextFieldFont:editableTextFieldPadding:editableTextFieldBackground:groupNameTextFieldPadding:groupNameFont:defaultAvatarSize:collapsedAvatarSize:quickActionButtonBackgroundMaterial:quickActionButtonBackgroundColorTransformer:buttonTypeComparator:), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGSize?), &v2, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGSize?), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGSize?), 0, v0);
  return v2;
}

int64x2_t implicit closure #1 in default argument 29 of Header.StyleGuide.init(preferredTopPadding:usesScrollPocket:quickActionButtonConfiguration:quickActionButtonBackgroundColor:quickActionButtonForegroundColor:quickActionButtonCornerStyle:quickActionButtonContentInsets:quickActionButtonSize:quickActionButtonSpacing:quickActionTopSpacing:collapsedQuickActionTranslation:quickActionBottomSpacing:quickActionBottomSpacingForHiddenTabs:avatarTopPadding:collapsedAvatarTopPadding:avatarBackgroundStyle:avatarToHeaderTextVerticalSpacing:collapsedAvatarToHeaderTextVerticalSpacing:singleContactFont:singleContactVStackSpacing:blockedContactFont:blockedContactHStackSpacing:titleColor:editableTextFieldFont:editableTextFieldPadding:editableTextFieldBackground:groupNameTextFieldPadding:groupNameFont:defaultAvatarSize:collapsedAvatarSize:quickActionButtonBackgroundMaterial:quickActionButtonBackgroundColorTransformer:buttonTypeComparator:)@<Q0>(int64x2_t *a1@<X8>)
{
  result = vdupq_n_s64(0x404E000000000000uLL);
  *a1 = result;
  return result;
}

int64x2_t implicit closure #3 in default argument 29 of Header.StyleGuide.init(preferredTopPadding:usesScrollPocket:quickActionButtonConfiguration:quickActionButtonBackgroundColor:quickActionButtonForegroundColor:quickActionButtonCornerStyle:quickActionButtonContentInsets:quickActionButtonSize:quickActionButtonSpacing:quickActionTopSpacing:collapsedQuickActionTranslation:quickActionBottomSpacing:quickActionBottomSpacingForHiddenTabs:avatarTopPadding:collapsedAvatarTopPadding:avatarBackgroundStyle:avatarToHeaderTextVerticalSpacing:collapsedAvatarToHeaderTextVerticalSpacing:singleContactFont:singleContactVStackSpacing:blockedContactFont:blockedContactHStackSpacing:titleColor:editableTextFieldFont:editableTextFieldPadding:editableTextFieldBackground:groupNameTextFieldPadding:groupNameFont:defaultAvatarSize:collapsedAvatarSize:quickActionButtonBackgroundMaterial:quickActionButtonBackgroundColorTransformer:buttonTypeComparator:)@<Q0>(int64x2_t *a1@<X8>)
{
  result = vdupq_n_s64(0x4048000000000000uLL);
  *a1 = result;
  a1[1].i8[0] = 0;
  return result;
}

unint64_t closure #1 in default argument 32 of Header.StyleGuide.init(preferredTopPadding:usesScrollPocket:quickActionButtonConfiguration:quickActionButtonBackgroundColor:quickActionButtonForegroundColor:quickActionButtonCornerStyle:quickActionButtonContentInsets:quickActionButtonSize:quickActionButtonSpacing:quickActionTopSpacing:collapsedQuickActionTranslation:quickActionBottomSpacing:quickActionBottomSpacingForHiddenTabs:avatarTopPadding:collapsedAvatarTopPadding:avatarBackgroundStyle:avatarToHeaderTextVerticalSpacing:collapsedAvatarToHeaderTextVerticalSpacing:singleContactFont:singleContactVStackSpacing:blockedContactFont:blockedContactHStackSpacing:titleColor:editableTextFieldFont:editableTextFieldPadding:editableTextFieldBackground:groupNameTextFieldPadding:groupNameFont:defaultAvatarSize:collapsedAvatarSize:quickActionButtonBackgroundMaterial:quickActionButtonBackgroundColorTransformer:buttonTypeComparator:)(uint64_t a1, uint64_t a2)
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC20CommunicationDetails15QuickActionViewC10ButtonTypeO_SiTt0g5Tf4g_n(&outlined read-only object #0 of closure #1 in default argument 32 of Header.StyleGuide.init(preferredTopPadding:usesScrollPocket:quickActionButtonConfiguration:quickActionButtonBackgroundColor:quickActionButtonForegroundColor:quickActionButtonCornerStyle:quickActionButtonContentInsets:quickActionButtonSize:quickActionButtonSpacing:quickActionTopSpacing:collapsedQuickActionTranslation:quickActionBottomSpacing:quickActionBottomSpacingForHiddenTabs:avatarTopPadding:collapsedAvatarTopPadding:avatarBackgroundStyle:avatarToHeaderTextVerticalSpacing:collapsedAvatarToHeaderTextVerticalSpacing:singleContactFont:singleContactVStackSpacing:blockedContactFont:blockedContactHStackSpacing:titleColor:editableTextFieldFont:editableTextFieldPadding:editableTextFieldBackground:groupNameTextFieldPadding:groupNameFont:defaultAvatarSize:collapsedAvatarSize:quickActionButtonBackgroundMaterial:quickActionButtonBackgroundColorTransformer:buttonTypeComparator:));
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v6 & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (!*(v5 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(*(v5 + 56) + 8 * result);
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if (v8)
  {
    v9 = *(*(v5 + 56) + 8 * result);

    return v7 < v9;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t Header.StyleGuide.init(preferredTopPadding:usesScrollPocket:quickActionButtonConfiguration:quickActionButtonBackgroundColor:quickActionButtonForegroundColor:quickActionButtonCornerStyle:quickActionButtonContentInsets:quickActionButtonSize:quickActionButtonSpacing:quickActionTopSpacing:collapsedQuickActionTranslation:quickActionBottomSpacing:quickActionBottomSpacingForHiddenTabs:avatarTopPadding:collapsedAvatarTopPadding:avatarBackgroundStyle:avatarToHeaderTextVerticalSpacing:collapsedAvatarToHeaderTextVerticalSpacing:singleContactFont:singleContactVStackSpacing:blockedContactFont:blockedContactHStackSpacing:titleColor:editableTextFieldFont:editableTextFieldPadding:editableTextFieldBackground:groupNameTextFieldPadding:groupNameFont:defaultAvatarSize:collapsedAvatarSize:quickActionButtonBackgroundMaterial:quickActionButtonBackgroundColorTransformer:buttonTypeComparator:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, double a16@<D6>, double a17@<D7>, uint64_t a18, __int128 a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int128 a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, __int128 a35, __int128 a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  *a9 = a10;
  *(a9 + 8) = a1;
  v49 = type metadata accessor for Header.StyleGuide();
  v50 = v49[23];
  v51 = type metadata accessor for UIButton.Configuration();
  (*(*(v51 - 8) + 32))(a9 + v50, a2, v51);
  outlined init with take of BlendedColor?(a3, a9 + v49[24], &_s20CommunicationDetails12BlendedColorVSgMd);
  *(a9 + v49[25]) = a4;
  v52 = v49[26];
  v53 = type metadata accessor for UIButton.Configuration.CornerStyle();
  (*(*(v53 - 8) + 32))(a9 + v52, a5, v53);
  v54 = (a9 + v49[27]);
  *v54 = a11;
  v54[1] = a12;
  v54[2] = a13;
  v54[3] = a14;
  v55 = v49[28];
  v56 = type metadata accessor for UIButton.Configuration.Size();
  (*(*(v56 - 8) + 32))(a9 + v55, a6, v56);
  v57 = a9 + v49[31];
  *v57 = a7;
  *(v57 + 8) = a8 & 1;
  *(a9 + v49[29]) = a15;
  *(a9 + v49[30]) = a16;
  *(a9 + v49[32]) = a17;
  *(a9 + v49[33]) = a18;
  *(a9 + 48) = a19;
  *(a9 + 64) = a21;
  *(a9 + 72) = a22;
  *(a9 + 160) = a24;
  *(a9 + 168) = a25;
  *(a9 + 176) = a26;
  *(a9 + 184) = a27;
  *(a9 + 80) = a20;
  *(a9 + 88) = a28;
  *(a9 + 96) = a29;
  *(a9 + 112) = a30;
  *(a9 + 120) = a31;
  *(a9 + 128) = a32;
  *(a9 + 136) = a33;
  *(a9 + 144) = a34;
  *(a9 + 152) = a23;
  *(a9 + 16) = a35;
  *(a9 + 32) = a36;
  outlined init with take of BlendedColor?(a37, a9 + v49[34], &_s7SwiftUI8MaterialVSgMd);
  result = outlined init with take of BlendedColor?(a38, a9 + v49[35], &_s5UIKit31UIConfigurationColorTransformerVSgMd);
  v59 = (a9 + v49[36]);
  *v59 = a39;
  v59[1] = a40;
  return result;
}

uint64_t outlined init with take of BlendedColor?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 closure #1 in variable initialization expression of static Header.StyleGuide.default@<Q0>(uint64_t a1@<X8>)
{
  v51 = type metadata accessor for Font.Leading();
  v2 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Header.StyleGuide();
  v6 = v5[34];
  v7 = type metadata accessor for Material();
  (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  v8 = v5[35];
  v9 = type metadata accessor for UIConfigurationColorTransformer();
  (*(*(v9 - 8) + 56))(a1 + v8, 1, 1, v9);
  v10 = MEMORY[0x1E69E7DE0];
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #1 in default argument 0 of Header.StyleGuide.init(preferredTopPadding:usesScrollPocket:quickActionButtonConfiguration:quickActionButtonBackgroundColor:quickActionButtonForegroundColor:quickActionButtonCornerStyle:quickActionButtonContentInsets:quickActionButtonSize:quickActionButtonSpacing:quickActionTopSpacing:collapsedQuickActionTranslation:quickActionBottomSpacing:quickActionBottomSpacingForHiddenTabs:avatarTopPadding:collapsedAvatarTopPadding:avatarBackgroundStyle:avatarToHeaderTextVerticalSpacing:collapsedAvatarToHeaderTextVerticalSpacing:singleContactFont:singleContactVStackSpacing:blockedContactFont:blockedContactHStackSpacing:titleColor:editableTextFieldFont:editableTextFieldPadding:editableTextFieldBackground:groupNameTextFieldPadding:groupNameFont:defaultAvatarSize:collapsedAvatarSize:quickActionButtonBackgroundMaterial:quickActionButtonBackgroundColorTransformer:buttonTypeComparator:), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v52, 0, implicit closure #5 in default argument 0 of Header.StyleGuide.init(preferredTopPadding:usesScrollPocket:quickActionButtonConfiguration:quickActionButtonBackgroundColor:quickActionButtonForegroundColor:quickActionButtonCornerStyle:quickActionButtonContentInsets:quickActionButtonSize:quickActionButtonSpacing:quickActionTopSpacing:collapsedQuickActionTranslation:quickActionBottomSpacing:quickActionBottomSpacingForHiddenTabs:avatarTopPadding:collapsedAvatarTopPadding:avatarBackgroundStyle:avatarToHeaderTextVerticalSpacing:collapsedAvatarToHeaderTextVerticalSpacing:singleContactFont:singleContactVStackSpacing:blockedContactFont:blockedContactHStackSpacing:titleColor:editableTextFieldFont:editableTextFieldPadding:editableTextFieldBackground:groupNameTextFieldPadding:groupNameFont:defaultAvatarSize:collapsedAvatarSize:quickActionButtonBackgroundMaterial:quickActionButtonBackgroundColorTransformer:buttonTypeComparator:), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, MEMORY[0x1E69E7DE0]);
  v11 = v52.n128_u64[0];
  static UIButton.Configuration.filled()();
  v12 = v5[24];
  v13 = DetailsStyleGuide.globalListRowBackgroundColor.unsafeMutableAddressor();
  outlined init with copy of BlendedColor(v13, a1 + v12, type metadata accessor for BlendedColor);
  v14 = type metadata accessor for BlendedColor();
  (*(*(v14 - 8) + 56))(a1 + v12, 0, 1, v14);
  v15 = objc_opt_self();
  v50 = [v15 labelColor];
  v16 = v5[26];
  v17 = *MEMORY[0x1E69DC508];
  v18 = type metadata accessor for UIButton.Configuration.CornerStyle();
  (*(*(v18 - 8) + 104))(a1 + v16, v17, v18);
  v19 = v5[28];
  v20 = *MEMORY[0x1E69DC560];
  v21 = type metadata accessor for UIButton.Configuration.Size();
  (*(*(v21 - 8) + 104))(a1 + v19, v20, v21);
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #1 in default argument 8 of Header.StyleGuide.init(preferredTopPadding:usesScrollPocket:quickActionButtonConfiguration:quickActionButtonBackgroundColor:quickActionButtonForegroundColor:quickActionButtonCornerStyle:quickActionButtonContentInsets:quickActionButtonSize:quickActionButtonSpacing:quickActionTopSpacing:collapsedQuickActionTranslation:quickActionBottomSpacing:quickActionBottomSpacingForHiddenTabs:avatarTopPadding:collapsedAvatarTopPadding:avatarBackgroundStyle:avatarToHeaderTextVerticalSpacing:collapsedAvatarToHeaderTextVerticalSpacing:singleContactFont:singleContactVStackSpacing:blockedContactFont:blockedContactHStackSpacing:titleColor:editableTextFieldFont:editableTextFieldPadding:editableTextFieldBackground:groupNameTextFieldPadding:groupNameFont:defaultAvatarSize:collapsedAvatarSize:quickActionButtonBackgroundMaterial:quickActionButtonBackgroundColorTransformer:buttonTypeComparator:), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v52, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, v10);
  v49 = v52.n128_u64[0];
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #1 in default argument 9 of Header.StyleGuide.init(preferredTopPadding:usesScrollPocket:quickActionButtonConfiguration:quickActionButtonBackgroundColor:quickActionButtonForegroundColor:quickActionButtonCornerStyle:quickActionButtonContentInsets:quickActionButtonSize:quickActionButtonSpacing:quickActionTopSpacing:collapsedQuickActionTranslation:quickActionBottomSpacing:quickActionBottomSpacingForHiddenTabs:avatarTopPadding:collapsedAvatarTopPadding:avatarBackgroundStyle:avatarToHeaderTextVerticalSpacing:collapsedAvatarToHeaderTextVerticalSpacing:singleContactFont:singleContactVStackSpacing:blockedContactFont:blockedContactHStackSpacing:titleColor:editableTextFieldFont:editableTextFieldPadding:editableTextFieldBackground:groupNameTextFieldPadding:groupNameFont:defaultAvatarSize:collapsedAvatarSize:quickActionButtonBackgroundMaterial:quickActionButtonBackgroundColorTransformer:buttonTypeComparator:), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v52, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, v10);
  v22 = v52.n128_u64[0];
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #1 in default argument 12 of Header.StyleGuide.init(preferredTopPadding:usesScrollPocket:quickActionButtonConfiguration:quickActionButtonBackgroundColor:quickActionButtonForegroundColor:quickActionButtonCornerStyle:quickActionButtonContentInsets:quickActionButtonSize:quickActionButtonSpacing:quickActionTopSpacing:collapsedQuickActionTranslation:quickActionBottomSpacing:quickActionBottomSpacingForHiddenTabs:avatarTopPadding:collapsedAvatarTopPadding:avatarBackgroundStyle:avatarToHeaderTextVerticalSpacing:collapsedAvatarToHeaderTextVerticalSpacing:singleContactFont:singleContactVStackSpacing:blockedContactFont:blockedContactHStackSpacing:titleColor:editableTextFieldFont:editableTextFieldPadding:editableTextFieldBackground:groupNameTextFieldPadding:groupNameFont:defaultAvatarSize:collapsedAvatarSize:quickActionButtonBackgroundMaterial:quickActionButtonBackgroundColorTransformer:buttonTypeComparator:), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v52, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, v10);
  v23 = v52.n128_u64[0];
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #1 in default argument 16 of Header.StyleGuide.init(preferredTopPadding:usesScrollPocket:quickActionButtonConfiguration:quickActionButtonBackgroundColor:quickActionButtonForegroundColor:quickActionButtonCornerStyle:quickActionButtonContentInsets:quickActionButtonSize:quickActionButtonSpacing:quickActionTopSpacing:collapsedQuickActionTranslation:quickActionBottomSpacing:quickActionBottomSpacingForHiddenTabs:avatarTopPadding:collapsedAvatarTopPadding:avatarBackgroundStyle:avatarToHeaderTextVerticalSpacing:collapsedAvatarToHeaderTextVerticalSpacing:singleContactFont:singleContactVStackSpacing:blockedContactFont:blockedContactHStackSpacing:titleColor:editableTextFieldFont:editableTextFieldPadding:editableTextFieldBackground:groupNameTextFieldPadding:groupNameFont:defaultAvatarSize:collapsedAvatarSize:quickActionButtonBackgroundMaterial:quickActionButtonBackgroundColorTransformer:buttonTypeComparator:), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v52, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, v10);
  v24 = v52.n128_u64[0];
  static Font.title.getter();
  static Font.Weight.bold.getter();
  v48 = Font.weight(_:)();

  static Font.body.getter();
  v47 = Font.bold()();

  v25 = [v15 labelColor];
  v26 = static Font.headline.getter();
  static Color.gray.getter();
  v27 = Color.opacity(_:)();

  v52.n128_u64[0] = v27;
  v28 = AnyShapeStyle.init<A>(_:)();
  static Font.title.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v29 = v51;
  (*(v2 + 104))(v4, *MEMORY[0x1E6980EA8], v51);
  v30 = Font.leading(_:)();

  (*(v2 + 8))(v4, v29);
  type metadata accessor for CGSize(0);
  v32 = v31;
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #1 in default argument 28 of Header.StyleGuide.init(preferredTopPadding:usesScrollPocket:quickActionButtonConfiguration:quickActionButtonBackgroundColor:quickActionButtonForegroundColor:quickActionButtonCornerStyle:quickActionButtonContentInsets:quickActionButtonSize:quickActionButtonSpacing:quickActionTopSpacing:collapsedQuickActionTranslation:quickActionBottomSpacing:quickActionBottomSpacingForHiddenTabs:avatarTopPadding:collapsedAvatarTopPadding:avatarBackgroundStyle:avatarToHeaderTextVerticalSpacing:collapsedAvatarToHeaderTextVerticalSpacing:singleContactFont:singleContactVStackSpacing:blockedContactFont:blockedContactHStackSpacing:titleColor:editableTextFieldFont:editableTextFieldPadding:editableTextFieldBackground:groupNameTextFieldPadding:groupNameFont:defaultAvatarSize:collapsedAvatarSize:quickActionButtonBackgroundMaterial:quickActionButtonBackgroundColorTransformer:buttonTypeComparator:), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGSize?), &v52, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGSize?), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGSize?), 0, v31);
  v33 = v52;
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #1 in default argument 29 of Header.StyleGuide.init(preferredTopPadding:usesScrollPocket:quickActionButtonConfiguration:quickActionButtonBackgroundColor:quickActionButtonForegroundColor:quickActionButtonCornerStyle:quickActionButtonContentInsets:quickActionButtonSize:quickActionButtonSpacing:quickActionTopSpacing:collapsedQuickActionTranslation:quickActionBottomSpacing:quickActionBottomSpacingForHiddenTabs:avatarTopPadding:collapsedAvatarTopPadding:avatarBackgroundStyle:avatarToHeaderTextVerticalSpacing:collapsedAvatarToHeaderTextVerticalSpacing:singleContactFont:singleContactVStackSpacing:blockedContactFont:blockedContactHStackSpacing:titleColor:editableTextFieldFont:editableTextFieldPadding:editableTextFieldBackground:groupNameTextFieldPadding:groupNameFont:defaultAvatarSize:collapsedAvatarSize:quickActionButtonBackgroundMaterial:quickActionButtonBackgroundColorTransformer:buttonTypeComparator:), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGSize?), &v52, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGSize?), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGSize?), 0, v32);
  *a1 = v11;
  *(a1 + 8) = 1;
  v34 = v49;
  *(a1 + v5[25]) = v50;
  v35 = (a1 + v5[27]);
  __asm { FMOV            V0.2D, #15.0 }

  *v35 = _Q0;
  v35[1] = _Q0;
  v41 = a1 + v5[31];
  *v41 = v34;
  *(v41 + 8) = 0;
  *(a1 + v5[29]) = v22;
  result = v52;
  *(a1 + v5[30]) = 0xC048000000000000;
  *(a1 + v5[32]) = 0;
  *(a1 + v5[33]) = v23;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = v24;
  *(a1 + 72) = 0x3FF0000000000000;
  *(a1 + 80) = 0;
  v43 = v47;
  *(a1 + 160) = 0x4000000000000000;
  *(a1 + 168) = v43;
  *(a1 + 176) = 0x4010000000000000;
  *(a1 + 184) = v25;
  *(a1 + 88) = v26;
  *(a1 + 96) = xmmword_1901E65B0;
  *(a1 + 112) = xmmword_1901E65B0;
  *(a1 + 128) = v28;
  *(a1 + 136) = 0x4018000000000000;
  v44 = v48;
  *(a1 + 144) = v30;
  *(a1 + 152) = v44;
  *(a1 + 16) = v33;
  *(a1 + 32) = result;
  v45 = (a1 + v5[36]);
  *v45 = closure #1 in default argument 32 of Header.StyleGuide.init(preferredTopPadding:usesScrollPocket:quickActionButtonConfiguration:quickActionButtonBackgroundColor:quickActionButtonForegroundColor:quickActionButtonCornerStyle:quickActionButtonContentInsets:quickActionButtonSize:quickActionButtonSpacing:quickActionTopSpacing:collapsedQuickActionTranslation:quickActionBottomSpacing:quickActionBottomSpacingForHiddenTabs:avatarTopPadding:collapsedAvatarTopPadding:avatarBackgroundStyle:avatarToHeaderTextVerticalSpacing:collapsedAvatarToHeaderTextVerticalSpacing:singleContactFont:singleContactVStackSpacing:blockedContactFont:blockedContactHStackSpacing:titleColor:editableTextFieldFont:editableTextFieldPadding:editableTextFieldBackground:groupNameTextFieldPadding:groupNameFont:defaultAvatarSize:collapsedAvatarSize:quickActionButtonBackgroundMaterial:quickActionButtonBackgroundColorTransformer:buttonTypeComparator:);
  v45[1] = 0;
  return result;
}

uint64_t outlined init with copy of BlendedColor(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

__n128 closure #1 in variable initialization expression of static Header.StyleGuide.poster@<Q0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Font.Leading();
  v65 = *(v2 - 8);
  v66 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v64 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9BlendModeOSgMd);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v60 - v8;
  v68 = type metadata accessor for Material();
  v60 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ContactCardStyleProvider.defaultBackgroundMaterial.getter();
  v67 = type metadata accessor for Header.StyleGuide();
  v62 = v67[24];
  v63 = objc_opt_self();
  v11 = [v63 clearColor];
  v12 = Color.init(uiColor:)();
  v13 = *MEMORY[0x1E6981DF0];
  v14 = type metadata accessor for BlendMode();
  v15 = *(v14 - 8);
  v16 = *(v15 + 104);
  v16(v9, v13, v14);
  v17 = *(v15 + 56);
  v17(v9, 0, 1, v14);
  v16(v7, v13, v14);
  v17(v7, 0, 1, v14);
  v18 = v62;
  BlendedColor.init(color:lightSchemeBlendMode:darkSchemeBlendMode:)(v12, v9, v7, v62 + a1);
  v19 = type metadata accessor for BlendedColor();
  (*(*(v19 - 8) + 56))(&v18[a1], 0, 1, v19);
  v20 = v63;
  v62 = [v63 whiteColor];
  v21 = v67;
  v22 = v67[28];
  v23 = *MEMORY[0x1E69DC558];
  v24 = type metadata accessor for UIButton.Configuration.Size();
  (*(*(v24 - 8) + 104))(a1 + v22, v23, v24);
  v63 = [v20 whiteColor];
  v25 = v21[34];
  v26 = v60;
  v27 = v68;
  (*(v60 + 16))(a1 + v25, v69, v68);
  (*(v26 + 56))(a1 + v25, 0, 1, v27);
  v28 = v21[35];
  UIConfigurationColorTransformer.init(_:)();
  v29 = type metadata accessor for UIConfigurationColorTransformer();
  (*(*(v29 - 8) + 56))(a1 + v28, 0, 1, v29);
  v30 = MEMORY[0x1E69E7DE0];
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #1 in default argument 0 of Header.StyleGuide.init(preferredTopPadding:usesScrollPocket:quickActionButtonConfiguration:quickActionButtonBackgroundColor:quickActionButtonForegroundColor:quickActionButtonCornerStyle:quickActionButtonContentInsets:quickActionButtonSize:quickActionButtonSpacing:quickActionTopSpacing:collapsedQuickActionTranslation:quickActionBottomSpacing:quickActionBottomSpacingForHiddenTabs:avatarTopPadding:collapsedAvatarTopPadding:avatarBackgroundStyle:avatarToHeaderTextVerticalSpacing:collapsedAvatarToHeaderTextVerticalSpacing:singleContactFont:singleContactVStackSpacing:blockedContactFont:blockedContactHStackSpacing:titleColor:editableTextFieldFont:editableTextFieldPadding:editableTextFieldBackground:groupNameTextFieldPadding:groupNameFont:defaultAvatarSize:collapsedAvatarSize:quickActionButtonBackgroundMaterial:quickActionButtonBackgroundColorTransformer:buttonTypeComparator:), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v70, 0, implicit closure #5 in default argument 0 of Header.StyleGuide.init(preferredTopPadding:usesScrollPocket:quickActionButtonConfiguration:quickActionButtonBackgroundColor:quickActionButtonForegroundColor:quickActionButtonCornerStyle:quickActionButtonContentInsets:quickActionButtonSize:quickActionButtonSpacing:quickActionTopSpacing:collapsedQuickActionTranslation:quickActionBottomSpacing:quickActionBottomSpacingForHiddenTabs:avatarTopPadding:collapsedAvatarTopPadding:avatarBackgroundStyle:avatarToHeaderTextVerticalSpacing:collapsedAvatarToHeaderTextVerticalSpacing:singleContactFont:singleContactVStackSpacing:blockedContactFont:blockedContactHStackSpacing:titleColor:editableTextFieldFont:editableTextFieldPadding:editableTextFieldBackground:groupNameTextFieldPadding:groupNameFont:defaultAvatarSize:collapsedAvatarSize:quickActionButtonBackgroundMaterial:quickActionButtonBackgroundColorTransformer:buttonTypeComparator:), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, MEMORY[0x1E69E7DE0]);
  v31 = v70.n128_u64[0];
  static UIButton.Configuration.filled()();
  v32 = v21[26];
  v33 = *MEMORY[0x1E69DC508];
  v34 = type metadata accessor for UIButton.Configuration.CornerStyle();
  (*(*(v34 - 8) + 104))(a1 + v32, v33, v34);
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #1 in default argument 12 of Header.StyleGuide.init(preferredTopPadding:usesScrollPocket:quickActionButtonConfiguration:quickActionButtonBackgroundColor:quickActionButtonForegroundColor:quickActionButtonCornerStyle:quickActionButtonContentInsets:quickActionButtonSize:quickActionButtonSpacing:quickActionTopSpacing:collapsedQuickActionTranslation:quickActionBottomSpacing:quickActionBottomSpacingForHiddenTabs:avatarTopPadding:collapsedAvatarTopPadding:avatarBackgroundStyle:avatarToHeaderTextVerticalSpacing:collapsedAvatarToHeaderTextVerticalSpacing:singleContactFont:singleContactVStackSpacing:blockedContactFont:blockedContactHStackSpacing:titleColor:editableTextFieldFont:editableTextFieldPadding:editableTextFieldBackground:groupNameTextFieldPadding:groupNameFont:defaultAvatarSize:collapsedAvatarSize:quickActionButtonBackgroundMaterial:quickActionButtonBackgroundColorTransformer:buttonTypeComparator:), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v70, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, v30);
  v35 = v70.n128_u64[0];
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #1 in default argument 16 of Header.StyleGuide.init(preferredTopPadding:usesScrollPocket:quickActionButtonConfiguration:quickActionButtonBackgroundColor:quickActionButtonForegroundColor:quickActionButtonCornerStyle:quickActionButtonContentInsets:quickActionButtonSize:quickActionButtonSpacing:quickActionTopSpacing:collapsedQuickActionTranslation:quickActionBottomSpacing:quickActionBottomSpacingForHiddenTabs:avatarTopPadding:collapsedAvatarTopPadding:avatarBackgroundStyle:avatarToHeaderTextVerticalSpacing:collapsedAvatarToHeaderTextVerticalSpacing:singleContactFont:singleContactVStackSpacing:blockedContactFont:blockedContactHStackSpacing:titleColor:editableTextFieldFont:editableTextFieldPadding:editableTextFieldBackground:groupNameTextFieldPadding:groupNameFont:defaultAvatarSize:collapsedAvatarSize:quickActionButtonBackgroundMaterial:quickActionButtonBackgroundColorTransformer:buttonTypeComparator:), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v70, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, v30);
  v36 = v70.n128_u64[0];
  static Font.title.getter();
  static Font.Weight.bold.getter();
  v61 = Font.weight(_:)();

  static Font.body.getter();
  v37 = Font.bold()();

  v38 = static Font.headline.getter();
  static Color.gray.getter();
  v39 = Color.opacity(_:)();

  v70.n128_u64[0] = v39;
  v40 = AnyShapeStyle.init<A>(_:)();
  static Font.title.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v41 = v64;
  v42 = v65;
  v43 = v66;
  (*(v65 + 104))(v64, *MEMORY[0x1E6980EA8], v66);
  v44 = Font.leading(_:)();

  (*(v42 + 8))(v41, v43);
  type metadata accessor for CGSize(0);
  v46 = v45;
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #1 in default argument 28 of Header.StyleGuide.init(preferredTopPadding:usesScrollPocket:quickActionButtonConfiguration:quickActionButtonBackgroundColor:quickActionButtonForegroundColor:quickActionButtonCornerStyle:quickActionButtonContentInsets:quickActionButtonSize:quickActionButtonSpacing:quickActionTopSpacing:collapsedQuickActionTranslation:quickActionBottomSpacing:quickActionBottomSpacingForHiddenTabs:avatarTopPadding:collapsedAvatarTopPadding:avatarBackgroundStyle:avatarToHeaderTextVerticalSpacing:collapsedAvatarToHeaderTextVerticalSpacing:singleContactFont:singleContactVStackSpacing:blockedContactFont:blockedContactHStackSpacing:titleColor:editableTextFieldFont:editableTextFieldPadding:editableTextFieldBackground:groupNameTextFieldPadding:groupNameFont:defaultAvatarSize:collapsedAvatarSize:quickActionButtonBackgroundMaterial:quickActionButtonBackgroundColorTransformer:buttonTypeComparator:), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGSize?), &v70, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGSize?), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGSize?), 0, v45);
  v47 = v70;
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #1 in default argument 29 of Header.StyleGuide.init(preferredTopPadding:usesScrollPocket:quickActionButtonConfiguration:quickActionButtonBackgroundColor:quickActionButtonForegroundColor:quickActionButtonCornerStyle:quickActionButtonContentInsets:quickActionButtonSize:quickActionButtonSpacing:quickActionTopSpacing:collapsedQuickActionTranslation:quickActionBottomSpacing:quickActionBottomSpacingForHiddenTabs:avatarTopPadding:collapsedAvatarTopPadding:avatarBackgroundStyle:avatarToHeaderTextVerticalSpacing:collapsedAvatarToHeaderTextVerticalSpacing:singleContactFont:singleContactVStackSpacing:blockedContactFont:blockedContactHStackSpacing:titleColor:editableTextFieldFont:editableTextFieldPadding:editableTextFieldBackground:groupNameTextFieldPadding:groupNameFont:defaultAvatarSize:collapsedAvatarSize:quickActionButtonBackgroundMaterial:quickActionButtonBackgroundColorTransformer:buttonTypeComparator:), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGSize?), &v70, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGSize?), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGSize?), 0, v46);
  (*(v26 + 8))(v69, v68);
  *a1 = v31;
  *(a1 + 8) = 0;
  v48 = v67;
  *(a1 + v67[25]) = v62;
  v49 = (a1 + v48[27]);
  __asm { FMOV            V0.2D, #22.0 }

  *v49 = _Q0;
  v49[1] = _Q0;
  v55 = a1 + v48[31];
  *v55 = 0x4028000000000000;
  *(v55 + 8) = 0;
  *(a1 + v48[29]) = 0x4038000000000000;
  result = v70;
  *(a1 + v48[30]) = 0xC051800000000000;
  *(a1 + v48[32]) = 0;
  *(a1 + v48[33]) = v35;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = v36;
  *(a1 + 72) = 0x3FF0000000000000;
  *(a1 + 80) = 0;
  *(a1 + 160) = 0x4000000000000000;
  *(a1 + 168) = v37;
  v57 = v63;
  *(a1 + 176) = 0x4010000000000000;
  *(a1 + 184) = v57;
  *(a1 + 88) = v38;
  *(a1 + 96) = xmmword_1901E65B0;
  *(a1 + 112) = xmmword_1901E65B0;
  *(a1 + 128) = v40;
  *(a1 + 136) = 0x4018000000000000;
  v58 = v61;
  *(a1 + 144) = v44;
  *(a1 + 152) = v58;
  *(a1 + 16) = v47;
  *(a1 + 32) = result;
  v59 = (a1 + v48[36]);
  *v59 = closure #1 in default argument 32 of Header.StyleGuide.init(preferredTopPadding:usesScrollPocket:quickActionButtonConfiguration:quickActionButtonBackgroundColor:quickActionButtonForegroundColor:quickActionButtonCornerStyle:quickActionButtonContentInsets:quickActionButtonSize:quickActionButtonSpacing:quickActionTopSpacing:collapsedQuickActionTranslation:quickActionBottomSpacing:quickActionBottomSpacingForHiddenTabs:avatarTopPadding:collapsedAvatarTopPadding:avatarBackgroundStyle:avatarToHeaderTextVerticalSpacing:collapsedAvatarToHeaderTextVerticalSpacing:singleContactFont:singleContactVStackSpacing:blockedContactFont:blockedContactHStackSpacing:titleColor:editableTextFieldFont:editableTextFieldPadding:editableTextFieldBackground:groupNameTextFieldPadding:groupNameFont:defaultAvatarSize:collapsedAvatarSize:quickActionButtonBackgroundMaterial:quickActionButtonBackgroundColorTransformer:buttonTypeComparator:);
  v59[1] = 0;
  return result;
}

uint64_t static Header.StyleGuide.default.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Header.StyleGuide();
  v6 = __swift_project_value_buffer(v5, a2);
  return outlined init with copy of BlendedColor(v6, a3, type metadata accessor for Header.StyleGuide);
}

uint64_t one-time initialization function for default(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = type metadata accessor for Header.StyleGuide();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return a3();
}

__n128 closure #1 in variable initialization expression of static Header.StyleGuide.faceTimeGroup@<Q0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Font.Leading();
  v72 = *(v2 - 8);
  v73 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v71 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Material._GlassVariant();
  v68 = *(v4 - 8);
  v69 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v67 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9BlendModeOSgMd);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v63 - v10;
  v75 = type metadata accessor for Material();
  v66 = *(v75 - 8);
  v12 = MEMORY[0x1EEE9AC00](v75);
  v65 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v76 = &v63 - v14;
  static ContactCardStyleProvider.defaultBackgroundMaterial.getter();
  v74 = type metadata accessor for Header.StyleGuide();
  v70 = v74[24];
  v64 = objc_opt_self();
  v15 = [v64 clearColor];
  v16 = Color.init(uiColor:)();
  v17 = *MEMORY[0x1E6981DF0];
  v18 = type metadata accessor for BlendMode();
  v19 = *(v18 - 8);
  v20 = *(v19 + 104);
  v20(v11, v17, v18);
  v21 = *(v19 + 56);
  v21(v11, 0, 1, v18);
  v20(v9, v17, v18);
  v21(v9, 0, 1, v18);
  v22 = v70;
  BlendedColor.init(color:lightSchemeBlendMode:darkSchemeBlendMode:)(v16, v11, v9, v70 + a1);
  v23 = type metadata accessor for BlendedColor();
  (*(*(v23 - 8) + 56))(&v22[a1], 0, 1, v23);
  v24 = v64;
  v70 = [v64 whiteColor];
  v25 = v74;
  v26 = v74[28];
  v27 = *MEMORY[0x1E69DC558];
  v28 = type metadata accessor for UIButton.Configuration.Size();
  (*(*(v28 - 8) + 104))(a1 + v26, v27, v28);
  v29 = v67;
  static Material._GlassVariant.clear.getter();
  static Material._glass(_:)();
  (v68)[1](v29, v69);
  v30 = v75;
  v69 = AnyShapeStyle.init<A>(_:)();
  v68 = [v24 whiteColor];
  v31 = v25[34];
  v32 = v66;
  (*(v66 + 16))(a1 + v31, v76, v30);
  (*(v32 + 56))(a1 + v31, 0, 1, v30);
  v33 = v25[35];
  UIConfigurationColorTransformer.init(_:)();
  v34 = type metadata accessor for UIConfigurationColorTransformer();
  (*(*(v34 - 8) + 56))(a1 + v33, 0, 1, v34);
  v35 = MEMORY[0x1E69E7DE0];
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #1 in default argument 0 of Header.StyleGuide.init(preferredTopPadding:usesScrollPocket:quickActionButtonConfiguration:quickActionButtonBackgroundColor:quickActionButtonForegroundColor:quickActionButtonCornerStyle:quickActionButtonContentInsets:quickActionButtonSize:quickActionButtonSpacing:quickActionTopSpacing:collapsedQuickActionTranslation:quickActionBottomSpacing:quickActionBottomSpacingForHiddenTabs:avatarTopPadding:collapsedAvatarTopPadding:avatarBackgroundStyle:avatarToHeaderTextVerticalSpacing:collapsedAvatarToHeaderTextVerticalSpacing:singleContactFont:singleContactVStackSpacing:blockedContactFont:blockedContactHStackSpacing:titleColor:editableTextFieldFont:editableTextFieldPadding:editableTextFieldBackground:groupNameTextFieldPadding:groupNameFont:defaultAvatarSize:collapsedAvatarSize:quickActionButtonBackgroundMaterial:quickActionButtonBackgroundColorTransformer:buttonTypeComparator:), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v77, 0, implicit closure #5 in default argument 0 of Header.StyleGuide.init(preferredTopPadding:usesScrollPocket:quickActionButtonConfiguration:quickActionButtonBackgroundColor:quickActionButtonForegroundColor:quickActionButtonCornerStyle:quickActionButtonContentInsets:quickActionButtonSize:quickActionButtonSpacing:quickActionTopSpacing:collapsedQuickActionTranslation:quickActionBottomSpacing:quickActionBottomSpacingForHiddenTabs:avatarTopPadding:collapsedAvatarTopPadding:avatarBackgroundStyle:avatarToHeaderTextVerticalSpacing:collapsedAvatarToHeaderTextVerticalSpacing:singleContactFont:singleContactVStackSpacing:blockedContactFont:blockedContactHStackSpacing:titleColor:editableTextFieldFont:editableTextFieldPadding:editableTextFieldBackground:groupNameTextFieldPadding:groupNameFont:defaultAvatarSize:collapsedAvatarSize:quickActionButtonBackgroundMaterial:quickActionButtonBackgroundColorTransformer:buttonTypeComparator:), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, MEMORY[0x1E69E7DE0]);
  v36 = v77.n128_u64[0];
  static UIButton.Configuration.filled()();
  v37 = v25[26];
  v38 = *MEMORY[0x1E69DC508];
  v39 = type metadata accessor for UIButton.Configuration.CornerStyle();
  (*(*(v39 - 8) + 104))(a1 + v37, v38, v39);
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #1 in default argument 12 of Header.StyleGuide.init(preferredTopPadding:usesScrollPocket:quickActionButtonConfiguration:quickActionButtonBackgroundColor:quickActionButtonForegroundColor:quickActionButtonCornerStyle:quickActionButtonContentInsets:quickActionButtonSize:quickActionButtonSpacing:quickActionTopSpacing:collapsedQuickActionTranslation:quickActionBottomSpacing:quickActionBottomSpacingForHiddenTabs:avatarTopPadding:collapsedAvatarTopPadding:avatarBackgroundStyle:avatarToHeaderTextVerticalSpacing:collapsedAvatarToHeaderTextVerticalSpacing:singleContactFont:singleContactVStackSpacing:blockedContactFont:blockedContactHStackSpacing:titleColor:editableTextFieldFont:editableTextFieldPadding:editableTextFieldBackground:groupNameTextFieldPadding:groupNameFont:defaultAvatarSize:collapsedAvatarSize:quickActionButtonBackgroundMaterial:quickActionButtonBackgroundColorTransformer:buttonTypeComparator:), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v77, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, v35);
  v40 = v77.n128_u64[0];
  static Font.title.getter();
  static Font.Weight.bold.getter();
  v67 = Font.weight(_:)();

  static Font.body.getter();
  v41 = Font.bold()();

  v42 = static Font.headline.getter();
  static Color.gray.getter();
  v43 = Color.opacity(_:)();

  v77.n128_u64[0] = v43;
  v44 = AnyShapeStyle.init<A>(_:)();
  static Font.title.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v46 = v71;
  v45 = v72;
  v47 = v73;
  (*(v72 + 104))(v71, *MEMORY[0x1E6980EA8], v73);
  v48 = Font.leading(_:)();

  (*(v45 + 8))(v46, v47);
  type metadata accessor for CGSize(0);
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #1 in default argument 29 of Header.StyleGuide.init(preferredTopPadding:usesScrollPocket:quickActionButtonConfiguration:quickActionButtonBackgroundColor:quickActionButtonForegroundColor:quickActionButtonCornerStyle:quickActionButtonContentInsets:quickActionButtonSize:quickActionButtonSpacing:quickActionTopSpacing:collapsedQuickActionTranslation:quickActionBottomSpacing:quickActionBottomSpacingForHiddenTabs:avatarTopPadding:collapsedAvatarTopPadding:avatarBackgroundStyle:avatarToHeaderTextVerticalSpacing:collapsedAvatarToHeaderTextVerticalSpacing:singleContactFont:singleContactVStackSpacing:blockedContactFont:blockedContactHStackSpacing:titleColor:editableTextFieldFont:editableTextFieldPadding:editableTextFieldBackground:groupNameTextFieldPadding:groupNameFont:defaultAvatarSize:collapsedAvatarSize:quickActionButtonBackgroundMaterial:quickActionButtonBackgroundColorTransformer:buttonTypeComparator:), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGSize?), &v77, 0, specialized thunk for @callee_guaranteed () -> (@unowned CGSize?), 0, specialized thunk for @callee_guaranteed () -> (@unowned CGSize?), 0, v49);
  (*(v32 + 8))(v76, v75);
  result = v77;
  *a1 = v36;
  *(a1 + 8) = 0;
  v51 = v74;
  *(a1 + v74[25]) = v70;
  v52 = (a1 + v51[27]);
  __asm { FMOV            V1.2D, #22.0 }

  *v52 = _Q1;
  v52[1] = _Q1;
  v58 = a1 + v51[31];
  *v58 = 0x4028000000000000;
  *(v58 + 8) = 0;
  *(a1 + v51[29]) = 0x4038000000000000;
  *(a1 + v51[30]) = 0xC056800000000000;
  *(a1 + v51[32]) = 0x4038000000000000;
  *(a1 + v51[33]) = v40;
  *(a1 + 48) = xmmword_1901E65C0;
  *(a1 + 64) = xmmword_1901E65D0;
  *(a1 + 160) = 0x4000000000000000;
  *(a1 + 168) = v41;
  v60 = v68;
  v59 = v69;
  *(a1 + 176) = 0x4010000000000000;
  *(a1 + 184) = v60;
  *(a1 + 80) = v59;
  *(a1 + 88) = v42;
  *(a1 + 96) = xmmword_1901E65B0;
  *(a1 + 112) = xmmword_1901E65B0;
  *(a1 + 128) = v44;
  *(a1 + 136) = 0x4018000000000000;
  v61 = v67;
  *(a1 + 144) = v48;
  *(a1 + 152) = v61;
  *(a1 + 16) = vdupq_n_s64(0x406AE00000000000uLL);
  *(a1 + 32) = result;
  v62 = (a1 + v51[36]);
  *v62 = closure #1 in default argument 32 of Header.StyleGuide.init(preferredTopPadding:usesScrollPocket:quickActionButtonConfiguration:quickActionButtonBackgroundColor:quickActionButtonForegroundColor:quickActionButtonCornerStyle:quickActionButtonContentInsets:quickActionButtonSize:quickActionButtonSpacing:quickActionTopSpacing:collapsedQuickActionTranslation:quickActionBottomSpacing:quickActionBottomSpacingForHiddenTabs:avatarTopPadding:collapsedAvatarTopPadding:avatarBackgroundStyle:avatarToHeaderTextVerticalSpacing:collapsedAvatarToHeaderTextVerticalSpacing:singleContactFont:singleContactVStackSpacing:blockedContactFont:blockedContactHStackSpacing:titleColor:editableTextFieldFont:editableTextFieldPadding:editableTextFieldBackground:groupNameTextFieldPadding:groupNameFont:defaultAvatarSize:collapsedAvatarSize:quickActionButtonBackgroundMaterial:quickActionButtonBackgroundColorTransformer:buttonTypeComparator:);
  v62[1] = 0;
  return result;
}

id closure #1 in closure #1 in variable initialization expression of static Header.StyleGuide.faceTimeGroup()
{
  v0 = [objc_opt_self() clearColor];

  return v0;
}

uint64_t Header.StyleGuide.default.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Header.StyleGuide();

  return __swift_project_value_buffer(v3, a2);
}

void type metadata completion function for Header.StyleGuide()
{
  v0 = MEMORY[0x1E69E7DE0];
  type metadata accessor for CGSize(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319, &lazy cache variable for type metadata for AnyShapeStyle?, MEMORY[0x1E697E0B8], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UIColor();
      if (v3 <= 0x3F)
      {
        type metadata accessor for UIButton.Configuration();
        if (v4 <= 0x3F)
        {
          type metadata accessor for BlendedColor?(319, &lazy cache variable for type metadata for BlendedColor?, type metadata accessor for BlendedColor);
          if (v5 <= 0x3F)
          {
            type metadata accessor for UIButton.Configuration.CornerStyle();
            if (v6 <= 0x3F)
            {
              type metadata accessor for NSDirectionalEdgeInsets(319);
              if (v7 <= 0x3F)
              {
                type metadata accessor for UIButton.Configuration.Size();
                if (v8 <= 0x3F)
                {
                  type metadata accessor for CGSize(319, &lazy cache variable for type metadata for CGFloat?, v0, MEMORY[0x1E69E6720]);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for BlendedColor?(319, &lazy cache variable for type metadata for Material?, MEMORY[0x1E6981C80]);
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for BlendedColor?(319, &lazy cache variable for type metadata for UIConfigurationColorTransformer?, MEMORY[0x1E69DC1B8]);
                      if (v11 <= 0x3F)
                      {
                        type metadata accessor for ()();
                        if (v12 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t type metadata accessor for UIColor()
{
  result = lazy cache variable for type metadata for UIColor;
  if (!lazy cache variable for type metadata for UIColor)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIColor);
  }

  return result;
}

void type metadata accessor for CGSize(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for BlendedColor?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for NSDirectionalEdgeInsets(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for NSDirectionalEdgeInsets(uint64_t result, int a2, int a3)
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  lazy protocol witness table accessor for type QuickActionView.ButtonType and conformance QuickActionView.ButtonType();
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    lazy protocol witness table accessor for type QuickActionView.ButtonType and conformance QuickActionView.ButtonType();
    do
    {
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x193AEAF80](v9, a1);
      outlined destroy of AnyHashable(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC20CommunicationDetails15QuickActionViewC10ButtonTypeO_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy20CommunicationDetails15QuickActionViewC10ButtonTypeOSiGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type QuickActionView.ButtonType and conformance QuickActionView.ButtonType()
{
  result = lazy protocol witness table cache variable for type QuickActionView.ButtonType and conformance QuickActionView.ButtonType;
  if (!lazy protocol witness table cache variable for type QuickActionView.ButtonType and conformance QuickActionView.ButtonType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type QuickActionView.ButtonType and conformance QuickActionView.ButtonType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type QuickActionView.ButtonType and conformance QuickActionView.ButtonType;
  if (!lazy protocol witness table cache variable for type QuickActionView.ButtonType and conformance QuickActionView.ButtonType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type QuickActionView.ButtonType and conformance QuickActionView.ButtonType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type QuickActionView.ButtonType and conformance QuickActionView.ButtonType;
  if (!lazy protocol witness table cache variable for type QuickActionView.ButtonType and conformance QuickActionView.ButtonType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type QuickActionView.ButtonType and conformance QuickActionView.ButtonType);
  }

  return result;
}

uint64_t DetailsTab.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DetailsTab.viewControllerProvider.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t DetailsTab.init(tabItem:viewControllerProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  (*(*a1 + 96))();
  v9 = v8;
  ObjectType = swift_getObjectType();
  v11 = TabItem.id.getter(ObjectType, v9);
  v13 = v12;
  swift_unknownObjectRelease();
  *a4 = v11;
  a4[1] = v13;
  a4[2] = a1;
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a3;
  a4[3] = partial apply for closure #1 in DetailsTab.init(tabItem:viewControllerProvider:);
  a4[4] = result;
  return result;
}

uint64_t DetailsTab.init<A>(_:viewControllerProvider:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  type metadata accessor for AnyTabItem();
  v10 = swift_unknownObjectRetain();
  v11 = AnyTabItem.__allocating_init<A>(_:)(v10, a3, a4);
  (*(*v11 + 96))();
  v13 = v12;
  ObjectType = swift_getObjectType();
  v15 = TabItem.id.getter(ObjectType, v13);
  v17 = v16;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a5 = v15;
  a5[1] = v17;
  a5[2] = v11;
  a5[3] = closure #1 in DetailsTab.init(tabItem:viewControllerProvider:)partial apply;
  a5[4] = result;
  return result;
}

void *DetailsTab.init<A>(tabItem:viewProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  (*(*a1 + 96))();
  v15 = v14;
  ObjectType = swift_getObjectType();
  v17 = TabItem.id.getter(ObjectType, v15);
  v19 = v18;
  swift_unknownObjectRelease();
  *a7 = v17;
  a7[1] = v19;
  a7[2] = a1;
  result = swift_allocObject();
  result[2] = a4;
  result[3] = a5;
  result[4] = a6;
  result[5] = a2;
  result[6] = a3;
  a7[3] = partial apply for closure #1 in DetailsTab.init<A>(tabItem:viewProvider:);
  a7[4] = result;
  return result;
}