Swift::Int AnimatedSaveView.SaveState.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnimatedSaveView.SaveState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  AnimatedSaveView.SaveState.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t AnimatedSaveView.saveState.getter()
{
  OUTLINED_FUNCTION_0_173();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy15ConversationKit16AnimatedSaveViewV0G5StateOGMd);
  MEMORY[0x1BFB20050](&v2, v0);
  return v2;
}

uint64_t key path getter for AnimatedSaveView.saveState : AnimatedSaveView@<X0>(_BYTE *a1@<X8>)
{
  result = AnimatedSaveView.saveState.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for AnimatedSaveView.saveState : AnimatedSaveView()
{

  AnimatedSaveView.saveState.setter();
}

uint64_t AnimatedSaveView.saveState.setter()
{
  OUTLINED_FUNCTION_0_173();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy15ConversationKit16AnimatedSaveViewV0G5StateOGMd);
  return Binding.wrappedValue.setter();
}

void (*AnimatedSaveView.saveState.modify(void *a1))(uint64_t *a1)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v4 = *v1;
  v5 = v1[1];
  v3[6] = *v1;
  v3[7] = v5;
  v6 = *(v1 + 16);
  *(v3 + 19) = v6;
  *v3 = v4;
  v3[1] = v5;
  *(v3 + 16) = v6;

  v3[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy15ConversationKit16AnimatedSaveViewV0G5StateOGMd);
  MEMORY[0x1BFB20050]();
  return AnimatedSaveView.saveState.modify;
}

void AnimatedSaveView.saveState.modify(uint64_t *a1)
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

uint64_t AnimatedSaveView.$saveState.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy15ConversationKit16AnimatedSaveViewV0G5StateOGMd);
  Binding.projectedValue.getter();
  return v1;
}

double AnimatedSaveView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  v6 = *(v1 + 16);
  v7 = static Alignment.center.getter();
  v9 = v8;
  closure #1 in AnimatedSaveView.body.getter(v3, v4, v6, __src, v5);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v23, __src, 0xE0uLL);
  outlined init with copy of Conversation?(__dst, &v17, &_s7SwiftUI9TupleViewVyAA5GroupVyACyAA15ModifiedContentVyAGyAA06_ShapeD0VyAA6CircleVAA5ColorVGAA12_ScaleEffectVGAA18_AnimationModifierVy15ConversationKit012AnimatedSaveD0V0R5StateOGG_AGyAGyAGyAGyAnA08_OpacityL0VGAPGAA012_TransactionN0VGAYGtGG_AGyAGyAGyAGyAA5ImageVAA022_EnvironmentKeyWritingN0VyAMSgGGA4_GA12_yAA4FontVSgGGAA07_OffsetL0VGtGMd);
  outlined destroy of TapInteractionHandler?(v23, &_s7SwiftUI9TupleViewVyAA5GroupVyACyAA15ModifiedContentVyAGyAA06_ShapeD0VyAA6CircleVAA5ColorVGAA12_ScaleEffectVGAA18_AnimationModifierVy15ConversationKit012AnimatedSaveD0V0R5StateOGG_AGyAGyAGyAGyAnA08_OpacityL0VGAPGAA012_TransactionN0VGAYGtGG_AGyAGyAGyAGyAA5ImageVAA022_EnvironmentKeyWritingN0VyAMSgGGA4_GA12_yAA4FontVSgGGAA07_OffsetL0VGtGMd);
  memcpy(__src, __dst, sizeof(__src));
  *&v17 = v3;
  *(&v17 + 1) = v4;
  LOBYTE(v18) = v6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy15ConversationKit16AnimatedSaveViewV0G5StateOGMd);
  MEMORY[0x1BFB20050](&v16);
  if (v16 == 2)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = 1.0;
  }

  static Animation.easeIn(duration:)();
  v12 = Animation.delay(_:)();

  *&v17 = v3;
  *(&v17 + 1) = v4;
  LOBYTE(v18) = v6;
  MEMORY[0x1BFB20050](&v16, v10);
  v13 = v16;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v21[7] = v17;
  *&v21[23] = v18;
  *&v21[39] = v19;
  *a1 = v7;
  *(a1 + 8) = v9;
  memcpy((a1 + 16), __src, 0xE0uLL);
  *(a1 + 240) = v11;
  *(a1 + 248) = v12;
  *(a1 + 256) = v13;
  v14 = *&v21[16];
  *(a1 + 257) = *v21;
  *(a1 + 273) = v14;
  result = *&v21[32];
  *(a1 + 289) = *&v21[32];
  *(a1 + 304) = *&v21[47];
  return result;
}

uint64_t closure #1 in AnimatedSaveView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>, double a5@<D0>)
{
  v22 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  closure #1 in closure #1 in AnimatedSaveView.body.getter(a1, a2, a3, __src, a5);
  v27[0] = a1;
  v27[1] = a2;
  LOBYTE(v27[2]) = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy15ConversationKit16AnimatedSaveViewV0G5StateOGMd);
  MEMORY[0x1BFB20050](v24);
  v21 = Image.init(systemName:)();
  v27[0] = a1;
  v27[1] = a2;
  LOBYTE(v27[2]) = a3;
  MEMORY[0x1BFB20050](v24, v12);
  if (LOBYTE(v24[0]))
  {
    v13 = static Color.white.getter();
  }

  else
  {
    static Color.gray.getter();
    v13 = Color.opacity(_:)();
  }

  KeyPath = swift_getKeyPath();
  static Font.Weight.medium.getter();
  v15 = type metadata accessor for Font.Design();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v15);
  v16 = static Font.system(size:weight:design:)();
  outlined destroy of TapInteractionHandler?(v11, &_s7SwiftUI4FontV6DesignOSgMd);
  v17 = swift_getKeyPath();
  v27[0] = a1;
  v27[1] = a2;
  LOBYTE(v27[2]) = a3;
  MEMORY[0x1BFB20050](v24, v12);
  if (LOBYTE(v24[0]) >= 2u)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = -2.0;
  }

  memcpy(v24, __src, 0x91uLL);
  memcpy(v23, __src, 0x91uLL);
  v19 = v21;
  v25[0] = v21;
  v25[1] = KeyPath;
  v25[2] = v13;
  v25[3] = closure #1 in ScreeningTranscriptLabel.body.getter;
  v25[4] = 0;
  v25[5] = v17;
  v25[6] = v16;
  v25[7] = 0;
  *&v25[8] = v18;
  memcpy(&v23[152], v25, 0x48uLL);
  memcpy(v22, v23, 0xE0uLL);
  v26[0] = v19;
  v26[1] = KeyPath;
  v26[2] = v13;
  v26[3] = closure #1 in ScreeningTranscriptLabel.body.getter;
  v26[4] = 0;
  v26[5] = v17;
  v26[6] = v16;
  v26[7] = 0;
  *&v26[8] = v18;
  outlined init with copy of Conversation?(v24, v27, &_s7SwiftUI5GroupVyAA9TupleViewVyAA15ModifiedContentVyAGyAA06_ShapeE0VyAA6CircleVAA5ColorVGAA12_ScaleEffectVGAA18_AnimationModifierVy15ConversationKit012AnimatedSaveE0V0R5StateOGG_AGyAGyAGyAGyAnA08_OpacityL0VGAPGAA012_TransactionN0VGAYGtGGMd);
  outlined init with copy of Conversation?(v25, v27, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA012_TransactionI0VGAGyAA4FontVSgGGAA13_OffsetEffectVGMd);
  outlined destroy of TapInteractionHandler?(v26, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA012_TransactionI0VGAGyAA4FontVSgGGAA13_OffsetEffectVGMd);
  memcpy(v27, __src, 0x91uLL);
  return outlined destroy of TapInteractionHandler?(v27, &_s7SwiftUI5GroupVyAA9TupleViewVyAA15ModifiedContentVyAGyAA06_ShapeE0VyAA6CircleVAA5ColorVGAA12_ScaleEffectVGAA18_AnimationModifierVy15ConversationKit012AnimatedSaveE0V0R5StateOGG_AGyAGyAGyAGyAnA08_OpacityL0VGAPGAA012_TransactionN0VGAYGtGGMd);
}

uint64_t closure #1 in closure #1 in AnimatedSaveView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>, double a5@<D0>)
{
  v31 = static Color.green.getter();
  v46 = a1;
  v47 = a2;
  LOBYTE(v48) = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy15ConversationKit16AnimatedSaveViewV0G5StateOGMd);
  MEMORY[0x1BFB20050](__src);
  if (LOBYTE(__src[0]))
  {
    v10 = 1.0;
  }

  else
  {
    v10 = 0.0;
  }

  v11 = static UnitPoint.center.getter();
  v13 = v12;
  v15 = v14;
  v16 = MEMORY[0x1BFB203B0](v11, a5, 1.0, 0.0);
  v46 = a1;
  v47 = a2;
  LOBYTE(v48) = a3;
  MEMORY[0x1BFB20050](__src, v9);
  v17 = __src[0];
  v18 = static Color.green.getter();
  v46 = a1;
  v47 = a2;
  LOBYTE(v48) = a3;
  MEMORY[0x1BFB20050](__src, v9);
  v19 = LOBYTE(__src[0]);
  v46 = a1;
  v47 = a2;
  LOBYTE(v48) = a3;
  MEMORY[0x1BFB20050](__src, v9);
  if (LOBYTE(__src[0]))
  {
    v20 = 2.0;
  }

  else
  {
    v20 = 0.0;
  }

  if (v19)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = 1.0;
  }

  static UnitPoint.center.getter();
  v23 = v22;
  v25 = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  *(v26 + 24) = a2;
  *(v26 + 32) = a3;
  *(v26 + 40) = a5;

  v28 = MEMORY[0x1BFB203B0](v27, 0.5, 1.0, 0.0);
  v46 = a1;
  v47 = a2;
  LOBYTE(v48) = a3;
  MEMORY[0x1BFB20050](__src, v9);
  v29 = __src[0];
  *&v42 = v31;
  WORD4(v42) = 256;
  *&v43 = v10;
  *(&v43 + 1) = v10;
  *v44 = v13;
  *&v44[8] = v15;
  *&v44[16] = v16;
  v44[24] = v17;
  v41[0] = v42;
  v41[1] = v43;
  v41[2] = *v44;
  *(&v41[2] + 9) = *&v44[9];
  __src[0] = v18;
  LOWORD(__src[1]) = 256;
  *&__src[2] = v21;
  *&__src[3] = v20;
  *&__src[4] = v20;
  __src[5] = v23;
  __src[6] = v25;
  __src[7] = partial apply for closure #1 in closure #1 in closure #1 in AnimatedSaveView.body.getter;
  __src[8] = v26;
  __src[9] = v28;
  LOBYTE(__src[10]) = v29;
  memcpy(&v41[4], __src, 0x51uLL);
  memcpy(a4, v41, 0x91uLL);
  v46 = v18;
  LOWORD(v47) = 256;
  v48 = v21;
  v49 = v20;
  v50 = v20;
  v51 = v23;
  v52 = v25;
  v53 = partial apply for closure #1 in closure #1 in closure #1 in AnimatedSaveView.body.getter;
  v54 = v26;
  v55 = v28;
  v56 = v29;
  outlined init with copy of Conversation?(&v42, &v33, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_ScaleEffectVGAA18_AnimationModifierVy15ConversationKit012AnimatedSaveF0V0P5StateOGGMd);
  outlined init with copy of Conversation?(__src, &v33, &_s7SwiftUI15ModifiedContentVyACyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_OpacityEffectVGAA06_ScaleJ0VGAA20_TransactionModifierVGAA010_AnimationM0Vy15ConversationKit012AnimatedSaveF0V0R5StateOGGMd);
  outlined destroy of TapInteractionHandler?(&v46, &_s7SwiftUI15ModifiedContentVyACyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_OpacityEffectVGAA06_ScaleJ0VGAA20_TransactionModifierVGAA010_AnimationM0Vy15ConversationKit012AnimatedSaveF0V0R5StateOGGMd);
  v33 = v31;
  v34 = 256;
  v35 = v10;
  v36 = v10;
  v37 = v13;
  v38 = v15;
  v39 = v16;
  v40 = v17;
  return outlined destroy of TapInteractionHandler?(&v33, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_ScaleEffectVGAA18_AnimationModifierVy15ConversationKit012AnimatedSaveF0V0P5StateOGGMd);
}

uint64_t closure #1 in closure #1 in closure #1 in AnimatedSaveView.body.getter(double a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = type metadata accessor for AnimationCompletionCriteria();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = a5;
  *(v13 + 40) = a1;

  static AnimationCompletionCriteria.logicallyComplete.getter();
  Transaction.addAnimationCompletion(criteria:_:)();

  return (*(v10 + 8))(v12, v9);
}

void *closure #1 in closure #1 in closure #1 in closure #1 in AnimatedSaveView.body.getter(uint64_t a1, uint64_t a2, char a3)
{
  v8 = a1;
  v9 = a2;
  v10 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy15ConversationKit16AnimatedSaveViewV0G5StateOGMd);
  result = MEMORY[0x1BFB20050](&v7);
  if (v7 == 1)
  {
    v8 = a1;
    v9 = a2;
    v10 = a3;
    v7 = 2;
    return Binding.wrappedValue.setter();
  }

  return result;
}

uint64_t AnimatedSaveView.init(saveState:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = 0x3FD6666666666666;
  return result;
}

unint64_t lazy protocol witness table accessor for type AnimatedSaveView.SaveState and conformance AnimatedSaveView.SaveState()
{
  result = lazy protocol witness table cache variable for type AnimatedSaveView.SaveState and conformance AnimatedSaveView.SaveState;
  if (!lazy protocol witness table cache variable for type AnimatedSaveView.SaveState and conformance AnimatedSaveView.SaveState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatedSaveView.SaveState and conformance AnimatedSaveView.SaveState);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnimatedSaveView.SaveState(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(Group<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<AnimatedSaveView.SaveState>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _OpacityEffect>, _ScaleEffect>, _TransactionModifier>, _AnimationModifier<AnimatedSaveView.SaveState>>)>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _TransactionModifier>, _EnvironmentKeyWritingModifier<Font?>>, _OffsetEffect>)>>, _OpacityEffect>, _AnimationModifier<AnimatedSaveView.SaveState>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(Group<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<AnimatedSaveView.SaveState>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _OpacityEffect>, _ScaleEffect>, _TransactionModifier>, _AnimationModifier<AnimatedSaveView.SaveState>>)>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _TransactionModifier>, _EnvironmentKeyWritingModifier<Font?>>, _OffsetEffect>)>>, _OpacityEffect>, _AnimationModifier<AnimatedSaveView.SaveState>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(Group<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<AnimatedSaveView.SaveState>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _OpacityEffect>, _ScaleEffect>, _TransactionModifier>, _AnimationModifier<AnimatedSaveView.SaveState>>)>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _TransactionModifier>, _EnvironmentKeyWritingModifier<Font?>>, _OffsetEffect>)>>, _OpacityEffect>, _AnimationModifier<AnimatedSaveView.SaveState>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyAA5GroupVyAGyACyACyAA06_ShapeG0VyAA6CircleVAA5ColorVGAA12_ScaleEffectVGAA18_AnimationModifierVy15ConversationKit012AnimatedSaveG0V0S5StateOGG_ACyACyACyACyApA08_OpacityM0VGARGAA012_TransactionO0VGA_GtGG_ACyACyACyACyAA5ImageVAA022_EnvironmentKeyWritingO0VyAOSgGGA6_GA14_yAA4FontVSgGGAA07_OffsetM0VGtGGA2_GA_GAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<TupleView<(Group<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<AnimatedSaveView.SaveState>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _OpacityEffect>, _ScaleEffect>, _TransactionModifier>, _AnimationModifier<AnimatedSaveView.SaveState>>)>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _TransactionModifier>, _EnvironmentKeyWritingModifier<Font?>>, _OffsetEffect>)>>, _OpacityEffect>, _AnimationModifier<AnimatedSaveView.SaveState>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(Group<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<AnimatedSaveView.SaveState>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _OpacityEffect>, _ScaleEffect>, _TransactionModifier>, _AnimationModifier<AnimatedSaveView.SaveState>>)>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _TransactionModifier>, _EnvironmentKeyWritingModifier<Font?>>, _OffsetEffect>)>>, _OpacityEffect>, _AnimationModifier<AnimatedSaveView.SaveState>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<TupleView<(Group<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<AnimatedSaveView.SaveState>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _OpacityEffect>, _ScaleEffect>, _TransactionModifier>, _AnimationModifier<AnimatedSaveView.SaveState>>)>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _TransactionModifier>, _EnvironmentKeyWritingModifier<Font?>>, _OffsetEffect>)>>, _OpacityEffect>, _AnimationModifier<AnimatedSaveView.SaveState>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(Group<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<AnimatedSaveView.SaveState>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _OpacityEffect>, _ScaleEffect>, _TransactionModifier>, _AnimationModifier<AnimatedSaveView.SaveState>>)>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _TransactionModifier>, _EnvironmentKeyWritingModifier<Font?>>, _OffsetEffect>)>>, _OpacityEffect>, _AnimationModifier<AnimatedSaveView.SaveState>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(Group<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<AnimatedSaveView.SaveState>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _OpacityEffect>, _ScaleEffect>, _TransactionModifier>, _AnimationModifier<AnimatedSaveView.SaveState>>)>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _TransactionModifier>, _EnvironmentKeyWritingModifier<Font?>>, _OffsetEffect>)>>, _OpacityEffect>, _AnimationModifier<AnimatedSaveView.SaveState>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyAA5GroupVyAGyACyACyAA06_ShapeG0VyAA6CircleVAA5ColorVGAA12_ScaleEffectVGAA18_AnimationModifierVy15ConversationKit012AnimatedSaveG0V0S5StateOGG_ACyACyACyACyApA08_OpacityM0VGARGAA012_TransactionO0VGA_GtGG_ACyACyACyACyAA5ImageVAA022_EnvironmentKeyWritingO0VyAOSgGGA6_GA14_yAA4FontVSgGGAA07_OffsetM0VGtGGA2_GA_GMd);
    lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(Group<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<AnimatedSaveView.SaveState>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _OpacityEffect>, _ScaleEffect>, _TransactionModifier>, _AnimationModifier<AnimatedSaveView.SaveState>>)>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _TransactionModifier>, _EnvironmentKeyWritingModifier<Font?>>, _OffsetEffect>)>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _AnimationModifier<AnimatedSaveView.SaveState> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVy15ConversationKit16AnimatedSaveViewV0H5StateOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(Group<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<AnimatedSaveView.SaveState>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _OpacityEffect>, _ScaleEffect>, _TransactionModifier>, _AnimationModifier<AnimatedSaveView.SaveState>>)>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _TransactionModifier>, _EnvironmentKeyWritingModifier<Font?>>, _OffsetEffect>)>>, _OpacityEffect>, _AnimationModifier<AnimatedSaveView.SaveState>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(Group<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<AnimatedSaveView.SaveState>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _OpacityEffect>, _ScaleEffect>, _TransactionModifier>, _AnimationModifier<AnimatedSaveView.SaveState>>)>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _TransactionModifier>, _EnvironmentKeyWritingModifier<Font?>>, _OffsetEffect>)>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(Group<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<AnimatedSaveView.SaveState>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _OpacityEffect>, _ScaleEffect>, _TransactionModifier>, _AnimationModifier<AnimatedSaveView.SaveState>>)>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _TransactionModifier>, _EnvironmentKeyWritingModifier<Font?>>, _OffsetEffect>)>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(Group<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<AnimatedSaveView.SaveState>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _OpacityEffect>, _ScaleEffect>, _TransactionModifier>, _AnimationModifier<AnimatedSaveView.SaveState>>)>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _TransactionModifier>, _EnvironmentKeyWritingModifier<Font?>>, _OffsetEffect>)>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA5GroupVyAGyACyACyAA06_ShapeG0VyAA6CircleVAA5ColorVGAA12_ScaleEffectVGAA18_AnimationModifierVy15ConversationKit012AnimatedSaveG0V0S5StateOGG_ACyACyACyACyApA08_OpacityM0VGARGAA012_TransactionO0VGA_GtGG_ACyACyACyACyAA5ImageVAA022_EnvironmentKeyWritingO0VyAOSgGGA6_GA14_yAA4FontVSgGGAA07_OffsetM0VGtGGA2_GMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type ZStack<TupleView<(Group<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<AnimatedSaveView.SaveState>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _OpacityEffect>, _ScaleEffect>, _TransactionModifier>, _AnimationModifier<AnimatedSaveView.SaveState>>)>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _TransactionModifier>, _EnvironmentKeyWritingModifier<Font?>>, _OffsetEffect>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA5GroupVyAEyAA15ModifiedContentVyAIyAA06_ShapeE0VyAA6CircleVAA5ColorVGAA12_ScaleEffectVGAA18_AnimationModifierVy15ConversationKit012AnimatedSaveE0V0S5StateOGG_AIyAIyAIyAIyApA08_OpacityM0VGARGAA012_TransactionO0VGA_GtGG_AIyAIyAIyAIyAA5ImageVAA022_EnvironmentKeyWritingO0VyAOSgGGA6_GA14_yAA4FontVSgGGAA07_OffsetM0VGtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(Group<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<AnimatedSaveView.SaveState>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _OpacityEffect>, _ScaleEffect>, _TransactionModifier>, _AnimationModifier<AnimatedSaveView.SaveState>>)>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _TransactionModifier>, _EnvironmentKeyWritingModifier<Font?>>, _OffsetEffect>)>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

id LinkShareActivityViewController.__allocating_init(activityItems:applicationActivities:)(uint64_t a1, uint64_t a2)
{
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (a2)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIActivity);
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  v6 = [objc_allocWithZone(v2) initWithActivityItems:v4.super.isa applicationActivities:v5.super.isa];

  return v6;
}

id LinkShareActivityViewController.init(activityItems:applicationActivities:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC15ConversationKit31LinkShareActivityViewController_cnkActivityItems] = a1;

  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (a2)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIActivity);
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  v11.receiver = v2;
  v11.super_class = type metadata accessor for LinkShareActivityViewController();
  v6 = objc_msgSendSuper2(&v11, sel_initWithActivityItems_applicationActivities_, v4.super.isa, v5.super.isa);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14UIActivityTypeaGMd);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BC4BA940;
  v8 = *MEMORY[0x1E69CDB18];
  *(v7 + 32) = *MEMORY[0x1E69CDB18];
  v9 = v8;
  outlined bridged method (mbnn) of @objc UIActivityViewController.excludedActivityTypes.setter(v7, v6);
  return v6;
}

Swift::Void __swiftcall LinkShareActivityViewController._prepare(_:)(UIActivity a1)
{
  v32.receiver = v1;
  v32.super_class = type metadata accessor for LinkShareActivityViewController();
  objc_msgSendSuper2(&v32, sel__prepareActivity_, a1.super.isa);
  v3 = [(objc_class *)a1.super.isa activityType];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return;
    }
  }

  v11 = [(objc_class *)a1.super.isa activityViewController];
  if (!v11)
  {
    goto LABEL_17;
  }

  v12 = v11;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {

LABEL_17:
    if (one-time initialization token for conversationKit != -1)
    {
LABEL_30:
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.error.getter();
    os_log(_:dso:log:type:_:)();
    return;
  }

  v14 = v13;
  v15 = 0;
  v16 = *&v1[OBJC_IVAR____TtC15ConversationKit31LinkShareActivityViewController_cnkActivityItems];
  v17 = *(v16 + 16);
  v18 = v16 + 32;
  while (v17 != v15)
  {
    if (v15 >= *(v16 + 16))
    {
      __break(1u);
      goto LABEL_30;
    }

    outlined init with copy of Any(v18, v30);
    outlined init with copy of Any(v30, v29);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TULinkShareItem);
    if (swift_dynamicCast())
    {

      outlined init with take of Any(v30, &v31);
      if (swift_dynamicCast())
      {
        v19 = *&v30[0];
        type metadata accessor for LinkShareItemHTMLTextGenerator();
        v20 = static LinkShareItemHTMLTextGenerator.htmlFragment(forLinkShareItem:)(v19);
        if (v21)
        {
          v22 = MEMORY[0x1BFB209B0](v20);

          [v14 setMessageBody:v22 isHTML:1];
        }

        else
        {
          if (one-time initialization token for conversationKit != -1)
          {
            OUTLINED_FUNCTION_0_6();
          }

          static os_log_type_t.error.getter();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_1BC4BA940;
          *&v31 = v19;
          v24 = v19;
          v25 = String.init<A>(reflecting:)();
          v27 = v26;
          *(v23 + 56) = MEMORY[0x1E69E6158];
          *(v23 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v23 + 32) = v25;
          *(v23 + 40) = v27;
          os_log(_:dso:log:type:_:)();
        }

        return;
      }

      break;
    }

    ++v15;
    __swift_destroy_boxed_opaque_existential_1(v30);
    v18 += 32;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  static os_log_type_t.error.getter();
  os_log(_:dso:log:type:_:)();
}

id LinkShareActivityViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkShareActivityViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void outlined bridged method (mbnn) of @objc UIActivityViewController.excludedActivityTypes.setter(uint64_t a1, void *a2)
{
  type metadata accessor for UIActivityType(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setExcludedActivityTypes_];
}

void ScreenSharingInteraction.view.setter(void *a1)
{
  OUTLINED_FUNCTION_3_12();
  swift_unknownObjectWeakAssign();
}

uint64_t key path getter for ScreenSharingInteraction.view : ScreenSharingInteraction@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ScreenSharingInteraction.view : ScreenSharingInteraction(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x90);
  v4 = *a1;
  return v3(v2);
}

void (*ScreenSharingInteraction.view.modify(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_view;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return TapInteraction.view.modify;
}

void ScreenSharingInteraction.captureInteraction.didset(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v41 - v5;
  v7 = MEMORY[0x1E69E7D40];
  if (a1)
  {
    v8 = one-time initialization token for screenSharing;
    v42 = a1;
    if (v8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, &static Log.screenSharing);
    v10 = v2;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v44 = v14;
      *v13 = 136315138;
      v15 = (*((*v7 & *v10) + 0x88))();
      if (v15)
      {
        v43 = v15;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
        v16 = String.init<A>(reflecting:)();
        v18 = v17;
      }

      else
      {
        v16 = 7104878;
        v18 = 0xE300000000000000;
      }

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v44);

      *(v13 + 4) = v19;
      _os_log_impl(&dword_1BBC58000, v11, v12, "Removing screen sharing capture interaction from view: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1BFB23DF0](v14, -1, -1);
      MEMORY[0x1BFB23DF0](v13, -1, -1);

      v7 = MEMORY[0x1E69E7D40];
    }

    else
    {
    }

    v20 = (*((*v7 & *v10) + 0x88))();
    v21 = v42;
    if (v20)
    {
      v22 = v20;
      [v20 removeInteraction_];
    }

    v23 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v23);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = v21;
    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5();
  }

  v25 = *&v2[OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_captureInteraction];
  if (v25)
  {
    v26 = one-time initialization token for screenSharing;
    v27 = v25;
    if (v26 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, &static Log.screenSharing);
    v29 = v2;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v44 = v33;
      *v32 = 136315138;
      v34 = (*((*v7 & *v29) + 0x88))();
      if (v34)
      {
        v43 = v34;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
        v35 = String.init<A>(reflecting:)();
        v37 = v36;
      }

      else
      {
        v35 = 7104878;
        v37 = 0xE300000000000000;
      }

      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v44);

      *(v32 + 4) = v38;
      _os_log_impl(&dword_1BBC58000, v30, v31, "Adding screen sharing capture interaction to view: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1BFB23DF0](v33, -1, -1);
      MEMORY[0x1BFB23DF0](v32, -1, -1);
    }

    else
    {
    }

    v39 = (*((*v7 & *v29) + 0x88))();
    if (v39)
    {
      v40 = v39;
      [v39 addInteraction_];
    }

    (*((*v7 & *v29) + 0x100))();
    CaptureUIInteraction.deviceOrientation.setter();
  }
}

uint64_t closure #1 in ScreenSharingInteraction.captureInteraction.didset()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in SyncedScreeningAlphaGradientView.gradient(for:);

  return MEMORY[0x1EEE33AF8]();
}

void ScreenSharingInteraction.captureInteraction.setter(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_captureInteraction);
  *(v1 + OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_captureInteraction) = a1;
  v2 = a1;
  ScreenSharingInteraction.captureInteraction.didset(v3);
}

uint64_t key path getter for ScreenSharingInteraction.isEnabled : ScreenSharingInteraction@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xD0))();
  *a2 = result & 1;
  return result;
}

unint64_t ScreenSharingInteraction.isEnabled.didset(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_isEnabled;
  result = swift_beginAccess();
  if (*(v2 + v4) != v3)
  {
    v6 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & **(v2 + OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_interactionController)) + 0x178))(&v7, result);
    (*((*v6 & *v2) + 0x128))(&v7);
    return outlined consume of RemoteControlState(v7);
  }

  return result;
}

uint64_t ScreenSharingInteraction.isEnabled.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_isEnabled;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

unint64_t ScreenSharingInteraction.isEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_isEnabled;
  OUTLINED_FUNCTION_3_12();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return ScreenSharingInteraction.isEnabled.didset(v4);
}

void (*ScreenSharingInteraction.isEnabled.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_isEnabled;
  OUTLINED_FUNCTION_12_1();
  *(v3 + 32) = *(v1 + v4);
  return ScreenSharingInteraction.isEnabled.modify;
}

void ScreenSharingInteraction.isEnabled.modify(uint64_t a1)
{
  v1 = *a1;
  ScreenSharingInteraction.isEnabled.setter(*(*a1 + 32));

  free(v1);
}

unint64_t ScreenSharingInteraction.displayScale.didset(double a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_displayScale;
  result = swift_beginAccess();
  if (*(v2 + v4) != a1)
  {
    v6 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & **(v2 + OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_interactionController)) + 0x178))(&v7, result);
    (*((*v6 & *v2) + 0x128))(&v7);
    return outlined consume of RemoteControlState(v7);
  }

  return result;
}

double ScreenSharingInteraction.displayScale.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_displayScale;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

unint64_t ScreenSharingInteraction.displayScale.setter(double a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_displayScale;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return ScreenSharingInteraction.displayScale.didset(v4);
}

void (*ScreenSharingInteraction.displayScale.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_displayScale;
  OUTLINED_FUNCTION_12_1();
  v3[3] = *(v1 + v4);
  return ScreenSharingInteraction.displayScale.modify;
}

void ScreenSharingInteraction.displayScale.modify(uint64_t a1)
{
  v1 = *a1;
  ScreenSharingInteraction.displayScale.setter(*(*a1 + 24));

  free(v1);
}

uint64_t key path getter for ScreenSharingInteraction.deviceOrientation : ScreenSharingInteraction@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x100))();
  *a2 = result;
  return result;
}

void ScreenSharingInteraction.deviceOrientation.didset()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_captureInteraction);
  if (v1)
  {
    swift_beginAccess();
    v2 = v1;
    CaptureUIInteraction.deviceOrientation.setter();
  }
}

uint64_t ScreenSharingInteraction.deviceOrientation.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_deviceOrientation;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

void ScreenSharingInteraction.deviceOrientation.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_deviceOrientation;
  OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
  ScreenSharingInteraction.deviceOrientation.didset();
}

void (*ScreenSharingInteraction.deviceOrientation.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return ScreenSharingInteraction.deviceOrientation.modify;
}

void ScreenSharingInteraction.deviceOrientation.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    ScreenSharingInteraction.deviceOrientation.didset();
  }
}

id ScreenSharingInteraction.init(interactionController:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v34 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit18RemoteControlStateO_GMd);
  OUTLINED_FUNCTION_1();
  v34 = v7;
  v35 = v6;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy15ConversationKit18RemoteControlStateO_GSo17OS_dispatch_queueCGMd);
  OUTLINED_FUNCTION_1();
  v37 = v12;
  v38 = v11;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  v36 = &v34 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit31ScreenSharingInteractionSessionCSg_GMd);
  OUTLINED_FUNCTION_1();
  v17 = v16;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - v19;
  swift_unknownObjectWeakInit();
  if (specialized Array.count.getter(MEMORY[0x1E69E7CC0]))
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v21 = MEMORY[0x1E69E7CD0];
  }

  *&v1[OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_cancellables] = v21;
  *&v1[OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_captureInteraction] = 0;
  v1[OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_isEnabled] = 1;
  *&v1[OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_displayScale] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_deviceOrientation] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_interactionController] = a1;
  v22 = type metadata accessor for ScreenSharingInteraction();
  v40.receiver = v1;
  v40.super_class = v22;
  v23 = a1;
  v24 = objc_msgSendSuper2(&v40, sel_init);
  v25 = *((*MEMORY[0x1E69E7D40] & *v23) + 0x110);
  v26 = v24;
  v25();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<ScreenSharingInteractionSession?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy15ConversationKit31ScreenSharingInteractionSessionCSg_GMd);
  Publisher<>.sink(receiveValue:)();

  (*(v17 + 8))(v20, v15);
  OUTLINED_FUNCTION_8_86();
  AnyCancellable.store(in:)();
  swift_endAccess();

  (*((*MEMORY[0x1E69E7D40] & *v23) + 0x190))(v27);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v28 = static OS_dispatch_queue.main.getter();
  v39 = v28;
  v29 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v29);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<RemoteControlState>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy15ConversationKit18RemoteControlStateO_GMd);
  lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
  v30 = v35;
  v31 = v36;
  Publisher.receive<A>(on:options:)();
  outlined destroy of OS_dispatch_queue.SchedulerOptions?(v5);

  (*(v34 + 8))(v10, v30);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Published<RemoteControlState>.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy15ConversationKit18RemoteControlStateO_GSo17OS_dispatch_queueCGMd);
  v32 = v38;
  Publisher<>.sink(receiveValue:)();

  (*(v37 + 8))(v31, v32);
  OUTLINED_FUNCTION_8_86();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v26;
}

void closure #1 in ScreenSharingInteraction.init(interactionController:)(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x120))(v1);
  }
}

void closure #2 in ScreenSharingInteraction.init(interactionController:)(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = v1;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x128))(&v4);
  }
}

void ScreenSharingInteraction.updateCaptureInteraction(using:)(uint64_t a1)
{
  ScreenSharingInteraction.captureInteraction.setter(0);
  if (a1)
  {
    v3 = *(*a1 + 312);

    v5 = v3(v4);
    ScreenSharingInteraction.captureInteraction.setter(v5);
    v6 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_interactionController)) + 0x178))(&v7);
    (*((*v6 & *v1) + 0x128))(&v7);

    outlined consume of RemoteControlState(v7);
  }
}

void ScreenSharingInteraction.updateCaptureInteraction(using:)(unint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for InteractionState();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = (&v34 - v12);
  v14 = *a1;
  v15 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0xD0))(v11))
  {
    if (one-time initialization token for screenSharing != -1)
    {
      OUTLINED_FUNCTION_0_7();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, &static Log.screenSharing);
    outlined copy of RemoteControlState(v14);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    outlined consume of RemoteControlState(v14);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = v14;
      v37 = v35;
      *v19 = 136315138;
      outlined copy of RemoteControlState(v14);
      v20 = String.init<A>(reflecting:)();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v37);

      *(v19 + 4) = v22;
      _os_log_impl(&dword_1BBC58000, v17, v18, "Updating capture UI interaction for remote control state: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      OUTLINED_FUNCTION_27();
      v15 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_27();
    }

    v23 = *(v2 + OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_captureInteraction);
    if (v23)
    {
      v24 = *((*v15 & *v2) + 0xE8);
      v25 = v23;
      v24();
      v27 = MEMORY[0x1E69C9D48];
      v28 = 1 << (v14 >> 61);
      if ((v28 & 0x23) != 0)
      {
        *v13 = v26;
        v27 = MEMORY[0x1E69C9D40];
      }

      else if ((v28 & 0xC) != 0)
      {
        v27 = MEMORY[0x1E69C9D50];
      }

      (*(v6 + 104))(v13, *v27, v4);
      goto LABEL_18;
    }
  }

  else
  {
    if (one-time initialization token for screenSharing != -1)
    {
      OUTLINED_FUNCTION_0_7();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, &static Log.screenSharing);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1BBC58000, v30, v31, "Screen sharing interactions are disabled, pausing capture UI interaction", v32, 2u);
      OUTLINED_FUNCTION_27();
    }

    v33 = *(v2 + OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_captureInteraction);
    if (v33)
    {
      (*(v6 + 104))(v9, *MEMORY[0x1E69C9D48], v4);
      v25 = v33;
LABEL_18:
      CaptureUIInteraction.interactionState.setter();
    }
  }
}

id ScreenSharingInteraction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ScreenSharingInteraction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenSharingInteraction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall ScreenSharingInteraction.willMove(to:)(UIView_optional *to)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x88))(to);
  if (!v3)
  {
LABEL_8:
    OUTLINED_FUNCTION_7_17();
    return;
  }

  v19 = v3;
  (*((*v2 & *v1) + 0x90))(0);
  v4 = *(v1 + OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_captureInteraction);
  if (v4)
  {
    v5 = one-time initialization token for screenSharing;
    v6 = v4;
    if (v5 != -1)
    {
      OUTLINED_FUNCTION_0_7();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, &static Log.screenSharing);
    v8 = v19;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136315138;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
      v13 = v8;
      v14 = String.init<A>(reflecting:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v20);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_1BBC58000, v9, v10, "Removing screen sharing capture interaction from previous view: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    [v8 removeInteraction_];
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_7_17();
}

Swift::Void __swiftcall ScreenSharingInteraction.didMove(to:)(UIView_optional *to)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x90);
  v4 = to;
  v3(to);
  if (!to)
  {
    goto LABEL_7;
  }

  v5 = *(v1 + OBJC_IVAR____TtC15ConversationKit24ScreenSharingInteraction_captureInteraction);
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v4;
  v19 = v5;
  [(UIView_optional *)v6 addInteraction:?];
  if (one-time initialization token for screenSharing != -1)
  {
    OUTLINED_FUNCTION_0_7();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, &static Log.screenSharing);
  v8 = v6;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
    v13 = v8;
    v14 = String.init<A>(reflecting:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v20);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1BBC58000, v9, v10, "Adding screen sharing capture interaction to new view: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();

LABEL_7:
    OUTLINED_FUNCTION_7_17();
    return;
  }

  OUTLINED_FUNCTION_7_17();
}

uint64_t dispatch thunk of ScreenSharingInteraction.updateCaptureInteraction(using:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x120))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x128))();
}

uint64_t partial apply for closure #1 in ScreenSharingInteraction.captureInteraction.didset()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in SyncedScreeningAlphaGradientView.gradient(for:);

  return closure #1 in ScreenSharingInteraction.captureInteraction.didset();
}

void __swiftcall UILabel.init(font:textColor:)(UILabel *__return_ptr retstr, UIFont font, UIColor_optional textColor)
{
  isa = textColor.value.super.isa;
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v5 setFont_];
  if (isa)
  {
    v6 = isa;
    [v5 setTextColor_];
  }
}

uint64_t default argument 1 of RemoteControlOnboardingView.init(requestingParticipant:horizontalSizeClass:)@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);

  return swift_storeEnumTagMultiPayload();
}

uint64_t RemoteControlOnboardingView.init(requestingParticipant:horizontalSizeClass:)@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_135();
  _s15ConversationKit11ParticipantVWObTm_5();
  v2 = *(type metadata accessor for RemoteControlOnboardingView() + 20);
  *(a1 + v2) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  swift_storeEnumTagMultiPayload();
  return outlined init with take of CaptionSectioner.SpeakerSection?();
}

double PresentationAutomaticHeightModifier.calculatedHeight.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMd);
  State.wrappedValue.getter();
  return v1;
}

void (*PresentationAutomaticHeightModifier.calculatedHeight.modify(double **a1, uint64_t a2, double a3))(uint64_t a1)
{
  v6 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v6;
  *(v6 + 7) = a2;
  v6[6] = a3;
  *v6 = a3;
  *(v6 + 1) = a2;

  *(v6 + 8) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMd);
  State.wrappedValue.getter();
  return PresentationAutomaticHeightModifier.calculatedHeight.modify;
}

void PresentationAutomaticHeightModifier.calculatedHeight.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = *(*a1 + 56);
  *(*a1 + 16) = *(*a1 + 48);
  v1[3] = v3;
  v1[5] = v2;
  State.wrappedValue.setter();

  free(v1);
}

double PresentationAutomaticHeightModifier.$calculatedHeight.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMd);
  State.projectedValue.getter();
  return v1;
}

uint64_t PresentationAutomaticHeightModifier.body(content:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy15ConversationKit027PresentationAutomaticHeightF0VGAA011_BackgroundF0VyACyAA5ColorVAA015_GeometryActionF0Vy12CoreGraphics7CGFloatVGGGGMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v18 - v8;
  v10 = static Alignment.center.getter();
  v12 = v11;
  v13 = static Color.clear.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit027PresentationAutomaticHeightD0VGMd);
  OUTLINED_FUNCTION_7_0();
  (*(v15 + 16))(v9, a1);
  v16 = &v9[*(v6 + 36)];
  *v16 = v13;
  v16[1] = closure #1 in closure #1 in PresentationAutomaticHeightModifier.body(content:);
  v16[2] = 0;
  v16[3] = partial apply for closure #2 in closure #1 in PresentationAutomaticHeightModifier.body(content:);
  v16[4] = v14;
  v16[5] = v10;
  v16[6] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI18PresentationDetentVGMd);
  type metadata accessor for PresentationDetent();
  *(swift_allocObject() + 16) = xmmword_1BC4BA940;
  *&v18[2] = a3;
  v18[3] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMd);
  State.wrappedValue.getter();
  static PresentationDetent.height(_:)();
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI18PresentationDetentV_Tt0g5();
  lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<PresentationAutomaticHeightModifier>, _BackgroundModifier<ModifiedContent<Color, _GeometryActionModifier<CGFloat>>>> and conformance <> ModifiedContent<A, B>();
  View.presentationDetents(_:)();

  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy15ConversationKit027PresentationAutomaticHeightF0VGAA011_BackgroundF0VyACyAA5ColorVAA015_GeometryActionF0Vy12CoreGraphics7CGFloatVGGGGMd);
}

uint64_t closure #1 in closure #1 in PresentationAutomaticHeightModifier.body(content:)@<X0>(void *a1@<X8>)
{
  result = GeometryProxy.size.getter();
  *a1 = v3;
  return result;
}

uint64_t View.presentationAutomaticHeight()(uint64_t a1, uint64_t a2)
{
  State.init(wrappedValue:)();
  MEMORY[0x1BFB1FAD0](&v5, a1, &type metadata for PresentationAutomaticHeightModifier, a2);
}

id ContactAvatarView.makeUIView(context:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(MEMORY[0x1E695D0C0]);

  return [v3 initWithContact_];
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ContactAvatarView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ContactAvatarView and conformance ContactAvatarView();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ContactAvatarView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ContactAvatarView and conformance ContactAvatarView();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance ContactAvatarView()
{
  lazy protocol witness table accessor for type ContactAvatarView and conformance ContactAvatarView();
  UIViewRepresentable.body.getter();
  __break(1u);
}

void RemoteControlOnboardingView.horizontalSizeClass.getter()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for EnvironmentValues();
  OUTLINED_FUNCTION_2_12();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  type metadata accessor for RemoteControlOnboardingView();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of CaptionSectioner.SpeakerSection?();
  }

  else
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v6, v0);
  }

  OUTLINED_FUNCTION_30_0();
}

void RemoteControlOnboardingView.body.getter()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v2 = type metadata accessor for RemoteControlOnboardingView();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyAA6SpacerV_AA6ButtonVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundO0VyAA06_ShapeG0VyAA6CircleVAA5ColorVGGGAQyA5_SgGGGtGG_ACyAkA06_FrameR0VGACy15ConversationKit013ContactAvatarG033_E7E991686AA57F7698F87F3F451BA23ALLVA16_GA17_ACyACyAA4TextVAQyAA13TextAlignmentOGGAA010_FixedSizeR0VGA17_A31_A17_AIyAGyAMyACyACyACyACyACyA24_AXGAA05_FlexwR0VGAA11_ClipEffectVyAA9RectangleVGGA_yA1_yAA16RoundedRectangleVA5_GGGA10_GG_A48_tGGA17_tGGAXGAA017_AppearanceActionO0VGA30_GA18_027PresentationAutomaticHeightO0VGMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v14 - v5;
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6HStackVyAIyAA6SpacerV_AA6ButtonVyAA15ModifiedContentVyAQyAQyAQyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingG0VGAA011_BackgroundR0VyAA06_ShapeD0VyAA6CircleVAA5ColorVGGGAUyA9_SgGGGtGG_AQyAmA06_FrameG0VGAQy15ConversationKit013ContactAvatarD033_E7E991686AA57F7698F87F3F451BA23ALLVA20_GA21_AQyAQyAA4TextVAUyAA13TextAlignmentOGGAA010_FixedSizeG0VGA21_A35_A21_AKyAIyAOyAQyAQyAQyAQyAQyA28_A0_GAA05_FlexyG0VGAA11_ClipEffectVyAA9RectangleVGGA3_yA5_yAA16RoundedRectangleVA9_GGGA14_GG_A52_tGGA21_tGGMd);
  closure #1 in RemoteControlOnboardingView.body.getter(v1, &v6[*(v7 + 44)]);
  v8 = static Edge.Set.all.getter();
  v9 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyAA6SpacerV_AA6ButtonVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundO0VyAA06_ShapeG0VyAA6CircleVAA5ColorVGGGAQyA5_SgGGGtGG_ACyAkA06_FrameR0VGACy15ConversationKit013ContactAvatarG033_E7E991686AA57F7698F87F3F451BA23ALLVA16_GA17_ACyACyAA4TextVAQyAA13TextAlignmentOGGAA010_FixedSizeR0VGA17_A31_A17_AIyAGyAMyACyACyACyACyACyA24_AXGAA05_FlexwR0VGAA11_ClipEffectVyAA9RectangleVGGA_yA1_yAA16RoundedRectangleVA5_GGGA10_GG_A48_tGGA17_tGGAXGMd) + 36)];
  *v9 = v8;
  *(v9 + 8) = 0u;
  *(v9 + 24) = 0u;
  v9[40] = 1;
  _s15ConversationKit11ParticipantVWOcTm_11();
  v10 = swift_allocObject();
  _s15ConversationKit11ParticipantVWObTm_5();
  v11 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyAA6SpacerV_AA6ButtonVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundO0VyAA06_ShapeG0VyAA6CircleVAA5ColorVGGGAQyA5_SgGGGtGG_ACyAkA06_FrameR0VGACy15ConversationKit013ContactAvatarG033_E7E991686AA57F7698F87F3F451BA23ALLVA16_GA17_ACyACyAA4TextVAQyAA13TextAlignmentOGGAA010_FixedSizeR0VGA17_A31_A17_AIyAGyAMyACyACyACyACyACyA24_AXGAA05_FlexwR0VGAA11_ClipEffectVyAA9RectangleVGGA_yA1_yAA16RoundedRectangleVA5_GGGA10_GG_A48_tGGA17_tGGAXGAA017_AppearanceActionO0VGMd) + 36)];
  *v11 = partial apply for closure #2 in RemoteControlOnboardingView.body.getter;
  v11[1] = v10;
  v11[2] = 0;
  v11[3] = 0;
  *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyAA6SpacerV_AA6ButtonVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundO0VyAA06_ShapeG0VyAA6CircleVAA5ColorVGGGAQyA5_SgGGGtGG_ACyAkA06_FrameR0VGACy15ConversationKit013ContactAvatarG033_E7E991686AA57F7698F87F3F451BA23ALLVA16_GA17_ACyACyAA4TextVAQyAA13TextAlignmentOGGAA010_FixedSizeR0VGA17_A31_A17_AIyAGyAMyACyACyACyACyACyA24_AXGAA05_FlexwR0VGAA11_ClipEffectVyAA9RectangleVGGA_yA1_yAA16RoundedRectangleVA5_GGGA10_GG_A48_tGGA17_tGGAXGAA017_AppearanceActionO0VGA30_GMd) + 36)] = 256;
  v14[1] = 0;
  State.init(wrappedValue:)();
  v12 = v14[3];
  v13 = &v6[*(v3 + 36)];
  *v13 = v14[2];
  *(v13 + 1) = v12;
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(Spacer, Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Circle, Color>>>, _EnvironmentKeyWritingModifier<Color?>>>)>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ContactAvatarView, _FrameLayout>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FixedSizeLayout>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FixedSizeLayout>, ModifiedContent<Spacer, _FrameLayout>, HStack<TupleView<(Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>, _ClipEffect<Rectangle>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Col();
  View.interactiveDismissDisabled(_:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyAA6SpacerV_AA6ButtonVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundO0VyAA06_ShapeG0VyAA6CircleVAA5ColorVGGGAQyA5_SgGGGtGG_ACyAkA06_FrameR0VGACy15ConversationKit013ContactAvatarG033_E7E991686AA57F7698F87F3F451BA23ALLVA16_GA17_ACyACyAA4TextVAQyAA13TextAlignmentOGGAA010_FixedSizeR0VGA17_A31_A17_AIyAGyAMyACyACyACyACyACyA24_AXGAA05_FlexwR0VGAA11_ClipEffectVyAA9RectangleVGGA_yA1_yAA16RoundedRectangleVA5_GGGA10_GG_A48_tGGA17_tGGAXGAA017_AppearanceActionO0VGA30_GA18_027PresentationAutomaticHeightO0VGMd);
  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in RemoteControlOnboardingView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v153 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA6ButtonVyAA15ModifiedContentVyAIyAIyAIyAIyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameK0VGAA11_ClipEffectVyAA9RectangleVGGAA19_BackgroundModifierVyAA06_ShapeE0VyAA07RoundedP0VAA5ColorVGGGAA022_EnvironmentKeyWritingR0VyA3_SgGGG_A12_tGGMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v152 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v151 = (&v121 - v6);
  v140 = type metadata accessor for UserInterfaceSizeClass();
  v156 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v136 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
  MEMORY[0x1EEE9AC00](v157);
  v143 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v139 = &v121 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v135 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v142 = &v121 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v155 = &v121 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v134 = &v121 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v154 = &v121 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v141 = &v121 - v22;
  v23 = type metadata accessor for RemoteControlOnboardingView() - 8;
  MEMORY[0x1EEE9AC00](v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundJ0VyAA10_ShapeViewVyAA6CircleVAA5ColorVGGGAIyAYSgGGGMd);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v148 = &v121 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v121 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA6ButtonVyAA15ModifiedContentVyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundN0VyAA06_ShapeE0VyAA6CircleVAA5ColorVGGGAOyA3_SgGGGtGGMd);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v150 = &v121 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v121 - v33;
  *v34 = static VerticalAlignment.center.getter();
  *(v34 + 1) = 0;
  v34[16] = 1;
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerV_AA6ButtonVyAA15ModifiedContentVyAOyAOyAOyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingG0VGAA011_BackgroundQ0VyAA06_ShapeD0VyAA6CircleVAA5ColorVGGGASyA7_SgGGGtGGMd) + 44);
  v149 = v34;
  v36 = &v34[v35];
  _s15ConversationKit11ParticipantVWOcTm_11();
  swift_allocObject();
  _s15ConversationKit11ParticipantVWObTm_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundI0VyAA10_ShapeViewVyAA6CircleVAA5ColorVGGGAGyAWSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Circle, Color>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  v37 = *(v25 + 16);
  v38 = v148;
  v37(v148, v29, v24);
  *v36 = 0;
  v36[8] = 1;
  v39 = &v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerV_AA6ButtonVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundK0VyAA10_ShapeViewVyAA6CircleVAA5ColorVGGGAKyA_SgGGGtMd) + 48)];
  v40 = v140;
  v37(v39, v38, v24);
  v41 = *(v25 + 8);
  v42 = v29;
  v43 = v139;
  v41(v42, v24);
  v41(v38, v24);
  v44 = v157;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v147 = v264;
  v148 = v262;
  v145 = v267;
  v146 = v266;
  v303 = 1;
  v301 = v263;
  v299 = v265;
  v158 = a1;
  Participant.contactDetails.getter();
  v45 = v224;

  v46 = v156;
  if (!v45)
  {
    v47 = *(v158 + *(type metadata accessor for Participant(0) + 28));
    if (v47)
    {
      v48 = [objc_allocWithZone(MEMORY[0x1E695CF18]) _initWithHandle_];
    }

    else
    {
      v48 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
    }

    v45 = v48;
    v46 = v156;
  }

  v144 = v45;
  v49 = v141;
  RemoteControlOnboardingView.horizontalSizeClass.getter();
  v50 = *(v46 + 104);
  v51 = v154;
  LODWORD(v138) = *MEMORY[0x1E697FF40];
  v137 = v50;
  v50(v154);
  __swift_storeEnumTagSinglePayload(v51, 0, 1, v40);
  v52 = *(v44 + 48);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v53 = v43;
  if (__swift_getEnumTagSinglePayload(v43, 1, v40) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v51, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    v53 = v43;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v49, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    if (__swift_getEnumTagSinglePayload(v43 + v52, 1, v40) == 1)
    {
      v54 = &_s7SwiftUI22UserInterfaceSizeClassOSgMd;
LABEL_12:
      v56 = v53;
      goto LABEL_14;
    }

LABEL_11:
    v54 = &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd;
    goto LABEL_12;
  }

  v55 = v134;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(v53 + v52, 1, v40) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v154, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v49, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    (*(v46 + 8))(v55, v40);
    goto LABEL_11;
  }

  v57 = v136;
  (*(v46 + 32))(v136, v53 + v52, v40);
  lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass();
  dispatch thunk of static Equatable.== infix(_:_:)();
  v58 = *(v46 + 8);
  v58(v57, v40);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v154, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v49, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  v58(v55, v40);
  v56 = v53;
  v54 = &_s7SwiftUI22UserInterfaceSizeClassOSgMd;
LABEL_14:
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v56, v54);
  v59 = v143;
  v60 = v155;
  v61 = v157;
  RemoteControlOnboardingView.horizontalSizeClass.getter();
  v62 = v142;
  v137(v142, v138, v40);
  __swift_storeEnumTagSinglePayload(v62, 0, 1, v40);
  v63 = *(v61 + 48);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(v59, 1, v40) != 1)
  {
    v65 = v135;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    if (__swift_getEnumTagSinglePayload(v59 + v63, 1, v40) != 1)
    {
      v67 = v156;
      v68 = v136;
      (*(v156 + 32))(v136, v59 + v63, v40);
      lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass();
      dispatch thunk of static Equatable.== infix(_:_:)();
      v69 = *(v67 + 8);
      v69(v68, v40);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v62, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v155, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      v69(v65, v40);
      v66 = v59;
      v64 = &_s7SwiftUI22UserInterfaceSizeClassOSgMd;
      goto LABEL_22;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v62, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v155, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    (*(v156 + 8))(v65, v40);
    goto LABEL_19;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v62, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v60, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  if (__swift_getEnumTagSinglePayload(v59 + v63, 1, v40) != 1)
  {
LABEL_19:
    v64 = &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd;
    goto LABEL_20;
  }

  v64 = &_s7SwiftUI22UserInterfaceSizeClassOSgMd;
LABEL_20:
  v66 = v59;
LABEL_22:
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v66, v64);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v155 = v268;
  LODWORD(v154) = v269;
  v143 = v270;
  LODWORD(v142) = v271;
  v140 = v273;
  v141 = v272;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v138 = v274;
  v139 = v276;
  v156 = v279;
  v157 = v278;
  v239 = 1;
  v237 = v275;
  v235 = v277;
  v128 = objc_opt_self();
  v70 = [v128 conversationKit];
  v304._object = 0xE000000000000000;
  v71.value._countAndFlagsBits = 0x61737265766E6F43;
  v71.value._object = 0xEF74694B6E6F6974;
  v72._object = 0x80000001BC511F00;
  v72._countAndFlagsBits = 0xD000000000000018;
  v73._countAndFlagsBits = 0;
  v73._object = 0xE000000000000000;
  v304._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v72, v71, v70, v73, v304);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1BC4BA940;
  Participant.contactDetails.getter();
  v75 = v224;

  Participant.name(_:)();
  v77 = v76;
  v79 = v78;

  *(v74 + 56) = MEMORY[0x1E69E6158];
  *(v74 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v74 + 32) = v77;
  *(v74 + 40) = v79;
  v80 = String.init(format:_:)();
  v82 = v81;

  v224 = v80;
  v225 = v82;
  v127 = lazy protocol witness table accessor for type String and conformance String();
  v83 = Text.init<A>(_:)();
  v85 = v84;
  LOBYTE(v74) = v86;
  static Font.title.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v87 = Text.font(_:)();
  v89 = v88;
  LOBYTE(v75) = v90;

  outlined consume of Text.Storage(v83, v85, v74 & 1);

  LODWORD(v224) = static HierarchicalShapeStyle.primary.getter();
  v91 = Text.foregroundStyle<A>(_:)();
  v136 = v92;
  v137 = v91;
  LOBYTE(v85) = v93;
  v135 = v94;
  outlined consume of Text.Storage(v87, v89, v75 & 1);

  KeyPath = swift_getKeyPath();
  v130 = v85 & 1;
  LOBYTE(v224) = v85 & 1;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v129 = v280;
  v131 = v282;
  v133 = v285;
  v134 = v284;
  v245 = 1;
  v243 = v281;
  v241 = v283;
  v95 = [v128 conversationKit];
  v305._object = 0xE000000000000000;
  v96._countAndFlagsBits = 0xD000000000000024;
  v96._object = 0x80000001BC511F20;
  v97.value._countAndFlagsBits = 0x61737265766E6F43;
  v97.value._object = 0xEF74694B6E6F6974;
  v98._countAndFlagsBits = 0;
  v98._object = 0xE000000000000000;
  v305._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v96, v97, v95, v98, v305);

  v99 = String.init(format:_:)();
  v101 = v100;

  v224 = v99;
  v225 = v101;
  v102 = Text.init<A>(_:)();
  v104 = v103;
  LOBYTE(v75) = v105;
  LODWORD(v224) = static HierarchicalShapeStyle.primary.getter();
  v106 = Text.foregroundStyle<A>(_:)();
  v127 = v107;
  v128 = v106;
  v109 = v108;
  v126 = v110;
  outlined consume of Text.Storage(v102, v104, v75 & 1);

  v111 = swift_getKeyPath();
  LOBYTE(v75) = v109 & 1;
  LOBYTE(v224) = v109 & 1;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v112 = v286;
  v125 = v290;
  v123 = v288;
  v124 = v291;
  v251 = 1;
  v249 = v287;
  v247 = v289;
  v113 = static VerticalAlignment.center.getter();
  v114 = v151;
  *v151 = v113;
  *(v114 + 8) = 0;
  *(v114 + 16) = 1;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6ButtonVyAA15ModifiedContentVyAMyAMyAMyAMyAA4TextVAA08_PaddingG0VGAA010_FlexFrameG0VGAA11_ClipEffectVyAA9RectangleVGGAA19_BackgroundModifierVyAA06_ShapeD0VyAA07RoundedR0VAA5ColorVGGGAA022_EnvironmentKeyWritingT0VyA7_SgGGG_A16_tGGMd);
  closure #3 in closure #1 in RemoteControlOnboardingView.body.getter(v158, (v114 + *(v115 + 44)));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v116 = v292;
  v158 = v296;
  v121 = v294;
  v122 = v297;
  v257 = 1;
  v255 = v293;
  v253 = v295;
  v118 = v149;
  v117 = v150;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v216 = v148;
  v219 = v147;
  v222 = v146;
  v223 = v145;
  v214 = v303;
  *v215 = *v302;
  *&v215[3] = *&v302[3];
  v217 = v301;
  *v218 = *v300;
  *&v218[3] = *&v300[3];
  v220 = v299;
  *v221 = *v298;
  v213 = 0;
  *&v221[3] = *&v298[3];
  v224 = v117;
  v225 = &v213;
  v207[0] = v144;
  v207[1] = v155;
  v208 = v154;
  v209 = v143;
  v210 = v142;
  v211 = v141;
  v212 = v140;
  v196 = 0;
  v197 = v239;
  *v198 = *v238;
  *&v198[3] = *&v238[3];
  v199 = v138;
  v200 = v237;
  *v201 = *v236;
  *&v201[3] = *&v236[3];
  v202 = v139;
  v203 = v235;
  *&v204[3] = *&v234[3];
  *v204 = *v234;
  v205 = v157;
  v206 = v156;
  v226 = v207;
  v227 = &v196;
  *&v194 = v137;
  *(&v194 + 1) = v136;
  LOBYTE(v195[0]) = v130;
  *(&v195[0] + 1) = v135;
  *&v195[1] = KeyPath;
  WORD4(v195[1]) = 1;
  BYTE10(v195[1]) = 1;
  v183 = 0;
  v184 = v245;
  *v185 = *v244;
  *&v185[3] = *&v244[3];
  v186 = v129;
  v187 = v243;
  *v188 = *v242;
  *&v188[3] = *&v242[3];
  v189 = v131;
  v190 = v241;
  *&v191[3] = *&v240[3];
  *v191 = *v240;
  v192 = v134;
  v193 = v133;
  v228 = &v194;
  v229 = &v183;
  *&v181 = v128;
  *(&v181 + 1) = v127;
  LOBYTE(v182[0]) = v75;
  *(&v182[0] + 1) = v126;
  *&v182[1] = v111;
  WORD4(v182[1]) = 1;
  BYTE10(v182[1]) = 1;
  v170 = 0;
  v171 = v251;
  *v172 = *v250;
  *&v172[3] = *&v250[3];
  v173 = v112;
  v174 = v249;
  *v175 = *v248;
  *&v175[3] = *&v248[3];
  v176 = v123;
  v177 = v247;
  *&v178[3] = *&v246[3];
  *v178 = *v246;
  v179 = v125;
  v180 = v124;
  v230 = &v181;
  v231 = &v170;
  v119 = v152;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v159 = 0;
  v160 = v257;
  *v161 = *v256;
  *&v161[3] = *&v256[3];
  v162 = v116;
  v163 = v255;
  *v164 = *v254;
  *&v164[3] = *&v254[3];
  v165 = v121;
  v166 = v253;
  *v167 = *v252;
  *&v167[3] = *&v252[3];
  v168 = v158;
  v169 = v122;
  v232 = v119;
  v233 = &v159;
  _s7SwiftUI11ViewBuilderV10buildBlockyAA05TupleC0VyxxQp_tGxxQpRvzAA0C0RzlFZAA6HStackVyAFyAA6SpacerV_AA6ButtonVyAA15ModifiedContentVyAPyAPyAPyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundQ0VyAA06_ShapeC0VyAA6CircleVAA5ColorVGGGATyA8_SgGGGtGG_APyAlA06_FrameT0VGAPy15ConversationKit013ContactAvatarC033_E7E991686AA57F7698F87F3F451BA23ALLVA19_GA20_APyAPyAA4TextVATyAA13TextAlignmentOGGAA010_FixedSizeT0VGA20_A34_A20_AJyAFyANyAPyAPyAPyAPyAPyA27_A_GAA05_FlexyT0VGAA11_ClipEffectVyAA9RectangleVGGA2_yA4_yAA16RoundedRectangleVA8_GGGA13_GG_A51_tGGA20_QP_Tt1g5(&v224, v153);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v114, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6ButtonVyAA15ModifiedContentVyAIyAIyAIyAIyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameK0VGAA11_ClipEffectVyAA9RectangleVGGAA19_BackgroundModifierVyAA06_ShapeE0VyAA07RoundedP0VAA5ColorVGGGAA022_EnvironmentKeyWritingR0VyA3_SgGGG_A12_tGGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v118, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA6ButtonVyAA15ModifiedContentVyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundN0VyAA06_ShapeE0VyAA6CircleVAA5ColorVGGGAOyA3_SgGGGtGGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v119, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6ButtonVyAA15ModifiedContentVyAIyAIyAIyAIyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameK0VGAA11_ClipEffectVyAA9RectangleVGGAA19_BackgroundModifierVyAA06_ShapeE0VyAA07RoundedP0VAA5ColorVGGGAA022_EnvironmentKeyWritingR0VyA3_SgGGG_A12_tGGMd);
  v258 = v181;
  v259[0] = v182[0];
  *(v259 + 11) = *(v182 + 11);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v258, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FixedSizeLayoutVGMd);
  v260 = v194;
  v261[0] = v195[0];
  *(v261 + 11) = *(v195 + 11);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v260, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FixedSizeLayoutVGMd);

  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v117, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA6ButtonVyAA15ModifiedContentVyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundN0VyAA06_ShapeE0VyAA6CircleVAA5ColorVGGGAOyA3_SgGGGtGGMd);
}

Swift::Void __swiftcall RemoteControlOnboardingView.didDismiss(remoteControl:)(Swift::Bool remoteControl)
{
  type metadata accessor for DismissAction();
  OUTLINED_FUNCTION_2_12();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_44_1();
  }

  (*((*MEMORY[0x1E69E7D40] & *static ScreenSharingInteractionController.shared) + 0x1F8))(remoteControl);
  type metadata accessor for RemoteControlOnboardingView();
  specialized Environment.wrappedValue.getter(v7);
  DismissAction.callAsFunction()();
  (*(v3 + 8))(v7);
}

uint64_t closure #2 in closure #1 in closure #1 in RemoteControlOnboardingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v32[-v3];
  v5 = type metadata accessor for Font.TextStyle();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19SymbolRenderingModeVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v32[-v10];
  Image.init(systemName:)();
  static SymbolRenderingMode.monochrome.getter();
  v12 = type metadata accessor for SymbolRenderingMode();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  v13 = Image.symbolRenderingMode(_:)();

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_s7SwiftUI19SymbolRenderingModeVSgMd);
  (*(v6 + 104))(v8, *MEMORY[0x1E6980EF0], v5);
  v14 = type metadata accessor for Font.Design();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v14);
  static Font.Weight.bold.getter();
  v15 = static Font.system(_:design:weight:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s7SwiftUI4FontV6DesignOSgMd);
  (*(v6 + 8))(v8, v5);
  KeyPath = swift_getKeyPath();
  LOBYTE(v6) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v32[8] = 0;
  v25 = static Alignment.center.getter();
  v27 = v26;
  v28 = [objc_opt_self() quaternaryLabelColor];
  v29 = Color.init(uiColor:)();
  v30 = static Color.secondary.getter();
  result = swift_getKeyPath();
  *a1 = v13;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v15;
  *(a1 + 24) = v6;
  *(a1 + 32) = v18;
  *(a1 + 40) = v20;
  *(a1 + 48) = v22;
  *(a1 + 56) = v24;
  *(a1 + 64) = 0;
  *(a1 + 72) = v29;
  *(a1 + 80) = 256;
  *(a1 + 88) = v25;
  *(a1 + 96) = v27;
  *(a1 + 104) = result;
  *(a1 + 112) = v30;
  return result;
}

uint64_t closure #3 in closure #1 in RemoteControlOnboardingView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v22[1] = a1;
  v26 = a2;
  v2 = type metadata accessor for RemoteControlOnboardingView() - 8;
  MEMORY[0x1EEE9AC00](v2);
  v22[0] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameH0VGAA11_ClipEffectVyAA9RectangleVGGAA19_BackgroundModifierVyAA10_ShapeViewVyAA07RoundedM0VAA5ColorVGGGAA022_EnvironmentKeyWritingO0VyA_SgGGGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v25 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24 = v22 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v23 = v22 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v22 - v12;
  _s15ConversationKit11ParticipantVWOcTm_11();
  swift_allocObject();
  _s15ConversationKit11ParticipantVWObTm_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameG0VGAA11_ClipEffectVyAA9RectangleVGGAA19_BackgroundModifierVyAA10_ShapeViewVyAA07RoundedL0VAA5ColorVGGGAA022_EnvironmentKeyWritingN0VyAYSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>, _ClipEffect<Rectangle>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  _s15ConversationKit11ParticipantVWOcTm_11();
  swift_allocObject();
  _s15ConversationKit11ParticipantVWObTm_5();
  v14 = v23;
  Button.init(action:label:)();
  v15 = *(v5 + 16);
  v16 = v24;
  v15(v24, v13, v4);
  v17 = v25;
  v15(v25, v14, v4);
  v18 = v26;
  v15(v26, v16, v4);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameH0VGAA11_ClipEffectVyAA9RectangleVGGAA19_BackgroundModifierVyAA10_ShapeViewVyAA07RoundedM0VAA5ColorVGGGAA022_EnvironmentKeyWritingO0VyA_SgGGG_A8_tMd);
  v15(&v18[*(v19 + 48)], v17, v4);
  v20 = *(v5 + 8);
  v20(v14, v4);
  v20(v13, v4);
  v20(v17, v4);
  return (v20)(v16, v4);
}

void closure #2 in closure #3 in closure #1 in RemoteControlOnboardingView.body.getter()
{
  closure #2 in closure #3 in closure #1 in RemoteControlOnboardingView.body.getter();
}

{
  OUTLINED_FUNCTION_29();
  v48 = v0;
  v49 = v1;
  v47 = v2;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameG0VGAA11_ClipEffectVyAA9RectangleVGGAA19_BackgroundModifierVyAA10_ShapeViewVyAA07RoundedL0VAA5ColorVGGGMd) - 8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v11 = [objc_opt_self() conversationKit];
  v54._object = 0xE000000000000000;
  v12.value._countAndFlagsBits = 0x61737265766E6F43;
  v12.value._object = 0xEF74694B6E6F6974;
  v13._countAndFlagsBits = v6;
  v13._object = v4;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v54._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v12, v11, v14, v54);

  v15 = String.init(format:_:)();
  v17 = v16;

  v53[0] = v15;
  v53[1] = v17;
  lazy protocol witness table accessor for type String and conformance String();
  v18 = Text.init<A>(_:)();
  v20 = v19;
  v22 = v21;
  static Font.callout.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v23 = Text.font(_:)();
  v45 = v24;
  v46 = v23;
  LOBYTE(v6) = v25;
  v27 = v26;

  outlined consume of Text.Storage(v18, v20, v22 & 1);

  LOBYTE(v18) = static Edge.Set.all.getter();
  LOBYTE(v6) = v6 & 1;
  v51 = v6;
  v50 = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  memcpy(&v52[7], v53, 0x70uLL);
  v28 = &v10[*(v7 + 44)];
  v29 = *(type metadata accessor for RoundedRectangle() + 20);
  v30 = *MEMORY[0x1E697F468];
  type metadata accessor for RoundedCornerStyle();
  OUTLINED_FUNCTION_7_0();
  (*(v31 + 104))(&v28[v29], v30);
  *v28 = v47;
  v32 = [objc_opt_self() quaternaryLabelColor];
  v33 = Color.init(uiColor:)();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd);
  *&v28[*(v34 + 52)] = v33;
  *&v28[*(v34 + 56)] = 256;
  v35 = static Alignment.center.getter();
  v37 = v36;
  v38 = &v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_BackgroundModifierVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGGMd) + 36)];
  *v38 = v35;
  v38[1] = v37;
  v39 = v45;
  *v10 = v46;
  *(v10 + 1) = v39;
  v10[16] = v6;
  *(v10 + 3) = v27;
  v10[32] = v18;
  *(v10 + 56) = 0u;
  *(v10 + 40) = 0u;
  v10[72] = 1;
  v40 = memcpy(v10 + 73, v52, 0x77uLL);
  *(v10 + 96) = 0;
  v41 = v48(v40);
  KeyPath = swift_getKeyPath();
  v43 = v49;
  outlined init with take of CaptionSectioner.SpeakerSection?();
  v44 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameG0VGAA11_ClipEffectVyAA9RectangleVGGAA19_BackgroundModifierVyAA10_ShapeViewVyAA07RoundedL0VAA5ColorVGGGAA022_EnvironmentKeyWritingN0VyAYSgGGMd) + 36));
  *v44 = KeyPath;
  v44[1] = v41;
  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in closure #1 in closure #1 in RemoteControlOnboardingView.body.getter(uint64_t a1, char a2)
{
  type metadata accessor for DismissAction();
  OUTLINED_FUNCTION_2_12();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_44_1();
  }

  (*((*MEMORY[0x1E69E7D40] & *static ScreenSharingInteractionController.shared) + 0x1F8))(a2 & 1);
  type metadata accessor for RemoteControlOnboardingView();
  specialized Environment.wrappedValue.getter(v9);
  DismissAction.callAsFunction()();
  return (*(v5 + 8))(v9, v2);
}

void closure #4 in closure #3 in closure #1 in RemoteControlOnboardingView.body.getter()
{
  __asm { FMOV            V0.2D, #26.0 }

  closure #2 in closure #3 in closure #1 in RemoteControlOnboardingView.body.getter();
}

uint64_t closure #2 in RemoteControlOnboardingView.body.getter(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static Defaults.shared;
  v3 = (*(*static Defaults.shared + 928))();
  Participant.contactDetails.getter();

  if (v16)
  {
    v4 = [v16 identifier];

    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = *(a1 + *(type metadata accessor for Participant(0) + 28));
    if (v8 && (outlined bridged method (ob) of @objc TUHandle.normalizedValue.getter(v8), v9))
    {
      v10._countAndFlagsBits = v5;
      v10._object = v7;
      v11 = String.hashWithSalt(salt:)(v10);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v3 = v14;
      }

      v12 = *(v3 + 16);
      if (v12 >= *(v3 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v3 = v15;
      }

      *(v3 + 16) = v12 + 1;
      *(v3 + 16 * v12 + 32) = v11;
    }

    else
    {
    }
  }

  return (*(*v2 + 936))(v3);
}

uint64_t type metadata accessor for RemoteControlOnboardingView()
{
  result = type metadata singleton initialization cache for RemoteControlOnboardingView;
  if (!type metadata singleton initialization cache for RemoteControlOnboardingView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<PresentationAutomaticHeightModifier>, _BackgroundModifier<ModifiedContent<Color, _GeometryActionModifier<CGFloat>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<PresentationAutomaticHeightModifier>, _BackgroundModifier<ModifiedContent<Color, _GeometryActionModifier<CGFloat>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<PresentationAutomaticHeightModifier>, _BackgroundModifier<ModifiedContent<Color, _GeometryActionModifier<CGFloat>>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy15ConversationKit027PresentationAutomaticHeightF0VGAA011_BackgroundF0VyACyAA5ColorVAA015_GeometryActionF0Vy12CoreGraphics7CGFloatVGGGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ViewModifier_Content<PresentationAutomaticHeightModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit027PresentationAutomaticHeightD0VGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _BackgroundModifier<ModifiedContent<Color, _GeometryActionModifier<CGFloat>>> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA5ColorVAA015_GeometryActionD0Vy12CoreGraphics7CGFloatVGGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<PresentationAutomaticHeightModifier>, _BackgroundModifier<ModifiedContent<Color, _GeometryActionModifier<CGFloat>>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #2 in RemoteControlOnboardingView.body.getter()
{
  v1 = *(type metadata accessor for RemoteControlOnboardingView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #2 in RemoteControlOnboardingView.body.getter(v2);
}

unint64_t lazy protocol witness table accessor for type PresentationAutomaticHeightModifier and conformance PresentationAutomaticHeightModifier()
{
  result = lazy protocol witness table cache variable for type PresentationAutomaticHeightModifier and conformance PresentationAutomaticHeightModifier;
  if (!lazy protocol witness table cache variable for type PresentationAutomaticHeightModifier and conformance PresentationAutomaticHeightModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationAutomaticHeightModifier and conformance PresentationAutomaticHeightModifier);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PresentationAutomaticHeightModifier(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PresentationAutomaticHeightModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void type metadata completion function for RemoteControlOnboardingView()
{
  type metadata accessor for Participant(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<DismissAction>();
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

void type metadata accessor for Environment<DismissAction>()
{
  if (!lazy cache variable for type metadata for Environment<DismissAction>)
  {
    type metadata accessor for DismissAction();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<DismissAction>);
    }
  }
}

uint64_t get_witness_table_qd__7SwiftUI4ViewHD2_AaBPAAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAA15ModifiedContentVyAA01_c9Modifier_I0Vy15ConversationKit0f15AutomaticHeightJ0VGAA011_BackgroundJ0VyAIyAA5ColorVAA015_GeometryActionJ0Vy12CoreGraphics7CGFloatVGGGG_Qo_HOTm(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
  a4();
  return swift_getOpaqueTypeConformance2();
}

unint64_t lazy protocol witness table accessor for type ContactAvatarView and conformance ContactAvatarView()
{
  result = lazy protocol witness table cache variable for type ContactAvatarView and conformance ContactAvatarView;
  if (!lazy protocol witness table cache variable for type ContactAvatarView and conformance ContactAvatarView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactAvatarView and conformance ContactAvatarView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactAvatarView and conformance ContactAvatarView;
  if (!lazy protocol witness table cache variable for type ContactAvatarView and conformance ContactAvatarView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactAvatarView and conformance ContactAvatarView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Circle, Color>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Circle, Color>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Circle, Color>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundI0VyAA10_ShapeViewVyAA6CircleVAA5ColorVGGGAGyAWSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Circle, Color>>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Circle, Color>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Circle, Color>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Circle, Color>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Circle, Color>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundI0VyAA10_ShapeViewVyAA6CircleVAA5ColorVGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _BackgroundModifier<_ShapeView<Circle, Color>> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA10_ShapeViewVyAA6CircleVAA5ColorVGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Circle, Color>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>, _ClipEffect<Rectangle>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>, _ClipEffect<Rectangle>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>, _ClipEffect<Rectangle>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameG0VGAA11_ClipEffectVyAA9RectangleVGGAA19_BackgroundModifierVyAA10_ShapeViewVyAA07RoundedL0VAA5ColorVGGGAA022_EnvironmentKeyWritingN0VyAYSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>, _ClipEffect<Rectangle>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>, _ClipEffect<Rectangle>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>, _ClipEffect<Rectangle>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>, _ClipEffect<Rectangle>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>, _ClipEffect<Rectangle>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameG0VGAA11_ClipEffectVyAA9RectangleVGGAA19_BackgroundModifierVyAA10_ShapeViewVyAA07RoundedL0VAA5ColorVGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _BackgroundModifier<_ShapeView<RoundedRectangle, Color>> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>, _ClipEffect<Rectangle>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameG0VGAA11_ClipEffectVyAA9RectangleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA9RectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t objectdestroy_5Tm_2()
{
  OUTLINED_FUNCTION_29();
  v1 = type metadata accessor for RemoteControlOnboardingView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  type metadata accessor for Participant.State(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
    case 2u:
    case 3u:
    case 5u:
      type metadata accessor for Date();
      OUTLINED_FUNCTION_7_0();
      (*(v4 + 8))(v0 + v2);
      break;
    case 4u:
      type metadata accessor for Date();
      OUTLINED_FUNCTION_7_0();
      (*(v18 + 8))(v0 + v2);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
      v20 = v3 + *(v19 + 48);

      if (*(v20 + 120) >= 2uLL)
      {
        __swift_destroy_boxed_opaque_existential_1(v20 + 96);
      }

      if (*(v20 + 312))
      {
        swift_unknownObjectRelease();
      }

      if (*(v3 + *(v19 + 64) + 8))
      {
      }

      break;
    default:
      break;
  }

  v5 = type metadata accessor for Participant(0);
  v6 = v5[5];
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  (*(v7 + 8))(v3 + v6);
  v8 = (v3 + v5[7]);
  if (*v8)
  {
  }

  v9 = v3 + v5[14];
  v10 = type metadata accessor for Date();
  if (!__swift_getEnumTagSinglePayload(v9, 1, v10))
  {
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  v11 = *(type metadata accessor for Participant.CountdownInfo(0) + 20);
  if (!__swift_getEnumTagSinglePayload(v9 + v11, 1, v10))
  {
    (*(*(v10 - 8) + 8))(v9 + v11, v10);
  }

  v12 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for DismissAction();
    OUTLINED_FUNCTION_7_0();
    (*(v13 + 8))(v3 + v12);
  }

  else
  {
  }

  v14 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for UserInterfaceSizeClass();
    if (!__swift_getEnumTagSinglePayload(v3 + v14, 1, v15))
    {
      (*(*(v15 - 8) + 8))(v3 + v14, v15);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_30_0();

  return swift_deallocObject();
}

ConversationKit::CallHoldingButtonConfiguration __swiftcall CallHoldingButtonConfiguration.init(isEnabled:isHidden:)(Swift::Bool isEnabled, Swift::Bool isHidden)
{
  *v2 = isEnabled;
  v2[1] = isHidden;
  result.isEnabled = isEnabled;
  return result;
}

uint64_t storeEnumTagSinglePayload for CallHoldingButtonConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

Swift::String __swiftcall TUCall.waitOnHoldSubtitle()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  *&v2 = MEMORY[0x1EEE9AC00](v1 - 8).n128_u64[0];
  v4 = &v20 - v3;
  v5 = [v0 imageURL];
  if (!v5)
  {
    v14 = type metadata accessor for URL();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v14);
    outlined destroy of URL?(v4);
    goto LABEL_6;
  }

  v6 = v5;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = type metadata accessor for URL();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v7);
  outlined destroy of URL?(v4);
  v8 = outlined bridged method (pb) of @objc TUCall.localizedLabel.getter(v0);
  if (!v9)
  {
LABEL_6:
    v15 = [v0 displayName];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v16;

    goto LABEL_7;
  }

  v10 = v8;
  v11 = v9;
  v22 = v8;
  v23 = v9;
  v12 = outlined bridged method (pb) of @objc TUCall.companyDepartment.getter(v0);
  if (v13)
  {
    v20 = 32;
    v21 = 0xE100000000000000;
    MEMORY[0x1BFB20B10](v12);

    MEMORY[0x1BFB20B10](v20, v21);

    v10 = v22;
    v11 = v23;
  }

LABEL_7:
  v17 = v10;
  v18 = v11;
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

id @objc TUCall.waitOnHoldSubtitle()(void *a1)
{
  v1 = a1;
  v2 = TUCall.waitOnHoldSubtitle()();

  v3 = MEMORY[0x1BFB209B0](v2._countAndFlagsBits, v2._object);

  return v3;
}

uint64_t outlined bridged method (pb) of @objc TUCall.companyDepartment.getter(void *a1)
{
  v1 = [a1 companyDepartment];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v24 - v11;
  outlined init with copy of TaskPriority?(a3, v24 - v11);
  v13 = type metadata accessor for TaskPriority();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of TapInteractionHandler?(v12, &_sScPSgMd);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
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
      OUTLINED_FUNCTION_24();
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v16;
        v25[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v19;
      swift_task_create();
      OUTLINED_FUNCTION_28_0();

      return v16;
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

  OUTLINED_FUNCTION_24();
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v16;
    v25[7] = v18;
  }

  return swift_task_create();
}

id WaitOnHoldServiceComposer.compose()()
{
  v0 = objc_allocWithZone(type metadata accessor for WaitOnHoldService());

  return [v0 init];
}

id WaitOnHoldService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WaitOnHoldServiceComposer.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id WaitOnHoldServiceComposer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t key path getter for WaitOnHoldService.cancellables : WaitOnHoldService@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB0))();
  *a2 = result;
  return result;
}

uint64_t WaitOnHoldService.cancellables.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_cancellables;
  OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
}

uint64_t key path getter for WaitOnHoldService.requiresUserAttention : WaitOnHoldService@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x128))();
  *a2 = result & 1;
  return result;
}

uint64_t WaitOnHoldService.requiresUserAttention.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_requiresUserAttention;
  OUTLINED_FUNCTION_4_0();
  return *(v0 + v1);
}

uint64_t WaitOnHoldService.requiresUserAttention.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_requiresUserAttention;
  result = OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
  return result;
}

uint64_t WaitOnHoldService.requiresUserAttentionReason.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for WaitOnHoldRequiresUserAttentionReason();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_waitOnHoldStatusMessageService))
  {
    OUTLINED_FUNCTION_0_1();
    v10 = *(v9 + 232);
    v16 = v11;

    v10(v12);

    return (*(v16 + 32))(a1, v8, v3);
  }

  else
  {
    v14 = *MEMORY[0x1E6995C70];
    v15 = *(v5 + 104);

    return v15(a1, v14, v3);
  }
}

double WaitOnHoldService.statusMessages.getter@<D0>(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_waitOnHoldStatusMessageService))
  {
    OUTLINED_FUNCTION_0_1();
    v4 = *(v3 + 360);
    *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0Vy10Foundation16AttributedStringV_GGMd);
    OUTLINED_FUNCTION_3_132();
    *(a1 + 32) = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v5, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0Vy10Foundation16AttributedStringV_GGMd);
    __swift_allocate_boxed_opaque_existential_1(a1);

    v4(v6);
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double WaitOnHoldService.transcriptUpdates.getter@<D0>(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_waitOnHoldStatusMessageService))
  {
    OUTLINED_FUNCTION_0_1();
    v4 = *(v3 + 368);
    *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySaySSG_GGMd);
    OUTLINED_FUNCTION_3_132();
    *(a1 + 32) = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v5, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySaySSG_GGMd);
    __swift_allocate_boxed_opaque_existential_1(a1);

    v4(v6);
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void WaitOnHoldService.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_13_1();
  v89 = v4;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo6TUCallCSgGMd);
  OUTLINED_FUNCTION_1();
  v84 = v5;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_1();
  v83 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo6TUCallCSgGSo17OS_dispatch_queueCGMd);
  OUTLINED_FUNCTION_1();
  v87 = v9;
  v88 = v8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_1();
  v85 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_1();
  v82 = v14;
  v15 = type metadata accessor for NSNotificationCenter.Publisher();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8();
  v81 = v20 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo6TUCallCGMd);
  OUTLINED_FUNCTION_1();
  v76 = v22;
  v77 = v21;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_1();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC10CompactMapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo6TUCallCGSo17OS_dispatch_queueCGMd);
  OUTLINED_FUNCTION_1();
  v79 = v26;
  v80 = v27;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_1();
  v78 = v29;
  v30 = type metadata accessor for AttributeContainer();
  v31 = OUTLINED_FUNCTION_22(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_8();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  OUTLINED_FUNCTION_22(v32);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v33);
  v34 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_1();
  v36 = v35;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_8();
  v40 = v39 - v38;
  *&v1[OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_call] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_cancellables] = MEMORY[0x1E69E7CD0];
  *&v1[OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_waitOnHoldStatusMessageService] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_statusMessageTask] = 0;
  v1[OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_hasAvailableWaitOnHoldAssets] = 0;
  v41 = &v1[OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_hasStartedInitialHoldDetectionCallUUID];
  *v41 = 0;
  v41[1] = 0;
  v1[OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_requiresUserAttention] = 0;
  v42 = OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_activityController;
  if (one-time initialization token for callHolding != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  v43 = __swift_project_value_buffer(v34, &static Logger.callHolding);
  (*(v36 + 16))(v40, v43, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore31CallScreeningActivityControllerCyAA0E7WrapperCGMd);
  swift_allocObject();
  *&v1[v42] = CallScreeningActivityController.init(logger:)();
  v44 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_5_5();
  v45.super.isa = v44;
  OUTLINED_FUNCTION_17_0(0xD00000000000001ALL, 0x80000001BC500610, v46, v47, v45);

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy10Foundation16AttributedStringVSgs5NeverOGMd);
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_statusMessagePublisher] = CurrentValueSubject.init(_:)();
  v91.receiver = v1;
  v91.super_class = type metadata accessor for WaitOnHoldService();
  v52 = objc_msgSendSuper2(&v91, sel_init);
  WaitOnHoldService.stopActivity()();
  v75 = objc_opt_self();
  v53 = [v75 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
  lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher();
  Publisher.compactMap<A>(_:)();
  v74 = *(v17 + 8);
  v74(v81, v15);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v54 = static OS_dispatch_queue.main.getter();
  v73 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.CompactMap<NSNotificationCenter.Publisher, TUCall> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo6TUCallCGMd);
  lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, &lazy cache variable for type metadata for OS_dispatch_queue);
  Publisher.receive<A>(on:options:)();
  outlined destroy of TapInteractionHandler?(v82, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  (*(v76 + 8))(v25, v77);
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.CompactMap<NSNotificationCenter.Publisher, TUCall>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC10CompactMapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo6TUCallCGSo17OS_dispatch_queueCGMd);
  Publisher<>.sink(receiveValue:)();

  (*(v80 + 8))(v78, v79);
  OUTLINED_FUNCTION_46_20();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v59 = [v75 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6TUCallCSgMd);
  Publisher.map<A>(_:)();
  v74(v81, v15);
  v90 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v73);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<NSNotificationCenter.Publisher, TUCall?> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo6TUCallCSgGMd);
  Publisher.receive<A>(on:options:)();
  outlined destroy of TapInteractionHandler?(v82, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  (*(v84 + 8))(v83, v86);
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.Map<NSNotificationCenter.Publisher, TUCall?>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo6TUCallCSgGSo17OS_dispatch_queueCGMd);
  Publisher<>.sink(receiveValue:)();

  (*(v87 + 8))(v85, v88);
  OUTLINED_FUNCTION_46_20();
  AnyCancellable.store(in:)();
  swift_endAccess();

  static TaskPriority.background.getter();
  type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
  OUTLINED_FUNCTION_20();
  v67 = swift_allocObject();
  swift_unknownObjectWeakInit();

  OUTLINED_FUNCTION_37_0();
  v68 = swift_allocObject();
  v68[2] = 0;
  v68[3] = 0;
  v68[4] = v67;
  v69 = OUTLINED_FUNCTION_59();
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(v69, v70, v89, v71, v72);

  outlined destroy of TapInteractionHandler?(v89, &_sScPSgMd);
  OUTLINED_FUNCTION_30_0();
}

void closure #2 in WaitOnHoldService.init()(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v34 - v3;
  v5 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_call);
    if (!v8)
    {

      return;
    }

    v9 = v8;
    v10 = [v5 callUUID];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = [v9 callUUID];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (v11 == v15 && v13 == v17)
    {
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {

LABEL_18:
        return;
      }
    }

    v20 = [v5 smartHoldingSession];
    if (!v20)
    {
      (*((*MEMORY[0x1E69E7D40] & *v7) + 0x130))();
      WaitOnHoldService.stopActivity()();
      v24 = type metadata accessor for TaskPriority();
      __swift_storeEnumTagSinglePayload(v4, 1, 1, v24);
      type metadata accessor for MainActor();
      v25 = static MainActor.shared.getter();
      v26 = swift_allocObject();
      v27 = MEMORY[0x1E69E85E0];
      *(v26 + 16) = v25;
      *(v26 + 24) = v27;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

      return;
    }

    v21 = v20;
    v22 = [v20 state] == 3;
    (*((*MEMORY[0x1E69E7D40] & *v7) + 0x130))(v22);
    v23 = [v21 state];
    if (v23 && v23 != 3)
    {
      WaitOnHoldService.stopActivity()();
    }

    else
    {
      WaitOnHoldService.startActivity()();
    }

    v28 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v28);
    type metadata accessor for MainActor();
    v29 = v21;
    v30 = v5;
    v31 = static MainActor.shared.getter();
    v32 = swift_allocObject();
    v33 = MEMORY[0x1E69E85E0];
    v32[2] = v31;
    v32[3] = v33;
    v32[4] = v29;
    v32[5] = v30;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

    goto LABEL_18;
  }
}

uint64_t closure #1 in closure #2 in WaitOnHoldService.init()()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in WaitOnHoldService.init(), v2, v1);
}

{
  OUTLINED_FUNCTION_9();

  if (one-time initialization token for callHolding != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  v0 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v0, &static Logger.callHolding);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v2))
  {
    v3 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v3);
    OUTLINED_FUNCTION_27_41(&dword_1BBC58000, v4, v2, "Dismissing Wait on Hold tip because SmartHolding session has ended");
    OUTLINED_FUNCTION_26();
  }

  type metadata accessor for TPTipsHelper();
  dispatch thunk of static TPTipsHelper.updateCanDisplayWaitOnHoldTip(_:)();
  OUTLINED_FUNCTION_13();

  return v5();
}

uint64_t closure #2 in closure #2 in WaitOnHoldService.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #2 in closure #2 in WaitOnHoldService.init(), v7, v6);
}

uint64_t closure #2 in closure #2 in WaitOnHoldService.init()()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 16);

  v2 = [v1 state] == 2 && objc_msgSend(*(v0 + 24), sel_smartHoldingAvailability) == 1;
  if (one-time initialization token for callHolding != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v3, &static Logger.callHolding);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v2;
    _os_log_impl(&dword_1BBC58000, v4, v5, "Updating Tip, deleteHold: %{BOOL}d", v6, 8u);
    OUTLINED_FUNCTION_27();
  }

  type metadata accessor for TPTipsHelper();
  dispatch thunk of static TPTipsHelper.updateCanDisplayWaitOnHoldTip(_:)();
  OUTLINED_FUNCTION_13();

  return v7();
}

uint64_t closure #5 in WaitOnHoldService.init()()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_4_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v0[12] = type metadata accessor for WaitOnHoldController();
    v0[13] = WaitOnHoldController.__allocating_init()();
    v2 = swift_task_alloc();
    v0[14] = v2;
    *v2 = v0;
    v2[1] = closure #5 in WaitOnHoldService.init();

    return MEMORY[0x1EEDF27E8]();
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v3();
  }
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (v0)
  {
    v7 = closure #5 in WaitOnHoldService.init();
  }

  else
  {

    v7 = closure #5 in WaitOnHoldService.init();
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

{
  OUTLINED_FUNCTION_24_0();
  *(v0 + 128) = *(v0 + 120);
  WaitOnHoldController.__allocating_init()();
  *(v0 + 144) = WaitOnHoldController.hasAvailableAssets.getter() & 1;

  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  *(v0 + 136) = static MainActor.shared.getter();
  OUTLINED_FUNCTION_28_0();
  dispatch thunk of Actor.unownedExecutor.getter();
  v1 = OUTLINED_FUNCTION_12_68();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v1();
}

void closure #5 in WaitOnHoldService.init()()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);

  specialized closure #1 in closure #5 in WaitOnHoldService.init()(v0 + 64, v1);
  if (v2)
  {
  }

  else
  {
    MEMORY[0x1BFB23F10](v0 + 64);

    MEMORY[0x1EEE6DFA0](closure #5 in WaitOnHoldService.init(), 0, 0);
  }
}

uint64_t closure #5 in WaitOnHoldService.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_86_2();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_48();
  a16 = v18;

  if (one-time initialization token for callHolding != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  v21 = *(v18 + 120);
  v22 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v22, &static Logger.callHolding);
  v23 = v21;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  v26 = os_log_type_enabled(v24, v25);
  v27 = *(v18 + 120);
  if (v26)
  {
    v28 = OUTLINED_FUNCTION_42();
    v29 = swift_slowAlloc();
    a9 = v29;
    *v28 = 136315138;
    swift_getErrorValue();
    v30 = Error.localizedDescription.getter();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &a9);

    *(v28 + 4) = v32;
    OUTLINED_FUNCTION_47_14(&dword_1BBC58000, v33, v34, "WaitOnHoldController prewarming failed: %s");
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  *(v18 + 128) = 0;
  WaitOnHoldController.__allocating_init()();
  *(v18 + 144) = WaitOnHoldController.hasAvailableAssets.getter() & 1;

  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  *(v18 + 136) = static MainActor.shared.getter();
  OUTLINED_FUNCTION_28_0();
  dispatch thunk of Actor.unownedExecutor.getter();
  OUTLINED_FUNCTION_12_68();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v35, v36, v37);
}

void specialized closure #1 in closure #5 in WaitOnHoldService.init()(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_hasAvailableWaitOnHoldAssets] = a2 & 1;
  }

  if (a2)
  {
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      WaitOnHoldService.beginInitialHoldDetectionForCallIfNeeded()();
    }
  }
}

void WaitOnHoldService.beginInitialHoldDetectionForCallIfNeeded()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v65 - v6;
  v8 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v13 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = *(v0 + OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_call);
  if (!v16 || *(v0 + OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_hasAvailableWaitOnHoldAssets) != 1)
  {
    goto LABEL_5;
  }

  v67 = v15;
  v68 = v65 - v14;
  v17 = v16;
  v1 = &off_1E7FE9000;
  v18 = [v17 callUUID];
  v69 = v8;
  v19 = v18;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = v69;
  UUID.init(uuidString:)();

  if (__swift_getEnumTagSinglePayload(v7, 1, v20) == 1)
  {

    outlined destroy of TapInteractionHandler?(v7, &_s10Foundation4UUIDVSgMd);
LABEL_5:
    if (one-time initialization token for callHolding != -1)
    {
      OUTLINED_FUNCTION_0_13();
    }

    v21 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v21, &static Logger.callHolding);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v24);
      _os_log_impl(&dword_1BBC58000, v22, v23, "Not starting hold detection: missing call or assets", v1, 2u);
      OUTLINED_FUNCTION_26();
    }

    goto LABEL_10;
  }

  v65[0] = *(v67 + 32);
  v65[1] = v67 + 32;
  (v65[0])(v68, v7, v20);
  v26 = *(v0 + OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_hasStartedInitialHoldDetectionCallUUID);
  v25 = *(v0 + OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_hasStartedInitialHoldDetectionCallUUID + 8);

  v66 = v17;
  v27 = [v17 callUUID];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  if (v25)
  {
    if (v26 == v28 && v25 == v30)
    {

      goto LABEL_27;
    }

    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v32)
    {
LABEL_27:
      if (one-time initialization token for callHolding != -1)
      {
        OUTLINED_FUNCTION_0_13();
      }

      v41 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v41, &static Logger.callHolding);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();
      v44 = OUTLINED_FUNCTION_18_0(v43);
      v45 = v66;
      v46 = v69;
      if (v44)
      {
        v47 = OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_50_0(v47);
        v49 = "Not starting hold detection: have already started hold detection for this call";
LABEL_35:
        OUTLINED_FUNCTION_27_41(&dword_1BBC58000, v48, v43, v49);
        OUTLINED_FUNCTION_26();

LABEL_37:
        (*(v67 + 8))(v68, v46);
        goto LABEL_10;
      }

      goto LABEL_36;
    }
  }

  else
  {
  }

  v33 = [objc_opt_self() sharedInstance];
  v34 = [v33 currentAudioAndVideoCallCount];

  if (v34 != 1)
  {
    v45 = v66;
    if (one-time initialization token for callHolding != -1)
    {
      OUTLINED_FUNCTION_0_13();
    }

    v50 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v50, &static Logger.callHolding);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    v51 = OUTLINED_FUNCTION_18_0(v43);
    v46 = v69;
    if (v51)
    {
      v52 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v52);
      v49 = "Not starting hold detection: more than one call ongoing";
      goto LABEL_35;
    }

LABEL_36:

    goto LABEL_37;
  }

  v35 = v66;
  if ([v66 smartHoldingHoldDetectionAvailability] == 1 && (objc_msgSend(v35, sel_isWaitOnHoldActive) & 1) == 0)
  {
    type metadata accessor for TaskPriority();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
    OUTLINED_FUNCTION_20();
    v57 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v58 = v67;
    v59 = v69;
    (*(v67 + 16))(v13, v68, v69);
    type metadata accessor for MainActor();
    v60 = v35;

    v61 = static MainActor.shared.getter();
    v62 = (*(v58 + 80) + 40) & ~*(v58 + 80);
    v63 = swift_allocObject();
    v64 = MEMORY[0x1E69E85E0];
    v63[2] = v61;
    v63[3] = v64;
    v63[4] = v60;
    (v65[0])(v63 + v62, v13, v59);
    *(v63 + ((v10 + v62 + 7) & 0xFFFFFFFFFFFFFFF8)) = v57;

    OUTLINED_FUNCTION_59();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

    (*(v58 + 8))(v68, v59);
  }

  else
  {
    if (one-time initialization token for callHolding != -1)
    {
      OUTLINED_FUNCTION_0_13();
    }

    v36 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v36, &static Logger.callHolding);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v38))
    {
      v39 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v39);
      OUTLINED_FUNCTION_27_41(&dword_1BBC58000, v40, v38, "Not starting hold detection: call is not eligible");
      OUTLINED_FUNCTION_26();
    }

    else
    {
    }

    (*(v67 + 8))(v68, v69);
  }

LABEL_10:
  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in WaitOnHoldService.beginInitialHoldDetectionForCallIfNeeded()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[22] = a4;
  type metadata accessor for MainActor();
  v6[25] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[26] = v8;
  v6[27] = v7;

  return MEMORY[0x1EEE6DFA0](closure #1 in WaitOnHoldService.beginInitialHoldDetectionForCallIfNeeded(), v8, v7);
}

uint64_t closure #1 in WaitOnHoldService.beginInitialHoldDetectionForCallIfNeeded()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_86_2();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_48();
  a16 = v18;
  if (one-time initialization token for callHolding != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  v21 = v18[22];
  v22 = type metadata accessor for Logger();
  v18[28] = OUTLINED_FUNCTION_52(v22, &static Logger.callHolding);
  v23 = v21;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = v18[22];
    v27 = OUTLINED_FUNCTION_42();
    v28 = swift_slowAlloc();
    a9 = v28;
    *v27 = 136315138;
    v29 = [v26 callUUID];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &a9);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_1BBC58000, v24, v25, "Begining hold detection for call %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_26();
  }

  v34 = [objc_opt_self() sharedInstance];
  v18[29] = v34;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v18[30] = isa;
  v18[2] = v18;
  v18[3] = closure #1 in WaitOnHoldService.beginInitialHoldDetectionForCallIfNeeded();
  v36 = swift_continuation_init();
  v18[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd);
  v18[10] = MEMORY[0x1E69E9820];
  v18[11] = 1107296256;
  v18[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v18[13] = &block_descriptor_77;
  v18[14] = v36;
  [v34 performSmartHoldingRequestWithType:1 forCallWithUUID:isa completion:v18 + 10];
  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DEC8](v37);
}

uint64_t closure #1 in WaitOnHoldService.beginInitialHoldDetectionForCallIfNeeded()()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_14_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 248) = v4;
  v5 = v3[27];
  v6 = v3[26];
  if (v4)
  {
    v7 = closure #1 in WaitOnHoldService.beginInitialHoldDetectionForCallIfNeeded();
  }

  else
  {
    v7 = closure #1 in WaitOnHoldService.beginInitialHoldDetectionForCallIfNeeded();
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);

  OUTLINED_FUNCTION_4_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [*(v0 + 176) callUUID];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = &v4[OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_hasStartedInitialHoldDetectionCallUUID];
    *v9 = v6;
    v9[1] = v8;
  }

  OUTLINED_FUNCTION_13();

  return v10();
}

{
  v18 = v0;
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[29];

  swift_willThrow();

  v4 = v2;
  v5 = Logger.logObject.getter();
  LOBYTE(v3) = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v3))
  {
    v6 = v0[31];
    v7 = OUTLINED_FUNCTION_42();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v17);

    *(v7 + 4) = v11;
    OUTLINED_FUNCTION_47_14(&dword_1BBC58000, v12, v13, "Unable to start hold detection: %s");
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
    v14 = v0[31];
  }

  OUTLINED_FUNCTION_13();

  return v15();
}

uint64_t closure #1 in WaitOnHoldService.updateForCall(withUUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = type metadata accessor for AttributedString();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0Vy10Foundation16AttributedStringV_GGMd);
  v4[18] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy10Foundation16AttributedStringV_G_GMd);
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = type metadata accessor for MainActor();
  v4[23] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[24] = v8;
  v4[25] = v7;

  return MEMORY[0x1EEE6DFA0](closure #1 in WaitOnHoldService.updateForCall(withUUID:), v8, v7);
}

uint64_t closure #1 in WaitOnHoldService.updateForCall(withUUID:)()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_4_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = *(Strong + OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_waitOnHoldStatusMessageService), v0[26] = v3, , v2, v3))
  {
    OUTLINED_FUNCTION_0_1();
    (*(v4 + 360))();
    OUTLINED_FUNCTION_3_132();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v5, v6);
    dispatch thunk of AsyncSequence.makeAsyncIterator()();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_4_0();
    v7 = static MainActor.shared.getter();
    v0[27] = v7;
    OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<Published<AttributedString>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy10Foundation16AttributedStringV_G_GMd);
    v8 = swift_task_alloc();
    v0[28] = v8;
    *v8 = v0;
    v9 = OUTLINED_FUNCTION_11_84(v8);
    v10 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6D8D0](v9, v7, v10);
  }

  else
  {

    OUTLINED_FUNCTION_48_16();

    OUTLINED_FUNCTION_13();

    return v11();
  }
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;

  if (!v0)
  {

    v8 = *(v3 + 192);
    v9 = *(v3 + 200);

    return MEMORY[0x1EEE6DFA0](closure #1 in WaitOnHoldService.updateForCall(withUUID:), v8, v9);
  }

  return result;
}

uint64_t closure #1 in WaitOnHoldService.updateForCall(withUUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86_2();
  OUTLINED_FUNCTION_48();
  v11 = v10[16];
  v12 = v10[12];
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    (*(v10[20] + 8))(v10[21], v10[19]);

LABEL_5:
    OUTLINED_FUNCTION_48_16();

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_69();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
  }

  (*(v10[13] + 32))(v10[14], v11, v12);
  if (static Task<>.isCancelled.getter())
  {
    v14 = v10[20];
    v13 = v10[21];
    v15 = v10[19];
    v17 = v10[13];
    v16 = v10[14];
    v18 = v10[12];

    (*(v17 + 8))(v16, v18);
    (*(v14 + 8))(v13, v15);
    goto LABEL_5;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    v31 = v10[14];
    v30 = v10[15];
    v32 = v10[12];
    v33 = v10[13];

    (*(v33 + 16))(v30, v31, v32);
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v32);
    CurrentValueSubject.send(_:)();

    outlined destroy of TapInteractionHandler?(v30, &_s10Foundation16AttributedStringVSgMd);
  }

  v37 = swift_unknownObjectWeakLoadStrong();
  if (v37)
  {
    v38 = v37;
    WaitOnHoldService.updateActivity(message:)(v10[14]);
  }

  (*(v10[13] + 8))(v10[14], v10[12]);
  v10[27] = static MainActor.shared.getter();
  OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<Published<AttributedString>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy10Foundation16AttributedStringV_G_GMd);
  v39 = swift_task_alloc();
  v10[28] = v39;
  *v39 = v10;
  OUTLINED_FUNCTION_11_84();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6D8D0](v40, v41, v42);
}

void WaitOnHoldService.startActivity()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  v3 = *&v0[OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_call];
  if (v3)
  {
    type metadata accessor for TaskPriority();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
    type metadata accessor for MainActor();
    v8 = v3;
    v9 = v0;
    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    v12 = MEMORY[0x1E69E85E0];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v9;
    v11[5] = v8;
    OUTLINED_FUNCTION_59();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  }
}

uint64_t closure #1 in WaitOnHoldService.startActivity()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore14ActivitySymbolVSgMd);
  v5[5] = swift_task_alloc();
  v5[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v6 = type metadata accessor for IntelligenceActivityAttributes.ContentState();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore18ActivityLabelStyleOSgMd);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v5[14] = swift_task_alloc();
  v7 = type metadata accessor for IntelligenceActivityAttributes();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  type metadata accessor for AttributeContainer();
  v5[18] = swift_task_alloc();
  v8 = type metadata accessor for AttributedString();
  v5[19] = v8;
  v5[20] = *(v8 - 8);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[24] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[25] = v10;
  v5[26] = v9;

  return MEMORY[0x1EEE6DFA0](closure #1 in WaitOnHoldService.startActivity(), v10, v9);
}

uint64_t closure #1 in WaitOnHoldService.startActivity()()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_activityController;
  v0[27] = OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_activityController;
  v0[28] = *(v1 + v2);
  v5 = (*MEMORY[0x1E6995FD0] + MEMORY[0x1E6995FD0]);

  v3 = swift_task_alloc();
  v0[29] = v3;
  *v3 = v0;
  v3[1] = closure #1 in WaitOnHoldService.startActivity();

  return v5();
}

{
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;

  v4 = *(v1 + 208);
  v5 = *(v1 + 200);

  return MEMORY[0x1EEE6DFA0](closure #1 in WaitOnHoldService.startActivity(), v5, v4);
}

{
  v1 = v0[4];
  v2 = [v1 waitOnHoldSubtitle];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = outlined bridged method (pb) of @objc TUCall.contactIdentifiers.getter(v1);
  if (v3)
  {
    if (*(v3 + 16))
    {
    }
  }

  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[20];
  v7 = v0[19];
  v41 = v0[4];
  v8 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_5_5();
  v9.super.isa = v8;
  OUTLINED_FUNCTION_17_0(v10, v11, v12, v13, v9);

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  (*(v6 + 16))(v5, v4, v7);
  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v14 = [v41 imageURL];
  if (v14)
  {
    v15 = v14;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = v0[14];
  v42 = v0[27];
  v18 = v0[3];
  v19 = type metadata accessor for URL();
  __swift_storeEnumTagSinglePayload(v17, v16, 1, v19);
  type metadata accessor for ActivityLabelStyle();
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v16);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v16);
  IntelligenceActivityAttributes.init(title:subtitle:shouldHideCallerIDWhenLocked:showsViewButton:displaysAvatar:callImageURL:contactIdentifier:titleStyle:subtitleStyle:)();
  CurrentValueSubject.value.getter();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  v30 = type metadata accessor for ActivitySymbol();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v30);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v30);
  IntelligenceActivityAttributes.ContentState.init(message:title:titleSymbol:subTitleSymbol:shouldCenterAlignMessage:)();
  v0[30] = *(v18 + v42);
  v43 = (*MEMORY[0x1E6995FD8] + MEMORY[0x1E6995FD8]);

  v37 = swift_task_alloc();
  v0[31] = v37;
  *v37 = v0;
  v37[1] = closure #1 in WaitOnHoldService.startActivity();
  v38 = v0[17];
  v39 = v0[11];

  return v43(v0 + 2, v38, v39);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;
  v3[32] = v0;

  if (v0)
  {
    v7 = v3[25];
    v8 = v3[26];
    v9 = closure #1 in WaitOnHoldService.startActivity();
  }

  else
  {

    v7 = v3[25];
    v8 = v3[26];
    v9 = closure #1 in WaitOnHoldService.startActivity();
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

{
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[20];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[9];

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  OUTLINED_FUNCTION_23_45();

  OUTLINED_FUNCTION_13();

  return v10();
}

{

  if (one-time initialization token for callHolding != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  v1 = v0[32];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.callHolding);
  v3 = OUTLINED_FUNCTION_28_0();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[32];
  v8 = v0[23];
  v9 = v0[19];
  v10 = v0[20];
  v11 = v0[16];
  v23 = v0[15];
  v24 = v0[17];
  v12 = v0[10];
  v22 = v0[11];
  v13 = v0[9];
  if (v6)
  {
    v21 = v0[23];
    v14 = OUTLINED_FUNCTION_42();
    v20 = v9;
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v7;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_1BBC58000, v4, v5, "Failed to start the WOH Live Activity: %@", v14, 0xCu);
    outlined destroy of TapInteractionHandler?(v15, &_sSo8NSObjectCSgMd);
    v9 = v20;
    OUTLINED_FUNCTION_27();
    v8 = v21;
    OUTLINED_FUNCTION_27();
  }

  (*(v12 + 8))(v22, v13);
  (*(v11 + 8))(v24, v23);
  (*(v10 + 8))(v8, v9);
  OUTLINED_FUNCTION_23_45();

  OUTLINED_FUNCTION_13();

  return v18();
}

uint64_t WaitOnHoldService.stopActivity()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  type metadata accessor for MainActor();
  v7 = v0;
  v8 = static MainActor.shared.getter();
  OUTLINED_FUNCTION_37_0();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  OUTLINED_FUNCTION_59();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in WaitOnHoldService.stopActivity()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in WaitOnHoldService.stopActivity(), v6, v5);
}

uint64_t closure #1 in WaitOnHoldService.stopActivity()()
{
  OUTLINED_FUNCTION_24_0();

  dispatch thunk of CallScreeningActivityController.stopActivity()();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t WaitOnHoldService.updateActivity(message:)(uint64_t a1)
{
  v3 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  (*(v5 + 16))(&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  type metadata accessor for MainActor();
  v15 = v1;
  v16 = static MainActor.shared.getter();
  v17 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 2) = v16;
  *(v18 + 3) = v19;
  *(v18 + 4) = v15;
  (*(v5 + 32))(&v18[v17], &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  OUTLINED_FUNCTION_59();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in WaitOnHoldService.updateActivity(message:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore14ActivitySymbolVSgMd);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v6 = type metadata accessor for IntelligenceActivityAttributes.ContentState();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[13] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[14] = v8;
  v5[15] = v7;

  return MEMORY[0x1EEE6DFA0](closure #1 in WaitOnHoldService.updateActivity(message:), v8, v7);
}

uint64_t closure #1 in WaitOnHoldService.updateActivity(message:)()
{
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC15ConversationKit17WaitOnHoldService_activityController;

  dispatch thunk of CallScreeningActivityController.currentActivity.getter();

  v3 = v0[2];
  v0[16] = v3;
  if (v3)
  {
    v4 = v0[9];
    v5 = v0[4];
    v6 = v0[5];
    v0[17] = *(v1 + v2);
    v0[3] = v3;
    v7 = type metadata accessor for AttributedString();
    (*(*(v7 - 8) + 16))(v4, v6, v7);
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v7);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v7);
    v14 = type metadata accessor for ActivitySymbol();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v14);
    v21 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x128);

    v21(v22);
    IntelligenceActivityAttributes.ContentState.init(message:title:titleSymbol:subTitleSymbol:shouldCenterAlignMessage:)();
    v32 = (*MEMORY[0x1E6995FE8] + MEMORY[0x1E6995FE8]);
    v23 = swift_task_alloc();
    v0[18] = v23;
    *v23 = v0;
    v23[1] = closure #1 in WaitOnHoldService.updateActivity(message:);
    v24 = v0[12];

    return v32(v0 + 3, v24);
  }

  else
  {

    if (one-time initialization token for callHolding != -1)
    {
      OUTLINED_FUNCTION_0_13();
    }

    v26 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v26, &static Logger.callHolding);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_18_0(v28))
    {
      v29 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v29);
      OUTLINED_FUNCTION_27_41(&dword_1BBC58000, v30, v28, "Failed to update the WOH Live Activity, there is no Activity.");
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_38_24();

    OUTLINED_FUNCTION_13();

    return v31();
  }
}

{
  OUTLINED_FUNCTION_86_2();
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  v6 = v5[12];
  v7 = v5[11];
  v8 = v5[10];
  v9 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v10 = v9;
  *(v3 + 152) = v0;

  (*(v7 + 8))(v6, v8);

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_38_24();

  OUTLINED_FUNCTION_13();

  return v0();
}

{
  OUTLINED_FUNCTION_44();

  if (one-time initialization token for callHolding != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  v1 = *(v0 + 152);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.callHolding);
  v3 = OUTLINED_FUNCTION_28_0();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 152);
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_42();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1BBC58000, v4, v5, "Failed to update the WOH Live Activity: %@", v8, 0xCu);
    outlined destroy of TapInteractionHandler?(v9, &_sSo8NSObjectCSgMd);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  OUTLINED_FUNCTION_38_24();

  OUTLINED_FUNCTION_13();

  return v12();
}

id WaitOnHoldService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WaitOnHoldService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t partial apply for closure #5 in WaitOnHoldService.init()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2(v1);
  *v2 = v3;
  v2[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  v4 = OUTLINED_FUNCTION_16_2();

  return closure #5 in WaitOnHoldService.init()(v4, v5, v6, v0);
}

uint64_t specialized WaitOnHoldStatusMessageService.init(call:initialStatusMessage:)(void *a1, char *a2, uint64_t a3)
{
  v95 = a2;
  v77 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v94 = v65 - v5;
  v86 = type metadata accessor for NSNotificationCenter.Publisher();
  v84 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v82 = v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGMd);
  v85 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v83 = v65 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGGMd);
  v89 = *(v8 - 8);
  v90 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v88 = v65 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC16RemoveDuplicatesVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGGSo17OS_dispatch_queueCGMd);
  v92 = *(v10 - 8);
  v93 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v91 = v65 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI37WaitOnHoldRequiresUserAttentionReasonOSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v67 = v65 - v13;
  v14 = type metadata accessor for WaitOnHoldRequiresUserAttentionReason();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v68 = v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySSGGMd);
  v76 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v75 = v65 - v17;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation16AttributedStringVGMd);
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v19 = v65 - v18;
  v20 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v21 = type metadata accessor for AttributedString();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = v65 - v26;
  v72 = lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type TUCall and conformance TUCall, &lazy cache variable for type metadata for TUCall);
  *(a3 + 32) = MEMORY[0x1E69E7CD0];
  v79 = a3 + 32;
  *(a3 + 40) = 0;
  *(a3 + 48) = MEMORY[0x1E69E7CC0];
  v28 = *MEMORY[0x1E6995C70];
  v69 = v15;
  v29 = *(v15 + 104);
  v66 = OBJC_IVAR____TtC15ConversationKit30WaitOnHoldStatusMessageService_requiresUserAttentionReason;
  v70 = v14;
  v65[1] = v15 + 104;
  v65[0] = v29;
  v29(a3 + OBJC_IVAR____TtC15ConversationKit30WaitOnHoldStatusMessageService_requiresUserAttentionReason, v28, v14);
  v71 = OBJC_IVAR____TtC15ConversationKit30WaitOnHoldStatusMessageService__waitOnHoldStatusMessage;
  v30 = [objc_opt_self() conversationKit];
  v97._object = 0xE000000000000000;
  v31.value._countAndFlagsBits = 0x61737265766E6F43;
  v31.value._object = 0xEF74694B6E6F6974;
  v32._object = 0x80000001BC500610;
  v32._countAndFlagsBits = 0xD00000000000001ALL;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  v97._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v31, v30, v33, v97);

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v34 = *(v22 + 16);
  v34(v25, v27, v21);
  Published.init(initialValue:)();
  v35 = *(v22 + 8);
  v80 = v22 + 8;
  v78 = v35;
  v35(v27, v21);
  (*(v73 + 32))(a3 + v71, v19, v74);
  v36 = OBJC_IVAR____TtC15ConversationKit30WaitOnHoldStatusMessageService__transcriptEvents;
  v96 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  v37 = v75;
  Published.init(initialValue:)();
  (*(v76 + 32))(a3 + v36, v37, v81);
  v38 = v77;
  v39 = v72;
  *(a3 + 16) = v77;
  *(a3 + 24) = v39;
  v81 = v21;
  v34(v27, v95, v21);
  v40 = v38;
  WaitOnHoldStatusMessageService.waitOnHoldStatusMessage.setter(v27);
  v41 = [v40 smartHoldingSession];
  if (v41)
  {
    v42 = v41;
    v43 = [v41 transcription];
    v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v45 = *(v44 + 16);

    if (v45)
    {
      [v42 requiresUserAttentionReason];
      v46 = v67;
      WaitOnHoldRequiresUserAttentionReason.init(rawValue:)();
      v47 = v70;
      if (__swift_getEnumTagSinglePayload(v46, 1, v70) == 1)
      {
        v48 = v68;
        (v65[0])(v68, *MEMORY[0x1E6995C90], v47);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v46, 1, v47);
        v50 = v69;
        if (EnumTagSinglePayload != 1)
        {
          outlined destroy of TapInteractionHandler?(v46, &_s16CommunicationsUI37WaitOnHoldRequiresUserAttentionReasonOSgMd);
        }
      }

      else
      {
        v50 = v69;
        v48 = v68;
        (*(v69 + 32))(v68, v46, v47);
      }

      v51 = v66;
      swift_beginAccess();
      (*(v50 + 40))(a3 + v51, v48, v47);
      swift_endAccess();
      WaitOnHoldStatusMessageService.updateStatusMessage(smartHoldingSession:)(v42);
    }
  }

  else
  {
    v42 = v40;
  }

  v52 = [objc_opt_self() defaultCenter];
  v53 = v82;
  NSNotificationCenter.publisher(for:object:)();

  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21TUSmartHoldingSessionCSgMd);
  lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher();
  v54 = v83;
  v55 = v86;
  Publisher.map<A>(_:)();

  (*(v84 + 8))(v53, v55);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<NSNotificationCenter.Publisher, TUSmartHoldingSession?> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGMd);
  lazy protocol witness table accessor for type TUSmartHoldingSession? and conformance <A> A?();
  v56 = v87;
  v57 = v88;
  Publisher<>.removeDuplicates()();
  (*(v85 + 8))(v54, v56);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v58 = static OS_dispatch_queue.main.getter();
  v96 = v58;
  v59 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v60 = v94;
  __swift_storeEnumTagSinglePayload(v94, 1, 1, v59);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Publishers.Map<NSNotificationCenter.Publisher, TUSmartHoldingSession?>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGGMd);
  lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, &lazy cache variable for type metadata for OS_dispatch_queue);
  v62 = v90;
  v61 = v91;
  Publisher.receive<A>(on:options:)();
  outlined destroy of TapInteractionHandler?(v60, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);
  (*(v89 + 8))(v57, v62);

  swift_allocObject();
  swift_weakInit();

  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.RemoveDuplicates<Publishers.Map<NSNotificationCenter.Publisher, TUSmartHoldingSession?>>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC16RemoveDuplicatesVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGGSo17OS_dispatch_queueCGMd);
  v63 = v93;
  Publisher<>.sink(receiveValue:)();

  (*(v92 + 8))(v61, v63);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v78(v95, v81);
  return a3;
}

uint64_t objectdestroy_4Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_37_0();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in WaitOnHoldService.updateForCall(withUUID:)()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2(v1);
  *v2 = v3;
  v2[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  v4 = OUTLINED_FUNCTION_16_2();

  return closure #1 in WaitOnHoldService.updateForCall(withUUID:)(v4, v5, v6, v0);
}

uint64_t partial apply for closure #1 in WaitOnHoldService.updateActivity(message:)()
{
  OUTLINED_FUNCTION_44();
  v1 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_22(v1);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2(v3);
  *v4 = v5;
  v4[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  v6 = OUTLINED_FUNCTION_16_2();

  return closure #1 in WaitOnHoldService.updateActivity(message:)(v6, v7, v8, v2, v9);
}

uint64_t partial apply for closure #1 in WaitOnHoldService.startActivity()()
{
  OUTLINED_FUNCTION_44();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2(v3);
  *v4 = v5;
  v4[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  v6 = OUTLINED_FUNCTION_16_2();

  return closure #1 in WaitOnHoldService.startActivity()(v6, v7, v8, v2, v1);
}

unint64_t lazy protocol witness table accessor for type TUSmartHoldingSession? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type TUSmartHoldingSession? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type TUSmartHoldingSession? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo21TUSmartHoldingSessionCSgMd);
    lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type TUSmartHoldingSession and conformance NSObject, &lazy cache variable for type metadata for TUSmartHoldingSession);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TUSmartHoldingSession? and conformance <A> A?);
  }

  return result;
}

uint64_t partial apply for closure #1 in WaitOnHoldService.beginInitialHoldDetectionForCallIfNeeded()()
{
  OUTLINED_FUNCTION_86_2();
  OUTLINED_FUNCTION_48();
  type metadata accessor for UUID();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v1[1] = partial apply for closure #1 in CallRecordingService.stopRecording(call:completion:);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_69();

  return closure #1 in WaitOnHoldService.beginInitialHoldDetectionForCallIfNeeded()(v3, v4, v5, v6, v7, v8);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_67()
{
  OUTLINED_FUNCTION_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v1[1] = partial apply for closure #1 in CallRecordingService.stopRecording(call:completion:);
  v3 = OUTLINED_FUNCTION_13_5();

  return v4(v3);
}

uint64_t partial apply for closure #1 in closure #2 in WaitOnHoldService.init()()
{
  OUTLINED_FUNCTION_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v1[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  OUTLINED_FUNCTION_13_5();

  return closure #1 in closure #2 in WaitOnHoldService.init()();
}

uint64_t partial apply for closure #2 in closure #2 in WaitOnHoldService.init()()
{
  OUTLINED_FUNCTION_44();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2(v3);
  *v4 = v5;
  v4[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  v6 = OUTLINED_FUNCTION_16_2();

  return closure #2 in closure #2 in WaitOnHoldService.init()(v6, v7, v8, v2, v1);
}

uint64_t partial apply for closure #1 in WaitOnHoldService.stopActivity()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2(v1);
  *v2 = v3;
  v2[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  v4 = OUTLINED_FUNCTION_16_2();

  return closure #1 in WaitOnHoldService.stopActivity()(v4, v5, v6, v0);
}

unint64_t specialized RangeReplaceableCollection<>.removeLast()()
{
  result = specialized Array.count.getter(*v0);
  if (!result)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  result = specialized Array._customRemoveLast()();
  if (result)
  {
    return result;
  }

  v2 = specialized Array.count.getter(*v0);
  v3 = __OFSUB__(v2, 1);
  result = v2 - 1;
  if (v3)
  {
    goto LABEL_8;
  }

  return specialized Array.remove(at:)(result);
}

void specialized RangeReplaceableCollection<>.removeLast()(uint64_t a1@<X8>)
{
  if (*(*v1 + 16))
  {
    specialized Array._customRemoveLast()(&v3);
    if (v4)
    {
      outlined init with take of TapInteractionHandler(&v3, a1);
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v3, &_s15ConversationKit6Notice_pSgMd);
      specialized Array.remove(at:)(*(*v1 + 16) - 1, a1);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t WaitOnHoldStatusMessageService.__allocating_init(call:initialStatusMessage:)()
{
  swift_getObjectType();
  v0 = OUTLINED_FUNCTION_20_46();

  return specialized WaitOnHoldStatusMessageService.__allocating_init(call:initialStatusMessage:)(v0, v1, v2, v3, v4);
}

uint64_t key path setter for WaitOnHoldStatusMessageService.call : WaitOnHoldStatusMessageService(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  return WaitOnHoldStatusMessageService.call.setter(v2, v1);
}

uint64_t WaitOnHoldStatusMessageService.call.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_0();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return swift_unknownObjectRelease();
}

uint64_t WaitOnHoldStatusMessageService.cancellables.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_6_0();
  *(v1 + 32) = a1;
}

uint64_t WaitOnHoldStatusMessageService.requiresUserAttention.setter(char a1)
{
  result = OUTLINED_FUNCTION_6_0();
  *(v1 + 40) = a1;
  return result;
}

uint64_t WaitOnHoldStatusMessageService.requiresUserAttentionReason.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit30WaitOnHoldStatusMessageService_requiresUserAttentionReason;
  OUTLINED_FUNCTION_4_5();
  type metadata accessor for WaitOnHoldRequiresUserAttentionReason();
  OUTLINED_FUNCTION_7_0();
  return (*(v4 + 16))(a1, v1 + v3);
}

uint64_t WaitOnHoldStatusMessageService.requiresUserAttentionReason.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit30WaitOnHoldStatusMessageService_requiresUserAttentionReason;
  OUTLINED_FUNCTION_30_2();
  type metadata accessor for WaitOnHoldRequiresUserAttentionReason();
  OUTLINED_FUNCTION_7_0();
  (*(v4 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

uint64_t WaitOnHoldStatusMessageService.waitOnHoldStatusMessage.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t WaitOnHoldStatusMessageService.waitOnHoldStatusMessage.setter(uint64_t a1)
{
  v2 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = OUTLINED_FUNCTION_25_40();
  v7(v6);

  static Published.subscript.setter();
  return (*(v4 + 8))(a1, v2);
}

uint64_t key path getter for WaitOnHoldStatusMessageService.transcriptEvents : WaitOnHoldStatusMessageService@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 304))();
  *a2 = result;
  return result;
}

uint64_t WaitOnHoldStatusMessageService.transcriptEvents.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t WaitOnHoldStatusMessageService.transcriptEvents.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path setter for WaitOnHoldStatusMessageService.$transcriptEvents : WaitOnHoldStatusMessageService(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySSG_GMd);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return WaitOnHoldStatusMessageService.$transcriptEvents.setter(v5);
}

uint64_t WaitOnHoldStatusMessageService.$transcriptEvents.getter()
{
  OUTLINED_FUNCTION_30_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySSGGMd);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t WaitOnHoldStatusMessageService.$transcriptEvents.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySSG_GMd);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_34();
  v6 = OUTLINED_FUNCTION_25_40();
  v7(v6);
  OUTLINED_FUNCTION_30_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySSGGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t WaitOnHoldStatusMessageService.init(call:initialStatusMessage:)()
{
  swift_getObjectType();
  v0 = OUTLINED_FUNCTION_20_46();

  return specialized WaitOnHoldStatusMessageService.init(call:initialStatusMessage:)(v0, v1, v2, v3, v4);
}

void closure #1 in WaitOnHoldStatusMessageService.init(call:initialStatusMessage:)(void *a1@<X8>)
{
  Notification.object.getter();
  if (!v18)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, &_sypSgMd);
    goto LABEL_11;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
  if (swift_dynamicCast())
  {
    v2 = [v16 callUUID];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    OUTLINED_FUNCTION_4_0();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      OUTLINED_FUNCTION_0_1();
      (*(v7 + 136))();
      v9 = v8;

      ObjectType = swift_getObjectType();
      v11 = (*(v9 + 56))(ObjectType, v9);
      v13 = v12;
      swift_unknownObjectRelease();
      if (v3 == v11 && v5 == v13)
      {
      }

      else
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v15 & 1) == 0)
        {

          goto LABEL_11;
        }
      }

      Strong = [v16 smartHoldingSession];
    }

    else
    {
    }

    goto LABEL_16;
  }

LABEL_11:
  Strong = 0;
LABEL_16:
  *a1 = Strong;
}

void closure #2 in WaitOnHoldStatusMessageService.init(call:initialStatusMessage:)(void **a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI37WaitOnHoldRequiresUserAttentionReasonOSgMd);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_34();
  v5 = type metadata accessor for WaitOnHoldRequiresUserAttentionReason();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24[-v13];
  v15 = *a1;
  OUTLINED_FUNCTION_4_0();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if (v15)
    {
      v18 = v15;
      if ([v18 state] == 3)
      {
        OUTLINED_FUNCTION_0_1();
        (*(v19 + 192))(1);
        [v18 requiresUserAttentionReason];
        WaitOnHoldRequiresUserAttentionReason.init(rawValue:)();
        OUTLINED_FUNCTION_26_39(v1, 1);
        if (v20)
        {
          v7[13](v11, *MEMORY[0x1E6995C90], v5);
          OUTLINED_FUNCTION_26_39(v1, 1);
          if (!v20)
          {
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s16CommunicationsUI37WaitOnHoldRequiresUserAttentionReasonOSgMd);
          }
        }

        else
        {
          v7[4](v11, v1, v5);
        }

        v23 = OBJC_IVAR____TtC15ConversationKit30WaitOnHoldStatusMessageService_requiresUserAttentionReason;
        OUTLINED_FUNCTION_30_2();
        v7[5](v17 + v23, v11, v5);
        swift_endAccess();
      }

      WaitOnHoldStatusMessageService.updateStatusMessage(smartHoldingSession:)(v18);
    }

    else
    {
      OUTLINED_FUNCTION_0_1();
      (*(v21 + 192))(0);
      (v7)[13](v14, *MEMORY[0x1E6995C70], v5);
      v22 = OBJC_IVAR____TtC15ConversationKit30WaitOnHoldStatusMessageService_requiresUserAttentionReason;
      OUTLINED_FUNCTION_30_2();
      (v7)[5](v17 + v22, v14, v5);
      swift_endAccess();
      swift_beginAccess();
      *(v17 + 48) = MEMORY[0x1E69E7CC0];
    }
  }
}

uint64_t WaitOnHoldStatusMessageService.values.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation16AttributedStringV_GMd);
  OUTLINED_FUNCTION_1();
  v2 = v1;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9 - v4;
  OUTLINED_FUNCTION_30_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation16AttributedStringVGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  OUTLINED_FUNCTION_6_10();
  v7 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v6, &_s7Combine9PublishedV9PublisherVy10Foundation16AttributedStringV_GMd);
  MEMORY[0x1BFB1DE80](v0, v7);
  return (*(v2 + 8))(v5, v0);
}

uint64_t WaitOnHoldStatusMessageService.transcriptUpdates.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySSG_GMd);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  (*(*v0 + 328))(v5);
  OUTLINED_FUNCTION_6_10();
  v9 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v8, &_s7Combine9PublishedV9PublisherVySaySSG_GMd);
  MEMORY[0x1BFB1DE80](v1, v9);
  return (*(v3 + 8))(v7, v1);
}

uint64_t WaitOnHoldStatusMessageService.updateSmartHoldingEvents(smartHoldingSession:)(void *a1)
{
  v3 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v62 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_24_41();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v61 - v7;
  v9 = [a1 events];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUSmartHoldingEvent);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = specialized Array.count.getter(v10);

  if (v11 < 1)
  {
    return 1;
  }

  v61[0] = v3;
  v63 = v1;
  v12 = [a1 events];
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v64 = MEMORY[0x1E69E7CC0];
  v14 = specialized Array.count.getter(v13);
  for (i = 0; v14 != i; ++i)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1BFB22010](i, v13);
    }

    else
    {
      if (i >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v16 = *(v13 + 8 * i + 32);
    }

    v17 = v16;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if ([v16 eventType] == 1)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }
  }

  v18 = v64;
  v19 = specialized Array.count.getter(v64);
  v20 = v63;
  OUTLINED_FUNCTION_4_0();
  if (v19 != specialized Array.count.getter(*(v20 + 48)))
  {
    if (specialized Array.count.getter(*(v20 + 48)) < v19)
    {
      v40 = specialized Array.count.getter(*(v20 + 48));
      v41 = __OFSUB__(v19, v40);
      v42 = v19 - v40;
      if (!v41)
      {
        v43 = specialized BidirectionalCollection.suffix(_:)(v42, v18);
        v45 = v44;
        v47 = v46;
        v49 = v48;
        OUTLINED_FUNCTION_30_2();
        specialized Array.append<A>(contentsOf:)(v43, v45, v47, v49);
        swift_endAccess();
        return 1;
      }

      goto LABEL_42;
    }

    if (one-time initialization token for callHolding != -1)
    {
LABEL_43:
      OUTLINED_FUNCTION_0_13();
    }

    v51 = type metadata accessor for Logger();
    __swift_project_value_buffer(v51, &static Logger.callHolding);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.fault.getter();
    if (OUTLINED_FUNCTION_25(v53))
    {
      *OUTLINED_FUNCTION_33() = 0;
      OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v54, v55, "HoldAssist: The events list has fewer records than expected.");
      OUTLINED_FUNCTION_26();
    }

    return 0;
  }

  v22 = specialized BidirectionalCollection.last.getter(v21);

  if (v22)
  {
    v23 = specialized BidirectionalCollection.last.getter(v18);

    if (v23)
    {
      v24 = [v23 date];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = [v22 date];
      v26 = v61[1];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
      v27 = v61[0];
      LOBYTE(v25) = dispatch thunk of static Comparable.< infix(_:_:)();
      v28 = *(v62 + 8);
      v28(v26, v27);
      v28(v8, v27);
      if ((v25 & 1) == 0)
      {
        v29 = [v23 text];
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        v33 = [v22 text];
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;

        if (v30 == v34 && v32 == v36)
        {
        }

        else
        {
          v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v39 = v63;
          if ((v38 & 1) == 0)
          {
            OUTLINED_FUNCTION_30_2();

            MEMORY[0x1BFB20CC0]();
            specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(*((*(v39 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10));
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_endAccess();

            return 1;
          }
        }
      }

      if (one-time initialization token for callHolding != -1)
      {
        OUTLINED_FUNCTION_0_13();
      }

      v56 = type metadata accessor for Logger();
      v57 = __swift_project_value_buffer(v56, &static Logger.callHolding);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.fault.getter();
      if (OUTLINED_FUNCTION_25(v59))
      {
        v60 = OUTLINED_FUNCTION_33();
        *v60 = 0;
        _os_log_impl(&dword_1BBC58000, v58, v57, "HoldAssist: Most recent utterance was out of date.", v60, 2u);
        MEMORY[0x1BFB23DF0](v60, -1, -1);
      }
    }
  }

  else
  {
  }

  return 0;
}

uint64_t WaitOnHoldStatusMessageService.updateStatusMessage(smartHoldingSession:)(void *a1)
{
  v3 = v2;
  v5 = type metadata accessor for WaitOnHoldRequiresUserAttentionReason();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  v12 = type metadata accessor for AttributeContainer();
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v16 = v15 - v14;
  type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_1();
  v76 = v18;
  v77 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_24_41();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v67 - v20;
  v73 = objc_opt_self();
  v22 = [v73 conversationKit];
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_68(0xD00000000000001ALL, 0x80000001BC500610, 0x61737265766E6F43, 0xEF74694B6E6F6974);

  AttributeContainer.init()();
  v75 = v21;
  AttributedString.init(_:attributes:)();
  if (WaitOnHoldStatusMessageService.updateSmartHoldingEvents(smartHoldingSession:)(a1))
  {
    v69 = v11;
    v70 = v7;
    v71 = v5;
    v72 = v16;
    OUTLINED_FUNCTION_4_0();
    v23 = v3[6];
    v24 = specialized Array.count.getter(v23);
    if (v24)
    {
      v1 = v24;
      v78 = MEMORY[0x1E69E7CC0];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      if (v1 < 0)
      {
        __break(1u);
LABEL_38:
        OUTLINED_FUNCTION_0_13();
        goto LABEL_33;
      }

      v68 = v3;
      v25 = 0;
      v26 = v78;
      do
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x1BFB22010](v25, v23);
        }

        else
        {
          v27 = *(v23 + 8 * v25 + 32);
        }

        v28 = v27;
        v29 = [v27 text];
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        v78 = v26;
        v33 = *(v26 + 16);
        if (v33 >= *(v26 + 24) >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v26 = v78;
        }

        v25 = v25 + 1;
        *(v26 + 16) = v33 + 1;
        v34 = v26 + 16 * v33;
        *(v34 + 32) = v30;
        *(v34 + 40) = v32;
      }

      while (v1 != v25);

      v3 = v68;
    }

    WaitOnHoldStatusMessageService.transcriptEvents.setter();
    v5 = v71;
    v11 = v69;
    v7 = v70;
  }

  (*(*v3 + 232))();
  v35 = (*(v7 + 88))(v11, v5);
  if (v35 != *MEMORY[0x1E6995C78])
  {
    v40 = v74;
    if (v35 == *MEMORY[0x1E6995C80])
    {
      v42 = [v73 conversationKit];
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_5_5();
      OUTLINED_FUNCTION_68(v43, v44, v45, v46);

      AttributeContainer.init()();
      AttributedString.init(_:attributes:)();
      v11 = v76;
LABEL_24:
      v53 = v75;
      v54 = v77;
      (*(v11 + 8))(v75, v77);
      (*(v11 + 32))(v53, v40, v54);
LABEL_25:
      if (one-time initialization token for callHolding != -1)
      {
        OUTLINED_FUNCTION_0_13();
      }

      v55 = type metadata accessor for Logger();
      __swift_project_value_buffer(v55, &static Logger.callHolding);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_25(v57))
      {
        *OUTLINED_FUNCTION_33() = 0;
        OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v58, v59, "Updating status message to <redacted>");
        OUTLINED_FUNCTION_26();
      }

      (*(v11 + 16))(v40, v53, v54);
      WaitOnHoldStatusMessageService.waitOnHoldStatusMessage.setter(v40);
      return (*(v11 + 8))(v53, v54);
    }

    v47 = v11;
    v11 = v76;
    if (v35 != *MEMORY[0x1E6995C88])
    {
      (*(v7 + 8))(v47, v5);
      v54 = v77;
      v53 = v75;
      goto LABEL_25;
    }

    v48 = [v73 conversationKit];
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_68(v49, v50, v51, v52);

    AttributeContainer.init()();
LABEL_23:
    AttributedString.init(_:attributes:)();
    goto LABEL_24;
  }

  v36 = (*(*v3 + 304))();
  v37 = specialized BidirectionalCollection.last.getter(v36);
  v39 = v38;

  v40 = v74;
  v11 = v76;
  if (v39)
  {
    v41 = HIBYTE(v39) & 0xF;
    if ((v39 & 0x2000000000000000) == 0)
    {
      v41 = v37 & 0xFFFFFFFFFFFFLL;
    }

    if (v41)
    {
      v78 = 34;
      v79 = 0xE100000000000000;
      MEMORY[0x1BFB20B10](v37, v39);

      MEMORY[0x1BFB20B10](34, 0xE100000000000000);
      AttributeContainer.init()();
      goto LABEL_23;
    }
  }

  if (one-time initialization token for callHolding != -1)
  {
    goto LABEL_38;
  }

LABEL_33:
  v60 = type metadata accessor for Logger();
  __swift_project_value_buffer(v60, &static Logger.callHolding);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.fault.getter();
  v63 = OUTLINED_FUNCTION_25(v62);
  v54 = v77;
  v53 = v75;
  if (v63)
  {
    *OUTLINED_FUNCTION_33() = 0;
    OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v64, v65, "HoldAssist: received a remoteAgentDetected status without a transcript.");
    OUTLINED_FUNCTION_26();
  }

  return (*(v11 + 8))(v53, v54);
}

uint64_t WaitOnHoldStatusMessageService.deinit()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC15ConversationKit30WaitOnHoldStatusMessageService_requiresUserAttentionReason;
  type metadata accessor for WaitOnHoldRequiresUserAttentionReason();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC15ConversationKit30WaitOnHoldStatusMessageService__waitOnHoldStatusMessage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation16AttributedStringVGMd);
  OUTLINED_FUNCTION_7_0();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC15ConversationKit30WaitOnHoldStatusMessageService__transcriptEvents;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySSGGMd);
  OUTLINED_FUNCTION_7_0();
  (*(v6 + 8))(v0 + v5);
  return v0;
}

uint64_t WaitOnHoldStatusMessageService.__deallocating_deinit()
{
  WaitOnHoldStatusMessageService.deinit();

  return swift_deallocClassInstance();
}

uint64_t key path setter for WaitOnHoldStatusMessageService.requiresUserAttentionReason : WaitOnHoldStatusMessageService(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(uint64_t))
{
  a5(0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_34();
  (*(v10 + 16))(v6, a1);
  return a6(v6);
}

uint64_t specialized WaitOnHoldStatusMessageService.__allocating_init(call:initialStatusMessage:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for WaitOnHoldStatusMessageService();
  v9 = swift_allocObject();

  return specialized WaitOnHoldStatusMessageService.init(call:initialStatusMessage:)(a1, a2, v9, a4, a5);
}

uint64_t specialized WaitOnHoldStatusMessageService.init(call:initialStatusMessage:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v107 = a5;
  v102 = a2;
  v103 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_1();
  v120 = v8;
  v112 = type metadata accessor for NSNotificationCenter.Publisher();
  OUTLINED_FUNCTION_1();
  v110 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v108 = v12 - v11;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGMd);
  OUTLINED_FUNCTION_1();
  v111 = v13;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_1();
  v109 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGGMd);
  OUTLINED_FUNCTION_1();
  v115 = v17;
  v116 = v16;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_1();
  v114 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC16RemoveDuplicatesVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGGSo17OS_dispatch_queueCGMd);
  OUTLINED_FUNCTION_1();
  v118 = v21;
  v119 = v20;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13_1();
  v117 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI37WaitOnHoldRequiresUserAttentionReasonOSgMd);
  OUTLINED_FUNCTION_22(v24);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_1();
  v92 = v26;
  v27 = type metadata accessor for WaitOnHoldRequiresUserAttentionReason();
  OUTLINED_FUNCTION_1();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_8();
  v93 = v32 - v31;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySSGGMd);
  OUTLINED_FUNCTION_1();
  v100 = v33;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13_1();
  v99 = v35;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation16AttributedStringVGMd);
  OUTLINED_FUNCTION_1();
  v97 = v36;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v37);
  v39 = v90 - v38;
  v40 = type metadata accessor for AttributeContainer();
  v41 = OUTLINED_FUNCTION_22(v40);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_8();
  v42 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_1();
  v44 = v43;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_17();
  v48 = v46 - v47;
  v50 = MEMORY[0x1EEE9AC00](v49);
  v52 = v90 - v51;
  *(a3 + 32) = MEMORY[0x1E69E7CD0];
  v105 = a3 + 32;
  *(a3 + 40) = 0;
  *(a3 + 48) = MEMORY[0x1E69E7CC0];
  v53 = *MEMORY[0x1E6995C70];
  v94 = v29;
  v54 = *(v29 + 104);
  v91 = OBJC_IVAR____TtC15ConversationKit30WaitOnHoldStatusMessageService_requiresUserAttentionReason;
  v95 = v27;
  v90[1] = v29 + 104;
  v90[0] = v54;
  v54(a3 + OBJC_IVAR____TtC15ConversationKit30WaitOnHoldStatusMessageService_requiresUserAttentionReason, v53, v27, v50);
  v96 = OBJC_IVAR____TtC15ConversationKit30WaitOnHoldStatusMessageService__waitOnHoldStatusMessage;
  v55 = [objc_opt_self() conversationKit];
  v122._object = 0xE000000000000000;
  OUTLINED_FUNCTION_5_5();
  v56._object = 0x80000001BC500610;
  v56._countAndFlagsBits = 0xD00000000000001ALL;
  v57._countAndFlagsBits = 0;
  v57._object = 0xE000000000000000;
  v122._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v56, v58, v55, v57, v122);

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v59 = *(v44 + 16);
  v59(v48, v52, v42);
  v60 = v102;
  Published.init(initialValue:)();
  v61 = *(v44 + 8);
  v106 = v44 + 8;
  v104 = v61;
  v61(v52, v42);
  (*(v97 + 32))(a3 + v96, v39, v98);
  v62 = OBJC_IVAR____TtC15ConversationKit30WaitOnHoldStatusMessageService__transcriptEvents;
  v121 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  v63 = v99;
  Published.init(initialValue:)();
  (*(v100 + 32))(a3 + v62, v63, v101);
  v64 = v107;
  *(a3 + 16) = v103;
  *(a3 + 24) = v64;
  v107 = v42;
  v59(v52, v60, v42);
  swift_unknownObjectRetain();
  WaitOnHoldStatusMessageService.waitOnHoldStatusMessage.setter(v52);
  objc_opt_self();
  v65 = swift_dynamicCastObjCClass();
  if (v65 && (v66 = [v65 smartHoldingSession]) != 0)
  {
    v67 = v66;
    v68 = [v66 transcription];
    v69 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v70 = *(v69 + 16);

    if (v70)
    {
      [v67 requiresUserAttentionReason];
      v71 = v92;
      WaitOnHoldRequiresUserAttentionReason.init(rawValue:)();
      v72 = v95;
      OUTLINED_FUNCTION_26_39(v71, 1);
      if (v73)
      {
        v75 = v93;
        (v90[0])(v93, *MEMORY[0x1E6995C90], v72);
        OUTLINED_FUNCTION_26_39(v71, 1);
        v74 = v94;
        if (!v73)
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v71, &_s16CommunicationsUI37WaitOnHoldRequiresUserAttentionReasonOSgMd);
        }
      }

      else
      {
        v74 = v94;
        v75 = v93;
        (*(v94 + 32))(v93, v71, v72);
      }

      v76 = v91;
      OUTLINED_FUNCTION_30_2();
      (*(v74 + 40))(a3 + v76, v75, v72);
      swift_endAccess();
      WaitOnHoldStatusMessageService.updateStatusMessage(smartHoldingSession:)(v67);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v77 = [objc_opt_self() defaultCenter];
  v78 = v108;
  NSNotificationCenter.publisher(for:object:)();

  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21TUSmartHoldingSessionCSgMd);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x1E6969F20]);
  v79 = v109;
  v80 = v112;
  Publisher.map<A>(_:)();

  (*(v110 + 8))(v78, v80);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<NSNotificationCenter.Publisher, TUSmartHoldingSession?> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGMd);
  lazy protocol witness table accessor for type TUSmartHoldingSession? and conformance <A> A?();
  v81 = v113;
  v82 = v114;
  Publisher<>.removeDuplicates()();
  (*(v111 + 8))(v79, v81);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v83 = static OS_dispatch_queue.main.getter();
  v121 = v83;
  v84 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v85 = v120;
  __swift_storeEnumTagSinglePayload(v120, 1, 1, v84);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Publishers.Map<NSNotificationCenter.Publisher, TUSmartHoldingSession?>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGGMd);
  lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, &lazy cache variable for type metadata for OS_dispatch_queue);
  v87 = v116;
  v86 = v117;
  Publisher.receive<A>(on:options:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v85, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);
  (*(v115 + 8))(v82, v87);

  swift_allocObject();
  swift_weakInit();

  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.RemoveDuplicates<Publishers.Map<NSNotificationCenter.Publisher, TUSmartHoldingSession?>>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC16RemoveDuplicatesVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGGSo17OS_dispatch_queueCGMd);
  v88 = v119;
  Publisher<>.sink(receiveValue:)();

  (*(v118 + 8))(v86, v88);
  OUTLINED_FUNCTION_30_2();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v104(v60, v107);
  return a3;
}

uint64_t type metadata accessor for WaitOnHoldStatusMessageService()
{
  result = type metadata singleton initialization cache for WaitOnHoldStatusMessageService;
  if (!type metadata singleton initialization cache for WaitOnHoldStatusMessageService)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WaitOnHoldStatusMessageService()
{
  type metadata accessor for WaitOnHoldRequiresUserAttentionReason();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Published<AttributedString>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Published<[String]>();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for Published<AttributedString>()
{
  if (!lazy cache variable for type metadata for Published<AttributedString>)
  {
    type metadata accessor for AttributedString();
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<AttributedString>);
    }
  }
}

void type metadata accessor for Published<[String]>()
{
  if (!lazy cache variable for type metadata for Published<[String]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<[String]>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Date and conformance Date(unint64_t *a1, void (*a2)(uint64_t))
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

id CallHoldingButtonViewController.init(_:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = &v5[OBJC_IVAR____TtC15ConversationKit31CallHoldingButtonViewController_delegate];
  *&v5[OBJC_IVAR____TtC15ConversationKit31CallHoldingButtonViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC15ConversationKit31CallHoldingButtonViewController____lazy_storage___button] = 0;
  *&v5[OBJC_IVAR____TtC15ConversationKit31CallHoldingButtonViewController____lazy_storage___callHoldingDebugView] = 0;
  v11 = [objc_opt_self() sharedInstance];
  type metadata accessor for CallHoldingButtonViewModel();
  swift_allocObject();
  *&v5[OBJC_IVAR____TtC15ConversationKit31CallHoldingButtonViewController_viewModel] = CallHoldingButtonViewModel.init(_:callCenter:)(a1, a2, v11);
  *(v10 + 1) = a4;
  swift_unknownObjectWeakAssign();
  v14.receiver = v5;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
  swift_unknownObjectRelease();
  return v12;
}

id CallHoldingButtonViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void CallHoldingButtonViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit31CallHoldingButtonViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15ConversationKit31CallHoldingButtonViewController____lazy_storage___button) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit31CallHoldingButtonViewController____lazy_storage___callHoldingDebugView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall CallHoldingButtonViewController.viewDidLoad()()
{
  v33.receiver = v0;
  v33.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v33, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC15ConversationKit31CallHoldingButtonViewController_viewModel];
  OUTLINED_FUNCTION_6_0();
  *(v2 + 24) = &protocol witness table for CallHoldingButtonViewController;
  swift_unknownObjectWeakAssign();
  v3 = CallHoldingButtonViewController.button.getter();
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];

  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  v6 = OBJC_IVAR____TtC15ConversationKit31CallHoldingButtonViewController____lazy_storage___button;
  [v4 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BC4BA7F0;
  v8 = [*&v0[v6] topAnchor];
  v9 = OUTLINED_FUNCTION_3_133();
  if (!v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v9;
  v11 = [v9 topAnchor];

  v12 = OUTLINED_FUNCTION_2_136();
  *(v7 + 32) = v12;
  v13 = [*&v0[v6] leadingAnchor];
  v14 = OUTLINED_FUNCTION_3_133();
  if (!v14)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = v14;
  v16 = [v14 leadingAnchor];

  v17 = OUTLINED_FUNCTION_2_136();
  *(v7 + 40) = v17;
  v18 = [*&v0[v6] trailingAnchor];
  v19 = OUTLINED_FUNCTION_3_133();
  if (!v19)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v20 = v19;
  v21 = [v19 trailingAnchor];

  v22 = OUTLINED_FUNCTION_2_136();
  *(v7 + 48) = v22;
  v23 = [*&v0[v6] bottomAnchor];
  v24 = [v0 view];
  if (!v24)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v25 = v24;
  v26 = objc_opt_self();
  v27 = [v25 bottomAnchor];

  v28 = [v23 constraintEqualToAnchor_];
  *(v7 + 56) = v28;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v26 activateConstraints_];

  *(v2 + 24) = &protocol witness table for CallHoldingButtonViewController;
  swift_unknownObjectWeakAssign();
  v30 = [v0 view];
  if (v30)
  {
    v31 = v30;
    v32 = [objc_opt_self() callDetailsButtonMaxSize];
    [v31 setMaximumContentSizeCategory_];

    return;
  }

LABEL_13:
  __break(1u);
}

Swift::Void __swiftcall CallHoldingButtonViewController.buttonTapped()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v4 = *&v0[OBJC_IVAR____TtC15ConversationKit31CallHoldingButtonViewController_viewModel];
  swift_beginAccess();
  if (*(v4 + 60) == 1)
  {
    static TaskPriority.userInitiated.getter();
    v5 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v5);
    type metadata accessor for MainActor();
    v6 = v0;
    v7 = static MainActor.shared.getter();
    v8 = swift_allocObject();
    v9 = MEMORY[0x1E69E85E0];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = v6;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  }
}

uint64_t closure #1 in CallHoldingButtonViewController.buttonTapped()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x1EEE6DFA0](closure #1 in CallHoldingButtonViewController.buttonTapped(), v6, v5);
}

uint64_t closure #1 in CallHoldingButtonViewController.buttonTapped()()
{
  OUTLINED_FUNCTION_24_0();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = closure #1 in CallHoldingButtonViewController.buttonTapped();

  return CallHoldingButtonViewModel.setCallHoldingActive(isActive:)();
}

{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = closure #1 in CallHoldingButtonViewController.buttonTapped();
  }

  else
  {
    v5 = closure #1 in CallHoldingButtonViewController.buttonTapped();
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

{
  v15 = v0;

  if (one-time initialization token for callHolding != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  v1 = *(v0 + 88);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.callHolding);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1BBC58000, v4, v5, "Setting call holding active failed: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v11 = *(v0 + 88);
  CallHoldingButtonViewController.showSmartHoldingFailedAlert()();

  OUTLINED_FUNCTION_13();

  return v12();
}

void CallHoldingButtonViewController.showSmartHoldingFailedAlert()()
{
  v1 = v0;
  if (one-time initialization token for callHolding != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.callHolding);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BBC58000, v3, v4, "Showing alert for Wait on Hold session failed.", v5, 2u);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
  }

  v6 = _TUIsInternalInstall();
  if (v6)
  {
    v7 = 0xD00000000000003BLL;
  }

  else
  {
    v7 = 0xD000000000000026;
  }

  if (v6)
  {
    v8 = "SmartHolding Failed";
  }

  else
  {
    v8 = "$_callHoldingDebugView";
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController);
  v9 = @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(0xD000000000000013, 0x80000001BC5122D0, v7, v8 | 0x8000000000000000, 1);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction);
  v10 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  [v9 addAction_];
  [v9 setPreferredAction_];
  [v1 presentViewController:v9 animated:1 completion:0];
}

Swift::Void __swiftcall CallHoldingButtonViewController.invertColor(_:)(Swift::Bool a1)
{
  v2 = CallHoldingButtonViewController.button.getter();
  CallHoldingButton.overrideTintColor(_:)(a1);
}

Swift::Void __swiftcall CallHoldingButtonViewController.textSizeDidChange()()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 setNeedsDisplay];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall CallHoldingButtonViewController.setWaitOnHoldActive(_:)(Swift::Bool a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = *&v1[OBJC_IVAR____TtC15ConversationKit31CallHoldingButtonViewController_viewModel];
  swift_beginAccess();
  if (*(v6 + 60) == 1)
  {
    static TaskPriority.userInitiated.getter();
    v7 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
    type metadata accessor for MainActor();
    v8 = v1;
    v9 = static MainActor.shared.getter();
    v10 = swift_allocObject();
    v11 = MEMORY[0x1E69E85E0];
    *(v10 + 16) = v9;
    *(v10 + 24) = v11;
    *(v10 + 32) = v8;
    *(v10 + 40) = a1;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  }
}

uint64_t closure #1 in CallHoldingButtonViewController.setWaitOnHoldActive(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 96) = a5;
  *(v5 + 48) = a4;
  type metadata accessor for MainActor();
  *(v5 + 56) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 64) = v7;
  *(v5 + 72) = v6;

  return MEMORY[0x1EEE6DFA0](closure #1 in CallHoldingButtonViewController.setWaitOnHoldActive(_:), v7, v6);
}

uint64_t closure #1 in CallHoldingButtonViewController.setWaitOnHoldActive(_:)()
{
  OUTLINED_FUNCTION_24_0();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = closure #1 in CallHoldingButtonViewController.setWaitOnHoldActive(_:);

  return CallHoldingButtonViewModel.setCallHoldingActive(isActive:)();
}

{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = closure #1 in CallHoldingButtonViewController.setWaitOnHoldActive(_:);
  }

  else
  {
    v5 = closure #1 in CallHoldingButtonViewController.setWaitOnHoldActive(_:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

{
  v17 = v0;

  if (one-time initialization token for callHolding != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  v1 = *(v0 + 88);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.callHolding);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 88);
  if (v6)
  {
    v8 = *(v0 + 96);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 67109378;
    *(v9 + 4) = v8;
    *(v9 + 8) = 2080;
    swift_getErrorValue();
    v11 = Error.localizedDescription.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v16);

    *(v9 + 10) = v13;
    _os_log_impl(&dword_1BBC58000, v4, v5, "Setting call holding to %{BOOL}d failed: %s", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  OUTLINED_FUNCTION_13();

  return v14();
}

id CallHoldingButtonViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x1BFB209B0]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id CallHoldingButtonViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t partial apply for closure #1 in CallHoldingButtonViewController.buttonTapped()()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_5_0(v3);

  return closure #1 in CallHoldingButtonViewController.buttonTapped()(v4, v5, v6, v2);
}

uint64_t partial apply for closure #1 in CallHoldingButtonViewController.setWaitOnHoldActive(_:)()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_5_0(v4);

  return closure #1 in CallHoldingButtonViewController.setWaitOnHoldActive(_:)(v5, v6, v7, v2, v3);
}

uint64_t _s7SwiftUI11ViewBuilderV10buildBlockyAA05TupleC0VyxxQp_tGxxQpRvzAA0C0RzlFZ15ConversationKit18DropdownMenuButtonV_A3KQP_Tt1g5@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = *v3;
  v7 = v3[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = *v8;
  v11 = v8[1];
  v13 = *v9;
  v12 = v9[1];
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = *(v2 + 1);
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = *(v3 + 1);
  *(a2 + 64) = v10;
  *(a2 + 72) = v11;
  *(a2 + 80) = *(v8 + 1);
  *(a2 + 96) = v13;
  *(a2 + 104) = v12;
  *(a2 + 112) = *(v9 + 1);
}

uint64_t _s7SwiftUI11ViewBuilderV10buildBlockyAA05TupleC0VyxxQp_tGxxQpRvzAA0C0RzlFZAA6HStackVyAFyAA6SpacerV_AA6ButtonVyAA15ModifiedContentVyAPyAPyAPyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundQ0VyAA06_ShapeC0VyAA6CircleVAA5ColorVGGGATyA8_SgGGGtGG_APyAlA06_FrameT0VGAPy15ConversationKit013ContactAvatarC033_E7E991686AA57F7698F87F3F451BA23ALLVA19_GA20_APyAPyAA4TextVATyAA13TextAlignmentOGGAA010_FixedSizeT0VGA20_A34_A20_AJyAFyANyAPyAPyAPyAPyAPyA27_A_GAA05_FlexyT0VGAA11_ClipEffectVyAA9RectangleVGGA2_yA4_yAA16RoundedRectangleVA8_GGGA13_GG_A51_tGGA20_QP_Tt1g5@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of Conversation?(*a1, a2, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA6ButtonVyAA15ModifiedContentVyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundN0VyAA06_ShapeE0VyAA6CircleVAA5ColorVGGGAOyA3_SgGGGtGGMd);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA6ButtonVyAA15ModifiedContentVyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundN0VyAA06_ShapeE0VyAA6CircleVAA5ColorVGGGAOyA3_SgGGGtGG_AKyAgA06_FrameQ0VGAKy15ConversationKit013ContactAvatarE033_E7E991686AA57F7698F87F3F451BA23ALLVA14_GA15_AKyAKyAA4TextVAOyAA13TextAlignmentOGGAA010_FixedSizeQ0VGA15_A29_A15_ACyAEyAIyAKyAKyAKyAKyAKyA22_AVGAA05_FlexvQ0VGAA11_ClipEffectVyAA9RectangleVGGAYyA_yAA16RoundedRectangleVA3_GGGA8_GG_A46_tGGA15_tMd);
  OUTLINED_FUNCTION_1_140(a2 + v4[12]);
  v6 = a2 + v5[16];
  v9 = *v7;
  v8 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = *(v7 + 24);
  v12 = *(v7 + 32);
  v13 = *(v7 + 40);
  *v6 = *v7;
  *(v6 + 8) = v8;
  *(v6 + 16) = v10;
  *(v6 + 24) = v11;
  *(v6 + 32) = v12;
  *(v6 + 40) = v13;
  v14 = (a2 + v5[20]);
  v16 = a1[3];
  v15 = a1[4];
  v17 = v16[3];
  v19 = *v16;
  v18 = v16[1];
  v14[2] = v16[2];
  v14[3] = v17;
  *v14 = v19;
  v14[1] = v18;
  v20 = v5[24];
  v21 = *(v15 + 27);
  v22 = v15[1];
  v37 = *v15;
  v38[0] = v22;
  *(v38 + 11) = v21;
  memmove((a2 + v20), v15, 0x2BuLL);
  v24 = a1[5];
  v23 = a1[6];
  v26 = v24[2];
  v25 = v24[3];
  v27 = *v24;
  v28 = v24[1];
  v29 = (a2 + v4[28]);
  v29[2] = v26;
  v29[3] = v25;
  *v29 = v27;
  v29[1] = v28;
  v30 = v4[32];
  v31 = *v23;
  v32 = v23[1];
  *&v40[11] = *(v23 + 27);
  v39 = v31;
  *v40 = v32;
  memmove((a2 + v30), v23, 0x2BuLL);
  OUTLINED_FUNCTION_1_140(a2 + v4[36]);
  outlined init with copy of Conversation?(v33, a2 + v4[40], &_s7SwiftUI6HStackVyAA9TupleViewVyAA6ButtonVyAA15ModifiedContentVyAIyAIyAIyAIyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameK0VGAA11_ClipEffectVyAA9RectangleVGGAA19_BackgroundModifierVyAA06_ShapeE0VyAA07RoundedP0VAA5ColorVGGGAA022_EnvironmentKeyWritingR0VyA3_SgGGG_A12_tGGMd);
  OUTLINED_FUNCTION_1_140(a2 + v4[44]);
  v34 = v9;
  outlined init with copy of Conversation?(&v37, v36, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FixedSizeLayoutVGMd);
  return outlined init with copy of Conversation?(&v39, v36, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FixedSizeLayoutVGMd);
}

uint64_t _s7SwiftUI11ViewBuilderV10buildBlockyAA05TupleC0VyxxQp_tGxxQpRvzAA0C0RzlFZAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVG_15ConversationKit07SectionC0VA2rA6SpacerVQP_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  memcpy(__dst, *a1, 0x49uLL);
  memcpy(__src, v4, 0x49uLL);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = v5[1];
  v8 = v5[3];
  v22 = v5[2];
  v23 = *v5;
  v9 = v6[1];
  v10 = v6[3];
  v20 = v6[2];
  v21 = *v6;
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = v11[1];
  v19 = *v11;
  v15 = v11[2];
  v14 = v11[3];
  v16 = *v12;
  v25 = *(v12 + 8);
  v17 = v25;
  memcpy(a2, __src, 0x50uLL);
  *(a2 + 80) = v23;
  *(a2 + 88) = v7;
  *(a2 + 96) = v22;
  *(a2 + 104) = v8;
  *(a2 + 112) = v21;
  *(a2 + 120) = v9;
  *(a2 + 128) = v20;
  *(a2 + 136) = v10;
  *(a2 + 144) = v19;
  *(a2 + 152) = v13;
  *(a2 + 160) = v15;
  *(a2 + 168) = v14;
  *(a2 + 176) = v16;
  *(a2 + 184) = v17;
  outlined init with copy of Conversation?(__dst, v24, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd);
}

uint64_t CallHoldingDebugView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = static HorizontalAlignment.center.getter();
  v16 = 0;
  closure #1 in CallHoldingDebugView.body.getter(a1, a2, a3, __src);
  memcpy(__dst, __src, 0xB9uLL);
  memcpy(v18, __src, 0xB9uLL);
  outlined init with copy of Conversation?(__dst, v13, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVG_15ConversationKit07SectionD0VA2mA6SpacerVtGMd);
  outlined destroy of TapInteractionHandler?(v18, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVG_15ConversationKit07SectionD0VA2mA6SpacerVtGMd);
  memcpy(&v15[7], __dst, 0xB9uLL);
  v9 = v16;
  v10 = static Edge.Set.all.getter();
  __src[0] = 1;
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  *a4 = v8;
  *(a4 + 8) = 0x4034000000000000;
  *(a4 + 16) = v9;
  memcpy((a4 + 17), v15, 0xC0uLL);
  *(a4 + 216) = v10;
  *(a4 + 224) = 0u;
  *(a4 + 240) = 0u;
  *(a4 + 256) = 1;
  *(a4 + 264) = partial apply for closure #2 in CallHoldingDebugView.body.getter;
  *(a4 + 272) = v11;
  *(a4 + 280) = 0;
  *(a4 + 288) = 0;
}

uint64_t closure #1 in CallHoldingDebugView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v5 = Text.init(_:tableName:bundle:comment:)();
  v7 = v6;
  v9 = v8;
  static Font.largeTitle.getter();
  v10 = Text.font(_:)();
  v12 = v11;
  v14 = v13;

  outlined consume of Text.Storage(v5, v7, v9 & 1);

  static Font.Weight.bold.getter();
  v15 = Text.fontWeight(_:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  outlined consume of Text.Storage(v10, v12, v14 & 1);

  LOBYTE(v12) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  LOBYTE(__src[0]) = 0;
  __dst[0] = a1;
  __dst[1] = a2;
  __dst[2] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySSGMd);
  State.wrappedValue.getter();
  v30 = __src[0];
  v31 = __src[1];
  __src[0] = v15;
  __src[1] = v17;
  LOBYTE(__src[2]) = v19 & 1;
  __src[3] = v21;
  LOBYTE(__src[4]) = v12;
  __src[5] = v23;
  __src[6] = v25;
  __src[7] = v27;
  __src[8] = v29;
  LOBYTE(__src[9]) = 0;
  strcpy(v42, "Holding State");
  v42[7] = -4864;
  v43 = v30;
  v44 = v31;
  v46[0] = __src;
  v46[1] = v42;
  strcpy(v39, "Transcription");
  v39[7] = -4864;
  v40 = 0;
  v41 = 0xE000000000000000;
  v38[0] = 0xD000000000000010;
  v38[1] = 0x80000001BC512350;
  v38[2] = 0;
  v38[3] = 0xE000000000000000;
  v46[2] = v39;
  v46[3] = v38;
  v36 = 0;
  v37 = 1;
  v46[4] = &v36;
  _s7SwiftUI11ViewBuilderV10buildBlockyAA05TupleC0VyxxQp_tGxxQpRvzAA0C0RzlFZAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVG_15ConversationKit07SectionC0VA2rA6SpacerVQP_Tt1g5(v46, a4);

  memcpy(__dst, __src, 0x49uLL);
  return outlined destroy of TapInteractionHandler?(__dst, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd);
}

uint64_t CallHoldingDebugView.fetchHoldingState()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  type metadata accessor for MainActor();

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in CallHoldingDebugView.fetchHoldingState()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[16] = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v6[19] = v7;
  v6[20] = *(v7 - 8);
  v6[21] = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS();
  v6[22] = v8;
  v6[23] = *(v8 - 8);
  v6[24] = swift_task_alloc();
  v9 = type metadata accessor for WaitOnHoldState();
  v6[25] = v9;
  v10 = *(v9 - 8);
  v6[26] = v10;
  v6[27] = *(v10 + 64);
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[30] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[31] = v12;
  v6[32] = v11;

  return MEMORY[0x1EEE6DFA0](closure #1 in CallHoldingDebugView.fetchHoldingState(), v12, v11);
}

uint64_t closure #1 in CallHoldingDebugView.fetchHoldingState()()
{
  type metadata accessor for WaitOnHoldController();
  v0[33] = WaitOnHoldController.__allocating_init()();
  v1 = swift_task_alloc();
  v0[34] = v1;
  *v1 = v0;
  v1[1] = closure #1 in CallHoldingDebugView.fetchHoldingState();
  v2 = v0[29];

  return MEMORY[0x1EEDF27D8](v2);
}

{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 256);
  v4 = *(v2 + 248);
  if (v0)
  {
    v5 = closure #1 in CallHoldingDebugView.fetchHoldingState();
  }

  else
  {
    v5 = closure #1 in CallHoldingDebugView.fetchHoldingState();
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

{
  v1 = v0[29];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v16 = v0[24];
  v22 = v0[23];
  v23 = v0[22];
  v20 = v1;
  v21 = v0[20];
  v18 = v0[21];
  v19 = v0[19];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];

  type metadata accessor for OS_dispatch_queue();
  v17 = static OS_dispatch_queue.main.getter();
  (*(v3 + 16))(v2, v1, v4);
  v8 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v6;
  v9[4] = v5;
  v10 = v9 + v8;
  v11 = v4;
  (*(v3 + 32))(v10, v2, v4);
  v0[12] = partial apply for closure #1 in closure #1 in CallHoldingDebugView.fetchHoldingState();
  v0[13] = v9;
  v0[8] = MEMORY[0x1E69E9820];
  v0[9] = 1107296256;
  v0[10] = thunk for @escaping @callee_guaranteed () -> ();
  v0[11] = &block_descriptor_21;
  v12 = _Block_copy(v0 + 8);

  static DispatchQoS.unspecified.getter();
  v0[15] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v13, &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v16, v18, v12);
  _Block_release(v12);

  (*(v21 + 8))(v18, v19);
  (*(v22 + 8))(v16, v23);
  (*(v3 + 8))(v20, v11);

  v14 = v0[1];

  return v14();
}

{
  v1 = v0[35];
  v2 = v0[24];
  v3 = v0[21];
  v16 = v0[23];
  v17 = v0[22];
  v4 = v0[19];
  v15 = v0[20];
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[16];

  type metadata accessor for OS_dispatch_queue();
  v14 = static OS_dispatch_queue.main.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v5;
  v8[4] = v6;
  v8[5] = v1;
  v0[6] = partial apply for closure #2 in closure #1 in CallHoldingDebugView.fetchHoldingState();
  v0[7] = v8;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed () -> ();
  v0[5] = &block_descriptor_78;
  v9 = _Block_copy(v0 + 2);

  v10 = v1;
  static DispatchQoS.unspecified.getter();
  v0[14] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v11, &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v2, v3, v9);

  _Block_release(v9);

  (*(v15 + 8))(v3, v4);
  (*(v16 + 8))(v2, v17);

  v12 = v0[1];

  return v12();
}

uint64_t closure #1 in closure #1 in CallHoldingDebugView.fetchHoldingState()()
{
  type metadata accessor for WaitOnHoldState();
  _print_unlocked<A, B>(_:_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySSGMd);
  return State.wrappedValue.setter();
}

uint64_t closure #2 in closure #1 in CallHoldingDebugView.fetchHoldingState()()
{
  _StringGuts.grow(_:)(24);

  swift_getErrorValue();
  v0 = Error.localizedDescription.getter();
  MEMORY[0x1BFB20B10](v0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySSGMd);
  return State.wrappedValue.setter();
}

uint64_t SectionView.content.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void *SectionView.body.getter@<X0>(uint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = static HorizontalAlignment.center.getter();
  __src[0] = 0;
  closure #1 in SectionView.body.getter(a1, a2, v11);
  *&v8[7] = v11[0];
  *&v8[23] = v11[1];
  *&v8[39] = v11[2];
  *&v8[55] = v11[3];
  LOBYTE(a2) = static Edge.Set.all.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  memcpy(&v9[7], __src, 0x70uLL);
  *a3 = v6;
  *(a3 + 8) = 0x4024000000000000;
  *(a3 + 16) = 0;
  memcpy((a3 + 17), v8, 0x47uLL);
  *(a3 + 88) = a2;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 1;
  return memcpy((a3 + 129), v9, 0x77uLL);
}

uint64_t closure #1 in SectionView.body.getter@<X0>(uint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t a3@<X8>)
{
  lazy protocol witness table accessor for type String and conformance String();

  v6 = Text.init<A>(_:)();
  v8 = v7;
  v10 = v9;
  static Font.headline.getter();
  v11 = Text.font(_:)();
  v33 = v12;
  v34 = v11;
  v32 = v13;
  v15 = v14;

  outlined consume of Text.Storage(v6, v8, v10 & 1);

  v16 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v16 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {

    v17 = Text.init<A>(_:)();
    v19 = v18;
    v21 = v20;
    static Font.body.getter();
    v22 = Text.font(_:)();
    v24 = v23;
    v31 = v15;
    v26 = v25;
    v28 = v27;

    outlined consume of Text.Storage(v17, v19, v21 & 1);

    v29 = v26 & 1;
    v15 = v31;
    outlined copy of Text.Storage(v22, v24, v29);
  }

  else
  {
    v22 = 0;
    v24 = 0;
    v29 = 0;
    v28 = 0;
  }

  outlined copy of Text.Storage(v34, v33, v32 & 1);

  outlined copy of Text?(v22, v24, v29, v28);
  outlined consume of Text?(v22, v24, v29, v28);
  *a3 = v34;
  *(a3 + 8) = v33;
  *(a3 + 16) = v32 & 1;
  *(a3 + 24) = v15;
  *(a3 + 32) = v22;
  *(a3 + 40) = v24;
  *(a3 + 48) = v29;
  *(a3 + 56) = v28;
  outlined consume of Text?(v22, v24, v29, v28);
  outlined consume of Text.Storage(v34, v33, v32 & 1);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, SectionView, SectionView, SectionView, Spacer)>>, _PaddingLayout>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, SectionView, SectionView, SectionView, Spacer)>>, _PaddingLayout>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, SectionView, SectionView, SectionView, Spacer)>>, _PaddingLayout>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_15ConversationKit07SectionG0VA2oA6SpacerVtGGAKGAA25_AppearanceActionModifierVGMd);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, SectionView, SectionView, SectionView, Spacer)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, SectionView, SectionView, SectionView, Spacer)>>, _PaddingLayout>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, SectionView, SectionView, SectionView, Spacer)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, SectionView, SectionView, SectionView, Spacer)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, SectionView, SectionView, SectionView, Spacer)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA4TextVAA14_PaddingLayoutVG_15ConversationKit07SectionG0VA2oA6SpacerVtGGAKGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, SectionView, SectionView, SectionView, Spacer)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVG_15ConversationKit07SectionE0VA2oA6SpacerVtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, SectionView, SectionView, SectionView, Spacer)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA4TextV_AISgtGGAA14_PaddingLayoutVGAA010_FlexFrameJ0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Text, Text?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Text, Text?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Text, Text?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Text, Text?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AISgtGGAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type VStack<TupleView<(Text, Text?)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGSgtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Text, Text?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #1 in CallHoldingDebugView.fetchHoldingState()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in SyncedScreeningAlphaGradientView.gradient(for:);

  return closure #1 in CallHoldingDebugView.fetchHoldingState()(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in closure #1 in CallHoldingDebugView.fetchHoldingState()()
{
  type metadata accessor for WaitOnHoldState();

  return closure #1 in closure #1 in CallHoldingDebugView.fetchHoldingState()();
}

uint64_t CallHoldingButtonViewModel.__allocating_init(_:callCenter:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  CallHoldingButtonViewModel.init(_:callCenter:)(a1, a2, a3);
  return v6;
}

uint64_t CallHoldingButtonViewModel.setCallHoldingActive(isActive:)()
{
  OUTLINED_FUNCTION_24_0();
  *(v1 + 296) = v0;
  *(v1 + 360) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_22(v3);
  *(v1 + 304) = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  *(v1 + 312) = v4;
  *(v1 + 320) = *(v4 - 8);
  *(v1 + 328) = swift_task_alloc();
  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

{
  if (one-time initialization token for callHolding != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, &static Logger.callHolding);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 360);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1BBC58000, v2, v3, "setCallHoldingActive: %{BOOL}d", v5, 8u);
    OUTLINED_FUNCTION_27();
  }

  v7 = *(v0 + 304);
  v6 = *(v0 + 312);

  OUTLINED_FUNCTION_4_0();

  UUID.init(uuidString:)();

  if (__swift_getEnumTagSinglePayload(v7, 1, v6) == 1)
  {
    outlined destroy of TapInteractionHandler?(*(v0 + 304), &_s10Foundation4UUIDVSgMd);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BBC58000, v8, v9, "Could not generate UUID from callUUID string", v10, 2u);
      OUTLINED_FUNCTION_27();
    }

    OUTLINED_FUNCTION_13();

    return v11();
  }

  else
  {
    v13 = *(v0 + 296);
    v14 = *(v0 + 360);
    (*(*(v0 + 320) + 32))(*(v0 + 328), *(v0 + 304), *(v0 + 312));
    v15 = *(v13 + 64);
    v16.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    *(v0 + 336) = v16;
    if (v14 == 1)
    {
      v17 = v0 + 80;
      *(v0 + 80) = v0;
      *(v0 + 88) = CallHoldingButtonViewModel.setCallHoldingActive(isActive:);
      v18 = swift_continuation_init();
      *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd);
      *(v0 + 208) = MEMORY[0x1E69E9820];
      *(v0 + 216) = 1107296256;
      *(v0 + 224) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
      *(v0 + 232) = &block_descriptor_4;
      *(v0 + 240) = v18;
      [v15 performSmartHoldingRequestWithType:3 forCallWithUUID:v16.super.isa completion:v0 + 208];
    }

    else
    {
      v17 = v0 + 16;
      *(v0 + 16) = v0;
      *(v0 + 24) = CallHoldingButtonViewModel.setCallHoldingActive(isActive:);
      v19 = swift_continuation_init();
      *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd);
      *(v0 + 144) = MEMORY[0x1E69E9820];
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
      *(v0 + 168) = &block_descriptor_79;
      *(v0 + 176) = v19;
      [v15 performSmartHoldingRequestWithType:4 forCallWithUUID:v16.super.isa completion:v0 + 144];
    }

    return MEMORY[0x1EEE6DEC8](v17);
  }
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_14_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 344) = *(v3 + 112);
  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_24_0();
  (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));

  OUTLINED_FUNCTION_13();

  return v1();
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_14_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 352) = *(v3 + 48);
  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

{
  swift_willThrow();
  v1 = v0[42];
  (*(v0[40] + 8))(v0[41], v0[39]);

  OUTLINED_FUNCTION_13();

  return v2();
}

{
  swift_willThrow();
  v1 = v0[42];
  (*(v0[40] + 8))(v0[41], v0[39]);

  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t CallHoldingButtonViewModel.callUUID.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_0();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  return CallHoldingButtonViewModel.callUUID.didset();
}

void CallHoldingButtonViewModel.delegate.setter(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_0();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
}

void (*CallHoldingButtonViewModel.delegate.modify(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_30_2();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 24);
  v3[3] = Strong;
  v3[4] = v5;
  return CallRecordingButtonViewModel.delegate.modify;
}

uint64_t CallHoldingButtonViewModel.callUUID.getter()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t key path getter for CallHoldingButtonViewModel.callUUID : CallHoldingButtonViewModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t key path setter for CallHoldingButtonViewModel.callUUID : CallHoldingButtonViewModel(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return CallHoldingButtonViewModel.callUUID.setter(v1, v2);
}

uint64_t (*CallHoldingButtonViewModel.callUUID.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_30_2();
  return CallHoldingButtonViewModel.callUUID.modify;
}

uint64_t CallHoldingButtonViewModel.callUUID.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return CallHoldingButtonViewModel.callUUID.didset();
  }

  return result;
}

uint64_t CallHoldingButtonViewModel.holdingAvailability.setter(char a1)
{
  result = OUTLINED_FUNCTION_6_0();
  *(v1 + 60) = a1;
  return result;
}

uint64_t CallHoldingButtonViewModel.init(_:callCenter:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  v11 = MEMORY[0x1E69E7CD0];
  *(v3 + 40) = a2;
  *(v3 + 48) = v11;
  *(v3 + 56) = 0;
  *(v3 + 60) = 1;
  *(v3 + 72) = 0;
  *(v3 + 32) = a1;
  *(v3 + 64) = a3;
  v12 = a3;
  CallHoldingButtonViewModel.observeNotification()();
  static TaskPriority.background.getter();
  v13 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v13);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v14;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in CallHoldingButtonViewModel.init(_:callCenter:), v15);

  outlined destroy of TapInteractionHandler?(v10, &_sScPSgMd);
  return v3;
}

Swift::Void __swiftcall CallHoldingButtonViewModel.observeNotification()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v31 - v2;
  v4 = type metadata accessor for NSNotificationCenter.Publisher();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGMd);
  OUTLINED_FUNCTION_1();
  v12 = v11;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGGMd);
  OUTLINED_FUNCTION_1();
  v31 = v16;
  v32 = v17;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC16RemoveDuplicatesVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGGSo17OS_dispatch_queueCGMd);
  OUTLINED_FUNCTION_1();
  v33 = v21;
  v34 = v22;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v31 - v24;
  v26 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21TUSmartHoldingSessionCSgMd);
  lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher();
  Publisher.map<A>(_:)();
  (*(v6 + 8))(v9, v4);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<NSNotificationCenter.Publisher, TUSmartHoldingSession?> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGMd);
  lazy protocol witness table accessor for type TUSmartHoldingSession? and conformance <A> A?();
  Publisher<>.removeDuplicates()();
  (*(v12 + 8))(v15, v10);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v27 = static OS_dispatch_queue.main.getter();
  v35 = v27;
  v28 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v28);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Publishers.Map<NSNotificationCenter.Publisher, TUSmartHoldingSession?>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGGMd);
  lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, &lazy cache variable for type metadata for OS_dispatch_queue);
  v29 = v31;
  Publisher.receive<A>(on:options:)();
  outlined destroy of TapInteractionHandler?(v3, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  (*(v32 + 8))(v20, v29);
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.RemoveDuplicates<Publishers.Map<NSNotificationCenter.Publisher, TUSmartHoldingSession?>>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC16RemoveDuplicatesVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherVSo21TUSmartHoldingSessionCSgGGSo17OS_dispatch_queueCGMd);
  v30 = v33;
  Publisher<>.sink(receiveValue:)();
  OUTLINED_FUNCTION_28_0();

  (*(v34 + 8))(v25, v30);
  OUTLINED_FUNCTION_30_2();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t closure #1 in CallHoldingButtonViewModel.init(_:callCenter:)()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_4_0();
  Strong = swift_weakLoadStrong();
  v0[14] = Strong;
  if (Strong)
  {
    v0[15] = type metadata accessor for WaitOnHoldController();
    v0[16] = WaitOnHoldController.__allocating_init()();
    v2 = swift_task_alloc();
    v0[17] = v2;
    *v2 = v0;
    v2[1] = closure #1 in CallHoldingButtonViewModel.init(_:callCenter:);

    return MEMORY[0x1EEDF27E8]();
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v3();
  }
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14_1();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_9();
  WaitOnHoldController.__allocating_init()();
  WaitOnHoldController.hasAvailableAssets.getter();

  OUTLINED_FUNCTION_17_52();
  type metadata accessor for MainActor();
  *(v0 + 152) = static MainActor.shared.getter();
  OUTLINED_FUNCTION_28_0();
  dispatch thunk of Actor.unownedExecutor.getter();
  v1 = OUTLINED_FUNCTION_2_137();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_4_0();
  if (swift_weakLoadStrong())
  {
    CallHoldingButtonViewModel.updateButtonState()();
  }

  swift_weakDestroy();
  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

{
  v18 = v0;

  if (one-time initialization token for callHolding != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  v1 = *(v0 + 144);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.callHolding);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 144);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = Error.localizedDescription.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1BBC58000, v4, v5, "WaitOnHoldController prewarming failed: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  WaitOnHoldController.__allocating_init()();
  WaitOnHoldController.hasAvailableAssets.getter();

  OUTLINED_FUNCTION_17_52();
  type metadata accessor for MainActor();
  *(v0 + 152) = static MainActor.shared.getter();
  OUTLINED_FUNCTION_28_0();
  dispatch thunk of Actor.unownedExecutor.getter();
  v13 = OUTLINED_FUNCTION_2_137();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

void closure #1 in CallHoldingButtonViewModel.observeNotification()(void *a1@<X8>)
{
  Notification.object.getter();
  if (!v5)
  {
    outlined destroy of TapInteractionHandler?(v4, &_sypSgMd);
    goto LABEL_5;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    goto LABEL_6;
  }

  v2 = [v3 smartHoldingSession];

LABEL_6:
  *a1 = v2;
}

uint64_t closure #2 in CallHoldingButtonViewModel.observeNotification()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13 - v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (one-time initialization token for callHolding != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, &static Logger.callHolding);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = CallHoldingButtonViewModel.isWaitOnHoldActive()() & 1;

      _os_log_impl(&dword_1BBC58000, v6, v7, "TUCallSmartHoldingSessionChanged, isWaitOnHoldActive: %{BOOL}d", v8, 8u);
      MEMORY[0x1BFB23DF0](v8, -1, -1);
    }

    else
    {
    }

    v9 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v9);
    type metadata accessor for MainActor();

    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    v12 = MEMORY[0x1E69E85E0];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v4;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  }

  return result;
}

uint64_t closure #1 in closure #2 in CallHoldingButtonViewModel.observeNotification()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in CallHoldingButtonViewModel.observeNotification(), v6, v5);
}

uint64_t CallHoldingButtonViewModel.deinit()
{
  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 16);

  return v0;
}

uint64_t CallHoldingButtonViewModel.__deallocating_deinit()
{
  CallHoldingButtonViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #1 in CallHoldingButtonViewModel.init(_:callCenter:)()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in CallHoldingButtonViewModel.init(_:callCenter:)(v3, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #2 in CallHoldingButtonViewModel.observeNotification()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in closure #2 in CallHoldingButtonViewModel.observeNotification()(v3, v4, v5, v6);
}

uint64_t CallHoldingTranscriptViewModelComposer.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t CallHoldingTranscriptViewModelComposer.composeViewModel(for:)(uint64_t *a1, uint64_t a2)
{
  v104 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  v101 = &v88 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore18ActivityLabelStyleOSgMd);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_17();
  v99 = v8 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v98 = &v88 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_17();
  v96 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v95 = &v88 - v17;
  v92 = type metadata accessor for WaitOnHoldRequiresUserAttentionReason();
  OUTLINED_FUNCTION_1();
  v106 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_17();
  v103 = v20 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v89 = &v88 - v23;
  v24 = type metadata accessor for AttributeContainer();
  v25 = OUTLINED_FUNCTION_22(v24);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_1();
  v105 = v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_17();
  v33 = (v31 - v32);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v88 - v35;
  v93 = objc_opt_self();
  v37 = [v93 conversationKit];
  v38.super.isa = v37;
  OUTLINED_FUNCTION_17_0(0xD00000000000002ALL, 0x80000001BC512400, 0x61737265766E6F43, 0xEF74694B6E6F6974, v38);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1BC4BA940;
  v88 = a1;
  ObjectType = swift_getObjectType();
  v41 = (*(v104 + 72))();
  v43 = v42;
  *(v39 + 56) = MEMORY[0x1E69E6158];
  *(v39 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v39 + 32) = v41;
  *(v39 + 40) = v43;
  String.init(format:_:)();

  AttributeContainer.init()();
  v94 = v27;
  AttributedString.init(_:attributes:)();
  v44 = *(v105 + 16);
  v97 = v36;
  v100 = v28;
  v90 = v44;
  v91 = v105 + 16;
  v44(v33, v36, v28);
  type metadata accessor for WaitOnHoldStatusMessageService();
  v45 = swift_allocObject();
  v46 = swift_unknownObjectRetain();
  v47 = specialized WaitOnHoldStatusMessageService.init(call:initialStatusMessage:)(v46, v33, v45, ObjectType, v104);
  v48 = (*v47 + 232);
  v49 = v89;
  v104 = *v48;
  v88 = v48;
  (v104)(v47);
  v50 = v106;
  v51 = *(v106 + 104);
  v52 = v103;
  v53 = v92;
  v51(v103, *MEMORY[0x1E6995C88], v92);
  lazy protocol witness table accessor for type WaitOnHoldRequiresUserAttentionReason and conformance WaitOnHoldRequiresUserAttentionReason();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v54 = v52;
  v55 = v53;
  dispatch thunk of RawRepresentable.rawValue.getter();
  v56 = *(v50 + 8);
  v56(v54, v55);
  v106 = v50 + 8;
  v57 = (v56)(v49, v55);
  if (v107 == v108 || ((v104)(v57), v58 = v103, v51(v103, *MEMORY[0x1E6995C80], v55), dispatch thunk of RawRepresentable.rawValue.getter(), dispatch thunk of RawRepresentable.rawValue.getter(), v56(v58, v55), v56(v49, v55), v107 == v108))
  {
    v59 = v47;
    Image.init(systemName:)();
  }

  else
  {
    v59 = v47;
  }

  v60 = v97;
  v61 = v100;
  v90(v95, v97, v100);
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v61);

  v65 = [v93 conversationKit];
  OUTLINED_FUNCTION_5_5();
  v66.super.isa = v65;
  OUTLINED_FUNCTION_17_0(v67, v68, v69, v70, v66);

  String.init(format:_:)();

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v61);
  v74 = type metadata accessor for ActivityLabelStyle();
  __swift_storeEnumTagSinglePayload(v98, 1, 1, v74);
  __swift_storeEnumTagSinglePayload(v99, 1, 1, v74);
  type metadata accessor for IntelligenceMessageViewModel();
  swift_allocObject();
  v75 = IntelligenceMessageViewModel.init(statusMessageLeadingImage:statusMessage:secondaryMessage:centerAlignText:spacingToDivider:lineLimit:messageStyle:secondaryMessageStyle:)();
  static TaskPriority.userInitiated.getter();
  type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v76, v77, v78, v79);
  v80 = swift_allocObject();
  v81 = v102;
  swift_weakInit();
  type metadata accessor for MainActor();

  v82 = static MainActor.shared.getter();
  v83 = swift_allocObject();
  v84 = MEMORY[0x1E69E85E0];
  v83[2] = v82;
  v83[3] = v84;
  v83[4] = v59;
  v83[5] = v80;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  v86 = v85;

  (*(v105 + 8))(v60, v61);
  *(v81 + 24) = v86;

  swift_beginAccess();
  *(v81 + 16) = v75;

  return v75;
}

uint64_t CallHoldingTranscriptViewModelComposer.deinit()
{
  if (*(v0 + 24))
  {

    MEMORY[0x1BFB21000](v1, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  *(v0 + 24) = 0;

  return v0;
}

uint64_t CallHoldingTranscriptViewModelComposer.__deallocating_deinit()
{
  CallHoldingTranscriptViewModelComposer.deinit();

  return swift_deallocClassInstance();
}

uint64_t closure #1 in CallHoldingTranscriptViewModelComposer.composeViewModel(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[36] = a4;
  v5[37] = a5;
  type metadata accessor for AttributeContainer();
  v5[38] = swift_task_alloc();
  v6 = type metadata accessor for WaitOnHoldRequiresUserAttentionReason();
  v5[39] = v6;
  v5[40] = *(v6 - 8);
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v7 = type metadata accessor for AttributedString();
  v5[43] = v7;
  v5[44] = *(v7 - 8);
  v5[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0Vy10Foundation16AttributedStringV_GGMd);
  v5[49] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy10Foundation16AttributedStringV_G_GMd);
  v5[50] = v8;
  v5[51] = *(v8 - 8);
  v5[52] = swift_task_alloc();
  v5[53] = type metadata accessor for MainActor();
  v5[54] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[55] = v10;
  v5[56] = v9;

  return MEMORY[0x1EEE6DFA0](closure #1 in CallHoldingTranscriptViewModelComposer.composeViewModel(for:), v10, v9);
}

uint64_t closure #1 in CallHoldingTranscriptViewModelComposer.composeViewModel(for:)()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16CommunicationsUI37WaitOnHoldRequiresUserAttentionReasonOGMd);
  v3 = *(v1 + 72);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v0 + 456) = v5;
  *(v5 + 16) = xmmword_1BC4BAA20;
  v6 = v5 + v4;
  *(v0 + 504) = *MEMORY[0x1E6995C88];
  v7 = *(v1 + 104);
  *(v0 + 464) = v7;
  *(v0 + 472) = (v1 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v7(v6);
  *(v0 + 508) = *MEMORY[0x1E6995C80];
  v8 = (v7)(v6 + v3);
  (*(*v2 + 360))(v8);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AsyncPublisher<Published<AttributedString>.Publisher> and conformance AsyncPublisher<A>, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0Vy10Foundation16AttributedStringV_GGMd);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_0();
  v9 = static MainActor.shared.getter();
  *(v0 + 480) = v9;
  OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<Published<AttributedString>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy10Foundation16AttributedStringV_G_GMd);
  v10 = swift_task_alloc();
  *(v0 + 488) = v10;
  *v10 = v0;
  v11 = OUTLINED_FUNCTION_1_141(v10);
  v12 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v11, v9, v12);
}

{
  v2 = *v1;
  *(*v1 + 496) = v0;

  if (!v0)
  {

    v4 = *(v2 + 440);
    v5 = *(v2 + 448);

    return MEMORY[0x1EEE6DFA0](closure #1 in CallHoldingTranscriptViewModelComposer.composeViewModel(for:), v4, v5);
  }

  return result;
}

{
  v1 = *(v0 + 376);
  v2 = *(v0 + 344);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(*(v0 + 408) + 8))(*(v0 + 416), *(v0 + 400));

LABEL_5:

    v8 = *(v0 + 8);

    return v8();
  }

  (*(*(v0 + 352) + 32))(*(v0 + 360), v1, v2);
  if (static Task<>.isCancelled.getter())
  {
    v4 = *(v0 + 408);
    v3 = *(v0 + 416);
    v5 = *(v0 + 400);

    v6 = OUTLINED_FUNCTION_32_2();
    v7(v6);
    (*(v4 + 8))(v3, v5);
    goto LABEL_5;
  }

  v10 = *(v0 + 464);
  v11 = *(v0 + 504);
  v13 = *(v0 + 328);
  v12 = *(v0 + 336);
  v14 = *(v0 + 312);
  v15 = *(v0 + 320);
  v16 = *(**(v0 + 288) + 232);
  v16();
  v10(v13, v11, v14);
  lazy protocol witness table accessor for type WaitOnHoldRequiresUserAttentionReason and conformance WaitOnHoldRequiresUserAttentionReason();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v17 = *(v15 + 8);
  v18 = OUTLINED_FUNCTION_32_2();
  v17(v18);
  v19 = (v17)(v12, v14);
  if (*(v0 + 256) == *(v0 + 264) || (v20 = *(v0 + 508), v61 = v17, v21 = *(v0 + 464), v23 = *(v0 + 328), v22 = *(v0 + 336), v24 = *(v0 + 312), (v16)(v19), v21(v23, v20, v24), v17 = v61, dispatch thunk of RawRepresentable.rawValue.getter(), dispatch thunk of RawRepresentable.rawValue.getter(), (v61)(v23, v24), (v61)(v22, v24), *(v0 + 272) == *(v0 + 280)))
  {
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      goto LABEL_17;
    }

    v26 = Strong;
    OUTLINED_FUNCTION_4_0();
    if (*(v26 + 16))
    {

      Image.init(systemName:)();
      IntelligenceMessageViewModel.updateLeadingImage(image:)();
    }
  }

  else
  {
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      goto LABEL_17;
    }

    v27 = Strong;
    OUTLINED_FUNCTION_4_0();
    if (*(v27 + 16))
    {

      IntelligenceMessageViewModel.updateLeadingImage(image:)();
    }
  }

LABEL_17:
  v28 = *(v0 + 456);
  v29 = *(v0 + 336);
  (v16)(Strong);
  v30 = swift_task_alloc();
  *(v30 + 16) = v29;
  LOBYTE(v28) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v30, v28);

  v31 = OUTLINED_FUNCTION_32_2();
  v17(v31);
  v32 = swift_weakLoadStrong();
  v33 = v32;
  if (v28)
  {
    if (v32)
    {
      OUTLINED_FUNCTION_4_0();
      if (*(v33 + 16))
      {
        v34 = *(v0 + 368);
        v35 = *(v0 + 344);

        v36 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_5_5();
        v40 = v39 + 9;
        v41 = 0x80000001BC5124C0;
LABEL_24:
        v42.super.isa = v36;
        OUTLINED_FUNCTION_17_0(v40, v41, v37, v38, v42);

        String.init(format:_:)();

        AttributeContainer.init()();
        AttributedString.init(_:attributes:)();
        OUTLINED_FUNCTION_12();
        __swift_storeEnumTagSinglePayload(v43, v44, v45, v35);
        IntelligenceMessageViewModel.updateSecondaryMessage(message:)();

        outlined destroy of AttributedString?(v34);
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  else if (v32)
  {
    OUTLINED_FUNCTION_4_0();
    if (*(v33 + 16))
    {
      v34 = *(v0 + 368);
      v35 = *(v0 + 344);

      v36 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_5_5();
      v41 = 0x80000001BC512430;
      v40 = 0xD00000000000001ALL;
      goto LABEL_24;
    }

LABEL_25:
  }

LABEL_26:
  v46 = swift_weakLoadStrong();
  if (v46)
  {
    v47 = v46;
    swift_beginAccess();
    if (*(v47 + 16))
    {
      v49 = *(v0 + 360);
      v48 = *(v0 + 368);
      v50 = *(v0 + 344);
      v51 = *(v0 + 352);
      swift_endAccess();

      (*(v51 + 16))(v48, v49, v50);
      OUTLINED_FUNCTION_12();
      __swift_storeEnumTagSinglePayload(v52, v53, v54, v50);
      IntelligenceMessageViewModel.updateStatusMessage(message:)();

      outlined destroy of AttributedString?(v48);
      v55 = OUTLINED_FUNCTION_32_2();
      v56(v55);
    }

    else
    {
      (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));
      swift_endAccess();
    }
  }

  else
  {
    (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));
  }

  v57 = static MainActor.shared.getter();
  *(v0 + 480) = v57;
  OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<Published<AttributedString>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy10Foundation16AttributedStringV_G_GMd);
  v58 = swift_task_alloc();
  *(v0 + 488) = v58;
  *v58 = v0;
  v59 = OUTLINED_FUNCTION_1_141(v58);
  v60 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v59, v57, v60);
}

uint64_t CallHoldingTranscriptViewModelComposer.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type WaitOnHoldRequiresUserAttentionReason and conformance WaitOnHoldRequiresUserAttentionReason()
{
  result = lazy protocol witness table cache variable for type WaitOnHoldRequiresUserAttentionReason and conformance WaitOnHoldRequiresUserAttentionReason;
  if (!lazy protocol witness table cache variable for type WaitOnHoldRequiresUserAttentionReason and conformance WaitOnHoldRequiresUserAttentionReason)
  {
    type metadata accessor for WaitOnHoldRequiresUserAttentionReason();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WaitOnHoldRequiresUserAttentionReason and conformance WaitOnHoldRequiresUserAttentionReason);
  }

  return result;
}

uint64_t partial apply for closure #1 in CallHoldingTranscriptViewModelComposer.composeViewModel(for:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in SyncedScreeningAlphaGradientView.gradient(for:);

  return closure #1 in CallHoldingTranscriptViewModelComposer.composeViewModel(for:)(a1, v4, v5, v7, v6);
}

id WaitOnHoldViewComposer.compose(with:waitOnHoldServiceProvider:)(void *a1, uint64_t a2)
{
  v50 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine4JustVySbGMd);
  OUTLINED_FUNCTION_1();
  v53 = v4;
  v54 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v49 - v5;
  type metadata accessor for WaitOnHoldMiddleView();
  OUTLINED_FUNCTION_1();
  v55 = v7;
  v56 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v49 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v49 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v49 - v18;
  v20 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v21 = type metadata accessor for AttributedString();
  MEMORY[0x1EEE9AC00](v21);
  v58[0] = a2;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28CNKWaitOnHoldServiceProvider_pMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI25WaitOnHoldServiceProtocol_pMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v60 = 0;
    memset(v59, 0, sizeof(v59));
  }

  v22 = objc_opt_self();
  v23 = [v22 conversationKit];
  v61._object = 0xE000000000000000;
  OUTLINED_FUNCTION_5_5();
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v61._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v26, v23, v24, v61);

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v27 = [v50 waitOnHoldSubtitle];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v21);
  v28 = [v22 conversationKit];
  v62._object = 0xE000000000000000;
  OUTLINED_FUNCTION_5_5();
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v62._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v30, v31, v28, v29, v62);

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v21);
  outlined init with copy of WaitOnHoldServiceProtocol?(v59, v58);
  type metadata accessor for WaitOnHoldViewModel();
  swift_allocObject();
  WaitOnHoldViewModel.init(title:subtitle:statusMessage:service:)();

  v32 = v57;
  WaitOnHoldMiddleView.init(viewModel:)();
  v34 = v55;
  v33 = v56;
  v35 = *(v55 + 16);
  v35(v11, v32, v56);
  v36 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit37MaskSizingLockScreenHostingControllerCy16CommunicationsUI20WaitOnHoldMiddleViewVGMd));
  v35(v51, v11, v33);
  v37 = LockScreenHostingController.init(rootView:)();
  v38 = *(v34 + 8);
  v38(v11, v33);
  v39 = [objc_opt_self() preferredFontForTextStyle_];
  [v39 pointSize];

  LOBYTE(v58[0]) = 1;
  v40 = v52;
  Just.init(_:)();
  lazy protocol witness table accessor for type Just<Bool> and conformance Just<A>();
  v41 = v54;
  Publisher.eraseToAnyPublisher()();
  (*(v53 + 8))(v40, v41);
  v42 = objc_allocWithZone(type metadata accessor for BlurryMaskView());
  v43 = BlurryMaskView.init(textSize:isBottomVisiblePublisher:topPositions:)();
  v44 = v37;
  result = [v44 view];
  if (result)
  {
    v46 = result;
    [result setMaskView_];

    result = [v44 view];
    if (result)
    {
      v47 = result;
      v48 = [objc_opt_self() clearColor];
      [v47 setBackgroundColor_];

      v38(v57, v33);
      outlined destroy of WaitOnHoldServiceProtocol?(v59);
      return v44;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t outlined init with copy of WaitOnHoldServiceProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI25WaitOnHoldServiceProtocol_pSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Just<Bool> and conformance Just<A>()
{
  result = lazy protocol witness table cache variable for type Just<Bool> and conformance Just<A>;
  if (!lazy protocol witness table cache variable for type Just<Bool> and conformance Just<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine4JustVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Just<Bool> and conformance Just<A>);
  }

  return result;
}

uint64_t outlined destroy of WaitOnHoldServiceProtocol?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI25WaitOnHoldServiceProtocol_pSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id WaitOnHoldViewComposer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WaitOnHoldViewComposer.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id WaitOnHoldViewComposer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CNKWaitOnHoldViewComposerFactory.makeViewComposer()()
{
  v0 = objc_allocWithZone(type metadata accessor for WaitOnHoldViewComposer());

  return [v0 init];
}

CNKWaitOnHoldViewComposerFactory __swiftcall CNKWaitOnHoldViewComposerFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for CNKWaitOnHoldViewComposerFactory()
{
  result = lazy cache variable for type metadata for CNKWaitOnHoldViewComposerFactory;
  if (!lazy cache variable for type metadata for CNKWaitOnHoldViewComposerFactory)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CNKWaitOnHoldViewComposerFactory);
  }

  return result;
}

uint64_t VideoReaction.systemImageName.getter(char a1)
{
  v1 = VideoReaction.rawValue.getter(a1);
  v2 = AVCaptureReactionSystemImageNameForType(v1);

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

ConversationKit::VideoReaction_optional __swiftcall VideoReaction.init(rawValue:)(__C::AVCaptureReactionType rawValue)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_10();
  v5 = v5 && v1 == v4;
  if (v5)
  {

    return 0;
  }

  OUTLINED_FUNCTION_0_41();
  OUTLINED_FUNCTION_9_1();

  if (v2)
  {

    return 0;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_10();
  if (v5 && v1 == v7)
  {

    return 1;
  }

  OUTLINED_FUNCTION_0_41();
  OUTLINED_FUNCTION_9_1();

  if (v2)
  {

    return 1;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_10();
  if (v5 && v1 == v9)
  {

    return 2;
  }

  OUTLINED_FUNCTION_0_41();
  OUTLINED_FUNCTION_9_1();

  if (v2)
  {

    return 2;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_10();
  if (v5 && v1 == v11)
  {

    return 3;
  }

  OUTLINED_FUNCTION_0_41();
  OUTLINED_FUNCTION_9_1();

  if (v2)
  {

    return 3;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_10();
  if (v5 && v1 == v13)
  {

    return 4;
  }

  OUTLINED_FUNCTION_0_41();
  OUTLINED_FUNCTION_9_1();

  if (v2)
  {

    return 4;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_10();
  if (v5 && v1 == v15)
  {

    return 5;
  }

  OUTLINED_FUNCTION_0_41();
  OUTLINED_FUNCTION_9_1();

  if (v2)
  {

    return 5;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_10();
  if (v5 && v1 == v17)
  {

    return 6;
  }

  OUTLINED_FUNCTION_0_41();
  OUTLINED_FUNCTION_9_1();

  if (v2)
  {

    return 6;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_10();
  if (v5 && v1 == v19)
  {

    return 7;
  }

  else
  {
    v21 = OUTLINED_FUNCTION_0_41();

    if (v21)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t VideoReactionPickerViewModel.isShowingPicker.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t VideoReactionPickerViewModel.isShowingPicker.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t VideoReactionPickerViewModel.anchorPoint.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t VideoReactionPickerViewModel.anchorPoint.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t VideoReactionPickerViewModel.init(onReaction:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7CGPointVSgGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  v13 = OBJC_IVAR____TtC15ConversationKitP33_5A0B7B44E54382705C993A39EDE5E35828VideoReactionPickerViewModel__isShowingPicker;
  LOBYTE(v19) = 0;
  Published.init(initialValue:)();
  (*(v10 + 32))(v2 + v13, v12, v9);
  v14 = OBJC_IVAR____TtC15ConversationKitP33_5A0B7B44E54382705C993A39EDE5E35828VideoReactionPickerViewModel__anchorPoint;
  v19 = 0;
  v20 = 0;
  v21 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7CGPointVSgMd);
  Published.init(initialValue:)();
  (*(v6 + 32))(v2 + v14, v8, v5);
  v15 = (v2 + OBJC_IVAR____TtC15ConversationKitP33_5A0B7B44E54382705C993A39EDE5E35828VideoReactionPickerViewModel_anchorFrame);
  *v15 = 0u;
  v15[1] = 0u;
  *(v2 + OBJC_IVAR____TtC15ConversationKitP33_5A0B7B44E54382705C993A39EDE5E35828VideoReactionPickerViewModel_bubbleGrowsRightwards) = 2;
  *(v2 + OBJC_IVAR____TtC15ConversationKitP33_5A0B7B44E54382705C993A39EDE5E35828VideoReactionPickerViewModel_anchorCorner) = 3;
  *(v2 + OBJC_IVAR____TtC15ConversationKitP33_5A0B7B44E54382705C993A39EDE5E35828VideoReactionPickerViewModel_shouldHidePickerAfterReaction) = 1;
  v16 = (v2 + OBJC_IVAR____TtC15ConversationKitP33_5A0B7B44E54382705C993A39EDE5E35828VideoReactionPickerViewModel_onReaction);
  *v16 = a1;
  v16[1] = a2;
  return v2;
}

uint64_t VideoReactionPickerViewModel.sendReaction(_:)(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC15ConversationKitP33_5A0B7B44E54382705C993A39EDE5E35828VideoReactionPickerViewModel_shouldHidePickerAfterReaction) == 1)
  {
    VideoReactionPickerViewModel.isShowingPicker.setter();
  }

  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKitP33_5A0B7B44E54382705C993A39EDE5E35828VideoReactionPickerViewModel_onReaction);

  v3(a1);
}

uint64_t VideoReactionPickerViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC15ConversationKitP33_5A0B7B44E54382705C993A39EDE5E35828VideoReactionPickerViewModel__isShowingPicker;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15ConversationKitP33_5A0B7B44E54382705C993A39EDE5E35828VideoReactionPickerViewModel__anchorPoint;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7CGPointVSgGMd);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t VideoReactionPickerViewModel.__deallocating_deinit()
{
  VideoReactionPickerViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance VideoReactionPickerViewModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for VideoReactionPickerViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

ConversationKit::VideoReaction_optional protocol witness for RawRepresentable.init(rawValue:) in conformance VideoReaction@<W0>(__C::AVCaptureReactionType *a1@<X0>, ConversationKit::VideoReaction_optional *a2@<X8>)
{
  result.value = VideoReaction.init(rawValue:)(a1->_rawValue).value;
  a2->value = result.value;
  return result;
}

id protocol witness for RawRepresentable.rawValue.getter in conformance VideoReaction@<X0>(void *a1@<X8>)
{
  result = VideoReaction.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t VideoReaction.accessibilityLabel.getter()
{
  v0 = [objc_opt_self() conversationKit];
  v7._object = 0xE000000000000000;
  OUTLINED_FUNCTION_5_5();
  v2._object = (v1 | 0x8000000000000000);
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v4, v0, v3, v7)._countAndFlagsBits;

  return countAndFlagsBits;
}

double VideoReaction.rotationParameters.getter(char a1)
{
  if (a1 == 2)
  {
    static UnitPoint.topTrailing.getter();
  }

  else
  {
    if (a1 != 1)
    {
      v1 = 0.0;
      static UnitPoint.center.getter();
      return v1;
    }

    static UnitPoint.bottomLeading.getter();
  }

  return -0.785398163;
}

uint64_t VideoReactionButtonStyle.makeBody(configuration:)@<X0>(uint64_t *a1@<X8>)
{
  *a1 = static Alignment.center.getter();
  a1[1] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA06_ShapeD0VyAA6CircleVAA5ColorVGAA06_FrameG0VG_AKyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAQSgGGtGGMd);
  OUTLINED_FUNCTION_46();
  return closure #1 in VideoReactionButtonStyle.makeBody(configuration:)(v3);
}

uint64_t closure #1 in VideoReactionButtonStyle.makeBody(configuration:)@<X0>(_OWORD *a1@<X8>)
{
  v27 = type metadata accessor for ButtonStyleConfiguration.Label();
  v26 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  MEMORY[0x1EEE9AC00](v24);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v12 = [objc_opt_self() labelColor];
    v13 = Color.init(uiColor:)();
  }

  else
  {
    v13 = static Color.clear.getter();
  }

  v25 = v13;
  VideoReactionButtonStyle.backgroundSize.getter();
  VideoReactionButtonStyle.backgroundSize.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v34[3] = *&v34[27];
  *&v34[11] = *&v34[35];
  *&v34[19] = *&v34[43];
  ButtonStyleConfiguration.label.getter();
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v14 = static Color.black.getter();
  }

  else
  {
    v15 = [objc_opt_self() labelColor];
    v14 = Color.init(uiColor:)();
  }

  v16 = v14;
  KeyPath = swift_getKeyPath();
  (*(v26 + 32))(v8, v3, v27);
  v18 = &v8[*(v24 + 36)];
  *v18 = KeyPath;
  v18[1] = v16;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v8, v11, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v11, v5, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  v19 = v25;
  *&v28[0] = v25;
  WORD4(v28[0]) = 256;
  *(v28 + 10) = *v34;
  *(&v28[1] + 10) = *&v34[8];
  *(&v28[2] + 10) = *&v34[16];
  *(&v28[3] + 1) = *&v34[23];
  v20 = v28[1];
  *a1 = v28[0];
  a1[1] = v20;
  v21 = v28[3];
  a1[2] = v28[2];
  a1[3] = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVG_ACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAISgGGtMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v5, a1 + *(v22 + 48), &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v28, &v29, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  v29 = v19;
  v30 = 256;
  v31 = *v34;
  v32 = *&v34[8];
  *v33 = *&v34[16];
  *&v33[14] = *&v34[23];
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v29, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGMd);
}

double VideoReactionButtonStyle.backgroundSize.getter()
{
  v0 = type metadata accessor for DynamicTypeSize();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - v5;
  specialized Environment.wrappedValue.getter(&v13 - v5);
  v7 = *(v1 + 104);
  v7(v3, *MEMORY[0x1E697E728], v0);
  v8 = static DynamicTypeSize.< infix(_:_:)();
  v9 = *(v1 + 8);
  v9(v3, v0);
  v9(v6, v0);
  if (v8)
  {
    return 44.0;
  }

  specialized Environment.wrappedValue.getter(v6);
  v7(v3, *MEMORY[0x1E697E6C0], v0);
  v11 = static DynamicTypeSize.< infix(_:_:)();
  v9(v3, v0);
  v9(v6, v0);
  if (v11)
  {
    return 50.6;
  }

  specialized Environment.wrappedValue.getter(v6);
  v7(v3, *MEMORY[0x1E697E6D8], v0);
  v12 = static DynamicTypeSize.< infix(_:_:)();
  v9(v3, v0);
  v9(v6, v0);
  result = 81.84;
  if (v12)
  {
    return 62.04;
  }

  return result;
}

uint64_t VideoReactionButtonStyle.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd);

  return swift_storeEnumTagMultiPayload();
}

uint64_t VideoReactionButton.reaction.setter(char a1)
{
  result = type metadata accessor for VideoReactionButton(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

double (*VideoReactionButton.reaction.modify())(void)
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for VideoReactionButton(v0);
  return TPNumberPadCharacter.rawValue.getter;
}

uint64_t VideoReactionButton.showDelay.setter(double a1)
{
  result = type metadata accessor for VideoReactionButton(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

double (*VideoReactionButton.showDelay.modify())(void)
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for VideoReactionButton(v0);
  return TPNumberPadCharacter.rawValue.getter;
}

uint64_t VideoReactionButton.moveDelay.setter(double a1)
{
  result = type metadata accessor for VideoReactionButton(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

double (*VideoReactionButton.moveDelay.modify())(void)
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for VideoReactionButton(v0);
  return TPNumberPadCharacter.rawValue.getter;
}

uint64_t VideoReactionButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v115 = a1;
  v103 = type metadata accessor for VideoReactionButtonStyle(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  v5 = (v4 - v3);
  v6 = type metadata accessor for VideoReactionButton(0);
  v7 = *(v6 - 8);
  v116 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6 - 8);
  v118 = v8;
  v9 = v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAG5ScaleOGGGMd);
  OUTLINED_FUNCTION_1();
  v101 = v10;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v96 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA15ModifiedContentVyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionfE0VQo_Md);
  OUTLINED_FUNCTION_1();
  v113 = v14;
  v114 = v15;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v96 - v17;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGMd) - 8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v20);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGMd) - 8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v22);
  v96[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGAA15_RotationEffectVGMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_1();
  v112 = v24;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGAA15_RotationEffectVGAA010_AnimationM0VySbGGMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v26);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGAA15_RotationEffectVGAA010_AnimationM0VySbGGAA16_TransformEffectVGMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v28);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGAA15_RotationEffectVGAA010_AnimationM0VySbGGAA16_TransformEffectVGAA13_OffsetEffectVGMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_1();
  v111 = v30;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGAA15_RotationEffectVGAA010_AnimationM0VySbGGAA16_TransformEffectVGAA13_OffsetEffectVGA30_GMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v32);
  v117 = v9;
  v99 = type metadata accessor for VideoReactionButton;
  outlined init with copy of VideoReactionButton(v1, v9, type metadata accessor for VideoReactionButton);
  v33 = *(v7 + 80);
  v34 = (v33 + 16) & ~v33;
  v35 = swift_allocObject();
  outlined init with take of VideoReactionButton(v9, v35 + v34, type metadata accessor for VideoReactionButton);
  v119 = v1;
  v36 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
  v37 = v13;
  Button.init(action:label:)();
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd);
  swift_storeEnumTagMultiPayload();
  v38 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAG5ScaleOGGGMd);
  v39 = lazy protocol witness table accessor for type VideoReactionButtonStyle and conformance VideoReactionButtonStyle(&lazy protocol witness table cache variable for type VideoReactionButtonStyle and conformance VideoReactionButtonStyle, type metadata accessor for VideoReactionButtonStyle);
  v40 = v18;
  v41 = v98;
  v42 = v103;
  View.buttonStyle<A>(_:)();
  outlined destroy of VideoReactionButtonStyle();
  (*(v101 + 8))(v37, v41);
  v43 = v36;
  LODWORD(v101) = *(v36 + *(v116 + 40));
  v124 = VideoReaction.accessibilityLabel.getter();
  v125 = v44;
  v120 = v41;
  v121 = v42;
  v122 = v38;
  v123 = v39;
  v45 = v117;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type String and conformance String();
  v46 = v100;
  v47 = v113;
  View.accessibilityLabel<A>(_:)();

  (*(v114 + 8))(v40, v47);
  v48 = static Alignment.center.getter();
  v50 = v49;
  v51 = v99;
  outlined init with copy of VideoReactionButton(v43, v45, v99);
  v113 = v33;
  v52 = swift_allocObject();
  v114 = v34;
  v53 = v45;
  v54 = v43;
  v55 = v51;
  v56 = v102;
  outlined init with take of VideoReactionButton(v53, v52 + v34, v55);
  v57 = (v46 + *(v104 + 44));
  *v57 = closure #1 in closure #3 in VideoReactionButton.body.getter;
  v57[1] = 0;
  v57[2] = partial apply for closure #2 in closure #3 in VideoReactionButton.body.getter;
  v57[3] = v52;
  v57[4] = v48;
  v57[5] = v50;
  v58 = v43 + *(v116 + 36);
  v59 = *(v58 + 8);
  LOBYTE(v120) = *v58;
  v121 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  v60 = 0;
  if (v124)
  {
    v61 = 1.0;
  }

  else
  {
    v61 = 0.0;
  }

  static UnitPoint.center.getter();
  v63 = v62;
  v65 = v64;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v46, v56, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGMd);
  v66 = v56 + *(v105 + 44);
  *v66 = v61;
  *(v66 + 8) = v61;
  *(v66 + 16) = v63;
  *(v66 + 24) = v65;
  OUTLINED_FUNCTION_14_53();
  State.wrappedValue.getter();
  v67 = v101;
  if ((v124 & 1) == 0)
  {
    if (v101 == 2)
    {
      static UnitPoint.topTrailing.getter();
      v60 = 0xBFE921FB54442D18;
      goto LABEL_14;
    }

    if (v101 == 1)
    {
      static UnitPoint.bottomLeading.getter();
      v60 = 0xBFE921FB54442D18;
      OUTLINED_FUNCTION_12_69();
LABEL_13:
      static UnitPoint.bottomLeading.getter();
      goto LABEL_15;
    }

    static UnitPoint.center.getter();
  }

  if (v67 != 2)
  {
    v68 = v67 == 1;
    v43 = v97;
    v34 = v96[1];
    v67 = v96[0];
    if (!v68)
    {
      static UnitPoint.center.getter();
      goto LABEL_15;
    }

    goto LABEL_13;
  }

LABEL_14:
  OUTLINED_FUNCTION_12_69();
  static UnitPoint.topTrailing.getter();
LABEL_15:
  v71 = v69;
  v72 = v70;
  v73 = v112;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v56, v112, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGMd);
  v74 = (v73 + *(v67 + 36));
  *v74 = v60;
  v74[1] = v71;
  v74[2] = v72;
  v75 = VideoReactionButton.transformAnimation.getter();
  OUTLINED_FUNCTION_14_53();
  State.wrappedValue.getter();
  v76 = v124;
  v77 = v73;
  v78 = v108;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v77, v108, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGAA15_RotationEffectVGMd);
  v79 = v78 + *(v110 + 36);
  *v79 = v75;
  *(v79 + 8) = v76;
  v80 = v109;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v78, v109, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGAA15_RotationEffectVGAA010_AnimationM0VySbGGMd);
  v81 = (v80 + *(v106 + 36));
  *v81 = 0x3FF0000000000000;
  v81[1] = 0;
  v81[2] = 0;
  v81[3] = 0x3FF0000000000000;
  v81[4] = 0;
  v81[5] = 0;
  VideoReactionButton.offset.getter();
  v83 = v82;
  v84 = v111;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v80, v111, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGAA15_RotationEffectVGAA010_AnimationM0VySbGGAA16_TransformEffectVGMd);
  v85 = (v84 + *(v107 + 36));
  *v85 = v83;
  v85[1] = 0;
  v86 = VideoReactionButton.offsetAnimation.getter();
  OUTLINED_FUNCTION_14_53();
  State.wrappedValue.getter();
  v87 = v124;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v84, v34, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGAA15_RotationEffectVGAA010_AnimationM0VySbGGAA16_TransformEffectVGAA13_OffsetEffectVGMd);
  v88 = v34 + *(v43 + 36);
  *v88 = v86;
  *(v88 + 8) = v87;
  if (*v54)
  {

    v89 = VideoReactionPickerViewModel.isShowingPicker.getter();

    LOBYTE(v120) = v89 & 1;
    v90 = v117;
    outlined init with copy of VideoReactionButton(v54, v117, type metadata accessor for VideoReactionButton);
    v91 = v114;
    v92 = swift_allocObject();
    outlined init with take of VideoReactionButton(v90, v92 + v91, type metadata accessor for VideoReactionButton);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, _BackgroundModifier<ModifiedContent<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<XPositionPreferenceKey>>>, _PreferenceActionModifier<XPositionPreferenceKey>>>>, _ScaleEffect>, _RotationEffect>, _AnimationModifier<Bool>>, _TransformEffect>, _OffsetEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    View.onChange<A>(of:initial:_:)();

    return sub_1BBCF7508(v34);
  }

  else
  {
    type metadata accessor for VideoReactionPickerViewModel(0);
    OUTLINED_FUNCTION_0_174();
    lazy protocol witness table accessor for type VideoReactionButtonStyle and conformance VideoReactionButtonStyle(v94, v95);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in VideoReactionButton.body.getter(void *a1)
{
  if (*a1)
  {
    v1 = *(a1 + *(type metadata accessor for VideoReactionButton(0) + 32));

    VideoReactionPickerViewModel.sendReaction(_:)(v1);
  }

  else
  {
    type metadata accessor for VideoReactionPickerViewModel(0);
    lazy protocol witness table accessor for type VideoReactionButtonStyle and conformance VideoReactionButtonStyle(&lazy protocol witness table cache variable for type VideoReactionPickerViewModel and conformance VideoReactionPickerViewModel, type metadata accessor for VideoReactionPickerViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #2 in VideoReactionButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1;
  v35 = a1;
  v42 = a2;
  v40 = type metadata accessor for DynamicTypeSize();
  v3 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v37 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - v6;
  v41 = type metadata accessor for Image.Scale();
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v38 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v35 - v10;
  v12 = type metadata accessor for Font.TextStyle();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for VideoReactionButton(0);
  v17 = VideoReaction.rawValue.getter(*(v2 + *(v16 + 32)));
  v18 = AVCaptureReactionSystemImageNameForType(v17);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = Image.init(systemName:)();
  (*(v13 + 104))(v15, *MEMORY[0x1E6980F08], v12);
  v19 = type metadata accessor for Font.Design();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v19);
  static Font.Weight.semibold.getter();
  v20 = static Font.system(_:design:weight:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_s7SwiftUI4FontV6DesignOSgMd);
  (*(v13 + 8))(v15, v12);
  KeyPath = swift_getKeyPath();
  specialized Environment.wrappedValue.getter(v7);
  v22 = v37;
  v23 = v40;
  (*(v3 + 104))(v37, *MEMORY[0x1E697E6C8], v40);
  LOBYTE(v2) = static DynamicTypeSize.< infix(_:_:)();
  v24 = *(v3 + 8);
  v24(v22, v23);
  v24(v7, v23);
  v26 = v38;
  v25 = v39;
  v27 = MEMORY[0x1E69816E0];
  if ((v2 & 1) == 0)
  {
    v27 = MEMORY[0x1E69816C8];
  }

  v28 = v41;
  (*(v39 + 104))(v38, *v27, v41);
  v29 = swift_getKeyPath();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGMd);
  v31 = v42;
  v32 = (v42 + *(v30 + 36));
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd);
  result = (*(v25 + 32))(v32 + *(v33 + 28), v26, v28);
  *v32 = v29;
  *v31 = v36;
  v31[1] = KeyPath;
  v31[2] = v20;
  return result;
}

void closure #1 in closure #3 in VideoReactionButton.body.getter(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for NamedCoordinateSpace();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = static Color.clear.getter();
  v16[0] = 0xD000000000000019;
  v16[1] = 0x80000001BC4DCD20;
  static CoordinateSpaceProtocol<>.named<A>(_:)();
  GeometryProxy.frame<A>(in:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  (*(v3 + 8))(v5, v2);
  v17.origin.x = v8;
  v17.origin.y = v10;
  v17.size.width = v12;
  v17.size.height = v14;
  MidX = CGRectGetMidX(v17);
  *a1 = v6;
  *(a1 + 8) = MidX;
}

uint64_t closure #2 in closure #3 in VideoReactionButton.body.getter()
{
  type metadata accessor for VideoReactionButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVSgGMd);
  result = State.wrappedValue.getter();
  if (v1 == 1)
  {
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t VideoReactionButton.transformAnimation.getter()
{
  type metadata accessor for VideoReactionButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  v0 = 0;
  if (v2 == 1)
  {
    static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
    v0 = Animation.delay(_:)();
  }

  return v0;
}

uint64_t VideoReactionButton.offset.getter()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for VideoReactionButton(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v0 + *(v11 + 28);
  v13 = *v12;
  v14 = *(v12 + 1);
  LOBYTE(aBlock) = v13;
  v32 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  result = State.wrappedValue.getter();
  if ((v37 & 1) == 0)
  {
    v16 = v0 + *(v8 + 24);
    v17 = *v16;
    v18 = v16[8];
    v19 = *(v16 + 2);
    aBlock = v17;
    LOBYTE(v32) = v18;
    v33 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVSgGMd);
    result = State.wrappedValue.getter();
    if ((v38 & 1) == 0)
    {
      v28 = v2;
      if (*v0)
      {

        VideoReactionPickerViewModel.anchorPoint.getter();
        v21 = v20;

        if ((v21 & 1) == 0)
        {

          v22 = VideoReactionPickerViewModel.isShowingPicker.getter();

          if (v22)
          {
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
            v23 = static OS_dispatch_queue.main.getter();
            outlined init with copy of VideoReactionButton(v0, &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VideoReactionButton);
            v24 = (*(v9 + 80) + 16) & ~*(v9 + 80);
            v25 = swift_allocObject();
            outlined init with take of VideoReactionButton(&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for VideoReactionButton);
            v35 = partial apply for closure #1 in VideoReactionButton.offset.getter;
            v36 = v25;
            aBlock = MEMORY[0x1E69E9820];
            v32 = 1107296256;
            v33 = thunk for @escaping @callee_guaranteed () -> ();
            v34 = &block_descriptor_119;
            v26 = _Block_copy(&aBlock);

            static DispatchQoS.unspecified.getter();
            aBlock = MEMORY[0x1E69E7CC0];
            lazy protocol witness table accessor for type VideoReactionButtonStyle and conformance VideoReactionButtonStyle(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
            lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
            dispatch thunk of SetAlgebra.init<A>(_:)();
            MEMORY[0x1BFB215C0](0, v7, v4, v26);
            _Block_release(v26);

            (*(v28 + 8))(v4, v1);
            return (*(v29 + 8))(v7, v30);
          }
        }
      }

      else
      {
        type metadata accessor for VideoReactionPickerViewModel(0);
        lazy protocol witness table accessor for type VideoReactionButtonStyle and conformance VideoReactionButtonStyle(&lazy protocol witness table cache variable for type VideoReactionPickerViewModel and conformance VideoReactionPickerViewModel, type metadata accessor for VideoReactionPickerViewModel);
        result = EnvironmentObject.error()();
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t VideoReactionButton.offsetAnimation.getter()
{
  type metadata accessor for VideoReactionButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  v0 = 0;
  if (v2 == 1)
  {
    static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
    v0 = Animation.delay(_:)();
  }

  return v0;
}

void closure #4 in VideoReactionButton.body.getter(uint64_t a1, _BYTE *a2)
{
  if ((*a2 & 1) == 0)
  {
    type metadata accessor for VideoReactionButton(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
    State.wrappedValue.setter();
  }
}

uint64_t closure #1 in VideoReactionButton.offset.getter()
{
  type metadata accessor for VideoReactionButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  return State.wrappedValue.setter();
}

uint64_t VideoReactionButton.init(reaction:showDelay:moveDelay:)@<X0>(char a1@<W0>, uint64_t *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  type metadata accessor for VideoReactionPickerViewModel(0);
  OUTLINED_FUNCTION_0_174();
  lazy protocol witness table accessor for type VideoReactionButtonStyle and conformance VideoReactionButtonStyle(v8, v9);
  *a2 = EnvironmentObject.init()();
  a2[1] = v10;
  v11 = type metadata accessor for VideoReactionButton(0);
  v12 = v11[5];
  *(a2 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd);
  swift_storeEnumTagMultiPayload();
  v13 = a2 + v11[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreGraphics7CGFloatVSgMd);
  State.init(wrappedValue:)();
  *v13 = v16;
  v13[8] = v17;
  *(v13 + 2) = v18;
  v14 = a2 + v11[7];
  result = State.init(wrappedValue:)();
  *v14 = v16;
  *(v14 + 1) = v17;
  *(a2 + v11[8]) = a1;
  *(a2 + v11[9]) = a3;
  *(a2 + v11[10]) = a4;
  return result;
}

uint64_t VideoReactionButtonRow.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA7ForEachVySnySiGSiAA05TupleD0Vy15ConversationKit19VideoReactionButtonV_AA6SpacerVSgtGGGMd);
  swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy15ConversationKit19VideoReactionButtonV_AA6SpacerVSgtGMd);
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type TupleView<(VideoReactionButton, Spacer?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy15ConversationKit19VideoReactionButtonV_AA6SpacerVSgtGMd);
  return ForEach<>.init(_:id:content:)();
}

void closure #1 in closure #1 in VideoReactionButtonRow.body.getter(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = type metadata accessor for VideoReactionButton(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v30 - v14);
  v16 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v16 >= *(a2 + 16))
  {
LABEL_8:
    __break(1u);
    return;
  }

  v17 = *(a2 + v16 + 32);
  v18 = v16 * 0.1 + a4;
  type metadata accessor for VideoReactionPickerViewModel(0);
  lazy protocol witness table accessor for type VideoReactionButtonStyle and conformance VideoReactionButtonStyle(&lazy protocol witness table cache variable for type VideoReactionPickerViewModel and conformance VideoReactionPickerViewModel, type metadata accessor for VideoReactionPickerViewModel);
  *v15 = EnvironmentObject.init()();
  v15[1] = v19;
  v20 = v10[5];
  *(v15 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd);
  swift_storeEnumTagMultiPayload();
  v21 = v15 + v10[6];
  v31 = 0;
  v22 = 1;
  v32 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreGraphics7CGFloatVSgMd);
  State.init(wrappedValue:)();
  v23 = v34;
  v24 = v35;
  *v21 = v33;
  v21[8] = v23;
  *(v21 + 2) = v24;
  v25 = v15 + v10[7];
  LOBYTE(v31) = 0;
  State.init(wrappedValue:)();
  v26 = v34;
  *v25 = v33;
  *(v25 + 1) = v26;
  *(v15 + v10[8]) = v17;
  *(v15 + v10[9]) = v18;
  *(v15 + v10[10]) = a5;
  v27 = specialized BidirectionalCollection.last.getter(a2);
  if (v27 == 8)
  {
    v28 = 0;
  }

  else
  {
    v28 = specialized == infix<A>(_:_:)(v17, v27);
    v22 = (v28 & 1) == 0;
  }

  outlined init with copy of VideoReactionButton(v15, v12, type metadata accessor for VideoReactionButton);
  outlined init with copy of VideoReactionButton(v12, a3, type metadata accessor for VideoReactionButton);
  v29 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19VideoReactionButtonV_7SwiftUI6SpacerVSgtMd) + 48);
  *v29 = 0;
  *(v29 + 8) = v22;
  *(v29 + 9) = v28 & 1;
  outlined destroy of VideoReactionButtonStyle();
  outlined destroy of VideoReactionButtonStyle();
}

uint64_t VideoReactionPickerBubble.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  type metadata accessor for AccessibilityChildBehavior();
  OUTLINED_FUNCTION_1();
  v49 = v4;
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v48 = v6 - v5;
  v7 = type metadata accessor for VideoReactionPickerBubble(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAIyAIyAIyAA6VStackVyAA05TupleC0Vy15ConversationKit22VideoReactionButtonRowV_APtGGAA30_EnvironmentKeyWritingModifierVyAN0pq6PickerC5Model33_5A0B7B44E54382705C993A39EDE5E358LLCSgGGAA017_AppearanceActionW0VGAA14_PaddingLayoutVGAA12_FrameLayoutVGAA011_BackgroundW0VyAA14GeometryReaderVyAIyAIyAIyAA06_ShapeC0VyAN13ThoughtBubbleVAA8MaterialVGAA026_InsettableBackgroundShapeW0VyAA5ColorVA15_GGAA13_ShadowEffectVGAA010_AnimationW0VySbGGGGGAA016_CoordinateSpaceW0VySSGG_Qo_Md);
  OUTLINED_FUNCTION_1();
  v52 = v11;
  v53 = v10;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_1();
  v51 = v13;
  v14 = VideoReactionPickerBubble.buttonVerticalSpacing.getter();
  v46 = static HorizontalAlignment.center.getter();
  v58 = 0;
  v15 = *(v1 + 8);
  type metadata accessor for VideoReactionPickerViewModel(0);
  OUTLINED_FUNCTION_0_174();
  lazy protocol witness table accessor for type VideoReactionButtonStyle and conformance VideoReactionButtonStyle(v16, v17);
  v45 = static ObservableObject.environmentStore.getter();
  outlined init with copy of VideoReactionButton(v1, &v42[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for VideoReactionPickerBubble);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v44 = swift_allocObject();
  outlined init with take of VideoReactionButton(&v42[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v44 + v18, type metadata accessor for VideoReactionPickerBubble);
  swift_beginAccess();
  v47 = v15;

  v43 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v59 = 0;
  if (one-time initialization token for defaultTipWidth != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *(&v60[3] + 1) = *&v60[28];
  *(&v60[11] + 1) = *&v60[36];
  *(&v60[19] + 1) = *&v60[44];
  v27 = static Alignment.center.getter();
  v29 = v28;
  outlined init with copy of VideoReactionButton(v2, &v42[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for VideoReactionPickerBubble);
  v30 = swift_allocObject();
  outlined init with take of VideoReactionButton(&v42[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v30 + v18, type metadata accessor for VideoReactionPickerBubble);
  *&v57[0] = v46;
  *(v57 + 1) = v14;
  LOBYTE(v57[1]) = 0;
  *(&v57[1] + 1) = *v62;
  DWORD1(v57[1]) = *&v62[3];
  *(&v57[1] + 1) = &outlined read-only object #0 of closure #1 in VideoReactionPickerBubble.body.getter;
  v57[2] = vdupq_n_s64(0x3FB999999999999AuLL);
  *&v57[3] = &outlined read-only object #1 of closure #1 in VideoReactionPickerBubble.body.getter;
  *(&v57[3] + 8) = xmmword_1BC4DCC30;
  *(&v57[4] + 1) = v45;
  v57[5] = v47;
  *&v57[6] = 0;
  *(&v57[6] + 1) = partial apply for closure #2 in VideoReactionPickerBubble.body.getter;
  *&v57[7] = v44;
  BYTE8(v57[7]) = v43;
  HIDWORD(v57[7]) = *&v61[3];
  *(&v57[7] + 9) = *v61;
  *&v57[8] = v20;
  *(&v57[8] + 1) = v22;
  *&v57[9] = v24;
  *(&v57[9] + 1) = v26;
  LOBYTE(v57[10]) = 0;
  *(&v57[10] + 1) = *v60;
  *(&v57[11] + 1) = *&v60[8];
  *(&v57[12] + 1) = *&v60[16];
  *&v57[13] = *(&v60[23] + 1);
  *(&v57[13] + 1) = partial apply for closure #1 in closure #3 in VideoReactionPickerBubble.body.getter;
  *&v57[14] = v30;
  *(&v57[14] + 1) = v27;
  *&v57[15] = v29;
  *(&v57[15] + 1) = 0xD000000000000019;
  *&v57[16] = 0x80000001BC4DCD20;
  v31 = v48;
  static AccessibilityChildBehavior.contain.getter();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6VStackVyAA9TupleViewVy15ConversationKit22VideoReactionButtonRowV_AJtGGAA30_EnvironmentKeyWritingModifierVyAH0jk6PickerG5Model33_5A0B7B44E54382705C993A39EDE5E358LLCSgGGAA017_AppearanceActionQ0VGAA14_PaddingLayoutVGAA12_FrameLayoutVGAA011_BackgroundQ0VyAA14GeometryReaderVyACyACyACyAA06_ShapeG0VyAH13ThoughtBubbleVAA8MaterialVGAA026_InsettableBackgroundShapeQ0VyAA5ColorVA9_GGAA13_ShadowEffectVGAA010_AnimationQ0VySbGGGGGAA016_CoordinateSpaceQ0VySSGGMd);
  v33 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(VideoReactionButtonRow, VideoReactionButtonRow)>>, _EnvironmentKeyWritingModifier<VideoReactionPickerViewModel?>>, _AppearanceActionModifier>, _PaddingLayout>, _FrameLayout>, _BackgroundModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<ThoughtBubble, Material>, _InsettableBackgroundShapeModifier<Color, ThoughtBubble>>, _ShadowEffect>, _AnimationModifier<Bool>>>>>, _CoordinateSpaceModifier<String>> and conformance <> ModifiedContent<A, B>();
  v34 = v51;
  View.accessibilityElement(children:)();
  (*(v49 + 8))(v31, v50);
  memcpy(v63, v57, 0x108uLL);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v63, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6VStackVyAA9TupleViewVy15ConversationKit22VideoReactionButtonRowV_AJtGGAA30_EnvironmentKeyWritingModifierVyAH0jk6PickerG5Model33_5A0B7B44E54382705C993A39EDE5E358LLCSgGGAA017_AppearanceActionQ0VGAA14_PaddingLayoutVGAA12_FrameLayoutVGAA011_BackgroundQ0VyAA14GeometryReaderVyACyACyACyAA06_ShapeG0VyAH13ThoughtBubbleVAA8MaterialVGAA026_InsettableBackgroundShapeQ0VyAA5ColorVA9_GGAA13_ShadowEffectVGAA010_AnimationQ0VySbGGGGGAA016_CoordinateSpaceQ0VySSGGMd);
  v35 = [objc_opt_self() conversationKit];
  v64._object = 0xE000000000000000;
  OUTLINED_FUNCTION_5_5();
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v64._countAndFlagsBits = 0;
  v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, v38, v35, v36, v64);

  v57[0] = v39;
  v55 = v32;
  v56 = v33;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type String and conformance String();
  v40 = v53;
  View.accessibilityLabel<A>(_:)();

  return (*(v52 + 8))(v34, v40);
}