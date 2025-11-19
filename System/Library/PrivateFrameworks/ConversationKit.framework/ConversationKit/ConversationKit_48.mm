void *closure #1 in InCallControlsCollectionViewController.viewDidLoad()(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a2;
  v49 = a1;
  v5 = type metadata accessor for UICollectionLayoutListConfiguration.FooterMode();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v44 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UICollectionLayoutListConfiguration();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v19 = Strong;
  v43 = v15;
  v20 = v14;
  v21 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_dataSource;
  swift_beginAccess();
  v22 = *&v19[v21];
  if (!v22)
  {

    return 0;
  }

  (*(v11 + 16))(v13, a4, v10);
  v23 = v22;
  UICollectionLayoutListConfiguration.init(appearance:)();
  if (one-time initialization token for tableViewBackground != -1)
  {
    swift_once();
  }

  v24 = static Colors.InCallControls.tableViewBackground;
  UICollectionLayoutListConfiguration.backgroundColor.setter();
  v25 = InCallControlsCollectionViewController.visibleCollectionViewSection(atIndex:)(v49);
  v26 = v25;
  v42 = v20;
  if (v25 == 11)
  {
    goto LABEL_6;
  }

  if (InCallControlsCollectionViewController.CollectionViewSection.rawValue.getter(v25) == 0x41746E6572727563 && v29 == 0xEF79746976697463)
  {
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v31 & 1) == 0)
    {
LABEL_6:
      v27 = MEMORY[0x1E69DC290];
      goto LABEL_17;
    }
  }

  v27 = MEMORY[0x1E69DC280];
LABEL_17:
  (*(v44 + 104))(v9, *v27, v7);
  UICollectionLayoutListConfiguration.headerMode.setter();
  if (v26 != 11)
  {
    if (InCallControlsCollectionViewController.CollectionViewSection.rawValue.getter(v26) == 0x545450657661656CLL && v33 == 0xEF6C656E6E616843)
    {
    }

    else
    {
      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v35 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v32 = MEMORY[0x1E69DC270];
    goto LABEL_27;
  }

LABEL_18:
  v32 = MEMORY[0x1E69DC278];
LABEL_27:
  (*(v46 + 104))(v45, *v32, v47);
  UICollectionLayoutListConfiguration.footerMode.setter();
  v36 = [objc_opt_self() tertiaryLabelColor];
  v37 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
  UIListSeparatorConfiguration.color.setter();
  v37(v50, 0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSCollectionLayoutSection);
  v28 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  [v28 contentInsets];
  [v28 setContentInsets_];
  dispatch thunk of UICollectionViewDiffableDataSource.sectionIdentifier(for:)();
  if (v50[0] != 11)
  {
    if (InCallControlsCollectionViewController.CollectionViewSection.rawValue.getter(v50[0]) != 0x656C746974 || v38 != 0xE500000000000000)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  [v28 contentInsets];
  [v28 setContentInsets_];

  (*(v43 + 8))(v17, v42);
  return v28;
}

uint64_t InCallControlsCollectionViewController.visibleCollectionViewSection(atIndex:)(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy15ConversationKit38InCallControlsCollectionViewControllerC0kL7SectionO10Foundation4UUIDVGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  v7 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_dataSource;
  swift_beginAccess();
  v8 = *(v1 + v7);
  if (!v8)
  {
    return 11;
  }

  v9 = v8;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  v10 = *(NSDiffableDataSourceSnapshot.sectionIdentifiers.getter() + 16);

  if (v10 <= a1)
  {
    (*(v4 + 8))(v6, v3);

    return 11;
  }

  result = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(result + 16) > a1)
  {
    v12 = *(result + a1 + 32);

    (*(v4 + 8))(v6, v3);
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t closure #2 in InCallControlsCollectionViewController.viewDidLoad()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v131 = a3;
  v132 = a2;
  v130 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0ab4ListD0C10Foundation4UUIDVGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v127 = &v120 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit024InCallControlsPTTOpenAppD0C10Foundation4UUIDVGSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v126 = &v120 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit029InCallControlsPTTLeaveChannelD0C10Foundation4UUIDVGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v125 = &v120 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit022InCallControlsPTTTitleD0C10Foundation4UUIDVGSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v124 = &v120 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit020InCallControlsReportD0C10Foundation4UUIDVGSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v121 = &v120 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit019InCallControlsBlockD0C10Foundation4UUIDVGSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v120 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v122 = &v120 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit026InCallControlsOpenMessagesD0C10Foundation4UUIDVGSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v123 = &v120 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit031InCallControlsIgnoreLMIRequestsD0C10Foundation4UUIDVGSgMd);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v120 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit028InCallControlsToggleCaptionsD0C10Foundation4UUIDVGSgMd);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v120 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit023InCallControlsShareLinkD0C10Foundation4UUIDVGSgMd);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v120 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit025InCallControlsParticipantD0C10Foundation4UUIDVGSgMd);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v120 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit020InCallControlsStatusD0C10Foundation4UUIDVGSgMd);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = &v120 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit028InCallControlsAddParticipantD0C10Foundation4UUIDVGSgMd);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v36 = &v120 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit019InCallControlsTitleD0C10Foundation4UUIDVGSgMd);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v39 = &v120 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v129 = &v120 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit022InCallControlsActivityD0C10Foundation4UUIDVGSgMd);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v44 = &v120 - v43;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v46 = Strong;
    v47 = IndexPath.section.getter();
    v128 = v46;
    switch(InCallControlsCollectionViewController.visibleCollectionViewSection(atIndex:)(v47))
    {
      case 1u:
        goto LABEL_27;
      case 2u:
        if (one-time initialization token for addParticipantRowIdentifier != -1)
        {
          swift_once();
        }

        v78 = type metadata accessor for UUID();
        __swift_project_value_buffer(v78, static InCallControlsCollectionViewController.CollectionViewSection.addParticipantRowIdentifier);
        v79 = v131;
        if (static UUID.== infix(_:_:)())
        {
          v80 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_addParticipantCellRegistration;
          v81 = v128;
          swift_beginAccess();
          outlined init with copy of IDView<AvatarStackView, [UUID]>(v81 + v80, v36, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit028InCallControlsAddParticipantD0C10Foundation4UUIDVGSgMd);
          v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit028InCallControlsAddParticipantD0C10Foundation4UUIDVGMd);
          result = __swift_getEnumTagSinglePayload(v36, 1, v50);
          if (result == 1)
          {
            goto LABEL_65;
          }

          v68 = v129;
          (*(*(v78 - 8) + 16))(v129, v79, v78);
          __swift_storeEnumTagSinglePayload(v68, 0, 1, v78);
          type metadata accessor for InCallControlsAddParticipantCell();
          v54 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

          goto LABEL_19;
        }

        if (IndexPath.row.getter())
        {
          v107 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_participantCellRegistration;
          v108 = v128;
          swift_beginAccess();
          outlined init with copy of IDView<AvatarStackView, [UUID]>(v108 + v107, v30, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit025InCallControlsParticipantD0C10Foundation4UUIDVGSgMd);
          v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit025InCallControlsParticipantD0C10Foundation4UUIDVGMd);
          result = __swift_getEnumTagSinglePayload(v30, 1, v109);
          if (result == 1)
          {
            goto LABEL_66;
          }

          v110 = v129;
          (*(*(v78 - 8) + 16))(v129, v79, v78);
          __swift_storeEnumTagSinglePayload(v110, 0, 1, v78);
          type metadata accessor for InCallControlsParticipantCell();
          v54 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v110, &_s10Foundation4UUIDVSgMd);
          (*(*(v109 - 8) + 8))(v30, v109);
          return v54;
        }

        v117 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_statusCellRegistration;
        v118 = v128;
        swift_beginAccess();
        outlined init with copy of IDView<AvatarStackView, [UUID]>(v118 + v117, v33, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit020InCallControlsStatusD0C10Foundation4UUIDVGSgMd);
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit020InCallControlsStatusD0C10Foundation4UUIDVGMd);
        result = __swift_getEnumTagSinglePayload(v33, 1, v50);
        if (result == 1)
        {
          goto LABEL_69;
        }

        v119 = v129;
        (*(*(v78 - 8) + 16))(v129, v79, v78);
        __swift_storeEnumTagSinglePayload(v119, 0, 1, v78);
        type metadata accessor for InCallControlsStatusCell();
        v54 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v119, &_s10Foundation4UUIDVSgMd);
        v55 = *(*(v50 - 8) + 8);
        v56 = v33;
        goto LABEL_38;
      case 3u:
        v82 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_shareLinkCellRegistration;
        v83 = v128;
        swift_beginAccess();
        outlined init with copy of IDView<AvatarStackView, [UUID]>(v83 + v82, v27, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit023InCallControlsShareLinkD0C10Foundation4UUIDVGSgMd);
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit023InCallControlsShareLinkD0C10Foundation4UUIDVGMd);
        result = __swift_getEnumTagSinglePayload(v27, 1, v50);
        if (result == 1)
        {
          goto LABEL_58;
        }

        v84 = type metadata accessor for UUID();
        v85 = v129;
        (*(*(v84 - 8) + 16))(v129, v131, v84);
        __swift_storeEnumTagSinglePayload(v85, 0, 1, v84);
        type metadata accessor for InCallControlsShareLinkCell();
        v54 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v85, &_s10Foundation4UUIDVSgMd);
        v55 = *(*(v50 - 8) + 8);
        v56 = v27;
        goto LABEL_38;
      case 4u:
        v69 = v128;
        if ((InCallControlsCollectionViewController.isLiveCaptionsAllowed.getter() & 1) == 0)
        {

          return 0;
        }

        v70 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_toggleCaptionsCellRegistration;
        swift_beginAccess();
        outlined init with copy of IDView<AvatarStackView, [UUID]>(v69 + v70, v24, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit028InCallControlsToggleCaptionsD0C10Foundation4UUIDVGSgMd);
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit028InCallControlsToggleCaptionsD0C10Foundation4UUIDVGMd);
        result = __swift_getEnumTagSinglePayload(v24, 1, v50);
        if (result == 1)
        {
          goto LABEL_64;
        }

        v71 = type metadata accessor for UUID();
        v72 = v129;
        (*(*(v71 - 8) + 16))(v129, v131, v71);
        __swift_storeEnumTagSinglePayload(v72, 0, 1, v71);
        type metadata accessor for InCallControlsToggleCaptionsCell();
        v54 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v72, &_s10Foundation4UUIDVSgMd);
        v55 = *(*(v50 - 8) + 8);
        v56 = v24;
        goto LABEL_38;
      case 5u:
        v97 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_ignoreLMIRequestsCellRegistration;
        v98 = v128;
        swift_beginAccess();
        outlined init with copy of IDView<AvatarStackView, [UUID]>(v98 + v97, v21, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit031InCallControlsIgnoreLMIRequestsD0C10Foundation4UUIDVGSgMd);
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit031InCallControlsIgnoreLMIRequestsD0C10Foundation4UUIDVGMd);
        result = __swift_getEnumTagSinglePayload(v21, 1, v50);
        if (result == 1)
        {
          goto LABEL_60;
        }

        v99 = type metadata accessor for UUID();
        v100 = v129;
        (*(*(v99 - 8) + 16))(v129, v131, v99);
        __swift_storeEnumTagSinglePayload(v100, 0, 1, v99);
        type metadata accessor for InCallControlsIgnoreLMIRequestsCell();
        v54 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v100, &_s10Foundation4UUIDVSgMd);
        v55 = *(*(v50 - 8) + 8);
        v56 = v21;
        goto LABEL_38;
      case 6u:
        v101 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_openMessagesCellRegistration;
        v74 = v128;
        swift_beginAccess();
        v75 = v123;
        outlined init with copy of IDView<AvatarStackView, [UUID]>(v74 + v101, v123, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit026InCallControlsOpenMessagesD0C10Foundation4UUIDVGSgMd);
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit026InCallControlsOpenMessagesD0C10Foundation4UUIDVGMd);
        result = __swift_getEnumTagSinglePayload(v75, 1, v50);
        if (result == 1)
        {
          goto LABEL_61;
        }

        v102 = type metadata accessor for UUID();
        v77 = v129;
        (*(*(v102 - 8) + 16))(v129, v131, v102);
        __swift_storeEnumTagSinglePayload(v77, 0, 1, v102);
        type metadata accessor for InCallControlsOpenMessagesCell();
        goto LABEL_37;
      case 7u:
        if (one-time initialization token for blockUnkownRowIdentifier != -1)
        {
          swift_once();
        }

        v86 = type metadata accessor for UUID();
        __swift_project_value_buffer(v86, static InCallControlsCollectionViewController.CollectionViewSection.blockUnkownRowIdentifier);
        v87 = v131;
        v88 = static UUID.== infix(_:_:)();
        v89 = v128;
        if (v88)
        {
          v90 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_blockUnknownCallerCellRegistration;
          swift_beginAccess();
          v91 = v89 + v90;
          v92 = v122;
          outlined init with copy of IDView<AvatarStackView, [UUID]>(v91, v122, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit019InCallControlsBlockD0C10Foundation4UUIDVGSgMd);
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit019InCallControlsBlockD0C10Foundation4UUIDVGMd);
          if (__swift_getEnumTagSinglePayload(v92, 1, v44) == 1)
          {
            __break(1u);
LABEL_27:
            v93 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_activityCellRegistration;
            v94 = v128;
            swift_beginAccess();
            outlined init with copy of IDView<AvatarStackView, [UUID]>(v94 + v93, v44, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit022InCallControlsActivityD0C10Foundation4UUIDVGSgMd);
            v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit022InCallControlsActivityD0C10Foundation4UUIDVGMd);
            result = __swift_getEnumTagSinglePayload(v44, 1, v50);
            if (result != 1)
            {
              v95 = type metadata accessor for UUID();
              v96 = v129;
              (*(*(v95 - 8) + 16))(v129, v131, v95);
              __swift_storeEnumTagSinglePayload(v96, 0, 1, v95);
              type metadata accessor for InCallControlsActivityCell();
              v54 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v96, &_s10Foundation4UUIDVSgMd);
              v55 = *(*(v50 - 8) + 8);
              v56 = v44;
              goto LABEL_38;
            }

LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
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
            return result;
          }
        }

        else
        {
          if (one-time initialization token for reportUnknownRowIdentifier != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v86, static InCallControlsCollectionViewController.CollectionViewSection.reportUnknownRowIdentifier);
          if (static UUID.== infix(_:_:)())
          {
            v111 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_reportUnknownCallerCellRegistration;
            swift_beginAccess();
            v112 = v89 + v111;
            v92 = v121;
            outlined init with copy of IDView<AvatarStackView, [UUID]>(v112, v121, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit020InCallControlsReportD0C10Foundation4UUIDVGSgMd);
            v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit020InCallControlsReportD0C10Foundation4UUIDVGMd);
            result = __swift_getEnumTagSinglePayload(v92, 1, v44);
            if (result == 1)
            {
              goto LABEL_67;
            }

            v113 = v129;
            (*(*(v86 - 8) + 16))(v129, v87, v86);
            __swift_storeEnumTagSinglePayload(v113, 0, 1, v86);
            type metadata accessor for InCallControlsReportCell();
            goto LABEL_52;
          }

          v114 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_blockUnknownCallerCellRegistration;
          swift_beginAccess();
          v115 = v89 + v114;
          v92 = v120;
          outlined init with copy of IDView<AvatarStackView, [UUID]>(v115, v120, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit019InCallControlsBlockD0C10Foundation4UUIDVGSgMd);
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit019InCallControlsBlockD0C10Foundation4UUIDVGMd);
          result = __swift_getEnumTagSinglePayload(v92, 1, v44);
          if (result == 1)
          {
            goto LABEL_68;
          }
        }

        v113 = v129;
        (*(*(v86 - 8) + 16))(v129, v87, v86);
        __swift_storeEnumTagSinglePayload(v113, 0, 1, v86);
        type metadata accessor for InCallControlsBlockCell();
LABEL_52:
        v116 = v92;
        v54 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v113, &_s10Foundation4UUIDVSgMd);
        (*(*(v44 - 1) + 8))(v116, v44);
        return v54;
      case 8u:
        v105 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_pttTitleCellRegistration;
        v74 = v128;
        swift_beginAccess();
        v75 = v124;
        outlined init with copy of IDView<AvatarStackView, [UUID]>(v74 + v105, v124, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit022InCallControlsPTTTitleD0C10Foundation4UUIDVGSgMd);
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit022InCallControlsPTTTitleD0C10Foundation4UUIDVGMd);
        result = __swift_getEnumTagSinglePayload(v75, 1, v50);
        if (result == 1)
        {
          goto LABEL_63;
        }

        v106 = type metadata accessor for UUID();
        v77 = v129;
        (*(*(v106 - 8) + 16))(v129, v131, v106);
        __swift_storeEnumTagSinglePayload(v77, 0, 1, v106);
        type metadata accessor for InCallControlsPTTTitleCell();
        goto LABEL_37;
      case 9u:
        v73 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_leavePTTChannelCellRegistration;
        v74 = v128;
        swift_beginAccess();
        v75 = v125;
        outlined init with copy of IDView<AvatarStackView, [UUID]>(v74 + v73, v125, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit029InCallControlsPTTLeaveChannelD0C10Foundation4UUIDVGSgMd);
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit029InCallControlsPTTLeaveChannelD0C10Foundation4UUIDVGMd);
        result = __swift_getEnumTagSinglePayload(v75, 1, v50);
        if (result == 1)
        {
          goto LABEL_56;
        }

        v76 = type metadata accessor for UUID();
        v77 = v129;
        (*(*(v76 - 8) + 16))(v129, v131, v76);
        __swift_storeEnumTagSinglePayload(v77, 0, 1, v76);
        type metadata accessor for InCallControlsPTTLeaveChannelCell();
        goto LABEL_37;
      case 0xAu:
        v103 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_openPTTAppCellRegistration;
        v74 = v128;
        swift_beginAccess();
        v75 = v126;
        outlined init with copy of IDView<AvatarStackView, [UUID]>(v74 + v103, v126, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit024InCallControlsPTTOpenAppD0C10Foundation4UUIDVGSgMd);
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit024InCallControlsPTTOpenAppD0C10Foundation4UUIDVGMd);
        result = __swift_getEnumTagSinglePayload(v75, 1, v50);
        if (result == 1)
        {
          goto LABEL_62;
        }

        v104 = type metadata accessor for UUID();
        v77 = v129;
        (*(*(v104 - 8) + 16))(v129, v131, v104);
        __swift_storeEnumTagSinglePayload(v77, 0, 1, v104);
        type metadata accessor for InCallControlsPTTOpenAppCell();
LABEL_37:
        v54 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v77, &_s10Foundation4UUIDVSgMd);
        v55 = *(*(v50 - 8) + 8);
        v56 = v75;
        goto LABEL_38;
      case 0xBu:
        if (one-time initialization token for conversationKit != -1)
        {
          swift_once();
        }

        static os_log_type_t.error.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v57 = swift_allocObject();
        *(v57 + 16) = xmmword_1BC4BAA20;
        v133 = IndexPath.section.getter();
        v58 = String.init<A>(reflecting:)();
        v60 = v59;
        v61 = MEMORY[0x1E69E6158];
        *(v57 + 56) = MEMORY[0x1E69E6158];
        v62 = lazy protocol witness table accessor for type String and conformance String();
        *(v57 + 64) = v62;
        *(v57 + 32) = v58;
        *(v57 + 40) = v60;
        v133 = IndexPath.item.getter();
        v63 = String.init<A>(reflecting:)();
        *(v57 + 96) = v61;
        *(v57 + 104) = v62;
        *(v57 + 72) = v63;
        *(v57 + 80) = v64;
        os_log(_:dso:log:type:_:)();

        v65 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_fallbackCellRegistration;
        v66 = v128;
        swift_beginAccess();
        v36 = v127;
        outlined init with copy of IDView<AvatarStackView, [UUID]>(v66 + v65, v127, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0ab4ListD0C10Foundation4UUIDVGSgMd);
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0ab4ListD0C10Foundation4UUIDVGMd);
        result = __swift_getEnumTagSinglePayload(v36, 1, v50);
        if (result == 1)
        {
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v67 = type metadata accessor for UUID();
        v68 = v129;
        (*(*(v67 - 8) + 16))(v129, v131, v67);
        __swift_storeEnumTagSinglePayload(v68, 0, 1, v67);
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionViewListCell);
        v54 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

LABEL_19:
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v68, &_s10Foundation4UUIDVSgMd);
        v55 = *(*(v50 - 8) + 8);
        v56 = v36;
LABEL_38:
        v55(v56, v50);
        return v54;
      default:
        v48 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_titleCellRegistration;
        v49 = v128;
        swift_beginAccess();
        outlined init with copy of IDView<AvatarStackView, [UUID]>(v49 + v48, v39, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit019InCallControlsTitleD0C10Foundation4UUIDVGSgMd);
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit019InCallControlsTitleD0C10Foundation4UUIDVGMd);
        result = __swift_getEnumTagSinglePayload(v39, 1, v50);
        if (result == 1)
        {
          goto LABEL_57;
        }

        v52 = type metadata accessor for UUID();
        v53 = v129;
        (*(*(v52 - 8) + 16))(v129, v131, v52);
        __swift_storeEnumTagSinglePayload(v53, 0, 1, v52);
        type metadata accessor for InCallControlsTitleCell();
        v54 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v53, &_s10Foundation4UUIDVSgMd);
        v55 = *(*(v50 - 8) + 8);
        v56 = v39;
        goto LABEL_38;
    }
  }

  return 0;
}

uint64_t closure #3 in InCallControlsCollectionViewController.viewDidLoad()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit035InCallControlsPTTLeaveChannelFooterB0CGSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v16[-v1];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit027InCallControlsSectionHeaderB0CGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16[-v4];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v7 = Strong;
  v8 = IndexPath.section.getter();
  v9 = InCallControlsCollectionViewController.visibleCollectionViewSection(atIndex:)(v8);
  if (v9 == 11)
  {
    goto LABEL_7;
  }

  if (v9 == 9)
  {
    v14 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_leaveChannelFooterViewRegistration;
    swift_beginAccess();
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v7 + v14, v2, &_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit035InCallControlsPTTLeaveChannelFooterB0CGSgMd);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit035InCallControlsPTTLeaveChannelFooterB0CGMd);
    result = __swift_getEnumTagSinglePayload(v2, 1, v15);
    if (result != 1)
    {
      type metadata accessor for InCallControlsPTTLeaveChannelFooterView();
      v13 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();

      (*(*(v15 - 8) + 8))(v2, v15);
      return v13;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (v9 != 1)
  {
LABEL_7:

    return 0;
  }

  v10 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_sectionHeaderViewRegistration;
  swift_beginAccess();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v7 + v10, v5, &_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit027InCallControlsSectionHeaderB0CGSgMd);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit027InCallControlsSectionHeaderB0CGMd);
  result = __swift_getEnumTagSinglePayload(v5, 1, v11);
  if (result != 1)
  {
    type metadata accessor for InCallControlsSectionHeaderView();
    v13 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();

    (*(*(v11 - 8) + 8))(v5, v11);
    return v13;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t InCallControlsCollectionViewController.blockStatusDidUpdate()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_4;
  }

  v7 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_dataSource;
  result = swift_beginAccess();
  v9 = *(v1 + v7);
  if (!v9)
  {
    return result;
  }

  v10 = one-time initialization token for conversationKit;
  v2 = v9;
  if (v10 != -1)
  {
    goto LABEL_11;
  }

LABEL_4:
  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.conversationKit);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1BBC58000, v12, v13, "InCallControlsBlockCell.blockStatusDidUpdate", v14, 2u);
    MEMORY[0x1BFB23DF0](v14, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BC4BA940;
  if (one-time initialization token for blockUnkownRowIdentifier != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v15, static InCallControlsCollectionViewController.CollectionViewSection.blockUnkownRowIdentifier);
  (*(v16 + 16))(v18 + v17, v19, v15);
  InCallControlsCollectionViewController.reloadSections(_:in:animatingDifferences:)(v18, v2, 1, specialized _ArrayProtocol.filter(_:), MEMORY[0x1E69DC138]);

  swift_setDeallocating();
  return specialized _ContiguousArrayStorage.__deallocating_deinit();
}

uint64_t InCallControlsCollectionViewController.reloadSections(_:in:animatingDifferences:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, char *), void (*a5)(void))
{
  OUTLINED_FUNCTION_55();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy15ConversationKit38InCallControlsCollectionViewControllerC0kL7SectionO10Foundation4UUIDVGMd);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - v11;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  a4(v13, v12);
  a5();

  OUTLINED_FUNCTION_3_0();
  dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
  return (*(v9 + 8))(v12, v7);
}

void InCallControlsCollectionViewController.handleContentSizeCategoryDidChange(_:)()
{
  v1 = v0;
  type metadata accessor for InCallControlsParticipantCell();
  static InCallControlsParticipantCell.invalidateCalculatedHeights()();
  v2 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_dataSource;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = v3;
    InCallControlsCollectionViewController.reloadSections(_:in:animatingDifferences:)(&outlined read-only object #0 of InCallControlsCollectionViewController.handleContentSizeCategoryDidChange(_:), v4, 0, specialized _ArrayProtocol.filter(_:), MEMORY[0x1E69DC140]);
  }
}

uint64_t InCallControlsCollectionViewController.configureToggleCaptionsCell(_:)(void *a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_inCallControlsCollectionViewControllerDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 16))(v1, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  v8 = InCallControlsCollectionViewController.featureFlags.getter();
  v9 = [v8 videoCallTranslationEnabled];

  if (v9)
  {
    v10 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_conversation;
    swift_beginAccess();
    v11 = *(v2 + v10);
    if (v11)
    {
      v12 = [v11 resolvedAudioVideoMode] == 2;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 2;
  }

  v13 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0xE8))(v7 & 1 | (v12 << 8));
  v14 = *((*v13 & *a1) + 0x88);
  v15 = swift_unknownObjectRetain();
  return v14(v15, &protocol witness table for InCallControlsCollectionViewController);
}

uint64_t InCallControlsCollectionViewController.visibleCollectionViewSections()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_conversation;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3)
  {
    v4 = [v3 remoteMembers];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
    lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember);
    v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = specialized Set.isEmpty.getter(v5);
  }

  else
  {
    v6 = 1;
  }

  v7 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_mode;
  swift_beginAccess();
  v8 = MEMORY[0x1E69E7CC0];
  if ((*(v1 + v7) & 0xE0) != 0x40 && (v6 & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v8 = v9;
    v10 = *(v9 + 16);
    if (v10 >= *(v9 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v8 = v52;
    }

    *(v8 + 16) = v10 + 1;
    *(v8 + v10 + 32) = 0;
  }

  v11 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_activity;
  swift_beginAccess();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v1 + v11, v64, &_s15ConversationKit8Activity_pSgMd);
  v12 = v64[3];
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v64, &_s15ConversationKit8Activity_pSgMd);
  if (v12)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v8 = v48;
    }

    v13 = *(v8 + 16);
    if (v13 >= *(v8 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v8 = v49;
    }

    *(v8 + 16) = v13 + 1;
    *(v8 + v13 + 32) = 1;
  }

  if ((*(v1 + v7) & 0xE0) != 0x40)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v8 = v50;
    }

    v14 = *(v8 + 16);
    if (v14 >= *(v8 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v8 = v51;
    }

    *(v8 + 16) = v14 + 1;
    *(v8 + v14 + 32) = 2;
  }

  v15 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_controlsManager;
  swift_beginAccess();
  v16 = *(v1 + v15);
  v17 = MEMORY[0x1E69E7D40];
  if (!v16 || (v18 = *((*MEMORY[0x1E69E7D40] & *v16) + 0x380), v19 = v16, LOBYTE(v18) = v18(), v19, (v18 & 1) == 0))
  {
    if (static Platform.current.getter() != 2)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v53;
      }

      v20 = *(v8 + 16);
      if (v20 >= *(v8 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v54;
      }

      *(v8 + 16) = v20 + 1;
      *(v8 + v20 + 32) = 3;
    }

    if (Features.isMoreMenuEnabled.getter() & 1) == 0 && (InCallControlsCollectionViewController.isLiveCaptionsAllowed.getter())
    {
      v21 = *(v1 + v2);
      if (v21)
      {
        v22 = one-time initialization token for shared;
        v23 = v21;
        if (v22 != -1)
        {
          swift_once();
        }

        if (((*((*v17 & *static ConversationCapabilities.shared) + 0x70))() & 1) == 0 || [v23 resolvedAudioVideoMode] == 1 && (v24 = objc_msgSend(v23, sel_remoteMembers), type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember), lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember), v25 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v24, v26 = specialized Set.count.getter(v25), , v26 <= 1))
        {
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v8 = v62;
          }

          v27 = *(v8 + 16);
          if (v27 >= *(v8 + 24) >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v8 = v63;
          }

          *(v8 + 16) = v27 + 1;
          *(v8 + v27 + 32) = 4;
        }
      }
    }

    if (*(v1 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_shareLinkEnabled) == 1 && static Platform.current.getter() != 2)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v60;
      }

      v28 = *(v8 + 16);
      if (v28 >= *(v8 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v61;
      }

      *(v8 + 16) = v28 + 1;
      *(v8 + v28 + 32) = 5;
    }
  }

  v29 = *(v1 + v15);
  if (v29)
  {
    v30 = *((*v17 & *v29) + 0x2A0);
    v31 = v29;
    v30();
    v33 = v32;
    ObjectType = swift_getObjectType();
    LOBYTE(v33) = (*(v33 + 128))(ObjectType, v33);
    swift_unknownObjectRelease();
    if (v33)
    {
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v55;
      }

      v35 = *(v8 + 16);
      if (v35 >= *(v8 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v56;
      }

      *(v8 + 16) = v35 + 1;
      *(v8 + v35 + 32) = 7;
    }

    v36 = *(v1 + v15);
    if (v36)
    {
      v37 = *((*v17 & *v36) + 0x2A0);
      v38 = v36;
      v37();
      v40 = v39;

      v41 = swift_getObjectType();
      LOBYTE(v38) = (*(v40 + 464))(v41, v40);
      swift_unknownObjectRelease();
      if (v38)
      {

        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v42;
        v43 = *(v42 + 16);
        v44 = *(v42 + 24) >> 1;
        v45 = v43 + 1;
        if (v44 <= v43)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v8 = v57;
          v44 = *(v57 + 24) >> 1;
        }

        *(v8 + 16) = v45;
        *(v8 + v43 + 32) = 8;
        v46 = v43 + 2;
        if (v44 < (v43 + 2))
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v8 = v58;
          v44 = *(v58 + 24) >> 1;
        }

        *(v8 + 16) = v46;
        *(v8 + v45 + 32) = 9;
        if (v44 < (v43 + 3))
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v8 = v59;
        }

        *(v8 + 16) = v43 + 3;
        *(v8 + v46 + 32) = 10;
      }
    }
  }

  return v8;
}

uint64_t UUID.init(hash:)(unint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v7[1] = 0;
  v6 = bswap64(a1);
  v6 = specialized _copyCollectionToContiguousArray<A>(_:)(&v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd);
  DataProtocol.copyBytes(to:)();

  UUID.init(uuid:)();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_12();
  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

BOOL specialized Conversation.isInitiatorContact.getter()
{
  type metadata accessor for ReportSpamManager();
  v1 = [v0 initiator];
  static ReportSpamManager.getContact(forHandle:)(v1);
  v3 = v2;

  if (!v3)
  {
    return 0;
  }

  v4 = specialized Array.count.getter(v3);

  return v4 != 0;
}

BOOL specialized Conversation.hasExactlyOneRemoteParticipant.getter()
{
  v1 = [v0 mergedRemoteMembers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
  lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = specialized Set.count.getter(v2);

  if (v3 != 1)
  {
    return 0;
  }

  v4 = [v0 mergedActiveRemoteParticipants];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant);
  lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = specialized Set.count.getter(v5);

  return v6 < 2;
}

uint64_t specialized Conversation.unknownHandles.getter()
{
  v135 = 0;
  v169 = *MEMORY[0x1E69E9840];
  v138 = type metadata accessor for PersonNameComponents();
  v1 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v146 = &v126 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v6 = &v126 - v5;
  v7 = [v0 mergedRemoteMembers];
  v8 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
  lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember);
  v149 = v8;
  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = &unk_1BC4BA000;
  v154 = 32;
  if ((v9 & 0xC000000000000001) == 0)
  {
    v64 = *(v9 + 32);
    v16 = ((1 << v64) + 63) >> 6;
    inited = 8 * v16;
    if ((v64 & 0x3Fu) <= 0xD)
    {
      goto LABEL_59;
    }

    goto LABEL_125;
  }

  v147 = MEMORY[0x1E69E7CD0];
  v157 = MEMORY[0x1E69E7CD0];
  v150 = __CocoaSet.makeIterator()();
  v137 = (v1 + 1);
  v148 = xmmword_1BC4BAC30;
LABEL_3:
  v12 = __CocoaSet.Iterator.next()();
  if (!v12)
  {

    v117 = v147;
    goto LABEL_118;
  }

  v158 = v12;
  swift_dynamicCast();
  v13 = v156;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = v148;
  *(inited + 32) = [v13 handle];
  v15 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8TUHandleC_SayAEGTt0g5(inited);
  if (one-time initialization token for faceTime != -1)
  {
    swift_once();
  }

  v151 = static ParticipantContactDetailsCache.faceTime;
  i = v15;
  if ((v15 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    inited = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
    lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle);
    Set.Iterator.init(_cocoa:)();
    v15 = v164;
    v1 = v165;
    v11 = v166;
    v6 = v167;
    v17 = v168;
  }

  else
  {
    v18 = -1 << *(v15 + 32);
    v1 = (v15 + 56);
    v11 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v17 = v20 & *(v15 + 56);

    v6 = 0;
  }

  v152 = v11;
  v21 = (v11 + 64) >> 6;
  v22 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v6;
    if ((v15 & 0x8000000000000000) == 0)
    {
      break;
    }

    inited = v15 & 0x7FFFFFFFFFFFFFFFLL;
    v25 = __CocoaSet.Iterator.next()();
    if (!v25 || (v155 = v25, type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle), swift_dynamicCast(), (v11 = v158) == 0))
    {
LABEL_36:
      outlined consume of Set<TUHandle>.Iterator._Variant();

      v9 = 0;
      v1 = MEMORY[0x1E69E7CC0];
      v158 = MEMORY[0x1E69E7CC0];
      v6 = *(v22 + 16);
LABEL_37:
      v49 = v154 + 56 * v9;
      while (v6 != v9)
      {
        if (v9 >= *(v22 + 16))
        {
          __break(1u);
          goto LABEL_120;
        }

        ++v9;
        v50 = *(v22 + v49);
        v49 += 56;
        if (v50)
        {
          v51 = v50;
          inited = &v158;
          MEMORY[0x1BFB20CC0]();
          v11 = *((v158 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v11 >= *((v158 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v1 = v158;
          goto LABEL_37;
        }
      }

      v52 = specialized Array.count.getter(v1);

      v1 = v156;
      if (v52)
      {
      }

      else
      {
        if (*(v147 + 24) <= *(v147 + 16))
        {
          specialized _NativeSet.resize(capacity:)();
        }

        v11 = v157;
        inited = v1;
        v53 = NSObject._rawHashValue(seed:)(*(v157 + 40));
        v54 = v11 + 56;
        v55 = -1 << *(v11 + 32);
        v56 = v53 & ~v55;
        v57 = v56 >> 6;
        if (((-1 << v56) & ~*(v11 + 56 + 8 * (v56 >> 6))) != 0)
        {
          v58 = __clz(__rbit64((-1 << v56) & ~*(v11 + 56 + 8 * (v56 >> 6)))) | v56 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v59 = 0;
          v60 = (63 - v55) >> 6;
          do
          {
            if (++v57 == v60 && (v59 & 1) != 0)
            {
              goto LABEL_123;
            }

            v61 = v57 == v60;
            if (v57 == v60)
            {
              v57 = 0;
            }

            v59 |= v61;
            v62 = *(v54 + 8 * v57);
          }

          while (v62 == -1);
          v58 = __clz(__rbit64(~v62)) + (v57 << 6);
        }

        *(v54 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v58;
        *(*(v11 + 48) + 8 * v58) = v1;
        v63 = *(v11 + 16) + 1;
        v147 = v11;
        *(v11 + 16) = v63;
      }

      goto LABEL_3;
    }

LABEL_22:
    inited = [v11 value];
    if (!inited)
    {
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      inited = MEMORY[0x1BFB209B0](v26);
    }

    v27 = [inited destinationIdIsTemporary];

    if (v27)
    {
    }

    else
    {
      ParticipantContactDetailsCache.contactDetails(for:nickname:)();
      v28 = v158;
      v141 = v159;
      v29 = v160;
      v140 = v161;
      v30 = v162;
      v139 = v163;
      v143 = v158;
      v145 = v29;

      v144 = v30;

      PersonNameComponents.init()();
      v142 = v28;
      if (v28)
      {
        v31 = v143;
        v32 = [v143 givenName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v136 = v33;

        PersonNameComponents.givenName.setter();
        v34 = [v31 familyName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        PersonNameComponents.givenName.setter();
      }

      PersonNameComponents.familyName.setter();
      if (one-time initialization token for initials != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v35 = static NSPersonNameComponentsFormatter.initials;
      isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
      v37 = [v35 stringFromPersonNameComponents_];

      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      (*v137)(v146, v138);
      v158 = v38;
      v159 = v40;
      lazy protocol witness table accessor for type String and conformance String();
      inited = StringProtocol.localizedUppercase.getter();
      v42 = v41;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v22 = v47;
      }

      v43 = *(v22 + 16);
      v11 = v43 + 1;
      if (v43 >= *(v22 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v22 = v48;
      }

      *(v22 + 16) = v11;
      v44 = (v22 + 56 * v43);
      v45 = v141;
      v44[4] = v142;
      v44[5] = v45;
      v46 = v140;
      v44[6] = v145;
      v44[7] = v46;
      v44[8] = v144;
      v44[9] = inited;
      v44[10] = v42;
    }
  }

  v23 = v6;
  v24 = v17;
  if (v17)
  {
LABEL_18:
    v17 = (v24 - 1) & v24;
    v11 = *(*(v15 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v24)))));
    if (!v11)
    {
      goto LABEL_36;
    }

    goto LABEL_22;
  }

  while (1)
  {
    v6 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v6 >= v21)
    {
      goto LABEL_36;
    }

    v24 = v1[v6];
    ++v23;
    if (v24)
    {
      goto LABEL_18;
    }
  }

LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_125:
    v122 = v16;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_59:
    v144 = v6;
    v137 = &v126;
    MEMORY[0x1EEE9AC00](v10);
    v143 = v65;
    v139 = &v126 - ((inited + 15) & 0x3FFFFFFFFFFFFFF0);
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v65, v139);
    v140 = 0;
    v6 = 0;
    v66 = *(v9 + 56);
    v142 = v9 + 56;
    v67 = 1 << *(v9 + 32);
    if (v67 < 64)
    {
      v68 = ~(-1 << v67);
    }

    else
    {
      v68 = -1;
    }

    v69 = v68 & v66;
    v141 = (v67 + 63) >> 6;
    v132 = (v1 + 1);
    v148 = *(v11 + 3120);
    v147 = v9;
    while (2)
    {
      if (v69)
      {
        v70 = __clz(__rbit64(v69));
        v150 = (v69 - 1) & v69;
LABEL_70:
        v73 = v70 | (v6 << 6);
        v74 = *(v9 + 48);
        v145 = v73;
        v75 = *(v74 + 8 * v73);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v76 = swift_initStackObject();
        *(v76 + 16) = v148;
        v149 = v75;
        *(v76 + 32) = [v149 handle];
        v77 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8TUHandleC_SayAEGTt0g5(v76);
        if (one-time initialization token for faceTime != -1)
        {
          swift_once();
        }

        v146 = static ParticipantContactDetailsCache.faceTime;
        v152 = v77;
        if ((v77 & 0xC000000000000001) != 0)
        {
          swift_unknownObjectRetain();
          __CocoaSet.makeIterator()();
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
          lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle);
          Set.Iterator.init(_cocoa:)();
          v77 = v164;
          v78 = v165;
          inited = v166;
          v79 = v167;
          v11 = v168;
        }

        else
        {
          v80 = -1 << *(v77 + 32);
          v78 = v77 + 56;
          inited = ~v80;
          v81 = -v80;
          if (v81 < 64)
          {
            v82 = ~(-1 << v81);
          }

          else
          {
            v82 = -1;
          }

          v11 = v82 & *(v77 + 56);

          v79 = 0;
        }

        v151 = inited;
        v83 = (inited + 64) >> 6;
        v9 = MEMORY[0x1E69E7CC0];
        for (i = v77; ; v77 = i)
        {
          v84 = v79;
          v1 = v11;
          if ((v77 & 0x8000000000000000) == 0)
          {
            break;
          }

          while (1)
          {
            inited = v77 & 0x7FFFFFFFFFFFFFFFLL;
            v88 = __CocoaSet.Iterator.next()();
            if (!v88)
            {
              goto LABEL_103;
            }

            v157 = v88;
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
            swift_dynamicCast();
            v87 = v158;
            v79 = v84;
            v11 = v1;
            if (!v158)
            {
              goto LABEL_103;
            }

LABEL_88:
            v89 = [v87 value];
            if (!v89)
            {
              v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v89 = MEMORY[0x1BFB209B0](v90);
            }

            inited = [v89 destinationIdIsTemporary];

            if (!inited)
            {
              break;
            }

            v84 = v79;
            v1 = v11;
            v77 = i;
            if ((i & 0x8000000000000000) == 0)
            {
              goto LABEL_80;
            }
          }

          ParticipantContactDetailsCache.contactDetails(for:nickname:)();
          v91 = v158;
          v130 = v159;
          v92 = v160;
          v129 = v161;
          v93 = v162;
          v128 = v163;
          v133 = v158;
          v136 = v92;

          v134 = v93;

          PersonNameComponents.init()();
          v131 = v91;
          if (v91)
          {
            v94 = v133;
            v95 = [v133 givenName];
            v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();

            PersonNameComponents.givenName.setter();
            v96 = [v94 familyName];
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }

          else
          {
            PersonNameComponents.givenName.setter();
          }

          PersonNameComponents.familyName.setter();
          if (one-time initialization token for initials != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v97 = static NSPersonNameComponentsFormatter.initials;
          v127 = v97;
          v98 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
          v99 = [v97 stringFromPersonNameComponents_];

          v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v102 = v101;

          (*v132)(v144, v138);
          v158 = v100;
          v159 = v102;
          lazy protocol witness table accessor for type String and conformance String();
          v103 = StringProtocol.localizedUppercase.getter();
          inited = v104;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v9 = v109;
          }

          v105 = *(v9 + 16);
          if (v105 >= *(v9 + 24) >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v9 = v110;
          }

          *(v9 + 16) = v105 + 1;
          v106 = (v9 + 56 * v105);
          v107 = v130;
          v106[4] = v131;
          v106[5] = v107;
          v108 = v129;
          v106[6] = v136;
          v106[7] = v108;
          v106[8] = v134;
          v106[9] = v103;
          v106[10] = inited;
        }

LABEL_80:
        v85 = v84;
        v86 = v1;
        v79 = v84;
        if (v1)
        {
LABEL_84:
          v11 = (v86 - 1) & v86;
          v87 = *(*(v77 + 48) + ((v79 << 9) | (8 * __clz(__rbit64(v86)))));
          if (v87)
          {
            goto LABEL_88;
          }

LABEL_103:
          outlined consume of Set<TUHandle>.Iterator._Variant();

          v111 = 0;
          v1 = MEMORY[0x1E69E7CC0];
          v158 = MEMORY[0x1E69E7CC0];
          v112 = *(v9 + 16);
LABEL_104:
          v113 = v154 + 56 * v111;
          while (v112 != v111)
          {
            if (v111 >= *(v9 + 16))
            {
              goto LABEL_121;
            }

            ++v111;
            v114 = *(v9 + v113);
            v113 += 56;
            if (v114)
            {
              v115 = v114;
              inited = &v158;
              MEMORY[0x1BFB20CC0]();
              v11 = *((v158 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v11 >= *((v158 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v1 = v158;
              goto LABEL_104;
            }
          }

          inited = specialized Array.count.getter(v1);

          v9 = v147;
          v69 = v150;
          if (!inited)
          {
            *(v139 + ((v145 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v145;
            if (__OFADD__(v140++, 1))
            {
              __break(1u);
            }
          }

          continue;
        }

        while (1)
        {
          v79 = v85 + 1;
          if (__OFADD__(v85, 1))
          {
            goto LABEL_122;
          }

          if (v79 >= v83)
          {
            goto LABEL_103;
          }

          v86 = *(v78 + 8 * v79);
          ++v85;
          if (v86)
          {
            goto LABEL_84;
          }
        }
      }

      break;
    }

    v71 = v6;
    v16 = v143;
    while (1)
    {
      v6 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        break;
      }

      if (v6 >= v141)
      {
        specialized _NativeSet.extractSubset(using:count:)();
        v117 = v118;
        goto LABEL_118;
      }

      v72 = *(v142 + 8 * v6);
      ++v71;
      if (v72)
      {
        v70 = __clz(__rbit64(v72));
        v150 = (v72 - 1) & v72;
        goto LABEL_70;
      }
    }
  }

  v123 = swift_slowAlloc();

  v124 = v135;
  v125 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo20TUConversationMemberCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So20iJ5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(v123, v122, v9, closure #1 in Conversation.unknownHandles.getter, 0);
  v135 = v124;
  if (v124)
  {

    swift_bridgeObjectRelease_n();
    result = MEMORY[0x1BFB23DF0](v123, -1, -1);
    __break(1u);
  }

  else
  {
    v117 = v125;
    swift_bridgeObjectRelease_n();
    MEMORY[0x1BFB23DF0](v123, -1, -1);
LABEL_118:
    specialized Sequence.compactMap<A>(_:)(v117);
    v120 = v119;

    return v120;
  }

  return result;
}

BOOL specialized Conversation.allParticipantsAreUnknownContacts.getter()
{
  v1 = [v0 mergedRemoteMembers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
  lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Sequence.compactMap<A>(_:)(v2);
  v4 = v3;

  v5 = *(v4 + 16);

  return v5 == 0;
}

void InCallControlsCollectionViewController.apply(_:to:animatingDifferences:)(uint64_t a1, void *a2, int a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy15ConversationKit38InCallControlsCollectionViewControllerC0kL7SectionO10Foundation4UUIDVGMd);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v27[-v12];
  v28 = a3;
  if (a3)
  {
    v14 = a2;
    v15 = *(NSDiffableDataSourceSnapshot.reconfiguredItemIdentifiers.getter() + 16);

    v16 = v15 != 0;
  }

  else
  {
    v14 = a2;
    v16 = 0;
  }

  v17 = *(v7 + 16);
  v17(v13, a1, v6, v11);
  (v17)(v9, v13, v6);
  v18 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v19 = v18 + v8;
  v20 = swift_allocObject();
  *(v20 + 16) = v14;
  (*(v7 + 32))(v20 + v18, v13, v6);
  *(v20 + v19) = v28 & 1;
  if (v16)
  {
    v21 = *(v7 + 8);
    v22 = v14;
    v21(v9, v6);
    v23 = objc_opt_self();
    v24 = swift_allocObject();
    *(v24 + 16) = partial apply for closure #1 in InCallControlsCollectionViewController.apply(_:to:animatingDifferences:);
    *(v24 + 24) = v20;
    aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_66;
    v25 = _Block_copy(aBlock);

    [v23 animateWithDuration:0 delay:v25 options:0 animations:0.3 completion:0.0];

    _Block_release(v25);
  }

  else
  {
    v26 = v14;
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    (*(v7 + 8))(v9, v6);
  }
}

uint64_t InCallControlsCollectionViewController.reconfigure(_:cellIdentifiers:in:animatingDifferences:)(uint64_t a1, void (**a2)(_BYTE *, uint64_t), void *a3, int a4)
{
  v43 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy15ConversationKit38InCallControlsCollectionViewControllerC0kL7SectionO10Foundation4UUIDVGMd);
  v44 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42[-v8];
  v10 = type metadata accessor for Participant(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for UUID();
  v55 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v50 = &v42[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42[-v16];
  MEMORY[0x1EEE9AC00](v18);
  v51 = &v42[-v19];
  v57 = MEMORY[0x1E69E7CC0];
  v46 = v9;
  v47 = v7;
  v45 = a3;
  if (a1)
  {
    v53 = a1;
    v20 = *(a1 + 16);
    v21 = MEMORY[0x1E69E7CC0];
    if (v20)
    {
      v48 = a2;
      v49 = v10;
      rawValue = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v22 = v49;
      v23 = v53 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v24 = *(v11 + 72);
      v21 = rawValue;
      v25 = (v55 + 16);
      v52 = v55 + 32;
      v53 = v24;
      v26 = v51;
      do
      {
        v27 = v54;
        _s15ConversationKit11ParticipantVWOcTm_10(v23, v54);
        (*v25)(v26, &v27[v22[5]], v13);
        outlined destroy of Participant.State();
        rawValue = v21;
        v28 = *(v21 + 16);
        if (v28 >= *(v21 + 24) >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v22 = v49;
          v21 = rawValue;
        }

        *(v21 + 16) = v28 + 1;
        (*(v55 + 32))(v21 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v28, v26, v13);
        v23 += v53;
        --v20;
      }

      while (v20);
      a2 = v48;
    }

    specialized Array.append<A>(contentsOf:)(v21);
  }

  if (a2)
  {

    specialized Array.append<A>(contentsOf:)(v29);
  }

  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  v53 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
  v30 = 0;
  result = v57;
  v54 = *(v57 + 16);
  v52 = v55 + 16;
  v48 = (v55 + 8);
  v49 = (v55 + 32);
  v32._rawValue = MEMORY[0x1E69E7CC0];
  v51 = v57;
LABEL_12:
  while (v30 != v54)
  {
    if (v30 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v33 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v34 = *(v55 + 72);
    (*(v55 + 16))(v17, result + v33 + v34 * v30++, v13);
    v35 = v53 + v33;
    v36 = *(v53 + 16) + 1;
    do
    {
      if (!--v36)
      {
        (*v48)(v17, v13);
        result = v51;
        goto LABEL_12;
      }

      _s10Foundation4UUIDVACSHAAWlTm_5(&lazy protocol witness table cache variable for type UUID and conformance UUID);
      v35 += v34;
    }

    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
    v37 = *v49;
    (*v49)(v50, v17, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    rawValue = v32._rawValue;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v32._rawValue = rawValue;
    }

    v39 = *(v32._rawValue + 2);
    if (v39 >= *(v32._rawValue + 3) >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v32._rawValue = rawValue;
    }

    *(v32._rawValue + 2) = v39 + 1;
    v37(v32._rawValue + v33 + v39 * v34, v50, v13);
    result = v51;
  }

  if (*(v32._rawValue + 2))
  {
    v41 = v46;
    v40 = v47;
    NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v32);

    InCallControlsCollectionViewController.apply(_:to:animatingDifferences:)(v41, v45, v43 & 1);
    return (*(v44 + 8))(v41, v40);
  }

  else
  {
    (*(v44 + 8))(v46, v47);
  }
}

id InCallControlsCollectionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id InCallControlsCollectionViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t InCallControlsCollectionViewController.createSectionHeaderViewRegistration()()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for InCallControlsSectionHeaderView();

  return UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
}

uint64_t InCallControlsCollectionViewController.createActivityCellRegistration()()
{
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v0(0);
  OUTLINED_FUNCTION_24_1();
  type metadata accessor for UUID();

  return UICollectionView.CellRegistration.init(handler:)();
}

uint64_t InCallControlsCollectionViewController.configureTitleCell(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_conversation;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (!v5)
  {
    v9 = 0;
    v7 = 0;
    goto LABEL_5;
  }

  v6 = [v5 displayName];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = *(v2 + v4);
  if (!v10)
  {
LABEL_5:
    v11 = 0;
    v13 = 0xF000000000000000;
    goto LABEL_6;
  }

  v11 = outlined bridged method (ob) of @objc TUConversation.messagesGroupPhotoData.getter(v10);
  v13 = v12;
LABEL_6:
  v14 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_participants;
  swift_beginAccess();
  v15 = *(v2 + v14);
  v16 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_mode;
  swift_beginAccess();
  v17 = *(v2 + v4);
  v18 = *(v2 + v16);
  v19 = v17;

  InCallControlsTitleCellViewModel.init(groupName:groupPhotoData:participants:mode:linksEnabled:shouldUseGroupHeader:conversation:)(v7, v9, v11, v13, v15, v18, 1, v22, v17);
  InCallControlsTitleCell.configure(with:)(v22);
  outlined destroy of InCallControlsTitleCellViewModel(v22);
  v20 = a1 + OBJC_IVAR____TtC15ConversationKit23InCallControlsTitleCell_delegate;
  swift_beginAccess();
  *(v20 + 8) = &protocol witness table for InCallControlsCollectionViewController;
  return swift_unknownObjectWeakAssign();
}

void InCallControlsCollectionViewController.configureStatusCell(_:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_controlsManager;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5)
  {
    swift_beginAccess();
    v6 = v5;

    InCallControlsStatusCellViewModel.init(participants:controlsManager:)(v7, v6, v12);
    v8 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *a1) + 0x160))(v12);
    v9 = v2 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_menuHostViewController;
    Strong = swift_unknownObjectWeakLoadStrong();
    (*((*v8 & *a1) + 0xC0))(Strong, *(v9 + 8));
    v15 = v12[0];
    outlined destroy of String(&v15);
    v14 = v12[1];
    outlined destroy of String(&v14);
    v11 = v13;
  }
}

uint64_t InCallControlsCollectionViewController.configureAddParticipantCell(_:)(uint64_t a1)
{
  v2 = InCallControlsCollectionViewController.isAddingParticipantsAllowed.getter();
  InCallControlsBaseCell.isEnabled.setter(v2 & 1);
  v3 = a1 + OBJC_IVAR____TtC15ConversationKit22InCallControlsBaseCell_delegate;
  swift_beginAccess();
  *(v3 + 8) = &protocol witness table for InCallControlsCollectionViewController;
  return swift_unknownObjectWeakAssign();
}

uint64_t InCallControlsCollectionViewController.configureLinkLayoutCell(_:)(void *a1)
{
  v3 = InCallControlsCollectionViewController.isLinkSharingAllowed.getter();
  v4 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_gridLayoutStyle;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v7[0] = v3 & 1;
  v7[1] = v5;
  return (*((*MEMORY[0x1E69E7D40] & *a1) + 0xC0))(v7, v1, &protocol witness table for InCallControlsCollectionViewController);
}

void InCallControlsCollectionViewController.configureIgnoreLMIRequestsCell(_:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_conversation;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5)
  {
    v6 = v5;
    v7 = [v6 ignoreLMIRequests];
    v8 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *a1) + 0xD8))(v7);
    v9 = *((*v8 & *a1) + 0x78);
    v10 = swift_unknownObjectRetain();
    v9(v10, &protocol witness table for InCallControlsCollectionViewController);
  }
}

void closure #7 in InCallControlsCollectionViewController.configureCellRegistrations()(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x70);
    v5 = swift_unknownObjectRetain();
    v4(v5, &protocol witness table for InCallControlsCollectionViewController);
  }
}

void InCallControlsCollectionViewController.configureBlockUnknownCallerCell(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_conversation;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = v4;
    if (specialized Conversation.allParticipantsAreUnknownContacts.getter() && !specialized Conversation.hasExactlyOneRemoteParticipant.getter())
    {
      v8 = 1;
    }

    else
    {
      v6 = specialized Conversation.unknownHandles.getter();
      v7 = specialized Array.count.getter(v6);

      if (v7)
      {
        if (specialized Conversation.hasExactlyOneRemoteParticipant.getter())
        {
          v8 = 0;
        }

        else
        {
          v8 = 2;
        }
      }

      else
      {
        v8 = 0;
      }
    }

    if (one-time initialization token for spam != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, &static Logger.spam);
    v10 = v5;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134218496;
      *(v16 + 4) = v8;
      *(v16 + 12) = 1024;
      *(v16 + 14) = specialized Conversation.hasSingleUnknownContact.getter();
      *(v16 + 18) = 1024;
      *(v16 + 20) = specialized Conversation.hasExactlyOneRemoteParticipant.getter();

      _os_log_impl(&dword_1BBC58000, v14, v15, "flow: %ld, conversation.hasSingleUnknownContact: %{BOOL}d, conversation.hasExactlyOneRemoteParticipant: %{BOOL}d", v16, 0x18u);
      MEMORY[0x1BFB23DF0](v16, -1, -1);
    }

    else
    {

      v14 = v10;
    }

    v17 = specialized Conversation.unknownHandles.getter();
    v18 = a1 + OBJC_IVAR____TtC15ConversationKit23InCallControlsBlockCell_viewModel;
    swift_beginAccess();
    *v18 = v17;
    *(v18 + 8) = v8;

    InCallControlsBlockCell.viewModel.didset();
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, &static Logger.conversationControls);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1BBC58000, v10, v11, "Cannot configure block unknown caller cell because conversation is nil", v12, 2u);
      MEMORY[0x1BFB23DF0](v12, -1, -1);
    }
  }
}

void InCallControlsCollectionViewController.configurePTTTitleCell(_:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_controlsManager;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x2A0);
    v4 = v2;
    v3();
    v6 = v5;
    ObjectType = swift_getObjectType();
    LOBYTE(v6) = (*(v6 + 464))(ObjectType, v6);
    v8 = swift_unknownObjectRelease();
    if (v6)
    {
      (v3)(v8);
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v10 = v9;
        swift_unknownObjectRetain();
        InCallControlsPTTCallDetailsViewModel.init(pttCall:)(v10, v11);
        InCallControlsPTTTitleCell.configure(with:)(v11);
        outlined destroy of InCallControlsPTTCallDetailsViewModel(v11);
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void InCallControlsCollectionViewController.configureLeavePTTChannelCell(_:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_controlsManager;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5)
  {
    v6 = MEMORY[0x1E69E7D40];
    v7 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x2A0);
    v8 = v5;
    v7();
    v10 = v9;
    ObjectType = swift_getObjectType();
    LOBYTE(v10) = (*(v10 + 464))(ObjectType, v10);
    v12 = swift_unknownObjectRelease();
    if (v10)
    {
      (v7)(v12);
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = v13;
        swift_unknownObjectRetain();
        InCallControlsPTTCallDetailsViewModel.init(pttCall:)(v14, v17);
        v15 = (*((*v6 & *a1) + 0xD0))(v17);
        v16 = (*((*v6 & *a1) + 0x70))(v15);
        [v16 addTarget:v2 action:sel_didTapPTTLeaveChannelButton_ forControlEvents:64];

        outlined destroy of InCallControlsPTTCallDetailsViewModel(v17);
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void closure #1 in InCallControlsCollectionViewController.configureCellRegistrations()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    a5(a1);
  }
}

void InCallControlsCollectionViewController.configureOpenPTTAppCell(_:)(void *a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_controlsManager;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = MEMORY[0x1E69E7D40];
    v6 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x2A0);
    v7 = v4;
    v6();
    v9 = v8;
    ObjectType = swift_getObjectType();
    LOBYTE(v9) = (*(v9 + 464))(ObjectType, v9);
    v11 = swift_unknownObjectRelease();
    if (v9)
    {
      (v6)(v11);
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        v13 = v12;
        swift_unknownObjectRetain();
        InCallControlsPTTCallDetailsViewModel.init(pttCall:)(v13, v14);
        (*((*v5 & *a1) + 0x90))(v14);
        outlined destroy of InCallControlsPTTCallDetailsViewModel(v14);
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

BOOL specialized Conversation.hasSingleUnknownContact.getter()
{
  v1 = [v0 mergedRemoteMembers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
  lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = specialized Collection.first.getter(v2);

  if (!v3)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BAC30;
  v5 = v3;
  *(inited + 32) = [v5 handle];
  v6 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8TUHandleC_SayAEGTt0g5(inited);
  if (one-time initialization token for faceTime != -1)
  {
    swift_once();
  }

  specialized Sequence.compactMap<A>(_:)(v6);
  v8 = v7;

  v9 = *(v8 + 16);

  return v9 == 0;
}

uint64_t closure #1 in InCallControlsCollectionViewController.createSectionHeaderViewRegistration()(void *a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_activity;
    swift_beginAccess();
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v3 + v4, &v6, &_s15ConversationKit8Activity_pSgMd);
    if (v7)
    {
      outlined init with take of TapInteractionHandler(&v6, v8);
      outlined init with copy of IDSLookupManager(v8, &v6);
      v5 = InCallControlsActivitySectionHeaderViewModel.init(activity:)(&v6);
      (*((*MEMORY[0x1E69E7D40] & *a1) + 0x58))(v5);

      return __swift_destroy_boxed_opaque_existential_1(v8);
    }

    else
    {

      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v6, &_s15ConversationKit8Activity_pSgMd);
    }
  }

  return result;
}

void closure #1 in InCallControlsCollectionViewController.createActivityCellRegistration()(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - v3;
  v5 = type metadata accessor for InCallControlsActivityCellViewModel();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_controlsManager;
    swift_beginAccess();
    v11 = *&v9[v10];
    if (v11)
    {
      v12 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_activity;
      swift_beginAccess();
      outlined init with copy of IDView<AvatarStackView, [UUID]>(&v9[v12], &v26, &_s15ConversationKit8Activity_pSgMd);
      if (v27)
      {
        outlined init with take of TapInteractionHandler(&v26, v28);
        v13 = MEMORY[0x1E69E7D40];
        v14 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xA0);
        v15 = v11;
        v16 = v9;
        v17 = v14(v9, &protocol witness table for InCallControlsCollectionViewController);
        v18 = (*((*v13 & *v15) + 0x2A0))(v17);
        v20 = v19;
        v21 = outlined init with copy of IDSLookupManager(v28, &v26);
        (*((*v13 & *v15) + 0x2F0))(v21);
        v22 = type metadata accessor for Participant(0);
        __swift_storeEnumTagSinglePayload(v4, 0, 1, v22);
        v23 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_participants;
        swift_beginAccess();
        v24 = *&v16[v23];

        InCallControlsActivityCellViewModel.init(call:activity:localParticipant:participants:)(v18, v20, &v26, v4, v24, v7);
        (*((*v13 & *a1) + 0xB0))(v7);

        outlined destroy of Participant.State();
        __swift_destroy_boxed_opaque_existential_1(v28);
      }

      else
      {

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v26, &_s15ConversationKit8Activity_pSgMd);
      }
    }

    else
    {
    }
  }
}

void closure #1 in InCallControlsCollectionViewController.createParticipantCellRegistration()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v60 - v7;
  v9 = type metadata accessor for InCallControlsParticipantCellViewModel();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v60 - v13;
  v15 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v60 - v19;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v22 = Strong;
  v62 = a2;
  v63 = v11;
  v64 = a1;
  v23 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_participants;
  v24 = swift_beginAccess();
  v60 = v23;
  v25 = *&v22[v23];
  MEMORY[0x1EEE9AC00](v24);
  v61 = a3;
  *(&v60 - 2) = a3;

  specialized Sequence.first(where:)(partial apply for closure #1 in closure #4 in ParticipantGridViewController.update(with:animationStyle:forced:), v25, v14);

  if (__swift_getEnumTagSinglePayload(v14, 1, v15) != 1)
  {
    outlined init with take of Participant(v14, v20);
    _s15ConversationKit11ParticipantVWOcTm_10(v20, v17);
    v45 = InCallControlsCollectionViewController.participantSupportsMultiway(_:)(v20);
    v46 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_mode;
    swift_beginAccess();
    v47 = v22[v46];
    v48 = InCallControlsCollectionViewController.isLocalMemberAuthorizedToChangeGroupMembership.getter();
    v49 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_conversation;
    swift_beginAccess();
    v50 = *&v22[v49];
    if (v50)
    {
      v51 = [v50 link];
      v52 = [v51 originatorHandle];
    }

    else
    {
      v52 = 0;
    }

    v53 = *&v20[*(v15 + 28)];
    if (v53)
    {
      v54 = v53;
      if (!v52)
      {
        v55 = 0;
        goto LABEL_16;
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
      v55 = static NSObject.== infix(_:_:)();
    }

    else
    {
      if (!v52)
      {
        v55 = 1;
        goto LABEL_17;
      }

      v55 = 0;
    }

    v54 = v52;
LABEL_16:

LABEL_17:
    v56 = v45 & 1;
    v57 = v63;
    InCallControlsParticipantCellViewModel.init(participant:supportsMultiway:mode:isLocalMemberAuthorizedToChangeGroupMembership:isLinkOwner:)(v17, v56, v47, v48 & 1, v55 & 1, v63);
    v58 = v64;
    InCallControlsParticipantCell.configure(with:)(v57);
    outlined destroy of Participant.State();
    outlined destroy of Participant.State();
    v59 = v58 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_participantCellDelegate;
    swift_beginAccess();
    *(v59 + 8) = &protocol witness table for InCallControlsCollectionViewController;
    swift_unknownObjectWeakAssign();

    return;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s15ConversationKit11ParticipantVSgMd);
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1BC4BB980;
  v27 = type metadata accessor for UUID();
  (*(*(v27 - 8) + 16))(v8, v61, v27);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v27);
  specialized >> prefix<A>(_:)(v8, v28, v29, v30, v31, v32, v33, v34, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
  v36 = v35;
  v38 = v37;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s10Foundation4UUIDVSgMd);
  v39 = MEMORY[0x1E69E6158];
  *(v26 + 56) = MEMORY[0x1E69E6158];
  v40 = lazy protocol witness table accessor for type String and conformance String();
  *(v26 + 64) = v40;
  *(v26 + 32) = v36;
  *(v26 + 40) = v38;
  v70 = IndexPath.item.getter();
  v41 = String.init<A>(reflecting:)();
  *(v26 + 96) = v39;
  *(v26 + 104) = v40;
  *(v26 + 72) = v41;
  *(v26 + 80) = v42;
  v70 = *&v22[v60];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit11ParticipantVGMd);
  v43 = String.init<A>(reflecting:)();
  *(v26 + 136) = v39;
  *(v26 + 144) = v40;
  *(v26 + 112) = v43;
  *(v26 + 120) = v44;
  os_log(_:dso:log:type:_:)();
}

uint64_t InCallControlsCollectionViewController.participantSupportsMultiway(_:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_capabilitiesChecker);
  OUTLINED_FUNCTION_0_1();
  (*(v4 + 120))();
  v5 = OUTLINED_FUNCTION_24_1();
  v6 = type metadata accessor for Participant(v5);
  v7 = specialized Dictionary.subscript.getter(a1 + *(v6 + 20), v3);

  if (v7 == 2)
  {
    return 0;
  }

  if (v7 == 3)
  {
    return 1;
  }

  return (v7 >> 24) & 1;
}

id InCallControlsCollectionViewController.didTapPTTLeaveChannelButton(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_controlsManager;
  swift_beginAccess();
  result = *(v1 + v3);
  if (result)
  {
    return [result pttLeaveButtonTappedWithButton_];
  }

  return result;
}

void InCallControlsCollectionViewController.collectionView(_:didSelectItemAt:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v160 = v7;
  v161 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v152 = v9 - v8;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v11);
  v158 = &v142[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v157 = &v142[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v16 = OUTLINED_FUNCTION_22(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v142[-v20];
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v142[-v23];
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v142[-v26];
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v142[-v29];
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v142[-v32];
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v142[-v35];
  v155 = type metadata accessor for InCallControlsCollectionViewController.Action(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_8();
  v156 = v39 - v38;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v5 deselectItemAtIndexPath:isa animated:1];

  v41 = IndexPath._bridgeToObjectiveC()().super.isa;
  v42 = [v5 cellForItemAtIndexPath_];

  if (v42)
  {
    v43 = &v1[OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_inCallControlsCollectionViewControllerDelegate];
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      static os_log_type_t.error.getter();
      OUTLINED_FUNCTION_41_0();
      os_log(_:dso:log:type:_:)();
      goto LABEL_13;
    }

    v149 = Strong;
    v147 = *(v43 + 1);
    v45 = IndexPath.section.getter();
    v148 = v1;
    switch(InCallControlsCollectionViewController.visibleCollectionViewSection(atIndex:)(v45))
    {
      case 1u:
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_0_6();
        }

        static os_log_type_t.default.getter();
        OUTLINED_FUNCTION_41_0();
        os_log(_:dso:log:type:_:)();
        v51 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_activity;
        v52 = v148;
        OUTLINED_FUNCTION_3_0();
        swift_beginAccess();
        outlined init with copy of IDView<AvatarStackView, [UUID]>(&v52[v51], &v162, &_s15ConversationKit8Activity_pSgMd);
        if (v163)
        {
          outlined init with take of TapInteractionHandler(&v162, &v164);
          ObjectType = swift_getObjectType();
          v54 = v156;
          outlined init with copy of IDSLookupManager(&v164, v156);
          swift_storeEnumTagMultiPayload();
          v55 = v147;
          v56 = *(v147 + 8);
          v57 = v42;
          v56(v52, v54, v42, ObjectType, v55);
          swift_unknownObjectRelease();

          OUTLINED_FUNCTION_1_127();
          outlined destroy of Participant.State();
          __swift_destroy_boxed_opaque_existential_1(&v164);
        }

        else
        {
          swift_unknownObjectRelease();

          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v162, &_s15ConversationKit8Activity_pSgMd);
        }

        goto LABEL_14;
      case 2u:
        v62 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_dataSource;
        v63 = v148;
        OUTLINED_FUNCTION_3_0();
        swift_beginAccess();
        v64 = *&v63[v62];
        if (v64)
        {
          v65 = v64;
          dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

          v66 = v161;
        }

        else
        {
          OUTLINED_FUNCTION_10_0();
          v66 = v161;
          __swift_storeEnumTagSinglePayload(v87, v88, v89, v161);
        }

        v90 = v157;
        if (one-time initialization token for addParticipantRowIdentifier != -1)
        {
          OUTLINED_FUNCTION_30_28();
        }

        OUTLINED_FUNCTION_65_12(v66, static InCallControlsCollectionViewController.CollectionViewSection.addParticipantRowIdentifier);
        (*(v160 + 16))(v33);
        OUTLINED_FUNCTION_12();
        __swift_storeEnumTagSinglePayload(v91, v92, v93, v66);
        v94 = *(v159 + 48);
        outlined init with copy of IDView<AvatarStackView, [UUID]>(v36, v90, &_s10Foundation4UUIDVSgMd);
        v95 = v161;
        outlined init with copy of IDView<AvatarStackView, [UUID]>(v33, &v90[v94], &_s10Foundation4UUIDVSgMd);
        OUTLINED_FUNCTION_2_83(v90);
        if (v82)
        {
          v96 = OUTLINED_FUNCTION_46();
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v96, v97);
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v36, &_s10Foundation4UUIDVSgMd);
          OUTLINED_FUNCTION_2_83(&v90[v94]);
          if (v82)
          {
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v90, &_s10Foundation4UUIDVSgMd);
            goto LABEL_55;
          }
        }

        else
        {
          v98 = OUTLINED_FUNCTION_52_14();
          outlined init with copy of IDView<AvatarStackView, [UUID]>(v98, v99, v100);
          OUTLINED_FUNCTION_2_83(&v90[v94]);
          if (!v101)
          {
            v111 = v90;
            v112 = v160;
            v113 = v152;
            (*(v160 + 32))(v152, &v111[v94], v95);
            OUTLINED_FUNCTION_11_75(&lazy protocol witness table cache variable for type UUID and conformance UUID);
            LODWORD(v159) = dispatch thunk of static Equatable.== infix(_:_:)();
            v114 = *(v112 + 8);
            v114(v113, v95);
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v33, &_s10Foundation4UUIDVSgMd);
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v36, &_s10Foundation4UUIDVSgMd);
            v114(v30, v95);
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v157, &_s10Foundation4UUIDVSgMd);
            if (v159)
            {
LABEL_55:
              if (one-time initialization token for conversationKit != -1)
              {
                OUTLINED_FUNCTION_0_6();
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
              v115 = OUTLINED_FUNCTION_13_12();
              *(v115 + 16) = xmmword_1BC4BA940;
              LOBYTE(v162) = InCallControlsCollectionViewController.isAddingParticipantsAllowed.getter() & 1;
              v116 = String.init<A>(reflecting:)();
              v118 = v117;
              *(v115 + 56) = MEMORY[0x1E69E6158];
              *(v115 + 64) = lazy protocol witness table accessor for type String and conformance String();
              *(v115 + 32) = v116;
              *(v115 + 40) = v118;
              static os_log_type_t.default.getter();
              OUTLINED_FUNCTION_41_0();
              os_log(_:dso:log:type:_:)();

              if (InCallControlsCollectionViewController.isAddingParticipantsAllowed.getter())
              {
                v119 = type metadata accessor for SpringBoardUtilities();
                v120 = v63;
                specialized static SpringBoardUtilities.requestPasscodeUnlock(_:)(v119, v149, v147, v120, v42);
                goto LABEL_14;
              }
            }

LABEL_4:
            swift_unknownObjectRelease();
LABEL_13:

LABEL_14:
            OUTLINED_FUNCTION_30_0();
            return;
          }

          v102 = OUTLINED_FUNCTION_46();
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v102, v103);
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v36, &_s10Foundation4UUIDVSgMd);
          (*(v160 + 8))(v30, v95);
        }

        v104 = v90;
        goto LABEL_71;
      case 7u:
        v47 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_dataSource;
        v48 = v148;
        OUTLINED_FUNCTION_3_0();
        swift_beginAccess();
        v157 = v47;
        v49 = *&v47[v48];
        if (v49)
        {
          v50 = v49;
          dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();
        }

        else
        {
          OUTLINED_FUNCTION_10_0();
          __swift_storeEnumTagSinglePayload(v67, v68, v69, v161);
        }

        if (one-time initialization token for blockUnkownRowIdentifier != -1)
        {
          OUTLINED_FUNCTION_33_29();
        }

        v70 = v161;
        OUTLINED_FUNCTION_65_12(v161, static InCallControlsCollectionViewController.CollectionViewSection.blockUnkownRowIdentifier);
        v71 = *(v160 + 16);
        v146 = v160 + 16;
        v145 = v71;
        v71(v24);
        OUTLINED_FUNCTION_12();
        __swift_storeEnumTagSinglePayload(v72, v73, v74, v70);
        v75 = v158;
        v76 = *(v159 + 48);
        v77 = &_s10Foundation4UUIDVSgMd;
        v78 = OUTLINED_FUNCTION_52_14();
        outlined init with copy of IDView<AvatarStackView, [UUID]>(v78, v79, &_s10Foundation4UUIDVSgMd);
        outlined init with copy of IDView<AvatarStackView, [UUID]>(v24, v75 + v76, &_s10Foundation4UUIDVSgMd);
        OUTLINED_FUNCTION_83_0(v75);
        if (v82)
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v24, &_s10Foundation4UUIDVSgMd);
          v75 = v158;
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v27, &_s10Foundation4UUIDVSgMd);
          OUTLINED_FUNCTION_83_0(v75 + v76);
          v80 = v70;
          if (v82)
          {
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v75, &_s10Foundation4UUIDVSgMd);
            v81 = v148;
            goto LABEL_73;
          }
        }

        else
        {
          outlined init with copy of IDView<AvatarStackView, [UUID]>(v75, v21, &_s10Foundation4UUIDVSgMd);
          OUTLINED_FUNCTION_83_0(v75 + v76);
          if (!v82)
          {
            v105 = v160;
            v106 = v75 + v76;
            v107 = v152;
            (*(v160 + 32))(v152, v106, v70);
            OUTLINED_FUNCTION_11_75(&lazy protocol witness table cache variable for type UUID and conformance UUID);
            v143 = dispatch thunk of static Equatable.== infix(_:_:)();
            v144 = v42;
            v108 = *(v105 + 8);
            v77 = v105 + 8;
            v108(v107, v70);
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v24, &_s10Foundation4UUIDVSgMd);
            v109 = OUTLINED_FUNCTION_52_14();
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v109, v110);
            v108(v21, v70);
            v42 = v144;
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v75, &_s10Foundation4UUIDVSgMd);
            v81 = v148;
            v80 = v70;
            v83 = v154;
            if (v143)
            {
              goto LABEL_73;
            }

LABEL_37:
            v84 = *&v157[v81];
            if (v84)
            {
              v85 = v84;
              v86 = v153;
              dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();
            }

            else
            {
              v86 = v153;
              OUTLINED_FUNCTION_10_0();
              __swift_storeEnumTagSinglePayload(v121, v122, v123, v80);
            }

            v3 = v151;
            if (one-time initialization token for reportUnknownRowIdentifier != -1)
            {
              swift_once();
            }

            OUTLINED_FUNCTION_65_12(v80, static InCallControlsCollectionViewController.CollectionViewSection.reportUnknownRowIdentifier);
            v145(v83);
            v124 = OUTLINED_FUNCTION_18_9();
            __swift_storeEnumTagSinglePayload(v124, v125, v126, v80);
            v127 = *(v159 + 48);
            v77 = &_s10Foundation4UUIDVSgMd;
            outlined init with copy of IDView<AvatarStackView, [UUID]>(v86, v3, &_s10Foundation4UUIDVSgMd);
            outlined init with copy of IDView<AvatarStackView, [UUID]>(v83, v3 + v127, &_s10Foundation4UUIDVSgMd);
            OUTLINED_FUNCTION_2_83(v3);
            if (v82)
            {
              v128 = OUTLINED_FUNCTION_309();
              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v128, v129);
              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v86, &_s10Foundation4UUIDVSgMd);
              OUTLINED_FUNCTION_2_83(v3 + v127);
              if (v82)
              {
                outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s10Foundation4UUIDVSgMd);
                goto LABEL_73;
              }
            }

            else
            {
              v130 = v150;
              outlined init with copy of IDView<AvatarStackView, [UUID]>(v3, v150, &_s10Foundation4UUIDVSgMd);
              OUTLINED_FUNCTION_2_83(v3 + v127);
              if (!v131)
              {
                v134 = v160;
                v135 = v3 + v127;
                v136 = v152;
                (*(v160 + 32))(v152, v135, v80);
                OUTLINED_FUNCTION_11_75(&lazy protocol witness table cache variable for type UUID and conformance UUID);
                v77 = dispatch thunk of static Equatable.== infix(_:_:)();
                v137 = *(v134 + 8);
                v137(v136, v80);
                outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v154, &_s10Foundation4UUIDVSgMd);
                outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v153, &_s10Foundation4UUIDVSgMd);
                v137(v130, v80);
                outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s10Foundation4UUIDVSgMd);
                if ((v77 & 1) == 0)
                {
                  goto LABEL_4;
                }

LABEL_73:
                swift_getObjectType();
                OUTLINED_FUNCTION_46_18();
                swift_storeEnumTagMultiPayload();
                v138 = v147;
                v139 = *(v147 + 8);
                v140 = v42;
                v139(v81, v3, v42, v77, v138);
                swift_unknownObjectRelease();

                OUTLINED_FUNCTION_1_127();
                outlined destroy of Participant.State();
                goto LABEL_14;
              }

              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v154, &_s10Foundation4UUIDVSgMd);
              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v86, &_s10Foundation4UUIDVSgMd);
              v132 = OUTLINED_FUNCTION_40_2();
              v133(v132);
            }

            v104 = v3;
LABEL_71:
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v104, &_s10Foundation4UUIDVSg_ADtMd);
            goto LABEL_4;
          }

          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v24, &_s10Foundation4UUIDVSgMd);
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v27, &_s10Foundation4UUIDVSgMd);
          (*(v160 + 8))(v21, v70);
          v80 = v70;
        }

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v75, &_s10Foundation4UUIDVSg_ADtMd);
        v81 = v148;
        v83 = v154;
        goto LABEL_37;
      case 0xAu:
        v58 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_controlsManager;
        v59 = v148;
        OUTLINED_FUNCTION_3_0();
        swift_beginAccess();
        v60 = *&v59[v58];
        if (v60)
        {
          v61 = v60;
          ConversationControlsManager.openPTTApp()();
        }

        goto LABEL_4;
      case 0xBu:
        v164 = 0;
        v165 = 0xE000000000000000;
        _StringGuts.grow(_:)(29);

        v164 = 0xD00000000000001BLL;
        v165 = 0x80000001BC50E6C0;
        *&v162 = IndexPath.section.getter();
        v141 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1BFB20B10](v141);

        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      default:
        goto LABEL_4;
    }
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_30_0();

  os_log(_:dso:log:type:_:)();
}

void InCallControlsCollectionViewController.participantIdentifiers.getter()
{
  OUTLINED_FUNCTION_29();
  v23 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  v7 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v13 = v12 - v11;
  v14 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_participants;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v15 = *(v0 + v14);
  v16 = *(v15 + 16);
  if (v16)
  {
    v24 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    OUTLINED_FUNCTION_40_3();
    v18 = v15 + v17;
    v22 = *(v2 + 72);
    do
    {
      OUTLINED_FUNCTION_7_5();
      _s15ConversationKit11ParticipantVWOcTm_10(v18, v6);
      (*(v9 + 16))(v13, v6 + *(v23 + 20), v7);
      OUTLINED_FUNCTION_5_104();
      outlined destroy of Participant.State();
      v20 = *(v24 + 16);
      v19 = *(v24 + 24);
      if (v20 >= v19 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v19);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      *(v24 + 16) = v20 + 1;
      OUTLINED_FUNCTION_40_3();
      (*(v9 + 32))(v24 + v21 + *(v9 + 72) * v20, v13, v7);
      v18 += v22;
      --v16;
    }

    while (v16);
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t InCallControlsCollectionViewController.participantCount.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_participants;
  OUTLINED_FUNCTION_19_1();
  return *(*(v0 + v1) + 16);
}

uint64_t (*protocol witness for ParticipantsViewController.participantsViewControllerDelegate.modify in conformance InCallControlsCollectionViewController(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = *v1;
  v5 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_participantsViewControllerDelegate;
  v3[5] = *v1;
  v3[6] = v5;
  v6 = v4 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  v3[3] = Strong;
  v3[4] = v8;
  return ParticipantGridViewController.participantsViewControllerDelegate.modify;
}

void InCallControlsCollectionViewController.inCallControlsParticipantCell(_:didTapAction:for:)()
{
  OUTLINED_FUNCTION_29();
  v47 = v1;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for InCallControlsCollectionViewController.Action(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  v15 = v0 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_inCallControlsCollectionViewControllerDelegate;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v41 = v6;
    v42 = v0;
    v43 = v5;
    v44 = v10;
    v40 = *(v15 + 8);
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v46 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v16 = OUTLINED_FUNCTION_54();
    *(v16 + 16) = xmmword_1BC4BAA20;
    HIBYTE(v48) = v3;
    v17 = String.init<A>(reflecting:)();
    v45 = v3;
    v19 = v18;
    v20 = MEMORY[0x1E69E6158];
    *(v16 + 56) = MEMORY[0x1E69E6158];
    v21 = lazy protocol witness table accessor for type String and conformance String();
    *(v16 + 64) = v21;
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    v22 = type metadata accessor for UUID();
    OUTLINED_FUNCTION_7_0();
    v24 = *(v23 + 16);
    v24(v14, v47, v22);
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v22);
    specialized >> prefix<A>(_:)(v14, v28, v29, v30, v31, v32, v33, v34, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
    v36 = v35;
    v38 = v37;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s10Foundation4UUIDVSgMd);
    *(v16 + 96) = v20;
    *(v16 + 104) = v21;
    *(v16 + 72) = v36;
    *(v16 + 80) = v38;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    switch(v45)
    {
      case 4:
        swift_unknownObjectRelease();
        break;
      default:
        swift_getObjectType();
        v39 = OUTLINED_FUNCTION_13_58();
        (v24)(v39);
        OUTLINED_FUNCTION_72_11();
        swift_storeEnumTagMultiPayload();
        (*(v40 + 8))(v42, v20, v43, v38);
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_1_127();
        outlined destroy of Participant.State();
        break;
    }
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_41_0();
    os_log(_:dso:log:type:_:)();
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t InCallControlsCollectionViewController.inCallControlsActivityCell(_:didTap:)(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for InCallControlsCollectionViewController.Action(v3);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    swift_getObjectType();
    outlined init with copy of IDSLookupManager(a2, v7);
    OUTLINED_FUNCTION_62_0();
    swift_storeEnumTagMultiPayload();
    v8 = OUTLINED_FUNCTION_27_36();
    v9(v8);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_1_127();
    return outlined destroy of Participant.State();
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_41_0();
    return os_log(_:dso:log:type:_:)();
  }
}

uint64_t InCallControlsCollectionViewController.inCallControlsTitleCell(_:didTap:from:)(uint64_t a1, unsigned __int8 a2)
{
  type metadata accessor for InCallControlsCollectionViewController.Action(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  if (a2 - 2 >= 3)
  {
    if (a2)
    {
      if (one-time initialization token for conversationKit == -1)
      {
LABEL_11:
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();
        OUTLINED_FUNCTION_29_6();
        swift_storeEnumTagMultiPayload();
        InCallControlsCollectionViewController.inCallControlsTitleCellDidTapButton(_:_:)();
        OUTLINED_FUNCTION_1_127();
        return outlined destroy of Participant.State();
      }
    }

    else if (one-time initialization token for conversationKit == -1)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_0_6();
    goto LABEL_11;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_41_0();

  return os_log(_:dso:log:type:_:)();
}

uint64_t InCallControlsCollectionViewController.inCallControlsTitleCellDidTapButton(_:_:)()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v0 = OUTLINED_FUNCTION_27_36();
    v1(v0);
    return swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_41_0();
    return os_log(_:dso:log:type:_:)();
  }
}

void InCallControlsCollectionViewController.inCallControlsBaseCellDidTapButton(_:)()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for InCallControlsAddParticipantCell();
  if (swift_dynamicCastClass())
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v2 = OUTLINED_FUNCTION_13_12();
    *(v2 + 16) = xmmword_1BC4BA940;
    InCallControlsCollectionViewController.isAddingParticipantsAllowed.getter();
    v3 = String.init<A>(reflecting:)();
    v5 = v4;
    *(v2 + 56) = MEMORY[0x1E69E6158];
    *(v2 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v2 + 32) = v3;
    *(v2 + 40) = v5;
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_45_19();
    os_log(_:dso:log:type:_:)();

    v6 = &v1[OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_inCallControlsCollectionViewControllerDelegate];
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = *(v6 + 1);
      if (InCallControlsCollectionViewController.isAddingParticipantsAllowed.getter())
      {
        v10 = type metadata accessor for SpringBoardUtilities();
        specialized static SpringBoardUtilities.requestPasscodeUnlock(_:)(v10, v8, v9, v1, v0);
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      static os_log_type_t.error.getter();
      OUTLINED_FUNCTION_45_19();
      os_log(_:dso:log:type:_:)();
    }
  }
}

void InCallControlsCollectionViewController.idsCapabilitiesChecker(_:didUpdate:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_dataSource;
  OUTLINED_FUNCTION_19_1();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = v2;
    if ([v0 isViewLoaded])
    {

      v5 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_ShyAFGTt0g5(v4);
      InCallControlsCollectionViewController.reloadSections(_:in:animatingDifferences:)(v5, v3, 1, specialized _ArrayProtocol.filter(_:), MEMORY[0x1E69DC138]);
    }

    else
    {
    }
  }
}

uint64_t InCallControlsCollectionViewController.inCallControlsDidToggleIgnoreLMIRequestsCell(_:)()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for InCallControlsCollectionViewController.Action(v0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_62_0();
    swift_storeEnumTagMultiPayload();
    v2 = OUTLINED_FUNCTION_27_36();
    v3(v2);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_1_127();
    return outlined destroy of Participant.State();
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_41_0();
    return os_log(_:dso:log:type:_:)();
  }
}

void InCallControlsCollectionViewController.inCallControlsDidToggleCaptionsCell(_:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  type metadata accessor for InCallControlsCollectionViewController.Action(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v4 = &v0[OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_inCallControlsCollectionViewControllerDelegate];
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_41_0();
    os_log(_:dso:log:type:_:)();
    goto LABEL_15;
  }

  v6 = Strong;
  v7 = *(v4 + 1);
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = v0;
  v8[5] = v2;
  v9 = one-time initialization token for shared;
  v10 = v2;
  v11 = v0;
  swift_unknownObjectRetain();
  if (v9 != -1)
  {
    OUTLINED_FUNCTION_3_15();
    swift_once();
  }

  OUTLINED_FUNCTION_0_1();
  if ((*(v12 + 728))())
  {
    goto LABEL_8;
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((*((*MEMORY[0x1E69E7D40] & *static ConversationCapabilities.shared) + 0x50))())
  {
LABEL_8:
    swift_getObjectType();
    swift_storeEnumTagMultiPayload();
    v13 = OUTLINED_FUNCTION_40_2();
    v14(v13);
    OUTLINED_FUNCTION_1_127();
    outlined destroy of Participant.State();
    InCallControlsCollectionViewController.configureToggleCaptionsCell(_:)(v10);
LABEL_14:

    swift_unknownObjectRelease();
LABEL_15:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v15 = objc_opt_self();
  v16 = [v15 conversationKit];
  OUTLINED_FUNCTION_40_0();
  v17.super.isa = v16;
  v39 = OUTLINED_FUNCTION_17_0(0xD00000000000001FLL, 0x80000001BC50EAD0, 0x61737265766E6F43, 0xEF74694B6E6F6974, v17);
  v19 = v18;

  v20 = MEMORY[0x1BFB209B0](0xD000000000000021, 0x80000001BC50EAF0);
  v21 = TUStringKeyForProduct();

  if (v21)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = [v15 conversationKit];
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_24_3();
    v23.super.isa = v22;
    v27 = OUTLINED_FUNCTION_17_0(v24, v25, v26, 0xEF74694B6E6F6974, v23);
    v29 = v28;

    v30 = @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(v39, v19, v27, v29, 1);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction);
    v31 = [v15 conversationKit];
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_24_3();
    OUTLINED_FUNCTION_14_2();
    v32.super.isa = v31;
    OUTLINED_FUNCTION_17_0(v33, v34, v35, v36, v32);

    v37 = swift_allocObject();
    *(v37 + 16) = partial apply for closure #1 in InCallControlsCollectionViewController.inCallControlsDidToggleCaptionsCell(_:);
    *(v37 + 24) = v8;

    v38 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
    [v30 addAction_];
    [v11 presentViewController:v30 animated:1 completion:0];

    goto LABEL_14;
  }

  __break(1u);
}

uint64_t closure #1 in InCallControlsCollectionViewController.inCallControlsDidToggleCaptionsCell(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for InCallControlsCollectionViewController.Action(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  swift_storeEnumTagMultiPayload();
  (*(a2 + 8))(a3, v9, a4, ObjectType, a2);
  outlined destroy of Participant.State();
  return InCallControlsCollectionViewController.configureToggleCaptionsCell(_:)(a4);
}

uint64_t closure #2 in InCallControlsCollectionViewController.inCallControlsDidToggleCaptionsCell(_:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = (*(*static Defaults.shared + 736))(1);
  return a2(v3);
}

uint64_t InCallControlsCollectionViewController.shareLinkCell(cell:tappedCopyLinkButton:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, char *, void *))
{
  v8 = &v5[OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_inCallControlsCollectionViewControllerDelegate];
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(v8 + 1);
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    v12 = type metadata accessor for SpringBoardUtilities();
    return a5(v12, v10, v11, v5, a1);
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_41_0();
    return os_log(_:dso:log:type:_:)();
  }
}

void closure #1 in InCallControlsCollectionViewController.collectionView(_:didSelectItemAt:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  type metadata accessor for InCallControlsCollectionViewController.Action(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  if (v7)
  {
    ObjectType = swift_getObjectType();
    swift_storeEnumTagMultiPayload();
    (*(v5 + 8))(v3, v11, v1, ObjectType, v5);
    OUTLINED_FUNCTION_1_127();
    outlined destroy of Participant.State();
    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_45_19();
    OUTLINED_FUNCTION_30_0();

    os_log(_:dso:log:type:_:)();
  }
}

BOOL closure #1 in Conversation.unknownHandles.getter(void **a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BAC30;
  *(inited + 32) = [v1 handle];
  v3 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8TUHandleC_SayAEGTt0g5(inited);
  if (one-time initialization token for faceTime != -1)
  {
LABEL_12:
    swift_once();
  }

  specialized Sequence.compactMap<A>(_:)(v3);
  v5 = v4;

  v6 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7CC0];
  v7 = *(v5 + 16);
LABEL_3:
  v8 = 56 * v6 + 32;
  while (v7 != v6)
  {
    if (v6 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_12;
    }

    ++v6;
    v9 = *(v5 + v8);
    v8 += 56;
    if (v9)
    {
      v10 = v9;
      MEMORY[0x1BFB20CC0]();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v3 = v13;
      goto LABEL_3;
    }
  }

  v11 = specialized Array.count.getter(v3);

  return v11 == 0;
}

void *partial apply for closure #1 in InCallControlsCollectionViewController.viewDidLoad()()
{
  OUTLINED_FUNCTION_55();
  v3 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return closure #1 in InCallControlsCollectionViewController.viewDidLoad()(v2, v0, v5, v6);
}

uint64_t outlined bridged method (ob) of @objc TUConversation.messagesGroupPhotoData.getter(void *a1)
{
  v2 = [a1 messagesGroupPhotoData];

  if (!v2)
  {
    return 0;
  }

  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = a2 - a1;
  if (a2 == a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = result;
      memmove(result + 4, a1, v4);
      return v5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_5(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_170();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InCallControlsCollectionViewController.CollectionViewSection and conformance InCallControlsCollectionViewController.CollectionViewSection()
{
  result = lazy protocol witness table cache variable for type InCallControlsCollectionViewController.CollectionViewSection and conformance InCallControlsCollectionViewController.CollectionViewSection;
  if (!lazy protocol witness table cache variable for type InCallControlsCollectionViewController.CollectionViewSection and conformance InCallControlsCollectionViewController.CollectionViewSection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InCallControlsCollectionViewController.CollectionViewSection and conformance InCallControlsCollectionViewController.CollectionViewSection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InCallControlsCollectionViewController.CollectionViewSection and conformance InCallControlsCollectionViewController.CollectionViewSection;
  if (!lazy protocol witness table cache variable for type InCallControlsCollectionViewController.CollectionViewSection and conformance InCallControlsCollectionViewController.CollectionViewSection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InCallControlsCollectionViewController.CollectionViewSection and conformance InCallControlsCollectionViewController.CollectionViewSection);
  }

  return result;
}

void type metadata completion function for InCallControlsCollectionViewController()
{
  type metadata accessor for UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(319, &lazy cache variable for type metadata for UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?, &_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit027InCallControlsSectionHeaderB0CGMd);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(319, &lazy cache variable for type metadata for UICollectionView.CellRegistration<InCallControlsActivityCell, UUID>?, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit022InCallControlsActivityD0C10Foundation4UUIDVGMd);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(319, &lazy cache variable for type metadata for UICollectionView.CellRegistration<InCallControlsTitleCell, UUID>?, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit019InCallControlsTitleD0C10Foundation4UUIDVGMd);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(319, &lazy cache variable for type metadata for UICollectionView.CellRegistration<InCallControlsStatusCell, UUID>?, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit020InCallControlsStatusD0C10Foundation4UUIDVGMd);
        if (v3 <= 0x3F)
        {
          type metadata accessor for UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(319, &lazy cache variable for type metadata for UICollectionView.CellRegistration<InCallControlsParticipantCell, UUID>?, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit025InCallControlsParticipantD0C10Foundation4UUIDVGMd);
          if (v4 <= 0x3F)
          {
            type metadata accessor for UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(319, &lazy cache variable for type metadata for UICollectionView.CellRegistration<InCallControlsAddParticipantCell, UUID>?, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit028InCallControlsAddParticipantD0C10Foundation4UUIDVGMd);
            if (v5 <= 0x3F)
            {
              type metadata accessor for UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(319, &lazy cache variable for type metadata for UICollectionView.CellRegistration<InCallControlsShareLinkCell, UUID>?, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit023InCallControlsShareLinkD0C10Foundation4UUIDVGMd);
              if (v6 <= 0x3F)
              {
                type metadata accessor for UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(319, &lazy cache variable for type metadata for UICollectionView.CellRegistration<InCallControlsIgnoreLMIRequestsCell, UUID>?, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit031InCallControlsIgnoreLMIRequestsD0C10Foundation4UUIDVGMd);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(319, &lazy cache variable for type metadata for UICollectionView.CellRegistration<InCallControlsToggleCaptionsCell, UUID>?, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit028InCallControlsToggleCaptionsD0C10Foundation4UUIDVGMd);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(319, &lazy cache variable for type metadata for UICollectionView.CellRegistration<UICollectionViewListCell, UUID>?, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0ab4ListD0C10Foundation4UUIDVGMd);
                    if (v9 <= 0x3F)
                    {
                      type metadata accessor for UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(319, &lazy cache variable for type metadata for UICollectionView.CellRegistration<InCallControlsOpenMessagesCell, UUID>?, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit026InCallControlsOpenMessagesD0C10Foundation4UUIDVGMd);
                      if (v10 <= 0x3F)
                      {
                        type metadata accessor for UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(319, &lazy cache variable for type metadata for UICollectionView.CellRegistration<InCallControlsBlockCell, UUID>?, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit019InCallControlsBlockD0C10Foundation4UUIDVGMd);
                        if (v11 <= 0x3F)
                        {
                          type metadata accessor for UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(319, &lazy cache variable for type metadata for UICollectionView.CellRegistration<InCallControlsReportCell, UUID>?, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit020InCallControlsReportD0C10Foundation4UUIDVGMd);
                          if (v12 <= 0x3F)
                          {
                            type metadata accessor for UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(319, &lazy cache variable for type metadata for UICollectionView.CellRegistration<InCallControlsPTTTitleCell, UUID>?, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit022InCallControlsPTTTitleD0C10Foundation4UUIDVGMd);
                            if (v13 <= 0x3F)
                            {
                              type metadata accessor for UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(319, &lazy cache variable for type metadata for UICollectionView.CellRegistration<InCallControlsPTTLeaveChannelCell, UUID>?, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit029InCallControlsPTTLeaveChannelD0C10Foundation4UUIDVGMd);
                              if (v14 <= 0x3F)
                              {
                                type metadata accessor for UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(319, &lazy cache variable for type metadata for UICollectionView.SupplementaryRegistration<InCallControlsPTTLeaveChannelFooterView>?, &_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit035InCallControlsPTTLeaveChannelFooterB0CGMd);
                                if (v15 <= 0x3F)
                                {
                                  type metadata accessor for UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(319, &lazy cache variable for type metadata for UICollectionView.CellRegistration<InCallControlsPTTOpenAppCell, UUID>?, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit024InCallControlsPTTOpenAppD0C10Foundation4UUIDVGMd);
                                  if (v16 <= 0x3F)
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
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    OUTLINED_FUNCTION_170();
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for InCallControlsCollectionViewController.CollectionViewSection(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t type metadata completion function for InCallControlsCollectionViewController.Action()
{
  result = type metadata accessor for Activity();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for Activity()
{
  result = lazy cache variable for type metadata for Activity;
  if (!lazy cache variable for type metadata for Activity)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Activity);
  }

  return result;
}

uint64_t partial apply for closure #1 in InCallControlsCollectionViewController.apply(_:to:animatingDifferences:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy15ConversationKit38InCallControlsCollectionViewControllerC0kL7SectionO10Foundation4UUIDVGMd);
  OUTLINED_FUNCTION_9_0(v0);

  return closure #1 in InCallControlsCollectionViewController.apply(_:to:animatingDifferences:)();
}

uint64_t TranscriptionView.init(viewModel:positionalData:lowConfidenceText:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *a4 = 0x10000;
  v8 = type metadata accessor for TranscriptionView();
  v9 = v8[6];
  *(a4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for TranscriptionViewModel(0);
  OUTLINED_FUNCTION_3_121();
  _s15ConversationKit22TranscriptionViewModelCAC7Combine16ObservableObjectAAWlTm_1(v10, v11);

  *(a4 + 8) = ObservedObject.init(wrappedValue:)();
  *(a4 + 16) = v12;
  *(a4 + v8[7]) = a1;
  v13 = (a4 + v8[8]);
  *v13 = a2;
  v13[1] = a3;

  v14 = TranscriptionView.font.getter();
  [(objc_class *)v14 pointSize];
  v16 = v15;

  v17 = OBJC_IVAR____TtC15ConversationKit14PositionalData_autoScrollTolerance;
  OUTLINED_FUNCTION_27_37();
  *(a1 + v17) = v16 + v16;
  PositionalData.updateBottomVisibility()();
}

uint64_t type metadata accessor for TranscriptionView()
{
  result = type metadata singleton initialization cache for TranscriptionView;
  if (!type metadata singleton initialization cache for TranscriptionView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Class TranscriptionView.font.getter()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v3 = [v2 LVMEverywhere];

  type metadata accessor for UIFont();
  v4 = MEMORY[0x1E69DDDB8];
  if (v3)
  {
    v4 = MEMORY[0x1E69DDD08];
  }

  v5 = static UIFont.preferredFont(textStyle:weight:maximumPointSize:)(*v4, 0, 1);
  isa = UIFont.withTraits(_:)(*v1).super.isa;

  return isa;
}

void one-time initialization function for someoneIsLeavingAMessage()
{
  v0 = [objc_opt_self() conversationKit];
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x61737265766E6F43;
  v1.value._object = 0xEF74694B6E6F6974;
  v2._object = 0x80000001BC50F190;
  v2._countAndFlagsBits = 0xD00000000000001CLL;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  static TranscriptionView.Strings.someoneIsLeavingAMessage = v4;
}

__int128 *TranscriptionView.Strings.someoneIsLeavingAMessage.unsafeMutableAddressor()
{
  if (one-time initialization token for someoneIsLeavingAMessage != -1)
  {
    OUTLINED_FUNCTION_11_76();
  }

  return &static TranscriptionView.Strings.someoneIsLeavingAMessage;
}

void one-time initialization function for someoneIsLeavingAMessageFormat()
{
  v0 = [objc_opt_self() conversationKit];
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x61737265766E6F43;
  v1.value._object = 0xEF74694B6E6F6974;
  v2._object = 0x80000001BC50F150;
  v2._countAndFlagsBits = 0xD000000000000017;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  static TranscriptionView.Strings.someoneIsLeavingAMessageFormat = v4;
}

__int128 *TranscriptionView.Strings.someoneIsLeavingAMessageFormat.unsafeMutableAddressor()
{
  if (one-time initialization token for someoneIsLeavingAMessageFormat != -1)
  {
    swift_once();
  }

  return &static TranscriptionView.Strings.someoneIsLeavingAMessageFormat;
}

uint64_t static TranscriptionView.Strings.someoneIsLeavingAMessage.getter(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;

  return v3;
}

double TranscriptionView.textSize.getter()
{
  v0 = TranscriptionView.font.getter();
  [(objc_class *)v0 pointSize];
  v2 = v1;

  return v2;
}

void TranscriptionView.redactionReasons.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_30();
  v23 = type metadata accessor for EnvironmentValues();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &a9 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = OUTLINED_FUNCTION_43_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v29);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;
  type metadata accessor for TranscriptionView();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for RedactionReasons();
    OUTLINED_FUNCTION_7_0();
    (*(v33 + 32))(v20, v32);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v34 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v25 + 8))(v28, v23);
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t TranscriptionView.showTranscript.getter()
{
  if (TranscriptionViewModel.state.getter() == 1 && (type metadata accessor for Defaults(), swift_allocObject(), v0 = Defaults.init()(), v1 = (*(*v0 + 248))(v0), v2 = , (v1) || (v2 = TranscriptionViewModel.state.getter(), v2 == 2) || (v2 = TranscriptionViewModel.state.getter(), v2 == 3)) && (TranscriptionView.hidePrivacySensitiveContent.getter(v2) & 1) == 0)
  {
    v3 = TranscriptionViewModel.isGibberish.getter() ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t TranscriptionView.showWaiting.getter()
{
  if (TranscriptionViewModel.state.getter() == 1 || (v0 = *(TranscriptionViewModel.captions.getter() + 16), , !v0))
  {
    type metadata accessor for Defaults();
    swift_allocObject();
    v2 = Defaults.init()();
    v3 = (*(*v2 + 248))(v2);

    v1 = v3 ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t TranscriptionView.viewModel.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

void TranscriptionView.$viewModel.getter()
{
  type metadata accessor for TranscriptionViewModel(0);
  OUTLINED_FUNCTION_3_121();
  _s15ConversationKit22TranscriptionViewModelCAC7Combine16ObservableObjectAAWlTm_1(v0, v1);
  OUTLINED_FUNCTION_46();

  JUMPOUT(0x1BFB1E3A0);
}

uint64_t TranscriptionView.transcriptView.getter()
{
  OUTLINED_FUNCTION_30();
  v2 = type metadata accessor for TranscriptionView();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of TranscriptionView(v1, &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_9_75();
  result = outlined init with take of TranscriptionView();
  *v0 = partial apply for closure #1 in TranscriptionView.transcriptView.getter;
  v0[1] = v4;
  return result;
}

uint64_t closure #1 in TranscriptionView.transcriptView.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TranscriptionView();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = type metadata accessor for TranscriptionViewModel(0);
  v10 = _s15ConversationKit22TranscriptionViewModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type TranscriptionViewModel and conformance TranscriptionViewModel, type metadata accessor for TranscriptionViewModel);
  MEMORY[0x1BFB1E3A0](v7, v8, v9, v10);
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v11 = v20;
  v19 = v21;
  v12 = TranscriptionView.font.getter();
  [(objc_class *)v12 pointSize];
  v14 = v13;

  v15 = *(a1 + *(v5 + 36));
  outlined init with copy of TranscriptionView(a1, &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = swift_allocObject();
  outlined init with take of TranscriptionView();
  outlined init with copy of TranscriptionView(a1, &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = swift_allocObject();
  outlined init with take of TranscriptionView();
  *a2 = v11;
  *(a2 + 8) = v19;
  *(a2 + 24) = v14 * 0.8;
  *(a2 + 32) = 0;
  *(a2 + 40) = v15;
  *(a2 + 48) = partial apply for closure #1 in closure #1 in TranscriptionView.transcriptView.getter;
  *(a2 + 56) = v16;
  *(a2 + 64) = partial apply for closure #2 in closure #1 in TranscriptionView.transcriptView.getter;
  *(a2 + 72) = v17;
  *(a2 + 80) = specialized implicit closure #2 in implicit closure #1 in variable initialization expression of AutoScrollingList._autoScrollViewModel;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
}

void TranscriptionView.captionRow(caption:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  OUTLINED_FUNCTION_30();
  v25 = type metadata accessor for ScreeningTranscriptLabel();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&a9 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = TranscriptionView.font.getter();
  v30 = type metadata accessor for TranscriptionViewModel.Caption(0);
  v31 = (v24 + *(v30 + 28));
  v33 = *v31;
  v32 = v31[1];
  v34 = (v20 + *(type metadata accessor for TranscriptionView() + 32));
  v35 = *v34;
  v36 = v34[1];
  v37 = *(v24 + *(v30 + 36));
  *v28 = v29;
  v28[1] = v33;
  v28[2] = v32;
  v28[3] = v35;
  v28[4] = v36;
  v28[5] = v37;

  static Color.white.getter();
  v38 = Color.opacity(_:)();

  v28[6] = v38;
  v39 = *(v25 + 36);
  *(v28 + v39) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd);
  swift_storeEnumTagMultiPayload();
  v40 = *(v25 + 40);
  *(v28 + v40) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_8_80();
  _s15ConversationKit22TranscriptionViewModelCAC7Combine16ObservableObjectAAWlTm_1(v41, v42);
  View.privacySensitive(_:)();
  outlined destroy of ScreeningTranscriptLabel(v28);
  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #2 in closure #1 in TranscriptionView.transcriptView.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA9TupleViewVy15ConversationKit018LiveVoicemailIntroE0V_AA15ModifiedContentVyAF24ScreeningTranscriptLabelVAA14_OpacityEffectVGtGGMd);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v11 - v3);
  type metadata accessor for Defaults();
  swift_allocObject();
  v5 = Defaults.init()();
  v6 = (*(*v5 + 248))(v5);

  if (v6)
  {
    v7 = static HorizontalAlignment.center.getter();
    v8 = static VerticalAlignment.lastTextBaseline.getter();
    *v4 = v7;
    v4[1] = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0Vy15ConversationKit018LiveVoicemailIntroD0V_AA15ModifiedContentVyAJ24ScreeningTranscriptLabelVAA14_OpacityEffectVGtGGMd);
    closure #1 in closure #2 in closure #1 in TranscriptionView.transcriptView.getter((v4 + *(v9 + 44)));
    outlined init with take of CaptionSectioner.SpeakerSection?();
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  }
}

uint64_t closure #1 in closure #2 in closure #1 in TranscriptionView.transcriptView.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit24ScreeningTranscriptLabelVAA14_OpacityEffectVGMd);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v18 - v7);
  type metadata accessor for TranscriptionViewModel(0);
  _s15ConversationKit22TranscriptionViewModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type TranscriptionViewModel and conformance TranscriptionViewModel, type metadata accessor for TranscriptionViewModel);

  v9 = ObservedObject.init(wrappedValue:)();
  v11 = v10;
  *v8 = TranscriptionView.font.getter();
  v8[1] = 0x7974706D65;
  v8[2] = 0xE500000000000000;
  v8[3] = 0;
  v12 = MEMORY[0x1E69E7CC0];
  v8[4] = 0xE000000000000000;
  v8[5] = v12;
  static Color.white.getter();
  v13 = Color.opacity(_:)();

  v8[6] = v13;
  v14 = type metadata accessor for ScreeningTranscriptLabel();
  v15 = *(v14 + 36);
  *(v8 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd);
  swift_storeEnumTagMultiPayload();
  v16 = *(v14 + 40);
  *(v8 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd);
  swift_storeEnumTagMultiPayload();
  *(v8 + *(v3 + 44)) = 0;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  *a1 = v9;
  a1[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22LiveVoicemailIntroViewV_7SwiftUI15ModifiedContentVyAA24ScreeningTranscriptLabelVAD14_OpacityEffectVGtMd);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s7SwiftUI15ModifiedContentVy15ConversationKit24ScreeningTranscriptLabelVAA14_OpacityEffectVGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s7SwiftUI15ModifiedContentVy15ConversationKit24ScreeningTranscriptLabelVAA14_OpacityEffectVGMd);
}

uint64_t TranscriptionView.positionalData.getter()
{
  type metadata accessor for TranscriptionView();
}

uint64_t TranscriptionView.lowConfidenceText.getter()
{
  type metadata accessor for TranscriptionView();

  return OUTLINED_FUNCTION_46();
}

void TranscriptionView.body.getter()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_30();
  v2 = type metadata accessor for TranscriptionView();
  MEMORY[0x1EEE9AC00](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAGyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA16_FlexFrameLayoutVGAKyAA4FontVSgGGAA016_ForegroundStyleK0VyAA017HierarchicalShapeR0VGGAKyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverK0VGAA08_PaddingO0VGAA14GeometryReaderVyA10_17AutoScrollingListVyACyAA9TupleViewVyA10_22LiveVoicemailIntroViewV_AGyA10_24ScreeningTranscriptLabelVA8_GtGGSayA10_22TranscriptionViewModelC7CaptionVGA33_AA4ViewPAAE16privacySensitiveyQrSbFQOyA26__Qo_GGGAGyAA6VStackVyA22_yAEyA13_A13_G_A13_SgtGGA15_GGGMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11[-v4];
  *v5 = static Alignment.bottomLeading.getter();
  v5[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA19_ConditionalContentVyAIyAA08ModifiedI0VyAKyAKyAKyAKyAKyAKyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAA010_FlexFrameG0VGAOyAA4FontVSgGGAA016_ForegroundStyleO0VyAA017HierarchicalShapeU0VGGAOyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverO0VGAA08_PaddingG0VGAA14GeometryReaderVyA14_17AutoScrollingListVyAA0F0VyAA05TupleD0VyA14_018LiveVoicemailIntroD0V_AKyA14_24ScreeningTranscriptLabelVA12_GtGGSayA14_013TranscriptionD5ModelC7CaptionVGA39_AA0D0PAAE16privacySensitiveyQrSbFQOyA32__Qo_GGGAKyAA6VStackVyA28_yAIyA17_A17_G_A17_SgtGGA19_GGGMd);
  closure #1 in TranscriptionView.body.getter(v1, v5 + *(v7 + 44));
  v8 = OUTLINED_FUNCTION_43_0();
  outlined init with copy of TranscriptionView(v8, v9);
  swift_allocObject();
  OUTLINED_FUNCTION_9_75();
  outlined init with take of TranscriptionView();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type ZStack<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, _PaddingLayout>, GeometryReader<AutoScrollingList<ZStack<TupleView<(LiveVoicemailIntroView, ModifiedContent<ScreeningTranscriptLabel, _OpacityEffect>)>>, [TranscriptionViewModel.Caption], TranscriptionViewModel.Caption, <<opaque return type of View.privacySensitive(_:)>>.0>>>, ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritin, &_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAGyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA16_FlexFrameLayoutVGAKyAA4FontVSgGGAA016_ForegroundStyleK0VyAA017HierarchicalShapeR0VGGAKyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverK0VGAA08_PaddingO0VGAA14GeometryReaderVyA10_17AutoScrollingListVyACyAA9TupleViewVyA10_22LiveVoicemailIntroViewV_AGyA10_24ScreeningTranscriptLabelVA8_GtGGSayA10_22TranscriptionViewModelC7CaptionVGA33_AA4ViewPAAE16privacySensitiveyQrSbFQOyA26__Qo_GGGAGyAA6VStackVyA22_yAEyA13_A13_G_A13_SgtGGA15_GGGMd);
  View.onTapGesture(count:perform:)();

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAGyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA16_FlexFrameLayoutVGAKyAA4FontVSgGGAA016_ForegroundStyleK0VyAA017HierarchicalShapeR0VGGAKyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverK0VGAA08_PaddingO0VGAA14GeometryReaderVyA10_17AutoScrollingListVyACyAA9TupleViewVyA10_22LiveVoicemailIntroViewV_AGyA10_24ScreeningTranscriptLabelVA8_GtGGSayA10_22TranscriptionViewModelC7CaptionVGA33_AA4ViewPAAE16privacySensitiveyQrSbFQOyA26__Qo_GGGAGyAA6VStackVyA22_yAEyA13_A13_G_A13_SgtGGA15_GGGMd);
  static Alignment.bottomLeading.getter();
  OUTLINED_FUNCTION_21_42();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA6ZStackVyAA012_ConditionalD0VyALyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGAA16_FlexFrameLayoutVGAPyAA4FontVSgGGAA016_ForegroundStyleQ0VyAA017HierarchicalShapeX0VGGAPyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverQ0VGAA08_PaddingU0VGAA14GeometryReaderVyA15_17AutoScrollingListVyAJyAA05TupleE0VyA15_018LiveVoicemailIntroE0V_ACyA15_24ScreeningTranscriptLabelVA13_GtGGSayA15_013TranscriptionE5ModelC7CaptionVGA38_AeAE16privacySensitiveyQrSbFQOyA31__Qo_GGGACyAA6VStackVyA27_yALyA18_A18_G_A18_SgtGGA20_GGG_Qo_AVGMd);
  memcpy((v0 + *(v10 + 36)), v11, 0x70uLL);
  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in TranscriptionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAA016_ForegroundStyleM0VyAA017HierarchicalShapeT0VGGAMyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverM0VGA15_G_A15_SgtGGAA08_PaddingQ0VGMd);
  MEMORY[0x1EEE9AC00](v39);
  v4 = &v34 - v3;
  v5 = type metadata accessor for TranscriptionView();
  v35 = *(v5 - 8);
  v6 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0VyAGyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA16_FlexFrameLayoutVGAKyAA4FontVSgGGAA016_ForegroundStyleK0VyAA017HierarchicalShapeR0VGGAKyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverK0VGAA08_PaddingO0VGAA14GeometryReaderVyA10_17AutoScrollingListVyAA6ZStackVyAA9TupleViewVyA10_22LiveVoicemailIntroViewV_AGyA10_24ScreeningTranscriptLabelVA8_GtGGSayA10_22TranscriptionViewModelC7CaptionVGA35_AA4ViewPAAE16privacySensitiveyQrSbFQOyA28__Qo_GGGAGyAA6VStackVyA24_yACyA13_A13_G_A13_SgtGGA15_G_GMd);
  MEMORY[0x1EEE9AC00](v37);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA16_FlexFrameLayoutVGAKyAA4FontVSgGGAA016_ForegroundStyleK0VyAA017HierarchicalShapeR0VGGAKyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverK0VGAA08_PaddingO0VGAA14GeometryReaderVyA10_17AutoScrollingListVyAA6ZStackVyAA9TupleViewVyA10_22LiveVoicemailIntroViewV_AGyA10_24ScreeningTranscriptLabelVA8_GtGGSayA10_22TranscriptionViewModelC7CaptionVGA35_AA4ViewPAAE16privacySensitiveyQrSbFQOyA28__Qo_GG_GMd);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v34 - v8);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAA016_ForegroundStyleJ0VyAA017HierarchicalShapeQ0VGGAIyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverJ0VGAA08_PaddingN0VGAA14GeometryReaderVyA8_17AutoScrollingListVyAA6ZStackVyAA9TupleViewVyA8_22LiveVoicemailIntroViewV_AEyA8_24ScreeningTranscriptLabelVA6_GtGGSayA8_22TranscriptionViewModelC7CaptionVGA33_AA4ViewPAAE16privacySensitiveyQrSbFQOyA26__Qo_GGGMd);
  MEMORY[0x1EEE9AC00](v36);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverI0VGAA08_PaddingM0VGMd);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  if (TranscriptionView.showWaiting.getter())
  {
    v15 = [objc_opt_self() conversationKit];
    v40._object = 0xE000000000000000;
    v16._countAndFlagsBits = 0x2E474E4954494157;
    v17.value._countAndFlagsBits = 0x61737265766E6F43;
    v17.value._object = 0xEF74694B6E6F6974;
    v16._object = 0xEA00000000002E2ELL;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v40._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v40);

    TranscriptionView.text(verbatim:)();

    LOBYTE(v15) = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v19 = &v14[*(v12 + 36)];
    *v19 = v15;
    *(v19 + 1) = v20;
    *(v19 + 2) = v21;
    *(v19 + 3) = v22;
    *(v19 + 4) = v23;
    v19[40] = 0;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14GeometryReaderVy15ConversationKit17AutoScrollingListVyAA6ZStackVyAA9TupleViewVyAD018LiveVoicemailIntroL0V_AA15ModifiedContentVyAD24ScreeningTranscriptLabelVAA14_OpacityEffectVGtGGSayAD013TranscriptionL5ModelC7CaptionVGAyA0L0PAAE16privacySensitiveyQrSbFQOyAP_Qo_GGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type GeometryReader<AutoScrollingList<ZStack<TupleView<(LiveVoicemailIntroView, ModifiedContent<ScreeningTranscriptLabel, _OpacityEffect>)>>, [TranscriptionViewModel.Caption], TranscriptionViewModel.Caption, <<opaque return type of View.privacySensitive(_:)>>.0>> and conformance GeometryReader<A>, &_s7SwiftUI14GeometryReaderVy15ConversationKit17AutoScrollingListVyAA6ZStackVyAA9TupleViewVyAD018LiveVoicemailIntroL0V_AA15ModifiedContentVyAD24ScreeningTranscriptLabelVAA14_OpacityEffectVGtGGSayAD013TranscriptionL5ModelC7CaptionVGAyA0L0PAAE16privacySensitiveyQrSbFQOyAP_Qo_GGMd);
    _ConditionalContent<>.init(storage:)();
    sub_1BBCF3B28();
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, _PaddingLayout>, GeometryReader<AutoScrollingList<ZStack<TupleView<(LiveVoicemailIntroView, ModifiedContent<ScreeningTranscriptLabel, _OpacityEffect>)>>, [TranscriptionViewModel.Caption], TranscriptionViewModel.Caption, <<opaque return type of View.privacySensitive(_:)>>.0>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAA016_ForegroundStyleJ0VyAA017HierarchicalShapeQ0VGGAIyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverJ0VGAA08_PaddingN0VGAA14GeometryReaderVyA8_17AutoScrollingListVyAA6ZStackVyAA9TupleViewVyA8_22LiveVoicemailIntroViewV_AEyA8_24ScreeningTranscriptLabelVA6_GtGGSayA8_22TranscriptionViewModelC7CaptionVGA33_AA4ViewPAAE16privacySensitiveyQrSbFQOyA26__Qo_GGGMd);
    v24 = v14;
    v25 = &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverI0VGAA08_PaddingM0VGMd;
  }

  else
  {
    if (TranscriptionView.showTranscript.getter())
    {
      outlined init with copy of TranscriptionView(a1, &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      v26 = swift_allocObject();
      outlined init with take of TranscriptionView();
      *v9 = closure #1 in TranscriptionView.transcriptView.getterpartial apply;
      v9[1] = v26;
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14GeometryReaderVy15ConversationKit17AutoScrollingListVyAA6ZStackVyAA9TupleViewVyAD018LiveVoicemailIntroL0V_AA15ModifiedContentVyAD24ScreeningTranscriptLabelVAA14_OpacityEffectVGtGGSayAD013TranscriptionL5ModelC7CaptionVGAyA0L0PAAE16privacySensitiveyQrSbFQOyAP_Qo_GGMd);
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type GeometryReader<AutoScrollingList<ZStack<TupleView<(LiveVoicemailIntroView, ModifiedContent<ScreeningTranscriptLabel, _OpacityEffect>)>>, [TranscriptionViewModel.Caption], TranscriptionViewModel.Caption, <<opaque return type of View.privacySensitive(_:)>>.0>> and conformance GeometryReader<A>, &_s7SwiftUI14GeometryReaderVy15ConversationKit17AutoScrollingListVyAA6ZStackVyAA9TupleViewVyAD018LiveVoicemailIntroL0V_AA15ModifiedContentVyAD24ScreeningTranscriptLabelVAA14_OpacityEffectVGtGGSayAD013TranscriptionL5ModelC7CaptionVGAyA0L0PAAE16privacySensitiveyQrSbFQOyAP_Qo_GGMd);
      _ConditionalContent<>.init(storage:)();
      sub_1BBCF3B28();
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, _PaddingLayout>, GeometryReader<AutoScrollingList<ZStack<TupleView<(LiveVoicemailIntroView, ModifiedContent<ScreeningTranscriptLabel, _OpacityEffect>)>>, [TranscriptionViewModel.Caption], TranscriptionViewModel.Caption, <<opaque return type of View.privacySensitive(_:)>>.0>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout();
      _ConditionalContent<>.init(storage:)();

      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAA016_ForegroundStyleJ0VyAA017HierarchicalShapeQ0VGGAIyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverJ0VGAA08_PaddingN0VGAA14GeometryReaderVyA8_17AutoScrollingListVyAA6ZStackVyAA9TupleViewVyA8_22LiveVoicemailIntroViewV_AEyA8_24ScreeningTranscriptLabelVA6_GtGGSayA8_22TranscriptionViewModelC7CaptionVGA33_AA4ViewPAAE16privacySensitiveyQrSbFQOyA26__Qo_GGGMd);
    }

    *v4 = static HorizontalAlignment.center.getter();
    *(v4 + 1) = 0x4018000000000000;
    v4[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAA08ModifiedJ0VyAMyAMyAMyAMyAMyAMyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAA010_FlexFrameG0VGAQyAA4FontVSgGGAA016_ForegroundStyleP0VyAA017HierarchicalShapeV0VGGAQyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverP0VGA19_G_A19_SgtGGMd);
    closure #1 in closure #1 in TranscriptionView.body.getter();
    v28 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v29 = &v4[*(v39 + 36)];
    *v29 = v28;
    *(v29 + 1) = v30;
    *(v29 + 2) = v31;
    *(v29 + 3) = v32;
    *(v29 + 4) = v33;
    v29[40] = 0;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, _PaddingLayout>, GeometryReader<AutoScrollingList<ZStack<TupleView<(LiveVoicemailIntroView, ModifiedContent<ScreeningTranscriptLabel, _OpacityEffect>)>>, [TranscriptionViewModel.Caption], TranscriptionViewModel.Caption, <<opaque return type of View.privacySensitive(_:)>>.0>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout();
    _ConditionalContent<>.init(storage:)();
    v24 = v4;
    v25 = &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAA016_ForegroundStyleM0VyAA017HierarchicalShapeT0VGGAMyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverM0VGA15_G_A15_SgtGGAA08_PaddingQ0VGMd;
  }

  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v24, v25);
}

void TranscriptionView.text(verbatim:)()
{
  OUTLINED_FUNCTION_29();
  v24 = v0;
  v26 = v1;
  v27 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGMd) - 8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGAA14_OpacityEffectVGMd) - 8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  KeyPath = swift_getKeyPath();

  static Alignment.center.getter();
  OUTLINED_FUNCTION_21_42();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v29[120] = 0;
  memcpy(&v29[7], v30, 0x70uLL);
  v11 = static Font.title3.getter();
  v12 = swift_getKeyPath();
  v13 = static HierarchicalShapeStyle.primary.getter();
  v14 = swift_getKeyPath();
  v15 = &v6[*(v3 + 44)];
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA8MaterialVSgGMd) + 28);
  static Material.regular.getter();
  v17 = type metadata accessor for Material();
  __swift_storeEnumTagSinglePayload(v15 + v16, 0, 1, v17);
  *v15 = v14;
  v18 = v26;
  v19 = v24;
  *v6 = v26;
  *(v6 + 1) = v19;
  v6[16] = 0;
  *(v6 + 17) = *v28;
  *(v6 + 5) = *&v28[3];
  v20 = KeyPath;
  *(v6 + 3) = MEMORY[0x1E69E7CC0];
  *(v6 + 4) = v20;
  v6[40] = 1;
  memcpy(v6 + 41, v29, 0x77uLL);
  *(v6 + 20) = v12;
  *(v6 + 21) = v11;
  *(v6 + 44) = v13;
  outlined init with take of CaptionSectioner.SpeakerSection?();
  *&v10[*(v7 + 44)] = 0x3FE6666666666666;
  v21 = swift_getKeyPath();
  v22 = v27;
  outlined init with take of CaptionSectioner.SpeakerSection?();
  v23 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverI0VGMd) + 36);
  *v23 = v18;
  *(v23 + 8) = v19;
  *(v23 + 16) = v21;
  *(v23 + 24) = 0;

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in closure #1 in TranscriptionView.body.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverI0VGMd);
  MEMORY[0x1EEE9AC00](v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverI0VGSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = var50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = var50 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAA016_ForegroundStyleJ0VyAA017HierarchicalShapeQ0VGGAIyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverJ0VGA11_GMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = var50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = var50 - v11;
  TranscriptionView.aMessageIsBeingLeftView()(v13, v14, v15, v16, v17, v18, v19, v20, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
  if (TranscriptionView.hidePrivacySensitiveContent.getter(v21))
  {
    v22 = [objc_opt_self() conversationKit];
    v29._object = 0xE000000000000000;
    v23._countAndFlagsBits = 0x565F4F545F504154;
    v23._object = 0xEB00000000574549;
    v24.value._countAndFlagsBits = 0x61737265766E6F43;
    v24.value._object = 0xEF74694B6E6F6974;
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    v29._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, v22, v25, v29);

    TranscriptionView.text(verbatim:)();

    outlined init with take of CaptionSectioner.SpeakerSection?();
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  __swift_storeEnumTagSinglePayload(v6, v26, 1, v0);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAA016_ForegroundStyleJ0VyAA017HierarchicalShapeQ0VGGAIyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverJ0VGA11_G_A11_SgtMd);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverI0VGSgMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v12, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAA016_ForegroundStyleJ0VyAA017HierarchicalShapeQ0VGGAIyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverJ0VGA11_GMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverI0VGSgMd);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAA016_ForegroundStyleJ0VyAA017HierarchicalShapeQ0VGGAIyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverJ0VGA11_GMd);
}

void TranscriptionView.aMessageIsBeingLeftView()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  a19 = v20;
  a20 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA16_FlexFrameLayoutVGAKyAA4FontVSgGGAA016_ForegroundStyleK0VyAA017HierarchicalShapeR0VGGAKyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverK0VGA13__GMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverI0VGMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &a9 - v24;
  v26 = TranscriptionViewModel.callerDisplayName.getter();
  v28 = v27;

  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
    v30 = [objc_opt_self() conversationKit];
    v42._object = 0xE000000000000000;
    v31._object = 0x80000001BC50F150;
    v31._countAndFlagsBits = 0xD000000000000017;
    v32.value._countAndFlagsBits = 0x61737265766E6F43;
    v32.value._object = 0xEF74694B6E6F6974;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    v42._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v32, v30, v33, v42);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1BC4BA940;
    v35 = TranscriptionViewModel.callerDisplayName.getter();
    v37 = v36;
    *(v34 + 56) = MEMORY[0x1E69E6158];
    *(v34 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v34 + 32) = v35;
    *(v34 + 40) = v37;
    String.init(format:_:)();
  }

  else
  {
    if (one-time initialization token for someoneIsLeavingAMessage != -1)
    {
      OUTLINED_FUNCTION_11_76();
    }

    v38 = static TranscriptionView.Strings.someoneIsLeavingAMessage;
    v39 = [objc_opt_self() conversationKit];
    v43._object = 0xE000000000000000;
    v40.value._countAndFlagsBits = 0x61737265766E6F43;
    v40.value._object = 0xEF74694B6E6F6974;
    v41._countAndFlagsBits = 0;
    v41._object = 0xE000000000000000;
    v43._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v38, v40, v39, v41, v43);
  }

  TranscriptionView.text(verbatim:)();

  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier> and conformance <> ModifiedContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v25, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverI0VGMd);
  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #2 in TranscriptionView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptionView();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  type metadata accessor for SpringBoardUtilities();
  outlined init with copy of TranscriptionView(a1, &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = swift_allocObject();
  outlined init with take of TranscriptionView();
  static SpringBoardUtilities.requestPasscodeUnlock(_:)(partial apply for closure #1 in closure #2 in TranscriptionView.body.getter, v4);
}

uint64_t *TranscriptionView_Previews.viewModel.unsafeMutableAddressor()
{
  if (one-time initialization token for viewModel != -1)
  {
    OUTLINED_FUNCTION_0_157();
  }

  return &static TranscriptionView_Previews.viewModel;
}

uint64_t static TranscriptionView_Previews.viewModel.getter()
{
  if (one-time initialization token for viewModel != -1)
  {
    OUTLINED_FUNCTION_0_157();
  }
}

uint64_t static TranscriptionView_Previews.previews.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for viewModel != -1)
  {
    OUTLINED_FUNCTION_0_157();
  }

  type metadata accessor for PositionalData();
  swift_allocObject();
  v2 = PositionalData.init()();
  *a1 = 0x10000;
  v3 = type metadata accessor for TranscriptionView();
  v4 = v3[6];
  *(a1 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for TranscriptionViewModel(0);
  OUTLINED_FUNCTION_3_121();
  _s15ConversationKit22TranscriptionViewModelCAC7Combine16ObservableObjectAAWlTm_1(v5, v6);

  *(a1 + 8) = ObservedObject.init(wrappedValue:)();
  *(a1 + 16) = v7;
  *(a1 + v3[7]) = v2;
  v8 = (a1 + v3[8]);
  *v8 = 0xD000000000000013;
  v8[1] = 0x80000001BC50F170;

  v9 = TranscriptionView.font.getter();
  [(objc_class *)v9 pointSize];
  v11 = v10;

  v12 = OBJC_IVAR____TtC15ConversationKit14PositionalData_autoScrollTolerance;
  OUTLINED_FUNCTION_27_37();
  *(v2 + v12) = v11 + v11;
  PositionalData.updateBottomVisibility()();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v13 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit17TranscriptionViewVAA12_FrameLayoutVGMd) + 36));
  *v13 = v16;
  v13[1] = v17;
  v13[2] = v18;
  v14 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy15ConversationKit17TranscriptionViewVAA12_FrameLayoutVGAA13_TaskModifierVGMd) + 36));
  type metadata accessor for _TaskModifier();
  result = static TaskPriority.userInitiated.getter();
  *v14 = &async function pointer to partial apply for closure #1 in static TranscriptionView_Previews.previews.getter;
  v14[1] = 0;
  return result;
}

uint64_t closure #1 in static TranscriptionView_Previews.previews.getter()
{
  v1 = type metadata accessor for ContinuousClock.Instant();
  v0[14] = v1;
  v0[15] = *(v1 - 8);
  v0[16] = swift_task_alloc();
  v0[17] = swift_task_alloc();
  v0[18] = swift_task_alloc();
  v2 = type metadata accessor for ContinuousClock();
  v0[19] = v2;
  v0[20] = *(v2 - 8);
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();
  v3 = type metadata accessor for TranscriptionViewModel.Caption(0);
  v0[23] = v3;
  v0[24] = *(v3 - 8);
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  type metadata accessor for MainActor();
  v0[27] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[28] = v5;
  v0[29] = v4;

  return MEMORY[0x1EEE6DFA0](closure #1 in static TranscriptionView_Previews.previews.getter, v5, v4);
}

{
  if (one-time initialization token for viewModel != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    *(v0 + 30) = static TranscriptionView_Previews.viewModel;
    v1 = specialized Collection.prefix(_:)(4, &outlined read-only object #0 of one-time initialization function for phrases);
    v5 = v4 >> 1;
    v6 = (v4 >> 1) - v3;
    if (__OFSUB__(v4 >> 1, v3))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return MEMORY[0x1EEE6DC10](v1, v2, v3, v4);
    }

    if (!v6)
    {
      break;
    }

    v7 = v2;
    v8 = v3;
    v33 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if (v6 < 0)
    {
      goto LABEL_28;
    }

    v9 = 0;
    v29 = v6;
    v30 = v5;
    v31 = *(v0 + 23);
    v10 = (v7 + 16 * v8 + 8);
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    while (v8 < v5)
    {
      v32 = v8;
      v12 = v0;
      v13 = *(v0 + 26);
      v14 = *(v10 - 1);
      v15 = *v10;
      v0 = v31;

      Date.init()();
      Date.init()();
      *v13 = v9;
      v16 = (v13 + v31[7]);
      *v16 = v14;
      v16[1] = v15;
      *(v13 + v31[8]) = 0;
      *(v13 + v31[9]) = MEMORY[0x1E69E7CC0];
      *(v13 + v31[10]) = 1;
      if (!v11)
      {
        goto LABEL_25;
      }

      v17 = *(v33 + 16);
      if (v17 >= *(v33 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v0 = v12;
      *(v33 + 16) = v17 + 1;
      outlined init with take of TranscriptionView();
      ++v8;
      --v11;
      v10 += 2;
      ++v9;
      v5 = v30;
      if (v30 == v32 + 1)
      {
        swift_unknownObjectRelease();
        v6 = v29;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    OUTLINED_FUNCTION_0_157();
  }

  swift_unknownObjectRelease();
LABEL_13:
  TranscriptionViewModel.captions.setter();
  for (i = 0; ; i = *(v0 + 31) + 1)
  {
    *(v0 + 31) = i;
    specialized MutableCollection<>.shuffle<A>(using:)();
    v1 = &outlined read-only object #0 of one-time initialization function for phrases;
    *(v0 + 32) = &outlined read-only object #0 of one-time initialization function for phrases;
    v19 = unk_1F3ACA280;
    *(v0 + 34) = 0;
    *(v0 + 35) = v6;
    *(v0 + 33) = v19;
    if (v19)
    {
      break;
    }

    v20 = *(v0 + 31);

    if (v20 == 100)
    {

      OUTLINED_FUNCTION_4_113();

      OUTLINED_FUNCTION_13();

      return v27();
    }
  }

  if (!unk_1F3ACA280)
  {
    goto LABEL_29;
  }

  v21 = *(v0 + 17);
  v22 = v0;
  v23 = *(v0 + 15);
  v24 = *(v22 + 14);
  *(v22 + 36) = unk_1F3ACA290;
  *(v22 + 37) = unk_1F3ACA298;

  ContinuousClock.init()();
  static ContinuousClock.Instant.now.getter();
  OUTLINED_FUNCTION_7_16();
  v25 = *(v23 + 8);
  *(v22 + 38) = v25;
  *(v22 + 39) = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v25(v21, v24);
  v26 = swift_task_alloc();
  *(v22 + 40) = v26;
  *v26 = v22;
  OUTLINED_FUNCTION_2_122(v26);
  v1 = OUTLINED_FUNCTION_5_105(*(v22 + 18));

  return MEMORY[0x1EEE6DC10](v1, v2, v3, v4);
}

{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v4 = v3;
  *v4 = *v1;
  v3[41] = v0;

  v5 = v2[38];
  if (v0)
  {
    v6 = v3[22];
    v7 = v3[19];
    v8 = v3[20];

    v9 = OUTLINED_FUNCTION_43_0();
    v5(v9);
    (*(v8 + 8))(v6, v7);
    v10 = v3[28];
    v11 = v3[29];
    v12 = closure #1 in static TranscriptionView_Previews.previews.getter;
  }

  else
  {
    v13 = v3[22];
    v14 = v3[19];
    v15 = v3[20];
    (v5)(v3[18], v3[14]);
    v16 = *(v15 + 8);
    v3[42] = v16;
    v3[43] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v13, v14);
    v10 = v3[28];
    v11 = v3[29];
    v12 = closure #1 in static TranscriptionView_Previews.previews.getter;
  }

  return MEMORY[0x1EEE6DFA0](v12, v10, v11);
}

{
  *(v0 + 96) = *(v0 + 288);
  *(v0 + 80) = 0;
  v1 = *(v0 + 296);
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 104) = v1;
  v2 = lazy protocol witness table accessor for type String and conformance String();
  v3 = MEMORY[0x1BFB21D70](32, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x1E69E6158], v2);
  *(v0 + 352) = v3;

  v7 = *(v3 + 16);
  v8 = *(v0 + 280);
  *(v0 + 368) = 0;
  *(v0 + 376) = v8;
  *(v0 + 360) = v7;
  v9 = *(v0 + 352);
  if (v7)
  {
    if (!*(v9 + 16))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return MEMORY[0x1EEE6DC10](v9, v4, v5, v6);
    }

    v10 = *(v0 + 304);
    v11 = *(v0 + 136);
    v12 = *(v0 + 112);
    v14 = *(v9 + 48);
    v13 = *(v9 + 56);
    *(v0 + 16) = *(v9 + 32);
    *(v0 + 32) = v14;
    *(v0 + 40) = v13;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.append<A>(contentsOf:)();
    ContinuousClock.init()();
    static ContinuousClock.Instant.now.getter();
    ContinuousClock.Instant.advanced(by:)();
    v10(v11, v12);
    v15 = swift_task_alloc();
    *(v0 + 384) = v15;
    *v15 = v0;
    OUTLINED_FUNCTION_6_87(v15);
  }

  else
  {

    TranscriptionViewModel.captions.getter();
    specialized Sequence.suffix(_:)();
    TranscriptionViewModel.captions.setter();
    v17 = *(v0 + 264);
    v18 = *(v0 + 272) + 1;
    while (1)
    {
      *(v0 + 272) = v18;
      *(v0 + 280) = v8;
      v9 = *(v0 + 256);
      if (v18 != v17)
      {
        break;
      }

      v19 = *(v0 + 248);

      if (v19 == 100)
      {

        OUTLINED_FUNCTION_4_113();

        OUTLINED_FUNCTION_13();

        return v23();
      }

      ++*(v0 + 248);
      specialized MutableCollection<>.shuffle<A>(using:)();
      v18 = 0;
      *(v0 + 256) = &outlined read-only object #0 of one-time initialization function for phrases;
      v17 = unk_1F3ACA280;
      *(v0 + 264) = unk_1F3ACA280;
    }

    if (v18 >= *(v9 + 16))
    {
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_12_61(v9, v18);
    ContinuousClock.init()();
    static ContinuousClock.Instant.now.getter();
    OUTLINED_FUNCTION_7_16();
    v20 = OUTLINED_FUNCTION_13_59();
    v21(v20);
    v22 = swift_task_alloc();
    *(v0 + 320) = v22;
    *v22 = v0;
    OUTLINED_FUNCTION_2_122();
    v16 = *(v0 + 144);
  }

  v9 = OUTLINED_FUNCTION_5_105(v16);

  return MEMORY[0x1EEE6DC10](v9, v4, v5, v6);
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;
  v2[49] = v0;

  if (v0)
  {
    v4 = v2[42];
    v5 = v2[38];
    v6 = v2[21];
    v7 = v2[19];

    v8 = OUTLINED_FUNCTION_43_0();
    v5(v8);
    v4(v6, v7);

    v9 = v2[28];
    v10 = v2[29];
    v11 = closure #1 in static TranscriptionView_Previews.previews.getter;
  }

  else
  {
    v12 = v2[42];
    v13 = v2[21];
    v14 = v2[19];
    (v2[38])(v2[16], v2[14]);
    v12(v13, v14);
    v9 = v2[28];
    v10 = v2[29];
    v11 = closure #1 in static TranscriptionView_Previews.previews.getter;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

{
  v1 = *(v0 + 368);
  v2 = *(v0 + 376);
  v3 = *(v0 + 280);
  v4 = *(v0 + 200);
  v5 = *(v0 + 184);
  v6 = *(TranscriptionViewModel.captions.getter() + 16);

  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  Date.init()();
  Date.init()();
  *v4 = v2;
  v9 = (v4 + *(v5 + 28));
  *v9 = v7;
  v9[1] = v8;
  *(v4 + *(v5 + 32)) = 0;
  *(v4 + *(v5 + 36)) = MEMORY[0x1E69E7CC0];
  *(v4 + *(v5 + 40)) = 1;
  if (v1 == (v3 ^ 0x7FFFFFFFFFFFFFFFLL))
  {
    __break(1u);
  }

  else
  {
    v1 = v0 + 48;
    swift_getKeyPath();
    swift_getKeyPath();

    v5 = static Published.subscript.modify();
    v8 = v10;
    v11 = *v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v8 = v11;
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v6)
      {
        goto LABEL_4;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }
  }

  specialized _ArrayBuffer._consumeAndCreateNew()();
  v11 = isUniquelyReferenced_nonNull_native;
  *v8 = isUniquelyReferenced_nonNull_native;
  if (!v6)
  {
    goto LABEL_22;
  }

LABEL_4:
  if (v6 > *(v11 + 16))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  outlined assign with take of TranscriptionViewModel.Caption(*(v0 + 200), v11 + ((*(*(v0 + 192) + 80) + 32) & ~*(*(v0 + 192) + 80)) + *(*(v0 + 192) + 72) * (v6 - 1));
  (v5)(v1, 0);

  v16 = *(v0 + 360);
  v17 = *(v0 + 368) + 1;
  *(v0 + 368) = v17;
  *(v0 + 376) = v2 + 1;
  isUniquelyReferenced_nonNull_native = *(v0 + 352);
  if (v17 == v16)
  {

    TranscriptionViewModel.captions.getter();
    specialized Sequence.suffix(_:)();
    TranscriptionViewModel.captions.setter();
    v18 = *(v0 + 264);
    v19 = *(v0 + 272) + 1;
    while (1)
    {
      *(v0 + 272) = v19;
      *(v0 + 280) = v2 + 1;
      isUniquelyReferenced_nonNull_native = *(v0 + 256);
      if (v19 != v18)
      {
        break;
      }

      v20 = *(v0 + 248);

      if (v20 == 100)
      {

        OUTLINED_FUNCTION_4_113();

        OUTLINED_FUNCTION_13();

        return v32();
      }

      ++*(v0 + 248);
      specialized MutableCollection<>.shuffle<A>(using:)();
      v19 = 0;
      *(v0 + 256) = &outlined read-only object #0 of one-time initialization function for phrases;
      v18 = unk_1F3ACA280;
      *(v0 + 264) = unk_1F3ACA280;
    }

    if (v19 >= *(isUniquelyReferenced_nonNull_native + 16))
    {
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_12_61(isUniquelyReferenced_nonNull_native, v19);
    ContinuousClock.init()();
    static ContinuousClock.Instant.now.getter();
    OUTLINED_FUNCTION_7_16();
    v29 = OUTLINED_FUNCTION_13_59();
    v30(v29);
    v31 = swift_task_alloc();
    *(v0 + 320) = v31;
    *v31 = v0;
    OUTLINED_FUNCTION_2_122();
    v28 = *(v0 + 144);
    goto LABEL_14;
  }

  if (v17 >= *(isUniquelyReferenced_nonNull_native + 16))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return MEMORY[0x1EEE6DC10](isUniquelyReferenced_nonNull_native, v13, v14, v15);
  }

  v21 = *(v0 + 304);
  v22 = *(v0 + 136);
  v23 = *(v0 + 112);
  v24 = isUniquelyReferenced_nonNull_native + 32 * v17;
  v26 = *(v24 + 48);
  v25 = *(v24 + 56);
  *(v0 + 16) = *(v24 + 32);
  *(v0 + 32) = v26;
  *(v0 + 40) = v25;
  lazy protocol witness table accessor for type Substring and conformance Substring();
  String.append<A>(contentsOf:)();
  ContinuousClock.init()();
  static ContinuousClock.Instant.now.getter();
  ContinuousClock.Instant.advanced(by:)();
  v21(v22, v23);
  v27 = swift_task_alloc();
  *(v0 + 384) = v27;
  *v27 = v0;
  OUTLINED_FUNCTION_6_87();
LABEL_14:
  isUniquelyReferenced_nonNull_native = OUTLINED_FUNCTION_5_105(v28);

  return MEMORY[0x1EEE6DC10](isUniquelyReferenced_nonNull_native, v13, v14, v15);
}

{
  v1 = *(v0 + 328);

  OUTLINED_FUNCTION_4_113();

  OUTLINED_FUNCTION_13();

  return v2();
}

{
  v1 = *(v0 + 392);

  OUTLINED_FUNCTION_4_113();

  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t protocol witness for static _PreviewProvider._previews.getter in conformance TranscriptionView_Previews(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TranscriptionView_Previews and conformance TranscriptionView_Previews();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t protocol witness for static _PreviewProvider._platform.getter in conformance TranscriptionView_Previews(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TranscriptionView_Previews and conformance TranscriptionView_Previews();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

uint64_t specialized AutoScrollViewModel.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy15ConversationKit22TranscriptionViewModelC9CaptionIDVGGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  v9 = *(*v0 + 96);
  v13 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15ConversationKit22TranscriptionViewModelC9CaptionIDVGMd);
  Published.init(initialValue:)();
  (*(v6 + 32))(v0 + v9, v8, v5);
  v10 = *(*v0 + 104);
  v12[7] = 1;
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v10, v4, v1);
  return v0;
}

uint64_t specialized implicit closure #2 in implicit closure #1 in variable initialization expression of AutoScrollingList._autoScrollViewModel()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19AutoScrollViewModel33_D3B4D20066FA2C8011EAF639C52D2949LLCyAA013TranscriptioneF0C9CaptionIDVGMd);
  swift_allocObject();
  return specialized AutoScrollViewModel.init()();
}

uint64_t outlined destroy of ScreeningTranscriptLabel(uint64_t a1)
{
  v2 = type metadata accessor for ScreeningTranscriptLabel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #2 in TranscriptionView.body.getter()
{
  v1 = type metadata accessor for TranscriptionView();
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_20_1();

  return closure #2 in TranscriptionView.body.getter(v0 + v2);
}

uint64_t key path getter for EnvironmentValues.multilineTextAlignment : EnvironmentValues, serialized@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverI0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type AccessibilityVoiceOverModifier and conformance AccessibilityVoiceOverModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGAA14_OpacityEffectVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Material?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA8MaterialVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<HierarchicalShapeStyle> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA017HierarchicalShapeD0VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #1 in static TranscriptionView_Previews.previews.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in CallScreeningRTTHelper.callStatusChanged(_:);

  return closure #1 in static TranscriptionView_Previews.previews.getter();
}

unint64_t lazy protocol witness table accessor for type TranscriptionView_Previews and conformance TranscriptionView_Previews()
{
  result = lazy protocol witness table cache variable for type TranscriptionView_Previews and conformance TranscriptionView_Previews;
  if (!lazy protocol witness table cache variable for type TranscriptionView_Previews and conformance TranscriptionView_Previews)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TranscriptionView_Previews and conformance TranscriptionView_Previews);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TranscriptionView_Previews and conformance TranscriptionView_Previews;
  if (!lazy protocol witness table cache variable for type TranscriptionView_Previews and conformance TranscriptionView_Previews)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TranscriptionView_Previews and conformance TranscriptionView_Previews);
  }

  return result;
}

void type metadata completion function for TranscriptionView()
{
  type metadata accessor for UIFontDescriptorSymbolicTraits(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ObservedObject<TranscriptionViewModel>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Environment<RedactionReasons>();
      if (v2 <= 0x3F)
      {
        type metadata accessor for PositionalData();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Environment<RedactionReasons>()
{
  if (!lazy cache variable for type metadata for Environment<RedactionReasons>)
  {
    type metadata accessor for RedactionReasons();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<RedactionReasons>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA6ZStackVyAA012_ConditionalD0VyALyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGAA16_FlexFrameLayoutVGAPyAA4FontVSgGGAA016_ForegroundStyleQ0VyAA017HierarchicalShapeX0VGGAPyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverQ0VGAA08_PaddingU0VGAA14GeometryReaderVyA15_17AutoScrollingListVyAJyAA05TupleE0VyA15_018LiveVoicemailIntroE0V_ACyA15_24ScreeningTranscriptLabelVA13_GtGGSayA15_013TranscriptionE5ModelC7CaptionVGA38_AeAE16privacySensitiveyQrSbFQOyA31__Qo_GGGACyAA6VStackVyA27_yALyA18_A18_G_A18_SgtGGA20_GGG_Qo_AVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAGyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA16_FlexFrameLayoutVGAKyAA4FontVSgGGAA016_ForegroundStyleK0VyAA017HierarchicalShapeR0VGGAKyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverK0VGAA08_PaddingO0VGAA14GeometryReaderVyA10_17AutoScrollingListVyACyAA9TupleViewVyA10_22LiveVoicemailIntroViewV_AGyA10_24ScreeningTranscriptLabelVA8_GtGGSayA10_22TranscriptionViewModelC7CaptionVGA33_AA4ViewPAAE16privacySensitiveyQrSbFQOyA26__Qo_GGGAGyAA6VStackVyA22_yAEyA13_A13_G_A13_SgtGGA15_GGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type ZStack<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, _PaddingLayout>, GeometryReader<AutoScrollingList<ZStack<TupleView<(LiveVoicemailIntroView, ModifiedContent<ScreeningTranscriptLabel, _OpacityEffect>)>>, [TranscriptionViewModel.Caption], TranscriptionViewModel.Caption, <<opaque return type of View.privacySensitive(_:)>>.0>>>, ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritin, &_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAGyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA16_FlexFrameLayoutVGAKyAA4FontVSgGGAA016_ForegroundStyleK0VyAA017HierarchicalShapeR0VGGAKyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverK0VGAA08_PaddingO0VGAA14GeometryReaderVyA10_17AutoScrollingListVyACyAA9TupleViewVyA10_22LiveVoicemailIntroViewV_AGyA10_24ScreeningTranscriptLabelVA8_GtGGSayA10_22TranscriptionViewModelC7CaptionVGA33_AA4ViewPAAE16privacySensitiveyQrSbFQOyA26__Qo_GGGAGyAA6VStackVyA22_yAEyA13_A13_G_A13_SgtGGA15_GGGMd);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAA016_ForegroundStyleJ0VyAA017HierarchicalShapeQ0VGGAIyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverJ0VGA11_GMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<TranscriptionView, _FrameLayout>, _TaskModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TranscriptionView, _FrameLayout>, _TaskModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TranscriptionView, _FrameLayout>, _TaskModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy15ConversationKit17TranscriptionViewVAA12_FrameLayoutVGAA13_TaskModifierVGMd);
    lazy protocol witness table accessor for type ModifiedContent<TranscriptionView, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    _s15ConversationKit22TranscriptionViewModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type _TaskModifier and conformance _TaskModifier, MEMORY[0x1E697C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TranscriptionView, _FrameLayout>, _TaskModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<TranscriptionView, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<TranscriptionView, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<TranscriptionView, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit17TranscriptionViewVAA12_FrameLayoutVGMd);
    _s15ConversationKit22TranscriptionViewModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type TranscriptionView and conformance TranscriptionView, type metadata accessor for TranscriptionView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<TranscriptionView, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s15ConversationKit22TranscriptionViewModelCAC7Combine16ObservableObjectAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with take of TranscriptionView()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #2 in TranscriptionView.body.getter()
{
  v0 = type metadata accessor for TranscriptionView();
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_20_1();

  return closure #1 in closure #2 in TranscriptionView.body.getter();
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, _PaddingLayout>, GeometryReader<AutoScrollingList<ZStack<TupleView<(LiveVoicemailIntroView, ModifiedContent<ScreeningTranscriptLabel, _OpacityEffect>)>>, [TranscriptionViewModel.Caption], TranscriptionViewModel.Caption, <<opaque return type of View.privacySensitive(_:)>>.0>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, _PaddingLayout>, GeometryReader<AutoScrollingList<ZStack<TupleView<(LiveVoicemailIntroView, ModifiedContent<ScreeningTranscriptLabel, _OpacityEffect>)>>, [TranscriptionViewModel.Caption], TranscriptionViewModel.Caption, <<opaque return type of View.privacySensitive(_:)>>.0>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, _PaddingLayout>, GeometryReader<AutoScrollingList<ZStack<TupleView<(LiveVoicemailIntroView, ModifiedContent<ScreeningTranscriptLabel, _OpacityEffect>)>>, [TranscriptionViewModel.Caption], TranscriptionViewModel.Caption, <<opaque return type of View.privacySensitive(_:)>>.0>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAA016_ForegroundStyleJ0VyAA017HierarchicalShapeQ0VGGAIyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverJ0VGAA08_PaddingN0VGAA14GeometryReaderVyA8_17AutoScrollingListVyAA6ZStackVyAA9TupleViewVyA8_22LiveVoicemailIntroViewV_AEyA8_24ScreeningTranscriptLabelVA6_GtGGSayA8_22TranscriptionViewModelC7CaptionVGA33_AA4ViewPAAE16privacySensitiveyQrSbFQOyA26__Qo_GGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type GeometryReader<AutoScrollingList<ZStack<TupleView<(LiveVoicemailIntroView, ModifiedContent<ScreeningTranscriptLabel, _OpacityEffect>)>>, [TranscriptionViewModel.Caption], TranscriptionViewModel.Caption, <<opaque return type of View.privacySensitive(_:)>>.0>> and conformance GeometryReader<A>, &_s7SwiftUI14GeometryReaderVy15ConversationKit17AutoScrollingListVyAA6ZStackVyAA9TupleViewVyAD018LiveVoicemailIntroL0V_AA15ModifiedContentVyAD24ScreeningTranscriptLabelVAA14_OpacityEffectVGtGGSayAD013TranscriptionL5ModelC7CaptionVGAyA0L0PAAE16privacySensitiveyQrSbFQOyAP_Qo_GGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, _PaddingLayout>, GeometryReader<AutoScrollingList<ZStack<TupleView<(LiveVoicemailIntroView, ModifiedContent<ScreeningTranscriptLabel, _OpacityEffect>)>>, [TranscriptionViewModel.Caption], TranscriptionViewModel.Caption, <<opaque return type of View.privacySensitive(_:)>>.0>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeP0VGGAGyAA8MaterialVSgGGAA14_OpacityEffectVG15ConversationKit022AccessibilityVoiceOverI0VGAA08_PaddingM0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Material?>>, _OpacityEffect>, AccessibilityVoiceOverModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #1 in TranscriptionView.transcriptView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TranscriptionView();
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_20_1();

  return closure #1 in TranscriptionView.transcriptView.getter(v1 + v4, a1);
}

uint64_t partial apply for closure #2 in closure #1 in TranscriptionView.transcriptView.getter()
{
  OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for TranscriptionView();
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_20_1();

  return closure #2 in closure #1 in TranscriptionView.transcriptView.getter(v0);
}

uint64_t View.transition<A>(_:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  AnyTransition.init<A>(_:)();
  View.transition(_:)();
}

uint64_t TransitioningText<>.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit17TransitioningTextVyAA07FadeOutE12InTransitionVGMd) + 40);
  *(a3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  result = swift_storeEnumTagMultiPayload();
  *a3 = a1;
  a3[1] = a2;
  return result;
}

double FadeOutFadeInViewModifier.modifiedOpacity.getter()
{
  result = OUTLINED_FUNCTION_2_123();
  if (!(v3 ^ v4 | v2))
  {
    return v1;
  }

  return result;
}

double (*FadeOutFadeInViewModifier.animatableData.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return FadeOutFadeInViewModifier.animatableData.modify;
}

uint64_t FadeOutFadeInViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OUTLINED_FUNCTION_2_123();
  if (v7 ^ v8 | v6)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit07FadeOuth2IncD0VGMd);
  OUTLINED_FUNCTION_7_0();
  (*(v10 + 16))(a2, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy15ConversationKit07FadeOuti2IneF0VGAA14_OpacityEffectVGMd);
  *(a2 + *(result + 36)) = v9;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance FadeOutFadeInViewModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = lazy protocol witness table accessor for type FadeOutFadeInViewModifier and conformance FadeOutFadeInViewModifier();

  return MEMORY[0x1EEDDDD18](a1, a2, a3, a4, a5, v12, a6);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance FadeOutFadeInViewModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = lazy protocol witness table accessor for type FadeOutFadeInViewModifier and conformance FadeOutFadeInViewModifier();

  return MEMORY[0x1EEDDDD20](a1, a2, a3, a4, a5, v12, a6);
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance FadeOutFadeInViewModifier(void *a1))()
{
  a1[1] = v1;
  *a1 = *v1;
  return protocol witness for Animatable.animatableData.modify in conformance FadeOutFadeInViewModifier;
}

uint64_t FadeOutFadeInTransition.body(content:phase:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (TransitionPhase.isIdentity.getter())
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22PlaceholderContentViewVy15ConversationKit07FadeOutH12InTransitionVGMd);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(a2, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA011PlaceholderD4ViewVy15ConversationKit07FadeOutI12InTransitionVGAF0ijikF8ModifierVGMd);
  *(a2 + *(result + 36)) = v4;
  return result;
}

uint64_t TransitioningText.text.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TransitioningText.horizontalSizeClass.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  outlined init with copy of (CGFloat, AutoplayCandidate)(v2 + *(a1 + 40), &v14 - v10, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return outlined init with take of UserInterfaceSizeClass?(v11, a2);
  }

  static os_log_type_t.fault.getter();
  v13 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

uint64_t TransitioningText.toolbarFont.getter(uint64_t a1)
{
  v2 = type metadata accessor for UserInterfaceSizeClass();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - v16;
  if (static Platform.current.getter() != 1)
  {
    goto LABEL_8;
  }

  TransitioningText.horizontalSizeClass.getter(a1, v17);
  (*(v3 + 104))(v14, *MEMORY[0x1E697FF40], v2);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v2);
  v18 = *(v6 + 48);
  outlined init with copy of (CGFloat, AutoplayCandidate)(v17, v8, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined init with copy of (CGFloat, AutoplayCandidate)(v14, &v8[v18], &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  if (__swift_getEnumTagSinglePayload(v8, 1, v2) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    if (__swift_getEnumTagSinglePayload(&v8[v18], 1, v2) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
LABEL_11:
      static Font.footnote.getter();
      static Font.Weight.semibold.getter();
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  outlined init with copy of (CGFloat, AutoplayCandidate)(v8, v11, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  if (__swift_getEnumTagSinglePayload(&v8[v18], 1, v2) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    (*(v3 + 8))(v11, v2);
LABEL_7:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
    goto LABEL_8;
  }

  (*(v3 + 32))(v5, &v8[v18], v2);
  lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass();
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v22 = *(v3 + 8);
  v22(v5, v2);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  v22(v11, v2);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  if (v21)
  {
    goto LABEL_11;
  }

LABEL_8:
  static Font.caption.getter();
  static Font.Weight.regular.getter();
LABEL_9:
  v19 = Font.weight(_:)();

  return v19;
}

uint64_t TransitioningText.init(_:transition:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for TransitioningText();
  v11 = *(v10 + 40);
  *(a5 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  swift_storeEnumTagMultiPayload();
  *a5 = a1;
  a5[1] = a2;
  v12 = *(*(a4 - 8) + 32);
  v13 = a5 + *(v10 + 36);

  return v12(v13, a3, a4);
}

uint64_t TransitioningText.body.getter@<X0>(uint64_t *a1@<X8>)
{
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IDView<MarqueeLabel, String>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  *a1 = static Alignment.center.getter();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA15ModifiedContentVyAIyAA6IDViewVy014CommunicationsB012MarqueeLabelVSSGAA21_TraitWritingModifierVyAA010TransitionN3KeyVGGAA012_EnvironmentroP0VyAA4FontVSgGGGMd);
  closure #1 in TransitioningText.body.getter(v1, a1 + *(v4 + 44));
  static Animation.default.getter();
  v5 = Animation.speed(_:)();

  v7 = *v1;
  v6 = v1[1];
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyACyACyAA6IDViewVy014CommunicationsB012MarqueeLabelVSSGAA21_TraitWritingModifierVyAA010TransitionJ3KeyVGGAA012_EnvironmentnkL0VyAA4FontVSgGGGAA010_AnimationL0VySSGGMd) + 36));
  *v8 = v5;
  v8[1] = v7;
  v8[2] = v6;
}

uint64_t closure #1 in TransitioningText.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6IDViewVy014CommunicationsB012MarqueeLabelVSSGMd);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - v5;
  v7 = *a1;
  v8 = a1[1];
  v9 = objc_opt_self();

  v10 = [v9 labelColor];

  MarqueeLabel.init(text:attributedText:color:animated:)();
  v11 = &v6[*(v4 + 52)];
  *v11 = v7;
  *(v11 + 1) = v8;
  v12 = type metadata accessor for TransitioningText();
  v13 = *(v12 + 36);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type IDView<MarqueeLabel, String> and conformance IDView<A, B>, &_s7SwiftUI6IDViewVy014CommunicationsB012MarqueeLabelVSSGMd);
  View.transition<A>(_:)(a1 + v13);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s7SwiftUI6IDViewVy014CommunicationsB012MarqueeLabelVSSGMd);
  v14 = TransitioningText.toolbarFont.getter(v12);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy014CommunicationsB012MarqueeLabelVSSGAA21_TraitWritingModifierVyAA010TransitionI3KeyVGGAA012_EnvironmentmjK0VyAA4FontVSgGGMd);
  v17 = (a2 + *(result + 36));
  *v17 = KeyPath;
  v17[1] = v14;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IDView<MarqueeLabel, String>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IDView<MarqueeLabel, String>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IDView<MarqueeLabel, String>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy014CommunicationsB012MarqueeLabelVSSGAA21_TraitWritingModifierVyAA010TransitionI3KeyVGGAA012_EnvironmentmjK0VyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<IDView<MarqueeLabel, String>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IDView<MarqueeLabel, String>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<IDView<MarqueeLabel, String>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<IDView<MarqueeLabel, String>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<IDView<MarqueeLabel, String>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6IDViewVy014CommunicationsB012MarqueeLabelVSSGAA21_TraitWritingModifierVyAA010TransitionI3KeyVGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type IDView<MarqueeLabel, String> and conformance IDView<A, B>, &_s7SwiftUI6IDViewVy014CommunicationsB012MarqueeLabelVSSGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _TraitWritingModifier<TransitionTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA010TransitionC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<IDView<MarqueeLabel, String>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata completion function for TransitioningText()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<UserInterfaceSizeClass?>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for TransitioningText(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(type metadata accessor for UserInterfaceSizeClass() - 8);
  v10 = *(v9 + 64);
  v11 = *(v6 + 80);
  if (!*(v9 + 84))
  {
    ++v10;
  }

  v12 = 8;
  if (v10 > 8)
  {
    v12 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_27;
  }

  v13 = *(v9 + 80) & 0xF8 | 7;
  v14 = v12 + ((((v11 + 16) & ~v11) + *(v6 + 64) + v13) & ~v13) + 1;
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v8 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    if (v18 < 2)
    {
LABEL_27:
      if ((v7 & 0x80000000) != 0)
      {

        return __swift_getEnumTagSinglePayload((a1 + v11 + 16) & ~v11, v7, v5);
      }

      else
      {
        v20 = *(a1 + 1);
        if (v20 >= 0xFFFFFFFF)
        {
          LODWORD(v20) = -1;
        }

        return (v20 + 1);
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_19:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 > 3)
    {
      LODWORD(v14) = 4;
    }

    switch(v14)
    {
      case 2:
        LODWORD(v14) = *a1;
        break;
      case 3:
        LODWORD(v14) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v14) = *a1;
        break;
      default:
        LODWORD(v14) = *a1;
        break;
    }
  }

  return v8 + (v14 | v19) + 1;
}

void storeEnumTagSinglePayload for TransitioningText(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for UserInterfaceSizeClass() - 8);
  v12 = *(v11 + 64);
  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = (((v13 + 16) & ~v13) + *(v8 + 64) + v14) & ~v14;
  if (!*(v11 + 84))
  {
    ++v12;
  }

  if (v12 <= 8)
  {
    v12 = 8;
  }

  v16 = v12 + v15 + 1;
  v17 = 8 * v16;
  if (a3 <= v10)
  {
    v18 = 0;
  }

  else if (v16 <= 3)
  {
    v21 = ((a3 - v10 + ~(-1 << v17)) >> v17) + 1;
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

  if (v10 >= a2)
  {
    switch(v18)
    {
      case 1:
        a1[v16] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v16] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_48:
        __break(1u);
        break;
      case 4:
        *&a1[v16] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if ((v9 & 0x80000000) != 0)
          {

            __swift_storeEnumTagSinglePayload(&a1[v13 + 16] & ~v13, a2, v9, v7);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v19 = ~v10 + a2;
    if (v16 < 4)
    {
      v20 = (v19 >> v17) + 1;
      if (v16)
      {
        v23 = v19 & ~(-1 << v17);
        bzero(a1, v16);
        if (v16 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v16 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v19;
      v20 = 1;
    }

    switch(v18)
    {
      case 1:
        a1[v16] = v20;
        break;
      case 2:
        *&a1[v16] = v20;
        break;
      case 3:
        goto LABEL_48;
      case 4:
        *&a1[v16] = v20;
        break;
      default:
        return;
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<FadeOutFadeInViewModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<FadeOutFadeInViewModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<FadeOutFadeInViewModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy15ConversationKit07FadeOuti2IneF0VGAA14_OpacityEffectVGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ViewModifier_Content<FadeOutFadeInViewModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit07FadeOuth2IncD0VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<FadeOutFadeInViewModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PlaceholderContentView<FadeOutFadeInTransition>, FadeOutFadeInViewModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<FadeOutFadeInTransition>, FadeOutFadeInViewModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<FadeOutFadeInTransition>, FadeOutFadeInViewModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA011PlaceholderD4ViewVy15ConversationKit07FadeOutI12InTransitionVGAF0ijikF8ModifierVGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type PlaceholderContentView<FadeOutFadeInTransition> and conformance PlaceholderContentView<A>, &_s7SwiftUI22PlaceholderContentViewVy15ConversationKit07FadeOutH12InTransitionVGMd);
    lazy protocol witness table accessor for type FadeOutFadeInViewModifier and conformance FadeOutFadeInViewModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<FadeOutFadeInTransition>, FadeOutFadeInViewModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FadeOutFadeInViewModifier and conformance FadeOutFadeInViewModifier()
{
  result = lazy protocol witness table cache variable for type FadeOutFadeInViewModifier and conformance FadeOutFadeInViewModifier;
  if (!lazy protocol witness table cache variable for type FadeOutFadeInViewModifier and conformance FadeOutFadeInViewModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FadeOutFadeInViewModifier and conformance FadeOutFadeInViewModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FadeOutFadeInViewModifier and conformance FadeOutFadeInViewModifier;
  if (!lazy protocol witness table cache variable for type FadeOutFadeInViewModifier and conformance FadeOutFadeInViewModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FadeOutFadeInViewModifier and conformance FadeOutFadeInViewModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<ModifiedContent<ModifiedContent<IDView<MarqueeLabel, String>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>>, _AnimationModifier<String>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<ModifiedContent<ModifiedContent<IDView<MarqueeLabel, String>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>>, _AnimationModifier<String>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<ModifiedContent<ModifiedContent<IDView<MarqueeLabel, String>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>>, _AnimationModifier<String>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyACyACyAA6IDViewVy014CommunicationsB012MarqueeLabelVSSGAA21_TraitWritingModifierVyAA010TransitionJ3KeyVGGAA012_EnvironmentnkL0VyAA4FontVSgGGGAA010_AnimationL0VySSGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type ZStack<ModifiedContent<ModifiedContent<IDView<MarqueeLabel, String>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA15ModifiedContentVyAEyAA6IDViewVy014CommunicationsB012MarqueeLabelVSSGAA21_TraitWritingModifierVyAA010TransitionJ3KeyVGGAA012_EnvironmentnkL0VyAA4FontVSgGGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _AnimationModifier<String> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVySSGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<ModifiedContent<ModifiedContent<IDView<MarqueeLabel, String>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>>, _AnimationModifier<String>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t URL.withoutFragment.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for URLComponents();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    outlined destroy of TapInteractionHandler?(v7, &_s10Foundation13URLComponentsVSgMd);
    v12 = type metadata accessor for URL();
    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v12);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    URLComponents.fragment.setter();
    URL.baseURL.getter();
    URLComponents.url(relativeTo:)();
    outlined destroy of TapInteractionHandler?(v4, &_s10Foundation3URLVSgMd);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t ClarityUIRecentsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v1 = type metadata accessor for ClarityUINavigationTitle();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ListVys5NeverOAA7ForEachVySaySo12CHRecentCallCGSSAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGAEG_Qo_GGMd);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v15 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySo12CHRecentCallCGSSAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOG_Qo_GMd);
  lazy protocol witness table accessor for type ForEach<[CHRecentCall], String, <<opaque return type of View.badge(_:)>>.0> and conformance <> ForEach<A, B, C>();
  List<>.init(content:)();
  static ClarityUINavigationTitle.recents.getter();
  OUTLINED_FUNCTION_0_80();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v13, &_s7SwiftUI4ListVys5NeverOAA7ForEachVySaySo12CHRecentCallCGSSAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGAEG_Qo_GGMd);
  View.navigationTitle(_:)();
  (*(v3 + 8))(v6, v1);
  return (*(v9 + 8))(v12, v7);
}

uint64_t closure #1 in ClarityUIRecentsView.body.getter()
{
  ClarityUICallHistory.recentCalls.getter();
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12CHRecentCallCGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOG_Qo_Md);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [CHRecentCall] and conformance [A], &_sSaySo12CHRecentCallCGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type NavigationLink<Label<Text, ClarityUIContactAvatar>, Never> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOGMd);
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

unint64_t lazy protocol witness table accessor for type ForEach<[CHRecentCall], String, <<opaque return type of View.badge(_:)>>.0> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[CHRecentCall], String, <<opaque return type of View.badge(_:)>>.0> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[CHRecentCall], String, <<opaque return type of View.badge(_:)>>.0> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySaySo12CHRecentCallCGSSAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOG_Qo_GMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type NavigationLink<Label<Text, ClarityUIContactAvatar>, Never> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOGMd);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[CHRecentCall], String, <<opaque return type of View.badge(_:)>>.0> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

void key path getter for CHRecentCall.uniqueId : CHRecentCall(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 uniqueId];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void key path setter for CHRecentCall.uniqueId : CHRecentCall(void *a1, void **a2)
{
  v2 = *a2;
  v3 = MEMORY[0x1BFB209B0](*a1, a1[1]);
  [v2 setUniqueId_];
}

uint64_t closure #1 in closure #1 in ClarityUIRecentsView.body.getter@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - v7;
  v9 = *a1;
  ClarityUIRecentsView.contact(for:)(*a1, a2);
  v10 = v19;
  v12 = v20;
  v11 = v21;
  v13 = v18;
  v14 = v10;

  v15 = v9;
  ClarityUIOutgoingCallAction.init(recentCall:)(v15, &v22);
  v18 = v13;
  v19 = v14;
  v20 = v12;
  v21 = v11;
  v17[4] = v13;
  v17[5] = v14;
  v17[6] = v12;
  v17[7] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Label<Text, ClarityUIContactAvatar> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGMd);
  lazy protocol witness table accessor for type ClarityUIPreviewNavigationDestination and conformance ClarityUIPreviewNavigationDestination();
  NavigationLink<>.init<A>(value:label:)();
  [v15 unreadCount];
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type NavigationLink<Label<Text, ClarityUIContactAvatar>, Never> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOGMd);
  View.badge(_:)();

  return (*(v6 + 8))(v8, v5);
}

void ClarityUIRecentsView.contact(for:)(void *a1, uint64_t a2)
{
  v42[1] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + OBJC_IVAR____TtC15ConversationKit20ClarityUICallHistory_contactStore);
  v4 = objc_allocWithZone(MEMORY[0x1E6993568]);
  v5 = v3;
  v6 = [v4 initWithDataSource_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BC4BAC30;
  *(v7 + 32) = a1;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CHRecentCall);
  v8 = a1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  static ClarityUIContact.requiredDescriptors(for:)(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
  v10 = Array._bridgeToObjectiveC()().super.isa;

  v42[0] = 0;
  v11 = [v6 contactsByHandleForCalls:isa keyDescriptors:v10 error:v42];

  v12 = v42[0];
  if (v11)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CHHandle);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9CNContactCGMd);
    lazy protocol witness table accessor for type CHHandle and conformance NSObject();
    v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v12;

    v15 = specialized Collection.first.getter(v13);
    v17 = v16;

    if (v15)
    {

      if (specialized Array.count.getter(v17))
      {
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v17 & 0xC000000000000001) == 0, v17);
        if ((v17 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1BFB22010](0, v17);
        }

        else
        {
          v18 = *(v17 + 32);
        }

        v19 = v18;

        goto LABEL_22;
      }
    }

    v32 = outlined bridged method (pb) of @objc CHRecentCall.remoteParticipantHandles.getter(v8);
    if (!v32 || (v33 = specialized Collection.first.getter(v32), , !v33) || (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNMutableContact), (v34 = CNMutableContact.init(handle:)(v33)) == 0))
    {
      if (one-time initialization token for clarityUI != -1)
      {
        OUTLINED_FUNCTION_0_158();
      }

      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, &static Log.clarityUI);
      v36 = v8;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        *(v39 + 4) = v36;
        *v40 = v36;
        v41 = v36;
        _os_log_impl(&dword_1BBC58000, v37, v38, "Unable to create contact for recent call: %@", v39, 0xCu);
        outlined destroy of NSObject?(v40);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();
      }

      v34 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
    }

    v19 = v34;
  }

  else
  {
    v20 = v42[0];
    v21 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for clarityUI != -1)
    {
      OUTLINED_FUNCTION_0_158();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, &static Log.clarityUI);
    v23 = v8;
    v24 = v21;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412546;
      *(v27 + 4) = v23;
      *v28 = v23;
      *(v27 + 12) = 2112;
      v29 = v23;
      v30 = v21;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 14) = v31;
      v28[1] = v31;
      _os_log_impl(&dword_1BBC58000, v25, v26, "Unable to get contacts by handle for recent call: %@. Error: %@", v27, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    v19 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
  }

LABEL_22:
  ClarityUIContact.init(cnContact:contactStore:)(v19, v5);
}

uint64_t ClarityUIOutgoingCallAction.init(recentCall:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 uniqueId];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  MEMORY[0x1BFB20B10](v5, v7);

  LOBYTE(v4) = CHRecentCall.callType.getter();
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = 0x2D746E65636552;
  *(a2 + 8) = 0xE700000000000000;
  *(a2 + 16) = v4;
  *(a2 + 24) = partial apply for closure #1 in ClarityUIOutgoingCallAction.init(recentCall:);
  *(a2 + 32) = result;
  return result;
}

uint64_t ClarityUIRecentsView.init()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t CHRecentCall.callType.getter()
{
  v1 = [v0 mediaType];
  if (v1 != 1)
  {
    if (v1 == 2)
    {
      return 1;
    }

    if (one-time initialization token for clarityUI != -1)
    {
      OUTLINED_FUNCTION_0_158();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, &static Log.clarityUI);
    v4 = v0;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315138;
      [v4 mediaType];
      type metadata accessor for CHRecentCallMediaType(0);
      v9 = String.init<A>(describing:)();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_1BBC58000, v5, v6, "Unhandled media type for recent call: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }
  }

  return 0;
}

Swift::Void __swiftcall CHRecentCall.makeCall()()
{
  v14 = [objc_allocWithZone(MEMORY[0x1E69D8A90]) init];
  v1 = [v14 dialRequestForRecentCall_];
  if (v1)
  {
    v2 = v1;
    [v1 setOriginatingUIType_];
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = v0;
    aBlock[4] = partial apply for closure #1 in CHRecentCall.makeCall();
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_67;
    v4 = _Block_copy(aBlock);
    v5 = v2;
    v6 = v0;

    [v14 launchAppForDialRequest:v5 completion:v4];
    _Block_release(v4);
  }

  else
  {
    if (one-time initialization token for clarityUI != -1)
    {
      OUTLINED_FUNCTION_0_158();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, &static Log.clarityUI);
    v8 = v0;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&dword_1BBC58000, v9, v10, "Unable to make dial request for recent call: %@", v11, 0xCu);
      outlined destroy of NSObject?(v12);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }
  }
}

void closure #1 in CHRecentCall.makeCall()(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    v6 = a1;
    if (one-time initialization token for clarityUI != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, &static Log.clarityUI);
    v8 = a1;
    v9 = a2;
    v10 = a3;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v13 = 138412802;
      *(v13 + 4) = v9;
      *(v13 + 12) = 2112;
      *(v13 + 14) = v10;
      *v14 = v9;
      v14[1] = v10;
      *(v13 + 22) = 2080;
      swift_getErrorValue();
      v15 = v9;
      v16 = v10;
      v17 = Error.localizedDescription.getter();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v21);

      *(v13 + 24) = v19;
      _os_log_impl(&dword_1BBC58000, v11, v12, "Unable to launch app for dial request: %@, recent call: %@, error: %s", v13, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1BFB23DF0](v20, -1, -1);
      MEMORY[0x1BFB23DF0](v13, -1, -1);
    }

    else
    {
    }
  }
}

unint64_t lazy protocol witness table accessor for type ClarityUIRecentsNavigationDestination and conformance ClarityUIRecentsNavigationDestination()
{
  result = lazy protocol witness table cache variable for type ClarityUIRecentsNavigationDestination and conformance ClarityUIRecentsNavigationDestination;
  if (!lazy protocol witness table cache variable for type ClarityUIRecentsNavigationDestination and conformance ClarityUIRecentsNavigationDestination)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClarityUIRecentsNavigationDestination and conformance ClarityUIRecentsNavigationDestination);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClarityUIRecentsNavigationDestination and conformance ClarityUIRecentsNavigationDestination;
  if (!lazy protocol witness table cache variable for type ClarityUIRecentsNavigationDestination and conformance ClarityUIRecentsNavigationDestination)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClarityUIRecentsNavigationDestination and conformance ClarityUIRecentsNavigationDestination);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClarityUIPreviewNavigationDestination and conformance ClarityUIPreviewNavigationDestination()
{
  result = lazy protocol witness table cache variable for type ClarityUIPreviewNavigationDestination and conformance ClarityUIPreviewNavigationDestination;
  if (!lazy protocol witness table cache variable for type ClarityUIPreviewNavigationDestination and conformance ClarityUIPreviewNavigationDestination)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClarityUIPreviewNavigationDestination and conformance ClarityUIPreviewNavigationDestination);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClarityUIPreviewNavigationDestination and conformance ClarityUIPreviewNavigationDestination;
  if (!lazy protocol witness table cache variable for type ClarityUIPreviewNavigationDestination and conformance ClarityUIPreviewNavigationDestination)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClarityUIPreviewNavigationDestination and conformance ClarityUIPreviewNavigationDestination);
  }

  return result;
}

void static InCallControlsParticipantCell.invalidateCalculatedHeights()()
{
  static InCallControlsParticipantCell._defaultContentHeight = 0;
  byte_1EBCB16F0 = 1;
  static InCallControlsParticipantCell._extendedContentHeight = 0;
  byte_1EBCB1700 = 1;
}

uint64_t InCallControlsParticipantCell.configure(with:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  *&v97 = &v95 - v4;
  v5 = type metadata accessor for InCallControlsParticipantCellViewModel();
  v98 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v99 = v6;
  v100 = (&v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit38InCallControlsParticipantCellViewModelVSg_ADtMd);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v95 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v95 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v95 - v18;
  v20 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_viewModel;
  swift_beginAccess();
  v101 = a1;
  outlined init with copy of InCallControlsParticipantCellViewModel(a1, v19);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v5);
  v21 = *(v8 + 56);
  v96 = v1;
  outlined init with copy of InCallControlsParticipantCellViewModel?(&v1[v20], v10);
  outlined init with copy of InCallControlsParticipantCellViewModel?(v19, &v10[v21]);
  if (__swift_getEnumTagSinglePayload(v10, 1, v5) == 1)
  {
    outlined destroy of CallControlsService?(v19, &_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMd);
    v22 = v5;
    if (__swift_getEnumTagSinglePayload(&v10[v21], 1, v5) == 1)
    {
      return outlined destroy of CallControlsService?(v10, &_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMd);
    }

    goto LABEL_6;
  }

  outlined init with copy of InCallControlsParticipantCellViewModel?(v10, v16);
  v22 = v5;
  if (__swift_getEnumTagSinglePayload(&v10[v21], 1, v5) == 1)
  {
    outlined destroy of CallControlsService?(v19, &_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMd);
    outlined destroy of InCallControlsParticipantCellViewModel(v16);
LABEL_6:
    outlined destroy of CallControlsService?(v10, &_s15ConversationKit38InCallControlsParticipantCellViewModelVSg_ADtMd);
    goto LABEL_7;
  }

  v51 = v100;
  outlined init with take of InCallControlsParticipantCellViewModel(&v10[v21], v100);
  v52 = static InCallControlsParticipantCellViewModel.== infix(_:_:)(v16, v51);
  outlined destroy of InCallControlsParticipantCellViewModel(v51);
  outlined destroy of CallControlsService?(v19, &_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMd);
  outlined destroy of InCallControlsParticipantCellViewModel(v16);
  result = outlined destroy of CallControlsService?(v10, &_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMd);
  if (v52)
  {
    return result;
  }

LABEL_7:
  v24 = v97;
  static UIBackgroundConfiguration.preferredInCallControlsBackground.getter();
  v25 = type metadata accessor for UIBackgroundConfiguration();
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v25);
  v26 = v96;
  MEMORY[0x1BFB216F0](v24);
  [v26 setAutomaticallyUpdatesBackgroundConfiguration_];
  v27 = v101;
  outlined init with copy of InCallControlsParticipantCellViewModel(v101, v13);
  v28 = v22;
  v29 = v26;
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v28);
  swift_beginAccess();
  v30 = &v26[v20];
  v31 = v28;
  outlined assign with take of InCallControlsParticipantCellViewModel?(v13, v30);
  swift_endAccess();
  v32 = *&v29[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_nameLabel];
  v33 = MEMORY[0x1BFB209B0](*(v27 + *(v28 + 24)), *(v27 + *(v28 + 24) + 8));
  [v32 setText_];

  v34 = *(v27 + v31[8]);
  if ((v34 - 2) < 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    inited = swift_initStackObject();
    v97 = xmmword_1BC4BA930;
    *(inited + 16) = xmmword_1BC4BA930;
    v36 = *&v29[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_actionButton];
    *(inited + 32) = v36;
    v37 = v36;
    OUTLINED_FUNCTION_1_129();
    *(inited + 40) = InCallControlsParticipantCell.lmiApproveButton.getter(v38, v39);
    InCallControlsParticipantCell.setEnabled(_:for:)(0, inited);
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    v40 = *(v27 + v31[13]);
    v41 = swift_initStackObject();
    *(v41 + 16) = v97;
    OUTLINED_FUNCTION_0_159();
    *(v41 + 32) = InCallControlsParticipantCell.lmiApproveButton.getter(v42, v43);
    *(v41 + 40) = OUTLINED_FUNCTION_2_124(&OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___lmiRejectButton);
LABEL_11:
    InCallControlsParticipantCell.setEnabled(_:for:)(v40, v41);
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    goto LABEL_15;
  }

  if (v34 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v44 = swift_initStackObject();
    *(v44 + 16) = xmmword_1BC4BC370;
    v45 = *&v29[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_actionButton];
    *(v44 + 32) = v45;
    v46 = v45;
    OUTLINED_FUNCTION_0_159();
    *(v44 + 40) = InCallControlsParticipantCell.lmiApproveButton.getter(v47, v48);
    *(v44 + 48) = OUTLINED_FUNCTION_2_124(&OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___lmiRejectButton);
    InCallControlsParticipantCell.setEnabled(_:for:)(0, v44);
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    v40 = *(v27 + v31[12]);
    v41 = swift_initStackObject();
    *(v41 + 16) = xmmword_1BC4BAC30;
    OUTLINED_FUNCTION_1_129();
    *(v41 + 32) = InCallControlsParticipantCell.lmiApproveButton.getter(v49, v50);
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v53 = swift_initStackObject();
  *(v53 + 16) = xmmword_1BC4BC370;
  OUTLINED_FUNCTION_0_159();
  *(v53 + 32) = InCallControlsParticipantCell.lmiApproveButton.getter(v54, v55);
  *(v53 + 40) = OUTLINED_FUNCTION_2_124(&OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___lmiRejectButton);
  OUTLINED_FUNCTION_1_129();
  *(v53 + 48) = InCallControlsParticipantCell.lmiApproveButton.getter(v56, v57);
  InCallControlsParticipantCell.setEnabled(_:for:)(0, v53);
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v58 = *(v27 + v31[10]);
  v59 = swift_initStackObject();
  *(v59 + 16) = xmmword_1BC4BAC30;
  v60 = *&v29[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_actionButton];
  *(v59 + 32) = v60;
  v61 = v60;
  InCallControlsParticipantCell.setEnabled(_:for:)(v58, v59);
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v62 = (v27 + v31[9]);
  v63 = *v62;
  v64 = v62[1];
  v65 = *((*MEMORY[0x1E69E7D40] & *v61) + 0x1B8);

  v65(v63, v64);
  v27 = v101;
LABEL_15:
  v66 = *&v29[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_avatarView];
  v68 = v27[2];
  v67 = v27[3];
  v70 = v27[4];
  v69 = v27[5];
  v71 = v101[6];
  v102 = *v101;
  v103 = v68;
  v104 = v67;
  v105 = v70;
  v106 = v69;
  v107 = v71;
  v72 = v102;

  ParticipantContactView.contactDetails.setter(&v102);
  v73 = [v66 layer];
  v74 = [objc_opt_self() clearColor];
  v75 = [v74 CGColor];

  [v73 setShadowColor_];
  v76 = v101;

  ParticipantContactView.gradient.setter(v77);
  [v32 setTextColor_];
  v78 = v76 + v31[7];
  v79 = *v78;
  v80 = *(v78 + 8);
  v81 = *(v78 + 16);
  switch(v81 >> 5)
  {
    case 1u:
      v88 = MEMORY[0x1BFB209B0](v79, v80);
      OUTLINED_FUNCTION_3_122(v88);

      v84 = *&v29[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_statusIcon];
      [v84 setAlpha_];
      v86 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_cameraSymbolImage;
      goto LABEL_24;
    case 2u:
      v83 = MEMORY[0x1BFB209B0](v79, v80);
      OUTLINED_FUNCTION_3_122(v83);

      v84 = *&v29[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_statusIcon];
      [v84 setAlpha_];
      v85 = &OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_messagesSymbolImage;
      if ((v81 & 1) == 0)
      {
        v85 = &OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_cameraSymbolImage;
      }

      v86 = *v85;
      goto LABEL_24;
    case 3u:
      v87 = MEMORY[0x1BFB209B0](v79, v80);
      OUTLINED_FUNCTION_3_122(v87);

      v84 = *&v29[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_statusIcon];
      [v84 setAlpha_];
      v86 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_linkSymbolImage;
LABEL_24:
      [v84 setImage_];
      goto LABEL_25;
    case 4u:
      outlined bridged method (mbnn) of @objc UILabel.text.setter(0, 0xE000000000000000, *&v29[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_subtitleLabel]);
      goto LABEL_18;
    default:
      v82 = MEMORY[0x1BFB209B0](v79, v80);
      OUTLINED_FUNCTION_3_122(v82);

LABEL_18:
      [*&v29[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_statusIcon] setAlpha_];
LABEL_25:
      [v29 setNeedsLayout];
      v89 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v90 = v100;
      outlined init with copy of InCallControlsParticipantCellViewModel(v76, v100);
      v91 = (*(v98 + 80) + 24) & ~*(v98 + 80);
      v92 = swift_allocObject();
      *(v92 + 16) = v89;
      outlined init with take of InCallControlsParticipantCellViewModel(v90, v92 + v91);
      v93 = &v29[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_callDelegate];
      v94 = *&v29[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_callDelegate];
      *v93 = partial apply for closure #1 in InCallControlsParticipantCell.configure(with:);
      v93[1] = v92;

      outlined consume of (@escaping @callee_guaranteed () -> ())?(v94);

      break;
  }

  return result;
}

uint64_t outlined init with copy of InCallControlsParticipantCellViewModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InCallControlsParticipantCellViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of InCallControlsParticipantCellViewModel?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of InCallControlsParticipantCellViewModel?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void InCallControlsParticipantCell.lmiApproveButton.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___lmiApproveButton);
  *(v1 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___lmiApproveButton) = a1;
}

void *closure #1 in InCallControlsParticipantCell.lmiApproveButton.getter(void *a1)
{
  v2 = InCallControlsParticipantCell.inCallControlButton(for:)(2);
  if (one-time initialization token for joinButton != -1)
  {
    swift_once();
  }

  v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x1D0);

  v3(v4);
  outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0xD000000000000010, 0x80000001BC50F430, v2);
  v5 = [a1 contentView];
  [v5 addSubview_];

  return v2;
}

void *InCallControlsParticipantCell.inCallControlButton(for:)(char a1)
{
  type metadata accessor for InCallControlButton();
  switch(a1)
  {
    case 1:
      *(&v8 + 1) = &type metadata for SymbolImageDescribers.DrawerTable;
      v9 = &protocol witness table for SymbolImageDescribers.DrawerTable;
      v2 = 9;
      break;
    case 3:
      *(&v8 + 1) = &type metadata for SymbolImageDescribers.DrawerTable;
      v9 = &protocol witness table for SymbolImageDescribers.DrawerTable;
      v2 = 12;
      break;
    case 2:
      *(&v8 + 1) = &type metadata for SymbolImageDescribers.DrawerTable;
      v9 = &protocol witness table for SymbolImageDescribers.DrawerTable;
      v2 = 10;
      break;
    default:
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      goto LABEL_9;
  }

  LOBYTE(v7) = v2;
LABEL_9:
  v3 = InCallControlButton.__allocating_init(style:symbolDescriber:text:discSize:imageSpacing:visualEffectGroupName:wantsPointerInteraction:isImageTrailing:)(0, &v7, 0, 0, 0, 1, 0, 0, 1, 0);
  [v3 setAlpha_];
  [v3 setEnabled_];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;

  UIControl.addAction(for:handler:)(64, partial apply for closure #1 in InCallControlsParticipantCell.inCallControlButton(for:), v5);

  return v3;
}

void InCallControlsParticipantCell.lmiRejectButton.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___lmiRejectButton);
  *(v1 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___lmiRejectButton) = a1;
}

void *closure #1 in InCallControlsParticipantCell.lmiRejectButton.getter(void *a1)
{
  v2 = InCallControlsParticipantCell.inCallControlButton(for:)(3);
  if (one-time initialization token for leaveButton != -1)
  {
    swift_once();
  }

  v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x1D0);

  v3(v4);
  outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0x63656A6552696D6CLL, 0xEF6E6F7474754274, v2);
  v5 = [a1 contentView];
  [v5 addSubview_];

  return v2;
}

id InCallControlsParticipantCell.lmiApproveButton.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

void InCallControlsParticipantCell.kickMemberButton.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___kickMemberButton);
  *(v1 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___kickMemberButton) = a1;
}

void *closure #1 in InCallControlsParticipantCell.kickMemberButton.getter(void *a1)
{
  v2 = InCallControlsParticipantCell.inCallControlButton(for:)(1);
  outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0xD000000000000010, 0x80000001BC50F4A0, v2);
  v3 = [a1 contentView];
  [v3 addSubview_];

  return v2;
}

uint64_t InCallControlsParticipantCell.contentViews.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___contentViews;
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___contentViews))
  {
    v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___contentViews);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v2 = swift_allocObject();
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_avatarView);
    v4 = *(v0 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_nameLabel);
    *(v2 + 16) = xmmword_1BC4C48E0;
    v5 = *(v0 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_subtitleLabel);
    *(v2 + 32) = v3;
    *(v2 + 40) = v4;
    v6 = *(v0 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_statusIcon);
    *(v2 + 48) = v5;
    *(v2 + 56) = v6;
    v7 = *(v0 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_actionButton);
    *(v2 + 64) = v7;
    v8 = v3;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    v12 = v7;
    *(v2 + 72) = InCallControlsParticipantCell.lmiApproveButton.getter(&OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___kickMemberButton, closure #1 in InCallControlsParticipantCell.kickMemberButton.getter);
    *(v2 + 80) = InCallControlsParticipantCell.lmiApproveButton.getter(&OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___lmiApproveButton, closure #1 in InCallControlsParticipantCell.lmiApproveButton.getter);
    *(v2 + 88) = InCallControlsParticipantCell.lmiApproveButton.getter(&OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___lmiRejectButton, closure #1 in InCallControlsParticipantCell.lmiRejectButton.getter);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t key path getter for InCallControlsParticipantCell.participantCellDelegate : InCallControlsParticipantCell@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_participantCellDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for InCallControlsParticipantCell.participantCellDelegate : InCallControlsParticipantCell(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_participantCellDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t InCallControlsParticipantCell.participantCellDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_participantCellDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*InCallControlsParticipantCell.participantCellDelegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_participantCellDelegate;
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

uint64_t InCallControlsParticipantCell.isSubtitleHidden.getter()
{
  v1 = type metadata accessor for InCallControlsParticipantCellViewModel();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_viewModel;
  swift_beginAccess();
  if (__swift_getEnumTagSinglePayload(v0 + v4, 1, v1))
  {
    return 0;
  }

  outlined init with copy of InCallControlsParticipantCellViewModel(v0 + v4, v3);
  v6 = &v3[*(v1 + 28)];
  v7 = *v6;
  v8 = *(v6 + 1);
  v9 = v6[16];
  if (v8 | v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 == 128;
  }

  v5 = v10;
  outlined destroy of InCallControlsParticipantCellViewModel(v3);
  return v5;
}

id InCallControlsParticipantCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

uint64_t InCallControlsParticipantCell.init(frame:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_20_2();
  swift_getObjectType();
  v2 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_nameLabel;
  *(v1 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v3 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_subtitleLabel;
  *(v1 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v4 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_statusIcon;
  type metadata accessor for UIImage();
  v5 = *MEMORY[0x1E69DDCF8];
  LOBYTE(v114[0]) = 0;
  v94[0] = 0x69662E6F65646976;
  v94[1] = 0xEA00000000006C6CLL;
  v94[2] = -1;
  v94[3] = v5;
  v95 = 0;
  v96 = 4;
  v97 = 0;
  v98 = 0;
  v99[0] = 0x69662E6F65646976;
  v99[1] = 0xEA00000000006C6CLL;
  v99[2] = -1;
  v99[3] = v5;
  v100 = 0;
  v101 = 4;
  v102 = 0;
  v103 = 0;
  v6 = v5;
  outlined init with copy of SymbolImageDescription(v94, &v119);
  outlined destroy of SymbolImageDescription(v99);
  v7 = static UIImage.symbolImage(for:)(v94);
  outlined destroy of SymbolImageDescription(v94);
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

  *(v1 + v4) = v8;
  v9 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_avatarView;
  LOBYTE(v119) = 0;
  v10 = objc_allocWithZone(type metadata accessor for ParticipantContactView());
  *(v1 + v9) = ParticipantContactView.init(colorStyle:)(&v119);
  v11 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_actionButton;
  v12 = type metadata accessor for InCallControlButton();
  v121 = 0;
  v119 = 0u;
  v120 = 0u;
  *(v1 + v11) = OUTLINED_FUNCTION_4_114(v12, &v119, v13, v14, v15, v16, v17, v18, 1);
  v19 = type metadata accessor for InCallControlsParticipantCellViewModel();
  OUTLINED_FUNCTION_13_6(v19);
  v20 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_cameraSymbolImage;
  LOBYTE(v114[0]) = 0;
  v89[0] = 0x69662E6F65646976;
  v89[1] = 0xEA00000000006C6CLL;
  v89[2] = -1;
  v89[3] = v6;
  v90 = 0;
  v91 = 4;
  v92 = 0;
  v93 = 0;
  v104[0] = 0x69662E6F65646976;
  v104[1] = 0xEA00000000006C6CLL;
  v104[2] = -1;
  v104[3] = v6;
  v105 = 0;
  v106 = 4;
  v107 = 0;
  v108 = 0;
  outlined init with copy of SymbolImageDescription(v89, &v119);
  outlined destroy of SymbolImageDescription(v104);
  v21 = static UIImage.symbolImage(for:)(v89);
  outlined destroy of SymbolImageDescription(v89);
  *(v1 + v20) = v21;
  v22 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_copresenceSymbolImage;
  LOBYTE(v114[0]) = 0;
  OUTLINED_FUNCTION_7_80();
  v84[0] = v23;
  v84[1] = v24;
  v84[2] = -1;
  v84[3] = v6;
  v85 = 0;
  v86 = 4;
  v87 = 0;
  v88 = 0;
  v109[0] = v23;
  v109[1] = v24;
  v109[2] = -1;
  v109[3] = v6;
  v110 = 0;
  v111 = 4;
  v112 = 0;
  v113 = 0;
  outlined init with copy of SymbolImageDescription(v84, &v119);
  outlined destroy of SymbolImageDescription(v109);
  v25 = static UIImage.symbolImage(for:)(v84);
  outlined destroy of SymbolImageDescription(v84);
  *(v1 + v22) = v25;
  v26 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_linkSymbolImage;
  v27 = *MEMORY[0x1E69DDD80];
  v79[0] = 1802398060;
  v79[1] = 0xE400000000000000;
  v79[2] = 1;
  v79[3] = v27;
  v80 = 0;
  v81 = 4;
  v82 = 0;
  v83 = 0;
  v114[0] = 1802398060;
  v114[1] = 0xE400000000000000;
  v114[2] = 1;
  v114[3] = v27;
  v115 = 0;
  v116 = 4;
  v117 = 0;
  v118 = 0;
  v72 = v27;
  outlined init with copy of SymbolImageDescription(v79, &v119);
  outlined destroy of SymbolImageDescription(v114);
  v28 = static UIImage.symbolImage(for:)(v79);
  outlined destroy of SymbolImageDescription(v79);
  *(v1 + v26) = v28;
  v29 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_messagesSymbolImage;
  v73[64] = 0;
  OUTLINED_FUNCTION_10_67();
  v74[0] = v30;
  v74[1] = v31;
  v74[2] = 1;
  v74[3] = v32;
  v75 = 0;
  v76 = 4;
  v77 = 0;
  v78 = 0;
  *&v119 = v30;
  *(&v119 + 1) = v31;
  *&v120 = 1;
  *(&v120 + 1) = v32;
  LOWORD(v121) = 0;
  v122 = 4;
  v123 = 0;
  v124 = 0;
  v33 = v32;
  outlined init with copy of SymbolImageDescription(v74, v73);
  outlined destroy of SymbolImageDescription(&v119);
  v34 = static UIImage.symbolImage(for:)(v74);
  outlined destroy of SymbolImageDescription(v74);
  *(v1 + v29) = v34;
  *(v1 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___lmiApproveButton) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___lmiRejectButton) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___kickMemberButton) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___contentViews) = 0;
  v35 = (v1 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_callDelegate);
  *v35 = 0;
  v35[1] = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_participantCellDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v36 = OUTLINED_FUNCTION_18_1();
  v39 = objc_msgSendSuper2(v37, v38, v36);
  [v39 setAutomaticallyUpdatesBackgroundConfiguration_];
  v40 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_nameLabel;
  v41 = one-time initialization token for tableViewCellTitleLabel;
  v42 = *&v39[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_nameLabel];
  if (v41 != -1)
  {
    swift_once();
  }

  [v42 setTextColor_];

  v43 = *&v39[v40];
  v44 = objc_opt_self();
  v45 = *MEMORY[0x1E69DDD40];
  v46 = v43;
  v47 = [v44 preferredFontForTextStyle_];
  isa = UIFont.withTraits(_:)(0x8000u).super.isa;

  [v46 setFont_];
  [*&v39[v40] setAdjustsFontForContentSizeCategory_];
  [*&v39[v40] setNumberOfLines_];
  v49 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_subtitleLabel;
  v50 = one-time initialization token for tableViewCellSubtitleLabel;
  v51 = *&v39[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_subtitleLabel];
  if (v50 != -1)
  {
    swift_once();
  }

  v52 = static Colors.InCallControls.tableViewCellSubtitleLabel;
  [v51 setTextColor_];

  v53 = *&v39[v49];
  v54 = [v44 preferredFontForTextStyle_];
  [v53 setFont_];

  [*&v39[v49] setAdjustsFontForContentSizeCategory_];
  [*&v39[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_statusIcon] setTintColor_];
  v55 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_actionButton;
  [*(*&v39[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_actionButton] + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_label) setAdjustsFontForContentSizeCategory_];
  v57 = *&v39[v55];
  v58 = *&v57[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_label];
  if (v58)
  {
    LODWORD(v56) = 1148846080;
    [v58 setContentCompressionResistancePriority:0 forAxis:v56];
    v57 = *&v39[v55];
  }

  v59 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v60 = v57;

  UIControl.addAction(for:handler:)(64, partial apply for closure #1 in InCallControlsParticipantCell.init(frame:), v59);

  v61 = InCallControlsParticipantCell.contentViews.getter();
  result = specialized Array.count.getter(v61);
  if (!result)
  {
    goto LABEL_14;
  }

  v63 = result;
  if (result >= 1)
  {
    v64 = 0;
    do
    {
      if ((v61 & 0xC000000000000001) != 0)
      {
        v65 = MEMORY[0x1BFB22010](v64, v61);
      }

      else
      {
        v65 = *(v61 + 8 * v64 + 32);
      }

      v66 = v65;
      ++v64;
      v67 = [v39 contentView];
      [v67 addSubview_];
    }

    while (v63 != v64);
LABEL_14:

    v68 = [v39 separatorLayoutGuide];
    v69 = [v68 leadingAnchor];

    v70 = [*&v39[v40] leadingAnchor];
    v71 = [v69 constraintEqualToAnchor_];

    [v71 setActive_];
    return v39;
  }

  __break(1u);
  return result;
}

void closure #1 in InCallControlsParticipantCell.init(frame:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *&Strong[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_callDelegate];
    if (v2)
    {
      outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*&Strong[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_callDelegate], *&Strong[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_callDelegate + 8]);

      v2();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v2);
    }

    else
    {
    }
  }
}

id InCallControlsParticipantCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void InCallControlsParticipantCell.init(coder:)()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_nameLabel;
  *(v1 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v3 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_subtitleLabel;
  *(v1 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v4 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_statusIcon;
  type metadata accessor for UIImage();
  v5 = *MEMORY[0x1E69DDCF8];
  LOBYTE(v78[0]) = 0;
  v58[0] = 0x69662E6F65646976;
  v58[1] = 0xEA00000000006C6CLL;
  v58[2] = -1;
  v58[3] = v5;
  v59 = 0;
  v60 = 4;
  v61 = 0;
  v62 = 0;
  v63[0] = 0x69662E6F65646976;
  v63[1] = 0xEA00000000006C6CLL;
  v63[2] = -1;
  v63[3] = v5;
  v64 = 0;
  v65 = 4;
  v66 = 0;
  v67 = 0;
  v6 = v5;
  outlined init with copy of SymbolImageDescription(v58, &v83);
  outlined destroy of SymbolImageDescription(v63);
  v7 = static UIImage.symbolImage(for:)(v58);
  outlined destroy of SymbolImageDescription(v58);
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

  *(v1 + v4) = v8;
  v9 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_avatarView;
  LOBYTE(v83) = 0;
  v10 = objc_allocWithZone(type metadata accessor for ParticipantContactView());
  *(v1 + v9) = ParticipantContactView.init(colorStyle:)(&v83);
  v11 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_actionButton;
  v12 = type metadata accessor for InCallControlButton();
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  *(v1 + v11) = OUTLINED_FUNCTION_4_114(v12, &v83, v13, v14, v15, v16, v17, v18, 1);
  v19 = type metadata accessor for InCallControlsParticipantCellViewModel();
  OUTLINED_FUNCTION_13_6(v19);
  v20 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_cameraSymbolImage;
  LOBYTE(v78[0]) = 0;
  v53[0] = 0x69662E6F65646976;
  v53[1] = 0xEA00000000006C6CLL;
  v53[2] = -1;
  v53[3] = v6;
  v54 = 0;
  v55 = 4;
  v56 = 0;
  v57 = 0;
  v68[0] = 0x69662E6F65646976;
  v68[1] = 0xEA00000000006C6CLL;
  v68[2] = -1;
  v68[3] = v6;
  v69 = 0;
  v70 = 4;
  v71 = 0;
  v72 = 0;
  outlined init with copy of SymbolImageDescription(v53, &v83);
  outlined destroy of SymbolImageDescription(v68);
  v21 = static UIImage.symbolImage(for:)(v53);
  outlined destroy of SymbolImageDescription(v53);
  *(v1 + v20) = v21;
  v22 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_copresenceSymbolImage;
  LOBYTE(v78[0]) = 0;
  OUTLINED_FUNCTION_7_80();
  v48[0] = v23;
  v48[1] = v24;
  v48[2] = -1;
  v48[3] = v6;
  v49 = 0;
  v50 = 4;
  v51 = 0;
  v52 = 0;
  v73[0] = v23;
  v73[1] = v24;
  v73[2] = -1;
  v73[3] = v6;
  v74 = 0;
  v75 = 4;
  v76 = 0;
  v77 = 0;
  outlined init with copy of SymbolImageDescription(v48, &v83);
  outlined destroy of SymbolImageDescription(v73);
  v25 = static UIImage.symbolImage(for:)(v48);
  outlined destroy of SymbolImageDescription(v48);
  *(v1 + v22) = v25;
  v26 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_linkSymbolImage;
  v27 = *MEMORY[0x1E69DDD80];
  v43[0] = 1802398060;
  v43[1] = 0xE400000000000000;
  v43[2] = 1;
  v43[3] = v27;
  v44 = 0;
  v45 = 4;
  v46 = 0;
  v47 = 0;
  v78[0] = 1802398060;
  v78[1] = 0xE400000000000000;
  v78[2] = 1;
  v78[3] = v27;
  v79 = 0;
  v80 = 4;
  v81 = 0;
  v82 = 0;
  v28 = v27;
  outlined init with copy of SymbolImageDescription(v43, &v83);
  outlined destroy of SymbolImageDescription(v78);
  v29 = static UIImage.symbolImage(for:)(v43);
  outlined destroy of SymbolImageDescription(v43);
  *(v1 + v26) = v29;
  v30 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_messagesSymbolImage;
  v37[64] = 0;
  OUTLINED_FUNCTION_10_67();
  v38[0] = v31;
  v38[1] = v32;
  v38[2] = 1;
  v38[3] = v33;
  v39 = 0;
  v40 = 4;
  v41 = 0;
  v42 = 0;
  *&v83 = v31;
  *(&v83 + 1) = v32;
  *&v84 = 1;
  *(&v84 + 1) = v33;
  LOWORD(v85) = 0;
  v86 = 4;
  v87 = 0;
  v88 = 0;
  v34 = v33;
  outlined init with copy of SymbolImageDescription(v38, v37);
  outlined destroy of SymbolImageDescription(&v83);
  v35 = static UIImage.symbolImage(for:)(v38);
  outlined destroy of SymbolImageDescription(v38);
  *(v1 + v30) = v35;
  *(v1 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___lmiApproveButton) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___lmiRejectButton) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___kickMemberButton) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___contentViews) = 0;
  v36 = (v1 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_callDelegate);
  *v36 = 0;
  v36[1] = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_participantCellDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void InCallControlsParticipantCell.setEnabled(_:for:)(char a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v4 = __CocoaSet.count.getter();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    if (a1)
    {
      v6 = 1.0;
    }

    else
    {
      v6 = 0.0;
    }

    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1BFB22010](v5, a2);
      }

      else
      {
        v7 = *(a2 + 8 * v5 + 32);
      }

      v8 = v7;
      ++v5;
      [v7 setEnabled_];
      [v8 setAlpha_];
    }

    while (v4 != v5);
  }
}

void closure #1 in InCallControlsParticipantCell.configure(with:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v36 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v37 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1BC4BB980;
    v9 = &v7[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_participantCellDelegate];
    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = *(v9 + 1);
      v38 = v10;
      v39 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit37InCallControlsParticipantCellDelegate_pMd);
      v12 = String.init<A>(reflecting:)();
      v14 = v13;
    }

    else
    {
      v14 = 0xE300000000000000;
      v12 = 7104878;
    }

    v15 = MEMORY[0x1E69E6158];
    *(v8 + 56) = MEMORY[0x1E69E6158];
    v16 = lazy protocol witness table accessor for type String and conformance String();
    *(v8 + 64) = v16;
    *(v8 + 32) = v12;
    *(v8 + 40) = v14;
    v17 = type metadata accessor for InCallControlsParticipantCellViewModel();
    v18 = *(a2 + *(v17 + 32));
    LOBYTE(v38) = *(a2 + *(v17 + 32));
    v19 = String.init<A>(reflecting:)();
    *(v8 + 96) = v15;
    *(v8 + 104) = v16;
    *(v8 + 72) = v19;
    *(v8 + 80) = v20;
    v21 = *(v17 + 20);
    v22 = type metadata accessor for UUID();
    (*(*(v22 - 8) + 16))(v5, a2 + v21, v22);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v22);
    specialized >> prefix<A>(_:)(v5, v23, v24, v25, v26, v27, v28, v29, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
    v31 = v30;
    v36 = a2;
    v33 = v32;
    outlined destroy of CallControlsService?(v5, &_s10Foundation4UUIDVSgMd);
    *(v8 + 136) = v15;
    *(v8 + 144) = v16;
    *(v8 + 112) = v31;
    *(v8 + 120) = v33;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    if (swift_unknownObjectWeakLoadStrong())
    {
      v34 = *(v9 + 1);
      ObjectType = swift_getObjectType();
      (*(v34 + 8))(v7, v18, v36 + v21, ObjectType, v34);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall InCallControlsParticipantCell.layoutSubviews()()
{
  v103.receiver = v0;
  v103.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v103, sel_layoutSubviews);
  v102.origin = xmmword_1BC4D8F30;
  v102.size = vdupq_n_s64(0x4042800000000000uLL);
  closure #2 in InCallControlsParticipantCell.layoutSubviews()(v0);
  v77 = v2;
  v78 = v1;
  v98 = v1;
  v99 = v3;
  v100 = v2;
  v101 = v4;
  v86 = v4;
  v5 = [v0 contentView];
  [v5 bounds];
  v7 = v6;

  v8 = [v0 contentView];
  [v8 bounds];
  v10 = v9;

  v81 = v10 + -10.0 + -32.0 + -32.0 + -26.0;
  v95 = v81;
  v96 = xmmword_1BC4D8F40;
  v97 = 0x4040000000000000;
  v11 = [v0 contentView];
  [v11 bounds];
  v13 = v12;

  v83 = v13 + -10.0 + -32.0;
  v92 = v83;
  v93 = xmmword_1BC4D8F40;
  v94 = 0x4040000000000000;
  closure #6 in InCallControlsParticipantCell.layoutSubviews()(&v102, v0);
  rect = v14;
  rect_8 = v15;
  rect_16 = v16;
  v17 = 0.0;
  v104.origin.x = 14.0;
  v104.origin.y = 0.0;
  v104.size.width = 37.0;
  v104.size.height = 37.0;
  v18 = CGRectGetMaxX(v104) + 12.0;
  v19 = *&v0[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_statusIcon];
  v20 = [v19 image];
  v21 = 0.0;
  if (v20)
  {
    v22 = v20;
    [v20 size];
    v17 = v23;
    v21 = v24;
  }

  v75 = v7 + -10.0;
  v84 = v18;
  v85 = v17;
  v91.origin.x = v18;
  v91.origin.y = 0.0;
  v91.size.width = v17;
  v91.size.height = v21;
  rect_24 = v21;
  closure #8 in InCallControlsParticipantCell.layoutSubviews()(v0, &v91);
  v26 = v25;
  v28 = v27;
  v30 = v29;
  InCallControlsParticipantCell.contentHeight.getter();
  v32 = v31 * 0.5;
  v33 = floor(v32 + -18.5);
  v34 = floor(v32 - v86 * 0.5);
  v35 = v32 + -16.0;
  v105.size.height = rect_8;
  v105.origin.y = floor(v32 - (rect_8 + v30) * 0.5);
  v105.origin.x = rect;
  y = v105.origin.y;
  v105.size.width = rect_16;
  v106.origin.y = CGRectGetMaxY(v105);
  v82 = v28;
  v106.origin.x = v26;
  v80 = v106.origin.y;
  v106.size.width = v28;
  v106.size.height = v30;
  MidY = CGRectGetMidY(v106);
  v36 = *&v0[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_avatarView];
  [v36 frame];
  v112.origin.x = 14.0;
  v112.origin.y = v33;
  v112.size.width = 37.0;
  v112.size.height = 37.0;
  if (!CGRectEqualToRect(v107, v112))
  {
    [v36 setFrame_];
  }

  v37 = v75 + -32.0;
  v38 = floor(v35);
  OUTLINED_FUNCTION_9_76(OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_actionButton);
  v113.origin.x = v78;
  v113.origin.y = v34;
  v113.size.width = v77;
  v113.size.height = v86;
  if (!CGRectEqualToRect(v108, v113))
  {
    [v36 setFrame_];
  }

  OUTLINED_FUNCTION_0_159();
  v41 = InCallControlsParticipantCell.lmiApproveButton.getter(v39, v40);
  [v41 frame];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;

  if (!OUTLINED_FUNCTION_8_81(v43, v45, v47, v49, v37))
  {
    [*&v0[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___lmiApproveButton] setFrame_];
  }

  [OUTLINED_FUNCTION_2_124(&OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___lmiRejectButton) frame];
  OUTLINED_FUNCTION_15_46();
  v50 = OUTLINED_FUNCTION_5_106();
  if (!OUTLINED_FUNCTION_8_81(v50, v51, v52, v53, v81))
  {
    OUTLINED_FUNCTION_6_88(OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___lmiRejectButton);
  }

  OUTLINED_FUNCTION_1_129();
  v56 = InCallControlsParticipantCell.lmiApproveButton.getter(v54, v55);
  [v56 frame];
  OUTLINED_FUNCTION_15_46();
  v57 = OUTLINED_FUNCTION_5_106();
  if (!OUTLINED_FUNCTION_8_81(v57, v58, v59, v60, v83))
  {
    OUTLINED_FUNCTION_6_88(OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___kickMemberButton);
  }

  OUTLINED_FUNCTION_9_76(OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_nameLabel);
  v114.origin.x = rect;
  v114.origin.y = y;
  v114.size.width = rect_16;
  v114.size.height = rect_8;
  if (!CGRectEqualToRect(v109, v114))
  {
    [v56 setFrame_];
  }

  v61 = floor(MidY - rect_24 * 0.5);
  OUTLINED_FUNCTION_9_76(OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_subtitleLabel);
  v115.origin.x = v26;
  v115.origin.y = v80;
  v115.size.width = v82;
  v115.size.height = v30;
  if (!CGRectEqualToRect(v110, v115))
  {
    [v56 setFrame_];
  }

  [v19 frame];
  v116.origin.x = v84;
  v116.origin.y = v61;
  v116.size.width = v85;
  v116.size.height = rect_24;
  if (!CGRectEqualToRect(v111, v116))
  {
    [v19 setFrame_];
  }

  if ([v0 _shouldReverseLayoutDirection])
  {
    v62 = InCallControlsParticipantCell.contentViews.getter();
    v63 = specialized Array.count.getter(v62);
    if (v63)
    {
      v64 = v63;
      if (v63 < 1)
      {
        __break(1u);
        return;
      }

      v65 = 0;
      do
      {
        if ((v62 & 0xC000000000000001) != 0)
        {
          v66 = MEMORY[0x1BFB22010](v65, v62);
        }

        else
        {
          v66 = *(v62 + 8 * v65 + 32);
        }

        v67 = v66;
        ++v65;
        v68 = [v0 contentView];
        [v68 bounds];
        v70 = v69;

        [v67 frame];
        v72 = v70 - v71;
        [v67 frame];
        v74 = v72 - v73;
        [v67 frame];
        [v67 setFrame_];
      }

      while (v64 != v65);
    }
  }
}

void closure #2 in InCallControlsParticipantCell.layoutSubviews()(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_actionButton];
  v2 = *&v1[OBJC_IVAR____TtC15ConversationKit19InCallControlButton_label];
  if (v2)
  {
    v4 = v2;
    [v4 intrinsicContentSize];
    v5 = [v4 font];
    if (v5)
    {
      v6 = v5;
      [v5 lineHeight];

      v7 = [a1 contentView];
      [v7 bounds];

      return;
    }

    __break(1u);
  }

  _StringGuts.grow(_:)(52);
  MEMORY[0x1BFB20B10](0xD000000000000032, 0x80000001BC50F4C0);
  type metadata accessor for InCallControlButton();
  v8 = v1;
  v9 = String.init<A>(reflecting:)();
  MEMORY[0x1BFB20B10](v9);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id closure #6 in InCallControlsParticipantCell.layoutSubviews()(CGRect *a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for InCallControlsParticipantCellViewModel();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  CGRectGetMaxX(*a1);
  result = [*&a2[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_nameLabel] font];
  if (result)
  {
    v11 = result;
    [result lineHeight];

    v12 = &a2[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_viewModel];
    swift_beginAccess();
    __swift_getEnumTagSinglePayload(v12, 1, v7);
    outlined init with copy of InCallControlsParticipantCellViewModel?(v12, v6);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      return outlined destroy of CallControlsService?(v6, &_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMd);
    }

    else
    {
      outlined init with take of InCallControlsParticipantCellViewModel(v6, v9);
      if (v9[*(v7 + 32)] == 4)
      {
        v13 = [a2 contentView];
        [v13 bounds];
      }

      return outlined destroy of InCallControlsParticipantCellViewModel(v9);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #8 in InCallControlsParticipantCell.layoutSubviews()(char *a1, CGRect *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for InCallControlsParticipantCellViewModel();
  *&v8 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*&a1[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_statusIcon] alpha];
  if (v11 >= 0.5)
  {
    CGRectGetMaxX(*a2);
  }

  v12 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_viewModel;
  swift_beginAccess();
  outlined init with copy of InCallControlsParticipantCellViewModel?(&a1[v12], v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    outlined destroy of CallControlsService?(v6, &_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMd);
  }

  else
  {
    outlined init with take of InCallControlsParticipantCellViewModel(v6, v10);
    if (v10[*(v7 + 32)] == 4)
    {
      v13 = [a1 contentView];
      [v13 bounds];
    }

    outlined destroy of InCallControlsParticipantCellViewModel(v10);
  }

  if ((InCallControlsParticipantCell.isSubtitleHidden.getter() & 1) == 0)
  {
    v14 = [*&a1[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_subtitleLabel] font];
    if (v14)
    {
      v15 = v14;
      [v14 lineHeight];
    }

    else
    {
      __break(1u);
    }
  }
}

void InCallControlsParticipantCell.contentHeight.getter()
{
  swift_getObjectType();
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_viewModel;
  swift_beginAccess();
  v2 = type metadata accessor for InCallControlsParticipantCellViewModel();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) || *(v1 + *(v2 + 60)) != 1)
  {
    static InCallControlsParticipantCell.defaultContentHeight.getter();
  }

  else
  {
    static InCallControlsParticipantCell.extendedContentHeight.getter();
  }
}

UICollectionViewLayoutAttributes __swiftcall InCallControlsParticipantCell.preferredLayoutAttributesFitting(_:)(UICollectionViewLayoutAttributes a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_preferredLayoutAttributesFittingAttributes_, a1.super.isa);
  InCallControlsParticipantCell.contentHeight.getter();
  [v3 bounds];
  [v3 setBounds_];
  return v3;
}

uint64_t closure #1 in InCallControlsParticipantCell.inCallControlButton(for:)(uint64_t a1, uint64_t a2, int a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v42 - v8;
  v10 = type metadata accessor for InCallControlsParticipantCellViewModel();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_viewModel;
    swift_beginAccess();
    outlined init with copy of InCallControlsParticipantCellViewModel?(&v14[v15], v9);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {

      return outlined destroy of CallControlsService?(v9, &_s15ConversationKit38InCallControlsParticipantCellViewModelVSgMd);
    }

    else
    {
      HIDWORD(v44) = a3;
      outlined init with take of InCallControlsParticipantCellViewModel(v9, v12);
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v43 = static OS_os_log.conversationKit;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1BC4BB980;
      v17 = &v14[OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell_participantCellDelegate];
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v19 = *(v17 + 1);
        v45 = Strong;
        v46 = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit37InCallControlsParticipantCellDelegate_pMd);
        v20 = String.init<A>(reflecting:)();
        v22 = v21;
      }

      else
      {
        v22 = 0xE300000000000000;
        v20 = 7104878;
      }

      v23 = MEMORY[0x1E69E6158];
      *(v16 + 56) = MEMORY[0x1E69E6158];
      v24 = lazy protocol witness table accessor for type String and conformance String();
      *(v16 + 64) = v24;
      *(v16 + 32) = v20;
      *(v16 + 40) = v22;
      LOBYTE(v45) = BYTE4(v44);
      v25 = String.init<A>(reflecting:)();
      *(v16 + 96) = v23;
      *(v16 + 104) = v24;
      *(v16 + 72) = v25;
      *(v16 + 80) = v26;
      v27 = *(v10 + 20);
      v28 = type metadata accessor for UUID();
      (*(*(v28 - 8) + 16))(v6, &v12[v27], v28);
      __swift_storeEnumTagSinglePayload(v6, 0, 1, v28);
      specialized >> prefix<A>(_:)(v6, v29, v30, v31, v32, v33, v34, v35, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
      v37 = v36;
      v39 = v38;
      outlined destroy of CallControlsService?(v6, &_s10Foundation4UUIDVSgMd);
      *(v16 + 136) = v23;
      *(v16 + 144) = v24;
      *(v16 + 112) = v37;
      *(v16 + 120) = v39;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      if (swift_unknownObjectWeakLoadStrong())
      {
        v40 = *(v17 + 1);
        ObjectType = swift_getObjectType();
        (*(v40 + 8))(v14, HIDWORD(v44), &v12[v27], ObjectType, v40);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return outlined destroy of InCallControlsParticipantCellViewModel(v12);
    }
  }

  return result;
}

void static InCallControlsParticipantCell.extendedContentHeight.getter()
{
  if (byte_1EBCB1700)
  {
    static InCallControlsParticipantCell.cellHeight(for:)();
  }

  else
  {
    v0 = static InCallControlsParticipantCell._extendedContentHeight;
  }

  static InCallControlsParticipantCell._extendedContentHeight = v0;
  byte_1EBCB1700 = 0;
}

void static InCallControlsParticipantCell.defaultContentHeight.getter()
{
  if (byte_1EBCB16F0)
  {
    static InCallControlsParticipantCell.cellHeight(for:)();
  }

  else
  {
    v0 = static InCallControlsParticipantCell._defaultContentHeight;
  }

  static InCallControlsParticipantCell._defaultContentHeight = v0;
  byte_1EBCB16F0 = 0;
}

void static InCallControlsParticipantCell.cellHeight(for:)()
{
  v0 = objc_opt_self();
  v1 = [v0 preferredFontForTextStyle_];
  isa = UIFont.withTraits(_:)(0x8000u).super.isa;

  [(objc_class *)isa lineHeight];
  v3 = [v0 preferredFontForTextStyle_];
  [v3 lineHeight];
}

id InCallControlsParticipantCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t outlined consume of InCallControlsParticipantCellViewModel.SubtitleState(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
  }

  return result;
}

uint64_t outlined init with take of InCallControlsParticipantCellViewModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InCallControlsParticipantCellViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void partial apply for closure #1 in InCallControlsParticipantCell.configure(with:)()
{
  v1 = *(type metadata accessor for InCallControlsParticipantCellViewModel() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  closure #1 in InCallControlsParticipantCell.configure(with:)(v2, v3);
}

uint64_t outlined destroy of InCallControlsParticipantCellViewModel(uint64_t a1)
{
  v2 = type metadata accessor for InCallControlsParticipantCellViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for InCallControlsParticipantCell()
{
  result = type metadata singleton initialization cache for InCallControlsParticipantCell;
  if (!type metadata singleton initialization cache for InCallControlsParticipantCell)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for InCallControlsParticipantCell()
{
  type metadata accessor for InCallControlsParticipantCellViewModel?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for InCallControlsParticipantCellViewModel?()
{
  if (!lazy cache variable for type metadata for InCallControlsParticipantCellViewModel?)
  {
    type metadata accessor for InCallControlsParticipantCellViewModel();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for InCallControlsParticipantCellViewModel?);
    }
  }
}

ConversationKit::PersonalNicknameMenuViewDisplayContext_optional __swiftcall PersonalNicknameMenuViewDisplayContext.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PersonalNicknameMenuViewDisplayContext@<X0>(uint64_t *a1@<X8>)
{
  result = PersonalNicknameMenuViewDisplayContext.rawValue.getter();
  *a1 = result;
  return result;
}

void PersonalNicknameMenuView.personalNickname.didset()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView_personalNickname);
  if (v1)
  {
    v2 = v0;
    v27 = v1;
    v3 = PersonalNicknameMenuView.nameLabel.getter();
    type metadata accessor for NameAndPhotoUtilities();
    v4 = static NameAndPhotoUtilities.formattedDisplayName(for:)(v27);
    outlined bridged method (mbnn) of @objc UILabel.text.setter(v4, v5, v3);

    v6 = [v27 avatar];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 imageData];

      v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = [objc_opt_self() mainScreen];
      [v12 scale];
      v14 = v13;

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
      outlined copy of Data._Representation(v9, v11);
      v15 = UIImage.__allocating_init(data:scale:)(v9, v11, v14);
      isa = PersonalNicknameMenuView.leadingAvatarView.getter();
      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
      if (v17)
      {
        [v17 setImage_];
      }

      else
      {

        v18 = PersonalNicknameMenuView.containerStackView.getter();
        v19 = OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___leadingAvatarView;
        [v18 removeArrangedSubview_];

        v20 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
        v21 = *(v2 + v19);
        *(v2 + v19) = v20;
        v22 = v20;

        [v22 setTranslatesAutoresizingMaskIntoConstraints_];
        [*(v2 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___containerStackView) insertArrangedSubview:*(v2 + v19) atIndex:0];
        v23 = objc_opt_self();
        PersonalNicknameMenuView.generateLeadingAvatarConstraints()();
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v23 activateConstraints_];
      }

      v24 = OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___leadingAvatarView;
      v25 = [*(v2 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___leadingAvatarView) layer];
      [v25 setCornerRadius_];

      v26 = [*(v2 + v24) layer];
      [v26 setMasksToBounds_];

      outlined consume of Data._Representation(v9, v11);
    }

    else
    {
    }
  }
}

id UIImage.__allocating_init(data:scale:)(uint64_t a1, unint64_t a2, double a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = [v6 initWithData:isa scale:a3];

  outlined consume of Data._Representation(a1, a2);
  return v8;
}

void PersonalNicknameMenuView.personalNickname.setter(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView_personalNickname);
  *(v1 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView_personalNickname) = a1;
  v3 = a1;

  PersonalNicknameMenuView.personalNickname.didset();
}

id PersonalNicknameMenuView.contactStore.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___contactStore;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___contactStore);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___contactStore);
  }

  else
  {
    v4 = closure #1 in PersonalNicknameMenuView.contactStore.getter();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in PersonalNicknameMenuView.contactStore.getter()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = outlined bridged method (ob) of @objc NSBundle.bundleIdentifier.getter(v0);
  if (v2)
  {
    v3 = v1;
    v4 = v2;
  }

  else
  {
    v5 = TUPreferredFaceTimeBundleIdentifier();
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v6;
  }

  v7 = objc_opt_self();
  v8 = MEMORY[0x1BFB209B0](v3, v4);

  v9 = [v7 tu:v8 contactStoreConfigurationForBundleIdentifier:?];

  v10 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];
  return v10;
}

id PersonalNicknameMenuView.meContact.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___meContact;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___meContact);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = closure #1 in PersonalNicknameMenuView.meContact.getter();
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    outlined consume of IMAccount??(v4);
  }

  outlined copy of IMAccount??(v2);
  return v3;
}

id closure #1 in PersonalNicknameMenuView.meContact.getter()
{
  v15[1] = *MEMORY[0x1E69E9840];
  v0 = PersonalNicknameMenuView.contactStore.getter();
  isa = [objc_opt_self() keysForNicknameHandling];
  if (!isa)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v15[0] = 0;
  v2 = [v0 _crossPlatformUnifiedMeContactWithKeysToFetch_error_];

  v3 = v15[0];
  if (!v2)
  {
    v4 = v3;
    v5 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for nickname != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, &static Logger.nickname);
    v7 = v5;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = v5;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_1BBC58000, v8, v9, "Could not fetch me card %@", v10, 0xCu);
      outlined destroy of TapInteractionHandler?(v11, &_sSo8NSObjectCSgMd);
      MEMORY[0x1BFB23DF0](v11, -1, -1);
      MEMORY[0x1BFB23DF0](v10, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v2;
}

id closure #1 in PersonalNicknameMenuView.leadingAvatarView.getter(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView_personalNickname);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 avatar];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 imageData];

      v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      v9 = [objc_opt_self() mainScreen];
      [v9 scale];
      v11 = v10;

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
      outlined copy of Data._Representation(v6, v8);
      v12 = UIImage.__allocating_init(data:scale:)(v6, v8, v11);
      v13 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
      v14 = [v13 layer];
      [v14 setCornerRadius_];

      v15 = [v13 layer];
      [v15 setMasksToBounds_];

      outlined consume of Data._Representation(v6, v8);
      return v13;
    }

    else
    {
      v20 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
      v21 = [v2 firstName];
      if (!v21)
      {
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = MEMORY[0x1BFB209B0](v22);
      }

      [v20 setGivenName_];

      v23 = [v2 lastName];
      if (!v23)
      {
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = MEMORY[0x1BFB209B0](v24);
      }

      [v20 setFamilyName_];

      v25 = [objc_allocWithZone(MEMORY[0x1E695D0C0]) initWithContact_];
      return v25;
    }
  }

  else
  {
    v17 = PersonalNicknameMenuView.meContact.getter();
    if (v17)
    {
      v18 = v17;
      v19 = [objc_allocWithZone(MEMORY[0x1E695D0C0]) initWithContact_];

      return v19;
    }

    else
    {
      v26 = objc_allocWithZone(MEMORY[0x1E69DD250]);

      return [v26 init];
    }
  }
}

id closure #1 in PersonalNicknameMenuView.nameLabel.getter(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v3 = [objc_opt_self() preferredFontForTextStyle_];
  [v2 setFont_];

  v4 = [objc_opt_self() labelColor];
  [v2 setTextColor_];

  v5 = *(a1 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView_personalNickname);
  if (v5)
  {
    type metadata accessor for NameAndPhotoUtilities();
    v6 = v5;
    v7 = static NameAndPhotoUtilities.formattedDisplayName(for:)(v6);
    outlined bridged method (mbnn) of @objc UILabel.text.setter(v7, v8, v2);
LABEL_8:

    return v2;
  }

  v9 = PersonalNicknameMenuView.meContact.getter();
  if (v9)
  {
    v10 = v9;
    v11 = outlined bridged method (pb) of @objc CNContact.displayName.getter(v9);
    if (v12)
    {
      v6 = MEMORY[0x1BFB209B0](v11);
    }

    else
    {
      v6 = 0;
    }

    [v2 setText_];

    goto LABEL_8;
  }

  return v2;
}

id closure #1 in PersonalNicknameMenuView.subtitleLabel.getter(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v3 = [objc_opt_self() preferredFontForTextStyle_];
  [v2 setFont_];

  v4 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor_];

  if (*(a1 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView_displayContext) == 2)
  {
    v5 = [objc_opt_self() conversationKit];
    v13 = 0xE000000000000000;
    v6 = 0x80000001BC50F8A0;
    v7 = 0xD000000000000014;
  }

  else
  {
    v5 = [objc_opt_self() conversationKit];
    v13 = 0xE000000000000000;
    v7 = 0x50202620656D614ELL;
    v6 = 0xEC0000006F746F68;
  }

  v8.value._countAndFlagsBits = 0x61737265766E6F43;
  v8.value._object = 0xEF74694B6E6F6974;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v10 = 0;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v7, v8, v5, v9, *(&v13 - 1));

  outlined bridged method (mbnn) of @objc UILabel.text.setter(v11._countAndFlagsBits, v11._object, v2);
  return v2;
}

void *closure #1 in PersonalNicknameMenuView.labelStackView.getter()
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIStackView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BC4BA930;
  *(v0 + 32) = PersonalNicknameMenuView.nameLabel.getter();
  *(v0 + 40) = PersonalNicknameMenuView.subtitleLabel.getter();
  UIStackView.__allocating_init(arrangedSubviews:)(v1, v0);
  v3 = v2;
  [v2 setAxis_];
  [v3 setAlignment_];
  [v3 setSpacing_];
  return v3;
}

id PersonalNicknameMenuView.leadingAvatarView.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

void *closure #1 in PersonalNicknameMenuView.containerStackView.getter()
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIStackView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BC4BA930;
  *(v0 + 32) = PersonalNicknameMenuView.leadingAvatarView.getter();
  *(v0 + 40) = PersonalNicknameMenuView.labelStackView.getter();
  UIStackView.__allocating_init(arrangedSubviews:)(v1, v0);
  v3 = v2;
  [v2 setAxis_];
  [v3 setAlignment_];
  [v3 setSpacing_];
  return v3;
}

id PersonalNicknameMenuView.tapRecognizer.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___tapRecognizer;
  v2 = *&v0[OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___tapRecognizer];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___tapRecognizer];
  }

  else
  {
    v4 = v0;
    v10[3] = type metadata accessor for PersonalNicknameMenuView();
    v10[0] = v0;
    objc_allocWithZone(MEMORY[0x1E69DD060]);
    v5 = v0;
    v6 = @nonobjc UITapGestureRecognizer.init(target:action:)(v10, sel_didTapWithSender_);
    v7 = *&v0[v1];
    *&v4[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id PersonalNicknameMenuView.init(displayContext:personalNicknameMenuViewDelegate:)(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  *&v3[OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView_personalNickname] = 0;
  *&v3[OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___contactStore] = 0;
  *&v3[OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___meContact] = 1;
  *&v3[OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___leadingAvatarView] = 0;
  *&v3[OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___nameLabel] = 0;
  *&v3[OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___subtitleLabel] = 0;
  *&v3[OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___labelStackView] = 0;
  *&v3[OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___containerStackView] = 0;
  *&v3[OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___tapRecognizer] = 0;
  *&v3[OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView_personalNicknameMenuViewDelegate + 8] = 0;
  v6 = swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView_displayContext] = v5;
  *(v6 + 8) = a3;
  swift_unknownObjectWeakAssign();
  v10.receiver = v3;
  v10.super_class = type metadata accessor for PersonalNicknameMenuView();
  v7 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  specialized PersonalNicknameMenuView.getPersonalNickname(completion:)(v7, v7);
  PersonalNicknameMenuView.setupConstraints()();
  v8 = PersonalNicknameMenuView.tapRecognizer.getter();
  [v7 addGestureRecognizer_];

  swift_unknownObjectRelease();
  return v7;
}

id PersonalNicknameMenuView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void PersonalNicknameMenuView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView_personalNickname) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___contactStore) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___meContact) = 1;
  *(v0 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___leadingAvatarView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___nameLabel) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___labelStackView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___containerStackView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___tapRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView_personalNicknameMenuViewDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void PersonalNicknameMenuView.setupConstraints()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA920;
  *(inited + 32) = PersonalNicknameMenuView.leadingAvatarView.getter();
  *(inited + 40) = PersonalNicknameMenuView.nameLabel.getter();
  *(inited + 48) = PersonalNicknameMenuView.subtitleLabel.getter();
  *(inited + 56) = PersonalNicknameMenuView.labelStackView.getter();
  *(inited + 64) = PersonalNicknameMenuView.containerStackView.getter();
  v3 = inited & 0xC000000000000001;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (inited & 0xC000000000000001) == 0, inited);
  if ((inited & 0xC000000000000001) != 0)
  {
    MEMORY[0x1BFB22010](0, inited);
  }

  else
  {
    v4 = *(inited + 32);
  }

  OUTLINED_FUNCTION_1_130();
  OUTLINED_FUNCTION_12_62(v5);

  OUTLINED_FUNCTION_11_77(1);
  if (v3)
  {
    MEMORY[0x1BFB22010](1, inited);
  }

  else
  {
    v6 = *(inited + 40);
  }

  OUTLINED_FUNCTION_1_130();
  OUTLINED_FUNCTION_12_62(v7);

  OUTLINED_FUNCTION_11_77(2);
  if (v3)
  {
    MEMORY[0x1BFB22010](2, inited);
  }

  else
  {
    v8 = *(inited + 48);
  }

  OUTLINED_FUNCTION_1_130();
  OUTLINED_FUNCTION_12_62(v9);

  OUTLINED_FUNCTION_11_77(3);
  if (v3)
  {
    MEMORY[0x1BFB22010](3, inited);
  }

  else
  {
    v10 = *(inited + 56);
  }

  OUTLINED_FUNCTION_1_130();
  OUTLINED_FUNCTION_12_62(v11);

  OUTLINED_FUNCTION_11_77(4);
  if (v3)
  {
    v12 = MEMORY[0x1BFB22010](4, inited);
  }

  else
  {
    v12 = *(inited + 64);
  }

  v13 = v12;

  [v13 setTranslatesAutoresizingMaskIntoConstraints_];

  v14 = OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___containerStackView;
  [v0 addSubview_];
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BC4BA7F0;
  v16 = [*&v0[v14] topAnchor];
  v17 = [v0 topAnchor];
  v18 = OUTLINED_FUNCTION_10_68();

  *(v15 + 32) = v18;
  v19 = [*&v0[v14] bottomAnchor];
  v20 = OUTLINED_FUNCTION_7_81([v0 bottomAnchor]);

  *(v15 + 40) = v20;
  v21 = [*&v0[v14] leadingAnchor];
  v22 = [v0 leadingAnchor];
  v23 = OUTLINED_FUNCTION_10_68();

  *(v15 + 48) = v23;
  v24 = [*&v0[v14] trailingAnchor];
  v25 = OUTLINED_FUNCTION_7_81([v0 trailingAnchor]);

  *(v15 + 56) = v25;
  v29 = v15;
  v26 = PersonalNicknameMenuView.generateLeadingAvatarConstraints()();
  specialized Array.append<A>(contentsOf:)(v26);
  v27 = objc_opt_self();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints_];
}

uint64_t PersonalNicknameMenuView.generateLeadingAvatarConstraints()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BC4BA930;
  v2 = PersonalNicknameMenuView.leadingAvatarView.getter();
  v3 = [v2 heightAnchor];

  v4 = [v3 constraintEqualToConstant_];
  *(v1 + 32) = v4;
  v5 = [*(v0 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView____lazy_storage___leadingAvatarView) widthAnchor];
  v6 = [v5 constraintEqualToConstant_];

  *(v1 + 40) = v6;
  return v1;
}

Swift::Void __swiftcall PersonalNicknameMenuView.didTap(sender:)(UITapGestureRecognizer *sender)
{
  v2 = v1;
  if (one-time initialization token for nickname != -1)
  {
    OUTLINED_FUNCTION_0_160();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, &static Logger.nickname);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_219();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_27();
  }

  v11 = v2 + OBJC_IVAR____TtC15ConversationKit24PersonalNicknameMenuView_personalNicknameMenuViewDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    (*(v12 + 8))(ObjectType, v12);

    swift_unknownObjectRelease();
  }
}

id PersonalNicknameMenuView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void specialized PersonalNicknameMenuView.getPersonalNickname(completion:)(uint64_t a1, void *a2)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a2;
  v4 = objc_opt_self();
  v5 = a2;
  v6 = [v4 sharedController];
  v7 = MEMORY[0x1BFB209B0](0xD000000000000018, 0x80000001BC4D9110);
  v8 = [v6 hasListenerForID_];

  if ((v8 & 1) == 0)
  {
    v9 = [v4 sharedController];
    v10 = MEMORY[0x1BFB209B0](0xD000000000000018, 0x80000001BC4D9110);
    [v9 addListenerID:v10 capabilities:*MEMORY[0x1E69A6250]];
  }

  v11 = objc_opt_self();
  v12 = [v11 sharedInstance];
  v13 = [v12 personalNickname];

  if (v13)
  {
    if (one-time initialization token for nickname != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, &static Logger.nickname);
    v15 = v13;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v15;
      *v19 = v13;
      v20 = v15;
      _os_log_impl(&dword_1BBC58000, v16, v17, "Reading the personal nick name from cache %@", v18, 0xCu);
      outlined destroy of TapInteractionHandler?(v19, &_sSo8NSObjectCSgMd);
      MEMORY[0x1BFB23DF0](v19, -1, -1);
      MEMORY[0x1BFB23DF0](v18, -1, -1);
    }

    v24 = v15;
    PersonalNicknameMenuView.personalNickname.setter(v13);
  }

  else
  {
    v21 = [v11 sharedInstance];
    v22 = swift_allocObject();
    *(v22 + 16) = partial apply for closure #1 in PersonalNicknameMenuView.setNickname();
    *(v22 + 24) = v3;
    aBlock[4] = partial apply for closure #1 in PersonalNicknameMenuView.getPersonalNickname(completion:);
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed AVCaptureDevice?) -> ();
    aBlock[3] = &block_descriptor_43_2;
    v23 = _Block_copy(aBlock);

    [v21 fetchPersonalNicknameWithCompletion_];
    _Block_release(v23);
  }
}

uint64_t closure #1 in PersonalNicknameMenuView.getPersonalNickname(completion:)(void *a1, uint64_t (*a2)(void *))
{
  if (one-time initialization token for nickname != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, &static Logger.nickname);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = a1;
    v10 = v5;
    _os_log_impl(&dword_1BBC58000, v6, v7, "Fetching the personal nick name: %@", v8, 0xCu);
    outlined destroy of TapInteractionHandler?(v9, &_sSo8NSObjectCSgMd);
    MEMORY[0x1BFB23DF0](v9, -1, -1);
    MEMORY[0x1BFB23DF0](v8, -1, -1);
  }

  return a2(a1);
}

void *PersonalNicknameNameProvider.personalNickname.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit28PersonalNicknameNameProvider_personalNickname);
  v2 = v1;
  return v1;
}

id PersonalNicknameNameProvider.__allocating_init(personalNickname:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC15ConversationKit28PersonalNicknameNameProvider_personalNickname] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id PersonalNicknameNameProvider.init(personalNickname:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC15ConversationKit28PersonalNicknameNameProvider_personalNickname] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PersonalNicknameNameProvider();
  return objc_msgSendSuper2(&v3, sel_init);
}