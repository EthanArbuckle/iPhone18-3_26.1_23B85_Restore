uint64_t closure #1 in RecentsListViewController.createCellViewForRecentsCallItemOngoingCalls(item:contactStore:sourceView:)@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v19[0] = type metadata accessor for BackgroundStyleConfiguration();
  v1 = *(v19[0] - 8);
  MEMORY[0x1EEE9AC00](v19[0]);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit013RecentOngoingA8MetadataVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v19 - v5;
  v7 = type metadata accessor for RecentOngoingConversationMetadata(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ContactAvatarTileView.ButtonConfiguration.Symbol();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v19 - v16;
  (*(v11 + 104))(v19 - v16, *MEMORY[0x1E6995B58], v10, v15);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s15ConversationKit013RecentOngoingA8MetadataVSgMd);
  }

  else
  {
    _s15ConversationKit15RecentsCallItemVWObTm_1();
    type metadata accessor for RecentsJoinButton();
    static RecentsJoinButton.fetchButtonImageName(_:)(v9, v13);
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_0(v9, type metadata accessor for RecentOngoingConversationMetadata);
    (*(v11 + 8))(v17, v10);
    (*(v11 + 32))(v17, v13, v10);
  }

  (*(v11 + 16))(v13, v17, v10);
  *v3 = static Color.green.getter();
  v3[8] = 1;
  (*(v1 + 104))(v3, *MEMORY[0x1E6995BF8], v19[0]);
  ContactAvatarTileView.ButtonConfiguration.init(symbol:backgroundStyle:)();
  return (*(v11 + 8))(v17, v10);
}

void specialized closure #2 in RecentsListViewController.createCellViewForRecentsCallItemOngoingCalls(item:contactStore:sourceView:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (*(a2 + 16))
    {
    }

    else
    {
      v8 = type metadata accessor for IndexPath();
      __swift_storeEnumTagSinglePayload(v5, 1, 1, v8);
      RecentsListViewController.joinCall(for:indexPath:isOrphanedVideoMessage:)();

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s10Foundation9IndexPathVSgMd);
    }
  }
}

void closure #3 in RecentsListViewController.createCellViewForRecentsCallItemOngoingCalls(item:contactStore:sourceView:)(uint64_t a1, char *a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    UIView.windowRect.getter(v11);
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    if ((v12 & 1) == 0)
    {
      v9 = *&v11[2];
      v10 = *&v11[3];
      v7 = *v11;
      v8 = *&v11[1];
    }

    RecentsListViewController.presentDetailsView(for:sourceRect:sourceView:)(a2, a3, v7, v8, v9, v10);
  }
}

void RecentsListViewController.createCellViewForRecentsCallItemLinks(item:sourceView:)()
{
  OUTLINED_FUNCTION_29();
  v218 = v0;
  v233 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_1();
  v7 = OUTLINED_FUNCTION_16(v6);
  v8 = type metadata accessor for RecentsCallItem(v7);
  OUTLINED_FUNCTION_1();
  v217 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_48_8();
  OUTLINED_FUNCTION_16(v11);
  v216 = type metadata accessor for BackgroundStyleConfiguration();
  OUTLINED_FUNCTION_1();
  v215 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_16(v14);
  v212 = type metadata accessor for ContactAvatarTileView.ButtonConfiguration.Symbol();
  OUTLINED_FUNCTION_1();
  v211 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_10(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI21ContactAvatarTileViewV19ButtonConfigurationVSgMd);
  OUTLINED_FUNCTION_22(v18);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_16(v20);
  v209 = type metadata accessor for BlendMode();
  OUTLINED_FUNCTION_1();
  v208 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_16(v23);
  v225 = type metadata accessor for ContactAvatarTileView.Caption.ForegroundStyle();
  OUTLINED_FUNCTION_1();
  v236 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_40();
  v224 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI21ContactAvatarTileViewV7CaptionVSgMd);
  v28 = OUTLINED_FUNCTION_22(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  v230 = v30;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  v229 = v32;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_32();
  v228 = v34;
  OUTLINED_FUNCTION_4_24();
  v207 = type metadata accessor for ClipShape();
  OUTLINED_FUNCTION_1();
  v206 = v35;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_16(v37);
  v204 = type metadata accessor for ClippedImage.ImageSize();
  OUTLINED_FUNCTION_1();
  v203 = v38;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_8();
  v42 = v41 - v40;
  v43 = type metadata accessor for ClippedImageBackgroundView.ForegroundStyle();
  v44 = OUTLINED_FUNCTION_22(v43);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_16(v45);
  v193 = type metadata accessor for ClippedImageBackgroundView.BackgroundStyle();
  OUTLINED_FUNCTION_1();
  v192 = v46;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_16(v48);
  v235 = type metadata accessor for SystemImage();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_16(v50);
  v201 = type metadata accessor for ContactAvatarTileView.ImageStyle();
  OUTLINED_FUNCTION_1();
  v200 = v51;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_40();
  v223 = v53;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for ContactAvatarTileView.ImageStyle.ClippedImageConfiguration.SizeConfiguration();
  OUTLINED_FUNCTION_1();
  v231 = v55;
  v232 = v54;
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_32();
  v227 = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI11SystemImageVSgMd);
  v59 = OUTLINED_FUNCTION_22(v58);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_32();
  v226 = v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  OUTLINED_FUNCTION_22(v62);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v189 - v64;
  v66 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v68 = v67;
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_17();
  v72 = v70 - v71;
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v189 - v74;
  v76 = v3;
  v77 = (v3 + *(v8 + 20));
  v78 = v77[1];
  v191 = *v77;
  v79 = *(v8 + 40);
  v237 = v8;
  v194 = *(v76 + v79);
  v238 = v76;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v65, 1, v66);
  v196 = v78;
  if (EnumTagSinglePayload == 1)
  {

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v65, &_s10Foundation4DateVSgMd);
    v197 = 0;
    v190 = 0;
    v221 = 0;
    v220 = 0;
    v81 = 0xE000000000000000;
    v198 = 0xE000000000000000;
    v234 = 0xE000000000000000;
  }

  else
  {
    (*(v68 + 32))(v75, v65, v66);

    Date.init()();
    v197 = static Date.> infix(_:_:)();
    v82 = *(v68 + 8);
    v82(v72, v66);
    v220 = static Date.faceTimeDateString(from:showToday:)(v75, 1);
    v234 = v83;
    v221 = static Date.faceTimeDateString(from:showToday:)(v75, 0);
    v198 = v84;
    if (one-time initialization token for faceTimeTodayFormatter != -1)
    {
      swift_once();
    }

    v85 = static Date.faceTimeTodayFormatter;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v87 = [v85 stringFromDate_];

    v190 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = v88;

    v82(v75, v66);
  }

  v89 = v226;
  v222 = v81;
  OUTLINED_FUNCTION_10_0();
  v90 = v235;
  __swift_storeEnumTagSinglePayload(v91, v92, v93, v235);
  v94 = *(v238 + *(v237 + 44));
  if (v94)
  {
    v95 = v94;
    SystemImage.init(uiImage:)();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v89, &_s16CommunicationsUI11SystemImageVSgMd);
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v96, v97, v98, v90);
    outlined init with take of CaptionSectioner.SpeakerSection?();
  }

  v99 = v227;
  *v227 = vdupq_n_s64(0x405D400000000000uLL);
  v101 = v231;
  v100 = v232;
  (*(v231 + 104))(v99, *MEMORY[0x1E6995B30], v232);
  SystemImage.init(systemName:)();
  (*(v101 + 16))(v195, v99, v100);
  v102 = objc_opt_self();
  v103 = [v102 systemFillColor];
  v104 = Color.init(uiColor:)();
  v105 = v199;
  *v199 = v104;
  OUTLINED_FUNCTION_51_6();
  v106(v105);
  v107 = [v102 tertiarySystemFillColor];
  Color.init(uiColor:)();
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5ImageV5ScaleO_AA4FontV4fontAG6WeightV6weighttMd);
  v109 = *(v108 + 48);
  v110 = *(v108 + 64);
  v111 = *MEMORY[0x1E69816C0];
  type metadata accessor for Image.Scale();
  OUTLINED_FUNCTION_7_0();
  (*(v112 + 104))(v42, v111);
  *(v42 + v109) = static Font.largeTitle.getter();
  static Font.Weight.semibold.getter();
  *(v42 + v110) = v113;
  OUTLINED_FUNCTION_51_6();
  v114(v42);
  ClippedImageBackgroundView.ForegroundStyle.init(clipShapeColor:clippedImageSize:)();
  OUTLINED_FUNCTION_51_6();
  v115(v205);
  v116 = v223;
  ContactAvatarTileView.ImageStyle.ClippedImageConfiguration.init(image:clipShape:sizeConfiguration:includeBlurOverlay:backgroundStyle:foregroundStyle:)();
  OUTLINED_FUNCTION_51_6();
  v117(v116);
  if (!v196)
  {
    v119 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_5_5();
    v120.super.isa = v119;
    OUTLINED_FUNCTION_17_0(v121, 0xE700000000000000, v122, v123, v120);
  }

  v118 = v234;
  v124 = v194;
  v125 = Color.init(uiColor:)();
  v127 = v224;
  v126 = v225;
  *v224 = v125;
  v128 = *MEMORY[0x1E6995B60];
  v129 = *(v236 + 104);
  v236 += 104;
  v207 = v129;
  (v129)(v127, v128, v126);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_51_6();
  v130(v210);
  v189 = static Color.primary.getter();
  OUTLINED_FUNCTION_3_0();
  ContactAvatarTileView.Caption.init(title:subTitle:foregroundStyle:shadow:showBlockedIndicator:accessory:blendMode:accessoryForegroundColor:)();
  type metadata accessor for ContactAvatarTileView.Caption();
  OUTLINED_FUNCTION_12();
  v210 = v131;
  __swift_storeEnumTagSinglePayload(v132, v133, v134, v131);
  if (v197)
  {

    v135 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_5_5();
    v136.super.isa = v135;
    v220 = OUTLINED_FUNCTION_17_0(v137, 0xE800000000000000, v138, v139, v136);
    v234 = v140;

    v209 = v198;
  }

  else
  {
    v209 = v222;
    v221 = v190;
    v222 = v198;
    v234 = v118;
  }

  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v141, v142, v143, v235);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI11CUIMaterialO_12CoreGraphics7CGFloatV7opacitytMd);
  v145 = *(v144 + 48);
  LODWORD(v206) = *MEMORY[0x1E6995970];
  v146 = v206;
  v147 = type metadata accessor for CUIMaterial.Platter();
  OUTLINED_FUNCTION_7_0();
  v205 = *(v148 + 104);
  v208 = v148 + 104;
  v149 = v224;
  v205(v224, v146, v147);
  LODWORD(v204) = *MEMORY[0x1E6995980];
  v150 = v204;
  v151 = type metadata accessor for CUIMaterial();
  OUTLINED_FUNCTION_7_0();
  v202 = *(v152 + 104);
  v203 = v152 + 104;
  v202(v149, v150, v151);
  *(v149 + v145) = 0x3FF0000000000000;
  LODWORD(v201) = *MEMORY[0x1E6995B68];
  v153 = v225;
  v154 = v207;
  v207(v149);
  ContactAvatarTileView.Caption.init(subtitle:accessory:foregroundStyle:)();
  OUTLINED_FUNCTION_12();
  v155 = v210;
  __swift_storeEnumTagSinglePayload(v156, v157, v158, v210);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v159, v160, v161, v155);

  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v162, v163, v164, v235);
  v165 = *(v144 + 48);
  v205(v149, v206, v147);
  v166 = v202;
  v202(v149, v204, v151);
  *(v149 + v165) = 0x3FF0000000000000;
  v154(v149, v201, v153);
  ContactAvatarTileView.Caption.init(subtitle:accessory:foregroundStyle:)();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v167, v168, v169, v155);
  OUTLINED_FUNCTION_51_6();
  v170(v213);
  v171 = v214;
  v166(v214, *MEMORY[0x1E6995988], v151);
  OUTLINED_FUNCTION_51_6();
  v172(v171);
  ContactAvatarTileView.ButtonConfiguration.init(symbol:backgroundStyle:)();
  type metadata accessor for ContactAvatarTileView.ButtonConfiguration();
  v173 = OUTLINED_FUNCTION_21_3();
  __swift_storeEnumTagSinglePayload(v173, v174, v175, v176);
  type metadata accessor for ContactPosterOrAvatarTileState();
  v239 = 0u;
  v240 = 0u;
  v241 = 0;
  OUTLINED_FUNCTION_84();
  v236 = ContactPosterOrAvatarTileState.init(avatarImageStyle:primaryCaption:secondaryCaption:bodyCaption:detailCaption:buttonConfiguration:playable:)();
  OUTLINED_FUNCTION_20();
  v177 = swift_allocObject();
  swift_unknownObjectWeakInit();
  _s15ConversationKit15RecentsCallItemVWOcTm_0();
  v178 = swift_allocObject();
  v179 = v233;
  *(v178 + 16) = v177;
  *(v178 + 24) = v179;
  _s15ConversationKit15RecentsCallItemVWObTm_1();
  OUTLINED_FUNCTION_20();
  v180 = swift_allocObject();
  swift_unknownObjectWeakInit();
  _s15ConversationKit15RecentsCallItemVWOcTm_0();
  v181 = swift_allocObject();
  v182 = v233;
  *(v181 + 16) = v180;
  *(v181 + 24) = v182;
  _s15ConversationKit15RecentsCallItemVWObTm_1();
  v183 = v219;
  _s15ConversationKit15RecentsCallItemVWOcTm_0();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v184, v185, v186, v237);
  type metadata accessor for ContactAvatarTileViewModel(0);
  OUTLINED_FUNCTION_84();
  v187 = v182;
  ContactAvatarTileViewModel.init(state:primaryAction:secondaryAction:tertiaryAction:longPressAction:menuItems:recentCallItem:accessibilityCustomActions:)(v236, partial apply for closure #2 in RecentsListViewController.createCellViewForRecentsCallItemLinks(item:sourceView:), v178, partial apply for closure #3 in RecentsListViewController.createCellViewForRecentsCallItemLinks(item:sourceView:), v181, 0, 0, 0, 0, 0, v183, MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_93_0();
  v188(v227);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v226, &_s16CommunicationsUI11SystemImageVSgMd);
  OUTLINED_FUNCTION_30_0();
}

void closure #4 in RecentsListViewController.createCellViewForRecentsCallItemCalls(item:contactStore:sourceView:isPlayingBackgroundVideo:)()
{
  OUTLINED_FUNCTION_6_7();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14 - v3;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ([Strong isEditing])
    {
      type metadata accessor for RecentsCollectionViewGridCell();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = v7;
        v9 = v0;
        [v8 setSelected_];
      }
    }

    else
    {
      type metadata accessor for IndexPath();
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
      RecentsListViewController.joinCall(for:indexPath:isOrphanedVideoMessage:)();

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s10Foundation9IndexPathVSgMd);
    }
  }
}

void closure #3 in RecentsListViewController.createCellViewForRecentsCallItemLinks(item:sourceView:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([Strong isEditing])
    {
      type metadata accessor for RecentsCollectionViewGridCell();
      v5 = swift_dynamicCastClass();
      if (v5)
      {
        v6 = v5;
        v7 = a2;
        [v6 setSelected_];
      }
    }

    else
    {
      RecentsListViewController.showLinkDetailViewController(for:)();
    }
  }
}

UIImage __swiftcall UIImage.resized(to:)(CGSize to)
{
  height = to.height;
  width = to.width;
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  OUTLINED_FUNCTION_37_0();
  v5 = swift_allocObject();
  *(v5 + 2) = v1;
  v5[3] = width;
  v5[4] = height;
  OUTLINED_FUNCTION_24();
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for closure #1 in UIImage.resized(to:);
  *(v6 + 24) = v5;
  v11[4] = partial apply for thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
  v11[5] = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
  v11[3] = &block_descriptor_17;
  v7 = _Block_copy(v11);
  v8 = v1;

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

void thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

Swift::Void __swiftcall RecentsListViewController.recentsCollectionViewGridCellIsSelected(cell:isSelected:)(UICollectionViewCell *cell, Swift::Bool isSelected)
{
  OUTLINED_FUNCTION_29();
  v24 = v3;
  v5 = v4;
  v6 = type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  v12 = v10 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - v15;
  v17 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x678);
  v18 = v17(v14);
  v19 = [v18 indexPathForCell_];

  if (v19)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = (*(v8 + 32))(v16, v12, v6);
    v21 = (v17)(v20);
    v22.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
    if (v24)
    {
      [v21 selectItemAtIndexPath:v22.super.isa animated:0 scrollPosition:0];
    }

    else
    {
      [v21 deselectItemAtIndexPath:v22.super.isa animated:0];
    }

    (*(v8 + 8))(v16, v6);
  }

  RecentsListViewController.updateMarkAsReadButton()();
  OUTLINED_FUNCTION_30_0();
}

uint64_t RecentsListViewController.presentGroupReportAndBlockAction(of:)()
{
  RecentsListViewController.tipKitStopObservation()();
  OUTLINED_FUNCTION_5_18();
  v4 = (*(v3 + 920))();
  if (one-time initialization token for faceTime != -1)
  {
    OUTLINED_FUNCTION_10_26();
  }

  v5 = static ReportSpamManager.faceTime;
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  OUTLINED_FUNCTION_67_2();
  v19[3] = type metadata accessor for RecentsCallItem(0);
  v19[4] = &protocol witness table for RecentsCallItem;
  __swift_allocate_boxed_opaque_existential_1(v19);
  OUTLINED_FUNCTION_0_67();
  _s15ConversationKit15RecentsCallItemVWOcTm_0();
  outlined init with copy of IDSLookupManager(v19, v18);
  OUTLINED_FUNCTION_77_0();
  v6 = swift_allocObject();
  outlined init with take of TapInteractionHandler(v18, (v6 + 2));
  v6[7] = v0;
  v6[8] = partial apply for closure #1 in RecentsListViewController.presentGroupReportAndBlockAction(of:);
  v6[9] = v1;
  outlined init with copy of IDSLookupManager(v19, v17);
  v7 = swift_allocObject();
  outlined init with take of TapInteractionHandler(v17, (v7 + 2));
  v7[7] = v5;
  v7[8] = v0;
  v7[9] = partial apply for closure #1 in RecentsListViewController.presentGroupReportAndBlockAction(of:);
  v7[10] = v1;
  OUTLINED_FUNCTION_24();
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in RecentsListViewController.presentGroupReportAndBlockAction(of:);
  *(v8 + 24) = v1;
  OUTLINED_FUNCTION_24();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_98(v9);
  v10 = v0;

  OUTLINED_FUNCTION_79();
  specialized SpamAlertBuilder.reportAndBlockGroupInitiatorAlert(of:blockHandler:blockAndReportHandler:cancelHandler:preparationHandler:)();
  v12 = v11;

  [v10 fetchSharing];

  __swift_destroy_boxed_opaque_existential_1(v19);

  type metadata accessor for TPTipsHelper();
  static TPTipsHelper.taskQueue.getter();
  OUTLINED_FUNCTION_24();
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = v12;
  v14 = v10;
  v15 = v12;
  OUTLINED_FUNCTION_108_2();
}

uint64_t closure #2 in RecentsListViewController.presentGroupReportAndBlockAction(of:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #2 in RecentsListViewController.presentGroupReportAndBlockAction(of:), v4, v3);
}

uint64_t RecentsListViewController.presentReportAndBlockAction(of:)()
{
  RecentsListViewController.tipKitStopObservation()();
  OUTLINED_FUNCTION_5_18();
  v4 = (*(v3 + 920))();
  if (one-time initialization token for faceTime != -1)
  {
    OUTLINED_FUNCTION_10_26();
  }

  v5 = static ReportSpamManager.faceTime;
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  OUTLINED_FUNCTION_67_2();
  v24[3] = type metadata accessor for RecentsCallItem(0);
  v24[4] = &protocol witness table for RecentsCallItem;
  __swift_allocate_boxed_opaque_existential_1(v24);
  OUTLINED_FUNCTION_0_67();
  _s15ConversationKit15RecentsCallItemVWOcTm_0();
  outlined init with copy of IDSLookupManager(v24, v23);
  OUTLINED_FUNCTION_77_0();
  v6 = swift_allocObject();
  outlined init with take of TapInteractionHandler(v23, (v6 + 2));
  v6[7] = v0;
  v6[8] = partial apply for closure #1 in RecentsListViewController.presentGroupReportAndBlockAction(of:);
  v6[9] = v1;
  outlined init with copy of IDSLookupManager(v24, v22);
  v7 = swift_allocObject();
  outlined init with take of TapInteractionHandler(v22, (v7 + 2));
  v7[7] = v5;
  v7[8] = v0;
  v7[9] = partial apply for closure #1 in RecentsListViewController.presentGroupReportAndBlockAction(of:);
  v7[10] = v1;
  OUTLINED_FUNCTION_24();
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in RecentsListViewController.presentGroupReportAndBlockAction(of:);
  *(v8 + 24) = v1;
  OUTLINED_FUNCTION_24();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_98(v9);
  v10 = v0;

  v11 = OUTLINED_FUNCTION_79();
  specialized SpamAlertBuilder.reportAndBlockAlert(of:blockHandler:blockAndReportHandler:cancelHandler:preparationHandler:)(v11, v12, v13, v14, v7, v15, v8);
  v17 = v16;

  [v10 fetchSharing];

  __swift_destroy_boxed_opaque_existential_1(v24);

  type metadata accessor for TPTipsHelper();
  static TPTipsHelper.taskQueue.getter();
  OUTLINED_FUNCTION_24();
  v18 = swift_allocObject();
  *(v18 + 16) = v10;
  *(v18 + 24) = v17;
  v19 = v10;
  v20 = v17;
  OUTLINED_FUNCTION_108_2();
}

uint64_t RecentsListViewController.presentBlockAllAction(of:)()
{
  RecentsListViewController.tipKitStopObservation()();
  OUTLINED_FUNCTION_5_18();
  v4 = (*(v3 + 920))();
  if (one-time initialization token for faceTime != -1)
  {
    OUTLINED_FUNCTION_10_26();
  }

  OUTLINED_FUNCTION_20();
  swift_allocObject();
  OUTLINED_FUNCTION_67_2();
  v20[3] = type metadata accessor for RecentsCallItem(0);
  v20[4] = &protocol witness table for RecentsCallItem;
  __swift_allocate_boxed_opaque_existential_1(v20);
  OUTLINED_FUNCTION_0_67();
  _s15ConversationKit15RecentsCallItemVWOcTm_0();
  outlined init with copy of IDSLookupManager(v20, v19);
  OUTLINED_FUNCTION_77_0();
  v5 = swift_allocObject();
  outlined init with take of TapInteractionHandler(v19, (v5 + 2));
  v5[7] = v0;
  v5[8] = partial apply for closure #1 in RecentsListViewController.presentBlockAllAction(of:);
  v5[9] = v1;
  OUTLINED_FUNCTION_24();
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for closure #1 in RecentsListViewController.presentBlockAllAction(of:);
  *(v6 + 24) = v1;
  OUTLINED_FUNCTION_24();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_105_0(v7);
  v8 = v0;
  v9 = OUTLINED_FUNCTION_79();
  v14 = specialized SpamAlertBuilder.blockAllParticipantsAlert(of:blockHandler:cancelHandler:preparationHandler:)(v9, v10, v11, v12, v6, v13, v2, v4);

  [v8 fetchSharing];

  __swift_destroy_boxed_opaque_existential_1(v20);

  type metadata accessor for TPTipsHelper();
  static TPTipsHelper.taskQueue.getter();
  OUTLINED_FUNCTION_24();
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  *(v15 + 24) = v14;
  v16 = v8;
  v17 = v14;
  OUTLINED_FUNCTION_108_2();
}

uint64_t closure #2 in RecentsListViewController.presentBlockAllAction(of:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #2 in RecentsListViewController.presentBlockAllAction(of:), v4, v3);
}

uint64_t closure #2 in RecentsListViewController.presentBlockAllAction(of:)()
{
  OUTLINED_FUNCTION_24_0();
  v1 = v0[3];
  v2 = v0[2];

  [v2 presentViewController:v1 animated:1 completion:0];
  v3 = v0[1];

  return v3();
}

uint64_t RecentsListViewController.presentBlockUnknownAction(of:)()
{
  RecentsListViewController.tipKitStopObservation()();
  OUTLINED_FUNCTION_5_18();
  v4 = (*(v3 + 920))();
  if (one-time initialization token for faceTime != -1)
  {
    OUTLINED_FUNCTION_10_26();
  }

  OUTLINED_FUNCTION_20();
  swift_allocObject();
  OUTLINED_FUNCTION_67_2();
  v20[3] = type metadata accessor for RecentsCallItem(0);
  v20[4] = &protocol witness table for RecentsCallItem;
  __swift_allocate_boxed_opaque_existential_1(v20);
  OUTLINED_FUNCTION_0_67();
  _s15ConversationKit15RecentsCallItemVWOcTm_0();
  outlined init with copy of IDSLookupManager(v20, v19);
  OUTLINED_FUNCTION_77_0();
  v5 = swift_allocObject();
  outlined init with take of TapInteractionHandler(v19, (v5 + 2));
  v5[7] = v0;
  v5[8] = partial apply for closure #1 in RecentsListViewController.presentGroupReportAndBlockAction(of:);
  v5[9] = v1;
  OUTLINED_FUNCTION_24();
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for closure #1 in RecentsListViewController.presentGroupReportAndBlockAction(of:);
  *(v6 + 24) = v1;
  OUTLINED_FUNCTION_24();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_105_0(v7);
  v8 = v0;
  v9 = OUTLINED_FUNCTION_79();
  v14 = specialized SpamAlertBuilder.blockUnknownParticipantsAlert(of:blockHandler:cancelHandler:preparationHandler:)(v9, v10, v11, v12, v6, v13, v2, v4);

  [v8 fetchSharing];

  __swift_destroy_boxed_opaque_existential_1(v20);

  type metadata accessor for TPTipsHelper();
  static TPTipsHelper.taskQueue.getter();
  OUTLINED_FUNCTION_24();
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  *(v15 + 24) = v14;
  v16 = v8;
  v17 = v14;
  OUTLINED_FUNCTION_108_2();
}

void closure #1 in RecentsListViewController.presentGroupReportAndBlockAction(of:)()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    RecentsListViewController.tipKitStartObservation()();
  }
}

uint64_t RecentsListViewController.isPreferredLocalizationChineseKorean()()
{
  v0 = type metadata accessor for Locale.Language.Components();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for Locale.Components();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() mainBundle];
  v12 = [v11 preferredLocalizations];

  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v13 + 16))
  {

    static Locale.canonicalLanguageIdentifier(from:)();

    Locale.Components.init(identifier:)();
    Locale.Components.languageComponents.getter();
    Locale.Language.Components.languageCode.getter();
    (*(v1 + 8))(v3, v0);
    v14 = type metadata accessor for Locale.LanguageCode();
    if (__swift_getEnumTagSinglePayload(v6, 1, v14) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s10Foundation6LocaleV12LanguageCodeVSgMd);
      v15 = 0;
    }

    else
    {
      v16 = MEMORY[0x1BFB1A4D0]();
      v18 = v17;
      (*(*(v14 - 8) + 8))(v6, v14);
      v19 = v16 == 24938 && v18 == 0xE200000000000000;
      if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v16 == 28523 ? (v20 = v18 == 0xE200000000000000) : (v20 = 0), v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v16 == 26746 ? (v21 = v18 == 0xE200000000000000) : (v21 = 0), v21)))
      {

        v15 = 1;
      }

      else
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    (*(v8 + 8))(v10, v7);
  }

  else
  {

    v15 = 0;
  }

  return v15 & 1;
}

void partial apply for closure #3 in RecentsListViewController.createCellViewForRecentsCallItemCalls(item:contactStore:sourceView:isPlayingBackgroundVideo:)(void (*a1)(uint64_t, void *, __n128, __n128, __n128, __n128))
{
  v2 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_22(v2);
  v3 = OUTLINED_FUNCTION_54_5();
  closure #2 in RecentsListViewController.createCellViewForRecentsCallItemCalls(item:contactStore:sourceView:isPlayingBackgroundVideo:)(v3, v4, v5, a1);
}

uint64_t outlined bridged method (pb) of @objc TPMessageIndicatorViewModel.transcriptSummary.getter(void *a1)
{
  v1 = [a1 transcriptSummary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t partial apply for closure #3 in RecentsListViewController.createCellViewForRecentsCallItemLinks(item:sourceView:)(uint64_t (*a1)(uint64_t))
{
  v1 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_22(v1);
  v2 = OUTLINED_FUNCTION_54_5();

  return a1(v2);
}

void partial apply for closure #3 in RecentsListViewController.createCellViewForRecentsCallItemOngoingCalls(item:contactStore:sourceView:)()
{
  v1 = *(type metadata accessor for RecentsCallItem(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #3 in RecentsListViewController.createCellViewForRecentsCallItemOngoingCalls(item:contactStore:sourceView:)(v3, (v0 + v2), v4);
}

void partial apply for closure #4 in RecentsListViewController.createCellViewForRecentsCallItemCalls(item:contactStore:sourceView:isPlayingBackgroundVideo:)()
{
  v0 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_54_5();
  closure #4 in RecentsListViewController.createCellViewForRecentsCallItemCalls(item:contactStore:sourceView:isPlayingBackgroundVideo:)();
}

void specialized SpamAlertBuilder.reportAndBlockGroupInitiatorAlert(of:blockHandler:blockAndReportHandler:cancelHandler:preparationHandler:)()
{
  OUTLINED_FUNCTION_29();
  v56 = v0;
  v57 = v1;
  v61 = v2;
  v59 = v3;
  v60 = v4;
  v58 = v5;
  v6 = type metadata accessor for RecentsCallItem(0);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_0_67();
  OUTLINED_FUNCTION_46();
  _s15ConversationKit15RecentsCallItemVWOcTm_0();
  v11 = specialized SpamModelable.formattedInitiatorHandle.getter();
  v13 = v12;
  _s15ConversationKit19RecentsCallItemTypeOWOhTm_0(v10, type metadata accessor for RecentsCallItem);
  if (v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  v15 = 0xE000000000000000;
  if (v13)
  {
    v15 = v13;
  }

  v53 = v15;
  v54 = v14;
  v16 = objc_opt_self();
  v17 = [v16 conversationKit];
  v18.super.isa = v17;
  OUTLINED_FUNCTION_17_0(0xD00000000000002ALL, 0x80000001BC4F9DA0, 0x61737265766E6F43, 0xEF74694B6E6F6974, v18);

  v19 = [v16 &off_1E7FE9588];
  v20.super.isa = v19;
  OUTLINED_FUNCTION_17_0(0xD000000000000038, 0x80000001BC4F9DD0, 0x61737265766E6F43, 0xEF74694B6E6F6974, v20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1BC4BA940;
  *(v21 + 56) = MEMORY[0x1E69E6158];
  *(v21 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v21 + 32) = v54;
  *(v21 + 40) = v53;
  v22 = String.init(format:_:)();
  v24 = v23;

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController);
  v25 = OUTLINED_FUNCTION_46();
  @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(v25, v26, v22, v24, 0);
  v55 = objc_opt_self();
  v27 = [v55 currentDevice];
  [v27 userInterfaceIdiom];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction);
  v28 = [v16 conversationKit];
  OUTLINED_FUNCTION_40_0();
  v29.super.isa = v28;
  OUTLINED_FUNCTION_17_0(0xD00000000000001BLL, 0x80000001BC4F9CC0, 0x61737265766E6F43, 0xEF74694B6E6F6974, v29);

  OUTLINED_FUNCTION_24();
  v30 = swift_allocObject();
  *(v30 + 16) = v56;
  *(v30 + 24) = v57;
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v56, v57);
  v31 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  v32 = [v16 conversationKit];
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_18_27(0xD000000000000026, 0x80000001BC4F9E10, 0x61737265766E6F43, 0xEF74694B6E6F6974);

  OUTLINED_FUNCTION_24();
  v33 = swift_allocObject();
  *(v33 + 16) = v58;
  *(v33 + 24) = v59;
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v58, v59);
  v34 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  v35 = [v16 conversationKit];
  OUTLINED_FUNCTION_40_0();
  v36.super.isa = v35;
  OUTLINED_FUNCTION_17_0(0xD000000000000027, 0x80000001BC4F9D70, 0x61737265766E6F43, 0xEF74694B6E6F6974, v36);
  OUTLINED_FUNCTION_80_0();

  OUTLINED_FUNCTION_24();
  v37 = swift_allocObject();
  *(v37 + 16) = v60;
  *(v37 + 24) = v61;
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v60, v61);
  v38 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BC370;
  *(inited + 32) = v31;
  *(inited + 40) = v34;
  *(inited + 48) = v38;
  v41 = v31;
  v42 = v34;
  v43 = v38;
  v44 = [v55 currentDevice];
  v45 = [v44 userInterfaceIdiom];

  if (v45 == 1)
  {

    inited = OUTLINED_FUNCTION_88_1();
    *(inited + 16) = xmmword_1BC4BC370;
    *(inited + 32) = v42;
    *(inited + 40) = v43;
    *(inited + 48) = v41;
    v46 = v41;
    v47 = v41;
    v48 = v42;
    v49 = v43;
  }

  else
  {
    v46 = v41;
  }

  v50 = specialized Array.count.getter(inited);
  OUTLINED_FUNCTION_49_8();
  while (1)
  {
    if (v50 == v39)
    {

      OUTLINED_FUNCTION_30_0();
      return;
    }

    if (v42)
    {
      v51 = MEMORY[0x1BFB22010](v39, inited);
    }

    else
    {
      if (v39 >= MEMORY[0xEF74694B6E6F6984])
      {
        goto LABEL_19;
      }

      v51 = *(inited + 8 * v39 + 32);
    }

    v52 = v51;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_83_3();

    ++v39;
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

uint64_t partial apply for closure #2 in RecentsListViewController.presentGroupReportAndBlockAction(of:)()
{
  OUTLINED_FUNCTION_24_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_92(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_22_18(v1);

  return closure #2 in RecentsListViewController.presentGroupReportAndBlockAction(of:)(v3, v4);
}

void specialized SpamAlertBuilder.reportAndBlockAlert(of:blockHandler:blockAndReportHandler:cancelHandler:preparationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = objc_opt_self();
  v10 = OUTLINED_FUNCTION_101_0(v9);
  OUTLINED_FUNCTION_29_3();
  OUTLINED_FUNCTION_14_2();
  v11 = OUTLINED_FUNCTION_97_2();
  v12.super.isa = v10;
  OUTLINED_FUNCTION_17_0(v11, v13, 0x61737265766E6F43, v14, v12);

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController);
  OUTLINED_FUNCTION_20_18();
  @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(v15, v16, v17, v18, v19);
  v88 = objc_opt_self();
  v20 = [v88 currentDevice];
  [v20 userInterfaceIdiom];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction);
  v21 = [v8 (v7 + 1416)];
  OUTLINED_FUNCTION_29_3();
  v22 = 0xEF74694B6E6F6974;
  v23.super.isa = v21;
  OUTLINED_FUNCTION_17_0(v24, 0x80000001BC4F9CC0, 0x61737265766E6F43, 0xEF74694B6E6F6974, v23);

  OUTLINED_FUNCTION_24();
  v25 = swift_allocObject();
  OUTLINED_FUNCTION_106_0(v25, v26, v27, v28, v29, v30, v31, v32, v75, v78, a7);
  OUTLINED_FUNCTION_86_0();
  v33 = OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_29_3();
  OUTLINED_FUNCTION_97_2();
  OUTLINED_FUNCTION_96_3();
  v34.super.isa = v33;
  OUTLINED_FUNCTION_17_0(v35, v36, v37, v38, v34);

  OUTLINED_FUNCTION_24();
  v39 = swift_allocObject();
  *(v39 + 16) = a2;
  *(v39 + 24) = a3;
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a2, a3);
  v40 = OUTLINED_FUNCTION_87_2();
  v41 = [v8 v21 + 1416];
  OUTLINED_FUNCTION_29_3();
  OUTLINED_FUNCTION_96_3();
  OUTLINED_FUNCTION_18_27(v42, v43, v44, v45);

  OUTLINED_FUNCTION_24();
  v46 = swift_allocObject();
  OUTLINED_FUNCTION_102_0(v46, v47, v48, v49, v50, v51, v52, v53, v76, v79, v82, a2, a3, v88, a4, v92, a5);
  v54 = OUTLINED_FUNCTION_85_2();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  v57 = OUTLINED_FUNCTION_103_0(inited, xmmword_1BC4BC370);
  v58 = v40;
  v59 = v54;
  v60 = [v89 currentDevice];
  v61 = [v60 userInterfaceIdiom];

  if (v61 == 1)
  {

    v62 = OUTLINED_FUNCTION_88_1();
    OUTLINED_FUNCTION_74_2(v62, v63, v64, v65, v66, v67, v68, v69, v77, v80, v83, v85, v87, v89, v91);
    v70 = v58;
    v71 = v59;
  }

  else
  {
    v22 = v57;
  }

  v72 = specialized Array.count.getter(inited);
  OUTLINED_FUNCTION_49_8();
  while (1)
  {
    if (v72 == v55)
    {

      return;
    }

    if (v58)
    {
      v73 = MEMORY[0x1BFB22010](v55, inited);
    }

    else
    {
      if (v55 >= MEMORY[0x61737265766E6F53])
      {
        goto LABEL_14;
      }

      v73 = inited[2].n128_u64[v55];
    }

    v74 = v73;
    if (__OFADD__(v55, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_83_3();

    ++v55;
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

{
  v8 = objc_opt_self();
  v9 = [v8 conversationKit];
  v54._object = 0xE000000000000000;
  v10.value._object = 0xEF74694B6E6F6974;
  v11._object = 0x80000001BC4F9D10;
  v11._countAndFlagsBits = 0xD000000000000020;
  v10.value._countAndFlagsBits = 0x61737265766E6F43;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v54._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v10, v9, v12, v54);

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController);
  v14 = @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(v13._countAndFlagsBits, v13._object, 0, 0, 0);
  v51 = objc_opt_self();
  v15 = [v51 currentDevice];
  [v15 userInterfaceIdiom];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction);
  v16 = [v8 &off_1E7FE9588];
  v17._countAndFlagsBits = 0xD00000000000001BLL;
  v55._object = 0xE000000000000000;
  v17._object = 0x80000001BC4F9CC0;
  v18.value._countAndFlagsBits = 0x61737265766E6F43;
  v18.value._object = 0xEF74694B6E6F6974;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v55._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v18, v16, v19, v55);

  v20 = swift_allocObject();
  *(v20 + 16) = a6;
  *(v20 + 24) = a7;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a6);
  v21 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  v22 = [v8 conversationKit];
  v56._object = 0xE000000000000000;
  v23._object = 0x80000001BC4F9D40;
  v23._countAndFlagsBits = 0xD000000000000020;
  v24.value._countAndFlagsBits = 0x61737265766E6F43;
  v24.value._object = 0xEF74694B6E6F6974;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v56._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, v22, v25, v56);

  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  *(v26 + 24) = a3;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a2);
  v27 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  v28 = [v8 conversationKit];
  v57._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0xD000000000000027;
  v29._object = 0x80000001BC4F9D70;
  v30.value._countAndFlagsBits = 0x61737265766E6F43;
  v30.value._object = 0xEF74694B6E6F6974;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  v57._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v29, v30, v28, v31, v57);

  v32 = swift_allocObject();
  *(v32 + 16) = a4;
  *(v32 + 24) = a5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a4);
  v33 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BC370;
  *(inited + 32) = v21;
  *(inited + 40) = v27;
  *(inited + 48) = v33;
  v35 = v21;
  v36 = v27;
  v37 = v33;
  v38 = [v51 currentDevice];
  v39 = [v38 userInterfaceIdiom];

  if (v39 == 1)
  {

    inited = swift_allocObject();
    *(inited + 16) = xmmword_1BC4BC370;
    *(inited + 32) = v36;
    *(inited + 40) = v37;
    *(inited + 48) = v35;
    v40 = v35;
    v41 = v35;
    v42 = v36;
    v43 = v37;
  }

  else
  {
    v40 = v35;
  }

  v44 = specialized Array.count.getter(inited);
  for (i = 0; ; ++i)
  {
    if (v44 == i)
    {

      return;
    }

    if ((inited & 0xC000000000000001) != 0)
    {
      v46 = MEMORY[0x1BFB22010](i, inited);
    }

    else
    {
      if (i >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v46 = *(inited + 8 * i + 32);
    }

    v47 = v46;
    if (__OFADD__(i, 1))
    {
      break;
    }

    [v14 addAction_];
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t partial apply for closure #2 in RecentsListViewController.presentReportAndBlockAction(of:)()
{
  OUTLINED_FUNCTION_24_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_92(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_22_18(v1);

  return closure #2 in RecentsListViewController.presentGroupReportAndBlockAction(of:)(v3, v4);
}

void _s15ConversationKit16SpamAlertBuilderC014reportAndBlockD033_1968E5514C13C55B0B1DD71C8D317F12LL2of12blockHandler0sg6ReportT006cancelT0011preparationT0So17UIAlertControllerCAA0C9Modelable_p_ySbcSgA3NtFTf4ennnnn_nSo6TUCallC_Ttg5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = objc_opt_self();
  v9 = OUTLINED_FUNCTION_101_0(v8);
  OUTLINED_FUNCTION_29_3();
  OUTLINED_FUNCTION_14_2();
  v10 = OUTLINED_FUNCTION_97_2();
  v11.super.isa = v9;
  OUTLINED_FUNCTION_17_0(v10, v12, 0x61737265766E6F43, v13, v11);

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController);
  OUTLINED_FUNCTION_20_18();
  @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(v14, v15, v16, v17, v18);
  v87 = objc_opt_self();
  v19 = [v87 currentDevice];
  [v19 userInterfaceIdiom];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction);
  v20 = [v7 (v6 + 1416)];
  OUTLINED_FUNCTION_29_3();
  v21 = 0xEF74694B6E6F6974;
  v22.super.isa = v20;
  OUTLINED_FUNCTION_17_0(v23, 0x80000001BC4F9CC0, 0x61737265766E6F43, 0xEF74694B6E6F6974, v22);

  OUTLINED_FUNCTION_24();
  v24 = swift_allocObject();
  OUTLINED_FUNCTION_106_0(v24, v25, v26, v27, v28, v29, v30, v31, v74, v77, a6);
  OUTLINED_FUNCTION_86_0();
  v32 = OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_29_3();
  OUTLINED_FUNCTION_97_2();
  OUTLINED_FUNCTION_96_3();
  v33.super.isa = v32;
  OUTLINED_FUNCTION_17_0(v34, v35, v36, v37, v33);

  OUTLINED_FUNCTION_24();
  v38 = swift_allocObject();
  *(v38 + 16) = a1;
  *(v38 + 24) = a2;
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a1, a2);
  v39 = OUTLINED_FUNCTION_87_2();
  v40 = [v7 v20 + 1416];
  OUTLINED_FUNCTION_29_3();
  OUTLINED_FUNCTION_96_3();
  OUTLINED_FUNCTION_18_27(v41, v42, v43, v44);

  OUTLINED_FUNCTION_24();
  v45 = swift_allocObject();
  OUTLINED_FUNCTION_102_0(v45, v46, v47, v48, v49, v50, v51, v52, v75, v78, v81, a1, a2, v87, a3, v91, a4);
  v53 = OUTLINED_FUNCTION_85_2();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  v56 = OUTLINED_FUNCTION_103_0(inited, xmmword_1BC4BC370);
  v57 = v39;
  v58 = v53;
  v59 = [v88 currentDevice];
  v60 = [v59 userInterfaceIdiom];

  if (v60 == 1)
  {

    v61 = OUTLINED_FUNCTION_88_1();
    OUTLINED_FUNCTION_74_2(v61, v62, v63, v64, v65, v66, v67, v68, v76, v79, v82, v84, v86, v88, v90);
    v69 = v57;
    v70 = v58;
  }

  else
  {
    v21 = v56;
  }

  v71 = specialized Array.count.getter(inited);
  OUTLINED_FUNCTION_49_8();
  while (1)
  {
    if (v71 == v54)
    {

      return;
    }

    if (v57)
    {
      v72 = MEMORY[0x1BFB22010](v54, inited);
    }

    else
    {
      if (v54 >= MEMORY[0x61737265766E6F53])
      {
        goto LABEL_14;
      }

      v72 = inited[2].n128_u64[v54];
    }

    v73 = v72;
    if (__OFADD__(v54, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_83_3();

    ++v54;
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t partial apply for closure #2 in RecentsListViewController.presentBlockAllAction(of:)()
{
  OUTLINED_FUNCTION_24_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_92(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_22_18(v1);

  return closure #2 in RecentsListViewController.presentBlockAllAction(of:)(v3, v4);
}

{
  OUTLINED_FUNCTION_24_0();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t partial apply for closure #2 in RecentsListViewController.presentBlockUnknownAction(of:)()
{
  OUTLINED_FUNCTION_24_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_92(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_22_18(v1);

  return closure #2 in RecentsListViewController.presentGroupReportAndBlockAction(of:)(v3, v4);
}

uint64_t objectdestroy_50Tm()
{
  if (*(v0 + 16))
  {
  }

  OUTLINED_FUNCTION_24();

  return swift_deallocObject();
}

id OUTLINED_FUNCTION_99_0()
{

  return [v0 conversationKit];
}

id OUTLINED_FUNCTION_101_0(void *a1)
{

  return [a1 conversationKit];
}

uint64_t OUTLINED_FUNCTION_102_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(a1 + 16) = a15;
  *(a1 + 24) = a17;

  return outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a15, a17);
}

uint64_t OUTLINED_FUNCTION_108_2()
{

  return dispatch thunk of TaskQueue.async(_:)();
}

void CGAffineTransform.rotatingTranslationComponent(by:)(uint64_t a1@<X8>, CGFloat a2@<D0>)
{
  tx = v2[4];
  ty = v2[5];
  v9 = *v2;
  v10 = *(v2 + 1);
  *&using.a = *v2;
  *&using.c = v10;
  using.tx = tx;
  using.ty = ty;
  if (CGAffineTransformIsIdentity(&using))
  {
    v8 = v9;
    v7 = v10;
  }

  else
  {
    v8 = v9;
    v7 = v10;
    if (a2 != 0.0)
    {
      CGAffineTransformMakeRotation(&using, a2);
      CGAffineTransform.transformingTranslationComponent(using:)(&v11, &using);
      v8 = *&v11.a;
      v7 = *&v11.c;
      tx = v11.tx;
      ty = v11.ty;
    }
  }

  *a1 = v8;
  *(a1 + 16) = v7;
  *(a1 + 32) = tx;
  *(a1 + 40) = ty;
}

void __swiftcall CGAffineTransform.transformingTranslationComponent(using:)(CGAffineTransform *__return_ptr retstr, CGAffineTransform *using)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  v10 = v2[4];
  v9 = v2[5];
  v12.a = *v2;
  v12.b = v6;
  v12.c = v7;
  v12.d = v8;
  v12.tx = v10;
  v12.ty = v9;
  if (!CGAffineTransformIsIdentity(&v12))
  {
    v11 = v10 * using->b;
    v10 = using->tx + v10 * using->a + v9 * using->c;
    v9 = using->ty + v11 + v9 * using->d;
  }

  retstr->a = v5;
  retstr->b = v6;
  retstr->c = v7;
  retstr->d = v8;
  retstr->tx = v10;
  retstr->ty = v9;
}

void __swiftcall CGAffineTransform.transformingTranslationComponent(using:)(CGAffineTransform *__return_ptr retstr, CATransform3D *using)
{
  m21 = v2[4];
  m22 = v2[5];
  v10 = *v2;
  v11 = *(v2 + 1);
  *&__dst.m11 = *v2;
  *&__dst.m13 = v11;
  __dst.m21 = m21;
  __dst.m22 = m22;
  if (CGAffineTransformIsIdentity(&__dst))
  {
    v8 = v10;
    v7 = v11;
  }

  else
  {
    memcpy(&__dst, using, sizeof(__dst));
    v9 = MEMORY[0x1BFB228D0](&__dst);
    v8 = v10;
    v7 = v11;
    if (v9)
    {
      memcpy(&__dst, using, sizeof(__dst));
      CATransform3DGetAffineTransform(&usinga, &__dst);
      CGAffineTransform.transformingTranslationComponent(using:)(&__dst, &usinga);
      v8 = *&__dst.m11;
      v7 = *&__dst.m13;
      m21 = __dst.m21;
      m22 = __dst.m22;
    }
  }

  *&retstr->a = v8;
  *&retstr->c = v7;
  retstr->tx = m21;
  retstr->ty = m22;
}

void CGAffineTransform.rotatingTranslationComponent(for:)(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = 0.0;
  if (a1 <= 3)
  {
    v7 = dbl_1BC4C3888[a1];
  }

  *&using.a = *v2;
  *&using.c = v5;
  *&using.tx = v6;
  v14 = v5;
  v15 = v4;
  v13 = v6;
  IsIdentity = CGAffineTransformIsIdentity(&using);
  v10 = v13;
  v9 = v14;
  v11 = v15;
  if (v7 != 0.0 && !IsIdentity)
  {
    CGAffineTransformMakeRotation(&using, v7);
    CGAffineTransform.transformingTranslationComponent(using:)(&v16, &using);
    v11 = *&v16.a;
    v9 = *&v16.c;
    v10 = *&v16.tx;
  }

  *a2 = v11;
  a2[1] = v9;
  a2[2] = v10;
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  return specialized Environment.wrappedValue.getter(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd, MEMORY[0x1E697EA58], a1);
}

{
  return specialized Environment.wrappedValue.getter(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, MEMORY[0x1E697E730], a1);
}

{
  return specialized Environment.wrappedValue.getter(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, MEMORY[0x1E697BF90], a1);
}

{
  return specialized Environment.wrappedValue.getter(&_s7SwiftUI11EnvironmentV7ContentOyAA19MultimodalListStyleV6LayoutO_GMd, MEMORY[0x1E697C580], a1);
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = type metadata accessor for EnvironmentValues();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v14 = v13 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v21 - v16;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v6, &v21 - v16, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    a2(0);
    OUTLINED_FUNCTION_7_0();
    return (*(v18 + 32))(a3, v17);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    OUTLINED_FUNCTION_25_22();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v10 + 8))(v14, v8);
  }
}

double static _ColorMatrix.buttonPlatter.getter@<D0>(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>)
{
  MEMORY[0x1BFB1E170](v11);
  *a1 = a2;
  *(a1 + 16) = a3;
  *(a1 + 32) = a4;
  *(a1 + 48) = a5;
  result = 0.0;
  *(a1 + 64) = xmmword_1BC4C0360;
  return result;
}

uint64_t ModalOverlayTransition.body(content:phase:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA011PlaceholderD4ViewVy15ConversationKit22ModalOverlayTransitionVGAA14_OpacityEffectVGMd) - 8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA011PlaceholderD4ViewVy15ConversationKit22ModalOverlayTransitionVGAA14_OpacityEffectVGAA05_BlurM0VGMd) - 8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  v12 = 0.0;
  if (TransitionPhase.isIdentity.getter())
  {
    v13 = 1.0;
  }

  else
  {
    v13 = 0.0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22PlaceholderContentViewVy15ConversationKit22ModalOverlayTransitionVGMd);
  OUTLINED_FUNCTION_7_0();
  (*(v14 + 16))(v7, a1);
  *&v7[*(v4 + 44)] = v13;
  if ((TransitionPhase.isIdentity.getter() & 1) == 0)
  {
    v12 = 25.0;
  }

  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v7, v11, &_s7SwiftUI15ModifiedContentVyAA011PlaceholderD4ViewVy15ConversationKit22ModalOverlayTransitionVGAA14_OpacityEffectVGMd);
  v15 = &v11[*(v8 + 44)];
  *v15 = v12;
  v15[8] = 0;
  if (TransitionPhase.isIdentity.getter())
  {
    v16 = 1.0;
  }

  else
  {
    v16 = 0.8;
  }

  static UnitPoint.center.getter();
  v18 = v17;
  v20 = v19;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v11, a2, &_s7SwiftUI15ModifiedContentVyACyAA011PlaceholderD4ViewVy15ConversationKit22ModalOverlayTransitionVGAA14_OpacityEffectVGAA05_BlurM0VGMd);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA011PlaceholderD4ViewVy15ConversationKit22ModalOverlayTransitionVGAA14_OpacityEffectVGAA05_BlurM0VGAA06_ScaleM0VGMd);
  v22 = a2 + *(result + 36);
  *v22 = v16;
  *(v22 + 8) = v16;
  *(v22 + 16) = v18;
  *(v22 + 24) = v20;
  return result;
}

id ActivityIndicator.makeUIView(context:)()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC638]) init];
  [v0 setActivityIndicatorViewStyle_];
  v1 = [objc_opt_self() whiteColor];
  [v0 setColor_];

  [v0 startAnimating];
  return v0;
}

id ActivityIndicator.updateUIView(_:context:)(void *a1)
{
  type metadata accessor for ControlSize();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  specialized Environment.wrappedValue.getter(&_s7SwiftUI11EnvironmentV7ContentOyAA11ControlSizeO_GMd, MEMORY[0x1E697DC30], v5 - v4);
  v6 = OUTLINED_FUNCTION_1_5();
  v8 = v7(v6);
  if (v8 == *MEMORY[0x1E697DC20])
  {
    return [a1 _setCustomWidth_];
  }

  v10 = v8;
  v11 = *MEMORY[0x1E697DC10];
  v12 = type metadata accessor for ActivityIndicator(0);
  if (v10 == v11)
  {
    return [a1 _setCustomWidth_];
  }

  [a1 _setCustomWidth_];
  v13 = OUTLINED_FUNCTION_1_5();
  return v14(v13);
}

int *ActivityIndicator.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ControlSizeO_GMd);
  OUTLINED_FUNCTION_12_31();
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for ActivityIndicator(0);
  *(a1 + result[5]) = 0x402C000000000000;
  *(a1 + result[6]) = 0x403E000000000000;
  *(a1 + result[7]) = 0x4038000000000000;
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ActivityIndicator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass(&lazy protocol witness table cache variable for type ActivityIndicator and conformance ActivityIndicator, type metadata accessor for ActivityIndicator);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ActivityIndicator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass(&lazy protocol witness table cache variable for type ActivityIndicator and conformance ActivityIndicator, type metadata accessor for ActivityIndicator);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance ActivityIndicator()
{
  lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass(&lazy protocol witness table cache variable for type ActivityIndicator and conformance ActivityIndicator, type metadata accessor for ActivityIndicator);
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t ScreenSharingOverlayPlatterButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v134 = a2;
  v5 = type metadata accessor for UserInterfaceSizeClass();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10(v10 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v116[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v116[-v25];
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v116[-v28];
  v126 = type metadata accessor for ButtonStyleConfiguration.Label();
  OUTLINED_FUNCTION_1();
  v125 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_8();
  v34 = v33 - v32;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v116[-v36];
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_OpacityEffectVGMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_10(&v116[-v39]);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_10(&v116[-v41]);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGAA011_BackgroundL0VyACyAA7CapsuleVAA09_BackdropO0VyAA4ViewPAAE12_colorMatrixyQrAA06_ColorX0VFQOyACyAA01_uO11PlaceholderVAA05_BlurO0VG_Qo_GGGGMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_10(&v116[-v43]);
  v124 = v34;
  v127 = a1;
  v44 = ButtonStyleConfiguration.label.getter();
  v135 = v3;
  ScreenSharingSpectatorModalOverlay.horizontalSizeClass.getter(v44);
  v45 = *MEMORY[0x1E697FF40];
  v138 = v7;
  v46 = *(v7 + 104);
  v142 = v45;
  v141 = v46;
  v46(v26);
  OUTLINED_FUNCTION_17_25(v26);
  *(v47 - 256) = v11;
  v48 = *(v11 + 48);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v29, v16, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v26, &v16[v48], &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  OUTLINED_FUNCTION_3_62(v16);
  if (!v50)
  {
    v49 = v120;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v16, v120, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    OUTLINED_FUNCTION_3_62(&v16[v48]);
    if (!v50)
    {
      v52 = v138;
      v53 = &v16[v48];
      v54 = v121;
      (*(v138 + 32))(v121, v53, v5);
      OUTLINED_FUNCTION_1_67();
      lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass(v55, v56);
      v117 = dispatch thunk of static Equatable.== infix(_:_:)();
      v57 = *(v52 + 8);
      v11 = v52 + 8;
      v49 = v57;
      v57(v54, v5);
      v48 = &_s7SwiftUI22UserInterfaceSizeClassOSgMR;
      OUTLINED_FUNCTION_19_14(v26);
      OUTLINED_FUNCTION_19_14(v29);
      v57(v120, v5);
      OUTLINED_FUNCTION_19_14(v16);
      OUTLINED_FUNCTION_10_27();
      OUTLINED_FUNCTION_22_19();
      if (v117)
      {
        goto LABEL_12;
      }

LABEL_10:
      static Font.subheadline.getter();
      static Font.Weight.medium.getter();
      v51 = Font.weight(_:)();

      goto LABEL_13;
    }

    v48 = &_s7SwiftUI22UserInterfaceSizeClassOSgMR;
    OUTLINED_FUNCTION_19_14(v26);
    OUTLINED_FUNCTION_19_14(v29);
    (*(v138 + 8))(v49, v5);
    OUTLINED_FUNCTION_22_19();
LABEL_9:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
    OUTLINED_FUNCTION_10_27();
    goto LABEL_10;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v26, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v29, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  OUTLINED_FUNCTION_3_62(&v16[v48]);
  v11 = v137;
  v49 = v136;
  if (!v50)
  {
    goto LABEL_9;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  OUTLINED_FUNCTION_10_27();
LABEL_12:
  v51 = static Font.headline.getter();
LABEL_13:
  KeyPath = swift_getKeyPath();
  (*(v125 + 32))(v37, v124, v126);
  OUTLINED_FUNCTION_23_20();
  v60 = &v37[v59];
  *v60 = KeyPath;
  v60[1] = v51;
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v61 = 0.5;
  }

  else
  {
    v61 = 1.0;
  }

  v62 = v143;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v37, v143, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
  OUTLINED_FUNCTION_23_20();
  *(v62 + v63) = v61;
  ScreenSharingSpectatorModalOverlay.horizontalSizeClass.getter(v64);
  OUTLINED_FUNCTION_15_21();
  v65();
  OUTLINED_FUNCTION_17_25(v49);
  v67 = *(*(v66 - 256) + 48);
  v68 = v11;
  v69 = v11;
  v70 = v139;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v68, v139, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v49, v70 + v67, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  OUTLINED_FUNCTION_3_62(v70);
  v71 = v133;
  if (!v50)
  {
    v75 = v118;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v70, v118, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    OUTLINED_FUNCTION_3_62(v70 + v67);
    if (!v76)
    {
      v79 = v138;
      v80 = OUTLINED_FUNCTION_20_19();
      v81(v80);
      OUTLINED_FUNCTION_1_67();
      lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass(v82, v83);
      dispatch thunk of static Equatable.== infix(_:_:)();
      v84 = *(v79 + 8);
      v85 = OUTLINED_FUNCTION_1_5();
      v84(v85);
      OUTLINED_FUNCTION_18_28(v136);
      OUTLINED_FUNCTION_18_28(v137);
      (v84)(v75, v5);
      v48 = v140;
      v86 = OUTLINED_FUNCTION_18_28(v70);
      v73 = v143;
      goto LABEL_26;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v136, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    v72 = v139;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v137, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    v77 = OUTLINED_FUNCTION_1_5();
    v78(v77);
    v73 = v143;
    goto LABEL_24;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v49, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  v72 = v139;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v69, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  OUTLINED_FUNCTION_3_62(v72 + v67);
  v73 = v143;
  if (!v50)
  {
LABEL_24:
    v74 = &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd;
    goto LABEL_25;
  }

  v74 = &_s7SwiftUI22UserInterfaceSizeClassOSgMd;
LABEL_25:
  v86 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v72, v74);
LABEL_26:
  v87 = v130;
  ScreenSharingSpectatorModalOverlay.horizontalSizeClass.getter(v86);
  OUTLINED_FUNCTION_15_21();
  v88();
  OUTLINED_FUNCTION_17_25(v48);
  v90 = *(*(v89 - 256) + 48);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v87, v71, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v48, v71 + v90, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  OUTLINED_FUNCTION_3_62(v71);
  if (!v50)
  {
    v91 = v119;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v71, v119, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    OUTLINED_FUNCTION_3_62(v71 + v90);
    if (!v92)
    {
      v93 = v138;
      v94 = OUTLINED_FUNCTION_20_19();
      v95(v94);
      OUTLINED_FUNCTION_1_67();
      lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass(v96, v97);
      dispatch thunk of static Equatable.== infix(_:_:)();
      v98 = *(v93 + 8);
      v99 = OUTLINED_FUNCTION_1_5();
      v98(v99);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v140, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v87, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      v73 = v143;
      (v98)(v91, v5);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v71, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_18_28(v140);
    OUTLINED_FUNCTION_18_28(v87);
    (*(v138 + 8))(v91, v5);
LABEL_34:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v71, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_18_28(v48);
  OUTLINED_FUNCTION_18_28(v87);
  OUTLINED_FUNCTION_3_62(v71 + v90);
  if (!v50)
  {
    goto LABEL_34;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v71, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
LABEL_35:
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v100 = v131;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v73, v131, &_s7SwiftUI15ModifiedContentVyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_OpacityEffectVGMd);
  OUTLINED_FUNCTION_23_20();
  memcpy((v100 + v101), __src, 0x70uLL);
  v143 = static Alignment.center.getter();
  v103 = v102;
  OUTLINED_FUNCTION_23_20();
  v104 = v132;
  v106 = v132 + v105;
  v107 = *MEMORY[0x1E697F468];
  v108 = type metadata accessor for RoundedCornerStyle();
  OUTLINED_FUNCTION_7_0();
  v110 = *(v109 + 104);
  v110(v106, v107, v108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7CapsuleVAA15_BackdropEffectVyAA4ViewPAAE12_colorMatrixyQrAA06_ColorJ0VFQOyACyAA01_fG11PlaceholderVAA05_BlurG0VG_Qo_GGMd);
  v144 = 0x4059000000000000;
  v145 = 1;
  static _ColorMatrix.buttonPlatter.getter(v147);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA26_BackdropEffectPlaceholderVAA05_BlurF0VGMd);
  lazy protocol witness table accessor for type ModifiedContent<_BackdropEffectPlaceholder, _BlurEffect> and conformance <> ModifiedContent<A, B>();
  View._colorMatrix(_:)();
  v111 = (v106 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA7CapsuleVAA15_BackdropEffectVyAA4ViewPAAE12_colorMatrixyQrAA06_ColorL0VFQOyAEyAA01_hI11PlaceholderVAA05_BlurI0VG_Qo_GGGMd) + 36));
  *v111 = v143;
  v111[1] = v103;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v100, v104, &_s7SwiftUI15ModifiedContentVyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGMd);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGAA011_BackgroundL0VyACyAA7CapsuleVAA09_BackdropO0VyAA4ViewPAAE12_colorMatrixyQrAA06_ColorX0VFQOyACyAA01_uO11PlaceholderVAA05_BlurO0VG_Qo_GGGGAA01_d5ShapeL0VyAXGGMd);
  v113 = v134;
  v114 = v134 + *(v112 + 36);
  v110(v114, v107, v108);
  *(v114 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ContentShapeModifierVyAA7CapsuleVGMd) + 36)) = 0;
  return outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v104, v113, &_s7SwiftUI15ModifiedContentVyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGAA011_BackgroundL0VyACyAA7CapsuleVAA09_BackdropO0VyAA4ViewPAAE12_colorMatrixyQrAA06_ColorX0VFQOyACyAA01_uO11PlaceholderVAA05_BlurO0VG_Qo_GGGGMd);
}

uint64_t ScreenSharingOverlayPlatterButtonStyle.horizontalSizeClass.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v2, &v16 - v12, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v13, a1, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  }

  static os_log_type_t.fault.getter();
  v15 = static Log.runtimeIssuesLog.getter();
  OUTLINED_FUNCTION_25_22();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v10, v4);
}

uint64_t ScreenSharingSpectatorModalOverlay.title.getter()
{
  v66 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v66);
  v65 = v64 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v64 - v6;
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v0 + *(type metadata accessor for ScreenSharingSpectatorModalOverlay(0) + 20);
  v13 = *v12;
  v14 = *(v12 + 8);

  v16 = v13;
  if ((v14 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v15 = (*(v9 + 8))(v11, v8);
    v16 = v67;
  }

  (*(*v16 + 648))(&v68, v15);

  v18 = v68;

  v20 = v13;
  if ((v14 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v19 = (*(v9 + 8))(v11, v8);
    v20 = v67;
  }

  v22 = (*(*v20 + 504))(v19);

  switch(v18 >> 61)
  {
    case 1uLL:
      v23 = [objc_opt_self() conversationKit];
      v69._object = 0xE000000000000000;
      v24.value._countAndFlagsBits = 0x61737265766E6F43;
      v24.value._object = 0xEF74694B6E6F6974;
      v25._object = 0x80000001BC4F3F30;
      v25._countAndFlagsBits = 0xD00000000000001CLL;
      v26._countAndFlagsBits = 0;
      v26._object = 0xE000000000000000;
      v69._countAndFlagsBits = 0;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v24, v23, v26, v69)._countAndFlagsBits;

      goto LABEL_7;
    case 2uLL:
      outlined consume of RemoteControlState(v18);
      goto LABEL_12;
    case 4uLL:
      if (v22)
      {
        v28 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        outlined consume of RemoteControlState(v18);
        if (v28 >> 61 != 2)
        {
          return 0;
        }

LABEL_12:
        v29 = [objc_opt_self() conversationKit];
        v70._object = 0xE000000000000000;
        v30.value._countAndFlagsBits = 0x61737265766E6F43;
        v30.value._object = 0xEF74694B6E6F6974;
        v31._countAndFlagsBits = 0xD000000000000022;
        v31._object = 0x80000001BC4F9EF0;
        v32._countAndFlagsBits = 0;
        v32._object = 0xE000000000000000;
        v70._countAndFlagsBits = 0;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v30, v29, v32, v70);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_1BC4BA940;

        if ((v14 & 1) == 0)
        {
          static os_log_type_t.fault.getter();
          v35 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();

          v34 = (*(v9 + 8))(v11, v8);
          v13 = v67;
        }

        (*(*v13 + 216))(v34);

        if (__swift_getEnumTagSinglePayload(v7, 1, v66))
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s15ConversationKit11ParticipantVSgMd);
          v36 = 0;
          v37 = 0;
        }

        else
        {
          v51 = v65;
          outlined init with copy of ScreenSharingSpectatorModalOverlay(v7, v65, type metadata accessor for Participant);
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s15ConversationKit11ParticipantVSgMd);
          Participant.contactDetails.getter();
          v52 = v67;

          Participant.name(_:)();
          v36 = v53;
          v37 = v54;

          _s15ConversationKit11ParticipantVWOhTm_5(v51, type metadata accessor for Participant);
        }

        *(v33 + 56) = MEMORY[0x1E69E6158];
        *(v33 + 64) = lazy protocol witness table accessor for type String and conformance String();
        if (v37)
        {
          v55 = v36;
        }

        else
        {
          v55 = 0;
        }

        v56 = 0xE000000000000000;
        if (v37)
        {
          v56 = v37;
        }

        *(v33 + 32) = v55;
        *(v33 + 40) = v56;
        countAndFlagsBits = String.init(format:_:)();
      }

      else
      {
        if (*((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) != 2)
        {
LABEL_23:
          outlined consume of RemoteControlState(v18);
          return 0;
        }

        v42 = [objc_opt_self() conversationKit];
        v72._object = 0xE000000000000000;
        v43.value._countAndFlagsBits = 0x61737265766E6F43;
        v43.value._object = 0xEF74694B6E6F6974;
        v44._countAndFlagsBits = 0xD000000000000030;
        v44._object = 0x80000001BC4F9EB0;
        v45._countAndFlagsBits = 0;
        v45._object = 0xE000000000000000;
        v72._countAndFlagsBits = 0;
        v64[1] = NSLocalizedString(_:tableName:bundle:value:comment:)(v44, v43, v42, v45, v72)._countAndFlagsBits;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_1BC4BA940;

        if ((v14 & 1) == 0)
        {
          static os_log_type_t.fault.getter();
          v48 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();

          v47 = (*(v9 + 8))(v11, v8);
          v13 = v67;
        }

        (*(*v13 + 216))(v47);

        if (__swift_getEnumTagSinglePayload(v4, 1, v66))
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s15ConversationKit11ParticipantVSgMd);
          v49 = 0;
          v50 = 0;
        }

        else
        {
          v58 = v65;
          outlined init with copy of ScreenSharingSpectatorModalOverlay(v4, v65, type metadata accessor for Participant);
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s15ConversationKit11ParticipantVSgMd);
          Participant.contactDetails.getter();
          v59 = v67;

          Participant.name(_:)();
          v49 = v60;
          v50 = v61;

          _s15ConversationKit11ParticipantVWOhTm_5(v58, type metadata accessor for Participant);
        }

        *(v46 + 56) = MEMORY[0x1E69E6158];
        *(v46 + 64) = lazy protocol witness table accessor for type String and conformance String();
        if (v50)
        {
          v62 = v49;
        }

        else
        {
          v62 = 0;
        }

        v63 = 0xE000000000000000;
        if (v50)
        {
          v63 = v50;
        }

        *(v46 + 32) = v62;
        *(v46 + 40) = v63;
        countAndFlagsBits = String.init(format:_:)();

LABEL_7:
        outlined consume of RemoteControlState(v18);
      }

      return countAndFlagsBits;
    case 5uLL:
      if ((v18 | 0x10) != 0xA000000000000010)
      {
        goto LABEL_23;
      }

      v38 = [objc_opt_self() conversationKit];
      v71._object = 0xE000000000000000;
      v39.value._countAndFlagsBits = 0x61737265766E6F43;
      v39.value._object = 0xEF74694B6E6F6974;
      v40._object = 0x80000001BC4F3F30;
      v40._countAndFlagsBits = 0xD00000000000001CLL;
      v41._countAndFlagsBits = 0;
      v41._object = 0xE000000000000000;
      v71._countAndFlagsBits = 0;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v40, v39, v38, v41, v71)._countAndFlagsBits;

      return countAndFlagsBits;
    default:
      goto LABEL_23;
  }
}

uint64_t ScreenSharingSpectatorModalOverlay.statusText.getter()
{
  v48 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v48);
  v2 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v45 - v4;
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v0 + *(type metadata accessor for ScreenSharingSpectatorModalOverlay(0) + 20);
  v11 = *v10;
  v12 = *(v10 + 8);

  v14 = v11;
  if ((v12 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v13 = (*(v7 + 8))(v9, v6);
    v14 = v49;
  }

  (*(*v14 + 648))(&v50, v13);

  v16 = v50;

  v18 = v11;
  if ((v12 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v17 = (*(v7 + 8))(v9, v6);
    v18 = v49;
  }

  v20 = (*(*v18 + 504))(v17);

  switch(v16 >> 61)
  {
    case 1uLL:
      v46 = v2;
      v21 = [objc_opt_self() conversationKit];
      v51._object = 0xE000000000000000;
      v22.value._countAndFlagsBits = 0x61737265766E6F43;
      v22.value._object = 0xEF74694B6E6F6974;
      v23._countAndFlagsBits = 0xD00000000000002FLL;
      v23._object = 0x80000001BC4F9E80;
      v24._countAndFlagsBits = 0;
      v24._object = 0xE000000000000000;
      v51._countAndFlagsBits = 0;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v22, v21, v24, v51)._countAndFlagsBits;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1BC4BA940;

      if ((v12 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v27 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        v26 = (*(v7 + 8))(v9, v6);
        v11 = v49;
      }

      (*(*v11 + 216))(v26);

      if (__swift_getEnumTagSinglePayload(v5, 1, v48))
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit11ParticipantVSgMd);
        v28 = 0;
        v29 = 0;
      }

      else
      {
        v38 = v46;
        outlined init with copy of ScreenSharingSpectatorModalOverlay(v5, v46, type metadata accessor for Participant);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit11ParticipantVSgMd);
        Participant.contactDetails.getter();
        v39 = v49;

        Participant.name(_:)();
        v28 = v40;
        v29 = v41;

        _s15ConversationKit11ParticipantVWOhTm_5(v38, type metadata accessor for Participant);
      }

      *(v25 + 56) = MEMORY[0x1E69E6158];
      *(v25 + 64) = lazy protocol witness table accessor for type String and conformance String();
      if (v29)
      {
        v42 = v28;
      }

      else
      {
        v42 = 0;
      }

      v43 = 0xE000000000000000;
      if (v29)
      {
        v43 = v29;
      }

      *(v25 + 32) = v42;
      *(v25 + 40) = v43;
      v37 = String.init(format:_:)();

      outlined consume of RemoteControlState(v16);
      return v37;
    case 2uLL:
      outlined consume of RemoteControlState(v16);
      goto LABEL_13;
    case 4uLL:
      v30 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) >> 61 == 2;
      outlined consume of RemoteControlState(v16);
      if ((v30 & v20 & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_13:
      v31 = "%@_WANTS_TO_VIEW_SCREEN";
      v32 = [objc_opt_self() conversationKit];
      goto LABEL_16;
    case 5uLL:
      if ((v16 | 0x10) != 0xA000000000000010)
      {
        goto LABEL_17;
      }

      v31 = "SCREEN_SHARING_CONTROL_CANCEL";
      v32 = [objc_opt_self() conversationKit];
LABEL_16:
      v33 = v32;
      v52._object = 0xE000000000000000;
      v34.value._countAndFlagsBits = 0x61737265766E6F43;
      v34.value._object = 0xEF74694B6E6F6974;
      v35._object = (v31 | 0x8000000000000000);
      v35._countAndFlagsBits = 0xD00000000000001CLL;
      v36._countAndFlagsBits = 0;
      v36._object = 0xE000000000000000;
      v52._countAndFlagsBits = 0;
      v37 = NSLocalizedString(_:tableName:bundle:value:comment:)(v35, v34, v33, v36, v52)._countAndFlagsBits;

      break;
    default:
LABEL_17:
      outlined consume of RemoteControlState(v16);
LABEL_18:
      v37 = 0;
      break;
  }

  return v37;
}

unint64_t ScreenSharingSpectatorModalOverlay.statusView.getter@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA15ModifiedContentVy15ConversationKit17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGMd);
  MEMORY[0x1EEE9AC00](v73);
  v3 = (&v56 - v2);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatteriH0VQo_AA05EmptyF0VGAA6ZStackVyAA08ModifiedD0VyAO17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGG_GMd);
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v56 - v4;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatteriH0VQo_AA05EmptyF0V_GMd);
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v56 - v5;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatterhG0VQo_AA05EmptyE0VGMd);
  MEMORY[0x1EEE9AC00](v70);
  v68 = &v56 - v6;
  v64 = type metadata accessor for ScreenSharingOverlayPlatterButtonStyle(0);
  MEMORY[0x1EEE9AC00](v64);
  v60 = (&v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for ScreenSharingSpectatorModalOverlay(0);
  v9 = v8 - 8;
  v56 = *(v8 - 8);
  v10 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  v58 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v57 = &v56 - v11;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatterfE0VQo_Md);
  v62 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v61 = &v56 - v12;
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v9 + 28);
  v59 = v1;
  v18 = v1 + v17;
  v19 = *v18;
  v20 = *(v18 + 8);

  v22 = v19;
  if ((v20 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v23 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v21 = (*(v14 + 8))(v16, v13);
    v22 = v74;
  }

  (*(*v22 + 648))(&v78, v21);

  v24 = v78;

  if ((v20 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v26 = v24;
    v27 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v24 = v26;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v25 = (*(v14 + 8))(v16, v13);
    v19 = v74;
  }

  v28 = (*(*v19 + 504))(v25);

  if (v24 >> 61 == 1)
  {
    outlined init with copy of ScreenSharingSpectatorModalOverlay(v59, &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ScreenSharingSpectatorModalOverlay);
    v42 = (*(v56 + 80) + 16) & ~*(v56 + 80);
    v43 = swift_allocObject();
    outlined init with take of ScreenSharingSpectatorModalOverlay(&v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v43 + v42);
    v44 = v57;
    Button.init(action:label:)();
    KeyPath = swift_getKeyPath();
    v46 = v60;
    *v60 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
    swift_storeEnumTagMultiPayload();
    v47 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
    v48 = lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass(&lazy protocol witness table cache variable for type ScreenSharingOverlayPlatterButtonStyle and conformance ScreenSharingOverlayPlatterButtonStyle, type metadata accessor for ScreenSharingOverlayPlatterButtonStyle);
    v49 = v61;
    v51 = v63;
    v50 = v64;
    View.buttonStyle<A>(_:)();
    _s15ConversationKit11ParticipantVWOhTm_5(v46, type metadata accessor for ScreenSharingOverlayPlatterButtonStyle);
    (*(v58 + 8))(v44, v51);
    v52 = v62;
    v53 = v66;
    (*(v62 + 16))(v67, v49, v66);
    swift_storeEnumTagMultiPayload();
    v74 = v51;
    v75 = v50;
    v76 = v47;
    v77 = v48;
    swift_getOpaqueTypeConformance2();
    v54 = v24;
    v55 = v68;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v55, v71, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatterhG0VQo_AA05EmptyE0VGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, EmptyView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type ZStack<ModifiedContent<ActivityIndicator, _EnvironmentKeyWritingModifier<ControlSize>>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA15ModifiedContentVy15ConversationKit17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGMd);
    _ConditionalContent<>.init(storage:)();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v55, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatterhG0VQo_AA05EmptyE0VGMd);
    (*(v52 + 8))(v49, v53);
    v33 = v54;
  }

  else
  {
    if (v24 >> 61 != 4 || (v28 & 1) != 0 || *((v24 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) != 2)
    {
      outlined consume of RemoteControlState(v24);
      *v3 = static Alignment.center.getter();
      v3[1] = v34;
      v35 = (v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA15ModifiedContentVy15ConversationKit17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGMd) + 44));
      *v35 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ControlSizeO_GMd);
      swift_storeEnumTagMultiPayload();
      v36 = type metadata accessor for ActivityIndicator(0);
      *(v35 + v36[5]) = 0x402C000000000000;
      *(v35 + v36[6]) = 0x403E000000000000;
      *(v35 + v36[7]) = 0x4038000000000000;
      v37 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGMd) + 36));
      v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMd) + 28);
      v39 = *MEMORY[0x1E697DC28];
      v40 = type metadata accessor for ControlSize();
      (*(*(v40 - 8) + 104))(v37 + v38, v39, v40);
      *v37 = swift_getKeyPath();
      outlined init with copy of IDView<AvatarStackView, [UUID]>(v3, v71, &_s7SwiftUI6ZStackVyAA15ModifiedContentVy15ConversationKit17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, EmptyView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type ZStack<ModifiedContent<ActivityIndicator, _EnvironmentKeyWritingModifier<ControlSize>>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA15ModifiedContentVy15ConversationKit17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGMd);
      _ConditionalContent<>.init(storage:)();
      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s7SwiftUI6ZStackVyAA15ModifiedContentVy15ConversationKit17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGMd);
    }

    swift_storeEnumTagMultiPayload();
    v29 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
    v30 = lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass(&lazy protocol witness table cache variable for type ScreenSharingOverlayPlatterButtonStyle and conformance ScreenSharingOverlayPlatterButtonStyle, type metadata accessor for ScreenSharingOverlayPlatterButtonStyle);
    v74 = v63;
    v75 = v64;
    v76 = v29;
    v77 = v30;
    swift_getOpaqueTypeConformance2();
    v31 = v24;
    v32 = v68;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v32, v71, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatterhG0VQo_AA05EmptyE0VGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, EmptyView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type ZStack<ModifiedContent<ActivityIndicator, _EnvironmentKeyWritingModifier<ControlSize>>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA15ModifiedContentVy15ConversationKit17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGMd);
    _ConditionalContent<>.init(storage:)();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v32, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatterhG0VQo_AA05EmptyE0VGMd);
    v33 = v31;
  }

  return outlined consume of RemoteControlState(v33);
}

uint64_t closure #1 in ScreenSharingSpectatorModalOverlay.statusView.getter(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (a1 + *(type metadata accessor for ScreenSharingSpectatorModalOverlay(0) + 20));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v9 = (*(v3 + 8))(v5, v2);
    v7 = v12[1];
  }

  (*(*v7 + 904))(v9);
}

uint64_t closure #2 in ScreenSharingSpectatorModalOverlay.statusView.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() conversationKit];
  v10._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x61737265766E6F43;
  v3.value._object = 0xEF74694B6E6F6974;
  v4._object = 0x80000001BC4F9E40;
  v4._countAndFlagsBits = 0xD00000000000001DLL;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v10);

  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

unint64_t ScreenSharingSpectatorModalOverlay.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v3 = type metadata accessor for EnvironmentValues();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVy15ConversationKit17ParticipantAvatarVAA12_FrameLayoutVG_AGyAA6SpacerVALGAA6IDViewVyACyAEyAA4TextVSg_AGyAtA15_BackdropEffectVyAA0E0PAAE12_colorMatrixyQrAA06_ColorT0VFQOyAA01_qR11PlaceholderV_Qo_GGSgtGGAH18RemoteControlStateOGApGyAA012_ConditionalG0VyA13_yAyAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyATG_AH38ScreenSharingOverlayPlatterButtonStyleVQo_AA05EmptyE0VGAA6ZStackVyAGyAH17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA0X4SizeOGGGGAA05_FlexlM0VGtGGMd);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACy15ConversationKit17ParticipantAvatarVAA12_FrameLayoutVG_ACyAA6SpacerVALGAA6IDViewVyAEyAGyAA4TextVSg_ACyAtA15_BackdropEffectVyAA0G0PAAE12_colorMatrixyQrAA06_ColorT0VFQOyAA01_qR11PlaceholderV_Qo_GGSgtGGAH18RemoteControlStateOGApCyAA012_ConditionalD0VyA13_yAyAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyATG_AH38ScreenSharingOverlayPlatterButtonStyleVQo_AA05EmptyG0VGAA6ZStackVyACyAH17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA0X4SizeOGGGGAA05_FlexlM0VGtGGA38_GMd) - 8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  *v12 = static HorizontalAlignment.center.getter();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVy15ConversationKit17ParticipantAvatarVAA06_FrameG0VG_AKyAA6SpacerVAPGAA6IDViewVyAA0F0VyAIyAA4TextVSg_AKyAzA15_BackdropEffectVyAA0D0PAAE12_colorMatrixyQrAA06_ColorV0VFQOyAA01_sT11PlaceholderV_Qo_GGSgtGGAL18RemoteControlStateOGAtKyAA012_ConditionalJ0VyA19_yA3_AAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyAZG_AL38ScreenSharingOverlayPlatterButtonStyleVQo_AA05EmptyD0VGAA6ZStackVyAKyAL17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA0Z4SizeOGGGGAA05_FlexoG0VGtGGMd);
  closure #1 in ScreenSharingSpectatorModalOverlay.body.getter(v2, &v12[*(v17 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v12, v16, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVy15ConversationKit17ParticipantAvatarVAA12_FrameLayoutVG_AGyAA6SpacerVALGAA6IDViewVyACyAEyAA4TextVSg_AGyAtA15_BackdropEffectVyAA0E0PAAE12_colorMatrixyQrAA06_ColorT0VFQOyAA01_qR11PlaceholderV_Qo_GGSgtGGAH18RemoteControlStateOGApGyAA012_ConditionalG0VyA13_yAyAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyATG_AH38ScreenSharingOverlayPlatterButtonStyleVQo_AA05EmptyE0VGAA6ZStackVyAGyAH17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA0X4SizeOGGGGAA05_FlexlM0VGtGGMd);
  memcpy(&v16[*(v13 + 44)], __src, 0x70uLL);
  v18 = static Animation.default.getter();
  v19 = v2 + *(type metadata accessor for ScreenSharingSpectatorModalOverlay(0) + 20);
  v20 = *v19;
  v21 = *(v19 + 8);

  if ((v21 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v23 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v22 = (*(v5 + 8))(v9, v3);
    v20 = v29;
  }

  (*(*v20 + 648))(&v29, v22);

  v24 = v28;
  v25 = v29;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v16, v28, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACy15ConversationKit17ParticipantAvatarVAA12_FrameLayoutVG_ACyAA6SpacerVALGAA6IDViewVyAEyAGyAA4TextVSg_ACyAtA15_BackdropEffectVyAA0G0PAAE12_colorMatrixyQrAA06_ColorT0VFQOyAA01_qR11PlaceholderV_Qo_GGSgtGGAH18RemoteControlStateOGApCyAA012_ConditionalD0VyA13_yAyAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyATG_AH38ScreenSharingOverlayPlatterButtonStyleVQo_AA05EmptyG0VGAA6ZStackVyACyAH17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA0X4SizeOGGGGAA05_FlexlM0VGtGGA38_GMd);
  v26 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACy15ConversationKit17ParticipantAvatarVAA12_FrameLayoutVG_ACyAA6SpacerVALGAA6IDViewVyAEyAGyAA4TextVSg_ACyAtA15_BackdropEffectVyAA0G0PAAE12_colorMatrixyQrAA06_ColorT0VFQOyAA01_qR11PlaceholderV_Qo_GGSgtGGAH18RemoteControlStateOGApCyAA012_ConditionalD0VyA13_yAyAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyATG_AH38ScreenSharingOverlayPlatterButtonStyleVQo_AA05EmptyG0VGAA6ZStackVyACyAH17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA0X4SizeOGGGGAA05_FlexlM0VGtGGA38_GAA18_AnimationModifierVyA10_GGMd) + 36));
  *v26 = v18;
  v26[1] = v25;

  outlined copy of RemoteControlState(v25);

  return outlined consume of RemoteControlState(v25);
}

uint64_t closure #1 in ScreenSharingSpectatorModalOverlay.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v184 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatterhG0VQo_AA05EmptyE0VGAA6ZStackVyAA08ModifiedD0VyAM17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGGMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v201 = &v164 - v4;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatteriH0VQo_AA05EmptyF0VGAA6ZStackVyACyAO17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGGAA16_FlexFrameLayoutVGMd);
  MEMORY[0x1EEE9AC00](v180);
  v183 = &v164 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v179 = &v164 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v182 = &v164 - v9;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6IDViewVyAA6VStackVyAA9TupleViewVyAA4TextVSg_AA15ModifiedContentVyAiA15_BackdropEffectVyAA0F0PAAE12_colorMatrixyQrAA06_ColorM0VFQOyAA01_jK11PlaceholderV_Qo_GGSgtGG15ConversationKit18RemoteControlStateOGMd);
  MEMORY[0x1EEE9AC00](v174);
  v181 = &v164 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v203 = &v164 - v12;
  v13 = type metadata accessor for UserInterfaceSizeClass();
  v205 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v188 = &v164 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
  MEMORY[0x1EEE9AC00](v208);
  v16 = &v164 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v176 = &v164 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v175 = &v164 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v194 = &v164 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v164 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v168 = &v164 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v178 = &v164 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v187 = &v164 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v167 = &v164 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v185 = &v164 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v186 = &v164 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v166 = &v164 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v192 = &v164 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v193 = &v164 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v165 = &v164 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v190 = &v164 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v191 = &v164 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v164 = &v164 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v164 - v53;
  MEMORY[0x1EEE9AC00](v55);
  v189 = &v164 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v57 - 8);
  v59 = &v164 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v164 - v61;
  v63 = type metadata accessor for EnvironmentValues();
  v172 = *(v63 - 8);
  v173 = v63;
  MEMORY[0x1EEE9AC00](v63);
  v171 = &v164 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = *(type metadata accessor for ScreenSharingSpectatorModalOverlay(0) + 20);
  v209 = a1;
  v66 = (a1 + v65);
  v67 = *v66;
  v68 = *(v66 + 8);

  v70 = v67;
  v202 = v16;
  v170 = v68;
  if ((v68 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v71 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v72 = v171;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v69 = (*(v172 + 8))(v72, v173);
    v70 = __src[0];
  }

  (*(*v70 + 216))(v69);

  outlined init with copy of IDView<AvatarStackView, [UUID]>(v62, v59, &_s15ConversationKit11ParticipantVSgMd);
  v73 = type metadata accessor for Participant(0);
  if (__swift_getEnumTagSinglePayload(v59, 1, v73) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v62, &_s15ConversationKit11ParticipantVSgMd);
    v74 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v59, &_s15ConversationKit11ParticipantVSgMd);
    v199 = 0;
    v200 = 0;
    v177 = 0;
    v197 = 0;
    v198 = 0;
    v195 = 0;
    v196 = 0;
  }

  else
  {
    Participant.contactDetails.getter();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v62, &_s15ConversationKit11ParticipantVSgMd);
    v177 = __src[1];
    v199 = __src[2];
    v200 = __src[0];
    v197 = __src[4];
    v198 = __src[3];
    v195 = __src[6];
    v196 = __src[5];
    v74 = _s15ConversationKit11ParticipantVWOhTm_5(v59, type metadata accessor for Participant);
  }

  v75 = v208;
  v76 = v189;
  ScreenSharingSpectatorModalOverlay.horizontalSizeClass.getter(v74);
  v77 = *(v205 + 104);
  v204 = *MEMORY[0x1E697FF40];
  v206 = v77;
  v207 = v205 + 104;
  (v77)(v54);
  __swift_storeEnumTagSinglePayload(v54, 0, 1, v13);
  v78 = *(v75 + 48);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v76, v25, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v54, &v25[v78], &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 1, v13);
  v169 = v67;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v54, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v76, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    if (__swift_getEnumTagSinglePayload(&v25[v78], 1, v13) == 1)
    {
      v80 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v25, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      v81 = 0x4056800000000000;
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v82 = v164;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v25, v164, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  if (__swift_getEnumTagSinglePayload(&v25[v78], 1, v13) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v54, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v189, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    (*(v205 + 8))(v82, v13);
LABEL_11:
    v80 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v25, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
    v81 = 0x4052C00000000000;
    goto LABEL_14;
  }

  v83 = v205;
  v84 = v188;
  (*(v205 + 32))(v188, &v25[v78], v13);
  lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, MEMORY[0x1E697FF50]);
  v85 = v82;
  v86 = dispatch thunk of static Equatable.== infix(_:_:)();
  v87 = *(v83 + 8);
  v87(v84, v13);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v54, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v189, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  v87(v85, v13);
  v80 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v25, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  v81 = 0x4052C00000000000;
  if (v86)
  {
    v81 = 0x4056800000000000;
  }

LABEL_14:
  v189 = v81;
  v88 = v203;
  v89 = v209;
  v90 = v190;
  v91 = v191;
  ScreenSharingSpectatorModalOverlay.horizontalSizeClass.getter(v80);
  v206(v90, v204, v13);
  __swift_storeEnumTagSinglePayload(v90, 0, 1, v13);
  v92 = *(v208 + 48);
  v93 = v194;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v91, v194, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v90, v93 + v92, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  if (__swift_getEnumTagSinglePayload(v93, 1, v13) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v90, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    v94 = v194;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v91, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    v95 = __swift_getEnumTagSinglePayload(v94 + v92, 1, v13);
    v96 = v169;
    if (v95 == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v94, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      v97 = v185;
      v98 = v192;
      v99 = v201;
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v100 = v165;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v93, v165, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  v101 = __swift_getEnumTagSinglePayload(v93 + v92, 1, v13);
  v96 = v169;
  if (v101 == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v190, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    v94 = v194;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v191, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    (*(v205 + 8))(v100, v13);
LABEL_19:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v94, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
    v97 = v185;
    v98 = v192;
    v99 = v201;
    goto LABEL_21;
  }

  v102 = v205;
  v103 = v188;
  (*(v205 + 32))(v188, v93 + v92, v13);
  lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, MEMORY[0x1E697FF50]);
  dispatch thunk of static Equatable.== infix(_:_:)();
  v104 = v88;
  v105 = *(v102 + 8);
  v105(v103, v13);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v190, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v191, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  v105(v100, v13);
  v88 = v104;
  v89 = v209;
  v99 = v201;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v194, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  v97 = v185;
  v98 = v192;
LABEL_21:
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *(v222 + 7) = *&v222[7];
  *(&v222[2] + 7) = *&v222[9];
  *(&v222[4] + 7) = *&v222[11];
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v194 = v222[13];
  v190 = v226;
  v191 = v224;
  v189 = v227;
  v221 = 1;
  v220 = v223;
  v219 = v225;
  *v88 = static HorizontalAlignment.center.getter();
  *(v88 + 8) = 0;
  *(v88 + 16) = 1;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA4TextVSg_AA15ModifiedContentVyAkA15_BackdropEffectVyAA0D0PAAE12_colorMatrixyQrAA06_ColorO0VFQOyAA01_lM11PlaceholderV_Qo_GGSgtGGMd);
  closure #1 in closure #1 in ScreenSharingSpectatorModalOverlay.body.getter(v89, (v88 + *(v106 + 44)));

  if ((v170 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v108 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v109 = v171;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v107 = (*(v172 + 8))(v109, v173);
    v96 = __src[0];
  }

  (*(*v96 + 648))(__src, v107);

  *(v88 + *(v174 + 52)) = __src[0];
  v111 = v193;
  ScreenSharingSpectatorModalOverlay.horizontalSizeClass.getter(v110);
  v206(v98, v204, v13);
  __swift_storeEnumTagSinglePayload(v98, 0, 1, v13);
  v112 = *(v208 + 48);
  v113 = v175;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v111, v175, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v98, v113 + v112, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  if (__swift_getEnumTagSinglePayload(v113, 1, v13) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v98, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v111, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    v114 = __swift_getEnumTagSinglePayload(v113 + v112, 1, v13);
    v115 = v186;
    if (v114 == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v113, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  v116 = v166;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v113, v166, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  if (__swift_getEnumTagSinglePayload(v113 + v112, 1, v13) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v192, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v193, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    (*(v205 + 8))(v116, v13);
    v115 = v186;
LABEL_28:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v113, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
    goto LABEL_30;
  }

  v117 = v116;
  v118 = v205;
  v119 = v188;
  (*(v205 + 32))(v188, v113 + v112, v13);
  lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, MEMORY[0x1E697FF50]);
  dispatch thunk of static Equatable.== infix(_:_:)();
  v120 = *(v118 + 8);
  v120(v119, v13);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v192, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v193, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  v121 = v117;
  v99 = v201;
  v120(v121, v13);
  v97 = v185;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v113, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  v115 = v186;
LABEL_30:
  v122 = v204;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v192 = v230;
  v193 = v228;
  v185 = v232;
  v175 = v233;
  v218 = 1;
  v217 = v229;
  v216 = v231;
  v123 = ScreenSharingSpectatorModalOverlay.statusView.getter(v99);
  ScreenSharingSpectatorModalOverlay.horizontalSizeClass.getter(v123);
  v206(v97, v122, v13);
  __swift_storeEnumTagSinglePayload(v97, 0, 1, v13);
  v124 = v208;
  v125 = *(v208 + 48);
  v126 = v176;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v115, v176, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v97, v126 + v125, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  if (__swift_getEnumTagSinglePayload(v126, 1, v13) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v97, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v115, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    if (__swift_getEnumTagSinglePayload(v126 + v125, 1, v13) == 1)
    {
      v186 = 0x4065400000000000;
      v127 = &_s7SwiftUI22UserInterfaceSizeClassOSgMd;
LABEL_36:
      v129 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v126, v127);
      goto LABEL_40;
    }

LABEL_35:
    v186 = 0x4061C00000000000;
    v127 = &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd;
    goto LABEL_36;
  }

  v128 = v167;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v126, v167, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  if (__swift_getEnumTagSinglePayload(v126 + v125, 1, v13) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v97, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v115, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    (*(v205 + 8))(v128, v13);
    goto LABEL_35;
  }

  v130 = v205;
  v131 = v188;
  (*(v205 + 32))(v188, v126 + v125, v13);
  lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, MEMORY[0x1E697FF50]);
  v132 = v128;
  v133 = dispatch thunk of static Equatable.== infix(_:_:)();
  v134 = *(v130 + 8);
  v134(v131, v13);
  v122 = v204;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v97, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v186, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  v135 = v132;
  v124 = v208;
  v134(v135, v13);
  v129 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v126, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  v136 = 0x4061C00000000000;
  if (v133)
  {
    v136 = 0x4065400000000000;
  }

  v186 = v136;
LABEL_40:
  v137 = v187;
  ScreenSharingSpectatorModalOverlay.horizontalSizeClass.getter(v129);
  v138 = v178;
  v206(v178, v122, v13);
  __swift_storeEnumTagSinglePayload(v138, 0, 1, v13);
  v139 = *(v124 + 48);
  v140 = v202;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v137, v202, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v138, v140 + v139, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  if (__swift_getEnumTagSinglePayload(v140, 1, v13) != 1)
  {
    v141 = v202;
    v142 = v168;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v202, v168, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    if (__swift_getEnumTagSinglePayload(v141 + v139, 1, v13) != 1)
    {
      v143 = v138;
      v144 = v205;
      v145 = v202;
      v146 = v188;
      (*(v205 + 32))(v188, &v202[v139], v13);
      lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, MEMORY[0x1E697FF50]);
      dispatch thunk of static Equatable.== infix(_:_:)();
      v147 = *(v144 + 8);
      v147(v146, v13);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v143, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v187, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      v147(v142, v13);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v145, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      goto LABEL_47;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v138, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v137, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    (*(v205 + 8))(v142, v13);
    goto LABEL_45;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v138, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v137, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  if (__swift_getEnumTagSinglePayload(&v202[v139], 1, v13) != 1)
  {
LABEL_45:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v202, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
    goto LABEL_47;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v202, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
LABEL_47:
  v148 = v201;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v149 = v179;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v148, v179, &_s7SwiftUI19_ConditionalContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatterhG0VQo_AA05EmptyE0VGAA6ZStackVyAA08ModifiedD0VyAM17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGGMd);
  memcpy((v149 + *(v180 + 36)), __src, 0x70uLL);
  v150 = v182;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v149, v182, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatteriH0VQo_AA05EmptyF0VGAA6ZStackVyACyAO17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGGAA16_FlexFrameLayoutVGMd);
  v151 = v221;
  v152 = v220;
  v153 = v219;
  v154 = v181;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v203, v181, &_s7SwiftUI6IDViewVyAA6VStackVyAA9TupleViewVyAA4TextVSg_AA15ModifiedContentVyAiA15_BackdropEffectVyAA0F0PAAE12_colorMatrixyQrAA06_ColorM0VFQOyAA01_jK11PlaceholderV_Qo_GGSgtGG15ConversationKit18RemoteControlStateOGMd);
  LODWORD(v207) = v218;
  LODWORD(v208) = v217;
  LODWORD(v209) = v216;
  v155 = v183;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v150, v183, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatteriH0VQo_AA05EmptyF0VGAA6ZStackVyACyAO17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGGAA16_FlexFrameLayoutVGMd);
  *(&v210[7] + 1) = *v222;
  v156 = v177;
  v210[0] = v200;
  v210[1] = v177;
  v210[2] = v199;
  v210[3] = v198;
  v210[4] = v197;
  v210[5] = v196;
  v210[6] = v195;
  LOBYTE(v210[7]) = 1;
  *(&v210[9] + 1) = *&v222[2];
  *(&v210[11] + 1) = *&v222[4];
  v210[13] = *(&v222[5] + 7);
  v157 = v184;
  memcpy(v184, v210, 0x70uLL);
  v157[14] = 0;
  *(v157 + 120) = v151;
  v157[16] = v194;
  *(v157 + 136) = v152;
  v158 = v190;
  v157[18] = v191;
  *(v157 + 152) = v153;
  v159 = v189;
  v157[20] = v158;
  v157[21] = v159;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit17ParticipantAvatarVAA12_FrameLayoutVG_ACyAA6SpacerVAHGAA6IDViewVyAA6VStackVyAA9TupleViewVyAA4TextVSg_ACyAtA15_BackdropEffectVyAA0O0PAAE12_colorMatrixyQrAA06_ColorT0VFQOyAA01_qR11PlaceholderV_Qo_GGSgtGGAD18RemoteControlStateOGAlCyAA012_ConditionalD0VyA13_yAyAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyATG_AD38ScreenSharingOverlayPlatterButtonStyleVQo_AA05EmptyO0VGAA6ZStackVyACyAD17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA0X4SizeOGGGGAA05_FlexiJ0VGtMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v154, v157 + v160[16], &_s7SwiftUI6IDViewVyAA6VStackVyAA9TupleViewVyAA4TextVSg_AA15ModifiedContentVyAiA15_BackdropEffectVyAA0F0PAAE12_colorMatrixyQrAA06_ColorM0VFQOyAA01_jK11PlaceholderV_Qo_GGSgtGG15ConversationKit18RemoteControlStateOGMd);
  v161 = v157 + v160[20];
  *v161 = 0;
  v161[8] = v207;
  *(v161 + 2) = v193;
  v161[24] = v208;
  *(v161 + 4) = v192;
  v161[40] = v209;
  v162 = v175;
  *(v161 + 6) = v185;
  *(v161 + 7) = v162;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v155, v157 + v160[24], &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatteriH0VQo_AA05EmptyF0VGAA6ZStackVyACyAO17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGGAA16_FlexFrameLayoutVGMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v210, v211, &_s7SwiftUI15ModifiedContentVy15ConversationKit17ParticipantAvatarVAA12_FrameLayoutVGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v150, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatteriH0VQo_AA05EmptyF0VGAA6ZStackVyACyAO17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGGAA16_FlexFrameLayoutVGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v203, &_s7SwiftUI6IDViewVyAA6VStackVyAA9TupleViewVyAA4TextVSg_AA15ModifiedContentVyAiA15_BackdropEffectVyAA0F0PAAE12_colorMatrixyQrAA06_ColorM0VFQOyAA01_jK11PlaceholderV_Qo_GGSgtGG15ConversationKit18RemoteControlStateOGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v155, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonH0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatteriH0VQo_AA05EmptyF0VGAA6ZStackVyACyAO17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGGGAA16_FlexFrameLayoutVGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v154, &_s7SwiftUI6IDViewVyAA6VStackVyAA9TupleViewVyAA4TextVSg_AA15ModifiedContentVyAiA15_BackdropEffectVyAA0F0PAAE12_colorMatrixyQrAA06_ColorM0VFQOyAA01_jK11PlaceholderV_Qo_GGSgtGG15ConversationKit18RemoteControlStateOGMd);
  v213 = *v222;
  v211[0] = v200;
  v211[1] = v156;
  v211[2] = v199;
  v211[3] = v198;
  v211[4] = v197;
  v211[5] = v196;
  v211[6] = v195;
  v212 = 1;
  v214 = *&v222[2];
  *v215 = *&v222[4];
  *&v215[15] = *(&v222[5] + 7);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v211, &_s7SwiftUI15ModifiedContentVy15ConversationKit17ParticipantAvatarVAA12_FrameLayoutVGMd);
}

uint64_t closure #1 in closure #1 in ScreenSharingSpectatorModalOverlay.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v103 = a2;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA15_BackdropEffectVyAA4ViewPAAE12_colorMatrixyQrAA06_ColorJ0VFQOyAA01_fG11PlaceholderV_Qo_GGMd);
  MEMORY[0x1EEE9AC00](v100);
  v97 = &v85 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA15_BackdropEffectVyAA4ViewPAAE12_colorMatrixyQrAA06_ColorJ0VFQOyAA01_fG11PlaceholderV_Qo_GGSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v102 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v101 = &v85 - v7;
  v8 = type metadata accessor for UserInterfaceSizeClass();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v94 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
  MEMORY[0x1EEE9AC00](v104);
  v95 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v85 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v96 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v85 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v85 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v85 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v85 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v85 - v30;
  v32 = ScreenSharingSpectatorModalOverlay.title.getter();
  v34 = MEMORY[0x1E697FF40];
  v105 = v9;
  v98 = v19;
  v99 = v22;
  if (!v33)
  {
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    goto LABEL_13;
  }

  v106 = v32;
  v107 = v33;
  lazy protocol witness table accessor for type String and conformance String();
  v91 = Text.init<A>(_:)();
  v90 = v35;
  LODWORD(v89) = v36;
  v92 = v37;
  v93 = a1;
  ScreenSharingSpectatorModalOverlay.horizontalSizeClass.getter(v91);
  (*(v9 + 104))(v28, *v34, v8);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v8);
  v38 = *(v104 + 48);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v31, v14, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v28, &v14[v38], &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  if (__swift_getEnumTagSinglePayload(v14, 1, v8) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v28, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v31, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    if (__swift_getEnumTagSinglePayload(&v14[v38], 1, v8) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
LABEL_11:
      static Font.title2.getter();
      static Font.Weight.semibold.getter();
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  outlined init with copy of IDView<AvatarStackView, [UUID]>(v14, v25, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  if (__swift_getEnumTagSinglePayload(&v14[v38], 1, v8) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v28, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v31, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    (*(v105 + 8))(v25, v8);
LABEL_8:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
    goto LABEL_9;
  }

  v43 = v105;
  v44 = v94;
  (*(v105 + 32))(v94, &v14[v38], v8);
  lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, MEMORY[0x1E697FF50]);
  LODWORD(v88) = dispatch thunk of static Equatable.== infix(_:_:)();
  v45 = *(v43 + 8);
  v45(v44, v8);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v28, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v31, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  v45(v25, v8);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  if (v88)
  {
    goto LABEL_11;
  }

LABEL_9:
  static Font.title3.getter();
  static Font.Weight.medium.getter();
LABEL_12:
  Font.weight(_:)();

  v46 = v89;
  v47 = v91;
  v48 = v90;
  v39 = Text.font(_:)();
  v40 = v49;
  v51 = v50;
  v42 = v52;

  outlined consume of Text.Storage(v47, v48, v46 & 1);

  v41 = v51 & 1;
  outlined copy of Text.Storage(v39, v40, v51 & 1);

  v9 = v105;
  v19 = v98;
  v22 = v99;
LABEL_13:
  v53 = ScreenSharingSpectatorModalOverlay.statusText.getter();
  if (v54)
  {
    v93 = v39;
    v106 = v53;
    v107 = v54;
    lazy protocol witness table accessor for type String and conformance String();
    v91 = Text.init<A>(_:)();
    v89 = v55;
    v87 = v56;
    v92 = v57;
    ScreenSharingSpectatorModalOverlay.horizontalSizeClass.getter(v91);
    (*(v9 + 104))(v19, *MEMORY[0x1E697FF40], v8);
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v8);
    v58 = v22;
    v59 = *(v104 + 48);
    v60 = v22;
    v61 = v95;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v60, v95, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v19, v61 + v59, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v61, 1, v8);
    v90 = v40;
    v88 = v42;
    v86 = v41;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v58, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      if (__swift_getEnumTagSinglePayload(v61 + v59, 1, v8) == 1)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v61, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
        v63 = v100;
LABEL_23:
        static Font.body.getter();
        goto LABEL_24;
      }
    }

    else
    {
      outlined init with copy of IDView<AvatarStackView, [UUID]>(v61, v96, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      if (__swift_getEnumTagSinglePayload(v61 + v59, 1, v8) != 1)
      {
        v66 = v105;
        v67 = v94;
        (*(v105 + 32))(v94, v61 + v59, v8);
        lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, MEMORY[0x1E697FF50]);
        v68 = v96;
        LODWORD(v104) = dispatch thunk of static Equatable.== infix(_:_:)();
        v69 = *(v66 + 8);
        v69(v67, v8);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v98, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v99, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
        v69(v68, v8);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v61, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
        v63 = v100;
        if (v104)
        {
          goto LABEL_23;
        }

LABEL_21:
        static Font.subheadline.getter();
        static Font.Weight.regular.getter();
        Font.weight(_:)();

LABEL_24:
        v70 = v87;
        v71 = v91;
        v72 = v89;
        v73 = Text.font(_:)();
        v75 = v74;
        v77 = v76;
        v79 = v78;

        outlined consume of Text.Storage(v71, v72, v70 & 1);

        static _ColorMatrix.secondaryText.getter(&v106);
        v80 = v97;
        View._colorMatrix(_:)();
        *v80 = v73;
        *(v80 + 8) = v75;
        *(v80 + 16) = v77 & 1;
        *(v80 + 24) = v79;
        v65 = v101;
        outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v80, v101, &_s7SwiftUI15ModifiedContentVyAA4TextVAA15_BackdropEffectVyAA4ViewPAAE12_colorMatrixyQrAA06_ColorJ0VFQOyAA01_fG11PlaceholderV_Qo_GGMd);
        v64 = 0;
        v39 = v93;
        v40 = v90;
        v42 = v88;
        v41 = v86;
        goto LABEL_25;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v98, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v99, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      (*(v105 + 8))(v96, v8);
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v61, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
    v63 = v100;
    goto LABEL_21;
  }

  v64 = 1;
  v63 = v100;
  v65 = v101;
LABEL_25:
  __swift_storeEnumTagSinglePayload(v65, v64, 1, v63);
  v81 = v102;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v65, v102, &_s7SwiftUI15ModifiedContentVyAA4TextVAA15_BackdropEffectVyAA4ViewPAAE12_colorMatrixyQrAA06_ColorJ0VFQOyAA01_fG11PlaceholderV_Qo_GGSgMd);
  v82 = v103;
  *v103 = v39;
  v82[1] = v40;
  v82[2] = v41;
  v82[3] = v42;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextVSg_AA15ModifiedContentVyAcA15_BackdropEffectVyAA4ViewPAAE12_colorMatrixyQrAA06_ColorJ0VFQOyAA01_fG11PlaceholderV_Qo_GGSgtMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v81, v82 + *(v83 + 48), &_s7SwiftUI15ModifiedContentVyAA4TextVAA15_BackdropEffectVyAA4ViewPAAE12_colorMatrixyQrAA06_ColorJ0VFQOyAA01_fG11PlaceholderV_Qo_GGSgMd);
  outlined copy of Text?(v39, v40, v41, v42);
  outlined consume of Text?(v39, v40, v41, v42);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v65, &_s7SwiftUI15ModifiedContentVyAA4TextVAA15_BackdropEffectVyAA4ViewPAAE12_colorMatrixyQrAA06_ColorJ0VFQOyAA01_fG11PlaceholderV_Qo_GGSgMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v81, &_s7SwiftUI15ModifiedContentVyAA4TextVAA15_BackdropEffectVyAA4ViewPAAE12_colorMatrixyQrAA06_ColorJ0VFQOyAA01_fG11PlaceholderV_Qo_GGSgMd);
  return outlined consume of Text?(v39, v40, v41, v42);
}

uint64_t ScreenSharingSpectatorModalOverlay.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  OUTLINED_FUNCTION_12_31();
  swift_storeEnumTagMultiPayload();
  v2 = a1 + *(type metadata accessor for ScreenSharingSpectatorModalOverlay(0) + 20);
  type metadata accessor for ScreenSharingSpectatorViewModel();
  OUTLINED_FUNCTION_6_44();
  lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass(v3, v4);
  result = Environment.init<A>(_:)();
  *v2 = result;
  v2[8] = v6 & 1;
  return result;
}

uint64_t ScreenSharingOverlayPlatterButtonStyle.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  OUTLINED_FUNCTION_12_31();

  return swift_storeEnumTagMultiPayload();
}

uint64_t ScreenSharingSpectatorModalOverlay.init(horizontalSizeClass:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(a1, a2, &_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMd);
  v3 = a2 + *(type metadata accessor for ScreenSharingSpectatorModalOverlay(0) + 20);
  type metadata accessor for ScreenSharingSpectatorViewModel();
  OUTLINED_FUNCTION_6_44();
  lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass(v4, v5);
  result = Environment.init<A>(_:)();
  *v3 = result;
  *(v3 + 8) = v7 & 1;
  return result;
}

uint64_t key path setter for EnvironmentValues.controlSize : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for ControlSize();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return MEMORY[0x1BFB1E760](v5);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_BackdropEffectPlaceholder, _BlurEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_BackdropEffectPlaceholder, _BlurEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_BackdropEffectPlaceholder, _BlurEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA26_BackdropEffectPlaceholderVAA05_BlurF0VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_BackdropEffectPlaceholder, _BlurEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t outlined copy of RemoteControlState(unint64_t result)
{
  switch(result >> 61)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:

      break;
    default:
      return result;
  }

  return result;
}

unint64_t outlined consume of RemoteControlState(unint64_t result)
{
  switch(result >> 61)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for ActivityIndicator()
{
  type metadata accessor for Environment<ControlSize>(319, &lazy cache variable for type metadata for Environment<ControlSize>, MEMORY[0x1E697DC30]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata completion function for ScreenSharingOverlayPlatterButtonStyle()
{
  type metadata accessor for Environment<UserInterfaceSizeClass?>();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata completion function for ScreenSharingSpectatorModalOverlay()
{
  type metadata accessor for Environment<UserInterfaceSizeClass?>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<ControlSize>(319, &lazy cache variable for type metadata for Environment<ScreenSharingSpectatorViewModel>, type metadata accessor for ScreenSharingSpectatorViewModel);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Environment<ControlSize>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<PlaceholderContentView<ModalOverlayTransition>, _OpacityEffect>, _BlurEffect>, _ScaleEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<PlaceholderContentView<ModalOverlayTransition>, _OpacityEffect>, _BlurEffect>, _ScaleEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<PlaceholderContentView<ModalOverlayTransition>, _OpacityEffect>, _BlurEffect>, _ScaleEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA011PlaceholderD4ViewVy15ConversationKit22ModalOverlayTransitionVGAA14_OpacityEffectVGAA05_BlurM0VGAA06_ScaleM0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PlaceholderContentView<ModalOverlayTransition>, _OpacityEffect>, _BlurEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<PlaceholderContentView<ModalOverlayTransition>, _OpacityEffect>, _BlurEffect>, _ScaleEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PlaceholderContentView<ModalOverlayTransition>, _OpacityEffect>, _BlurEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PlaceholderContentView<ModalOverlayTransition>, _OpacityEffect>, _BlurEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PlaceholderContentView<ModalOverlayTransition>, _OpacityEffect>, _BlurEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA011PlaceholderD4ViewVy15ConversationKit22ModalOverlayTransitionVGAA14_OpacityEffectVGAA05_BlurM0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<PlaceholderContentView<ModalOverlayTransition>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PlaceholderContentView<ModalOverlayTransition>, _OpacityEffect>, _BlurEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PlaceholderContentView<ModalOverlayTransition>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<ModalOverlayTransition>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<ModalOverlayTransition>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA011PlaceholderD4ViewVy15ConversationKit22ModalOverlayTransitionVGAA14_OpacityEffectVGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type PlaceholderContentView<ModalOverlayTransition> and conformance PlaceholderContentView<A>, &_s7SwiftUI22PlaceholderContentViewVy15ConversationKit22ModalOverlayTransitionVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<ModalOverlayTransition>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>, _BackgroundModifier<ModifiedContent<Capsule, _BackdropEffect<<<opaque return type of View._colorMatrix(_:)>>.0>>>>, _ContentShapeModifier<Capsule>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>, _BackgroundModifier<ModifiedContent<Capsule, _BackdropEffect<<<opaque return type of View._colorMatrix(_:)>>.0>>>>, _ContentShapeModifier<Capsule>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>, _BackgroundModifier<ModifiedContent<Capsule, _BackdropEffect<<<opaque return type of View._colorMatrix(_:)>>.0>>>>, _ContentShapeModifier<Capsule>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGAA011_BackgroundL0VyACyAA7CapsuleVAA09_BackdropO0VyAA4ViewPAAE12_colorMatrixyQrAA06_ColorX0VFQOyACyAA01_uO11PlaceholderVAA05_BlurO0VG_Qo_GGGGAA01_d5ShapeL0VyAXGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>, _BackgroundModifier<ModifiedContent<Capsule, _BackdropEffect<<<opaque return type of View._colorMatrix(_:)>>.0>>>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ContentShapeModifier<Capsule> and conformance _ContentShapeModifier<A>, &_s7SwiftUI21_ContentShapeModifierVyAA7CapsuleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>, _BackgroundModifier<ModifiedContent<Capsule, _BackdropEffect<<<opaque return type of View._colorMatrix(_:)>>.0>>>>, _ContentShapeModifier<Capsule>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>, _BackgroundModifier<ModifiedContent<Capsule, _BackdropEffect<<<opaque return type of View._colorMatrix(_:)>>.0>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>, _BackgroundModifier<ModifiedContent<Capsule, _BackdropEffect<<<opaque return type of View._colorMatrix(_:)>>.0>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>, _BackgroundModifier<ModifiedContent<Capsule, _BackdropEffect<<<opaque return type of View._colorMatrix(_:)>>.0>>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGAA011_BackgroundL0VyACyAA7CapsuleVAA09_BackdropO0VyAA4ViewPAAE12_colorMatrixyQrAA06_ColorX0VFQOyACyAA01_uO11PlaceholderVAA05_BlurO0VG_Qo_GGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _BackgroundModifier<ModifiedContent<Capsule, _BackdropEffect<<<opaque return type of View._colorMatrix(_:)>>.0>>> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA7CapsuleVAA15_BackdropEffectVyAA4ViewPAAE12_colorMatrixyQrAA06_ColorL0VFQOyAEyAA01_hI11PlaceholderVAA05_BlurI0VG_Qo_GGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>, _BackgroundModifier<ModifiedContent<Capsule, _BackdropEffect<<<opaque return type of View._colorMatrix(_:)>>.0>>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_OpacityEffectVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass(&lazy protocol witness table cache variable for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label, MEMORY[0x1E697C8D0]);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ParticipantAvatar, _FrameLayout>, ModifiedContent<Spacer, _FrameLayout>, IDView<VStack<TupleView<(Text?, ModifiedContent<Text, _BackdropEffect<<<opaque return type of View._colorMatrix(_:)>>.0>>?)>>, RemoteControlState>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<_ConditionalContent<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, EmptyView>, ZStack<ModifiedContent<ActivityIndicator, _EnvironmentKeyWritingModifier<ControlSize>>>>, _FlexFrameLayout>)>>, _FlexFrameLayout>, _AnimationModifier<RemoteControlState>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ParticipantAvatar, _FrameLayout>, ModifiedContent<Spacer, _FrameLayout>, IDView<VStack<TupleView<(Text?, ModifiedContent<Text, _BackdropEffect<<<opaque return type of View._colorMatrix(_:)>>.0>>?)>>, RemoteControlState>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<_ConditionalContent<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, EmptyView>, ZStack<ModifiedContent<ActivityIndicator, _EnvironmentKeyWritingModifier<ControlSize>>>>, _FlexFrameLayout>)>>, _FlexFrameLayout>, _AnimationModifier<RemoteControlState>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ParticipantAvatar, _FrameLayout>, ModifiedContent<Spacer, _FrameLayout>, IDView<VStack<TupleView<(Text?, ModifiedContent<Text, _BackdropEffect<<<opaque return type of View._colorMatrix(_:)>>.0>>?)>>, RemoteControlState>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<_ConditionalContent<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, EmptyView>, ZStack<ModifiedContent<ActivityIndicator, _EnvironmentKeyWritingModifier<ControlSize>>>>, _FlexFrameLayout>)>>, _FlexFrameLayout>, _AnimationModifier<RemoteControlState>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACy15ConversationKit17ParticipantAvatarVAA12_FrameLayoutVG_ACyAA6SpacerVALGAA6IDViewVyAEyAGyAA4TextVSg_ACyAtA15_BackdropEffectVyAA0G0PAAE12_colorMatrixyQrAA06_ColorT0VFQOyAA01_qR11PlaceholderV_Qo_GGSgtGGAH18RemoteControlStateOGApCyAA012_ConditionalD0VyA13_yAyAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyATG_AH38ScreenSharingOverlayPlatterButtonStyleVQo_AA05EmptyG0VGAA6ZStackVyACyAH17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA0X4SizeOGGGGAA05_FlexlM0VGtGGA38_GAA18_AnimationModifierVyA10_GGMd);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ParticipantAvatar, _FrameLayout>, ModifiedContent<Spacer, _FrameLayout>, IDView<VStack<TupleView<(Text?, ModifiedContent<Text, _BackdropEffect<<<opaque return type of View._colorMatrix(_:)>>.0>>?)>>, RemoteControlState>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<_ConditionalContent<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, EmptyView>, ZStack<ModifiedContent<ActivityIndicator, _EnvironmentKeyWritingModifier<ControlSize>>>>, _FlexFrameLayout>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _AnimationModifier<RemoteControlState> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVy15ConversationKit18RemoteControlStateOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ParticipantAvatar, _FrameLayout>, ModifiedContent<Spacer, _FrameLayout>, IDView<VStack<TupleView<(Text?, ModifiedContent<Text, _BackdropEffect<<<opaque return type of View._colorMatrix(_:)>>.0>>?)>>, RemoteControlState>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<_ConditionalContent<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, EmptyView>, ZStack<ModifiedContent<ActivityIndicator, _EnvironmentKeyWritingModifier<ControlSize>>>>, _FlexFrameLayout>)>>, _FlexFrameLayout>, _AnimationModifier<RemoteControlState>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ParticipantAvatar, _FrameLayout>, ModifiedContent<Spacer, _FrameLayout>, IDView<VStack<TupleView<(Text?, ModifiedContent<Text, _BackdropEffect<<<opaque return type of View._colorMatrix(_:)>>.0>>?)>>, RemoteControlState>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<_ConditionalContent<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, EmptyView>, ZStack<ModifiedContent<ActivityIndicator, _EnvironmentKeyWritingModifier<ControlSize>>>>, _FlexFrameLayout>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ParticipantAvatar, _FrameLayout>, ModifiedContent<Spacer, _FrameLayout>, IDView<VStack<TupleView<(Text?, ModifiedContent<Text, _BackdropEffect<<<opaque return type of View._colorMatrix(_:)>>.0>>?)>>, RemoteControlState>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<_ConditionalContent<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, EmptyView>, ZStack<ModifiedContent<ActivityIndicator, _EnvironmentKeyWritingModifier<ControlSize>>>>, _FlexFrameLayout>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ParticipantAvatar, _FrameLayout>, ModifiedContent<Spacer, _FrameLayout>, IDView<VStack<TupleView<(Text?, ModifiedContent<Text, _BackdropEffect<<<opaque return type of View._colorMatrix(_:)>>.0>>?)>>, RemoteControlState>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<_ConditionalContent<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, EmptyView>, ZStack<ModifiedContent<ActivityIndicator, _EnvironmentKeyWritingModifier<ControlSize>>>>, _FlexFrameLayout>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACy15ConversationKit17ParticipantAvatarVAA12_FrameLayoutVG_ACyAA6SpacerVALGAA6IDViewVyAEyAGyAA4TextVSg_ACyAtA15_BackdropEffectVyAA0G0PAAE12_colorMatrixyQrAA06_ColorT0VFQOyAA01_qR11PlaceholderV_Qo_GGSgtGGAH18RemoteControlStateOGApCyAA012_ConditionalD0VyA13_yAyAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyATG_AH38ScreenSharingOverlayPlatterButtonStyleVQo_AA05EmptyG0VGAA6ZStackVyACyAH17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA0X4SizeOGGGGAA05_FlexlM0VGtGGA38_GMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ParticipantAvatar, _FrameLayout>, ModifiedContent<Spacer, _FrameLayout>, IDView<VStack<TupleView<(Text?, ModifiedContent<Text, _BackdropEffect<<<opaque return type of View._colorMatrix(_:)>>.0>>?)>>, RemoteControlState>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<_ConditionalContent<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, EmptyView>, ZStack<ModifiedContent<ActivityIndicator, _EnvironmentKeyWritingModifier<ControlSize>>>>, _FlexFrameLayout>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVy15ConversationKit17ParticipantAvatarVAA12_FrameLayoutVG_AGyAA6SpacerVALGAA6IDViewVyACyAEyAA4TextVSg_AGyAtA15_BackdropEffectVyAA0E0PAAE12_colorMatrixyQrAA06_ColorT0VFQOyAA01_qR11PlaceholderV_Qo_GGSgtGGAH18RemoteControlStateOGApGyAA012_ConditionalG0VyA13_yAyAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyATG_AH38ScreenSharingOverlayPlatterButtonStyleVQo_AA05EmptyE0VGAA6ZStackVyAGyAH17ActivityIndicatorVAA30_EnvironmentKeyWritingModifierVyAA0X4SizeOGGGGAA05_FlexlM0VGtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ParticipantAvatar, _FrameLayout>, ModifiedContent<Spacer, _FrameLayout>, IDView<VStack<TupleView<(Text?, ModifiedContent<Text, _BackdropEffect<<<opaque return type of View._colorMatrix(_:)>>.0>>?)>>, RemoteControlState>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<_ConditionalContent<_ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, EmptyView>, ZStack<ModifiedContent<ActivityIndicator, _EnvironmentKeyWritingModifier<ControlSize>>>>, _FlexFrameLayout>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, EmptyView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, EmptyView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, EmptyView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA4TextVG_15ConversationKit027ScreenSharingOverlayPlatterhG0VQo_AA05EmptyE0VGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
    type metadata accessor for ScreenSharingOverlayPlatterButtonStyle(255);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
    lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass(&lazy protocol witness table cache variable for type ScreenSharingOverlayPlatterButtonStyle and conformance ScreenSharingOverlayPlatterButtonStyle, type metadata accessor for ScreenSharingOverlayPlatterButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, EmptyView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of ScreenSharingSpectatorModalOverlay(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreenSharingSpectatorModalOverlay(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in ScreenSharingSpectatorModalOverlay.statusView.getter()
{
  v1 = *(type metadata accessor for ScreenSharingSpectatorModalOverlay(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in ScreenSharingSpectatorModalOverlay.statusView.getter(v2);
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

uint64_t outlined init with copy of ScreenSharingSpectatorModalOverlay(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_46();
  v5(v4);
  return a2;
}

id @nonobjc NSMapTable.__allocating_init(keyOptions:valueOptions:)(uint64_t a1, uint64_t a2)
{
  v2 = [swift_getObjCClassFromMetadata() mapTableWithKeyOptions:a1 valueOptions:a2];

  return v2;
}

uint64_t OSAllocatedUnfairLock.init(uncheckedState:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  type metadata accessor for ManagedBuffer();
  v4 = static ManagedBuffer.create(minimumCapacity:makingHeaderWith:)();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t AudioCallManager.CallsCache.__deallocating_deinit()
{
  AudioCallManager.CallsCache.deinit();

  return swift_deallocClassInstance();
}

uint64_t AudioCallManager.CallsCache.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10NSMapTableCMd);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSString);
  v3 = @nonobjc NSMapTable.__allocating_init(keyOptions:valueOptions:)(0, 5);
  *(v0 + 16) = OSAllocatedUnfairLock.init(uncheckedState:)(&v3, v1);
  return v0;
}

uint64_t AudioCallManager.foregroundRingingCall.setter(char a1)
{
  result = AudioCallManager.callResolver.getter();
  if (result)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    (*(v4 + 16))(a1 & 1, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t AudioCallManager.foregroundRingingCall.getter()
{
  result = AudioCallManager.callResolver.getter();
  if (result)
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    LOBYTE(v2) = (*(v2 + 8))(ObjectType, v2);
    swift_unknownObjectRelease();
    return v2 & 1;
  }

  return result;
}

uint64_t (*AudioCallManager.foregroundRingingCall.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = AudioCallManager.foregroundRingingCall.getter() & 1;
  return AudioCallManager.foregroundRingingCall.modify;
}

uint64_t AudioCallManager.isICSInBackground.didset()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - v2;
  v4 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in AudioCallManager.isICSInBackground.didset()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in CallRecordingService.stopRecording(call:completion:);

  return AudioCallManager.resolveAndPresent()();
}

uint64_t AudioCallManager.isICSInBackground.setter(char a1)
{
  OUTLINED_FUNCTION_6_0();
  *(v1 + 32) = a1;
  return AudioCallManager.isICSInBackground.didset();
}

uint64_t (*AudioCallManager.isICSInBackground.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return AudioCallManager.isICSInBackground.modify;
}

uint64_t AudioCallManager.isICSInBackground.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return AudioCallManager.isICSInBackground.didset();
  }

  return result;
}

uint64_t AudioCallManager.isWatchedAppInBackground.setter(char a1)
{
  result = OUTLINED_FUNCTION_6_0();
  *(v1 + 33) = a1;
  return result;
}

uint64_t key path setter for AudioCallManager.callCoordinator : <A>AudioCallManager<A>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  return AudioCallManager.callCoordinator.setter(v2, v1);
}

uint64_t AudioCallManager.callCoordinator.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_0();
  *(v2 + 48) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t AudioCallManager.__allocating_init(withCallCoordinator:andPublisher:resolvingCallsWith:presentingCallsWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  AudioCallManager.init(withCallCoordinator:andPublisher:resolvingCallsWith:presentingCallsWith:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t AudioCallManager.init(withCallCoordinator:andPublisher:resolvingCallsWith:presentingCallsWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v10 = *(*v7 + 80);
  v11 = *(*v7 + 88);
  v12 = *(*v7 + 96);
  v13 = *(*v7 + 104);
  type metadata accessor for AudioCallManager.CallsCache();
  *(v7 + 16) = AudioCallManager.CallsCache.__allocating_init()();
  *(v7 + 24) = 0;
  *(v7 + 32) = 1;
  *(v7 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 80) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for ProcessWatcherStream();
  swift_allocObject();
  *(v7 + 88) = ProcessWatcherStream.init()();
  *(v7 + 96) = 0;
  swift_beginAccess();
  *(v7 + 48) = a2;
  swift_unknownObjectWeakAssign();
  *(v7 + 64) = a5;
  swift_unknownObjectWeakAssign();
  *(v7 + 80) = a7;
  swift_unknownObjectWeakAssign();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v10;
  v15[3] = v11;
  v15[4] = v12;
  v15[5] = v13;
  v15[6] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCySo6TUCallCs5NeverOGMd);
  lazy protocol witness table accessor for type PassthroughSubject<TUCall, Never> and conformance PassthroughSubject<A, B>();
  v16 = Publisher<>.sink(receiveValue:)();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *(v8 + 24) = v16;

  return v8;
}

uint64_t type metadata accessor for ProcessWatcherStream()
{
  result = type metadata singleton initialization cache for ProcessWatcherStream;
  if (!type metadata singleton initialization cache for ProcessWatcherStream)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AudioCallManager.watchProcessForCall(_:)()
{
  v36 = *v0;
  v1 = v36;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v38 = &v34 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySbGSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySbGMd);
  OUTLINED_FUNCTION_1();
  v37 = v8;
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v39 = &v34 - v14;
  v15 = *(v1 + 88);
  v16 = *(v15 + 208);
  v17 = *(v1 + 80);
  if (v16(v17, v15) == 6 || v16(v17, v15) == 6)
  {

    return AudioCallManager.processUpdateTask.setter(0);
  }

  else
  {
    v19 = (*(v15 + 184))(v17, v15);
    v20 = [v19 bundleIdentifier];

    if (v20)
    {
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      ProcessWatcherStream.watchProcessForBundleIdentifier(_:)(v21, v23, v6);
      swift_bridgeObjectRelease_n();
      __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);

      if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
      {
        v24 = v37;
        v25 = *(v37 + 32);
        v34 = v37 + 32;
        v35 = v25;
        v25(v39, v6, v7);
        v26 = type metadata accessor for TaskPriority();
        __swift_storeEnumTagSinglePayload(v38, 1, 1, v26);
        v27 = swift_allocObject();
        swift_weakInit();
        (*(v24 + 16))(v13, v39, v7);
        type metadata accessor for MainActor();

        v28 = static MainActor.shared.getter();
        v29 = (*(v24 + 80) + 64) & ~*(v24 + 80);
        v30 = swift_allocObject();
        v31 = MEMORY[0x1E69E85E0];
        *(v30 + 2) = v28;
        *(v30 + 3) = v31;
        *(v30 + 4) = v17;
        *(v30 + 5) = v15;
        v32 = v36;
        *(v30 + 6) = *(v36 + 96);
        *(v30 + 7) = *(v32 + 104);
        v35(&v30[v29], v13, v7);
        *&v30[(v10 + v29 + 7) & 0xFFFFFFFFFFFFFFF8] = v27;

        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
        AudioCallManager.processUpdateTask.setter(v33);
        return (*(v37 + 8))(v39, v7);
      }
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
    }

    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_sScSySbGSgMd);
  }
}

uint64_t closure #1 in AudioCallManager.watchProcessForCall(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVySb_GMd);
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = type metadata accessor for MainActor();
  v5[17] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[18] = v8;
  v5[19] = v7;

  return MEMORY[0x1EEE6DFA0](closure #1 in AudioCallManager.watchProcessForCall(_:), v8, v7);
}

uint64_t closure #1 in AudioCallManager.watchProcessForCall(_:)()
{
  OUTLINED_FUNCTION_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySbGMd);
  AsyncStream.makeAsyncIterator()();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_0();
  v1 = static MainActor.shared.getter();
  *(v0 + 160) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v0 + 168) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_0_68(v2);
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v0 + 192, v1, v4);
}

{
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;

  v4 = *(v1 + 152);
  v5 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](closure #1 in AudioCallManager.watchProcessForCall(_:), v5, v4);
}

{
  v1 = *(v0 + 192);
  if (v1 == 2)
  {
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));

    OUTLINED_FUNCTION_13();

    return v2();
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.conversationKit);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = v1 & 1;
      _os_log_impl(&dword_1BBC58000, v5, v6, "ProcessWatcherStream processUpdate %{BOOL}d", v7, 8u);
      MEMORY[0x1BFB23DF0](v7, -1, -1);
    }

    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v9 = (*(*Strong + 280))(Strong);
    }

    else
    {
      v9 = 0;
    }

    v10 = swift_weakLoadStrong();
    if (v10)
    {
      (*(*v10 + 288))((v1 & 1) == 0);
    }

    if (((v9 ^ v1) & 1) != 0 || (v11 = swift_weakLoadStrong(), (*(v0 + 176) = v11) == 0))
    {
      v13 = static MainActor.shared.getter();
      *(v0 + 160) = v13;
      swift_task_alloc();
      OUTLINED_FUNCTION_14_4();
      *(v0 + 168) = v14;
      *v14 = v15;
      OUTLINED_FUNCTION_0_68();
      v16 = MEMORY[0x1E69E85E0];

      return MEMORY[0x1EEE6D9C8](v0 + 192, v13, v16);
    }

    else
    {
      v12 = swift_task_alloc();
      *(v0 + 184) = v12;
      *v12 = v0;
      v12[1] = closure #1 in AudioCallManager.watchProcessForCall(_:);

      return AudioCallManager.resolveAndPresent()();
    }
  }
}

{
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;

  v4 = *(v1 + 152);
  v5 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](closure #1 in AudioCallManager.watchProcessForCall(_:), v5, v4);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = static MainActor.shared.getter();
  *(v0 + 160) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v0 + 168) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_0_68();
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v0 + 192, v1, v4);
}

uint64_t AudioCallManager.deinit()
{

  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 40);
  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 56);
  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 72);

  return v0;
}

uint64_t AudioCallManager.__deallocating_deinit()
{
  AudioCallManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t Call.displayStyle.getter@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = (*(a1 + 208))();
  v4 = 0x3030000010003uLL >> (8 * result);
  if (result >= 7)
  {
    LOBYTE(v4) = 3;
  }

  *a2 = v4;
  return result;
}

Swift::Int DisplayStyle.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](v1);
  return Hasher._finalize()();
}

uint64_t ProcessWatcherStream.watchProcessForBundleIdentifier(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOySb__GMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySbGSgMd);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v32 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - v13;
  v3[3] = a1;
  v3[4] = a2;

  v15 = OBJC_IVAR____TtC15ConversationKitP33_3A0EEB366752F2F4FD7C097A5827E2E220ProcessWatcherStream_currentStream;
  swift_beginAccess();
  outlined init with copy of Participant?(v3 + v15, v14, &_sScSySbGSgMd);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySbGMd);
  if (__swift_getEnumTagSinglePayload(v14, 1, v16) != 1)
  {
    return (*(*(v16 - 8) + 32))(v33, v14, v16);
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_sScSySbGSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySb_GSgMd);
  v17 = swift_allocBox();
  v19 = v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySb_GMd);
  v21 = __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
  MEMORY[0x1EEE9AC00](v21);
  *(&v31 - 2) = v19;
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8650], v6);
  v22 = v33;
  AsyncStream.init(_:bufferingPolicy:_:)();
  v23 = [objc_opt_self() configurationForDefaultMainDisplayMonitor];
  [v23 setNeedsUserInteractivePriority_];
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  *(v25 + 16) = v17;
  *(v25 + 24) = v24;
  aBlock[4] = partial apply for closure #2 in ProcessWatcherStream.watchProcessForBundleIdentifier(_:);
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed FBSDisplayLayoutMonitor, @guaranteed FBSDisplayLayout?, @guaranteed FBSDisplayLayoutTransitionContext?) -> ();
  aBlock[3] = &block_descriptor_18;
  v26 = _Block_copy(aBlock);

  [v23 setTransitionHandler_];
  _Block_release(v26);
  v27 = [objc_opt_self() monitorWithConfiguration_];

  v28 = v3[2];
  v3[2] = v27;

  v29 = v32;
  (*(*(v16 - 8) + 16))(v32, v22, v16);
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v16);
  swift_beginAccess();
  outlined assign with take of Participant?(v29, v3 + v15, &_sScSySbGSgMd);
  swift_endAccess();
}

uint64_t closure #1 in ProcessWatcherStream.watchProcessForBundleIdentifier(_:)(uint64_t a1, uint64_t a2)
{
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a2, &_sScS12ContinuationVySb_GSgMd);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySb_GMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
}

void closure #2 in ProcessWatcherStream.watchProcessForBundleIdentifier(_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySb_GSgMd);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v44 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySb__GMd);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v44 - v17;
  v19 = swift_projectBox();
  v20 = v19;
  if (a2)
  {
    v46 = v19;
    v47 = v16;
    v48 = v9;
    v49 = v13;
    v50 = v12;
    v45 = a2;
    v21 = [v45 elements];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for FBSDisplayLayoutElement);
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = specialized Array.count.getter(v22);
    v24 = 0;
    v25 = &selRef_fillRule;
    v51 = v23;
    while (1)
    {
      if (v23 == v24)
      {
LABEL_26:

        goto LABEL_32;
      }

      if ((v22 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x1BFB22010](v24, v22);
      }

      else
      {
        if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v26 = *(v22 + 8 * v24 + 32);
      }

      v27 = v26;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      if (![v26 v25[149]])
      {

        goto LABEL_24;
      }

      v28 = outlined bridged method (pb) of @objc FBSDisplayLayoutElement.bundleIdentifier.getter(v27);
      v30 = v29;
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (!Strong)
      {
        break;
      }

      v33 = *(Strong + 24);
      v32 = *(Strong + 32);

      if (!v30)
      {
        if (!v32)
        {
LABEL_29:

          goto LABEL_31;
        }

        goto LABEL_23;
      }

      if (!v32)
      {
        goto LABEL_20;
      }

      if (v28 == v33 && v30 == v32)
      {

LABEL_31:

        v23 = v51;
LABEL_32:
        v37 = v46;
        swift_beginAccess();
        v38 = v48;
        outlined init with copy of Participant?(v37, v48, &_sScS12ContinuationVySb_GSgMd);
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySb_GMd);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v38, 1, v39);
        v42 = v49;
        v41 = v50;
        v43 = v47;
        if (EnumTagSinglePayload != 1)
        {
          v53 = v23 != v24;
          AsyncStream.Continuation.yield(_:)();

          (*(v42 + 8))(v43, v41);
          (*(*(v39 - 8) + 8))(v38, v39);
          return;
        }

LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return;
      }

      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v23 = v51;
      v25 = &selRef_fillRule;
      if (v35)
      {
        goto LABEL_26;
      }

LABEL_24:
      ++v24;
    }

    if (!v30)
    {
      goto LABEL_29;
    }

LABEL_20:

LABEL_23:
    v23 = v51;
    v25 = &selRef_fillRule;
    goto LABEL_24;
  }

  swift_beginAccess();
  outlined init with copy of Participant?(v20, v11, &_sScS12ContinuationVySb_GSgMd);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySb_GMd);
  if (__swift_getEnumTagSinglePayload(v11, 1, v36) == 1)
  {
    goto LABEL_38;
  }

  v54 = 0;
  AsyncStream.Continuation.yield(_:)();
  (*(v13 + 8))(v18, v12);
  (*(*(v36 - 8) + 8))(v11, v36);
}

void thunk for @escaping @callee_guaranteed (@guaranteed FBSDisplayLayoutMonitor, @guaranteed FBSDisplayLayout?, @guaranteed FBSDisplayLayoutTransitionContext?) -> ()(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, a3, a4);
}

uint64_t ProcessWatcherStream.deinit()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    [v1 invalidate];
    v2 = *(v0 + 16);
  }

  else
  {
    v2 = 0;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0 + OBJC_IVAR____TtC15ConversationKitP33_3A0EEB366752F2F4FD7C097A5827E2E220ProcessWatcherStream_currentStream, &_sScSySbGSgMd);
  return v0;
}

uint64_t ProcessWatcherStream.__deallocating_deinit()
{
  ProcessWatcherStream.deinit();

  return swift_deallocClassInstance();
}

void *ProcessWatcherStream.init()()
{
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = 0;
  v1 = OBJC_IVAR____TtC15ConversationKitP33_3A0EEB366752F2F4FD7C097A5827E2E220ProcessWatcherStream_currentStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySbGMd);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  return v0;
}

unint64_t lazy protocol witness table accessor for type PassthroughSubject<TUCall, Never> and conformance PassthroughSubject<A, B>()
{
  result = lazy protocol witness table cache variable for type PassthroughSubject<TUCall, Never> and conformance PassthroughSubject<A, B>;
  if (!lazy protocol witness table cache variable for type PassthroughSubject<TUCall, Never> and conformance PassthroughSubject<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine18PassthroughSubjectCySo6TUCallCs5NeverOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PassthroughSubject<TUCall, Never> and conformance PassthroughSubject<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisplayStyle and conformance DisplayStyle()
{
  result = lazy protocol witness table cache variable for type DisplayStyle and conformance DisplayStyle;
  if (!lazy protocol witness table cache variable for type DisplayStyle and conformance DisplayStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayStyle and conformance DisplayStyle);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DisplayStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CallsPresentation(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for CallsPresentation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void type metadata completion function for ProcessWatcherStream()
{
  type metadata accessor for AsyncStream<Bool>?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for AsyncStream<Bool>?()
{
  if (!lazy cache variable for type metadata for AsyncStream<Bool>?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScSySbGMd);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AsyncStream<Bool>?);
    }
  }
}

uint64_t closure #1 in OSAllocatedUnfairLock.init(uncheckedState:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a1 + ((*(v2 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v2 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2);
}

uint64_t outlined bridged method (pb) of @objc FBSDisplayLayoutElement.bundleIdentifier.getter(void *a1)
{
  v1 = [a1 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t partial apply for closure #1 in AudioCallManager.watchProcessForCall(_:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySbGMd) - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = partial apply for closure #1 in CallRecordingService.stopRecording(call:completion:);

  return closure #1 in AudioCallManager.watchProcessForCall(_:)(a1, v7, v8, v1 + v6, v9);
}

uint64_t partial apply for closure #1 in AudioCallManager.isICSInBackground.didset()
{
  OUTLINED_FUNCTION_9();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);

  return closure #1 in AudioCallManager.isICSInBackground.didset();
}

uint64_t key path getter for InCallControlsTitleCell.delegate : InCallControlsTitleCell@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit23InCallControlsTitleCell_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for InCallControlsTitleCell.delegate : InCallControlsTitleCell(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15ConversationKit23InCallControlsTitleCell_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t InCallControlsTitleCell.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit23InCallControlsTitleCell_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*InCallControlsTitleCell.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit23InCallControlsTitleCell_delegate;
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

id InCallControlsTitleCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id InCallControlsTitleCell.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC15ConversationKit23InCallControlsTitleCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15ConversationKit23InCallControlsTitleCell_avatarHeaderViewController) = 0;
  v2 = OBJC_IVAR____TtC15ConversationKit23InCallControlsTitleCell_avatarHeaderVCWrapper;
  *(v0 + v2) = [objc_allocWithZone(CNKGroupIdentityHeaderSNaPWrapper) init];
  v3 = OUTLINED_FUNCTION_18_1();
  v6 = objc_msgSendSuper2(v4, v5, v3, v0, ObjectType);
  [v6 setAutomaticallyUpdatesBackgroundConfiguration_];
  return v6;
}

id InCallControlsTitleCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void InCallControlsTitleCell.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit23InCallControlsTitleCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15ConversationKit23InCallControlsTitleCell_avatarHeaderViewController) = 0;
  v1 = OBJC_IVAR____TtC15ConversationKit23InCallControlsTitleCell_avatarHeaderVCWrapper;
  *(v0 + v1) = [objc_allocWithZone(CNKGroupIdentityHeaderSNaPWrapper) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void InCallControlsTitleCell.configure(with:)(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  static UIBackgroundConfiguration.listPlainCell()();
  v7 = [objc_opt_self() clearColor];
  UIBackgroundConfiguration.backgroundColor.setter();
  v8 = type metadata accessor for UIBackgroundConfiguration();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v8);
  MEMORY[0x1BFB216F0](v6);
  v9 = *a1;
  v10 = a1[1];
  v12 = a1[5];
  v11 = a1[6];
  v13 = a1[4];
  v14 = objc_allocWithZone(MEMORY[0x1E695D158]);

  outlined copy of Data?(v12, v11);
  v15 = @nonobjc CNGroupIdentity.init(groupWithName:photo:contacts:)(v9, v10, v12, v11);
  v16 = v15;
  v17 = *(v2 + OBJC_IVAR____TtC15ConversationKit23InCallControlsTitleCell_avatarHeaderViewController);
  if (v17)
  {
    v18 = v17;
    [v18 groupIdentityDidUpdate_];
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if ((Features.isNameAndPhotoC3Enabled.getter() & 1) != 0 && specialized Array.count.getter(v13) == 1 && specialized Array.count.getter(v13))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v13 & 0xC000000000000001) == 0, v13);
      if ((v13 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1BFB22010](0, v13);
      }

      else
      {
        v19 = *(v13 + 32);
      }

      v20 = *(v2 + OBJC_IVAR____TtC15ConversationKit23InCallControlsTitleCell_avatarHeaderVCWrapper);
      v21 = v19;
      [v20 configureGroupIdentityHeaderViewController:v18 contact:v21];
    }

    else
    {

      v16 = v18;
    }
  }

  else
  {
    InCallControlsTitleCell.setupAvatarViewController(for:)(v15);
  }
}

void InCallControlsTitleCell.setupAvatarViewController(for:)(void *a1)
{
  v3 = v1;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNGroupIdentityInlineActionsViewConfiguration);
  v5 = CNGroupIdentityInlineActionsViewConfiguration.__allocating_init(defaultActionItems:displaysUnavailableActionTypes:)(MEMORY[0x1E69E7CC0], 0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNGroupIdentityHeaderViewController);
  v6 = a1;
  v7 = v5;
  v8 = CNGroupIdentityHeaderViewController.__allocating_init(groupIdentity:actionsViewConfiguration:)(v6, v5);
  v9 = *&v3[OBJC_IVAR____TtC15ConversationKit23InCallControlsTitleCell_avatarHeaderViewController];
  *&v3[OBJC_IVAR____TtC15ConversationKit23InCallControlsTitleCell_avatarHeaderViewController] = v8;
  v32 = v8;

  v10 = [(objc_class *)v32 view];
  if (v10)
  {
    v11 = v10;
    v12 = [v3 contentView];
    [v12 addSubview_];

    [v11 setTranslatesAutoresizingMaskIntoConstraints_];
    v13 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1BC4BA7F0;
    v15 = [v11 topAnchor];
    v16 = OUTLINED_FUNCTION_0_69();
    v17 = [v16 topAnchor];

    v18 = OUTLINED_FUNCTION_1_68();
    *(v14 + 32) = v18;
    v19 = [v11 bottomAnchor];
    v20 = OUTLINED_FUNCTION_0_69();
    v21 = [v20 bottomAnchor];

    v22 = OUTLINED_FUNCTION_1_68();
    *(v14 + 40) = v22;
    v23 = [v11 leadingAnchor];
    v24 = OUTLINED_FUNCTION_0_69();
    v25 = [v24 leadingAnchor];

    v26 = OUTLINED_FUNCTION_1_68();
    *(v14 + 48) = v26;
    v27 = [v11 trailingAnchor];
    v28 = OUTLINED_FUNCTION_0_69();
    v29 = [v28 trailingAnchor];

    v30 = [v2 constraintEqualToAnchor_];
    *(v14 + 56) = v30;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v13 activateConstraints_];

    v7 = v11;
    v32 = isa;
  }
}

id CNGroupIdentityInlineActionsViewConfiguration.__allocating_init(defaultActionItems:displaysUnavailableActionTypes:)(uint64_t a1, char a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNGroupIdentityActionItem);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v3 initWithDefaultActionItems:isa displaysUnavailableActionTypes:a2 & 1];

  return v5;
}

id CNGroupIdentityHeaderViewController.__allocating_init(groupIdentity:actionsViewConfiguration:)(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithGroupIdentity:a1 actionsViewConfiguration:a2];

  return v4;
}

UICollectionViewLayoutAttributes __swiftcall InCallControlsTitleCell.preferredLayoutAttributesFitting(_:)(UICollectionViewLayoutAttributes a1)
{
  v2 = v1;
  v17.receiver = v1;
  v17.super_class = swift_getObjectType();
  v4 = objc_msgSendSuper2(&v17, sel_preferredLayoutAttributesFittingAttributes_, a1.super.isa);
  v5 = *&v1[OBJC_IVAR____TtC15ConversationKit23InCallControlsTitleCell_avatarHeaderViewController];
  if (v5)
  {
    v6 = v5;
    v7 = [v2 contentView];
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v18.origin.x = v9;
    v18.origin.y = v11;
    v18.size.width = v13;
    v18.size.height = v15;
    [v6 sizeForLayoutInContainerSize_];
    [v4 bounds];
    [v4 setBounds_];
  }

  return v4;
}

id InCallControlsTitleCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id ClarityUIKeypadView.init(didEnterNumberAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6CGSizeVSgMd);
  State.init(wrappedValue:)();
  *a3 = v9;
  *(a3 + 16) = v10;
  *(a3 + 24) = v11;
  *(a3 + 32) = 0x4020000000000000;
  static ClarityUIMetrics.standardSpacing.getter();
  *(a3 + 40) = v6;
  closure #1 in variable initialization expression of ClarityUIKeypadView.numberPadStrings();
  *(a3 + 48) = v7;
  result = [objc_allocWithZone(MEMORY[0x1E69D89A8]) init];
  *(a3 + 56) = result;
  *(a3 + 64) = a1;
  *(a3 + 72) = a2;
  return result;
}

uint64_t ClarityUIKeypadView.body.getter@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  v3 = swift_allocObject();
  memcpy((v3 + 16), v1, 0x50uLL);
  KeyPath = swift_getKeyPath();
  v5 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA14GeometryReaderVyACyACyACyACyAA4GridVyAA7ForEachVySays10ArraySliceVySo20TPNumberPadCharacterVGGAnA0G3RowVyAIyAnmA4ViewPAAE11buttonStyleyQrqd__AA06ButtonR0Rd__lFQOyACyAsAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA0S0VyACyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0W18AttachmentModifierVG_15ConversationKit06KeypadsR0VQo_GGGGAA12_ScaleEffectVGAA16_OverlayModifierVyAEyACyAA5ColorVAA26_PreferenceWritingModifierVyA10_27CalculatedSizePreferenceKey33_6EF1B68AECCFB236B5DBC4796FF5B98CLLVGGGGGA3_GAA25_PreferenceActionModifierVyA29_So6CGSizeVSgSQHPA39_SQ12CoreGraphicsyHC_HCg0_GGGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGMd) + 36));
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGMd) + 28);
  v7 = *MEMORY[0x1E697E7D0];
  type metadata accessor for LayoutDirection();
  OUTLINED_FUNCTION_7_0();
  (*(v8 + 104))(v5 + v6, v7);
  *v5 = KeyPath;
  *a1 = partial apply for closure #1 in ClarityUIKeypadView.body.getter;
  a1[1] = v3;
  return outlined init with copy of ClarityUIKeypadView(__dst, &v10);
}

uint64_t closure #1 in ClarityUIKeypadView.body.getter@<X0>(double *a1@<X1>, uint64_t a2@<X8>)
{
  memcpy(v36, a1, sizeof(v36));
  ClarityUIKeypadView.horizontalSpacingBetweenButtons(_:)();
  v5 = v4;
  v6 = a1[4];
  GeometryProxy.size.getter();
  v8 = v7;
  v9 = objc_opt_self();
  [v9 outerCircleDiameter];
  v11 = (v8 + v10 * -4.0) / 3.0;
  if (v11 > v6)
  {
    v6 = v11;
  }

  [v9 outerCircleDiameter];
  v13 = v12 / 3.0;
  if (v13 >= v6)
  {
    v14 = v6;
  }

  else
  {
    v14 = v13;
  }

  *a2 = static Alignment.center.getter();
  *(a2 + 8) = v15;
  *(a2 + 16) = v5;
  *(a2 + 24) = 0;
  *(a2 + 32) = v14;
  *(a2 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA10GridLayoutVAA7ForEachVySays10ArraySliceVySo20TPNumberPadCharacterVGGAnA0F3RowVyAIyAnmA0D0PAAE11buttonStyleyQrqd__AA06ButtonQ0Rd__lFQOyAA15ModifiedContentVyAsAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA0R0VyAWyAA5ImageVAA06_FrameG0VGG_Qo_AA0X18AttachmentModifierVG_15ConversationKit06KeypadrQ0VQo_GGGGMd);
  closure #1 in closure #1 in ClarityUIKeypadView.body.getter(a1);
  v16 = *(a1 + 1);
  v36[0] = *a1;
  v36[1] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo6CGSizeVSgGMd);
  State.wrappedValue.getter();
  v17 = 1.0;
  if ((v38 & 1) == 0)
  {
    v18 = v37;
    GeometryProxy.size.getter();
    v20 = v19 / *&v18;
    GeometryProxy.size.getter();
    if (v21 / *(&v18 + 1) >= v20)
    {
      v17 = v20;
    }

    else
    {
      v17 = v21 / *(&v18 + 1);
    }

    if (v17 >= 1.0)
    {
      v17 = 1.0;
    }
  }

  static UnitPoint.center.getter();
  v23 = v22;
  v25 = v24;
  v26 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4GridVyAA7ForEachVySays10ArraySliceVySo20TPNumberPadCharacterVGGAlA0E3RowVyAGyAlkA4ViewPAAE11buttonStyleyQrqd__AA06ButtonP0Rd__lFQOyACyAqAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA0Q0VyACyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0U18AttachmentModifierVG_15ConversationKit06KeypadqP0VQo_GGGGAA12_ScaleEffectVGMd) + 36);
  *v26 = v17;
  *(v26 + 8) = v17;
  *(v26 + 16) = v23;
  *(v26 + 24) = v25;
  v27 = static Alignment.center.getter();
  v29 = v28;
  v30 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4GridVyAA7ForEachVySays10ArraySliceVySo20TPNumberPadCharacterVGGAlA0E3RowVyAGyAlkA4ViewPAAE11buttonStyleyQrqd__AA06ButtonP0Rd__lFQOyACyAqAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA0Q0VyACyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0U18AttachmentModifierVG_15ConversationKit06KeypadqP0VQo_GGGGAA12_ScaleEffectVGAA16_OverlayModifierVyAA14GeometryReaderVyACyAA5ColorVAA26_PreferenceWritingModifierVyA8_27CalculatedSizePreferenceKey33_6EF1B68AECCFB236B5DBC4796FF5B98CLLVGGGGGMd) + 36));
  *v30 = closure #1 in closure #2 in closure #1 in ClarityUIKeypadView.body.getter;
  v30[1] = 0;
  v30[2] = v27;
  v30[3] = v29;
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v31 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4GridVyAA7ForEachVySays10ArraySliceVySo20TPNumberPadCharacterVGGAlA0E3RowVyAGyAlkA4ViewPAAE11buttonStyleyQrqd__AA06ButtonP0Rd__lFQOyACyAqAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA0Q0VyACyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0U18AttachmentModifierVG_15ConversationKit06KeypadqP0VQo_GGGGAA12_ScaleEffectVGAA16_OverlayModifierVyAA14GeometryReaderVyACyAA5ColorVAA26_PreferenceWritingModifierVyA8_27CalculatedSizePreferenceKey33_6EF1B68AECCFB236B5DBC4796FF5B98CLLVGGGGGA1_GMd) + 36));
  v32 = v38;
  *v31 = v37;
  v31[1] = v32;
  v31[2] = v39;
  v33 = swift_allocObject();
  memcpy((v33 + 16), a1, 0x50uLL);
  v34 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4GridVyAA7ForEachVySays10ArraySliceVySo20TPNumberPadCharacterVGGAlA0E3RowVyAGyAlkA4ViewPAAE11buttonStyleyQrqd__AA06ButtonP0Rd__lFQOyACyAqAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA0Q0VyACyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0U18AttachmentModifierVG_15ConversationKit06KeypadqP0VQo_GGGGAA12_ScaleEffectVGAA16_OverlayModifierVyAA14GeometryReaderVyACyAA5ColorVAA26_PreferenceWritingModifierVyA8_27CalculatedSizePreferenceKey33_6EF1B68AECCFB236B5DBC4796FF5B98CLLVGGGGGA1_GAA25_PreferenceActionModifierVyA29_So6CGSizeVSgSQHPA39_SQ12CoreGraphicsyHC_HCg0_GGMd) + 36));
  *v34 = partial apply for closure #3 in closure #1 in ClarityUIKeypadView.body.getter;
  v34[1] = v33;
  return outlined init with copy of ClarityUIKeypadView(a1, v36);
}

id ClarityUIKeypadView.horizontalSpacingBetweenButtons(_:)()
{
  v1 = *(v0 + 40);
  GeometryProxy.size.getter();
  v3 = v2;
  v4 = objc_opt_self();
  [v4 outerCircleDiameter];
  if ((v3 + v5 * -3.0) * 0.25 < v1)
  {
    GeometryProxy.size.getter();
    [v4 outerCircleDiameter];
  }

  return [v4 outerCircleDiameter];
}

uint64_t closure #1 in closure #1 in ClarityUIKeypadView.body.getter(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v5 = ClarityUIKeypadView.numberPadCharacters.getter();
  swift_getKeyPath();
  v2 = swift_allocObject();
  memcpy((v2 + 16), __src, 0x50uLL);
  outlined init with copy of ClarityUIKeypadView(__src, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays10ArraySliceVySo20TPNumberPadCharacterVGGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7GridRowVyAA7ForEachVys10ArraySliceVySo20TPNumberPadCharacterVGAiA4ViewPAAE11buttonStyleyQrqd__AA06ButtonN0Rd__lFQOyAA15ModifiedContentVyAlAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA0O0VyAPyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0U18AttachmentModifierVG_15ConversationKit06KeypadoN0VQo_GGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [ArraySlice<TPNumberPadCharacter>] and conformance [A], &_sSays10ArraySliceVySo20TPNumberPadCharacterVGGMd);
  lazy protocol witness table accessor for type ArraySlice<TPNumberPadCharacter> and conformance <A> ArraySlice<A>();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type GridRow<ForEach<ArraySlice<TPNumberPadCharacter>, TPNumberPadCharacter, <<opaque return type of View.buttonStyle<A>(_:)>>.0>> and conformance GridRow<A>, &_s7SwiftUI7GridRowVyAA7ForEachVys10ArraySliceVySo20TPNumberPadCharacterVGAiA4ViewPAAE11buttonStyleyQrqd__AA06ButtonN0Rd__lFQOyAA15ModifiedContentVyAlAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA0O0VyAPyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0U18AttachmentModifierVG_15ConversationKit06KeypadoN0VQo_GGMd);
  return ForEach<>.init(_:id:content:)();
}

uint64_t ClarityUIKeypadView.numberPadCharacters.getter()
{
  v1 = objc_opt_self();
  v2 = outlined bridged method (pb) of @objc static TPDialerNumberPad.dialerNumberPadFullCharacters()(v1);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = v2;
  v4 = 0;
  v5 = *(v2 + 16);
  v6 = v2 + 32;
  v0 = MEMORY[0x1E69E7CC0];
  while (v5 != v4)
  {
    if (v4 >= *(v3 + 16))
    {
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v33[0] = 0;
      v33[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(52);
      MEMORY[0x1BFB20B10](0xD000000000000032, 0x80000001BC4FA1B0);
      _print_unlocked<A, B>(_:_:)();
      while (1)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_17:
        v34[0] = 0;
        v34[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(53);
        MEMORY[0x1BFB20B10](0xD000000000000033, 0x80000001BC4FA1F0);
        type metadata accessor for TPNumberPadCharacter(0);
        v30 = MEMORY[0x1BFB20D10](v0, v29);
        v0 = v31;
        MEMORY[0x1BFB20B10](v30);
      }
    }

    outlined init with copy of Any(v6, v34);
    outlined init with copy of Any(v34, v33);
    type metadata accessor for NSNumber();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_15;
    }

    v7 = [v32 integerValue];

    __swift_destroy_boxed_opaque_existential_1(v34);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v0 = v9;
    }

    v8 = *(v0 + 16);
    if (v8 >= *(v0 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v0 = v10;
    }

    *(v0 + 16) = v8 + 1;
    *(v0 + 8 * v8 + 32) = v7;
    v6 += 32;
    ++v4;
  }

  if (*(v0 + 16) != 12)
  {
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys0B5SliceVySo20TPNumberPadCharacterVGGMd);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BC4BB990;
  *(v11 + 32) = specialized Array.subscript.getter(0, 3, v0);
  *(v11 + 40) = v12;
  *(v11 + 48) = v13;
  *(v11 + 56) = v14;
  *(v11 + 64) = specialized Array.subscript.getter(3, 6, v0);
  *(v11 + 72) = v15;
  *(v11 + 80) = v16;
  *(v11 + 88) = v17;
  *(v11 + 96) = specialized Array.subscript.getter(6, 9, v0);
  *(v11 + 104) = v18;
  *(v11 + 112) = v19;
  *(v11 + 120) = v20;
  v21 = specialized Array.subscript.getter(9, 12, v0);
  v23 = v22;
  v25 = v24;
  v27 = v26;

  *(v11 + 128) = v21;
  *(v11 + 136) = v23;
  *(v11 + 144) = v25;
  *(v11 + 152) = v27;
  return v11;
}

uint64_t closure #1 in closure #1 in closure #1 in ClarityUIKeypadView.body.getter@<X0>(__int128 *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  *a3 = 0;
  *(a3 + 8) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7GridRowVyAA7ForEachVys10ArraySliceVySo20TPNumberPadCharacterVGAiA4ViewPAAE11buttonStyleyQrqd__AA06ButtonN0Rd__lFQOyAA15ModifiedContentVyAlAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA0O0VyAPyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0U18AttachmentModifierVG_15ConversationKit06KeypadoN0VQo_GGMd);
  v13 = *a1;
  v14 = v5;
  v15 = v6;
  swift_getKeyPath();
  v7 = swift_allocObject();
  memcpy((v7 + 16), a2, 0x50uLL);
  swift_unknownObjectRetain();
  outlined init with copy of ClarityUIKeypadView(a2, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVySo20TPNumberPadCharacterVGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA15ModifiedContentVyAcAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA0F0VyAGyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0L18AttachmentModifierVG_15ConversationKit06KeypadfE0VQo_Md);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type ArraySlice<TPNumberPadCharacter> and conformance ArraySlice<A>, &_ss10ArraySliceVySo20TPNumberPadCharacterVGMd);
  lazy protocol witness table accessor for type TPNumberPadCharacter and conformance TPNumberPadCharacter(&lazy protocol witness table cache variable for type TPNumberPadCharacter and conformance TPNumberPadCharacter, type metadata accessor for TPNumberPadCharacter);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ButtonVyACyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0I18AttachmentModifierVGMd);
  v9 = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  v10 = lazy protocol witness table accessor for type KeypadButtonStyle and conformance KeypadButtonStyle();
  v12[0] = v8;
  v12[1] = &type metadata for KeypadButtonStyle;
  v12[2] = v9;
  v12[3] = v10;
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in ClarityUIKeypadView.body.getter@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = type metadata accessor for AccessibilityChildBehavior();
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGGMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ButtonVyAA15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGG_Qo_Md);
  v26 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v13 = &v26 - v12;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ButtonVyACyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0I18AttachmentModifierVGMd);
  MEMORY[0x1EEE9AC00](v28);
  v15 = &v26 - v14;
  v16 = *a1;
  v17 = swift_allocObject();
  memcpy((v17 + 16), a2, 0x50uLL);
  *(v17 + 96) = v16;
  v32 = v16;
  v33 = a2;
  outlined init with copy of ClarityUIKeypadView(a2, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMd);
  lazy protocol witness table accessor for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  static AccessibilityChildBehavior.ignore.getter();
  v18 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<ModifiedContent<Image, _FrameLayout>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGGMd);
  View.accessibilityElement(children:)();
  (*(v30 + 8))(v7, v31);
  result = (*(v9 + 8))(v11, v8);
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v20 = a2[6];
    if (v16 < *(v20 + 16))
    {
      v21 = v20 + 16 * v16;
      v23 = *(v21 + 32);
      v22 = *(v21 + 40);
      v36[0] = v23;
      v36[1] = v22;
      v34 = v8;
      v35 = v18;
      swift_getOpaqueTypeConformance2();
      lazy protocol witness table accessor for type String and conformance String();
      v24 = v27;
      View.accessibilityLabel<A>(_:)();
      (*(v26 + 8))(v13, v24);
      v25 = swift_allocObject();
      memcpy((v25 + 16), a2, 0x50uLL);
      *(v25 + 96) = v16;
      v34 = partial apply for closure #3 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in ClarityUIKeypadView.body.getter;
      v35 = v25;
      outlined init with copy of ClarityUIKeypadView(a2, v36);
      lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type KeypadButtonStyle and conformance KeypadButtonStyle();
      View.buttonStyle<A>(_:)();

      return sub_1BBCE2A04(v15);
    }
  }

  __break(1u);
  return result;
}

id closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in ClarityUIKeypadView.body.getter(uint64_t a1, unint64_t a2)
{
  result = [*(a1 + 56) playSoundForDialerCharacter_];
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = *(a1 + 48);
  if (*(v5 + 16) <= a2)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = *(a1 + 64);
  v7 = v5 + 16 * a2;
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);

  v6(v8, v9);
}

id closure #2 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in ClarityUIKeypadView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5ImageV21TemplateRenderingModeOSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = objc_opt_self();
  result = [v7 imageForCharacter:a1 highlighted:0 whiteVersion:0];
  if (result)
  {
    Image.init(uiImage:)();
    v9 = *MEMORY[0x1E6981698];
    v10 = type metadata accessor for Image.TemplateRenderingMode();
    (*(*(v10 - 8) + 104))(v6, v9, v10);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
    v11 = Image.renderingMode(_:)();

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s7SwiftUI5ImageV21TemplateRenderingModeOSgMd);
    [v7 outerCircleDiameter];
    [v7 outerCircleDiameter];
    static Alignment.center.getter();
    result = _FrameLayout.init(width:height:alignment:)();
    v12 = v16;
    v13 = v17;
    v14 = v18;
    v15 = v19;
    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 16) = v13;
    *(a2 + 24) = v14;
    *(a2 + 32) = v15;
    *(a2 + 40) = v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #2 in closure #1 in ClarityUIKeypadView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = static Color.clear.getter();
  result = GeometryProxy.size.getter();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = 0;
  return result;
}

uint64_t key path setter for EnvironmentValues.layoutDirection : EnvironmentValues(uint64_t a1)
{
  type metadata accessor for LayoutDirection();
  OUTLINED_FUNCTION_1();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.layoutDirection.setter();
}

void closure #1 in variable initialization expression of ClarityUIKeypadView.numberPadStrings()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo8NSStringCSgGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4C4190;
  *(inited + 32) = @"1";
  *(inited + 40) = @"2";
  *(inited + 48) = @"3";
  *(inited + 56) = @"4";
  *(inited + 64) = @"5";
  *(inited + 72) = @"6";
  *(inited + 80) = @"7";
  *(inited + 88) = @"8";
  *(inited + 96) = @"9";
  *(inited + 104) = @"*";
  *(inited + 112) = @"0";
  *(inited + 120) = @"#";
  v1 = @"1";
  v2 = @"2";
  v3 = @"3";
  v4 = @"4";
  v5 = @"5";
  v6 = @"6";
  v7 = @"7";
  v8 = @"8";
  v9 = @"9";
  v10 = @"*";
  v11 = @"0";
  v12 = @"#";
  for (i = 0; ; ++i)
  {
    if (i == 12)
    {
      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      return;
    }

    if (i > 0xB)
    {
      break;
    }

    v14 = *(inited + 8 * i + 32);
    if (v14)
    {
      v15 = v14;
      static String._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  __break(1u);
}

uint64_t key path getter for KeypadButtonStyle.onStateChanged : KeypadButtonStyle@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(unsigned __int8 *a1)@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  a2[1] = v5;
}

uint64_t key path setter for KeypadButtonStyle.onStateChanged : KeypadButtonStyle(uint64_t *a1, uint64_t (**a2)(char a1))
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ());
  a2[1] = v5;
  return result;
}

uint64_t KeypadButtonStyle.onStateChanged.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t KeypadButtonStyle.makeBody(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit21KeypadButtonStyleViewVy7SwiftUI5ColorVGMd);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17[-v8];
  type metadata accessor for ButtonStyleConfiguration();
  OUTLINED_FUNCTION_7_0();
  (*(v10 + 16))(v9, a1);
  v11 = static Color.clarityUIButtonBackground.getter();
  v12 = static Color.primary.getter();
  *&v9[*(v6 + 36)] = v11;
  *&v9[*(v6 + 40)] = v12;
  v17[15] = ButtonStyleConfiguration.isPressed.getter() & 1;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  OUTLINED_FUNCTION_1_69();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v14, v15);

  View.onChange<A>(of:initial:_:)();

  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s15ConversationKit21KeypadButtonStyleViewVy7SwiftUI5ColorVGMd);
}

uint64_t KeypadButtonStyleView.init(configuration:background:foregroundColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for ButtonStyleConfiguration();
  OUTLINED_FUNCTION_7_0();
  (*(v10 + 32))(a5, a1);
  v11 = type metadata accessor for KeypadButtonStyleView();
  result = (*(*(a4 - 8) + 32))(a5 + *(v11 + 36), a2, a4);
  *(a5 + *(v11 + 40)) = a3;
  return result;
}

uint64_t KeypadButtonStyleView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6HStackVyAA24ButtonStyleConfigurationV5LabelVGMd);
  v4 = *(a1 + 24);
  v36 = *(a1 + 16);
  v35 = v4;
  type metadata accessor for _BackgroundStyleModifier();
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI16_OverlayModifierVyAA5ColorVGMd);
  OUTLINED_FUNCTION_7_2();
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
  OUTLINED_FUNCTION_7_2();
  v5 = type metadata accessor for ModifiedContent();
  OUTLINED_FUNCTION_5_41();
  v7 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v6, &_s7SwiftUI6HStackVyAA24ButtonStyleConfigurationV5LabelVGMd);
  OUTLINED_FUNCTION_4_45();
  v51 = v7;
  WitnessTable = swift_getWitnessTable();
  v8 = MEMORY[0x1E697E858];
  v9 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  v49 = v9;
  v50 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v10, &_s7SwiftUI16_OverlayModifierVyAA5ColorVGMd);
  v34[2] = v8;
  v11 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_64();
  v47 = v11;
  v48 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v12, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
  v34[1] = v5;
  v13 = swift_getWitnessTable();
  v14 = lazy protocol witness table accessor for type Circle and conformance Circle();
  v43 = v5;
  v44 = MEMORY[0x1E69817E8];
  v45 = v13;
  v46 = v14;
  v15 = type metadata accessor for PlatterShadowedContent();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v34 - v19;
  v21 = type metadata accessor for ModifiedContent();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v34 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v34 - v28;
  ButtonStyleConfiguration.isPressed.getter();
  v38 = v36;
  v39 = v35;
  v40 = v2;
  PlatterShadowedContent.init(shape:isPressed:content:)();
  ButtonStyleConfiguration.isPressed.getter();
  v30 = swift_getWitnessTable();
  static UnitPoint.center.getter();
  View.scaleEffect(_:anchor:)();
  (*(v17 + 8))(v20, v15);
  v41 = v30;
  v42 = MEMORY[0x1E697E070];
  v31 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v26, v21, v31);
  v32 = *(v23 + 8);
  v32(v26, v21);
  static ViewBuilder.buildExpression<A>(_:)(v29, v21, v31);
  return (v32)(v29, v21);
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

uint64_t closure #1 in KeypadButtonStyleView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a4;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA24ButtonStyleConfigurationV5LabelVGMd);
  MEMORY[0x1EEE9AC00](v32);
  v8 = v30 - v7;
  v34 = type metadata accessor for _BackgroundStyleModifier();
  v9 = type metadata accessor for ModifiedContent();
  v39 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v31 = v30 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI16_OverlayModifierVyAA5ColorVGMd);
  v37 = type metadata accessor for ModifiedContent();
  v40 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v33 = v30 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
  v36 = type metadata accessor for ModifiedContent();
  v41 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v38 = v30 - v14;
  *v8 = static VerticalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA24ButtonStyleConfigurationV5LabelVGMd);
  ButtonStyleConfiguration.label.getter();
  v30[1] = type metadata accessor for KeypadButtonStyleView();
  v15 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type HStack<ButtonStyleConfiguration.Label> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA24ButtonStyleConfigurationV5LabelVGMd);
  static Edge.Set.all.getter();
  v16 = v31;
  View.background<A>(_:ignoresSafeAreaEdges:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s7SwiftUI6HStackVyAA24ButtonStyleConfigurationV5LabelVGMd);
  v43 = a2;
  v44 = a3;
  v45 = a1;
  WitnessTable = swift_getWitnessTable();
  v50 = v15;
  v51 = WitnessTable;
  v18 = swift_getWitnessTable();
  default argument 0 of View.overlay<A>(alignment:content:)(v9, MEMORY[0x1E69815C0], v18, MEMORY[0x1E6981580]);
  v19 = v33;
  View.overlay<A>(alignment:content:)();
  (*(v39 + 8))(v16, v9);
  v20 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _OverlayModifier<Color> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA5ColorVGMd);
  v48 = v18;
  v49 = v20;
  v21 = v37;
  v22 = swift_getWitnessTable();
  v23 = v35;
  View.foregroundColor(_:)();
  (*(v40 + 8))(v19, v21);
  v24 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
  v46 = v22;
  v47 = v24;
  v25 = v36;
  v26 = swift_getWitnessTable();
  v27 = v38;
  static ViewBuilder.buildExpression<A>(_:)(v23, v25, v26);
  v28 = *(v41 + 8);
  v28(v23, v25);
  static ViewBuilder.buildExpression<A>(_:)(v27, v25, v26);
  return (v28)(v27, v25);
}

uint64_t closure #2 in closure #1 in KeypadButtonStyleView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    result = static Color.clarityUIPressedButtonOverlay.getter();
  }

  else
  {
    result = static Color.clear.getter();
  }

  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ClarityUIKeypadView(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t storeEnumTagSinglePayload for ClarityUIKeypadView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for KeypadButtonStyleView()
{
  result = type metadata accessor for ButtonStyleConfiguration();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KeypadButtonStyleView(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = type metadata accessor for ButtonStyleConfiguration();
  v7 = *(*(v6 - 8) + 84);
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = *(*(v6 - 8) + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  v12 = *(v9 + 80);
  v13 = *(v9 + 64);
  if (!a2)
  {
    return 0;
  }

  v14 = v6;
  v15 = *(*(v6 - 8) + 64) + v12;
  v16 = v13 + 7;
  if (v11 >= a2)
  {
LABEL_27:
    if (v7 == v11)
    {
      v26 = a1;
      v8 = v14;
    }

    else
    {
      v26 = (a1 + v15) & ~v12;
      if (v10 != v11)
      {
        v27 = *((v16 + v26) & 0xFFFFFFFFFFFFFFF8);
        if (v27 >= 0xFFFFFFFF)
        {
          LODWORD(v27) = -1;
        }

        return (v27 + 1);
      }

      v7 = v10;
    }

    return __swift_getEnumTagSinglePayload(v26, v7, v8);
  }

  v17 = ((v16 + (v15 & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v18 = v17 & 0xFFFFFFF8;
  if ((v17 & 0xFFFFFFF8) != 0)
  {
    v19 = 2;
  }

  else
  {
    v19 = a2 - v11 + 1;
  }

  result = 4;
  if (v19 >= 0x10000)
  {
    v21 = 4;
  }

  else
  {
    v21 = 2;
  }

  if (v19 < 0x100)
  {
    v21 = 1;
  }

  if (v19 >= 2)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  switch(v22)
  {
    case 1:
      v23 = *(a1 + v17);
      if (!v23)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    case 2:
      v23 = *(a1 + v17);
      if (!v23)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    case 3:
      __break(1u);
      return result;
    case 4:
      v23 = *(a1 + v17);
      if (!v23)
      {
        goto LABEL_27;
      }

LABEL_24:
      v24 = v23 - 1;
      if (v18)
      {
        v24 = 0;
        v25 = *a1;
      }

      else
      {
        v25 = 0;
      }

      result = v11 + (v25 | v24) + 1;
      break;
    default:
      goto LABEL_27;
  }

  return result;
}

void storeEnumTagSinglePayload for KeypadButtonStyleView(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = type metadata accessor for ButtonStyleConfiguration();
  v9 = *(*(v8 - 8) + 84);
  v10 = *(a4 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v9)
  {
    v13 = *(*(v8 - 8) + 84);
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  v14 = *(v11 + 80);
  v15 = *(*(v8 - 8) + 64) + v14;
  v16 = *(v11 + 64) + 7;
  v17 = ((v16 + (v15 & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v13 >= a3)
  {
    v20 = 0;
  }

  else
  {
    if (((v16 + (v15 & ~v14)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v18 = a3 - v13 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }
  }

  if (a2 <= v13)
  {
    switch(v20)
    {
      case 1:
        *(a1 + v17) = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 2:
        *(a1 + v17) = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 3:
LABEL_48:
        __break(1u);
        return;
      case 4:
        *(a1 + v17) = 0;
        goto LABEL_33;
      default:
LABEL_33:
        if (!a2)
        {
          return;
        }

LABEL_34:
        if (v9 == v13)
        {
          v23 = a1;
          v24 = a2;
          v10 = v8;
        }

        else
        {
          v23 = (a1 + v15) & ~v14;
          if (v12 != v13)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v25 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v25 = (a2 - 1);
            }

            *((v16 + v23) & 0xFFFFFFFFFFFFFFF8) = v25;
            return;
          }

          v24 = a2;
          v9 = v12;
        }

        __swift_storeEnumTagSinglePayload(v23, v24, v9, v10);
        break;
    }
  }

  else
  {
    if (((v16 + (v15 & ~v14)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v21 = a2 - v13;
    }

    else
    {
      v21 = 1;
    }

    if (((v16 + (v15 & ~v14)) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v22 = ~v13 + a2;
      bzero(a1, v17);
      *a1 = v22;
    }

    switch(v20)
    {
      case 1:
        *(a1 + v17) = v21;
        break;
      case 2:
        *(a1 + v17) = v21;
        break;
      case 3:
        goto LABEL_48;
      case 4:
        *(a1 + v17) = v21;
        break;
      default:
        return;
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Grid<ForEach<[ArraySlice<TPNumberPadCharacter>], ArraySlice<TPNumberPadCharacter>, GridRow<ForEach<ArraySlice<TPNumberPadCharacter>, TPNumberPadCharacter, <<opaque return type of View.buttonStyle<A>(_:)>>.0>>>>, _ScaleEffect>, _OverlayModifier<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<CalculatedSizePreferenceKey>>>>>, _FrameLayout>, _PreferenceActionModifier<CalculatedSizePreferenceKey>>>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Grid<ForEach<[ArraySlice<TPNumberPadCharacter>], ArraySlice<TPNumberPadCharacter>, GridRow<ForEach<ArraySlice<TPNumberPadCharacter>, TPNumberPadCharacter, <<opaque return type of View.buttonStyle<A>(_:)>>.0>>>>, _ScaleEffect>, _OverlayModifier<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<CalculatedSizePreferenceKey>>>>>, _FrameLayout>, _PreferenceActionModifier<CalculatedSizePreferenceKey>>>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Grid<ForEach<[ArraySlice<TPNumberPadCharacter>], ArraySlice<TPNumberPadCharacter>, GridRow<ForEach<ArraySlice<TPNumberPadCharacter>, TPNumberPadCharacter, <<opaque return type of View.buttonStyle<A>(_:)>>.0>>>>, _ScaleEffect>, _OverlayModifier<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<CalculatedSizePreferenceKey>>>>>, _FrameLayout>, _PreferenceActionModifier<CalculatedSizePreferenceKey>>>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA14GeometryReaderVyACyACyACyACyAA4GridVyAA7ForEachVySays10ArraySliceVySo20TPNumberPadCharacterVGGAnA0G3RowVyAIyAnmA4ViewPAAE11buttonStyleyQrqd__AA06ButtonR0Rd__lFQOyACyAsAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA0S0VyACyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0W18AttachmentModifierVG_15ConversationKit06KeypadsR0VQo_GGGGAA12_ScaleEffectVGAA16_OverlayModifierVyAEyACyAA5ColorVAA26_PreferenceWritingModifierVyA10_27CalculatedSizePreferenceKey33_6EF1B68AECCFB236B5DBC4796FF5B98CLLVGGGGGA3_GAA25_PreferenceActionModifierVyA29_So6CGSizeVSgSQHPA39_SQ12CoreGraphicsyHC_HCg0_GGGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Grid<ForEach<[ArraySlice<TPNumberPadCharacter>], ArraySlice<TPNumberPadCharacter>, GridRow<ForEach<ArraySlice<TPNumberPadCharacter>, TPNumberPadCharacter, <<opaque return type of View.buttonStyle<A>(_:)>>.0>>>>, _ScaleEffect>, _OverlayModifier<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<CalculatedSizePreferenceKey>>>>>, _FrameLayout>, _PreferenceActionModifier<CalculatedSizePreferenceKey>>> and conformance GeometryReader<A>, &_s7SwiftUI14GeometryReaderVyAA15ModifiedContentVyAEyAEyAEyAA4GridVyAA7ForEachVySays10ArraySliceVySo20TPNumberPadCharacterVGGAnA0G3RowVyAIyAnmA4ViewPAAE11buttonStyleyQrqd__AA06ButtonR0Rd__lFQOyAEyAsAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA0S0VyAEyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0W18AttachmentModifierVG_15ConversationKit06KeypadsR0VQo_GGGGAA12_ScaleEffectVGAA16_OverlayModifierVyACyAEyAA5ColorVAA26_PreferenceWritingModifierVyA10_27CalculatedSizePreferenceKey33_6EF1B68AECCFB236B5DBC4796FF5B98CLLVGGGGGA3_GAA25_PreferenceActionModifierVyA29_So6CGSizeVSgSQHPA39_SQ12CoreGraphicsyHC_HCg0_GGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<LayoutDirection> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Grid<ForEach<[ArraySlice<TPNumberPadCharacter>], ArraySlice<TPNumberPadCharacter>, GridRow<ForEach<ArraySlice<TPNumberPadCharacter>, TPNumberPadCharacter, <<opaque return type of View.buttonStyle<A>(_:)>>.0>>>>, _ScaleEffect>, _OverlayModifier<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<CalculatedSizePreferenceKey>>>>>, _FrameLayout>, _PreferenceActionModifier<CalculatedSizePreferenceKey>>>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

double specialized static CalculatedSizePreferenceKey.reduce(value:nextValue:)(uint64_t a1, void (*a2)(__int128 *__return_ptr))
{
  a2(&v4);
  if ((v5 & 1) == 0)
  {
    result = *&v4;
    *a1 = v4;
    *(a1 + 16) = 0;
  }

  return result;
}

void protocol witness for static PreferenceKey.defaultValue.getter in conformance CalculatedSizePreferenceKey(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

unint64_t lazy protocol witness table accessor for type ArraySlice<TPNumberPadCharacter> and conformance <A> ArraySlice<A>()
{
  result = lazy protocol witness table cache variable for type ArraySlice<TPNumberPadCharacter> and conformance <A> ArraySlice<A>;
  if (!lazy protocol witness table cache variable for type ArraySlice<TPNumberPadCharacter> and conformance <A> ArraySlice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss10ArraySliceVySo20TPNumberPadCharacterVGMd);
    lazy protocol witness table accessor for type TPNumberPadCharacter and conformance TPNumberPadCharacter(&lazy protocol witness table cache variable for type TPNumberPadCharacter and conformance TPNumberPadCharacter, type metadata accessor for TPNumberPadCharacter);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArraySlice<TPNumberPadCharacter> and conformance <A> ArraySlice<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ButtonVyACyAA5ImageVAA12_FrameLayoutVGG_Qo_AA0I18AttachmentModifierVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<ModifiedContent<Image, _FrameLayout>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGGMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type TPNumberPadCharacter and conformance TPNumberPadCharacter(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyACyACyACyAA6VStackVyAA05TupleE0Vy15ConversationKit22VideoReactionButtonRowV_APtGGAA30_EnvironmentKeyWritingModifierVyAN0pq6PickerE5Model33_5A0B7B44E54382705C993A39EDE5E358LLCSgGGAA017_AppearanceActionW0VGAA14_PaddingLayoutVGAA12_FrameLayoutVGAA011_BackgroundW0VyAA14GeometryReaderVyACyACyACyAA06_ShapeE0VyAN13ThoughtBubbleVAA8MaterialVGAA026_InsettableBackgroundShapeW0VyAA5ColorVA15_GGAA13_ShadowEffectVGAA010_AnimationW0VySbGGGGGAA016_CoordinateSpaceW0VySSGG_Qo_AA0i10AttachmentW0VGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6VStackVyAA9TupleViewVy15ConversationKit22VideoReactionButtonRowV_AJtGGAA30_EnvironmentKeyWritingModifierVyAH0jk6PickerG5Model33_5A0B7B44E54382705C993A39EDE5E358LLCSgGGAA017_AppearanceActionQ0VGAA14_PaddingLayoutVGAA12_FrameLayoutVGAA011_BackgroundQ0VyAA14GeometryReaderVyACyACyACyAA06_ShapeG0VyAH13ThoughtBubbleVAA8MaterialVGAA026_InsettableBackgroundShapeQ0VyAA5ColorVA9_GGAA13_ShadowEffectVGAA010_AnimationQ0VySbGGGGGAA016_CoordinateSpaceQ0VySSGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(VideoReactionButtonRow, VideoReactionButtonRow)>>, _EnvironmentKeyWritingModifier<VideoReactionPickerViewModel?>>, _AppearanceActionModifier>, _PaddingLayout>, _FrameLayout>, _BackgroundModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<ThoughtBubble, Material>, _InsettableBackgroundShapeModifier<Color, ThoughtBubble>>, _ShadowEffect>, _AnimationModifier<Bool>>>>>, _CoordinateSpaceModifier<String>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type VideoReactionButtonStyle and conformance VideoReactionButtonStyle(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyAA6ZStackVyAA05TupleE0VyACy15ConversationKit012AnimatedSaveE0VAA14_OpacityEffectVG_ACyACyACyACyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonU0Rd__lFQOyAA0W0VyACyACyACyACyAA4TextVAA14_PaddingLayoutVGA_GAA010_FlexFrameZ0VGAA34_InsettableBackgroundShapeModifierVyAA8MaterialVAA16RoundedRectangleVGGG_AA010BorderlesswU0VQo_AA19_BackgroundModifierVyAA06_ShapeE0VyA10_AA017HierarchicalShapeU0VGGGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA32_EnvironmentKeyTransformModifierVySbGGAA010_FixedSizeZ0VGSgtGGARGAA18_AnimationModifierVyAP0Q5StateOGG_Qo_AA0I18AttachmentModifierVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyACy15ConversationKit012AnimatedSaveG0VAA14_OpacityEffectVG_ACyACyACyACyAA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAA0Q0VyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAWGAA010_FlexFrameT0VGAA34_InsettableBackgroundShapeModifierVyAA8MaterialVAA16RoundedRectangleVGGG_AA010BorderlessqO0VQo_AA01_xZ0VyAA01_yG0VyA6_AA012HierarchicalyO0VGGGAA022_EnvironmentKeyWritingZ0VyAA11ColorSchemeOGGAA024_EnvironmentKeyTransformZ0VySbGGAA010_FixedSizeT0VGSgtGGALGAA010_AnimationZ0VyAJ0K5StateOGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<AnimatedSaveView, _OpacityEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, HierarchicalShapeStyle>>>, _EnvironmentKeyWritingModifier<ColorScheme>>, _EnvironmentKeyTransformModifier<Bool>>, _FixedSizeLayout>?)>>, _OpacityEffect>, _AnimationModifier<AnimatedSaveView.SaveState>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA5GroupVyAA012_ConditionalD0VyACyAA6VStackVyAA05TupleE0VyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameS0VG_ACyACyAeAE9lineLimit_13reservesSpaceQrSi_SbtFQOyAA4TextV_Qo_AXyAA13TextAlignmentOGGAA010_FixedSizeS0VGtGGAA05_FlexzS0VGAA6HStackVyAQyA3__ACyACyA7_AXySiSgGGA14_GtGGGG_Qo_AA0i10AttachmentW0VGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA6VStackVyAA9TupleViewVyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA06_FrameM0VG_AGyAGyAA0I0PAAE9lineLimit_13reservesSpaceQrSi_SbtFQOyAA4TextV_Qo_ARyAA0Y9AlignmentOGGAA010_FixedSizeM0VGtGGAA05_FlextM0VGAA6HStackVyAKyAY_AGyAGyA3_ARySiSgGGA10_GtGGGGMd);
    lazy protocol witness table accessor for type Group<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<ColorScheme>>, _FrameLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.lineLimit(_:reservesSpace:)>>.0, _EnvironmentKeyWritingModifier<TextAlignment>>, _FixedSizeLayout>)>>, _FlexFrameLayout>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<ColorScheme>>, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>)>>>> and conformance <A> Group<A>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA6ZStackVyAA05TupleE0VyAA011StrokeShapeE0VyAA4PathVAA15ForegroundStyleVAA05EmptyE0VG_AeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAOyAA08_TrimmedO0VyAQGAA04TintoR0VAUG_12CoreGraphics7CGFloatVQo_SgACyACyACyACyACyAA01_oE0VyAA9RectangleVA2_GAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA18_AnimationModifierVySbGGA24_y15ConversationKit013ShutterButtonR0V05InnerR0OGGA25_GtGGA15_G_Qo_AA0I18AttachmentModifierVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA011StrokeShapeG0VyAA4PathVAA15ForegroundStyleVAA05EmptyG0VG_AA0G0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAIyAA08_TrimmedI0VyAKGAA04TintiL0VAOG_12CoreGraphics7CGFloatVQo_SgACyACyACyACyACyAA01_iG0VyAA9RectangleVAZGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedW0VGGAA18_AnimationModifierVySbGGA20_y15ConversationKit013ShutterButtonL0V05InnerL0OGGA21_GtGGA11_GMd);
    lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(StrokeShapeView<Path, ForegroundStyle, EmptyView>, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _FrameLayout>, _ClipEffect<RoundedRectangle>>, _AnimationModifier<Bool>>, _AnimationModifier<ShutterButtonStyle.InnerStyle>>, _AnimationModifier<Bool>>)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ShutterModel and conformance ShutterModel(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TPNumberPadCharacter and conformance TPNumberPadCharacter(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type KeypadButtonStyle and conformance KeypadButtonStyle()
{
  result = lazy protocol witness table cache variable for type KeypadButtonStyle and conformance KeypadButtonStyle;
  if (!lazy protocol witness table cache variable for type KeypadButtonStyle and conformance KeypadButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KeypadButtonStyle and conformance KeypadButtonStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

id partial apply for closure #3 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in ClarityUIKeypadView.body.getter(char a1)
{
  v2 = &selRef_playSoundForDialerCharacter_;
  if ((a1 & 1) == 0)
  {
    v2 = &selRef_stopSoundForDialerCharacter_;
  }

  return [*(v1 + 72) *v2];
}

uint64_t outlined bridged method (pb) of @objc static TPDialerNumberPad.dialerNumberPadFullCharacters()(void *a1)
{
  v1 = [a1 dialerNumberPadFullCharacters];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

id PictureInPictureWrapperView._touchInsets.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PictureInPictureWrapperView();
  return objc_msgSendSuper2(&v2, sel__touchInsets);
}

void PictureInPictureWrapperView._touchInsets.setter(double a1, double a2, double a3, double a4)
{
  v9.receiver = v4;
  v9.super_class = type metadata accessor for PictureInPictureWrapperView();
  objc_msgSendSuper2(&v9, sel__setTouchInsets_, a1, a2, a3, a4);
  PictureInPictureWrapperView._touchInsets.didset();
}

uint64_t PictureInPictureWrapperView.layoutSubviews()()
{
  v1 = [v0 subviews];
  type metadata accessor for UIView();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = specialized Array.count.getter(v2);
  if (result)
  {
    v4 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v5 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1BFB22010](v5, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      [v0 bounds];
      [v7 setFrame_];
    }

    while (v4 != v5);
  }
}

id PictureInPictureWrapperView.addSubview(_:)(void *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for PictureInPictureWrapperView();
  objc_msgSendSuper2(&v4, sel_addSubview_, a1);
  [v1 bounds];
  return [a1 setFrame_];
}

void PictureInPictureWrapperView._touchInsets.didset()
{
  v1 = [v0 superview];
  if (v1)
  {
    v2 = v1;
    [v0 _touchInsets];
    [v2 _setTouchInsets_];
  }
}

id PictureInPictureWrapperView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for PictureInPictureWrapperView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id PictureInPictureWrapperView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PictureInPictureWrapperView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id PictureInPictureWrapperView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PictureInPictureWrapperView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void key path getter for PictureInPictureWrapperViewController.touchInsets : <A>PictureInPictureWrapperViewController<A>(void **a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x68))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

void PictureInPictureWrapperViewController.touchInsets.didset()
{
  v1 = [v0 viewIfLoaded];
  if (v1)
  {
    v2 = v1;
    v3 = &v0[direct field offset for PictureInPictureWrapperViewController.touchInsets];
    swift_beginAccess();
    [v2 _setTouchInsets_];
  }

  v4 = [*&v0[direct field offset for PictureInPictureWrapperViewController.wrappedViewController] viewIfLoaded];
  if (v4)
  {
    v5 = v4;
    v6 = &v0[direct field offset for PictureInPictureWrapperViewController.touchInsets];
    swift_beginAccess();
    [v5 _setTouchInsets_];
  }
}

double PictureInPictureWrapperViewController.touchInsets.getter()
{
  v1 = v0 + direct field offset for PictureInPictureWrapperViewController.touchInsets;
  swift_beginAccess();
  return *v1;
}

void PictureInPictureWrapperViewController.touchInsets.setter(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + direct field offset for PictureInPictureWrapperViewController.touchInsets);
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  PictureInPictureWrapperViewController.touchInsets.didset();
}

void (*PictureInPictureWrapperViewController.touchInsets.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return PictureInPictureWrapperViewController.touchInsets.modify;
}

void PictureInPictureWrapperViewController.touchInsets.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    PictureInPictureWrapperViewController.touchInsets.didset();
  }
}

id PictureInPictureWrapperViewController.init(wrappedViewController:)(uint64_t a1)
{
  v2 = (v1 + direct field offset for PictureInPictureWrapperViewController.touchInsets);
  v3 = *(MEMORY[0x1E69DDCE0] + 16);
  *v2 = *MEMORY[0x1E69DDCE0];
  v2[1] = v3;
  *(v1 + direct field offset for PictureInPictureWrapperViewController.wrappedViewController) = a1;
  OUTLINED_FUNCTION_2_65();
  return objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0, 0);
}

id PictureInPictureWrapperViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void PictureInPictureWrapperViewController.init(coder:)()
{
  v1 = (v0 + direct field offset for PictureInPictureWrapperViewController.touchInsets);
  v2 = *(MEMORY[0x1E69DDCE0] + 16);
  *v1 = *MEMORY[0x1E69DDCE0];
  v1[1] = v2;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id PictureInPictureWrapperViewController.updatePreferredContentSize()()
{
  [*&v0[direct field offset for PictureInPictureWrapperViewController.wrappedViewController] preferredContentSize];

  return [v0 setPreferredContentSize_];
}

Swift::Void __swiftcall PictureInPictureWrapperViewController.loadView()()
{
  v1 = [objc_allocWithZone(type metadata accessor for PictureInPictureWrapperView()) initWithFrame_];
  [v0 setView_];

  v2 = *&v0[direct field offset for PictureInPictureWrapperViewController.wrappedViewController];
  [v2 willMoveToParentViewController_];
  v3 = OUTLINED_FUNCTION_3_64();
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  v5 = [v2 view];
  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  [v4 addSubview_];

  [v0 addChildViewController_];
  [v2 didMoveToParentViewController_];
  v7 = [v2 view];
  if (!v7)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v8 = v7;
  [v7 setAutoresizingMask_];
}

void @objc PictureInPictureWrapperViewController.loadView()(void *a1)
{
  v1 = a1;
  PictureInPictureWrapperViewController.loadView()();
}

Swift::Void __swiftcall PictureInPictureWrapperViewController.viewDidLoad()()
{
  v1 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_2_65();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  PictureInPictureWrapperViewController.updatePreferredContentSize()();
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = *((*v1 & *v0) + 0x68);
    v4();
    [v3 _setTouchInsets_];

    v5 = [*(v0 + direct field offset for PictureInPictureWrapperViewController.wrappedViewController) view];
    if (v5)
    {
      v6 = v5;
      v4();
      [v6 _setTouchInsets_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void @objc PictureInPictureWrapperViewController.viewDidLoad()(void *a1)
{
  v1 = a1;
  PictureInPictureWrapperViewController.viewDidLoad()();
}

id PictureInPictureWrapperViewController.preferredContentSizeDidChange(forChildContentContainer:)(uint64_t a1)
{
  OUTLINED_FUNCTION_2_65();
  objc_msgSendSuper2(&v3, sel_preferredContentSizeDidChangeForChildContentContainer_, a1);
  return PictureInPictureWrapperViewController.updatePreferredContentSize()();
}

void @objc PictureInPictureWrapperViewController.preferredContentSizeDidChange(forChildContentContainer:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  PictureInPictureWrapperViewController.preferredContentSizeDidChange(forChildContentContainer:)(a3);
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall PictureInPictureWrapperViewController.handlePictureInPictureRestored()()
{
  PictureInPictureWrapperViewController.updatePreferredContentSize()();
  v1 = [*(v0 + direct field offset for PictureInPictureWrapperViewController.wrappedViewController) view];
  if (v1)
  {
    v2 = v1;
    [v1 setAutoresizingMask_];
  }

  else
  {
    __break(1u);
  }
}

__C::CGRect __swiftcall PictureInPictureWrapperViewController.frameForRestoreAnimation()()
{
  v0 = OUTLINED_FUNCTION_3_64();
  if (!v0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = v0;
  v6 = [v0 window];

  if (!v6 || (v7 = [v6 windowScene], v6, !v7))
  {
    v13 = [objc_opt_self() mainScreen];
    [v13 _referenceBounds];
    OUTLINED_FUNCTION_40_1();
    goto LABEL_8;
  }

  v8 = [v7 screen];
  v9 = [v8 fixedCoordinateSpace];

  v10 = OUTLINED_FUNCTION_3_64();
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v10;
  [v10 bounds];
  OUTLINED_FUNCTION_40_1();

  v12 = OUTLINED_FUNCTION_3_64();
  if (!v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = v12;
  v14 = OUTLINED_FUNCTION_35();
  [v15 v16];
  OUTLINED_FUNCTION_40_1();

  swift_unknownObjectRelease();
LABEL_8:

  v1 = OUTLINED_FUNCTION_35();
LABEL_12:
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

double @objc PictureInPictureWrapperViewController.frameForRestoreAnimation()(void *a1)
{
  v1 = a1;
  *&v2 = PictureInPictureWrapperViewController.frameForRestoreAnimation()();

  return v2;
}

CGSize __swiftcall PictureInPictureWrapperViewController.preferredPiPContentAspectRatio()()
{
  [*(v0 + direct field offset for PictureInPictureWrapperViewController.wrappedViewController) preferredPiPContentAspectRatio];
  result.height = v2;
  result.width = v1;
  return result;
}

double @objc PictureInPictureWrapperViewController.preferredPiPContentAspectRatio()(void *a1)
{
  v1 = a1;
  *&v2 = *&PictureInPictureWrapperViewController.preferredPiPContentAspectRatio()();

  return v2;
}

id @objc PictureInPictureWrapperViewController.viewControllerForPiP()@<X0>(UIViewController_optional *a1@<X8>)
{
  PictureInPictureWrapperViewController.viewControllerForPiP()(a1);

  return v1;
}

id PictureInPictureWrapperViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

void @objc PictureInPictureWrapperViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  PictureInPictureWrapperViewController.init(nibName:bundle:)();
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance PictureInPictureWrapper<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDB778](a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance PictureInPictureWrapper<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDB740](a1, a2, a3, WitnessTable);
}

void protocol witness for View.body.getter in conformance PictureInPictureWrapper<A>()
{
  swift_getWitnessTable();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t type metadata instantiation function for PictureInPictureWrapper()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t type metadata accessor for UIView()
{
  result = lazy cache variable for type metadata for UIView;
  if (!lazy cache variable for type metadata for UIView)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIView);
  }

  return result;
}

uint64_t specialized SyncedScreeningAlphaGradientView.AnimatedState.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - v3;
  v5 = direct field offset for SyncedScreeningAlphaGradientView.AnimatedState._minOpacity;
  v11 = 0;
  Published.init(initialValue:)();
  v6 = *(v2 + 32);
  v6(v0 + v5, v4, v1);
  v7 = direct field offset for SyncedScreeningAlphaGradientView.AnimatedState._maxOpacity;
  v11 = 0;
  Published.init(initialValue:)();
  v6(v0 + v7, v4, v1);
  v8 = direct field offset for SyncedScreeningAlphaGradientView.AnimatedState._unitStart;
  v11 = 0;
  Published.init(initialValue:)();
  v6(v0 + v8, v4, v1);
  return v0;
}

uint64_t specialized implicit closure #2 in implicit closure #1 in variable initialization expression of SyncedScreeningAlphaGradientView._viewState()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32SyncedScreeningAlphaGradientViewV13AnimatedState33_BB03C5CC00615F544789F4E076AB947ELLCySo6UIViewC_GMd);
  swift_allocObject();
  return specialized SyncedScreeningAlphaGradientView.AnimatedState.init()();
}

uint64_t one-time initialization function for positionalData()
{
  type metadata accessor for PositionalData();
  swift_allocObject();
  result = PositionalData.init()();
  static TranscriptionViewComposer.positionalData = result;
  return result;
}

uint64_t *TranscriptionViewComposer.positionalData.unsafeMutableAddressor()
{
  if (one-time initialization token for positionalData != -1)
  {
    OUTLINED_FUNCTION_0_70();
  }

  return &static TranscriptionViewComposer.positionalData;
}

uint64_t static TranscriptionViewComposer.positionalData.getter()
{
  if (one-time initialization token for positionalData != -1)
  {
    OUTLINED_FUNCTION_0_70();
  }
}

void TranscriptionViewComposer.compose(with:createTextField:liveReply:textFieldPadding:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit25TranscriptionViewComposer_featureFlags);
  if ((([v3 receptionistEnabled] & 1) != 0 || objc_msgSend(v3, sel_LVMEverywhere)) && a1)
  {
    v5 = one-time initialization token for shared;
    v6 = a1;
    if (v5 != -1)
    {
      swift_once();
    }

    ReceiptionistCaptionsProviderBuilder.build(with:)(v6);
    type metadata accessor for CallScreeningTranscriptsService();
    v7 = [v6 callUUID];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    swift_unknownObjectRetain();
    v8 = [v6 lastReceptionistMessage];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    CallScreeningTranscriptsService.__allocating_init(_:captionsProvider:initialMessage:liveReply:)();
    objc_allocWithZone(type metadata accessor for CallScreeningViewController());

    v9 = CallScreeningViewController.init(service:createTextField:showEmptyState:liveReply:textFieldPadding:)();
    v10 = [objc_opt_self() conversationKit];
    v14._object = 0xE000000000000000;
    OUTLINED_FUNCTION_5_5();
    v11._object = 0x80000001BC4F9C10;
    v11._countAndFlagsBits = 0xD000000000000011;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v14._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v13, v10, v12, v14);

    LockStateContentViewController.inLockStateViewController(subtitle:)();

    swift_unknownObjectRelease();
  }

  else
  {
    TranscriptionViewComposer.compose()(v4);
  }
}

void __swiftcall TranscriptionViewComposer.compose()(UIViewController *__return_ptr retstr)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  OUTLINED_FUNCTION_2_7();
  v65 = v2;
  MEMORY[0x1EEE9AC00](v3);
  v64 = &v58 - v4;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit28AudioCallMiddleContainerViewVyAA013TranscriptionG0VGMd);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v58 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v58 - v10;
  v12 = type metadata accessor for TranscriptionView();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v16 = objc_opt_self();

  v17 = [v16 sharedInstance];
  v18 = [v17 screeningCall];

  if (v18)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v19 = *(*static CallScreeningRTTHelper.shared + 184);
    v20 = v18;
    if (v19(v18))
    {
      v21 = [objc_opt_self() viewControllerForCall_];

      if (v21)
      {

        return;
      }
    }

    else
    {
    }
  }

  v59 = v1;
  v60 = v11;
  v22 = one-time initialization token for positionalData;

  if (v22 != -1)
  {
    OUTLINED_FUNCTION_0_70();
  }

  v23 = static TranscriptionViewComposer.positionalData;
  v24 = [objc_opt_self() conversationKit];
  v66._object = 0xE000000000000000;
  OUTLINED_FUNCTION_5_5();
  v25._object = 0x80000001BC4FA3D0;
  v25._countAndFlagsBits = 0xD000000000000025;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v66._countAndFlagsBits = 0;
  v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v27, v24, v26, v66);

  *v15 = 0x10000;
  v29 = v12[6];
  *&v15[v29] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for TranscriptionViewModel(0);
  _s15ConversationKit22TranscriptionViewModelCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type TranscriptionViewModel and conformance TranscriptionViewModel, type metadata accessor for TranscriptionViewModel);

  *(v15 + 1) = ObservedObject.init(wrappedValue:)();
  *(v15 + 2) = v30;
  *&v15[v12[7]] = v23;
  *&v15[v12[8]] = v28;
  v31 = objc_allocWithZone(MEMORY[0x1E69D8BE8]);

  v32 = [v31 init];
  [v32 LVMEverywhere];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFont);
  v33 = OUTLINED_FUNCTION_5_42();
  isa = UIFont.withTraits(_:)(0x10000u).super.isa;

  [(objc_class *)isa pointSize];
  v36 = v35;

  v37 = OBJC_IVAR____TtC15ConversationKit14PositionalData_autoScrollTolerance;
  swift_beginAccess();
  *(v23 + v37) = v36 + v36;
  PositionalData.updateBottomVisibility()();

  v38 = v60;
  outlined init with copy of TranscriptionView(v15, v60);
  v39 = (v38 + *(v61 + 36));

  v40 = v38;
  *v39 = ObservedObject.init(wrappedValue:)();
  v39[1] = v41;
  v42 = v63;
  outlined init with copy of AudioCallMiddleContainerView<TranscriptionView>(v38, v63);
  v43 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit37MaskSizingLockScreenHostingControllerCyAA28AudioCallMiddleContainerViewVyAA013TranscriptionM0VGGMd));
  outlined init with copy of AudioCallMiddleContainerView<TranscriptionView>(v42, v62);
  v44 = LockScreenHostingController.init(rootView:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v42, &_s15ConversationKit28AudioCallMiddleContainerViewVyAA013TranscriptionG0VGMd);
  v45 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  [v45 LVMEverywhere];

  v46 = OUTLINED_FUNCTION_5_42();
  v47 = UIFont.withTraits(_:)(0x10000u).super.isa;

  [(objc_class *)v47 pointSize];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  v48 = v64;
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySb_GMd);
  v49 = v59;
  Publisher.eraseToAnyPublisher()();
  (*(v65 + 8))(v48, v49);
  v50 = objc_allocWithZone(type metadata accessor for BlurryMaskView());
  v51 = BlurryMaskView.init(textSize:isBottomVisiblePublisher:topPositions:)();
  v52 = v44;
  v53 = [v52 view];
  if (v53)
  {
    v54 = v53;
    [v53 setMaskView_];

    v55 = [v52 view];
    if (v55)
    {
      v56 = v55;
      v57 = [objc_opt_self() clearColor];
      [v56 setBackgroundColor_];

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v40, &_s15ConversationKit28AudioCallMiddleContainerViewVyAA013TranscriptionG0VGMd);
      outlined destroy of TranscriptionView(v15);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void __swiftcall TranscriptionViewComposer.composeBackground(with:)(UIViewController *__return_ptr retstr, UIView *with)
{
  if (one-time initialization token for positionalData != -1)
  {
    OUTLINED_FUNCTION_0_70();
  }

  type metadata accessor for PositionalData();
  _s15ConversationKit22TranscriptionViewModelCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type PositionalData and conformance PositionalData, type metadata accessor for PositionalData);

  v9[0] = with;
  *&v9[1] = xmmword_1BC4BD470;
  *&v9[3] = xmmword_1BC4BD480;
  *&v9[5] = xmmword_1BC4BD490;
  v9[7] = ObservedObject.init(wrappedValue:)();
  v9[8] = v3;
  v9[9] = specialized implicit closure #2 in implicit closure #1 in variable initialization expression of SyncedScreeningAlphaGradientView._viewState;
  v9[10] = 0;
  LOBYTE(v9[11]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32SyncedScreeningAlphaGradientViewVySo6UIViewCGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type SyncedScreeningAlphaGradientView<UIView> and conformance SyncedScreeningAlphaGradientView<A>, &_s15ConversationKit32SyncedScreeningAlphaGradientViewVySo6UIViewCGMd);
  v4 = View.inLockScreenHostingController()();
  memcpy(__dst, v9, 0x59uLL);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit32SyncedScreeningAlphaGradientViewVySo6UIViewCGMd);
  v5 = v4;
  v6 = [v5 view];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_opt_self() clearColor];
    [v7 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

id TranscriptionViewComposer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TranscriptionViewComposer.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC15ConversationKit25TranscriptionViewComposer_featureFlags;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

id TranscriptionViewComposer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CNKTranscriptionViewComposerFactory.makeViewComposer()()
{
  v0 = objc_allocWithZone(type metadata accessor for TranscriptionViewComposer());

  return [v0 init];
}

CNKTranscriptionViewComposerFactory __swiftcall CNKTranscriptionViewComposerFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

Swift::Void __swiftcall MaskSizingLockScreenHostingController.viewDidLayoutSubviews()()
{
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_7_42();
  objc_msgSendSuper2(&v17, sel_viewDidLayoutSubviews);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = [v1 maskView];

  if (!v3)
  {
    return;
  }

  v4 = [v0 view];
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [v4 maskView];

  if (!v6)
  {
    return;
  }

  v7 = [v0 view];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v8 = v7;
  [v7 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [v6 setFrame_];
}

void @objc MaskSizingLockScreenHostingController.viewDidLayoutSubviews()(void *a1)
{
  v1 = a1;
  MaskSizingLockScreenHostingController.viewDidLayoutSubviews()();
}

uint64_t MaskSizingLockScreenHostingController.init(rootView:)(uint64_t a1)
{
  OUTLINED_FUNCTION_13_2();
  v3 = *((*MEMORY[0x1E69E7D40] & v2) + class metadata base offset for MaskSizingLockScreenHostingController);
  OUTLINED_FUNCTION_2_7();
  v5 = v4;
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v5 + 16))(&v11 - v8, a1, v3, v7);
  v9 = LockScreenHostingController.init(rootView:)();
  (*(v5 + 8))(a1, v3);
  return v9;
}

void *MaskSizingLockScreenHostingController.init(coder:rootView:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13_2();
  v4 = *((*MEMORY[0x1E69E7D40] & v3) + class metadata base offset for MaskSizingLockScreenHostingController);
  OUTLINED_FUNCTION_2_7();
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  (*(v6 + 16))(&v14 - v9, v8);
  v10 = LockScreenHostingController.init(coder:rootView:)();
  v11 = *(v6 + 8);
  v12 = v10;
  v11(a2, v4);
  if (v10)
  {
  }

  return v10;
}

id MaskSizingLockScreenHostingController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id MaskSizingLockScreenHostingController.init(coder:)(void *a1)
{
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_7_42();
  v2 = objc_msgSendSuper2(&v4, sel_initWithCoder_, a1);

  if (v2)
  {
  }

  return v2;
}

id MaskSizingLockScreenHostingController.__deallocating_deinit()
{
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_7_42();
  return objc_msgSendSuper2(&v1, sel_dealloc);
}

uint64_t outlined init with copy of TranscriptionView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of AudioCallMiddleContainerView<TranscriptionView>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit28AudioCallMiddleContainerViewVyAA013TranscriptionG0VGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TranscriptionView(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptionView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s15ConversationKit22TranscriptionViewModelCAC7Combine16ObservableObjectAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CNKCommand.isAvailableWhileLocked.getter(unint64_t a1)
{
  if (a1 >= 0x16)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, &static Log.default);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1BBC58000, v3, v4, "Unknown enum case", v5, 2u);
      MEMORY[0x1BFB23DF0](v5, -1, -1);
    }

    LOBYTE(v1) = 0;
  }

  else
  {
    v1 = 0x3F6EFCu >> a1;
  }

  return v1 & 1;
}

void specialized Sequence.first(where:)(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for NSFastEnumerationIterator();
  v23 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  NSOrderedSet.makeIterator()();
  lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator();
  v6 = &lazy cache variable for type metadata for TUSenderIdentity;
  v25 = v3;
  v26 = v5;
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (!v31)
    {
      (*(v23 + 8))(v5, v3);
      v22 = v24;
      *v24 = 0u;
      v22[1] = 0u;
      goto LABEL_18;
    }

    outlined init with take of Any(&v30, v29);
    outlined init with copy of Any(v29, v28);
    type metadata accessor for NSObject(0, v6);
    if (!swift_dynamicCast())
    {
      goto LABEL_13;
    }

    v7 = v32;
    v8 = [v32 handle];
    if (!v8)
    {

      goto LABEL_13;
    }

    v9 = v8;
    if ([a1 isEqualToHandle_])
    {
      goto LABEL_16;
    }

    v27 = v7;
    v10 = v6;
    v11 = a1;
    v12 = [a1 value];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = [v9 value];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (v13 == v17 && v15 == v19)
    {
      break;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    a1 = v11;
    v3 = v25;
    v5 = v26;
    v6 = v10;
    if (v21)
    {
      goto LABEL_17;
    }

LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  a1 = v11;
  v3 = v25;
  v5 = v26;
  v7 = v27;
LABEL_16:

LABEL_17:
  (*(v23 + 8))(v5, v3);
  outlined init with take of Any(v29, v24);
LABEL_18:
}

void PeoplePickerViewController.updatePillView(callerID:)(void *a1)
{
  if (a1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_callerIDPillView);
    v4 = a1;
    [v3 setHidden_];
    v20 = v4;
    v5 = PeoplePickerViewController.matchingSenderIdentity(for:)(a1);

    if (v5)
    {
      v6 = [v5 localizedShortName];
      v7 = v6;
      if (!v6)
      {
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v7 = MEMORY[0x1BFB209B0](v8);
      }

      OUTLINED_FUNCTION_1_70(v6, sel_setBadgeText_);

      [v3 setBadgeSymbolName_];
      v9 = [v5 localizedName];
      v10 = v9;
      if (!v9)
      {
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = MEMORY[0x1BFB209B0](v11);
      }

      OUTLINED_FUNCTION_1_70(v9, sel_setTitle_);
    }

    else
    {
      v13 = MEMORY[0x1BFB209B0](0, 0xE000000000000000);
      [v3 setBadgeText_];

      outlined bridged method (mbnn) of @objc TPPillView.badgeSymbolName.setter(0x65706F6C65766E65, 0xED00006C6C69662ELL, v3);
      v14 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2C0))();
      PeoplePickerViewController.emailPillTitle(for:allCallerIDs:)(v20, v14);
      v16 = v15;
      v18 = v17;

      v10 = MEMORY[0x1BFB209B0](v16, v18);

      OUTLINED_FUNCTION_1_70(v19, sel_setTitle_);
    }
  }

  else
  {
    v12 = *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_callerIDPillView);

    [v12 setHidden_];
  }
}

Swift::Void __swiftcall PeoplePickerViewController.refreshCallerIDPicker()()
{
  if (PeoplePickerViewController.hasMultipleSenderIdentities()())
  {
    v1 = [*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_accountFetcher) validCallerIDs];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v3 = PeoplePickerViewController.sortCallerIDs(_:)(v2);

    (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2C8))(v3);

    PeoplePickerViewController.pickDefaultSelectedCallerID()();
  }
}

void *PeoplePickerViewController.matchingSenderIdentity(for:)(void *result)
{
  if (result)
  {
    v2 = result;
    if ([v2 type] == 2)
    {
      v3 = [*(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_callProviderManager) faceTimeProvider];
      v4 = [v3 prioritizedSenderIdentities];
      v5 = v2;
      specialized Sequence.first(where:)(v5, &v7);

      if (v8)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUSenderIdentity);
        if (swift_dynamicCast())
        {
          return v6;
        }

        else
        {
          return 0;
        }
      }

      outlined destroy of Any?(&v7);
    }

    else
    {
    }

    return 0;
  }

  return result;
}

BOOL PeoplePickerViewController.hasMultipleSenderIdentities()()
{
  if (_TUIsInternalInstall())
  {
    v1 = [objc_opt_self() tu_defaults];
    v2 = MEMORY[0x1BFB209B0](0xD00000000000001FLL, 0x80000001BC4FA600);
    v3 = [v1 BOOLForKey_];

    if (v3)
    {
      return 1;
    }
  }

  v5 = [*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_callProviderManager) faceTimeProvider];
  v6 = [v5 prioritizedSenderIdentities];
  v7 = [v6 count];

  return v7 > 1;
}

uint64_t PeoplePickerViewController.sortCallerIDs(_:)(unint64_t a1)
{
  v3 = type metadata accessor for NSFastEnumerationIterator();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x1E69E7CC0];
  if (v8 < 1)
  {
    return v9;
  }

  v22 = v3;
  v27 = MEMORY[0x1E69E7CC0];
  v10 = [*(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_callProviderManager) faceTimeProvider];
  v11 = [v10 prioritizedSenderIdentities];

  NSOrderedSet.makeIterator()();
  while (1)
  {
    NSFastEnumerationIterator.next()();
    if (!v26)
    {
      break;
    }

    outlined init with take of Any(&v25, &v24);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUSenderIdentity);
    if (swift_dynamicCast())
    {
      v12 = v23;
      v13 = [v23 handle];
      if (v13)
      {
        v14 = v13;
        MEMORY[0x1BFB20CC0]();
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v21 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v9 = v27;
      }

      else
      {
      }
    }
  }

  (*(v4 + 8))(v7, v22);
  result = specialized Array.count.getter(a1);
  if (!result)
  {
    return v9;
  }

  v16 = result;
  if (result >= 1)
  {
    for (i = 0; i != v16; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1BFB22010](i, a1);
      }

      else
      {
        v18 = *(a1 + 8 * i + 32);
      }

      v19 = v18;
      if ([v18 type] == 2)
      {
      }

      else
      {
        v20 = v19;
        MEMORY[0x1BFB20CC0]();
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v9 = v27;
      }
    }

    return v9;
  }

  __break(1u);
  return result;
}

void PeoplePickerViewController.pickDefaultSelectedCallerID()()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x2D8);
  v3 = v2();
  if (v3)
  {
LABEL_2:
  }

  else
  {
    v60 = v2;
    v4 = *((*v1 & *v0) + 0x2C0);
    v5 = v4();
    v6 = specialized Array.count.getter(v5);

    if (v6 >= 2)
    {
      v7 = [*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_accountFetcher) defaultSelectedCallerID];
      v59 = v0;
      v8 = v4();
      v9 = specialized Array.count.getter(v8);
      v10 = v9;
      if (v7)
      {
        v58 = v4;
        v11 = 0;
        v61 = v8 & 0xFFFFFFFFFFFFFF8;
        v63 = v8 & 0xC000000000000001;
        while (1)
        {
          if (v10 == v11)
          {
            v5 = v7;

            v13 = 0;
            goto LABEL_29;
          }

          if (v63)
          {
            v12 = MEMORY[0x1BFB22010](v11, v8);
          }

          else
          {
            if (v11 >= *(v61 + 16))
            {
              goto LABEL_53;
            }

            v12 = *(v8 + 8 * v11 + 32);
          }

          v13 = v12;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
          if (static NSObject.== infix(_:_:)())
          {
            v5 = v7;
            goto LABEL_28;
          }

          v6 = v8;
          v14 = v10;
          v15 = [v13 value];
          v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v18 = v17;

          v5 = v7;
          v19 = [v7 value];
          v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = v21;

          if (v16 == v20 && v18 == v22)
          {
            break;
          }

          v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v1)
          {
            goto LABEL_28;
          }

          ++v11;
          v10 = v14;
          v8 = v6;
          v7 = v5;
        }

LABEL_28:

LABEL_29:
        v25 = *((*MEMORY[0x1E69E7D40] & *v59) + 0x2E0);
        v26 = v25(v13);
        v27 = (v60)(v26);
        if (v27)
        {
          v64 = v27;

          v3 = v64;
          goto LABEL_2;
        }

        if (one-time initialization token for peoplePicker != -1)
        {
          swift_once();
        }

        v28 = type metadata accessor for Logger();
        __swift_project_value_buffer(v28, static Logger.peoplePicker);
        v29 = v5;
        v30 = v59;
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v66 = v62;
          *v33 = 136315394;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
          v34 = v29;
          v35 = String.init<A>(reflecting:)();
          v65 = v29;
          v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v66);

          *(v33 + 4) = v37;
          *(v33 + 12) = 2080;
          v39 = v58;
          (v58)(v38);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8TUHandleCGMd);
          v40 = String.init<A>(reflecting:)();
          v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v66);

          *(v33 + 14) = v42;
          v29 = v65;
          _os_log_impl(&dword_1BBC58000, v31, v32, "Couldnt find a matching callerID with %s, out of callerIDs: %s", v33, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1BFB23DF0](v62, -1, -1);
          MEMORY[0x1BFB23DF0](v33, -1, -1);
        }

        else
        {

          v39 = v58;
        }

        v54 = v39();
        if (specialized Array.count.getter(v54))
        {
          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v54 & 0xC000000000000001) == 0, v54);
          if ((v54 & 0xC000000000000001) != 0)
          {
            v55 = MEMORY[0x1BFB22010](0, v54);
          }

          else
          {
            v55 = *(v54 + 32);
          }

          v56 = v55;
        }

        else
        {

          v56 = 0;
        }

        v25(v56);
      }

      else
      {
        if (v9)
        {
          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v8 & 0xC000000000000001) == 0, v8);
          if ((v8 & 0xC000000000000001) != 0)
          {
            v24 = MEMORY[0x1BFB22010](0, v8);
          }

          else
          {
            v24 = *(v8 + 32);
          }

          v6 = v24;
          v5 = v0;
        }

        else
        {

          v6 = 0;
          v5 = v0;
        }

        if (one-time initialization token for peoplePicker != -1)
        {
LABEL_54:
          swift_once();
        }

        v43 = type metadata accessor for Logger();
        __swift_project_value_buffer(v43, static Logger.peoplePicker);
        v44 = v6;
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = v1;
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v66 = v49;
          *v48 = 136315138;
          if (v6)
          {
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
            v50 = v44;
            v51 = String.init<A>(reflecting:)();
            v53 = v52;
          }

          else
          {
            v53 = 0xE300000000000000;
            v51 = 7104878;
          }

          v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v66);

          *(v48 + 4) = v57;
          _os_log_impl(&dword_1BBC58000, v45, v46, "Couldnt find a default selected callerID, just setting it to %s", v48, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v49);
          MEMORY[0x1BFB23DF0](v49, -1, -1);
          MEMORY[0x1BFB23DF0](v48, -1, -1);

          v1 = v47;
          v5 = v59;
        }

        else
        {
        }

        (*((*v1 & *v5) + 0x2E0))(v6);
      }
    }
  }
}

void PeoplePickerViewController.emailPillTitle(for:allCallerIDs:)(void *a1, uint64_t a2)
{
  v4 = TUHandle.isGmail()(0x632E6C69616D6740);
  v5 = MEMORY[0x1E69E7CC0];
  v107 = a1;
  if (v4)
  {
    v108 = MEMORY[0x1E69E7CC0];
    v6 = specialized Array.count.getter(a2);
    for (i = 0; v6 != i; ++i)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1BFB22010](i, a2);
      }

      else
      {
        if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_134;
        }

        v8 = *(a2 + 8 * i + 32);
      }

      v9 = v8;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_134:
        __break(1u);
        goto LABEL_135;
      }

      if (TUHandle.isGmail()(0x632E6C69616D6740))
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

    v14 = specialized Array.count.getter(v108);
    v15 = 0;
    while (1)
    {
      if (v14 == v15)
      {

        goto LABEL_71;
      }

      if ((v108 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1BFB22010](v15, v108);
      }

      else
      {
        if (v15 >= *(v108 + 16))
        {
          goto LABEL_137;
        }

        v16 = *(v108 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = [v16 value];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = [a1 value];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      if (v19 == v23 && v21 == v25)
      {

        if (v15)
        {
          goto LABEL_67;
        }

        goto LABEL_71;
      }

      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v27)
      {
        break;
      }

      v28 = __OFADD__(v15++, 1);
      a1 = v107;
      if (v28)
      {
        goto LABEL_138;
      }
    }

    while (1)
    {

      if (!v15)
      {
        break;
      }

LABEL_67:
      v48 = [objc_opt_self() conversationKit];
      v109._object = 0xE000000000000000;
      v49.value._countAndFlagsBits = 0x61737265766E6F43;
      v49.value._object = 0xEF74694B6E6F6974;
      v50._countAndFlagsBits = 0xD00000000000001DLL;
      v50._object = 0x80000001BC4FA6E0;
      v51._countAndFlagsBits = 0;
      v51._object = 0xE000000000000000;
      v109._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v50, v49, v48, v51, v109);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1BC4BA940;
      v53 = v15 + 1;
      if (!__OFADD__(v15, 1))
      {
        goto LABEL_128;
      }

      __break(1u);
    }

LABEL_71:
    v54 = "CALLER_ID_PICKER_GMAIL_ALT_%d";
    v55 = [objc_opt_self() conversationKit];
    goto LABEL_72;
  }

  if (TUHandle.isICloud()())
  {
    v10 = specialized Array.count.getter(a2);
    for (j = 0; v10 != j; ++j)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1BFB22010](j, a2);
      }

      else
      {
        if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_136;
        }

        v12 = *(a2 + 8 * j + 32);
      }

      v13 = v12;
      if (__OFADD__(j, 1))
      {
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

      if (TUHandle.isICloud()())
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

    v34 = specialized Array.count.getter(v5);
    v35 = 0;
    while (1)
    {
      if (v34 == v35)
      {

        goto LABEL_118;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x1BFB22010](v35, v5);
      }

      else
      {
        if (v35 >= *(v5 + 16))
        {
          goto LABEL_143;
        }

        v36 = *(v5 + 8 * v35 + 32);
      }

      v37 = v36;
      v38 = [v36 value];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = [a1 value];
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      if (v39 == v43 && v41 == v45)
      {

        if (v35)
        {
          goto LABEL_114;
        }

        goto LABEL_118;
      }

      v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v47)
      {
        break;
      }

      v28 = __OFADD__(v35++, 1);
      a1 = v107;
      if (v28)
      {
        goto LABEL_144;
      }
    }

    while (1)
    {

      if (!v35)
      {
        break;
      }

LABEL_114:
      v91 = [objc_opt_self() conversationKit];
      v110._object = 0xE000000000000000;
      v92.value._countAndFlagsBits = 0x61737265766E6F43;
      v92.value._object = 0xEF74694B6E6F6974;
      v93._countAndFlagsBits = 0xD00000000000001ELL;
      v93._object = 0x80000001BC4FA6A0;
      v94._countAndFlagsBits = 0;
      v94._object = 0xE000000000000000;
      v110._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v93, v92, v91, v94, v110);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1BC4BA940;
      v53 = v35 + 1;
      if (!__OFADD__(v35, 1))
      {
        goto LABEL_128;
      }

      __break(1u);
    }

LABEL_118:
    v56 = [objc_opt_self() conversationKit];
    v106 = 0xE000000000000000;
    v57 = 0x61737265766E6F43;
    v58 = 0xEF74694B6E6F6974;
    v60 = 0xD000000000000017;
    v59 = 0x80000001BC4FA6C0;
    goto LABEL_119;
  }

  v29 = a2 & 0xC000000000000001;
  if ((TUHandle.isGmail()(0x632E6F6F68617940) & 1) == 0)
  {
    v61 = specialized Array.count.getter(a2);
    for (k = 0; v61 != k; ++k)
    {
      if (v29)
      {
        v63 = MEMORY[0x1BFB22010](k, a2);
      }

      else
      {
        if (k >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_142;
        }

        v63 = *(a2 + 8 * k + 32);
      }

      v64 = v63;
      if (__OFADD__(k, 1))
      {
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
        goto LABEL_149;
      }

      if (TUHandle.isGeneric()())
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

    v79 = specialized Array.count.getter(v5);
    v66 = 0;
    while (1)
    {
      if (v79 == v66)
      {

        goto LABEL_132;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v68 = MEMORY[0x1BFB22010](v66, v5);
        v80 = v107;
      }

      else
      {
        v80 = v107;
        if (v66 >= *(v5 + 16))
        {
          goto LABEL_146;
        }

        v68 = *(v5 + 8 * v66 + 32);
      }

      v81 = [v68 value];
      v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v84 = v83;

      v85 = [v80 value];
      v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v88 = v87;

      if (v82 == v86 && v84 == v88)
      {
        goto LABEL_126;
      }

      v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v90)
      {
        break;
      }

      v28 = __OFADD__(v66++, 1);
      if (v28)
      {
        goto LABEL_148;
      }
    }

    if (v66)
    {
      goto LABEL_127;
    }

LABEL_132:
    v54 = "CALLER_ID_PICKER_EMAIL_ALT_%d";
    v55 = [objc_opt_self() conversationKit];
LABEL_72:
    v56 = v55;
    v106 = 0xE000000000000000;
    v57 = 0x61737265766E6F43;
    v58 = 0xEF74694B6E6F6974;
    v59 = v54 | 0x8000000000000000;
    v60 = 0xD000000000000016;
LABEL_119:
    v95._countAndFlagsBits = 0;
    v95._object = 0xE000000000000000;
    v96 = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(*&v60, *&v57, v56, v95, *(&v106 - 1));

    return;
  }

  v30 = specialized Array.count.getter(a2);
  for (m = 0; v30 != m; ++m)
  {
    if (v29)
    {
      v32 = MEMORY[0x1BFB22010](m, a2);
    }

    else
    {
      if (m >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_141;
      }

      v32 = *(a2 + 8 * m + 32);
    }

    v33 = v32;
    if (__OFADD__(m, 1))
    {
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    if (TUHandle.isGmail()(0x632E6F6F68617940))
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

  v65 = specialized Array.count.getter(v5);
  v66 = 0;
  while (1)
  {
    if (v65 == v66)
    {

      goto LABEL_130;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v68 = MEMORY[0x1BFB22010](v66, v5);
      v67 = v107;
    }

    else
    {
      v67 = v107;
      if (v66 >= *(v5 + 16))
      {
        goto LABEL_145;
      }

      v68 = *(v5 + 8 * v66 + 32);
    }

    v69 = [v68 value];
    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v71;

    v73 = [v67 value];
    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;

    if (v70 == v74 && v72 == v76)
    {

      if (v66)
      {
        goto LABEL_123;
      }

LABEL_130:
      v54 = "CALLER_ID_PICKER_YAHOO_ALT_%d";
      v55 = [objc_opt_self() conversationKit];
      goto LABEL_72;
    }

    v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v78)
    {
      break;
    }

    v28 = __OFADD__(v66++, 1);
    if (v28)
    {
      goto LABEL_147;
    }
  }

  if (!v66)
  {
    goto LABEL_130;
  }

LABEL_123:
  v97 = [objc_opt_self() conversationKit];
  v111._object = 0xE000000000000000;
  v98.value._countAndFlagsBits = 0x61737265766E6F43;
  v98.value._object = 0xEF74694B6E6F6974;
  v99._countAndFlagsBits = 0xD00000000000001DLL;
  v99._object = 0x80000001BC4FA660;
  v100._countAndFlagsBits = 0;
  v100._object = 0xE000000000000000;
  v111._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v99, v98, v97, v100, v111);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1BC4BA940;
  v53 = v66 + 1;
  if (!__OFADD__(v66, 1))
  {
    goto LABEL_128;
  }

  __break(1u);
LABEL_126:

  if (!v66)
  {
    goto LABEL_132;
  }

LABEL_127:
  v101 = [objc_opt_self() conversationKit];
  v112._object = 0xE000000000000000;
  v102.value._countAndFlagsBits = 0x61737265766E6F43;
  v102.value._object = 0xEF74694B6E6F6974;
  v103._countAndFlagsBits = 0xD00000000000001DLL;
  v103._object = 0x80000001BC4FA620;
  v104._countAndFlagsBits = 0;
  v104._object = 0xE000000000000000;
  v112._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v103, v102, v101, v104, v112);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1BC4BA940;
  v53 = v66 + 1;
  if (__OFADD__(v66, 1))
  {
LABEL_149:
    __break(1u);
  }

  else
  {
LABEL_128:
    v105 = MEMORY[0x1E69E65A8];
    *(v52 + 56) = MEMORY[0x1E69E6530];
    *(v52 + 64) = v105;
    *(v52 + 32) = v53;
    String.init(format:_:)();
  }
}

uint64_t PeoplePickerViewController.menu(for:)()
{
  v1 = v0;
  preferredElementSize = MEMORY[0x1E69E7CC0];
  v32 = MEMORY[0x1E69E7CC0];
  v3 = MEMORY[0x1E69E7D40];
  v30 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x2C0);
  v31 = v30();
  v4 = specialized Array.count.getter(v31);
  if (!v4)
  {
LABEL_14:

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu);
    v20 = [objc_opt_self() conversationKit];
    swift__string._object = 0xE000000000000000;
    v21.value._countAndFlagsBits = 0x61737265766E6F43;
    v21.value._object = 0xEF74694B6E6F6974;
    v22._object = 0x80000001BC4FA5A0;
    v22._countAndFlagsBits = 0xD000000000000015;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    swift__string._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v21, v20, v23, swift__string);

    OUTLINED_FUNCTION_0_71();
    isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v24, v25, v33, 2, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v28).super.super.isa;
    v27 = [objc_allocWithZone(MEMORY[0x1E69DCC70]) init];
    OUTLINED_FUNCTION_1_70([v27 setMaximumNumberOfTitleLines_], sel_setDisplayPreferences_);

    return isa;
  }

  v5 = v4;
  result = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAction);
  if (v5 >= 1)
  {
    v7 = 0;
    v29 = *((*v3 & *v0) + 0x2D8);
    do
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1BFB22010](v7, v31);
      }

      else
      {
        v8 = *(v31 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = swift_allocObject();
      *(v10 + 16) = v1;
      *(v10 + 24) = v9;
      v1;
      v11 = v9;
      v28._rawValue = 0;
      OUTLINED_FUNCTION_0_71();
      v12 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      (v30)(v12);
      v13 = PeoplePickerViewController.menuActionTitle(for:allCallerIDs:)(v11);
      v15 = v14;

      v16 = MEMORY[0x1BFB209B0](v13, v15);

      [v12 setTitle_];

      v17 = v29();
      if (v17)
      {
        v18 = v17;
        [v12 setState_];
      }

      else
      {
        [v12 setState_];
      }

      v19 = v12;
      MEMORY[0x1BFB20CC0]();
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v7;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    while (v5 != v7);
    preferredElementSize = v32;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in PeoplePickerViewController.menu(for:)(uint64_t a1, void *a2, void *a3)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x2E0);
  v5 = a3;
  return v4(a3);
}

uint64_t PeoplePickerViewController.menuActionTitle(for:allCallerIDs:)(void *a1)
{
  if ([a1 type] != 2)
  {
    return TUHandle.formattedValue.getter();
  }

  return PeoplePickerViewController.phoneNumberMenuActionTitle(for:)(a1);
}

uint64_t PeoplePickerViewController.phoneNumberMenuActionTitle(for:)(void *a1)
{
  if (!PeoplePickerViewController.hasMultipleSenderIdentities()())
  {
    return TUHandle.formattedValue.getter();
  }

  v2 = PeoplePickerViewController.matchingSenderIdentity(for:)(a1);
  if (!v2)
  {
    return TUHandle.formattedValue.getter();
  }

  v3 = v2;
  v4 = [objc_opt_self() conversationKit];
  v15._object = 0xE000000000000000;
  v5.value._countAndFlagsBits = 0x61737265766E6F43;
  v5.value._object = 0xEF74694B6E6F6974;
  v6._object = 0x80000001BC4FA5E0;
  v6._countAndFlagsBits = 0xD000000000000017;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v15);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BC4BA940;
  v9 = [v3 localizedName];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v8 + 32) = v10;
  *(v8 + 40) = v12;
  v13 = String.init(format:_:)();

  return v13;
}

uint64_t TUHandle.isICloud()()
{
  v1 = [v0 value];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v2._countAndFlagsBits = 0x2E64756F6C636940;
  v2._object = 0xEB000000006D6F63;
  LOBYTE(v1) = String.hasSuffix(_:)(v2);

  if (v1)
  {
    return 1;
  }

  v3 = [v0 value];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v4._countAndFlagsBits = 0x6D6F632E656D40;
  v4._object = 0xE700000000000000;
  LOBYTE(v3) = String.hasSuffix(_:)(v4);

  if (v3)
  {
    return 1;
  }

  v6 = [v0 value];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v7._countAndFlagsBits = 0x6D6F632E63616D40;
  v7._object = 0xE800000000000000;
  LOBYTE(v6) = String.hasSuffix(_:)(v7);

  return v6 & 1;
}

uint64_t TUHandle.isGmail()(uint64_t a1)
{
  v3 = [v1 value];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v4._countAndFlagsBits = a1;
  v4._object = 0xEA00000000006D6FLL;
  LOBYTE(a1) = String.hasSuffix(_:)(v4);

  return a1 & 1;
}

uint64_t TUHandle.isGeneric()()
{
  if (TUHandle.isGmail()(0x632E6C69616D6740) & 1) != 0 || (TUHandle.isICloud()())
  {
    v0 = 0;
  }

  else
  {
    v0 = TUHandle.isGmail()(0x632E6F6F68617940) ^ 1;
  }

  return v0 & 1;
}

void outlined bridged method (mbnn) of @objc TPPillView.badgeSymbolName.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1BFB209B0]();

  [a3 setBadgeSymbolName_];
}

unint64_t lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator()
{
  result = lazy protocol witness table cache variable for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator;
  if (!lazy protocol witness table cache variable for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator)
  {
    type metadata accessor for NSFastEnumerationIterator();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator);
  }

  return result;
}

Swift::Int CallStatus.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CallStatus()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  CallStatus.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t CallStatus.init(_:)()
{
  OUTLINED_FUNCTION_17_1();
  v1 = type metadata accessor for CallStatus();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0, v1);
  v5 = (*(v2 + 88))(v4, v1);
  if (v5 == *MEMORY[0x1E6995D50])
  {
    v6 = 0;
LABEL_19:
    (*(v2 + 8))(v0, v1);
    return v6;
  }

  if (v5 == *MEMORY[0x1E6995D58] || v5 == *MEMORY[0x1E6995D70])
  {
    v6 = 1;
    goto LABEL_19;
  }

  if (v5 == *MEMORY[0x1E6995D48])
  {
    v6 = 2;
    goto LABEL_19;
  }

  if (v5 == *MEMORY[0x1E6995D68])
  {
    v6 = 3;
    goto LABEL_19;
  }

  if (v5 == *MEMORY[0x1E6995D60])
  {
    v6 = 4;
    goto LABEL_19;
  }

  if (v5 == *MEMORY[0x1E6995D40])
  {
    v6 = 5;
    goto LABEL_19;
  }

  if (v5 == *MEMORY[0x1E6995D38])
  {
    v6 = 6;
    goto LABEL_19;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t AnsweringMachineCallStatus.updateSource.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AnsweringMachineCallStatus.updateSource.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AnsweringMachineCallStatus.callUUID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AnsweringMachineCallStatus.callUUID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t AnsweringMachineCallStatus.screeningStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AnsweringMachineCallStatus() + 28);
  type metadata accessor for CallScreeningStatus();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t AnsweringMachineCallStatus.screeningStatus.setter()
{
  OUTLINED_FUNCTION_17_1();
  v2 = *(type metadata accessor for AnsweringMachineCallStatus() + 28);
  type metadata accessor for CallScreeningStatus();
  OUTLINED_FUNCTION_7_0();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t AnsweringMachineCallStatus.screeningStatus.modify()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for AnsweringMachineCallStatus();
  return OUTLINED_FUNCTION_26_0();
}

uint64_t AnsweringMachineCallStatus.isScreeningDueToUserInteraction.setter(char a1)
{
  result = type metadata accessor for AnsweringMachineCallStatus();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t AnsweringMachineCallStatus.isScreeningDueToUserInteraction.modify()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for AnsweringMachineCallStatus();
  return OUTLINED_FUNCTION_26_0();
}

uint64_t AnsweringMachineCallStatus.callIsEligibleForScreening.setter(char a1)
{
  result = type metadata accessor for AnsweringMachineCallStatus();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t AnsweringMachineCallStatus.callIsEligibleForScreening.modify()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for AnsweringMachineCallStatus();
  return OUTLINED_FUNCTION_26_0();
}

uint64_t AnsweringMachineCallStatus.streamToken.setter()
{
  OUTLINED_FUNCTION_17_1();
  result = type metadata accessor for AnsweringMachineCallStatus();
  *(v1 + *(result + 40)) = v0;
  return result;
}

uint64_t AnsweringMachineCallStatus.streamToken.modify()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for AnsweringMachineCallStatus();
  return OUTLINED_FUNCTION_26_0();
}

uint64_t AnsweringMachineCallStatus.announcementHasFinished.setter(char a1)
{
  result = type metadata accessor for AnsweringMachineCallStatus();
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t AnsweringMachineCallStatus.announcementHasFinished.modify()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for AnsweringMachineCallStatus();
  return OUTLINED_FUNCTION_26_0();
}

uint64_t AnsweringMachineCallStatus.init(updateSource:callUUID:status:screeningStatus:isScreeningDueToUserInteraction:callIsEligibleForScreening:streamToken:announcementHasFinished:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  v15 = type metadata accessor for AnsweringMachineCallStatus();
  v16 = v15[7];
  type metadata accessor for CallScreeningStatus();
  OUTLINED_FUNCTION_7_0();
  result = (*(v17 + 32))(a9 + v16, a6);
  *(a9 + v15[8]) = a7;
  *(a9 + v15[9]) = a8;
  *(a9 + v15[10]) = a10;
  *(a9 + v15[11]) = a11;
  return result;
}

unint64_t lazy protocol witness table accessor for type CallStatus and conformance CallStatus()
{
  result = lazy protocol witness table cache variable for type CallStatus and conformance CallStatus;
  if (!lazy protocol witness table cache variable for type CallStatus and conformance CallStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallStatus and conformance CallStatus);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CallStatus(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata completion function for AnsweringMachineCallStatus()
{
  result = type metadata accessor for CallScreeningStatus();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t static AmbientState.isPresented.setter(char a1)
{
  result = swift_beginAccess();
  static AmbientState.isPresented = a1;
  return result;
}

uint64_t key path getter for static AmbientState.isPresented : AmbientState.Type@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static AmbientState.isPresented;
  return result;
}

uint64_t key path setter for static AmbientState.isPresented : AmbientState.Type(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static AmbientState.isPresented = v1;
  return result;
}

uint64_t key path getter for LinkDetailHeaderView.invitedMemberHandles : LinkDetailHeaderView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

uint64_t key path setter for LinkDetailHeaderView.invitedMemberHandles : LinkDetailHeaderView(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x90);

  return v2(v3);
}

uint64_t LinkDetailHeaderView.invitedMemberHandles.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t LinkDetailHeaderView.invitedMemberHandles.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*LinkDetailHeaderView.invitedMemberHandles.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_47(v1);
  *(v0 + 32) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(KeyPath);
  return LinkDetailHeaderView.invitedMemberHandles.modify;
}

uint64_t key path setter for LinkDetailHeaderView.$invitedMemberHandles : LinkDetailHeaderView(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShySo8TUHandleCGSg_GMd);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0xA8))(v7);
}

uint64_t LinkDetailHeaderView.$invitedMemberHandles.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShySo8TUHandleCGSg_GMd);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v7 = OUTLINED_FUNCTION_25_0(v6, v10);
  v8(v7);
  OUTLINED_FUNCTION_30_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShySo8TUHandleCGSgGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

void (*LinkDetailHeaderView.$invitedMemberHandles.modify())()
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_47(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShySo8TUHandleCGSg_GMd);
  OUTLINED_FUNCTION_46_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_30_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShySo8TUHandleCGSgGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return LinkDetailHeaderView.$invitedMemberHandles.modify;
}

void LinkDetailHeaderView.$invitedMemberHandles.modify()
{
  LinkDetailHeaderView.$invitedMemberHandles.modify();
}

{
  OUTLINED_FUNCTION_50_2();
  v2 = v1;
  v3 = *v0;
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 56);
  if (v6)
  {
    v7 = *(v3 + 32);
    v8 = *(v3 + 40);
    (*(v8 + 16))(*(*v0 + 48), v5, v7);
    v2(v4);
    (*(v8 + 8))(v5, v7);
  }

  else
  {
    v1(*(*v0 + 56));
  }

  free(v5);
  free(v4);
  OUTLINED_FUNCTION_49();

  free(v9);
}

uint64_t key path getter for LinkDetailHeaderView.title : LinkDetailHeaderView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for LinkDetailHeaderView.title : LinkDetailHeaderView(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xC0);

  return v4(v2, v3);
}

uint64_t LinkDetailHeaderView.title.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t LinkDetailHeaderView.title.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*LinkDetailHeaderView.title.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_47(v1);
  *(v0 + 32) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(KeyPath);
  return LinkDetailHeaderView.title.modify;
}

void LinkDetailHeaderView.invitedMemberHandles.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path setter for LinkDetailHeaderView.$title : LinkDetailHeaderView(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0xD8))(v7);
}

uint64_t LinkDetailHeaderView.$invitedMemberHandles.getter(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_30_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t LinkDetailHeaderView.$title.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v7 = OUTLINED_FUNCTION_25_0(v6, v10);
  v8(v7);
  OUTLINED_FUNCTION_30_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}