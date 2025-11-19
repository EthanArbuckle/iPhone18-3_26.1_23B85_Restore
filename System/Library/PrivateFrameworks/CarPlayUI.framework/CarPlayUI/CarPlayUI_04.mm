uint64_t getEnumTagSinglePayload for GridView.ImageGrid.Layout(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 43))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 41);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for GridView.ImageGrid.Layout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 43) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 43) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 1;
    }
  }

  return result;
}

id CPUIGridImageRenderer.image.getter()
{
  v1 = v0;
  v2 = [v0 baseImage];
  v3 = [v1 unread];
  [v1 scale];
  v9 = v2;
  LOBYTE(v10) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13ImageRendererCy07CarPlayB004GridC033_5C96035ECC656C39892E35CBFD071E82LLVGMd);
  swift_allocObject();
  v4 = v2;
  MEMORY[0x245D2ADC0](&v9);
  v5 = ImageRenderer.scale.setter();
  v6 = MEMORY[0x245D2ADA0](v5);

  if (v6)
  {

    return v6;
  }

  else
  {
    v8 = [v1 baseImage];

    return v8;
  }
}

id CPUIGridImageRenderer.init(image:unread:scale:)(void *a1, char a2, double a3)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage:a1 unread:a2 & 1 scale:a3];

  return v4;
}

id CPUIGridImageRenderer.init(image:unread:scale:)(uint64_t a1, char a2, double a3)
{
  *(v3 + OBJC_IVAR___CPUIGridImageRenderer_unread) = a2;
  *(v3 + OBJC_IVAR___CPUIGridImageRenderer_baseImage) = a1;
  *(v3 + OBJC_IVAR___CPUIGridImageRenderer_scale) = a3;
  v5.super_class = CPUIGridImageRenderer;
  return objc_msgSendSuper2(&v5, sel_init);
}

CPUIGridImageRenderer __swiftcall CPUIGridImageRenderer.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.scale = v4;
  result.baseImage = v3;
  result.super.isa = v1;
  result.unread = v2;
  return result;
}

unint64_t type metadata accessor for CPUIGridImageRenderer()
{
  result = lazy cache variable for type metadata for CPUIGridImageRenderer;
  if (!lazy cache variable for type metadata for CPUIGridImageRenderer)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CPUIGridImageRenderer);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GridImage(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t storeEnumTagSinglePayload for GridImage(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double protocol witness for Shape.path(in:) in conformance GridImage.CutoutCircleShape@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  specialized GridImage.CutoutCircleShape.path(in:)(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance GridImage.CutoutCircleShape(uint64_t *a1))(void *a1)
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

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance GridImage.CutoutCircleShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type GridImage.CutoutCircleShape and conformance GridImage.CutoutCircleShape();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance GridImage.CutoutCircleShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type GridImage.CutoutCircleShape and conformance GridImage.CutoutCircleShape();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t protocol witness for View.body.getter in conformance GridImage.CutoutCircleShape(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GridImage.CutoutCircleShape and conformance GridImage.CutoutCircleShape();

  return MEMORY[0x282133738](a1, v2);
}

__n128 GridImage.body.getter@<Q0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Image.ResizingMode();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() sharedApplication];
  v32 = [v10 userInterfaceLayoutDirection];

  v11 = a1;
  Image.init(uiImage:)();
  (*(v7 + 104))(v9, *MEMORY[0x277CE0FE0], v6);
  v12 = Image.resizable(capInsets:resizingMode:)();

  (*(v7 + 8))(v9, v6);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(&v99[3] + 6) = v91[5];
  *(&v99[4] + 6) = v91[6];
  *(&v99[5] + 6) = v91[7];
  *(&v99[6] + 6) = v92;
  *(v99 + 6) = v91[2];
  *(&v99[1] + 6) = v91[3];
  *(&v99[2] + 6) = v91[4];
  *&v107[66] = v99[4];
  *&v107[82] = v99[5];
  *&v107[98] = v99[6];
  *&v107[2] = v99[0];
  *&v107[18] = v99[1];
  *&v107[34] = v99[2];
  LOBYTE(v78) = 1;
  v106 = v12;
  *v107 = 1;
  *&v107[112] = *(&v92 + 1);
  *&v107[50] = v99[3];
  if (a2)
  {
    v61 = *&v107[80];
    v62 = *&v107[96];
    v63 = *&v107[112];
    v57 = *&v107[16];
    v58 = *&v107[32];
    v59 = *&v107[48];
    v60 = *&v107[64];
    v55 = v106;
    v56 = *v107;
    outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(&v106, v99, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA010_FlexFrameH0VGMd);
    v31 = static Alignment.center.getter();
    v14 = v13;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v15 = v93;
    v16 = v94;
    v17 = v95;
    v18 = v96;
    v19 = v97;
    v20 = v98;
    v21 = [objc_opt_self() systemBlueColor];
    v22 = Color.init(uiColor:)();
    v53 = v16;
    v52 = v18;
    v23 = 39.0;
    *&v33 = v15;
    if (v32 == 1)
    {
      v23 = 5.0;
    }

    BYTE8(v33) = v16;
    *&v34 = v17;
    BYTE8(v34) = v18;
    *&v35 = v19;
    *(&v35 + 1) = v20;
    *&v36 = v22;
    *(&v36 + 1) = v23;
    *&v37 = 0x4014000000000000;
    *(&v37 + 1) = v31;
    v38 = v14;
    v39 = v15;
    *&v54[22] = v34;
    *&v54[6] = v33;
    *&v54[86] = v14;
    *&v54[70] = v37;
    *&v54[54] = v36;
    *&v54[38] = v35;
    v40 = v16;
    v41 = v17;
    v42 = v18;
    v43 = v19;
    v44 = v20;
    v45 = v22;
    v46 = v23;
    v47 = 0x4014000000000000;
    v48 = v31;
    v49 = v14;
    outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(&v33, v99, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAEyAEyAA6CircleVAA12_FrameLayoutVGAA016_ForegroundStyleD0VyAA5ColorVGGAA09_PositionI0VGGMd);
    outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(&v39, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAEyAEyAA6CircleVAA12_FrameLayoutVGAA016_ForegroundStyleD0VyAA5ColorVGGAA09_PositionI0VGGMd);
    v50[6] = v61;
    v50[7] = v62;
    *v51 = v63;
    v50[2] = v57;
    v50[3] = v58;
    v50[4] = v59;
    v50[5] = v60;
    v50[0] = v55;
    v50[1] = v56;
    *&v51[8] = 256;
    *&v51[88] = *&v54[78];
    *&v51[74] = *&v54[64];
    *&v51[58] = *&v54[48];
    *&v51[42] = *&v54[32];
    *&v51[26] = *&v54[16];
    *&v51[10] = *v54;
    v78 = v55;
    v79 = v56;
    v82 = v59;
    v83 = v60;
    v80 = v57;
    v81 = v58;
    v87 = *&v51[16];
    v86 = *v51;
    v84 = v61;
    v85 = v62;
    *&v91[1] = *&v54[86];
    v91[0] = *&v51[80];
    v90 = *&v51[64];
    v88 = *&v51[32];
    v89 = *&v51[48];
    _s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA010_FlexFrameJ0VGAA11_ClipEffectVy07CarPlayB004GridG033_5C96035ECC656C39892E35CBFD071E82LLV17CutoutCircleShapeVGGAA16_OverlayModifierVyAGyAGyAGyAA0Y0VAA01_lJ0VGAA24_ForegroundStyleModifierVyAA5ColorVGGAA09_PositionJ0VGGGAGyAoQyA1_GG_GWOi_(&v78);
    v104 = v90;
    v105[0] = v91[0];
    *(v105 + 9) = *(v91 + 9);
    v100 = v86;
    v101 = v87;
    v103 = v89;
    v102 = v88;
    v99[4] = v82;
    v99[5] = v83;
    v99[7] = v85;
    v99[6] = v84;
    v99[0] = v78;
    v99[1] = v79;
    v99[3] = v81;
    v99[2] = v80;
    outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v50, &v64, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA010_FlexFrameH0VGAA11_ClipEffectVy07CarPlayB004GridE033_5C96035ECC656C39892E35CBFD071E82LLV17CutoutCircleShapeVGGAA16_OverlayModifierVyACyACyACyAA0W0VAA01_jH0VGAA016_ForegroundStyleZ0VyAA5ColorVGGAA09_PositionH0VGGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA010_FlexFrameH0VGAA11_ClipEffectVy07CarPlayB004GridE033_5C96035ECC656C39892E35CBFD071E82LLV17CutoutCircleShapeVGGAA16_OverlayModifierVyACyACyACyAA0W0VAA01_jH0VGAA016_ForegroundStyleZ0VyAA5ColorVGGAA09_PositionH0VGGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA010_FlexFrameH0VGAA11_ClipEffectVyAA6CircleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FlexFrameLayout>, _ClipEffect<GridImage.CutoutCircleShape>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _PositionLayout>>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FlexFrameLayout>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(&v106, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA010_FlexFrameH0VGMd);
    outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v50, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA010_FlexFrameH0VGAA11_ClipEffectVy07CarPlayB004GridE033_5C96035ECC656C39892E35CBFD071E82LLV17CutoutCircleShapeVGGAA16_OverlayModifierVyACyACyACyAA0W0VAA01_jH0VGAA016_ForegroundStyleZ0VyAA5ColorVGGAA09_PositionH0VGGGMd);
    v104 = v76;
    v105[0] = v77[0];
    *(v105 + 9) = *(v77 + 9);
    v100 = v72;
    v101 = v73;
    v103 = v75;
    v102 = v74;
    v99[4] = v68;
    v99[5] = v69;
    v99[7] = v71;
    v99[6] = v70;
    v99[0] = v64;
    v99[1] = v65;
    v99[3] = v67;
    v99[2] = v66;
  }

  else
  {
    v84 = *&v107[80];
    v85 = *&v107[96];
    *&v86 = *&v107[112];
    v80 = *&v107[16];
    v81 = *&v107[32];
    v82 = *&v107[48];
    v83 = *&v107[64];
    v78 = v106;
    v79 = *v107;
    WORD4(v86) = 256;
    _s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA010_FlexFrameJ0VGAA11_ClipEffectVy07CarPlayB004GridG033_5C96035ECC656C39892E35CBFD071E82LLV17CutoutCircleShapeVGGAA16_OverlayModifierVyAGyAGyAGyAA0Y0VAA01_lJ0VGAA24_ForegroundStyleModifierVyAA5ColorVGGAA09_PositionJ0VGGGAGyAoQyA1_GG_GWOi0_(&v78);
    v76 = v90;
    v77[0] = v91[0];
    *(v77 + 9) = *(v91 + 9);
    v72 = v86;
    v73 = v87;
    v74 = v88;
    v75 = v89;
    v68 = v82;
    v69 = v83;
    v70 = v84;
    v71 = v85;
    v64 = v78;
    v65 = v79;
    v66 = v80;
    v67 = v81;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA010_FlexFrameH0VGAA11_ClipEffectVy07CarPlayB004GridE033_5C96035ECC656C39892E35CBFD071E82LLV17CutoutCircleShapeVGGAA16_OverlayModifierVyACyACyACyAA0W0VAA01_jH0VGAA016_ForegroundStyleZ0VyAA5ColorVGGAA09_PositionH0VGGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA010_FlexFrameH0VGAA11_ClipEffectVyAA6CircleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FlexFrameLayout>, _ClipEffect<GridImage.CutoutCircleShape>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _PositionLayout>>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FlexFrameLayout>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
  }

  v24 = v105[0];
  *(a3 + 192) = v104;
  *(a3 + 208) = v24;
  *(a3 + 217) = *(v105 + 9);
  v25 = v101;
  *(a3 + 128) = v100;
  *(a3 + 144) = v25;
  v26 = v103;
  *(a3 + 160) = v102;
  *(a3 + 176) = v26;
  v27 = v99[5];
  *(a3 + 64) = v99[4];
  *(a3 + 80) = v27;
  v28 = v99[7];
  *(a3 + 96) = v99[6];
  *(a3 + 112) = v28;
  v29 = v99[1];
  *a3 = v99[0];
  *(a3 + 16) = v29;
  result = v99[3];
  *(a3 + 32) = v99[2];
  *(a3 + 48) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FlexFrameLayout>, _ClipEffect<GridImage.CutoutCircleShape>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _PositionLayout>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FlexFrameLayout>, _ClipEffect<GridImage.CutoutCircleShape>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _PositionLayout>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FlexFrameLayout>, _ClipEffect<GridImage.CutoutCircleShape>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _PositionLayout>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA010_FlexFrameH0VGAA11_ClipEffectVy07CarPlayB004GridE033_5C96035ECC656C39892E35CBFD071E82LLV17CutoutCircleShapeVGGAA16_OverlayModifierVyACyACyACyAA0W0VAA01_jH0VGAA016_ForegroundStyleZ0VyAA5ColorVGGAA09_PositionH0VGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FlexFrameLayout>, _ClipEffect<GridImage.CutoutCircleShape>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _PositionLayout>> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAEyAEyAA6CircleVAA12_FrameLayoutVGAA016_ForegroundStyleD0VyAA5ColorVGGAA09_PositionI0VGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FlexFrameLayout>, _ClipEffect<GridImage.CutoutCircleShape>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _PositionLayout>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FlexFrameLayout>, _ClipEffect<GridImage.CutoutCircleShape>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FlexFrameLayout>, _ClipEffect<GridImage.CutoutCircleShape>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FlexFrameLayout>, _ClipEffect<GridImage.CutoutCircleShape>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA010_FlexFrameH0VGAA11_ClipEffectVy07CarPlayB004GridE033_5C96035ECC656C39892E35CBFD071E82LLV17CutoutCircleShapeVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ClipEffect<GridImage.CutoutCircleShape> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVy07CarPlayB09GridImage33_5C96035ECC656C39892E35CBFD071E82LLV17CutoutCircleShapeVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FlexFrameLayout>, _ClipEffect<GridImage.CutoutCircleShape>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FlexFrameLayout>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FlexFrameLayout>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FlexFrameLayout>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA010_FlexFrameH0VGAA11_ClipEffectVyAA6CircleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ClipEffect<Circle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA6CircleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FlexFrameLayout>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FlexFrameLayout>, _ClipEffect<GridImage.CutoutCircleShape>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _PositionLayout>>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FlexFrameLayout>, _ClipEffect<Circle>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FlexFrameLayout>, _ClipEffect<GridImage.CutoutCircleShape>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _PositionLayout>>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FlexFrameLayout>, _ClipEffect<Circle>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FlexFrameLayout>, _ClipEffect<GridImage.CutoutCircleShape>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _PositionLayout>>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FlexFrameLayout>, _ClipEffect<Circle>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA010_FlexFrameI0VGAA11_ClipEffectVy07CarPlayB004GridF033_5C96035ECC656C39892E35CBFD071E82LLV17CutoutCircleShapeVGGAA16_OverlayModifierVyAEyAEyAEyAA0X0VAA01_kI0VGAA24_ForegroundStyleModifierVyAA5ColorVGGAA09_PositionI0VGGGAEyAmOyA_GGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FlexFrameLayout>, _ClipEffect<GridImage.CutoutCircleShape>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _PositionLayout>>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FlexFrameLayout>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FlexFrameLayout>, _ClipEffect<GridImage.CutoutCircleShape>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _PositionLayout>>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FlexFrameLayout>, _ClipEffect<Circle>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GridImage.CutoutCircleShape and conformance GridImage.CutoutCircleShape()
{
  result = lazy protocol witness table cache variable for type GridImage.CutoutCircleShape and conformance GridImage.CutoutCircleShape;
  if (!lazy protocol witness table cache variable for type GridImage.CutoutCircleShape and conformance GridImage.CutoutCircleShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GridImage.CutoutCircleShape and conformance GridImage.CutoutCircleShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GridImage.CutoutCircleShape and conformance GridImage.CutoutCircleShape;
  if (!lazy protocol witness table cache variable for type GridImage.CutoutCircleShape and conformance GridImage.CutoutCircleShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GridImage.CutoutCircleShape and conformance GridImage.CutoutCircleShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GridImage.CutoutCircleShape and conformance GridImage.CutoutCircleShape;
  if (!lazy protocol witness table cache variable for type GridImage.CutoutCircleShape and conformance GridImage.CutoutCircleShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GridImage.CutoutCircleShape and conformance GridImage.CutoutCircleShape);
  }

  return result;
}

double specialized GridImage.CutoutCircleShape.path(in:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v10 = [objc_opt_self() sharedApplication];
  v11 = [v10 userInterfaceLayoutDirection];

  Path.init()();
  transform.a = 1.0;
  transform.b = 0.0;
  transform.c = 0.0;
  transform.d = 1.0;
  transform.tx = 0.0;
  transform.ty = 0.0;
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  Path.addEllipse(in:transform:)(v24, &transform);
  Path.init()();
  if (v11 != 1)
  {
    v25.origin.x = a2;
    v25.origin.y = a3;
    v25.size.width = a4;
    v25.size.height = a5;
    CGRectGetMaxX(v25);
  }

  Path.addArc(center:radius:startAngle:endAngle:clockwise:transform:)();
  Path.closeSubpath()();
  v21[0] = v16;
  v21[1] = v17;
  v22 = v18;
  v19[0] = v13;
  v19[1] = v14;
  v20 = v15;
  Path.subtracting(_:eoFill:)();
  outlined destroy of Path(v21);
  Path.closeSubpath()();
  outlined destroy of Path(v19);
  result = *&v16;
  *a1 = v16;
  *(a1 + 16) = v17;
  *(a1 + 32) = v18;
  return result;
}

uint64_t key path setter for EnvironmentValues.imageScale : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for Image.Scale();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.imageScale.setter();
}

uint64_t GridView.ImageGrid.Cell.init(viewModel:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(type metadata accessor for GridView.ImageGrid.Cell(0) + 20);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA5ImageV5ScaleO_GMd);
  result = swift_storeEnumTagMultiPayload();
  *a2 = a1;
  return result;
}

__n128 GridView.ImageGrid.Cell.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v45 = type metadata accessor for GridView.ImageGrid.Cell.ButtonStyle(0);
  MEMORY[0x28223BE20](v45);
  v43 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for GridView.ImageGrid.Cell(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5LabelVyAA15ModifiedContentVyAA6HStackVyAA9TupleViewVyAGyAA5GroupVyAA012_ConditionalF0VyAGyAA0I0PAAE10fontWeightyQrAA4FontV0M0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAY5ScaleOGG07CarPlayB004GridI0C4BaseO09Accessoryi7HostingI0VGGAA016_ForegroundStyleS0VyAA22HierarchicalShapeStyleVGGSg_AGyAA4TextVA0_ySiSgGGtGGA0_yATSgGGA9_7ArtworkVGGMd);
  v37 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyACyAA6HStackVyAA9TupleViewVyACyAA5GroupVyAA012_ConditionalD0VyACyAA0I0PAAE10fontWeightyQrAA4FontV0M0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAY5ScaleOGG07CarPlayB004GridI0C4BaseO09Accessoryi7HostingI0VGGAA016_ForegroundStyleS0VyAA22HierarchicalShapeStyleVGGSg_ACyAA4TextVA0_ySiSgGGtGGA0_yATSgGGA9_7ArtworkVGGAA14_OpacityEffectVGMd);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5LabelVyACyAA6HStackVyAA9TupleViewVyACyAA5GroupVyAA012_ConditionalD0VyACyAA0I0PAAE10fontWeightyQrAA4FontV0M0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAY5ScaleOGG07CarPlayB004GridI0C4BaseO09Accessoryi7HostingI0VGGAA016_ForegroundStyleS0VyAA22HierarchicalShapeStyleVGGSg_ACyAA4TextVA0_ySiSgGGtGGA0_yATSgGGA9_7ArtworkVGGAA14_OpacityEffectVGAA01_pq9TransformS0VySbGGMd);
  MEMORY[0x28223BE20](v39);
  v13 = &v37 - v12;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA15ModifiedContentVyAGyAA0F0VyAA5LabelVyAGyAA6HStackVyAA05TupleC0VyAGyAA5GroupVyAA012_ConditionalH0VyAGyAcAE10fontWeightyQrAA4FontV0O0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyA_5ScaleOGG07CarPlayB004GridC0C4BaseO09Accessoryc7HostingC0VGGAA011_ForegroundeU0VyAA017HierarchicalShapeE0VGGSg_AGyAA4TextVA2_ySiSgGGtGGA2_yAVSgGGA11_7ArtworkVGGAA14_OpacityEffectVGAA01_rs9TransformU0VySbGG_A9_0qY0O4CellVAEVQo_Md);
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v40 = &v37 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyAEyAEyAA0I0VyAA5LabelVyAEyAA6HStackVyAA05TupleF0VyAEyAA5GroupVyACyAEyAgAE10fontWeightyQrAA4FontV0O0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyA_5ScaleOGG07CarPlayB004GridF0C4BaseO09Accessoryf7HostingF0VGGAA011_ForegroundhU0VyAA017HierarchicalShapeH0VGGSg_AEyAA4TextVA2_ySiSgGGtGGA2_yAVSgGGA11_7ArtworkVGGAA14_OpacityEffectVGAA01_rs9TransformU0VySbGG_A9_0qY0O4CellVAIVQo_AA08_OverlayU0VyAgAE12onTapGesture5count7performQrSi_yyctFQOyAEyAA5ColorVAA01_d5ShapeU0VyAA9RectangleVGG_Qo_GGA49_GMd);
  MEMORY[0x28223BE20](v15 - 8);
  v41 = &v37 - v16;
  outlined init with copy of GridView.ImageGrid.Cell(v1, &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GridView.ImageGrid.Cell);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  outlined init with take of GridView.ImageGrid.Cell(&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for GridView.ImageGrid.Cell);
  v47 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA15ModifiedContentVyAA6HStackVyAA9TupleViewVyAEyAA5GroupVyAA012_ConditionalE0VyAEyAA0H0PAAE10fontWeightyQrAA4FontV0L0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAW5ScaleOGG07CarPlayB004GridH0C4BaseO09Accessoryh7HostingH0VGGAA016_ForegroundStyleR0VyAA22HierarchicalShapeStyleVGGSg_AEyAA4TextVAZySiSgGGtGGAZyARSgGGA7_7ArtworkVGMd);
  lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type Label<ModifiedContent<HStack<TupleView<(ModifiedContent<Group<_ConditionalContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, GridView.Base.AccessoryViewHostingView>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, GridView.Base.Artwork> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA15ModifiedContentVyAA6HStackVyAA9TupleViewVyAEyAA5GroupVyAA012_ConditionalE0VyAEyAA0H0PAAE10fontWeightyQrAA4FontV0L0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAW5ScaleOGG07CarPlayB004GridH0C4BaseO09Accessoryh7HostingH0VGGAA016_ForegroundStyleR0VyAA22HierarchicalShapeStyleVGGSg_AEyAA4TextVAZySiSgGGtGGAZyARSgGGA7_7ArtworkVGMd);
  Button.init(action:label:)();
  v19 = *v1;
  swift_getKeyPath();
  *&v48 = v19;
  _s9CarPlayUI8GridViewC4BaseO0E5ModelCAG11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type GridView.Base.ViewModel and conformance GridView.Base.ViewModel, type metadata accessor for GridView.Base.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v19 + OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__disabledAppearance))
  {
    v20 = 0.25;
  }

  else
  {
    v20 = 1.0;
  }

  (*(v37 + 32))(v11, v7, v38);
  *&v11[*(v9 + 44)] = v20;
  swift_getKeyPath();
  *&v48 = v19;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v38 = OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__allowsTouches;
  v21 = *(v19 + OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__allowsTouches);
  KeyPath = swift_getKeyPath();
  v23 = swift_allocObject();
  *(v23 + 16) = (v21 & 1) == 0;
  outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v11, v13, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyACyAA6HStackVyAA9TupleViewVyACyAA5GroupVyAA012_ConditionalD0VyACyAA0I0PAAE10fontWeightyQrAA4FontV0M0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAY5ScaleOGG07CarPlayB004GridI0C4BaseO09Accessoryi7HostingI0VGGAA016_ForegroundStyleS0VyAA22HierarchicalShapeStyleVGGSg_ACyAA4TextVA0_ySiSgGGtGGA0_yATSgGGA9_7ArtworkVGGAA14_OpacityEffectVGMd);
  v24 = &v13[*(v39 + 36)];
  *v24 = KeyPath;
  v24[1] = _s7SwiftUI4ViewPAAE8disabledyQrSbFySbzcfU_TA_0;
  v24[2] = v23;
  swift_getKeyPath();
  *&v48 = v19;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = v19 + OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__imageConfiguration;
  swift_beginAccess();
  v26 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration(0);
  v27 = v43;
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v25 + *(v26 + 20), v43, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV5ShapeOSgMd);
  v28 = *(v45 + 20);
  *(v27 + v28) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<Label<ModifiedContent<HStack<TupleView<(ModifiedContent<Group<_ConditionalContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, GridView.Base.AccessoryViewHostingView>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, GridView.Base.Artwork>>, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
  _s9CarPlayUI8GridViewC4BaseO0E5ModelCAG11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type GridView.ImageGrid.Cell.ButtonStyle and conformance GridView.ImageGrid.Cell.ButtonStyle, type metadata accessor for GridView.ImageGrid.Cell.ButtonStyle);
  v29 = v40;
  View.buttonStyle<A>(_:)();
  outlined destroy of GridView.ImageGrid.Cell.ButtonStyle(v27, type metadata accessor for GridView.ImageGrid.Cell.ButtonStyle);
  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v13, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5LabelVyACyAA6HStackVyAA9TupleViewVyACyAA5GroupVyAA012_ConditionalD0VyACyAA0I0PAAE10fontWeightyQrAA4FontV0M0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAY5ScaleOGG07CarPlayB004GridI0C4BaseO09Accessoryi7HostingI0VGGAA016_ForegroundStyleS0VyAA22HierarchicalShapeStyleVGGSg_ACyAA4TextVA0_ySiSgGGtGGA0_yATSgGGA9_7ArtworkVGGAA14_OpacityEffectVGAA01_pq9TransformS0VySbGGMd);
  swift_getKeyPath();
  *&v48 = v19;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v30 = v41;
  specialized View.absorbTap(_:)((*(v19 + v38) & 1) == 0, v41);
  (*(v42 + 8))(v29, v44);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v31 = v30;
  v32 = v46;
  outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v31, v46, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyAEyAEyAA0I0VyAA5LabelVyAEyAA6HStackVyAA05TupleF0VyAEyAA5GroupVyACyAEyAgAE10fontWeightyQrAA4FontV0O0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyA_5ScaleOGG07CarPlayB004GridF0C4BaseO09Accessoryf7HostingF0VGGAA011_ForegroundhU0VyAA017HierarchicalShapeH0VGGSg_AEyAA4TextVA2_ySiSgGGtGGA2_yAVSgGGA11_7ArtworkVGGAA14_OpacityEffectVGAA01_rs9TransformU0VySbGG_A9_0qY0O4CellVAIVQo_AA08_OverlayU0VyAgAE12onTapGesture5count7performQrSi_yyctFQOyAEyAA5ColorVAA01_d5ShapeU0VyAA9RectangleVGG_Qo_GGA49_GMd);
  v33 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyACyACyAA0I0VyAA5LabelVyACyAA6HStackVyAA05TupleF0VyACyAA5GroupVyAEyACyAgAE10fontWeightyQrAA4FontV0O0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyA_5ScaleOGG07CarPlayB004GridF0C4BaseO09Accessoryf7HostingF0VGGAA011_ForegroundhU0VyAA017HierarchicalShapeH0VGGSg_ACyAA4TextVA2_ySiSgGGtGGA2_yAVSgGGA11_7ArtworkVGGAA14_OpacityEffectVGAA01_rs9TransformU0VySbGG_A9_0qY0O4CellVAIVQo_AA08_OverlayU0VyAgAE12onTapGesture5count7performQrSi_yyctFQOyACyAA5ColorVAA01_d5ShapeU0VyAA9RectangleVGG_Qo_GGA49_GAA16_FlexFrameLayoutVGMd) + 36);
  v34 = v53;
  *(v33 + 64) = v52;
  *(v33 + 80) = v34;
  *(v33 + 96) = v54;
  v35 = v49;
  *v33 = v48;
  *(v33 + 16) = v35;
  result = v51;
  *(v33 + 32) = v50;
  *(v33 + 48) = result;
  return result;
}

uint64_t closure #1 in GridView.ImageGrid.Cell.body.getter(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  _s9CarPlayUI8GridViewC4BaseO0E5ModelCAG11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type GridView.Base.ViewModel and conformance GridView.Base.ViewModel, type metadata accessor for GridView.Base.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__action);

  v2(v3);
}

uint64_t partial apply for closure #1 in GridView.ImageGrid.Cell.body.getter()
{
  v1 = *(type metadata accessor for GridView.ImageGrid.Cell(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return closure #1 in GridView.ImageGrid.Cell.body.getter(v2);
}

uint64_t closure #2 in GridView.ImageGrid.Cell.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA5GroupVyAA012_ConditionalD0VyACyAA0G0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAU5ScaleOGG07CarPlayB004GridG0C4BaseO09Accessoryg7HostingG0VGGAA016_ForegroundStyleQ0VyAA017HierarchicalShapeZ0VGGSg_ACyAA4TextVAXySiSgGGtGGAXyAPSgGGMd);
  type metadata accessor for GridView.Base.Artwork(0);
  lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<Group<_ConditionalContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, GridView.Base.AccessoryViewHostingView>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  _s9CarPlayUI8GridViewC4BaseO0E5ModelCAG11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type GridView.Base.Artwork and conformance GridView.Base.Artwork, type metadata accessor for GridView.Base.Artwork);
  return Label.init(title:icon:)();
}

uint64_t closure #1 in closure #2 in GridView.ImageGrid.Cell.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalJ0VyAKyAA0D0PAAE10fontWeightyQrAA4FontV0N0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAY5ScaleOGG07CarPlayB004GridD0C4BaseO09Accessoryd7HostingD0VGGAA016_ForegroundStyleT0VyAA22HierarchicalShapeStyleVGGSg_AKyAA4TextVA0_ySiSgGGtGGMd);
  closure #1 in closure #1 in closure #2 in GridView.ImageGrid.Cell.body.getter(a1, a2 + *(v4 + 44));
  if (one-time initialization token for titleFont != -1)
  {
    swift_once();
  }

  v5 = static GridView.ImageGrid.Cell.Specs.titleFont;
  v6 = Font.init(_:)();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA5GroupVyAA012_ConditionalD0VyACyAA0G0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAU5ScaleOGG07CarPlayB004GridG0C4BaseO09Accessoryg7HostingG0VGGAA016_ForegroundStyleQ0VyAA017HierarchicalShapeZ0VGGSg_ACyAA4TextVAXySiSgGGtGGAXyAPSgGGMd);
  v9 = (a2 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = v6;
  return result;
}

uint64_t closure #1 in closure #1 in closure #2 in GridView.ImageGrid.Cell.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyACyAA4ViewPAAE10fontWeightyQrAA4FontV0I0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGG07CarPlayB004GridG0C4BaseO09Accessoryg7HostingG0VGGAA016_ForegroundStyleO0VyAA017HierarchicalShapeX0VGGMd);
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x28223BE20](v3);
  v36 = &v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v35 - v6;
  v8 = type metadata accessor for GridView.Base.ViewModel.Accessory(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyACyAA4ViewPAAE10fontWeightyQrAA4FontV0I0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGG07CarPlayB004GridG0C4BaseO09Accessoryg7HostingG0VGGAA016_ForegroundStyleO0VyAA017HierarchicalShapeX0VGGSgMd);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v40 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v35 - v15;
  v37 = a1;
  v17 = *a1;
  swift_getKeyPath();
  v44 = v17;
  _s9CarPlayUI8GridViewC4BaseO0E5ModelCAG11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type GridView.Base.ViewModel and conformance GridView.Base.ViewModel, type metadata accessor for GridView.Base.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__accessory;
  swift_beginAccess();
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v17 + v18, v7, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSgMd);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v7, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC9AccessoryOSgMd);
    (*(v38 + 56))(v16, 1, 1, v39);
  }

  else
  {
    outlined init with take of GridView.ImageGrid.Cell(v7, v11, type metadata accessor for GridView.Base.ViewModel.Accessory);
    v19 = v36;
    closure #1 in closure #1 in closure #1 in closure #2 in GridView.ImageGrid.Cell.body.getter(v11, v37, v36);
    v20 = static HierarchicalShapeStyle.secondary.getter();
    v21 = v39;
    *(v19 + *(v39 + 36)) = v20;
    outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v19, v16, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyACyAA4ViewPAAE10fontWeightyQrAA4FontV0I0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGG07CarPlayB004GridG0C4BaseO09Accessoryg7HostingG0VGGAA016_ForegroundStyleO0VyAA017HierarchicalShapeX0VGGMd);
    (*(v38 + 56))(v16, 0, 1, v21);
    outlined destroy of GridView.ImageGrid.Cell.ButtonStyle(v11, type metadata accessor for GridView.Base.ViewModel.Accessory);
  }

  swift_getKeyPath();
  v42 = v17;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = *(v17 + 40);
  v42 = *(v17 + 32);
  v43 = v22;
  lazy protocol witness table accessor for type String and conformance String();

  v23 = Text.init<A>(_:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  KeyPath = swift_getKeyPath();
  v31 = v40;
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v16, v40, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyACyAA4ViewPAAE10fontWeightyQrAA4FontV0I0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGG07CarPlayB004GridG0C4BaseO09Accessoryg7HostingG0VGGAA016_ForegroundStyleO0VyAA017HierarchicalShapeX0VGGSgMd);
  v32 = v41;
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v31, v41, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyACyAA4ViewPAAE10fontWeightyQrAA4FontV0I0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGG07CarPlayB004GridG0C4BaseO09Accessoryg7HostingG0VGGAA016_ForegroundStyleO0VyAA017HierarchicalShapeX0VGGSgMd);
  v33 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyACyAA4ViewPAAE10fontWeightyQrAA4FontV0I0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGG07CarPlayB004GridG0C4BaseO09Accessoryg7HostingG0VGGAA016_ForegroundStyleO0VyAA017HierarchicalShapeX0VGGSg_ACyAA4TextVATySiSgGGtMd) + 48);
  *v33 = v23;
  *(v33 + 8) = v25;
  v27 &= 1u;
  *(v33 + 16) = v27;
  *(v33 + 24) = v29;
  *(v33 + 32) = KeyPath;
  *(v33 + 40) = 1;
  *(v33 + 48) = 0;
  outlined copy of Text.Storage(v23, v25, v27);

  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v16, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyACyAA4ViewPAAE10fontWeightyQrAA4FontV0I0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGG07CarPlayB004GridG0C4BaseO09Accessoryg7HostingG0VGGAA016_ForegroundStyleO0VyAA017HierarchicalShapeX0VGGSgMd);
  outlined consume of Text.Storage(v23, v25, v27);

  return outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v31, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyACyAA4ViewPAAE10fontWeightyQrAA4FontV0I0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGG07CarPlayB004GridG0C4BaseO09Accessoryg7HostingG0VGGAA016_ForegroundStyleO0VyAA017HierarchicalShapeX0VGGSgMd);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #2 in GridView.ImageGrid.Cell.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36[1] = a2;
  v43 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA4ViewPAAE10fontWeightyQrAA4FontV0I0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGG07CarPlayB004GridG0C4BaseO09Accessoryg7HostingG0V_GMd);
  MEMORY[0x28223BE20](v4);
  v6 = (v36 - v5);
  v40 = type metadata accessor for Image.Scale();
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA5ImageV_Qo_Md);
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v41 = v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGMd);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v38 = v36 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5ImageV5ScaleOSgMd);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v36 - v19;
  v21 = type metadata accessor for GridView.Base.ViewModel.Accessory(0);
  MEMORY[0x28223BE20](v21);
  v23 = (v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of GridView.ImageGrid.Cell(a1, v23, type metadata accessor for GridView.Base.ViewModel.Accessory);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v25 = v23[1];
  if (EnumCaseMultiPayload == 1)
  {
    *v6 = *v23;
    v6[1] = v25;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type GridView.Base.AccessoryViewHostingView and conformance GridView.Base.AccessoryViewHostingView();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v36[0] = v4;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS4name_7SwiftUI5ImageV5ScaleOSgAB4FontV6WeightVSgtMd);
    v28 = *(v23 + *(v27 + 64) + 8);
    outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v23 + *(v27 + 48), v20, &_s7SwiftUI5ImageV5ScaleOSgMd);
    v44 = Image.init(systemName:)();
    if (v28 == 1)
    {
      static Font.Weight.regular.getter();
    }

    View.fontWeight(_:)();

    outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v20, v18, &_s7SwiftUI5ImageV5ScaleOSgMd);
    v29 = v42;
    v30 = *(v42 + 48);
    v31 = v40;
    if (v30(v18, 1, v40) == 1)
    {
      GridView.ImageGrid.Cell.environmentImageScale.getter(v8);
      if (v30(v18, 1, v31) != 1)
      {
        outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v18, &_s7SwiftUI5ImageV5ScaleOSgMd);
      }
    }

    else
    {
      (*(v29 + 32))(v8, v18, v31);
    }

    KeyPath = swift_getKeyPath();
    v33 = &v13[*(v10 + 36)];
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd);
    (*(v42 + 32))(v33 + *(v34 + 28), v8, v31);
    *v33 = KeyPath;
    (*(v37 + 32))(v13, v41, v39);
    v35 = v38;
    outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v13, v38, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGMd);
    outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v35, v6, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type GridView.Base.AccessoryViewHostingView and conformance GridView.Base.AccessoryViewHostingView();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v35, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGMd);
    return outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v20, &_s7SwiftUI5ImageV5ScaleOSgMd);
  }
}

uint64_t GridView.ImageGrid.Cell.environmentImageScale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA5ImageV5ScaleO_GMd);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for GridView.ImageGrid.Cell(0);
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v1 + *(v10 + 20), v9, &_s7SwiftUI11EnvironmentV7ContentOyAA5ImageV5ScaleO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for Image.Scale();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t closure #2 in closure #2 in GridView.ImageGrid.Cell.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  _s9CarPlayUI8GridViewC4BaseO0E5ModelCAG11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type GridView.Base.ViewModel and conformance GridView.Base.ViewModel, type metadata accessor for GridView.Base.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtCOC9CarPlayUI8GridView4Base9ViewModel__imageConfiguration;
  swift_beginAccess();
  return outlined init with copy of GridView.ImageGrid.Cell(v3 + v4, a2, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image);
}

uint64_t GridView.ImageGrid.Cell.ButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v46 = a1;
  v47 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI18RoundedCornerStyleOSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v42 = &v42 - v3;
  v45 = type metadata accessor for GridView.ImageGrid.Cell.Specs.Shape(0);
  v4 = *(v45 - 8);
  v5 = MEMORY[0x28223BE20](v45);
  v43 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v42 - v7;
  v9 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Shape(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV5ShapeOSgMd);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CarPlayUI8GridViewC05ImageD0O4CellV5SpecsO5ShapeOSgMd);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v42 - v20;
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v44, v15, &_s9CarPlayUI8GridViewC4BaseO0E5ModelC18ImageConfigurationV5ShapeOSgMd);
  v22 = 1;
  if ((*(v10 + 48))(v15, 1, v9) != 1)
  {
    outlined init with take of GridView.ImageGrid.Cell(v15, v12, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Shape);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSg6radius_7SwiftUI18RoundedCornerStyleOSg5styletMd);
    v24 = *(v23 - 8);
    v25 = 1;
    if ((*(v24 + 48))(v12, 1, v23) != 1)
    {
      v26 = *v12;
      v27 = v12[8];
      v28 = &v12[*(v23 + 48)];
      v29 = v42;
      outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v28, v42, &_s7SwiftUI18RoundedCornerStyleOSgMd);
      v30 = *(v23 + 48);
      *v8 = v26;
      v8[8] = v27;
      outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v29, &v8[v30], &_s7SwiftUI18RoundedCornerStyleOSgMd);
      v25 = 0;
    }

    (*(v24 + 56))(v8, v25, 1, v23);
    outlined init with take of GridView.ImageGrid.Cell(v8, v21, type metadata accessor for GridView.ImageGrid.Cell.Specs.Shape);
    v22 = 0;
  }

  v31 = v45;
  (*(v4 + 56))(v21, v22, 1, v45);
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v21, v19, &_s9CarPlayUI8GridViewC05ImageD0O4CellV5SpecsO5ShapeOSgMd);
  if ((*(v4 + 48))(v19, 1, v31) == 1)
  {
    outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v21, &_s9CarPlayUI8GridViewC05ImageD0O4CellV5SpecsO5ShapeOSgMd);
LABEL_9:
    v51 = MEMORY[0x277CE14A8];
    v52 = lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
    goto LABEL_10;
  }

  v32 = v43;
  outlined init with take of GridView.ImageGrid.Cell(v19, v43, type metadata accessor for GridView.ImageGrid.Cell.Specs.Shape);
  GridView.ImageGrid.Cell.Specs.Shape.insettableShape.getter(&v50);
  outlined init with take of InsettableShape(&v50, &v48);
  outlined destroy of GridView.ImageGrid.Cell.ButtonStyle(v32, type metadata accessor for GridView.ImageGrid.Cell.Specs.Shape);
  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v21, &_s9CarPlayUI8GridViewC05ImageD0O4CellV5SpecsO5ShapeOSgMd);
  if (!v49)
  {
    goto LABEL_9;
  }

  outlined init with take of InsettableShape(&v48, &v50);
LABEL_10:
  outlined init with copy of InsettableShape(&v50, &v48);
  v33 = v46;
  v34 = ButtonStyleConfiguration.isPressed.getter();
  v35 = static HorizontalAlignment.center.getter();
  v36 = v47;
  *v47 = v35;
  v36[1] = 0x4014000000000000;
  *(v36 + 16) = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAKyAA0D0PAAE10labelStyleyQrqd__AA05LabelL0Rd__lFQOyAA06ButtonL13ConfigurationV0M0V_AA08IconOnlymL0VQo_AA011_BackgroundL8ModifierVyAA017HierarchicalShapeL0VGG07CarPlayB0014InnerHighlightS0VGA1_06SystemN7OpacityVGA1_09FocusRingS033_C2414E8B1C72748AF3156B15159BFF28LLVGAA012_AspectRatioG0VG_AKyAmAEANyQrqd__AaORd__lFQOyAS_AA05TitleqmL0VQo_A6_GtGGMd);
  v38 = v34 & 1;
  closure #1 in GridView.ImageGrid.Cell.ButtonStyle.makeBody(configuration:)(v33, &v48, v38, v36 + *(v37 + 44));
  v39 = static Animation.default.getter();
  v40 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACyACyAA0G0PAAE10labelStyleyQrqd__AA05LabelI0Rd__lFQOyAA06ButtonI13ConfigurationV0J0V_AA08IconOnlyjI0VQo_AA011_BackgroundI8ModifierVyAA017HierarchicalShapeI0VGG07CarPlayB0014InnerHighlightP0VGAY06SystemK7OpacityVGAY09FocusRingP033_C2414E8B1C72748AF3156B15159BFF28LLVGAA18_AspectRatioLayoutVG_ACyAiAEAJyQrqd__AaKRd__lFQOyAO_AA05TitlenjI0VQo_A2_GtGGAA010_AnimationP0VySbGGMd) + 36);
  *v40 = v39;
  v40[8] = v38;
  __swift_destroy_boxed_opaque_existential_1(&v50);
  return outlined destroy of AnyInsettableShape(&v48);
}

unint64_t GridView.ImageGrid.Cell.Specs.Shape.insettableShape.getter@<X0>(uint64_t *a1@<X8>)
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
  v14 = type metadata accessor for GridView.ImageGrid.Cell.Specs.Shape(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (&v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of GridView.ImageGrid.Cell(v2, v16, type metadata accessor for GridView.ImageGrid.Cell.Specs.Shape);
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
    a1[4] = _s9CarPlayUI8GridViewC4BaseO0E5ModelCAG11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle, MEMORY[0x277CDFC08]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    *boxed_opaque_existential_1 = v19;
    boxed_opaque_existential_1[1] = v19;
    (*(v5 + 32))(boxed_opaque_existential_1 + *(v22 + 20), v7, v4);
    return outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v13, &_s7SwiftUI18RoundedCornerStyleOSgMd);
  }

  return result;
}

uint64_t closure #1 in GridView.ImageGrid.Cell.ButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v50 = a3;
  v55 = a2;
  v56 = a1;
  v64 = a4;
  v5 = type metadata accessor for TitleOnlyLabelStyle();
  v6 = *(v5 - 8);
  v61 = v5;
  v62 = v6;
  MEMORY[0x28223BE20](v5);
  v59 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA06ButtonG13ConfigurationV0H0V_AA09TitleOnlyhG0VQo_07CarPlayB006SystemI7OpacityVGMd) - 8;
  v8 = MEMORY[0x28223BE20](v60);
  v63 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v58 = &v49[-v10];
  v11 = type metadata accessor for IconOnlyLabelStyle();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v49[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for ButtonStyleConfiguration.Label();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v49[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA06ButtonG13ConfigurationV0H0V_AA08IconOnlyhG0VQo_AA011_BackgroundG8ModifierVyAA017HierarchicalShapeG0VGG07CarPlayB0014InnerHighlightN0VGAU06SystemI7OpacityVGAU09FocusRingN033_C2414E8B1C72748AF3156B15159BFF28LLVGAA18_AspectRatioLayoutVGMd);
  v20 = v19 - 8;
  v21 = MEMORY[0x28223BE20](v19);
  v57 = &v49[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v24 = &v49[-v23];
  ButtonStyleConfiguration.label.getter();
  IconOnlyLabelStyle.init()();
  v54 = _s9CarPlayUI8GridViewC4BaseO0E5ModelCAG11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label, MEMORY[0x277CDE278]);
  _s9CarPlayUI8GridViewC4BaseO0E5ModelCAG11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type IconOnlyLabelStyle and conformance IconOnlyLabelStyle, MEMORY[0x277CDDE78]);
  v51 = v15;
  View.labelStyle<A>(_:)();
  (*(v12 + 8))(v14, v11);
  v25 = *(v16 + 8);
  v52 = v16 + 8;
  v53 = v25;
  v25(v18, v15);
  LODWORD(v14) = static HierarchicalShapeStyle.quaternary.getter();
  v26 = static Edge.Set.all.getter();
  v27 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA06ButtonG13ConfigurationV0H0V_AA08IconOnlyhG0VQo_AA011_BackgroundG8ModifierVyAA017HierarchicalShapeG0VGGMd) + 36)];
  *v27 = v14;
  v27[4] = v26;
  v66 = &type metadata for AnyInsettableShape;
  v28 = lazy protocol witness table accessor for type AnyInsettableShape and conformance AnyInsettableShape();
  v67 = v28;
  v65[0] = swift_allocObject();
  v29 = v55;
  outlined init with copy of AnyInsettableShape(v55, v65[0] + 16);
  v30 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA06ButtonG13ConfigurationV0H0V_AA08IconOnlyhG0VQo_AA011_BackgroundG8ModifierVyAA017HierarchicalShapeG0VGG07CarPlayB0014InnerHighlightN0VGMd) + 36)];
  outlined init with copy of InsettableShape(v65, (v30 + 24));
  *v30 = 0;
  *(v30 + 1) = 0;
  v30[16] = 1;
  v31 = *(type metadata accessor for InnerHighlightModifier() + 28);
  *&v30[v31] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1(v65);
  v32 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA06ButtonG13ConfigurationV0H0V_AA08IconOnlyhG0VQo_AA011_BackgroundG8ModifierVyAA017HierarchicalShapeG0VGG07CarPlayB0014InnerHighlightN0VGAU06SystemI7OpacityVGMd) + 36)];
  *v32 = v4;
  v33 = type metadata accessor for SystemButtonOpacity();
  v34 = *(v33 + 20);
  *&v32[v34] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v66 = &type metadata for AnyInsettableShape;
  v67 = v28;
  v65[0] = swift_allocObject();
  outlined init with copy of AnyInsettableShape(v29, v65[0] + 16);
  v35 = static Color.accentColor.getter();
  v36 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA06ButtonG13ConfigurationV0H0V_AA08IconOnlyhG0VQo_AA011_BackgroundG8ModifierVyAA017HierarchicalShapeG0VGG07CarPlayB0014InnerHighlightN0VGAU06SystemI7OpacityVGAU09FocusRingN033_C2414E8B1C72748AF3156B15159BFF28LLVGMd) + 36)];
  outlined init with copy of InsettableShape(v65, (v36 + 24));
  *(v36 + 8) = swift_getKeyPath();
  v36[72] = 0;
  *v36 = v35;
  *(v36 + 8) = xmmword_2431E35C0;
  __swift_destroy_boxed_opaque_existential_1(v65);
  v37 = &v24[*(v20 + 44)];
  *v37 = 0x3FF0000000000000;
  *(v37 + 4) = 0;
  ButtonStyleConfiguration.label.getter();
  v38 = v59;
  TitleOnlyLabelStyle.init()();
  _s9CarPlayUI8GridViewC4BaseO0E5ModelCAG11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type TitleOnlyLabelStyle and conformance TitleOnlyLabelStyle, MEMORY[0x277CDDF40]);
  v39 = v58;
  v40 = v51;
  v41 = v61;
  View.labelStyle<A>(_:)();
  (*(v62 + 8))(v38, v41);
  v53(v18, v40);
  v42 = (v39 + *(v60 + 44));
  *v42 = v50;
  v43 = *(v33 + 20);
  *&v42[v43] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v44 = v57;
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v24, v57, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA06ButtonG13ConfigurationV0H0V_AA08IconOnlyhG0VQo_AA011_BackgroundG8ModifierVyAA017HierarchicalShapeG0VGG07CarPlayB0014InnerHighlightN0VGAU06SystemI7OpacityVGAU09FocusRingN033_C2414E8B1C72748AF3156B15159BFF28LLVGAA18_AspectRatioLayoutVGMd);
  v45 = v63;
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v39, v63, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA06ButtonG13ConfigurationV0H0V_AA09TitleOnlyhG0VQo_07CarPlayB006SystemI7OpacityVGMd);
  v46 = v64;
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v44, v64, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA06ButtonG13ConfigurationV0H0V_AA08IconOnlyhG0VQo_AA011_BackgroundG8ModifierVyAA017HierarchicalShapeG0VGG07CarPlayB0014InnerHighlightN0VGAU06SystemI7OpacityVGAU09FocusRingN033_C2414E8B1C72748AF3156B15159BFF28LLVGAA18_AspectRatioLayoutVGMd);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA06ButtonG13ConfigurationV0H0V_AA08IconOnlyhG0VQo_AA011_BackgroundG8ModifierVyAA017HierarchicalShapeG0VGG07CarPlayB0014InnerHighlightN0VGAU06SystemI7OpacityVGAU09FocusRingN033_C2414E8B1C72748AF3156B15159BFF28LLVGAA18_AspectRatioLayoutVG_ACyAeAEAFyQrqd__AaGRd__lFQOyAK_AA05TitlelhG0VQo_AZGtMd);
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v45, v46 + *(v47 + 48), &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA06ButtonG13ConfigurationV0H0V_AA09TitleOnlyhG0VQo_07CarPlayB006SystemI7OpacityVGMd);
  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v39, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA06ButtonG13ConfigurationV0H0V_AA09TitleOnlyhG0VQo_07CarPlayB006SystemI7OpacityVGMd);
  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v24, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA06ButtonG13ConfigurationV0H0V_AA08IconOnlyhG0VQo_AA011_BackgroundG8ModifierVyAA017HierarchicalShapeG0VGG07CarPlayB0014InnerHighlightN0VGAU06SystemI7OpacityVGAU09FocusRingN033_C2414E8B1C72748AF3156B15159BFF28LLVGAA18_AspectRatioLayoutVGMd);
  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v45, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA06ButtonG13ConfigurationV0H0V_AA09TitleOnlyhG0VQo_07CarPlayB006SystemI7OpacityVGMd);
  return outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v44, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA06ButtonG13ConfigurationV0H0V_AA08IconOnlyhG0VQo_AA011_BackgroundG8ModifierVyAA017HierarchicalShapeG0VGG07CarPlayB0014InnerHighlightN0VGAU06SystemI7OpacityVGAU09FocusRingN033_C2414E8B1C72748AF3156B15159BFF28LLVGAA18_AspectRatioLayoutVGMd);
}

id one-time initialization function for titleFont()
{
  result = [objc_opt_self() systemFontOfSize:10.0 weight:*MEMORY[0x277D74420]];
  static GridView.ImageGrid.Cell.Specs.titleFont = result;
  return result;
}

uint64_t protocol witness for GridView.Base.Cell.init(viewModel:) in conformance GridView.ImageGrid.Cell@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a2 + 20);
  *(a3 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA5ImageV5ScaleO_GMd);
  result = swift_storeEnumTagMultiPayload();
  *a3 = a1;
  return result;
}

uint64_t _s9CarPlayUI8GridViewC4BaseO0E5ModelCAG11Observation10ObservableAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t instantiation function for generic protocol witness table for GridView.ImageGrid.Cell(uint64_t a1)
{
  result = _s9CarPlayUI8GridViewC4BaseO0E5ModelCAG11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type GridView.ImageGrid.Cell and conformance GridView.ImageGrid.Cell, type metadata accessor for GridView.ImageGrid.Cell);
  *(a1 + 8) = result;
  return result;
}

void type metadata completion function for GridView.ImageGrid.Cell()
{
  type metadata accessor for GridView.Base.ViewModel(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<Image.Scale>(319, &lazy cache variable for type metadata for Environment<Image.Scale>, MEMORY[0x277CE1060], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for GridView.ImageGrid.Cell.ButtonStyle()
{
  type metadata accessor for Environment<Image.Scale>(319, &lazy cache variable for type metadata for GridView.Base.ViewModel.ImageConfiguration.Shape?, type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Shape, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<Image.Scale>(319, &lazy cache variable for type metadata for Environment<ColorScheme>, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Environment<Image.Scale>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined init with take of GridView.ImageGrid.Cell(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of GridView.ImageGrid.Cell.ButtonStyle(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of GridView.ImageGrid.Cell(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<Group<_ConditionalContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, GridView.Base.AccessoryViewHostingView>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Group<_ConditionalContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, GridView.Base.AccessoryViewHostingView>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Group<_ConditionalContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, GridView.Base.AccessoryViewHostingView>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA5GroupVyAA012_ConditionalD0VyACyAA0G0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAU5ScaleOGG07CarPlayB004GridG0C4BaseO09Accessoryg7HostingG0VGGAA016_ForegroundStyleQ0VyAA017HierarchicalShapeZ0VGGSg_ACyAA4TextVAXySiSgGGtGGAXyAPSgGGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<Group<_ConditionalContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, GridView.Base.AccessoryViewHostingView>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalG0VyAGyAA0E0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAU5ScaleOGG07CarPlayB004GridE0C4BaseO09Accessorye7HostingE0VGGAA016_ForegroundStyleQ0VyAA017HierarchicalShapeZ0VGGSg_AGyAA4TextVAXySiSgGGtGGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Group<_ConditionalContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Image.Scale>>, GridView.Base.AccessoryViewHostingView>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _BackgroundStyleModifier<HierarchicalShapeStyle>>, InnerHighlightModifier>, SystemButtonOpacity>, FocusRingModifier>, _AspectRatioLayout>, ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, SystemButtonOpacity>)>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _BackgroundStyleModifier<HierarchicalShapeStyle>>, InnerHighlightModifier>, SystemButtonOpacity>, FocusRingModifier>, _AspectRatioLayout>, ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, SystemButtonOpacity>)>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _BackgroundStyleModifier<HierarchicalShapeStyle>>, InnerHighlightModifier>, SystemButtonOpacity>, FocusRingModifier>, _AspectRatioLayout>, ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, SystemButtonOpacity>)>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACyACyAA0G0PAAE10labelStyleyQrqd__AA05LabelI0Rd__lFQOyAA06ButtonI13ConfigurationV0J0V_AA08IconOnlyjI0VQo_AA011_BackgroundI8ModifierVyAA017HierarchicalShapeI0VGG07CarPlayB0014InnerHighlightP0VGAY06SystemK7OpacityVGAY09FocusRingP033_C2414E8B1C72748AF3156B15159BFF28LLVGAA18_AspectRatioLayoutVG_ACyAiAEAJyQrqd__AaKRd__lFQOyAO_AA05TitlenjI0VQo_A2_GtGGAA010_AnimationP0VySbGGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _BackgroundStyleModifier<HierarchicalShapeStyle>>, InnerHighlightModifier>, SystemButtonOpacity>, FocusRingModifier>, _AspectRatioLayout>, ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, SystemButtonOpacity>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA0E0PAAE10labelStyleyQrqd__AA05LabelI0Rd__lFQOyAA06ButtonI13ConfigurationV0J0V_AA08IconOnlyjI0VQo_AA011_BackgroundI8ModifierVyAA017HierarchicalShapeI0VGG07CarPlayB0014InnerHighlightP0VGAY06SystemK7OpacityVGAY09FocusRingP033_C2414E8B1C72748AF3156B15159BFF28LLVGAA18_AspectRatioLayoutVG_AGyAiAEAJyQrqd__AaKRd__lFQOyAO_AA05TitlenjI0VQo_A2_GtGGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _BackgroundStyleModifier<HierarchicalShapeStyle>>, InnerHighlightModifier>, SystemButtonOpacity>, FocusRingModifier>, _AspectRatioLayout>, ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, SystemButtonOpacity>)>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t static CPUIMediaContainerTableHeaderFooterView.reuseIdentifier.getter()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = NSStringFromClass(ObjCClassFromMetadata);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void CPUIMediaContainerTableHeaderFooterView.artworkCatalog.setter(id a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  if (a1)
  {
    a1 = a1;
    Artwork.init(_:)();
    v5 = type metadata accessor for Artwork();
    (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  }

  else
  {
    v6 = type metadata accessor for Artwork();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  }

  CPUIMediaContainerTableHeaderFooterView.ViewModel.artwork.setter(v4);
}

uint64_t CPUIMediaContainerTableHeaderFooterView.artwork.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___CPUIMediaContainerTableHeaderFooterView_viewModel);
  swift_getKeyPath();
  lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel, type metadata accessor for CPUIMediaContainerTableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__artwork;
  swift_beginAccess();
  return outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v3 + v4, a1, &_s8MusicKit7ArtworkVSgMd);
}

uint64_t key path getter for CPUIMediaContainerTableHeaderFooterView.artwork : CPUIMediaContainerTableHeaderFooterView@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR___CPUIMediaContainerTableHeaderFooterView_viewModel);
  swift_getKeyPath();
  lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel, type metadata accessor for CPUIMediaContainerTableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__artwork;
  swift_beginAccess();
  return outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v3 + v4, a2, &_s8MusicKit7ArtworkVSgMd);
}

uint64_t key path setter for CPUIMediaContainerTableHeaderFooterView.artwork : CPUIMediaContainerTableHeaderFooterView(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(a1, &v9 - v6, &_s8MusicKit7ArtworkVSgMd);
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v7, v5, &_s8MusicKit7ArtworkVSgMd);
  CPUIMediaContainerTableHeaderFooterView.ViewModel.artwork.setter(v5);
  return outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v7, &_s8MusicKit7ArtworkVSgMd);
}

uint64_t CPUIMediaContainerTableHeaderFooterView.artwork.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(a1, &v6 - v3, &_s8MusicKit7ArtworkVSgMd);
  CPUIMediaContainerTableHeaderFooterView.ViewModel.artwork.setter(v4);
  return outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(a1, &_s8MusicKit7ArtworkVSgMd);
}

void (*CPUIMediaContainerTableHeaderFooterView.artwork.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd) - 8) + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v5[5] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v6);
    v5[5] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[6] = v7;
  v9 = *(v1 + OBJC_IVAR___CPUIMediaContainerTableHeaderFooterView_viewModel);
  v5[7] = v9;
  swift_getKeyPath();
  v5[3] = v9;
  lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel, type metadata accessor for CPUIMediaContainerTableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__artwork;
  swift_beginAccess();
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v9 + v10, v8, &_s8MusicKit7ArtworkVSgMd);
  return CPUIMediaContainerTableHeaderFooterView.artwork.modify;
}

void CPUIMediaContainerTableHeaderFooterView.artwork.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>((*a1)[6], (*a1)[5], &_s8MusicKit7ArtworkVSgMd);
  v4 = v3[6];
  v5 = v3[4];
  v6 = v3[5];
  if (a2)
  {
    outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v3[5], v3[4], &_s8MusicKit7ArtworkVSgMd);
    CPUIMediaContainerTableHeaderFooterView.ViewModel.artwork.setter(v5);
    outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v6, &_s8MusicKit7ArtworkVSgMd);
  }

  else
  {
    CPUIMediaContainerTableHeaderFooterView.ViewModel.artwork.setter(v3[5]);
  }

  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v4, &_s8MusicKit7ArtworkVSgMd);
  free(v4);
  free(v6);
  free(v5);

  free(v3);
}

uint64_t CPUIMediaContainerTableHeaderFooterView.title.getter()
{
  v1 = *(v0 + OBJC_IVAR___CPUIMediaContainerTableHeaderFooterView_viewModel);
  swift_getKeyPath();
  lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel, type metadata accessor for CPUIMediaContainerTableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__title);

  return v2;
}

uint64_t CPUIMediaContainerTableHeaderFooterView.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___CPUIMediaContainerTableHeaderFooterView_viewModel);
  v6 = (v5 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__title);
  v7 = *(v5 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__title) == a1 && *(v5 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__title + 8) == a2;
  if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *v6 = a1;
    v6[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel, type metadata accessor for CPUIMediaContainerTableHeaderFooterView.ViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t CPUIMediaContainerTableHeaderFooterView.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR___CPUIMediaContainerTableHeaderFooterView_viewModel);
  swift_getKeyPath();
  lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel, type metadata accessor for CPUIMediaContainerTableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__subtitle);

  return v2;
}

uint64_t CPUIMediaContainerTableHeaderFooterView.subtitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (*(v2 + OBJC_IVAR___CPUIMediaContainerTableHeaderFooterView_viewModel) + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__subtitle);
  v6 = v5[1];
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel, type metadata accessor for CPUIMediaContainerTableHeaderFooterView.ViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

void key path getter for CPUIMediaContainerTableHeaderFooterView.subtitle : CPUIMediaContainerTableHeaderFooterView(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 subtitle];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void key path setter for CPUIMediaContainerTableHeaderFooterView.subtitle : CPUIMediaContainerTableHeaderFooterView(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = MEMORY[0x245D2BBE0](*a1);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setSubtitle_];
}

uint64_t CPUIMediaContainerTableHeaderFooterView.playAction.setter(uint64_t a1)
{
  return CPUIMediaContainerTableHeaderFooterView.playAction.setter(a1);
}

{
  swift_getKeyPath();
  lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel, type metadata accessor for CPUIMediaContainerTableHeaderFooterView.ViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(a1);
}

void *key path getter for CPUIMediaContainerTableHeaderFooterView.playAction : CPUIMediaContainerTableHeaderFooterView@<X0>(id *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = [*a1 playAction];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    result = swift_allocObject();
    result[2] = thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply;
    result[3] = v5;
    v6 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  a2[1] = result;
  return result;
}

id @objc CPUIMediaContainerTableHeaderFooterView.playAction.getter(char *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = *&a1[OBJC_IVAR___CPUIMediaContainerTableHeaderFooterView_viewModel];
  swift_getKeyPath();
  v15[0] = v8;
  lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel, type metadata accessor for CPUIMediaContainerTableHeaderFooterView.ViewModel);
  v9 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = (v8 + *a4);
  v11 = *v10;
  v12 = v10[1];
  _sxRi_zRi0_zlyytIsegr_SgWOy_0(*v10);

  if (v11)
  {
    v15[4] = v11;
    v15[5] = v12;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = thunk for @escaping @callee_guaranteed () -> ();
    v15[3] = a5;
    v13 = _Block_copy(v15);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t CPUIMediaContainerTableHeaderFooterView.playAction.getter(uint64_t a1, void *a2)
{
  v4 = *(v2 + OBJC_IVAR___CPUIMediaContainerTableHeaderFooterView_viewModel);
  swift_getKeyPath();
  lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel, type metadata accessor for CPUIMediaContainerTableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v4 + *a2);
  _sxRi_zRi0_zlyytIsegr_SgWOy_0(v5);
  return v5;
}

void *key path getter for CPUIMediaContainerTableHeaderFooterView.shuffleAction : CPUIMediaContainerTableHeaderFooterView@<X0>(id *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = [*a1 shuffleAction];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    result = swift_allocObject();
    result[2] = thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply;
    result[3] = v5;
    v6 = partial apply for closure #2 in GridView.updateLayout(animated:);
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  a2[1] = result;
  return result;
}

void key path setter for CPUIMediaContainerTableHeaderFooterView.playAction : CPUIMediaContainerTableHeaderFooterView(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  v10 = *a1;
  if (*a1)
  {
    v13 = a1[1];
    v14 = swift_allocObject();
    *(v14 + 16) = v10;
    *(v14 + 24) = v13;
    v15 = *a2;
    v17[4] = a6;
    v17[5] = v14;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 1107296256;
    v17[2] = thunk for @escaping @callee_guaranteed () -> ();
    v17[3] = a7;
    v16 = _Block_copy(v17);
  }

  else
  {
    v16 = 0;
    v15 = *a2;
  }

  [v15 *a8];
  _Block_release(v16);
}

char *CPUIMediaContainerTableHeaderFooterView.init(reuseIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v36 - v7;
  type metadata accessor for CPUIMediaContainerTableHeaderFooterView.ViewModel();
  v9 = swift_allocObject();
  if (one-time initialization token for artwork != -1)
  {
    swift_once();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd);
  v11 = __swift_project_value_buffer(v10, static CPUIMediaContainerTableHeaderFooterView.ViewModel.Default.artwork);
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v11, v9 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__artwork, &_s8MusicKit7ArtworkVSgMd);
  v12 = (v9 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__title);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = (v9 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__subtitle);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v9 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__playAction);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v9 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__shuffleAction);
  *v15 = 0;
  v15[1] = 0;
  ObservationRegistrar.init()();
  *&v3[OBJC_IVAR___CPUIMediaContainerTableHeaderFooterView_viewModel] = v9;
  KeyPath = swift_getKeyPath();
  v17 = swift_getKeyPath();
  v18 = swift_getKeyPath();
  v38 = v9;
  v39 = KeyPath;
  v40 = 0;
  v41 = v17;
  v42 = 0;
  v43 = v18;
  v44 = 0;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14_UIHostingViewCySo035CPUIMediaContainerTableHeaderFooterD0C07CarPlayB0E7Content33_5BA7977D11D5380EA9CC2BFCBA0C52C5LLVGMd));

  *&v3[OBJC_IVAR___CPUIMediaContainerTableHeaderFooterView_hostingView] = _UIHostingView.init(rootView:)();
  if (a2)
  {
    v19 = MEMORY[0x245D2BBE0](a1, a2);
  }

  else
  {
    v19 = 0;
  }

  v37.receiver = v3;
  v37.super_class = CPUIMediaContainerTableHeaderFooterView;
  v20 = objc_msgSendSuper2(&v37, sel_initWithReuseIdentifier_, v19);

  v21 = v20;
  static UIBackgroundConfiguration.clear()();
  v22 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v22 - 8) + 56))(v8, 0, 1, v22);
  MEMORY[0x245D2BD10](v8);
  v23 = [v21 contentView];
  v24 = OBJC_IVAR___CPUIMediaContainerTableHeaderFooterView_hostingView;
  [v23 addSubview_];

  [*&v21[v24] setAutoresizingMask_];
  v25 = *&v21[v24];
  v26 = [v21 contentView];

  [v26 bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  [v25 setFrame_];
  [v21 observeViewModel];

  return v21;
}

CGSize __swiftcall CPUIMediaContainerTableHeaderFooterView.sizeThatFits(_:)(CGSize a1)
{
  v2 = *&v1[OBJC_IVAR___CPUIMediaContainerTableHeaderFooterView_hostingView];
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

Swift::Void __swiftcall CPUIMediaContainerTableHeaderFooterView.prepareForReuse()()
{
  v0.super_class = CPUIMediaContainerTableHeaderFooterView;
  objc_msgSendSuper2(&v0, sel_prepareForReuse);
  CPUIMediaContainerTableHeaderFooterView.ViewModel.reset()();
}

uint64_t CPUIMediaContainerTableHeaderFooterView.ViewModel.artwork.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel, type metadata accessor for CPUIMediaContainerTableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__artwork;
  swift_beginAccess();
  return outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v5 + v3, a1, &_s8MusicKit7ArtworkVSgMd);
}

uint64_t key path getter for CPUIMediaContainerTableHeaderFooterView.ViewModel.artwork : CPUIMediaContainerTableHeaderFooterView.ViewModel@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel, type metadata accessor for CPUIMediaContainerTableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__artwork;
  swift_beginAccess();
  return outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v3 + v4, a2, &_s8MusicKit7ArtworkVSgMd);
}

uint64_t key path setter for CPUIMediaContainerTableHeaderFooterView.ViewModel.artwork : CPUIMediaContainerTableHeaderFooterView.ViewModel(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(a1, &v6 - v3, &_s8MusicKit7ArtworkVSgMd);
  return CPUIMediaContainerTableHeaderFooterView.ViewModel.artwork.setter(v4);
}

uint64_t CPUIMediaContainerTableHeaderFooterView.ViewModel.artwork.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__artwork;
  swift_beginAccess();
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v1 + v6, v5, &_s8MusicKit7ArtworkVSgMd);
  v7 = specialized CPUIMediaContainerTableHeaderFooterView.ViewModel.shouldNotifyObservers<A>(_:_:)(v5, a1);
  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v5, &_s8MusicKit7ArtworkVSgMd);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel, type metadata accessor for CPUIMediaContainerTableHeaderFooterView.ViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(a1, v5, &_s8MusicKit7ArtworkVSgMd);
    swift_beginAccess();
    outlined assign with take of Artwork?(v5, v1 + v6);
    swift_endAccess();
  }

  return outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(a1, &_s8MusicKit7ArtworkVSgMd);
}

uint64_t type metadata accessor for CPUIMediaContainerTableHeaderFooterView.ViewModel()
{
  result = type metadata singleton initialization cache for CPUIMediaContainerTableHeaderFooterView.ViewModel;
  if (!type metadata singleton initialization cache for CPUIMediaContainerTableHeaderFooterView.ViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #1 in CPUIMediaContainerTableHeaderFooterView.ViewModel.artwork.setter(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__artwork;
  swift_beginAccess();
  outlined assign with copy of Artwork?(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t CPUIMediaContainerTableHeaderFooterView.ViewModel.title.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel, type metadata accessor for CPUIMediaContainerTableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__title);

  return v1;
}

uint64_t key path getter for CPUIMediaContainerTableHeaderFooterView.ViewModel.title : CPUIMediaContainerTableHeaderFooterView.ViewModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel, type metadata accessor for CPUIMediaContainerTableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__title + 8);
  *a2 = *(v3 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__title);
  a2[1] = v4;
}

uint64_t CPUIMediaContainerTableHeaderFooterView.ViewModel.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__title);
  v6 = *(v2 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__title) == a1 && *(v2 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__title + 8) == a2;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel, type metadata accessor for CPUIMediaContainerTableHeaderFooterView.ViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t partial apply for closure #1 in CPUIMediaContainerTableHeaderFooterView.ViewModel.title.setter()
{
  return partial apply for closure #1 in CPUIMediaContainerTableHeaderFooterView.ViewModel.title.setter();
}

{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__title);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t CPUIMediaContainerTableHeaderFooterView.ViewModel.subtitle.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel, type metadata accessor for CPUIMediaContainerTableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__subtitle);

  return v1;
}

uint64_t key path getter for CPUIMediaContainerTableHeaderFooterView.ViewModel.subtitle : CPUIMediaContainerTableHeaderFooterView.ViewModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel, type metadata accessor for CPUIMediaContainerTableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__subtitle + 8);
  *a2 = *(v3 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__subtitle);
  a2[1] = v4;
}

uint64_t CPUIMediaContainerTableHeaderFooterView.ViewModel.subtitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__subtitle);
  v6 = *(v2 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__subtitle + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel, type metadata accessor for CPUIMediaContainerTableHeaderFooterView.ViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t partial apply for closure #1 in CPUIMediaContainerTableHeaderFooterView.ViewModel.subtitle.setter()
{
  return partial apply for closure #1 in CPUIMediaContainerTableHeaderFooterView.ViewModel.subtitle.setter();
}

{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__subtitle);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t key path getter for CPUIMediaContainerTableHeaderFooterView.ViewModel.playAction : CPUIMediaContainerTableHeaderFooterView.ViewModel@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel, type metadata accessor for CPUIMediaContainerTableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__playAction);
  v5 = *(v3 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__playAction + 8);
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

uint64_t key path setter for CPUIMediaContainerTableHeaderFooterView.ViewModel.playAction : CPUIMediaContainerTableHeaderFooterView.ViewModel(uint64_t *a1)
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
  lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel, type metadata accessor for CPUIMediaContainerTableHeaderFooterView.ViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v4);
}

uint64_t CPUIMediaContainerTableHeaderFooterView.ViewModel.playAction.getter(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel, type metadata accessor for CPUIMediaContainerTableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + *a2);
  _sxRi_zRi0_zlyytIsegr_SgWOy_0(v4);
  return v4;
}

uint64_t key path getter for CPUIMediaContainerTableHeaderFooterView.ViewModel.shuffleAction : CPUIMediaContainerTableHeaderFooterView.ViewModel@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel, type metadata accessor for CPUIMediaContainerTableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__shuffleAction);
  v5 = *(v3 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__shuffleAction + 8);
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

uint64_t key path setter for CPUIMediaContainerTableHeaderFooterView.ViewModel.shuffleAction : CPUIMediaContainerTableHeaderFooterView.ViewModel(uint64_t *a1)
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
  lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel, type metadata accessor for CPUIMediaContainerTableHeaderFooterView.ViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v4);
}

Swift::Void __swiftcall CPUIMediaContainerTableHeaderFooterView.ViewModel.reset()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v12 - v4;
  if (one-time initialization token for artwork != -1)
  {
    v11 = v3;
    swift_once();
    v3 = v11;
  }

  v6 = __swift_project_value_buffer(v3, static CPUIMediaContainerTableHeaderFooterView.ViewModel.Default.artwork);
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v6, v5, &_s8MusicKit7ArtworkVSgMd);
  CPUIMediaContainerTableHeaderFooterView.ViewModel.artwork.setter(v5);
  CPUIMediaContainerTableHeaderFooterView.ViewModel.title.setter(0, 0xE000000000000000);
  v7 = (v1 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__subtitle);
  if (*(v1 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__subtitle + 8))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v12 - 3) = 0;
    *(&v12 - 2) = 0;
    *(&v12 - 4) = v1;
    v13 = v1;
    lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel, type metadata accessor for CPUIMediaContainerTableHeaderFooterView.ViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *v7 = 0;
    v7[1] = 0;
  }

  v9 = swift_getKeyPath();
  MEMORY[0x28223BE20](v9);
  *(&v12 - 3) = 0;
  *(&v12 - 2) = 0;
  *(&v12 - 4) = v1;
  v13 = v1;
  lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel, type metadata accessor for CPUIMediaContainerTableHeaderFooterView.ViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v10 = swift_getKeyPath();
  MEMORY[0x28223BE20](v10);
  *(&v12 - 3) = 0;
  *(&v12 - 2) = 0;
  *(&v12 - 4) = v1;
  v13 = v1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t one-time initialization function for artwork()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd);
  __swift_allocate_value_buffer(v0, static CPUIMediaContainerTableHeaderFooterView.ViewModel.Default.artwork);
  v1 = __swift_project_value_buffer(v0, static CPUIMediaContainerTableHeaderFooterView.ViewModel.Default.artwork);
  v2 = type metadata accessor for Artwork();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t CPUIMediaContainerTableHeaderFooterView.ViewModel.__deallocating_deinit()
{
  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v0 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__artwork, &_s8MusicKit7ArtworkVSgMd);

  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__playAction));
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__shuffleAction));
  v1 = OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

void type metadata completion function for CPUIMediaContainerTableHeaderFooterView.ViewModel()
{
  type metadata accessor for Artwork?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Artwork?()
{
  if (!lazy cache variable for type metadata for Artwork?)
  {
    type metadata accessor for Artwork();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Artwork?);
    }
  }
}

uint64_t closure #1 in CPUIMediaContainerTableHeaderFooterView.observeViewModel()()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel, type metadata accessor for CPUIMediaContainerTableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t closure #2 in implicit closure #1 in CPUIMediaContainerTableHeaderFooterView.observeViewModel()(void *a1)
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
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in closure #2 in implicit closure #1 in CPUIMediaContainerTableHeaderFooterView.observeViewModel(), v8);
}

uint64_t closure #1 in closure #2 in implicit closure #1 in CPUIMediaContainerTableHeaderFooterView.observeViewModel()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #2 in implicit closure #1 in CPUIMediaContainerTableHeaderFooterView.observeViewModel(), v6, v5);
}

uint64_t closure #1 in closure #2 in implicit closure #1 in CPUIMediaContainerTableHeaderFooterView.observeViewModel()()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR___CPUIMediaContainerTableHeaderFooterView_hostingView;
  v3 = *&v1[OBJC_IVAR___CPUIMediaContainerTableHeaderFooterView_hostingView];
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

uint64_t CPUIMediaContainerTableHeaderFooterView.Content.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGy010_MusicKit_aB012ArtworkImageVAA18_AspectRatioLayoutVGAA06_FrameN0VG07CarPlayB022InnerHighlightModifierVGSg_AGyAGyAA6VStackVyAEyAGyAWyAEyAA4TextV_AYSgtGGAA022_EnvironmentKeyWritingT0VySiSgGG_AA6SpacerVAGyAA0E0PAAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyACyAEyAA6ButtonVyAA5LabelVyAyA0K0VGGSg_A20_tGG_So035CPUIMediaContainerTableHeaderFooterE0CAQE0G033_5BA7977D11D5380EA9CC2BFCBA0C52C5LLV0Q12ShuffleStyleVQo_AA05_FlexoN0VGtGGA32_GAA06_TraityT0VyAA0n13PriorityTraitX0VGGtGGMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v42 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyACy010_MusicKit_aB012ArtworkImageVAA18_AspectRatioLayoutVGAA06_FrameN0VG07CarPlayB022InnerHighlightModifierVGSg_ACyACyAA6VStackVyAGyACyAWyAGyAA4TextV_AYSgtGGAA022_EnvironmentKeyWritingT0VySiSgGG_AA6SpacerVACyAA0G0PAAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAEyAGyAA6ButtonVyAA5LabelVyAyA0K0VGGSg_A20_tGG_So035CPUIMediaContainerTableHeaderFooterG0CAQE0D033_5BA7977D11D5380EA9CC2BFCBA0C52C5LLV0Q12ShuffleStyleVQo_AA05_FlexoN0VGtGGA32_GAA06_TraityT0VyAA0n13PriorityTraitX0VGGtGGA32_GMd);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyACy010_MusicKit_aB012ArtworkImageVAA18_AspectRatioLayoutVGAA06_FrameN0VG07CarPlayB022InnerHighlightModifierVGSg_ACyACyAA6VStackVyAGyACyAWyAGyAA4TextV_AYSgtGGAA022_EnvironmentKeyWritingT0VySiSgGG_AA6SpacerVACyAA0G0PAAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAEyAGyAA6ButtonVyAA5LabelVyAyA0K0VGGSg_A20_tGG_So035CPUIMediaContainerTableHeaderFooterG0CAQE0D033_5BA7977D11D5380EA9CC2BFCBA0C52C5LLV0Q12ShuffleStyleVQo_AA05_FlexoN0VGtGGA32_GAA06_TraityT0VyAA0n13PriorityTraitX0VGGtGGA32_GAA08_PaddingN0VGMd);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = v42 - v12;
  v14 = type metadata accessor for RoundedRectangle();
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v1 + 32);
  v43[1] = *(v1 + 16);
  v43[2] = v18;
  v44 = *(v1 + 48);
  v43[0] = *v1;
  v19 = *(v15 + 28);
  v20 = *MEMORY[0x277CE0118];
  v21 = type metadata accessor for RoundedCornerStyle();
  (*(*(v21 - 8) + 104))(&v17[v19], v20, v21);
  __asm { FMOV            V0.2D, #5.0 }

  *v17 = _Q0;
  *v5 = static VerticalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKy010_MusicKit_aB012ArtworkImageVAA012_AspectRatioG0VGAA06_FrameG0VG07CarPlayB022InnerHighlightModifierVGSg_AKyAKyAA6VStackVyAIyAKyA_yAIyAA4TextV_A1_SgtGGAA022_EnvironmentKeyWritingV0VySiSgGG_AA6SpacerVAKyAA0D0PAAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA0F0VyAIyAA6ButtonVyAA5LabelVyA1_AA0N0VGGSg_A26_tGG_So035CPUIMediaContainerTableHeaderFooterD0CAUE0J033_5BA7977D11D5380EA9CC2BFCBA0C52C5LLV0S12ShuffleStyleVQo_AA05_FlexqG0VGtGGA38_GAA013_TraitWritingV0VyAA0g13PriorityTraitZ0VGGtGGMd);
  closure #1 in CPUIMediaContainerTableHeaderFooterView.Content.body.getter(v43, v17, &v5[*(v27 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v5, v9, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGy010_MusicKit_aB012ArtworkImageVAA18_AspectRatioLayoutVGAA06_FrameN0VG07CarPlayB022InnerHighlightModifierVGSg_AGyAGyAA6VStackVyAEyAGyAWyAEyAA4TextV_AYSgtGGAA022_EnvironmentKeyWritingT0VySiSgGG_AA6SpacerVAGyAA0E0PAAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyACyAEyAA6ButtonVyAA5LabelVyAyA0K0VGGSg_A20_tGG_So035CPUIMediaContainerTableHeaderFooterE0CAQE0G033_5BA7977D11D5380EA9CC2BFCBA0C52C5LLV0Q12ShuffleStyleVQo_AA05_FlexoN0VGtGGA32_GAA06_TraityT0VyAA0n13PriorityTraitX0VGGtGGMd);
  v28 = &v9[*(v7 + 44)];
  v29 = v42[5];
  *(v28 + 4) = v42[4];
  *(v28 + 5) = v29;
  *(v28 + 6) = v42[6];
  v30 = v42[1];
  *v28 = v42[0];
  *(v28 + 1) = v30;
  v31 = v42[3];
  *(v28 + 2) = v42[2];
  *(v28 + 3) = v31;
  LOBYTE(v20) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v9, v13, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyACy010_MusicKit_aB012ArtworkImageVAA18_AspectRatioLayoutVGAA06_FrameN0VG07CarPlayB022InnerHighlightModifierVGSg_ACyACyAA6VStackVyAGyACyAWyAGyAA4TextV_AYSgtGGAA022_EnvironmentKeyWritingT0VySiSgGG_AA6SpacerVACyAA0G0PAAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAEyAGyAA6ButtonVyAA5LabelVyAyA0K0VGGSg_A20_tGG_So035CPUIMediaContainerTableHeaderFooterG0CAQE0D033_5BA7977D11D5380EA9CC2BFCBA0C52C5LLV0Q12ShuffleStyleVQo_AA05_FlexoN0VGtGGA32_GAA06_TraityT0VyAA0n13PriorityTraitX0VGGtGGA32_GMd);
  v40 = &v13[*(v11 + 44)];
  *v40 = v20;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v13, a1, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyACy010_MusicKit_aB012ArtworkImageVAA18_AspectRatioLayoutVGAA06_FrameN0VG07CarPlayB022InnerHighlightModifierVGSg_ACyACyAA6VStackVyAGyACyAWyAGyAA4TextV_AYSgtGGAA022_EnvironmentKeyWritingT0VySiSgGG_AA6SpacerVACyAA0G0PAAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAEyAGyAA6ButtonVyAA5LabelVyAyA0K0VGGSg_A20_tGG_So035CPUIMediaContainerTableHeaderFooterG0CAQE0D033_5BA7977D11D5380EA9CC2BFCBA0C52C5LLV0Q12ShuffleStyleVQo_AA05_FlexoN0VGtGGA32_GAA06_TraityT0VyAA0n13PriorityTraitX0VGGtGGA32_GAA08_PaddingN0VGMd);
  return outlined destroy of RoundedRectangle(v17);
}

uint64_t closure #1 in CPUIMediaContainerTableHeaderFooterView.Content.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a2;
  v74 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyACyAEyAA4TextV_AISgtGGAA30_EnvironmentKeyWritingModifierVySiSgGG_AA6SpacerVAGyAA0E0PAAE11buttonStyleyQrqd__AA06ButtonO0Rd__lFQOyAA6HStackVyAEyAA0P0VyAA5LabelVyAiA5ImageVGGSg_A6_tGG_So035CPUIMediaContainerTableHeaderFooterE0C07CarPlayB0E0G033_5BA7977D11D5380EA9CC2BFCBA0C52C5LLV0z7ShuffleO0VQo_AA16_FlexFrameLayoutVGtGGMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v59 - v5;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAEyAGyAA4TextV_AISgtGGAA30_EnvironmentKeyWritingModifierVySiSgGG_AA6SpacerVACyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonO0Rd__lFQOyAA6HStackVyAGyAA0P0VyAA5LabelVyAiA5ImageVGGSg_A6_tGG_So035CPUIMediaContainerTableHeaderFooterG0C07CarPlayB0E0D033_5BA7977D11D5380EA9CC2BFCBA0C52C5LLV0z7ShuffleO0VQo_AA16_FlexFrameLayoutVGtGGA19_GMd);
  MEMORY[0x28223BE20](v69);
  v71 = &v59 - v7;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyAEyAGyAA4TextV_AISgtGGAA30_EnvironmentKeyWritingModifierVySiSgGG_AA6SpacerVACyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonO0Rd__lFQOyAA6HStackVyAGyAA0P0VyAA5LabelVyAiA5ImageVGGSg_A6_tGG_So035CPUIMediaContainerTableHeaderFooterG0C07CarPlayB0E0D033_5BA7977D11D5380EA9CC2BFCBA0C52C5LLV0z7ShuffleO0VQo_AA16_FlexFrameLayoutVGtGGA19_GAA06_TraitkL0VyAA019LayoutPriorityTraitJ0VGGMd);
  v8 = MEMORY[0x28223BE20](v70);
  v73 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v68 = &v59 - v11;
  MEMORY[0x28223BE20](v10);
  v72 = &v59 - v12;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageVAA18_AspectRatioLayoutVGAA06_FrameK0VG07CarPlayB022InnerHighlightModifierVGMd);
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v62 = &v59 - v13;
  v61 = type metadata accessor for EnvironmentValues();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v59 - v19;
  v21 = type metadata accessor for Artwork();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageVAA18_AspectRatioLayoutVGAA06_FrameK0VG07CarPlayB022InnerHighlightModifierVGSgMd);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v67 = &v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v66 = &v59 - v28;
  v29 = *a1;
  swift_getKeyPath();
  *&v78 = v29;
  lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel, type metadata accessor for CPUIMediaContainerTableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v30 = OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__artwork;
  swift_beginAccess();
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v29 + v30, v20, &_s8MusicKit7ArtworkVSgMd);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v20, &_s8MusicKit7ArtworkVSgMd);
    v31 = 1;
    v32 = a1;
    v33 = v66;
    v34 = v65;
  }

  else
  {
    (*(v22 + 32))(v24, v20, v21);
    v86 = *(a1 + 16);
    v85 = *(a1 + 8);
    v32 = a1;
    v35 = v24;
    if (v86 != 1)
    {
      outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(&v85, &v78, &_s7SwiftUI11EnvironmentVy07CarPlayB023CPUIHorizontalSizeClassOGMd);
      static os_log_type_t.fault.getter();
      v36 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v35 = v24;
      v37 = v59;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v32 = a1;
      outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(&v85, &_s7SwiftUI11EnvironmentVy07CarPlayB023CPUIHorizontalSizeClassOGMd);
      (*(v60 + 8))(v37, v61);
    }

    v33 = v66;
    (*(v22 + 16))(v18, v35, v21);
    (*(v22 + 56))(v18, 0, 1, v21);
    v38 = v62;
    ArtworkImage.init(_:)();
    v39 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy010_MusicKit_aB012ArtworkImageVAA18_AspectRatioLayoutVGMd) + 36);
    *v39 = 0x3FF0000000000000;
    *(v39 + 8) = 0;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v40 = (v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGMd) + 36));
    v41 = v76;
    *v40 = v75;
    v40[1] = v41;
    v40[2] = v77;
    if (one-time initialization token for color != -1)
    {
      swift_once();
    }

    v42 = static Specs.Artwork.InnerStroke.color;
    *(&v79 + 1) = type metadata accessor for RoundedRectangle();
    *&v80 = lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle, MEMORY[0x277CDFC08]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v78);
    outlined init with copy of RoundedRectangle(v63, boxed_opaque_existential_1);
    (*(v22 + 8))(v35, v21);
    v34 = v65;
    v44 = v38 + *(v65 + 36);
    outlined init with copy of InsettableShape(&v78, v44 + 24);
    *v44 = v42;
    *(v44 + 8) = 0x3FE0000000000000;
    *(v44 + 16) = 0;
    v45 = *(type metadata accessor for InnerHighlightModifier() + 28);
    *(v44 + v45) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
    swift_storeEnumTagMultiPayload();

    __swift_destroy_boxed_opaque_existential_1(&v78);
    outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<ArtworkImage, _AspectRatioLayout>, _FrameLayout>, InnerHighlightModifier>(v38, v33);
    v31 = 0;
  }

  (*(v64 + 56))(v33, v31, 1, v34);
  *v6 = static HorizontalAlignment.leading.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA0F0VyAIyAA4TextV_AOSgtGGAA30_EnvironmentKeyWritingModifierVySiSgGG_AA6SpacerVAKyAA0D0PAAE11buttonStyleyQrqd__AA06ButtonR0Rd__lFQOyAA6HStackVyAIyAA0S0VyAA5LabelVyAoA5ImageVGGSg_A12_tGG_So035CPUIMediaContainerTableHeaderFooterD0C07CarPlayB0E0J033_5BA7977D11D5380EA9CC2BFCBA0C52C5LLV011PlayShuffleR0VQo_AA010_FlexFrameG0VGtGGMd);
  closure #1 in closure #1 in CPUIMediaContainerTableHeaderFooterView.Content.body.getter(v32, &v6[*(v46 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v47 = v71;
  outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v6, v71, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyACyAEyAA4TextV_AISgtGGAA30_EnvironmentKeyWritingModifierVySiSgGG_AA6SpacerVAGyAA0E0PAAE11buttonStyleyQrqd__AA06ButtonO0Rd__lFQOyAA6HStackVyAEyAA0P0VyAA5LabelVyAiA5ImageVGGSg_A6_tGG_So035CPUIMediaContainerTableHeaderFooterE0C07CarPlayB0E0G033_5BA7977D11D5380EA9CC2BFCBA0C52C5LLV0z7ShuffleO0VQo_AA16_FlexFrameLayoutVGtGGMd);
  v48 = (v47 + *(v69 + 36));
  v49 = v83;
  v48[4] = v82;
  v48[5] = v49;
  v48[6] = v84;
  v50 = v79;
  *v48 = v78;
  v48[1] = v50;
  v51 = v81;
  v48[2] = v80;
  v48[3] = v51;
  v52 = v68;
  outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v47, v68, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAEyAGyAA4TextV_AISgtGGAA30_EnvironmentKeyWritingModifierVySiSgGG_AA6SpacerVACyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonO0Rd__lFQOyAA6HStackVyAGyAA0P0VyAA5LabelVyAiA5ImageVGGSg_A6_tGG_So035CPUIMediaContainerTableHeaderFooterG0C07CarPlayB0E0D033_5BA7977D11D5380EA9CC2BFCBA0C52C5LLV0z7ShuffleO0VQo_AA16_FlexFrameLayoutVGtGGA19_GMd);
  *(v52 + *(v70 + 36)) = 0x3FF0000000000000;
  v53 = v72;
  outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v52, v72, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyAEyAGyAA4TextV_AISgtGGAA30_EnvironmentKeyWritingModifierVySiSgGG_AA6SpacerVACyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonO0Rd__lFQOyAA6HStackVyAGyAA0P0VyAA5LabelVyAiA5ImageVGGSg_A6_tGG_So035CPUIMediaContainerTableHeaderFooterG0C07CarPlayB0E0D033_5BA7977D11D5380EA9CC2BFCBA0C52C5LLV0z7ShuffleO0VQo_AA16_FlexFrameLayoutVGtGGA19_GAA06_TraitkL0VyAA019LayoutPriorityTraitJ0VGGMd);
  v54 = v67;
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v33, v67, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageVAA18_AspectRatioLayoutVGAA06_FrameK0VG07CarPlayB022InnerHighlightModifierVGSgMd);
  v55 = v73;
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v53, v73, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyAEyAGyAA4TextV_AISgtGGAA30_EnvironmentKeyWritingModifierVySiSgGG_AA6SpacerVACyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonO0Rd__lFQOyAA6HStackVyAGyAA0P0VyAA5LabelVyAiA5ImageVGGSg_A6_tGG_So035CPUIMediaContainerTableHeaderFooterG0C07CarPlayB0E0D033_5BA7977D11D5380EA9CC2BFCBA0C52C5LLV0z7ShuffleO0VQo_AA16_FlexFrameLayoutVGtGGA19_GAA06_TraitkL0VyAA019LayoutPriorityTraitJ0VGGMd);
  v56 = v74;
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v54, v74, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageVAA18_AspectRatioLayoutVGAA06_FrameK0VG07CarPlayB022InnerHighlightModifierVGSgMd);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageVAA18_AspectRatioLayoutVGAA06_FrameK0VG07CarPlayB022InnerHighlightModifierVGSg_ACyACyAA6VStackVyAA9TupleViewVyACyASyAUyAA4TextV_AWSgtGGAA022_EnvironmentKeyWritingQ0VySiSgGG_AA6SpacerVACyAA0T0PAAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6HStackVyAUyAA6ButtonVyAA5LabelVyAwA0H0VGGSg_A20_tGG_So035CPUIMediaContainerTableHeaderFooterT0CAME0D033_5BA7977D11D5380EA9CC2BFCBA0C52C5LLV0N12ShuffleStyleVQo_AA05_FlexlK0VGtGGA32_GAA06_TraitxQ0VyAA0k13PriorityTraitW0VGGtMd);
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v55, v56 + *(v57 + 48), &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyAEyAGyAA4TextV_AISgtGGAA30_EnvironmentKeyWritingModifierVySiSgGG_AA6SpacerVACyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonO0Rd__lFQOyAA6HStackVyAGyAA0P0VyAA5LabelVyAiA5ImageVGGSg_A6_tGG_So035CPUIMediaContainerTableHeaderFooterG0C07CarPlayB0E0D033_5BA7977D11D5380EA9CC2BFCBA0C52C5LLV0z7ShuffleO0VQo_AA16_FlexFrameLayoutVGtGGA19_GAA06_TraitkL0VyAA019LayoutPriorityTraitJ0VGGMd);
  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v53, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyAEyAGyAA4TextV_AISgtGGAA30_EnvironmentKeyWritingModifierVySiSgGG_AA6SpacerVACyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonO0Rd__lFQOyAA6HStackVyAGyAA0P0VyAA5LabelVyAiA5ImageVGGSg_A6_tGG_So035CPUIMediaContainerTableHeaderFooterG0C07CarPlayB0E0D033_5BA7977D11D5380EA9CC2BFCBA0C52C5LLV0z7ShuffleO0VQo_AA16_FlexFrameLayoutVGtGGA19_GAA06_TraitkL0VyAA019LayoutPriorityTraitJ0VGGMd);
  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v33, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageVAA18_AspectRatioLayoutVGAA06_FrameK0VG07CarPlayB022InnerHighlightModifierVGSgMd);
  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v55, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyAEyAGyAA4TextV_AISgtGGAA30_EnvironmentKeyWritingModifierVySiSgGG_AA6SpacerVACyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonO0Rd__lFQOyAA6HStackVyAGyAA0P0VyAA5LabelVyAiA5ImageVGGSg_A6_tGG_So035CPUIMediaContainerTableHeaderFooterG0C07CarPlayB0E0D033_5BA7977D11D5380EA9CC2BFCBA0C52C5LLV0z7ShuffleO0VQo_AA16_FlexFrameLayoutVGtGGA19_GAA06_TraitkL0VyAA019LayoutPriorityTraitJ0VGGMd);
  return outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v54, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageVAA18_AspectRatioLayoutVGAA06_FrameK0VG07CarPlayB022InnerHighlightModifierVGSgMd);
}

uint64_t closure #1 in closure #1 in CPUIMediaContainerTableHeaderFooterView.Content.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSg_APtGGMd);
  MEMORY[0x28223BE20](v35);
  v5 = &v33 - v4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA6HStackVyAA05TupleC0VyAA0F0VyAA5LabelVyAA4TextVAA5ImageVGGSg_ATtGG_So035CPUIMediaContainerTableHeaderFooterC0C07CarPlayB0E7Content33_5BA7977D11D5380EA9CC2BFCBA0C52C5LLV0r7ShuffleE0VQo_Md);
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA6HStackVyAA05TupleE0VyAA0H0VyAA5LabelVyAA4TextVAA5ImageVGGSg_AVtGG_So035CPUIMediaContainerTableHeaderFooterE0C07CarPlayB0E0D033_5BA7977D11D5380EA9CC2BFCBA0C52C5LLV0t7ShuffleG0VQo_AA16_FlexFrameLayoutVGMd);
  v9 = v8 - 8;
  v10 = MEMORY[0x28223BE20](v8);
  v40 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v33 = &v33 - v13;
  MEMORY[0x28223BE20](v12);
  v37 = &v33 - v14;
  v38 = static HorizontalAlignment.leading.getter();
  LOBYTE(v54) = 1;
  closure #1 in closure #1 in closure #1 in CPUIMediaContainerTableHeaderFooterView.Content.body.getter(a1, v61);
  *(v53 + 7) = v61[0];
  *(&v53[1] + 7) = v61[1];
  *(&v53[2] + 7) = v61[2];
  *(&v53[3] + 7) = v61[3];
  v34 = v54;
  KeyPath = swift_getKeyPath();
  *v5 = static VerticalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSg_ATtGGMd);
  closure #2 in closure #1 in closure #1 in CPUIMediaContainerTableHeaderFooterView.Content.body.getter(a1, &v5[*(v15 + 44)]);
  v16 = swift_getKeyPath();
  v17 = swift_getKeyPath();
  *&v54 = v16;
  BYTE8(v54) = 0;
  *&v55 = v17;
  BYTE8(v55) = 0;
  lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(Button<Label<Text, Image>>?, Button<Label<Text, Image>>?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSg_APtGGMd);
  lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.Content.PlayShuffleStyle and conformance CPUIMediaContainerTableHeaderFooterView.Content.PlayShuffleStyle();
  View.buttonStyle<A>(_:)();

  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v5, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSg_APtGGMd);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v18 = v33;
  (*(v39 + 32))(v33, v7, v41);
  v19 = (v18 + *(v9 + 44));
  v20 = v59;
  v19[4] = v58;
  v19[5] = v20;
  v19[6] = v60;
  v21 = v55;
  *v19 = v54;
  v19[1] = v21;
  v22 = v57;
  v19[2] = v56;
  v19[3] = v22;
  v23 = v37;
  outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v18, v37, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA6HStackVyAA05TupleE0VyAA0H0VyAA5LabelVyAA4TextVAA5ImageVGGSg_AVtGG_So035CPUIMediaContainerTableHeaderFooterE0C07CarPlayB0E0D033_5BA7977D11D5380EA9CC2BFCBA0C52C5LLV0t7ShuffleG0VQo_AA16_FlexFrameLayoutVGMd);
  v24 = v40;
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v23, v40, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA6HStackVyAA05TupleE0VyAA0H0VyAA5LabelVyAA4TextVAA5ImageVGGSg_AVtGG_So035CPUIMediaContainerTableHeaderFooterE0C07CarPlayB0E0D033_5BA7977D11D5380EA9CC2BFCBA0C52C5LLV0t7ShuffleG0VQo_AA16_FlexFrameLayoutVGMd);
  v25 = v38;
  v42 = v38;
  v26 = v34;
  LOBYTE(v43[0]) = v34;
  *(v43 + 1) = v53[0];
  *(&v43[1] + 1) = v53[1];
  *(&v43[3] + 1) = v53[3];
  *(&v43[2] + 1) = v53[2];
  v27 = KeyPath;
  *&v43[4] = *(&v53[3] + 15);
  *(&v43[4] + 1) = KeyPath;
  *&v43[5] = 1;
  BYTE8(v43[5]) = 0;
  *(a2 + 89) = *(&v43[4] + 9);
  v28 = v43[4];
  *(a2 + 64) = v43[3];
  *(a2 + 80) = v28;
  v29 = v43[2];
  *(a2 + 32) = v43[1];
  *(a2 + 48) = v29;
  v30 = v43[0];
  *a2 = v42;
  *(a2 + 16) = v30;
  *(a2 + 112) = 0;
  *(a2 + 120) = 1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AISgtGGAA30_EnvironmentKeyWritingModifierVySiSgGG_AA6SpacerVACyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonO0Rd__lFQOyAA6HStackVyAGyAA0P0VyAA5LabelVyAiA5ImageVGGSg_A6_tGG_So035CPUIMediaContainerTableHeaderFooterG0C07CarPlayB0E0D033_5BA7977D11D5380EA9CC2BFCBA0C52C5LLV0z7ShuffleO0VQo_AA16_FlexFrameLayoutVGtMd);
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v24, a2 + *(v31 + 64), &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA6HStackVyAA05TupleE0VyAA0H0VyAA5LabelVyAA4TextVAA5ImageVGGSg_AVtGG_So035CPUIMediaContainerTableHeaderFooterE0C07CarPlayB0E0D033_5BA7977D11D5380EA9CC2BFCBA0C52C5LLV0t7ShuffleG0VQo_AA16_FlexFrameLayoutVGMd);
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(&v42, v44, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AISgtGGAA30_EnvironmentKeyWritingModifierVySiSgGGMd);
  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v23, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA6HStackVyAA05TupleE0VyAA0H0VyAA5LabelVyAA4TextVAA5ImageVGGSg_AVtGG_So035CPUIMediaContainerTableHeaderFooterE0C07CarPlayB0E0D033_5BA7977D11D5380EA9CC2BFCBA0C52C5LLV0t7ShuffleG0VQo_AA16_FlexFrameLayoutVGMd);
  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v24, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA6HStackVyAA05TupleE0VyAA0H0VyAA5LabelVyAA4TextVAA5ImageVGGSg_AVtGG_So035CPUIMediaContainerTableHeaderFooterE0C07CarPlayB0E0D033_5BA7977D11D5380EA9CC2BFCBA0C52C5LLV0t7ShuffleG0VQo_AA16_FlexFrameLayoutVGMd);
  v47 = v53[1];
  v48 = v53[2];
  *v49 = v53[3];
  v44[0] = v25;
  v44[1] = 0;
  v45 = v26;
  v46 = v53[0];
  *&v49[15] = *(&v53[3] + 15);
  v50 = v27;
  v51 = 1;
  v52 = 0;
  return outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v44, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AISgtGGAA30_EnvironmentKeyWritingModifierVySiSgGGMd);
}

uint64_t closure #1 in closure #1 in closure #1 in CPUIMediaContainerTableHeaderFooterView.Content.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel, type metadata accessor for CPUIMediaContainerTableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  lazy protocol witness table accessor for type String and conformance String();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  if (one-time initialization token for font != -1)
  {
    swift_once();
  }

  v9 = Text.font(_:)();
  v11 = v10;
  v13 = v12;
  outlined consume of Text.Storage(v4, v6, v8 & 1);

  if (one-time initialization token for color != -1)
  {
    swift_once();
  }

  v14 = Text.foregroundStyle<A>(_:)();
  v42 = v15;
  v43 = v14;
  v17 = v16;
  v19 = v18;
  outlined consume of Text.Storage(v9, v11, v13 & 1);

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v3 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__subtitle + 8))
  {
    v40 = v17;

    v20 = Text.init<A>(_:)();
    v22 = v21;
    v24 = v23;
    if (one-time initialization token for font != -1)
    {
      swift_once();
    }

    v41 = v19;
    v25 = Text.font(_:)();
    v27 = v26;
    v29 = v28;
    outlined consume of Text.Storage(v20, v22, v24 & 1);

    if (one-time initialization token for color != -1)
    {
      swift_once();
    }

    v30 = Text.foregroundStyle<A>(_:)();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    outlined consume of Text.Storage(v25, v27, v29 & 1);

    v37 = v34 & 1;
    outlined copy of Text.Storage(v30, v32, v34 & 1);

    v19 = v41;
    v17 = v40;
  }

  else
  {
    v30 = 0;
    v32 = 0;
    v37 = 0;
    v36 = 0;
  }

  v38 = v17 & 1;
  outlined copy of Text.Storage(v43, v42, v38);

  outlined copy of Text?(v30, v32, v37, v36);
  outlined consume of Text?(v30, v32, v37, v36);
  *a2 = v43;
  *(a2 + 8) = v42;
  *(a2 + 16) = v38;
  *(a2 + 24) = v19;
  *(a2 + 32) = v30;
  *(a2 + 40) = v32;
  *(a2 + 48) = v37;
  *(a2 + 56) = v36;
  outlined consume of Text?(v30, v32, v37, v36);
  outlined consume of Text.Storage(v43, v42, v38);
}

uint64_t closure #2 in closure #1 in closure #1 in CPUIMediaContainerTableHeaderFooterView.Content.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v44 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v43 = v37 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v42 = v37 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = v37 - v14;
  v16 = *a1;
  swift_getKeyPath();
  v47 = v16;
  v41 = lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel, type metadata accessor for CPUIMediaContainerTableHeaderFooterView.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = *(v16 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__playAction);
  v46 = v3;
  if (v17)
  {
    v40 = *(v16 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__playAction + 8);

    v18 = LocalizedStringKey.init(stringLiteral:)();
    v37[1] = v20;
    v38 = v19;
    v39 = v37;
    v37[-6] = MEMORY[0x28223BE20](v18);
    v37[-5] = v21;
    LOBYTE(v37[-4]) = v22 & 1;
    v37[-3] = v23;
    v37[-2] = 0x6C69662E79616C70;
    v37[-1] = 0xE90000000000006CLL;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd);
    v3 = v46;
    Button.init(action:label:)();

    (*(v4 + 32))(v15, v6, v3);
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = 1;
  v40 = *(v4 + 56);
  v40(v15, v24, 1, v3);
  swift_getKeyPath();
  v47 = v16;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v16 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__shuffleAction))
  {
    v41 = *(v16 + OBJC_IVAR____TtCE9CarPlayUICSo39CPUIMediaContainerTableHeaderFooterView9ViewModel__shuffleAction + 8);

    v26 = LocalizedStringKey.init(stringLiteral:)();
    v38 = v6;
    v39 = v37;
    v37[-6] = MEMORY[0x28223BE20](v26);
    v37[-5] = v27;
    LOBYTE(v37[-4]) = v28 & 1;
    v37[-3] = v29;
    v37[-2] = 0x656C6666756873;
    v37[-1] = 0xE700000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd);
    v30 = v38;
    Button.init(action:label:)();
    v3 = v46;

    v31 = v42;
    (*(v4 + 32))(v42, v30, v3);
    v25 = 0;
  }

  else
  {
    v31 = v42;
  }

  v40(v31, v25, 1, v3);
  v32 = v43;
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v15, v43, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd);
  v33 = v44;
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v31, v44, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd);
  v34 = v45;
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v32, v45, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSg_ALtMd);
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v33, v34 + *(v35 + 48), &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd);
  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v31, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd);
  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v15, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd);
  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v33, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd);
  return outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v32, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd);
}

uint64_t CPUIMediaContainerTableHeaderFooterView.Content.PlayShuffleStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v91 = a4;
  LODWORD(v74) = a3;
  v89 = a6;
  v82 = type metadata accessor for IconOnlyLabelStyle();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v77 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAA5ImageV5ScaleOGGMd);
  MEMORY[0x28223BE20](v75);
  v11 = &v73 - v10;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE10labelStyleyQrqd__AA05LabelE0Rd__lFQOyAA15ModifiedContentVyAGyAA06ButtonE13ConfigurationV0F0VAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAA5ImageV5ScaleOGG_AA08IconOnlyfE0VQo_Md);
  v83 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v80 = &v73 - v12;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyACyAA06ButtonG13ConfigurationV0H0VAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAA5ImageV5ScaleOGG_AA08IconOnlyhG0VQo_AA011_ForegroundgN0VyAA5ColorVGGMd);
  MEMORY[0x28223BE20](v79);
  v14 = &v73 - v13;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyACyAA06ButtonG13ConfigurationV0H0VAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAA5ImageV5ScaleOGG_AA08IconOnlyhG0VQo_AA011_ForegroundgN0VyAA5ColorVGGAA16_FlexFrameLayoutVGMd);
  MEMORY[0x28223BE20](v84);
  v16 = &v73 - v15;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyACyAA06ButtonG13ConfigurationV0H0VAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAA5ImageV5ScaleOGG_AA08IconOnlyhG0VQo_AA011_ForegroundgN0VyAA5ColorVGGAA16_FlexFrameLayoutVGAA01_wX0VGMd);
  MEMORY[0x28223BE20](v78);
  v90 = &v73 - v17;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyACyAA06ButtonG13ConfigurationV0H0VAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAA5ImageV5ScaleOGG_AA08IconOnlyhG0VQo_AA011_ForegroundgN0VyAA5ColorVGGAA16_FlexFrameLayoutVGAA01_wX0VGAA011_BackgroundgN0VyA3_GGMd);
  MEMORY[0x28223BE20](v88);
  v85 = &v73 - v18;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyACyAA06ButtonG13ConfigurationV0H0VAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAA5ImageV5ScaleOGG_AA08IconOnlyhG0VQo_AA011_ForegroundgN0VyAA5ColorVGGAA16_FlexFrameLayoutVGAA01_wX0VGAA011_BackgroundgN0VyA3_GGAA010_AnimationN0VySbGGMd);
  MEMORY[0x28223BE20](v86);
  v87 = &v73 - v19;
  v20 = type metadata accessor for Capsule();
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for EnvironmentValues();
  v73 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    goto LABEL_2;
  }

  if ((v74 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v65 = static Log.runtimeIssuesLog.getter();
    v74 = a1;
    v66 = v14;
    v67 = v11;
    v68 = v16;
    v69 = v22;
    v70 = v65;
    os_log(_:dso:log:_:_:)();

    v22 = v69;
    v16 = v68;
    v11 = v67;
    v14 = v66;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Bool>.Content(a2, 0);
    (*(v73 + 8))(v25, v23);
    if ((v92 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_2:
    v26 = 1;
LABEL_3:
    v91 = v26;
    goto LABEL_4;
  }

  if (a2)
  {
    goto LABEL_2;
  }

LABEL_25:
  if ((a5 & 1) == 0)
  {
    v71 = v91;

    static os_log_type_t.fault.getter();
    v72 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Bool>.Content(v71, 0);
    (*(v73 + 8))(v25, v23);
    v26 = v92;
    goto LABEL_3;
  }

LABEL_4:
  v27 = *MEMORY[0x277CE0118];
  v28 = type metadata accessor for RoundedCornerStyle();
  (*(*(v28 - 8) + 104))(v22, v27, v28);
  ButtonStyleConfiguration.label.getter();
  if (one-time initialization token for font != -1)
  {
    swift_once();
  }

  v29 = v22;
  v30 = static Specs.Controls.font;
  KeyPath = swift_getKeyPath();
  v32 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd) + 36)];
  *v32 = KeyPath;
  v32[1] = v30;
  v33 = one-time initialization token for scale;

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Image.Scale();
  v35 = __swift_project_value_buffer(v34, static Specs.Controls.scale);
  v36 = swift_getKeyPath();
  v37 = &v11[*(v75 + 36)];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd);
  (*(*(v34 - 8) + 16))(v37 + *(v38 + 28), v35, v34);
  *v37 = v36;
  v39 = v11;
  v40 = v77;
  IconOnlyLabelStyle.init()();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type IconOnlyLabelStyle and conformance IconOnlyLabelStyle, MEMORY[0x277CDDE78]);
  v41 = v80;
  v42 = v82;
  View.labelStyle<A>(_:)();
  (*(v81 + 8))(v40, v42);
  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v39, &_s7SwiftUI15ModifiedContentVyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAA5ImageV5ScaleOGGMd);
  if (v91)
  {
    v43 = static Color.primary.getter();
  }

  else
  {
    if (one-time initialization token for color != -1)
    {
      swift_once();
    }

    v43 = static Specs.Controls.color;
  }

  (*(v83 + 32))(v14, v41, v76);
  *&v14[*(v79 + 36)] = v43;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v14, v16, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyACyAA06ButtonG13ConfigurationV0H0VAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAA5ImageV5ScaleOGG_AA08IconOnlyhG0VQo_AA011_ForegroundgN0VyAA5ColorVGGMd);
  v44 = &v16[*(v84 + 36)];
  v45 = v97;
  *(v44 + 4) = v96;
  *(v44 + 5) = v45;
  *(v44 + 6) = v98;
  v46 = v93;
  *v44 = v92;
  *(v44 + 1) = v46;
  v47 = v95;
  *(v44 + 2) = v94;
  *(v44 + 3) = v47;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v48 = v90;
  outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v16, v90, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyACyAA06ButtonG13ConfigurationV0H0VAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAA5ImageV5ScaleOGG_AA08IconOnlyhG0VQo_AA011_ForegroundgN0VyAA5ColorVGGAA16_FlexFrameLayoutVGMd);
  v49 = (v48 + *(v78 + 36));
  v50 = v100;
  *v49 = v99;
  v49[1] = v50;
  v49[2] = v101;
  if (v91)
  {
    if (one-time initialization token for color != -1)
    {
      swift_once();
    }

    v51 = &static Specs.Controls.color;
  }

  else
  {
    if (one-time initialization token for backgroundColor != -1)
    {
      swift_once();
    }

    v51 = &static Specs.Controls.backgroundColor;
  }

  v52 = *v51;

  v53 = static Edge.Set.all.getter();
  v54 = v85;
  v55 = outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v90, v85, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyACyAA06ButtonG13ConfigurationV0H0VAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAA5ImageV5ScaleOGG_AA08IconOnlyhG0VQo_AA011_ForegroundgN0VyAA5ColorVGGAA16_FlexFrameLayoutVGAA01_wX0VGMd);
  v56 = v54 + *(v88 + 36);
  *v56 = v52;
  *(v56 + 8) = v53;
  v57 = MEMORY[0x245D2BB10](v55, 0.2, 0.85, 0.0);
  v58 = v54;
  v59 = v87;
  outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v58, v87, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyACyAA06ButtonG13ConfigurationV0H0VAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAA5ImageV5ScaleOGG_AA08IconOnlyhG0VQo_AA011_ForegroundgN0VyAA5ColorVGGAA16_FlexFrameLayoutVGAA01_wX0VGAA011_BackgroundgN0VyA3_GGMd);
  v60 = v59 + *(v86 + 36);
  *v60 = v57;
  *(v60 + 8) = v91 & 1;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyACyAA06ButtonG13ConfigurationV0H0VAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAA5ImageV5ScaleOGG_AA08IconOnlyhG0VQo_AA011_ForegroundgN0VyAA5ColorVGGAA16_FlexFrameLayoutVGAA01_wX0VGAA011_BackgroundgN0VyA3_GGAA010_AnimationN0VySbGGAA11_ClipEffectVyAA7CapsuleVGGMd);
  v62 = v89;
  v63 = v89 + *(v61 + 36);
  outlined init with take of Capsule(v29, v63);
  *(v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA7CapsuleVGMd) + 36)) = 256;
  return outlined init with take of ModifiedContent<Button<GridView.Base.Artwork>, _OpacityEffect>(v59, v62, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyACyAA06ButtonG13ConfigurationV0H0VAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAA5ImageV5ScaleOGG_AA08IconOnlyhG0VQo_AA011_ForegroundgN0VyAA5ColorVGGAA16_FlexFrameLayoutVGAA01_wX0VGAA011_BackgroundgN0VyA3_GGAA010_AnimationN0VySbGGMd);
}

unint64_t type metadata accessor for CPUIMediaContainerTableHeaderFooterView()
{
  result = lazy cache variable for type metadata for CPUIMediaContainerTableHeaderFooterView;
  if (!lazy cache variable for type metadata for CPUIMediaContainerTableHeaderFooterView)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CPUIMediaContainerTableHeaderFooterView);
  }

  return result;
}

uint64_t (*partial apply for implicit closure #1 in CPUIMediaContainerTableHeaderFooterView.observeViewModel()())()
{
  v1 = *(v0 + 16);
  *(swift_allocObject() + 16) = v1;
  v2 = v1;
  return partial apply for closure #2 in implicit closure #1 in CPUIMediaContainerTableHeaderFooterView.observeViewModel();
}

uint64_t partial apply for closure #1 in closure #2 in implicit closure #1 in CPUIMediaContainerTableHeaderFooterView.observeViewModel()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #3 in AsyncIconLayer.load(icon:iconEnvironmentTraits:descriptor:);

  return closure #1 in closure #2 in implicit closure #1 in CPUIMediaContainerTableHeaderFooterView.observeViewModel()(a1, v4, v5, v6);
}

uint64_t one-time initialization function for color(uint64_t a1, uint64_t *a2)
{
  static Color.white.getter();
  v3 = Color.opacity(_:)();

  *a2 = v3;
  return result;
}

uint64_t one-time initialization function for scale()
{
  v0 = type metadata accessor for Image.Scale();
  __swift_allocate_value_buffer(v0, static Specs.Controls.scale);
  v1 = __swift_project_value_buffer(v0, static Specs.Controls.scale);
  v2 = *MEMORY[0x277CE1058];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in CPUIMediaContainerTableHeaderFooterView.ViewModel.playAction.setter(void *a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = (v1[2] + *a1);
  v5 = *v4;
  *v4 = v2;
  v4[1] = v3;
  _sxRi_zRi0_zlyytIsegr_SgWOy_0(v2);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v5);
}

uint64_t closure #1 in Button<>.init(_:systemImage:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return MEMORY[0x282130010](a1, a2, a3, a4, a5, a6);
}

uint64_t specialized CPUIMediaContainerTableHeaderFooterView.ViewModel.shouldNotifyObservers<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSg_ADtMd);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(a1, &v21 - v13, &_s8MusicKit7ArtworkVSgMd);
  outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(a2, &v14[v15], &_s8MusicKit7ArtworkVSgMd);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    outlined init with copy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v14, v10, &_s8MusicKit7ArtworkVSgMd);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type Artwork and conformance Artwork, MEMORY[0x277CD8460]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v14, &_s8MusicKit7ArtworkVSgMd);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v14, &_s8MusicKit7ArtworkVSg_ADtMd);
    v17 = 1;
    return v17 & 1;
  }

  outlined destroy of _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>(v14, &_s8MusicKit7ArtworkVSgMd);
  v17 = 0;
  return v17 & 1;
}

uint64_t outlined assign with take of Artwork?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with copy of Artwork?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
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

uint64_t getEnumTagSinglePayload for CPUIMediaContainerTableHeaderFooterView.Content(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for CPUIMediaContainerTableHeaderFooterView.Content(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<ArtworkImage, _AspectRatioLayout>, _FrameLayout>, InnerHighlightModifier>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageVAA18_AspectRatioLayoutVGAA06_FrameK0VG07CarPlayB022InnerHighlightModifierVGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.Content.PlayShuffleStyle and conformance CPUIMediaContainerTableHeaderFooterView.Content.PlayShuffleStyle()
{
  result = lazy protocol witness table cache variable for type CPUIMediaContainerTableHeaderFooterView.Content.PlayShuffleStyle and conformance CPUIMediaContainerTableHeaderFooterView.Content.PlayShuffleStyle;
  if (!lazy protocol witness table cache variable for type CPUIMediaContainerTableHeaderFooterView.Content.PlayShuffleStyle and conformance CPUIMediaContainerTableHeaderFooterView.Content.PlayShuffleStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CPUIMediaContainerTableHeaderFooterView.Content.PlayShuffleStyle and conformance CPUIMediaContainerTableHeaderFooterView.Content.PlayShuffleStyle);
  }

  return result;
}

uint64_t outlined copy of Text?(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    outlined copy of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

uint64_t outlined consume of Text?(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    outlined consume of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CPUIMediaContainerTableHeaderFooterView.Content.PlayShuffleStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for CPUIMediaContainerTableHeaderFooterView.Content.PlayShuffleStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ArtworkImage, _AspectRatioLayout>, _FrameLayout>, InnerHighlightModifier>?, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<VStack<TupleView<(Text, Text?)>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout>)>>, _FlexFrameLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>)>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ArtworkImage, _AspectRatioLayout>, _FrameLayout>, InnerHighlightModifier>?, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<VStack<TupleView<(Text, Text?)>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout>)>>, _FlexFrameLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>)>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ArtworkImage, _AspectRatioLayout>, _FrameLayout>, InnerHighlightModifier>?, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<VStack<TupleView<(Text, Text?)>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout>)>>, _FlexFrameLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>)>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyACy010_MusicKit_aB012ArtworkImageVAA18_AspectRatioLayoutVGAA06_FrameN0VG07CarPlayB022InnerHighlightModifierVGSg_ACyACyAA6VStackVyAGyACyAWyAGyAA4TextV_AYSgtGGAA022_EnvironmentKeyWritingT0VySiSgGG_AA6SpacerVACyAA0G0PAAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAEyAGyAA6ButtonVyAA5LabelVyAyA0K0VGGSg_A20_tGG_So035CPUIMediaContainerTableHeaderFooterG0CAQE0D033_5BA7977D11D5380EA9CC2BFCBA0C52C5LLV0Q12ShuffleStyleVQo_AA05_FlexoN0VGtGGA32_GAA06_TraityT0VyAA0n13PriorityTraitX0VGGtGGA32_GAA08_PaddingN0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ArtworkImage, _AspectRatioLayout>, _FrameLayout>, InnerHighlightModifier>?, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<VStack<TupleView<(Text, Text?)>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout>)>>, _FlexFrameLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ArtworkImage, _AspectRatioLayout>, _FrameLayout>, InnerHighlightModifier>?, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<VStack<TupleView<(Text, Text?)>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout>)>>, _FlexFrameLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>)>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ArtworkImage, _AspectRatioLayout>, _FrameLayout>, InnerHighlightModifier>?, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<VStack<TupleView<(Text, Text?)>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout>)>>, _FlexFrameLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ArtworkImage, _AspectRatioLayout>, _FrameLayout>, InnerHighlightModifier>?, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<VStack<TupleView<(Text, Text?)>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout>)>>, _FlexFrameLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ArtworkImage, _AspectRatioLayout>, _FrameLayout>, InnerHighlightModifier>?, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<VStack<TupleView<(Text, Text?)>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout>)>>, _FlexFrameLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyACy010_MusicKit_aB012ArtworkImageVAA18_AspectRatioLayoutVGAA06_FrameN0VG07CarPlayB022InnerHighlightModifierVGSg_ACyACyAA6VStackVyAGyACyAWyAGyAA4TextV_AYSgtGGAA022_EnvironmentKeyWritingT0VySiSgGG_AA6SpacerVACyAA0G0PAAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAEyAGyAA6ButtonVyAA5LabelVyAyA0K0VGGSg_A20_tGG_So035CPUIMediaContainerTableHeaderFooterG0CAQE0D033_5BA7977D11D5380EA9CC2BFCBA0C52C5LLV0Q12ShuffleStyleVQo_AA05_FlexoN0VGtGGA32_GAA06_TraityT0VyAA0n13PriorityTraitX0VGGtGGA32_GMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ArtworkImage, _AspectRatioLayout>, _FrameLayout>, InnerHighlightModifier>?, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<VStack<TupleView<(Text, Text?)>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout>)>>, _FlexFrameLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGy010_MusicKit_aB012ArtworkImageVAA18_AspectRatioLayoutVGAA06_FrameN0VG07CarPlayB022InnerHighlightModifierVGSg_AGyAGyAA6VStackVyAEyAGyAWyAEyAA4TextV_AYSgtGGAA022_EnvironmentKeyWritingT0VySiSgGG_AA6SpacerVAGyAA0E0PAAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyACyAEyAA6ButtonVyAA5LabelVyAyA0K0VGGSg_A20_tGG_So035CPUIMediaContainerTableHeaderFooterE0CAQE0G033_5BA7977D11D5380EA9CC2BFCBA0C52C5LLV0Q12ShuffleStyleVQo_AA05_FlexoN0VGtGGA32_GAA06_TraityT0VyAA0n13PriorityTraitX0VGGtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ArtworkImage, _AspectRatioLayout>, _FrameLayout>, InnerHighlightModifier>?, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<VStack<TupleView<(Text, Text?)>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout>)>>, _FlexFrameLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAA5ImageV5ScaleOGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Image.Scale> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label, MEMORY[0x277CDE278]);
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with take of Capsule(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Capsule();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _AnimationModifier<Bool>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _AnimationModifier<Bool>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _AnimationModifier<Bool>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyACyAA06ButtonG13ConfigurationV0H0VAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAA5ImageV5ScaleOGG_AA08IconOnlyhG0VQo_AA011_ForegroundgN0VyAA5ColorVGGAA16_FlexFrameLayoutVGAA01_wX0VGAA011_BackgroundgN0VyA3_GGAA010_AnimationN0VySbGGAA11_ClipEffectVyAA7CapsuleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ClipEffect<Capsule> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA7CapsuleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _AnimationModifier<Bool>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyACyAA06ButtonG13ConfigurationV0H0VAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAA5ImageV5ScaleOGG_AA08IconOnlyhG0VQo_AA011_ForegroundgN0VyAA5ColorVGGAA16_FlexFrameLayoutVGAA01_wX0VGAA011_BackgroundgN0VyA3_GGAA010_AnimationN0VySbGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyACyAA06ButtonG13ConfigurationV0H0VAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAA5ImageV5ScaleOGG_AA08IconOnlyhG0VQo_AA011_ForegroundgN0VyAA5ColorVGGAA16_FlexFrameLayoutVGAA01_wX0VGAA011_BackgroundgN0VyA3_GGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyACyAA06ButtonG13ConfigurationV0H0VAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAA5ImageV5ScaleOGG_AA08IconOnlyhG0VQo_AA011_ForegroundgN0VyAA5ColorVGGAA16_FlexFrameLayoutVGAA01_wX0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _FlexFrameLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyACyAA06ButtonG13ConfigurationV0H0VAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAA5ImageV5ScaleOGG_AA08IconOnlyhG0VQo_AA011_ForegroundgN0VyAA5ColorVGGAA16_FlexFrameLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyACyAA06ButtonG13ConfigurationV0H0VAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAA5ImageV5ScaleOGG_AA08IconOnlyhG0VQo_AA011_ForegroundgN0VyAA5ColorVGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAA5ImageV5ScaleOGGMd);
    type metadata accessor for IconOnlyLabelStyle();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CPUIMediaContainerTableHeaderFooterView.ViewModel and conformance CPUIMediaContainerTableHeaderFooterView.ViewModel(&lazy protocol witness table cache variable for type IconOnlyLabelStyle and conformance IconOnlyLabelStyle, MEMORY[0x277CDDE78]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t closure #1 in CPUIMediaContainerTableHeaderFooterView.ViewModel.subtitle.setterpartial apply()
{
  return partial apply for closure #1 in CPUIMediaContainerTableHeaderFooterView.ViewModel.subtitle.setter();
}

{
  return partial apply for closure #1 in CPUIMediaContainerTableHeaderFooterView.ViewModel.subtitle.setter();
}

CGColorRef HCL.cgColor.getter(double a1, double a2, CGFloat a3)
{
  v6 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF450]);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = __sincos_stret(a1 * 3.14159265 / 180.0);
  v11[0] = a3;
  v11[1] = v8.__cosval * a2;
  v11[2] = v8.__sinval * a2;
  v11[3] = 1.0;
  v9 = CGColorCreate(v7, v11);

  return v9;
}

uint64_t specialized Lab.init(cgColor:)(CGColorSpace *a1)
{
  v2 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF450]);
  if (!v2)
  {
    v8 = 0;
LABEL_13:

    return v8;
  }

  v3 = v2;
  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v2, kCGRenderingIntentDefault, a1, 0);
  if (!CopyByMatchingToColorSpace)
  {
    v8 = 0;
    v5 = v3;
    goto LABEL_12;
  }

  v5 = CopyByMatchingToColorSpace;
  if (CGColorGetNumberOfComponents(CopyByMatchingToColorSpace) < 3 || (result = CGColorRef.components.getter()) == 0)
  {

    v8 = 0;
    goto LABEL_12;
  }

  v7 = *(result + 16);
  if (!v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v7 == 1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v7 >= 3)
  {
    v8 = *(result + 32);

    a1 = v3;
LABEL_12:

    goto LABEL_13;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t dispatch thunk of UIMutableTraits.subscript.getter()
{
  return MEMORY[0x2821DCDF0]();
}

{
  return MEMORY[0x2821DCE00]();
}

{
  return MEMORY[0x2821DCE10]();
}

uint64_t dispatch thunk of UIMutableTraits.subscript.setter()
{
  return MEMORY[0x2821DCDF8]();
}

{
  return MEMORY[0x2821DCE08]();
}

{
  return MEMORY[0x2821DCE18]();
}

uint64_t EnvironmentValues.subscript.getter()
{
  return MEMORY[0x28212DE80]();
}

{
  return MEMORY[0x282131AD8]();
}

uint64_t EnvironmentValues.subscript.setter()
{
  return MEMORY[0x28212DE88]();
}

{
  return MEMORY[0x282131AE0]();
}

uint64_t View.buttonStyle<A>(_:)()
{
  return MEMORY[0x28212F3E8]();
}

{
  return MEMORY[0x28212F3F8]();
}

UIEdgeInsets __swiftcall UIEdgeInsets.init(directionalEdgeInsets:layoutDirection:)(NSDirectionalEdgeInsets directionalEdgeInsets, UIUserInterfaceLayoutDirection layoutDirection)
{
  MEMORY[0x282185250](layoutDirection, *&directionalEdgeInsets.top, *&directionalEdgeInsets.leading, *&directionalEdgeInsets.bottom, *&directionalEdgeInsets.trailing);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

uint64_t UITraitCollection.subscript.getter()
{
  return MEMORY[0x2821DDD08]();
}

{
  return MEMORY[0x2821DDD10]();
}

{
  return MEMORY[0x2821DDD18]();
}

CGSize __swiftcall CGSize.inset(by:)(UIEdgeInsets by)
{
  MEMORY[0x282185280](*&by.top, *&by.left, *&by.bottom, *&by.right);
  result.height = v2;
  result.width = v1;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}