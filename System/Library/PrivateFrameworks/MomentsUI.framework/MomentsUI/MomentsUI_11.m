Swift::Void __swiftcall Video.encode(with:)(NSCoder with)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  (*((*MEMORY[0x277D85000] & *v1) + 0x70))(v4);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v10 = 0;
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    URL._bridgeToObjectiveC()(v9);
    v10 = v11;
    (*(v8 + 8))(v6, v7);
  }

  v12 = MEMORY[0x21CE91FC0](7107189, 0xE300000000000000);
  [(objc_class *)with.super.isa encodeObject:v10 forKey:v12];
  swift_unknownObjectRelease();
}

id Video.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized Video.init(coder:)();

  return v4;
}

id Video.init(coder:)(void *a1)
{
  v2 = specialized Video.init(coder:)();

  return v2;
}

id Video.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Video.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Video();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for Decodable.init(from:) in conformance Video@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 160))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

id specialized Video.init(coder:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  v8 = OBJC_IVAR____TtC9MomentsUI5Video_url;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v12 = 1;
  v20 = v8;
  v11(&v0[v8], 1, 1, v9);
  v13 = &v0[OBJC_IVAR____TtC9MomentsUI5Video__dataFuture];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v0[OBJC_IVAR____TtC9MomentsUI5Video__urlFuture];
  *v14 = 0;
  *(v14 + 1) = 0;
  v0[OBJC_IVAR____TtC9MomentsUI5Video__assetClass] = 2;
  type metadata accessor for NSURL();
  v15 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v15)
  {
    v16 = v15;
    v11(v5, 1, 1, v9);
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

    if ((*(v10 + 48))(v5, 1, v9) != 1)
    {
      (*(v10 + 32))(v7, v5, v9);
      v12 = 0;
    }
  }

  v11(v7, v12, 1, v9);
  v17 = v20;
  swift_beginAccess();
  outlined assign with take of URL?(v7, v1 + v17);
  swift_endAccess();
  v18 = type metadata accessor for Video();
  v21.receiver = v1;
  v21.super_class = v18;
  return objc_msgSendSuper2(&v21, sel_init);
}

uint64_t instantiation function for generic protocol witness table for Video(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type Video and conformance Video, type metadata accessor for Video);
  result = lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type Video and conformance Video, type metadata accessor for Video);
  *(a1 + 16) = result;
  return result;
}

void type metadata completion function for Video()
{
  type metadata accessor for URL?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for URL?()
{
  if (!lazy cache variable for type metadata for URL?)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for URL?);
    }
  }
}

unint64_t type metadata accessor for NSURL()
{
  result = lazy cache variable for type metadata for NSURL;
  if (!lazy cache variable for type metadata for NSURL)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSURL);
  }

  return result;
}

void *MediaThirdPartyEffectBackgroundView.fillColor.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI35MediaThirdPartyEffectBackgroundView_fillColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MediaThirdPartyEffectBackgroundView.fillColor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI35MediaThirdPartyEffectBackgroundView_fillColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MediaThirdPartyEffectBackgroundView.colorVariant.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI35MediaThirdPartyEffectBackgroundView_colorVariant;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t MediaThirdPartyEffectBackgroundView.colorVariant.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC9MomentsUI35MediaThirdPartyEffectBackgroundView_colorVariant;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

id MediaThirdPartyEffectBackgroundView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *MediaThirdPartyEffectBackgroundView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC9MomentsUI35MediaThirdPartyEffectBackgroundView_contentView;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v10 = OBJC_IVAR____TtC9MomentsUI35MediaThirdPartyEffectBackgroundView_fillView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v11 = OBJC_IVAR____TtC9MomentsUI35MediaThirdPartyEffectBackgroundView_overlayView;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *&v4[OBJC_IVAR____TtC9MomentsUI35MediaThirdPartyEffectBackgroundView_fillColor] = 0;
  v4[OBJC_IVAR____TtC9MomentsUI35MediaThirdPartyEffectBackgroundView_colorVariant] = 4;
  v22.receiver = v4;
  v22.super_class = type metadata accessor for MediaThirdPartyEffectBackgroundView();
  v12 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC9MomentsUI35MediaThirdPartyEffectBackgroundView_fillView;
  v14 = *&v12[OBJC_IVAR____TtC9MomentsUI35MediaThirdPartyEffectBackgroundView_fillView];
  v15 = v12;
  [v14 setContentMode_];
  [v15 addSubview_];
  v16 = *&v12[v13];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  v17 = OBJC_IVAR____TtC9MomentsUI35MediaThirdPartyEffectBackgroundView_overlayView;
  [v15 addSubview_];
  v18 = *&v15[v17];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  v19 = OBJC_IVAR____TtC9MomentsUI35MediaThirdPartyEffectBackgroundView_contentView;
  [v15 addSubview_];
  v20 = *&v15[v19];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  return v15;
}

id MediaThirdPartyEffectBackgroundView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t MediaThirdPartyEffectBackgroundView.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI35MediaThirdPartyEffectBackgroundView_contentView;
  *(v1 + v3) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v4 = OBJC_IVAR____TtC9MomentsUI35MediaThirdPartyEffectBackgroundView_fillView;
  *(v1 + v4) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v5 = OBJC_IVAR____TtC9MomentsUI35MediaThirdPartyEffectBackgroundView_overlayView;
  v6 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];

  *(v1 + v5) = v6;
  v7 = OBJC_IVAR____TtC9MomentsUI35MediaThirdPartyEffectBackgroundView_fillColor;
  *(v1 + OBJC_IVAR____TtC9MomentsUI35MediaThirdPartyEffectBackgroundView_fillColor) = 0;
  *(v1 + OBJC_IVAR____TtC9MomentsUI35MediaThirdPartyEffectBackgroundView_colorVariant) = 4;

  type metadata accessor for MediaThirdPartyEffectBackgroundView();
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall MediaThirdPartyEffectBackgroundView.update(color:variant:)(UIColor_optional color, MomentsUI::MediaThirdPartyBackgroundColorVariant_optional variant)
{
  isa = color.value.super.isa;
  v4 = **&color.is_nil;
  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x80);
  v7 = color.value.super.isa;
  v6(isa);
  v8 = v4;
  (*((*v5 & *v2) + 0x98))(&v8);

  [v2 setNeedsLayout];
}

Swift::Void __swiftcall MediaThirdPartyEffectBackgroundView.layoutSubviews()()
{
  v22.receiver = v0;
  v22.super_class = type metadata accessor for MediaThirdPartyEffectBackgroundView();
  v1 = objc_msgSendSuper2(&v22, sel_layoutSubviews);
  v2 = *(v0 + OBJC_IVAR____TtC9MomentsUI35MediaThirdPartyEffectBackgroundView_fillView);
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v0) + 0x78))(v1);
  [v2 setBackgroundColor_];

  (*((*v3 & *v0) + 0x90))(&v21);
  if (v21 > 2u)
  {
    [v0 setOverrideUserInterfaceStyle_];
    v12 = *(v0 + OBJC_IVAR____TtC9MomentsUI35MediaThirdPartyEffectBackgroundView_overlayView);
    v13 = [objc_opt_self() systemWhiteColor];
    v14 = [v13 colorWithAlphaComponent_];

    [v12 setBackgroundColor_];
    v15 = [v12 layer];
    [v15 setCompositingFilter_];

    v16 = [*(v0 + OBJC_IVAR____TtC9MomentsUI35MediaThirdPartyEffectBackgroundView_contentView) layer];
LABEL_7:
    v9 = v16;
    v10 = v9;
    v11 = MEMORY[0x277CDA5E8];
    goto LABEL_8;
  }

  if (!v21)
  {
    return;
  }

  if (v21 != 1)
  {
    [v0 setOverrideUserInterfaceStyle_];
    v17 = *(v0 + OBJC_IVAR____TtC9MomentsUI35MediaThirdPartyEffectBackgroundView_overlayView);
    v18 = [objc_opt_self() systemBlackColor];
    v19 = [v18 colorWithAlphaComponent_];

    [v17 setBackgroundColor_];
    v20 = [v17 layer];
    [v20 setCompositingFilter_];

    v16 = [*(v0 + OBJC_IVAR____TtC9MomentsUI35MediaThirdPartyEffectBackgroundView_contentView) layer];
    goto LABEL_7;
  }

  [v0 setOverrideUserInterfaceStyle_];
  v5 = *(v0 + OBJC_IVAR____TtC9MomentsUI35MediaThirdPartyEffectBackgroundView_overlayView);
  v6 = [objc_opt_self() systemWhiteColor];
  v7 = [v6 colorWithAlphaComponent_];

  [v5 setBackgroundColor_];
  v8 = [v5 layer];
  [v8 setCompositingFilter_];

  v9 = [*(v0 + OBJC_IVAR____TtC9MomentsUI35MediaThirdPartyEffectBackgroundView_contentView) layer];
  v10 = v9;
  v11 = MEMORY[0x277CDA5D8];
LABEL_8:
  [v9 setCompositingFilter_];
}

id MediaThirdPartyEffectBackgroundView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaThirdPartyEffectBackgroundView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MutableWorkoutViewModel.setImageAndRoute(for:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v4 = type metadata accessor for Date();
  v2[4] = v4;
  v2[5] = *(v4 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[8] = v5;
  *v5 = v2;
  v5[1] = MutableWorkoutViewModel.setImageAndRoute(for:);

  return MutableWorkoutViewModel.setMetadata(for:)(a1);
}

uint64_t MutableWorkoutViewModel.setImageAndRoute(for:)()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](MutableWorkoutViewModel.setImageAndRoute(for:), 0, 0);
  }
}

{
  v1 = (*((*MEMORY[0x277D85000] & **(v0 + 24)) + 0x2D0))();
  if (v1 && (v2 = v1, v4 = *(v0 + 48), v3 = *(v0 + 56), v5 = *(v0 + 32), v6 = *(v0 + 40), v7 = *(v0 + 16), v8 = [v7 startDate], static Date._unconditionallyBridgeFromObjectiveC(_:)(), v8, v9 = objc_msgSend(v7, sel_endDate), static Date._unconditionallyBridgeFromObjectiveC(_:)(), v9, LOBYTE(v9) = specialized static MutableWorkoutViewModel.meetsMinimumRequirements(_:startDate:endDate:)(v2), , v10 = *(v6 + 8), v10(v4, v5), v10(v3, v5), (v9 & 1) != 0))
  {
    v11 = swift_task_alloc();
    *(v0 + 72) = v11;
    *v11 = v0;
    v11[1] = MutableWorkoutViewModel.setImageAndRoute(for:);

    return MutableWorkoutViewModel.setRouteImage()();
  }

  else
  {
    lazy protocol witness table accessor for type MutableWorkoutViewModel.RouteErrors and conformance MutableWorkoutViewModel.RouteErrors();
    swift_allocError();
    *v13 = 2;
    swift_willThrow();

    v14 = *(v0 + 8);

    return v14();
  }
}

{

  return MEMORY[0x2822009F8](MutableWorkoutViewModel.setImageAndRoute(for:), 0, 0);
}

{
  v16 = v0;
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static CommonLogger.assets);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    (*((*MEMORY[0x277D85000] & *v6) + 0x280))(v8);
    type metadata accessor for UUID();
    _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v9 = Set.description.getter();
    v11 = v10;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v15);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_21607C000, v4, v5, "[MutableWorkoutViewModel] successfully generated route map for workoutUUID=%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x21CE94770](v8, -1, -1);
    MEMORY[0x21CE94770](v7, -1, -1);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t MutableWorkoutViewModel.setMetadata(for:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](MutableWorkoutViewModel.setMetadata(for:), 0, 0);
}

uint64_t MutableWorkoutViewModel.setMetadata(for:)()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[7] = v3;
  v4 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for HKWorkoutRoute);
  *v3 = v0;
  v3[1] = MutableWorkoutViewModel.setMetadata(for:);

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0x756F526863746566, 0xEC00000029286574, partial apply for closure #1 in HKWorkout.fetchRoute(), v2, v4);
}

{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = MutableWorkoutViewModel.setMetadata(for:);
  }

  else
  {

    v2 = MutableWorkoutViewModel.setMetadata(for:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[2];
  v0[9] = v1;
  v2 = swift_task_alloc();
  v0[10] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[11] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo10CLLocationCGMd);
  *v3 = v0;
  v3[1] = MutableWorkoutViewModel.setMetadata(for:);

  return MEMORY[0x2822008A0](v0 + 3, 0, 0, 0x7461636F4C746567, 0xEE002928736E6F69, partial apply for closure #1 in HKWorkoutRoute.getLocations(), v2, v4);
}

{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = MutableWorkoutViewModel.setMetadata(for:);
  }

  else
  {

    v2 = MutableWorkoutViewModel.setMetadata(for:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 24);
  v18 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v3 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x21CE93180](v4, v1);
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      [v5 coordinate];
      if (CLLocationCoordinate2DIsValid(v20))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        v8 = v18;
        v3 = MEMORY[0x277D84F90];
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  v8 = MEMORY[0x277D84F90];
LABEL_16:

  if (v8 < 0 || (v8 & 0x4000000000000000) != 0)
  {
    v9 = __CocoaSet.count.getter();
    if (v9)
    {
      goto LABEL_19;
    }

LABEL_32:

    v14 = MEMORY[0x277D84F90];
    goto LABEL_33;
  }

  v9 = *(v8 + 16);
  if (!v9)
  {
    goto LABEL_32;
  }

LABEL_19:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v9 < 0)
  {
    __break(1u);
    return result;
  }

  v11 = 0;
  do
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x21CE93180](v11, v8);
    }

    else
    {
      v12 = *(v8 + 8 * v11 + 32);
    }

    v13 = v12;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    ++v11;
    (*(*static LocationShifter.shared + 104))(v13);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v9 != v11);

  v14 = v3;
LABEL_33:
  v15 = *(v17 + 72);
  (*((*MEMORY[0x277D85000] & **(v17 + 40)) + 0x2D8))(v14);

  v16 = *(v17 + 8);

  return v16();
}

{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t MutableWorkoutViewModel.setRouteImage()()
{
  *(v1 + 184) = v0;
  return MEMORY[0x2822009F8](MutableWorkoutViewModel.setRouteImage(), 0, 0);
}

{
  v1 = MutableWorkoutViewModel.options.getter();
  *(v0 + 192) = v1;
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = v1;
  v3 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & **(v0 + 184)) + 0x2B8))() & 1) == 0)
  {

LABEL_10:
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static CommonLogger.assets);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_21607C000, v11, v12, "[MutableWorkoutViewModel] failed to generate route map", v13, 2u);
      MEMORY[0x21CE94770](v13, -1, -1);
    }

    goto LABEL_19;
  }

  v4 = *(v0 + 184);
  v5 = (*((*v3 & *v4) + 0x3F8))([objc_allocWithZone(MEMORY[0x277CD4EC0]) initWithOptions_]);
  v6 = (*((*v3 & *v4) + 0x3F0))(v5);
  *(v0 + 200) = v6;
  if (v6)
  {
    v7 = v6;
    if (one-time initialization token for queue != -1)
    {
      swift_once();
    }

    v8 = static MutableWorkoutViewModel.queue;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 168;
    *(v0 + 24) = MutableWorkoutViewModel.setRouteImage();
    v9 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo13MKMapSnapshotCs5Error_pGMd);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MKMapSnapshot?, @unowned NSError?) -> () with result type MKMapSnapshot;
    *(v0 + 104) = &block_descriptor_11;
    *(v0 + 112) = v9;
    [v7 startWithQueue:v8 completionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static CommonLogger.assets);
  v11 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_21607C000, v11, v15, "[MutableWorkoutViewModel] failed to init snapshotter", v16, 2u);
    MEMORY[0x21CE94770](v16, -1, -1);
  }

LABEL_19:
  v17 = *(v0 + 8);

  return v17();
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = MutableWorkoutViewModel.setRouteImage();
  }

  else
  {
    v2 = MutableWorkoutViewModel.setRouteImage();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v0[27] = v0[21];
  type metadata accessor for MainActor();
  v0[28] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](MutableWorkoutViewModel.setRouteImage(), v2, v1);
}

{
  v1 = *(v0 + 216);

  *(v0 + 232) = MutableWorkoutViewModel.overlayedRouteImage(from:)(v1);

  return MEMORY[0x2822009F8](MutableWorkoutViewModel.setRouteImage(), 0, 0);
}

{
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  (*((*MEMORY[0x277D85000] & **(v0 + 184)) + 0xC0))(*(v0 + 232));

  v4 = *(v0 + 8);

  return v4();
}

{
  v27 = v0;
  swift_willThrow();
  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[23];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static CommonLogger.viewModel);
  v4 = v2;
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[25];
  v10 = v0[26];
  v11 = v0[24];
  if (v8)
  {
    v25 = v0[25];
    v12 = v0[23];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26[0] = v14;
    *v13 = 136315394;
    v15 = [v12 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v26);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v20 = Error.localizedDescription.getter();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v26);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_21607C000, v6, v7, "[%s] snapshot error=%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v14, -1, -1);
    MEMORY[0x21CE94770](v13, -1, -1);
  }

  else
  {
  }

  v23 = v0[1];

  return v23();
}

uint64_t HKWorkout.fetchRoute()()
{
  *(v1 + 24) = v0;
  return MEMORY[0x2822009F8](HKWorkout.fetchRoute(), 0, 0);
}

{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for HKWorkoutRoute);
  *v3 = v0;
  v3[1] = HKWorkout.fetchRoute();

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0x756F526863746566, 0xEC00000029286574, closure #1 in HKWorkout.fetchRoute()partial apply, v2, v4);
}

{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = HKWorkout.fetchRoute();
  }

  else
  {

    v2 = HKWorkout.fetchRoute();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

{

  v1 = *(v0 + 8);

  return v1();
}

id MutableWorkoutViewModel.options.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  MutableWorkoutViewModel.boundingRegion.getter(v17);
  if (v18)
  {

    return 0;
  }

  v5 = *&v17[2];
  v4 = *&v17[3];
  v7 = *v17;
  v6 = *&v17[1];
  v8 = [objc_allocWithZone(MEMORY[0x277CD4EB8]) init];
  v9 = [objc_allocWithZone(MEMORY[0x277CD4F50]) init];
  v10 = [objc_opt_self() filterExcludingAllCategories];
  [v9 setPointOfInterestFilter_];

  [v8 setPreferredConfiguration_];
  [v8 _setUseSnapshotService_];
  v11 = [v8 _setRendersInBackground_];
  v12 = MEMORY[0x277D85000];
  v13 = (*((*MEMORY[0x277D85000] & *v2) + 0xB0))(v11, 4.0);
  v14 = (*((*v12 & *v13) + 0x60))();
  v15 = (*((*v12 & *v13) + 0x78))();

  [v8 setSize_];
  [v8 setRegion_];
  v16 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  [v8 setTraitCollection_];

  return v8;
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MKMapSnapshot?, @unowned NSError?) -> () with result type MKMapSnapshot(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t MutableWorkoutViewModel.overlayedRouteImage(from:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x2D0))();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [a1 image];
  [v6 size];
  v8 = v7;

  v9 = [a1 image];
  [v9 size];
  v11 = v10;

  v12 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithBounds_];
  v13 = swift_allocObject();
  v13[3] = 0.0;
  v13[4] = 0.0;
  *(v13 + 2) = a1;
  v13[5] = v8;
  v13[6] = v11;
  *(v13 + 7) = v5;
  *(v13 + 8) = ObjectType;
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in MutableWorkoutViewModel.overlayedRouteImage(from:);
  *(v14 + 24) = v13;
  v20[4] = _sSo30UIGraphicsImageRendererContextCIgg_ABIegg_TRTA_0;
  v20[5] = v14;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
  v20[3] = &block_descriptor_15_1;
  v15 = _Block_copy(v20);
  v16 = a1;

  v17 = [v12 imageWithActions_];
  _Block_release(v15);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if ((v15 & 1) == 0)
  {
    type metadata accessor for Image();
    LOBYTE(v20[0]) = *(v1 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass);
    v19 = Image.__allocating_init(uiImage:isGlyph:assetClass:)(v17, 0, v20);

    return v19;
  }

  __break(1u);
  return result;
}

void MutableWorkoutViewModel.boundingRegion.getter(uint64_t a1@<X8>)
{
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x2D0))();
  v4 = 0uLL;
  v5 = 0.0;
  if (!v3)
  {
    v21 = 1;
    goto LABEL_35;
  }

  v6 = v3;
  v7 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
LABEL_23:
    v8 = __CocoaSet.count.getter();
    if (v8)
    {
LABEL_4:
      v9 = 0;
      v10 = MEMORY[0x277D84F90];
      do
      {
        v11 = v9;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x21CE93180](v11, v6);
          }

          else
          {
            if (v11 >= *(v7 + 16))
            {
              goto LABEL_22;
            }

            v12 = *(v6 + 8 * v11 + 32);
          }

          v13 = v12;
          v9 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

          [v12 coordinate];
          if (CLLocationCoordinate2DIsValid(v33))
          {
            break;
          }

          ++v11;
          if (v9 == v8)
          {
            goto LABEL_25;
          }
        }

        [v13 coordinate];
        v15 = v14;
        v17 = v16;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
        }

        v19 = *(v10 + 2);
        v18 = *(v10 + 3);
        if (v19 >= v18 >> 1)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v10);
        }

        *(v10 + 2) = v19 + 1;
        v20 = &v10[16 * v19];
        *(v20 + 4) = v15;
        *(v20 + 5) = v17;
      }

      while (v9 != v8);
      goto LABEL_25;
    }
  }

  else
  {
    v8 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_4;
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_25:

  v22 = *(v10 + 2);
  if (v22)
  {
    v23 = [objc_opt_self() polylineWithCoordinates:v10 + 32 count:v22];

    [v23 boundingMapRect];
    v35 = MKCoordinateRegionForMapRect(v34);
    latitude = v35.center.latitude;
    longitude = v35.center.longitude;
    latitudeDelta = v35.span.latitudeDelta;
    longitudeDelta = v35.span.longitudeDelta;

    v21 = 0;
    if (latitudeDelta > longitudeDelta)
    {
      v26 = latitudeDelta;
    }

    else
    {
      v26 = longitudeDelta;
    }

    v5 = v26 * 20.0;
    *&v4 = latitude;
    *(&v4 + 1) = longitude;
  }

  else
  {

    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static CommonLogger.assets);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_21607C000, v28, v29, "[MutableWorkoutViewModel] No valid coordinates for bounding region", v30, 2u);
      MEMORY[0x21CE94770](v30, -1, -1);
    }

    v21 = 1;
    v4 = 0uLL;
  }

LABEL_35:
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v5;
  *(a1 + 32) = v21;
}

void closure #1 in MutableWorkoutViewModel.overlayedRouteImage(from:)(void *a1, void *a2, unint64_t a3, double a4, double a5, double a6, double a7)
{
  v14 = [a1 CGContext];
  v15 = [a2 image];
  [v15 drawInRect_];

  v16 = objc_allocWithZone(type metadata accessor for RouteMapRenderingService());

  v18 = RouteMapRenderingService.init(routeLocations:)(v17);
  v56 = a2;
  (*((*MEMORY[0x277D85000] & *v18) + 0x78))(v14, partial apply for closure #1 in closure #1 in MutableWorkoutViewModel.overlayedRouteImage(from:), v55, 3.0);
  CGContextStrokePath(v14);
  if (!(a3 >> 62))
  {
    v19 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_3;
    }

LABEL_12:

    return;
  }

  v19 = __CocoaSet.count.getter();
  if (!v19)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((a3 & 0xC000000000000001) == 0)
  {
    v20 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      v21 = v19 - 1;
      if (!__OFSUB__(v19, 1))
      {
        if (v21 < v20)
        {
          v22 = *(a3 + 32 + 8 * v21);
          v7 = *(a3 + 32);
          v23 = v22;
          goto LABEL_8;
        }

        __break(1u);
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }

  v7 = MEMORY[0x21CE93180](0, a3);
  if (!__OFSUB__(v19, 1))
  {
    v23 = MEMORY[0x21CE93180](v19 - 1, a3);
LABEL_8:
    v54 = v23;
    if (one-time initialization token for assets == -1)
    {
LABEL_9:
      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, static CommonLogger.assets);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_21607C000, v25, v26, "[overlayedRouteImage] Rendering valid start and stop pins", v27, 2u);
        MEMORY[0x21CE94770](v27, -1, -1);
      }

      v28 = [objc_allocWithZone(MEMORY[0x277CD4F08]) init];
      v29 = type metadata accessor for WorkoutLocationPinView();
      v30 = specialized WorkoutLocationPinView.init(annotation:type:)(v28, 0, objc_allocWithZone(v29));
      [v7 coordinate];
      [a2 pointForCoordinate_];
      v32 = v31;
      v34 = v33;
      [v30 bounds];
      v35 = v32 - CGRectGetMidX(v57);
      [v30 centerOffset];
      v37 = v35 + v36;
      [v30 bounds];
      v38 = v34 - CGRectGetMidY(v58);
      [v30 centerOffset];
      v40 = v38 + v39;
      CGContextSaveGState(v14);
      CGContextTranslateCTM(v14, v37, v40);
      [v30 prepareForSnapshotting];
      v41 = [v30 layer];
      [v41 renderInContext_];

      CGContextRestoreGState(v14);
      v42 = specialized WorkoutLocationPinView.init(annotation:type:)([objc_allocWithZone(MEMORY[0x277CD4F08]) init], 1, objc_allocWithZone(v29));
      [v54 coordinate];
      [a2 pointForCoordinate_];
      v44 = v43;
      v46 = v45;
      [v42 bounds];
      v47 = v44 - CGRectGetMidX(v59);
      [v42 centerOffset];
      v49 = v47 + v48;
      [v42 bounds];
      v50 = v46 - CGRectGetMidY(v60);
      [v42 centerOffset];
      v52 = v50 + v51;
      CGContextSaveGState(v14);
      CGContextTranslateCTM(v14, v49, v52);
      [v42 prepareForSnapshotting];
      v53 = [v42 layer];
      [v53 renderInContext_];

      CGContextRestoreGState(v14);
      goto LABEL_12;
    }

LABEL_19:
    swift_once();
    goto LABEL_9;
  }

LABEL_21:
  __break(1u);
}

uint64_t HKWorkout.eligibleForRoute.getter()
{
  v1 = [v0 workoutActivityType];
  result = 0;
  if (v1 > 45)
  {
    v3 = v1 - 60;
    if ((v1 - 60) <= 0xE)
    {
      if (((1 << v3) & 0x83) != 0)
      {
LABEL_12:
        v4 = MEMORY[0x277CCCB18];
        goto LABEL_19;
      }

      if (((1 << v3) & 0xC00) != 0)
      {
        v4 = MEMORY[0x277CCCB48];
LABEL_19:
        v5 = *v4;
        type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for HKQuantityType);

        return 1;
      }

      if (v1 == 74)
      {
        goto LABEL_14;
      }
    }

    if (v1 != 52)
    {
      if (v1 != 46)
      {
        return result;
      }

      v4 = MEMORY[0x277CCCB38];
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v1 > 36)
  {
    if (v1 == 37)
    {
      goto LABEL_18;
    }

    if (v1 != 40)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (v1 == 13)
  {
LABEL_14:
    v4 = MEMORY[0x277CCCB10];
    goto LABEL_19;
  }

  if (v1 == 24)
  {
LABEL_18:
    v4 = MEMORY[0x277CCCB40];
    goto LABEL_19;
  }

  return result;
}

void closure #1 in HKWorkout.fetchRoute()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo14HKWorkoutRouteCs5Error_pGMd);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = [objc_opt_self() predicateForObjectsFromWorkout_];
  v9 = [objc_opt_self() workoutRouteType];
  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v7, v4);
  v12 = objc_allocWithZone(MEMORY[0x277CCCFF0]);
  aBlock[4] = partial apply for closure #1 in closure #1 in HKWorkout.fetchRoute();
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKAnchoredObjectQuery, @guaranteed [HKSample]?, @guaranteed [HKDeletedObject]?, @guaranteed HKQueryAnchor?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_30;
  v13 = _Block_copy(aBlock);
  v14 = [v12 initWithType:v9 predicate:v8 anchor:0 limit:0 resultsHandler:v13];

  _Block_release(v13);

  if (one-time initialization token for healthStore != -1)
  {
    swift_once();
  }

  [static WorkoutUtilities.healthStore executeQuery_];
}

uint64_t closure #1 in closure #1 in HKWorkout.fetchRoute()(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    goto LABEL_10;
  }

  v2 = a2 & 0xFFFFFFFFFFFFFF8;
  if (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_10:
    lazy protocol witness table accessor for type MutableWorkoutViewModel.RouteErrors and conformance MutableWorkoutViewModel.RouteErrors();
    swift_allocError();
    *v6 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo14HKWorkoutRouteCs5Error_pGMd);
    return CheckedContinuation.resume(throwing:)();
  }

  v7 = a2;
  result = __CocoaSet.count.getter();
  a2 = v7;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x21CE93180](0);
    goto LABEL_7;
  }

  if (*(v2 + 16))
  {
    v4 = *(a2 + 32);
LABEL_7:
    v5 = v4;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo14HKWorkoutRouteCs5Error_pGMd);
      return CheckedContinuation.resume(returning:)();
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void closure #1 in HKWorkoutRoute.getLocations()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo10CLLocationCGs5Error_pGMd);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x277D84F90];
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  (*(v5 + 32))(v10 + v9, v7, v4);
  v11 = objc_allocWithZone(MEMORY[0x277CCDC88]);
  aBlock[4] = partial apply for closure #1 in closure #1 in HKWorkoutRoute.getLocations();
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKWorkoutRouteQuery, @guaranteed [CLLocation]?, @unowned Bool, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_24;
  v12 = _Block_copy(aBlock);

  v13 = [v11 initWithRoute:a2 dataHandler:v12];
  _Block_release(v12);

  if (one-time initialization token for healthStore != -1)
  {
    swift_once();
  }

  [static WorkoutUtilities.healthStore executeQuery_];
}

uint64_t closure #1 in closure #1 in HKWorkoutRoute.getLocations()(int a1, uint64_t a2, char a3, id a4)
{
  if (a2)
  {
    swift_beginAccess();

    specialized Array.append<A>(contentsOf:)(v5);
    result = swift_endAccess();
    if (a3)
    {
      swift_beginAccess();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo10CLLocationCGs5Error_pGMd);
      return CheckedContinuation.resume(returning:)();
    }
  }

  else
  {
    if (!a4)
    {
      lazy protocol witness table accessor for type MutableWorkoutViewModel.RouteErrors and conformance MutableWorkoutViewModel.RouteErrors();
      swift_allocError();
      a4 = 0;
      *v7 = 1;
    }

    v8 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo10CLLocationCGs5Error_pGMd);
    return CheckedContinuation.resume(throwing:)();
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKAnchoredObjectQuery, @guaranteed [HKSample]?, @guaranteed [HKDeletedObject]?, @guaranteed HKQueryAnchor?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = a3;
  v11 = *(a1 + 32);
  if (a3)
  {
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for HKSample);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a4)
  {
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for HKDeletedObject);
    a4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v12 = a2;
  v13 = a5;
  v14 = a6;
  v11(v12, v9, a4, a5, a6);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKWorkoutRouteQuery, @guaranteed [CLLocation]?, @unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v9 = *(a1 + 32);
  if (a3)
  {
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CLLocation);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v10 = a2;
  v11 = a5;
  v9(v10, v7, a4, a5);
}

void *specialized WorkoutLocationPinView.init(annotation:type:)(void *a1, char a2, void *a3)
{
  swift_getObjectType();
  v20.receiver = a3;
  v20.super_class = type metadata accessor for WorkoutLocationPinView();
  v6 = objc_msgSendSuper2(&v20, sel_initWithAnnotation_reuseIdentifier_, a1, 0);
  [v6 setFrame_];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 clearColor];
  [v8 setBackgroundColor_];

  [v8 setCanShowCallout_];
  (*((*MEMORY[0x277D85000] & *v8) + 0x58))(a2 & 1);
  [v8 setIsAccessibilityElement_];
  v10 = *MEMORY[0x277D76560];
  v11 = [v8 accessibilityTraits];
  if ((v10 & ~v11) != 0)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  [v8 setAccessibilityTraits_];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  v21._object = 0x800000021657BF40;
  v15._countAndFlagsBits = 0x6E73206574756F52;
  v15._object = 0xEE00746F68737061;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v21._countAndFlagsBits = 0xD000000000000033;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v21);

  v18 = MEMORY[0x21CE91FC0](v17._countAndFlagsBits, v17._object);

  [v8 setAccessibilityLabel_];

  return v8;
}

uint64_t specialized static MutableWorkoutViewModel.meetsMinimumRequirements(_:startDate:endDate:)(unint64_t a1)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v12 = &v34 - v11;
  if (!(a1 >> 62))
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_3;
    }

    return 0;
  }

  result = __CocoaSet.count.getter();
  v13 = result;
  if (!result)
  {
    return 0;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) == 0)
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      v15 = v13 - 1;
      if (!__OFSUB__(v13, 1))
      {
        if (v15 < v14)
        {
          v16 = *(a1 + 32);
          v17 = *(a1 + 32 + 8 * v15);
          v1 = v16;
          v18 = v17;
          goto LABEL_8;
        }

        __break(1u);
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }

  v1 = MEMORY[0x21CE93180](0, a1);
  result = v13 - 1;
  if (!__OFSUB__(v13, 1))
  {
    v18 = MEMORY[0x21CE93180](result, a1);
LABEL_8:
    a1 = v18;
    Date.timeIntervalSinceReferenceDate.getter();
    v20 = v19;
    Date.timeIntervalSinceReferenceDate.getter();
    v22 = v20 - v21;
    v23 = [a1 timestamp];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSinceReferenceDate.getter();
    v25 = v24;
    v26 = *(v6 + 8);
    v26(v12, v5);
    v27 = [v1 timestamp];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSinceReferenceDate.getter();
    v29 = v28;
    v26(v9, v5);
    v2 = fabs((v25 - v29) / v22);
    v3 = 0.33;
    v5 = v2 > 0.33;
    if (one-time initialization token for assets == -1)
    {
LABEL_9:
      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static CommonLogger.assets);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 134218240;
        *(v33 + 4) = v2;
        *(v33 + 12) = 1024;
        *(v33 + 14) = v2 > v3;
        _os_log_impl(&dword_21607C000, v31, v32, "[meetsMinimumRequirements] routeDurationPercentage= %f, meetsRequirement=%{BOOL}d", v33, 0x12u);
        MEMORY[0x21CE94770](v33, -1, -1);
      }

      return v5;
    }

LABEL_19:
    swift_once();
    goto LABEL_9;
  }

LABEL_21:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type MutableWorkoutViewModel.RouteErrors and conformance MutableWorkoutViewModel.RouteErrors()
{
  result = lazy protocol witness table cache variable for type MutableWorkoutViewModel.RouteErrors and conformance MutableWorkoutViewModel.RouteErrors;
  if (!lazy protocol witness table cache variable for type MutableWorkoutViewModel.RouteErrors and conformance MutableWorkoutViewModel.RouteErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MutableWorkoutViewModel.RouteErrors and conformance MutableWorkoutViewModel.RouteErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MutableWorkoutViewModel.RouteErrors and conformance MutableWorkoutViewModel.RouteErrors;
  if (!lazy protocol witness table cache variable for type MutableWorkoutViewModel.RouteErrors and conformance MutableWorkoutViewModel.RouteErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MutableWorkoutViewModel.RouteErrors and conformance MutableWorkoutViewModel.RouteErrors);
  }

  return result;
}

uint64_t block_copy_helper_13_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id partial apply for closure #1 in closure #1 in MutableWorkoutViewModel.overlayedRouteImage(from:)(double a1, double a2)
{
  v3 = *(v2 + 16);
  v4 = MKCoordinateForMapPoint(*&a1);

  return [v3 pointForCoordinate_];
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in closure #1 in HKWorkoutRoute.getLocations()(int a1, uint64_t a2, char a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo10CLLocationCGs5Error_pGMd);

  return closure #1 in closure #1 in HKWorkoutRoute.getLocations()(a1, a2, a3, a4);
}

uint64_t partial apply for closure #1 in closure #1 in HKWorkout.fetchRoute()(uint64_t a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo14HKWorkoutRouteCs5Error_pGMd);

  return closure #1 in closure #1 in HKWorkout.fetchRoute()(a1, a2);
}

uint64_t ClientPhotoViewModel.title.getter()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = *(Strong + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle);

  return v1;
}

uint64_t ClientPhotoViewModel.photo.getter()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + 336))(result);

    return v1;
  }

  return result;
}

__n128 ClientPhotoViewModel.portraitCropRect.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC9MomentsUI20ClientPhotoViewModel_portraitCropRect;
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

__n128 ClientPhotoViewModel.landscapeCropRect.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC9MomentsUI20ClientPhotoViewModel_landscapeCropRect;
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

__n128 ClientPhotoViewModel.portraitCropRect.getter@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *a1;
  swift_beginAccess();
  v5 = *(v4 + 32);
  result = *v4;
  v7 = *(v4 + 16);
  *a2 = *v4;
  *(a2 + 16) = v7;
  *(a2 + 32) = v5;
  return result;
}

__n128 ClientPhotoViewModel.squareCropRect.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC9MomentsUI20ClientPhotoViewModel_squareCropRect;
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

uint64_t ClientPhotoViewModel.__allocating_init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = specialized ClientPhotoViewModel.__allocating_init(dbObject:)(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t ClientPhotoViewModel.init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized ClientPhotoViewModel.init(dbObject:)(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void ClientPhotoViewModel.__allocating_init(from:)()
{
  v1 = objc_allocWithZone(v0);
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void ClientPhotoViewModel.init(from:)()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI20ClientPhotoViewModel_localIdentifier);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC9MomentsUI20ClientPhotoViewModel_cloudIdentifier);
  *v2 = 0;
  v2[1] = 0;
  v3 = v0 + OBJC_IVAR____TtC9MomentsUI20ClientPhotoViewModel_portraitCropRect;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 1;
  v4 = v0 + OBJC_IVAR____TtC9MomentsUI20ClientPhotoViewModel_landscapeCropRect;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 1;
  v5 = v0 + OBJC_IVAR____TtC9MomentsUI20ClientPhotoViewModel_squareCropRect;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 1;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void ClientPhotoViewModel.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *ClientPhotoViewModel.view(style:)(char *a1)
{
  v2 = *a1;
  v3 = objc_allocWithZone(type metadata accessor for PhotoView());
  v4 = OBJC_IVAR____TtC9MomentsUI9PhotoView_photoImageView;
  v5 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v6 = v1;
  *&v3[v4] = [v5 init];
  v7 = *MEMORY[0x277D76560];
  if (one-time initialization token for accessibilityString != -1)
  {
    swift_once();
  }

  v8 = static PhotoView.Constants.accessibilityString;
  v9 = OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView;
  v10 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v11 = v6;
  *&v3[v9] = [v10 init];
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC9MomentsUI9AssetView_suggestionID;
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 56))(&v3[v12], 1, 1, v13);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v3[OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle] = v2;
  v31.receiver = v3;
  v31.super_class = type metadata accessor for AssetView();
  v14 = objc_msgSendSuper2(&v31, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v15 = *((*MEMORY[0x277D85000] & *v14) + 0xE8);
  v16 = v14;
  v15();
  AssetView.setFallBackView()();
  [v16 setIsAccessibilityElement_];
  v17 = [v16 accessibilityTraits];
  if ((v7 & ~v17) != 0)
  {
    v18 = v7;
  }

  else
  {
    v18 = 0;
  }

  [v16 setAccessibilityTraits_];
  v19 = MEMORY[0x21CE91FC0](v8, *(&v8 + 1));
  [v16 setAccessibilityLabel_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_21658CA50;
  v21 = type metadata accessor for UITraitUserInterfaceStyle();
  v22 = MEMORY[0x277D74BF0];
  *(v20 + 32) = v21;
  *(v20 + 40) = v22;
  v23 = v16;
  MEMORY[0x21CE92C30](v20, sel_handleTraitChange);
  swift_unknownObjectRelease();

  [v23 handleTraitChange];
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];

  [v23 setClipsToBounds_];
  v24 = OBJC_IVAR____TtC9MomentsUI9PhotoView_photoImageView;
  v25 = *&v23[OBJC_IVAR____TtC9MomentsUI9PhotoView_photoImageView];
  v26 = v23;
  [v25 setContentMode_];
  [*&v23[v24] setTranslatesAutoresizingMaskIntoConstraints_];
  [v26 addSubview_];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  v27 = *&v26[OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView];
  v28 = MEMORY[0x21CE91FC0](0x6F746F6870, 0xE500000000000000);
  v29 = [objc_opt_self() systemImageNamed_];

  [v27 setImage_];
  return v14;
}

uint64_t ClientPhotoViewModel.__ivar_destroyer()
{

  return swift_weakDestroy();
}

id ClientPhotoViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClientPhotoViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double protocol witness for PhotosFamilyViewModel.portraitCropRect.getter in conformance ClientPhotoViewModel@<D0>(uint64_t a1@<X8>)
{
  (*((*MEMORY[0x277D85000] & *v1) + 0x278))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

double protocol witness for PhotosFamilyViewModel.landscapeCropRect.getter in conformance ClientPhotoViewModel@<D0>(uint64_t a1@<X8>)
{
  (*((*MEMORY[0x277D85000] & *v1) + 0x290))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

double protocol witness for PhotosFamilyViewModel.squareCropRect.getter in conformance ClientPhotoViewModel@<D0>(uint64_t a1@<X8>)
{
  (*((*MEMORY[0x277D85000] & *v1) + 0x2A8))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t specialized ClientPhotoViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v28[3] = a3;
  v28[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v8 = &a2[OBJC_IVAR____TtC9MomentsUI20ClientPhotoViewModel_localIdentifier];
  *v8 = 0;
  v8[1] = 0;
  v9 = &a2[OBJC_IVAR____TtC9MomentsUI20ClientPhotoViewModel_cloudIdentifier];
  *v9 = 0;
  v9[1] = 0;
  v10 = &a2[OBJC_IVAR____TtC9MomentsUI20ClientPhotoViewModel_portraitCropRect];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v10[32] = 1;
  v11 = &a2[OBJC_IVAR____TtC9MomentsUI20ClientPhotoViewModel_landscapeCropRect];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v11[32] = 1;
  v12 = &a2[OBJC_IVAR____TtC9MomentsUI20ClientPhotoViewModel_squareCropRect];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  v12[32] = 1;
  swift_weakInit();
  outlined init with copy of DBObject(v28, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  type metadata accessor for DBPhotoModel();
  if (swift_dynamicCast())
  {
    swift_weakAssign();
    v13 = *(v26 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect + 32);
    v20 = *(v26 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect + 16);
    v23 = *(v26 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect);
    swift_beginAccess();
    *v12 = v23;
    *(v12 + 1) = v20;
    v12[32] = v13;
    v14 = *(v26 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect + 32);
    v21 = *(v26 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect + 16);
    v24 = *(v26 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect);
    swift_beginAccess();
    *v10 = v24;
    *(v10 + 1) = v21;
    v10[32] = v14;
    v15 = *(v26 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect + 32);
    v22 = *(v26 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect + 16);
    v25 = *(v26 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect);
    swift_beginAccess();
    *v11 = v25;
    *(v11 + 1) = v22;
    v11[32] = v15;
    v17 = *(v26 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier);
    v16 = *(v26 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier + 8);
    swift_beginAccess();
    *v9 = v17;
    v9[1] = v16;

    swift_beginAccess();
    *v8 = 0;
    v8[1] = 0;

    v18 = specialized AssetViewModel.init(dbObject:)(v26, a2);
    __swift_destroy_boxed_opaque_existential_1(v28);
    return v18;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized ClientPhotoViewModel.__allocating_init(dbObject:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(type metadata accessor for ClientPhotoViewModel());
  (*(v7 + 16))(v9, a1, a3);
  return specialized ClientPhotoViewModel.init(dbObject:)(v9, v10, a3, a4);
}

void specialized ClientPhotoViewModel.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI20ClientPhotoViewModel_localIdentifier);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC9MomentsUI20ClientPhotoViewModel_cloudIdentifier);
  *v2 = 0;
  v2[1] = 0;
  v3 = v0 + OBJC_IVAR____TtC9MomentsUI20ClientPhotoViewModel_portraitCropRect;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 1;
  v4 = v0 + OBJC_IVAR____TtC9MomentsUI20ClientPhotoViewModel_landscapeCropRect;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 1;
  v5 = v0 + OBJC_IVAR____TtC9MomentsUI20ClientPhotoViewModel_squareCropRect;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 1;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata accessor for ClientPhotoViewModel()
{
  result = type metadata singleton initialization cache for ClientPhotoViewModel;
  if (!type metadata singleton initialization cache for ClientPhotoViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of ClientPhotoViewModel.portraitCropRect.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x280);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

uint64_t dispatch thunk of ClientPhotoViewModel.landscapeCropRect.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x298);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

uint64_t dispatch thunk of ClientPhotoViewModel.squareCropRect.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x2B0);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

id MutablePhotosFamilyViewModel.init(intendedViewport:supportedStyles:photoLocalIdentifier:dateInterval:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = specialized MutablePhotosFamilyViewModel.init(intendedViewport:supportedStyles:photoLocalIdentifier:dateInterval:)(a1, a2, a3, a4, a5);

  return v6;
}

uint64_t MutablePhotosFamilyViewModel.init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized MutablePhotosFamilyViewModel.init(dbObject:)(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

__n128 MutablePhotosFamilyViewModel.portraitCropRect.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_portraitCropRect;
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

__n128 MutablePhotosFamilyViewModel.landscapeCropRect.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_landscapeCropRect;
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

__n128 MutablePhotosFamilyViewModel.squareCropRect.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_squareCropRect;
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

uint64_t MutablePhotosFamilyViewModel.sharedRender(asset:)(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](MutablePhotosFamilyViewModel.sharedRender(asset:), 0, 0);
}

uint64_t MutablePhotosFamilyViewModel.sharedRender(asset:)()
{
  v1 = *(v0 + 144);
  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
  if (v2)
  {
    v3 = *(v0 + 136);
    v4 = MEMORY[0x277D85000];
    v5 = *((*MEMORY[0x277D85000] & *v2) + 0x60);
    v6 = v2;
    v7 = v5();
    v8 = *((*v4 & v6->isa) + 0x78);
    v9 = v8();
    if (v7 > v9)
    {
      v9 = v7;
    }

    v10 = v9;
    v11 = objc_opt_self();
    [v11 preferredContentsRectForAsset:v3 targetSize:{v10, v10 + v10}];
    *(v0 + 16) = v12;
    *(v0 + 24) = v13;
    *(v0 + 32) = v14;
    *(v0 + 40) = v15;
    *(v0 + 48) = 0;
    v16 = (*((*MEMORY[0x277D85000] & *v1) + 0x258))(v0 + 16);
    v17 = (v5)(v16);
    v18 = v8();
    if (v17 > v18)
    {
      v18 = v17;
    }

    [v11 preferredContentsRectForAsset:v3 targetSize:v18 + v18];
    *(v0 + 56) = v19;
    *(v0 + 64) = v20;
    *(v0 + 72) = v21;
    *(v0 + 80) = v22;
    *(v0 + 88) = 0;
    v23 = (*((*MEMORY[0x277D85000] & *v1) + 0x270))(v0 + 56);
    v24 = (v5)(v23);
    v25 = MEMORY[0x277D85000];
    v26 = v24;
    v27 = v8();
    if (v26 > v27)
    {
      v27 = v26;
    }

    [v11 preferredContentsRectForAsset:v3 targetSize:{v27, v27}];
    *(v0 + 96) = v28;
    *(v0 + 104) = v29;
    *(v0 + 112) = v30;
    *(v0 + 120) = v31;
    *(v0 + 128) = 0;
    (*((*v25 & *v1) + 0x288))(v0 + 96);
    v32 = [v3 creationDate];
    if (v32)
    {
      v33 = *(v0 + 192);
      v34 = *(v0 + 200);
      v35 = *(v0 + 176);
      v36 = *(v0 + 184);
      v38 = *(v0 + 160);
      v37 = *(v0 + 168);
      v55 = *(v0 + 152);
      v56 = *(v0 + 144);
      v57 = v35;
      v39 = v32;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v40 = v35;
      v41 = v6;
      v42 = *(v40 + 16);
      v42(v33, v34, v37);
      v42(v36, v34, v37);
      v25 = MEMORY[0x277D85000];
      v6 = v41;
      DateInterval.init(start:end:)();
      v43 = type metadata accessor for DateInterval();
      (*(*(v43 - 8) + 56))(v38, 0, 1, v43);
      outlined init with copy of DateInterval?(v38, v55);
      (*((*v25 & *v56) + 0xF0))(v55);
      outlined destroy of DateInterval?(v38);
      v32 = (*(v57 + 8))(v34, v37);
    }

    v44 = (*((*v25 & **(v0 + 144)) + 0x2B0))(v32);
    if (v45)
    {
      v46 = *(v0 + 144);
      v47 = specialized static PhotosUtilities.cloudIdentifier(from:)(v44, v45);
      v49 = v48;

      (*((*v25 & *v46) + 0x2A0))(v47, v49);
    }
  }

  else
  {
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    __swift_project_value_buffer(v50, static CommonLogger.viewModel);
    v6 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_21607C000, v6, v51, "[MutablePhotosFamilyViewModel] Doees not have maximumSupportedViewport", v52, 2u);
      MEMORY[0x21CE94770](v52, -1, -1);
    }
  }

  v53 = *(v0 + 8);

  return v53();
}

id MutablePhotosFamilyViewModel.__allocating_init(intendedViewport:supportedStyles:photoLocalIdentifier:dateInterval:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = specialized MutablePhotosFamilyViewModel.init(intendedViewport:supportedStyles:photoLocalIdentifier:dateInterval:)(a1, a2, a3, a4, a5);

  return v12;
}

uint64_t MutablePhotosFamilyViewModel.__allocating_init(dbObject:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = __swift_mutable_project_boxed_opaque_existential_1(a1, v4);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = specialized MutablePhotosFamilyViewModel.init(dbObject:)(v8, v3, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

void MutablePhotosFamilyViewModel.init(from:)()
{
  v1 = v0 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_portraitCropRect;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 1;
  v2 = v0 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_landscapeCropRect;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 1;
  v3 = v0 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_squareCropRect;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 1;
  v4 = (v0 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_cloudIdentifier);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_localIdentifier);
  *v5 = 0;
  v5[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MutablePhotosFamilyViewModel.init(coder:)()
{
  v1 = v0 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_portraitCropRect;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 1;
  v2 = v0 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_landscapeCropRect;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 1;
  v3 = v0 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_squareCropRect;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 1;
  v4 = (v0 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_cloudIdentifier);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_localIdentifier);
  *v5 = 0;
  v5[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *MutablePhotosFamilyViewModel.view(style:)(char *a1)
{
  v2 = *a1;
  v3 = objc_allocWithZone(type metadata accessor for PhotoView());
  v4 = OBJC_IVAR____TtC9MomentsUI9PhotoView_photoImageView;
  v5 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v6 = v1;
  *&v3[v4] = [v5 init];
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v6)
  {
    v7 = *MEMORY[0x277D76560];
    if (one-time initialization token for accessibilityString != -1)
    {
      swift_once();
    }

    v8 = static PhotoView.Constants.accessibilityString;
    v9 = OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView;
    v10 = objc_allocWithZone(MEMORY[0x277D755E8]);
    v11 = v6;
    *&v3[v9] = [v10 init];
    swift_unknownObjectWeakInit();
    v12 = OBJC_IVAR____TtC9MomentsUI9AssetView_suggestionID;
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 56))(&v3[v12], 1, 1, v13);
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v3[OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle] = v2;
    v31.receiver = v3;
    v31.super_class = type metadata accessor for AssetView();
    v14 = objc_msgSendSuper2(&v31, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v15 = *((*MEMORY[0x277D85000] & *v14) + 0xE8);
    v16 = v14;
    v15();
    AssetView.setFallBackView()();
    [v16 setIsAccessibilityElement_];
    v17 = [v16 accessibilityTraits];
    if ((v7 & ~v17) != 0)
    {
      v18 = v7;
    }

    else
    {
      v18 = 0;
    }

    [v16 setAccessibilityTraits_];
    v19 = MEMORY[0x21CE91FC0](v8, *(&v8 + 1));
    [v16 setAccessibilityLabel_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_21658CA50;
    v21 = type metadata accessor for UITraitUserInterfaceStyle();
    v22 = MEMORY[0x277D74BF0];
    *(v20 + 32) = v21;
    *(v20 + 40) = v22;
    v23 = v16;
    MEMORY[0x21CE92C30](v20, sel_handleTraitChange);
    swift_unknownObjectRelease();

    [v23 handleTraitChange];
    [v23 setTranslatesAutoresizingMaskIntoConstraints_];

    [v23 setClipsToBounds_];
    v24 = OBJC_IVAR____TtC9MomentsUI9PhotoView_photoImageView;
    v25 = *&v23[OBJC_IVAR____TtC9MomentsUI9PhotoView_photoImageView];
    v26 = v23;
    [v25 setContentMode_];
    [*&v23[v24] setTranslatesAutoresizingMaskIntoConstraints_];
    [v26 addSubview_];
    UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

    v27 = *&v26[OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView];
    v28 = MEMORY[0x21CE91FC0](0x6F746F6870, 0xE500000000000000);
    v29 = [objc_opt_self() systemImageNamed_];

    [v27 setImage_];
    return v14;
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t MutablePhotosFamilyViewModel.__ivar_destroyer()
{
}

id MutablePhotosFamilyViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MutablePhotosFamilyViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double protocol witness for PhotosFamilyViewModel.portraitCropRect.getter in conformance MutablePhotosFamilyViewModel@<D0>(uint64_t a1@<X8>)
{
  (*((*MEMORY[0x277D85000] & *v1) + 0x250))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

double protocol witness for PhotosFamilyViewModel.landscapeCropRect.getter in conformance MutablePhotosFamilyViewModel@<D0>(uint64_t a1@<X8>)
{
  (*((*MEMORY[0x277D85000] & *v1) + 0x268))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

double protocol witness for PhotosFamilyViewModel.squareCropRect.getter in conformance MutablePhotosFamilyViewModel@<D0>(uint64_t a1@<X8>)
{
  (*((*MEMORY[0x277D85000] & *v1) + 0x280))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t specialized MutablePhotosFamilyViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v31[3] = a3;
  v31[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v8 = &a2[OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_portraitCropRect];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v8[32] = 1;
  v9 = &a2[OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_landscapeCropRect];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = 1;
  v10 = &a2[OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_squareCropRect];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v10[32] = 1;
  v11 = &a2[OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_cloudIdentifier];
  *v11 = 0;
  v11[1] = 0;
  v12 = &a2[OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_localIdentifier];
  *v12 = 0;
  v12[1] = 0;
  outlined init with copy of DBObject(v31, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  type metadata accessor for DBPhotosFamilyModel();
  if (swift_dynamicCast())
  {
    v13 = *(v29 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect + 32);
    v23 = *(v29 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect + 16);
    v26 = *(v29 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect);
    swift_beginAccess();
    *v8 = v26;
    *(v8 + 1) = v23;
    v8[32] = v13;
    v14 = *(v29 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect + 32);
    v24 = *(v29 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect + 16);
    v27 = *(v29 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect);
    swift_beginAccess();
    *v9 = v27;
    *(v9 + 1) = v24;
    v9[32] = v14;
    v15 = *(v29 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect + 32);
    v25 = *(v29 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect + 16);
    v28 = *(v29 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect);
    swift_beginAccess();
    *v10 = v28;
    *(v10 + 1) = v25;
    v10[32] = v15;
    v17 = *(v29 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier);
    v16 = *(v29 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier + 8);
    swift_beginAccess();
    *v11 = v17;
    v11[1] = v16;

    v19 = *(v29 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier);
    v18 = *(v29 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier + 8);
    swift_beginAccess();
    *v12 = v19;
    v12[1] = v18;

    *&a2[OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_dbPhotosFamilyModel] = v29;

    v21 = specialized AssetViewModel.init(dbObject:)(v20, a2);
    __swift_destroy_boxed_opaque_existential_1(v31);
    return v21;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id specialized MutablePhotosFamilyViewModel.init(intendedViewport:supportedStyles:photoLocalIdentifier:dateInterval:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v36 = a2;
  v37 = a5;
  v35 = a1;
  ObjectType = swift_getObjectType();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v34 - v12;
  v14 = &v6[OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_portraitCropRect];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v14[32] = 1;
  v15 = &v6[OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_landscapeCropRect];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  v16 = &v6[OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_squareCropRect];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  v17 = &v6[OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_cloudIdentifier];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v6[OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_localIdentifier];
  *v18 = 0;
  v18[1] = 0;
  swift_beginAccess();
  *v18 = a3;
  v18[1] = a4;
  *&v6[OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_dbPhotosFamilyModel] = 0;
  v19 = type metadata accessor for DateInterval();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v13, a5, v19);
  v21 = *(v20 + 56);
  v21(v13, 0, 1, v19);
  type metadata accessor for DBAssetModel();
  static DBAssetModel.subscript.getter(ObjectType, &v40);
  HIDWORD(v34) = v40;
  v22 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *&v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v23 = &v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v23 = 0;
  v23[1] = 0;
  v24 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v21(&v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval], 1, 1, v19);
  UUID.init()();
  v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  *&v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  *&v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  v26 = v35;
  v25 = v36;
  *&v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v35;
  *&v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = v25;
  swift_beginAccess();
  v27 = *&v6[v22];
  *&v6[v22] = 0;
  v28 = v26;

  swift_beginAccess();
  *v23 = 0;
  v23[1] = 0;

  swift_beginAccess();
  outlined assign with copy of DateInterval?(v13, &v6[v24]);
  v29 = swift_endAccess();
  v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = BYTE4(v34);
  (*(ObjectType + 328))(v39, v29);
  LOBYTE(ObjectType) = v39[0];
  type metadata accessor for AssetViewModelRenderingActor();
  v30 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v30 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v30 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v30 + 112) = ObjectType;
  *&v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v30;
  v31 = type metadata accessor for AssetViewModel();
  v38.receiver = v6;
  v38.super_class = v31;
  v32 = objc_msgSendSuper2(&v38, sel_init);
  (*(v20 + 8))(v37, v19);
  outlined destroy of DateInterval?(v13);
  return v32;
}

uint64_t type metadata accessor for MutablePhotosFamilyViewModel()
{
  result = type metadata singleton initialization cache for MutablePhotosFamilyViewModel;
  if (!type metadata singleton initialization cache for MutablePhotosFamilyViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of MutablePhotosFamilyViewModel.portraitCropRect.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x258);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

uint64_t dispatch thunk of MutablePhotosFamilyViewModel.landscapeCropRect.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x270);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

uint64_t dispatch thunk of MutablePhotosFamilyViewModel.squareCropRect.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x288);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

uint64_t dispatch thunk of MutablePhotosFamilyViewModel.sharedRender(asset:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x2D0);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static Exif.filterImage(imageSource:outputURL:);

  return v7(a1);
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 32;
    do
    {
      v2 += 8;

      result = specialized Set.formUnion<A>(_:)(v3);
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t static DBSnapshotAnalytics.Class.setter(char *a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  static DBSnapshotAnalytics.Class = a1;
  unk_27CA8FE58 = a2;
  byte_27CA8FE60 = a3;
  return result;
}

uint64_t DBSnapshotAnalytics.Log.unsafeMutableAddressor()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static DBSnapshotAnalytics.Log);
}

uint64_t static DBSnapshotAnalytics.Log.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static DBSnapshotAnalytics.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static DBSnapshotAnalytics.Log.setter(uint64_t a1)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static DBSnapshotAnalytics.Log);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static DBSnapshotAnalytics.Log.modify())()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static DBSnapshotAnalytics.Log);
  swift_beginAccess();
  return MutableVideoViewModel.videoDurationSeconds.modify;
}

uint64_t protocol witness for static CloudLog.Log.getter in conformance DBSnapshotAnalytics@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static DBSnapshotAnalytics.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

MomentsUI::DBSnapshotAnalytics::SnapshotEvent::Reason_optional __swiftcall DBSnapshotAnalytics.SnapshotEvent.Reason.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue <= 2)
  {
    switch(rawValue)
    {
      case 0:
        *v1 = 0;
        return rawValue;
      case 1:
        *v1 = 1;
        return rawValue;
      case 2:
        *v1 = 2;
        return rawValue;
    }

LABEL_13:
    *v1 = 7;
    return rawValue;
  }

  if (rawValue > 4)
  {
    if (rawValue == 5)
    {
      *v1 = 5;
      return rawValue;
    }

    if (rawValue == 100)
    {
      *v1 = 6;
      return rawValue;
    }

    goto LABEL_13;
  }

  if (rawValue == 3)
  {
    *v1 = 3;
  }

  else
  {
    *v1 = 4;
  }

  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DBSnapshotAnalytics.SnapshotEvent.Reason()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](qword_2165964C0[v1]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DBSnapshotAnalytics.SnapshotEvent.Reason()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](qword_2165964C0[v1]);
  return Hasher._finalize()();
}

unint64_t DBSnapshotAnalytics.SnapshotEvent.EventFields.rawValue.getter(char a1)
{
  result = 0x74657373416D756ELL;
  switch(a1)
  {
    case 1:
    case 14:
    case 16:
    case 27:
      return 0xD000000000000011;
    case 2:
    case 21:
      return 0xD000000000000013;
    case 4:
    case 18:
    case 31:
    case 33:
      return 0xD000000000000012;
    case 5:
    case 6:
    case 24:
      v3 = 9;
      goto LABEL_23;
    case 7:
      return 0xD000000000000018;
    case 9:
    case 19:
    case 34:
      return 0xD000000000000014;
    case 10:
      return 0xD000000000000010;
    case 12:
    case 26:
    case 37:
      v3 = 5;
      goto LABEL_23;
    case 15:
    case 29:
    case 40:
    case 42:
      return 0xD000000000000016;
    case 17:
    case 20:
      return 0x65737341657A6973;
    case 22:
    case 23:
    case 36:
      v3 = 10;
      goto LABEL_23;
    case 25:
      return 0xD000000000000010;
    case 28:
      return 0xD000000000000010;
    case 30:
      return 0xD000000000000010;
    case 32:
      return 0xD000000000000017;
    case 35:
      return 0x65676775536D756ELL;
    case 38:
      return 0x67677553657A6973;
    case 39:
      v3 = 11;
LABEL_23:
      result = v3 | 0xD000000000000010;
      break;
    case 41:
      result = 0x746F687370616E73;
      break;
    case 43:
      result = 0x6E6F73616572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DBSnapshotAnalytics.SnapshotEvent.EventFields(char *a1, char *a2)
{
  v2 = *a2;
  v3 = DBSnapshotAnalytics.SnapshotEvent.EventFields.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == DBSnapshotAnalytics.SnapshotEvent.EventFields.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DBSnapshotAnalytics.SnapshotEvent.EventFields()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  DBSnapshotAnalytics.SnapshotEvent.EventFields.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DBSnapshotAnalytics.SnapshotEvent.EventFields()
{
  DBSnapshotAnalytics.SnapshotEvent.EventFields.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DBSnapshotAnalytics.SnapshotEvent.EventFields()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  DBSnapshotAnalytics.SnapshotEvent.EventFields.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DBSnapshotAnalytics.SnapshotEvent.EventFields@<X0>(_BYTE *a1@<X8>)
{
  result = specialized DBSnapshotAnalytics.SnapshotEvent.EventFields.init(rawValue:)();
  *a1 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance DBSnapshotAnalytics.SnapshotEvent.EventFields@<X0>(unint64_t *a1@<X8>)
{
  result = DBSnapshotAnalytics.SnapshotEvent.EventFields.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.snapshotID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DBSnapshotAnalytics.SnapshotEvent() + 20);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.stats.getter()
{
  type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.reason.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.numAssets.setter(uint64_t a1)
{
  result = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.numAssets_Contact.setter(uint64_t a1)
{
  result = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.numAssets_LivePhoto.setter(uint64_t a1)
{
  result = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.numAssets_Map.setter(uint64_t a1)
{
  result = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  *(v1 + *(result + 72)) = a1;
  return result;
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.numAssets_MapMulti.setter(uint64_t a1)
{
  result = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  *(v1 + *(result + 76)) = a1;
  return result;
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.numAssets_MediaFirstParty.setter(uint64_t a1)
{
  result = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  *(v1 + *(result + 80)) = a1;
  return result;
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.numAssets_MediaThirdParty.setter(uint64_t a1)
{
  result = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  *(v1 + *(result + 84)) = a1;
  return result;
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.numAssets_MotionActivity.setter(uint64_t a1)
{
  result = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  *(v1 + *(result + 88)) = a1;
  return result;
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.numAssets_Photo.setter(uint64_t a1)
{
  result = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  *(v1 + *(result + 92)) = a1;
  return result;
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.numAssets_Reflection.setter(uint64_t a1)
{
  result = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  *(v1 + *(result + 96)) = a1;
  return result;
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.numAssets_Poster.setter(uint64_t a1)
{
  result = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  *(v1 + *(result + 100)) = a1;
  return result;
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.numAssets_Route.setter(uint64_t a1)
{
  result = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  *(v1 + *(result + 104)) = a1;
  return result;
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.numAssets_StateOfMind.setter(uint64_t a1)
{
  result = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  *(v1 + *(result + 108)) = a1;
  return result;
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.numAssets_Video.setter(uint64_t a1)
{
  result = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  *(v1 + *(result + 112)) = a1;
  return result;
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.numAssets_Workout.setter(uint64_t a1)
{
  result = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  *(v1 + *(result + 116)) = a1;
  return result;
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.numAssets_WorkoutGroup.setter(uint64_t a1)
{
  result = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  *(v1 + *(result + 120)) = a1;
  return result;
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.numAssets_Unknown.setter(uint64_t a1)
{
  result = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  *(v1 + *(result + 124)) = a1;
  return result;
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.sizeAssets.setter(uint64_t a1)
{
  result = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  *(v1 + *(result + 128)) = a1;
  return result;
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.sizeAssets_Contact.setter(uint64_t a1)
{
  result = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  *(v1 + *(result + 132)) = a1;
  return result;
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.sizeAssets_LivePhoto.setter(uint64_t a1)
{
  result = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  *(v1 + *(result + 136)) = a1;
  return result;
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.sizeAssets_Map.setter(uint64_t a1)
{
  result = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  *(v1 + *(result + 140)) = a1;
  return result;
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.sizeAssets_MapMulti.setter(uint64_t a1)
{
  result = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  *(v1 + *(result + 144)) = a1;
  return result;
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.sizeAssets_MediaFirstParty.setter(uint64_t a1)
{
  result = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  *(v1 + *(result + 148)) = a1;
  return result;
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.sizeAssets_MediaThirdParty.setter(uint64_t a1)
{
  result = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  *(v1 + *(result + 152)) = a1;
  return result;
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.sizeAssets_MotionActivity.setter(uint64_t a1)
{
  result = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  *(v1 + *(result + 156)) = a1;
  return result;
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.sizeAssets_Photo.setter(uint64_t a1)
{
  result = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  *(v1 + *(result + 160)) = a1;
  return result;
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.sizeAssets_Reflection.setter(uint64_t a1)
{
  result = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  *(v1 + *(result + 164)) = a1;
  return result;
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.sizeAssets_Poster.setter(uint64_t a1)
{
  result = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  *(v1 + *(result + 168)) = a1;
  return result;
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.sizeAssets_Route.setter(uint64_t a1)
{
  result = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  *(v1 + *(result + 172)) = a1;
  return result;
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.sizeAssets_StateOfMind.setter(uint64_t a1)
{
  result = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  *(v1 + *(result + 176)) = a1;
  return result;
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.sizeAssets_Video.setter(uint64_t a1)
{
  result = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  *(v1 + *(result + 180)) = a1;
  return result;
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.sizeAssets_Workout.setter(uint64_t a1)
{
  result = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  *(v1 + *(result + 184)) = a1;
  return result;
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.sizeAssets_WorkoutGroup.setter(uint64_t a1)
{
  result = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  *(v1 + *(result + 188)) = a1;
  return result;
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.sizeAssets_Unknown.setter(uint64_t a1)
{
  result = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  *(v1 + *(result + 192)) = a1;
  return result;
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.durationAssets_Video.setter(uint64_t a1)
{
  result = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  *(v1 + *(result + 196)) = a1;
  return result;
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.init(snapshot:reason:processingTime:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v251 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v270 = v217 - v10;
  v271 = type metadata accessor for Logger();
  v293 = *(v271 - 8);
  v11 = MEMORY[0x28223BE20](v271);
  v13 = v217 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v281 = v217 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = v217 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGSgMd);
  MEMORY[0x28223BE20](v18 - 8);
  v267 = v217 - v19;
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy9MomentsUI07DBAssetB0CGMd);
  v292 = *(v266 - 8);
  MEMORY[0x28223BE20](v266);
  v277 = v217 - v20;
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGMd);
  v21 = *(v276 - 8);
  MEMORY[0x28223BE20](v276);
  v275 = v217 - v22;
  v279 = type metadata accessor for UUID();
  v243 = *(v279 - 8);
  v23 = MEMORY[0x28223BE20](v279);
  v249 = v217 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v256 = v217 - v26;
  MEMORY[0x28223BE20](v25);
  v248 = v217 - v27;
  v245 = type metadata accessor for PersistentIdentifier();
  v244 = *(v245 - 8);
  MEMORY[0x28223BE20](v245);
  v247 = v217 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  v250 = *(v252 - 8);
  MEMORY[0x28223BE20](v252);
  v253 = v217 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a2;
  type metadata accessor for DBSnapshot();
  lazy protocol witness table accessor for type DBSnapshot and conformance DBSnapshot(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
  if (!PersistentModel.modelContext.getter())
  {
    goto LABEL_11;
  }

  v257 = v13;
  v31 = dispatch thunk of ModelContext.container.getter();

  v33 = (*(*a1 + 504))(v32);
  if (!v33)
  {

LABEL_11:

    return (*(v250 + 56))(v251, 1, 1, v252);
  }

  v241 = v33;
  v283 = v17;
  v34 = v247;
  PersistentModel.persistentModelID.getter();
  type metadata accessor for ModelContext();
  swift_allocObject();

  v35 = ModelContext.init(_:)();
  v36 = dispatch thunk of ModelContext.model(for:)();
  v37 = swift_dynamicCastClass();
  if (!v37)
  {

    swift_unknownObjectRelease();
    (*(v244 + 8))(v34, v245);
    return (*(v250 + 56))(v251, 1, 1, v252);
  }

  v38 = v37;
  v226 = v36;
  v263 = v35;
  v227 = v31;
  v228 = a1;
  v39 = v253;
  v40 = (*(*v37 + 208))();
  v41 = v252;
  (*(*v38 + 456))(v40);
  v42 = v39 + *(v41 + 52);
  *v42 = a3;
  *(v42 + 8) = a4 & 1;
  *(v39 + *(v41 + 56)) = v30;
  v43 = MEMORY[0x277D84F90];
  v44 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MomentsUI16DBAssetModelEnumO_Si6models_Si5bytesSd8durationtTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v45 = *(*v38 + 576);
  v46 = v45();
  if (*(v46 + 16))
  {
    v47 = specialized __RawDictionaryStorage.find<A>(_:)(1u);
    if (v48)
    {
      v43 = *(*(v46 + 56) + 8 * v47);
    }
  }

  v242 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(v43);

  v50 = (v45)(v49);
  v51 = MEMORY[0x277D84F90];
  if (*(v50 + 16))
  {
    v52 = specialized __RawDictionaryStorage.find<A>(_:)(2u);
    v53 = v281;
    if (v54)
    {
      v51 = *(*(v50 + 56) + 8 * v52);
    }
  }

  else
  {
    v53 = v281;
  }

  v56 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(v51);

  if (v30 == 5)
  {
    goto LABEL_143;
  }

  v58 = v241;
  v59 = v241 & 0xFFFFFFFFFFFFFF8;
  if (v241 >> 62)
  {
    goto LABEL_189;
  }

  result = *((v241 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_18:
  v60 = v271;
  if (!result)
  {
LABEL_143:
    v230 = 0;
    v231 = 0;
    v59 = 0;
    v233 = 0;
    v232 = 0;
    v61 = 0;
    v63 = 0;
LABEL_144:
    v274 = v63;

    v176 = 0;
    v58 = 0;
    v56 = 0;
    v177 = v252;
    v178 = v253;
    *(v253 + *(v252 + 24)) = v44;
    *(v178 + v177[7]) = v61;
    *(v178 + v177[8]) = v232;
    *(v178 + v177[9]) = v233;
    *(v178 + v177[10]) = v59;
    *(v178 + v177[11]) = v231;
    *(v178 + v177[12]) = v230;
    v293 = v177[16];
    *(v178 + v293) = 0;
    v292 = v177[33];
    *(v292 + v178) = 0;
    v291 = v177[17];
    *(v291 + v178) = 0;
    v290 = v177[34];
    *(v178 + v290) = 0;
    v289 = v177[18];
    *(v178 + v289) = 0;
    v288 = v177[35];
    *(v178 + v288) = 0;
    v287 = v177[19];
    *(v178 + v287) = 0;
    v286 = v177[36];
    *(v178 + v286) = 0;
    v285 = v177[20];
    *(v178 + v285) = 0;
    v284 = v177[37];
    *(v178 + v284) = 0;
    v283 = v177[22];
    *(v178 + v283) = 0;
    v282 = v177[39];
    *(v178 + v282) = 0;
    v281 = v177[23];
    *(v178 + v281) = 0;
    v280 = v177[40];
    *(v178 + v280) = 0;
    v279 = v177[24];
    *(v178 + v279) = 0;
    *&v278 = v177[41];
    *(v178 + v278) = 0;
    v277 = v177[25];
    *&v277[v178] = 0;
    v179 = v177[42];
    *(v178 + v179) = 0;
    v180 = v177[27];
    *(v178 + v180) = 0;
    v181 = v177[44];
    *(v178 + v181) = 0;
    v21 = v177[28];
    *(v178 + v21) = 0;
    v53 = v177[45];
    *(v178 + v53) = 0;
    v182 = v44;
    v44 = v177[49];
    *(v178 + v44) = 0;
    v183 = v177[29];
    *(v178 + v183) = 0;
    v184 = v177[46];
    *(v178 + v184) = 0;
    v185 = v177[30];
    *(v178 + v185) = 0;
    v186 = v177[47];
    *(v178 + v186) = 0;
    v187 = v177[31];
    *(v178 + v187) = 0;
    v188 = v177[48];
    *(v178 + v188) = 0;
    v189 = v177[21];
    *(v178 + v189) = 0;
    v190 = v177[38];
    *(v178 + v190) = 0;
    *(v178 + v177[26]) = 0;
    *(v178 + v177[43]) = 0;
    v191 = v177[15];
    *(v178 + v191) = 0;
    v59 = v177[32];
    *(v178 + v59) = 0;
    v192 = v182;
    result = v182 + 64;
    v193 = *(v182 + 64);
    v194 = 1 << *(v182 + 32);
    v195 = -1;
    if (v194 < 64)
    {
      v195 = ~(-1 << v194);
    }

    v196 = v195 & v193;
    v197 = (v194 + 63) >> 6;
    while (v196)
    {
      v198 = v176;
LABEL_152:
      v199 = __clz(__rbit64(v196)) | (v198 << 6);
      v200 = *(v192 + 56) + 24 * v199;
      v201 = *v200;
      v67 = __OFADD__(v56, *v200);
      v56 += *v200;
      if (v67)
      {
        goto LABEL_185;
      }

      v202 = *(v200 + 8);
      v67 = __OFADD__(v58, v202);
      v58 += v202;
      if (v67)
      {
        goto LABEL_186;
      }

      v196 &= v196 - 1;
      v203 = *(v200 + 16);
      switch(*(*(v192 + 48) + v199))
      {
        case 1:
          v204 = v253;
          *(v291 + v253) = v201;
          v205 = v290;
          goto LABEL_174;
        case 2:
          v204 = v253;
          *(v253 + v289) = v201;
          v205 = v288;
          goto LABEL_174;
        case 3:
          v204 = v253;
          *(v253 + v287) = v201;
          v209 = &v300;
          goto LABEL_173;
        case 4:
          v204 = v253;
          *(v253 + v285) = v201;
          v209 = &v299;
          goto LABEL_173;
        case 5:
          v212 = v253;
          *(v253 + v189) = v201;
          *(v212 + v190) = v202;
          v176 = v198;
          continue;
        case 6:
          v204 = v253;
          *(v253 + v283) = v201;
          v209 = &v298;
          goto LABEL_173;
        case 7:
          v204 = v253;
          *(v253 + v281) = v201;
          v209 = &v297;
          goto LABEL_173;
        case 8:
          v204 = v253;
          *(v253 + v279) = v201;
          v209 = &v296;
LABEL_173:
          v205 = *(v209 - 32);
          goto LABEL_174;
        case 9:
          v211 = v253;
          *&v277[v253] = v201;
          *(v211 + v179) = v202;
          v176 = v198;
          continue;
        case 0xA:
          v214 = v253;
          *(v253 + v180) = v201;
          *(v214 + v181) = v202;
          v176 = v198;
          continue;
        case 0xB:
          v207 = v253;
          *(v253 + v21) = v201;
          *(v207 + v53) = v202;
          v208 = v203 * 1000.0;
          if ((*&v208 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_193;
          }

          if (v208 <= -9.22337204e18)
          {
            goto LABEL_194;
          }

          if (v208 >= 9.22337204e18)
          {
            goto LABEL_195;
          }

          *(v253 + v44) = v208;
          v176 = v198;
          break;
        case 0xC:
          v210 = v253;
          *(v253 + v183) = v201;
          *(v210 + v184) = v202;
          v176 = v198;
          continue;
        case 0xD:
          v213 = v253;
          *(v253 + v185) = v201;
          *(v213 + v186) = v202;
          v176 = v198;
          continue;
        case 0xE:
          v206 = v253;
          *(v253 + v187) = v201;
          *(v206 + v188) = v202;
          v176 = v198;
          continue;
        default:
          v204 = v253;
          *(v253 + v293) = v201;
          v205 = v292;
LABEL_174:
          *(v204 + v205) = v202;
          v176 = v198;
          continue;
      }
    }

    while (1)
    {
      v198 = v176 + 1;
      if (__OFADD__(v176, 1))
      {
        goto LABEL_182;
      }

      if (v198 >= v197)
      {

        swift_unknownObjectRelease();

        (*(v244 + 8))(v247, v245);

        v215 = v253;
        *(v253 + v191) = v56;
        *(v215 + v59) = v58;
        v216 = v251;
        outlined init with copy of DBSnapshotAnalytics.SnapshotEvent(v215, v251);
        (*(v250 + 56))(v216, 0, 1, v252);
        return outlined destroy of DBSnapshotAnalytics.SnapshotEvent(v215);
      }

      v196 = *(result + 8 * v198);
      ++v176;
      if (v196)
      {
        goto LABEL_152;
      }
    }
  }

  v218 = v59;
  v230 = 0;
  v231 = 0;
  v59 = 0;
  v233 = 0;
  v232 = 0;
  v61 = 0;
  v219 = 0;
  v220 = 0;
  v62 = 0;
  v222 = v58 & 0xC000000000000001;
  v217[1] = v58 + 32;
  v261 = (v21 + 16);
  v260 = (v21 + 56);
  v290 = v293 + 8;
  v291 = (v293 + 16);
  v259 = (v292 + 1);
  v258 = (v21 + 8);
  v282 = "com.apple.Moments.Snapshot";
  v269 = (v243 + 48);
  v254 = (v243 + 16);
  v255 = (v243 + 8);
  v235 = v242 + 56;
  v234 = v56 + 56;
  *&v57 = 136446210;
  v278 = v57;
  *&v57 = 136446978;
  v268 = v57;
  v63 = 0;
  v21 = v270;
  v221 = result;
  v237 = v56;
  while (1)
  {
    v274 = v63;
    if (!v222)
    {
      break;
    }

    v64 = v58;
    v65 = v62;
    v66 = MEMORY[0x21CE93180](v62, v64);
LABEL_24:
    v67 = __OFADD__(v65, 1);
    v58 = v65 + 1;
    v225 = v58;
    if (v67)
    {
      goto LABEL_188;
    }

    v56 = v66;
    v58 = v66;
    v68 = (*(*v66 + 1112))();
    if (v68)
    {
      v69 = v68;
      v224 = v58;
      v238 = v68;
      v229 = v68 & 0xFFFFFFFFFFFFFF8;
      if (v68 >> 62)
      {
        v70 = __CocoaSet.count.getter();
        v69 = v238;
        if (!v70)
        {
LABEL_115:
          v287 = 0;
          goto LABEL_116;
        }
      }

      else
      {
        v70 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v70)
        {
          goto LABEL_115;
        }
      }

      v287 = 0;
      v71 = 0;
      v239 = v69 & 0xC000000000000001;
      v223 = v69 + 32;
      v236 = v70;
      do
      {
        if (v239)
        {
          v72 = v71;
          v73 = MEMORY[0x21CE93180](v71, v69);
          v67 = __OFADD__(v72, 1);
          v58 = v72 + 1;
          if (v67)
          {
            goto LABEL_184;
          }
        }

        else
        {
          if (v71 >= *(v229 + 16))
          {
            goto LABEL_187;
          }

          v74 = v71;

          v67 = __OFADD__(v74, 1);
          v58 = v74 + 1;
          if (v67)
          {
            goto LABEL_184;
          }
        }

        v246 = v58;
        v58 = v73;
        v75 = *(v73 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations);
        if (v75)
        {
          v56 = v75;
        }

        else
        {
          v56 = MEMORY[0x277D84F90];
        }

        v265 = *(v56 + 16);
        if (v265)
        {
          v240 = v58;
          v264 = v56 + 32;

          v58 = 0;
          v262 = v56;
          while (1)
          {
            v273 = v58;
            v76 = *(v264 + 8 * v58);
            v295 = v76;
            v77 = specialized static DBAssetModelType.subscript.getter(&v295);
            swift_retain_n();

            v78 = *(v44 + 16);
            v79 = 0.0;
            LODWORD(v285) = v77;
            if (v78)
            {
              v80 = v77;
              v56 = v44;
              v81 = specialized __RawDictionaryStorage.find<A>(_:)(v80);
              if (v82)
              {
                v83 = (*(v44 + 56) + 24 * v81);
                v58 = *(v83 + 1);
                v79 = v83[2];
                v59 = *v83 + 1;
                if (__OFADD__(*v83, 1))
                {
                  goto LABEL_178;
                }
              }

              else
              {
                v58 = 0;
                v59 = 1;
              }
            }

            else
            {
              v58 = 0;
              v59 = 1;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v295 = v44;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v59, v58, v285, isUniquelyReferenced_nonNull_native, v79);
            v44 = v295;
            type metadata accessor for DBVideoModel();
            v85 = swift_dynamicCastClass();
            v293 = v76 & 0xFFFFFFFFFFFFFFFLL;
            if (v85)
            {
              v86 = *(*v85 + 456);

              v88 = COERCE_DOUBLE(v86(v87));
              if (v89)
              {
              }

              else
              {
                v90 = 0.0;
                if (*(v44 + 16))
                {
                  v91 = v88;
                  v92 = specialized __RawDictionaryStorage.find<A>(_:)(v285);
                  if (v93)
                  {
                    v94 = *(v44 + 56) + 24 * v92;
                    v96 = *v94;
                    v95 = *(v94 + 8);
                    v90 = *(v94 + 16);
                  }

                  else
                  {
                    v95 = 0;
                    v96 = 0;
                  }

                  v88 = v91;
                }

                else
                {
                  v95 = 0;
                  v96 = 0;
                }

                v97 = v90 + v88;
                v98 = swift_isUniquelyReferenced_nonNull_native();
                v295 = v44;
                specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v96, v95, v285, v98, v97);

                v44 = v295;
              }
            }

            v99 = v263;
            v295 = MEMORY[0x277D84FA0];

            specialized Set.formUnion<A>(_:)(v100);

            v102 = v274;
            specialized Sequence.forEach(_:)(v101);

            v272 = v217;
            MEMORY[0x28223BE20](v103);
            v217[-2] = &v295;
            v294[4] = type metadata accessor for DBAssetData();
            v104 = v275;
            Predicate.init(_:)();
            v105 = v267;
            v106 = v276;
            (*v261)(v267, v104, v276);
            (*v260)(v105, 0, 1, v106);
            v58 = lazy protocol witness table accessor for type DBSnapshot and conformance DBSnapshot(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
            FetchDescriptor.init(predicate:sortBy:)();
            v56 = v99;
            v107 = dispatch thunk of ModelContext.fetch<A>(_:)();
            if (v102)
            {

              v59 = v257;
              if (one-time initialization token for Log != -1)
              {
                swift_once();
              }

              v274 = 0;
              v108 = __swift_project_value_buffer(v60, static DBSnapshotAnalytics.Log);
              swift_beginAccess();
              (*v291)(v59, v108, v60);
              v109 = Logger.logObject.getter();
              v110 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v109, v110))
              {
                v59 = swift_slowAlloc();
                v111 = swift_slowAlloc();
                v294[0] = v111;
                *v59 = v278;
                *(v59 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, v282 | 0x8000000000000000, v294);
                _os_log_impl(&dword_21607C000, v109, v110, "DBWriter.%{public}s Asset analytics fetch failed", v59, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v111);
                MEMORY[0x21CE94770](v111, -1, -1);
                MEMORY[0x21CE94770](v59, -1, -1);

                (*v290)(v257, v60);
              }

              else
              {

                (*v290)(v59, v60);
              }
            }

            else
            {
              v274 = 0;
              v59 = v107;
              if (v107 >> 62)
              {
                v112 = __CocoaSet.count.getter();
                if (v112)
                {
LABEL_66:
                  if (v112 < 1)
                  {
                    goto LABEL_183;
                  }

                  v113 = 0;
                  v289 = v59 & 0xC000000000000001;
                  v284 = v59;
                  v288 = v112;
                  while (2)
                  {
                    if (v289)
                    {
                      v114 = MEMORY[0x21CE93180](v113, v59);
                    }

                    else
                    {
                      v114 = *(v59 + 8 * v113 + 32);
                    }

                    v56 = v114;
                    v115 = (*(*v114 + 424))();
                    if (v116 >> 60 == 15)
                    {
                      if (one-time initialization token for Log != -1)
                      {
                        swift_once();
                      }

                      v117 = __swift_project_value_buffer(v60, static DBSnapshotAnalytics.Log);
                      swift_beginAccess();
                      (*v291)(v53, v117, v60);
                      v58 = Logger.logObject.getter();
                      v118 = static os_log_type_t.error.getter();
                      if (os_log_type_enabled(v58, v118))
                      {
                        v119 = swift_slowAlloc();
                        v120 = swift_slowAlloc();
                        v294[0] = v120;
                        *v119 = v278;
                        *(v119 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, v282 | 0x8000000000000000, v294);
                        _os_log_impl(&dword_21607C000, v58, v118, "DBWriter.%{public}s Faulting asset data failed: no data", v119, 0xCu);
                        __swift_destroy_boxed_opaque_existential_1(v120);
                        MEMORY[0x21CE94770](v120, -1, -1);
                        v121 = v119;
                        v59 = v284;
                        MEMORY[0x21CE94770](v121, -1, -1);
                      }

                      else
                      {
                      }

                      (*v290)(v53, v60);
LABEL_70:
                      if (v288 == ++v113)
                      {
                        goto LABEL_108;
                      }

                      continue;
                    }

                    break;
                  }

                  v122 = v116;
                  v123 = v116 >> 62;
                  v286 = v115;
                  if ((v116 >> 62) > 1)
                  {
                    v53 = v285;
                    if (v123 == 2)
                    {
                      v126 = *(v115 + 16);
                      v125 = *(v115 + 24);
                      v67 = __OFSUB__(v125, v126);
                      v124 = (v125 - v126);
                      if (v67)
                      {
                        goto LABEL_181;
                      }

                      goto LABEL_89;
                    }

                    v292 = 0;
                  }

                  else
                  {
                    v53 = v285;
                    if (v123)
                    {
                      LODWORD(v124) = HIDWORD(v115) - v115;
                      if (__OFSUB__(HIDWORD(v115), v115))
                      {
                        goto LABEL_180;
                      }

                      v124 = v124;
                    }

                    else
                    {
                      v124 = BYTE6(v116);
                    }

LABEL_89:
                    v292 = v124;
                  }

                  if (one-time initialization token for Log != -1)
                  {
                    swift_once();
                  }

                  v127 = __swift_project_value_buffer(v60, static DBSnapshotAnalytics.Log);
                  swift_beginAccess();
                  v128 = v283;
                  (*v291)(v283, v127, v60);

                  v129 = Logger.logObject.getter();
                  v56 = v60;
                  v130 = static os_log_type_t.debug.getter();

                  if (os_log_type_enabled(v129, v130))
                  {
                    v280 = v44;
                    v131 = swift_slowAlloc();
                    v132 = swift_slowAlloc();
                    v294[0] = v132;
                    *v131 = v268;
                    *(v131 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, v282 | 0x8000000000000000, v294);
                    *(v131 + 12) = 2048;
                    *(v131 + 14) = v292;
                    *(v131 + 22) = 2080;
                    (*(*v114 + 192))();
                    v133 = v279;
                    if ((*v269)(v21, 1, v279))
                    {
                      outlined destroy of UUID?(v21);
                      v134 = 0xE300000000000000;
                      v135 = 7104878;
                    }

                    else
                    {
                      v136 = v256;
                      (*v254)(v256, v21, v133);
                      outlined destroy of UUID?(v21);
                      v135 = UUID.uuidString.getter();
                      v134 = v137;
                      v138 = v136;
                      v53 = v285;
                      (*v255)(v138, v279);
                    }

                    v139 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v135, v134, v294);

                    *(v131 + 24) = v139;
                    *(v131 + 32) = 2080;
                    v140 = DBAssetModelEnum.rawValue.getter(v53);
                    v56 = v141;
                    v142 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v140, v141, v294);

                    *(v131 + 34) = v142;
                    _os_log_impl(&dword_21607C000, v129, v130, "DBWriter.%{public}s AssetData size: %ld bytes (%s, %s)", v131, 0x2Au);
                    swift_arrayDestroy();
                    MEMORY[0x21CE94770](v132, -1, -1);
                    MEMORY[0x21CE94770](v131, -1, -1);

                    v60 = v271;
                    (*v290)(v283, v271);
                    v44 = v280;
                    v21 = v270;
                  }

                  else
                  {

                    (*v290)(v128, v56);
                    v60 = v56;
                  }

                  v143 = *(v44 + 16);
                  v144 = 0.0;
                  if (v143)
                  {
                    v56 = v44;
                    v145 = specialized __RawDictionaryStorage.find<A>(_:)(v53);
                    if (v146)
                    {
                      v147 = (*(v44 + 56) + 24 * v145);
                      v58 = *v147;
                      v143 = v147[1];
                      v144 = *(v147 + 2);
LABEL_103:
                      v59 = v292 + v143;
                      if (__OFADD__(v143, v292))
                      {
                        __break(1u);
LABEL_177:
                        __break(1u);
LABEL_178:
                        __break(1u);
LABEL_179:
                        __break(1u);
LABEL_180:
                        __break(1u);
LABEL_181:
                        __break(1u);
LABEL_182:
                        __break(1u);
LABEL_183:
                        __break(1u);
LABEL_184:
                        __break(1u);
LABEL_185:
                        __break(1u);
LABEL_186:
                        __break(1u);
LABEL_187:
                        __break(1u);
LABEL_188:
                        __break(1u);
LABEL_189:
                        result = __CocoaSet.count.getter();
                        goto LABEL_18;
                      }

                      v67 = __OFADD__(v287, v292);
                      v287 += v292;
                      if (v67)
                      {
                        goto LABEL_177;
                      }

                      v148 = swift_isUniquelyReferenced_nonNull_native();
                      v294[0] = v44;
                      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v58, v59, v53, v148, v144);
                      outlined consume of Data?(v286, v122);

                      v44 = v294[0];
                      v53 = v281;
                      v59 = v284;
                      goto LABEL_70;
                    }

                    v143 = 0;
                  }

                  v58 = 0;
                  goto LABEL_103;
                }
              }

              else
              {
                v112 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v112)
                {
                  goto LABEL_66;
                }
              }

LABEL_108:
            }

            (*v259)(v277, v266);
            (*v258)(v275, v276);
            v56 = v262;
            v58 = v273 + 1;

            if (v58 == v265)
            {

              goto LABEL_30;
            }

            if (v58 >= *(v56 + 16))
            {
              goto LABEL_179;
            }
          }
        }

LABEL_30:
        v71 = v246;
        v69 = v238;
      }

      while (v246 != v236);
LABEL_116:

      v61 = v220 + 1;
      if (__OFADD__(v220, 1))
      {
        goto LABEL_191;
      }

      v149 = v248;
      if (__OFADD__(v219, v287))
      {
        goto LABEL_192;
      }

      v293 = v219 + v287;
      v150 = (*v224 + 296);
      v151 = *v150;
      v152 = v150;
      (*v150)(result);
      if (*(v242 + 16))
      {
        v292 = v152;
        v153 = v242;
        lazy protocol witness table accessor for type DBSnapshot and conformance DBSnapshot(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        v154 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v155 = -1 << *(v153 + 32);
        v156 = v154 & ~v155;
        if ((*(v235 + ((v156 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v156))
        {
          v289 = v151;
          v280 = v44;
          v157 = ~v155;
          v158 = *(v243 + 72);
          v159 = *(v243 + 16);
          v160 = v279;
          while (1)
          {
            v161 = v256;
            v159(v256, *(v242 + 48) + v158 * v156, v160);
            lazy protocol witness table accessor for type DBSnapshot and conformance DBSnapshot(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
            v162 = dispatch thunk of static Equatable.== infix(_:_:)();
            v160 = v279;
            v163 = v162;
            v164 = *v255;
            (*v255)(v161, v279);
            if (v163)
            {
              break;
            }

            v156 = (v156 + 1) & v157;
            if (((*(v235 + ((v156 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v156) & 1) == 0)
            {
              v44 = v280;
              v149 = v248;
              v151 = v289;
              goto LABEL_126;
            }
          }

          result = (v164)(v248, v160);
          v44 = v280;
          if (__OFADD__(v232, 1))
          {
            goto LABEL_196;
          }

          ++v232;
          v67 = __OFADD__(v231, v287);
          v231 += v287;
          v151 = v289;
          if (v67)
          {
            goto LABEL_198;
          }
        }

        else
        {
          v164 = *v255;
          v160 = v279;
LABEL_126:
          result = (v164)(v149, v160);
        }
      }

      else
      {
        v164 = *v255;
        result = (*v255)(v149, v279);
      }

      v151(result);
      v165 = v237;
      if (!*(v237 + 16) || (lazy protocol witness table accessor for type DBSnapshot and conformance DBSnapshot(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]), v166 = dispatch thunk of Hashable._rawHashValue(seed:)(), v167 = -1 << *(v165 + 32), v168 = v166 & ~v167, ((*(v234 + ((v168 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v168) & 1) == 0))
      {
        v172 = v279;
LABEL_136:

        result = (v164)(v249, v172);
        v59 = v293;
        v219 = v293;
        v220 = v61;
        v21 = v270;
        v60 = v271;
        v53 = v281;
        goto LABEL_137;
      }

      v169 = ~v167;
      v170 = *(v243 + 72);
      v171 = *(v243 + 16);
      v172 = v279;
      while (1)
      {
        v173 = v256;
        v171(v256, *(v237 + 48) + v170 * v168, v172);
        lazy protocol witness table accessor for type DBSnapshot and conformance DBSnapshot(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        v174 = dispatch thunk of static Equatable.== infix(_:_:)();
        v172 = v279;
        v175 = v174;
        v164(v173, v279);
        if (v175)
        {
          break;
        }

        v168 = (v168 + 1) & v169;
        if (((*(v234 + ((v168 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v168) & 1) == 0)
        {
          goto LABEL_136;
        }
      }

      result = (v164)(v249, v172);
      v67 = __OFADD__(v233++, 1);
      if (v67)
      {
        goto LABEL_197;
      }

      v67 = __OFADD__(v230, v287);
      v230 += v287;
      v21 = v270;
      v60 = v271;
      v53 = v281;
      v63 = v274;
      v58 = v241;
      v56 = v237;
      v62 = v225;
      v59 = v293;
      if (v67)
      {
        goto LABEL_199;
      }

      v219 = v293;
      v220 = v61;
      if (v225 == v221)
      {
        goto LABEL_144;
      }
    }

    else
    {

LABEL_137:
      v63 = v274;
      v58 = v241;
      v56 = v237;
      v62 = v225;
      if (v225 == v221)
      {
        goto LABEL_144;
      }
    }
  }

  if (v62 < *(v218 + 16))
  {
    v65 = v62;

    goto LABEL_24;
  }

  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
  return result;
}

uint64_t specialized Set.formUnion<A>(_:)(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v23 - v8;
  result = MEMORY[0x28223BE20](v7);
  v12 = v23 - v11;
  v13 = 0;
  v24 = a1;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[1] = v3 + 32;
  v23[2] = v3 + 16;
  v23[0] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v12, *(v24 + 56) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      (*(v3 + 32))(v6, v12, v2);
      specialized Set._Variant.insert(_:)(v9, v6);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void specialized Set.formUnion<A>(_:)(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID);
    lazy protocol witness table accessor for type CKRecordZoneID and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_19:
      outlined consume of Set<CKRecordZoneID>.Iterator._Variant(v1, v2, v3, v4, v5);
      return;
    }

    while (1)
    {
      specialized Set._Variant.insert(_:)(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_19;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      v5 = 0;
      goto LABEL_19;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t closure #13 in DBSnapshotAnalytics.SnapshotEvent.init(snapshot:reason:processingTime:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v23 = a1;
  v26 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd);
  v3 = *(v2 - 8);
  v27 = v2;
  v28 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMd);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA4UUIDVSgGMd);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA4UUIDVSgGAoC16SequenceContainsVy_AC5ValueVy_ShyAOGGAIy_AOGGSbGMd);
  v15 = *(v14 - 8);
  v24 = v14;
  v25 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v23 - v16;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBAssetData> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v7 + 8))(v9, v6);
  v29 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_ShyAA4UUIDVGGAC8VariableVy_AIGGMd);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, UUID?> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA4UUIDVSgGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<UUID>>, PredicateExpressions.Variable<UUID>> and conformance PredicateExpressions.SequenceContains<A, B>, &_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_ShyAA4UUIDVGGAC8VariableVy_AIGGMd);
  static PredicateExpressions.build_flatMap<A, B, C, D>(_:_:)();
  (*(v11 + 8))(v13, v10);
  v30 = 0;
  static PredicateExpressions.build_Arg<A>(_:)();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA4UUIDVSgGAqC16SequenceContainsVy_AC5ValueVy_ShyAQGGAKy_AQGGSbGAWy_SbGGMd);
  v19 = v26;
  v26[3] = v18;
  v19[4] = lazy protocol witness table accessor for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, UUID?>, UUID, PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<UUID>>, PredicateExpressions.Variable<UUID>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>();
  __swift_allocate_boxed_opaque_existential_1(v19);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, UUID?>, UUID, PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<UUID>>, PredicateExpressions.Variable<UUID>>, Bool> and conformance PredicateExpressions.OptionalFlatMap<A, B, C, D>, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA4UUIDVSgGAoC16SequenceContainsVy_AC5ValueVy_ShyAOGGAIy_AOGGSbGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd);
  v20 = v24;
  v21 = v27;
  static PredicateExpressions.build_NilCoalesce<A, B>(lhs:rhs:)();
  (*(v28 + 8))(v5, v21);
  return (*(v25 + 8))(v17, v20);
}

uint64_t closure #1 in closure #13 in DBSnapshotAnalytics.SnapshotEvent.init(snapshot:reason:processingTime:)@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v12[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_AA4UUIDVGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_ShyAA4UUIDVGGMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  v12[1] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy10Foundation4UUIDVGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<UUID> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_AA4UUIDVGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Set<UUID>> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_ShyAA4UUIDVGGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Set<UUID> and conformance Set<A>, &_sShy10Foundation4UUIDVGMd);
  lazy protocol witness table accessor for type DBSnapshot and conformance DBSnapshot(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  static PredicateExpressions.build_contains<A, B>(_:_:)();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

Swift::Void __swiftcall DBSnapshotAnalytics.SnapshotEvent.send()()
{
  v1 = v0;
  v20 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2165960C0;
  *(v2 + 32) = 0x746F687370616E73;
  *(v2 + 40) = 0xEA00000000004449;
  v3 = UUID.uuidString.getter();
  v5 = v4;
  v6 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v7 = MEMORY[0x21CE91FC0](v3, v5);

  v8 = [v6 initWithString_];

  *(v2 + 48) = v8;
  strcpy((v2 + 56), "numSuggestions");
  *(v2 + 71) = -18;
  v9 = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  *(v2 + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v2 + 80) = 0xD00000000000001ALL;
  *(v2 + 88) = 0x8000000216576190;
  *(v2 + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v2 + 104) = 0xD000000000000015;
  *(v2 + 112) = 0x80000002165761B0;
  *(v2 + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v2 + 128) = 0x67677553657A6973;
  *(v2 + 136) = 0xEF736E6F69747365;
  *(v2 + 144) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v2 + 152) = 0xD00000000000001BLL;
  *(v2 + 160) = 0x80000002165761E0;
  *(v2 + 168) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v2 + 176) = 0xD000000000000016;
  *(v2 + 184) = 0x8000000216576200;
  *(v2 + 192) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v2 + 200) = 0x74657373416D756ELL;
  *(v2 + 208) = 0xE900000000000073;
  *(v2 + 216) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v2 + 224) = 0xD000000000000011;
  *(v2 + 232) = 0x8000000216575DB0;
  *(v2 + 240) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v2 + 248) = 0xD000000000000013;
  *(v2 + 256) = 0x8000000216575DD0;
  *(v2 + 264) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  strcpy((v2 + 272), "numAssets_Map");
  *(v2 + 286) = -4864;
  *(v2 + 288) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v2 + 296) = 0xD000000000000012;
  *(v2 + 304) = 0x8000000216575E00;
  *(v2 + 312) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v2 + 320) = 0xD000000000000019;
  *(v2 + 328) = 0x8000000216575E20;
  *(v2 + 336) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v2 + 344) = 0xD000000000000019;
  *(v2 + 352) = 0x8000000216575E40;
  *(v2 + 360) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v2 + 368) = 0xD000000000000018;
  *(v2 + 376) = 0x8000000216575E60;
  *(v2 + 384) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v2 + 392) = 0x74657373416D756ELL;
  *(v2 + 400) = 0xEF6F746F68505F73;
  *(v2 + 408) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v2 + 416) = 0xD000000000000014;
  *(v2 + 424) = 0x8000000216575E90;
  *(v2 + 432) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v2 + 440) = 0xD000000000000010;
  *(v2 + 448) = 0x8000000216575EB0;
  *(v2 + 456) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v2 + 464) = 0x74657373416D756ELL;
  *(v2 + 472) = 0xEF6574756F525F73;
  *(v2 + 480) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v2 + 488) = 0xD000000000000015;
  *(v2 + 496) = 0x8000000216575EE0;
  *(v2 + 504) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v2 + 512) = 0x74657373416D756ELL;
  *(v2 + 520) = 0xEF6F656469565F73;
  *(v2 + 528) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v2 + 536) = 0xD000000000000011;
  *(v2 + 544) = 0x8000000216575F10;
  *(v2 + 552) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v2 + 560) = 0xD000000000000016;
  *(v2 + 568) = 0x8000000216575F30;
  *(v2 + 576) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v2 + 584) = 0xD000000000000011;
  *(v2 + 592) = 0x8000000216575F50;
  *(v2 + 600) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v2 + 608) = 0x65737341657A6973;
  *(v2 + 616) = 0xEA00000000007374;
  *(v2 + 624) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v2 + 632) = 0xD000000000000012;
  *(v2 + 640) = 0x8000000216575F70;
  *(v2 + 648) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v2 + 656) = 0xD000000000000014;
  *(v2 + 664) = 0x8000000216575F90;
  *(v2 + 672) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  strcpy((v2 + 680), "sizeAssets_Map");
  *(v2 + 695) = -18;
  *(v2 + 696) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v2 + 704) = 0xD000000000000013;
  *(v2 + 712) = 0x8000000216575FC0;
  *(v2 + 720) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v2 + 728) = 0xD00000000000001ALL;
  *(v2 + 736) = 0x8000000216575FE0;
  *(v2 + 744) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v2 + 752) = 0xD00000000000001ALL;
  *(v2 + 760) = 0x8000000216576000;
  *(v2 + 768) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v2 + 776) = 0xD000000000000019;
  *(v2 + 784) = 0x8000000216576020;
  *(v2 + 792) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v2 + 800) = 0xD000000000000010;
  *(v2 + 808) = 0x8000000216576040;
  *(v2 + 816) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v2 + 824) = 0xD000000000000015;
  *(v2 + 832) = 0x8000000216576060;
  *(v2 + 840) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v2 + 848) = 0xD000000000000011;
  *(v2 + 856) = 0x8000000216576080;
  *(v2 + 864) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v2 + 872) = 0xD000000000000010;
  *(v2 + 880) = 0x80000002165760A0;
  *(v2 + 888) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v2 + 896) = 0xD000000000000016;
  *(v2 + 904) = 0x80000002165760C0;
  *(v2 + 912) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v2 + 920) = 0xD000000000000010;
  *(v2 + 928) = 0x80000002165760E0;
  *(v2 + 936) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v2 + 944) = 0xD000000000000012;
  *(v2 + 952) = 0x8000000216576100;
  *(v2 + 960) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v2 + 968) = 0xD000000000000017;
  *(v2 + 976) = 0x8000000216576120;
  *(v2 + 984) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v2 + 992) = 0xD000000000000012;
  *(v2 + 1000) = 0x8000000216576140;
  *(v2 + 1008) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v2 + 1016) = 0xD000000000000014;
  *(v2 + 1024) = 0x8000000216576160;
  *(v2 + 1032) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v20 + 16) = v10;
  v11 = v1 + v9[13];
  if (*(v11 + 8))
  {
LABEL_6:
    v15 = *(v1 + v9[14]);
    if (v15 > 3)
    {
      if (v15 > 5)
      {
        if (v15 != 6)
        {
LABEL_20:
          v18 = MEMORY[0x21CE91FC0](0xD00000000000001ALL, 0x800000021657C1F0);
          aBlock[4] = partial apply for closure #1 in DBSnapshotAnalytics.SnapshotEvent.send();
          aBlock[5] = v20;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
          aBlock[3] = &block_descriptor_12;
          v19 = _Block_copy(aBlock);

          AnalyticsSendEventLazy();
          _Block_release(v19);

          return;
        }

        v15 = 100;
      }

      else if (v15 == 4)
      {
        v15 = 4;
      }

      else
      {
        v15 = 5;
      }
    }

    else if (v15 > 1)
    {
      if (v15 == 2)
      {
        v15 = 2;
      }

      else
      {
        v15 = 3;
      }
    }

    else if (v15)
    {
      v15 = 1;
    }

    v16 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v10;
    *(v20 + 16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, 0x6E6F73616572, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    *(v20 + 16) = aBlock[0];
    goto LABEL_20;
  }

  v12 = *v11 * 1000.0;
  if (COERCE__INT64(fabs(v12)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v12 < 9.22337204e18)
  {
    v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
    v14 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v10;
    *(v20 + 16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, 0xD000000000000016, 0x8000000216576230, v14);
    v10 = aBlock[0];
    *(v20 + 16) = aBlock[0];
    goto LABEL_6;
  }

LABEL_23:
  __break(1u);
}

uint64_t DBSnapshotAnalytics.SnapshotEvent.description.getter()
{
  _StringGuts.grow(_:)(188);
  MEMORY[0x21CE92100](0x746F687370616E73, 0xEC000000203A4449);
  v0 = UUID.uuidString.getter();
  MEMORY[0x21CE92100](v0);

  MEMORY[0x21CE92100](0x6F6974616572630ALL, 0xEF203A657461446ELL);
  type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  type metadata accessor for Date();
  lazy protocol witness table accessor for type DBSnapshot and conformance DBSnapshot(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v1);

  MEMORY[0x21CE92100](0xD000000000000016, 0x800000021657C240);
  Double.write<A>(to:)();
  MEMORY[0x21CE92100](0x3A6E6F736165720ALL, 0xE900000000000020);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x21CE92100](0xD000000000000011, 0x800000021657C260);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v2);

  MEMORY[0x21CE92100](0xD000000000000011, 0x800000021657C280);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v3);

  MEMORY[0x21CE92100](0x656365526D756E0ALL, 0xEC000000203A746ELL);
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v4);

  MEMORY[0x21CE92100](0xD000000000000012, 0x800000021657C2A0);
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v5);

  MEMORY[0x21CE92100](0xD000000000000012, 0x800000021657C2C0);
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v6);

  MEMORY[0x21CE92100](0x636552657A69730ALL, 0xED0000203A746E65);
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v7);

  MEMORY[0x21CE92100](0x745374657373610ALL, 0xED0000203A737461);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6models_Si5bytesSd8durationtMd);
  lazy protocol witness table accessor for type DBAssetModelEnum and conformance DBAssetModelEnum();
  v8 = Dictionary.description.getter();
  MEMORY[0x21CE92100](v8);

  return 0;
}

uint64_t specialized Set.formUnion<A>(_:)(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      specialized Set._Variant.insert(_:)(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t specialized DBSnapshotAnalytics.SnapshotEvent.EventFields.init(rawValue:)()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x2C)
  {
    return 44;
  }

  else
  {
    return v0;
  }
}

uint64_t type metadata accessor for DBSnapshotAnalytics.SnapshotEvent()
{
  result = type metadata singleton initialization cache for DBSnapshotAnalytics.SnapshotEvent;
  if (!type metadata singleton initialization cache for DBSnapshotAnalytics.SnapshotEvent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of DBSnapshotAnalytics.SnapshotEvent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DBSnapshotAnalytics.SnapshotEvent(uint64_t a1)
{
  v2 = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type DBSnapshot and conformance DBSnapshot(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in DBSnapshotAnalytics.SnapshotEvent.send()()
{
  specialized closure #1 in DBSnapshotAnalytics.SnapshotEvent.send()(v0);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type DBSnapshotAnalytics.SnapshotEvent.Reason and conformance DBSnapshotAnalytics.SnapshotEvent.Reason()
{
  result = lazy protocol witness table cache variable for type DBSnapshotAnalytics.SnapshotEvent.Reason and conformance DBSnapshotAnalytics.SnapshotEvent.Reason;
  if (!lazy protocol witness table cache variable for type DBSnapshotAnalytics.SnapshotEvent.Reason and conformance DBSnapshotAnalytics.SnapshotEvent.Reason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBSnapshotAnalytics.SnapshotEvent.Reason and conformance DBSnapshotAnalytics.SnapshotEvent.Reason);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBSnapshotAnalytics.SnapshotEvent.EventFields and conformance DBSnapshotAnalytics.SnapshotEvent.EventFields()
{
  result = lazy protocol witness table cache variable for type DBSnapshotAnalytics.SnapshotEvent.EventFields and conformance DBSnapshotAnalytics.SnapshotEvent.EventFields;
  if (!lazy protocol witness table cache variable for type DBSnapshotAnalytics.SnapshotEvent.EventFields and conformance DBSnapshotAnalytics.SnapshotEvent.EventFields)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBSnapshotAnalytics.SnapshotEvent.EventFields and conformance DBSnapshotAnalytics.SnapshotEvent.EventFields);
  }

  return result;
}

void type metadata completion function for DBSnapshotAnalytics.SnapshotEvent()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      type metadata accessor for [DBAssetModelEnum : (models: Int, bytes: Int, duration: Double)]();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Double?(319, &lazy cache variable for type metadata for DBSnapshotAnalytics.SnapshotEvent.Reason?);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for Double?(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for DBSnapshotAnalytics.SnapshotEvent.Reason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DBSnapshotAnalytics.SnapshotEvent.Reason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DBSnapshotAnalytics.SnapshotEvent.EventFields(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD5)
  {
    goto LABEL_17;
  }

  if (a2 + 43 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 43) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 43;
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

      return (*a1 | (v4 << 8)) - 43;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 43;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2C;
  v8 = v6 - 44;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DBSnapshotAnalytics.SnapshotEvent.EventFields(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 43 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 43) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD5)
  {
    v4 = 0;
  }

  if (a2 > 0xD4)
  {
    v5 = ((a2 - 213) >> 8) + 1;
    *result = a2 + 43;
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
    *result = a2 + 43;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CKRecordZoneID and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type CKRecordZoneID and conformance NSObject;
  if (!lazy protocol witness table cache variable for type CKRecordZoneID and conformance NSObject)
  {
    type metadata accessor for NSAttributedString(255, &lazy cache variable for type metadata for CKRecordZoneID);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CKRecordZoneID and conformance NSObject);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CKRecordZoneID and conformance NSObject;
  if (!lazy protocol witness table cache variable for type CKRecordZoneID and conformance NSObject)
  {
    type metadata accessor for NSAttributedString(255, &lazy cache variable for type metadata for CKRecordZoneID);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CKRecordZoneID and conformance NSObject);
  }

  return result;
}

uint64_t specialized closure #1 in DBSnapshotAnalytics.SnapshotEvent.send()(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, static DBSnapshotAnalytics.Log);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17[0] = v16;
    *v9 = 136315138;
    swift_beginAccess();
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSObject);

    v10 = Dictionary.debugDescription.getter();
    v12 = v11;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, v17);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_21607C000, v7, v8, "[DBSnapshotAnalytics] Submitted analytics message: %s", v9, 0xCu);
    v14 = v16;
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x21CE94770](v14, -1, -1);
    MEMORY[0x21CE94770](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  return *(a1 + 16);
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, UUID?>, UUID, PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<UUID>>, PredicateExpressions.Variable<UUID>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, UUID?>, UUID, PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<UUID>>, PredicateExpressions.Variable<UUID>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, UUID?>, UUID, PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<UUID>>, PredicateExpressions.Variable<UUID>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA4UUIDVSgGAqC16SequenceContainsVy_AC5ValueVy_ShyAQGGAKy_AQGGSbGAWy_SbGGMd);
    lazy protocol witness table accessor for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, UUID?>, UUID, PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<UUID>>, PredicateExpressions.Variable<UUID>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>();
    lazy protocol witness table accessor for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, UUID?>, UUID, PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<UUID>>, PredicateExpressions.Variable<UUID>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, UUID?>, UUID, PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<UUID>>, PredicateExpressions.Variable<UUID>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, UUID?>, UUID, PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<UUID>>, PredicateExpressions.Variable<UUID>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, UUID?>, UUID, PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<UUID>>, PredicateExpressions.Variable<UUID>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA4UUIDVSgGAoC16SequenceContainsVy_AC5ValueVy_ShyAOGGAIy_AOGGSbGMd);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, UUID?> and conformance <> PredicateExpressions.KeyPath<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<UUID>>, PredicateExpressions.Variable<UUID>> and conformance <> PredicateExpressions.SequenceContains<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, UUID?>, UUID, PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<UUID>>, PredicateExpressions.Variable<UUID>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, UUID?> and conformance <> PredicateExpressions.KeyPath<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, UUID?> and conformance <> PredicateExpressions.KeyPath<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, UUID?> and conformance <> PredicateExpressions.KeyPath<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA4UUIDVSgGMd);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBAssetData> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, UUID?> and conformance <> PredicateExpressions.KeyPath<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<UUID>>, PredicateExpressions.Variable<UUID>> and conformance <> PredicateExpressions.SequenceContains<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<UUID>>, PredicateExpressions.Variable<UUID>> and conformance <> PredicateExpressions.SequenceContains<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<UUID>>, PredicateExpressions.Variable<UUID>> and conformance <> PredicateExpressions.SequenceContains<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_ShyAA4UUIDVGGAC8VariableVy_AIGGMd);
    lazy protocol witness table accessor for type PredicateExpressions.Value<Set<UUID>> and conformance <A> PredicateExpressions.Value<A>();
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<UUID> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_AA4UUIDVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<UUID>>, PredicateExpressions.Variable<UUID>> and conformance <> PredicateExpressions.SequenceContains<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<Set<UUID>> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<Set<UUID>> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<Set<UUID>> and conformance <A> PredicateExpressions.Value<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5ValueVy_ShyAA4UUIDVGGMd);
    lazy protocol witness table accessor for type Set<UUID> and conformance <> Set<A>(&lazy protocol witness table cache variable for type Set<UUID> and conformance <> Set<A>, &lazy protocol witness table cache variable for type UUID and conformance UUID);
    lazy protocol witness table accessor for type Set<UUID> and conformance <> Set<A>(&lazy protocol witness table cache variable for type Set<UUID> and conformance <> Set<A>, &lazy protocol witness table cache variable for type UUID and conformance UUID);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<Set<UUID>> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Set<UUID> and conformance <> Set<A>(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShy10Foundation4UUIDVGMd);
    lazy protocol witness table accessor for type DBSnapshot and conformance DBSnapshot(a2, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

uint64_t closure #1 in variable initialization expression of static MosaicCollectionViewCell.registration(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x190);

  return v1(v2);
}

uint64_t static MosaicCollectionViewCell.registration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI016MosaicCollectionbD0CAF0h10SuggestionB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static MosaicCollectionViewCell.registration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t MosaicCollectionViewCell.viewModel.didset()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v52 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v52 - v7;
  v9 = type metadata accessor for Client();
  MEMORY[0x28223BE20](v9);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v57 = ObjectType;
    v58 = v5;
    v14 = MEMORY[0x277D85000];
    v15 = (*((*MEMORY[0x277D85000] & *v1) + 0x68))();
    v16 = *v13;
    v55 = *(*v13 + 424);
    v56 = v16 + 424;
    v17 = v55();
    v18 = MEMORY[0x21CE91FC0](v17);

    [v15 setText_];

    v19 = (*((*v14 & *v1) + 0x80))();
    v20 = *v13;
    v53 = *(*v13 + 432);
    v54 = v20 + 432;
    v21 = v53();
    v22 = MEMORY[0x21CE91FC0](v21);

    [v19 setText_];

    v23 = (*((*v14 & *v1) + 0x1C8))();
    (*((*v14 & *v1) + 0x1D0))(v23);
    v24 = *(*v13 + 280);

    v24(v25);
    v26 = &v11[*(v9 + 32)];
    v27 = *(v26 + 1);
    if (v27)
    {
      if (*v26 == 0xD000000000000011 && v27 == 0x8000000216578900)
      {
        v28 = 0;
      }

      else
      {
        v28 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
      }
    }

    else
    {
      v28 = 1;
    }

    outlined destroy of Client(v11, type metadata accessor for Client);
    v29 = *(v1 + OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_photoMemoryBanner);
    v30 = *((*v14 & *v29) + 0x70);
    v31 = v29;
    v30(v28 & 1);

    v32 = *(v13 + OBJC_IVAR____TtC9MomentsUI25MosaicSuggestionViewModel_isFullWidth);
    v33 = *(*v13 + 304);
    v34 = *(v1 + OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_assetGridView);
    v35 = v33();
    if (v35)
    {
      v36 = v35;
    }

    else
    {
      v36 = MEMORY[0x277D84F90];
    }

    LOBYTE(v59) = v32;
    (*(*v13 + 184))();

    (*((*v14 & *v34) + 0x140))(v36, &v59, v8);

    v37 = outlined destroy of UUID?(v8);
    v59 = (v55)(v37);
    v60 = v38;
    v39 = MEMORY[0x21CE92100](8236, 0xE200000000000000);
    v40 = (v53)(v39);
    MEMORY[0x21CE92100](v40);

    v41 = MEMORY[0x21CE91FC0](v59, v60);

    [v1 setAccessibilityLabel_];

    v42 = *(v1 + OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_journalButton);
    v43 = swift_allocObject();
    v44 = v57;
    *(v43 + 16) = v13;
    *(v43 + 24) = v44;
    v45 = *((*v14 & *v42) + 0x68);

    v46 = v42;
    v45(partial apply for closure #1 in MosaicCollectionViewCell.viewModel.didset, v43);

    v47 = type metadata accessor for TaskPriority();
    v48 = v58;
    (*(*(v47 - 8) + 56))(v58, 1, 1, v47);
    type metadata accessor for MainActor();

    v49 = static MainActor.shared.getter();
    v50 = swift_allocObject();
    v51 = MEMORY[0x277D85700];
    v50[2] = v49;
    v50[3] = v51;
    v50[4] = v13;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v48, &async function pointer to partial apply for closure #2 in MosaicCollectionViewCell.viewModel.didset, v50);
  }

  return result;
}

void closure #1 in MosaicCollectionViewCell.viewModel.didset(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Client();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v35[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v10 = &v35[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v35[-v12];
  if (one-time initialization token for interstitial != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v38 = __swift_project_value_buffer(v14, static CommonLogger.interstitial);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_21607C000, v15, v16, "[JournalButton] BEGIN", v17, 2u);
    MEMORY[0x21CE94770](v17, -1, -1);
  }

  if ((static MosaicCollectionViewCell.selectionDisabled & 1) == 0)
  {
    static MosaicCollectionViewCell.selectionDisabled = 1;
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
    type metadata accessor for MainActor();

    v19 = static MainActor.shared.getter();
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D85700];
    v20[2] = v19;
    v20[3] = v21;
    v20[4] = a1;
    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #1 in closure #1 in MosaicCollectionViewCell.viewModel.didset, v20);

    v22 = specialized static DefaultsManager.MomentsUIDomain.intValueFor(_:)();
    if (v23)
    {
      v22 = 3;
    }

    v24 = specialized DefaultsManager.SheetTransfer.TransferUIMode.init(rawValue:)(v22);
    if (v24 == 5)
    {
      v25 = 3;
    }

    else
    {
      v25 = v24;
    }

    v36 = v25;
    v26 = *(a1 + OBJC_IVAR____TtC9MomentsUI25MosaicSuggestionViewModel_currentSegmentType);
    (*(*a1 + 280))();
    v37 = v10;
    outlined init with copy of Client(v10, v8);
    v27 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v28 = v27 + v6;
    v29 = swift_allocObject();
    outlined init with take of EngagementEvent(v8, v29 + v27, type metadata accessor for Client);
    *(v29 + v28) = v25;
    v30 = v29 + (v28 & 0xFFFFFFFFFFFFFFF8);
    *(v30 + 8) = a1;
    *(v30 + 16) = v26;
    *(v30 + 24) = a2;

    specialized static BTask.detached(name:operation:)(0xD000000000000028, 0x800000021657C480, &async function pointer to partial apply for closure #2 in closure #1 in MosaicCollectionViewCell.viewModel.didset, v29);

    if (v36 == 3)
    {
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_21607C000, v31, v32, "[JournalButton] Dimissing Sheet", v33, 2u);
        MEMORY[0x21CE94770](v33, -1, -1);
      }

      swift_beginAccess();
      v34 = static MomentsUIManager.dismissWithoutCleanup;

      (v34)(1);
    }

    outlined destroy of Client(v37, type metadata accessor for Client);
  }

  $defer #1 () in closure #1 in MosaicCollectionViewCell.viewModel.didset("[JournalButton] END");
}

uint64_t closure #1 in closure #1 in MosaicCollectionViewCell.viewModel.didset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v4[3] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in MosaicCollectionViewCell.viewModel.didset, v6, v5);
}

uint64_t closure #1 in closure #1 in MosaicCollectionViewCell.viewModel.didset()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(**(v0 + 16) + 184))();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = closure #1 in closure #1 in MosaicCollectionViewCell.viewModel.didset;
  v2 = *(v0 + 24);

  return NotificationHandlingManager.handleEngagementEvent(with:)(v2);
}

{
  v2 = *v1;
  v3 = *(*v1 + 24);
  *(*v1 + 64) = v0;

  outlined destroy of UUID?(v3);
  v4 = *(v2 + 48);
  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = closure #1 in closure #1 in MosaicCollectionViewCell.viewModel.didset;
  }

  else
  {
    v6 = closure #1 in closure #1 in MosaicCollectionViewCell.viewModel.didset;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #2 in closure #1 in MosaicCollectionViewCell.viewModel.didset(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 24) = a5;
  *(v7 + 32) = a7;
  *(v7 + 201) = a6;
  *(v7 + 200) = a4;
  *(v7 + 16) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  *(v7 + 40) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  *(v7 + 48) = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  *(v7 + 56) = v8;
  *(v7 + 64) = *(v8 - 8);
  *(v7 + 72) = swift_task_alloc();
  *(v7 + 80) = type metadata accessor for Client();
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 96) = type metadata accessor for EngagementEvent();
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();
  v9 = type metadata accessor for ContinuousClock();
  *(v7 + 120) = v9;
  *(v7 + 128) = *(v9 - 8);
  *(v7 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in closure #1 in MosaicCollectionViewCell.viewModel.didset, 0, 0);
}

uint64_t closure #2 in closure #1 in MosaicCollectionViewCell.viewModel.didset()
{
  if (one-time initialization token for interstitial != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 144) = __swift_project_value_buffer(v1, static CommonLogger.interstitial);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21607C000, v2, v3, "[JournalButton] Background Processing BEGIN", v4, 2u);
    MEMORY[0x21CE94770](v4, -1, -1);
  }

  v5 = *(v0 + 80);
  v6 = *(v0 + 16);

  v7 = (v6 + *(v5 + 24));
  v8 = *v7;
  *(v0 + 152) = *v7;
  if (v8)
  {
    v9 = *(v0 + 200);
    v10 = v7[1];
    *(v0 + 160) = v10;
    if (v9 == 3)
    {
      v11 = *(v0 + 16);
      ObjectType = swift_getObjectType();
      v13 = *(v10 + 16);
      swift_unknownObjectRetain();
      v13(v11, ObjectType, v10);
    }

    else
    {
      swift_unknownObjectRetain();
    }

    v14 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)());
    if (v15)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = v14;
    }

    if (v16 > 0.0)
    {
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 134349056;
        *(v19 + 4) = v16;
        _os_log_impl(&dword_21607C000, v17, v18, "[JournalButton] Background Processing Fake Work for %{public}f seconds BEGIN", v19, 0xCu);
        MEMORY[0x21CE94770](v19, -1, -1);
      }

      v20 = static Duration.seconds(_:)();
      v22 = v21;
      static Clock<>.continuous.getter();
      v23 = swift_task_alloc();
      *(v0 + 168) = v23;
      *v23 = v0;
      v23[1] = closure #2 in closure #1 in MosaicCollectionViewCell.viewModel.didset;

      return specialized Clock.sleep(for:tolerance:)(v20, v22, 0, 0, 1);
    }

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_21607C000, v25, v26, "[JournalButton] Background Processing Suggestions", v27, 2u);
      MEMORY[0x21CE94770](v27, -1, -1);
    }

    v28 = *(v0 + 24);

    v29 = (*(*v28 + 344))();
    *(v0 + 176) = v29;
    if (v29)
    {
      v30 = v29;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_21607C000, v31, v32, "[JournalButton] Background Sending Suggestions", v33, 2u);
        MEMORY[0x21CE94770](v33, -1, -1);
      }

      v34 = *(v0 + 160);

      v35 = swift_getObjectType();
      *(v0 + 184) = v35;
      v45 = (*(v34 + 24) + **(v34 + 24));
      v36 = swift_task_alloc();
      *(v0 + 192) = v36;
      *v36 = v0;
      v36[1] = closure #2 in closure #1 in MosaicCollectionViewCell.viewModel.didset;
      v37 = *(v0 + 16);

      return v45(v30, v37, v35, v34);
    }

    v39 = *(v0 + 32);
    v38 = *(v0 + 40);
    v40 = type metadata accessor for TaskPriority();
    (*(*(v40 - 8) + 56))(v38, 1, 1, v40);
    type metadata accessor for MainActor();
    v41 = static MainActor.shared.getter();
    v42 = swift_allocObject();
    v43 = MEMORY[0x277D85700];
    v42[2] = v41;
    v42[3] = v43;
    v42[4] = v39;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v38, &async function pointer to partial apply for closure #1 in closure #2 in closure #1 in MosaicCollectionViewCell.viewModel.didset, v42);

    swift_unknownObjectRelease();
  }

  $defer #1 () in closure #1 in MosaicCollectionViewCell.viewModel.didset("[JournalButton] Background Processing END");

  v44 = *(v0 + 8);

  return v44();
}

{
  v2 = *v1;

  v3 = v2[17];
  v4 = v2[16];
  v5 = v2[15];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = closure #2 in closure #1 in MosaicCollectionViewCell.viewModel.didset;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = closure #2 in closure #1 in MosaicCollectionViewCell.viewModel.didset;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21607C000, v1, v2, "[JournalButton] Background Processing Fake Work END", v3, 2u);
    MEMORY[0x21CE94770](v3, -1, -1);
  }

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_21607C000, v4, v5, "[JournalButton] Background Processing Suggestions", v6, 2u);
    MEMORY[0x21CE94770](v6, -1, -1);
  }

  v7 = v0[3];

  v8 = (*(*v7 + 344))();
  v0[22] = v8;
  if (v8)
  {
    v9 = v8;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_21607C000, v10, v11, "[JournalButton] Background Sending Suggestions", v12, 2u);
      MEMORY[0x21CE94770](v12, -1, -1);
    }

    v13 = v0[20];

    ObjectType = swift_getObjectType();
    v0[23] = ObjectType;
    v25 = (*(v13 + 24) + **(v13 + 24));
    v15 = swift_task_alloc();
    v0[24] = v15;
    *v15 = v0;
    v15[1] = closure #2 in closure #1 in MosaicCollectionViewCell.viewModel.didset;
    v16 = v0[2];

    return v25(v9, v16, ObjectType, v13);
  }

  else
  {
    v19 = v0[4];
    v18 = v0[5];
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
    type metadata accessor for MainActor();
    v21 = static MainActor.shared.getter();
    v22 = swift_allocObject();
    v23 = MEMORY[0x277D85700];
    v22[2] = v21;
    v22[3] = v23;
    v22[4] = v19;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v18, &async function pointer to partial apply for closure #1 in closure #2 in closure #1 in MosaicCollectionViewCell.viewModel.didset, v22);

    swift_unknownObjectRelease();
    $defer #1 () in closure #1 in MosaicCollectionViewCell.viewModel.didset("[JournalButton] Background Processing END");

    v24 = v0[1];

    return v24();
  }
}

{

  return MEMORY[0x2822009F8](closure #2 in closure #1 in MosaicCollectionViewCell.viewModel.didset, 0, 0);
}

{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21607C000, v1, v2, "[JournalButton] Background Sending Engagement Event", v3, 2u);
    MEMORY[0x21CE94770](v3, -1, -1);
  }

  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 24);

  (*(*v6 + 280))();
  v7 = (v4 + *(v5 + 32));
  v9 = *v7;
  v8 = v7[1];

  v10 = outlined destroy of Client(v4, type metadata accessor for Client);
  if (!v8)
  {

LABEL_10:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v11 = (*(**(v0 + 24) + 256))(v10);
  if (!v11)
  {
    v14 = *(v0 + 176);
    goto LABEL_9;
  }

  v12 = *(v0 + 24);
  v13 = *(v12 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionSubType);
  if (v13 == 65)
  {
    v14 = *(v0 + 176);

LABEL_9:

    goto LABEL_10;
  }

  v38 = v11;
  v17 = *(v0 + 56);
  v18 = *(v0 + 64);
  v19 = *(v0 + 48);
  (*(*v12 + 184))();
  if ((*(v18 + 48))(v19, 1, v17) != 1)
  {
    v36 = *(v0 + 184);
    v37 = *(v0 + 176);
    v35 = *(v0 + 160);
    v22 = *(v0 + 104);
    v34 = *(v0 + 112);
    v23 = *(v0 + 96);
    v24 = *(v0 + 72);
    v25 = *(v0 + 56);
    v33 = *(v0 + 201);
    v26 = *(*(v0 + 64) + 32);
    v26(v24, *(v0 + 48), v25);
    *v22 = v9;
    *(v22 + 1) = v8;
    *(v22 + 2) = v38;
    v26(&v22[v23[6]], v24, v25);
    v22[v23[7]] = v13;
    v22[v23[8]] = 0;
    v22[v23[9]] = v33;
    outlined init with take of EngagementEvent(v22, v34, type metadata accessor for EngagementEvent);
    (*(v35 + 48))(v34, v36);

    outlined destroy of Client(v34, type metadata accessor for EngagementEvent);
    v28 = *(v0 + 32);
    v27 = *(v0 + 40);
    v29 = type metadata accessor for TaskPriority();
    (*(*(v29 - 8) + 56))(v27, 1, 1, v29);
    type metadata accessor for MainActor();
    v30 = static MainActor.shared.getter();
    v31 = swift_allocObject();
    v32 = MEMORY[0x277D85700];
    v31[2] = v30;
    v31[3] = v32;
    v31[4] = v28;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v27, &async function pointer to partial apply for closure #1 in closure #2 in closure #1 in MosaicCollectionViewCell.viewModel.didset, v31);

    goto LABEL_10;
  }

  v20 = *(v0 + 176);
  v21 = *(v0 + 48);

  swift_unknownObjectRelease();
  outlined destroy of UUID?(v21);
LABEL_11:
  $defer #1 () in closure #1 in MosaicCollectionViewCell.viewModel.didset("[JournalButton] Background Processing END");

  v15 = *(v0 + 8);

  return v15();
}

void $defer #1 () in closure #1 in MosaicCollectionViewCell.viewModel.didset(const char *a1)
{
  if (one-time initialization token for interstitial != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static CommonLogger.interstitial);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21607C000, oslog, v3, a1, v4, 2u);
    MEMORY[0x21CE94770](v4, -1, -1);
  }
}

uint64_t closure #1 in closure #2 in closure #1 in MosaicCollectionViewCell.viewModel.didset()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #2 in closure #1 in MosaicCollectionViewCell.viewModel.didset, v2, v1);
}

{

  static MosaicCollectionViewCell.selectionDisabled = 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #2 in MosaicCollectionViewCell.viewModel.didset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v4[3] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v4[7] = type metadata accessor for Client();
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = type metadata accessor for EngagementEvent();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[13] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MosaicCollectionViewCell.viewModel.didset, v7, v6);
}

uint64_t closure #2 in MosaicCollectionViewCell.viewModel.didset()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[2];

  v5 = *(v3 + OBJC_IVAR____TtC9MomentsUI25MosaicSuggestionViewModel_currentSegmentType);
  v6 = *(*v3 + 280);
  v6(v4);
  v7 = (v1 + *(v2 + 32));
  v9 = *v7;
  v8 = v7[1];

  v10 = outlined destroy of Client(v1, type metadata accessor for Client);
  if (v8)
  {
    v11 = (*(*v0[2] + 256))(v10);
    if (!v11)
    {
LABEL_5:

      goto LABEL_6;
    }

    v12 = v0[2];
    v13 = *(v12 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionSubType);
    if (v13 == 65)
    {

      goto LABEL_5;
    }

    v32 = v5;
    v16 = v0[5];
    v33 = v0[4];
    v35 = v11;
    v17 = v0[3];
    (*(*v12 + 184))();
    if ((*(v16 + 48))(v17, 1, v33) == 1)
    {
      v18 = v0[3];

      outlined destroy of UUID?(v18);
    }

    else
    {
      v19 = v0[11];
      v20 = v0[10];
      v30 = v0[12];
      v31 = v0[8];
      v34 = v0[7];
      v28 = v0[4];
      v29 = v0[6];
      v21 = *(v0[5] + 32);
      v21();
      *v19 = v9;
      v19[1] = v8;
      v19[2] = v35;
      (v21)(v19 + v20[6], v29, v28);
      *(v19 + v20[7]) = v13;
      *(v19 + v20[8]) = 3;
      *(v19 + v20[9]) = v32;
      v22 = outlined init with take of EngagementEvent(v19, v30, type metadata accessor for EngagementEvent);
      v6(v22);
      v23 = (v31 + *(v34 + 24));
      v25 = *v23;
      v24 = v23[1];
      swift_unknownObjectRetain();
      outlined destroy of Client(v31, type metadata accessor for Client);
      if (v25)
      {
        v26 = v0[12];
        ObjectType = swift_getObjectType();
        (*(v24 + 48))(v26, ObjectType, v24);
        swift_unknownObjectRelease();
      }

      outlined destroy of Client(v0[12], type metadata accessor for EngagementEvent);
    }
  }

LABEL_6:

  v14 = v0[1];

  return v14();
}

uint64_t MosaicCollectionViewCell.viewModel.setter()
{
  swift_beginAccess();
  swift_weakAssign();
  MosaicCollectionViewCell.viewModel.didset();
}

void (*MosaicCollectionViewCell.viewModel.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_viewModel;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return MosaicCollectionViewCell.viewModel.modify;
}

void MosaicCollectionViewCell.viewModel.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    MosaicCollectionViewCell.viewModel.didset();
  }

  free(v3);
}

id MosaicCollectionViewCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id MosaicCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

Swift::Void __swiftcall MosaicCollectionViewCell.configureViews()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_containerView;
  [v0 addSubview_];
  v118 = OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_journalButton;
  [v1 addSubview_];
  v3 = OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_assetGridView;
  [*(v0 + OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_assetGridView) setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_photoMemoryBanner;
  v5 = [*(v0 + OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_photoMemoryBanner) topAnchor];
  v6 = [*(v1 + v2) topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 constant:4.0];

  v8 = OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_bannerPresentConstraints;
  v9 = swift_beginAccess();
  MEMORY[0x21CE92260](v9);
  if (*((*(v1 + v8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v10 = [*(v1 + v3) topAnchor];
  v11 = [*(v1 + v4) bottomAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  v13 = swift_beginAccess();
  MEMORY[0x21CE92260](v13);
  if (*((*(v1 + v8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v14 = [*(v1 + v3) topAnchor];
  v15 = [*(v1 + v2) topAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  v17 = OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_bannerHiddenConstraints;
  v18 = swift_beginAccess();
  MEMORY[0x21CE92260](v18);
  if (*((*(v1 + v17) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v17) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  [*(v1 + v2) addSubview_];
  [*(v1 + v2) addSubview_];
  v19 = *(v1 + v4);
  v20 = [v19 superview];
  if (v20)
  {
    v21 = v20;
    [v19 setTranslatesAutoresizingMaskIntoConstraints_];
    v22 = [v19 leadingAnchor];
    v23 = [v21 leadingAnchor];
    v24 = [v22 constraintEqualToAnchor_];

    [v24 setConstant_];
    if (v24)
    {
      [v24 setActive_];
    }
  }

  else
  {
    v24 = 0;
    v21 = v19;
  }

  v25 = *(v1 + v4);
  v26 = [v25 superview];
  if (v26)
  {
    v27 = v26;
    [v25 setTranslatesAutoresizingMaskIntoConstraints_];
    v28 = [v25 trailingAnchor];
    v29 = [v27 trailingAnchor];
    v30 = [v28 constraintEqualToAnchor_];

    [v30 setConstant_];
    if (v30)
    {
      [v30 setActive_];
    }
  }

  else
  {
    v30 = 0;
    v27 = v25;
  }

  v31 = *(v1 + v3);
  v32 = [v31 superview];
  if (v32)
  {
    v33 = v32;
    [v31 setTranslatesAutoresizingMaskIntoConstraints_];
    v34 = [v31 leadingAnchor];
    v35 = [v33 leadingAnchor];
    v36 = [v34 constraintEqualToAnchor_];

    [v36 setConstant_];
    if (v36)
    {
      [v36 setActive_];
    }
  }

  else
  {
    v36 = 0;
    v33 = v31;
  }

  v37 = *(v1 + v3);
  v38 = [v37 superview];
  if (v38)
  {
    v39 = v38;
    [v37 setTranslatesAutoresizingMaskIntoConstraints_];
    v40 = [v37 trailingAnchor];
    v41 = [v39 trailingAnchor];
    v42 = [v40 constraintEqualToAnchor_];

    [v42 setConstant_];
    if (v42)
    {
      [v42 setActive_];
    }
  }

  else
  {
    v42 = 0;
    v39 = v37;
  }

  v43 = *(v1 + v3);
  v44 = [v43 superview];
  v117 = v3;
  if (v44)
  {
    v45 = v44;
    [v43 setTranslatesAutoresizingMaskIntoConstraints_];
    v46 = [v43 bottomAnchor];
    v47 = [v45 bottomAnchor];
    v48 = [v46 constraintEqualToAnchor_];

    v49 = &selRef_setDeliversTouchesForGesturesToSuperview_;
    if (v48)
    {
      [v48 setConstant_];
      [v48 setActive_];
    }
  }

  else
  {
    v48 = 0;
    v45 = v43;
    v49 = &selRef_setDeliversTouchesForGesturesToSuperview_;
  }

  v50 = [*(v1 + v2) layer];
  [v50 setCornerRadius_];

  v116 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_216596500;
  v52 = [*(v1 + v2) v49[10]];
  v53 = [v1 v49[10]];
  v54 = v49;
  v55 = [v52 constraintEqualToAnchor:v53 constant:3.0];

  *(v51 + 32) = v55;
  v56 = [*(v1 + v2) leadingAnchor];
  v57 = [v1 leadingAnchor];
  v58 = [v56 constraintEqualToAnchor:v57 constant:8.0];

  *(v51 + 40) = v58;
  v59 = [*(v1 + v2) trailingAnchor];
  v60 = [v1 trailingAnchor];
  v61 = [v59 constraintEqualToAnchor:v60 constant:-8.0];

  *(v51 + 48) = v61;
  v62 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  v63 = v62();
  v64 = [v63 v54[10]];

  v65 = [*(v1 + v2) bottomAnchor];
  v66 = [v64 constraintEqualToAnchor:v65 constant:8.0];

  *(v51 + 56) = v66;
  v67 = v62();
  v68 = [v67 leadingAnchor];

  v69 = [v1 leadingAnchor];
  v70 = [v68 constraintEqualToAnchor:v69 constant:12.0];

  *(v51 + 64) = v70;
  v71 = v62();
  v72 = [v71 trailingAnchor];

  v73 = [*(v1 + v118) leadingAnchor];
  v74 = [v72 constraintEqualToAnchor:v73 constant:-5.0];

  *(v51 + 72) = v74;
  v75 = *((*MEMORY[0x277D85000] & *v1) + 0x80);
  v76 = v75();
  v77 = [v76 topAnchor];

  v78 = v62();
  v79 = [v78 bottomAnchor];

  v80 = [v77 &selRef:v79 setZPosition:3.0 + 6];
  *(v51 + 80) = v80;
  v81 = v75();
  v82 = [v81 leadingAnchor];

  v83 = [v1 leadingAnchor];
  v84 = [v82 &selRef:v83 setZPosition:12.0 + 6];

  *(v51 + 88) = v84;
  v85 = v75();
  v86 = [v85 trailingAnchor];

  v87 = v62();
  v88 = [v87 trailingAnchor];

  v89 = [v86 constraintEqualToAnchor_];
  *(v51 + 96) = v89;
  v90 = v75();
  v91 = [v90 bottomAnchor];

  v92 = [v1 bottomAnchor];
  v93 = [v91 constraintEqualToAnchor_];

  *(v51 + 104) = v93;
  v94 = [*(v1 + v118) topAnchor];
  v95 = [*(v1 + v2) bottomAnchor];
  v96 = [v94 constraintEqualToAnchor:v95 constant:10.0];

  *(v51 + 112) = v96;
  v97 = [*(v1 + v118) trailingAnchor];
  v98 = [*(v1 + v2) trailingAnchor];
  v99 = [v97 constraintEqualToAnchor:v98 constant:-4.0];

  *(v51 + 120) = v99;
  v100 = [*(v1 + v118) widthAnchor];
  v101 = [v100 constraintGreaterThanOrEqualToConstant_];

  *(v51 + 128) = v101;
  v102 = [*(v1 + v118) widthAnchor];
  v103 = [v102 constraintLessThanOrEqualToConstant_];

  *(v51 + 136) = v103;
  v104 = [*(v1 + v118) heightAnchor];
  v105 = [*(v1 + v118) widthAnchor];
  v106 = [v104 constraintEqualToAnchor_];

  *(v51 + 144) = v106;
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v116 activateConstraints_];

  v108 = [*(v1 + v117) heightAnchor];
  v109 = [*(v1 + v117) widthAnchor];
  v110 = [v108 constraintEqualToAnchor:v109 multiplier:0.5];

  v111 = *(v1 + OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_assetGridViewHeightAnchor);
  *(v1 + OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_assetGridViewHeightAnchor) = v110;

  v112 = [*(v1 + v117) heightAnchor];
  v113 = [*(v1 + v117) widthAnchor];
  v114 = [v112 constraintEqualToAnchor:v113 multiplier:1.0];

  v115 = *(v1 + OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_assetSquareGridViewHeightAnchor);
  *(v1 + OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_assetSquareGridViewHeightAnchor) = v114;
}

Swift::Void __swiftcall MosaicCollectionViewCell.handleTraitChange()()
{
  v3 = *&v0[OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_containerView];
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  specialized static CommonTheme.Styles.styleViewAsPlatter(view:traitCollection:)(v3, v2);
}

Swift::Void __swiftcall MosaicCollectionViewCell.updateGridHeight()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x188))();
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI25MosaicSuggestionViewModel_isFullWidth);
    v3 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_21658E210;
    v5 = v2 == 0;
    if (v2)
    {
      v6 = &OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_assetGridViewHeightAnchor;
    }

    else
    {
      v6 = &OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_assetSquareGridViewHeightAnchor;
    }

    v7 = *(v0 + *v6);
    *(v4 + 32) = v7;
    if (v5)
    {
      v8 = &OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_assetGridViewHeightAnchor;
    }

    else
    {
      v8 = &OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_assetSquareGridViewHeightAnchor;
    }

    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    v9 = v7;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v3 activateConstraints_];

    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_21658E210;
    v12 = *(v0 + *v8);
    *(v11 + 32) = v12;
    v13 = v12;
    v14 = Array._bridgeToObjectiveC()().super.isa;

    [v3 deactivateConstraints_];
  }
}

Swift::Void __swiftcall MosaicCollectionViewCell.setPhotoMemoryBannerVisibility()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*((*MEMORY[0x277D85000] & *v0) + 0x188))(v8);
  if (v11)
  {
    if (*(v11 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionType) == 7)
    {
      v22[1] = v11;
      v23 = v3;
      v12 = objc_opt_self();
      swift_beginAccess();
      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v12 activateConstraints_];

      swift_beginAccess();

      v14 = Array._bridgeToObjectiveC()().super.isa;

      [v12 deactivateConstraints_];

      [*&v1[OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_photoMemoryBanner] setHidden_];
      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v15 = static OS_dispatch_queue.main.getter();
      v16 = swift_allocObject();
      *(v16 + 16) = v1;
      aBlock[4] = partial apply for closure #1 in MosaicCollectionViewCell.setPhotoMemoryBannerVisibility();
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_13;
      v17 = _Block_copy(aBlock);
      v18 = v1;
      static DispatchQoS.unspecified.getter();
      v24 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x21CE92A50](0, v10, v5, v17);
      _Block_release(v17);

      (*(v23 + 8))(v5, v2);
      (*(v7 + 8))(v10, v6);

      return;
    }
  }

  v19 = objc_opt_self();
  swift_beginAccess();
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);

  v20 = Array._bridgeToObjectiveC()().super.isa;

  [v19 activateConstraints_];

  swift_beginAccess();

  v21 = Array._bridgeToObjectiveC()().super.isa;

  [v19 deactivateConstraints_];

  [*&v1[OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_photoMemoryBanner] setHidden_];
}

void MosaicCollectionViewCell.__ivar_destroyer()
{

  swift_weakDestroy();
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_journalButton);
}

id MosaicCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MosaicCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *specialized MosaicCollectionViewCell.init(frame:)()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_assetGridView;
  type metadata accessor for AssetGridView();
  *&v0[v2] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_assetGridViewHeightAnchor;
  *&v0[v3] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v4 = OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_assetSquareGridViewHeightAnchor;
  *&v0[v4] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v5 = OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_photoMemoryBanner;
  type metadata accessor for PhotoMemoryBanner();
  *&v0[v5] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_bannerHiddenConstraints] = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_bannerPresentConstraints] = v6;
  v7 = OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_containerView;
  v8 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v9 = [v8 traitCollection];
  v10 = [v9 userInterfaceStyle];

  specialized static CommonTheme.Styles.styleViewAsPlatter(view:traitCollection:)(v8, v10);
  *&v1[v7] = v8;
  swift_weakInit();
  v11 = OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_journalButton;
  v12 = type metadata accessor for SuggestionJournalButton();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC9MomentsUI23SuggestionJournalButton_buttonTapped];
  *v14 = 0;
  v14[1] = 0;
  v13[OBJC_IVAR____TtC9MomentsUI23SuggestionJournalButton_singleCellAsset] = 0;
  v24.receiver = v13;
  v24.super_class = v12;
  v15 = objc_msgSendSuper2(&v24, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  SuggestionJournalButton.sharedInit()();

  *&v1[v11] = v15;
  v23.receiver = v1;
  v23.super_class = type metadata accessor for MosaicCollectionViewCell();
  v16 = objc_msgSendSuper2(&v23, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v17 = *((*MEMORY[0x277D85000] & *v16) + 0x1B8);
  v18 = v16;
  v17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21658CA50;
  v20 = type metadata accessor for UITraitUserInterfaceStyle();
  v21 = MEMORY[0x277D74BF0];
  *(v19 + 32) = v20;
  *(v19 + 40) = v21;
  MEMORY[0x21CE92C30](v19, sel_handleTraitChange);

  swift_unknownObjectRelease();

  return v18;
}

void specialized MosaicCollectionViewCell.init(coder:)()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_assetGridView;
  type metadata accessor for AssetGridView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_assetGridViewHeightAnchor;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v4 = OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_assetSquareGridViewHeightAnchor;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v5 = OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_photoMemoryBanner;
  type metadata accessor for PhotoMemoryBanner();
  *(v0 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_bannerHiddenConstraints) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_bannerPresentConstraints) = v6;
  v7 = OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_containerView;
  v8 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v9 = [v8 traitCollection];
  v10 = [v9 userInterfaceStyle];

  specialized static CommonTheme.Styles.styleViewAsPlatter(view:traitCollection:)(v8, v10);
  *(v1 + v7) = v8;
  swift_weakInit();
  v11 = OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_journalButton;
  v12 = type metadata accessor for SuggestionJournalButton();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC9MomentsUI23SuggestionJournalButton_buttonTapped];
  *v14 = 0;
  v14[1] = 0;
  v13[OBJC_IVAR____TtC9MomentsUI23SuggestionJournalButton_singleCellAsset] = 0;
  v16.receiver = v13;
  v16.super_class = v12;
  v15 = objc_msgSendSuper2(&v16, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  SuggestionJournalButton.sharedInit()();

  *(v1 + v11) = v15;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #2 in MosaicCollectionViewCell.viewModel.didset(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #2 in MosaicCollectionViewCell.viewModel.didset(a1, v4, v5, v6);
}

uint64_t outlined destroy of Client(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in closure #1 in MosaicCollectionViewCell.viewModel.didset(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in closure #1 in MosaicCollectionViewCell.viewModel.didset(a1, v4, v5, v6);
}

uint64_t outlined init with take of EngagementEvent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #2 in closure #1 in MosaicCollectionViewCell.viewModel.didset(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for Client() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  v9 = v2 + (v8 & 0xFFFFFFFFFFFFFFF8);
  v10 = *(v9 + 8);
  v11 = *(v9 + 24);
  v12 = *(v2 + v8);
  v13 = *(v9 + 16);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #2 in closure #1 in MosaicCollectionViewCell.viewModel.didset(a1, a2, v2 + v7, v12, v10, v13, v11);
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in MosaicCollectionViewCell.viewModel.didset()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in closure #2 in closure #1 in MosaicCollectionViewCell.viewModel.didset();
}

uint64_t MosaicGridLayout.cachedAttributes.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI16MosaicGridLayout_cachedAttributes;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double MosaicGridLayout.contentBounds.getter()
{
  v1 = v0 + OBJC_IVAR____TtC9MomentsUI16MosaicGridLayout_contentBounds;
  swift_beginAccess();
  return *v1;
}

uint64_t MosaicGridLayout.contentBounds.setter(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC9MomentsUI16MosaicGridLayout_contentBounds);
  result = swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return result;
}

Swift::Void __swiftcall MosaicGridLayout.prepare()()
{
  v364 = *MEMORY[0x277D85DE8];
  v358 = type metadata accessor for IndexPath();
  v1 = *(v358 - 8);
  MEMORY[0x28223BE20](v358);
  v357 = &v343 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MosaicGridLayout();
  v359.receiver = v0;
  v359.super_class = v3;
  objc_msgSendSuper2(&v359, sel_prepareLayout);
  v4 = [v0 collectionView];
  if (v4)
  {
    v5 = v4;
    if ([v4 numberOfSections] < 1)
    {
    }

    else
    {
      v6 = MEMORY[0x277D85000];
      v7 = (*MEMORY[0x277D85000] & *v0) + 112;
      v356 = *((*MEMORY[0x277D85000] & *v0) + 0x70);
      v355 = v7;
      v8 = v356(&v360);
      *v9 = MEMORY[0x277D84F90];

      v8(&v360, 0);
      v10 = v5;
      v11 = [v10 bounds];
      v12 = (*v6 & *v0) + 128;
      v354 = *((*v6 & *v0) + 0x80);
      v353 = v12;
      (v354)(v11, 0.0, 0.0);
      v13 = [v10 numberOfItemsInSection_];
      [v10 bounds];
      v15 = v14;

      v16 = v0;
      v17 = (*((*v6 & *v0) + 0x90))(v13, v15);
      switch(v13)
      {
        case 1uLL:
          v18 = v17;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_21658CA50;
          *(v19 + 32) = 0;
          *(v19 + 40) = 0;
          *(v19 + 48) = v15;
          *(v19 + 56) = v18;
          goto LABEL_154;
        case 2uLL:
          v104 = v17;
          CGRect.dividedIntegral(fraction:from:)(CGRectMinXEdge, &v360, 0.5, 0.0, 0.0, v15, v17);
          v352 = v362;
          v351 = v363;
          CGRect.dividedIntegral(fraction:from:)(CGRectMinXEdge, &v360, 0.5, 0.0, 0.0, v15, v104);
          v349 = v360;
          v350 = v361;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
          v19 = swift_allocObject();
          v105 = v349;
          *(v19 + 16) = xmmword_21658CA60;
          *(v19 + 32) = v105;
          v106 = v351;
          *(v19 + 48) = v350;
          *(v19 + 64) = v352;
          *(v19 + 80) = v106;
          goto LABEL_154;
        case 3uLL:
          v76 = v17;
          CGRect.dividedIntegral(fraction:from:)(CGRectMinXEdge, &v360, 0.5, 0.0, 0.0, v15, v17);
          v77 = v362;
          v78 = v363;
          CGRect.dividedIntegral(fraction:from:)(CGRectMinXEdge, &v360, 0.5, 0.0, 0.0, v15, v76);
          v352 = v360;
          v351 = v361;
          CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &v360, 0.5, *&v77, *(&v77 + 1), *&v78, *(&v78 + 1));
          v348 = v360;
          v350 = v361;
          v349 = v362;
          v347 = v363;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
          v19 = swift_allocObject();
          v79 = v352;
          *(v19 + 16) = xmmword_21658E190;
          *(v19 + 32) = v79;
          v80 = v348;
          *(v19 + 48) = v351;
          *(v19 + 64) = v80;
          v81 = v347;
          *(v19 + 80) = v350;
          *(v19 + 96) = v349;
          *(v19 + 112) = v81;
          goto LABEL_154;
        case 4uLL:
          v82 = v17;
          CGRect.dividedIntegral(fraction:from:)(CGRectMinXEdge, &v360, 0.5, 0.0, 0.0, v15, v17);
          v83 = v362;
          v84 = v363;
          CGRect.dividedIntegral(fraction:from:)(CGRectMinXEdge, &v360, 0.5, 0.0, 0.0, v15, v82);
          v352 = v360;
          v351 = v361;
          CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &v360, 0.5, *&v83, *(&v83 + 1), *&v84, *(&v84 + 1));
          v350 = v360;
          v349 = v361;
          CGRect.dividedIntegral(fraction:from:)(CGRectMinXEdge, &v360, 0.5, *&v362, *(&v362 + 1), *&v363, *(&v363 + 1));
          v346 = v360;
          v348 = v361;
          v347 = v362;
          v345 = v363;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
          v19 = swift_allocObject();
          v85 = v352;
          *(v19 + 16) = xmmword_2165965F0;
          *(v19 + 32) = v85;
          v86 = v350;
          *(v19 + 48) = v351;
          *(v19 + 64) = v86;
          v87 = v346;
          *(v19 + 80) = v349;
          *(v19 + 96) = v87;
          v88 = v345;
          *(v19 + 112) = v348;
          *(v19 + 128) = v347;
          *(v19 + 144) = v88;
          goto LABEL_154;
        case 5uLL:
          CGRect.dividedIntegral(fraction:from:)(CGRectMinXEdge, &v360, 0.5, 0.0, 0.0, v15, v17);
          v35 = v362;
          v36 = v363;
          v352 = v360;
          v351 = v361;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
          inited = swift_initStackObject();
          v38 = v351;
          *(inited + 16) = xmmword_21658CA50;
          *(inited + 32) = v352;
          *(inited + 48) = v38;
          CGRect.dividedIntegral(fraction:from:)(CGRectMinXEdge, &v360, 0.5, *&v35, *(&v35 + 1), *&v36, *(&v36 + 1));
          v39 = v362;
          v40 = v363;
          CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &v360, 0.5, *&v360, *(&v360 + 1), *&v361, *(&v361 + 1));
          v350 = v363;
          v349 = v362;
          v346 = v360;
          v345 = v361;
          CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &v360, 0.5, *&v39, *(&v39 + 1), *&v40, *(&v40 + 1));
          v348 = v361;
          v347 = v360;
          v352 = v363;
          v351 = v362;
          v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 2, 1, inited);
          *(v19 + 16) = 2;
          v41 = v345;
          *(v19 + 64) = v346;
          *(v19 + 80) = v41;
          v42 = *(v19 + 24);
          if (v42 < 6)
          {
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), 3, 1, v19);
            v42 = *(v19 + 24);
          }

          *(v19 + 16) = 3;
          v43 = v348;
          *(v19 + 96) = v347;
          *(v19 + 112) = v43;
          if (v42 <= 7)
          {
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), 4, 1, v19);
            v42 = *(v19 + 24);
          }

          *(v19 + 16) = 4;
          v44 = v350;
          *(v19 + 128) = v349;
          *(v19 + 144) = v44;
          if (v42 <= 9)
          {
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), 5, 1, v19);
          }

          *(v19 + 16) = 5;
          v45 = v352;
          *(v19 + 160) = v351;
          *(v19 + 176) = v45;
          goto LABEL_154;
        case 6uLL:
          CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &v360, 0.5, 0.0, 0.0, v15, v17);
          v351 = v363;
          v352 = v362;
          v107 = specialized MosaicGridLayout.firstRowRects(segmentFrame:)(*&v360, *(&v360 + 1), *&v361, *(&v361 + 1));
          v108 = *(v107 + 2);
          if (v108)
          {
            v109 = v107;
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
            v110 = *(v19 + 16);
            v111 = 32 * v110;
            v112 = (v109 + 48);
            do
            {
              v113 = *(v112 - 1);
              v114 = *v112;
              v115 = *(v19 + 24);
              v116 = v110 + 1;
              if (v110 >= v115 >> 1)
              {
                v350 = *(v112 - 1);
                v349 = v114;
                v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v115 > 1), v110 + 1, 1, v19);
                v114 = v349;
                v113 = v350;
                v19 = v118;
              }

              *(v19 + 16) = v116;
              v117 = v19 + v111;
              *(v117 + 32) = v113;
              *(v117 + 48) = v114;
              v111 += 32;
              v112 += 2;
              v110 = v116;
              --v108;
            }

            while (v108);
          }

          else
          {
            v19 = MEMORY[0x277D84F90];
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 16) + 1, 1, v19);
          }

          v260 = *(v19 + 16);
          v259 = *(v19 + 24);
          goto LABEL_127;
        case 7uLL:
          CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &v360, 0.5, 0.0, 0.0, v15, v17);
          v119 = v362;
          v120 = v363;
          v121 = specialized MosaicGridLayout.firstRowRects(segmentFrame:)(*&v360, *(&v360 + 1), *&v361, *(&v361 + 1));
          v122 = *(v121 + 2);
          if (v122)
          {
            v123 = v121;
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
            v124 = *(v19 + 16);
            v125 = 32 * v124;
            v126 = (v123 + 48);
            do
            {
              v127 = *(v126 - 1);
              v128 = *v126;
              v129 = *(v19 + 24);
              v130 = v124 + 1;
              if (v124 >= v129 >> 1)
              {
                v352 = *(v126 - 1);
                v351 = v128;
                v132 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v129 > 1), v124 + 1, 1, v19);
                v128 = v351;
                v127 = v352;
                v19 = v132;
              }

              *(v19 + 16) = v130;
              v131 = v19 + v125;
              *(v131 + 32) = v127;
              *(v131 + 48) = v128;
              v125 += 32;
              v126 += 2;
              v124 = v130;
              --v122;
            }

            while (v122);
          }

          else
          {
            v19 = MEMORY[0x277D84F90];
          }

          CGRect.dividedIntegral(fraction:from:)(CGRectMinXEdge, &v360, 0.5, *&v119, *(&v119 + 1), *&v120, *(&v120 + 1));
          v349 = v361;
          v350 = v360;
          v352 = v363;
          v351 = v362;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 16) + 1, 1, v19);
          }

          v270 = *(v19 + 16);
          v269 = *(v19 + 24);
          v271 = v269 >> 1;
          v272 = v270 + 1;
          if (v269 >> 1 <= v270)
          {
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v269 > 1), v270 + 1, 1, v19);
            v269 = *(v19 + 24);
            v271 = v269 >> 1;
          }

          *(v19 + 16) = v272;
          v273 = v19 + 32 * v270;
          v274 = v349;
          *(v273 + 32) = v350;
          *(v273 + 48) = v274;
          v275 = v270 + 2;
          if (v271 >= (v270 + 2))
          {
            goto LABEL_136;
          }

          goto LABEL_173;
        case 8uLL:
          CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &v360, 0.5, 0.0, 0.0, v15, v17);
          v89 = v362;
          v90 = v363;
          v91 = specialized MosaicGridLayout.firstRowRects(segmentFrame:)(*&v360, *(&v360 + 1), *&v361, *(&v361 + 1));
          v92 = *(v91 + 2);
          if (v92)
          {
            v93 = v91;
            v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
            v95 = *(v94 + 2);
            v96 = 32 * v95;
            v97 = (v93 + 48);
            do
            {
              v98 = *(v97 - 1);
              v99 = *v97;
              v100 = *(v94 + 3);
              v101 = v95 + 1;
              if (v95 >= v100 >> 1)
              {
                v352 = *(v97 - 1);
                v351 = v99;
                v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v100 > 1), v95 + 1, 1, v94);
                v99 = v351;
                v98 = v352;
                v94 = v103;
              }

              *(v94 + 2) = v101;
              v102 = &v94[v96];
              *(v102 + 2) = v98;
              *(v102 + 3) = v99;
              v96 += 32;
              v97 += 2;
              v95 = v101;
              --v92;
            }

            while (v92);
          }

          else
          {
            v94 = MEMORY[0x277D84F90];
          }

          CGRect.dividedIntegral(fraction:from:)(CGRectMinXEdge, &v360, 0.5, *&v89, *(&v89 + 1), *&v90, *(&v90 + 1));
          v352 = v363;
          v351 = v362;
          CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &v360, 0.5, *&v360, *(&v360 + 1), *&v361, *(&v361 + 1));
          v347 = v361;
          v348 = v360;
          v349 = v363;
          v350 = v362;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v94 + 2) + 1, 1, v94);
          }

          v189 = *(v94 + 2);
          v261 = *(v94 + 3);
          v262 = v261 >> 1;
          v263 = v189 + 1;
          if (v261 >> 1 <= v189)
          {
            v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v261 > 1), v189 + 1, 1, v94);
            v261 = *(v94 + 3);
            v262 = v261 >> 1;
          }

          *(v94 + 2) = v263;
          v192 = v94;
          v264 = &v94[32 * v189];
          v265 = v347;
          *(v264 + 2) = v348;
          *(v264 + 3) = v265;
          v194 = v189 + 2;
          if (v262 < (v189 + 2))
          {
            v192 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v261 > 1), v189 + 2, 1, v192);
          }

          *(v192 + 2) = v194;
          v195 = &v192[32 * v263];
          v187 = v349;
          v186 = v350;
          goto LABEL_120;
        case 9uLL:
          CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &v360, 0.5, 0.0, 0.0, v15, v17);
          v148 = v362;
          v149 = v363;
          v150 = specialized MosaicGridLayout.firstRowRects(segmentFrame:)(*&v360, *(&v360 + 1), *&v361, *(&v361 + 1));
          v151 = *(v150 + 2);
          if (v151)
          {
            v152 = v150;
            v153 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
            v154 = *(v153 + 2);
            v155 = 32 * v154;
            v156 = (v152 + 48);
            do
            {
              v157 = *(v156 - 1);
              v158 = *v156;
              v159 = *(v153 + 3);
              v160 = v154 + 1;
              if (v154 >= v159 >> 1)
              {
                v352 = *(v156 - 1);
                v351 = v158;
                v162 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v159 > 1), v154 + 1, 1, v153);
                v158 = v351;
                v157 = v352;
                v153 = v162;
              }

              *(v153 + 2) = v160;
              v161 = &v153[v155];
              *(v161 + 2) = v157;
              *(v161 + 3) = v158;
              v155 += 32;
              v156 += 2;
              v154 = v160;
              --v151;
            }

            while (v151);
          }

          else
          {
            v153 = MEMORY[0x277D84F90];
          }

          CGRect.dividedIntegral(fraction:from:)(CGRectMinXEdge, &v360, 0.5, *&v148, *(&v148 + 1), *&v149, *(&v149 + 1));
          v352 = v363;
          v351 = v362;
          CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &v360, 0.5, *&v360, *(&v360 + 1), *&v361, *(&v361 + 1));
          v345 = v361;
          v346 = v360;
          CGRect.dividedIntegral(fraction:from:)(CGRectMinXEdge, &v360, 0.5, *&v362, *(&v362 + 1), *&v363, *(&v363 + 1));
          v347 = v361;
          v348 = v360;
          v349 = v363;
          v350 = v362;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v153 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v153 + 2) + 1, 1, v153);
          }

          v325 = *(v153 + 2);
          v324 = *(v153 + 3);
          v326 = v324 >> 1;
          v327 = v325 + 1;
          if (v324 >> 1 <= v325)
          {
            v153 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v324 > 1), v325 + 1, 1, v153);
            v324 = *(v153 + 3);
            v326 = v324 >> 1;
          }

          *(v153 + 2) = v327;
          v328 = v153;
          v329 = &v153[32 * v325];
          v330 = v345;
          *(v329 + 2) = v346;
          *(v329 + 3) = v330;
          v331 = v325 + 2;
          if (v326 < (v325 + 2))
          {
            v328 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v324 > 1), v325 + 2, 1, v328);
          }

          *(v328 + 2) = v331;
          v332 = &v328[32 * v327];
          v333 = v347;
          *(v332 + 2) = v348;
          *(v332 + 3) = v333;
          v334 = *(v328 + 3);
          v272 = v325 + 3;
          if ((v325 + 3) > (v334 >> 1))
          {
            v328 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v334 > 1), v325 + 3, 1, v328);
          }

          *(v328 + 2) = v272;
          v335 = &v328[32 * v331];
          v19 = v328;
          v336 = v349;
          *(v335 + 2) = v350;
          *(v335 + 3) = v336;
          v269 = *(v328 + 3);
          v275 = v325 + 4;
          if ((v325 + 4) > (v269 >> 1))
          {
LABEL_173:
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v269 > 1), v275, 1, v19);
          }

LABEL_136:
          *(v19 + 16) = v275;
          v267 = (v19 + 32 * v272);
          goto LABEL_137;
        case 0xAuLL:
          CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &v360, 0.5, 0.0, 0.0, v15, v17);
          v61 = v362;
          v62 = v363;
          v63 = specialized MosaicGridLayout.firstRowRects(segmentFrame:)(*&v360, *(&v360 + 1), *&v361, *(&v361 + 1));
          v64 = *(v63 + 2);
          if (v64)
          {
            v65 = v63;
            v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
            v67 = *(v66 + 2);
            v68 = 32 * v67;
            v69 = (v65 + 48);
            do
            {
              v70 = *(v69 - 1);
              v71 = *v69;
              v72 = *(v66 + 3);
              v73 = v67 + 1;
              if (v67 >= v72 >> 1)
              {
                v352 = *(v69 - 1);
                v351 = v71;
                v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v67 + 1, 1, v66);
                v71 = v351;
                v70 = v352;
                v66 = v75;
              }

              *(v66 + 2) = v73;
              v74 = &v66[v68];
              *(v74 + 2) = v70;
              *(v74 + 3) = v71;
              v68 += 32;
              v69 += 2;
              v67 = v73;
              --v64;
            }

            while (v64);
          }

          else
          {
            v66 = MEMORY[0x277D84F90];
          }

          CGRect.dividedIntegral(fraction:from:)(CGRectMinXEdge, &v360, 0.5, *&v61, *(&v61 + 1), *&v62, *(&v62 + 1));
          v351 = v363;
          v352 = v362;
          CGRect.dividedIntegral(fraction:from:)(CGRectMinXEdge, &v360, 0.5, *&v360, *(&v360 + 1), *&v361, *(&v361 + 1));
          v240 = v362;
          v241 = v363;
          CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &v360, 0.5, *&v360, *(&v360 + 1), *&v361, *(&v361 + 1));
          v343 = v361;
          v344 = v360;
          v347 = v363;
          v348 = v362;
          CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &v360, 0.5, *&v240, *(&v240 + 1), *&v241, *(&v241 + 1));
          v345 = v361;
          v346 = v360;
          v349 = v363;
          v350 = v362;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v66 + 2) + 1, 1, v66);
          }

          v243 = *(v66 + 2);
          v242 = *(v66 + 3);
          v244 = v242 >> 1;
          v245 = v243 + 1;
          if (v242 >> 1 <= v243)
          {
            v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v242 > 1), v243 + 1, 1, v66);
            v242 = *(v66 + 3);
            v244 = v242 >> 1;
          }

          *(v66 + 2) = v245;
          v246 = v66;
          v247 = &v66[32 * v243];
          v248 = v343;
          *(v247 + 2) = v344;
          *(v247 + 3) = v248;
          v249 = v243 + 2;
          if (v244 < (v243 + 2))
          {
            v246 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v242 > 1), v243 + 2, 1, v246);
          }

          *(v246 + 2) = v249;
          v250 = &v246[32 * v245];
          v251 = v345;
          *(v250 + 2) = v346;
          *(v250 + 3) = v251;
          v252 = *(v246 + 3);
          v253 = v243 + 3;
          if ((v243 + 3) > (v252 >> 1))
          {
            v246 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v252 > 1), v243 + 3, 1, v246);
          }

          *(v246 + 2) = v253;
          v254 = &v246[32 * v249];
          v255 = v347;
          *(v254 + 2) = v348;
          *(v254 + 3) = v255;
          v256 = *(v246 + 3);
          if ((v243 + 4) > (v256 >> 1))
          {
            v246 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v256 > 1), v243 + 4, 1, v246);
          }

          *(v246 + 2) = v243 + 4;
          v19 = v246;
          v257 = &v246[32 * v253];
          v258 = v349;
          *(v257 + 2) = v350;
          *(v257 + 3) = v258;
          v260 = *(v246 + 2);
          v259 = *(v246 + 3);
LABEL_127:
          if (v260 >= v259 >> 1)
          {
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v259 > 1), v260 + 1, 1, v19);
          }

          *(v19 + 16) = v260 + 1;
          v268 = v19 + 32 * v260;
          v222 = v351;
          v221 = v352;
          goto LABEL_153;
        case 0xBuLL:
          CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &v360, 0.5, 0.0, 0.0, v15, v17);
          v133 = v362;
          v134 = v363;
          v135 = specialized MosaicGridLayout.firstRowRects(segmentFrame:)(*&v360, *(&v360 + 1), *&v361, *(&v361 + 1));
          v136 = *(v135 + 2);
          if (v136)
          {
            v137 = v135;
            v138 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
            v139 = *(v138 + 2);
            v140 = 32 * v139;
            v141 = (v137 + 48);
            do
            {
              v142 = *(v141 - 1);
              v143 = *v141;
              v144 = *(v138 + 3);
              v145 = v139 + 1;
              if (v139 >= v144 >> 1)
              {
                v352 = *(v141 - 1);
                v351 = v143;
                v147 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v144 > 1), v139 + 1, 1, v138);
                v143 = v351;
                v142 = v352;
                v138 = v147;
              }

              *(v138 + 2) = v145;
              v146 = &v138[v140];
              *(v146 + 2) = v142;
              *(v146 + 3) = v143;
              v140 += 32;
              v141 += 2;
              v139 = v145;
              --v136;
            }

            while (v136);
          }

          else
          {
            v138 = MEMORY[0x277D84F90];
          }

          CGRect.dividedIntegral(fraction:from:)(CGRectMinXEdge, &v360, 0.5, *&v133, *(&v133 + 1), *&v134, *(&v134 + 1));
          v277 = v362;
          v278 = v363;
          CGRect.dividedIntegral(fraction:from:)(CGRectMinXEdge, &v360, 0.5, *&v360, *(&v360 + 1), *&v361, *(&v361 + 1));
          v279 = v362;
          v280 = v363;
          CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &v360, 0.5, *&v360, *(&v360 + 1), *&v361, *(&v361 + 1));
          v345 = v361;
          v346 = v360;
          v349 = v363;
          v350 = v362;
          CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &v360, 0.5, *&v279, *(&v279 + 1), *&v280, *(&v280 + 1));
          v347 = v361;
          v348 = v360;
          v352 = v363;
          v351 = v362;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v138 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v138 + 2) + 1, 1, v138);
          }

          v282 = *(v138 + 2);
          v281 = *(v138 + 3);
          v283 = v281 >> 1;
          v284 = v282 + 1;
          if (v281 >> 1 <= v282)
          {
            v138 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v281 > 1), v282 + 1, 1, v138);
            v281 = *(v138 + 3);
            v283 = v281 >> 1;
          }

          *(v138 + 2) = v284;
          v285 = v138;
          v286 = &v138[32 * v282];
          v287 = v345;
          *(v286 + 2) = v346;
          *(v286 + 3) = v287;
          v288 = v282 + 2;
          if (v283 < (v282 + 2))
          {
            v285 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v281 > 1), v282 + 2, 1, v285);
          }

          *(v285 + 2) = v288;
          v289 = &v285[32 * v284];
          v290 = v347;
          *(v289 + 2) = v348;
          *(v289 + 3) = v290;
          v291 = *(v285 + 3);
          v292 = v282 + 3;
          if ((v282 + 3) > (v291 >> 1))
          {
            v285 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v291 > 1), v282 + 3, 1, v285);
          }

          *(v285 + 2) = v292;
          v293 = &v285[32 * v288];
          v294 = v349;
          *(v293 + 2) = v350;
          *(v293 + 3) = v294;
          v295 = *(v285 + 3);
          if ((v282 + 4) > (v295 >> 1))
          {
            v285 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v295 > 1), v282 + 4, 1, v285);
          }

          *(v285 + 2) = v282 + 4;
          v19 = v285;
          v296 = &v285[32 * v292];
          v297 = v352;
          *(v296 + 2) = v351;
          *(v296 + 3) = v297;
          CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &v360, 0.5, *&v277, *(&v277 + 1), *&v278, *(&v278 + 1));
          v298 = v360;
          v299 = v361;
          v221 = v362;
          v222 = v363;
          v301 = *(v19 + 16);
          v300 = *(v19 + 24);
          v302 = v300 >> 1;
          v233 = v301 + 1;
          if (v300 >> 1 <= v301)
          {
            v352 = v362;
            v351 = v363;
            v350 = v360;
            v349 = v361;
            v342 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v300 > 1), v301 + 1, 1, v19);
            v299 = v349;
            v298 = v350;
            v222 = v351;
            v221 = v352;
            v19 = v342;
            v300 = *(v342 + 3);
            v302 = v300 >> 1;
          }

          *(v19 + 16) = v233;
          v303 = v19 + 32 * v301;
          *(v303 + 32) = v298;
          *(v303 + 48) = v299;
          v237 = v301 + 2;
          if (v302 >= (v301 + 2))
          {
            goto LABEL_152;
          }

          v352 = v221;
          v351 = v222;
          v238 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v300 > 1), v301 + 2, 1, v19);
          v222 = v351;
          v239 = &v365;
          goto LABEL_175;
        case 0xCuLL:
          CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &v360, 0.5, 0.0, 0.0, v15, v17);
          v20 = v362;
          v21 = v363;
          v22 = specialized MosaicGridLayout.firstRowRects(segmentFrame:)(*&v360, *(&v360 + 1), *&v361, *(&v361 + 1));
          v23 = *(v22 + 2);
          if (v23)
          {
            v24 = v22;
            v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
            v26 = *(v25 + 2);
            v27 = 32 * v26;
            v28 = (v24 + 48);
            do
            {
              v29 = *(v28 - 1);
              v30 = *v28;
              v31 = *(v25 + 3);
              v32 = v26 + 1;
              if (v26 >= v31 >> 1)
              {
                v352 = *(v28 - 1);
                v351 = v30;
                v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v26 + 1, 1, v25);
                v30 = v351;
                v29 = v352;
                v25 = v34;
              }

              *(v25 + 2) = v32;
              v33 = &v25[v27];
              *(v33 + 2) = v29;
              *(v33 + 3) = v30;
              v27 += 32;
              v28 += 2;
              v26 = v32;
              --v23;
            }

            while (v23);
          }

          else
          {
            v25 = MEMORY[0x277D84F90];
          }

          CGRect.dividedIntegral(fraction:from:)(CGRectMinXEdge, &v360, 0.5, *&v20, *(&v20 + 1), *&v21, *(&v21 + 1));
          v163 = v362;
          v164 = v363;
          CGRect.dividedIntegral(fraction:from:)(CGRectMinXEdge, &v360, 0.5, *&v360, *(&v360 + 1), *&v361, *(&v361 + 1));
          v165 = v362;
          v166 = v363;
          CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &v360, 0.5, *&v360, *(&v360 + 1), *&v361, *(&v361 + 1));
          v345 = v361;
          v346 = v360;
          v349 = v363;
          v350 = v362;
          CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &v360, 0.5, *&v165, *(&v165 + 1), *&v166, *(&v166 + 1));
          v347 = v361;
          v348 = v360;
          v352 = v363;
          v351 = v362;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
          }

          v168 = *(v25 + 2);
          v167 = *(v25 + 3);
          v169 = v167 >> 1;
          v170 = v168 + 1;
          if (v167 >> 1 <= v168)
          {
            v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v167 > 1), v168 + 1, 1, v25);
            v167 = *(v25 + 3);
            v169 = v167 >> 1;
          }

          *(v25 + 2) = v170;
          v171 = v25;
          v172 = &v25[32 * v168];
          v173 = v345;
          *(v172 + 2) = v346;
          *(v172 + 3) = v173;
          v174 = v168 + 2;
          if (v169 < (v168 + 2))
          {
            v171 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v167 > 1), v168 + 2, 1, v171);
          }

          *(v171 + 2) = v174;
          v175 = &v171[32 * v170];
          v176 = v347;
          *(v175 + 2) = v348;
          *(v175 + 3) = v176;
          v177 = *(v171 + 3);
          v178 = v168 + 3;
          if ((v168 + 3) > (v177 >> 1))
          {
            v171 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v177 > 1), v168 + 3, 1, v171);
          }

          *(v171 + 2) = v178;
          v179 = &v171[32 * v174];
          v180 = v349;
          *(v179 + 2) = v350;
          *(v179 + 3) = v180;
          v181 = *(v171 + 3);
          if ((v168 + 4) > (v181 >> 1))
          {
            v171 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v181 > 1), v168 + 4, 1, v171);
          }

          *(v171 + 2) = v168 + 4;
          v182 = &v171[32 * v178];
          v183 = v352;
          *(v182 + 2) = v351;
          *(v182 + 3) = v183;
          CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &v360, 0.5, *&v163, *(&v163 + 1), *&v164, *(&v164 + 1));
          v352 = v363;
          v351 = v362;
          CGRect.dividedIntegral(fraction:from:)(CGRectMinXEdge, &v360, 0.5, *&v360, *(&v360 + 1), *&v361, *(&v361 + 1));
          v184 = v360;
          v185 = v361;
          v186 = v362;
          v187 = v363;
          v189 = *(v171 + 2);
          v188 = *(v171 + 3);
          v190 = v188 >> 1;
          v191 = v189 + 1;
          if (v188 >> 1 <= v189)
          {
            v350 = v362;
            v349 = v363;
            v348 = v360;
            v347 = v361;
            v337 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v188 > 1), v189 + 1, 1, v171);
            v185 = v347;
            v184 = v348;
            v187 = v349;
            v186 = v350;
            v171 = v337;
            v188 = *(v337 + 3);
            v190 = v188 >> 1;
          }

          *(v171 + 2) = v191;
          v192 = v171;
          v193 = &v171[32 * v189];
          *(v193 + 2) = v184;
          *(v193 + 3) = v185;
          v194 = v189 + 2;
          if (v190 < (v189 + 2))
          {
            v350 = v186;
            v349 = v187;
            v338 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v188 > 1), v189 + 2, 1, v171);
            v187 = v349;
            v186 = v350;
            v192 = v338;
          }

          *(v192 + 2) = v194;
          v195 = &v192[32 * v191];
LABEL_120:
          *(v195 + 2) = v186;
          *(v195 + 3) = v187;
          v266 = *(v192 + 3);
          if ((v189 + 3) > (v266 >> 1))
          {
            v192 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v266 > 1), v189 + 3, 1, v192);
          }

          *(v192 + 2) = v189 + 3;
          v267 = &v192[32 * v194];
          v19 = v192;
LABEL_137:
          v276 = v352;
          *(v267 + 2) = v351;
          *(v267 + 3) = v276;
          goto LABEL_154;
        case 0xDuLL:
          CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &v360, 0.5, 0.0, 0.0, v15, v17);
          v46 = v362;
          v47 = v363;
          v48 = specialized MosaicGridLayout.firstRowRects(segmentFrame:)(*&v360, *(&v360 + 1), *&v361, *(&v361 + 1));
          v49 = *(v48 + 2);
          if (v49)
          {
            v50 = v48;
            v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
            v52 = *(v51 + 2);
            v53 = 32 * v52;
            v54 = (v50 + 48);
            do
            {
              v55 = *(v54 - 1);
              v56 = *v54;
              v57 = *(v51 + 3);
              v58 = v52 + 1;
              if (v52 >= v57 >> 1)
              {
                v352 = *(v54 - 1);
                v351 = v56;
                v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v52 + 1, 1, v51);
                v56 = v351;
                v55 = v352;
                v51 = v60;
              }

              *(v51 + 2) = v58;
              v59 = &v51[v53];
              *(v59 + 2) = v55;
              *(v59 + 3) = v56;
              v53 += 32;
              v54 += 2;
              v52 = v58;
              --v49;
            }

            while (v49);
          }

          else
          {
            v51 = MEMORY[0x277D84F90];
          }

          CGRect.dividedIntegral(fraction:from:)(CGRectMinXEdge, &v360, 0.5, *&v46, *(&v46 + 1), *&v47, *(&v47 + 1));
          v196 = v362;
          v197 = v363;
          CGRect.dividedIntegral(fraction:from:)(CGRectMinXEdge, &v360, 0.5, *&v360, *(&v360 + 1), *&v361, *(&v361 + 1));
          v198 = v362;
          v199 = v363;
          CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &v360, 0.5, *&v360, *(&v360 + 1), *&v361, *(&v361 + 1));
          v345 = v361;
          v346 = v360;
          v349 = v363;
          v350 = v362;
          CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &v360, 0.5, *&v198, *(&v198 + 1), *&v199, *(&v199 + 1));
          v347 = v361;
          v348 = v360;
          v352 = v363;
          v351 = v362;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v51 + 2) + 1, 1, v51);
          }

          v201 = *(v51 + 2);
          v200 = *(v51 + 3);
          v202 = v200 >> 1;
          v203 = v201 + 1;
          if (v200 >> 1 <= v201)
          {
            v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v200 > 1), v201 + 1, 1, v51);
            v200 = *(v51 + 3);
            v202 = v200 >> 1;
          }

          *(v51 + 2) = v203;
          v204 = v51;
          v205 = &v51[32 * v201];
          v206 = v345;
          *(v205 + 2) = v346;
          *(v205 + 3) = v206;
          v207 = v201 + 2;
          if (v202 < (v201 + 2))
          {
            v204 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v200 > 1), v201 + 2, 1, v204);
          }

          *(v204 + 2) = v207;
          v208 = &v204[32 * v203];
          v209 = v347;
          *(v208 + 2) = v348;
          *(v208 + 3) = v209;
          v210 = *(v204 + 3);
          v211 = v201 + 3;
          if ((v201 + 3) > (v210 >> 1))
          {
            v204 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v210 > 1), v201 + 3, 1, v204);
          }

          *(v204 + 2) = v211;
          v212 = &v204[32 * v207];
          v213 = v349;
          *(v212 + 2) = v350;
          *(v212 + 3) = v213;
          v214 = *(v204 + 3);
          if ((v201 + 4) > (v214 >> 1))
          {
            v204 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v214 > 1), v201 + 4, 1, v204);
          }

          *(v204 + 2) = v201 + 4;
          v215 = &v204[32 * v211];
          v216 = v352;
          *(v215 + 2) = v351;
          *(v215 + 3) = v216;
          CGRect.dividedIntegral(fraction:from:)(CGRectMinXEdge, &v360, 0.5, *&v196, *(&v196 + 1), *&v197, *(&v197 + 1));
          v217 = v362;
          v218 = v363;
          CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &v360, 0.5, *&v360, *(&v360 + 1), *&v361, *(&v361 + 1));
          v349 = v361;
          v350 = v360;
          v351 = v363;
          v352 = v362;
          CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &v360, 0.5, *&v217, *(&v217 + 1), *&v218, *(&v218 + 1));
          v219 = v360;
          v220 = v361;
          v221 = v362;
          v222 = v363;
          v224 = *(v204 + 2);
          v223 = *(v204 + 3);
          v225 = v223 >> 1;
          v226 = v224 + 1;
          if (v223 >> 1 <= v224)
          {
            v348 = v362;
            v347 = v363;
            v346 = v360;
            v345 = v361;
            v339 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v223 > 1), v224 + 1, 1, v204);
            v220 = v345;
            v219 = v346;
            v222 = v347;
            v221 = v348;
            v204 = v339;
            v223 = *(v339 + 3);
            v225 = v223 >> 1;
          }

          *(v204 + 2) = v226;
          v227 = v204;
          v228 = &v204[32 * v224];
          v229 = v349;
          *(v228 + 2) = v350;
          *(v228 + 3) = v229;
          v230 = v224 + 2;
          if (v225 < (v224 + 2))
          {
            v348 = v221;
            v347 = v222;
            v346 = v219;
            v345 = v220;
            v340 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v223 > 1), v224 + 2, 1, v204);
            v220 = v345;
            v219 = v346;
            v222 = v347;
            v221 = v348;
            v227 = v340;
          }

          *(v227 + 2) = v230;
          v231 = &v227[32 * v226];
          *(v231 + 2) = v219;
          *(v231 + 3) = v220;
          v232 = *(v227 + 3);
          v233 = v224 + 3;
          if ((v224 + 3) > (v232 >> 1))
          {
            v348 = v221;
            v347 = v222;
            v341 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v232 > 1), v224 + 3, 1, v227);
            v222 = v347;
            v221 = v348;
            v227 = v341;
          }

          *(v227 + 2) = v233;
          v234 = &v227[32 * v230];
          v19 = v227;
          v235 = v351;
          *(v234 + 2) = v352;
          *(v234 + 3) = v235;
          v236 = *(v227 + 3);
          v237 = v224 + 4;
          if ((v224 + 4) <= (v236 >> 1))
          {
            goto LABEL_152;
          }

          v348 = v221;
          v347 = v222;
          v238 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v236 > 1), v224 + 4, 1, v227);
          v222 = v347;
          v239 = &v363;
LABEL_175:
          v221 = *(v239 - 16);
          v19 = v238;
LABEL_152:
          *(v19 + 16) = v237;
          v268 = v19 + 32 * v233;
LABEL_153:
          *(v268 + 32) = v221;
          *(v268 + 48) = v222;
LABEL_154:
          *&v352 = *(v19 + 16);
          if (v352)
          {
            *&v350 = v10;
            *&v351 = objc_opt_self();
            v304 = 0;
            v305 = *((*v6 & *v16) + 0x78);
            v306 = (v1 + 8);
            *&v349 = v19;
            v307 = (v19 + 56);
            v308 = 0.0;
            v309 = 0.0;
            v310 = 0.0;
            v311 = 0.0;
            do
            {
              v312 = *(v307 - 3);
              v313 = *(v307 - 2);
              v314 = *(v307 - 1);
              v315 = *v307;
              v316 = v357;
              MEMORY[0x21CE90B80](v304, 0);
              isa = IndexPath._bridgeToObjectiveC()().super.isa;
              v318 = [v351 layoutAttributesForCellWithIndexPath_];

              (*v306)(v316, v358);
              [v318 setFrame_];
              v319 = v318;
              v320 = v356(&v360);
              v322 = v321;
              MEMORY[0x21CE92260]();
              if (*((*v322 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v322 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              ++v304;
              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v323 = v320(&v360, 0);
              v366.origin.x = v305(v323);
              v368.origin.x = v308;
              v368.origin.y = v309;
              v368.size.width = v310;
              v368.size.height = v311;
              v367 = CGRectUnion(v366, v368);
              v354(v367.origin, *&v367.origin.y, v367.size, *&v367.size.height);

              v307 += 4;
              v308 = v312;
              v309 = v313;
              v310 = v314;
              v311 = v315;
            }

            while (v352 != v304);
          }

          else
          {
          }

          break;
        default:

          return;
      }
    }
  }
}

void CGRect.dividedIntegral(fraction:from:)(CGRectEdge a1@<W0>, uint64_t a2@<X8>, double a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>, CGFloat a7@<D4>)
{
  v23 = *MEMORY[0x277D85DE8];
  type metadata accessor for CGRectEdge(0);
  v14 = a6;
  if (a1 > CGRectMinYEdge)
  {
    if (a1 != CGRectMaxXEdge)
    {
      v14 = a7;
      if (a1 != CGRectMaxYEdge)
      {
        goto LABEL_13;
      }
    }

LABEL_7:
    v15 = ceil(v14 * a3);
    memset(&slice, 0, sizeof(slice));
    memset(&v21, 0, sizeof(v21));
    v24.origin.x = a4;
    v24.origin.y = a5;
    v24.size.width = a6;
    v24.size.height = a7;
    CGRectDivide(v24, &slice, &v21, v15, a1);
    size = slice.size;
    y = v21.origin.y;
    x = v21.origin.x;
    height = v21.size.height;
    width = v21.size.width;
    if (a1 > CGRectMinYEdge)
    {
      if (a1 != CGRectMaxYEdge)
      {
        goto LABEL_9;
      }
    }

    else if (a1 == CGRectMinXEdge)
    {
LABEL_9:
      x = v21.origin.x + 1.0;
      width = v21.size.width + -1.0;
LABEL_12:
      *a2 = slice.origin;
      *(a2 + 16) = size;
      *(a2 + 32) = x;
      *(a2 + 40) = y;
      *(a2 + 48) = width;
      *(a2 + 56) = height;
      return;
    }

    y = v21.origin.y + 1.0;
    height = v21.size.height + -1.0;
    goto LABEL_12;
  }

  if (a1 == CGRectMinXEdge)
  {
    goto LABEL_7;
  }

  v14 = a7;
  if (a1 == CGRectMinYEdge)
  {
    goto LABEL_7;
  }

LABEL_13:
  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
}

__C::CGRect __swiftcall MosaicGridLayout.firstRect(segmentFrame:)(__C::CGRect segmentFrame)
{
  v7 = *MEMORY[0x277D85DE8];
  memset(&slice, 0, sizeof(slice));
  memset(&v5, 0, sizeof(v5));
  CGRectDivide(segmentFrame, &slice, &v5, ceil(segmentFrame.size.width * 0.5), CGRectMinXEdge);
  x = slice.origin.x;
  y = slice.origin.y;
  width = slice.size.width;
  height = slice.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

uint64_t MosaicGridLayout.quarterRects(of:)(double a1, double a2, double a3, double a4)
{
  v23 = *MEMORY[0x277D85DE8];
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(*&a1, &slice, &remainder, ceil(a3 * 0.5), CGRectMinXEdge);
  v24 = slice;
  y = remainder.origin.y;
  height = remainder.size.height;
  v6 = remainder.origin.x + 1.0;
  v7 = remainder.size.width + -1.0;
  v8 = ceil(slice.size.height * 0.5);
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v24, &slice, &remainder, v8, CGRectMinYEdge);
  width = remainder.size.width;
  x = remainder.origin.x;
  v9 = remainder.origin.y + 1.0;
  v10 = remainder.size.height + -1.0;
  v18 = slice;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v25.origin.x = v6;
  v25.origin.y = y;
  v25.size.width = v7;
  v25.size.height = height;
  CGRectDivide(v25, &slice, &remainder, ceil(height * 0.5), CGRectMinYEdge);
  v11 = remainder.origin.x;
  v12 = remainder.size.width;
  v13 = remainder.origin.y + 1.0;
  v14 = remainder.size.height + -1.0;
  size = slice.size;
  origin = slice.origin;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
  result = swift_allocObject();
  *(result + 16) = xmmword_2165965F0;
  *(result + 32) = v18;
  *(result + 64) = origin;
  *(result + 80) = size;
  *(result + 96) = x;
  *(result + 104) = v9;
  *(result + 112) = width;
  *(result + 120) = v10;
  *(result + 128) = v11;
  *(result + 136) = v13;
  *(result + 144) = v12;
  *(result + 152) = v14;
  return result;
}

Swift::Bool __swiftcall MosaicGridLayout.shouldInvalidateLayout(forBoundsChange:)(__C::CGRect forBoundsChange)
{
  height = forBoundsChange.size.height;
  width = forBoundsChange.size.width;
  v4 = [v1 collectionView];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];
    v8.width = width;
    v8.height = height;
    v6 = CGSizeEqualToSize(v8, v9);

    LOBYTE(v4) = !v6;
  }

  return v4;
}

uint64_t MosaicGridLayout.layoutAttributesForItem(at:)()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  v2 = v1();
  if (v2 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (IndexPath.item.getter() >= v3)
  {
    return 0;
  }

  v4 = IndexPath.item.getter();
  result = v1();
  if ((result & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x21CE93180](v4, result);
    goto LABEL_8;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(result + 8 * v4 + 32);
LABEL_8:
    v7 = v6;

    return v7;
  }

  __break(1u);
  return result;
}

Swift::OpaquePointer_optional __swiftcall MosaicGridLayout.layoutAttributesForElements(in:)(__C::CGRect in)
{
  v4 = v1;
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  v49 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D85000];
  v10 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  v11 = (*MEMORY[0x277D85000] & *v1) + 96;
  v12 = v10();
  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);

    goto LABEL_3;
  }

  while (1)
  {
    v16 = v12;
    v13 = __CocoaSet.count.getter();

    if (v13 < 0)
    {
      break;
    }

LABEL_3:
    if (!v13 || (v15 = (*((*v9 & *v4) + 0x98))(0, v13 - 1, x, y, width, height), v14))
    {
      v9 = MEMORY[0x277D84F90];
      goto LABEL_55;
    }

    v3 = v15;
    v16 = v4;
    v17 = v10();
    if (v3 < 0)
    {
      goto LABEL_61;
    }

    v16 = v17;
    v18 = v17 & 0xFFFFFFFFFFFFFF8;
    v13 = v17 >> 62;
    if (v17 >> 62)
    {
      goto LABEL_62;
    }

    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) < v3)
    {
      goto LABEL_67;
    }

LABEL_9:
    if ((v16 & 0xC000000000000001) == 0 || v3 == 0)
    {
    }

    else
    {
      type metadata accessor for UICollectionViewLayoutAttributes();

      v20 = 0;
      do
      {
        v21 = v20 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v20);
        v20 = v21;
      }

      while (v3 != v21);
    }

    v48 = v10;
    if (v13)
    {
      _CocoaArrayWrapper.subscript.getter();
      v10 = v24;
      v22 = v25;
      v27 = v26;

      v23 = v27 >> 1;
    }

    else
    {
      v22 = 0;
      v10 = ((v16 & 0xFFFFFFFFFFFFFF8) + 32);
      v23 = v3;
    }

    v2 = &selRef_setDeliversTouchesForGesturesToSuperview_;
    v9 = MEMORY[0x277D84F90];
    if (v23 == v22)
    {
LABEL_30:
      v33 = swift_unknownObjectRelease();
      v34 = (v48)(v33);
      v11 = v34;
      v13 = v34 >> 62;
      if (v34 >> 62)
      {
        goto LABEL_68;
      }

      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v35 < v3)
      {
        goto LABEL_72;
      }

      goto LABEL_32;
    }

    v28 = v23;
    while (!__OFSUB__(v28--, 1))
    {
      if (v28 < v22 || v28 >= v23)
      {
        goto LABEL_57;
      }

      v30 = *(v10 + v28);
      [v30 frame];
      MaxY = CGRectGetMaxY(v51);
      v52.origin.x = x;
      v52.origin.y = y;
      v52.size.width = width;
      v52.size.height = height;
      if (CGRectGetMinY(v52) > MaxY)
      {

        goto LABEL_30;
      }

      v32 = v30;
      MEMORY[0x21CE92260]();
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v9 = v49;
      if (v28 == v22)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  if (v16 < 0)
  {
    v9 = v16;
  }

  else
  {
    v9 = v18;
  }

  v34 = __CocoaSet.count.getter();
  if (v34 < 0)
  {
    goto LABEL_74;
  }

  if (__CocoaSet.count.getter() >= v3)
  {
    goto LABEL_9;
  }

LABEL_67:
  __break(1u);
LABEL_68:
  v34 = __CocoaSet.count.getter();
  if (v34 < v3)
  {
    goto LABEL_75;
  }

  v35 = v34;
  v34 = __CocoaSet.count.getter();
  if (v34 < v3)
  {
    goto LABEL_76;
  }

  v34 = __CocoaSet.count.getter();
  if (v34 >= v35)
  {
LABEL_32:
    if ((v11 & 0xC000000000000001) == 0 || v3 == v35)
    {
    }

    else
    {
      if (v3 >= v35)
      {
        goto LABEL_73;
      }

      type metadata accessor for UICollectionViewLayoutAttributes();

      v36 = v3;
      do
      {
        v37 = v36 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v36);
        v36 = v37;
      }

      while (v35 != v37);
    }

    if (v13)
    {
      v4 = _CocoaArrayWrapper.subscript.getter();
      v38 = v39;
      v3 = v40;
      v42 = v41;

      v35 = v42 >> 1;
    }

    else
    {
      v4 = (v11 & 0xFFFFFFFFFFFFFF8);
      v38 = (v11 & 0xFFFFFFFFFFFFFF8) + 32;
    }

    v12 = swift_unknownObjectRetain();
    v11 = v35 - v3;
    if (v35 != v3)
    {
      if (v3 <= v35)
      {
        v43 = v35;
      }

      else
      {
        v43 = v3;
      }

      v10 = (v43 - v3);
      v44 = (v38 + 8 * v3);
      while (v10)
      {
        v45 = *v44;
        [v45 v2[29]];
        MinY = CGRectGetMinY(v53);
        v54.origin.x = x;
        v54.origin.y = y;
        v54.size.width = width;
        v54.size.height = height;
        if (MinY > CGRectGetMaxY(v54))
        {

          goto LABEL_54;
        }

        v47 = v45;
        MEMORY[0x21CE92260]();
        if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v9 = v49;
        v10 = (v10 - 1);
        ++v44;
        if (!--v11)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_58;
    }

LABEL_54:
    swift_unknownObjectRelease_n();
LABEL_55:
    v34 = v9;
    goto LABEL_77;
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  result.value._rawValue = v34;
  result.is_nil = v14;
  return result;
}

double MosaicGridLayout.assetGridHeight(assetCount:totalWidth:)(uint64_t a1, double a2)
{
  if (!a1)
  {
    return 0.0;
  }

  result = (a2 + -4.0) * 0.5;
  if (a1 > 5)
  {
    return result + result;
  }

  return result;
}

Swift::Int_optional __swiftcall MosaicGridLayout.binSearch(_:start:end:)(__C::CGRect _, Swift::Int start, Swift::Int end)
{
  if (end >= start)
  {
    v14 = start + end;
    if (__OFADD__(start, end))
    {
      __break(1u);
    }

    else
    {
      height = _.size.height;
      width = _.size.width;
      y = _.origin.y;
      x = _.origin.x;
      v6 = start;
      v5 = end;
      v3 = v14 / 2;
      v8 = MEMORY[0x277D85000];
      v15 = (*((*MEMORY[0x277D85000] & *v4) + 0x60))();
      v7 = v15;
      if ((v15 & 0xC000000000000001) == 0)
      {
        if (v14 < -1)
        {
          __break(1u);
        }

        else if (v3 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v17 = *(v15 + 8 * v3 + 32);
          goto LABEL_8;
        }

        __break(1u);
        goto LABEL_19;
      }
    }

    v17 = MEMORY[0x21CE93180](v3, v7, _.origin, *&_.origin.y, _.size, *&_.size.height);
LABEL_8:
    v18 = v17;

    [v18 frame];
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    if (CGRectIntersectsRect(v28, v31))
    {

      v13 = 0;
    }

    else
    {
      [v18 frame];
      MaxY = CGRectGetMaxY(v29);
      v30.origin.x = x;
      v30.origin.y = y;
      v30.size.width = width;
      v30.size.height = height;
      if (MaxY >= CGRectGetMinY(v30))
      {
        v25 = v3 - 1;
        v20.n128_f64[0] = x;
        v21.n128_f64[0] = y;
        v22.n128_f64[0] = width;
        v23.n128_f64[0] = height;
        v24 = v6;
      }

      else
      {
        v24 = v3 + 1;
        v20.n128_f64[0] = x;
        v21.n128_f64[0] = y;
        v22.n128_f64[0] = width;
        v25 = v5;
        v23.n128_f64[0] = height;
      }

      v3 = (*((*v8 & *v4) + 0x98))(v24, v25, v20, v21, v22, v23);
      v13 = v26;
    }

    goto LABEL_14;
  }

  v3 = 0;
  v13 = 1;
LABEL_14:
  v16 = v13 & 1;
  v15 = v3;
LABEL_19:
  result.value = v15;
  result.is_nil = v16;
  return result;
}

id MosaicGridLayout.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MosaicGridLayout.init()()
{
  *&v0[OBJC_IVAR____TtC9MomentsUI16MosaicGridLayout_cachedAttributes] = MEMORY[0x277D84F90];
  v1 = &v0[OBJC_IVAR____TtC9MomentsUI16MosaicGridLayout_contentBounds];
  v2 = type metadata accessor for MosaicGridLayout();
  *v1 = 0u;
  *(v1 + 1) = 0u;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init);
}

id MosaicGridLayout.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id MosaicGridLayout.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC9MomentsUI16MosaicGridLayout_cachedAttributes] = MEMORY[0x277D84F90];
  v3 = &v1[OBJC_IVAR____TtC9MomentsUI16MosaicGridLayout_contentBounds];
  v4 = type metadata accessor for MosaicGridLayout();
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id MosaicGridLayout.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MosaicGridLayout();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *specialized MosaicGridLayout.firstRowRects(segmentFrame:)(double a1, double a2, double a3, double a4)
{
  v54 = *MEMORY[0x277D85DE8];
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(*&a1, &slice, &remainder, ceil(a3 * 0.5), CGRectMinXEdge);
  size = slice.size;
  origin = slice.origin;
  y = remainder.origin.y;
  height = remainder.size.height;
  v6 = remainder.origin.x + 1.0;
  v7 = remainder.size.width + -1.0;
  v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[32 * v10];
  *(v11 + 2) = origin;
  *(v11 + 3) = size;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v55.origin.x = v6;
  v55.origin.y = y;
  v55.size.width = v7;
  v55.size.height = height;
  CGRectDivide(v55, &slice, &remainder, ceil(v7 * 0.5), CGRectMinXEdge);
  v56 = slice;
  v12 = remainder.origin.y;
  v13 = remainder.size.height;
  v14 = remainder.origin.x + 1.0;
  v15 = remainder.size.width + -1.0;
  v16 = ceil(slice.size.height * 0.5);
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v56, &slice, &remainder, v16, CGRectMinYEdge);
  v47 = slice.size;
  v49 = slice.origin;
  x = remainder.origin.x;
  v17 = remainder.origin.y;
  v19 = remainder.size.height;
  width = remainder.size.width;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v57.origin.x = v14;
  v57.origin.y = v12;
  v57.size.width = v15;
  v57.size.height = v13;
  CGRectDivide(v57, &slice, &remainder, ceil(v13 * 0.5), CGRectMinYEdge);
  v20 = slice.origin;
  v21 = slice.size;
  v22 = remainder.origin.x;
  v23 = remainder.origin.y;
  v24 = remainder.size.width;
  v25 = remainder.size.height;
  v27 = *(v8 + 2);
  v26 = *(v8 + 3);
  v28 = v26 >> 1;
  v29 = v27 + 1;
  if (v26 >> 1 <= v27)
  {
    v43 = slice.size;
    v45 = slice.origin;
    v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v8);
    v21 = v43;
    v20 = v45;
    v8 = v41;
    v26 = *(v41 + 3);
    v28 = v26 >> 1;
  }

  *(v8 + 2) = v29;
  v30 = &v8[32 * v27];
  *(v30 + 2) = v49;
  *(v30 + 3) = v47;
  v31 = v27 + 2;
  if (v28 < (v27 + 2))
  {
    v44 = v21;
    v46 = v20;
    v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 2, 1, v8);
    v21 = v44;
    v20 = v46;
    v8 = v42;
  }

  v32 = v17 + 1.0;
  v33 = v19 + -1.0;
  *(v8 + 2) = v31;
  v34 = &v8[32 * v29];
  *(v34 + 2) = v20;
  *(v34 + 3) = v21;
  v35 = *(v8 + 3);
  v36 = v27 + 3;
  if ((v27 + 3) > (v35 >> 1))
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v27 + 3, 1, v8);
  }

  *(v8 + 2) = v36;
  v37 = &v8[32 * v31];
  v37[4] = x;
  v37[5] = v32;
  v37[6] = width;
  v37[7] = v33;
  v38 = *(v8 + 3);
  if ((v27 + 4) > (v38 >> 1))
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v27 + 4, 1, v8);
  }

  *(v8 + 2) = v27 + 4;
  v39 = &v8[32 * v36];
  v39[4] = v22;
  v39[5] = v23 + 1.0;
  v39[6] = v24;
  v39[7] = v25 + -1.0;
  return v8;
}

unint64_t type metadata accessor for UICollectionViewLayoutAttributes()
{
  result = lazy cache variable for type metadata for UICollectionViewLayoutAttributes;
  if (!lazy cache variable for type metadata for UICollectionViewLayoutAttributes)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UICollectionViewLayoutAttributes);
  }

  return result;
}

id AssetView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void AssetView.viewModel.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*AssetView.viewModel.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MomentsUI9AssetView_viewModel;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return AssetView.viewModel.modify;
}

void AssetView.viewModel.modify(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t AssetView.viewStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t AssetView.viewStyle.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t AssetView.suggestionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI9AssetView_suggestionID;
  swift_beginAccess();
  return outlined init with copy of DateInterval?(v1 + v3, a1, &_s10Foundation4UUIDVSgMd);
}

uint64_t AssetView.suggestionID.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI9AssetView_suggestionID;
  swift_beginAccess();
  outlined assign with take of UUID?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t AssetView.representativeSizeClass.getter()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 == 2)
  {
    return 2;
  }

  v4 = [v0 traitCollection];
  v5 = [v4 verticalSizeClass];

  if (v5 == 2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t AssetView.updateViewModelAndRender(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[8] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[9] = v5;
  v2[10] = v4;

  return MEMORY[0x2822009F8](AssetView.updateViewModelAndRender(_:), v5, v4);
}

uint64_t AssetView.updateViewModelAndRender(_:)()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & **(v0 + 24)) + 0x70))();
  *(v0 + 88) = v2;
  if (v2)
  {
    v3 = v2;
    (*((*v1 & **(v0 + 24)) + 0x100))();
    v4 = *((*v1 & *v3) + 0x1A8);
    v17 = (v4 + *v4);
    v5 = swift_task_alloc();
    *(v0 + 96) = v5;
    *v5 = v0;
    v5[1] = AssetView.updateViewModelAndRender(_:);

    return v17();
  }

  else
  {

    v9 = *(v0 + 24);
    v8 = *(v0 + 32);
    v10 = *(v0 + 16);
    (*((*v1 & *v9) + 0xE8))(v7);
    v11 = *((*v1 & *v9) + 0x78);
    v12 = v10;
    v11(v10);
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 32) = v14;
    *(v15 + 40) = 9;
    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in AssetView.performViewModelUpdate(style:), v15);

    outlined destroy of UTType?(v8, &_sScPSgMd);

    v16 = *(v0 + 8);

    return v16();
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x2822009F8](AssetView.updateViewModelAndRender(_:), v3, v2);
}

{
  v38 = v0;

  if (one-time initialization token for views != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[3];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static CommonLogger.views);
  v4 = v2;
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[11];
  if (v8)
  {
    v35 = v0[11];
    v11 = v0[6];
    v10 = v0[7];
    v12 = v0[5];
    v13 = v0[3];
    v14 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = v36;
    *v14 = 136315394;
    v15 = [v13 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v37);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    (*(v11 + 16))(v10, v35 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid, v12);
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    (*(v11 + 8))(v10, v12);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v37);

    *(v14 + 14) = v23;
    _os_log_impl(&dword_21607C000, v6, v7, "[%s] cleaning up old viewModel, uuid=%s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v36, -1, -1);
    MEMORY[0x21CE94770](v14, -1, -1);
  }

  else
  {
  }

  v25 = v0[3];
  v24 = v0[4];
  v26 = v0[2];
  v27 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v25) + 0xE8))();
  v28 = *((*v27 & *v25) + 0x78);
  v29 = v26;
  v28(v26);
  v30 = type metadata accessor for TaskPriority();
  (*(*(v30 - 8) + 56))(v24, 1, 1, v30);
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v31;
  *(v32 + 40) = 9;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v24, &async function pointer to partial apply for closure #1 in AssetView.performViewModelUpdate(style:), v32);

  outlined destroy of UTType?(v24, &_sScPSgMd);

  v33 = v0[1];

  return v33();
}

uint64_t _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of DateInterval?(a3, v25 - v10, &_sScPSgMd);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of UTType?(v11, &_sScPSgMd);
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