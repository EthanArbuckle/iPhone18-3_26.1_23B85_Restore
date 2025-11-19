void specialized DOCItemInfoContentViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_documentManager) = 0;
  v1 = (v0 + OBJC_IVAR___DOCItemInfoContentViewController_metrics);
  specialized DOCItemInfoContentViewController.Metrics.init()(v11);
  v2 = v11[3];
  v1[2] = v11[2];
  v1[3] = v2;
  v1[4] = v11[4];
  v3 = v11[1];
  *v1 = v11[0];
  v1[1] = v3;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_hasPreventedFlashOnce) = 0;
  v4 = OBJC_IVAR___DOCItemInfoContentViewController_layoutMargins;
  if (one-time initialization token for defaultLayoutMargins != -1)
  {
    swift_once();
  }

  v5 = (v0 + v4);
  v6 = *&qword_27EEEA210;
  *v5 = static DOCItemInfoContentViewController.Metrics.defaultLayoutMargins;
  v5[1] = v6;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_eventReporting + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_showsShareButton) = 1;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___thumbnailView) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___filenameTitleLabel) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareStatusLabel) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___kindAndSizeView) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___syncingErrorLabel) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___downloadButton) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataSectionLabel) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataTitleRowSeparator) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataTitleRow) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___showMoreMetadataButton) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___metadataView) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsTitleRowSeparator) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsTitleRow) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsSectionTitleLabel) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___addTagsButton) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___tagsCollectionView) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___actionsView) = 1;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareButton) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___shareView) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController__statusAppearance) = 10;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___actionsRow) = 0;
  v7 = OBJC_IVAR___DOCItemInfoContentViewController_rootContentView;
  *(v0 + v7) = [objc_allocWithZone(type metadata accessor for DOCItemInfoContentViewController.RootVStack()) init];
  v8 = OBJC_IVAR___DOCItemInfoContentViewController_scrollView;
  *(v0 + v8) = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_attributionView) = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR___DOCItemInfoContentViewController_actionsForCurrentActivityViewController;
  *(v0 + v9) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So23UIDocumentBrowserActionCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_nodesObserver) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_shouldObserveNodes) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_hasMetadataViewFinishedPreheat) = 0;
  v10 = (v0 + OBJC_IVAR___DOCItemInfoContentViewController_lastThumbnailSize);
  *v10 = 0;
  v10[1] = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_openWithMenuController) = 0;
  *(v0 + OBJC_IVAR___DOCItemInfoContentViewController_alwaysOpenWithMenu) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized DOCItemInfoContentViewController.documentPreviewTapped(sender:)()
{
  v1 = OBJC_IVAR___DOCItemInfoContentViewController_nodes;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result != 1)
    {
      return result;
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result != 1)
    {
      return result;
    }
  }

  v4 = *&v0[v1];
  if (v4 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v4 & 0xC000000000000001) != 0)
  {

    v5 = MEMORY[0x24C1FC540](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v4 + 32);
    swift_unknownObjectRetain();
  }

  ObjectType = swift_getObjectType();
  specialized DOCItemInfoContentViewController.openSelectedNode(_:)(v5, v0, ObjectType);
  return swift_unknownObjectRelease();
}

uint64_t specialized DOCItemInfoContentViewController.setHandlerFlow(_:didSetHandlerPreferenceOfType:to:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_249B9A480;
  _StringGuts.grow(_:)(39);
  MEMORY[0x24C1FAEA0](0xD00000000000001FLL, 0x8000000249BDC010);
  type metadata accessor for CSUIHandlerPreferenceType(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x24C1FAEA0](544175136, 0xE400000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19CSUIBoundBundleInfo_pMd);
  _print_unlocked<A, B>(_:_:)();
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  print(_:separator:terminator:)();

  *(swift_allocObject() + 16) = v0;
  v2 = v0;
  DOCRunInMainThread(_:)();
}

uint64_t specialized DOCItemInfoContentViewController.setHandlerFlow(_:didFailToSetHandlerPreferenceOfType:to:error:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_249B9A480;
  _StringGuts.grow(_:)(53);
  MEMORY[0x24C1FAEA0](0xD000000000000029, 0x8000000249BDBFE0);
  type metadata accessor for CSUIHandlerPreferenceType(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x24C1FAEA0](544175136, 0xE400000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19CSUIBoundBundleInfo_pMd);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x24C1FAEA0](8250, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  _print_unlocked<A, B>(_:_:)();
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  print(_:separator:terminator:)();

  *(swift_allocObject() + 16) = v0;
  v2 = v0;
  DOCRunInMainThread(_:)();
}

void specialized DOCItemInfoContentViewController.previewController(_:viewFor:_:)(void (*a1)(id))
{
  v3 = DOCItemInfoContentViewController.thumbnailView.getter();
  v4 = [v3 window];

  if (v4)
  {

    v5 = *(v1 + OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___thumbnailView);
    v6 = *((*MEMORY[0x277D85000] & *v5) + 0x138);
    v7 = v5;
    v8 = v6();
  }

  else
  {
    v8 = 0;
  }

  a1(v8);
}

uint64_t specialized DOCItemInfoContentViewController.tagsCollectionItem(_:didDelete:)(void *a1)
{
  v3 = OBJC_IVAR___DOCItemInfoContentViewController_nodes;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if (v5 >> 62)
  {
    result = __CocoaSet.count.getter();
    v6 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return result;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {

    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C1FC540](v7, v5);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      ++v7;
      swift_getObjectType();
      v8 = swift_allocObject();
      *(v8 + 16) = a1;
      v9 = a1;
      DOCNode.fpfs_fetchFPItem(completion:)(partial apply for closure #1 in DOCItemInfoContentViewController.tagsCollectionItem(_:didDelete:), v8);
      swift_unknownObjectRelease();
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t specialized DOCInteractionManager.alertIfNodeCanNotBeDownloaded(_:configuration:alertPresenting:)(void *a1, void *a2)
{
  if ([a1 isCloudItem])
  {
    v4 = [a1 isDownloaded];
  }

  else
  {
    v4 = 1;
  }

  v5 = [a1 cachedDomain];
  if (v5)
  {
    v6 = v5;
    v7 = FPProviderDomain.shouldUseDSEnumeration.getter();
  }

  else
  {
    v7 = 0;
  }

  v8 = [a2 browserViewContext] == 1;
  result = 1;
  if (((v8 | v4) & 1) == 0 && (v7 & 1) == 0)
  {
    if (DOCIsNetworkReachable())
    {
      return 1;
    }

    else
    {
      DOCAlertUserTheNetworkIsNotReachable();
      return 0;
    }
  }

  return result;
}

void _s26DocumentManagerExecutables11LaunchUtilsV22tryOpeningInDefaultApp_4node011requireOpenH5Place15preferQuickLook15alertPresenting15completionBlocky10Foundation3URLV_So7DOCNode_pSgS2bSo16UIViewControllerCySbctFZ01_fghiJ0L__AeGyAL_SoAM_pSbtFTf4nennnnn_nSo6FPItemC_Tt2g504_s26ab35Executables32DOCItemInfoContentViewz24C16openSelectedNodeyySo7x9_pF15calldE46L_4with4nodey10Foundation3URLV_SoAE_ptFySbcfU_AA014DOCInteractionB0CSoAM_pAA014DOCInteractionB7ContextVTf1nnnnnc_nTf4nnnnnggg_nTf4nnnnnnen_nAS_Tg5(unint64_t a1, void *a2, int a3, int a4, void *a5, void *a6, void *a7, uint64_t a8)
{
  v254 = a5;
  LODWORD(v265) = a4;
  LODWORD(v262) = a3;
  v269 = type metadata accessor for DispatchWorkItemFlags();
  v267 = *(v269 - 1);
  MEMORY[0x28223BE20](v269, v13);
  v263 = &v245 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = type metadata accessor for DispatchQoS();
  v256 = *(v264 - 1);
  MEMORY[0x28223BE20](v264, v15);
  v248 = &v245 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS.QoSClass();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v245 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v260 = &v245 - v24;
  v25 = type metadata accessor for URL();
  v257 = *(v25 - 8);
  v271 = v257;
  v272 = v25;
  MEMORY[0x28223BE20](v25, v26);
  v253 = &v245 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v29);
  v252 = &v245 - v30;
  MEMORY[0x28223BE20](v31, v32);
  v251 = &v245 - v33;
  MEMORY[0x28223BE20](v34, v35);
  v250 = &v245 - v36;
  MEMORY[0x28223BE20](v37, v38);
  v249 = &v245 - v39;
  v255 = v40;
  MEMORY[0x28223BE20](v41, v42);
  v270 = &v245 - v43;
  v44 = swift_allocObject();
  *(v44 + 16) = a6;
  *(v44 + 24) = a7;
  v45 = *(a8 + 48);
  *(v44 + 64) = *(a8 + 32);
  *(v44 + 80) = v45;
  *(v44 + 96) = *(a8 + 64);
  v46 = *(a8 + 16);
  *(v44 + 32) = *a8;
  *(v44 + 48) = v46;
  v261 = v44;
  v47 = objc_opt_self();
  v259 = a6;
  v258 = a7;
  outlined init with copy of DOCInteractionManagerContext(a8, &aBlock);
  v48 = [v47 defaultPermission];
  v266 = [v48 dataOwnerStateForNode_];

  v49 = [objc_opt_self() contextMenuShowsOpenWithApp];
  LOBYTE(a6) = [v49 isEnabled];

  if ((a6 & 1) == 0)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPProviderDomain);
    v50 = [a2 providerDomainID];
    v135 = specialized @nonobjc FPProviderDomain.__allocating_init(id:cachePolicy:)(v50, 1);

    if (v135)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v260 = v135;
      (*(v18 + 104))(v21, *MEMORY[0x277D851B8], v17);
      v270 = static OS_dispatch_queue.global(qos:)();
      (*(v18 + 8))(v21, v17);
      v136 = v271;
      v137 = v272;
      v138 = v253;
      (*(v271 + 16))(v253, a1, v272);
      v139 = (*(v136 + 80) + 24) & ~*(v136 + 80);
      v140 = (v139 + v255 + 7) & 0xFFFFFFFFFFFFFFF8;
      v268 = (v139 + v255 + 23) & 0xFFFFFFFFFFFFFFF8;
      v141 = (v139 + v255 + 39) & 0xFFFFFFFFFFFFFFF8;
      v142 = swift_allocObject();
      *(v142 + 16) = a2;
      (*(v136 + 32))(v142 + v139, v138, v137);
      v143 = v142 + v140;
      v144 = v260;
      *v143 = v260;
      *(v143 + 8) = v265 & 1;
      v145 = v142 + v268;
      *v145 = v266;
      *(v145 + 8) = v262 & 1;
      v146 = v254;
      *(v142 + v141) = v254;
      v147 = (v142 + ((v141 + 15) & 0xFFFFFFFFFFFFFFF8));
      v148 = v261;
      *v147 = partial apply for closure #1 in callLaunchUtils #1 (with:node:) in DOCItemInfoContentViewController.openSelectedNode(_:);
      v147[1] = v148;
      v279 = partial apply for closure #1 in _tryOpeningInDefaultApp #1 (_:node:preferQuickLook:) in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:);
      v280 = v142;
      aBlock = MEMORY[0x277D85DD0];
      v276 = 1107296256;
      v277 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v278 = &block_descriptor_124;
      v149 = _Block_copy(&aBlock);
      v150 = a2;
      v151 = v146;
      v152 = v144;

      v153 = v248;
      static DispatchQoS.unspecified.getter();
      v274[0] = MEMORY[0x277D84F90];
      _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v154 = v263;
      v155 = v269;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v156 = v270;
      MEMORY[0x24C1FB9A0](0, v153, v154, v149);
      _Block_release(v149);

      (*(v267 + 8))(v154, v155);
      (*(v256 + 8))(v153, v264);

      return;
    }
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  v52 = __swift_project_value_buffer(v51, static Logger.UI);
  v53 = a2;
  v267 = v52;
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.error.getter();

  v56 = os_log_type_enabled(v54, v55);
  v268 = a1;
  if (v56)
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock = v58;
    *v57 = 136315650;
    *(v57 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x8000000249BDBE50, &aBlock);
    *(v57 + 12) = 2080;
    v274[0] = [v53 providerDomainID];
    type metadata accessor for FPProviderDomainID(0);
    v59 = String.init<A>(describing:)();
    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &aBlock);

    *(v57 + 14) = v61;
    *(v57 + 22) = 2080;
    a1 = v268;
    v274[0] = v53;
    v62 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    v63 = String.init<A>(describing:)();
    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, &aBlock);

    *(v57 + 24) = v65;
    _os_log_impl(&dword_2493AC000, v54, v55, "%s error creating FPProviderDomain from domainID: %s of node: %s", v57, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v58, -1, -1);
    MEMORY[0x24C1FE850](v57, -1, -1);
  }

  v66 = v271;
  v67 = v272;
  v68 = v270;
  v69 = v270;
  v269 = *(v271 + 16);
  v270 = (v271 + 16);
  (v269)(v69, a1, v272);
  v70 = v53;
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.debug.getter();
  v264 = v70;

  if (os_log_type_enabled(v71, v72))
  {
    v73 = v68;
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v274[0] = v75;
    *v74 = 136316162;
    *(v74 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000089, 0x8000000249BDBDC0, v274);
    *(v74 + 12) = 2080;
    _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v76 = dispatch thunk of CustomStringConvertible.description.getter();
    v78 = v77;
    v256 = *(v271 + 8);
    (v256)(v73, v272);
    v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v78, v274);

    *(v74 + 14) = v79;
    *(v74 + 22) = 2080;
    aBlock = v264;
    v80 = v264;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pSgMd);
    v81 = String.init<A>(describing:)();
    v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, v274);

    *(v74 + 24) = v83;
    *(v74 + 32) = 2080;
    aBlock = 0;
    v276 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
    v84 = String.init<A>(describing:)();
    v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, v274);

    *(v74 + 34) = v86;
    v87 = v268;
    *(v74 + 42) = 2080;
    aBlock = 0;
    v276 = 0;
    v88 = String.init<A>(describing:)();
    v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v89, v274);

    *(v74 + 44) = v90;
    v66 = v271;
    _os_log_impl(&dword_2493AC000, v71, v72, "%s trying to open: %s node: %s providerBundleId: %s appContainerBundleId: %s", v74, 0x34u);
    swift_arrayDestroy();
    v91 = v75;
    v67 = v272;
    MEMORY[0x24C1FE850](v91, -1, -1);
    MEMORY[0x24C1FE850](v74, -1, -1);
  }

  else
  {

    v256 = *(v66 + 8);
    (v256)(v68, v67);
    v87 = a1;
  }

  v92 = swift_allocObject();
  v94 = v258;
  v93 = v259;
  *(v92 + 16) = v259;
  *(v92 + 24) = v94;
  v95 = *(a8 + 48);
  *(v92 + 64) = *(a8 + 32);
  *(v92 + 80) = v95;
  *(v92 + 96) = *(a8 + 64);
  v96 = *(a8 + 16);
  *(v92 + 32) = *a8;
  *(v92 + 48) = v96;
  v263 = v92;
  v97 = v260;
  v98 = v87;
  (v269)(v260, v87, v67);
  (*(v66 + 56))(v97, 0, 1, v67);
  v99 = v93;
  v100 = v94;
  outlined init with copy of DOCInteractionManagerContext(a8, &aBlock);
  v101 = v99;
  v102 = v100;
  outlined init with copy of DOCInteractionManagerContext(a8, &aBlock);
  v259 = v101;
  v103 = v102;
  outlined init with copy of DOCInteractionManagerContext(a8, &aBlock);
  v104 = v264;
  static LaunchUtils.launchAction(for:node:urlManagedState:providerBundleId:appContainerBundleId:requireOpenIn:preferQuickLook:)(v97, v104, 0, 0, v265 & 1, v274, v262 & 1);
  outlined destroy of CharacterSet?(v97, &_s10Foundation3URLVSgMd);
  if (!v274[0])
  {
    v117 = v259;
    v118 = v259;
    v119 = v103;
    outlined init with copy of DOCInteractionManagerContext(a8, &aBlock);
    _s26DocumentManagerExecutables11LaunchUtilsV27installConfigurationProfile4from15completionBlocky10Foundation3URLV_ySbctFZ04_s26ab85Executables32DOCItemInfoContentViewControllerC16openSelectedNodeyySo7DOCNode_pF15calldE46L_4with4nodey10Foundation3URLV_SoAE_ptFySbcfU_AA014DOCInteractionB0CSo0Y0_pAA014DOCInteractionB7ContextVTf1ncn_nTf4nnggg_nTf4nnnen_nSo6FPItemC_Tt0g5(v98, v118, v119, a8);
    outlined destroy of DOCInteractionManagerContext(a8);

LABEL_28:
    outlined destroy of DOCInteractionManagerContext(a8);
    outlined destroy of DOCInteractionManagerContext(a8);

    return;
  }

  v264 = v104;
  if (v274[0] == 1)
  {
    v105 = v249;
    (v269)(v249, v98, v67);
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = v105;
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v258 = v103;
      v111 = v110;
      aBlock = v110;
      *v109 = 136315394;
      *(v109 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000076, 0x8000000249BDBD40, &aBlock);
      *(v109 + 12) = 2080;
      _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v112 = dispatch thunk of CustomStringConvertible.description.getter();
      v114 = v113;
      (v256)(v108, v67);
      v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v112, v114, &aBlock);

      *(v109 + 14) = v115;
      _os_log_impl(&dword_2493AC000, v106, v107, "%s should quicklook: %s", v109, 0x16u);
      swift_arrayDestroy();
      v116 = v111;
      v103 = v258;
      MEMORY[0x24C1FE850](v116, -1, -1);
      MEMORY[0x24C1FE850](v109, -1, -1);
    }

    else
    {

      (v256)(v105, v67);
    }

    v117 = v259;
    v157 = swift_allocObject();
    *(v157 + 16) = v117;
    *(v157 + 24) = 0;
    *(v157 + 32) = v103;
    v158 = *a8;
    *(v157 + 56) = *(a8 + 16);
    v159 = *(a8 + 48);
    *(v157 + 72) = *(a8 + 32);
    *(v157 + 88) = v159;
    *(v157 + 104) = *(a8 + 64);
    *(v157 + 40) = v158;
    v160 = v117;
    v161 = v103;
    outlined init with copy of DOCInteractionManagerContext(a8, &aBlock);
    DOCRunInMainThread(_:)();

    goto LABEL_27;
  }

  v258 = v103;
  v120 = v274[2];
  v262 = v274[1];

  v121 = v250;
  v122 = v98;
  v123 = v120;
  (v269)(v250, v122, v67);

  v124 = Logger.logObject.getter();
  v125 = static os_log_type_t.debug.getter();

  v126 = os_log_type_enabled(v124, v125);
  v247 = a8;
  v260 = v120;
  if (v126)
  {
    v127 = v121;
    v128 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    aBlock = v129;
    *v128 = 136315650;
    *(v128 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000076, 0x8000000249BDBD40, &aBlock);
    *(v128 + 12) = 2080;
    _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v130 = dispatch thunk of CustomStringConvertible.description.getter();
    v132 = v131;
    (v256)(v127, v272);
    v133 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v132, &aBlock);
    v67 = v272;

    *(v128 + 14) = v133;
    *(v128 + 22) = 2080;
    v66 = v271;
    *(v128 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v262, v123, &aBlock);
    _os_log_impl(&dword_2493AC000, v124, v125, "%s should open: %s in: %s", v128, 0x20u);
    swift_arrayDestroy();
    v134 = v129;
    v122 = v268;
    MEMORY[0x24C1FE850](v134, -1, -1);
    MEMORY[0x24C1FE850](v128, -1, -1);
  }

  else
  {

    (v256)(v121, v67);
  }

  v162 = v251;
  (v269)(v251, v122, v67);
  v163 = *(v66 + 80);
  v164 = (v163 + 32) & ~v163;
  v165 = (v255 + v164 + 7) & 0xFFFFFFFFFFFFFFF8;
  v166 = (v165 + 23) & 0xFFFFFFFFFFFFFFF8;
  v246 = ((v166 + 15) & 0xFFFFFFFFFFFFFFF8);
  v167 = (v166 + 39) & 0xFFFFFFFFFFFFFFF8;
  v250 = v163;
  v168 = swift_allocObject();
  v169 = v263;
  *(v168 + 16) = closure #1 in callLaunchUtils #1 (with:node:) in DOCItemInfoContentViewController.openSelectedNode(_:)partial apply;
  *(v168 + 24) = v169;
  v170 = *(v66 + 32);
  v271 = v66 + 32;
  v248 = v170;
  (v170)(v168 + v164, v162, v272);
  v171 = (v168 + v165);
  v172 = v260;
  *v171 = v262;
  v171[1] = v172;
  *(v168 + v166) = v266;
  v173 = &v246[v168];
  v174 = v265 & 1;
  *v173 = 0;
  *(v173 + 1) = 0;
  LODWORD(v251) = v174;
  v173[16] = v174;
  v175 = v254;
  *(v168 + v167) = v254;
  v176 = v264;
  v249 = v168;
  *(v168 + ((v167 + 15) & 0xFFFFFFFFFFFFFFF8)) = v264;
  v177 = v272;
  v178 = v252;
  (v269)(v252, v268, v272);
  swift_bridgeObjectRetain_n();
  v246 = v176;

  v179 = v175;
  v180 = Logger.logObject.getter();
  v181 = static os_log_type_t.debug.getter();

  v182 = v172;
  if (os_log_type_enabled(v180, v181))
  {
    v183 = swift_slowAlloc();
    v184 = v172;
    v185 = v177;
    v186 = swift_slowAlloc();
    aBlock = v186;
    *v183 = 136315650;
    *(v183 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000006ELL, 0x8000000249BDBCD0, &aBlock);
    *(v183 + 12) = 2080;
    _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v187 = dispatch thunk of CustomStringConvertible.description.getter();
    v189 = v188;
    v190 = v185;
    v182 = v184;
    (v256)(v178, v190);
    v191 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v187, v189, &aBlock);

    *(v183 + 14) = v191;
    *(v183 + 22) = 2080;
    *(v183 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v262, v184, &aBlock);
    _os_log_impl(&dword_2493AC000, v180, v181, "%s attempting to open: %s in: %s", v183, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v186, -1, -1);
    MEMORY[0x24C1FE850](v183, -1, -1);
  }

  else
  {

    (v256)(v178, v177);
  }

  a8 = v247;
  v192 = v250;
  v193 = ~v250;
  if (v265)
  {
    v194 = v268;
    URL._bridgeToObjectiveC()(v265);
    v267 = v195;
    v196 = v262;
    v265 = MEMORY[0x24C1FAD20](v262, v182);
    v197 = v253;
    v198 = v272;
    (v269)(v253, v194, v272);
    v199 = (v192 + 16) & v193;
    v200 = (v199 + v255 + 7) & 0xFFFFFFFFFFFFFFF8;
    v201 = (v199 + v255 + 31) & 0xFFFFFFFFFFFFFFF8;
    v202 = swift_allocObject();
    (v248)(v202 + v199, v197, v198);
    v203 = v202 + v200;
    v204 = v249;
    *v203 = partial apply for closure #1 in determineLaunchAction #1 (for:node:urlManagedState:providerBundleId:appContainerBundleId:preferQuickLook:completionBlock:) in __tryOpeningInDefaultApp #1 (for:node:urlManagedState:providerBundleId:appContainerBundleId:preferQuickLook:alertPresenting:completionBlock:) in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:);
    *(v203 + 8) = v204;
    *(v203 + 16) = v251;
    v205 = (v202 + v201);
    v206 = v260;
    *v205 = v196;
    v205[1] = v206;
    *(v202 + ((v201 + 23) & 0xFFFFFFFFFFFFFFF8)) = v266;
    v279 = partial apply for closure #1 in static LaunchUtils.open(_:node:urlManagedState:in:requireOpenIn:alertPresenting:completionBlock:);
    v280 = v202;
    aBlock = MEMORY[0x277D85DD0];
    v276 = 1107296256;
    v277 = thunk for @escaping @callee_guaranteed (@guaranteed CFURLRef?, @guaranteed CFErrorRef?) -> ();
    v278 = &block_descriptor_115;
    v207 = _Block_copy(&aBlock);

    v208 = v267;
    v209 = v265;
    FPExtendBookmarkForDocumentURL();

    _Block_release(v207);
    v103 = v258;

    v117 = v259;

LABEL_27:
    v104 = v264;
    goto LABEL_28;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9A480;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v211;
  v212 = MEMORY[0x277D839B0];
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = v251;
  v267 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of CharacterSet?(inited + 32, &_sSS_yptMd);
  v213 = swift_initStackObject();
  *(v213 + 16) = xmmword_249B9FA70;
  *(v213 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v213 + 40) = v214;
  *(v213 + 72) = v212;
  *(v213 + 48) = 1;
  *(v213 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v213 + 88) = v215;
  *(v213 + 120) = v212;
  *(v213 + 96) = 1;
  v265 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v213);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
  swift_arrayDestroy();
  v216 = v268;
  LOBYTE(v213) = URL.startAccessingSecurityScopedResource()();
  v217 = v253;
  v218 = v182;
  v219 = v272;
  (v269)(v253, v216, v272);
  v220 = (v250 + 17) & v193;
  v221 = (v220 + v255 + 7) & 0xFFFFFFFFFFFFFFF8;
  v222 = (v220 + v255 + 31) & 0xFFFFFFFFFFFFFFF8;
  v223 = swift_allocObject();
  *(v223 + 16) = v213 & 1;
  (v248)(v223 + v220, v217, v219);
  v224 = v223 + v221;
  v225 = v262;
  *v224 = v262;
  *(v224 + 8) = v218;
  *(v224 + 16) = v251;
  v226 = (v223 + v222);
  v227 = v249;
  *v226 = partial apply for closure #1 in determineLaunchAction #1 (for:node:urlManagedState:providerBundleId:appContainerBundleId:preferQuickLook:completionBlock:) in __tryOpeningInDefaultApp #1 (for:node:urlManagedState:providerBundleId:appContainerBundleId:preferQuickLook:alertPresenting:completionBlock:) in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:);
  v226[1] = v227;
  v228 = type metadata accessor for LaunchUtils.OpenAppDelegate();
  v229 = objc_allocWithZone(v228);
  v230 = &v229[OBJC_IVAR____TtCV26DocumentManagerExecutables11LaunchUtilsP33_785CBA6FF492D1A84D3A93B2D10ABBAB15OpenAppDelegate_completionBlock];
  *v230 = partial apply for closure #1 in openResource #1 (withBookmark:) in static LaunchUtils.open(_:node:urlManagedState:in:requireOpenIn:alertPresenting:completionBlock:);
  v230[1] = v223;
  v273.receiver = v229;
  v273.super_class = v228;

  v231 = objc_msgSendSuper2(&v273, sel_init);
  v232 = [objc_opt_self() defaultWorkspace];
  if (v232)
  {
    v234 = v232;
    URL._bridgeToObjectiveC()(v233);
    v236 = v235;
    v237 = MEMORY[0x24C1FAD20](v225, v260);
    LODWORD(v272) = v266 == 1;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v239 = Dictionary._bridgeToObjectiveC()().super.isa;
    v240 = [v234 operationToOpenResource:v236 usingApplication:v237 uniqueDocumentIdentifier:0 isContentManaged:v272 sourceAuditToken:0 userInfo:isa options:v239 delegate:v231];

    v241 = v259;
    if (v240)
    {

      [v240 start];
      v242 = v258;

      outlined destroy of DOCInteractionManagerContext(a8);
      outlined destroy of DOCInteractionManagerContext(a8);

      return;
    }
  }

  else
  {
    v241 = v258;

    v243 = v259;
    outlined destroy of DOCInteractionManagerContext(a8);

    outlined destroy of DOCInteractionManagerContext(a8);
    __break(1u);
  }

  v244 = v258;

  outlined destroy of DOCInteractionManagerContext(a8);
  outlined destroy of DOCInteractionManagerContext(a8);
  __break(1u);
}

uint64_t _s26DocumentManagerExecutables11LaunchUtilsV27installConfigurationProfile4from15completionBlocky10Foundation3URLV_ySbctFZ04_s26ab85Executables32DOCItemInfoContentViewControllerC16openSelectedNodeyySo7DOCNode_pF15calldE46L_4with4nodey10Foundation3URLV_SoAE_ptFySbcfU_AA014DOCInteractionB0CSo0Y0_pAA014DOCInteractionB7ContextVTf1ncn_nTf4nnggg_nTf4nnnen_nSo6FPItemC_Tt0g5(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  aBlock[9] = *MEMORY[0x277D85DE8];
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v86 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v83 - v14;
  v94 = v16;
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v83 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  v22 = *(a4 + 48);
  *(v21 + 64) = *(a4 + 32);
  *(v21 + 80) = v22;
  *(v21 + 96) = *(a4 + 64);
  v23 = *(a4 + 16);
  *(v21 + 32) = *a4;
  *(v21 + 48) = v23;
  v95 = v21;
  v89 = a2;
  v88 = a3;
  v90 = a4;
  outlined init with copy of DOCInteractionManagerContext(a4, aBlock);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v25 = __swift_project_value_buffer(v24, static Logger.UI);
  v96 = *(v9 + 16);
  v97 = (v9 + 16);
  v96(v20, a1, v8);
  v85 = v25;
  v26 = v8;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  v29 = os_log_type_enabled(v27, v28);
  v92 = a1;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v30 = 136315394;
    *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249BDBE90, aBlock);
    *(v30 + 12) = 2080;
    _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    v84 = *(v9 + 8);
    v84(v20, v26);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, aBlock);

    *(v30 + 14) = v35;
    _os_log_impl(&dword_2493AC000, v27, v28, "%s attempting to install: %s", v30, 0x16u);
    swift_arrayDestroy();
    v36 = v31;
    a1 = v92;
    MEMORY[0x24C1FE850](v36, -1, -1);
    MEMORY[0x24C1FE850](v30, -1, -1);
  }

  else
  {

    v84 = *(v9 + 8);
    v84(v20, v8);
  }

  v37 = URL.lastPathComponent.getter();
  v39 = v38;
  v91 = URL.startAccessingSecurityScopedResource()();
  v40 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) init];
  v98 = 0;
  URL._bridgeToObjectiveC()(v41);
  v93 = v42;
  v96(v15, a1, v26);
  v43 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v44 = v26;
  v45 = v9;
  v46 = (v94 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  *(v47 + 2) = &v98;
  *(v47 + 3) = v37;
  *(v47 + 4) = v39;
  v87 = v45;
  v48 = v45;
  v49 = v44;
  (*(v48 + 32))(&v47[v43], v15, v44);
  v50 = &v47[v46];
  v51 = v95;
  *v50 = closure #1 in callLaunchUtils #1 (with:node:) in DOCItemInfoContentViewController.openSelectedNode(_:)partial apply;
  *(v50 + 1) = v51;
  v52 = swift_allocObject();
  v52[2] = partial apply for closure #1 in static LaunchUtils.installConfigurationProfile(from:completionBlock:);
  v52[3] = v47;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@in_guaranteed URL) -> ();
  aBlock[5] = v52;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed URL) -> ();
  aBlock[3] = &block_descriptor_137;
  v53 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v94 = v40;
  v54 = v93;
  [v40 coordinateReadingItemAtURL:v93 options:0 error:aBlock byAccessor:v53];
  _Block_release(v53);

  v55 = aBlock[0];
  v56 = aBlock[0];
  LOBYTE(v54) = swift_isEscapingClosureAtFileLocation();

  if (v54)
  {
    __break(1u);
  }

  if (v98 == 1)
  {

    if (!v91)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v57 = v86;
  v96(v86, a1, v49);
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v97 = v56;
    v61 = v60;
    v96 = swift_slowAlloc();
    aBlock[0] = v96;
    *v61 = 136315650;
    *(v61 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249BDBE90, aBlock);
    *(v61 + 12) = 2080;
    _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    v63 = v57;
    v64 = v62;
    v66 = v65;
    v84(v63, v49);
    v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, aBlock);

    *(v61 + 14) = v67;
    *(v61 + 22) = 2080;
    v99 = v55;
    v68 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7NSErrorCSgMd);
    v69 = String.init<A>(describing:)();
    v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, aBlock);

    *(v61 + 24) = v71;
    _os_log_impl(&dword_2493AC000, v58, v59, "%s failed to read: %s error: %s", v61, 0x20u);
    v72 = v96;
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v72, -1, -1);
    v73 = v61;
    v56 = v97;
    MEMORY[0x24C1FE850](v73, -1, -1);
  }

  else
  {

    v84(v57, v49);
  }

  v74 = swift_allocObject();
  v75 = v89;
  v76 = v90;
  *(v74 + 16) = v89;
  *(v74 + 24) = 0;
  v77 = v88;
  *(v74 + 32) = v88;
  v78 = *v76;
  *(v74 + 56) = *(v76 + 16);
  v79 = *(v76 + 48);
  *(v74 + 72) = *(v76 + 32);
  *(v74 + 88) = v79;
  *(v74 + 104) = *(v76 + 64);
  *(v74 + 40) = v78;
  v80 = v75;
  v81 = v77;
  outlined init with copy of DOCInteractionManagerContext(v76, aBlock);
  DOCRunInMainThread(_:)();

  if (v91)
  {
LABEL_14:
    URL.stopAccessingSecurityScopedResource()();
  }

LABEL_15:
}

void specialized DOCItemInfoContentViewController.nodeDownloadButton(_:requestedOpening:)(void *a1)
{
  if ([a1 isFolder] && (objc_msgSend(a1, sel_doc_isCollaborationInvitation) & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [a1 fpfs_fpItem];
      if (v6)
      {
        v7 = v6;
        [v5 didTapLocationOf_];
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    v3 = [a1 fpfs_fpItem];
    if (v3)
    {
      v8 = v3;
      specialized DOCItemInfoContentViewController.openSelectedNode(_:)(v8, v1);
    }
  }
}

uint64_t specialized DOCImageContainerFittingView.dragInteraction(_:itemsForBeginning:)(void *a1, void *a2)
{
  type metadata accessor for DOCDragInteraction();
  if (swift_dynamicCastClass())
  {
    swift_getObjectType();
    v4 = a1;
    swift_unknownObjectRetain();
    v5 = DOCNode.supportsDrag.getter();
    swift_unknownObjectRelease();
    if ((v5 & 1) != 0 && (ObjectType = swift_getObjectType(), (v7 = DOCNode.dragItemFor(session:supportsPickingFolders:)(a2, 2, ObjectType)) != 0))
    {
      v8 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_249BA0290;
      *(v9 + 32) = v8;
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    return v9;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id specialized DOCImageContainerFittingView.dragInteraction(_:previewForLifting:session:)(void *a1)
{
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x138))();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [objc_allocWithZone(MEMORY[0x277D75480]) init];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 clearColor];
  [v7 setBackgroundColor_];

  v9 = v4;
  [v9 frame];
  if (v11 != 0.0 || v10 != 0.0)
  {
    type metadata accessor for DOCDragInteraction();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = v12;
      v14 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_D84699134F2F83A5DD978A1B1F3ADA5818DOCDragInteraction_node;
      v15 = *(v12 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_D84699134F2F83A5DD978A1B1F3ADA5818DOCDragInteraction_node);
      v16 = a1;
      if ([v15 isFolder])
      {
        v17 = *(v13 + v14);
        swift_unknownObjectRetain();
        [v9 bounds];
        v20 = specialized static UIBezierPath.path(for:thumbnailSize:)(v17, v18, v19);
        swift_unknownObjectRelease();
        [v7 setVisiblePath_];

        v16 = v20;
      }
    }
  }

  v21 = [objc_allocWithZone(MEMORY[0x277D75B88]) initWithView:v9 parameters:v7];

  return v21;
}

uint64_t keypath_get_39Tm@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t keypath_get_47Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t getEnumTagSinglePayload for DOCItemInfoContentViewController.Metrics(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCItemInfoContentViewController.Metrics(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

void partial apply for closure #1 in determineLaunchAction #1 (for:node:urlManagedState:providerBundleId:appContainerBundleId:preferQuickLook:completionBlock:) in __tryOpeningInDefaultApp #1 (for:node:urlManagedState:providerBundleId:appContainerBundleId:preferQuickLook:alertPresenting:completionBlock:) in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)(char a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  closure #1 in determineLaunchAction #1 (for:node:urlManagedState:providerBundleId:appContainerBundleId:preferQuickLook:completionBlock:) in __tryOpeningInDefaultApp #1 (for:node:urlManagedState:providerBundleId:appContainerBundleId:preferQuickLook:alertPresenting:completionBlock:) in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)(a1, *(v1 + 16), *(v1 + 24), (v1 + v4), *(v1 + v5), *(v1 + v5 + 8), *(v1 + v6), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 16));
}

void partial apply for closure #1 in openResource #1 (withBookmark:) in static LaunchUtils.open(_:node:urlManagedState:in:requireOpenIn:alertPresenting:completionBlock:)(int a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 17) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + 16);
  v7 = v1 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = v1 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);

  closure #1 in openResource #1 (withBookmark:) in static LaunchUtils.open(_:node:urlManagedState:in:requireOpenIn:alertPresenting:completionBlock:)(a1, v6, v1 + v4, v8, v9, v10, v12, v13);
}

uint64_t partial apply for closure #1 in static LaunchUtils.open(_:node:urlManagedState:in:requireOpenIn:alertPresenting:completionBlock:)(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  return closure #1 in static LaunchUtils.open(_:node:urlManagedState:in:requireOpenIn:alertPresenting:completionBlock:)(a1, a2, v2 + v6, *(v2 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 16), *(v2 + ((v7 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 31) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((((v7 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t partial apply for closure #1 in _tryOpeningInDefaultApp #1 (_:node:preferQuickLook:) in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  return closure #1 in _tryOpeningInDefaultApp #1 (_:node:preferQuickLook:) in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)(*(v0 + 16), v0 + v2, *(v0 + ((v3 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v3 + 39) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v3 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v3 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t partial apply for closure #1 in static LaunchUtils.installConfigurationProfile(from:completionBlock:)(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return closure #1 in static LaunchUtils.installConfigurationProfile(from:completionBlock:)(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t objectdestroy_117Tm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (*(v0 + 48))
  {
  }

  if (*(v0 + 64))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t objectdestroy_92Tm()
{
  swift_unknownObjectRelease();
  if (*(v0 + 40))
  {
  }

  if (*(v0 + 56))
  {
  }

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t objectdestroy_98Tm_0()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (*(v0 + 40))
  {
  }

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t partial apply for closure #1 in closure #2 in DOCItemInfoContentViewController.viewDidLoad()(uint64_t a1)
{
  v4 = *(type metadata accessor for FINodeEntity() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return closure #1 in closure #2 in DOCItemInfoContentViewController.viewDidLoad()(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_30Tm_2()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_6Tm_0(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t DOCNodeCollection.toggleNode(_:nodes:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v2) + 0x280))(1);
  result = (*((*v4 & *v2) + 0x190))(v5);
  if (result)
  {
    v8 = v7;
    result = (*((*v4 & *v2) + 0x1B0))();
    if (result)
    {
      v9 = result;
      ObjectType = swift_getObjectType();
      (*(v8 + 56))(v9, a2, ObjectType, v8);
      swift_unknownObjectRelease();

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t DOCNodeCollection.data(forNodeCollectionShouldBeReloaded:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v1) + 0x280))(1);
  v6 = *((*v4 & *a1) + 0x258);
  v7 = (v6)(v5);
  if (v7 >> 62)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8 >= 1)
  {
    result = (*((*v4 & *v2) + 0x190))(result);
    if (result)
    {
      v11 = v10;
      result = (*((*v4 & *a1) + 0x1B0))();
      if (result)
      {
        v12 = result;
        ObjectType = swift_getObjectType();
        v14 = v6();
        (*(v11 + 56))(v12, v14, ObjectType, v11);
        swift_unknownObjectRelease();

        return swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t DOCNodeCollection.nodeCollection(_:didEncounterError:)(uint64_t a1, uint64_t a2)
{
  result = (*((*MEMORY[0x277D85000] & *v2) + 0x190))();
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(v2, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t DOCNodeCollection.nodeCollectionDidFinishGathering(_:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *a1) + 0x258);
  v6 = v5();
  if (v6 >> 62)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7 >= 1)
  {
    v9 = (*((*v4 & *v2) + 0x280))(1);
    result = (*((*v4 & *v2) + 0x190))(v9);
    if (result)
    {
      v11 = v10;
      result = (*((*v4 & *a1) + 0x1B0))();
      if (result)
      {
        v12 = result;
        ObjectType = swift_getObjectType();
        v14 = v5();
        (*(v11 + 56))(v12, v14, ObjectType, v11);
        swift_unknownObjectRelease();

        return swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t DOCNodeCollection.nodeCollectionDidStartGathering(_:)()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x280))(1);
  result = (*((*v1 & *v0) + 0x190))(v2);
  if (result)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 40))(v0, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t DOCNodeCollection.nodeCollection(_:didUpdate:replaceNodesByFormerID:deleteNodesWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = MEMORY[0x277D85000];
  v10 = (*((*MEMORY[0x277D85000] & *v4) + 0x280))(1);
  result = (*((*v9 & *v4) + 0x190))(v10);
  if (result)
  {
    v13 = v12;
    ObjectType = swift_getObjectType();
    (*(v13 + 48))(a1, a2, a3, a4, ObjectType, v13);

    return swift_unknownObjectRelease();
  }

  return result;
}

void DOCNodeCollection.expandNode(_:)()
{
  v1 = v0;
  v2 = type metadata accessor for DOCNodeCollection();
  swift_getObjectType();
  v3 = swift_unknownObjectRetain();
  LOBYTE(v17) = 1;
  v4 = specialized DOCNodeCollection.__allocating_init(for:configuration:source:extraOptions:)(v3, 0, 0, 0x100000000uLL, v2);
  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v4) + 0x198);
  v7 = swift_unknownObjectRetain();
  v6(v7, &protocol witness table for DOCNodeCollection);
  v8 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_sortDescriptor + 8);
  v9 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_sortDescriptor + 16);
  v10 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_sortDescriptor + 24);
  v17 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_sortDescriptor);
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v11 = *((*v5 & *v4) + 0x228);
  outlined copy of DOCItemSortDescriptor?(v17, v8);
  v11(&v17);
  outlined consume of DOCItemSortDescriptor?(v17, v18);
  DOCNode.identifierKey.getter();
  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_expandedChildNodesMap;
  swift_beginAccess();
  v13 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v1 + v12);
  *(v1 + v12) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, &v17, isUniquelyReferenced_nonNull_native);
  outlined destroy of AnyHashable(&v17);
  *(v1 + v12) = v16;
  v15 = swift_endAccess();
  (*((*v5 & *v13) + 0x1C0))(v15);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_indentation) = -1;
  (*((*v5 & *v1) + 0x280))(1);
}

void *DOCNodeCollection.__allocating_init(for:configuration:source:extraOptions:)(void *a1, void *a2, void *a3, unint64_t a4)
{
  swift_getObjectType();

  return specialized DOCNodeCollection.__allocating_init(for:configuration:source:extraOptions:)(a1, a2, a3, a4 | ((HIDWORD(a4) & 1) << 32), v4);
}

uint64_t DOCNodeCollection.isExpanded(_:)()
{
  v1 = v0;
  swift_getObjectType();
  DOCNode.identifierKey.getter();
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_expandedChildNodesMap;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {

    v4 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
    if (v5)
    {
      v6 = *(*(v3 + 56) + 8 * v4);
      outlined destroy of AnyHashable(v8);

      return 1;
    }
  }

  outlined destroy of AnyHashable(v8);
  return 0;
}

unint64_t DOCNodeCollection.collapseNode(_:)()
{
  v1 = v0;
  swift_getObjectType();
  DOCNode.identifierKey.getter();
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_expandedChildNodesMap;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = MEMORY[0x277D85000];
  if (!*(v3 + 16))
  {
    goto LABEL_12;
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
  if ((v6 & 1) == 0)
  {

LABEL_12:
    outlined destroy of AnyHashable(v16);
LABEL_15:
    result = (*((*v4 & *v1) + 0x280))(1);
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_indentation) = -1;
    return result;
  }

  v7 = *(*(v3 + 56) + 8 * v5);
  outlined destroy of AnyHashable(v16);

  v9 = (*((*v4 & *v7) + 0x1C8))(v8);
  result = (*((*v4 & *v7) + 0x258))(v9);
  v11 = result;
  if (!(result >> 62))
  {
    v12 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_14:

    DOCNode.identifierKey.getter();
    swift_beginAccess();
    specialized Dictionary.subscript.setter(0, v16);
    swift_endAccess();

    v4 = MEMORY[0x277D85000];
    goto LABEL_15;
  }

  result = __CocoaSet.count.getter();
  v12 = result;
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_5:
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = *((*MEMORY[0x277D85000] & *v1) + 0x130);
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x24C1FC540](v13, v11);
      }

      else
      {
        v15 = *(v11 + 8 * v13 + 32);
        swift_unknownObjectRetain();
      }

      ++v13;
      v14(v15);
      swift_unknownObjectRelease();
    }

    while (v12 != v13);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t DOCNodeCollection.logPrefix.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection____lazy_storage___logPrefix);
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection____lazy_storage___logPrefix + 8))
  {
    v2 = *v1;
  }

  else
  {
    if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16))
    {
      if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16) == 1)
      {
        v3 = 0xE200000000000000;
        v2 = 21316;
      }

      else
      {
        v3 = 0xE700000000000000;
        v2 = 0x6572756C696146;
      }
    }

    else
    {
      v3 = 0xE200000000000000;
      v2 = 20550;
    }

    *v1 = v2;
    v1[1] = v3;
  }

  return v2;
}

uint64_t DOCNodeCollection.logPrefix.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection____lazy_storage___logPrefix);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t (*DOCNodeCollection.logPrefix.modify(uint64_t *a1))(void *a1)
{
  a1[2] = v1;
  *a1 = DOCNodeCollection.logPrefix.getter();
  a1[1] = v3;
  return DOCNodeCollection.logPrefix.modify;
}

uint64_t DOCNodeCollection.logPrefix.modify(void *a1)
{
  v1 = a1[1];
  v2 = (a1[2] + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection____lazy_storage___logPrefix);
  *v2 = *a1;
  v2[1] = v1;
}

void *DOCNodeCollection.init(itemCollection:observedNode:)(void *a1, void *a2)
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_expandedChildNodesMap;
  v6 = MEMORY[0x277D84F90];
  *&v2[v5] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_26DocumentManagerExecutables17DOCNodeCollectionCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v7 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_sortDescriptor];
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  v7[24] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_indentation] = -1;
  v8 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection____lazy_storage___logPrefix];
  *v8 = 0;
  v8[1] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_isGathering;
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_isGathering] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_isGatheringObservation] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_flatNodesInternal] = v6;
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_flatNodesAreDirty] = 1;
  v10 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type];
  *v10 = a1;
  *(v10 + 1) = a2;
  v10[16] = 0;
  swift_unknownObjectRetain();
  v35 = a1;
  v11 = a1;
  LOBYTE(v6) = [v11 isGathering];
  swift_beginAccess();
  v2[v9] = v6;
  v37.receiver = v2;
  v37.super_class = type metadata accessor for DOCNodeCollection();
  v12 = objc_msgSendSuper2(&v37, sel_init);
  v13 = one-time initialization token for Enumeration;
  v14 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.Enumeration);
  v16 = v11;
  swift_unknownObjectRetain();
  v17 = v14;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v36 = v22;
    *v20 = 136447234;
    v23 = (*((*MEMORY[0x277D85000] & *v17) + 0x138))();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v36);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2082;
    *(v20 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x8000000249BDC1F0, &v36);
    *(v20 + 22) = 2114;
    *(v20 + 24) = v17;
    v34 = v21;
    *v21 = v17;
    *(v20 + 32) = 2082;
    v26 = v17;
    if (a2)
    {
      v27 = [a2 description];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;
    }

    else
    {
      v30 = 0xE300000000000000;
      v28 = 7104878;
    }

    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v36);

    *(v20 + 34) = v31;
    *(v20 + 42) = 2114;
    *(v20 + 44) = v16;
    v34[1] = v35;
    v32 = v16;
    _os_log_impl(&dword_2493AC000, v18, v19, "%{public}s %{public}s Init DOCNodeCollection (%{public}@ with FPItem: %{public}s and FPItemCollection %{public}@", v20, 0x34u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v34, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v22, -1, -1);
    MEMORY[0x24C1FE850](v20, -1, -1);
  }

  [v16 setDelegate_];
  swift_unknownObjectRelease();
  return v17;
}

void *DOCNodeCollection.init(fileSystemCollection:)(void *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_expandedChildNodesMap;
  v4 = MEMORY[0x277D84F90];
  *&v1[v3] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_26DocumentManagerExecutables17DOCNodeCollectionCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v5 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_sortDescriptor];
  *v5 = 0;
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  v5[24] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_indentation] = -1;
  v6 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection____lazy_storage___logPrefix];
  *v6 = 0;
  v6[1] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_isGathering;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_isGathering] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_isGatheringObservation] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_flatNodesInternal] = v4;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_flatNodesAreDirty] = 1;
  v8 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type];
  *v8 = a1;
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = a1;
  v10 = [v9 isGathering];
  swift_beginAccess();
  v1[v7] = v10;
  v37.receiver = v1;
  v37.super_class = type metadata accessor for DOCNodeCollection();
  v11 = objc_msgSendSuper2(&v37, sel_init);
  v12 = one-time initialization token for Enumeration;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.Enumeration);
  v15 = v9;
  v16 = v13;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  v19 = os_log_type_enabled(v17, v18);
  v20 = MEMORY[0x277D85000];
  if (v19)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v35;
    *v21 = 136447234;
    v23 = (*((*v20 & *v16) + 0x138))();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v36);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x8000000249BDC220, &v36);
    *(v21 + 22) = 2114;
    *(v21 + 24) = v16;
    *v22 = v16;
    *(v21 + 32) = 2082;
    v26 = [(*((*v20 & *v15) + 0x118))(v16) description];
    swift_unknownObjectRelease();
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v36);
    v20 = MEMORY[0x277D85000];

    *(v21 + 34) = v30;
    *(v21 + 42) = 2114;
    *(v21 + 44) = v15;
    v22[1] = a1;
    v31 = v15;
    _os_log_impl(&dword_2493AC000, v17, v18, "%{public}s %{public}s Init DOCNodeCollection (%{public}@ with FINode: %{public}s and FileSystemCollection %{public}@", v21, 0x34u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v22, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v35, -1, -1);
    MEMORY[0x24C1FE850](v21, -1, -1);
  }

  else
  {
  }

  v32 = *((*v20 & *v15) + 0x168);
  v33 = v16;
  v32(v16, &protocol witness table for DOCNodeCollection);

  return v33;
}

void DOCNodeCollection.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v4 + 1) = a2;
  swift_unknownObjectWeakAssign();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = *(v4 + 1);
    if (((*((*MEMORY[0x277D85000] & *v2) + 0x188))() & 1) != 0 && Strong != v7 && *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16) == 2)
    {
      v9 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 8);
      swift_unknownObjectRetain();
      v10 = v9;
      swift_unknownObjectRelease();
      ObjectType = swift_getObjectType();
      (*(v8 + 16))(v2, v9, ObjectType, v8);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void (*DOCNodeCollection.delegate.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 40) = v1;
  v5 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return DOCNodeCollection.delegate.modify;
}

void DOCNodeCollection.delegate.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = v2[4];
  if (a2)
  {
    v5 = swift_unknownObjectRetain();
    DOCNodeCollection.delegate.setter(v5, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    DOCNodeCollection.delegate.setter(v3, v2[4]);
  }

  free(v2);
}

void *DOCNodeCollection.fpItemCollection.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type);
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16))
  {
    if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16) != 1)
    {
      v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 8);
      swift_unknownObjectRetain();
      v3 = v2;
      swift_unknownObjectRelease();
    }

    return 0;
  }

  else
  {
    v4 = v1;
  }

  return v1;
}

void *DOCNodeCollection.observedNode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 8);
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16))
  {
    v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type);
    if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16) == 1)
    {
      v3 = *((*MEMORY[0x277D85000] & *v2) + 0x118);
      v4 = v2;
      v5 = v3();
      outlined consume of DOCNodeCollection.CollectionType(v2, v1, 1);
      return v5;
    }

    else
    {
      swift_unknownObjectRetain();
      v6 = v1;

      return v2;
    }
  }

  else
  {
    swift_unknownObjectRetain();
  }

  return v1;
}

id DOCNodeCollection.createDocumentSentinelNode.getter()
{
  v1 = type metadata accessor for UTType();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16))
  {
    v7 = 0;
    if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16) == 1)
    {
      if (one-time initialization token for createSentinelNode != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v7 = static FISentinelNode.createSentinelNode;
      v8 = static FISentinelNode.createSentinelNode;
    }
  }

  else
  {
    v9 = v4;
    swift_beginAccess();
    v10 = static FPItem.createDocumentSentinelItemIdentifier;
    v11 = off_27EEE8030;

    v12 = MEMORY[0x24C1FAD20](v10, v11);

    v14 = static FPItem.createDocumentSentinelItemIdentifier;
    v13 = off_27EEE8030;

    v15 = MEMORY[0x24C1FAD20](v14, v13);

    static UTType.item.getter();
    v16 = objc_allocWithZone(MEMORY[0x277CC63E8]);
    v17 = MEMORY[0x24C1FAD20](0xD00000000000001DLL, 0x8000000249BCFB90);
    isa = UTType._bridgeToObjectiveC()().super.isa;
    v7 = [v16 initWithProviderDomainID:v12 itemIdentifier:v15 parentItemIdentifier:0 filename:v17 contentType:isa];

    (*(v2 + 8))(v6, v9);
  }

  return v7;
}

Swift::Void __swiftcall DOCNodeCollection.startObserving()()
{
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.Enumeration);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = MEMORY[0x277D85000];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21[0] = v9;
    *v7 = 136446722;
    v10 = (*((*v6 & *v2) + 0x138))();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v21);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000249BDC240, v21);
    *(v7 + 22) = 2114;
    *(v7 + 24) = v2;
    *v8 = v2;
    v13 = v2;
    _os_log_impl(&dword_2493AC000, v3, v4, "%{public}s %{public}s DOCNodeCollection (%{public}@)", v7, 0x20u);
    outlined destroy of NSObject?(v8);
    MEMORY[0x24C1FE850](v8, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v9, -1, -1);
    MEMORY[0x24C1FE850](v7, -1, -1);
  }

  v14 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type);
  if (!*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16))
  {
    v19 = v14;
    [v19 doc_startObserving];

LABEL_11:
    (*((*v6 & *v2) + 0x1E0))();
    DOCNodeCollection.startIsGatheringObservation()();
    return;
  }

  v15 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 8);
  if (*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16) == 1)
  {
    v16 = *((*v6 & *v14) + 0x270);
    v17 = v14;
    v16();
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v18 = *(*static DOCFileSystemCollectionManager.shared + 136);

    v18(v17);

    outlined consume of DOCNodeCollection.CollectionType(v14, v15, 1);
    goto LABEL_11;
  }

  swift_unknownObjectRetain();
  v20 = v15;
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall DOCNodeCollection.stopObserving()()
{
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.Enumeration);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = MEMORY[0x277D85000];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22[0] = v9;
    *v7 = 136446722;
    v10 = (*((*v6 & *v2) + 0x138))();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v22);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6573624F706F7473, 0xEF2928676E697672, v22);
    *(v7 + 22) = 2114;
    *(v7 + 24) = v2;
    *v8 = v2;
    v13 = v2;
    _os_log_impl(&dword_2493AC000, v3, v4, "%{public}s %{public}s DOCNodeCollection (%{public}@)", v7, 0x20u);
    outlined destroy of NSObject?(v8);
    MEMORY[0x24C1FE850](v8, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v9, -1, -1);
    MEMORY[0x24C1FE850](v7, -1, -1);
  }

  v14 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type);
  if (!*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16))
  {
    v20 = v14;
    [v20 doc_stopObserving];

LABEL_11:
    (*((*v6 & *v2) + 0x1E8))();
    DOCNodeCollection.stopIsGatheringObservation()();
    return;
  }

  v15 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 8);
  if (*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16) == 1)
  {
    v16 = one-time initialization token for shared;
    v17 = v14;
    if (v16 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v18 = *(*static DOCFileSystemCollectionManager.shared + 144);

    v18(v17);

    (*((*v6 & *v17) + 0x280))(v19);
    outlined consume of DOCNodeCollection.CollectionType(v14, v15, 1);
    goto LABEL_11;
  }

  swift_unknownObjectRetain();
  v21 = v15;
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall DOCNodeCollection.startObservationIfNeeded()()
{
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.Enumeration);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20[0] = v7;
    *v5 = 136446722;
    v8 = (*((*MEMORY[0x277D85000] & *v2) + 0x138))();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v20);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2082;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x8000000249BDC260, v20);
    *(v5 + 22) = 2114;
    *(v5 + 24) = v2;
    *v6 = v2;
    v11 = v2;
    _os_log_impl(&dword_2493AC000, v3, v4, "%{public}s %{public}s DOCNodeCollection (%{public}@)", v5, 0x20u);
    outlined destroy of NSObject?(v6);
    MEMORY[0x24C1FE850](v6, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v7, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v12 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type);
  if (!*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16))
  {
    v19 = v12;
    DOCNodeCollection.startIsGatheringObservation()();
    [v19 doc_startObservationIfNeeded];
    v16 = v19;

    goto LABEL_13;
  }

  v13 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 8);
  if (*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16) != 1)
  {
    swift_unknownObjectRetain();
    v17 = v13;
    swift_unknownObjectRelease();
    v16 = v13;

LABEL_13:

    return;
  }

  v14 = v12;
  DOCNodeCollection.startIsGatheringObservation()();
  v15 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v14) + 0x1D8))())
  {

    outlined consume of DOCNodeCollection.CollectionType(v12, v13, 1);
  }

  else
  {
    (*((*v15 & *v14) + 0x270))();
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v18 = *(*static DOCFileSystemCollectionManager.shared + 136);

    v18(v14);
    outlined consume of DOCNodeCollection.CollectionType(v12, v13, 1);
  }
}

Swift::Void __swiftcall DOCNodeCollection.restartObservation()()
{
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.Enumeration);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v25[0] = v7;
    *v5 = 136446722;
    v8 = (*((*MEMORY[0x277D85000] & *v2) + 0x138))();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v25);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2082;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x8000000249BDC280, v25);
    *(v5 + 22) = 2114;
    *(v5 + 24) = v2;
    *v6 = v2;
    v11 = v2;
    _os_log_impl(&dword_2493AC000, v3, v4, "%{public}s %{public}s DOCNodeCollection (%{public}@)", v5, 0x20u);
    outlined destroy of NSObject?(v6);
    MEMORY[0x24C1FE850](v6, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v7, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v12 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type;
  v13 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type);
  if (!v12[16])
  {
    v24 = v13;
    [v24 doc_restartObservation];
    v22 = v24;

    goto LABEL_16;
  }

  v14 = *(v12 + 1);
  if (v12[16] != 1)
  {
    swift_unknownObjectRetain();
    v23 = v14;
    swift_unknownObjectRelease();
    v22 = v14;

LABEL_16:

    return;
  }

  v15 = MEMORY[0x277D85000];
  v16 = *((*MEMORY[0x277D85000] & *v13) + 0x1D8);
  v17 = v13;
  v18 = v16();
  if (v18)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v19 = *(*static DOCFileSystemCollectionManager.shared + 144);

    v19(v17);

    v18 = (*((*v15 & *v17) + 0x280))(v20);
  }

  (*((*v15 & *v17) + 0x270))(v18);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v21 = *(*static DOCFileSystemCollectionManager.shared + 136);

  v21(v17);

  outlined consume of DOCNodeCollection.CollectionType(v13, v14, 1);
}

Swift::Void __swiftcall DOCNodeCollection.startObservingExpandedChildNodes()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_expandedChildNodesMap;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  v8 = MEMORY[0x277D85000];
  while (v5)
  {
LABEL_10:
    v10 = *(*(v2 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v5)))));
    v11 = *((*v8 & *v10) + 0x1F0);
    v12 = v10;
    if ((v11() & 1) == 0)
    {
      (*((*v8 & *v12) + 0x1C0))();
    }

    v5 &= v5 - 1;
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall DOCNodeCollection.stopObservingExpandedChildNodes()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_expandedChildNodesMap;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  v8 = MEMORY[0x277D85000];
  while (v5)
  {
LABEL_10:
    v10 = *(*(v2 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v5)))));
    v11 = *((*v8 & *v10) + 0x1F0);
    v12 = v10;
    if (v11())
    {
      (*((*v8 & *v12) + 0x1C8))();
    }

    v5 &= v5 - 1;
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
}

id DOCNodeCollection.isObserving.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type);
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16))
  {
    v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 8);
    if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16) == 1)
    {
      v3 = *((*MEMORY[0x277D85000] & *v1) + 0x1D8);
      v4 = v1;
      v5 = v3();
      outlined consume of DOCNodeCollection.CollectionType(v1, v2, 1);
      return (v5 & 1);
    }

    else
    {
      swift_unknownObjectRetain();
      v9 = v2;
      swift_unknownObjectRelease();

      return 0;
    }
  }

  else
  {
    v7 = v1;
    v8 = [v7 doc_isObserving];

    return v8;
  }
}

void DOCNodeCollection.startIsGatheringObservation()()
{
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.Enumeration);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v25 = v7;
    *v5 = 136446722;
    v8 = (*((*MEMORY[0x277D85000] & *v2) + 0x138))();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v25);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2082;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000249BDC6F0, &v25);
    *(v5 + 22) = 2114;
    *(v5 + 24) = v2;
    *v6 = v2;
    v11 = v2;
    _os_log_impl(&dword_2493AC000, v3, v4, "%{public}s %{public}s DOCNodeCollection (%{public}@)", v5, 0x20u);
    outlined destroy of NSObject?(v6);
    MEMORY[0x24C1FE850](v6, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v7, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v12 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type);
  if (!*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16))
  {
    v19 = v12;
    v25 = v19;
    swift_getKeyPath();
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v22 + 24) = v21;
    v18 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    goto LABEL_9;
  }

  v13 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 8);
  if (*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16) == 1)
  {
    v25 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type);
    swift_getKeyPath();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = v15;
    v17 = v12;
    v18 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    outlined consume of DOCNodeCollection.CollectionType(v12, v13, 1);
LABEL_9:
    v23 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_isGatheringObservation);
    *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_isGatheringObservation) = v18;

    return;
  }

  swift_unknownObjectRetain();
  v24 = v13;
  swift_unknownObjectRelease();
}

void closure #1 in DOCNodeCollection.startIsGatheringObservation()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      if ([v1 isGathering] && (objc_msgSend(v3, sel_isGathering) & 1) == 0)
      {
        if (one-time initialization token for Enumeration != -1)
        {
          swift_once();
        }

        v4 = type metadata accessor for Logger();
        __swift_project_value_buffer(v4, static Logger.Enumeration);
        v5 = v1;
        v6 = Logger.logObject.getter();
        v7 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          v9 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v15 = v14;
          *v8 = 136446466;
          v10 = (*((*MEMORY[0x277D85000] & *v5) + 0x138))();
          v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v15);

          *(v8 + 4) = v12;
          *(v8 + 12) = 2114;
          *(v8 + 14) = v5;
          *v9 = v1;
          v13 = v5;
          _os_log_impl(&dword_2493AC000, v6, v7, "%{public}s setting isGathering to false, DOCNodeCollection (%{public}@)", v8, 0x16u);
          outlined destroy of NSObject?(v9);
          MEMORY[0x24C1FE850](v9, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v14);
          MEMORY[0x24C1FE850](v14, -1, -1);
          MEMORY[0x24C1FE850](v8, -1, -1);
        }
      }

      [v1 setIsGathering_];
    }

    else
    {
      v3 = v1;
    }
  }
}

void DOCNodeCollection.stopIsGatheringObservation()()
{
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.Enumeration);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v5 = 136446722;
    v8 = (*((*MEMORY[0x277D85000] & *v2) + 0x138))();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v13);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2082;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BDC6D0, &v13);
    *(v5 + 22) = 2114;
    *(v5 + 24) = v2;
    *v6 = v2;
    v11 = v2;
    _os_log_impl(&dword_2493AC000, v3, v4, "%{public}s %{public}s DOCNodeCollection (%{public}@)", v5, 0x20u);
    outlined destroy of NSObject?(v6);
    MEMORY[0x24C1FE850](v6, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v7, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v12 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_isGatheringObservation);
  *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_isGatheringObservation) = 0;
}

uint64_t DOCNodeCollection.sortDescriptors.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type);
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16))
  {
    v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 8);
    if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16) == 1)
    {
      v3 = *((*MEMORY[0x277D85000] & *v1) + 0x2A8);
      v4 = v1;
      v5 = v3();
      outlined consume of DOCNodeCollection.CollectionType(v1, v2, 1);
      return v5;
    }

    else
    {
      swift_unknownObjectRetain();
      v10 = v2;
      swift_unknownObjectRelease();

      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    v7 = v1;
    v8 = [v7 sortDescriptors];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSSortDescriptor);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return v9;
  }
}

void DOCNodeCollection.reorderItems(with:)(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_sortDescriptor;
  v6 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_sortDescriptor);
  v7 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_sortDescriptor + 8);
  *v5 = *a1;
  *(v5 + 8) = v2;
  *(v5 + 16) = v4;
  v36 = v4;
  v37 = v5;
  *(v5 + 24) = *(a1 + 24);
  v35 = v2;
  outlined copy of DOCItemSortDescriptor?(v3, v2);
  outlined consume of DOCItemSortDescriptor?(v6, v7);
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_expandedChildNodesMap;
  swift_beginAccess();
  v34 = v1;
  v9 = *(v1 + v8);
  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;
  v38 = v9;

  v15 = 0;
  while (v13)
  {
    v16 = v15;
LABEL_10:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v19 = *(*(v38 + 56) + ((v16 << 9) | (8 * v18)));
    v21 = *(v37 + 8);
    v22 = *(v37 + 16);
    v23 = *(v37 + 24);
    v39 = *v37;
    v20 = v39;
    v40 = v21;
    v41 = v22;
    v42 = v23;
    v24 = *((*MEMORY[0x277D85000] & *v19) + 0x228);
    v25 = v19;
    outlined copy of DOCItemSortDescriptor?(v20, v21);
    v24(&v39);

    outlined consume of DOCItemSortDescriptor?(v39, v40);
  }

  v17 = v36;
  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      return;
    }

    if (v16 >= v14)
    {
      break;
    }

    v13 = *(v10 + 8 * v16);
    ++v15;
    if (v13)
    {
      v15 = v16;
      goto LABEL_10;
    }
  }

  v26 = *(v34 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type);
  if (*(v34 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16))
  {
    v27 = *(v34 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 8);
    v28 = v35;
    if (*(v34 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16) == 1)
    {
      if (v35)
      {
      }

      else
      {
        v28 = MEMORY[0x277D84F90];
        v17 = MEMORY[0x277D84FA0];
      }

      v31 = *((*MEMORY[0x277D85000] & *v26) + 0x2D8);
      v32 = v26;
      v31(v28, v17);

      outlined consume of DOCNodeCollection.CollectionType(v26, v27, 1);
    }

    else
    {
      swift_unknownObjectRetain();
      v30 = v27;
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v29 = v26;
    if (v35)
    {
    }

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSSortDescriptor);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v29 reorderItemsWithSortDescriptors_];
  }
}

id DOCNodeCollection.itemFilteringPredicate.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type);
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16))
  {
    v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 8);
    if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16) == 1)
    {
      v3 = *((*MEMORY[0x277D85000] & *v1) + 0x290);
      v4 = v1;
      v5 = v3();
      outlined consume of DOCNodeCollection.CollectionType(v1, v2, 1);
      return v5;
    }

    else
    {
      swift_unknownObjectRetain();
      v9 = v2;
      swift_unknownObjectRelease();

      return 0;
    }
  }

  else
  {
    v7 = v1;
    v8 = [v7 itemFilteringPredicate];

    return v8;
  }
}

void DOCNodeCollection.itemFilteringPredicate.setter(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type);
  if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16))
  {
    v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 8);
    if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16) == 1)
    {
      v4 = *((*MEMORY[0x277D85000] & *v2) + 0x298);
      v5 = v2;
      v4(a1);

      outlined consume of DOCNodeCollection.CollectionType(v2, v3, 1);
      return;
    }

    swift_unknownObjectRetain();
    v7 = v3;
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = v2;
    [v6 setItemFilteringPredicate_];
  }
}

void (*DOCNodeCollection.itemFilteringPredicate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type;
  a1[1] = v1;
  a1[2] = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 16))
  {
    v6 = *(v4 + 8);
    if (*(v4 + 16) == 1)
    {
      v7 = *((*MEMORY[0x277D85000] & *v5) + 0x290);
      v8 = v5;
      v9 = v7();
      outlined consume of DOCNodeCollection.CollectionType(v5, v6, 1);
    }

    else
    {
      swift_unknownObjectRetain();
      v11 = v6;
      swift_unknownObjectRelease();

      v9 = 0;
    }
  }

  else
  {
    v10 = v5;
    v9 = [v10 itemFilteringPredicate];
  }

  *a1 = v9;
  return DOCNodeCollection.itemFilteringPredicate.modify;
}

void DOCNodeCollection.itemFilteringPredicate.modify(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *a1;
  v5 = v3 + v2;
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  if (a2)
  {
    if (!v8)
    {
      v15 = v4;
      outlined copy of DOCNodeCollection.CollectionType(v6, v7, 0);
      swift_unknownObjectRelease();
      [v6 setItemFilteringPredicate_];

      goto LABEL_14;
    }

    if (v8 == 1)
    {
      v9 = *((*MEMORY[0x277D85000] & *v6) + 0x298);
      v16 = v4;
      v15 = v4;
      outlined copy of DOCNodeCollection.CollectionType(v6, v7, 1);
      v9(v16);
      outlined consume of DOCNodeCollection.CollectionType(v6, v7, 1);
LABEL_14:
      v13 = v15;
LABEL_15:

      return;
    }

    v15 = v4;
    outlined copy of DOCNodeCollection.CollectionType(v6, v7, 2);
    swift_unknownObjectRelease();

    v12 = v15;
LABEL_13:

    goto LABEL_14;
  }

  v17 = v4;
  if (!v8)
  {
    v15 = v6;
    [v15 setItemFilteringPredicate_];
    v12 = v17;
    goto LABEL_13;
  }

  if (v8 != 1)
  {
    swift_unknownObjectRetain();
    v14 = v7;
    swift_unknownObjectRelease();

    v13 = v17;
    goto LABEL_15;
  }

  v10 = *((*MEMORY[0x277D85000] & *v6) + 0x298);
  v11 = v6;
  v10(v17);

  outlined consume of DOCNodeCollection.CollectionType(v6, v7, 1);
}

uint64_t DOCNodeCollection.childNodes(for:)()
{
  swift_getObjectType();
  DOCNode.identifierKey.getter();
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x250))(v3);
  outlined destroy of AnyHashable(v3);
  return v1;
}

uint64_t DOCNodeCollection.childNodes(for:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_expandedChildNodesMap;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16))
  {

    v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v6)
    {
      v7 = *(*(v4 + 56) + 8 * v5);

      v9 = (*((*MEMORY[0x277D85000] & *v7) + 0x258))(v8);

      return v9;
    }
  }

  return MEMORY[0x277D84F90];
}

unint64_t DOCNodeCollection.nodes.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type);
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16))
  {
    v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 8);
    if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16) == 1)
    {
      v3 = *((*MEMORY[0x277D85000] & *v1) + 0x1C0);
      v4 = v1;
      v5 = v3();
      outlined consume of DOCNodeCollection.CollectionType(v1, v2, 1);
      return v5;
    }

    swift_unknownObjectRetain();
    v10 = v2;
    swift_unknownObjectRelease();

    return MEMORY[0x277D84F90];
  }

  else
  {
    v7 = v1;
    v8 = [v7 items];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      v5 = _bridgeCocoaArray<A>(_:)();

      swift_bridgeObjectRelease_n();
      return v5;
    }

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();

    return v9;
  }
}

uint64_t DOCNodeCollection.flatNodesInternal.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_flatNodesInternal;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t DOCNodeCollection.flatNodesAreDirty.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_flatNodesAreDirty;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCNodeCollection.flatNodesAreDirty.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_flatNodesAreDirty;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

unint64_t DOCNodeCollection.flatNodes.getter()
{
  v1 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0x278))() & 1) == 0)
  {
    goto LABEL_12;
  }

  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x277D84F90];
  result = (*((*v1 & *v0) + 0x258))();
  v4 = result;
  if (!(result >> 62))
  {
    v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_11:

    swift_beginAccess();
    v8 = *((*v1 & *v0) + 0x268);

    v8(v9);

LABEL_12:
    v10 = (*((*v1 & *v0) + 0x280))(0);
    return (*((*v1 & *v0) + 0x260))(v10);
  }

  result = __CocoaSet.count.getter();
  v5 = result;
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1FC540](i, v4);
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      recurseNode #1 (node:) in DOCNodeCollection.flatNodes.getter(v7, v2, v0);
      swift_unknownObjectRelease();
    }

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

unint64_t recurseNode #1 (node:) in DOCNodeCollection.flatNodes.getter(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  v6 = swift_unknownObjectRetain();
  MEMORY[0x24C1FB090](v6);
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  result = (*((*MEMORY[0x277D85000] & *a3) + 0x248))(a1);
  v8 = result;
  if (!(result >> 62))
  {
    v9 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_5;
    }
  }

  result = __CocoaSet.count.getter();
  v9 = result;
  if (!result)
  {
  }

LABEL_5:
  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x24C1FC540](i, v8);
      }

      else
      {
        v11 = *(v8 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      recurseNode #1 (node:) in DOCNodeCollection.flatNodes.getter(v11, a2, a3);
      swift_unknownObjectRelease();
    }
  }

  __break(1u);
  return result;
}

id DOCNodeCollection.isDisplayingSearchResults.getter()
{
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16))
  {
    if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16) != 1)
    {
      v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 8);
      swift_unknownObjectRetain();
      v2 = v1;
      swift_unknownObjectRelease();
    }

    return 0;
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type);
    v5 = [v4 doc_displaysSearchResults];

    return v5;
  }
}

Swift::Int __swiftcall DOCNodeCollection.maxIndentation()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_indentation;
  result = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_indentation);
  if (result == -1)
  {
    *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_indentation) = 0;
    result = (*((*MEMORY[0x277D85000] & *v0) + 0x258))();
    v3 = result;
    if (result >> 62)
    {
      result = __CocoaSet.count.getter();
      v4 = result;
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
LABEL_4:
        if (v4 < 1)
        {
          __break(1u);
          return result;
        }

        v5 = 0;
        do
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v6 = MEMORY[0x24C1FC540](v5, v3);
          }

          else
          {
            v6 = *(v3 + 8 * v5 + 32);
            swift_unknownObjectRetain();
          }

          ++v5;
          v7 = recurseNode #1 (node:indentation:) in DOCNodeCollection.maxIndentation()(v6, 0, v0);
          swift_unknownObjectRelease();
          v8 = *(v0 + v1);
          if (v8 <= v7)
          {
            v8 = v7;
          }

          *(v0 + v1) = v8;
        }

        while (v4 != v5);
      }
    }

    return *(v0 + v1);
  }

  return result;
}

unint64_t recurseNode #1 (node:indentation:) in DOCNodeCollection.maxIndentation()(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*((*MEMORY[0x277D85000] & *a3) + 0x248))();
  v6 = result;
  if (!(result >> 62))
  {
    v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_13:

    return a2;
  }

  result = __CocoaSet.count.getter();
  v7 = result;
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_3:
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else if (v7 >= 1)
  {
    v9 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x24C1FC540](v9, v6);
      }

      else
      {
        v10 = *(v6 + 8 * v9 + 32);
        swift_unknownObjectRetain();
      }

      ++v9;
      v11 = recurseNode #1 (node:indentation:) in DOCNodeCollection.maxIndentation()(v10, v8, a3);
      swift_unknownObjectRelease();
      if (a2 <= v11)
      {
        a2 = v11;
      }
    }

    while (v7 != v9);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

id DOCNodeCollection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCNodeCollection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCNodeCollection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for DOCNodeDisclosureProvider.childNodes(for:) in conformance DOCNodeCollection()
{
  return (*((*MEMORY[0x277D85000] & **v0) + 0x248))();
}

{
  return (*((*MEMORY[0x277D85000] & **v0) + 0x250))();
}

uint64_t DOCNodeCollection.data(forCollectionShouldBeReloaded:)(void *a1)
{
  v3 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x280))(1);
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.Enumeration);
  v5 = a1;
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v9 = 136446978;
    v12 = (*((*v3 & *v6) + 0x138))();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v23);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2082;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x8000000249BDC2D0, &v23);
    *(v9 + 22) = 2114;
    *(v9 + 24) = v6;
    *v10 = v1;
    *(v9 + 32) = 2048;
    v15 = v6;
    v16 = [v5 items];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v17 >> 62)
    {
      v18 = __CocoaSet.count.getter();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v9 + 34) = v18;

    _os_log_impl(&dword_2493AC000, v7, v8, "%{public}s %{public}s DOCNodeCollection (%{public}@) reload with nodes: %ld", v9, 0x2Au);
    outlined destroy of NSObject?(v10);
    MEMORY[0x24C1FE850](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v11, -1, -1);
    MEMORY[0x24C1FE850](v9, -1, -1);

    v3 = MEMORY[0x277D85000];
  }

  else
  {
  }

  result = (*((*v3 & *v6) + 0x190))();
  if (result)
  {
    v21 = v20;
    ObjectType = swift_getObjectType();
    (*(v21 + 8))(v6, ObjectType, v21);

    return swift_unknownObjectRelease();
  }

  return result;
}

void DOCNodeCollection.collection(_:didUpdateObservedItem:)(void *a1, void *a2)
{
  v5 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0x280))(1);
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.Enumeration);
  v7 = v2;
  v8 = a2;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v40 = a1;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v43 = v13;
    *v11 = 136446978;
    v14 = (*((*v5 & *v7) + 0x138))();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v43);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2082;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x8000000249BDC380, &v43);
    *(v11 + 22) = 2114;
    *(v11 + 24) = v7;
    *(v11 + 32) = 2114;
    *(v11 + 34) = v8;
    *v12 = v2;
    v12[1] = v8;
    v17 = v7;
    v18 = v8;
    _os_log_impl(&dword_2493AC000, v9, v10, "%{public}s %{public}s DOCNodeCollection (%{public}@) observedItem: %{public}@", v11, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v13, -1, -1);
    v19 = v11;
    a1 = v40;
    MEMORY[0x24C1FE850](v19, -1, -1);
  }

  v20 = v7 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type;
  if (*(v7 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16))
  {
    v21 = MEMORY[0x24C1FAD20](0xD000000000000010, 0x8000000249BDC360);
    v22 = MEMORY[0x24C1FAD20](0xD000000000000054, 0x8000000249BDC300);
    v41 = MEMORY[0x24C1FAD20](0xD000000000000054, 0x8000000249BDC300);
    DOCAssertWithIntenalBuildAlert();

LABEL_7:

    return;
  }

  v23 = *v20;
  v24 = *(v20 + 1);
  *v20 = a1;
  *(v20 + 1) = v8;
  v20[16] = 0;
  v25 = v8;
  v26 = a1;
  swift_unknownObjectRetain();
  outlined consume of DOCNodeCollection.CollectionType(v23, v24, 0);
  if ((*((*MEMORY[0x277D85000] & *v7) + 0x190))())
  {
    v28 = v27;
    ObjectType = swift_getObjectType();
    (*(v28 + 24))(v7, v25, ObjectType, v28);
    swift_unknownObjectRelease();
  }

  if (v24)
  {
    v30 = [v24 displayName];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34 = [v25 displayName];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    if (v31 == v35 && v33 == v37)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v38 & 1) == 0)
      {
        v39 = [objc_opt_self() defaultCenter];
        v42 = v39;
        if (one-time initialization token for DOCNodeCollectionNodeDisplayNameChanged != -1)
        {
          swift_once();
          v39 = v42;
        }

        [v39 postNotificationName:static NSNotificationName.DOCNodeCollectionNodeDisplayNameChanged object:{v25, v42, v43}];
        swift_unknownObjectRelease();
        goto LABEL_7;
      }

      swift_unknownObjectRelease();
    }
  }
}

uint64_t *NSNotificationName.DOCNodeCollectionNodeDisplayNameChanged.unsafeMutableAddressor()
{
  if (one-time initialization token for DOCNodeCollectionNodeDisplayNameChanged != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.DOCNodeCollectionNodeDisplayNameChanged;
}

uint64_t DOCNodeCollection.data(forFileSystemCollectionShouldBeReloaded:)(void *a1)
{
  v3 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x280))(1);
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.Enumeration);
  v5 = a1;
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v9 = 136446978;
    v11 = (*((*v3 & *v6) + 0x138))();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v21);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ELL, 0x8000000249BDC3B0, &v21);
    *(v9 + 22) = 2114;
    *(v9 + 24) = v6;
    *v10 = v1;
    *(v9 + 32) = 2048;
    v14 = (*((*v3 & *v5) + 0x1C0))(v6);
    if (v14 >> 62)
    {
      v15 = __CocoaSet.count.getter();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v9 + 34) = v15;

    _os_log_impl(&dword_2493AC000, v7, v8, "%{public}s %{public}s DOCNodeCollection (%{public}@) reload with nodes: %ld", v9, 0x2Au);
    outlined destroy of NSObject?(v10);
    MEMORY[0x24C1FE850](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v20, -1, -1);
    MEMORY[0x24C1FE850](v9, -1, -1);

    v3 = MEMORY[0x277D85000];
  }

  else
  {
  }

  result = (*((*v3 & *v6) + 0x190))();
  if (result)
  {
    v18 = v17;
    ObjectType = swift_getObjectType();
    (*(v18 + 8))(v6, ObjectType, v18);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t one-time initialization function for DOCNodeCollectionNodeDisplayNameChanged()
{
  result = MEMORY[0x24C1FAD20](0xD000000000000027, 0x8000000249BDC670);
  static NSNotificationName.DOCNodeCollectionNodeDisplayNameChanged = result;
  return result;
}

id static NSNotificationName.DOCNodeCollectionNodeDisplayNameChanged.getter()
{
  if (one-time initialization token for DOCNodeCollectionNodeDisplayNameChanged != -1)
  {
    swift_once();
  }

  v1 = static NSNotificationName.DOCNodeCollectionNodeDisplayNameChanged;

  return v1;
}

void *specialized DOCNodeCollection.__allocating_init(for:configuration:source:extraOptions:)(void *a1, void *a2, void *a3, unint64_t a4, uint64_t a5)
{
  v55[1] = *MEMORY[0x277D85DE8];
  v55[0] = 0;
  v10 = [a1 cachedDomain_];
  if (v10)
  {
    v11 = v55[0];
    v12 = v10;
    if (FPProviderDomain.shouldUseDSEnumeration.getter())
    {
      v13 = DOCNode.fpfs_syncFetchFINode()();
      if (v14)
      {
      }

      else if (v13)
      {
        v43 = a5;
        v44 = v13;
        swift_unknownObjectRelease();
        v45 = objc_allocWithZone(type metadata accessor for DOCFileSystemCollection());
        v46 = a3;
        v47 = v44;
        v48 = a2;
        v49 = specialized DOCFileSystemCollection.init(for:configuration:source:extraOptions:)(v47, a2, a3, a4 | ((HIDWORD(a4) & 1) << 32), v45);

        v36 = (*(v43 + 344))(v49);
        goto LABEL_16;
      }
    }

    v15 = v10;
  }

  else
  {
    v54 = a2;
    v16 = v55[0];
    v17 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for Enumeration != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.Enumeration);
    swift_unknownObjectRetain();
    v19 = v17;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v55[0] = v53;
      *v22 = 136446722;
      *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BDC710, v55);
      *(v22 + 12) = 2082;
      v23 = a3;
      v24 = [a1 description];
      v51 = v20;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v21;
      v26 = a5;
      v28 = v27;

      a3 = v23;
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v28, v55);
      a5 = v26;

      *(v22 + 14) = v29;
      *(v22 + 22) = 2114;
      v30 = v17;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 24) = v31;
      *v52 = v31;
      _os_log_impl(&dword_2493AC000, v51, v50, "%{public}s Init DOCNodeCollection with DOCNode failed to get a cached domain for %{public}s. Error: %{public}@. Falling back to using an FPItem (if available).", v22, 0x20u);
      outlined destroy of NSObject?(v52);
      MEMORY[0x24C1FE850](v52, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v53, -1, -1);
      MEMORY[0x24C1FE850](v22, -1, -1);
    }

    else
    {
    }

    v15 = 0;
    a2 = v54;
  }

  FPItem = DOCNode.fpfs_syncFetchFPItemResult()();
  if (v33)
  {
    v34 = objc_allocWithZone(type metadata accessor for DOCNodeCollection());
    v35 = swift_unknownObjectRetain();
    v36 = specialized DOCNodeCollection.init(failure:domain:error:)(v35, v15, FPItem, v34);
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = [objc_opt_self() defaultManager];
    v38 = [v37 collectionForFolderItem_];

    v39 = a3;
    v40 = *(a5 + 336);
    v41 = v38;
    outlined copy of Result<FPItem, Error>(FPItem);
    v36 = v40(v41, FPItem);

    outlined consume of Result<FPItem, Error>(FPItem);
    swift_unknownObjectRelease();
  }

  v12 = a2;
LABEL_16:

  return v36;
}

uint64_t outlined copy of DOCItemSortDescriptor?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void *specialized DOCNodeCollection.init(failure:domain:error:)(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_expandedChildNodesMap;
  v9 = MEMORY[0x277D84F90];
  *&a4[v8] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_26DocumentManagerExecutables17DOCNodeCollectionCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v10 = &a4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_sortDescriptor];
  *v10 = 0;
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  v10[24] = 0;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_indentation] = -1;
  v11 = &a4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection____lazy_storage___logPrefix];
  *v11 = 0;
  v11[1] = 0;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_isGathering;
  a4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_isGathering] = 0;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_isGatheringObservation] = 0;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_flatNodesInternal] = v9;
  a4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_flatNodesAreDirty] = 1;
  v13 = &a4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type];
  *v13 = a1;
  *(v13 + 1) = a3;
  v13[16] = 2;
  swift_beginAccess();
  a4[v12] = 0;
  swift_unknownObjectRetain();
  v14 = a3;
  v49.receiver = a4;
  v49.super_class = type metadata accessor for DOCNodeCollection();
  v15 = objc_msgSendSuper2(&v49, sel_init);
  v16 = one-time initialization token for Enumeration;
  v17 = v15;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.Enumeration);
  swift_unknownObjectRetain();
  v19 = a3;
  v20 = a2;
  v21 = v17;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v22, v23))
  {
    v46 = v23;
    v47 = v20;
    v43 = a2;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v48 = v45;
    *v24 = 136447490;
    v26 = (*((*MEMORY[0x277D85000] & *v21) + 0x138))();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v48);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2082;
    *(v24 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x8000000249BDC820, &v48);
    *(v24 + 22) = 2114;
    *(v24 + 24) = v21;
    *v25 = v21;
    *(v24 + 32) = 2082;
    v44 = v21;
    v29 = [a1 description];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v48);

    *(v24 + 34) = v33;
    *(v24 + 42) = 2082;
    if (v43)
    {
      v34 = v47;
      v35 = [v47 description];
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;
    }

    else
    {
      v38 = 0xE300000000000000;
      v36 = 7104878;
      v34 = v47;
    }

    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v48);

    *(v24 + 44) = v39;
    *(v24 + 52) = 2114;
    v40 = a3;
    v41 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 54) = v41;
    v25[1] = v41;
    _os_log_impl(&dword_2493AC000, v22, v46, "%{public}s %{public}s Init DOCNodeCollection (%{public}@) with DOCNode failed: %{public}s, domain: %{public}s, error: %{public}@", v24, 0x3Eu);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v25, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v45, -1, -1);
    MEMORY[0x24C1FE850](v24, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return v21;
}

{
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_expandedChildNodesMap;
  v9 = MEMORY[0x277D84F90];
  *&a4[v8] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_26DocumentManagerExecutables17DOCNodeCollectionCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v10 = &a4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_sortDescriptor];
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *v10 = 0;
  v10[24] = 0;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_indentation] = -1;
  v11 = &a4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection____lazy_storage___logPrefix];
  *v11 = 0;
  v11[1] = 0;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_isGathering;
  a4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_isGathering] = 0;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_isGatheringObservation] = 0;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_flatNodesInternal] = v9;
  a4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_flatNodesAreDirty] = 1;
  v13 = &a4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type];
  *v13 = a1;
  *(v13 + 1) = a3;
  v13[16] = 2;
  swift_beginAccess();
  a4[v12] = 0;
  v14 = a1;
  v15 = a3;
  v50.receiver = a4;
  v50.super_class = type metadata accessor for DOCNodeCollection();
  v16 = objc_msgSendSuper2(&v50, sel_init);
  v17 = one-time initialization token for Enumeration;
  v18 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.Enumeration);
  v20 = v14;
  v21 = a3;
  v22 = a2;
  v23 = v18;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v47 = v25;
    v44 = a2;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v49 = v46;
    *v26 = 136447490;
    v28 = (*((*MEMORY[0x277D85000] & *v23) + 0x138))();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v49);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2082;
    *(v26 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x8000000249BDC820, &v49);
    *(v26 + 22) = 2114;
    *(v26 + 24) = v23;
    *v27 = v23;
    *(v26 + 32) = 2082;
    v45 = v23;
    v48 = v20;
    v31 = [v20 description];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v49);

    *(v26 + 34) = v35;
    *(v26 + 42) = 2082;
    if (v44)
    {
      v36 = [v22 description];
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;
    }

    else
    {
      v39 = 0xE300000000000000;
      v37 = 7104878;
    }

    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v49);

    *(v26 + 44) = v40;
    *(v26 + 52) = 2114;
    v41 = a3;
    v42 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 54) = v42;
    v27[1] = v42;
    _os_log_impl(&dword_2493AC000, v24, v47, "%{public}s %{public}s Init DOCNodeCollection (%{public}@) with DOCNode failed: %{public}s, domain: %{public}s, error: %{public}@", v26, 0x3Eu);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v27, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v46, -1, -1);
    MEMORY[0x24C1FE850](v26, -1, -1);
  }

  else
  {
  }

  return v23;
}

void outlined consume of DOCNodeCollection.CollectionType(void *a1, void *a2, char a3)
{
  switch(a3)
  {
    case 2:
      swift_unknownObjectRelease();
      a1 = a2;

      goto LABEL_9;
    case 1:

LABEL_9:

      return;
    case 0:

      swift_unknownObjectRelease();
      break;
  }
}

id outlined copy of DOCNodeCollection.CollectionType(id result, void *a2, char a3)
{
  if (a3 == 2)
  {
    swift_unknownObjectRetain();
    result = a2;
  }

  else
  {
    if (a3 != 1)
    {
      if (a3)
      {
        return result;
      }

      v4 = result;
      swift_unknownObjectRetain();
      result = v4;
    }
  }

  return result;
}

id specialized DOCFileSystemCollection.init(for:configuration:source:extraOptions:)(void *a1, void *a2, void *a3, uint64_t a4, _BYTE *a5)
{
  v89 = a1;
  v90 = a4;
  v94 = a2;
  v95 = a3;
  v6 = type metadata accessor for OSSignpostID();
  v92 = *(v6 - 8);
  v93 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v91 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v87 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = *(v86 - 8);
  MEMORY[0x28223BE20](v86, v13);
  v15 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v16, v17);
  a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_isGathering] = 1;
  a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_isFullyPopulated] = 0;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v18 = MEMORY[0x277D84F90];
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection__nodes] = MEMORY[0x277D84F90];
  v19 = v18;
  a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection__isObserving] = 0;
  v20 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_stateLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *&a5[v20] = v21;
  a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_shouldStopAccessing] = 0;
  a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_domainState] = 0;
  v88 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_source;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_source] = 0;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_sourceObserverToken] = 0;
  v22 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_workQueue;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v97 = v19;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v12 + 104))(v15, *MEMORY[0x277D85268], v86);
  static DispatchQoS.unspecified.getter();
  v23 = v95;
  v24 = MEMORY[0x277D84F90];
  *&a5[v22] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_iCloudRootNodeObservation] = 0;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_itemFilteringPredicate] = 0;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_sortDescriptors] = v24;
  v25 = MEMORY[0x277D84FA0];
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_propertiesImpactingSort] = MEMORY[0x277D84FA0];
  if (v24 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo6FINodeC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    else
    {
      v25 = MEMORY[0x277D84FA0];
    }
  }

  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_nodesWithPendingUpdates] = v25;
  v26 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_nodesUpdatesFlushInterval;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_nodesUpdatesFlushInterval] = 100;
  v27 = *MEMORY[0x277D85178];
  v28 = type metadata accessor for DispatchTimeInterval();
  (*(*(v28 - 8) + 104))(&a5[v26], v27, v28);
  v29 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_lastFlushTime;
  v30 = type metadata accessor for DispatchTime();
  (*(*(v30 - 8) + 56))(&a5[v29], 1, 1, v30);
  a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_hasScheduledUpdate] = 0;
  a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_dispatchedUpdateIsPending] = 0;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_observer] = 0;
  v31 = v89;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_observedNode] = v89;
  v32 = *&a5[v88];
  *&a5[v88] = v23;
  v33 = v31;
  v34 = v23;

  if ((v90 & 0x100000000) != 0)
  {
    v35 = 19;
  }

  else
  {
    v35 = v90 | 0x13;
  }

  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_nodeObservationOptions] = v35;
  static os_signpost_type_t.event.getter();
  if (one-time initialization token for updatePointsOfInterestHandler != -1)
  {
    swift_once();
  }

  v36 = v91;
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  (*(v92 + 8))(v36, v93);
  type metadata accessor for DOCRootNode();
  v37 = swift_dynamicCastClass();
  if (v37)
  {
    v38 = v37;
    if (one-time initialization token for Enumeration != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Logger.Enumeration);
    v40 = v33;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v93 = v40;
      v44 = v43;
      v45 = swift_slowAlloc();
      v97 = v45;
      *v44 = 136446466;
      *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BDC710, &v97);
      *(v44 + 12) = 2080;
      v46 = [v38 source];
      v47 = v23;
      v48 = [v46 displayName];

      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      v23 = v47;
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v97);

      *(v44 + 14) = v52;
      _os_log_impl(&dword_2493AC000, v41, v42, "[DSEnumeration] %{public}s: node is RootNode so using underlyingNode: %s", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v45, -1, -1);
      v53 = v44;
      v40 = v93;
      MEMORY[0x24C1FE850](v53, -1, -1);
    }

    v54 = [v38 source];
  }

  else
  {
    type metadata accessor for DOCICloudRootNode();
    v65 = swift_dynamicCastClass();
    if (v65)
    {
      v54 = v65;
      if (one-time initialization token for Enumeration != -1)
      {
        swift_once();
      }

      v66 = type metadata accessor for Logger();
      __swift_project_value_buffer(v66, static Logger.Enumeration);
      v67 = v33;
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.info.getter();

      v70 = os_log_type_enabled(v68, v69);
      v71 = MEMORY[0x277D85000];
      if (v70)
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v97 = v73;
        *v72 = 136446466;
        *(v72 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BDC710, &v97);
        *(v72 + 12) = 2080;
        v74 = (*((*v71 & *v54) + 0x78))();
        if (v74)
        {

          v75 = "Cloud container not ready)";
          v76 = 0xD000000000000032;
        }

        else
        {
          v75 = "Init DOCFileSystemCollection";
          v76 = 0xD00000000000002ALL;
        }

        v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v75 | 0x8000000000000000, &v97);

        *(v72 + 14) = v82;
        _os_log_impl(&dword_2493AC000, v68, v69, "[DSEnumeration] %{public}s: node is DOCICloudRootNode, using: %s", v72, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v73, -1, -1);
        MEMORY[0x24C1FE850](v72, -1, -1);

        v23 = v95;
        v71 = MEMORY[0x277D85000];
      }

      else
      {
      }

      v83 = (*((*v71 & *v54) + 0x78))();
      if (v83)
      {
        v84 = v83;

        v54 = v84;
      }
    }

    else
    {
      if (one-time initialization token for Enumeration != -1)
      {
        swift_once();
      }

      v77 = type metadata accessor for Logger();
      __swift_project_value_buffer(v77, static Logger.Enumeration);
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v97 = v81;
        *v80 = 136446210;
        *(v80 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BDC710, &v97);
        _os_log_impl(&dword_2493AC000, v78, v79, "[DSEnumeration] %{public}s: node is a regular node", v80, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v81);
        MEMORY[0x24C1FE850](v81, -1, -1);
        MEMORY[0x24C1FE850](v80, -1, -1);
      }

      v54 = v33;
    }
  }

  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_internalObservedNode] = v54;
  v55 = v94;
  if (v94 && v23)
  {
    v56 = objc_opt_self();
    v57 = v55;
    v58 = [v56 defaultPermission];
    v59 = [v58 userActionForConfiguration_];

    v60 = [v57 hostIdentifier];
    if (!v60)
    {
      v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = MEMORY[0x24C1FAD20](v61);
    }

    v62 = [objc_allocWithZone(DOCSourceObserver) initWithUserAction:v59 hostIdentifier:v60];
  }

  else
  {
    v62 = 0;
  }

  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_sourceObserver] = v62;
  v63 = type metadata accessor for DOCFileSystemCollection();
  v96.receiver = a5;
  v96.super_class = v63;
  return objc_msgSendSuper2(&v96, sel_init);
}

uint64_t specialized DOCNodeCollection.collection(_:didEncounterError:)(void *a1)
{
  v3 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x280))(1);
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.Enumeration);
  v5 = v1;
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v9 = 136446978;
    v11 = (*((*v3 & *v5) + 0x138))();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v22);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x8000000249BDC6A0, &v22);
    *(v9 + 22) = 2114;
    *(v9 + 24) = v5;
    *v10 = v1;
    *(v9 + 32) = 2114;
    v14 = v5;
    v15 = a1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 34) = v16;
    v10[1] = v16;
    _os_log_impl(&dword_2493AC000, v7, v8, "%{public}s %{public}s DOCNodeCollection (%{public}@) Error: %{public}@", v9, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v21, -1, -1);
    MEMORY[0x24C1FE850](v9, -1, -1);
  }

  result = (*((*v3 & *v5) + 0x190))();
  if (result)
  {
    v19 = v18;
    ObjectType = swift_getObjectType();
    (*(v19 + 16))(v5, a1, ObjectType, v19);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t specialized DOCNodeCollection.collectionDidFinishGathering(_:)()
{
  v1 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x280))(1);
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.Enumeration);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v6 = 136446722;
    v9 = (*((*v1 & *v3) + 0x138))();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v17);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2082;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x8000000249BDC640, &v17);
    *(v6 + 22) = 2114;
    *(v6 + 24) = v3;
    *v7 = v0;
    v12 = v3;
    _os_log_impl(&dword_2493AC000, v4, v5, "%{public}s %{public}s DOCNodeCollection (%{public}@)", v6, 0x20u);
    outlined destroy of NSObject?(v7);
    MEMORY[0x24C1FE850](v7, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v8, -1, -1);
    MEMORY[0x24C1FE850](v6, -1, -1);
  }

  result = (*((*v1 & *v3) + 0x190))();
  if (result)
  {
    v15 = v14;
    ObjectType = swift_getObjectType();
    (*(v15 + 32))(v3, ObjectType, v15);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t specialized DOCNodeCollection.collection(_:didUpdate:replaceItemsByFormerID:deleteItemsWith:)(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v7 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v3) + 0x280))(1);
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.Enumeration);
  v9 = v3;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v32 = a3;
    v12 = swift_slowAlloc();
    v31 = a2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33 = v14;
    *v12 = 136446722;
    v15 = (*((*v7 & *v9) + 0x138))();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v33);

    *(v12 + 4) = v17;
    v7 = MEMORY[0x277D85000];
    *(v12 + 12) = 2082;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003FLL, 0x8000000249BDC600, &v33);
    *(v12 + 22) = 2114;
    *(v12 + 24) = v9;
    *v13 = v3;
    v18 = v9;
    _os_log_impl(&dword_2493AC000, v10, v11, "%{public}s %{public}s DOCNodeCollection (%{public}@)", v12, 0x20u);
    outlined destroy of NSObject?(v13);
    v19 = v13;
    a2 = v31;
    MEMORY[0x24C1FE850](v19, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v14, -1, -1);
    v20 = v12;
    a3 = v32;
    MEMORY[0x24C1FE850](v20, -1, -1);
  }

  result = (*((*v7 & *v9) + 0x190))();
  if (result)
  {
    v23 = v22;

    if (a1 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      v29 = _bridgeCocoaArray<A>(_:)();

      a1 = v29;
    }

    else
    {
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    }

    v24 = specialized _dictionaryUpCast<A, B, C, D>(_:)(a2);
    if (a3 >> 62)
    {

      v30 = _bridgeCocoaArray<A>(_:)();

      a3 = v30;
    }

    else
    {
      v25 = a3 & 0xFFFFFFFFFFFFFF8;

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      if (!swift_dynamicCastMetatype())
      {
        v27 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v27)
        {
          v28 = (v25 + 32);
          while (*v28)
          {
            ++v28;
            if (!--v27)
            {
              goto LABEL_10;
            }
          }

          a3 = v25 | 1;
        }
      }
    }

LABEL_10:
    ObjectType = swift_getObjectType();
    (*(v23 + 48))(v9, a1, v24, a3, ObjectType, v23);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t specialized DOCNodeCollection.fileSystemCollection(_:didEncounterError:)(void *a1)
{
  v3 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x280))(1);
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.Enumeration);
  v5 = v1;
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v9 = 136446978;
    v11 = (*((*v3 & *v5) + 0x138))();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v22);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ALL, 0x8000000249BDC5D0, &v22);
    *(v9 + 22) = 2114;
    *(v9 + 24) = v5;
    *v10 = v1;
    *(v9 + 32) = 2114;
    v14 = v5;
    v15 = a1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 34) = v16;
    v10[1] = v16;
    _os_log_impl(&dword_2493AC000, v7, v8, "%{public}s %{public}s DOCNodeCollection (%{public}@) Error: %{public}@", v9, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v21, -1, -1);
    MEMORY[0x24C1FE850](v9, -1, -1);
  }

  result = (*((*v3 & *v5) + 0x190))();
  if (result)
  {
    v19 = v18;
    ObjectType = swift_getObjectType();
    (*(v19 + 16))(v5, a1, ObjectType, v19);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t specialized DOCNodeCollection.fileSystemCollection(_:didUpdateObservedNode:)(void *a1)
{
  v3 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x280))(1);
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.Enumeration);
  v5 = v1;
  swift_unknownObjectRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v8 = 136446978;
    v10 = (*((*v3 & *v5) + 0x138))();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v24);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ELL, 0x8000000249BDC5A0, &v24);
    *(v8 + 22) = 2114;
    *(v8 + 24) = v5;
    *v9 = v1;
    *(v8 + 32) = 2082;
    v13 = v5;
    v14 = [a1 description];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v24);
    v3 = MEMORY[0x277D85000];

    *(v8 + 34) = v18;
    _os_log_impl(&dword_2493AC000, v6, v7, "%{public}s %{public}s DOCNodeCollection (%{public}@) observedNode: %{public}s", v8, 0x2Au);
    outlined destroy of NSObject?(v9);
    MEMORY[0x24C1FE850](v9, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v23, -1, -1);
    MEMORY[0x24C1FE850](v8, -1, -1);
  }

  result = (*((*v3 & *v5) + 0x190))();
  if (result)
  {
    v21 = v20;
    ObjectType = swift_getObjectType();
    (*(v21 + 24))(v5, a1, ObjectType, v21);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t specialized DOCNodeCollection.fileSystemCollectionDidStartGathering(_:)()
{
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.Enumeration);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = MEMORY[0x277D85000];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v7 = 136446722;
    v10 = (*((*v6 & *v2) + 0x138))();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v18);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000029, 0x8000000249BDC570, &v18);
    *(v7 + 22) = 2114;
    *(v7 + 24) = v2;
    *v8 = v2;
    v13 = v2;
    _os_log_impl(&dword_2493AC000, v3, v4, "%{public}s %{public}s DOCNodeCollection (%{public}@)", v7, 0x20u);
    outlined destroy of NSObject?(v8);
    MEMORY[0x24C1FE850](v8, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v9, -1, -1);
    MEMORY[0x24C1FE850](v7, -1, -1);
  }

  else
  {
  }

  result = (*((*v6 & *v2) + 0x190))();
  if (result)
  {
    v16 = v15;
    ObjectType = swift_getObjectType();
    (*(v16 + 40))(v2, ObjectType, v16);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t specialized DOCNodeCollection.fileSystemCollectionDidFinishGathering(_:)()
{
  v1 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x280))(1);
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.Enumeration);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v6 = 136446722;
    v9 = (*((*v1 & *v3) + 0x138))();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v17);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2082;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ALL, 0x8000000249BDC540, &v17);
    *(v6 + 22) = 2114;
    *(v6 + 24) = v3;
    *v7 = v0;
    v12 = v3;
    _os_log_impl(&dword_2493AC000, v4, v5, "%{public}s %{public}s DOCNodeCollection (%{public}@)", v6, 0x20u);
    outlined destroy of NSObject?(v7);
    MEMORY[0x24C1FE850](v7, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v8, -1, -1);
    MEMORY[0x24C1FE850](v6, -1, -1);
  }

  result = (*((*v1 & *v3) + 0x190))();
  if (result)
  {
    v15 = v14;
    ObjectType = swift_getObjectType();
    (*(v15 + 32))(v3, ObjectType, v15);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t specialized DOCNodeCollection.fileSystemCollection(_:didUpdate:deleteNodesWith:)(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0x280))(1);
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.Enumeration);
  v7 = v2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v25 = a2;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = a1;
    v12 = swift_slowAlloc();
    v26 = v12;
    *v10 = 136446722;
    v13 = (*((*v5 & *v7) + 0x138))();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v26);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2082;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249BDC500, &v26);
    *(v10 + 22) = 2114;
    *(v10 + 24) = v7;
    *v11 = v2;
    v16 = v7;
    _os_log_impl(&dword_2493AC000, v8, v9, "%{public}s %{public}s DOCNodeCollection (%{public}@)", v10, 0x20u);
    outlined destroy of NSObject?(v11);
    MEMORY[0x24C1FE850](v11, -1, -1);
    swift_arrayDestroy();
    v17 = v12;
    a1 = v24;
    MEMORY[0x24C1FE850](v17, -1, -1);
    v18 = v10;
    a2 = v25;
    MEMORY[0x24C1FE850](v18, -1, -1);
  }

  result = (*((*v5 & *v7) + 0x190))();
  if (result)
  {
    v21 = v20;
    ObjectType = swift_getObjectType();
    v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo8FPItemIDC_So7DOCNode_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    (*(v21 + 48))(v7, a1, v23, a2, ObjectType, v21);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t dispatch thunk of DOCNodeDisclosureProvider.childNodes(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 8))();
}

{
  return (*(a3 + 16))();
}

uint64_t dispatch thunk of DOCNodeCollection.childNodes(for:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x248))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x250))();
}

uint64_t getEnumTagSinglePayload for DOCNodeCollection.CollectionType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCNodeCollection.CollectionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

unint64_t lazy protocol witness table accessor for type FPItemID and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type FPItemID and conformance NSObject;
  if (!lazy protocol witness table cache variable for type FPItemID and conformance NSObject)
  {
    type metadata accessor for NSMutableAttributedString(255, &lazy cache variable for type metadata for FPItemID);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FPItemID and conformance NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  }

  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = (v2 + 6);
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[2 * i + 5];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 1) >= v11)
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 2;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6FPItemC4item_Sd5scoretMd);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

uint64_t DOCSmartFolderManager._unvalidatedSuggestedFoldersList(for:configuration:managedPermission:maxNumberOfItems:pickerContext:excludedItems:)(uint64_t a1, int64_t a2, unint64_t a3, uint64_t a4, void *a5, void *a6, unint64_t a7)
{
  v8 = v7;
  v74 = a5;
  v76 = a4;
  v71 = type metadata accessor for Date();
  v77 = *(v71 - 8);
  MEMORY[0x28223BE20](v71, v14);
  v70 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = DOCSmartFolderLogHandle();
  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_249B9A480;
  *(v17 + 56) = MEMORY[0x277D837D0];
  *(v17 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;

  os_log(_:dso:log:type:_:)();

  v80 = a7;
  v78 = a7;
  if (!a6)
  {

    goto LABEL_8;
  }

  v18 = a6;
  v19 = DOCSmartFolderManager.suggestedSmartFolder(with:configuration:)(v18, a3);
  if (!v19)
  {

    goto LABEL_8;
  }

  v21 = v19;
  v79 = v19;
  MEMORY[0x28223BE20](v19, v20);
  *(&v68 - 2) = &v79;
  if (specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v68 - 4), a7) & 1) != 0 || ([v21 isRootItem])
  {

LABEL_8:
    v75 = 0;
    v72 = 1;
    goto LABEL_9;
  }

  v75 = v21;
  v66 = v21;
  MEMORY[0x24C1FB090]();
  if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  if (v74 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_249BA0290;
    *(v62 + 32) = v66;
    goto LABEL_69;
  }

  v78 = v80;
  v72 = 0;
LABEL_9:
  v22 = *(v8 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCSmartFolderManager_database);
  v23 = MEMORY[0x24C1FAD20](a1, a2);
  v24 = (*((*MEMORY[0x277D85000] & *v8) + 0x80))();
  v25 = [v22 previousEventsForAppBundleIdentifier:v23 excluding:v24];

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCHotFolderEvent);
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = specialized DOCSmartFolderManager.group(_:configuration:managedPermission:)(v26, a3, v76);

  v28 = v27 + 64;
  v29 = 1 << *(v27 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v27 + 64);
  v32 = (v29 + 63) >> 6;
  v69 = (v77 + 1);

  v33 = 0;
  v73 = MEMORY[0x277D84F90];
  v76 = v27;
  while (v31)
  {
LABEL_17:
    v35 = (v33 << 9) | (8 * __clz(__rbit64(v31)));
    v8 = *(*(v27 + 48) + v35);
    v36 = *(*(v27 + 56) + v35);
    if (v36 >> 62)
    {
      v37 = __CocoaSet.count.getter();
    }

    else
    {
      v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v31 &= v31 - 1;
    if (v37)
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v51 = v8;

        v40 = MEMORY[0x24C1FC540](0, v36);
      }

      else
      {
        v34 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v34)
        {
          goto LABEL_77;
        }

        v38 = *(v36 + 32);
        v39 = v8;

        v40 = v38;
      }

      a2 = v40;
      v25 = [v40 folderItem];

      if (v25)
      {
        a2 = v8;
        v77 = &v68;
        v79 = v25;
        MEMORY[0x28223BE20](v41, v42);
        v8 = v25;
        *(&v68 - 2) = &v79;
        v43 = v78;

        v25 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v68 - 4), v43);

        if (v25)
        {

          v27 = v76;
        }

        else
        {
          v77 = v8;
          v8 = v70;
          v44 = Date.init()();
          MEMORY[0x28223BE20](v44, v45);
          *(&v68 - 2) = v8;
          v46 = specialized Sequence.reduce<A>(_:_:)(partial apply for closure #1 in closure #1 in DOCSmartFolderManager._unvalidatedSuggestedFoldersList(for:configuration:managedPermission:maxNumberOfItems:pickerContext:excludedItems:), (&v68 - 4), v36, 0.0);
          (*v69)(v8, v71);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v27 = v76;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v73[2] + 1, 1, v73);
          }

          v25 = v73[2];
          v48 = v73[3];
          if (v25 >= v48 >> 1)
          {
            v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v25 + 1, 1, v73);
          }

          v49 = v73;
          v73[2] = v25 + 1;
          v50 = &v49[2 * v25];
          *(v50 + 4) = v77;
          v50[5] = v46;
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v34 >= v32)
    {

      v33 = v73;
      v79 = v73;

      specialized MutableCollection<>.sort(by:)(&v79);

      v52 = v79;
      v53 = v79[2];
      a2 = v74;
      if (v53)
      {
        v79 = MEMORY[0x277D84F90];
        specialized ContiguousArray.reserveCapacity(_:)();
        v33 = 32;
        do
        {
          v25 = *(v52 + v33);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v8 = v79[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v33 += 16;
          --v53;
        }

        while (v53);

        v28 = v79;
      }

      else
      {

        v28 = MEMORY[0x277D84F90];
      }

      v79 = v28;
      v34 = v72;
      if (v72)
      {
        goto LABEL_42;
      }

      if (v28 >> 62)
      {
        goto LABEL_93;
      }

      goto LABEL_41;
    }

    v31 = *(v28 + 8 * v34);
    ++v33;
    if (v31)
    {
      v33 = v34;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  if ((v28 & 0x8000000000000000) != 0)
  {
    v52 = v28;
  }

  else
  {
    v52 = v34;
  }

  v53 = __CocoaSet.count.getter();
  if ((__CocoaSet.count.getter() & 0x8000000000000000) == 0)
  {
    if (v53 >= a2)
    {
      v67 = a2;
    }

    else
    {
      v67 = v53;
    }

    if (v53 < 0)
    {
      v67 = a2;
    }

    if (a2)
    {
      v8 = v67;
    }

    else
    {
      v8 = 0;
    }

    if (__CocoaSet.count.getter() < v8)
    {
      while (1)
      {
        __break(1u);
LABEL_93:
        if (__CocoaSet.count.getter() < 0)
        {
          break;
        }

LABEL_41:
        v52 = v75;
        specialized Array.replaceSubrange<A>(_:with:)(0, 0, v52);

        v28 = v79;
LABEL_42:
        if (a2 < 0)
        {
          goto LABEL_78;
        }

        v34 = v28 & 0xFFFFFFFFFFFFFF8;
        v33 = v28 >> 62;
        if (v28 >> 62)
        {
          goto LABEL_79;
        }

        v54 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v54 >= a2)
        {
          v55 = a2;
        }

        else
        {
          v55 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (a2)
        {
          v8 = v55;
        }

        else
        {
          v8 = 0;
        }

        if (v54 >= v8)
        {
          goto LABEL_51;
        }
      }

      __break(1u);
      goto LABEL_95;
    }

LABEL_51:
    if ((v28 & 0xC000000000000001) != 0 && v8)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);

      v56 = 0;
      do
      {
        v57 = v56 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v56);
        v56 = v57;
      }

      while (v8 != v57);
    }

    else
    {
    }

    if (v33)
    {
      v52 = _CocoaArrayWrapper.subscript.getter();
      v25 = v58;
      v53 = v59;
      v8 = v60;

      if (v8)
      {
LABEL_62:
        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v63 = swift_dynamicCastClass();
        if (!v63)
        {
          swift_unknownObjectRelease();
          v63 = MEMORY[0x277D84F90];
        }

        v64 = *(v63 + 16);

        if (__OFSUB__(v8 >> 1, v53))
        {
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        if (v64 != (v8 >> 1) - v53)
        {
LABEL_96:
          swift_unknownObjectRelease_n();
          goto LABEL_61;
        }

        v62 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        if (!v62)
        {
          swift_unknownObjectRelease();
          v62 = MEMORY[0x277D84F90];
        }

LABEL_69:

        return v62;
      }
    }

    else
    {
      v53 = 0;
      v52 = (v28 & 0xFFFFFFFFFFFFFF8);
      v25 = (v28 & 0xFFFFFFFFFFFFFF8) + 32;
      v8 = (2 * v8) | 1;
      if (v8)
      {
        goto LABEL_62;
      }
    }

LABEL_61:
    specialized _copyCollectionToContiguousArray<A>(_:)(v52, v25, v53, v8);
    v62 = v61;

    swift_unknownObjectRelease();

    return v62;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t DOCSmartFolderManager.suggestedSmartFolder(with:configuration:)(void *a1, uint64_t a2)
{
  v96 = a2;
  v98 = type metadata accessor for DOCSmartFolderInputFile();
  v3 = *(v98 - 8);
  MEMORY[0x28223BE20](v98, v4);
  v97 = &v84[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v89 = &v84[-v8];
  v9 = type metadata accessor for UTType();
  v90 = *(v9 - 8);
  v91 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v84[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation17URLResourceValuesVSgMd);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v92 = &v84[-v15];
  v16 = type metadata accessor for URLResourceValues();
  v93 = *(v16 - 8);
  v94 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v84[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v84[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v25, v26);
  v95 = &v84[-v27];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables23DOCSmartFolderInputFileVSgMd);
  MEMORY[0x28223BE20](v28 - 8, v29);
  v31 = &v84[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = MEMORY[0x28223BE20](v32, v33);
  v36 = &v84[-v35];
  v37 = [a1 nodesToMove];
  if (!v37)
  {
LABEL_10:
    v52 = [a1 urlsToSave];
    if (v52)
    {
      v53 = v52;
      v54 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v54 + 16))
      {
        v86 = v12;
        v87 = v19;
        (*(v21 + 16))(v24, v54 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v20);

        v55 = *(v21 + 32);
        v88 = v20;
        v55(v95, v24, v20);
        v56 = URL.startAccessingSecurityScopedResource()();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_249B9FA70;
        v58 = *MEMORY[0x277CBE7B8];
        *(inited + 32) = *MEMORY[0x277CBE7B8];
        v59 = *MEMORY[0x277CBE8D0];
        *(inited + 40) = *MEMORY[0x277CBE8D0];
        v60 = v58;
        v61 = v59;
        _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(inited);
        swift_setDeallocating();
        type metadata accessor for NSURLResourceKey(0);
        swift_arrayDestroy();
        v62 = v92;
        URL.resourceValues(forKeys:)();
        v85 = v56;

        v64 = v93;
        v63 = v94;
        (*(v93 + 56))(v62, 0, 1, v94);
        v65 = v87;
        (*(v64 + 32))(v87, v62, v63);
        v66 = v89;
        URLResourceValues.contentType.getter();
        v67 = v90;
        v68 = v91;
        if ((*(v90 + 48))(v66, 1, v91) == 1)
        {
          (*(v64 + 8))(v65, v63);
          outlined destroy of CharacterSet?(v66, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
          v69 = 1;
          v45 = v98;
          v44 = v99;
        }

        else
        {
          v70 = v86;
          (*(v67 + 32))(v86, v66, v68);
          v71 = v67;
          v72 = URLResourceValues.localizedName.getter();
          v45 = v98;
          if (v73)
          {
            v74 = v73;
            v75 = *(v98 + 20);
            v76 = *(v71 + 16);
            v92 = v72;
            v76(v36 + v75, v70, v68);
            Date.init()();
            (*(v71 + 8))(v70, v68);
            (*(v93 + 8))(v65, v94);
            v69 = 0;
            *v36 = v92;
            v36[1] = v74;
          }

          else
          {
            (*(v67 + 8))(v70, v68);
            (*(v93 + 8))(v65, v94);
            v69 = 1;
          }

          v44 = v99;
        }

        v77 = v85;
        v78 = v95;
        (*(v3 + 56))(v36, v69, 1, v45);
        if (v77)
        {
          URL.stopAccessingSecurityScopedResource()();
          v44 = v99;
        }

        (*(v21 + 8))(v78, v88);
        goto LABEL_24;
      }
    }

    v45 = v98;
    (*(v3 + 56))(v36, 1, 1, v98);
    v44 = v99;
    goto LABEL_24;
  }

  v38 = v37;
  v88 = a1;
  v39 = v19;
  v40 = v12;
  v41 = v21;
  v42 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v43 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:

    v20 = v42;
    v21 = v41;
    v12 = v40;
    v19 = v39;
    a1 = v88;
    goto LABEL_10;
  }

LABEL_4:
  if ((v43 & 0xC000000000000001) != 0)
  {
    v46 = MEMORY[0x24C1FC540](0, v43);
    v45 = v98;
    v44 = v99;
  }

  else
  {
    v45 = v98;
    v44 = v99;
    if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_38;
    }

    v46 = *(v43 + 32);
    swift_unknownObjectRetain();
  }

  v47 = [v46 displayName];
  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v49;

  v51 = [v46 contentType];
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  Date.init()();
  swift_unknownObjectRelease();
  *v36 = v48;
  v36[1] = v50;
  (*(v3 + 56))(v36, 0, 1, v45);
LABEL_24:
  outlined init with copy of DOCSmartFolderInputFile?(v36, v31);
  if ((*(v3 + 48))(v31, 1, v45) != 1)
  {
    v24 = v97;
    outlined init with take of DOCSmartFolderInputFile(v31, v97);
    v80 = [objc_opt_self() defaultPermission];
    v38 = (*((*MEMORY[0x277D85000] & *v44) + 0xB0))(v24, v96, v80);

    if (v38 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (result)
      {
LABEL_28:
        if ((v38 & 0xC000000000000001) == 0)
        {
          if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v82 = *(v38 + 32);
LABEL_31:
          v83 = v82;

          outlined destroy of DOCSmartFolderInputFile(v24);
          outlined destroy of CharacterSet?(v36, &_s26DocumentManagerExecutables23DOCSmartFolderInputFileVSgMd);
          return v83;
        }

LABEL_38:
        v82 = MEMORY[0x24C1FC540](0, v38);
        goto LABEL_31;
      }
    }

    else
    {
      result = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_28;
      }
    }

    outlined destroy of DOCSmartFolderInputFile(v24);
    v79 = v36;
    goto LABEL_34;
  }

  outlined destroy of CharacterSet?(v36, &_s26DocumentManagerExecutables23DOCSmartFolderInputFileVSgMd);
  v79 = v31;
LABEL_34:
  outlined destroy of CharacterSet?(v79, &_s26DocumentManagerExecutables23DOCSmartFolderInputFileVSgMd);
  return 0;
}

uint64_t DOCSmartFolderManager.suggestedFoldersList(for:configuration:managedPermission:maxNumberOfItems:pickerContext:async:completion:)(uint64_t a1, void *a2, void *a3, void **a4, void *a5, unint64_t a6, int a7, void (*a8)(uint64_t), uint64_t a9)
{
  v107 = a8;
  LODWORD(v125) = a7;
  v123 = a4;
  v124 = a6;
  v128 = a5;
  v106 = type metadata accessor for DispatchTime();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106, v13);
  v103 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v104 = &v100 - v17;
  v120 = type metadata accessor for DispatchWorkItemFlags();
  v127 = *(v120 - 8);
  MEMORY[0x28223BE20](v120, v18);
  v115 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for DispatchQoS();
  v126 = *(v119 - 8);
  MEMORY[0x28223BE20](v119, v20);
  v116 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for DispatchQoS.QoSClass();
  v22 = *(v130 - 8);
  MEMORY[0x28223BE20](v130, v23);
  v25 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = [objc_opt_self() sharedManager];
  v27 = [v26 favoritedLocations];

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = swift_allocObject();
  v129 = v9;
  *(v29 + 16) = v9;
  *(v29 + 24) = a1;
  v30 = a2;
  v31 = a1;
  *(v29 + 32) = v30;
  *(v29 + 40) = a3;
  v32 = v123;
  *(v29 + 48) = v123;
  v33 = v124;
  *(v29 + 56) = v128;
  *(v29 + 64) = v33;
  *(v29 + 72) = v28;
  v34 = v125;
  *(v29 + 80) = v125;
  *(v29 + 88) = v107;
  *(v29 + 96) = a9;
  v108 = a9;
  if (v34)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v35 = v130;
    (*(v22 + 104))(v25, *MEMORY[0x277D851C8], v130);
    v36 = v33;
    v37 = v32;
    v38 = a3;

    v39 = v129;

    v40 = static OS_dispatch_queue.global(qos:)();
    (*(v22 + 8))(v25, v35);
    v41 = swift_allocObject();
    *(v41 + 16) = partial apply for closure #1 in DOCSmartFolderManager.suggestedFoldersList(for:configuration:managedPermission:maxNumberOfItems:pickerContext:async:completion:);
    *(v41 + 24) = v29;
    v136 = partial apply for thunk for @callee_guaranteed () -> ();
    v137 = v41;
    aBlock = MEMORY[0x277D85DD0];
    v133 = 1107296256;
    v134 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v135 = &block_descriptor_25_0;
    v42 = _Block_copy(&aBlock);

    v43 = v116;
    static DispatchQoS.unspecified.getter();
    v131 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v44 = v115;
    v45 = v120;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v43, v44, v42);
    _Block_release(v42);

    (*(v127 + 8))(v44, v45);
    (*(v126 + 8))(v43, v119);
  }

  v125 = v22;
  v114 = v25;
  v46 = v33;
  v47 = v33;
  v48 = v32;
  v49 = a3;

  v50 = v129;

  v51 = v128;
  v128 = v50;
  v129 = v30;
  v52 = DOCSmartFolderManager._unvalidatedSuggestedFoldersList(for:configuration:managedPermission:maxNumberOfItems:pickerContext:excludedItems:)(v31, v30, v49, v48, v51, v46, v28);
  v118 = dispatch_group_create();
  v53 = swift_allocObject();
  v54 = v52;
  v117 = v53;
  *(v53 + 16) = MEMORY[0x277D84F98];
  v101 = (v53 + 16);
  v55 = v31;
  v102 = v28;
  if (v52 >> 62)
  {
    result = __CocoaSet.count.getter();
    v54 = v52;
  }

  else
  {
    result = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v57 = v120;
  v58 = v119;
  if (!result)
  {
LABEL_22:
    v93 = v54;
    v94 = v103;
    static DispatchTime.now()();
    v95 = v104;
    + infix(_:_:)();
    v96 = *(v105 + 8);
    v97 = v106;
    v96(v94, v106);
    v98 = v118;
    MEMORY[0x24C1FB8F0](v95);
    v96(v95, v97);
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {
      v99 = specialized Sequence.compactMap<A>(_:)(v93, v101);

      v107(v99);
    }

    else
    {

      v107(MEMORY[0x277D84F90]);
    }
  }

  if (result >= 1)
  {
    v59 = 0;
    v124 = v54 & 0xC000000000000001;
    v122 = *MEMORY[0x277D060D8];
    v123 = &v134;
    v113 = (v125 + 104);
    v112 = (v125 + 8);
    v111 = *MEMORY[0x277D851A8];
    v110 = (v127 + 8);
    v109 = (v126 + 8);
    v126 = v31;
    v127 = v29;
    v125 = v54;
    v121 = result;
    while (1)
    {
      if (v124)
      {
        v71 = MEMORY[0x24C1FC540](v59);
      }

      else
      {
        v71 = *(v54 + 8 * v59 + 32);
      }

      v72 = v71;
      v73 = v130;
      v74 = [v71 providerID];
      v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = v76;

      if (v75 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v77 == v78)
      {

        if (FPIsCloudDocsWithFPFSEnabled())
        {
          goto LABEL_21;
        }
      }

      else
      {
        v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v80 & 1) != 0 && FPIsCloudDocsWithFPFSEnabled())
        {
LABEL_21:
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
          v81 = v114;
          (*v113)(v114, v111, v73);
          v82 = static OS_dispatch_queue.global(qos:)();
          (*v112)(v81, v73);
          v83 = swift_allocObject();
          v85 = v128;
          v84 = v129;
          v83[2] = v128;
          v83[3] = v72;
          v83[4] = v55;
          v83[5] = v84;
          v136 = partial apply for closure #1 in closure #1 in DOCSmartFolderManager.suggestedFoldersList(for:configuration:managedPermission:maxNumberOfItems:pickerContext:async:completion:);
          v137 = v83;
          aBlock = MEMORY[0x277D85DD0];
          v133 = 1107296256;
          v134 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          v135 = &block_descriptor_19_5;
          v86 = _Block_copy(&aBlock);

          v87 = v85;
          v88 = v72;
          v89 = v116;
          static DispatchQoS.unspecified.getter();
          v131 = MEMORY[0x277D84F90];
          lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
          lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
          v90 = v58;
          v91 = v115;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          MEMORY[0x24C1FB9A0](0, v89, v91, v86);
          _Block_release(v86);

          v92 = v91;
          v58 = v90;
          (*v110)(v92, v57);
          (*v109)(v89, v90);

          goto LABEL_9;
        }
      }

      v60 = v118;
      dispatch_group_enter(v118);
      v61 = [objc_opt_self() defaultManager];
      v62 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v63 = swift_allocObject();
      v64 = v117;
      v63[2] = v60;
      v63[3] = v64;
      v63[4] = v62;
      v63[5] = v72;
      v63[6] = v55;
      v63[7] = v129;

      v65 = v72;
      v66 = v60;

      v67 = [v65 itemID];
      v68 = swift_allocObject();
      v68[2] = v65;
      v68[3] = partial apply for closure #2 in closure #1 in DOCSmartFolderManager.suggestedFoldersList(for:configuration:managedPermission:maxNumberOfItems:pickerContext:async:completion:);
      v68[4] = v63;
      v136 = partial apply for closure #1 in FPItemManager.doc_refetchItem(_:completion:);
      v137 = v68;
      aBlock = MEMORY[0x277D85DD0];
      v133 = 1107296256;
      v134 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
      v135 = &block_descriptor_56;
      v69 = _Block_copy(&aBlock);
      v70 = v65;

      v57 = v120;

      [v61 fetchItemForItemID:v67 completionHandler:v69];
      v58 = v119;
      _Block_release(v69);

LABEL_9:
      ++v59;
      v55 = v126;
      v54 = v125;
      if (v121 == v59)
      {
        goto LABEL_22;
      }
    }
  }

  __break(1u);
  return result;
}

void closure #1 in DOCSmartFolderManager.suggestedFoldersList(for:configuration:managedPermission:maxNumberOfItems:pickerContext:async:completion:)(void *a1, uint64_t a2, int64_t a3, unint64_t a4, uint64_t a5, void *a6, void *a7, unint64_t a8, char a9, void (*a10)(uint64_t), uint64_t a11)
{
  v87 = type metadata accessor for DispatchTime();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87, v19);
  v84 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v85 = &v83 - v23;
  v101 = type metadata accessor for DispatchWorkItemFlags();
  v89 = *(v101 - 8);
  MEMORY[0x28223BE20](v101, v24);
  v99 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for DispatchQoS();
  v88 = *(v100 - 8);
  MEMORY[0x28223BE20](v100, v26);
  v98 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for DispatchQoS.QoSClass();
  v28 = *(v97 - 8);
  MEMORY[0x28223BE20](v97, v29);
  v96 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = a1;
  v109 = a2;
  v31 = DOCSmartFolderManager._unvalidatedSuggestedFoldersList(for:configuration:managedPermission:maxNumberOfItems:pickerContext:excludedItems:)(a2, a3, a4, a5, a6, a7, a8);
  v32 = dispatch_group_create();
  v33 = swift_allocObject();
  v34 = v31;
  v102 = v33;
  *(v33 + 16) = MEMORY[0x277D84F98];
  v83 = (v33 + 16);
  if (v31 >> 62)
  {
    v35 = __CocoaSet.count.getter();
    v34 = v31;
    if (v35)
    {
      goto LABEL_3;
    }

LABEL_20:
    v70 = v34;
    if (a9)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v71 = static OS_dispatch_queue.main.getter();
      v72 = swift_allocObject();
      v72[2] = a10;
      v72[3] = a11;
      v73 = v102;
      v72[4] = v70;
      v72[5] = v73;
      v115 = partial apply for closure #3 in closure #1 in DOCSmartFolderManager.suggestedFoldersList(for:configuration:managedPermission:maxNumberOfItems:pickerContext:async:completion:);
      v116 = v72;
      aBlock = MEMORY[0x277D85DD0];
      v112 = 1107296256;
      v113 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v114 = &block_descriptor_44_3;
      v74 = _Block_copy(&aBlock);

      v75 = v98;
      static DispatchQoS.unspecified.getter();
      v110 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v76 = v99;
      v77 = v101;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_group.notify(qos:flags:queue:execute:)();
      _Block_release(v74);

      (*(v89 + 8))(v76, v77);
      (*(v88 + 8))(v75, v100);
    }

    else
    {
      v78 = v84;
      static DispatchTime.now()();
      v79 = v85;
      + infix(_:_:)();
      v80 = *(v86 + 8);
      v81 = v87;
      v80(v78, v87);
      MEMORY[0x24C1FB8F0](v79);
      v80(v79, v81);
      if (static DispatchTimeoutResult.== infix(_:_:)())
      {
        v82 = specialized Sequence.compactMap<A>(_:)(v70, v83);

        a10(v82);
      }

      else
      {

        a10(MEMORY[0x277D84F90]);
      }
    }

    return;
  }

  v35 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v35)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (v35 >= 1)
  {
    v36 = 0;
    v104 = &v113;
    v105 = v34 & 0xC000000000000001;
    v103 = *MEMORY[0x277D060D8];
    v94 = (v28 + 104);
    v93 = (v28 + 8);
    v92 = *MEMORY[0x277D851A8];
    v91 = (v89 + 8);
    v90 = (v88 + 8);
    v107 = v34;
    v95 = a3;
    v106 = v35;
    while (1)
    {
      if (v105)
      {
        v47 = MEMORY[0x24C1FC540](v36);
      }

      else
      {
        v47 = *(v34 + 8 * v36 + 32);
      }

      v48 = v47;
      v49 = [v47 providerID];
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      if (v50 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v52 == v53)
      {

        if (FPIsCloudDocsWithFPFSEnabled())
        {
          goto LABEL_18;
        }
      }

      else
      {
        v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v55 & 1) != 0 && FPIsCloudDocsWithFPFSEnabled())
        {
LABEL_18:
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
          v56 = v96;
          v57 = v97;
          (*v94)(v96, v92, v97);
          v58 = static OS_dispatch_queue.global(qos:)();
          (*v93)(v56, v57);
          v59 = swift_allocObject();
          v61 = v108;
          v60 = v109;
          v59[2] = v108;
          v59[3] = v48;
          v59[4] = v60;
          v59[5] = a3;
          v115 = closure #1 in closure #1 in DOCSmartFolderManager.suggestedFoldersList(for:configuration:managedPermission:maxNumberOfItems:pickerContext:async:completion:)partial apply;
          v116 = v59;
          aBlock = MEMORY[0x277D85DD0];
          v112 = 1107296256;
          v113 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          v114 = &block_descriptor_51_1;
          v62 = _Block_copy(&aBlock);
          v63 = v61;
          v64 = v48;

          v65 = v32;
          v66 = v98;
          static DispatchQoS.unspecified.getter();
          v110 = MEMORY[0x277D84F90];
          lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
          lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
          v67 = v99;
          v68 = v101;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          MEMORY[0x24C1FB9A0](0, v66, v67, v62);
          _Block_release(v62);

          (*v91)(v67, v68);
          v69 = v66;
          v32 = v65;
          a3 = v95;
          (*v90)(v69, v100);

          goto LABEL_6;
        }
      }

      dispatch_group_enter(v32);
      v37 = [objc_opt_self() defaultManager];
      v38 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v39 = swift_allocObject();
      v40 = v102;
      v39[2] = v32;
      v39[3] = v40;
      v39[4] = v38;
      v39[5] = v48;
      v39[6] = v109;
      v39[7] = a3;
      v41 = v48;

      v42 = v32;

      v43 = [v41 itemID];
      v44 = swift_allocObject();
      v44[2] = v41;
      v44[3] = closure #2 in closure #1 in DOCSmartFolderManager.suggestedFoldersList(for:configuration:managedPermission:maxNumberOfItems:pickerContext:async:completion:)partial apply;
      v44[4] = v39;
      v115 = closure #1 in FPItemManager.doc_refetchItem(_:completion:)partial apply;
      v116 = v44;
      aBlock = MEMORY[0x277D85DD0];
      v112 = 1107296256;
      v113 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
      v114 = &block_descriptor_38_3;
      v45 = _Block_copy(&aBlock);
      v46 = v41;

      [v37 fetchItemForItemID:v43 completionHandler:v45];
      _Block_release(v45);

LABEL_6:
      ++v36;
      v34 = v107;
      if (v106 == v36)
      {
        goto LABEL_20;
      }
    }
  }

  __break(1u);
}

void closure #2 in closure #1 in DOCSmartFolderManager.suggestedFoldersList(for:configuration:managedPermission:maxNumberOfItems:pickerContext:async:completion:)(void *a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    goto LABEL_4;
  }

  v13 = a1;
  if ([v13 isTrashed])
  {

LABEL_4:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_15:
      dispatch_group_leave(a3);
      return;
    }

    v13 = Strong;
    DOCSmartFolderManager.delete(hotFolder:for:)(a6, a7, a8);
LABEL_14:

    goto LABEL_15;
  }

  v15 = [v13 itemID];
  swift_beginAccess();
  v16 = *(a4 + 16);
  if ((v16 & 0xC000000000000001) == 0)
  {
    v20 = v13;
    goto LABEL_13;
  }

  if (v16 < 0)
  {
    v17 = *(a4 + 16);
  }

  else
  {
    v17 = v16 & 0xFFFFFFFFFFFFFF8;
  }

  v18 = v13;
  v19 = __CocoaSet.count.getter();
  if (!__OFADD__(v19, 1))
  {
    *(a4 + 16) = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo8FPItemIDC_So0E0CTt1g5(v17, v19 + 1);
LABEL_13:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(a4 + 16);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, v15, isUniquelyReferenced_nonNull_native);
    *(a4 + 16) = v22;

    swift_endAccess();
    goto LABEL_14;
  }

  __break(1u);
}

double partial apply for closure #1 in closure #1 in DOCSmartFolderManager._unvalidatedSuggestedFoldersList(for:configuration:managedPermission:maxNumberOfItems:pickerContext:excludedItems:)@<D0>(double *a1@<X0>, void **a2@<X1>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  isa = Date._bridgeToObjectiveC()().super.isa;
  [v5 frecencyScoreAtDate_];
  v8 = v7;

  result = v4 + v8;
  *a3 = v4 + v8;
  return result;
}

uint64_t objectdestroy_9Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t partial apply for closure #3 in closure #1 in DOCSmartFolderManager.suggestedFoldersList(for:configuration:managedPermission:maxNumberOfItems:pickerContext:async:completion:)()
{
  v1 = v0[2];
  specialized Sequence.compactMap<A>(_:)(v0[4], (v0[5] + 16));
  v1();
}

uint64_t objectdestroy_15Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t outlined init with copy of DOCSmartFolderInputFile?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables23DOCSmartFolderInputFileVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void DOCSidebarHeaderCell.title.setter(void *a1, uint64_t isEscapingClosureAtFileLocation)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d6HeaderF12ValueBindingV_GMd);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v31 - v7;
  v9 = type metadata accessor for UICellConfigurationState();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  v35 = isEscapingClosureAtFileLocation;
  v14 = &selRef_setNavigationTitleForTagListInInfoPanel_;
  v15 = [v2 window];
  if (!v15)
  {
    goto LABEL_5;
  }

  v10 = &v31;
  MEMORY[0x28223BE20](v17, v18);
  v19 = &v31 - 6;
  *(&v31 - 4) = partial apply for closure #1 in DOCSidebarHeaderCell.title.setter;
  *(&v31 - 3) = v33;
  *(&v31 - 2) = v2;
  while (1)
  {
    a1 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = partial apply for specialized closure #1 in DOCSidebarCell.updateContentBindings(_:);
    *(v9 + 24) = v19;
    v13 = swift_allocObject();
    *(v13 + 2) = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    *(v13 + 3) = v9;
    aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    v37 = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_57;
    v20 = _Block_copy(aBlock);
    v14 = v37;

    [a1 performWithoutAnimation_];

    _Block_release(v20);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v32 = &v31;
    MEMORY[0x28223BE20](v15, v16);
    v19 = &v31 - 6;
    *(&v31 - 4) = partial apply for closure #1 in DOCSidebarHeaderCell.title.setter;
    *(&v31 - 3) = v33;
    *(&v31 - 2) = v2;
    v21 = [v2 v14[365]];
    if (v21)
    {

      v22 = (v2 + *((*MEMORY[0x277D85000] & *v2) + 0x68));
      swift_beginAccess();
      *v22 = a1;
      v22[1] = isEscapingClosureAtFileLocation;

      v23 = [v2 _bridgedConfigurationState];
      static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

      specialized DOCSidebarCell.reloadContentViewConfiguration(with:)(v13);

      (v10[1])(v13, v9);
      break;
    }

    v10 = v32;
  }

  [objc_opt_self() sidebar];
  swift_getObjCClassMetadata();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  specialized DOCSidebarCell.content.getter(v8);
  v25 = &v8[*(v5 + 40)];
  v26 = *v25;
  v27 = v25[1];

  outlined destroy of DOCSidebarCell<DOCSidebarHeaderContentValueBinding>.Content(v8);
  v28 = MEMORY[0x24C1FAD20](v26, v27);

  v29 = [ObjCClassFromMetadata headerWithTitle_];

  if (!v29)
  {
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = MEMORY[0x24C1FAD20](v30);
  }

  [v2 setAccessibilityIdentifier_];
}

uint64_t DOCSidebarHeaderContentValueBinding.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static DOCSidebarHeaderContentValueBinding.configuration(for:)()
{
  v0 = UICellConfigurationState.traitCollection.getter();
  v1 = [v0 sourceOutlineStyle];

  if (v1 == 1)
  {

    return static UIListContentConfiguration.prominentInsetGroupedHeader()();
  }

  else
  {

    return static UIListContentConfiguration.header()();
  }
}

DocumentManagerExecutables::DOCSidebarHeaderContentValueBinding __swiftcall DOCSidebarHeaderContentValueBinding.init()()
{
  v0 = 0;
  v1 = 0xE000000000000000;
  result.title._object = v1;
  result.title._countAndFlagsBits = v0;
  return result;
}

uint64_t protocol witness for static DOCCellContentConfigurationBindings.configuration(for:) in conformance DOCSidebarHeaderContentValueBinding()
{
  v0 = UICellConfigurationState.traitCollection.getter();
  v1 = [v0 sourceOutlineStyle];

  if (v1 == 1)
  {

    return static UIListContentConfiguration.prominentInsetGroupedHeader()();
  }

  else
  {

    return static UIListContentConfiguration.header()();
  }
}

uint64_t DOCSidebarHeaderCell.updateAccessoryItems(with:)()
{
  specialized static DOCSidebarCellAccessoryItem.outlineDisclosure.getter();
  specialized DOCSidebarCell.addAccessoryItem(_:)();
}

uint64_t DOCSidebarHeaderCell.title.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d6HeaderF12ValueBindingV_GMd);
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - v3;
  specialized DOCSidebarCell.content.getter(&v7 - v3);
  v5 = *&v4[*(v1 + 48)];

  outlined destroy of DOCSidebarCell<DOCSidebarHeaderContentValueBinding>.Content(v4);
  return v5;
}

uint64_t key path getter for DOCSidebarHeaderCell.title : DOCSidebarHeaderCell@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d6HeaderF12ValueBindingV_GMd);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v11 - v5;
  specialized DOCSidebarCell.content.getter(&v11 - v5);
  v7 = &v6[*(v3 + 48)];
  v9 = *v7;
  v8 = *(v7 + 1);

  result = outlined destroy of DOCSidebarCell<DOCSidebarHeaderContentValueBinding>.Content(v6);
  *a1 = v9;
  a1[1] = v8;
  return result;
}

void (*DOCSidebarHeaderCell.title.modify(void *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d6HeaderF12ValueBindingV_GMd);
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(*(v3 - 8) + 64));
  }

  v5 = v4;
  a1[3] = v4;
  specialized DOCSidebarCell.content.getter(v4);
  v6 = (v5 + *(v3 + 40));
  v8 = *v6;
  v7 = v6[1];

  outlined destroy of DOCSidebarCell<DOCSidebarHeaderContentValueBinding>.Content(v5);
  *a1 = v8;
  a1[1] = v7;
  return DOCSidebarHeaderCell.title.modify;
}

void DOCSidebarHeaderCell.title.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 24);
  if (a2)
  {

    DOCSidebarHeaderCell.title.setter(v3, v2);
  }

  else
  {
    DOCSidebarHeaderCell.title.setter(*a1, v2);
  }

  free(v4);
}

id @objc DOCSidebarHeaderCell.accessibilityTitle.getter(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d6HeaderF12ValueBindingV_GMd);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - v5;
  v7 = a1;
  specialized DOCSidebarCell.content.getter(v6);

  v8 = &v6[*(v3 + 48)];
  v9 = *v8;
  v10 = v8[1];

  outlined destroy of DOCSidebarCell<DOCSidebarHeaderContentValueBinding>.Content(v6);
  v11 = MEMORY[0x24C1FAD20](v9, v10);

  return v11;
}

uint64_t DOCSidebarHeaderCell.accessibilityTitle.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d6HeaderF12ValueBindingV_GMd);
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - v3;
  specialized DOCSidebarCell.content.getter(&v7 - v3);
  v5 = *&v4[*(v1 + 48)];

  outlined destroy of DOCSidebarCell<DOCSidebarHeaderContentValueBinding>.Content(v4);
  return v5;
}

id DOCSidebarHeaderCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DOCSidebarHeaderCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id @objc DOCSidebarHeaderCell.init(frame:)(void *a1, double a2, double a3, double a4, double a5)
{
  v10.receiver = a1;
  v10.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a2, a3, a4, a5);
}

id DOCSidebarHeaderCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t partial apply for closure #1 in DOCSidebarHeaderCell.title.setter(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t outlined destroy of DOCSidebarCell<DOCSidebarHeaderContentValueBinding>.Content(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d6HeaderF12ValueBindingV_GMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for DOCSidebarHeaderCell()
{
  result = type metadata singleton initialization cache for DOCSidebarHeaderCell;
  if (!type metadata singleton initialization cache for DOCSidebarHeaderCell)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7[3] = swift_getObjectType();
  v7[0] = a3;

  swift_unknownObjectRetain();
  v4(v5, v7);

  return __swift_destroy_boxed_opaque_existential_0(v7);
}

void closure #1 in static UIDocumentBrowserAction.trashAction()(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCOperationItem();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9, v10);
  v12 = (v24 - v11);
  outlined init with copy of Any(a2, v25);
  type metadata accessor for DOCActionContext();
  if (swift_dynamicCast())
  {
    v13 = v24[1];
    if (a1 >> 62)
    {
      v14 = __CocoaSet.count.getter();
    }

    else
    {
      v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = MEMORY[0x277D84F90];
    if (v14)
    {
      v25[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14 & ~(v14 >> 63), 0);
      if (v14 < 0)
      {
        __break(1u);
        return;
      }

      v24[0] = v13;
      v15 = v25[0];
      if ((a1 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v14; ++i)
        {
          *v12 = MEMORY[0x24C1FC540](i, a1);
          swift_storeEnumTagMultiPayload();
          v25[0] = v15;
          v18 = *(v15 + 16);
          v17 = *(v15 + 24);
          if (v18 >= v17 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v17 > 1, v18 + 1, 1);
            v15 = v25[0];
          }

          *(v15 + 16) = v18 + 1;
          outlined init with take of DOCOperationItem(v12, v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v18);
        }
      }

      else
      {
        v19 = (a1 + 32);
        do
        {
          *v8 = *v19;
          swift_storeEnumTagMultiPayload();
          v25[0] = v15;
          v20 = *(v15 + 16);
          v21 = *(v15 + 24);
          swift_unknownObjectRetain();
          if (v20 >= v21 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v20 + 1, 1);
            v15 = v25[0];
          }

          *(v15 + 16) = v20 + 1;
          outlined init with take of DOCOperationItem(v8, v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v20);
          ++v19;
          --v14;
        }

        while (v14);
      }

      v13 = v24[0];
    }

    v22 = [objc_opt_self() defaultManager];
    v23 = *&v13[OBJC_IVAR___DOCActionContext_presentingViewController];
    FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(3u, v15, 0, 0, 0, 1, v23, 0, 0);

    if (one-time initialization token for sharedManager != -1)
    {
      swift_once();
    }

    (*((*MEMORY[0x277D85000] & *static DOCSmartFolderManager.sharedManager) + 0xA0))();
  }
}

void closure #1 in static UIDocumentBrowserAction.untrashAction()(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCOperationItem();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9, v10);
  v12 = (v29 - v11);
  outlined init with copy of Any(a2, v30);
  type metadata accessor for DOCActionContext();
  if (swift_dynamicCast())
  {
    v13 = v29[1];
    if (a1 >> 62)
    {
      v14 = __CocoaSet.count.getter();
    }

    else
    {
      v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = MEMORY[0x277D84F90];
    if (v14)
    {
      v30[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14 & ~(v14 >> 63), 0);
      if (v14 < 0)
      {
        __break(1u);
        return;
      }

      v29[0] = v13;
      v15 = v30[0];
      if ((a1 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v14; ++i)
        {
          *v12 = MEMORY[0x24C1FC540](i, a1);
          swift_storeEnumTagMultiPayload();
          v30[0] = v15;
          v18 = *(v15 + 16);
          v17 = *(v15 + 24);
          if (v18 >= v17 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v17 > 1, v18 + 1, 1);
            v15 = v30[0];
          }

          *(v15 + 16) = v18 + 1;
          outlined init with take of DOCOperationItem(v12, v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v18);
        }
      }

      else
      {
        v19 = (a1 + 32);
        do
        {
          *v8 = *v19;
          swift_storeEnumTagMultiPayload();
          v30[0] = v15;
          v20 = *(v15 + 16);
          v21 = *(v15 + 24);
          swift_unknownObjectRetain();
          if (v20 >= v21 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v20 + 1, 1);
            v15 = v30[0];
          }

          *(v15 + 16) = v20 + 1;
          outlined init with take of DOCOperationItem(v8, v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v20);
          ++v19;
          --v14;
        }

        while (v14);
      }

      v13 = v29[0];
    }

    v22 = OBJC_IVAR___DOCActionContext_presentingViewController;
    v23 = *&v13[OBJC_IVAR___DOCActionContext_presentingViewController];
    type metadata accessor for DOCItemCollectionViewController(0);
    v24 = swift_dynamicCastClass();
    if (!v24)
    {
LABEL_20:
      v27 = [objc_opt_self() defaultManager];
      FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(4u, v15, 0, 0, 0, 1, *&v13[v22], 0, 0);

      return;
    }

    v25 = v24;
    v26 = v23;
    if ([v25 isEditing])
    {

      goto LABEL_20;
    }

    v28 = v13;
    specialized DOCItemCollectionViewController.focusNextItemAndThen(_:)(v25, v15, v28);

    swift_bridgeObjectRelease_n();
  }
}

void untrashItems #1 () in closure #1 in static UIDocumentBrowserAction.untrashAction()(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() defaultManager];
  FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(4u, a1, 0, 0, 0, 1, *(a2 + OBJC_IVAR___DOCActionContext_presentingViewController), 0, 0);
}

void closure #1 in static UIDocumentBrowserAction.untrashAllAction()(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCOperationItem();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9, v10);
  v12 = (v24 - v11);
  outlined init with copy of Any(a2, v25);
  type metadata accessor for DOCActionContext();
  if (swift_dynamicCast())
  {
    v13 = v24[1];
    if (a1 >> 62)
    {
      v14 = __CocoaSet.count.getter();
    }

    else
    {
      v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = MEMORY[0x277D84F90];
    if (v14)
    {
      v25[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14 & ~(v14 >> 63), 0);
      if (v14 < 0)
      {
        __break(1u);
        return;
      }

      v24[0] = v13;
      v15 = v25[0];
      if ((a1 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v14; ++i)
        {
          *v12 = MEMORY[0x24C1FC540](i, a1);
          swift_storeEnumTagMultiPayload();
          v25[0] = v15;
          v18 = *(v15 + 16);
          v17 = *(v15 + 24);
          if (v18 >= v17 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v17 > 1, v18 + 1, 1);
            v15 = v25[0];
          }

          *(v15 + 16) = v18 + 1;
          outlined init with take of DOCOperationItem(v12, v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v18);
        }
      }

      else
      {
        v19 = (a1 + 32);
        do
        {
          *v8 = *v19;
          swift_storeEnumTagMultiPayload();
          v25[0] = v15;
          v20 = *(v15 + 16);
          v21 = *(v15 + 24);
          swift_unknownObjectRetain();
          if (v20 >= v21 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v20 + 1, 1);
            v15 = v25[0];
          }

          *(v15 + 16) = v20 + 1;
          outlined init with take of DOCOperationItem(v8, v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v20);
          ++v19;
          --v14;
        }

        while (v14);
      }

      v13 = v24[0];
    }

    v22 = [objc_opt_self() defaultManager];
    v23 = *&v13[OBJC_IVAR___DOCActionContext_presentingViewController];
    FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(4u, v15, 0, 0, 0, 1, v23, 0, 0);
  }
}

void closure #1 in static UIDocumentBrowserAction.renameAction()(unint64_t a1, uint64_t a2)
{
  outlined init with copy of Any(a2, &aBlock);
  type metadata accessor for DOCActionContext();
  if (swift_dynamicCast())
  {
    v3 = v34;
    if (a1 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_4;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C1FC540](0, a1);
      }

      else
      {
        if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_32:
          swift_once();
LABEL_26:
          static os_log_type_t.debug.getter();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v26 = swift_allocObject();
          *(v26 + 16) = xmmword_249B9A480;
          *(v26 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
          *(v26 + 64) = lazy protocol witness table accessor for type FPItem and conformance NSObject();
          *(v26 + 32) = a1;
          v27 = a1;
          os_log(_:dso:log:type:_:)();

          return;
        }

        swift_unknownObjectRetain();
      }

      swift_getObjectType();
      a1 = DOCNode.fpfs_syncFetchFPItem()();
      swift_unknownObjectRelease();
      if (a1)
      {
        v4 = *&v3[OBJC_IVAR___DOCActionContext_actionReporting];
        if (v4)
        {
          v5 = *&v3[OBJC_IVAR___DOCActionContext_presentingViewController];
          type metadata accessor for DOCItemCollectionViewController(0);
          v6 = swift_dynamicCastClass();
          if (v6)
          {
            v7 = *((*MEMORY[0x277D85000] & *v6) + 0xA68);
            swift_unknownObjectRetain();
            v8 = v5;
            v9 = v7();

            v10 = [v9 identifier];
            v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v13 = v12;
            if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
            {

              goto LABEL_21;
            }

            v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v16)
            {
LABEL_21:
              v21 = *&v3[OBJC_IVAR___DOCActionContext_transitionProxy];
              if (v21)
              {
                v22 = swift_allocObject();
                *(v22 + 16) = v3;
                *(v22 + 24) = a1;
                v32 = partial apply for closure #1 in closure #1 in static UIDocumentBrowserAction.renameAction();
                v33 = v22;
                aBlock = MEMORY[0x277D85DD0];
                v29 = 1107296256;
                v30 = thunk for @escaping @callee_guaranteed (@guaranteed DOCItemCollectionCell?) -> ();
                v31 = &block_descriptor_495;
                v23 = _Block_copy(&aBlock);
                v24 = a1;
                v25 = v3;

                [v21 getCellFor:v24 :v23];

                swift_unknownObjectRelease();
                _Block_release(v23);

                return;
              }

              goto LABEL_23;
            }
          }

          else
          {
            swift_unknownObjectRetain();
          }

          [v4 beginRenameOf_];
LABEL_23:

          goto LABEL_24;
        }

        v17 = *&v3[OBJC_IVAR___DOCActionContext_transitionProxy];
        if (v17)
        {
          v18 = swift_allocObject();
          *(v18 + 16) = a1;
          *(v18 + 24) = v3;
          v32 = partial apply for closure #2 in closure #1 in static UIDocumentBrowserAction.renameAction();
          v33 = v18;
          aBlock = MEMORY[0x277D85DD0];
          v29 = 1107296256;
          v30 = thunk for @escaping @callee_guaranteed (@guaranteed DOCItemCollectionCell?) -> ();
          v31 = &block_descriptor_489;
          v19 = _Block_copy(&aBlock);
          a1 = a1;
          v20 = v3;
          swift_unknownObjectRetain();

          [v17 getCellFor:a1 :v19];

          _Block_release(v19);
LABEL_24:
          swift_unknownObjectRelease();

          return;
        }

        if (one-time initialization token for UI == -1)
        {
          goto LABEL_26;
        }

        goto LABEL_32;
      }
    }
  }
}

uint64_t closure #1 in closure #1 in static UIDocumentBrowserAction.renameAction()(uint64_t result, uint64_t a2, void *a3)
{
  if (result)
  {
    v4 = result;
    v5 = *(a2 + OBJC_IVAR___DOCActionContext_presentingViewController);
    type metadata accessor for DOCItemCollectionViewController(0);
    result = swift_dynamicCastClass();
    if (result)
    {
      v6 = result;
      type metadata accessor for DOCInlineRenameController();
      v7 = swift_allocObject();
      v8 = v5;
      v9 = a3;
      v10 = v4;
      v11 = specialized DOCInlineRenameController.init(delegate:cell:node:)(v6, v10, v9, v7);

      v12 = MEMORY[0x277D85000];
      v13 = *((*MEMORY[0x277D85000] & *v6) + 0x14A0);

      v13(v14);
      v15 = *((*v12 & *v6) + 0x8D8);

      v17 = v15(v16);
      if (v17)
      {

        v18 = *((*v12 & *v6) + 0x910);

        v18(partial apply for closure #1 in closure #1 in closure #1 in static UIDocumentBrowserAction.renameAction(), v11);
      }

      else
      {
        (*(*v11 + 432))();
      }
    }
  }

  return result;
}

void closure #2 in closure #1 in static UIDocumentBrowserAction.renameAction()(void *a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v5 = MEMORY[0x277D85000];
    v6 = *((*MEMORY[0x277D85000] & *a1) + 0x208);
    v7 = a1;
    v8 = v6();
    if (v8)
    {
      v9 = v8;
      v10 = (*((*v5 & *v8) + 0xA80))();
    }

    else
    {
      v10 = 0;
    }

    v11 = *(a3 + OBJC_IVAR___DOCActionContext_transitionProxy);
    v12 = objc_allocWithZone(type metadata accessor for DOCRenameViewController());
    swift_unknownObjectRetain();
    v13 = a2;
    swift_unknownObjectRetain();
    v14 = specialized DOCRenameViewController.init(renamingItem:transitionProxy:initialThumbnail:)(v13, v11, v10);

    swift_unknownObjectRelease();
    (*((*v5 & *v14) + 0xE0))(*(a3 + OBJC_IVAR___DOCActionContext_presentingViewController), 1);

    swift_unknownObjectRelease();
  }
}

id static UIDocumentBrowserAction.openWithAppAction(node:)()
{
  if (one-time initialization token for openWithMenuTitle != -1)
  {
    swift_once();
  }

  v0 = static DOCOpenWithMenuController.openWithMenuTitle;
  v1 = *MEMORY[0x277D06008];
  v2 = objc_allocWithZone(MEMORY[0x277D05F28]);
  v3 = v1;
  v4 = MEMORY[0x24C1FAD20](v0, *(&v0 + 1));
  v14 = DOCGridLayout.specIconWidth.modify;
  v15 = 0;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
  v13 = &block_descriptor_58;
  v5 = _Block_copy(&v10);
  v6 = [v2 initWithIdentifier:v3 localizedTitle:v4 unresolvedHandler:v5];

  _Block_release(v5);

  [v6 setMenuSortOrder_];
  if (one-time initialization token for openWithMenuImage != -1)
  {
    swift_once();
  }

  [v6 setImage_];
  [v6 setSupportsMultipleItems_];
  [v6 setAvailability_];
  v14 = specialized closure #1 in static NSPredicate.validateAction(_:);
  v15 = 0;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [String : Any]?) -> (@unowned Bool);
  v13 = &block_descriptor_3_2;
  v7 = _Block_copy(&v10);
  v8 = [objc_opt_self() predicateWithBlock_];
  _Block_release(v7);

  [v6 setFilteringPredicate_];

  return v6;
}

void closure #2 in static UIDocumentBrowserAction.openWithAppAction(node:)(unint64_t a1)
{
  v2 = [objc_opt_self() contextMenuShowsOpenWithApp];
  v3 = [v2 isEnabled];

  if (v3)
  {
    if (a1 >> 62)
    {
LABEL_19:
      v4 = __CocoaSet.count.getter();
      if (!v4)
      {
        return;
      }
    }

    else
    {
      v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v4)
      {
        return;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x24C1FC540](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v5 = *(a1 + 32);
      swift_unknownObjectRetain();
    }

    if (([v5 isFolder] & 1) == 0)
    {
      v6 = 0;
      while (v4 != v6)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x24C1FC540](v6, a1);
          if (__OFADD__(v6, 1))
          {
            goto LABEL_17;
          }
        }

        else
        {
          if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v7 = *(a1 + 8 * v6 + 32);
          swift_unknownObjectRetain();
          if (__OFADD__(v6, 1))
          {
LABEL_17:
            __break(1u);
LABEL_18:
            __break(1u);
            goto LABEL_19;
          }
        }

        v8 = [v7 isInTrash];
        swift_unknownObjectRelease();
        ++v6;
        if ((v8 & 1) == 0)
        {
          break;
        }
      }
    }

    swift_unknownObjectRelease();
  }
}

void closure #1 in static UIDocumentBrowserAction.moveAction(numberOfItems:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any(a2, v21);
  type metadata accessor for DOCActionContext();
  if (swift_dynamicCast())
  {
    v8 = v20;
    [*&v20[OBJC_IVAR___DOCActionContext_configuration] copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConfiguration);
    swift_dynamicCast();
    v9 = v20;
    [v20 setInteractionMode_];
    [v9 setForPickingDocuments_];
    UUID.init()();
    v10 = UUID.uuidString.getter();
    v12 = v11;
    (*(v4 + 8))(v7, v3);
    v13 = MEMORY[0x24C1FAD20](v10, v12);

    [v9 setSceneIdentifier_];

    [v9 setForMovingDocuments_];
    v14 = objc_allocWithZone(DOCPickerContext);
    v15 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v17 = [v14 initWithNodes_];

    v18 = [objc_allocWithZone(DOCDocumentPickerViewController) initWithConfiguration:v15 context:v17];
    [*&v8[OBJC_IVAR___DOCActionContext_presentingViewController] presentViewController:v18 animated:1 completion:0];
  }
}

void closure #1 in static UIDocumentBrowserAction.moveActionTo(parent:)(unint64_t a1, uint64_t a2, void *a3)
{
  v53 = type metadata accessor for Date();
  v6 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v7);
  v51 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DOCSmartFolderInputFile();
  MEMORY[0x28223BE20](v52, v9);
  v11 = (&v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Any(a2, &v55);
  type metadata accessor for DOCActionContext();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v12 = v54;
  All = specialized Array<A>.fpfs_syncFetchAllFPItems()(a1);
  if (!All)
  {

    return;
  }

  v14 = All;
  [*&v12[OBJC_IVAR___DOCActionContext_configuration] copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConfiguration);
  swift_dynamicCast();
  v15 = v54;
  swift_getObjectType();
  v50 = [a3 fpfs_fpItem];
  if (!v50)
  {

LABEL_26:

    return;
  }

  v48 = v6;

  if (v14 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    v16 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v16 = v14;
  }

  v17 = [objc_opt_self() shared];
  v18 = specialized makeDOCMoveOperation(nodes:destinationFolder:undoManager:)(v16, a3, v17);
  v20 = v19;

  if (!v18)
  {

    v42 = v50;
LABEL_23:

    return;
  }

  v21 = [objc_opt_self() defaultManager];
  ObjectType = swift_getObjectType();
  v45 = v18;
  v23 = ObjectType;
  v24 = *(v20 + 8);
  swift_unknownObjectRetain();
  specialized FPItemManager.scheduleOperation(_:)(v45, v23, v24);

  swift_unknownObjectRelease();
  if (v14 >> 62)
  {
    v25 = __CocoaSet.count.getter();
    if (v25)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

  v25 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v25)
  {
LABEL_25:

    swift_unknownObjectRelease();
    goto LABEL_26;
  }

LABEL_9:
  v49 = v15;
  v44 = v12;
  if (v25 >= 1)
  {
    v26 = 0;
    v46 = (v48 + 8);
    v47 = v14 & 0xC000000000000001;
    v48 = v14;
    do
    {
      if (v47)
      {
        v32 = MEMORY[0x24C1FC540](v26, v14);
      }

      else
      {
        v32 = *(v14 + 8 * v26 + 32);
      }

      v33 = v32;
      v34 = [v32 displayName];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = [v33 contentType];
      static UTType._unconditionallyBridgeFromObjectiveC(_:)();

      Date.init()();
      *v11 = v35;
      v11[1] = v37;
      if (one-time initialization token for sharedManager != -1)
      {
        swift_once();
      }

      v39 = v50;
      (*((*MEMORY[0x277D85000] & *static DOCSmartFolderManager.sharedManager) + 0xA8))(v11, v50);
      v40 = [v49 hostIdentifier];
      if (!v40)
      {
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = MEMORY[0x24C1FAD20](v41);
      }

      ++v26;
      v27 = v39;
      v28 = v51;
      Date.init()();
      v29 = objc_allocWithZone(MEMORY[0x277D05ED0]);
      isa = Date._bridgeToObjectiveC()().super.isa;
      v31 = [v29 initWithAppBundleIdentifier:v40 folderItem:v27 type:1 lastUsedDate:isa frecency:1.0];

      (*v46)(v28, v53);
      DOCSmartFolderManager.register(event:)(v31);

      outlined destroy of NSURLResourceKey(v11, type metadata accessor for DOCSmartFolderInputFile);
      v14 = v48;
    }

    while (v25 != v26);

    swift_unknownObjectRelease();

    v42 = v49;
    goto LABEL_23;
  }

  __break(1u);
}

uint64_t closure #2 in static UIDocumentBrowserAction.moveActionTo(parent:)(unint64_t a1, void *a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_42:
    if (__CocoaSet.count.getter() < 1)
    {
      return 0;
    }

    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return 0;
    }
  }

  v6 = 0;
  v7 = a1 & 0xC000000000000001;
  while (v5 != v6)
  {
    if (v7)
    {
      v8 = MEMORY[0x24C1FC540](v6, a1);
      if (__OFADD__(v6, 1))
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v8 = *(a1 + 8 * v6 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v6, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    v9 = [v8 isTrashed];
    swift_unknownObjectRelease();
    ++v6;
    if (v9)
    {
      return 0;
    }
  }

  if (v5)
  {
    v10 = 0;
    v11 = &selRef_initWithFrame_;
    v42 = v5;
    v39 = a2;
    v40 = v4;
    do
    {
      if (v7)
      {
        MEMORY[0x24C1FC540](v10, a1);
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v10 >= *(v4 + 16))
        {
          goto LABEL_41;
        }

        swift_unknownObjectRetain();
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_34:
          __break(1u);
          return 1;
        }
      }

      swift_getObjectType();
      if (DOCNode.isFINode.getter() && (swift_getObjectType(), DOCNode.isFINode.getter()))
      {
        objc_opt_self();
        v14 = [swift_dynamicCastObjCClassUnconditional() parent];
        objc_opt_self();
        swift_dynamicCastObjCClassUnconditional();
        if (!v14)
        {
          swift_unknownObjectRelease();
          return 0;
        }

        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
        swift_unknownObjectRetain();
        v5 = v42;
        v15 = static NSObject.== infix(_:_:)();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        if ((v15 & 1) == 0)
        {
          return 0;
        }
      }

      else if (DOCNode.isFPItem.getter())
      {
        objc_opt_self();
        v16 = [swift_dynamicCastObjCClassUnconditional() parentItemID];
        v17 = [v16 v11[249]];
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        v43 = v18;
        v45 = v20;
        MEMORY[0x24C1FAEA0](3112028, 0xE300000000000000);
        v21 = [v16 identifier];
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        MEMORY[0x24C1FAEA0](v22, v24);

        v25 = v45;
        v26 = [a2 fpfs_fpItem];
        if (v26)
        {
          v27 = v26;
          v41 = v43;
          v28 = [v26 itemID];

          v29 = [v28 v11[249]];
          v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v32 = v31;

          v44 = v30;
          v46 = v32;
          MEMORY[0x24C1FAEA0](3112028, 0xE300000000000000);
          v33 = [v28 identifier];
          v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v36 = v35;

          MEMORY[0x24C1FAEA0](v34, v36);

          if (v41 == v44 && v25 == v46)
          {
            swift_unknownObjectRelease();

            return 0;
          }

          v37 = _stringCompareWithSmolCheck(_:_:expecting:)();
          swift_unknownObjectRelease();

          a2 = v39;
          v4 = v40;
          v5 = v42;
          if (v37)
          {
            return 0;
          }
        }

        else
        {
          swift_unknownObjectRelease();

          v4 = v40;
          v5 = v42;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v10;
      v12 = v13 == v5;
      v7 = a1 & 0xC000000000000001;
      v11 = &selRef_initWithFrame_;
    }

    while (!v12);
  }

  return 1;
}

uint64_t closure #2 in static UIDocumentBrowserAction.favoriteAction(useAlternateTitle:)(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_19:
    v2 = __CocoaSet.count.getter();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x24C1FC540](v3, a1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_16:
            __break(1u);
            return 1;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_19;
          }

          v4 = *(a1 + 8 * v3 + 32);
          swift_unknownObjectRetain();
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_16;
          }
        }

        if ([v4 doc_isCollaborationInvitation])
        {
          swift_unknownObjectRelease();
        }

        else
        {
          v6 = [v4 fpfs_fpItem];
          v7 = [v6 favoriteRank];

          if (v7)
          {
            swift_unknownObjectRelease();
          }

          else
          {
            v8 = [v4 isInTrash];
            swift_unknownObjectRelease();
            if ((v8 & 1) == 0)
            {
              return 1;
            }
          }
        }

        ++v3;
      }

      while (v5 != v2);
    }
  }

  return 0;
}

void closure #1 in static UIDocumentBrowserAction.favoriteAction(useAlternateTitle:)(unint64_t a1, uint64_t a2, SEL *a3)
{
  if (a1 >> 62)
  {
    v5 = a1;
    v6 = __CocoaSet.count.getter();
    a1 = v5;
    if (!v6)
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x24C1FC540](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    swift_unknownObjectRetain();
  }

  swift_getObjectType();
  v4 = DOCNode.fpfs_syncFetchFPItem()();
  swift_unknownObjectRelease();
  if (v4)
  {
    v7 = [objc_opt_self() sharedManager];
    [v7 *a3];
  }
}

uint64_t closure #2 in static UIDocumentBrowserAction.unfavoriteAction()(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_18:
    v2 = __CocoaSet.count.getter();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x24C1FC540](v3, a1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_15:
            __break(1u);
            return 1;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_18;
          }

          v4 = *(a1 + 8 * v3 + 32);
          swift_unknownObjectRetain();
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_15;
          }
        }

        v6 = [v4 fpfs_fpItem];
        v7 = [v6 favoriteRank];

        if (!v7 || (v7, [v4 doc_isCollaborationInvitation]))
        {
          swift_unknownObjectRelease();
        }

        else
        {
          v8 = [v4 isInTrash];
          swift_unknownObjectRelease();
          if ((v8 & 1) == 0)
          {
            return 1;
          }
        }

        ++v3;
      }

      while (v5 != v2);
    }
  }

  return 0;
}

uint64_t itemProvidersForPasteboard #1 (nodes:) in static UIDocumentBrowserAction.copyAction(numberOfItems:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v8 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x24C1FC540](v4, a1);
        }

        else
        {
          swift_unknownObjectRetain();
        }

        ++v4;
        v5 = [objc_allocWithZone(MEMORY[0x277CCAA88]) init];
        ObjectType = swift_getObjectType();
        v7 = swift_unknownObjectRetain();
        specialized NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:)(v7, 2, 1, 1, v5, ObjectType);
        swift_unknownObjectRelease_n();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v2 != v4);
      return v8;
    }
  }

  return result;
}

uint64_t closure #1 in static UIDocumentBrowserAction.copyAction(numberOfItems:)(unint64_t a1, uint64_t a2)
{
  v42 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v45 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchQoS();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v6);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS.QoSClass();
  v40 = *(v41 - 8);
  v9.n128_f64[0] = MEMORY[0x28223BE20](v41, v8);
  v39 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_21:
    v11 = __CocoaSet.count.getter();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  while (v11 != v12)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x24C1FC540](v12, a1, v9);
    }

    else
    {
      if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v14 = *(a1 + 8 * v12 + 32);
    }

    v15 = v14;
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v17 = [v14 node];

    ++v12;
    if (v17)
    {
      MEMORY[0x24C1FB090]();
      if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v13 = aBlock;
      v12 = v16;
    }
  }

  v18 = [objc_opt_self() defaultPermission];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v20 = [v18 dataOwnerStateForNodes_];

  v21 = swift_allocObject();
  *(v21 + 16) = MEMORY[0x277D84F90];
  if (v20 == 1)
  {
    v22 = 2;
  }

  else
  {
    v22 = v20 == 2;
  }

  v23 = objc_opt_self();
  v24 = swift_allocObject();
  *(v24 + 16) = v21 + 16;
  *(v24 + 24) = v13;
  v25 = swift_allocObject();
  *(v25 + 16) = partial apply for closure #2 in closure #1 in static UIDocumentBrowserAction.copyAction(numberOfItems:);
  *(v25 + 24) = v24;
  v55 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  v56 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v52 = 1107296256;
  v53 = thunk for @escaping @callee_guaranteed () -> ();
  v54 = &block_descriptor_416;
  v26 = _Block_copy(&aBlock);

  [v23 _performAsDataOwner_block_];
  _Block_release(v26);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v29 = v40;
    v30 = v39;
    v31 = v41;
    (*(v40 + 104))(v39, *MEMORY[0x277D851C8], v41);
    v32 = static OS_dispatch_queue.global(qos:)();
    (*(v29 + 8))(v30, v31);
    outlined init with copy of DOCGridLayout.Spec?(v42, v50, &_sypSgMd);
    v33 = swift_allocObject();
    *(v33 + 16) = v20;
    *(v33 + 24) = v21;
    v34 = v50[1];
    *(v33 + 32) = v50[0];
    *(v33 + 48) = v34;
    *(v33 + 64) = v13;
    v55 = partial apply for closure #3 in closure #1 in static UIDocumentBrowserAction.copyAction(numberOfItems:);
    v56 = v33;
    aBlock = MEMORY[0x277D85DD0];
    v52 = 1107296256;
    v53 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v54 = &block_descriptor_422;
    v35 = _Block_copy(&aBlock);

    v36 = v43;
    static DispatchQoS.unspecified.getter();
    v49 = MEMORY[0x277D84F90];
    _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v37 = v45;
    v38 = v48;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v36, v37, v35);
    _Block_release(v35);

    (*(v47 + 8))(v37, v38);
    (*(v44 + 8))(v36, v46);
  }

  return result;
}

void closure #3 in closure #1 in static UIDocumentBrowserAction.copyAction(numberOfItems:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 16;
  if (a1 == 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = a1 == 2;
  }

  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in closure #3 in closure #1 in static UIDocumentBrowserAction.copyAction(numberOfItems:);
  *(v8 + 24) = v7;
  v51 = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  v52 = v8;
  aBlock = MEMORY[0x277D85DD0];
  v48 = 1107296256;
  v49 = thunk for @escaping @callee_guaranteed () -> ();
  v50 = &block_descriptor_432;
  v9 = _Block_copy(&aBlock);
  v10 = v52;

  [v6 _performAsDataOwner_block_];
  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_18:
    swift_once();
LABEL_15:
    specialized DOCAnalyticsManager.sendEvent(_:)(&aBlock, static DOCAnalyticsManager.shared);

    outlined destroy of DOCAnalyticsActionEvent(&aBlock);
    goto LABEL_16;
  }

  outlined init with copy of DOCGridLayout.Spec?(a3, &aBlock, &_sypSgMd);
  if (!v50)
  {
    outlined destroy of CharacterSet?(&aBlock, &_sypSgMd);
    goto LABEL_16;
  }

  type metadata accessor for DOCActionContext();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

    return;
  }

  v10 = v46;
  v12 = *&v46[OBJC_IVAR___DOCActionContext_presentingViewController];
  type metadata accessor for DOCItemCollectionViewController(0);
  v13 = swift_dynamicCastClass();
  if (!v13)
  {

    return;
  }

  v14 = v13;
  v15 = *&v46[OBJC_IVAR___DOCActionContext_configuration];
  v43 = v12;
  v16 = v15;

  DOCAnalyticsActionEvent.FileProvider.init(nodes:)(v17);
  v42 = v46;
  v18 = objc_opt_self();
  v19 = [v18 mainBundle];

  v20 = MEMORY[0x277D85000];
  v21 = (*((*MEMORY[0x277D85000] & *v14) + 0xA68))();
  v22 = [v21 identifier];

  v23 = DOCAnalyticsActionEvent.Source.init(sourceIdentifier:)(v22);
  v24 = (*((*v20 & *v14) + 0xBD8))(v23);
  if (v24 < 4)
  {
    v41 = 0x3020201u >> (8 * v24);
    v25 = [v18 mainBundle];
    v26 = [v25 bundleIdentifier];

    v27 = v45[1];
    if (v26)
    {
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    v31 = v16;
    DOCAnalyticsActionEvent.Client.init(configuration:bundleIdentifier:)(v31, v28, v30, &aBlock);
    v32 = aBlock;
    v33 = v31;
    DOCAnalyticsActionEvent.SortMode.init(configuration:)(v33, v45);
    v34 = v45[0];
    v35 = v33;
    DOCAnalyticsActionEvent.SortOrder.init(configuration:)(v35, &v44);
    v36 = v44;
    v37 = [v35 hostIdentifier];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    aBlock = 0xD000000000000032;
    v48 = 0x8000000249BCDC20;
    v49 = v38;
    v50 = v40;
    LOBYTE(v51) = 0;
    BYTE1(v51) = v32;
    BYTE2(v51) = v42;
    BYTE3(v51) = v27;
    BYTE4(v51) = v41;
    BYTE5(v51) = v34;
    BYTE6(v51) = v36;
    if (one-time initialization token for shared == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  aBlock = v24;
  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
}

void closure #1 in closure #3 in closure #1 in static UIDocumentBrowserAction.copyAction(numberOfItems:)()
{
  v0 = [objc_opt_self() generalPasteboard];
  swift_beginAccess();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSItemProvider);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v0 setItemProviders_];
}

void closure #1 in static UIDocumentBrowserAction.duplicateAction(targetNode:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of Any(a2, v9);
  type metadata accessor for DOCActionContext();
  if (swift_dynamicCast())
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = v8;
    if (a3)
    {
      swift_unknownObjectRetain_n();

      v6 = v8;
      closure #1 in closure #1 in static UIDocumentBrowserAction.duplicateAction(targetNode:)(a3, a1, v6);
      swift_unknownObjectRelease_n();
    }

    else
    {

      v7 = v8;
      specialized static UIDocumentBrowserAction.fetchParent(nodes:completion:)(a1, partial apply for closure #1 in closure #1 in static UIDocumentBrowserAction.duplicateAction(targetNode:), v5, specialized static UIDocumentBrowserAction._fetchParent(items:completion:), specialized static UIDocumentBrowserAction._fetchParent(items:completion:));
    }
  }
}

void closure #1 in closure #1 in static UIDocumentBrowserAction.duplicateAction(targetNode:)(uint64_t a1, unint64_t a2, char *a3)
{
  v78 = a3;
  v79 = type metadata accessor for DOCOperationItem();
  v5 = *(v79 - 1);
  MEMORY[0x28223BE20](v79, v6);
  v8 = (&v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9, v10);
  v12 = (&v72 - v11);
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_getObjectType();
    v18 = DOCNode.fpfs_syncFetchFPItem()();
    if (v18)
    {
      v19 = v18;
      v77 = a1;
      v20 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      isa = Array._bridgeToObjectiveC()().super.isa;
      LODWORD(v20) = [v20 isAnyNodeAFault_];

      if (!v20 || (DOCIsNetworkReachable() & 1) != 0)
      {
        v73 = v19;
        v74 = v17;
        if (a2 >> 62)
        {
          v22 = __CocoaSet.count.getter();
        }

        else
        {
          v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v23 = MEMORY[0x277D84F90];
        v75 = v14;
        v76 = v13;
        if (v22)
        {
          v82[0] = MEMORY[0x277D84F90];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22 & ~(v22 >> 63), 0);
          if (v22 < 0)
          {
            __break(1u);
LABEL_37:
            swift_once();
LABEL_33:
            specialized DOCAnalyticsManager.sendEvent(_:)(v82, static DOCAnalyticsManager.shared);

            outlined destroy of DOCAnalyticsActionEvent(v82);
            return;
          }

          v23 = v82[0];
          if ((a2 & 0xC000000000000001) != 0)
          {
            for (i = 0; i != v22; ++i)
            {
              *v12 = MEMORY[0x24C1FC540](i, a2);
              swift_storeEnumTagMultiPayload();
              v82[0] = v23;
              v26 = v23[2];
              v25 = v23[3];
              if (v26 >= v25 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v25 > 1, v26 + 1, 1);
                v23 = v82[0];
              }

              v23[2] = v26 + 1;
              outlined init with take of DOCOperationItem(v12, v23 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v26);
            }
          }

          else
          {
            v30 = (a2 + 32);
            do
            {
              v31 = a2;
              *v8 = *v30;
              swift_storeEnumTagMultiPayload();
              v82[0] = v23;
              v33 = v23[2];
              v32 = v23[3];
              swift_unknownObjectRetain();
              if (v33 >= v32 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1);
                v23 = v82[0];
              }

              v23[2] = v33 + 1;
              outlined init with take of DOCOperationItem(v8, v23 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v33);
              ++v30;
              --v22;
              a2 = v31;
            }

            while (v22);
          }
        }

        v34 = [objc_opt_self() defaultManager];
        v35 = v78;
        v36 = *&v78[OBJC_IVAR___DOCActionContext_presentingViewController];
        v37 = swift_allocObject();
        *(v37 + 16) = v35;
        v38 = v35;
        FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(2u, v23, v77, 1, 2, 0, v36, partial apply for closure #3 in closure #1 in closure #1 in static UIDocumentBrowserAction.duplicateAction(targetNode:), v37);

        v39 = *&v38[OBJC_IVAR___DOCActionContext_configuration];
        v40 = [v39 hostIdentifier];
        if (!v40)
        {
          v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v40 = MEMORY[0x24C1FAD20](v41);
        }

        v23 = v73;
        v42 = v74;
        Date.init()();
        v43 = objc_allocWithZone(MEMORY[0x277D05ED0]);
        v44 = Date._bridgeToObjectiveC()().super.isa;
        v22 = [v43 initWithAppBundleIdentifier:v40 folderItem:v23 type:2 lastUsedDate:v44 frecency:1.0];

        (*(v75 + 8))(v42, v76);
        if (one-time initialization token for sharedManager != -1)
        {
          swift_once();
        }

        DOCSmartFolderManager.register(event:)(v22);
        type metadata accessor for DOCItemCollectionViewController(0);
        v45 = swift_dynamicCastClass();
        if (!v45)
        {

          return;
        }

        v46 = v45;
        v79 = v36;

        DOCAnalyticsActionEvent.FileProvider.init(nodes:)(v47);
        LODWORD(v78) = v81[2];
        v48 = objc_opt_self();
        v49 = [v48 mainBundle];

        v50 = MEMORY[0x277D85000];
        v51 = (*((*MEMORY[0x277D85000] & *v46) + 0xA68))();
        v52 = [v51 identifier];

        v53 = DOCAnalyticsActionEvent.Source.init(sourceIdentifier:)(v52);
        v54 = v81[1];
        v55 = (*((*v50 & *v46) + 0xBD8))(v53);
        if (v55 >= 4)
        {
          v82[0] = v55;
          _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
          __break(1u);
          return;
        }

        v56 = 0x3020201u >> (8 * v55);
        v57 = [v48 mainBundle];
        v58 = [v57 bundleIdentifier];

        if (v58)
        {
          v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v61 = v60;
        }

        else
        {
          v59 = 0;
          v61 = 0;
        }

        v62 = v39;
        DOCAnalyticsActionEvent.Client.init(configuration:bundleIdentifier:)(v62, v59, v61, v82);
        v63 = v82[0];
        v64 = v62;
        DOCAnalyticsActionEvent.SortMode.init(configuration:)(v64, v81);
        v65 = v81[0];
        v66 = v64;
        DOCAnalyticsActionEvent.SortOrder.init(configuration:)(v66, &v80);
        v67 = v80;
        v68 = [v66 hostIdentifier];
        v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v71 = v70;

        v82[0] = 0xD000000000000032;
        v82[1] = 0x8000000249BCDC20;
        v82[2] = v69;
        v82[3] = v71;
        v83 = 3;
        v84 = v63;
        v85 = v78;
        v86 = v54;
        v87 = v56;
        v88 = v65;
        v89 = v67;
        if (one-time initialization token for shared == -1)
        {
          goto LABEL_33;
        }

        goto LABEL_37;
      }

      v27 = swift_allocObject();
      v28 = v78;
      *(v27 + 16) = v78;
      v29 = v28;
      DOCRunInMainThread(_:)();
    }
  }
}

uint64_t closure #3 in closure #1 in closure #1 in static UIDocumentBrowserAction.duplicateAction(targetNode:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    v3 = *(a2 + OBJC_IVAR___DOCActionContext_presentingViewController);
    type metadata accessor for DOCItemCollectionViewController(0);
    result = swift_dynamicCastClass();
    if (result)
    {
      v4 = result;
      v5 = swift_allocObject();
      *(v5 + 16) = v2;
      *(v5 + 24) = v4;
      v6 = v3;

      DOCRunInMainThread(_:)();
    }
  }

  return result;
}

unint64_t closure #1 in closure #3 in closure #1 in closure #1 in static UIDocumentBrowserAction.duplicateAction(targetNode:)(unint64_t result, void *a2)
{
  v3 = result;
  if (result >> 62)
  {
    goto LABEL_13;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v6 = MEMORY[0x277D85000];
      while ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1FC540](v5, v3);
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_11;
        }

LABEL_7:
        (*((*v6 & *a2) + 0xF68))(v7);
        result = swift_unknownObjectRelease();
        ++v5;
        if (v8 == v4)
        {
          return result;
        }
      }

      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v7 = *(v3 + 8 * v5 + 32);
      swift_unknownObjectRetain();
      v8 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      result = __CocoaSet.count.getter();
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t closure #2 in static UIDocumentBrowserAction.duplicateAction(targetNode:)(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_17:
    v2 = __CocoaSet.count.getter();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x24C1FC540](v3, a1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_14:
            __break(1u);
            return 1;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_17;
          }

          v4 = *(a1 + 8 * v3 + 32);
          swift_unknownObjectRetain();
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_14;
          }
        }

        if ([v4 isAppContainer])
        {
          swift_unknownObjectRelease();
        }

        else
        {
          v6 = [v4 isInTrash];
          swift_unknownObjectRelease();
          if ((v6 & 1) == 0)
          {
            return 1;
          }
        }

        ++v3;
      }

      while (v5 != v2);
    }
  }

  return 0;
}

void closure #5 in static UIDocumentBrowserAction.fetchParent(nodes:completion:)(void *a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (!a1)
  {
    goto LABEL_8;
  }

  v8 = a1;
  v5 = specialized DOCNode.fpfs_syncFetchFPItem()();
  if (!v5 || (v6 = v5, type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem), v7 = static NSObject.== infix(_:_:)(), v6, (v7 & 1) == 0))
  {

LABEL_8:
    a3(0);
    return;
  }

  a3(a2);
}

void closure #2 in static UIDocumentBrowserAction._fetchParent(items:completion:)(unint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (a1)
  {
    v4 = a1;
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      a1 = __CocoaSet.count.getter();
      if (!a1)
      {
        goto LABEL_7;
      }
    }

    else
    {
      a1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!a1)
      {
        goto LABEL_7;
      }
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      a1 = MEMORY[0x24C1FC540](0, v4);
    }

    else
    {
      if (!*(v5 + 16))
      {
        __break(1u);
        return;
      }

      a1 = *(v4 + 32);
    }
  }

LABEL_7:
  v6 = a1;
  a3();
}

Swift::Int closure #1 in static UIDocumentBrowserAction.fetchParent(nodes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a3 + 16) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return OS_dispatch_semaphore.signal()();
}

void closure #1 in static UIDocumentBrowserAction.mixedDeleteAction()(unint64_t a1, uint64_t a2)
{
  outlined init with copy of Any(a2, v13);
  type metadata accessor for DOCActionContext();
  if (swift_dynamicCast())
  {
    v3 = v12;
    All = specialized Array<A>.fpfs_syncFetchAllFPItems()(a1);
    if (All)
    {
      v5 = All;
      v6 = OBJC_IVAR___DOCActionContext_presentingViewController;
      v7 = *&v12[OBJC_IVAR___DOCActionContext_presentingViewController];
      type metadata accessor for DOCItemCollectionViewController(0);
      v8 = swift_dynamicCastClass();
      if (!v8)
      {
LABEL_6:
        v11 = [objc_opt_self() defaultManager];
        FPItemManager.trashOrDeleteItems(_:alertPresenting:userCancellationHandler:)(v5, *&v12[v6], 0, 0);

        if (one-time initialization token for sharedManager != -1)
        {
          swift_once();
        }

        (*((*MEMORY[0x277D85000] & *static DOCSmartFolderManager.sharedManager) + 0xA0))();
        goto LABEL_10;
      }

      v9 = v8;
      v10 = v7;
      if ([v9 isEditing])
      {

        goto LABEL_6;
      }

      v3 = v12;
      specialized DOCItemCollectionViewController.focusNextItemAndThen(_:)(v9, v5, v3);

      swift_bridgeObjectRelease_n();
    }

LABEL_10:
  }
}

uint64_t trashOrDeleteItems #1 () in closure #1 in static UIDocumentBrowserAction.mixedDeleteAction()(unint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() defaultManager];
  FPItemManager.trashOrDeleteItems(_:alertPresenting:userCancellationHandler:)(a1, *(a2 + OBJC_IVAR___DOCActionContext_presentingViewController), 0, 0);

  if (one-time initialization token for sharedManager != -1)
  {
    swift_once();
  }

  return (*((*MEMORY[0x277D85000] & *static DOCSmartFolderManager.sharedManager) + 0xA0))();
}

void closure #1 in static UIDocumentBrowserAction.deleteAction(title:)(unint64_t a1, uint64_t a2)
{
  outlined init with copy of Any(a2, v8);
  type metadata accessor for DOCActionContext();
  if (swift_dynamicCast())
  {
    All = specialized Array<A>.fpfs_syncFetchAllFPItems()(a1);
    if (All)
    {
      v4 = All;
      v5 = [objc_opt_self() defaultManager];
      v6 = *&v7[OBJC_IVAR___DOCActionContext_presentingViewController];
      FPItemManager.deleteItems(_:alertPresenting:skipConfirmation:userCancellationHandler:)(v4, v6, 0, 0, 0);

      if (one-time initialization token for sharedManager != -1)
      {
        swift_once();
      }

      (*((*MEMORY[0x277D85000] & *static DOCSmartFolderManager.sharedManager) + 0xA0))();
    }
  }
}

void closure #1 in static UIDocumentBrowserAction.deleteAllAction()(unint64_t a1, uint64_t a2)
{
  outlined init with copy of Any(a2, v12);
  type metadata accessor for DOCActionContext();
  if (swift_dynamicCast())
  {
    All = specialized Array<A>.fpfs_syncFetchAllFPItems()(a1);
    if (All)
    {
      v4 = All;
      v5 = *&v11[OBJC_IVAR___DOCActionContext_userInfo];
      if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000044, 0x8000000249BDC970), (v7 & 1) != 0) && (outlined init with copy of Any(*(v5 + 56) + 32 * v6, v12), swift_dynamicCast()))
      {
        v8 = v11;
      }

      else
      {
        v8 = 0;
      }

      v9 = [objc_opt_self() defaultManager];
      v10 = *&v11[OBJC_IVAR___DOCActionContext_presentingViewController];
      FPItemManager.deleteItems(_:alertPresenting:skipConfirmation:userCancellationHandler:)(v4, v10, v8, 0, 0);

      if (one-time initialization token for sharedManager != -1)
      {
        swift_once();
      }

      (*((*MEMORY[0x277D85000] & *static DOCSmartFolderManager.sharedManager) + 0xA0))();
    }
  }
}

void closure #1 in static UIDocumentBrowserAction.infoAction()(unint64_t a1, uint64_t a2)
{
  outlined init with copy of Any(a2, v8);
  type metadata accessor for DOCActionContext();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v3 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  if (a1 >> 62)
  {
    if (__CocoaSet.count.getter() >= 1 && __CocoaSet.count.getter())
    {
      goto LABEL_4;
    }

LABEL_10:

    return;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C1FC540](0, a1);
    goto LABEL_7;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(a1 + 32);
    swift_unknownObjectRetain();
LABEL_7:
    v5 = swift_allocObject();
    *(v5 + 16) = v7;
    *(v5 + 24) = a1;
    *(v5 + 32) = 0;
    *(v5 + 40) = v3;
    *(v5 + 48) = v4;
    v6 = v7;

    swift_unknownObjectRetain();
    DOCRunInMainThread(_:)();
    swift_unknownObjectRelease();

    return;
  }

  __break(1u);
}

uint64_t static UIDocumentBrowserAction.showInfo(for:inTagMode:actionContext:)(uint64_t result, char a2, void *a3)
{
  v6 = result;
  if (result >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result < 1)
    {
      return result;
    }

    result = __CocoaSet.count.getter();
    if (!result)
    {
      return result;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return result;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x24C1FC540](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v7 = *(v6 + 32);
    swift_unknownObjectRetain();
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = v6;
  *(v8 + 32) = a2 & 1;
  *(v8 + 40) = v3;
  *(v8 + 48) = v7;
  v9 = a3;

  swift_unknownObjectRetain();
  DOCRunInMainThread(_:)();
  swift_unknownObjectRelease();
}

void closure #1 in static UIDocumentBrowserAction.tagsAction()(unint64_t a1, uint64_t a2)
{
  outlined init with copy of Any(a2, v13);
  type metadata accessor for DOCActionContext();
  if (swift_dynamicCast())
  {
    All = specialized Array<A>.fpfs_syncFetchAllFPItems()(a1);
    if (!All)
    {
LABEL_15:

      return;
    }

    if (All >> 62)
    {
      if (__CocoaSet.count.getter() > 1)
      {
        goto LABEL_5;
      }
    }

    else if (*((All & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
    {
LABEL_5:
      v4 = [objc_allocWithZone(DOCTagEditorViewController) init];
      v5 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
      [v5 setModalPresentationStyle_];
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v4 setItems_];

      v7 = *&v12[OBJC_IVAR___DOCActionContext_presentingViewController];
      [v7 presentViewController:v5 animated:1 completion:0];

      goto LABEL_15;
    }

    v8 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
    if (a1 >> 62)
    {
      if (__CocoaSet.count.getter() < 1 || !__CocoaSet.count.getter())
      {
        goto LABEL_15;
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x24C1FC540](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v9 = *(a1 + 32);
      swift_unknownObjectRetain();
    }

    v10 = swift_allocObject();
    *(v10 + 16) = v12;
    *(v10 + 24) = a1;
    *(v10 + 32) = 1;
    *(v10 + 40) = v8;
    *(v10 + 48) = v9;
    v11 = v12;

    swift_unknownObjectRetain();
    DOCRunInMainThread(_:)();
    swift_unknownObjectRelease();
  }
}

BOOL closure #2 in static UIDocumentBrowserAction.renameAction()(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_15:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x24C1FC540](v4, a1);
      if (__OFADD__(v5, 1))
      {
LABEL_12:
        __break(1u);
        return v3 != v5;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v6 = *(a1 + 8 * v4 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v5, 1))
      {
        goto LABEL_12;
      }
    }

    v7 = [v6 isInTrash];
    swift_unknownObjectRelease();
    v4 = v5 + 1;
  }

  while ((v7 & 1) != 0);
  return v3 != v5;
}

void closure #1 in static UIDocumentBrowserAction.folderCustomizationAction()(unint64_t a1, uint64_t a2)
{
  outlined init with copy of Any(a2, v5);
  type metadata accessor for DOCActionContext();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  if (!specialized Array<A>.fpfs_syncFetchAllFPItems()(a1))
  {
    goto LABEL_11;
  }

  if (a1 >> 62)
  {
    if (__CocoaSet.count.getter() == 1 && __CocoaSet.count.getter())
    {
      goto LABEL_5;
    }

LABEL_11:

    return;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x24C1FC540](0, a1);
    goto LABEL_8;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(a1 + 32);
    swift_unknownObjectRetain();
LABEL_8:
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
    static UIDocumentBrowserAction.showFolderCustomization(for:actionContext:)(v3, v4);

    swift_unknownObjectRelease();
    return;
  }

  __break(1u);
}

void static UIDocumentBrowserAction.showFolderCustomization(for:actionContext:)(uint64_t a1, char *a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = DOCNode.fpfs_syncFetchFINode()();
  if (v7)
  {

LABEL_3:
    if (one-time initialization token for DocumentManager != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.DocumentManager);
    swift_unknownObjectRetain();
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v35 = v11;
      *v10 = 136315138;
      v12 = DOCNode.nodeDescription.getter();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v35);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_2493AC000, oslog, v9, "Unable to find FINode for %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x24C1FE850](v11, -1, -1);
      MEMORY[0x24C1FE850](v10, -1, -1);
    }

    goto LABEL_14;
  }

  if (!v6)
  {
    goto LABEL_3;
  }

  v15 = v6;
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 sharedInstance];
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  v20 = objc_allocWithZone(type metadata accessor for DOCFolderIconCustomizationApplicator());
  v21 = v17;
  v22 = specialized DOCFolderIconCustomizationApplicator.init(withNode:tagRegistry:tagsControllerCreator:)(v21, v18, partial apply for closure #1 in static UIDocumentBrowserAction.showFolderCustomization(for:actionContext:), v19, v20);

  v23 = [*&a2[OBJC_IVAR___DOCActionContext_presentingViewController] traitCollection];
  v24 = MEMORY[0x277D85000];
  v25 = (*((*MEMORY[0x277D85000] & *v22) + 0xF8))(v23);
  v26 = (*((*v24 & *v22) + 0x178))(v25);
  v27 = *(dispatch thunk of DSFolderIconInfo.adornmentDictionary.getter() + 16);

  oslog = 0;
  if (!v27)
  {
    v28 = [v21 propertyAsNSObject_];
    if (v28)
    {
      v29 = v28;
      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      if (!v28)
      {

        v28 = 0;
      }
    }

    oslog = v28;
    v30 = v28;
  }

  v31 = swift_allocObject();
  v31[2] = v26;
  v31[3] = v22;
  v31[4] = oslog;
  v31[5] = v3;
  v31[6] = a1;
  v31[7] = a2;

  v32 = v22;
  swift_unknownObjectRetain();
  v33 = a2;
  DOCRunInMainThread(_:)();

LABEL_14:
}