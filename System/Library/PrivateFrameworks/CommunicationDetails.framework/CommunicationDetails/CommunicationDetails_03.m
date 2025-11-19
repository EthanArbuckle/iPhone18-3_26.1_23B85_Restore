uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(double *__dst, double *__src, _OWORD *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 >= v12 >> 5)
  {
    if (a4 != __src || &__src[4 * v13] <= a4)
    {
      memmove(a4, __src, 32 * v13);
    }

    v14 = &v4[4 * v13];
    if (v11 >= 32 && v6 > v7)
    {
      type metadata accessor for MainActor();
LABEL_29:
      v43 = v6 - 4;
      v5 -= 2;
      v28 = v14;
      do
      {
        v29 = *(v28 - 32);
        v30 = *(v28 - 24);
        v28 -= 32;
        v31 = *(v28 + 16);
        v32 = *(v28 + 24);
        v33 = *(v6 - 4);
        v34 = *(v6 - 3);
        v35 = *(v6 - 2);
        v36 = *(v6 - 1);
        static MainActor.shared.getter();
        dispatch thunk of Actor.unownedExecutor.getter();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v46.origin.x = v29;
        v46.origin.y = v30;
        v46.size.width = v31;
        v46.size.height = v32;
        MinX = CGRectGetMinX(v46);
        v47.origin.x = v33;
        v47.origin.y = v34;
        v47.size.width = v35;
        v47.size.height = v36;
        v38 = CGRectGetMinX(v47);

        v39 = v5 + 2;
        if (MinX < v38)
        {
          if (v39 != v6)
          {
            v41 = *(v6 - 1);
            *v5 = *v43;
            v5[1] = v41;
          }

          if (v14 <= v4 || (v6 -= 4, v43 <= v7))
          {
            v6 = v43;
            goto LABEL_42;
          }

          goto LABEL_29;
        }

        if (v39 != v14)
        {
          v40 = *(v28 + 16);
          *v5 = *v28;
          v5[1] = v40;
        }

        v5 -= 2;
        v14 = v28;
      }

      while (v28 > v4);
      v14 = v28;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 >= 32 && v6 < v5)
    {
      type metadata accessor for MainActor();
      while (1)
      {
        v15 = *v6;
        v16 = v6[1];
        v17 = v6[2];
        v18 = v6[3];
        v19 = *v4;
        v20 = v4[1];
        v21 = v4[2];
        v22 = v4[3];
        static MainActor.shared.getter();
        dispatch thunk of Actor.unownedExecutor.getter();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v44.origin.x = v15;
        v44.origin.y = v16;
        v44.size.width = v17;
        v44.size.height = v18;
        v23 = CGRectGetMinX(v44);
        v45.origin.x = v19;
        v45.origin.y = v20;
        v45.size.width = v21;
        v45.size.height = v22;
        v24 = CGRectGetMinX(v45);

        if (v23 >= v24)
        {
          break;
        }

        v25 = v6;
        v26 = v7 == v6;
        v6 += 4;
        if (!v26)
        {
          goto LABEL_19;
        }

LABEL_20:
        v7 += 4;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_22;
        }
      }

      v25 = v4;
      v26 = v7 == v4;
      v4 += 4;
      if (v26)
      {
        goto LABEL_20;
      }

LABEL_19:
      v27 = *(v25 + 1);
      *v7 = *v25;
      *(v7 + 1) = v27;
      goto LABEL_20;
    }

LABEL_22:
    v6 = v7;
  }

LABEL_42:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void specialized Set.subscript.getter(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x193AEAF50](a1, a2, v7);
      _sSo8NSObjectCMaTm_0(0, &lazy cache variable for type metadata for UITouch);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    _sSo8NSObjectCMaTm_0(0, &lazy cache variable for type metadata for UITouch);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v15;
    v8 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

id specialized SegmentedTabControl.init(viewModel:styleGuide:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = &v2[OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_lastLayoutBounds];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[32] = 1;
  v5 = &v2[OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_lastIntrinsicSize];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  *&v2[OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___scrollView] = 0;
  *&v2[OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___segmentedControl] = 0;
  v6 = *(a2 + 24);
  *&v2[OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_viewModel] = a1;
  v7 = &v2[OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_styleGuide];
  *v7 = *a2;
  *(v7 + 2) = v3;
  v7[24] = v6;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for SegmentedTabControl();

  v8 = objc_msgSendSuper2(&v13, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v9 = v8;
  if ((v6 & 1) == 0)
  {
    [v8 setOverrideUserInterfaceStyle_];
  }

  SegmentedTabControl.setupSegmentedControl()();
  v11 = MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  withObservationTracking<A>(_:onChange:)();
  return v9;
}

uint64_t _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufC12CoreGraphics7CGFloatV_SaySo6UIViewCGTt1g50136_s20CommunicationDetails34GesturePassthroughSegmentedControl33_14FE08E8F5222DE52E4C6E817780A66FLLC18cleanSegmentFramesSaySo6CGRectVGyF12d9Graphics7f4VSo6G6CXEfU_Tf1nc_nTf4g_n(uint64_t a1)
{
  v25 = MEMORY[0x1E69E7CC8];
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC8];
  }

LABEL_25:
  if (a1 < 0)
  {
    v23 = a1;
  }

  else
  {
    v23 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  v2 = MEMORY[0x193AEB0F0](v23);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

LABEL_3:
  v3 = 0;
  v4 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x193AEB000](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v6 = *(a1 + 8 * v3 + 32);
    }

    v7 = v6;
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    type metadata accessor for MainActor();
    static MainActor.shared.getter();
    dispatch thunk of Actor.unownedExecutor.getter();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    [v7 frame];
    v10 = v9;

    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
    v13 = v4[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      goto LABEL_23;
    }

    v17 = v12;
    if (v4[3] < v16)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, 1);
      v4 = v25;
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
      if ((v17 & 1) != (v18 & 1))
      {
        break;
      }
    }

    if (v17)
    {
      v5 = (v4[7] + 8 * v11);
      MEMORY[0x193AEA9A0]();
      if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
      v19 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1901E6230;
      *(v20 + 32) = v7;
      v4[(v19 >> 6) + 8] |= 1 << v19;
      *(v4[6] + 8 * v19) = v10;
      *(v4[7] + 8 * v19) = v20;
      v21 = v4[2];
      v15 = __OFADD__(v21, 1);
      v22 = v21 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      v4[2] = v22;
    }

    ++v3;
    if (v8 == v2)
    {
      return v4;
    }
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t _sSo8NSObjectCMaTm_0(uint64_t a1, unint64_t *a2)
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

unint64_t lazy protocol witness table accessor for type UITouch and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UITouch and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UITouch and conformance NSObject)
  {
    _sSo8NSObjectCMaTm_0(255, &lazy cache variable for type metadata for UITouch);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UITouch and conformance NSObject);
  }

  return result;
}

uint64_t outlined consume of Set<UITouch>.Index._Variant(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #2 in implicit closure #1 in SegmentedTabControl.observeViewModel()()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in closure #2 in implicit closure #1 in SegmentedTabControl.observeViewModel();

  return closure #1 in closure #2 in implicit closure #1 in SegmentedTabControl.observeViewModel()(v3, v4, v5, v2);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void (*partial apply for implicit closure #1 in SegmentedTabControl.observeViewModel()())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return partial apply for closure #2 in implicit closure #1 in SegmentedTabControl.observeViewModel();
}

uint64_t DetailsTabBarViewWrapper.init(viewModel:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HorizontalTabControl.ViewModel();
  result = State.init(wrappedValue:)();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

__n128 DetailsTabBarViewWrapper.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  *&v17[0] = *v1;
  *(&v17[0] + 1) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails20HorizontalTabControlV9ViewModelCGMd);
  State.wrappedValue.getter();
  v4 = HorizontalTabControl.StyleGuide.default.unsafeMutableAddressor();
  v5 = v4[1];
  v16[0] = *v4;
  v16[1] = v5;
  v6 = v4[5];
  v8 = v4[2];
  v7 = v4[3];
  v16[4] = v4[4];
  v16[5] = v6;
  v16[2] = v8;
  v16[3] = v7;
  v9 = v4[3];
  v15[2] = v4[2];
  v15[3] = v9;
  v10 = v4[5];
  v15[4] = v4[4];
  v15[5] = v10;
  v11 = v4[1];
  v15[0] = *v4;
  v15[1] = v11;
  outlined init with copy of HorizontalTabControl.StyleGuide(v16, v17);
  DetailsTabBarViewRepresentable.init(viewModel:styleGuide:)(v15, v17);
  v12 = v17[5];
  *(a1 + 64) = v17[4];
  *(a1 + 80) = v12;
  *(a1 + 96) = v17[6];
  v13 = v17[1];
  *a1 = v17[0];
  *(a1 + 16) = v13;
  result = v17[3];
  *(a1 + 32) = v17[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DetailsTabBarViewWrapper(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for DetailsTabBarViewWrapper(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type DetailsTabBarViewRepresentable and conformance DetailsTabBarViewRepresentable()
{
  result = lazy protocol witness table cache variable for type DetailsTabBarViewRepresentable and conformance DetailsTabBarViewRepresentable;
  if (!lazy protocol witness table cache variable for type DetailsTabBarViewRepresentable and conformance DetailsTabBarViewRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DetailsTabBarViewRepresentable and conformance DetailsTabBarViewRepresentable);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DetailsTabBarViewRepresentable and conformance DetailsTabBarViewRepresentable;
  if (!lazy protocol witness table cache variable for type DetailsTabBarViewRepresentable and conformance DetailsTabBarViewRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DetailsTabBarViewRepresentable and conformance DetailsTabBarViewRepresentable);
  }

  return result;
}

uint64_t HorizontalFadeAndBlur.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  v5 = type metadata accessor for ColorRenderingMode();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  v30 = v2[1];
  v31 = v9;
  v34 = v9;
  v35 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA5ImageVSgGMd);
  State.wrappedValue.getter();
  v10 = v38;
  if (!v38)
  {
    v11 = static Color.black.getter();
    v12 = static Color.clear.getter();
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v12;
    v13[5] = v11;
    v13[6] = 0x4034000000000000;
    (*(v6 + 104))(v8, *MEMORY[0x1E697F3A0], v5);
    v10 = Image.init(size:label:opaque:colorMode:renderer:)();
  }

  v15 = v3[2];
  v14 = v3[3];
  v34 = v15;
  v35 = v14;
  State.wrappedValue.getter();
  if (!v38)
  {
    v16 = static Color.black.getter();
    v17 = static Color.clear.getter();
    v18 = swift_allocObject();
    v29 = a1;
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v17;
    v18[5] = v16;
    v18[6] = 0x4034000000000000;
    (*(v6 + 104))(v8, *MEMORY[0x1E697F3A0], v5);
    Image.init(size:label:opaque:colorMode:renderer:)();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails21HorizontalFadeAndBlurVGMd);
  lazy protocol witness table accessor for type _ViewModifier_Content<HorizontalFadeAndBlur> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<HorizontalFadeAndBlur> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails21HorizontalFadeAndBlurVGMd);
  View.variableBlur(maxRadius:mask:opaque:)();
  v19 = static Alignment.center.getter();
  v21 = v20;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12variableBlur9maxRadius4mask6opaqueQr12CoreGraphics7CGFloatV_AA5ImageVSbtFQOyAA01_e9Modifier_D0Vy20CommunicationDetails017HorizontalFadeAndG0VG_Qo_AA20_MaskAlignmentEffectVyANGGMd);
  v23 = v32;
  v24 = (v32 + *(v22 + 36));
  *v24 = v19;
  v24[1] = v21;
  v24[2] = v10;
  v37 = v14;
  v38 = v31;
  v34 = v30;
  v36 = v15;
  v25 = swift_allocObject();
  v26 = *(v3 + 1);
  v25[1] = *v3;
  v25[2] = v26;
  v25[3] = *(v3 + 2);
  v27 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE12variableBlur9maxRadius4mask6opaqueQr12CoreGraphics7CGFloatV_AA5ImageVSbtFQOyAA01_e9Modifier_D0Vy20CommunicationDetails017HorizontalFadeAndG0VG_Qo_AA20_MaskAlignmentEffectVyANGGAA015_GeometryActionP0VySo6CGSizeVA1_SQAJyHCg_GGMd) + 36));
  *v27 = specialized implicit closure #3 in HorizontalFadeAndBlur.body(content:);
  v27[1] = 0;
  v27[2] = partial apply for closure #2 in HorizontalFadeAndBlur.body(content:);
  v27[3] = v25;
  outlined init with copy of Image?(&v38, v33, &_s7SwiftUI5ImageVSgMd);
  outlined init with copy of Image?(&v34, v33, &_s7SwiftUI11AnyLocationCyAA5ImageVSgGSgMd);
  outlined init with copy of Image?(&v36, v33, &_s7SwiftUI5ImageVSgMd);
  return outlined init with copy of Image?(&v37, v33, &_s7SwiftUI11AnyLocationCyAA5ImageVSgGSgMd);
}

uint64_t specialized implicit closure #3 in HorizontalFadeAndBlur.body(content:)@<X0>(void *a1@<X8>)
{
  result = GeometryProxy.size.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t closure #2 in HorizontalFadeAndBlur.body(content:)(uint64_t *a1, __int128 *a2)
{
  v4 = type metadata accessor for ColorRenderingMode();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  type metadata accessor for MainActor();
  v22 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *(a2 + 5);
  v11 = static Color.black.getter();
  v12 = static Color.clear.getter();
  v13 = swift_allocObject();
  v13[2] = v8;
  v13[3] = v9;
  v13[4] = v12;
  v13[5] = v11;
  v13[6] = v10;
  v14 = *MEMORY[0x1E697F3A0];
  v15 = *(v5 + 104);
  v15(v7, v14, v4);
  v16 = Image.init(size:label:opaque:colorMode:renderer:)();
  v24 = *a2;
  v23 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA5ImageVSgGMd);
  State.wrappedValue.setter();
  v17 = static Color.clear.getter();
  v18 = static Color.black.getter();
  v19 = swift_allocObject();
  v19[2] = v8;
  v19[3] = v9;
  v19[4] = v18;
  v19[5] = v17;
  v19[6] = v10;
  v15(v7, v14, v4);
  v20 = Image.init(size:label:opaque:colorMode:renderer:)();
  v24 = a2[1];
  v23 = v20;
  State.wrappedValue.setter();
}

__n128 HorizontalFadeAndBlur.init(maxBlurRadius:radius:)@<Q0>(__n128 *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5ImageVSgMd);
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  result = v7;
  *a1 = v7;
  a1[1] = v7;
  a1[2].n128_f64[0] = a2;
  a1[2].n128_f64[1] = a3;
  return result;
}

uint64_t View.horizontalFadeAndBlur(maxBlurRadius:radius:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5ImageVSgMd);
  State.init(wrappedValue:)();
  v12 = 0;
  State.init(wrappedValue:)();
  v9[1] = v9[0];
  v10 = a3;
  v11 = a4;
  MEMORY[0x193AEA300](v9, a1, &type metadata for HorizontalFadeAndBlur, a2);
}

uint64_t closure #1 in static Image.featheredHorizontalMask(size:radius:inverted:)()
{
  v0 = type metadata accessor for GraphicsContext.Shading();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  Path.init(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI8GradientV4StopVGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1901E7360;

  *(v4 + 32) = Gradient.Stop.init(color:location:)();
  *(v4 + 40) = v5;

  *(v4 + 48) = Gradient.Stop.init(color:location:)();
  *(v4 + 56) = v6;

  *(v4 + 64) = Gradient.Stop.init(color:location:)();
  *(v4 + 72) = v7;

  *(v4 + 80) = Gradient.Stop.init(color:location:)();
  *(v4 + 88) = v8;
  Gradient.init(stops:)();
  static GraphicsContext.Shading.linearGradient(_:startPoint:endPoint:options:)();

  GraphicsContext.fill(_:with:style:)();
  outlined destroy of Path(v11);
  return (*(v1 + 8))(v3, v0);
}

uint64_t outlined init with copy of Image?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
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

uint64_t getEnumTagSinglePayload for HorizontalFadeAndBlur(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for HorizontalFadeAndBlur(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.variableBlur(maxRadius:mask:opaque:)>>.0, _MaskAlignmentEffect<Image>>, _GeometryActionModifier<CGSize>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.variableBlur(maxRadius:mask:opaque:)>>.0, _MaskAlignmentEffect<Image>>, _GeometryActionModifier<CGSize>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.variableBlur(maxRadius:mask:opaque:)>>.0, _MaskAlignmentEffect<Image>>, _GeometryActionModifier<CGSize>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE12variableBlur9maxRadius4mask6opaqueQr12CoreGraphics7CGFloatV_AA5ImageVSbtFQOyAA01_e9Modifier_D0Vy20CommunicationDetails017HorizontalFadeAndG0VG_Qo_AA20_MaskAlignmentEffectVyANGGAA015_GeometryActionP0VySo6CGSizeVA1_SQAJyHCg_GGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.variableBlur(maxRadius:mask:opaque:)>>.0, _MaskAlignmentEffect<Image>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<HorizontalFadeAndBlur> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _GeometryActionModifier<CGSize> and conformance _GeometryActionModifier<A>, &_s7SwiftUI23_GeometryActionModifierVySo6CGSizeVAESQ12CoreGraphicsyHCg_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.variableBlur(maxRadius:mask:opaque:)>>.0, _MaskAlignmentEffect<Image>>, _GeometryActionModifier<CGSize>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.variableBlur(maxRadius:mask:opaque:)>>.0, _MaskAlignmentEffect<Image>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.variableBlur(maxRadius:mask:opaque:)>>.0, _MaskAlignmentEffect<Image>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.variableBlur(maxRadius:mask:opaque:)>>.0, _MaskAlignmentEffect<Image>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12variableBlur9maxRadius4mask6opaqueQr12CoreGraphics7CGFloatV_AA5ImageVSbtFQOyAA01_e9Modifier_D0Vy20CommunicationDetails017HorizontalFadeAndG0VG_Qo_AA20_MaskAlignmentEffectVyANGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails21HorizontalFadeAndBlurVGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<HorizontalFadeAndBlur> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<HorizontalFadeAndBlur> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails21HorizontalFadeAndBlurVGMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type _ViewModifier_Content<HorizontalFadeAndBlur> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _MaskAlignmentEffect<Image> and conformance _MaskAlignmentEffect<A>, &_s7SwiftUI20_MaskAlignmentEffectVyAA5ImageVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.variableBlur(maxRadius:mask:opaque:)>>.0, _MaskAlignmentEffect<Image>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<HorizontalFadeAndBlur> and conformance _ViewModifier_Content<A>(unint64_t *a1, uint64_t *a2)
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

unint64_t lazy protocol witness table accessor for type HorizontalFadeAndBlur and conformance HorizontalFadeAndBlur()
{
  result = lazy protocol witness table cache variable for type HorizontalFadeAndBlur and conformance HorizontalFadeAndBlur;
  if (!lazy protocol witness table cache variable for type HorizontalFadeAndBlur and conformance HorizontalFadeAndBlur)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HorizontalFadeAndBlur and conformance HorizontalFadeAndBlur);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

__n128 DetailsTabBarView.Configuration.preferredLayoutMargins.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 DetailsTabBarView.Configuration.init(preferredLayoutMargins:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = v2 & 1;
  return result;
}

BOOL static DetailsTabBarView.Configuration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 32) & 1) == 0)
  {
    return (*(a2 + 32) & 1) == 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))), xmmword_1901E7470)) & 0xF) == 0;
  }

  return (*(a2 + 32) & 1) != 0;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance DetailsTabBarView.Configuration(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 32) & 1) == 0)
  {
    return (*(a2 + 32) & 1) == 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))), xmmword_1901E7470)) & 0xF) == 0;
  }

  return *(a2 + 32) != 0;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DetailsTabBarView.Configuration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DetailsTabBarView.Configuration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
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

  *(result + 33) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for UIEdgeInsets(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for UIEdgeInsets(uint64_t result, int a2, int a3)
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

void type metadata accessor for UIEdgeInsets()
{
  if (!lazy cache variable for type metadata for UIEdgeInsets)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for UIEdgeInsets);
    }
  }
}

Swift::Int DetailsViewController.ObservableConfiguration.ConfigurationCapabilities.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DetailsViewController.ObservableConfiguration.ConfigurationCapabilities()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DetailsViewController.ObservableConfiguration.ConfigurationCapabilities()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v1);
  return Hasher._finalize()();
}

void (*DetailsViewController.ObservableConfiguration.addCapability(_:)(unsigned __int8 *a1))(void)
{
  v2 = *a1;
  v3 = (*(*v1 + 648))(v9);
  specialized Set._Variant.insert(_:)(&v10, v2);
  v4 = v3(v9, 0);
  result = (*(*v1 + 536))(v4);
  if (result)
  {
    v7 = result;
    v8 = v6;
    v9[0] = v2;
    result(v9);
    return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed DetailsViewController.ObservableConfiguration.ConfigurationCapabilities) -> ())?(v7, v8);
  }

  return result;
}

void (*DetailsViewController.ObservableConfiguration.removeCapability(_:)(unsigned __int8 *a1))(void)
{
  v2 = *a1;
  v3 = (*(*v1 + 648))(v9);
  specialized Set._Variant.remove(_:)(v2, &v10);
  v4 = v3(v9, 0);
  result = (*(*v1 + 536))(v4);
  if (result)
  {
    v7 = result;
    v8 = v6;
    v9[0] = v2;
    result(v9);
    return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed DetailsViewController.ObservableConfiguration.ConfigurationCapabilities) -> ())?(v7, v8);
  }

  return result;
}

uint64_t DetailsViewController.ObservableConfiguration.addCapabilites(_:)(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *(*v1 + 648);
    v4 = (result + 32);
    do
    {
      v5 = *v4++;
      v6 = v3(v7);
      specialized Set._Variant.insert(_:)(&v8, v5);
      result = v6(v7, 0);
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t DetailsViewController.ObservableConfiguration.removeCapabilities(_:)(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *(*v1 + 648);
    v4 = (result + 32);
    do
    {
      v5 = *v4++;
      v6 = v3(v7);
      specialized Set._Variant.remove(_:)(v5, &v8);
      result = v6(v7, 0);
      --v2;
    }

    while (v2);
  }

  return result;
}

BOOL DetailsViewController.ObservableConfiguration.supportsCapability(_:)(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = (*(*v1 + 632))();
  v4 = specialized Set.contains(_:)(v2, v3);

  return v4;
}

BOOL specialized Set.contains(_:)(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v3);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy20CommunicationDetails0D14ViewControllerC23ObservableConfigurationC0H12CapabilitiesOGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x193AEB260](v16);
      result = Hasher._finalize()();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy20CommunicationDetails15QuickActionViewC10ButtonTypeOGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      lazy protocol witness table accessor for type QuickActionView.ButtonType and conformance QuickActionView.ButtonType();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v4);
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy20CommunicationDetails0D14ViewControllerC23ObservableConfigurationC0H12CapabilitiesOGMd);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy20CommunicationDetails15QuickActionViewC10ButtonTypeOGMd);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy20CommunicationDetails0D14ViewControllerC23ObservableConfigurationC0H12CapabilitiesOGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x193AEB260](v15);
      result = Hasher._finalize()();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy20CommunicationDetails15QuickActionViewC10ButtonTypeOGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      lazy protocol witness table accessor for type QuickActionView.ButtonType and conformance QuickActionView.ButtonType();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

unint64_t specialized Set._Variant.remove(_:)@<X0>(unsigned __int8 a1@<W0>, _BYTE *a2@<X8>)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](a1);
  result = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = result & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a1)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v2;
    v12 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v11 = v12;
    }

    *a2 = *(*(v11 + 48) + v8);
    result = specialized _NativeSet._delete(at:)(v8);
    *v2 = v12;
  }

  else
  {
LABEL_5:
    *a2 = 11;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DetailsViewController.ObservableConfiguration.ConfigurationCapabilities(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DetailsViewController.ObservableConfiguration.ConfigurationCapabilities(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        Hasher.init(_seed:)();
        MEMORY[0x193AEB260](v10);
        v11 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + v2);
          v14 = (v12 + v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

Swift::Int QuickActionType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance QuickActionType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance QuickActionType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v1);
  return Hasher._finalize()();
}

uint64_t QuickActionView.ButtonType.MenuItem.title.getter(char a1)
{
  if (a1)
  {
    v1 = 0x80000001901FC440;
    v2 = 0xD000000000000013;
  }

  else
  {
    v2 = 0x594D5F4552414853;
    v1 = 0xEF4E45455243535FLL;
  }

  return LocalizedString(_:)(*&v2)._countAndFlagsBits;
}

Swift::Int QuickActionView.ButtonType.MenuItem.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance QuickActionView.ButtonType.MenuItem()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance QuickActionView.ButtonType.MenuItem()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v1);
  return Hasher._finalize()();
}

uint64_t QuickActionView.ButtonType.imageName.getter(unsigned __int8 a1)
{
  v1 = 0x69662E656E6F6870;
  v2 = 0x65706F6C65766E65;
  v3 = 0x2E6567617373656DLL;
  if (a1 != 3)
  {
    v3 = 0xD000000000000020;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x69662E6F65646976;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t QuickActionView.ButtonType.cnActionType.getter(unsigned __int8 a1)
{
  if (a1 >= 4u)
  {
    return 0;
  }

  else
  {
    return static String._unconditionallyBridgeFromObjectiveC(_:)();
  }
}

uint64_t QuickActionView.ButtonType.init(actionType:)(uint64_t a1, uint64_t a2)
{
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v4 == a2)
  {

LABEL_8:

    return 0;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
    goto LABEL_8;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v8 == a2)
  {

LABEL_16:

    return 1;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
    goto LABEL_16;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v11 == a2)
  {

LABEL_24:

    return 2;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    goto LABEL_24;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v14 == a2)
  {

    return 3;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      return 3;
    }

    else
    {
      return 5;
    }
  }
}

void *QuickActionView.ButtonType.menuItems.getter(char a1)
{
  if (a1 == 4)
  {
    return &outlined read-only object #0 of QuickActionView.ButtonType.menuItems.getter;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

Swift::Int QuickActionView.ButtonType.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance QuickActionView.ButtonType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance QuickActionView.ButtonType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type QuickActionType and conformance QuickActionType()
{
  result = lazy protocol witness table cache variable for type QuickActionType and conformance QuickActionType;
  if (!lazy protocol witness table cache variable for type QuickActionType and conformance QuickActionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type QuickActionType and conformance QuickActionType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type QuickActionView.ButtonType.MenuItem and conformance QuickActionView.ButtonType.MenuItem()
{
  result = lazy protocol witness table cache variable for type QuickActionView.ButtonType.MenuItem and conformance QuickActionView.ButtonType.MenuItem;
  if (!lazy protocol witness table cache variable for type QuickActionView.ButtonType.MenuItem and conformance QuickActionView.ButtonType.MenuItem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type QuickActionView.ButtonType.MenuItem and conformance QuickActionView.ButtonType.MenuItem);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [QuickActionView.ButtonType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [QuickActionView.ButtonType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [QuickActionView.ButtonType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay20CommunicationDetails15QuickActionViewC10ButtonTypeOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [QuickActionView.ButtonType] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QuickActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for QuickActionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QuickActionView.ButtonType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for QuickActionView.ButtonType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QuickActionView.ButtonType.MenuItem(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for QuickActionView.ButtonType.MenuItem(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t CommunicationDetailsContact.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CommunicationDetailsContact.displayName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t CommunicationDetailsContact.activeHandle.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t CommunicationDetailsContact.formattedHandle.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t CommunicationDetailsContact.carrierLabel.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t CommunicationDetailsContact.carrierLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

void __swiftcall CommunicationDetailsContact.init(contact:isBlocked:isKnownContact:)(CommunicationDetails::CommunicationDetailsContact *__return_ptr retstr, CNContact contact, Swift::Bool isBlocked, Swift::Bool isKnownContact)
{
  v7 = [objc_allocWithZone(MEMORY[0x1E695CD80]) init];
  [v7 setStyle_];
  [v7 setFallbackStyle_];
  v24 = v7;
  v8 = [v7 stringFromContact_];
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v12 = 0xE700000000000000;
    v10 = 0x6E776F6E6B6E75;
  }

  v13 = [(objc_class *)contact.super.isa identifier];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  MEMORY[0x193AEA970](45, 0xE100000000000000);
  MEMORY[0x193AEA970](v10, v12);

  MEMORY[0x193AEA970](45, 0xE100000000000000);
  v23 = isBlocked;
  if (isBlocked)
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (isBlocked)
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  MEMORY[0x193AEA970](v17, v18);

  MEMORY[0x193AEA970](45, 0xE100000000000000);
  v19 = isKnownContact;
  if (isKnownContact)
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (isKnownContact)
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  MEMORY[0x193AEA970](v20, v21);

  v22 = [(objc_class *)contact.super.isa isCoreRecentsAccepted];
  retstr->id._countAndFlagsBits = v14;
  retstr->id._object = v16;
  retstr->contact = contact;
  retstr->displayName._countAndFlagsBits = v10;
  retstr->displayName._object = v12;
  retstr->activeHandle._countAndFlagsBits = 0;
  retstr->formattedHandle.value._countAndFlagsBits = 0;
  retstr->formattedHandle.value._object = 0;
  retstr->activeHandle._object = 0xE000000000000000;
  retstr->isBlocked = v23;
  retstr->isKnownContact = v19;
  retstr->isAddedToContacts = v19;
  retstr->isMarkedAsKnown = v22;
  retstr->carrierLabel.value._countAndFlagsBits = 0;
  retstr->carrierLabel.value._object = 0;
  retstr->contactFormatter.super.super.isa = v24;
}

id CommunicationDetailsContact.init(contact:isBlocked:isKnownContact:activeHandle:)@<X0>(void *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = [objc_allocWithZone(MEMORY[0x1E695CD80]) init];
  [v10 setStyle_];
  [v10 setFallbackStyle_];
  v26 = v10;
  v11 = [v10 stringFromContact_];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v15 = 0xE700000000000000;
    v13 = 0x6E776F6E6B6E75;
  }

  v16 = [a1 identifier];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v29 = v17;
  MEMORY[0x193AEA970](45, 0xE100000000000000);
  MEMORY[0x193AEA970](v13, v15);

  MEMORY[0x193AEA970](45, 0xE100000000000000);
  if (a2)
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (a2)
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  MEMORY[0x193AEA970](v20, v21);

  MEMORY[0x193AEA970](45, 0xE100000000000000);
  v22 = a3 & 1;
  if (v22)
  {
    v23 = 1702195828;
  }

  else
  {
    v23 = 0x65736C6166;
  }

  if (v22)
  {
    v24 = 0xE400000000000000;
  }

  else
  {
    v24 = 0xE500000000000000;
  }

  MEMORY[0x193AEA970](v23, v24);

  MEMORY[0x193AEA970](45, 0xE100000000000000);
  MEMORY[0x193AEA970](a4, a5);
  result = [a1 isCoreRecentsAccepted];
  *a6 = v29;
  *(a6 + 8) = v19;
  *(a6 + 16) = a1;
  *(a6 + 24) = v13;
  *(a6 + 32) = v15;
  *(a6 + 40) = a4;
  *(a6 + 56) = 0;
  *(a6 + 64) = 0;
  *(a6 + 48) = a5;
  *(a6 + 72) = a2 & 1;
  *(a6 + 73) = v22;
  *(a6 + 74) = v22;
  *(a6 + 75) = result;
  *(a6 + 80) = 0;
  *(a6 + 88) = 0;
  *(a6 + 96) = v26;
  return result;
}

void __swiftcall CommunicationDetailsContact.init(contact:isBlocked:isAddedToContacts:activeHandle:displayNameOverride:)(CommunicationDetails::CommunicationDetailsContact *__return_ptr retstr, CNContact contact, Swift::Bool isBlocked, Swift::Bool isAddedToContacts, Swift::String activeHandle, Swift::String_optional displayNameOverride)
{
  object = displayNameOverride.value._object;
  countAndFlagsBits = displayNameOverride.value._countAndFlagsBits;
  v8 = activeHandle._object;
  v9 = activeHandle._countAndFlagsBits;
  v13 = [objc_allocWithZone(MEMORY[0x1E695CD80]) init];
  [v13 setStyle_];
  [v13 setFallbackStyle_];
  v30 = v8;
  if (!object)
  {
    v14 = [v13 stringFromContact_];
    if (v14)
    {
      v15 = v14;
      countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      object = v16;
    }

    else
    {

      countAndFlagsBits = v9;
      object = v8;
    }
  }

  v17 = [(objc_class *)contact.super.isa identifier];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v31 = v18;
  MEMORY[0x193AEA970](45, 0xE100000000000000);
  MEMORY[0x193AEA970](countAndFlagsBits, object);

  MEMORY[0x193AEA970](45, 0xE100000000000000);
  v28 = isBlocked;
  if (isBlocked)
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  if (isBlocked)
  {
    v22 = 0xE400000000000000;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  MEMORY[0x193AEA970](v21, v22);

  MEMORY[0x193AEA970](45, 0xE100000000000000);
  v23 = countAndFlagsBits;
  v24 = isAddedToContacts;
  if (isAddedToContacts)
  {
    v25 = 1702195828;
  }

  else
  {
    v25 = 0x65736C6166;
  }

  if (isAddedToContacts)
  {
    v26 = 0xE400000000000000;
  }

  else
  {
    v26 = 0xE500000000000000;
  }

  MEMORY[0x193AEA970](v25, v26);

  MEMORY[0x193AEA970](45, 0xE100000000000000);
  MEMORY[0x193AEA970](v9, v30);
  v27 = [(objc_class *)contact.super.isa isCoreRecentsAccepted];
  retstr->id._countAndFlagsBits = v31;
  retstr->id._object = v20;
  retstr->contact = contact;
  retstr->displayName._countAndFlagsBits = v23;
  retstr->displayName._object = object;
  retstr->activeHandle._countAndFlagsBits = v9;
  retstr->formattedHandle.value._countAndFlagsBits = 0;
  retstr->formattedHandle.value._object = 0;
  retstr->activeHandle._object = v30;
  retstr->isBlocked = v28;
  retstr->isKnownContact = v24;
  retstr->isAddedToContacts = v24;
  retstr->isMarkedAsKnown = v27;
  retstr->carrierLabel.value._countAndFlagsBits = 0;
  retstr->carrierLabel.value._object = 0;
  retstr->contactFormatter.super.super.isa = v13;
}

void __swiftcall CommunicationDetailsContact.init(contact:isBlocked:isAddedToContacts:activeHandle:formattedHandle:displayNameOverride:)(CommunicationDetails::CommunicationDetailsContact *__return_ptr retstr, CNContact contact, Swift::Bool isBlocked, Swift::Bool isAddedToContacts, Swift::String activeHandle, Swift::String_optional formattedHandle, Swift::String_optional displayNameOverride)
{
  countAndFlagsBits = displayNameOverride.value._countAndFlagsBits;
  object = formattedHandle.value._object;
  v9 = formattedHandle.value._countAndFlagsBits;
  v10 = activeHandle._object;
  v11 = activeHandle._countAndFlagsBits;
  v14 = displayNameOverride.value._object;
  v15 = [objc_allocWithZone(MEMORY[0x1E695CD80]) init];
  [v15 setStyle_];
  [v15 setFallbackStyle_];
  v37 = v9;
  v36 = v10;
  if (displayNameOverride.value._object)
  {
    v16 = v11;
  }

  else
  {
    v17 = [v15 stringFromContact_];
    if (v17)
    {
      v16 = v11;
      v18 = v17;
      countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v19;
    }

    else if (object)
    {
      v16 = v11;

      countAndFlagsBits = v9;
      v14 = object;
    }

    else
    {

      v16 = v11;
      countAndFlagsBits = v11;
      v14 = v10;
    }
  }

  _StringGuts.grow(_:)(17);
  isa = contact.super.isa;
  v20 = [(objc_class *)contact.super.isa identifier];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v38 = v23;
  MEMORY[0x193AEA970](45, 0xE100000000000000);
  MEMORY[0x193AEA970](countAndFlagsBits, v14);

  MEMORY[0x193AEA970](45, 0xE100000000000000);
  v24 = !isBlocked;
  v34 = isBlocked;
  if (v34)
  {
    v25 = 1702195828;
  }

  else
  {
    v25 = 0x65736C6166;
  }

  if (v24)
  {
    v26 = 0xE500000000000000;
  }

  else
  {
    v26 = 0xE400000000000000;
  }

  MEMORY[0x193AEA970](v25, v26);

  MEMORY[0x193AEA970](45, 0xE100000000000000);
  v27 = isAddedToContacts;
  if (isAddedToContacts)
  {
    v28 = 1702195828;
  }

  else
  {
    v28 = 0x65736C6166;
  }

  if (isAddedToContacts)
  {
    v29 = 0xE400000000000000;
  }

  else
  {
    v29 = 0xE500000000000000;
  }

  MEMORY[0x193AEA970](v28, v29);

  MEMORY[0x193AEA970](45, 0xE100000000000000);
  MEMORY[0x193AEA970](v16, v36);
  MEMORY[0x193AEA970](45, 0xE100000000000000);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
  v30 = String.init<A>(describing:)();
  MEMORY[0x193AEA970](v30);

  v31 = [(objc_class *)isa isCoreRecentsAccepted];
  retstr->id._countAndFlagsBits = v21;
  retstr->id._object = v38;
  retstr->contact.super.isa = isa;
  retstr->displayName._countAndFlagsBits = countAndFlagsBits;
  retstr->displayName._object = v14;
  retstr->activeHandle._countAndFlagsBits = v16;
  retstr->activeHandle._object = v36;
  retstr->formattedHandle.value._countAndFlagsBits = v37;
  retstr->formattedHandle.value._object = object;
  retstr->isBlocked = v34;
  retstr->isKnownContact = v27;
  retstr->isAddedToContacts = v27;
  retstr->isMarkedAsKnown = v31;
  retstr->carrierLabel.value._countAndFlagsBits = 0;
  retstr->carrierLabel.value._object = 0;
  retstr->contactFormatter.super.super.isa = v15;
}

void __swiftcall CommunicationDetailsContact.init(contact:carrierLabel:)(CommunicationDetails::CommunicationDetailsContact *__return_ptr retstr, CNContact contact, Swift::String_optional carrierLabel)
{
  object = carrierLabel.value._object;
  countAndFlagsBits = carrierLabel.value._countAndFlagsBits;
  v7 = [objc_allocWithZone(MEMORY[0x1E695CD80]) init];
  [v7 setStyle_];
  [v7 setFallbackStyle_];
  v8 = [v7 stringFromContact_];
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v12 = 0xE700000000000000;
    v10 = 0x6E776F6E6B6E75;
  }

  v13 = [(objc_class *)contact.super.isa identifier];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  MEMORY[0x193AEA970](45, 0xE100000000000000);
  MEMORY[0x193AEA970](v10, v12);

  MEMORY[0x193AEA970](45, 0xE100000000000000);
  MEMORY[0x193AEA970](0x65736C6166, 0xE500000000000000);
  MEMORY[0x193AEA970](45, 0xE100000000000000);
  MEMORY[0x193AEA970](1702195828, 0xE400000000000000);
  LOBYTE(v13) = [(objc_class *)contact.super.isa isCoreRecentsAccepted];

  retstr->id._countAndFlagsBits = v14;
  retstr->id._object = v16;
  retstr->contact = contact;
  retstr->displayName._countAndFlagsBits = v10;
  retstr->displayName._object = v12;
  retstr->activeHandle._countAndFlagsBits = 0;
  retstr->formattedHandle.value._countAndFlagsBits = 0;
  retstr->formattedHandle.value._object = 0;
  retstr->activeHandle._object = 0xE000000000000000;
  retstr->isBlocked = 0;
  *&retstr->isKnownContact = 257;
  retstr->isMarkedAsKnown = v13;
  retstr->carrierLabel.value._object = object;
  retstr->contactFormatter.super.super.isa = v7;
  retstr->carrierLabel.value._countAndFlagsBits = countAndFlagsBits;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CommunicationDetailsContact@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Array<A>.communicationType()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  if (*(a1 + 16) == 1)
  {
    v4 = *(a1 + 48);
    v14 = *(a1 + 32);
    v15 = v4;
    v5 = *(a1 + 112);
    v18 = *(a1 + 96);
    v19 = v5;
    v20 = *(a1 + 128);
    v6 = v20;
    v7 = *(a1 + 80);
    v16 = *(a1 + 64);
    v17 = v7;
    v8 = v16;
    *(a2 + 16) = v15;
    *(a2 + 32) = v8;
    v9 = *(&v14 + 1);
    v2 = v14;
    v10 = v18;
    v11 = DWORD2(v18) & 0x1010101;
    *(a2 + 48) = v7;
    *(a2 + 64) = v10;
    *(a2 + 80) = v19;
    *(a2 + 96) = v6;
    result = outlined init with copy of CommunicationDetailsContact(&v14, v13);
  }

  else
  {

    v9 = 0;
    v11 = 0x8000000000000000;
  }

  *a2 = v2;
  *(a2 + 8) = v9;
  *(a2 + 72) = v11;
  return result;
}

uint64_t specialized static CommunicationDetailsContact.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v26 = *(a1 + 48);
  v13 = *(a1 + 56);
  v25 = *(a1 + 64);
  v23 = *(a1 + 72);
  v21 = *(a1 + 73);
  v19 = *(a1 + 74);
  v17 = *(a1 + 75);
  v15 = *(a1 + 88);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v6 = *(a2 + 40);
  v8 = *(a2 + 48);
  v11 = *(a1 + 80);
  v12 = *(a2 + 56);
  v24 = *(a2 + 64);
  v22 = *(a2 + 72);
  v20 = *(a2 + 73);
  v18 = *(a2 + 74);
  v16 = *(a2 + 75);
  v10 = *(a2 + 80);
  v14 = *(a2 + 88);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for NSObject();
  if ((static NSObject.== infix(_:_:)() & 1) == 0 || (v2 != v5 || v3 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((v4 != v6 || v26 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (!v25)
  {
    if (v24)
    {
      return 0;
    }

LABEL_20:
    if ((v23 ^ v22))
    {
      return 0;
    }

    goto LABEL_21;
  }

  if (!v24)
  {
    return 0;
  }

  if (v13 != v12 || v25 != v24)
  {
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_20;
  }

  if (v23 != v22)
  {
    return 0;
  }

LABEL_21:
  if ((v21 ^ v20) & 1) != 0 || ((v19 ^ v18) & 1) != 0 || ((v17 ^ v16))
  {
    return 0;
  }

  if (v15)
  {
    if (!v14 || (v11 != v10 || v15 != v14) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    return static NSObject.== infix(_:_:)() & 1;
  }

  if (!v14)
  {
    return static NSObject.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for CommunicationDetailsContact(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CommunicationDetailsContact(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

id CommunicationDetailsNotification.name.getter()
{
  if (*(v0 + 8))
  {
    if (one-time initialization token for groupIdentityChanged != -1)
    {
      swift_once();
    }

    v1 = &static NSNotificationName.groupIdentityChanged;
  }

  else
  {
    if (one-time initialization token for contactsChanged != -1)
    {
      swift_once();
    }

    v1 = &static NSNotificationName.contactsChanged;
  }

  v2 = *v1;

  return v2;
}

id NotificationInfo.name.getter(char a1)
{
  if (a1)
  {
    if (one-time initialization token for groupIdentityChanged != -1)
    {
      swift_once();
    }

    v1 = &static NSNotificationName.groupIdentityChanged;
  }

  else
  {
    if (one-time initialization token for contactsChanged != -1)
    {
      swift_once();
    }

    v1 = &static NSNotificationName.contactsChanged;
  }

  v2 = *v1;

  return v2;
}

uint64_t CommunicationDetailsNotification.userInfoKey.getter()
{
  if (*(v0 + 8))
  {
    return 0x65644970756F7267;
  }

  else
  {
    return 0x73746361746E6F63;
  }
}

uint64_t NotificationInfo.userInfoKey.getter(char a1)
{
  if (a1)
  {
    return 0x65644970756F7267;
  }

  else
  {
    return 0x73746361746E6F63;
  }
}

uint64_t NSNotificationCenter.post(communicationDetailsNotification:)(uint64_t a1)
{
  swift_getObjectType();
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  if (a1)
  {
    *(&v21 + 1) = type metadata accessor for CNGroupIdentity();
    *&v20 = v6;
    outlined init with take of Any(&v20, v19);
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = v7;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, 0x65644970756F7267, 0xED0000797469746ELL, isUniquelyReferenced_nonNull_native);
    v10 = v18;
    if (one-time initialization token for groupIdentityChanged != -1)
    {
      swift_once();
    }

    v11 = &static NSNotificationName.groupIdentityChanged;
  }

  else
  {
    *(&v21 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay20CommunicationDetails0aB7ContactVGMd);
    *&v20 = v6;
    outlined init with take of Any(&v20, v19);

    v12 = swift_isUniquelyReferenced_nonNull_native();
    v18 = v7;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, 0x73746361746E6F63, 0xE800000000000000, v12);
    v10 = v18;
    if (one-time initialization token for contactsChanged != -1)
    {
      swift_once();
    }

    v11 = &static NSNotificationName.contactsChanged;
  }

  v13 = *v11;
  v20 = 0u;
  v21 = 0u;
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v10);

  Notification.init(name:object:userInfo:)();
  v14 = [swift_getObjCClassFromMetadata() defaultCenter];
  isa = Notification._bridgeToObjectiveC()().super.isa;
  [v14 postNotification_];

  return (*(v3 + 8))(v5, v2);
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    outlined init with copy of Any(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    outlined init with take of Any(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    outlined init with take of Any(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    outlined init with take of Any(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(*(v2 + 40));
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = outlined init with take of Any(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t *NSNotificationName.contactsChanged.unsafeMutableAddressor()
{
  if (one-time initialization token for contactsChanged != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.contactsChanged;
}

uint64_t *NSNotificationName.groupIdentityChanged.unsafeMutableAddressor()
{
  if (one-time initialization token for groupIdentityChanged != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.groupIdentityChanged;
}

Swift::Int NotificationInfo.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NotificationInfo()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NotificationInfo()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v1);
  return Hasher._finalize()();
}

uint64_t one-time initialization function for contactsChanged()
{
  result = MEMORY[0x193AEA8E0](0x73746361746E6F63, 0xEF6465676E616843);
  static NSNotificationName.contactsChanged = result;
  return result;
}

uint64_t one-time initialization function for groupIdentityChanged()
{
  result = MEMORY[0x193AEA8E0](0xD000000000000014, 0x80000001901FDB40);
  static NSNotificationName.groupIdentityChanged = result;
  return result;
}

id static NSNotificationName.contactsChanged.getter(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t Notification.parse<A>(for:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = Notification.userInfo.getter();
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v6;
  v8 = 0x73746361746E6F63;
  if (a1)
  {
    v8 = 0x65644970756F7267;
  }

  v9 = 0xE800000000000000;
  if (a1)
  {
    v9 = 0xED0000797469746ELL;
  }

  *&v15[0] = v8;
  *(&v15[0] + 1) = v9;
  AnyHashable.init<A>(_:)();
  if (!*(v7 + 16) || (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v14), (v11 & 1) == 0))
  {

    outlined destroy of AnyHashable(v14);
LABEL_10:
    memset(v15, 0, sizeof(v15));
    goto LABEL_11;
  }

  outlined init with copy of Any(*(v7 + 56) + 32 * v10, v15);
  outlined destroy of AnyHashable(v14);

LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  v12 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v12 ^ 1u, 1, a2);
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return outlined init with take of Any(a1, v22);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NotificationInfo and conformance NotificationInfo()
{
  result = lazy protocol witness table cache variable for type NotificationInfo and conformance NotificationInfo;
  if (!lazy protocol witness table cache variable for type NotificationInfo and conformance NotificationInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NotificationInfo and conformance NotificationInfo);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CommunicationDetailsNotification(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CommunicationDetailsNotification(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for NotificationInfo(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NotificationInfo(uint64_t result, unsigned int a2, unsigned int a3)
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

Swift::String __swiftcall LocalizedString(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (one-time initialization token for bundle != -1)
  {
    swift_once();
  }

  if (static bundle in StaticBundle #1 in LocalizedString(_:))
  {
    v3 = static bundle in StaticBundle #1 in LocalizedString(_:);
    v11._object = 0xE000000000000000;
    v4.value._object = 0x80000001901FC8A0;
    v5._countAndFlagsBits = countAndFlagsBits;
    v5._object = object;
    v4.value._countAndFlagsBits = 0xD000000000000014;
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    v11._countAndFlagsBits = 0;
    v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v4, v3, v6, v11);
    countAndFlagsBits = v7._countAndFlagsBits;
    object = v7._object;
  }

  else
  {
  }

  v8 = countAndFlagsBits;
  v9 = object;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

uint64_t LocalizedString(format:_:)(uint64_t a1, void *a2)
{
  if (one-time initialization token for bundle != -1)
  {
    swift_once();
  }

  if (static bundle in StaticBundle #1 in LocalizedString(_:))
  {
    v4 = static bundle in StaticBundle #1 in LocalizedString(_:);
    v10._object = 0xE000000000000000;
    v5.value._object = 0x80000001901FC8A0;
    v6._countAndFlagsBits = a1;
    v6._object = a2;
    v5.value._countAndFlagsBits = 0xD000000000000014;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    v10._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v10);
  }

  else
  {
  }

  v8 = static String.localizedStringWithFormat(_:_:)();

  return v8;
}

void one-time initialization function for bundle()
{
  v0 = MEMORY[0x193AEA8E0](0xD00000000000001ELL, 0x80000001901FDB60);
  v1 = [objc_opt_self() bundleWithIdentifier_];

  static bundle in StaticBundle #1 in LocalizedString(_:) = v1;
}

id PhotosGridViewControllerAvatarDecorationDataSource.__allocating_init(contactResolver:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  outlined init with copy of SyndicatedAssetContactResolving(a1, v3 + OBJC_IVAR____TtC20CommunicationDetails50PhotosGridViewControllerAvatarDecorationDataSource_contactResolver);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v4;
}

id PhotosGridViewControllerAvatarDecorationDataSource.init(contactResolver:)(uint64_t a1)
{
  outlined init with copy of SyndicatedAssetContactResolving(a1, v1 + OBJC_IVAR____TtC20CommunicationDetails50PhotosGridViewControllerAvatarDecorationDataSource_contactResolver);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PhotosGridViewControllerAvatarDecorationDataSource();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t outlined init with copy of SyndicatedAssetContactResolving(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

id PhotosGridViewControllerAvatarDecorationDataSource.userData(for:)()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    swift_unknownObjectRetain();
    [v2 fetchPropertySetsIfNeeded];
    result = [v2 curationProperties];
    if (result)
    {
      v4 = result;
      v5 = [result syndicationIdentifier];

      if (v5 && (v6 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v8 = v7, v5, outlined init with copy of SyndicatedAssetContactResolving(v0 + OBJC_IVAR____TtC20CommunicationDetails50PhotosGridViewControllerAvatarDecorationDataSource_contactResolver, v19), v9 = v20, v10 = v21, __swift_project_boxed_opaque_existential_1Tm(v19, v20), v11 = (*(v10 + 8))(v6, v8, v9, v10), , __swift_destroy_boxed_opaque_existential_1Tm(v19), v11))
      {
        v12 = type metadata accessor for AvatarViewUserData();
        v13 = objc_allocWithZone(v12);
        *&v13[OBJC_IVAR____TtC20CommunicationDetails18AvatarViewUserData_contact] = v11;
        v18.receiver = v13;
        v18.super_class = v12;
        v14 = v11;
        v15 = objc_msgSendSuper2(&v18, sel_init);

        swift_unknownObjectRelease();
        return v15;
      }

      else
      {
        if (one-time initialization token for empty != -1)
        {
          swift_once();
        }

        v16 = static AvatarViewUserData.empty;
        swift_unknownObjectRelease();
        return v16;
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (one-time initialization token for empty != -1)
    {
      swift_once();
    }

    v17 = static AvatarViewUserData.empty;

    return v17;
  }

  return result;
}

uint64_t *AvatarViewUserData.empty.unsafeMutableAddressor()
{
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  return &static AvatarViewUserData.empty;
}

id AvatarViewUserData.__allocating_init(contact:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC20CommunicationDetails18AvatarViewUserData_contact] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id PhotosGridViewControllerAvatarDecorationDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *AvatarViewUserData.contact.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC20CommunicationDetails18AvatarViewUserData_contact);
  v2 = v1;
  return v1;
}

id AvatarViewUserData.init(contact:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC20CommunicationDetails18AvatarViewUserData_contact] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AvatarViewUserData();
  return objc_msgSendSuper2(&v3, sel_init);
}

void AvatarViewUserData.copy(with:)(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC20CommunicationDetails18AvatarViewUserData_contact);
  v4 = type metadata accessor for AvatarViewUserData();
  v5 = objc_allocWithZone(v4);
  if (v3)
  {
    *&v5[OBJC_IVAR____TtC20CommunicationDetails18AvatarViewUserData_contact] = v3;
    v8.receiver = v5;
    v8.super_class = v4;
    v6 = v3;
    v7 = objc_msgSendSuper2(&v8, sel_init);
  }

  else
  {
    v7 = [v5 init];
  }

  a1[3] = v4;
  *a1 = v7;
}

id one-time initialization function for empty()
{
  result = [objc_allocWithZone(type metadata accessor for AvatarViewUserData()) init];
  static AvatarViewUserData.empty = result;
  return result;
}

id static AvatarViewUserData.empty.getter()
{
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v1 = static AvatarViewUserData.empty;

  return v1;
}

id PhotosGridViewControllerAvatarDecorationDataSource.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t a1)
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

id QuickActionView.Button.__allocating_init(type:)(char a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR____TtCC20CommunicationDetails15QuickActionView6Button_type] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

id QuickActionView.Button.init(type:)(char a1)
{
  v1[OBJC_IVAR____TtCC20CommunicationDetails15QuickActionView6Button_type] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for QuickActionView.Button();
  return objc_msgSendSuper2(&v3, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

uint64_t key path getter for QuickActionView.enabled : QuickActionView@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x68))();
  *a2 = result & 1;
  return result;
}

id (*QuickActionView.enabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20CommunicationDetails15QuickActionView_button);
  *a1 = v3;
  *(a1 + 8) = [v3 isEnabled];
  return QuickActionView.enabled.modify;
}

uint64_t QuickActionView.title.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC20CommunicationDetails15QuickActionView_title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t QuickActionView.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20CommunicationDetails15QuickActionView_title);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t key path getter for QuickActionView.title : QuickActionView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x80))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for QuickActionView.title : QuickActionView(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x88);

  return v4(v2, v3);
}

id QuickActionView.__allocating_init(type:styleGuide:)(char a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC20CommunicationDetails15QuickActionView_title];
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v5[OBJC_IVAR____TtC20CommunicationDetails15QuickActionView_type] = a1;
  v7 = type metadata accessor for QuickActionView.Button();
  v8 = objc_allocWithZone(v7);
  v8[OBJC_IVAR____TtCC20CommunicationDetails15QuickActionView6Button_type] = a1;
  v12.receiver = v8;
  v12.super_class = v7;
  *&v5[OBJC_IVAR____TtC20CommunicationDetails15QuickActionView_button] = objc_msgSendSuper2(&v12, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  QuickActionView.setupView(using:)();

  outlined destroy of Header.StyleGuide(a2, type metadata accessor for Header.StyleGuide);
  return v9;
}

id QuickActionView.init(type:styleGuide:)(char a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC20CommunicationDetails15QuickActionView_title];
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v2[OBJC_IVAR____TtC20CommunicationDetails15QuickActionView_type] = a1;
  v6 = type metadata accessor for QuickActionView.Button();
  v7 = objc_allocWithZone(v6);
  v7[OBJC_IVAR____TtCC20CommunicationDetails15QuickActionView6Button_type] = a1;
  v11.receiver = v7;
  v11.super_class = v6;
  *&v2[OBJC_IVAR____TtC20CommunicationDetails15QuickActionView_button] = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v10.receiver = v2;
  v10.super_class = type metadata accessor for QuickActionView();
  v8 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  QuickActionView.setupView(using:)();

  outlined destroy of Header.StyleGuide(a2, type metadata accessor for Header.StyleGuide);
  return v8;
}

id QuickActionView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void QuickActionView.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC20CommunicationDetails15QuickActionView_title);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void QuickActionView.setupView(using:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - v3;
  v5 = *&v0[OBJC_IVAR____TtC20CommunicationDetails15QuickActionView_button];
  Header.StyleGuide.buttonConfiguration(for:)(v0[OBJC_IVAR____TtC20CommunicationDetails15QuickActionView_type], &v22 - v3);
  v6 = type metadata accessor for UIButton.Configuration();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  UIButton.configuration.setter();
  [v0 addSubview_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1901E5DD0;
  v9 = [v5 leadingAnchor];
  v10 = [v1 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v8 + 32) = v11;
  v12 = [v5 trailingAnchor];
  v13 = [v1 trailingAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v8 + 40) = v14;
  v15 = [v5 topAnchor];
  v16 = [v1 topAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v8 + 48) = v17;
  v18 = [v5 bottomAnchor];
  v19 = [v1 bottomAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v8 + 56) = v20;
  type metadata accessor for UIColor(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 activateConstraints_];
}

uint64_t Header.StyleGuide.buttonConfiguration(for:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  LODWORD(v60) = a1;
  v5 = type metadata accessor for QuickActionButtonBackgroundView();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v56 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8MaterialVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v64 = &v53 - v8;
  v9 = type metadata accessor for Material();
  v65 = *(v9 - 8);
  v66 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit31UIConfigurationColorTransformerVSgMd);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v55 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v61 = &v53 - v14;
  v15 = type metadata accessor for UIConfigurationColorTransformer();
  v62 = *(v15 - 8);
  v63 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v54 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for UIButton.Configuration.Size();
  v17 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v20 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails12BlendedColorVSgMd);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v53 - v24;
  v26 = type metadata accessor for Header.StyleGuide();
  _s20CommunicationDetails12BlendedColorVSgWOcTm_0(v3 + v26[24], v25, &_s20CommunicationDetails12BlendedColorVSgMd);
  v27 = type metadata accessor for BlendedColor();
  if ((*(*(v27 - 8) + 48))(v25, 1, v27) == 1)
  {
    outlined destroy of BlendedColor?(v25, &_s20CommunicationDetails12BlendedColorVSgMd);
    v28 = 0;
  }

  else
  {

    outlined destroy of Header.StyleGuide(v25, type metadata accessor for BlendedColor);
    type metadata accessor for UIColor(0, &lazy cache variable for type metadata for UIColor);
    v28 = UIColor.init(_:)();
    v29 = v28;
  }

  v30 = v26[23];
  v31 = type metadata accessor for UIButton.Configuration();
  (*(*(v31 - 8) + 16))(a2, v3 + v30, v31);
  v32 = QuickActionView.ButtonType.imageName.getter(v60);
  v33 = MEMORY[0x193AEA8E0](v32);

  v34 = [objc_opt_self() systemImageNamed_];

  UIButton.Configuration.image.setter();
  (*(v20 + 16))(v22, v3 + v26[26], v58);
  UIButton.Configuration.cornerStyle.setter();
  (*(v17 + 16))(v19, v3 + v26[28], v59);
  UIButton.Configuration.buttonSize.setter();
  v60 = v28;
  UIButton.Configuration.baseBackgroundColor.setter();
  v35 = *(v3 + v26[25]);
  UIButton.Configuration.baseForegroundColor.setter();
  UIButton.Configuration.contentInsets.setter();
  v36 = v61;
  _s20CommunicationDetails12BlendedColorVSgWOcTm_0(v3 + v26[35], v61, &_s5UIKit31UIConfigurationColorTransformerVSgMd);
  v38 = v62;
  v37 = v63;
  if ((*(v62 + 48))(v36, 1, v63) == 1)
  {
    outlined destroy of BlendedColor?(v36, &_s5UIKit31UIConfigurationColorTransformerVSgMd);
  }

  else
  {
    v39 = v54;
    (*(v38 + 32))(v54, v36, v37);
    v40 = v55;
    (*(v38 + 16))(v55, v39, v37);
    (*(v38 + 56))(v40, 0, 1, v37);
    v41 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.backgroundColorTransformer.setter();
    v41(v67, 0);
    (*(v38 + 8))(v39, v37);
  }

  v42 = v66;
  v43 = v64;
  _s20CommunicationDetails12BlendedColorVSgWOcTm_0(v3 + v26[34], v64, &_s7SwiftUI8MaterialVSgMd);
  v44 = v65;
  v45 = (*(v65 + 48))(v43, 1, v42);
  v46 = v60;
  if (v45 == 1)
  {

    return outlined destroy of BlendedColor?(v43, &_s7SwiftUI8MaterialVSgMd);
  }

  else
  {
    v48 = v57;
    (*(v44 + 32))(v57, v43, v42);
    (*(v44 + 16))(v56, v48, v42);
    v49 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14_UIHostingViewCy20CommunicationDetails027QuickActionButtonBackgroundD0VGMd));
    v50 = _UIHostingView.init(rootView:)();
    v51 = [objc_opt_self() clearColor];
    [v50 setBackgroundColor_];

    [v50 setTranslatesAutoresizingMaskIntoConstraints_];
    v52 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.customView.setter();
    v52(v67, 0);

    return (*(v44 + 8))(v48, v42);
  }
}

uint64_t type metadata accessor for QuickActionButtonBackgroundView()
{
  result = type metadata singleton initialization cache for QuickActionButtonBackgroundView;
  if (!type metadata singleton initialization cache for QuickActionButtonBackgroundView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s20CommunicationDetails12BlendedColorVSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of BlendedColor?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id QuickActionView.Button.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

uint64_t @objc QuickActionView.Button.init(frame:)()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

id QuickActionView.Button.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t QuickActionButtonBackgroundView.init(material:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Material();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t outlined destroy of Header.StyleGuide(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t QuickActionButtonBackgroundView.material.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Material();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t QuickActionButtonBackgroundView.material.setter(uint64_t a1)
{
  v3 = type metadata accessor for Material();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t QuickActionButtonBackgroundView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Material();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA9RectangleVAA8MaterialVGMd);
  *(a1 + *(result + 56)) = 256;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance QuickActionButtonBackgroundView@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Material();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA9RectangleVAA8MaterialVGMd);
  *(a1 + *(result + 56)) = 256;
  return result;
}

uint64_t type metadata completion function for QuickActionButtonBackgroundView()
{
  result = type metadata accessor for Material();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ShapeView<Rectangle, Material> and conformance _ShapeView<A, B>()
{
  result = lazy protocol witness table cache variable for type _ShapeView<Rectangle, Material> and conformance _ShapeView<A, B>;
  if (!lazy protocol witness table cache variable for type _ShapeView<Rectangle, Material> and conformance _ShapeView<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI10_ShapeViewVyAA9RectangleVAA8MaterialVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeView<Rectangle, Material> and conformance _ShapeView<A, B>);
  }

  return result;
}

uint64_t type metadata accessor for UIColor(uint64_t a1, unint64_t *a2)
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

uint64_t EditAction.InfoEditMode.hash(into:)()
{
  if (!*v0)
  {
    v1 = 1;
    return MEMORY[0x193AEB260](v1);
  }

  if (*v0 == 1)
  {
    v1 = 2;
    return MEMORY[0x193AEB260](v1);
  }

  MEMORY[0x193AEB260](0);
  return NSObject.hash(into:)();
}

Swift::Int EditAction.InfoEditMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x193AEB260](0);
      NSObject.hash(into:)();
      return Hasher._finalize()();
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x193AEB260](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance EditAction.InfoEditMode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x193AEB260](0);
      NSObject.hash(into:)();
      return Hasher._finalize()();
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x193AEB260](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance EditAction.InfoEditMode()
{
  if (!*v0)
  {
    v1 = 1;
    return MEMORY[0x193AEB260](v1);
  }

  if (*v0 == 1)
  {
    v1 = 2;
    return MEMORY[0x193AEB260](v1);
  }

  MEMORY[0x193AEB260](0);
  return NSObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EditAction.InfoEditMode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x193AEB260](0);
      NSObject.hash(into:)();
      return Hasher._finalize()();
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x193AEB260](v2);
  return Hasher._finalize()();
}

uint64_t EditAction.title.getter()
{
  if (*(v0 + 48) > 1u)
  {
    if (*(v0 + 48) == 2)
    {
      v8 = *(v0 + 16);

      return v8;
    }

    v11 = 0x80000001901FDE30;
    v10 = 0xD000000000000010;
    return LocalizedString(_:)(*&v10)._countAndFlagsBits;
  }

  if (*(v0 + 48))
  {
    if (*v0 == 1)
    {
      v9 = "EDIT_BACKGROUNDS";
      v10 = 0xD000000000000013;
    }

    else
    {
      v9 = "EDIT_NAME_AND_PHOTO";
      v10 = 0xD000000000000011;
    }

    v11 = v9 | 0x8000000000000000;
    return LocalizedString(_:)(*&v10)._countAndFlagsBits;
  }

  (*(**(v0 + 16) + 96))();
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 48))(ObjectType, v2);
  v6 = v5;
  swift_unknownObjectRelease();
  if (v6)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t EditAction.imageName.getter()
{
  if (*(v0 + 48) > 1u)
  {
    if (*(v0 + 48) == 2)
    {
      result = *(v0 + 40);
      if (result)
      {
        v2 = *(v0 + 32);

        return v2;
      }
    }

    else
    {
      return 0xD00000000000001FLL;
    }
  }

  else if (*(v0 + 48))
  {
    return 0x6C69636E6570;
  }

  else
  {
    return 0xD000000000000010;
  }

  return result;
}

uint64_t EditAction.execute(with:)(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  if (*(v2 + 48) > 1u)
  {
    if (*(v2 + 48) == 2 && result != 0)
    {
      v7 = v2[1];
      ObjectType = swift_getObjectType();
      return (*(a2 + 32))(v3, v7, ObjectType, a2);
    }
  }

  else if (*(v2 + 48))
  {
    if (v3 == 1)
    {
      if (result)
      {
        v11 = swift_getObjectType();
        return (*(a2 + 16))(v11, a2);
      }
    }

    else if (result)
    {
      v13 = swift_getObjectType();
      return (*(a2 + 8))(v13, a2);
    }
  }

  else if (result)
  {
    v5 = swift_getObjectType();
    return (*(a2 + 24))(v5, a2);
  }

  return result;
}

void EditAction.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 48) > 1u)
  {
    if (*(v0 + 48) != 2)
    {
      goto LABEL_11;
    }

    v2 = v0[5];
    MEMORY[0x193AEB260](3);
    String.hash(into:)();
    String.hash(into:)();
    if (v2)
    {
      Hasher._combine(_:)(1u);

      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }

  else
  {
    if (!*(v0 + 48))
    {
      MEMORY[0x193AEB260](0);
      lazy protocol witness table accessor for type DetailsTab and conformance DetailsTab();
      dispatch thunk of Hashable.hash(into:)();
      return;
    }

    MEMORY[0x193AEB260](1);
    if (!v1)
    {
      v3 = 1;
      goto LABEL_12;
    }

    if (v1 == 1)
    {
LABEL_11:
      v3 = 2;
LABEL_12:
      MEMORY[0x193AEB260](v3);
      return;
    }

    MEMORY[0x193AEB260](0);
    NSObject.hash(into:)();
  }
}

Swift::Int EditAction.hashValue.getter()
{
  Hasher.init(_seed:)();
  EditAction.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance EditAction()
{
  Hasher.init(_seed:)();
  EditAction.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EditAction()
{
  Hasher.init(_seed:)();
  EditAction.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static EditAction.InfoEditMode.== infix(_:_:)(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    if (!v3)
    {
      v2 = 0;
      v4 = 1;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v2 != 1)
  {
    if (v3 >= 2)
    {
      type metadata accessor for NSObject();
      outlined copy of EditAction.InfoEditMode(v3);
      outlined copy of EditAction.InfoEditMode(v2);
      v4 = static NSObject.== infix(_:_:)();
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v3 != 1)
  {
LABEL_8:
    outlined copy of EditAction.InfoEditMode(*a2);
    outlined copy of EditAction.InfoEditMode(v2);
    v4 = 0;
    goto LABEL_10;
  }

  v2 = 1;
  v4 = 1;
LABEL_10:
  outlined consume of EditAction.InfoEditMode(v2);
  outlined consume of EditAction.InfoEditMode(v3);
  return v4 & 1;
}

uint64_t specialized static EditAction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v12 = *a2;
  v11 = *(a2 + 8);
  v14 = *(a2 + 16);
  v13 = *(a2 + 24);
  v16 = *(a2 + 32);
  v15 = *(a2 + 40);
  v17 = *(a2 + 48);
  v93[0] = v4;
  v93[1] = v5;
  v93[2] = v6;
  v93[3] = v7;
  v93[4] = v8;
  v93[5] = v9;
  v94 = v10;
  v95 = v12;
  v96 = v11;
  v97 = v14;
  v98 = v13;
  v99 = v16;
  v100 = v15;
  v101 = v17;
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      if (v17 != 2)
      {
        goto LABEL_25;
      }

      if ((v4 != v12 || v5 != v11) && (v27 = v4, v28 = v5, v89 = v6, v76 = v7, v29 = v8, v30 = v9, v31 = _stringCompareWithSmolCheck(_:_:expecting:)(), v5 = v28, v6 = v89, v7 = v76, v8 = v29, v9 = v30, v32 = v31, v4 = v27, (v32 & 1) == 0) || (v6 != v14 || v7 != v13) && (v82 = v5, v85 = v4, v33 = v6, v34 = v7, v35 = v8, v36 = v9, v37 = _stringCompareWithSmolCheck(_:_:expecting:)(), v6 = v33, v7 = v34, v8 = v35, v9 = v36, v38 = v37, v5 = v82, v4 = v85, (v38 & 1) == 0))
      {
        outlined copy of EditAction(v4, v5, v6, v7, v8, v9, 2);
        v48 = v12;
        v49 = v11;
        v50 = v14;
        v51 = v13;
        v52 = v16;
        v53 = v15;
        v54 = 2;
        goto LABEL_26;
      }

      if (v9)
      {
        if (!v15)
        {
          outlined copy of EditAction(v4, v5, v6, v7, v8, v9, 2);
          v48 = v12;
          v49 = v11;
          v50 = v14;
          v51 = v13;
          v52 = v16;
          v53 = 0;
          v54 = 2;
          goto LABEL_26;
        }

        if (v8 == v16 && v9 == v15)
        {
          v39 = v8;
          v40 = v9;
          outlined copy of EditAction(v4, v5, v6, v7, v8, v9, 2);
          outlined copy of EditAction(v12, v11, v14, v13, v39, v40, 2);
          goto LABEL_29;
        }

        v65 = v4;
        v66 = v5;
        v67 = v6;
        v68 = v7;
        v73 = v8;
        v80 = v9;
        v69 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined copy of EditAction(v65, v66, v67, v68, v73, v80, 2);
        outlined copy of EditAction(v12, v11, v14, v13, v16, v15, 2);
        outlined destroy of (EditAction, EditAction)(v93);
        if ((v69 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        outlined copy of EditAction(v4, v5, v6, v7, v8, 0, 2);
        outlined copy of EditAction(v12, v11, v14, v13, v16, v15, 2);

        outlined destroy of (EditAction, EditAction)(v93);
        if (v15)
        {

          goto LABEL_27;
        }
      }

      v26 = 1;
      return v26 & 1;
    }

    if (v17 != 3 || v11 | v12 | v14 | v13 | v16 | v15)
    {
      goto LABEL_25;
    }

LABEL_29:
    outlined destroy of (EditAction, EditAction)(v93);
    v26 = 1;
    return v26 & 1;
  }

  if (v10)
  {
    if (v17 != 1)
    {
      goto LABEL_25;
    }

    if (v4)
    {
      if (v4 == 1)
      {
        if (v12 == 1)
        {
          v26 = 1;
          v41 = v5;
          v83 = v5;
          v42 = v6;
          v43 = v7;
          v70 = v8;
          v44 = v9;
          outlined copy of EditAction(1, v11, v14, v13, v16, v15, 1);
          v45 = v41;
          v46 = v70;
          outlined copy of EditAction(1, v45, v42, v43, v70, v44, 1);
          outlined copy of EditAction(1, v11, v14, v13, v16, v15, 1);
          outlined consume of EditAction.InfoEditMode(1);
          outlined consume of EditAction.InfoEditMode(1);
          outlined destroy of (EditAction, EditAction)(v93);
          outlined consume of EditAction(1, v11, v14, v13, v16, v15, 1);
          v47 = 1;
LABEL_33:
          outlined consume of EditAction(v47, v83, v42, v43, v46, v44, 1);
          return v26 & 1;
        }
      }

      else if (v12 >= 2)
      {
        v84 = v5;
        v87 = v4;
        v77 = v7;
        v79 = v9;
        v62 = v8;
        v72 = v8;
        v63 = v6;
        v64 = v5;
        type metadata accessor for NSObject();
        v26 = 1;
        outlined copy of EditAction(v87, v64, v63, v77, v62, v79, 1);
        outlined copy of EditAction(v12, v11, v14, v13, v16, v15, 1);
        outlined copy of EditAction(v12, v11, v14, v13, v16, v15, 1);
        outlined copy of EditAction(v87, v84, v63, v77, v72, v79, 1);
        outlined copy of EditAction(v87, v84, v63, v77, v72, v79, 1);
        outlined copy of EditAction(v12, v11, v14, v13, v16, v15, 1);
        LOBYTE(v62) = static NSObject.== infix(_:_:)();
        outlined consume of EditAction.InfoEditMode(v87);
        outlined consume of EditAction.InfoEditMode(v12);
        outlined destroy of (EditAction, EditAction)(v93);
        outlined consume of EditAction(v12, v11, v14, v13, v16, v15, 1);
        outlined consume of EditAction(v87, v84, v63, v77, v72, v79, 1);
        if (v62)
        {
          return v26 & 1;
        }

        goto LABEL_27;
      }
    }

    else if (!v12)
    {
      v26 = 1;
      v56 = v5;
      v83 = v5;
      v42 = v6;
      v43 = v7;
      v71 = v8;
      v44 = v9;
      outlined copy of EditAction(0, v11, v14, v13, v16, v15, 1);
      v57 = v56;
      v46 = v71;
      outlined copy of EditAction(0, v57, v42, v43, v71, v44, 1);
      outlined copy of EditAction(0, v11, v14, v13, v16, v15, 1);
      outlined consume of EditAction.InfoEditMode(0);
      outlined consume of EditAction.InfoEditMode(0);
      outlined destroy of (EditAction, EditAction)(v93);
      outlined consume of EditAction(0, v11, v14, v13, v16, v15, 1);
      v47 = 0;
      goto LABEL_33;
    }

    v58 = v4;
    v86 = v4;
    v90 = v6;
    v59 = v5;
    v60 = v7;
    v61 = v8;
    v78 = v9;
    outlined copy of EditAction(v4, v5, v6, v7, v8, v9, 1);
    outlined copy of EditAction(v12, v11, v14, v13, v16, v15, 1);
    outlined copy of EditAction(v12, v11, v14, v13, v16, v15, 1);
    outlined copy of EditAction(v58, v59, v90, v60, v61, v78, 1);
    outlined copy of EditAction(v86, v59, v90, v60, v61, v78, 1);
    outlined copy of EditAction(v12, v11, v14, v13, v16, v15, 1);
    outlined consume of EditAction.InfoEditMode(v86);
    outlined consume of EditAction.InfoEditMode(v12);
    outlined destroy of (EditAction, EditAction)(v93);
    outlined consume of EditAction(v12, v11, v14, v13, v16, v15, 1);
    outlined consume of EditAction(v86, v59, v90, v60, v61, v78, 1);
    goto LABEL_27;
  }

  if (v17)
  {
LABEL_25:
    outlined copy of EditAction(v4, v5, v6, v7, v8, v9, v10);
    v48 = v12;
    v49 = v11;
    v50 = v14;
    v51 = v13;
    v52 = v16;
    v53 = v15;
    v54 = v17;
LABEL_26:
    outlined copy of EditAction(v48, v49, v50, v51, v52, v53, v54);
    outlined destroy of (EditAction, EditAction)(v93);
LABEL_27:
    v26 = 0;
    return v26 & 1;
  }

  v92[0] = v4;
  v92[1] = v5;
  v92[2] = v6;
  v92[3] = v7;
  v92[4] = v8;
  v91[0] = v12;
  v91[1] = v11;
  v91[2] = v14;
  v91[3] = v13;
  v91[4] = v16;
  v18 = v13;
  v74 = v16;
  v75 = v13;
  v19 = v4;
  v20 = v5;
  v81 = v5;
  v21 = v6;
  v88 = v6;
  v22 = v16;
  v23 = v7;
  v24 = v8;
  v25 = v9;
  outlined copy of EditAction(v12, v11, v14, v18, v22, v15, 0);
  outlined copy of EditAction(v19, v20, v21, v23, v24, v25, 0);
  outlined copy of EditAction(v19, v20, v21, v23, v24, v25, 0);
  outlined copy of EditAction(v12, v11, v14, v75, v74, v15, 0);
  v26 = static DetailsTab.== infix(_:_:)(v92, v91);
  outlined destroy of (EditAction, EditAction)(v93);
  outlined consume of EditAction(v12, v11, v14, v75, v74, v15, 0);
  outlined consume of EditAction(v19, v81, v88, v23, v24, v25, 0);
  return v26 & 1;
}

unint64_t lazy protocol witness table accessor for type EditAction.InfoEditMode and conformance EditAction.InfoEditMode()
{
  result = lazy protocol witness table cache variable for type EditAction.InfoEditMode and conformance EditAction.InfoEditMode;
  if (!lazy protocol witness table cache variable for type EditAction.InfoEditMode and conformance EditAction.InfoEditMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EditAction.InfoEditMode and conformance EditAction.InfoEditMode);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20CommunicationDetails10EditActionO04InfoC4ModeO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_20CommunicationDetails10EditActionO(uint64_t a1)
{
  if ((*(a1 + 48) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 48) & 3;
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for EditAction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 49))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 48);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for EditAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for EditAction(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for EditAction.InfoEditMode(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EditAction.InfoEditMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for EditAction.InfoEditMode(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t outlined destroy of (EditAction, EditAction)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails10EditActionO_ACtMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall DetailsViewController.executeQuickAction(for:)(CommunicationDetails::QuickActionType a1)
{
  v2 = *a1;
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x210))())
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    v6 = v2;
    (*(v4 + 24))(v1, &v6, ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

uint64_t DetailsViewController.isCustomQuickActionButtonEnabled(for:)(_BYTE *a1)
{
  *(v2 + 16) = v1;
  *(v2 + 65) = *a1;
  type metadata accessor for MainActor();
  *(v2 + 24) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 32) = v4;
  *(v2 + 40) = v3;

  return MEMORY[0x1EEE6DFA0](DetailsViewController.isCustomQuickActionButtonEnabled(for:), v4, v3);
}

uint64_t DetailsViewController.isCustomQuickActionButtonEnabled(for:)()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0x210))();
  *(v0 + 48) = v1;
  if (v1)
  {
    v3 = v2;
    v4 = *(v0 + 65);
    ObjectType = swift_getObjectType();
    *(v0 + 64) = v4;
    v10 = (*(v3 + 32) + **(v3 + 32));
    v6 = swift_task_alloc();
    *(v0 + 56) = v6;
    *v6 = v0;
    v6[1] = DetailsViewController.isCustomQuickActionButtonEnabled(for:);
    v7 = *(v0 + 16);

    return v10(v7, v0 + 64, ObjectType, v3);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9(0);
  }
}

{

  v1 = *(v0 + 66);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t DetailsViewController.isCustomQuickActionButtonEnabled(for:)(char a1)
{
  v2 = *v1;
  *(*v1 + 66) = a1;

  swift_unknownObjectRelease();
  v3 = *(v2 + 40);
  v4 = *(v2 + 32);

  return MEMORY[0x1EEE6DFA0](DetailsViewController.isCustomQuickActionButtonEnabled(for:), v4, v3);
}

Swift::Bool __swiftcall DetailsViewController.allowsGroupActionHandling(for:)(CommunicationDetails::QuickActionType a1)
{
  v2 = *a1;
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x210))())
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    v8 = v2;
    v6 = (*(v4 + 40))(v1, &v8, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

uint64_t protocol witness for QuickActionsContainerDelegate.executeQuickAction(for:) in conformance DetailsViewController(char *a1)
{
  v2 = *a1;
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x210))();
  if (result)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    v7 = v2;
    (*(v5 + 24))(v1, &v7, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t protocol witness for QuickActionsContainerDelegate.isCustomQuickActionButtonEnabled(for:) in conformance DetailsViewController(_BYTE *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for QuickActionsContainerDelegate.isCustomQuickActionButtonEnabled(for:) in conformance DetailsViewController;

  return DetailsViewController.isCustomQuickActionButtonEnabled(for:)(a1);
}

uint64_t protocol witness for QuickActionsContainerDelegate.isCustomQuickActionButtonEnabled(for:) in conformance DetailsViewController(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t protocol witness for QuickActionsContainerDelegate.allowsGroupActionHandling(for:) in conformance DetailsViewController(char *a1)
{
  v2 = *a1;
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x210))())
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    v8 = v2;
    v6 = (*(v4 + 40))(v1, &v8, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

uint64_t static DetailsTabBuilder.buildOptional(_:)(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  return v1;
}

uint64_t static DetailsTabBuilder.buildExpression(_:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20CommunicationDetails0E3TabVGMd);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1901E6CD0;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  *(v5 + 48) = *(a1 + 1);
  *(v5 + 64) = v4;

  return v5;
}

uint64_t static DetailsTabBuilder.buildBlock(_:)(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = result + 32;
  v3 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 16);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= *(v3 + 24) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v8 = v6 + v5;
      }

      else
      {
        v8 = v6;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v8, 1, v3);
      v3 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v5)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v9 = *(v3 + 16);
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_23;
          }

          *(v3 + 16) = v11;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    v2 += 8;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for DetailsTabBuilder(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DetailsTabBuilder(_WORD *result, int a2, int a3)
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

Swift::Void __swiftcall DetailsViewController.presentEditContactViewController()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**&v0[OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_configuration] + 200))(v23, v4);
  v20 = v23[0];
  if ((*(&v24 + 1) & 0x8000000000000000) != 0)
  {

    v14 = *(&v20 + 1);
  }

  else
  {
    v19 = v24;
    v15 = v23[1];
    v17 = v23[3];
    v18 = v23[2];
    v16 = v25;
    v7 = v26;
    v8 = Logger.detailsViewController.unsafeMutableAddressor();
    (*(v3 + 16))(v6, v8, v2);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_190119000, v9, v10, "Presenting contact editor.", v11, 2u);
      MEMORY[0x193AEBB30](v11, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v21[1] = v15;
    v21[0] = v20;
    v21[2] = v18;
    v21[3] = v17;
    v21[4] = v19;
    v21[5] = v16;
    v22 = v7;
    v12 = static CommunicationDetailsContactCard.contactViewController(for:inEditMode:)(v21, 1);
    [v12 setDelegate_];
    v13 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
    [v1 presentViewController:v13 animated:1 completion:0];

    outlined destroy of DetailsViewController.CommunicationType(v23);
  }
}

Swift::Void __swiftcall DetailsViewController.presentGroupIdentityEditingViewController()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**&v0[OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_configuration] + 200))(v17, v4);
  if ((v17[9] & 0x8000000000000000) != 0)
  {
    v7 = v17[1];

    if (v7)
    {
      v8 = objc_opt_self();
      v9 = v7;
      v10 = [v8 imagePickerForGroupIdentity_];
      [v10 setDelegate_];
      v11 = Logger.detailsViewController.unsafeMutableAddressor();
      (*(v3 + 16))(v6, v11, v2);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_190119000, v12, v13, "Presenting group identity editor.", v14, 2u);
        MEMORY[0x193AEBB30](v14, -1, -1);
      }

      (*(v3 + 8))(v6, v2);
      v15 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
      [v1 presentViewController:v15 animated:1 completion:0];
    }
  }

  else
  {
    outlined destroy of DetailsViewController.CommunicationType(v17);
  }
}

id DetailsViewController.visualIdentityPicker(_:didUpdatePhotoFor:with:)(void *a1, uint64_t a2)
{
  v5 = (*(**(v2 + OBJC_IVAR____TtC20CommunicationDetails21DetailsViewController_configuration) + 248))();
  if (v5)
  {
    v6 = v5;
    v5(a2);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed CNVisualIdentity) -> ())?(v6);
  }

  return [a1 dismissViewControllerAnimated:1 completion:0];
}

id specialized DetailsViewController.contactViewController(_:didCompleteWith:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = Logger.detailsViewController.unsafeMutableAddressor();
  v12 = *(v5 + 16);
  if (!a2)
  {
    v12(v10, v11, v4);
    v13 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v13, v16))
    {
      v7 = v10;
      goto LABEL_8;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_190119000, v13, v16, "Cancelled editing contact. Dismissing edit view controller.", v15, 2u);
    v7 = v10;
    goto LABEL_6;
  }

  v12(v7, v11, v4);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_190119000, v13, v14, "Contact was edited. Dismissing edit view controller.", v15, 2u);
LABEL_6:
    MEMORY[0x193AEBB30](v15, -1, -1);
  }

LABEL_8:

  (*(v5 + 8))(v7, v4);
  return [a1 dismissViewControllerAnimated:1 completion:0];
}

uint64_t key path getter for AnyTabItem.wrapped : AnyTabItem@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for AnyTabItem.wrapped : AnyTabItem(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(**a2 + 104);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t AnyTabItem.wrapped.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return swift_unknownObjectRelease();
}

void *AnyTabItem.__allocating_init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = specialized AnyTabItem.init<A>(_:)(a1, a2, a3);
  swift_unknownObjectRelease();
  return v6;
}

void *AnyTabItem.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized AnyTabItem.init<A>(_:)(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t AnyTabItem.supportsMenu.getter()
{
  (*(*v0 + 96))();
  v2 = v1;
  ObjectType = swift_getObjectType();
  LOBYTE(v2) = TabItem.supportsMenu.getter(ObjectType, v2);
  swift_unknownObjectRelease();
  return v2 & 1;
}

uint64_t AnyTabItem.allowsEditingElements.getter()
{
  (*(*v0 + 96))();
  v2 = v1;
  ObjectType = swift_getObjectType();
  LOBYTE(v2) = (*(v2 + 88))(ObjectType, v2);
  swift_unknownObjectRelease();
  return v2 & 1;
}

uint64_t key path getter for AnyTabItem.isEditingElements : AnyTabItem@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result & 1;
  return result;
}

uint64_t AnyTabItem.isEditingElements.getter()
{
  (*(*v0 + 96))();
  v2 = v1;
  ObjectType = swift_getObjectType();
  LOBYTE(v2) = (*(v2 + 96))(ObjectType, v2);
  swift_unknownObjectRelease();
  return v2 & 1;
}

uint64_t AnyTabItem.isEditingElements.setter(uint64_t a1)
{
  (*(*v1 + 96))();
  v4 = v3;
  ObjectType = swift_getObjectType();
  (*(v4 + 104))(a1, ObjectType, v4);

  return swift_unknownObjectRelease();
}

uint64_t (*AnyTabItem.isEditingElements.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(*v1 + 96);
  v4 = (*v1 + 96) & 0xFFFFFFFFFFFFLL | 0xD52F000000000000;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v3();
  v6 = v5;
  ObjectType = swift_getObjectType();
  LOBYTE(v6) = (*(v6 + 96))(ObjectType, v6);
  swift_unknownObjectRelease();
  *(a1 + 24) = v6 & 1;
  return AnyTabItem.isEditingElements.modify;
}

uint64_t AnyTabItem.isEditingElements.modify(uint64_t a1)
{
  v1 = *(a1 + 24);
  (*(a1 + 8))();
  v3 = v2;
  ObjectType = swift_getObjectType();
  (*(v3 + 104))(v1, ObjectType, v3);

  return swift_unknownObjectRelease();
}

uint64_t AnyTabItem.defaultTitle.getter()
{
  (*(*v0 + 96))();
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 40))(ObjectType, v2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t AnyTabItem.wantsPlatterBlur.getter()
{
  (*(*v0 + 96))();
  v2 = v1;
  ObjectType = swift_getObjectType();
  LOBYTE(v2) = (*(v2 + 120))(ObjectType, v2);
  swift_unknownObjectRelease();
  return v2 & 1;
}

uint64_t AnyTabItem.editingToolbarConfiguration(completion:)(uint64_t a1, uint64_t a2)
{
  (*(*v2 + 96))();
  v6 = v5;
  ObjectType = swift_getObjectType();
  (*(v6 + 144))(a1, a2, ObjectType, v6);

  return swift_unknownObjectRelease();
}

uint64_t AnyTabItem.position.getter()
{
  (*(*v0 + 96))();
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 136))(ObjectType, v2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t AnyTabItem.identifier.getter()
{
  (*(*v0 + 96))();
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = TabItem.id.getter(ObjectType, v2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t AnyTabItem.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t AnyTabItem.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

void *specialized AnyTabItem.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v6 = *(a3 + 80);
  swift_unknownObjectRetain();
  v6(a2, a3);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails12TabSubOption_pMd);
  v7 = _arrayForceCast<A, B>(_:)();

  v3[4] = v7;
  return v3;
}

uint64_t ParticipantView.ContextMenuModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE11contextMenu9menuItemsQrqd__yXE_tAaFRd__lFQOyAA01_f9Modifier_D0Vy20CommunicationDetails011ParticipantF0V07ContexthK0VG_AN0oH0VQo_AQ_GMd);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11contextMenu9menuItemsQrqd__yXE_tAaBRd__lFQOyAA01_C16Modifier_ContentVy20CommunicationDetails011ParticipantC0V07ContexteH0VG_AJ0mE0VQo_Md);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v25 - v16;
  if (a4)
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails011ParticipantC0V011ContextMenuD0VGMd);
    (*(*(v18 - 8) + 16))(v12, a1, v18);
    swift_storeEnumTagMultiPayload();
    v19 = lazy protocol witness table accessor for type _ViewModifier_Content<ParticipantView.ContextMenuModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ParticipantView.ContextMenuModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails011ParticipantC0V011ContextMenuD0VGMd);
    v20 = lazy protocol witness table accessor for type ParticipantView.ContextMenu and conformance ParticipantView.ContextMenu();
    v26 = v18;
    v27 = &type metadata for ParticipantView.ContextMenu;
    v28 = v19;
    v29 = v20;
    swift_getOpaqueTypeConformance2();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v25[0] = v25;
    MEMORY[0x1EEE9AC00](v15);
    v25[-4] = a2;
    v25[-3] = a3;
    LOBYTE(v25[-2]) = 0;
    v25[1] = a5;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails011ParticipantC0V011ContextMenuD0VGMd);
    v23 = lazy protocol witness table accessor for type _ViewModifier_Content<ParticipantView.ContextMenuModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ParticipantView.ContextMenuModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails011ParticipantC0V011ContextMenuD0VGMd);
    v24 = lazy protocol witness table accessor for type ParticipantView.ContextMenu and conformance ParticipantView.ContextMenu();
    View.contextMenu<A>(menuItems:)();
    (*(v14 + 16))(v12, v17, v13);
    swift_storeEnumTagMultiPayload();
    v26 = v22;
    v27 = &type metadata for ParticipantView.ContextMenu;
    v28 = v23;
    v29 = v24;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v14 + 8))(v17, v13);
  }
}

unint64_t lazy protocol witness table accessor for type ParticipantView.ContextMenu and conformance ParticipantView.ContextMenu()
{
  result = lazy protocol witness table cache variable for type ParticipantView.ContextMenu and conformance ParticipantView.ContextMenu;
  if (!lazy protocol witness table cache variable for type ParticipantView.ContextMenu and conformance ParticipantView.ContextMenu)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantView.ContextMenu and conformance ParticipantView.ContextMenu);
  }

  return result;
}

uint64_t partial apply for closure #1 in ParticipantView.ContextMenuModifier.menu(for:)@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = v4;

  *a1 = v5;
  a1[1] = v3;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ParticipantView.ContextMenu.MenuSection()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ParticipantView.ContextMenu.MenuSection()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v1);
  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ParticipantView.ContextMenu.MenuSection@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ParticipantView.ContextMenu.MenuSection.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int ParticipantView.ContextMenu.PreviewTarget.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ParticipantView.ContextMenu.PreviewTarget()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ParticipantView.ContextMenu.PreviewTarget()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v1);
  return Hasher._finalize()();
}

uint64_t ParticipantView.ContextMenu.body.getter(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay20CommunicationDetails15ParticipantViewV11ContextMenuV0F7SectionOGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy20CommunicationDetails15ParticipantViewV11ContextMenuV19QuickActionsSectionVAH07ContactM0VGACyAH013ScreenSharingM0VAH011DestructiveM0VGGMd);
  lazy protocol witness table accessor for type _ViewModifier_Content<ParticipantView.ContextMenuModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type [ParticipantView.ContextMenu.MenuSection] and conformance [A], &_sSay20CommunicationDetails15ParticipantViewV11ContextMenuV0F7SectionOGMd);
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ParticipantView.ContextMenu.QuickActionsSection, ParticipantView.ContextMenu.ContactSection>, _ConditionalContent<ParticipantView.ContextMenu.ScreenSharingSection, ParticipantView.ContextMenu.DestructiveSection>> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type ParticipantView.ContextMenu.MenuSection and conformance ParticipantView.ContextMenu.MenuSection();
  return ForEach<>.init(_:content:)();
}

double closure #1 in ParticipantView.ContextMenu.body.getter@<D0>(unsigned __int8 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v7 > 1)
  {
    if (v7 != 2)
    {
      v13 = ParticipantView.ContextMenu.DestructiveSection.init(viewModel:)(a2);
      lazy protocol witness table accessor for type ParticipantView.ContextMenu.ScreenSharingSection and conformance ParticipantView.ContextMenu.ScreenSharingSection();
      lazy protocol witness table accessor for type ParticipantView.ContextMenu.DestructiveSection and conformance ParticipantView.ContextMenu.DestructiveSection();
      v9 = v13;
      _ConditionalContent<>.init(storage:)();
      goto LABEL_11;
    }

    v10 = ParticipantView.ContextMenu.ScreenSharingSection.init(viewModel:)(a2);
    lazy protocol witness table accessor for type ParticipantView.ContextMenu.ScreenSharingSection and conformance ParticipantView.ContextMenu.ScreenSharingSection();
    lazy protocol witness table accessor for type ParticipantView.ContextMenu.DestructiveSection and conformance ParticipantView.ContextMenu.DestructiveSection();
    v11 = v10;

    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    if (!v7)
    {
      v8 = ParticipantView.ContextMenu.QuickActionsSection.init(viewModel:)(a2);
      lazy protocol witness table accessor for type ParticipantView.ContextMenu.QuickActionsSection and conformance ParticipantView.ContextMenu.QuickActionsSection();
      lazy protocol witness table accessor for type ParticipantView.ContextMenu.ContactSection and conformance ParticipantView.ContextMenu.ContactSection();
      v9 = v8;
      _ConditionalContent<>.init(storage:)();
LABEL_11:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy20CommunicationDetails15ParticipantViewV11ContextMenuV19QuickActionsSectionVAH07ContactM0VGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy20CommunicationDetails15ParticipantViewV11ContextMenuV20ScreenSharingSectionVAH011DestructiveM0VGMd);
      lazy protocol witness table accessor for type _ConditionalContent<ParticipantView.ContextMenu.QuickActionsSection, ParticipantView.ContextMenu.ContactSection> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<ParticipantView.ContextMenu.ScreenSharingSection, ParticipantView.ContextMenu.DestructiveSection> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();

      goto LABEL_12;
    }

    v12 = ParticipantView.ContextMenu.ContactSection.init(viewModel:presentationProxy:)(a2, a3);
    lazy protocol witness table accessor for type ParticipantView.ContextMenu.QuickActionsSection and conformance ParticipantView.ContextMenu.QuickActionsSection();
    lazy protocol witness table accessor for type ParticipantView.ContextMenu.ContactSection and conformance ParticipantView.ContextMenu.ContactSection();
    v11 = v12;

    _ConditionalContent<>.init(storage:)();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy20CommunicationDetails15ParticipantViewV11ContextMenuV19QuickActionsSectionVAH07ContactM0VGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy20CommunicationDetails15ParticipantViewV11ContextMenuV20ScreenSharingSectionVAH011DestructiveM0VGMd);
  lazy protocol witness table accessor for type _ConditionalContent<ParticipantView.ContextMenu.QuickActionsSection, ParticipantView.ContextMenu.ContactSection> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type _ConditionalContent<ParticipantView.ContextMenu.ScreenSharingSection, ParticipantView.ContextMenu.DestructiveSection> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();

LABEL_12:
  result = *&v15;
  *a4 = v15;
  *(a4 + 16) = v16;
  *(a4 + 24) = v17;
  *(a4 + 25) = v18;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance ParticipantView.ContextMenu()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay20CommunicationDetails15ParticipantViewV11ContextMenuV0F7SectionOGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy20CommunicationDetails15ParticipantViewV11ContextMenuV19QuickActionsSectionVAH07ContactM0VGACyAH013ScreenSharingM0VAH011DestructiveM0VGGMd);
  lazy protocol witness table accessor for type _ViewModifier_Content<ParticipantView.ContextMenuModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type [ParticipantView.ContextMenu.MenuSection] and conformance [A], &_sSay20CommunicationDetails15ParticipantViewV11ContextMenuV0F7SectionOGMd);
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ParticipantView.ContextMenu.QuickActionsSection, ParticipantView.ContextMenu.ContactSection>, _ConditionalContent<ParticipantView.ContextMenu.ScreenSharingSection, ParticipantView.ContextMenu.DestructiveSection>> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type ParticipantView.ContextMenu.MenuSection and conformance ParticipantView.ContextMenu.MenuSection();
  return ForEach<>.init(_:content:)();
}

unint64_t specialized ParticipantView.ContextMenu.MenuSection.init(rawValue:)(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<ParticipantView.ContextMenuModifier> and conformance _ViewModifier_Content<A>(unint64_t *a1, uint64_t *a2)
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ParticipantView.ContextMenu.QuickActionsSection, ParticipantView.ContextMenu.ContactSection>, _ConditionalContent<ParticipantView.ContextMenu.ScreenSharingSection, ParticipantView.ContextMenu.DestructiveSection>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ParticipantView.ContextMenu.QuickActionsSection, ParticipantView.ContextMenu.ContactSection>, _ConditionalContent<ParticipantView.ContextMenu.ScreenSharingSection, ParticipantView.ContextMenu.DestructiveSection>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ParticipantView.ContextMenu.QuickActionsSection, ParticipantView.ContextMenu.ContactSection>, _ConditionalContent<ParticipantView.ContextMenu.ScreenSharingSection, ParticipantView.ContextMenu.DestructiveSection>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACy20CommunicationDetails15ParticipantViewV11ContextMenuV19QuickActionsSectionVAH07ContactM0VGACyAH013ScreenSharingM0VAH011DestructiveM0VGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ParticipantView.ContextMenu.QuickActionsSection, ParticipantView.ContextMenu.ContactSection> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ParticipantView.ContextMenu.ScreenSharingSection, ParticipantView.ContextMenu.DestructiveSection> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ParticipantView.ContextMenu.QuickActionsSection, ParticipantView.ContextMenu.ContactSection>, _ConditionalContent<ParticipantView.ContextMenu.ScreenSharingSection, ParticipantView.ContextMenu.DestructiveSection>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ParticipantView.ContextMenu.QuickActionsSection, ParticipantView.ContextMenu.ContactSection> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ParticipantView.ContextMenu.QuickActionsSection, ParticipantView.ContextMenu.ContactSection> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ParticipantView.ContextMenu.QuickActionsSection, ParticipantView.ContextMenu.ContactSection> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy20CommunicationDetails15ParticipantViewV11ContextMenuV19QuickActionsSectionVAH07ContactM0VGMd);
    lazy protocol witness table accessor for type ParticipantView.ContextMenu.QuickActionsSection and conformance ParticipantView.ContextMenu.QuickActionsSection();
    lazy protocol witness table accessor for type ParticipantView.ContextMenu.ContactSection and conformance ParticipantView.ContextMenu.ContactSection();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ParticipantView.ContextMenu.QuickActionsSection, ParticipantView.ContextMenu.ContactSection> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticipantView.ContextMenu.QuickActionsSection and conformance ParticipantView.ContextMenu.QuickActionsSection()
{
  result = lazy protocol witness table cache variable for type ParticipantView.ContextMenu.QuickActionsSection and conformance ParticipantView.ContextMenu.QuickActionsSection;
  if (!lazy protocol witness table cache variable for type ParticipantView.ContextMenu.QuickActionsSection and conformance ParticipantView.ContextMenu.QuickActionsSection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantView.ContextMenu.QuickActionsSection and conformance ParticipantView.ContextMenu.QuickActionsSection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticipantView.ContextMenu.ContactSection and conformance ParticipantView.ContextMenu.ContactSection()
{
  result = lazy protocol witness table cache variable for type ParticipantView.ContextMenu.ContactSection and conformance ParticipantView.ContextMenu.ContactSection;
  if (!lazy protocol witness table cache variable for type ParticipantView.ContextMenu.ContactSection and conformance ParticipantView.ContextMenu.ContactSection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantView.ContextMenu.ContactSection and conformance ParticipantView.ContextMenu.ContactSection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ParticipantView.ContextMenu.ScreenSharingSection, ParticipantView.ContextMenu.DestructiveSection> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ParticipantView.ContextMenu.ScreenSharingSection, ParticipantView.ContextMenu.DestructiveSection> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ParticipantView.ContextMenu.ScreenSharingSection, ParticipantView.ContextMenu.DestructiveSection> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy20CommunicationDetails15ParticipantViewV11ContextMenuV20ScreenSharingSectionVAH011DestructiveM0VGMd);
    lazy protocol witness table accessor for type ParticipantView.ContextMenu.ScreenSharingSection and conformance ParticipantView.ContextMenu.ScreenSharingSection();
    lazy protocol witness table accessor for type ParticipantView.ContextMenu.DestructiveSection and conformance ParticipantView.ContextMenu.DestructiveSection();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ParticipantView.ContextMenu.ScreenSharingSection, ParticipantView.ContextMenu.DestructiveSection> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticipantView.ContextMenu.ScreenSharingSection and conformance ParticipantView.ContextMenu.ScreenSharingSection()
{
  result = lazy protocol witness table cache variable for type ParticipantView.ContextMenu.ScreenSharingSection and conformance ParticipantView.ContextMenu.ScreenSharingSection;
  if (!lazy protocol witness table cache variable for type ParticipantView.ContextMenu.ScreenSharingSection and conformance ParticipantView.ContextMenu.ScreenSharingSection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantView.ContextMenu.ScreenSharingSection and conformance ParticipantView.ContextMenu.ScreenSharingSection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticipantView.ContextMenu.DestructiveSection and conformance ParticipantView.ContextMenu.DestructiveSection()
{
  result = lazy protocol witness table cache variable for type ParticipantView.ContextMenu.DestructiveSection and conformance ParticipantView.ContextMenu.DestructiveSection;
  if (!lazy protocol witness table cache variable for type ParticipantView.ContextMenu.DestructiveSection and conformance ParticipantView.ContextMenu.DestructiveSection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantView.ContextMenu.DestructiveSection and conformance ParticipantView.ContextMenu.DestructiveSection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticipantView.ContextMenu.MenuSection and conformance ParticipantView.ContextMenu.MenuSection()
{
  result = lazy protocol witness table cache variable for type ParticipantView.ContextMenu.MenuSection and conformance ParticipantView.ContextMenu.MenuSection;
  if (!lazy protocol witness table cache variable for type ParticipantView.ContextMenu.MenuSection and conformance ParticipantView.ContextMenu.MenuSection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantView.ContextMenu.MenuSection and conformance ParticipantView.ContextMenu.MenuSection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticipantView.ContextMenu.MenuSection and conformance ParticipantView.ContextMenu.MenuSection;
  if (!lazy protocol witness table cache variable for type ParticipantView.ContextMenu.MenuSection and conformance ParticipantView.ContextMenu.MenuSection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantView.ContextMenu.MenuSection and conformance ParticipantView.ContextMenu.MenuSection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticipantView.ContextMenu.PreviewTarget and conformance ParticipantView.ContextMenu.PreviewTarget()
{
  result = lazy protocol witness table cache variable for type ParticipantView.ContextMenu.PreviewTarget and conformance ParticipantView.ContextMenu.PreviewTarget;
  if (!lazy protocol witness table cache variable for type ParticipantView.ContextMenu.PreviewTarget and conformance ParticipantView.ContextMenu.PreviewTarget)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantView.ContextMenu.PreviewTarget and conformance ParticipantView.ContextMenu.PreviewTarget);
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

uint64_t getEnumTagSinglePayload for ParticipantView.ContextMenuModifier(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for ParticipantView.ContextMenuModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ParticipantView.ContextMenu(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ParticipantView.ContextMenu(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ParticipantView.ContextMenu.MenuSection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticipantView.ContextMenu.MenuSection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ParticipantView.ContextMenu.PreviewTarget(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ParticipantView.ContextMenu.PreviewTarget(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.contextMenu<A>(menuItems:)>>.0, _ViewModifier_Content<ParticipantView.ContextMenuModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.contextMenu<A>(menuItems:)>>.0, _ViewModifier_Content<ParticipantView.ContextMenuModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.contextMenu<A>(menuItems:)>>.0, _ViewModifier_Content<ParticipantView.ContextMenuModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11contextMenu9menuItemsQrqd__yXE_tAaDRd__lFQOyAA01_e9Modifier_D0Vy20CommunicationDetails011ParticipantE0V07ContextgJ0VG_AL0nG0VQo_AOGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails011ParticipantC0V011ContextMenuD0VGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<ParticipantView.ContextMenuModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ParticipantView.ContextMenuModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails011ParticipantC0V011ContextMenuD0VGMd);
    lazy protocol witness table accessor for type ParticipantView.ContextMenu and conformance ParticipantView.ContextMenu();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.contextMenu<A>(menuItems:)>>.0, _ViewModifier_Content<ParticipantView.ContextMenuModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<[ParticipantView.ContextMenu.MenuSection], Int, _ConditionalContent<_ConditionalContent<ParticipantView.ContextMenu.QuickActionsSection, ParticipantView.ContextMenu.ContactSection>, _ConditionalContent<ParticipantView.ContextMenu.ScreenSharingSection, ParticipantView.ContextMenu.DestructiveSection>>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[ParticipantView.ContextMenu.MenuSection], Int, _ConditionalContent<_ConditionalContent<ParticipantView.ContextMenu.QuickActionsSection, ParticipantView.ContextMenu.ContactSection>, _ConditionalContent<ParticipantView.ContextMenu.ScreenSharingSection, ParticipantView.ContextMenu.DestructiveSection>>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[ParticipantView.ContextMenu.MenuSection], Int, _ConditionalContent<_ConditionalContent<ParticipantView.ContextMenu.QuickActionsSection, ParticipantView.ContextMenu.ContactSection>, _ConditionalContent<ParticipantView.ContextMenu.ScreenSharingSection, ParticipantView.ContextMenu.DestructiveSection>>> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay20CommunicationDetails15ParticipantViewV11ContextMenuV0J7SectionOGSiAA19_ConditionalContentVyAMyAH012QuickActionsK0VAH07ContactK0VGAMyAH013ScreenSharingK0VAH011DestructiveK0VGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ParticipantView.ContextMenu.QuickActionsSection, ParticipantView.ContextMenu.ContactSection>, _ConditionalContent<ParticipantView.ContextMenu.ScreenSharingSection, ParticipantView.ContextMenu.DestructiveSection>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[ParticipantView.ContextMenu.MenuSection], Int, _ConditionalContent<_ConditionalContent<ParticipantView.ContextMenu.QuickActionsSection, ParticipantView.ContextMenu.ContactSection>, _ConditionalContent<ParticipantView.ContextMenu.ScreenSharingSection, ParticipantView.ContextMenu.DestructiveSection>>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void DetailsViewController.viewConstraints.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1901E5DD0;
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x1B0);
  v3 = v2();
  if (!v3)
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = v3;
  v5 = [v3 view];

  if (!v5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = [v5 topAnchor];

  v7 = [v0 view];
  if (!v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v7;
  v9 = [v7 topAnchor];

  v10 = [v6 constraintEqualToAnchor_];
  *(v1 + 32) = v10;
  v11 = v2();
  if (!v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = v11;
  v13 = [v11 view];

  if (!v13)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = [v13 bottomAnchor];

  v15 = [v0 view];
  if (!v15)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v15;
  v17 = [v15 bottomAnchor];

  v18 = [v14 constraintEqualToAnchor_];
  *(v1 + 40) = v18;
  v19 = v2();
  if (!v19)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v20 = v19;
  v21 = [v19 view];

  if (!v21)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v22 = [v21 leadingAnchor];

  v23 = [v0 view];
  if (!v23)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v24 = v23;
  v25 = [v23 leadingAnchor];

  v26 = [v22 constraintEqualToAnchor_];
  *(v1 + 48) = v26;
  v27 = v2();
  if (!v27)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v27;
  v29 = [v27 view];

  if (!v29)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v30 = [v29 trailingAnchor];

  v31 = [v0 view];
  if (v31)
  {
    v32 = v31;
    v33 = [v31 trailingAnchor];

    v34 = [v30 constraintEqualToAnchor_];
    *(v1 + 56) = v34;
    return;
  }

LABEL_25:
  __break(1u);
}

uint64_t cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)@<X0>(void (*a1)(uint64_t)@<X1>, uint64_t a2@<X2>, void (*a3)(uint64_t)@<X3>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v26[1] = a2;
  v27 = a1;
  v28 = a4;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v26 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = v26 - v19;
  v21 = *(a10 - 8);
  v22 = (*(v21 + 56))(v26 - v19, 1, 1, a10);
  a3(v22);
  v23 = *(v12 + 8);
  v23(v20, v11);
  (*(v12 + 32))(v20, v18, v11);
  (*(v12 + 16))(v15, v20, v11);
  if ((*(v21 + 48))(v15, 1, a10) == 1)
  {
    v24 = (v23)(v15, v11);
    v27(v24);
    return (v23)(v20, v11);
  }

  else
  {
    v23(v20, v11);
    return (*(v21 + 32))(v28, v15, a10);
  }
}

Swift::Int Header.TitleIcon.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Header.TitleIcon()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Header.TitleIcon()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v1);
  return Hasher._finalize()();
}

uint64_t Header.TitleIconConfiguration.imageName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Header.TitleIconConfiguration.imageName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Header.TitleIconConfiguration.color.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Header.TitleIconConfiguration.imageScale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Header.TitleIconConfiguration() + 24);
  v4 = type metadata accessor for Image.Scale();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Header.TitleIconConfiguration()
{
  result = type metadata singleton initialization cache for Header.TitleIconConfiguration;
  if (!type metadata singleton initialization cache for Header.TitleIconConfiguration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Header.TitleIconConfiguration.imageScale.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Header.TitleIconConfiguration() + 24);
  v4 = type metadata accessor for Image.Scale();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Header.TitleIconConfiguration.init(imageName:color:imageScale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = a3;
  v7 = *(type metadata accessor for Header.TitleIconConfiguration() + 24);
  v8 = type metadata accessor for Image.Scale();
  v9 = *(*(v8 - 8) + 32);

  return v9(&a5[v7], a4, v8);
}

uint64_t Header.SwiftUIContainerView.titleIconConfiguration(for:)@<X0>(_BYTE *a1@<X0>, char *a2@<X8>)
{
  if (*a1)
  {
    v3 = static Color.secondary.getter();
    v4 = type metadata accessor for Header.TitleIconConfiguration();
    v5 = *(v4 + 24);
    v6 = *MEMORY[0x1E69816C8];
    v7 = type metadata accessor for Image.Scale();
    (*(*(v7 - 8) + 104))(&a2[v5], v6, v7);
    *a2 = 0xD000000000000015;
    *(a2 + 1) = 0x80000001901FDFC0;
    *(a2 + 2) = v3;
    v8 = *(*(v4 - 8) + 56);
    v9 = a2;
    v10 = 0;
    v11 = v4;
  }

  else
  {
    v12 = type metadata accessor for Header.TitleIconConfiguration();
    v8 = *(*(v12 - 8) + 56);
    v11 = v12;
    v9 = a2;
    v10 = 1;
  }

  return v8(v9, v10, 1, v11);
}

unint64_t lazy protocol witness table accessor for type Header.TitleIcon and conformance Header.TitleIcon()
{
  result = lazy protocol witness table cache variable for type Header.TitleIcon and conformance Header.TitleIcon;
  if (!lazy protocol witness table cache variable for type Header.TitleIcon and conformance Header.TitleIcon)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Header.TitleIcon and conformance Header.TitleIcon);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Header.TitleIcon(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Header.TitleIcon(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata completion function for Header.TitleIconConfiguration()
{
  result = type metadata accessor for Image.Scale();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void DetailsViewController.updateToolbar(for:)(__int128 *a1)
{
  v2 = v1;
  v3 = a1[1];
  v77 = *a1;
  v78 = v3;
  v79 = *(a1 + 4);
  v4 = v3.n128_u64[0];
  if ((*(*v3.n128_u64[0] + 144))(v3))
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = *(*v4 + 184);

    v6(&v73, partial apply for closure #1 in DetailsViewController.updateToolbar(for:), v5);

    v7 = v73;
    if (v73)
    {
      TabToolbarConfiguration.barButtonItems.getter();
      _sSo15UIBarButtonItemCMaTm_0(0, &lazy cache variable for type metadata for UIBarButtonItem);
      isa = Array._bridgeToObjectiveC()().super.isa;
      outlined consume of TabToolbarConfiguration?(v7);

      [v1 setToolbarItems:isa animated:1];
LABEL_20:

      return;
    }
  }

  if (((*(*v4 + 128))() & 1) == 0)
  {
    _sSo15UIBarButtonItemCMaTm_0(0, &lazy cache variable for type metadata for UIBarButtonItem);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v1 setToolbarItems:isa animated:1];
    goto LABEL_20;
  }

  v8 = v4[4];
  v9 = *(v8 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v76 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v64 = type metadata accessor for MainActor();
    v63 = _sSo15UIBarButtonItemCMaTm_0(0, &lazy cache variable for type metadata for UIAction);
    v11 = (*v4 + 96);
    v62 = *v11;
    v61 = v11;
    v12 = v8 + 32;
    v66 = v1;
    v65 = v4;
    do
    {
      outlined init with copy of TabSubOption(v12, &v73);
      v69 = static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v19 = v74;
      v20 = v75;
      __swift_project_boxed_opaque_existential_1(&v73, v74);
      v21 = (*(v20 + 48))(v19, v20);
      isa = v9;
      if (v22)
      {
        v23 = MEMORY[0x193AEA8E0](v21);

        v68 = [objc_opt_self() systemImageNamed_];
      }

      else
      {
        v68 = 0;
      }

      v24 = v74;
      v25 = v75;
      __swift_project_boxed_opaque_existential_1(&v73, v74);
      v26 = (*(v25 + 32))(v24, v25);
      v28 = v27;
      v62();
      v30 = v29;
      ObjectType = swift_getObjectType();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v67 = &v61;
      v33 = *(AssociatedTypeWitness - 8);
      v34 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
      v36 = &v61 - v35;
      (*(v30 + 56))(ObjectType, v30, v34);
      swift_unknownObjectRelease();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v38 = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
      v40 = v39;
      (*(v33 + 8))(v36, AssociatedTypeWitness);
      if (v26 != v38 || v28 != v40)
      {
        _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v13 = isa;
      v14 = v74;
      v15 = v75;
      __swift_project_boxed_opaque_existential_1(&v73, v74);
      (*(v15 + 40))(v14, v15);
      v16 = swift_allocObject();
      v2 = v66;
      swift_unknownObjectWeakInit();
      outlined init with copy of TabSubOption(&v73, v72);
      v17 = swift_allocObject();
      v18 = v78;
      *(v17 + 16) = v77;
      *(v17 + 32) = v18;
      *(v17 + 48) = v79;
      outlined init with take of TabSubOption(v72, v17 + 56);
      *(v17 + 96) = v16;
      outlined init with copy of DetailsTab(&v77, v71);
      UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

      __swift_destroy_boxed_opaque_existential_1(&v73);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v12 += 40;
      v9 = (v13 - 1);
      v4 = v65;
    }

    while (v9);
    v10 = v76;
  }

  if (v10 >> 62)
  {
    _sSo15UIBarButtonItemCMaTm_0(0, &lazy cache variable for type metadata for UIMenuElement);

    v42 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    _sSo15UIBarButtonItemCMaTm_0(0, &lazy cache variable for type metadata for UIMenuElement);
    v42 = v10;
  }

  v43 = _sSo15UIBarButtonItemCMaTm_0(0, &lazy cache variable for type metadata for UIMenu);
  v44._countAndFlagsBits = 0;
  v44._object = 0xE000000000000000;
  v82.value.super.isa = 0;
  v82.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v43, v44, 0, v82, 0, 0xFFFFFFFFFFFFFFFFLL, v42, v60);
  v46 = v45;
  _sSo15UIBarButtonItemCMaTm_0(0, &lazy cache variable for type metadata for UIBarButtonItem);
  v47 = MEMORY[0x193AEA8E0](0xD00000000000001ALL, 0x80000001901FE020);
  v48 = [objc_opt_self() systemImageNamed_];

  v49 = v46;
  v81.value.super.isa = v48;
  v81.is_nil = 0;
  v51 = UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v81, v46, v50).super.super.isa;
  (*(*v4 + 96))();
  v53 = v52;
  v54 = swift_getObjectType();
  LOBYTE(v53) = (*(v53 + 128))(v54, v53);
  swift_unknownObjectRelease();
  [(objc_class *)v51 setSelected:v53 & 1];
  v55 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1901E8240;
  *(v56 + 32) = v51;
  *(v56 + 40) = v55;
  v57 = v51;
  v58 = v55;
  v59 = Array._bridgeToObjectiveC()().super.isa;

  [v2 setToolbarItems:v59 animated:1];
}

uint64_t outlined init with take of TabSubOption(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t partial apply for closure #1 in closure #2 in DetailsViewController.updateToolbar(for:)()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*(**(v0 + 32) + 96))(isCurrentExecutor);
  v3 = v2;
  ObjectType = swift_getObjectType();
  (*(v3 + 152))(v0 + 56, ObjectType, v3);
  swift_unknownObjectRelease();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    DetailsViewController.updateToolbarForCurrentTab()();
  }
}

uint64_t _sSo15UIBarButtonItemCMaTm_0(uint64_t a1, unint64_t *a2)
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

void partial apply for closure #1 in DetailsViewController.updateToolbar(for:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x238))();
  }
}

uint64_t outlined consume of TabToolbarConfiguration?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

Swift::Void __swiftcall DetailsViewController.updateToolbarForCurrentTab()()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1C8))();
  if (v2)
  {
    v3 = v2;
    v4 = (*((*v1 & *v2) + 0x148))();

    if (v4)
    {
      (*(*v4 + 184))(&v7);

      v5 = *(&v7 + 1);
      if (*(&v7 + 1))
      {
        v6 = v7;
        DetailsViewController.updateToolbar(for:)(&v7);
        outlined consume of DetailsTab?(v6, v5);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t DebugAlertModifier.isPresented.getter()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  MEMORY[0x193AEA550](&v5, v3);
  return v5;
}

void *key path getter for DebugAlertModifier.isPresented : DebugAlertModifier@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[1];
  v4 = *(a1 + 16);
  v8 = *a1;
  v9 = v3;
  v10 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  result = MEMORY[0x193AEA550](&v7, v5);
  *a2 = v7;
  return result;
}

void (*DebugAlertModifier.isPresented.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *v1;
  v6 = v1[1];
  *(v4 + 48) = *v1;
  *(v4 + 56) = v6;
  v7 = *(v1 + 16);
  *(v4 + 19) = v7;
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;

  *(v4 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  MEMORY[0x193AEA550]();
  return DebugAlertModifier.isPresented.modify;
}

void DebugAlertModifier.isPresented.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v3 = *(*a1 + 56);
  *(*a1 + 24) = *(*a1 + 48);
  v4 = *(v1 + 19);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 18) = v2;
  Binding.wrappedValue.setter();

  free(v1);
}

uint64_t DebugAlertModifier.$isPresented.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  Binding.projectedValue.getter();
  return v1;
}

uint64_t DebugAlertModifier.title.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t DebugAlertModifier.message.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t DebugAlertModifier.dismissButton.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DebugAlertModifier() + 28);
  v4 = type metadata accessor for Alert.Button();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for DebugAlertModifier()
{
  result = type metadata singleton initialization cache for DebugAlertModifier;
  if (!type metadata singleton initialization cache for DebugAlertModifier)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DebugAlertModifier.body(content:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  Binding.projectedValue.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails010DebugAlertD0VGMd);
  lazy protocol witness table accessor for type _ViewModifier_Content<DebugAlertModifier> and conformance _ViewModifier_Content<A>();
  View.alert(isPresented:content:)();
}

uint64_t closure #1 in DebugAlertModifier.body(content:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v15[4] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5AlertV6ButtonVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v15 - v4;
  type metadata accessor for MainActor();
  v15[3] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(a1 + 4);
  v16 = *(a1 + 3);
  v17 = v6;
  lazy protocol witness table accessor for type String and conformance String();

  v7 = Text.init<A>(_:)();
  v15[1] = v8;
  v15[2] = v7;
  v15[0] = v9;
  v10 = *(a1 + 6);
  v16 = *(a1 + 5);
  v17 = v10;

  Text.init<A>(_:)();
  v11 = *(type metadata accessor for DebugAlertModifier() + 28);
  v12 = type metadata accessor for Alert.Button();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v5, &a1[v11], v12);
  (*(v13 + 56))(v5, 0, 1, v12);
  Alert.init(title:message:dismissButton:)();
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<DebugAlertModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<DebugAlertModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<DebugAlertModifier> and conformance _ViewModifier_Content<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails010DebugAlertD0VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<DebugAlertModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

uint64_t DebugAlertModifier.init(isPresented:title:message:dismissButton:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  v11 = *(type metadata accessor for DebugAlertModifier() + 28);
  v12 = type metadata accessor for Alert.Button();
  v13 = *(*(v12 - 8) + 32);

  return v13(a9 + v11, a8, v12);
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance DebugAlertModifier()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  Binding.projectedValue.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails010DebugAlertD0VGMd);
  lazy protocol witness table accessor for type _ViewModifier_Content<DebugAlertModifier> and conformance _ViewModifier_Content<A>();
  View.alert(isPresented:content:)();
}

uint64_t View.debugAlert(isPresented:message:dismissButtonTitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v27 = a8;
  v25[0] = a4;
  v25[1] = a9;
  v26 = a10;
  v16 = type metadata accessor for DebugAlertModifier();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a6;
  v29 = a7;
  lazy protocol witness table accessor for type String and conformance String();

  v19 = Text.init<A>(_:)();
  v21 = v20;
  v23 = v22;
  static Alert.Button.default(_:action:)();
  outlined consume of Text.Storage(v19, v21, v23 & 1);

  *v18 = a1;
  *(v18 + 1) = a2;
  v18[16] = a3;
  strcpy(v18 + 24, "Engineering UI");
  v18[39] = -18;
  *(v18 + 5) = v25[0];
  *(v18 + 6) = a5;

  MEMORY[0x193AEA300](v18, v27, v16, v26);
  return outlined destroy of DebugAlertModifier(v18);
}

uint64_t outlined destroy of DebugAlertModifier(uint64_t a1)
{
  v2 = type metadata accessor for DebugAlertModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata completion function for DebugAlertModifier()
{
  type metadata accessor for Binding<Bool>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Alert.Button();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Binding<Bool>()
{
  if (!lazy cache variable for type metadata for Binding<Bool>)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<Bool>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DebugAlertModifier and conformance DebugAlertModifier()
{
  result = lazy protocol witness table cache variable for type DebugAlertModifier and conformance DebugAlertModifier;
  if (!lazy protocol witness table cache variable for type DebugAlertModifier and conformance DebugAlertModifier)
  {
    type metadata accessor for DebugAlertModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DebugAlertModifier and conformance DebugAlertModifier);
  }

  return result;
}

uint64_t ParticipantView.BlockedLabel.styleGuide.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t ParticipantView.BlockedLabel.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[17];
  v4 = v1[18];
  v5 = v1[19];
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGG_AA4TextVtGGMd);
  closure #1 in ParticipantView.BlockedLabel.body.getter(a1 + *(v6 + 44));
  KeyPath = swift_getKeyPath();
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVtGGAKyAA4FontVSgGGMd) + 36));
  *v8 = KeyPath;
  v8[1] = v3;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVtGGAKyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGMd) + 36)) = v4;
}

uint64_t closure #1 in ParticipantView.BlockedLabel.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v22._countAndFlagsBits - v6);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = Image.init(systemName:)();
  v9 = (v7 + *(v2 + 36));
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
  v11 = *MEMORY[0x1E69816C8];
  v12 = type metadata accessor for Image.Scale();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = swift_getKeyPath();
  *v7 = v8;
  v13._countAndFlagsBits = 0x64656B636F6C42;
  v13._object = 0xE700000000000000;
  v22 = LocalizedString(_:)(v13);
  lazy protocol witness table accessor for type String and conformance String();
  v14 = Text.init<A>(_:)();
  v16 = v15;
  LOBYTE(v9) = v17;
  v19 = v18;
  outlined init with copy of ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>(v7, v4);
  outlined init with copy of ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>(v4, a1);
  v20 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGG_AA4TextVtMd) + 48);
  *v20 = v14;
  *(v20 + 8) = v16;
  *(v20 + 16) = v9 & 1;
  *(v20 + 24) = v19;
  outlined copy of Text.Storage(v14, v16, v9 & 1);

  outlined destroy of ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>(v7);
  outlined consume of Text.Storage(v14, v16, v9 & 1);

  outlined destroy of ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>(v4);
}

__n128 ParticipantView.BlockedLabel.init(styleGuide:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v2;
  *(a2 + 224) = *(a1 + 224);
  v3 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v3;
  v4 = *(a1 + 176);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v4;
  v5 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v5;
  v6 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v6;
  v7 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v7;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance ParticipantView.BlockedLabel@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[17];
  v4 = v1[18];
  v5 = v1[19];
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGG_AA4TextVtGGMd);
  closure #1 in ParticipantView.BlockedLabel.body.getter(a1 + *(v6 + 44));
  KeyPath = swift_getKeyPath();
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVtGGAKyAA4FontVSgGGMd) + 36));
  *v8 = KeyPath;
  v8[1] = v3;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVtGGAKyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGMd) + 36)) = v4;
}

uint64_t getEnumTagSinglePayload for ParticipantView.BlockedLabel(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ParticipantView.BlockedLabel(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVtGGAKyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVtGGAKyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVtGGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>> and conformance HStack<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined init with copy of ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined copy of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t outlined destroy of ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static CommunicationDetailsContactCard.createNewContactViewController(for:)(uint64_t a1)
{
  v1 = [objc_opt_self() viewControllerForNewContact_];
  if (one-time initialization token for suggestionsEnabledContactsStore != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  [v1 setContactStore_];
  [v1 setActions_];
  return v1;
}

uint64_t *CNContactStore.suggestionsEnabledContactsStore.unsafeMutableAddressor()
{
  if (one-time initialization token for suggestionsEnabledContactsStore != -1)
  {
    swift_once();
  }

  return &static CNContactStore.suggestionsEnabledContactsStore;
}

void static CommunicationDetailsContactCard.pushContactCard(for:from:)(uint64_t a1, uint64_t a2)
{
  v4 = specialized static CommunicationDetailsContactCard.configuredContactViewController(for:)(a1);
  v3 = [v4 contentViewController];
  [v4 setActions_];
  if (v3)
  {
    [v3 setAllowsContactBlocking_];
  }

  if (a2)
  {
    v5 = 1;
    (*(*a2 + 104))(v4, &v5, 1);
  }
}

uint64_t CommunicationDetailsContactCard.ContactCardRepresentable.detailsContact.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v13 = *(v1 + 64);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 96);
  v4 = v15;
  v5 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v5;
  v6 = *(v1 + 48);
  v11 = *(v1 + 32);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return outlined init with copy of CommunicationDetailsContact(v10, v9);
}

__n128 CommunicationDetailsContactCard.ContactCardRepresentable.detailsContact.setter(uint64_t a1)
{
  v3 = *(v1 + 80);
  v9[4] = *(v1 + 64);
  v9[5] = v3;
  v10 = *(v1 + 96);
  v4 = *(v1 + 16);
  v9[0] = *v1;
  v9[1] = v4;
  v5 = *(v1 + 48);
  v9[2] = *(v1 + 32);
  v9[3] = v5;
  outlined destroy of CommunicationDetailsContact(v9);
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  *(v1 + 96) = *(a1 + 96);
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  result = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = result;
  return result;
}

void __swiftcall CommunicationDetailsContactCard.ContactCardRepresentable.init(for:isInline:inEditMode:createNewContact:)(CommunicationDetails::CommunicationDetailsContactCard::ContactCardRepresentable *__return_ptr retstr, CommunicationDetails::CommunicationDetailsContact *a2, Swift::Bool isInline, Swift::Bool inEditMode, Swift::Bool createNewContact)
{
  carrierLabel = a2->carrierLabel;
  *&retstr->detailsContact.formattedHandle.value._object = *&a2->formattedHandle.value._object;
  retstr->detailsContact.carrierLabel = carrierLabel;
  retstr->detailsContact.contactFormatter.super.super.isa = a2->contactFormatter.super.super.isa;
  v6 = *&a2->contact.super.isa;
  retstr->detailsContact.id = a2->id;
  *&retstr->detailsContact.contact.super.isa = v6;
  v7 = *&a2->activeHandle._object;
  *&retstr->detailsContact.displayName._object = *&a2->displayName._object;
  *&retstr->detailsContact.activeHandle._object = v7;
  retstr->isInline = isInline;
  retstr->inEditMode = inEditMode;
  retstr->createNewContact = createNewContact;
}

id CommunicationDetailsContactCard.ContactCardRepresentable.makeUIViewController(context:)()
{
  v1 = v0[5];
  v30 = v0[4];
  v31 = v1;
  v32 = *(v0 + 12);
  v2 = v0[1];
  v26 = *v0;
  v27 = v2;
  v3 = v0[3];
  v28 = v0[2];
  v29 = v3;
  if (*(v0 + 106) == 1)
  {
    v4 = [objc_opt_self() viewControllerForNewContact_];
    if (one-time initialization token for suggestionsEnabledContactsStore != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    [v4 setContactStore_];
    [v4 setActions_];
  }

  else
  {
    if (*(v0 + 104) == 1)
    {
      v5 = v0[5];
      v21 = v0[4];
      v22 = v5;
      v23 = *(v0 + 12);
      v6 = v0[1];
      v17 = *v0;
      v18 = v6;
      v7 = v0[3];
      v19 = v0[2];
      v20 = v7;
      outlined init with copy of CommunicationDetailsContact(&v26, v24);
      v8 = specialized static CommunicationDetailsContactCard.inlineContactViewController(for:)(&v17);
    }

    else
    {
      v9 = *(v0 + 105);
      v10 = v0[5];
      v21 = v0[4];
      v22 = v10;
      v23 = *(v0 + 12);
      v11 = v0[1];
      v17 = *v0;
      v18 = v11;
      v12 = v0[3];
      v19 = v0[2];
      v20 = v12;
      outlined init with copy of CommunicationDetailsContact(&v26, v24);
      v8 = specialized static CommunicationDetailsContactCard.contactViewController(for:inEditMode:)(&v17, v9);
    }

    v4 = v8;
    v24[4] = v21;
    v24[5] = v22;
    v25 = v23;
    v24[0] = v17;
    v24[1] = v18;
    v24[2] = v19;
    v24[3] = v20;
    outlined destroy of CommunicationDetailsContact(v24);
  }

  v13 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI36UIViewControllerRepresentableContextVy20CommunicationDetails0gH11ContactCardV0ijE0VGMd);
  UIViewControllerRepresentableContext.coordinator.getter();
  v14 = v17;
  [v13 setDelegate_];

  UIViewControllerRepresentableContext.coordinator.getter();
  v15 = v17;
  (*((*MEMORY[0x1E69E7D40] & *v17) + 0x68))(v13);

  return v13;
}

id CommunicationDetailsContactCard.ContactCardRepresentable.makeCoordinator()()
{
  v1 = v0[5];
  v19 = v0[4];
  v20[0] = v1;
  *(v20 + 11) = *(v0 + 91);
  v2 = v0[1];
  v15 = *v0;
  v16 = v2;
  v3 = v0[3];
  v17 = v0[2];
  v18 = v3;
  v4 = type metadata accessor for CommunicationDetailsContactCard.ContactCardRepresentable.ContactViewCoordinator();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtCVV20CommunicationDetails31CommunicationDetailsContactCard24ContactCardRepresentable22ContactViewCoordinator_viewController] = 0;
  v6 = &v5[OBJC_IVAR____TtCVV20CommunicationDetails31CommunicationDetailsContactCard24ContactCardRepresentable22ContactViewCoordinator_parent];
  v7 = v17;
  v8 = v15;
  *(v6 + 1) = v16;
  *(v6 + 2) = v7;
  *v6 = v8;
  v10 = v19;
  v9 = v20[0];
  v11 = v18;
  *(v6 + 91) = *(v20 + 11);
  *(v6 + 4) = v10;
  *(v6 + 5) = v9;
  *(v6 + 3) = v11;
  outlined init with copy of CommunicationDetailsContactCard.ContactCardRepresentable(&v15, v14);
  v13.receiver = v5;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

id CommunicationDetailsContactCard.ContactCardRepresentable.ContactViewCoordinator.__allocating_init(_:)(_OWORD *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtCVV20CommunicationDetails31CommunicationDetailsContactCard24ContactCardRepresentable22ContactViewCoordinator_viewController] = 0;
  v4 = &v3[OBJC_IVAR____TtCVV20CommunicationDetails31CommunicationDetailsContactCard24ContactCardRepresentable22ContactViewCoordinator_parent];
  v5 = a1[5];
  *(v4 + 4) = a1[4];
  *(v4 + 5) = v5;
  *(v4 + 91) = *(a1 + 91);
  v6 = a1[1];
  *v4 = *a1;
  *(v4 + 1) = v6;
  v7 = a1[3];
  *(v4 + 2) = a1[2];
  *(v4 + 3) = v7;
  v9.receiver = v3;
  v9.super_class = v1;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t CommunicationDetailsContactCard.ContactCardRepresentable.ContactViewCoordinator.parent.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtCVV20CommunicationDetails31CommunicationDetailsContactCard24ContactCardRepresentable22ContactViewCoordinator_parent + 80);
  v13 = *(v1 + OBJC_IVAR____TtCVV20CommunicationDetails31CommunicationDetailsContactCard24ContactCardRepresentable22ContactViewCoordinator_parent + 64);
  v2 = v13;
  v14[0] = v3;
  *(v14 + 11) = *(v1 + OBJC_IVAR____TtCVV20CommunicationDetails31CommunicationDetailsContactCard24ContactCardRepresentable22ContactViewCoordinator_parent + 91);
  v4 = *(v14 + 11);
  v5 = *(v1 + OBJC_IVAR____TtCVV20CommunicationDetails31CommunicationDetailsContactCard24ContactCardRepresentable22ContactViewCoordinator_parent + 16);
  v10[0] = *(v1 + OBJC_IVAR____TtCVV20CommunicationDetails31CommunicationDetailsContactCard24ContactCardRepresentable22ContactViewCoordinator_parent);
  v10[1] = v5;
  v6 = *(v1 + OBJC_IVAR____TtCVV20CommunicationDetails31CommunicationDetailsContactCard24ContactCardRepresentable22ContactViewCoordinator_parent + 48);
  v11 = *(v1 + OBJC_IVAR____TtCVV20CommunicationDetails31CommunicationDetailsContactCard24ContactCardRepresentable22ContactViewCoordinator_parent + 32);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  *(a1 + 91) = v4;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  a1[5] = v3;
  return outlined init with copy of CommunicationDetailsContactCard.ContactCardRepresentable(v10, &v9);
}

uint64_t key path getter for CommunicationDetailsContactCard.ContactCardRepresentable.ContactViewCoordinator.viewController : CommunicationDetailsContactCard.ContactCardRepresentable.ContactViewCoordinator@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t key path setter for CommunicationDetailsContactCard.ContactCardRepresentable.ContactViewCoordinator.viewController : CommunicationDetailsContactCard.ContactCardRepresentable.ContactViewCoordinator(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x68);
  v4 = *a1;
  return v3(v2);
}

void *CommunicationDetailsContactCard.ContactCardRepresentable.ContactViewCoordinator.viewController.getter()
{
  v1 = OBJC_IVAR____TtCVV20CommunicationDetails31CommunicationDetailsContactCard24ContactCardRepresentable22ContactViewCoordinator_viewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CommunicationDetailsContactCard.ContactCardRepresentable.ContactViewCoordinator.viewController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCVV20CommunicationDetails31CommunicationDetailsContactCard24ContactCardRepresentable22ContactViewCoordinator_viewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id CommunicationDetailsContactCard.ContactCardRepresentable.ContactViewCoordinator.init(_:)(_OWORD *a1)
{
  *&v1[OBJC_IVAR____TtCVV20CommunicationDetails31CommunicationDetailsContactCard24ContactCardRepresentable22ContactViewCoordinator_viewController] = 0;
  v2 = &v1[OBJC_IVAR____TtCVV20CommunicationDetails31CommunicationDetailsContactCard24ContactCardRepresentable22ContactViewCoordinator_parent];
  v3 = a1[5];
  *(v2 + 4) = a1[4];
  *(v2 + 5) = v3;
  *(v2 + 91) = *(a1 + 91);
  v4 = a1[1];
  *v2 = *a1;
  *(v2 + 1) = v4;
  v5 = a1[3];
  *(v2 + 2) = a1[2];
  *(v2 + 3) = v5;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for CommunicationDetailsContactCard.ContactCardRepresentable.ContactViewCoordinator();
  return objc_msgSendSuper2(&v7, sel_init);
}

id CommunicationDetailsContactCard.ContactCardRepresentable.ContactViewCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CommunicationDetailsContactCard.ContactCardRepresentable.ContactViewCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CommunicationDetailsContactCard.ContactCardRepresentable.ContactViewCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id protocol witness for UIViewControllerRepresentable.makeCoordinator() in conformance CommunicationDetailsContactCard.ContactCardRepresentable@<X0>(void *a1@<X8>)
{
  v3 = v1[5];
  v21 = v1[4];
  v22[0] = v3;
  *(v22 + 11) = *(v1 + 91);
  v4 = v1[1];
  v17 = *v1;
  v18 = v4;
  v5 = v1[3];
  v19 = v1[2];
  v20 = v5;
  v6 = type metadata accessor for CommunicationDetailsContactCard.ContactCardRepresentable.ContactViewCoordinator();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtCVV20CommunicationDetails31CommunicationDetailsContactCard24ContactCardRepresentable22ContactViewCoordinator_viewController] = 0;
  v8 = &v7[OBJC_IVAR____TtCVV20CommunicationDetails31CommunicationDetailsContactCard24ContactCardRepresentable22ContactViewCoordinator_parent];
  v9 = v19;
  v10 = v17;
  *(v8 + 1) = v18;
  *(v8 + 2) = v9;
  *v8 = v10;
  v12 = v21;
  v11 = v22[0];
  v13 = v20;
  *(v8 + 91) = *(v22 + 11);
  *(v8 + 4) = v12;
  *(v8 + 5) = v11;
  *(v8 + 3) = v13;
  outlined init with copy of CommunicationDetailsContactCard.ContactCardRepresentable(&v17, v16);
  v15.receiver = v7;
  v15.super_class = v6;
  result = objc_msgSendSuper2(&v15, sel_init);
  *a1 = result;
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance CommunicationDetailsContactCard.ContactCardRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type CommunicationDetailsContactCard.ContactCardRepresentable and conformance CommunicationDetailsContactCard.ContactCardRepresentable();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance CommunicationDetailsContactCard.ContactCardRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type CommunicationDetailsContactCard.ContactCardRepresentable and conformance CommunicationDetailsContactCard.ContactCardRepresentable();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance CommunicationDetailsContactCard.ContactCardRepresentable()
{
  lazy protocol witness table accessor for type CommunicationDetailsContactCard.ContactCardRepresentable and conformance CommunicationDetailsContactCard.ContactCardRepresentable();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

void one-time initialization function for suggestionsEnabledContactsStore()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E695CE28]) init];
  [v0 setIncludeDonatedContacts_];
  [v0 setIncludeIncludeManagedAppleIDs_];
  [v0 setIncludeSuggestedContacts_];
  v1 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];

  static CNContactStore.suggestionsEnabledContactsStore = v1;
}

id static CNContactStore.suggestionsEnabledContactsStore.getter()
{
  if (one-time initialization token for suggestionsEnabledContactsStore != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static CNContactStore.suggestionsEnabledContactsStore;

  return v0;
}

void static CNContactStore.suggestionsEnabledContactsStore.setter(uint64_t a1)
{
  if (one-time initialization token for suggestionsEnabledContactsStore != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static CNContactStore.suggestionsEnabledContactsStore;
  static CNContactStore.suggestionsEnabledContactsStore = a1;
}

uint64_t (*static CNContactStore.suggestionsEnabledContactsStore.modify())()
{
  if (one-time initialization token for suggestionsEnabledContactsStore != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static CNContactStore.suggestionsEnabledContactsStore.modify;
}

id specialized static CommunicationDetailsContactCard.configuredContactViewController(for:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 74);
  v3 = objc_opt_self();
  v4 = &selRef_viewControllerForContact_;
  if (!v2)
  {
    v4 = &selRef_viewControllerForUnknownContact_;
  }

  v5 = [v3 *v4];
  v6 = [v1 identifier];
  if (!v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = MEMORY[0x193AEA8E0](v7);
  }

  [v6 _appearsToBePhoneNumber];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = [v1 identifier];
  if (!v11)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = MEMORY[0x193AEA8E0](v12);
  }

  v13 = MEMORY[0x193AEA8E0](v8, v10);

  [v5 highlightPropertyWithKey:v13 identifier:v11];

  if (one-time initialization token for suggestionsEnabledContactsStore != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = static CNContactStore.suggestionsEnabledContactsStore;
  [v5 setContactStore_];

  return v5;
}

id specialized static CommunicationDetailsContactCard.inlineContactViewController(for:)(uint64_t a1)
{
  v1 = specialized static CommunicationDetailsContactCard.configuredContactViewController(for:)(a1);
  v2 = [v1 contentViewController];
  [v1 setAllowsActions_];
  v3 = v2;
  [v3 setAllowsActionsModel_];
  [v3 setShowsInlineActions_];
  if (v3)
  {
    [v3 setHideCardActions_];
    [v1 setAllowsEditing_];
    [v3 setAllowsEditing_];

    if ([v3 respondsToSelector_])
    {
      [v3 setHideHeaderView_];
    }
  }

  else
  {
    [v1 setAllowsEditing_];
    [0 setAllowsEditing_];
  }

  return v1;
}

void *specialized static CommunicationDetailsContactCard.contactViewController(for:inEditMode:)(uint64_t a1, char a2)
{
  v3 = specialized static CommunicationDetailsContactCard.configuredContactViewController(for:)(a1);
  v4 = v3;
  if (a2)
  {
    [v3 setEditMode_];
    [v4 setActions_];
  }

  else
  {
    v5 = [v3 contentViewController];
    [v4 setActions_];
    if (v5)
    {
      [v5 setAllowsContactBlocking_];
    }
  }

  return v4;
}

unint64_t lazy protocol witness table accessor for type CommunicationDetailsContactCard.ContactCardRepresentable and conformance CommunicationDetailsContactCard.ContactCardRepresentable()
{
  result = lazy protocol witness table cache variable for type CommunicationDetailsContactCard.ContactCardRepresentable and conformance CommunicationDetailsContactCard.ContactCardRepresentable;
  if (!lazy protocol witness table cache variable for type CommunicationDetailsContactCard.ContactCardRepresentable and conformance CommunicationDetailsContactCard.ContactCardRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommunicationDetailsContactCard.ContactCardRepresentable and conformance CommunicationDetailsContactCard.ContactCardRepresentable);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CommunicationDetailsContactCard.ContactCardRepresentable and conformance CommunicationDetailsContactCard.ContactCardRepresentable;
  if (!lazy protocol witness table cache variable for type CommunicationDetailsContactCard.ContactCardRepresentable and conformance CommunicationDetailsContactCard.ContactCardRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommunicationDetailsContactCard.ContactCardRepresentable and conformance CommunicationDetailsContactCard.ContactCardRepresentable);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CommunicationDetailsContactCard(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CommunicationDetailsContactCard(_WORD *result, int a2, int a3)
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

__n128 __swift_memcpy107_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 91) = *(a2 + 91);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CommunicationDetailsContactCard.ContactCardRepresentable(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 107))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CommunicationDetailsContactCard.ContactCardRepresentable(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 106) = 0;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 107) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 107) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t DetailsViewController.StyleGuide.navigationLeadingButtonImageName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DetailsViewController.StyleGuide.init(navigationLeadingButtonImageName:navigationLeadingButtonImageWeight:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void one-time initialization function for default()
{
  static DetailsViewController.StyleGuide.default = 0xD000000000000010;
  unk_1EAD3A4D0 = 0x80000001901FE1C0;
  qword_1EAD3A4D8 = 6;
}

uint64_t *DetailsViewController.StyleGuide.default.unsafeMutableAddressor()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  return &static DetailsViewController.StyleGuide.default;
}

uint64_t static DetailsViewController.StyleGuide.default.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = unk_1EAD3A4D0;
  v3 = qword_1EAD3A4D8;
  *a1 = static DetailsViewController.StyleGuide.default;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t getEnumTagSinglePayload for DetailsViewController.StyleGuide(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DetailsViewController.StyleGuide(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void type metadata accessor for UIImageSymbolWeight()
{
  if (!lazy cache variable for type metadata for UIImageSymbolWeight)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for UIImageSymbolWeight);
    }
  }
}

uint64_t type metadata accessor for BlendedColor()
{
  result = type metadata singleton initialization cache for BlendedColor;
  if (!type metadata singleton initialization cache for BlendedColor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}