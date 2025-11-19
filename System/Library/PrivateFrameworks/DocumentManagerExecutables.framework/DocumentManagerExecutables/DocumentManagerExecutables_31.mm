id DOCItemCollectionViewController._headerContainerView.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage____headerContainerView;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage____headerContainerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage____headerContainerView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v4 setAxis_];
    [v4 setLayoutMarginsRelativeArrangement_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void DOCItemCollectionViewController.promptText.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (!v2)
  {
    __break(1u);
    return;
  }

  v3 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v2) + 0x180))())
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
    v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v8 = MEMORY[0x24C1FAD20](v4, v6);

    v9 = [v7 initWithSuiteName_];

    if (v9)
    {
      if ([v9 valueForKey_])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v21 = 0u;
        v22 = 0u;
      }

      v23[0] = v21;
      v23[1] = v22;
      if (*(&v22 + 1))
      {
        if (swift_dynamicCast())
        {

          if (v20 == 1)
          {
            return;
          }
        }

        else
        {
        }
      }

      else
      {

        outlined destroy of CharacterSet?(v23, &_sypSgMd);
      }
    }
  }

  v10 = *((*v3 & *v1) + 0xA50);
  (v10)(v23);
  v11 = *&v23[0];
  outlined destroy of DOCItemCollectionConfiguration(v23);
  v12 = [v11 promptText];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v17 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v17 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v10(&v21, v16);
    v18 = v21;
    outlined destroy of DOCItemCollectionConfiguration(&v21);
    v19 = [v18 promptText];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }
}

void *DOCItemCollectionViewController.promptView.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___promptView;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___promptView);
  v3 = v2;
  if (v2 == 1)
  {
    closure #1 in DOCItemCollectionViewController.promptView.getter(v0);
    v3 = v4;
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v6 = v4;
    outlined consume of DOCProgressCollectionIndicatorView??(v5);
  }

  outlined copy of DOCProgressCollectionIndicatorView??(v2);
  return v3;
}

void closure #1 in DOCItemCollectionViewController.promptView.getter(uint64_t a1)
{
  DOCItemCollectionViewController.promptText.getter();
  if (v3)
  {
    v4 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
    if (v4)
    {
      v5 = v2;
      v6 = v3;
      v7 = (*((*MEMORY[0x277D85000] & *v4) + 0x1B0))();
      if (v7)
      {
        v8 = [v7 isShared];
        swift_unknownObjectRelease();
        if (v8)
        {
          v9 = 0x322E6E6F73726570;
        }

        else
        {
          v9 = 0;
        }

        if (v8)
        {
          v10 = 0xED00006C6C69662ELL;
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }

      v11 = objc_allocWithZone(type metadata accessor for DOCPromptHeaderView());
      DOCPromptHeaderView.init(text:glyphName:)(v5, v6, v9, v10);
    }

    else
    {
      __break(1u);
    }
  }
}

void DOCItemCollectionViewController.createShareBannerView()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v1)
  {
    v2 = MEMORY[0x277D85000];
    v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x1B0))();
    if (v3)
    {
      v4 = [v3 isShared];
      swift_unknownObjectRelease();
      if (v4)
      {
        v5 = [objc_allocWithZone(type metadata accessor for DOCShareBannerView()) init];
        v6 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v7 = *((*v2 & *v5) + 0x90);

        v7(partial apply for closure #1 in DOCItemCollectionViewController.createShareBannerView(), v6);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in DOCItemCollectionViewController.createShareBannerView()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = MEMORY[0x277D85000];
    v5 = (*((*MEMORY[0x277D85000] & *Strong) + 0xC70))();
    if (v5)
    {
      v6 = v5;
      ObjectType = swift_getObjectType();
      v8 = [v6 fpfs_fpItem];
      if (v8)
      {
        v9 = v8;
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v10 = *((*v4 & *static DOCCollaborationHighlightManager.shared) + 0xA8);
        v11 = static DOCCollaborationHighlightManager.shared;
        v12 = v10(v9);

        if (v12)
        {

          v13 = [objc_allocWithZone(MEMORY[0x277CCAA88]) init];
          v14 = swift_unknownObjectRetain();
          specialized NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:)(v14, 2, 0, 0, v13, ObjectType);
          swift_unknownObjectRelease();
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for _SWCollaborationDetailViewController);
          v15 = v13;
          v16 = _SWCollaborationDetailViewController.init(itemProvider:)();
          v17 = _DocumentManagerBundle();
          if (v17)
          {
            v18 = v17;
            v31._object = 0x8000000249BE1190;
            v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
            v19.value._object = 0xEB00000000656C62;
            v20._countAndFlagsBits = 0xD00000000000002CLL;
            v20._object = 0x8000000249BE1140;
            v21._object = 0x8000000249BE1170;
            v31._countAndFlagsBits = 0xD000000000000053;
            v21._countAndFlagsBits = 0xD000000000000014;
            v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v19, v18, v21, v31);

            v23 = MEMORY[0x24C1FAD20](v22._countAndFlagsBits, v22._object);

            [v16 setManageButtonTitle_];

            v24 = v16;
            [v24 setModalPresentationStyle_];
            v25 = [v24 presentationController];
            if (v25)
            {
              v26 = v25;
              [v25 setDelegate_];
            }

            v27 = [v24 popoverPresentationController];

            if (v27)
            {
              [v27 setSourceView_];
            }

            v28 = [v24 popoverPresentationController];

            if (v28)
            {
              [v28 setPermittedArrowDirections_];
            }

            swift_unknownObjectWeakAssign();

            [v3 presentViewController:v24 animated:1 completion:0];
            swift_unknownObjectRelease();
          }

          else
          {
            __break(1u);
          }
        }

        else
        {
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
          v29 = DOCItemCollectionViewController.actionContext(from:)();
          v30 = swift_unknownObjectRetain();
          specialized static UIDocumentBrowserAction.showManageShare(for:actionContext:)(v30, v29);

          swift_unknownObjectRelease_n();
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }
}

void DOCItemCollectionViewController.updateShareBannerView()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_shareBannerView);
  if (v1)
  {
    v2 = MEMORY[0x277D85000];
    v3 = *((*MEMORY[0x277D85000] & *v0) + 0xC70);
    v21 = v1;
    v4 = v3();
    if (v4 && (v5 = [v4 fpfs_fpItem], swift_unknownObjectRelease(), v5) && (v6 = FPItem.collaborationSenderDisplayName.getter(), v8 = v7, v5, v8))
    {
      v9 = _DocumentManagerBundle();
      if (!v9)
      {
        __break(1u);
        return;
      }

      v10 = v9;
      v25._object = 0x8000000249BE1100;
      v11._countAndFlagsBits = 0x7720646572616853;
      v11._object = 0xEE00402520687469;
      v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v12.value._object = 0xEB00000000656C62;
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      v25._countAndFlagsBits = 0xD00000000000003ALL;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v25);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_249B9A480;
      *(v14 + 56) = MEMORY[0x277D837D0];
      *(v14 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v14 + 32) = v6;
      *(v14 + 40) = v8;
      v15 = static String.localizedStringWithFormat(_:_:)();
      v17 = v16;

      (*((*v2 & *v21) + 0xA8))(v15, v17);
    }

    else
    {
      if (v3())
      {
        swift_getObjectType();
        v23 = 1;
        v22 = 0;
        v18 = DOCNode.localizedSharingStatusDescription(type:options:)(&v23, &v22);
        v20 = v19;
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      (*((*v2 & *v21) + 0xA8))(v18, v20);
    }
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.updateHeaderView()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v101 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v100 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = MEMORY[0x277D84F90];
  v103 = v0;
  v10 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (!v10)
  {
    __break(1u);
    return;
  }

  v11 = MEMORY[0x277D85000];
  v12 = (*((*MEMORY[0x277D85000] & *v10) + 0x1B0))(v8);
  v96 = v5;
  if (v12)
  {
    v13 = [v12 isShared];
    swift_unknownObjectRelease();
    if (v13)
    {
      v14 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_shareBannerView;
      v15 = v103;
      v16 = *(v103 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_shareBannerView);
      v17 = v16;
      v18 = v16;
      if (v16)
      {
LABEL_7:
        *(v15 + v14) = v18;
        v20 = v16;
        v21 = v18;

        v22 = v21;
        MEMORY[0x24C1FB090]();
        if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v23 = v105;
        DOCItemCollectionViewController.updateShareBannerView()();
        v11 = MEMORY[0x277D85000];
        goto LABEL_12;
      }

      DOCItemCollectionViewController.createShareBannerView()();
      v11 = MEMORY[0x277D85000];
      if (v19)
      {
        v18 = v19;
        v15 = v103;
        v17 = *(v103 + v14);
        goto LABEL_7;
      }
    }
  }

  v15 = v103;
  v24 = *(v103 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_shareBannerView);
  *(v103 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_shareBannerView) = 0;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v23 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v22 = Strong;
  [(__objc2_prot *)Strong dismissViewControllerAnimated:1 completion:0];
  v23 = MEMORY[0x277D84F90];
LABEL_12:

LABEL_14:
  v26 = DOCItemCollectionViewController.promptView.getter();
  if (v26)
  {
    v27 = v26;
    MEMORY[0x24C1FB090]();
    if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v23 = v105;
    v15 = v103;
  }

  v28 = *(v15 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_additionalHeaderContainerView);
  if (v28)
  {
    v29 = v28;
    MEMORY[0x24C1FB090]();
    if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v23 = v105;
    v15 = v103;
  }

  if (DOCItemCollectionViewController.wantsSyncStateHeader.getter())
  {
    v30 = *(v15 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_syncStateHeaderView);
    if (v30)
    {
      v31 = *((*v11 & *v30) + 0xF0);
      v32 = v30;
      if (v31())
      {
      }

      else
      {
        v33 = v32;
        MEMORY[0x24C1FB090]();
        if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v23 = v105;
        v15 = v103;
      }
    }
  }

  v34 = DOCItemCollectionViewController.wantsTipsHeader.getter();
  v98 = v2;
  v99 = v1;
  v97 = v6;
  if (v34 & 1) != 0 && ((*((*v11 & *v15) + 0x890))())
  {
    v35 = *(v15 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_tipsManager);
    if (v35)
    {
      v36 = one-time initialization token for DocumentManager;
      v37 = v35;
      if (v36 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Logger.DocumentManager);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_2493AC000, v39, v40, "Files Family Tip, adding tipsHeaderView", v41, 2u);
        MEMORY[0x24C1FE850](v41, -1, -1);
      }

      v42 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_tipsHeaderView;
      v15 = v103;
      v43 = *(v103 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_tipsHeaderView);
      if (v43)
      {
        v44 = *(v103 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_tipsHeaderView);
      }

      else
      {
        v44 = (*((*v11 & *v37) + 0x188))();
        v43 = 0;
      }

      v45 = v43;
      v46 = v44;
      MEMORY[0x24C1FB090]();
      if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v23 = v105;
      v47 = *(v15 + v42);
      *(v15 + v42) = v46;
      v48 = v46;

      v49 = (*((*v11 & *v15) + 0xBD8))();
      v50 = *(v15 + v42);
      if (v50)
      {
        if (v49 == 3)
        {
          v51 = 16.0;
        }

        else
        {
          v51 = 0.0;
        }

        v52 = v50;
        [v52 setDirectionalLayoutMargins_];
      }
    }
  }

  v53 = DOCItemCollectionViewController._headerContainerView.getter();
  v54 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
  v55 = [v53 arrangedSubviews];

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);
  v56 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v56 >> 62)
  {
    goto LABEL_70;
  }

  for (i = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {

    if (!i)
    {
      if (v23 >> 62)
      {
        if (__CocoaSet.count.getter() > 0)
        {
          goto LABEL_57;
        }
      }

      else if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
      {
        goto LABEL_57;
      }
    }

    v58 = [*(v15 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage____headerContainerView) v54[322]];
    v59 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v59 >> 62)
    {
      v60 = __CocoaSet.count.getter();
    }

    else
    {
      v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v60 >= 1 && v23 >> 62)
    {
      __CocoaSet.count.getter();
    }

LABEL_57:
    v61 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage____headerContainerView;
    v62 = [*(v15 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage____headerContainerView) v54[322]];
    v63 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v62) = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo6UIViewC_Tt1g5(v63, v23);

    if (v62)
    {
      goto LABEL_88;
    }

    v64 = [*(v15 + v61) v54[322]];
    v65 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v102 = v23;
    if (v65 >> 62)
    {
      break;
    }

    v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v66)
    {
      goto LABEL_73;
    }

LABEL_60:
    v67 = 0;
    v23 = v65 & 0xFFFFFFFFFFFFFF8;
    v15 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
    while (1)
    {
      if ((v65 & 0xC000000000000001) != 0)
      {
        v68 = MEMORY[0x24C1FC540](v67, v65);
      }

      else
      {
        if (v67 >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_69;
        }

        v68 = *(v65 + 8 * v67 + 32);
      }

      v54 = v68;
      v69 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        break;
      }

      [(__objc2_prot *)*(v103 + v61) removeArrangedSubview:v68];
      [(SEL *)v54 removeFromSuperview];

      ++v67;
      if (v69 == v66)
      {
        goto LABEL_73;
      }
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    ;
  }

  v66 = __CocoaSet.count.getter();
  if (v66)
  {
    goto LABEL_60;
  }

LABEL_73:

  if (v102 >> 62)
  {
    goto LABEL_85;
  }

  v70 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (j = v103; v70; j = v103)
  {
    v72 = 0;
    v73 = v102 & 0xC000000000000001;
    v74 = v102 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v73)
      {
        v75 = MEMORY[0x24C1FC540](v72, v102);
      }

      else
      {
        if (v72 >= *(v74 + 16))
        {
          goto LABEL_84;
        }

        v75 = *(v102 + 8 * v72 + 32);
      }

      v76 = v75;
      v77 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        break;
      }

      [*(j + v61) addArrangedSubview_];

      ++v72;
      if (v77 == v70)
      {
        goto LABEL_86;
      }
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    v70 = __CocoaSet.count.getter();
  }

LABEL_86:
  v78 = MEMORY[0x277D85000];
  v79 = (*((*MEMORY[0x277D85000] & *j) + 0x1758))(&outlined read-only object #0 of DOCItemCollectionViewController.updateHeaderView());
  v80 = *((*v78 & *j) + 0x1010);
  v81 = (v80)(v79);
  [v81 contentOffset];
  v83 = v82;

  v84 = v83 + -1.0;
  v85 = v80();
  [v85 adjustedContentInset];
  v87 = v86;

  if (v84 + v87 == 0.0)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v88 = static OS_dispatch_queue.main.getter();
    v89 = swift_allocObject();
    *(v89 + 16) = j;
    aBlock[4] = partial apply for closure #3 in DOCItemCollectionViewController.updateHeaderView();
    aBlock[5] = v89;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_94;
    v90 = _Block_copy(aBlock);
    v91 = j;

    v92 = v100;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v93 = v96;
    v94 = v99;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v92, v93, v90);
    _Block_release(v90);

    (*(v98 + 8))(v93, v94);
    (*(v101 + 8))(v92, v97);

    return;
  }

LABEL_88:
}

void closure #3 in DOCItemCollectionViewController.updateHeaderView()(void *a1)
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *a1) + 0x1010))();
  (*((*v1 & *v2) + 0x168))();
}

void DOCItemCollectionViewController.moreActionsAlert.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*DOCItemCollectionViewController.moreActionsAlert.modify(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_moreActionsAlert;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCInlineRenameOverlayView.itemCell.modify;
}

void *DOCItemCollectionViewController.moreActionsBarButton.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_moreActionsBarButton;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemCollectionViewController.moreActionsBarButton.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_moreActionsBarButton;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DOCItemCollectionViewController.enumerationProperties.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enumerationProperties);
  v2 = v1;
  return v1;
}

void *DOCItemCollectionViewController.enumerationIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enumerationIdentifier);
  v2 = v1;
  return v1;
}

uint64_t DOCItemCollectionViewController.isSpringLoading.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isSpringLoading;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemCollectionViewController.isSpringLoading.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isSpringLoading;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path setter for DOCItemCollectionViewController.sortingDescriptor : DOCItemCollectionViewController(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a1 + 24);
  v8[0] = *a1;
  v8[1] = v2;
  v8[2] = v3;
  v9 = v5;
  v6 = *((*MEMORY[0x277D85000] & *v4) + 0x1168);
  outlined copy of DOCItemSortDescriptor?(v8[0], v2);
  return v6(v8);
}

void DOCItemCollectionViewController.sortingDescriptor.didset(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (!v2)
  {
    return;
  }

  v3 = v1;
  v4 = MEMORY[0x277D85000];
  if (*(a1 + 8))
  {
    v5 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_sortingDescriptor;
    swift_beginAccess();
    v6 = *(v5 + 1);
    if (v6)
    {
    }

    v7 = v2;
    v8 = *((*v4 & *v2) + 0x220);
    v9 = v7;
    v10 = v7;
    v11 = v8();
    if (v6)
    {
      v12 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo16NSSortDescriptorC_Tt1g5(v6, v11);

      v2 = v9;
      if (v12)
      {

        return;
      }
    }

    else
    {

      v2 = v9;
    }
  }

  else
  {
    v13 = v2;
  }

  v14 = v3 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_sortingDescriptor;
  swift_beginAccess();
  v15 = *v14;
  v16 = *(v14 + 2);
  v17 = v14[24];
  v80 = v2;
  if (!*(v14 + 1))
  {
    v81 = *v14;
    v82 = 0;
    v83 = v16;
    v84 = v17;
    (*((*v4 & *v2) + 0x228))(&v81);
    goto LABEL_60;
  }

  v78 = v14[24];
  v18 = *((*v4 & *v3) + 0x1198);
  v77 = *(v14 + 1);

  v79 = v16;

  v18(0);
  v19 = DOCItemCollectionViewController.updateViewOptionsViewModel()();
  v20 = (*((*v4 & *v3) + 0xA68))(v19);
  v21 = (*((*v4 & *v20) + 0x1D0))();

  v22 = Array<A>.displayableModes.getter(v21);

  v75 = v22;
  v76 = v15;
  v23 = byte_249BAB83A[v15];
  v24 = *(v22 + 16);
  v25 = (v22 + 32);
  while (1)
  {
    if (!v24)
    {

      outlined consume of DOCItemSortDescriptor?(v76, v77);
      v37 = *v14;
      v38 = *(v14 + 1);
      *(v14 + 1) = 0;
      *(v14 + 2) = 0;
      *v14 = 0;
      v14[24] = 0;
      outlined consume of DOCItemSortDescriptor?(v37, v38);
      return;
    }

    v27 = *v25;
    if (v27 <= 2)
    {
      v30 = 1936154996;
      if (v27 == 1)
      {
        v30 = 1701667182;
      }

      if (*v25)
      {
        v28 = v30;
      }

      else
      {
        v28 = 1702125924;
      }

      v29 = 0xE400000000000000;
      if (v23 > 2)
      {
LABEL_30:
        v31 = 0x7942646572616873;
        if (v23 != 5)
        {
          v31 = 0x745364756F6C6369;
        }

        v32 = 0xEC00000073757461;
        if (v23 == 5)
        {
          v32 = 0xE800000000000000;
        }

        v33 = 1702521203;
        if (v23 != 3)
        {
          v33 = 1684957547;
        }

        if (v23 <= 4)
        {
          v34 = v33;
        }

        else
        {
          v34 = v31;
        }

        if (v23 <= 4)
        {
          v35 = 0xE400000000000000;
        }

        else
        {
          v35 = v32;
        }

        if (v28 != v34)
        {
          goto LABEL_12;
        }

        goto LABEL_52;
      }
    }

    else if (*v25 > 4u)
    {
      if (v27 == 5)
      {
        v29 = 0xE800000000000000;
        v28 = 0x7942646572616873;
        if (v23 > 2)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v28 = 0x745364756F6C6369;
        v29 = 0xEC00000073757461;
        if (v23 > 2)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
      if (v27 == 3)
      {
        v28 = 1702521203;
      }

      else
      {
        v28 = 1684957547;
      }

      v29 = 0xE400000000000000;
      if (v23 > 2)
      {
        goto LABEL_30;
      }
    }

    if (v23)
    {
      break;
    }

    v35 = 0xE400000000000000;
    if (v28 == 1702125924)
    {
      goto LABEL_52;
    }

LABEL_12:
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v25;
    --v24;
    if (v26)
    {
      goto LABEL_56;
    }
  }

  if (v23 == 1)
  {
    v36 = 1701667182;
  }

  else
  {
    v36 = 1936154996;
  }

  v35 = 0xE400000000000000;
  if (v28 != v36)
  {
    goto LABEL_12;
  }

LABEL_52:
  if (v29 != v35)
  {
    goto LABEL_12;
  }

LABEL_56:

  v81 = v76;
  v82 = v77;
  v2 = v80;
  v83 = v79;
  v84 = v78 & 1;
  (*((*v4 & *v80) + 0x228))(&v81);
  v39 = outlined consume of DOCItemSortDescriptor?(v81, v82);
  v40 = (*((*v4 & *v80) + 0x258))(v39);
  if (v40 >> 62)
  {
    v54 = __CocoaSet.count.getter();

    if (!v54)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v41)
    {
LABEL_58:
      if (((*((*v4 & *v3) + 0xC58))(v42) & 1) == 0)
      {
        specialized DOCItemCollectionViewController.updateOverlay(animated:)();
      }
    }
  }

LABEL_60:
  if (![v3 isViewLoaded])
  {

    return;
  }

  v43 = DOCItemCollectionViewController.visibleSectionHeaders.getter();
  v44 = v43;
  if (v43 >> 62)
  {
    v45 = __CocoaSet.count.getter();
    if (!v45)
    {
      goto LABEL_73;
    }

LABEL_63:
    if (v45 >= 1)
    {
      v46 = 0;
      do
      {
        if ((v44 & 0xC000000000000001) != 0)
        {
          v47 = MEMORY[0x24C1FC540](v46, v44);
        }

        else
        {
          v47 = *(v44 + 8 * v46 + 32);
        }

        v48 = v47;
        ++v46;
        v49 = *(v14 + 1);
        v50 = *(v14 + 2);
        v51 = *v4 & *v47;
        v52 = v14[24];
        v81 = *v14;
        v82 = v49;
        v83 = v50;
        v84 = v52;
        v53 = *(v51 + 816);
        outlined copy of DOCItemSortDescriptor?(v81, v49);
        v53(&v81);
      }

      while (v45 != v46);
      goto LABEL_73;
    }

    __break(1u);
LABEL_90:
    __break(1u);
    return;
  }

  v45 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v45)
  {
    goto LABEL_63;
  }

LABEL_73:

  v55 = DOCItemCollectionViewController.headerRowView()();
  if (v55)
  {
    v56 = v55;
    v57 = *(v14 + 1);
    v58 = *(v14 + 2);
    v59 = *v4 & *v55;
    v60 = v14[24];
    v81 = *v14;
    v82 = v57;
    v83 = v58;
    v84 = v60;
    v61 = *(v59 + 792);
    outlined copy of DOCItemSortDescriptor?(v81, v57);
    v61(&v81);
  }

  DOCItemCollectionViewController.preparedCells.getter();
  v63 = v62;
  if (v62 >> 62)
  {
    v64 = __CocoaSet.count.getter();
    if (!v64)
    {
      goto LABEL_87;
    }

LABEL_77:
    if (v64 >= 1)
    {
      for (i = 0; i != v64; ++i)
      {
        if ((v63 & 0xC000000000000001) != 0)
        {
          v72 = MEMORY[0x24C1FC540](i, v63);
        }

        else
        {
          v72 = *(v63 + 8 * i + 32);
        }

        v73 = v72;
        v74 = (*((*v4 & *v72) + 0x208))();
        if (v74)
        {
          v66 = v74;
          v67 = *(v14 + 1);
          v68 = *(v14 + 2);
          v69 = *v4 & *v74;
          v70 = v14[24];
          v81 = *v14;
          v82 = v67;
          v83 = v68;
          v84 = v70;
          v71 = *(v69 + 1008);
          outlined copy of DOCItemSortDescriptor?(v81, v67);
          v71(&v81);
        }

        else
        {
        }
      }

      goto LABEL_87;
    }

    goto LABEL_90;
  }

  v64 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v64)
  {
    goto LABEL_77;
  }

LABEL_87:
}

uint64_t DOCItemCollectionViewController.sortingDescriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_sortingDescriptor;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = *(v3 + 24);
  return outlined copy of DOCItemSortDescriptor?(v4, v5);
}

uint64_t DOCItemCollectionViewController.sortingDescriptor.setter(__int128 *a1)
{
  v9 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 24);
  v4 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_sortingDescriptor;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  *v4 = v9;
  *(v4 + 16) = v2;
  LOBYTE(v2) = *(v4 + 24);
  *(v4 + 24) = v3;
  outlined copy of DOCItemSortDescriptor?(v5, v6);
  outlined consume of DOCItemSortDescriptor?(v5, v6);
  v10[0] = v5;
  v10[1] = v6;
  v10[2] = v7;
  v11 = v2;
  DOCItemCollectionViewController.sortingDescriptor.didset(v10);
  return outlined consume of DOCItemSortDescriptor?(v5, v6);
}

void (*DOCItemCollectionViewController.sortingDescriptor.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_sortingDescriptor;
  *(v3 + 56) = v1;
  *(v3 + 64) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  *v4 = *v6;
  *(v4 + 8) = v8;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  outlined copy of DOCItemSortDescriptor?(v7, v8);
  return DOCItemCollectionViewController.sortingDescriptor.modify;
}

void DOCItemCollectionViewController.sortingDescriptor.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[7] + (*a1)[8];
  v5 = **a1;
  v6 = v3[1];
  v7 = v3[2];
  v8 = *(v3 + 24);
  v10 = *v4;
  v9 = *(v4 + 8);
  v11 = *(v4 + 16);
  v12 = *(v4 + 24);
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;
  *(v4 + 24) = v8;
  if (a2)
  {
    outlined copy of DOCItemSortDescriptor?(v5, v6);
    outlined copy of DOCItemSortDescriptor?(v10, v9);
    outlined consume of DOCItemSortDescriptor?(v10, v9);
    v15 = v10;
    v16 = v9;
    v17 = v11;
    v18 = v12;
    DOCItemCollectionViewController.sortingDescriptor.didset(&v15);
    outlined consume of DOCItemSortDescriptor?(v10, v9);
    v13 = *v3;
    v14 = v3[1];
  }

  else
  {
    outlined copy of DOCItemSortDescriptor?(v10, v9);
    outlined consume of DOCItemSortDescriptor?(v10, v9);
    v15 = v10;
    v16 = v9;
    v17 = v11;
    v18 = v12;
    DOCItemCollectionViewController.sortingDescriptor.didset(&v15);
    v13 = v10;
    v14 = v9;
  }

  outlined consume of DOCItemSortDescriptor?(v13, v14);

  free(v3);
}

uint64_t DOCItemCollectionViewController.performingBatchUpdates.didset()
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.UI);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 134218242;
    v7 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_performingBatchUpdates;
    swift_beginAccess();
    *(v5 + 4) = *(v2 + v7);

    *(v5 + 12) = 2112;
    *(v5 + 14) = v2;
    *v6 = v2;
    v8 = v2;
    _os_log_impl(&dword_2493AC000, v3, v4, "performingBatchUpdates = %ld in %@", v5, 0x16u);
    outlined destroy of CharacterSet?(v6, &_sSo8NSObjectCSgMd);
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  else
  {
  }

  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_performingBatchUpdates;
  result = swift_beginAccess();
  if (!*(v2 + v9) && *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsCollectionReload) == 1)
  {
    return (*((*MEMORY[0x277D85000] & *v2) + 0x1820))(result);
  }

  return result;
}

uint64_t DOCItemCollectionViewController.performingBatchUpdates.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_performingBatchUpdates;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemCollectionViewController.performingBatchUpdates.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_performingBatchUpdates;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return DOCItemCollectionViewController.performingBatchUpdates.didset();
}

uint64_t (*DOCItemCollectionViewController.performingBatchUpdates.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCItemCollectionViewController.performingBatchUpdates.modify;
}

uint64_t DOCItemCollectionViewController.performingBatchUpdates.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return DOCItemCollectionViewController.performingBatchUpdates.didset();
  }

  return result;
}

uint64_t DOCItemCollectionViewController.fallbackDisplayMode(for:)(uint64_t a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0xA68))();
  v5 = (*((*v3 & *v4) + 0x228))();

  v6 = *(v5 + 16);
  v7 = 32;
  while (v6)
  {
    v8 = *(v5 + v7);
    v7 += 8;
    --v6;
    if (v8 == a1)
    {
      goto LABEL_6;
    }
  }

  a1 = 2;
LABEL_6:

  return a1;
}

Swift::Void __swiftcall DOCItemCollectionViewController.updateShowsCreateButton(reload:)(Swift::Bool_optional reload)
{
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0xC70))();
  if (v4)
  {
    v5 = v4;
    v6 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__showsCreateButton;
    v7 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__showsCreateButton);
    v8 = [v1 effectiveAppearance];
    if (v8 && (v9 = v8, v10 = [v8 showsCreateButton], v9, v10) && (objc_msgSend(*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration), sel_isPickerUI) & 1) == 0 && (v11 = *MEMORY[0x277CC6028], __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd), inited = swift_initStackObject(), *(inited + 16) = xmmword_249BA0290, *(inited + 32) = v5, swift_unknownObjectRetain(), LOBYTE(v11) = specialized static DOCActionManager.canPerform(_:on:)(v11, inited), swift_setDeallocating(), swift_arrayDestroy(), (v11 & 1) != 0) && (objc_msgSend(v5, sel_isTrashed) & 1) == 0 && (*((*v3 & *v1) + 0xBD8))() != 3)
    {
      v13 = (*((*v3 & *v1) + 0xF10))() ^ 1;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13 & 1;
    *(v1 + v6) = v14;
    if (reload.value == 2)
    {
      if (v7 == v14)
      {
        goto LABEL_14;
      }
    }

    else if (!reload.value)
    {
LABEL_14:
      swift_unknownObjectRelease();
      return;
    }

    (*((*v3 & *v1) + 0x1820))();
    goto LABEL_14;
  }
}

void *DOCItemCollectionViewController.showsCreateButton.getter()
{
  result = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (result)
  {
    if ([result isGathering])
    {
      return 0;
    }

    else
    {
      return *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__showsCreateButton);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t key path setter for DOCItemCollectionViewController.collectionViewLayoutTraits : DOCItemCollectionViewController(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_collectionViewLayoutTraits;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t DOCItemCollectionViewController.gatheringThumbnails.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_gatheringThumbnails;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemCollectionViewController.gatheringThumbnails.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_gatheringThumbnails;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *DOCItemCollectionViewController.lastPreviewedFPItem.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_lastPreviewedFPItem;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemCollectionViewController.lastPreviewedFPItem.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_lastPreviewedFPItem;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t DOCItemCollectionViewController.currentDragSession.getter(uint64_t *a1, uint64_t (*a2)(void))
{
  v4 = *a1;
  swift_beginAccess();
  return a2(*(v2 + v4));
}

uint64_t DOCItemCollectionViewController.currentDropSession.setter(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t DOCItemCollectionViewController.selectedChildNode.getter()
{
  v1 = MEMORY[0x277D85000];
  if (*((*MEMORY[0x277D85000] & *v0) + 0xBD8))() != 3 || ([v0 isEditing])
  {
    return 0;
  }

  v3 = *((*v1 & *v0) + 0x1250);

  return v3();
}

uint64_t DOCItemCollectionViewController.selectedChildNode.setter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v8, v9);
  v12 = &v31 - v11;
  v13 = MEMORY[0x277D85000];
  v14 = *((*MEMORY[0x277D85000] & *v1) + 0x1250);
  v15 = v14(v10);
  v16 = v15;
  if (a1)
  {
    if (v15)
    {
      swift_getObjectType();
      v17 = DOCNode.isEqualTo(node:)();
      swift_unknownObjectRelease();
      if (v17)
      {
LABEL_10:

        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    swift_unknownObjectRelease();
    if (!v16)
    {
      goto LABEL_10;
    }
  }

  v18 = (v14)();
  v19 = *((*v13 & *v2) + 0x1258);
  v20 = swift_unknownObjectRetain();
  v21 = v19(v20);
  result = (*((*v13 & *v2) + 0xBD8))(v21);
  if (result != 3)
  {
LABEL_9:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  if (a1)
  {
    (*((*v13 & *v2) + 0x16D8))(a1, 0, 1);
    goto LABEL_9;
  }

  if (!v18)
  {
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_249BA0290;
  *(v23 + 32) = v18;
  v24 = *((*v13 & *v2) + 0xDB0);
  swift_unknownObjectRetain_n();
  v25 = v24(v23);

  if (*(v25 + 16))
  {
    v26 = v32;
    (*(v32 + 16))(v7, v25 + ((*(v26 + 80) + 32) & ~*(v26 + 80)), v4);

    v27 = (*(v26 + 32))(v12, v7, v4);
    v28 = (*((*v13 & *v2) + 0x1018))(v27);
    if (v28)
    {
      v29 = v28;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v29 deselectItemAtIndexPath:isa animated:0];
      swift_unknownObjectRelease_n();

      return (*(v26 + 8))(v12, v4);
    }

    (*(v26 + 8))(v12, v4);
  }

  else
  {
  }

  return swift_unknownObjectRelease_n();
}

uint64_t (*DOCItemCollectionViewController.selectedChildNode.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0xBD8))() == 3 && ([v1 isEditing] & 1) == 0)
  {
    v4 = (*((*v3 & *v1) + 0x1250))();
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return DOCItemCollectionViewController.selectedChildNode.modify;
}

uint64_t DOCItemCollectionViewController.selectedChildNode.modify(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return DOCItemCollectionViewController.selectedChildNode.setter(*a1);
  }

  v2 = swift_unknownObjectRetain();
  DOCItemCollectionViewController.selectedChildNode.setter(v2);

  return swift_unknownObjectRelease();
}

uint64_t DOCItemCollectionViewController.selectedIndexPathWasAlreadySelected.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_selectedIndexPathWasAlreadySelected;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemCollectionViewController.selectedIndexPathWasAlreadySelected.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_selectedIndexPathWasAlreadySelected;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

BOOL DOCItemCollectionViewController.configurationShouldAllowCollectionViewMultipleSelection.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  if ([v1 isPopoverOrWidget])
  {
    return 0;
  }

  v2 = [v1 isPickerUI];
  v3 = MEMORY[0x277D85000];
  if ((v2 & 1) != 0 && ((*((*MEMORY[0x277D85000] & *v0) + 0x130))() & 1) == 0)
  {
    return 0;
  }

  v4 = (*((*v3 & *v0) + 0xA68))();
  v5 = [v4 identifier];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      return 1;
    }
  }

  v12 = [v0 traitCollection];
  v13 = [v12 horizontalSizeClass];

  return v13 != 1;
}

void DOCItemCollectionViewController.applyCommonConfiguration()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0xA68);
  v4 = v3();
  (*((*v2 & *v4) + 0x1B8))(v74);

  (*((*v2 & *v1) + 0xA50))((v74 + 1));
  outlined destroy of DOCItemCollectionConfiguration(v74 + 1);
  if (v75 != 10)
  {
    v24 = 0;
    LOBYTE(v74[0]) = v75;
    goto LABEL_18;
  }

  v5 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  if (![v5 showCollectionControls] || (v6 = objc_msgSend(objc_opt_self(), sel_sharedStore), v7 = objc_msgSend(v6, sel_interfaceStateForConfiguration_, v5), v6, !v7))
  {
LABEL_17:
    v24 = 0;
    goto LABEL_18;
  }

  v8 = [v7 sortingMode];
  if (!v8)
  {
LABEL_16:

    goto LABEL_17;
  }

  v9 = v8;
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v10 + 16))
  {

LABEL_15:

    goto LABEL_16;
  }

  v13 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
    goto LABEL_15;
  }

  outlined init with copy of Any(*(v10 + 56) + 32 * v13, &v68);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  v17 = v71;
  v16 = v72;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v10 + 16))
  {

    goto LABEL_15;
  }

  v67._countAndFlagsBits = v17;
  v67._object = v16;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
  v22 = v21;

  if ((v22 & 1) == 0)
  {

    goto LABEL_15;
  }

  outlined init with copy of Any(*(v10 + 56) + 32 * v20, &v68);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  v23 = v71;
  DOCItemSortMode.init(rawValue:)(v67);

  if (v68 == 10)
  {
    goto LABEL_17;
  }

  LOBYTE(v74[0]) = v68;
  v24 = v23;
LABEL_18:
  LOBYTE(v71) = v74[0];
  DOCItemSortDescriptor.init(type:isReversed:)(&v71, v24, &v68);
  v71 = v68;
  v73 = v70;
  v25 = *v2 & *v1;
  v72 = v69;
  v26 = (*(v25 + 4456))(&v71);
  v27 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (!v27)
  {
    __break(1u);
    return;
  }

  v28 = (*((*v2 & *v27) + 0x1A8))(v26);
  if (v28)
  {
    v29 = v28;
    objc_opt_self();
    v30 = swift_dynamicCastObjCClass();
    if (v30)
    {
      v68 = v30;
      swift_getKeyPath();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v31 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

      (*((*v2 & *v1) + 0xDF0))(v31);
    }
  }

  v32 = v3();
  v68 = v32;
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v34 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_sourceEjectableObservation);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_sourceEjectableObservation) = v33;

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCUserInterfaceStateStore);
  v35 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  v36 = v3();
  v37 = [v36 identifier];

  v38 = v3();
  (*((*v2 & *v38) + 0x220))(&v71);

  static DOCUserInterfaceStateStore.retrieveDefaultGroupingBehavior(configuration:sourceIdentifier:fallback:)(v35, v37, &v71, &v68);
  v39 = v68;
  if (v68 == 10)
  {
    goto LABEL_89;
  }

  v40 = v3();
  v41 = (*((*v2 & *v40) + 0x218))();

  v42 = *(v41 + 16);
  v43 = (v41 + 32);
  while (1)
  {
    if (!v42)
    {

      v60 = (v3)(v59);
      v2 = MEMORY[0x277D85000];
      (*((*MEMORY[0x277D85000] & *v60) + 0x220))(&v68);

      v61 = (*((*v2 & *v1) + 0xCF0))(&v68);
      goto LABEL_90;
    }

    v45 = *v43;
    if (v45 > 4)
    {
      if (*v43 <= 6u)
      {
        if (v45 == 5)
        {
          v49 = 1684957547;
        }

        else
        {
          v49 = 0x7942646572616873;
        }

        if (v45 == 5)
        {
          v50 = 0xE400000000000000;
        }

        else
        {
          v50 = 0xE800000000000000;
        }

        if (v39 <= 4)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v45 == 7)
        {
          v49 = 0x6E6F697461657263;
          v54 = 1702125892;
        }

        else
        {
          if (v45 == 8)
          {
            v49 = 0x6564644165746164;
            v50 = 0xE900000000000064;
            if (v39 <= 4)
            {
              goto LABEL_43;
            }

            goto LABEL_68;
          }

          v49 = 0x745364756F6C6369;
          v54 = 1937077345;
        }

        v50 = v54 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v39 <= 4)
        {
          goto LABEL_43;
        }
      }
    }

    else
    {
      v46 = 1936154996;
      if (v45 != 3)
      {
        v46 = 1702521203;
      }

      if (v45 == 2)
      {
        v46 = 1701667182;
      }

      v47 = 0xD000000000000010;
      if (*v43)
      {
        v47 = 0x646573557473616CLL;
      }

      v48 = 0xEC00000065746144;
      if (!*v43)
      {
        v48 = 0x8000000249BC5DF0;
      }

      if (*v43 <= 1u)
      {
        v49 = v47;
      }

      else
      {
        v49 = v46;
      }

      if (*v43 <= 1u)
      {
        v50 = v48;
      }

      else
      {
        v50 = 0xE400000000000000;
      }

      if (v39 <= 4)
      {
LABEL_43:
        if (v39 <= 1)
        {
          v52 = 0x646573557473616CLL;
          v53 = 0xEC00000065746144;
          if (!v39)
          {
            v52 = 0xD000000000000010;
            v53 = 0x8000000249BC5DF0;
          }
        }

        else
        {
          v51 = 1936154996;
          if (v39 != 3)
          {
            v51 = 1702521203;
          }

          if (v39 == 2)
          {
            v52 = 1701667182;
          }

          else
          {
            v52 = v51;
          }

          v53 = 0xE400000000000000;
        }

        goto LABEL_84;
      }
    }

LABEL_68:
    v55 = 0x745364756F6C6369;
    if (v39 == 8)
    {
      v55 = 0x6564644165746164;
    }

    v56 = 0xEC00000073757461;
    if (v39 == 8)
    {
      v56 = 0xE900000000000064;
    }

    if (v39 == 7)
    {
      v55 = 0x6E6F697461657263;
      v56 = 0xEC00000065746144;
    }

    v57 = 0x7942646572616873;
    if (v39 == 5)
    {
      v57 = 1684957547;
    }

    v58 = 0xE800000000000000;
    if (v39 == 5)
    {
      v58 = 0xE400000000000000;
    }

    v52 = v39 <= 6 ? v57 : v55;
    v53 = v39 <= 6 ? v58 : v56;
LABEL_84:
    if (v49 == v52 && v50 == v53)
    {
      break;
    }

    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v43;
    --v42;
    if (v44)
    {
      goto LABEL_88;
    }
  }

LABEL_88:

  v2 = MEMORY[0x277D85000];
LABEL_89:
  LOBYTE(v68) = v39;
  v61 = (*((*v2 & *v1) + 0xCF0))(&v68);
LABEL_90:
  v62 = (*((*v2 & *v27) + 0x258))(v61);
  v63 = (*((*v2 & *v1) + 0xCC0))(v62);
  v64 = (*((*v2 & *v27) + 0x1A8))(v63);
  if (v64)
  {
    v65 = v64;
    objc_opt_self();
    v66 = swift_dynamicCastObjCClass();

    if (v66)
    {
      DOCItemCollectionViewController.updateItemCollectionFilteringPredicate()();
    }
  }
}

uint64_t closure #1 in DOCItemCollectionViewController.applyCommonConfiguration()(void **a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = v4;

  v6 = v4;
  DOCRunInMainThread(_:)();
}

void closure #1 in closure #1 in DOCItemCollectionViewController.applyCommonConfiguration()(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    DOCItemCollectionViewController.itemsOriginDidChange(_:)([a2 itemsOrigin]);
  }
}

void closure #2 in DOCItemCollectionViewController.applyCommonConfiguration()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      (*((*MEMORY[0x277D85000] & *v3) + 0x1D8))();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t DOCItemCollectionViewController.title.getter()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0xA78))();
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = [v2 displayName];
  swift_unknownObjectRelease();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if (v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6 == 0xE000000000000000;
  }

  if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

LABEL_8:
    v8 = (*((*v1 & *v0) + 0xA68))(v2);
    v9 = [v8 displayName];

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v4;
}

void sub_2496A6318()
{
}

Swift::Void __swiftcall DOCItemCollectionViewController.saveRestorableSettings(force:)(Swift::Bool force)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18RestorableSettings33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v135 = &v115 - v6;
  v7 = type metadata accessor for RestorableSettings(0);
  v134 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v132 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v115 - v12;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v115 - v16;
  v133 = type metadata accessor for ScrollPositionInfo(0);
  MEMORY[0x28223BE20](v133, v18);
  v20 = &v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLV10ItemOffsetVSgMd);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v136 = &v115 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v115 - v26;
  MEMORY[0x28223BE20](v28, v29);
  v31 = (&v115 - v30);
  v32 = type metadata accessor for ScrollPositionInfo.ItemOffset(0);
  v138 = *(v32 - 8);
  v139 = v32;
  MEMORY[0x28223BE20](v32, v33);
  v137 = &v115 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37.n128_f64[0] = MEMORY[0x28223BE20](v35, v36);
  v39 = &v115 - v38;
  if ((*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_automaticSaveRestorableSettingsAllowed) & 1) == 0 && !force)
  {
    return;
  }

  v40 = MEMORY[0x277D85000];
  v41 = (*((*MEMORY[0x277D85000] & *v1) + 0x1018))(v37);
  if (!v41)
  {
    return;
  }

  v131 = v41;
  v125 = (*((*v40 & *v1) + 0xBF0))();
  v130 = v42;
  if (v42 == 0xFF)
  {
    v44 = v131;

    return;
  }

  DOCItemCollectionViewController.restorableOffsetForVerticallyPositioningVisibleCells()(v31);
  v43 = *(v138 + 48);
  v124 = v138 + 48;
  v123 = v43;
  if (v43(v31, 1, v139) == 1)
  {

    outlined consume of DOCItemCollectionViewController.RestorableSettingsCacheKey?(v125, v130);
    outlined destroy of CharacterSet?(v31, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLV10ItemOffsetVSgMd);
    return;
  }

  v117 = v13;
  outlined init with take of ScrollPositionInfo.ItemOffset(v31, v39, type metadata accessor for ScrollPositionInfo.ItemOffset);
  [v131 contentOffset];
  v46 = v45;
  (*((*v40 & *v131) + 0x138))();
  v48 = v47;
  v49 = DOCItemCollectionViewController.visibleCellsBySection.getter();
  v118 = v17;
  v121 = v39;
  if (!v49)
  {
    v55 = MEMORY[0x277D84F98];
LABEL_41:
    outlined init with copy of ScrollPositionInfo.ItemOffset(v39, v20, type metadata accessor for ScrollPositionInfo.ItemOffset);
    v90 = v133;
    v20[*(v133 + 20)] = v46 != v48;
    *&v20[*(v90 + 24)] = v55;
    v139 = v55;

    v91 = specialized static RestorableSearchInfo.restorableInfo(for:)(v2);
    v93 = v92;
    v95 = v94;
    v97 = v96;
    outlined init with copy of ScrollPositionInfo.ItemOffset(v20, v17, type metadata accessor for ScrollPositionInfo);
    v98 = &v17[*(v7 + 20)];
    *v98 = v91;
    v98[1] = v93;
    v98[2] = v95;
    v98[3] = v97;
    LOBYTE(v27) = v130;
    if (one-time initialization token for restorableSettingsCache == -1)
    {
LABEL_42:
      v99 = v135;
      outlined init with copy of ScrollPositionInfo.ItemOffset(v17, v135, type metadata accessor for RestorableSettings);
      (*(v134 + 56))(v99, 0, 1, v7);
      swift_beginAccess();
      v100 = v125;
      outlined copy of DOCItemCollectionViewController.RestorableSettingsCacheKey?(v125, v27);
      specialized Dictionary.subscript.setter(v99, v100, v27 & 1);
      swift_endAccess();
      v101 = v117;
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v102 = type metadata accessor for Logger();
      __swift_project_value_buffer(v102, static Logger.UI);
      outlined init with copy of ScrollPositionInfo.ItemOffset(v17, v101, type metadata accessor for RestorableSettings);
      outlined copy of DOCItemCollectionViewController.RestorableSettingsCacheKey?(v100, v27);
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.debug.getter();
      outlined consume of DOCItemCollectionViewController.RestorableSettingsCacheKey?(v100, v27);
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v140[0] = v106;
        *v105 = 136315394;
        v107 = DOCItemCollectionViewController.RestorableSettingsCacheKey.description.getter(v100, v27 & 1);
        v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v108, v140);

        *(v105 + 4) = v109;
        *(v105 + 12) = 2080;
        outlined init with copy of ScrollPositionInfo.ItemOffset(v101, v132, type metadata accessor for RestorableSettings);
        v110 = String.init<A>(describing:)();
        v112 = v111;
        outlined destroy of RestorableSettings(v101, type metadata accessor for RestorableSettings);
        v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v112, v140);

        *(v105 + 14) = v113;
        _os_log_impl(&dword_2493AC000, v103, v104, "[Restorable Settings] Stored settings for %s; info: %s", v105, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v106, -1, -1);
        MEMORY[0x24C1FE850](v105, -1, -1);

        outlined consume of DOCItemCollectionViewController.RestorableSettingsCacheKey?(v100, v130);
        v114 = v118;
      }

      else
      {

        outlined consume of DOCItemCollectionViewController.RestorableSettingsCacheKey?(v100, v27);
        outlined destroy of RestorableSettings(v101, type metadata accessor for RestorableSettings);
        v114 = v17;
      }

      outlined destroy of RestorableSettings(v114, type metadata accessor for RestorableSettings);
      outlined destroy of RestorableSettings(v20, type metadata accessor for ScrollPositionInfo);
      outlined destroy of RestorableSettings(v121, type metadata accessor for ScrollPositionInfo.ItemOffset);

      return;
    }

LABEL_51:
    swift_once();
    goto LABEL_42;
  }

  v50 = v49 + 64;
  v51 = 1 << *(v49 + 32);
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  v53 = v52 & *(v49 + 64);
  v17 = ((v51 + 63) >> 6);
  v116 = (v138 + 56);
  v122 = v49;

  v54 = 0;
  v55 = MEMORY[0x277D84F98];
  v120 = v7;
  v119 = v20;
  if (v53)
  {
    goto LABEL_17;
  }

  do
  {
LABEL_18:
    v60 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (v60 >= v17)
    {

      v17 = v118;
      v39 = v121;
      goto LABEL_41;
    }

    v53 = *(v50 + 8 * v60);
    ++v54;
  }

  while (!v53);
  v59 = v55;
  v54 = v60;
  while (2)
  {
    v61 = __clz(__rbit64(v53));
    v53 &= v53 - 1;
    v62 = v61 | (v54 << 6);
    v63 = *(v122 + 56);
    v64 = *(v122 + 48) + 40 * v62;
    v65 = *(v64 + 32);
    v66 = *(v64 + 16);
    v141 = *v64;
    v142 = v66;
    v143 = v65;
    v129 = *(v64 + 8);
    v68 = *(v64 + 24);
    v67 = *(v64 + 32);
    v128 = v68;
    v127 = v67;
    v69 = *(v63 + 8 * v62);
    outlined init with copy of DOCCollectionSection(&v141, v140);
    outlined init with copy of DOCCollectionSection(&v141, v140);

    v126 = v69;
    DOCItemCollectionViewController.restorableItemOffset(forHorizontallyScrollableSection:visibleCells:)(v69, v27);
    if (v123(v27, 1, v139) == 1)
    {
      outlined destroy of CharacterSet?(v27, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLV10ItemOffsetVSgMd);
      v55 = v59;
      v70 = specialized __RawDictionaryStorage.find<A>(_:)(&v141);
      if (v71)
      {
        v72 = v70;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v140[0] = v55;
        v74 = v55;
        if (!isUniquelyReferenced_nonNull_native)
        {
          specialized _NativeDictionary.copy()();
          v74 = v140[0];
        }

        v55 = v74;

        v58 = v136;
        outlined init with take of ScrollPositionInfo.ItemOffset(*(v74 + 56) + *(v138 + 72) * v72, v136, type metadata accessor for ScrollPositionInfo.ItemOffset);
        specialized _NativeDictionary._delete(at:)(v72, v74);
        v57 = 0;
        v56 = v120;
        v20 = v119;
      }

      else
      {
        v56 = v7;
        v57 = 1;
        v58 = v136;
      }

      (*v116)(v58, v57, 1, v139);
      outlined destroy of DOCCollectionSection(&v141);
      outlined destroy of CharacterSet?(v58, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLV10ItemOffsetVSgMd);

      v7 = v56;
      if (!v53)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    outlined init with take of ScrollPositionInfo.ItemOffset(v27, v137, type metadata accessor for ScrollPositionInfo.ItemOffset);
    v75 = v59;
    v7 = swift_isUniquelyReferenced_nonNull_native();
    v140[0] = v59;
    v77 = specialized __RawDictionaryStorage.find<A>(_:)(&v141);
    v78 = *(v75 + 16);
    v79 = (v76 & 1) == 0;
    v80 = v78 + v79;
    if (__OFADD__(v78, v79))
    {
      goto LABEL_50;
    }

    v81 = v76;
    if (*(v75 + 24) >= v80)
    {
      if ((v7 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v80, v7);
      v82 = specialized __RawDictionaryStorage.find<A>(_:)(&v141);
      if ((v81 & 1) != (v83 & 1))
      {
        goto LABEL_53;
      }

      v77 = v82;
    }

    v7 = v120;
    v55 = v140[0];
    if (v81)
    {
      outlined assign with take of ScrollPositionInfo.ItemOffset(v137, *(v140[0] + 56) + *(v138 + 72) * v77);
      outlined destroy of DOCCollectionSection(&v141);
      goto LABEL_37;
    }

    *(v140[0] + 8 * (v77 >> 6) + 64) |= 1 << v77;
    v84 = v55[6] + 40 * v77;
    v85 = v141;
    v86 = v142;
    *(v84 + 32) = v143;
    *v84 = v85;
    *(v84 + 16) = v86;
    outlined init with take of ScrollPositionInfo.ItemOffset(v137, v55[7] + *(v138 + 72) * v77, type metadata accessor for ScrollPositionInfo.ItemOffset);
    v87 = v55[2];
    v88 = __OFADD__(v87, 1);
    v89 = v87 + 1;
    if (!v88)
    {
      v55[2] = v89;
LABEL_37:
      v20 = v119;

      if (!v53)
      {
        goto LABEL_18;
      }

LABEL_17:
      v59 = v55;
      continue;
    }

    break;
  }

  __break(1u);
LABEL_53:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

unint64_t DOCItemCollectionViewController.visibleCellsBySection.getter()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0xF10))();
  result = 0;
  if (v2)
  {
    v4 = (*((*v1 & *v0) + 0x1010))(0);
    v5 = [v4 visibleCells];

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = specialized _arrayConditionalCast<A, B>(_:)(v6);

    result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables20DOCCollectionSectionV_SayAC21DOCItemCollectionCellCGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v9 = result;
    if (v7)
    {
      v8 = v0;
      specialized Sequence.forEach(_:)(v7, v8, &v9);

      return v9;
    }
  }

  return result;
}

void closure #1 in DOCItemCollectionViewController.visibleCellsBySection.getter(void **a1, void *a2, void *a3)
{
  v5 = *a1;
  v6 = MEMORY[0x277D85000];
  v7 = (*((*MEMORY[0x277D85000] & **a1) + 0x208))();
  if (v7)
  {
    v8 = v7;
    v9 = (*((*v6 & *v7) + 0x3D0))();

    if (v9)
    {
      (*((*v6 & *a2) + 0x820))(v32);
      v10 = v33;
      if (v33)
      {
        v11 = v34;
        __swift_project_boxed_opaque_existential_1(v32, v33);
        (*(v11 + 80))(&v27, v9, v10, v11);
        v12 = v28;
        if (!v28)
        {
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_0(v32);
          return;
        }

        v26 = v27;
        v35[0] = v27;
        v35[1] = v28;
        v35[2] = v29;
        v35[3] = v30;
        v35[6] = v30;
        v35[4] = v31;
        __swift_destroy_boxed_opaque_existential_0(v32);
        v5;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32[0] = *a3;
        v14 = v32[0];
        *a3 = 0x8000000000000000;
        v16 = specialized __RawDictionaryStorage.find<A>(_:)(v35);
        v17 = *(v14 + 16);
        v18 = (v15 & 1) == 0;
        v19 = v17 + v18;
        if (__OFADD__(v17, v18))
        {
          __break(1u);
LABEL_18:
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_15:
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_unknownObjectRelease();
          outlined consume of DOCCollectionSection?(isUniquelyReferenced_nonNull_native, v12);
          return;
        }

        v20 = v15;
        if (*(v14 + 24) >= v19)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized _NativeDictionary.copy()();
            v14 = v32[0];
          }

LABEL_12:
          isUniquelyReferenced_nonNull_native = v26;
          *a3 = v14;

          v24 = *a3;
          if ((v20 & 1) == 0)
          {
            specialized _NativeDictionary._insert(at:key:value:)(v16, v35, MEMORY[0x277D84F90], v24);
          }

          v25 = (v24[7] + 8 * v16);
          MEMORY[0x24C1FB090](v23);
          if (*((*v25 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_15;
          }

          goto LABEL_18;
        }

        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, isUniquelyReferenced_nonNull_native);
        v14 = v32[0];
        v21 = specialized __RawDictionaryStorage.find<A>(_:)(v35);
        if ((v20 & 1) == (v22 & 1))
        {
          v16 = v21;
          goto LABEL_12;
        }
      }

      else
      {
        __break(1u);
      }

      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }
  }
}

uint64_t DOCItemCollectionViewController.restorableItemOffset(forHorizontallyScrollableSection:visibleCells:)@<X0>(int64_t a1@<X1>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v66 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v71 = (&v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12, v13);
  v15 = (&v66 - v14);
  MEMORY[0x28223BE20](v16, v17);
  v19 = (&v66 - v18);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v66 - v22;
  if (a1 >> 62)
  {
    v64 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v64 = a1;
    }

    v70 = v64;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell);

    v65 = _bridgeCocoaArray<A>(_:)();

    a1 = v65;
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell);
  }

  DOCItemCollectionViewController.topLeadingMostCell(in:)(a1, v7);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of CharacterSet?(v7, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tSgMd);
    v24 = type metadata accessor for ScrollPositionInfo.ItemOffset(0);
    v25 = *(*(v24 - 8) + 56);
    v26 = a2;
  }

  else
  {
    v70 = a2;
    outlined init with take of (key: URL, value: FPItem)(v7, v23, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd);
    outlined init with copy of DOCGridLayout.Spec?(v23, v19, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd);
    v27 = *v19;
    v69 = *(v8 + 48);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIScrollView);
    v28 = [v27 superview];
    if (v28)
    {
      v29 = v28;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      while (([v29 isKindOfClass_] & 1) == 0)
      {
        v31 = [v29 superview];

        v29 = v31;
        if (!v31)
        {
          goto LABEL_9;
        }
      }

      objc_opt_self();
      v33 = swift_dynamicCastObjCClassUnconditional();

      v34 = type metadata accessor for IndexPath();
      v35 = *(v34 - 8);
      v36 = *(v35 + 8);
      v37 = v19 + v69;
      v69 = v34;
      v67 = v35;
      v68 = v36;
      v36(v37);
      v38 = outlined init with copy of DOCGridLayout.Spec?(v23, v15, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd);
      v39 = *v15;
      v40 = *(v8 + 48);
      v41 = MEMORY[0x277D85000];
      v42 = (*((*MEMORY[0x277D85000] & **v15) + 0x208))(v38);

      if (v42)
      {
        v43 = (*((*v41 & *v42) + 0x3D0))();

        v68(v15 + v40, v69);
        if (v43)
        {
          [v33 contentOffset];
          v45 = v44;
          v46 = v71;
          outlined init with copy of DOCGridLayout.Spec?(v23, v71, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd);
          v47 = *v46;
          v48 = *(v8 + 48);
          [*v46 frame];
          v50 = v49;
          v52 = v51;
          v54 = v53;
          v56 = v55;

          v72.origin.x = v50;
          v72.origin.y = v52;
          v72.size.width = v54;
          v72.size.height = v56;
          MinX = CGRectGetMinX(v72);

          v58 = v69;
          v68(v46 + v48, v69);
          outlined init with take of (key: URL, value: FPItem)(v23, v46, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd);

          v59 = *(v8 + 48);
          v60 = v70;
          *v70 = v43;
          v61 = type metadata accessor for ScrollPositionInfo.ItemOffset(0);
          (*(v67 + 32))(&v60[*(v61 + 20)], v46 + v59, v58);
          *&v60[*(v61 + 24)] = v45 - MinX;
          return (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
        }

        outlined destroy of CharacterSet?(v23, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd);
      }

      else
      {

        outlined destroy of CharacterSet?(v23, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd);
        v68(v15 + v40, v69);
      }

      v63 = v70;
      v24 = type metadata accessor for ScrollPositionInfo.ItemOffset(0);
      v25 = *(*(v24 - 8) + 56);
      v26 = v63;
    }

    else
    {
LABEL_9:

      outlined destroy of CharacterSet?(v23, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd);
      v32 = type metadata accessor for IndexPath();
      (*(*(v32 - 8) + 8))(v19 + v69, v32);
      v24 = type metadata accessor for ScrollPositionInfo.ItemOffset(0);
      v25 = *(*(v24 - 8) + 56);
      v26 = v70;
    }
  }

  return v25(v26, 1, 1, v24);
}

uint64_t DOCItemCollectionViewController.restorableOffsetForVerticallyPositioningVisibleCells()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v88 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v83 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd);
  v87 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = (&v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v83 - v13;
  v17.n128_f64[0] = MEMORY[0x28223BE20](v15, v16);
  v19 = (&v83 - v18);
  v20 = MEMORY[0x277D85000];
  v21 = *((*MEMORY[0x277D85000] & *v1) + 0x1010);
  v22 = v21(v17);
  [v22 contentOffset];
  v24 = v23;

  v25 = (v21)();
  (*((*v20 & *v25) + 0x138))();
  v27 = v26;

  if (v24 != v27)
  {
    v84 = v10;
    v85 = v14;
    v86 = v19;
    v33 = (v21)();
    v34 = [v33 visibleCells];

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell);
    v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    DOCItemCollectionViewController.topLeadingMostCell(in:)(v35, v6);

    if ((*(v87 + 48))(v6, 1, v7) == 1)
    {
      outlined destroy of CharacterSet?(v6, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tSgMd);
      v36 = type metadata accessor for ScrollPositionInfo.ItemOffset(0);
      return (*(*(v36 - 8) + 56))(v88, 1, 1, v36);
    }

    v37 = v86;
    outlined init with take of (key: URL, value: FPItem)(v6, v86, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd);
    v38 = v85;
    v39 = outlined init with copy of DOCGridLayout.Spec?(v37, v85, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd);
    v40 = *v38;
    v41 = v7;
    v42 = *(v7 + 48);
    v43 = MEMORY[0x277D85000];
    v44 = (*((*MEMORY[0x277D85000] & **v38) + 0x208))(v39);

    if (v44)
    {
      v45 = (*((*v43 & *v44) + 0x3D0))();

      v46 = type metadata accessor for IndexPath();
      v47 = *(v46 - 8);
      (*(v47 + 8))(&v38[v42], v46);
      if (v45)
      {
        v87 = v45;
        v48 = DOCItemCollectionViewController.offsetToTop(ofCell:)(*v37);
        v49 = (v21)();
        v50 = v37;
        [v49 bounds];
        v52 = v51;
        v54 = v53;
        v56 = v55;
        v58 = v57;

        v90.origin.x = v52;
        v90.origin.y = v54;
        v90.size.width = v56;
        v90.size.height = v58;
        if (CGRectGetHeight(v90) >= fabs(v48))
        {
          v79 = v84;
          outlined init with copy of DOCGridLayout.Spec?(v50, v84, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd);

          v80 = *(v41 + 48);
          v81 = v88;
          *v88 = v87;
          v82 = type metadata accessor for ScrollPositionInfo.ItemOffset(0);
          (*(v47 + 32))(&v81[*(v82 + 20)], v79 + v80, v46);
          *&v81[*(v82 + 24)] = v48;
          (*(*(v82 - 8) + 56))(v81, 0, 1, v82);
          v76 = v50;
        }

        else
        {
          if (one-time initialization token for UI != -1)
          {
            swift_once();
          }

          v59 = type metadata accessor for Logger();
          __swift_project_value_buffer(v59, static Logger.UI);
          v60 = v2;
          v61 = Logger.logObject.getter();
          v62 = static os_log_type_t.error.getter();

          v63 = os_log_type_enabled(v61, v62);
          v64 = v88;
          if (v63)
          {
            v65 = swift_slowAlloc();
            *v65 = 134218240;
            *(v65 + 4) = v48;
            *(v65 + 12) = 2048;
            v66 = (v21)();
            [v66 bounds];
            v68 = v67;
            v70 = v69;
            v72 = v71;
            v74 = v73;

            v91.origin.x = v68;
            v91.origin.y = v70;
            v91.size.width = v72;
            v91.size.height = v74;
            *(v65 + 14) = CGRectGetHeight(v91);
            _os_log_impl(&dword_2493AC000, v61, v62, "[Restorable Settings] Not storing vertical offset since it's too big (%f %f", v65, 0x16u);
            MEMORY[0x24C1FE850](v65, -1, -1);
          }

          swift_unknownObjectRelease();
          v75 = type metadata accessor for ScrollPositionInfo.ItemOffset(0);
          (*(*(v75 - 8) + 56))(v64, 1, 1, v75);
          v76 = v86;
        }

        return outlined destroy of CharacterSet?(v76, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd);
      }
    }

    else
    {
      v77 = type metadata accessor for IndexPath();
      (*(*(v77 - 8) + 8))(&v38[v42], v77);
    }

    v78 = type metadata accessor for ScrollPositionInfo.ItemOffset(0);
    (*(*(v78 - 8) + 56))(v88, 1, 1, v78);
    v76 = v37;
    return outlined destroy of CharacterSet?(v76, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd);
  }

  v28 = type metadata accessor for ScrollPositionInfo.ItemOffset(0);
  v29 = *(*(v28 - 8) + 56);
  v30 = v28;
  v31 = v88;

  return v29(v31, 1, 1, v30);
}

double DOCItemCollectionViewController.offsetToTop(ofCell:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x1010);
  v6 = v5();
  [a1 bounds];
  [v6 convertRect:a1 fromCoordinateSpace:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v5();
  (*((*v4 & *v15) + 0x138))();
  v17 = v16;

  v18 = (*((*v4 & *v2) + 0x1018))();
  if (v18)
  {
    v19 = v18;
    v20 = DOCItemCollectionViewController.promptView.getter();
    if (v20)
    {
      v21 = v20;
      [v20 bounds];
      [v21 convertRect:v19 toCoordinateSpace:?];
      Height = CGRectGetHeight(v28);

      v19 = v21;
    }

    else
    {
      Height = 0.0;
    }
  }

  else
  {
    Height = 0.0;
  }

  v29.origin.x = v8;
  v29.origin.y = v10;
  v29.size.width = v12;
  v29.size.height = v14;
  MinY = CGRectGetMinY(v29);
  v24 = v5();
  [v24 contentOffset];
  v26 = v25;

  return MinY + v17 - Height - v26;
}

uint64_t DOCItemCollectionViewController.topLeadingMostCell(in:)@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v50 = type metadata accessor for IndexPath();
  v4 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v5);
  v49 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v48 = &v42 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd);
  v52 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v47 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v42 - v15;
  v17 = specialized _arrayConditionalCast<A, B>(_:)(a1);
  if (v17)
  {
    v18 = v17;
    v19 = v17 & 0xFFFFFFFFFFFFFF8;
    if (v17 >> 62)
    {
      goto LABEL_28;
    }

    for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
    {
      v51 = v10;
      v43 = a2;
      if (!i)
      {
        break;
      }

      v10 = 0;
      v54 = v18 & 0xC000000000000001;
      v21 = MEMORY[0x277D84F90];
      v45 = (v4 + 4);
      v46 = v19;
      v53 = i;
      v44 = v18;
      while (1)
      {
        if (v54)
        {
          v22 = MEMORY[0x24C1FC540](v10, v18);
        }

        else
        {
          if (v10 >= *(v19 + 16))
          {
            goto LABEL_27;
          }

          v22 = *(v18 + 8 * v10 + 32);
        }

        a2 = v22;
        v23 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v4 = v55;
        v24 = (*((*MEMORY[0x277D85000] & *v55) + 0x1010))();
        v25 = [v24 indexPathForCell_];

        if (v25)
        {
          v26 = v49;
          static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

          v27 = *v45;
          v28 = v48;
          v29 = v26;
          v30 = v50;
          (*v45)(v48, v29, v50);
          v31 = *(v51 + 48);
          v4 = v21;
          v32 = v16;
          v33 = v47;
          *v47 = a2;
          v27(&v33[v31], v28, v30);
          v34 = v33;
          v16 = v32;
          v21 = v4;
          outlined init with take of (key: URL, value: FPItem)(v34, v16, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
          }

          v36 = v21[2];
          v35 = v21[3];
          a2 = (v36 + 1);
          v37 = v52;
          v18 = v44;
          if (v36 >= v35 >> 1)
          {
            v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v35 > 1, v36 + 1, 1, v21);
            v37 = v52;
          }

          v19 = v46;
          v21[2] = a2;
          outlined init with take of (key: URL, value: FPItem)(v16, v21 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v36, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd);
        }

        else
        {
        }

        ++v10;
        if (v23 == v53)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      ;
    }

    v21 = MEMORY[0x277D84F90];
LABEL_23:

    v56 = v21;

    specialized MutableCollection<>.sort(by:)(&v56);

    v40 = v43;
    v41 = v51;
    if (v56[2])
    {
      outlined init with copy of DOCGridLayout.Spec?(v56 + ((*(v52 + 80) + 32) & ~*(v52 + 80)), v43, &_s26DocumentManagerExecutables21DOCItemCollectionCellC4cell_10Foundation9IndexPathV05indexJ0tMd);

      return (*(v52 + 56))(v40, 0, 1, v41);
    }

    else
    {

      return (*(v52 + 56))(v40, 1, 1, v41);
    }
  }

  else
  {
    v38 = *(v52 + 56);

    return v38(a2, 1, 1, v10);
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.applyRestorableSettingsIfNeeded()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v70 = *(v2 - 8);
  v71 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v68 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for DispatchQoS();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18RestorableSettings33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v61 - v10;
  v12 = type metadata accessor for RestorableSettings(0);
  v72 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v61 - v18;
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v61 - v22;
  v26 = MEMORY[0x28223BE20](v24, v25);
  v28 = &v61 - v27;
  v29 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_documentManager);
  if (!v29 || (v30 = [v29 activeDocumentCreationSession]) == 0 || (v31 = v30, v32 = (*((*MEMORY[0x277D85000] & *v30) + 0x110))(), v31, (v32 & 1) == 0))
  {
    if (([v1 doc_hasDisappearedOrIsDisappearing] & 1) == 0)
    {
      v33 = (*((*MEMORY[0x277D85000] & *v1) + 0xBF0))();
      v66 = v34;
      if (v34 != 0xFF)
      {
        v35 = v33;
        if (one-time initialization token for restorableSettingsCache != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v36 = static DOCItemCollectionViewController.restorableSettingsCache;
        if (*(static DOCItemCollectionViewController.restorableSettingsCache + 2) && (v37 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v66 & 1), (v38 & 1) != 0))
        {
          outlined init with copy of ScrollPositionInfo.ItemOffset(v36[7] + *(v72 + 72) * v37, v23, type metadata accessor for RestorableSettings);
          outlined init with take of ScrollPositionInfo.ItemOffset(v23, v28, type metadata accessor for RestorableSettings);
          swift_endAccess();
          if (one-time initialization token for UI != -1)
          {
            swift_once();
          }

          v39 = type metadata accessor for Logger();
          __swift_project_value_buffer(v39, static Logger.UI);
          outlined init with copy of ScrollPositionInfo.ItemOffset(v28, v19, type metadata accessor for RestorableSettings);
          v64 = v35;
          v40 = Logger.logObject.getter();
          v41 = static os_log_type_t.debug.getter();
          outlined consume of DOCItemCollectionViewController.RestorableSettingsCacheKey?(v35, v66);
          v63 = v41;
          v42 = os_log_type_enabled(v40, v41);
          v65 = v35;
          if (v42)
          {
            v43 = swift_slowAlloc();
            v61 = v43;
            v62 = swift_slowAlloc();
            aBlock[0] = v62;
            *v43 = 136315394;
            v44 = DOCItemCollectionViewController.RestorableSettingsCacheKey.description.getter(v35, v66 & 1);
            v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, aBlock);

            v47 = v61;
            *(v61 + 1) = v46;
            *(v47 + 6) = 2080;
            outlined init with copy of ScrollPositionInfo.ItemOffset(v19, v15, type metadata accessor for RestorableSettings);
            v48 = String.init<A>(describing:)();
            v50 = v49;
            outlined destroy of RestorableSettings(v19, type metadata accessor for RestorableSettings);
            v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, aBlock);

            *(v47 + 14) = v51;
            _os_log_impl(&dword_2493AC000, v40, v63, "[Restorable Settings] Restoring settings for key %s; info: %s", v47, 0x16u);
            v52 = v62;
            swift_arrayDestroy();
            MEMORY[0x24C1FE850](v52, -1, -1);
            MEMORY[0x24C1FE850](v47, -1, -1);
          }

          else
          {

            outlined destroy of RestorableSettings(v19, type metadata accessor for RestorableSettings);
          }

          (*(v72 + 56))(v11, 1, 1, v12);
          swift_beginAccess();
          v53 = v64;
          v54 = v66;
          specialized Dictionary.subscript.setter(v11, v65, v66 & 1);
          swift_endAccess();
          DOCItemCollectionViewController.scroll(using:shouldEnqueue:shouldClear:)(v28, 1, 1);
          DOCItemCollectionViewController.restoreSearch(_:)(*&v28[*(v12 + 20)], *&v28[*(v12 + 20) + 8], *&v28[*(v12 + 20) + 16], *&v28[*(v12 + 20) + 24]);
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
          v55 = static OS_dispatch_queue.main.getter();
          v56 = swift_allocObject();
          *(v56 + 16) = v1;
          aBlock[4] = partial apply for closure #1 in DOCItemCollectionViewController.applyRestorableSettingsIfNeeded();
          aBlock[5] = v56;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          aBlock[3] = &block_descriptor_104;
          v57 = _Block_copy(aBlock);
          v58 = v1;

          static DispatchQoS.unspecified.getter();
          aBlock[0] = MEMORY[0x277D84F90];
          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
          lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
          v59 = v68;
          v60 = v71;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          MEMORY[0x24C1FB9A0](0, v7, v59, v57);
          _Block_release(v57);

          outlined consume of DOCItemCollectionViewController.RestorableSettingsCacheKey?(v65, v54);
          (*(v70 + 8))(v59, v60);
          (*(v67 + 8))(v7, v69);
          outlined destroy of RestorableSettings(v28, type metadata accessor for RestorableSettings);
        }

        else
        {
          swift_endAccess();
          outlined consume of DOCItemCollectionViewController.RestorableSettingsCacheKey?(v35, v66);
        }
      }
    }
  }
}

void closure #1 in DOCItemCollectionViewController.applyRestorableSettingsIfNeeded()(void *a1)
{
  v2 = [a1 traitCollection];
  (*((*MEMORY[0x277D85000] & *a1) + 0x13F8))();
}

void DOCItemCollectionViewController.restoreSearch(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return;
  }

  v7 = MEMORY[0x277D85000];
  v8 = *((*MEMORY[0x277D85000] & *v4) + 0xBB8);

  v9 = swift_unknownObjectRetain();
  v10 = v8(v9);
  if (!v10)
  {
    swift_unknownObjectRelease();
LABEL_21:

    return;
  }

  v35 = v10;
  v11 = DOCItemCollectionViewController.searchControllerScopes.getter();
  v12 = v11[2];
  if (v12)
  {
    v33 = a4;
    v36 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v13 = v36;
    v14 = v11 + 5;
    do
    {
      v15 = *v14;
      ObjectType = swift_getObjectType();
      v17 = *(v15 + 8);
      swift_unknownObjectRetain();
      v18 = v17(ObjectType, v15);
      v20 = v19;
      swift_unknownObjectRelease();
      v22 = *(v36 + 16);
      v21 = *(v36 + 24);
      if (v22 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
      }

      *(v36 + 16) = v22 + 1;
      v23 = v36 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v20;
      v14 += 2;
      --v12;
    }

    while (v12);

    a4 = v33;
    v7 = MEMORY[0x277D85000];
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  v24 = swift_getObjectType();
  v25 = (*(a4 + 8))(v24, a4);
  v27 = v26;
  v28 = *(v13 + 16);
  if (!v28)
  {
LABEL_20:
    swift_unknownObjectRelease();

    goto LABEL_21;
  }

  v29 = v25;
  v30 = 0;
  v31 = (v13 + 40);
  while (1)
  {
    v32 = *(v31 - 1) == v29 && *v31 == v27;
    if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    ++v30;
    v31 += 2;
    if (v28 == v30)
    {
      goto LABEL_20;
    }
  }

  (*((*v7 & *v35) + 0x2E0))(v30);
  (*((*v7 & *v35) + 0x370))(a1, a2);
  swift_unknownObjectRelease();
}

void *DOCItemCollectionViewController.cellsInsideSafeArea()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x1018))();
  v2 = MEMORY[0x277D84F90];
  v28 = v1;
  if (v1)
  {
    v3 = [v1 visibleCells];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = v2;
    if (v4 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v6 = 0;
      v7 = &selRef_setCancelsTouchesInView_;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x24C1FC540](v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v8 = *(v4 + 8 * v6 + 32);
        }

        v9 = v8;
        v10 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v2 = [v28 safeAreaLayoutGuide];
        [v2 v7[209]];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;

        v30.origin.x = v12;
        v30.origin.y = v14;
        v30.size.width = v16;
        v30.size.height = v18;
        v31 = CGRectIntegral(v30);
        x = v31.origin.x;
        y = v31.origin.y;
        width = v31.size.width;
        height = v31.size.height;
        [v9 frame];
        v33.origin.x = v23;
        v33.origin.y = v24;
        v33.size.width = v25;
        v33.size.height = v26;
        v32.origin.x = x;
        v32.origin.y = y;
        v32.size.width = width;
        v32.size.height = height;
        if (CGRectContainsRect(v32, v33))
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v7 = &selRef_setCancelsTouchesInView_;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v2 = &v29;
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v6;
        if (v10 == i)
        {
          v2 = v29;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_15:
  }

  return v2;
}

void DOCItemCollectionViewController.__ivar_destroyer()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_familyFetcher);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_blockToRunWhenMenuInteractionFinishedDismissing));

  outlined destroy of weak DOCPresentationPreheatable?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemHierarchyEventListener);

  outlined destroy of CharacterSet?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_lastDropIndexPath, &_s10Foundation9IndexPathVSgMd);

  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionConfiguration);
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionConfiguration + 24);
  v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionConfiguration + 56);
  v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionConfiguration + 72);

  swift_unknownObjectRelease();

  outlined destroy of weak DOCPresentationPreheatable?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_interactionDelegate);

  outlined consume of (progress: NSProgress, node: DOCNode)?(*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentLoadingProgress));
  swift_unknownObjectRelease();

  outlined destroy of CharacterSet?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentFocusEngineIndexPath, &_s10Foundation9IndexPathVSgMd);

  outlined destroy of CharacterSet?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_indexPathForRememberedFocusNode, &_s10Foundation9IndexPathVSgMd);

  outlined destroy of CharacterSet?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_indexPathOfSwipedItem, &_s10Foundation9IndexPathVSgMd);
  outlined destroy of CharacterSet?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___listLayoutConfiguration, &_s5UIKit35UICollectionLayoutListConfigurationVSgMd);

  outlined consume of DOCProgressCollectionIndicatorView??(*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___promptView));
  MEMORY[0x24C1FE970](v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_presentedCollaborationViewController);

  MEMORY[0x24C1FE970](v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_moreActionsAlert);
  outlined consume of DOCItemSortDescriptor?(*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_sortingDescriptor), *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_sortingDescriptor + 8));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  outlined destroy of CharacterSet?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodeScrollPositionInfo, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd);

  v9 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_activeDragStrongReferenceToSelf);
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_activeDragStrongReferenceToSelf) = 0;
  v5 = v9;
  v6 = v9;
  if (v9)
  {
    while (1)
    {
      v10 = v6;

      if (!swift_isUniquelyReferenced())
      {
        break;
      }

      v7 = *&v10[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_activeDragStrongReferenceToSelf];
      v8 = v7;

      v6 = v7;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    v6 = v10;
  }

LABEL_6:
}

uint64_t DOCItemCollectionViewController.__deallocating_deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_defaultSaveLocationDidChangeNotificationToken;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    notify_cancel(v3);
    *(v1 + v2) = 0;
  }

  v4 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x12B0))(0);
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection;
  v7 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v7)
  {
    result = (*((*v4 & *v7) + 0x1F0))(result);
    if ((result & 1) == 0)
    {
LABEL_7:
      DOCItemCollectionViewController.cancelPendingTasks()();
      v9.receiver = v1;
      v9.super_class = type metadata accessor for DOCItemCollectionViewController(0);
      return objc_msgSendSuper2(&v9, sel_dealloc);
    }

    v8 = *(v1 + v6);
    if (v8)
    {
      (*((*v4 & *v8) + 0x1C8))();
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall DOCItemCollectionViewController.stopObservingNodeCollection()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v1)
  {
    v2 = MEMORY[0x277D85000];
    if ((*((*MEMORY[0x277D85000] & *v1) + 0x1F0))())
    {
      (*((*v2 & *v1) + 0x1C8))();
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.selectAllItems()()
{
  v1 = v0;
  v32 = type metadata accessor for IndexPath();
  v2 = *(v32 - 8);
  v4.n128_f64[0] = MEMORY[0x28223BE20](v32, v3);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0x1310))(v4) & 1) == 0)
  {
    v8 = *((*v7 & *v0) + 0x1318);
    v9 = (*v7 & *v0) + 4888;
    v10 = v8(1);
    v11 = *((*v7 & *v0) + 0x1010);
    v33 = (*v7 & *v0) + 4112;
    v12 = v11;
    v13 = (v11)(v10);
    v14 = [v13 numberOfSections];

    if ((v14 & 0x8000000000000000) != 0)
    {
LABEL_22:
      __break(1u);
      return;
    }

    v29[1] = v9;
    v30 = v8;
    if (v14)
    {
      v15 = 0;
      v16 = (v2 + 8);
      v31 = v14;
      while (1)
      {
        v17 = v12();
        v18 = [v17 numberOfItemsInSection_];

        if ((v18 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v18)
        {
          for (i = 0; v18 != i; ++i)
          {
            v22 = MEMORY[0x24C1F8100](i, v15);
            v23 = (v12)(v22);
            isa = IndexPath._bridgeToObjectiveC()().super.isa;
            v25 = [v1 collectionView:v23 shouldSelectItemAtIndexPath:isa];

            if (v25)
            {
              v26 = MEMORY[0x277D85000];
              if ((*((*MEMORY[0x277D85000] & *v1) + 0xD88))(v6, 0))
              {
                if (((*((*v26 & *v1) + 0x1790))() & 1) == 0)
                {
                  (*v16)(v6, v32);
                  swift_unknownObjectRelease();
                  continue;
                }

                v20 = v12();
                v21 = IndexPath._bridgeToObjectiveC()().super.isa;
                [v20 selectItemAtIndexPath:v21 animated:0 scrollPosition:0];
                swift_unknownObjectRelease();
              }
            }

            (*v16)(v6, v32);
          }
        }

        if (++v15 == v31)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_22;
    }

LABEL_16:
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation) = 0;
    v27 = [v1 viewIfLoaded];
    v28 = [v27 window];

    if (v28)
    {

      DOCBrowserContainedViewController.updateOverlayIfNeeded()();
    }

    else
    {
      DOCBrowserContainedViewController.applyOverlaySearchSettings()();
    }

    v30(0);
  }
}

void closure #1 in DOCItemCollectionViewController.selectAllItems()(void *a1)
{
  v27 = type metadata accessor for IndexPath();
  v2 = *(v27 - 8);
  v4.n128_f64[0] = MEMORY[0x28223BE20](v27, v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *((*MEMORY[0x277D85000] & *a1) + 0x1010);
  v28 = (*MEMORY[0x277D85000] & *a1) + 4112;
  v8 = v7;
  v9 = v7(v4);
  v10 = [v9 numberOfSections];

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    return;
  }

  if (v10)
  {
    v11 = 0;
    v12 = (v2 + 8);
    v26 = v10;
    while (1)
    {
      v13 = v8();
      v14 = [v13 numberOfItemsInSection_];

      if ((v14 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v14)
      {
        for (i = 0; v14 != i; ++i)
        {
          v18 = MEMORY[0x24C1F8100](i, v11);
          v19 = (v8)(v18);
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          v21 = [a1 collectionView:v19 shouldSelectItemAtIndexPath:isa];

          if (v21)
          {
            v22 = MEMORY[0x277D85000];
            if ((*((*MEMORY[0x277D85000] & *a1) + 0xD88))(v6, 0))
            {
              if (((*((*v22 & *a1) + 0x1790))() & 1) == 0)
              {
                (*v12)(v6, v27);
                swift_unknownObjectRelease();
                continue;
              }

              v16 = v8();
              v17 = IndexPath._bridgeToObjectiveC()().super.isa;
              [v16 selectItemAtIndexPath:v17 animated:0 scrollPosition:0];
              swift_unknownObjectRelease();
            }
          }

          (*v12)(v6, v27);
        }
      }

      if (++v11 == v26)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_15:
  *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation) = 0;
  v23 = [a1 viewIfLoaded];
  v24 = [v23 window];

  if (v24)
  {

    DOCBrowserContainedViewController.updateOverlayIfNeeded()();
  }

  else
  {
    DOCBrowserContainedViewController.applyOverlaySearchSettings()();
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.deselectItems(ofType:excludedIndexPaths:)(DocumentManagerExecutables::DOCItemCollectionViewController::DOCItemCollectionCellType ofType, Swift::OpaquePointer excludedIndexPaths)
{
  rawValue = excludedIndexPaths._rawValue;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v69 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v71 = &v67 - v9;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v79 = &v67 - v17;
  MEMORY[0x28223BE20](v18, v19);
  v70 = &v67 - v20;
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v67 - v23;
  v27 = MEMORY[0x28223BE20](v25, v26);
  v29 = &v67 - v28;
  if (ofType)
  {
    MEMORY[0x24C1F8100](0, 0, v27);
    v30 = MEMORY[0x277D85000];
    if (((*((*MEMORY[0x277D85000] & *v2) + 0x1898))(v29) & 1) == 0 || (v31 = (*((*v30 & *v2) + 0x1330))(), v32 = specialized Sequence<>.contains(_:)(v29, v31), , !v32))
    {
      (*(v11 + 8))(v29, v10);
      return;
    }

    v68 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd);
    v33 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_249B9A480;
    (*(v11 + 32))(v34 + v33, v29, v10);
    v35 = v34;
    v77 = *(v34 + 16);
    if (!v77)
    {
      v76 = MEMORY[0x277D84F90];
LABEL_21:

      v48 = v68;
      v49 = MEMORY[0x277D85000];
      v50 = v71;
      (*((*MEMORY[0x277D85000] & *v68) + 0xE30))(v47);
      if ((*(v11 + 48))(v50, 1, v10) == 1)
      {
        v51 = v14;
        outlined destroy of CharacterSet?(v50, &_s10Foundation9IndexPathVSgMd);
      }

      else
      {
        v52 = v70;
        (*(v11 + 32))(v70, v50, v10);
        v51 = v14;
        if (specialized Sequence<>.contains(_:)(v52, v76))
        {
          v53 = v52;
          v54 = v69;
          (*(v11 + 56))(v69, 1, 1, v10);
          (*((*v49 & *v48) + 0xE38))(v54);
          (*(v11 + 8))(v53, v10);
        }

        else
        {
          (*(v11 + 8))(v52, v10);
        }
      }

      v55 = v76[2];
      if (v55)
      {
        v56 = *((*v49 & *v48) + 0x1010);
        rawValue = ((*v49 & *v48) + 4112);
        v79 = v56;
        v58 = *(v11 + 16);
        v57 = v11 + 16;
        v77 = v58;
        v59 = v76 + ((*(v57 + 64) + 32) & ~*(v57 + 64));
        v60 = *(v57 + 56);
        v61 = (v57 - 8);
        do
        {
          v62 = v77(v51, v59, v10);
          v63 = (v79)(v62);
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          (*v61)(v51, v10);
          [v63 deselectItemAtIndexPath:isa animated:0];

          v59 += v60;
          v55 = (v55 - 1);
        }

        while (v55);
      }

      *(v48 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation) = 0;
      v65 = [v48 viewIfLoaded];
      v66 = [v65 window];

      if (v66)
      {

        DOCBrowserContainedViewController.updateOverlayIfNeeded()();
      }

      else
      {
        DOCBrowserContainedViewController.applyOverlaySearchSettings()();
      }

      return;
    }
  }

  else
  {
    v35 = (*((*MEMORY[0x277D85000] & *v2) + 0x1330))(v27);
    v77 = *(v35 + 16);
    if (!v77)
    {

      return;
    }

    v68 = v2;
  }

  v67 = v14;
  v36 = 0;
  v72 = (v11 + 8);
  v73 = v11 + 16;
  v76 = (v11 + 32);
  v37 = MEMORY[0x277D84F90];
  v74 = v35;
  v75 = v11;
  while (v36 < *(v35 + 16))
  {
    v40 = v37;
    v41 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v42 = *(v11 + 72);
    (*(v11 + 16))(v24, v35 + v41 + v42 * v36++, v10);
    v43 = rawValue + v41;
    v44 = rawValue[2] + 1;
    while (--v44)
    {
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
      v43 += v42;
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        (*v72)(v24, v10);
        v37 = v40;
        goto LABEL_12;
      }
    }

    v45 = *v76;
    (*v76)(v79, v24, v10);
    v37 = v40;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80 = v40;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40[2] + 1, 1);
      v37 = v80;
    }

    v39 = v37[2];
    v38 = v37[3];
    if (v39 >= v38 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v38 > 1, v39 + 1, 1);
      v37 = v80;
    }

    v37[2] = v39 + 1;
    v45(v37 + v41 + v39 * v42, v79, v10);
LABEL_12:
    v35 = v74;
    v11 = v75;
    if (v36 == v77)
    {
      v76 = v37;
      v14 = v67;
      goto LABEL_21;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall DOCItemCollectionViewController.deselectAllItems()()
{
  v1 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0x1310))() & 1) == 0)
  {
    v2 = *((*v1 & *v0) + 0x1318);
    v2(1);
    (*((*v1 & *v0) + 0x1300))(0, MEMORY[0x277D84F90]);

    v2(0);
  }
}

uint64_t DOCItemCollectionViewController.performingBatchSelection.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_performingBatchSelection;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemCollectionViewController.performingBatchSelection.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_performingBatchSelection;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCItemCollectionViewController.selectedIndexPaths.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x1018))();
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  v3 = [v1 indexPathsForSelectedItems];

  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  type metadata accessor for IndexPath();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t DOCItemCollectionViewController.sortedSelectedIndexPaths.getter()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x1018))();
  if (v2 && (v3 = v2, v4 = [v2 indexPathsForSelectedItems], v3, v4))
  {
    type metadata accessor for IndexPath();
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = (*((*v1 & *v0) + 0x1360))(v5);

  return v6;
}

unint64_t DOCItemCollectionViewController.selectedNodes(sorted:)(char a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x1018))();
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    v8 = MEMORY[0x277D84F90];
    if ((a1 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6 = v4;
  v7 = [v4 indexPathsForSelectedItems];

  if (v7)
  {
    type metadata accessor for IndexPath();
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if ((a1 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    v9 = (*((*v3 & *v1) + 0x1360))(v8);

    v8 = v9;
    goto LABEL_7;
  }

  v8 = MEMORY[0x277D84F90];
  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  v10 = (*((*v3 & *v1) + 0xDB8))();
  if (!v10)
  {
    v10 = (*((*v3 & *v1) + 0xD60))();
  }

  v11 = DOCItemCollectionViewController.nodes(at:in:)(v8, v10);

  if ((*((*v3 & *v1) + 0x148))(v12))
  {
    v19 = v5;
    if (v11 >> 62)
    {
      goto LABEL_27;
    }

    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      while (1)
      {
        v14 = 0;
        while ((v11 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x24C1FC540](v14, v11);
          v16 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
LABEL_22:
            __break(1u);
LABEL_23:
            v17 = v19;
            goto LABEL_29;
          }

LABEL_18:
          if ([v15 isFolder])
          {
            swift_unknownObjectRelease();
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v14;
          if (v16 == v13)
          {
            goto LABEL_23;
          }
        }

        if (v14 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_27:
        v13 = __CocoaSet.count.getter();
        if (!v13)
        {
          goto LABEL_28;
        }
      }

      v15 = *(v11 + 8 * v14 + 32);
      swift_unknownObjectRetain();
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_22;
      }

      goto LABEL_18;
    }

LABEL_28:
    v17 = MEMORY[0x277D84F90];
LABEL_29:

    return v17;
  }

  return v11;
}

uint64_t DOCItemCollectionViewController.nodes(at:in:)(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v4 = type metadata accessor for IndexPath();
  v7.n128_f64[0] = MEMORY[0x28223BE20](v4, v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *((*MEMORY[0x277D85000] & *v2) + 0xD88);
    v23 = (*MEMORY[0x277D85000] & *v2) + 3464;
    v24 = v12;
    v14 = *(v6 + 16);
    v13 = v6 + 16;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v21 = *(v13 + 56);
    v22 = v14;
    v16 = (v13 - 8);
    do
    {
      v17 = v13;
      v22(v9, v15, v4, v7);
      v18 = v24(v9, v25);
      v19 = (*v16)(v9, v4);
      if (v18)
      {
        MEMORY[0x24C1FB090](v19);
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v10 = v26;
      }

      v15 += v21;
      --v11;
      v13 = v17;
    }

    while (v11);
  }

  return v10;
}

BOOL DOCItemCollectionViewController.hasSelectedNodes.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x1338))();
  if (v1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 > 0;
}

void DOCItemCollectionViewController.open(node:animated:)(void *a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v33 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  v13.n128_f64[0] = MEMORY[0x28223BE20](v10, v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0xD98))(a1, v13);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of CharacterSet?(v9, &_s10Foundation9IndexPathVSgMd);
    v17 = [a1 fpfs_fpItem];
    if (v17)
    {
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_249BA0290;
      *(v19 + 32) = v18;
      v20 = *((*v16 & *v3) + 0x1440);
      v21 = v18;
      v20(v19, v18);
    }

    else
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Logger.UI);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v34 = v32;
        *v31 = 136315138;
        *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x8000000249BDEB00, &v34);
        _os_log_impl(&dword_2493AC000, v29, v30, "%s: node could not be found to be opened with App Intents", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x24C1FE850](v32, -1, -1);
        MEMORY[0x24C1FE850](v31, -1, -1);
      }
    }
  }

  else
  {
    v22 = (*(v11 + 32))(v15, v9, v10);
    v23 = *((*v16 & *v2) + 0x1010);
    v24 = (v23)(v22);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [v24 selectItemAtIndexPath:isa animated:a2 & 1 scrollPosition:0];

    v26 = v23();
    v27 = IndexPath._bridgeToObjectiveC()().super.isa;
    [v3 collectionView:v26 performPrimaryActionForItemAtIndexPath:v27];

    (*(v11 + 8))(v15, v10);
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.select(nodes:animated:reloadInitiallySelectedItem:)(Swift::OpaquePointer_optional nodes, Swift::Bool animated, Swift::Bool reloadInitiallySelectedItem)
{
  v4 = v3;
  v5 = animated;
  LODWORD(v106) = *&nodes.is_nil;
  rawValue = nodes.value._rawValue;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v105 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v98 - v12;
  v14 = type metadata accessor for IndexPath();
  v109 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v107 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v98 - v19;
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v98 - v23;
  v27.n128_f64[0] = MEMORY[0x28223BE20](v25, v26);
  v29 = &v98 - v28;
  v30 = MEMORY[0x277D85000];
  v31 = (*((*MEMORY[0x277D85000] & *v3) + 0x1018))(v27);
  if (v31)
  {
    if (rawValue)
    {
      v103 = v14;
      v99 = v13;
      v104 = v5;
      v110 = v31;
      v32 = *((*v30 & *v3) + 0xDB0);
      v33 = (*v30 & *v3) + 3504;
      v108 = (v32)(rawValue);
      v34 = (*((*v30 & *v3) + 0x1268))();
      v100 = v32;
      v102 = v33;
      if (v34)
      {
        v35 = v34;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_249BA0290;
        *(v36 + 32) = v35;
        swift_unknownObjectRetain();
        v37 = (v32)(v36);

        if (*(v37 + 16))
        {
          v38 = v109;
          v39 = *(v109 + 16);
          v98 = (*(v109 + 80) + 32) & ~*(v109 + 80);
          v40 = v103;
          v39(v29, v37 + v98, v103);

          v41 = v108;
          if (specialized Sequence<>.contains(_:)(v29, v108))
          {
            (*(v38 + 8))(v29, v40);
            swift_unknownObjectRelease();
            v30 = MEMORY[0x277D85000];
            v42 = v38;
          }

          else
          {
            v39(v24, v29, v40);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41[2] + 1, 1, v41);
            }

            v30 = MEMORY[0x277D85000];
            v44 = v41[2];
            v43 = v41[3];
            v108 = v41;
            if (v44 >= v43 >> 1)
            {
              v108 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v43 > 1, v44 + 1, 1, v108);
            }

            swift_unknownObjectRelease();
            v45 = v109;
            (*(v109 + 8))(v29, v40);
            v46 = v108;
            v108[2] = v44 + 1;
            v41 = v46;
            v42 = v45;
            (*(v45 + 32))(v46 + v98 + *(v45 + 72) * v44, v24, v40);
          }

LABEL_17:
          v47 = v41[2];
          v101 = v4;
          if (v47)
          {
            v50 = *(v42 + 16);
            v48 = v42 + 16;
            v49 = v50;
            v51 = (*(v48 + 64) + 32) & ~*(v48 + 64);
            v108 = v41;
            v52 = v41 + v51;
            v53 = *(v48 + 56);
            v54 = v106;
            do
            {
              v49(v20, v52, v40);
              isa = IndexPath._bridgeToObjectiveC()().super.isa;
              [v110 selectItemAtIndexPath:isa animated:v54 & 1 scrollPosition:0];

              (*(v48 - 8))(v20, v40);
              v52 += v53;
              --v47;
            }

            while (v47);

            v4 = v101;
            v30 = MEMORY[0x277D85000];
          }

          else
          {
          }

          v57 = *((*v30 & *v4) + 0x1338);
          v58 = (*v30 & *v4) + 4920;
          v59 = v57(v56);
          v60 = v104;
          if (v59 >> 62)
          {
            v61 = __CocoaSet.count.getter();
          }

          else
          {
            v61 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v61 == 1)
          {
            v57(v62);
            v63 = v100();

            v64 = *(v63 + 16);
            if (!v64)
            {

              if (v60)
              {
                goto LABEL_28;
              }

              goto LABEL_38;
            }

            v65 = v109;
            v66 = v63 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v109 + 72) * (v64 - 1);
            v106 = v58;
            v67 = *(v109 + 16);
            v68 = v107;
            v69 = v103;
            v67(v107, v66, v103);

            v108 = v57;
            v70 = v99;
            v67(v99, v68, v69);
            v71 = *(v65 + 56);
            v71(v70, 0, 1, v69);
            DOCItemCollectionViewController.rememberLastFocusedItem(_:)(v70);
            outlined destroy of CharacterSet?(v70, &_s10Foundation9IndexPathVSgMd);
            v67(v70, v68, v69);
            v71(v70, 0, 1, v69);
            v30 = MEMORY[0x277D85000];
            v72 = (*((*MEMORY[0x277D85000] & *v110) + 0xF0))();
            v73 = v105;
            outlined init with copy of DOCGridLayout.Spec?(v70, v105, &_s10Foundation9IndexPathVSgMd);
            (*(*v72 + 112))(v73);

            v74 = v70;
            v57 = v108;
            v60 = v104;
            outlined destroy of CharacterSet?(v74, &_s10Foundation9IndexPathVSgMd);
            (*(v65 + 8))(v107, v69);
          }

          if (v60)
          {
LABEL_28:
            if (one-time initialization token for UI != -1)
            {
              swift_once();
            }

            v75 = type metadata accessor for Logger();
            __swift_project_value_buffer(v75, static Logger.UI);
            v76 = v4;
            v77 = Logger.logObject.getter();
            v78 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v77, v78))
            {
              v79 = swift_slowAlloc();
              v80 = swift_slowAlloc();
              v109 = swift_slowAlloc();
              v111[0] = v109;
              *v79 = 136315650;
              *(v79 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000033, 0x8000000249BDEB20, v111);
              *(v79 + 12) = 2112;
              *(v79 + 14) = v76;
              *v80 = v4;
              *(v79 + 22) = 2080;
              v81 = v76;
              v82 = (v57)();
              v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
              v84 = v57;
              v85 = MEMORY[0x24C1FB0D0](v82, v83);
              v87 = v86;

              v88 = v85;
              v57 = v84;
              v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v87, v111);

              *(v79 + 24) = v89;
              _os_log_impl(&dword_2493AC000, v77, v78, "%s calling didSelect in column mode to reset info panel %@ selectedNodes: %s", v79, 0x20u);
              outlined destroy of CharacterSet?(v80, &_sSo8NSObjectCSgMd);
              v90 = v80;
              v30 = MEMORY[0x277D85000];
              MEMORY[0x24C1FE850](v90, -1, -1);
              v91 = v109;
              swift_arrayDestroy();
              MEMORY[0x24C1FE850](v91, -1, -1);
              MEMORY[0x24C1FE850](v79, -1, -1);
            }

            type metadata accessor for DOCConcreteSelectionLocation();
            v92 = (v57)();
            v93 = DOCConcreteSelectionLocation.__allocating_init(selectedNodes:)(v92);
            if (v93)
            {
              v94 = v93;
              v95 = (*((*v30 & *v76) + 0xE8))();
              if (v95)
              {
                v96 = v95;
                (*((*v30 & *v76) + 0xA50))(v111);
                v97 = v111[3];
                outlined destroy of DOCItemCollectionConfiguration(v111);
                [v96 didSelectLocation:v94 atParentLocation:v97];

                swift_unknownObjectRelease();
              }

              else
              {
              }
            }
          }

LABEL_38:

          return;
        }

        swift_unknownObjectRelease();
      }

      v41 = v108;
      v42 = v109;
      v40 = v103;
      goto LABEL_17;
    }
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.viewDidMove(to:shouldAppearOrDisappear:)(UIWindow_optional *to, Swift::Bool shouldAppearOrDisappear)
{
  ObjectType = swift_getObjectType();
  v20.receiver = v2;
  v20.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  [(UIWindow_optional *)&v20 viewDidMoveToWindow:to shouldAppearOrDisappear:shouldAppearOrDisappear];
  if (to)
  {
    DOCItemCollectionViewController.updateCellContentTraitCollection()();
    v6 = [v2 traitCollection];
    [v6 enclosingUIPHorizontalInset];
    v8 = v7;

    [v2 setAdditionalSafeAreaInsets_];
    v18 = 0;
    v19 = 1;
    *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_registrationForUIPChanges] = UIViewController.registerForUIPTraitChanges<A>(tabStyle:documentLanding:options:_:)(1, 1, &v18, specialized closure #1 in DOCItemCollectionViewController.viewDidMove(to:shouldAppearOrDisappear:), 0, ObjectType);
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_249B9A480;
    v10 = lazy protocol witness table accessor for type DOCUIPHorizontalInsetTrait and conformance DOCUIPHorizontalInsetTrait();
    *(v9 + 32) = &type metadata for DOCUIPHorizontalInsetTrait;
    *(v9 + 40) = v10;
    v18 = 0;
    v19 = 1;
    v11 = UIViewController.doc_registerForTraitChanges<A>(_:options:handler:)(v9, &v18, specialized closure #2 in DOCItemCollectionViewController.viewDidMove(to:shouldAppearOrDisappear:), 0, ObjectType);

    *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_registrationForInsetChanges] = v11;
    swift_unknownObjectRelease();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_249B9A480;
    v13 = lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
    *(v12 + 32) = &type metadata for DOCBrowserLayoutConfiguration.Trait;
    *(v12 + 40) = v13;
    v18 = 0;
    v19 = 1;
    v14 = UIViewController.doc_registerForTraitChanges<A>(_:options:handler:)(v12, &v18, specialized closure #3 in DOCItemCollectionViewController.viewDidMove(to:shouldAppearOrDisappear:), 0, ObjectType);

    *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_registrationForBrowserLayoutChanges] = v14;
LABEL_9:
    swift_unknownObjectRelease();
    return;
  }

  if (*&v2[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_registrationForBrowserLayoutChanges])
  {
    v15 = swift_unknownObjectRetain();
    MEMORY[0x24C1FB8C0](v15);
    swift_unknownObjectRelease();
  }

  if (*&v2[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_registrationForUIPChanges])
  {
    v16 = swift_unknownObjectRetain();
    MEMORY[0x24C1FB8C0](v16);
    swift_unknownObjectRelease();
  }

  if (*&v2[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_registrationForInsetChanges])
  {
    v17 = swift_unknownObjectRetain();
    MEMORY[0x24C1FB8C0](v17);
    goto LABEL_9;
  }
}

void closure #1 in closure #3 in DOCItemCollectionViewController.viewDidMove(to:shouldAppearOrDisappear:)(void *a1)
{
  if ((*((*MEMORY[0x277D85000] & *a1) + 0xBD8))() == 3)
  {
    DOCItemCollectionViewController.didObserveLayoutRelatedChanges(forceLayoutInvalidation:)();
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  objc_msgSendSuper2(&v13, sel_traitCollectionDidChange_, isa);
  DOCItemCollectionViewController.updateCellContentTraitCollection()();
  v4 = [v1 traitCollection];
  if (one-time initialization token for sizeCategory != -1)
  {
    swift_once();
  }

  v11 = static UITraitCollection.Traits.sizeCategory;
  v12 = qword_27EEE9CC0;

  v5 = UITraitCollection.doc_hasChanged(_:comparesTo:)(&v11, isa);

  if (v5)
  {
    (*((*MEMORY[0x277D85000] & *v2) + 0x1820))(v6);
  }

  v7 = [v2 traitCollection];
  if (one-time initialization token for hSizeClass != -1)
  {
    swift_once();
  }

  v11 = static UITraitCollection.Traits.hSizeClass;
  v12 = qword_27EEE9C60;

  v8 = UITraitCollection.doc_hasChanged(_:comparesTo:)(&v11, isa);

  if (v8)
  {
    *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation) = 0;
    v9 = [v2 viewIfLoaded];
    v10 = [v9 window];

    if (v10)
    {

      DOCBrowserContainedViewController.updateOverlayIfNeeded()();
    }

    else
    {
      DOCBrowserContainedViewController.applyOverlaySearchSettings()();
    }
  }

  DOCItemCollectionViewController.updateInlineRenameIfNeeded()();
}

void DOCItemCollectionViewController.updateInlineRenameIfNeeded()()
{
  v1 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0x1448))() & 1) == 0)
  {
    return;
  }

  v2 = *((*v1 & *v0) + 0x1960);
  v3 = v2();
  if (!v3)
  {
LABEL_5:
    v4 = *((*v1 & *v0) + 0x1498);
    if (!(v4)(v3))
    {
      return;
    }

    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.Rename);
    v6 = v0;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v53 = v10;
      *v9 = 136315650;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BE1090, &v53);
      *(v9 + 12) = 2080;
      v11 = v4();

      if (v11)
      {
        v12 = (*(*v11 + 272))();

        v13 = [v12 filename];
        swift_unknownObjectRelease();
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v53);

        *(v9 + 14) = v17;
        *(v9 + 22) = 2080;
        v19 = (v4)(v18);

        if (v19)
        {
          (*(*v19 + 272))();

          swift_getObjectType();
          v20 = DOCNode.nodeDescription.getter();
          v22 = v21;
          swift_unknownObjectRelease();
          v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v53);

          *(v9 + 24) = v23;
          _os_log_impl(&dword_2493AC000, v7, v8, "%s: update existing rename session on: %s node: %s)", v9, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v10, -1, -1);
          MEMORY[0x24C1FE850](v9, -1, -1);

          goto LABEL_13;
        }
      }

      else
      {

        __break(1u);
      }

      __break(1u);
      return;
    }

LABEL_13:
    if (DOCItemCollectionViewController.findUpdatedItemForRenameControllerIfNeeded()())
    {
      DOCItemCollectionViewController.repositionRenameToNewCellIfNeeded()();
    }

    else
    {
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v53 = v27;
        *v26 = 136315138;
        *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BE1090, &v53);
        _os_log_impl(&dword_2493AC000, v24, v25, "%s: currently renaming item not found in item collection, aborting", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x24C1FE850](v27, -1, -1);
        MEMORY[0x24C1FE850](v26, -1, -1);
      }

      DOCItemCollectionViewController.abortRename()();
    }

    return;
  }

  if ((*((*v1 & *v0) + 0x1498))())
  {

    goto LABEL_5;
  }

  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.Rename);
  v29 = v0;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = v52;
    *v32 = 136315650;
    *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BE1090, &v53);
    *(v32 + 12) = 2080;
    v33 = v2();
    if (v33)
    {
      v34 = v33;
      v35 = [v33 filename];

      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;
    }

    else
    {
      v38 = 0xE300000000000000;
      v36 = 7104878;
    }

    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v53);

    *(v32 + 14) = v39;
    *(v32 + 22) = 2080;
    v41 = (v2)(v40);
    if (v41)
    {
      v42 = v41;
      objc_opt_self();
      v43 = swift_dynamicCastObjCClass();
      if (v43)
      {
        v44 = v43;
        v45 = v42;
        v46 = [v44 description];
        v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = v48;
      }

      else
      {
        v46 = [v42 displayName];
        v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = v50;
      }
    }

    else
    {
      v49 = 0xE300000000000000;
      v47 = 7104878;
    }

    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v53);

    *(v32 + 24) = v51;
    _os_log_impl(&dword_2493AC000, v30, v31, "%s: begin deferred rename on: %s node: %s", v32, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v52, -1, -1);
    MEMORY[0x24C1FE850](v32, -1, -1);
  }

  DOCItemCollectionViewController.resetReadyForRenameTimer()();
}

void DOCItemCollectionViewController.updateCellContentTraitCollection()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x1018))();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) isPickerUI];
  v5 = [v0 traitCollection];
  if (v4)
  {
    v6 = UITraitCollection.modifyingTraits(_:)();

    v5 = v6;
  }

  v7 = [v3 preparedCells];
  if (!v7)
  {
    goto LABEL_22;
  }

  v8 = v7;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    v10 = __CocoaSet.count.getter();
    if (v10)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_7:
      if (v10 >= 1)
      {
        for (i = 0; i != v10; ++i)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x24C1FC540](i, v9);
          }

          else
          {
            v12 = *(v9 + 8 * i + 32);
          }

          v13 = v12;
          type metadata accessor for DOCItemCollectionCell();
          v14 = swift_dynamicCastClass();
          if (v14)
          {
            v15 = (*((*v1 & *v14) + 0x208))();
            if (v15)
            {
              v16 = v15;
              v17 = *((*v1 & *v15) + 0x370);
              v18 = v5;
              v17(v5);
            }
          }
        }

        goto LABEL_18;
      }

      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }
  }

LABEL_18:
}

void DOCItemCollectionViewController.updateLayoutTraitsFromEnvironment(_:)(void *a1)
{
  v2 = v1;
  [objc_msgSend(a1 container)];
  v5 = v4;
  v7 = v6;
  v8 = swift_unknownObjectRelease();
  if (v5 <= 0.0 || v7 <= 0.0)
  {
    return;
  }

  v9 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0xA50))(&v81, v8);
  v95 = v83;
  v96 = v84;
  v97 = v85;
  v93 = v81;
  v94 = v82;
  outlined destroy of DOCItemCollectionConfiguration(&v93);
  LOBYTE(v70) = v94;
  v10 = [a1 traitCollection];
  type metadata accessor for DOCItemCollectionLayoutTraits();
  swift_allocObject();
  v11 = DOCItemCollectionLayoutTraits.init(context:traitCollection:containerViewSize:)(&v70, v10, v5, v7);
  v12 = (*((*v9 & *v1) + 0x11C0))();
  v13 = DOCItemCollectionLayoutTraits.needsCollectionViewUpdate(comparedTo:)(v12);

  if ((v13 & 1) == 0)
  {
LABEL_56:

    return;
  }

  v14 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_collectionViewLayoutTraits;
  swift_beginAccess();
  *(v2 + v14) = v11;

  v16 = *((*v9 & *v2) + 0xBD8);
  if ((v16)(v15) == 1 || v16() == 3)
  {
    *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_updateStackViewMetrics) = 1;
    DOCItemCollectionViewController.computeStackViewMetricsIfNeeded()();
  }

  v92 = MEMORY[0x277D84FA0];
  v17 = *((*v9 & *v2) + 0x1010);
  v18 = v17();
  v19 = [v18 preparedCells];

  if (!v19)
  {
    goto LABEL_61;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell);
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v20 >> 62)
  {
    v21 = __CocoaSet.count.getter();
    if (!v21)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      goto LABEL_21;
    }
  }

  if (v21 < 1)
  {
    goto LABEL_59;
  }

  for (i = 0; i != v21; ++i)
  {
    if ((v20 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x24C1FC540](i, v20);
    }

    else
    {
      v23 = *(v20 + 8 * i + 32);
    }

    v24 = v23;
    type metadata accessor for DOCItemCollectionCell();
    v25 = swift_dynamicCastClass();
    if (v25)
    {
      specialized Set._Variant.insert(_:)(&v81, v25);
    }

    else
    {
    }
  }

LABEL_21:

  v27 = (v17)(v26);
  v28 = [v27 visibleCells];

  v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (v29 >> 62)
  {
    v30 = __CocoaSet.count.getter();
    if (v30)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
LABEL_23:
      if (v30 < 1)
      {
        goto LABEL_60;
      }

      for (j = 0; j != v30; ++j)
      {
        if ((v29 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x24C1FC540](j, v29);
        }

        else
        {
          v32 = *(v29 + 8 * j + 32);
        }

        v33 = v32;
        type metadata accessor for DOCItemCollectionCell();
        v34 = swift_dynamicCastClass();
        if (v34)
        {
          specialized Set._Variant.insert(_:)(&v81, v34);
        }

        else
        {
        }
      }
    }
  }

  v58 = v11;

  v35 = v92;
  if ((v92 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for DOCItemCollectionCell();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DOCItemCollectionCell and conformance NSObject, type metadata accessor for DOCItemCollectionCell);
    Set.Iterator.init(_cocoa:)();
    v35 = v98;
    v36 = v99;
    v37 = v100;
    v38 = v101;
    v39 = v102;
  }

  else
  {
    v38 = 0;
    v40 = -1 << *(v92 + 32);
    v36 = v92 + 56;
    v37 = ~v40;
    v41 = -v40;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    else
    {
      v42 = -1;
    }

    v39 = v42 & *(v92 + 56);
  }

  v43 = (v37 + 64) >> 6;
  v44 = MEMORY[0x277D85000];
  while (v35 < 0)
  {
    v50 = __CocoaSet.Iterator.next()();
    if (!v50 || (*&v70 = v50, type metadata accessor for DOCItemCollectionCell(), swift_dynamicCast(), v49 = v81, v47 = v38, v48 = v39, !v81))
    {
LABEL_55:
      outlined consume of Set<UITouch>.Iterator._Variant();
      goto LABEL_56;
    }

LABEL_51:
    v51 = *((*v44 & *v49) + 0x208);
    v52 = v51();
    if (v52)
    {
      v53 = v52;
      (*(*v58 + 184))(&v70);
      v89 = v78;
      v90 = v79;
      v91[0] = v80[0];
      *(v91 + 9) = *(v80 + 9);
      v85 = v74;
      v86 = v75;
      v87 = v76;
      v88 = v77;
      v81 = v70;
      v82 = v71;
      v83 = v72;
      v84 = v73;
      DOCGridLayout.specIconWidth.modify(*&v72, *&v73);
      v54 = *v44 & *v53;
      v67 = v89;
      v68 = v90;
      v69[0] = v91[0];
      *(v69 + 9) = *(v91 + 9);
      v63 = v85;
      v64 = v86;
      v65 = v87;
      v66 = v88;
      v59 = v81;
      v60 = v82;
      v61 = v83;
      v62 = v84;
      (*(v54 + 736))(&v59);
    }

    v55 = v51();
    if (v55)
    {
      v56 = v55;
      (*(*v58 + 256))(&v70);
      v85 = v74;
      v86 = v75;
      v87 = v76;
      v88 = v77;
      v81 = v70;
      v82 = v71;
      v83 = v72;
      v84 = v73;
      DOCGridLayout.specIconWidth.modify(*&v72, *&v73);
      v57 = *MEMORY[0x277D85000] & *v56;
      v63 = v85;
      v64 = v86;
      v65 = v87;
      v66 = v88;
      v59 = v81;
      v60 = v82;
      v61 = v83;
      v62 = v84;
      (*(v57 + 760))(&v59);
    }

    else
    {
    }

    v38 = v47;
    v39 = v48;
  }

  v45 = v38;
  v46 = v39;
  v47 = v38;
  if (v39)
  {
LABEL_47:
    v48 = (v46 - 1) & v46;
    v49 = *(*(v35 + 48) + ((v47 << 9) | (8 * __clz(__rbit64(v46)))));
    if (!v49)
    {
      goto LABEL_55;
    }

    goto LABEL_51;
  }

  while (1)
  {
    v47 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    if (v47 >= v43)
    {
      goto LABEL_55;
    }

    v46 = *(v36 + 8 * v47);
    ++v45;
    if (v46)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
}

uint64_t DOCItemCollectionViewController.updatedLayoutInfoIfShouldInvalidate(traitCollection:size:force:ignoreFooter:)(void *a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v6 = v5;
  if (![v6 isViewLoaded])
  {
    return 0;
  }

  if (a4)
  {
    DOCItemCollectionViewController.modelPreloadingCollectionViewSize.getter();
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v13 = *&a2;
    v15 = *&a3;
  }

  v16 = [v6 viewIfLoaded];
  if (v16)
  {
    v17 = v16;
    v18 = *((*MEMORY[0x277D85000] & *v6) + 0xBD8);
    if (v18() && v18() != 1)
    {
    }

    else
    {
      [v17 safeAreaInsets];
      v20 = v19;
      [v17 safeAreaInsets];
      v22 = v21;

      v13 = v13 - (v20 + v22);
    }
  }

  result = 0;
  if (v13 > 0.0 && v15 > 0.0)
  {
    if (one-time initialization token for hSizeClass != -1)
    {
      swift_once();
    }

    v48 = static UITraitCollection.Traits.hSizeClass;
    v49 = qword_27EEE9C60;
    v24 = one-time initialization token for vSizeClass;

    if (v24 != -1)
    {
      swift_once();
    }

    v50 = static UITraitCollection.Traits.vSizeClass;
    v51 = qword_27EEE9C78;
    v25 = one-time initialization token for displayScale;

    if (v25 != -1)
    {
      swift_once();
    }

    v52 = static UITraitCollection.Traits.displayScale;
    v53 = qword_27EEE9C90;
    v26 = one-time initialization token for sizeCategory;

    if (v26 != -1)
    {
      swift_once();
    }

    v54 = static UITraitCollection.Traits.sizeCategory;
    v55 = qword_27EEE9CC0;

    _StringGuts.grow(_:)(18);

    *&v46[0] = 0x6172287469617254;
    *(&v46[0] + 1) = 0xEF3A65756C615677;
    *v47 = 0;
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x24C1FAEA0](v27);

    MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
    v28 = v46[0];
    *&v46[0] = 0;
    *(v46 + 8) = v28;

    specialized OptionSet<>.insert(_:)(v47, v48, *(&v48 + 1), v49);

    v30 = *(&v50 + 1);
    v29 = v51;
    v31 = v50;

    specialized OptionSet<>.insert(_:)(v47, v31, v30, v29);

    v33 = *(&v52 + 1);
    v32 = v53;
    v34 = v52;

    specialized OptionSet<>.insert(_:)(v47, v34, v33, v32);

    v36 = *(&v54 + 1);
    v35 = v55;
    v37 = v54;

    specialized OptionSet<>.insert(_:)(v47, v37, v36, v35);

    swift_arrayDestroy();
    v38 = UITraitCollection.doc_hasSpecified(_:)(v46);

    if ((v38 & 1) == 0)
    {
      return 0;
    }

    v40 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v6) + 0xA50))(v46, v39);
    outlined destroy of DOCItemCollectionConfiguration(v46);
    v47[0] = v46[1];
    type metadata accessor for DOCItemCollectionLayoutTraits();
    swift_allocObject();
    result = DOCItemCollectionLayoutTraits.init(context:traitCollection:containerViewSize:)(v47, a1, v13, v15);
    if ((a5 & 1) == 0)
    {
      v42 = *((*v40 & *v6) + 0x11C0);
      v43 = result;
      v44 = v42(result, v41);
      v45 = DOCItemCollectionLayoutTraits.needsCollectionViewUpdate(comparedTo:)(v44);

      result = v43;
      if ((v45 & 1) == 0)
      {

        return 0;
      }
    }
  }

  return result;
}

Swift::Bool __swiftcall DOCItemCollectionViewController.invalidateCollectionViewLayoutIfNeeded(traitCollection:size:force:)(UITraitCollection traitCollection, CGSize_optional size, Swift::Bool force)
{
  v6 = v4;
  v7 = MEMORY[0x277D85000];
  v8 = (*((*MEMORY[0x277D85000] & *v5) + 0x13F0))(traitCollection.super.isa, *&size.is_nil, force, v3 & 1, size.value, *&size.value.height);
  if (v8)
  {
    v9 = v8;

    [v5 checkIfOutlineModeNeedsChange];
    *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsForceLayoutForFooter) = 0;
    v10 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_collectionViewLayoutTraits;
    swift_beginAccess();
    *(v5 + v10) = v9;

    *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_updateStackViewMetrics) = 1;
    DOCItemCollectionViewController.computeStackViewMetricsIfNeeded()();
    v11 = DOCItemCollectionViewController.updateViewOptionsViewModel()();
    v12 = (*((*v7 & *v5) + 0xFC8))(v11);
    specialized DOCItemCollectionViewController.configureSupplementaryItems(for:footerContentInsets:)(v12);

    v13 = (*((*v7 & *v5) + 0x1400))();
    if (v6 & 1) != 0 || ((*((*v7 & *v5) + 0xEF8))())
    {
      DOCItemCollectionViewController.updateSectionHeaders()();
    }

    [v5 _setNeedsUpdateOfMultitaskingDragExclusionRects];
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

Swift::Bool __swiftcall DOCItemCollectionViewController.updateAndInvalidateLayout()()
{
  v1 = v0;
  LODWORD(v2) = [v0 isViewLoaded];
  if (!v2)
  {
    return v2;
  }

  v3 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x11C0))();
  if (!v2)
  {
    return v2;
  }

  v4 = v2;
  v5 = objc_opt_self();
  v60 = [v5 areAnimationsEnabled];
  v6 = [v5 setAnimationsEnabled_];
  v7 = *((*v3 & *v0) + 0x1010);
  v8 = (v7)(v6);
  v9 = [v8 panGestureRecognizer];

  v56 = [v9 isEnabled];
  v10 = (*(*v4 + 160))(v98);
  v11 = (*(*v4 + 232))(&v87, v10);
  v12 = BYTE8(v87);
  v13 = *((*v3 & *v1) + 0xBD8);
  v61 = v5;
  v14 = (v13)(v11) == 1 || v13() == 3 || v13() == 2;
  v15 = v7();
  v16 = v15;
  v17 = v99;
  if (v99)
  {
    v18 = v14;
  }

  else
  {
    v18 = 1;
  }

  [v15 setAlwaysBounceVertical_];

  v19 = v7();
  [v19 setAlwaysBounceHorizontal_];

  v20 = v7();
  v21 = v20;
  if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_updatedIsScrollEnabled) == 2)
  {
    if ((v14 & 1) == 0)
    {
      v12 = v100;
    }
  }

  else
  {
    v12 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_updatedIsScrollEnabled);
  }

  [v20 setScrollEnabled_];

  v22 = v7();
  [v22 setShowsVerticalScrollIndicator_];

  v58 = objc_opt_self();
  v23 = [v58 sharedGenerator];
  v57 = [v23 startBatching];

  v59 = v7;
  v24 = v7();
  v25 = [v24 preparedCells];

  if (!v25)
  {
LABEL_50:
    __break(1u);
    return v2;
  }

  v62 = v1;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell);
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v26 >> 62)
  {
    v2 = __CocoaSet.count.getter();
    v27 = v2;
    if (!v2)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v27)
    {
      goto LABEL_32;
    }
  }

  if (v27 < 1)
  {
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v28 = 0;
  v63 = v26;
  v64 = v26 & 0xC000000000000001;
  v29 = MEMORY[0x277D85000];
  do
  {
    if (v64)
    {
      v30 = MEMORY[0x24C1FC540](v28, v26);
    }

    else
    {
      v30 = *(v26 + 8 * v28 + 32);
    }

    v31 = v30;
    type metadata accessor for DOCItemCollectionCell();
    v32 = swift_dynamicCastClass();
    if (v32)
    {
      v33 = *((*v29 & *v32) + 0x208);
      v34 = v33();
      if (v34)
      {
        v35 = v34;
        (*(*v4 + 184))(&v76);
        v95 = v84;
        v96 = v85;
        v97[0] = v86[0];
        *(v97 + 9) = *(v86 + 9);
        v91 = v80;
        v92 = v81;
        v93 = v82;
        v94 = v83;
        v87 = v76;
        v88 = v77;
        v89 = v78;
        v90 = v79;
        DOCGridLayout.specIconWidth.modify(*&v78, *&v79);
        v36 = *v29 & *v35;
        v73 = v95;
        v74 = v96;
        v75[0] = v97[0];
        *(v75 + 9) = *(v97 + 9);
        v69 = v91;
        v70 = v92;
        v71 = v93;
        v72 = v94;
        v65 = v87;
        v66 = v88;
        v67 = v89;
        v68 = v90;
        (*(v36 + 736))(&v65);
      }

      v37 = v33();
      if (v37)
      {
        v38 = v37;
        (*(*v4 + 256))(&v76);
        v91 = v80;
        v92 = v81;
        v93 = v82;
        v94 = v83;
        v87 = v76;
        v88 = v77;
        v89 = v78;
        v90 = v79;
        DOCGridLayout.specIconWidth.modify(*&v78, *&v79);
        v39 = *MEMORY[0x277D85000] & *v38;
        v69 = v91;
        v70 = v92;
        v71 = v93;
        v72 = v94;
        v65 = v87;
        v66 = v88;
        v67 = v89;
        v68 = v90;
        (*(v39 + 760))(&v65);
      }

      else
      {
      }

      v26 = v63;
    }

    else
    {
    }

    ++v28;
  }

  while (v27 != v28);
LABEL_32:

  v2 = DOCItemCollectionViewController.visibleSectionHeaders.getter();
  v40 = v2;
  v41 = MEMORY[0x277D85000];
  if (v2 >> 62)
  {
    v2 = __CocoaSet.count.getter();
    v42 = v2;
    if (v2)
    {
LABEL_34:
      if (v42 >= 1)
      {
        v43 = 0;
        do
        {
          if ((v40 & 0xC000000000000001) != 0)
          {
            v44 = MEMORY[0x24C1FC540](v43, v40);
          }

          else
          {
            v44 = *(v40 + 8 * v43 + 32);
          }

          v45 = v44;
          ++v43;
          v46 = *((*v41 & *v44) + 0x2B8);

          v46(v47);
        }

        while (v42 != v43);
        goto LABEL_41;
      }

      goto LABEL_49;
    }
  }

  else
  {
    v42 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v42)
    {
      goto LABEL_34;
    }
  }

LABEL_41:

  if ([v62 doc:sel__doc_performLiveResizeSkippedWork scheduleHandlerIfInLiveResize:?])
  {
    *(v62 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_liveResizeDidSkip_updateSnapshot) = 1;
    v48 = v59();
    v49 = [v48 collectionViewLayout];

    [v49 invalidateLayout];
  }

  else
  {
    v51 = (*((*v41 & *v62) + 0xD60))();
    LOWORD(v87) = 2;
    DOCItemCollectionViewController.updateSnapshot(for:using:maintainSelection:)(v51, &v87, 1);
  }

  if ((*((*v41 & *v62) + 0x1448))(v50))
  {
    v52 = v59();
    v53 = [v52 panGestureRecognizer];

    [v53 setEnabled_];
    DOCItemCollectionViewController._repositionRenamingCell()();
  }

  v54 = [v58 sharedGenerator];
  [v54 endBatching_];

  outlined destroy of DOCItemCollectionLayoutTraits.GridTraits(v98);
  [v61 setAnimationsEnabled_];

  LOBYTE(v2) = 1;
  return v2;
}

uint64_t DOCItemCollectionViewController._repositionRenamingCell()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v52 - v4;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x28223BE20](v6, v8);
  v11 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D85000];
  v13 = *((*MEMORY[0x277D85000] & *v0) + 0x1710);
  v14 = v13(v9);
  v15 = (*((*v12 & *v0) + 0x1700))(v14 & 1);
  result = (v13)(v15);
  if ((result & 1) == 0)
  {
    result = (*((*v12 & *v0) + 0x1448))();
    if (result)
    {
      result = (*((*v12 & *v0) + 0x1498))();
      if (result)
      {
        v60 = v7;
        v61 = v6;
        v17 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
        if (v17)
        {
          v18 = result;
          v19 = (*((*v12 & *v17) + 0x258))();
          v20 = (*v18 + 272);
          v21 = *v20;
          v22 = (*v20)();
          swift_getObjectType();
          v23 = specialized Array<A>.contains(node:)(v22, v19);

          v24 = swift_unknownObjectRelease();
          if (v23)
          {
            v58 = v18;
            v25 = (v21)(v24);
            v59 = specialized RandomNumberGenerator.next<A>(upperBound:)(0xF4240uLL);
            v26 = v20;
            v54 = v21;
            if (one-time initialization token for Rename != -1)
            {
              swift_once();
            }

            v27 = type metadata accessor for Logger();
            v28 = __swift_project_value_buffer(v27, static Logger.Rename);
            swift_unknownObjectRetain();
            v56 = v28;
            v29 = Logger.logObject.getter();
            v30 = static os_log_type_t.debug.getter();
            swift_unknownObjectRelease();
            v55 = v30;
            v31 = os_log_type_enabled(v29, v30);
            v32 = v60;
            v33 = v61;
            v57 = "otherViewModesRenameAndMove()";
            if (v31)
            {
              v34 = swift_slowAlloc();
              v52[1] = v26;
              v35 = v34;
              v62 = swift_slowAlloc();
              v36 = v62;
              *v35 = 136315650;
              *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x8000000249BE1030, &v62);
              *(v35 + 12) = 2048;
              *(v35 + 14) = v59;
              *(v35 + 22) = 2080;
              swift_getObjectType();
              v37 = DOCNode.nodeDescription.getter();
              v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v62);
              v53 = v25;
              v40 = v39;

              *(v35 + 24) = v40;
              v25 = v53;
              _os_log_impl(&dword_2493AC000, v29, v55, "%s (%ld): looking for cell for node: %s", v35, 0x20u);
              swift_arrayDestroy();
              v41 = v36;
              v33 = v61;
              MEMORY[0x24C1FE850](v41, -1, -1);
              MEMORY[0x24C1FE850](v35, -1, -1);
            }

            (*((*v12 & *v1) + 0xD90))(v25);
            if ((*(v32 + 48))(v5, 1, v33) == 1)
            {
              outlined destroy of CharacterSet?(v5, &_s10Foundation9IndexPathVSgMd);

              v42 = Logger.logObject.getter();
              v43 = static os_log_type_t.error.getter();

              v44 = os_log_type_enabled(v42, v43);
              v45 = v57;
              if (v44)
              {
                v46 = swift_slowAlloc();
                v47 = swift_slowAlloc();
                v62 = v47;
                *v46 = 136315650;
                *(v46 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, v45 | 0x8000000000000000, &v62);
                *(v46 + 12) = 2048;
                *(v46 + 14) = v59;
                *(v46 + 22) = 2080;
                v54();
                swift_getObjectType();
                v48 = DOCNode.nodeDescription.getter();
                v50 = v49;
                swift_unknownObjectRelease();
                v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v62);

                *(v46 + 24) = v51;
                _os_log_impl(&dword_2493AC000, v42, v43, "%s %ld: FAILED!!!. Node: %s not found in itemCollection", v46, 0x20u);
                swift_arrayDestroy();
                MEMORY[0x24C1FE850](v47, -1, -1);
                MEMORY[0x24C1FE850](v46, -1, -1);
              }

              else
              {
              }

              return swift_unknownObjectRelease();
            }

            else
            {
              (*(v32 + 32))(v11, v5, v33);
              findRenameCell #1 () in DOCItemCollectionViewController._repositionRenamingCell()(v1, v25, 0xD000000000000019, v57 | 0x8000000000000000, v59, v11);
              swift_unknownObjectRelease();

              return (*(v32 + 8))(v11, v33);
            }
          }

          else
          {
          }
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  return result;
}

void DOCItemCollectionViewController._doc_performLiveResizeSkippedWork()()
{
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_liveResizeDidSkip_computeStackMetrics) == 1)
  {
    DOCItemCollectionViewController.computeStackViewMetricsIfNeeded()();
  }

  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_liveResizeDidSkip_updateSnapshot) == 1)
  {
    v1 = [v0 traitCollection];
    (*((*MEMORY[0x277D85000] & *v0) + 0x13F8))();
  }
}

uint64_t DOCItemCollectionViewController.preview(items:defaultItem:)(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(type metadata accessor for DOCPreviewController());
  v7 = DOCPreviewController.init()();
  v8 = v7;
  v9 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_documentManager);
  if (v9)
  {
    v10 = &protocol witness table for DOCDocumentManager;
  }

  else
  {
    v10 = 0;
  }

  v11 = MEMORY[0x277D85000];
  v12 = *((*MEMORY[0x277D85000] & *v7) + 0xF8);
  v13 = v9;
  v12(v9, v10);
  v14 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_actionManager);
  v15 = *((*v11 & *v8) + 0x128);
  v16 = v14;
  v15(v14);
  v17 = *((*v11 & *v8) + 0x1D8);
  v18 = swift_unknownObjectRetain();
  v17(v18, &protocol witness table for DOCItemCollectionViewController);
  v19 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  v20 = *((*v11 & *v8) + 0x140);
  v21 = v19;
  v20(v19);
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_15:
    v30 = (*((*v11 & *v3) + 0xCB8))();
    Available = specialized Array<A>.fpfs_syncFetchAvailableFPItems()(v30);

    a1 = Available;
    if (!(Available >> 62))
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_15;
  }

LABEL_6:

  Available = a1;
  if (!(a1 >> 62))
  {
LABEL_7:

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    goto LABEL_8;
  }

LABEL_16:

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  Available = _bridgeCocoaArray<A>(_:)();

LABEL_8:
  v33 = Available;
  v34 = 0;
  v35 = 0;
  if (a2)
  {
    v23 = specialized Collection<>.firstIndex(of:)(a2, a1);
    v25 = v24;
  }

  else
  {

    v23 = 0;
    v25 = 1;
  }

  (*((*v11 & *v8) + 0x1C8))(&v33, v23, v25 & 1);
  outlined consume of DOCPreviewSource?(v33, v34, v35);
  v26 = one-time initialization token for shared;
  v27 = v3;
  if (v26 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v31[0] = 1;
  v32 = v27;
  v28 = *(*static DOCPreviewRouter.shared + 96);

  v28(v8, v31, 0, 0);
}

void DOCItemCollectionViewController.effectiveAppearanceDidChange(_:)(void *a1)
{
  v34.receiver = v1;
  v34.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  v32 = a1;
  v3 = objc_msgSendSuper2(&v34, sel_effectiveAppearanceDidChange_, a1);
  v4 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v1) + 0xC58))(v3) & 1) == 0)
  {
    v5 = (*((*v4 & *v1) + 0x1338))();
    (*((*v4 & *v1) + 0x1198))(2);
    if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsCollectionReload) == 1)
    {
      v6 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
      if (!v6)
      {
        goto LABEL_26;
      }

      if (([v6 isGathering] & 1) == 0)
      {
        (*((*v4 & *v1) + 0x1820))();
        (*((*v4 & *v1) + 0x1378))(v5, 0, 0);
      }
    }

    v8 = (*((*v4 & *v1) + 0x1018))(v7);
    if (v8 && (v9 = v8, v10 = [v8 preparedCells], v9, v10))
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell);
      v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    v31 = v1;
    if (v11 >> 62)
    {
      v12 = __CocoaSet.count.getter();
      if (v12)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
LABEL_12:
        if (v12 >= 1)
        {
          for (i = 0; i != v12; ++i)
          {
            if ((v11 & 0xC000000000000001) != 0)
            {
              v14 = MEMORY[0x24C1FC540](i, v11);
            }

            else
            {
              v14 = *(v11 + 8 * i + 32);
            }

            v15 = v14;
            type metadata accessor for DOCItemCollectionCell();
            v16 = swift_dynamicCastClass();
            if (v16)
            {
              v17 = (*((*v4 & *v16) + 0x208))();
              if (v17)
              {
                v18 = v17;
                v19 = *((*v4 & *v17) + 0x328);
                v20 = v32;
                v19(v32);
              }
            }
          }

          goto LABEL_22;
        }

        __break(1u);
LABEL_26:
        __break(1u);
        return;
      }
    }

LABEL_22:

    v22 = *(*((*v4 & *v31) + 0x1908))(v21);
    v23 = (*(v22 + 312))(v33);
    v25 = v24;
    v26 = *v24;
    *v24 = 0;

    v27 = v25[1];
    v25[1] = 0;

    v23(v33, 0);

    v28 = *(v31 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__loadedCollectionView);
    if (v28)
    {
      v29 = v28;
      v30 = [v32 backgroundColor];
      [v29 setBackgroundColor_];
    }
  }
}

uint64_t DOCItemCollectionViewController.isRenamingInline.getter()
{
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_endingInlineRename))
  {
    return 0;
  }

  if (!(*((*MEMORY[0x277D85000] & *v0) + 0x1498))())
  {
    return *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preparingForInlineRename);
  }

  return 1;
}

uint64_t DOCItemCollectionViewController.inlineRenameController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_inlineRenameController;
  swift_beginAccess();
  *(v1 + v3) = a1;

  if (!*(v1 + v3))
  {
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preparingForInlineRename) = 0;
  }

  return result;
}

void (*DOCItemCollectionViewController.inlineRenameController.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_inlineRenameController;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCItemCollectionViewController.inlineRenameController.modify;
}

void DOCItemCollectionViewController.inlineRenameController.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    if (!*(v4 + v3[4]))
    {
      *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preparingForInlineRename) = 0;
    }
  }

  free(v3);
}

void DOCItemCollectionViewController.updateNavBarHiddenForActiveRename(traitCollection:)(void *a1)
{
  if ([a1 verticalSizeClass] == 1)
  {
    v3 = 1;
    goto LABEL_8;
  }

  v4 = [a1 preferredContentSizeCategory];
  if (UIContentSizeCategory.isAccessibilityCategory.getter())
  {
    v5 = static UIContentSizeCategory.> infix(_:_:)();

    if (v5)
    {
      v3 = [a1 horizontalSizeClass] == 1;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v3 = 0;
LABEL_8:
  v6 = [v1 navigationController];
  DOCItemCollectionViewController.applyNavBarHidden(_:to:animated:)(v3, v6, 1);
}

void DOCItemCollectionViewController.applyNavBarHidden(_:to:animated:)(char a1, void *a2, int a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v41 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchTime();
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23.n128_f64[0] = MEMORY[0x28223BE20](v19, v20);
  v25 = &v34 - v24;
  if (a2)
  {
    v43 = a3;
    if (a1)
    {
      *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_wantsNavBarHiddenForRenaming) = 1;
    }

    else
    {
      if (a3)
      {
        v39 = v21;
        v40 = v22;
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
        v27 = a2;
        v35 = v3;
        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        UIAnimationDragCoefficient();
        + infix(_:_:)();
        v28 = *(v40 + 8);
        v40 += 8;
        v38 = v28;
        v28(v18, v39);
        v29 = swift_allocObject();
        v30 = v35;
        *(v29 + 16) = v35;
        aBlock[4] = partial apply for closure #1 in DOCItemCollectionViewController.applyNavBarHidden(_:to:animated:);
        aBlock[5] = v29;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        aBlock[3] = &block_descriptor_895;
        v36 = _Block_copy(aBlock);
        v31 = v30;

        static DispatchQoS.unspecified.getter();
        aBlock[0] = MEMORY[0x277D84F90];
        v35 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
        lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v33 = v36;
        v32 = v37;
        MEMORY[0x24C1FB940](v25, v14, v10, v36);
        _Block_release(v33);

        (*(v42 + 8))(v10, v7);
        (*(v41 + 8))(v14, v11);
        v38(v25, v39);
LABEL_11:
        [a2 setNavigationBarHidden:a1 & 1 animated:v43 & 1];

        return;
      }

      *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_wantsNavBarHiddenForRenaming) = 0;
    }

    (*((*MEMORY[0x277D85000] & *v3) + 0xF60))(a2);
    goto LABEL_11;
  }

  *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_wantsNavBarHiddenForRenaming) = a1 & 1;
  v26 = *((*MEMORY[0x277D85000] & *v3) + 0xF60);

  v26(v23);
}

uint64_t closure #3 in DOCItemCollectionViewController.move(nodes:to:completion:)(unint64_t a1, uint64_t (*a2)(BOOL))
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.UI);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315906;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x8000000249BE0F20, &v16);
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 != 0;
    *(v7 + 18) = 2080;
    if (a1 && a1 >> 62)
    {
      __CocoaSet.count.getter();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v16);

    *(v7 + 20) = v11;
    *(v7 + 28) = 2080;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7DOCNode_pGSgMd);
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v16);

    *(v7 + 30) = v14;
    _os_log_impl(&dword_2493AC000, v5, v6, "%s Requested move finished with success: %{BOOL}d moved: %s nodes. Nodes: %s", v7, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v8, -1, -1);
    MEMORY[0x24C1FE850](v7, -1, -1);
  }

  return a2(a1 != 0);
}

Swift::Void __swiftcall DOCItemCollectionViewController.loadView()()
{
  v1 = v0;
  v54.receiver = v0;
  v54.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  v2 = objc_msgSendSuper2(&v54, sel_loadView);
  v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_collectionViewPool);
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v0) + 0xFC8);
  v6 = (v5)(v2);
  v50 = v0;
  v7 = (*((*v4 & *v3) + 0x60))(v6, partial apply for closure #1 in DOCItemCollectionViewController.loadView(), &v49);

  v8 = v5();
  v9 = &v8[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout_outlineDelegate];
  swift_beginAccess();
  *(v9 + 1) = &protocol witness table for DOCItemCollectionViewController;
  swift_unknownObjectWeakAssign();

  v10 = *((*v4 & *v1) + 0x1298);
  v11 = v7;
  [v11 setAllowsMultipleSelection_];
  v12 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  [v11 setAllowsMultipleSelectionDuringEditing_];
  [v11 setAllowsFocus_];
  [v11 setSelectionFollowsFocus_];
  [v11 _setShouldBecomeFocusedOnSelection_];
  v13 = v11;
  v14 = DOCFocusGroupIdentifierBrowserFromConfiguration();
  if (!v14)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = MEMORY[0x24C1FAD20](v15);
  }

  [v13 setFocusGroupIdentifier_];

  (*((*v4 & *v13) + 0x178))(0);
  [v13 setKeyboardDismissMode_];
  [v1 setRestoresFocusAfterTransition_];
  v16 = type metadata accessor for DOCItemCollectionGridCell();
  DOCItemCollectionViewController.registerItemCellClass(_:forCellWithReuseIdentifier:)(v16, *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionGridCellIdentifier), *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionGridCellIdentifier + 8));
  v17 = type metadata accessor for DOCItemCollectionListCell(0);
  DOCItemCollectionViewController.registerItemCellClass(_:forCellWithReuseIdentifier:)(v17, *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionListCellIdentifier), *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionListCellIdentifier + 8));
  v18 = type metadata accessor for DOCItemCollectionLargeTextListCell(0);
  DOCItemCollectionViewController.registerItemCellClass(_:forCellWithReuseIdentifier:)(v18, *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionLargeTextListCellIdentifier), *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionLargeTextListCellIdentifier + 8));
  v19 = type metadata accessor for DOCItemCollectionOutlineCell();
  DOCItemCollectionViewController.registerItemCellClass(_:forCellWithReuseIdentifier:)(v19, *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionOutlineCellIdentifier), *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionOutlineCellIdentifier + 8));
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionReusableView);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = MEMORY[0x24C1FAD20](0xD000000000000024, 0x8000000249BC6130);
  v22 = MEMORY[0x24C1FAD20](*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionHeaderIdentifier), *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionHeaderIdentifier + 8));
  [v13 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v21 withReuseIdentifier:v22];

  type metadata accessor for DOCItemCollectionViewController.FooterView();
  v23 = swift_getObjCClassFromMetadata();
  v24 = MEMORY[0x24C1FAD20](0xD000000000000024, 0x8000000249BC5E50);
  v25 = MEMORY[0x24C1FAD20](*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionFooterIdentifier), *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionFooterIdentifier + 8));
  [v13 registerClass:v23 forSupplementaryViewOfKind:v24 withReuseIdentifier:v25];

  v26 = MEMORY[0x24C1FAD20](0xD000000000000024, 0x8000000249BC5E50);
  v27 = MEMORY[0x24C1FAD20](*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionEmptyFooterIdentifier), *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionEmptyFooterIdentifier + 8));
  [v13 registerClass:v23 forSupplementaryViewOfKind:v26 withReuseIdentifier:v27];

  type metadata accessor for DOCItemCollectionViewSectionHeader();
  v28 = swift_getObjCClassFromMetadata();
  if (one-time initialization token for sectionHeader != -1)
  {
    swift_once();
  }

  v29 = MEMORY[0x24C1FAD20](static DOCItemCollectionViewController.ElementKind.sectionHeader, *algn_27EF18858);
  v30 = MEMORY[0x24C1FAD20](*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionGroupedSectionHeaderIdentifier), *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionGroupedSectionHeaderIdentifier + 8));
  [v13 registerClass:v28 forSupplementaryViewOfKind:v29 withReuseIdentifier:v30];

  type metadata accessor for DOCOutlineHeaderView();
  v31 = swift_getObjCClassFromMetadata();
  v32 = MEMORY[0x24C1FAD20](0xD000000000000021, 0x8000000249BCE120);
  v33 = MEMORY[0x24C1FAD20](0xD000000000000021, 0x8000000249BCE120);
  [v13 registerClass:v31 forSupplementaryViewOfKind:v32 withReuseIdentifier:v33];

  v34 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v34)
  {
    v35 = (*((*v4 & *v34) + 0x180))();
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    if (v35)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables25DOCNodeDiffableDataSourceCySo6FINodeCGMd);
      v37 = swift_allocObject();
      *(v37 + 16) = 0;
      v38 = swift_allocObject();
      *(v38 + 16) = partial apply for closure #2 in DOCItemCollectionViewController.loadView();
      *(v38 + 24) = v36;
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables20DOCCollectionSectionVSo6FINodeCGMd));

      v39 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
      v40 = &OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_fiNodeDataSource;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables25DOCNodeDiffableDataSourceCySo6FPItemCGMd);
      v37 = swift_allocObject();
      *(v37 + 16) = 0;
      v41 = swift_allocObject();
      *(v41 + 16) = partial apply for closure #3 in DOCItemCollectionViewController.loadView();
      *(v41 + 24) = v36;
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables20DOCCollectionSectionVSo6FPItemCGMd));

      v39 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
      v40 = &OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_fpNodeDataSource;
    }

    *(v37 + 16) = v39;

    *(v1 + *v40) = v37;

    v43 = (*((*v4 & *v1) + 0x820))(v51, v42);
    if (v52)
    {
      v44 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v45 = v52;
      v46 = v53;
      __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
      v43 = (*(v46 + 16))(partial apply for closure #4 in DOCItemCollectionViewController.loadView(), v44, v45, v46);
    }

    v47 = (*((*v4 & *v1) + 0xA78))(v43);
    if (v47)
    {
      swift_getObjectType();
      v48 = swift_allocObject();
      swift_unknownObjectWeakInit();

      DOCNode.fpfs_fetchFPItem(completion:)(partial apply for closure #5 in DOCItemCollectionViewController.loadView(), v48);

      v47 = swift_unknownObjectRelease();
    }

    [v13 setHidden_];

    outlined destroy of CharacterSet?(v51, &_s26DocumentManagerExecutables33DOCNodeDiffableDataSourceProtocol_pSgMd);
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in DOCItemCollectionViewController.loadView()(void *a1, char *a2)
{
  v4 = [a2 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_19;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [objc_allocWithZone(type metadata accessor for DOCOuterScrollView()) initWithFrame_];
  [v14 setAutoresizingMask_];
  v15 = [a2 view];
  if (!v15)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v16 = v15;
  [v15 addSubview_];

  v17 = MEMORY[0x277D85000];
  v18 = *((*MEMORY[0x277D85000] & *a2) + 0xB28);
  v19 = v14;
  v20 = v18(v14);
  v21 = *((*v17 & *a2) + 0xB20);
  v22 = (v21)(v20);
  if (v22)
  {
    v23 = v22;
    [v22 setDelegate_];
  }

  v24 = v21();
  if (v24)
  {
    v25 = v24;
    [v24 setContentInsetAdjustmentBehavior_];
  }

  v26 = v21();
  if (v26)
  {
    v27 = v26;
    [v26 setScrollEnabled_];
  }

  [a1 setContentInsetAdjustmentBehavior_];
  [a1 setAlpha_];
  [a1 setPreservesSuperviewLayoutMargins_];
  [a1 setAutoresizingMask_];
  [v19 addSubview_];
  v28 = *&a2[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__loadedCollectionView];
  *&a2[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__loadedCollectionView] = a1;
  v29 = a1;

  v30 = *((*v17 & *v29) + 0x150);
  v31 = a2;
  v30(a2);
  [v31 setContentScrollView:v29 forEdge:15];
  (*((*v17 & *v31) + 0x210))(1);
  [v29 setPrefetchDataSource_];
  [v29 setPrefetchingEnabled_];
  [v29 setDelegate_];
  v32 = *((*v17 & *v29) + 0x110);
  swift_unknownObjectRetain();
  v32(a2, &protocol witness table for DOCItemCollectionViewController);
  v33 = *((*v17 & *v29) + 0xA8);
  swift_unknownObjectRetain();
  v33(a2, &protocol witness table for DOCItemCollectionViewController);
  v34 = *((*v17 & *v29) + 0xE0);
  swift_unknownObjectRetain();
  v35 = v34(a2, &protocol witness table for DOCItemCollectionViewController);
  (*((*v17 & *v31) + 0xA50))(v42, v35);
  v37 = v42[5];
  v36 = v42[6];

  outlined destroy of DOCItemCollectionConfiguration(v42);
  if (v36)
  {
    v38 = MEMORY[0x24C1FAD20](v37, v36);
  }

  else
  {
    v38 = 0;
  }

  [v29 setAccessibilityIdentifier_];

  if ([*&v31[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration] collectionSupportsDragAndDrop])
  {
    [v29 setDragDelegate_];
    [v29 setDropDelegate_];
    [v29 setDragInteractionEnabled_];
  }

  v39 = [v31 effectiveAppearance];
  if (!v39 || (v40 = v39, v41 = [v39 backgroundColor], v40, !v41))
  {
    v41 = [objc_opt_self() systemBackgroundColor];
  }

  [v29 setBackgroundColor_];
}

void DOCItemCollectionViewController.registerItemCellClass(_:forCellWithReuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = MEMORY[0x277D85000];
  v8 = (*((*MEMORY[0x277D85000] & *v3) + 0x930))(v17);
  v10 = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v10;
  *v10 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);
  *v10 = v16;

  v12 = v8(v17, 0);
  v13 = (*((*v7 & *v3) + 0x1010))(v12);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = MEMORY[0x24C1FAD20](a2, a3);
  [v13 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v15];
}

void *closure #2 in DOCItemCollectionViewController.loadView()(void *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = DOCItemCollectionViewController._collectionView(_:cellForNode:at:)(a1, a3, a2);

    return v13;
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.UI);
    (*(v7 + 16))(v10, a2, v6);
    swift_unknownObjectRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27 = v19;
      *v18 = 136315394;
      swift_getObjectType();
      v20 = DOCNode.nodeDescription.getter();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v27);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      (*(v7 + 8))(v10, v6);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v27);

      *(v18 + 14) = v26;
      _os_log_impl(&dword_2493AC000, v16, v17, "Collection view asked for cell for item %s at index path %s but none was returned [self was deallocated].", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v19, -1, -1);
      MEMORY[0x24C1FE850](v18, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    return [objc_allocWithZone(MEMORY[0x277D752A8]) init];
  }
}

id closure #4 in DOCItemCollectionViewController.loadView()(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v39 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if (a2 == 0xD000000000000024 && 0x8000000249BC6130 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v18 = DOCItemCollectionViewController.supplementaryViewForGlobalHeader(with:at:)(a2, a3);
    }

    else if (a2 == 0xD000000000000024 && 0x8000000249BC5E50 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v18 = DOCItemCollectionViewController.supplementaryViewForGlobalFooter(with:at:)(a2, a3);
    }

    else
    {
      if (one-time initialization token for sectionHeader != -1)
      {
        swift_once();
      }

      if (static DOCItemCollectionViewController.ElementKind.sectionHeader == a2 && *algn_27EF18858 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((*((*MEMORY[0x277D85000] & *v17) + 0xEF8))() & 1) != 0 || a2 == 0xD000000000000021 && 0x8000000249BCE120 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        v18 = DOCItemCollectionViewController.supplementaryViewForSectionHeader(with:at:)(a2, a3);
      }

      else
      {
        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        __swift_project_value_buffer(v30, static Logger.UI);
        (*(v8 + 16))(v15, a4, v7);

        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v41 = v40;
          *v33 = 136315394;
          *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v41);
          *(v33 + 12) = 2080;
          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
          v34 = dispatch thunk of CustomStringConvertible.description.getter();
          v36 = v35;
          (*(v8 + 8))(v15, v7);
          v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v41);

          *(v33 + 14) = v37;
          _os_log_impl(&dword_2493AC000, v31, v32, "Collection view asked for supplementary view of kind %s at index path %s but none was returned.", v33, 0x16u);
          v38 = v40;
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v38, -1, -1);
          MEMORY[0x24C1FE850](v33, -1, -1);
        }

        else
        {

          (*(v8 + 8))(v15, v7);
        }

        v18 = [objc_allocWithZone(MEMORY[0x277D75298]) init];
      }
    }

    v19 = v18;

    return v19;
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.UI);
    (*(v8 + 16))(v11, a4, v7);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v41 = v25;
      *v24 = 136315394;
      *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v41);
      *(v24 + 12) = 2080;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v8 + 8))(v11, v7);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v41);

      *(v24 + 14) = v29;
      _os_log_impl(&dword_2493AC000, v22, v23, "Collection view asked for supplementary view of kind %s at index path %s but none was returned [self was deallocated].", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v25, -1, -1);
      MEMORY[0x24C1FE850](v24, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }

    return [objc_allocWithZone(MEMORY[0x277D75298]) init];
  }
}

id DOCItemCollectionViewController.supplementaryViewForGlobalHeader(with:at:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x277D85000];
  v7 = (*((*MEMORY[0x277D85000] & *v2) + 0x1010))();
  v8 = MEMORY[0x24C1FAD20](a1, a2);
  v9 = MEMORY[0x24C1FAD20](*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionHeaderIdentifier), *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionHeaderIdentifier + 8));
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v11 = [v7 dequeueReusableSupplementaryViewOfKind:v8 withReuseIdentifier:v9 forIndexPath:isa];

  v12 = v11;
  v13 = [v12 subviews];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v14 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }

LABEL_8:
    v16 = 0;
    goto LABEL_9;
  }

  if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x24C1FC540](0, v14);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_17:
      swift_once();
      goto LABEL_12;
    }

    v15 = *(v14 + 32);
  }

  v16 = v15;
LABEL_9:

  [v16 removeFromSuperview];

  if (DOCItemCollectionViewController.needsHeaderView.getter())
  {
    v17 = DOCItemCollectionViewController._headerContainerView.getter();
    (*((*v6 & *v3) + 0x10D8))();
    v18 = v17;
    [v12 addSubview_];
    v19 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_249BA0470;
    v21 = [v18 leadingAnchor];
    v22 = [v12 layoutMarginsGuide];
    v23 = [v22 leadingAnchor];

    v24 = [v21 constraintEqualToAnchor:v23 constant:20.0];
    *(v20 + 32) = v24;
    v25 = [v18 trailingAnchor];

    v26 = [v12 layoutMarginsGuide];
    v27 = [v26 trailingAnchor];

    v28 = [v25 constraintEqualToAnchor:v27 constant:-20.0];
    *(v20 + 40) = v28;
    v29 = [v18 bottomAnchor];

    v30 = [v12 bottomAnchor];
    v31 = [v29 constraintEqualToAnchor_];

    *(v20 + 48) = v31;
    v32 = [v18 topAnchor];

    v33 = [v12 topAnchor];
    v34 = [v32 constraintEqualToAnchor_];

    *(v20 + 56) = v34;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    v35.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v19 activateConstraints_];

    goto LABEL_14;
  }

  if (one-time initialization token for UI != -1)
  {
    goto LABEL_17;
  }

LABEL_12:
  v36 = type metadata accessor for Logger();
  __swift_project_value_buffer(v36, static Logger.UI);
  v35.super.isa = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35.super.isa, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_2493AC000, v35.super.isa, v37, "Collection view requested global header but headerContainerView is nil, returning an empty view.", v38, 2u);
    MEMORY[0x24C1FE850](v38, -1, -1);
  }

LABEL_14:

  return v12;
}

uint64_t DOCItemCollectionViewController.supplementaryViewForGlobalFooter(with:at:)(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v2) + 0x11C0))();
  if (!v6 || (v7 = (*(*v6 + 320))(v6), , (v7 & 1) == 0) || (v8 = specialized DOCItemCollectionViewController.footerView(createIfNeeded:)(1)) == 0)
  {
    v23 = (*((*v5 & *v2) + 0x1010))();
    v24 = MEMORY[0x24C1FAD20](a1, a2);
    v25 = MEMORY[0x24C1FAD20](*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionEmptyFooterIdentifier), *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionEmptyFooterIdentifier + 8));
    v26.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v16 = [v23 dequeueReusableSupplementaryViewOfKind:v24 withReuseIdentifier:v25 forIndexPath:v26.super.isa];

LABEL_11:
    return v16;
  }

  v9 = *((*v5 & *v2) + 0x1010);
  v10 = v8;
  v11 = v9();
  v12 = MEMORY[0x24C1FAD20](a1, a2);
  v13 = MEMORY[0x24C1FAD20](*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionFooterIdentifier), *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionFooterIdentifier + 8));
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v15 = [v11 dequeueReusableSupplementaryViewOfKind:v12 withReuseIdentifier:v13 forIndexPath:isa];

  type metadata accessor for DOCItemCollectionViewController.FooterView();
  v16 = swift_dynamicCastClassUnconditional();
  v17 = v15;
  v18 = [v16 subviews];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v19 >> 62))
  {
    result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_13:
    v22 = 0;
    goto LABEL_14;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x24C1FC540](0, v19);
    goto LABEL_9;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(v19 + 32);
LABEL_9:
    v22 = v21;
LABEL_14:

    [v22 removeFromSuperview];

    v26.super.isa = v10;
    [v16 addSubview_];
    [(objc_class *)v26.super.isa setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_249BA0470;
    v29 = [(objc_class *)v26.super.isa leadingAnchor];
    v30 = [v16 leadingAnchor];
    v31 = [v29 constraintEqualToAnchor_];

    *(v28 + 32) = v31;
    v32 = [(objc_class *)v26.super.isa trailingAnchor];

    v33 = [v16 trailingAnchor];
    v34 = [v32 constraintEqualToAnchor_];

    *(v28 + 40) = v34;
    v35 = [(objc_class *)v26.super.isa topAnchor];

    v36 = [v16 topAnchor];
    v37 = [v35 constraintEqualToAnchor_];

    *(v28 + 48) = v37;
    v38 = [(objc_class *)v26.super.isa bottomAnchor];

    v39 = [v16 bottomAnchor];
    v40 = [v38 constraintEqualToAnchor_];

    *(v28 + 56) = v40;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    v25 = Array._bridgeToObjectiveC()().super.isa;

    [v27 activateConstraints_];
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void *DOCItemCollectionViewController.supplementaryViewForSectionHeader(with:at:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (MEMORY[0x24C1F8130]() == 2)
  {
    v6 = IndexPath.section.getter();
  }

  else
  {
    type metadata accessor for IndexPath();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
    dispatch thunk of Collection.startIndex.getter();
    result = dispatch thunk of Collection.endIndex.getter();
    if (v81 == v76)
    {
      goto LABEL_24;
    }

    v8 = dispatch thunk of Collection.subscript.read();
    v6 = *v9;
    v8(&v76, 0);
  }

  result = (*((*MEMORY[0x277D85000] & *v2) + 0x820))(&v76);
  v10 = v78;
  if (v78)
  {
    v11 = v79;
    __swift_project_boxed_opaque_existential_1(&v76, v78);
    (*(v11 + 96))(&v81, v6, v10, v11);
    v12 = v81;
    v13 = v83;
    v74 = v82;
    v75 = v84;
    __swift_destroy_boxed_opaque_existential_0(&v76);
    if ((a1 != 0xD000000000000021 || 0x8000000249BCE120 != a2) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if ((*((*MEMORY[0x277D85000] & *v2) + 0xBD8))() != 2)
      {
        goto LABEL_21;
      }

      if (one-time initialization token for sectionHeader != -1)
      {
        swift_once();
      }

      if ((static DOCItemCollectionViewController.ElementKind.sectionHeader != a1 || *algn_27EF18858 != a2) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
LABEL_21:
        v65 = v13;
        v66 = (*((*MEMORY[0x277D85000] & *v2) + 0x1010))();
        v67 = MEMORY[0x24C1FAD20](a1, a2);
        v68 = MEMORY[0x24C1FAD20](*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionGroupedSectionHeaderIdentifier), *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionGroupedSectionHeaderIdentifier + 8));
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v70 = [v66 dequeueReusableSupplementaryViewOfKind:v67 withReuseIdentifier:v68 forIndexPath:isa];

        type metadata accessor for DOCItemCollectionViewSectionHeader();
        v20 = swift_dynamicCastClassUnconditional();
        v76 = v12;
        v77 = v74;
        v78 = v65;
        v79 = v75;
        DOCItemCollectionViewController.configure(sectionHeader:with:)(v20, &v76);

LABEL_14:

        return v20;
      }
    }

    v72 = v13;
    v14 = MEMORY[0x277D85000];
    v71 = *((*MEMORY[0x277D85000] & *v2) + 0x1010);
    v15 = v71();
    v16 = MEMORY[0x24C1FAD20](a1, a2);
    v17 = MEMORY[0x24C1FAD20](0xD000000000000021, 0x8000000249BCE120);
    v18 = IndexPath._bridgeToObjectiveC()().super.isa;
    v19 = [v15 dequeueReusableSupplementaryViewOfKind:v16 withReuseIdentifier:v17 forIndexPath:v18];

    type metadata accessor for DOCOutlineHeaderView();
    v20 = swift_dynamicCastClassUnconditional();
    v73 = *((*v14 & *v20) + 0xC0);
    v21 = v73();
    v22 = (*((*v14 & *v3) + 0xB08))();
    swift_beginAccess();
    v23 = *(v22 + 80);
    v24 = *(v22 + 88);
    v25 = *(v22 + 96);
    v27 = *(v22 + 104);
    v26 = *(v22 + 112);

    LOBYTE(v76) = v23;
    *(&v76 + 1) = v24;
    v77 = v25;
    v28 = MEMORY[0x277D85000];
    v78 = v27;
    v79 = v26;
    (*((*MEMORY[0x277D85000] & *v21) + 0x418))(&v76);

    v29 = *((*v28 & *v20) + 0xE0);
    v30 = swift_unknownObjectRetain();
    v31 = v29(v30, &protocol witness table for DOCItemCollectionViewController);
    v32 = (v73)(v31);
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = *((*v28 & *v32) + 0x2D0);

    v34(partial apply for closure #1 in DOCItemCollectionViewController.supplementaryViewForSectionHeader(with:at:), v33);

    v36 = (v73)(v35);
    v37 = DOCItemCollectionViewController.shouldPreserveSpaceForDisclosureButton.getter();
    (*((*v28 & *v36) + 0x330))(v37 & 1);

    v38 = v73();
    result = [v3 view];
    if (result)
    {
      v39 = result;
      [result bounds];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;

      v85.origin.x = v41;
      v85.origin.y = v43;
      v85.size.width = v45;
      v85.size.height = v47;
      Width = CGRectGetWidth(v85);
      v49 = (*((*v28 & *v3) + 0xB20))();
      if (v49)
      {
        v50 = v49;
        [v49 contentOffset];
        v52 = v51;
      }

      else
      {
        v52 = 0;
      }

      v53 = v71();
      [v53 safeAreaInsets];
      v55 = v54;
      v57 = v56;
      v59 = v58;
      v61 = v60;

      *&v76 = Width;
      *(&v76 + 1) = v52;
      v77 = v55;
      v78 = v57;
      v79 = v59;
      v80 = v61;
      (*((*v28 & *v38) + 0x2B8))(&v76);

      v62 = v73();
      (*((*v28 & *v3) + 0x1160))(&v76);
      v81 = v76;
      v82 = v77;
      LOBYTE(v83) = v78;
      (*((*v28 & *v62) + 0x318))(&v81);

      v63 = v73();
      v64 = *((*v28 & *v63) + 0x240);

      v64(v74, v72);

      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t closure #5 in DOCItemCollectionViewController.loadView()(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = a1;

  DOCRunInMainThread(_:)();
}

void closure #1 in closure #5 in DOCItemCollectionViewController.loadView()(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v24 - v4;
  v6 = type metadata accessor for FINodeEntity();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8, v9);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v24 - v13;
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = Strong;
      v17 = a1;
      FINodeEntity.init(item:)(v17, v14);
      v18 = type metadata accessor for TaskPriority();
      (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
      outlined init with copy of ScrollPositionInfo.ItemOffset(v14, v10, type metadata accessor for FINodeEntity);
      type metadata accessor for MainActor();
      v19 = v16;
      v20 = static MainActor.shared.getter();
      v21 = (*(v7 + 80) + 40) & ~*(v7 + 80);
      v22 = swift_allocObject();
      v23 = MEMORY[0x277D85700];
      v22[2] = v20;
      v22[3] = v23;
      v22[4] = v19;
      outlined init with take of ScrollPositionInfo.ItemOffset(v10, v22 + v21, type metadata accessor for FINodeEntity);
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in DOCItemCollectionViewController.setCurrentPrimaryEntity(with:), v22);

      outlined destroy of RestorableSettings(v14, type metadata accessor for FINodeEntity);
    }
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.viewDidLoad()()
{
  v1 = v0;
  v25.receiver = v0;
  v25.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  v2 = objc_msgSendSuper2(&v25, sel_viewDidLoad);
  v3 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v0) + 0x1010);
  v5 = (v4)(v2);
  [v5 setShowsHorizontalScrollIndicator_];

  v6 = v4();
  [v6 _setShouldPersistSelectionOnReloadDataWhenPossible_];

  v7 = objc_opt_self();
  v8 = [v7 defaultCenter];
  if (one-time initialization token for DOCItemCollectionDidUpdateIsScrollEnabled != -1)
  {
    swift_once();
  }

  [v8 addObserver:v1 selector:? name:? object:?];

  v9 = [v7 defaultCenter];
  if (one-time initialization token for DOCItemCollectionDidUpdateContentOffset != -1)
  {
    swift_once();
  }

  [v9 addObserver:v1 selector:? name:? object:?];

  v10 = [v7 defaultCenter];
  [v10 addObserver:v1 selector:sel_resizeColumnsIfNeeded name:*MEMORY[0x277D76810] object:0];

  DOCItemCollectionViewController.installSceneSnapshotWorkaround()();
  (*((*v3 & *v1) + 0x16E8))([v1 isEditing], 0);
  DOCItemCollectionViewController.displayModeDidChange()();
  DOCItemCollectionViewController.applyRestorableSettingsIfStillEnqueued(force:)(0);
  v11 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v11)
  {
    (*((*v3 & *v11) + 0x1D0))();
    v12 = DOCItemCollectionViewController.notificationsController.getter();
    if (one-time initialization token for DOCCollaborationHighlightManagerHighlightsDidChange != -1)
    {
      swift_once();
    }

    v13 = static NSNotificationName.DOCCollaborationHighlightManagerHighlightsDidChange;
    v14 = [objc_opt_self() mainQueue];
    (*(*v12 + 144))(v13, v24, v14, closure #1 in DOCItemCollectionViewController.viewDidLoad(), 0);

    v15 = outlined destroy of CharacterSet?(v24, &_sypSgMd);
    if (((*((*v3 & *v1) + 0xF18))(v15) & 1) == 0)
    {
      goto LABEL_14;
    }

    v16 = [v1 view];
    if (v16)
    {
      v17 = v16;
      v18 = [v1 effectiveAppearance];
      if (!v18 || (v19 = v18, v20 = [v18 backgroundColor], v19, !v20))
      {
        v20 = [objc_opt_self() systemBackgroundColor];
      }

      [v17 setBackgroundColor_];

LABEL_14:
      v21 = [objc_opt_self() shared];
      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24[4] = partial apply for closure #1 in DOCItemCollectionViewController.setUpSyncStateHeaderView();
      v24[5] = v22;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 1107296256;
      v24[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v24[3] = &block_descriptor_119_0;
      v23 = _Block_copy(v24);

      [v21 performAfterLaunch_];
      _Block_release(v23);

      v24[0] = (*((*v3 & *v1) + 0xD18))();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd);
      lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySbs5NeverOGMd);
      Publisher<>.sink(receiveValue:)();

      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t closure #1 in DOCItemCollectionViewController.viewDidLoad()(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  (*(v5 + 16))(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4, v8);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v11 = a1;
  DOCRunInMainThread(_:)();
}

uint64_t closure #1 in closure #1 in DOCItemCollectionViewController.viewDidLoad()(uint64_t a1, void *a2)
{
  v3 = Notification.userInfo.getter();
  if (!v3)
  {
    goto LABEL_24;
  }

  v4 = v3;
  v34 = 0xD000000000000012;
  v35 = 0x8000000249BD9600;
  AnyHashable.init<A>(_:)();
  if (!*(v4 + 16) || (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v36), (v6 & 1) == 0))
  {
LABEL_23:

    outlined destroy of AnyHashable(v36);
LABEL_24:
    v37 = 0u;
    v38 = 0u;
    goto LABEL_25;
  }

  outlined init with copy of Any(*(v4 + 56) + 32 * v5, &v37);
  outlined destroy of AnyHashable(v36);

  if (!*(&v38 + 1))
  {
LABEL_25:
    v7 = outlined destroy of CharacterSet?(&v37, &_sypSgMd);
    goto LABEL_26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  v7 = swift_dynamicCast();
  if ((v7 & 1) == 0)
  {
LABEL_26:
    v25 = (*((*MEMORY[0x277D85000] & *a2) + 0xD60))(v7);
    LOWORD(v36[0]) = 257;
    DOCItemCollectionViewController.updateSnapshot(for:using:maintainSelection:)(v25, v36, 0);
  }

  v32 = v36[0];
  v8 = MEMORY[0x277D85000];
  v9 = (*((*MEMORY[0x277D85000] & *a2) + 0xCB8))();
  v10 = v9;
  *&v37 = MEMORY[0x277D84F90];
  if (v9 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v12 = 0;
    v8 = (v10 & 0xC000000000000001);
    v33 = v10 & 0xFFFFFFFFFFFFFF8;
    v30 = v10 & 0xC000000000000001;
    v31 = v10;
    while (1)
    {
      if (v8)
      {
        v13 = MEMORY[0x24C1FC540](v12, v10);
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        goto LABEL_14;
      }

      if (v12 >= *(v33 + 16))
      {
        break;
      }

      v13 = *(v10 + 8 * v12 + 32);
      swift_unknownObjectRetain();
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_22;
      }

LABEL_14:
      v15 = [v13 fpfs_fpItem];
      if (v15 && (v16 = v15, v17 = [v15 collaborationIdentifier], v16, v17))
      {
        v18 = i;
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        v36[0] = v19;
        v36[1] = v21;
        MEMORY[0x28223BE20](v22, v23);
        v29[2] = v36;
        v24 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v29, v32);

        if (v24)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        i = v18;
        v8 = v30;
        v10 = v31;
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v12;
      if (v14 == i)
      {
        v27 = v37;
        v8 = MEMORY[0x277D85000];
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_30:
    ;
  }

  v27 = MEMORY[0x277D84F90];
LABEL_32:

  v28 = (*((*v8 & *a2) + 0xDB0))(v27);

  (*((*v8 & *a2) + 0x1828))(v28);
}

Swift::Void __swiftcall DOCItemCollectionViewController.resizeColumnsIfNeeded()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v24 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v22 - v16;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v22 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v23 = *(v10 + 8);
  v23(v13, v9);
  v18 = swift_allocObject();
  *(v18 + 16) = v0;
  aBlock[4] = partial apply for closure #1 in DOCItemCollectionViewController.resizeColumnsIfNeeded();
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_126;
  v19 = _Block_copy(aBlock);
  v20 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = v22;
  MEMORY[0x24C1FB940](v17, v8, v4, v19);
  _Block_release(v19);

  (*(v27 + 8))(v4, v1);
  (*(v25 + 8))(v8, v26);
  v23(v17, v24);
}

void closure #1 in DOCItemCollectionViewController.resizeColumnsIfNeeded()(void *a1)
{
  if ((*((*MEMORY[0x277D85000] & *a1) + 0xBD8))() == 2)
  {
    DOCItemCollectionViewController.resize(_:forceLayout:)(0, 1, 1);
  }
}

void __swiftcall DOCItemCollectionViewController.RestorableConfiguration.init(scrollView:)(DocumentManagerExecutables::DOCItemCollectionViewController::RestorableConfiguration *__return_ptr retstr, UIScrollView *scrollView)
{
  v4 = [(UIScrollView *)scrollView traitCollection];
  [(UIScrollView *)scrollView frame];
  v6 = v5;
  v8 = v7;
  [(UIScrollView *)scrollView contentOffset];
  v10 = v9;
  v12 = v11;

  retstr->traitCollection.super.isa = v4;
  retstr->size.width = v6;
  retstr->size.height = v8;
  retstr->restoreableOffset.x = v10;
  retstr->restoreableOffset.y = v12;
}

CGPoint_optional __swiftcall DOCItemCollectionViewController.RestorableConfiguration.offsetToRestore(for:size:)(UITraitCollection a1, CGSize size)
{
  v3 = v2;
  height = size.height;
  width = size.width;
  if (one-time initialization token for hSizeClass != -1)
  {
    swift_once();
  }

  v22 = static UITraitCollection.Traits.hSizeClass;
  v23 = qword_27EEE9C60;
  v6 = one-time initialization token for vSizeClass;

  if (v6 != -1)
  {
    swift_once();
  }

  v24 = static UITraitCollection.Traits.vSizeClass;
  v25 = qword_27EEE9C78;
  v7 = one-time initialization token for sizeCategory;

  if (v7 != -1)
  {
    swift_once();
  }

  v26 = static UITraitCollection.Traits.sizeCategory;
  v27 = qword_27EEE9CC0;

  _StringGuts.grow(_:)(18);

  *v21 = 0x6172287469617254;
  *&v21[8] = 0xEF3A65756C615677;
  v20[0] = 0;
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v8);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  v9 = *v21;
  *v21 = 0;
  *&v21[8] = v9;

  specialized OptionSet<>.insert(_:)(v20, v22, *(&v22 + 1), v23);

  v11 = *(&v24 + 1);
  v10 = v25;
  v12 = v24;

  specialized OptionSet<>.insert(_:)(v20, v12, v11, v10);

  v14 = *(&v26 + 1);
  v13 = v27;
  v15 = v26;

  specialized OptionSet<>.insert(_:)(v20, v15, v14, v13);

  swift_arrayDestroy();
  v16 = UITraitCollection.doc_hasChanged(_:comparesTo:)(v21, *v3);

  if ((v16 & 1) == 0 && (v17 = *(v3 + 8), v17 == width) && (v17 = *(v3 + 16), v17 == height))
  {
    v19 = *(v3 + 24);
  }

  else
  {
    LOBYTE(v19) = 0;
  }

  result.value.y = v18;
  result.value.x = v17;
  result.is_nil = v19;
  return result;
}

uint64_t DOCItemCollectionViewController.notificationsController.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___notificationsController;
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___notificationsController))
  {
    v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___notificationsController);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14NSNotificationC26DocumentManagerExecutablesE23SubscriptionsControllerCy_AC021DOCItemCollectionViewF0CGMd);
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v2 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObject_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t DOCItemCollectionViewController.installSceneSnapshotWorkaround()()
{
  v1 = v0;
  v2 = DOCItemCollectionViewController.notificationsController.getter();
  v3 = *MEMORY[0x277D77530];
  v4 = objc_opt_self();
  v5 = [v4 mainQueue];
  (*(*v2 + 144))(v3, v10, v5, closure #1 in DOCItemCollectionViewController.installSceneSnapshotWorkaround(), 0);

  outlined destroy of CharacterSet?(v10, &_sypSgMd);
  v6 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___notificationsController);
  v7 = *MEMORY[0x277D77520];
  memset(v10, 0, sizeof(v10));

  v8 = [v4 mainQueue];
  (*(*v6 + 144))(v7, v10, v8, closure #2 in DOCItemCollectionViewController.installSceneSnapshotWorkaround(), 0);

  return outlined destroy of CharacterSet?(v10, &_sypSgMd);
}

void closure #1 in DOCItemCollectionViewController.installSceneSnapshotWorkaround()(void *a1)
{
  v2 = (*((*MEMORY[0x277D85000] & *a1) + 0x1018))();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 traitCollection];
    [v3 frame];
    v6 = v5;
    v8 = v7;
    [v3 contentOffset];
    v10 = v9;
    v12 = v11;

    v13 = (a1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preSnapshotConfiguration);
    v14 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preSnapshotConfiguration);
    *v13 = v4;
    v13[1] = v6;
    v13[2] = v8;
    v13[3] = v10;
    v13[4] = v12;
  }
}

void closure #2 in DOCItemCollectionViewController.installSceneSnapshotWorkaround()(void *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *a1) + 0x1018))();
  if (v3)
  {
    v4 = v3;
    v5 = [a1 traitCollection];
    [v4 frame];
    v7.n128_u64[0] = v6;
    v9.n128_u64[0] = v8;
    (*((*v2 & *a1) + 0x1528))(v5, v7, v9);

    v10 = a1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preSnapshotConfiguration;
    v11 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preSnapshotConfiguration);
    *(v10 + 4) = 0;
    *v10 = 0u;
    *(v10 + 1) = 0u;
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.restorePreSnapshotConfigurationIfNeeded(traitCollection:size:)(UITraitCollection traitCollection, CGSize size)
{
  v3 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preSnapshotConfiguration);
  if (v3)
  {
    v4 = v2;
    height = size.height;
    width = size.width;
    v8 = v3;
    v36 = DOCItemCollectionViewController.RestorableConfiguration.offsetToRestore(for:size:)(traitCollection, __PAIR128__(*&height, *&width));
    v9 = *&v36.is_nil;
    v11 = v10;
    v13 = v12;

    if ((v13 & 1) == 0)
    {
      v14 = v9;
      v15 = v11;
      v16 = MEMORY[0x277D85000];
      v17 = *((*MEMORY[0x277D85000] & *v4) + 0x1010);
      v18 = v17();
      [v18 contentOffset];
      v20 = v19;
      v22 = v21;

      if (v20 != v14 || v22 != v15)
      {
        v24 = v17();
        v25 = (*((*v16 & *v24) + 0x138))();
        v27 = v26;

        v28 = v17();
        v29 = (*((*v16 & *v28) + 0x140))();
        v31 = v30;

        if (v31 >= v15)
        {
          v32 = v14;
        }

        else
        {
          v32 = v29;
        }

        if (v31 >= v15)
        {
          v33 = v15;
        }

        else
        {
          v33 = v31;
        }

        if (v27 <= v15)
        {
          v25 = v32;
          v27 = v33;
        }

        v34 = v17();
        [v34 setContentOffset:0 animated:{v25, v27}];
      }
    }
  }
}

BOOL DOCItemCollectionViewController.canBecomeFirstResponder.getter()
{
  v1 = [v0 _appearState];
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.UI);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x8000000249BCE220, &v9);
    *(v5 + 12) = 1024;
    v7 = v1 - 1;
    *(v5 + 14) = v7 < 2;
    _os_log_impl(&dword_2493AC000, v3, v4, "%s item collection view controller canBecome: %{BOOL}d", v5, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  else
  {

    v7 = v1 - 1;
  }

  return v7 < 2;
}

Swift::Bool __swiftcall DOCItemCollectionViewController.resignFirstResponder()()
{
  v1 = v0;
  v15.receiver = v0;
  v15.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  v2 = objc_msgSendSuper2(&v15, sel_resignFirstResponder);
  v3 = MEMORY[0x277D85000];
  if (v2 && (*((*MEMORY[0x277D85000] & *v0) + 0xBD8))() != 3)
  {
    v4 = (*((*v3 & *v0) + 0x1010))();
    specialized DOCFocusableCollectionView.resignFocus()();
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.UI);
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v9 = 136315906;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BDEB60, &v14);
    *(v9 + 12) = 1024;
    *(v9 + 14) = v2;
    *(v9 + 18) = 1024;
    *(v9 + 20) = (*((*v3 & *v6) + 0xBD8))() != 3;

    *(v9 + 24) = 2112;
    *(v9 + 26) = v6;
    *v10 = v6;
    v12 = v6;
    _os_log_impl(&dword_2493AC000, v7, v8, "%s in item collection view controller, success: %{BOOL}d, on success told CV to resignFocus: %{BOOL}d, self: %@", v9, 0x22u);
    outlined destroy of CharacterSet?(v10, &_sSo8NSObjectCSgMd);
    MEMORY[0x24C1FE850](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C1FE850](v11, -1, -1);
    MEMORY[0x24C1FE850](v9, -1, -1);
  }

  else
  {
  }

  return v2;
}

Swift::Bool __swiftcall DOCItemCollectionViewController.becomeFirstResponder()()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  v1 = objc_msgSendSuper2(&v12, sel_becomeFirstResponder);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.UI);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136315650;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BDEB80, &v11);
    *(v6 + 12) = 1024;
    *(v6 + 14) = v1;
    *(v6 + 18) = 2112;
    v9 = (*((*MEMORY[0x277D85000] & *v3) + 0x1010))();
    *(v6 + 20) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2493AC000, v4, v5, "%s in item collection view controller: %{BOOL}d, collection view: %@", v6, 0x1Cu);
    outlined destroy of CharacterSet?(v7, &_sSo8NSObjectCSgMd);
    MEMORY[0x24C1FE850](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C1FE850](v8, -1, -1);
    MEMORY[0x24C1FE850](v6, -1, -1);
  }

  return v1;
}

Swift::Void __swiftcall DOCItemCollectionViewController.performKeyboardFocusKeyCommand(_:)(UIKeyCommand *a1)
{
  if (([v1 isFirstResponder] & 1) == 0)
  {
    v3 = [objc_opt_self() keyWindow];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 firstResponder];

      if (v5)
      {
        type metadata accessor for DOCItemCollectionViewController(0);
        v6 = swift_dynamicCastClass();
        if (v6)
        {
          goto LABEL_7;
        }
      }
    }
  }

  v6 = v1;
LABEL_7:
  v10 = v6;
  v7 = (*((*MEMORY[0x277D85000] & *v6) + 0x1010))();
  v8 = [(UIKeyCommand *)a1 input];
  if (v8)
  {

    v9 = UIKeyCommand.doc_direction.getter();
    specialized DOCFocusableCollectionView.performNavigation(into:modifierFlags:)(v9, ([(UIKeyCommand *)a1 modifierFlags]>> 18) & 2 | ([(UIKeyCommand *)a1 modifierFlags]>> 17) & 1);
  }
}

id DOCItemCollectionViewController.doc_selectAll(_:enteringEditMode:)(uint64_t a1, char a2)
{
  result = [v2 canPerformAction:sel_selectAll_ withSender:0];
  if (result)
  {
    v5 = MEMORY[0x277D85000];
    if (!(*((*MEMORY[0x277D85000] & *v2) + 0xA98))() || (v7 = v6, ObjectType = swift_getObjectType(), LOBYTE(v7) = (*(v7 + 40))(v2, ObjectType, v7), result = swift_unknownObjectRelease(), (v7 & 1) != 0))
    {
      if (a2)
      {
        [v2 setEditing:1 animated:1];
      }

      v9 = *((*v5 & *v2) + 0x12F8);

      return v9();
    }
  }

  return result;
}

void DOCItemCollectionViewController.copy(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  if (!(*((*MEMORY[0x277D85000] & *v1) + 0xA98))())
  {
    return;
  }

  v6 = v5;
  ObjectType = swift_getObjectType();
  v8 = (*(v6 + 32))(v1, sel_copy_, a1, ObjectType, v6);
  if (v8)
  {
    v30 = v8;
    type metadata accessor for DOCItemCollectionViewController(0);
    v9 = swift_dynamicCastClass();
    if (!v9)
    {
LABEL_23:
      swift_unknownObjectRelease();

      return;
    }

    v10 = v9;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject);
    if (static NSObject.== infix(_:_:)())
    {
      v11 = *((*v4 & *v1) + 0x1338);
      v12 = v11();
      if (v12 >> 62)
      {
        v13 = __CocoaSet.count.getter();
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v13 >= 1)
      {
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;
        v17 = v11();
        v18 = (*((*v4 & *v2) + 0xC70))();
        v19 = DOCItemCollectionViewController.actionContext(from:)();
        All = specialized Array<A>.fpfs_syncFetchAllFPItems()(v17);

        if (All)
        {
          if (v18)
          {
            swift_getObjectType();
            v21 = DOCNode.fpfs_syncFetchFPItem()();
          }

          else
          {
            v21 = 0;
          }

          DOCActionManager.lookupAndPerform(actionWithIdentifier:on:in:actionContext:)(v14, v16, All, v21, v19);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        [v2 setEditing:0 animated:1];
      }

      goto LABEL_23;
    }

    outlined init with copy of DOCGridLayout.Spec?(a1, v31, &_sypSgMd);
    v22 = v32;
    if (v32)
    {
      v23 = __swift_project_boxed_opaque_existential_1(v31, v32);
      v24 = *(v22 - 8);
      v25 = MEMORY[0x28223BE20](v23, v23);
      v27 = &v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v24 + 16))(v27, v25);
      v28 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v24 + 8))(v27, v22);
      __swift_destroy_boxed_opaque_existential_0(v31);
    }

    else
    {
      v28 = 0;
    }

    [v10 copy_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void DOCItemCollectionViewController.paste(_:)(uint64_t a1)
{
  if ((*((*MEMORY[0x277D85000] & *v1) + 0xA98))())
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    v7 = (*(v4 + 32))(v1, sel_paste_, a1, ObjectType, v4);
    if (v7)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        [v6 pasteboardPasteInCollectionView_];
      }

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t @objc DOCItemCollectionViewController.copy(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v9);

  return outlined destroy of CharacterSet?(v9, &_sypSgMd);
}

void DOCItemCollectionViewController.delete(_:)(uint64_t a1)
{
  v3 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0xA98))())
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    v8 = (*(v5 + 32))(v1, sel_delete_, a1, ObjectType, v5);
    if (v8)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        (*((*v3 & *v7) + 0x1578))(1, 1);
      }

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t DOCItemCollectionViewController.moveHere(_:)()
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0xC70))();
  if (result)
  {
    swift_getObjectType();
    v2 = DOCNode.fpfs_syncFetchFPItem()();
    if (v2)
    {
      v3 = v2;
      v4 = specialized DOCActionManager.numberOfItemsMovable(to:alertPresenting:allowPartialCheck:)(v2, v0, 1);

      if (v4 >= 1)
      {
        [v0 pasteboardMoveToCollectionView_];
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall DOCItemCollectionViewController.createFolder(withSelection:bailIfAlreadyInlineRenaming:)(Swift::Bool withSelection, Swift::Bool bailIfAlreadyInlineRenaming)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v39[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = MEMORY[0x28223BE20](v11, v12);
  v15 = &v39[-1] - v14;
  if (bailIfAlreadyInlineRenaming && ((*(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preparingForInlineRename) & 1) != 0 || ((*((*MEMORY[0x277D85000] & *v3) + 0x1448))(v13.n128_f64[0]) & 1) != 0))
  {
    return;
  }

  v16 = MEMORY[0x277D85000];
  v17 = (*((*MEMORY[0x277D85000] & *v3) + 0x1010))(v13);
  v18 = [v17 indexPathsForSelectedItems];

  if (v18)
  {
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v20 + 16))
    {
      (*(v7 + 16))(v10, v20 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);

      (*(v7 + 32))(v15, v10, v6);
      v21 = (*((*v16 & *v3) + 0xD88))(v15, 0);
      if (v21)
      {
        v22 = v21;
        (*((*v16 & *v3) + 0x820))(v39);
        v23 = v40;
        if (!v40)
        {
          __break(1u);
          return;
        }

        v24 = v41;
        __swift_project_boxed_opaque_existential_1(v39, v40);
        v25 = (*(v24 + 112))(v22, v23, v24);
        if (v25)
        {
          v26 = v25;
          v27 = __swift_destroy_boxed_opaque_existential_0(v39);
          v16 = MEMORY[0x277D85000];
          if ((*((*MEMORY[0x277D85000] & *v3) + 0xBD8))(v27) == 2)
          {
            if (withSelection)
            {
              v28 = (*((*v16 & *v3) + 0x1338))();
              Available = specialized Array<A>.fpfs_syncFetchAvailableFPItems()(v28);
            }

            else
            {
              Available = MEMORY[0x277D84F90];
            }

            if (Available >> 62)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
              v37 = _bridgeCocoaArray<A>(_:)();
              swift_bridgeObjectRelease_n();
              v35 = v37;
            }

            else
            {
              dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();

              v35 = Available;
            }

            (*((*v16 & *v3) + 0x1558))(v26, v35);
            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
            (*(v7 + 8))(v15, v6);
            return;
          }

          (*(v7 + 8))(v15, v6);
          swift_unknownObjectRelease();
          v19 = swift_unknownObjectRelease();
        }

        else
        {
          (*(v7 + 8))(v15, v6);
          swift_unknownObjectRelease();
          v19 = __swift_destroy_boxed_opaque_existential_0(v39);
          v16 = MEMORY[0x277D85000];
        }
      }

      else
      {
        v19 = (*(v7 + 8))(v15, v6);
      }
    }

    else
    {
    }
  }

  v30 = (*((*v16 & *v3) + 0xC70))(v19);
  if (v30)
  {
    v31 = v30;
    if (withSelection)
    {
      v32 = (*((*v16 & *v3) + 0x1338))();
      v33 = specialized Array<A>.fpfs_syncFetchAvailableFPItems()(v32);
    }

    else
    {
      v33 = MEMORY[0x277D84F90];
    }

    if (v33 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      v36 = _bridgeCocoaArray<A>(_:)();
      swift_bridgeObjectRelease_n();
      v34 = v36;
    }

    else
    {
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();

      v34 = v33;
    }

    (*((*v16 & *v3) + 0x1558))(v31, v34);
    swift_unknownObjectRelease();
  }
}

uint64_t DOCItemCollectionViewController.createFolder(in:with:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;

  swift_unknownObjectRetain();
  DOCNode.fpfs_fetchFPItem(completion:)(partial apply for closure #1 in DOCItemCollectionViewController.createFolder(in:with:), v5);
}

void closure #1 in DOCItemCollectionViewController.createFolder(in:with:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = *MEMORY[0x277CC6028];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249BA0290;
    *(inited + 32) = a1;
    v9 = a1;
    LOBYTE(v7) = specialized static DOCActionManager.canPerform(_:on:)(v7, inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    if (v7)
    {
      v10 = swift_allocObject();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v12 = swift_allocObject();
      v12[2] = v10;
      v12[3] = a3;
      v12[4] = a4;

      swift_unknownObjectRetain();
      DOCRunInMainThread(_:)();
    }

    else
    {
    }
  }
}

void *closure #1 in closure #1 in DOCItemCollectionViewController.createFolder(in:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = (*((*MEMORY[0x277D85000] & *result) + 0x19C0))(0);
    v8 = DOCItemCollectionViewController.untitledFolderName.getter();
    v10 = v9;
    if (v7)
    {
      if (a3)
      {
        v11 = a3;
      }

      else
      {
        v11 = MEMORY[0x277D84F90];
      }

      DOCItemCollectionViewController.createNewFolderInline(_:inFolder:moveNodes:)(v8, v10, a2, v11);
    }

    else
    {
      swift_getObjectType();
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      v13[2] = v12;
      v13[3] = v8;
      v13[4] = v10;

      DOCNode.fpfs_fetchFPItem(completion:)(partial apply for closure #1 in DOCItemCollectionViewController.createNewFolderModal(_:parentNode:), v13);
    }
  }

  return result;
}

uint64_t DOCItemCollectionViewController.createNewFolderInline(_:inFolder:moveNodes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v13 = &v21[-v12];
  if (*(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsCollectionReload) == 1)
  {
    (*((*MEMORY[0x277D85000] & *v4) + 0x1820))(v11);
  }

  *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preparingForInlineRename) = 1;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  swift_unknownObjectRetain();

  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v15;
  v17[5] = a1;
  v17[6] = a2;
  v17[7] = a3;
  v17[8] = a4;

  v19 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #1 in DOCItemCollectionViewController.createNewFolderInline(_:inFolder:moveNodes:), v17);
  swift_beginAccess();

  specialized Set._Variant.insert(_:)(&v22, v19);
  swift_endAccess();
}

uint64_t DOCItemCollectionViewController.untitledFolderName.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___untitledFolderName);
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___untitledFolderName + 8))
  {
    v2 = *v1;
  }

  else
  {
    if (one-time initialization token for untitledFolderName != -1)
    {
      swift_once();
    }

    v2 = static DOCCreateFolderOperation.untitledFolderName;
    v3 = *algn_27EEF0938;
    *v1 = static DOCCreateFolderOperation.untitledFolderName;
    v1[1] = v3;
    swift_bridgeObjectRetain_n();
  }

  return v2;
}

Swift::Void __swiftcall DOCItemCollectionViewController.performDeleteAction(trashIfPossible:recoverInsteadIfPossible:)(Swift::Bool trashIfPossible, Swift::Bool recoverInsteadIfPossible)
{
  v3 = v2;
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v2) + 0x1338);
  v6 = v5();
  if (v6 >> 62)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7 < 1)
  {
    return;
  }

  v9 = (*((*v4 & *v3) + 0xA68))(v8);
  v10 = *&v9[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type];
  v11 = v9[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type + 8];
  outlined copy of DOCFileProviderSourceType(v10);

  if (v11 == 1)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
    if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
    {

      outlined consume of DOCFileProviderSourceType(v10);
      goto LABEL_17;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    outlined consume of DOCFileProviderSourceType(v10);
    if (v17)
    {
LABEL_17:
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v26;
      v27 = v5();
      v28 = (*((*v4 & *v3) + 0xC70))();
      v23 = DOCItemCollectionViewController.actionContext(from:)();
      All = specialized Array<A>.fpfs_syncFetchAllFPItems()(v27);

      if (All)
      {
        if (!v28)
        {
          goto LABEL_19;
        }

        goto LABEL_15;
      }

LABEL_21:

      swift_unknownObjectRelease();
      goto LABEL_22;
    }
  }

  else
  {
    outlined consume of DOCFileProviderSourceType(v10);
  }

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  v21 = v5();
  v22 = (*((*v4 & *v3) + 0xC70))();
  v23 = DOCItemCollectionViewController.actionContext(from:)();
  All = specialized Array<A>.fpfs_syncFetchAllFPItems()(v21);

  if (!All)
  {
    goto LABEL_21;
  }

  if (!v22)
  {
LABEL_19:
    v25 = 0;
    goto LABEL_20;
  }

LABEL_15:
  swift_getObjectType();
  v25 = DOCNode.fpfs_syncFetchFPItem()();
LABEL_20:
  DOCActionManager.lookupAndPerform(actionWithIdentifier:on:in:actionContext:)(v18, v20, All, v25, v23);

  swift_unknownObjectRelease();

LABEL_22:

  [v3 setEditing:0 animated:1];
}

id DOCItemCollectionViewController.provider(for:)(void *a1)
{
  v3 = [a1 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {

    goto LABEL_8;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
LABEL_8:
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15[4] = partial apply for closure #1 in DOCItemCollectionViewController.provider(for:);
    v15[5] = v11;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
    v15[3] = &block_descriptor_134_0;
    v12 = _Block_copy(v15);
    v13 = objc_opt_self();

    v10 = [v13 providerWithElementProvider_];
    _Block_release(v12);

    return v10;
  }

  v16.receiver = v1;
  v16.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  return objc_msgSendSuper2(&v16, sel_providerForDeferredMenuElement_, a1);
}

unint64_t closure #1 in DOCItemCollectionViewController.provider(for:)(uint64_t (*a1)(void), uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a1(MEMORY[0x277D84F90]);
  }

  v5 = Strong;
  v6 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *Strong) + 0x1338))();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = result;
  v10 = __CocoaSet.count.getter();
  result = v9;
  if (!v10)
  {
LABEL_11:

    return a1(MEMORY[0x277D84F90]);
  }

LABEL_4:
  if ((result & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x24C1FC540](0);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v8 = *(result + 32);
    swift_unknownObjectRetain();
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*((*v6 & *static DOCOpenWithMenuController.shared) + 0xA0))(v8, a1, a2);

  return swift_unknownObjectRelease();
}

uint64_t DOCItemCollectionViewController.overridenEstimatedCollectionViewSize.getter()
{
  v1 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_overridenEstimatedCollectionViewSize;
  swift_beginAccess();
  return *v1;
}

uint64_t DOCItemCollectionViewController.overridenEstimatedCollectionViewSize.setter(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_overridenEstimatedCollectionViewSize;
  result = swift_beginAccess();
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3 & 1;
  return result;
}

void DOCItemCollectionViewController.modelPreloadingCollectionViewSize.getter()
{
  v1 = v0;
  if ([v0 isViewLoaded])
  {
    v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1010);
    v3 = v2();
    [v3 visibleBounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v46.origin.x = v5;
    v46.origin.y = v7;
    v46.size.width = v9;
    v46.size.height = v11;
    if (!CGRectIsEmpty(v46))
    {
      v19 = v2();
      [v19 visibleSize];
      v25 = v26;
      v17 = v27;
      goto LABEL_16;
    }
  }

  v12 = MEMORY[0x277D85000];
  v13 = COERCE_DOUBLE((*((*MEMORY[0x277D85000] & *v1) + 0x1580))());
  if (v15)
  {
    v16 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_documentManager);
    v17 = 0.0;
    if (!v16)
    {
      goto LABEL_23;
    }

    v18 = (*((*v12 & *v16) + 0xB0))(COERCE_DOUBLE(*&v13));
    if (!v18)
    {
      goto LABEL_23;
    }

    v19 = v18;
    v20 = [v19 viewIfLoaded];
    if (!v20)
    {
      goto LABEL_9;
    }

    v21 = v20;
    [v20 bounds];
    if (CGRectIsEmpty(v47))
    {

LABEL_9:
      v22 = [v19 parentViewController];

      if (!v22)
      {
LABEL_22:

LABEL_23:
        v25 = 0.0;
        goto LABEL_24;
      }

      v23 = [v22 viewIfLoaded];
      if (!v23)
      {
        v24 = v22;
        goto LABEL_21;
      }

      v24 = v23;
      [v23 bounds];
      if (CGRectIsEmpty(v48))
      {

LABEL_21:
        goto LABEL_22;
      }

      [v24 frame];
      v25 = v44;
      v17 = v45;

      goto LABEL_16;
    }

    [v21 frame];
    v25 = v28;
    v17 = v29;

LABEL_16:
    if (v25 == 0.0)
    {
      goto LABEL_24;
    }

LABEL_17:
    if (v17 != 0.0)
    {
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  v25 = v13;
  v17 = v14;
  if (v13 != 0.0)
  {
    goto LABEL_17;
  }

LABEL_24:
  v30 = [objc_opt_self() anyWindowPreferingKeyWindow];
  if (v30)
  {
    v31 = v30;
    [v31 bounds];
    if (!CGRectIsEmpty(v49))
    {
      [v31 frame];
      v25 = v32;
      v17 = v33;
    }
  }

LABEL_28:
  if (v25 == 0.0 || v17 == 0.0)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.UI);
    v35 = v1;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 134219010;
      *(v38 + 4) = v25;
      *(v38 + 12) = 2048;
      *(v38 + 14) = v17;
      *(v38 + 22) = 2112;
      *(v38 + 24) = v35;
      *v39 = v35;
      *(v38 + 32) = 2112;
      v40 = v35;
      v41 = [v40 parentViewController];
      *(v38 + 34) = v41;
      v39[1] = v41;
      *(v38 + 42) = 2112;
      v42 = *&v40[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection];
      if (!v42)
      {
        __break(1u);
        return;
      }

      v43 = (*((*MEMORY[0x277D85000] & *v42) + 0x1A8))();
      if (!v43)
      {
        v43 = v42;
      }

      *(v38 + 44) = v43;
      v39[2] = v43;
      _os_log_impl(&dword_2493AC000, v36, v37, "Returning bad initial collection view size (%f, %f) for %@ (parent: %@, itemCollection: %@", v38, 0x34u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v39, -1, -1);
      MEMORY[0x24C1FE850](v38, -1, -1);
    }
  }
}

uint64_t DOCItemCollectionViewController.hasDocumentBrowser.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_documentManager);
  if (!v1)
  {
    return 0;
  }

  result = (*((*MEMORY[0x277D85000] & *v1) + 0xB0))();
  if (result)
  {

    return 1;
  }

  return result;
}

void DOCItemCollectionViewController.displayModeDidChange()()
{
  v1 = v0;
  v46 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v3);
  v44 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchQoS();
  v5 = *(v45 - 8);
  v7.n128_f64[0] = MEMORY[0x28223BE20](v45, v6);
  v43 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D85000];
  v10 = *((*MEMORY[0x277D85000] & *v0) + 0xBD8);
  v11 = v10(v7);
  if (v11 == 2)
  {
    v12 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
    if (!v12)
    {
LABEL_26:
      __break(1u);
      return;
    }

    (*((*v9 & *v12) + 0x1E0))();
    v11 = [v1 checkIfOutlineModeNeedsChange];
  }

  v41 = v5;
  v42 = v2;
  v13 = *((*v9 & *v1) + 0xD60);
  v14 = (v13)(v11);
  v15 = *((*v9 & *v1) + 0xDC0);
  v16 = v15(v14);
  v17 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (!v17)
  {
    __break(1u);
    goto LABEL_26;
  }

  v18 = (*((*v9 & *v17) + 0x258))(v16);
  (*((*v9 & *v1) + 0xCC0))(v18);
  v15(0);
  v47 = [v1 viewIfLoaded];
  if (v47)
  {
    v19 = (*((*v9 & *v1) + 0x1198))(2);
    v20 = (*((*v9 & *v1) + 0x15B8))(v19);
    v21 = (v10)(v20);
    v22 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_tipsHeaderView);
    if (v22)
    {
      v23 = 0.0;
      if (v21 == 3)
      {
        v23 = 16.0;
      }

      v22 = [v22 setDirectionalLayoutMargins_];
    }

    (*((*v9 & *v1) + 0x10D8))(v22);
    [v47 setNeedsLayout];
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation) = 0;
    v24 = [v1 viewIfLoaded];
    v25 = [v24 window];

    if (v25)
    {

      DOCBrowserContainedViewController.updateOverlayIfNeeded()();
    }

    else
    {
      DOCBrowserContainedViewController.applyOverlaySearchSettings()();
    }

    v26 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__footerView);
    if (v26)
    {
      v27 = v26;
      v28 = (v10)();
      DOCStatusFooterView.displayMode.setter(v28);
    }

    v29 = v13();
    LOWORD(aBlock[0]) = 2;
    DOCItemCollectionViewController.updateSnapshot(for:using:maintainSelection:)(v29, aBlock, 1);

    if ((v10)(v30) == 3)
    {
      (*((*v9 & *v1) + 0x1338))();
      (*((*v9 & *v1) + 0x1378))();
    }

    else
    {
      v31 = (*((*v9 & *v1) + 0x1018))();
      if (v31)
      {
        v32 = v31;
        [v31 setAllowsMultipleSelection_];
      }
    }

    if ((v10)([v1 _setNeedsUpdateOfMultitaskingDragExclusionRects]) == 3)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v33 = static OS_dispatch_queue.main.getter();
      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = partial apply for closure #1 in DOCItemCollectionViewController.displayModeDidChange();
      aBlock[5] = v34;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_1397;
      v35 = _Block_copy(aBlock);

      v36 = v43;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
      v37 = v44;
      v38 = v46;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x24C1FB9A0](0, v36, v37, v35);
      _Block_release(v35);

      (*(v42 + 8))(v37, v38);
      (*(v41 + 8))(v36, v45);
    }

    else
    {
      v39 = v47;
    }
  }
}

void closure #1 in DOCItemCollectionViewController.displayModeDidChange()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x1758))(&outlined read-only object #0 of closure #1 in DOCItemCollectionViewController.displayModeDidChange());
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.updateHidesNavigationBackButton()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x198))();
  if (v1)
  {
    v2 = v1;
    [v1 setHidesBackButton_];
  }
}

void DOCItemCollectionViewController.didUpdateCollectionViewIsScrollEnabled(notification:)(void *a1)
{
  v2 = [a1 userInfo];
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v4 + 16) || (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v9), (v6 & 1) == 0))
  {

    outlined destroy of AnyHashable(v9);
LABEL_8:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_9;
  }

  outlined init with copy of Any(*(v4 + 56) + 32 * v5, &v10);
  outlined destroy of AnyHashable(v9);

  if (!*(&v11 + 1))
  {
LABEL_9:
    outlined destroy of CharacterSet?(&v10, &_sypSgMd);
    return;
  }

  if (swift_dynamicCast())
  {
    v7 = v9[0];
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_updatedIsScrollEnabled) = v9[0];
    v8 = (*((*MEMORY[0x277D85000] & *v1) + 0x1010))();
    [v8 setScrollEnabled_];
  }
}

void DOCItemCollectionViewController.didUpdateCollectionViewContentOffset(notification:)(void *a1)
{
  v2 = [a1 userInfo];
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v4 + 16) || (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v6 & 1) == 0))
  {

    outlined destroy of AnyHashable(v10);
LABEL_8:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_9;
  }

  outlined init with copy of Any(*(v4 + 56) + 32 * v5, &v11);
  outlined destroy of AnyHashable(v10);

  if (!*(&v12 + 1))
  {
LABEL_9:
    outlined destroy of CharacterSet?(&v11, &_sypSgMd);
    return;
  }

  type metadata accessor for CGPoint(0);
  if (swift_dynamicCast())
  {
    v7 = *v10;
    v8 = *&v10[1];
    v9 = (*((*MEMORY[0x277D85000] & *v1) + 0x1010))();
    [v9 setContentOffset_];
  }
}

uint64_t DOCItemCollectionViewController.showLoadingViewIfNeeded()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v1 - 8);
  v33 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.n128_f64[0] = MEMORY[0x28223BE20](v14, v15);
  v18 = &v28 - v17;
  if ((*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preventLoadingView) & 1) == 0)
  {
    DOCItemCollectionViewController.showBlankView()();
  }

  v19 = (*((*MEMORY[0x277D85000] & *v0) + 0xA68))(v16);
  v20 = *&v19[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
  v21 = v20;

  if (v20)
  {
    v22 = [v21 identifier];

    DOCProviderDomainIDIsRemovable();
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v28 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v29 = *(v10 + 8);
  v29(v13, v9);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in DOCItemCollectionViewController.showLoadingViewIfNeeded();
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_1198;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  v25 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v26 = v28;
  MEMORY[0x24C1FB940](v18, v8, v4, v24);
  _Block_release(v24);

  (*(v32 + 8))(v4, v25);
  (*(v30 + 8))(v8, v31);
  return (v29)(v18, v9);
}