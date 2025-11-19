id SystemApertureIconView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void SystemApertureIconView.init(frame:)()
{
  OUTLINED_FUNCTION_30_30([objc_allocWithZone(MEMORY[0x1E69DCAE0]) init]);
  OUTLINED_FUNCTION_0_46();
  __break(1u);
}

id SystemApertureIconView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SystemApertureIconView.init(coder:)()
{
  OUTLINED_FUNCTION_30_30([objc_allocWithZone(MEMORY[0x1E69DCAE0]) init]);
  OUTLINED_FUNCTION_0_46();
  __break(1u);
}

Swift::Void __swiftcall SystemApertureIconView.layoutSubviews()()
{
  v4 = v0;
  v5 = type metadata accessor for FloatingPointRoundingRule();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  v12 = type metadata accessor for SystemApertureIconView.IconView(0);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v16 = v15 - v14;
  v30.receiver = v4;
  v30.super_class = type metadata accessor for SystemApertureIconView(0);
  objc_msgSendSuper2(&v30, sel_layoutSubviews);
  v17 = OBJC_IVAR____TtC15ConversationKit22SystemApertureIconView_iconView;
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_11_90();
  outlined init with copy of SystemApertureIcon(v4 + v17, v16, v18);
  v19 = SystemApertureIconView.IconView.view.getter();
  outlined destroy of SystemApertureIcon(v16, v1);
  [v4 bounds];
  [v19 sizeThatFits_];
  OUTLINED_FUNCTION_0_137();

  [v4 bounds];
  v22 = (CGRectGetWidth(v31) - v2) * 0.5;
  [v4 bounds];
  v23 = (CGRectGetHeight(v32) - v3) * 0.5;
  (*(v7 + 104))(v11, *MEMORY[0x1E69E7048], v5);
  v24 = [v4 traitCollection];
  [v24 displayScale];
  v26 = v25;
  v27 = CGFloat.rounded(_:toScale:)(v11, v25, v22);
  v28 = CGFloat.rounded(_:toScale:)(v11, v26, v23);

  (*(v7 + 8))(v11, v5);
  outlined init with copy of SystemApertureIcon(v4 + v17, v16, v1);
  v29 = SystemApertureIconView.IconView.view.getter();
  outlined destroy of SystemApertureIcon(v16, v1);
  [v29 setFrame_];
}

CGSize __swiftcall SystemApertureIconView.sizeThatFits(_:)(CGSize a1)
{
  v3 = v1;
  height = a1.height;
  width = a1.width;
  v6 = type metadata accessor for SystemApertureIconView.IconView(0);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  v11 = OBJC_IVAR____TtC15ConversationKit22SystemApertureIconView_iconView;
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_10_76();
  outlined init with copy of SystemApertureIcon(v3 + v11, v10, v12);
  v13 = SystemApertureIconView.IconView.view.getter();
  outlined destroy of SystemApertureIcon(v10, v2);
  [v13 sizeThatFits_];
  OUTLINED_FUNCTION_0_137();

  v14 = *(v3 + OBJC_IVAR____TtC15ConversationKit22SystemApertureIconView_minimumWidth);
  if (height > v14)
  {
    v14 = height;
  }

  v15 = width;
  result.height = v15;
  result.width = v14;
  return result;
}

void SystemApertureIconView.preferredLayoutMargins.getter()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v3 = type metadata accessor for SystemApertureIcon(0);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  v7 = v5 - v6;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - v10;
  v12 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  v31 = (*MEMORY[0x1E69E7D40] & *v0) + 104;
  v32 = v12;
  v12(v9);
  v13 = *(v11 + 2);
  v14 = v11[40];
  v15 = OUTLINED_FUNCTION_24_44();
  outlined copy of SystemApertureIconAsset(v15, v16, v17, v18, v19, v14);
  OUTLINED_FUNCTION_0_186();
  outlined destroy of SystemApertureIcon(v11, v20);
  if (v14 == 1)
  {

    v0 = 0;
    v21 = 0;
    v22 = 0x4025000000000000;
    v23 = 0x4025000000000000;
  }

  else
  {
    v24 = OUTLINED_FUNCTION_24_44();
    outlined consume of SystemApertureIconAsset(v24, v25, v26, v27, v28, 0);
    v32();
    v22 = *(v7 + 72);
    OUTLINED_FUNCTION_0_186();
    outlined destroy of SystemApertureIcon(v7, v29);
    v30 = v0;
    v23 = 0;
    v21 = 1;
  }

  *v2 = v0;
  *(v2 + 8) = v22;
  *(v2 + 16) = 0;
  *(v2 + 24) = v23;
  *(v2 + 32) = v21;
  OUTLINED_FUNCTION_30_0();
}

void SystemApertureIconView.updateIconView(using:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v59 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13_67(v7);
  v58 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v56 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v55 = v11 - v10;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for DispatchTime();
  OUTLINED_FUNCTION_1();
  v61 = v12;
  v62 = v13;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_17();
  v16 = (v14 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v49 - v18;
  v20 = OUTLINED_FUNCTION_4_24();
  v60 = type metadata accessor for SystemApertureIconView.IconView(v20);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_8();
  v24 = (v23 - v22);
  v26 = *v3;
  v25 = v3[1];
  v27 = v3[2];
  v28 = objc_allocWithZone(MEMORY[0x1E698E7D8]);
  OUTLINED_FUNCTION_6_4();

  v29 = v27;
  v30 = @nonobjc BSUICAPackageView.init(packageName:in:)(v26, v25, v27);
  if (v30)
  {
    v31 = v30;
    v54 = v4;
    v32 = OBJC_IVAR____TtC15ConversationKit22SystemApertureIconView_iconView;
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_10_76();
    outlined init with copy of SystemApertureIcon(v0 + v32, v24, v33);
    v34 = SystemApertureIconView.IconView.view.getter();
    outlined destroy of SystemApertureIcon(v24, v25);
    [v34 removeFromSuperview];

    [v1 addSubview_];
    v35 = v3[4];
    if (v35)
    {
      v53 = v32;
      v36 = v3[3];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      OUTLINED_FUNCTION_6_4();

      v51 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      v50 = v19;
      + infix(_:_:)();
      v37 = *(v62 + 8);
      v62 += 8;
      v52 = v37;
      v37(v16, v61);
      v38 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v39 = swift_allocObject();
      v39[2] = v38;
      v39[3] = v31;
      v39[4] = v36;
      v39[5] = v35;
      v63[4] = partial apply for closure #1 in SystemApertureIconView.updateIconView(using:);
      v63[5] = v39;
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 1107296256;
      v63[2] = thunk for @escaping @callee_guaranteed () -> ();
      v63[3] = &block_descriptor_90;
      v40 = _Block_copy(v63);
      v41 = v31;

      v42 = v55;
      static DispatchQoS.unspecified.getter();
      v63[0] = MEMORY[0x1E69E7CC0];
      lazy protocol witness table accessor for type VariableColorSymbolEffect and conformance VariableColorSymbolEffect(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v43 = v57;
      v44 = v54;
      v32 = v53;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v45 = v1;
      v46 = v50;
      v47 = v51;
      MEMORY[0x1BFB21510](v50, v42, v43, v40);
      _Block_release(v40);

      (*(v59 + 8))(v43, v44);
      (*(v56 + 8))(v42, v58);
      v48 = v46;
      v1 = v45;
      v52(v48, v61);
    }

    *v24 = v31;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_30_2();
    outlined assign with take of SystemApertureIconView.IconView(v24, v1 + v32);
    swift_endAccess();
  }

  OUTLINED_FUNCTION_30_0();
}

void closure #1 in SystemApertureIconView.updateIconView(using:)(uint64_t a1, id a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SystemApertureIconView.IconView(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = OBJC_IVAR____TtC15ConversationKit22SystemApertureIconView_iconView;
    swift_beginAccess();
    outlined init with copy of SystemApertureIcon(v11 + v12, v9, type metadata accessor for SystemApertureIconView.IconView);
    v13 = SystemApertureIconView.IconView.view.getter();
    outlined destroy of SystemApertureIcon(v9, type metadata accessor for SystemApertureIconView.IconView);

    if (v13 == a2)
    {
      outlined bridged method (mbgnn) of @objc BSUICAPackageView.setState(_:)(a3, a4, a2);
    }
  }
}

void SystemApertureIconView.updateIconViewForIntelligence()()
{
  type metadata accessor for SystemApertureIconView.IconView(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_17();
  v4 = (v2 - v3);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v32 - v6);
  v8 = OBJC_IVAR____TtC15ConversationKit22SystemApertureIconView_iconView;
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_101();
  outlined init with copy of SystemApertureIcon(v0 + v8, v7, v9);
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_1_151();
    outlined destroy of SystemApertureIcon(v7, v10);
  }

  else
  {
    v11 = *v7;
    v12 = [*v7 image];
    if (v12)
    {
      v32 = v12;
      v13 = v11;
      [v13 sizeToFit];
      v14 = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
      v33 = v4;
      v15 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1BC4BB980;
      v17 = objc_opt_self();
      v18 = [v17 systemBlueColor];
      v19 = [v18 CGColor];

      type metadata accessor for CGColorRef(0);
      v21 = v20;
      *(v16 + 56) = v20;
      *(v16 + 32) = v19;
      v22 = [v17 systemPurpleColor];
      v23 = [v22 &selRef_setZoomScale_];

      *(v16 + 88) = v21;
      *(v16 + 64) = v23;
      v24 = [v17 systemPinkColor];
      v25 = [v24 CGColor];

      *(v16 + 120) = v21;
      *(v16 + 96) = v25;
      outlined bridged method (mbnn) of @objc CAGradientLayer.colors.setter(v16, v15);
      [v15 setStartPoint_];
      [v15 setEndPoint_];
      v26 = v15;
      [v13 bounds];
      OUTLINED_FUNCTION_0_137();

      OUTLINED_FUNCTION_29_33(v26, sel_setFrame_);
      v27 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
      [v13 bounds];
      OUTLINED_FUNCTION_0_137();

      OUTLINED_FUNCTION_29_33(v27, sel_setFrame_);
      v28 = v32;
      v29 = [v32 CGImage];
      [v27 setContents_];

      [v26 setMask_];
      v30 = [v13 layer];

      [v30 addSublayer_];
      v31 = v33;
      *v33 = v13;
      *(v31 + 8) = v26;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_30_2();
      outlined assign with take of SystemApertureIconView.IconView(v31, v0 + v8);
      swift_endAccess();
    }

    else
    {
    }
  }
}

void SystemApertureIconView.updateIconView(with:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v70 = v2;
  type metadata accessor for SymbolEffectOptions.RepeatBehavior();
  OUTLINED_FUNCTION_1();
  v63 = v4;
  v64 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13_67(v5);
  type metadata accessor for SymbolEffectOptions();
  OUTLINED_FUNCTION_1();
  v66 = v7;
  v67 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v61 = v9 - v8;
  OUTLINED_FUNCTION_4_24();
  v10 = type metadata accessor for VariableColorSymbolEffect();
  OUTLINED_FUNCTION_1();
  v65 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_17();
  v15 = (v13 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v58 - v17;
  v19 = type metadata accessor for ActivitySymbol.Animation();
  OUTLINED_FUNCTION_1();
  v68 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_8();
  v24 = v23 - v22;
  v25 = type metadata accessor for SystemApertureIconView.IconView(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_17();
  v29 = (v27 - v28);
  MEMORY[0x1EEE9AC00](v30);
  v32 = (&v58 - v31);
  v33 = OBJC_IVAR____TtC15ConversationKit22SystemApertureIconView_iconView;
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_101();
  v69 = v1;
  outlined init with copy of SystemApertureIcon(v1 + v33, v32, v34);
  if (!swift_getEnumCaseMultiPayload())
  {
    v60 = v25;
    v58 = v10;
    v36 = *v32;
    [*v32 sizeToFit];
    v37 = v68;
    v59 = *(v68 + 16);
    v59(v24, v70, v19);
    v38 = v37;
    v39 = (*(v37 + 88))(v24, v19);
    v40 = v33;
    if (v39 != *MEMORY[0x1E6995E08])
    {
      if (v39 == *MEMORY[0x1E6995DF8])
      {
        v41 = v18;
        VariableColorSymbolEffect.init()();
        v68 = v19;
        v19 = v29;
        VariableColorSymbolEffect.iterative.getter();
        v42 = *(v65 + 8);
        v65 = v33;
        v43 = v58;
        v42(v41, v58);
        v29 = v62;
        static SymbolEffectOptions.RepeatBehavior.continuous.getter();
        MEMORY[0x1BFB20550](v29);
        (*(v63 + 8))(v29, v64);
        OUTLINED_FUNCTION_9_93();
        lazy protocol witness table accessor for type VariableColorSymbolEffect and conformance VariableColorSymbolEffect(v44, v45);
        OUTLINED_FUNCTION_21_50();
        v46 = OUTLINED_FUNCTION_23_51();
        v47(v46);
        v48 = v15;
      }

      else
      {
        if (v39 != *MEMORY[0x1E6995E00])
        {
          (*(v38 + 8))(v24, v19);
          goto LABEL_10;
        }

        v49 = v15;
        v50 = v18;
        VariableColorSymbolEffect.init()();
        v68 = v19;
        v19 = v29;
        VariableColorSymbolEffect.cumulative.getter();
        v42 = *(v65 + 8);
        v65 = v40;
        v43 = v58;
        v42(v50, v58);
        v29 = v62;
        static SymbolEffectOptions.RepeatBehavior.continuous.getter();
        MEMORY[0x1BFB20550](v29);
        (*(v63 + 8))(v29, v64);
        OUTLINED_FUNCTION_9_93();
        lazy protocol witness table accessor for type VariableColorSymbolEffect and conformance VariableColorSymbolEffect(v51, v52);
        OUTLINED_FUNCTION_21_50();
        v53 = OUTLINED_FUNCTION_23_51();
        v54(v53);
        v48 = v49;
      }

      v55 = v43;
      v40 = v65;
      v42(v48, v55);
    }

LABEL_10:
    v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11UIImageViewC_20CommunicationsUICore14ActivitySymbolV9AnimationOtMd) + 48);
    *v29 = v36;
    v59(v29 + v56, v70, v19);
    swift_storeEnumTagMultiPayload();
    v57 = v69;
    OUTLINED_FUNCTION_30_2();
    outlined assign with take of SystemApertureIconView.IconView(v29, v57 + v40);
    swift_endAccess();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_1_151();
  outlined destroy of SystemApertureIcon(v32, v35);
LABEL_11:
  OUTLINED_FUNCTION_30_0();
}

void SystemApertureIconView.updateIconView()()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v105 = type metadata accessor for SystemApertureIconView.IconView(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13_67(v3);
  v97 = type metadata accessor for SymbolEffectOptions();
  OUTLINED_FUNCTION_1();
  v96 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v95 = v7 - v6;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for ActivitySymbol.Animation();
  OUTLINED_FUNCTION_1();
  v101 = v9;
  v102 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17();
  v99 = v10 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v100 = &v91 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v106 = &v91 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit23SystemApertureIconAssetO_AA0cdE4ViewC0eG033_6EE0E32A0845C4FDB8F7C5508B010DAELLOtMd);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v91 - v18;
  v104 = type metadata accessor for SystemApertureIcon(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_17();
  v107 = v21 - v22;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v91 - v25;
  v27 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  v108 = (*MEMORY[0x1E69E7D40] & *v0) + 104;
  v109 = v27;
  v27(v24);
  v28 = *v26;
  v29 = *(v26 + 1);
  v30 = *(v26 + 2);
  v31 = *(v26 + 3);
  v32 = *(v26 + 4);
  v33 = v26[40];
  outlined copy of SystemApertureIconAsset(*v26, v29, v30, v31, v32, v33);
  OUTLINED_FUNCTION_0_186();
  outlined destroy of SystemApertureIcon(v26, v34);
  v35 = OBJC_IVAR____TtC15ConversationKit22SystemApertureIconView_iconView;
  OUTLINED_FUNCTION_4_0();
  v36 = &v19[*(v17 + 56)];
  OUTLINED_FUNCTION_6_101();
  outlined init with copy of SystemApertureIcon(v1 + v35, v36, v37);
  if ((v33 & 1) == 0)
  {
    v98 = v28;
    v92 = v29;
    v93 = v30;
    v94 = v32;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v45 = *v36;
    v46 = v31;
    v47 = v106;
    v40 = v107;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v48 = *(v36 + 8);
        OUTLINED_FUNCTION_4_30();
        v109();
        v49 = *(v40 + 80);
        OUTLINED_FUNCTION_0_186();
        outlined destroy of SystemApertureIcon(v40, v50);
        if (v49 == 1)
        {

          goto LABEL_8;
        }

        [v48 removeFromSuperlayer];
        v88 = v103;
        *v103 = v45;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_15_55();
        v89 = v45;
        outlined assign with take of SystemApertureIconView.IconView(v88, v1 + v35);
        v90 = swift_endAccess();
        SystemApertureIconView.updateIconView()(v90);

        OUTLINED_FUNCTION_3_136(v98);
        goto LABEL_4;
      case 2:
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11UIImageViewC_20CommunicationsUICore14ActivitySymbolV9AnimationOtMd);
        v54 = v102;
        v55 = v36 + *(v53 + 48);
        v56 = v101;
        v57 = (*(v101 + 32))(v47, v55, v102);
        (v109)(v57);
        v58 = v100;
        (*(v56 + 16))(v100, v40 + *(v104 + 36), v54);
        OUTLINED_FUNCTION_0_186();
        outlined destroy of SystemApertureIcon(v40, v59);
        v60 = static ActivitySymbol.Animation.== infix(_:_:)();
        v61 = *(v56 + 8);
        v61(v58, v54);
        if (v60)
        {
          v62 = v98;
          [v45 setImage_];
          OUTLINED_FUNCTION_3_136(v62);

          v61(v106, v54);
          goto LABEL_20;
        }

        v84 = v95;
        static SymbolEffectOptions.default.getter();
        UIImageView.removeAllSymbolEffects(options:animated:)();
        (*(v96 + 8))(v84, v97);
        v85 = v103;
        *v103 = v45;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_15_55();
        v86 = v45;
        outlined assign with take of SystemApertureIconView.IconView(v85, v1 + v35);
        v87 = swift_endAccess();
        SystemApertureIconView.updateIconView()(v87);
        OUTLINED_FUNCTION_3_136(v98);

        v61(v106, v54);
        goto LABEL_4;
      case 3:
        [*v36 removeFromSuperview];
        v63 = v45;
        v64 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
        v65 = v98;
        [v64 setImage_];
        [v1 addSubview_];
        v66 = v103;
        *v103 = v64;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_15_55();
        v67 = v64;
        outlined assign with take of SystemApertureIconView.IconView(v66, v1 + v35);
        swift_endAccess();
        v68 = [objc_allocWithZone(type metadata accessor for Features()) init];
        v69 = Features.receptionistEnabled.getter();

        if (v69)
        {
          v106 = v63;
          OUTLINED_FUNCTION_4_30();
          v39 = v109;
          v109();
          v70 = *(v40 + 80);
          OUTLINED_FUNCTION_0_186();
          outlined destroy of SystemApertureIcon(v40, v71);
          v72 = v94;
          v73 = v93;
          v74 = v92;
          if (v70)
          {
            SystemApertureIconView.updateIconViewForIntelligence()();
          }

          outlined consume of SystemApertureIconAsset(v98, v74, v73, v46, v72, 0);
        }

        else
        {
          OUTLINED_FUNCTION_3_136(v65);

LABEL_20:
          v39 = v109;
        }

        goto LABEL_3;
      default:
LABEL_8:
        v51 = v98;
        [v45 setImage_];

        OUTLINED_FUNCTION_3_136(v51);
        OUTLINED_FUNCTION_4_30();
        v39 = v109;
        v109();
        LODWORD(v51) = *(v40 + 80);
        OUTLINED_FUNCTION_0_186();
        outlined destroy of SystemApertureIcon(v40, v52);
        if (v51 == 1)
        {
          SystemApertureIconView.updateIconViewForIntelligence()();
        }

        else
        {
          OUTLINED_FUNCTION_4_30();
          v39();
          v76 = v100;
          v75 = v101;
          v77 = v40 + *(v104 + 36);
          v78 = v102;
          v105 = *(v101 + 16);
          v106 = (v101 + 16);
          v105(v100, v77, v102);
          OUTLINED_FUNCTION_0_186();
          outlined destroy of SystemApertureIcon(v40, v79);
          v80 = v99;
          (*(v75 + 104))(v99, *MEMORY[0x1E6995E08], v78);
          lazy protocol witness table accessor for type VariableColorSymbolEffect and conformance VariableColorSymbolEffect(&lazy protocol witness table cache variable for type ActivitySymbol.Animation and conformance ActivitySymbol.Animation, MEMORY[0x1E6995E10]);
          v81 = dispatch thunk of static Equatable.== infix(_:_:)();
          v82 = *(v75 + 8);
          v82(v80, v78);
          v82(v76, v78);
          if ((v81 & 1) == 0)
          {
            OUTLINED_FUNCTION_4_30();
            v39();
            v105(v76, v40 + *(v104 + 36), v78);
            OUTLINED_FUNCTION_0_186();
            outlined destroy of SystemApertureIcon(v40, v83);
            SystemApertureIconView.updateIconView(with:)();
            v82(v76, v78);
          }
        }

        goto LABEL_3;
    }
  }

  v110 = v28;
  v111 = v29;
  v112 = v30;
  v113 = v31;
  v114 = v32;
  SystemApertureIconView.updateIconView(using:)();

  OUTLINED_FUNCTION_1_151();
  outlined destroy of SystemApertureIcon(v36, v38);
  v39 = v109;
  v40 = v107;
LABEL_3:
  OUTLINED_FUNCTION_4_30();
  v39();
  v41 = *(v40 + 48);
  v42 = *(v40 + 56);

  OUTLINED_FUNCTION_0_186();
  outlined destroy of SystemApertureIcon(v40, v43);
  outlined bridged method (mbnn) of @objc NSObject.accessibilityLabel.setter(v41, v42, v1);
  [v1 setNeedsLayout];
LABEL_4:
  OUTLINED_FUNCTION_30_0();
}

uint64_t outlined init with copy of SystemApertureIcon(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t outlined destroy of SystemApertureIcon(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t SystemApertureIconView.shouldReplace(_:)(void *a1)
{
  v3 = type metadata accessor for SystemApertureIcon(0);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  type metadata accessor for SystemApertureIconView(0);
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    v13 = MEMORY[0x1E69E7D40];
    v14 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
    v15 = a1;
    v16 = v14();
    (*((*v13 & *v12) + 0x68))(v16);
    static SystemApertureIcon.== infix(_:_:)();
    v18 = v17;

    OUTLINED_FUNCTION_12_75();
    outlined destroy of SystemApertureIcon(v7, v19);
    outlined destroy of SystemApertureIcon(v10, v15);
    v20 = v18 ^ 1;
  }

  else
  {
    v20 = 1;
  }

  return v20 & 1;
}

id SystemApertureIconView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SystemApertureIconView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double protocol witness for SystemApertureAccessoryView.preferredLayoutMargins.getter in conformance SystemApertureIconView@<D0>(uint64_t a1@<X8>)
{
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xA8))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

id @nonobjc BSUICAPackageView.init(packageName:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = MEMORY[0x1BFB209B0]();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithPackageName:v5 inBundle:a3];

  return v6;
}

id outlined copy of SystemApertureIconAsset(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    a1 = a3;
    v6 = vars8;
  }

  return a1;
}

void outlined consume of SystemApertureIconAsset(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {
  }
}

uint64_t getEnumTagSinglePayload for SystemApertureIconAsset(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 41))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SystemApertureIconAsset(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for SystemApertureIcon()
{
  result = type metadata accessor for ActivitySymbol.Animation();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for SystemApertureIconView()
{
  result = type metadata accessor for SystemApertureIcon(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SystemApertureIconView.IconView(319);
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

void type metadata completion function for SystemApertureIconView.IconView()
{
  type metadata accessor for NSObject(319, &lazy cache variable for type metadata for UIImageView);
  if (v0 <= 0x3F)
  {
    type metadata accessor for (UIImageView, CALayer)();
    if (v1 <= 0x3F)
    {
      type metadata accessor for (UIImageView, ActivitySymbol.Animation)();
      if (v2 <= 0x3F)
      {
        type metadata accessor for NSObject(319, &lazy cache variable for type metadata for BSUICAPackageView);
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for (UIImageView, CALayer)()
{
  if (!lazy cache variable for type metadata for (UIImageView, CALayer))
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIImageView);
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for CALayer);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (UIImageView, CALayer));
    }
  }
}

void type metadata accessor for (UIImageView, ActivitySymbol.Animation)()
{
  if (!lazy cache variable for type metadata for (UIImageView, ActivitySymbol.Animation))
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIImageView);
    type metadata accessor for ActivitySymbol.Animation();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (UIImageView, ActivitySymbol.Animation));
    }
  }
}

uint64_t outlined assign with take of SystemApertureIconView.IconView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemApertureIconView.IconView(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id outlined bridged method (mbgnn) of @objc BSUICAPackageView.setState(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1BFB209B0]();
  v5 = [a3 setState_];

  return v5;
}

uint64_t lazy protocol witness table accessor for type VariableColorSymbolEffect and conformance VariableColorSymbolEffect(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TUConversationManager.conversation(with:)(uint64_t a1)
{
  v3 = [v1 activeConversations];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUConversation and conformance NSObject, &lazy cache variable for type metadata for TUConversation);
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v8[2] = a1;
  specialized Sequence.first(where:)(partial apply for closure #1 in TUConversationManager.conversation(with:), v8, v4);
  v6 = v5;

  return v6;
}

uint64_t closure #1 in TUConversationManager.conversation(with:)(id *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = static UUID.== infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  return v7 & 1;
}

uint64_t @nonobjc TUConversationManager.activatedConversationLinks.getter()
{
  v1 = [v0 activatedConversationLinks];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationLink);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationLink and conformance NSObject, &lazy cache variable for type metadata for TUConversationLink);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void MultiwayViewController.createCornerButtonsViews(listViewControllerParticipantCount:)(uint64_t a1)
{
  v2 = MultiwayViewController.createChangeLayoutButton()();
  if (static Platform.current.getter())
  {
    v3 = 0;
  }

  else
  {
    v4 = objc_allocWithZone(type metadata accessor for ButtonGradientBackgroundView());
    v3 = ButtonGradientBackgroundView.init(participantCount:)(a1);
  }

  if (static Platform.current.getter() == 2 || !static Platform.current.getter() && (MultiwayViewController.layoutIdiom.getter(&v5), !v5))
  {
    if (v3)
    {
      [v3 setHidden_];
    }

    [v2 setHidden_];
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  if (Features.isICUIRedesignEnabled.getter())
  {
    if (v3)
    {
      [v3 setHidden_];
    }

    [v2 setHidden_];
  }

  OUTLINED_FUNCTION_3_0();
}

id MultiwayViewController.createChangeLayoutButton()()
{
  v1 = v0;
  v2 = type metadata accessor for UIButton.Configuration();
  MEMORY[0x1EEE9AC00](v2 - 8);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIButton);
  MultiwayViewController.changeLayoutButtonConfiguration(wantsImage:)(1);
  v3 = UIButton.init(configuration:primaryAction:)();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = 1;
  aBlock[4] = partial apply for closure #1 in MultiwayViewController.createChangeLayoutButton();
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  aBlock[3] = &block_descriptor_15_1;
  v6 = _Block_copy(aBlock);

  [v3 setConfigurationUpdateHandler_];
  _Block_release(v6);
  v7 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_layoutStyle;
  swift_beginAccess();
  LODWORD(v7) = *(v1 + v7);
  v8 = objc_opt_self();
  v9 = &selRef_blackColor;
  if (!v7)
  {
    v9 = &selRef_whiteColor;
  }

  v10 = [v8 *v9];
  [v3 setTintColor_];

  v11 = objc_opt_self();
  v12 = v3;
  v13 = [v11 conversationKit];
  v24._object = 0xE000000000000000;
  v14.value._countAndFlagsBits = 0x61737265766E6F43;
  v14.value._object = 0xEF74694B6E6F6974;
  v15._countAndFlagsBits = 1145655879;
  v15._object = 0xE400000000000000;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v14, v13, v16, v24);

  outlined bridged method (mbnn) of @objc NSObject.accessibilityLabel.setter(v17._countAndFlagsBits, v17._object, v12);
  v18 = [v12 titleLabel];
  if (v18)
  {
    v19 = v18;
    v20 = [objc_opt_self() preferredFontForTextStyle_];
    [v19 setFont_];
  }

  v21 = [v12 titleLabel];
  [v21 setAdjustsFontForContentSizeCategory_];

  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 addTarget:v1 action:sel_didTapChangeLayoutButton forControlEvents:64];
  return v12;
}

uint64_t MultiwayViewController.changeLayoutButtonConfiguration(wantsImage:)(char a1)
{
  v3 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static UIButton.Configuration.gray()();
  v7 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_layoutStyle;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = objc_opt_self();
  if (v8 == 1)
  {
    v10 = [v9 whiteColor];
  }

  else
  {
    v10 = [v9 tertiarySystemBackgroundColor];
  }

  v11 = v10;
  v12 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.backgroundColor.setter();
  v12(v26, 0);
  v13 = [objc_opt_self() conversationKit];
  v31._object = 0xE000000000000000;
  v14.value._countAndFlagsBits = 0x61737265766E6F43;
  v14.value._object = 0xEF74694B6E6F6974;
  v15._countAndFlagsBits = 1145655879;
  v15._object = 0xE400000000000000;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v31._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v14, v13, v16, v31);

  UIButton.Configuration.title.setter();
  (*(v4 + 104))(v6, *MEMORY[0x1E69DC508], v3);
  result = UIButton.Configuration.cornerStyle.setter();
  if (a1)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
    v18 = *MEMORY[0x1E69DDD00];
    v20[64] = 0;
    v26[0] = 0xD000000000000014;
    v26[1] = 0x80000001BC514E30;
    v26[2] = 2;
    v26[3] = v18;
    v27 = 0;
    v28 = 4;
    v29 = 0;
    v30 = 0;
    v21[0] = 0xD000000000000014;
    v21[1] = 0x80000001BC514E30;
    v21[2] = 2;
    v21[3] = v18;
    v22 = 0;
    v23 = 4;
    v24 = 0;
    v25 = 0;
    v19 = v18;
    outlined init with copy of SymbolImageDescription(v26, v20);
    outlined destroy of SymbolImageDescription(v21);
    static UIImage.symbolImage(for:)(v26);
    outlined destroy of SymbolImageDescription(v26);
    UIButton.Configuration.image.setter();
    UIButton.Configuration.imagePadding.setter();
    return UIButton.Configuration.contentInsets.setter();
  }

  return result;
}

void closure #1 in MultiwayViewController.createChangeLayoutButton()(uint64_t a1, uint64_t a2, char a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    MultiwayViewController.changeLayoutButtonConfiguration(wantsImage:)(a3 & 1);
    v9 = type metadata accessor for UIButton.Configuration();
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v9);
    UIButton.configuration.setter();
  }
}

uint64_t MultiwayViewController.didTapDeskViewButton()()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deskViewTapHandler);
  result = swift_beginAccess();
  v3 = *v1;
  if (*v1)
  {

    v3(v4);
    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v3);
  }

  return result;
}

Swift::Void __swiftcall MultiwayViewController.updateChangeLayoutButtonAppearanceState()()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  memcpy(__dst, v1, sizeof(__dst));
  if (getEnumTag for TapInteraction.EventType(__dst) != 1)
  {
    v2 = v1[22];
    if (v2)
    {
      v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_layoutStyle;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      v4 = *(v0 + v3);
      v5 = objc_opt_self();
      v6 = v2;
      v7 = &selRef_blackColor;
      if (!v4)
      {
        v7 = &selRef_whiteColor;
      }

      v8 = [v5 *v7];
      [v6 setTintColor_];
    }
  }
}

Swift::Void __swiftcall MultiwayViewController.updateCornerButtonsVisibility()()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
  {
    MultiwayViewController.updateChangeLayoutButtonVisibilityIfNeeded()();
    MultiwayViewController.updateDeskViewButtonVisibility()();

    MultiwayViewController.updateTopCornerButtonsStackViewVisibility(animated:)(1);
  }
}

Swift::Void __swiftcall MultiwayViewController.updateChangeLayoutButtonVisibilityIfNeeded()()
{
  v1 = v0;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
  {
    v2 = &v0[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent];
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    memcpy(__dst, v2, sizeof(__dst));
    if (getEnumTag for TapInteraction.EventType(__dst) == 1 || !*(v2 + 25))
    {
      v5 = objc_opt_self();
      v6 = swift_allocObject();
      *(v6 + 16) = v1;
      aBlock[4] = partial apply for closure #1 in MultiwayViewController.updateChangeLayoutButtonVisibilityIfNeeded();
      aBlock[5] = v6;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_91;
      v7 = _Block_copy(aBlock);
      v8 = v1;

      [v5 animateWithDuration:v7 animations:0.2];
      _Block_release(v7);
    }

    else
    {
      memcpy(aBlock, v2, sizeof(aBlock));
      if (getEnumTag for TapInteraction.EventType(aBlock) != 1)
      {
        v3 = *(v2 + 22);
        if (v3)
        {
          v4 = v3;
          [v4 setHidden_];
        }
      }
    }
  }
}

Swift::Void __swiftcall MultiwayViewController.updateDeskViewButtonVisibility()()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
  {
    v1 = (v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    memcpy(__dst, v1, sizeof(__dst));
    if (getEnumTag for TapInteraction.EventType(__dst) != 1)
    {
      v2 = v1[24];
      if (v2)
      {
        v3 = v2;
        [v3 setHidden_];
      }
    }
  }
}

void MultiwayViewController.updateTopCornerButtonsStackViewVisibility(animated:)(char a1)
{
  v2 = v1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
  {
    v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
    swift_beginAccess();
    memcpy(__dst, &v2[v4], sizeof(__dst));
    memcpy(v14, &v2[v4], sizeof(v14));
    if (getEnumTag for TapInteraction.EventType(v14) != 1)
    {
      v5 = v14[25];
      if (v14[25])
      {
        if (a1)
        {
          v6 = objc_opt_self();
          v7 = swift_allocObject();
          *(v7 + 16) = v5;
          *(v7 + 24) = v2;
          aBlock[4] = partial apply for closure #1 in MultiwayViewController.updateTopCornerButtonsStackViewVisibility(animated:);
          aBlock[5] = v7;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
          aBlock[3] = &block_descriptor_6_4;
          v8 = _Block_copy(aBlock);
          v9 = v5;
          outlined init with copy of MultiwayViewController.ViewContent?(__dst, &v11);
          v10 = v2;

          [v6 animateWithDuration:v8 animations:0.2];

          outlined destroy of MultiwayViewController.ViewContent?(__dst);
          _Block_release(v8);
        }

        else
        {
          [v14[25] setHidden_];
        }
      }
    }
  }
}

uint64_t MultiwayViewController.shouldShowChangeLayoutButton.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(__dst, (v0 + v1), sizeof(__dst));
  memcpy(v12, (v0 + v1), sizeof(v12));
  if (getEnumTag for TapInteraction.EventType(v12) != 1)
  {
    v2 = v12[6];
    v3 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
    swift_beginAccess();
    v4 = *(v2 + v3);
    swift_beginAccess();

    outlined init with copy of MultiwayViewController.ViewContent?(__dst, &v10);
    v5 = MultiwayViewController.activeRemoteParticipants(in:)();

    v6 = *(v5 + 16);

    if ((v12[25] || MultiwayViewController.areControlsVisible.getter()) && v6 >= 3 && v4 != 129)
    {
      v9 = ConversationController.isOneToOneModeEnabled.getter();
      outlined destroy of MultiwayViewController.ViewContent?(__dst);
      v7 = v9 ^ 1;
      return v7 & 1;
    }

    outlined destroy of MultiwayViewController.ViewContent?(__dst);
  }

  v7 = 0;
  return v7 & 1;
}

BOOL MultiwayViewController.areControlsVisible.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
  swift_beginAccess();
  memcpy(__dst, v1, sizeof(__dst));
  if (getEnumTag for TapInteraction.EventType(__dst) == 1)
  {
    return 0;
  }

  v3 = v1[6];
  v4 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallConversationBannerState;
  swift_beginAccess();
  return *(v3 + v4) == 1;
}

BOOL MultiwayViewController.shouldShowChangeLayoutButtonBackground.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
  swift_beginAccess();
  memcpy(__dst, v1, sizeof(__dst));
  if (getEnumTag for TapInteraction.EventType(__dst) != 1)
  {
    if (v1[23])
    {
      memcpy(v5, v1, sizeof(v5));
      if (getEnumTag for TapInteraction.EventType(v5) != 1)
      {
        v2 = *v1;
        if (MultiwayViewController.shouldShowChangeLayoutButton.getter())
        {
          v3 = ParticipantListViewController.participantCount.getter();

          return v3 > 0;
        }
      }
    }
  }

  return 0;
}

void closure #1 in MultiwayViewController.updateChangeLayoutButtonVisibilityIfNeeded()(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
  swift_beginAccess();
  memcpy(__dst, v1, sizeof(__dst));
  if (getEnumTag for TapInteraction.EventType(__dst) != 1)
  {
    v2 = v1[22];
    if (v2)
    {
      v3 = v2;
      v4 = MultiwayViewController.shouldShowChangeLayoutButton.getter();
      v5 = 0.0;
      if (v4)
      {
        v5 = 1.0;
      }

      [v3 setAlpha_];
    }
  }

  memcpy(v10, v1, sizeof(v10));
  if (getEnumTag for TapInteraction.EventType(v10) != 1)
  {
    v6 = v1[23];
    if (v6)
    {
      v7 = v6;
      v8 = MultiwayViewController.shouldShowChangeLayoutButtonBackground.getter();
      v9 = 0.0;
      if (v8)
      {
        v9 = 1.0;
      }

      [v7 setAlpha_];
    }
  }
}

uint64_t outlined init with copy of MultiwayViewController.ViewContent?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of MultiwayViewController.ViewContent?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id closure #1 in MultiwayViewController.updateTopCornerButtonsStackViewVisibility(animated:)(void *a1)
{
  v2 = MultiwayViewController.areControlsVisible.getter();
  v3 = 0.0;
  if (v2)
  {
    v3 = 1.0;
  }

  return [a1 setAlpha_];
}

uint64_t HandoffControlsRecipeGenerator.init()()
{
  v0 = type metadata accessor for CallScreeningService();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
  type metadata accessor for Defaults();
  swift_allocObject();
  Defaults.init()();
  CallScreeningService.init(overrides:)();
  v7 = type metadata accessor for Features();
  v8 = [objc_allocWithZone(v7) init];
  type metadata accessor for SystemApertureIconFactory(0);
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E6995EE0];
  v11 = (v9 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
  v11[3] = v0;
  v11[4] = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(v2 + 16))(boxed_opaque_existential_1, v6, v0);
  v13 = (v9 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
  v13[3] = v7;
  v13[4] = &protocol witness table for Features;
  *v13 = v8;
  type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  (*(v2 + 8))(v6, v0);
  return v9;
}

void HandoffControlsRecipeGenerator.handoffHUDRecipe(controlsManager:)()
{
  OUTLINED_FUNCTION_29();
  v206 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v188 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v188 - v11;
  type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_6_102();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_17();
  v16 = (v14 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_62_13();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_8();
  v24 = v23 - v22;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  if ((*(v25 + 608))())
  {
    v205 = v8;
    v26 = (*MEMORY[0x1E69E7D40] & *v206) + 704;
    v204 = *((*MEMORY[0x1E69E7D40] & *v206) + 0x2C0);
    v203 = v26;
    v27 = v204();
    if (v27)
    {
      v28 = v27;
      v29 = [v27 handoffEligibility];
      if (v29)
      {
        v198 = v4;
        v193 = v16;
        v194 = v0;
        v196 = v12;

        v30 = TUConversation.participantListDisplayName.getter();
        v32 = v31;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);

        v33._countAndFlagsBits = v30;
        v33._object = v32;
        isa = NSAttributedString.__allocating_init(string:)(v33).super.isa;
        v200 = ConversationControlsStringProvider.handoffNearbySubtitle(conversation:)(v28).super.isa;
        v34 = ConversationControlsHelper.handoffBadgeImage(conversation:)(v28);
        v35 = [v28 remoteMembers];
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
        lazy protocol witness table accessor for type TUConversationMember and conformance NSObject();
        v36 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v37 = specialized Set.count.getter(v36);

        v202 = v34;
        v197 = v1;
        v199 = v28;
        if (v37)
        {
          type metadata accessor for ConversationControlsBadgingAvatarViewController();
          v38 = [v34 image];
          v39 = objc_opt_self();

          v40 = [v39 clearColor];
          v41 = v28;
          v192 = v30;
          v42 = ConversationControlsBadgingAvatarViewController.__allocating_init(conversation:badgeImage:displayName:badgeBackgroundColor:)(v41, v38, v30, v32, v40);
          v43 = [v42 view];
          v44 = MEMORY[0x1E69E7D40];
          (*((*MEMORY[0x1E69E7D40] & *v206) + 0x2A8))();
          v45 = (*((*v44 & *v42) + 0x58))(v24);
          OUTLINED_FUNCTION_53_16(v45);
          (*(v20 + 8))(v24, v18);
          v46 = one-time initialization token for conversationControls;
          OUTLINED_FUNCTION_29_34(v43);
          if (v46 != -1)
          {
            OUTLINED_FUNCTION_0_0();
          }

          v47 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_52(v47, &static Logger.conversationControls);
          v48 = v202;
          v49 = v202;

          v50 = v49;
          v51 = v200;
          v52 = v41;
          v53 = Logger.logObject.getter();
          v54 = static os_log_type_t.default.getter();

          v55 = os_log_type_enabled(v53, v54);
          v56 = v193;
          if (!v55)
          {

            goto LABEL_27;
          }

          v57 = swift_slowAlloc();
          v190 = v50;
          v58 = v57;
          v189 = swift_slowAlloc();
          v191 = OUTLINED_FUNCTION_29_7();
          v209[0] = v191;
          *v58 = 136315906;
          v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v192, v32, v209);
          LODWORD(v192) = v54;
          v60 = v59;

          *(v58 + 4) = v60;
          *(v58 + 12) = 2080;
          v61 = [(objc_class *)v51 string];
          v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v64 = v63;

          v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, v209);

          *(v58 + 14) = v65;
          *(v58 + 22) = 2112;
          *(v58 + 24) = v52;
          OUTLINED_FUNCTION_26_21();
          v66 = v189;
          *v189 = v67;
          *(v58 + 32) = 1024;
          v68 = v52;
          v69 = v190;

          *(v58 + 34) = v48 != 0;
          OUTLINED_FUNCTION_60_14();
          _os_log_impl(v70, v53, v71, v72, v58, 0x26u);
          outlined destroy of TapInteractionHandler?(v66, &_sSo8NSObjectCSgMd);
          OUTLINED_FUNCTION_27();
          swift_arrayDestroy();
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_27();
        }

        else
        {
          v84 = v30;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
          v85 = *MEMORY[0x1E69DDDC8];
          LOBYTE(v208) = 0;
          OUTLINED_FUNCTION_2_147(v85);
          outlined init with copy of SymbolImageDescription(v210, v207);
          outlined destroy of SymbolImageDescription(v209);
          v86 = static UIImage.symbolImage(for:)(v210);
          outlined destroy of SymbolImageDescription(v210);
          v87 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

          v88 = v87;
          [v88 setContentMode_];
          v89 = [objc_opt_self() whiteColor];
          [v88 setTintColor_];

          OUTLINED_FUNCTION_53_16([v88 hash]);
          v90 = one-time initialization token for conversationControls;
          OUTLINED_FUNCTION_29_34(v88);
          if (v90 != -1)
          {
            OUTLINED_FUNCTION_0_0();
          }

          v91 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_52(v91, &static Logger.conversationControls);
          v92 = v202;
          v93 = v202;

          v94 = v93;
          v95 = v200;
          v42 = Logger.logObject.getter();
          v53 = static os_log_type_t.default.getter();

          v96 = OUTLINED_FUNCTION_64_14();
          v56 = v193;
          if (!v96)
          {

            goto LABEL_27;
          }

          v97 = swift_slowAlloc();
          v192 = OUTLINED_FUNCTION_29_7();
          OUTLINED_FUNCTION_39_22(v192);
          *v97 = 136315650;
          v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v32, v207);

          *(v97 + 4) = v98;
          *(v97 + 12) = 2080;
          v99 = [(objc_class *)v95 string];
          v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v102 = v101;

          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v102, v207);
          OUTLINED_FUNCTION_81();
          *(v97 + 14) = v99;
          *(v97 + 22) = 1024;

          *(v97 + 24) = v92 != 0;
          OUTLINED_FUNCTION_36_0();
          _os_log_impl(v103, v104, v105, v106, v107, 0x1Cu);
          v53 = v192;
          swift_arrayDestroy();
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_4_4();
        }

LABEL_27:
        v108 = v205;
        v109 = v194;
        if (one-time initialization token for conversationControls != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v110 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v110, &static Logger.conversationControls);
        OUTLINED_FUNCTION_24_45();
        v112 = v111;
        v193 = v53;
        v113 = Logger.logObject.getter();
        v114 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v113, v114))
        {
          v115 = OUTLINED_FUNCTION_42();
          v116 = OUTLINED_FUNCTION_23();
          v209[0] = v116;
          *v115 = 136315138;
          OUTLINED_FUNCTION_50_19();
          v118 = v117();
          if (v118)
          {
            v119 = v118;
            v120 = [v118 state];

            v207[0] = v120;
            type metadata accessor for TUConversationState(0);
            v121 = String.init<A>(reflecting:)();
            v123 = v122;
          }

          else
          {
            v123 = 0xE300000000000000;
            v121 = 7104878;
          }

          v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v123, v209);

          *(v115 + 4) = v124;
          _os_log_impl(&dword_1BBC58000, v113, v114, "conversationState:%s", v115, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v116);
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_27();

          v108 = v205;
        }

        else
        {
        }

        OUTLINED_FUNCTION_38_29(3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v125 = OUTLINED_FUNCTION_3_2();
        *(v125 + 16) = xmmword_1BC4BAC30;
        v126 = v200;
        *(v125 + 32) = v200;
        v127 = type metadata accessor for AttributedString();
        OUTLINED_FUNCTION_10_0();
        __swift_storeEnumTagSinglePayload(v128, v129, v130, v127);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd);
        type metadata accessor for ConversationControlsAction();
        OUTLINED_FUNCTION_59_12();
        v131 = swift_allocObject();
        *(v131 + 16) = xmmword_1BC4BA940;
        OUTLINED_FUNCTION_43_20(v126);
        v132 = isa;
        OUTLINED_FUNCTION_55_3();
        static ConversationControlsAction.primaryCallAction(controlsManager:location:)();
        v133 = v109[9];
        OUTLINED_FUNCTION_10_0();
        __swift_storeEnumTagSinglePayload(v134, v135, v136, v127);
        v137 = (&v56->isa + v109[10]);
        v138 = v56 + v109[15];
        *(v138 + 32) = 0;
        *v138 = 0u;
        *(v138 + 16) = 0u;
        *(v138 + 40) = -2;
        OUTLINED_FUNCTION_56_16(v109[16]);
        *v139 = 1;
        v141 = OUTLINED_FUNCTION_4_129(v139, v140);
        outlined init with copy of ConversationControlsType(v141, v56);
        OUTLINED_FUNCTION_44_2();
        v56[6].isa = 0;
        v56[7].isa = v142;
        v143 = v201;
        v56[8].isa = 0;
        v56[9].isa = v143;
        v204 = v132;
        v56[10].isa = v132;
        v56[11].isa = v125;
        v137[1] = 0;
        v137[2] = 0;
        *v137 = 0;
        outlined assign with copy of AttributedString?(v108, v56 + v133);
        OUTLINED_FUNCTION_12_76();
        v144 = *(v131 + 16);
        if (v144 <= 2)
        {
          outlined destroy of TapInteractionHandler?(v108, &_s10Foundation16AttributedStringVSgMd);
          outlined destroy of ConversationControlsType(v209);
          *v138 = v131;
          *(v138 + 8) = 0u;
          *(v138 + 24) = 0u;
          *(v138 + 40) = 0;
          OUTLINED_FUNCTION_26_3();
          outlined init with copy of ConversationControlsRecipe(v158, v159);
          OUTLINED_FUNCTION_55_3();
          OUTLINED_FUNCTION_16_5();
          __swift_storeEnumTagSinglePayload(v160, v161, v162, v163);
          outlined destroy of ConversationControlsRecipe(v56);
          OUTLINED_FUNCTION_35_24();
        }

        else
        {

          v145 = Logger.logObject.getter();
          v125 = static os_log_type_t.fault.getter();

          if (OUTLINED_FUNCTION_64_14())
          {
            v137 = OUTLINED_FUNCTION_42();
            v132 = OUTLINED_FUNCTION_23();
            OUTLINED_FUNCTION_39_22(v132);
            *v137 = 136315138;
            v208 = v144;
            v146 = String.init<A>(reflecting:)();
            v148 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v146, v147, v207);

            *(v137 + 4) = v148;
            OUTLINED_FUNCTION_36_0();
            _os_log_impl(v149, v150, v151, v152, v153, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v132);
            OUTLINED_FUNCTION_27();
            OUTLINED_FUNCTION_4_4();
          }

          outlined destroy of TapInteractionHandler?(v205, &_s10Foundation16AttributedStringVSgMd);
          outlined destroy of ConversationControlsType(v209);
          OUTLINED_FUNCTION_35_24();
          outlined destroy of ConversationControlsRecipe(v56);
          v138 = v196;
          OUTLINED_FUNCTION_7_7();
          __swift_storeEnumTagSinglePayload(v154, v155, v156, v157);
        }

        OUTLINED_FUNCTION_3_62(v138);
        if (v164)
        {
          OUTLINED_FUNCTION_8_95(v211);
          OUTLINED_FUNCTION_50_19();

          OUTLINED_FUNCTION_24_45();
          OUTLINED_FUNCTION_54_14();

          outlined destroy of TapInteractionHandler?(v138, &_s15ConversationKit0A14ControlsRecipeVSgMd);
          OUTLINED_FUNCTION_7_7();
          __swift_storeEnumTagSinglePayload(v168, v169, v170, v171);
        }

        else
        {
          outlined init with take of ConversationControlsRecipe(v138, v132);
          if (SBUIIsSystemApertureEnabled())
          {
            v173 = Logger.logObject.getter();
            v174 = static os_log_type_t.error.getter();
            if (OUTLINED_FUNCTION_25(v174))
            {
              v175 = OUTLINED_FUNCTION_33();
              OUTLINED_FUNCTION_39_2(v175);
              OUTLINED_FUNCTION_15_2(&dword_1BBC58000, v176, v177, "handoffHUD: [SystemAperture] showing content, but below system aperture");
              OUTLINED_FUNCTION_27();
            }

            OUTLINED_FUNCTION_8_95(v211);

            OUTLINED_FUNCTION_50_19();
            OUTLINED_FUNCTION_24_45();

            OUTLINED_FUNCTION_54_14();
            OUTLINED_FUNCTION_45_24();
            outlined destroy of TapInteractionHandler?(v209, &_s15ConversationKit21SystemApertureElementVSgMd);
            OUTLINED_FUNCTION_5_125();
          }

          else
          {
            OUTLINED_FUNCTION_8_95(v211);
            OUTLINED_FUNCTION_50_19();

            OUTLINED_FUNCTION_24_45();
            OUTLINED_FUNCTION_54_14();
          }

          outlined init with copy of ConversationControlsRecipe(v132, v137);
          OUTLINED_FUNCTION_16_5();
          __swift_storeEnumTagSinglePayload(v184, v185, v186, v187);
          outlined destroy of ConversationControlsRecipe(v132);
        }

        OUTLINED_FUNCTION_30_0();
        return;
      }
    }

    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v73 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v73, &static Logger.conversationControls);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_25(v75))
    {
      v76 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v76);
      OUTLINED_FUNCTION_15_2(&dword_1BBC58000, v77, v78, "handoffHUDRecipe: No active conversation to display nearby handoff HUD for.");
      OUTLINED_FUNCTION_27();
    }
  }

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_30_0();

  __swift_storeEnumTagSinglePayload(v79, v80, v81, v82);
}

void HandoffControlsRecipeGenerator.handoffCompletedRecipe(controlsManager:localizedDeviceCategory:)()
{
  OUTLINED_FUNCTION_29();
  v196.value._object = v2;
  v196.value._countAndFlagsBits = v3;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_42_25(v10, v181);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v181 - v13;
  type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_6_102();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_17();
  v18 = (v16 - v17);
  MEMORY[0x1EEE9AC00](v19);
  v20 = OUTLINED_FUNCTION_62_13();
  OUTLINED_FUNCTION_1();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_8();
  v26 = v25 - v24;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  if ((*(v27 + 608))())
  {
    v193 = v14;
    if ((*((*MEMORY[0x1E69E7D40] & *v5) + 0x548))())
    {
      v29 = v28;
      ObjectType = swift_getObjectType();
      v31 = (*(v29 + 8))(ObjectType, v29);
      swift_unknownObjectRelease();
      if (v31)
      {
        v188 = v7;
        v191 = v22;
        v185 = v18;
        v189 = v0;
        v32 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_40_0();
        v33 = OUTLINED_FUNCTION_23_52();
        v34.super.isa = v32;
        v36 = OUTLINED_FUNCTION_17_0(v33, v35, 0x61737265766E6F43, 0xEF74694B6E6F6974, v34);
        v38 = v37;

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);

        v39._countAndFlagsBits = v36;
        v39._object = v38;
        isa = NSAttributedString.__allocating_init(string:)(v39).super.isa;
        v194 = ConversationControlsStringProvider.handoffCompletedSubtitle(localizedDeviceCategory:)(v196).super.isa;
        v40 = ConversationControlsHelper.handoffBadgeImage(conversation:)(v31);
        v41 = [v31 remoteMembers];
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
        v42 = v31;
        lazy protocol witness table accessor for type TUConversationMember and conformance NSObject();
        v43 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v44 = specialized Set.count.getter(v43);

        v192 = v40;
        v187 = v1;
        v190 = v42;
        if (v44)
        {
          type metadata accessor for ConversationControlsBadgingAvatarViewController();
          v45 = [v40 image];
          v46 = objc_opt_self();

          v47 = [v46 clearColor];
          v48 = v42;
          v184 = v36;
          v49 = ConversationControlsBadgingAvatarViewController.__allocating_init(conversation:badgeImage:displayName:badgeBackgroundColor:)(v48, v45, v36, v38, v47);
          v50 = [v49 view];
          v51 = MEMORY[0x1E69E7D40];
          (*((*MEMORY[0x1E69E7D40] & *v5) + 0x2A8))();
          v52 = (*((*v51 & *v49) + 0x58))(v26);
          OUTLINED_FUNCTION_29_34(v52);
          v191[1](v26, v20);
          v53 = one-time initialization token for conversationControls;
          v191 = v50;
          if (v53 != -1)
          {
            OUTLINED_FUNCTION_0_0();
          }

          v54 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_52(v54, &static Logger.conversationControls);
          v55 = v192;
          v56 = v192;

          v57 = v56;
          OUTLINED_FUNCTION_33_34();
          v59 = v58;
          v60 = v48;
          v61 = Logger.logObject.getter();
          v62 = static os_log_type_t.default.getter();

          v63 = OUTLINED_FUNCTION_64_14();
          v64 = v189;
          if (v63)
          {
            v65 = swift_slowAlloc();
            v182 = v62;
            v66 = v65;
            v181 = swift_slowAlloc();
            v183 = OUTLINED_FUNCTION_29_7();
            v199[0] = v183;
            *v66 = 136315906;
            v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v184, v38, v199);

            *(v66 + 4) = v67;
            *(v66 + 12) = 2080;
            v68 = v55;
            v69 = [v59 string];
            v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v72 = v71;

            getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v72, v199);
            OUTLINED_FUNCTION_81();
            *(v66 + 14) = v69;
            *(v66 + 22) = 2112;
            *(v66 + 24) = v60;
            OUTLINED_FUNCTION_26_21();
            v73 = v181;
            *v181 = v74;
            *(v66 + 32) = 1024;
            v75 = v60;

            *(v66 + 34) = v68 != 0;
            OUTLINED_FUNCTION_60_14();
            _os_log_impl(v76, v61, v77, v78, v66, 0x26u);
            outlined destroy of TapInteractionHandler?(v73, &_sSo8NSObjectCSgMd);
            OUTLINED_FUNCTION_27();
            swift_arrayDestroy();
            OUTLINED_FUNCTION_4_4();
            OUTLINED_FUNCTION_27();
          }

          else
          {
          }

          v105 = v185;
        }

        else
        {
          v90 = v36;
          v91 = v38;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
          v92 = *MEMORY[0x1E69DDDC8];
          LOBYTE(v198) = 0;
          OUTLINED_FUNCTION_2_147(v92);
          outlined init with copy of SymbolImageDescription(v201, v197);
          outlined destroy of SymbolImageDescription(v199);
          v93 = static UIImage.symbolImage(for:)(v201);
          outlined destroy of SymbolImageDescription(v201);
          v94 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

          v95 = v94;
          [v95 setContentMode_];
          v96 = [objc_opt_self() whiteColor];
          [v95 setTintColor_];

          OUTLINED_FUNCTION_29_34([v95 hash]);
          v97 = one-time initialization token for conversationControls;
          v191 = v95;
          if (v97 != -1)
          {
            OUTLINED_FUNCTION_0_0();
          }

          v98 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_52(v98, &static Logger.conversationControls);
          v99 = v192;

          v100 = v99;
          OUTLINED_FUNCTION_33_34();
          v102 = v101;
          v103 = Logger.logObject.getter();
          static os_log_type_t.default.getter();

          v104 = OUTLINED_FUNCTION_64_14();
          v64 = v189;
          v105 = v185;
          if (v104)
          {
            v106 = swift_slowAlloc();
            v107 = OUTLINED_FUNCTION_29_7();
            OUTLINED_FUNCTION_39_22(v107);
            *v106 = 136315650;
            v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v91, v197);

            *(v106 + 4) = v108;
            *(v106 + 12) = 2080;
            v109 = [v102 string];
            v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v112 = v111;

            getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v112, v197);
            OUTLINED_FUNCTION_81();
            *(v106 + 14) = v109;
            *(v106 + 22) = 1024;

            *(v106 + 24) = v192 != 0;
            OUTLINED_FUNCTION_36_0();
            _os_log_impl(v113, v114, v115, v116, v117, 0x1Cu);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_27();
            OUTLINED_FUNCTION_4_4();
          }

          else
          {
          }
        }

        OUTLINED_FUNCTION_24_45();
        v199[0] = v119;
        v199[1] = v118;
        v200 = 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v120 = OUTLINED_FUNCTION_3_2();
        *(v120 + 16) = xmmword_1BC4BAC30;
        OUTLINED_FUNCTION_33_34();
        *(v121 + 32) = v122;
        v123 = type metadata accessor for AttributedString();
        v124 = v195;
        OUTLINED_FUNCTION_10_0();
        __swift_storeEnumTagSinglePayload(v125, v126, v127, v123);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd);
        type metadata accessor for ConversationControlsAction();
        OUTLINED_FUNCTION_9_3();
        OUTLINED_FUNCTION_59_12();
        v128 = swift_allocObject();
        *(v128 + 16) = xmmword_1BC4BA940;
        swift_storeEnumTagMultiPayload();
        v129 = v64[9];
        OUTLINED_FUNCTION_10_0();
        __swift_storeEnumTagSinglePayload(v130, v131, v132, v123);
        v133 = (v105 + v64[10]);
        v134 = v105 + v64[15];
        OUTLINED_FUNCTION_28_44();
        OUTLINED_FUNCTION_56_16(v135);
        *v136 = 1;
        v138 = OUTLINED_FUNCTION_4_129(v136, v137);
        outlined init with copy of ConversationControlsType(v138, v105);
        v139 = v191;
        v105[6] = 0;
        v105[7] = v139;
        OUTLINED_FUNCTION_44_2();
        v105[8] = 0;
        v105[9] = v140;
        v141 = isa;
        v105[10] = isa;
        v105[11] = v120;
        v142 = v124;
        v133[1] = 0;
        v133[2] = 0;
        *v133 = 0;

        object = v141;
        OUTLINED_FUNCTION_33_34();
        v145 = v144;
        outlined assign with copy of AttributedString?(v124, v105 + v129);
        OUTLINED_FUNCTION_12_76();
        v146 = *(v128 + 16);
        if (v146 <= 2)
        {
          outlined destroy of TapInteractionHandler?(v142, &_s10Foundation16AttributedStringVSgMd);
          outlined destroy of ConversationControlsType(v199);
          OUTLINED_FUNCTION_37_29();
          OUTLINED_FUNCTION_26_3();
          outlined init with copy of ConversationControlsRecipe(v158, v159);
          OUTLINED_FUNCTION_55_3();
          OUTLINED_FUNCTION_16_5();
          __swift_storeEnumTagSinglePayload(v160, v161, v162, v163);
          outlined destroy of ConversationControlsRecipe(v105);
          OUTLINED_FUNCTION_31_32();
        }

        else
        {
          if (one-time initialization token for conversationControls != -1)
          {
            OUTLINED_FUNCTION_0_0();
          }

          v147 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_52(v147, &static Logger.conversationControls);

          v148 = Logger.logObject.getter();
          v134 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v148, v134))
          {
            v129 = OUTLINED_FUNCTION_42();
            v149 = OUTLINED_FUNCTION_23();
            v196.value._object = object;
            v150 = v145;
            v151 = v149;
            OUTLINED_FUNCTION_39_22(v149);
            *v129 = 136315138;
            v198 = v146;
            v152 = String.init<A>(reflecting:)();
            getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v152, v153, v197);
            OUTLINED_FUNCTION_81();
            *(v129 + 4) = v146;
            _os_log_impl(&dword_1BBC58000, v148, v134, "Too many trailing actions (%s)", v129, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v151);
            v145 = v150;
            object = v196.value._object;
            OUTLINED_FUNCTION_27();
            OUTLINED_FUNCTION_4_4();
          }

          outlined destroy of TapInteractionHandler?(v195, &_s10Foundation16AttributedStringVSgMd);
          outlined destroy of ConversationControlsType(v199);
          OUTLINED_FUNCTION_31_32();
          outlined destroy of ConversationControlsRecipe(v105);
          v128 = v193;
          OUTLINED_FUNCTION_7_7();
          __swift_storeEnumTagSinglePayload(v154, v155, v156, v157);
        }

        OUTLINED_FUNCTION_3_62(v128);
        v164 = v192;
        if (v165)
        {
          OUTLINED_FUNCTION_16_59();

          outlined destroy of TapInteractionHandler?(v128, &_s15ConversationKit0A14ControlsRecipeVSgMd);
          OUTLINED_FUNCTION_7_7();
          __swift_storeEnumTagSinglePayload(v166, v167, v168, v169);
        }

        else
        {
          outlined init with take of ConversationControlsRecipe(v128, v146);
          if (SBUIIsSystemApertureEnabled())
          {
            if (one-time initialization token for conversationControls != -1)
            {
              OUTLINED_FUNCTION_0_0();
            }

            v171 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_52(v171, &static Logger.conversationControls);
            v172 = Logger.logObject.getter();
            v173 = static os_log_type_t.error.getter();
            if (OUTLINED_FUNCTION_25(v173))
            {
              v174 = OUTLINED_FUNCTION_33();
              OUTLINED_FUNCTION_39_2(v174);
              OUTLINED_FUNCTION_15_2(&dword_1BBC58000, v175, v176, "handoffCompleted: [SystemAperture] showing content, but below system aperture");
              OUTLINED_FUNCTION_27();
            }

            OUTLINED_FUNCTION_16_59();

            OUTLINED_FUNCTION_45_24();
            outlined destroy of TapInteractionHandler?(v199, &_s15ConversationKit21SystemApertureElementVSgMd);
            OUTLINED_FUNCTION_5_125();
          }

          else
          {
            OUTLINED_FUNCTION_16_59();
          }

          outlined init with copy of ConversationControlsRecipe(v146, v129);
          OUTLINED_FUNCTION_16_5();
          __swift_storeEnumTagSinglePayload(v177, v178, v179, v180);
          outlined destroy of ConversationControlsRecipe(v146);
        }

        OUTLINED_FUNCTION_30_0();
        return;
      }
    }

    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v79 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v79, &static Logger.conversationControls);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_25(v81))
    {
      v82 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v82);
      OUTLINED_FUNCTION_15_2(&dword_1BBC58000, v83, v84, "handoffCompletedRecipe: No conversation to display handoff completed banner for.");
      OUTLINED_FUNCTION_27();
    }
  }

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_30_0();

  __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
}

void HandoffControlsRecipeGenerator.lagunaHandoffHUDRecipe(controlsManager:suggestion:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v134 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v134 - v11;
  type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_6_102();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_17();
  v16 = (v14 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v134 - v18;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  if ((*(v20 + 616))())
  {
    v143 = v8;
    v140 = v12;
    v141 = v19;
    v142 = v4;
    OUTLINED_FUNCTION_27_20();
    v144 = v2;
    v21 = outlined bridged method (ob) of @objc TUNearbyDeviceHandle.name.getter([(objc_class *)v2 deviceHandle]);
    if (v22)
    {
      v23 = v21;
      v24 = v22;
    }

    else
    {
      v30 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_40_0();
      v31 = OUTLINED_FUNCTION_41_22();
      v32.super.isa = v30;
      v23 = OUTLINED_FUNCTION_17_0(v31, v33, 0x61737265766E6F43, v19, v32);
      v24 = v34;
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
    v35._countAndFlagsBits = v23;
    v35._object = v24;
    v36.super.isa = NSAttributedString.__allocating_init(string:)(v35).super.isa;
    v37 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_40_0();
    v38.super.isa = v37;
    v39 = OUTLINED_FUNCTION_17_0(0xD000000000000010, 0x80000001BC514E50, 0x61737265766E6F43, v19, v38);
    v41 = v40;

    v42._countAndFlagsBits = v39;
    v42._object = v41;
    v43.super.isa = NSAttributedString.__allocating_init(string:)(v42).super.isa;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
    SymbolImageDescribers.TVHandoff.symbolImageDescription.getter();
    v44 = static UIImage.symbolImage(for:)(v148);
    outlined destroy of SymbolImageDescription(v148);
    v45 = objc_allocWithZone(MEMORY[0x1E69DCAE0]);
    v139 = v44;
    v46 = [v45 initWithImage_];
    v47 = [objc_opt_self() secondaryLabelColor];
    [v46 setTintColor_];

    v48 = v46;
    [v48 setContentMode_];
    OUTLINED_FUNCTION_43_20([v48 hash]);
    v138 = v48;

    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v136 = v0;
    v49 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v49, &static Logger.conversationControls);
    v50 = v36.super.isa;
    v51 = v43.super.isa;
    v134[1] = v48;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();

    v54 = os_log_type_enabled(v52, v53);
    v135 = v50;
    if (v54)
    {
      v55 = swift_slowAlloc();
      v147[0] = OUTLINED_FUNCTION_29_7();
      *v55 = 136315394;
      v56 = [(objc_class *)v50 string];
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, v147);

      *(v55 + 4) = v60;
      *(v55 + 12) = 2080;
      v61 = [(objc_class *)v51 string];
      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v63;

      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, v147);

      *(v55 + 14) = v65;
      _os_log_impl(&dword_1BBC58000, v52, v53, "lagunaHandoffHUD:\n\ttitle:%s\n\tsubtitle:%s", v55, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_4_4();
    }

    v134[2] = v51;
    v147[0] = v144;
    LOBYTE(v147[5]) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v66 = OUTLINED_FUNCTION_3_2();
    *(v66 + 16) = xmmword_1BC4BAC30;
    *(v66 + 32) = v51;
    v67 = type metadata accessor for AttributedString();
    v68 = v143;
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v69, v70, v71, v67);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd);
    type metadata accessor for ConversationControlsAction();
    OUTLINED_FUNCTION_9_3();
    OUTLINED_FUNCTION_59_12();
    v74 = v73 & ~v72;
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_1BC4BA940;
    *(v75 + v74) = 0;
    swift_storeEnumTagMultiPayload();
    v76 = v136;
    v77 = v136[9];
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v78, v79, v80, v67);
    v81 = (v16 + v76[10]);
    v82.n128_f64[0] = OUTLINED_FUNCTION_28_44();
    *(v16 + v83) = 0;
    v84 = v16 + v76[17];
    v85 = (v16 + v76[18]);
    *v85 = 1;
    v86 = OUTLINED_FUNCTION_4_129(v85, v82);
    outlined init with copy of ConversationControlsType(v86, v16);
    OUTLINED_FUNCTION_51_19();
    v16[6] = 0;
    v16[7] = v87;
    v88 = v137;
    v16[8] = 0;
    v16[9] = v88;
    v89 = v135;
    v16[10] = v135;
    v16[11] = v66;
    v81[1] = 0;
    v81[2] = 0;
    *v81 = 0;
    OUTLINED_FUNCTION_43_20(v87);
    v90 = v89;
    OUTLINED_FUNCTION_33_34();
    OUTLINED_FUNCTION_39_22(v91);
    v92 = v144;
    outlined assign with copy of AttributedString?(v68, v16 + v77);
    *(v16 + v76[11]) = 2;
    *(v16 + v76[12]) = 0;
    *(v16 + v76[13]) = 1;
    *(v16 + v76[14]) = 1;
    *v84 = 0;
    *(v84 + 1) = 0;
    v84[16] = -1;
    v93 = *(v75 + 16);
    if (v93 <= 2)
    {
      outlined destroy of TapInteractionHandler?(v68, &_s10Foundation16AttributedStringVSgMd);
      outlined destroy of ConversationControlsType(v147);
      OUTLINED_FUNCTION_37_29();
      OUTLINED_FUNCTION_26_3();
      outlined init with copy of ConversationControlsRecipe(v107, v108);
      OUTLINED_FUNCTION_55_3();
      OUTLINED_FUNCTION_16_5();
      __swift_storeEnumTagSinglePayload(v109, v110, v111, v112);
      outlined destroy of ConversationControlsRecipe(v16);
      v106 = v142;
      v101 = v141;
    }

    else
    {
      v144 = v90;

      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v94, v95))
      {
        v96 = OUTLINED_FUNCTION_42();
        v97 = OUTLINED_FUNCTION_23();
        v145 = v93;
        v146 = v97;
        *v96 = 136315138;
        v98 = String.init<A>(reflecting:)();
        v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v99, &v146);

        *(v96 + 4) = v100;
        _os_log_impl(&dword_1BBC58000, v94, v95, "Too many trailing actions (%s)", v96, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v97);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();
      }

      outlined destroy of TapInteractionHandler?(v143, &_s10Foundation16AttributedStringVSgMd);
      outlined destroy of ConversationControlsType(v147);
      v101 = v141;
      v75 = v140;
      outlined destroy of ConversationControlsRecipe(v16);
      OUTLINED_FUNCTION_7_7();
      __swift_storeEnumTagSinglePayload(v102, v103, v104, v105);
      v106 = v142;
      v90 = v144;
    }

    OUTLINED_FUNCTION_3_62(v75);
    if (v113)
    {
      OUTLINED_FUNCTION_24_45();

      OUTLINED_FUNCTION_51_19();
      outlined destroy of TapInteractionHandler?(v75, &_s15ConversationKit0A14ControlsRecipeVSgMd);
      OUTLINED_FUNCTION_7_7();
      __swift_storeEnumTagSinglePayload(v116, v117, v118, v119);
    }

    else
    {
      outlined init with take of ConversationControlsRecipe(v75, v101);
      if (SBUIIsSystemApertureEnabled())
      {
        v121 = Logger.logObject.getter();
        v122 = static os_log_type_t.error.getter();
        if (OUTLINED_FUNCTION_25(v122))
        {
          v123 = OUTLINED_FUNCTION_33();
          OUTLINED_FUNCTION_39_2(v123);
          OUTLINED_FUNCTION_15_2(&dword_1BBC58000, v124, v125, "handoffHUD: [SystemAperture] showing content, but below system aperture");
          OUTLINED_FUNCTION_27();
        }

        OUTLINED_FUNCTION_24_45();
        OUTLINED_FUNCTION_51_19();

        memcpy(v147, (v101 + v76[18]), 0x49uLL);
        outlined destroy of TapInteractionHandler?(v147, &_s15ConversationKit21SystemApertureElementVSgMd);
        OUTLINED_FUNCTION_5_125();
      }

      else
      {
        OUTLINED_FUNCTION_24_45();

        OUTLINED_FUNCTION_51_19();
      }

      outlined init with copy of ConversationControlsRecipe(v101, v106);
      OUTLINED_FUNCTION_16_5();
      __swift_storeEnumTagSinglePayload(v130, v131, v132, v133);
      outlined destroy of ConversationControlsRecipe(v101);
    }

    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_30_0();

    __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  }
}

void HandoffControlsRecipeGenerator.lagunaHandoffCompletedRecipe(controlsManager:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_42_25(v9, v192);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v192 - v12;
  type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_6_102();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_17();
  v17 = (v15 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v192 - v19;
  v21 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v211 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_8();
  v26 = v25 - v24;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  if ((*(v27 + 624))())
  {
    v212 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x2C0))();
    if (v212)
    {
      v197 = v21;
      v198 = v0;
      v206 = v13;
      v208 = v4;
      v196 = v2;
      v203 = v20;
      v204 = v6;
      OUTLINED_FUNCTION_27_20();
      v28 = [objc_opt_self() sharedInstance];
      v29 = [v28 neighborhoodActivityConduit];

      v30 = [v29 activeSplitSessionTV];
      v31 = objc_opt_self();
      v32 = [v31 conversationKit];
      v33 = OUTLINED_FUNCTION_23_52();
      v34.super.isa = v32;
      v36 = OUTLINED_FUNCTION_17_0(v33, v35, 0x61737265766E6F43, v2, v34);
      v38 = v37;

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);

      v205 = v36;
      v39._countAndFlagsBits = v36;
      v199 = v38;
      v39._object = v38;
      isa = NSAttributedString.__allocating_init(string:)(v39).super.isa;
      v202 = v30;
      if (v30 && (v40 = outlined bridged method (ob) of @objc TUNearbyDeviceHandle.name.getter(v30), v41))
      {
        v42 = v40;
        v43 = v41;
        OUTLINED_FUNCTION_61_10();
        v44 = &off_1E7FE9000;
      }

      else
      {
        v44 = &off_1E7FE9000;
        v45 = [v31 conversationKit];
        OUTLINED_FUNCTION_41_22();
        OUTLINED_FUNCTION_61_10();
        v46.super.isa = v45;
        v42 = OUTLINED_FUNCTION_17_0(v47, v48, v49, 0xE000000000000000, v46);
        v43 = v50;
      }

      v51 = [v31 v44[465]];
      OUTLINED_FUNCTION_40_0();
      v52.super.isa = v51;
      OUTLINED_FUNCTION_17_0(0x255F4E4F5F574F4ELL, 0xE900000000000040, 0x61737265766E6F43, 0xE000000000000000, v52);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v53 = swift_allocObject();
      v200 = xmmword_1BC4BA940;
      *(v53 + 16) = xmmword_1BC4BA940;
      *(v53 + 56) = MEMORY[0x1E69E6158];
      *(v53 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v53 + 32) = v42;
      *(v53 + 40) = v43;
      v54 = String.init(format:_:)();
      v56 = v55;

      v57._countAndFlagsBits = v54;
      v57._object = v56;
      v58.super.isa = NSAttributedString.__allocating_init(string:)(v57).super.isa;
      OUTLINED_FUNCTION_29_34(v58.super.isa);

      v59 = v212;
      v60 = ConversationControlsHelper.handoffBadgeImage(conversation:)(v212);
      v61 = [v59 mergedRemoteMembers];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
      lazy protocol witness table accessor for type TUConversationMember and conformance NSObject();
      v62 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v63 = specialized Set.count.getter(v62);

      v207 = v60;
      if (v63)
      {
        type metadata accessor for ConversationControlsBadgingAvatarViewController();
        v64 = [v60 image];
        v65 = objc_opt_self();
        v66 = v199;

        v67 = [v65 clearColor];
        v68 = v59;
        v69 = ConversationControlsBadgingAvatarViewController.__allocating_init(conversation:badgeImage:displayName:badgeBackgroundColor:)(v68, v64, v205, v66, v67);
        v70 = [v69 view];
        v71 = MEMORY[0x1E69E7D40];
        (*((*MEMORY[0x1E69E7D40] & *v208) + 0x2A8))();
        v72 = (*((*v71 & *v69) + 0x58))(v26);
        OUTLINED_FUNCTION_53_16(v72);
        v211[1](v26, v197);
        v73 = one-time initialization token for conversationControls;
        v211 = v70;
        v74 = v198;
        if (v73 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v75 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v75, &static Logger.conversationControls);
        v76 = v207;
        v77 = v207;

        v78 = v77;
        OUTLINED_FUNCTION_44_2();
        v80 = v79;
        v81 = v68;
        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.default.getter();

        v195 = v83;
        v197 = v82;
        v84 = os_log_type_enabled(v82, v83);
        v85 = v66;
        if (v84)
        {
          v86 = swift_slowAlloc();
          v193 = swift_slowAlloc();
          v194 = OUTLINED_FUNCTION_29_7();
          v216[0] = v194;
          *v86 = 136315906;
          v87 = v78;
          v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v205, v85, v216);

          *(v86 + 4) = v88;
          *(v86 + 12) = 2080;
          v89 = [v80 string];
          v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v92 = v91;

          v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v92, v216);

          *(v86 + 14) = v93;
          *(v86 + 22) = 2112;
          *(v86 + 24) = v81;
          OUTLINED_FUNCTION_33_34();
          v94 = v193;
          *v193 = v95;
          v96 = v76 != 0;
          *(v86 + 32) = 1024;
          v97 = v81;

          *(v86 + 34) = v96;
          OUTLINED_FUNCTION_60_14();
          OUTLINED_FUNCTION_26_3();
          _os_log_impl(v98, v99, v100, v101, v86, 0x26u);
          outlined destroy of TapInteractionHandler?(v94, &_sSo8NSObjectCSgMd);
          OUTLINED_FUNCTION_27();
          swift_arrayDestroy();
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_27();

LABEL_28:
          goto LABEL_29;
        }
      }

      else
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
        v113 = *MEMORY[0x1E69DDDC8];
        LOBYTE(v214) = 0;
        OUTLINED_FUNCTION_2_147(v113);
        outlined init with copy of SymbolImageDescription(v217, v215);
        outlined destroy of SymbolImageDescription(v216);
        v114 = static UIImage.symbolImage(for:)(v217);
        outlined destroy of SymbolImageDescription(v217);
        v115 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

        v116 = v115;
        [v116 setContentMode_];
        v117 = [objc_opt_self() whiteColor];
        [v116 setTintColor_];

        OUTLINED_FUNCTION_53_16([v116 hash]);
        v118 = one-time initialization token for conversationControls;
        v211 = v116;
        v74 = v198;
        if (v118 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v119 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v119, &static Logger.conversationControls);
        v120 = v60;
        v121 = v199;

        v69 = v120;
        OUTLINED_FUNCTION_44_2();
        v123 = v122;
        v124 = Logger.logObject.getter();
        v125 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v124, v125))
        {

          goto LABEL_28;
        }

        v126 = swift_slowAlloc();
        v197 = OUTLINED_FUNCTION_29_7();
        OUTLINED_FUNCTION_43_20(v197);
        *v126 = 136315650;
        v127 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v205, v121, v215);
        LODWORD(v205) = v125;
        v128 = v127;

        *(v126 + 4) = v128;
        *(v126 + 12) = 2080;
        v129 = [v123 string];
        v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v132 = v131;

        v133 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v132, v215);

        *(v126 + 14) = v133;
        *(v126 + 22) = 1024;

        *(v126 + 24) = v60 != 0;
        OUTLINED_FUNCTION_60_14();
        _os_log_impl(v134, v124, v135, v136, v126, 0x1Cu);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();
      }

LABEL_29:
      OUTLINED_FUNCTION_38_29(4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v137 = OUTLINED_FUNCTION_3_2();
      *(v137 + 16) = xmmword_1BC4BAC30;
      v138 = v209;
      *(v137 + 32) = v209;
      v139 = type metadata accessor for AttributedString();
      v140 = 1;
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v141, v142, v143, v139);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd);
      type metadata accessor for ConversationControlsAction();
      OUTLINED_FUNCTION_9_3();
      OUTLINED_FUNCTION_59_12();
      v144 = swift_allocObject();
      *(v144 + 16) = v200;
      swift_storeEnumTagMultiPayload();
      v145 = v74[9];
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v146, v147, v148, v139);
      v149 = (v17 + v74[10]);
      v150 = v17 + v74[15];
      *(v150 + 32) = 0;
      *v150 = 0u;
      *(v150 + 16) = 0u;
      *(v150 + 40) = -2;
      *(v17 + v74[16]) = 0;
      v151 = v17 + v74[17];
      v152 = (v17 + v74[18]);
      *v152 = 1;
      v153 = OUTLINED_FUNCTION_4_129(v152, 0);
      outlined init with copy of ConversationControlsType(v153, v17);
      OUTLINED_FUNCTION_54_14();
      v17[6] = 0;
      v17[7] = v154;
      v155 = v210;
      v17[8] = 0;
      v17[9] = v155;
      v156 = v138;
      v157 = isa;
      v17[10] = isa;
      v17[11] = v137;
      v149[1] = 0;
      v149[2] = 0;
      *v149 = 0;
      OUTLINED_FUNCTION_29_34(v156);
      v158 = v157;
      v159 = v17 + v145;
      v160 = v213;
      outlined assign with copy of AttributedString?(v213, v159);
      *(v17 + v74[11]) = 2;
      *(v17 + v74[12]) = 0;
      *(v17 + v74[13]) = 1;
      *(v17 + v74[14]) = 1;
      *v151 = 0;
      *(v151 + 1) = 0;
      v151[16] = -1;
      v161 = *(v144 + 16);
      if (v161 <= 2)
      {
        outlined destroy of TapInteractionHandler?(v160, &_s10Foundation16AttributedStringVSgMd);
        outlined destroy of ConversationControlsType(v216);
        *v150 = v144;
        *(v150 + 8) = 0u;
        *(v150 + 24) = 0u;
        *(v150 + 40) = 0;
        v162 = v206;
        outlined init with copy of ConversationControlsRecipe(v17, v206);
        OUTLINED_FUNCTION_16_5();
        __swift_storeEnumTagSinglePayload(v171, v172, v173, v174);
        outlined destroy of ConversationControlsRecipe(v17);
        OUTLINED_FUNCTION_13_68();
      }

      else
      {
        v162 = v206;
        if (one-time initialization token for conversationControls != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v163 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v163, &static Logger.conversationControls);

        v150 = Logger.logObject.getter();
        v160 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v150, v160))
        {
          v140 = OUTLINED_FUNCTION_42();
          v164 = OUTLINED_FUNCTION_23();
          OUTLINED_FUNCTION_43_20(v164);
          *v140 = 136315138;
          v214 = v161;
          v165 = String.init<A>(reflecting:)();
          v161 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v165, v166, v215);
          v162 = v206;

          *(v140 + 4) = v161;
          _os_log_impl(&dword_1BBC58000, v150, v160, "Too many trailing actions (%s)", v140, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v164);
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_27();
        }

        outlined destroy of TapInteractionHandler?(v213, &_s10Foundation16AttributedStringVSgMd);
        outlined destroy of ConversationControlsType(v216);
        OUTLINED_FUNCTION_13_68();
        outlined destroy of ConversationControlsRecipe(v17);
        OUTLINED_FUNCTION_7_7();
        __swift_storeEnumTagSinglePayload(v167, v168, v169, v170);
      }

      OUTLINED_FUNCTION_3_62(v162);
      if (v175)
      {
        OUTLINED_FUNCTION_8_95(&v218);

        OUTLINED_FUNCTION_44_2();
        OUTLINED_FUNCTION_26_21();

        outlined destroy of TapInteractionHandler?(v162, &_s15ConversationKit0A14ControlsRecipeVSgMd);
        OUTLINED_FUNCTION_7_7();
        __swift_storeEnumTagSinglePayload(v178, v179, v180, v181);
      }

      else
      {
        outlined init with take of ConversationControlsRecipe(v162, v144);
        if (SBUIIsSystemApertureEnabled())
        {
          ConversationControlsApertureHelper.makeActiveFaceTimeCallSystemApertureElement(for:alertingStyle:)(v161, 128, v196, v215);
          OUTLINED_FUNCTION_8_95(&v218);

          OUTLINED_FUNCTION_44_2();
          OUTLINED_FUNCTION_26_21();

          v185 = v74[18];
          memcpy(v216, (v144 + v185), 0x49uLL);
          outlined destroy of TapInteractionHandler?(v216, &_s15ConversationKit21SystemApertureElementVSgMd);
          memcpy((v144 + v185), v215, 0x49uLL);
        }

        else
        {
          OUTLINED_FUNCTION_8_95(&v218);

          OUTLINED_FUNCTION_44_2();
          OUTLINED_FUNCTION_26_21();
        }

        outlined init with copy of ConversationControlsRecipe(v144, v150);
        OUTLINED_FUNCTION_16_5();
        __swift_storeEnumTagSinglePayload(v188, v189, v190, v191);
        outlined destroy of ConversationControlsRecipe(v144);
      }

      OUTLINED_FUNCTION_30_0();
      return;
    }

    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v102 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v102, &static Logger.conversationControls);
    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_25(v104))
    {
      v105 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v105);
      OUTLINED_FUNCTION_15_2(&dword_1BBC58000, v106, v107, "lagunaHandoffCompletedRecipe: No conversation to display handoff completed banner for.");
      OUTLINED_FUNCTION_27();
    }
  }

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_30_0();

  __swift_storeEnumTagSinglePayload(v108, v109, v110, v111);
}

uint64_t outlined bridged method (ob) of @objc TUNearbyDeviceHandle.name.getter(void *a1)
{
  v2 = [a1 name];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

Swift::Bool __swiftcall TUCall.canDisplayAlertUI(_:)(Swift::Bool a1)
{
  v3 = [v1 callStatus] == 6 || objc_msgSend(v1, sel_callStatus) == 1;
  if (![v1 isEmergency] || v3 | ((objc_msgSend(v1, sel_isFailureExpected) & 1) == 0))
  {
    return 0;
  }

  return a1;
}

BOOL @objc TUCall.canDisplayAlertUI(_:)(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  v5 = TUCall.canDisplayAlertUI(_:)(a3);

  return v5;
}

uint64_t ScreeningService.__allocating_init(logger:callServices:viewModel:getStreamToken:activityController:maxSecondsForScreening:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v25 = a8;
  v16 = *(a2 + 24);
  v15 = *(a2 + 32);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a2, v16);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = v25(a1, v20, a3, a4, a5, a6, a7, v24, v16, v15);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v22;
}

uint64_t ScreeningService.startScreening(callUUID:endCall:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  Logger.traceFunctionStart(file:function:line:)("ConversationKit/ScreeningService.swift", 38, 2, "startScreening(callUUID:endCall:)", 33, 2, 64);
  ScreeningService.screen(_:)(a1, a2);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  v13 = &unk_1EDDBC000;
  if (os_log_type_enabled(v11, v12))
  {
    v14 = swift_slowAlloc();
    v15 = OUTLINED_FUNCTION_23();
    v31[0] = v15;
    *v14 = 136446466;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v31);
    *(v14 + 12) = 2050;
    *(v14 + 14) = *(v5 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_maxSecondsForScreening);

    _os_log_impl(&dword_1BBC58000, v11, v12, "onEnterScreeningState: Starting timer for %{public}s with %{public}ld seconds", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_27();
    v13 = &unk_1EDDBC000;
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  v16 = _ss8DurationV7secondsyABxSzRzlFZSi_Tt0g5(*(v5 + v13[476]));
  v18 = v17;
  v19 = swift_allocObject();
  v19[2] = v5;
  v19[3] = a1;
  v19[4] = a2;
  v19[5] = a3;
  v19[6] = a4;
  v20 = swift_allocObject();
  v20[2] = v5;
  v20[3] = a1;
  v20[4] = a2;
  swift_bridgeObjectRetain_n();
  swift_retain_n();

  TimerService.start(duration:onFire:onCancel:)(v16, v18, &async function pointer to partial apply for closure #1 in ScreeningService.startScreening(callUUID:endCall:), v19, &async function pointer to partial apply for closure #2 in ScreeningService.startScreening(callUUID:endCall:), v20);

  v21 = OBJC_IVAR____TtC15ConversationKit16ScreeningService_activityController;
  swift_beginAccess();
  outlined init with copy of ActivityController?(v5 + v21, &v29);
  if (!v30)
  {
    return outlined destroy of CallControlsService?(&v29, &_s15ConversationKit18ActivityController_pSgMd);
  }

  outlined init with take of TapInteractionHandler(&v29, v31);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_42();
    v25 = OUTLINED_FUNCTION_23();
    *&v29 = v25;
    *v24 = 136446210;
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v29);
    _os_log_impl(&dword_1BBC58000, v22, v23, "onEnterScreeningState: Starting Activities for %{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v26 = v32;
  v27 = v33;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  (*(v27 + 8))(*(v5 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_viewModel), v26, v27);
  return __swift_destroy_boxed_opaque_existential_1(v31);
}

uint64_t ScreeningService.screen(_:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v24 = a2;
  v5 = type metadata accessor for MovingToScreeningStateService();
  v6 = (v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC15ConversationKit16ScreeningService_logger;
  v10 = type metadata accessor for Logger();
  (*(*(v10 - 8) + 16))(v8, v2 + v9, v10);
  v11 = v2 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_callServices;
  v13 = *(v2 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_callServices + 24);
  v12 = *(v2 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_callServices + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_callServices), v13);
  LOBYTE(v12) = (*(v12 + 16))(v13, v12);
  v15 = *(v2 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_getStreamToken);
  v14 = *(v2 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_getStreamToken + 8);
  outlined init with copy of IDSLookupManager(v11, v25);
  v16 = swift_allocObject();
  outlined init with take of TapInteractionHandler(v25, v16 + 16);
  outlined init with copy of IDSLookupManager(v11, v25);
  v17 = swift_allocObject();
  outlined init with take of TapInteractionHandler(v25, v17 + 16);
  v8[v6[7]] = v12 & 1;
  v18 = &v8[v6[8]];
  *v18 = v15;
  *(v18 + 1) = v14;
  v19 = &v8[v6[9]];
  *v19 = partial apply for implicit closure #2 in implicit closure #1 in ScreeningService.screen(_:);
  v19[1] = v16;
  v20 = &v8[v6[10]];
  *v20 = partial apply for implicit closure #4 in implicit closure #3 in ScreeningService.screen(_:);
  v20[1] = v17;
  v21 = &v8[v6[11]];
  *v21 = &async function pointer to partial apply for closure #1 in ScreeningService.screen(_:);
  *(v21 + 1) = v3;

  v22._countAndFlagsBits = a1;
  v22._object = v24;
  MovingToScreeningStateService.startScreening(callUUID:)(v22);
  return outlined destroy of MovingToScreeningStateService(v8);
}

uint64_t closure #1 in ScreeningService.startScreening(callUUID:endCall:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v5[7] = swift_task_alloc();
  v5[8] = type metadata accessor for MainActor();
  v5[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ScreeningService.startScreening(callUUID:endCall:), v7, v6);
}

uint64_t closure #1 in ScreeningService.startScreening(callUUID:endCall:)()
{
  OUTLINED_FUNCTION_48();
  v27 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[3];
    v3 = v0[4];
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = OUTLINED_FUNCTION_23();
    v26 = v7;
    *v6 = 134349314;
    *(v6 + 4) = *(v5 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_maxSecondsForScreening);

    *(v6 + 12) = 2082;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v26);
    OUTLINED_FUNCTION_112_0();
    _os_log_impl(v8, v9, v10, v11, v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  v13 = v0[7];
  v15 = v0[5];
  v14 = v0[6];
  v17 = v0[3];
  v16 = v0[4];
  static TaskPriority.userInitiated.getter();
  v18 = type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_18_53(v13, v19, v20, v18);

  v21 = static MainActor.shared.getter();
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E85E0];
  v22[2] = v21;
  v22[3] = v23;
  v22[4] = v15;
  v22[5] = v14;
  v22[6] = v17;
  v22[7] = v16;
  OUTLINED_FUNCTION_59();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

  OUTLINED_FUNCTION_13();

  return v24();
}

uint64_t closure #1 in closure #1 in ScreeningService.startScreening(callUUID:endCall:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = type metadata accessor for MainActor();
  v7[3] = static MainActor.shared.getter();
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  v7[4] = v11;
  *v11 = v7;
  v11[1] = closure #1 in closure #1 in ScreeningService.startScreening(callUUID:endCall:);

  return (v13)(a6, a7, 0);
}

uint64_t closure #1 in closure #1 in ScreeningService.startScreening(callUUID:endCall:)()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  dispatch thunk of Actor.unownedExecutor.getter();
  v3 = OUTLINED_FUNCTION_1_4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t closure #2 in ScreeningService.startScreening(callUUID:endCall:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #2 in ScreeningService.startScreening(callUUID:endCall:), v5, v4);
}

uint64_t closure #2 in ScreeningService.startScreening(callUUID:endCall:)()
{
  OUTLINED_FUNCTION_48();
  v10 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 24);
    v3 = *(v0 + 32);
    v5 = OUTLINED_FUNCTION_42();
    v6 = OUTLINED_FUNCTION_23();
    v9 = v6;
    *v5 = 136446210;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v9);
    _os_log_impl(&dword_1BBC58000, v1, v2, "onEnterScreeningState: Canceled timer for %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_13();

  return v7();
}

uint64_t closure #3 in ScreeningService.startScreening(callUUID:endCall:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = type metadata accessor for MainActor();
  v8[3] = static MainActor.shared.getter();
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = closure #1 in closure #1 in ScreeningService.startScreening(callUUID:endCall:);

  return v15(a6, a7, a8);
}

Swift::Void __swiftcall ScreeningService.stopScreening()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v35 - v3;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1BBC58000, v5, v6, "onExitScreeningState: exiting state and ending captions.", v7, 2u);
    OUTLINED_FUNCTION_27();
  }

  v8 = (v1 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_provider);
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_provider))
  {
    v9 = v8[1];
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 40);
    swift_unknownObjectRetain();
    v11(0, ObjectType, v9);
    swift_unknownObjectRelease();
    v12 = *v8;
  }

  else
  {
    v12 = 0;
  }

  v35 = v8[1];
  *v8 = 0;
  v8[1] = 0;
  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  TranscriptionViewModel.state.setter();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = static CallScreeningRTTHelper.shared;
  v14 = TranscriptionViewModel.captions.getter();
  v15 = TranscriptionViewModel.callUUID.getter();
  (*(*v13 + 160))(v14, v15, v16);

  TranscriptionViewModel.callUUID.setter();
  v17 = OBJC_IVAR____TtC15ConversationKit16ScreeningService_activityController;
  swift_beginAccess();
  outlined init with copy of ActivityController?(v1 + v17, &v36);
  if (v37)
  {
    outlined init with take of TapInteractionHandler(&v36, v38);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_42();
      v21 = OUTLINED_FUNCTION_23();
      *&v36 = v21;
      *v20 = 136446210;
      v22 = TranscriptionViewModel.callUUID.getter();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v36);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_1BBC58000, v18, v19, "onEnterScreeningState: Ending Activities for %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    v25 = v39;
    v26 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    (*(v26 + 16))("We are exiting the screening state.", 35, 2, v25, v26);
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  else
  {
    outlined destroy of CallControlsService?(&v36, &_s15ConversationKit18ActivityController_pSgMd);
  }

  v27 = OBJC_IVAR____TtC15ConversationKit16ScreeningService_timerService;
  v28 = *(v1 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_timerService);
  type metadata accessor for TimerService();
  swift_allocObject();

  *(v1 + v27) = TimerService.init()();

  static TaskPriority.userInitiated.getter();
  v29 = type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_18_53(v4, v30, v31, v29);
  type metadata accessor for MainActor();

  v32 = static MainActor.shared.getter();
  v33 = swift_allocObject();
  v34 = MEMORY[0x1E69E85E0];
  v33[2] = v32;
  v33[3] = v34;
  v33[4] = v28;
  OUTLINED_FUNCTION_59();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

  $defer #1 () in ScreeningService.stopScreening()(v1, v12, v35);
  swift_unknownObjectRelease();
}

uint64_t $defer #1 () in ScreeningService.stopScreening()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  type metadata accessor for MainActor();
  swift_unknownObjectRetain();

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

uint64_t closure #1 in ScreeningService.stopScreening()()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = closure #1 in ScreeningService.stopScreening();

  return TimerService.cancel()();
}

{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  dispatch thunk of Actor.unownedExecutor.getter();
  v3 = OUTLINED_FUNCTION_1_4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t implicit closure #2 in implicit closure #1 in ScreeningService.screen(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[3];
  v6 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v5);
  v7 = (*(v6 + 64))(a1, a2, v5, v6);
  return v7 | ((HIDWORD(v7) & 1) << 32);
}

uint64_t implicit closure #4 in implicit closure #3 in ScreeningService.screen(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[3];
  v6 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v5);
  return (*(v6 + 112))(a1, a2, v5, v6);
}

uint64_t closure #1 in ScreeningService.screen(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  v6 = type metadata accessor for Logger();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ScreeningService.screen(_:), v8, v7);
}

uint64_t closure #1 in ScreeningService.screen(_:)()
{
  OUTLINED_FUNCTION_48();
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  v7 = (v5 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_provider);
  *v7 = v6;
  v7[1] = v4;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  (*(v3 + 16))(v1, v5 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_logger, v2);
  v8 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for ScreeningCaptions();
  swift_allocObject();
  v9 = ScreeningCaptions.init(logger:onUpdateCaptions:)(v1, partial apply for closure #1 in closure #1 in ScreeningService.screen(_:), v8);
  v10 = OBJC_IVAR____TtC15ConversationKit16ScreeningService_screeningCaptions;
  *(v5 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_screeningCaptions) = v9;

  TranscriptionViewModel.state.setter();
  if (*(v5 + v10))
  {
    v11 = &protocol witness table for ScreeningCaptions;
  }

  else
  {
    v11 = 0;
  }

  ObjectType = swift_getObjectType();
  v13 = *(v4 + 24);

  v13(v14, v11, ObjectType, v4);
  (*(v4 + 40))(1, ObjectType, v4);

  OUTLINED_FUNCTION_13();

  return v15();
}

uint64_t closure #1 in closure #1 in ScreeningService.screen(_:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1)
    {

      v3 = TranscriptionViewModel.isGibberish.getter();

      if (v3)
      {

        TranscriptionViewModel.isGibberish.setter();
      }

      TranscriptionViewModel.captions.setter();
    }

    else
    {

      TranscriptionViewModel.isGibberish.setter();
    }
  }

  return result;
}

uint64_t ScreeningService.deinit()
{
  v1 = OBJC_IVAR____TtC15ConversationKit16ScreeningService_logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_15_1();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_callServices);

  outlined destroy of CallControlsService?(v0 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_activityController, &_s15ConversationKit18ActivityController_pSgMd);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t ScreeningService.__deallocating_deinit()
{
  ScreeningService.deinit();

  return swift_deallocClassInstance();
}

uint64_t ScreeningService.EndCallReason.description.getter(uint64_t a1)
{
  if (!a1)
  {
    return 0x74756F656D6954;
  }

  MEMORY[0x1BFB20B10](0x28726F727245, 0xE600000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t closure #1 in $defer #1 () in ScreeningService.stopScreening()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for Logger();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v6[7] = *(v8 + 64);
  v6[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v6[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[10] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[11] = v10;
  v6[12] = v9;

  return MEMORY[0x1EEE6DFA0](closure #1 in $defer #1 () in ScreeningService.stopScreening(), v10, v9);
}

uint64_t closure #1 in $defer #1 () in ScreeningService.stopScreening()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = v12[8];
  v13 = v12[9];
  v16 = v12[6];
  v15 = v12[7];
  v18 = v12[4];
  v17 = v12[5];
  v20 = v12[2];
  v19 = v12[3];
  MEMORY[0x1BFB20F40]();
  v21 = type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_18_53(v13, v22, v23, v21);
  v24 = OBJC_IVAR____TtC15ConversationKit16ScreeningService_logger;
  v12[13] = OBJC_IVAR____TtC15ConversationKit16ScreeningService_logger;
  (*(v16 + 16))(v14, v20 + v24, v17);
  v25 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v26 = (v15 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  (*(v16 + 32))(v27 + v25, v14, v17);
  v28 = (v27 + v26);
  *v28 = v19;
  v28[1] = v18;
  swift_unknownObjectRetain();
  v29 = OUTLINED_FUNCTION_59();
  v32 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(v29, v30, v13, v31, v27);
  v12[14] = v32;
  outlined destroy of CallControlsService?(v13, &_sScPSgMd);
  v33 = swift_task_alloc();
  v12[15] = v33;
  *v33 = v12;
  v33[1] = closure #1 in $defer #1 () in ScreeningService.stopScreening();
  v39 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA40](v33, v32, v39, v34, v35, v36, v37, v38, a9, a10, a11, a12);
}

uint64_t closure #1 in $defer #1 () in ScreeningService.stopScreening()()
{
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;

  v4 = *(v1 + 96);
  v5 = *(v1 + 88);

  return MEMORY[0x1EEE6DFA0](closure #1 in $defer #1 () in ScreeningService.stopScreening(), v5, v4);
}

{
  OUTLINED_FUNCTION_9();

  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v0, v1))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_112_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_13();

  return v7();
}

uint64_t closure #1 in closure #1 in $defer #1 () in ScreeningService.stopScreening()()
{
  OUTLINED_FUNCTION_9();
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v0, v1))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_112_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_13();

  return v7();
}

uint64_t specialized ScreeningService.__allocating_init(logger:callServices:viewModel:getStreamToken:activityController:maxSecondsForScreening:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v21 = a6;
  v22 = a7;
  v15 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  (*(v15 + 16))(v17, a2, a9);
  v19 = specialized ScreeningService.init(logger:callServices:viewModel:getStreamToken:activityController:maxSecondsForScreening:)(a1, v17, a3, a4, a5, v21, v22, v18, a9, a10);
  (*(v15 + 8))(a2, a9);
  return v19;
}

uint64_t specialized ScreeningService.init(logger:callServices:viewModel:getStreamToken:activityController:maxSecondsForScreening:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v27 = a9;
  v28 = a10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v26);
  (*(*(a9 - 8) + 32))(boxed_opaque_existential_1, a2, a9);
  v19 = a8 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_activityController;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  v20 = (a8 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_provider);
  *v20 = 0;
  v20[1] = 0;
  *(a8 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_screeningCaptions) = 0;
  v21 = OBJC_IVAR____TtC15ConversationKit16ScreeningService_timerService;
  type metadata accessor for TimerService();
  swift_allocObject();
  *(a8 + v21) = TimerService.init()();
  v22 = OBJC_IVAR____TtC15ConversationKit16ScreeningService_logger;
  v23 = type metadata accessor for Logger();
  (*(*(v23 - 8) + 32))(a8 + v22, a1, v23);
  outlined init with take of TapInteractionHandler(&v26, a8 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_callServices);
  *(a8 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_viewModel) = a3;
  v24 = (a8 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_getStreamToken);
  *v24 = a4;
  v24[1] = a5;
  swift_beginAccess();
  outlined assign with take of ActivityController?(a6, v19);
  swift_endAccess();
  *(a8 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_maxSecondsForScreening) = a7;
  return a8;
}

uint64_t partial apply for closure #3 in ScreeningService.startScreening(callUUID:endCall:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_11_91();
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_2(v6);
  *v7 = v8;
  v7[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  v9 = OUTLINED_FUNCTION_16_2();

  return closure #3 in ScreeningService.startScreening(callUUID:endCall:)(v9, v10, v11, v1, v2, v3, v4, v5);
}

uint64_t partial apply for closure #1 in ScreeningService.startScreening(callUUID:endCall:)()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_14_61(v5);

  return closure #1 in ScreeningService.startScreening(callUUID:endCall:)(v6, v7, v2, v3, v4);
}

uint64_t partial apply for closure #2 in ScreeningService.startScreening(callUUID:endCall:)()
{
  OUTLINED_FUNCTION_9();
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_14_61(v3);

  return closure #2 in ScreeningService.startScreening(callUUID:endCall:)(v4, v5, v2);
}

uint64_t outlined init with copy of ActivityController?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18ActivityController_pSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_7Tm_0(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in ScreeningService.stopScreening()()
{
  OUTLINED_FUNCTION_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v1[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  OUTLINED_FUNCTION_16_2();

  return closure #1 in ScreeningService.stopScreening()();
}

uint64_t type metadata accessor for ScreeningService()
{
  result = type metadata singleton initialization cache for ScreeningService;
  if (!type metadata singleton initialization cache for ScreeningService)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for ScreeningService()
{
  result = type metadata accessor for Logger();
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

uint64_t partial apply for closure #1 in $defer #1 () in ScreeningService.stopScreening()()
{
  OUTLINED_FUNCTION_11_91();
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_2(v4);
  *v5 = v6;
  v5[1] = partial apply for closure #1 in CallRecordingService.stopRecording(call:completion:);
  v7 = OUTLINED_FUNCTION_16_2();

  return closure #1 in $defer #1 () in ScreeningService.stopScreening()(v7, v8, v9, v1, v2, v3);
}

uint64_t partial apply for closure #1 in closure #1 in $defer #1 () in ScreeningService.stopScreening()()
{
  OUTLINED_FUNCTION_48();
  type metadata accessor for Logger();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v1[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  v3 = OUTLINED_FUNCTION_16_2();

  return closure #1 in closure #1 in $defer #1 () in ScreeningService.stopScreening()(v3, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #1 in ScreeningService.startScreening(callUUID:endCall:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_11_91();
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2(v5);
  *v6 = v7;
  v6[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  v8 = OUTLINED_FUNCTION_16_2();

  return closure #1 in closure #1 in ScreeningService.startScreening(callUUID:endCall:)(v8, v9, v10, v1, v2, v4, v3);
}

uint64_t partial apply for closure #1 in ScreeningService.screen(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);

  return closure #1 in ScreeningService.screen(_:)(a1, a2, a3, a4, v4);
}

uint64_t outlined destroy of MovingToScreeningStateService(uint64_t a1)
{
  v2 = type metadata accessor for MovingToScreeningStateService();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined assign with take of ActivityController?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18ActivityController_pSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t WeakBox.__allocating_init(_:)()
{
  v0 = swift_allocObject();
  WeakBox.init(_:)();
  return v0;
}

uint64_t WeakBox.box.setter()
{
  OUTLINED_FUNCTION_0_187();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*WeakBox.box.modify(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return WeakBox.box.modify;
}

void WeakBox.box.modify(void **a1, char a2)
{
  v3 = *a1;
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

uint64_t WeakBox.init(_:)()
{
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_0_187();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t WeakBox.__deallocating_deinit()
{
  MEMORY[0x1BFB23F10](v0 + 16);

  return swift_deallocClassInstance();
}

void PlaceholderCallCenter.avLessConversation(for:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_2();
  v11 = PlaceholderCallCenter.avLessConversation.getter();
  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = v11;
  ObjectType = swift_getObjectType();
  if (((*(v4 + 520))(ObjectType, v4) & 1) == 0)
  {
    v14 = OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_expectedAVLessConversationUUIDs;
    swift_beginAccess();
    v15 = *(v2 + v14);

    v16 = [v12 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Set.contains(_:)(v1, v15);
    LOBYTE(v16) = v17;

    (*(v9 + 8))(v1, v7);
    if ((v16 & 1) == 0)
    {

LABEL_6:
      *(v6 + 32) = 0;
      *v6 = 0u;
      *(v6 + 16) = 0u;
      goto LABEL_7;
    }
  }

  *(v6 + 24) = type metadata accessor for TUConversation();
  *(v6 + 32) = &protocol witness table for TUConversation;
  *v6 = v12;
LABEL_7:
  OUTLINED_FUNCTION_30_0();
}

uint64_t PlaceholderCallCenter.downgradeToAVLess(for:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return specialized PlaceholderCallCenter.downgradeToAVLess(for:)(v4, v1, v2, v3);
}

void PlaceholderCallCenter.updateAVModeSoon(for:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v4 = v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v27 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  v26 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_2();
  v14 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  v20 = v19 - v18;
  v21 = *(v2 + OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_queue);
  *(v19 - v18) = v21;
  (*(v16 + 104))(v19 - v18, *MEMORY[0x1E69E8020], v14);
  v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  v22 = (*(v16 + 8))(v20, v14);
  if (v21)
  {
    if (((*(*v4 + 160))(v22) & 1) == 0)
    {
      (*(*v4 + 168))(1);
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = v4;
      v28[4] = partial apply for closure #1 in PlaceholderCallCenter.updateAVModeSoon(for:);
      v28[5] = v24;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 1107296256;
      v28[2] = thunk for @escaping @callee_guaranteed () -> ();
      v28[3] = &block_descriptor_92;
      v25 = _Block_copy(v28);

      static DispatchQoS.unspecified.getter();
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x1BFB215C0](0, v1, v10, v25);
      _Block_release(v25);
      (*(v27 + 8))(v10, v5);
      (*(v12 + 8))(v1, v26);
    }

    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    __break(1u);
  }
}

void PlaceholderCallCenter.activeConversation(for:)()
{
  OUTLINED_FUNCTION_29();
  v26 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v25 = v5 - v4;
  v6 = [*(v0 + OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_conversationManager) activeConversations];
  type metadata accessor for TUConversation();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type TUConversation and conformance NSObject, type metadata accessor for TUConversation);
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v7 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v8 = v28;
    v9 = v29;
    v10 = v30;
    v11 = v31;
    v12 = v32;
  }

  else
  {
    v13 = -1 << *(v7 + 32);
    v9 = v7 + 56;
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(v7 + 56);

    v11 = 0;
    v8 = v7;
  }

  v23 = v10;
  v16 = (v10 + 64) >> 6;
  v24 = (v2 + 8);
  if (v8 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v17 = v11;
  v18 = v12;
  v19 = v11;
  if (v12)
  {
LABEL_12:
    v20 = (v18 - 1) & v18;
    v21 = *(*(v8 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
    if (v21)
    {
      do
      {
        v22 = [v21 UUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v22) = static UUID.== infix(_:_:)();
        (*v24)(v25, v26);
        if (v22)
        {
          break;
        }

        v11 = v19;
        v12 = v20;
        if ((v8 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          break;
        }

        swift_dynamicCast();
        v21 = v27;
        v19 = v11;
        v20 = v12;
      }

      while (v27);
    }

LABEL_19:
    outlined consume of Set<TUHandle>.Iterator._Variant();

    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v16)
      {
        goto LABEL_19;
      }

      v18 = *(v9 + 8 * v19);
      ++v17;
      if (v18)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void PlaceholderCallCenter.disconnect(_:)()
{
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  v4 = *(v0 + OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_queue);
  *(v3 - v2) = v4;
  v5 = OUTLINED_FUNCTION_21_51();
  v6(v5);
  v7 = v4;
  _dispatchPreconditionTest(_:)();
  v8 = OUTLINED_FUNCTION_20_53();
  v9(v8);
  if (v4)
  {
    v10 = *(v0 + OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_conversationManager);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v10 leaveConversationWithUUID_];
  }

  else
  {
    __break(1u);
  }
}

void PlaceholderCallCenter.answer(_:)()
{
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  v4 = *(v0 + OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_queue);
  *(v3 - v2) = v4;
  v5 = OUTLINED_FUNCTION_21_51();
  v6(v5);
  v7 = v4;
  _dispatchPreconditionTest(_:)();
  v8 = OUTLINED_FUNCTION_20_53();
  v9(v8);
  if (v4)
  {
    PlaceholderCallCenter.activeConversation(for:)();
    if (v10)
    {
      v11 = v10;
      v12 = *(v0 + OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_conversationManager);
      v13 = [objc_allocWithZone(MEMORY[0x1E69D8C10]) initWithConversation:v10 originatingUIType:45];
      [v12 joinConversationWithRequest_];
    }
  }

  else
  {
    __break(1u);
  }
}

void PlaceholderCallCenter.setSharingScreen(_:attributes:for:)(char a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  v13 = *(v3 + OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_queue);
  *(v11 - v10) = v13;
  (*(v8 + 104))(v11 - v10, *MEMORY[0x1E69E8020], v6);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v12, v6);
  if (v13)
  {
    v15 = [objc_opt_self() defaultAttributes];
    TUScreenShareAttributes.update(with:)(a2);
    v16 = *(v3 + OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_conversationManager);
    v17 = v15;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v16 setScreenEnabled:a1 & 1 withScreenShareAttributes:v17 forConversationWithUUID:isa];
  }

  else
  {
    __break(1u);
  }
}

id static PlaceholderCallCenter.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static PlaceholderCallCenter.shared;

  return v1;
}

id PlaceholderCallCenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PlaceholderCallCenter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaceholderCallCenter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void PlaceholderCallCenter.setAVMode(_:for:)(uint64_t a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_2();
  v8 = *(v1 + OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_queue);
  *v2 = v8;
  (*(v6 + 104))(v2, *MEMORY[0x1E69E8020], v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v2, v4);
  if (v8)
  {
    v10 = *(v1 + OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_conversationManager);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v10 setLocalParticipantAudioVideoMode:a1 forConversationUUID:isa];
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in PlaceholderCallCenter.updateAVModeSoon(for:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ((*(*a2 + 160))())
    {
      v5 = (*(*a2 + 184))();
      PlaceholderCallCenter.setAVMode(_:for:)(v5);
      (*(*a2 + 168))(0);
    }
  }
}

unsigned __int8 *PlaceholderCallCenter.activeCall(for:purpose:)(void *a1, unsigned __int8 *a2)
{
  v4 = *a2;
  v5 = *(v2 + OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_activeCalls);
  result = [a1 UUID];
  if (result)
  {
    v7 = result;
    v8 = [v5 objectForKey_];

    if (v8)
    {
      if (v8[16] != v4)
      {

        return 0;
      }
    }

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void specialized _NativeSet.update(with:isUnique:)()
{
  OUTLINED_FUNCTION_29();
  v48 = v1;
  v3 = v2;
  v47 = v4;
  v5 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  v49 = v0;
  v12 = *v0;
  OUTLINED_FUNCTION_4_130();
  v52 = v3;
  v15 = v3;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(v13, v14);
  v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v17 = v12;
  v50 = ~(-1 << *(v12 + 32));
  v51 = v12 + 56;
  v18 = 1;
  while (1)
  {
    v19 = v16 & v50;
    v20 = (v16 & v50) >> 6;
    v21 = 1 << (v16 & v50);
    v22 = v21 & *(v51 + 8 * v20);
    if (!v22)
    {
      break;
    }

    v23 = v17;
    (*(v7 + 16))(v11, v17[6] + *(v7 + 72) * v19, v5);
    OUTLINED_FUNCTION_4_130();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type UUID and conformance UUID, v24);
    OUTLINED_FUNCTION_17_58();
    v25 = OUTLINED_FUNCTION_13_69();
    v26(v25);
    if (v15)
    {
      v18 = 0;
      v17 = v23;
      break;
    }

    v16 = v19 + 1;
    v17 = v23;
  }

  v27 = v17[2];
  v28 = v27 + v18;
  if (__OFADD__(v27, v18))
  {
    __break(1u);
  }

  else
  {
    v29 = v17[3];
    v30 = v49;
    if (v29 < v28 || (v48 & 1) == 0)
    {
      if (v48)
      {
        specialized _NativeSet.resize(capacity:)();
        goto LABEL_16;
      }

      if (v29 < v28)
      {
        specialized _NativeSet.copyAndResize(capacity:)();
LABEL_16:
        v33 = *v49;
        v34 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v35 = ~(-1 << *(v33 + 32));
        while (1)
        {
          v19 = v34 & v35;
          v20 = (v34 & v35) >> 6;
          v21 = 1 << (v34 & v35);
          if ((v21 & *(v33 + 56 + 8 * v20)) == 0)
          {
            v30 = v49;
            if (v22)
            {
              goto LABEL_29;
            }

            v31 = *(v7 + 72);
            goto LABEL_22;
          }

          v32 = *(v7 + 72) * v19;
          (*(v7 + 16))(v11, *(v33 + 48) + v32, v5);
          OUTLINED_FUNCTION_4_130();
          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type UUID and conformance UUID, v36);
          OUTLINED_FUNCTION_17_58();
          v37 = OUTLINED_FUNCTION_13_69();
          v38(v37);
          if (v52)
          {
            break;
          }

          v34 = v19 + 1;
        }

        v30 = v49;
        if (!v22)
        {
          goto LABEL_29;
        }

        goto LABEL_25;
      }

      specialized _NativeSet.copy()();
    }

    v31 = *(v7 + 72);
    if (v22)
    {
      v32 = v31 * v19;
LABEL_25:
      v45 = *v30;
      v46 = *(v7 + 32);
      v44 = v47;
      v46(v47, *(*v30 + 48) + v32, v5);
      v46(*(v45 + 48) + v32, v52, v5);
      v43 = 0;
      goto LABEL_26;
    }

LABEL_22:
    v39 = *v30;
    *(*v30 + 8 * v20 + 56) |= v21;
    (*(v7 + 32))(*(v39 + 48) + v31 * v19, v52, v5);
    v40 = *(v39 + 16);
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (!v41)
    {
      *(v39 + 16) = v42;
      v43 = 1;
      v44 = v47;
LABEL_26:
      __swift_storeEnumTagSinglePayload(v44, v43, 1, v5);
      OUTLINED_FUNCTION_30_0();
      return;
    }
  }

  __break(1u);
LABEL_29:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t specialized PlaceholderCallCenter.downgradeToAVLess(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a4;
  v47 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v44 - v7;
  v9 = type metadata accessor for UUID();
  v46 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v23;
  v24 = *(v23 + 16);
  v25 = v47;
  v47 = a3;
  v24(v22, v25, a3, v20);
  v26 = *(a2 + OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_queue);
  *v18 = v26;
  (*(v16 + 104))(v18, *MEMORY[0x1E69E8020], v15);
  v27 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  v29 = *(v16 + 8);
  v28 = (v16 + 8);
  v29(v18, v15);
  if ((v26 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  (*(v44 + 8))(v47);
  PlaceholderCallCenter.setAVMode(_:for:)(0);
  v28 = *(v46 + 16);
  v28(v11, v14, v9);
  v30 = OBJC_IVAR____TtC15ConversationKit21PlaceholderCallCenter_expectedAVLessConversationUUIDs;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v48 = *(a2 + v30);
  specialized _NativeSet.update(with:isUnique:)();
  *(a2 + v30) = v48;
  outlined destroy of UUID?(v8);
  swift_endAccess();
  if (one-time initialization token for conversationKit != -1)
  {
LABEL_5:
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1BC4BA940;
  v28(v8, v14, v9);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  specialized >> prefix<A>(_:)(v8, v32, v33, v34, v35, v36, v37, v38, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
  v40 = v39;
  v42 = v41;
  outlined destroy of UUID?(v8);
  *(v31 + 56) = MEMORY[0x1E69E6158];
  *(v31 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v31 + 32) = v40;
  *(v31 + 40) = v42;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  (*(v46 + 8))(v14, v9);
  return (*(v45 + 8))(v22, v47);
}

void ClarityUIFavoritesView.navigationPath.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd);

  JUMPOUT(0x1BFB20050);
}

uint64_t key path setter for ClarityUIFavoritesView.navigationPath : ClarityUIFavoritesView(uint64_t a1)
{
  v2 = type metadata accessor for NavigationPath();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return ClarityUIFavoritesView.navigationPath.setter(v5);
}

uint64_t ClarityUIFavoritesView.navigationPath.setter(uint64_t a1)
{
  v2 = type metadata accessor for NavigationPath();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd);
  Binding.wrappedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

void (*ClarityUIFavoritesView.navigationPath.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = type metadata accessor for NavigationPath();
  *v3 = v4;
  v5 = *(v4 - 8);
  v3[1] = v5;
  v6 = *(v5 + 64);
  v3[2] = __swift_coroFrameAllocStub(v6);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd);
  v3[4] = v7;
  OUTLINED_FUNCTION_7_0();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v3[5] = v9;
  outlined init with copy of Participant?(v1, v9, &_s7SwiftUI7BindingVyAA14NavigationPathVGMd);
  MEMORY[0x1BFB20050](v7);
  return ClarityUIOutgoingCallActionsView.navigationPath.modify;
}

uint64_t ClarityUIFavoritesView.$navigationPath.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd);

  return Binding.projectedValue.getter();
}

uint64_t ClarityUIFavoritesView.isDialerPresented.getter()
{
  type metadata accessor for ClarityUIFavoritesView();
  OUTLINED_FUNCTION_1_152();
  v6 = v0;
  v7 = v1;
  v8 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  MEMORY[0x1BFB20050](&v5, v3);
  return v5;
}

uint64_t type metadata accessor for ClarityUIFavoritesView()
{
  result = type metadata singleton initialization cache for ClarityUIFavoritesView;
  if (!type metadata singleton initialization cache for ClarityUIFavoritesView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ClarityUIFavoritesView.isDialerPresented.setter()
{
  type metadata accessor for ClarityUIFavoritesView();
  OUTLINED_FUNCTION_1_152();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  return Binding.wrappedValue.setter();
}

void (*ClarityUIFavoritesView.isDialerPresented.modify(void *a1))(uint64_t *a1)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v4 = (v1 + *(type metadata accessor for ClarityUIFavoritesView() + 20));
  v5 = *v4;
  v6 = v4[1];
  v3[6] = *v4;
  v3[7] = v6;
  LOBYTE(v4) = *(v4 + 16);
  *(v3 + 19) = v4;
  *v3 = v5;
  v3[1] = v6;
  *(v3 + 16) = v4;

  v3[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  MEMORY[0x1BFB20050]();
  return AnimatedSaveView.saveState.modify;
}

uint64_t ClarityUIFavoritesView.$isDialerPresented.getter()
{
  type metadata accessor for ClarityUIFavoritesView();
  OUTLINED_FUNCTION_1_152();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  Binding.projectedValue.getter();
  return v1;
}

uint64_t ClarityUIFavoritesView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7ForEachVySay15ConversationKit17ClarityUIFavoriteVGSSAA19_ConditionalContentVyAA0D0PAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAF0I15UIContactAvatarVGs5NeverOG_Qo_A_GSgG_ACyAmAEANyQrSiFQOyAPyARyAtA5ImageVGAYG_Qo_Sg_A7_tGSgAA6ButtonVyA5_GSgtGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type TupleView<(ForEach<[ClarityUIFavorite], String, _ConditionalContent<<<opaque return type of View.badge(_:)>>.0, <<opaque return type of View.badge(_:)>>.0>?>, TupleView<((<<opaque return type of View.badge(_:)>>.0)?, <<opaque return type of View.badge(_:)>>.0)>?, Button<Label<Text, Image>>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA7ForEachVySay15ConversationKit17ClarityUIFavoriteVGSSAA19_ConditionalContentVyAA0D0PAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAF0I15UIContactAvatarVGs5NeverOG_Qo_A_GSgG_ACyAmAEANyQrSiFQOyAPyARyAtA5ImageVGAYG_Qo_Sg_A7_tGSgAA6ButtonVyA5_GSgtGMd);
  return List<>.init(content:)();
}

void closure #1 in ClarityUIFavoritesView.body.getter(uint64_t a1@<X0>, char *a2@<X8>)
{
  v98 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v99 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v93 = &v77 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOG_Qo_Md);
  v86 = *(v7 - 8);
  v87 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v85 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v83 = &v77 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOGMd);
  v82 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v81 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v80 = &v77 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOG_Qo_SgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v84 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v77 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA0D0PAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOG_Qo_Sg_AStGSgMd);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v97 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v101 = &v77 - v23;
  v24 = type metadata accessor for ClarityUIFavoritesView();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay15ConversationKit17ClarityUIFavoriteVGSSAA19_ConditionalContentVyAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAD0G15UIContactAvatarVGs5NeverOG_Qo_AYGSgGMd);
  v95 = *(v27 - 8);
  v96 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v94 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v77 - v30;
  v104 = ClarityUIFavoritesList.favorites.getter();
  outlined init with copy of ClarityUIFavoritesView(a1, &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = *(v25 + 80);
  v33 = (v32 + 16) & ~v32;
  v90 = v26;
  v88 = v32;
  v34 = swift_allocObject();
  v89 = v33;
  v91 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with take of ClarityUIFavoritesView(v91, v34 + v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit17ClarityUIFavoriteVGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOG_Qo_ATGSgMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [ClarityUIFavorite] and conformance [A], &_sSay15ConversationKit17ClarityUIFavoriteVGMd);
  lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.badge(_:)>>.0, <<opaque return type of View.badge(_:)>>.0>? and conformance <A> A?();
  lazy protocol witness table accessor for type ClarityUIFavorite and conformance ClarityUIFavorite();
  v100 = v31;
  ForEach<>.init(_:content:)();
  v35 = *(v24 + 24);
  v92 = a1;
  v36 = *(a1 + v35);
  if ((ClarityUIPreferences.canCallContacts.getter() & 1) == 0)
  {
    v45 = 1;
    v46 = v93;
    v47 = v101;
LABEL_17:
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA0D0PAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOG_Qo_Sg_AStGMd);
    v61 = 1;
    __swift_storeEnumTagSinglePayload(v47, v45, 1, v60);
    v62 = v47;
    if (ClarityUIPreferences.dialerKeypadEnabled.getter())
    {
      v63 = v91;
      outlined init with copy of ClarityUIFavoritesView(v92, v91);
      v64 = v89;
      v65 = swift_allocObject();
      outlined init with take of ClarityUIFavoritesView(v63, v65 + v64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd);
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd);
      v62 = v101;
      Button.init(action:label:)();
      v61 = 0;
    }

    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGMd);
    __swift_storeEnumTagSinglePayload(v46, v61, 1, v66);
    v67 = v94;
    v68 = v95;
    v69 = v46;
    v70 = *(v95 + 16);
    v71 = v96;
    v70(v94, v100, v96);
    v72 = v97;
    outlined init with copy of Participant?(v62, v97, &_s7SwiftUI9TupleViewVyAA0D0PAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOG_Qo_Sg_AStGSgMd);
    v73 = v99;
    outlined init with copy of Participant?(v46, v99, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd);
    v74 = v98;
    v70(v98, v67, v71);
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay15ConversationKit17ClarityUIFavoriteVGSSAA19_ConditionalContentVyAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAD0G15UIContactAvatarVGs5NeverOG_Qo_AYGSgG_AA05TupleK0VyAkAEALyQrSiFQOyANyAPyArA5ImageVGAWG_Qo_Sg_A7_tGSgAA6ButtonVyA5_GSgtMd);
    outlined init with copy of Participant?(v72, &v74[*(v75 + 48)], &_s7SwiftUI9TupleViewVyAA0D0PAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOG_Qo_Sg_AStGSgMd);
    outlined init with copy of Participant?(v73, &v74[*(v75 + 64)], &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v69, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v101, &_s7SwiftUI9TupleViewVyAA0D0PAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOG_Qo_Sg_AStGSgMd);
    v76 = *(v68 + 8);
    v76(v100, v71);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v73, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v72, &_s7SwiftUI9TupleViewVyAA0D0PAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOG_Qo_Sg_AStGSgMd);
    v76(v67, v71);
    return;
  }

  v79 = v36;
  if ((ClarityUIPreferences.recentsEnabled.getter() & 1) == 0)
  {
    v48 = v19;
    v49 = v87;
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v87);
    v50 = v82;
LABEL_16:
    v78 = v48;
    v103 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd);
    lazy protocol witness table accessor for type ClarityUIContactsNavigationDestination and conformance ClarityUIContactsNavigationDestination();
    v52 = v81;
    NavigationLink<>.init<A>(value:label:)();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type NavigationLink<Label<Text, Image>, Never> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOGMd);
    v53 = v83;
    View.badge(_:)();
    (*(v50 + 8))(v52, v11);
    v54 = v84;
    outlined init with copy of Participant?(v48, v84, &_s7SwiftUI4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOG_Qo_SgMd);
    v56 = v85;
    v55 = v86;
    v57 = *(v86 + 16);
    v57(v85, v53, v49);
    v47 = v101;
    outlined init with copy of Participant?(v54, v101, &_s7SwiftUI4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOG_Qo_SgMd);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOG_Qo_Sg_AQtMd);
    v57((v47 + *(v58 + 48)), v56, v49);
    v59 = *(v55 + 8);
    v59(v53, v49);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v78, &_s7SwiftUI4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOG_Qo_SgMd);
    v59(v56, v49);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v54, &_s7SwiftUI4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOG_Qo_SgMd);
    v45 = 0;
    v46 = v93;
    goto LABEL_17;
  }

  v77 = v11;
  v102 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd);
  lazy protocol witness table accessor for type ClarityUIRecentsNavigationDestination and conformance ClarityUIRecentsNavigationDestination();
  NavigationLink<>.init<A>(value:label:)();
  v37 = ClarityUICallHistory.recentCalls.getter();
  v38 = specialized Array.count.getter(v37);
  v39 = 0;
  v40 = 0;
  while (1)
  {
    if (v38 == v39)
    {

      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type NavigationLink<Label<Text, Image>, Never> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextVAA5ImageVGs5NeverOGMd);
      v48 = v19;
      v11 = v77;
      v51 = v80;
      View.badge(_:)();
      v50 = v82;
      (*(v82 + 8))(v51, v11);
      v49 = v87;
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v87);
      goto LABEL_16;
    }

    if ((v37 & 0xC000000000000001) != 0)
    {
      v41 = MEMORY[0x1BFB22010](v39, v37);
    }

    else
    {
      if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v41 = *(v37 + 8 * v39 + 32);
    }

    v42 = v41;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    v43 = [v41 unreadCount];

    ++v39;
    v44 = __OFADD__(v40, v43);
    v40 += v43;
    if (v44)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t closure #1 in closure #1 in ClarityUIFavoritesView.body.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOG_Qo_AV_GMd);
  MEMORY[0x1EEE9AC00](v52);
  v6 = &v43 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOGMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOG_Qo_Md);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v43 - v14;
  v64 = *(a1 + 6);
  v16 = a1[2];
  v62 = a1[1];
  v63 = v16;
  v61 = *a1;
  v17 = *(v62 + 16);
  if (v17 >= 2)
  {
    v50 = a3;
    v18 = *(a1 + 40);
    v65 = *(a1 + 24);
    v66 = v18;
    v54 = v65;
    v55 = v18;
    v56 = v62;
    MEMORY[0x1EEE9AC00](v13);
    *(&v43 - 2) = &v61;
    v49 = v15;
    v20 = v19;
    outlined init with copy of ClarityUIContact(&v65, v53);
    outlined init with copy of ClarityUIContact(&v65, v53);

    v48 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Label<Text, ClarityUIContactAvatar> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGMd);
    lazy protocol witness table accessor for type ClarityUIOutgoingCallActionsNavigationDestination and conformance ClarityUIOutgoingCallActionsNavigationDestination();
    NavigationLink<>.init<A>(value:label:)();
    type metadata accessor for ClarityUIFavoritesView();
    v54 = v65;
    v55 = v66;
    v68.cnContact.super.isa = &v54;
    ClarityUICallHistory.badgeCount(for:)(v68);
    v21 = v54;

    v22 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type NavigationLink<Label<Text, ClarityUIContactAvatar>, Never> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOGMd);
    v23 = v49;
    View.badge(_:)();
    v8[1](v10, v7);
    (*(v12 + 16))(v48, v23, v20);
    swift_storeEnumTagMultiPayload();
    *&v54 = v7;
    *(&v54 + 1) = v22;
    swift_getOpaqueTypeConformance2();
    v24 = v50;
    _ConditionalContent<>.init(storage:)();
    (*(v12 + 8))(v23, v20);
LABEL_5:
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOG_Qo_ATGMd);
    return __swift_storeEnumTagSinglePayload(v24, 0, 1, v40);
  }

  v48 = v8;
  if (v17)
  {
    v43 = &v43;
    v26 = *(v62 + 32);
    v25 = *(v62 + 40);
    v27 = *(v62 + 48);
    v28 = *(a1 + 40);
    v65 = *(a1 + 24);
    v66 = v28;
    v29 = *(a1 + 24);
    v30 = *(a1 + 40);
    v31 = *(v62 + 56);
    v32 = *(v62 + 64);
    v54 = v29;
    v55 = v30;
    v56 = v26;
    v57 = v25;
    v58 = v27;
    v59 = v31;
    v60 = v32;
    MEMORY[0x1EEE9AC00](v25);
    *(&v43 - 2) = &v61;
    v49 = v15;
    v46 = v33;
    v44 = v7;
    v35 = v34;

    v45 = v31;
    v47 = v32;
    outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v31, v32);
    outlined init with copy of ClarityUIContact(&v65, v53);
    outlined init with copy of ClarityUIContact(&v65, v53);

    outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v31, v32);
    v50 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Label<Text, ClarityUIContactAvatar> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGMd);
    lazy protocol witness table accessor for type ClarityUIPreviewNavigationDestination and conformance ClarityUIPreviewNavigationDestination();
    NavigationLink<>.init<A>(value:label:)();
    type metadata accessor for ClarityUIFavoritesView();
    v54 = v65;
    v55 = v66;
    v69.cnContact.super.isa = &v54;
    ClarityUICallHistory.badgeCount(for:)(v69);
    v36 = v54;

    v37 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type NavigationLink<Label<Text, ClarityUIContactAvatar>, Never> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOGMd);
    v38 = v49;
    v39 = v44;
    View.badge(_:)();
    (*(v48 + 1))(v10, v39);
    (*(v12 + 16))(v6, v38, v35);
    swift_storeEnumTagMultiPayload();
    *&v54 = v39;
    *(&v54 + 1) = v37;
    swift_getOpaqueTypeConformance2();
    v24 = v50;
    _ConditionalContent<>.init(storage:)();

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v45);
    (*(v12 + 8))(v38, v35);
    goto LABEL_5;
  }

  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOG_Qo_ATGMd);

  return __swift_storeEnumTagSinglePayload(a3, 1, 1, v42);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in ClarityUIFavoritesView.body.getter@<X0>(uint64_t a1@<X8>)
{
  CNContact.clarityUIDisplayName.getter();
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t closure #2 in closure #1 in ClarityUIFavoritesView.body.getter(void (*a1)(__n128))
{
  v2 = type metadata accessor for ClarityUINavigationTitle();
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  a1(v3);
  return Label<>.init(_:)();
}

uint64_t closure #5 in closure #1 in ClarityUIFavoritesView.body.getter()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t closure #1 in closure #5 in closure #1 in ClarityUIFavoritesView.body.getter()
{
  type metadata accessor for ClarityUIFavoritesView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  return Binding.wrappedValue.setter();
}

uint64_t closure #6 in closure #1 in ClarityUIFavoritesView.body.getter()
{
  v0 = [objc_opt_self() conversationKit];
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x61737265766E6F43;
  v1.value._object = 0xEF74694B6E6F6974;
  v2._countAndFlagsBits = 0xD00000000000001ELL;
  v2._object = 0x80000001BC515300;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  lazy protocol witness table accessor for type String and conformance String();
  return Label<>.init<A>(_:systemImage:)();
}

uint64_t ClarityUIFavoritesView.init(navigationPath:isDialerPresented:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  outlined init with take of Binding<NavigationPath>(a1, a5);
  v9 = type metadata accessor for ClarityUIFavoritesView();
  v10 = a5 + v9[5];
  *v10 = a2;
  *(v10 + 8) = a3;
  *(v10 + 16) = a4;
  v11 = v9[6];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *(a5 + v11) = static ClarityUIPreferences.shared;
  v12 = v9[7];
  v13 = one-time initialization token for shared;

  if (v13 != -1)
  {
    swift_once();
  }

  *(a5 + v12) = static ClarityUICallHistory.shared;
  v14 = v9[8];
  v15 = one-time initialization token for shared;

  if (v15 != -1)
  {
    swift_once();
  }

  *(a5 + v14) = static ClarityUIFavoritesList.shared;
}

void type metadata completion function for ClarityUIFavoritesView()
{
  type metadata accessor for Binding<NavigationPath>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Binding<Bool>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ClarityUIPreferences();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ClarityUICallHistory();
        if (v3 <= 0x3F)
        {
          type metadata accessor for ClarityUIFavoritesList();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
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

uint64_t outlined init with copy of ClarityUIFavoritesView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClarityUIFavoritesView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ClarityUIFavoritesView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClarityUIFavoritesView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in ClarityUIFavoritesView.body.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ClarityUIFavoritesView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in closure #1 in ClarityUIFavoritesView.body.getter(a1, v6, a2);
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.badge(_:)>>.0, <<opaque return type of View.badge(_:)>>.0>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.badge(_:)>>.0, <<opaque return type of View.badge(_:)>>.0>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.badge(_:)>>.0, <<opaque return type of View.badge(_:)>>.0>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOG_Qo_ATGSgMd);
    lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.badge(_:)>>.0, <<opaque return type of View.badge(_:)>>.0> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.badge(_:)>>.0, <<opaque return type of View.badge(_:)>>.0>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.badge(_:)>>.0, <<opaque return type of View.badge(_:)>>.0> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.badge(_:)>>.0, <<opaque return type of View.badge(_:)>>.0> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.badge(_:)>>.0, <<opaque return type of View.badge(_:)>>.0> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOG_Qo_ATGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type NavigationLink<Label<Text, ClarityUIContactAvatar>, Never> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOGMd);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.badge(_:)>>.0, <<opaque return type of View.badge(_:)>>.0> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClarityUIFavorite and conformance ClarityUIFavorite()
{
  result = lazy protocol witness table cache variable for type ClarityUIFavorite and conformance ClarityUIFavorite;
  if (!lazy protocol witness table cache variable for type ClarityUIFavorite and conformance ClarityUIFavorite)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClarityUIFavorite and conformance ClarityUIFavorite);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClarityUIFavorite and conformance ClarityUIFavorite;
  if (!lazy protocol witness table cache variable for type ClarityUIFavorite and conformance ClarityUIFavorite)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClarityUIFavorite and conformance ClarityUIFavorite);
  }

  return result;
}

uint64_t partial apply for closure #5 in closure #1 in ClarityUIFavoritesView.body.getter()
{
  type metadata accessor for ClarityUIFavoritesView();

  return closure #5 in closure #1 in ClarityUIFavoritesView.body.getter();
}

id one-time initialization function for font()
{
  result = [objc_opt_self() systemFontOfSize_];
  static MomentsIndicatorBubble.font = result;
  return result;
}

uint64_t *MomentsIndicatorBubble.font.unsafeMutableAddressor()
{
  if (one-time initialization token for font != -1)
  {
    OUTLINED_FUNCTION_0_188();
  }

  return &static MomentsIndicatorBubble.font;
}

id static MomentsIndicatorBubble.font.getter()
{
  if (one-time initialization token for font != -1)
  {
    OUTLINED_FUNCTION_0_188();
  }

  v1 = static MomentsIndicatorBubble.font;

  return v1;
}

uint64_t key path getter for MomentsIndicatorBubble.model : MomentsIndicatorBubble@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t key path setter for MomentsIndicatorBubble.model : MomentsIndicatorBubble(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x80);

  return v2(v3);
}

uint64_t MomentsIndicatorBubble.model.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_model;
  OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
}

uint64_t MomentsIndicatorBubble.delegate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_delegate;
  OUTLINED_FUNCTION_4_5();
  return outlined init with copy of MomentsIndicatorBubbleDelegate?(v1 + v3, a1);
}

uint64_t MomentsIndicatorBubble.delegate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_delegate;
  swift_beginAccess();
  outlined assign with take of MomentsIndicatorBubbleDelegate?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t key path getter for MomentsIndicatorBubble.bottomConstraint : MomentsIndicatorBubble@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for MomentsIndicatorBubble.bottomConstraint : MomentsIndicatorBubble(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xB0);
  v4 = *a1;
  return v3(v2);
}

void *MomentsIndicatorBubble.bottomConstraint.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_bottomConstraint;
  OUTLINED_FUNCTION_4_5();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MomentsIndicatorBubble.bottomConstraint.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_bottomConstraint;
  OUTLINED_FUNCTION_3_12();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *MomentsIndicatorBubble.init(model:)(uint64_t a1)
{
  swift_getObjectType();
  v3 = &v1[OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_delegate];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_bottomConstraint] = 0;
  v4 = OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_indicator;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  *&v1[OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_timer] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_model] = a1;
  v43.receiver = v1;
  v43.super_class = type metadata accessor for MomentsIndicatorBubble();

  v5 = objc_msgSendSuper2(&v43, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v5 setUserInteractionEnabled_];
  v6 = static MomentsIndicatorBubble.makeBackgroundColor()();
  [v5 setBackgroundColor_];

  v7 = [v5 layer];
  [v7 setCornerRadius_];

  v8 = OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_indicator;
  [v5 addSubview_];
  v9 = *(*a1 + 104);
  v10 = *&v5[v8];
  v11 = v9();
  outlined bridged method (mbnn) of @objc UILabel.text.setter(v11, v12, v10);

  v13 = *&v5[v8];
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 whiteColor];
  [v15 setTextColor_];

  v17 = one-time initialization token for font;
  v18 = *&v5[v8];
  if (v17 != -1)
  {
    OUTLINED_FUNCTION_0_188();
  }

  [v18 setFont_];

  [*&v5[v8] setLineBreakMode_];
  [*&v5[v8] setNumberOfLines_];
  [*&v5[v8] setTranslatesAutoresizingMaskIntoConstraints_];
  v19 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BC4BA7F0;
  v21 = [*&v5[v8] centerXAnchor];
  v22 = [v5 centerXAnchor];
  v23 = OUTLINED_FUNCTION_79();
  v25 = [v23 v24];

  *(v20 + 32) = v25;
  v26 = [*&v5[v8] centerYAnchor];
  v27 = [v5 centerYAnchor];
  v28 = OUTLINED_FUNCTION_79();
  v30 = [v28 v29];

  *(v20 + 40) = v30;
  v31 = [v5 heightAnchor];
  v32 = [*&v5[v8] heightAnchor];
  v33 = OUTLINED_FUNCTION_79();
  v35 = [v33 v34];

  *(v20 + 48) = v35;
  v36 = [v5 widthAnchor];

  v37 = [*&v5[v8] widthAnchor];
  v38 = OUTLINED_FUNCTION_79();
  v40 = [v38 v39];

  *(v20 + 56) = v40;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v19 activateConstraints_];

  return v5;
}

uint64_t outlined init with copy of MomentsIndicatorBubbleDelegate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit30MomentsIndicatorBubbleDelegate_pSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of MomentsIndicatorBubbleDelegate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit30MomentsIndicatorBubbleDelegate_pSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id static MomentsIndicatorBubble.makeBackgroundColor()()
{
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  if (IsReduceTransparencyEnabled)
  {
    v1 = 1.0;
  }

  else
  {
    v1 = 0.3;
  }

  if (IsReduceTransparencyEnabled)
  {
    v2 = 0.3;
  }

  else
  {
    v2 = 0.0;
  }

  v3 = objc_allocWithZone(MEMORY[0x1E69DC888]);

  return [v3 initWithRed:v2 green:v2 blue:v2 alpha:v1];
}

id MomentsIndicatorBubble.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void MomentsIndicatorBubble.init(coder:)()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_delegate;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_bottomConstraint) = 0;
  v2 = OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_indicator;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  *(v0 + OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_timer) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall MomentsIndicatorBubble.start()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_timer;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_timer);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(v0 + v1);
    *(v0 + v1) = 0;
  }

  v4 = objc_opt_self();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = partial apply for closure #1 in MomentsIndicatorBubble.start();
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v9[3] = &block_descriptor_93;
  v6 = _Block_copy(v9);

  v7 = [v4 scheduledTimerWithTimeInterval:0 repeats:v6 block:4.0];
  _Block_release(v6);
  v8 = *(v0 + v1);
  *(v0 + v1) = v7;
}

void closure #1 in MomentsIndicatorBubble.start()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_timer);
    *(Strong + OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_timer) = 0;

    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v14 = partial apply for closure #1 in MultiwayViewController.fadeOutView(view:duration:completion:);
    v15 = v4;
    aBlock = MEMORY[0x1E69E9820];
    v11 = 1107296256;
    v12 = thunk for @escaping @callee_guaranteed () -> ();
    v13 = &block_descriptor_13_1;
    v5 = _Block_copy(&aBlock);
    v6 = v1;

    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v14 = partial apply for closure #2 in closure #1 in MomentsIndicatorBubble.start();
    v15 = v7;
    aBlock = MEMORY[0x1E69E9820];
    v11 = 1107296256;
    v12 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v13 = &block_descriptor_19_4;
    v8 = _Block_copy(&aBlock);
    v9 = v6;

    [v3 animateWithDuration:v5 animations:v8 completion:0.25];
    _Block_release(v8);
    _Block_release(v5);
  }
}

uint64_t closure #2 in closure #1 in MomentsIndicatorBubble.start()(uint64_t a1, void *a2)
{
  (*((*MEMORY[0x1E69E7D40] & *a2) + 0x90))(v9);
  if (!v9[3])
  {
    return outlined destroy of MomentsIndicatorBubbleDelegate?(v9);
  }

  outlined init with copy of IDSLookupManager(v9, v6);
  outlined destroy of MomentsIndicatorBubbleDelegate?(v9);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 8))(a2, v3, v4);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

Swift::Void __swiftcall MomentsIndicatorBubble.refresh()()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x78);
  v2 = v1();
  (*(*v2 + 160))(v2);

  v4 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_indicator);
  v5 = (v1)(v3);
  v6 = (*(*v5 + 104))(v5);
  v8 = v7;

  outlined bridged method (mbnn) of @objc UILabel.text.setter(v6, v8, v4);
  [*(v0 + OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_timer) invalidate];

  [v0 start];
}

uint64_t MomentsIndicatorBubble.description.getter()
{
  v1 = [*&v0[OBJC_IVAR____TtC15ConversationKit22MomentsIndicatorBubble_indicator] text];
  if (!v1)
  {
    v5.receiver = v0;
    v5.super_class = type metadata accessor for MomentsIndicatorBubble();
    v1 = objc_msgSendSuper2(&v5, sel_description);
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id MomentsIndicatorBubble.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id MomentsIndicatorBubble.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MomentsIndicatorBubble();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t outlined destroy of MomentsIndicatorBubbleDelegate?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit30MomentsIndicatorBubbleDelegate_pSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t key path getter for ProtectedAppsObserver.delegate : ProtectedAppsObserver@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x58))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for ProtectedAppsObserver.delegate : ProtectedAppsObserver(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x60);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t ProtectedAppsObserver.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit21ProtectedAppsObserver_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ProtectedAppsObserver.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit21ProtectedAppsObserver_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return InCallControlsBaseCell.delegate.modify;
}

id ProtectedAppsObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProtectedAppsObserver.init()()
{
  *&v0[OBJC_IVAR____TtC15ConversationKit21ProtectedAppsObserver_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ProtectedAppsObserver();
  v1 = objc_msgSendSuper2(&v6, sel_init);
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [objc_msgSend(v2 subjectMonitorRegistry)];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t ProtectedAppsObserver.appProtectionSubjectsChanged(_:for:)()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))();
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

void ProtectedAppsObserver.hiddenApps.getter()
{
  v0 = [objc_opt_self() hiddenApplications];
  type metadata accessor for APApplication();
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = specialized Array.count.getter(v1);
  if (!v2)
  {
LABEL_10:

    return;
  }

  v3 = v2;
  v13 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1BFB22010](v4, v1);
      }

      else
      {
        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = [v5 bundleIdentifier];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = *(v13 + 16);
      if (v11 >= *(v13 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v4;
      *(v13 + 16) = v11 + 1;
      v12 = v13 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v10;
    }

    while (v3 != v4);
    goto LABEL_10;
  }

  __break(1u);
}

id ProtectedAppsObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProtectedAppsObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*protocol witness for ProtectedAppsObserverProtocol.delegate.modify in conformance ProtectedAppsObserver(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x68))();
  return protocol witness for Control.cnkContentAlpha.modify in conformance BaseButton;
}

uint64_t specialized static PlatformAlert.confirmAddToMessagesGroup(fromViewController:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_63_0();
  a26 = v29;
  a27 = v30;
  v32 = v31;
  v34 = v33;
  OUTLINED_FUNCTION_21_52();
  OUTLINED_FUNCTION_10_42();
  OUTLINED_FUNCTION_24();
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  *(v35 + 24) = v32;
  type metadata accessor for PlatformAlert();
  v36 = objc_opt_self();

  v37 = [v36 conversationKit];
  OUTLINED_FUNCTION_29_3();
  v38.super.isa = v37;
  OUTLINED_FUNCTION_17_0(0xD000000000000021, 0x80000001BC515410, v27, v28, v38);

  v39 = [v36 conversationKit];
  v40.super.isa = v39;
  OUTLINED_FUNCTION_17_0(0xD000000000000023, 0x80000001BC515440, v27, v28, v40);

  v41 = OUTLINED_FUNCTION_25_44();

  if (v41)
  {

    v42 = [v36 conversationKit];
    OUTLINED_FUNCTION_24_3();
    v43.super.isa = v42;
    v47 = OUTLINED_FUNCTION_17_0(v44, v45, v46, v28, v43);
    v49 = v48;

    a15 = 0;
    OUTLINED_FUNCTION_24();
    v50 = swift_allocObject();
    *(v50 + 16) = partial apply for closure #2 in PeoplePickerViewController.addPeople();
    *(v50 + 24) = v35;
    v51 = *(*v41 + 328);

    v51(v47, v49, &a15, closure #1 in static PlatformAlert.confirmAddToMessagesGroup(fromViewController:_:)partial apply, v50);

    v52 = [v36 conversationKit];
    OUTLINED_FUNCTION_8_97();
    OUTLINED_FUNCTION_5_5();
    v53.super.isa = v52;
    OUTLINED_FUNCTION_17_0(v54, v55, v56, v57, v53);
    OUTLINED_FUNCTION_213();

    OUTLINED_FUNCTION_24();
    v58 = swift_allocObject();
    *(v58 + 16) = partial apply for closure #2 in PeoplePickerViewController.addPeople();
    *(v58 + 24) = v35;

    v59 = OUTLINED_FUNCTION_15_57();
    (v51)(v59);

    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.debug.getter();
    os_log(_:dso:log:type:_:)();
    (*(*v41 + 336))(0);
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.error.getter();
    os_log(_:dso:log:type:_:)();
  }

  OUTLINED_FUNCTION_62();
}

void static PlatformAlert.confirmAddToMessagesGroup(fromViewController:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_63_0();
  a26 = v28;
  a27 = v29;
  v57 = v30;
  v32 = v31;
  OUTLINED_FUNCTION_21_52();
  type metadata accessor for PlatformAlert();
  v33 = objc_opt_self();
  v34 = [v33 conversationKit];
  OUTLINED_FUNCTION_29_3();
  v35.super.isa = v34;
  OUTLINED_FUNCTION_17_0(0xD000000000000021, 0x80000001BC515410, 0x61737265766E6F43, v27, v35);

  v36 = [v33 conversationKit];
  v37.super.isa = v36;
  OUTLINED_FUNCTION_17_0(0xD000000000000023, 0x80000001BC515440, 0x61737265766E6F43, v27, v37);

  v38 = OUTLINED_FUNCTION_25_44();

  if (v38)
  {

    v39 = [v33 conversationKit];
    OUTLINED_FUNCTION_24_3();
    v40.super.isa = v39;
    v44 = OUTLINED_FUNCTION_17_0(v41, v42, v43, v27, v40);
    v46 = v45;

    a15 = 0;
    OUTLINED_FUNCTION_24();
    v47 = swift_allocObject();
    *(v47 + 16) = v32;
    *(v47 + 24) = v57;
    v48 = *(*v38 + 328);

    v48(v44, v46, &a15, partial apply for closure #1 in static PlatformAlert.confirmAddToMessagesGroup(fromViewController:_:), v47);

    v49 = [v33 conversationKit];
    OUTLINED_FUNCTION_8_97();
    OUTLINED_FUNCTION_5_5();
    v50.super.isa = v49;
    OUTLINED_FUNCTION_17_0(v51, v52, v53, v54, v50);
    OUTLINED_FUNCTION_213();

    OUTLINED_FUNCTION_24();
    v55 = swift_allocObject();
    *(v55 + 16) = v32;
    *(v55 + 24) = v57;

    v56 = OUTLINED_FUNCTION_15_57();
    (v48)(v56);

    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.debug.getter();
    os_log(_:dso:log:type:_:)();
    (*(*v38 + 336))(0);
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.error.getter();
    os_log(_:dso:log:type:_:)();
    v32(0);
  }

  OUTLINED_FUNCTION_62();
}

void static PlatformAlert.confirmStartCollaboration(in:from:initiator:itemTitle:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_63_0();
  a26 = v27;
  a27 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v39 = ConversationControlsStringProvider.collaborationHUDStrings(initiator:itemTitle:)(v35, v36, v37);
  v41 = v40;
  if (v38[2])
  {
    v43 = v38[4];
    v42 = v38[5];
  }

  else
  {
    v43 = 0;
    v42 = 0xE000000000000000;
  }

  type metadata accessor for PlatformAlert();
  v44 = static PlatformAlert.create(with:message:)(v39, v41, v43, v42);

  if (v44)
  {
    v45 = objc_opt_self();
    v46 = [v45 conversationKit];
    OUTLINED_FUNCTION_29_3();
    v47.super.isa = v46;
    v48 = OUTLINED_FUNCTION_17_0(0x524F42414C4C4F43, 0xEB00000000455441, 0x61737265766E6F43, 0xEF74694B6E6F6974, v47);
    v50 = v49;

    a15 = 0;
    OUTLINED_FUNCTION_24();
    v51 = swift_allocObject();
    *(v51 + 16) = v32;
    *(v51 + 24) = v30;
    v60 = v32;
    v52 = *(*v44 + 328);

    v52(v48, v50, &a15, partial apply for closure #1 in static PlatformAlert.confirmStartCollaboration(in:from:initiator:itemTitle:_:), v51);

    v53 = [v45 conversationKit];
    OUTLINED_FUNCTION_29_3();
    v54.super.isa = v53;
    v55 = OUTLINED_FUNCTION_17_0(0x574F4E5F544F4ELL, 0xE700000000000000, 0x61737265766E6F43, 0xEF74694B6E6F6974, v54);
    v57 = v56;

    a14 = 2;
    OUTLINED_FUNCTION_24();
    v58 = swift_allocObject();
    *(v58 + 16) = v60;
    *(v58 + 24) = v30;

    v52(v55, v57, &a14, partial apply for closure #2 in static PlatformAlert.confirmStartCollaboration(in:from:initiator:itemTitle:_:), v58);

    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.debug.getter();
    os_log(_:dso:log:type:_:)();
    (*(*v44 + 336))(v34);
    OUTLINED_FUNCTION_62();
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.error.getter();
    os_log(_:dso:log:type:_:)();
    v32(0);
    OUTLINED_FUNCTION_62();
  }
}

void *static PlatformAlert.confirmLeavePTTChannel(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v48 - v8;
  v10 = type metadata accessor for Locale();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v11 = OUTLINED_FUNCTION_13_12();
  *(v11 + 16) = xmmword_1BC4BA940;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  v12 = one-time initialization token for conversationKit;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_7_12();
  }

  OUTLINED_FUNCTION_40_0();
  v15 = OUTLINED_FUNCTION_17_0(0xD000000000000020, 0x80000001BC515550, v13, v14, v52);
  v17 = v16;
  if (*(v11 + 16))
  {
    v15 = String.init(format:locale:arguments:)();
    a2 = v18;

    v17 = a2;
  }

  else
  {
  }

  OUTLINED_FUNCTION_10_42();
  outlined destroy of Locale?(v9);
  v19 = objc_opt_self();
  v20 = [v19 conversationKit];
  OUTLINED_FUNCTION_40_0();
  v21.super.isa = v20;
  v22 = OUTLINED_FUNCTION_17_0(0xD000000000000022, 0x80000001BC515580, a2, 0xEF74694B6E6F6974, v21);
  v24 = v23;

  type metadata accessor for PlatformAlert();
  result = static PlatformAlert.create(with:message:)(v15, v17, v22, v24);
  v26 = result;
  if (!result)
  {

    goto LABEL_10;
  }

  if (*MEMORY[0x1E69D44B8])
  {
    v27 = a4;
    v28 = result[3];

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;
    isa = UInt32._bridgeToObjectiveC()().super.super.isa;
    v50 = v29;
    v51 = v31;
    [v28 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    v33 = [v19 conversationKit];
    OUTLINED_FUNCTION_40_0();
    v34.super.isa = v33;
    OUTLINED_FUNCTION_17_0(0x657661654CLL, 0xE500000000000000, a2, 0xEF74694B6E6F6974, v34);
    v36 = v35;

    LOBYTE(v50) = 0;
    OUTLINED_FUNCTION_24();
    v37 = swift_allocObject();
    v38 = v49;
    *(v37 + 16) = v49;
    *(v37 + 24) = v27;
    v39 = v27;
    v40 = *(*v26 + 328);

    v41 = OUTLINED_FUNCTION_12_78();
    v40(v41, v36);

    v42 = [v19 conversationKit];
    OUTLINED_FUNCTION_40_0();
    v43 = OUTLINED_FUNCTION_8_97();
    v44.super.isa = v42;
    OUTLINED_FUNCTION_17_0(v43, v45, a2, 0xEF74694B6E6F6974, v44);
    OUTLINED_FUNCTION_213();

    LOBYTE(v50) = 2;
    OUTLINED_FUNCTION_24();
    v46 = swift_allocObject();
    *(v46 + 16) = v38;
    *(v46 + 24) = v39;

    v47 = OUTLINED_FUNCTION_12_78();
    v40(v47, a2);

LABEL_10:

    return v26;
  }

  __break(1u);
  return result;
}

void *static PlatformAlert.waitOnHoldFailed()()
{
  v0 = _TUIsInternalInstall();
  if (v0)
  {
    v1 = 0xD00000000000003BLL;
  }

  else
  {
    v1 = 0xD000000000000026;
  }

  if (v0)
  {
    v2 = "SmartHolding Failed";
  }

  else
  {
    v2 = "$_callHoldingDebugView";
  }

  type metadata accessor for PlatformAlert();
  v3 = static PlatformAlert.create(with:message:)(0xD000000000000013, 0x80000001BC5122D0, v1, v2 | 0x8000000000000000);

  if (v3)
  {
    v4 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_29_3();
    OUTLINED_FUNCTION_5_5();
    v5.super.isa = v4;
    v8 = OUTLINED_FUNCTION_17_0(19279, 0xE200000000000000, v6, v7, v5);
    v10 = v9;

    v12 = 0;
    (*(*v3 + 328))(v8, v10, &v12, TPNumberPadCharacter.rawValue.getter, 0);
  }

  return v3;
}

void *static PlatformAlert.endWaitOnHoldForAnotherCall(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a3;
  v60 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v65 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v59 - v9;
  v63 = type metadata accessor for Locale();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v63);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v11 = OUTLINED_FUNCTION_13_12();
  v61 = xmmword_1BC4BA940;
  *(v11 + 16) = xmmword_1BC4BA940;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  v12 = lazy protocol witness table accessor for type String and conformance String();
  *(v11 + 64) = v12;
  v64 = a1;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  v13 = one-time initialization token for conversationKit;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_7_12();
  }

  v14 = static LocalizationSource.conversationKit;
  v15 = *(&xmmword_1EDDCCEE8 + 1);
  v16 = xmmword_1EDDCCEE8;
  OUTLINED_FUNCTION_40_0();
  v18.super.isa = v14;
  v19 = OUTLINED_FUNCTION_17_0(v17 + 3, 0x80000001BC5155B0, v16, v15, v18);
  v21 = v20;
  if (*(v11 + 16))
  {
    v19 = String.init(format:locale:arguments:)();
    v23 = v22;

    v21 = v23;
  }

  else
  {
  }

  outlined destroy of Locale?(v10);
  v24 = v65;
  __swift_storeEnumTagSinglePayload(v65, 1, 1, v63);
  v25 = OUTLINED_FUNCTION_13_12();
  *(v25 + 16) = v61;
  *(v25 + 56) = MEMORY[0x1E69E6158];
  *(v25 + 64) = v12;
  *(v25 + 32) = v64;
  *(v25 + 40) = a2;

  OUTLINED_FUNCTION_40_0();
  v26.super.isa = v14;
  v27 = OUTLINED_FUNCTION_17_0(0xD00000000000001CLL, 0x80000001BC5155D0, v16, v15, v26);
  v29 = v28;
  if (*(v25 + 16))
  {
    v27 = String.init(format:locale:arguments:)();
    v31 = v30;

    v29 = v31;
  }

  else
  {
  }

  outlined destroy of Locale?(v24);
  type metadata accessor for PlatformAlert();
  result = static PlatformAlert.create(with:message:)(v19, v21, v27, v29);
  v33 = result;
  if (!result)
  {

    goto LABEL_13;
  }

  v34 = *MEMORY[0x1E69D44B8];
  if (*MEMORY[0x1E69D44B8])
  {
    v35 = result[3];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_16_6();
    isa = UInt32._bridgeToObjectiveC()().super.super.isa;
    v66[0] = v29;
    v66[1] = v34;
    [v35 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    v37 = objc_opt_self();
    v38 = [v37 conversationKit];
    *&v61 = 0xE000000000000000;
    OUTLINED_FUNCTION_5_5();
    v39.super.isa = v38;
    OUTLINED_FUNCTION_17_0(0xD000000000000017, 0x80000001BC5155F0, v40, v41, v39);
    v43 = v42;

    LOBYTE(v66[0]) = 2;
    OUTLINED_FUNCTION_24();
    v44 = swift_allocObject();
    v45 = v59;
    v46 = v60;
    *(v44 + 16) = v59;
    *(v44 + 24) = v46;
    v47 = *(*v33 + 328);

    v48 = OUTLINED_FUNCTION_12_78();
    v47(v48, v43);

    v49 = [v37 conversationKit];
    *&v61 = 0xE000000000000000;
    OUTLINED_FUNCTION_5_5();
    v50.super.isa = v49;
    v55 = OUTLINED_FUNCTION_17_0(v51, v52, v53, v54, v50);
    v57 = v56;

    LOBYTE(v66[0]) = 0;
    OUTLINED_FUNCTION_24();
    v58 = swift_allocObject();
    *(v58 + 16) = v45;
    *(v58 + 24) = v46;

    (v47)(v55, v57, v66, partial apply for closure #2 in static PlatformAlert.endWaitOnHoldForAnotherCall(_:handler:), v58);

LABEL_13:

    return v33;
  }

  __break(1u);
  return result;
}

Swift::Int PlatformAlertActionStyle.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](v1);
  return Hasher._finalize()();
}

void key path setter for PlatformAlert.currentPresentedUserNotification : PlatformAlert(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  PlatformAlert.currentPresentedUserNotification.setter(v1);
}

void *PlatformAlert.currentPresentedUserNotification.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void PlatformAlert.currentPresentedUserNotification.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t PlatformAlert.buttonHandlers.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t PlatformAlert.title.didset()
{
  result = *MEMORY[0x1E695EE58];
  if (*MEMORY[0x1E695EE58])
  {
    v2 = v0[3];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = MEMORY[0x1E69E6158];
    v8 = v3;
    v9 = v4;
    v5 = v0[6];
    if (v5)
    {
      v6 = v0[5];

      v7 = MEMORY[0x1BFB209B0](v6, v5);
    }

    else
    {
      v7 = 0;
    }

    __swift_project_boxed_opaque_existential_1(&v8, MEMORY[0x1E69E6158]);
    [v2 __swift_setObject_forKeyedSubscript_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(&v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PlatformAlert.message.didset()
{
  result = *MEMORY[0x1E695EE60];
  if (*MEMORY[0x1E695EE60])
  {
    v2 = v0[3];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = MEMORY[0x1E69E6158];
    v8 = v3;
    v9 = v4;
    v5 = v0[8];
    if (v5)
    {
      v6 = v0[7];

      v7 = MEMORY[0x1BFB209B0](v6, v5);
    }

    else
    {
      v7 = 0;
    }

    __swift_project_boxed_opaque_existential_1(&v8, MEMORY[0x1E69E6158]);
    [v2 __swift_setObject_forKeyedSubscript_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(&v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PlatformAlert.defaultButtonTitle.didset()
{
  result = *MEMORY[0x1E695EE78];
  if (*MEMORY[0x1E695EE78])
  {
    v2 = v0[3];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = MEMORY[0x1E69E6158];
    v8 = v3;
    v9 = v4;
    v5 = v0[10];
    if (v5)
    {
      v6 = v0[9];

      v7 = MEMORY[0x1BFB209B0](v6, v5);
    }

    else
    {
      v7 = 0;
    }

    __swift_project_boxed_opaque_existential_1(&v8, MEMORY[0x1E69E6158]);
    [v2 __swift_setObject_forKeyedSubscript_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(&v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PlatformAlert.alternateButtonTitle.didset()
{
  result = *MEMORY[0x1E695EE70];
  if (*MEMORY[0x1E695EE70])
  {
    v2 = v0[3];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = MEMORY[0x1E69E6158];
    v8 = v3;
    v9 = v4;
    v5 = v0[12];
    if (v5)
    {
      v6 = v0[11];

      v7 = MEMORY[0x1BFB209B0](v6, v5);
    }

    else
    {
      v7 = 0;
    }

    __swift_project_boxed_opaque_existential_1(&v8, MEMORY[0x1E69E6158]);
    [v2 __swift_setObject_forKeyedSubscript_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(&v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PlatformAlert.otherButtonTitle.didset()
{
  result = *MEMORY[0x1E695EE98];
  if (*MEMORY[0x1E695EE98])
  {
    v2 = v0[3];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = MEMORY[0x1E69E6158];
    v8 = v3;
    v9 = v4;
    v5 = v0[14];
    if (v5)
    {
      v6 = v0[13];

      v7 = MEMORY[0x1BFB209B0](v6, v5);
    }

    else
    {
      v7 = 0;
    }

    __swift_project_boxed_opaque_existential_1(&v8, MEMORY[0x1E69E6158]);
    [v2 __swift_setObject_forKeyedSubscript_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(&v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *static PlatformAlert.create(with:message:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PlatformAlert();
  v8 = swift_allocObject();
  PlatformAlert.init()();
  v8[5] = a1;
  v8[6] = a2;

  PlatformAlert.title.didset();
  v8[7] = a3;
  v8[8] = a4;

  PlatformAlert.message.didset();
  result = *MEMORY[0x1E695EE68];
  if (!*MEMORY[0x1E695EE68])
  {
    __break(1u);
    goto LABEL_8;
  }

  v10 = v8[3];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_16_6();
  v11 = v10;
  OUTLINED_FUNCTION_18_55();
  OUTLINED_FUNCTION_16_61();
  [v10 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  result = *MEMORY[0x1E69D4500];
  if (!*MEMORY[0x1E69D4500])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = v8[3];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_16_6();
  v13 = v12;
  OUTLINED_FUNCTION_18_55();
  OUTLINED_FUNCTION_16_61();
  v14 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  OUTLINED_FUNCTION_6_104(v14);

  swift_unknownObjectRelease();
  result = *MEMORY[0x1E69D44E0];
  if (!*MEMORY[0x1E69D44E0])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v15 = v8[3];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_16_6();
  v16 = v15;
  OUTLINED_FUNCTION_18_55();
  OUTLINED_FUNCTION_16_61();
  v17 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  OUTLINED_FUNCTION_6_104(v17);

  swift_unknownObjectRelease();
  result = *MEMORY[0x1E69D4498];
  if (!*MEMORY[0x1E69D4498])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v18 = v8[3];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_16_6();
  v19 = v18;
  OUTLINED_FUNCTION_18_55();
  OUTLINED_FUNCTION_16_61();
  v20 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  OUTLINED_FUNCTION_6_104(v20);

  swift_unknownObjectRelease();
  result = *MEMORY[0x1E69D44D0];
  if (*MEMORY[0x1E69D44D0])
  {
    v21 = v8[3];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_16_6();
    v22 = v21;
    OUTLINED_FUNCTION_18_55();
    OUTLINED_FUNCTION_16_61();
    v23 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    OUTLINED_FUNCTION_6_104(v23);

    swift_unknownObjectRelease();
    return v8;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t PlatformAlert.__allocating_init()()
{
  v0 = swift_allocObject();
  PlatformAlert.init()();
  return v0;
}

void static PlatformAlert.createUIAlertController(with:message:alertActions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController);

  v10 = @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(a1, a2, a3, a4, 1);
  v11 = specialized Array.count.getter(a5);
  for (i = 0; v11 != i; ++i)
  {
    if ((a5 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1BFB22010](i, a5);
    }

    else
    {
      if (i >= *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v13 = *(a5 + 8 * i + 32);
    }

    v14 = v13;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    [v10 addAction_];
  }
}

uint64_t PlatformAlert.addAction(title:style:handler:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *a3;
  OUTLINED_FUNCTION_24();
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v14 = v6[4];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
  v6[4] = v14;
  swift_endAccess();
  if (v11)
  {
    if (v11 == 1)
    {
      v6[11] = a1;
      v6[12] = a2;

      return PlatformAlert.alternateButtonTitle.didset();
    }

    else
    {
      v6[13] = a1;
      v6[14] = a2;

      return PlatformAlert.otherButtonTitle.didset();
    }
  }

  else
  {
    v6[9] = a1;
    v6[10] = a2;

    return PlatformAlert.defaultButtonTitle.didset();
  }
}

Swift::Void __swiftcall PlatformAlert.show(in:)(UIWindow_optional *in)
{
  v4 = v1;
  v22 = *MEMORY[0x1E69E9840];
  error = 0;
  v5 = *MEMORY[0x1E695E480];
  v6 = CFUserNotificationCreate(*MEMORY[0x1E695E480], 0.0, 0, &error, *(v1 + 24));
  swift_beginAccess();
  v7 = v4[2];
  v4[2] = v6;

  v8 = *(*v4 + 144);
  v9 = v8();
  if (!v9)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v14 = OUTLINED_FUNCTION_13_12();
    *(v14 + 16) = xmmword_1BC4BA940;
    LODWORD(v21) = error;
    String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_213();
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v14 + 32) = v2;
    *(v14 + 40) = v3;
    os_log(_:dso:log:type:_:)();
    goto LABEL_15;
  }

  v10 = v8();
  RunLoopSource = CFUserNotificationCreateRunLoopSource(v5, v10, @objc userNotificationHandler(userNotification:responseFlags:), 0);

  if (!RunLoopSource)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v15 = OUTLINED_FUNCTION_13_12();
    *(v15 + 16) = xmmword_1BC4BA940;
    v16 = v8();
    if (v16)
    {
      v21 = v16;
      type metadata accessor for CFUserNotificationRef(0);
      v17 = String.init<A>(reflecting:)();
      v19 = v18;
    }

    else
    {
      v19 = 0xE300000000000000;
      v17 = 7104878;
    }

    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v15 + 32) = v17;
    *(v15 + 40) = v19;
    os_log(_:dso:log:type:_:)();
LABEL_15:

    return;
  }

  if (one-time initialization token for pendingAlerts != -1)
  {
    OUTLINED_FUNCTION_4_131();
  }

  swift_beginAccess();

  MEMORY[0x1BFB20CC0](v12);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(*((pendingAlerts._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10));
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v13 = CFRunLoopGetMain();
  CFRunLoopAddSource(v13, RunLoopSource, *MEMORY[0x1E695E8D0]);
}

void @objc userNotificationHandler(userNotification:responseFlags:)(void *a1, Swift::UInt a2)
{
  v4 = a1;
  userNotificationHandler(userNotification:responseFlags:)(a1, a2);
}

Swift::Void __swiftcall userNotificationHandler(userNotification:responseFlags:)(CFUserNotificationRef_optional userNotification, Swift::UInt responseFlags)
{
  if (one-time initialization token for pendingAlerts != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    swift_beginAccess();
    v4 = specialized Array.count.getter(pendingAlerts._rawValue);
    v5 = v4 - 1;
    if (__OFSUB__(v4, 1))
    {
      break;
    }

    if (v5 < 0)
    {
      goto LABEL_34;
    }

    v6 = 0;
    while (1)
    {
      swift_beginAccess();
      if ((pendingAlerts._rawValue & 0xC000000000000001) == 0)
      {
        break;
      }

      MEMORY[0x1BFB22010](v6);
LABEL_8:
      swift_endAccess();
      OUTLINED_FUNCTION_19_45();
      v8 = (*(v7 + 144))();
      if (v8)
      {
        v9 = v8;
        if (!userNotification.value)
        {

          goto LABEL_15;
        }

        type metadata accessor for CFUserNotificationRef(0);
        lazy protocol witness table accessor for type CFUserNotificationRef and conformance CFUserNotificationRef();
        v10 = static _CFObject.== infix(_:_:)();

        if (v10)
        {
          goto LABEL_20;
        }
      }

      else if (!userNotification.value)
      {
LABEL_20:
        if (responseFlags == 2)
        {
          OUTLINED_FUNCTION_19_45();
          v13 = (*(v16 + 168))();
          v14 = 2;
          goto LABEL_26;
        }

        if (responseFlags != 1)
        {
          if (!responseFlags)
          {
            OUTLINED_FUNCTION_19_45();
            v13 = (*(v12 + 168))();
            v14 = 0;
LABEL_26:
            v17 = specialized Dictionary.subscript.getter(v14, v13);

            if (v17)
            {
              v17(v18);
              outlined consume of (@escaping @callee_guaranteed () -> ())?(v17);
            }
          }

          swift_beginAccess();
          specialized Array.remove(at:)(v6);
          swift_endAccess();

          return;
        }

        OUTLINED_FUNCTION_19_45();
        v13 = (*(v15 + 168))();
        v14 = 1;
        goto LABEL_26;
      }

LABEL_15:
      if (v5 == v6)
      {
        return;
      }

      if (__OFADD__(v6++, 1))
      {
        goto LABEL_31;
      }
    }

    if (v6 < *((pendingAlerts._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_8;
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    OUTLINED_FUNCTION_4_131();
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

Swift::OpaquePointer *pendingAlerts.unsafeMutableAddressor()
{
  if (one-time initialization token for pendingAlerts != -1)
  {
    OUTLINED_FUNCTION_4_131();
  }

  return &pendingAlerts;
}

uint64_t PlatformAlert.deinit()
{

  return v0;
}

uint64_t PlatformAlert.__deallocating_deinit()
{
  PlatformAlert.deinit();

  return swift_deallocClassInstance();
}

uint64_t PlatformAlert.init()()
{
  *(v0 + 16) = 0;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSMutableDictionary);
  *(v0 + 24) = NSDictionary.init(dictionaryLiteral:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd);
  lazy protocol witness table accessor for type PlatformAlertActionStyle and conformance PlatformAlertActionStyle();
  *(v0 + 32) = Dictionary.init(dictionaryLiteral:)();
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  return v0;
}

uint64_t closure #1 in static PlatformAlert.confirmAddToMessagesGroup(fromViewController:_:)(uint64_t (*a1)(void), uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, char a6)
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  a3();
  os_log(_:dso:log:type:_:)();
  return a1(a6 & 1);
}

uint64_t closure #1 in static PlatformAlert.confirmLeavePTTChannel(_:handler:)(uint64_t (*a1)(void), uint64_t a2, const char *a3, char a4)
{
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, &static Logger.conversationControls);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1BBC58000, v8, v9, a3, v10, 2u);
    MEMORY[0x1BFB23DF0](v10, -1, -1);
  }

  return a1(a4 & 1);
}

unint64_t lazy protocol witness table accessor for type CFUserNotificationRef and conformance CFUserNotificationRef()
{
  result = lazy protocol witness table cache variable for type CFUserNotificationRef and conformance CFUserNotificationRef;
  if (!lazy protocol witness table cache variable for type CFUserNotificationRef and conformance CFUserNotificationRef)
  {
    type metadata accessor for CFUserNotificationRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CFUserNotificationRef and conformance CFUserNotificationRef);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformAlertActionStyle and conformance PlatformAlertActionStyle()
{
  result = lazy protocol witness table cache variable for type PlatformAlertActionStyle and conformance PlatformAlertActionStyle;
  if (!lazy protocol witness table cache variable for type PlatformAlertActionStyle and conformance PlatformAlertActionStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformAlertActionStyle and conformance PlatformAlertActionStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlatformAlertActionStyle and conformance PlatformAlertActionStyle;
  if (!lazy protocol witness table cache variable for type PlatformAlertActionStyle and conformance PlatformAlertActionStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformAlertActionStyle and conformance PlatformAlertActionStyle);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlatformAlertActionStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

double specialized Dictionary.subscript.getter()
{
  OUTLINED_FUNCTION_157_2();
  if (v3 && (v4 = v2, v5 = specialized __RawDictionaryStorage.find<A>(_:)(v1), (v6 & 1) != 0))
  {
    v7 = *(v4 + 56) + 40 * v5;

    outlined init with copy of IDSLookupManager(v7, v0);
  }

  else
  {
    *(v0 + 32) = 0;
    return OUTLINED_FUNCTION_202_0();
  }

  return result;
}

{
  OUTLINED_FUNCTION_157_2();
  if (!v2)
  {
    return OUTLINED_FUNCTION_202_0();
  }

  v3 = v1;
  v4 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v5 & 1) == 0)
  {
    return OUTLINED_FUNCTION_202_0();
  }

  v6 = *(v3 + 56) + 32 * v4;

  outlined init with copy of Any(v6, v0);
  return result;
}

uint64_t specialized Dictionary.subscript.getter()
{
  OUTLINED_FUNCTION_157_2();
  if (v2 && (v3 = v1, v4 = specialized __RawDictionaryStorage.find<A>(_:)(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(v3 + 56);
    v8 = type metadata accessor for Date();
    OUTLINED_FUNCTION_7_0();
    (*(v9 + 16))(v0, v7 + *(v9 + 72) * v6, v8);
    v10 = OUTLINED_FUNCTION_21_3();
    v13 = v8;
  }

  else
  {
    type metadata accessor for Date();
    OUTLINED_FUNCTION_10_0();
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

{
  OUTLINED_FUNCTION_157_2();
  if (v1 && (specialized __RawDictionaryStorage.find<A>(_:)(v0), (v2 & 1) != 0))
  {
    v3 = type metadata accessor for AutoplayCandidate(0);
    OUTLINED_FUNCTION_7_0();
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();
    v4 = OUTLINED_FUNCTION_21_3();
    v7 = v3;
  }

  else
  {
    type metadata accessor for AutoplayCandidate(0);
    OUTLINED_FUNCTION_10_0();
  }

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t specialized Dictionary.subscript.getter(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a5 + 16))
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_200_1(a1);
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, v7, v8);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_146_2(v9);
}

uint64_t specialized Dictionary.subscript.getter(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_200_1(a1);
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5, v6);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_146_2(v7);
}

void specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v4 & 1) != 0))
  {
    v5 = *(a2 + 56) + 32 * v3;
    v6 = *(v5 + 16);
    v7 = *v5;
    v8 = v6;
  }

  else
  {
    OUTLINED_FUNCTION_144_2();
  }

  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_123_2();
}

void specialized Dictionary.subscript.getter()
{
  OUTLINED_FUNCTION_408();
  OUTLINED_FUNCTION_157_2();
  if (!v10)
  {
    OUTLINED_FUNCTION_144_2();
    OUTLINED_FUNCTION_260_3();
LABEL_6:
    v14 = 1;
    goto LABEL_7;
  }

  v1 = v9;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
  if ((v12 & 1) == 0)
  {
    OUTLINED_FUNCTION_144_2();
    OUTLINED_FUNCTION_260_3();
    v22 = 0;
    goto LABEL_6;
  }

  v13 = *(v1 + 56) + (v11 << 6);
  v14 = *v13;
  v1 = *(v13 + 8);
  v2 = *(v13 + 16);
  v3 = *(v13 + 24);
  v5 = *(v13 + 32);
  v23 = *(v13 + 37) | (*(v13 + 39) << 16);
  v15 = *(v13 + 33);
  v4 = *(v13 + 40);
  v6 = *(v13 + 48);
  v7 = *(v13 + 56);
  OUTLINED_FUNCTION_123_2();
  outlined copy of InCallControlButtonConfiguration.Regular?(v16, v17, v18, v19, v5);
  v20 = OUTLINED_FUNCTION_258_0();
  outlined copy of InCallControlButtonConfiguration.Flat?(v20, v21, v7);
  v22 = (v15 << 8) | (v23 << 40);
LABEL_7:
  *v0 = v14;
  v0[1] = v1;
  v0[2] = v2;
  v0[3] = v3;
  v0[4] = v22 | v5;
  v0[5] = v4;
  v0[6] = v6;
  v0[7] = v7;
  OUTLINED_FUNCTION_415();
}

{
  OUTLINED_FUNCTION_157_2();
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(v1);
  if ((v6 & 1) == 0)
  {
    v3 = 0;
LABEL_5:
    v8 = 0;
    v17 = 0;
    v11 = 0;
    v13 = 0;
    v16 = 0;
    v14 = 0;
    v19 = 0;
    v9 = 0;
    v18 = 0;
    goto LABEL_6;
  }

  v7 = *(v4 + 56) + (v5 << 6);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v23 = *(v7 + 21) | (*(v7 + 23) << 16);
  v10 = *(v7 + 17);
  v12 = *(v7 + 24);
  v11 = *(v7 + 32);
  v13 = *(v7 + 40);
  v14 = *(v7 + 48);
  v21 = *v7;
  v22 = *(v7 + 53) | (*(v7 + 55) << 16);
  v15 = *(v7 + 49);
  v16 = *(v7 + 56);
  outlined copy of ButtonBackgroundStyle(*v7, v8, *(v7 + 16));
  v17 = v12;
  outlined copy of ButtonBackgroundStyle(v11, v13, v14);
  v18 = (v10 << 8) | (v23 << 40);
  v19 = (v15 << 8) | (v22 << 40);
  v20 = v16;
  v3 = v21;
LABEL_6:
  *v0 = v3;
  v0[1] = v8;
  v0[2] = v18 | v9;
  v0[3] = v17;
  v0[4] = v11;
  v0[5] = v13;
  v0[6] = v19 | v14;
  v0[7] = v16;
}

{
  OUTLINED_FUNCTION_157_2();
  v3 = 0uLL;
  if (v4)
  {
    v5 = v2;
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(v1);
    if (v7)
    {
      v8 = 0;
      v9 = (*(v5 + 56) + 32 * v6);
      v3 = *v9;
      v10 = v9[1];
    }

    else
    {
      v8 = 1;
      v10 = 0uLL;
      v3 = 0uLL;
    }
  }

  else
  {
    v8 = 1;
    v10 = 0uLL;
  }

  *v0 = v3;
  *(v0 + 16) = v10;
  *(v0 + 32) = v8;
}

id specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 56) + 16 * v3;
  v6 = *v5;
  outlined copy of SensitiveContentController.HistoryCheckStatus(*v5, *(v5 + 8));
  return v6;
}

unint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 3;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v4)
  {
    return *(*(a2 + 56) + 6 * v3) | (*(*(a2 + 56) + 6 * v3 + 4) << 32);
  }

  else
  {
    return 3;
  }
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a3();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_146_2(v3);
}

uint64_t specialized Dictionary.subscript.getter(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(a1 & 1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_146_2(v2);
}

double specialized Dictionary.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    return OUTLINED_FUNCTION_202_0();
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v5 & 1) == 0)
  {
    return OUTLINED_FUNCTION_202_0();
  }

  v6 = *(a1 + 56) + 32 * v4;

  outlined init with copy of Any(v6, a2);
  return result;
}

uint64_t Participant.shortName.getter()
{
  Participant.contactDetails.getter();

  OUTLINED_FUNCTION_62_0();
  Participant.name(_:)();

  return OUTLINED_FUNCTION_46();
}

BOOL static Participant.== infix(_:_:)()
{
  OUTLINED_FUNCTION_6_7();
  static Participant.State.== infix(_:_:)();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_263_0(v4);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v2 + 28);
  v6 = *(v1 + v5);
  if (!*(v0 + v5))
  {
    if (!v6)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (!v6)
  {
    return 0;
  }

LABEL_5:
  OUTLINED_FUNCTION_120_4();
  if (v7)
  {
    v8 = 0x100000000;
  }

  else
  {
    v8 = 0;
  }

  v9 = OUTLINED_FUNCTION_195(v8);

  return static Participant.Capabilities.== infix(_:_:)(v9, v10);
}

uint64_t Participant.captionInfo.getter()
{
  v1 = OUTLINED_FUNCTION_7_94();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13_57();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_4_31();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_208();
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
    OUTLINED_FUNCTION_17_59(v2);
    OUTLINED_FUNCTION_164_0(v6);
    type metadata accessor for Date();
    OUTLINED_FUNCTION_15_1();
    (*(v3 + 8))(v0);
    v4 = OUTLINED_FUNCTION_15_14();
    outlined copy of Participant.CaptionInfo?(v4);
    outlined destroy of Participant.MediaInfo(v6);
  }

  else
  {
    OUTLINED_FUNCTION_4_132();
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
    OUTLINED_FUNCTION_144_2();
  }

  return OUTLINED_FUNCTION_15_14();
}

Swift::Int specialized BidirectionalCollection.suffix(_:)(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = specialized Array.count.getter(a2);
  v5 = specialized Array.index(_:offsetBy:limitedBy:)(v4, -a1, 0);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  if (v4 < v7)
  {
    goto LABEL_18;
  }

  v8 = OUTLINED_FUNCTION_46();
  specialized Array._checkIndex(_:)(v8);
  v9 = OUTLINED_FUNCTION_4_31();
  result = specialized Array._checkIndex(_:)(v9);
  if ((a2 & 0xC000000000000001) == 0 || v7 == v4)
  {
  }

  else
  {
    if (v7 >= v4)
    {
      goto LABEL_21;
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUSmartHoldingEvent);

    result = v7;
    do
    {
      v11 = result + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(result);
      result = v11;
    }

    while (v4 != v11);
  }

  if (a2 >> 62)
  {
LABEL_19:

    OUTLINED_FUNCTION_44_0();
    v12 = _CocoaArrayWrapper.subscript.getter();

    return v12;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {

    return a2 & 0xFFFFFFFFFFFFFF8;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t specialized BidirectionalCollection.suffix(_:)(uint64_t result, uint64_t a2, void (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(a2 + 16);
    result = specialized Array.index(_:offsetBy:limitedBy:)(v4, -result, 0);
    if (v5)
    {
      result = 0;
    }

    if (v4 >= result)
    {
      a3();

      return OUTLINED_FUNCTION_15_14();
    }
  }

  __break(1u);
  return result;
}

id Participant.isDestinationTemporary.getter()
{
  return Participant.isDestinationTemporary.getter();
}

{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = *(v1 + *(type metadata accessor for Participant(v2) + 28));
  if (!v3)
  {
    return 0;
  }

  v4 = [v3 value];
  if (!v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = MEMORY[0x1BFB209B0](v5);
  }

  v6 = [v4 *v0];

  return v6;
}

uint64_t Participant.name.getter()
{
  Participant.contactDetails.getter();

  OUTLINED_FUNCTION_44_0();
  Participant.name(_:)();

  return OUTLINED_FUNCTION_46();
}

uint64_t Participant.isActive.getter()
{
  type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_38_2();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_44_0();
  v2 = 0;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 4u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
      OUTLINED_FUNCTION_192_1();
      OUTLINED_FUNCTION_37((v0 + v5));
      outlined destroy of Participant.MediaInfo(v0);
      v2 = 1;
      goto LABEL_2;
    case 6u:
      return v2;
    default:
LABEL_2:
      type metadata accessor for Date();
      OUTLINED_FUNCTION_15_1();
      (*(v3 + 8))(v0);
      break;
  }

  return v2;
}

uint64_t Participant.isScreenSharing.getter()
{
  if (Participant.screenState.getter() == 2)
  {
    return 0;
  }

  return Participant.isReceivingScreenFrames.getter();
}

double Participant.screenProvider.getter()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_1_5();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_316();
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
    OUTLINED_FUNCTION_28_45(v3);
    OUTLINED_FUNCTION_208_3(v6);
    type metadata accessor for Date();
    OUTLINED_FUNCTION_15_1();
    (*(v4 + 8))(v1);
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined destroy of Participant.MediaInfo(v6);
    if (v7[3] != 1)
    {
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      outlined destroy of Participant.ScreenInfo(v7);
      return result;
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_132();
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
    OUTLINED_FUNCTION_107_3();
  }

  outlined destroy of CallControlsService?(v7, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
  *(v0 + 32) = 0;
  return OUTLINED_FUNCTION_264_1();
}

uint64_t Participant.requiresScreenInfoUpdate(from:)()
{
  v0 = &_s15ConversationKit11ParticipantVSgMR;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v44.i8[-v3];
  type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_2_83(v4);
  if (!v6)
  {
    OUTLINED_FUNCTION_3_138();
    OUTLINED_FUNCTION_15_14();
    _s15ConversationKit11ParticipantVWObTm_6();
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_15_58();
    _s10Foundation4UUIDVACSQAAWlTm_0(v7, v8);
    v9 = dispatch thunk of static Equatable.== infix(_:_:)();
    if ((v9 & 1) == 0)
    {
      goto LABEL_86;
    }

    v10 = Participant.deviceOrientation.getter();
    v12 = v11;
    v13 = Participant.deviceOrientation.getter();
    if (v12)
    {
      if ((v14 & 1) == 0)
      {
LABEL_86:
        OUTLINED_FUNCTION_124_0();
        goto LABEL_87;
      }
    }

    else if ((v14 & 1) != 0 || v10 != v13)
    {
      goto LABEL_86;
    }

    Participant.aspectRatio.getter(v62);
    v46 = v62[0];
    v47 = v62[1];
    v15 = v63;
    Participant.aspectRatio.getter(v65);
    if (v64)
    {
      if ((v67 & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    else
    {
      if (v67)
      {
        goto LABEL_86;
      }

      v74[0] = v65[0];
      v74[1] = v65[1];
      v75 = v66 & 1;
      v72[0] = v46;
      v72[1] = v47;
      v73 = v15 & 1;
      if (!static AspectRatio.== infix(_:_:)(v72, v74))
      {
        goto LABEL_86;
      }
    }

    OUTLINED_FUNCTION_206_1();
    v16 = v49.i64[1];
    if (v49.i64[1] == 1)
    {
      outlined destroy of CallControlsService?(&v48, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
      v17 = 0.0;
    }

    else
    {
      v17 = v52;
      outlined destroy of Participant.ScreenInfo(&v48);
    }

    OUTLINED_FUNCTION_205_3();
    OUTLINED_FUNCTION_116_4();
    if (v6)
    {
      outlined destroy of CallControlsService?(&v48, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
      if (v16 != 1)
      {
        goto LABEL_86;
      }
    }

    else
    {
      v18 = v52;
      outlined destroy of Participant.ScreenInfo(&v48);
      if (v16 == 1 || v17 != v18)
      {
        goto LABEL_86;
      }
    }

    OUTLINED_FUNCTION_206_1();
    OUTLINED_FUNCTION_116_4();
    if (v6)
    {
      outlined destroy of CallControlsService?(&v48, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
      v20 = 1;
      v19 = 0.0;
    }

    else
    {
      v19 = v53;
      v20 = v61;
      outlined destroy of Participant.ScreenInfo(&v48);
      if (v20)
      {
        v19 = 0.0;
      }
    }

    OUTLINED_FUNCTION_205_3();
    OUTLINED_FUNCTION_116_4();
    if (v6)
    {
      outlined destroy of CallControlsService?(&v48, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
      if ((v20 & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    else
    {
      v21 = v53;
      v22 = v61;
      outlined destroy of Participant.ScreenInfo(&v48);
      if (v20)
      {
        if ((v22 & 1) == 0)
        {
          goto LABEL_86;
        }
      }

      else if ((v22 & 1) != 0 || v19 != v21)
      {
        goto LABEL_86;
      }
    }

    OUTLINED_FUNCTION_206_1();
    OUTLINED_FUNCTION_116_4();
    if (v6)
    {
      outlined destroy of CallControlsService?(&v48, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
      v0 = 0;
      v20 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_163_2();
    }

    OUTLINED_FUNCTION_205_3();
    OUTLINED_FUNCTION_116_4();
    if (v6)
    {
      outlined destroy of CallControlsService?(&v48, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
      if ((v20 & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    else
    {
      v23 = v58;
      v24 = v61;
      outlined destroy of Participant.ScreenInfo(&v48);
      if (v20)
      {
        if ((v24 & 1) == 0)
        {
          goto LABEL_86;
        }
      }

      else
      {
        if (v24)
        {
          v25 = 0;
        }

        else
        {
          v25 = v23;
        }

        if ((v24 & 1) != 0 || v0 != v25)
        {
          goto LABEL_86;
        }
      }
    }

    OUTLINED_FUNCTION_206_1();
    OUTLINED_FUNCTION_116_4();
    if (v6)
    {
      outlined destroy of CallControlsService?(&v48, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
      v0 = 0;
      v20 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_163_2();
    }

    OUTLINED_FUNCTION_205_3();
    OUTLINED_FUNCTION_116_4();
    if (v6)
    {
      outlined destroy of CallControlsService?(&v48, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
      if ((v20 & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    else
    {
      v26 = v59;
      v27 = v61;
      outlined destroy of Participant.ScreenInfo(&v48);
      if (v20)
      {
        if ((v27 & 1) == 0)
        {
          goto LABEL_86;
        }
      }

      else
      {
        if (v27)
        {
          v28 = 0;
        }

        else
        {
          v28 = v26;
        }

        if ((v27 & 1) != 0 || v0 != v28)
        {
          goto LABEL_86;
        }
      }
    }

    OUTLINED_FUNCTION_206_1();
    OUTLINED_FUNCTION_116_4();
    if (v6)
    {
      outlined destroy of CallControlsService?(&v48, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
      v0 = 0;
      v20 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_163_2();
    }

    OUTLINED_FUNCTION_205_3();
    OUTLINED_FUNCTION_116_4();
    if (v6)
    {
      outlined destroy of CallControlsService?(&v48, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
      if ((v20 & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    else
    {
      v29 = v60;
      v30 = v61;
      outlined destroy of Participant.ScreenInfo(&v48);
      if (v20)
      {
        if ((v30 & 1) == 0)
        {
          goto LABEL_86;
        }
      }

      else
      {
        if (v30)
        {
          v31 = 0;
        }

        else
        {
          v31 = v29;
        }

        if ((v30 & 1) != 0 || v0 != v31)
        {
          goto LABEL_86;
        }
      }
    }

    OUTLINED_FUNCTION_206_1();
    OUTLINED_FUNCTION_116_4();
    if (v6)
    {
      outlined destroy of CallControlsService?(&v48, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
      v46 = 0u;
      v47 = 0u;
      v32 = 1;
      v33 = 0.0;
      v34 = 0.0;
    }

    else
    {
      v32 = v61;
      if (v61)
      {
        v33 = 0.0;
      }

      else
      {
        v33 = v56;
      }

      if (v61)
      {
        v34 = 0.0;
      }

      else
      {
        v34 = v57;
      }

      if (v61)
      {
        v37 = -1;
      }

      else
      {
        v37 = 0;
      }

      v38 = vdupq_n_s64(v37);
      v46 = vbicq_s8(v55, v38);
      v47 = vbicq_s8(v54, v38);
      outlined destroy of Participant.ScreenInfo(&v48);
    }

    OUTLINED_FUNCTION_205_3();
    OUTLINED_FUNCTION_116_4();
    if (v6)
    {
      outlined destroy of CallControlsService?(&v48, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
      if (v32)
      {
        v39 = 1;
LABEL_116:
        OUTLINED_FUNCTION_124_0();
        v35 = v39 ^ 1;
        return v35 & 1;
      }
    }

    else
    {
      v39 = v61;
      v44 = v55;
      v45 = v54;
      if (v61)
      {
        v40 = 0.0;
      }

      else
      {
        v40 = v56;
      }

      if (v61)
      {
        v41 = 0.0;
      }

      else
      {
        v41 = v57;
      }

      if (v61)
      {
        v42 = -1;
      }

      else
      {
        v42 = 0;
      }

      outlined destroy of Participant.ScreenInfo(&v48);
      if (v32)
      {
        goto LABEL_116;
      }

      if ((v39 & 1) == 0)
      {
        v43 = vdupq_n_s64(v42);
        v48 = vbicq_s8(v45, v43);
        v49 = vbicq_s8(v44, v43);
        v50 = v40;
        v51 = v41;
        v68 = v47;
        v69 = v46;
        v70 = v33;
        v71 = v34;
        v39 = static CGAffineTransform.== infix(_:_:)();
        goto LABEL_116;
      }
    }

    v39 = 0;
    goto LABEL_116;
  }

  outlined destroy of CallControlsService?(v4, &_s15ConversationKit11ParticipantVSgMd);
LABEL_87:
  v35 = 1;
  return v35 & 1;
}

void Participant.screenInfo.getter()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_1_5();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_316();
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
    OUTLINED_FUNCTION_28_45(v3);
    OUTLINED_FUNCTION_208_3(v5);
    type metadata accessor for Date();
    OUTLINED_FUNCTION_15_1();
    (*(v4 + 8))(v1);
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined destroy of Participant.MediaInfo(v5);
  }

  else
  {
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
    *v0 = 0;
    v0[1] = 0;
    v0[2] = 0;
    v0[3] = 1;
    bzero(v0 + 4, 0xB1uLL);
  }
}

uint64_t Participant.ScreenInfo.displayScale.getter()
{
  if (*(v0 + 208))
  {
    return 0;
  }

  else
  {
    return *(v0 + 112);
  }
}

uint64_t Participant.deviceOrientation.getter()
{
  v1 = OUTLINED_FUNCTION_7_94();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_15_14();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_62_0();
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
    OUTLINED_FUNCTION_28_45(v2);
    OUTLINED_FUNCTION_208_3(v6);
    type metadata accessor for Date();
    OUTLINED_FUNCTION_15_1();
    (*(v3 + 8))(v0);
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined destroy of Participant.MediaInfo(v6);
    if (v7[3] != 1)
    {
      memcpy(v8, v7, 0xD1uLL);
      v4 = v8[6];
      outlined destroy of Participant.ScreenInfo(v8);
      return v4;
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_132();
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
    memset(v7, 0, 24);
    v7[3] = 1;
    bzero(&v7[4], 0xB1uLL);
  }

  outlined destroy of CallControlsService?(v7, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
  Participant.videoInfo.getter();
  if (!v6[0])
  {
    return 0;
  }

  v4 = v6[3];
  outlined destroy of CallControlsService?(v6, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
  return v4;
}

uint64_t Participant.aspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_208();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
    v5 = *(v4 + 48);
    OUTLINED_FUNCTION_37((v1 + *(v4 + 64)));
    memcpy(v14, (v1 + v5), sizeof(v14));
    type metadata accessor for Date();
    OUTLINED_FUNCTION_15_1();
    (*(v6 + 8))(v1);
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined destroy of Participant.MediaInfo(v14);
    if (v15[3] != 1)
    {
      memcpy(v16, v15, sizeof(v16));
      v12 = *&v16[64];
      v13 = *&v16[80];
      v7 = v16[96];
      result = outlined destroy of Participant.ScreenInfo(v16);
      goto LABEL_7;
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_132();
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
    memset(v15, 0, 24);
    v15[3] = 1;
    bzero(&v15[4], 0xB1uLL);
  }

  outlined destroy of CallControlsService?(v15, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
  result = Participant.videoInfo.getter();
  if (!v14[0])
  {
    v7 = 0;
    v9 = 0uLL;
    v11 = 1;
    v10 = 0uLL;
    goto LABEL_9;
  }

  v12 = *&v14[5];
  v13 = *&v14[7];
  v7 = v14[9];
  result = outlined destroy of CallControlsService?(v14, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
LABEL_7:
  v9 = v12;
  v10 = v13;
  v11 = 0;
LABEL_9:
  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 32) = v7 & 1;
  *(a1 + 33) = v11;
  return result;
}

uint64_t Participant.ScreenInfo.displayCornerRadius.getter()
{
  if (*(v0 + 208))
  {
    return 0x4024000000000000;
  }

  if ((*(v0 + 128) & 1) == 0)
  {
    return *(v0 + 120);
  }

  result = 0x4034000000000000;
  switch(*(v0 + 184))
  {
    case 0:
    case 1:
    case 4:
      return 0x4024000000000000;
    case 2:
      if (Participant.ScreenInfo.isMaybeTouchIDDevice()())
      {
        result = 0x4024000000000000;
      }

      else
      {
        result = 0x4049000000000000;
      }

      break;
    case 3:
      return result;
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25TUScreenShareDeviceFamilyVSgMd);
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      break;
  }

  return result;
}

void Participant.ScreenInfo.systemRootLayerTransform.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 208);
  v3 = 0uLL;
  v4 = 0uLL;
  v5 = 0uLL;
  if ((v2 & 1) == 0)
  {
    v5 = *(v1 + 168);
    v4 = *(v1 + 152);
    v3 = *(v1 + 136);
  }

  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v2 & 1;
}

void Participant.contactDetails.getter()
{
  OUTLINED_FUNCTION_29();
  v2 = OUTLINED_FUNCTION_30();
  v3 = type metadata accessor for Participant(v2);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  type metadata accessor for PersonNameComponents();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_57();
  v9 = *(v1 + *(v3 + 28));
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v9;
  v11 = outlined bridged method (pb) of @objc TUHandle.siriDisplayName.getter(v10);
  if (!v12)
  {

LABEL_9:
    OUTLINED_FUNCTION_27_45();
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();

    ParticipantContactDetails.init(participant:cache:)(v7, v0);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  if (([v10 shouldHideContact] & 1) == 0)
  {

    goto LABEL_9;
  }

  PersonNameComponents.init()();
  PersonNameComponents.givenName.setter();
  PersonNameComponents.familyName.setter();
  if (one-time initialization token for initials != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = static NSPersonNameComponentsFormatter.initials;
  isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
  v17 = [v15 stringFromPersonNameComponents_];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = OUTLINED_FUNCTION_209();
  v19(v18);
  lazy protocol witness table accessor for type String and conformance String();
  v20 = StringProtocol.localizedUppercase.getter();
  v22 = v21;

  *v0 = 0;
  v0[1] = v13;
  v0[2] = v14;
  v0[3] = v13;
  v0[4] = v14;
  v0[5] = v20;
  v0[6] = v22;

LABEL_10:
  OUTLINED_FUNCTION_30_0();
}

uint64_t Participant.Caption.debugDescription.getter()
{
  OUTLINED_FUNCTION_104_6();
  _StringGuts.grow(_:)(73);
  OUTLINED_FUNCTION_255_0();
  MEMORY[0x1BFB20B10](0x6E6F6974706143, 0xE700000000000000);
  OUTLINED_FUNCTION_2_67();
  MEMORY[0x1BFB20B10]();
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1BFB20B10](v0);

  MEMORY[0x1BFB20B10](0x724365746164202CLL, 0xEF203A6465746165);
  type metadata accessor for Participant.Caption(0);
  type metadata accessor for Date();
  OUTLINED_FUNCTION_46_22();
  _s10Foundation4UUIDVACSQAAWlTm_0(v1, v2);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1BFB20B10](v3);

  MEMORY[0x1BFB20B10](0x705565746164202CLL, 0xEF203A6465746164);
  dispatch thunk of CustomStringConvertible.description.getter();
  OUTLINED_FUNCTION_276_0();

  OUTLINED_FUNCTION_2_67();
  MEMORY[0x1BFB20B10](0xD000000000000011);
  return v5;
}

void Participant.CaptionInfo.with(history:)()
{
  OUTLINED_FUNCTION_29();
  v77[2] = v2;
  v77[1] = v3;
  v5 = v4;
  v7 = v6;
  v84 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4();
  v83 = v11;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_32();
  v82 = v13;
  v14 = OUTLINED_FUNCTION_4_24();
  v81 = type metadata accessor for Participant.Caption(v14);
  OUTLINED_FUNCTION_1();
  v94 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_214();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v85 = v19;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v90 = v21;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_63_12();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v77 - v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_83_1();
  if (v7)
  {
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v96 = v5;

  specialized Array.append<A>(contentsOf:)(v27);
  specialized BidirectionalCollection.suffix(_:)(50, v96, specialized Array.subscript.getter);
  v29 = v28;
  v31 = v30;
  if ((v30 & 1) == 0)
  {
    goto LABEL_5;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v36 = swift_dynamicCastClass();
  if (!v36)
  {
    swift_unknownObjectRelease();
    v36 = MEMORY[0x1E69E7CC0];
  }

  v37 = *(v36 + 16);

  if (__OFSUB__(v31 >> 1, v29))
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v37 != (v31 >> 1) - v29)
  {
LABEL_72:
    swift_unknownObjectRelease();
LABEL_5:
    v32 = OUTLINED_FUNCTION_139();
    specialized _copyCollectionToContiguousArray<A>(_:)(v32, v33, v29, v31);
    v35 = v34;
LABEL_12:
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v35 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v35)
  {
    v35 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

LABEL_13:
  v93 = *(v35 + 16);
  if (!v93)
  {
LABEL_63:

    v96 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC15ConversationKit11ParticipantV7CaptionV_SD6ValuesVySiAH_GTt0g5();

    specialized MutableCollection<>.sort(by:)(&v96);

    swift_unknownObjectRetain();

    OUTLINED_FUNCTION_30_0();
    return;
  }

  v38 = 0;
  v92 = v35 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
  v80 = (v9 + 16);
  v39 = MEMORY[0x1E69E7CC8];
  v78 = v0;
  v79 = (v9 + 40);
  v95 = v1;
  v91 = v35;
  v89 = v25;
  while (1)
  {
    if (v38 >= *(v35 + 16))
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v9 = *(v94 + 72);
    OUTLINED_FUNCTION_26_44();
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();
    v29 = *v1;
    if (*(v39 + 16))
    {
      specialized __RawDictionaryStorage.find<A>(_:)(*v1);
      if (v40)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_26_44();
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_159_2();
    OUTLINED_FUNCTION_135_1();
    if (v60)
    {
      goto LABEL_65;
    }

    v31 = v64;
    v66 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySi15ConversationKit11ParticipantV7CaptionVGMd);
    if (OUTLINED_FUNCTION_158_2())
    {
      specialized __RawDictionaryStorage.find<A>(_:)(v29);
      OUTLINED_FUNCTION_9_32();
      v1 = v95;
      if (!v63)
      {
        goto LABEL_73;
      }

      v31 = v67;
    }

    else
    {
      v1 = v95;
    }

    v39 = v96;
    if (v66)
    {
      OUTLINED_FUNCTION_44_17();
      outlined assign with take of Participant.Caption();
      OUTLINED_FUNCTION_42_26();
      _s15ConversationKit11ParticipantV5StateOWOhTm_1();
    }

    else
    {
      OUTLINED_FUNCTION_48_17();
      OUTLINED_FUNCTION_25_45();
      _s15ConversationKit11ParticipantVWObTm_6();
      OUTLINED_FUNCTION_42_26();
      _s15ConversationKit11ParticipantV5StateOWOhTm_1();
      v68 = *(v39 + 16);
      v60 = __OFADD__(v68, 1);
      v69 = v68 + 1;
      if (v60)
      {
        goto LABEL_66;
      }

      *(v39 + 16) = v69;
    }

    v35 = v91;
LABEL_62:
    if (v93 == ++v38)
    {
      goto LABEL_63;
    }
  }

  v86 = v9;
  v87 = v38;
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_25_45();
  OUTLINED_FUNCTION_62_0();
  _s15ConversationKit11ParticipantVWObTm_6();
  v0 = v81;
  v41 = *(v81 + 20);
  v42 = v1 + v41;
  v43 = &v25[v41];
  static Date.> infix(_:_:)();
  v44 = v90;
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_46_22();
  v88 = _s10Foundation4UUIDVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, v45);
  OUTLINED_FUNCTION_157();
  v46 = v84;
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    v47 = v43;
  }

  else
  {
    v47 = v42;
  }

  v31 = *v80;
  v48 = v82;
  (*v80)(v82, v47, v46);
  v9 = *v79;
  (*v79)(v44 + v0[5], v48, v46);
  v49 = v0[6];
  v50 = (v95 + v49);
  v1 = &v89[v49];
  OUTLINED_FUNCTION_157();
  if (dispatch thunk of static Comparable.>= infix(_:_:)())
  {
    v51 = v1;
  }

  else
  {
    v51 = v50;
  }

  v52 = v83;
  (v31)(v83, v51, v46);
  (v9)(v44 + v0[6], v52, v46);
  v53 = (v44 + v0[7]);
  v55 = *v53;
  v54 = v53[1];
  v56 = v55 & 0xFFFFFFFFFFFFLL;
  if ((v54 & 0x2000000000000000) != 0)
  {
    v57 = HIBYTE(v54) & 0xF;
  }

  else
  {
    v57 = v56;
  }

  v29 = *v44;
  if (v57)
  {
    v25 = v89;
    OUTLINED_FUNCTION_26_44();
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_159_2();
    OUTLINED_FUNCTION_135_1();
    if (v60)
    {
      goto LABEL_67;
    }

    v31 = v58;
    v61 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySi15ConversationKit11ParticipantV7CaptionVGMd);
    if (OUTLINED_FUNCTION_158_2())
    {
      specialized __RawDictionaryStorage.find<A>(_:)(v29);
      OUTLINED_FUNCTION_9_32();
      v0 = v78;
      v1 = v95;
      v38 = v87;
      if (!v63)
      {
        goto LABEL_73;
      }

      v31 = v62;
    }

    else
    {
      v0 = v78;
      v1 = v95;
      v38 = v87;
    }

    v39 = v96;
    if (v61)
    {
      OUTLINED_FUNCTION_44_17();
LABEL_58:
      outlined assign with take of Participant.Caption();
LABEL_61:
      _s15ConversationKit11ParticipantV5StateOWOhTm_1();
      OUTLINED_FUNCTION_138_2();
      _s15ConversationKit11ParticipantV5StateOWOhTm_1();
      v35 = v91;
      OUTLINED_FUNCTION_42_26();
      _s15ConversationKit11ParticipantV5StateOWOhTm_1();
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_48_17();
    OUTLINED_FUNCTION_25_45();
    _s15ConversationKit11ParticipantVWObTm_6();
    v74 = *(v39 + 16);
    v60 = __OFADD__(v74, 1);
    v75 = v74 + 1;
    if (v60)
    {
      goto LABEL_69;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_26_44();
  v25 = v89;
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_159_2();
  OUTLINED_FUNCTION_135_1();
  if (v60)
  {
    goto LABEL_68;
  }

  v31 = v70;
  v72 = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySi15ConversationKit11ParticipantV7CaptionVGMd);
  if (!OUTLINED_FUNCTION_158_2())
  {
    v0 = v78;
    v1 = v95;
    v38 = v87;
    goto LABEL_56;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(v29);
  OUTLINED_FUNCTION_9_32();
  v0 = v78;
  v1 = v95;
  v38 = v87;
  if (v63)
  {
    v31 = v73;
LABEL_56:
    v39 = v96;
    if (v72)
    {
      OUTLINED_FUNCTION_44_17();
      OUTLINED_FUNCTION_224_0();
      goto LABEL_58;
    }

    OUTLINED_FUNCTION_48_17();
    OUTLINED_FUNCTION_25_45();
    OUTLINED_FUNCTION_224_0();
    _s15ConversationKit11ParticipantVWObTm_6();
    v76 = *(v39 + 16);
    v60 = __OFADD__(v76, 1);
    v75 = v76 + 1;
    if (v60)
    {
      goto LABEL_70;
    }

LABEL_60:
    *(v39 + 16) = v75;
    goto LABEL_61;
  }

LABEL_73:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);

  __break(1u);
}

uint64_t Participant.ScreenInfo.deviceFamily.getter()
{
  if (*(v0 + 208))
  {
    return 0;
  }

  else
  {
    return *(v0 + 184);
  }
}

uint64_t Participant.isMomentsAvailable.getter()
{
  OUTLINED_FUNCTION_88_6();
  if (*(v0 + v1) == 1)
  {
    Participant.hasReducedQualityVideo.getter();
    v3 = v2 ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

BOOL Participant.isKickingAvailable.getter()
{
  v1 = v0;
  type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13_57();
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_46();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_209();
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
    v5 = *(v4 + 48);
    OUTLINED_FUNCTION_21_53(v4);
    v6 = OUTLINED_FUNCTION_187_3();
    v7(v6);
    outlined destroy of Participant.MediaInfo(v0 + v5);
    Date.timeIntervalSinceNow.getter();
    if (v8 <= 0.0)
    {
      Date.timeIntervalSinceNow.getter();
      v17 = -v16;
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_0_9();
      }

      OUTLINED_FUNCTION_0_1();
      v19 = (*(v18 + 720))();
      v20 = OUTLINED_FUNCTION_1_5();
      v21(v20);
      v14 = v17 <= v19;
      OUTLINED_FUNCTION_88_6();
      OUTLINED_FUNCTION_251_2();
      if (v23)
      {
        v13 = v22;
LABEL_12:
        type metadata accessor for Participant(0);
        if (*(v1 + *(v13 + 28)))
        {
          return v14;
        }
      }
    }

    else
    {
      v9 = OUTLINED_FUNCTION_1_5();
      v10(v9);
      OUTLINED_FUNCTION_88_6();
      OUTLINED_FUNCTION_251_2();
      if (v12 == 1)
      {
        v13 = v11;
        v14 = 0;
        goto LABEL_12;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_132();
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
  }

  return 0;
}

uint64_t Participant.canShowKickButtonOnVideoTile.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  if ((*(v0 + 632))())
  {
    Participant.aspectRatio.getter(v3);
    v1 = v3[33] | v3[32];
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

uint64_t Participant.videoInfo.getter()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_1_5();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_316();
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
    OUTLINED_FUNCTION_28_45(v3);
    OUTLINED_FUNCTION_208_3(v13);
    type metadata accessor for Date();
    OUTLINED_FUNCTION_15_1();
    (*(v4 + 8))(v1);
    memcpy(v12, v14, 0x4BuLL);
    OUTLINED_FUNCTION_179_1();
    result = outlined destroy of Participant.MediaInfo(v13);
    v6 = v12[0];
    v7 = v12[1];
    v8 = v12[2];
    v9 = v12[3];
    v10 = *&v12[4];
    v11 = WORD4(v12[4]) | (BYTE10(v12[4]) << 16);
  }

  else
  {
    OUTLINED_FUNCTION_4_132();
    result = _s15ConversationKit11ParticipantV5StateOWOhTm_1();
    v10 = 0;
    v11 = 0;
    v6 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
  }

  *v0 = v6;
  *(v0 + 16) = v7;
  *(v0 + 32) = v8;
  *(v0 + 48) = v9;
  *(v0 + 64) = v10;
  *(v0 + 72) = v11;
  *(v0 + 74) = BYTE2(v11);
  return result;
}

uint64_t Participant.isReceivingVideoFrames.getter()
{
  v1 = OUTLINED_FUNCTION_7_94();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13_57();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_4_31();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_208();
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
    OUTLINED_FUNCTION_17_59(v2);
    OUTLINED_FUNCTION_68_7();
    type metadata accessor for Date();
    OUTLINED_FUNCTION_15_1();
    (*(v3 + 8))(v0);
    OUTLINED_FUNCTION_110_5();
    OUTLINED_FUNCTION_179_1();
    outlined destroy of Participant.MediaInfo(&v6);
    if (v5)
    {
      outlined destroy of CallControlsService?(&v5, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
    }
  }

  else
  {
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
  }

  return OUTLINED_FUNCTION_201_1();
}

uint64_t Participant.isVideoPaused.getter()
{
  v1 = OUTLINED_FUNCTION_7_94();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13_57();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_4_31();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_208();
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
    OUTLINED_FUNCTION_17_59(v2);
    OUTLINED_FUNCTION_68_7();
    type metadata accessor for Date();
    OUTLINED_FUNCTION_15_1();
    (*(v3 + 8))(v0);
    OUTLINED_FUNCTION_110_5();
    OUTLINED_FUNCTION_179_1();
    outlined destroy of Participant.MediaInfo(&v6);
    if (v5)
    {
      outlined destroy of CallControlsService?(&v5, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
    }
  }

  else
  {
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
  }

  return OUTLINED_FUNCTION_201_1();
}

uint64_t Participant.isVideoSuspended.getter()
{
  v1 = OUTLINED_FUNCTION_7_94();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13_57();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_4_31();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_208();
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
    OUTLINED_FUNCTION_17_59(v2);
    OUTLINED_FUNCTION_68_7();
    type metadata accessor for Date();
    OUTLINED_FUNCTION_15_1();
    (*(v3 + 8))(v0);
    OUTLINED_FUNCTION_110_5();
    OUTLINED_FUNCTION_179_1();
    outlined destroy of Participant.MediaInfo(&v6);
    if (v5)
    {
      outlined destroy of CallControlsService?(&v5, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
    }
  }

  else
  {
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
  }

  return OUTLINED_FUNCTION_201_1();
}

uint64_t Participant.videoDegradedState.getter()
{
  v1 = OUTLINED_FUNCTION_7_94();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13_57();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_4_31();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_208();
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
    return 0;
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
  OUTLINED_FUNCTION_17_59(v2);
  OUTLINED_FUNCTION_68_7();
  type metadata accessor for Date();
  OUTLINED_FUNCTION_15_1();
  (*(v3 + 8))(v0);
  OUTLINED_FUNCTION_110_5();
  OUTLINED_FUNCTION_179_1();
  outlined destroy of Participant.MediaInfo(&v8);
  if (!v6)
  {
    return 0;
  }

  v4 = v7;
  outlined destroy of CallControlsService?(&v6, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
  return v4;
}

double Participant.videoProvider(for:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_33_0();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
    v4 = *(v3 + 48);
    OUTLINED_FUNCTION_37((v1 + *(v3 + 64)));
    memcpy(v8, (v1 + v4), sizeof(v8));
    type metadata accessor for Date();
    OUTLINED_FUNCTION_15_1();
    (*(v5 + 8))(v1);
    memcpy(v7, &v8[16], 0x4BuLL);
    OUTLINED_FUNCTION_179_1();
    outlined destroy of Participant.MediaInfo(v8);
    if (v7[0])
    {
      specialized Dictionary.subscript.getter();
      outlined destroy of CallControlsService?(v7, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
      return result;
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_132();
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
  }

  *(v0 + 32) = 0;
  return OUTLINED_FUNCTION_264_1();
}