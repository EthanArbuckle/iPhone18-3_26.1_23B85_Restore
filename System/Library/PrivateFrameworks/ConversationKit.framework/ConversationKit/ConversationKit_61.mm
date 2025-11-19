BOOL closure #3 in closure #1 in closure #1 in VideoMessageControlsView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for UserInterfaceSizeClass();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v43 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v40 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v49 = &v40 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v40 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v40 - v23;
  v50 = a1;
  VideoMessageControlsView.verticalSizeClass.getter();
  v25 = *MEMORY[0x1E697FF40];
  v51 = v3;
  v45 = *(v3 + 104);
  v45(v21, v25, v2);
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v2);
  v46 = v5;
  v26 = *(v5 + 48);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v24, v9, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v21, &v9[v26], &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  if (__swift_getEnumTagSinglePayload(v9, 1, v2) == 1)
  {
    v42 = v25;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v21, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v24, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    if (__swift_getEnumTagSinglePayload(&v9[v26], 1, v2) != 1)
    {
LABEL_12:
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
      return 1;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    v27 = v50;
  }

  else
  {
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v9, v18, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    if (__swift_getEnumTagSinglePayload(&v9[v26], 1, v2) == 1)
    {
LABEL_11:
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v21, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v24, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      (*(v51 + 8))(v18, v2);
      goto LABEL_12;
    }

    v42 = v25;
    v28 = v51;
    v29 = v44;
    (*(v51 + 32))(v44, &v9[v26], v2);
    lazy protocol witness table accessor for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, MEMORY[0x1E697FF50]);
    v41 = dispatch thunk of static Equatable.== infix(_:_:)();
    v30 = *(v28 + 8);
    v30(v29, v2);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v21, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v24, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    v30(v18, v2);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    v27 = v50;
    if ((v41 & 1) == 0)
    {
      return 1;
    }
  }

  v24 = v49;
  VideoMessageControlsView.horizontalSizeClass.getter();
  v21 = v47;
  v45(v47, v42, v2);
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v2);
  v31 = *(v46 + 48);
  v9 = v48;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v24, v48, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v21, &v9[v31], &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  if (__swift_getEnumTagSinglePayload(v9, 1, v2) != 1)
  {
    v32 = v43;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v9, v43, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    if (__swift_getEnumTagSinglePayload(&v9[v31], 1, v2) != 1)
    {
      v34 = v51;
      v35 = &v9[v31];
      v36 = v44;
      (*(v51 + 32))(v44, v35, v2);
      lazy protocol witness table accessor for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, MEMORY[0x1E697FF50]);
      v37 = dispatch thunk of static Equatable.== infix(_:_:)();
      v38 = *(v34 + 8);
      v38(v36, v2);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v21, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v49, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      v38(v32, v2);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      if ((v37 & 1) == 0)
      {
        return 1;
      }

      goto LABEL_16;
    }

    v18 = v32;
    goto LABEL_11;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v21, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v24, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  if (__swift_getEnumTagSinglePayload(&v9[v31], 1, v2) != 1)
  {
    goto LABEL_12;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
LABEL_16:
  v39 = *MEMORY[0x1E69E7D40] & **(v27 + *(type metadata accessor for VideoMessageControlsView(0) + 28) + 8);
  (*(v39 + 288))(&v52);
  return (v52 & 1) != 0;
}

uint64_t specialized View.conditionallyStacked<A>(with:condition:)@<X0>(void (*a1)(void)@<X0>, void (*a2)(__n128)@<X2>, uint64_t a3@<X8>)
{
  v18[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA19_ConditionalContentVyAA08ModifiedH0VyAKyAKy15ConversationKit020VideoMessageControlsE0V011LocalBottomnE033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGASGAKyAKyAKyAN06RemotepnE0APLLVAA14_PaddingLayoutVGA1_GAA16_FlexFrameLayoutVGGtGGMd);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyAA08ModifiedD0VyAMyAMy15ConversationKit020VideoMessageControlsH0V011LocalBottomoH033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGAUGAMyAMyAMyAP06RemoteqoH0ARLLVAA14_PaddingLayoutVGA3_GAA16_FlexFrameLayoutVGGtGGAA6VStackVyA10_G_GMd);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA19_ConditionalContentVyAA08ModifiedH0VyAKyAKy15ConversationKit020VideoMessageControlsE0V011LocalBottomnE033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGASGAKyAKyAKyAN06RemotepnE0APLLVAA14_PaddingLayoutVGA1_GAA16_FlexFrameLayoutVGGtGGMd);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v18 - v13;
  a2(v12);
  LODWORD(a2) = Axis.rawValue.getter();
  if (a2 == Axis.rawValue.getter())
  {
    *v14 = static VerticalAlignment.center.getter();
    *(v14 + 1) = 0;
    v14[16] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerV_AA19_ConditionalContentVyAA08ModifiedK0VyAOyAOy15ConversationKit020VideoMessageControlsD0V011LocalBottomqD033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGAWGAOyAOyAOyAR06RemotesqD0ATLLVAA08_PaddingG0VGA5_GAA010_FlexFrameG0VGGtGGMd);
    a1();
    v15 = &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA19_ConditionalContentVyAA08ModifiedH0VyAKyAKy15ConversationKit020VideoMessageControlsE0V011LocalBottomnE033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGASGAKyAKyAKyAN06RemotepnE0APLLVAA14_PaddingLayoutVGA1_GAA16_FlexFrameLayoutVGGtGGMd;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v14, v10, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA19_ConditionalContentVyAA08ModifiedH0VyAKyAKy15ConversationKit020VideoMessageControlsE0V011LocalBottomnE033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGASGAKyAKyAKyAN06RemotepnE0APLLVAA14_PaddingLayoutVGA1_GAA16_FlexFrameLayoutVGGtGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<VideoMessageControlsView.LocalBottomControlsView, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _OpacityEffect>, ModifiedContent<ModifiedContent<ModifiedContent<VideoMessageControlsView.RemoteBottomControlsView, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA19_ConditionalContentVyAA08ModifiedH0VyAKyAKy15ConversationKit020VideoMessageControlsE0V011LocalBottomnE033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGASGAKyAKyAKyAN06RemotepnE0APLLVAA14_PaddingLayoutVGA1_GAA16_FlexFrameLayoutVGGtGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type VStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<VideoMessageControlsView.LocalBottomControlsView, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _OpacityEffect>, ModifiedContent<ModifiedContent<ModifiedContent<VideoMessageControlsView.RemoteBottomControlsView, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA19_ConditionalContentVyAA08ModifiedH0VyAKyAKy15ConversationKit020VideoMessageControlsE0V011LocalBottomnE033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGASGAKyAKyAKyAN06RemotepnE0APLLVAA14_PaddingLayoutVGA1_GAA16_FlexFrameLayoutVGGtGGMd);
    _ConditionalContent<>.init(storage:)();
    v16 = v14;
  }

  else
  {
    *v7 = static HorizontalAlignment.center.getter();
    *(v7 + 1) = 0;
    v7[16] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6SpacerV_AA19_ConditionalContentVyAA08ModifiedK0VyAOyAOy15ConversationKit020VideoMessageControlsD0V011LocalBottomqD033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGAWGAOyAOyAOyAR06RemotesqD0ATLLVAA08_PaddingG0VGA5_GAA010_FlexFrameG0VGGtGGMd);
    a1();
    v15 = &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA19_ConditionalContentVyAA08ModifiedH0VyAKyAKy15ConversationKit020VideoMessageControlsE0V011LocalBottomnE033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGASGAKyAKyAKyAN06RemotepnE0APLLVAA14_PaddingLayoutVGA1_GAA16_FlexFrameLayoutVGGtGGMd;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v7, v10, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA19_ConditionalContentVyAA08ModifiedH0VyAKyAKy15ConversationKit020VideoMessageControlsE0V011LocalBottomnE033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGASGAKyAKyAKyAN06RemotepnE0APLLVAA14_PaddingLayoutVGA1_GAA16_FlexFrameLayoutVGGtGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type HStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<VideoMessageControlsView.LocalBottomControlsView, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _OpacityEffect>, ModifiedContent<ModifiedContent<ModifiedContent<VideoMessageControlsView.RemoteBottomControlsView, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA19_ConditionalContentVyAA08ModifiedH0VyAKyAKy15ConversationKit020VideoMessageControlsE0V011LocalBottomnE033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGASGAKyAKyAKyAN06RemotepnE0APLLVAA14_PaddingLayoutVGA1_GAA16_FlexFrameLayoutVGGtGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type VStack<TupleView<(Spacer, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<VideoMessageControlsView.LocalBottomControlsView, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _OpacityEffect>, ModifiedContent<ModifiedContent<ModifiedContent<VideoMessageControlsView.RemoteBottomControlsView, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA19_ConditionalContentVyAA08ModifiedH0VyAKyAKy15ConversationKit020VideoMessageControlsE0V011LocalBottomnE033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGASGAKyAKyAKyAN06RemotepnE0APLLVAA14_PaddingLayoutVGA1_GAA16_FlexFrameLayoutVGGtGGMd);
    _ConditionalContent<>.init(storage:)();
    v16 = v7;
  }

  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, v15);
}

uint64_t closure #4 in closure #1 in closure #1 in VideoMessageControlsView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy15ConversationKit24VideoMessageControlsViewV010PlayButtonJ033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGAA08_OverlayW0VyACyACyACyACyACyAA4TextVAA01_tu7WritingW0VySiSgGGAA016_ForegroundStyleW0VyAA22HierarchicalShapeStyleVGGAVyAA8MaterialVSgGGAA12_FrameLayoutVGAA010_AlignmentzW0VGGGMd);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v61 - v6;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGy15ConversationKit24VideoMessageControlsViewV010PlayButtonL033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGAGyAtA08_OverlayY0VyAGyAGyAGyAGyAGyAA4TextVAA01_vw7WritingY0VySiSgGGAA016_ForegroundStyleY0VyAA22HierarchicalShapeStyleVGGAZyAA8MaterialVSgGGAA12_FrameLayoutVGAA017_AlignmentWritingY0VGGG_GMd);
  MEMORY[0x1EEE9AC00](v77);
  v9 = &v61 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy15ConversationKit24VideoMessageControlsViewV010PlayButtonK033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGAEyArA08_OverlayX0VyAEyAEyAEyAEyAEyAA4TextVAA01_uv7WritingX0VySiSgGGAA016_ForegroundStyleX0VyAA22HierarchicalShapeStyleVGGAXyAA8MaterialVSgGGAA12_FrameLayoutVGAA017_AlignmentWritingX0VGGGGMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v61 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v61 - v17;
  v19 = type metadata accessor for VideoMessageControlsView(0);
  v20 = *(a1 + *(v19 + 28) + 8);
  v21 = (a1 + *(v19 + 32));
  v22 = *v21;
  v23 = *(v21 + 1);
  LOBYTE(v82[0]) = v22;
  v83 = v23;
  v24 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.projectedValue.getter();
  v75 = v86;
  countAndFlagsBits_low = LOBYTE(v87._countAndFlagsBits);
  KeyPath = swift_getKeyPath();
  type metadata accessor for VideoMessagePlayerViewModel(0);
  lazy protocol witness table accessor for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel(&lazy protocol witness table cache variable for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel, type metadata accessor for VideoMessagePlayerViewModel);
  v72 = ObservedObject.init(wrappedValue:)();
  v73 = v25;
  v26 = VideoMessagePlayerViewModel.playButtonOpacity.getter();
  LOBYTE(v86._countAndFlagsBits) = 0;
  v27 = MEMORY[0x1E69E7D40];
  LOBYTE(a1) = (*((*MEMORY[0x1E69E7D40] & *v24) + 0xF0))() == 4;
  v71 = swift_getKeyPath();
  v70 = swift_allocObject();
  *(v70 + 16) = a1;
  v67 = static VerticalAlignment.bottom.getter();
  if ((*((*v27 & *v24) + 0x270))())
  {
    v64 = static HorizontalAlignment.center.getter();
    v28 = *(v5 + 36);
    v69 = v15;
    v29 = &v7[v28];
    v30 = [objc_opt_self() conversationKit];
    v89._object = 0xE000000000000000;
    v31.value._countAndFlagsBits = 0x61737265766E6F43;
    v31.value._object = 0xEF74694B6E6F6974;
    v32._object = 0x80000001BC516570;
    v32._countAndFlagsBits = 0xD000000000000023;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    v89._countAndFlagsBits = 0;
    v34 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v31, v30, v33, v89);
    v65 = v5;

    v86 = v34;
    lazy protocol witness table accessor for type String and conformance String();
    v35 = Text.init<A>(_:)();
    v66 = v12;
    v36 = v35;
    v61 = v37;
    v38 = a3;
    v40 = v39;
    v63 = v41;
    v42 = swift_getKeyPath();
    v62 = static HierarchicalShapeStyle.secondary.getter();
    v81 = v40 & 1;
    v80 = 0;
    v43 = swift_getKeyPath();
    v44 = v18;
    v45 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeK0VGGAGyAA8MaterialVSgGGMd) + 36)];
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA8MaterialVSgGMd) + 28);
    static Material.regular.getter();
    v47 = type metadata accessor for Material();
    __swift_storeEnumTagSinglePayload(v45 + v46, 0, 1, v47);
    *v45 = v43;
    v18 = v44;
    a3 = v38;
    *v29 = v36;
    v12 = v66;
    *(v29 + 1) = v61;
    v29[16] = v81;
    *(v29 + 17) = v82[0];
    *(v29 + 5) = *(v82 + 3);
    *(v29 + 3) = v63;
    *(v29 + 4) = v42;
    *(v29 + 5) = 1;
    v29[48] = v80;
    *(v29 + 49) = v78;
    v29[51] = v79;
    *(v29 + 13) = v62;
    GeometryProxy.size.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v48 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeK0VGGAGyAA8MaterialVSgGGAA12_FrameLayoutVGMd) + 36)];
    v49 = v87;
    *v48 = v86;
    v48[1] = v49;
    v48[2] = v88;
    v50 = swift_allocObject();
    v51 = v67;
    *(v50 + 16) = v67;
    *(v50 + 24) = 0x4028000000000000;
    v52 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeK0VGGAGyAA8MaterialVSgGGAA12_FrameLayoutVGAA010_AlignmenthI0VGMd) + 36)];
    *v52 = v51;
    v52[1] = partial apply for closure #1 in closure #1 in View.conditionalyOverlaid<A>(with:alignment:pinningTo:spacing:condition:);
    v52[2] = v50;
    v53 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAEyAEyAEyAEyAA4TextVAA022_EnvironmentKeyWritingD0VySiSgGGAA016_ForegroundStyleD0VyAA017HierarchicalShapeL0VGGAIyAA8MaterialVSgGGAA12_FrameLayoutVGAA010_AlignmentjD0VGGMd) + 36)];
    *v53 = v64;
    v53[1] = v51;
    *v7 = KeyPath;
    v7[8] = 0;
    *(v7 + 3) = *&v85[3];
    *(v7 + 9) = *v85;
    v54 = v73;
    *(v7 + 2) = v72;
    *(v7 + 3) = v54;
    object = v75._object;
    *(v7 + 4) = v75._countAndFlagsBits;
    *(v7 + 5) = object;
    v7[48] = countAndFlagsBits_low;
    *(v7 + 13) = *&v84[3];
    *(v7 + 49) = *v84;
    *(v7 + 7) = v26;
    *(v7 + 8) = v71;
    *(v7 + 9) = closure #1 in View.disabled(_:)partial apply;
    *(v7 + 10) = v70;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v7, v9, &_s7SwiftUI15ModifiedContentVyACyACy15ConversationKit24VideoMessageControlsViewV010PlayButtonJ033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGAA08_OverlayW0VyACyACyACyACyACyAA4TextVAA01_tu7WritingW0VySiSgGGAA016_ForegroundStyleW0VyAA22HierarchicalShapeStyleVGGAVyAA8MaterialVSgGGAA12_FrameLayoutVGAA010_AlignmentzW0VGGGMd);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy15ConversationKit24VideoMessageControlsViewV010PlayButtonJ033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VideoMessageControlsView.PlayButtonView, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VideoMessageControlsView.PlayButtonView, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _FrameLayout>, _AlignmentWritingModifier>>> and conformance <> ModifiedContent<A, B>();
    v15 = v69;
    _ConditionalContent<>.init(storage:)();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s7SwiftUI15ModifiedContentVyACyACy15ConversationKit24VideoMessageControlsViewV010PlayButtonJ033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGAA08_OverlayW0VyACyACyACyACyACyAA4TextVAA01_tu7WritingW0VySiSgGGAA016_ForegroundStyleW0VyAA22HierarchicalShapeStyleVGGAVyAA8MaterialVSgGGAA12_FrameLayoutVGAA010_AlignmentzW0VGGGMd);
  }

  else
  {
    *v9 = KeyPath;
    v9[8] = 0;
    *(v9 + 9) = *v85;
    *(v9 + 3) = *&v85[3];
    v56 = v73;
    *(v9 + 2) = v72;
    *(v9 + 3) = v56;
    v57 = v75._object;
    *(v9 + 4) = v75._countAndFlagsBits;
    *(v9 + 5) = v57;
    v9[48] = countAndFlagsBits_low;
    *(v9 + 49) = *v84;
    *(v9 + 13) = *&v84[3];
    *(v9 + 7) = v26;
    *(v9 + 8) = v71;
    *(v9 + 9) = closure #1 in View.disabled(_:)partial apply;
    *(v9 + 10) = v70;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy15ConversationKit24VideoMessageControlsViewV010PlayButtonJ033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VideoMessageControlsView.PlayButtonView, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VideoMessageControlsView.PlayButtonView, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _FrameLayout>, _AlignmentWritingModifier>>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
  }

  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v15, v18, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy15ConversationKit24VideoMessageControlsViewV010PlayButtonK033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGAEyArA08_OverlayX0VyAEyAEyAEyAEyAEyAA4TextVAA01_uv7WritingX0VySiSgGGAA016_ForegroundStyleX0VyAA22HierarchicalShapeStyleVGGAXyAA8MaterialVSgGGAA12_FrameLayoutVGAA017_AlignmentWritingX0VGGGGMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v18, v12, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy15ConversationKit24VideoMessageControlsViewV010PlayButtonK033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGAEyArA08_OverlayX0VyAEyAEyAEyAEyAEyAA4TextVAA01_uv7WritingX0VySiSgGGAA016_ForegroundStyleX0VyAA22HierarchicalShapeStyleVGGAXyAA8MaterialVSgGGAA12_FrameLayoutVGAA017_AlignmentWritingX0VGGGGMd);
  *a3 = 0;
  *(a3 + 8) = 1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerV_AA19_ConditionalContentVyAA08ModifiedE0VyAGy15ConversationKit24VideoMessageControlsViewV010PlayButtonL033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGAGyAtA08_OverlayY0VyAGyAGyAGyAGyAGyAA4TextVAA01_vw7WritingY0VySiSgGGAA016_ForegroundStyleY0VyAA22HierarchicalShapeStyleVGGAZyAA8MaterialVSgGGAA12_FrameLayoutVGAA017_AlignmentWritingY0VGGGGACtMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v12, a3 + *(v58 + 48), &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy15ConversationKit24VideoMessageControlsViewV010PlayButtonK033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGAEyArA08_OverlayX0VyAEyAEyAEyAEyAEyAA4TextVAA01_uv7WritingX0VySiSgGGAA016_ForegroundStyleX0VyAA22HierarchicalShapeStyleVGGAXyAA8MaterialVSgGGAA12_FrameLayoutVGAA017_AlignmentWritingX0VGGGGMd);
  v59 = a3 + *(v58 + 64);
  *v59 = 0;
  *(v59 + 8) = 1;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v18, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy15ConversationKit24VideoMessageControlsViewV010PlayButtonK033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGAEyArA08_OverlayX0VyAEyAEyAEyAEyAEyAA4TextVAA01_uv7WritingX0VySiSgGGAA016_ForegroundStyleX0VyAA22HierarchicalShapeStyleVGGAXyAA8MaterialVSgGGAA12_FrameLayoutVGAA017_AlignmentWritingX0VGGGGMd);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v12, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy15ConversationKit24VideoMessageControlsViewV010PlayButtonK033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGAEyArA08_OverlayX0VyAEyAEyAEyAEyAEyAA4TextVAA01_uv7WritingX0VySiSgGGAA016_ForegroundStyleX0VyAA22HierarchicalShapeStyleVGGAXyAA8MaterialVSgGGAA12_FrameLayoutVGAA017_AlignmentWritingX0VGGGGMd);
}

double VideoMessagePlayerViewModel.playButtonOpacity.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xF0))() - 1;
  result = 0.0;
  if (v1 <= 3u)
  {
    return dbl_1BC4E26F0[v1];
  }

  return result;
}

uint64_t closure #5 in closure #1 in closure #1 in VideoMessageControlsView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v42 = a2;
  v43 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy15ConversationKit13MovieScrubber33_B419541366E265736F7249488C40E55CLLVAA11_ClipEffectVyAA16RoundedRectangleVGGAA16_FixedSizeLayoutVGAA06_FrameT0VGMd);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA011_BackgroundK0VyAA012_ConditionalD0VyAA10_ShapeViewVyAA16RoundedRectangleVALGAUyAwA8MaterialVGGGGAA11_ClipEffectVyAWGGAA023AccessibilityAttachmentK0VGMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - v15;
  v17 = (a1 + *(type metadata accessor for VideoMessageControlsView(0) + 28));
  v18 = v17[1];
  static VideoMessageControlsView.durationView(for:)(v18, v16);
  v19 = *v17;
  v20 = type metadata accessor for VideoMessagePlayerViewModel(0);
  v21 = lazy protocol witness table accessor for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel(&lazy protocol witness table cache variable for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel, type metadata accessor for VideoMessagePlayerViewModel);
  v22 = MEMORY[0x1BFB1E3A0](v19, v18, v20, v21);
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v41 = v44;
  v23 = v45;
  v24 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit13MovieScrubber33_B419541366E265736F7249488C40E55CLLVAA11_ClipEffectVyAA16RoundedRectangleVGGMd) + 36)];
  v25 = *(type metadata accessor for RoundedRectangle() + 20);
  v26 = *MEMORY[0x1E697F468];
  v27 = type metadata accessor for RoundedCornerStyle();
  (*(*(v27 - 8) + 104))(&v24[v25], v26, v27);
  __asm { FMOV            V0.2D, #8.0 }

  *v24 = _Q0;
  *&v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd) + 36)] = 256;
  v33 = v42;
  *v10 = v42;
  *(v10 + 8) = v41;
  *(v10 + 24) = v23;
  *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy15ConversationKit13MovieScrubber33_B419541366E265736F7249488C40E55CLLVAA11_ClipEffectVyAA16RoundedRectangleVGGAA16_FixedSizeLayoutVGMd) + 36)] = 257;
  v34 = v33;
  static Alignment.bottom.getter();
  _FrameLayout.init(width:height:alignment:)();
  v35 = &v10[*(v5 + 44)];
  v36 = v45;
  *v35 = v44;
  *(v35 + 1) = v36;
  *(v35 + 2) = v46;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v16, v13, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA011_BackgroundK0VyAA012_ConditionalD0VyAA10_ShapeViewVyAA16RoundedRectangleVALGAUyAwA8MaterialVGGGGAA11_ClipEffectVyAWGGAA023AccessibilityAttachmentK0VGMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v10, v7, &_s7SwiftUI15ModifiedContentVyACyACy15ConversationKit13MovieScrubber33_B419541366E265736F7249488C40E55CLLVAA11_ClipEffectVyAA16RoundedRectangleVGGAA16_FixedSizeLayoutVGAA06_FrameT0VGMd);
  v37 = v43;
  *v43 = 0;
  *(v37 + 8) = 1;
  v38 = v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerV_AA15ModifiedContentVyAEyAEyAEyAEyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA011_BackgroundL0VyAA012_ConditionalE0VyAA10_ShapeViewVyAA16RoundedRectangleVANGAWyAyA8MaterialVGGGGAA11_ClipEffectVyAYGGAA023AccessibilityAttachmentL0VGAEyAEyAEy15ConversationKit13MovieScrubber33_B419541366E265736F7249488C40E55CLLVA7_GAA010_FixedSizeH0VGAA06_FrameH0VGtMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v13, v38 + *(v39 + 48), &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA011_BackgroundK0VyAA012_ConditionalD0VyAA10_ShapeViewVyAA16RoundedRectangleVALGAUyAwA8MaterialVGGGGAA11_ClipEffectVyAWGGAA023AccessibilityAttachmentK0VGMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v7, v38 + *(v39 + 64), &_s7SwiftUI15ModifiedContentVyACyACy15ConversationKit13MovieScrubber33_B419541366E265736F7249488C40E55CLLVAA11_ClipEffectVyAA16RoundedRectangleVGGAA16_FixedSizeLayoutVGAA06_FrameT0VGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s7SwiftUI15ModifiedContentVyACyACy15ConversationKit13MovieScrubber33_B419541366E265736F7249488C40E55CLLVAA11_ClipEffectVyAA16RoundedRectangleVGGAA16_FixedSizeLayoutVGAA06_FrameT0VGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA011_BackgroundK0VyAA012_ConditionalD0VyAA10_ShapeViewVyAA16RoundedRectangleVALGAUyAwA8MaterialVGGGGAA11_ClipEffectVyAWGGAA023AccessibilityAttachmentK0VGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s7SwiftUI15ModifiedContentVyACyACy15ConversationKit13MovieScrubber33_B419541366E265736F7249488C40E55CLLVAA11_ClipEffectVyAA16RoundedRectangleVGGAA16_FixedSizeLayoutVGAA06_FrameT0VGMd);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA011_BackgroundK0VyAA012_ConditionalD0VyAA10_ShapeViewVyAA16RoundedRectangleVALGAUyAwA8MaterialVGGGGAA11_ClipEffectVyAWGGAA023AccessibilityAttachmentK0VGMd);
}

uint64_t static VideoMessageControlsView.durationView(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA011_BackgroundK0VyAA012_ConditionalD0VyAA10_ShapeViewVyAA16RoundedRectangleVALGAUyAwA8MaterialVGGGGAA11_ClipEffectVyAWGGMd);
  v3 = MEMORY[0x1EEE9AC00](v58);
  v5 = &v55 - v4;
  v62 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x150))(v3);
  v63 = v6;
  v59 = lazy protocol witness table accessor for type String and conformance String();
  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  v12 = CEKMonospacedStylisticNumeralFontOfSizeAndStyle();
  Font.init(_:)();
  v13 = Text.font(_:)();
  v56 = v14;
  v57 = v13;
  v16 = v15;
  v18 = v17;
  outlined consume of Text.Storage(v7, v9, v11 & 1);

  [objc_opt_self() _defaultTextInsets];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  LOBYTE(v7) = static Edge.Set.all.getter();
  v27 = v18 & 1;
  LOBYTE(v62) = v18 & 1;
  LOBYTE(v64) = 0;
  v28 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA011_BackgroundK0VyAA012_ConditionalD0VyAA10_ShapeViewVyAA16RoundedRectangleVALGAUyAwA8MaterialVGGGGMd);
  v31 = &v5[*(v30 + 36)];
  VideoMessagePlayerViewModel.durationStringBackground.getter(v30, v32, v33, v34, v35, v36, v37, v38, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
  v39 = static Alignment.center.getter();
  v41 = v40;
  v42 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_BackgroundModifierVyAA19_ConditionalContentVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAGyAiA8MaterialVGGGMd) + 36)];
  *v42 = v39;
  v42[1] = v41;
  v43 = v56;
  *v5 = v57;
  *(v5 + 1) = v16;
  v5[16] = v27;
  *(v5 + 3) = v43;
  v5[32] = v7;
  *(v5 + 5) = v20;
  *(v5 + 6) = v22;
  *(v5 + 7) = v24;
  *(v5 + 8) = v26;
  v5[72] = 0;
  *(v5 + 10) = KeyPath;
  *(v5 + 11) = v28;
  v44 = &v5[*(v58 + 36)];
  v45 = *(type metadata accessor for RoundedRectangle() + 20);
  v46 = *MEMORY[0x1E697F480];
  v47 = type metadata accessor for RoundedCornerStyle();
  (*(*(v47 - 8) + 104))(&v44[v45], v46, v47);
  __asm { FMOV            V0.2D, #2.0 }

  *v44 = _Q0;
  *&v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd) + 36)] = 256;
  v62 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2F0))();
  v63 = v53;
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<_ConditionalContent<_ShapeView<RoundedRectangle, Color>, _ShapeView<RoundedRectangle, Material>>>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
  View.accessibilityLabel<A>(_:)();

  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA011_BackgroundK0VyAA012_ConditionalD0VyAA10_ShapeViewVyAA16RoundedRectangleVALGAUyAwA8MaterialVGGGGAA11_ClipEffectVyAWGGMd);
}

uint64_t key path getter for VideoMessagePlayerViewModel.durationString : VideoMessagePlayerViewModel@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x150))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for VideoMessagePlayerViewModel.durationString : VideoMessagePlayerViewModel(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x158);

  return v4(v2, v3);
}

double VideoMessagePlayerViewModel.sendButtonOpacity.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xF0))();
  result = 1.0;
  if (!v1)
  {
    return 0.0;
  }

  return result;
}

uint64_t closure #2 in closure #1 in VideoMessageControlsView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for VideoMessageControlsView(0);
  result = (*((*MEMORY[0x1E69E7D40] & **(a1 + *(v2 + 28) + 8)) + 0xF0))();
  if (!result)
  {
    MEMORY[0x1EEE9AC00](result);
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }

  return result;
}

uint64_t closure #1 in closure #2 in closure #1 in VideoMessageControlsView.body.getter(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for VideoMessageControlsView(0) + 28) + 8);
  v2 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x120))(&v5);
  if (v5)
  {
    v3 = 1;
  }

  else
  {
    v3 = 3;
  }

  return (*((*v2 & *v1) + 0xF8))(v3);
}

uint64_t specialized VideoMessageControlsView.backgroundOrCurtainAppliedToView<A>(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA14GeometryReaderVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyACyACyACyACyACyAA6ZStackVyAA05TupleG0VyAA6VStackVyAA012_ConditionalD0VyANyACyACyARyARyACyACy15ConversationKit020VideoMessageControlsG0V03TopuG033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAZGARyA_A_GGA_GAA16_FlexFrameLayoutVGAA14_OpacityEffectVG_AA6SpacerVtGANyACyAA6HStackVyANyA11__ACyACyAS18AnimatedSaveButtonVAA12_FrameLayoutVGAZGtGGA5_G_A11_tGGG_ARyA14_yANyA11__ARyACyACyACyAU011LocalBottomuG0AWLLVA8_GAA32_EnvironmentKeyTransformModifierVySbGGA8_GACyACyACyAU012RemoteBottomuG0AWLLVAZGAZGA5_GGtGGAPyA41_GGANyACyACyAPyANyA11__ARyACyACyAU010PlayButtonG0AWLLVA8_GA32_GACyA48_AA16_OverlayModifierVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA54_yAA8MaterialVSgGGA18_GAA25_AlignmentWritingModifierVGGGGA11_tGGAA30_SafeAreaRegionsIgnoringLayoutVGA5_G_ACyACyACyACyAPyANyA11__ACyACyACyACyACyA52_AZGA54_yAA5ColorVSgGGAA19_BackgroundModifierVyARyAA06_ShapeG0VyAA16RoundedRectangleVA84_GA91_yA93_A65_GGGGAA11_ClipEffectVyA93_GGAA31AccessibilityAttachmentModifierVGACyACyACyAS13MovieScrubberAWLLVA101_GAA16_FixedSizeLayoutVGA18_GtGGA79_GA5_GAZGA8_GSgtGSgtGGAZGA79_GA5_GAA01_D13ShapeModifierVyAA9RectangleVGGA89_yACyACyAA14LinearGradientVA79_GA8_GGG_Qo_GA54_yAA11ColorSchemeOGGAA24_BackgroundStyleModifierVyA84_GGMd);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA14GeometryReaderVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAGyAGyAGyAGyAGyAA6ZStackVyAA05TupleI0VyAA6VStackVyACyARyAGyAGyACyACyAGyAGy15ConversationKit020VideoMessageControlsI0V03TopvI033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGA0_GACyA1_A1_GGA1_GAA16_FlexFrameLayoutVGAA14_OpacityEffectVG_AA6SpacerVtGARyAGyAA6HStackVyARyA13__AGyAGyAU18AnimatedSaveButtonVAA12_FrameLayoutVGA0_GtGGA7_G_A13_tGGG_ACyA16_yARyA13__ACyAGyAGyAGyAW011LocalBottomvI0AYLLVA10_GAA32_EnvironmentKeyTransformModifierVySbGGA10_GAGyAGyAGyAW012RemoteBottomvI0AYLLVA0_GA0_GA7_GGtGGATyA43_GGARyAGyAGyATyARyA13__ACyAGyAGyAW010PlayButtonI0AYLLVA10_GA34_GAGyA50_AA16_OverlayModifierVyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA56_yAA8MaterialVSgGGA20_GAA25_AlignmentWritingModifierVGGGGA13_tGGAA30_SafeAreaRegionsIgnoringLayoutVGA7_G_AGyAGyAGyAGyATyARyA13__AGyAGyAGyAGyAGyA54_A0_GA56_yAA5ColorVSgGGAA19_BackgroundModifierVyACyAA06_ShapeI0VyAA16RoundedRectangleVA86_GA93_yA95_A67_GGGGAA11_ClipEffectVyA95_GGAA31AccessibilityAttachmentModifierVGAGyAGyAGyAU13MovieScrubberAYLLVA103_GAA16_FixedSizeLayoutVGA20_GtGGA81_GA7_GA0_GA10_GSgtGSgtGGA0_GA81_GA7_GAA01_D13ShapeModifierVyAA9RectangleVGGA91_yAGyAGyAA14LinearGradientVA81_GA10_GGG_Qo_GA56_yAA11ColorSchemeOGGAA24_BackgroundStyleModifierVyA67_GGAGyA146_A148_yA86_GG_GMd);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA14GeometryReaderVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyACyACyACyACyACyAA6ZStackVyAA05TupleG0VyAA6VStackVyAA012_ConditionalD0VyANyACyACyARyARyACyACy15ConversationKit020VideoMessageControlsG0V03TopuG033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAZGARyA_A_GGA_GAA16_FlexFrameLayoutVGAA14_OpacityEffectVG_AA6SpacerVtGANyACyAA6HStackVyANyA11__ACyACyAS18AnimatedSaveButtonVAA12_FrameLayoutVGAZGtGGA5_G_A11_tGGG_ARyA14_yANyA11__ARyACyACyACyAU011LocalBottomuG0AWLLVA8_GAA32_EnvironmentKeyTransformModifierVySbGGA8_GACyACyACyAU012RemoteBottomuG0AWLLVAZGAZGA5_GGtGGAPyA41_GGANyACyACyAPyANyA11__ARyACyACyAU010PlayButtonG0AWLLVA8_GA32_GACyA48_AA16_OverlayModifierVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA54_yAA8MaterialVSgGGA18_GAA25_AlignmentWritingModifierVGGGGA11_tGGAA30_SafeAreaRegionsIgnoringLayoutVGA5_G_ACyACyACyACyAPyANyA11__ACyACyACyACyACyA52_AZGA54_yAA5ColorVSgGGAA19_BackgroundModifierVyARyAA06_ShapeG0VyAA16RoundedRectangleVA84_GA91_yA93_A65_GGGGAA11_ClipEffectVyA93_GGAA31AccessibilityAttachmentModifierVGACyACyACyAS13MovieScrubberAWLLVA101_GAA16_FixedSizeLayoutVGA18_GtGGA79_GA5_GAZGA8_GSgtGSgtGGAZGA79_GA5_GAA01_D13ShapeModifierVyAA9RectangleVGGA89_yACyACyAA14LinearGradientVA79_GA8_GGG_Qo_GA54_yAA11ColorSchemeOGGAA24_BackgroundStyleModifierVyA65_GGMd);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - v13;
  v15 = *MEMORY[0x1E69E7D40] & **(v1 + *(type metadata accessor for VideoMessageControlsView(0) + 28) + 8);
  if ((*(v15 + 624))())
  {
    v16 = &v14[*(v12 + 36)];
    static Material.thin.getter();
    v17 = static Edge.Set.all.getter();
    v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI24_BackgroundStyleModifierVyAA8MaterialVGMd) + 36)] = v17;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(a1, v14, &_s7SwiftUI15ModifiedContentVyAA14GeometryReaderVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyACyACyACyACyACyAA6ZStackVyAA05TupleG0VyAA6VStackVyAA012_ConditionalD0VyANyACyACyARyARyACyACy15ConversationKit020VideoMessageControlsG0V03TopuG033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAZGARyA_A_GGA_GAA16_FlexFrameLayoutVGAA14_OpacityEffectVG_AA6SpacerVtGANyACyAA6HStackVyANyA11__ACyACyAS18AnimatedSaveButtonVAA12_FrameLayoutVGAZGtGGA5_G_A11_tGGG_ARyA14_yANyA11__ARyACyACyACyAU011LocalBottomuG0AWLLVA8_GAA32_EnvironmentKeyTransformModifierVySbGGA8_GACyACyACyAU012RemoteBottomuG0AWLLVAZGAZGA5_GGtGGAPyA41_GGANyACyACyAPyANyA11__ARyACyACyAU010PlayButtonG0AWLLVA8_GA32_GACyA48_AA16_OverlayModifierVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA54_yAA8MaterialVSgGGA18_GAA25_AlignmentWritingModifierVGGGGA11_tGGAA30_SafeAreaRegionsIgnoringLayoutVGA5_G_ACyACyACyACyAPyANyA11__ACyACyACyACyACyA52_AZGA54_yAA5ColorVSgGGAA19_BackgroundModifierVyARyAA06_ShapeG0VyAA16RoundedRectangleVA84_GA91_yA93_A65_GGGGAA11_ClipEffectVyA93_GGAA31AccessibilityAttachmentModifierVGACyACyACyAS13MovieScrubberAWLLVA101_GAA16_FixedSizeLayoutVGA18_GtGGA79_GA5_GAZGA8_GSgtGSgtGGAZGA79_GA5_GAA01_D13ShapeModifierVyAA9RectangleVGGA89_yACyACyAA14LinearGradientVA79_GA8_GGG_Qo_GA54_yAA11ColorSchemeOGGMd);
    v18 = &_s7SwiftUI15ModifiedContentVyACyAA14GeometryReaderVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyACyACyACyACyACyAA6ZStackVyAA05TupleG0VyAA6VStackVyAA012_ConditionalD0VyANyACyACyARyARyACyACy15ConversationKit020VideoMessageControlsG0V03TopuG033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAZGARyA_A_GGA_GAA16_FlexFrameLayoutVGAA14_OpacityEffectVG_AA6SpacerVtGANyACyAA6HStackVyANyA11__ACyACyAS18AnimatedSaveButtonVAA12_FrameLayoutVGAZGtGGA5_G_A11_tGGG_ARyA14_yANyA11__ARyACyACyACyAU011LocalBottomuG0AWLLVA8_GAA32_EnvironmentKeyTransformModifierVySbGGA8_GACyACyACyAU012RemoteBottomuG0AWLLVAZGAZGA5_GGtGGAPyA41_GGANyACyACyAPyANyA11__ARyACyACyAU010PlayButtonG0AWLLVA8_GA32_GACyA48_AA16_OverlayModifierVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA54_yAA8MaterialVSgGGA18_GAA25_AlignmentWritingModifierVGGGGA11_tGGAA30_SafeAreaRegionsIgnoringLayoutVGA5_G_ACyACyACyACyAPyANyA11__ACyACyACyACyACyA52_AZGA54_yAA5ColorVSgGGAA19_BackgroundModifierVyARyAA06_ShapeG0VyAA16RoundedRectangleVA84_GA91_yA93_A65_GGGGAA11_ClipEffectVyA93_GGAA31AccessibilityAttachmentModifierVGACyACyACyAS13MovieScrubberAWLLVA101_GAA16_FixedSizeLayoutVGA18_GtGGA79_GA5_GAZGA8_GSgtGSgtGGAZGA79_GA5_GAA01_D13ShapeModifierVyAA9RectangleVGGA89_yACyACyAA14LinearGradientVA79_GA8_GGG_Qo_GA54_yAA11ColorSchemeOGGAA24_BackgroundStyleModifierVyA65_GGMd;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v14, v11, &_s7SwiftUI15ModifiedContentVyACyAA14GeometryReaderVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyACyACyACyACyACyAA6ZStackVyAA05TupleG0VyAA6VStackVyAA012_ConditionalD0VyANyACyACyARyARyACyACy15ConversationKit020VideoMessageControlsG0V03TopuG033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAZGARyA_A_GGA_GAA16_FlexFrameLayoutVGAA14_OpacityEffectVG_AA6SpacerVtGANyACyAA6HStackVyANyA11__ACyACyAS18AnimatedSaveButtonVAA12_FrameLayoutVGAZGtGGA5_G_A11_tGGG_ARyA14_yANyA11__ARyACyACyACyAU011LocalBottomuG0AWLLVA8_GAA32_EnvironmentKeyTransformModifierVySbGGA8_GACyACyACyAU012RemoteBottomuG0AWLLVAZGAZGA5_GGtGGAPyA41_GGANyACyACyAPyANyA11__ARyACyACyAU010PlayButtonG0AWLLVA8_GA32_GACyA48_AA16_OverlayModifierVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA54_yAA8MaterialVSgGGA18_GAA25_AlignmentWritingModifierVGGGGA11_tGGAA30_SafeAreaRegionsIgnoringLayoutVGA5_G_ACyACyACyACyAPyANyA11__ACyACyACyACyACyA52_AZGA54_yAA5ColorVSgGGAA19_BackgroundModifierVyARyAA06_ShapeG0VyAA16RoundedRectangleVA84_GA91_yA93_A65_GGGGAA11_ClipEffectVyA93_GGAA31AccessibilityAttachmentModifierVGACyACyACyAS13MovieScrubberAWLLVA101_GAA16_FixedSizeLayoutVGA18_GtGGA79_GA5_GAZGA8_GSgtGSgtGGAZGA79_GA5_GAA01_D13ShapeModifierVyAA9RectangleVGGA89_yACyACyAA14LinearGradientVA79_GA8_GGG_Qo_GA54_yAA11ColorSchemeOGGAA24_BackgroundStyleModifierVyA65_GGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GeometryReader<<<opaque return type of View.onTapGesture(count:perform:)>>.0>, _EnvironmentKeyWritingModifier<ColorScheme>>, _BackgroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GeometryReader<<<opaque return type of View.onTapGesture(count:perform:)>>.0>, _EnvironmentKeyWritingModifier<ColorScheme>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v19 = v14;
  }

  else
  {
    if (VideoMessagePlayerViewModel.shouldShowTintedOverlay.getter())
    {
      static Color.black.getter();
      v20 = Color.opacity(_:)();
    }

    else
    {
      v20 = static Color.clear.getter();
    }

    v21 = static Edge.Set.all.getter();
    outlined init with copy of IDView<AvatarStackView, [UUID]>(a1, v5, &_s7SwiftUI15ModifiedContentVyAA14GeometryReaderVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyACyACyACyACyACyAA6ZStackVyAA05TupleG0VyAA6VStackVyAA012_ConditionalD0VyANyACyACyARyARyACyACy15ConversationKit020VideoMessageControlsG0V03TopuG033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAZGARyA_A_GGA_GAA16_FlexFrameLayoutVGAA14_OpacityEffectVG_AA6SpacerVtGANyACyAA6HStackVyANyA11__ACyACyAS18AnimatedSaveButtonVAA12_FrameLayoutVGAZGtGGA5_G_A11_tGGG_ARyA14_yANyA11__ARyACyACyACyAU011LocalBottomuG0AWLLVA8_GAA32_EnvironmentKeyTransformModifierVySbGGA8_GACyACyACyAU012RemoteBottomuG0AWLLVAZGAZGA5_GGtGGAPyA41_GGANyACyACyAPyANyA11__ARyACyACyAU010PlayButtonG0AWLLVA8_GA32_GACyA48_AA16_OverlayModifierVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA54_yAA8MaterialVSgGGA18_GAA25_AlignmentWritingModifierVGGGGA11_tGGAA30_SafeAreaRegionsIgnoringLayoutVGA5_G_ACyACyACyACyAPyANyA11__ACyACyACyACyACyA52_AZGA54_yAA5ColorVSgGGAA19_BackgroundModifierVyARyAA06_ShapeG0VyAA16RoundedRectangleVA84_GA91_yA93_A65_GGGGAA11_ClipEffectVyA93_GGAA31AccessibilityAttachmentModifierVGACyACyACyAS13MovieScrubberAWLLVA101_GAA16_FixedSizeLayoutVGA18_GtGGA79_GA5_GAZGA8_GSgtGSgtGGAZGA79_GA5_GAA01_D13ShapeModifierVyAA9RectangleVGGA89_yACyACyAA14LinearGradientVA79_GA8_GGG_Qo_GA54_yAA11ColorSchemeOGGMd);
    v22 = &v5[*(v3 + 36)];
    *v22 = v20;
    v22[8] = v21;
    v18 = &_s7SwiftUI15ModifiedContentVyACyAA14GeometryReaderVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyACyACyACyACyACyAA6ZStackVyAA05TupleG0VyAA6VStackVyAA012_ConditionalD0VyANyACyACyARyARyACyACy15ConversationKit020VideoMessageControlsG0V03TopuG033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAZGARyA_A_GGA_GAA16_FlexFrameLayoutVGAA14_OpacityEffectVG_AA6SpacerVtGANyACyAA6HStackVyANyA11__ACyACyAS18AnimatedSaveButtonVAA12_FrameLayoutVGAZGtGGA5_G_A11_tGGG_ARyA14_yANyA11__ARyACyACyACyAU011LocalBottomuG0AWLLVA8_GAA32_EnvironmentKeyTransformModifierVySbGGA8_GACyACyACyAU012RemoteBottomuG0AWLLVAZGAZGA5_GGtGGAPyA41_GGANyACyACyAPyANyA11__ARyACyACyAU010PlayButtonG0AWLLVA8_GA32_GACyA48_AA16_OverlayModifierVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA54_yAA8MaterialVSgGGA18_GAA25_AlignmentWritingModifierVGGGGA11_tGGAA30_SafeAreaRegionsIgnoringLayoutVGA5_G_ACyACyACyACyAPyANyA11__ACyACyACyACyACyA52_AZGA54_yAA5ColorVSgGGAA19_BackgroundModifierVyARyAA06_ShapeG0VyAA16RoundedRectangleVA84_GA91_yA93_A65_GGGGAA11_ClipEffectVyA93_GGAA31AccessibilityAttachmentModifierVGACyACyACyAS13MovieScrubberAWLLVA101_GAA16_FixedSizeLayoutVGA18_GtGGA79_GA5_GAZGA8_GSgtGSgtGGAZGA79_GA5_GAA01_D13ShapeModifierVyAA9RectangleVGGA89_yACyACyAA14LinearGradientVA79_GA8_GGG_Qo_GA54_yAA11ColorSchemeOGGAA24_BackgroundStyleModifierVyA84_GGMd;
    outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v5, v8, &_s7SwiftUI15ModifiedContentVyACyAA14GeometryReaderVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyACyACyACyACyACyAA6ZStackVyAA05TupleG0VyAA6VStackVyAA012_ConditionalD0VyANyACyACyARyARyACyACy15ConversationKit020VideoMessageControlsG0V03TopuG033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAZGARyA_A_GGA_GAA16_FlexFrameLayoutVGAA14_OpacityEffectVG_AA6SpacerVtGANyACyAA6HStackVyANyA11__ACyACyAS18AnimatedSaveButtonVAA12_FrameLayoutVGAZGtGGA5_G_A11_tGGG_ARyA14_yANyA11__ARyACyACyACyAU011LocalBottomuG0AWLLVA8_GAA32_EnvironmentKeyTransformModifierVySbGGA8_GACyACyACyAU012RemoteBottomuG0AWLLVAZGAZGA5_GGtGGAPyA41_GGANyACyACyAPyANyA11__ARyACyACyAU010PlayButtonG0AWLLVA8_GA32_GACyA48_AA16_OverlayModifierVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA54_yAA8MaterialVSgGGA18_GAA25_AlignmentWritingModifierVGGGGA11_tGGAA30_SafeAreaRegionsIgnoringLayoutVGA5_G_ACyACyACyACyAPyANyA11__ACyACyACyACyACyA52_AZGA54_yAA5ColorVSgGGAA19_BackgroundModifierVyARyAA06_ShapeG0VyAA16RoundedRectangleVA84_GA91_yA93_A65_GGGGAA11_ClipEffectVyA93_GGAA31AccessibilityAttachmentModifierVGACyACyACyAS13MovieScrubberAWLLVA101_GAA16_FixedSizeLayoutVGA18_GtGGA79_GA5_GAZGA8_GSgtGSgtGGAZGA79_GA5_GAA01_D13ShapeModifierVyAA9RectangleVGGA89_yACyACyAA14LinearGradientVA79_GA8_GGG_Qo_GA54_yAA11ColorSchemeOGGAA24_BackgroundStyleModifierVyA84_GGMd);
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v8, v11, &_s7SwiftUI15ModifiedContentVyACyAA14GeometryReaderVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyACyACyACyACyACyAA6ZStackVyAA05TupleG0VyAA6VStackVyAA012_ConditionalD0VyANyACyACyARyARyACyACy15ConversationKit020VideoMessageControlsG0V03TopuG033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAZGARyA_A_GGA_GAA16_FlexFrameLayoutVGAA14_OpacityEffectVG_AA6SpacerVtGANyACyAA6HStackVyANyA11__ACyACyAS18AnimatedSaveButtonVAA12_FrameLayoutVGAZGtGGA5_G_A11_tGGG_ARyA14_yANyA11__ARyACyACyACyAU011LocalBottomuG0AWLLVA8_GAA32_EnvironmentKeyTransformModifierVySbGGA8_GACyACyACyAU012RemoteBottomuG0AWLLVAZGAZGA5_GGtGGAPyA41_GGANyACyACyAPyANyA11__ARyACyACyAU010PlayButtonG0AWLLVA8_GA32_GACyA48_AA16_OverlayModifierVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA54_yAA8MaterialVSgGGA18_GAA25_AlignmentWritingModifierVGGGGA11_tGGAA30_SafeAreaRegionsIgnoringLayoutVGA5_G_ACyACyACyACyAPyANyA11__ACyACyACyACyACyA52_AZGA54_yAA5ColorVSgGGAA19_BackgroundModifierVyARyAA06_ShapeG0VyAA16RoundedRectangleVA84_GA91_yA93_A65_GGGGAA11_ClipEffectVyA93_GGAA31AccessibilityAttachmentModifierVGACyACyACyAS13MovieScrubberAWLLVA101_GAA16_FixedSizeLayoutVGA18_GtGGA79_GA5_GAZGA8_GSgtGSgtGGAZGA79_GA5_GAA01_D13ShapeModifierVyAA9RectangleVGGA89_yACyACyAA14LinearGradientVA79_GA8_GGG_Qo_GA54_yAA11ColorSchemeOGGAA24_BackgroundStyleModifierVyA84_GGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GeometryReader<<<opaque return type of View.onTapGesture(count:perform:)>>.0>, _EnvironmentKeyWritingModifier<ColorScheme>>, _BackgroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GeometryReader<<<opaque return type of View.onTapGesture(count:perform:)>>.0>, _EnvironmentKeyWritingModifier<ColorScheme>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v19 = v8;
  }

  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, v18);
}

BOOL VideoMessagePlayerViewModel.shouldShowTintedOverlay.getter()
{
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0xF0))() != 3)
  {
    return 0;
  }

  return VideoMessagePlayerViewModel.hasRecording.getter();
}

id VideoMessagePlayerViewModel.durationViewInsets.getter()
{
  v0 = objc_opt_self();

  return [v0 _defaultTextInsets];
}

void VideoMessagePlayerViewModel.durationStringBackground.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  a19 = v22;
  a20 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA8MaterialVGMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &a9 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAGyAiA8MaterialVG_GMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_34();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &a9 - v32;
  v34 = (*((*MEMORY[0x1E69E7D40] & *v20) + 0xF0))(v31);
  v35 = *(type metadata accessor for RoundedRectangle() + 20);
  v36 = *MEMORY[0x1E697F468];
  type metadata accessor for RoundedCornerStyle();
  OUTLINED_FUNCTION_7_0();
  v38 = *(v37 + 104);
  if (v34 == 2)
  {
    v38(&v33[v35], v36);
    __asm { FMOV            V0.2D, #6.0 }

    *v33 = _Q0;
    *&v33[*(v29 + 52)] = static Color.red.getter();
    *&v33[*(v29 + 56)] = 256;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v33, v21, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_24_47();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v44, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ShapeView<RoundedRectangle, Material> and conformance _ShapeView<A, B>, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA8MaterialVGMd);
    OUTLINED_FUNCTION_37_30();
    v45 = v33;
    v46 = &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd;
  }

  else
  {
    v38(&v27[v35], v36);
    __asm { FMOV            V0.2D, #6.0 }

    *v27 = _Q0;
    static Material.ultraThin.getter();
    *&v27[*(v24 + 56)] = 256;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v27, v21, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA8MaterialVGMd);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_24_47();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v48, v49);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ShapeView<RoundedRectangle, Material> and conformance _ShapeView<A, B>, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA8MaterialVGMd);
    OUTLINED_FUNCTION_37_30();
    v45 = v27;
    v46 = &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA8MaterialVGMd;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v45, v46);
  OUTLINED_FUNCTION_30_0();
}

uint64_t VideoMessageControlsView.TopControlsView.body.getter@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  if (VideoMessageControlsView.TopControlsView.showsNameView.getter(a1, a2 & 1, a3, a4))
  {
    v10 = static VerticalAlignment.firstTextBaseline.getter();
  }

  else
  {
    v10 = static VerticalAlignment.top.getter();
  }

  *a5 = v10;
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA010_FixedSizeG0VGAA010_FlexFrameG0VGAA13_OffsetEffectVG_AA6SpacerVAA012_ConditionalJ0VyAKyAKy15ConversationKit020VideoMessageControlsD0V011TopControlsD033_B419541366E265736F7249488C40E55CLLV015ParticipantNameD0VAA08_PaddingG0VGAA06_TraitoP0VyAA0g13PriorityTraitN0VGGAKyAKyAKyAKyAKyAOA18_GAVGAA011_BackgroundP0VyA8_yAA06_ShapeD0VyAA16RoundedRectangleVATGA31_yA33_AA8MaterialVGGGGAA05_ClipW0VyA33_GGAA023AccessibilityAttachmentP0VGGA6_A8_yAKyAKyAA4MenuVyAA6ZStackVyAKyAA5ImageVAVGGAIyAP_APSgAPtGGA0_GA3_GAKyAKyA9_012AnimatedSaveK0VA0_GA3_GGtGGMd);
  return closure #1 in VideoMessageControlsView.TopControlsView.body.getter(a1, a2 & 1, a3, a4, a5 + *(v11 + 44));
}

uint64_t closure #1 in VideoMessageControlsView.TopControlsView.body.getter@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v116 = a3;
  v119 = a1;
  v114 = a5;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA4MenuVyAA6ZStackVyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGAA9TupleViewVyAA6ButtonVyAA4TextVG_A0_SgA0_tGGAA16_FlexFrameLayoutVGAA13_OffsetEffectVGAGyAGy15ConversationKit012AnimatedSaveQ0VA5_GA8_G_GMd);
  MEMORY[0x1EEE9AC00](v110);
  v112 = (&v92 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4MenuVyAA6ZStackVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGAA9TupleViewVyAA6ButtonVyAA4TextVG_AXSgAXtGGMd);
  v98 = *(v8 - 8);
  v99 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v96 = &v92 - v9;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4MenuVyAA6ZStackVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGAA9TupleViewVyAA6ButtonVyAA4TextVG_AXSgAXtGGAA16_FlexFrameLayoutVGMd);
  MEMORY[0x1EEE9AC00](v94);
  v97 = &v92 - v10;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4MenuVyAA6ZStackVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGAA9TupleViewVyAA6ButtonVyAA4TextVG_AXSgAXtGGAA16_FlexFrameLayoutVGAA13_OffsetEffectVGMd);
  MEMORY[0x1EEE9AC00](v108);
  v95 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v100 = &v92 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4MenuVyAA6ZStackVyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGAA9TupleViewVyAA6ButtonVyAA4TextVG_AZSgAZtGGAA16_FlexFrameLayoutVGAA13_OffsetEffectVGAEyAEy15ConversationKit012AnimatedSaveP0VA3_GA6_GGMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v113 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v111 = &v92 - v17;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA011_BackgroundK0VyAA012_ConditionalD0VyAA10_ShapeViewVyAA16RoundedRectangleVALGAUyAwA8MaterialVGGGGAA11_ClipEffectVyAWGGAA023AccessibilityAttachmentK0VGMd);
  MEMORY[0x1EEE9AC00](v103);
  v93 = &v92 - v18;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGy15ConversationKit24VideoMessageControlsViewV03TopkL033_B419541366E265736F7249488C40E55CLLV015ParticipantNameL0VAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0v8PriorityW3KeyVGGAGyAGyAGyAGyAGyAA4TextVAQGAA015_EnvironmentKeyxY0VyAA5ColorVSgGGAA011_BackgroundY0VyACyAA06_ShapeL0VyAA16RoundedRectangleVA3_GA10_yA12_AA8MaterialVGGGGAA11_ClipEffectVyA12_GGAA023AccessibilityAttachmentY0VG_GMd);
  MEMORY[0x1EEE9AC00](v104);
  v105 = (&v92 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy15ConversationKit24VideoMessageControlsViewV03TopjK033_B419541366E265736F7249488C40E55CLLV015ParticipantNameK0VAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0u8PriorityV3KeyVGGAEyAEyAEyAEyAEyAA4TextVAOGAA012_EnvironmentzwX0VyAA5ColorVSgGGAA011_BackgroundX0VyACyAA06_ShapeK0VyAA16RoundedRectangleVA1_GA8_yA10_AA8MaterialVGGGGAA11_ClipEffectVyA10_GGAA023AccessibilityAttachmentX0VGGMd);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v109 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v118 = &v92 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA16_FixedSizeLayoutVGMd);
  v25 = v24 - 8;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v92 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA16_FixedSizeLayoutVGAA010_FlexFrameN0VGMd);
  v29 = v28 - 8;
  MEMORY[0x1EEE9AC00](v28);
  v101 = &v92 - v30;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA16_FixedSizeLayoutVGAA010_FlexFrameN0VGAA13_OffsetEffectVGMd) - 8;
  MEMORY[0x1EEE9AC00](v102);
  v107 = &v92 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v92 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v117 = &v92 - v36;
  v37 = *((*MEMORY[0x1E69E7D40] & *a4) + 0x1B0);
  v115 = a4;
  v38 = a4;
  v37(&v127);

  outlined destroy of VideoMessagePlayerViewActions(&v127);
  v120 = v119;
  LODWORD(v106) = a2;
  v39 = a2 & 1;
  v121 = a2 & 1;
  v40 = v116;
  v122 = v116;
  v123 = v38;
  Button.init(action:label:)();
  v41 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v43 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd) + 36)];
  *v43 = KeyPath;
  v43[1] = v41;
  *&v27[*(v25 + 44)] = 1;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v44 = v101;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v27, v101, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA16_FixedSizeLayoutVGMd);
  memcpy((v44 + *(v29 + 44)), v125, 0x70uLL);
  v45 = v119;
  v46 = VideoMessageControlsView.TopControlsView.buttonVerticalOffset.getter(v119, v39, v40, v38);
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v44, v34, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA16_FixedSizeLayoutVGAA010_FlexFrameN0VGMd);
  v47 = &v34[*(v102 + 44)];
  *v47 = 0.0;
  v47[1] = v46;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v34, v117, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA16_FixedSizeLayoutVGAA010_FlexFrameN0VGAA13_OffsetEffectVGMd);
  v48 = v45;
  v49 = v38;
  if (VideoMessageControlsView.TopControlsView.showsNameView.getter(v48, v39, v40, v38))
  {
    v50 = (*((*MEMORY[0x1E69E7D40] & *v38) + 0x180))();
    v101 = v51;
    v102 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1BC4BAA20;
    v53 = static Edge.Set.leading.getter();
    *(v52 + 32) = v53;
    v54 = static Edge.Set.trailing.getter();
    *(v52 + 33) = v54;
    v55 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v53)
    {
      v55 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v54)
    {
      v55 = Edge.Set.init(rawValue:)();
    }

    v56 = v105;
    EdgeInsets.init(_all:)();
    LOBYTE(v126[0]) = 0;
    v57 = v101;
    *v56 = v102;
    *(v56 + 8) = v57;
    *(v56 + 16) = v55;
    *(v56 + 24) = v58;
    *(v56 + 32) = v59;
    *(v56 + 40) = v60;
    *(v56 + 48) = v61;
    *(v56 + 56) = 0;
    *(v56 + 64) = 0x3FF0000000000000;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy15ConversationKit24VideoMessageControlsViewV03TopiJ033_B419541366E265736F7249488C40E55CLLV015ParticipantNameJ0VAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0t8PriorityU3KeyVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VideoMessageControlsView.TopControlsView.ParticipantNameView, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<_ConditionalContent<_ShapeView<RoundedRectangle, Color>, _ShapeView<RoundedRectangle, Material>>>>, _ClipEffect<RoundedRectangle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    v62 = _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v63 = v93;
    static VideoMessageControlsView.durationView(for:)(v38, v93);
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v63, v105, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA011_BackgroundK0VyAA012_ConditionalD0VyAA10_ShapeViewVyAA16RoundedRectangleVALGAUyAwA8MaterialVGGGGAA11_ClipEffectVyAWGGAA023AccessibilityAttachmentK0VGMd);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy15ConversationKit24VideoMessageControlsViewV03TopiJ033_B419541366E265736F7249488C40E55CLLV015ParticipantNameJ0VAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0t8PriorityU3KeyVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VideoMessageControlsView.TopControlsView.ParticipantNameView, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<_ConditionalContent<_ShapeView<RoundedRectangle, Color>, _ShapeView<RoundedRectangle, Material>>>>, _ClipEffect<RoundedRectangle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v62 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v63, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA011_BackgroundK0VyAA012_ConditionalD0VyAA10_ShapeViewVyAA16RoundedRectangleVALGAUyAwA8MaterialVGGGGAA11_ClipEffectVyAWGGAA023AccessibilityAttachmentK0VGMd);
  }

  v64 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v49) + 0x270))(v62) & 1) != 0 || ((*((*v64 & *v49) + 0x2A0))())
  {

    v105 = &v92;
    MEMORY[0x1EEE9AC00](v65);
    LODWORD(v115) = v106 & 1;
    MEMORY[0x1EEE9AC00](v66);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd);
    v106 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6ButtonVyAA4TextVG_AHSgAHtGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type ZStack<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type TupleView<(Button<Text>, Button<Text>?, Button<Text>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA4TextVG_AHSgAHtGMd);
    v67 = v96;
    Menu.init(content:label:)();
    static Alignment.trailing.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v68 = v97;
    (*(v98 + 32))(v97, v67, v99);
    memcpy((v68 + *(v94 + 36)), v126, 0x70uLL);
    v69 = VideoMessageControlsView.TopControlsView.buttonVerticalOffset.getter(v119, v115, v116, v106);
    v70 = v95;
    outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v68, v95, &_s7SwiftUI15ModifiedContentVyAA4MenuVyAA6ZStackVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGAA9TupleViewVyAA6ButtonVyAA4TextVG_AXSgAXtGGAA16_FlexFrameLayoutVGMd);
    v71 = (v70 + *(v108 + 36));
    *v71 = 0.0;
    v71[1] = v69;
    v72 = v100;
    outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v70, v100, &_s7SwiftUI15ModifiedContentVyACyAA4MenuVyAA6ZStackVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGAA9TupleViewVyAA6ButtonVyAA4TextVG_AXSgAXtGGAA16_FlexFrameLayoutVGAA13_OffsetEffectVGMd);
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v72, v112, &_s7SwiftUI15ModifiedContentVyACyAA4MenuVyAA6ZStackVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGAA9TupleViewVyAA6ButtonVyAA4TextVG_AXSgAXtGGAA16_FlexFrameLayoutVGAA13_OffsetEffectVGMd);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy15ConversationKit18AnimatedSaveButtonVAA16_FlexFrameLayoutVGAA13_OffsetEffectVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Menu<ZStack<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, TupleView<(Button<Text>, Button<Text>?, Button<Text>)>>, _FlexFrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AnimatedSaveButton, _FlexFrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
    v73 = v111;
    _ConditionalContent<>.init(storage:)();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v72, &_s7SwiftUI15ModifiedContentVyACyAA4MenuVyAA6ZStackVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGAA9TupleViewVyAA6ButtonVyAA4TextVG_AXSgAXtGGAA16_FlexFrameLayoutVGAA13_OffsetEffectVGMd);
  }

  else
  {
    type metadata accessor for VideoMessagePlayerViewModel(0);
    lazy protocol witness table accessor for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel(&lazy protocol witness table cache variable for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel, type metadata accessor for VideoMessagePlayerViewModel);
    v74 = ObservedObject.init(wrappedValue:)();
    v76 = v75;
    v124 = 1;
    State.init(wrappedValue:)();
    v77 = v126[0];
    v78 = v126[1];
    static Alignment.trailing.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v79 = VideoMessageControlsView.TopControlsView.buttonVerticalOffset.getter(v119, v106 & 1, v40, v49);
    v80 = v112;
    *v112 = v74;
    v80[1] = v76;
    *(v80 + 16) = v77;
    v80[3] = v78;
    memcpy(v80 + 4, v126, 0x70uLL);
    v80[18] = 0;
    *(v80 + 19) = v79;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy15ConversationKit18AnimatedSaveButtonVAA16_FlexFrameLayoutVGAA13_OffsetEffectVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Menu<ZStack<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, TupleView<(Button<Text>, Button<Text>?, Button<Text>)>>, _FlexFrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AnimatedSaveButton, _FlexFrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
    v73 = v111;
    _ConditionalContent<>.init(storage:)();
  }

  v81 = v117;
  v82 = v107;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v117, v107, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA16_FixedSizeLayoutVGAA010_FlexFrameN0VGAA13_OffsetEffectVGMd);
  v83 = v118;
  v84 = v109;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v118, v109, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy15ConversationKit24VideoMessageControlsViewV03TopjK033_B419541366E265736F7249488C40E55CLLV015ParticipantNameK0VAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0u8PriorityV3KeyVGGAEyAEyAEyAEyAEyAA4TextVAOGAA012_EnvironmentzwX0VyAA5ColorVSgGGAA011_BackgroundX0VyACyAA06_ShapeK0VyAA16RoundedRectangleVA1_GA8_yA10_AA8MaterialVGGGGAA11_ClipEffectVyA10_GGAA023AccessibilityAttachmentX0VGGMd);
  v85 = v113;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v73, v113, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4MenuVyAA6ZStackVyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGAA9TupleViewVyAA6ButtonVyAA4TextVG_AZSgAZtGGAA16_FlexFrameLayoutVGAA13_OffsetEffectVGAEyAEy15ConversationKit012AnimatedSaveP0VA3_GA6_GGMd);
  v86 = v114;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v82, v114, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA16_FixedSizeLayoutVGAA010_FlexFrameN0VGAA13_OffsetEffectVGMd);
  v87 = v73;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA16_FixedSizeLayoutVGAA010_FlexFrameN0VGAA13_OffsetEffectVG_AA6SpacerVAA012_ConditionalD0VyACyACy15ConversationKit24VideoMessageControlsViewV03TopyZ033_B419541366E265736F7249488C40E55CLLV015ParticipantNameZ0VAA08_PaddingN0VGAA06_TraitiJ0VyAA0n13PriorityTraitH0VGGACyACyACyACyACyAGA10_GANGAA011_BackgroundJ0VyA0_yAA06_ShapeZ0VyAA16RoundedRectangleVALGA23_yA25_AA8MaterialVGGGGAA05_ClipR0VyA25_GGAA023AccessibilityAttachmentJ0VGGAZA0_yACyACyAA4MenuVyAA6ZStackVyACyAA5ImageVANGGAA05TupleZ0VyAH_AHSgAHtGGATGAWGACyACyA1_012AnimatedSaveE0VATGAWGGtMd);
  v89 = v86 + v88[12];
  *v89 = 0;
  *(v89 + 8) = 1;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v84, v86 + v88[16], &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy15ConversationKit24VideoMessageControlsViewV03TopjK033_B419541366E265736F7249488C40E55CLLV015ParticipantNameK0VAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0u8PriorityV3KeyVGGAEyAEyAEyAEyAEyAA4TextVAOGAA012_EnvironmentzwX0VyAA5ColorVSgGGAA011_BackgroundX0VyACyAA06_ShapeK0VyAA16RoundedRectangleVA1_GA8_yA10_AA8MaterialVGGGGAA11_ClipEffectVyA10_GGAA023AccessibilityAttachmentX0VGGMd);
  v90 = v86 + v88[20];
  *v90 = 0;
  *(v90 + 8) = 1;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v85, v86 + v88[24], &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4MenuVyAA6ZStackVyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGAA9TupleViewVyAA6ButtonVyAA4TextVG_AZSgAZtGGAA16_FlexFrameLayoutVGAA13_OffsetEffectVGAEyAEy15ConversationKit012AnimatedSaveP0VA3_GA6_GGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v87, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4MenuVyAA6ZStackVyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGAA9TupleViewVyAA6ButtonVyAA4TextVG_AZSgAZtGGAA16_FlexFrameLayoutVGAA13_OffsetEffectVGAEyAEy15ConversationKit012AnimatedSaveP0VA3_GA6_GGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v83, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy15ConversationKit24VideoMessageControlsViewV03TopjK033_B419541366E265736F7249488C40E55CLLV015ParticipantNameK0VAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0u8PriorityV3KeyVGGAEyAEyAEyAEyAEyAA4TextVAOGAA012_EnvironmentzwX0VyAA5ColorVSgGGAA011_BackgroundX0VyACyAA06_ShapeK0VyAA16RoundedRectangleVA1_GA8_yA10_AA8MaterialVGGGGAA11_ClipEffectVyA10_GGAA023AccessibilityAttachmentX0VGGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v81, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA16_FixedSizeLayoutVGAA010_FlexFrameN0VGAA13_OffsetEffectVGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v85, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA4MenuVyAA6ZStackVyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGAA9TupleViewVyAA6ButtonVyAA4TextVG_AZSgAZtGGAA16_FlexFrameLayoutVGAA13_OffsetEffectVGAEyAEy15ConversationKit012AnimatedSaveP0VA3_GA6_GGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v84, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy15ConversationKit24VideoMessageControlsViewV03TopjK033_B419541366E265736F7249488C40E55CLLV015ParticipantNameK0VAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0u8PriorityV3KeyVGGAEyAEyAEyAEyAEyAA4TextVAOGAA012_EnvironmentzwX0VyAA5ColorVSgGGAA011_BackgroundX0VyACyAA06_ShapeK0VyAA16RoundedRectangleVA1_GA8_yA10_AA8MaterialVGGGGAA11_ClipEffectVyA10_GGAA023AccessibilityAttachmentX0VGGMd);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v82, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA16_FixedSizeLayoutVGAA010_FlexFrameN0VGAA13_OffsetEffectVGMd);
}

double VideoMessageControlsView.TopControlsView.buttonVerticalOffset.getter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = MEMORY[0x1E69E7D40];
  v6 = (*((*MEMORY[0x1E69E7D40] & *a4) + 0x120))(&v9);
  result = 0.0;
  if ((v9 & 1) == 0)
  {
    v8 = (*((*v5 & *a4) + 0xC0))(v6, 0.0);
    result = 5.6;
    if (v8 == 1)
    {
      return 0.0;
    }
  }

  return result;
}

BOOL VideoMessageControlsView.TopControlsView.showsNameView.getter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = MEMORY[0x1E69E7D40];
  v6 = (*((*MEMORY[0x1E69E7D40] & *a4) + 0x120))(&v8);
  return (v8 & 1) != 0 || (*((*v5 & *a4) + 0xC0))(v6) == 1;
}

uint64_t closure #1 in VideoMessageControlsView.TopControlsView.cancelButton()@<X0>(uint64_t a1@<X8>)
{
  VideoMessagePlayerViewModel.cancelButtonTitle.getter();
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t VideoMessagePlayerViewModel.cancelButtonTitle.getter()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x120))(&v7);
  if (v7)
  {
    v1 = [objc_opt_self() conversationKit];
    v2 = 0x80000001BC516230;
    v3 = 0xD000000000000012;
  }

  else
  {
    v1 = [objc_opt_self() conversationKit];
    v3 = 0x6C65636E6143;
    v2 = 0xE600000000000000;
  }

  v4.super.isa = v1;
  v5 = OUTLINED_FUNCTION_17_0(v3, v2, 0x61737265766E6F43, 0xEF74694B6E6F6974, v4);

  return v5;
}

uint64_t closure #1 in VideoMessageControlsView.TopControlsView.civicMenuButton(using:)@<X0>(void *a1@<X0>, uint64_t a2@<X4>, char *a3@<X8>)
{
  v56 = a2;
  v61 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ButtonRoleVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v58 = &v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v54 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  v62 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v54 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v54 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v54 - v19;
  v21 = objc_opt_self();
  v22 = [v21 conversationKit];
  v67._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0xD000000000000015;
  v23._object = 0x80000001BC516500;
  v24.value._countAndFlagsBits = 0x61737265766E6F43;
  v24.value._object = 0xEF74694B6E6F6974;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v67._countAndFlagsBits = 0;
  v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, v22, v25, v67);

  v66 = v26;
  v27 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x1E0);
  v57 = (*MEMORY[0x1E69E7D40] & *a1) + 480;
  v55 = v27;
  (v27)(&v65);

  lazy protocol witness table accessor for type String and conformance String();
  v63 = v20;
  Button<>.init<A>(_:action:)();
  if (VideoMessagePlayerViewModel.showsSaveInMenu.getter())
  {
    v28 = [v21 conversationKit];
    v68._object = 0xE000000000000000;
    v29._object = 0x80000001BC516270;
    v29._countAndFlagsBits = 0xD000000000000012;
    v30.value._countAndFlagsBits = 0x61737265766E6F43;
    v30.value._object = 0xEF74694B6E6F6974;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    v68._countAndFlagsBits = 0;
    v32 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, v30, v28, v31, v68);

    v66 = v32;
    (*((*MEMORY[0x1E69E7D40] & *a1) + 0x1B0))(&v65);

    outlined destroy of VideoMessagePlayerViewActions(&v65);
    Button<>.init<A>(_:action:)();
    v33 = v64;
    (*(v62 + 32))(v64, v17, v10);
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v10);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v64, 1, 1, v10);
  }

  v34 = v17;
  v35 = [v21 conversationKit];
  v69._object = 0xE000000000000000;
  v36._countAndFlagsBits = 0xD00000000000001ALL;
  v36._object = 0x80000001BC516520;
  v37.value._countAndFlagsBits = 0x61737265766E6F43;
  v37.value._object = 0xEF74694B6E6F6974;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  v69._countAndFlagsBits = 0;
  v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v36, v37, v35, v38, v69);

  v66 = v39;
  v40 = v58;
  static ButtonRole.destructive.getter();
  v41 = type metadata accessor for ButtonRole();
  v42 = __swift_storeEnumTagSinglePayload(v40, 0, 1, v41);
  v55(&v65, v42);

  Button<>.init<A>(_:role:action:)();
  v43 = v62;
  v44 = *(v62 + 16);
  v44(v14, v63, v10);
  v45 = v14;
  v54 = v14;
  v46 = v64;
  v47 = v60;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v64, v60, &_s7SwiftUI6ButtonVyAA4TextVGSgMd);
  v48 = v59;
  v44(v59, v34, v10);
  v49 = v34;
  v50 = v61;
  v44(v61, v45, v10);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVG_AFSgAFtMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v47, &v50[*(v51 + 48)], &_s7SwiftUI6ButtonVyAA4TextVGSgMd);
  v44(&v50[*(v51 + 64)], v48, v10);
  v52 = *(v43 + 8);
  v52(v49, v10);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v46, &_s7SwiftUI6ButtonVyAA4TextVGSgMd);
  v52(v63, v10);
  v52(v48, v10);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v47, &_s7SwiftUI6ButtonVyAA4TextVGSgMd);
  return (v52)(v54, v10);
}

uint64_t closure #2 in VideoMessageControlsView.TopControlsView.civicMenuButton(using:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = static Alignment.center.getter();
  v4 = v3;
  v5 = Image.init(systemName:)();
  v6 = static Color.white.getter();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = result;
  a1[4] = v6;
  return result;
}

uint64_t VideoMessageControlsView.TopControlsView.ParticipantNameView.body.getter@<X0>(uint64_t a1@<X8>)
{
  lazy protocol witness table accessor for type String and conformance String();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  static Color.white.getter();
  v7 = Text.foregroundColor(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  outlined consume of Text.Storage(v2, v4, v6 & 1);

  KeyPath = swift_getKeyPath();
  v15 = static Font.headline.getter();
  v16 = swift_getKeyPath();
  result = swift_getKeyPath();
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = v16;
  *(a1 + 56) = v15;
  *(a1 + 64) = result;
  *(a1 + 72) = 2;
  *(a1 + 80) = 0;
  return result;
}

uint64_t VideoMessageControlsView.LocalBottomControlsView.horizontalSizeClass.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for VideoMessageControlsView.LocalBottomControlsView(0);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v1 + *(v10 + 28), v9, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v9, a1, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t VideoMessageControlsView.LocalBottomControlsView.isVertical.getter()
{
  v1 = type metadata accessor for UserInterfaceSizeClass();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v43 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v42 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v40 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v48 = &v40 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v40 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v40 - v22;
  v46 = v0;
  VideoMessageControlsView.horizontalSizeClass.getter();
  v24 = *MEMORY[0x1E697FF40];
  v50 = v2;
  v44 = *(v2 + 104);
  v44(v20, v24, v1);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v1);
  v45 = v4;
  v25 = *(v4 + 48);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v23, v8, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v20, &v8[v25], &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  if (__swift_getEnumTagSinglePayload(v8, 1, v1) == 1)
  {
    v41 = v24;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v23, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    if (__swift_getEnumTagSinglePayload(&v8[v25], 1, v1) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      goto LABEL_8;
    }

LABEL_6:
    v26 = v8;
LABEL_14:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v26, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
    goto LABEL_15;
  }

  outlined init with copy of IDView<AvatarStackView, [UUID]>(v8, v17, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  if (__swift_getEnumTagSinglePayload(&v8[v25], 1, v1) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v23, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    (*(v50 + 8))(v17, v1);
    goto LABEL_6;
  }

  v41 = v24;
  v27 = v50;
  v28 = v43;
  (*(v50 + 32))(v43, &v8[v25], v1);
  lazy protocol witness table accessor for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, MEMORY[0x1E697FF50]);
  v40 = dispatch thunk of static Equatable.== infix(_:_:)();
  v29 = *(v27 + 8);
  v29(v28, v1);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v23, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  v29(v17, v1);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  if ((v40 & 1) == 0)
  {
LABEL_15:
    v34 = 0;
    return v34 & 1;
  }

LABEL_8:
  v30 = v48;
  VideoMessageControlsView.LocalBottomControlsView.horizontalSizeClass.getter(v48);
  v31 = v47;
  v44(v47, v41, v1);
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v1);
  v32 = *(v45 + 48);
  v33 = v49;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v30, v49, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v31, v33 + v32, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  if (__swift_getEnumTagSinglePayload(v33, 1, v1) != 1)
  {
    v35 = v42;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v33, v42, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    if (__swift_getEnumTagSinglePayload(v33 + v32, 1, v1) != 1)
    {
      v37 = v50;
      v38 = v43;
      (*(v50 + 32))(v43, v33 + v32, v1);
      lazy protocol witness table accessor for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, MEMORY[0x1E697FF50]);
      v34 = dispatch thunk of static Equatable.== infix(_:_:)();
      v39 = *(v37 + 8);
      v39(v38, v1);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v31, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v30, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      v39(v35, v1);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v33, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      return v34 & 1;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v31, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v30, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    (*(v50 + 8))(v35, v1);
    goto LABEL_13;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v31, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v30, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  if (__swift_getEnumTagSinglePayload(v33 + v32, 1, v1) != 1)
  {
LABEL_13:
    v26 = v33;
    goto LABEL_14;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v33, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  v34 = 1;
  return v34 & 1;
}

uint64_t VideoMessageControlsView.LocalBottomControlsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA16_FlexFrameLayoutVG_AGyAGyAGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAGyAnAE10fontWeightyQrAA4FontV0Q0VSgFQOyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAUSgGG_Qo_A0_yAA5ColorVSgGGG_AA010BorderlessoM0VQo_AA01_jK0VGAA026_InsettableBackgroundShapeW0VyA6_AA6CircleVGGAA023AccessibilityAttachmentW0VGAGyACyAGyAGyAGyARyAA4TextVGA8_GA15_GAA08_PaddingK0VGGAKGtGGMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v38 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA16_FlexFrameLayoutVG_ACyACyACyAA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyACyAnAE10fontWeightyQrAA4FontV0Q0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAUSgGG_Qo_A0_yAA5ColorVSgGGG_AA010BorderlessoM0VQo_AA01_jK0VGAA026_InsettableBackgroundShapeW0VyA6_AA6CircleVGGAA023AccessibilityAttachmentW0VGACyAEyACyACyACyARyAA4TextVGA8_GA15_GAA08_PaddingK0VGGAKGtGGA32_GMd);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v38 - v7;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA16_FlexFrameLayoutVG_ACyACyACyAA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyACyAnAE10fontWeightyQrAA4FontV0Q0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAUSgGG_Qo_A0_yAA5ColorVSgGGG_AA010BorderlessoM0VQo_AA01_jK0VGAA026_InsettableBackgroundShapeW0VyA6_AA6CircleVGGAA023AccessibilityAttachmentW0VGACyAEyACyACyACyARyAA4TextVGA8_GA15_GAA08_PaddingK0VGGAKGtGGA32_GAKGMd);
  MEMORY[0x1EEE9AC00](v44);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v40 = &v38 - v12;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA6VStackVyAA9TupleViewVyAA08ModifiedD0VyAA6SpacerVAA16_FlexFrameLayoutVG_AKyAKyAKyAA0H0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAA0Q0VyAKyArAE10fontWeightyQrAA4FontV0S0VSgFQOyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_A4_yAA5ColorVSgGGG_AA010BorderlessqO0VQo_AA01_lM0VGAA026_InsettableBackgroundShapeY0VyA10_AA6CircleVGGAA023AccessibilityAttachmentY0VGAKyAGyAKyAKyAKyAVyAA4TextVGA12_GA19_GAA08_PaddingM0VGGAOGtGGAKyAKyAA6HStackVyAIyAP_A29_AKyA43_yA37_GAOGtGGA36_GAOG_GMd);
  MEMORY[0x1EEE9AC00](v41);
  v14 = &v38 - v13;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA16_FlexFrameLayoutVG_AGyAGyAGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAGyAnAE10fontWeightyQrAA4FontV0Q0VSgFQOyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAUSgGG_Qo_A0_yAA5ColorVSgGGG_AA010BorderlessoM0VQo_AA01_jK0VGAA026_InsettableBackgroundShapeW0VyA6_AA6CircleVGGAA023AccessibilityAttachmentW0VGAGyACyAGyAGyAGyARyAA4TextVGA8_GA15_GAA08_PaddingK0VGGAKGtGGMd);
  MEMORY[0x1EEE9AC00](v43);
  v16 = &v38 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA6VStackVyAA9TupleViewVyAA08ModifiedD0VyAA6SpacerVAA16_FlexFrameLayoutVG_AIyAIyAIyAA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0P0VyAIyApAE10fontWeightyQrAA4FontV0R0VSgFQOyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAWSgGG_Qo_A2_yAA5ColorVSgGGG_AA010BorderlesspN0VQo_AA01_kL0VGAA026_InsettableBackgroundShapeX0VyA8_AA6CircleVGGAA023AccessibilityAttachmentX0VGAIyAEyAIyAIyAIyATyAA4TextVGA10_GA17_GAA08_PaddingL0VGGAMGtGGAIyAIyAA6HStackVyAGyAN_A27_AIyA41_yA35_GAMGtGGA34_GAMGGMd);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v42 = &v38 - v19;
  if ((*((*MEMORY[0x1E69E7D40] & **(v1 + 8)) + 0xC0))(v18) == 1)
  {
    v39 = v17;
    if (VideoMessageControlsView.LocalBottomControlsView.isVertical.getter())
    {
      *v16 = static HorizontalAlignment.center.getter();
      *(v16 + 1) = 0;
      v16[16] = 1;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6SpacerVAA010_FlexFrameG0VG_AKyAKyAKyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAA0Q0VyAKyArAE10fontWeightyQrAA4FontV0S0VSgFQOyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_A4_yAA5ColorVSgGGG_AA010BorderlessqO0VQo_AA01_mG0VGAA026_InsettableBackgroundShapeY0VyA10_AA6CircleVGGAA023AccessibilityAttachmentY0VGAKyAA0F0VyAKyAKyAKyAVyAA4TextVGA12_GA19_GAA08_PaddingG0VGGAOGtGGMd);
      closure #1 in VideoMessageControlsView.LocalBottomControlsView.body.getter(v1, &v16[*(v20 + 44)]);
      v21 = &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA16_FlexFrameLayoutVG_AGyAGyAGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAGyAnAE10fontWeightyQrAA4FontV0Q0VSgFQOyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAUSgGG_Qo_A0_yAA5ColorVSgGGG_AA010BorderlessoM0VQo_AA01_jK0VGAA026_InsettableBackgroundShapeW0VyA6_AA6CircleVGGAA023AccessibilityAttachmentW0VGAGyACyAGyAGyAGyARyAA4TextVGA8_GA15_GAA08_PaddingK0VGGAKGtGGMd;
      outlined init with copy of IDView<AvatarStackView, [UUID]>(v16, v14, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA16_FlexFrameLayoutVG_AGyAGyAGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAGyAnAE10fontWeightyQrAA4FontV0Q0VSgFQOyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAUSgGG_Qo_A0_yAA5ColorVSgGGG_AA010BorderlessoM0VQo_AA01_jK0VGAA026_InsettableBackgroundShapeW0VyA6_AA6CircleVGGAA023AccessibilityAttachmentW0VGAGyACyAGyAGyAGyARyAA4TextVGA8_GA15_GAA08_PaddingK0VGGAKGtGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<Spacer, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout>, _InsettableBackgroundShapeModifier<Color, Circle>>, AccessibilityAttachmentModifier>, ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA16_FlexFrameLayoutVG_AGyAGyAGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAGyAnAE10fontWeightyQrAA4FontV0Q0VSgFQOyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAUSgGG_Qo_A0_yAA5ColorVSgGGG_AA010BorderlessoM0VQo_AA01_jK0VGAA026_InsettableBackgroundShapeW0VyA6_AA6CircleVGGAA023AccessibilityAttachmentW0VGAGyACyAGyAGyAGyARyAA4TextVGA8_GA15_GAA08_PaddingK0VGGAKGtGGMd);
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout>, _InsettableBackgroundShapeModifier<Color, Circle>>, AccessibilityAttachmentModifier>, ModifiedContent<HStack<ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>)>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
      v22 = v42;
      _ConditionalContent<>.init(storage:)();
      v23 = v16;
    }

    else
    {
      *v5 = static VerticalAlignment.center.getter();
      *(v5 + 1) = 0;
      v5[16] = 0;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6SpacerVAA010_FlexFrameG0VG_AKyAKyAKyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAA0Q0VyAKyArAE10fontWeightyQrAA4FontV0S0VSgFQOyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_A4_yAA5ColorVSgGGG_AA010BorderlessqO0VQo_AA01_mG0VGAA026_InsettableBackgroundShapeY0VyA10_AA6CircleVGGAA023AccessibilityAttachmentY0VGAKyAA0F0VyAKyAKyAKyAVyAA4TextVGA12_GA19_GAA08_PaddingG0VGGAOGtGGMd);
      closure #2 in VideoMessageControlsView.LocalBottomControlsView.body.getter(v1, &v5[*(v25 + 44)]);
      v26 = static Edge.Set.bottom.getter();
      v27 = Edge.Set.init(rawValue:)();
      Edge.Set.init(rawValue:)();
      if (Edge.Set.init(rawValue:)() != v26)
      {
        v27 = Edge.Set.init(rawValue:)();
      }

      type metadata accessor for VideoMessageControlsView.LocalBottomControlsView(0);
      EdgeInsets.init(_all:)();
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;
      outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v5, v8, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA16_FlexFrameLayoutVG_AGyAGyAGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAGyAnAE10fontWeightyQrAA4FontV0Q0VSgFQOyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAUSgGG_Qo_A0_yAA5ColorVSgGGG_AA010BorderlessoM0VQo_AA01_jK0VGAA026_InsettableBackgroundShapeW0VyA6_AA6CircleVGGAA023AccessibilityAttachmentW0VGAGyACyAGyAGyAGyARyAA4TextVGA8_GA15_GAA08_PaddingK0VGGAKGtGGMd);
      v36 = &v8[*(v6 + 36)];
      *v36 = v27;
      *(v36 + 1) = v29;
      *(v36 + 2) = v31;
      *(v36 + 3) = v33;
      *(v36 + 4) = v35;
      v36[40] = 0;
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v8, v10, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA16_FlexFrameLayoutVG_ACyACyACyAA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyACyAnAE10fontWeightyQrAA4FontV0Q0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAUSgGG_Qo_A0_yAA5ColorVSgGGG_AA010BorderlessoM0VQo_AA01_jK0VGAA026_InsettableBackgroundShapeW0VyA6_AA6CircleVGGAA023AccessibilityAttachmentW0VGACyAEyACyACyACyARyAA4TextVGA8_GA15_GAA08_PaddingK0VGGAKGtGGA32_GMd);
      memcpy(&v10[*(v44 + 36)], __src, 0x70uLL);
      v21 = &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA16_FlexFrameLayoutVG_ACyACyACyAA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyACyAnAE10fontWeightyQrAA4FontV0Q0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAUSgGG_Qo_A0_yAA5ColorVSgGGG_AA010BorderlessoM0VQo_AA01_jK0VGAA026_InsettableBackgroundShapeW0VyA6_AA6CircleVGGAA023AccessibilityAttachmentW0VGACyAEyACyACyACyARyAA4TextVGA8_GA15_GAA08_PaddingK0VGGAKGtGGA32_GAKGMd;
      v37 = v40;
      outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v10, v40, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA16_FlexFrameLayoutVG_ACyACyACyAA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyACyAnAE10fontWeightyQrAA4FontV0Q0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAUSgGG_Qo_A0_yAA5ColorVSgGGG_AA010BorderlessoM0VQo_AA01_jK0VGAA026_InsettableBackgroundShapeW0VyA6_AA6CircleVGGAA023AccessibilityAttachmentW0VGACyAEyACyACyACyARyAA4TextVGA8_GA15_GAA08_PaddingK0VGGAKGtGGA32_GAKGMd);
      outlined init with copy of IDView<AvatarStackView, [UUID]>(v37, v14, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA16_FlexFrameLayoutVG_ACyACyACyAA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyACyAnAE10fontWeightyQrAA4FontV0Q0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAUSgGG_Qo_A0_yAA5ColorVSgGGG_AA010BorderlessoM0VQo_AA01_jK0VGAA026_InsettableBackgroundShapeW0VyA6_AA6CircleVGGAA023AccessibilityAttachmentW0VGACyAEyACyACyACyARyAA4TextVGA8_GA15_GAA08_PaddingK0VGGAKGtGGA32_GAKGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<Spacer, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout>, _InsettableBackgroundShapeModifier<Color, Circle>>, AccessibilityAttachmentModifier>, ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA16_FlexFrameLayoutVG_AGyAGyAGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAGyAnAE10fontWeightyQrAA4FontV0Q0VSgFQOyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAUSgGG_Qo_A0_yAA5ColorVSgGGG_AA010BorderlessoM0VQo_AA01_jK0VGAA026_InsettableBackgroundShapeW0VyA6_AA6CircleVGGAA023AccessibilityAttachmentW0VGAGyACyAGyAGyAGyARyAA4TextVGA8_GA15_GAA08_PaddingK0VGGAKGtGGMd);
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout>, _InsettableBackgroundShapeModifier<Color, Circle>>, AccessibilityAttachmentModifier>, ModifiedContent<HStack<ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>)>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
      v22 = v42;
      _ConditionalContent<>.init(storage:)();
      v23 = v37;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v23, v21);
    outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v22, a1, &_s7SwiftUI19_ConditionalContentVyAA6VStackVyAA9TupleViewVyAA08ModifiedD0VyAA6SpacerVAA16_FlexFrameLayoutVG_AIyAIyAIyAA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0P0VyAIyApAE10fontWeightyQrAA4FontV0R0VSgFQOyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAWSgGG_Qo_A2_yAA5ColorVSgGGG_AA010BorderlesspN0VQo_AA01_kL0VGAA026_InsettableBackgroundShapeX0VyA8_AA6CircleVGGAA023AccessibilityAttachmentX0VGAIyAEyAIyAIyAIyATyAA4TextVGA10_GA17_GAA08_PaddingL0VGGAMGtGGAIyAIyAA6HStackVyAGyAN_A27_AIyA41_yA35_GAMGtGGA34_GAMGGMd);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v39);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v17);
  }
}

uint64_t closure #1 in VideoMessageControlsView.LocalBottomControlsView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMd);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v46[-v5];
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingM0VGMd);
  MEMORY[0x1EEE9AC00](v48);
  v8 = &v46[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA15ModifiedContentVyAEyAEyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingN0VGGMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v46[-v10];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyACyACyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingN0VGGAA05_FlexmN0VGMd);
  MEMORY[0x1EEE9AC00](v49);
  v53 = &v46[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v52 = &v46[-v17];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_ASyAA5ColorVSgGGG_AA010BorderlessiG0VQo_AA12_FrameLayoutVGAA026_InsettableBackgroundShapeQ0VyAyA6CircleVGGAA023AccessibilityAttachmentQ0VGMd);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v51 = &v46[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v46[-v21];
  static Alignment.top.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v57[120] = 1;
  memcpy(&v57[7], v58, 0x70uLL);
  v47 = 1;
  v50 = v22;
  VideoMessageControlsView.LocalBottomControlsView.sendButton()(v22);
  *v11 = static HorizontalAlignment.center.getter();
  *(v11 + 1) = 0;
  v11[16] = 1;
  (*((*MEMORY[0x1E69E7D40] & **(a1 + 8)) + 0x1B0))(v56);

  outlined destroy of VideoMessagePlayerViewActions(v56);
  v55 = a1;
  Button.init(action:label:)();
  v23 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v25 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd) + 36)];
  *v25 = KeyPath;
  v25[1] = v23;
  static Alignment.bottom.getter();
  _FrameLayout.init(width:height:alignment:)();
  v26 = &v6[*(v4 + 44)];
  v27 = v60;
  *v26 = v59;
  v26[1] = v27;
  v26[2] = v61;
  LOBYTE(v4) = static Edge.Set.bottom.getter();
  v28 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v4)
  {
    v28 = Edge.Set.init(rawValue:)();
  }

  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA15ModifiedContentVyAIyAIyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA06_FrameG0VGAA08_PaddingG0VGGMd) + 44);
  type metadata accessor for VideoMessageControlsView.LocalBottomControlsView(0);
  EdgeInsets.init(_all:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v6, v8, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMd);
  v38 = &v8[*(v48 + 36)];
  *v38 = v28;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v8, &v11[v29], &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingM0VGMd);
  static Alignment.bottom.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v11, v15, &_s7SwiftUI6VStackVyAA15ModifiedContentVyAEyAEyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingN0VGGMd);
  memcpy(&v15[*(v49 + 36)], __src, 0x70uLL);
  v39 = v52;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v15, v52, &_s7SwiftUI15ModifiedContentVyAA6VStackVyACyACyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingN0VGGAA05_FlexmN0VGMd);
  v40 = v50;
  v41 = v51;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v50, v51, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_ASyAA5ColorVSgGGG_AA010BorderlessiG0VQo_AA12_FrameLayoutVGAA026_InsettableBackgroundShapeQ0VyAyA6CircleVGGAA023AccessibilityAttachmentQ0VGMd);
  v42 = v53;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v39, v53, &_s7SwiftUI15ModifiedContentVyAA6VStackVyACyACyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingN0VGGAA05_FlexmN0VGMd);
  v43 = v54;
  *v54 = 0;
  *(v43 + 8) = v47;
  memcpy(v43 + 9, v57, 0x77uLL);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA16_FlexFrameLayoutVG_ACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA0M0VyACyAjAE10fontWeightyQrAA4FontV0O0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQSgGG_Qo_AXyAA5ColorVSgGGG_AA010BorderlessmK0VQo_AA01_gH0VGAA026_InsettableBackgroundShapeU0VyA2_AA6CircleVGGAA023AccessibilityAttachmentU0VGACyAA6VStackVyACyACyACyANyAA4TextVGA4_GA11_GAA08_PaddingH0VGGAGGtMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v41, v43 + *(v44 + 48), &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_ASyAA5ColorVSgGGG_AA010BorderlessiG0VQo_AA12_FrameLayoutVGAA026_InsettableBackgroundShapeQ0VyAyA6CircleVGGAA023AccessibilityAttachmentQ0VGMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v42, v43 + *(v44 + 64), &_s7SwiftUI15ModifiedContentVyAA6VStackVyACyACyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingN0VGGAA05_FlexmN0VGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v39, &_s7SwiftUI15ModifiedContentVyAA6VStackVyACyACyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingN0VGGAA05_FlexmN0VGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v40, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_ASyAA5ColorVSgGGG_AA010BorderlessiG0VQo_AA12_FrameLayoutVGAA026_InsettableBackgroundShapeQ0VyAyA6CircleVGGAA023AccessibilityAttachmentQ0VGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v42, &_s7SwiftUI15ModifiedContentVyAA6VStackVyACyACyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingN0VGGAA05_FlexmN0VGMd);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v41, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_ASyAA5ColorVSgGGG_AA010BorderlessiG0VQo_AA12_FrameLayoutVGAA026_InsettableBackgroundShapeQ0VyAyA6CircleVGGAA023AccessibilityAttachmentQ0VGMd);
}

uint64_t VideoMessageControlsView.LocalBottomControlsView.sendButton()@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v33 = type metadata accessor for EnvironmentValues();
  v32 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v31 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for BorderlessButtonStyle();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0H0VSgFQOyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAJSgGG_Qo_AQyAA5ColorVSgGGGMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - v9;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_ASyAA5ColorVSgGGG_AA010BorderlessiG0VQo_AA12_FrameLayoutVGAA026_InsettableBackgroundShapeQ0VyAyA6CircleVGGMd);
  v11 = MEMORY[0x1EEE9AC00](v35);
  v13 = &v30 - v12;
  (*((*MEMORY[0x1E69E7D40] & **(v1 + 8)) + 0x1B0))(v41, v11);

  outlined destroy of VideoMessagePlayerViewActions(v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_AOyAA5ColorVSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  BorderlessButtonStyle.init()();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0H0VSgFQOyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAJSgGG_Qo_AQyAA5ColorVSgGGGMd);
  lazy protocol witness table accessor for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel(&lazy protocol witness table cache variable for type BorderlessButtonStyle and conformance BorderlessButtonStyle, MEMORY[0x1E697C720]);
  View.buttonStyle<A>(_:)();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  v14 = *(v34 + 16);
  if (*(v34 + 24) != 1)
  {

    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v16 = v31;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<UIInterfaceOrientation>.Content(v14, 0);
    v17 = *(v32 + 8);
    v18 = v33;
    v17(v16, v33);

    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<UIInterfaceOrientation>.Content(v14, 0);
    v17(v16, v18);
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v20 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_ASyAA5ColorVSgGGG_AA010BorderlessiG0VQo_AA12_FrameLayoutVGMd) + 36)];
  v21 = v39;
  *v20 = v38;
  *(v20 + 1) = v21;
  *(v20 + 2) = v40;
  v22 = static Color.white.getter();
  v23 = &v13[*(v35 + 36)];
  *v23 = v22;
  *(v23 + 4) = 256;
  v24 = [objc_opt_self() conversationKit];
  v42._object = 0xE000000000000000;
  v25.value._countAndFlagsBits = 0x61737265766E6F43;
  v25.value._object = 0xEF74694B6E6F6974;
  v26._object = 0x80000001BC5164E0;
  v26._countAndFlagsBits = 0xD000000000000012;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v42._countAndFlagsBits = 0;
  v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v25, v24, v27, v42);

  v37 = v28;
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout>, _InsettableBackgroundShapeModifier<Color, Circle>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type String and conformance String();
  View.accessibilityLabel<A>(_:)();

  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_ASyAA5ColorVSgGGG_AA010BorderlessiG0VQo_AA12_FrameLayoutVGAA026_InsettableBackgroundShapeQ0VyAyA6CircleVGGMd);
}

uint64_t VideoMessagePlayerViewModel.retakeButtonTitle.getter()
{
  v0 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_29_4();
  v1.super.isa = v0;
  OUTLINED_FUNCTION_17_0(0xD000000000000014, 0x80000001BC516250, v2, v3, v1);
  OUTLINED_FUNCTION_18_8();

  return OUTLINED_FUNCTION_15_14();
}

uint64_t closure #2 in VideoMessageControlsView.LocalBottomControlsView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA15ModifiedContentVyAEyAEyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingN0VGGMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v42 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyACyACyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingN0VGGAA05_FlexmN0VGMd);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v42 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_ASyAA5ColorVSgGGG_AA010BorderlessiG0VQo_AA12_FrameLayoutVGAA026_InsettableBackgroundShapeQ0VyAyA6CircleVGGAA023AccessibilityAttachmentQ0VGMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v44 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  v42 = &v42 - v17;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v50[120] = 1;
  memcpy(&v50[7], v51, 0x70uLL);
  v43 = 1;
  VideoMessageControlsView.LocalBottomControlsView.sendButton()(v18);
  *v5 = static VerticalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v19 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA15ModifiedContentVyAIyAIyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA06_FrameG0VGAA08_PaddingG0VGGMd) + 44)];
  (*((*MEMORY[0x1E69E7D40] & **(a1 + 8)) + 0x1B0))(v49);

  outlined destroy of VideoMessagePlayerViewActions(v49);
  v48 = a1;
  Button.init(action:label:)();
  v20 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v22 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd) + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  static Alignment.trailing.getter();
  _FrameLayout.init(width:height:alignment:)();
  v23 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMd) + 36)];
  v24 = v53;
  *v23 = v52;
  *(v23 + 1) = v24;
  *(v23 + 2) = v54;
  LOBYTE(v20) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingM0VGMd) + 36)];
  *v33 = v20;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  static Alignment.trailing.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v5, v11, &_s7SwiftUI6HStackVyAA15ModifiedContentVyAEyAEyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingN0VGGMd);
  memcpy(&v11[*(v7 + 44)], __src, 0x70uLL);
  v34 = v45;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v11, v45, &_s7SwiftUI15ModifiedContentVyAA6HStackVyACyACyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingN0VGGAA05_FlexmN0VGMd);
  v35 = v42;
  v36 = v44;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v42, v44, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_ASyAA5ColorVSgGGG_AA010BorderlessiG0VQo_AA12_FrameLayoutVGAA026_InsettableBackgroundShapeQ0VyAyA6CircleVGGAA023AccessibilityAttachmentQ0VGMd);
  v37 = v46;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v34, v46, &_s7SwiftUI15ModifiedContentVyAA6HStackVyACyACyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingN0VGGAA05_FlexmN0VGMd);
  v38 = v47;
  *v47 = 0;
  *(v38 + 8) = v43;
  v39 = v38;
  memcpy(v38 + 9, v50, 0x77uLL);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA16_FlexFrameLayoutVG_ACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA0M0VyACyAjAE10fontWeightyQrAA4FontV0O0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQSgGG_Qo_AXyAA5ColorVSgGGG_AA010BorderlessmK0VQo_AA01_gH0VGAA026_InsettableBackgroundShapeU0VyA2_AA6CircleVGGAA023AccessibilityAttachmentU0VGACyAA6HStackVyACyACyACyANyAA4TextVGA4_GA11_GAA08_PaddingH0VGGAGGtMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v36, v39 + *(v40 + 48), &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_ASyAA5ColorVSgGGG_AA010BorderlessiG0VQo_AA12_FrameLayoutVGAA026_InsettableBackgroundShapeQ0VyAyA6CircleVGGAA023AccessibilityAttachmentQ0VGMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v37, v39 + *(v40 + 64), &_s7SwiftUI15ModifiedContentVyAA6HStackVyACyACyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingN0VGGAA05_FlexmN0VGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v34, &_s7SwiftUI15ModifiedContentVyAA6HStackVyACyACyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingN0VGGAA05_FlexmN0VGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v35, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_ASyAA5ColorVSgGGG_AA010BorderlessiG0VQo_AA12_FrameLayoutVGAA026_InsettableBackgroundShapeQ0VyAyA6CircleVGGAA023AccessibilityAttachmentQ0VGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v37, &_s7SwiftUI15ModifiedContentVyAA6HStackVyACyACyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingN0VGGAA05_FlexmN0VGMd);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v36, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_ASyAA5ColorVSgGGG_AA010BorderlessiG0VQo_AA12_FrameLayoutVGAA026_InsettableBackgroundShapeQ0VyAyA6CircleVGGAA023AccessibilityAttachmentQ0VGMd);
}

uint64_t closure #1 in closure #1 in closure #1 in VideoMessageControlsView.LocalBottomControlsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_29_4();
  v3.super.isa = v2;
  OUTLINED_FUNCTION_17_0(0xD000000000000014, 0x80000001BC516250, v4, v5, v3);

  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t closure #1 in VideoMessageControlsView.LocalBottomControlsView.sendButton()@<X0>(uint64_t a1@<X8>)
{
  Image.init(systemName:)();
  static Font.title.getter();
  swift_getKeyPath();
  static Font.Weight.semibold.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  View.fontWeight(_:)();

  v2 = [objc_opt_self() systemGreenColor];
  v3 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_AOyAA5ColorVSgGGMd);
  v6 = (a1 + *(result + 36));
  *v6 = KeyPath;
  v6[1] = v3;
  return result;
}

double EnvironmentValues.margin.getter(void (*a1)(void))
{
  a1();
  EnvironmentValues.subscript.getter();
  return v2;
}

uint64_t VideoMessageControlsView.RemoteBottomControlsView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA15ModifiedContentVyAIyAA0F0VyAIyAA6HStackVyAA05TupleD0VyAIyAIyAIyAIyAA6ButtonVyAIyAMyAOyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA4TextVtGGAUyAA5ColorVSgGGGAA08_PaddingG0VGAA010_FlexFrameG0VGAA011_BackgroundQ0VyAA06_ShapeD0VyAA7CapsuleVAA012HierarchicalY5StyleVGGGAA011_InsettablexyQ0VyAA8MaterialVA20_GG_AIyA14_A27_yA4_A20_GGtGGAUyAA0T6SchemeOGGGA13_GAA14_OpacityEffectVGGMd);
  return closure #1 in VideoMessageControlsView.RemoteBottomControlsView.body.getter(a1, a2, a3 + *(v6 + 44));
}

uint64_t closure #1 in VideoMessageControlsView.RemoteBottomControlsView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA15ModifiedContentVyAA6HStackVyAA9TupleViewVyAEyAEyAEyAEyAA6ButtonVyAEyAGyAIyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA4TextVtGGAOyAA5ColorVSgGGGAA14_PaddingLayoutVGAA010_FlexFrameS0VGAA011_BackgroundN0VyAA06_ShapeH0VyAA7CapsuleVAA012HierarchicalW5StyleVGGGAA011_InsettablevwN0VyAA8MaterialVA14_GG_AEyA8_A21_yAZA14_GGtGGAOyAA0Q6SchemeOGGGMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &__src[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyACyAA6HStackVyAA9TupleViewVyACyACyACyACyAA6ButtonVyACyAGyAIyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA4TextVtGGAOyAA5ColorVSgGGGAA14_PaddingLayoutVGAA010_FlexFrameS0VGAA011_BackgroundN0VyAA06_ShapeH0VyAA7CapsuleVAA012HierarchicalW5StyleVGGGAA011_InsettablevwN0VyAA8MaterialVA14_GG_ACyA8_A21_yAZA14_GGtGGAOyAA0Q6SchemeOGGGA7_GMd);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &__src[-v11];
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v13 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA15ModifiedContentVyAA6HStackVyAA05TupleD0VyAIyAIyAIyAIyAA6ButtonVyAIyAKyAMyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA4TextVtGGASyAA5ColorVSgGGGAA08_PaddingG0VGAA010_FlexFrameG0VGAA011_BackgroundQ0VyAA06_ShapeD0VyAA7CapsuleVAA012HierarchicalY5StyleVGGGAA011_InsettablexyQ0VyAA8MaterialVA18_GG_AIyA12_A25_yA2_A18_GGtGGASyAA0T6SchemeOGGGMd) + 44)];
  *v13 = static VerticalAlignment.center.getter();
  *(v13 + 1) = 0x402E000000000000;
  v13[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA6ButtonVyAKyAA0F0VyAIyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA4TextVtGGASyAA5ColorVSgGGGAA08_PaddingG0VGAA010_FlexFrameG0VGAA011_BackgroundP0VyAA06_ShapeD0VyAA7CapsuleVAA012HierarchicalX5StyleVGGGAA011_InsettablewxP0VyAA8MaterialVA18_GG_AKyA12_A25_yA2_A18_GGtGGMd);
  closure #1 in closure #1 in closure #1 in VideoMessageControlsView.RemoteBottomControlsView.body.getter(a1, a2, &v13[*(v14 + 44)]);
  KeyPath = swift_getKeyPath();
  v16 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyACyACyAA6ButtonVyACyAEyAGyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA4TextVtGGAMyAA5ColorVSgGGGAA14_PaddingLayoutVGAA010_FlexFrameR0VGAA011_BackgroundM0VyAA06_ShapeG0VyAA7CapsuleVAA012HierarchicalV5StyleVGGGAA011_InsettableuvM0VyAA8MaterialVA12_GG_ACyA6_A19_yAXA12_GGtGGAMyAA0P6SchemeOGGMd) + 36)];
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGMd) + 28);
  v18 = *MEMORY[0x1E697DBB8];
  v19 = type metadata accessor for ColorScheme();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = KeyPath;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v8, v12, &_s7SwiftUI6VStackVyAA15ModifiedContentVyAA6HStackVyAA9TupleViewVyAEyAEyAEyAEyAA6ButtonVyAEyAGyAIyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA4TextVtGGAOyAA5ColorVSgGGGAA14_PaddingLayoutVGAA010_FlexFrameS0VGAA011_BackgroundN0VyAA06_ShapeH0VyAA7CapsuleVAA012HierarchicalW5StyleVGGGAA011_InsettablevwN0VyAA8MaterialVA14_GG_AEyA8_A21_yAZA14_GGtGGAOyAA0Q6SchemeOGGGMd);
  memcpy(&v12[*(v10 + 44)], __src, 0x70uLL);
  v20 = VideoMessagePlayerViewModel.bottomControlsOpacity.getter();
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v12, a3, &_s7SwiftUI15ModifiedContentVyAA6VStackVyACyAA6HStackVyAA9TupleViewVyACyACyACyACyAA6ButtonVyACyAGyAIyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA4TextVtGGAOyAA5ColorVSgGGGAA14_PaddingLayoutVGAA010_FlexFrameS0VGAA011_BackgroundN0VyAA06_ShapeH0VyAA7CapsuleVAA012HierarchicalW5StyleVGGGAA011_InsettablevwN0VyAA8MaterialVA14_GG_ACyA8_A21_yAZA14_GGtGGAOyAA0Q6SchemeOGGGA7_GMd);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyACyAA6HStackVyAA9TupleViewVyACyACyACyACyAA6ButtonVyACyAGyAIyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA4TextVtGGAOyAA5ColorVSgGGGAA14_PaddingLayoutVGAA010_FlexFrameS0VGAA011_BackgroundN0VyAA06_ShapeH0VyAA7CapsuleVAA012HierarchicalW5StyleVGGGAA011_InsettablevwN0VyAA8MaterialVA14_GG_ACyA8_A21_yAZA14_GGtGGAOyAA0Q6SchemeOGGGA7_GAA14_OpacityEffectVGMd);
  *(a3 + *(result + 36)) = v20;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in VideoMessageControlsView.RemoteBottomControlsView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v111 = a3;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA4TextVtGGAMyAA5ColorVSgGGGAA14_PaddingLayoutVGAA010_FlexFrameR0VGAA026_InsettableBackgroundShapeM0VyAxA7CapsuleVGGMd);
  MEMORY[0x1EEE9AC00](v108);
  v112 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v109 = &v92 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v110 = &v92 - v9;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA6HStackVyAA9TupleViewVyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA4TextVtGGAMyAA5ColorVSgGGGMd);
  v117 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v104 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v92 - v12;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA4TextVtGGAMyAA5ColorVSgGGGAA14_PaddingLayoutVGMd);
  MEMORY[0x1EEE9AC00](v113);
  v105 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v92 - v16;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA4TextVtGGAMyAA5ColorVSgGGGAA14_PaddingLayoutVGAA010_FlexFrameR0VGMd);
  MEMORY[0x1EEE9AC00](v114);
  v106 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v92 - v20;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA4TextVtGGAMyAA5ColorVSgGGGAA14_PaddingLayoutVGAA010_FlexFrameR0VGAA011_BackgroundM0VyAA06_ShapeH0VyAA7CapsuleVAA012HierarchicalV5StyleVGGGMd);
  MEMORY[0x1EEE9AC00](v92);
  v23 = &v92 - v22;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA4TextVtGGAMyAA5ColorVSgGGGAA14_PaddingLayoutVGAA010_FlexFrameR0VGAA011_BackgroundM0VyAA06_ShapeH0VyAA7CapsuleVAA012HierarchicalV5StyleVGGGAA011_InsettableuvM0VyAA8MaterialVA12_GGMd);
  MEMORY[0x1EEE9AC00](v96);
  v107 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v101 = &v92 - v26;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v116 = &v92 - v29;
  v30 = *MEMORY[0x1E69E7D40] & *a2;
  v98 = *(v30 + 0x1B0);
  v99 = v30 + 432;
  v98(v123, v28);

  outlined destroy of VideoMessagePlayerViewActions(v123);
  v103 = a1;
  v118 = a1;
  v119 = a2;
  v97 = a2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA4TextVtGGAKyAA5ColorVSgGGMd);
  v32 = lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, Text)>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  v102 = v31;
  v100 = v32;
  Button.init(action:label:)();
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd);
  inited = swift_initStackObject();
  v94 = xmmword_1BC4BAA20;
  *(inited + 16) = xmmword_1BC4BAA20;
  v34 = static Edge.Set.top.getter();
  *(inited + 32) = v34;
  v35 = static Edge.Set.bottom.getter();
  *(inited + 33) = v35;
  v36 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v34)
  {
    v36 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v35)
  {
    v36 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = *(v117 + 32);
  v117 += 32;
  v93 = v45;
  v45(v17, v13, v115);
  v46 = &v17[*(v113 + 36)];
  *v46 = v36;
  *(v46 + 1) = v38;
  *(v46 + 2) = v40;
  *(v46 + 3) = v42;
  *(v46 + 4) = v44;
  v46[40] = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v17, v21, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA4TextVtGGAMyAA5ColorVSgGGGAA14_PaddingLayoutVGMd);
  memcpy(&v21[*(v114 + 36)], v121, 0x70uLL);
  v47 = &v23[*(v92 + 36)];
  v48 = v21;
  v49 = *MEMORY[0x1E697F468];
  v50 = type metadata accessor for RoundedCornerStyle();
  v51 = *(*(v50 - 8) + 104);
  v51(v47, v49, v50);
  v52 = static HierarchicalShapeStyle.tertiary.getter();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA7CapsuleVAA012HierarchicalC5StyleVGMd);
  *&v47[*(v53 + 52)] = v52;
  *&v47[*(v53 + 56)] = 256;
  v54 = static Alignment.center.getter();
  v56 = v55;
  v57 = &v47[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_BackgroundModifierVyAA10_ShapeViewVyAA7CapsuleVAA012HierarchicalE5StyleVGGMd) + 36)];
  *v57 = v54;
  v57[1] = v56;
  v58 = v49;
  v59 = v51;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v48, v23, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA4TextVtGGAMyAA5ColorVSgGGGAA14_PaddingLayoutVGAA010_FlexFrameR0VGMd);
  v60 = v101;
  v61 = &v101[*(v96 + 36)];
  static Material.ultraThin.getter();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA8MaterialVAA7CapsuleVGMd);
  v59(&v61[*(v62 + 52)], v58, v50);
  *&v61[*(v62 + 56)] = 256;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v23, v60, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA4TextVtGGAMyAA5ColorVSgGGGAA14_PaddingLayoutVGAA010_FlexFrameR0VGAA011_BackgroundM0VyAA06_ShapeH0VyAA7CapsuleVAA012HierarchicalV5StyleVGGGMd);
  v63 = outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v60, v116, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA4TextVtGGAMyAA5ColorVSgGGGAA14_PaddingLayoutVGAA010_FlexFrameR0VGAA011_BackgroundM0VyAA06_ShapeH0VyAA7CapsuleVAA012HierarchicalV5StyleVGGGAA011_InsettableuvM0VyAA8MaterialVA12_GGMd);
  (v98)(v120, v63);

  v64 = outlined destroy of VideoMessagePlayerViewActions(v120);
  MEMORY[0x1EEE9AC00](v64);
  v65 = v104;
  Button.init(action:label:)();
  v66 = swift_initStackObject();
  *(v66 + 16) = v94;
  LOBYTE(v62) = static Edge.Set.top.getter();
  *(v66 + 32) = v62;
  v67 = static Edge.Set.bottom.getter();
  *(v66 + 33) = v67;
  v68 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v62)
  {
    v68 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v67)
  {
    v68 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v77 = v105;
  v93(v105, v65, v115);
  v78 = v77 + *(v113 + 36);
  *v78 = v68;
  *(v78 + 8) = v70;
  *(v78 + 16) = v72;
  *(v78 + 24) = v74;
  *(v78 + 32) = v76;
  *(v78 + 40) = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v79 = v106;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v77, v106, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA4TextVtGGAMyAA5ColorVSgGGGAA14_PaddingLayoutVGMd);
  memcpy((v79 + *(v114 + 36)), v122, 0x70uLL);
  v80 = [objc_opt_self() systemGreenColor];
  v81 = Color.init(uiColor:)();
  v82 = v109;
  v83 = &v109[*(v108 + 36)];
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA5ColorVAA7CapsuleVGMd);
  v59(v83 + *(v84 + 52), v58, v50);
  *v83 = v81;
  *(v83 + *(v84 + 56)) = 256;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v79, v82, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA4TextVtGGAMyAA5ColorVSgGGGAA14_PaddingLayoutVGAA010_FlexFrameR0VGMd);
  v85 = v110;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v82, v110, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA4TextVtGGAMyAA5ColorVSgGGGAA14_PaddingLayoutVGAA010_FlexFrameR0VGAA026_InsettableBackgroundShapeM0VyAxA7CapsuleVGGMd);
  v86 = v116;
  v87 = v107;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v116, v107, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA4TextVtGGAMyAA5ColorVSgGGGAA14_PaddingLayoutVGAA010_FlexFrameR0VGAA011_BackgroundM0VyAA06_ShapeH0VyAA7CapsuleVAA012HierarchicalV5StyleVGGGAA011_InsettableuvM0VyAA8MaterialVA12_GGMd);
  v88 = v112;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v85, v112, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA4TextVtGGAMyAA5ColorVSgGGGAA14_PaddingLayoutVGAA010_FlexFrameR0VGAA026_InsettableBackgroundShapeM0VyAxA7CapsuleVGGMd);
  v89 = v111;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v87, v111, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA4TextVtGGAMyAA5ColorVSgGGGAA14_PaddingLayoutVGAA010_FlexFrameR0VGAA011_BackgroundM0VyAA06_ShapeH0VyAA7CapsuleVAA012HierarchicalV5StyleVGGGAA011_InsettableuvM0VyAA8MaterialVA12_GGMd);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA4TextVtGGAMyAA5ColorVSgGGGAA14_PaddingLayoutVGAA010_FlexFrameR0VGAA011_BackgroundM0VyAA06_ShapeH0VyAA7CapsuleVAA012HierarchicalV5StyleVGGGAA011_InsettableuvM0VyAA8MaterialVA12_GG_ACyA6_A19_yAXA12_GGtMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v88, v89 + *(v90 + 48), &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA4TextVtGGAMyAA5ColorVSgGGGAA14_PaddingLayoutVGAA010_FlexFrameR0VGAA026_InsettableBackgroundShapeM0VyAxA7CapsuleVGGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v85, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA4TextVtGGAMyAA5ColorVSgGGGAA14_PaddingLayoutVGAA010_FlexFrameR0VGAA026_InsettableBackgroundShapeM0VyAxA7CapsuleVGGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v86, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA4TextVtGGAMyAA5ColorVSgGGGAA14_PaddingLayoutVGAA010_FlexFrameR0VGAA011_BackgroundM0VyAA06_ShapeH0VyAA7CapsuleVAA012HierarchicalV5StyleVGGGAA011_InsettableuvM0VyAA8MaterialVA12_GGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v88, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA4TextVtGGAMyAA5ColorVSgGGGAA14_PaddingLayoutVGAA010_FlexFrameR0VGAA026_InsettableBackgroundShapeM0VyAxA7CapsuleVGGMd);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v87, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA4TextVtGGAMyAA5ColorVSgGGGAA14_PaddingLayoutVGAA010_FlexFrameR0VGAA011_BackgroundM0VyAA06_ShapeH0VyAA7CapsuleVAA012HierarchicalV5StyleVGGGAA011_InsettableuvM0VyAA8MaterialVA12_GGMd);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in VideoMessageControlsView.RemoteBottomControlsView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v33 = a1;
  v1 = type metadata accessor for Font.Leading();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &KeyPath - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = Image.init(systemName:)();
  v31 = static Font.subheadline.getter();
  KeyPath = swift_getKeyPath();
  v5 = [objc_opt_self() conversationKit];
  v35._object = 0xE000000000000000;
  v6.value._countAndFlagsBits = 0x61737265766E6F43;
  v6.value._object = 0xEF74694B6E6F6974;
  v7._object = 0x80000001BC5164C0;
  v7._countAndFlagsBits = 0xD00000000000001ALL;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v35._countAndFlagsBits = 0;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v6, v5, v8, v35);

  v34 = v9;
  lazy protocol witness table accessor for type String and conformance String();
  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  static Font.subheadline.getter();
  (*(v2 + 104))(v4, *MEMORY[0x1E6980EA8], v1);
  Font.leading(_:)();

  (*(v2 + 8))(v4, v1);
  v15 = Text.font(_:)();
  v17 = v16;
  v19 = v18;

  outlined consume of Text.Storage(v10, v12, v14 & 1);

  static Font.Weight.semibold.getter();
  v20 = Text.fontWeight(_:)();
  v22 = v21;
  LOBYTE(v10) = v23;
  v25 = v24;
  outlined consume of Text.Storage(v15, v17, v19 & 1);

  v26 = v33;
  v28 = KeyPath;
  v27 = v31;
  *v33 = v32;
  v26[1] = v28;
  v26[2] = v27;
  v26[3] = v20;
  v26[4] = v22;
  *(v26 + 40) = v10 & 1;
  v26[6] = v25;

  outlined copy of Text.Storage(v20, v22, v10 & 1);

  outlined consume of Text.Storage(v20, v22, v10 & 1);
}

__n128 closure #1 in closure #1 in closure #1 in closure #1 in VideoMessageControlsView.RemoteBottomControlsView.body.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(_OWORD *__return_ptr, uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v8 = static VerticalAlignment.center.getter();
  v21 = 1;
  a3(v17, a1, a2);
  v9 = v18;
  LOBYTE(a1) = v19;
  v10 = v20;
  v15 = v17[0];
  v16 = v17[1];
  LOBYTE(v17[0]) = v19;
  v11 = v21;
  v12 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  *a4 = v8;
  *(a4 + 8) = 0;
  *(a4 + 16) = v11;
  result = v16;
  *(a4 + 24) = v15;
  *(a4 + 40) = v16;
  *(a4 + 56) = v9;
  *(a4 + 64) = a1;
  *(a4 + 72) = v10;
  *(a4 + 80) = KeyPath;
  *(a4 + 88) = v12;
  return result;
}

uint64_t closure #1 in closure #2 in closure #1 in closure #1 in closure #1 in VideoMessageControlsView.RemoteBottomControlsView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v33 = a1;
  v1 = type metadata accessor for Font.Leading();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &KeyPath - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = Image.init(systemName:)();
  v31 = static Font.subheadline.getter();
  KeyPath = swift_getKeyPath();
  v5 = [objc_opt_self() conversationKit];
  v35._object = 0xE000000000000000;
  v6.value._countAndFlagsBits = 0x61737265766E6F43;
  v6.value._object = 0xEF74694B6E6F6974;
  v7._object = 0x80000001BC5164A0;
  v7._countAndFlagsBits = 0xD000000000000017;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v35._countAndFlagsBits = 0;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v6, v5, v8, v35);

  v34 = v9;
  lazy protocol witness table accessor for type String and conformance String();
  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  static Font.subheadline.getter();
  (*(v2 + 104))(v4, *MEMORY[0x1E6980EA8], v1);
  Font.leading(_:)();

  (*(v2 + 8))(v4, v1);
  v15 = Text.font(_:)();
  v17 = v16;
  v19 = v18;

  outlined consume of Text.Storage(v10, v12, v14 & 1);

  static Font.Weight.semibold.getter();
  v20 = Text.fontWeight(_:)();
  v22 = v21;
  LOBYTE(v10) = v23;
  v25 = v24;
  outlined consume of Text.Storage(v15, v17, v19 & 1);

  v26 = v33;
  v28 = KeyPath;
  v27 = v31;
  *v33 = v32;
  v26[1] = v28;
  v26[2] = v27;
  v26[3] = v20;
  v26[4] = v22;
  *(v26 + 40) = v10 & 1;
  v26[6] = v25;

  outlined copy of Text.Storage(v20, v22, v10 & 1);

  outlined consume of Text.Storage(v20, v22, v10 & 1);
}

double VideoMessagePlayerViewModel.bottomControlsOpacity.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xF0))();
  result = 0.0;
  if (v1 == 3)
  {
    return 1.0;
  }

  return result;
}

uint64_t VideoMessageControlsView.PlayButtonView.body.getter()
{
  v1 = type metadata accessor for BorderlessButtonStyle();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAIyAA4FontVSgGGAA12_FrameLayoutVGAA01_e5ShapeJ0VyAA6CircleVGGAA021_InsettableBackgroundoJ0VyAA8MaterialVAZGGGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  v17 = *v0;
  v18 = *(v0 + 8);
  v16 = *(v0 + 1);
  v15 = v0[4];
  v9 = swift_allocObject();
  v10 = *(v0 + 1);
  *(v9 + 16) = *v0;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(v0 + 2);
  *(v9 + 64) = *(v0 + 48);
  v13 = v0;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(&v17, v14, &_s7SwiftUI11EnvironmentVy12CoreGraphics7CGFloatVGMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(&v16, v14, &_s7SwiftUI14ObservedObjectVy15ConversationKit27VideoMessagePlayerViewModelCGMd);
  outlined init with copy of Transaction(&v15, v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA12_FrameLayoutVGAA01_d5ShapeI0VyAA6CircleVGGAA021_InsettableBackgroundnI0VyAA8MaterialVAXGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _ContentShapeModifier<Circle>>, _InsettableBackgroundShapeModifier<Material, Circle>> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  BorderlessButtonStyle.init()();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _ContentShapeModifier<Circle>>, _InsettableBackgroundShapeModifier<Material, Circle>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAIyAA4FontVSgGGAA12_FrameLayoutVGAA01_e5ShapeJ0VyAA6CircleVGGAA021_InsettableBackgroundoJ0VyAA8MaterialVAZGGGMd);
  lazy protocol witness table accessor for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel(&lazy protocol witness table cache variable for type BorderlessButtonStyle and conformance BorderlessButtonStyle, MEMORY[0x1E697C720]);
  View.buttonStyle<A>(_:)();
  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t closure #1 in VideoMessageControlsView.PlayButtonView.body.getter()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t closure #1 in closure #1 in VideoMessageControlsView.PlayButtonView.body.getter(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0xF0))() == 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = 3;
  }

  (*((*v2 & *v1) + 0xF8))(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  return Binding.wrappedValue.setter();
}

double closure #2 in VideoMessageControlsView.PlayButtonView.body.getter@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  VideoMessagePlayerViewModel.actionButtonImageName.getter();
  v9 = Image.init(systemName:)();
  if ((*((*MEMORY[0x1E69E7D40] & *v8) + 0x270))())
  {
    v10 = static Color.secondary.getter();
  }

  else
  {
    v10 = static Color.white.getter();
  }

  v25 = v10;
  KeyPath = swift_getKeyPath();
  v12 = static Font.title.getter();
  v24 = swift_getKeyPath();
  v13 = *a1;
  v30 = *a1;
  v31 = *(a1 + 8);
  if (v31 == 1)
  {
    v29 = v13;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v30, &_s7SwiftUI11EnvironmentVy12CoreGraphics7CGFloatVGMd);
    v15 = *(v5 + 8);
    v22 = v4;
    v23 = v15;
    v15(v7, v4);

    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v30, &_s7SwiftUI11EnvironmentVy12CoreGraphics7CGFloatVGMd);
    v23(v7, v22);
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v17 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA12_FrameLayoutVGAA01_d5ShapeI0VyAA6CircleVGGAA021_InsettableBackgroundnI0VyAA8MaterialVAXGGMd) + 36);
  static Material.ultraThin.getter();
  *(v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA8MaterialVAA6CircleVGMd) + 56)) = 256;
  v18 = v27;
  *(a2 + 40) = v26;
  *a2 = v9;
  *(a2 + 8) = KeyPath;
  v19 = v24;
  *(a2 + 16) = v25;
  *(a2 + 24) = v19;
  *(a2 + 32) = v12;
  *(a2 + 56) = v18;
  result = *&v28;
  *(a2 + 72) = v28;
  *(a2 + 88) = 0;
  return result;
}

uint64_t VideoMessagePlayerViewModel.actionButtonImageName.getter()
{
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0xF0))() == 1)
  {
    return 0x69662E6573756170;
  }

  else
  {
    return 0x6C69662E79616C70;
  }
}

uint64_t default argument 0 of VideoMessageControlsView.init(verticalSizeClass:horizontalSizeClass:videoMessageViewModel:player:)@<X0>(uint64_t *a1@<X8>)
{
  return default argument 0 of VideoMessageControlsView.init(verticalSizeClass:horizontalSizeClass:videoMessageViewModel:player:)(a1);
}

{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);

  return swift_storeEnumTagMultiPayload();
}

uint64_t VideoMessageControlsView.init(verticalSizeClass:horizontalSizeClass:videoMessageViewModel:player:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  v8 = type metadata accessor for VideoMessageControlsView(0);
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(a1, a4 + v8[5], &_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMd);
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(a2, a4 + v8[6], &_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMd);
  v9 = (a4 + v8[7]);
  type metadata accessor for VideoMessagePlayerViewModel(0);
  OUTLINED_FUNCTION_3_143();
  lazy protocol witness table accessor for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel(v10, v11);
  *v9 = ObservedObject.init(wrappedValue:)();
  v9[1] = v12;
  v13 = a4 + v8[8];
  result = State.init(wrappedValue:)();
  *v13 = v15;
  *(v13 + 8) = v16;
  *(a4 + v8[9]) = a3;
  *(a4 + v8[10]) = 0x3FC51EB851EB851FLL;
  *(a4 + v8[11]) = 0x4077C00000000000;
  return result;
}

void closure #1 in closure #1 in View.conditionalyOverlaid<A>(with:alignment:pinningTo:spacing:condition:)(uint64_t a1, uint64_t a2)
{
  v3 = static VerticalAlignment.top.getter();
  v4 = MEMORY[0x1BFB1EA90](v3, a2);
  v5 = static VerticalAlignment.bottom.getter();
  if (v4)
  {
LABEL_2:
    MEMORY[0x1BFB1E400](v5);
    return;
  }

  if ((MEMORY[0x1BFB1EA90](v5, a2) & 1) == 0)
  {
    v6 = static VerticalAlignment.lastTextBaseline.getter();
    if ((MEMORY[0x1BFB1EA90](v6, a2) & 1) == 0)
    {
      v8 = static VerticalAlignment.center.getter();
      if ((MEMORY[0x1BFB1EA90](v8, a2) & 1) == 0)
      {
        v9 = static VerticalAlignment.firstTextBaseline.getter();
        MEMORY[0x1BFB1EA90](v9, a2);
      }

      v5 = static VerticalAlignment.center.getter();
      goto LABEL_2;
    }
  }

  v7 = static VerticalAlignment.top.getter();
  MEMORY[0x1BFB1E400](v7);
}

uint64_t key path getter for AnimatedSaveButton.videoMessageViewModel : AnimatedSaveButton@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = AnimatedSaveButton.videoMessageViewModel.getter();
  *a2 = v3;
  return result;
}

void AnimatedSaveButton.$videoMessageViewModel.getter()
{
  type metadata accessor for VideoMessagePlayerViewModel(0);
  OUTLINED_FUNCTION_3_143();
  lazy protocol witness table accessor for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel(v0, v1);

  JUMPOUT(0x1BFB1E3A0);
}

uint64_t AnimatedSaveButton.showsTitle.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  return v1;
}

uint64_t key path getter for AnimatedSaveButton.showsTitle : AnimatedSaveButton@<X0>(_BYTE *a1@<X8>)
{
  result = AnimatedSaveButton.showsTitle.getter();
  *a1 = result & 1;
  return result;
}

uint64_t AnimatedSaveButton.showsTitle.setter(char a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  OUTLINED_FUNCTION_45_25(v1, v2, v3, v4, v5, v6, v7, v8, v10, *v11, *&v11[4], v11[6], a1);
  return State.wrappedValue.setter();
}

void (*AnimatedSaveButton.showsTitle.modify(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5))(uint64_t *a1)
{
  v8 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v8;
  v8[4] = a5;
  *(v8 + 50) = a4;
  *v8 = a4;
  v8[1] = a5;

  v8[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  return AnimatedSaveButton.showsTitle.modify;
}

void AnimatedSaveButton.showsTitle.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  *(*a1 + 16) = *(*a1 + 50);
  *(v1 + 24) = v3;
  *(v1 + 49) = v2;
  State.wrappedValue.setter();

  free(v1);
}

uint64_t AnimatedSaveButton.$showsTitle.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.projectedValue.getter();
  return v1;
}

uint64_t AnimatedSaveButton.body.getter@<X0>(void *a1@<X1>, int a2@<W2>, char *a3@<X3>, uint64_t a4@<X8>)
{
  v33 = a3;
  v35 = a4;
  v34 = type metadata accessor for AccessibilityChildBehavior();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyACy15ConversationKit012AnimatedSaveG0VAA14_OpacityEffectVG_ACyACyACyACyAA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAA0Q0VyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAWGAA010_FlexFrameT0VGAA34_InsettableBackgroundShapeModifierVyAA8MaterialVAA16RoundedRectangleVGGG_AA010BorderlessqO0VQo_AA01_xZ0VyAA01_yG0VyA6_AA012HierarchicalyO0VGGGAA022_EnvironmentKeyWritingZ0VyAA11ColorSchemeOGGAA024_EnvironmentKeyTransformZ0VySbGGAA010_FixedSizeT0VGSgtGGALGAA010_AnimationZ0VyAJ0K5StateOGGMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v32 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAA6ZStackVyAA05TupleC0VyAIy15ConversationKit012AnimatedSaveC0VAA14_OpacityEffectVG_AIyAIyAIyAIyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonU0Rd__lFQOyAA0W0VyAIyAIyAIyAIyAA4TextVAA14_PaddingLayoutVGA_GAA010_FlexFrameZ0VGAA34_InsettableBackgroundShapeModifierVyAA8MaterialVAA16RoundedRectangleVGGG_AA010BorderlesswU0VQo_AA19_BackgroundModifierVyAA06_ShapeC0VyA10_AA017HierarchicalShapeU0VGGGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA32_EnvironmentKeyTransformModifierVySbGGAA010_FixedSizeZ0VGSgtGGARGAA18_AnimationModifierVyAP0Q5StateOGG_Qo_Md);
  OUTLINED_FUNCTION_1();
  v18 = v17;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v32 - v20;
  *v15 = static Alignment.center.getter();
  v15[1] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVy15ConversationKit012AnimatedSaveD0VAA14_OpacityEffectVG_AKyAKyAKyAKyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA0T0VyAKyAKyAKyAKyAA4TextVAA08_PaddingG0VGA_GAA010_FlexFrameG0VGAA34_InsettableBackgroundShapeModifierVyAA8MaterialVAA16RoundedRectangleVGGG_AA010BorderlesstR0VQo_AA01_Z8ModifierVyAA06_ShapeD0VyA10_AA017HierarchicalShapeR0VGGGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA32_EnvironmentKeyTransformModifierVySbGGAA010_FixedSizeG0VGSgtGGMd);
  v23 = OUTLINED_FUNCTION_15_14();
  closure #1 in AnimatedSaveButton.body.getter(v23, v24, a2, v33, v25);
  v26 = VideoMessagePlayerViewModel.ancillaryButtonOpacity.getter();
  *(v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACy15ConversationKit012AnimatedSaveG0VAA14_OpacityEffectVG_ACyACyACyACyAA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAA0Q0VyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAWGAA010_FlexFrameT0VGAA34_InsettableBackgroundShapeModifierVyAA8MaterialVAA16RoundedRectangleVGGG_AA010BorderlessqO0VQo_AA01_xZ0VyAA01_yG0VyA6_AA012HierarchicalyO0VGGGAA022_EnvironmentKeyWritingZ0VyAA11ColorSchemeOGGAA024_EnvironmentKeyTransformZ0VySbGGAA010_FixedSizeT0VGSgtGGALGMd) + 36)) = v26;
  v27 = static Animation.linear(duration:)();
  v28 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x240))();
  v29 = v15 + *(v12 + 36);
  *v29 = v27;
  v29[8] = v28;
  static AccessibilityChildBehavior.combine.getter();
  v30 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<AnimatedSaveView, _OpacityEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, HierarchicalShapeStyle>>>, _EnvironmentKeyWritingModifier<ColorScheme>>, _EnvironmentKeyTransformModifier<Bool>>, _FixedSizeLayout>?)>>, _OpacityEffect>, _AnimationModifier<AnimatedSaveView.SaveState>> and conformance <> ModifiedContent<A, B>();
  View.accessibilityElement(children:)();
  (*(v7 + 8))(v11, v34);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v15, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyACy15ConversationKit012AnimatedSaveG0VAA14_OpacityEffectVG_ACyACyACyACyAA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAA0Q0VyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAWGAA010_FlexFrameT0VGAA34_InsettableBackgroundShapeModifierVyAA8MaterialVAA16RoundedRectangleVGGG_AA010BorderlessqO0VQo_AA01_xZ0VyAA01_yG0VyA6_AA012HierarchicalyO0VGGGAA022_EnvironmentKeyWritingZ0VyAA11ColorSchemeOGGAA024_EnvironmentKeyTransformZ0VySbGGAA010_FixedSizeT0VGSgtGGALGAA010_AnimationZ0VyAJ0K5StateOGGMd);
  VideoMessagePlayerViewModel.ancillaryButtonOpacity.getter();
  v36 = v12;
  v37 = v30;
  swift_getOpaqueTypeConformance2();
  View.accessibilityHidden(_:)();
  return (*(v18 + 8))(v21, v16);
}

uint64_t closure #1 in AnimatedSaveButton.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X1>, int a3@<W2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v74 = a4;
  LODWORD(v73) = a3;
  v8 = type metadata accessor for BorderlessButtonStyle();
  v71 = *(v8 - 8);
  v72 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA4TextVAA14_PaddingLayoutVGAIGAA010_FlexFrameH0VGAA34_InsettableBackgroundShapeModifierVyAA8MaterialVAA16RoundedRectangleVGGGMd);
  v70 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v66 - v12;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAMGAA010_FlexFrameL0VGAA34_InsettableBackgroundShapeModifierVyAA8MaterialVAA16RoundedRectangleVGGG_AA010BorderlessiG0VQo_AA01_pR0VyAA01_qE0VyAxA012HierarchicalqG0VGGGAA022_EnvironmentKeyWritingR0VyAA11ColorSchemeOGGAA01_xy9TransformR0VySbGGAA010_FixedSizeL0VGMd);
  MEMORY[0x1EEE9AC00](v81);
  v15 = &v66 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAMGAA010_FlexFrameL0VGAA34_InsettableBackgroundShapeModifierVyAA8MaterialVAA16RoundedRectangleVGGG_AA010BorderlessiG0VQo_AA01_pR0VyAA01_qE0VyAxA012HierarchicalqG0VGGGAA022_EnvironmentKeyWritingR0VyAA11ColorSchemeOGGAA01_xy9TransformR0VySbGGAA010_FixedSizeL0VGSgMd);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v76 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v80 = &v66 - v19;
  v20 = type metadata accessor for VideoMessagePlayerViewModel(0);
  v21 = lazy protocol witness table accessor for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel(&lazy protocol witness table cache variable for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel, type metadata accessor for VideoMessagePlayerViewModel);
  v22 = a1;
  v23 = MEMORY[0x1BFB1E3A0](a1, a2, v20, v21);
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v79 = v83;
  v75 = v84;
  v78 = v85;
  v24 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x240);
  v77 = v24();
  if (v24())
  {
    v25 = 1;
  }

  else
  {
    v67 = v22;
    v68 = v11;
    v66 = v10;
    v69 = v15;
    v26 = v73 & 1;
    LOBYTE(v83) = v73 & 1;
    v27 = v74;
    v84 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
    State.wrappedValue.getter();
    v25 = 1;
    if (v82 == 1)
    {
      v28 = swift_allocObject();
      v73 = &v66;
      *(v28 + 16) = v67;
      *(v28 + 24) = a2;
      *(v28 + 32) = v26;
      *(v28 + 40) = v27;
      MEMORY[0x1EEE9AC00](v28);
      *(&v66 - 4) = v29;
      *(&v66 - 3) = a2;
      *(&v66 - 16) = v26;
      *(&v66 - 1) = v27;

      v74 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA14_PaddingLayoutVGAGGAA010_FlexFrameG0VGAA34_InsettableBackgroundShapeModifierVyAA8MaterialVAA16RoundedRectangleVGGMd);
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Material, RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
      v30 = v13;
      Button.init(action:label:)();
      v31 = v66;
      BorderlessButtonStyle.init()();
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Material, RoundedRectangle>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA4TextVAA14_PaddingLayoutVGAIGAA010_FlexFrameH0VGAA34_InsettableBackgroundShapeModifierVyAA8MaterialVAA16RoundedRectangleVGGGMd);
      lazy protocol witness table accessor for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel(&lazy protocol witness table cache variable for type BorderlessButtonStyle and conformance BorderlessButtonStyle, MEMORY[0x1E697C720]);
      v32 = v68;
      v33 = v69;
      v34 = v72;
      View.buttonStyle<A>(_:)();
      (*(v71 + 8))(v31, v34);
      (*(v70 + 8))(v30, v32);
      v35 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAMGAA010_FlexFrameL0VGAA34_InsettableBackgroundShapeModifierVyAA8MaterialVAA16RoundedRectangleVGGG_AA010BorderlessiG0VQo_AA01_pR0VyAA01_qE0VyAxA012HierarchicalqG0VGGGMd) + 36));
      v36 = *(type metadata accessor for RoundedRectangle() + 20);
      v37 = *MEMORY[0x1E697F468];
      v38 = type metadata accessor for RoundedCornerStyle();
      (*(*(v38 - 8) + 104))(&v35[v36], v37, v38);
      __asm { FMOV            V0.2D, #6.0 }

      *v35 = _Q0;
      LODWORD(v37) = static HierarchicalShapeStyle.tertiary.getter();
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA012HierarchicalC5StyleVGMd);
      *&v35[*(v44 + 52)] = v37;
      *&v35[*(v44 + 56)] = 256;
      v45 = static Alignment.center.getter();
      v47 = v46;
      v48 = &v35[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_BackgroundModifierVyAA10_ShapeViewVyAA16RoundedRectangleVAA012HierarchicalE5StyleVGGMd) + 36)];
      *v48 = v45;
      v48[1] = v47;
      KeyPath = swift_getKeyPath();
      v50 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAMGAA010_FlexFrameL0VGAA34_InsettableBackgroundShapeModifierVyAA8MaterialVAA16RoundedRectangleVGGG_AA010BorderlessiG0VQo_AA01_pR0VyAA01_qE0VyAxA012HierarchicalqG0VGGGAA022_EnvironmentKeyWritingR0VyAA11ColorSchemeOGGMd) + 36));
      v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGMd) + 28);
      v52 = *MEMORY[0x1E697DBA8];
      v53 = type metadata accessor for ColorScheme();
      v54 = (*(*(v53 - 8) + 104))(v50 + v51, v52, v53);
      *v50 = KeyPath;
      v55 = (v24)(v54) != 0;
      v56 = swift_getKeyPath();
      v57 = swift_allocObject();
      *(v57 + 16) = v55;
      v58 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAMGAA010_FlexFrameL0VGAA34_InsettableBackgroundShapeModifierVyAA8MaterialVAA16RoundedRectangleVGGG_AA010BorderlessiG0VQo_AA01_pR0VyAA01_qE0VyAxA012HierarchicalqG0VGGGAA022_EnvironmentKeyWritingR0VyAA11ColorSchemeOGGAA01_xy9TransformR0VySbGGMd) + 36));
      *v58 = v56;
      v58[1] = partial apply for closure #1 in View.disabled(_:);
      v58[2] = v57;
      v59 = v80;
      *(v33 + *(v81 + 36)) = 1;
      outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v33, v59, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAMGAA010_FlexFrameL0VGAA34_InsettableBackgroundShapeModifierVyAA8MaterialVAA16RoundedRectangleVGGG_AA010BorderlessiG0VQo_AA01_pR0VyAA01_qE0VyAxA012HierarchicalqG0VGGGAA022_EnvironmentKeyWritingR0VyAA11ColorSchemeOGGAA01_xy9TransformR0VySbGGAA010_FixedSizeL0VGMd);
      v25 = 0;
    }
  }

  v60 = v80;
  __swift_storeEnumTagSinglePayload(v80, v25, 1, v81);
  if (v77)
  {
    v61 = 1.0;
  }

  else
  {
    v61 = 0.0;
  }

  v62 = v76;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v60, v76, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAMGAA010_FlexFrameL0VGAA34_InsettableBackgroundShapeModifierVyAA8MaterialVAA16RoundedRectangleVGGG_AA010BorderlessiG0VQo_AA01_pR0VyAA01_qE0VyAxA012HierarchicalqG0VGGGAA022_EnvironmentKeyWritingR0VyAA11ColorSchemeOGGAA01_xy9TransformR0VySbGGAA010_FixedSizeL0VGSgMd);
  v63 = v75;
  *a5 = v79;
  *(a5 + 8) = v63;
  *(a5 + 16) = v78;
  *(a5 + 24) = 0x3FD6666666666666;
  *(a5 + 32) = v61;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit16AnimatedSaveViewVAA14_OpacityEffectVG_ACyACyACyACyAA0I0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyACyACyACyACyAA4TextVAA14_PaddingLayoutVGASGAA010_FlexFrameR0VGAA34_InsettableBackgroundShapeModifierVyAA8MaterialVAA16RoundedRectangleVGGG_AA010BorderlessoM0VQo_AA01_vX0VyAA01_wI0VyA2_AA012HierarchicalwM0VGGGAA022_EnvironmentKeyWritingX0VyAA11ColorSchemeOGGAA024_EnvironmentKeyTransformX0VySbGGAA010_FixedSizeR0VGSgtMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v62, a5 + *(v64 + 48), &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAMGAA010_FlexFrameL0VGAA34_InsettableBackgroundShapeModifierVyAA8MaterialVAA16RoundedRectangleVGGG_AA010BorderlessiG0VQo_AA01_pR0VyAA01_qE0VyAxA012HierarchicalqG0VGGGAA022_EnvironmentKeyWritingR0VyAA11ColorSchemeOGGAA01_xy9TransformR0VySbGGAA010_FixedSizeL0VGSgMd);

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v60, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAMGAA010_FlexFrameL0VGAA34_InsettableBackgroundShapeModifierVyAA8MaterialVAA16RoundedRectangleVGGG_AA010BorderlessiG0VQo_AA01_pR0VyAA01_qE0VyAxA012HierarchicalqG0VGGGAA022_EnvironmentKeyWritingR0VyAA11ColorSchemeOGGAA01_xy9TransformR0VySbGGAA010_FixedSizeL0VGSgMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v62, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAMGAA010_FlexFrameL0VGAA34_InsettableBackgroundShapeModifierVyAA8MaterialVAA16RoundedRectangleVGGG_AA010BorderlessiG0VQo_AA01_pR0VyAA01_qE0VyAxA012HierarchicalqG0VGGGAA022_EnvironmentKeyWritingR0VyAA11ColorSchemeOGGAA01_xy9TransformR0VySbGGAA010_FixedSizeL0VGSgMd);
}

uint64_t key path getter for VideoMessagePlayerViewModel.saveState : VideoMessagePlayerViewModel@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x240))();
  *a2 = result;
  return result;
}

uint64_t closure #1 in closure #1 in AnimatedSaveButton.body.getter(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x248))(1);
  (*((*v3 & *a2) + 0x1B0))(v8, v4);
  v5 = v8[6];

  v6 = outlined destroy of VideoMessagePlayerViewActions(v8);
  v5(v6);
}

void *closure #2 in closure #1 in AnimatedSaveButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() conversationKit];
  v50._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x61737265766E6F43;
  v3.value._object = 0xEF74694B6E6F6974;
  v4._object = 0x80000001BC516270;
  v4._countAndFlagsBits = 0xD000000000000012;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v50._countAndFlagsBits = 0;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v50);

  __src[0] = v6;
  lazy protocol witness table accessor for type String and conformance String();
  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  static Color.white.getter();
  v12 = Text.foregroundColor(_:)();
  v46 = v13;
  v47 = v12;
  v15 = v14;
  v17 = v16;

  outlined consume of Text.Storage(v7, v9, v11 & 1);

  LOBYTE(v7) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v15 &= 1u;
  LOBYTE(__src[0]._countAndFlagsBits) = v15;
  LOBYTE(v9) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  memcpy(&v48[7], __src, 0x70uLL);
  v34 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA14_PaddingLayoutVGAGGAA010_FlexFrameG0VGAA34_InsettableBackgroundShapeModifierVyAA8MaterialVAA16RoundedRectangleVGGMd) + 36);
  static Material.ultraThin.getter();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA8MaterialVAA16RoundedRectangleVGMd);
  v36 = (v34 + *(v35 + 52));
  v37 = *(type metadata accessor for RoundedRectangle() + 20);
  v38 = *MEMORY[0x1E697F468];
  v39 = type metadata accessor for RoundedCornerStyle();
  (*(*(v39 - 8) + 104))(&v36[v37], v38, v39);
  __asm { FMOV            V0.2D, #6.0 }

  *v36 = _Q0;
  *(v34 + *(v35 + 56)) = 256;
  *a1 = v47;
  *(a1 + 8) = v46;
  *(a1 + 16) = v15;
  *(a1 + 24) = v17;
  *(a1 + 32) = v7;
  *(a1 + 40) = v19;
  *(a1 + 48) = v21;
  *(a1 + 56) = v23;
  *(a1 + 64) = v25;
  *(a1 + 72) = 0;
  *(a1 + 80) = v9;
  *(a1 + 88) = v27;
  *(a1 + 96) = v29;
  *(a1 + 104) = v31;
  *(a1 + 112) = v33;
  *(a1 + 120) = 0;
  return memcpy((a1 + 121), v48, 0x77uLL);
}

uint64_t VideoMessagePlayerViewModel.ancillaryButtonTitle.getter()
{
  v0 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_29_4();
  v1.super.isa = v0;
  OUTLINED_FUNCTION_17_0(0xD000000000000012, 0x80000001BC516270, v2, v3, v1);
  OUTLINED_FUNCTION_18_8();

  return OUTLINED_FUNCTION_15_14();
}

double VideoMessagePlayerViewModel.ancillaryButtonOpacity.getter()
{
  if (!VideoMessagePlayerViewModel.hasRecording.getter())
  {
    return 0.0;
  }

  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x210))();
  result = 1.0;
  if ((v1 & 1) == 0)
  {
    return 0.0;
  }

  return result;
}

id MovieScrubber.makeCoordinator()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSGMd);
  Binding.projectedValue.getter();
  v1 = *v0;
  objc_allocWithZone(type metadata accessor for MovieScrubber.ScubberCoordinator());
  return MovieScrubber.ScubberCoordinator.init(text:player:)(v3, v4, v5, v6, v1);
}

id MovieScrubber.makeUIView(context:)()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69C48F8]) init];
  [v1 setEstimatedDuration_];
  [v1 setPlayer_];
  return v1;
}

id MovieScrubber.ScubberCoordinator.init(text:player:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = &v5[OBJC_IVAR____TtCV15ConversationKitP33_B419541366E265736F7249488C40E55C13MovieScrubber18ScubberCoordinator_observer];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v7 = &v5[OBJC_IVAR____TtCV15ConversationKitP33_B419541366E265736F7249488C40E55C13MovieScrubber18ScubberCoordinator__text];
  *v7 = a1;
  *(v7 + 1) = a2;
  *(v7 + 2) = a3;
  *(v7 + 3) = a4;
  v26.receiver = v5;
  v26.super_class = type metadata accessor for MovieScrubber.ScubberCoordinator();

  v8 = objc_msgSendSuper2(&v26, sel_init);
  v27 = CMTime.init(seconds:preferredTimescale:)(1.0, 1);
  value = v27.value;
  timescale = v27.timescale;
  epoch = v27.epoch;
  v12 = HIDWORD(*&v27.timescale);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = partial apply for closure #1 in MovieScrubber.ScubberCoordinator.init(text:player:);
  v25 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = thunk for @escaping @callee_guaranteed @Sendable (@unowned CMTime) -> ();
  v23 = &block_descriptor_94;
  v15 = _Block_copy(&aBlock);

  aBlock = value;
  v21 = __PAIR64__(v12, timescale);
  v22 = epoch;
  v16 = [a5 addPeriodicTimeObserverForInterval:&aBlock queue:v13 usingBlock:v15];
  _Block_release(v15);

  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  v17 = OBJC_IVAR____TtCV15ConversationKitP33_B419541366E265736F7249488C40E55C13MovieScrubber18ScubberCoordinator_observer;
  swift_beginAccess();
  outlined assign with take of Any?(&aBlock, v8 + v17);
  swift_endAccess();

  return v8;
}

void closure #1 in MovieScrubber.ScubberCoordinator.init(text:player:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    CMTime.seconds.getter();
    if (v2 <= 0.0)
    {
      goto LABEL_7;
    }

    if (one-time initialization token for timeFormatter != -1)
    {
      swift_once();
    }

    v3 = static NSDateComponentsFormatter.timeFormatter;
    CMTime.seconds.getter();
    v4 = [v3 stringFromTimeInterval_];

    if (v4)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
LABEL_7:
      static String.localizedStringWithFormat(_:_:)();
    }

    MovieScrubber.ScubberCoordinator.text.setter();
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@unowned CMTime) -> ()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = *(a1 + 32);

  v5(v2, v3, v4);
}

id protocol witness for UIViewRepresentable.makeCoordinator() in conformance MovieScrubber@<X0>(void *a1@<X8>)
{
  result = MovieScrubber.makeCoordinator()();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance MovieScrubber(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type MovieScrubber and conformance MovieScrubber();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance MovieScrubber(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type MovieScrubber and conformance MovieScrubber();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance MovieScrubber()
{
  lazy protocol witness table accessor for type MovieScrubber and conformance MovieScrubber();
  UIViewRepresentable.body.getter();
  __break(1u);
}

BOOL VideoMessagePlayerViewModel.hasRecording.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_98_1();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v3, v4, v5);
  v6 = type metadata accessor for URL();
  v7 = __swift_getEnumTagSinglePayload(v0, 1, v6) != 1;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s10Foundation3URLVSgMd);
  return v7;
}

uint64_t key path getter for VideoMessagePlayerViewActions.dismissAction : VideoMessagePlayerViewActions@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  a2[1] = v5;
}

uint64_t key path setter for VideoMessagePlayerViewActions.dismissAction : VideoMessagePlayerViewActions(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *a2 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  a2[1] = v5;
  return result;
}

uint64_t VideoMessagePlayerViewActions.dismissAction.setter()
{
  OUTLINED_FUNCTION_55();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t key path getter for VideoMessagePlayerViewActions.sendAction : VideoMessagePlayerViewActions@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  a2[1] = v5;
}

uint64_t key path setter for VideoMessagePlayerViewActions.sendAction : VideoMessagePlayerViewActions(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 16) = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  *(a2 + 24) = v5;
  return result;
}

uint64_t VideoMessagePlayerViewActions.sendAction.setter()
{
  OUTLINED_FUNCTION_55();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t key path getter for VideoMessagePlayerViewActions.shutterAction : VideoMessagePlayerViewActions@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  a2[1] = v5;
}

uint64_t key path setter for VideoMessagePlayerViewActions.shutterAction : VideoMessagePlayerViewActions(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 32) = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  *(a2 + 40) = v5;
  return result;
}

uint64_t VideoMessagePlayerViewActions.shutterAction.setter()
{
  OUTLINED_FUNCTION_55();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t key path getter for VideoMessagePlayerViewActions.ancillaryAction : VideoMessagePlayerViewActions@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  a2[1] = v5;
}

uint64_t key path setter for VideoMessagePlayerViewActions.ancillaryAction : VideoMessagePlayerViewActions(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 48) = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  *(a2 + 56) = v5;
  return result;
}

uint64_t VideoMessagePlayerViewActions.ancillaryAction.setter()
{
  OUTLINED_FUNCTION_55();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t key path getter for VideoMessagePlayerViewActions.retakeAction : VideoMessagePlayerViewActions@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 64);
  v3 = *(a1 + 72);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  a2[1] = v5;
}

uint64_t key path setter for VideoMessagePlayerViewActions.retakeAction : VideoMessagePlayerViewActions(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 64) = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  *(a2 + 72) = v5;
  return result;
}

uint64_t VideoMessagePlayerViewActions.retakeAction.setter()
{
  OUTLINED_FUNCTION_55();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t key path getter for VideoMessagePlayerViewActions.callAction : VideoMessagePlayerViewActions@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 80);
  v3 = *(a1 + 88);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  a2[1] = v5;
}

uint64_t key path setter for VideoMessagePlayerViewActions.callAction : VideoMessagePlayerViewActions(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 80) = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  *(a2 + 88) = v5;
  return result;
}

uint64_t VideoMessagePlayerViewActions.callAction.setter()
{
  OUTLINED_FUNCTION_55();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t key path getter for VideoMessagePlayerViewActions.messageAction : VideoMessagePlayerViewActions@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 96);
  v3 = *(a1 + 104);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  a2[1] = v5;
}

uint64_t key path setter for VideoMessagePlayerViewActions.messageAction : VideoMessagePlayerViewActions(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 96) = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  *(a2 + 104) = v5;
  return result;
}

uint64_t VideoMessagePlayerViewActions.messageAction.setter()
{
  OUTLINED_FUNCTION_55();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

void VideoMessagePlayerViewActions.init()(void *a1@<X8>)
{
  *a1 = TPNumberPadCharacter.rawValue.getter;
  a1[1] = 0;
  a1[2] = TPNumberPadCharacter.rawValue.getter;
  a1[3] = 0;
  a1[4] = TPNumberPadCharacter.rawValue.getter;
  a1[5] = 0;
  a1[6] = TPNumberPadCharacter.rawValue.getter;
  a1[7] = 0;
  a1[8] = TPNumberPadCharacter.rawValue.getter;
  a1[9] = 0;
  a1[10] = TPNumberPadCharacter.rawValue.getter;
  a1[11] = 0;
  a1[12] = TPNumberPadCharacter.rawValue.getter;
  a1[13] = 0;
}

__n128 VideoMessagePlayerViewActions.init(dismissAction:sendAction:shutterAction:ancillaryAction:retakeAction:callAction:messageAction:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, uint64_t a13)
{
  result = a11;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 104) = a13;
  return result;
}

uint64_t key path getter for UserSafetyActions.blockAction : UserSafetyActions@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  a2[1] = v5;
}

uint64_t key path setter for UserSafetyActions.blockAction : UserSafetyActions(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *a2 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  a2[1] = v5;
  return result;
}

uint64_t UserSafetyActions.blockAction.setter()
{
  OUTLINED_FUNCTION_55();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t key path getter for UserSafetyActions.helpAction : UserSafetyActions@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  a2[1] = v5;
}

uint64_t key path setter for UserSafetyActions.helpAction : UserSafetyActions(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  *(a2 + 24) = v5;
  return result;
}

uint64_t UserSafetyActions.helpAction.setter()
{
  OUTLINED_FUNCTION_55();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

void UserSafetyActions.init()(void *a1@<X8>)
{
  *a1 = TPNumberPadCharacter.rawValue.getter;
  a1[1] = 0;
  a1[2] = TPNumberPadCharacter.rawValue.getter;
  a1[3] = 0;
}

uint64_t UserSafetyActions.init(blockAction:helpAction:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance VideoMessageControlsView.PlayState(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

Swift::Int VideoMessagePlayerViewModel.PlayerSpatiality.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](v1);
  return Hasher._finalize()();
}

uint64_t key path getter for VideoMessagePlayerViewModel.controlsConfiguration : VideoMessagePlayerViewModel@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC0))();
  *a2 = result;
  return result;
}

uint64_t VideoMessagePlayerViewModel.controlsConfiguration.setter(char a1)
{
  return VideoMessagePlayerViewModel.controlsConfiguration.setter(a1);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  OUTLINED_FUNCTION_45_25(v3, v4, v5, v6, v7, v8, v9, v10, v12, *v13, *&v13[4], v13[6], a1);
  return static Published.subscript.setter();
}

uint64_t (*VideoMessagePlayerViewModel.controlsConfiguration.modify())()
{
  v1 = OUTLINED_FUNCTION_39_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_41_15(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(v4);
  return AudioPowerSpectrumViewModel.remotePowerSpectrum.modify;
}

uint64_t key path setter for VideoMessagePlayerViewModel.$controlsConfiguration : VideoMessagePlayerViewModel(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit27VideoMessagePlayerViewModelC21ControlsConfigurationO_GMd);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0xE0))(v7);
}

uint64_t VideoMessagePlayerViewModel.$controlsConfiguration.getter()
{
  return VideoMessagePlayerViewModel.$controlsConfiguration.getter();
}

{
  swift_beginAccess();
  v0 = OUTLINED_FUNCTION_45_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  OUTLINED_FUNCTION_55_2();
  return swift_endAccess();
}

uint64_t VideoMessagePlayerViewModel.$controlsConfiguration.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit27VideoMessagePlayerViewModelC21ControlsConfigurationO_GMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit27VideoMessagePlayerViewModelC21ControlsConfigurationOGMd);
  OUTLINED_FUNCTION_67();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_61();
  return v5(v4);
}

uint64_t VideoMessagePlayerViewModel.$controlsConfiguration.modify()
{
  v1 = OUTLINED_FUNCTION_40_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit27VideoMessagePlayerViewModelC21ControlsConfigurationO_GMd);
  OUTLINED_FUNCTION_46_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_37_24(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_42_0(v8);
  OUTLINED_FUNCTION_19_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit27VideoMessagePlayerViewModelC21ControlsConfigurationOGMd);
  OUTLINED_FUNCTION_55_2();
  swift_endAccess();
  return OUTLINED_FUNCTION_38_0();
}

uint64_t key path getter for VideoMessagePlayerViewModel.playState : VideoMessagePlayerViewModel@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF0))();
  *a2 = result;
  return result;
}

uint64_t (*VideoMessagePlayerViewModel.playState.modify())()
{
  v1 = OUTLINED_FUNCTION_39_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_41_15(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(v4);
  return AudioPowerSpectrumViewModel.remotePowerSpectrum.modify;
}

uint64_t key path setter for VideoMessagePlayerViewModel.$playState : VideoMessagePlayerViewModel(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit24VideoMessageControlsViewV9PlayStateO_GMd);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x110))(v7);
}

uint64_t VideoMessagePlayerViewModel.$playState.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit24VideoMessageControlsViewV9PlayStateO_GMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit24VideoMessageControlsViewV9PlayStateOGMd);
  OUTLINED_FUNCTION_67();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_61();
  return v5(v4);
}

uint64_t VideoMessagePlayerViewModel.$playState.modify()
{
  v1 = OUTLINED_FUNCTION_40_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit24VideoMessageControlsViewV9PlayStateO_GMd);
  OUTLINED_FUNCTION_46_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_37_24(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_42_0(v8);
  OUTLINED_FUNCTION_19_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit24VideoMessageControlsViewV9PlayStateOGMd);
  OUTLINED_FUNCTION_55_2();
  swift_endAccess();
  return OUTLINED_FUNCTION_38_0();
}

void VideoMessagePlayerViewModel.$controlsConfiguration.modify(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v7 = v4[4];
    v8 = v4[5];
    (*(v8 + 16))(*(*a1 + 48), v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 56));
  }

  free(v6);
  free(v5);

  free(v4);
}

void *key path getter for VideoMessagePlayerViewModel.playerSpatiality : VideoMessagePlayerViewModel@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x120))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for VideoMessagePlayerViewModel.playerSpatiality : VideoMessagePlayerViewModel(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x1E69E7D40] & *v2) + 0x128))(&v4);
}

uint64_t VideoMessagePlayerViewModel.playerSpatiality.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_15_14();
  static Published.subscript.getter();
}

uint64_t VideoMessagePlayerViewModel.playerSpatiality.setter(char *a1)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  OUTLINED_FUNCTION_45_25(v3, v4, v5, v6, v7, v8, v9, v10, v12, *v13, *&v13[4], v13[6], v2);
  OUTLINED_FUNCTION_98_1();
  return static Published.subscript.setter();
}

uint64_t (*VideoMessagePlayerViewModel.playerSpatiality.modify())()
{
  v1 = OUTLINED_FUNCTION_39_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_41_15(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(v4);
  return AudioPowerSpectrumViewModel.remotePowerSpectrum.modify;
}

uint64_t key path setter for VideoMessagePlayerViewModel.$playerSpatiality : VideoMessagePlayerViewModel(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit27VideoMessagePlayerViewModelC0H10SpatialityO_GMd);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x140))(v7);
}

uint64_t VideoMessagePlayerViewModel.$playerSpatiality.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit27VideoMessagePlayerViewModelC0H10SpatialityO_GMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit27VideoMessagePlayerViewModelC0G10SpatialityOGMd);
  OUTLINED_FUNCTION_67();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_61();
  return v5(v4);
}

uint64_t VideoMessagePlayerViewModel.$playerSpatiality.modify()
{
  v1 = OUTLINED_FUNCTION_40_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit27VideoMessagePlayerViewModelC0H10SpatialityO_GMd);
  OUTLINED_FUNCTION_46_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_37_24(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_42_0(v8);
  OUTLINED_FUNCTION_19_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit27VideoMessagePlayerViewModelC0G10SpatialityOGMd);
  OUTLINED_FUNCTION_55_2();
  swift_endAccess();
  return OUTLINED_FUNCTION_38_0();
}

uint64_t VideoMessagePlayerViewModel.durationString.getter()
{
  return VideoMessagePlayerViewModel.durationString.getter();
}

{
  swift_getKeyPath();
  OUTLINED_FUNCTION_397();
  swift_getKeyPath();
  OUTLINED_FUNCTION_15_14();
  static Published.subscript.getter();

  return v1;
}

uint64_t VideoMessagePlayerViewModel.durationString.setter(uint64_t a1)
{
  return VideoMessagePlayerViewModel.durationString.setter(a1);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  OUTLINED_FUNCTION_46_23(v3, v4, v5, v6, v7, v8, v9, v10, a1);
  return static Published.subscript.setter();
}

uint64_t (*VideoMessagePlayerViewModel.durationString.modify())()
{
  v1 = OUTLINED_FUNCTION_39_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_41_15(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(v4);
  return AudioPowerSpectrumViewModel.remotePowerSpectrum.modify;
}

uint64_t key path setter for VideoMessagePlayerViewModel.$durationString : VideoMessagePlayerViewModel(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x170))(v7);
}

uint64_t VideoMessagePlayerViewModel.$durationString.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd);
  OUTLINED_FUNCTION_67();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_61();
  return v5(v4);
}

uint64_t VideoMessagePlayerViewModel.$durationString.modify()
{
  v1 = OUTLINED_FUNCTION_40_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd);
  OUTLINED_FUNCTION_46_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_37_24(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_42_0(v8);
  OUTLINED_FUNCTION_19_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd);
  OUTLINED_FUNCTION_55_2();
  swift_endAccess();
  return OUTLINED_FUNCTION_38_0();
}

uint64_t key path getter for VideoMessagePlayerViewModel.title : VideoMessagePlayerViewModel@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x180))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for VideoMessagePlayerViewModel.title : VideoMessagePlayerViewModel(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x188);

  return v4(v2, v3);
}

uint64_t (*VideoMessagePlayerViewModel.title.modify())()
{
  v1 = OUTLINED_FUNCTION_39_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_41_15(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(v4);
  return AudioPowerSpectrumViewModel.remotePowerSpectrum.modify;
}

uint64_t key path setter for VideoMessagePlayerViewModel.$title : VideoMessagePlayerViewModel(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x1A0))(v7);
}

uint64_t VideoMessagePlayerViewModel.$title.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd);
  OUTLINED_FUNCTION_67();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_61();
  return v5(v4);
}

uint64_t VideoMessagePlayerViewModel.$title.modify()
{
  v1 = OUTLINED_FUNCTION_40_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd);
  OUTLINED_FUNCTION_46_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_37_24(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_42_0(v8);
  OUTLINED_FUNCTION_19_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd);
  OUTLINED_FUNCTION_55_2();
  swift_endAccess();
  return OUTLINED_FUNCTION_38_0();
}

uint64_t key path setter for VideoMessagePlayerViewModel.actions : VideoMessagePlayerViewModel(void *__src, void **a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v4 = *a2;
  memcpy(v8, __src, sizeof(v8));
  v5 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x1B8);
  outlined init with copy of VideoMessagePlayerViewActions(__dst, &v7);
  return v5(v8);
}

uint64_t VideoMessagePlayerViewModel.actions.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_15_14();
  static Published.subscript.getter();
}

uint64_t VideoMessagePlayerViewModel.actions.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_46_23(a1, a2, a3, a4, a5, a6, a7, a8, v20);
  memcpy(v9, v10, 0x70uLL);
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v8;
  OUTLINED_FUNCTION_46_23(v11, v12, v13, v14, v15, v16, v17, v18, v21);
  OUTLINED_FUNCTION_98_1();
  return static Published.subscript.setter();
}

uint64_t (*VideoMessagePlayerViewModel.actions.modify())()
{
  v1 = OUTLINED_FUNCTION_39_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_41_15(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(v4);
  return AudioPowerSpectrumViewModel.remotePowerSpectrum.modify;
}

uint64_t key path setter for VideoMessagePlayerViewModel.$actions : VideoMessagePlayerViewModel(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit29VideoMessagePlayerViewActionsV_GMd);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x1D0))(v7);
}

uint64_t VideoMessagePlayerViewModel.$actions.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit29VideoMessagePlayerViewActionsV_GMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit29VideoMessagePlayerViewActionsVGMd);
  OUTLINED_FUNCTION_67();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_61();
  return v5(v4);
}

uint64_t VideoMessagePlayerViewModel.$actions.modify()
{
  v1 = OUTLINED_FUNCTION_40_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit29VideoMessagePlayerViewActionsV_GMd);
  OUTLINED_FUNCTION_46_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_37_24(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_42_0(v8);
  OUTLINED_FUNCTION_19_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit29VideoMessagePlayerViewActionsVGMd);
  OUTLINED_FUNCTION_55_2();
  swift_endAccess();
  return OUTLINED_FUNCTION_38_0();
}

double key path getter for VideoMessagePlayerViewModel.safetyActions : VideoMessagePlayerViewModel@<D0>(void **a1@<X0>, _OWORD *a2@<X8>)
{
  (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1E0))(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t key path setter for VideoMessagePlayerViewModel.safetyActions : VideoMessagePlayerViewModel(uint64_t *a1, void **a2)
{
  v2 = a1[3];
  v3 = *a2;
  v6 = *a1;
  v7 = *(a1 + 1);
  v8 = v2;
  v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x1E8);

  return v4(&v6);
}

uint64_t VideoMessagePlayerViewModel.safetyActions.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_15_14();
  static Published.subscript.getter();
}

uint64_t VideoMessagePlayerViewModel.safetyActions.setter(__int128 *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = *a1;
  v3 = v1;
  OUTLINED_FUNCTION_46_23(v3, v4, v5, v6, v7, v8, v9, v10, v12);
  return static Published.subscript.setter();
}

uint64_t (*VideoMessagePlayerViewModel.safetyActions.modify())()
{
  v1 = OUTLINED_FUNCTION_39_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_41_15(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(v4);
  return AudioPowerSpectrumViewModel.remotePowerSpectrum.modify;
}

uint64_t key path setter for VideoMessagePlayerViewModel.$safetyActions : VideoMessagePlayerViewModel(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit17UserSafetyActionsV_GMd);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x200))(v7);
}

uint64_t VideoMessagePlayerViewModel.$safetyActions.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit17UserSafetyActionsV_GMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit17UserSafetyActionsVGMd);
  OUTLINED_FUNCTION_67();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_61();
  return v5(v4);
}

uint64_t VideoMessagePlayerViewModel.$safetyActions.modify()
{
  v1 = OUTLINED_FUNCTION_40_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit17UserSafetyActionsV_GMd);
  OUTLINED_FUNCTION_46_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_37_24(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_42_0(v8);
  OUTLINED_FUNCTION_19_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit17UserSafetyActionsVGMd);
  OUTLINED_FUNCTION_55_2();
  swift_endAccess();
  return OUTLINED_FUNCTION_38_0();
}

uint64_t key path getter for VideoMessagePlayerViewModel.showsAncillaryControl : VideoMessagePlayerViewModel@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x210))();
  *a2 = result & 1;
  return result;
}

uint64_t (*VideoMessagePlayerViewModel.showsAncillaryControl.modify())()
{
  v1 = OUTLINED_FUNCTION_39_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_41_15(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(v4);
  return AudioPowerSpectrumViewModel.remotePowerSpectrum.modify;
}

uint64_t key path setter for VideoMessagePlayerViewModel.$showsAncillaryControl : VideoMessagePlayerViewModel(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x230))(v7);
}

uint64_t VideoMessagePlayerViewModel.$showsAncillaryControl.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  OUTLINED_FUNCTION_67();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_61();
  return v5(v4);
}

uint64_t VideoMessagePlayerViewModel.$showsAncillaryControl.modify()
{
  v1 = OUTLINED_FUNCTION_40_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  OUTLINED_FUNCTION_46_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_37_24(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_42_0(v8);
  OUTLINED_FUNCTION_19_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  OUTLINED_FUNCTION_55_2();
  swift_endAccess();
  return OUTLINED_FUNCTION_38_0();
}

uint64_t (*VideoMessagePlayerViewModel.saveState.modify())()
{
  v1 = OUTLINED_FUNCTION_39_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_41_15(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(v4);
  return AudioPowerSpectrumViewModel.remotePowerSpectrum.modify;
}

uint64_t key path setter for VideoMessagePlayerViewModel.$saveState : VideoMessagePlayerViewModel(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit16AnimatedSaveViewV0G5StateO_GMd);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x260))(v7);
}

uint64_t VideoMessagePlayerViewModel.$saveState.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit16AnimatedSaveViewV0G5StateO_GMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit16AnimatedSaveViewV0F5StateOGMd);
  OUTLINED_FUNCTION_67();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_61();
  return v5(v4);
}

uint64_t VideoMessagePlayerViewModel.$saveState.modify()
{
  v1 = OUTLINED_FUNCTION_40_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit16AnimatedSaveViewV0G5StateO_GMd);
  OUTLINED_FUNCTION_46_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_37_24(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_42_0(v8);
  OUTLINED_FUNCTION_19_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit16AnimatedSaveViewV0F5StateOGMd);
  OUTLINED_FUNCTION_55_2();
  swift_endAccess();
  return OUTLINED_FUNCTION_38_0();
}

uint64_t key path getter for VideoMessagePlayerViewModel.isSensitive : VideoMessagePlayerViewModel@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x270))();
  *a2 = result & 1;
  return result;
}

uint64_t (*VideoMessagePlayerViewModel.isSensitive.modify())()
{
  v1 = OUTLINED_FUNCTION_39_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_41_15(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(v4);
  return LinkDetailHeaderView.invitedMemberHandles.modify;
}

uint64_t key path setter for VideoMessagePlayerViewModel.$isSensitive : VideoMessagePlayerViewModel(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x290))(v7);
}

uint64_t VideoMessagePlayerViewModel.$isSensitive.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  OUTLINED_FUNCTION_67();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_61();
  return v5(v4);
}

uint64_t VideoMessagePlayerViewModel.$isSensitive.modify()
{
  v1 = OUTLINED_FUNCTION_40_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  OUTLINED_FUNCTION_46_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_37_24(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_42_0(v8);
  OUTLINED_FUNCTION_19_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  OUTLINED_FUNCTION_55_2();
  swift_endAccess();
  return OUTLINED_FUNCTION_38_0();
}

uint64_t key path getter for VideoMessagePlayerViewModel.showsSensitivityOptions : VideoMessagePlayerViewModel@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2A0))();
  *a2 = result & 1;
  return result;
}

uint64_t (*VideoMessagePlayerViewModel.showsSensitivityOptions.modify())()
{
  v1 = OUTLINED_FUNCTION_39_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_47(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_41_15(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(v4);
  return AudioPowerSpectrumViewModel.remotePowerSpectrum.modify;
}

uint64_t key path setter for VideoMessagePlayerViewModel.$showsSensitivityOptions : VideoMessagePlayerViewModel(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x2C0))(v7);
}

uint64_t VideoMessagePlayerViewModel.$showsSensitivityOptions.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  OUTLINED_FUNCTION_67();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_61();
  return v5(v4);
}

uint64_t VideoMessagePlayerViewModel.$showsSensitivityOptions.modify()
{
  v1 = OUTLINED_FUNCTION_40_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  OUTLINED_FUNCTION_46_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_37_24(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_42_0(v8);
  OUTLINED_FUNCTION_19_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  OUTLINED_FUNCTION_55_2();
  swift_endAccess();
  return OUTLINED_FUNCTION_38_0();
}

void VideoMessagePlayerViewModel.init(videoMessageURL:playerSpaciality:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v76 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit24VideoMessageControlsViewV9PlayStateO_GMd);
  OUTLINED_FUNCTION_1();
  v78 = v5;
  v79 = v6;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_1();
  v77 = v8;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit16AnimatedSaveViewV0F5StateOGMd);
  OUTLINED_FUNCTION_1();
  v74 = v9;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v11);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  OUTLINED_FUNCTION_1();
  v71 = v12;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v14);
  v68[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit17UserSafetyActionsVGMd);
  OUTLINED_FUNCTION_1();
  v68[5] = v15;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v17);
  v68[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit29VideoMessagePlayerViewActionsVGMd);
  OUTLINED_FUNCTION_1();
  v68[2] = v18;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v20);
  v68[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd);
  OUTLINED_FUNCTION_1();
  v22 = v21;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v68 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit24VideoMessageControlsViewV9PlayStateOGMd);
  OUTLINED_FUNCTION_1();
  v28 = v27;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v29);
  v31 = v68 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit27VideoMessagePlayerViewModelC21ControlsConfigurationOGMd);
  OUTLINED_FUNCTION_1();
  v34 = v33;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v35);
  v37 = v68 - v36;
  v69 = *v3;
  v38 = OBJC_IVAR____TtC15ConversationKit27VideoMessagePlayerViewModel__controlsConfiguration;
  LOBYTE(v82) = 1;
  Published.init(initialValue:)();
  (*(v34 + 32))(&v1[v38], v37, v32);
  v39 = OBJC_IVAR____TtC15ConversationKit27VideoMessagePlayerViewModel__playState;
  LOBYTE(v82) = 3;
  Published.init(initialValue:)();
  (*(v28 + 32))(&v1[v39], v31, v26);
  v40 = OBJC_IVAR____TtC15ConversationKit27VideoMessagePlayerViewModel__durationString;
  v82 = 206967550000;
  v83 = 0xE500000000000000;
  Published.init(initialValue:)();
  v41 = *(v22 + 32);
  v42 = v68[0];
  v41(&v1[v40], v25, v68[0]);
  v43 = OBJC_IVAR____TtC15ConversationKit27VideoMessagePlayerViewModel__title;
  v82 = 0;
  v83 = 0xE000000000000000;
  Published.init(initialValue:)();
  v41(&v1[v43], v25, v42);
  v82 = TPNumberPadCharacter.rawValue.getter;
  v83 = 0;
  v84 = TPNumberPadCharacter.rawValue.getter;
  v85 = 0;
  v86 = TPNumberPadCharacter.rawValue.getter;
  v87 = 0;
  v88 = TPNumberPadCharacter.rawValue.getter;
  v89 = 0;
  v90 = TPNumberPadCharacter.rawValue.getter;
  v91 = 0;
  v92 = TPNumberPadCharacter.rawValue.getter;
  v93 = 0;
  v94 = TPNumberPadCharacter.rawValue.getter;
  v95 = 0;
  Published.init(initialValue:)();
  v44 = OUTLINED_FUNCTION_43_23();
  v45(v44);
  v82 = TPNumberPadCharacter.rawValue.getter;
  v83 = 0;
  v84 = TPNumberPadCharacter.rawValue.getter;
  v85 = 0;
  Published.init(initialValue:)();
  v46 = OUTLINED_FUNCTION_43_23();
  v47(v46);
  v48 = OBJC_IVAR____TtC15ConversationKit27VideoMessagePlayerViewModel__showsAncillaryControl;
  LOBYTE(v82) = 1;
  v49 = v70;
  Published.init(initialValue:)();
  v50 = *(v71 + 32);
  v51 = v72;
  v50(&v1[v48], v49, v72);
  v52 = OBJC_IVAR____TtC15ConversationKit27VideoMessagePlayerViewModel__saveState;
  LOBYTE(v82) = 0;
  v53 = v73;
  Published.init(initialValue:)();
  (*(v74 + 32))(&v1[v52], v53, v75);
  v54 = OBJC_IVAR____TtC15ConversationKit27VideoMessagePlayerViewModel__isSensitive;
  OUTLINED_FUNCTION_50_20();
  v50(&v1[v54], v49, v51);
  v55 = OBJC_IVAR____TtC15ConversationKit27VideoMessagePlayerViewModel__showsSensitivityOptions;
  OUTLINED_FUNCTION_50_20();
  v50(&v1[v55], v49, v51);
  v56 = OBJC_IVAR____TtC15ConversationKit27VideoMessagePlayerViewModel_shutterModel;
  type metadata accessor for ShutterModel();
  swift_allocObject();
  *&v1[v56] = ShutterModel.init(_:)(180.0);
  *&v1[OBJC_IVAR____TtC15ConversationKit27VideoMessagePlayerViewModel_stateSink] = 0;
  v57 = v76;
  OUTLINED_FUNCTION_98_1();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v58, v59, v60);
  swift_beginAccess();
  v81 = v69;
  Published.init(initialValue:)();
  swift_endAccess();
  v61 = type metadata accessor for VideoMessagePlayerViewModel(0);
  v80.receiver = v1;
  v80.super_class = v61;
  v62 = objc_msgSendSuper2(&v80, sel_init);
  v63 = *((*MEMORY[0x1E69E7D40] & *v62) + 0x108);
  v64 = v62;
  v65 = v77;
  v63();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<VideoMessageControlsView.PlayState>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy15ConversationKit24VideoMessageControlsViewV9PlayStateO_GMd);
  v66 = v78;
  v67 = Publisher<>.sink(receiveValue:)();

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v57, &_s10Foundation3URLVSgMd);
  (*(v79 + 8))(v65, v66);
  *(v64 + OBJC_IVAR____TtC15ConversationKit27VideoMessagePlayerViewModel_stateSink) = v67;

  OUTLINED_FUNCTION_30_0();
}

uint64_t outlined init with copy of VideoMessageControlsView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoMessageControlsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in VideoMessageControlsView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for VideoMessageControlsView(0);
  OUTLINED_FUNCTION_22(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return closure #1 in VideoMessageControlsView.body.getter(a1, v7, a2);
}

void closure #1 in VideoMessagePlayerViewModel.init(videoMessageURL:playerSpaciality:)(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = MEMORY[0x1E69E7D40];
    v5 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xF0))();
    if (!v5 || v5 == 2)
    {
      if (v1 == 3)
      {
        v8 = *(**(v3 + OBJC_IVAR____TtC15ConversationKit27VideoMessagePlayerViewModel_shutterModel) + 632);

        v8(v9);

        return;
      }
    }

    else if (v5 == 3 && (v1 | 2) == 2)
    {
      (*((*v4 & *v3) + 0x278))(0);
      v6 = *(**(v3 + OBJC_IVAR____TtC15ConversationKit27VideoMessagePlayerViewModel_shutterModel) + 616);

      v6(v7);
    }
  }
}

uint64_t VideoMessagePlayerViewModel.axDurationString.getter()
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x150);
  v2 = v6();
  MEMORY[0x1BFB209B0](v2);
  OUTLINED_FUNCTION_397();

  AXDurationForDurationString();

  v3 = AXDurationStringForDuration();
  if (v3)
  {
    v4 = v3;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_18_8();

    return OUTLINED_FUNCTION_15_14();
  }

  else
  {

    return v6();
  }
}

uint64_t VideoMessagePlayerViewModel.videoSize.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_2();
  v4 = type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v54 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v54 - v14;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v0 + OBJC_IVAR____TtC15ConversationKit27VideoMessagePlayerViewModel_videoMessageURL, v1, &_s10Foundation3URLVSgMd);
  if (__swift_getEnumTagSinglePayload(v1, 1, v4) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s10Foundation3URLVSgMd);
  }

  else
  {
    (*(v6 + 32))(v15, v1, v4);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for AVURLAsset);
    v16 = *(v6 + 16);
    v16(v12, v15, v4);
    v17 = AVURLAsset.init(url:)(v12);
    v18 = [v17 tracksWithMediaType_];

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for AVAssetTrack);
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (specialized Array.count.getter(v19))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v19 & 0xC000000000000001) == 0, v19);
      if ((v19 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x1BFB22010](0, v19);
      }

      else
      {
        v20 = *(v19 + 32);
      }

      v21 = v20;

      [v21 naturalSize];
      v23 = v22;
      v25 = v24;
      [v21 preferredTransform];
      v57.width = v23;
      v57.height = v25;
      v26 = CGSizeApplyAffineTransform(v57, &v56);
      v27 = fabs(v26.width);
      v28 = fabs(v26.height);
      if (v26.width != 0.0 && v26.height != 0.0)
      {
        v29 = OUTLINED_FUNCTION_45_1();
        v30(v29);

        return *&v27;
      }

      if (one-time initialization token for recents != -1)
      {
        OUTLINED_FUNCTION_44_9();
      }

      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, &static Logger.recents);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v55 = v46;
        *v45 = 136315138;
        v56.a = v27;
        v56.b = v28;
        type metadata accessor for CGSize(0);
        v47 = String.init<A>(reflecting:)();
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &v55);

        *(v45 + 4) = v49;
        _os_log_impl(&dword_1BBC58000, v43, v44, "Got invalid video size: %s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v46);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();
      }

      v50 = OUTLINED_FUNCTION_45_1();
      v51(v50);
    }

    else
    {

      if (one-time initialization token for recents != -1)
      {
        OUTLINED_FUNCTION_44_9();
      }

      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, &static Logger.recents);
      v16(v9, v15, v4);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v54 = COERCE_DOUBLE(swift_slowAlloc());
        v56.a = v54;
        *v35 = 136315138;
        lazy protocol witness table accessor for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
        v36 = dispatch thunk of CustomStringConvertible.description.getter();
        v38 = v37;
        v39 = *(v6 + 8);
        v39(v9, v4);
        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v56);

        *(v35 + 4) = v40;
        _os_log_impl(&dword_1BBC58000, v33, v34, "Failed to get AVURL asset for %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(*&v54);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();

        v41 = OUTLINED_FUNCTION_45_1();
        (v39)(v41);
      }

      else
      {

        v52 = *(v6 + 8);
        v52(v9, v4);
        v53 = OUTLINED_FUNCTION_45_1();
        (v52)(v53);
      }
    }
  }

  return 0;
}

id AVURLAsset.init(url:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v6 = [v2 initWithURL:v4 options:0];

  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

id VideoMessagePlayerViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MovieScrubber.ScubberCoordinator.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance VideoMessagePlayerViewModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for VideoMessagePlayerViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void VideoMessagePlayerViewModel.shutterButton(trackBackgroundColor:trackForegroundColor:)()
{
  OUTLINED_FUNCTION_29();
  v28 = v1;
  v27 = v2;
  v26 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  LocalizedStringKey.init(stringLiteral:)();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1B0))(v30);
  v10 = v30[4];
  v11 = v30[5];
  memcpy(v31, v30, 0x70uLL);

  outlined destroy of VideoMessagePlayerViewActions(v31);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  Button<>.init(_:action:)();
  v13 = *(v0 + OBJC_IVAR____TtC15ConversationKit27VideoMessagePlayerViewModel_shutterModel);
  v14 = type metadata accessor for ShutterModel();
  lazy protocol witness table accessor for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel(&lazy protocol witness table cache variable for type ShutterModel and conformance ShutterModel, type metadata accessor for ShutterModel);

  ObservedObject.init(wrappedValue:)();
  OUTLINED_FUNCTION_18_8();
  v29 = 0;
  State.init(wrappedValue:)();
  v15 = v30[0];
  v16 = v30[1];
  v30[0] = v13;
  v30[1] = v14;
  v30[2] = v15;
  v30[3] = v16;
  OUTLINED_FUNCTION_1_9();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v17, &_s7SwiftUI6ButtonVyAA4TextVGMd);
  lazy protocol witness table accessor for type ShutterButtonStyle and conformance ShutterButtonStyle();
  v18 = v26;
  View.buttonStyle<A>(_:)();

  (*(v6 + 8))(v9, v4);
  KeyPath = swift_getKeyPath();
  v20 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA4TextVG_15ConversationKit07ShutterhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd) + 36));
  v21 = v27;
  *v20 = KeyPath;
  v20[1] = v21;
  v22 = swift_getKeyPath();
  v30[0] = v28;

  v23 = AnyShapeStyle.init<A>(_:)();
  v24 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA4TextVG_15ConversationKit07ShutterhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGARyAA08AnyShapeG0VSgGGMd) + 36));
  *v24 = v22;
  v24[1] = v23;
  OUTLINED_FUNCTION_30_0();
}

uint64_t key path setter for EnvironmentValues.verticalSizeClass : EnvironmentValues(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_2();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(a1, v1, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  return EnvironmentValues.verticalSizeClass.setter();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<AnimatedSaveView, _OpacityEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, HierarchicalShapeStyle>>>, _EnvironmentKeyWritingModifier<ColorScheme>>, _EnvironmentKeyTransformModifier<Bool>>, _FixedSizeLayout>?)>>, _OpacityEffect>, _AnimationModifier<AnimatedSaveView.SaveState>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<AnimatedSaveView, _OpacityEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, HierarchicalShapeStyle>>>, _EnvironmentKeyWritingModifier<ColorScheme>>, _EnvironmentKeyTransformModifier<Bool>>, _FixedSizeLayout>?)>>, _OpacityEffect>, _AnimationModifier<AnimatedSaveView.SaveState>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<AnimatedSaveView, _OpacityEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, HierarchicalShapeStyle>>>, _EnvironmentKeyWritingModifier<ColorScheme>>, _EnvironmentKeyTransformModifier<Bool>>, _FixedSizeLayout>?)>>, _OpacityEffect>, _AnimationModifier<AnimatedSaveView.SaveState>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyACy15ConversationKit012AnimatedSaveG0VAA14_OpacityEffectVG_ACyACyACyACyAA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAA0Q0VyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAWGAA010_FlexFrameT0VGAA34_InsettableBackgroundShapeModifierVyAA8MaterialVAA16RoundedRectangleVGGG_AA010BorderlessqO0VQo_AA01_xZ0VyAA01_yG0VyA6_AA012HierarchicalyO0VGGGAA022_EnvironmentKeyWritingZ0VyAA11ColorSchemeOGGAA024_EnvironmentKeyTransformZ0VySbGGAA010_FixedSizeT0VGSgtGGALGAA010_AnimationZ0VyAJ0K5StateOGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<AnimatedSaveView, _OpacityEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, HierarchicalShapeStyle>>>, _EnvironmentKeyWritingModifier<ColorScheme>>, _EnvironmentKeyTransformModifier<Bool>>, _FixedSizeLayout>?)>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _AnimationModifier<AnimatedSaveView.SaveState> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVy15ConversationKit16AnimatedSaveViewV0H5StateOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<AnimatedSaveView, _OpacityEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, HierarchicalShapeStyle>>>, _EnvironmentKeyWritingModifier<ColorScheme>>, _EnvironmentKeyTransformModifier<Bool>>, _FixedSizeLayout>?)>>, _OpacityEffect>, _AnimationModifier<AnimatedSaveView.SaveState>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<AnimatedSaveView, _OpacityEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, HierarchicalShapeStyle>>>, _EnvironmentKeyWritingModifier<ColorScheme>>, _EnvironmentKeyTransformModifier<Bool>>, _FixedSizeLayout>?)>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<AnimatedSaveView, _OpacityEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, HierarchicalShapeStyle>>>, _EnvironmentKeyWritingModifier<ColorScheme>>, _EnvironmentKeyTransformModifier<Bool>>, _FixedSizeLayout>?)>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<AnimatedSaveView, _OpacityEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, HierarchicalShapeStyle>>>, _EnvironmentKeyWritingModifier<ColorScheme>>, _EnvironmentKeyTransformModifier<Bool>>, _FixedSizeLayout>?)>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACy15ConversationKit012AnimatedSaveG0VAA14_OpacityEffectVG_ACyACyACyACyAA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAA0Q0VyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAWGAA010_FlexFrameT0VGAA34_InsettableBackgroundShapeModifierVyAA8MaterialVAA16RoundedRectangleVGGG_AA010BorderlessqO0VQo_AA01_xZ0VyAA01_yG0VyA6_AA012HierarchicalyO0VGGGAA022_EnvironmentKeyWritingZ0VyAA11ColorSchemeOGGAA024_EnvironmentKeyTransformZ0VySbGGAA010_FixedSizeT0VGSgtGGALGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<AnimatedSaveView, _OpacityEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, HierarchicalShapeStyle>>>, _EnvironmentKeyWritingModifier<ColorScheme>>, _EnvironmentKeyTransformModifier<Bool>>, _FixedSizeLayout>?)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVy15ConversationKit012AnimatedSaveE0VAA14_OpacityEffectVG_AGyAGyAGyAGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAA0Q0VyAGyAGyAGyAGyAA4TextVAA14_PaddingLayoutVGAWGAA010_FlexFrameT0VGAA34_InsettableBackgroundShapeModifierVyAA8MaterialVAA16RoundedRectangleVGGG_AA010BorderlessqO0VQo_AA01_xZ0VyAA01_yE0VyA6_AA012HierarchicalyO0VGGGAA022_EnvironmentKeyWritingZ0VyAA11ColorSchemeOGGAA024_EnvironmentKeyTransformZ0VySbGGAA010_FixedSizeT0VGSgtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<AnimatedSaveView, _OpacityEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, HierarchicalShapeStyle>>>, _EnvironmentKeyWritingModifier<ColorScheme>>, _EnvironmentKeyTransformModifier<Bool>>, _FixedSizeLayout>?)>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ShutterButtonStyle and conformance ShutterButtonStyle()
{
  result = lazy protocol witness table cache variable for type ShutterButtonStyle and conformance ShutterButtonStyle;
  if (!lazy protocol witness table cache variable for type ShutterButtonStyle and conformance ShutterButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShutterButtonStyle and conformance ShutterButtonStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VideoMessageControlsView.PlayState and conformance VideoMessageControlsView.PlayState()
{
  result = lazy protocol witness table cache variable for type VideoMessageControlsView.PlayState and conformance VideoMessageControlsView.PlayState;
  if (!lazy protocol witness table cache variable for type VideoMessageControlsView.PlayState and conformance VideoMessageControlsView.PlayState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VideoMessageControlsView.PlayState and conformance VideoMessageControlsView.PlayState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VideoMessagePlayerViewModel.ControlsConfiguration and conformance VideoMessagePlayerViewModel.ControlsConfiguration()
{
  result = lazy protocol witness table cache variable for type VideoMessagePlayerViewModel.ControlsConfiguration and conformance VideoMessagePlayerViewModel.ControlsConfiguration;
  if (!lazy protocol witness table cache variable for type VideoMessagePlayerViewModel.ControlsConfiguration and conformance VideoMessagePlayerViewModel.ControlsConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VideoMessagePlayerViewModel.ControlsConfiguration and conformance VideoMessagePlayerViewModel.ControlsConfiguration);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VideoMessagePlayerViewModel.PlayerSpatiality and conformance VideoMessagePlayerViewModel.PlayerSpatiality()
{
  result = lazy protocol witness table cache variable for type VideoMessagePlayerViewModel.PlayerSpatiality and conformance VideoMessagePlayerViewModel.PlayerSpatiality;
  if (!lazy protocol witness table cache variable for type VideoMessagePlayerViewModel.PlayerSpatiality and conformance VideoMessagePlayerViewModel.PlayerSpatiality)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VideoMessagePlayerViewModel.PlayerSpatiality and conformance VideoMessagePlayerViewModel.PlayerSpatiality);
  }

  return result;
}

void type metadata completion function for VideoMessageControlsView()
{
  type metadata accessor for Environment<CGFloat>(319, &lazy cache variable for type metadata for Environment<CGFloat>, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<UserInterfaceSizeClass?>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ObservedObject<VideoMessagePlayerViewModel>();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Environment<CGFloat>(319, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for AVPlayer?();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for ObservedObject<VideoMessagePlayerViewModel>()
{
  if (!lazy cache variable for type metadata for ObservedObject<VideoMessagePlayerViewModel>)
  {
    type metadata accessor for VideoMessagePlayerViewModel(255);
    lazy protocol witness table accessor for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel(&lazy protocol witness table cache variable for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel, type metadata accessor for VideoMessagePlayerViewModel);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ObservedObject<VideoMessagePlayerViewModel>);
    }
  }
}

void type metadata accessor for AVPlayer?()
{
  if (!lazy cache variable for type metadata for AVPlayer?)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for AVPlayer);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AVPlayer?);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for VideoMessageControlsView.PlayState(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VideoMessagePlayerViewActions(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for VideoMessagePlayerViewActions(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for VideoMessagePlayerViewModel()
{
  type metadata accessor for Environment<CGFloat>(319, &lazy cache variable for type metadata for Published<VideoMessagePlayerViewModel.ControlsConfiguration>, &type metadata for VideoMessagePlayerViewModel.ControlsConfiguration, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<CGFloat>(319, &lazy cache variable for type metadata for Published<VideoMessageControlsView.PlayState>, &type metadata for VideoMessageControlsView.PlayState, MEMORY[0x1E695C070]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Environment<CGFloat>(319, &lazy cache variable for type metadata for Published<VideoMessagePlayerViewModel.PlayerSpatiality>, &type metadata for VideoMessagePlayerViewModel.PlayerSpatiality, MEMORY[0x1E695C070]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Environment<CGFloat>(319, &lazy cache variable for type metadata for Published<String>, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Environment<CGFloat>(319, &lazy cache variable for type metadata for Published<VideoMessagePlayerViewActions>, &type metadata for VideoMessagePlayerViewActions, MEMORY[0x1E695C070]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Environment<CGFloat>(319, &lazy cache variable for type metadata for Published<UserSafetyActions>, &type metadata for UserSafetyActions, MEMORY[0x1E695C070]);
            if (v5 <= 0x3F)
            {
              type metadata accessor for Environment<CGFloat>(319, &lazy cache variable for type metadata for Published<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
              if (v6 <= 0x3F)
              {
                type metadata accessor for Environment<CGFloat>(319, &lazy cache variable for type metadata for Published<AnimatedSaveView.SaveState>, &type metadata for AnimatedSaveView.SaveState, MEMORY[0x1E695C070]);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for URL?();
                  if (v8 <= 0x3F)
                  {
                    swift_updateClassMetadata2();
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

void type metadata accessor for Environment<CGFloat>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

_BYTE *storeEnumTagSinglePayload for VideoMessagePlayerViewModel.ControlsConfiguration(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for VideoMessagePlayerViewModel.PlayerSpatiality(_BYTE *result, unsigned int a2, unsigned int a3)
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
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<GeometryReader<<<opaque return type of View.onTapGesture(count:perform:)>>.0>, _EnvironmentKeyWritingModifier<ColorScheme>>, _BackgroundStyleModifier<Material>>, ModifiedContent<ModifiedContent<GeometryReader<<<opaque return type of View.onTapGesture(count:perform:)>>.0>, _EnvironmentKeyWritingModifier<ColorScheme>>, _BackgroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<GeometryReader<<<opaque return type of View.onTapGesture(count:perform:)>>.0>, _EnvironmentKeyWritingModifier<ColorScheme>>, _BackgroundStyleModifier<Material>>, ModifiedContent<ModifiedContent<GeometryReader<<<opaque return type of View.onTapGesture(count:perform:)>>.0>, _EnvironmentKeyWritingModifier<ColorScheme>>, _BackgroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<GeometryReader<<<opaque return type of View.onTapGesture(count:perform:)>>.0>, _EnvironmentKeyWritingModifier<ColorScheme>>, _BackgroundStyleModifier<Material>>, ModifiedContent<ModifiedContent<GeometryReader<<<opaque return type of View.onTapGesture(count:perform:)>>.0>, _EnvironmentKeyWritingModifier<ColorScheme>>, _BackgroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA14GeometryReaderVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAEyAEyAEyAEyAEyAA6ZStackVyAA05TupleH0VyAA6VStackVyACyAPyAEyAEyACyACyAEyAEy15ConversationKit020VideoMessageControlsH0V03TopuH033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAZGACyA_A_GGA_GAA16_FlexFrameLayoutVGAA14_OpacityEffectVG_AA6SpacerVtGAPyAEyAA6HStackVyAPyA11__AEyAEyAS18AnimatedSaveButtonVAA12_FrameLayoutVGAZGtGGA5_G_A11_tGGG_ACyA14_yAPyA11__ACyAEyAEyAEyAU011LocalBottomuH0AWLLVA8_GAA32_EnvironmentKeyTransformModifierVySbGGA8_GAEyAEyAEyAU012RemoteBottomuH0AWLLVAZGAZGA5_GGtGGARyA41_GGAPyAEyAEyARyAPyA11__ACyAEyAEyAU010PlayButtonH0AWLLVA8_GA32_GAEyA48_AA16_OverlayModifierVyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA54_yAA8MaterialVSgGGA18_GAA25_AlignmentWritingModifierVGGGGA11_tGGAA30_SafeAreaRegionsIgnoringLayoutVGA5_G_AEyAEyAEyAEyARyAPyA11__AEyAEyAEyAEyAEyA52_AZGA54_yAA5ColorVSgGGAA19_BackgroundModifierVyACyAA06_ShapeH0VyAA16RoundedRectangleVA84_GA91_yA93_A65_GGGGAA11_ClipEffectVyA93_GGAA31AccessibilityAttachmentModifierVGAEyAEyAEyAS13MovieScrubberAWLLVA101_GAA16_FixedSizeLayoutVGA18_GtGGA79_GA5_GAZGA8_GSgtGSgtGGAZGA79_GA5_GAA01_D13ShapeModifierVyAA9RectangleVGGA89_yAEyAEyAA14LinearGradientVA79_GA8_GGG_Qo_GA54_yAA11ColorSchemeOGGAA24_BackgroundStyleModifierVyA65_GGAEyA144_A146_yA84_GGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GeometryReader<<<opaque return type of View.onTapGesture(count:perform:)>>.0>, _EnvironmentKeyWritingModifier<ColorScheme>>, _BackgroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GeometryReader<<<opaque return type of View.onTapGesture(count:perform:)>>.0>, _EnvironmentKeyWritingModifier<ColorScheme>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<GeometryReader<<<opaque return type of View.onTapGesture(count:perform:)>>.0>, _EnvironmentKeyWritingModifier<ColorScheme>>, _BackgroundStyleModifier<Material>>, ModifiedContent<ModifiedContent<GeometryReader<<<opaque return type of View.onTapGesture(count:perform:)>>.0>, _EnvironmentKeyWritingModifier<ColorScheme>>, _BackgroundStyleModifier<Color>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GeometryReader<<<opaque return type of View.onTapGesture(count:perform:)>>.0>, _EnvironmentKeyWritingModifier<ColorScheme>>, _BackgroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GeometryReader<<<opaque return type of View.onTapGesture(count:perform:)>>.0>, _EnvironmentKeyWritingModifier<ColorScheme>>, _BackgroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GeometryReader<<<opaque return type of View.onTapGesture(count:perform:)>>.0>, _EnvironmentKeyWritingModifier<ColorScheme>>, _BackgroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA14GeometryReaderVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyACyACyACyACyACyAA6ZStackVyAA05TupleG0VyAA6VStackVyAA012_ConditionalD0VyANyACyACyARyARyACyACy15ConversationKit020VideoMessageControlsG0V03TopuG033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAZGARyA_A_GGA_GAA16_FlexFrameLayoutVGAA14_OpacityEffectVG_AA6SpacerVtGANyACyAA6HStackVyANyA11__ACyACyAS18AnimatedSaveButtonVAA12_FrameLayoutVGAZGtGGA5_G_A11_tGGG_ARyA14_yANyA11__ARyACyACyACyAU011LocalBottomuG0AWLLVA8_GAA32_EnvironmentKeyTransformModifierVySbGGA8_GACyACyACyAU012RemoteBottomuG0AWLLVAZGAZGA5_GGtGGAPyA41_GGANyACyACyAPyANyA11__ARyACyACyAU010PlayButtonG0AWLLVA8_GA32_GACyA48_AA16_OverlayModifierVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA54_yAA8MaterialVSgGGA18_GAA25_AlignmentWritingModifierVGGGGA11_tGGAA30_SafeAreaRegionsIgnoringLayoutVGA5_G_ACyACyACyACyAPyANyA11__ACyACyACyACyACyA52_AZGA54_yAA5ColorVSgGGAA19_BackgroundModifierVyARyAA06_ShapeG0VyAA16RoundedRectangleVA84_GA91_yA93_A65_GGGGAA11_ClipEffectVyA93_GGAA31AccessibilityAttachmentModifierVGACyACyACyAS13MovieScrubberAWLLVA101_GAA16_FixedSizeLayoutVGA18_GtGGA79_GA5_GAZGA8_GSgtGSgtGGAZGA79_GA5_GAA01_D13ShapeModifierVyAA9RectangleVGGA89_yACyACyAA14LinearGradientVA79_GA8_GGG_Qo_GA54_yAA11ColorSchemeOGGAA24_BackgroundStyleModifierVyA65_GGMd);
    lazy protocol witness table accessor for type ModifiedContent<GeometryReader<<<opaque return type of View.onTapGesture(count:perform:)>>.0>, _EnvironmentKeyWritingModifier<ColorScheme>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Material> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA8MaterialVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GeometryReader<<<opaque return type of View.onTapGesture(count:perform:)>>.0>, _EnvironmentKeyWritingModifier<ColorScheme>>, _BackgroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<GeometryReader<<<opaque return type of View.onTapGesture(count:perform:)>>.0>, _EnvironmentKeyWritingModifier<ColorScheme>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<GeometryReader<<<opaque return type of View.onTapGesture(count:perform:)>>.0>, _EnvironmentKeyWritingModifier<ColorScheme>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<GeometryReader<<<opaque return type of View.onTapGesture(count:perform:)>>.0>, _EnvironmentKeyWritingModifier<ColorScheme>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA14GeometryReaderVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyACyACyACyACyACyAA6ZStackVyAA05TupleG0VyAA6VStackVyAA012_ConditionalD0VyANyACyACyARyARyACyACy15ConversationKit020VideoMessageControlsG0V03TopuG033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAZGARyA_A_GGA_GAA16_FlexFrameLayoutVGAA14_OpacityEffectVG_AA6SpacerVtGANyACyAA6HStackVyANyA11__ACyACyAS18AnimatedSaveButtonVAA12_FrameLayoutVGAZGtGGA5_G_A11_tGGG_ARyA14_yANyA11__ARyACyACyACyAU011LocalBottomuG0AWLLVA8_GAA32_EnvironmentKeyTransformModifierVySbGGA8_GACyACyACyAU012RemoteBottomuG0AWLLVAZGAZGA5_GGtGGAPyA41_GGANyACyACyAPyANyA11__ARyACyACyAU010PlayButtonG0AWLLVA8_GA32_GACyA48_AA16_OverlayModifierVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA54_yAA8MaterialVSgGGA18_GAA25_AlignmentWritingModifierVGGGGA11_tGGAA30_SafeAreaRegionsIgnoringLayoutVGA5_G_ACyACyACyACyAPyANyA11__ACyACyACyACyACyA52_AZGA54_yAA5ColorVSgGGAA19_BackgroundModifierVyARyAA06_ShapeG0VyAA16RoundedRectangleVA84_GA91_yA93_A65_GGGGAA11_ClipEffectVyA93_GGAA31AccessibilityAttachmentModifierVGACyACyACyAS13MovieScrubberAWLLVA101_GAA16_FixedSizeLayoutVGA18_GtGGA79_GA5_GAZGA8_GSgtGSgtGGAZGA79_GA5_GAA01_D13ShapeModifierVyAA9RectangleVGGA89_yACyACyAA14LinearGradientVA79_GA8_GGG_Qo_GA54_yAA11ColorSchemeOGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type GeometryReader<<<opaque return type of View.onTapGesture(count:perform:)>>.0> and conformance GeometryReader<A>, &_s7SwiftUI14GeometryReaderVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyAJyAJyAJyAJyAA6ZStackVyAA05TupleE0VyAA6VStackVyAA012_ConditionalL0VyANyAJyAJyARyARyAJyAJy15ConversationKit020VideoMessageControlsE0V03TopuE033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAZGARyA_A_GGA_GAA16_FlexFrameLayoutVGAA14_OpacityEffectVG_AA6SpacerVtGANyAJyAA6HStackVyANyA11__AJyAJyAS18AnimatedSaveButtonVAA12_FrameLayoutVGAZGtGGA5_G_A11_tGGG_ARyA14_yANyA11__ARyAJyAJyAJyAU011LocalBottomuE0AWLLVA8_GAA32_EnvironmentKeyTransformModifierVySbGGA8_GAJyAJyAJyAU012RemoteBottomuE0AWLLVAZGAZGA5_GGtGGAPyA41_GGANyAJyAJyAPyANyA11__ARyAJyAJyAU010PlayButtonE0AWLLVA8_GA32_GAJyA48_AA16_OverlayModifierVyAJyAJyAJyAJyAJyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA54_yAA8MaterialVSgGGA18_GAA25_AlignmentWritingModifierVGGGGA11_tGGAA30_SafeAreaRegionsIgnoringLayoutVGA5_G_AJyAJyAJyAJyAPyANyA11__AJyAJyAJyAJyAJyA52_AZGA54_yAA5ColorVSgGGAA19_BackgroundModifierVyARyAA06_ShapeE0VyAA16RoundedRectangleVA84_GA91_yA93_A65_GGGGAA11_ClipEffectVyA93_GGAA31AccessibilityAttachmentModifierVGAJyAJyAJyAS13MovieScrubberAWLLVA101_GAA16_FixedSizeLayoutVGA18_GtGGA79_GA5_GAZGA8_GSgtGSgtGGAZGA79_GA5_GAA01_L13ShapeModifierVyAA9RectangleVGGA89_yAJyAJyAA14LinearGradientVA79_GA8_GGG_Qo_GMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ColorScheme> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<GeometryReader<<<opaque return type of View.onTapGesture(count:perform:)>>.0>, _EnvironmentKeyWritingModifier<ColorScheme>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GeometryReader<<<opaque return type of View.onTapGesture(count:perform:)>>.0>, _EnvironmentKeyWritingModifier<ColorScheme>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GeometryReader<<<opaque return type of View.onTapGesture(count:perform:)>>.0>, _EnvironmentKeyWritingModifier<ColorScheme>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GeometryReader<<<opaque return type of View.onTapGesture(count:perform:)>>.0>, _EnvironmentKeyWritingModifier<ColorScheme>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA14GeometryReaderVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyACyACyACyACyACyAA6ZStackVyAA05TupleG0VyAA6VStackVyAA012_ConditionalD0VyANyACyACyARyARyACyACy15ConversationKit020VideoMessageControlsG0V03TopuG033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAZGARyA_A_GGA_GAA16_FlexFrameLayoutVGAA14_OpacityEffectVG_AA6SpacerVtGANyACyAA6HStackVyANyA11__ACyACyAS18AnimatedSaveButtonVAA12_FrameLayoutVGAZGtGGA5_G_A11_tGGG_ARyA14_yANyA11__ARyACyACyACyAU011LocalBottomuG0AWLLVA8_GAA32_EnvironmentKeyTransformModifierVySbGGA8_GACyACyACyAU012RemoteBottomuG0AWLLVAZGAZGA5_GGtGGAPyA41_GGANyACyACyAPyANyA11__ARyACyACyAU010PlayButtonG0AWLLVA8_GA32_GACyA48_AA16_OverlayModifierVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA54_yAA8MaterialVSgGGA18_GAA25_AlignmentWritingModifierVGGGGA11_tGGAA30_SafeAreaRegionsIgnoringLayoutVGA5_G_ACyACyACyACyAPyANyA11__ACyACyACyACyACyA52_AZGA54_yAA5ColorVSgGGAA19_BackgroundModifierVyARyAA06_ShapeG0VyAA16RoundedRectangleVA84_GA91_yA93_A65_GGGGAA11_ClipEffectVyA93_GGAA31AccessibilityAttachmentModifierVGACyACyACyAS13MovieScrubberAWLLVA101_GAA16_FixedSizeLayoutVGA18_GtGGA79_GA5_GAZGA8_GSgtGSgtGGAZGA79_GA5_GAA01_D13ShapeModifierVyAA9RectangleVGGA89_yACyACyAA14LinearGradientVA79_GA8_GGG_Qo_GA54_yAA11ColorSchemeOGGAA24_BackgroundStyleModifierVyA84_GGMd);
    lazy protocol witness table accessor for type ModifiedContent<GeometryReader<<<opaque return type of View.onTapGesture(count:perform:)>>.0>, _EnvironmentKeyWritingModifier<ColorScheme>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GeometryReader<<<opaque return type of View.onTapGesture(count:perform:)>>.0>, _EnvironmentKeyWritingModifier<ColorScheme>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ShapeView<RoundedRectangle, Color>, _ShapeView<RoundedRectangle, Material>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ShapeView<RoundedRectangle, Color>, _ShapeView<RoundedRectangle, Material>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ShapeView<RoundedRectangle, Color>, _ShapeView<RoundedRectangle, Material>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAEyAgA8MaterialVGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ShapeView<RoundedRectangle, Color> and conformance _ShapeView<A, B>, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ShapeView<RoundedRectangle, Material> and conformance _ShapeView<A, B>, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA8MaterialVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ShapeView<RoundedRectangle, Color>, _ShapeView<RoundedRectangle, Material>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA4TextVG_15ConversationKit07ShutterhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGARyAA08AnyShapeG0VSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA4TextVG_15ConversationKit07ShutterhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
    lazy protocol witness table accessor for type ShutterButtonStyle and conformance ShutterButtonStyle();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyACyACyAA5ImageVAA011_ForegroundG8ModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingL0VyAK5ScaleOGGAA023AccessibilityAttachmentL0VGASyAA4FontVSgGGAA13_ShadowEffectVGAA12_FrameLayoutVGG_AA010BorderlessiG0VQo_ASyAOSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingI0VyAG5ScaleOGGAA023AccessibilityAttachmentI0VGAOyAA4FontVSgGGAA13_ShadowEffectVGAA12_FrameLayoutVGGMd);
    type metadata accessor for BorderlessButtonStyle();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<Font?>>, _ShadowEffect>, _FrameLayout>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingI0VyAG5ScaleOGGAA023AccessibilityAttachmentI0VGAOyAA4FontVSgGGAA13_ShadowEffectVGAA12_FrameLayoutVGGMd);
    lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier(&lazy protocol witness table cache variable for type BorderlessButtonStyle and conformance BorderlessButtonStyle, MEMORY[0x1E697C720]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VideoMessageControlsView.PlayButtonView(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for VideoMessageControlsView.PlayButtonView(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void type metadata completion function for VideoMessageControlsView.LocalBottomControlsView()
{
  type metadata accessor for ObservedObject<VideoMessagePlayerViewModel>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<CGFloat>(319, &lazy cache variable for type metadata for Environment<CGFloat>, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DCC0]);
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

unint64_t lazy protocol witness table accessor for type MovieScrubber and conformance MovieScrubber()
{
  result = lazy protocol witness table cache variable for type MovieScrubber and conformance MovieScrubber;
  if (!lazy protocol witness table cache variable for type MovieScrubber and conformance MovieScrubber)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MovieScrubber and conformance MovieScrubber);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MovieScrubber and conformance MovieScrubber;
  if (!lazy protocol witness table cache variable for type MovieScrubber and conformance MovieScrubber)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MovieScrubber and conformance MovieScrubber);
  }

  return result;
}

uint64_t outlined assign with take of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _ContentShapeModifier<Circle>>, _InsettableBackgroundShapeModifier<Material, Circle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _ContentShapeModifier<Circle>>, _InsettableBackgroundShapeModifier<Material, Circle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _ContentShapeModifier<Circle>>, _InsettableBackgroundShapeModifier<Material, Circle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA12_FrameLayoutVGAA01_d5ShapeI0VyAA6CircleVGGAA021_InsettableBackgroundnI0VyAA8MaterialVAXGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _ContentShapeModifier<Circle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _InsettableBackgroundShapeModifier<Material, Circle> and conformance _InsettableBackgroundShapeModifier<A, B>, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA8MaterialVAA6CircleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _ContentShapeModifier<Circle>>, _InsettableBackgroundShapeModifier<Material, Circle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _ContentShapeModifier<Circle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _ContentShapeModifier<Circle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _ContentShapeModifier<Circle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA12_FrameLayoutVGAA01_d5ShapeI0VyAA6CircleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ContentShapeModifier<Circle> and conformance _ContentShapeModifier<A>, &_s7SwiftUI21_ContentShapeModifierVyAA6CircleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _ContentShapeModifier<Circle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, Text)>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, Text)>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, Text)>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA4TextVtGGAKyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, Text)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA4TextVtGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, Text)>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout>, _InsettableBackgroundShapeModifier<Color, Circle>>, AccessibilityAttachmentModifier>, ModifiedContent<HStack<ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>)>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout>, _InsettableBackgroundShapeModifier<Color, Circle>>, AccessibilityAttachmentModifier>, ModifiedContent<HStack<ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>)>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout>, _InsettableBackgroundShapeModifier<Color, Circle>>, AccessibilityAttachmentModifier>, ModifiedContent<HStack<ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>)>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA16_FlexFrameLayoutVG_ACyACyACyAA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyACyAnAE10fontWeightyQrAA4FontV0Q0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAUSgGG_Qo_A0_yAA5ColorVSgGGG_AA010BorderlessoM0VQo_AA01_jK0VGAA026_InsettableBackgroundShapeW0VyA6_AA6CircleVGGAA023AccessibilityAttachmentW0VGACyAEyACyACyACyARyAA4TextVGA8_GA15_GAA08_PaddingK0VGGAKGtGGA32_GAKGMd);
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout>, _InsettableBackgroundShapeModifier<Color, Circle>>, AccessibilityAttachmentModifier>, ModifiedContent<HStack<ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout>, _InsettableBackgroundShapeModifier<Color, Circle>>, AccessibilityAttachmentModifier>, ModifiedContent<HStack<ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>)>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout>, _InsettableBackgroundShapeModifier<Color, Circle>>, AccessibilityAttachmentModifier>, ModifiedContent<HStack<ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout>, _InsettableBackgroundShapeModifier<Color, Circle>>, AccessibilityAttachmentModifier>, ModifiedContent<HStack<ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout>, _InsettableBackgroundShapeModifier<Color, Circle>>, AccessibilityAttachmentModifier>, ModifiedContent<HStack<ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA16_FlexFrameLayoutVG_ACyACyACyAA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyACyAnAE10fontWeightyQrAA4FontV0Q0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAUSgGG_Qo_A0_yAA5ColorVSgGGG_AA010BorderlessoM0VQo_AA01_jK0VGAA026_InsettableBackgroundShapeW0VyA6_AA6CircleVGGAA023AccessibilityAttachmentW0VGACyAEyACyACyACyARyAA4TextVGA8_GA15_GAA08_PaddingK0VGGAKGtGGA32_GMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<Spacer, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout>, _InsettableBackgroundShapeModifier<Color, Circle>>, AccessibilityAttachmentModifier>, ModifiedContent<HStack<ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA16_FlexFrameLayoutVG_AGyAGyAGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAGyAnAE10fontWeightyQrAA4FontV0Q0VSgFQOyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAUSgGG_Qo_A0_yAA5ColorVSgGGG_AA010BorderlessoM0VQo_AA01_jK0VGAA026_InsettableBackgroundShapeW0VyA6_AA6CircleVGGAA023AccessibilityAttachmentW0VGAGyACyAGyAGyAGyARyAA4TextVGA8_GA15_GAA08_PaddingK0VGGAKGtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout>, _InsettableBackgroundShapeModifier<Color, Circle>>, AccessibilityAttachmentModifier>, ModifiedContent<HStack<ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_AOyAA5ColorVSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout>, _InsettableBackgroundShapeModifier<Color, Circle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout>, _InsettableBackgroundShapeModifier<Color, Circle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout>, _InsettableBackgroundShapeModifier<Color, Circle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_ASyAA5ColorVSgGGG_AA010BorderlessiG0VQo_AA12_FrameLayoutVGAA026_InsettableBackgroundShapeQ0VyAyA6CircleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _InsettableBackgroundShapeModifier<Color, Circle> and conformance _InsettableBackgroundShapeModifier<A, B>, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA5ColorVAA6CircleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout>, _InsettableBackgroundShapeModifier<Color, Circle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VideoMessageControlsView.TopControlsView.ParticipantNameView, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VideoMessageControlsView.TopControlsView.ParticipantNameView, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VideoMessageControlsView.TopControlsView.ParticipantNameView, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy15ConversationKit24VideoMessageControlsViewV03TopiJ033_B419541366E265736F7249488C40E55CLLV015ParticipantNameJ0VAA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA0t8PriorityU3KeyVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<VideoMessageControlsView.TopControlsView.ParticipantNameView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _TraitWritingModifier<LayoutPriorityTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VideoMessageControlsView.TopControlsView.ParticipantNameView, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VideoMessageControlsView.TopControlsView.ParticipantNameView, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VideoMessageControlsView.TopControlsView.ParticipantNameView, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VideoMessageControlsView.TopControlsView.ParticipantNameView, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit24VideoMessageControlsViewV03TopiJ033_B419541366E265736F7249488C40E55CLLV015ParticipantNameJ0VAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type VideoMessageControlsView.TopControlsView.ParticipantNameView and conformance VideoMessageControlsView.TopControlsView.ParticipantNameView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VideoMessageControlsView.TopControlsView.ParticipantNameView, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VideoMessageControlsView.TopControlsView.ParticipantNameView and conformance VideoMessageControlsView.TopControlsView.ParticipantNameView()
{
  result = lazy protocol witness table cache variable for type VideoMessageControlsView.TopControlsView.ParticipantNameView and conformance VideoMessageControlsView.TopControlsView.ParticipantNameView;
  if (!lazy protocol witness table cache variable for type VideoMessageControlsView.TopControlsView.ParticipantNameView and conformance VideoMessageControlsView.TopControlsView.ParticipantNameView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VideoMessageControlsView.TopControlsView.ParticipantNameView and conformance VideoMessageControlsView.TopControlsView.ParticipantNameView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<_ConditionalContent<_ShapeView<RoundedRectangle, Color>, _ShapeView<RoundedRectangle, Material>>>>, _ClipEffect<RoundedRectangle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<_ConditionalContent<_ShapeView<RoundedRectangle, Color>, _ShapeView<RoundedRectangle, Material>>>>, _ClipEffect<RoundedRectangle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<_ConditionalContent<_ShapeView<RoundedRectangle, Color>, _ShapeView<RoundedRectangle, Material>>>>, _ClipEffect<RoundedRectangle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA011_BackgroundK0VyAA012_ConditionalD0VyAA10_ShapeViewVyAA16RoundedRectangleVALGAUyAwA8MaterialVGGGGAA11_ClipEffectVyAWGGAA023AccessibilityAttachmentK0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<_ConditionalContent<_ShapeView<RoundedRectangle, Color>, _ShapeView<RoundedRectangle, Material>>>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<_ConditionalContent<_ShapeView<RoundedRectangle, Color>, _ShapeView<RoundedRectangle, Material>>>>, _ClipEffect<RoundedRectangle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<_ConditionalContent<_ShapeView<RoundedRectangle, Color>, _ShapeView<RoundedRectangle, Material>>>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<_ConditionalContent<_ShapeView<RoundedRectangle, Color>, _ShapeView<RoundedRectangle, Material>>>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<_ConditionalContent<_ShapeView<RoundedRectangle, Color>, _ShapeView<RoundedRectangle, Material>>>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA011_BackgroundK0VyAA012_ConditionalD0VyAA10_ShapeViewVyAA16RoundedRectangleVALGAUyAwA8MaterialVGGGGAA11_ClipEffectVyAWGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<_ConditionalContent<_ShapeView<RoundedRectangle, Color>, _ShapeView<RoundedRectangle, Material>>>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ClipEffect<RoundedRectangle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<_ConditionalContent<_ShapeView<RoundedRectangle, Color>, _ShapeView<RoundedRectangle, Material>>>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<_ConditionalContent<_ShapeView<RoundedRectangle, Color>, _ShapeView<RoundedRectangle, Material>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<_ConditionalContent<_ShapeView<RoundedRectangle, Color>, _ShapeView<RoundedRectangle, Material>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<_ConditionalContent<_ShapeView<RoundedRectangle, Color>, _ShapeView<RoundedRectangle, Material>>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA011_BackgroundK0VyAA012_ConditionalD0VyAA10_ShapeViewVyAA16RoundedRectangleVALGAUyAwA8MaterialVGGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _BackgroundModifier<_ConditionalContent<_ShapeView<RoundedRectangle, Color>, _ShapeView<RoundedRectangle, Material>>> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA19_ConditionalContentVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAGyAiA8MaterialVGGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<_ConditionalContent<_ShapeView<RoundedRectangle, Color>, _ShapeView<RoundedRectangle, Material>>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Menu<ZStack<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, TupleView<(Button<Text>, Button<Text>?, Button<Text>)>>, _FlexFrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<ZStack<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, TupleView<(Button<Text>, Button<Text>?, Button<Text>)>>, _FlexFrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<ZStack<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, TupleView<(Button<Text>, Button<Text>?, Button<Text>)>>, _FlexFrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4MenuVyAA6ZStackVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGAA9TupleViewVyAA6ButtonVyAA4TextVG_AXSgAXtGGAA16_FlexFrameLayoutVGAA13_OffsetEffectVGMd);
    lazy protocol witness table accessor for type ModifiedContent<Menu<ZStack<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, TupleView<(Button<Text>, Button<Text>?, Button<Text>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<ZStack<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, TupleView<(Button<Text>, Button<Text>?, Button<Text>)>>, _FlexFrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Menu<ZStack<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, TupleView<(Button<Text>, Button<Text>?, Button<Text>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Menu<ZStack<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, TupleView<(Button<Text>, Button<Text>?, Button<Text>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Menu<ZStack<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, TupleView<(Button<Text>, Button<Text>?, Button<Text>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4MenuVyAA6ZStackVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGAA9TupleViewVyAA6ButtonVyAA4TextVG_AXSgAXtGGAA16_FlexFrameLayoutVGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Menu<ZStack<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, TupleView<(Button<Text>, Button<Text>?, Button<Text>)>> and conformance Menu<A, B>, &_s7SwiftUI4MenuVyAA6ZStackVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGAA9TupleViewVyAA6ButtonVyAA4TextVG_AXSgAXtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Menu<ZStack<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, TupleView<(Button<Text>, Button<Text>?, Button<Text>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AnimatedSaveButton, _FlexFrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AnimatedSaveButton, _FlexFrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AnimatedSaveButton, _FlexFrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy15ConversationKit18AnimatedSaveButtonVAA16_FlexFrameLayoutVGAA13_OffsetEffectVGMd);
    lazy protocol witness table accessor for type ModifiedContent<AnimatedSaveButton, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AnimatedSaveButton, _FlexFrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<AnimatedSaveButton, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AnimatedSaveButton, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AnimatedSaveButton, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit18AnimatedSaveButtonVAA16_FlexFrameLayoutVGMd);
    lazy protocol witness table accessor for type AnimatedSaveButton and conformance AnimatedSaveButton();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AnimatedSaveButton, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimatedSaveButton and conformance AnimatedSaveButton()
{
  result = lazy protocol witness table cache variable for type AnimatedSaveButton and conformance AnimatedSaveButton;
  if (!lazy protocol witness table cache variable for type AnimatedSaveButton and conformance AnimatedSaveButton)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatedSaveButton and conformance AnimatedSaveButton);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Material, RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Material, RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Material, RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA14_PaddingLayoutVGAGGAA010_FlexFrameG0VGAA34_InsettableBackgroundShapeModifierVyAA8MaterialVAA16RoundedRectangleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _InsettableBackgroundShapeModifier<Material, RoundedRectangle> and conformance _InsettableBackgroundShapeModifier<A, B>, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA8MaterialVAA16RoundedRectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Material, RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAGGAA010_FlexFrameG0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MarginKey and conformance MarginKey()
{
  result = lazy protocol witness table cache variable for type MarginKey and conformance MarginKey;
  if (!lazy protocol witness table cache variable for type MarginKey and conformance MarginKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MarginKey and conformance MarginKey);
  }

  return result;
}

uint64_t partial apply for closure #2 in closure #1 in VideoMessageControlsView.body.getter()
{
  v1 = type metadata accessor for VideoMessageControlsView(0);
  OUTLINED_FUNCTION_22(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return closure #2 in closure #1 in VideoMessageControlsView.body.getter(v3);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VideoMessageControlsView.PlayButtonView, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VideoMessageControlsView.PlayButtonView, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VideoMessageControlsView.PlayButtonView, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy15ConversationKit24VideoMessageControlsViewV010PlayButtonJ033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGMd);
    lazy protocol witness table accessor for type ModifiedContent<VideoMessageControlsView.PlayButtonView, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VideoMessageControlsView.PlayButtonView, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VideoMessageControlsView.PlayButtonView, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VideoMessageControlsView.PlayButtonView, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VideoMessageControlsView.PlayButtonView, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit24VideoMessageControlsViewV010PlayButtonJ033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGMd);
    lazy protocol witness table accessor for type VideoMessageControlsView.PlayButtonView and conformance VideoMessageControlsView.PlayButtonView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VideoMessageControlsView.PlayButtonView, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VideoMessageControlsView.PlayButtonView and conformance VideoMessageControlsView.PlayButtonView()
{
  result = lazy protocol witness table cache variable for type VideoMessageControlsView.PlayButtonView and conformance VideoMessageControlsView.PlayButtonView;
  if (!lazy protocol witness table cache variable for type VideoMessageControlsView.PlayButtonView and conformance VideoMessageControlsView.PlayButtonView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VideoMessageControlsView.PlayButtonView and conformance VideoMessageControlsView.PlayButtonView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VideoMessageControlsView.PlayButtonView, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _FrameLayout>, _AlignmentWritingModifier>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VideoMessageControlsView.PlayButtonView, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _FrameLayout>, _AlignmentWritingModifier>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VideoMessageControlsView.PlayButtonView, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _FrameLayout>, _AlignmentWritingModifier>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy15ConversationKit24VideoMessageControlsViewV010PlayButtonJ033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGAA08_OverlayW0VyACyACyACyACyACyAA4TextVAA01_tu7WritingW0VySiSgGGAA016_ForegroundStyleW0VyAA22HierarchicalShapeStyleVGGAVyAA8MaterialVSgGGAA12_FrameLayoutVGAA010_AlignmentzW0VGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VideoMessageControlsView.PlayButtonView, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _FrameLayout>, _AlignmentWritingModifier>> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAEyAEyAEyAEyAA4TextVAA022_EnvironmentKeyWritingD0VySiSgGGAA016_ForegroundStyleD0VyAA017HierarchicalShapeL0VGGAIyAA8MaterialVSgGGAA12_FrameLayoutVGAA010_AlignmentjD0VGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VideoMessageControlsView.PlayButtonView, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _FrameLayout>, _AlignmentWritingModifier>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrimaryButtonSizeKey and conformance PrimaryButtonSizeKey()
{
  result = lazy protocol witness table cache variable for type PrimaryButtonSizeKey and conformance PrimaryButtonSizeKey;
  if (!lazy protocol witness table cache variable for type PrimaryButtonSizeKey and conformance PrimaryButtonSizeKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrimaryButtonSizeKey and conformance PrimaryButtonSizeKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VideoMessageControlsView.LocalBottomControlsView, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VideoMessageControlsView.LocalBottomControlsView, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VideoMessageControlsView.LocalBottomControlsView, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy15ConversationKit24VideoMessageControlsViewV011LocalBottomiJ033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGAKGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VideoMessageControlsView.LocalBottomControlsView, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VideoMessageControlsView.LocalBottomControlsView, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VideoMessageControlsView.LocalBottomControlsView, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VideoMessageControlsView.LocalBottomControlsView, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VideoMessageControlsView.LocalBottomControlsView, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy15ConversationKit24VideoMessageControlsViewV011LocalBottomiJ033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGAA32_EnvironmentKeyTransformModifierVySbGGMd);
    lazy protocol witness table accessor for type ModifiedContent<VideoMessageControlsView.LocalBottomControlsView, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VideoMessageControlsView.LocalBottomControlsView, _OpacityEffect>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VideoMessageControlsView.LocalBottomControlsView, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VideoMessageControlsView.LocalBottomControlsView, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VideoMessageControlsView.LocalBottomControlsView, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit24VideoMessageControlsViewV011LocalBottomiJ033_B419541366E265736F7249488C40E55CLLVAA14_OpacityEffectVGMd);
    lazy protocol witness table accessor for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel(&lazy protocol witness table cache variable for type VideoMessageControlsView.LocalBottomControlsView and conformance VideoMessageControlsView.LocalBottomControlsView, type metadata accessor for VideoMessageControlsView.LocalBottomControlsView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VideoMessageControlsView.LocalBottomControlsView, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VideoMessageControlsView.RemoteBottomControlsView, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VideoMessageControlsView.RemoteBottomControlsView, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VideoMessageControlsView.RemoteBottomControlsView, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy15ConversationKit24VideoMessageControlsViewV012RemoteBottomiJ033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAKGAA010_FlexFrameS0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VideoMessageControlsView.RemoteBottomControlsView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VideoMessageControlsView.RemoteBottomControlsView, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VideoMessageControlsView.RemoteBottomControlsView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VideoMessageControlsView.RemoteBottomControlsView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VideoMessageControlsView.RemoteBottomControlsView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy15ConversationKit24VideoMessageControlsViewV012RemoteBottomiJ033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAKGMd);
    lazy protocol witness table accessor for type ModifiedContent<VideoMessageControlsView.RemoteBottomControlsView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VideoMessageControlsView.RemoteBottomControlsView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VideoMessageControlsView.RemoteBottomControlsView, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VideoMessageControlsView.RemoteBottomControlsView, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VideoMessageControlsView.RemoteBottomControlsView, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit24VideoMessageControlsViewV012RemoteBottomiJ033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type VideoMessageControlsView.RemoteBottomControlsView and conformance VideoMessageControlsView.RemoteBottomControlsView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VideoMessageControlsView.RemoteBottomControlsView, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VideoMessageControlsView.RemoteBottomControlsView and conformance VideoMessageControlsView.RemoteBottomControlsView()
{
  result = lazy protocol witness table cache variable for type VideoMessageControlsView.RemoteBottomControlsView and conformance VideoMessageControlsView.RemoteBottomControlsView;
  if (!lazy protocol witness table cache variable for type VideoMessageControlsView.RemoteBottomControlsView and conformance VideoMessageControlsView.RemoteBottomControlsView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VideoMessageControlsView.RemoteBottomControlsView and conformance VideoMessageControlsView.RemoteBottomControlsView);
  }

  return result;
}

uint64_t outlined init with take of VideoMessageControlsView(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_46();
  v5(v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>, _PaddingLayout>, _ConditionalContent<ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>, ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>, _PaddingLayout>, _ConditionalContent<ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>, ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>, _PaddingLayout>, _ConditionalContent<ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>, ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy15ConversationKit24VideoMessageControlsViewV03TopjK033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAMGACyA2NGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>, ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>, _PaddingLayout>, _ConditionalContent<ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>, ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy15ConversationKit24VideoMessageControlsViewV03TopiJ033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGAKGMd);
    lazy protocol witness table accessor for type ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit24VideoMessageControlsViewV03TopiJ033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type VideoMessageControlsView.TopControlsView and conformance VideoMessageControlsView.TopControlsView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VideoMessageControlsView.TopControlsView and conformance VideoMessageControlsView.TopControlsView()
{
  result = lazy protocol witness table cache variable for type VideoMessageControlsView.TopControlsView and conformance VideoMessageControlsView.TopControlsView;
  if (!lazy protocol witness table cache variable for type VideoMessageControlsView.TopControlsView and conformance VideoMessageControlsView.TopControlsView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VideoMessageControlsView.TopControlsView and conformance VideoMessageControlsView.TopControlsView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>, ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>, ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>, ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy15ConversationKit24VideoMessageControlsViewV03TopjK033_B419541366E265736F7249488C40E55CLLVAA14_PaddingLayoutVGANGMd);
    lazy protocol witness table accessor for type ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>, ModifiedContent<VideoMessageControlsView.TopControlsView, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<VStack<TupleView<(ModifiedContent<Spacer, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout>, _InsettableBackgroundShapeModifier<Color, Circle>>, AccessibilityAttachmentModifier>, ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>)>>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout>, _InsettableBackgroundShapeModifier<Color, Circle>>, AccessibilityAttachmentModifier>, ModifiedContent<HStack<ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>)>>, _PaddingLayout>, _FlexFrameLayout>>? ()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<VStack<TupleView<(ModifiedContent<Spacer, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout>, _InsettableBackgroundShapeModifier<Color, Circle>>, AccessibilityAttachmentModifier>, ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>)>>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout>, _InsettableBackgroundShapeModifier<Color, Circle>>, AccessibilityAttachmentModifier>, ModifiedContent<HStack<ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>)>>, _PaddingLayout>, _FlexFrameLayo;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<VStack<TupleView<(ModifiedContent<Spacer, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout>, _InsettableBackgroundShapeModifier<Color, Circle>>, AccessibilityAttachmentModifier>, ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>)>>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout>, _InsettableBackgroundShapeModifier<Color, Circle>>, AccessibilityAttachmentModifier>, ModifiedContent<HStack<ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>)>>, _PaddingLayout>, _FlexFrameLayo)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA6VStackVyAA9TupleViewVyAA08ModifiedD0VyAA6SpacerVAA16_FlexFrameLayoutVG_AIyAIyAIyAA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0P0VyAIyApAE10fontWeightyQrAA4FontV0R0VSgFQOyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAWSgGG_Qo_A2_yAA5ColorVSgGGG_AA010BorderlesspN0VQo_AA01_kL0VGAA026_InsettableBackgroundShapeX0VyA8_AA6CircleVGGAA023AccessibilityAttachmentX0VGAIyAEyAIyAIyAIyATyAA4TextVGA10_GA17_GAA08_PaddingL0VGGAMGtGGAIyAIyAA6HStackVyAGyAN_A27_AIyA41_yA35_GAMGtGGA34_GAMGGSgMd);
    lazy protocol witness table accessor for type _ConditionalContent<VStack<TupleView<(ModifiedContent<Spacer, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout>, _InsettableBackgroundShapeModifier<Color, Circle>>, AccessibilityAttachmentModifier>, ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>)>>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout>, _InsettableBackgroundShapeModifier<Color, Circle>>, AccessibilityAttachmentModifier>, ModifiedContent<HStack<ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>)>>, _PaddingLayout>, _FlexFrameLayout>> a();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<VStack<TupleView<(ModifiedContent<Spacer, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout>, _InsettableBackgroundShapeModifier<Color, Circle>>, AccessibilityAttachmentModifier>, ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>)>>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout>, _InsettableBackgroundShapeModifier<Color, Circle>>, AccessibilityAttachmentModifier>, ModifiedContent<HStack<ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>)>>, _PaddingLayout>, _FlexFrameLayo);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<VStack<TupleView<(ModifiedContent<Spacer, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout>, _InsettableBackgroundShapeModifier<Color, Circle>>, AccessibilityAttachmentModifier>, ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>)>>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout>, _InsettableBackgroundShapeModifier<Color, Circle>>, AccessibilityAttachmentModifier>, ModifiedContent<HStack<ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>)>>, _PaddingLayout>, _FlexFrameLayout>> a()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<VStack<TupleView<(ModifiedContent<Spacer, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout>, _InsettableBackgroundShapeModifier<Color, Circle>>, AccessibilityAttachmentModifier>, ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>)>>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout>, _InsettableBackgroundShapeModifier<Color, Circle>>, AccessibilityAttachmentModifier>, ModifiedContent<HStack<ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>)>>, _PaddingLayout>, _FlexFrameLayo;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<VStack<TupleView<(ModifiedContent<Spacer, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout>, _InsettableBackgroundShapeModifier<Color, Circle>>, AccessibilityAttachmentModifier>, ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>)>>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout>, _InsettableBackgroundShapeModifier<Color, Circle>>, AccessibilityAttachmentModifier>, ModifiedContent<HStack<ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>)>>, _PaddingLayout>, _FlexFrameLayo)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA6VStackVyAA9TupleViewVyAA08ModifiedD0VyAA6SpacerVAA16_FlexFrameLayoutVG_AIyAIyAIyAA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0P0VyAIyApAE10fontWeightyQrAA4FontV0R0VSgFQOyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAWSgGG_Qo_A2_yAA5ColorVSgGGG_AA010BorderlesspN0VQo_AA01_kL0VGAA026_InsettableBackgroundShapeX0VyA8_AA6CircleVGGAA023AccessibilityAttachmentX0VGAIyAEyAIyAIyAIyATyAA4TextVGA10_GA17_GAA08_PaddingL0VGGAMGtGGAIyAIyAA6HStackVyAGyAN_A27_AIyA41_yA35_GAMGtGGA34_GAMGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<Spacer, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout>, _InsettableBackgroundShapeModifier<Color, Circle>>, AccessibilityAttachmentModifier>, ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA16_FlexFrameLayoutVG_AGyAGyAGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAGyAnAE10fontWeightyQrAA4FontV0Q0VSgFQOyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAUSgGG_Qo_A0_yAA5ColorVSgGGG_AA010BorderlessoM0VQo_AA01_jK0VGAA026_InsettableBackgroundShapeW0VyA6_AA6CircleVGGAA023AccessibilityAttachmentW0VGAGyACyAGyAGyAGyARyAA4TextVGA8_GA15_GAA08_PaddingK0VGGAKGtGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout>, _InsettableBackgroundShapeModifier<Color, Circle>>, AccessibilityAttachmentModifier>, ModifiedContent<HStack<ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>)>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<VStack<TupleView<(ModifiedContent<Spacer, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout>, _InsettableBackgroundShapeModifier<Color, Circle>>, AccessibilityAttachmentModifier>, ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>)>>, ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout>, _InsettableBackgroundShapeModifier<Color, Circle>>, AccessibilityAttachmentModifier>, ModifiedContent<HStack<ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>)>>, _PaddingLayout>, _FlexFrameLayo);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAGySiSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t TTRBannerController.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t key path getter for TTRBannerController.delegate : TTRBannerController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t key path setter for TTRBannerController.delegate : TTRBannerController(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x80);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

void (*TTRBannerController.delegate.modify(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR___TTRBannerControllerInternal_delegate;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return DestinationQueryController.delegate.modify;
}

id TTRBannerController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRBannerController.init()()
{
  *&v0[OBJC_IVAR___TTRBannerControllerInternal_TTRBannerViewController] = 0;
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRBannerController();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t TTRBannerController.showTTRBanner(useFullLogArchive:call:feature:)(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v45 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_7();
  v48 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v44 = v6 - v5;
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_2_7();
  v46 = v8;
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v43 = v10 - v9;
  v11 = type metadata accessor for DispatchTimeInterval();
  OUTLINED_FUNCTION_2_7();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  v17 = (v16 - v15);
  v18 = type metadata accessor for DispatchTime();
  v41 = v18;
  OUTLINED_FUNCTION_2_7();
  v49 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v40 - v24;
  v26 = objc_allocWithZone(type metadata accessor for TapToRadarBannerViewController());
  TapToRadarBannerViewController.init(feature:)();
  v27 = *&v2[OBJC_IVAR___TTRBannerControllerInternal_TTRBannerViewController];
  *&v2[OBJC_IVAR___TTRBannerControllerInternal_TTRBannerViewController] = v28;
  v29 = v28;

  (*((*MEMORY[0x1E69E7D40] & *v29) + 0x1D0))(v42);
  type metadata accessor for OS_dispatch_queue();
  v42 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  *v17 = 5;
  (*(v13 + 104))(v17, *MEMORY[0x1E69E7F48], v11);
  MEMORY[0x1BFB20700](v22, v17);
  (*(v13 + 8))(v17, v11);
  v30 = *(v49 + 8);
  v49 += 8;
  v30(v22, v18);
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v31 + 24) = v2;
  aBlock[4] = partial apply for closure #1 in TTRBannerController.showTTRBanner(useFullLogArchive:call:feature:);
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_95;
  v32 = _Block_copy(aBlock);
  v33 = v29;
  v34 = v2;

  v35 = v43;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v37 = v44;
  v36 = v45;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v38 = v42;
  MEMORY[0x1BFB21510](v25, v35, v37, v32);
  _Block_release(v32);

  (*(v48 + 8))(v37, v36);
  (*(v46 + 8))(v35, v47);
  return (v30)(v25, v41);
}

void *closure #1 in TTRBannerController.showTTRBanner(useFullLogArchive:call:feature:)(void *a1, void *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x130))();
  if (v5)
  {
    v5 = (*((*v4 & *a1) + 0x1D8))();
  }

  result = (*((*v4 & *a2) + 0x78))(v5);
  if (result)
  {
    [result cleanupTTRBanner];

    return swift_unknownObjectRelease();
  }

  return result;
}

void TTRBannerController.buildTTRMessageBubbleRecipientsList(groupMessageUUID:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR___TTRBannerControllerInternal_TTRBannerViewController);
  if (v4)
  {
    v8 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x1E0);
    v9 = v4;
    v8(a1, a2, a3);
  }
}

id TTRBannerController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRBannerController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CKStateMachine.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for CKStateMachine.logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

double protocol witness for CallScreeningStateMachine.currentState.getter in conformance <> CKStateMachine<A>@<D0>(uint64_t a1@<X8>)
{
  specialized CKStateMachine.currentState.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t CKStateMachine.currentState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t protocol witness for CallScreeningStateMachine.transition(with:reason:validation:) in conformance <> CKStateMachine<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_24();
  v10 = swift_allocObject();
  *(v7 + 16) = v10;
  *(v10 + 16) = a6;
  *(v10 + 24) = a7;

  v11 = swift_task_alloc();
  *(v7 + 24) = v11;
  *v11 = v7;
  v11[1] = protocol witness for CallScreeningStateMachine.transition(with:reason:validation:) in conformance <> CKStateMachine<A>;

  return specialized CKStateMachine.transition(with:reason:validation:)();
}

uint64_t protocol witness for CallScreeningStateMachine.transition(with:reason:validation:) in conformance <> CKStateMachine<A>()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed CallScreening.State) -> (@error @owned Error)(__n128 *a1)
{
  v1 = OUTLINED_FUNCTION_9_18(a1);
  v5[6] = *(v2 + 48);
  return v3(v5, v1);
}

uint64_t specialized CKStateMachine.transition(with:reason:validation:)()
{
  OUTLINED_FUNCTION_24_0();
  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 24) = v5;
  *(v1 + 32) = v6;
  *(v1 + 104) = v7;
  *(v1 + 16) = v8;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_6_8();
  }

  v9 = static CKStateMachineActor.shared;
  *(v1 + 72) = static CKStateMachineActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized CKStateMachine.transition(with:reason:validation:), v9, 0);
}

{
  v45 = v0;
  v1 = *(v0 + 104);
  v2 = OUTLINED_FUNCTION_45_1();
  outlined copy of CallScreening.StateTransition(v2, v3, v1);
  v4 = OUTLINED_FUNCTION_45_1();
  outlined copy of CallScreening.StateTransition(v4, v5, v1);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 64);
  if (v8)
  {
    v41 = *(v0 + 32);
    v42 = *(v0 + 40);
    OUTLINED_FUNCTION_12_0();
    v10 = swift_slowAlloc();
    v44 = OUTLINED_FUNCTION_13_31();
    *v10 = 136446722;
    specialized CKStateMachine.description.getter();

    v11 = OUTLINED_FUNCTION_2_100();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v13);
    OUTLINED_FUNCTION_75_0();

    *(v10 + 4) = v9;
    *(v10 + 12) = 2082;
    v14 = OUTLINED_FUNCTION_17_62();
    v17 = CallScreening.StateTransition.description.getter(v14, v15, v16);
    v19 = v18;
    v20 = OUTLINED_FUNCTION_17_62();
    outlined consume of CallScreening.StateTransition(v20, v21, v22);
    v23 = OUTLINED_FUNCTION_17_62();
    outlined consume of CallScreening.StateTransition(v23, v24, v25);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v44);
    OUTLINED_FUNCTION_75_0();

    *(v10 + 14) = v17;
    *(v10 + 22) = 2082;
    *(v10 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v44);
    _os_log_impl(&dword_1BBC58000, v6, v7, "%{public}s Queuing request to transition to %{public}s with reason: %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  else
  {
    v27 = *(v0 + 16);
    v26 = *(v0 + 24);
    v28 = *(v0 + 104);
    outlined consume of CallScreening.StateTransition(v27, v26, v28);

    outlined consume of CallScreening.StateTransition(v27, v26, v28);
  }

  v29 = *(v0 + 56);
  v30 = *(v0 + 64);
  v32 = *(v0 + 24);
  v31 = *(v0 + 32);
  v33 = *(v0 + 16);
  v34 = *(v0 + 104);
  v35 = swift_allocObject();
  *(v35 + 16) = v30;
  *(v35 + 24) = v33;
  *(v35 + 32) = v32;
  *(v35 + 40) = v34;
  *(v35 + 48) = v31;
  *(v35 + 56) = *(v0 + 40);
  *(v35 + 72) = v29;
  OUTLINED_FUNCTION_24();
  v36 = swift_allocObject();
  *(v0 + 80) = v36;
  *(v36 + 16) = &async function pointer to partial apply for specialized closure #1 in CKStateMachine.transition(with:reason:validation:);
  *(v36 + 24) = v35;
  v37 = OUTLINED_FUNCTION_157();
  outlined copy of CallScreening.StateTransition(v37, v38, v34);
  v43 = (*MEMORY[0x1E69D8978] + MEMORY[0x1E69D8978]);

  v39 = swift_task_alloc();
  *(v0 + 88) = v39;
  *v39 = v0;
  v39[1] = specialized CKStateMachine.transition(with:reason:validation:);

  return v43();
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v5 = v4;
  *(v3 + 96) = v0;

  if (v0)
  {
    v6 = *(v3 + 72);
    v7 = closure #1 in VideoMessageInboxController.updateCallItems();
  }

  else
  {
    v8 = *(v3 + 72);

    v7 = closure #1 in VideoMessageInboxController.updateCallItems();
    v6 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t CKStateMachine.transition(with:reason:validation:)()
{
  OUTLINED_FUNCTION_24_0();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v7 = *v0;
  v1[8] = *(*v0 + 88);
  v1[9] = *(v7 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[10] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v1[11] = v9;
  v1[12] = *(v9 + 64);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_6_8();
  }

  v10 = static CKStateMachineActor.shared;
  v1[15] = static CKStateMachineActor.shared;

  return MEMORY[0x1EEE6DFA0](CKStateMachine.transition(with:reason:validation:), v10, 0);
}

{
  v42 = v0;
  v39 = *(v0[5].i64[1] + 16);
  v39(v0[7].i64[0], v0[1].i64[0], v0[5].i64[0]);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[7].i64[0];
  if (v3)
  {
    v5 = v0[6].i64[1];
    log = v1;
    v7 = v0[5].i64[0];
    v6 = v0[5].i64[1];
    v36 = v2;
    v8 = v0[3].i64[1];
    v33 = v0[2].u64[0];
    v31 = v0[1].i64[1];
    OUTLINED_FUNCTION_12_0();
    v9 = swift_slowAlloc();
    v41 = OUTLINED_FUNCTION_13_31();
    *v9 = 136446722;
    CKStateMachine.description.getter();

    v10 = OUTLINED_FUNCTION_2_100();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v12);
    OUTLINED_FUNCTION_75_0();

    *(v9 + 4) = v8;
    *(v9 + 12) = 2082;
    v39(v5, v4, v7);
    v13 = *(v6 + 8);
    v13(v4, v7);
    swift_getAssociatedConformanceWitness();
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v13(v5, v7);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v41);
    OUTLINED_FUNCTION_75_0();

    *(v9 + 14) = v14;
    *(v9 + 22) = 2082;
    *(v9 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v41);
    _os_log_impl(&dword_1BBC58000, log, v36, "%{public}s Queuing request to transition to %{public}s with reason: %{public}s", v9, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  else
  {
    (*(v0[5].i64[1] + 8))(v0[7].i64[0], v0[5].i64[0]);
  }

  v18 = v0[6].i64[0];
  v17 = v0[6].i64[1];
  v19 = v0[5].i64[0];
  v20 = v0[5].i64[1];
  v21 = v0[3].i64[1];
  v22 = v0[2].i64[0];
  v35 = v0[2].i64[1];
  v37 = v0[3].i64[0];
  v34 = v0[1].i64[1];
  v32 = v0[4];
  v39(v17, v0[1].i64[0], v19);
  v23 = (*(v20 + 80) + 40) & ~*(v20 + 80);
  v24 = (v18 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v25[1] = vextq_s8(v32, v32, 8uLL);
  v25[2].i64[0] = v21;
  (*(v20 + 32))(&v25->i8[v23], v17, v19);
  v26 = (v25->i64 + v24);
  *v26 = v34;
  v26[1] = v22;
  v27 = (v25->i64 + ((v24 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v27 = v35;
  v27[1] = v37;
  OUTLINED_FUNCTION_24();
  v28 = swift_allocObject();
  v0[8].i64[0] = v28;
  *(v28 + 16) = &async function pointer to partial apply for closure #1 in CKStateMachine.transition(with:reason:validation:);
  *(v28 + 24) = v25;
  v40 = (*MEMORY[0x1E69D8978] + MEMORY[0x1E69D8978]);

  v29 = swift_task_alloc();
  v0[8].i64[1] = v29;
  *v29 = v0;
  v29[1] = CKStateMachine.transition(with:reason:validation:);

  return v40();
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v5 = v4;
  *(v3 + 144) = v0;

  if (v0)
  {
    v6 = *(v3 + 120);
    v7 = CKStateMachine.transition(with:reason:validation:);
  }

  else
  {
    v8 = *(v3 + 120);

    v7 = CKStateMachine.transition(with:reason:validation:);
    v6 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t CKStateMachineContainer.__allocating_init()()
{
  v0 = swift_allocObject();
  CKStateMachineContainer.init()();
  return v0;
}

uint64_t static CKStateMachineActor.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_6_8();
  }
}

BOOL static CKStateMachineContainer.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 104))();
  v4 = (*(*a2 + 104))();
  v5 = v4;
  if (v3)
  {
    if (v4)
    {

      return v3 == v5;
    }

    goto LABEL_5;
  }

  if (v4)
  {
LABEL_5:

    return 0;
  }

  return 1;
}

uint64_t CKStateMachine.description.getter()
{
  v1 = *(*v0 + 80);
  OUTLINED_FUNCTION_2_7();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  v11 = 0;
  v12 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);
  MEMORY[0x1BFB20B10](0x4D65746174534B43, 0xEF3C656E69686361);
  MEMORY[0x1BFB20B10](0x6574617453, 0xE500000000000000);
  MEMORY[0x1BFB20B10](23358, 0xE200000000000000);
  v10 = v0;
  v7 = _Pointer.debugDescription.getter();
  MEMORY[0x1BFB20B10](v7);

  MEMORY[0x1BFB20B10](0xD000000000000010, 0x80000001BC4F5950);
  CKStateMachine.currentState.getter(v6);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  (*(v3 + 8))(v6, v1);
  MEMORY[0x1BFB20B10](41, 0xE100000000000000);
  return v11;
}

uint64_t CKStateMachineActor.ActorType.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t CKStateMachineActor.ActorType.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

uint64_t CKStateMachineContainer.__deallocating_deinit()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t CKStateMachineContainer.description.getter()
{
  _StringGuts.grow(_:)(43);

  v0 = _typeName(_:qualified:)();
  MEMORY[0x1BFB20B10](v0);

  MEMORY[0x1BFB20B10](23358, 0xE200000000000000);
  v1 = _Pointer.debugDescription.getter();
  MEMORY[0x1BFB20B10](v1);

  MEMORY[0x1BFB20B10](0xD000000000000016, 0x80000001BC516620);
  return 0x4D65746174534B43;
}

Swift::Int CKStateMachineError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CKStateMachineError()
{
  Hasher.init(_seed:)();
  CKStateMachineError.hash(into:)();
  return Hasher._finalize()();
}

uint64_t CKStateMachine.stateTransitioner.getter()
{
  OUTLINED_FUNCTION_0_1();

  return OUTLINED_FUNCTION_46();
}

uint64_t CKStateMachine.__allocating_init(initialState:logger:stateTransitioner:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_157();
  CKStateMachine.init(initialState:logger:stateTransitioner:)(v7, v8, a3, a4);
  return v6;
}

char *CKStateMachine.init(initialState:logger:stateTransitioner:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v64 = a3;
  v5 = v4;
  v70 = a4;
  v72 = a2;
  v7 = *v4;
  v8 = v7[10];
  OUTLINED_FUNCTION_2_7();
  v69 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v56 - v11;
  v13 = v7[11];
  v14 = type metadata accessor for CKStateMachine.StateUpdate();
  OUTLINED_FUNCTION_2_7();
  v63 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v56 - v17;
  v19 = v7[14];
  type metadata accessor for TaskQueue();
  *&v5[v19] = TaskQueue.__allocating_init()();
  OUTLINED_FUNCTION_13_38();
  v21 = v69;
  v22 = *(v69 + 16);
  v23 = &v5[*(v20 + 104)];
  v68 = a1;
  v61 = v22;
  v62 = v69 + 16;
  v22(v23, a1, v8);
  v24 = direct field offset for CKStateMachine.logger;
  v25 = type metadata accessor for Logger();
  v66 = *(v25 - 8);
  v67 = v25;
  (*(v66 + 16))(&v5[v24], v72);
  OUTLINED_FUNCTION_13_38();
  v27 = &v5[*(v26 + 128)];
  v28 = v70;
  *v27 = v64;
  v27[1] = v28;
  type metadata accessor for CurrentValueSubject();
  v64 = v14;
  swift_storeEnumTagMultiPayload();

  v60 = v18;
  CurrentValueSubject.__allocating_init(_:)();
  OUTLINED_FUNCTION_13_38();
  *&v5[*(v29 + 120)] = v30;
  CKStateMachine.currentState.getter(v12);
  (*(v13 + 56))(v8, v13);
  OUTLINED_FUNCTION_13_21();
  swift_beginAccess();
  swift_weakAssign();

  OUTLINED_FUNCTION_13_38();
  v32 = *(v31 + 104);
  OUTLINED_FUNCTION_142_1();
  swift_beginAccess();
  v33 = v21;
  v34 = *(v21 + 24);
  v34(&v5[v32], v12, v8);
  swift_endAccess();
  v35 = v65;
  (*(v13 + 72))(v8, v13);
  if (v35)
  {

    (*(v66 + 8))(v72, v67);
    v36 = *(v33 + 8);
    v36(v68, v8);
    v36(v12, v8);
  }

  else
  {
    v58 = 0;
    OUTLINED_FUNCTION_142_1();
    swift_beginAccess();
    v57 = v32;
    v59 = v12;
    v37 = v12;
    v38 = v8;
    v34(&v5[v32], v37, v8);
    swift_endAccess();
    v39 = CKStateMachine.description.getter();
    v41 = v40;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    v65 = v42;
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      OUTLINED_FUNCTION_12_0();
      v45 = swift_slowAlloc();
      v71[0] = v45;
      *v44 = 136446210;
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v71);

      *(v44 + 4) = v46;
      v47 = v65;
      _os_log_impl(&dword_1BBC58000, v65, v43, "%{public}s) initialized, notifying observers with initial state.", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }

    else
    {
    }

    v48 = v68;
    v49 = v69;
    OUTLINED_FUNCTION_13_38();
    v50 = v60;
    v51 = v38;
    v52 = v63;
    v61(v60, &v5[v57], v38);
    v53 = v64;
    swift_storeEnumTagMultiPayload();
    CurrentValueSubject.send(_:)();

    (*(v66 + 8))(v72, v67);
    v54 = *(v49 + 8);
    v54(v48, v51);
    (*(v52 + 8))(v50, v53);
    v54(v59, v51);
  }

  return v5;
}

uint64_t specialized closure #1 in CKStateMachine.transition(with:reason:validation:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 432) = a7;
  *(v8 + 440) = a8;
  *(v8 + 416) = a5;
  *(v8 + 424) = a6;
  *(v8 + 73) = a4;
  *(v8 + 400) = a2;
  *(v8 + 408) = a3;
  *(v8 + 392) = a1;
  *(v8 + 368) = a2;
  *(v8 + 376) = a3;
  *(v8 + 384) = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static CKStateMachineActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in CKStateMachine.transition(with:reason:validation:), v9, 0);
}

uint64_t specialized closure #1 in CKStateMachine.transition(with:reason:validation:)()
{
  v183 = v0;
  v1 = *(v0 + 73);
  v2 = OUTLINED_FUNCTION_46();
  outlined copy of CallScreening.StateTransition(v2, v3, v1);
  v4 = OUTLINED_FUNCTION_46();
  outlined copy of CallScreening.StateTransition(v4, v5, v1);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v173 = v0;
  if (os_log_type_enabled(v6, v7))
  {
    v168 = *(v0 + 416);
    v169 = *(v0 + 424);
    OUTLINED_FUNCTION_12_0();
    v8 = swift_slowAlloc();
    v176 = OUTLINED_FUNCTION_13_31();
    *v8 = 136446722;
    v9 = specialized CKStateMachine.description.getter();
    v11 = v10;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v176);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    v13 = OUTLINED_FUNCTION_18_58();
    v16 = CallScreening.StateTransition.description.getter(v13, v14, v15);
    v18 = v17;
    v19 = OUTLINED_FUNCTION_18_58();
    outlined consume of CallScreening.StateTransition(v19, v20, v21);
    v22 = OUTLINED_FUNCTION_18_58();
    outlined consume of CallScreening.StateTransition(v22, v23, v24);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v176);

    *(v8 + 14) = v25;
    *(v8 + 22) = 2082;
    v0 = v173;
    *(v8 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v168, v169, &v176);
    _os_log_impl(&dword_1BBC58000, v6, v7, "%{public}s processing request to transition to %{public}s with reason: %{public}s", v8, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  else
  {
    v27 = *(v0 + 400);
    v26 = *(v0 + 408);
    v28 = *(v0 + 73);
    outlined consume of CallScreening.StateTransition(v27, v26, v28);

    outlined consume of CallScreening.StateTransition(v27, v26, v28);
  }

  v170 = *(v0 + 432);
  v29 = (*(v0 + 392) + *(**(v0 + 392) + 104));
  OUTLINED_FUNCTION_13_21();
  swift_beginAccess();
  v30 = v29[1];
  v31 = v29[2];
  v32 = v29[3];
  v33 = v29[4];
  v34 = v29[5];
  v35 = v29[6];
  v176 = *v29;
  v177 = v30;
  v178 = v31;
  v179 = v32;
  v180 = v33;
  v181 = v34;
  v182 = v35;
  OUTLINED_FUNCTION_3_144();
  outlined copy of CallScreening.State(v36, v37, v38, v39, v40, v41, v42);
  v170(&v176);
  v43 = *(v173 + 392);
  OUTLINED_FUNCTION_3_144();
  outlined consume of CallScreening.State(v44, v45, v46, v47, v48, v49, v50);
  v51 = *(v43 + *(*v43 + 128));
  v52 = v29[1];
  v53 = v29[2];
  v54 = v29[3];
  v56 = v29[4];
  v55 = v29[5];
  v57 = v29[6];
  v176 = *v29;
  v177 = v52;
  v178 = v53;
  v179 = v54;
  v180 = v56;
  v181 = v55;
  v182 = v57;
  v58 = OUTLINED_FUNCTION_2_151();
  v171 = v59;
  outlined copy of CallScreening.State(v58, v60, v61, v62, v63, v64, v59);
  v51(v174, &v176, v173 + 368);
  v163 = v29;
  v65 = *(v173 + 400);
  v166 = *(v173 + 408);
  v164 = *(v173 + 73);
  v66 = OUTLINED_FUNCTION_2_151();
  outlined consume of CallScreening.State(v66, v67, v68, v69, v70, v71, v171);
  v72 = v174[1];
  *(v173 + 144) = v174[0];
  *(v173 + 160) = v72;
  *(v173 + 176) = v174[2];
  *(v173 + 192) = v175;
  v73 = CallScreening.State.stateTransition.getter();
  v75 = v74;
  LOBYTE(v55) = v76;
  LOBYTE(v65) = static CallScreening.StateTransition.== infix(_:_:)(v73, v74, v76, v65, v166, v164);
  outlined consume of CallScreening.StateTransition(v73, v75, v55);
  if (v65)
  {
    v77 = *v163;
    v78 = *(v163 + 1);
    v79 = *(v163 + 2);
    *(v173 + 248) = v163[6];
    *(v173 + 232) = v79;
    *(v173 + 216) = v78;
    *(v173 + 200) = v77;
    v167 = *(v163 + 1);
    v172 = *v163;
    v80 = v163[5];
    v165 = v163[4];
    v81 = v163[6];
    CallScreening.State.state.getter((v173 + 256));
    v82 = *(v173 + 280);
    v83 = *(v173 + 288);
    __swift_project_boxed_opaque_existential_1((v173 + 256), v82);
    v84 = *(v83 + 48);
    outlined init with copy of CallScreening.State(v173 + 200, v173 + 16);
    v84(v173 + 144, v82, v83);
    __swift_destroy_boxed_opaque_existential_1(v173 + 256);
    v109 = OUTLINED_FUNCTION_30_32();
    v110 = *(v173 + 216);
    v111 = *(v173 + 232);
    v112 = *(v173 + 200);
    v163[6] = *(v173 + 248);
    *(v163 + 1) = v110;
    *(v163 + 2) = v111;
    *v163 = v112;
    outlined consume of CallScreening.State(v109, v113, v114, v115, v116, v117, v118);
    *(v173 + 16) = v172;
    *(v173 + 32) = v167;
    *(v173 + 48) = v165;
    *(v173 + 56) = v80;
    *(v173 + 64) = v81;
    *(v173 + 72) = 0;
    outlined init with copy of CallScreening.State(v173 + 200, v173 + 80);
    outlined init with copy of CallScreening.State(v173 + 200, v173 + 80);
    CurrentValueSubject.send(_:)();
    outlined destroy of CallScreening.State(v173 + 200);
    OUTLINED_FUNCTION_13_21();
    swift_beginAccess();
    swift_weakAssign();
    OUTLINED_FUNCTION_13_21();
    swift_beginAccess();
    swift_weakAssign();
    OUTLINED_FUNCTION_30_32();
    v119 = OUTLINED_FUNCTION_19_47();
    v163[6] = v120;
    *(v163 + 1) = v121;
    *(v163 + 2) = v119;
    *v163 = v122;
    outlined consume of CallScreening.State(v123, v124, v125, v126, v127, v128, v129);
    CallScreening.State.state.getter((v173 + 80));
    v130 = *(v173 + 104);
    v131 = *(v173 + 112);
    __swift_project_boxed_opaque_existential_1((v173 + 80), v130);
    v132 = *(v131 + 56);
    outlined init with copy of CallScreening.State(v173 + 144, v173 + 16);
    v132(v130, v131);
    __swift_destroy_boxed_opaque_existential_1(v173 + 80);
    OUTLINED_FUNCTION_26_45();
    v133 = OUTLINED_FUNCTION_19_47();
    v163[6] = v134;
    *(v163 + 1) = v135;
    *(v163 + 2) = v133;
    *v163 = v136;
    outlined consume of CallScreening.State(v137, v138, v139, v140, v141, v142, v143);

    outlined init with copy of CallScreening.State(v173 + 144, v173 + 16);
    v144 = Logger.logObject.getter();
    v145 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v144, v145))
    {
      v146 = OUTLINED_FUNCTION_30_1();
      v176 = swift_slowAlloc();
      *v146 = 136446466;
      v147 = specialized CKStateMachine.description.getter();
      v149 = v148;

      v150 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v147, v149, &v176);

      *(v146 + 4) = v150;
      *(v146 + 12) = 2082;
      outlined init with copy of CallScreening.State(v173 + 200, v173 + 16);
      v151 = CallScreening.State.description.getter();
      v153 = v152;
      outlined destroy of CallScreening.State(v173 + 200);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v151, v153, &v176);
      OUTLINED_FUNCTION_75_0();

      *(v146 + 14) = v151;
      OUTLINED_FUNCTION_15_61(&dword_1BBC58000, v154, v145, "%{public}s updated its state from %{public}s, notifying observers.");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }

    else
    {
    }

    v155 = OUTLINED_FUNCTION_26_45();
    *(v173 + 80) = v155;
    *(v173 + 88) = v156;
    *(v173 + 96) = v157;
    *(v173 + 104) = v158;
    *(v173 + 112) = v159;
    *(v173 + 120) = v160;
    *(v173 + 128) = v161;
    *(v173 + 136) = 1;
    outlined copy of CallScreening.State(v155, v156, v157, v158, v159, v160, v161);
    CurrentValueSubject.send(_:)();
    v162 = *(v173 + 96);
    *(v173 + 16) = *(v173 + 80);
    *(v173 + 32) = v162;
    *(v173 + 48) = *(v173 + 112);
    *(v173 + 57) = *(v173 + 121);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v173 + 16, &_s15ConversationKit14CKStateMachineC11StateUpdateOyAA13CallScreeningO0E0O_GMd);
    outlined destroy of CallScreening.State(v173 + 144);
    outlined destroy of CallScreening.State(v173 + 200);
    OUTLINED_FUNCTION_13();
  }

  else
  {
    v86 = *(v173 + 400);
    v85 = *(v173 + 408);
    v87 = *(v173 + 73);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14CKStateMachineC5ErrorOyAA13CallScreeningO5StateO_GMd);
    lazy protocol witness table accessor for type CKStateMachine<CallScreening.State>.Error and conformance CKStateMachine<A>.Error();
    v88 = swift_allocError();
    v89 = OUTLINED_FUNCTION_19_47();
    *(v90 + 16) = v91;
    *(v90 + 32) = v89;
    *v90 = v92;
    *(v90 + 48) = v93;
    *(v90 + 56) = v86;
    *(v90 + 64) = v85;
    *(v90 + 72) = v87;
    *(v90 + 73) = 2;
    swift_willThrow();
    outlined copy of CallScreening.StateTransition(v86, v85, v87);

    v94 = v88;
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = OUTLINED_FUNCTION_30_1();
      v98 = swift_slowAlloc();
      OUTLINED_FUNCTION_12_0();
      v99 = swift_slowAlloc();
      v176 = v99;
      *v97 = 136446466;
      v100 = specialized CKStateMachine.description.getter();
      v102 = v101;

      v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v102, &v176);

      *(v97 + 4) = v103;
      *(v97 + 12) = 2114;
      v104 = v88;
      v105 = _swift_stdlib_bridgeErrorToNSError();
      *(v97 + 14) = v105;
      *v98 = v105;
      OUTLINED_FUNCTION_15_61(&dword_1BBC58000, v106, v96, "%{public}s) failed to enter state with Error: %{public}@");
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v98, &_sSo8NSObjectCSgMd);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      __swift_destroy_boxed_opaque_existential_1(v99);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }

    else
    {
    }

    swift_willThrow();
    OUTLINED_FUNCTION_13();
  }

  return v107();
}

uint64_t closure #1 in CKStateMachine.transition(with:reason:validation:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[22] = a3;
  v6[23] = a4;
  v6[20] = a1;
  v6[21] = a2;
  v7 = *a1;
  v8 = *(*a1 + 80);
  v6[26] = v8;
  v6[27] = *(v7 + 88);
  v9 = type metadata accessor for CKStateMachine.StateUpdate();
  v6[28] = v9;
  v6[29] = *(v9 - 8);
  v6[30] = swift_task_alloc();
  v6[31] = *(v8 - 8);
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[36] = AssociatedTypeWitness;
  v6[37] = *(AssociatedTypeWitness - 8);
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static CKStateMachineActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in CKStateMachine.transition(with:reason:validation:), v11, 0);
}

uint64_t closure #1 in CKStateMachine.transition(with:reason:validation:)()
{
  v102 = v0;
  v1 = *(v0[37] + 16);
  v1(v0[39], v0[21], v0[36]);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v99 = v2;
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[39];
  v96 = v1;
  if (v4)
  {
    v6 = v1;
    v7 = v0[36];
    v8 = v0[37];
    v89 = v0[38];
    v92 = v0[22];
    v93 = v0[23];
    OUTLINED_FUNCTION_12_0();
    v9 = swift_slowAlloc();
    v101[0] = OUTLINED_FUNCTION_13_31();
    *v9 = 136446722;
    v10 = CKStateMachine.description.getter();
    v90 = v3;
    v12 = v11;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, v101);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    v6(v89, v5, v7);
    v14 = *(v8 + 8);
    v14(v5, v7);
    swift_getAssociatedConformanceWitness();
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v14(v89, v7);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, v101);

    *(v9 + 14) = v18;
    *(v9 + 22) = 2082;
    *(v9 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v93, v101);
    _os_log_impl(&dword_1BBC58000, v99, v90, "%{public}s processing request to transition to %{public}s with reason: %{public}s", v9, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  else
  {
    v14 = *(v0[37] + 8);
    v14(v5, v0[36]);
  }

  v19 = v0[35];
  v20 = v0[24];
  CKStateMachine.currentState.getter(v19);
  v20(v19);
  v21 = v0[33];
  v22 = v0[20];
  v23 = v0[21];
  v100 = (v0[31] + 8);
  v95 = *v100;
  (*v100)(v0[35], v0[26]);
  OUTLINED_FUNCTION_0_1();
  v25 = *(v22 + *(v24 + 128));
  CKStateMachine.currentState.getter(v21);
  v25(v21, v23);
  v26 = v0[38];
  v27 = v0[36];
  v95(v0[33], v0[26]);
  v28 = OUTLINED_FUNCTION_157();
  v29(v28);
  swift_getAssociatedConformanceWitness();
  LOBYTE(v22) = dispatch thunk of static Equatable.== infix(_:_:)();
  v14(v26, v27);
  v30 = v0[26];
  v31 = v0[27];
  if (v22)
  {
    v32 = v0[34];
    CKStateMachine.currentState.getter(v0[32]);
    (*(v31 + 64))(v32, v30, v31);
    v33 = v0[32];
    v58 = v0[30];
    v57 = v0[31];
    v59 = v0[26];
    v91 = v0[27];
    v60 = v0[20];
    v61 = *(*v60 + 104);
    v94 = v0[34];
    OUTLINED_FUNCTION_142_1();
    swift_beginAccess();
    v97 = *(v57 + 24);
    v98 = v61;
    v97(v60 + v61, v33, v59);
    swift_endAccess();
    v88 = *(v57 + 16);
    v88(v58, v60 + v61, v59);
    swift_storeEnumTagMultiPayload();
    CurrentValueSubject.send(_:)();
    v62 = OUTLINED_FUNCTION_157();
    v87 = v63;
    (v63)(v62);
    v64 = *(v91 + 56);
    v65 = OUTLINED_FUNCTION_2_100();
    v64(v65);
    OUTLINED_FUNCTION_13_21();
    swift_beginAccess();
    swift_weakAssign();

    v66 = OUTLINED_FUNCTION_2_100();
    v64(v66);
    OUTLINED_FUNCTION_13_21();
    swift_beginAccess();
    swift_weakAssign();

    OUTLINED_FUNCTION_142_1();
    swift_beginAccess();
    v97(v60 + v61, v94, v59);
    swift_endAccess();
    v67 = OUTLINED_FUNCTION_2_100();
    v68(v67);
    v69 = v0[34];
    v70 = v0[26];
    OUTLINED_FUNCTION_142_1();
    swift_beginAccess();
    v97(v60 + v61, v69, v70);
    swift_endAccess();

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = v0[20];
      v74 = OUTLINED_FUNCTION_30_1();
      v101[0] = swift_slowAlloc();
      *v74 = 136446466;
      CKStateMachine.description.getter();

      v75 = OUTLINED_FUNCTION_157();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, v77);
      OUTLINED_FUNCTION_75_0();

      *(v74 + 4) = v73;
      *(v74 + 12) = 2082;
      swift_beginAccess();
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v79, v101);

      *(v74 + 14) = v80;
      OUTLINED_FUNCTION_15_61(&dword_1BBC58000, v81, v72, "%{public}s updated its state from %{public}s, notifying observers.");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }

    else
    {
    }

    v82 = v0[34];
    v83 = v0[32];
    v84 = v0[30];
    v85 = v0[28];
    v86 = v0[26];
    v88(v84, v60 + v98, v86);
    swift_storeEnumTagMultiPayload();
    CurrentValueSubject.send(_:)();
    v87(v84, v85);
    v95(v82, v86);
    v95(v83, v86);

    OUTLINED_FUNCTION_13();
  }

  else
  {
    v34 = v0[36];
    v35 = v0[34];
    v36 = v0[31];
    v37 = v0[21];
    type metadata accessor for CKStateMachine.Error();
    swift_getWitnessTable();
    v38 = swift_allocError();
    v40 = v39;
    v41 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v36 + 16))(v40, v35, v30);
    v96(v40 + v41, v37, v34);
    OUTLINED_FUNCTION_2_100();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v95(v35, v30);

    v42 = v38;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = OUTLINED_FUNCTION_30_1();
      v46 = swift_slowAlloc();
      OUTLINED_FUNCTION_12_0();
      v47 = swift_slowAlloc();
      v101[0] = v47;
      *v45 = 136446466;
      v48 = CKStateMachine.description.getter();
      v50 = v49;

      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, v101);

      *(v45 + 4) = v51;
      *(v45 + 12) = 2114;
      v52 = v38;
      v53 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 14) = v53;
      *v46 = v53;
      OUTLINED_FUNCTION_15_61(&dword_1BBC58000, v54, v44, "%{public}s) failed to enter state with Error: %{public}@");
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v46, &_sSo8NSObjectCSgMd);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      __swift_destroy_boxed_opaque_existential_1(v47);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }

    else
    {
    }

    swift_willThrow();

    OUTLINED_FUNCTION_13();
  }

  return v55();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async () -> (@error @owned Error)(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);

  return v5();
}

char *CKStateMachine.deinit()
{
  v1 = *v0;
  v2 = direct field offset for CKStateMachine.logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(&v0[v2]);
  OUTLINED_FUNCTION_0_1();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v4 + 104)]);
  OUTLINED_FUNCTION_0_1();

  OUTLINED_FUNCTION_0_1();

  OUTLINED_FUNCTION_0_1();

  return v0;
}

uint64_t CKStateMachine.__deallocating_deinit()
{
  CKStateMachine.deinit();

  return swift_deallocClassInstance();
}

uint64_t CKStateMachine.StateUpdate.description.getter()
{
  OUTLINED_FUNCTION_2_7();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_2_7();
  v2 = MEMORY[0x1EEE9AC00](v1);
  (*(v4 + 16))(&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 0x65756C61566F6ELL;
    }

    v6 = OUTLINED_FUNCTION_20_56();
    v7(v6);
    v15 = 0;
    v16 = 0xE000000000000000;
    v8 = 0x2064657265746E45;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_20_56();
    v10(v9);
    v15 = 0;
    v16 = 0xE000000000000000;
    v8 = 0x20676E6974697845;
  }

  MEMORY[0x1BFB20B10](v8, 0xE800000000000000);
  OUTLINED_FUNCTION_45_1();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v11 = v15;
  v12 = OUTLINED_FUNCTION_45_1();
  v13(v12);
  return v11;
}

uint64_t partial apply for closure #1 in CKStateMachine.transition(with:reason:validation:)()
{
  swift_getAssociatedTypeWitness();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_92(v0);
  *v1 = v2;
  v1[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  v3 = OUTLINED_FUNCTION_12_84();

  return closure #1 in CKStateMachine.transition(with:reason:validation:)(v3, v4, v5, v6, v7, v8);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@error @owned Error)()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_92(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_17(v1);

  return v4(v3);
}

_BYTE *storeEnumTagSinglePayload for CKStateMachineActor(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t type metadata completion function for CKStateMachine()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata completion function for CKStateMachine.StateUpdate()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CKStateMachine.StateUpdate(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 253) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_20:
      v10 = *(a1 + v3);
      if (v10 >= 3)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_20;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    switch(v4)
    {
      case 2:
        LODWORD(v4) = *a1;
        break;
      case 3:
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v4) = *a1;
        break;
      default:
        LODWORD(v4) = *a1;
        break;
    }
  }

  return (v4 | v9) + 254;
}

void storeEnumTagSinglePayload for CKStateMachine.StateUpdate(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_35:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_24;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_23;
      case 3:
        goto LABEL_35;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_24;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

void type metadata completion function for CKStateMachine.Error()
{
  type metadata accessor for (Sendable, String)();
  if (v0 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getTupleTypeMetadata2();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for CKStateMachine.Error(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = ((v5 + *(v6 + 80)) & ~*(v6 + 80)) + *(v6 + 64);
  v8 = 48;
  if (v7 > 0x30)
  {
    v8 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_22;
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if ((v8 + 1) <= 3)
  {
    v13 = ((a2 + ~(-1 << v10) - 252) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v13 < 2)
    {
LABEL_22:
      v15 = *(a1 + v8);
      if (v15 >= 4)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_22;
  }

LABEL_14:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    switch(v9)
    {
      case 2:
        LODWORD(v9) = *a1;
        break;
      case 3:
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v9) = *a1;
        break;
      default:
        LODWORD(v9) = *a1;
        break;
    }
  }

  return (v9 | v14) + 253;
}

void storeEnumTagSinglePayload for CKStateMachine.Error(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = ((v7 + *(v8 + 80)) & ~*(v8 + 80)) + *(v8 + 64);
  if (v9 <= 0x30)
  {
    v9 = 48;
  }

  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  if (a3 < 0xFD)
  {
    v12 = 0;
  }

  else if (v10 <= 3)
  {
    v15 = ((a3 + ~(-1 << v11) - 252) >> v11) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (a2 > 0xFC)
  {
    v13 = a2 - 253;
    if (v10 < 4)
    {
      v14 = (v13 >> v11) + 1;
      if (v9 != -1)
      {
        v17 = v13 & ~(-1 << v11);
        bzero(a1, v10);
        if (v10 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v10 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v9 + 1);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v10] = v14;
        break;
      case 2:
        *&a1[v10] = v14;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = v14;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v12)
    {
      case 1:
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v10] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v9] = -a2;
        }

        break;
    }
  }
}

void type metadata accessor for (Sendable, String)()
{
  if (!lazy cache variable for type metadata for (Sendable, String))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss8Sendable_pMd);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Sendable, String));
    }
  }
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed CallScreening.State) -> (@error @owned Error)(__n128 *a1)
{
  v1 = OUTLINED_FUNCTION_9_18(a1);
  v5[6] = *(v2 + 48);
  return v3(v5, v1);
}

uint64_t outlined consume of CallScreening.StateTransition(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  switch(a3 >> 5)
  {
    case 0:
    case 1:
    case 2:

      break;
    case 3:
      result = outlined consume of CallScreening.EndingAction(result, a2, a3 & 0x1F);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t specialized closure #1 in CKStateMachine.transition(with:reason:validation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a2;
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = partial apply for closure #1 in CallRecordingService.stopRecording(call:completion:);

  return specialized closure #1 in CKStateMachine.transition(with:reason:validation:)(a1, v12, v13, v14, a3, a4, a5, a6);
}

uint64_t partial apply for specialized closure #1 in CKStateMachine.transition(with:reason:validation:)()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_92(v0);
  *v1 = v2;
  v1[1] = partial apply for closure #1 in CallRecordingService.stopRecording(call:completion:);
  v3 = OUTLINED_FUNCTION_12_84();

  return v4(v3);
}

uint64_t outlined consume of CallScreening.State(uint64_t result, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  switch(a7 >> 61)
  {
    case 0uLL:
    case 1uLL:
      goto LABEL_6;
    case 2uLL:

      goto LABEL_6;
    case 3uLL:

      goto LABEL_6;
    case 4uLL:

      goto LABEL_6;
    case 5uLL:
      outlined consume of CallScreening.EndingAction(result, a2, a3);
LABEL_6:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t *PlatformDisplayLink.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_193();
  }

  return &static PlatformDisplayLink.shared;
}

void PlatformDisplayLink.add(observer:)()
{
  swift_getObjectType();
  v0 = OUTLINED_FUNCTION_3_105();

  specialized PlatformDisplayLink.add(observer:)(v0, v1, v2, v3);
}

void PlatformDisplayLink.remove(observer:)()
{
  swift_getObjectType();
  v0 = OUTLINED_FUNCTION_3_105();

  specialized PlatformDisplayLink.remove(observer:)(v0, v1, v2, v3);
}

uint64_t DisplayLinkCallbackWrapper.displayLinkCallback(_:)(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = result;

    v2([v3 preferredFramesPerSecond]);

    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v2);
  }

  return result;
}

uint64_t DisplayLinkCallbackWrapper.__deallocating_deinit()
{
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t PlatformDisplayLink.__allocating_init()()
{
  v0 = swift_allocObject();
  PlatformDisplayLink.init()();
  return v0;
}

uint64_t static PlatformDisplayLink.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_193();
  }
}

uint64_t PlatformDisplayLink.init()()
{
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  *(v0 + 40) = 0;
  PlatformDisplayLinkBase.init()();
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = *(v1 + 16);
  *(v1 + 16) = partial apply for closure #1 in PlatformDisplayLink.init();
  *(v1 + 24) = v2;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v3);

  return v0;
}

uint64_t PlatformDisplayLinkBase.init()()
{
  type metadata accessor for DisplayLinkCallbackWrapper();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  return v0;
}

uint64_t closure #1 in PlatformDisplayLink.init()(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    v4 = *(v3 + 32);

    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32;
      do
      {
        outlined init with copy of WeakPlatformDisplayLinkObserver(v6, v9);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v7 = v9[1];
          ObjectType = swift_getObjectType();
          (*(v7 + 8))(a1, ObjectType, v7);
          swift_unknownObjectRelease();
        }

        outlined destroy of WeakPlatformDisplayLinkObserver(v9);
        v6 += 16;
        --v5;
      }

      while (v5);
    }
  }

  return result;
}

void PlatformDisplayLink.startIfNecessary()()
{
  OUTLINED_FUNCTION_1_24();
  if (*(*(v0 + 32) + 16))
  {
    if ((*(v0 + 40) & 1) == 0)
    {
      *(v0 + 40) = 1;
      PlatformDisplayLinkBase.start()();
    }
  }
}

uint64_t closure #2 in PlatformDisplayLink.remove(observer:)(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_unknownObjectRelease();
    return v4 == a2;
  }

  return result;
}

void PlatformDisplayLink.cancelIfNecessary()()
{
  OUTLINED_FUNCTION_1_24();
  if (!*(*(v0 + 32) + 16) && *(v0 + 40) == 1)
  {
    *(v0 + 40) = 0;
    PlatformDisplayLinkBase.cancel()();
  }
}

uint64_t PlatformDisplayLink.deinit()
{
  PlatformDisplayLinkBase.deinit();

  return v0;
}

uint64_t PlatformDisplayLinkBase.deinit()
{

  return v0;
}

uint64_t PlatformDisplayLink.__deallocating_deinit()
{
  PlatformDisplayLinkBase.deinit();

  return swift_deallocClassInstance();
}

id PlatformDisplayLinkBase.displayLink.getter()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = v0;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CADisplayLink);
    v4 = *(v0 + 16);
    v9[3] = type metadata accessor for DisplayLinkCallbackWrapper();
    v9[0] = v4;

    v5 = @nonobjc CADisplayLink.__allocating_init(target:selector:)(v9, sel_displayLinkCallback_);
    [v5 setPreferredFramesPerSecond_];
    v6 = *(v3 + 24);
    *(v3 + 24) = v5;
    v2 = v5;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

void PlatformDisplayLinkBase.start()(SEL *a1)
{
  v2 = PlatformDisplayLinkBase.displayLink.getter();
  v3 = [objc_opt_self() currentRunLoop];
  [v2 *a1];
}

id @nonobjc CADisplayLink.__allocating_init(target:selector:)(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  v5 = [swift_getObjCClassFromMetadata() displayLinkWithTarget:v4 selector:a2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v5;
}

uint64_t PlatformDisplayLinkBase.__deallocating_deinit()
{
  PlatformDisplayLinkBase.deinit();

  return swift_deallocClassInstance();
}

uint64_t PlatformDisplayLinkBase.__allocating_init()()
{
  v0 = swift_allocObject();
  PlatformDisplayLinkBase.init()();
  return v0;
}

void specialized PlatformDisplayLink.remove(observer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v10 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v11 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    swift_beginAccess();
    v12 = *(a2 + 32);
    v13 = *(v12 + 16);
    if (!v13)
    {
LABEL_9:
      v32 = xmmword_1BC4BB7D0;
      outlined destroy of WeakPlatformDisplayLinkObserver?(&v32);
      return;
    }

    v14 = v12 + 32;

    v15 = 0;
    while (1)
    {
      if (v15 >= *(v12 + 16))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      outlined init with copy of WeakPlatformDisplayLinkObserver(v14, v33);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v17 = Strong;
        swift_unknownObjectRelease();
        if (v17 == a1)
        {
          break;
        }
      }

      ++v15;
      outlined destroy of WeakPlatformDisplayLinkObserver(v33);
      v14 += 16;
      if (v13 == v15)
      {

        goto LABEL_9;
      }
    }

    outlined init with take of WeakPlatformDisplayLinkObserver(v33, &v32);
    v18 = outlined destroy of WeakPlatformDisplayLinkObserver?(&v32);
    MEMORY[0x1EEE9AC00](v18);
    *(&v30 - 2) = a1;
    *(&v30 - 1) = a4;
    swift_beginAccess();
    if (*(*(a2 + 32) + 16) < specialized MutableCollection._halfStablePartition(isSuffixElement:)(partial apply for closure #2 in PlatformDisplayLink.remove(observer:), (&v30 - 4)))
    {
      goto LABEL_42;
    }

    specialized Array.replaceSubrange<A>(_:with:)();
    swift_endAccess();
    swift_beginAccess();
    v19 = 0;
    v20 = *(a2 + 32);
    v21 = *(v20 + 16);
    for (i = 48; ; i += 16)
    {
      if (v21 == v19)
      {
        goto LABEL_32;
      }

      if (v19 >= *(v20 + 16))
      {
        goto LABEL_34;
      }

      outlined init with copy of WeakPlatformDisplayLinkObserver(v20 + i - 16, v33);
      v23 = swift_unknownObjectWeakLoadStrong();
      outlined destroy of WeakPlatformDisplayLinkObserver(v33);
      if (!v23)
      {
        break;
      }

      swift_unknownObjectRelease();
      ++v19;
    }

    v24 = v19 + 1;
    v25 = *(v20 + 16);
    if (v25 - 1 == v19)
    {
LABEL_32:
      specialized Array.replaceSubrange<A>(_:with:)();
      swift_endAccess();
      PlatformDisplayLink.cancelIfNecessary()();
      return;
    }

    while (v24 < v25)
    {
      outlined init with copy of WeakPlatformDisplayLinkObserver(v20 + i, v33);
      v26 = swift_unknownObjectWeakLoadStrong();
      outlined destroy of WeakPlatformDisplayLinkObserver(v33);
      if (v26)
      {
        swift_unknownObjectRelease();
        if (v24 != v19)
        {
          if ((v19 & 0x8000000000000000) != 0)
          {
            goto LABEL_37;
          }

          v27 = *(v20 + 16);
          if (v19 >= v27)
          {
            goto LABEL_38;
          }

          outlined init with copy of WeakPlatformDisplayLinkObserver(v20 + 32 + 16 * v19, v33);
          if (v24 >= v27)
          {
            goto LABEL_39;
          }

          outlined init with copy of WeakPlatformDisplayLinkObserver(v20 + i, v31);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(a2 + 32) = v20;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew()();
            v20 = v29;
            *(a2 + 32) = v29;
          }

          if (v19 >= *(v20 + 16))
          {
            goto LABEL_40;
          }

          outlined assign with take of WeakPlatformDisplayLinkObserver(v31, v20 + 16 * v19 + 32);
          *(a2 + 32) = v20;
          if (v24 >= *(v20 + 16))
          {
            goto LABEL_41;
          }

          outlined assign with take of WeakPlatformDisplayLinkObserver(v33, v20 + i);
          *(a2 + 32) = v20;
        }

        ++v19;
      }

      ++v24;
      v25 = *(v20 + 16);
      i += 16;
      if (v24 == v25)
      {
        if (v24 < v19)
        {
          goto LABEL_43;
        }

        goto LABEL_32;
      }
    }

LABEL_35:
    __break(1u);
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  swift_endAccess();
  __break(1u);
}

void specialized PlatformDisplayLink.add(observer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v10 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v11 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    swift_beginAccess();
    v12 = *(a2 + 32);
    v13 = *(v12 + 16);
    if (!v13)
    {
LABEL_9:
      v20 = xmmword_1BC4BB7D0;
      outlined destroy of WeakPlatformDisplayLinkObserver?(&v20);
      v22 = 0;
      swift_unknownObjectWeakInit();
      v22 = a4;
      swift_unknownObjectWeakAssign();
      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v18 = *(*(a2 + 32) + 16);
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v18);
      v19 = *(a2 + 32);
      *(v19 + 16) = v18 + 1;
      outlined init with take of WeakPlatformDisplayLinkObserver(v21, v19 + 16 * v18 + 32);
      *(a2 + 32) = v19;
      swift_endAccess();
      PlatformDisplayLink.startIfNecessary()();
      return;
    }

    v14 = v12 + 32;

    v15 = 0;
    while (v15 < *(v12 + 16))
    {
      outlined init with copy of WeakPlatformDisplayLinkObserver(v14, v21);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v17 = Strong;
        swift_unknownObjectRelease();
        if (v17 == a1)
        {

          outlined init with take of WeakPlatformDisplayLinkObserver(v21, &v20);
          outlined destroy of WeakPlatformDisplayLinkObserver?(&v20);
          return;
        }
      }

      ++v15;
      outlined destroy of WeakPlatformDisplayLinkObserver(v21);
      v14 += 16;
      if (v13 == v15)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t specialized AnsweringMachineComposer.composeActivityController<A, B>(callStatusService:callServices:activityController:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = type metadata accessor for Logger();
  v6[18] = v7;
  v6[19] = *(v7 - 8);
  v6[20] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static CallScreeningActor.shared;
  v6[21] = static CallScreeningActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized AnsweringMachineComposer.composeActivityController<A, B>(callStatusService:callServices:activityController:logger:), v8, 0);
}

uint64_t specialized AnsweringMachineComposer.composeActivityController<A, B>(callStatusService:callServices:activityController:logger:)()
{
  OUTLINED_FUNCTION_116_0();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (Features.isScreeningLiveActivityEnabled.getter() & 1) != 0 || (Features.receptionistEnabled.getter())
  {
    v1 = *(v0 + 160);
    v2 = *(v0 + 136);
    v3 = *(v0 + 144);
    v4 = *(v0 + 128);
    v5 = *(v0 + 112);
    v6 = *(*(v0 + 152) + 16);
    v22 = v3;
    v6(v1, v4, v3);
    outlined init with copy of IDSLookupManager(v5, v0 + 16);
    v7 = *(v2 + OBJC_IVAR____TtC15ConversationKit24AnsweringMachineComposer_config + 16);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit25LockScreenActivityServiceCy20CommunicationsUICore0E7WrapperCGMd);
    OUTLINED_FUNCTION_84();

    v9 = OUTLINED_FUNCTION_46();
    v12 = specialized LockScreenActivityService.init(logger:activityController:callServices:updateActivityInterval:)(v9, v10, v11, v7);
    *(v0 + 176) = v12;
    v6(v1, v4, v3);
    outlined init with copy of IDSLookupManager(v5, v0 + 56);
    v13 = type metadata accessor for HUDActivityService(0);
    OUTLINED_FUNCTION_84();
    v14 = HUDActivityService.init(logger:callServices:)(v1, (v0 + 56));
    *(v0 + 184) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit18ActivityController_pGMd);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1BC4BAA20;
    *(v15 + 56) = v8;
    *(v15 + 64) = &protocol witness table for LockScreenActivityService<A>;
    *(v15 + 32) = v12;
    *(v15 + 96) = v13;
    *(v15 + 104) = &protocol witness table for HUDActivityService;
    *(v15 + 72) = v14;
    v6(v1, v4, v22);
    *(v0 + 192) = type metadata accessor for AnsweringMachineActivityService();
    OUTLINED_FUNCTION_84();

    *(v0 + 200) = AnsweringMachineActivityService.init(activityControllers:logger:)(v15, v1);
    v16 = OUTLINED_FUNCTION_18_3();

    return MEMORY[0x1EEE6DFA0](v16, v17, v18);
  }

  else
  {
    v19 = *(v0 + 96);
    *(v19 + 32) = 0;
    *v19 = 0u;
    *(v19 + 16) = 0u;

    OUTLINED_FUNCTION_13();

    return v20();
  }
}

{
  OUTLINED_FUNCTION_24_0();
  type metadata accessor for MainActor();
  *(v0 + 208) = static MainActor.shared.getter();
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_21_1();
  v1 = OUTLINED_FUNCTION_1_4();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

{
  OUTLINED_FUNCTION_9();

  v0 = OUTLINED_FUNCTION_46();
  closure #1 in AnsweringMachineComposer.composeActivityController<A, B>(callStatusService:callServices:activityController:logger:)(v0, v1);
  v2 = OUTLINED_FUNCTION_31_33();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

{
  OUTLINED_FUNCTION_9();
  v1 = v0[25];
  v2 = v0[12];
  v2[3] = v0[24];
  v2[4] = &protocol witness table for AnsweringMachineActivityService;

  *v2 = v1;

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t _sScM3run10resultType4bodyxxm_xyYbKScMYcXEtYaKs8SendableRzlFZ15ConversationKit16ScreeningServiceC_Tt0t2g5(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x1EEE6DFA0](_sScM3run10resultType4bodyxxm_xyYbKScMYcXEtYaKs8SendableRzlFZ15ConversationKit16ScreeningServiceC_Tt0t2g5TY0_, 0, 0);
}

uint64_t _sScM3run10resultType4bodyxxm_xyYbKScMYcXEtYaKs8SendableRzlFZ15ConversationKit16ScreeningServiceC_Tt0t2g5TY0_()
{
  OUTLINED_FUNCTION_24_0();
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_21_1();
  v1 = OUTLINED_FUNCTION_1_4();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t _sScM3run10resultType4bodyxxm_xyYbKScMYcXEtYaKs8SendableRzlFZ15ConversationKit16ScreeningServiceC_Tt0t2g5TY1_()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 24);

  v1(v2);
  OUTLINED_FUNCTION_0_23();

  return v3();
}

void *specialized DelayedAnsweringMachine.init(isAnsweringMachineAvailable:makeAnsweringMachine:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TaskQueue();
  v4[2] = TaskQueue.__allocating_init()();
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v4[6] = a1;
  v4[7] = a2;
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a3;
  v10[4] = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd);
  dispatch thunk of TaskQueue.async<A>(_:)();

  return v4;
}

uint64_t specialized closure #1 in DelayedAnsweringMachine.init(isAnsweringMachineAvailable:makeAnsweringMachine:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static CallScreeningActor.shared;
  v3[8] = static CallScreeningActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in DelayedAnsweringMachine.init(isAnsweringMachineAvailable:makeAnsweringMachine:), v4, 0);
}

uint64_t specialized closure #1 in DelayedAnsweringMachine.init(isAnsweringMachineAvailable:makeAnsweringMachine:)()
{
  OUTLINED_FUNCTION_24_0();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v5 = (v0[6] + *v0[6]);
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = specialized closure #1 in DelayedAnsweringMachine.init(isAnsweringMachineAvailable:makeAnsweringMachine:);

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_0_23();

    return v4(1);
  }
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_14_1();
  *v2 = v1;
  v4 = *(v3 + 64);
  v5 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;
  *(v8 + 88) = v7;

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in DelayedAnsweringMachine.init(isAnsweringMachineAvailable:makeAnsweringMachine:), v4, 0);
}

{
  OUTLINED_FUNCTION_24_0();
  *(*(v0 + 72) + 24) = *(v0 + 88);

  OUTLINED_FUNCTION_0_23();

  return v1();
}

{
  OUTLINED_FUNCTION_24_0();
  v2 = v1;
  OUTLINED_FUNCTION_23_0();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;

  *v4 = v2 & 1;
  OUTLINED_FUNCTION_13();

  return v7();
}

uint64_t specialized AnsweringMachineTrackingServiceAdapter.init(logger:answeringMachine:)(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + direct field offset for AnsweringMachineTrackingServiceAdapter.onResult);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v2 + direct field offset for AnsweringMachineTrackingServiceAdapter.currentTrackedCallTask);
  *v6 = 0;
  v6[1] = 0;
  v6[2] = 0;
  v7 = direct field offset for AnsweringMachineTrackingServiceAdapter.logger;
  v8 = type metadata accessor for Logger();
  (*(*(v8 - 8) + 32))(v2 + v7, a1, v8);
  *(v2 + direct field offset for AnsweringMachineTrackingServiceAdapter.answeringMachine) = a2;
  return v2;
}

char *specialized LockScreenActivityService.init(logger:activityController:callServices:updateActivityInterval:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v15 = a2;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  type metadata accessor for TaskQueue();
  v16 = TaskQueue.__allocating_init()();
  *(v4 + 2) = v16;
  *&v4[direct field offset for LockScreenActivityService.viewModel] = 0;
  *&v4[*(*v4 + 144)] = 0;
  v11 = *(v9 + 16);
  v11(&v4[direct field offset for LockScreenActivityService.logger], a1, v8);
  *&v4[direct field offset for LockScreenActivityService.activityController] = v15;
  outlined init with copy of IDSLookupManager(a3, &v4[direct field offset for LockScreenActivityService.callServices]);
  *&v4[direct field offset for LockScreenActivityService.updateActivityInterval] = a4;
  v11(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);

  dispatch thunk of TaskQueue.async(_:)();

  __swift_destroy_boxed_opaque_existential_1(a3);
  (*(v9 + 8))(a1, v8);
  return v4;
}

uint64_t specialized closure #1 in LockScreenActivityService.init(logger:activityController:callServices:updateActivityInterval:)()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t specialized CKStateMachine.init(initialState:logger:stateTransitioner:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(*v4 + 112);
  type metadata accessor for TaskQueue();
  *(v4 + v10) = TaskQueue.__allocating_init()();
  v11 = v5 + *(*v5 + 104);
  *(v11 + 48) = *(a1 + 48);
  v12 = *(a1 + 32);
  *(v11 + 16) = *(a1 + 16);
  *(v11 + 32) = v12;
  *v11 = *a1;
  v13 = direct field offset for CKStateMachine.logger;
  v14 = type metadata accessor for Logger();
  v54 = *(v14 - 8);
  v15 = *(v54 + 16);
  v66 = a2;
  v55 = v14;
  v15(v5 + v13, a2);
  v16 = (v5 + *(*v5 + 128));
  *v16 = a3;
  v16[1] = a4;
  v60 = 0u;
  memset(v61, 0, 24);
  v59 = 0u;
  v61[24] = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15ConversationKit14CKStateMachineC11StateUpdateOyAD13CallScreeningO0I0O_Gs5NeverOGMd);
  swift_allocObject();

  *(v5 + *(*v5 + 120)) = CurrentValueSubject.init(_:)();
  v17 = (v5 + *(*v5 + 104));
  swift_beginAccess();
  v65 = *(v17 + 6);
  v18 = v17[1];
  v62 = *v17;
  v63 = v18;
  v64 = v17[2];
  swift_beginAccess();
  swift_weakAssign();
  v19 = *v17;
  v20 = *(v17 + 1);
  v21 = *(v17 + 2);
  v22 = *(v17 + 3);
  v24 = *(v17 + 4);
  v23 = *(v17 + 5);
  v25 = *(v17 + 6);
  outlined init with copy of CallScreening.State(&v62, &v59);
  v26 = v63;
  *v17 = v62;
  v17[1] = v26;
  v17[2] = v64;
  *(v17 + 6) = v65;
  outlined consume of CallScreening.State(v19, v20, v21, v22, v24, v23, v25);
  CallScreening.State.state.getter(&v56);
  v27 = *(&v57 + 1);
  v28 = *v58;
  __swift_project_boxed_opaque_existential_1(&v56, *(&v57 + 1));
  v29 = *(v28 + 56);
  outlined init with copy of CallScreening.State(&v62, &v59);
  v29(v27, v28);
  if (v53)
  {
    outlined destroy of CallScreening.State(&v62);

    (*(v54 + 8))(v66, v55);
    __swift_destroy_boxed_opaque_existential_1(&v56);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v56);
    v30 = *v17;
    v31 = *(v17 + 1);
    v32 = *(v17 + 2);
    v33 = *(v17 + 3);
    v34 = *(v17 + 4);
    v35 = *(v17 + 5);
    v36 = *(v17 + 6);
    v37 = v63;
    *v17 = v62;
    v17[1] = v37;
    v17[2] = v64;
    *(v17 + 6) = v65;
    outlined consume of CallScreening.State(v30, v31, v32, v33, v34, v35, v36);
    outlined init with copy of CallScreening.State(&v62, &v59);
    v38 = specialized CKStateMachine.description.getter();
    v40 = v39;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v59 = v44;
      *v43 = 136446210;
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v59);

      *(v43 + 4) = v45;
      _os_log_impl(&dword_1BBC58000, v41, v42, "%{public}s) initialized, notifying observers with initial state.", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x1BFB23DF0](v44, -1, -1);
      MEMORY[0x1BFB23DF0](v43, -1, -1);
    }

    else
    {
    }

    v46 = *(v17 + 1);
    v47 = *(v17 + 2);
    v48 = *(v17 + 3);
    v49 = *(v17 + 4);
    v50 = *(v17 + 5);
    v51 = *(v17 + 6);
    *&v56 = *v17;
    *(&v56 + 1) = v46;
    *&v57 = v47;
    *(&v57 + 1) = v48;
    *v58 = v49;
    *&v58[8] = v50;
    *&v58[16] = v51;
    v58[24] = 1;
    outlined copy of CallScreening.State(v56, v46, v47, v48, v49, v50, v51);
    CurrentValueSubject.send(_:)();
    outlined destroy of CallScreening.State(&v62);

    (*(v54 + 8))(v66, v55);
    v59 = v56;
    v60 = v57;
    *v61 = *v58;
    *&v61[9] = *&v58[9];
    outlined destroy of CallControlsService?(&v59, &_s15ConversationKit14CKStateMachineC11StateUpdateOyAA13CallScreeningO0E0O_GMd);
  }

  return v5;
}

void *AnsweringMachineSyncComposer.compose(isInSupportedEnvirement:timeToWaitForCall:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  type metadata accessor for AnsweringMachineStatusService();
  OUTLINED_FUNCTION_47_16();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_194();
  }

  v16 = type metadata accessor for Logger();
  v17 = __swift_project_value_buffer(v16, logger);
  (*(*(v16 - 8) + 16))(&v15[*(v4 + 20)], v17, v16);
  *v15 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v18 = &v15[*(v4 + 24)];
  *v18 = a1;
  *(v18 + 1) = a2;
  outlined init with copy of AnsweringMachineStatusService();
  v19 = ((*(v8 + 80) + 16) & ~*(v8 + 80)) + v10;
  v20 = swift_allocObject();
  outlined init with take of AnsweringMachineStatusService();
  outlined init with copy of AnsweringMachineStatusService();
  v21 = (v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  outlined init with take of AnsweringMachineStatusService();
  v23 = (v22 + v21);
  v24 = v28;
  *v23 = v27;
  v23[1] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit23DelayedAnsweringMachineCyAA13CallScreeningO04MaindE0CGMd);
  swift_allocObject();

  v25 = specialized DelayedAnsweringMachine.init(isAnsweringMachineAvailable:makeAnsweringMachine:)(partial apply for closure #1 in AnsweringMachineSyncComposer.compose(isInSupportedEnvirement:timeToWaitForCall:), v20, &async function pointer to partial apply for closure #2 in AnsweringMachineSyncComposer.compose(isInSupportedEnvirement:timeToWaitForCall:), v22);
  outlined destroy of AnsweringMachineStatusService(v15, type metadata accessor for AnsweringMachineStatusService);
  return v25;
}

uint64_t closure #2 in AnsweringMachineSyncComposer.compose(isInSupportedEnvirement:timeToWaitForCall:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = *(type metadata accessor for AnsweringMachineStatusService() - 8);
  v3[8] = v4;
  v3[9] = *(v4 + 64);
  v3[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[11] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[12] = v6;
  v3[13] = v5;

  return MEMORY[0x1EEE6DFA0](closure #2 in AnsweringMachineSyncComposer.compose(isInSupportedEnvirement:timeToWaitForCall:), v6, v5);
}

uint64_t closure #2 in AnsweringMachineSyncComposer.compose(isInSupportedEnvirement:timeToWaitForCall:)()
{
  OUTLINED_FUNCTION_9();
  outlined init with copy of AnsweringMachineStatusService();
  v0[14] = swift_allocObject();
  outlined init with take of AnsweringMachineStatusService();
  type metadata accessor for Defaults();
  OUTLINED_FUNCTION_24();
  swift_allocObject();
  v1 = *Defaults.init()();
  v2 = (*(v1 + 824))();

  OUTLINED_FUNCTION_24();
  swift_allocObject();
  v3 = *Defaults.init()();
  v4 = (*(v3 + 832))();

  v0[2] = v2;
  v0[3] = v4;
  v0[4] = 0x4008000000000000;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_25_3();
  }

  v5 = OUTLINED_FUNCTION_31_33();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

{
  OUTLINED_FUNCTION_44();
  v1 = v0[14];
  v3 = v0[6];
  v2 = v0[7];
  type metadata accessor for AnsweringMachineComposer();
  v0[15] = OUTLINED_FUNCTION_84();

  AnsweringMachineComposer.init(config:isEnabled:isEnabledM3:isAnsweringMachineAvailable:timeToWaitForCall:)(v0 + 2, closure #1 in default argument 1 of AnsweringMachineComposer.init(config:isEnabled:isEnabledM3:isAnsweringMachineAvailable:timeToWaitForCall:), 0, closure #1 in default argument 2 of AnsweringMachineComposer.init(config:isEnabled:isEnabledM3:isAnsweringMachineAvailable:timeToWaitForCall:), 0, partial apply for implicit closure #2 in implicit closure #1 in closure #2 in AnsweringMachineSyncComposer.compose(isInSupportedEnvirement:timeToWaitForCall:), v1, v3, v2);
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_130(v4);

  return AnsweringMachineComposer.compose()();
}

{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v5 = v4;
  *v5 = *v1;

  if (v0)
  {
  }

  else
  {

    *(v4 + 136) = v3;
  }

  OUTLINED_FUNCTION_319();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 136);

  OUTLINED_FUNCTION_0_23();

  return v2(v1);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_0_23();

  return v0(0);
}

uint64_t partial apply for closure #2 in AnsweringMachineSyncComposer.compose(isInSupportedEnvirement:timeToWaitForCall:)()
{
  OUTLINED_FUNCTION_9();
  v1 = type metadata accessor for AnsweringMachineStatusService();
  OUTLINED_FUNCTION_9_0(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = (v0 + ((*(v4 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_2(v8);
  *v9 = v10;
  v9[1] = CallScreening.MainAnsweringMachine.screenCall(withUUID:manualScreening:);

  return closure #2 in AnsweringMachineSyncComposer.compose(isInSupportedEnvirement:timeToWaitForCall:)(v0 + v3, v6, v7);
}

uint64_t AnsweringMachineComposer.__allocating_init(config:isEnabled:isEnabledM3:isAnsweringMachineAvailable:timeToWaitForCall:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  AnsweringMachineComposer.init(config:isEnabled:isEnabledM3:isAnsweringMachineAvailable:timeToWaitForCall:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  return v17;
}

uint64_t AnsweringMachineComposer.compose()()
{
  OUTLINED_FUNCTION_24_0();
  v1[15] = v0;
  v2 = type metadata accessor for TelephonyUtilitiesServices();
  v1[16] = v2;
  OUTLINED_FUNCTION_22(v2);
  v1[17] = OUTLINED_FUNCTION_74();
  v1[18] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[19] = v3;
  OUTLINED_FUNCTION_9_0(v3);
  v1[20] = v4;
  v1[21] = OUTLINED_FUNCTION_74();
  v1[22] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_25_3();
  }

  v1[23] = static CallScreeningActor.shared;
  v5 = OUTLINED_FUNCTION_31_33();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

{
  OUTLINED_FUNCTION_24_0();
  *(v0 + 232) = type metadata accessor for MainActor();
  *(v0 + 240) = static MainActor.shared.getter();
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_21_1();
  v1 = OUTLINED_FUNCTION_1_4();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

{
  OUTLINED_FUNCTION_23_1();
  v1 = v0[25];
  v2 = v0[24];
  v3 = v0[22];
  v4 = v0[18];
  v5 = v0[19];
  v6 = v0[17];

  v1(v3, v2, v5);
  AnsweringMachineComposer.callServices.getter(v4);
  v7 = [objc_opt_self() defaultCenter];
  v8 = [objc_opt_self() sharedInstance];
  type metadata accessor for CallStatusService();
  v9 = OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_6_109();
  outlined init with copy of AnsweringMachineStatusService();
  v0[31] = specialized CallStatusService.init(logger:notificationCenter:callServices:callCenter:)(v3, v7, v6, v8, v9);
  OUTLINED_FUNCTION_5_129();
  outlined destroy of AnsweringMachineStatusService(v4, v10);
  v11 = OUTLINED_FUNCTION_10_81();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

{
  OUTLINED_FUNCTION_24_0();
  v0[10] = v0[16];
  v0[11] = &protocol witness table for TelephonyUtilitiesServices;
  v0[32] = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  v0[33] = static MainActor.shared.getter();
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_21_1();
  v1 = OUTLINED_FUNCTION_1_4();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 256);

  AnsweringMachineComposer.callServices.getter(v1);
  v2 = OUTLINED_FUNCTION_10_81();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

{
  OUTLINED_FUNCTION_24_0();
  *(v0 + 272) = OUTLINED_FUNCTION_68_8();
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_21_1();
  v1 = OUTLINED_FUNCTION_1_4();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

{
  OUTLINED_FUNCTION_24_0();

  if (one-time initialization token for callScreeningActivityController != -1)
  {
    swift_once();
  }

  v0 = OUTLINED_FUNCTION_31_33();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

{
  OUTLINED_FUNCTION_24_0();
  *(v0 + 280) = OUTLINED_FUNCTION_68_8();
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_21_1();
  v1 = OUTLINED_FUNCTION_1_4();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

{
  OUTLINED_FUNCTION_24_0();

  *(v0 + 288) = static AnsweringMachineComposer.callScreeningActivityController;

  v1 = OUTLINED_FUNCTION_46();

  return MEMORY[0x1EEE6DFA0](v1, v2, 0);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = OUTLINED_FUNCTION_54_16();
  v2(v1);
  OUTLINED_FUNCTION_13_9(&async function pointer to specialized AnsweringMachineComposer.composeActivityController<A, B>(callStatusService:callServices:activityController:logger:));
  v9 = v3;
  v4 = swift_task_alloc();
  v0[37] = v4;
  *v4 = v0;
  v4[1] = AnsweringMachineComposer.compose();
  v5 = v0[36];
  v6 = v0[31];
  v7 = v0[22];

  return v9(v0 + 2, v6, v0 + 7, v5, v7);
}

{
  OUTLINED_FUNCTION_48();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;
  v4 = v1[27];
  v5 = v1[22];
  v6 = v1[19];
  v7 = *v0;
  *v3 = *v0;

  v4(v5, v6);
  __swift_destroy_boxed_opaque_existential_1((v2 + 7));
  v8 = swift_task_alloc();
  v2[38] = v8;
  *v8 = v7;
  v8[1] = AnsweringMachineComposer.compose();

  return AnsweringMachineComposer.composeStateMachine(activityController:)();
}

{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14_1();
  *v6 = v5;
  *(v8 + 312) = v7;
  *(v8 + 320) = v0;

  v9 = *(v2 + 184);
  if (v0)
  {
    v10 = AnsweringMachineComposer.compose();
  }

  else
  {
    v10 = AnsweringMachineComposer.compose();
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

{
  OUTLINED_FUNCTION_9();
  v1 = OUTLINED_FUNCTION_54_16();
  v2(v1);

  *(v0 + 328) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  OUTLINED_FUNCTION_21_1();
  v3 = OUTLINED_FUNCTION_1_4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 144);

  AnsweringMachineComposer.callServices.getter(v1);
  v2 = OUTLINED_FUNCTION_10_81();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

{
  OUTLINED_FUNCTION_24_0();
  *(v0 + 336) = OUTLINED_FUNCTION_68_8();
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_21_1();
  v1 = OUTLINED_FUNCTION_1_4();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

{
  OUTLINED_FUNCTION_24_0();

  if (one-time initialization token for viewModel != -1)
  {
    OUTLINED_FUNCTION_19_21();
  }

  *(v0 + 344) = static CallScreeningViewModelComposer.viewModel;

  v1 = OUTLINED_FUNCTION_46();

  return MEMORY[0x1EEE6DFA0](v1, v2, 0);
}

{
  OUTLINED_FUNCTION_24_0();
  *(v0 + 368) = OUTLINED_FUNCTION_68_8();
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_21_1();
  v1 = OUTLINED_FUNCTION_1_4();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

{
  OUTLINED_FUNCTION_9();

  outlined destroy of CallControlsService?(v0 + 16, &_s15ConversationKit18ActivityController_pSgMd);

  OUTLINED_FUNCTION_13();

  return v1();
}

uint64_t AnsweringMachineComposer.compose()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_44_18();
  OUTLINED_FUNCTION_23_1();
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_194();
  }

  v13 = v12[20];
  v14 = v12[15];
  v12[24] = __swift_project_value_buffer(v12[19], logger);
  v15 = *(v13 + 16);
  v12[25] = v15;
  v12[26] = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v16 = OUTLINED_FUNCTION_38_2();
  v15(v16);
  OUTLINED_FUNCTION_29_36();
  Logger.traceFunctionStart(file:function:line:)(v17, v18, v19, v20, 9, 2, 106);
  v21 = *(v13 + 8);
  v12[27] = v21;
  v12[28] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22 = OUTLINED_FUNCTION_15_14();
  v23 = v21(v22);
  if ((*(v14 + 32))(v23))
  {
    if (TUCallScreeningRTTEnabled())
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      (*(*static CallScreeningRTTHelper.shared + 152))();
    }

    OUTLINED_FUNCTION_34_33();

    return MEMORY[0x1EEE6DFA0](v24, v25, v26);
  }

  else
  {
    v28 = OUTLINED_FUNCTION_38_2();
    v15(v28);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.fault.getter();
    if (OUTLINED_FUNCTION_18_0(v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1BBC58000, v29, v30, "Throwing Error because the feature is disabled. Do not try to create and use an AM if the feature is disabled!", v31, 2u);
      OUTLINED_FUNCTION_27();
    }

    v32 = OUTLINED_FUNCTION_44_0();
    v21(v32);
    lazy protocol witness table accessor for type AnsweringMachineComposer.Error and conformance AnsweringMachineComposer.Error();
    swift_allocError();
    swift_willThrow();

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_34_33();

    return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
  }
}

void AnsweringMachineComposer.compose()()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 360);
  v2 = *(v0 + 120);

  closure #2 in AnsweringMachineComposer.compose()(v2);
  if (v1)
  {
  }

  else
  {
    v3 = OUTLINED_FUNCTION_31_33();

    MEMORY[0x1EEE6DFA0](v3, v4, v5);
  }
}

uint64_t AnsweringMachineComposer.compose()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_58_14();
  OUTLINED_FUNCTION_116_0();
  v15 = *(v14 + 352);
  v16 = *(v14 + 216);
  v17 = *(v14 + 176);
  v18 = *(v14 + 152);
  v28 = *(v14 + 136);
  (*(v14 + 200))(v17, *(v14 + 192), v18);

  OUTLINED_FUNCTION_29_36();
  specialized Logger.traceFunction<A>(returning:file:function:line:)();
  v16(v17, v18);
  swift_beginAccess();
  *&static AnsweringMachineComposer.shared = v15;
  *(&static AnsweringMachineComposer.shared + 1) = &protocol witness table for CallScreening.MainAnsweringMachine;

  swift_unknownObjectRelease();

  outlined destroy of CallControlsService?(v14 + 16, &_s15ConversationKit18ActivityController_pSgMd);

  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_13_3();

  return v21(v19, v20, v21, v22, v23, v24, v25, v26, v15, a10, v28, a12, a13, a14);
}

Swift::Int AnsweringMachineComposer.Error.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnsweringMachineComposer.Error()
{
  Hasher.init(_seed:)();
  AnsweringMachineComposer.Error.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AnsweringMachineComposer.Config.description.getter()
{
  _StringGuts.grow(_:)(77);
  MEMORY[0x1BFB20B10](0xD00000000000002ELL, 0x80000001BC516830);
  OUTLINED_FUNCTION_44_0();
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1BFB20B10](v0);

  MEMORY[0x1BFB20B10](0xD00000000000001ALL, 0x80000001BC516860);
  OUTLINED_FUNCTION_44_0();
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1BFB20B10](v1);

  MEMORY[0x1BFB20B10](41, 0xE100000000000000);
  return 0;
}