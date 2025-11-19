uint64_t GridView.Base.ViewModel.__deallocating_deinit()
{

  outlined destroy of GridView.Base.ViewModel.ImageConfiguration(v0 + OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__imageConfiguration, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration);
  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v0 + OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__accessory, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSgMd);

  v1 = OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

Swift::Int GridView.Base.ViewModel.hashValue.getter()
{
  Hasher.init(_seed:)();
  GridView.Base.ViewModel.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Identifiable.id.getter in conformance GridView.Base.ViewModel@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GridView.Base.ViewModel()
{
  Hasher.init(_seed:)();
  GridView.Base.ViewModel.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GridView.Base.ViewModel()
{
  Hasher.init(_seed:)();
  GridView.Base.ViewModel.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t GridView.Base.BaseDataSource.viewModels.getter()
{
  specialized GridView.Base.BaseDataSource.viewModels.getter();
}

uint64_t GridView.Base.BaseDataSource.viewModels.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t key path getter for GridView.Base.BaseDataSource.preAction : <A>GridView.Base.BaseDataSource<A>@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = specialized GridView.Base.BaseDataSource.preAction.getter();
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    v6 = swift_allocObject();
    v2 = v4;
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a1 = v7;
  a1[1] = v6;

  return _sxRi_zRi0_zlyytIsegr_SgWOy_0(v2);
}

uint64_t key path setter for GridView.Base.BaseDataSource.preAction : <A>GridView.Base.BaseDataSource<A>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  _sxRi_zRi0_zlyytIsegr_SgWOy_0(v1);
  return GridView.Base.BaseDataSource.preAction.setter(v4, v3);
}

uint64_t GridView.Base.BaseDataSource.preAction.getter()
{
  v0 = specialized GridView.Base.BaseDataSource.preAction.getter();
  _sxRi_zRi0_zlyytIsegr_SgWOy_0(v0);
  return v0;
}

uint64_t GridView.Base.BaseDataSource.preAction.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v5);
}

void *GridView.Base.BaseDataSource.__allocating_init(viewModels:)(uint64_t a1)
{
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = a1;
  return result;
}

void *GridView.Base.BaseDataSource.init(viewModels:)(uint64_t a1)
{
  v1[3] = 0;
  v1[4] = 0;
  v1[2] = a1;
  return v1;
}

Swift::UInt __swiftcall GridView.Base.BaseDataSource.numberOfViews()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (!(v1 >> 62))
  {
    return *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v1 < 0)
  {
    v3 = *(v0 + 16);
  }

  else
  {
    v3 = v1 & 0xFFFFFFFFFFFFFF8;
  }

  result = MEMORY[0x245D2BF50](v3);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall GridView.Base.BaseDataSource.update(cell:atIndex:)(UIView *cell, Swift::UInt atIndex)
{
  type metadata accessor for GridView.Base.BaseView();
  if (swift_dynamicCastClass())
  {
    v4 = cell;

    v5 = GridView.Base.BaseDataSource.model(atIndex:)(atIndex);
    GridView.Base.ViewModel.update(with:)(v5);
  }
}

uint64_t GridView.Base.BaseDataSource.model(atIndex:)(unint64_t a1)
{
  v3 = v1;
  v5 = *v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v33 - v7;
  v9 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_beginAccess();
  v2 = v3[2];
  v41 = v5;
  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_7:

    v13 = MEMORY[0x245D2BEE0](a1, v2);

    goto LABEL_5;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v13 = *(v2 + 8 * a1 + 32);

LABEL_5:
    v14 = *(v13 + 16);
    v39 = *(v13 + 24);
    v40 = v14;
    swift_getKeyPath();
    v44 = v13;
    lazy protocol witness table accessor for type GridView.Base.ViewModel and conformance GridView.Base.ViewModel(&lazy protocol witness table cache variable for type GridView.Base.ViewModel and conformance GridView.Base.ViewModel, type metadata accessor for GridView.Base.ViewModel);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v15 = *(v13 + 32);
    v37 = *(v13 + 40);
    v38 = v15;
    swift_getKeyPath();
    v44 = v13;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v16 = *(v13 + 48);
    v35 = *(v13 + 56);
    v36 = v16;
    swift_getKeyPath();
    v44 = v13;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v34 = *(v13 + 64);
    swift_getKeyPath();
    v44 = v13;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v17 = OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__imageConfiguration;
    swift_beginAccess();
    outlined init with copy of GridView.Base.ViewModel.ImageConfiguration(v13 + v17, v11, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration);
    swift_getKeyPath();
    v43 = v13;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v18 = OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__accessory;
    swift_beginAccess();
    outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v13 + v18, v8, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSgMd);
    swift_getKeyPath();
    v42 = v13;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v33 = *(v13 + OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__allowsTouches);
    swift_getKeyPath();
    v42 = v13;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v19 = *(v13 + OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__disabledAppearance);
    swift_getKeyPath();
    v42 = v13;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v20 = *(v13 + OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__isPressed);
    swift_getKeyPath();
    v42 = v13;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v21 = *(v13 + OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__canStayPressed);
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    v24 = v41;
    *(v23 + 2) = *(v41 + 80);
    *(v23 + 3) = *(v24 + 88);
    *(v23 + 4) = v22;
    *(v23 + 5) = v13;
    type metadata accessor for GridView.Base.ViewModel(0);
    v25 = swift_allocObject();
    v26 = OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__accessory;
    v27 = type metadata accessor for GridView.Base.ViewModel.Accessory(0);
    (*(*(v27 - 8) + 56))(v25 + v26, 1, 1, v27);
    ObservationRegistrar.init()();
    v28 = v39;
    *(v25 + 16) = v40;
    *(v25 + 24) = v28;
    v29 = v37;
    *(v25 + 32) = v38;
    *(v25 + 40) = v29;
    v30 = v35;
    *(v25 + 48) = v36;
    *(v25 + 56) = v30;
    *(v25 + 64) = v34;
    outlined init with take of GridView.Base.ViewModel.ImageConfiguration(v11, v25 + OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__imageConfiguration, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration);
    v31 = OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__accessory;

    outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v25 + v31, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSgMd);
    outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v8, v25 + v31, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSgMd);

    *(v25 + OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__allowsTouches) = v33;
    *(v25 + OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__disabledAppearance) = v19;
    *(v25 + OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__isPressed) = v20;
    *(v25 + OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__canStayPressed) = v21;
    v32 = (v25 + OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__action);
    *v32 = partial apply for closure #1 in GridView.Base.BaseDataSource.model(atIndex:);
    v32[1] = v23;
    return v25;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in GridView.Base.BaseDataSource.model(atIndex:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = *(v4 + 24);
    _sxRi_zRi0_zlyytIsegr_SgWOy_0(v5);

    if (v5)
    {
      v5(v6);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v5);
    }
  }

  swift_getKeyPath();
  lazy protocol witness table accessor for type GridView.Base.ViewModel and conformance GridView.Base.ViewModel(&lazy protocol witness table cache variable for type GridView.Base.ViewModel and conformance GridView.Base.ViewModel, type metadata accessor for GridView.Base.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(a2 + OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__action);

  v7(v8);
}

void __swiftcall GridView.Base.BaseDataSource.view(atIndex:)(UIView *__return_ptr retstr, Swift::UInt atIndex)
{
  type metadata accessor for GridView.Base.BaseView();
  v3 = GridView.Base.BaseDataSource.model(atIndex:)(atIndex);
  specialized GridView.Base.BaseView.__allocating_init(viewModel:)(v3);
}

uint64_t GridView.Base.BaseDataSource.deinit()
{

  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 24));
  return v0;
}

uint64_t GridView.Base.BaseDataSource.__deallocating_deinit()
{

  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t (*protocol witness for GridView.Base.DataSource.viewModels.modify in conformance GridView.Base.BaseDataSource<A>(uint64_t *a1))()
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
  *(v2 + 32) = GridView.Base.BaseDataSource.viewModels.modify();
  return protocol witness for GridView.Base.DataSource.viewModels.modify in conformance GridView.Base.BaseDataSource<A>;
}

uint64_t (*protocol witness for GridView.Base.DataSource.preAction.modify in conformance GridView.Base.BaseDataSource<A>(uint64_t *a1))()
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
  *(v2 + 32) = GridView.Base.BaseDataSource.preAction.modify();
  return protocol witness for GridView.Base.DataSource.preAction.modify in conformance GridView.Base.BaseDataSource<A>;
}

void protocol witness for GridView.Base.DataSource.viewModels.modify in conformance GridView.Base.BaseDataSource<A>(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t protocol witness for GridView.DataSource.model(atIndex:) in conformance GridView.Base.BaseDataSource<A>@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = GridView.Base.BaseDataSource.model(atIndex:)(a1);
  *a2 = result;
  return result;
}

id GridView.Base.BaseView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GridView.Base.BaseView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t GridView.Base.Artwork.body.getter@<X0>(uint64_t a1@<X8>)
{
  v84 = a1;
  v1 = type metadata accessor for ArtworkImage();
  v73 = *(v1 - 8);
  v74 = v1;
  MEMORY[0x28223BE20](v1);
  v72 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV01_ab9Internal_cD0E18artworkPlaceholderyQrx0aB00E0VSg_So6CGSizeV0cD05ColorVtcAL4ViewRzlFQOy_07CarPlayD004GridL0C4BaseO0I0VSgQo_Md);
  v76 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v75 = &v66 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV0H0O11PlaceholderOSgMd);
  v68 = *(v4 - 8);
  v5 = *(v68 + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v69 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v71 = &v66 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v70 = &v66 - v12;
  v13 = type metadata accessor for Image.ResizingMode();
  v67 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACy07CarPlayB08GridViewC4BaseO7ArtworkV11SystemImageVACyAA0M0VAPGG010_MusicKit_aB00kM0V01_no9Internal_aB0E18artworkPlaceholderyQrx0nO0AKVSg_So6CGSizeVAA5ColorVtcAA0I0RzlFQOy_AJ0R0VSgQo__GMd);
  MEMORY[0x28223BE20](v80);
  v82 = &v66 - v16;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07CarPlayB08GridViewC4BaseO7ArtworkV11SystemImageVACyAA0M0VAPG_GMd);
  MEMORY[0x28223BE20](v77);
  v18 = &v66 - v17;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07CarPlayB08GridViewC4BaseO7ArtworkV11SystemImageVACyAA0L0VANGGMd);
  MEMORY[0x28223BE20](v81);
  v78 = &v66 - v19;
  v20 = type metadata accessor for GridView.Base.Artwork.SystemImage(0);
  MEMORY[0x28223BE20](v20);
  v22 = (&v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5ImageV5ScaleOSgMd);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v66 - v24;
  v26 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image(0);
  MEMORY[0x28223BE20](v26);
  v28 = (&v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of GridView.Base.ViewModel.ImageConfiguration(v79, v28, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v30 = *v28;

      v31 = [v30 isSymbolImage];
      v79 = v30;
      v32 = Image.init(uiImage:)();
      if (v31)
      {
        v85 = v32;
        v86 = 0;
      }

      else
      {
        v58 = v67;
        (*(v67 + 104))(v15, *MEMORY[0x277CE0FE0], v13);
        v59 = Image.resizable(capInsets:resizingMode:)();

        (*(v58 + 8))(v15, v13);
        v85 = v59;
        v86 = 1;
      }

      _ConditionalContent<>.init(storage:)();
      v60 = v88;
      v61 = v82;
      *v18 = v87;
      v18[8] = v60;
      swift_storeEnumTagMultiPayload();
      swift_retain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA5ImageVAEGMd);
      lazy protocol witness table accessor for type GridView.Base.ViewModel and conformance GridView.Base.ViewModel(&lazy protocol witness table cache variable for type GridView.Base.Artwork.SystemImage and conformance GridView.Base.Artwork.SystemImage, type metadata accessor for GridView.Base.Artwork.SystemImage);
      lazy protocol witness table accessor for type _ConditionalContent<Image, Image> and conformance <> _ConditionalContent<A, B>();
      v62 = v78;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v62, v61, &_s7SwiftUI19_ConditionalContentVy07CarPlayB08GridViewC4BaseO7ArtworkV11SystemImageVACyAA0L0VANGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<GridView.Base.Artwork.SystemImage, _ConditionalContent<Image, Image>> and conformance <> _ConditionalContent<A, B>();
      v63 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9CarPlayUI8GridViewC4BaseO11PlaceholderVSgMd);
      v64 = lazy protocol witness table accessor for type GridView.Base.Placeholder? and conformance <A> A?();
      v87 = v63;
      v88 = v64;
      swift_getOpaqueTypeConformance2();
      _ConditionalContent<>.init(storage:)();

      v44 = v62;
      v45 = &_s7SwiftUI19_ConditionalContentVy07CarPlayB08GridViewC4BaseO7ArtworkV11SystemImageVACyAA0L0VANGGMd;
    }

    else
    {
      v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSg_9CarPlayUI8GridViewC4BaseO0H5ModelC18ImageConfigurationV0K0O11PlaceholderOSgtMd) + 48);
      v47 = v70;
      outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v28, v70, &_s8MusicKit7ArtworkVSgMd);
      v48 = v71;
      outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v28 + v46, v71, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV0H0O11PlaceholderOSgMd);
      outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v47, v11, &_s8MusicKit7ArtworkVSgMd);
      v49 = v72;
      ArtworkImage.init(_:)();
      v50 = v69;
      outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v48, v69, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV0H0O11PlaceholderOSgMd);
      v51 = (*(v68 + 80) + 16) & ~*(v68 + 80);
      v52 = swift_allocObject();
      outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v50, v52 + v51, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV0H0O11PlaceholderOSgMd);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO11PlaceholderVSgMd);
      v54 = lazy protocol witness table accessor for type GridView.Base.Placeholder? and conformance <A> A?();
      v55 = v75;
      ArtworkImage.artworkPlaceholder<A>(_:)();

      (*(v73 + 8))(v49, v74);
      v56 = v76;
      v57 = v83;
      (*(v76 + 16))(v82, v55, v83);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<GridView.Base.Artwork.SystemImage, _ConditionalContent<Image, Image>> and conformance <> _ConditionalContent<A, B>();
      v87 = v53;
      v88 = v54;
      swift_getOpaqueTypeConformance2();
      _ConditionalContent<>.init(storage:)();
      (*(v56 + 8))(v55, v57);
      outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v48, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV0H0O11PlaceholderOSgMd);
      v44 = v47;
      v45 = &_s8MusicKit7ArtworkVSgMd;
    }
  }

  else
  {
    v33 = *v28;
    v34 = v28[1];
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_7SwiftUI5ImageV5ScaleOSgAA4FontV6WeightVSgtMd);
    v36 = v28 + *(v35 + 64);
    v37 = *v36;
    v38 = v36[8];
    outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v28 + *(v35 + 48), v25, &_s7SwiftUI5ImageV5ScaleOSgMd);
    outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v25, v22 + v20[5], &_s7SwiftUI5ImageV5ScaleOSgMd);
    *v22 = v33;
    v22[1] = v34;
    v39 = v22 + v20[6];
    *v39 = v37;
    v39[8] = v38;
    v40 = v20[7];
    *(v22 + v40) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA5ImageV5ScaleO_GMd);
    swift_storeEnumTagMultiPayload();
    outlined init with copy of GridView.Base.ViewModel.ImageConfiguration(v22, v18, type metadata accessor for GridView.Base.Artwork.SystemImage);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA5ImageVAEGMd);
    lazy protocol witness table accessor for type GridView.Base.ViewModel and conformance GridView.Base.ViewModel(&lazy protocol witness table cache variable for type GridView.Base.Artwork.SystemImage and conformance GridView.Base.Artwork.SystemImage, type metadata accessor for GridView.Base.Artwork.SystemImage);
    lazy protocol witness table accessor for type _ConditionalContent<Image, Image> and conformance <> _ConditionalContent<A, B>();
    v41 = v78;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v41, v82, &_s7SwiftUI19_ConditionalContentVy07CarPlayB08GridViewC4BaseO7ArtworkV11SystemImageVACyAA0L0VANGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<GridView.Base.Artwork.SystemImage, _ConditionalContent<Image, Image>> and conformance <> _ConditionalContent<A, B>();
    v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9CarPlayUI8GridViewC4BaseO11PlaceholderVSgMd);
    v43 = lazy protocol witness table accessor for type GridView.Base.Placeholder? and conformance <A> A?();
    v87 = v42;
    v88 = v43;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v41, &_s7SwiftUI19_ConditionalContentVy07CarPlayB08GridViewC4BaseO7ArtworkV11SystemImageVACyAA0L0VANGGMd);
    outlined destroy of GridView.Base.ViewModel.ImageConfiguration(v22, type metadata accessor for GridView.Base.Artwork.SystemImage);
    v44 = v25;
    v45 = &_s7SwiftUI5ImageV5ScaleOSgMd;
  }

  return outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v44, v45);
}

uint64_t closure #1 in GridView.Base.Artwork.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v18 = a1;
  v19 = a3;
  v4 = type metadata accessor for GridView.Base.Placeholder(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV0H0O11PlaceholderOSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(a2, v10, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV0H0O11PlaceholderOSgMd);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v10, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV0H0O11PlaceholderOSgMd);
    return (*(v5 + 56))(v19, 1, 1, v4);
  }

  else
  {
    outlined init with take of GridView.Base.ViewModel.ImageConfiguration(v10, v14, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder);
    outlined init with take of GridView.Base.ViewModel.ImageConfiguration(v14, v7, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder);
    *&v7[*(v4 + 20)] = v18;
    v16 = *(v4 + 24);
    *&v7[v16] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA5ImageV5ScaleO_GMd);
    swift_storeEnumTagMultiPayload();
    v17 = v19;
    outlined init with take of GridView.Base.ViewModel.ImageConfiguration(v7, v19, type metadata accessor for GridView.Base.Placeholder);
    (*(v5 + 56))(v17, 0, 1, v4);
  }
}

uint64_t GridView.Base.Artwork.SystemImage.body.getter@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5ImageV5ScaleOSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for Image.Scale();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
  MEMORY[0x28223BE20](v19);
  v10 = (&v17 - v9);

  v18 = Image.init(systemName:)();
  v11 = type metadata accessor for GridView.Base.Artwork.SystemImage(0);
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v1 + *(v11 + 20), v4, &_s7SwiftUI5ImageV5ScaleOSgMd);
  v12 = *(v6 + 48);
  if (v12(v4, 1, v5) == 1)
  {
    specialized Environment.wrappedValue.getter(v8);
    if (v12(v4, 1, v5) != 1)
    {
      outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v4, &_s7SwiftUI5ImageV5ScaleOSgMd);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
  }

  KeyPath = swift_getKeyPath();
  v14 = (v10 + *(v19 + 36));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd);
  (*(v6 + 32))(v14 + *(v15 + 28), v8, v5);
  *v14 = KeyPath;
  *v10 = v18;
  lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
  View.fontWeight(_:)();
  return outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v10, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
}

uint64_t closure #1 in GridView.Base.Placeholder.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v88 = type metadata accessor for Image.Scale();
  v93 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v78 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for Image.ResizingMode();
  v4 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
  MEMORY[0x28223BE20](v87);
  v86 = (&v70 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGG_Qo_Md);
  v85 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v84 = &v70 - v9;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGG_Qo_AA14_PaddingLayoutVGMd);
  MEMORY[0x28223BE20](v82);
  v83 = &v70 - v10;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGG_Qo_AA14_PaddingLayoutVGAA016_ForegroundStyleM0VyAA017HierarchicalShapeR0VGGMd);
  v11 = MEMORY[0x28223BE20](v81);
  v80 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v79 = &v70 - v13;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ColorVAA16_OverlayModifierVyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyAA5ImageVAA022_EnvironmentKeyWritingG0VyAQ5ScaleOGG_Qo_AA14_PaddingLayoutVGAA016_ForegroundStyleG0VyAA017HierarchicalShapeT0VGGGGMd);
  MEMORY[0x28223BE20](v95);
  v89 = &v70 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5ImageV5ScaleOSgMd);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v92 = &v70 - v19;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA5ImageVAA08ModifiedD0VyAA5ColorVAA16_OverlayModifierVyAIyAIyAA4ViewPAAE10fontWeightyQrAA4FontV0M0VSgFQOyAIyAgA022_EnvironmentKeyWritingJ0VyAG5ScaleOGG_Qo_AA14_PaddingLayoutVGAA016_ForegroundStyleJ0VyAA017HierarchicalShapeV0VGGGGGAG_GMd);
  MEMORY[0x28223BE20](v97);
  v21 = (&v70 - v20);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA5ImageVAA08ModifiedD0VyAA5ColorVAA16_OverlayModifierVyAIyAIyAA4ViewPAAE10fontWeightyQrAA4FontV0M0VSgFQOyAIyAgA022_EnvironmentKeyWritingJ0VyAG5ScaleOGG_Qo_AA14_PaddingLayoutVGAA016_ForegroundStyleJ0VyAA017HierarchicalShapeV0VGGGG_GMd);
  MEMORY[0x28223BE20](v90);
  v23 = (&v70 - v22);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA5ImageVAA08ModifiedD0VyAA5ColorVAA16_OverlayModifierVyAGyAGyAA4ViewPAAE10fontWeightyQrAA4FontV0L0VSgFQOyAGyAeA022_EnvironmentKeyWritingI0VyAE5ScaleOGG_Qo_AA14_PaddingLayoutVGAA016_ForegroundStyleI0VyAA017HierarchicalShapeU0VGGGGGMd);
  MEMORY[0x28223BE20](v96);
  v91 = &v70 - v24;
  v25 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder(0);
  MEMORY[0x28223BE20](v25);
  v27 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of GridView.Base.ViewModel.ImageConfiguration(a1, v27, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v77 = v8;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_7SwiftUI5ImageV5ScaleOSgAA4FontV6WeightVSgtMd);
      v30 = *(v29 + 48);
      v31 = &v27[*(v29 + 64)];
      v72 = *v31;
      v71 = v31[8];
      v32 = v92;
      outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(&v27[v30], v92, &_s7SwiftUI5ImageV5ScaleOSgMd);
      v75 = *(a1 + *(type metadata accessor for GridView.Base.Placeholder(0) + 20));
      v74 = static Alignment.center.getter();
      v73 = v33;
      Image.init(systemName:)();
      v34 = v94;
      (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v94);
      v70 = Image.resizable(capInsets:resizingMode:)();

      (*(v4 + 8))(v6, v34);
      outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v32, v18, &_s7SwiftUI5ImageV5ScaleOSgMd);
      v35 = v93;
      v36 = *(v93 + 48);
      v37 = v88;
      v38 = v36(v18, 1, v88);
      v76 = v21;
      if (v38 == 1)
      {
        v39 = v78;
        specialized Environment.wrappedValue.getter(v78);
        if (v36(v18, 1, v37) != 1)
        {
          outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v18, &_s7SwiftUI5ImageV5ScaleOSgMd);
        }
      }

      else
      {
        v39 = v78;
        (*(v35 + 32))(v78, v18, v37);
      }

      v48 = v89;
      v49 = &v89[*(v95 + 36)];
      KeyPath = swift_getKeyPath();
      v51 = v86;
      v52 = (v86 + *(v87 + 36));
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd);
      (*(v93 + 32))(v52 + *(v53 + 28), v39, v37);
      *v52 = KeyPath;
      *v51 = v70;
      lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
      v54 = v84;
      View.fontWeight(_:)();
      outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v51, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
      LOBYTE(KeyPath) = static Edge.Set.all.getter();
      v55 = v83;
      (*(v85 + 32))(v83, v54, v77);
      v56 = v55 + *(v82 + 36);
      *v56 = KeyPath;
      *(v56 + 8) = 0u;
      *(v56 + 24) = 0u;
      *(v56 + 40) = 1;
      LODWORD(KeyPath) = static HierarchicalShapeStyle.secondary.getter();
      v57 = v80;
      outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v55, v80, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGG_Qo_AA14_PaddingLayoutVGMd);
      *(v57 + *(v81 + 36)) = KeyPath;
      v58 = v57;
      v59 = v79;
      outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v58, v79, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGG_Qo_AA14_PaddingLayoutVGAA016_ForegroundStyleM0VyAA017HierarchicalShapeR0VGGMd);
      outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v59, v49, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGG_Qo_AA14_PaddingLayoutVGAA016_ForegroundStyleM0VyAA017HierarchicalShapeR0VGGMd);
      v60 = (v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAEyAA4ViewPAAE10fontWeightyQrAA4FontV0I0VSgFQOyAEyAA5ImageVAA022_EnvironmentKeyWritingD0VyAO5ScaleOGG_Qo_AA14_PaddingLayoutVGAA016_ForegroundStyleD0VyAA017HierarchicalShapeS0VGGGMd) + 36));
      v61 = v73;
      *v60 = v74;
      v60[1] = v61;
      *v48 = v75;
      outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v48, v23, &_s7SwiftUI15ModifiedContentVyAA5ColorVAA16_OverlayModifierVyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyAA5ImageVAA022_EnvironmentKeyWritingG0VyAQ5ScaleOGG_Qo_AA14_PaddingLayoutVGAA016_ForegroundStyleG0VyAA017HierarchicalShapeT0VGGGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type ModifiedContent<Color, _OverlayModifier<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _PaddingLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>>> and conformance <> ModifiedContent<A, B>();

      v62 = v91;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v62, v76, &_s7SwiftUI19_ConditionalContentVyAA5ImageVAA08ModifiedD0VyAA5ColorVAA16_OverlayModifierVyAGyAGyAA4ViewPAAE10fontWeightyQrAA4FontV0L0VSgFQOyAGyAeA022_EnvironmentKeyWritingI0VyAE5ScaleOGG_Qo_AA14_PaddingLayoutVGAA016_ForegroundStyleI0VyAA017HierarchicalShapeU0VGGGGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<Image, ModifiedContent<Color, _OverlayModifier<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _PaddingLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v62, &_s7SwiftUI19_ConditionalContentVyAA5ImageVAA08ModifiedD0VyAA5ColorVAA16_OverlayModifierVyAGyAGyAA4ViewPAAE10fontWeightyQrAA4FontV0L0VSgFQOyAGyAeA022_EnvironmentKeyWritingI0VyAE5ScaleOGG_Qo_AA14_PaddingLayoutVGAA016_ForegroundStyleI0VyAA017HierarchicalShapeU0VGGGGGMd);
      outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v48, &_s7SwiftUI15ModifiedContentVyAA5ColorVAA16_OverlayModifierVyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyAA5ImageVAA022_EnvironmentKeyWritingG0VyAQ5ScaleOGG_Qo_AA14_PaddingLayoutVGAA016_ForegroundStyleG0VyAA017HierarchicalShapeT0VGGGGMd);
      return outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v92, &_s7SwiftUI5ImageV5ScaleOSgMd);
    }

    else
    {
      if (v27[8] == 1)
      {
        v43 = [objc_opt_self() mainBundle];
        v44 = [v43 bundleIdentifier];

        if (v44)
        {
          v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v47 = v46;
        }

        else
        {
          v45 = 0;
          v47 = 0xE000000000000000;
        }

        v64 = MEMORY[0x245D2BBE0](v45, v47);

        v65 = CPUIPlaceholderTypeForBundleIdentifier(v64);

        v63 = v65;
      }

      else
      {
        v63 = *v27;
      }

      v66 = CPUIImageNameForPlaceholderType(v63);
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v67 = CPUIFrameworkBundle();
      Image.init(_:bundle:)();
      v68 = v94;
      (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v94);
      v69 = Image.resizable(capInsets:resizingMode:)();

      (*(v4 + 8))(v6, v68);
      *v21 = v69;
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<Image, ModifiedContent<Color, _OverlayModifier<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _PaddingLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>>>> and conformance <> _ConditionalContent<A, B>();
      return _ConditionalContent<>.init(storage:)();
    }
  }

  else
  {
    v40 = *v27;
    *v23 = Image.init(uiImage:)();
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<Color, _OverlayModifier<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _PaddingLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>>> and conformance <> ModifiedContent<A, B>();

    v41 = v91;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v41, v21, &_s7SwiftUI19_ConditionalContentVyAA5ImageVAA08ModifiedD0VyAA5ColorVAA16_OverlayModifierVyAGyAGyAA4ViewPAAE10fontWeightyQrAA4FontV0L0VSgFQOyAGyAeA022_EnvironmentKeyWritingI0VyAE5ScaleOGG_Qo_AA14_PaddingLayoutVGAA016_ForegroundStyleI0VyAA017HierarchicalShapeU0VGGGGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<Image, ModifiedContent<Color, _OverlayModifier<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _PaddingLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>>>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();

    return outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v41, &_s7SwiftUI19_ConditionalContentVyAA5ImageVAA08ModifiedD0VyAA5ColorVAA16_OverlayModifierVyAGyAGyAA4ViewPAAE10fontWeightyQrAA4FontV0L0VSgFQOyAGyAeA022_EnvironmentKeyWritingI0VyAE5ScaleOGG_Qo_AA14_PaddingLayoutVGAA016_ForegroundStyleI0VyAA017HierarchicalShapeU0VGGGGGMd);
  }
}

uint64_t protocol witness for UIViewRepresentable.updateUIView(_:context:) in conformance GridView.Base.AccessoryViewHostingView(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (a1)
    {
      v7 = result;
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI26UIViewRepresentableContextVy07CarPlayB08GridViewC4BaseO09Accessoryi7HostingI0VGMd);
      UIViewRepresentableContext.environment.getter();
      lazy protocol witness table accessor for type EnvironmentValues.__Key_isHighlighted and conformance EnvironmentValues.__Key_isHighlighted();
      EnvironmentValues.subscript.getter();
      (*(v3 + 8))(v5, v2);
      return (*(v7 + 16))(v9[15], ObjectType, v7);
    }
  }

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance GridView.Base.AccessoryViewHostingView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type GridView.Base.AccessoryViewHostingView and conformance GridView.Base.AccessoryViewHostingView();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance GridView.Base.AccessoryViewHostingView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type GridView.Base.AccessoryViewHostingView and conformance GridView.Base.AccessoryViewHostingView();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance GridView.Base.AccessoryViewHostingView()
{
  lazy protocol witness table accessor for type GridView.Base.AccessoryViewHostingView and conformance GridView.Base.AccessoryViewHostingView();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t specialized GridView.Base.BaseView.init(viewModel:)(uint64_t a1)
{
  v2 = v1;
  v3 = *((*MEMORY[0x277D85000] & *v1) + class metadata base offset for GridView.Base.BaseView);
  v4 = MEMORY[0x28223BE20](a1);
  *(v2 + *(v5 + 16)) = v4;
  v8 = *(v7 + *(v6 + 3552) + 8);
  v9 = *(v8 + 16);
  v10 = swift_retain_n();
  v9(v10, v3, v8);
  return _UIHostingView.init(rootView:)();
}

uint64_t specialized static GridView.Base.Style.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 12);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 12);
  v8 = v4 >> 14;
  if (v4 >> 14 > 1)
  {
    if (v8 == 2)
    {
      if ((v7 & 0xC000) == 0x8000)
      {
        if (v3)
        {
          if ((v5 & 1) == 0)
          {
            return 0;
          }
        }

        else if (v5 & 1 | (v2 != v6))
        {
          return 0;
        }

        return ((v5 ^ v3) & 0x100) == 0;
      }

      return 0;
    }

    if (v7 >> 14 <= 2)
    {
      return 0;
    }

    if ((v3 & 1) == 0)
    {
      return !(v5 & 1 | (v2 != v6));
    }

    return (v5 & 1) != 0;
  }

  if (v8)
  {
    if ((v7 & 0xC000) != 0x4000)
    {
      return 0;
    }

    if ((v3 & 1) == 0)
    {
      return !(v5 & 1 | (v2 != v6));
    }

    return (v5 & 1) != 0;
  }

  if (v7 >= 0x4000)
  {
    return 0;
  }

  v9 = a1[2];
  if (v3)
  {
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5 & 1 | (v2 != v6))
  {
    return 0;
  }

  if (v4)
  {
    if (v7)
    {
      return ((v7 & 0x100) == 0) ^ ((v4 & 0x100) >> 8);
    }

    return 0;
  }

  result = 0;
  if ((v7 & 1) == 0 && v9 == a2[2])
  {
    return ((v7 & 0x100) == 0) ^ ((v4 & 0x100) >> 8);
  }

  return result;
}

uint64_t partial apply for closure #1 in GridView.Base.ViewModel.action.setter()
{
  return partial apply for closure #1 in GridView.Base.ViewModel.action.setter();
}

{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__action);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t outlined init with take of GridView.Base.ViewModel.ImageConfiguration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t specialized static GridView.Base.ViewModel.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v45 - v8;
  v10 = type metadata accessor for GridView.Base.ViewModel.Accessory(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSg_AJtMd);
  MEMORY[0x28223BE20](v54);
  v15 = &v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSgMd);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v45 - v20;
  if ((a1[2] != a2[2] || a1[3] != a2[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_18;
  }

  v48 = v19;
  v49 = v11;
  v45 = v13;
  v50 = v10;
  v46 = v9;
  v47 = v7;
  swift_getKeyPath();
  v22 = OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel___observationRegistrar;
  v59 = a1;
  v23 = lazy protocol witness table accessor for type GridView.Base.ViewModel and conformance GridView.Base.ViewModel(&lazy protocol witness table cache variable for type GridView.Base.ViewModel and conformance GridView.Base.ViewModel, type metadata accessor for GridView.Base.ViewModel);
  v52 = v22;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = a1[4];
  v25 = a1[5];
  swift_getKeyPath();
  v26 = OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel___observationRegistrar;
  v59 = a2;

  v51 = v26;
  v53 = v23;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v24 == a2[4] && v25 == a2[5])
  {
  }

  else
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v27 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  swift_getKeyPath();
  v59 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v28 = OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__accessory;
  swift_beginAccess();
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(a1 + v28, v21, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSgMd);
  swift_getKeyPath();
  v58 = a2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v29 = OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__accessory;
  swift_beginAccess();
  v30 = *(v54 + 48);
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v21, v15, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSgMd);
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(a2 + v29, &v15[v30], &_s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSgMd);
  v31 = v50;
  v32 = *(v49 + 48);
  if (v32(v15, 1, v50) != 1)
  {
    v33 = v48;
    outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v15, v48, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSgMd);
    if (v32(&v15[v30], 1, v31) != 1)
    {
      v34 = v45;
      outlined init with take of GridView.Base.ViewModel.ImageConfiguration(&v15[v30], v45, type metadata accessor for GridView.Base.ViewModel.Accessory);
      v35 = specialized static GridView.Base.ViewModel.Accessory.== infix(_:_:)(v33, v34);
      outlined destroy of GridView.Base.ViewModel.ImageConfiguration(v34, type metadata accessor for GridView.Base.ViewModel.Accessory);
      outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v21, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSgMd);
      outlined destroy of GridView.Base.ViewModel.ImageConfiguration(v33, type metadata accessor for GridView.Base.ViewModel.Accessory);
      outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v15, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSgMd);
      if ((v35 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v21, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSgMd);
    outlined destroy of GridView.Base.ViewModel.ImageConfiguration(v33, type metadata accessor for GridView.Base.ViewModel.Accessory);
LABEL_13:
    outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v15, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSg_AJtMd);
    goto LABEL_18;
  }

  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v21, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSgMd);
  if (v32(&v15[v30], 1, v31) != 1)
  {
    goto LABEL_13;
  }

  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v15, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSgMd);
LABEL_15:
  swift_getKeyPath();
  v57 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v36 = OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__imageConfiguration;
  swift_beginAccess();
  v37 = v46;
  outlined init with copy of GridView.Base.ViewModel.ImageConfiguration(a1 + v36, v46, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration);
  swift_getKeyPath();
  v56 = a2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v38 = OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__imageConfiguration;
  swift_beginAccess();
  v39 = v47;
  outlined init with copy of GridView.Base.ViewModel.ImageConfiguration(a2 + v38, v47, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration);
  LOBYTE(v38) = specialized static GridView.Base.ViewModel.ImageConfiguration.== infix(_:_:)(v37, v39);
  outlined destroy of GridView.Base.ViewModel.ImageConfiguration(v39, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration);
  outlined destroy of GridView.Base.ViewModel.ImageConfiguration(v37, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration);
  if (v38)
  {
    swift_getKeyPath();
    v55 = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v40 = *(a1 + OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__allowsTouches);
    swift_getKeyPath();
    v55 = a2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (v40 == *(a2 + OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__allowsTouches))
    {
      swift_getKeyPath();
      v55 = a1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v41 = *(a1 + OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__disabledAppearance);
      swift_getKeyPath();
      v55 = a2;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (v41 == *(a2 + OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__disabledAppearance))
      {
        swift_getKeyPath();
        v55 = a1;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v44 = *(a1 + OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__isPressed);
        swift_getKeyPath();
        v55 = a2;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v42 = v44 ^ *(a2 + OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__isPressed) ^ 1;
        return v42 & 1;
      }
    }
  }

LABEL_18:
  v42 = 0;
  return v42 & 1;
}

uint64_t specialized static GridView.Base.ViewModel.Accessory.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Image.Scale();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v53 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5ImageV5ScaleOSg_AFtMd);
  MEMORY[0x28223BE20](v7);
  v55 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5ImageV5ScaleOSgMd);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v54 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v56 = &v48 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryO_AItMd);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = (&v48 - v18);
  v20 = &v48 + *(v17 + 56) - v18;
  outlined init with copy of GridView.Base.ViewModel.ImageConfiguration(a1, &v48 - v18, type metadata accessor for GridView.Base.ViewModel.Accessory);
  outlined init with copy of GridView.Base.ViewModel.ImageConfiguration(a2, v20, type metadata accessor for GridView.Base.ViewModel.Accessory);
  type metadata accessor for GridView.Base.ViewModel.Accessory(0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v50 = v4;
    v51 = v5;
    v52 = v15;
    v24 = *v19;
    v25 = v19[1];
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS4name_7SwiftUI5ImageV5ScaleOSgAB4FontV6WeightVSgtMd);
    v27 = *(v26 + 48);
    v28 = *(v26 + 64);
    v29 = *(v19 + v28 + 8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      outlined destroy of GridView.Base.ViewModel.ImageConfiguration(v20, type metadata accessor for GridView.Base.ViewModel.Accessory);
      v30 = v19 + v27;
LABEL_21:
      outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v30, &_s7SwiftUI5ImageV5ScaleOSgMd);
      v23 = 0;
      return v23 & 1;
    }

    v48 = v29;
    v31 = *v20;
    v32 = *(v20 + 1);
    v49 = v20[v28 + 8];
    outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v19 + v27, v52, &_s7SwiftUI5ImageV5ScaleOSgMd);
    v33 = v56;
    outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(&v20[v27], v56, &_s7SwiftUI5ImageV5ScaleOSgMd);
    if (v24 == v31 && v25 == v32)
    {

      v36 = v52;
      v37 = v50;
    }

    else
    {
      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v36 = v52;
      v37 = v50;
      if ((v35 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v38 = *(v7 + 48);
    v39 = v55;
    outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v36, v55, &_s7SwiftUI5ImageV5ScaleOSgMd);
    outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v33, v39 + v38, &_s7SwiftUI5ImageV5ScaleOSgMd);
    v40 = *(v51 + 48);
    if (v40(v39, 1, v37) == 1)
    {
      if (v40(v39 + v38, 1, v37) == 1)
      {
        outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v39, &_s7SwiftUI5ImageV5ScaleOSgMd);
LABEL_24:
        if (v48)
        {
          outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v33, &_s7SwiftUI5ImageV5ScaleOSgMd);
          outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v36, &_s7SwiftUI5ImageV5ScaleOSgMd);
          v23 = v49;
          return v23 & 1;
        }

        if ((v49 & 1) == 0)
        {
          v23 = static Font.Weight.== infix(_:_:)();
          outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v33, &_s7SwiftUI5ImageV5ScaleOSgMd);
          outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v36, &_s7SwiftUI5ImageV5ScaleOSgMd);
          return v23 & 1;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v41 = v54;
      outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v39, v54, &_s7SwiftUI5ImageV5ScaleOSgMd);
      if (v40(v39 + v38, 1, v37) != 1)
      {
        v43 = v51;
        v44 = v39 + v38;
        v45 = v53;
        (*(v51 + 32))(v53, v44, v37);
        lazy protocol witness table accessor for type GridView.Base.ViewModel and conformance GridView.Base.ViewModel(&lazy protocol witness table cache variable for type Image.Scale and conformance Image.Scale, MEMORY[0x277CE1060]);
        v46 = dispatch thunk of static Equatable.== infix(_:_:)();
        v47 = *(v43 + 8);
        v47(v45, v37);
        v47(v41, v37);
        outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v39, &_s7SwiftUI5ImageV5ScaleOSgMd);
        if (v46)
        {
          goto LABEL_24;
        }

LABEL_20:
        outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v33, &_s7SwiftUI5ImageV5ScaleOSgMd);
        v30 = v36;
        goto LABEL_21;
      }

      (*(v51 + 8))(v41, v37);
    }

    outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v39, &_s7SwiftUI5ImageV5ScaleOSg_AFtMd);
    goto LABEL_20;
  }

  v21 = *v19;
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    v30 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS4name_7SwiftUI5ImageV5ScaleOSgAB4FontV6WeightVSgtMd) + 48)];
    goto LABEL_21;
  }

  v22 = *v20;

  v23 = v21 == v22;
  return v23 & 1;
}

uint64_t specialized static GridView.Base.ViewModel.ImageConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Shape(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV5ShapeOSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV5ShapeOSg_ALtMd);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  if ((specialized static GridView.Base.ViewModel.ImageConfiguration.Image.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    goto LABEL_8;
  }

  v14 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration(0);
  v15 = a1;
  v16 = a2;
  v23 = v14;
  v24 = v15;
  v17 = *(v14 + 20);
  v18 = *(v11 + 48);
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v15 + v17, v13, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV5ShapeOSgMd);
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v16 + v17, &v13[v18], &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV5ShapeOSgMd);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v18], 1, v4) == 1)
    {
      outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v13, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV5ShapeOSgMd);
LABEL_11:
      v20 = *(v24 + *(v23 + 24)) ^ *(v16 + *(v23 + 24)) ^ 1;
      return v20 & 1;
    }

    goto LABEL_7;
  }

  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v13, v10, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV5ShapeOSgMd);
  if (v19(&v13[v18], 1, v4) == 1)
  {
    outlined destroy of GridView.Base.ViewModel.ImageConfiguration(v10, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Shape);
LABEL_7:
    outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v13, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV5ShapeOSg_ALtMd);
    goto LABEL_8;
  }

  outlined init with take of GridView.Base.ViewModel.ImageConfiguration(&v13[v18], v7, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Shape);
  v22 = specialized static GridView.Base.ViewModel.ImageConfiguration.Shape.== infix(_:_:)(v10, v7);
  outlined destroy of GridView.Base.ViewModel.ImageConfiguration(v7, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Shape);
  outlined destroy of GridView.Base.ViewModel.ImageConfiguration(v10, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Shape);
  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v13, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV5ShapeOSgMd);
  if (v22)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static GridView.Base.ViewModel.ImageConfiguration.Shape.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedCornerStyle();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v52 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI18RoundedCornerStyleOSg_ADtMd);
  MEMORY[0x28223BE20](v7);
  v9 = &v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI18RoundedCornerStyleOSgMd);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v53 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v54 = &v50 - v14;
  MEMORY[0x28223BE20](v13);
  v55 = &v50 - v15;
  v16 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Shape(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = (&v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV5ShapeO_AKtMd);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = (&v50 - v21);
  v23 = (&v50 + *(v20 + 56) - v21);
  outlined init with copy of GridView.Base.ViewModel.ImageConfiguration(a1, &v50 - v21, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Shape);
  outlined init with copy of GridView.Base.ViewModel.ImageConfiguration(a2, v23, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Shape);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSg6radius_7SwiftUI18RoundedCornerStyleOSg5styletMd);
  v25 = *(*(v24 - 8) + 48);
  if (v25(v22, 1, v24) == 1)
  {
    if (v25(v23, 1, v24) == 1)
    {
LABEL_3:
      outlined destroy of GridView.Base.ViewModel.ImageConfiguration(v22, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Shape);
      return 1;
    }

    goto LABEL_6;
  }

  v51 = v5;
  v27 = v9;
  outlined init with copy of GridView.Base.ViewModel.ImageConfiguration(v22, v18, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Shape);
  v28 = *v18;
  v29 = *(v24 + 48);
  if (v25(v23, 1, v24) != 1)
  {
    v50 = v4;
    v30 = *(v18 + 8);
    v31 = *v23;
    v32 = *(v23 + 8);
    outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v18 + v29, v55, &_s7SwiftUI18RoundedCornerStyleOSgMd);
    v33 = v23 + v29;
    v34 = v54;
    outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v33, v54, &_s7SwiftUI18RoundedCornerStyleOSgMd);
    if (v30)
    {
      v35 = v27;
      if (!v32)
      {
LABEL_9:
        outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v34, &_s7SwiftUI18RoundedCornerStyleOSgMd);
        v36 = v55;
        v37 = &_s7SwiftUI18RoundedCornerStyleOSgMd;
        goto LABEL_20;
      }
    }

    else
    {
      if (v28 == v31)
      {
        v38 = v32;
      }

      else
      {
        v38 = 1;
      }

      v35 = v27;
      if (v38)
      {
        goto LABEL_9;
      }
    }

    v39 = *(v7 + 48);
    v40 = v34;
    v41 = v55;
    outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v55, v35, &_s7SwiftUI18RoundedCornerStyleOSgMd);
    outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v34, v35 + v39, &_s7SwiftUI18RoundedCornerStyleOSgMd);
    v43 = v50;
    v42 = v51;
    v44 = *(v51 + 48);
    if (v44(v35, 1, v50) == 1)
    {
      outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v40, &_s7SwiftUI18RoundedCornerStyleOSgMd);
      outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v41, &_s7SwiftUI18RoundedCornerStyleOSgMd);
      if (v44(v35 + v39, 1, v43) == 1)
      {
        outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v35, &_s7SwiftUI18RoundedCornerStyleOSgMd);
        goto LABEL_3;
      }
    }

    else
    {
      v45 = v53;
      outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v35, v53, &_s7SwiftUI18RoundedCornerStyleOSgMd);
      if (v44(v35 + v39, 1, v43) != 1)
      {
        v46 = v35 + v39;
        v47 = v52;
        (*(v42 + 32))(v52, v46, v43);
        lazy protocol witness table accessor for type GridView.Base.ViewModel and conformance GridView.Base.ViewModel(&lazy protocol witness table cache variable for type RoundedCornerStyle and conformance RoundedCornerStyle, MEMORY[0x277CE0130]);
        v48 = dispatch thunk of static Equatable.== infix(_:_:)();
        v49 = *(v42 + 8);
        v49(v47, v43);
        outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v54, &_s7SwiftUI18RoundedCornerStyleOSgMd);
        outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v55, &_s7SwiftUI18RoundedCornerStyleOSgMd);
        v49(v45, v43);
        outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v35, &_s7SwiftUI18RoundedCornerStyleOSgMd);
        if (v48)
        {
          goto LABEL_3;
        }

        goto LABEL_21;
      }

      outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v54, &_s7SwiftUI18RoundedCornerStyleOSgMd);
      outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v55, &_s7SwiftUI18RoundedCornerStyleOSgMd);
      (*(v42 + 8))(v45, v43);
    }

    v37 = &_s7SwiftUI18RoundedCornerStyleOSg_ADtMd;
    v36 = v35;
LABEL_20:
    outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v36, v37);
LABEL_21:
    outlined destroy of GridView.Base.ViewModel.ImageConfiguration(v22, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Shape);
    return 0;
  }

  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v18 + v29, &_s7SwiftUI18RoundedCornerStyleOSgMd);
LABEL_6:
  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v22, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV5ShapeO_AKtMd);
  return 0;
}

uint64_t specialized static GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Image.Scale();
  v61 = *(v4 - 8);
  v62 = v4;
  MEMORY[0x28223BE20](v4);
  v59 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5ImageV5ScaleOSg_AFtMd);
  MEMORY[0x28223BE20](v6);
  v60 = &v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5ImageV5ScaleOSgMd);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v64 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v63 = &v57 - v12;
  MEMORY[0x28223BE20](v11);
  v65 = &v57 - v13;
  v14 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (&v57 - v19);
  MEMORY[0x28223BE20](v18);
  v22 = (&v57 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV0H0O11PlaceholderO_AMtMd);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v57 - v25;
  v27 = (&v57 + *(v24 + 56) - v25);
  outlined init with copy of GridView.Base.ViewModel.ImageConfiguration(a1, &v57 - v25, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder);
  outlined init with copy of GridView.Base.ViewModel.ImageConfiguration(a2, v27, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with copy of GridView.Base.ViewModel.ImageConfiguration(v26, v20, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder);
      v30 = *v20;
      v29 = v20[1];
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_7SwiftUI5ImageV5ScaleOSgAA4FontV6WeightVSgtMd);
      v32 = *(v31 + 48);
      v33 = *(v31 + 64);
      v34 = *(v20 + v33 + 8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v57 = v34;
        v36 = *v27;
        v35 = v27[1];
        v58 = *(v27 + v33 + 8);
        outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v20 + v32, v65, &_s7SwiftUI5ImageV5ScaleOSgMd);
        v37 = v27 + v32;
        v38 = v63;
        outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v37, v63, &_s7SwiftUI5ImageV5ScaleOSgMd);
        if (v30 == v36 && v29 == v35)
        {

          v39 = v64;
        }

        else
        {
          v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v39 = v64;
          if ((v45 & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        v46 = *(v6 + 48);
        v47 = v60;
        outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v65, v60, &_s7SwiftUI5ImageV5ScaleOSgMd);
        outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v38, v47 + v46, &_s7SwiftUI5ImageV5ScaleOSgMd);
        v49 = v61;
        v48 = v62;
        v50 = *(v61 + 48);
        if (v50(v47, 1, v62) == 1)
        {
          if (v50(v47 + v46, 1, v48) == 1)
          {
            outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v47, &_s7SwiftUI5ImageV5ScaleOSgMd);
LABEL_32:
            if (v57)
            {
              outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v38, &_s7SwiftUI5ImageV5ScaleOSgMd);
              outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v65, &_s7SwiftUI5ImageV5ScaleOSgMd);
              if (v58)
              {
                goto LABEL_37;
              }

              goto LABEL_28;
            }

            if ((v58 & 1) == 0)
            {
              v56 = static Font.Weight.== infix(_:_:)();
              outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v38, &_s7SwiftUI5ImageV5ScaleOSgMd);
              outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v65, &_s7SwiftUI5ImageV5ScaleOSgMd);
              if (v56)
              {
LABEL_37:
                outlined destroy of GridView.Base.ViewModel.ImageConfiguration(v26, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder);
                v44 = 1;
                return v44 & 1;
              }

LABEL_28:
              outlined destroy of GridView.Base.ViewModel.ImageConfiguration(v26, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder);
              goto LABEL_29;
            }

LABEL_27:
            outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v38, &_s7SwiftUI5ImageV5ScaleOSgMd);
            outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v65, &_s7SwiftUI5ImageV5ScaleOSgMd);
            goto LABEL_28;
          }
        }

        else
        {
          outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v47, v39, &_s7SwiftUI5ImageV5ScaleOSgMd);
          if (v50(v47 + v46, 1, v48) != 1)
          {
            v52 = v47 + v46;
            v53 = v59;
            (*(v49 + 32))(v59, v52, v48);
            lazy protocol witness table accessor for type GridView.Base.ViewModel and conformance GridView.Base.ViewModel(&lazy protocol witness table cache variable for type Image.Scale and conformance Image.Scale, MEMORY[0x277CE1060]);
            v54 = dispatch thunk of static Equatable.== infix(_:_:)();
            v55 = *(v49 + 8);
            v55(v53, v48);
            v55(v39, v48);
            outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v47, &_s7SwiftUI5ImageV5ScaleOSgMd);
            if ((v54 & 1) == 0)
            {
              goto LABEL_27;
            }

            goto LABEL_32;
          }

          (*(v49 + 8))(v39, v48);
        }

        outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v47, &_s7SwiftUI5ImageV5ScaleOSg_AFtMd);
        goto LABEL_27;
      }

      outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v20 + v32, &_s7SwiftUI5ImageV5ScaleOSgMd);
    }

    else
    {
      outlined init with copy of GridView.Base.ViewModel.ImageConfiguration(v26, v17, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder);
      v41 = *v17;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v42 = *(v27 + 8);
        if (v17[8])
        {
          if (*(v27 + 8))
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (v41 != *v27)
          {
            v42 = 1;
          }

          if ((v42 & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        goto LABEL_28;
      }
    }

LABEL_14:
    outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v26, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV0H0O11PlaceholderO_AMtMd);
LABEL_29:
    v44 = 0;
    return v44 & 1;
  }

  outlined init with copy of GridView.Base.ViewModel.ImageConfiguration(v26, v22, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder);
  v40 = *v22;
  if (swift_getEnumCaseMultiPayload())
  {

    goto LABEL_14;
  }

  v43 = *v27;
  type metadata accessor for ISImageDescriptor(0, &lazy cache variable for type metadata for NSObject);
  v44 = static NSObject.== infix(_:_:)();

  outlined destroy of GridView.Base.ViewModel.ImageConfiguration(v26, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder);
  return v44 & 1;
}

uint64_t outlined init with copy of GridView.Base.ViewModel.ImageConfiguration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type GridView.Base.ViewModel and conformance GridView.Base.ViewModel(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized static GridView.Base.ViewModel.ImageConfiguration.Image.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v123 = a1;
  v124 = a2;
  v2 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder(0);
  v107 = *(v2 - 8);
  v108 = v2;
  MEMORY[0x28223BE20](v2);
  v104 = &v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV0H0O11PlaceholderOSg_ANtMd);
  MEMORY[0x28223BE20](v106);
  v109 = &v103 - v4;
  v5 = type metadata accessor for Artwork();
  v119 = *(v5 - 8);
  v120 = v5;
  MEMORY[0x28223BE20](v5);
  v105 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v110 = &v103 - v8;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSg_ADtMd);
  MEMORY[0x28223BE20](v117);
  v118 = &v103 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV0H0O11PlaceholderOSgMd);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v116 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v121 = &v103 - v14;
  MEMORY[0x28223BE20](v13);
  v122 = &v103 - v15;
  v16 = type metadata accessor for Image.Scale();
  v112 = *(v16 - 8);
  v113 = v16;
  MEMORY[0x28223BE20](v16);
  v115 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5ImageV5ScaleOSg_AFtMd);
  MEMORY[0x28223BE20](v114);
  v111 = &v103 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5ImageV5ScaleOSgMd);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v103 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v103 - v26;
  v28 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image(0);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v103 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = (&v103 - v33);
  MEMORY[0x28223BE20](v32);
  v36 = (&v103 - v35);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV0H0O_AKtMd);
  v38 = MEMORY[0x28223BE20](v37 - 8);
  v40 = &v103 - v39;
  v41 = (&v103 + *(v38 + 56) - v39);
  outlined init with copy of GridView.Base.ViewModel.ImageConfiguration(v123, &v103 - v39, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image);
  outlined init with copy of GridView.Base.ViewModel.ImageConfiguration(v124, v41, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image);
  v125 = v40;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v124 = v22;
    outlined init with copy of GridView.Base.ViewModel.ImageConfiguration(v125, v36, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image);
    v52 = *v36;
    v51 = v36[1];
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_7SwiftUI5ImageV5ScaleOSgAA4FontV6WeightVSgtMd);
    v54 = *(v53 + 48);
    v55 = *(v53 + 64);
    v56 = *(v36 + v55 + 8);
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v36 + v54, &_s7SwiftUI5ImageV5ScaleOSgMd);

      v43 = v125;
LABEL_17:
      outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v43, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV0H0O_AKtMd);
      return 0;
    }

    LODWORD(v122) = v56;
    v68 = *v41;
    v67 = v41[1];
    LODWORD(v123) = *(v41 + v55 + 8);
    v69 = v36 + v54;
    v70 = v27;
    outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v69, v27, &_s7SwiftUI5ImageV5ScaleOSgMd);
    v71 = v41 + v54;
    v72 = v25;
    outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v71, v25, &_s7SwiftUI5ImageV5ScaleOSgMd);
    if (v52 == v68 && v51 == v67)
    {

      v43 = v125;
      v73 = v114;
      v74 = v115;
    }

    else
    {
      v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v43 = v125;
      v73 = v114;
      v74 = v115;
      if ((v78 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    v79 = *(v73 + 48);
    v80 = v111;
    outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v70, v111, &_s7SwiftUI5ImageV5ScaleOSgMd);
    outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v72, v80 + v79, &_s7SwiftUI5ImageV5ScaleOSgMd);
    v82 = v112;
    v81 = v113;
    v83 = *(v112 + 48);
    if (v83(v80, 1, v113) == 1)
    {
      if (v83(v80 + v79, 1, v81) == 1)
      {
        outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v80, &_s7SwiftUI5ImageV5ScaleOSgMd);
        goto LABEL_48;
      }

      goto LABEL_32;
    }

    v84 = v124;
    outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v80, v124, &_s7SwiftUI5ImageV5ScaleOSgMd);
    if (v83(v80 + v79, 1, v81) == 1)
    {
      (*(v82 + 8))(v84, v81);
      v43 = v125;
LABEL_32:
      outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v80, &_s7SwiftUI5ImageV5ScaleOSg_AFtMd);
      goto LABEL_33;
    }

    (*(v82 + 32))(v74, v80 + v79, v81);
    lazy protocol witness table accessor for type GridView.Base.ViewModel and conformance GridView.Base.ViewModel(&lazy protocol witness table cache variable for type Image.Scale and conformance Image.Scale, MEMORY[0x277CE1060]);
    v96 = dispatch thunk of static Equatable.== infix(_:_:)();
    v97 = *(v82 + 8);
    v97(v74, v81);
    v97(v84, v81);
    outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v80, &_s7SwiftUI5ImageV5ScaleOSgMd);
    v43 = v125;
    if (v96)
    {
LABEL_48:
      if (v122)
      {
        outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v72, &_s7SwiftUI5ImageV5ScaleOSgMd);
        outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v70, &_s7SwiftUI5ImageV5ScaleOSgMd);
        if (v123)
        {
          goto LABEL_56;
        }

        goto LABEL_36;
      }

      if ((v123 & 1) == 0)
      {
        v98 = static Font.Weight.== infix(_:_:)();
        outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v72, &_s7SwiftUI5ImageV5ScaleOSgMd);
        v99 = v70;
        v100 = &_s7SwiftUI5ImageV5ScaleOSgMd;
        goto LABEL_55;
      }
    }

LABEL_33:
    v76 = &_s7SwiftUI5ImageV5ScaleOSgMd;
    outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v72, &_s7SwiftUI5ImageV5ScaleOSgMd);
    v77 = v70;
    goto LABEL_34;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v43 = v125;
    outlined init with copy of GridView.Base.ViewModel.ImageConfiguration(v125, v31, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image);
    v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSg_9CarPlayUI8GridViewC4BaseO0H5ModelC18ImageConfigurationV0K0O11PlaceholderOSgtMd) + 48);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(&v31[v57], &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV0H0O11PlaceholderOSgMd);
      outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v31, &_s8MusicKit7ArtworkVSgMd);
      goto LABEL_17;
    }

    v58 = v122;
    outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(&v31[v57], v122, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV0H0O11PlaceholderOSgMd);
    v59 = v121;
    outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v41 + v57, v121, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV0H0O11PlaceholderOSgMd);
    v60 = v118;
    v61 = *(v117 + 48);
    outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v31, v118, &_s8MusicKit7ArtworkVSgMd);
    outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v41, v60 + v61, &_s8MusicKit7ArtworkVSgMd);
    v63 = v119;
    v62 = v120;
    v64 = *(v119 + 48);
    if (v64(v60, 1, v120) == 1)
    {
      v65 = v64(v60 + v61, 1, v62);
      v66 = v116;
      if (v65 == 1)
      {
        outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v60, &_s8MusicKit7ArtworkVSgMd);
LABEL_39:
        v92 = *(v106 + 48);
        v93 = v109;
        outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v58, v109, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV0H0O11PlaceholderOSgMd);
        outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v59, v93 + v92, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV0H0O11PlaceholderOSgMd);
        v94 = v108;
        v95 = *(v107 + 48);
        if (v95(v93, 1, v108) == 1)
        {
          outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v59, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV0H0O11PlaceholderOSgMd);
          outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v58, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV0H0O11PlaceholderOSgMd);
          if (v95(v93 + v92, 1, v94) == 1)
          {
            outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v93, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV0H0O11PlaceholderOSgMd);
            goto LABEL_56;
          }

          goto LABEL_46;
        }

        outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v93, v66, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV0H0O11PlaceholderOSgMd);
        if (v95(v93 + v92, 1, v94) == 1)
        {
          outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v59, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV0H0O11PlaceholderOSgMd);
          outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v58, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV0H0O11PlaceholderOSgMd);
          outlined destroy of GridView.Base.ViewModel.ImageConfiguration(v66, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder);
LABEL_46:
          v85 = &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV0H0O11PlaceholderOSg_ANtMd;
          v77 = v93;
          goto LABEL_35;
        }

        v101 = v93 + v92;
        v102 = v104;
        outlined init with take of GridView.Base.ViewModel.ImageConfiguration(v101, v104, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder);
        v98 = specialized static GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder.== infix(_:_:)(v66, v102);
        outlined destroy of GridView.Base.ViewModel.ImageConfiguration(v102, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder);
        outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v59, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV0H0O11PlaceholderOSgMd);
        outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v58, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV0H0O11PlaceholderOSgMd);
        outlined destroy of GridView.Base.ViewModel.ImageConfiguration(v66, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder);
        v99 = v93;
        v100 = &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV0H0O11PlaceholderOSgMd;
LABEL_55:
        outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v99, v100);
        if ((v98 & 1) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_56;
      }
    }

    else
    {
      v75 = v110;
      outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v60, v110, &_s8MusicKit7ArtworkVSgMd);
      if (v64(v60 + v61, 1, v62) != 1)
      {
        v87 = v60 + v61;
        v88 = v60;
        v89 = v105;
        (*(v63 + 32))(v105, v87, v62);
        lazy protocol witness table accessor for type GridView.Base.ViewModel and conformance GridView.Base.ViewModel(&lazy protocol witness table cache variable for type Artwork and conformance Artwork, MEMORY[0x277CD8460]);
        v90 = dispatch thunk of static Equatable.== infix(_:_:)();
        v91 = *(v63 + 8);
        v91(v89, v62);
        v91(v75, v62);
        outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v88, &_s8MusicKit7ArtworkVSgMd);
        v66 = v116;
        if (v90)
        {
          goto LABEL_39;
        }

        goto LABEL_25;
      }

      (*(v63 + 8))(v75, v62);
    }

    outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v60, &_s8MusicKit7ArtworkVSg_ADtMd);
LABEL_25:
    v76 = &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV0H0O11PlaceholderOSgMd;
    outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v59, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV0H0O11PlaceholderOSgMd);
    v77 = v58;
LABEL_34:
    v85 = v76;
LABEL_35:
    outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v77, v85);
    goto LABEL_36;
  }

  v43 = v125;
  outlined init with copy of GridView.Base.ViewModel.ImageConfiguration(v125, v34, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image);
  v44 = *v34;
  v45 = v34[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_17;
  }

  v47 = *v41;
  v46 = v41[1];
  type metadata accessor for ISImageDescriptor(0, &lazy cache variable for type metadata for NSObject);
  v48 = static NSObject.== infix(_:_:)();

  if ((v48 & 1) == 0)
  {

LABEL_36:
    outlined destroy of GridView.Base.ViewModel.ImageConfiguration(v43, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image);
    return 0;
  }

  if (v45)
  {
    if (v46)
    {
      type metadata accessor for ISImageDescriptor(0, &lazy cache variable for type metadata for UIColor);
      v49 = v45;
      v50 = static NSObject.== infix(_:_:)();

      if (v50)
      {
        goto LABEL_56;
      }
    }

    else
    {
    }

    goto LABEL_36;
  }

  if (v46)
  {

    goto LABEL_36;
  }

LABEL_56:
  outlined destroy of GridView.Base.ViewModel.ImageConfiguration(v43, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image);
  return 1;
}

uint64_t outlined destroy of GridView.Base.ViewModel.ImageConfiguration(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized GridView.Base.ViewModel.shouldNotifyObservers<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Shape(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV5ShapeOSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV5ShapeOSg_ALtMd);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  if ((specialized static GridView.Base.ViewModel.ImageConfiguration.Image.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    goto LABEL_8;
  }

  v14 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration(0);
  v15 = a1;
  v16 = a2;
  v23 = v14;
  v24 = v15;
  v17 = *(v14 + 20);
  v18 = *(v11 + 48);
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v15 + v17, v13, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV5ShapeOSgMd);
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v16 + v17, &v13[v18], &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV5ShapeOSgMd);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v18], 1, v4) == 1)
    {
      outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v13, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV5ShapeOSgMd);
LABEL_11:
      v20 = *(v24 + *(v23 + 24)) ^ *(v16 + *(v23 + 24));
      return v20 & 1;
    }

    goto LABEL_7;
  }

  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v13, v10, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV5ShapeOSgMd);
  if (v19(&v13[v18], 1, v4) == 1)
  {
    outlined destroy of GridView.Base.ViewModel.ImageConfiguration(v10, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Shape);
LABEL_7:
    outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v13, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV5ShapeOSg_ALtMd);
    goto LABEL_8;
  }

  outlined init with take of GridView.Base.ViewModel.ImageConfiguration(&v13[v18], v7, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Shape);
  v22 = specialized static GridView.Base.ViewModel.ImageConfiguration.Shape.== infix(_:_:)(v10, v7);
  outlined destroy of GridView.Base.ViewModel.ImageConfiguration(v7, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Shape);
  outlined destroy of GridView.Base.ViewModel.ImageConfiguration(v10, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Shape);
  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v13, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV5ShapeOSgMd);
  if (v22)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = 1;
  return v20 & 1;
}

{
  v4 = type metadata accessor for GridView.Base.ViewModel.Accessory(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSg_AJtMd);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(a1, &v20 - v13, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSgMd);
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(a2, &v14[v15], &_s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSgMd);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v14, v10, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSgMd);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      outlined init with take of GridView.Base.ViewModel.ImageConfiguration(&v14[v15], v7, type metadata accessor for GridView.Base.ViewModel.Accessory);
      v18 = specialized static GridView.Base.ViewModel.Accessory.== infix(_:_:)(v10, v7);
      outlined destroy of GridView.Base.ViewModel.ImageConfiguration(v7, type metadata accessor for GridView.Base.ViewModel.Accessory);
      outlined destroy of GridView.Base.ViewModel.ImageConfiguration(v10, type metadata accessor for GridView.Base.ViewModel.Accessory);
      outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v14, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSgMd);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    outlined destroy of GridView.Base.ViewModel.ImageConfiguration(v10, type metadata accessor for GridView.Base.ViewModel.Accessory);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v14, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSg_AJtMd);
    v17 = 1;
    return v17 & 1;
  }

  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v14, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSgMd);
  v17 = 0;
  return v17 & 1;
}

unint64_t lazy protocol witness table accessor for type GridView.Base.ViewModel.TitlePriority and conformance GridView.Base.ViewModel.TitlePriority()
{
  result = lazy protocol witness table cache variable for type GridView.Base.ViewModel.TitlePriority and conformance GridView.Base.ViewModel.TitlePriority;
  if (!lazy protocol witness table cache variable for type GridView.Base.ViewModel.TitlePriority and conformance GridView.Base.ViewModel.TitlePriority)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GridView.Base.ViewModel.TitlePriority and conformance GridView.Base.ViewModel.TitlePriority);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for GridView.Base.ViewModel(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type GridView.Base.ViewModel and conformance GridView.Base.ViewModel(&lazy protocol witness table cache variable for type GridView.Base.ViewModel and conformance GridView.Base.ViewModel, type metadata accessor for GridView.Base.ViewModel);
  result = lazy protocol witness table accessor for type GridView.Base.ViewModel and conformance GridView.Base.ViewModel(&lazy protocol witness table cache variable for type GridView.Base.ViewModel and conformance GridView.Base.ViewModel, type metadata accessor for GridView.Base.ViewModel);
  *(a1 + 16) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for GridView.Base.BaseDataSource<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for GridView.Base.Style(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GridView.Base.Style(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 8) >> 2) & 0xFFFFFF80 | (*(a1 + 8) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for GridView.Base.Style(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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
      *result = 0;
      *(result + 8) = (4 * -a2) & 0x3FFFFFE00 | (2 * (-a2 & 0x7FLL));
      *(result + 16) = 0;
      *(result + 24) = 0;
      return result;
    }

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for GridView.Base.Style(uint64_t result, __int16 a2)
{
  v2 = *(result + 24) & 0x101 | (a2 << 14);
  *(result + 8) &= 0x101uLL;
  *(result + 24) = v2;
  return result;
}

void type metadata completion function for GridView.Base.ViewModel()
{
  type metadata accessor for GridView.Base.ViewModel.ImageConfiguration(319);
  if (v0 <= 0x3F)
  {
    _s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSgMaTm_0(319, &lazy cache variable for type metadata for GridView.Base.ViewModel.Accessory?, type metadata accessor for GridView.Base.ViewModel.Accessory, MEMORY[0x277D83D88]);
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

void type metadata completion function for GridView.Base.ViewModel.ImageConfiguration()
{
  type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image(319);
  if (v0 <= 0x3F)
  {
    _s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSgMaTm_0(319, &lazy cache variable for type metadata for GridView.Base.ViewModel.ImageConfiguration.Shape?, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Shape, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void _s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata completion function for GridView.Base.ViewModel.ImageConfiguration.Image()
{
  type metadata accessor for (String, Image.Scale?, Font.Weight?)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (UIImage, UIColor?)();
    if (v1 <= 0x3F)
    {
      type metadata accessor for (Artwork?, GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder?)();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata accessor for (String, Image.Scale?, Font.Weight?)()
{
  if (!lazy cache variable for type metadata for (String, Image.Scale?, Font.Weight?))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5ImageV5ScaleOSgMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4FontV6WeightVSgMd);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (String, Image.Scale?, Font.Weight?));
    }
  }
}

void type metadata accessor for (UIImage, UIColor?)()
{
  if (!lazy cache variable for type metadata for (UIImage, UIColor?))
  {
    type metadata accessor for ISImageDescriptor(255, &lazy cache variable for type metadata for UIImage);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo7UIColorCSgMd);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (UIImage, UIColor?));
    }
  }
}

void type metadata accessor for (Artwork?, GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder?)()
{
  if (!lazy cache variable for type metadata for (Artwork?, GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder?))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8MusicKit7ArtworkVSgMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV0H0O11PlaceholderOSgMd);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Artwork?, GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder?));
    }
  }
}

void type metadata completion function for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder()
{
  type metadata accessor for ISImageDescriptor(319, &lazy cache variable for type metadata for UIImage);
  if (v0 <= 0x3F)
  {
    type metadata accessor for (String, Image.Scale?, Font.Weight?)();
    if (v1 <= 0x3F)
    {
      _s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSgMaTm_0(319, &lazy cache variable for type metadata for CPUINowPlayingPlaceholderType?, type metadata accessor for CPUINowPlayingPlaceholderType, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata completion function for GridView.Base.ViewModel.Accessory()
{
  type metadata accessor for (name: String, Image.Scale?, Font.Weight?)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for GridView.Base.AccessoryView();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (name: String, Image.Scale?, Font.Weight?)()
{
  if (!lazy cache variable for type metadata for (name: String, Image.Scale?, Font.Weight?))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5ImageV5ScaleOSgMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4FontV6WeightVSgMd);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (name: String, Image.Scale?, Font.Weight?));
    }
  }
}

unint64_t type metadata accessor for GridView.Base.AccessoryView()
{
  result = lazy cache variable for type metadata for GridView.Base.AccessoryView;
  if (!lazy cache variable for type metadata for GridView.Base.AccessoryView)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for GridView.Base.AccessoryView);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GridView.Base.AccessoryViewHostingView(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for GridView.Base.AccessoryViewHostingView(uint64_t result, int a2, int a3)
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

uint64_t type metadata completion function for GridView.Base.Artwork()
{
  result = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t partial apply for closure #1 in GridView.Base.Artwork.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV0H0O11PlaceholderOSgMd) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in GridView.Base.Artwork.body.getter(a1, v6, a2);
}

unint64_t lazy protocol witness table accessor for type GridView.Base.Placeholder? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type GridView.Base.Placeholder? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type GridView.Base.Placeholder? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9CarPlayUI8GridViewC4BaseO11PlaceholderVSgMd);
    lazy protocol witness table accessor for type GridView.Base.ViewModel and conformance GridView.Base.ViewModel(&lazy protocol witness table cache variable for type GridView.Base.Placeholder and conformance GridView.Base.Placeholder, type metadata accessor for GridView.Base.Placeholder);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GridView.Base.Placeholder? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<GridView.Base.Artwork.SystemImage, _ConditionalContent<Image, Image>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<GridView.Base.Artwork.SystemImage, _ConditionalContent<Image, Image>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<GridView.Base.Artwork.SystemImage, _ConditionalContent<Image, Image>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07CarPlayB08GridViewC4BaseO7ArtworkV11SystemImageVACyAA0L0VANGGMd);
    lazy protocol witness table accessor for type GridView.Base.ViewModel and conformance GridView.Base.ViewModel(&lazy protocol witness table cache variable for type GridView.Base.Artwork.SystemImage and conformance GridView.Base.Artwork.SystemImage, type metadata accessor for GridView.Base.Artwork.SystemImage);
    lazy protocol witness table accessor for type _ConditionalContent<Image, Image> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<GridView.Base.Artwork.SystemImage, _ConditionalContent<Image, Image>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<Image, Image> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<Image, Image> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<Image, Image> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA5ImageVAEGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<Image, Image> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t outlined assign with take of GridView.Base.ViewModel.Accessory?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of GridView.Base.ViewModel.ImageConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in GridView.Base.ViewModel.subtitle.setter()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 48) = v0[3];
  *(v1 + 56) = v2;
}

uint64_t partial apply for closure #1 in GridView.Base.ViewModel.title.setter()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
}

void type metadata completion function for GridView.Base.Placeholder()
{
  type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder(319);
  if (v0 <= 0x3F)
  {
    _s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSgMaTm_0(319, &lazy cache variable for type metadata for Environment<Image.Scale>, MEMORY[0x277CE1060], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for GridView.Base.Artwork.SystemImage()
{
  _s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSgMaTm_0(319, &lazy cache variable for type metadata for Image.Scale?, MEMORY[0x277CE1060], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Font.Weight?();
    if (v1 <= 0x3F)
    {
      _s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSgMaTm_0(319, &lazy cache variable for type metadata for Environment<Image.Scale>, MEMORY[0x277CE1060], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Font.Weight?()
{
  if (!lazy cache variable for type metadata for Font.Weight?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Font.Weight?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<GridView.Base.Artwork.SystemImage, _ConditionalContent<Image, Image>>, <<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<GridView.Base.Artwork.SystemImage, _ConditionalContent<Image, Image>>, <<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<GridView.Base.Artwork.SystemImage, _ConditionalContent<Image, Image>>, <<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACy07CarPlayB08GridViewC4BaseO7ArtworkV11SystemImageVACyAA0L0VANGG010_MusicKit_aB00jL0V01_mn9Internal_aB0E18artworkPlaceholderyQrx0mN0AIVSg_So6CGSizeVAA5ColorVtcAA0H0RzlFQOy_AH0Q0VSgQo_GMd);
    lazy protocol witness table accessor for type _ConditionalContent<GridView.Base.Artwork.SystemImage, _ConditionalContent<Image, Image>> and conformance <> _ConditionalContent<A, B>();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9CarPlayUI8GridViewC4BaseO11PlaceholderVSgMd);
    lazy protocol witness table accessor for type GridView.Base.Placeholder? and conformance <A> A?();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<GridView.Base.Artwork.SystemImage, _ConditionalContent<Image, Image>>, <<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<Image, ModifiedContent<Color, _OverlayModifier<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _PaddingLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<Image, ModifiedContent<Color, _OverlayModifier<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _PaddingLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<Image, ModifiedContent<Color, _OverlayModifier<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _PaddingLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA5ImageVAA08ModifiedD0VyAA5ColorVAA16_OverlayModifierVyAGyAGyAA4ViewPAAE10fontWeightyQrAA4FontV0L0VSgFQOyAGyAeA022_EnvironmentKeyWritingI0VyAE5ScaleOGG_Qo_AA14_PaddingLayoutVGAA016_ForegroundStyleI0VyAA017HierarchicalShapeU0VGGGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Color, _OverlayModifier<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _PaddingLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<Image, ModifiedContent<Color, _OverlayModifier<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _PaddingLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Color, _OverlayModifier<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _PaddingLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Color, _OverlayModifier<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _PaddingLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Color, _OverlayModifier<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _PaddingLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ColorVAA16_OverlayModifierVyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyAA5ImageVAA022_EnvironmentKeyWritingG0VyAQ5ScaleOGG_Qo_AA14_PaddingLayoutVGAA016_ForegroundStyleG0VyAA017HierarchicalShapeT0VGGGGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _OverlayModifier<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _PaddingLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAEyAA4ViewPAAE10fontWeightyQrAA4FontV0I0VSgFQOyAEyAA5ImageVAA022_EnvironmentKeyWritingD0VyAO5ScaleOGG_Qo_AA14_PaddingLayoutVGAA016_ForegroundStyleD0VyAA017HierarchicalShapeS0VGGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Color, _OverlayModifier<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _PaddingLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Image.Scale> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Group<_ConditionalContent<_ConditionalContent<Image, ModifiedContent<Color, _OverlayModifier<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _PaddingLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>>>>, Image>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<_ConditionalContent<_ConditionalContent<Image, ModifiedContent<Color, _OverlayModifier<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _PaddingLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>>>>, Image>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<_ConditionalContent<_ConditionalContent<Image, ModifiedContent<Color, _OverlayModifier<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _PaddingLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>>>>, Image>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEyAA5ImageVAA08ModifiedE0VyAA5ColorVAA16_OverlayModifierVyAIyAIyAA4ViewPAAE10fontWeightyQrAA4FontV0M0VSgFQOyAIyAgA022_EnvironmentKeyWritingJ0VyAG5ScaleOGG_Qo_AA14_PaddingLayoutVGAA016_ForegroundStyleJ0VyAA017HierarchicalShapeV0VGGGGGAGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<Image, ModifiedContent<Color, _OverlayModifier<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _PaddingLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>>>>, Image> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<_ConditionalContent<_ConditionalContent<Image, ModifiedContent<Color, _OverlayModifier<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _PaddingLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>>>>, Image>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<Image, ModifiedContent<Color, _OverlayModifier<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _PaddingLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>>>>, Image> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<Image, ModifiedContent<Color, _OverlayModifier<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _PaddingLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>>>>, Image> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<Image, ModifiedContent<Color, _OverlayModifier<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _PaddingLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>>>>, Image> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA5ImageVAA08ModifiedD0VyAA5ColorVAA16_OverlayModifierVyAGyAGyAA4ViewPAAE10fontWeightyQrAA4FontV0L0VSgFQOyAGyAeA022_EnvironmentKeyWritingI0VyAE5ScaleOGG_Qo_AA14_PaddingLayoutVGAA016_ForegroundStyleI0VyAA017HierarchicalShapeU0VGGGGGAEGMd);
    lazy protocol witness table accessor for type _ConditionalContent<Image, ModifiedContent<Color, _OverlayModifier<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _PaddingLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>>>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<Image, ModifiedContent<Color, _OverlayModifier<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _PaddingLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>>>>, Image> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void CPUIGridViewTableViewCell.contentInsets.didset(double a1, double a2, double a3, double a4)
{
  v6 = &v4[OBJC_IVAR___CPUIGridViewTableViewCell_contentInsets];
  v7 = *&v4[OBJC_IVAR___CPUIGridViewTableViewCell_contentInsets + 8];
  if (*&v4[OBJC_IVAR___CPUIGridViewTableViewCell_contentInsets] == a1 && v7 == a2 && *&v4[OBJC_IVAR___CPUIGridViewTableViewCell_contentInsets + 16] == a3 && *&v4[OBJC_IVAR___CPUIGridViewTableViewCell_contentInsets + 24] == a4)
  {
    return;
  }

  v11 = &v4[OBJC_IVAR___CPUIGridViewTableViewCell_gridViewConstraints];
  v12 = *&v4[OBJC_IVAR___CPUIGridViewTableViewCell_gridViewConstraints];
  if (!v12)
  {
    __break(1u);
    goto LABEL_20;
  }

  [v12 setConstant_];
  v13 = *(v11 + 1);
  if (!v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v13 setConstant_];
  v14 = *(v11 + 2);
  if (!v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v14 setConstant_];
  v15 = *(v11 + 3);
  if (!v15)
  {
LABEL_22:
    __break(1u);
    return;
  }

  [v15 setConstant_];
  [v4 invalidateIntrinsicContentSize];

  [v4 setNeedsLayout];
}

char *CPUIGridViewTableViewCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR___CPUIGridViewTableViewCell_gridView;
  type metadata accessor for GridView();
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[v8] = v9;
  v10 = &v4[OBJC_IVAR___CPUIGridViewTableViewCell_gridViewConstraints];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v31 = 1;
  v30 = 1;
  v29[3] = &type metadata for GridView.Condensed.Layout;
  v29[4] = &protocol witness table for GridView.Condensed.Layout;
  v11 = swift_allocObject();
  v29[0] = v11;
  v12 = *(MEMORY[0x277D768C8] + 16);
  *(v11 + 16) = *MEMORY[0x277D768C8];
  *(v11 + 32) = v12;
  *(v11 + 48) = 0;
  *(v11 + 56) = 1;
  *(v11 + 64) = 0;
  *(v11 + 72) = 1;
  v13 = OBJC_IVAR____TtC9CarPlayUI8GridView_layout;
  swift_beginAccess();
  v14 = v9;
  __swift_assign_boxed_opaque_existential_1(&v9[v13], v29);
  swift_endAccess();
  GridView.updateLayout(animated:)(0);

  __swift_destroy_boxed_opaque_existential_1(v29);
  v15 = *&v4[v8];
  v16 = &v15[OBJC_IVAR____TtC9CarPlayUI8GridView_dataSource];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v16 + 1) = 0;
  swift_unknownObjectWeakAssign();
  v18 = swift_unknownObjectWeakLoadStrong();
  v19 = v15;
  if (v18)
  {
    swift_unknownObjectRelease();
    if (Strong && v18 == Strong)
    {
      goto LABEL_7;
    }
  }

  else if (!Strong)
  {
    goto LABEL_8;
  }

  GridView.reloadData()();
LABEL_7:
  swift_unknownObjectRelease();
LABEL_8:

  v20 = &v4[OBJC_IVAR___CPUIGridViewTableViewCell_contentInsets];
  v21 = *(MEMORY[0x277D75060] + 16);
  *v20 = *MEMORY[0x277D75060];
  *(v20 + 1) = v21;
  if (a3)
  {
    v22 = MEMORY[0x245D2BBE0](a2, a3);
  }

  else
  {
    v22 = 0;
  }

  v28.receiver = v4;
  v28.super_class = CPUIGridViewTableViewCell;
  v23 = objc_msgSendSuper2(&v28, sel_initWithStyle_reuseIdentifier_, a1, v22);

  v24 = *&v23[OBJC_IVAR___CPUIGridViewTableViewCell_gridView];
  v25 = v23;
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  [v25 layoutGridView];
  [v25 setSelectionStyle_];
  v26 = [objc_opt_self() clearColor];
  [v25 setBackgroundColor_];

  [v25 setNeedsLayout];
  return v25;
}

Swift::Void __swiftcall CPUIGridViewTableViewCell.layoutGridView()()
{
  v1 = [v0 contentView];
  v2 = *&v0[OBJC_IVAR___CPUIGridViewTableViewCell_gridView];
  [v1 addSubview_];

  v3 = [v2 leadingAnchor];
  v4 = [v0 contentView];
  v5 = [v4 leadingAnchor];

  [v0 contentInsets];
  v7 = [v3 constraintEqualToAnchor:v5 constant:v6];

  v8 = &v0[OBJC_IVAR___CPUIGridViewTableViewCell_gridViewConstraints];
  v9 = *&v0[OBJC_IVAR___CPUIGridViewTableViewCell_gridViewConstraints];
  *&v0[OBJC_IVAR___CPUIGridViewTableViewCell_gridViewConstraints] = v7;

  v10 = [v2 trailingAnchor];
  v11 = [v0 contentView];
  v12 = [v11 trailingAnchor];

  [v0 contentInsets];
  v14 = [v10 constraintEqualToAnchor:v12 constant:v13];

  v15 = *(v8 + 1);
  *(v8 + 1) = v14;

  v16 = [v2 topAnchor];
  v17 = [v0 contentView];
  v18 = [v17 topAnchor];

  [v0 contentInsets];
  v19 = [v16 constraintEqualToAnchor:v18 constant:?];

  v20 = *(v8 + 2);
  *(v8 + 2) = v19;

  v21 = [v2 bottomAnchor];
  v22 = [v0 contentView];
  v23 = [v22 bottomAnchor];

  [v0 contentInsets];
  v25 = [v21 constraintEqualToAnchor:v23 constant:v24];

  v26 = *(v8 + 3);
  *(v8 + 3) = v25;
  v27 = v25;

  v28 = objc_opt_self();
  CPUIGridViewTableViewCell.GridViewConstraints.all.getter(*v8, *(v8 + 1), *(v8 + 2), v25);

  type metadata accessor for ISImageDescriptor(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v28 activateConstraints_];
}

uint64_t CPUIGridViewTableViewCell.GridViewConstraints.all.getter(void *a1, void *a2, void *a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  result = swift_allocObject();
  *(result + 16) = xmmword_2431E46C0;
  if (!a1)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(result + 32) = a1;
  if (!a2)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  *(result + 40) = a2;
  if (!a3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(result + 48) = a3;
  if (a4)
  {
    *(result + 56) = a4;
    v9 = result;
    v10 = a1;
    v11 = a2;
    v12 = a3;
    v13 = a4;
    return v9;
  }

LABEL_9:
  __break(1u);
  return result;
}

void CPUIGridViewTableViewCell.init(coder:)()
{
  v1 = OBJC_IVAR___CPUIGridViewTableViewCell_gridView;
  type metadata accessor for GridView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = (v0 + OBJC_IVAR___CPUIGridViewTableViewCell_gridViewConstraints);
  *v2 = 0u;
  v2[1] = 0u;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

CGSize __swiftcall CPUIGridViewTableViewCell.sizeThatFits(_:)(CGSize a1)
{
  v2 = *&v1[OBJC_IVAR___CPUIGridViewTableViewCell_gridView];
  v3 = [v1 contentView];
  [v3 bounds];

  [v1 contentInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [v1 effectiveUserInterfaceLayoutDirection];
  v18.top = v5;
  v18.leading = v7;
  v18.bottom = v9;
  v18.trailing = v11;
  v19 = UIEdgeInsets.init(directionalEdgeInsets:layoutDirection:)(v18, v12);
  v13 = CGSize.inset(by:)(v19);

  [v2 sizeThatFits_];
  result.height = v15;
  result.width = v14;
  return result;
}

Swift::Void __swiftcall CPUIGridViewTableViewCell.prepareForReuse()()
{
  v0.super_class = CPUIGridViewTableViewCell;
  objc_msgSendSuper2(&v0, sel_prepareForReuse);
  GridView.prepareForReuse()();
}

Swift::Void __swiftcall CPUIGridViewTableViewCell._setContentClipCorners(_:updateCorners:)(CACornerMask _, Swift::Bool updateCorners)
{
  v3 = [v2 layer];
  [v3 setMasksToBounds_];
}

uint64_t one-time initialization function for log()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.log);
  __swift_project_value_buffer(v0, static Logger.log);
  return Logger.init(subsystem:category:)();
}

uint64_t static CPUILimitedUITrait.defaultValue.getter()
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  return static CPUILimitedUITrait.defaultValue;
}

uint64_t protocol witness for static UITraitDefinition.defaultValue.getter in conformance CPUILimitedUITrait@<X0>(_BYTE *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static CPUILimitedUITrait.defaultValue;
  return result;
}

uint64_t UITraitCollection.isLimitedUI.getter()
{
  lazy protocol witness table accessor for type CPUILimitedUITrait and conformance CPUILimitedUITrait();

  return UITraitCollection.subscript.getter();
}

unint64_t lazy protocol witness table accessor for type CPUILimitedUITrait and conformance CPUILimitedUITrait()
{
  result = lazy protocol witness table cache variable for type CPUILimitedUITrait and conformance CPUILimitedUITrait;
  if (!lazy protocol witness table cache variable for type CPUILimitedUITrait and conformance CPUILimitedUITrait)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CPUILimitedUITrait and conformance CPUILimitedUITrait);
  }

  return result;
}

uint64_t UIMutableTraits.limitedUI.getter()
{
  lazy protocol witness table accessor for type CPUILimitedUITrait and conformance CPUILimitedUITrait();

  return dispatch thunk of UIMutableTraits.subscript.getter();
}

uint64_t UIMutableTraits.limitedUI.setter()
{
  lazy protocol witness table accessor for type CPUILimitedUITrait and conformance CPUILimitedUITrait();

  return dispatch thunk of UIMutableTraits.subscript.setter();
}

uint64_t (*UIMutableTraits.limitedUI.modify(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  lazy protocol witness table accessor for type CPUILimitedUITrait and conformance CPUILimitedUITrait();
  *(a1 + 24) = dispatch thunk of UIMutableTraits.subscript.getter() & 1;
  return UIMutableTraits.limitedUI.modify;
}

Swift::Int CPUILimitedUserInterfaces.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x245D2C000](v1);
  return Hasher._finalize()();
}

void one-time initialization function for identifier(uint64_t a1, uint64_t a2, SEL *a3, uint64_t *a4, void *a5)
{
  v7 = [objc_opt_self() *a3];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *a4 = v8;
  *a5 = v10;
}

uint64_t static CPUILimitedUITrait.identifier.getter(void *a1, void *a2)
{
  if (*a1 != -1)
  {
    v4 = a2;
    swift_once();
    a2 = v4;
  }

  v2 = *a2;

  return v2;
}

uint64_t one-time initialization function for defaultValue()
{
  v0 = [objc_opt_self() defaultValue];
  result = specialized Set<>.init(_:)(v0);
  static CPUILimitedUserInterfacesTrait.defaultValue = result;
  return result;
}

uint64_t static CPUILimitedUserInterfacesTrait.defaultValue.getter()
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }
}

uint64_t protocol witness for static UITraitDefinition.defaultValue.getter in conformance CPUILimitedUserInterfacesTrait@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static CPUILimitedUserInterfacesTrait.defaultValue;
}

uint64_t UITraitCollection.limitedUserInterfaces.getter()
{
  lazy protocol witness table accessor for type CPUILimitedUserInterfacesTrait and conformance CPUILimitedUserInterfacesTrait();
  UITraitCollection.subscript.getter();
  return v1;
}

unint64_t lazy protocol witness table accessor for type CPUILimitedUserInterfacesTrait and conformance CPUILimitedUserInterfacesTrait()
{
  result = lazy protocol witness table cache variable for type CPUILimitedUserInterfacesTrait and conformance CPUILimitedUserInterfacesTrait;
  if (!lazy protocol witness table cache variable for type CPUILimitedUserInterfacesTrait and conformance CPUILimitedUserInterfacesTrait)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CPUILimitedUserInterfacesTrait and conformance CPUILimitedUserInterfacesTrait);
  }

  return result;
}

uint64_t UIMutableTraits.limitedUserInterfaces.getter()
{
  lazy protocol witness table accessor for type CPUILimitedUserInterfacesTrait and conformance CPUILimitedUserInterfacesTrait();
  dispatch thunk of UIMutableTraits.subscript.getter();
  return v1;
}

void (*UIMutableTraits.limitedUserInterfaces.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  lazy protocol witness table accessor for type CPUILimitedUserInterfacesTrait and conformance CPUILimitedUserInterfacesTrait();
  dispatch thunk of UIMutableTraits.subscript.getter();
  return UIMutableTraits.limitedUserInterfaces.modify;
}

void UIMutableTraits.limitedUserInterfaces.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  if (a2)
  {

    lazy protocol witness table accessor for type CPUILimitedUserInterfacesTrait and conformance CPUILimitedUserInterfacesTrait();
    dispatch thunk of UIMutableTraits.subscript.setter();
  }

  else
  {
    *v2 = v3;
    lazy protocol witness table accessor for type CPUILimitedUserInterfacesTrait and conformance CPUILimitedUserInterfacesTrait();
    dispatch thunk of UIMutableTraits.subscript.setter();
  }

  free(v2);
}

unint64_t lazy protocol witness table accessor for type CPUILimitedUserInterfaces and conformance CPUILimitedUserInterfaces()
{
  result = lazy protocol witness table cache variable for type CPUILimitedUserInterfaces and conformance CPUILimitedUserInterfaces;
  if (!lazy protocol witness table cache variable for type CPUILimitedUserInterfaces and conformance CPUILimitedUserInterfaces)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CPUILimitedUserInterfaces and conformance CPUILimitedUserInterfaces);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CPUILimitedUserInterfaces(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CPUILimitedUserInterfaces(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized Set<>.init(_:)(__int16 a1)
{
  v4 = MEMORY[0x277D84FA0];
  if (a1)
  {
    specialized Set._Variant.insert(_:)(&v3, 0);
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  specialized Set._Variant.insert(_:)(&v3, 1);
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  specialized Set._Variant.insert(_:)(&v3, 2);
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  specialized Set._Variant.insert(_:)(&v3, 3);
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  specialized Set._Variant.insert(_:)(&v3, 4);
  if ((a1 & 0x20) == 0)
  {
LABEL_7:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  specialized Set._Variant.insert(_:)(&v3, 5);
  if ((a1 & 0x40) == 0)
  {
LABEL_8:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_19:
    specialized Set._Variant.insert(_:)(&v3, 7);
    if ((a1 & 0x100) == 0)
    {
      return v4;
    }

    goto LABEL_10;
  }

LABEL_18:
  specialized Set._Variant.insert(_:)(&v3, 6);
  if ((a1 & 0x80) != 0)
  {
    goto LABEL_19;
  }

LABEL_9:
  if ((a1 & 0x100) != 0)
  {
LABEL_10:
    specialized Set._Variant.insert(_:)(&v3, 8);
  }

  return v4;
}

{
  v4 = MEMORY[0x277D84FA0];
  if (a1)
  {
    specialized Set._Variant.insert(_:)(&v3, 1);
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  specialized Set._Variant.insert(_:)(&v3, 1);
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  specialized Set._Variant.insert(_:)(&v3, 2);
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  specialized Set._Variant.insert(_:)(&v3, 3);
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  specialized Set._Variant.insert(_:)(&v3, 4);
  if ((a1 & 0x20) == 0)
  {
LABEL_7:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  specialized Set._Variant.insert(_:)(&v3, 5);
  if ((a1 & 0x40) == 0)
  {
LABEL_8:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_19:
    specialized Set._Variant.insert(_:)(&v3, 7);
    if ((a1 & 0x100) == 0)
    {
      return v4;
    }

    goto LABEL_10;
  }

LABEL_18:
  specialized Set._Variant.insert(_:)(&v3, 6);
  if ((a1 & 0x80) != 0)
  {
    goto LABEL_19;
  }

LABEL_9:
  if ((a1 & 0x100) != 0)
  {
LABEL_10:
    specialized Set._Variant.insert(_:)(&v3, 8);
  }

  return v4;
}

uint64_t one-time initialization function for standardGlowColor()
{
  result = static Color.white.getter();
  static ArtworkShelfViewController.Specs.standardGlowColor = result;
  return result;
}

uint64_t one-time initialization function for selectedGlowColor()
{
  result = static Color.blue.getter();
  static ArtworkShelfViewController.Specs.selectedGlowColor = result;
  return result;
}

uint64_t ArtworkShelfViewController.CacheReference.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 41, 7);
}

uint64_t protocol witness for ArtworkCacheOwner.id.getter in conformance ArtworkShelfViewController.CacheReference()
{
  v1 = *(v0 + 16);

  return v1;
}

double ArtworkShelfViewController.Layout.targetContentOffset(forProposedContentOffset:withScrollingVelocity:)(double a1, double a2, double a3, double a4)
{
  v42.receiver = v4;
  v42.super_class = type metadata accessor for ArtworkShelfViewController.Layout();
  objc_msgSendSuper2(&v42, sel_targetContentOffsetForProposedContentOffset_withScrollingVelocity_, a1, a2, a3, a4);
  v10 = v9;
  v12 = v11;
  v13 = [v4 collectionView];
  if (v13)
  {
    v41 = v10;
    v14 = v13;
    [v14 adjustedContentInset];
    v16 = v15 + a1;
    [v4 itemSize];
    v18 = v17;
    [v4 itemSize];
    v20 = v19;
    v21 = [v4 layoutAttributesForElementsInRect_];
    if (!v21)
    {
      goto LABEL_24;
    }

    v22 = v21;
    type metadata accessor for ISImageDescriptor(0, &lazy cache variable for type metadata for UICollectionViewLayoutAttributes);
    v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v23 >> 62)
    {
      if (v23 < 0)
      {
        v37 = v23;
      }

      else
      {
        v37 = v23 & 0xFFFFFFFFFFFFFF8;
      }

      if (MEMORY[0x245D2BF50](v37) >= 1)
      {
        v38 = MEMORY[0x245D2BF50](v37);
        if (v38)
        {
          v24 = v38;
          if (v38 >= 1)
          {
            goto LABEL_5;
          }

          __break(1u);
        }
      }
    }

    else
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v24)
      {
LABEL_5:
        v40 = v12;
        v25 = 0;
        v26 = 0;
        v27 = 0.0;
        do
        {
          if ((v23 & 0xC000000000000001) != 0)
          {
            v28 = MEMORY[0x245D2BEE0](v26, v23);
          }

          else
          {
            v28 = *(v23 + 8 * v26 + 32);
          }

          v29 = v28;
          [v28 frame];
          v47.origin.y = 0.0;
          v47.origin.x = v16;
          v47.size.width = v18;
          v47.size.height = v20;
          v44 = CGRectIntersection(v43, v47);
          x = v44.origin.x;
          y = v44.origin.y;
          width = v44.size.width;
          height = v44.size.height;
          if (v27 >= CGRectGetWidth(v44))
          {
          }

          else
          {
            v45.origin.x = x;
            v45.origin.y = y;
            v45.size.width = width;
            v45.size.height = height;
            v27 = CGRectGetWidth(v45);

            v25 = v29;
          }

          ++v26;
        }

        while (v24 != v26);

        v10 = v41;
        if (v25)
        {
          [v25 frame];
          MinX = CGRectGetMinX(v46);
          [v14 adjustedContentInset];
          v36 = v35;

          return MinX - v36;
        }

LABEL_24:

        return v10;
      }
    }

    goto LABEL_24;
  }

  return v10;
}

uint64_t ArtworkShelfViewController.CurrentItemObserver.currentItem.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t ArtworkShelfViewController.CurrentItemObserver.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC9CarPlayUI26ArtworkShelfViewControllerP33_0605145B83C8F0D0362F9ABD7B0C16D919CurrentItemObserver__currentItem;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9CarPlayUI26ArtworkShelfViewControllerC0H5ModelVSgGMd);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance ArtworkShelfViewController.CurrentItemObserver@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ArtworkShelfViewController.CurrentItemObserver(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t ArtworkShelfViewController.Cell.body.getter@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v2 = type metadata accessor for ArtworkImage();
  v58 = *(v2 - 8);
  v59 = v2;
  MEMORY[0x28223BE20](v2);
  v57 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewP018_MusicKitInternal_aB0E14artworkCaching5ownerQrAF17ArtworkCacheOwner_p_tFQOy01_fg1_aB00L5ImageV_Qo_AA11_ClipEffectVyAA16RoundedRectangleVGG07CarPlayB012GlowModifierVGMd);
  MEMORY[0x28223BE20](v67);
  v60 = &v57 - v4;
  v65 = type metadata accessor for Artwork();
  v5 = *(v65 - 1);
  v6 = MEMORY[0x28223BE20](v65);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v63 = &v57 - v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0VyAGyAA5ImageVAA11_ClipEffectVyAA16RoundedRectangleVGG07CarPlayB012GlowModifierVGAGyAGyAA4ViewP018_MusicKitInternal_aB0E14artworkCaching5ownerQrAV17ArtworkCacheOwner_p_tFQOy01_qr1_aB00wG0V_Qo_ANGARGGAA05EmptyP0V_GMd);
  MEMORY[0x28223BE20](v69);
  v11 = &v57 - v10;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA5ImageVAA11_ClipEffectVyAA16RoundedRectangleVGG07CarPlayB012GlowModifierVGAGyAGyAA4ViewP018_MusicKitInternal_aB0E14artworkCaching5ownerQrAV17ArtworkCacheOwner_p_tFQOy01_qr1_aB00wG0V_Qo_ANGARG_GMd);
  MEMORY[0x28223BE20](v61);
  v64 = &v57 - v12;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA5ImageVAA11_ClipEffectVyAA16RoundedRectangleVGG07CarPlayB012GlowModifierVGAEyAEyAA4ViewP018_MusicKitInternal_aB0E14artworkCaching5ownerQrAT17ArtworkCacheOwner_p_tFQOy01_pq1_aB00vF0V_Qo_ALGAPGGMd);
  MEMORY[0x28223BE20](v68);
  v66 = &v57 - v13;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA11_ClipEffectVyAA16RoundedRectangleVGG07CarPlayB012GlowModifierVGMd);
  MEMORY[0x28223BE20](v62);
  v15 = (&v57 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelV5ImageOSgMd);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = (&v57 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelVSgMd);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = (&v57 - v20);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v22 = type metadata accessor for ArtworkShelfViewController.ViewModel(0);
  if ((*(*(v22 - 8) + 48))(v21, 1, v22))
  {
    outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v21, &_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelVSgMd);
LABEL_3:
    if (one-time initialization token for standardGlowColor != -1)
    {
      swift_once();
    }

    v23 = &static ArtworkShelfViewController.Specs.standardGlowColor;
    goto LABEL_13;
  }

  v24 = *v21;
  v25 = v21[1];

  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v21, &_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelVSgMd);
  v26 = (v1 + *(type metadata accessor for ArtworkShelfViewController.Cell(0) + 20));
  if (v24 == *v26 && v25 == v26[1])
  {
  }

  else
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v27 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  if (one-time initialization token for selectedGlowColor != -1)
  {
    swift_once();
  }

  v23 = &static ArtworkShelfViewController.Specs.selectedGlowColor;
LABEL_13:
  v28 = *v23;

  v29 = type metadata accessor for ArtworkShelfViewController.Cell(0);
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v1 + *(v29 + 20) + *(v22 + 24), v18, &_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelV5ImageOSgMd);
  v30 = type metadata accessor for ArtworkShelfViewController.ViewModel.Image(0);
  if ((*(*(v30 - 8) + 48))(v18, 1, v30) == 1)
  {
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, _ClipEffect<RoundedRectangle>>, GlowModifier>, ModifiedContent<ModifiedContent<<<opaque return type of View.artworkCaching(owner:)>>.0, _ClipEffect<RoundedRectangle>>, GlowModifier>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = v63;
    v33 = v65;
    (*(v5 + 32))(v63, v18, v65);
    (*(v5 + 16))(v8, v32, v33);
    v34 = *(v1 + *(v29 + 24));
    v35 = v57;
    ArtworkImage.init(_:width:height:)();
    lazy protocol witness table accessor for type ArtworkShelfViewController.Cell and conformance ArtworkShelfViewController.Cell(&lazy protocol witness table cache variable for type ArtworkShelfViewController.CacheReference and conformance ArtworkShelfViewController.CacheReference, type metadata accessor for ArtworkShelfViewController.CacheReference);
    lazy protocol witness table accessor for type ArtworkShelfViewController.Cell and conformance ArtworkShelfViewController.Cell(&lazy protocol witness table cache variable for type ArtworkImage and conformance ArtworkImage, MEMORY[0x277CE43D0]);
    v36 = v60;
    v37 = v59;
    View.artworkCaching(owner:)();
    (*(v58 + 8))(v35, v37);
    v38 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP018_MusicKitInternal_aB0E14artworkCaching5ownerQrAF17ArtworkCacheOwner_p_tFQOy01_fg1_aB00L5ImageV_Qo_AA11_ClipEffectVyAA16RoundedRectangleVGGMd) + 36));
    v39 = *(type metadata accessor for RoundedRectangle() + 20);
    v40 = *MEMORY[0x277CE0118];
    v41 = type metadata accessor for RoundedCornerStyle();
    (*(*(v41 - 8) + 104))(&v38[v39], v40, v41);
    __asm { FMOV            V0.2D, #6.5 }

    *v38 = _Q0;
    *&v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd) + 36)] = 256;
    v47 = (v36 + *(v67 + 36));
    *v47 = v34;
    v47[1] = 0x401A000000000000;
    v47[2] = v28;
    outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v36, v64, &_s7SwiftUI15ModifiedContentVyACyAA4ViewP018_MusicKitInternal_aB0E14artworkCaching5ownerQrAF17ArtworkCacheOwner_p_tFQOy01_fg1_aB00L5ImageV_Qo_AA11_ClipEffectVyAA16RoundedRectangleVGG07CarPlayB012GlowModifierVGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.artworkCaching(owner:)>>.0, _ClipEffect<RoundedRectangle>>, GlowModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _ClipEffect<RoundedRectangle>>, GlowModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA11_ClipEffectVyAA16RoundedRectangleVGG07CarPlayB012GlowModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA11_ClipEffectVyAA16RoundedRectangleVGG07CarPlayB012GlowModifierVGMR, lazy protocol witness table accessor for type ModifiedContent<Image, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.artworkCaching(owner:)>>.0, _ClipEffect<RoundedRectangle>>, GlowModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.artworkCaching(owner:)>>.0, _ClipEffect<RoundedRectangle>>, GlowModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA4ViewP018_MusicKitInternal_aB0E14artworkCaching5ownerQrAF17ArtworkCacheOwner_p_tFQOy01_fg1_aB00L5ImageV_Qo_AA11_ClipEffectVyAA16RoundedRectangleVGG07CarPlayB012GlowModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewP018_MusicKitInternal_aB0E14artworkCaching5ownerQrAF17ArtworkCacheOwner_p_tFQOy01_fg1_aB00L5ImageV_Qo_AA11_ClipEffectVyAA16RoundedRectangleVGG07CarPlayB012GlowModifierVGMR, lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.artworkCaching(owner:)>>.0, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);

    v48 = v66;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v48, v11, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA5ImageVAA11_ClipEffectVyAA16RoundedRectangleVGG07CarPlayB012GlowModifierVGAEyAEyAA4ViewP018_MusicKitInternal_aB0E14artworkCaching5ownerQrAT17ArtworkCacheOwner_p_tFQOy01_pq1_aB00vF0V_Qo_ALGAPGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, _ClipEffect<RoundedRectangle>>, GlowModifier>, ModifiedContent<ModifiedContent<<<opaque return type of View.artworkCaching(owner:)>>.0, _ClipEffect<RoundedRectangle>>, GlowModifier>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();

    outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v48, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA5ImageVAA11_ClipEffectVyAA16RoundedRectangleVGG07CarPlayB012GlowModifierVGAEyAEyAA4ViewP018_MusicKitInternal_aB0E14artworkCaching5ownerQrAT17ArtworkCacheOwner_p_tFQOy01_pq1_aB00vF0V_Qo_ALGAPGGMd);
    outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v36, &_s7SwiftUI15ModifiedContentVyACyAA4ViewP018_MusicKitInternal_aB0E14artworkCaching5ownerQrAF17ArtworkCacheOwner_p_tFQOy01_fg1_aB00L5ImageV_Qo_AA11_ClipEffectVyAA16RoundedRectangleVGG07CarPlayB012GlowModifierVGMd);
    return (*(v5 + 8))(v63, v65);
  }

  else
  {
    v65 = *v18;
    v49 = Image.init(uiImage:)();
    v50 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA11_ClipEffectVyAA16RoundedRectangleVGGMd) + 36);
    v51 = *(type metadata accessor for RoundedRectangle() + 20);
    v52 = *MEMORY[0x277CE0118];
    v53 = type metadata accessor for RoundedCornerStyle();
    (*(*(v53 - 8) + 104))(&v50[v51], v52, v53);
    __asm { FMOV            V0.2D, #6.5 }

    *v50 = _Q0;
    *&v50[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd) + 36)] = 256;
    *v15 = v49;
    v55 = (v15 + *(v62 + 36));
    *v55 = *(v1 + *(v29 + 24));
    v55[1] = 0x401A000000000000;
    v55[2] = v28;
    outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v15, v64, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA11_ClipEffectVyAA16RoundedRectangleVGG07CarPlayB012GlowModifierVGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.artworkCaching(owner:)>>.0, _ClipEffect<RoundedRectangle>>, GlowModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _ClipEffect<RoundedRectangle>>, GlowModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA11_ClipEffectVyAA16RoundedRectangleVGG07CarPlayB012GlowModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA11_ClipEffectVyAA16RoundedRectangleVGG07CarPlayB012GlowModifierVGMR, lazy protocol witness table accessor for type ModifiedContent<Image, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.artworkCaching(owner:)>>.0, _ClipEffect<RoundedRectangle>>, GlowModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.artworkCaching(owner:)>>.0, _ClipEffect<RoundedRectangle>>, GlowModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA4ViewP018_MusicKitInternal_aB0E14artworkCaching5ownerQrAF17ArtworkCacheOwner_p_tFQOy01_fg1_aB00L5ImageV_Qo_AA11_ClipEffectVyAA16RoundedRectangleVGG07CarPlayB012GlowModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewP018_MusicKitInternal_aB0E14artworkCaching5ownerQrAF17ArtworkCacheOwner_p_tFQOy01_fg1_aB00L5ImageV_Qo_AA11_ClipEffectVyAA16RoundedRectangleVGG07CarPlayB012GlowModifierVGMR, lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.artworkCaching(owner:)>>.0, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);

    v56 = v66;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v56, v11, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA5ImageVAA11_ClipEffectVyAA16RoundedRectangleVGG07CarPlayB012GlowModifierVGAEyAEyAA4ViewP018_MusicKitInternal_aB0E14artworkCaching5ownerQrAT17ArtworkCacheOwner_p_tFQOy01_pq1_aB00vF0V_Qo_ALGAPGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, _ClipEffect<RoundedRectangle>>, GlowModifier>, ModifiedContent<ModifiedContent<<<opaque return type of View.artworkCaching(owner:)>>.0, _ClipEffect<RoundedRectangle>>, GlowModifier>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();

    outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v56, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA5ImageVAA11_ClipEffectVyAA16RoundedRectangleVGG07CarPlayB012GlowModifierVGAEyAEyAA4ViewP018_MusicKitInternal_aB0E14artworkCaching5ownerQrAT17ArtworkCacheOwner_p_tFQOy01_pq1_aB00vF0V_Qo_ALGAPGGMd);
    return outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v15, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA11_ClipEffectVyAA16RoundedRectangleVGG07CarPlayB012GlowModifierVGMd);
  }
}

uint64_t ArtworkShelfViewController.ViewModel.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ArtworkShelfViewController.ViewModel.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ArtworkShelfViewController.ViewModel.init(id:title:image:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = *(type metadata accessor for ArtworkShelfViewController.ViewModel(0) + 24);
  v11 = type metadata accessor for ArtworkShelfViewController.ViewModel.Image(0);
  (*(*(v11 - 8) + 56))(&a5[v10], 1, 1, v11);
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = a3;
  return outlined assign with take of ArtworkShelfViewController.ViewModel.Image?(a4, &a5[v10], &_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelV5ImageOSgMd);
}

id key path setter for ArtworkShelfViewController.items : ArtworkShelfViewController(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_items;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return ArtworkShelfViewController.items.didset();
}

id ArtworkShelfViewController.items.didset()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelVSgMd);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12[-v2];
  v4 = OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_items;
  swift_beginAccess();
  v5 = *(v0 + v4);
  v6 = *(v5 + 16);
  v7 = type metadata accessor for ArtworkShelfViewController.ViewModel(0);
  v8 = *(v7 - 8);
  if (v6)
  {
    outlined init with copy of ArtworkShelfViewController.ViewModel(v5 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)), v3);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  (*(v8 + 56))(v3, v9, 1, v7);
  v10 = OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_currentItem;
  swift_beginAccess();
  outlined assign with copy of ArtworkShelfViewController.ViewModel?(v3, v0 + v10);
  swift_endAccess();
  ArtworkShelfViewController.currentItem.didset();
  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v3, &_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelVSgMd);
  return [*(v0 + OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_collectionView) reloadData];
}

id ArtworkShelfViewController.items.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_items;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return ArtworkShelfViewController.items.didset();
}

uint64_t (*ArtworkShelfViewController.items.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return ArtworkShelfViewController.items.modify;
}

void ArtworkShelfViewController.itemSize.didset()
{
  v1 = [*&v0[OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_collectionView] collectionViewLayout];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = &v0[OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_itemSize];
    swift_beginAccess();
    [v3 setItemSize_];
    [v3 invalidateLayout];
  }

  v5 = ArtworkShelfViewController.collectionViewHeightConstraint.getter();
  v6 = &v0[OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_itemSize];
  swift_beginAccess();
  [v5 setConstant_];

  v7 = [v0 view];
  if (v7)
  {
    v8 = v7;
    [v7 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

double ArtworkShelfViewController.itemSize.getter()
{
  v1 = v0 + OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_itemSize;
  swift_beginAccess();
  return *v1;
}

void ArtworkShelfViewController.itemSize.setter(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_itemSize);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  ArtworkShelfViewController.itemSize.didset();
}

uint64_t (*ArtworkShelfViewController.itemSize.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return ArtworkShelfViewController.itemSize.modify;
}

uint64_t ArtworkShelfViewController.items.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t ArtworkShelfViewController.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ArtworkShelfViewController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return ArtworkShelfViewController.delegate.modify;
}

void ArtworkShelfViewController.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id ArtworkShelfViewController.collectionViewHeightConstraint.getter()
{
  v1 = OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController____lazy_storage___collectionViewHeightConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController____lazy_storage___collectionViewHeightConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController____lazy_storage___collectionViewHeightConstraint);
  }

  else
  {
    v4 = [*(v0 + OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_collectionView) heightAnchor];
    v5 = [v4 constraintEqualToConstant_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t ArtworkShelfViewController.cellRegistration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0abD0C9CarPlayUI012ArtworkShelfB10ControllerC0B5ModelVGSgMd);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController____lazy_storage___cellRegistration;
  swift_beginAccess();
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v1 + v9, v8, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0abD0C9CarPlayUI012ArtworkShelfB10ControllerC0B5ModelVGSgMd);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0abD0C9CarPlayUI012ArtworkShelfB10ControllerC0B5ModelVGMd);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v8, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0abD0C9CarPlayUI012ArtworkShelfB10ControllerC0B5ModelVGSgMd);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for ISImageDescriptor(0, &lazy cache variable for type metadata for UICollectionViewCell);
  type metadata accessor for ArtworkShelfViewController.ViewModel(0);
  UICollectionView.CellRegistration.init(handler:)();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  outlined assign with take of ArtworkShelfViewController.ViewModel.Image?(v6, v1 + v9, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0abD0C9CarPlayUI012ArtworkShelfB10ControllerC0B5ModelVGSgMd);
  return swift_endAccess();
}

uint64_t closure #1 in ArtworkShelfViewController.cellRegistration.getter(void *a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v18[-1] - v6);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    [a1 setClipsToBounds_];
    v10 = OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_currentItem;
    swift_beginAccess();
    outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v9 + v10, v7, &_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelVSgMd);
    v11 = type metadata accessor for ArtworkShelfViewController.ViewModel(0);
    if ((*(*(v11 - 8) + 48))(v7, 1, v11))
    {
      v12 = outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v7, &_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelVSgMd);
      goto LABEL_4;
    }

    v14 = *v7;
    v13 = v7[1];

    outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v7, &_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelVSgMd);
    if (v14 == *a3 && v13 == a3[1])
    {
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {
LABEL_4:
        if (one-time initialization token for standardGlowColor == -1)
        {
          goto LABEL_14;
        }

        goto LABEL_16;
      }
    }

    if (one-time initialization token for selectedGlowColor == -1)
    {
LABEL_14:
      MEMORY[0x28223BE20](v12);
      *(&v17 - 2) = v9;
      *(&v17 - 1) = a3;
      v18[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UIHostingConfigurationVy07CarPlayB026ArtworkShelfViewControllerC4Cell33_0605145B83C8F0D0362F9ABD7B0C16D9LLVAA05EmptyI0VGMd);
      v18[4] = lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type UIHostingConfiguration<ArtworkShelfViewController.Cell, EmptyView> and conformance UIHostingConfiguration<A, B>, &_s7SwiftUI22UIHostingConfigurationVy07CarPlayB026ArtworkShelfViewControllerC4Cell33_0605145B83C8F0D0362F9ABD7B0C16D9LLVAA05EmptyI0VGMd);
      __swift_allocate_boxed_opaque_existential_1(v18);
      type metadata accessor for ArtworkShelfViewController.Cell(0);
      lazy protocol witness table accessor for type ArtworkShelfViewController.Cell and conformance ArtworkShelfViewController.Cell(&lazy protocol witness table cache variable for type ArtworkShelfViewController.Cell and conformance ArtworkShelfViewController.Cell, type metadata accessor for ArtworkShelfViewController.Cell);

      UIHostingConfiguration<>.init(content:)();
      MEMORY[0x245D2BDE0](v18);
    }

LABEL_16:
    v12 = swift_once();
    goto LABEL_14;
  }

  return result;
}

uint64_t closure #1 in closure #1 in ArtworkShelfViewController.cellRegistration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for ArtworkShelfViewController.Cell(0);
  outlined init with copy of ArtworkShelfViewController.ViewModel(a2, a3 + v6[5]);
  v7 = (a1 + OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_itemSize);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  v10 = *(a1 + OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_artworkCache);
  type metadata accessor for ArtworkShelfViewController.CurrentItemObserver(0);
  lazy protocol witness table accessor for type ArtworkShelfViewController.Cell and conformance ArtworkShelfViewController.Cell(&lazy protocol witness table cache variable for type ArtworkShelfViewController.CurrentItemObserver and conformance ArtworkShelfViewController.CurrentItemObserver, type metadata accessor for ArtworkShelfViewController.CurrentItemObserver);

  result = ObservedObject.init(wrappedValue:)();
  *a3 = result;
  a3[1] = v12;
  v13 = (a3 + v6[6]);
  *v13 = v8;
  v13[1] = v9;
  *(a3 + v6[7]) = v10;
  return result;
}

void ArtworkShelfViewController.currentItem.didset()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelVSgMd);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  v7 = v0 + OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_currentItem;
  swift_beginAccess();
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v7, v6, &_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelVSgMd);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v6, v4, &_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelVSgMd);

  static Published.subscript.setter();
  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v6, &_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelVSgMd);
  v8 = *(v0 + OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_titleLabel);
  v9 = type metadata accessor for ArtworkShelfViewController.ViewModel(0);
  v10 = 0;
  if (!(*(*(v9 - 8) + 48))(v7, 1, v9))
  {
    v10 = *(v7 + 16);
  }

  v11 = v8;
  [v11 setAttributedText_];
}

Swift::Void __swiftcall ArtworkShelfViewController.viewDidLoad()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0abD0C9CarPlayUI012ArtworkShelfB10ControllerC0B5ModelVGMd);
  v62 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v61 = &v59 - v2;
  v3 = type metadata accessor for ArtworkShelfViewController(0);
  v63.receiver = v0;
  v63.super_class = v3;
  objc_msgSendSuper2(&v63, sel_viewDidLoad);
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = v4;
  v6 = objc_opt_self();
  v7 = [v6 blackColor];
  [v5 setBackgroundColor_];

  v8 = OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_collectionView;
  [*&v0[OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_collectionView] setShowsHorizontalScrollIndicator_];
  [*&v0[v8] setDecelerationRate_];
  [*&v0[v8] setDelegate_];
  [*&v0[v8] setDataSource_];
  v9 = *&v0[v8];
  v10 = [v6 clearColor];
  [v9 setBackgroundColor_];

  [*&v0[v8] setClipsToBounds_];
  [*&v0[v8] setAllowsMultipleSelection_];
  [*&v0[v8] setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = [*&v0[v8] collectionViewLayout];
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v12;
    [v12 setScrollDirection_];
    v14 = &v0[OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_itemSize];
    swift_beginAccess();
    [v13 setItemSize_];
    [v13 setMinimumLineSpacing_];
  }

  v15 = [v0 view];
  if (!v15)
  {
    goto LABEL_13;
  }

  v16 = v15;
  [v15 addSubview_];

  v17 = OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_titleLabel;
  [*&v0[OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_titleLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v0[v17] setTextAlignment_];
  [*&v0[v17] setNumberOfLines_];
  v18 = [v0 view];
  if (!v18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19 = v18;
  v60 = v1;
  [v18 addSubview_];

  v20 = ArtworkShelfViewController.collectionViewHeightConstraint.getter();
  v21 = &v0[OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_itemSize];
  swift_beginAccess();
  [v20 setConstant_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2431E5EC0;
  v23 = [*&v0[v8] leadingAnchor];
  v24 = [v0 view];
  if (!v24)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v25 = v24;
  v26 = [v24 leadingAnchor];

  v27 = [v23 constraintEqualToAnchor_];
  *(v22 + 32) = v27;
  v28 = [*&v0[v8] trailingAnchor];
  v29 = [v0 view];
  if (!v29)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v30 = v29;
  v31 = [v29 trailingAnchor];

  v32 = [v28 constraintEqualToAnchor_];
  *(v22 + 40) = v32;
  v33 = [*&v0[v8] centerYAnchor];
  v34 = [v0 view];
  if (!v34)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v35 = v34;
  v36 = [v34 centerYAnchor];

  v37 = [v33 constraintEqualToAnchor_];
  v38 = *&v0[OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController____lazy_storage___collectionViewHeightConstraint];
  *(v22 + 48) = v37;
  *(v22 + 56) = v38;
  v39 = *&v0[v17];
  v40 = v38;
  v41 = [v39 topAnchor];
  v42 = [*&v0[v8] bottomAnchor];
  v43 = [v41 constraintEqualToAnchor:v42 constant:16.0];

  *(v22 + 64) = v43;
  v44 = [*&v0[v17] leadingAnchor];
  v45 = [v0 view];
  if (!v45)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v46 = v45;
  v47 = [v45 safeAreaLayoutGuide];

  v48 = [v47 leadingAnchor];
  v49 = [v44 constraintEqualToAnchor:v48 constant:5.0];

  *(v22 + 72) = v49;
  v50 = [*&v0[v17] trailingAnchor];
  v51 = [v0 view];
  if (v51)
  {
    v52 = v51;
    v53 = objc_opt_self();
    v54 = [v52 safeAreaLayoutGuide];

    v55 = [v54 trailingAnchor];
    v56 = [v50 constraintEqualToAnchor:v55 constant:-5.0];

    *(v22 + 80) = v56;
    type metadata accessor for ISImageDescriptor(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v53 activateConstraints_];

    v58 = v61;
    ArtworkShelfViewController.cellRegistration.getter(v61);
    (*(v62 + 8))(v58, v60);
    return;
  }

LABEL_19:
  __break(1u);
}

Swift::Void __swiftcall ArtworkShelfViewController.viewDidLayoutSubviews()()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for ArtworkShelfViewController(0);
  objc_msgSendSuper2(&v14, sel_viewDidLayoutSubviews);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 safeAreaLayoutGuide];

    [v3 layoutFrame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v15.origin.x = v5;
    v15.origin.y = v7;
    v15.size.width = v9;
    v15.size.height = v11;
    Width = CGRectGetWidth(v15);
    v13 = OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_itemSize;
    swift_beginAccess();
    [*&v0[OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_collectionView] setContentInset_];
  }

  else
  {
    __break(1u);
  }
}

id ArtworkShelfViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x245D2BBE0]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id ArtworkShelfViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = a2;
  v32 = a3;
  v28 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelVSgMd);
  v4 = MEMORY[0x28223BE20](v30);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - v7;
  *&v3[OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_items] = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_itemSize] = vdupq_n_s64(0x4059000000000000uLL);
  *&v3[OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_artworkCache;
  type metadata accessor for ArtworkShelfViewController.CacheReference();
  v10 = swift_allocObject();
  *(v10 + 16) = 0xD00000000000001ALL;
  *(v10 + 24) = 0x80000002431E5ED0;
  *(v10 + 32) = 0;
  *(v10 + 40) = 1;
  *&v3[v9] = v10;
  v11 = OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_collectionView;
  v12 = [objc_allocWithZone(type metadata accessor for ArtworkShelfViewController.Layout()) init];
  v13 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:v12 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  *&v3[v11] = v13;
  v14 = OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_titleLabel;
  *&v3[v14] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v29 = OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_currentItemObserver;
  type metadata accessor for ArtworkShelfViewController.CurrentItemObserver(0);
  v15 = swift_allocObject();
  v16 = type metadata accessor for ArtworkShelfViewController.ViewModel(0);
  v17 = *(*(v16 - 8) + 56);
  v17(v8, 1, 1, v16);
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v8, v6, &_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelVSgMd);
  Published.init(initialValue:)();
  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v8, &_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelVSgMd);
  *&v3[v29] = v15;
  *&v3[OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController____lazy_storage___collectionViewHeightConstraint] = 0;
  v18 = OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController____lazy_storage___cellRegistration;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0abD0C9CarPlayUI012ArtworkShelfB10ControllerC0B5ModelVGMd);
  v20 = &v3[v18];
  v21 = v31;
  (*(*(v19 - 8) + 56))(v20, 1, 1, v19);
  v17(&v3[OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_currentItem], 1, 1, v16);
  if (v21)
  {
    v22 = MEMORY[0x245D2BBE0](v28, v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = type metadata accessor for ArtworkShelfViewController(0);
  v33.receiver = v3;
  v33.super_class = v23;
  v24 = v32;
  v25 = objc_msgSendSuper2(&v33, sel_initWithNibName_bundle_, v22, v32);

  return v25;
}

id ArtworkShelfViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ArtworkShelfViewController.init(coder:)(void *a1)
{
  v25 = a1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelVSgMd);
  v2 = MEMORY[0x28223BE20](v24);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  *&v1[OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_items] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_itemSize] = vdupq_n_s64(0x4059000000000000uLL);
  *&v1[OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_artworkCache;
  type metadata accessor for ArtworkShelfViewController.CacheReference();
  v8 = swift_allocObject();
  *(v8 + 16) = 0xD00000000000001ALL;
  *(v8 + 24) = 0x80000002431E5ED0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 1;
  *&v1[v7] = v8;
  v9 = OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_collectionView;
  v10 = [objc_allocWithZone(type metadata accessor for ArtworkShelfViewController.Layout()) init];
  v11 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:v10 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  *&v1[v9] = v11;
  v12 = OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_titleLabel;
  *&v1[v12] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v23 = OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_currentItemObserver;
  type metadata accessor for ArtworkShelfViewController.CurrentItemObserver(0);
  v13 = swift_allocObject();
  v14 = type metadata accessor for ArtworkShelfViewController.ViewModel(0);
  v15 = *(*(v14 - 8) + 56);
  v15(v6, 1, 1, v14);
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v6, v4, &_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelVSgMd);
  Published.init(initialValue:)();
  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v6, &_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelVSgMd);
  *&v1[v23] = v13;
  *&v1[OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController____lazy_storage___collectionViewHeightConstraint] = 0;
  v16 = OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController____lazy_storage___cellRegistration;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0abD0C9CarPlayUI012ArtworkShelfB10ControllerC0B5ModelVGMd);
  (*(*(v17 - 8) + 56))(&v1[v16], 1, 1, v17);
  v15(&v1[OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_currentItem], 1, 1, v14);
  v18 = type metadata accessor for ArtworkShelfViewController(0);
  v26.receiver = v1;
  v26.super_class = v18;
  v19 = v25;
  v20 = objc_msgSendSuper2(&v26, sel_initWithCoder_, v25);

  if (v20)
  {
  }

  return v20;
}

id ArtworkShelfViewController.Layout.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

Swift::Int __swiftcall ArtworkShelfViewController.collectionView(_:numberOfItemsInSection:)(UICollectionView *_, Swift::Int numberOfItemsInSection)
{
  v3 = OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_items;
  swift_beginAccess();
  return *(*(v2 + v3) + 16);
}

uint64_t ArtworkShelfViewController.collectionView(_:cellForItemAt:)(uint64_t a1)
{
  v19 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0abD0C9CarPlayUI012ArtworkShelfB10ControllerC0B5ModelVGMd);
  v5 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v7 = &v17 - v6;
  v8 = type metadata accessor for ArtworkShelfViewController.ViewModel(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = IndexPath.item.getter();
  v13 = OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_items;
  result = swift_beginAccess();
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v15 = *(v1 + v13);
    if (v12 < *(v15 + 16))
    {
      outlined init with copy of ArtworkShelfViewController.ViewModel(v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v12, v11);
      ArtworkShelfViewController.cellRegistration.getter(v7);
      outlined init with copy of ArtworkShelfViewController.ViewModel(v11, v4);
      (*(v9 + 56))(v4, 0, 1, v8);
      type metadata accessor for ISImageDescriptor(0, &lazy cache variable for type metadata for UICollectionViewCell);
      v16 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
      outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v4, &_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelVSgMd);
      (*(v5 + 8))(v7, v18);
      outlined destroy of ArtworkShelfViewController.ViewModel(v11);
      return v16;
    }
  }

  __break(1u);
  return result;
}

uint64_t outlined init with copy of ArtworkShelfViewController.ViewModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkShelfViewController.ViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ArtworkShelfViewController.ViewModel(uint64_t a1)
{
  v2 = type metadata accessor for ArtworkShelfViewController.ViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ArtworkShelfViewController.collectionView(_:didSelectItemAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelVSgMd);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v38 - v10);
  v12 = type metadata accessor for ArtworkShelfViewController.ViewModel(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [a1 deselectItemAtIndexPath:isa animated:0];

  v17 = IndexPath.item.getter();
  v18 = OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_items;
  result = swift_beginAccess();
  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v20 = *(v3 + v18);
    if (v17 < *(v20 + 16))
    {
      outlined init with copy of ArtworkShelfViewController.ViewModel(v20 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v17, v15);
      v21 = *v15;
      v22 = v15[1];
      v23 = OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_currentItem;
      swift_beginAccess();
      outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v3 + v23, v11, &_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelVSgMd);
      if ((*(v13 + 48))(v11, 1, v12))
      {
        outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v11, &_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelVSgMd);
        goto LABEL_5;
      }

      v39 = v12;
      v40 = a2;
      v30 = *v11;
      v31 = v11[1];

      outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v11, &_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelVSgMd);
      if (v21 == v30 && v22 == v31)
      {
      }

      else
      {
        v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v12 = v39;
        if ((v33 & 1) == 0)
        {
LABEL_5:
          outlined init with copy of ArtworkShelfViewController.ViewModel(v15, v9);
          (*(v13 + 56))(v9, 0, 1, v12);
          swift_beginAccess();
          outlined assign with copy of ArtworkShelfViewController.ViewModel?(v9, v3 + v23);
          swift_endAccess();
          ArtworkShelfViewController.currentItem.didset();
          outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v9, &_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelVSgMd);
          v24 = *(v3 + OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_collectionView);
          v25 = IndexPath._bridgeToObjectiveC()().super.isa;
          [v24 scrollToItemAtIndexPath:v25 atScrollPosition:8 animated:1];

          v26 = v3 + OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_delegate;
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v27 = *(v26 + 8);
            ObjectType = swift_getObjectType();
            v29 = IndexPath.item.getter();
            (*(v27 + 8))(v15, v29, ObjectType, v27);
LABEL_16:
            swift_unknownObjectRelease();
            return outlined destroy of ArtworkShelfViewController.ViewModel(v15);
          }

          return outlined destroy of ArtworkShelfViewController.ViewModel(v15);
        }
      }

      v34 = v3 + OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_delegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v35 = *(v34 + 8);
        v36 = swift_getObjectType();
        v37 = IndexPath.item.getter();
        (*(v35 + 16))(v15, v37, v36, v35);
        goto LABEL_16;
      }

      return outlined destroy of ArtworkShelfViewController.ViewModel(v15);
    }
  }

  __break(1u);
  return result;
}

uint64_t outlined assign with copy of ArtworkShelfViewController.ViewModel?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelVSgMd);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t key path getter for ArtworkShelfViewController.CurrentItemObserver.currentItem : ArtworkShelfViewController.CurrentItemObserver()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t key path setter for ArtworkShelfViewController.CurrentItemObserver.currentItem : ArtworkShelfViewController.CurrentItemObserver(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelVSgMd);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(a1, &v9 - v6, &_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelVSgMd);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v7, v5, &_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelVSgMd);

  static Published.subscript.setter();
  return outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v7, &_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelVSgMd);
}

id specialized ArtworkShelfViewController.scrollViewWillEndDragging(_:withVelocity:targetContentOffset:)(void *a1, double *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelVSgMd);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v45 - v10);
  v12 = type metadata accessor for ArtworkShelfViewController.ViewModel(0);
  v13 = *(v12 - 8);
  v48 = v12;
  v49 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = (&v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for IndexPath();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v45 - v21;
  v23 = *a2;
  [a1 adjustedContentInset];
  result = [*(v3 + OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_collectionView) indexPathForItemAtPoint_];
  if (result)
  {
    v26 = result;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v46 = v16;
    v47 = v17;
    (*(v17 + 32))(v22, v20, v16);
    v27 = IndexPath.item.getter();
    v28 = OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_items;
    result = swift_beginAccess();
    if ((v27 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v29 = *(v3 + v28);
      if (v27 < *(v29 + 16))
      {
        v45 = v9;
        v30 = v49;
        outlined init with copy of ArtworkShelfViewController.ViewModel(v29 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v27, v15);
        v32 = *v15;
        v31 = v15[1];
        v33 = OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_currentItem;
        swift_beginAccess();
        outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v3 + v33, v11, &_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelVSgMd);
        v34 = v48;
        if ((*(v30 + 48))(v11, 1, v48))
        {
          outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v11, &_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelVSgMd);
          v35 = v47;
LABEL_6:
          v36 = v3 + OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_delegate;
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v37 = *(v36 + 8);
            ObjectType = swift_getObjectType();
            v39 = IndexPath.item.getter();
            (*(v37 + 8))(v15, v39, ObjectType, v37);
            swift_unknownObjectRelease();
          }

          v40 = v45;
          outlined init with copy of ArtworkShelfViewController.ViewModel(v15, v45);
          (*(v49 + 56))(v40, 0, 1, v34);
          swift_beginAccess();
          outlined assign with copy of ArtworkShelfViewController.ViewModel?(v40, v3 + v33);
          swift_endAccess();
          ArtworkShelfViewController.currentItem.didset();
          outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v40, &_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelVSgMd);
          goto LABEL_13;
        }

        v41 = v22;
        v42 = *v11;
        v43 = v11[1];

        outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v11, &_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelVSgMd);
        if (v32 == v42 && v31 == v43)
        {

          v35 = v47;
          v22 = v41;
        }

        else
        {
          v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v22 = v41;
          v35 = v47;
          v34 = v48;
          if ((v44 & 1) == 0)
          {
            goto LABEL_6;
          }
        }

LABEL_13:
        outlined destroy of ArtworkShelfViewController.ViewModel(v15);
        return (*(v35 + 8))(v22, v46);
      }
    }

    __break(1u);
  }

  return result;
}

void type metadata completion function for ArtworkShelfViewController()
{
  type metadata accessor for UICollectionView.CellRegistration<UICollectionViewCell, ArtworkShelfViewController.ViewModel>?(319, &lazy cache variable for type metadata for UICollectionView.CellRegistration<UICollectionViewCell, ArtworkShelfViewController.ViewModel>?, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0abD0C9CarPlayUI012ArtworkShelfB10ControllerC0B5ModelVGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0abD0C9CarPlayUI012ArtworkShelfB10ControllerC0B5ModelVGMR, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ArtworkShelfViewController.ViewModel?(319, &lazy cache variable for type metadata for ArtworkShelfViewController.ViewModel?, type metadata accessor for ArtworkShelfViewController.ViewModel);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata completion function for ArtworkShelfViewController.CurrentItemObserver()
{
  type metadata accessor for UICollectionView.CellRegistration<UICollectionViewCell, ArtworkShelfViewController.ViewModel>?(319, &lazy cache variable for type metadata for Published<ArtworkShelfViewController.ViewModel?>, &_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelVSgMd, &_s9CarPlayUI26ArtworkShelfViewControllerC0F5ModelVSgMR, MEMORY[0x277CBCED0]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for UICollectionView.CellRegistration<UICollectionViewCell, ArtworkShelfViewController.ViewModel>?(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata completion function for ArtworkShelfViewController.ViewModel()
{
  type metadata accessor for ISImageDescriptor(319, &lazy cache variable for type metadata for NSAttributedString);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ArtworkShelfViewController.ViewModel?(319, &lazy cache variable for type metadata for ArtworkShelfViewController.ViewModel.Image?, type metadata accessor for ArtworkShelfViewController.ViewModel.Image);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for ArtworkShelfViewController.ViewModel?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t type metadata completion function for ArtworkShelfViewController.ViewModel.Image()
{
  result = type metadata accessor for ISImageDescriptor(319, &lazy cache variable for type metadata for UIImage);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Artwork();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t outlined assign with take of ArtworkShelfViewController.ViewModel.Image?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type ArtworkShelfViewController.Cell and conformance ArtworkShelfViewController.Cell(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for ArtworkShelfViewController.Cell()
{
  type metadata accessor for ObservedObject<ArtworkShelfViewController.CurrentItemObserver>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ArtworkShelfViewController.ViewModel(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ArtworkShelfViewController.CacheReference();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for ObservedObject<ArtworkShelfViewController.CurrentItemObserver>()
{
  if (!lazy cache variable for type metadata for ObservedObject<ArtworkShelfViewController.CurrentItemObserver>)
  {
    type metadata accessor for ArtworkShelfViewController.CurrentItemObserver(255);
    lazy protocol witness table accessor for type ArtworkShelfViewController.Cell and conformance ArtworkShelfViewController.Cell(&lazy protocol witness table cache variable for type ArtworkShelfViewController.CurrentItemObserver and conformance ArtworkShelfViewController.CurrentItemObserver, type metadata accessor for ArtworkShelfViewController.CurrentItemObserver);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ObservedObject<ArtworkShelfViewController.CurrentItemObserver>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, _ClipEffect<RoundedRectangle>>, GlowModifier>, ModifiedContent<ModifiedContent<<<opaque return type of View.artworkCaching(owner:)>>.0, _ClipEffect<RoundedRectangle>>, GlowModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, _ClipEffect<RoundedRectangle>>, GlowModifier>, ModifiedContent<ModifiedContent<<<opaque return type of View.artworkCaching(owner:)>>.0, _ClipEffect<RoundedRectangle>>, GlowModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, _ClipEffect<RoundedRectangle>>, GlowModifier>, ModifiedContent<ModifiedContent<<<opaque return type of View.artworkCaching(owner:)>>.0, _ClipEffect<RoundedRectangle>>, GlowModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA5ImageVAA11_ClipEffectVyAA16RoundedRectangleVGG07CarPlayB012GlowModifierVGAEyAEyAA4ViewP018_MusicKitInternal_aB0E14artworkCaching5ownerQrAT17ArtworkCacheOwner_p_tFQOy01_pq1_aB00vF0V_Qo_ALGAPGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.artworkCaching(owner:)>>.0, _ClipEffect<RoundedRectangle>>, GlowModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _ClipEffect<RoundedRectangle>>, GlowModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA11_ClipEffectVyAA16RoundedRectangleVGG07CarPlayB012GlowModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA11_ClipEffectVyAA16RoundedRectangleVGG07CarPlayB012GlowModifierVGMR, lazy protocol witness table accessor for type ModifiedContent<Image, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.artworkCaching(owner:)>>.0, _ClipEffect<RoundedRectangle>>, GlowModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.artworkCaching(owner:)>>.0, _ClipEffect<RoundedRectangle>>, GlowModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA4ViewP018_MusicKitInternal_aB0E14artworkCaching5ownerQrAF17ArtworkCacheOwner_p_tFQOy01_fg1_aB00L5ImageV_Qo_AA11_ClipEffectVyAA16RoundedRectangleVGG07CarPlayB012GlowModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewP018_MusicKitInternal_aB0E14artworkCaching5ownerQrAF17ArtworkCacheOwner_p_tFQOy01_fg1_aB00L5ImageV_Qo_AA11_ClipEffectVyAA16RoundedRectangleVGG07CarPlayB012GlowModifierVGMR, lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.artworkCaching(owner:)>>.0, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, _ClipEffect<RoundedRectangle>>, GlowModifier>, ModifiedContent<ModifiedContent<<<opaque return type of View.artworkCaching(owner:)>>.0, _ClipEffect<RoundedRectangle>>, GlowModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.artworkCaching(owner:)>>.0, _ClipEffect<RoundedRectangle>>, GlowModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    lazy protocol witness table accessor for type GlowModifier and conformance GlowModifier();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA11_ClipEffectVyAA16RoundedRectangleVGGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ClipEffect<RoundedRectangle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.artworkCaching(owner:)>>.0, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.artworkCaching(owner:)>>.0, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.artworkCaching(owner:)>>.0, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP018_MusicKitInternal_aB0E14artworkCaching5ownerQrAF17ArtworkCacheOwner_p_tFQOy01_fg1_aB00L5ImageV_Qo_AA11_ClipEffectVyAA16RoundedRectangleVGGMd);
    type metadata accessor for ArtworkImage();
    lazy protocol witness table accessor for type ArtworkShelfViewController.Cell and conformance ArtworkShelfViewController.Cell(&lazy protocol witness table cache variable for type ArtworkImage and conformance ArtworkImage, MEMORY[0x277CE43D0]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ClipEffect<RoundedRectangle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.artworkCaching(owner:)>>.0, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ClipEffect<RoundedRectangle>>, GlowModifier>, ModifiedContent<ModifiedContent<<<opaque return type of View.artworkCaching(owner:)>>.0, _ClipEffect<RoundedRectangle>>, GlowModifier>>, EmptyView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ClipEffect<RoundedRectangle>>, GlowModifier>, ModifiedContent<ModifiedContent<<<opaque return type of View.artworkCaching(owner:)>>.0, _ClipEffect<RoundedRectangle>>, GlowModifier>>, EmptyView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ClipEffect<RoundedRectangle>>, GlowModifier>, ModifiedContent<ModifiedContent<<<opaque return type of View.artworkCaching(owner:)>>.0, _ClipEffect<RoundedRectangle>>, GlowModifier>>, EmptyView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEyAA5ImageVAA11_ClipEffectVyAA16RoundedRectangleVGG07CarPlayB012GlowModifierVGAEyAEyAA4ViewP018_MusicKitInternal_aB0E14artworkCaching5ownerQrAT17ArtworkCacheOwner_p_tFQOy01_pq1_aB00vF0V_Qo_ALGAPGGAA05EmptyO0VGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, _ClipEffect<RoundedRectangle>>, GlowModifier>, ModifiedContent<ModifiedContent<<<opaque return type of View.artworkCaching(owner:)>>.0, _ClipEffect<RoundedRectangle>>, GlowModifier>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _ClipEffect<RoundedRectangle>>, GlowModifier>, ModifiedContent<ModifiedContent<<<opaque return type of View.artworkCaching(owner:)>>.0, _ClipEffect<RoundedRectangle>>, GlowModifier>>, EmptyView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t protocol witness for static UITraitBridgedEnvironmentKey.read(from:) in conformance CPUIIsLimitedUIKey@<X0>(_BYTE *a1@<X8>)
{
  lazy protocol witness table accessor for type CPUILimitedUITrait and conformance CPUILimitedUITrait();
  result = UITraitCollection.subscript.getter();
  *a1 = result & 1;
  return result;
}

uint64_t static CPUIIslimitedUserInterfacesKey.read(from:)()
{
  lazy protocol witness table accessor for type CPUILimitedUserInterfacesTrait and conformance CPUILimitedUserInterfacesTrait();
  UITraitCollection.subscript.getter();
  return v1;
}

uint64_t static CPUIIslimitedUserInterfacesKey.write(to:value:)(uint64_t a1)
{
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));

  return UIMutableTraits.limitedUserInterfaces.setter();
}

unint64_t lazy protocol witness table accessor for type CPUIIsLimitedUIKey and conformance CPUIIsLimitedUIKey()
{
  result = lazy protocol witness table cache variable for type CPUIIsLimitedUIKey and conformance CPUIIsLimitedUIKey;
  if (!lazy protocol witness table cache variable for type CPUIIsLimitedUIKey and conformance CPUIIsLimitedUIKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CPUIIsLimitedUIKey and conformance CPUIIsLimitedUIKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CPUIIsLimitedUIKey and conformance CPUIIsLimitedUIKey;
  if (!lazy protocol witness table cache variable for type CPUIIsLimitedUIKey and conformance CPUIIsLimitedUIKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CPUIIsLimitedUIKey and conformance CPUIIsLimitedUIKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CPUIIslimitedUserInterfacesKey and conformance CPUIIslimitedUserInterfacesKey()
{
  result = lazy protocol witness table cache variable for type CPUIIslimitedUserInterfacesKey and conformance CPUIIslimitedUserInterfacesKey;
  if (!lazy protocol witness table cache variable for type CPUIIslimitedUserInterfacesKey and conformance CPUIIslimitedUserInterfacesKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CPUIIslimitedUserInterfacesKey and conformance CPUIIslimitedUserInterfacesKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CPUIIslimitedUserInterfacesKey and conformance CPUIIslimitedUserInterfacesKey;
  if (!lazy protocol witness table cache variable for type CPUIIslimitedUserInterfacesKey and conformance CPUIIslimitedUserInterfacesKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CPUIIslimitedUserInterfacesKey and conformance CPUIIslimitedUserInterfacesKey);
  }

  return result;
}

uint64_t protocol witness for static UITraitBridgedEnvironmentKey.read(from:) in conformance CPUIIslimitedUserInterfacesKey@<X0>(void *a1@<X8>)
{
  lazy protocol witness table accessor for type CPUILimitedUserInterfacesTrait and conformance CPUILimitedUserInterfacesTrait();
  result = UITraitCollection.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t protocol witness for static UITraitBridgedEnvironmentKey.write(to:value:) in conformance CPUIIslimitedUserInterfacesKey(uint64_t a1)
{
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));

  return UIMutableTraits.limitedUserInterfaces.setter();
}

uint64_t type metadata accessor for InnerHighlightModifier()
{
  result = type metadata singleton initialization cache for InnerHighlightModifier;
  if (!type metadata singleton initialization cache for InnerHighlightModifier)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for InnerHighlightModifier()
{
  type metadata accessor for Color?(319, &lazy cache variable for type metadata for Color?);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Color?(319, &lazy cache variable for type metadata for Double?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for InsettableShape();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Environment<ColorScheme>();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Color?(uint64_t a1, unint64_t *a2)
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

unint64_t type metadata accessor for InsettableShape()
{
  result = lazy cache variable for type metadata for InsettableShape;
  if (!lazy cache variable for type metadata for InsettableShape)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for InsettableShape);
  }

  return result;
}

uint64_t closure #1 in InnerHighlightModifier.body(content:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  *&v12[8] = swift_getAssociatedTypeWitness();
  *&v12[16] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(&v11);
  dispatch thunk of InsettableShape.inset(by:)();
  outlined init with copy of AnyInsettableShape(&v11, &v9);
  v10[24] = 0;
  outlined destroy of AnyInsettableShape(&v11);
  if (*a2)
  {
    v5 = *a2;
  }

  else
  {
    v5 = InnerHighlightModifier.defaultColor.getter();
  }

  *&v12[9] = *&v10[9];
  v11 = v9;
  *v12 = *v10;
  v6 = *v10;
  v7 = *&v12[16];
  *a3 = v9;
  *(a3 + 16) = v6;
  *(a3 + 32) = v7;
  *(a3 + 48) = v5;
  *(a3 + 56) = 256;
}

uint64_t InnerHighlightModifier.defaultColor.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for ColorScheme();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for InnerHighlightModifier();
  outlined init with copy of Environment<ColorScheme>.Content(v0 + *(v12 + 28), v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
  }

  v14 = (*(v9 + 88))(v11, v8);
  if (v14 == *MEMORY[0x277CDF3D0])
  {
    if (one-time initialization token for light != -1)
    {
      swift_once();
    }

    v15 = static InnerHighlightModifier.Specs.Color.light;
LABEL_12:

    return v15;
  }

  if (v14 == *MEMORY[0x277CDF3C0])
  {
    if (one-time initialization token for dark != -1)
    {
      swift_once();
    }

    v15 = static InnerHighlightModifier.Specs.Color.dark;
    goto LABEL_12;
  }

  if (one-time initialization token for light != -1)
  {
    swift_once();
  }

  v15 = static InnerHighlightModifier.Specs.Color.light;
  v16 = *(v9 + 8);

  v16(v11, v8);
  return v15;
}

uint64_t one-time initialization function for dark(uint64_t a1)
{
  return one-time initialization function for dark(a1, MEMORY[0x277CE0F30], &static InnerHighlightModifier.Specs.Color.dark);
}

{
  return one-time initialization function for dark(a1, MEMORY[0x277CE0F30], &static GridView.Hero.Cell.Specs.Image.InnerStroke.Color.dark);
}

uint64_t one-time initialization function for light(uint64_t a1)
{
  return one-time initialization function for dark(a1, MEMORY[0x277CE0F10], &static InnerHighlightModifier.Specs.Color.light);
}

{
  return one-time initialization function for dark(a1, MEMORY[0x277CE0F10], &static GridView.Hero.Cell.Specs.Image.InnerStroke.Color.light);
}

uint64_t one-time initialization function for dark(uint64_t a1, void (*a2)(void), uint64_t *a3)
{
  a2();
  v4 = Color.opacity(_:)();

  *a3 = v4;
  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance InnerHighlightModifier@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA014_ViewModifier_D0Vy07CarPlayB0014InnerHighlightF0VGAA08_OverlayF0VyAA06_ShapeE0VyAA01_L11SubtractionVyAA9RectangleVAF013AnyInsettableL0VGAA5ColorVGGGAA23_CompositingGroupEffectVGAA05_ClipT0VyASGGMd) + 36);
  outlined init with copy of InsettableShape((v2 + 3), v5);
  v6 = static Alignment.center.getter();
  v8 = v7;
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07CarPlayB0014InnerHighlightF0VGAA08_OverlayF0VyAA06_ShapeE0VyAA01_L11SubtractionVyAA9RectangleVAF013AnyInsettableL0VGAA5ColorVGGGMd) + 36);
  closure #1 in InnerHighlightModifier.body(content:)(v5, v2, v9);
  *(v9 + 64) = v6;
  *(v9 + 72) = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07CarPlayB0014InnerHighlightD0VGMd);
  result = (*(*(v10 - 8) + 16))(a2, a1, v10);
  *(v5 + 40) = 256;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<InnerHighlightModifier>, _OverlayModifier<_ShapeView<_ShapeSubtraction<Rectangle, AnyInsettableShape>, Color>>>, _CompositingGroupEffect>, _ClipEffect<AnyInsettableShape>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<InnerHighlightModifier>, _OverlayModifier<_ShapeView<_ShapeSubtraction<Rectangle, AnyInsettableShape>, Color>>>, _CompositingGroupEffect>, _ClipEffect<AnyInsettableShape>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<InnerHighlightModifier>, _OverlayModifier<_ShapeView<_ShapeSubtraction<Rectangle, AnyInsettableShape>, Color>>>, _CompositingGroupEffect>, _ClipEffect<AnyInsettableShape>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA014_ViewModifier_D0Vy07CarPlayB0014InnerHighlightF0VGAA08_OverlayF0VyAA06_ShapeE0VyAA01_L11SubtractionVyAA9RectangleVAF013AnyInsettableL0VGAA5ColorVGGGAA23_CompositingGroupEffectVGAA05_ClipT0VyASGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<InnerHighlightModifier>, _OverlayModifier<_ShapeView<_ShapeSubtraction<Rectangle, AnyInsettableShape>, Color>>>, _CompositingGroupEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ClipEffect<AnyInsettableShape> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVy07CarPlayB018AnyInsettableShapeVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<InnerHighlightModifier>, _OverlayModifier<_ShapeView<_ShapeSubtraction<Rectangle, AnyInsettableShape>, Color>>>, _CompositingGroupEffect>, _ClipEffect<AnyInsettableShape>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<InnerHighlightModifier>, _OverlayModifier<_ShapeView<_ShapeSubtraction<Rectangle, AnyInsettableShape>, Color>>>, _CompositingGroupEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<InnerHighlightModifier>, _OverlayModifier<_ShapeView<_ShapeSubtraction<Rectangle, AnyInsettableShape>, Color>>>, _CompositingGroupEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<InnerHighlightModifier>, _OverlayModifier<_ShapeView<_ShapeSubtraction<Rectangle, AnyInsettableShape>, Color>>>, _CompositingGroupEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07CarPlayB0014InnerHighlightF0VGAA08_OverlayF0VyAA06_ShapeE0VyAA01_L11SubtractionVyAA9RectangleVAF013AnyInsettableL0VGAA5ColorVGGGAA23_CompositingGroupEffectVGMd);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<InnerHighlightModifier>, _OverlayModifier<_ShapeView<_ShapeSubtraction<Rectangle, AnyInsettableShape>, Color>>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<InnerHighlightModifier>, _OverlayModifier<_ShapeView<_ShapeSubtraction<Rectangle, AnyInsettableShape>, Color>>>, _CompositingGroupEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<InnerHighlightModifier>, _OverlayModifier<_ShapeView<_ShapeSubtraction<Rectangle, AnyInsettableShape>, Color>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<InnerHighlightModifier>, _OverlayModifier<_ShapeView<_ShapeSubtraction<Rectangle, AnyInsettableShape>, Color>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<InnerHighlightModifier>, _OverlayModifier<_ShapeView<_ShapeSubtraction<Rectangle, AnyInsettableShape>, Color>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07CarPlayB0014InnerHighlightF0VGAA08_OverlayF0VyAA06_ShapeE0VyAA01_L11SubtractionVyAA9RectangleVAF013AnyInsettableL0VGAA5ColorVGGGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<InnerHighlightModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy07CarPlayB0014InnerHighlightD0VGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _OverlayModifier<_ShapeView<_ShapeSubtraction<Rectangle, AnyInsettableShape>, Color>> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA10_ShapeViewVyAA01_E11SubtractionVyAA9RectangleV07CarPlayB0013AnyInsettableE0VGAA5ColorVGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<InnerHighlightModifier>, _OverlayModifier<_ShapeView<_ShapeSubtraction<Rectangle, AnyInsettableShape>, Color>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

id CPUIAssistantCell.applyConfiguration(_:)(uint64_t a1)
{
  [v1 setConfig_];

  return [v1 setNeedsUpdateConfiguration];
}

Swift::Void __swiftcall CPUIAssistantCell.didUpdateFocus(in:with:)(UIFocusUpdateContext in, UIFocusAnimationCoordinator with)
{
  v3.super_class = CPUIAssistantCell;
  objc_msgSendSuper2(&v3, sel_didUpdateFocusInContext_withAnimationCoordinator_, in.super.isa, with.super.isa);
  [v2 setNeedsUpdateConfiguration];
}

void CPUIAssistantCell.updateConfiguration(using:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v25[-v2];
  v4 = type metadata accessor for UIBackgroundConfiguration();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UIHostingConfigurationVyAA6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGSg_AA6SpacerVAIyAA0G0PAAE10fontWeightyQrAA4FontV0P0VSgFQOyAIyAA5ImageVAA022_EnvironmentKeyWritingM0VyAVSgGG_Qo_AA016_ForegroundStyleM0VyAA5ColorVGGtGGAA05EmptyG0VGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25[-v10];
  v12 = [v0 config];
  if (v12)
  {
    v13 = v12;
    v14 = UICellConfigurationState.isFocused.getter();
    v29 = v3;
    v30 = v0;
    v27 = v5;
    v28 = v4;
    if (v14 & 1) != 0 || (UICellConfigurationState.isSelected.getter())
    {
      v15 = 1;
    }

    else
    {
      v15 = UICellConfigurationState.isHighlighted.getter();
    }

    v16 = MEMORY[0x28223BE20](v15);
    *&v25[-16] = v13;
    v26 = v16;
    v25[-8] = v16 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGSg_AA6SpacerVAGyAA0E0PAAE10fontWeightyQrAA4FontV0N0VSgFQOyAGyAA5ImageVAA022_EnvironmentKeyWritingK0VyATSgGG_Qo_AA016_ForegroundStyleK0VyAA5ColorVGGtGGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>?, Spacer, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<Color>>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGSg_AA6SpacerVAGyAA0E0PAAE10fontWeightyQrAA4FontV0N0VSgFQOyAGyAA5ImageVAA022_EnvironmentKeyWritingK0VyATSgGG_Qo_AA016_ForegroundStyleK0VyAA5ColorVGGtGGMd);
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v31[3] = v8;
    v31[4] = lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type UIHostingConfiguration<HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>?, Spacer, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _ForegroundStyleModifier<Color>>)>>, EmptyView> and conformance UIHostingConfiguration<A, B>, &_s7SwiftUI22UIHostingConfigurationVyAA6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGSg_AA6SpacerVAIyAA0G0PAAE10fontWeightyQrAA4FontV0P0VSgFQOyAIyAA5ImageVAA022_EnvironmentKeyWritingM0VyAVSgGG_Qo_AA016_ForegroundStyleM0VyAA5ColorVGGtGGAA05EmptyG0VGMd);
    __swift_allocate_boxed_opaque_existential_1(v31);
    UIHostingConfiguration.margins(_:_:)();
    (*(v9 + 8))(v11, v8);
    v17 = v30;
    MEMORY[0x245D2BD70](v31);
    if (_UISolariumEnabled())
    {
      static UIBackgroundConfiguration.clear()();
      UIBackgroundConfiguration.cornerRadius.setter();
      v18 = objc_opt_self();
      v19 = &selRef__carSystemFocusColor;
      if ((v26 & 1) == 0)
      {
        v19 = &selRef_secondarySystemFillColor;
      }

      v20 = [v18 *v19];
      UIBackgroundConfiguration.backgroundColor.setter();
      v22 = v27;
      v21 = v28;
      v23 = v29;
      (*(v27 + 16))(v29, v7, v28);
      (*(v22 + 56))(v23, 0, 1, v21);
      MEMORY[0x245D2BD80](v23);
      (*(v22 + 8))(v7, v21);
    }

    v24 = MEMORY[0x245D2BBE0](0xD000000000000013, 0x80000002431EA440);
    [v17 setAccessibilityIdentifier_];
    swift_unknownObjectRelease();
  }
}

uint64_t closure #1 in CPUIAssistantCell.updateConfiguration(using:)@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = static VerticalAlignment.center.getter();
  *(a3 + 8) = 0x4028000000000000;
  *(a3 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGSg_AA6SpacerVAKyAA0D0PAAE10fontWeightyQrAA4FontV0Q0VSgFQOyAKyAA5ImageVAA022_EnvironmentKeyWritingN0VyAXSgGG_Qo_AA016_ForegroundStyleN0VyAA5ColorVGGtGGMd);
  return closure #1 in closure #1 in CPUIAssistantCell.updateConfiguration(using:)(a1, a2, a3 + *(v6 + 44));
}

uint64_t closure #1 in closure #1 in CPUIAssistantCell.updateConfiguration(using:)@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v94 = a2;
  v93 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAFSgGG_Qo_Md);
  v90 = *(v4 - 8);
  v91 = v4;
  MEMORY[0x28223BE20](v4);
  v95 = &v77 - v5;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_AA016_ForegroundStyleM0VyAA5ColorVGGMd);
  v6 = MEMORY[0x28223BE20](v89);
  v92 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v77 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v77 - v11;
  v13 = type metadata accessor for AccessibilityTraits();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGSgMd);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v77 - v21;
  if (([a1 respondsToSelector_] & 1) == 0)
  {
    goto LABEL_9;
  }

  v23 = [a1 text];
  if (!v23)
  {
    goto LABEL_9;
  }

  v24 = v23;
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (!v28)
  {

LABEL_9:
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGMd);
    (*(*(v48 - 8) + 56))(v22, 1, 1, v48);
    goto LABEL_10;
  }

  v86 = v16;
  v87 = v14;
  v88 = v13;
  v84 = v25;
  v96 = v25;
  v97 = v27;
  v29 = lazy protocol witness table accessor for type String and conformance String();
  v85 = v27;

  v83 = v29;
  v30 = Text.init<A>(_:)();
  v32 = v31;
  v34 = v33;
  static Font.body.getter();
  v79 = Text.font(_:)();
  v78 = v35;
  v37 = v36;
  v77 = v38;

  outlined consume of Text.Storage(v30, v32, v34 & 1);

  static Font.Weight.medium.getter();
  v39 = v79;
  v40 = v78;
  v41 = Text.fontWeight(_:)();
  v43 = v42;
  v80 = v44;
  v81 = v45;
  outlined consume of Text.Storage(v39, v40, v37 & 1);

  v82 = v12;
  if (v94)
  {
    v46 = [objc_opt_self() _carSystemFocusLabelColor];
    v47 = Color.init(uiColor:)();
  }

  else
  {
    v47 = static Color.primary.getter();
  }

  v96 = v47;
  v60 = v80;
  v61 = v43;
  v62 = Text.foregroundStyle<A>(_:)();
  v63 = v61;
  v79 = v64;
  LOBYTE(v61) = v65;
  v78 = v66;
  outlined consume of Text.Storage(v41, v63, v60 & 1);

  v96 = v84;
  v97 = v85;
  v67 = v79;
  v68 = Text.accessibilityLabel<A>(_:)();
  v70 = v69;
  LODWORD(v84) = v71;
  v73 = v72;
  outlined consume of Text.Storage(v62, v67, v61 & 1);

  v96 = v68;
  v97 = v70;
  v74 = v70;
  LOBYTE(v70) = v84 & 1;
  LOBYTE(v98) = v84 & 1;
  v99 = v73;
  v75 = v86;
  static AccessibilityTraits.isButton.getter();
  MEMORY[0x245D2B760](v75, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8]);
  (*(v87 + 8))(v75, v88);
  outlined consume of Text.Storage(v68, v74, v70);

  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGMd);
  (*(*(v76 - 8) + 56))(v22, 0, 1, v76);
  v12 = v82;
LABEL_10:
  v49 = Image.init(_internalSystemName:)();
  v50 = static Font.callout.getter();
  KeyPath = swift_getKeyPath();
  v96 = v49;
  v97 = KeyPath;
  v98 = v50;
  static Font.Weight.medium.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  View.fontWeight(_:)();

  if (v94)
  {
    v52 = [objc_opt_self() _carSystemFocusLabelColor];
    v53 = Color.init(uiColor:)();
  }

  else
  {
    v53 = static Color.primary.getter();
  }

  v54 = v53;
  (*(v90 + 32))(v10, v95, v91);
  *&v10[*(v89 + 36)] = v54;
  sub_24313C5A4(v10, v12);
  outlined init with copy of ModifiedContent<Text, AccessibilityAttachmentModifier>?(v22, v20);
  v55 = v92;
  sub_24313C614(v12, v92);
  v56 = v93;
  outlined init with copy of ModifiedContent<Text, AccessibilityAttachmentModifier>?(v20, v93);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGSg_AA6SpacerVACyAA4ViewPAAE10fontWeightyQrAA4FontV0L0VSgFQOyACyAA5ImageVAA022_EnvironmentKeyWritingH0VyAPSgGG_Qo_AA016_ForegroundStyleH0VyAA5ColorVGGtMd);
  v58 = v56 + *(v57 + 48);
  *v58 = 0;
  *(v58 + 8) = 1;
  sub_24313C614(v55, v56 + *(v57 + 64));
  sub_24313C684(v12);
  outlined destroy of ModifiedContent<Text, AccessibilityAttachmentModifier>?(v22);
  sub_24313C684(v55);
  return outlined destroy of ModifiedContent<Text, AccessibilityAttachmentModifier>?(v20);
}

void __swiftcall CPUIAssistantCell.init(style:reuseIdentifier:)(CPUIAssistantCell *__return_ptr retstr, UITableViewCellStyle style, Swift::String_optional reuseIdentifier)
{
  if (reuseIdentifier.value._object)
  {
    v4 = MEMORY[0x245D2BBE0](reuseIdentifier.value._countAndFlagsBits, reuseIdentifier.value._object);
  }

  else
  {
    v4 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithStyle:style reuseIdentifier:v4];
}

id CPUIAssistantCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___CPUIAssistantCell_config] = 0;
  if (a3)
  {
    v5 = MEMORY[0x245D2BBE0](a2, a3);
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = CPUIAssistantCell;
  v6 = objc_msgSendSuper2(&v8, sel_initWithStyle_reuseIdentifier_, a1, v5);

  return v6;
}

id CPUIAssistantCell.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___CPUIAssistantCell_config) = 0;
  v5.super_class = CPUIAssistantCell;
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

unint64_t type metadata accessor for CPUIAssistantCell()
{
  result = lazy cache variable for type metadata for CPUIAssistantCell;
  if (!lazy cache variable for type metadata for CPUIAssistantCell)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CPUIAssistantCell);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<Text, AccessibilityAttachmentModifier>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<Text, AccessibilityAttachmentModifier>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVGSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FocusRingModifier(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t storeEnumTagSinglePayload for FocusRingModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 closure #1 in FocusRingModifier.body(content:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((a1 + 24), *(a1 + 48));
  v20[3] = swift_getAssociatedTypeWitness();
  v20[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v20);
  dispatch thunk of InsettableShape.inset(by:)();
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  if (v9 == 1)
  {
    if ((v8 & 1) == 0)
    {
LABEL_3:
      v10 = static Color.clear.getter();
      goto LABEL_6;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Bool>.Content(v8, 0);
    (*(v5 + 8))(v7, v4);
    if (LOBYTE(v21[0]) != 1)
    {
      goto LABEL_3;
    }
  }

  v10 = *a1;

LABEL_6:
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  outlined init with copy of AnyInsettableShape(v20, v21);
  *&v22[8] = v25;
  *&v22[24] = v26;
  *&v22[40] = v27;
  *&v23 = v10;
  WORD4(v23) = 256;
  *&v24 = static Alignment.center.getter();
  *(&v24 + 1) = v12;
  v13 = outlined destroy of AnyInsettableShape(v20);
  v14 = MEMORY[0x245D2BB10](v13, 0.2, 0.85, 0.0);
  if (!v9)
  {

    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Bool>.Content(v8, 0);
    (*(v5 + 8))(v7, v4);
    LOBYTE(v8) = v20[0];
  }

  v16 = v23;
  *(a2 + 64) = *&v22[32];
  *(a2 + 80) = v16;
  *(a2 + 96) = v24;
  v17 = v21[1];
  *a2 = v21[0];
  *(a2 + 16) = v17;
  result = *&v22[16];
  *(a2 + 32) = *v22;
  *(a2 + 48) = result;
  *(a2 + 112) = v14;
  *(a2 + 120) = v8 & 1;
  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance FocusRingModifier@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = static Alignment.center.getter();
  v7 = v6;
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07CarPlayB009FocusRingF033_C2414E8B1C72748AF3156B15159BFF28LLVGAA08_OverlayF0VyACyAA011StrokeShapeE0VyAF013AnyInsettableT0VAA5ColorVAA05EmptyE0VGAA010_AnimationF0VySbGGGGMd) + 36);
  closure #1 in FocusRingModifier.body(content:)(v2, v8);
  *(v8 + 128) = v5;
  *(v8 + 136) = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07CarPlayB009FocusRingD033_C2414E8B1C72748AF3156B15159BFF28LLVGMd);
  v10 = *(*(v9 - 8) + 16);

  return v10(a2, a1, v9);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<FocusRingModifier>, _OverlayModifier<ModifiedContent<StrokeShapeView<AnyInsettableShape, Color, EmptyView>, _AnimationModifier<Bool>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<FocusRingModifier>, _OverlayModifier<ModifiedContent<StrokeShapeView<AnyInsettableShape, Color, EmptyView>, _AnimationModifier<Bool>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<FocusRingModifier>, _OverlayModifier<ModifiedContent<StrokeShapeView<AnyInsettableShape, Color, EmptyView>, _AnimationModifier<Bool>>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07CarPlayB009FocusRingF033_C2414E8B1C72748AF3156B15159BFF28LLVGAA08_OverlayF0VyACyAA011StrokeShapeE0VyAF013AnyInsettableT0VAA5ColorVAA05EmptyE0VGAA010_AnimationF0VySbGGGGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<FocusRingModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy07CarPlayB009FocusRingD033_C2414E8B1C72748AF3156B15159BFF28LLVGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _OverlayModifier<ModifiedContent<StrokeShapeView<AnyInsettableShape, Color, EmptyView>, _AnimationModifier<Bool>>> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAA15StrokeShapeViewVy07CarPlayB0013AnyInsettableH0VAA5ColorVAA05EmptyI0VGAA010_AnimationD0VySbGGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<FocusRingModifier>, _OverlayModifier<ModifiedContent<StrokeShapeView<AnyInsettableShape, Color, EmptyView>, _AnimationModifier<Bool>>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AnyInsettableShape(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AnyInsettableShape(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ShapeView<AnyInsettableShape, ForegroundStyle> and conformance _ShapeView<A, B>()
{
  result = lazy protocol witness table cache variable for type _ShapeView<AnyInsettableShape, ForegroundStyle> and conformance _ShapeView<A, B>;
  if (!lazy protocol witness table cache variable for type _ShapeView<AnyInsettableShape, ForegroundStyle> and conformance _ShapeView<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI10_ShapeViewVy07CarPlayB0013AnyInsettableC0VAA15ForegroundStyleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeView<AnyInsettableShape, ForegroundStyle> and conformance _ShapeView<A, B>);
  }

  return result;
}

uint64_t protocol witness for InsettableShape.inset(by:) in conformance AnyInsettableShape@<X0>(uint64_t *a1@<X8>)
{
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  a1[3] = swift_getAssociatedTypeWitness();
  a1[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return dispatch thunk of InsettableShape.inset(by:)();
}

double protocol witness for Shape.path(in:) in conformance AnyInsettableShape@<D0>(uint64_t a1@<X8>)
{
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  dispatch thunk of Shape.path(in:)();
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance AnyInsettableShape(uint64_t *a1))(void *a1)
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
  return protocol witness for GridView.Base.DataSource.viewModels.modify in conformance GridView.Base.BaseDataSource<A>;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance AnyInsettableShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type AnyInsettableShape and conformance AnyInsettableShape();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance AnyInsettableShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type AnyInsettableShape and conformance AnyInsettableShape();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t protocol witness for View.body.getter in conformance AnyInsettableShape(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnyInsettableShape and conformance AnyInsettableShape();

  return MEMORY[0x282133738](a1, v2);
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

uint64_t CPUITableHeaderFooterView.title.getter()
{
  v1 = *(v0 + OBJC_IVAR___CPUITableHeaderFooterView_viewModel);
  swift_getKeyPath();
  lazy protocol witness table accessor for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel, type metadata accessor for CPUITableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 16);

  return v2;
}

uint64_t CPUITableHeaderFooterView.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___CPUITableHeaderFooterView_viewModel);
  v6 = *(v5 + 16) == a1 && *(v5 + 24) == a2;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel, type metadata accessor for CPUITableHeaderFooterView.ViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void key path getter for CPUITableHeaderFooterView.title : CPUITableHeaderFooterView(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 title];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t CPUITableHeaderFooterView.action.getter()
{
  v1 = *(v0 + OBJC_IVAR___CPUITableHeaderFooterView_viewModel);
  swift_getKeyPath();
  lazy protocol witness table accessor for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel, type metadata accessor for CPUITableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 32);
  _sxRi_zRi0_zlyytIsegr_SgWOy_0(v2);
  return v2;
}

uint64_t CPUITableHeaderFooterView.action.setter(uint64_t a1)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel, type metadata accessor for CPUITableHeaderFooterView.ViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(a1);
}

void *key path getter for CPUITableHeaderFooterView.action : CPUITableHeaderFooterView@<X0>(id *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = [*a1 action];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    result = swift_allocObject();
    result[2] = thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply;
    result[3] = v5;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  a2[1] = result;
  return result;
}

void key path setter for CPUITableHeaderFooterView.action : CPUITableHeaderFooterView(uint64_t a1, void **a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(a1 + 8);
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = *a2;
    v7[4] = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
    v7[5] = v5;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = thunk for @escaping @callee_guaranteed () -> ();
    v7[3] = &block_descriptor_42;
    v3 = _Block_copy(v7);
  }

  else
  {
    v6 = *a2;
  }

  [v6 setAction_];
  _Block_release(v3);
}

char *CPUITableHeaderFooterView.init(reuseIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  type metadata accessor for CPUITableHeaderFooterView.ViewModel();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0xE000000000000000;
  v9[4] = 0;
  v9[5] = 0;
  ObservationRegistrar.init()();
  *&v3[OBJC_IVAR___CPUITableHeaderFooterView_viewModel] = v9;
  v29 = v9;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14_UIHostingViewCySo021CPUITableHeaderFooterD0C07CarPlayB0E7Content33_0A1293E04DB50132E8160F41073564E6LLVGMd));

  *&v3[OBJC_IVAR___CPUITableHeaderFooterView_hostingView] = _UIHostingView.init(rootView:)();
  if (a2)
  {
    v10 = MEMORY[0x245D2BBE0](a1, a2);
  }

  else
  {
    v10 = 0;
  }

  v28.receiver = v3;
  v28.super_class = CPUITableHeaderFooterView;
  v11 = objc_msgSendSuper2(&v28, sel_initWithReuseIdentifier_, v10);

  v12 = v11;
  static UIBackgroundConfiguration.clear()();
  v13 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
  MEMORY[0x245D2BD10](v8);
  v14 = [v12 contentView];
  v15 = OBJC_IVAR___CPUITableHeaderFooterView_hostingView;
  [v14 addSubview_];

  [*&v12[v15] setAutoresizingMask_];
  v16 = *&v12[v15];
  v17 = [v12 contentView];

  [v17 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [v16 setFrame_];
  [v12 observeViewModel];

  return v12;
}

CGSize __swiftcall CPUITableHeaderFooterView.sizeThatFits(_:)(CGSize a1)
{
  v2 = *&v1[OBJC_IVAR___CPUITableHeaderFooterView_hostingView];
  v3 = [v1 contentView];
  [v3 bounds];
  v5 = v4;

  [v2 sizeThatFits_];
  v7 = v6;

  v8 = [v1 contentView];
  [v8 bounds];
  v10 = v9;

  v11 = v10;
  v12 = v7;
  result.height = v12;
  result.width = v11;
  return result;
}

Swift::Void __swiftcall CPUITableHeaderFooterView.prepareForReuse()()
{
  v0.super_class = CPUITableHeaderFooterView;
  objc_msgSendSuper2(&v0, sel_prepareForReuse);
  CPUITableHeaderFooterView.ViewModel.title.setter(0, 0xE000000000000000);
  swift_getKeyPath();
  lazy protocol witness table accessor for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel, type metadata accessor for CPUITableHeaderFooterView.ViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t CPUITableHeaderFooterView.ViewModel.title.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel, type metadata accessor for CPUITableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t key path getter for CPUITableHeaderFooterView.ViewModel.title : CPUITableHeaderFooterView.ViewModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel, type metadata accessor for CPUITableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t type metadata accessor for CPUITableHeaderFooterView.ViewModel()
{
  result = type metadata singleton initialization cache for CPUITableHeaderFooterView.ViewModel;
  if (!type metadata singleton initialization cache for CPUITableHeaderFooterView.ViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CPUITableHeaderFooterView.ViewModel.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    lazy protocol witness table accessor for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel, type metadata accessor for CPUITableHeaderFooterView.ViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t partial apply for closure #1 in CPUITableHeaderFooterView.ViewModel.title.setter()
{
  return partial apply for closure #1 in CPUITableHeaderFooterView.ViewModel.title.setter();
}

{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

uint64_t CPUITableHeaderFooterView.ViewModel.action.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel, type metadata accessor for CPUITableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 32);
  _sxRi_zRi0_zlyytIsegr_SgWOy_0(v1);
  return v1;
}

uint64_t key path getter for CPUITableHeaderFooterView.ViewModel.action : CPUITableHeaderFooterView.ViewModel@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel, type metadata accessor for CPUITableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return _sxRi_zRi0_zlyytIsegr_SgWOy_0(v4);
}

uint64_t key path setter for CPUITableHeaderFooterView.ViewModel.action : CPUITableHeaderFooterView.ViewModel(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  _sxRi_zRi0_zlyytIsegr_SgWOy_0(v1);
  lazy protocol witness table accessor for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel, type metadata accessor for CPUITableHeaderFooterView.ViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v4);
}

uint64_t partial apply for closure #1 in CPUITableHeaderFooterView.ViewModel.action.setter()
{
  return partial apply for closure #1 in CPUITableHeaderFooterView.ViewModel.action.setter();
}

{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 32);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  _sxRi_zRi0_zlyytIsegr_SgWOy_0(v1);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v4);
}

uint64_t CPUITableHeaderFooterView.ViewModel.__deallocating_deinit()
{

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v0[4]);
  v1 = OBJC_IVAR____TtCE9CarPlayUICSo25CPUITableHeaderFooterView9ViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata completion function for CPUITableHeaderFooterView.ViewModel()
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

uint64_t closure #1 in CPUITableHeaderFooterView.observeViewModel()()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel, type metadata accessor for CPUITableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t closure #2 in implicit closure #1 in CPUITableHeaderFooterView.observeViewModel()(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();
  v6 = a1;
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in closure #2 in implicit closure #1 in CPUITableHeaderFooterView.observeViewModel(), v8);
}

uint64_t closure #1 in closure #2 in implicit closure #1 in CPUITableHeaderFooterView.observeViewModel()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #2 in implicit closure #1 in CPUITableHeaderFooterView.observeViewModel(), v6, v5);
}

uint64_t closure #1 in closure #2 in implicit closure #1 in CPUITableHeaderFooterView.observeViewModel()()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR___CPUITableHeaderFooterView_hostingView;
  v3 = *&v1[OBJC_IVAR___CPUITableHeaderFooterView_hostingView];
  v4 = [v1 contentView];
  [v4 bounds];
  v6 = v5;
  v8 = v7;

  [v3 sizeThatFits_];
  v10 = v9;
  v12 = v11;

  [*&v1[v2] frame];
  if (v10 != v14 || v12 != v13)
  {
    [*(v0 + 16) invalidateIntrinsicContentSize];
  }

  [*(v0 + 16) observeViewModel];
  v16 = *(v0 + 8);

  return v16();
}

uint64_t CPUITableHeaderFooterView.Content.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyAA0I0VyAA08ModifiedE0VyAgAE10fontWeightyQrAA4FontV0L0VSgFQOyAMyAMyAgAE10textSuffixyQrAA4TextV0O0VFQOyAV_Qo_AA011_ForegroundH8ModifierVyAA017HierarchicalShapeH0VGGAA022_EnvironmentKeyWritingR0VyAPSgGG_Qo_A5_yAA5ImageV5ScaleOGGG_So021CPUITableHeaderFooterF0C07CarPlayB0E0E033_0A1293E04DB50132E8160F41073564E6LLVAIVQo_A15_GGMd);
  MEMORY[0x28223BE20](v3 - 8);
  v105 = &v82 - v4;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonI0Rd__lFQOyAA0J0VyACyAiAE10fontWeightyQrAA4FontV0L0VSgFQOyACyACyAiAE10textSuffixyQrAA4TextV0O0VFQOyAV_Qo_AA011_ForegroundI8ModifierVyAA017HierarchicalShapeI0VGGAA022_EnvironmentKeyWritingR0VyAPSgGG_Qo_A5_yAA5ImageV5ScaleOGGG_So021CPUITableHeaderFooterG0C07CarPlayB0E0D033_0A1293E04DB50132E8160F41073564E6LLVAKVQo_A15_GGAA16_FlexFrameLayoutVGMd);
  MEMORY[0x28223BE20](v104);
  v6 = &v82 - v5;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonI0Rd__lFQOyAA0J0VyACyAiAE10fontWeightyQrAA4FontV0L0VSgFQOyACyACyAiAE10textSuffixyQrAA4TextV0O0VFQOyAV_Qo_AA011_ForegroundI8ModifierVyAA017HierarchicalShapeI0VGGAA022_EnvironmentKeyWritingR0VyAPSgGG_Qo_A5_yAA5ImageV5ScaleOGGG_So021CPUITableHeaderFooterG0C07CarPlayB0E0D033_0A1293E04DB50132E8160F41073564E6LLVAKVQo_A15_GGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGMd);
  MEMORY[0x28223BE20](v106);
  v8 = &v82 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonI0Rd__lFQOyAA0J0VyACyAiAE10fontWeightyQrAA4FontV0L0VSgFQOyACyACyAiAE10textSuffixyQrAA4TextV0O0VFQOyAV_Qo_AA011_ForegroundI8ModifierVyAA017HierarchicalShapeI0VGGAA022_EnvironmentKeyWritingR0VyAPSgGG_Qo_A5_yAA5ImageV5ScaleOGGG_So021CPUITableHeaderFooterG0C07CarPlayB0E0D033_0A1293E04DB50132E8160F41073564E6LLVAKVQo_A15_GGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGA31_GMd);
  MEMORY[0x28223BE20](v9);
  v107 = &v82 - v10;
  v11 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v11 - 8);
  v99 = type metadata accessor for Text.Suffix();
  v96 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v93 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE10textSuffixyQrAA4TextV0E0VFQOyAF_Qo_Md);
  v95 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v91 = &v82 - v13;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10textSuffixyQrAA4TextV0G0VFQOyAH_Qo_AA24_ForegroundStyleModifierVyAA017HierarchicalShapeJ0VGGMd);
  MEMORY[0x28223BE20](v89);
  v90 = &v82 - v14;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10textSuffixyQrAA4TextV0G0VFQOyAH_Qo_AA24_ForegroundStyleModifierVyAA017HierarchicalShapeJ0VGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGMd);
  MEMORY[0x28223BE20](v94);
  v92 = &v82 - v15;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAKyAcAE10textSuffixyQrAA4TextV0J0VFQOyAN_Qo_AA24_ForegroundStyleModifierVyAA017HierarchicalShapeM0VGGAA022_EnvironmentKeyWritingN0VyAFSgGG_Qo_Md);
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v98 = &v82 - v16;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAeAE10textSuffixyQrAA4TextV0J0VFQOyAN_Qo_AA24_ForegroundStyleModifierVyAA017HierarchicalShapeM0VGGAA022_EnvironmentKeyWritingN0VyAHSgGG_Qo_AYyAA5ImageV5ScaleOGGMd);
  MEMORY[0x28223BE20](v88);
  v102 = &v82 - v17;
  swift_getKeyPath();
  *&v110 = a1;
  lazy protocol witness table accessor for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel, type metadata accessor for CPUITableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = a1[3];
  *&v110 = a1[2];
  *(&v110 + 1) = v18;
  lazy protocol witness table accessor for type String and conformance String();

  v86 = Text.init<A>(_:)();
  *&v110 = v86;
  *(&v110 + 1) = v19;
  v85 = v19;
  v84 = v20;
  LOBYTE(v111) = v20 & 1;
  v87 = v21;
  *(&v111 + 1) = v21;
  swift_getKeyPath();
  v109 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v103 = a1;
  if (a1[4])
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v22._countAndFlagsBits = 41154;
    v22._object = 0xA200000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v22);
    Image.init(systemName:)();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

    v23._countAndFlagsBits = 41154;
    v23._object = 0xA200000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v23);
    LocalizedStringKey.init(stringInterpolation:)();
    v24 = Text.init(_:tableName:bundle:comment:)();
    v26 = v25;
    v28 = v27;
    lazy protocol witness table accessor for type CPUITableHeaderFooterView.Content.Specs.Accessory.Style and conformance CPUITableHeaderFooterView.Content.Specs.Accessory.Style();
    v29 = Text.foregroundStyle<A>(_:)();
    v31 = v30;
    v83 = v6;
    v32 = v9;
    v33 = v8;
    v35 = v34;
    outlined consume of Text.Storage(v24, v26, v28 & 1);

    static Font.Weight.semibold.getter();
    v36 = Text.fontWeight(_:)();
    v38 = v37;
    v40 = v39;
    v41 = v35 & 1;
    v8 = v33;
    v9 = v32;
    v6 = v83;
    outlined consume of Text.Storage(v29, v31, v41);

    v42 = v93;
    static Text.Suffix.alwaysVisible(_:)();
    outlined consume of Text.Storage(v36, v38, v40 & 1);
  }

  else
  {
    v42 = v93;
    static Text.Suffix.none.getter();
  }

  v43 = v91;
  View.textSuffix(_:)();
  (*(v96 + 8))(v42, v99);
  outlined consume of Text.Storage(v86, v85, v84 & 1);

  v44 = static HierarchicalShapeStyle.primary.getter();
  v45 = v90;
  (*(v95 + 32))(v90, v43, v97);
  *&v45[*(v89 + 36)] = v44;
  v46 = static Font.callout.getter();
  KeyPath = swift_getKeyPath();
  v48 = v45;
  v49 = v92;
  outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v48, v92, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10textSuffixyQrAA4TextV0G0VFQOyAH_Qo_AA24_ForegroundStyleModifierVyAA017HierarchicalShapeJ0VGGMd);
  v50 = (v49 + *(v94 + 36));
  *v50 = KeyPath;
  v50[1] = v46;
  static Font.Weight.bold.getter();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.textSuffix(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  v51 = v98;
  View.fontWeight(_:)();
  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v49, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10textSuffixyQrAA4TextV0G0VFQOyAH_Qo_AA24_ForegroundStyleModifierVyAA017HierarchicalShapeJ0VGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGMd);
  v52 = v102;
  v53 = &v102[*(v88 + 36)];
  v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
  v55 = *MEMORY[0x277CE1050];
  v56 = type metadata accessor for Image.Scale();
  (*(*(v56 - 8) + 104))(v53 + v54, v55, v56);
  *v53 = swift_getKeyPath();
  (*(v100 + 32))(v52, v51, v101);
  v57 = v105;
  closure #1 in CPUITableHeaderFooterView.Content.body.getter(v103, v52, v105);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v57, v6, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyAA0I0VyAA08ModifiedE0VyAgAE10fontWeightyQrAA4FontV0L0VSgFQOyAMyAMyAgAE10textSuffixyQrAA4TextV0O0VFQOyAV_Qo_AA011_ForegroundH8ModifierVyAA017HierarchicalShapeH0VGGAA022_EnvironmentKeyWritingR0VyAPSgGG_Qo_A5_yAA5ImageV5ScaleOGGG_So021CPUITableHeaderFooterF0C07CarPlayB0E0E033_0A1293E04DB50132E8160F41073564E6LLVAIVQo_A15_GGMd);
  v58 = &v6[*(v104 + 36)];
  v59 = v115;
  *(v58 + 4) = v114;
  *(v58 + 5) = v59;
  *(v58 + 6) = v116;
  v60 = v111;
  *v58 = v110;
  *(v58 + 1) = v60;
  v61 = v113;
  *(v58 + 2) = v112;
  *(v58 + 3) = v61;
  LOBYTE(v57) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;
  outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v6, v8, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonI0Rd__lFQOyAA0J0VyACyAiAE10fontWeightyQrAA4FontV0L0VSgFQOyACyACyAiAE10textSuffixyQrAA4TextV0O0VFQOyAV_Qo_AA011_ForegroundI8ModifierVyAA017HierarchicalShapeI0VGGAA022_EnvironmentKeyWritingR0VyAPSgGG_Qo_A5_yAA5ImageV5ScaleOGGG_So021CPUITableHeaderFooterG0C07CarPlayB0E0D033_0A1293E04DB50132E8160F41073564E6LLVAKVQo_A15_GGAA16_FlexFrameLayoutVGMd);
  v70 = &v8[*(v106 + 36)];
  *v70 = v57;
  *(v70 + 1) = v63;
  *(v70 + 2) = v65;
  *(v70 + 3) = v67;
  *(v70 + 4) = v69;
  v70[40] = 0;
  LOBYTE(v57) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v79 = v107;
  outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v8, v107, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonI0Rd__lFQOyAA0J0VyACyAiAE10fontWeightyQrAA4FontV0L0VSgFQOyACyACyAiAE10textSuffixyQrAA4TextV0O0VFQOyAV_Qo_AA011_ForegroundI8ModifierVyAA017HierarchicalShapeI0VGGAA022_EnvironmentKeyWritingR0VyAPSgGG_Qo_A5_yAA5ImageV5ScaleOGGG_So021CPUITableHeaderFooterG0C07CarPlayB0E0D033_0A1293E04DB50132E8160F41073564E6LLVAKVQo_A15_GGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGMd);
  v80 = v79 + *(v9 + 36);
  *v80 = v57;
  *(v80 + 8) = v72;
  *(v80 + 16) = v74;
  *(v80 + 24) = v76;
  *(v80 + 32) = v78;
  *(v80 + 40) = 0;
  outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v79, v108, &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonI0Rd__lFQOyAA0J0VyACyAiAE10fontWeightyQrAA4FontV0L0VSgFQOyACyACyAiAE10textSuffixyQrAA4TextV0O0VFQOyAV_Qo_AA011_ForegroundI8ModifierVyAA017HierarchicalShapeI0VGGAA022_EnvironmentKeyWritingR0VyAPSgGG_Qo_A5_yAA5ImageV5ScaleOGGG_So021CPUITableHeaderFooterG0C07CarPlayB0E0D033_0A1293E04DB50132E8160F41073564E6LLVAKVQo_A15_GGAA16_FlexFrameLayoutVGAA14_PaddingLayoutVGA31_GMd);
  return outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v52, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAeAE10textSuffixyQrAA4TextV0J0VFQOyAN_Qo_AA24_ForegroundStyleModifierVyAA017HierarchicalShapeM0VGGAA022_EnvironmentKeyWritingN0VyAHSgGG_Qo_AYyAA5ImageV5ScaleOGGMd);
}

uint64_t closure #1 in CPUITableHeaderFooterView.Content.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0H0VSgFQOyAEyAEyAgAE10textSuffixyQrAA4TextV0K0VFQOyAP_Qo_AA24_ForegroundStyleModifierVyAA017HierarchicalShapeN0VGGAA022_EnvironmentKeyWritingO0VyAJSgGG_Qo_A_yAA5ImageV5ScaleOGGGMd);
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA15ModifiedContentVyAcAE10fontWeightyQrAA4FontV0J0VSgFQOyAIyAIyAcAE10textSuffixyQrAA4TextV0M0VFQOyAR_Qo_AA011_ForegroundE8ModifierVyAA017HierarchicalShapeE0VGGAA022_EnvironmentKeyWritingP0VyALSgGG_Qo_A1_yAA5ImageV5ScaleOGGG_So021CPUITableHeaderFooterC0C07CarPlayB0E0H033_0A1293E04DB50132E8160F41073564E6LLVAEVQo_Md);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v23 - v9;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyAA0I0VyAA08ModifiedD0VyAgAE10fontWeightyQrAA4FontV0L0VSgFQOyAMyAMyAgAE10textSuffixyQrAA4TextV0O0VFQOyAV_Qo_AA011_ForegroundH8ModifierVyAA017HierarchicalShapeH0VGGAA022_EnvironmentKeyWritingR0VyAPSgGG_Qo_A5_yAA5ImageV5ScaleOGGG_So021CPUITableHeaderFooterF0C07CarPlayB0E0D033_0A1293E04DB50132E8160F41073564E6LLVAIVQo_A15__GMd);
  MEMORY[0x28223BE20](v26);
  v12 = v23 - v11;
  swift_getKeyPath();
  v28 = a1;
  lazy protocol witness table accessor for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel, type metadata accessor for CPUITableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = *(a1 + 32);
  if (v14)
  {
    v23[3] = a3;
    MEMORY[0x28223BE20](v13);
    v23[-2] = a2;
    _sxRi_zRi0_zlyytIsegr_SgWOy_0(v14);

    v23[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAeAE10textSuffixyQrAA4TextV0J0VFQOyAN_Qo_AA24_ForegroundStyleModifierVyAA017HierarchicalShapeM0VGGAA022_EnvironmentKeyWritingN0VyAHSgGG_Qo_AYyAA5ImageV5ScaleOGGMd);
    v23[2] = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    Button.init(action:label:)();
    v15 = lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0H0VSgFQOyAEyAEyAgAE10textSuffixyQrAA4TextV0K0VFQOyAP_Qo_AA24_ForegroundStyleModifierVyAA017HierarchicalShapeN0VGGAA022_EnvironmentKeyWritingO0VyAJSgGG_Qo_A_yAA5ImageV5ScaleOGGGMd);
    v16 = v8;
    v17 = lazy protocol witness table accessor for type CPUITableHeaderFooterView.Content.ButtonStyle and conformance CPUITableHeaderFooterView.Content.ButtonStyle();
    v18 = v27;
    View.buttonStyle<A>(_:)();
    (*(v24 + 8))(v7, v18);
    v19 = v25;
    (*(v25 + 16))(v12, v10, v16);
    swift_storeEnumTagMultiPayload();
    v28 = v18;
    v29 = &unk_2855C9100;
    v30 = v15;
    v31 = v17;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v14);
    return (*(v19 + 8))(v10, v16);
  }

  else
  {
    sub_24313C8A4(a2, v12);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAeAE10textSuffixyQrAA4TextV0J0VFQOyAN_Qo_AA24_ForegroundStyleModifierVyAA017HierarchicalShapeM0VGGAA022_EnvironmentKeyWritingN0VyAHSgGG_Qo_AYyAA5ImageV5ScaleOGGMd);
    v21 = lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0H0VSgFQOyAEyAEyAgAE10textSuffixyQrAA4TextV0K0VFQOyAP_Qo_AA24_ForegroundStyleModifierVyAA017HierarchicalShapeN0VGGAA022_EnvironmentKeyWritingO0VyAJSgGG_Qo_A_yAA5ImageV5ScaleOGGGMd);
    v22 = lazy protocol witness table accessor for type CPUITableHeaderFooterView.Content.ButtonStyle and conformance CPUITableHeaderFooterView.Content.ButtonStyle();
    v28 = v27;
    v29 = &unk_2855C9100;
    v30 = v21;
    v31 = v22;
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t CPUITableHeaderFooterView.Content.ButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for RoundedRectangle();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v28[-v7];
  MEMORY[0x28223BE20](v6);
  v10 = &v28[-v9];
  v11 = ButtonStyleConfiguration.isPressed.getter();
  if (one-time initialization token for style != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for RoundedCornerStyle();
  v13 = __swift_project_value_buffer(v12, static CPUITableHeaderFooterView.Content.Specs.Corner.style);
  (*(*(v12 - 8) + 16))(&v10[*(v2 + 20)], v13, v12);
  __asm { FMOV            V0.2D, #10.0 }

  *v10 = _Q0;
  ButtonStyleConfiguration.label.getter();
  v19 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelV07CarPlayB006SystemE7OpacityVGMd) + 36));
  v29 = v11 & 1;
  *v19 = v11 & 1;
  v20 = *(type metadata accessor for SystemButtonOpacity() + 20);
  *&v19[v20] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of RoundedRectangle(v10, v8);
  v21 = static Color.accentColor.getter();
  v22 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA24ButtonStyleConfigurationV5LabelV07CarPlayB006SystemE7OpacityVGAH17FocusFillModifier33_1F62437CE6A4DB677E417C3C8E808E05LLVGMd) + 36);
  *(v22 + 48) = swift_getKeyPath();
  *(v22 + 56) = 0;
  v23 = *(type metadata accessor for FocusFillModifier() + 32);
  *(v22 + v23) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v22 = v21;
  *(v22 + 8) = xmmword_2431E6590;
  *(v22 + 24) = xmmword_2431E6590;
  outlined init with copy of RoundedRectangle(v8, v5);
  lazy protocol witness table accessor for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle, MEMORY[0x277CDFC08]);
  *(v22 + 40) = AnyShape.init<A>(_:)();
  v24 = outlined destroy of RoundedRectangle(v8);
  v25 = MEMORY[0x245D2BB10](v24, 0.2, 0.65, 0.0);
  outlined destroy of RoundedRectangle(v10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA24ButtonStyleConfigurationV5LabelV07CarPlayB006SystemE7OpacityVGAH17FocusFillModifier33_1F62437CE6A4DB677E417C3C8E808E05LLVGAA010_AnimationO0VySbGGMd);
  v27 = a1 + *(result + 36);
  *v27 = v25;
  *(v27 + 8) = v29;
  return result;
}

uint64_t CPUITableHeaderFooterView.Content.Specs.Accessory.Style.resolve(in:)@<X0>(uint64_t *a1@<X8>)
{
  v28 = a1;
  v1 = type metadata accessor for BlendMode();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v27 = &v25 - v5;
  v6 = type metadata accessor for ColorScheme();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  EnvironmentValues.colorScheme.getter();
  v25 = v7;
  v13 = *(v7 + 88);
  v14 = v13(v12, v6);
  v15 = *MEMORY[0x277CDF3D0];
  if (v14 == *MEMORY[0x277CDF3D0])
  {
    static Color.black.getter();
  }

  else if (v14 == *MEMORY[0x277CDF3C0])
  {
    static Color.white.getter();
  }

  else
  {
    static Color.black.getter();
    (*(v25 + 8))(v12, v6);
  }

  EnvironmentValues.colorScheme.getter();
  v16 = v13(v10, v6);
  if (v16 == v15)
  {
    v17 = v26;
    (*(v2 + 104))(v26, *MEMORY[0x277CE13B0], v1);
  }

  else
  {
    v18 = *(v2 + 104);
    v17 = v26;
    if (v16 == *MEMORY[0x277CDF3C0])
    {
      v18(v26, *MEMORY[0x277CE13B8], v1);
    }

    else
    {
      v18(v26, *MEMORY[0x277CE13B0], v1);
      (*(v25 + 8))(v10, v6);
    }
  }

  v19 = *(v2 + 32);
  v20 = v27;
  v19(v27, v17, v1);
  v21 = Color.opacity(_:)();

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI20_BlendModeShapeStyleVyAA5ColorVGMd);
  v23 = v28;
  result = (v19)(v28 + *(v22 + 36), v20, v1);
  *v23 = v21;
  return result;
}

unint64_t type metadata accessor for CPUITableHeaderFooterView()
{
  result = lazy cache variable for type metadata for CPUITableHeaderFooterView;
  if (!lazy cache variable for type metadata for CPUITableHeaderFooterView)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CPUITableHeaderFooterView);
  }

  return result;
}

uint64_t (*partial apply for implicit closure #1 in CPUITableHeaderFooterView.observeViewModel()())()
{
  v1 = *(v0 + 16);
  *(swift_allocObject() + 16) = v1;
  v2 = v1;
  return partial apply for closure #2 in implicit closure #1 in CPUITableHeaderFooterView.observeViewModel();
}

uint64_t partial apply for closure #1 in closure #2 in implicit closure #1 in CPUITableHeaderFooterView.observeViewModel()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #3 in AsyncIconLayer.load(icon:iconEnvironmentTraits:descriptor:);

  return closure #1 in closure #2 in implicit closure #1 in CPUITableHeaderFooterView.observeViewModel()(a1, v4, v5, v6);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.textSuffix(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.textSuffix(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.textSuffix(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10textSuffixyQrAA4TextV0G0VFQOyAH_Qo_AA24_ForegroundStyleModifierVyAA017HierarchicalShapeJ0VGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.textSuffix(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.textSuffix(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.textSuffix(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.textSuffix(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.textSuffix(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10textSuffixyQrAA4TextV0G0VFQOyAH_Qo_AA24_ForegroundStyleModifierVyAA017HierarchicalShapeJ0VGGMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<HierarchicalShapeStyle> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA017HierarchicalShapeD0VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.textSuffix(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CPUITableHeaderFooterView.Content.Specs.Accessory.Style and conformance CPUITableHeaderFooterView.Content.Specs.Accessory.Style()
{
  result = lazy protocol witness table cache variable for type CPUITableHeaderFooterView.Content.Specs.Accessory.Style and conformance CPUITableHeaderFooterView.Content.Specs.Accessory.Style;
  if (!lazy protocol witness table cache variable for type CPUITableHeaderFooterView.Content.Specs.Accessory.Style and conformance CPUITableHeaderFooterView.Content.Specs.Accessory.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CPUITableHeaderFooterView.Content.Specs.Accessory.Style and conformance CPUITableHeaderFooterView.Content.Specs.Accessory.Style);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CPUITableHeaderFooterView.Content.ButtonStyle and conformance CPUITableHeaderFooterView.Content.ButtonStyle()
{
  result = lazy protocol witness table cache variable for type CPUITableHeaderFooterView.Content.ButtonStyle and conformance CPUITableHeaderFooterView.Content.ButtonStyle;
  if (!lazy protocol witness table cache variable for type CPUITableHeaderFooterView.Content.ButtonStyle and conformance CPUITableHeaderFooterView.Content.ButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CPUITableHeaderFooterView.Content.ButtonStyle and conformance CPUITableHeaderFooterView.Content.ButtonStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAeAE10textSuffixyQrAA4TextV0J0VFQOyAN_Qo_AA24_ForegroundStyleModifierVyAA017HierarchicalShapeM0VGGAA022_EnvironmentKeyWritingN0VyAHSgGG_Qo_AYyAA5ImageV5ScaleOGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10textSuffixyQrAA4TextV0G0VFQOyAH_Qo_AA24_ForegroundStyleModifierVyAA017HierarchicalShapeJ0VGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.textSuffix(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Image.Scale> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Image.Scale> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>>>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<Group<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Group<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Group<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonI0Rd__lFQOyAA0J0VyACyAiAE10fontWeightyQrAA4FontV0L0VSgFQOyACyACyAiAE10textSuffixyQrAA4TextV0O0VFQOyAV_Qo_AA011_ForegroundI8ModifierVyAA017HierarchicalShapeI0VGGAA022_EnvironmentKeyWritingR0VyAPSgGG_Qo_A5_yAA5ImageV5ScaleOGGG_So021CPUITableHeaderFooterG0C07CarPlayB0E0D033_0A1293E04DB50132E8160F41073564E6LLVAKVQo_A15_GGAA16_FlexFrameLayoutVGMd);
    lazy protocol witness table accessor for type Group<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>>> and conformance <A> Group<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Group<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Group<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyAA0I0VyAA08ModifiedE0VyAgAE10fontWeightyQrAA4FontV0L0VSgFQOyAMyAMyAgAE10textSuffixyQrAA4TextV0O0VFQOyAV_Qo_AA011_ForegroundH8ModifierVyAA017HierarchicalShapeH0VGGAA022_EnvironmentKeyWritingR0VyAPSgGG_Qo_A5_yAA5ImageV5ScaleOGGG_So021CPUITableHeaderFooterF0C07CarPlayB0E0E033_0A1293E04DB50132E8160F41073564E6LLVAIVQo_A15_GGMd);
    lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA08ModifiedD0VyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyAKyAKyAeAE10textSuffixyQrAA4TextV0N0VFQOyAT_Qo_AA011_ForegroundG8ModifierVyAA017HierarchicalShapeG0VGGAA022_EnvironmentKeyWritingQ0VyANSgGG_Qo_A3_yAA5ImageV5ScaleOGGG_So021CPUITableHeaderFooterE0C07CarPlayB0E0D033_0A1293E04DB50132E8160F41073564E6LLVAGVQo_A13_GMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0H0VSgFQOyAEyAEyAgAE10textSuffixyQrAA4TextV0K0VFQOyAP_Qo_AA24_ForegroundStyleModifierVyAA017HierarchicalShapeN0VGGAA022_EnvironmentKeyWritingO0VyAJSgGG_Qo_A_yAA5ImageV5ScaleOGGGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0H0VSgFQOyAEyAEyAgAE10textSuffixyQrAA4TextV0K0VFQOyAP_Qo_AA24_ForegroundStyleModifierVyAA017HierarchicalShapeN0VGGAA022_EnvironmentKeyWritingO0VyAJSgGG_Qo_A_yAA5ImageV5ScaleOGGGMd);
    lazy protocol witness table accessor for type CPUITableHeaderFooterView.Content.ButtonStyle and conformance CPUITableHeaderFooterView.Content.ButtonStyle();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of RoundedRectangle(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, SystemButtonOpacity>, FocusFillModifier>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, SystemButtonOpacity>, FocusFillModifier>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, SystemButtonOpacity>, FocusFillModifier>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA24ButtonStyleConfigurationV5LabelV07CarPlayB006SystemE7OpacityVGAH17FocusFillModifier33_1F62437CE6A4DB677E417C3C8E808E05LLVGAA010_AnimationO0VySbGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, SystemButtonOpacity>, FocusFillModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, SystemButtonOpacity>, FocusFillModifier>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, SystemButtonOpacity>, FocusFillModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, SystemButtonOpacity>, FocusFillModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, SystemButtonOpacity>, FocusFillModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA24ButtonStyleConfigurationV5LabelV07CarPlayB006SystemE7OpacityVGAH17FocusFillModifier33_1F62437CE6A4DB677E417C3C8E808E05LLVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, SystemButtonOpacity> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type FocusFillModifier and conformance FocusFillModifier, type metadata accessor for FocusFillModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, SystemButtonOpacity>, FocusFillModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, SystemButtonOpacity> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, SystemButtonOpacity> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, SystemButtonOpacity> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelV07CarPlayB006SystemE7OpacityVGMd);
    lazy protocol witness table accessor for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label, MEMORY[0x277CDE278]);
    lazy protocol witness table accessor for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type SystemButtonOpacity and conformance SystemButtonOpacity, type metadata accessor for SystemButtonOpacity);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, SystemButtonOpacity> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CPUITableHeaderFooterView.ViewModel and conformance CPUITableHeaderFooterView.ViewModel(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t closure #1 in CPUITableHeaderFooterView.ViewModel.action.setterpartial apply()
{
  return partial apply for closure #1 in CPUITableHeaderFooterView.ViewModel.action.setter();
}

{
  return partial apply for closure #1 in CPUITableHeaderFooterView.ViewModel.action.setter();
}

{
  return partial apply for closure #1 in CPUITableHeaderFooterView.ViewModel.action.setter();
}

{
  return partial apply for closure #1 in CPUITableHeaderFooterView.ViewModel.action.setter();
}

id CPUIGridViewBaseStyleOptions.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

Swift::Void __swiftcall CPUIGridViewBaseTableViewCell.prepareForReuse()()
{
  v4.super_class = CPUIGridViewBaseTableViewCell;
  objc_msgSendSuper2(&v4, sel_prepareForReuse);
  if (*&v0[OBJC_IVAR___CPUIGridViewBaseTableViewCell_storedDataSource])
  {
    v1 = *&v0[OBJC_IVAR___CPUIGridViewBaseTableViewCell_storedDataSource + 8];
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 24);
    swift_unknownObjectRetain();
    v3(MEMORY[0x277D84F90], ObjectType, v1);
    swift_unknownObjectRelease();
  }

  GridView.updateData()();
  [v0 setNeedsLayout];
}

id CPUIGridViewBaseTableViewCell.viewModels.setter(uint64_t a1)
{
  if (*&v1[OBJC_IVAR___CPUIGridViewBaseTableViewCell_storedDataSource])
  {
    v2 = *&v1[OBJC_IVAR___CPUIGridViewBaseTableViewCell_storedDataSource + 8];
    ObjectType = swift_getObjectType();
    v5 = *(v2 + 24);
    swift_unknownObjectRetain();
    v5(a1, ObjectType, v2);
    swift_unknownObjectRelease();
  }

  else
  {
  }

  GridView.updateData()();

  return [v1 setNeedsLayout];
}

uint64_t CPUIGridViewBaseTableViewCell.storedDataSource.didset()
{
  v1 = (v0 + OBJC_IVAR___CPUIGridViewBaseTableViewCell_storedDataSource);
  if (*(v0 + OBJC_IVAR___CPUIGridViewBaseTableViewCell_storedDataSource))
  {
    v2 = *(v1[1] + 8);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + OBJC_IVAR___CPUIGridViewTableViewCell_gridView) + OBJC_IVAR____TtC9CarPlayUI8GridView_dataSource;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v3 + 8) = v2;
  swift_unknownObjectWeakAssign();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    if (v6 == Strong)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (!Strong)
    {
      goto LABEL_11;
    }

    swift_unknownObjectRetain();
  }

  GridView.reloadData()();
LABEL_10:
  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
LABEL_11:
  if (*v1)
  {
    v7 = v1[1];
    ObjectType = swift_getObjectType();
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = *(v7 + 48);
    swift_unknownObjectRetain();

    v10(partial apply for closure #1 in CPUIGridViewBaseTableViewCell.storedDataSource.didset, v9, ObjectType, v7);
    swift_unknownObjectRelease();
  }

  return result;
}

void closure #1 in CPUIGridViewBaseTableViewCell.storedDataSource.didset()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*(Strong + OBJC_IVAR___CPUIGridViewTableViewCell_gridView) + OBJC_IVAR____TtC9CarPlayUI8GridView_cells);
    swift_beginAccess();
    v3 = v2[2];
    v4 = *(v3 + 16);
    if (v4)
    {
      v14 = v1;
      v5 = v2[1];
      v13[2] = *v2;

      v13[1] = v5;

      v6 = 0;
      v7 = 0;
      v8 = MEMORY[0x277D85000];
      v15 = v4;
      while (v6 < *(v3 + 16))
      {
        v9 = *(v3 + 8 * v6 + 32);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO0fE0Cy__AC06SquareD0O4CellVGMd);
        v10 = swift_dynamicCastClass();
        if (v10)
        {
          v11 = *(v10 + *((*v8 & *v10) + class metadata base offset for GridView.Base.BaseView + 16));
          if (*(v11 + OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__isPressed))
          {
            KeyPath = swift_getKeyPath();
            v18 = v13;
            MEMORY[0x28223BE20](KeyPath);
            v17 = v7;
            v19 = v11;
            lazy protocol witness table accessor for type GridView.Base.ViewModel and conformance GridView.Base.ViewModel();
            v16 = v9;

            v7 = v17;
            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

            v4 = v15;
          }

          else
          {
            *(v11 + OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__isPressed) = 0;
          }
        }

        if (v4 == ++v6)
        {

          return;
        }
      }

      __break(1u);
    }

    else
    {
    }
  }
}

uint64_t CPUIGridViewBaseTableViewCell.viewModels.getter()
{
  if (!*(v0 + OBJC_IVAR___CPUIGridViewBaseTableViewCell_storedDataSource))
  {
    return MEMORY[0x277D84F90];
  }

  v1 = *(v0 + OBJC_IVAR___CPUIGridViewBaseTableViewCell_storedDataSource + 8);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 16);
  swift_unknownObjectRetain();
  v4 = v3(ObjectType, v1);
  swift_unknownObjectRelease();
  return v4;
}

void *key path getter for CPUIGridViewBaseTableViewCell.viewModels : CPUIGridViewBaseTableViewCell@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*result + OBJC_IVAR___CPUIGridViewBaseTableViewCell_storedDataSource);
  if (*v3)
  {
    v4 = v3[1];
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 16);
    swift_unknownObjectRetain();
    v7 = v6(ObjectType, v4);
    result = swift_unknownObjectRelease();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  *a2 = v7;
  return result;
}

id (*CPUIGridViewBaseTableViewCell.viewModels.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = OBJC_IVAR___CPUIGridViewBaseTableViewCell_storedDataSource;
  a1[1] = v1;
  a1[2] = v3;
  v4 = (v1 + v3);
  if (*v4)
  {
    v5 = v4[1];
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 16);
    swift_unknownObjectRetain();
    v8 = v7(ObjectType, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  *a1 = v8;
  return CPUIGridViewBaseTableViewCell.viewModels.modify;
}

id CPUIGridViewBaseTableViewCell.viewModels.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = &v2[a1[2]];
  if (a2)
  {
    v4 = *a1;
    if (*v3)
    {
      v5 = *(v3 + 1);
      ObjectType = swift_getObjectType();
      v7 = *(v5 + 24);

      swift_unknownObjectRetain();
      v7(v4, ObjectType, v5);
      swift_unknownObjectRelease();
    }

    GridView.updateData()();
    [v2 setNeedsLayout];
  }

  else
  {
    v9 = *a1;
    if (*v3)
    {
      v10 = *(v3 + 1);
      v11 = swift_getObjectType();
      v12 = *(v10 + 24);
      swift_unknownObjectRetain();
      v12(v9, v11, v10);
      swift_unknownObjectRelease();
    }

    else
    {
    }

    GridView.updateData()();

    return [v2 setNeedsLayout];
  }
}

Swift::Void __swiftcall CPUIGridViewBaseTableViewCell.__setViewModels(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  swift_getKeyPath();
  if (a1._rawValue >> 62)
  {
    if (a1._rawValue < 0)
    {
      rawValue = a1._rawValue;
    }

    else
    {
      rawValue = a1._rawValue & 0xFFFFFFFFFFFFFF8;
    }

    v4 = MEMORY[0x245D2BF50](rawValue);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_15:

    v10 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v4 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_15;
  }

LABEL_3:
  v15 = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v4 < 0)
  {
    __break(1u);
    return;
  }

  if ((a1._rawValue & 0xC000000000000001) != 0)
  {
    v5 = 0;
    do
    {
      v6 = v5 + 1;
      MEMORY[0x245D2BEE0]();
      swift_getAtKeyPath();
      swift_unknownObjectRelease();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v5 = v6;
    }

    while (v4 != v6);
  }

  else
  {
    v7 = (a1._rawValue + 32);
    do
    {
      v8 = *v7++;
      v9 = v8;
      swift_getAtKeyPath();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v4;
    }

    while (v4);
  }

  v10 = v15;
LABEL_16:
  if (*&v2[OBJC_IVAR___CPUIGridViewBaseTableViewCell_storedDataSource])
  {
    v12 = *&v2[OBJC_IVAR___CPUIGridViewBaseTableViewCell_storedDataSource + 8];
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 24);
    swift_unknownObjectRetain();
    v14(v10, ObjectType, v12);
    swift_unknownObjectRelease();
  }

  else
  {
  }

  GridView.updateData()();
  [v2 setNeedsLayout];
}

__n128 CPUIGridViewBaseTableViewCell.gridViewStyle.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR___CPUIGridViewBaseTableViewCell_gridViewStyle);
  swift_beginAccess();
  v4 = v3[1].n128_u64[0];
  v5 = v3[1].n128_u16[4];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u64[0] = v4;
  a1[1].n128_u16[4] = v5;
  return result;
}

uint64_t key path setter for CPUIGridViewBaseTableViewCell.gridViewStyle : CPUIGridViewBaseTableViewCell(__int128 *a1, void *a2)
{
  v6 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 12);
  v4 = *a2 + OBJC_IVAR___CPUIGridViewBaseTableViewCell_gridViewStyle;
  swift_beginAccess();
  *v4 = v6;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  return CPUIGridViewBaseTableViewCell.gridViewStyle.didset();
}

uint64_t CPUIGridViewBaseTableViewCell.gridViewStyle.setter(__int128 *a1)
{
  v6 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 12);
  v4 = v1 + OBJC_IVAR___CPUIGridViewBaseTableViewCell_gridViewStyle;
  swift_beginAccess();
  *v4 = v6;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  return CPUIGridViewBaseTableViewCell.gridViewStyle.didset();
}

uint64_t CPUIGridViewBaseTableViewCell.gridViewStyle.didset()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR___CPUIGridViewBaseTableViewCell_gridViewStyle);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];
  v5 = *(v2 + 12);
  v6 = v5 >> 14;
  if (v5 >> 14 > 1)
  {
    v31 = &type metadata for GridView.ImageGrid.Layout;
    v32 = &protocol witness table for GridView.ImageGrid.Layout;
    if (v6 == 2)
    {
      v10 = swift_allocObject();
      v30[0] = v10;
      v11 = *(MEMORY[0x277D768C8] + 16);
      *(v10 + 16) = *MEMORY[0x277D768C8];
      *(v10 + 32) = v11;
      *(v10 + 48) = v4;
      *(v10 + 56) = v3 & 1;
      *(v10 + 57) = BYTE1(v3) & 1;
      *(v10 + 58) = 1;
    }

    else
    {
      v14 = swift_allocObject();
      v30[0] = v14;
      v15 = *(MEMORY[0x277D768C8] + 16);
      *(v14 + 16) = *MEMORY[0x277D768C8];
      *(v14 + 32) = v15;
      *(v14 + 48) = v4;
      *(v14 + 56) = v3 & 1;
      *(v14 + 57) = 257;
    }
  }

  else if (v6)
  {
    v31 = &type metadata for GridView.Hero.Layout;
    v32 = &protocol witness table for GridView.Hero.Layout;
    v12 = swift_allocObject();
    v30[0] = v12;
    v13 = *(MEMORY[0x277D768C8] + 16);
    *(v12 + 16) = *MEMORY[0x277D768C8];
    *(v12 + 32) = v13;
    *(v12 + 48) = v4;
    *(v12 + 56) = v3 & 1;
  }

  else
  {
    v7 = v2[2];
    v31 = &type metadata for GridView.Condensed.Layout;
    v32 = &protocol witness table for GridView.Condensed.Layout;
    v8 = swift_allocObject();
    v30[0] = v8;
    v9 = *(MEMORY[0x277D768C8] + 16);
    *(v8 + 16) = *MEMORY[0x277D768C8];
    *(v8 + 32) = v9;
    *(v8 + 48) = v4;
    *(v8 + 56) = v3 & 1;
    *(v8 + 64) = v7;
    *(v8 + 72) = v5 & 1;
    *(v8 + 73) = BYTE1(v5) & 1;
  }

  v16 = *(v1 + OBJC_IVAR___CPUIGridViewTableViewCell_gridView);
  outlined init with copy of InsettableShape(v30, v29);
  v17 = OBJC_IVAR____TtC9CarPlayUI8GridView_layout;
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((v16 + v17), v29);
  swift_endAccess();
  GridView.updateLayout(animated:)(0);
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v30);
  v18 = (v1 + OBJC_IVAR___CPUIGridViewBaseTableViewCell_storedDataSource);
  if (*(v1 + OBJC_IVAR___CPUIGridViewBaseTableViewCell_storedDataSource))
  {
    v19 = v18[1];
    ObjectType = swift_getObjectType();
    v21 = *(v19 + 16);
    swift_unknownObjectRetain();
    v22 = v21(ObjectType, v19);
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  v23 = *(v2 + 12) >> 14;
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v24 = &_s9CarPlayUI8GridViewC4BaseO0F10DataSourceCy__AC05ImageD0O4CellVGMd;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO0F10DataSourceCy__AC05ImageD0O4CellVGMd);
      v25 = swift_allocObject();
      v25[3] = 0;
      v25[4] = 0;
      v25[2] = v22;
      v26 = &lazy protocol witness table cache variable for type GridView.Base.BaseDataSource<GridView.ImageGrid.Cell> and conformance GridView.Base.BaseDataSource<A>;
    }

    else
    {
      v24 = &_s9CarPlayUI8GridViewC4BaseO0F10DataSourceCy__AC06SquareD0O4CellVGMd;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO0F10DataSourceCy__AC06SquareD0O4CellVGMd);
      v25 = swift_allocObject();
      v25[3] = 0;
      v25[4] = 0;
      v25[2] = v22;
      v26 = &lazy protocol witness table cache variable for type GridView.Base.BaseDataSource<GridView.SquareGrid.Cell> and conformance GridView.Base.BaseDataSource<A>;
    }
  }

  else if (v23)
  {
    v24 = &_s9CarPlayUI8GridViewC4BaseO0F10DataSourceCy__AC4HeroO4CellVGMd;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO0F10DataSourceCy__AC4HeroO4CellVGMd);
    v25 = swift_allocObject();
    v25[3] = 0;
    v25[4] = 0;
    v25[2] = v22;
    v26 = &lazy protocol witness table cache variable for type GridView.Base.BaseDataSource<GridView.Hero.Cell> and conformance GridView.Base.BaseDataSource<A>;
  }

  else
  {
    v24 = &_s9CarPlayUI8GridViewC4BaseO0F10DataSourceCy__AC9CondensedO4CellVGMd;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO0F10DataSourceCy__AC9CondensedO4CellVGMd);
    v25 = swift_allocObject();
    v25[3] = 0;
    v25[4] = 0;
    v25[2] = v22;
    v26 = &lazy protocol witness table cache variable for type GridView.Base.BaseDataSource<GridView.Condensed.Cell> and conformance GridView.Base.BaseDataSource<A>;
  }

  v27 = lazy protocol witness table accessor for type GridView.Base.BaseDataSource<GridView.ImageGrid.Cell> and conformance GridView.Base.BaseDataSource<A>(v26, v24);
  *v18 = v25;
  v18[1] = v27;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  CPUIGridViewBaseTableViewCell.storedDataSource.didset();
  return swift_unknownObjectRelease();
}

uint64_t (*CPUIGridViewBaseTableViewCell.gridViewStyle.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CPUIGridViewBaseTableViewCell.gridViewStyle.modify;
}

uint64_t CPUIGridViewBaseTableViewCell.gridViewStyle.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return CPUIGridViewBaseTableViewCell.gridViewStyle.didset();
  }

  return result;
}

id CPUIGridViewBaseTableViewCell.__gridViewStyleOptions.getter()
{
  v1 = v0 + OBJC_IVAR___CPUIGridViewBaseTableViewCell_gridViewStyle;
  swift_beginAccess();
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  v4 = v3 >> 14;
  if (v3 >> 14 > 1)
  {
    if (v4 == 2)
    {
      if (v2)
      {
        v9 = -1;
      }

      else
      {
        v9 = *v1;
      }

      v7 = [objc_allocWithZone(CPUIGridViewBaseStyleImageGridOptions) initWithUseFillDistribution_];
      v8 = [objc_allocWithZone(CPUIGridViewBaseStyleOptions) initWithMaximumNumberOfLines:v9 condensedOptions:0 imageGridOptions:v7];
      goto LABEL_15;
    }
  }

  else if (!v4)
  {
    if (v2)
    {
      v5 = -1;
    }

    else
    {
      v5 = *v1;
    }

    if (v3)
    {
      v6 = 0;
    }

    else
    {
      v6 = *(v1 + 16);
    }

    v7 = [objc_allocWithZone(CPUIGridViewBaseStyleCondensedOptions) initWithMaximumNumberOfColumns:v6 prefersFillingRows:(v3 >> 8) & 1];
    v8 = [objc_allocWithZone(CPUIGridViewBaseStyleOptions) initWithMaximumNumberOfLines:v5 condensedOptions:v7 imageGridOptions:0];
LABEL_15:
    v10 = v8;

    return v10;
  }

  if (v2)
  {
    v12 = -1;
  }

  else
  {
    v12 = *v1;
  }

  return [objc_allocWithZone(CPUIGridViewBaseStyleOptions) initWithMaximumNumberOfLines:v12 condensedOptions:0 imageGridOptions:0];
}

uint64_t CPUIGridViewBaseTableViewCell.updateGridViewStyle(style:options:)(uint64_t a1, id a2)
{
  v5 = [a2 maximumNumberOfLines];
  if (v5 == -1)
  {
    v6 = 0;
  }

  else
  {
    v6 = [a2 maximumNumberOfLines];
  }

  v7 = 1;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v10 = 0;
      v7 = v5 == -1;
      v9 = 0x4000;
    }

    else if (a1 == 3)
    {
      v11 = [a2 imageGridOptions];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 useFillDistribution];

        v10 = 0;
        v14 = 256;
        if (!v13)
        {
          v14 = 0;
        }

        if (v5 == -1)
        {
          v7 = v14 + 1;
        }

        else
        {
          v7 = v14;
        }
      }

      else
      {
        v10 = 0;
        v7 = v5 == -1;
      }

      v9 = 0x8000;
    }

    else
    {
      v6 = 0;
      v10 = 0;
      v9 = 1;
    }
  }

  else if (a1)
  {
    v8 = a1 == 1;
    if (a1 == 1)
    {
      v9 = -16384;
    }

    else
    {
      v6 = 0;
      v9 = 1;
    }

    if (v8)
    {
      v7 = v5 == -1;
    }

    v10 = 0;
  }

  else
  {
    v15 = [a2 condensedOptions];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 maximumNumberOfColumns];
      if (v17)
      {
        v10 = [v16 maximumNumberOfColumns];
      }

      else
      {
        v10 = 0;
      }

      v7 = v5 == -1;
      v18 = [v16 prefersFillingRows];

      if (v18)
      {
        v19 = 256;
      }

      else
      {
        v19 = 0;
      }

      if (v17)
      {
        v9 = v19;
      }

      else
      {
        v9 = v19 + 1;
      }
    }

    else
    {
      v10 = 0;
      v7 = v5 == -1;
      v9 = 1;
    }
  }

  v20 = v2 + OBJC_IVAR___CPUIGridViewBaseTableViewCell_gridViewStyle;
  swift_beginAccess();
  *v20 = v6;
  *(v20 + 8) = v7;
  *(v20 + 16) = v10;
  *(v20 + 24) = v9;
  return CPUIGridViewBaseTableViewCell.gridViewStyle.didset();
}

id CPUIGridViewBaseTableViewCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = &v3[OBJC_IVAR___CPUIGridViewBaseTableViewCell_storedDataSource];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v3[OBJC_IVAR___CPUIGridViewBaseTableViewCell_gridViewStyle];
  *v6 = xmmword_2431E6900;
  *(v6 + 2) = 0;
  *(v6 + 12) = 1;
  if (a3)
  {
    v7 = MEMORY[0x245D2BBE0](a2, a3);
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = CPUIGridViewBaseTableViewCell;
  v8 = objc_msgSendSuper2(&v10, sel_initWithStyle_reuseIdentifier_, a1, v7);

  return v8;
}

void CPUIGridViewBaseTableViewCell.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR___CPUIGridViewBaseTableViewCell_storedDataSource);
  *v1 = 0;
  v1[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t lazy protocol witness table accessor for type GridView.Base.BaseDataSource<GridView.ImageGrid.Cell> and conformance GridView.Base.BaseDataSource<A>(unint64_t *a1, uint64_t *a2)
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

unint64_t lazy protocol witness table accessor for type GridView.Base.ViewModel and conformance GridView.Base.ViewModel()
{
  result = lazy protocol witness table cache variable for type GridView.Base.ViewModel and conformance GridView.Base.ViewModel;
  if (!lazy protocol witness table cache variable for type GridView.Base.ViewModel and conformance GridView.Base.ViewModel)
  {
    type metadata accessor for GridView.Base.ViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GridView.Base.ViewModel and conformance GridView.Base.ViewModel);
  }

  return result;
}

id one-time initialization function for materialBorder()
{
  if (one-time initialization token for materialBorderColor != -1)
  {
    swift_once();
  }

  v1 = static CPUIFocusEffectView.Style.materialBorderColor;
  static CPUIFocusEffectView.Style.materialBorder = static CPUIFocusEffectView.Style.materialBorderColor;
  unk_27ED69E10 = 0;
  byte_27ED69E18 = 1;

  return v1;
}

id one-time initialization function for materialBorderPressed()
{
  if (one-time initialization token for materialBorderPressedColor != -1)
  {
    swift_once();
  }

  v1 = static CPUIFocusEffectView.Style.materialBorderPressedColor;
  static CPUIFocusEffectView.Style.materialBorderPressed = static CPUIFocusEffectView.Style.materialBorderPressedColor;
  *algn_27ED69E28 = 0;
  byte_27ED69E30 = 1;

  return v1;
}

id one-time initialization function for solidBorder()
{
  result = [objc_opt_self() _carSystemFocusColor];
  static CPUIFocusEffectView.Style.solidBorder = result;
  unk_27ED69E40 = 0;
  byte_27ED69E48 = 1;
  return result;
}

void one-time initialization function for solidBorderPressed()
{
  v0 = [objc_opt_self() _carSystemFocusColor];
  v1 = [v0 colorWithAlphaComponent_];

  static CPUIFocusEffectView.Style.solidBorderPressed = v1;
  *algn_27ED69E58 = 0;
  byte_27ED69E60 = 1;
}

id one-time initialization function for default()
{
  if (one-time initialization token for solidBorder != -1)
  {
    swift_once();
  }

  v1 = static CPUIFocusEffectView.Style.solidBorder;
  v2 = unk_27ED69E40;
  v3 = byte_27ED69E48;
  static CPUIFocusEffectView.Style.default = static CPUIFocusEffectView.Style.solidBorder;
  unk_27ED69E70 = unk_27ED69E40;
  byte_27ED69E78 = byte_27ED69E48;

  return outlined copy of CPUIFocusEffectView.Style(v1, v2, v3);
}

id closure #1 in variable initialization expression of static CPUIFocusEffectView.Style.materialBorderColor(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  if (v1 == 1)
  {
    v3 = 0.5;
  }

  else
  {
    v3 = 0.7;
  }

  v4 = &selRef_blackColor;
  if (v1 != 1)
  {
    v4 = &selRef_whiteColor;
  }

  v5 = [v2 *v4];
  v6 = [v5 colorWithAlphaComponent_];

  return v6;
}

uint64_t one-time initialization function for materialBorderColor(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = objc_allocWithZone(MEMORY[0x277D75348]);
  v11[4] = a2;
  v11[5] = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  v11[3] = a3;
  v8 = _Block_copy(v11);
  v9 = [v7 initWithDynamicProvider_];
  _Block_release(v8);

  *a4 = v9;
  return result;
}

id closure #1 in variable initialization expression of static CPUIFocusEffectView.Style.materialBorderPressedColor(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  if (v1 == 1)
  {
    v3 = 0.2;
  }

  else
  {
    v3 = 0.25;
  }

  v4 = &selRef_blackColor;
  if (v1 != 1)
  {
    v4 = &selRef_whiteColor;
  }

  v5 = [v2 *v4];
  v6 = [v5 colorWithAlphaComponent_];

  return v6;
}

id CPUIFocusEffectView.style.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___CPUIFocusEffectView_style;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  return outlined copy of CPUIFocusEffectView.Style(v4, v5, v6);
}

id outlined copy of CPUIFocusEffectView.Style(id result, void *a2, char a3)
{
  if (a3)
  {
    v4 = result;
    v3 = a2;

    return v4;
  }

  return result;
}

id key path getter for CPUIFocusEffectView.style : CPUIFocusEffectView@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___CPUIFocusEffectView_style;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  return outlined copy of CPUIFocusEffectView.Style(v4, v5, v6);
}

id key path setter for CPUIFocusEffectView.style : CPUIFocusEffectView(uint64_t a1, void **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *a2 + OBJC_IVAR___CPUIFocusEffectView_style;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  outlined copy of CPUIFocusEffectView.Style(v2, v3, v4);
  outlined consume of CPUIFocusEffectView.Style(v7, v8, v9);
  return [v5 updateAppearance];
}

id CPUIFocusEffectView.style.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = &v1[OBJC_IVAR___CPUIFocusEffectView_style];
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 1);
  v8 = v5[16];
  *v5 = v2;
  *(v5 + 1) = v3;
  v5[16] = v4;
  outlined consume of CPUIFocusEffectView.Style(v6, v7, v8);
  return [v1 updateAppearance];
}

void outlined consume of CPUIFocusEffectView.Style(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }
}

id (*CPUIFocusEffectView.style.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CPUIFocusEffectView.style.modify;
}

id CPUIFocusEffectView.style.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 updateAppearance];
  }

  return result;
}

BOOL static CPUIFocusEffectView.focusEffectStyleVariant(for:)()
{
  lazy protocol witness table accessor for type CPUIWallpaperAppearanceTypeTrait and conformance CPUIWallpaperAppearanceTypeTrait();
  lazy protocol witness table accessor for type CPUIWallpaperAppearanceType and conformance CPUIWallpaperAppearanceType();
  UITraitCollection.subscript.getter();
  return v1 != 1;
}

id CPUIFocusEffectView.init(image:)(void *a1)
{
  v3 = [a1 imageWithRenderingMode_];
  v4 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

  v5 = [v1 initWithEffectMask_];
  return v5;
}

id CPUIFocusEffectView.init(cornerRadius:strokeWidth:)(double a1, double a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v4 initWithCornerRadius:a1 strokeWidth:a2];
}

{
  v3 = specialized CPUIFocusEffectView.RingView.__allocating_init(cornerRadius:strokeWidth:)(a1, a2);
  v4 = [v2 initWithEffectMask_];

  return v4;
}

id CPUIFocusEffectView.init(cornerRadius:)(double a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithCornerRadius_];
}

{
  v3 = *MEMORY[0x277CDA138];
  v4 = type metadata accessor for CPUIFocusEffectView.SolidRoundedRectangleView();
  v10.receiver = objc_allocWithZone(v4);
  v10.super_class = v4;
  v5 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = [v5 layer];
  [v6 setCornerRadius_];

  v7 = [v5 layer];
  [v7 setCornerCurve_];

  v8 = [v1 initWithEffectMask_];
  return v8;
}

id CPUIFocusEffectView.init(cornerRadius:cornerCurve:)(void *a1, double a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCornerRadius:a1 cornerCurve:a2];

  return v3;
}

{
  v5 = type metadata accessor for CPUIFocusEffectView.SolidRoundedRectangleView();
  v12.receiver = objc_allocWithZone(v5);
  v12.super_class = v5;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v12, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v8 = [v7 layer];
  [v8 setCornerRadius_];

  v9 = [v7 layer];
  [v9 setCornerCurve_];

  v10 = [v2 initWithEffectMask_];
  return v10;
}

id CPUIFocusEffectView.init(image:)(void *a1, SEL *a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) *a2];

  return v3;
}

char *CPUIFocusEffectView.init(effectMask:)(void *a1)
{
  swift_getObjectType();
  v1[OBJC_IVAR___CPUIFocusEffectView__isPressed] = 0;
  *&v1[OBJC_IVAR___CPUIFocusEffectView_effectMask] = a1;
  v3 = objc_allocWithZone(MEMORY[0x277D75D68]);
  v4 = a1;
  v5 = [v3 initWithEffect_];
  *&v1[OBJC_IVAR___CPUIFocusEffectView_materialView] = v5;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v6 = static CPUIFocusEffectView.Style.default;
  v7 = unk_27ED69E70;
  v8 = byte_27ED69E78;
  v9 = &v1[OBJC_IVAR___CPUIFocusEffectView_style];
  *v9 = static CPUIFocusEffectView.Style.default;
  *(v9 + 1) = v7;
  v9[16] = v8;
  outlined copy of CPUIFocusEffectView.Style(v6, v7, v8);
  v17.receiver = v1;
  v17.super_class = CPUIFocusEffectView;
  v10 = objc_msgSendSuper2(&v17, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v10 addSubview_];
  [v10 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2431E69B0;
  v12 = type metadata accessor for UITraitUserInterfaceStyle();
  v13 = MEMORY[0x277D74BF0];
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2431E69B0;
  v15 = lazy protocol witness table accessor for type CPUIWallpaperAppearanceTypeTrait and conformance CPUIWallpaperAppearanceTypeTrait();
  *(v14 + 32) = &type metadata for CPUIWallpaperAppearanceTypeTrait;
  *(v14 + 40) = v15;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  [v10 setUserInteractionEnabled_];

  [v10 updateVariant];
  return v10;
}

void CPUIFocusEffectView.init(coder:)()
{
  *(v0 + OBJC_IVAR___CPUIFocusEffectView__isPressed) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall CPUIFocusEffectView.layoutSubviews()()
{
  v3.super_class = CPUIFocusEffectView;
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = [v0 effectMask];
  [v0 bounds];
  [v1 setFrame_];

  v2 = [v0 materialView];
  [v0 bounds];
  [v2 setFrame_];
}

id CPUIFocusEffectView.update(with:isPressed:)(uint64_t a1, char a2)
{
  [v2 setPressed_];
  if (a1 == 1)
  {
    if (a2)
    {
      if (one-time initialization token for solidBorderPressed != -1)
      {
        swift_once();
      }

      v5 = &static CPUIFocusEffectView.Style.solidBorderPressed;
    }

    else
    {
      if (one-time initialization token for solidBorder != -1)
      {
        swift_once();
      }

      v5 = &static CPUIFocusEffectView.Style.solidBorder;
    }
  }

  else if (a2)
  {
    if (one-time initialization token for materialBorderPressed != -1)
    {
      swift_once();
    }

    v5 = &static CPUIFocusEffectView.Style.materialBorderPressed;
  }

  else
  {
    if (one-time initialization token for materialBorder != -1)
    {
      swift_once();
    }

    v5 = &static CPUIFocusEffectView.Style.materialBorder;
  }

  v6 = *(v5 + 16);
  v8 = *v5;
  v7 = v5[1];
  v9 = &v2[OBJC_IVAR___CPUIFocusEffectView_style];
  swift_beginAccess();
  v10 = *v9;
  v11 = *(v9 + 1);
  v12 = v9[16];
  *v9 = v8;
  *(v9 + 1) = v7;
  v9[16] = v6;
  outlined copy of CPUIFocusEffectView.Style(v8, v7, v6);
  outlined consume of CPUIFocusEffectView.Style(v10, v11, v12);
  return [v2 updateAppearance];
}

Swift::Void __swiftcall CPUIFocusEffectView.updateEffect(with:)(UIImage with)
{
  v2 = [(objc_class *)with.super.isa imageWithRenderingMode:2];
  v3 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

  [v1 setEffectMask_];
}

void CPUIFocusEffectView.updateEffect(withCornerRadius:strokeWidth:)(double a1, double a2)
{
  v3 = specialized CPUIFocusEffectView.RingView.__allocating_init(cornerRadius:strokeWidth:)(a1, a2);
  [v2 setEffectMask_];
}

void CPUIFocusEffectView.updateEffect(withCornerRadius:)(double a1)
{
  v3 = *MEMORY[0x277CDA138];
  v4 = type metadata accessor for CPUIFocusEffectView.SolidRoundedRectangleView();
  v8.receiver = objc_allocWithZone(v4);
  v8.super_class = v4;
  v5 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = [v5 layer];
  [v6 setCornerRadius_];

  v7 = [v5 layer];
  [v7 setCornerCurve_];

  [v1 setEffectMask_];
}

void CPUIFocusEffectView.updateEffect(withCornerRadius:cornerCurve:)(uint64_t a1, double a2)
{
  v5 = type metadata accessor for CPUIFocusEffectView.SolidRoundedRectangleView();
  v9.receiver = objc_allocWithZone(v5);
  v9.super_class = v5;
  v6 = objc_msgSendSuper2(&v9, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v7 = [v6 layer];
  [v7 setCornerRadius_];

  v8 = [v6 layer];
  [v8 setCornerCurve_];

  [v2 setEffectMask_];
}

id CPUIFocusEffectView.updateVariant()()
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [v0 traitCollection];
  v3 = [ObjCClassFromMetadata focusEffectStyleVariantForTraitCollection_];

  v4 = [v0 isPressed];
  if (v3 == 1)
  {
    if (v4)
    {
      if (one-time initialization token for solidBorderPressed != -1)
      {
        swift_once();
      }

      v5 = &static CPUIFocusEffectView.Style.solidBorderPressed;
    }

    else
    {
      if (one-time initialization token for solidBorder != -1)
      {
        swift_once();
      }

      v5 = &static CPUIFocusEffectView.Style.solidBorder;
    }
  }

  else if (v4)
  {
    if (one-time initialization token for materialBorderPressed != -1)
    {
      swift_once();
    }

    v5 = &static CPUIFocusEffectView.Style.materialBorderPressed;
  }

  else
  {
    if (one-time initialization token for materialBorder != -1)
    {
      swift_once();
    }

    v5 = &static CPUIFocusEffectView.Style.materialBorder;
  }

  v6 = *(v5 + 16);
  v8 = *v5;
  v7 = v5[1];
  v9 = &v0[OBJC_IVAR___CPUIFocusEffectView_style];
  swift_beginAccess();
  v10 = *v9;
  v11 = *(v9 + 1);
  v12 = v9[16];
  *v9 = v8;
  *(v9 + 1) = v7;
  v9[16] = v6;
  outlined copy of CPUIFocusEffectView.Style(v8, v7, v6);
  outlined consume of CPUIFocusEffectView.Style(v10, v11, v12);
  return [v0 updateAppearance];
}

void CPUIFocusEffectView.updateAppearance()()
{
  v1 = v0;
  v2 = [v0 effectMask];
  v3 = &v0[OBJC_IVAR___CPUIFocusEffectView_style];
  swift_beginAccess();
  if (*(v3 + 16) == 1)
  {
    v4 = *v3;
  }

  else
  {
    v4 = [objc_opt_self() whiteColor];
  }

  v5 = v4;
  [v2 setTintColor_];

  v6 = [v1 effectMask];
  v7 = [v6 layer];

  if (*(v3 + 16) == 1)
  {
    v8 = v3[1];
  }

  else
  {
    v8 = 0;
  }

  [v7 setCompositingFilter_];

  v9 = *v3;
  v10 = v3[1];
  v11 = *(v3 + 16);
  outlined copy of CPUIFocusEffectView.Style(*v3, v10, v11);
  v12 = [v1 traitCollection];
  v13 = [v12 userInterfaceStyle];

  if ((v11 & 1) == 0)
  {
    if (v13 == 1)
    {
      v22 = v9;
    }

    else
    {
      v22 = v10;
    }

    v23 = [v1 materialView];
    v24 = [objc_opt_self() effectWithStyle_];
    [v23 setEffect_];

    v25 = [v1 materialView];
    [v25 setHidden_];

    v26 = [v1 materialView];
    v27 = [v26 maskView];

    v28 = [v1 effectMask];
    v29 = v28;
    if (v27)
    {
      type metadata accessor for ISImageDescriptor(0, &lazy cache variable for type metadata for UIView);
      v30 = static NSObject.== infix(_:_:)();

      if (v30)
      {
        return;
      }
    }

    else
    {
    }

    v31 = [v1 effectMask];
    [v31 removeFromSuperview];

    v32 = [v1 materialView];
    v21 = [v1 effectMask];
    [v32 setMaskView_];

    goto LABEL_19;
  }

  outlined consume of CPUIFocusEffectView.Style(v9, v10, 1);
  v14 = [v1 materialView];
  [v14 setHidden_];

  v15 = [v1 effectMask];
  v16 = [v15 superview];

  if (!v16 || (type metadata accessor for ISImageDescriptor(0, &lazy cache variable for type metadata for UIView), v17 = v1, v18 = static NSObject.== infix(_:_:)(), v16, v17, (v18 & 1) == 0))
  {
    v19 = [v1 effectMask];
    [v19 removeFromSuperview];

    v20 = [v1 effectMask];
    [v1 addSubview_];

    v21 = [v1 materialView];
    [v21 setMaskView_];
LABEL_19:
  }
}

void __swiftcall CPUIFocusEffectView.init(frame:)(CPUIFocusEffectView *__return_ptr retstr, __C::CGRect frame)
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v6 initWithFrame_];
}

id CPUIFocusEffectView.SolidRoundedRectangleView.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

id specialized CPUIFocusEffectView.RingView.__allocating_init(cornerRadius:strokeWidth:)(double a1, double a2)
{
  v4 = type metadata accessor for CPUIFocusEffectView.RingView();
  v10.receiver = objc_allocWithZone(v4);
  v10.super_class = v4;
  v5 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = [v5 layer];
  [v6 setCornerRadius_];

  v7 = [v5 layer];
  [v7 setCornerCurve_];

  v8 = [v5 layer];
  [v8 setBorderWidth_];

  return v5;
}

uint64_t getEnumTagSinglePayload for CPUIFocusEffectView.Style(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for CPUIFocusEffectView.Style(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t EnvironmentValues.isLimitedUI.getter()
{
  lazy protocol witness table accessor for type CPUIIsLimitedUIKey and conformance CPUIIsLimitedUIKey();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t key path getter for EnvironmentValues.isLimitedUI : EnvironmentValues@<X0>(_BYTE *a1@<X8>)
{
  lazy protocol witness table accessor for type CPUIIsLimitedUIKey and conformance CPUIIsLimitedUIKey();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t (*EnvironmentValues.isLimitedUI.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = lazy protocol witness table accessor for type CPUIIsLimitedUIKey and conformance CPUIIsLimitedUIKey();
  EnvironmentValues.subscript.getter();
  *(a1 + 16) = *(a1 + 17);
  return EnvironmentValues.isLimitedUI.modify;
}

uint64_t View.limitedUI(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t static CPUIIslimitedUserInterfacesKey.defaultValue.getter()
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance CPUIIslimitedUserInterfacesKey@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static CPUIIslimitedUserInterfacesKey.defaultValue;
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance CPUIIslimitedUserInterfacesKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type Set<CPUILimitedUserInterfaces> and conformance Set<A>, &_sShy9CarPlayUI25CPUILimitedUserInterfacesOGMd);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.limitedUserInterfaces.getter()
{
  lazy protocol witness table accessor for type CPUIIslimitedUserInterfacesKey and conformance CPUIIslimitedUserInterfacesKey();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t key path getter for EnvironmentValues.limitedUserInterfaces : EnvironmentValues@<X0>(void *a1@<X8>)
{
  lazy protocol witness table accessor for type CPUIIslimitedUserInterfacesKey and conformance CPUIIslimitedUserInterfacesKey();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t key path setter for EnvironmentValues.limitedUserInterfaces : EnvironmentValues()
{
  lazy protocol witness table accessor for type CPUIIslimitedUserInterfacesKey and conformance CPUIIslimitedUserInterfacesKey();

  return EnvironmentValues.subscript.setter();
}

uint64_t (*EnvironmentValues.limitedUserInterfaces.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = lazy protocol witness table accessor for type CPUIIslimitedUserInterfacesKey and conformance CPUIIslimitedUserInterfacesKey();
  EnvironmentValues.subscript.getter();
  return EnvironmentValues.limitedUserInterfaces.modify;
}

uint64_t EnvironmentValues.limitedUserInterfaces.modify(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return EnvironmentValues.subscript.setter();
  }

  EnvironmentValues.subscript.setter();
}

uint64_t View.limitedUserInterfaces(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVySbGGAaBHPxAaBHD1__AgA0cI0HPyHCHCTm(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(a4, a2);
  return swift_getWitnessTable();
}

uint64_t UICellConfigurationState.primaryColor(enabled:)(char a1, SEL *a2, uint64_t (*a3)(void))
{
  v5 = UICellConfigurationState.isFocused.getter();
  if ((a1 & 1) == 0)
  {
    if (v5 & 1) != 0 || (UICellConfigurationState.isSelected.getter() & 1) != 0 || (UICellConfigurationState.isHighlighted.getter())
    {
      v6 = [objc_opt_self() disabledHighlightedColor];
    }

    else
    {
      v6 = [objc_opt_self() disabledColor];
    }

    goto LABEL_10;
  }

  if (v5 & 1) != 0 || (UICellConfigurationState.isSelected.getter() & 1) != 0 || (UICellConfigurationState.isHighlighted.getter())
  {
    v6 = [objc_opt_self() *a2];
LABEL_10:
    v7 = v6;

    return Color.init(uiColor:)();
  }

  return a3();
}

uint64_t UICellConfigurationState.secondaryBlendMode.getter@<X0>(uint64_t a1@<X8>)
{
  if (UICellConfigurationState.isFocused.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter() & 1) != 0 || (UICellConfigurationState.isHighlighted.getter())
  {
    v2 = UICellConfigurationState.traitCollection.getter();
    v3 = [v2 userInterfaceStyle];

    v4 = type metadata accessor for BlendMode();
    v5 = *(*(v4 - 8) + 104);
    if (v3 == 2)
    {
LABEL_5:
      v6 = MEMORY[0x277CE13B0];
      goto LABEL_8;
    }
  }

  else
  {
    v7 = UICellConfigurationState.traitCollection.getter();
    v8 = [v7 userInterfaceStyle];

    v4 = type metadata accessor for BlendMode();
    v5 = *(*(v4 - 8) + 104);
    if (v8 != 2)
    {
      goto LABEL_5;
    }
  }

  v6 = MEMORY[0x277CE13B8];
LABEL_8:
  v9 = *v6;

  return v5(a1, v9, v4);
}

__n128 static GridView.Layout<>.hero(maximumNumberOfLinesOverride:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  result = *MEMORY[0x277D768C8];
  v4 = *(MEMORY[0x277D768C8] + 16);
  *a3 = *MEMORY[0x277D768C8];
  *(a3 + 16) = v4;
  *(a3 + 32) = a1;
  *(a3 + 40) = a2 & 1;
  return result;
}

Swift::UInt __swiftcall GridView.Hero.Layout.maximumNumberOfLines(for:)(CGSize a1)
{
  if (*(v1 + 40))
  {
    return 1;
  }

  else
  {
    return *(v1 + 32);
  }
}

CGSize __swiftcall GridView.Hero.Layout.sizeForViews(for:itemsCount:traitCollection:)(CGSize a1, Swift::UInt itemsCount, UITraitCollection traitCollection)
{
  width = a1.width;
  v4 = 0.0;
  v5 = 0.0;
  if (width > 0.0)
  {
    v6 = specialized static CPUIGridViewBaseWidthControlledColumnCountGridSize.numberOfColumns(for:)(width);
    if (!v6)
    {
      __break(1u);
      goto LABEL_6;
    }

    v4 = (width + (v6 - 1) * -8.0) / v6;
    v5 = v4 / 0.75;
  }

  v7 = v5;
LABEL_6:
  result.height = v7;
  result.width = v4;
  return result;
}

uint64_t protocol witness for GridView.Layout.maximumNumberOfLines(for:) in conformance GridView.Hero.Layout()
{
  if (*(v0 + 40))
  {
    return 1;
  }

  else
  {
    return *(v0 + 32);
  }
}

void protocol witness for GridView.Layout.sizeForViews(for:itemsCount:traitCollection:) in conformance GridView.Hero.Layout(double a1)
{
  if (a1 > 0.0 && !specialized static CPUIGridViewBaseWidthControlledColumnCountGridSize.numberOfColumns(for:)(a1))
  {
    __break(1u);
  }
}

unint64_t specialized GridView.Hero.Layout.sizeThatFits(_:itemsCount:traitCollection:)(unint64_t a1, double a2)
{
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  if (a2 > 0.0)
  {
    result = specialized static CPUIGridViewBaseWidthControlledColumnCountGridSize.numberOfColumns(for:)(a2);
    if (!result)
    {
      goto LABEL_24;
    }
  }

  result = specialized static CPUIGridViewBaseWidthControlledColumnCountGridSize.numberOfColumns(for:)(a2);
  if (v6)
  {
    v5 = 1;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  else if (!result)
  {
LABEL_8:
    v8 = 1.0;
LABEL_12:
    if (v5 >= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v5)
    {
      v5 = v9;
    }

    else
    {
      v5 = v8;
    }

LABEL_18:
    if (v5)
    {
      lazy protocol witness table accessor for type Double and conformance Double();
      lazy protocol witness table accessor for type UInt and conformance UInt();
      lazy protocol witness table accessor for type UInt64 and conformance UInt64();
      return static BinaryFloatingPoint<>._convert<A>(from:)();
    }

    goto LABEL_23;
  }

  v8 = ceil(a1 / result);
  if (v8 < 1.0)
  {
    goto LABEL_8;
  }

  if (v8 == INFINITY)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v8 <= -1.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v8 < 1.84467441e19)
  {
    goto LABEL_12;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for GridView.Hero.Layout(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GridView.Hero.Layout(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = (a2 - 1);
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

  *(result + 41) = v3;
  return result;
}

uint64_t UITraitCollection.cpuiHorizontalSizeClass.getter()
{
  lazy protocol witness table accessor for type CPUIHorizontalSizeClassTrait and conformance CPUIHorizontalSizeClassTrait();

  return UITraitCollection.subscript.getter();
}

uint64_t UIMutableTraits.cpuiHorizontalSizeClass.getter()
{
  lazy protocol witness table accessor for type CPUIHorizontalSizeClassTrait and conformance CPUIHorizontalSizeClassTrait();

  return dispatch thunk of UIMutableTraits.subscript.getter();
}

uint64_t (*UIMutableTraits.cpuiHorizontalSizeClass.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  a1[1] = a3;
  a1[2] = v3;
  *a1 = a2;
  lazy protocol witness table accessor for type CPUIHorizontalSizeClassTrait and conformance CPUIHorizontalSizeClassTrait();
  dispatch thunk of UIMutableTraits.subscript.getter();
  return UIMutableTraits.cpuiHorizontalSizeClass.modify;
}

uint64_t UIMutableTraits.cpuiHorizontalSizeClass.modify(uint64_t a1)
{
  *(a1 + 24) = *(a1 + 25);
  lazy protocol witness table accessor for type CPUIHorizontalSizeClassTrait and conformance CPUIHorizontalSizeClassTrait();
  return dispatch thunk of UIMutableTraits.subscript.setter();
}

uint64_t type metadata accessor for FocusFillModifier()
{
  result = type metadata singleton initialization cache for FocusFillModifier;
  if (!type metadata singleton initialization cache for FocusFillModifier)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for FocusFillModifier()
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

uint64_t FocusFillModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a1;
  v65 = a2;
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for ColorScheme();
  v7 = *(v61 - 8);
  v8 = MEMORY[0x28223BE20](v61);
  v55 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v51 = &v50 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v50 - v13;
  MEMORY[0x28223BE20](v12);
  v58 = &v50 - v15;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07CarPlayB009FocusFillF033_1F62437CE6A4DB677E417C3C8E808E05LLVGAA022_EnvironmentKeyWritingF0VyAA11ColorSchemeOGGMd);
  MEMORY[0x28223BE20](v57);
  v60 = &v50 - v16;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07CarPlayB009FocusFillF033_1F62437CE6A4DB677E417C3C8E808E05LLVGAA022_EnvironmentKeyWritingF0VyAA11ColorSchemeOGGAA011_BackgroundF0VyACyAA06_ShapeE0VyAA03AnyZ0VAA0W0VGAA14_PaddingLayoutVGGGMd);
  MEMORY[0x28223BE20](v59);
  v18 = &v50 - v17;
  KeyPath = swift_getKeyPath();
  v19 = *(v2 + 48);
  v62 = *(v2 + 56);
  v53 = v4;
  v54 = v3;
  v52 = v6;
  v64 = v18;
  if (v62 != 1)
  {

    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Bool>.Content(v19, 0);
    (*(v4 + 8))(v6, v3);
    v20 = v19;
    if (LOBYTE(v78[0]) != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    type metadata accessor for FocusFillModifier();
    v21 = v2;
    specialized Environment.wrappedValue.getter(v14);
    v23 = *(v7 + 32);
    v26 = v55;
    v27 = v14;
    v24 = v61;
    v23(v55, v27, v61);
    v28 = (*(v7 + 88))(v26, v24);
    v29 = *MEMORY[0x277CDF3C0];
    v22 = v58;
    if (v28 == *MEMORY[0x277CDF3D0])
    {
      v30 = v51;
      (*(v7 + 104))(v51, v29, v24);
    }

    else
    {
      v31 = *(v7 + 104);
      v30 = v51;
      if (v28 == v29)
      {
        (v31)(v51, *MEMORY[0x277CDF3D0], v24);
      }

      else
      {
        v31(v51);
        (*(v7 + 8))(v55, v24);
      }
    }

    v23(v22, v30, v24);
    goto LABEL_11;
  }

  v20 = v19;
  if (v19)
  {
    goto LABEL_5;
  }

LABEL_3:
  type metadata accessor for FocusFillModifier();
  v21 = v2;
  v22 = v58;
  specialized Environment.wrappedValue.getter(v58);
  v23 = *(v7 + 32);
  v24 = v61;
LABEL_11:
  v32 = v60;
  v33 = &v60[*(v57 + 36)];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGMd);
  v23(v33 + *(v34 + 28), v22, v24);
  *v33 = KeyPath;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07CarPlayB009FocusFillD033_1F62437CE6A4DB677E417C3C8E808E05LLVGMd);
  (*(*(v35 - 8) + 16))(v32, v63, v35);
  v36 = static Alignment.center.getter();
  v38 = v37;
  closure #1 in FocusFillModifier.body(content:)(v21, &v67);
  v74 = v69;
  v75 = v70;
  v72 = v67;
  v73 = v68;
  *&v76 = v71;
  *(&v76 + 1) = v36;
  v77 = v38;
  v39 = v64;
  outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v32, v64, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07CarPlayB009FocusFillF033_1F62437CE6A4DB677E417C3C8E808E05LLVGAA022_EnvironmentKeyWritingF0VyAA11ColorSchemeOGGMd);
  v40 = v39 + *(v59 + 36);
  v41 = v75;
  *(v40 + 32) = v74;
  *(v40 + 48) = v41;
  *(v40 + 64) = v76;
  *(v40 + 80) = v77;
  v42 = v73;
  *v40 = v72;
  *(v40 + 16) = v42;
  v78[2] = v69;
  v78[3] = v70;
  v78[0] = v67;
  v78[1] = v68;
  v79 = v71;
  v80 = v36;
  v81 = v38;
  outlined init with copy of _BackgroundModifier<ModifiedContent<_ShapeView<AnyShape, Color>, _PaddingLayout>>(&v72, v66);
  v43 = outlined destroy of _BackgroundModifier<ModifiedContent<_ShapeView<AnyShape, Color>, _PaddingLayout>>(v78);
  v44 = MEMORY[0x245D2BB10](v43, 0.2, 0.85, 0.0);
  if (!v62)
  {

    static os_log_type_t.fault.getter();
    v45 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v46 = v52;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Bool>.Content(v20, 0);
    (*(v53 + 8))(v46, v54);
    LOBYTE(v20) = v66[0];
  }

  v47 = v65;
  outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v39, v65, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07CarPlayB009FocusFillF033_1F62437CE6A4DB677E417C3C8E808E05LLVGAA022_EnvironmentKeyWritingF0VyAA11ColorSchemeOGGAA011_BackgroundF0VyACyAA06_ShapeE0VyAA03AnyZ0VAA0W0VGAA14_PaddingLayoutVGGGMd);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA014_ViewModifier_D0Vy07CarPlayB009FocusFillF033_1F62437CE6A4DB677E417C3C8E808E05LLVGAA022_EnvironmentKeyWritingF0VyAA11ColorSchemeOGGAA011_BackgroundF0VyACyAA06_ShapeE0VyAA03AnyZ0VAA0W0VGAA14_PaddingLayoutVGGGAA010_AnimationF0VySbGGMd);
  v49 = v47 + *(result + 36);
  *v49 = v44;
  *(v49 + 8) = v20 & 1;
  return result;
}

__n128 closure #1 in FocusFillModifier.body(content:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);

  if (v10 != 1)
  {
    outlined copy of Environment<Bool>.Content(v9, 0);
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Bool>.Content(v9, 0);
    (*(v5 + 8))(v7, v4);
    if (v16[7] != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = *a1;

    goto LABEL_6;
  }

  if (v9)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = static Color.clear.getter();
LABEL_6:
  v13 = static Edge.Set.all.getter();
  v16[8] = 0;
  *a2 = v8;
  *(a2 + 8) = v11;
  *(a2 + 16) = 256;
  *(a2 + 24) = v13;
  result = *(a1 + 8);
  v15 = *(a1 + 24);
  *(a2 + 32) = result;
  *(a2 + 48) = v15;
  *(a2 + 64) = 0;
  return result;
}