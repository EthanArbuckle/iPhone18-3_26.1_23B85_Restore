void specialized SliderView.VerticalSlider.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_cornerRadius) = 0x4024000000000000;
  *(v0 + OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_isTracking) = 0;
  v1 = OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_slider;
  type metadata accessor for CenteredSlider();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_isRTL) = 0;
  *(v0 + OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_focusLocked) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized static UIImage.thumbImage(withDiameter:thumbColor:)(void *a1, double a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 16) = a1;
  *(v5 + 40) = a2;
  *(v5 + 48) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for closure #1 in static UIImage.thumbImage(withDiameter:thumbColor:);
  *(v6 + 24) = v5;
  v11[4] = _sSo30UIGraphicsImageRendererContextCIgg_ABIegg_TRTA_0;
  v11[5] = v6;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
  v11[3] = &block_descriptor_3;
  v7 = _Block_copy(v11);
  v8 = a1;

  v9 = [v4 imageWithActions_];

  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if ((v4 & 1) == 0)
  {
    return v9;
  }

  __break(1u);
  return result;
}

void specialized CenteredSlider.init(coder:)()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = [objc_opt_self() tableBackgroundColor];
  if (!v2)
  {
    __break(1u);
  }

  v3 = OBJC_IVAR____TtC5CAFUI14CenteredSlider_tickmarkView;
  v4 = v2;
  [v1 setBackgroundColor_];

  [v1 setUserInteractionEnabled_];
  *(v0 + v3) = v1;
  *(v0 + OBJC_IVAR____TtC5CAFUI14CenteredSlider_thumbImageView) = 0;
  *(v0 + OBJC_IVAR____TtC5CAFUI14CenteredSlider_tickmarkWidth) = 0x4000000000000000;
  *(v0 + OBJC_IVAR____TtC5CAFUI14CenteredSlider_centerValue) = 0;
  v5 = OBJC_IVAR____TtC5CAFUI14CenteredSlider_trackLayer;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) &off_278D49B78];
  v6 = OBJC_IVAR____TtC5CAFUI14CenteredSlider_fillLayer;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) &off_278D49B78];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_2423B3C9C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2423B3D14()
{
  MEMORY[0x245D0E610](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t lazy protocol witness table accessor for type CAFEqualizer and conformance CAFEqualizer()
{
  result = lazy protocol witness table cache variable for type CAFEqualizer and conformance CAFEqualizer;
  if (!lazy protocol witness table cache variable for type CAFEqualizer and conformance CAFEqualizer)
  {
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for CAFEqualizer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFEqualizer and conformance CAFEqualizer);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2423B3E48(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2423B3F08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for CAFUIEqualizerSlider()
{
  type metadata accessor for ObservedObject<CAFEqualizerObservable>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for ObservedObject<CAFEqualizerObservable>()
{
  if (!lazy cache variable for type metadata for ObservedObject<CAFEqualizerObservable>)
  {
    type metadata accessor for CAFEqualizerObservable();
    lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle(&lazy protocol witness table cache variable for type CAFEqualizerObservable and conformance CAFEqualizerObservable, MEMORY[0x277CF3710]);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ObservedObject<CAFEqualizerObservable>);
    }
  }
}

uint64_t sub_2423B4154@<X0>(_BYTE *a1@<X8>)
{
  result = dispatch thunk of CAFEqualizerObservable.value.getter();
  *a1 = result;
  return result;
}

float partial apply for closure #1 in Binding<A>.floatBinding()@<S0>(float *a1@<X8>)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = v3;
  v11 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVys4Int8VGMd);
  MEMORY[0x245D0CF90](&v8, v5);
  v6.i8[0] = v8;
  result = vmovl_s16(*&vmovl_s8(v6)).i32[0];
  *a1 = result;
  return result;
}

uint64_t objectdestroy_57Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_2423B4298@<X0>(void *a1@<X8>)
{
  lazy protocol witness table accessor for type EnvironmentValues.__Key_sliderTappedPublisher and conformance EnvironmentValues.__Key_sliderTappedPublisher();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentValues.__Key_sliderTappedPublisher and conformance EnvironmentValues.__Key_sliderTappedPublisher()
{
  result = lazy protocol witness table cache variable for type EnvironmentValues.__Key_sliderTappedPublisher and conformance EnvironmentValues.__Key_sliderTappedPublisher;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.__Key_sliderTappedPublisher and conformance EnvironmentValues.__Key_sliderTappedPublisher)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.__Key_sliderTappedPublisher and conformance EnvironmentValues.__Key_sliderTappedPublisher);
  }

  return result;
}

uint64_t objectdestroy_71Tm()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<CAFUIEqualizerSlider, _FlexFrameLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<CAFUIEqualizerSlider, _FlexFrameLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<CAFUIEqualizerSlider, _FlexFrameLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy5CAFUI20CAFUIEqualizerSliderVAA16_FlexFrameLayoutVGAHGMd);
    lazy protocol witness table accessor for type ModifiedContent<CAFUIEqualizerSlider, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<CAFUIEqualizerSlider, _FlexFrameLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<CAFUIEqualizerSlider, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<CAFUIEqualizerSlider, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<CAFUIEqualizerSlider, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy5CAFUI20CAFUIEqualizerSliderVAA16_FlexFrameLayoutVGMd);
    lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle(&lazy protocol witness table cache variable for type CAFUIEqualizerSlider and conformance CAFUIEqualizerSlider, type metadata accessor for CAFUIEqualizerSlider);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<CAFUIEqualizerSlider, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_2423B44EC()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #2 in closure #1 in closure #1 in CAFUIEqualizerGroup.body.getter()
{
  type metadata accessor for GeometryProxy();

  return closure #2 in closure #1 in closure #1 in CAFUIEqualizerGroup.body.getter();
}

uint64_t sub_2423B4650(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2423B4730(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void type metadata completion function for CAFUISliderView()
{
  type metadata accessor for Environment<ColorScheme>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Binding<Float>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for OS_os_log(319, &lazy cache variable for type metadata for CAFFloatRange);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Environment<ColorScheme>()
{
  if (!lazy cache variable for type metadata for Environment<ColorScheme>)
  {
    type metadata accessor for ColorScheme();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<ColorScheme>);
    }
  }
}

void type metadata accessor for Binding<Float>()
{
  if (!lazy cache variable for type metadata for Binding<Float>)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<Float>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(GeometryReader<ModifiedContent<ZStack<EmptyView>, _AppearanceActionModifier>>, ModifiedContent<HStack<ForEach<[CAFUIEqualizerSlider], UUID, ModifiedContent<ModifiedContent<CAFUIEqualizerSlider, _FlexFrameLayout>, _FlexFrameLayout>>>, _FixedSizeLayout>)>>, _EnvironmentKeyWritingModifier<PassthroughSubject<SliderView.VerticalSlider, Never>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(GeometryReader<ModifiedContent<ZStack<EmptyView>, _AppearanceActionModifier>>, ModifiedContent<HStack<ForEach<[CAFUIEqualizerSlider], UUID, ModifiedContent<ModifiedContent<CAFUIEqualizerSlider, _FlexFrameLayout>, _FlexFrameLayout>>>, _FixedSizeLayout>)>>, _EnvironmentKeyWritingModifier<PassthroughSubject<SliderView.VerticalSlider, Never>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(GeometryReader<ModifiedContent<ZStack<EmptyView>, _AppearanceActionModifier>>, ModifiedContent<HStack<ForEach<[CAFUIEqualizerSlider], UUID, ModifiedContent<ModifiedContent<CAFUIEqualizerSlider, _FlexFrameLayout>, _FlexFrameLayout>>>, _FixedSizeLayout>)>>, _EnvironmentKeyWritingModifier<PassthroughSubject<SliderView.VerticalSlider, Never>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA14GeometryReaderVyACyAEyAA05EmptyG0VGAA25_AppearanceActionModifierVGG_ACyAA6HStackVyAA7ForEachVySay5CAFUI20CAFUIEqualizerSliderVG10Foundation4UUIDVACyACyAwA16_FlexFrameLayoutVGA1_GGGAA010_FixedSizeX0VGtGGAA022_EnvironmentKeyWritingM0Vy7Combine18PassthroughSubjectCyAU0sG0V08VerticalS0Cs5NeverOGGGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type ZStack<TupleView<(GeometryReader<ModifiedContent<ZStack<EmptyView>, _AppearanceActionModifier>>, ModifiedContent<HStack<ForEach<[CAFUIEqualizerSlider], UUID, ModifiedContent<ModifiedContent<CAFUIEqualizerSlider, _FlexFrameLayout>, _FlexFrameLayout>>>, _FixedSizeLayout>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA14GeometryReaderVyAA15ModifiedContentVyACyAA05EmptyE0VGAA25_AppearanceActionModifierVGG_AIyAA6HStackVyAA7ForEachVySay5CAFUI20CAFUIEqualizerSliderVG10Foundation4UUIDVAIyAIyAwA16_FlexFrameLayoutVGA1_GGGAA010_FixedSizeX0VGtGGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<PassthroughSubject<SliderView.VerticalSlider, Never>> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy7Combine18PassthroughSubjectCy5CAFUI10SliderViewV08VerticalK0Cs5NeverOGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(GeometryReader<ModifiedContent<ZStack<EmptyView>, _AppearanceActionModifier>>, ModifiedContent<HStack<ForEach<[CAFUIEqualizerSlider], UUID, ModifiedContent<ModifiedContent<CAFUIEqualizerSlider, _FlexFrameLayout>, _FlexFrameLayout>>>, _FixedSizeLayout>)>>, _EnvironmentKeyWritingModifier<PassthroughSubject<SliderView.VerticalSlider, Never>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _BlendModeEffect>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _BlendModeEffect>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _BlendModeEffect>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_BlendModeEffectVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _BlendModeEffect> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<Text, _BlendModeEffect> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyAA4TextVAA16_BlendModeEffectVGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _BlendModeEffect>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_2423B4B98@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2423B4BFC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t outlined init with copy of CAFUIEqualizerSlider(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of CAFUIEqualizerSlider(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _FrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _FrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _FrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA12_FrameLayoutVGAA13_OffsetEffectVGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _BlendModeEffect> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<Text, _FrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyAA4TextVAA12_FrameLayoutVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _FrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _BlendModeEffect> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2)
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

uint64_t objectdestroy_103Tm()
{
  v1 = type metadata accessor for CAFUISliderView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
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

uint64_t partial apply for closure #3 in closure #1 in CAFUISliderView.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CAFUISliderView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t CAFSettingsNotificationSource.output.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGGMd);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - v2;
  v6[1] = CAFNotificationSource.notification.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<NotificationModel?, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
  lazy protocol witness table accessor for type NotificationModel? and conformance <A> A?();
  Publisher<>.removeDuplicates()();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<AnyPublisher<NotificationModel?, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGGMd);
  v4 = Publisher.eraseToAnyPublisher()();
  (*(v1 + 8))(v3, v0);
  return v4;
}

BOOL String.isAutoSettingsNotification.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20]();
  v1 = &v11 - v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of RequestTemporaryContentModel?(v1, &_s10Foundation3URLVSgMd);
    return 0;
  }

  (*(v3 + 32))(v5, v1, v2);
  v7 = URL.scheme.getter();
  if (!v8)
  {
    (*(v3 + 8))(v5, v2);
    return 0;
  }

  if (v7 != 0xD00000000000001ALL || v8 != 0x800000024242B0C0)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*(v3 + 8))(v5, v2);
    return (v10 & 1) != 0;
  }

  (*(v3 + 8))(v5, v2);
  return 1;
}

void *CAFSettingsNotificationSource.__allocating_init(notification:requestContent:settingsByIdentifiers:buttonSetting:singleSelectSetting:BOOLeanSetting:deepLinkSetting:zoneRegion:launchURL:)(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v84 = a8;
  v85 = a5;
  v77 = a7;
  v86 = a6;
  v83 = a4;
  v57 = a3;
  v87 = a2;
  v72 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGGMd);
  v12 = *(v11 - 8);
  v79 = v11;
  v80 = v12;
  MEMORY[0x28223BE20](v11);
  v78 = v55 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGGMd);
  v15 = *(v14 - 8);
  v75 = v14;
  v76 = v15;
  MEMORY[0x28223BE20](v14);
  v74 = v55 - v16;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGGMd);
  v70 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = v55 - v17;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGGMd);
  v67 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = v55 - v18;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v64);
  v60 = v55 - v19;
  v20 = type metadata accessor for Zone.ZoneRegion();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v55[1] = v22;
  v23 = v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v61);
  v81 = v55 - v24;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentL0CANGGGMd);
  v63 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v58 = v55 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = v55 - v27;
  v29 = swift_allocObject();
  v29[2] = 0;
  v30 = type metadata accessor for NotificationModel();
  (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
  swift_allocObject();
  v31 = CurrentValueSubject.init(_:)();
  v56 = v29;
  v29[3] = v31;
  v29[4] = MEMORY[0x277D84FA0];
  v59 = v29 + 4;
  v32 = MEMORY[0x277D84F90];
  v29[9] = 0;
  v29[10] = v32;
  v29[7] = a10;
  v29[8] = 0;
  v71 = a10;
  v29[5] = v57;
  v29[6] = a9;
  v88 = a1;
  v33 = v21;
  v57 = *(v21 + 16);
  v34 = v84;
  v35 = v20;
  v82 = v20;
  v57(v23, v84, v20);
  v36 = *(v33 + 80);
  v73 = v33;
  v37 = (v36 + 16) & ~v36;
  v38 = swift_allocObject();
  v55[0] = *(v33 + 32);
  (v55[0])(v38 + v37, v23, v35);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFAutomakerSettingsRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  v88 = v87;
  v39 = v82;
  v57(v23, v34, v82);
  v40 = swift_allocObject();
  (v55[0])(v40 + v37, v23, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRequestTemporaryContentObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFAutomakerSettingsRemoteNotificationObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
  v41 = v58;
  Publishers.CombineLatest.init(_:_:)();
  v42 = swift_allocObject();
  v43 = v56;
  swift_weakInit();
  v44 = swift_allocObject();
  *(v44 + 16) = partial apply for closure #3 in CAFSettingsNotificationSource.init(notification:requestContent:settingsByIdentifiers:buttonSetting:singleSelectSetting:BOOLeanSetting:deepLinkSetting:zoneRegion:launchURL:);
  *(v44 + 24) = v42;
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.Filter<AnyPublisher<CAFAutomakerSettingsRemoteNotificationObservable, Never>>, Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentL0CANGGGMd);

  v45 = v62;
  Publisher<>.sink(receiveValue:)();

  (*(v63 + 8))(v41, v45);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v88 = v85;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFSingleSelectSettingObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGMd);
  v46 = v65;
  Publisher.filter(_:)();

  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFSingleSelectSettingObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGGMd);
  v47 = v66;
  Publisher<>.sink(receiveValue:)();

  (*(v67 + 8))(v46, v47);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v88 = v83;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFButtonSettingObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGMd);
  v48 = v68;
  Publisher.filter(_:)();

  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFButtonSettingObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGGMd);
  v49 = v69;
  Publisher<>.sink(receiveValue:)();

  (*(v70 + 8))(v48, v49);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v88 = v86;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFBooleanSettingObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGMd);
  v50 = v74;
  Publisher.filter(_:)();

  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFBooleanSettingObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGGMd);
  v51 = v75;
  Publisher<>.sink(receiveValue:)();

  (*(v76 + 8))(v50, v51);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v88 = v77;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFDeepLinkSettingObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGMd);
  v52 = v78;
  Publisher.filter(_:)();

  swift_allocObject();
  swift_weakInit();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFDeepLinkSettingObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGGMd);
  v53 = v79;
  Publisher<>.sink(receiveValue:)();

  (*(v80 + 8))(v52, v53);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  (*(v73 + 8))(v84, v82);
  return v43;
}

void *CAFSettingsNotificationSource.init(notification:requestContent:settingsByIdentifiers:buttonSetting:singleSelectSetting:BOOLeanSetting:deepLinkSetting:zoneRegion:launchURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v88 = a8;
  v89 = a4;
  v82 = a7;
  v90 = a6;
  v91 = a5;
  v92 = a2;
  v77 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGGMd);
  v15 = *(v14 - 8);
  v84 = v14;
  v85 = v15;
  MEMORY[0x28223BE20](v14);
  v83 = &v57 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGGMd);
  v18 = *(v17 - 8);
  v80 = v17;
  v81 = v18;
  MEMORY[0x28223BE20](v17);
  v79 = &v57 - v19;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGGMd);
  v75 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = &v57 - v20;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGGMd);
  v72 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v70 = &v57 - v21;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v69);
  v65 = &v57 - v22;
  v23 = type metadata accessor for Zone.ZoneRegion();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v60 = v25;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v66);
  v86 = &v57 - v26;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentL0CANGGGMd);
  v68 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v63 = &v57 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v57 - v29;
  v11[2] = 0;
  v31 = type metadata accessor for NotificationModel();
  (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
  swift_allocObject();
  v32 = CurrentValueSubject.init(_:)();
  v62 = v11;
  v11[3] = v32;
  v11[4] = MEMORY[0x277D84FA0];
  v64 = v11 + 4;
  v33 = MEMORY[0x277D84F90];
  v11[9] = 0;
  v11[10] = v33;
  v11[7] = a10;
  v11[8] = 0;
  v76 = a10;
  v11[5] = a3;
  v11[6] = a9;
  v93 = a1;
  v61 = *(v24 + 16);
  v58 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v88;
  v35 = v23;
  v87 = v23;
  v61(v58, v88, v23);
  v36 = *(v24 + 80);
  v78 = v24;
  v37 = (v36 + 16) & ~v36;
  v38 = swift_allocObject();
  v39 = *(v24 + 32);
  v39(v38 + v37, &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v35);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGMd);
  v59 = MEMORY[0x277CBCD90];
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFAutomakerSettingsRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  v93 = v92;
  v40 = v58;
  v41 = v87;
  v61(v58, v34, v87);
  v42 = swift_allocObject();
  v39(v42 + v37, v40, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRequestTemporaryContentObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFAutomakerSettingsRemoteNotificationObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
  v43 = v63;
  Publishers.CombineLatest.init(_:_:)();
  v44 = swift_allocObject();
  v45 = v62;
  swift_weakInit();
  v46 = swift_allocObject();
  *(v46 + 16) = closure #3 in CAFSettingsNotificationSource.init(notification:requestContent:settingsByIdentifiers:buttonSetting:singleSelectSetting:BOOLeanSetting:deepLinkSetting:zoneRegion:launchURL:)partial apply;
  *(v46 + 24) = v44;
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.Filter<AnyPublisher<CAFAutomakerSettingsRemoteNotificationObservable, Never>>, Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentL0CANGGGMd);

  v47 = v67;
  Publisher<>.sink(receiveValue:)();

  (*(v68 + 8))(v43, v47);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v93 = v91;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFSingleSelectSettingObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGMd);
  v48 = v70;
  Publisher.filter(_:)();

  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFSingleSelectSettingObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGGMd);
  v49 = v71;
  Publisher<>.sink(receiveValue:)();

  (*(v72 + 8))(v48, v49);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v93 = v89;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFButtonSettingObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGMd);
  v50 = v73;
  Publisher.filter(_:)();

  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFButtonSettingObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGGMd);
  v51 = v74;
  Publisher<>.sink(receiveValue:)();

  (*(v75 + 8))(v50, v51);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v93 = v90;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFBooleanSettingObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGMd);
  v52 = v79;
  Publisher.filter(_:)();

  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFBooleanSettingObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGGMd);
  v53 = v80;
  Publisher<>.sink(receiveValue:)();

  (*(v81 + 8))(v52, v53);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v93 = v82;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFDeepLinkSettingObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGMd);
  v54 = v83;
  Publisher.filter(_:)();

  swift_allocObject();
  swift_weakInit();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFDeepLinkSettingObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGGMd);
  v55 = v84;
  Publisher<>.sink(receiveValue:)();

  (*(v85 + 8))(v54, v55);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  (*(v78 + 8))(v88, v87);
  return v45;
}

uint64_t closure #1 in CAFSettingsNotificationSource.init(notification:requestContent:settingsByIdentifiers:buttonSetting:singleSelectSetting:BOOLeanSetting:deepLinkSetting:zoneRegion:launchURL:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  v5 = v4;
  if (v3 == Zone.ZoneRegion.rawValue.getter() && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_2423B7384()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t closure #3 in CAFSettingsNotificationSource.init(notification:requestContent:settingsByIdentifiers:buttonSetting:singleSelectSetting:BOOLeanSetting:deepLinkSetting:zoneRegion:launchURL:)(void *a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 64);
    *(Strong + 64) = a1;
    v6 = a1;
  }

  swift_beginAccess();
  v7 = swift_weakLoadStrong();
  if (v7)
  {
    v8 = *(v7 + 72);
    *(v7 + 72) = a2;
    v9 = a2;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    CAFSettingsNotificationSource.updateNotification()();
  }

  return result;
}

uint64_t closure #4 in CAFSettingsNotificationSource.init(notification:requestContent:settingsByIdentifiers:buttonSetting:singleSelectSetting:BOOLeanSetting:deepLinkSetting:zoneRegion:launchURL:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void *))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + 80);

    v13[0] = a3(v8);
    v13[1] = v9;
    MEMORY[0x28223BE20](v13[0]);
    v12[2] = v13;
    v10 = specialized Sequence.contains(where:)(a4, v12, v7);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t closure #5 in CAFSettingsNotificationSource.init(notification:requestContent:settingsByIdentifiers:buttonSetting:singleSelectSetting:BOOLeanSetting:deepLinkSetting:zoneRegion:launchURL:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    CAFSettingsNotificationSource.updateNotification()();
  }

  return result;
}

uint64_t sub_2423B77E0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t CAFSettingsNotificationSource.updateNotification()()
{
  v1 = v0;
  v58 = *v0;
  v61 = type metadata accessor for NotificationModel();
  v2 = *(v61 - 8);
  v3 = MEMORY[0x28223BE20](v61);
  v59 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v60 = v53 - v6;
  MEMORY[0x28223BE20](v5);
  v8 = v53 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v53 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v53 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v53 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = v53 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = v53 - v25;
  v27 = v0[8];
  if (v27 && (v28 = v0[9]) != 0)
  {
    v56 = v2;
    v57 = v27;
    v29 = v28;
    dispatch thunk of CAFRequestTemporaryContentObservable.temporaryContentURL.getter();
    v30 = String.isAutoSettingsNotification.getter();

    if (v30 && (dispatch thunk of CAFRequestTemporaryContentObservable.on.getter() & 1) != 0)
    {
      v31 = v57;
      v53[1] = dispatch thunk of CAFAutomakerSettingsRemoteNotificationObservable.displayPanelIdentifier.getter();
      v53[2] = v32;
      v55 = v29;
      CAFSettingsNotificationSource.convert(message:requestContent:)(v31, v29, v21);
      outlined init with copy of NotificationModel.Symbol?(v21, v18, &_s14CarPlayAssetUI17NotificationModelVSgMd);
      v33 = v56;
      v34 = v61;
      v54 = *(v56 + 48);
      if (v54(v18, 1, v61) == 1)
      {
        outlined destroy of RequestTemporaryContentModel?(v21, &_s14CarPlayAssetUI17NotificationModelVSgMd);

        (*(v33 + 56))(v24, 1, 1, v34);
      }

      else
      {
        (*(v33 + 32))(v8, v18, v34);
        static CAFSettingsNotificationSource.sanitize(notification:displayID:)(v8, v24);
        v34 = v61;

        (*(v33 + 8))(v8, v34);
        outlined destroy of RequestTemporaryContentModel?(v21, &_s14CarPlayAssetUI17NotificationModelVSgMd);
      }

      outlined init with take of NotificationModel?(v24, v26);
      outlined init with copy of NotificationModel.Symbol?(v26, v15, &_s14CarPlayAssetUI17NotificationModelVSgMd);
      if (v54(v15, 1, v34) == 1)
      {
        outlined destroy of RequestTemporaryContentModel?(v15, &_s14CarPlayAssetUI17NotificationModelVSgMd);
        static os_log_type_t.default.getter();
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
        v36 = static OS_os_log.default.getter();
        v37 = MEMORY[0x277D84F90];
        os_log(_:dso:log:_:_:)();

        v1[10] = v37;

        v29 = v55;
      }

      else
      {
        v38 = v60;
        (*(v33 + 32))(v60, v15, v34);
        v39 = static os_log_type_t.default.getter();
        v40 = v59;
        (*(v33 + 16))(v59, v38, v34);
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
        v41 = v34;
        v42 = static OS_os_log.default.getter();
        if (os_log_type_enabled(v42, v39))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          LODWORD(v61) = v39;
          v45 = v44;
          v62 = v44;
          *v43 = 136315138;
          v46 = NotificationModel.id.getter();
          v47 = v40;
          v49 = v48;
          v50 = *(v33 + 8);
          v50(v47, v41);
          v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v49, &v62);

          *(v43 + 4) = v51;
          _os_log_impl(&dword_24234D000, v42, v61, "Presenting notification:%s", v43, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v45);
          MEMORY[0x245D0E5A0](v45, -1, -1);
          MEMORY[0x245D0E5A0](v43, -1, -1);

          v50(v60, v41);
        }

        else
        {

          v52 = *(v33 + 8);
          v52(v40, v41);
          v52(v38, v41);
        }

        v29 = v55;
      }
    }

    else
    {
      (*(v56 + 56))(v26, 1, 1, v61);
      v1[10] = MEMORY[0x277D84F90];
    }

    CurrentValueSubject.send(_:)();
  }

  else
  {
    v1[10] = MEMORY[0x277D84F90];

    (*(v2 + 56))(v12, 1, 1, v61);

    CurrentValueSubject.send(_:)();

    v26 = v12;
  }

  return outlined destroy of RequestTemporaryContentModel?(v26, &_s14CarPlayAssetUI17NotificationModelVSgMd);
}

uint64_t static CAFSettingsNotificationSource.sanitize(notification:displayID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NotificationModel();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NotificationModel.ValidationError();
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x28223BE20](v7);
  v46 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v30 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  v18 = NotificationModel.validate(automakerSymbolValidator:)();
  (*(v5 + 16))(v17, a1, v4);
  v38 = v5;
  v19 = *(v5 + 56);
  v42 = v4;
  v35 = v19;
  v36 = v5 + 56;
  v19(v17, 0, 1, v4);
  v31 = v17;
  v20 = v17;
  v21 = v18;
  v22 = a2;
  outlined init with copy of NotificationModel.Symbol?(v20, a2, &_s14CarPlayAssetUI17NotificationModelVSgMd);
  v43 = *(v18 + 16);
  if (v43)
  {
    v23 = 0;
    v41 = v21 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
    v39 = (v38 + 6);
    v40 = v44 + 16;
    v32 = (v38 + 4);
    v33 = (v38 + 1);
    v38 = (v44 + 8);
    v24 = &_s14CarPlayAssetUI17NotificationModelVSgMR;
    v34 = v21;
    while (v23 < *(v21 + 16))
    {
      (*(v44 + 16))(v46, v41 + *(v44 + 72) * v23, v45);
      outlined init with copy of NotificationModel.Symbol?(v22, v12, &_s14CarPlayAssetUI17NotificationModelVSgMd);
      v4 = v42;
      if ((*v39)(v12, 1, v42) == 1)
      {
        outlined destroy of RequestTemporaryContentModel?(v22, &_s14CarPlayAssetUI17NotificationModelVSgMd);
        v35(v15, 1, 1, v4);
      }

      else
      {
        v25 = v24;
        v26 = v22;
        v27 = v46;
        v28 = v37;
        (*v32)(v37, v12, v4);
        closure #1 in closure #2 in static CAFSettingsNotificationSource.sanitize(notification:displayID:)(v28, v27, v15);
        (*v33)(v28, v4);
        v22 = v26;
        v24 = v25;
        outlined destroy of RequestTemporaryContentModel?(v26, &_s14CarPlayAssetUI17NotificationModelVSgMd);
        v21 = v34;
      }

      ++v23;
      (*v38)(v46, v45);
      outlined init with take of NotificationModel?(v15, v22);
      if (v43 == v23)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    result = (*v33)(v24, v4);
    __break(1u);
  }

  else
  {
LABEL_8:

    return outlined destroy of RequestTemporaryContentModel?(v31, &_s14CarPlayAssetUI17NotificationModelVSgMd);
  }

  return result;
}

uint64_t closure #1 in closure #2 in static CAFSettingsNotificationSource.sanitize(notification:displayID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v56 = a3;
  v5 = type metadata accessor for NotificationModel.ValidationError();
  v57 = *(v5 - 8);
  v58 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v55 = &v51[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v9 = &v51[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v51[-v11];
  v13 = type metadata accessor for NotificationModel();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v51[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v51[-v19];
  MEMORY[0x28223BE20](v18);
  v22 = &v51[-v21];
  NotificationModel.ValidationError.correct(on:)();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of RequestTemporaryContentModel?(v12, &_s14CarPlayAssetUI17NotificationModelVSgMd);
    v23 = static os_log_type_t.default.getter();
    (*(v14 + 16))(v17, a1, v13);
    v24 = v55;
    (*(v57 + 16))(v55, a2, v58);
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
    v25 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v25, v23))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v59 = v27;
      *v26 = 136315394;
      v28 = NotificationModel.id.getter();
      LODWORD(v54) = v23;
      v30 = v29;
      (*(v14 + 8))(v17, v13);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v59);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2080;
      v32 = NotificationModel.ValidationError.description.getter();
      v34 = v33;
      (*(v57 + 8))(v24, v58);
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v59);

      *(v26 + 14) = v35;
      _os_log_impl(&dword_24234D000, v25, v54, "Unable to correct issue on notification:%s: %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D0E5A0](v27, -1, -1);
      MEMORY[0x245D0E5A0](v26, -1, -1);
    }

    else
    {

      (*(v57 + 8))(v24, v58);
      (*(v14 + 8))(v17, v13);
    }

    v48 = 1;
    v49 = v56;
  }

  else
  {
    v54 = *(v14 + 32);
    v55 = v22;
    v54(v22, v12, v13);
    v36 = static os_log_type_t.default.getter();
    (*(v14 + 16))(v20, a1, v13);
    (*(v57 + 16))(v9, a2, v58);
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
    v37 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v37, v36))
    {
      v38 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v59 = v53;
      *v38 = 136315394;
      v39 = NotificationModel.id.getter();
      v52 = v36;
      v41 = v40;
      (*(v14 + 8))(v20, v13);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v59);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2080;
      v43 = NotificationModel.ValidationError.description.getter();
      v45 = v44;
      (*(v57 + 8))(v9, v58);
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v59);

      *(v38 + 14) = v46;
      _os_log_impl(&dword_24234D000, v37, v52, "Corrected issue on notification:%s: %s", v38, 0x16u);
      v47 = v53;
      swift_arrayDestroy();
      MEMORY[0x245D0E5A0](v47, -1, -1);
      MEMORY[0x245D0E5A0](v38, -1, -1);
    }

    else
    {

      (*(v57 + 8))(v9, v58);
      (*(v14 + 8))(v20, v13);
    }

    v49 = v56;
    v54(v56, v55, v13);
    v48 = 0;
  }

  return (*(v14 + 56))(v49, v48, 1, v13);
}

void CAFSettingsNotificationSource.getSettingsButtonSymbol(setting:)(uint64_t a1@<X8>)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      v16 = [v14 notificationInfo];
      if (!v16)
      {
        goto LABEL_34;
      }

      v17 = v16;
      v18 = [v16 symbolName];

      if (!v18)
      {
        goto LABEL_34;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = [v15 notificationInfo];
      if (v19)
      {
        goto LABEL_13;
      }
    }

    else
    {
      objc_opt_self();
      v24 = swift_dynamicCastObjCClass();
      if (!v24)
      {
        objc_opt_self();
        v32 = swift_dynamicCastObjCClass();
        if (!v32)
        {
          goto LABEL_34;
        }

        v33 = v32;
        v34 = [v32 on];
        v35 = [v33 BOOLeanNotificationInfo];
        if (v34)
        {
          if (!v35)
          {
            goto LABEL_34;
          }

          v36 = v35;
          v37 = [v35 onSymbolName];

          if (!v37)
          {
            goto LABEL_34;
          }

          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v38 = [v33 BOOLeanNotificationInfo];
          if (!v38)
          {
            goto LABEL_35;
          }

          v39 = &selRef_onSymbolColor;
        }

        else
        {
          if (!v35)
          {
            goto LABEL_34;
          }

          v40 = v35;
          v41 = [v35 offSymbolName];

          if (!v41)
          {
            goto LABEL_34;
          }

          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v38 = [v33 BOOLeanNotificationInfo];
          if (!v38)
          {
            goto LABEL_35;
          }

          v39 = &selRef_offSymbolColor;
        }

        v42 = v38;
        v43 = [v38 *v39];

        v22 = UIColorFromCAFImageColor(v43);
        goto LABEL_33;
      }

      v25 = v24;
      v26 = [v24 notificationInfo];
      if (!v26)
      {
        goto LABEL_34;
      }

      v27 = v26;
      v28 = [v26 symbolName];

      if (!v28)
      {
        goto LABEL_34;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = [v25 notificationInfo];
      if (v19)
      {
LABEL_13:
        v20 = v19;
        v21 = [v19 symbolColor];

        v22 = UIColorFromCAFImageColor(v21);
LABEL_33:
        MEMORY[0x245D0CE70](v22);
      }
    }

LABEL_35:
    NotificationModel.Symbol.init(name:color:)();
    v23 = 0;
    goto LABEL_36;
  }

  v3 = v2;
  v4 = [v2 selectedEntryIndex];
  v5 = [v3 selectSettingEntryListNotificationInfo];
  if (!v5)
  {
LABEL_34:
    v23 = 1;
    goto LABEL_36;
  }

  v6 = v5;
  v7 = [v5 selectSettingNotificationEntrys];

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFSelectSettingNotificationEntry);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = v8 + 8 * v4;
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x245D0D9A0](v4, v8);
  }

  else
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v4)
    {
      __break(1u);
      return;
    }

    v10 = *(v9 + 32);
  }

  v11 = v10;
  v12 = [v10 symbolName];

  if (v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v8 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x245D0D9A0](v4, v8);
    }

    else
    {
      v13 = *(v9 + 32);
    }

    v29 = v13;

    v30 = [v29 symbolColor];

    v31 = UIColorFromCAFImageColor(v30);
    MEMORY[0x245D0CE70](v31);
    goto LABEL_35;
  }

  v23 = 1;
LABEL_36:
  v44 = type metadata accessor for NotificationModel.Symbol();
  v45 = *(*(v44 - 8) + 56);

  v45(a1, v23, 1, v44);
}

void CAFSettingsNotificationSource.handleActionButtonPress(for:)()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 on];
    v4 = sel_setOn_;
    v5 = v3 ^ 1;
LABEL_3:
    v6 = v2;
LABEL_4:

    [v6 v4];
    return;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 buttonAction];
    if (!v9)
    {
      v4 = sel_setButtonAction_;
      v6 = v8;
      v5 = 1;
      goto LABEL_4;
    }

    if (v9 == 1)
    {
      v4 = sel_setButtonAction_;
      v6 = v8;
      v5 = 0;
      goto LABEL_4;
    }

LABEL_38:
    type metadata accessor for CAFButtonAction(0);
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = [v10 contentURLAction];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    (*(v0 + 48))(v12, v14);

    return;
  }

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v2 = v15;
    v16 = [v15 selectSettingEntryList];
    v17 = [v16 selectSettingEntrys];

    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFSelectSettingEntry);
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v18 >> 62)
    {
      v19 = __CocoaSet.count.getter();
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v19 < 2)
    {
      return;
    }

    v20 = [v2 selectedEntryIndex] + 1;
    if ((v20 & 0x100) != 0)
    {
      __break(1u);
    }

    else
    {
      v21 = [v2 selectSettingEntryList];
      v22 = [v21 selectSettingEntrys];

      v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      if (!(v23 >> 62))
      {
        v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);

        goto LABEL_23;
      }
    }

    v24 = __CocoaSet.count.getter();

    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_36;
    }

LABEL_23:
    if (v24 <= 0xFF)
    {
      if (v24)
      {
        v5 = v20 % v24;
        v4 = sel_setSelectedEntryIndex_;
        goto LABEL_3;
      }

      goto LABEL_37;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v25 = static os_log_type_t.default.getter();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
  log = static OS_os_log.default.getter();
  if (os_log_type_enabled(log, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v32 = v27;
    *v26 = 136315138;
    swift_getObjectType();
    v28 = _typeName(_:qualified:)();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v32);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_24234D000, log, v25, "No action to perform for this setting type: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x245D0E5A0](v27, -1, -1);
    MEMORY[0x245D0E5A0](v26, -1, -1);
  }

  else
  {
  }
}

void CAFSettingsNotificationSource.convert(message:requestContent:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v192 = a2;
  v158 = a3;
  v148 = type metadata accessor for UUID();
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v146 = v138 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for NotificationModel();
  v160 = *(v162 - 8);
  v5 = MEMORY[0x28223BE20](v162);
  v186 = v138 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v155 = v138 - v7;
  v154 = type metadata accessor for NotificationModel.Style();
  v153 = *(v154 - 8);
  v8 = MEMORY[0x28223BE20](v154);
  v151 = v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v138 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSgMd);
  MEMORY[0x28223BE20](v12 - 8);
  v150 = v138 - v13;
  v14 = type metadata accessor for NotificationModel.FancyModel();
  v157 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelV6SymbolVSgMd);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v175 = v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = v138 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelV05FancyF0V19ActionConfigurationVSgMd);
  MEMORY[0x28223BE20](v22 - 8);
  v165 = v138 - v23;
  v174 = type metadata accessor for NotificationModel.FancyModel.ActionConfiguration();
  v179 = *(v174 - 8);
  v24 = MEMORY[0x28223BE20](v174);
  v185 = v138 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v178 = v138 - v26;
  v187 = type metadata accessor for NotificationModel.TrailingButtonConfiguration();
  v190 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v169 = v138 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = type metadata accessor for NotificationModel.Symbol();
  v156 = *(v191 - 8);
  MEMORY[0x28223BE20](v191);
  v164 = v138 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelV4TextOSgMd);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = v138 - v30;
  v168 = type metadata accessor for NotificationModel.Text();
  v167 = *(v168 - 8);
  v32 = MEMORY[0x28223BE20](v168);
  v149 = v138 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v163 = v138 - v34;
  dispatch thunk of CAFAutomakerSettingsRemoteNotificationObservable.displayPanelIdentifier.getter();
  v159 = v35;
  v166 = dispatch thunk of CAFAutomakerSettingsRemoteNotificationObservable.identifier.getter();
  v173 = v36;
  v37 = dispatch thunk of CAFAutomakerSettingsRemoteNotificationObservable.userVisibleLabel.getter();
  v39 = v38;

  v40 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v40 = v37 & 0xFFFFFFFFFFFFLL;
  }

  v152 = v11;
  if (v40)
  {
    dispatch thunk of CAFAutomakerSettingsRemoteNotificationObservable.userVisibleLabel.getter();
    v188 = v41;
  }

  else
  {
    v188 = 0;
  }

  v42 = dispatch thunk of CAFAutomakerSettingsRemoteNotificationObservable.userVisibleDescription.getter();
  v44 = v43;

  v45 = HIBYTE(v44) & 0xF;
  if ((v44 & 0x2000000000000000) == 0)
  {
    v45 = v42 & 0xFFFFFFFFFFFFLL;
  }

  if (v45)
  {
    dispatch thunk of CAFAutomakerSettingsRemoteNotificationObservable.userVisibleDescription.getter();
    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  NotificationModel.Text.init(title:body:)();
  v48 = v167;
  v49 = v168;
  if ((*(v167 + 48))(v31, 1, v168) == 1)
  {

    outlined destroy of RequestTemporaryContentModel?(v31, &_s14CarPlayAssetUI17NotificationModelV4TextOSgMd);
    static os_log_type_t.default.getter();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
    v50 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    (*(v160 + 56))(v158, 1, 1, v162);
  }

  else
  {
    v143 = v47;
    (*(v48 + 32))(v163, v31, v49);
    v51 = dispatch thunk of CAFAutomakerSettingsRemoteNotificationObservable.symbolNameAndColor.getter();
    v52 = [v51 name];
    v176 = v21;
    if (v52)
    {
      v53 = v52;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;
    }

    else
    {
      v55 = 0xE000000000000000;
    }

    v56 = UIColorFromCAFImageColor([v51 color]);
    v57 = MEMORY[0x245D0CE70](v56);

    v144 = v57;
    NotificationModel.Symbol.init(name:color:)();
    v58 = dispatch thunk of CAFAutomakerSettingsRemoteNotificationObservable.trailingButton.getter();
    v59 = [v58 type];

    v145 = v51;
    if (v59 == 1)
    {
      v60 = 0x8000000242428DB0;
    }

    else if (v59 == 2)
    {
      v60 = 0x8000000242428D90;
    }

    else
    {
      v60 = 0xE000000000000000;
    }

    v142 = v55;
    v61 = swift_allocObject();
    v62 = v189;
    swift_weakInit();
    v63 = swift_allocObject();
    v63[2] = v61;
    v64 = v192;
    v63[3] = v192;
    v63[4] = a1;

    v141 = v64;
    v65 = a1;
    v140 = v60;
    NotificationModel.TrailingButtonConfiguration.init(symbolName:handler:)();
    v138[1] = v65;
    *(v62 + 80) = dispatch thunk of CAFAutomakerSettingsRemoteNotificationObservable.automakerSettingsNotificationButtons.getter();

    v66 = *(*(v62 + 80) + 16);

    v183 = v66;
    v184 = v67;
    if (v66)
    {
      v68 = 0;
      v181 = (v179 + 48);
      v182 = (v179 + 56);
      v180 = (v179 + 32);
      v192 = MEMORY[0x277D84F90];
      v69 = (v67 + 40);
      v71 = v190;
      v70 = v191;
      v72 = v165;
      v73 = v174;
      while (v68 < *(v184 + 16))
      {
        v76 = v16;
        v77 = *v69;
        v78 = *(v189 + 40);
        if (v78)
        {
          v79 = *(v69 - 1);
          v80 = *(v78 + 16);

          if (v80 && (v81 = specialized __RawDictionaryStorage.find<A>(_:)(v79, v77), (v82 & 1) != 0))
          {
            v83 = *(*(v78 + 56) + 8 * v81);
            objc_opt_self();
            v84 = swift_dynamicCastObjCClass();
            v85 = v83;
            if (v84)
            {
              v172 = [v84 on];
            }

            else
            {
              v172 = 0;
            }

            specialized CAFSettingsNotificationSource.getSettingsButtonLabel(setting:)();
            v171 = v87;
            v177 = v88;
            objc_opt_self();
            v89 = swift_dynamicCastObjCClass();
            v90 = v14;
            if (v89)
            {
              v91 = v89;
              v92 = [v89 selectedEntryIndex];
              v93 = [v91 selectSettingEntryList];
              v94 = [v93 objectAtIndex_];
              v170 = [v94 disabled];
            }

            else
            {
              v170 = [v85 disabled];
            }

            v71 = v190;
            v70 = v191;
            v95 = v176;
            CAFSettingsNotificationSource.getSettingsButtonSymbol(setting:)(v176);
            if (v177)
            {
              if (v68 > 0xFF)
              {
                goto LABEL_54;
              }

              outlined init with copy of NotificationModel.Symbol?(v176, v175, &_s14CarPlayAssetUI17NotificationModelV6SymbolVSgMd);
              v96 = swift_allocObject();
              swift_weakInit();
              v97 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v98 = swift_allocObject();
              *(v98 + 16) = v97;
              *(v98 + 24) = v68;
              v99 = v173;
              *(v98 + 32) = v166;
              *(v98 + 40) = v99;
              v161 = v85;
              *(v98 + 48) = v170;
              *(v98 + 56) = v96;

              v72 = v165;

              v14 = v90;
              NotificationModel.FancyModel.ActionConfiguration.init(id:symbol:title:pressed:highlighted:disabled:handler:)();

              outlined destroy of RequestTemporaryContentModel?(v176, &_s14CarPlayAssetUI17NotificationModelV6SymbolVSgMd);
              v71 = v190;

              v70 = v191;

              v86 = 0;
            }

            else
            {
              outlined destroy of RequestTemporaryContentModel?(v95, &_s14CarPlayAssetUI17NotificationModelV6SymbolVSgMd);

              v86 = 1;
              v14 = v90;
            }

            v73 = v174;
          }

          else
          {
            v86 = 1;
            v71 = v190;
            v70 = v191;
          }
        }

        else
        {

          v86 = 1;
        }

        (*v182)(v72, v86, 1, v73);

        if ((*v181)(v72, 1, v73) == 1)
        {
          outlined destroy of RequestTemporaryContentModel?(v72, &_s14CarPlayAssetUI17NotificationModelV05FancyF0V19ActionConfigurationVSgMd);
          v16 = v76;
          v74 = v186;
          v75 = v187;
        }

        else
        {
          v100 = *v180;
          v101 = v178;
          (*v180)(v178, v72, v73);
          v100(v185, v101, v73);
          v16 = v76;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v192 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v192[2] + 1, 1, v192);
          }

          v75 = v187;
          v103 = v192[2];
          v102 = v192[3];
          if (v103 >= v102 >> 1)
          {
            v192 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v102 > 1, v103 + 1, 1, v192);
          }

          v104 = v192;
          v192[2] = v103 + 1;
          v100(&v104[((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * v103], v185, v73);
          v74 = v186;
          v71 = v190;
          v70 = v191;
        }

        ++v68;
        v69 += 2;
        if (v183 == v68)
        {
          goto LABEL_49;
        }
      }

      __break(1u);
LABEL_54:
      __break(1u);
    }

    else
    {
      v192 = MEMORY[0x277D84F90];
      v74 = v186;
      v75 = v187;
      v71 = v190;
      v70 = v191;
LABEL_49:
      v139 = v14;

      (*(v167 + 16))(v149, v163, v168);
      v105 = v156;
      v106 = v175;
      (*(v156 + 16))(v175, v164, v70);
      (*(v105 + 56))(v106, 0, 1, v70);
      v107 = v150;
      (*(v71 + 16))(v150, v169, v75);
      (*(v71 + 56))(v107, 0, 1, v75);
      v108 = swift_allocObject();
      v109 = v141;
      *(v108 + 16) = v141;
      v110 = v109;
      NotificationModel.FancyModel.init(text:symbol:trailingButtonConfiguration:actionButtons:dismissalHandler:)();
      v111 = *(v157 + 16);
      v112 = v16;
      v113 = v152;
      v192 = v112;
      v111(v152);
      v114 = v153;
      v115 = v154;
      (*(v153 + 104))(v113, *MEMORY[0x277CF8BE0], v154);
      (*(v114 + 16))(v151, v113, v115);
      v116 = v155;
      NotificationModel.init(id:style:)();
      LODWORD(v106) = static os_log_type_t.default.getter();
      v117 = v160;
      (*(v160 + 16))(v74, v116, v162);
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
      v118 = v74;
      v119 = static OS_os_log.default.getter();
      LODWORD(v189) = v106;
      if (os_log_type_enabled(v119, v106))
      {
        v120 = swift_slowAlloc();
        v121 = v114;
        v188 = swift_slowAlloc();
        v193 = v188;
        *v120 = 136315394;
        v122 = CAFAutomakerSettingsRemoteNotificationObservable.observed.getter();
        v123 = v146;
        CAFService.id.getter();

        lazy protocol witness table accessor for type NotificationModel and conformance NotificationModel(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        v124 = v148;
        v125 = dispatch thunk of CustomStringConvertible.description.getter();
        v127 = v126;
        (*(v147 + 8))(v123, v124);
        v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v127, &v193);

        *(v120 + 4) = v128;
        *(v120 + 12) = 2080;
        v129 = NotificationModel.description.getter();
        v131 = v130;
        v132 = v118;
        v133 = v162;
        (*(v117 + 8))(v132, v162);
        v134 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v131, &v193);

        *(v120 + 14) = v134;
        _os_log_impl(&dword_24234D000, v119, v189, "Converted notification (message.id = %s) to %s", v120, 0x16u);
        v135 = v188;
        swift_arrayDestroy();
        MEMORY[0x245D0E5A0](v135, -1, -1);
        v136 = v120;
        v116 = v155;
        MEMORY[0x245D0E5A0](v136, -1, -1);

        (*(v121 + 8))(v113, v154);
        (*(v157 + 8))(v192, v139);
        (*(v190 + 8))(v169, v187);
      }

      else
      {

        v133 = v162;
        (*(v117 + 8))(v74, v162);
        (*(v114 + 8))(v113, v115);
        (*(v157 + 8))(v192, v139);
        (*(v71 + 8))(v169, v187);
      }

      (*(v156 + 8))(v164, v191);
      (*(v167 + 8))(v163, v168);
      v137 = v158;
      (*(v117 + 32))(v158, v116, v133);
      (*(v117 + 56))(v137, 0, 1, v133);
    }
  }
}

uint64_t closure #1 in CAFSettingsNotificationSource.convert(message:requestContent:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    dispatch thunk of CAFRequestTemporaryContentObservable.on.setter();
    dispatch thunk of CAFAutomakerSettingsRemoteNotificationObservable.trailingButtonState.setter();
    v2 = dispatch thunk of CAFAutomakerSettingsRemoteNotificationObservable.trailingButton.getter();
    v3 = [v2 contentURLAction];

    if (v3)
    {
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;

      static os_log_type_t.info.getter();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
      v7 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      (*(v1 + 48))(v4, v6);
    }
  }

  return result;
}

void specialized closure #1 in closure #2 in CAFSettingsNotificationSource.convert(message:requestContent:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (a2 > 0xFF)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v10 = Strong;
  v19 = a4;
  v11 = static os_log_type_t.info.getter();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log);
  v12 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v20);
    *(v13 + 12) = 256;
    *(v13 + 14) = a2;
    _os_log_impl(&dword_24234D000, v12, v11, "Notification (%s) button %hhu pressed", v13, 0xFu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x245D0E5A0](v14, -1, -1);
    MEMORY[0x245D0E5A0](v13, -1, -1);
  }

  if (a5)
  {
    v15 = static os_log_type_t.info.getter();
    v16 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v16, v15))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20[0] = v18;
      *v17 = 136315394;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, v19, v20);
      *(v17 + 12) = 256;
      *(v17 + 14) = a2;
      _os_log_impl(&dword_24234D000, v16, v15, "Notification (%s) button %hhu is disabled.", v17, 0xFu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x245D0E5A0](v18, -1, -1);
      MEMORY[0x245D0E5A0](v17, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      CAFSettingsNotificationSource.handleActionButtonPress(for:)();
    }
  }
}

uint64_t CAFSettingsNotificationSource.deinit()
{

  return v0;
}

uint64_t CAFSettingsNotificationSource.__deallocating_deinit()
{
  CAFSettingsNotificationSource.deinit();

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t protocol witness for CAFDataSource.output.getter in conformance CAFSettingsNotificationSource()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGGMd);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - v2;
  v6[1] = CAFNotificationSource.notification.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<NotificationModel?, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
  lazy protocol witness table accessor for type NotificationModel? and conformance <A> A?();
  Publisher<>.removeDuplicates()();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<AnyPublisher<NotificationModel?, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGGMd);
  v4 = Publisher.eraseToAnyPublisher()();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_2423BAE80()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void specialized CAFSettingsNotificationSource.getSettingsButtonLabel(setting:)()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (!v0)
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = [v10 notificationInfo];
      if (!v11)
      {
        return;
      }
    }

    else
    {
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (!v12)
      {
        objc_opt_self();
        v15 = swift_dynamicCastObjCClass();
        if (!v15)
        {
          return;
        }

        v16 = v15;
        v17 = [v15 on];
        v18 = [v16 BOOLeanNotificationInfo];
        if (v17)
        {
          if (!v18)
          {
            return;
          }

          v13 = v18;
          v14 = [v18 onUserVisibleLabel];
        }

        else
        {
          if (!v18)
          {
            return;
          }

          v13 = v18;
          v14 = [v18 offUserVisibleLabel];
        }

        goto LABEL_14;
      }

      v11 = [v12 notificationInfo];
      if (!v11)
      {
        return;
      }
    }

    v13 = v11;
    v14 = [v11 userVisibleLabel];
LABEL_14:
    v9 = v14;

    if (v9)
    {
      goto LABEL_7;
    }

    return;
  }

  v1 = v0;
  v2 = [v0 selectedEntryIndex];
  v3 = [v1 selectSettingEntryListNotificationInfo];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 selectSettingNotificationEntrys];

    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFSelectSettingNotificationEntry);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x245D0D9A0](v2, v6);
    }

    else
    {
      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v2)
      {
        __break(1u);
        return;
      }

      v7 = *(v6 + 8 * v2 + 32);
    }

    v8 = v7;

    v9 = [v8 userVisibleLabel];

    if (v9)
    {
LABEL_7:
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }
}

uint64_t sub_2423BB150()
{
  MEMORY[0x245D0E610](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2423BB188()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2423BB1E4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t CAFDefrost.symbolName.getter()
{
  v1 = type metadata accessor for CAUVehicleLayoutKey();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CAFDefrost();
  CAFPositionedRequired.layoutKey.getter();
  v5 = (*(v2 + 88))(v4, v1);
  if (v5 == *MEMORY[0x277CF8808])
  {
    return 0xD00000000000001FLL;
  }

  if (v5 == *MEMORY[0x277CF8820])
  {
    return 0xD000000000000020;
  }

  if (v5 == *MEMORY[0x277CF8800])
  {
    v7 = [v0 car];
    if (v7 && (v8 = v7, v9 = [v7 rightHandDrive], v8, v9))
    {
      return 0xD000000000000020;
    }

    else
    {
      return 0xD00000000000001FLL;
    }
  }

  else if (v5 == *MEMORY[0x277CF8840])
  {
    if ([v0 hasBlownAir])
    {
      return 0xD00000000000001FLL;
    }

    else
    {
      return 0xD000000000000017;
    }
  }

  else if (v5 == *MEMORY[0x277CF8818])
  {
    return 0xD00000000000001ELL;
  }

  else
  {
    (*(v2 + 8))(v4, v1);
    return 0x7661772E74616568;
  }
}

unint64_t type metadata accessor for CAFDefrost()
{
  result = lazy cache variable for type metadata for CAFDefrost;
  if (!lazy cache variable for type metadata for CAFDefrost)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFDefrost);
  }

  return result;
}

uint64_t CAFUIRoundedButton.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy5CAFUI18CAFUIRoundedButtonVGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy5CAFUI18CAFUIRoundedButtonVGAA12_FrameLayoutVGMd) + 36));
  *v5 = v12;
  v5[1] = v13;
  v5[2] = v14;
  LODWORD(a1) = static HierarchicalShapeStyle.tertiary.getter();
  v6 = static Edge.Set.all.getter();
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy5CAFUI18CAFUIRoundedButtonVGAA12_FrameLayoutVGAA016_BackgroundStyleF0VyAA017HierarchicalShapeM0VGGMd) + 36);
  *v7 = a1;
  *(v7 + 4) = v6;
  v8 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA014_ViewModifier_D0Vy5CAFUI18CAFUIRoundedButtonVGAA12_FrameLayoutVGAA016_BackgroundStyleF0VyAA017HierarchicalShapeM0VGGAA022_EnvironmentKeyWritingF0VyAA5ColorVSgGGMd) + 36));
  *v10 = KeyPath;
  v10[1] = v8;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA014_ViewModifier_D0Vy5CAFUI18CAFUIRoundedButtonVGAA12_FrameLayoutVGAA016_BackgroundStyleF0VyAA017HierarchicalShapeM0VGGAA022_EnvironmentKeyWritingF0VyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGMd);
  *(a2 + *(result + 36)) = 256;
  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance CAFUIRoundedButton@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy5CAFUI18CAFUIRoundedButtonVGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy5CAFUI18CAFUIRoundedButtonVGAA12_FrameLayoutVGMd) + 36));
  *v5 = v12;
  v5[1] = v13;
  v5[2] = v14;
  LODWORD(a1) = static HierarchicalShapeStyle.tertiary.getter();
  v6 = static Edge.Set.all.getter();
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy5CAFUI18CAFUIRoundedButtonVGAA12_FrameLayoutVGAA016_BackgroundStyleF0VyAA017HierarchicalShapeM0VGGMd) + 36);
  *v7 = a1;
  *(v7 + 4) = v6;
  v8 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA014_ViewModifier_D0Vy5CAFUI18CAFUIRoundedButtonVGAA12_FrameLayoutVGAA016_BackgroundStyleF0VyAA017HierarchicalShapeM0VGGAA022_EnvironmentKeyWritingF0VyAA5ColorVSgGGMd) + 36));
  *v10 = KeyPath;
  v10[1] = v8;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA014_ViewModifier_D0Vy5CAFUI18CAFUIRoundedButtonVGAA12_FrameLayoutVGAA016_BackgroundStyleF0VyAA017HierarchicalShapeM0VGGAA022_EnvironmentKeyWritingF0VyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGMd);
  *(a2 + *(result + 36)) = 256;
  return result;
}

uint64_t key path getter for EnvironmentValues.foregroundColor : EnvironmentValues, serialized@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2423BB854@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CAFUIRoundedButton>, _FrameLayout>, _BackgroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CAFUIRoundedButton>, _FrameLayout>, _BackgroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CAFUIRoundedButton>, _FrameLayout>, _BackgroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA014_ViewModifier_D0Vy5CAFUI18CAFUIRoundedButtonVGAA12_FrameLayoutVGAA016_BackgroundStyleF0VyAA017HierarchicalShapeM0VGGAA022_EnvironmentKeyWritingF0VyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CAFUIRoundedButton>, _FrameLayout>, _BackgroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type _ClipEffect<Circle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA6CircleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CAFUIRoundedButton>, _FrameLayout>, _BackgroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CAFUIRoundedButton>, _FrameLayout>, _BackgroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CAFUIRoundedButton>, _FrameLayout>, _BackgroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CAFUIRoundedButton>, _FrameLayout>, _BackgroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA014_ViewModifier_D0Vy5CAFUI18CAFUIRoundedButtonVGAA12_FrameLayoutVGAA016_BackgroundStyleF0VyAA017HierarchicalShapeM0VGGAA022_EnvironmentKeyWritingF0VyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<CAFUIRoundedButton>, _FrameLayout>, _BackgroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CAFUIRoundedButton>, _FrameLayout>, _BackgroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<CAFUIRoundedButton>, _FrameLayout>, _BackgroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<CAFUIRoundedButton>, _FrameLayout>, _BackgroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<CAFUIRoundedButton>, _FrameLayout>, _BackgroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy5CAFUI18CAFUIRoundedButtonVGAA12_FrameLayoutVGAA016_BackgroundStyleF0VyAA017HierarchicalShapeM0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<CAFUIRoundedButton>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<HierarchicalShapeStyle> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA017HierarchicalShapeD0VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<CAFUIRoundedButton>, _FrameLayout>, _BackgroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<CAFUIRoundedButton>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<CAFUIRoundedButton>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<CAFUIRoundedButton>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy5CAFUI18CAFUIRoundedButtonVGAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type _ViewModifier_Content<CAFUIRoundedButton> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy5CAFUI18CAFUIRoundedButtonVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<CAFUIRoundedButton>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

UIBarButtonItem_optional __swiftcall CAUAssetLibraryManager.createAudioLogoBarButton()()
{
  v0 = type metadata accessor for CAUResource();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = dispatch thunk of CAUAssetLibraryManager.assetLibrary.getter();
  if (v4)
  {
    v6 = v4;
    (*(v1 + 104))(v3, *MEMORY[0x277CF87D0], v0);
    v7 = CAUAssetLibrary.asset(for:)(v3);
    (*(v1 + 8))(v3, v0);
    v8 = [v7 imageWithRenderingMode_];
    v9 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
    [v9 setContentMode_];
    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    v10 = [v9 heightAnchor];
    v11 = [v10 constraintEqualToConstant_];

    [v11 setActive_];
    v12 = [v9 widthAnchor];
    v13 = [v12 constraintLessThanOrEqualToConstant_];

    [v13 setActive_];
    v14 = [objc_opt_self() systemGrayColor];
    [v9 setTintColor_];

    v15 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];
    v4 = v15;
  }

  result.value.super.super.isa = v4;
  result.is_nil = v5;
  return result;
}

char *CAFUIBadgeView.init(text:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC5CAFUI14CAFUIBadgeView____lazy_storage___label] = 0;
  v31.receiver = v2;
  v31.super_class = type metadata accessor for CAFUIBadgeView();
  v5 = objc_msgSendSuper2(&v31, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 systemRedColor];
  [v7 setBackgroundColor_];

  v9 = CAFUIBadgeView.label.getter();
  [v7 addSubview_];

  LODWORD(v10) = 1148846080;
  [v7 setContentHuggingPriority:0 forAxis:v10];
  LODWORD(v11) = 1148846080;
  [v7 setContentCompressionResistancePriority:0 forAxis:v11];
  v12 = OBJC_IVAR____TtC5CAFUI14CAFUIBadgeView____lazy_storage___label;
  v13 = *&v7[OBJC_IVAR____TtC5CAFUI14CAFUIBadgeView____lazy_storage___label];
  if (a2)
  {
    v14 = MEMORY[0x245D0D180](a1, a2);
  }

  else
  {
    v14 = 0;
  }

  [v13 setText_];

  v15 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_242423B90;
  v17 = [*&v7[v12] topAnchor];
  v18 = [v7 topAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v16 + 32) = v19;
  v20 = [*&v7[v12] leadingAnchor];
  v21 = [v7 leadingAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v16 + 40) = v22;
  v23 = [*&v7[v12] bottomAnchor];
  v24 = [v7 bottomAnchor];
  v25 = [v23 constraintEqualToAnchor_];

  *(v16 + 48) = v25;
  v26 = [*&v7[v12] trailingAnchor];
  v27 = [v7 trailingAnchor];

  v28 = [v26 constraintEqualToAnchor_];
  *(v16 + 56) = v28;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v15 activateConstraints_];

  return v7;
}

id CAFUIBadgeView.label.getter()
{
  v1 = OBJC_IVAR____TtC5CAFUI14CAFUIBadgeView____lazy_storage___label;
  v2 = *(v0 + OBJC_IVAR____TtC5CAFUI14CAFUIBadgeView____lazy_storage___label);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5CAFUI14CAFUIBadgeView____lazy_storage___label);
  }

  else
  {
    v4 = closure #1 in CAFUIBadgeView.label.getter();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in CAFUIBadgeView.label.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = [objc_opt_self() boldSystemFontOfSize_];
  [v0 setFont_];

  v2 = objc_allocWithZone(MEMORY[0x277D75348]);
  v6[4] = closure #1 in closure #1 in CAFUIBadgeView.label.getter;
  v6[5] = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  v6[3] = &block_descriptor_4;
  v3 = _Block_copy(v6);
  v4 = [v2 initWithDynamicProvider_];
  _Block_release(v3);

  [v0 setTextColor_];

  [v0 setTextAlignment_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  return v0;
}

id closure #1 in closure #1 in CAFUIBadgeView.label.getter()
{
  v0 = [objc_opt_self() whiteColor];

  return v0;
}

double CAFUIBadgeView.intrinsicContentSize.getter()
{
  v0 = CAFUIBadgeView.label.getter();
  [v0 intrinsicContentSize];
  v2 = v1;

  return v2 + 10.0;
}

CGSize __swiftcall CAFUIBadgeView.sizeThatFits(_:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  v3 = CAFUIBadgeView.label.getter();
  [v3 sizeThatFits_];
  v5 = v4;
  v7 = v6;

  v8 = v5 + 10.0;
  v9 = v7 + 4.0;
  result.height = v9;
  result.width = v8;
  return result;
}

Swift::Void __swiftcall CAFUIBadgeView.layoutSubviews()()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for CAFUIBadgeView();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = [v0 layer];
  [v0 bounds];
  [v1 setCornerRadius_];
}

id CAFUIBadgeView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CAFUIBadgeView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFUIBadgeView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t CAFUICabinAssetCoordinator.cabinImage.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

id CAFUICabinAssetCoordinator.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - v3;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy13CarAssetUtils15CAUAssetLibraryCSg_GMd);
  v5 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy13CarAssetUtils15CAUAssetLibraryCSg_GSo9NSRunLoopCGMd);
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7UIImageCSgGMd);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  v15 = OBJC_IVAR____TtC5CAFUI26CAFUICabinAssetCoordinator_assetManager;
  type metadata accessor for CAUAssetLibraryManager();
  swift_allocObject();
  *&v0[v15] = CAUAssetLibraryManager.init()();
  v16 = OBJC_IVAR____TtC5CAFUI26CAFUICabinAssetCoordinator__cabinImage;
  v28 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7UIImageCSgMd);
  Published.init(initialValue:)();
  (*(v12 + 32))(&v1[v16], v14, v11);
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    v17 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v17 = MEMORY[0x277D84FA0];
  }

  *&v1[OBJC_IVAR____TtC5CAFUI26CAFUICabinAssetCoordinator_cancellables] = v17;
  v18 = type metadata accessor for CAFUICabinAssetCoordinator();
  v29.receiver = v1;
  v29.super_class = v18;
  v19 = objc_msgSendSuper2(&v29, sel_init);

  dispatch thunk of CAUAssetLibraryManager.$assetLibrary.getter();

  v20 = [objc_opt_self() mainRunLoop];
  v28 = v20;
  v21 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
  type metadata accessor for NSRunLoop();
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Published<CAUAssetLibrary?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy13CarAssetUtils15CAUAssetLibraryCSg_GMd);
  lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, type metadata accessor for NSRunLoop);
  v22 = v25;
  Publisher.receive<A>(on:options:)();
  outlined destroy of RequestTemporaryContentModel?(v4, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

  (*(v5 + 8))(v7, v22);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Published<CAUAssetLibrary?>.Publisher, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy13CarAssetUtils15CAUAssetLibraryCSg_GSo9NSRunLoopCGMd);
  v23 = v27;
  Publisher<>.sink(receiveValue:)();

  (*(v26 + 8))(v10, v23);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v19;
}

void closure #1 in CAFUICabinAssetCoordinator.init()(void **a1)
{
  v2 = type metadata accessor for CAUResource();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v6)
    {
      (*(v3 + 104))(v5, *MEMORY[0x277CF87E0], v2);
      v8 = v6;
      v9 = CAUAssetLibrary.asset(for:)(v5);
      (*(v3 + 8))(v5, v2);
      swift_getKeyPath();
      swift_getKeyPath();
      v11[1] = v9;
      v10 = v9;
      static Published.subscript.setter();
    }

    else
    {
    }
  }
}

id CAFUICabinAssetCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFUICabinAssetCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFUICabinAssetCoordinator@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFUICabinAssetCoordinator();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

id implicit closure #2 in implicit closure #1 in variable initialization expression of CAFUICabinView._cabinCoordinator()
{
  v0 = objc_allocWithZone(type metadata accessor for CAFUICabinAssetCoordinator());

  return [v0 init];
}

__n128 CAFUICabinView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = static Alignment.center.getter();
  v6 = v5;
  closure #1 in CAFUICabinView.body.getter(v3, &v10);
  v16 = v12;
  v17[0] = v13[0];
  *(v17 + 9) = *(v13 + 9);
  v14 = v10;
  v15 = v11;
  v18[2] = v12;
  v19[0] = v13[0];
  *(v19 + 9) = *(v13 + 9);
  v18[0] = v10;
  v18[1] = v11;
  outlined init with copy of NotificationModel.Symbol?(&v14, &v9, &_s7SwiftUI19_ConditionalContentVyAA6VStackVyAA08ModifiedD0VyAGyAA5ImageVAA18_AspectRatioLayoutVGAA16_OverlayModifierVyAA7AnyViewVSgGGGAGyAGyAGyAA9RectangleVAKGAA022_EnvironmentKeyWritingL0VyAA5ColorVSgGGARGGMd);
  outlined destroy of RequestTemporaryContentModel?(v18, &_s7SwiftUI19_ConditionalContentVyAA6VStackVyAA08ModifiedD0VyAGyAA5ImageVAA18_AspectRatioLayoutVGAA16_OverlayModifierVyAA7AnyViewVSgGGGAGyAGyAGyAA9RectangleVAKGAA022_EnvironmentKeyWritingL0VyAA5ColorVSgGGARGGMd);
  *a1 = v4;
  *(a1 + 8) = v6;
  v7 = v17[0];
  *(a1 + 48) = v16;
  *(a1 + 64) = v7;
  *(a1 + 73) = *(v17 + 9);
  result = v15;
  *(a1 + 16) = v14;
  *(a1 + 32) = result;
  return result;
}

__n128 closure #1 in CAFUICabinView.body.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CAFUICabinAssetCoordinator();
  lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop(&lazy protocol witness table cache variable for type CAFUICabinAssetCoordinator and conformance CAFUICabinAssetCoordinator, type metadata accessor for CAFUICabinAssetCoordinator);
  v8 = StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v9 = v32;
  if (v32)
  {
    v10 = static HorizontalAlignment.center.getter();
    v27 = 1;
    v20 = v9;
    Image.init(uiImage:)();
    (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
    v11 = Image.resizable(capInsets:resizingMode:)();

    (*(v5 + 8))(v7, v4);
    v12 = static Alignment.center.getter();
    v21 = 1;
    v22[0] = v10;
    v22[1] = 0;
    v23.n128_u8[0] = v27;
    *(v23.n128_u32 + 1) = v32;
    v23.n128_u32[1] = *(&v32 + 3);
    v23.n128_u64[1] = v11;
    *&v24 = 0;
    WORD4(v24) = 1;
    HIWORD(v24) = WORD2(v28);
    *(&v24 + 10) = v28;
    *&v25 = a1;
    *(&v25 + 1) = v12;
    v26 = v13;
    v34 = v24;
    *v35 = v25;
    *&v35[16] = v13;
    v32 = v10;
    v33 = v23;
    v27 = 0;
    v35[24] = 0;

    outlined init with copy of NotificationModel.Symbol?(v22, &v28, &_s7SwiftUI6VStackVyAA15ModifiedContentVyAEyAA5ImageVAA18_AspectRatioLayoutVGAA16_OverlayModifierVyAA7AnyViewVSgGGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA15ModifiedContentVyAEyAA5ImageVAA18_AspectRatioLayoutVGAA16_OverlayModifierVyAA7AnyViewVSgGGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA08_OverlayL0VyAA7AnyViewVSgGGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type VStack<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _OverlayModifier<AnyView?>>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA15ModifiedContentVyAEyAA5ImageVAA18_AspectRatioLayoutVGAA16_OverlayModifierVyAA7AnyViewVSgGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OverlayModifier<AnyView?>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();

    outlined destroy of RequestTemporaryContentModel?(v22, &_s7SwiftUI6VStackVyAA15ModifiedContentVyAEyAA5ImageVAA18_AspectRatioLayoutVGAA16_OverlayModifierVyAA7AnyViewVSgGGGMd);
    v34 = v30;
    *v35 = *v31;
    *&v35[9] = *&v31[9];
    v32 = v28;
    v33 = v29;
  }

  else
  {
    v14 = static Color.clear.getter();
    KeyPath = swift_getKeyPath();
    v16 = static Alignment.center.getter();
    LOBYTE(v32) = 0;
    LOBYTE(v22[0]) = 1;
    *&v28 = 0x3FF0000000000000;
    WORD4(v28) = 0;
    v29.n128_u64[0] = KeyPath;
    v29.n128_u64[1] = v14;
    *&v30 = a1;
    *(&v30 + 1) = v16;
    *v31 = v17;
    v31[24] = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA15ModifiedContentVyAEyAA5ImageVAA18_AspectRatioLayoutVGAA16_OverlayModifierVyAA7AnyViewVSgGGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA08_OverlayL0VyAA7AnyViewVSgGGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type VStack<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _OverlayModifier<AnyView?>>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA15ModifiedContentVyAEyAA5ImageVAA18_AspectRatioLayoutVGAA16_OverlayModifierVyAA7AnyViewVSgGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OverlayModifier<AnyView?>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
  }

  v18 = *v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v18;
  *(a2 + 57) = *&v35[9];
  result = v33;
  *a2 = v32;
  *(a2 + 16) = result;
  return result;
}

__n128 protocol witness for View.body.getter in conformance CAFUICabinView@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = static Alignment.center.getter();
  v6 = v5;
  closure #1 in CAFUICabinView.body.getter(v3, &v10);
  v16 = v12;
  v17[0] = v13[0];
  *(v17 + 9) = *(v13 + 9);
  v14 = v10;
  v15 = v11;
  v18[2] = v12;
  v19[0] = v13[0];
  *(v19 + 9) = *(v13 + 9);
  v18[0] = v10;
  v18[1] = v11;
  outlined init with copy of NotificationModel.Symbol?(&v14, &v9, &_s7SwiftUI19_ConditionalContentVyAA6VStackVyAA08ModifiedD0VyAGyAA5ImageVAA18_AspectRatioLayoutVGAA16_OverlayModifierVyAA7AnyViewVSgGGGAGyAGyAGyAA9RectangleVAKGAA022_EnvironmentKeyWritingL0VyAA5ColorVSgGGARGGMd);
  outlined destroy of RequestTemporaryContentModel?(v18, &_s7SwiftUI19_ConditionalContentVyAA6VStackVyAA08ModifiedD0VyAGyAA5ImageVAA18_AspectRatioLayoutVGAA16_OverlayModifierVyAA7AnyViewVSgGGGAGyAGyAGyAA9RectangleVAKGAA022_EnvironmentKeyWritingL0VyAA5ColorVSgGGARGGMd);
  *a1 = v4;
  *(a1 + 8) = v6;
  v7 = v17[0];
  *(a1 + 48) = v16;
  *(a1 + 64) = v7;
  *(a1 + 73) = *(v17 + 9);
  result = v15;
  *(a1 + 16) = v14;
  *(a1 + 32) = result;
  return result;
}

uint64_t type metadata accessor for CAFUICabinAssetCoordinator()
{
  result = type metadata singleton initialization cache for CAFUICabinAssetCoordinator;
  if (!type metadata singleton initialization cache for CAFUICabinAssetCoordinator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for CAFUICabinAssetCoordinator()
{
  type metadata accessor for Published<UIImage?>();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<UIImage?>()
{
  if (!lazy cache variable for type metadata for Published<UIImage?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo7UIImageCSgMd);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<UIImage?>);
    }
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CAFUICabinView(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for CAFUICabinView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t key path getter for CAFUICabinAssetCoordinator.cabinImage : CAFUICabinAssetCoordinator@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for CAFUICabinAssetCoordinator.cabinImage : CAFUICabinAssetCoordinator(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return static Published.subscript.setter();
}

unint64_t type metadata accessor for NSRunLoop()
{
  result = lazy cache variable for type metadata for NSRunLoop;
  if (!lazy cache variable for type metadata for NSRunLoop)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSRunLoop);
  }

  return result;
}

uint64_t sub_2423BDCA4()
{
  MEMORY[0x245D0E610](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = __CocoaSet.count.getter();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  v20 = v1;
  while (v21)
  {
    result = MEMORY[0x245D0D9A0](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    type metadata accessor for AnyCancellable();
    lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v7 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8]);
      do
      {
        result = dispatch thunk of static Equatable.== infix(_:_:)();
        if (result)
        {

          v1 = v20;
          goto LABEL_11;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v7 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v1 = v20;
    }

    *(v7 + 8 * v12) = v14 | v13;
    *(*(v3 + 48) + 8 * v11) = v8;
    v16 = *(v3 + 16);
    v9 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v17;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OverlayModifier<AnyView?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OverlayModifier<AnyView?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OverlayModifier<AnyView?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA08_OverlayL0VyAA7AnyViewVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Rectangle, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type _OverlayModifier<AnyView?> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA7AnyViewVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OverlayModifier<AnyView?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Rectangle, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Rectangle, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Rectangle, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA9RectangleVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Rectangle, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Rectangle, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Rectangle, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Rectangle, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Rectangle, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA9RectangleVAA18_AspectRatioLayoutVGMd);
    lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Rectangle, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>);
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

void CAFUIBalanceFadeView.init(soundDistributionObservable:showKnobControlButtons:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd);
  State.init(wrappedValue:)();
  *(a2 + 32) = v12;
  *(a2 + 40) = BYTE8(v12);
  *(a2 + 48) = v13;
  __asm { FMOV            V0.2D, #0.5 }

  v11 = _Q0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreGraphics7CGFloatV_ACtMd);
  State.init(wrappedValue:)();
  *(a2 + 56) = v12;
  *(a2 + 72) = v13;
  type metadata accessor for CAFUIBalanceFadeView.ImmediateValues(0);
  swift_allocObject();
  Published.init(initialValue:)();
  State.init(wrappedValue:)();
  *(a2 + 80) = v11;
  type metadata accessor for CAFSoundDistributionObservable();
  lazy protocol witness table accessor for type CAFSoundDistributionObservable and conformance CAFSoundDistributionObservable(&lazy protocol witness table cache variable for type CAFSoundDistributionObservable and conformance CAFSoundDistributionObservable, MEMORY[0x277CF3780]);
  v9 = a1;
  *a2 = ObservedObject.init(wrappedValue:)();
  *(a2 + 8) = v10;
  State.init(wrappedValue:)();

  *(a2 + 16) = v11;
  *(a2 + 24) = *(&v11 + 1);
}

Swift::Void __swiftcall CAFUIBalanceFadeView.reset()()
{
  v1 = *(v0 + 8);
  v2 = CAFSoundDistributionObservable.observed.getter();

  CAFSoundDistribution.reset()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy5CAFUI20CAFUIBalanceFadeViewV15ImmediateValuesCGMd);
  State.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  __asm { FMOV            V0.2D, #0.5 }

  static Published.subscript.setter();
}

void CAFUIBalanceFadeCrosshair.path(in:)(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D4>, double a5@<D5>, double a6@<D6>)
{
  v25 = CGRectInset(*&a3, a6 + 1.0, a6 + 1.0);
  v14 = v25.origin.x + v25.size.width * a4;
  v15 = v25.origin.y + v25.size.height * a5;
  if (a1)
  {
    v16 = a6 + -2.0 + -1.0;
    v17 = [objc_opt_self() bezierPathWithRoundedRect:v14 - v16 cornerRadius:{v15 - v16, v16 + v16, v16 + v16, 12.0}];
    v18 = [v17 CGPath];
    Path.init(_:)();
    v19 = v24;

    v21 = v23;
    v20 = v22;
  }

  else
  {
    CAFUIBalanceFadeCrosshair.crosshairPath(rect:centerPoint:)(&v22, v25.origin.x, v25.origin.y, v25.size.width, v25.size.height, v14, v15, a6);
    v20 = v22;
    v21 = v23;
    v19 = v24;
  }

  *a2 = v20;
  *(a2 + 16) = v21;
  *(a2 + 32) = v19;
}

double CAFUIBalanceFadeCrosshair.crosshairPath(rect:centerPoint:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, double a6@<D4>, double a7@<D5>, double a8)
{
  v15 = [objc_opt_self() bezierPathWithArcCenter:1 radius:a6 startAngle:a7 endAngle:a8 clockwise:{-1.57079633, 4.71238898}];
  v16 = [v15 CGPath];
  Path.init(_:)();
  if (a6 > 26.0)
  {
    v17 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
    v58.origin.x = a2;
    v58.origin.y = a3;
    v58.size.width = a4;
    v58.size.height = a5;
    [v17 moveToPoint_];
    v59.origin.x = a2;
    v59.origin.y = a3;
    v59.size.width = a4;
    v59.size.height = a5;
    [v17 addLineToPoint_];
    v18 = [v17 CGPath];
    Path.init(_:)();
    v52 = 0x3FF0000000000000;
    v53 = 0;
    v54 = 0;
    v55 = 0x3FF0000000000000;
    v56 = 0;
    v57 = 0;
    Path.addPath(_:transform:)();
    outlined destroy of Path(v30);
  }

  v60.origin.x = a2;
  v60.origin.y = a3;
  v60.size.width = a4;
  v60.size.height = a5;
  if (a6 + a8 < CGRectGetMaxX(v60))
  {
    v19 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
    [v19 moveToPoint_];
    v61.origin.x = a2;
    v61.origin.y = a3;
    v61.size.width = a4;
    v61.size.height = a5;
    [v19 addLineToPoint_];
    v20 = [v19 CGPath];
    Path.init(_:)();
    v46 = 0x3FF0000000000000;
    v47 = 0;
    v48 = 0;
    v49 = 0x3FF0000000000000;
    v50 = 0;
    v51 = 0;
    Path.addPath(_:transform:)();
    outlined destroy of Path(v31);
  }

  if (a7 > 26.0)
  {
    v21 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
    v62.origin.x = a2;
    v62.origin.y = a3;
    v62.size.width = a4;
    v62.size.height = a5;
    [v21 moveToPoint_];
    [v21 addLineToPoint_];
    v22 = [v21 CGPath];
    Path.init(_:)();
    v40 = 0x3FF0000000000000;
    v41 = 0;
    v42 = 0;
    v43 = 0x3FF0000000000000;
    v44 = 0;
    v45 = 0;
    Path.addPath(_:transform:)();
    outlined destroy of Path(v32);
  }

  v23 = a7 + a8;
  v63.origin.x = a2;
  v63.origin.y = a3;
  v63.size.width = a4;
  v63.size.height = a5;
  if (v23 < CGRectGetMaxY(v63))
  {
    v24 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
    v64.origin.x = a2;
    v64.origin.y = a3;
    v64.size.width = a4;
    v64.size.height = a5;
    [v24 moveToPoint_];
    [v24 addLineToPoint_];
    v25 = [v24 CGPath];
    Path.init(_:)();
    v34 = 0x3FF0000000000000;
    v35 = 0;
    v36 = 0;
    v37 = 0x3FF0000000000000;
    v38 = 0;
    v39 = 0;
    Path.addPath(_:transform:)();

    outlined destroy of Path(v33);
    v15 = v24;
  }

  result = *&v27;
  *a1 = v27;
  *(a1 + 16) = v28;
  *(a1 + 32) = v29;
  return result;
}

double protocol witness for Shape.path(in:) in conformance CAFUIBalanceFadeCrosshair@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  CAFUIBalanceFadeCrosshair.path(in:)(*(v2 + 16), v6, a2, *v2, *(v2 + 8), *(v2 + 24));
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance CAFUIBalanceFadeCrosshair(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return protocol witness for CAFUIImageRepresentable.selectedIndices.modify in conformance CAFSingleSelectImageSetting;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance CAFUIBalanceFadeCrosshair(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type CAFUIBalanceFadeCrosshair and conformance CAFUIBalanceFadeCrosshair();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance CAFUIBalanceFadeCrosshair(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type CAFUIBalanceFadeCrosshair and conformance CAFUIBalanceFadeCrosshair();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t protocol witness for View.body.getter in conformance CAFUIBalanceFadeCrosshair(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CAFUIBalanceFadeCrosshair and conformance CAFUIBalanceFadeCrosshair();

  return MEMORY[0x282133738](a1, v2);
}

double CAFUIBalanceFadeView.ImmediateValues.value.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t CAFUIBalanceFadeView.ImmediateValues.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV5CAFUI20CAFUIBalanceFadeView15ImmediateValues__value;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy12CoreGraphics7CGFloatV_AFtGMd);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFUIBalanceFadeView.ImmediateValues@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAFUIBalanceFadeView.ImmediateValues(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void CAFUIBalanceFadeView.handleTapEvent(location:frame:)(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v7 = *(v6 + 8);
  v8 = a1 + -32.0;
  v9 = a2 + -32.0;
  v10 = a5 + -64.0;
  v11 = a6 + -64.0;
  static Date.timeIntervalSinceReferenceDate.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdSgGMd);
  State.wrappedValue.setter();
  v12 = v8 / v10;
  v13 = 0.0;
  if (v8 / v10 < 0.0)
  {
    v12 = 0.0;
  }

  v14 = fmin(v12, 1.0);
  if (v9 / v11 >= 0.0)
  {
    v13 = v9 / v11;
  }

  v19 = v14;
  v20 = fmin(v13, 1.0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatV_AFtGMd);
  State.wrappedValue.setter();
  v15 = v7;
  v16 = CAFSoundDistributionObservable.observed.getter();

  State.wrappedValue.getter();
  CAFSoundDistribution.balanceScale.setter(v19);

  v17 = v15;
  v18 = CAFSoundDistributionObservable.observed.getter();

  State.wrappedValue.getter();
  CAFSoundDistribution.fadeScale.setter(v20);
}

uint64_t CAFUIBalanceFadeView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyACyAA14GeometryReaderVyAA15ModifiedContentVyAA012SubscriptionE0Vy7Combine9PublishedV9PublisherVy12CoreGraphics7CGFloatV_ASt_GAA0E0PAAE19simultaneousGesture_9includingQrqd___AA0R4MaskVtAA0R0Rd__lFQOyAIy5CAFUI022AudioSettingsCrosshairE0VAA01_I13ShapeModifierVyAA9RectangleVGG_AA06_EndedR0VyAA08_ChangedR0VyAA04DragR0VGGQo_GAA023AccessibilityAttachmentZ0VGGG_AEyAA6HStackVyAEyAIyA0_0vW6ButtonVA20_G_AA6SpacerVA28_tGG_AA6VStackVyA31_GtGSgtGGMd);
  MEMORY[0x28223BE20](v3);
  v5 = (v19 - v4);
  v6 = v1[3];
  v19[2] = v1[2];
  v19[3] = v6;
  v7 = v1[5];
  v19[4] = v1[4];
  v19[5] = v7;
  v8 = v1[1];
  v19[0] = *v1;
  v19[1] = v8;
  v9 = static HorizontalAlignment.center.getter();
  *v5 = static Alignment.center.getter();
  v5[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA0F0VyAA14GeometryReaderVyAA15ModifiedContentVyAA012SubscriptionD0Vy7Combine9PublishedV9PublisherVy12CoreGraphics7CGFloatV_AYt_GAA0D0PAAE19simultaneousGesture_9includingQrqd___AA0U4MaskVtAA0U0Rd__lFQOyAOy5CAFUI022AudioSettingsCrosshairD0VAA01_L13ShapeModifierVyAA9RectangleVGG_AA06_EndedU0VyAA08_ChangedU0VyAA04DragU0VGGQo_GAA31AccessibilityAttachmentModifierVGGG_AIyAA6HStackVyAIyAOyA6_0yZ6ButtonVA26_G_AA6SpacerVA34_tGG_AA6VStackVyA37_GtGSgtGGMd);
  closure #1 in closure #1 in CAFUIBalanceFadeView.body.getter(v19, (v5 + *(v11 + 44)));
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type ZStack<TupleView<(ZStack<GeometryReader<ModifiedContent<SubscriptionView<Published<(CGFloat, CGFloat)>.Publisher, <<opaque return type of View.simultaneousGesture<A>(_:including:)>>.0>, AccessibilityAttachmentModifier>>>, TupleView<(HStack<TupleView<(ModifiedContent<AudioSettingsButton, AccessibilityAttachmentModifier>, Spacer, ModifiedContent<AudioSettingsButton, AccessibilityAttachmentModifier>)>>, VStack<TupleView<(ModifiedContent<AudioSettingsButton, AccessibilityAttachmentModifier>, Spacer, ModifiedContent<AudioSettingsButton, AccessibilityAttachmentModifier>)>>)>?)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyACyAA14GeometryReaderVyAA15ModifiedContentVyAA012SubscriptionE0Vy7Combine9PublishedV9PublisherVy12CoreGraphics7CGFloatV_ASt_GAA0E0PAAE19simultaneousGesture_9includingQrqd___AA0R4MaskVtAA0R0Rd__lFQOyAIy5CAFUI022AudioSettingsCrosshairE0VAA01_I13ShapeModifierVyAA9RectangleVGG_AA06_EndedR0VyAA08_ChangedR0VyAA04DragR0VGGQo_GAA023AccessibilityAttachmentZ0VGGG_AEyAA6HStackVyAEyAIyA0_0vW6ButtonVA20_G_AA6SpacerVA28_tGG_AA6VStackVyA31_GtGSgtGGMd);
  v12 = AnyView.init<A>(_:)();
  KeyPath = swift_getKeyPath();
  v14 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVy5CAFUI14CAFUICabinViewVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGMd) + 36));
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGMd) + 28);
  v16 = *MEMORY[0x277CDFA88];
  v17 = type metadata accessor for LayoutDirection();
  result = (*(*(v17 - 8) + 104))(v14 + v15, v16, v17);
  *v14 = KeyPath;
  *a1 = v9;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v12;
  *(a1 + 32) = implicit closure #2 in implicit closure #1 in variable initialization expression of CAFUICabinView._cabinCoordinator;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  return result;
}

uint64_t closure #1 in closure #1 in CAFUIBalanceFadeView.body.getter@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v46 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6HStackVyACyAA15ModifiedContentVy5CAFUI19AudioSettingsButtonVAA31AccessibilityAttachmentModifierVG_AA6SpacerVAMtGG_AA6VStackVyAPGtGMd);
  v3 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v43 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVy5CAFUI19AudioSettingsButtonVAA31AccessibilityAttachmentModifierVG_AA6SpacerVAMtGGMd);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVy5CAFUI19AudioSettingsButtonVAA31AccessibilityAttachmentModifierVG_AA6SpacerVAMtGGMd);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6HStackVyACyAA15ModifiedContentVy5CAFUI19AudioSettingsButtonVAA31AccessibilityAttachmentModifierVG_AA6SpacerVAMtGG_AA6VStackVyAPGtGSgMd);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v40 - v20;
  v22 = static Alignment.center.getter();
  v44 = v23;
  v45 = v22;
  v24 = swift_allocObject();
  v25 = a1[3];
  v26 = a1[4];
  v27 = a1[1];
  v24[3] = a1[2];
  v24[4] = v25;
  v28 = a1[5];
  v24[5] = v26;
  v24[6] = v28;
  v29 = a1[1];
  v24[1] = *a1;
  v24[2] = v29;
  v49 = v27;
  outlined init with copy of CAFUIBalanceFadeView(a1, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  v30 = 1;
  if (v48[0] == 1)
  {
    *v15 = static VerticalAlignment.center.getter();
    *(v15 + 1) = 0;
    v15[16] = 1;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVy5CAFUI19AudioSettingsButtonVAA31AccessibilityAttachmentModifierVG_AA6SpacerVAQtGGMd);
    closure #2 in closure #1 in closure #1 in CAFUIBalanceFadeView.body.getter(a1, &v15[*(v31 + 44)]);
    *v9 = static HorizontalAlignment.center.getter();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVy5CAFUI19AudioSettingsButtonVAA31AccessibilityAttachmentModifierVG_AA6SpacerVAQtGGMd);
    closure #3 in closure #1 in closure #1 in CAFUIBalanceFadeView.body.getter(a1, &v9[*(v32 + 44)]);
    v40 = v19;
    outlined init with copy of NotificationModel.Symbol?(v15, v13, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVy5CAFUI19AudioSettingsButtonVAA31AccessibilityAttachmentModifierVG_AA6SpacerVAMtGGMd);
    v41 = v3;
    v33 = v42;
    outlined init with copy of NotificationModel.Symbol?(v9, v42, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVy5CAFUI19AudioSettingsButtonVAA31AccessibilityAttachmentModifierVG_AA6SpacerVAMtGGMd);
    v34 = v43;
    outlined init with copy of NotificationModel.Symbol?(v13, v43, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVy5CAFUI19AudioSettingsButtonVAA31AccessibilityAttachmentModifierVG_AA6SpacerVAMtGGMd);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVy5CAFUI19AudioSettingsButtonVAA31AccessibilityAttachmentModifierVG_AA6SpacerVAMtGG_AA6VStackVyAPGtMd);
    outlined init with copy of NotificationModel.Symbol?(v33, v34 + *(v35 + 48), &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVy5CAFUI19AudioSettingsButtonVAA31AccessibilityAttachmentModifierVG_AA6SpacerVAMtGGMd);
    outlined destroy of RequestTemporaryContentModel?(v9, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVy5CAFUI19AudioSettingsButtonVAA31AccessibilityAttachmentModifierVG_AA6SpacerVAMtGGMd);
    outlined destroy of RequestTemporaryContentModel?(v15, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVy5CAFUI19AudioSettingsButtonVAA31AccessibilityAttachmentModifierVG_AA6SpacerVAMtGGMd);
    v3 = v41;
    outlined destroy of RequestTemporaryContentModel?(v33, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVy5CAFUI19AudioSettingsButtonVAA31AccessibilityAttachmentModifierVG_AA6SpacerVAMtGGMd);
    v19 = v40;
    outlined destroy of RequestTemporaryContentModel?(v13, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVy5CAFUI19AudioSettingsButtonVAA31AccessibilityAttachmentModifierVG_AA6SpacerVAMtGGMd);
    outlined init with take of TupleView<(HStack<TupleView<(ModifiedContent<AudioSettingsButton, AccessibilityAttachmentModifier>, Spacer, ModifiedContent<AudioSettingsButton, AccessibilityAttachmentModifier>)>>, VStack<TupleView<(ModifiedContent<AudioSettingsButton, AccessibilityAttachmentModifier>, Spacer, ModifiedContent<AudioSettingsButton, AccessibilityAttachmentModifier>)>>)>(v34, v21);
    v30 = 0;
  }

  (*(v3 + 56))(v21, v30, 1, v47);
  outlined init with copy of NotificationModel.Symbol?(v21, v19, &_s7SwiftUI9TupleViewVyAA6HStackVyACyAA15ModifiedContentVy5CAFUI19AudioSettingsButtonVAA31AccessibilityAttachmentModifierVG_AA6SpacerVAMtGG_AA6VStackVyAPGtGSgMd);
  v36 = v46;
  v37 = v44;
  *v46 = v45;
  v36[1] = v37;
  v36[2] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in CAFUIBalanceFadeView.body.getter;
  v36[3] = v24;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA14GeometryReaderVyAA15ModifiedContentVyAA16SubscriptionViewVy7Combine9PublishedV9PublisherVy12CoreGraphics7CGFloatV_AQt_GAA0I0PAAE19simultaneousGesture_9includingQrqd___AA0Q4MaskVtAA0Q0Rd__lFQOyAGy5CAFUI022AudioSettingsCrosshairI0VAA01_G13ShapeModifierVyAA9RectangleVGG_AA06_EndedQ0VyAA08_ChangedQ0VyAA04DragQ0VGGQo_GAA023AccessibilityAttachmentY0VGGG_AA05TupleI0VyAA6HStackVyA23_yAGyAZ0uV6ButtonVA18_G_AA6SpacerVA28_tGG_AA6VStackVyA31_GtGSgtMd);
  outlined init with copy of NotificationModel.Symbol?(v19, v36 + *(v38 + 48), &_s7SwiftUI9TupleViewVyAA6HStackVyACyAA15ModifiedContentVy5CAFUI19AudioSettingsButtonVAA31AccessibilityAttachmentModifierVG_AA6SpacerVAMtGG_AA6VStackVyAPGtGSgMd);

  outlined destroy of RequestTemporaryContentModel?(v21, &_s7SwiftUI9TupleViewVyAA6HStackVyACyAA15ModifiedContentVy5CAFUI19AudioSettingsButtonVAA31AccessibilityAttachmentModifierVG_AA6SpacerVAMtGG_AA6VStackVyAPGtGSgMd);
  outlined destroy of RequestTemporaryContentModel?(v19, &_s7SwiftUI9TupleViewVyAA6HStackVyACyAA15ModifiedContentVy5CAFUI19AudioSettingsButtonVAA31AccessibilityAttachmentModifierVG_AA6SpacerVAMtGG_AA6VStackVyAPGtGSgMd);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in CAFUIBalanceFadeView.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v61 = a2;
  v52 = type metadata accessor for DragGesture();
  v3 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15_ChangedGestureVyAA04DragD0VGMd);
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v7 = &v52 - v6;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_EndedGestureVyAA08_ChangedD0VyAA04DragD0VGGMd);
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v9 = &v52 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19simultaneousGesture_9includingQrqd___AA0E4MaskVtAA0E0Rd__lFQOyAA15ModifiedContentVy5CAFUI022AudioSettingsCrosshairC0VAA01_I13ShapeModifierVyAA9RectangleVGG_AA06_EndedE0VyAA08_ChangedE0VyAA04DragE0VGGQo_Md);
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v57 = &v52 - v10;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVy12CoreGraphics7CGFloatV_AKt_GAA0D0PAAE19simultaneousGesture_9includingQrqd___AA0L4MaskVtAA0L0Rd__lFQOyAA15ModifiedContentVy5CAFUI022AudioSettingsCrosshairD0VAA01_P13ShapeModifierVyAA9RectangleVGG_AA06_EndedL0VyAA08_ChangedL0VyAA04DragL0VGGQo_GMd);
  MEMORY[0x28223BE20](v60);
  v12 = &v52 - v11;
  v13 = type metadata accessor for LocalCoordinateSpace();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CoordinateSpaceProtocol<>.local.getter();
  GeometryProxy.frame<A>(in:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  (*(v14 + 8))(v16, v13);
  v67 = *(a1 + 32);
  v68 = *(a1 + 48);
  v62 = *(a1 + 32);
  v63 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdSgGMd);
  State.wrappedValue.getter();
  if ((LOBYTE(v65) & 1) != 0 || (v25 = v64, static Date.timeIntervalSinceReferenceDate.getter(), v26 - v25 >= 3.0))
  {
    v28 = CAFSoundDistributionObservable.observed.getter();
    v27 = CAFSoundDistribution.balanceScale.getter();
  }

  else
  {
    v62 = *(a1 + 56);
    v63 = *(a1 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatV_AFtGMd);
    State.wrappedValue.getter();
    v27 = v64;
  }

  v62 = v67;
  v63 = v68;
  State.wrappedValue.getter();
  if ((LOBYTE(v65) & 1) != 0 || (v29 = v64, static Date.timeIntervalSinceReferenceDate.getter(), v30 - v29 >= 3.0))
  {
    v32 = CAFSoundDistributionObservable.observed.getter();
    v31 = CAFSoundDistribution.fadeScale.getter();
  }

  else
  {
    v62 = *(a1 + 56);
    v63 = *(a1 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatV_AFtGMd);
    State.wrappedValue.getter();
    v31 = v65;
  }

  v64 = v27;
  v65 = v31;
  v66 = 0;
  static CoordinateSpaceProtocol<>.local.getter();
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  v33 = swift_allocObject();
  v34 = *(a1 + 48);
  *(v33 + 48) = *(a1 + 32);
  *(v33 + 64) = v34;
  v35 = *(a1 + 80);
  *(v33 + 80) = *(a1 + 64);
  *(v33 + 96) = v35;
  v36 = *(a1 + 16);
  *(v33 + 16) = *a1;
  *(v33 + 32) = v36;
  *(v33 + 112) = v18;
  *(v33 + 120) = v20;
  *(v33 + 128) = v22;
  *(v33 + 136) = v24;
  outlined init with copy of CAFUIBalanceFadeView(a1, &v62);
  lazy protocol witness table accessor for type CAFSoundDistributionObservable and conformance CAFSoundDistributionObservable(&lazy protocol witness table cache variable for type DragGesture and conformance DragGesture, MEMORY[0x277CDD730]);
  lazy protocol witness table accessor for type CAFSoundDistributionObservable and conformance CAFSoundDistributionObservable(&lazy protocol witness table cache variable for type DragGesture.Value and conformance DragGesture.Value, MEMORY[0x277CDD708]);
  v37 = v52;
  Gesture<>.onChanged(_:)();

  (*(v3 + 8))(v5, v37);
  v38 = swift_allocObject();
  v39 = *(a1 + 48);
  *(v38 + 48) = *(a1 + 32);
  *(v38 + 64) = v39;
  v40 = *(a1 + 80);
  *(v38 + 80) = *(a1 + 64);
  *(v38 + 96) = v40;
  v41 = *(a1 + 16);
  *(v38 + 16) = *a1;
  *(v38 + 32) = v41;
  *(v38 + 112) = v18;
  *(v38 + 120) = v20;
  *(v38 + 128) = v22;
  *(v38 + 136) = v24;
  outlined init with copy of CAFUIBalanceFadeView(a1, &v62);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type _ChangedGesture<DragGesture> and conformance _ChangedGesture<A>, &_s7SwiftUI15_ChangedGestureVyAA04DragD0VGMd);
  v42 = v54;
  Gesture.onEnded(_:)();

  (*(v53 + 8))(v7, v42);
  static GestureMask.all.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy5CAFUI26AudioSettingsCrosshairViewVAA01_D13ShapeModifierVyAA9RectangleVGGMd);
  lazy protocol witness table accessor for type ModifiedContent<AudioSettingsCrosshairView, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type _EndedGesture<_ChangedGesture<DragGesture>> and conformance _EndedGesture<A>, &_s7SwiftUI13_EndedGestureVyAA08_ChangedD0VyAA04DragD0VGGMd);
  v43 = v57;
  v44 = v56;
  View.simultaneousGesture<A>(_:including:)();
  (*(v55 + 8))(v9, v44);
  v62 = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy5CAFUI20CAFUIBalanceFadeViewV15ImmediateValuesCGMd);
  State.wrappedValue.getter();
  swift_beginAccess();
  v45 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy12CoreGraphics7CGFloatV_AFtGMd);
  Published.projectedValue.getter();
  swift_endAccess();

  v46 = swift_allocObject();
  v47 = *(a1 + 48);
  *(v46 + 3) = *(a1 + 32);
  *(v46 + 4) = v47;
  v48 = *(a1 + 80);
  *(v46 + 5) = *(a1 + 64);
  *(v46 + 6) = v48;
  v49 = *(a1 + 16);
  *(v46 + 1) = *a1;
  *(v46 + 2) = v49;
  (*(v58 + 32))(v12, v43, v59);
  v50 = &v12[*(v45 + 56)];
  *v50 = partial apply for closure #3 in closure #1 in closure #1 in closure #1 in closure #1 in CAFUIBalanceFadeView.body.getter;
  v50[1] = v46;
  outlined init with copy of CAFUIBalanceFadeView(a1, &v62);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type SubscriptionView<Published<(CGFloat, CGFloat)>.Publisher, <<opaque return type of View.simultaneousGesture<A>(_:including:)>>.0> and conformance SubscriptionView<A, B>, &_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVy12CoreGraphics7CGFloatV_AKt_GAA0D0PAAE19simultaneousGesture_9includingQrqd___AA0L4MaskVtAA0L0Rd__lFQOyAA15ModifiedContentVy5CAFUI022AudioSettingsCrosshairD0VAA01_P13ShapeModifierVyAA9RectangleVGG_AA06_EndedL0VyAA08_ChangedL0VyAA04DragL0VGGQo_GMd);
  View.accessibilityIdentifier(_:)();
  return sub_2423C2DD4(v12);
}

uint64_t closure #2 in closure #1 in closure #1 in CAFUIBalanceFadeView.body.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy5CAFUI19AudioSettingsButtonVAA31AccessibilityAttachmentModifierVGMd);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v27 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v27 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v15 = swift_allocObject();
  v16 = a1[3];
  v15[3] = a1[2];
  v15[4] = v16;
  v17 = a1[5];
  v15[5] = a1[4];
  v15[6] = v17;
  v18 = a1[1];
  v15[1] = *a1;
  v15[2] = v18;
  strcpy(v30, "chevron.left");
  HIBYTE(v30[6]) = 0;
  v30[7] = -5120;
  v31 = partial apply for closure #1 in closure #2 in closure #1 in closure #1 in CAFUIBalanceFadeView.body.getter;
  v32 = v15;
  outlined init with copy of CAFUIBalanceFadeView(a1, v29);
  lazy protocol witness table accessor for type AudioSettingsButton and conformance AudioSettingsButton();
  View.accessibilityIdentifier(_:)();

  v19 = swift_allocObject();
  v20 = a1[3];
  v19[3] = a1[2];
  v19[4] = v20;
  v21 = a1[5];
  v19[5] = a1[4];
  v19[6] = v21;
  v22 = a1[1];
  v19[1] = *a1;
  v19[2] = v22;
  strcpy(v30, "chevron.right");
  v30[7] = -4864;
  v31 = partial apply for closure #2 in closure #2 in closure #1 in closure #1 in CAFUIBalanceFadeView.body.getter;
  v32 = v19;
  outlined init with copy of CAFUIBalanceFadeView(a1, v29);
  View.accessibilityIdentifier(_:)();

  outlined init with copy of NotificationModel.Symbol?(v14, v9, &_s7SwiftUI15ModifiedContentVy5CAFUI19AudioSettingsButtonVAA31AccessibilityAttachmentModifierVGMd);
  outlined init with copy of NotificationModel.Symbol?(v12, v6, &_s7SwiftUI15ModifiedContentVy5CAFUI19AudioSettingsButtonVAA31AccessibilityAttachmentModifierVGMd);
  v23 = v28;
  outlined init with copy of NotificationModel.Symbol?(v9, v28, &_s7SwiftUI15ModifiedContentVy5CAFUI19AudioSettingsButtonVAA31AccessibilityAttachmentModifierVGMd);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy5CAFUI19AudioSettingsButtonVAA31AccessibilityAttachmentModifierVG_AA6SpacerVAItMd);
  v25 = v23 + *(v24 + 48);
  *v25 = 0;
  *(v25 + 8) = 1;
  outlined init with copy of NotificationModel.Symbol?(v6, v23 + *(v24 + 64), &_s7SwiftUI15ModifiedContentVy5CAFUI19AudioSettingsButtonVAA31AccessibilityAttachmentModifierVGMd);
  outlined destroy of RequestTemporaryContentModel?(v12, &_s7SwiftUI15ModifiedContentVy5CAFUI19AudioSettingsButtonVAA31AccessibilityAttachmentModifierVGMd);
  outlined destroy of RequestTemporaryContentModel?(v14, &_s7SwiftUI15ModifiedContentVy5CAFUI19AudioSettingsButtonVAA31AccessibilityAttachmentModifierVGMd);
  outlined destroy of RequestTemporaryContentModel?(v6, &_s7SwiftUI15ModifiedContentVy5CAFUI19AudioSettingsButtonVAA31AccessibilityAttachmentModifierVGMd);
  return outlined destroy of RequestTemporaryContentModel?(v9, &_s7SwiftUI15ModifiedContentVy5CAFUI19AudioSettingsButtonVAA31AccessibilityAttachmentModifierVGMd);
}

void closure #1 in closure #2 in closure #1 in closure #1 in CAFUIBalanceFadeView.body.getter(uint64_t a1)
{
  v2 = dispatch thunk of CAFSoundDistributionObservable.balance.getter();
  v3 = CAFSoundDistributionObservable.observed.getter();
  v4 = [v3 balanceRange];

  LODWORD(v3) = [v4 minimumValue];
  if (v3 < v2)
  {
    v5 = CAFSoundDistributionObservable.observed.getter();
    v6 = [v5 balanceRange];

    v7 = [v6 stepValue];
    v8 = dispatch thunk of CAFSoundDistributionObservable.balance.modify();
    v10 = *v9 - v7;
    if ((*v9 - v7) == v10)
    {
      *v9 = v10;
      v8(&v22, 0);
      v24 = *(a1 + 80);
      v22 = *(a1 + 80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy5CAFUI20CAFUIBalanceFadeViewV15ImmediateValuesCGMd);
      State.wrappedValue.getter();
      v11 = CAFSoundDistributionObservable.observed.getter();
      v12 = CAFSoundDistribution.balanceScale.getter();

      swift_getKeyPath();
      swift_getKeyPath();
      v13 = static Published.subscript.modify();
      *v14 = v12;
      v13(&v22, 0);

      v22 = v24;
      State.wrappedValue.getter();
      v22 = *(a1 + 32);
      v23 = *(a1 + 48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdSgGMd);
      State.wrappedValue.getter();
      if ((LOBYTE(v21) & 1) != 0 || (static Date.timeIntervalSinceReferenceDate.getter(), v15 - v20 >= 3.0))
      {
        v17 = CAFSoundDistributionObservable.observed.getter();
        v16 = CAFSoundDistribution.fadeScale.getter();
      }

      else
      {
        v22 = *(a1 + 56);
        v23 = *(a1 + 72);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatV_AFtGMd);
        State.wrappedValue.getter();
        v16 = v21;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v18 = static Published.subscript.modify();
      *(v19 + 8) = v16;
      v18(&v22, 0);
    }

    else
    {
      __break(1u);
    }
  }
}

void closure #2 in closure #2 in closure #1 in closure #1 in CAFUIBalanceFadeView.body.getter(uint64_t a1)
{
  v2 = dispatch thunk of CAFSoundDistributionObservable.balance.getter();
  v3 = CAFSoundDistributionObservable.observed.getter();
  v4 = [v3 balanceRange];

  LODWORD(v3) = [v4 maximumValue];
  if (v3 > v2)
  {
    v5 = CAFSoundDistributionObservable.observed.getter();
    v6 = [v5 balanceRange];

    v7 = [v6 stepValue];
    v8 = dispatch thunk of CAFSoundDistributionObservable.balance.modify();
    v10 = *v9 + v7;
    if ((*v9 + v7) == v10)
    {
      *v9 = v10;
      v8(&v22, 0);
      v24 = *(a1 + 80);
      v22 = *(a1 + 80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy5CAFUI20CAFUIBalanceFadeViewV15ImmediateValuesCGMd);
      State.wrappedValue.getter();
      v11 = CAFSoundDistributionObservable.observed.getter();
      v12 = CAFSoundDistribution.balanceScale.getter();

      swift_getKeyPath();
      swift_getKeyPath();
      v13 = static Published.subscript.modify();
      *v14 = v12;
      v13(&v22, 0);

      v22 = v24;
      State.wrappedValue.getter();
      v22 = *(a1 + 32);
      v23 = *(a1 + 48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdSgGMd);
      State.wrappedValue.getter();
      if ((LOBYTE(v21) & 1) != 0 || (static Date.timeIntervalSinceReferenceDate.getter(), v15 - v20 >= 3.0))
      {
        v17 = CAFSoundDistributionObservable.observed.getter();
        v16 = CAFSoundDistribution.fadeScale.getter();
      }

      else
      {
        v22 = *(a1 + 56);
        v23 = *(a1 + 72);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatV_AFtGMd);
        State.wrappedValue.getter();
        v16 = v21;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v18 = static Published.subscript.modify();
      *(v19 + 8) = v16;
      v18(&v22, 0);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t closure #3 in closure #1 in closure #1 in CAFUIBalanceFadeView.body.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy5CAFUI19AudioSettingsButtonVAA31AccessibilityAttachmentModifierVGMd);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v27 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v27 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v15 = swift_allocObject();
  v16 = a1[3];
  v15[3] = a1[2];
  v15[4] = v16;
  v17 = a1[5];
  v15[5] = a1[4];
  v15[6] = v17;
  v18 = a1[1];
  v15[1] = *a1;
  v15[2] = v18;
  strcpy(v30, "chevron.up");
  HIBYTE(v30[2]) = 0;
  v30[3] = -369098752;
  v31 = partial apply for closure #1 in closure #3 in closure #1 in closure #1 in CAFUIBalanceFadeView.body.getter;
  v32 = v15;
  outlined init with copy of CAFUIBalanceFadeView(a1, v29);
  lazy protocol witness table accessor for type AudioSettingsButton and conformance AudioSettingsButton();
  View.accessibilityIdentifier(_:)();

  v19 = swift_allocObject();
  v20 = a1[3];
  v19[3] = a1[2];
  v19[4] = v20;
  v21 = a1[5];
  v19[5] = a1[4];
  v19[6] = v21;
  v22 = a1[1];
  v19[1] = *a1;
  v19[2] = v22;
  strcpy(v30, "chevron.down");
  BYTE1(v30[3]) = 0;
  HIWORD(v30[3]) = -5120;
  v31 = partial apply for closure #2 in closure #3 in closure #1 in closure #1 in CAFUIBalanceFadeView.body.getter;
  v32 = v19;
  outlined init with copy of CAFUIBalanceFadeView(a1, v29);
  View.accessibilityIdentifier(_:)();

  outlined init with copy of NotificationModel.Symbol?(v14, v9, &_s7SwiftUI15ModifiedContentVy5CAFUI19AudioSettingsButtonVAA31AccessibilityAttachmentModifierVGMd);
  outlined init with copy of NotificationModel.Symbol?(v12, v6, &_s7SwiftUI15ModifiedContentVy5CAFUI19AudioSettingsButtonVAA31AccessibilityAttachmentModifierVGMd);
  v23 = v28;
  outlined init with copy of NotificationModel.Symbol?(v9, v28, &_s7SwiftUI15ModifiedContentVy5CAFUI19AudioSettingsButtonVAA31AccessibilityAttachmentModifierVGMd);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy5CAFUI19AudioSettingsButtonVAA31AccessibilityAttachmentModifierVG_AA6SpacerVAItMd);
  v25 = v23 + *(v24 + 48);
  *v25 = 0;
  *(v25 + 8) = 1;
  outlined init with copy of NotificationModel.Symbol?(v6, v23 + *(v24 + 64), &_s7SwiftUI15ModifiedContentVy5CAFUI19AudioSettingsButtonVAA31AccessibilityAttachmentModifierVGMd);
  outlined destroy of RequestTemporaryContentModel?(v12, &_s7SwiftUI15ModifiedContentVy5CAFUI19AudioSettingsButtonVAA31AccessibilityAttachmentModifierVGMd);
  outlined destroy of RequestTemporaryContentModel?(v14, &_s7SwiftUI15ModifiedContentVy5CAFUI19AudioSettingsButtonVAA31AccessibilityAttachmentModifierVGMd);
  outlined destroy of RequestTemporaryContentModel?(v6, &_s7SwiftUI15ModifiedContentVy5CAFUI19AudioSettingsButtonVAA31AccessibilityAttachmentModifierVGMd);
  return outlined destroy of RequestTemporaryContentModel?(v9, &_s7SwiftUI15ModifiedContentVy5CAFUI19AudioSettingsButtonVAA31AccessibilityAttachmentModifierVGMd);
}

void closure #1 in closure #3 in closure #1 in closure #1 in CAFUIBalanceFadeView.body.getter(uint64_t a1)
{
  v2 = CAFSoundDistributionObservable.observed.getter();
  v3 = [v2 hasFade];

  if (!v3)
  {
    return;
  }

  v4 = dispatch thunk of CAFSoundDistributionObservable.fade.getter();
  v5 = (v4 & 0x100) != 0 ? 0 : v4;
  v6 = CAFSoundDistributionObservable.observed.getter();
  v7 = [v6 fadeRange];

  LODWORD(v6) = [v7 minimumValue];
  if (v6 >= v5)
  {
    return;
  }

  v8 = CAFSoundDistributionObservable.observed.getter();
  v9 = [v8 fadeRange];

  v10 = [v9 stepValue];
  v11 = dispatch thunk of CAFSoundDistributionObservable.fade.modify();
  if (v12[1])
  {
LABEL_15:
    __break(1u);
    return;
  }

  v13 = *v12 - v10;
  if ((*v12 - v10) != v13)
  {
    __break(1u);
    goto LABEL_15;
  }

  *v12 = v13;
  v11(&v25, 0);
  v27 = *(a1 + 80);
  v25 = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy5CAFUI20CAFUIBalanceFadeViewV15ImmediateValuesCGMd);
  State.wrappedValue.getter();
  v25 = *(a1 + 32);
  v26 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdSgGMd);
  State.wrappedValue.getter();
  if ((v24 & 1) != 0 || (static Date.timeIntervalSinceReferenceDate.getter(), v14 - v23 >= 3.0))
  {
    v16 = CAFSoundDistributionObservable.observed.getter();
    v15 = CAFSoundDistribution.balanceScale.getter();
  }

  else
  {
    v25 = *(a1 + 56);
    v26 = *(a1 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatV_AFtGMd);
    State.wrappedValue.getter();
    v15 = v23;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v17 = static Published.subscript.modify();
  *v18 = v15;
  v17(&v25, 0);

  v25 = v27;
  State.wrappedValue.getter();
  v19 = CAFSoundDistributionObservable.observed.getter();
  v20 = CAFSoundDistribution.fadeScale.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v21 = static Published.subscript.modify();
  *(v22 + 8) = v20;
  v21(&v25, 0);
}

void closure #2 in closure #3 in closure #1 in closure #1 in CAFUIBalanceFadeView.body.getter(uint64_t a1)
{
  v2 = CAFSoundDistributionObservable.observed.getter();
  v3 = [v2 hasFade];

  if (!v3)
  {
    return;
  }

  v4 = dispatch thunk of CAFSoundDistributionObservable.fade.getter();
  v5 = (v4 & 0x100) != 0 ? 0 : v4;
  v6 = CAFSoundDistributionObservable.observed.getter();
  v7 = [v6 fadeRange];

  LODWORD(v6) = [v7 maximumValue];
  if (v6 <= v5)
  {
    return;
  }

  v8 = CAFSoundDistributionObservable.observed.getter();
  v9 = [v8 fadeRange];

  v10 = [v9 stepValue];
  v11 = dispatch thunk of CAFSoundDistributionObservable.fade.modify();
  if (v12[1])
  {
LABEL_15:
    __break(1u);
    return;
  }

  v13 = *v12 + v10;
  if ((*v12 + v10) != v13)
  {
    __break(1u);
    goto LABEL_15;
  }

  *v12 = v13;
  v11(&v25, 0);
  v27 = *(a1 + 80);
  v25 = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy5CAFUI20CAFUIBalanceFadeViewV15ImmediateValuesCGMd);
  State.wrappedValue.getter();
  v25 = *(a1 + 32);
  v26 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdSgGMd);
  State.wrappedValue.getter();
  if ((v24 & 1) != 0 || (static Date.timeIntervalSinceReferenceDate.getter(), v14 - v23 >= 3.0))
  {
    v16 = CAFSoundDistributionObservable.observed.getter();
    v15 = CAFSoundDistribution.balanceScale.getter();
  }

  else
  {
    v25 = *(a1 + 56);
    v26 = *(a1 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatV_AFtGMd);
    State.wrappedValue.getter();
    v15 = v23;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v17 = static Published.subscript.modify();
  *v18 = v15;
  v17(&v25, 0);

  v25 = v27;
  State.wrappedValue.getter();
  v19 = CAFSoundDistributionObservable.observed.getter();
  v20 = CAFSoundDistribution.fadeScale.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v21 = static Published.subscript.modify();
  *(v22 + 8) = v20;
  v21(&v25, 0);
}

uint64_t FocusableAudioSettingsButton.isFocused.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Bool>.Content(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t FocusableAudioSettingsButton.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Color.RGBColorSpace();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ColorScheme();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  v16 = FocusableAudioSettingsButton.isFocused.getter();
  v17 = MEMORY[0x277CDF3C0];
  if (v16)
  {
    v37 = v8;
    type metadata accessor for FocusableAudioSettingsButton(0);
    specialized Environment.wrappedValue.getter(v15);
    (*(v10 + 104))(v13, *v17, v9);
    v18 = static ColorScheme.== infix(_:_:)();
    v19 = *(v10 + 8);
    v19(v13, v9);
    v19(v15, v9);
    if (v18)
    {
      v20 = static Color.black.getter();
    }

    else
    {
      v20 = static Color.white.getter();
    }

    v40 = v20;
    v8 = v37;
    v17 = MEMORY[0x277CDF3C0];
  }

  else
  {
    v21 = [objc_opt_self() _carSystemFocusColor];
    v40 = MEMORY[0x245D0CE70](v21);
  }

  if (FocusableAudioSettingsButton.isFocused.getter())
  {
    v22 = [objc_opt_self() _carSystemFocusColor];
    v23 = MEMORY[0x245D0CE70](v22);
  }

  else
  {
    type metadata accessor for FocusableAudioSettingsButton(0);
    specialized Environment.wrappedValue.getter(v15);
    (*(v10 + 104))(v13, *v17, v9);
    static ColorScheme.== infix(_:_:)();
    v24 = *(v10 + 8);
    v24(v13, v9);
    v24(v15, v9);
    (*(v38 + 104))(v8, *MEMORY[0x277CE0EE0], v39);
    v23 = Color.init(_:red:green:blue:opacity:)();
  }

  v25 = v23;
  v26 = *(v3 + *(type metadata accessor for FocusableAudioSettingsButton(0) + 24));
  KeyPath = swift_getKeyPath();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy5CAFUI28FocusableAudioSettingsButton33_4DC0A03647B19D6E6C689B0A29D8F124LLVGMd);
  (*(*(v28 - 8) + 16))(a2, a1, v28);
  v29 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy5CAFUI28FocusableAudioSettingsButton33_4DC0A03647B19D6E6C689B0A29D8F124LLVGAA022_EnvironmentKeyWritingF0VyAA4FontVSgGGMd) + 36));
  *v29 = KeyPath;
  v29[1] = v26;

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v30 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy5CAFUI28FocusableAudioSettingsButton33_4DC0A03647B19D6E6C689B0A29D8F124LLVGAA022_EnvironmentKeyWritingF0VyAA4FontVSgGGAA12_FrameLayoutVGMd) + 36));
  v31 = v42;
  *v30 = v41;
  v30[1] = v31;
  v30[2] = v43;
  v32 = swift_getKeyPath();
  v33 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA014_ViewModifier_D0Vy5CAFUI28FocusableAudioSettingsButton33_4DC0A03647B19D6E6C689B0A29D8F124LLVGAA022_EnvironmentKeyWritingF0VyAA4FontVSgGGAA12_FrameLayoutVGALyAA5ColorVSgGGMd) + 36));
  v34 = v40;
  *v33 = v32;
  v33[1] = v34;
  LOBYTE(v32) = static Edge.Set.all.getter();
  v35 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA014_ViewModifier_D0Vy5CAFUI28FocusableAudioSettingsButton33_4DC0A03647B19D6E6C689B0A29D8F124LLVGAA022_EnvironmentKeyWritingF0VyAA4FontVSgGGAA12_FrameLayoutVGALyAA5ColorVSgGGAA016_BackgroundStyleF0VyAVGGMd) + 36);
  *v35 = v25;
  *(v35 + 8) = v32;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA014_ViewModifier_D0Vy5CAFUI28FocusableAudioSettingsButton33_4DC0A03647B19D6E6C689B0A29D8F124LLVGAA022_EnvironmentKeyWritingF0VyAA4FontVSgGGAA12_FrameLayoutVGALyAA5ColorVSgGGAA016_BackgroundStyleF0VyAVGGAA11_ClipEffectVyAA6CircleVGGMd);
  *(a2 + *(result + 36)) = 256;
  return result;
}

uint64_t AudioSettingsButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a2;
  v30 = a5;
  v31 = type metadata accessor for ButtonRepeatBehavior();
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v28 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PlainButtonStyle();
  v27 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageV5CAFUI022FocusableAudioSettingsC033_4DC0A03647B19D6E6C689B0A29D8F124LLVGGMd);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAA5ImageV5CAFUI022FocusableAudioSettingsG033_4DC0A03647B19D6E6C689B0A29D8F124LLVGG_AA05PlaingE0VQo_Md);
  v16 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v18 = &v24 - v17;
  v32 = a1;
  v33 = v25;
  v34 = a3;
  v35 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageV5CAFUI28FocusableAudioSettingsButton33_4DC0A03647B19D6E6C689B0A29D8F124LLVGMd);
  lazy protocol witness table accessor for type ModifiedContent<Image, FocusableAudioSettingsButton> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  v19 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Button<ModifiedContent<Image, FocusableAudioSettingsButton>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageV5CAFUI022FocusableAudioSettingsC033_4DC0A03647B19D6E6C689B0A29D8F124LLVGGMd);
  v20 = lazy protocol witness table accessor for type CAFSoundDistributionObservable and conformance CAFSoundDistributionObservable(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
  View.buttonStyle<A>(_:)();
  (*(v27 + 8))(v11, v9);
  (*(v13 + 8))(v15, v12);
  v21 = v28;
  static ButtonRepeatBehavior.enabled.getter();
  v36 = v12;
  v37 = v9;
  v38 = v19;
  v39 = v20;
  swift_getOpaqueTypeConformance2();
  v22 = v26;
  View.buttonRepeatBehavior(_:)();
  (*(v29 + 8))(v21, v31);
  return (*(v16 + 8))(v18, v22);
}

uint64_t closure #1 in AudioSettingsButton.body.getter@<X0>(uint64_t *a1@<X8>)
{

  v2 = Image.init(systemName:)();
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageV5CAFUI28FocusableAudioSettingsButton33_4DC0A03647B19D6E6C689B0A29D8F124LLVGMd) + 36);
  *v3 = swift_getKeyPath();
  v3[8] = 0;
  v4 = type metadata accessor for FocusableAudioSettingsButton(0);
  v5 = *(v4 + 20);
  *&v3[v5] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  swift_storeEnumTagMultiPayload();
  v6 = *(v4 + 24);
  v7 = *MEMORY[0x277D74420];
  v8 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v9 = [objc_opt_self() systemFontOfSize:16.0 weight:v7];
  v10 = [v8 scaledFontForFont_];

  result = Font.init(_:)();
  *&v3[v6] = result;
  *a1 = v2;
  return result;
}

double AudioSettingsCrosshairView.body.getter@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v6 = static Alignment.center.getter();
  v8 = v7;
  closure #1 in AudioSettingsCrosshairView.body.getter(&v42, a2, a3);
  v36 = v48;
  v37 = v49;
  v38 = v50;
  v32 = v44;
  v33 = v45;
  v34 = v46;
  v35 = v47;
  v30 = v42;
  v31 = v43;
  v40[6] = v48;
  v40[7] = v49;
  v40[8] = v50;
  v40[2] = v44;
  v40[3] = v45;
  v40[4] = v46;
  v40[5] = v47;
  v39 = v51;
  v41 = v51;
  v40[0] = v42;
  v40[1] = v43;
  outlined init with copy of NotificationModel.Symbol?(&v30, v28, &_s7SwiftUI9TupleViewVyAA011StrokeShapeD0Vy5CAFUI25CAFUIBalanceFadeCrosshairVAA5ColorVAA05EmptyD0VG_AA15ModifiedContentVyAhA30_EnvironmentKeyWritingModifierVyAJSgGGtGMd);
  outlined destroy of RequestTemporaryContentModel?(v40, &_s7SwiftUI9TupleViewVyAA011StrokeShapeD0Vy5CAFUI25CAFUIBalanceFadeCrosshairVAA5ColorVAA05EmptyD0VG_AA15ModifiedContentVyAhA30_EnvironmentKeyWritingModifierVyAJSgGGtGMd);
  v48 = v36;
  v49 = v37;
  v50 = v38;
  v51 = v39;
  v44 = v32;
  v45 = v33;
  v46 = v34;
  v47 = v35;
  v42 = v30;
  v43 = v31;
  v9 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v29 = 0;
  KeyPath = swift_getKeyPath();
  v19 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyAA011StrokeShapeG0Vy5CAFUI25CAFUIBalanceFadeCrosshairVAA5ColorVAA05EmptyG0VG_ACyAlA30_EnvironmentKeyWritingModifierVyANSgGGtGGAA14_PaddingLayoutVGASyAA0U9DirectionOGGMd) + 36));
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGMd) + 28);
  v21 = *MEMORY[0x277CDFA88];
  v22 = type metadata accessor for LayoutDirection();
  (*(*(v22 - 8) + 104))(v19 + v20, v21, v22);
  *v19 = KeyPath;
  *a1 = v6;
  *(a1 + 8) = v8;
  v23 = v49;
  *(a1 + 112) = v48;
  *(a1 + 128) = v23;
  *(a1 + 144) = v50;
  *(a1 + 160) = v51;
  v24 = v45;
  *(a1 + 48) = v44;
  *(a1 + 64) = v24;
  v25 = v47;
  *(a1 + 80) = v46;
  *(a1 + 96) = v25;
  result = *&v42;
  v27 = v43;
  *(a1 + 16) = v42;
  *(a1 + 32) = v27;
  *(a1 + 168) = v9;
  *(a1 + 169) = v28[0];
  *(a1 + 172) = *(v28 + 3);
  *(a1 + 176) = v11;
  *(a1 + 184) = v13;
  *(a1 + 192) = v15;
  *(a1 + 200) = v17;
  *(a1 + 208) = 0;
  return result;
}

uint64_t closure #1 in AudioSettingsCrosshairView.body.getter@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v6 = [objc_opt_self() _carSystemFocusColor];
  v7 = MEMORY[0x245D0CE70](v6);
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v8 = static Alignment.center.getter();
  v10 = v9;
  v11 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  *&v20 = a2;
  *(&v20 + 1) = a3;
  LOBYTE(v21) = 0;
  *(&v21 + 1) = 0x4028000000000000;
  v22 = v17;
  v23 = v18;
  *&v24 = v19;
  *(&v24 + 1) = v7;
  LOWORD(v25) = 256;
  *(&v25 + 1) = v8;
  v26 = v10;
  v13 = v21;
  *a1 = v20;
  *(a1 + 16) = v13;
  v14 = v24;
  v15 = v25;
  *(a1 + 96) = v10;
  *(a1 + 64) = v14;
  *(a1 + 80) = v15;
  *(a1 + 32) = v17;
  *(a1 + 48) = v18;
  *(a1 + 104) = a2;
  *(a1 + 112) = a3;
  *(a1 + 120) = 1;
  *(a1 + 128) = 0x4028000000000000;
  *(a1 + 136) = KeyPath;
  *(a1 + 144) = v11;
  outlined init with copy of NotificationModel.Symbol?(&v20, v27, &_s7SwiftUI15StrokeShapeViewVy5CAFUI25CAFUIBalanceFadeCrosshairVAA5ColorVAA05EmptyE0VGMd);
  *v27 = a2;
  *&v27[1] = a3;
  v28 = 0;
  v29 = 0x4028000000000000;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  v33 = v7;
  v34 = 256;
  v35 = v8;
  v36 = v10;
  return outlined destroy of RequestTemporaryContentModel?(v27, &_s7SwiftUI15StrokeShapeViewVy5CAFUI25CAFUIBalanceFadeCrosshairVAA5ColorVAA05EmptyE0VGMd);
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  outlined init with copy of NotificationModel.Symbol?(v2, &v14 - v9, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
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

uint64_t key path setter for EnvironmentValues.layoutDirection : EnvironmentValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  MEMORY[0x28223BE20]();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

double key path getter for CAFUIBalanceFadeView.ImmediateValues.value : CAFUIBalanceFadeView.ImmediateValues@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t key path setter for CAFUIBalanceFadeView.ImmediateValues.value : CAFUIBalanceFadeView.ImmediateValues()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
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

uint64_t getEnumTagSinglePayload for CAFUIBalanceFadeView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t storeEnumTagSinglePayload for CAFUIBalanceFadeView(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void type metadata completion function for CAFUIBalanceFadeView.ImmediateValues()
{
  type metadata accessor for Published<(CGFloat, CGFloat)>();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<(CGFloat, CGFloat)>()
{
  if (!lazy cache variable for type metadata for Published<(CGFloat, CGFloat)>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s12CoreGraphics7CGFloatV_ACtMd);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<(CGFloat, CGFloat)>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<CAFUICabinView>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<CAFUICabinView>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<CAFUICabinView>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVy5CAFUI14CAFUICabinViewVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type VStack<CAFUICabinView> and conformance VStack<A>, &_s7SwiftUI6VStackVy5CAFUI14CAFUICabinViewVGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<LayoutDirection> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<CAFUICabinView>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioSettingsButton(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for AudioSettingsButton(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, FocusableAudioSettingsButton> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, FocusableAudioSettingsButton> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, FocusableAudioSettingsButton> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageV5CAFUI28FocusableAudioSettingsButton33_4DC0A03647B19D6E6C689B0A29D8F124LLVGMd);
    lazy protocol witness table accessor for type CAFSoundDistributionObservable and conformance CAFSoundDistributionObservable(&lazy protocol witness table cache variable for type FocusableAudioSettingsButton and conformance FocusableAudioSettingsButton, type metadata accessor for FocusableAudioSettingsButton);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, FocusableAudioSettingsButton> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CAFSoundDistributionObservable and conformance CAFSoundDistributionObservable(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2423C29EC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isFocused.getter();
  *a1 = result & 1;
  return result;
}

uint64_t key path getter for EnvironmentValues.font : EnvironmentValues, serialized@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t outlined init with take of TupleView<(HStack<TupleView<(ModifiedContent<AudioSettingsButton, AccessibilityAttachmentModifier>, Spacer, ModifiedContent<AudioSettingsButton, AccessibilityAttachmentModifier>)>>, VStack<TupleView<(ModifiedContent<AudioSettingsButton, AccessibilityAttachmentModifier>, Spacer, ModifiedContent<AudioSettingsButton, AccessibilityAttachmentModifier>)>>)>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6HStackVyACyAA15ModifiedContentVy5CAFUI19AudioSettingsButtonVAA31AccessibilityAttachmentModifierVG_AA6SpacerVAMtGG_AA6VStackVyAPGtGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AudioSettingsButton and conformance AudioSettingsButton()
{
  result = lazy protocol witness table cache variable for type AudioSettingsButton and conformance AudioSettingsButton;
  if (!lazy protocol witness table cache variable for type AudioSettingsButton and conformance AudioSettingsButton)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioSettingsButton and conformance AudioSettingsButton);
  }

  return result;
}

void partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in CAFUIBalanceFadeView.body.getter()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[17];
  DragGesture.Value.location.getter();
  CAFUIBalanceFadeView.handleTapEvent(location:frame:)(v5, v6, v1, v2, v3, v4);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<AudioSettingsCrosshairView, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AudioSettingsCrosshairView, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AudioSettingsCrosshairView, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy5CAFUI26AudioSettingsCrosshairViewVAA01_D13ShapeModifierVyAA9RectangleVGGMd);
    lazy protocol witness table accessor for type AudioSettingsCrosshairView and conformance AudioSettingsCrosshairView();
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>, &_s7SwiftUI21_ContentShapeModifierVyAA9RectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AudioSettingsCrosshairView, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AudioSettingsCrosshairView and conformance AudioSettingsCrosshairView()
{
  result = lazy protocol witness table cache variable for type AudioSettingsCrosshairView and conformance AudioSettingsCrosshairView;
  if (!lazy protocol witness table cache variable for type AudioSettingsCrosshairView and conformance AudioSettingsCrosshairView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioSettingsCrosshairView and conformance AudioSettingsCrosshairView);
  }

  return result;
}

uint64_t objectdestroyTm_1(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_2423C2DD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVy12CoreGraphics7CGFloatV_AKt_GAA0D0PAAE19simultaneousGesture_9includingQrqd___AA0L4MaskVtAA0L0Rd__lFQOyAA15ModifiedContentVy5CAFUI022AudioSettingsCrosshairD0VAA01_P13ShapeModifierVyAA9RectangleVGG_AA06_EndedL0VyAA08_ChangedL0VyAA04DragL0VGGQo_GMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2423C2E50(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_2423C2F30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void type metadata completion function for FocusableAudioSettingsButton()
{
  type metadata accessor for Environment<Bool>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<ColorScheme>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Environment<Bool>()
{
  if (!lazy cache variable for type metadata for Environment<Bool>)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<Bool>);
    }
  }
}

uint64_t getEnumTagSinglePayload for CAFUIBalanceFadeCrosshair(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CAFUIBalanceFadeCrosshair(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2423C317C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAA5ImageV5CAFUI022FocusableAudioSettingsG033_4DC0A03647B19D6E6C689B0A29D8F124LLVGG_AA05PlaingE0VQo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageV5CAFUI022FocusableAudioSettingsC033_4DC0A03647B19D6E6C689B0A29D8F124LLVGGMd);
  type metadata accessor for PlainButtonStyle();
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Button<ModifiedContent<Image, FocusableAudioSettingsButton>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageV5CAFUI022FocusableAudioSettingsC033_4DC0A03647B19D6E6C689B0A29D8F124LLVGGMd);
  lazy protocol witness table accessor for type CAFSoundDistributionObservable and conformance CAFSoundDistributionObservable(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<TupleView<(StrokeShapeView<CAFUIBalanceFadeCrosshair, Color, EmptyView>, ModifiedContent<CAFUIBalanceFadeCrosshair, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(StrokeShapeView<CAFUIBalanceFadeCrosshair, Color, EmptyView>, ModifiedContent<CAFUIBalanceFadeCrosshair, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(StrokeShapeView<CAFUIBalanceFadeCrosshair, Color, EmptyView>, ModifiedContent<CAFUIBalanceFadeCrosshair, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyAA011StrokeShapeG0Vy5CAFUI25CAFUIBalanceFadeCrosshairVAA5ColorVAA05EmptyG0VG_ACyAlA30_EnvironmentKeyWritingModifierVyANSgGGtGGAA14_PaddingLayoutVGASyAA0U9DirectionOGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(StrokeShapeView<CAFUIBalanceFadeCrosshair, Color, EmptyView>, ModifiedContent<CAFUIBalanceFadeCrosshair, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<LayoutDirection> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(StrokeShapeView<CAFUIBalanceFadeCrosshair, Color, EmptyView>, ModifiedContent<CAFUIBalanceFadeCrosshair, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(StrokeShapeView<CAFUIBalanceFadeCrosshair, Color, EmptyView>, ModifiedContent<CAFUIBalanceFadeCrosshair, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(StrokeShapeView<CAFUIBalanceFadeCrosshair, Color, EmptyView>, ModifiedContent<CAFUIBalanceFadeCrosshair, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(StrokeShapeView<CAFUIBalanceFadeCrosshair, Color, EmptyView>, ModifiedContent<CAFUIBalanceFadeCrosshair, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA011StrokeShapeG0Vy5CAFUI25CAFUIBalanceFadeCrosshairVAA5ColorVAA05EmptyG0VG_ACyAlA30_EnvironmentKeyWritingModifierVyANSgGGtGGAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type ZStack<TupleView<(StrokeShapeView<CAFUIBalanceFadeCrosshair, Color, EmptyView>, ModifiedContent<CAFUIBalanceFadeCrosshair, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA011StrokeShapeE0Vy5CAFUI25CAFUIBalanceFadeCrosshairVAA5ColorVAA05EmptyE0VG_AA15ModifiedContentVyAjA30_EnvironmentKeyWritingModifierVyALSgGGtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(StrokeShapeView<CAFUIBalanceFadeCrosshair, Color, EmptyView>, ModifiedContent<CAFUIBalanceFadeCrosshair, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EmptyAnimatableData and conformance EmptyAnimatableData()
{
  result = lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData;
  if (!lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CAFUIBalanceFadeCrosshair and conformance CAFUIBalanceFadeCrosshair()
{
  result = lazy protocol witness table cache variable for type CAFUIBalanceFadeCrosshair and conformance CAFUIBalanceFadeCrosshair;
  if (!lazy protocol witness table cache variable for type CAFUIBalanceFadeCrosshair and conformance CAFUIBalanceFadeCrosshair)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFUIBalanceFadeCrosshair and conformance CAFUIBalanceFadeCrosshair);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CAFUIBalanceFadeCrosshair and conformance CAFUIBalanceFadeCrosshair;
  if (!lazy protocol witness table cache variable for type CAFUIBalanceFadeCrosshair and conformance CAFUIBalanceFadeCrosshair)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFUIBalanceFadeCrosshair and conformance CAFUIBalanceFadeCrosshair);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CAFUIBalanceFadeCrosshair and conformance CAFUIBalanceFadeCrosshair;
  if (!lazy protocol witness table cache variable for type CAFUIBalanceFadeCrosshair and conformance CAFUIBalanceFadeCrosshair)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFUIBalanceFadeCrosshair and conformance CAFUIBalanceFadeCrosshair);
  }

  return result;
}

uint64_t sub_2423C357C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t outlined consume of Environment<Bool>.Content(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<FocusableAudioSettingsButton>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<FocusableAudioSettingsButton>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<FocusableAudioSettingsButton>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA014_ViewModifier_D0Vy5CAFUI28FocusableAudioSettingsButton33_4DC0A03647B19D6E6C689B0A29D8F124LLVGAA022_EnvironmentKeyWritingF0VyAA4FontVSgGGAA12_FrameLayoutVGALyAA5ColorVSgGGAA016_BackgroundStyleF0VyAVGGAA11_ClipEffectVyAA6CircleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<FocusableAudioSettingsButton>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type _ClipEffect<Circle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA6CircleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<FocusableAudioSettingsButton>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<FocusableAudioSettingsButton>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<FocusableAudioSettingsButton>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<FocusableAudioSettingsButton>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA014_ViewModifier_D0Vy5CAFUI28FocusableAudioSettingsButton33_4DC0A03647B19D6E6C689B0A29D8F124LLVGAA022_EnvironmentKeyWritingF0VyAA4FontVSgGGAA12_FrameLayoutVGALyAA5ColorVSgGGAA016_BackgroundStyleF0VyAVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<FocusableAudioSettingsButton>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<FocusableAudioSettingsButton>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<FocusableAudioSettingsButton>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<FocusableAudioSettingsButton>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<FocusableAudioSettingsButton>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA014_ViewModifier_D0Vy5CAFUI28FocusableAudioSettingsButton33_4DC0A03647B19D6E6C689B0A29D8F124LLVGAA022_EnvironmentKeyWritingF0VyAA4FontVSgGGAA12_FrameLayoutVGALyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<FocusableAudioSettingsButton>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<FocusableAudioSettingsButton>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<FocusableAudioSettingsButton>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<FocusableAudioSettingsButton>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<FocusableAudioSettingsButton>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy5CAFUI28FocusableAudioSettingsButton33_4DC0A03647B19D6E6C689B0A29D8F124LLVGAA022_EnvironmentKeyWritingF0VyAA4FontVSgGGAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<FocusableAudioSettingsButton>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<FocusableAudioSettingsButton>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<FocusableAudioSettingsButton>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<FocusableAudioSettingsButton>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<FocusableAudioSettingsButton>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy5CAFUI28FocusableAudioSettingsButton33_4DC0A03647B19D6E6C689B0A29D8F124LLVGAA022_EnvironmentKeyWritingF0VyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type _ViewModifier_Content<FocusableAudioSettingsButton> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy5CAFUI28FocusableAudioSettingsButton33_4DC0A03647B19D6E6C689B0A29D8F124LLVGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<FocusableAudioSettingsButton>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

id CAFUILoadingViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CAFUILoadingViewController.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFUILoadingViewController();
  return objc_msgSendSuper2(&v2, sel_initWithNibName_bundle_, 0, 0);
}

Swift::Void __swiftcall CAFUILoadingViewController.viewDidLoad()()
{
  v21.receiver = v0;
  v21.super_class = type metadata accessor for CAFUILoadingViewController();
  objc_msgSendSuper2(&v21, sel_viewDidLoad);
  v1 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v2 = [objc_opt_self() labelColor];
  [v1 setColor_];

  v3 = v1;
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v4;
  [v4 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_242423B80;
  v7 = [v3 centerXAnchor];
  v8 = [v0 view];
  if (!v8)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v9 = v8;
  v10 = [v8 safeAreaLayoutGuide];

  v11 = [v10 centerXAnchor];
  v12 = [v7 constraintEqualToAnchor_];

  *(v6 + 32) = v12;
  v13 = [v3 centerYAnchor];

  v14 = [v0 view];
  if (v14)
  {
    v15 = v14;
    v16 = objc_opt_self();
    v17 = [v15 safeAreaLayoutGuide];

    v18 = [v17 centerYAnchor];
    v19 = [v13 constraintEqualToAnchor_];

    *(v6 + 40) = v19;
    type metadata accessor for NSLayoutConstraint();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v16 activateConstraints_];

    [v3 startAnimating];
    return;
  }

LABEL_7:
  __break(1u);
}

id CAFUILoadingViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x245D0D180]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id CAFUILoadingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFUILoadingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CAFMinimalNotificationSource.output.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGGMd);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - v2;
  v6[1] = CAFNotificationSource.notification.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<NotificationModel?, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
  lazy protocol witness table accessor for type NotificationModel? and conformance <A> A?();
  Publisher<>.removeDuplicates()();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<AnyPublisher<NotificationModel?, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGGMd);
  v4 = Publisher.eraseToAnyPublisher()();
  (*(v1 + 8))(v3, v0);
  return v4;
}

BOOL String.isMinimalNotification.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20]();
  v1 = &v11 - v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of RequestTemporaryContentModel?(v1, &_s10Foundation3URLVSgMd);
    return 0;
  }

  (*(v3 + 32))(v5, v1, v2);
  v7 = URL.scheme.getter();
  if (!v8)
  {
    (*(v3 + 8))(v5, v2);
    return 0;
  }

  if (v7 != 0xD000000000000019 || v8 != 0x800000024242B480)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*(v3 + 8))(v5, v2);
    return (v10 & 1) != 0;
  }

  (*(v3 + 8))(v5, v2);
  return 1;
}

Swift::String __swiftcall CAFTrailingButton.getSymbolName(iconOnly:)(Swift::Bool iconOnly)
{
  v3 = [v1 type];
  v4 = 0xE000000000000000;
  v5 = 0xEF64726177726F66;
  v6 = 0x2E6E6F7276656863;
  if (iconOnly)
  {
    v6 = 0xD00000000000001BLL;
    v5 = 0x8000000242428D90;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6B72616D78;
  if (iconOnly)
  {
    v8 = 0xD000000000000011;
    v7 = 0x8000000242428DB0;
  }

  if (v3 == 1)
  {
    v4 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v3 == 2;
  if (v3 == 2)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v9)
  {
    v11 = v5;
  }

  else
  {
    v11 = v4;
  }

  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

void CAFImageColor.convertedSwiftColor()(unsigned __int8 a1)
{
  v1 = UIColorFromCAFImageColor(a1);

  JUMPOUT(0x245D0CE70);
}

void *CAFMinimalNotificationSource.__allocating_init(notification:requestContent:displayID:zoneRegion:destination:launchURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7, uint64_t a8, uint64_t a9)
{
  v32 = a2;
  v37 = a1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v39);
  v36 = &v31 - v14;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v38);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentK0CANGGGMd);
  v16 = *(v15 - 8);
  v40 = v15;
  v41 = v16;
  MEMORY[0x28223BE20](v15);
  v34 = &v31 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v31 - v19;

  v21 = swift_allocObject();
  v33 = *a7;
  v21[2] = 0;
  v22 = type metadata accessor for NotificationModel();
  (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
  swift_allocObject();
  v21[3] = CurrentValueSubject.init(_:)();
  v21[4] = MEMORY[0x277D84FA0];
  v21[5] = a8;
  v21[6] = a9;
  v35 = a9;
  v42 = a1;
  v23 = swift_allocObject();
  *(v23 + 16) = a5;
  *(v23 + 24) = a6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFMinimalRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  v42 = v32;
  v24 = swift_allocObject();
  *(v24 + 16) = a5;
  *(v24 + 24) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRequestTemporaryContentObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFMinimalRemoteNotificationObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
  v25 = v34;
  Publishers.CombineLatest.init(_:_:)();
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v33;
  v28 = swift_allocObject();
  *(v28 + 16) = partial apply for closure #3 in CAFMinimalNotificationSource.init(notification:requestContent:displayID:zoneRegion:destination:launchURL:);
  *(v28 + 24) = v27;
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.Filter<AnyPublisher<CAFMinimalRemoteNotificationObservable, Never>>, Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentK0CANGGGMd);
  v29 = v40;
  Publisher<>.sink(receiveValue:)();

  (*(v41 + 8))(v25, v29);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v21;
}

void *CAFMinimalNotificationSource.init(notification:requestContent:displayID:zoneRegion:destination:launchURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v33 = a2;
  v38 = a1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v40);
  v36 = &v32 - v16;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGMd);
  MEMORY[0x28223BE20](v39);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentK0CANGGGMd);
  v18 = *(v17 - 8);
  v41 = v17;
  v42 = v18;
  MEMORY[0x28223BE20](v17);
  v34 = &v32 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v32 - v21;

  v35 = *a7;
  v9[2] = 0;
  v23 = type metadata accessor for NotificationModel();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
  swift_allocObject();
  v9[3] = CurrentValueSubject.init(_:)();
  v9[4] = MEMORY[0x277D84FA0];
  v9[5] = a8;
  v9[6] = a9;
  v37 = a9;
  v43 = a1;
  v24 = swift_allocObject();
  *(v24 + 16) = a5;
  *(v24 + 24) = a6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFMinimalRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  v43 = v33;
  v25 = swift_allocObject();
  *(v25 + 16) = a5;
  *(v25 + 24) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRequestTemporaryContentObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd);
  Publisher.filter(_:)();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFMinimalRemoteNotificationObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd);
  v26 = v34;
  Publishers.CombineLatest.init(_:_:)();
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = v35;
  v29 = swift_allocObject();
  *(v29 + 16) = closure #3 in CAFMinimalNotificationSource.init(notification:requestContent:displayID:zoneRegion:destination:launchURL:)partial apply;
  *(v29 + 24) = v28;
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.Filter<AnyPublisher<CAFMinimalRemoteNotificationObservable, Never>>, Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentK0CANGGGMd);
  v30 = v41;
  Publisher<>.sink(receiveValue:)();

  (*(v42 + 8))(v26, v30);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v10;
}

uint64_t sub_2423C4F84()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t closure #1 in CAFMinimalNotificationSource.init(notification:requestContent:displayID:zoneRegion:destination:launchURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a4() == a2 && v5 == a3)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_2423C50B0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t closure #3 in CAFMinimalNotificationSource.init(notification:requestContent:displayID:zoneRegion:destination:launchURL:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = a4 & 1;
    CAFMinimalNotificationSource.updateNotification(remoteNotification:requestContent:destination:)(a1, a2, &v8);
  }

  return result;
}

uint64_t sub_2423C5178()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2423C51B0()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t CAFMinimalNotificationSource.updateNotification(remoteNotification:requestContent:destination:)(void *a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v66 = a1;
  v7 = v4;
  v63 = *v4;
  v67 = type metadata accessor for NotificationModel();
  v69 = *(v67 - 8);
  v8 = MEMORY[0x28223BE20](v67);
  v64 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v65 = &v61 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v61 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v61 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v61 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v61 - v25;
  MEMORY[0x28223BE20](v24);
  v68 = &v61 - v27;
  v28 = *a3;
  dispatch thunk of CAFRequestTemporaryContentObservable.temporaryContentURL.getter();
  v29 = String.isMinimalNotification.getter();

  if (v29 && (dispatch thunk of CAFRequestTemporaryContentObservable.on.getter() & 1) != 0)
  {
    v30 = v66;
    v31 = dispatch thunk of CAFMinimalRemoteNotificationObservable.displayPanelIdentifier.getter();
    v62 = v32;
    LOBYTE(v70) = v28;
    v66 = v7;
    CAFMinimalNotificationSource.convert(message:requestContent:destination:)(v30, a2, &v70, v23);
    outlined init with copy of NotificationModel.Symbol?(v23, v20, &_s14CarPlayAssetUI17NotificationModelVSgMd);
    v33 = v69;
    v34 = *(v69 + 48);
    v35 = v67;
    v36 = v34(v20, 1, v67);
    v61 = v31;
    if (v36 == 1)
    {
      outlined destroy of RequestTemporaryContentModel?(v23, &_s14CarPlayAssetUI17NotificationModelVSgMd);
      (*(v33 + 56))(v26, 1, 1, v35);
    }

    else
    {
      (*(v33 + 32))(v13, v20, v35);
      static CAFMinimalNotificationSource.sanitize(notification:displayID:)(v13, v31, v62, v26);
      v33 = v69;
      (*(v69 + 8))(v13, v35);
      outlined destroy of RequestTemporaryContentModel?(v23, &_s14CarPlayAssetUI17NotificationModelVSgMd);
    }

    v37 = v68;
    outlined init with take of NotificationModel?(v26, v68);
    outlined init with copy of NotificationModel.Symbol?(v37, v17, &_s14CarPlayAssetUI17NotificationModelVSgMd);
    if (v34(v17, 1, v35) == 1)
    {
      outlined destroy of RequestTemporaryContentModel?(v17, &_s14CarPlayAssetUI17NotificationModelVSgMd);
      v39 = static os_log_type_t.error.getter();
      type metadata accessor for OS_os_log();
      v40 = static OS_os_log.default.getter();
      v41 = os_log_type_enabled(v40, v39);
      v42 = v61;
      v43 = v62;
      if (v41)
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v70 = v45;
        *v44 = 136315138;
        v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v70);

        *(v44 + 4) = v46;
        _os_log_impl(&dword_24234D000, v40, v39, "Unable to sanitize notification sent to display: %s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x245D0E5A0](v45, -1, -1);
        MEMORY[0x245D0E5A0](v44, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v47 = v65;
      (*(v33 + 32))(v65, v17, v35);
      v48 = static os_log_type_t.info.getter();
      v49 = v64;
      (*(v33 + 16))(v64, v47, v35);
      type metadata accessor for OS_os_log();
      v50 = v33;
      v51 = static OS_os_log.default.getter();
      if (os_log_type_enabled(v51, v48))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v70 = v53;
        *v52 = 136315394;
        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, &v70);

        *(v52 + 4) = v54;
        *(v52 + 12) = 2080;
        v55 = NotificationModel.id.getter();
        v57 = v56;
        v58 = *(v50 + 8);
        v58(v49, v35);
        v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, &v70);
        v37 = v68;

        *(v52 + 14) = v59;
        _os_log_impl(&dword_24234D000, v51, v48, "Presenting notification: %s:%s", v52, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245D0E5A0](v53, -1, -1);
        MEMORY[0x245D0E5A0](v52, -1, -1);

        v58(v47, v35);
      }

      else
      {

        v60 = *(v33 + 8);
        v60(v49, v35);
        v60(v47, v35);
      }
    }
  }

  else
  {
    v37 = v68;
    (*(v69 + 56))(v68, 1, 1, v67);
  }

  CurrentValueSubject.send(_:)();

  return outlined destroy of RequestTemporaryContentModel?(v37, &_s14CarPlayAssetUI17NotificationModelVSgMd);
}

uint64_t static CAFMinimalNotificationSource.sanitize(notification:displayID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a2;
  v44 = a3;
  v6 = type metadata accessor for NotificationModel();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v42 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NotificationModel.ValidationError();
  v52 = *(v9 - 8);
  v53 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v36 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v36 - v19;
  v21 = NotificationModel.validate(automakerSymbolValidator:)();
  v22 = a1;
  v23 = v18;
  (*(v7 + 16))(v20, v22, v6);
  v46 = v7;
  v24 = *(v7 + 56);
  v50 = v6;
  v40 = v24;
  v41 = v7 + 56;
  v24(v20, 0, 1, v6);
  v36 = v20;
  v25 = v20;
  v26 = v21;
  v27 = a4;
  outlined init with copy of NotificationModel.Symbol?(v25, a4, &_s14CarPlayAssetUI17NotificationModelVSgMd);
  v51 = *(v21 + 16);
  if (v51)
  {
    v28 = 0;
    v49 = v26 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v47 = (v46 + 6);
    v48 = v52 + 16;
    v37 = (v46 + 4);
    v38 = (v46 + 1);
    v45 = 0;
    v46 = (v52 + 8);
    v29 = &_s14CarPlayAssetUI17NotificationModelVSgMR;
    v39 = v26;
    while (v28 < *(v26 + 16))
    {
      (*(v52 + 16))(v11, v49 + *(v52 + 72) * v28, v53);
      outlined init with copy of NotificationModel.Symbol?(v27, v15, &_s14CarPlayAssetUI17NotificationModelVSgMd);
      v30 = v50;
      if ((*v47)(v15, 1, v50) == 1)
      {
        outlined destroy of RequestTemporaryContentModel?(v27, &_s14CarPlayAssetUI17NotificationModelVSgMd);
        v40(v23, 1, 1, v30);
      }

      else
      {
        v31 = v29;
        v32 = v27;
        v27 = v30;
        v29 = v42;
        v33 = v15;
        (*v37)(v42, v15, v27);
        v34 = v45;
        closure #1 in closure #2 in static CAFMinimalNotificationSource.sanitize(notification:displayID:)(v29, v11, v43, v44, v23);
        v45 = v34;
        if (v34)
        {
          goto LABEL_11;
        }

        (*v38)(v29, v27);
        v27 = v32;
        v29 = v31;
        outlined destroy of RequestTemporaryContentModel?(v32, &_s14CarPlayAssetUI17NotificationModelVSgMd);
        v15 = v33;
        v26 = v39;
      }

      ++v28;
      (*v46)(v11, v53);
      outlined init with take of NotificationModel?(v23, v27);
      if (v51 == v28)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    result = (*v38)(v29, v27);
    __break(1u);
  }

  else
  {
LABEL_9:

    return outlined destroy of RequestTemporaryContentModel?(v36, &_s14CarPlayAssetUI17NotificationModelVSgMd);
  }

  return result;
}

uint64_t closure #1 in closure #2 in static CAFMinimalNotificationSource.sanitize(notification:displayID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v61 = a5;
  v59 = a3;
  v60 = a4;
  v7 = type metadata accessor for NotificationModel.ValidationError();
  v62 = *(v7 - 8);
  v63 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v58 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v55 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v55 - v13;
  v15 = type metadata accessor for NotificationModel();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v55 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v55 - v23;
  NotificationModel.ValidationError.correct(on:)();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    outlined destroy of RequestTemporaryContentModel?(v14, &_s14CarPlayAssetUI17NotificationModelVSgMd);
    v25 = static os_log_type_t.info.getter();
    (*(v16 + 16))(v19, a1, v15);
    v26 = v58;
    (*(v62 + 16))(v58, a2, v63);
    type metadata accessor for OS_os_log();
    v27 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v27, v25))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v64 = v29;
      *v28 = 136315650;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v64);
      *(v28 + 12) = 2080;
      v30 = NotificationModel.id.getter();
      LODWORD(v60) = v25;
      v32 = v31;
      (*(v16 + 8))(v19, v15);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v64);

      *(v28 + 14) = v33;
      *(v28 + 22) = 2080;
      v34 = NotificationModel.ValidationError.description.getter();
      v36 = v35;
      (*(v62 + 8))(v26, v63);
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v64);

      *(v28 + 24) = v37;
      _os_log_impl(&dword_24234D000, v27, v60, "Unable to correct issue on notification %s:%s: %s", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x245D0E5A0](v29, -1, -1);
      MEMORY[0x245D0E5A0](v28, -1, -1);
    }

    else
    {

      (*(v62 + 8))(v26, v63);
      (*(v16 + 8))(v19, v15);
    }

    v52 = 1;
    v53 = v61;
  }

  else
  {
    v58 = *(v16 + 32);
    (v58)(v24, v14, v15);
    v38 = static os_log_type_t.info.getter();
    (*(v16 + 16))(v22, a1, v15);
    (*(v62 + 16))(v11, a2, v63);
    type metadata accessor for OS_os_log();
    v39 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v39, v38))
    {
      v40 = swift_slowAlloc();
      v57 = v24;
      v41 = v40;
      v56 = swift_slowAlloc();
      v64 = v56;
      *v41 = 136315650;
      *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v64);
      *(v41 + 12) = 2080;
      v42 = NotificationModel.id.getter();
      LODWORD(v60) = v38;
      v44 = v43;
      (*(v16 + 8))(v22, v15);
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v64);

      *(v41 + 14) = v45;
      *(v41 + 22) = 2080;
      v46 = NotificationModel.ValidationError.description.getter();
      v48 = v47;
      (*(v62 + 8))(v11, v63);
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v64);

      *(v41 + 24) = v49;
      _os_log_impl(&dword_24234D000, v39, v60, "Corrected issue on notification  %s:%s: %s", v41, 0x20u);
      v50 = v56;
      swift_arrayDestroy();
      MEMORY[0x245D0E5A0](v50, -1, -1);
      v51 = v41;
      v24 = v57;
      MEMORY[0x245D0E5A0](v51, -1, -1);
    }

    else
    {

      (*(v62 + 8))(v11, v63);
      (*(v16 + 8))(v22, v15);
    }

    v53 = v61;
    (v58)(v61, v24, v15);
    v52 = 0;
  }

  return (*(v16 + 56))(v53, v52, 1, v15);
}

uint64_t CAFMinimalNotificationSource.convert(message:requestContent:destination:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v114 = a2;
  v130 = a4;
  v105 = type metadata accessor for UUID();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v103 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for NotificationModel();
  v129 = *(v131 - 8);
  v7 = MEMORY[0x28223BE20](v131);
  v116 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v128 = &v103 - v9;
  v121 = type metadata accessor for NotificationModel.Style();
  v118 = *(v121 - 8);
  v10 = MEMORY[0x28223BE20](v121);
  v115 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v120 = &v103 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSgMd);
  MEMORY[0x28223BE20](v13 - 8);
  v111 = &v103 - v14;
  v119 = type metadata accessor for NotificationModel.MinimalNotificationModel();
  v15 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v125 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for NotificationModel.TrailingButtonConfiguration();
  v126 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v124 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelV6SymbolVSgMd);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v110 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v103 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelV4TextOSgMd);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v103 - v25;
  v27 = type metadata accessor for NotificationModel.Text();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v108 = &v103 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v103 - v31;
  LODWORD(v106) = *a3;
  v113 = dispatch thunk of CAFMinimalRemoteNotificationObservable.displayPanelIdentifier.getter();
  v123 = v33;
  v109 = dispatch thunk of CAFMinimalRemoteNotificationObservable.identifier.getter();
  v122 = v34;
  v35 = dispatch thunk of CAFMinimalRemoteNotificationObservable.userVisibleLabel.getter();
  v37 = v36;

  v38 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v38 = v35 & 0xFFFFFFFFFFFFLL;
  }

  v117 = v15;
  v127 = v17;
  if (v38)
  {
    dispatch thunk of CAFMinimalRemoteNotificationObservable.userVisibleLabel.getter();
  }

  v39 = dispatch thunk of CAFMinimalRemoteNotificationObservable.userVisibleDescription.getter();
  v41 = v40;

  v42 = HIBYTE(v41) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v42 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (v42)
  {
    dispatch thunk of CAFMinimalRemoteNotificationObservable.userVisibleDescription.getter();
  }

  v43 = v23;
  NotificationModel.Text.init(title:body:)();
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {

    outlined destroy of RequestTemporaryContentModel?(v26, &_s14CarPlayAssetUI17NotificationModelV4TextOSgMd);
    v44 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v45 = static OS_os_log.default.getter();
    v46 = os_log_type_enabled(v45, v44);
    v47 = v131;
    if (v46)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v132[0] = v49;
      *v48 = 136315138;
      v50 = v47;
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v123, v132);

      *(v48 + 4) = v51;
      v47 = v50;
      _os_log_impl(&dword_24234D000, v45, v44, "No text added to notification on display: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x245D0E5A0](v49, -1, -1);
      MEMORY[0x245D0E5A0](v48, -1, -1);
    }

    else
    {
    }

    v60 = 1;
    v62 = v129;
    v61 = v130;
  }

  else
  {
    v107 = v28;
    v52 = *(v28 + 32);
    v53 = v32;
    v52(v32, v26, v27);
    v54 = dispatch thunk of CAFMinimalRemoteNotificationObservable.symbolNameAndColor.getter();
    v55 = [v54 name];
    if (v55)
    {
      v56 = v55;
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;
    }

    else
    {
      v57 = 0;
      v59 = 0;
    }

    static NotificationModel.getSymbol(symbolName:symbolColor:)(v57, v59, [v54 color], v43);

    v63 = dispatch thunk of CAFMinimalRemoteNotificationObservable.trailingButton.getter();
    [v63 type];

    v64 = v43;
    v65 = swift_allocObject();
    swift_weakInit();
    v66 = swift_allocObject();
    v66[2] = v65;
    v66[3] = a1;
    v112 = v54;
    v67 = v114;
    v66[4] = v114;
    v106 = a1;
    v68 = v67;
    v69 = v124;
    NotificationModel.TrailingButtonConfiguration.init(symbolName:handler:)();
    (*(v107 + 16))(v108, v53, v27);
    v114 = v64;
    outlined init with copy of NotificationModel.Symbol?(v64, v110, &_s14CarPlayAssetUI17NotificationModelV6SymbolVSgMd);
    v71 = v126;
    v70 = v127;
    v72 = v111;
    (*(v126 + 16))(v111, v69, v127);
    (*(v71 + 56))(v72, 0, 1, v70);
    *(swift_allocObject() + 16) = v68;
    v73 = v68;
    v74 = v125;
    NotificationModel.MinimalNotificationModel.init(text:symbol:trailingButtonConfiguration:dismissalHandler:)();
    v75 = v117;
    v76 = *(v117 + 16);
    v77 = v120;
    v111 = v27;
    v78 = v119;
    v76(v120, v74, v119);
    v79 = *MEMORY[0x277CF8BE8];
    v110 = v53;
    v80 = v118;
    v81 = v121;
    (*(v118 + 104))(v77, v79, v121);
    (*(v80 + 16))(v115, v77, v81);
    v82 = v128;
    NotificationModel.init(id:style:)();
    LODWORD(v72) = static os_log_type_t.info.getter();
    v62 = v129;
    v83 = v116;
    v47 = v131;
    (*(v129 + 16))(v116, v82, v131);
    type metadata accessor for OS_os_log();
    v84 = static OS_os_log.default.getter();
    LODWORD(v122) = v72;
    v85 = v72;
    v86 = v84;
    if (os_log_type_enabled(v84, v85))
    {
      v87 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v132[0] = v115;
      *v87 = 136315650;
      v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v123, v132);

      *(v87 + 4) = v88;
      *(v87 + 12) = 2080;
      v89 = CAFMinimalRemoteNotificationObservable.observed.getter();
      v90 = v103;
      CAFService.id.getter();

      lazy protocol witness table accessor for type NotificationModel and conformance NotificationModel(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v91 = v105;
      v92 = dispatch thunk of CustomStringConvertible.description.getter();
      v94 = v93;
      v95 = v90;
      v47 = v131;
      (*(v104 + 8))(v95, v91);
      v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v94, v132);

      *(v87 + 14) = v96;
      *(v87 + 22) = 2080;
      v97 = NotificationModel.description.getter();
      v99 = v98;
      (*(v62 + 8))(v83, v47);
      v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v99, v132);

      *(v87 + 24) = v100;
      _os_log_impl(&dword_24234D000, v86, v122, "Converted notification (displayID = (%s), message.id = %s) to %s", v87, 0x20u);
      v101 = v115;
      swift_arrayDestroy();
      MEMORY[0x245D0E5A0](v101, -1, -1);
      MEMORY[0x245D0E5A0](v87, -1, -1);

      (*(v80 + 8))(v120, v121);
      (*(v75 + 8))(v125, v119);
    }

    else
    {

      (*(v62 + 8))(v83, v47);
      (*(v80 + 8))(v77, v81);
      (*(v75 + 8))(v125, v78);
    }

    (*(v126 + 8))(v124, v127);
    outlined destroy of RequestTemporaryContentModel?(v114, &_s14CarPlayAssetUI17NotificationModelV6SymbolVSgMd);
    (*(v107 + 8))(v110, v111);
    v61 = v130;
    (*(v62 + 32))(v130, v128, v47);
    v60 = 0;
  }

  return (*(v62 + 56))(v61, v60, 1, v47);
}

uint64_t closure #1 in CAFMinimalNotificationSource.convert(message:requestContent:destination:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    dispatch thunk of CAFMinimalRemoteNotificationObservable.trailingButtonState.setter();
    dispatch thunk of CAFRequestTemporaryContentObservable.on.setter();
    v2 = dispatch thunk of CAFMinimalRemoteNotificationObservable.trailingButton.getter();
    v3 = [v2 contentURLAction];

    if (v3)
    {
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;

      static os_log_type_t.info.getter();
      type metadata accessor for OS_os_log();
      v7 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      (*(v1 + 40))(v4, v6);
    }
  }

  return result;
}

uint64_t CAFMinimalNotificationSource.deinit()
{

  return v0;
}

uint64_t CAFMinimalNotificationSource.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t protocol witness for CAFDataSource.output.getter in conformance CAFMinimalNotificationSource()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGGMd);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - v2;
  v6[1] = CAFNotificationSource.notification.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<NotificationModel?, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd);
  lazy protocol witness table accessor for type NotificationModel? and conformance <A> A?();
  Publisher<>.removeDuplicates()();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<AnyPublisher<NotificationModel?, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGGMd);
  v4 = Publisher.eraseToAnyPublisher()();
  (*(v1 + 8))(v3, v0);
  return v4;
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

uint64_t sub_2423C75B8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2423C760C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id CAFUIAlertButton.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CAFUIAlertButton.init()()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for CAFUIAlertButton();
  v1 = objc_msgSendSuper2(&v7, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 tintColor];
  [v3 setTitleColor:v4 forState:0];

  v5 = [v2 _carSystemQuaternaryColor];
  [v3 setBackgroundColor_];

  return v3;
}

Swift::Void __swiftcall CAFUIAlertButton.didUpdateFocus(in:with:)(UIFocusUpdateContext in, UIFocusAnimationCoordinator with)
{
  v3 = v2;
  v13.receiver = v3;
  v13.super_class = type metadata accessor for CAFUIAlertButton();
  objc_msgSendSuper2(&v13, sel_didUpdateFocusInContext_withAnimationCoordinator_, in.super.isa, with.super.isa);
  v6 = [(objc_class *)in.super.isa nextFocusedView];
  if (v6 && (v7 = v6, type metadata accessor for NSObject(), v8 = static NSObject.== infix(_:_:)(), v7, (v8 & 1) != 0))
  {
    v9 = &selRef__carSystemFocusColor;
    v10 = &selRef__carSystemFocusLabelColor;
  }

  else
  {
    v9 = &selRef__carSystemQuaternaryColor;
    v10 = &selRef_tintColor;
  }

  v11 = [objc_opt_self() *v10];
  [v3 setTitleColor:v11 forState:0];

  v12 = [objc_opt_self() *v9];
  [v3 setBackgroundColor_];
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

id CAFUIAlertButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CAFUIAlertButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFUIAlertButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
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
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CAFUISoundView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t storeEnumTagSinglePayload for CAFUISoundView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t closure #1 in CAFUISoundView.body.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  static Alignment.center.getter();
  v4 = a1[7];
  v76 = a1[6];
  v77 = v4;
  v78 = a1[8];
  v79 = *(a1 + 18);
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v59 = v76;
  v60 = v77;
  v61 = v78;
  *&v62 = v79;
  outlined init with copy of CAFUIEqualizerGroup(&v76, v36);
  static Alignment.center.getter();
  v5 = a1[3];
  v72 = a1[2];
  v73 = v5;
  v6 = a1[5];
  v74 = a1[4];
  v75 = v6;
  v7 = a1[1];
  v70 = *a1;
  v71 = v7;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v47 = v72;
  v48 = v73;
  v49 = v74;
  v50 = v75;
  v45 = v70;
  v46 = v71;
  outlined init with copy of CAFUIBalanceFadeView(&v70, v36);
  LOBYTE(a1) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v58 = 0;
  v16 = static SafeAreaRegions.all.getter();
  v17 = static Edge.Set.all.getter();
  v33[8] = v67;
  v33[9] = v68;
  v33[4] = v63;
  v33[5] = v64;
  v33[6] = v65;
  v33[7] = v66;
  v33[0] = v59;
  v33[1] = v60;
  v33[2] = v61;
  v33[3] = v62;
  *(&v31[7] + 7) = v66;
  *(&v31[8] + 7) = v67;
  *(&v31[9] + 7) = v68;
  *(&v31[3] + 7) = v62;
  *(&v31[4] + 7) = v63;
  *(&v31[5] + 7) = v64;
  *(&v31[6] + 7) = v65;
  *(v31 + 7) = v59;
  v34 = v69;
  v32 = 1;
  *(&v31[10] + 7) = v69;
  *(&v31[1] + 7) = v60;
  *(&v31[2] + 7) = v61;
  v30 = 1;
  __src[10] = v55;
  __src[11] = v56;
  __src[12] = v57;
  __src[6] = v51;
  __src[7] = v52;
  __src[9] = v54;
  __src[8] = v53;
  __src[2] = v47;
  __src[3] = v48;
  __src[5] = v50;
  __src[4] = v49;
  __src[0] = v45;
  __src[1] = v46;
  LOBYTE(__src[13]) = a1;
  *(&__src[13] + 1) = v9;
  *&__src[14] = v11;
  *(&__src[14] + 1) = v13;
  *&__src[15] = v15;
  BYTE8(__src[15]) = 0;
  *&__src[16] = v16;
  BYTE8(__src[16]) = v17;
  memcpy(&v29[7], __src, 0x109uLL);
  v18 = v31[6];
  *(a2 + 121) = v31[7];
  v19 = v31[9];
  *(a2 + 137) = v31[8];
  *(a2 + 153) = v19;
  *(a2 + 168) = *(&v31[9] + 15);
  v20 = v31[2];
  *(a2 + 57) = v31[3];
  v21 = v31[5];
  *(a2 + 73) = v31[4];
  *(a2 + 89) = v21;
  *(a2 + 105) = v18;
  v22 = v31[1];
  *(a2 + 9) = v31[0];
  *(a2 + 25) = v22;
  v28 = 1;
  v23 = v32;
  v24 = v30;
  *a2 = 0;
  *(a2 + 8) = v23;
  *(a2 + 41) = v20;
  *(a2 + 184) = 0;
  *(a2 + 192) = v24;
  memcpy((a2 + 193), v29, 0x110uLL);
  *(a2 + 472) = 0;
  *(a2 + 480) = 1;
  v36[10] = v55;
  v36[11] = v56;
  v36[12] = v57;
  v36[6] = v51;
  v36[7] = v52;
  v36[9] = v54;
  v36[8] = v53;
  v36[2] = v47;
  v36[3] = v48;
  v36[5] = v50;
  v36[4] = v49;
  v36[1] = v46;
  v36[0] = v45;
  v37 = a1;
  v38 = v9;
  v39 = v11;
  v40 = v13;
  v41 = v15;
  v42 = 0;
  v43 = v16;
  v44 = v17;
  outlined init with copy of NotificationModel.Symbol?(v33, v26, &_s7SwiftUI15ModifiedContentVy5CAFUI19CAFUIEqualizerGroupVAA16_FlexFrameLayoutVGMd);
  outlined init with copy of NotificationModel.Symbol?(__src, v26, &_s7SwiftUI15ModifiedContentVyACyACy5CAFUI20CAFUIBalanceFadeViewVAA16_FlexFrameLayoutVGAA08_PaddingK0VGAA024_SafeAreaRegionsIgnoringK0VGMd);
  outlined destroy of RequestTemporaryContentModel?(v36, &_s7SwiftUI15ModifiedContentVyACyACy5CAFUI20CAFUIBalanceFadeViewVAA16_FlexFrameLayoutVGAA08_PaddingK0VGAA024_SafeAreaRegionsIgnoringK0VGMd);
  v26[8] = v67;
  v26[9] = v68;
  v27 = v69;
  v26[4] = v63;
  v26[5] = v64;
  v26[6] = v65;
  v26[7] = v66;
  v26[0] = v59;
  v26[1] = v60;
  v26[2] = v61;
  v26[3] = v62;
  return outlined destroy of RequestTemporaryContentModel?(v26, &_s7SwiftUI15ModifiedContentVy5CAFUI19CAFUIEqualizerGroupVAA16_FlexFrameLayoutVGMd);
}

void *protocol witness for View.body.getter in conformance CAFUISoundView@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 112);
  v14[6] = *(v1 + 96);
  v14[7] = v3;
  v14[8] = *(v1 + 128);
  v15 = *(v1 + 144);
  v4 = *(v1 + 48);
  v14[2] = *(v1 + 32);
  v14[3] = v4;
  v5 = *(v1 + 80);
  v14[4] = *(v1 + 64);
  v14[5] = v5;
  v6 = *(v1 + 16);
  v14[0] = *v1;
  v14[1] = v6;
  v7 = static VerticalAlignment.center.getter();
  v13 = 0;
  closure #1 in CAFUISoundView.body.getter(v14, __src);
  memcpy(__dst, __src, 0x1E1uLL);
  memcpy(v17, __src, 0x1E1uLL);
  outlined init with copy of NotificationModel.Symbol?(__dst, &v10, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVy5CAFUI19CAFUIEqualizerGroupVAA16_FlexFrameLayoutVGAeGyAGyAGyAH016CAFUIBalanceFadeD0VALGAA08_PaddingM0VGAA024_SafeAreaRegionsIgnoringM0VGAEtGMd);
  outlined destroy of RequestTemporaryContentModel?(v17, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVy5CAFUI19CAFUIEqualizerGroupVAA16_FlexFrameLayoutVGAeGyAGyAGyAH016CAFUIBalanceFadeD0VALGAA08_PaddingM0VGAA024_SafeAreaRegionsIgnoringM0VGAEtGMd);
  memcpy(&v12[7], __dst, 0x1E1uLL);
  v8 = v13;
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  return memcpy((a1 + 17), v12, 0x1E8uLL);
}

unint64_t lazy protocol witness table accessor for type HStack<TupleView<(Spacer, ModifiedContent<CAFUIEqualizerGroup, _FlexFrameLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<CAFUIBalanceFadeView, _FlexFrameLayout>, _PaddingLayout>, _SafeAreaRegionsIgnoringLayout>, Spacer)>> and conformance HStack<A>()
{
  result = lazy protocol witness table cache variable for type HStack<TupleView<(Spacer, ModifiedContent<CAFUIEqualizerGroup, _FlexFrameLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<CAFUIBalanceFadeView, _FlexFrameLayout>, _PaddingLayout>, _SafeAreaRegionsIgnoringLayout>, Spacer)>> and conformance HStack<A>;
  if (!lazy protocol witness table cache variable for type HStack<TupleView<(Spacer, ModifiedContent<CAFUIEqualizerGroup, _FlexFrameLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<CAFUIBalanceFadeView, _FlexFrameLayout>, _PaddingLayout>, _SafeAreaRegionsIgnoringLayout>, Spacer)>> and conformance HStack<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVy5CAFUI19CAFUIEqualizerGroupVAA16_FlexFrameLayoutVGAgIyAIyAIyAJ016CAFUIBalanceFadeE0VANGAA08_PaddingN0VGAA024_SafeAreaRegionsIgnoringN0VGAGtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HStack<TupleView<(Spacer, ModifiedContent<CAFUIEqualizerGroup, _FlexFrameLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<CAFUIBalanceFadeView, _FlexFrameLayout>, _PaddingLayout>, _SafeAreaRegionsIgnoringLayout>, Spacer)>> and conformance HStack<A>);
  }

  return result;
}

id CAFUIPunchthroughState.stateImage.getter()
{
  if (!*v0)
  {
    return 0;
  }

  v1 = MEMORY[0x245D0D180](0xD00000000000001ALL, 0x800000024242B540);
  v2 = [objc_opt_self() systemImageNamed_];

  if (!v2)
  {
    return 0;
  }

  v3 = [objc_opt_self() systemFontOfSize_];
  v4 = [objc_opt_self() configurationWithFont:v3 scale:3];

  v5 = [v2 imageWithConfiguration_];
  return v5;
}

void __swiftcall CAFUIPunchthroughState.buttonForCurrentState(title:)(UIButton_optional *__return_ptr retstr, Swift::String_optional title)
{
  object = title.value._object;
  v4 = type metadata accessor for UIButton.Configuration();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = *v2;
  if (*v2 && (v12 = MEMORY[0x245D0D180](0xD00000000000001ALL, 0x800000024242B540), v13 = [objc_opt_self() systemImageNamed_], v12, v13) && (v14 = objc_msgSend(objc_opt_self(), sel_systemFontOfSize_, 16.0), v15 = objc_msgSend(objc_opt_self(), sel_configurationWithFont_scale_, v14, 3), v18 = object, v16 = v15, v14, v17 = objc_msgSend(v13, sel_imageWithConfiguration_, v16), v16, object = v18, v13, v17))
  {
  }

  else if (!object)
  {
    return;
  }

  static UIButton.Configuration.plain()();

  UIButton.Configuration.title.setter();
  v19 = v11;
  CAFUIPunchthroughState.stateImage.getter();
  UIButton.Configuration.image.setter();
  UIButton.Configuration.imagePadding.setter();
  UIButton.Configuration.imagePlacement.setter();
  type metadata accessor for CAFUIPunchThroughRequestButton();
  (*(v5 + 16))(v8, v10, v4);
  UIButton.init(configuration:primaryAction:)();
  (*(v5 + 8))(v10, v4);
}

Swift::Int CAFUIPunchthroughState.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x245D0DB60](v1);
  return Hasher._finalize()();
}

uint64_t CAFUIRequestContentManager.__allocating_init(session:)(void *a1)
{
  v2 = swift_allocObject();
  CAFUIRequestContentManager.init(session:)(a1);
  return v2;
}

uint64_t CAFUIRequestContentManager.init(session:)(void *a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(CAFUIPunchThroughController) initWithSession_];
  *(v1 + 16) = v4;
  v5 = [v4 session];
  v6 = [v5 configuration];

  v7 = [v6 screens];
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CARScreenInfo);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    *(v2 + 24) = 0;
    goto LABEL_9;
  }

  result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x245D0D9A0](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v10 = *(v8 + 32);
  }

  v11 = v10;

  v12 = [v11 availableInteractionModels];

  *(v2 + 24) = (v12 & 2) != 0;
LABEL_9:
  v13 = [*(v2 + 16) availablePunchThroughIdentifiers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = CAFUIRequestContentManager.mainDisplayIdentifier.getter();
  if (*(v14 + 16))
  {
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
    v19 = v18;

    if (v19)
    {
      v20 = *(*(v14 + 56) + 8 * v17);

      _StringGuts.grow(_:)(28);

      v21 = MEMORY[0x245D0D320](v20, MEMORY[0x277D837D0]);
      v23 = v22;

      MEMORY[0x245D0D240](v21, v23);

      specialized static CAFUILogger.default(_:function:file:line:)(0xD00000000000001ALL, 0x800000024242B560, 0x7365732874696E69, 0xEE00293A6E6F6973, 71);
    }
  }

  else
  {
  }

  return v2;
}

uint64_t CAFUIRequestContentManager.open(contentURLString:in:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of RequestTemporaryContentModel?(v12, &_s10Foundation3URLVSgMd);
LABEL_11:
    aBlock = 0;
    v35 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    aBlock = 0xD000000000000019;
    v35 = 0x800000024242B580;
    MEMORY[0x245D0D240](a1, a2);
    specialized static CAFUILogger.error(_:function:file:line:)(aBlock, v35, 0xD000000000000025, 0x800000024242B5A0, 91);

    return a4(0);
  }

  v31 = a3;
  v33 = a4;
  (*(v14 + 32))(v16, v12, v13);
  URL.scheme.getter();
  if (!v17)
  {
    (*(v14 + 8))(v16, v13);
    a4 = v33;
    goto LABEL_11;
  }

  v32 = a5;
  v18 = String.lowercased()();

  if (v18._countAndFlagsBits == 0x7274737475706E69 && v18._object == 0xEB000000006D6165)
  {

LABEL_13:
    v27 = specialized static CAFUIRequestContentManager.inputStreamIdentifier(from:)();
    v29 = v33;
    if (v28)
    {
      CAFUIRequestContentManager.present(identifier:completion:)(v27, v28, v33, v32);
    }

    else
    {
      aBlock = 0;
      v35 = 0xE000000000000000;
      _StringGuts.grow(_:)(44);

      aBlock = 541872725;
      v35 = 0xE400000000000000;
      MEMORY[0x245D0D240](a1, a2);
      MEMORY[0x245D0D240](0xD000000000000026, 0x800000024242B5F0);
      specialized static CAFUILogger.error(_:function:file:line:)(aBlock, v35, 0xD000000000000025, 0x800000024242B5A0, 101);

      v29(0);
    }

    return (*(v14 + 8))(v16, v13);
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
    goto LABEL_13;
  }

  aBlock = 0;
  v35 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  aBlock = 0xD000000000000014;
  v35 = 0x800000024242B5D0;
  lazy protocol witness table accessor for type URL and conformance URL();
  v21 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x245D0D240](v21);

  specialized static CAFUILogger.error(_:function:file:line:)(aBlock, v35, 0xD000000000000025, 0x800000024242B5A0, 115);

  URL._bridgeToObjectiveC()(v22);
  v24 = v23;
  v38 = v33;
  v39 = v32;
  aBlock = MEMORY[0x277D85DD0];
  v35 = 1107296256;
  v36 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v37 = &block_descriptor_5;
  v25 = _Block_copy(&aBlock);

  [v31 openURL:v24 options:0 completionHandler:v25];
  _Block_release(v25);

  return (*(v14 + 8))(v16, v13);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void CAFUIRequestContentManager.present(identifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v13 = specialized static CAFUIRequestContentManager.inputStreamIdentifier(from:)();
  if (v14)
  {
    a2 = v14;
  }

  else
  {

    v13 = a1;
  }

  v15 = *(v6 + 16);
  v16 = MEMORY[0x245D0D180](v13, a2);

  v17 = CAFUIRequestContentManager.mainDisplayIdentifier.getter();
  v18 = MEMORY[0x245D0D180](v17);

  v20[4] = a3;
  v20[5] = a4;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v20[3] = a5;
  v19 = _Block_copy(v20);

  [v15 *a6];
  _Block_release(v19);
}

CAFUI::CAFUIPunchthroughState __swiftcall CAFUIRequestContentManager.state(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = v1;
  v6 = specialized static CAFUIRequestContentManager.inputStreamIdentifier(from:)();
  if (!v7)
  {
    _StringGuts.grow(_:)(38);

    MEMORY[0x245D0D240](countAndFlagsBits, object);
    v19 = 0xD000000000000024;
    v20 = 0x800000024242B620;
    v21 = 144;
LABEL_8:
    specialized static CAFUILogger.default(_:function:file:line:)(v19, v20, 0x6F66286574617473, 0xEB00000000293A72, v21);

    v18 = 0;
    goto LABEL_9;
  }

  v8 = v6;
  v9 = v7;
  v10 = *(v2 + 16);
  v11 = MEMORY[0x245D0D180]();
  v12 = [v10 hasPunchThroughWithIdentifier_];

  if (!v12)
  {
    _StringGuts.grow(_:)(52);
    MEMORY[0x245D0D240](0xD000000000000013, 0x800000024242B650);
    MEMORY[0x245D0D240](v8, v9);

    MEMORY[0x245D0D240](0xD00000000000001DLL, 0x800000024242B670);
    v22 = CAFUIRequestContentManager.mainDisplayIdentifier.getter();
    MEMORY[0x245D0D240](v22);

    v19 = 0;
    v20 = 0xE000000000000000;
    v21 = 149;
    goto LABEL_8;
  }

  v13 = CAFUIRequestContentManager.mainDisplayIdentifier.getter();
  v14 = MEMORY[0x245D0D180](v13);

  v15 = MEMORY[0x245D0D180](v8, v9);

  v16 = [v10 displayIdentifier:v14 isDisplayingPunchThroughWithIdentifier:v15];

  if (v16)
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

LABEL_9:
  *v5 = v18;
  return result;
}

uint64_t CAFUIRequestContentManager.mainDisplayIdentifier.getter()
{
  v1 = [*(v0 + 16) session];
  v2 = [v1 configuration];

  v3 = [v2 displays];
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CARDisplayInfo);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_9;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_9:
    v6 = MEMORY[0x245D0D9A0](0, v4);
    goto LABEL_6;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
LABEL_6:
    v7 = v6;

    v8 = [v7 identifier];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t CAFUIRequestContentManager.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 25, 7);
}

uint64_t CAFUIPunchThroughRequestButton.updateConfiguration()()
{
  v1 = v0;
  v2 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v44 = *(v2 - 8);
  v45 = v2;
  MEMORY[0x28223BE20](v2);
  v43 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UIBackgroundConfiguration();
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v42 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v47 = &v40 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit40UIConfigurationTextAttributesTransformerVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v41 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit31UIConfigurationColorTransformerVSgMd);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v46 = &v40 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v40 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v40 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v40 - v25;
  UIButton.configuration.getter();
  v27 = type metadata accessor for UIButton.Configuration();
  v28 = *(*(v27 - 8) + 48);
  if (v28(v26, 1, v27))
  {
    outlined init with copy of UIButton.Configuration?(v26, v16);
    UIButton.configuration.setter();
    outlined destroy of RequestTemporaryContentModel?(v26, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  }

  else
  {
    *(swift_allocObject() + 16) = v0;
    v40 = v0;
    UIConfigurationColorTransformer.init(_:)();
    v29 = type metadata accessor for UIConfigurationColorTransformer();
    (*(*(v29 - 8) + 56))(v12, 0, 1, v29);
    UIButton.Configuration.imageColorTransformer.setter();
    UIButton.configuration.setter();
  }

  UIButton.configuration.getter();
  if (v28(v24, 1, v27))
  {
    outlined init with copy of UIButton.Configuration?(v24, v16);
    UIButton.configuration.setter();
    outlined destroy of RequestTemporaryContentModel?(v24, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  }

  else
  {
    *(swift_allocObject() + 16) = v0;
    v40 = v0;
    v30 = v41;
    UIConfigurationTextAttributesTransformer.init(_:)();
    v31 = type metadata accessor for UIConfigurationTextAttributesTransformer();
    (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
    UIButton.Configuration.titleTextAttributesTransformer.setter();
    UIButton.configuration.setter();
  }

  v32 = v47;
  static UIBackgroundConfiguration.clear()();
  UIBackgroundConfiguration.backgroundColor.setter();
  *(swift_allocObject() + 16) = v1;
  v33 = v1;
  UIConfigurationColorTransformer.init(_:)();
  v34 = type metadata accessor for UIConfigurationColorTransformer();
  (*(*(v34 - 8) + 56))(v12, 0, 1, v34);
  UIBackgroundConfiguration.backgroundColorTransformer.setter();
  UIButton.configuration.getter();
  v35 = v28(v21, 1, v27);
  v36 = v48;
  if (v35)
  {
    outlined init with copy of UIButton.Configuration?(v21, v16);
    UIButton.configuration.setter();
    outlined destroy of RequestTemporaryContentModel?(v21, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
    v37 = v49;
  }

  else
  {
    v37 = v49;
    (*(v48 + 16))(v42, v32, v49);
    UIButton.Configuration.background.setter();
    UIButton.configuration.setter();
  }

  v38 = v46;
  UIButton.configuration.getter();
  if (v28(v38, 1, v27))
  {
    outlined init with copy of UIButton.Configuration?(v38, v16);
    UIButton.configuration.setter();
    (*(v36 + 8))(v32, v37);
    return outlined destroy of RequestTemporaryContentModel?(v38, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  }

  else
  {
    (*(v44 + 104))(v43, *MEMORY[0x277D74FD8], v45);
    UIButton.Configuration.cornerStyle.setter();
    UIButton.configuration.setter();
    return (*(v36 + 8))(v32, v37);
  }
}

id closure #1 in CAFUIPunchThroughRequestButton.updateConfiguration()(int a1, id a2)
{
  if ([a2 isFocused])
  {
    v3 = &selRef__carSystemFocusLabelColor;
  }

  else
  {
    v3 = &selRef__carSystemFocusLabelColor;
    if (([a2 isSelected] & 1) == 0 && !objc_msgSend(a2, sel_isHighlighted))
    {
      v3 = &selRef__carSystemFocusColor;
    }
  }

  v4 = [objc_opt_self() *v3];

  return v4;
}

uint64_t closure #2 in CAFUIPunchThroughRequestButton.updateConfiguration()@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AttributeContainer();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  [objc_opt_self() systemFontOfSize_];
  lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
  AttributeContainer.subscript.setter();
  if ([a2 isFocused])
  {
    v7 = &selRef__carSystemFocusLabelColor;
  }

  else
  {
    v7 = &selRef__carSystemFocusLabelColor;
    if (([a2 isSelected] & 1) == 0 && !objc_msgSend(a2, sel_isHighlighted))
    {
      v7 = &selRef__carSystemFocusColor;
    }
  }

  [objc_opt_self() *v7];
  lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.ForegroundColorAttribute and conformance AttributeScopes.UIKitAttributes.ForegroundColorAttribute();
  return AttributeContainer.subscript.setter();
}

id closure #3 in CAFUIPunchThroughRequestButton.updateConfiguration()(int a1, id a2)
{
  if ([a2 isFocused])
  {
    v3 = &selRef__carSystemFocusColor;
  }

  else
  {
    v3 = &selRef__carSystemFocusColor;
    if (([a2 isSelected] & 1) == 0 && !objc_msgSend(a2, sel_isHighlighted))
    {
      v3 = &selRef_clearColor;
    }
  }

  v4 = [objc_opt_self() *v3];

  return v4;
}

id CAFUIPunchThroughRequestButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFUIPunchThroughRequestButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized static CAFUIRequestContentManager.inputStreamIdentifier(from:)()
{
  v0 = type metadata accessor for URLQueryItem();
  v46 = *(v0 - 8);
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - v7;
  v9 = type metadata accessor for URLComponents();
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x28223BE20](v9);
  v45 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of RequestTemporaryContentModel?(v13, &_s10Foundation3URLVSgMd);
    return 0;
  }

  v39 = v5;
  (*(v15 + 32))(v17, v13, v14);
  URL.scheme.getter();
  if (!v18)
  {
    goto LABEL_20;
  }

  v38 = v0;
  v19 = String.lowercased()();

  if (v19._countAndFlagsBits == 0x7274737475706E69 && v19._object == 0xEB000000006D6165)
  {

    v20 = v45;
    goto LABEL_8;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v20 = v45;
  if ((v21 & 1) == 0)
  {
LABEL_20:
    (*(v15 + 8))(v17, v14);
    return 0;
  }

LABEL_8:
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v23 = v43;
  v22 = v44;
  if ((*(v43 + 48))(v8, 1, v44) == 1)
  {
    (*(v15 + 8))(v17, v14);
    outlined destroy of RequestTemporaryContentModel?(v8, &_s10Foundation13URLComponentsVSgMd);
    return 0;
  }

  (*(v23 + 32))(v20, v8, v22);
  result = URLComponents.queryItems.getter();
  if (!result)
  {
    (*(v23 + 8))(v20, v22);
    goto LABEL_20;
  }

  v25 = result;
  v40 = *(result + 16);
  v26 = v38;
  if (!v40)
  {
LABEL_18:

    (*(v43 + 8))(v45, v44);
    goto LABEL_20;
  }

  v27 = 0;
  v28 = 0x696669746E656469;
  v41 = v46 + 16;
  v42 = (v46 + 8);
  while (1)
  {
    if (v27 >= *(v25 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v46 + 16))(v3, v25 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v27, v26);
    if (URLQueryItem.name.getter() == v28 && v29 == 0xEA00000000007265)
    {
      break;
    }

    v30 = v28;
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v31)
    {
      goto LABEL_24;
    }

    ++v27;
    result = (*v42)(v3, v26);
    v28 = v30;
    if (v40 == v27)
    {
      goto LABEL_18;
    }
  }

LABEL_24:

  v32 = v46 + 32;
  v33 = v39;
  (*(v46 + 32))(v39, v3, v26);
  v34 = URLQueryItem.value.getter();
  v36 = v35;
  (*(v43 + 8))(v45, v44);
  (*(v15 + 8))(v17, v14);
  (*(v32 - 24))(v33, v26);
  if (!v36)
  {
    return 0;
  }

  return v34;
}

unint64_t lazy protocol witness table accessor for type URL and conformance URL()
{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type CAFUIPunchthroughState and conformance CAFUIPunchthroughState()
{
  result = lazy protocol witness table cache variable for type CAFUIPunchthroughState and conformance CAFUIPunchthroughState;
  if (!lazy protocol witness table cache variable for type CAFUIPunchthroughState and conformance CAFUIPunchthroughState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFUIPunchthroughState and conformance CAFUIPunchthroughState);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CAFUIPunchthroughState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CAFUIPunchthroughState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t outlined init with copy of UIButton.Configuration?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2423CA988()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t specialized CAFUIRequestContentManager.open(contentURLString:in:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5, void *a6, uint64_t a7, uint64_t a8)
{
  v41 = a3;
  v42 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v39 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  v44 = a5;
  *(v21 + 16) = a5;
  v22 = a8;
  v23 = v17;
  *(v21 + 24) = a6;
  *(v21 + 32) = a7;
  v24 = v21;
  *(v21 + 40) = v22;
  v43 = a6;

  URL.init(string:)();
  v45 = v23;
  v46 = v18;
  if ((*(v18 + 48))(v16, 1, v23) == 1)
  {
    outlined destroy of RequestTemporaryContentModel?(v16, &_s10Foundation3URLVSgMd);
LABEL_11:
    aBlock = 0;
    v48 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    aBlock = 0xD000000000000019;
    v48 = 0x800000024242B580;
    MEMORY[0x245D0D240](a1, a2);
    specialized static CAFUILogger.error(_:function:file:line:)(aBlock, v48, 0xD000000000000025, 0x800000024242B5A0, 91);

    closure #1 in CAFUITileViewController.collectionView(_:didSelectItemAt:)(0, v44 & 1, v43, a7, v22);
  }

  (*(v46 + 32))(v20, v16, v45);
  URL.scheme.getter();
  if (!v25)
  {
    (*(v46 + 8))(v20, v45);
    goto LABEL_11;
  }

  v40 = v20;
  v26 = String.lowercased()();

  if (v26._countAndFlagsBits == 0x7274737475706E69 && v26._object == 0xEB000000006D6165)
  {
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {
      aBlock = 0;
      v48 = 0xE000000000000000;
      _StringGuts.grow(_:)(22);

      aBlock = 0xD000000000000014;
      v48 = 0x800000024242B5D0;
      lazy protocol witness table accessor for type URL and conformance URL();
      v29 = v40;
      v30 = v45;
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x245D0D240](v31);

      specialized static CAFUILogger.error(_:function:file:line:)(aBlock, v48, 0xD000000000000025, 0x800000024242B5A0, 115);

      URL._bridgeToObjectiveC()(v32);
      v34 = v33;
      v51 = partial apply for closure #1 in CAFUITileViewController.collectionView(_:didSelectItemAt:);
      v52 = v24;
      aBlock = MEMORY[0x277D85DD0];
      v48 = 1107296256;
      v49 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v50 = &block_descriptor_24;
      v35 = _Block_copy(&aBlock);

      [v41 openURL:v34 options:0 completionHandler:v35];
      _Block_release(v35);

      (*(v46 + 8))(v29, v30);
    }
  }

  v36 = specialized static CAFUIRequestContentManager.inputStreamIdentifier(from:)();
  if (v37)
  {
    CAFUIRequestContentManager.present(identifier:completion:)(v36, v37, partial apply for closure #1 in CAFUITileViewController.collectionView(_:didSelectItemAt:), v24);
  }

  else
  {
    aBlock = 0;
    v48 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);

    aBlock = 541872725;
    v48 = 0xE400000000000000;
    MEMORY[0x245D0D240](a1, a2);
    MEMORY[0x245D0D240](0xD000000000000026, 0x800000024242B5F0);
    specialized static CAFUILogger.error(_:function:file:line:)(aBlock, v48, 0xD000000000000025, 0x800000024242B5A0, 101);

    closure #1 in CAFUITileViewController.collectionView(_:didSelectItemAt:)(0, v44 & 1, v43, a7, v22);
  }

  (*(v46 + 8))(v40, v45);
}

uint64_t sub_2423CAF48()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t key path setter for CAFUIListItemCell.item : CAFUIListItemCell(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC5CAFUI17CAFUIListItemCell_item;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return CAFUIListItemCell.item.didset();
}

uint64_t CAFUIListItemCell.item.didset()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v70 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v75 = v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = (v70 - v7);
  v9 = type metadata accessor for UIListContentConfiguration();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v70 - v14;
  v16 = OBJC_IVAR____TtC5CAFUI17CAFUIListItemCell_item;
  result = swift_beginAccess();
  v18 = *(v0 + v16);
  if (v18)
  {

    static UIListContentConfiguration.valueCell()();
    v72 = v0;
    specialized CAFUICellProtocol.updateContentConfigurationProperties(_:)(v13, v15);
    v70[0] = *(v10 + 8);
    v70[1] = v10 + 8;
    v19 = (v70[0])(v13, v9);
    (*(*v18 + 200))(v19);
    v20 = UIListContentConfiguration.image.setter();
    (*(*v18 + 248))(v20);
    v21 = UIListContentConfiguration.secondaryText.setter();
    v22 = (*(*v18 + 368))(v21);
    v73 = v9;
    v74 = v15;
    v71 = v3;
    if (v22)
    {
      v23 = [objc_allocWithZone(MEMORY[0x277D74270]) init];
      v24 = (*(*v18 + 392))();
      [v23 setImage_];

      v25 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
      v26 = (*(*v18 + 224))();
      if (v27)
      {
        v28 = v26;
      }

      else
      {
        v28 = 0;
      }

      if (v27)
      {
        v29 = v27;
      }

      else
      {
        v29 = 0xE000000000000000;
      }

      v30 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v31 = MEMORY[0x245D0D180](v28, v29);

      v32 = [v30 initWithString_];

      [v25 appendAttributedString_];
      v33 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v34 = MEMORY[0x245D0D180](8224, 0xE200000000000000);
      v35 = [v33 initWithString_];

      [v25 appendAttributedString_];
      v36 = [objc_opt_self() attributedStringWithAttachment_];
      [v25 appendAttributedString_];

      UIListContentConfiguration.attributedText.setter();
    }

    else
    {
      (*(*v18 + 224))();
      v37 = UIListContentConfiguration.text.setter();
    }

    v38 = (*(*v18 + 272))(v37);
    if (v39)
    {
      v40 = HIBYTE(v39) & 0xF;
      if ((v39 & 0x2000000000000000) == 0)
      {
        v40 = v38 & 0xFFFFFFFFFFFFLL;
      }

      if (v40)
      {
        v41 = v38;
        v42 = v39;
        v43 = objc_allocWithZone(type metadata accessor for CAFUIBadgeView());
        v44 = CAFUIBadgeView.init(text:)(v41, v42);
        [v44 sizeToFit];
        [v44 setTranslatesAutoresizingMaskIntoConstraints_];
        [v44 intrinsicContentSize];
        v46 = v45;
        v48 = v47;
        v49 = objc_opt_self();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_242423B80;
        v51 = [v44 widthAnchor];
        v52 = [v51 constraintEqualToConstant_];

        *(v50 + 32) = v52;
        v53 = [v44 heightAnchor];

        v54 = [v53 constraintEqualToConstant_];
        *(v50 + 40) = v54;
        type metadata accessor for NSLayoutConstraint();
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v49 activateConstraints_];

LABEL_18:
        v56 = (*(*v18 + 176))();
        v58 = v57;
        v59 = v71;
        v61 = v73;
        v60 = v74;
        (*(v10 + 16))(v71, v74, v73);
        v62 = (*(v10 + 56))(v59, 0, 1, v61);
        v63 = (*(*v18 + 296))(v62) & 1;
        *v8 = v56;
        v8[1] = v58;
        v64 = type metadata accessor for CAFUITileCellConfiguration(0);
        outlined init with take of UIListContentConfiguration?(v59, v8 + v64[5]);
        v65 = (v8 + v64[6]);
        *v65 = 0;
        v65[1] = 0;
        *(v8 + v64[7]) = 0;
        *(v8 + v64[8]) = v44;
        *(v8 + v64[9]) = v63;
        *(v8 + v64[10]) = 0;
        (*(*(v64 - 1) + 56))(v8, 0, 1, v64);
        v66 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_tileCellConfiguration;
        v67 = v72;
        swift_beginAccess();
        v68 = v75;
        outlined init with copy of CAFUITileCellConfiguration?(v67 + v66, v75);
        swift_beginAccess();
        v69 = v44;
        outlined assign with copy of CAFUITileCellConfiguration?(v8, v67 + v66);
        swift_endAccess();
        CAFUITileBaseCell.tileCellConfiguration.didset(v68);

        outlined destroy of CAFUITileCellConfiguration?(v68);
        outlined destroy of CAFUITileCellConfiguration?(v8);
        return (v70[0])(v60, v61);
      }
    }

    v44 = 0;
    goto LABEL_18;
  }

  return result;
}

uint64_t CAFUIListItemCell.item.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5CAFUI17CAFUIListItemCell_item;
  swift_beginAccess();
  *(v1 + v3) = a1;

  CAFUIListItemCell.item.didset();
}

uint64_t (*CAFUIListItemCell.item.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CAFUIListItemCell.item.modify;
}

uint64_t CAFUIListItemCell.item.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return CAFUIListItemCell.item.didset();
  }

  return result;
}

uint64_t CAFUIListItemCell.isCellEnabled.getter()
{
  v1 = OBJC_IVAR____TtC5CAFUI17CAFUIListItemCell_item;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(*v2 + 320);

    v5 = v3(v4);
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

void CAFUIListItemCell.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC5CAFUI17CAFUIListItemCell_item) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall CAFUIListItemCell.prepareForReuse()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5CAFUI26CAFUITileCellConfigurationVSgMd);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v6 = &v11[-v5];
  v7 = type metadata accessor for CAFUIListItemCell();
  v12.receiver = v0;
  v12.super_class = v7;
  objc_msgSendSuper2(&v12, sel_prepareForReuse);
  v8 = type metadata accessor for CAFUITileCellConfiguration(0);
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_tileCellConfiguration;
  swift_beginAccess();
  outlined init with copy of CAFUITileCellConfiguration?(&v0[v9], v4);
  swift_beginAccess();
  outlined assign with copy of CAFUITileCellConfiguration?(v6, &v0[v9]);
  swift_endAccess();
  CAFUITileBaseCell.tileCellConfiguration.didset(v4);
  outlined destroy of CAFUITileCellConfiguration?(v4);
  outlined destroy of CAFUITileCellConfiguration?(v6);
  v10 = OBJC_IVAR____TtC5CAFUI17CAFUIListItemCell_item;
  swift_beginAccess();
  *&v0[v10] = 0;

  CAFUIListItemCell.item.didset();
}

uint64_t type metadata accessor for CAFUIListItemCell()
{
  result = type metadata singleton initialization cache for CAFUIListItemCell;
  if (!type metadata singleton initialization cache for CAFUIListItemCell)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id CAFUIListItemCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFUIListItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2423CBE48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5CAFUI17CAFUIListItemCell_item;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

id CAFUICollectionViewController.__allocating_init(setting:isRHD:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  ObjectType = swift_getObjectType();

  return specialized CAFUICollectionViewController.init(setting:isRHD:)(a1, a3, v7, ObjectType, a2);
}

char *CAFUIImageCollectionViewCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC5CAFUI28CAFUIImageCollectionViewCell_checkImageView] = 0;
  *&v4[OBJC_IVAR____TtC5CAFUI28CAFUIImageCollectionViewCell_decoratorImageView] = 0;
  *&v4[OBJC_IVAR____TtC5CAFUI28CAFUIImageCollectionViewCell_focusRingView] = 0;
  v4[OBJC_IVAR____TtC5CAFUI28CAFUIImageCollectionViewCell_enabled] = 1;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *&v4[OBJC_IVAR____TtC5CAFUI28CAFUIImageCollectionViewCell_label] = v9;
  v10 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  *&v4[OBJC_IVAR____TtC5CAFUI28CAFUIImageCollectionViewCell_imageView] = v10;
  v11 = [v10 layer];
  [v11 setBorderWidth_];

  v67.receiver = v4;
  v67.super_class = type metadata accessor for CAFUIImageCollectionViewCell();
  v12 = objc_msgSendSuper2(&v67, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC5CAFUI28CAFUIImageCollectionViewCell_imageView;
  v14 = *&v12[OBJC_IVAR____TtC5CAFUI28CAFUIImageCollectionViewCell_imageView];
  v15 = v12;
  v16 = v14;
  closure #1 in CAFUIImageCollectionViewCell.init(frame:)(v16);

  v17 = *&v12[v13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2424235A0;
  v19 = type metadata accessor for UITraitUserInterfaceStyle();
  v20 = MEMORY[0x277D74BF0];
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for UIImageView);
  v21 = v17;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v22 = [v15 contentView];
  v23 = [objc_opt_self() clearColor];
  [v22 setBackgroundColor_];

  [*&v12[v13] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v12[v13] setContentMode_];
  v24 = [*&v12[v13] layer];
  [v24 setMasksToBounds_];

  [*&v12[v13] _setContinuousCornerRadius_];
  v25 = OBJC_IVAR____TtC5CAFUI28CAFUIImageCollectionViewCell_label;
  [*&v15[OBJC_IVAR____TtC5CAFUI28CAFUIImageCollectionViewCell_label] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v15[v25] setTextAlignment_];
  [*&v15[v25] setNumberOfLines_];
  v26 = *&v15[v25];
  v27 = objc_opt_self();
  v28 = *MEMORY[0x277D76968];
  v29 = v26;
  v30 = [v27 preferredFontDescriptorWithTextStyle_];
  v31 = [objc_opt_self() fontWithDescriptor:v30 size:0.0];

  [v29 setFont_];
  v32 = [v15 &selRef_imageWithConfiguration_];
  [v32 addSubview_];

  v33 = [v15 &selRef_imageWithConfiguration_];
  [v33 addSubview_];

  v66 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_2424265C0;
  v35 = [*&v12[v13] leadingAnchor];
  v36 = [v15 &selRef_imageWithConfiguration_];
  v37 = [v36 &selRef_integerSettingService_didUpdateMinimumSymbolName_ + 1];

  v38 = [v35 constraintEqualToAnchor_];
  *(v34 + 32) = v38;
  v39 = [*&v12[v13] trailingAnchor];
  v40 = [v15 &selRef_imageWithConfiguration_];
  v41 = [v40 &selRef_tableView_targetIndexPathForMoveFromRowAtIndexPath_toProposedIndexPath_ + 4];

  v42 = [v39 constraintEqualToAnchor_];
  *(v34 + 40) = v42;
  v43 = [*&v12[v13] topAnchor];
  v44 = [v15 contentView];
  v45 = [v44 topAnchor];

  v46 = [v43 constraintEqualToAnchor_];
  *(v34 + 48) = v46;
  v47 = [*&v12[v13] bottomAnchor];
  v48 = [*&v15[v25] topAnchor];
  v49 = [v47 constraintEqualToAnchor_];

  *(v34 + 56) = v49;
  v50 = [*&v15[v25] heightAnchor];
  v51 = [v50 constraintEqualToConstant_];

  *(v34 + 64) = v51;
  v52 = [*&v15[v25] leadingAnchor];
  v53 = [v15 contentView];
  v54 = [v53 leadingAnchor];

  v55 = [v52 constraintEqualToAnchor_];
  *(v34 + 72) = v55;
  v56 = [*&v15[v25] trailingAnchor];
  v57 = [v15 contentView];
  v58 = [v57 trailingAnchor];

  v59 = [v56 constraintEqualToAnchor_];
  *(v34 + 80) = v59;
  v60 = [*&v15[v25] bottomAnchor];
  v61 = [v15 contentView];

  v62 = [v61 bottomAnchor];
  v63 = [v60 constraintEqualToAnchor_];

  *(v34 + 88) = v63;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v66 activateConstraints_];

  return v15;
}

void closure #1 in CAFUIImageCollectionViewCell.init(frame:)(void *a1)
{
  v2 = [a1 traitCollection];
  v3 = [v2 userInterfaceStyle];

  v4 = [a1 layer];
  v5 = objc_opt_self();
  if (v3 == 1)
  {
    v6 = 0.15;
  }

  else
  {
    v6 = 0.2;
  }

  v7 = &selRef_systemBlackColor;
  if (v3 != 1)
  {
    v7 = &selRef_systemWhiteColor;
  }

  v8 = [v5 *v7];
  v9 = [v8 colorWithAlphaComponent_];

  v10 = [v9 CGColor];
  [v4 setBorderColor_];
}

void CAFUIImageCollectionViewCell.checked.setter(char a1)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_242423B80;
    v3 = objc_opt_self();
    *(v2 + 32) = [v3 systemBlackColor];
    *(v2 + 40) = [v3 systemCyanColor];
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for UIColor);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v5 = [objc_opt_self() configurationWithPaletteColors_];

    v34 = v5;
    v6 = MEMORY[0x245D0D180](0xD000000000000015, 0x80000002424293F0);
    v7 = [objc_opt_self() systemImageNamed:v6 withConfiguration:v34];

    if (!v7 || (v8 = [v7 imageWithRenderingMode_], v7, !v8))
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    v9 = OBJC_IVAR____TtC5CAFUI28CAFUIImageCollectionViewCell_checkImageView;
    v10 = *&v1[OBJC_IVAR____TtC5CAFUI28CAFUIImageCollectionViewCell_checkImageView];
    if (v10)
    {
      v11 = v10;
      v8 = v8;
      [v11 setImage_];
    }

    else
    {
      v14 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
      v15 = [v3 _carSystemFocusColor];
      [v14 setTintColor_];

      v16 = v14;
      [v16 setTranslatesAutoresizingMaskIntoConstraints_];
      v17 = [v1 contentView];
      [v17 addSubview_];

      v18 = *&v1[v9];
      *&v1[v9] = v16;
      v19 = v16;

      v20 = objc_opt_self();
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_242423B90;
      v22 = [v19 bottomAnchor];
      v23 = *&v1[OBJC_IVAR____TtC5CAFUI28CAFUIImageCollectionViewCell_imageView];
      v24 = [v23 bottomAnchor];
      v25 = [v22 constraintEqualToAnchor:v24 constant:-6.0];

      *(v21 + 32) = v25;
      v26 = [v19 trailingAnchor];
      v27 = [v23 trailingAnchor];
      v28 = [v26 constraintEqualToAnchor:v27 constant:-6.0];

      *(v21 + 40) = v28;
      v29 = [v19 widthAnchor];
      v30 = [v29 constraintEqualToConstant_];

      *(v21 + 48) = v30;
      v31 = [v19 heightAnchor];

      v32 = [v31 constraintEqualToConstant_];
      *(v21 + 56) = v32;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSLayoutConstraint);
      v33 = Array._bridgeToObjectiveC()().super.isa;

      [v20 activateConstraints_];
    }

    v13 = v34;
  }

  else
  {
    v12 = OBJC_IVAR____TtC5CAFUI28CAFUIImageCollectionViewCell_checkImageView;
    v13 = *&v1[OBJC_IVAR____TtC5CAFUI28CAFUIImageCollectionViewCell_checkImageView];
    if (v13)
    {
      [v13 removeFromSuperview];
      v13 = *&v1[v12];
    }

    *&v1[v12] = 0;
  }
}

void CAFUIImageCollectionViewCell.showsFocusRing.setter(char a1)
{
  if (a1)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CF90F0]) initWithFrame_];
    [v2 setCornerRadius_];
    [v2 setRingWidth_];
    v3 = v2;
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    v4 = [v1 contentView];
    [v4 addSubview_];

    v5 = *&v1[OBJC_IVAR____TtC5CAFUI28CAFUIImageCollectionViewCell_focusRingView];
    *&v1[OBJC_IVAR____TtC5CAFUI28CAFUIImageCollectionViewCell_focusRingView] = v3;
    v6 = v3;

    v7 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_242423B90;
    v9 = [v6 bottomAnchor];
    v10 = [v1 contentView];
    v11 = [v10 bottomAnchor];

    v12 = [v9 constraintEqualToAnchor_];
    *(v8 + 32) = v12;
    v13 = [v6 topAnchor];
    v14 = [v1 contentView];
    v15 = [v14 topAnchor];

    v16 = [v13 constraintEqualToAnchor_];
    *(v8 + 40) = v16;
    v17 = [v6 leadingAnchor];
    v18 = [v1 contentView];
    v19 = [v18 leadingAnchor];

    v20 = [v17 constraintEqualToAnchor_];
    *(v8 + 48) = v20;
    v21 = [v6 trailingAnchor];

    v22 = [v1 contentView];
    v23 = [v22 trailingAnchor];

    v24 = [v21 constraintEqualToAnchor_];
    *(v8 + 56) = v24;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v7 activateConstraints_];

    v25 = isa;
  }

  else
  {
    v26 = OBJC_IVAR____TtC5CAFUI28CAFUIImageCollectionViewCell_focusRingView;
    v25 = *&v1[OBJC_IVAR____TtC5CAFUI28CAFUIImageCollectionViewCell_focusRingView];
    if (v25)
    {
      [(objc_class *)v25 removeFromSuperview];
      v25 = *&v1[v26];
    }

    *&v1[v26] = 0;
  }
}

void CAFUIImageCollectionViewCell.decoratorImage.setter(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    v4 = [v3 layer];
    [v4 setBorderWidth_];

    v5 = [v3 layer];
    [v5 setCornerRadius_];

    v6 = [v2 contentView];
    [v6 addSubview_];

    v7 = *&v2[OBJC_IVAR____TtC5CAFUI28CAFUIImageCollectionViewCell_decoratorImageView];
    *&v2[OBJC_IVAR____TtC5CAFUI28CAFUIImageCollectionViewCell_decoratorImageView] = v3;
    v8 = v3;

    v9 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_242423B90;
    v11 = [v8 topAnchor];
    v12 = [v2 contentView];
    v13 = [v12 topAnchor];

    v14 = [v11 constraintEqualToAnchor:v13 constant:-8.0];
    *(v10 + 32) = v14;
    v15 = [v8 trailingAnchor];
    v16 = [v2 contentView];
    v17 = [v16 trailingAnchor];

    v18 = [v15 constraintEqualToAnchor:v17 constant:0.0];
    *(v10 + 40) = v18;
    v19 = [v8 heightAnchor];
    v20 = [v19 constraintEqualToConstant_];

    *(v10 + 48) = v20;
    v21 = [v8 widthAnchor];
    v22 = [v8 heightAnchor];

    v23 = [v21 constraintEqualToAnchor_];
    *(v10 + 56) = v23;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v9 activateConstraints_];

    v25 = a1;
  }

  else
  {
    v26 = OBJC_IVAR____TtC5CAFUI28CAFUIImageCollectionViewCell_decoratorImageView;
    v25 = *&v1[OBJC_IVAR____TtC5CAFUI28CAFUIImageCollectionViewCell_decoratorImageView];
    if (v25)
    {
      [v25 removeFromSuperview];
      v25 = *&v1[v26];
    }

    *&v1[v26] = 0;
  }
}

id CAFUIImageCollectionViewCell.configure(with:selected:)(void *a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC5CAFUI28CAFUIImageCollectionViewCell_imageView);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v8 + 16))(v7, v8);
  v42 = v6;
  [v6 setImage_];

  v10 = *(v3 + OBJC_IVAR____TtC5CAFUI28CAFUIImageCollectionViewCell_label);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = (*(v12 + 8))(v11, v12);
  v14 = MEMORY[0x245D0D180](v13);

  [v10 setText_];

  CAFUIImageCollectionViewCell.checked.setter(a2);
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = (*(v16 + 32))(v15, v16);
  v18 = OBJC_IVAR____TtC5CAFUI28CAFUIImageCollectionViewCell_enabled;
  *(v3 + OBJC_IVAR____TtC5CAFUI28CAFUIImageCollectionViewCell_enabled) = v17 & 1;
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v21 = (*(v20 + 24))(v19, v20);
  CAFUIImageCollectionViewCell.decoratorImage.setter(v21);
  v22 = OBJC_IVAR____TtC5CAFUI28CAFUIImageCollectionViewCell_decoratorImageView;
  v23 = *(v3 + OBJC_IVAR____TtC5CAFUI28CAFUIImageCollectionViewCell_decoratorImageView);
  if (v23)
  {
    v24 = [v23 layer];
    v25 = a1[3];
    v26 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v25);
    v27 = (*(v26 + 48))(v25, v26);
    if (v27)
    {
      v28 = v27;
      v29 = [v27 CGColor];
    }

    else
    {
      v29 = 0;
    }

    [v24 setBorderColor_];

    v30 = *(v3 + v22);
    if (v30)
    {
      v31 = a1[3];
      v32 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v31);
      v33 = *(v32 + 48);
      v34 = v30;
      v35 = v33(v31, v32);
      [v34 setTintColor_];
    }
  }

  v36 = *(v3 + v18);
  v37 = objc_opt_self();
  v38 = &selRef_labelColor;
  if (!v36)
  {
    v38 = &selRef_secondaryLabelColor;
  }

  v39 = [v37 *v38];
  [v10 setTextColor_];

  v40 = 0.5;
  if (*(v3 + v18))
  {
    v40 = 1.0;
  }

  return [v42 setAlpha_];
}

Swift::Void __swiftcall CAFUIImageCollectionViewCell.didUpdateFocus(in:with:)(UIFocusUpdateContext in, UIFocusAnimationCoordinator with)
{
  v10.receiver = v2;
  v10.super_class = type metadata accessor for CAFUIImageCollectionViewCell();
  objc_msgSendSuper2(&v10, sel_didUpdateFocusInContext_withAnimationCoordinator_, in.super.isa, with.super.isa);
  v5 = [(objc_class *)in.super.isa nextFocusedView];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSObject);
    v7 = static NSObject.== infix(_:_:)();
    CAFUIImageCollectionViewCell.showsFocusRing.setter(v7 & 1);
  }

  else
  {
    v8 = OBJC_IVAR____TtC5CAFUI28CAFUIImageCollectionViewCell_focusRingView;
    v9 = *&v2[OBJC_IVAR____TtC5CAFUI28CAFUIImageCollectionViewCell_focusRingView];
    if (v9)
    {
      [v9 removeFromSuperview];
      v6 = *&v2[v8];
    }

    else
    {
      v6 = 0;
    }

    *&v2[v8] = 0;
  }
}

id CAFUIImageCollectionViewCell.isHighlighted.setter(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CAFUIImageCollectionViewCell();
  objc_msgSendSuper2(&v5, sel_setHighlighted_, a1 & 1);
  if (([v1 isHighlighted] & 1) != 0 || (v3 = 1.0, (v1[OBJC_IVAR____TtC5CAFUI28CAFUIImageCollectionViewCell_enabled] & 1) == 0))
  {
    v3 = 0.5;
  }

  return [*&v1[OBJC_IVAR____TtC5CAFUI28CAFUIImageCollectionViewCell_imageView] setAlpha_];
}

uint64_t key path setter for CAFUICollectionViewController.items : CAFUICollectionViewController(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_items;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t CAFUICollectionViewController.items.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_items;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t CAFUICollectionViewController.cellIdentifier.getter()
{
  type metadata accessor for CAFUIImageCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = NSStringFromClass(ObjCClassFromMetadata);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id CAFUICollectionViewController.init(setting:isRHD:)(uint64_t a1, uint64_t a2, char a3)
{
  ObjectType = swift_getObjectType();

  return specialized CAFUICollectionViewController.init(setting:isRHD:)(a1, a3, v3, ObjectType, a2);
}

void closure #2 in CAFUICollectionViewController.init(setting:isRHD:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong collectionView];
    if (v2)
    {
      v3 = v2;
      [v2 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

id CAFUICollectionViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

Swift::Void __swiftcall CAFUICollectionViewController.viewDidLoad()()
{
  v54.receiver = v0;
  v54.super_class = type metadata accessor for CAFUICollectionViewController();
  objc_msgSendSuper2(&v54, sel_viewDidLoad);
  v1 = [v0 collectionView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_21;
  }

  v2 = v1;
  v3 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0xE0))();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = (*((*v3 & *v0) + 0xD8))();
  v6 = MEMORY[0x245D0D180](v5);

  [v2 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v6];

  v7 = [v0 collectionView];
  if (!v7)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = v7;
  [v7 setDataSource_];

  v9 = [v0 collectionView];
  if (!v9)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = v9;
  [v9 setDelegate_];

  v11 = [v0 collectionView];
  if (!v11)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = v11;
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];

  v13 = _UISolariumEnabled();
  v14 = [v0 collectionView];
  v15 = v14;
  if (v13)
  {
    if (!v14)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v16 = [objc_opt_self() clearColor];
LABEL_10:
    v17 = v16;
    [v15 setBackgroundColor_];

    v18 = [v0 collectionView];
    if (v18)
    {
      v19 = v18;
      [v18 setContentInset_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_242423B90;
      v21 = [v0 collectionView];
      if (v21)
      {
        v22 = v21;
        v23 = [v21 topAnchor];

        v24 = [v0 view];
        if (v24)
        {
          v25 = v24;
          v26 = [v24 topAnchor];

          v27 = [v23 constraintEqualToAnchor_];
          *(v20 + 32) = v27;
          v28 = [v0 collectionView];
          if (v28)
          {
            v29 = v28;
            v30 = [v28 leadingAnchor];

            v31 = [v0 view];
            if (v31)
            {
              v32 = v31;
              v33 = [v31 safeAreaLayoutGuide];

              v34 = [v33 leadingAnchor];
              v35 = [v30 constraintEqualToAnchor_];

              *(v20 + 40) = v35;
              v36 = [v0 collectionView];
              if (v36)
              {
                v37 = v36;
                v38 = [v36 trailingAnchor];

                v39 = [v0 view];
                if (v39)
                {
                  v40 = v39;
                  v41 = [v39 safeAreaLayoutGuide];

                  v42 = [v41 trailingAnchor];
                  v43 = [v38 constraintEqualToAnchor_];

                  *(v20 + 48) = v43;
                  v44 = [v0 collectionView];
                  if (v44)
                  {
                    v45 = v44;
                    v46 = [v44 bottomAnchor];

                    v47 = [v0 view];
                    v48 = MEMORY[0x277D85000];
                    if (v47)
                    {
                      v49 = v47;
                      v50 = objc_opt_self();
                      v51 = [v49 bottomAnchor];

                      v52 = [v46 constraintEqualToAnchor_];
                      *(v20 + 56) = v52;
                      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSLayoutConstraint);
                      isa = Array._bridgeToObjectiveC()().super.isa;

                      [v50 activateConstraints_];

                      (*((*v48 & *v0) + 0xF8))(0, 0);
                      return;
                    }

                    goto LABEL_32;
                  }

LABEL_31:
                  __break(1u);
LABEL_32:
                  __break(1u);
                  goto LABEL_33;
                }

LABEL_30:
                __break(1u);
                goto LABEL_31;
              }

LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v14)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v16 = [objc_opt_self() tableBackgroundColor];
  if (v16)
  {
    goto LABEL_10;
  }

LABEL_35:
  __break(1u);
}

Swift::Void __swiftcall CAFUICollectionViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for CAFUICollectionViewController();
  objc_msgSendSuper2(&v4, sel_viewWillDisappear_, a1);
  v3 = [v1 navigationItem];
  [v3 setRightBarButtonItem_];
}

Swift::Void __swiftcall CAFUICollectionViewController.toggle(index:)(Swift::Int index)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v35 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v33 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  v9 = *&v2[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_setting + 8];
  ObjectType = swift_getObjectType();
  v36 = (*(v9 + 72))(index, ObjectType, v9);
  v11 = [v2 collectionView];
  if (!v11)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v12 = v11;
  v28 = v2;
  v13 = [v11 indexPathsForVisibleItems];

  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = *(v14 + 16);
  if (v34)
  {
    v15 = 0;
    v30 = (v35 + 32);
    v31 = v35 + 16;
    v29 = (v35 + 8);
    v16 = MEMORY[0x277D84F90];
    v32 = v14;
    while (v15 < *(v14 + 16))
    {
      v17 = (*(v35 + 80) + 32) & ~*(v35 + 80);
      v18 = *(v35 + 72);
      (*(v35 + 16))(v8, v14 + v17 + v18 * v15++, v4);
      v19 = v36 + v17;
      v20 = *(v36 + 16) + 1;
      do
      {
        if (!--v20)
        {
          (*v29)(v8, v4);
          goto LABEL_5;
        }

        lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath);
        v19 += v18;
      }

      while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
      v21 = *v30;
      (*v30)(v33, v8, v4);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1);
        v16 = v37;
      }

      v24 = *(v16 + 16);
      v23 = *(v16 + 24);
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v23 > 1, v24 + 1, 1);
        v16 = v37;
      }

      *(v16 + 16) = v24 + 1;
      v21((v16 + v17 + v24 * v18), v33, v4);
LABEL_5:
      v14 = v32;
      if (v15 == v34)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  v16 = MEMORY[0x277D84F90];
LABEL_16:

  if (!*(v16 + 16))
  {

    return;
  }

  v25 = [v28 collectionView];
  if (v25)
  {
    v26 = v25;

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v26 reconfigureItemsAtIndexPaths_];

    return;
  }

LABEL_22:
  __break(1u);
}

Swift::Void __swiftcall CAFUICollectionViewController.updateEmptyView(title:)(Swift::String_optional title)
{
  object = title.value._object;
  countAndFlagsBits = title.value._countAndFlagsBits;
  v4 = [v1 collectionView];
  if (!v4)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = v4;
  [v4 reloadData];

  v6 = OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_items;
  swift_beginAccess();
  v7 = *(*&v1[v6] + 16);
  v8 = OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_emptyView;
  v9 = *&v1[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_emptyView];
  if (v9)
  {
    if (!v7)
    {
      return;
    }

    [v9 removeFromSuperview];
    isa = *&v1[v8];
    *&v1[v8] = 0;
    goto LABEL_13;
  }

  if (v7)
  {
    return;
  }

  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  if (object)
  {
    v12 = object;
  }

  else
  {
    v13 = MEMORY[0x245D0D180](0x534D4554495F4F4ELL, 0xE800000000000000);
    v14 = CAFUILocalizedStringForKey(v13);

    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v15;
  }

  v16 = MEMORY[0x245D0D180](countAndFlagsBits, v12);

  [v11 setText_];

  v17 = [objc_opt_self() secondaryLabelColor];
  [v11 setTextColor_];

  v18 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v19 = [objc_opt_self() fontWithDescriptor:v18 size:0.0];

  [v11 setFont_];
  [v11 setTextAlignment_];
  v20 = [v1 collectionView];
  if (!v20)
  {
    goto LABEL_16;
  }

  v21 = v20;
  [v20 addSubview_];

  v22 = *&v1[v8];
  *&v1[v8] = v11;
  v23 = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_242423B80;
  v25 = [v23 centerXAnchor];
  v26 = [v1 view];
  if (!v26)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27 = v26;
  v28 = [v26 safeAreaLayoutGuide];

  v29 = [v28 centerXAnchor];
  v30 = [v25 constraintEqualToAnchor_];

  *(v24 + 32) = v30;
  v31 = [v23 centerYAnchor];

  v32 = [v1 view];
  if (!v32)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v33 = v32;
  v34 = objc_opt_self();
  v35 = [v33 safeAreaLayoutGuide];

  v36 = [v35 centerYAnchor];
  v37 = [v31 constraintEqualToAnchor_];

  *(v24 + 40) = v37;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v34 activateConstraints_];

LABEL_13:
}

Swift::Int __swiftcall CAFUICollectionViewController.collectionView(_:numberOfItemsInSection:)(UICollectionView *_, Swift::Int numberOfItemsInSection)
{
  v3 = OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_items;
  swift_beginAccess();
  return *(*(v2 + v3) + 16);
}

uint64_t CAFUICollectionViewController.collectionView(_:cellForItemAt:)(void *a1)
{
  v2 = v1;
  type metadata accessor for CAFUIImageCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = MEMORY[0x245D0D180](v6);
  }

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v8 = [a1 dequeueReusableCellWithReuseIdentifier:v5 forIndexPath:isa];

  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    goto LABEL_13;
  }

  v10 = v9;
  v8 = IndexPath.row.getter();
  v11 = OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_items;
  swift_beginAccess();
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v12 = *(v2 + v11);
  if (v8 >= *(v12 + 16))
  {
LABEL_12:
    __break(1u);
LABEL_13:

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  outlined init with copy of CAFUIImageRepresentableItemProtocol(v12 + 40 * v8 + 32, v24);
  v13 = *(v2 + OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_setting + 8);
  ObjectType = swift_getObjectType();
  v15 = (*(v13 + 48))(ObjectType, v13);
  v16 = IndexPath.row.getter();
  v17 = *(v15 + 16);
  v18 = 32;
  do
  {
    v19 = v17;
    if (v17-- == 0)
    {
      break;
    }

    v21 = *(v15 + v18);
    v18 += 8;
  }

  while (v21 != v16);
  v22 = v19 != 0;

  CAFUIImageCollectionViewCell.configure(with:selected:)(v24, v22);
  __swift_destroy_boxed_opaque_existential_0(v24);
  return v10;
}

uint64_t @objc CAFUICollectionViewController.collectionView(_:canEditItemAt:)()
{
  v0 = type metadata accessor for IndexPath();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v1 + 8))(v3, v0);
  return 0;
}

uint64_t CAFUICollectionViewController.collectionView(_:shouldSelectItemAt:)()
{
  v1 = v0;
  v2 = IndexPath.row.getter();
  v3 = OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_items;
  result = swift_beginAccess();
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v1 + v3);
    if (v2 < *(v5 + 16))
    {
      outlined init with copy of CAFUIImageRepresentableItemProtocol(v5 + 40 * v2 + 32, v8);
      v6 = v9;
      v7 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      LOBYTE(v6) = (*(v7 + 32))(v6, v7);
      __swift_destroy_boxed_opaque_existential_0(v8);
      return v6 & 1;
    }
  }

  __break(1u);
  return result;
}

UIEdgeInsets __swiftcall CAFUICollectionViewController.collectionView(_:layout:insetForSectionAt:)(UICollectionView *_, UICollectionViewLayout *layout, Swift::Int insetForSectionAt)
{
  if (*(v3 + OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_minimumInteritemSpacing + 8))
  {
    v4 = 45.0;
  }

  else
  {
    v5 = *(v3 + OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_minimumInteritemSpacing);
    v4 = 45.0;
    if (v5 > 45.0)
    {
      v4 = trunc(v5);
    }
  }

  v6 = 0.0;
  v7 = 0.0;
  v8 = v4;
  result.right = v8;
  result.bottom = v7;
  result.left = v4;
  result.top = v6;
  return result;
}

void CAFUICollectionViewController.collectionView(_:layout:sizeForItemAt:)()
{
  specialized CAFUICollectionViewController.calculateItemSizeAndInterItemSpacing(layout:)();
  if (*(v0 + OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_itemSize + 16))
  {
    __break(1u);
  }
}

void CAFUICollectionViewController.collectionView(_:layout:minimumInteritemSpacingForSectionAt:)()
{
  specialized CAFUICollectionViewController.calculateItemSizeAndInterItemSpacing(layout:)();
  if (*(v0 + OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_minimumInteritemSpacing + 8))
  {
    __break(1u);
  }
}

id CAFUICollectionViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id CAFUICollectionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x245D0D180]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id CAFUIImageCollectionViewCell.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id specialized CAFUICollectionViewController.init(setting:isRHD:)(uint64_t a1, char a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySays5UInt8VGs5NeverOGSo9NSRunLoopCGMd);
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v80 - v10;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySay10Foundation4DataVGs5NeverOGSo9NSRunLoopCGMd);
  v94 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v93 = &v80 - v11;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVys5UInt8Vs5NeverOGSo9NSRunLoopCGMd);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v80 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  MEMORY[0x28223BE20](v13 - 8);
  v88 = &v80 - v14;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySaySSGs5NeverOGSo9NSRunLoopCGMd);
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v89 = &v80 - v15;
  *&a3[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_emptyView] = 0;
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    v16 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v16 = MEMORY[0x277D84FA0];
  }

  *&a3[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_cancellables] = v16;
  v17 = &a3[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_itemSize];
  *v17 = 0;
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = &a3[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_collectionViewSize];
  *v18 = 0;
  *(v18 + 1) = 0;
  v18[16] = 1;
  v19 = &a3[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_minimumInteritemSpacing];
  *v19 = 0;
  v19[8] = 1;
  v20 = &a3[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_setting];
  *v20 = a1;
  v20[1] = a5;
  v21 = *(a5 + 40);
  swift_unknownObjectRetain();
  *&a3[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_items] = v21(a4, a5);
  a3[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_isRHD] = a2 & 1;
  v22 = [objc_allocWithZone(MEMORY[0x277D752F0]) init];
  [v22 setMinimumLineSpacing_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242424220;
  v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v106 = v24;
  AnyHashable.init<A>(_:)();
  v25 = MEMORY[0x277D84CC0];
  *(inited + 96) = MEMORY[0x277D84CC0];
  *(inited + 72) = 0;
  v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v106 = v26;
  AnyHashable.init<A>(_:)();
  *(inited + 168) = v25;
  *(inited + 144) = 0;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v22 _setRowAlignmentsOptions_];

  v28 = type metadata accessor for CAFUICollectionViewController();
  v108.receiver = a3;
  v29 = v22;
  v108.super_class = v28;
  v30 = objc_msgSendSuper2(&v108, sel_initWithCollectionViewLayout_, v22);
  v31 = *(a5 + 8);
  v32 = *(v31 + 16);
  v33 = v30;
  v34 = v32(a4, v31);
  v35 = MEMORY[0x245D0D180](v34);

  [v33 setTitle_];

  objc_opt_self();
  v36 = swift_dynamicCastObjCClass();
  if (v36)
  {
    v37 = v36;
    v102 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFSingleSelectImageSetting);
    v82 = lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type CAFSingleSelectImageSetting and conformance CAFSingleSelectImageSetting, &lazy cache variable for type metadata for CAFSingleSelectImageSetting);
    v38 = CAFObserved<>.observable.getter();
    v39 = dispatch thunk of CAFSingleSelectImageSettingObservable.$listUserVisibleValue.getter();
    v103 = v37;
    v40 = v39;

    v105 = v40;
    v101 = objc_opt_self();
    v41 = [v101 mainRunLoop];
    v87 = a1;
    v42 = v41;
    v107 = v41;
    v100 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v43 = *(v100 - 8);
    v99 = *(v43 + 56);
    v98 = v43 + 56;
    v44 = v88;
    v99(v88, 1, 1, v100);
    v86 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySaySSGs5NeverOGMd);
    v104 = v33;
    v97 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSRunLoop);
    v81 = MEMORY[0x277CBCD90];
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<[String], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySaySSGs5NeverOGMd);
    v96 = lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop);
    v45 = v89;
    Publisher.receive<A>(on:options:)();
    outlined destroy of NSRunLoop.SchedulerOptions?(v44);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    v95 = MEMORY[0x277CBCD60];
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<[String], Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySaySSGs5NeverOGSo9NSRunLoopCGMd);
    v46 = v104;
    v47 = v91;
    Publisher<>.sink(receiveValue:)();

    (*(v90 + 8))(v45, v47);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v48 = CAFObserved<>.observable.getter();
    v49 = dispatch thunk of CAFSingleSelectImageSettingObservable.$currentUserVisibleValue.getter();

    v105 = v49;
    v50 = [v101 mainRunLoop];
    v107 = v50;
    v99(v44, 1, 1, v100);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVys5UInt8Vs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<UInt8, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVys5UInt8Vs5NeverOGMd);
    v51 = v83;
    Publisher.receive<A>(on:options:)();
    outlined destroy of NSRunLoop.SchedulerOptions?(v44);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<UInt8, Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVys5UInt8Vs5NeverOGSo9NSRunLoopCGMd);
    v52 = v85;
    Publisher<>.sink(receiveValue:)();

    (*(v84 + 8))(v51, v52);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v53 = CAFObserved<>.observable.getter();
    v54 = dispatch thunk of CAFSingleSelectImageSettingObservable.$images.getter();

    v105 = v54;
    v55 = [v101 mainRunLoop];
    v107 = v55;
    v99(v44, 1, 1, v100);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySay10Foundation4DataVGs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<[Data], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySay10Foundation4DataVGs5NeverOGMd);
    v56 = v93;
    Publisher.receive<A>(on:options:)();
    outlined destroy of NSRunLoop.SchedulerOptions?(v44);

    v33 = v104;
    swift_allocObject();
    swift_unknownObjectWeakInit();

    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<[Data], Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySay10Foundation4DataVGs5NeverOGSo9NSRunLoopCGMd);
    v57 = v92;
    Publisher<>.sink(receiveValue:)();

    (*(v94 + 8))(v56, v57);
    swift_beginAccess();
  }

  else
  {
    objc_opt_self();
    v58 = swift_dynamicCastObjCClass();
    if (!v58)
    {

      swift_unknownObjectRelease();
      return v33;
    }

    v59 = v58;
    v81 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFMultipleSelectImageSetting);
    v100 = lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type CAFMultipleSelectImageSetting and conformance CAFMultipleSelectImageSetting, &lazy cache variable for type metadata for CAFMultipleSelectImageSetting);
    v60 = CAFObserved<>.observable.getter();
    v61 = dispatch thunk of CAFMultipleSelectImageSettingObservable.$listUserVisibleValue.getter();
    v87 = a1;
    v62 = v61;

    v105 = v62;
    v99 = objc_opt_self();
    v63 = [v99 mainRunLoop];
    v107 = v63;
    v97 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v64 = *(v97 - 8);
    v96 = *(v64 + 56);
    v98 = v64 + 56;
    v65 = v88;
    v96(v88, 1, 1, v97);
    v86 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySaySSGs5NeverOGMd);
    v104 = v33;
    v82 = v59;
    v85 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSRunLoop);
    v95 = MEMORY[0x277CBCD90];
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<[String], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySaySSGs5NeverOGMd);
    v84 = lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop);
    v66 = v89;
    Publisher.receive<A>(on:options:)();
    outlined destroy of NSRunLoop.SchedulerOptions?(v65);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    v83 = MEMORY[0x277CBCD60];
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<[String], Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySaySSGs5NeverOGSo9NSRunLoopCGMd);
    v67 = v104;
    v68 = v91;
    Publisher<>.sink(receiveValue:)();

    (*(v90 + 8))(v66, v68);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v69 = CAFObserved<>.observable.getter();
    v70 = dispatch thunk of CAFMultipleSelectImageSettingObservable.$indicesUserVisibleValue.getter();

    v105 = v70;
    v71 = [v99 mainRunLoop];
    v107 = v71;
    v96(v65, 1, 1, v97);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySays5UInt8VGs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<[UInt8], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySays5UInt8VGs5NeverOGMd);
    v72 = v101;
    Publisher.receive<A>(on:options:)();
    outlined destroy of NSRunLoop.SchedulerOptions?(v65);

    v33 = v104;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<[UInt8], Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySays5UInt8VGs5NeverOGSo9NSRunLoopCGMd);
    v73 = v103;
    Publisher<>.sink(receiveValue:)();

    (*(v102 + 8))(v72, v73);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v74 = CAFObserved<>.observable.getter();
    v75 = dispatch thunk of CAFMultipleSelectImageSettingObservable.$images.getter();

    v105 = v75;
    v76 = [v99 mainRunLoop];
    v107 = v76;
    v96(v65, 1, 1, v97);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySay10Foundation4DataVGs5NeverOGMd);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<[Data], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySay10Foundation4DataVGs5NeverOGMd);
    v77 = v93;
    Publisher.receive<A>(on:options:)();
    outlined destroy of NSRunLoop.SchedulerOptions?(v65);

    swift_allocObject();
    swift_unknownObjectWeakInit();

    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<[Data], Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySay10Foundation4DataVGs5NeverOGSo9NSRunLoopCGMd);
    v78 = v92;
    Publisher<>.sink(receiveValue:)();

    (*(v94 + 8))(v77, v78);
    swift_beginAccess();
  }

  AnyCancellable.store(in:)();
  swift_endAccess();
  swift_unknownObjectRelease();

  return v33;
}