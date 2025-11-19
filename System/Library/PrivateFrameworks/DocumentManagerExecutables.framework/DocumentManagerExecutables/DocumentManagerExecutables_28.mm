uint64_t closure #2 in static UIDocumentBrowserAction.folderCustomizationAction()(unint64_t a1)
{
  if (![objc_opt_self() folderCustomizationEnabled])
  {
    return 0;
  }

  v2 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_21:
    result = __CocoaSet.count.getter();
    if (result != 1)
    {
      return 0;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result != 1)
    {
      return 0;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C1FC540](0, a1);
LABEL_7:
    v5 = [v4 supportsFolderCustomization];
    swift_unknownObjectRelease();
    if (v5)
    {
      if (v2)
      {
        v6 = __CocoaSet.count.getter();
      }

      else
      {
        v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      for (i = 0; ; ++i)
      {
        v2 = v6 != i;
        if (v6 == i)
        {
          break;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x24C1FC540](i, a1);
          if (__OFADD__(i, 1))
          {
            goto LABEL_19;
          }
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v8 = *(a1 + 8 * i + 32);
          swift_unknownObjectRetain();
          if (__OFADD__(i, 1))
          {
LABEL_19:
            __break(1u);
LABEL_20:
            __break(1u);
            goto LABEL_21;
          }
        }

        v9 = [v8 isInTrash];
        swift_unknownObjectRelease();
        if ((v9 & 1) == 0)
        {
          return v2;
        }
      }

      return v2;
    }

    return 0;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(a1 + 32);
    swift_unknownObjectRetain();
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void closure #1 in static UIDocumentBrowserAction.manageShareAction(with:)(unint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v6.n128_f64[0] = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &aBlock[-1] - v7;
  if (a1 >> 62)
  {
    if (!__CocoaSet.count.getter())
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
    MEMORY[0x24C1FC540](0, a1, v6);
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
  v9 = DOCNode.fpfs_syncFetchFPItem()();
  swift_unknownObjectRelease();
  if (v9)
  {
    outlined init with copy of Any(a2, aBlock);
    type metadata accessor for DOCActionContext();
    if (swift_dynamicCast())
    {
      v10 = aBlock[6];
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = v11;
        v13 = v9;
        v14 = [v12 fileURL];
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

        v25 = type metadata accessor for URL();
        (*(*(v25 - 8) + 56))(v8, v16, 1, v25);
        specialized presentViewController #1 (_:error:) in static UIDocumentBrowserAction.showManageShare(for:actionContext:)(v8, 0, v13, v10);

        outlined destroy of CharacterSet?(v8, &_s10Foundation3URLVSgMd);
      }

      else
      {
        v17 = objc_opt_self();
        v18 = v9;
        v19 = [v17 defaultManager];
        objc_opt_self();
        v20 = swift_dynamicCastObjCClassUnconditional();
        v21 = swift_allocObject();
        *(v21 + 16) = v18;
        *(v21 + 24) = v10;
        aBlock[4] = closure #1 in static UIDocumentBrowserAction.showManageShare(for:actionContext:)partial apply;
        aBlock[5] = v21;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
        aBlock[3] = &block_descriptor_195;
        v22 = _Block_copy(aBlock);
        v23 = v18;
        v24 = v10;

        [v19 fetchURLForItem:v20 completionHandler:v22];
        _Block_release(v22);
      }
    }

    else
    {
    }
  }
}

void static UIDocumentBrowserAction.showManageShare(for:actionContext:)(void *a1, void *a2)
{
  swift_getObjectType();

  specialized static UIDocumentBrowserAction.showManageShare(for:actionContext:)(a1, a2);
}

void closure #1 in static UIDocumentBrowserAction.createiCloudLinkAction(targetNode:)(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v7 = a1;
    v8 = __CocoaSet.count.getter();
    a1 = v7;
    if (!v8)
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
  v3 = DOCNode.fpfs_syncFetchFPItem()();
  swift_unknownObjectRelease();
  if (v3)
  {
    v4 = [objc_opt_self() defaultManager];
    outlined init with copy of Any(a2, v10);
    v5 = swift_allocObject();
    outlined init with take of Any(v10, (v5 + 16));
    v9[4] = partial apply for closure #1 in closure #1 in static UIDocumentBrowserAction.createiCloudLinkAction(targetNode:);
    v9[5] = v5;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
    v9[3] = &block_descriptor_167_0;
    v6 = _Block_copy(v9);

    [v4 fetchURLForItem:v3 completionHandler:v6];
    _Block_release(v6);
  }
}

void closure #1 in closure #1 in static UIDocumentBrowserAction.createiCloudLinkAction(targetNode:)(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v31 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v13 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v31 - v16;
  outlined init with copy of DOCGridLayout.Spec?(a1, v8, &_s10Foundation3URLVSgMd);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of CharacterSet?(v8, &_s10Foundation3URLVSgMd);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.UI);
    v19 = a2;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v32[0] = v23;
      *v22 = 136315138;
      v33 = a2;
      v24 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
      v25 = String.init<A>(describing:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v32);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_2493AC000, v20, v21, "No node url found. Failed to handle create iCloud link action. Error: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x24C1FE850](v23, -1, -1);
      MEMORY[0x24C1FE850](v22, -1, -1);
    }
  }

  else
  {
    v28 = *(v10 + 32);
    v28(v17, v8, v9);
    outlined init with copy of Any(v31, v32);
    (*(v10 + 16))(v13, v17, v9);
    v29 = (*(v10 + 80) + 48) & ~*(v10 + 80);
    v30 = swift_allocObject();
    outlined init with take of Any(v32, (v30 + 16));
    v28((v30 + v29), v13, v9);
    DOCRunInMainThread(_:)();

    (*(v10 + 8))(v17, v9);
  }
}

uint64_t closure #2 in static UIDocumentBrowserAction.createiCloudLinkAction(targetNode:)(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_21:
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
LABEL_18:
            __break(1u);
            return 1;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_21;
          }

          v4 = *(a1 + 8 * v3 + 32);
          swift_unknownObjectRetain();
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_18;
          }
        }

        swift_getObjectType();
        if (([v4 isShared] & 1) != 0 || (objc_msgSend(v4, sel_doc_isCollaborationInvitation) & 1) != 0 || (DOCNode.doc_isAppContainerRoot.getter() & 1) != 0 || objc_msgSend(v4, sel_isTrashed))
        {
          swift_unknownObjectRelease();
        }

        else
        {
          v6 = [v4 isExcludedFromSync];
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

void closure #1 in static UIDocumentBrowserAction.presentCreateiCloudLinkViewController(actionContext:url:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong doc_dismissViewController];
  }
}

void closure #1 in static UIDocumentBrowserAction.copyiCloudLinkAction(targetNode:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = a1;
    v5 = __CocoaSet.count.getter();
    a1 = v4;
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
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
      goto LABEL_17;
    }

    swift_unknownObjectRetain();
  }

  swift_getObjectType();
  v1 = DOCNode.fpfs_syncFetchFPItem()();
  swift_unknownObjectRelease();
  if (v1)
  {
    v2 = [objc_opt_self() defaultManager];
    aBlock[4] = closure #1 in closure #1 in static UIDocumentBrowserAction.copyiCloudLinkAction(targetNode:);
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_149;
    v3 = _Block_copy(aBlock);
    [v2 fetchURLForItem:v1 completionHandler:v3];
    _Block_release(v3);

    return;
  }

LABEL_9:
  if (one-time initialization token for UI != -1)
  {
LABEL_17:
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.UI);
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2493AC000, oslog, v7, "No node found. Failed to handle copy iCloud link action.", v8, 2u);
    MEMORY[0x24C1FE850](v8, -1, -1);
  }
}

void closure #1 in closure #1 in static UIDocumentBrowserAction.copyiCloudLinkAction(targetNode:)(uint64_t a1)
{
  v2 = type metadata accessor for URLResourceValues();
  v65 = *(v2 - 8);
  v66 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v62 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation17URLResourceValuesVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v64 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v56 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v63 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v56 - v17;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v56 - v26;
  outlined init with copy of DOCGridLayout.Spec?(a1, v18, &_s10Foundation3URLVSgMd);
  v28 = *(v20 + 48);
  if (v28(v18, 1, v19) != 1)
  {
    v33 = *(v20 + 32);
    v58 = v20 + 32;
    v59 = v28;
    v57 = v33;
    v33(v27, v18, v19);
    v60 = v20;
    v61 = v23;
    (*(v20 + 16))(v23, v27, v19);
    v34 = MEMORY[0x24C1FAD20](0xD000000000000015, 0x8000000249BDCAF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249B9A480;
    *(inited + 32) = v34;
    v36 = v34;
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of NSURLResourceKey(inited + 32, type metadata accessor for NSURLResourceKey);
    URL.resourceValues(forKeys:)();
    v37 = v11;
    v38 = v65;

    v39 = v66;
    (*(v38 + 56))(v11, 0, 1, v66);
    v40 = v64;
    outlined init with copy of DOCGridLayout.Spec?(v11, v64, &_s10Foundation17URLResourceValuesVSgMd);
    v41 = (*(v38 + 48))(v40, 1, v39);
    v42 = v60;
    if (v41 == 1)
    {
      v43 = &_s10Foundation17URLResourceValuesVSgMd;
    }

    else
    {
      v44 = v62;
      (*(v38 + 32))(v62, v40, v39);
      v45 = URLResourceValues.allValues.getter();
      if (*(v45 + 16) && (v46 = specialized __RawDictionaryStorage.find<A>(_:)(v36), (v47 & 1) != 0))
      {
        outlined init with copy of Any(*(v45 + 56) + 32 * v46, aBlock);
        (*(v38 + 8))(v44, v39);

        v40 = v63;
        v48 = swift_dynamicCast();
        (*(v42 + 56))(v40, v48 ^ 1u, 1, v19);
        if (v59(v40, 1, v19) != 1)
        {
          v49 = v61;
          (*(v42 + 8))(v61, v19);
          v57(v49, v40, v19);
LABEL_16:
          v50 = objc_opt_self();
          URL._bridgeToObjectiveC()(v51);
          v53 = v52;
          aBlock[4] = closure #1 in closure #1 in closure #1 in static UIDocumentBrowserAction.copyiCloudLinkAction(targetNode:);
          aBlock[5] = 0;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed CKShare?, @guaranteed Error?) -> ();
          aBlock[3] = &block_descriptor_152;
          v54 = _Block_copy(aBlock);
          [v50 existingShareForFileOrFolderURL:v53 completionHandler:v54];
          _Block_release(v54);

          outlined destroy of CharacterSet?(v37, &_s10Foundation17URLResourceValuesVSgMd);
          v55 = *(v42 + 8);
          v55(v49, v19);
          v55(v27, v19);
          return;
        }
      }

      else
      {

        (*(v38 + 8))(v44, v39);
        v40 = v63;
        (*(v42 + 56))(v63, 1, 1, v19);
      }

      v43 = &_s10Foundation3URLVSgMd;
    }

    outlined destroy of CharacterSet?(v40, v43);
    v49 = v61;
    goto LABEL_16;
  }

  outlined destroy of CharacterSet?(v18, &_s10Foundation3URLVSgMd);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logger.UI);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_2493AC000, v30, v31, "No node url found. Failed to handle copy iCloud link action.", v32, 2u);
    MEMORY[0x24C1FE850](v32, -1, -1);
  }
}

void closure #1 in closure #1 in closure #1 in static UIDocumentBrowserAction.copyiCloudLinkAction(targetNode:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v46 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v13 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v46 - v16;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v46 - v20;
  if (a3)
  {
    v22 = a3;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.UI);
    v24 = a3;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v55 = v28;
      *v27 = 136315138;
      swift_getErrorValue();
      v29 = Error.localizedDescription.getter();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v55);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_2493AC000, v25, v26, "Failed to copy iCloud link: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x24C1FE850](v28, -1, -1);
      MEMORY[0x24C1FE850](v27, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    outlined init with copy of DOCGridLayout.Spec?(a1, v8, &_s10Foundation3URLVSgMd);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      outlined destroy of CharacterSet?(v8, &_s10Foundation3URLVSgMd);
    }

    else
    {
      v54 = *(v10 + 32);
      v54(v21, v8, v9);
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static Logger.UI);
      v53 = *(v10 + 16);
      v53(v17, v21, v9);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v49 = v10 + 16;
        v36 = v35;
        v50 = swift_slowAlloc();
        v55 = v50;
        *v36 = 136315138;
        _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
        v48 = v33;
        v37 = dispatch thunk of CustomStringConvertible.description.getter();
        v51 = v10 + 32;
        v39 = v38;
        v40 = *(v10 + 8);
        v47 = v34;
        v52 = v40;
        v40(v17, v9);
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v55);

        v46 = v36;
        *(v36 + 4) = v41;
        v42 = v48;
        _os_log_impl(&dword_2493AC000, v48, v47, "URL: %s copied to pasteboard.", v36, 0xCu);
        v43 = v50;
        __swift_destroy_boxed_opaque_existential_0(v50);
        MEMORY[0x24C1FE850](v43, -1, -1);
        MEMORY[0x24C1FE850](v46, -1, -1);
      }

      else
      {

        v52 = *(v10 + 8);
        v52(v17, v9);
      }

      v53(v13, v21, v9);
      v44 = (*(v10 + 80) + 16) & ~*(v10 + 80);
      v45 = swift_allocObject();
      v54((v45 + v44), v13, v9);
      DOCRunInMainThread(_:)();

      v52(v21, v9);
    }
  }
}

void closure #1 in closure #1 in closure #1 in closure #1 in static UIDocumentBrowserAction.copyiCloudLinkAction(targetNode:)()
{
  v0 = [objc_opt_self() generalPasteboard];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  [v0 setURL_];
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed CKShare?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v18 - v10;
  v12 = *(a1 + 32);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = type metadata accessor for URL();
    (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  }

  else
  {
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  }

  v15 = a3;
  v16 = a4;
  v12(v11, a3, a4);

  return outlined destroy of CharacterSet?(v11, &_s10Foundation3URLVSgMd);
}

uint64_t closure #2 in static UIDocumentBrowserAction.manageShareAction(with:)(unint64_t a1)
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

        swift_getObjectType();
        if (![v4 isShared] || objc_msgSend(v4, sel_doc_isCollaborationInvitation) || (DOCNode.doc_isAppContainerRoot.getter() & 1) != 0)
        {
          swift_unknownObjectRelease();
        }

        else
        {
          v6 = [v4 isTrashed];
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

uint64_t closure #1 in static UIDocumentBrowserAction.shareActionPredicate()(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v3 = 0;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x24C1FC540](v3, a1);
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_12;
      }

LABEL_7:
      v8 = v4;
      v6 = closure #1 in closure #1 in static UIDocumentBrowserAction.shareActionPredicate()(&v8);
      swift_unknownObjectRelease();
      if (v6)
      {
        ++v3;
        if (v5 != i)
        {
          continue;
        }
      }

      return v6 & 1;
    }

    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    v4 = *(a1 + 8 * v3 + 32);
    swift_unknownObjectRetain();
    v5 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

  v6 = 1;
  return v6 & 1;
}

uint64_t closure #1 in closure #1 in static UIDocumentBrowserAction.shareActionPredicate()(void **a1)
{
  v2 = *a1;
  swift_getObjectType();
  if ([v2 isFolder] && (v3 = objc_msgSend(v2, sel_fpfs_fpItem)) != 0)
  {
    v4 = v3;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPProviderDomain);
    v5 = v4;
    v6 = specialized @nonobjc FPProviderDomain.__allocating_init(for:cachePolicy:)(v5, 3);
    if (v1)
    {

      if (one-time initialization token for DocumentManager != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static Logger.DocumentManager);
      swift_unknownObjectRetain();
      v8 = v1;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v33 = v5;
        v13 = swift_slowAlloc();
        v34 = v13;
        *v11 = 136315394;
        v14 = DOCNode.nodeDescription.getter();
        v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v34);

        *(v11 + 4) = v16;
        *(v11 + 12) = 2112;
        v17 = v1;
        v18 = _swift_stdlib_bridgeErrorToNSError();
        *(v11 + 14) = v18;
        *v12 = v18;
        _os_log_impl(&dword_2493AC000, v9, v10, "Could not fetch provider domain for %s: %@", v11, 0x16u);
        outlined destroy of CharacterSet?(v12, &_sSo8NSObjectCSgMd);
        MEMORY[0x24C1FE850](v12, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x24C1FE850](v13, -1, -1);
        MEMORY[0x24C1FE850](v11, -1, -1);
      }

      else
      {
      }

      goto LABEL_16;
    }

    v20 = v6;

    if (([v20 supportsPickingFolders] & 1) == 0)
    {
      goto LABEL_15;
    }

    v21 = [v2 providerDomainID];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
    {

LABEL_16:
      v19 = 1;
      goto LABEL_17;
    }

    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v26)
    {
LABEL_15:

      goto LABEL_16;
    }

    v28 = [v2 providerDomainID];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    if (v29 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v31 == v32)
    {
      v19 = 1;
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v19 = 0;
  }

LABEL_17:
  if (([v2 isAppContainer] & 1) != 0 || ((objc_msgSend(v2, sel_doc_isCollaborationInvitation) | v19) & 1) != 0 || objc_msgSend(v2, sel_folderType) == 2 || objc_msgSend(v2, sel_folderType) == 3)
  {
    return 0;
  }

  else
  {
    return [v2 isInTrash] ^ 1;
  }
}

void closure #1 in static UIDocumentBrowserAction.fetchPublishingURLAction()(unint64_t a1)
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_249B9A480;
  *(v2 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7DOCNode_pGMd);
  *(v2 + 64) = lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DOCNode] and conformance [A], &_sSaySo7DOCNode_pGMd);
  *(v2 + 32) = a1;

  os_log(_:dso:log:type:_:)();

  if (a1 >> 62)
  {
    if (!__CocoaSet.count.getter())
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
  v3 = DOCNode.fpfs_syncFetchFPItem()();
  swift_unknownObjectRelease();
  if (v3)
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CC63E0]) initWithItem_];
    v7[4] = closure #1 in closure #1 in static UIDocumentBrowserAction.fetchPublishingURLAction();
    v7[5] = 0;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed URL?, @guaranteed Error?) -> ();
    v7[3] = &block_descriptor_140;
    v5 = _Block_copy(v7);
    [v4 setFetchCompletionBlock_];
    _Block_release(v5);
    v6 = [objc_opt_self() defaultManager];
    [v6 scheduleAction_];
  }
}

uint64_t closure #1 in closure #1 in static UIDocumentBrowserAction.fetchPublishingURLAction()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UTType();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DOCGridLayout.Spec?(a1, v15, &_s10Foundation3URLVSgMd);
  v21 = *(v17 + 48);
  if (v21(v15, 1, v16) != 1)
  {
    (*(v17 + 32))(v20, v15, v16);
    v25 = [objc_opt_self() generalPasteboard];
    URL._bridgeToObjectiveC()(v26);
    v28 = v27;
    static UTType.url.getter();
    v29 = UTType.identifier.getter();
    v31 = v30;
    (*(v43 + 8))(v7, v44);
    v32 = MEMORY[0x24C1FAD20](v29, v31);

    [v25 setValue:v28 forPasteboardType:v32];

    return (*(v17 + 8))(v20, v16);
  }

  outlined destroy of CharacterSet?(v15, &_s10Foundation3URLVSgMd);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v44 = static DOCLog.UI;
  static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_249B9FA70;
  outlined init with copy of DOCGridLayout.Spec?(a1, v11, &_s10Foundation3URLVSgMd);
  if (v21(v11, 1, v16) == 1)
  {
    outlined destroy of CharacterSet?(v11, &_s10Foundation3URLVSgMd);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v23 = URL.path.getter();
    v24 = v34;
    (*(v17 + 8))(v11, v16);
  }

  v35 = MEMORY[0x277D837D0];
  *(v22 + 56) = MEMORY[0x277D837D0];
  v36 = lazy protocol witness table accessor for type String and conformance String();
  v37 = v36;
  *(v22 + 64) = v36;
  if (v24)
  {
    v38 = v23;
  }

  else
  {
    v38 = 0;
  }

  v39 = 0xE000000000000000;
  if (v24)
  {
    v39 = v24;
  }

  *(v22 + 32) = v38;
  *(v22 + 40) = v39;
  if (!a2)
  {
    v42 = (v22 + 72);
    *(v22 + 96) = v35;
    *(v22 + 104) = v36;
    goto LABEL_17;
  }

  swift_getErrorValue();
  v40 = Error.localizedDescription.getter();
  v42 = (v22 + 72);
  *(v22 + 96) = v35;
  *(v22 + 104) = v37;
  if (!v41)
  {
LABEL_17:
    *v42 = 0;
    v41 = 0xE000000000000000;
    goto LABEL_18;
  }

  *v42 = v40;
LABEL_18:
  *(v22 + 80) = v41;
  os_log(_:dso:log:type:_:)();
}

void UIPopoverPresentationController.doc_makeUpdateableWithReloadBlock(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  v6 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo31UIPopoverPresentationControllerC_Tt1B5(v3, static UIPopoverPresentationController.associatedObjectStorageKey);
  KeyPath = swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v10[0] = partial apply for thunk for @callee_guaranteed () -> ();
  v10[1] = v8;
  v9 = *((*MEMORY[0x277D85000] & *v6) + 0x80);

  v9(v10, KeyPath);
}

Swift::Void __swiftcall UIPopoverPresentationController.doc_reloadableSourceInfoDidChange()()
{
  if (one-time initialization token for associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  v1 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo31UIPopoverPresentationControllerC_Tt1B5(v0, static UIPopoverPresentationController.associatedObjectStorageKey);
  swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v1) + 0x78))(&v3);

  v2 = v3;
  if (v3)
  {
    v3();
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v2);
  }
}

uint64_t (*UIPopoverPresentationController._doc_sourceInfoReloader.getter())()
{
  if (one-time initialization token for associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  v1 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo31UIPopoverPresentationControllerC_Tt1B5(v0, static UIPopoverPresentationController.associatedObjectStorageKey);
  swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v1) + 0x78))(v6);

  v2 = v6[0];
  if (!v6[0])
  {
    return 0;
  }

  v3 = v6[1];
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  return thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
}

Swift::Void __swiftcall UIPopoverPresentationController.doc_invalidateUpdateableWithReloadBlock()()
{
  if (one-time initialization token for associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  v1 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo31UIPopoverPresentationControllerC_Tt1B5(v0, static UIPopoverPresentationController.associatedObjectStorageKey);
  KeyPath = swift_getKeyPath();
  v3[0] = 0;
  v3[1] = 0;
  (*((*MEMORY[0x277D85000] & *v1) + 0x80))(v3, KeyPath);
}

uint64_t key path getter for UIPopoverPresentationController._doc_sourceInfoReloader : UIPopoverPresentationController@<X0>(uint64_t (**a1)()@<X8>)
{
  result = UIPopoverPresentationController._doc_sourceInfoReloader.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = thunk for @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t key path setter for UIPopoverPresentationController._doc_sourceInfoReloader : UIPopoverPresentationController(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = _sytIegr_Ieg_TRTA_0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v1);
  specialized UIPopoverPresentationController._doc_sourceInfoReloader.setter(v4, v3);

  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v4);
}

void static DOCPresentationLog.faultLog(if:_:)(char a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.UI);

    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v10);
      _os_log_impl(&dword_2493AC000, oslog, v6, "[Presentation Error] %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x24C1FE850](v8, -1, -1);
      MEMORY[0x24C1FE850](v7, -1, -1);
    }

    else
    {
    }
  }
}

void configureWithPreferredStyle #1 (_:ifResolvesToPopover:) in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  swift_beginAccess();
  v42 = a4;
  LODWORD(a4) = *(a4 + 16);
  _StringGuts.grow(_:)(79);
  MEMORY[0x24C1FAEA0](0xD00000000000004DLL, 0x8000000249BDCD20);
  v9 = [a5 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  MEMORY[0x24C1FAEA0](v10, v12);

  _StringGuts.grow(_:)(38);

  v47[0] = 0xD000000000000024;
  v47[1] = 0x8000000249BDCCB0;
  MEMORY[0x24C1FAEA0](0, 0xE000000000000000);

  if (a4 == 1)
  {
    v13 = v47[0];
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.UI);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v47[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, 0x8000000249BDCCB0, v47);
      _os_log_impl(&dword_2493AC000, v15, v16, "[Presentation Error] %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x24C1FE850](v18, -1, -1);
      MEMORY[0x24C1FE850](v17, -1, -1);
    }
  }

  else
  {
  }

  swift_beginAccess();
  v19 = *(a6 + 16);
  _StringGuts.grow(_:)(77);
  MEMORY[0x24C1FAEA0](0xD00000000000004BLL, 0x8000000249BDCD70);
  v20 = [a5 description];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  MEMORY[0x24C1FAEA0](v21, v23);

  _StringGuts.grow(_:)(38);

  v46[0] = 0xD000000000000024;
  v46[1] = 0x8000000249BDCCB0;
  MEMORY[0x24C1FAEA0](0, 0xE000000000000000);

  if (v19 == 1)
  {
    v24 = v46[0];
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.UI);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v46[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, 0x8000000249BDCCB0, v46);
      _os_log_impl(&dword_2493AC000, v26, v27, "[Presentation Error] %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x24C1FE850](v29, -1, -1);
      MEMORY[0x24C1FE850](v28, -1, -1);
    }
  }

  else
  {
  }

  if (a1 == 7 && !a2)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.UI);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v46[0] = v34;
      *v33 = 136315138;
      *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000059, 0x8000000249BDCDC0, v46);
      _os_log_impl(&dword_2493AC000, v31, v32, "[Presentation Error] %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x24C1FE850](v34, -1, -1);
      MEMORY[0x24C1FE850](v33, -1, -1);
    }
  }

  swift_beginAccess();
  *(v42 + 16) = 1;
  [a5 setModalPresentationStyle_];
  if ([a5 modalPresentationStyle] == 7 && a2)
  {

    v35 = [a5 popoverPresentationController];
    if (v35)
    {
      v36 = v35;
      a2();
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a2);
    }

    else
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      __swift_project_value_buffer(v37, static Logger.UI);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v45 = v41;
        *v40 = 136315138;
        *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000066, 0x8000000249BDCE20, &v45);
        _os_log_impl(&dword_2493AC000, v38, v39, "[Presentation Error] %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v41);
        MEMORY[0x24C1FE850](v41, -1, -1);
        MEMORY[0x24C1FE850](v40, -1, -1);
      }

      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a2);
    }
  }
}

id presentConfiguredController #1 () in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a1 + 16);
  _StringGuts.grow(_:)(66);
  MEMORY[0x24C1FAEA0](0xD000000000000040, 0x8000000249BDCC60);
  v9 = [a2 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  MEMORY[0x24C1FAEA0](v10, v12);

  _StringGuts.grow(_:)(38);

  v36[0] = 0xD000000000000024;
  v36[1] = 0x8000000249BDCCB0;
  MEMORY[0x24C1FAEA0](0, 0xE000000000000000);

  if (v8)
  {
  }

  else
  {
    v13 = v36[0];
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.UI);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = a4;
      v19 = swift_slowAlloc();
      v36[0] = v19;
      *v17 = 136315138;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, 0x8000000249BDCCB0, v36);
      _os_log_impl(&dword_2493AC000, v15, v16, "[Presentation Error] %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      v20 = v19;
      a4 = v18;
      MEMORY[0x24C1FE850](v20, -1, -1);
      MEMORY[0x24C1FE850](v17, -1, -1);
    }
  }

  swift_beginAccess();
  v21 = *(a3 + 16);
  _StringGuts.grow(_:)(60);
  MEMORY[0x24C1FAEA0](0xD00000000000003ALL, 0x8000000249BDCCE0);
  v22 = [a2 description];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  MEMORY[0x24C1FAEA0](v23, v25);

  _StringGuts.grow(_:)(38);

  v35[0] = 0xD000000000000024;
  v35[1] = 0x8000000249BDCCB0;
  MEMORY[0x24C1FAEA0](0, 0xE000000000000000);

  if (v21 == 1)
  {
    v26 = v35[0];
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.UI);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = a4;
      v32 = swift_slowAlloc();
      v35[0] = v32;
      *v30 = 136315138;
      *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, 0x8000000249BDCCB0, v35);
      _os_log_impl(&dword_2493AC000, v28, v29, "[Presentation Error] %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      v33 = v32;
      a4 = v31;
      MEMORY[0x24C1FE850](v33, -1, -1);
      MEMORY[0x24C1FE850](v30, -1, -1);
    }
  }

  else
  {
  }

  swift_beginAccess();
  *(a3 + 16) = 1;
  return [*(a4 + OBJC_IVAR___DOCActionContext_presentingViewController) presentViewController:a2 animated:1 completion:0];
}

id closure #1 in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v15 = (*((*MEMORY[0x277D85000] & *a3) + 0xA8))();
  if (v15)
  {
    v16 = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    swift_unknownObjectRetain();
    configureWithPreferredStyle #1 (_:ifResolvesToPopover:) in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)(7, partial apply for closure #1 in closure #1 in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:), v17, a4, a5, a6);
    swift_unknownObjectRelease();
  }

  else if (a1)
  {
    v18 = swift_allocObject();
    v18[2] = a1;
    v18[3] = a5;
    v18[4] = a7;
    v18[5] = a8;
    v19 = a1;
    v20 = a5;
    swift_unknownObjectRetain();
    v21 = a8;
    configureWithPreferredStyle #1 (_:ifResolvesToPopover:) in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)(7, partial apply for closure #2 in closure #1 in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:), v18, a4, v20, a6);
  }

  else
  {
    configureWithPreferredStyle #1 (_:ifResolvesToPopover:) in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)(2, 0, 0, a4, a5, a6);
  }

  return presentConfiguredController #1 () in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)(a4, a5, a6, a3);
}

uint64_t closure #2 in closure #1 in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  [a1 setSourceView_];
  [a2 bounds];
  [a1 setSourceRect_];
  v19[2] = &unk_285D42468;
  v9 = swift_dynamicCastObjCProtocolConditional();
  if (v9)
  {
    [a1 setDelegate_];
  }

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a4;
  v11[4] = a5;
  v12 = one-time initialization token for associatedObjectStorageKey;

  swift_unknownObjectRetain();
  v13 = a5;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo31UIPopoverPresentationControllerC_Tt1B5(a1, static UIPopoverPresentationController.associatedObjectStorageKey);
  KeyPath = swift_getKeyPath();
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for closure #1 in closure #2 in closure #1 in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:);
  *(v16 + 24) = v11;
  v19[0] = thunk for @callee_guaranteed () -> ()partial apply;
  v19[1] = v16;
  v17 = *((*MEMORY[0x277D85000] & *v14) + 0x80);

  v17(v19, KeyPath);
}

void closure #1 in closure #2 in closure #1 in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    aBlock[4] = partial apply for closure #1 in closure #1 in closure #2 in closure #1 in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:);
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed CFStringRef?, @guaranteed CFErrorRef?) -> ();
    aBlock[3] = &block_descriptor_237;
    v8 = _Block_copy(aBlock);
    v9 = v6;

    [a2 getViewFor_waitForNewThumbnail:a3 :{0, v8}];
    _Block_release(v8);
  }
}

void closure #1 in closure #1 in closure #2 in closure #1 in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v4 = a1;
    [a3 setSourceView_];
    [v4 bounds];
    [a3 setSourceRect_];
  }
}

void closure #1 in static UIDocumentBrowserAction.showInfo(for:inTagMode:actionContext:)(char *a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = *&a1[OBJC_IVAR___DOCActionContext_configuration];
  v10 = *&a1[OBJC_IVAR___DOCActionContext_actionReporting];
  v11 = type metadata accessor for DOCServiceInfoViewController();
  v12 = objc_allocWithZone(v11);
  v12[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_isInPopoverMode] = 0;
  *&v12[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_configuration] = v9;
  v13 = objc_allocWithZone(DOCItemInfoViewController);
  v14 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v16 = [v13 initWithNodes:isa configuration:v14 actionReporting:v10];

  v17 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_infoViewController;
  *&v12[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_infoViewController] = v16;
  v18 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  *&v12[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_infoNavigationController] = v18;
  [v18 _setBuiltinTransitionStyle_];
  if (a3)
  {
    [*&v12[v17] displayTagView];
  }

  v75.receiver = v12;
  v75.super_class = v11;
  v19 = objc_msgSendSuper2(&v75, sel_init);
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a4;
  v20[4] = v19;
  v20[5] = a5;
  v20[6] = a1;
  v21 = one-time initialization token for associatedObjectStorageKey;
  v22 = v19;
  v23 = a1;
  swift_unknownObjectRetain_n();
  v66 = a2;
  swift_bridgeObjectRetain_n();
  v24 = v22;
  v25 = v23;
  if (v21 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v26 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v24, static UIViewController.associatedObjectStorageKey);
  swift_getKeyPath();
  v27 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v26) + 0x78))(&aBlock);

  if (aBlock)
  {
  }

  else
  {
    v74 = &unk_285D0A930;
    swift_dynamicCastObjCProtocolUnconditional();
    v28 = static UIViewController.associatedObjectStorageKey;
    v29 = v24;
    v30 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v29, v28);
    KeyPath = swift_getKeyPath();
    type metadata accessor for DOCPresentationPreheatController();
    v32 = swift_allocObject();
    *(v32 + 16) = 0x3FE0000000000000;
    swift_unknownObjectWeakInit();
    *(v32 + 32) = MEMORY[0x277D84F90];
    *(v32 + 40) = 0;
    swift_unknownObjectWeakAssign();
    aBlock = v32;
    (*((*v27 & *v30) + 0x80))(&aBlock, KeyPath);
  }

  v33 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v24, static UIViewController.associatedObjectStorageKey);
  swift_getKeyPath();
  (*((*v27 & *v33) + 0x78))(&aBlock);

  v34 = aBlock;
  if (!aBlock)
  {
    if (v66 >> 62)
    {
      v48 = __CocoaSet.count.getter();
    }

    else
    {
      v48 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v49 = swift_allocObject();
    *(v49 + 16) = 0;
    v50 = swift_allocObject();
    *(v50 + 16) = 0;
    v51 = *&v25[OBJC_IVAR___DOCActionContext_transitionProxy];
    swift_getObjectType();
    v52 = DOCNode.fpfs_syncFetchFPItem()();
    v47 = v52;
    if (v48 > 1 || !v51 || !v52)
    {
      if (v48 <= 1)
      {
        v64 = 7;
      }

      else
      {
        v64 = 2;
      }

      configureWithPreferredStyle #1 (_:ifResolvesToPopover:) in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)(v64, 0, 0, v49, v24, v50);
      presentConfiguredController #1 () in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)(v49, v24, v50, v25);

      swift_unknownObjectRelease();

      goto LABEL_32;
    }

    v53 = swift_allocObject();
    v53[2] = v25;
    v53[3] = v49;
    v53[4] = v24;
    v53[5] = v50;
    v53[6] = v51;
    v53[7] = v47;
    v72 = closure #1 in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)partial apply;
    v73 = v53;
    aBlock = MEMORY[0x277D85DD0];
    v69 = 1107296256;
    v70 = thunk for @escaping @callee_guaranteed (@guaranteed CFStringRef?, @guaranteed CFErrorRef?) -> ();
    v71 = &block_descriptor_268;
    v54 = _Block_copy(&aBlock);
    v55 = v47;
    swift_unknownObjectRetain_n();
    v56 = v24;
    v57 = v25;
    v47 = v55;

    [v51 getViewFor_waitForNewThumbnail:v47 :{0, v54}];

    swift_unknownObjectRelease();

    _Block_release(v54);

LABEL_22:
    swift_unknownObjectRelease();

LABEL_32:
    return;
  }

  v35 = v25;
  if (*(aBlock + 40) == 2)
  {
    if (v66 >> 62)
    {
      v36 = __CocoaSet.count.getter();
    }

    else
    {
      v36 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    v39 = *&v25[OBJC_IVAR___DOCActionContext_transitionProxy];
    swift_getObjectType();
    v40 = DOCNode.fpfs_syncFetchFPItem()();
    v41 = v40;
    if (v36 <= 1 && v39 && v40)
    {
      v42 = swift_allocObject();
      v42[2] = v25;
      v42[3] = v37;
      v42[4] = v24;
      v42[5] = v38;
      v42[6] = v39;
      v42[7] = v41;
      v72 = closure #1 in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)partial apply;
      v73 = v42;
      aBlock = MEMORY[0x277D85DD0];
      v69 = 1107296256;
      v70 = thunk for @escaping @callee_guaranteed (@guaranteed CFStringRef?, @guaranteed CFErrorRef?) -> ();
      v71 = &block_descriptor_281_0;
      v43 = _Block_copy(&aBlock);
      v44 = v41;
      swift_unknownObjectRetain_n();
      v45 = v24;
      v46 = v25;
      v47 = v44;

      [v39 getViewFor_waitForNewThumbnail:v47 :{0, v43}];
      _Block_release(v43);

      swift_unknownObjectRelease();

      goto LABEL_22;
    }

    if (v36 <= 1)
    {
      v65 = 7;
    }

    else
    {
      v65 = 2;
    }

    configureWithPreferredStyle #1 (_:ifResolvesToPopover:) in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)(v65, 0, 0, v37, v24, v38);
    v35 = v25;
    presentConfiguredController #1 () in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)(v37, v24, v38, v25);
  }

  else
  {
    v58 = swift_allocObject();
    *(v58 + 16) = partial apply for closure #1 in closure #1 in static UIDocumentBrowserAction.showInfo(for:inTagMode:actionContext:);
    *(v58 + 24) = v20;
    swift_beginAccess();
    v59 = *(v34 + 32);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v34 + 32) = v59;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v59[2] + 1, 1, v59);
      *(v34 + 32) = v59;
    }

    v62 = v59[2];
    v61 = v59[3];
    if (v62 >= v61 >> 1)
    {
      v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1, v59);
    }

    v59[2] = v62 + 1;
    v63 = &v59[2 * v62];
    v63[4] = thunk for @callee_guaranteed () -> ()partial apply;
    v63[5] = v58;
    *(v34 + 32) = v59;
    swift_endAccess();
    DOCPresentationPreheatController.startIfNecessary()();

    v41 = v24;
  }

  swift_unknownObjectRelease();
}

void closure #1 in closure #1 in static UIDocumentBrowserAction.showInfo(for:inTagMode:actionContext:)(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, char *a5)
{
  if (a1 >> 62)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = *&a5[OBJC_IVAR___DOCActionContext_transitionProxy];
  swift_getObjectType();
  v11 = DOCNode.fpfs_syncFetchFPItem()();
  v20 = v11;
  if (v7 > 1 || (v10 ? (v12 = v11 == 0) : (v12 = 1), v12))
  {
    if (v7 <= 1)
    {
      v19 = 7;
    }

    else
    {
      v19 = 2;
    }

    configureWithPreferredStyle #1 (_:ifResolvesToPopover:) in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)(v19, 0, 0, v8, a3, v9);
    presentConfiguredController #1 () in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)(v8, a3, v9, a5);
  }

  else
  {
    v13 = swift_allocObject();
    v13[2] = a5;
    v13[3] = v8;
    v13[4] = a3;
    v13[5] = v9;
    v13[6] = v10;
    v13[7] = v20;
    aBlock[4] = closure #1 in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)partial apply;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed CFStringRef?, @guaranteed CFErrorRef?) -> ();
    aBlock[3] = &block_descriptor_290;
    v14 = _Block_copy(aBlock);
    v15 = v20;
    swift_unknownObjectRetain_n();
    v16 = v15;
    v17 = a5;

    v18 = a3;

    [v10 getViewFor_waitForNewThumbnail:v16 :{0, v14}];
    _Block_release(v14);

    swift_unknownObjectRelease();
  }
}

id closure #1 in static UIDocumentBrowserAction.showFolderCustomization(for:actionContext:)(void *a1)
{
  v2 = [objc_allocWithZone(DOCTagEditorViewController) init];
  v3 = [a1 tags];
  isa = DOCTagsFromFPTags();

  if (!isa)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v2 setSelectedTags_];

  return v2;
}

void closure #2 in static UIDocumentBrowserAction.showFolderCustomization(for:actionContext:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  type metadata accessor for DSFolderCustomizationNavigationController();
  v8 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *a2) + 0xA8))();
  _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type DOCFolderIconCustomizationApplicator and conformance DOCFolderIconCustomizationApplicator, type metadata accessor for DOCFolderIconCustomizationApplicator);
  v9 = static DSFolderCustomizationNavigationController.controller(forFolder:allTags:delegate:initialCustomIcon:retainDelegate:)();

  v10 = [v9 viewControllers];
  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v11 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x24C1FC540](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v12 = *(v11 + 32);
  }

  v13 = v12;

  v14 = [v13 navigationItem];

  v15 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:24 target:v9 action:sel_doc_dismissViewController];
  [v14 setLeftBarButtonItem_];

LABEL_9:
  (*((*v8 & *a2) + 0x158))(v16);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v19 = *&a6[OBJC_IVAR___DOCActionContext_transitionProxy];
  swift_getObjectType();
  v20 = DOCNode.fpfs_syncFetchFPItem()();
  v27 = v20;
  if (v19 && v20)
  {
    v21 = swift_allocObject();
    v21[2] = a6;
    v21[3] = v17;
    v21[4] = v9;
    v21[5] = v18;
    v21[6] = v19;
    v21[7] = v27;
    aBlock[4] = partial apply for closure #1 in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:);
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed CFStringRef?, @guaranteed CFErrorRef?) -> ();
    aBlock[3] = &block_descriptor_215_0;
    v22 = _Block_copy(aBlock);
    v23 = v27;
    swift_unknownObjectRetain_n();
    v24 = v23;
    v25 = a6;

    v26 = v9;

    [v19 getViewFor_waitForNewThumbnail:v24 :{0, v22}];

    _Block_release(v22);

    swift_unknownObjectRelease();
  }

  else
  {
    configureWithPreferredStyle #1 (_:ifResolvesToPopover:) in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)(7, 0, 0, v17, v9, v18);
    presentConfiguredController #1 () in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)(v17, v9, v18, a6);
  }
}

uint64_t static UIDocumentBrowserAction.showQuickLook(for:actionContext:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;
  v5 = a2;
  v6 = a1;
  DOCRunInMainThread(_:)();
}

void closure #1 in static UIDocumentBrowserAction.showQuickLook(for:actionContext:)(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + OBJC_IVAR___DOCActionContext_presentingViewController);
  type metadata accessor for DOCItemCollectionViewController(0);
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *((*MEMORY[0x277D85000] & *v3) + 0x1440);
    v5 = v7;
    v4(MEMORY[0x277D84F90], a2);
  }

  else
  {
    type metadata accessor for DOCItemInfoContentViewController();
    if (!swift_dynamicCastClass())
    {
      return;
    }

    v6 = v7;
    DOCItemInfoContentViewController.preview(items:defaultItem:)(MEMORY[0x277D84F90], a2);
  }
}

void closure #1 in presentViewController #1 (_:error:) in static UIDocumentBrowserAction.showManageShare(for:actionContext:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(type metadata accessor for DOCDocumentSharingController());
  URL._bridgeToObjectiveC()(v4);
  v6 = v5;
  v7 = [v3 initWithFileURL_];

  [v7 setModalPresentationStyle_];
  [*(a2 + OBJC_IVAR___DOCActionContext_presentingViewController) presentViewController:v7 animated:1 completion:0];
}

id DOCDocumentSharingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCDocumentSharingController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized static UIDocumentBrowserAction.showManageShare(for:actionContext:)(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = aBlock - v6;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    swift_unknownObjectRetain();
    v10 = [v9 fileURL];
    if (v10)
    {
      v11 = v10;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = type metadata accessor for URL();
      (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
    }

    else
    {
      v18 = type metadata accessor for URL();
      (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
    }

    specialized presentViewController #1 (_:error:) in static UIDocumentBrowserAction.showManageShare(for:actionContext:)(v7, 0, a1, a2);
    swift_unknownObjectRelease();
    outlined destroy of CharacterSet?(v7, &_s10Foundation3URLVSgMd);
  }

  else
  {
    v13 = [objc_opt_self() defaultManager];
    objc_opt_self();
    v14 = swift_dynamicCastObjCClassUnconditional();
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = a2;
    aBlock[4] = partial apply for closure #1 in static UIDocumentBrowserAction.showManageShare(for:actionContext:);
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_179_0;
    v16 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v17 = a2;

    [v13 fetchURLForItem:v14 completionHandler:v16];
    _Block_release(v16);
  }
}

void specialized presentViewController #1 (_:error:) in static UIDocumentBrowserAction.showManageShare(for:actionContext:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  v40 = a3;
  v41 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v40 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v14 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v40 - v17;
  outlined init with copy of DOCGridLayout.Spec?(a1, v9, &_s10Foundation3URLVSgMd);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of CharacterSet?(v9, &_s10Foundation3URLVSgMd);
    if (one-time initialization token for Application != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.Application);
    v20 = v40;
    v21 = v41;
    v22 = v41;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v43 = v26;
      *v25 = 136446466;
      v27 = [v20 description];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v43);

      *(v25 + 4) = v31;
      *(v25 + 12) = 2080;
      v42 = v21;
      v32 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
      v33 = String.init<A>(describing:)();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v43);

      *(v25 + 14) = v35;
      _os_log_impl(&dword_2493AC000, v23, v24, "Failed to fetch URL for: %{public}s error: %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v26, -1, -1);
      MEMORY[0x24C1FE850](v25, -1, -1);
    }
  }

  else
  {
    v36 = *(v11 + 32);
    v36(v18, v9, v10);
    (*(v11 + 16))(v14, v18, v10);
    v37 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v38 = swift_allocObject();
    v36((v38 + v37), v14, v10);
    *(v38 + ((v12 + v37 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
    v39 = a4;
    DOCRunInMainThread(_:)();

    (*(v11 + 8))(v18, v10);
  }
}

{
  v40 = a3;
  v41 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v40 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v14 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v40 - v17;
  outlined init with copy of DOCGridLayout.Spec?(a1, v9, &_s10Foundation3URLVSgMd);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of CharacterSet?(v9, &_s10Foundation3URLVSgMd);
    if (one-time initialization token for Application != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.Application);
    v20 = v40;
    swift_unknownObjectRetain();
    v21 = v41;
    v22 = v41;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v43 = v26;
      *v25 = 136446466;
      v27 = [v20 description];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v43);

      *(v25 + 4) = v31;
      *(v25 + 12) = 2080;
      v42 = v21;
      v32 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
      v33 = String.init<A>(describing:)();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v43);

      *(v25 + 14) = v35;
      _os_log_impl(&dword_2493AC000, v23, v24, "Failed to fetch URL for: %{public}s error: %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v26, -1, -1);
      MEMORY[0x24C1FE850](v25, -1, -1);
    }
  }

  else
  {
    v36 = *(v11 + 32);
    v36(v18, v9, v10);
    (*(v11 + 16))(v14, v18, v10);
    v37 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v38 = swift_allocObject();
    v36((v38 + v37), v14, v10);
    *(v38 + ((v12 + v37 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
    v39 = a4;
    DOCRunInMainThread(_:)();

    (*(v11 + 8))(v18, v10);
  }
}

id specialized static UIDocumentBrowserAction.multipleSelectionAction(resolvedHandler:)(uint64_t a1, uint64_t a2)
{
  result = _DocumentManagerBundle();
  if (result)
  {
    v5 = result;
    v17._object = 0x8000000249BDD390;
    v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v6.value._object = 0xEB00000000656C62;
    v7._countAndFlagsBits = 1852141647;
    v7._object = 0xE400000000000000;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    v17._countAndFlagsBits = 0xD00000000000004FLL;
    v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v6, v5, v8, v17);

    v10 = *MEMORY[0x277D05FF0];
    v11 = objc_allocWithZone(MEMORY[0x277D05F28]);
    v12 = v10;
    v13 = MEMORY[0x24C1FAD20](v9._countAndFlagsBits, v9._object);

    aBlock[4] = a1;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [DOCItemBookmark], @in_guaranteed Any?) -> ();
    aBlock[3] = &block_descriptor_477;
    v14 = _Block_copy(aBlock);

    v15 = [v11 initWithIdentifier:v12 localizedTitle:v13 resolvedHandler:v14];

    _Block_release(v14);

    [v15 setSupportsMultipleItems_];
    [v15 setNavigationSide_];
    [v15 setAvailability_];
    [v15 setStyle_];
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id specialized static UIDocumentBrowserAction.moveAction(numberOfItems:)(uint64_t a1)
{
  result = _DocumentManagerBundle();
  v3 = result;
  if (a1 < 2)
  {
    if (result)
    {
      v49._object = 0x8000000249BDD210;
      v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v20.value._object = 0xEB00000000656C62;
      v21._object = 0x8000000249BDD1F0;
      v49._countAndFlagsBits = 0xD00000000000005BLL;
      v21._countAndFlagsBits = 0xD000000000000013;
      v22._countAndFlagsBits = 1702260557;
      v22._object = 0xE400000000000000;
      v23 = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v20, v3, v22, v49);
      countAndFlagsBits = v23._countAndFlagsBits;
      object = v23._object;

      v18 = 0;
      v19 = 0;
LABEL_7:
      v24 = *MEMORY[0x277D05FE0];
      v25 = objc_allocWithZone(MEMORY[0x277D05F28]);
      v26 = v24;
      v27 = MEMORY[0x24C1FAD20](countAndFlagsBits, object);

      v45 = closure #1 in static UIDocumentBrowserAction.moveAction(numberOfItems:);
      v46 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v42 = 1107296256;
      v43 = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
      v44 = &block_descriptor_462;
      v28 = _Block_copy(&aBlock);
      v29 = [v25 initWithIdentifier:v26 localizedTitle:v27 unresolvedHandler:v28];

      _Block_release(v28);

      if (v19)
      {
        v30 = MEMORY[0x24C1FAD20](v18, v19);
      }

      else
      {
        v30 = 0;
      }

      [v29 setLocalizedCompactTitle_];

      v31 = MEMORY[0x24C1FAD20](0x7265646C6F66, 0xE600000000000000);
      v32 = objc_opt_self();
      v33 = [v32 systemImageNamed_];

      [v29 setImage_];
      v34 = MEMORY[0x24C1FAD20](0x662E7265646C6F66, 0xEB000000006C6C69);
      v35 = [v32 systemImageNamed_];

      [v29 setImageOnlyForContextMenu_];
      [v29 setMenuSortOrder_];
      v36 = *MEMORY[0x277D05F48];
      v37 = *MEMORY[0x277D05F50];
      if (*MEMORY[0x277D05F48] >= 2uLL)
      {
        v38 = v36 | 1;
        if ((v37 & ~(v36 | 1)) == 0)
        {
LABEL_15:
          [v29 setAvailability_];
          v45 = specialized closure #1 in static NSPredicate.validateAction(_:);
          v46 = 0;
          aBlock = MEMORY[0x277D85DD0];
          v42 = 1107296256;
          v43 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [String : Any]?) -> (@unowned Bool);
          v44 = &block_descriptor_465;
          v39 = _Block_copy(&aBlock);
          v40 = [objc_opt_self() predicateWithBlock_];
          _Block_release(v39);

          [v29 setFilteringPredicate_];

          return v29;
        }
      }

      else
      {
        v38 = 1;
        if (v37 < 2)
        {
          goto LABEL_15;
        }
      }

      v38 |= v37;
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  if (!result)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v47._object = 0x8000000249BDD2A0;
  v4._countAndFlagsBits = 0xD000000000000023;
  v4._object = 0x8000000249BDD270;
  v47._countAndFlagsBits = 0xD00000000000005ELL;
  v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v5.value._object = 0xEB00000000656C62;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v47);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D83B88];
  *(v7 + 16) = xmmword_249B9A480;
  v9 = MEMORY[0x277D83C10];
  *(v7 + 56) = v8;
  *(v7 + 64) = v9;
  *(v7 + 32) = a1;
  countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();
  object = v11;

  result = _DocumentManagerBundle();
  if (result)
  {
    v13 = result;
    v48._object = 0x8000000249BDD210;
    v14._object = 0x8000000249BDD1F0;
    v48._countAndFlagsBits = 0xD00000000000005BLL;
    v14._countAndFlagsBits = 0xD000000000000013;
    v15.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v15.value._object = 0xEB00000000656C62;
    v16._countAndFlagsBits = 1702260557;
    v16._object = 0xE400000000000000;
    v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v48);
    v18 = v17._countAndFlagsBits;
    v19 = v17._object;

    goto LABEL_7;
  }

LABEL_18:
  __break(1u);
  return result;
}

void specialized static UIDocumentBrowserAction.mixedDeleteAction()()
{
  v0 = *MEMORY[0x277D05FD8];
  v1 = _DocumentManagerBundle();
  if (v1)
  {
    v2 = v1;
    v21._object = 0x8000000249BC9970;
    v3._countAndFlagsBits = 0x6574656C6544;
    v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v4.value._object = 0xEB00000000656C62;
    v3._object = 0xE600000000000000;
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    v21._countAndFlagsBits = 0xD00000000000001BLL;
    v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v21);

    v7 = objc_allocWithZone(MEMORY[0x277D05F28]);
    v8 = MEMORY[0x24C1FAD20](v6._countAndFlagsBits, v6._object);

    v19 = closure #1 in static UIDocumentBrowserAction.mixedDeleteAction();
    v20 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
    v18 = &block_descriptor_303;
    v9 = _Block_copy(&aBlock);
    v10 = [v7 initWithIdentifier:v0 localizedTitle:v8 unresolvedHandler:v9];

    _Block_release(v9);

    v11 = MEMORY[0x24C1FAD20](0x6873617274, 0xE500000000000000);
    v12 = [objc_opt_self() systemImageNamed_];

    [v10 setImage_];
    [v10 setAvailability_];
    [v10 setSupportsMultipleItems_];
    [v10 setActionStyle_];
    [v10 setRequiresFullyFormedItems_];
    v19 = specialized closure #1 in static NSPredicate.validateAction(_:);
    v20 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [String : Any]?) -> (@unowned Bool);
    v18 = &block_descriptor_306_0;
    v13 = _Block_copy(&aBlock);
    v14 = [objc_opt_self() predicateWithBlock_];
    _Block_release(v13);

    [v10 setFilteringPredicate_];
  }

  else
  {

    __break(1u);
  }
}

void *specialized static UIDocumentBrowserAction._fetchParent(items:completion:)(unint64_t a1, id a2, unint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
LABEL_30:
    swift_beginAccess();
    *(a3 + 16) = 0;
    v28 = a2;
    swift_retain_n();
    v29 = v28;
    swift_unknownObjectRelease();
    OS_dispatch_semaphore.signal()();
  }

  do
  {
    v36 = a1 & 0xC000000000000001;
    v33 = v6;
    v34 = a3;
    v32 = a2;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v30 = a2;
      swift_retain_n();
      v31 = v30;
      v10 = MEMORY[0x24C1FC540](0, a1);
      v35 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v35 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_34:
        v21 = MEMORY[0x24C1FC540](0, a1);
        goto LABEL_24;
      }

      v6 = *(a1 + 32);
      v8 = a2;
      swift_retain_n();
      v9 = v8;
      v10 = v6;
    }

    a2 = [v10 effectiveParentItemIdentifier];

    a3 = 0;
    while (1)
    {
      if (v36)
      {
        v11 = MEMORY[0x24C1FC540](a3, a1);
      }

      else
      {
        if (a3 >= *(v35 + 16))
        {
          goto LABEL_26;
        }

        v11 = *(a1 + 8 * a3 + 32);
      }

      v12 = v11;
      v6 = (a3 + 1);
      if (__OFADD__(a3, 1))
      {
        break;
      }

      v13 = [v11 effectiveParentItemIdentifier];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
      if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
      {
      }

      else
      {
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v19 & 1) == 0)
        {
          swift_beginAccess();
          *(v34 + 16) = 0;
          swift_unknownObjectRelease();
          OS_dispatch_semaphore.signal()();
        }
      }

      ++a3;
      if (v6 == v7)
      {

        v6 = v33;
        a2 = v32;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    if (__CocoaSet.count.getter() <= 0)
    {
      goto LABEL_30;
    }

    v7 = __CocoaSet.count.getter();
  }

  while (v7);
  v36 = a1 & 0xC000000000000001;
  v26 = a2;
  swift_retain_n();
  v27 = v26;
LABEL_21:
  result = [objc_opt_self() defaultManager];
  v7 = result;
  if (v36)
  {
    goto LABEL_34;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(a1 + 32);
LABEL_24:
    v22 = v21;
    v23 = [v21 itemID];

    v24 = swift_allocObject();
    *(v24 + 16) = partial apply for closure #1 in static UIDocumentBrowserAction.fetchParent(nodes:);
    *(v24 + 24) = v6;
    aBlock[4] = closure #2 in static UIDocumentBrowserAction._fetchParent(items:completion:)partial apply;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [FPItem]?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_319;
    v25 = _Block_copy(aBlock);

    [v7 fetchParentsForItemID:v23 recursively:0 completionHandler:v25];

    _Block_release(v25);
  }

  __break(1u);
  return result;
}

void *specialized static UIDocumentBrowserAction._fetchParent(items:completion:)(unint64_t a1, unint64_t a2, id a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = closure #1 in static UIDocumentBrowserAction.fetchParent(nodes:)partial apply;
  v9[4] = v8;
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
LABEL_30:
    swift_beginAccess();
    a4[2] = 0;
    v34 = a3;
    swift_retain_n();
    v35 = v34;
    v36 = a2;

    swift_unknownObjectRelease();
    OS_dispatch_semaphore.signal()();

LABEL_31:
  }

  do
  {
    v45 = a1 & 0xC000000000000001;
    v42 = a4;
    v43 = a3;
    v41 = v9;
    v40 = a2;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v37 = a3;
      swift_retain_n();
      v38 = v37;
      v39 = a2;

      v15 = MEMORY[0x24C1FC540](0, a1);
      v44 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v44 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_34:
        v26 = MEMORY[0x24C1FC540](0, a1);
        goto LABEL_24;
      }

      v11 = *(a1 + 32);
      v12 = a3;
      swift_retain_n();
      v13 = v12;
      v14 = a2;

      v15 = v11;
    }

    v9 = [v15 effectiveParentItemIdentifier];

    a2 = 0;
    while (1)
    {
      if (v45)
      {
        v16 = MEMORY[0x24C1FC540](a2, a1);
      }

      else
      {
        if (a2 >= *(v44 + 16))
        {
          goto LABEL_26;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v17 = v16;
      a4 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a3 = [v16 effectiveParentItemIdentifier];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
      if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
      {
      }

      else
      {
        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v23 & 1) == 0)
        {
          swift_beginAccess();
          v42[2] = 0;
          a3 = v43;
          v24 = v43;

          swift_unknownObjectRelease();
          OS_dispatch_semaphore.signal()();

          goto LABEL_31;
        }
      }

      ++a2;
      if (a4 == v10)
      {

        a3 = v43;
        v9 = v41;
        a2 = v40;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    if (__CocoaSet.count.getter() <= 0)
    {
      goto LABEL_30;
    }

    v10 = __CocoaSet.count.getter();
  }

  while (v10);
  v45 = a1 & 0xC000000000000001;
  v31 = a3;
  swift_retain_n();
  v32 = v31;
  v33 = a2;

LABEL_21:
  result = [objc_opt_self() defaultManager];
  v10 = result;
  if (v45)
  {
    goto LABEL_34;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v26 = *(a1 + 32);
LABEL_24:
    v27 = v26;
    v28 = [v26 itemID];

    v29 = swift_allocObject();
    *(v29 + 16) = closure #5 in static UIDocumentBrowserAction.fetchParent(nodes:completion:)partial apply;
    *(v29 + 24) = v9;
    aBlock[4] = closure #2 in static UIDocumentBrowserAction._fetchParent(items:completion:)partial apply;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [FPItem]?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_334_0;
    v30 = _Block_copy(aBlock);

    [v10 fetchParentsForItemID:v28 recursively:0 completionHandler:v30];

    _Block_release(v30);

    goto LABEL_31;
  }

  __break(1u);
  return result;
}

void specialized static UIDocumentBrowserAction.fetchParent(nodes:completion:)(unint64_t a1, int64_t a2, int64_t a3)
{
  v7 = a1;
  v8 = (a1 >> 62);
  if (a1 >> 62)
  {
LABEL_89:
    if (__CocoaSet.count.getter() >= 1)
    {
      goto LABEL_3;
    }

LABEL_90:
    swift_beginAccess();
    *(a3 + 16) = 0;
    v42 = a2;
    swift_retain_n();
    v43 = v42;
    swift_unknownObjectRelease();
    OS_dispatch_semaphore.signal()();

LABEL_103:

    return;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_90;
  }

LABEL_3:
  v9 = a2;
  swift_retain_n();
  v46 = v9;

  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (v8 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
  }

  v47 = a2;
  v11 = (v7 & 0xFFFFFFFFFFFFFF8);
  v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v13 = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
  v14 = 0;
  if (v12)
  {
LABEL_7:
    v4 = (v13 + 8 * v14);
    while (1)
    {
      v15 = *v4;
      swift_getObjectType();
      v8 = v15;
      if (DOCNode.isFINode.getter())
      {
        break;
      }

      ++v14;
      ++v4;
      if (v14 >= v12)
      {
        goto LABEL_15;
      }
    }

    v3 = v13 + 8 * v12;
    while (v14 < --v12)
    {
      v16 = *(v3 - 8);
      v3 -= 8;
      v8 = v16;
      swift_getObjectType();
      if (!DOCNode.isFINode.getter())
      {
        *v4 = *v3;
        *v3 = v15;
        if (++v14 < v12)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

LABEL_15:
  v52 = v7 >> 62;
  if (!(v7 >> 62))
  {
    a2 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a2 >= v14)
    {
      goto LABEL_17;
    }

    goto LABEL_95;
  }

LABEL_92:
  v44 = __CocoaSet.count.getter();
  if (v44 >= v14)
  {
    a2 = v44;
    if (__CocoaSet.count.getter() >= v14)
    {
LABEL_17:
      if ((v14 & 0x8000000000000000) == 0)
      {
        if (v52)
        {
          v17 = __CocoaSet.count.getter();
        }

        else
        {
          v17 = v11[2];
        }

        if (v17 >= a2)
        {
          if ((a2 & 0x8000000000000000) == 0)
          {
            v48 = v7 & 0xC000000000000001;
            if ((v7 & 0xC000000000000001) == 0 || v14 == a2)
            {
            }

            else
            {
              if (v14 >= a2)
              {
                goto LABEL_106;
              }

              v18 = v14;
              v8 = &_sSo7DOCNode_pMR;
              do
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
                _ArrayBuffer._typeCheckSlowPath(_:)(v18++);
              }

              while (a2 != v18);
            }

            v50 = a3;
            v51 = v7;
            v49 = v11;
            if (v52)
            {

              _CocoaArrayWrapper.subscript.getter();
              v19 = v20;
              v3 = v21;
              a2 = v22 >> 1;
            }

            else
            {
              v19 = v13;
              v3 = v14;
            }

            v23 = MEMORY[0x277D84F90];
            v54[0] = MEMORY[0x277D84F90];
            swift_unknownObjectRetain();
            v4 = 0x277D04000;
            v7 = v3;
            v53 = v23;
            a3 = v3;
            while (a2 != a3)
            {
              if (v7 < v3 || a3 >= a2)
              {
                __break(1u);
LABEL_87:
                __break(1u);
LABEL_88:
                __break(1u);
                goto LABEL_89;
              }

              v8 = *(v19 + 8 * a3++);
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                v24 = swift_unknownObjectRetain();
                MEMORY[0x24C1FB090](v24);
                if (*((v54[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                v8 = v54;
                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v53 = v54[0];
                v7 = a3;
              }
            }

            swift_unknownObjectRelease_n();
            if (v52)
            {
              v4 = v51;
              v11 = v49;
              a3 = v50;
              if (__CocoaSet.count.getter() < 0)
              {
                goto LABEL_107;
              }

              v25 = __CocoaSet.count.getter();
            }

            else
            {
              v11 = v49;
              a3 = v50;
              v25 = v49[2];
              v4 = v51;
            }

            if (v25 >= v14)
            {
              if (v48)
              {

                if (v14)
                {
                  v26 = 0;
                  v8 = &_sSo7DOCNode_pMR;
                  do
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
                    _ArrayBuffer._typeCheckSlowPath(_:)(v26++);
                  }

                  while (v14 != v26);
                }

                if (!v52)
                {
                  goto LABEL_51;
                }
              }

              else
              {

                if (!v52)
                {
LABEL_51:
                  a2 = 0;
LABEL_54:
                  v3 = MEMORY[0x277D84F90];
                  v54[0] = MEMORY[0x277D84F90];
                  swift_unknownObjectRetain();
                  v4 = 0x277CC6000;
                  v30 = a2;
                  v7 = a2;
                  while (v14 != v7)
                  {
                    if (v30 < a2 || v7 >= v14)
                    {
                      goto LABEL_87;
                    }

                    v8 = *(v13 + 8 * v7++);
                    objc_opt_self();
                    if (swift_dynamicCastObjCClass())
                    {
                      v31 = swift_unknownObjectRetain();
                      MEMORY[0x24C1FB090](v31);
                      if (*((v54[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                      {
                        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                      }

                      v8 = v54;
                      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                      v3 = v54[0];
                      v30 = v7;
                    }
                  }

                  swift_unknownObjectRelease_n();
                  v13 = v53;
                  if (!(v53 >> 62))
                  {
                    a2 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    if (!a2)
                    {
                      goto LABEL_101;
                    }

LABEL_64:
                    v7 = v13 & 0xC000000000000001;
                    if ((v13 & 0xC000000000000001) != 0)
                    {
                      v32 = MEMORY[0x24C1FC540](0, v13);
                      goto LABEL_67;
                    }

                    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      v32 = *(v13 + 32);
LABEL_67:
                      v33 = v32;
                      a3 = &selRef_initWithFrame_;
                      v4 = [v32 parent];

                      if (v4)
                      {
                        v34 = 0;
                        v52 = v13 & 0xFFFFFFFFFFFFFF8;
                        while (a2 != v34)
                        {
                          if (v7)
                          {
                            v35 = MEMORY[0x24C1FC540](v34, v13);
                          }

                          else
                          {
                            if (v34 >= *(v52 + 16))
                            {
                              __break(1u);
                              goto LABEL_92;
                            }

                            v35 = *(v13 + 8 * v34 + 32);
                          }

                          v11 = v35;
                          if (__OFADD__(v34, 1))
                          {
                            goto LABEL_88;
                          }

                          v36 = [v35 &selRef_separatorColor];
                          if (!v36)
                          {

                            goto LABEL_84;
                          }

                          v14 = v36;
                          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
                          v37 = v4;
                          v8 = static NSObject.== infix(_:_:)();

                          v13 = v53;
                          ++v34;
                          if ((v8 & 1) == 0)
                          {

LABEL_84:
                            swift_beginAccess();
                            v50[2] = 0;
                            swift_unknownObjectRelease();
                            OS_dispatch_semaphore.signal()();

                            goto LABEL_102;
                          }
                        }

                        if (v3 >> 62)
                        {
                          goto LABEL_108;
                        }

                        v38 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_81:
                        a2 = v47;
                        if (v38)
                        {
                          v39 = v46;

                          v40 = v4;
                          specialized static UIDocumentBrowserAction._fetchParent(items:completion:)(v3, v40, v39, v50);
                        }

                        else
                        {

                          swift_beginAccess();
                          v50[2] = v4;
                          v41 = v4;
                          swift_unknownObjectRetain();
                          swift_unknownObjectRelease();
                          OS_dispatch_semaphore.signal()();
                        }

                        goto LABEL_103;
                      }

                      swift_beginAccess();
                      v50[2] = 0;
                      swift_unknownObjectRelease();
                      OS_dispatch_semaphore.signal()();

                      goto LABEL_102;
                    }

                    __break(1u);
LABEL_106:
                    __break(1u);
LABEL_107:
                    __break(1u);
LABEL_108:
                    v38 = __CocoaSet.count.getter();
                    goto LABEL_81;
                  }

LABEL_100:
                  a2 = __CocoaSet.count.getter();
                  if (!a2)
                  {
LABEL_101:

                    v45 = v46;

                    specialized static UIDocumentBrowserAction._fetchParent(items:completion:)(v3, v45, a3);

LABEL_102:
                    a2 = v47;
                    goto LABEL_103;
                  }

                  goto LABEL_64;
                }
              }

              v11 = _CocoaArrayWrapper.subscript.getter();
              v13 = v27;
              a2 = v28;
              v14 = v29 >> 1;
              goto LABEL_54;
            }

LABEL_99:
            __break(1u);
            goto LABEL_100;
          }

LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  __break(1u);
}

uint64_t specialized static UIDocumentBrowserAction.fetchParent(nodes:)(unint64_t a1)
{
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for DispatchTimeInterval();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = (&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 >> 62)
  {
    if (__CocoaSet.count.getter() >= 1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    return 0;
  }

LABEL_3:
  v16 = dispatch_semaphore_create(0);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = (v17 + 16);
  v23 = v17;
  specialized static UIDocumentBrowserAction.fetchParent(nodes:completion:)(a1, v16, v17);
  *v15 = 2;
  (*(v12 + 104))(v15, *MEMORY[0x277D85188], v11);
  static DispatchTime.now()();
  MEMORY[0x24C1FAA90](v6, v15);
  v19 = *(v3 + 8);
  v19(v6, v2);
  MEMORY[0x24C1FBB60](v10);
  v19(v10, v2);
  v20 = static DispatchTimeoutResult.== infix(_:_:)();

  (*(v12 + 8))(v15, v11);
  v21 = 0;
  if ((v20 & 1) == 0)
  {
    swift_beginAccess();
    v21 = *v18;
    swift_unknownObjectRetain();
  }

  return v21;
}

void specialized static UIDocumentBrowserAction.duplicateAction(targetNode:)(uint64_t a1)
{
  v2 = *MEMORY[0x277D05FA0];
  v3 = _DocumentManagerBundle();
  if (v3)
  {
    v4 = v3;
    v24._object = 0x8000000249BDD030;
    v5._countAndFlagsBits = 0x746163696C707544;
    v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v6.value._object = 0xEB00000000656C62;
    v24._countAndFlagsBits = 0xD000000000000028;
    v5._object = 0xE900000000000065;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v24);

    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    v10 = objc_allocWithZone(MEMORY[0x277D05F28]);
    swift_unknownObjectRetain();
    v11 = MEMORY[0x24C1FAD20](v8._countAndFlagsBits, v8._object);

    v22 = partial apply for closure #1 in static UIDocumentBrowserAction.duplicateAction(targetNode:);
    v23 = v9;
    aBlock = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v20 = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
    v21 = &block_descriptor_358;
    v12 = _Block_copy(&aBlock);
    v13 = [v10 initWithIdentifier:v2 localizedTitle:v11 unresolvedHandler:v12];

    _Block_release(v12);

    v14 = MEMORY[0x24C1FAD20](0xD000000000000015, 0x8000000249BDD060);
    v15 = [objc_opt_self() systemImageNamed_];

    [v13 setImage_];
    [v13 setAvailability_];
    [v13 setSupportsMultipleItems_];
    [v13 setMenuSortOrder_];
    v22 = specialized closure #1 in static NSPredicate.validateAction(_:);
    v23 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v20 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [String : Any]?) -> (@unowned Bool);
    v21 = &block_descriptor_361;
    v16 = _Block_copy(&aBlock);
    v17 = [objc_opt_self() predicateWithBlock_];
    _Block_release(v16);

    [v13 setFilteringPredicate_];
  }

  else
  {

    __break(1u);
  }
}

id specialized static UIDocumentBrowserAction.tagsAction()()
{
  result = _DocumentManagerBundle();
  if (result)
  {
    v1 = result;
    v22._object = 0x8000000249BDCFB0;
    v2._countAndFlagsBits = 0x75625B2073676154;
    v2._object = 0xED00005D6E6F7474;
    v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v3.value._object = 0xEB00000000656C62;
    v4._countAndFlagsBits = 0xA680E273676154;
    v4._object = 0xA700000000000000;
    v22._countAndFlagsBits = 0xD00000000000004FLL;
    v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v22);

    v6 = *MEMORY[0x277D06058];
    v7 = objc_allocWithZone(MEMORY[0x277D05F28]);
    v8 = v6;
    v9 = MEMORY[0x24C1FAD20](v5._countAndFlagsBits, v5._object);

    v20 = closure #1 in static UIDocumentBrowserAction.tagsAction();
    v21 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
    v19 = &block_descriptor_246;
    v10 = _Block_copy(&aBlock);
    v11 = [v7 initWithIdentifier:v8 localizedTitle:v9 unresolvedHandler:v10];

    _Block_release(v10);

    v12 = MEMORY[0x24C1FAD20](6775156, 0xE300000000000000);
    v13 = [objc_opt_self() systemImageNamed_];

    [v11 setImage_];
    [v11 setSupportsMultipleItems_];
    [v11 setAvailability_];
    [v11 setMenuSortOrder_];
    v20 = specialized closure #1 in static NSPredicate.validateAction(_:);
    v21 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [String : Any]?) -> (@unowned Bool);
    v19 = &block_descriptor_249;
    v14 = _Block_copy(&aBlock);
    v15 = [objc_opt_self() predicateWithBlock_];
    _Block_release(v14);

    [v11 setFilteringPredicate_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id specialized static UIDocumentBrowserAction.folderCustomizationAction()()
{
  result = _DocumentManagerBundle();
  if (result)
  {
    v1 = result;
    v22._object = 0x8000000249BDCF50;
    v2.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v2.value._object = 0xEB00000000656C62;
    v3._object = 0x8000000249BDCF00;
    v4._object = 0x8000000249BDCF30;
    v22._countAndFlagsBits = 0xD000000000000059;
    v3._countAndFlagsBits = 0xD000000000000020;
    v4._countAndFlagsBits = 0x100000000000001ALL;
    v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v2, v1, v4, v22);

    v6 = *MEMORY[0x277D05FB8];
    v7 = objc_allocWithZone(MEMORY[0x277D05F28]);
    v8 = v6;
    v9 = MEMORY[0x24C1FAD20](v5._countAndFlagsBits, v5._object);

    v20 = closure #1 in static UIDocumentBrowserAction.folderCustomizationAction();
    v21 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
    v19 = &block_descriptor_240_0;
    v10 = _Block_copy(&aBlock);
    v11 = [v7 initWithIdentifier:v8 localizedTitle:v9 unresolvedHandler:v10];

    _Block_release(v10);

    v12 = MEMORY[0x24C1FAD20](6775156, 0xE300000000000000);
    v13 = [objc_opt_self() systemImageNamed_];

    [v11 setImage_];
    [v11 setSupportsMultipleItems_];
    [v11 setAvailability_];
    [v11 setMenuSortOrder_];
    v20 = specialized closure #1 in static NSPredicate.validateAction(_:);
    v21 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [String : Any]?) -> (@unowned Bool);
    v19 = &block_descriptor_243_1;
    v14 = _Block_copy(&aBlock);
    v15 = [objc_opt_self() predicateWithBlock_];
    _Block_release(v14);

    [v11 setFilteringPredicate_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id specialized static UIDocumentBrowserAction.infoAction()()
{
  result = _DocumentManagerBundle();
  if (result)
  {
    v1 = result;
    v16._object = 0x8000000249BD4180;
    v2.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v3._countAndFlagsBits = 0x6F666E4920746547;
    v4._object = 0x8000000249BDD000;
    v16._countAndFlagsBits = 0xD000000000000050;
    v4._countAndFlagsBits = 0xD000000000000027;
    v2.value._object = 0xEB00000000656C62;
    v3._object = 0xE800000000000000;
    v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v2, v1, v3, v16);

    v6 = *MEMORY[0x277D05FC0];
    v7 = objc_allocWithZone(MEMORY[0x277D05F28]);
    v8 = v6;
    v9 = MEMORY[0x24C1FAD20](v5._countAndFlagsBits, v5._object);

    aBlock[4] = closure #1 in static UIDocumentBrowserAction.infoAction();
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
    aBlock[3] = &block_descriptor_293_0;
    v10 = _Block_copy(aBlock);
    v11 = [v7 initWithIdentifier:v8 localizedTitle:v9 unresolvedHandler:v10];

    _Block_release(v10);

    v12 = MEMORY[0x24C1FAD20](0x7269632E6F666E69, 0xEB00000000656C63);
    v13 = [objc_opt_self() systemImageNamed_];

    [v11 setImage_];
    [v11 setSupportsMultipleItems_];
    [v11 setNavigationSide_];
    [v11 setAvailability_];
    [v11 setMenuSortOrder_];
    v14 = [objc_opt_self() predicateWithValue_];
    [v11 setFilteringPredicate_];

    [v11 setRequiresFullyFormedItems_];
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void specialized static UIDocumentBrowserAction.favoriteAction(useAlternateTitle:)(char a1)
{
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *MEMORY[0x277D05FB0];
  v8 = _DocumentManagerBundle();
  v9 = v8;
  if (a1)
  {
    if (v8)
    {
      v32 = 0x8000000249BDD120;
      v10 = 0x657469726F766146;
      v11 = 0x617A696C61636F4CLL;
      v12 = 0xEB00000000656C62;
      v13 = 0xD000000000000041;
      v14 = 0xE900000000000073;
      v15.super.isa = v9;
      v16 = 0;
      v17 = 0xE000000000000000;
LABEL_6:
      v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v10, *&v11, v15, *&v16, *&v13);

      v19 = objc_allocWithZone(MEMORY[0x277D05F28]);
      v20 = MEMORY[0x24C1FAD20](v18._countAndFlagsBits, v18._object);

      v37 = closure #1 in static UIDocumentBrowserAction.favoriteAction(useAlternateTitle:);
      v38 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v34 = 1107296256;
      v35 = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
      v36 = &block_descriptor_441;
      v21 = _Block_copy(&aBlock);
      v22 = [v19 initWithIdentifier:v7 localizedTitle:v20 unresolvedHandler:v21];

      _Block_release(v21);

      v23 = MEMORY[0x24C1FAD20](1918989427, 0xE400000000000000);
      v24 = [objc_opt_self() systemImageNamed_];

      [v22 setImage_];
      [v22 setSupportsMultipleItems_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_249B9A480;
      static UTType.folder.getter();
      v26 = UTType.identifier.getter();
      v28 = v27;
      (*(v3 + 8))(v6, v2);
      *(v25 + 32) = v26;
      *(v25 + 40) = v28;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v22 setSupportedContentTypes_];

      [v22 setMenuSortOrder_];
      v37 = specialized closure #1 in static NSPredicate.validateAction(_:);
      v38 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v34 = 1107296256;
      v35 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [String : Any]?) -> (@unowned Bool);
      v36 = &block_descriptor_444;
      v30 = _Block_copy(&aBlock);
      v31 = [objc_opt_self() predicateWithBlock_];
      _Block_release(v30);

      [v22 setFilteringPredicate_];

      return;
    }

    __break(1u);
  }

  else if (v8)
  {
    v32 = 0x8000000249BDD0F0;
    v10 = 0x657469726F766146;
    v11 = 0x617A696C61636F4CLL;
    v12 = 0xEB00000000656C62;
    v14 = 0xE800000000000000;
    v15.super.isa = v9;
    v16 = 0;
    v17 = 0xE000000000000000;
    v13 = 0xD000000000000029;
    goto LABEL_6;
  }

  __break(1u);
}

id specialized static UIDocumentBrowserAction.moveActionTo(parent:)(uint64_t a1)
{
  swift_getObjectType();
  v2 = DOCNode.displayName(withHiddenPathExtension:)(1);
  result = _DocumentManagerBundle();
  if (result)
  {
    v4 = result;
    v32._object = 0x8000000249BDD190;
    v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v5.value._object = 0xEB00000000656C62;
    v6._object = 0x8000000249BDD170;
    v6._countAndFlagsBits = 0x1000000000000010;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    v32._countAndFlagsBits = 0xD000000000000056;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v32);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_249B9A480;
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v8 + 32) = v2;
    v9 = static String.localizedStringWithFormat(_:_:)();
    v11 = v10;

    v12 = *MEMORY[0x277D05FE8];
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    v14 = objc_allocWithZone(MEMORY[0x277D05F28]);
    v15 = v12;
    swift_unknownObjectRetain();
    v16 = MEMORY[0x24C1FAD20](v9, v11);

    v30 = partial apply for closure #1 in static UIDocumentBrowserAction.moveActionTo(parent:);
    v31 = v13;
    aBlock = MEMORY[0x277D85DD0];
    v27 = 1107296256;
    v28 = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
    v29 = &block_descriptor_450;
    v17 = _Block_copy(&aBlock);
    v18 = [v14 initWithIdentifier:v15 localizedTitle:v16 unresolvedHandler:v17];

    _Block_release(v17);

    v19 = MEMORY[0x24C1FAD20](0x7265646C6F66, 0xE600000000000000);
    v20 = [objc_opt_self() systemImageNamed_];

    [v18 setImage_];
    [v18 setMenuSortOrder_];
    [v18 setAvailability_];
    v21 = swift_allocObject();
    *(v21 + 16) = a1;
    v22 = swift_allocObject();
    *(v22 + 16) = partial apply for closure #2 in static UIDocumentBrowserAction.moveActionTo(parent:);
    *(v22 + 24) = v21;
    v30 = partial apply for closure #1 in static NSPredicate.validateAction(_:);
    v31 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v27 = 1107296256;
    v28 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [String : Any]?) -> (@unowned Bool);
    v29 = &block_descriptor_459;
    v23 = _Block_copy(&aBlock);
    v24 = objc_opt_self();
    swift_unknownObjectRetain();
    v25 = [v24 predicateWithBlock_];
    _Block_release(v23);

    [v18 setFilteringPredicate_];

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id specialized static UIDocumentBrowserAction.shareAction(unresolvedHandler:)(uint64_t (*a1)(uint64_t a1, uint64_t a2), uint64_t a2)
{
  result = _DocumentManagerBundle();
  if (result)
  {
    v5 = result;
    v29._object = 0x8000000249BDCBD0;
    v6._countAndFlagsBits = 0x6572616853;
    v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v7.value._object = 0xEB00000000656C62;
    v29._countAndFlagsBits = 0xD00000000000001BLL;
    v6._object = 0xE500000000000000;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v7, v5, v8, v29);

    v10 = *MEMORY[0x277D06048];
    v11 = objc_allocWithZone(MEMORY[0x277D05F28]);
    v12 = v10;
    v13 = MEMORY[0x24C1FAD20](v9._countAndFlagsBits, v9._object);

    v27 = a1;
    v28 = a2;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
    v26 = &block_descriptor_202_0;
    v14 = _Block_copy(&aBlock);

    v15 = [v11 initWithIdentifier:v12 localizedTitle:v13 unresolvedHandler:v14];

    _Block_release(v14);

    v16 = MEMORY[0x24C1FAD20](0xD000000000000013, 0x8000000249BDCBF0);
    v17 = objc_opt_self();
    v18 = [v17 systemImageNamed_];

    [v15 setImage_];
    v19 = MEMORY[0x24C1FAD20](0xD000000000000018, 0x8000000249BDCC10);
    v20 = [v17 systemImageNamed_];

    [v15 setImageOnlyForContextMenu_];
    [v15 setPerformActionExitsEditMode_];
    [v15 setSupportsMultipleItems_];
    [v15 setNavigationSide_];
    [v15 setAvailability_];
    [v15 setMenuSortOrder_];
    v27 = specialized closure #1 in static NSPredicate.validateAction(_:);
    v28 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [String : Any]?) -> (@unowned Bool);
    v26 = &block_descriptor_205;
    v21 = _Block_copy(&aBlock);
    v22 = [objc_opt_self() predicateWithBlock_];
    _Block_release(v21);

    [v15 setFilteringPredicate_];

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void specialized static UIDocumentBrowserAction.deleteAllAction()()
{
  v0 = *MEMORY[0x277D05F90];
  v1 = _DocumentManagerBundle();
  if (v1)
  {
    v2 = v1;
    v14._object = 0x8000000249BD4280;
    v3._countAndFlagsBits = 0x41206574656C6544;
    v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v4.value._object = 0xEB00000000656C62;
    v3._object = 0xEA00000000006C6CLL;
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    v14._countAndFlagsBits = 0xD00000000000002FLL;
    v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v14);

    v7 = objc_allocWithZone(MEMORY[0x277D05F28]);
    v8 = MEMORY[0x24C1FAD20](v6._countAndFlagsBits, v6._object);

    aBlock[4] = closure #1 in static UIDocumentBrowserAction.deleteAllAction();
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
    aBlock[3] = &block_descriptor_498;
    v9 = _Block_copy(aBlock);
    v10 = [v7 initWithIdentifier:v0 localizedTitle:v8 unresolvedHandler:v9];

    _Block_release(v9);

    v11 = MEMORY[0x24C1FAD20](0x6873617274, 0xE500000000000000);
    v12 = [objc_opt_self() systemImageNamed_];

    [v10 setImage_];
    [v10 setAvailability_];
    [v10 setNavigationSide_];
    [v10 setMenuSortOrder_];
    [v10 setActionStyle_];
    [v10 setRequiresFullyFormedItems_];
  }

  else
  {

    __break(1u);
  }
}

void specialized static UIDocumentBrowserAction.renameAction()()
{
  v0 = *MEMORY[0x277D06028];
  v1 = _DocumentManagerBundle();
  if (v1)
  {
    v2 = v1;
    v24._object = 0x8000000249BDD3E0;
    v3._countAndFlagsBits = 0x656D616E6552;
    v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v4.value._object = 0xEB00000000656C62;
    v3._object = 0xE600000000000000;
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    v24._countAndFlagsBits = 0xD000000000000044;
    v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v24);

    v7 = objc_allocWithZone(MEMORY[0x277D05F28]);
    v8 = MEMORY[0x24C1FAD20](v6._countAndFlagsBits, v6._object);

    v22 = closure #1 in static UIDocumentBrowserAction.renameAction();
    v23 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v20 = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
    v21 = &block_descriptor_480;
    v9 = _Block_copy(&aBlock);
    v10 = [v7 initWithIdentifier:v0 localizedTitle:v8 unresolvedHandler:v9];

    _Block_release(v9);

    v11 = MEMORY[0x24C1FAD20](0x6C69636E6570, 0xE600000000000000);
    v12 = [objc_opt_self() systemImageNamed_];

    [v10 setImage_];
    [v10 setMenuSortOrder_];
    [v10 setSupportsMultipleItems_];
    v13 = *MEMORY[0x277D05F48];
    v14 = *MEMORY[0x277D05F50];
    if (*MEMORY[0x277D05F48] >= 2uLL)
    {
      v15 = v13 | 1;
      if ((v14 & ~(v13 | 1)) == 0)
      {
LABEL_7:
        [v10 setAvailability_];
        v22 = specialized closure #1 in static NSPredicate.validateAction(_:);
        v23 = 0;
        aBlock = MEMORY[0x277D85DD0];
        v19 = 1107296256;
        v20 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [String : Any]?) -> (@unowned Bool);
        v21 = &block_descriptor_483_0;
        v16 = _Block_copy(&aBlock);
        v17 = [objc_opt_self() predicateWithBlock_];
        _Block_release(v16);

        [v10 setFilteringPredicate_];

        return;
      }
    }

    else
    {
      v15 = 1;
      if (v14 < 2)
      {
        goto LABEL_7;
      }
    }

    v15 |= v14;
    goto LABEL_7;
  }

  __break(1u);
}

void specialized static DOCPresentationLog.faultLog(_:)(uint64_t a1, unint64_t a2)
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.UI);

  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v9);
    _os_log_impl(&dword_2493AC000, oslog, v5, "[Presentation Error] %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C1FE850](v7, -1, -1);
    MEMORY[0x24C1FE850](v6, -1, -1);
  }
}

void specialized static UIDocumentBrowserAction.trashAction()()
{
  v0 = *MEMORY[0x277D06060];
  v1 = _DocumentManagerBundle();
  if (v1)
  {
    v2 = v1;
    v17._object = 0x8000000249BC9970;
    v3._countAndFlagsBits = 0x6574656C6544;
    v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v4.value._object = 0xEB00000000656C62;
    v3._object = 0xE600000000000000;
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    v17._countAndFlagsBits = 0xD00000000000001BLL;
    v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v17);

    v7 = objc_allocWithZone(MEMORY[0x277D05F28]);
    v8 = MEMORY[0x24C1FAD20](v6._countAndFlagsBits, v6._object);

    aBlock[4] = closure #1 in static UIDocumentBrowserAction.trashAction();
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
    aBlock[3] = &block_descriptor_474;
    v9 = _Block_copy(aBlock);
    v10 = [v7 initWithIdentifier:v0 localizedTitle:v8 unresolvedHandler:v9];

    _Block_release(v9);

    v11 = MEMORY[0x24C1FAD20](0x6873617274, 0xE500000000000000);
    v12 = [objc_opt_self() systemImageNamed_];

    [v10 setImage_];
    [v10 setMenuSortOrder_];
    v13 = *MEMORY[0x277D05F48];
    v14 = *MEMORY[0x277D05F50];
    if (*MEMORY[0x277D05F48] >= 2uLL)
    {
      v15 = v13 | 1;
      if ((v14 & ~(v13 | 1)) == 0)
      {
LABEL_7:
        [v10 setAvailability_];
        [v10 setActionStyle_];
        [v10 setRequiresFullyFormedItems_];
        return;
      }
    }

    else
    {
      v15 = 1;
      if (v14 < 2)
      {
        goto LABEL_7;
      }
    }

    v15 |= v14;
    goto LABEL_7;
  }

  __break(1u);
}

void specialized static UIDocumentBrowserAction.untrashAction()()
{
  v0 = *MEMORY[0x277D06088];
  v1 = _DocumentManagerBundle();
  if (v1)
  {
    v2 = v1;
    v14._object = 0x8000000249BDD340;
    v3._countAndFlagsBits = 0x7265766F636552;
    v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v4.value._object = 0xEB00000000656C62;
    v3._object = 0xE700000000000000;
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    v14._countAndFlagsBits = 0xD000000000000048;
    v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v14);

    v7 = objc_allocWithZone(MEMORY[0x277D05F28]);
    v8 = MEMORY[0x24C1FAD20](v6._countAndFlagsBits, v6._object);

    aBlock[4] = closure #1 in static UIDocumentBrowserAction.untrashAction();
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
    aBlock[3] = &block_descriptor_471;
    v9 = _Block_copy(aBlock);
    v10 = [v7 initWithIdentifier:v0 localizedTitle:v8 unresolvedHandler:v9];

    _Block_release(v9);

    v11 = MEMORY[0x24C1FAD20](0x6C732E6873617274, 0xEB00000000687361);
    v12 = [objc_opt_self() systemImageNamed_];

    [v10 setImage_];
    [v10 setMenuSortOrder_];
    [v10 setRequiresFullyFormedItems_];
  }

  else
  {

    __break(1u);
  }
}

void specialized static UIDocumentBrowserAction.untrashAllAction()()
{
  v0 = *MEMORY[0x277D06088];
  v1 = _DocumentManagerBundle();
  if (v1)
  {
    v2 = v1;
    v12._object = 0x8000000249BDD300;
    v3._countAndFlagsBits = 0x207265766F636552;
    v3._object = 0xEB000000006C6C41;
    v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v4.value._object = 0xEB00000000656C62;
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    v12._countAndFlagsBits = 0xD000000000000030;
    v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v12);

    v7 = objc_allocWithZone(MEMORY[0x277D05F28]);
    v8 = MEMORY[0x24C1FAD20](v6._countAndFlagsBits, v6._object);

    aBlock[4] = closure #1 in static UIDocumentBrowserAction.untrashAllAction();
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
    aBlock[3] = &block_descriptor_468;
    v9 = _Block_copy(aBlock);
    v10 = [v7 initWithIdentifier:v0 localizedTitle:v8 unresolvedHandler:v9];

    _Block_release(v9);

    [v10 setMenuSortOrder_];
  }

  else
  {

    __break(1u);
  }
}

void specialized static UIDocumentBrowserAction.unfavoriteAction()()
{
  v0 = type metadata accessor for UTType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277D06078];
  v6 = _DocumentManagerBundle();
  if (v6)
  {
    v7 = v6;
    v31._object = 0x8000000249BDD0C0;
    v8._countAndFlagsBits = 0x69726F7661666E55;
    v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v9.value._object = 0xEB00000000656C62;
    v8._object = 0xEA00000000006574;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    v31._countAndFlagsBits = 0xD00000000000002BLL;
    v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v31);

    v12 = objc_allocWithZone(MEMORY[0x277D05F28]);
    v13 = MEMORY[0x24C1FAD20](v11._countAndFlagsBits, v11._object);

    v29 = closure #1 in static UIDocumentBrowserAction.unfavoriteAction();
    v30 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
    v28 = &block_descriptor_435;
    v14 = _Block_copy(&aBlock);
    v15 = [v12 initWithIdentifier:v5 localizedTitle:v13 unresolvedHandler:v14];

    _Block_release(v14);

    v16 = MEMORY[0x24C1FAD20](0x616C732E72617473, 0xEA00000000006873);
    v17 = [objc_opt_self() systemImageNamed_];

    [v15 setImage_];
    [v15 setSupportsMultipleItems_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_249B9A480;
    static UTType.folder.getter();
    v19 = UTType.identifier.getter();
    v21 = v20;
    (*(v1 + 8))(v4, v0);
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v15 setSupportedContentTypes_];

    [v15 setMenuSortOrder_];
    v29 = specialized closure #1 in static NSPredicate.validateAction(_:);
    v30 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [String : Any]?) -> (@unowned Bool);
    v28 = &block_descriptor_438;
    v23 = _Block_copy(&aBlock);
    v24 = [objc_opt_self() predicateWithBlock_];
    _Block_release(v23);

    [v15 setFilteringPredicate_];
  }

  else
  {

    __break(1u);
  }
}

id specialized static UIDocumentBrowserAction.copyAction(numberOfItems:)(uint64_t a1)
{
  result = _DocumentManagerBundle();
  if (result)
  {
    v3 = result;
    v4.value._object = 0xEB00000000656C62;
    v45._object = 0x8000000249BD6560;
    v5._object = 0x8000000249BD6530;
    v45._countAndFlagsBits = 0xD00000000000005FLL;
    v5._countAndFlagsBits = 0xD000000000000023;
    v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v4, v3, v6, v45);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v7 = swift_allocObject();
    v8 = MEMORY[0x277D83B88];
    *(v7 + 16) = xmmword_249B9A480;
    v9 = MEMORY[0x277D83C10];
    *(v7 + 56) = v8;
    *(v7 + 64) = v9;
    *(v7 + 32) = a1;
    v10 = static String.localizedStringWithFormat(_:_:)();
    v12 = v11;

    if (a1 < 1)
    {
      v18 = 0;
      v20 = 0;
LABEL_6:
      v21 = *MEMORY[0x277D05F70];
      v22 = objc_allocWithZone(MEMORY[0x277D05F28]);
      v23 = v21;
      v24 = MEMORY[0x24C1FAD20](v10, v12);

      v43 = closure #1 in static UIDocumentBrowserAction.copyAction(numberOfItems:);
      v44 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v40 = 1107296256;
      v41 = thunk for @escaping @callee_guaranteed (@guaranteed [DOCItemBookmark], @in_guaranteed Any?) -> ();
      v42 = &block_descriptor_401;
      v25 = _Block_copy(&aBlock);
      v26 = [v22 initWithIdentifier:v23 localizedTitle:v24 resolvedHandler:v25];

      _Block_release(v25);

      if (v20)
      {
        v27 = MEMORY[0x24C1FAD20](v18, v20);
      }

      else
      {
        v27 = 0;
      }

      [v26 setLocalizedCompactTitle_];

      v28 = MEMORY[0x24C1FAD20](0xD000000000000014, 0x8000000249BDD080);
      v29 = objc_opt_self();
      v30 = [v29 systemImageNamed_];

      [v26 setImage_];
      v31 = MEMORY[0x24C1FAD20](0xD000000000000019, 0x8000000249BDD0A0);
      v32 = [v29 systemImageNamed_];

      [v26 setImageOnlyForContextMenu_];
      v33 = *MEMORY[0x277D05F58];
      v34 = *MEMORY[0x277D05F48];
      v35 = *MEMORY[0x277D05F50];
      if (*MEMORY[0x277D05F58] >= 2uLL)
      {
        v36 = v33 | 1;
        if ((v34 & ~(v33 | 1)) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v36 = 1;
        if (v34 <= 1)
        {
          if (v35 < 2)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }
      }

      v36 |= v34;
LABEL_15:
      if ((v35 & ~v36) == 0)
      {
LABEL_17:
        [v26 setAvailability_];
        [v26 setSupportsMultipleItems_];
        [v26 setMenuSortOrder_];
        v43 = specialized closure #1 in static NSPredicate.validateAction(_:);
        v44 = 0;
        aBlock = MEMORY[0x277D85DD0];
        v40 = 1107296256;
        v41 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [String : Any]?) -> (@unowned Bool);
        v42 = &block_descriptor_404;
        v37 = _Block_copy(&aBlock);
        v38 = [objc_opt_self() predicateWithBlock_];
        _Block_release(v37);

        [v26 setFilteringPredicate_];

        return v26;
      }

LABEL_16:
      v36 |= v35;
      goto LABEL_17;
    }

    result = _DocumentManagerBundle();
    if (result)
    {
      v13 = result;
      v46._object = 0x8000000249BD6560;
      v14._object = 0x8000000249BD6530;
      v46._countAndFlagsBits = 0xD00000000000005FLL;
      v14._countAndFlagsBits = 0xD000000000000023;
      v15.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v15.value._object = 0xEB00000000656C62;
      v16._countAndFlagsBits = 0;
      v16._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v46);

      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_249B9A480;
      *(v17 + 56) = MEMORY[0x277D83B88];
      *(v17 + 64) = v9;
      *(v17 + 32) = 0;
      v18 = static String.localizedStringWithFormat(_:_:)();
      v20 = v19;

      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void specialized static UIDocumentBrowserAction._fetchParent(items:completion:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v27 = a2;
  if (a1 >> 62)
  {
LABEL_29:
    if (a1 < 0)
    {
      v3 = a1;
    }

    else
    {
      v3 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    if (__CocoaSet.count.getter() > 0)
    {
      v8 = __CocoaSet.count.getter();
      if (!v8)
      {
        v9 = a1 & 0xC000000000000001;
        swift_retain_n();
LABEL_23:
        v3 = [objc_opt_self() defaultManager];
        if (!v9)
        {
          if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v21 = *(a1 + 32);
LABEL_26:
          v22 = v21;
          v23 = [v21 itemID];

          v24 = swift_allocObject();
          *(v24 + 16) = partial apply for closure #1 in DOCHierarchyController.getSaveLocationForCurrentBrowserOrDefaultSaveLocation(completionBlock:);
          *(v24 + 24) = v7;
          aBlock[4] = closure #2 in static UIDocumentBrowserAction._fetchParent(items:completion:)partial apply;
          aBlock[5] = v24;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [FPItem]?, @guaranteed Error?) -> ();
          aBlock[3] = &block_descriptor_374;
          v25 = _Block_copy(aBlock);

          [v3 fetchParentsForItemID:v23 recursively:0 completionHandler:v25];

          _Block_release(v25);

          return;
        }

LABEL_40:
        v21 = MEMORY[0x24C1FC540](0, a1);
        goto LABEL_26;
      }

LABEL_3:
      v9 = a1 & 0xC000000000000001;
      v26 = v7;
      if ((a1 & 0xC000000000000001) != 0)
      {
        swift_retain_n();
        v10 = MEMORY[0x24C1FC540](0, a1);
        v28 = a1 & 0xFFFFFFFFFFFFFF8;
        goto LABEL_6;
      }

      v28 = a1 & 0xFFFFFFFFFFFFFF8;
      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v7 = *(a1 + 32);
        swift_retain_n();
        v10 = v7;
LABEL_6:
        v29 = [v10 effectiveParentItemIdentifier];

        v11 = 0;
        while (1)
        {
          if (v9)
          {
            v12 = MEMORY[0x24C1FC540](v11, a1);
          }

          else
          {
            if (v11 >= *(v28 + 16))
            {
              goto LABEL_28;
            }

            v12 = *(a1 + 8 * v11 + 32);
          }

          v13 = v12;
          v7 = (v11 + 1);
          if (__OFADD__(v11, 1))
          {
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          v14 = [v12 effectiveParentItemIdentifier];
          v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = v16;
          if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
          {
          }

          else
          {
            v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v20 & 1) == 0)
            {
              v27(0);

              return;
            }
          }

          ++v11;
          if (v7 == v8)
          {

            v7 = v26;
            goto LABEL_23;
          }
        }
      }

      __break(1u);
      goto LABEL_40;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }
  }

  swift_retain_n();
  v27(0);
}

{
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v27 = a2;
  if (a1 >> 62)
  {
LABEL_29:
    if (a1 < 0)
    {
      v3 = a1;
    }

    else
    {
      v3 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    if (__CocoaSet.count.getter() > 0)
    {
      v8 = __CocoaSet.count.getter();
      if (!v8)
      {
        v9 = a1 & 0xC000000000000001;
        swift_retain_n();
LABEL_23:
        v3 = [objc_opt_self() defaultManager];
        if (!v9)
        {
          if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v21 = *(a1 + 32);
LABEL_26:
          v22 = v21;
          v23 = [v21 itemID];

          v24 = swift_allocObject();
          *(v24 + 16) = partial apply for closure #2 in closure #1 in static UIDocumentBrowserAction.archiveAction(targetNode:currentNodeIsTarget:);
          *(v24 + 24) = v7;
          aBlock[4] = partial apply for closure #2 in static UIDocumentBrowserAction._fetchParent(items:completion:);
          aBlock[5] = v24;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [FPItem]?, @guaranteed Error?) -> ();
          aBlock[3] = &block_descriptor_27_1;
          v25 = _Block_copy(aBlock);

          [v3 fetchParentsForItemID:v23 recursively:0 completionHandler:v25];

          _Block_release(v25);

          return;
        }

LABEL_40:
        v21 = MEMORY[0x24C1FC540](0, a1);
        goto LABEL_26;
      }

LABEL_3:
      v9 = a1 & 0xC000000000000001;
      v26 = v7;
      if ((a1 & 0xC000000000000001) != 0)
      {
        swift_retain_n();
        v10 = MEMORY[0x24C1FC540](0, a1);
        v28 = a1 & 0xFFFFFFFFFFFFFF8;
        goto LABEL_6;
      }

      v28 = a1 & 0xFFFFFFFFFFFFFF8;
      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v7 = *(a1 + 32);
        swift_retain_n();
        v10 = v7;
LABEL_6:
        v29 = [v10 effectiveParentItemIdentifier];

        v11 = 0;
        while (1)
        {
          if (v9)
          {
            v12 = MEMORY[0x24C1FC540](v11, a1);
          }

          else
          {
            if (v11 >= *(v28 + 16))
            {
              goto LABEL_28;
            }

            v12 = *(a1 + 8 * v11 + 32);
          }

          v13 = v12;
          v7 = (v11 + 1);
          if (__OFADD__(v11, 1))
          {
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          v14 = [v12 effectiveParentItemIdentifier];
          v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = v16;
          if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
          {
          }

          else
          {
            v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v20 & 1) == 0)
            {
              v27(0);

              return;
            }
          }

          ++v11;
          if (v7 == v8)
          {

            v7 = v26;
            goto LABEL_23;
          }
        }
      }

      __break(1u);
      goto LABEL_40;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }
  }

  swift_retain_n();
  v27(0);
}

{
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v27 = a2;
  if (a1 >> 62)
  {
LABEL_29:
    if (a1 < 0)
    {
      v3 = a1;
    }

    else
    {
      v3 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    if (__CocoaSet.count.getter() > 0)
    {
      v8 = __CocoaSet.count.getter();
      if (!v8)
      {
        v9 = a1 & 0xC000000000000001;
        swift_retain_n();
LABEL_23:
        v3 = [objc_opt_self() defaultManager];
        if (!v9)
        {
          if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v21 = *(a1 + 32);
LABEL_26:
          v22 = v21;
          v23 = [v21 itemID];

          v24 = swift_allocObject();
          *(v24 + 16) = partial apply for closure #2 in closure #1 in static UIDocumentBrowserAction.archiveAction(targetNode:currentNodeIsTarget:);
          *(v24 + 24) = v7;
          aBlock[4] = closure #2 in static UIDocumentBrowserAction._fetchParent(items:completion:)partial apply;
          aBlock[5] = v24;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [FPItem]?, @guaranteed Error?) -> ();
          aBlock[3] = &block_descriptor_51_2;
          v25 = _Block_copy(aBlock);

          [v3 fetchParentsForItemID:v23 recursively:0 completionHandler:v25];

          _Block_release(v25);

          return;
        }

LABEL_40:
        v21 = MEMORY[0x24C1FC540](0, a1);
        goto LABEL_26;
      }

LABEL_3:
      v9 = a1 & 0xC000000000000001;
      v26 = v7;
      if ((a1 & 0xC000000000000001) != 0)
      {
        swift_retain_n();
        v10 = MEMORY[0x24C1FC540](0, a1);
        v28 = a1 & 0xFFFFFFFFFFFFFF8;
        goto LABEL_6;
      }

      v28 = a1 & 0xFFFFFFFFFFFFFF8;
      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v7 = *(a1 + 32);
        swift_retain_n();
        v10 = v7;
LABEL_6:
        v29 = [v10 effectiveParentItemIdentifier];

        v11 = 0;
        while (1)
        {
          if (v9)
          {
            v12 = MEMORY[0x24C1FC540](v11, a1);
          }

          else
          {
            if (v11 >= *(v28 + 16))
            {
              goto LABEL_28;
            }

            v12 = *(a1 + 8 * v11 + 32);
          }

          v13 = v12;
          v7 = (v11 + 1);
          if (__OFADD__(v11, 1))
          {
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          v14 = [v12 effectiveParentItemIdentifier];
          v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = v16;
          if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
          {
          }

          else
          {
            v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v20 & 1) == 0)
            {
              v27(0);

              return;
            }
          }

          ++v11;
          if (v7 == v8)
          {

            v7 = v26;
            goto LABEL_23;
          }
        }
      }

      __break(1u);
      goto LABEL_40;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }
  }

  swift_retain_n();
  v27(0);
}

{
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v27 = a2;
  if (a1 >> 62)
  {
LABEL_29:
    if (a1 < 0)
    {
      v3 = a1;
    }

    else
    {
      v3 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    if (__CocoaSet.count.getter() > 0)
    {
      v8 = __CocoaSet.count.getter();
      if (!v8)
      {
        v9 = a1 & 0xC000000000000001;
        swift_retain_n();
LABEL_23:
        v3 = [objc_opt_self() defaultManager];
        if (!v9)
        {
          if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v21 = *(a1 + 32);
LABEL_26:
          v22 = v21;
          v23 = [v21 itemID];

          v24 = swift_allocObject();
          *(v24 + 16) = partial apply for closure #2 in closure #1 in static UIDocumentBrowserAction.archiveAction(targetNode:currentNodeIsTarget:);
          *(v24 + 24) = v7;
          aBlock[4] = closure #2 in static UIDocumentBrowserAction._fetchParent(items:completion:)partial apply;
          aBlock[5] = v24;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [FPItem]?, @guaranteed Error?) -> ();
          aBlock[3] = &block_descriptor_76_0;
          v25 = _Block_copy(aBlock);

          [v3 fetchParentsForItemID:v23 recursively:0 completionHandler:v25];

          _Block_release(v25);

          return;
        }

LABEL_40:
        v21 = MEMORY[0x24C1FC540](0, a1);
        goto LABEL_26;
      }

LABEL_3:
      v9 = a1 & 0xC000000000000001;
      v26 = v7;
      if ((a1 & 0xC000000000000001) != 0)
      {
        swift_retain_n();
        v10 = MEMORY[0x24C1FC540](0, a1);
        v28 = a1 & 0xFFFFFFFFFFFFFF8;
        goto LABEL_6;
      }

      v28 = a1 & 0xFFFFFFFFFFFFFF8;
      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v7 = *(a1 + 32);
        swift_retain_n();
        v10 = v7;
LABEL_6:
        v29 = [v10 effectiveParentItemIdentifier];

        v11 = 0;
        while (1)
        {
          if (v9)
          {
            v12 = MEMORY[0x24C1FC540](v11, a1);
          }

          else
          {
            if (v11 >= *(v28 + 16))
            {
              goto LABEL_28;
            }

            v12 = *(a1 + 8 * v11 + 32);
          }

          v13 = v12;
          v7 = (v11 + 1);
          if (__OFADD__(v11, 1))
          {
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          v14 = [v12 effectiveParentItemIdentifier];
          v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = v16;
          if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
          {
          }

          else
          {
            v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v20 & 1) == 0)
            {
              v27(0);

              return;
            }
          }

          ++v11;
          if (v7 == v8)
          {

            v7 = v26;
            goto LABEL_23;
          }
        }
      }

      __break(1u);
      goto LABEL_40;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }
  }

  swift_retain_n();
  v27(0);
}

id specialized static UIDocumentBrowserAction._fetchParent(items:completion:)(unint64_t a1, id a2, void (*a3)(void), uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = closure #1 in DOCHierarchyController.getSaveLocationForCurrentBrowserOrDefaultSaveLocation(completionBlock:)partial apply;
  *(v10 + 32) = v9;
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
LABEL_30:
    swift_retain_n();
    v29 = a2;

    a3(0);

LABEL_31:
  }

  do
  {
    v35 = a1 & 0xC000000000000001;
    v32 = v10;
    v33 = a2;
    v31 = a3;
    if ((a1 & 0xC000000000000001) != 0)
    {
      swift_retain_n();
      v30 = a2;

      a3 = MEMORY[0x24C1FC540](0, a1);
      v34 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v34 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_34:
        v23 = MEMORY[0x24C1FC540](0, a1);
        goto LABEL_24;
      }

      v12 = *(a1 + 32);
      swift_retain_n();
      v13 = a2;

      a3 = v12;
    }

    a2 = [a3 effectiveParentItemIdentifier];

    v10 = 0;
    while (1)
    {
      if (v35)
      {
        v14 = MEMORY[0x24C1FC540](v10, a1);
      }

      else
      {
        if (v10 >= *(v34 + 16))
        {
          goto LABEL_26;
        }

        v14 = *(a1 + 8 * v10 + 32);
      }

      v15 = v14;
      v16 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      a3 = [v14 effectiveParentItemIdentifier];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = v18;
      if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v19)
      {
      }

      else
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v21 & 1) == 0)
        {

          v31(0);

          goto LABEL_31;
        }
      }

      ++v10;
      if (v16 == v11)
      {

        v10 = v32;
        a2 = v33;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    if (__CocoaSet.count.getter() <= 0)
    {
      goto LABEL_30;
    }

    v11 = __CocoaSet.count.getter();
  }

  while (v11);
  v35 = a1 & 0xC000000000000001;
  swift_retain_n();
  v28 = a2;

LABEL_21:
  result = [objc_opt_self() defaultManager];
  v4 = result;
  if (v35)
  {
    goto LABEL_34;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v23 = *(a1 + 32);
LABEL_24:
    v24 = v23;
    v25 = [v23 itemID];

    v26 = swift_allocObject();
    *(v26 + 16) = closure #5 in static UIDocumentBrowserAction.fetchParent(nodes:completion:)partial apply;
    *(v26 + 24) = v10;
    aBlock[4] = closure #2 in static UIDocumentBrowserAction._fetchParent(items:completion:)partial apply;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [FPItem]?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_389;
    v27 = _Block_copy(aBlock);

    [v4 fetchParentsForItemID:v25 recursively:0 completionHandler:v27];

    _Block_release(v27);

    goto LABEL_31;
  }

  __break(1u);
  return result;
}

{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = closure #2 in closure #1 in static UIDocumentBrowserAction.archiveAction(targetNode:currentNodeIsTarget:)partial apply;
  *(v10 + 32) = v9;
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
LABEL_30:
    swift_retain_n();
    v29 = a2;

    a3(0);

LABEL_31:
  }

  do
  {
    v35 = a1 & 0xC000000000000001;
    v32 = v10;
    v33 = a2;
    v31 = a3;
    if ((a1 & 0xC000000000000001) != 0)
    {
      swift_retain_n();
      v30 = a2;

      a3 = MEMORY[0x24C1FC540](0, a1);
      v34 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v34 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_34:
        v23 = MEMORY[0x24C1FC540](0, a1);
        goto LABEL_24;
      }

      v12 = *(a1 + 32);
      swift_retain_n();
      v13 = a2;

      a3 = v12;
    }

    a2 = [a3 effectiveParentItemIdentifier];

    v10 = 0;
    while (1)
    {
      if (v35)
      {
        v14 = MEMORY[0x24C1FC540](v10, a1);
      }

      else
      {
        if (v10 >= *(v34 + 16))
        {
          goto LABEL_26;
        }

        v14 = *(a1 + 8 * v10 + 32);
      }

      v15 = v14;
      v16 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      a3 = [v14 effectiveParentItemIdentifier];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = v18;
      if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v19)
      {
      }

      else
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v21 & 1) == 0)
        {

          v31(0);

          goto LABEL_31;
        }
      }

      ++v10;
      if (v16 == v11)
      {

        v10 = v32;
        a2 = v33;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    if (__CocoaSet.count.getter() <= 0)
    {
      goto LABEL_30;
    }

    v11 = __CocoaSet.count.getter();
  }

  while (v11);
  v35 = a1 & 0xC000000000000001;
  swift_retain_n();
  v28 = a2;

LABEL_21:
  result = [objc_opt_self() defaultManager];
  v4 = result;
  if (v35)
  {
    goto LABEL_34;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v23 = *(a1 + 32);
LABEL_24:
    v24 = v23;
    v25 = [v23 itemID];

    v26 = swift_allocObject();
    *(v26 + 16) = partial apply for closure #5 in static UIDocumentBrowserAction.fetchParent(nodes:completion:);
    *(v26 + 24) = v10;
    aBlock[4] = closure #2 in static UIDocumentBrowserAction._fetchParent(items:completion:)partial apply;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [FPItem]?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_41_0;
    v27 = _Block_copy(aBlock);

    [v4 fetchParentsForItemID:v25 recursively:0 completionHandler:v27];

    _Block_release(v27);

    goto LABEL_31;
  }

  __break(1u);
  return result;
}

{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = closure #2 in closure #1 in static UIDocumentBrowserAction.archiveAction(targetNode:currentNodeIsTarget:)partial apply;
  *(v10 + 32) = v9;
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
LABEL_30:
    swift_retain_n();
    v29 = a2;

    a3(0);

LABEL_31:
  }

  do
  {
    v35 = a1 & 0xC000000000000001;
    v32 = v10;
    v33 = a2;
    v31 = a3;
    if ((a1 & 0xC000000000000001) != 0)
    {
      swift_retain_n();
      v30 = a2;

      a3 = MEMORY[0x24C1FC540](0, a1);
      v34 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v34 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_34:
        v23 = MEMORY[0x24C1FC540](0, a1);
        goto LABEL_24;
      }

      v12 = *(a1 + 32);
      swift_retain_n();
      v13 = a2;

      a3 = v12;
    }

    a2 = [a3 effectiveParentItemIdentifier];

    v10 = 0;
    while (1)
    {
      if (v35)
      {
        v14 = MEMORY[0x24C1FC540](v10, a1);
      }

      else
      {
        if (v10 >= *(v34 + 16))
        {
          goto LABEL_26;
        }

        v14 = *(a1 + 8 * v10 + 32);
      }

      v15 = v14;
      v16 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      a3 = [v14 effectiveParentItemIdentifier];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = v18;
      if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v19)
      {
      }

      else
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v21 & 1) == 0)
        {

          v31(0);

          goto LABEL_31;
        }
      }

      ++v10;
      if (v16 == v11)
      {

        v10 = v32;
        a2 = v33;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    if (__CocoaSet.count.getter() <= 0)
    {
      goto LABEL_30;
    }

    v11 = __CocoaSet.count.getter();
  }

  while (v11);
  v35 = a1 & 0xC000000000000001;
  swift_retain_n();
  v28 = a2;

LABEL_21:
  result = [objc_opt_self() defaultManager];
  v4 = result;
  if (v35)
  {
    goto LABEL_34;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v23 = *(a1 + 32);
LABEL_24:
    v24 = v23;
    v25 = [v23 itemID];

    v26 = swift_allocObject();
    *(v26 + 16) = closure #5 in static UIDocumentBrowserAction.fetchParent(nodes:completion:)partial apply;
    *(v26 + 24) = v10;
    aBlock[4] = closure #2 in static UIDocumentBrowserAction._fetchParent(items:completion:)partial apply;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [FPItem]?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_66;
    v27 = _Block_copy(aBlock);

    [v4 fetchParentsForItemID:v25 recursively:0 completionHandler:v27];

    _Block_release(v27);

    goto LABEL_31;
  }

  __break(1u);
  return result;
}

{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = closure #2 in closure #1 in static UIDocumentBrowserAction.archiveAction(targetNode:currentNodeIsTarget:)partial apply;
  *(v10 + 32) = v9;
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
LABEL_30:
    swift_retain_n();
    v29 = a2;

    a3(0);

LABEL_31:
  }

  do
  {
    v35 = a1 & 0xC000000000000001;
    v32 = v10;
    v33 = a2;
    v31 = a3;
    if ((a1 & 0xC000000000000001) != 0)
    {
      swift_retain_n();
      v30 = a2;

      a3 = MEMORY[0x24C1FC540](0, a1);
      v34 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v34 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_34:
        v23 = MEMORY[0x24C1FC540](0, a1);
        goto LABEL_24;
      }

      v12 = *(a1 + 32);
      swift_retain_n();
      v13 = a2;

      a3 = v12;
    }

    a2 = [a3 effectiveParentItemIdentifier];

    v10 = 0;
    while (1)
    {
      if (v35)
      {
        v14 = MEMORY[0x24C1FC540](v10, a1);
      }

      else
      {
        if (v10 >= *(v34 + 16))
        {
          goto LABEL_26;
        }

        v14 = *(a1 + 8 * v10 + 32);
      }

      v15 = v14;
      v16 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      a3 = [v14 effectiveParentItemIdentifier];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = v18;
      if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v19)
      {
      }

      else
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v21 & 1) == 0)
        {

          v31(0);

          goto LABEL_31;
        }
      }

      ++v10;
      if (v16 == v11)
      {

        v10 = v32;
        a2 = v33;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    if (__CocoaSet.count.getter() <= 0)
    {
      goto LABEL_30;
    }

    v11 = __CocoaSet.count.getter();
  }

  while (v11);
  v35 = a1 & 0xC000000000000001;
  swift_retain_n();
  v28 = a2;

LABEL_21:
  result = [objc_opt_self() defaultManager];
  v4 = result;
  if (v35)
  {
    goto LABEL_34;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v23 = *(a1 + 32);
LABEL_24:
    v24 = v23;
    v25 = [v23 itemID];

    v26 = swift_allocObject();
    *(v26 + 16) = closure #5 in static UIDocumentBrowserAction.fetchParent(nodes:completion:)partial apply;
    *(v26 + 24) = v10;
    aBlock[4] = closure #2 in static UIDocumentBrowserAction._fetchParent(items:completion:)partial apply;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [FPItem]?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_91_1;
    v27 = _Block_copy(aBlock);

    [v4 fetchParentsForItemID:v25 recursively:0 completionHandler:v27];

    _Block_release(v27);

    goto LABEL_31;
  }

  __break(1u);
  return result;
}

void (*specialized static UIDocumentBrowserAction._fetchParent(items:completion:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, void *a5, unint64_t a6, char **a7))(void)
{
  v14 = swift_allocObject();
  v44 = a2;
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a6;
  v14[7] = a7;
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
LABEL_30:
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v35 = a5;
    swift_retain_n();
    closure #2 in FPItemManager.archive(_:destinationFolder:format:progressHandler:completionHandler:)(0, v44, a3, a4, v35, a6, a7);

LABEL_31:
  }

  do
  {
    v46 = a1 & 0xC000000000000001;
    v42 = a5;
    v43 = a4;
    v40 = a3;
    v41 = a7;
    v38 = a6;
    v39 = v14;
    if ((a1 & 0xC000000000000001) != 0)
    {
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      v36 = a5;
      swift_retain_n();
      v37 = v36;
      v19 = MEMORY[0x24C1FC540](0, a1);
      v45 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v45 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_34:
        v28 = MEMORY[0x24C1FC540](0, a1);
        goto LABEL_24;
      }

      v16 = *(a1 + 32);
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      v17 = a5;
      swift_retain_n();
      v18 = v17;
      v19 = v16;
    }

    v14 = [v19 effectiveParentItemIdentifier];

    a6 = 0;
    while (1)
    {
      if (v46)
      {
        v20 = MEMORY[0x24C1FC540](a6, a1);
      }

      else
      {
        if (a6 >= *(v45 + 16))
        {
          goto LABEL_26;
        }

        v20 = *(a1 + 8 * a6 + 32);
      }

      a7 = v20;
      a5 = (a6 + 1);
      if (__OFADD__(a6, 1))
      {
        break;
      }

      v21 = [v20 effectiveParentItemIdentifier];
      a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      a3 = v25;
      if (a4 == v24 && v23 == v25)
      {
      }

      else
      {
        a4 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((a4 & 1) == 0)
        {
          a5 = v42;
          closure #2 in FPItemManager.archive(_:destinationFolder:format:progressHandler:completionHandler:)(0, v44, v40, v43, v42, v38, v41);

          goto LABEL_31;
        }
      }

      ++a6;
      if (a5 == v15)
      {

        a5 = v42;
        v14 = v39;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    if (__CocoaSet.count.getter() <= 0)
    {
      goto LABEL_30;
    }

    v15 = __CocoaSet.count.getter();
  }

  while (v15);
  v46 = a1 & 0xC000000000000001;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v33 = a5;
  swift_retain_n();
  v34 = v33;
LABEL_21:
  result = [objc_opt_self() defaultManager];
  a6 = result;
  if (v46)
  {
    goto LABEL_34;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(a1 + 32);
LABEL_24:
    v29 = v28;
    v30 = [v28 itemID];

    v31 = swift_allocObject();
    *(v31 + 16) = partial apply for closure #2 in FPItemManager.archive(_:destinationFolder:format:progressHandler:completionHandler:);
    *(v31 + 24) = v14;
    aBlock[4] = closure #2 in static UIDocumentBrowserAction._fetchParent(items:completion:)partial apply;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [FPItem]?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_101_0;
    v32 = _Block_copy(aBlock);

    [a6 fetchParentsForItemID:v30 recursively:0 completionHandler:v32];

    _Block_release(v32);

    goto LABEL_31;
  }

  __break(1u);
  return result;
}

id specialized static UIDocumentBrowserAction._fetchParent(items:completion:)(unint64_t a1, void *a2, void (*a3)(id, uint64_t), uint64_t a4, char *a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v16 = swift_allocObject();
  v55 = a3;
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a6;
  v16[6] = a7;
  v16[7] = a8;
  v56 = swift_allocObject();
  v57 = a2;
  v56[2] = a2;
  v56[3] = closure #2 in FPItemManager.archive(_:destinationFolder:format:progressHandler:completionHandler:)partial apply;
  v56[4] = v16;
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
LABEL_30:
    v44 = *MEMORY[0x277CCA050];
    v45 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v46 = a6;
    swift_retain_n();
    v47 = v46;
    v48 = v57;

    v49 = [v45 initWithDomain:v44 code:3072 userInfo:0];
    v55(v49, 1);

LABEL_31:
  }

  do
  {
    v59 = a1 & 0xC000000000000001;
    v53 = a5;
    v54 = a6;
    if ((a1 & 0xC000000000000001) != 0)
    {
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      v50 = a6;
      swift_retain_n();
      v51 = v50;
      v52 = v57;

      v22 = MEMORY[0x24C1FC540](0, a1);
      v58 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v58 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_34:
        v36 = MEMORY[0x24C1FC540](0, a1);
        goto LABEL_24;
      }

      v18 = *(a1 + 32);
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      v19 = a6;
      swift_retain_n();
      v20 = v19;
      v21 = v57;

      v22 = v18;
    }

    v23 = [v22 effectiveParentItemIdentifier];

    a8 = 0;
    while (1)
    {
      if (v59)
      {
        v24 = MEMORY[0x24C1FC540](a8, a1);
      }

      else
      {
        if (a8 >= *(v58 + 16))
        {
          goto LABEL_26;
        }

        v24 = *(a1 + 8 * a8 + 32);
      }

      v25 = v24;
      a5 = (a8 + 1);
      if (__OFADD__(a8, 1))
      {
        break;
      }

      v26 = [v24 effectiveParentItemIdentifier];
      a6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;
      if (a6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v28 == v29)
      {
      }

      else
      {
        a6 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((a6 & 1) == 0)
        {
          v31 = *MEMORY[0x277CCA050];
          v32 = objc_allocWithZone(MEMORY[0x277CCA9B8]);

          a6 = v54;
          v33 = v54;

          v34 = [v32 initWithDomain:v31 code:3072 userInfo:0];
          v55(v34, 1);

          goto LABEL_31;
        }
      }

      ++a8;
      if (a5 == v17)
      {

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    if (__CocoaSet.count.getter() <= 0)
    {
      goto LABEL_30;
    }

    v17 = __CocoaSet.count.getter();
  }

  while (v17);
  v59 = a1 & 0xC000000000000001;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v54 = a6;
  v41 = a6;
  swift_retain_n();
  v42 = v41;
  v43 = v57;

LABEL_21:
  result = [objc_opt_self() defaultManager];
  a8 = result;
  if (v59)
  {
    goto LABEL_34;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v36 = *(a1 + 32);
LABEL_24:
    v37 = v36;
    v38 = [v36 itemID];

    v39 = swift_allocObject();
    *(v39 + 16) = closure #5 in static UIDocumentBrowserAction.fetchParent(nodes:completion:)partial apply;
    *(v39 + 24) = v56;
    aBlock[4] = closure #2 in static UIDocumentBrowserAction._fetchParent(items:completion:)partial apply;
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [FPItem]?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_116;
    v40 = _Block_copy(aBlock);

    [a8 fetchParentsForItemID:v38 recursively:0 completionHandler:v40];

    _Block_release(v40);

    a6 = v54;
    goto LABEL_31;
  }

  __break(1u);
  return result;
}

void specialized static UIDocumentBrowserAction.fetchParent(nodes:completion:)(unint64_t a1, void (*a2)(id, uint64_t), int64_t a3, int64_t a4, void *a5, void (*a6)(void), uint64_t a7)
{
  v10 = a1;
  v11 = (a1 >> 62);
  if (a1 >> 62)
  {
LABEL_92:
    v50 = a6;
    v51 = __CocoaSet.count.getter();
    a6 = v50;
    if (v51 >= 1)
    {
      goto LABEL_3;
    }

LABEL_93:
    v52 = *MEMORY[0x277CCA050];
    v53 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v54 = a5;
    swift_retain_n();
    v55 = v54;
    v46 = [v53 initWithDomain:v52 code:3072 userInfo:0];
    a2(v46, 1);

    goto LABEL_94;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_93;
  }

LABEL_3:
  v61 = a6;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v12 = a5;
  swift_retain_n();
  v60 = v12;

  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (v11 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
  }

  v64 = a4;
  v14 = v10 & 0xFFFFFFFFFFFFFF8;
  a4 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v15 = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
  v62 = a3;
  v16 = 0;
  if (a4)
  {
    while (2)
    {
      v17 = (v15 + 8 * v16);
      while (1)
      {
        v18 = *v17;
        swift_getObjectType();
        if (DOCNode.isFINode.getter())
        {
          break;
        }

        ++v16;
        ++v17;
        if (v16 >= a4)
        {
          goto LABEL_17;
        }
      }

      a3 = a7;
      v19 = v14;
      v20 = (v15 + 8 * a4);
      do
      {
        if (v16 >= --a4)
        {
          v14 = v19;
          a7 = a3;
          goto LABEL_17;
        }

        --v20;
        swift_getObjectType();
      }

      while (DOCNode.isFINode.getter());
      *v17 = *v20;
      *v20 = v18;
      ++v16;
      v14 = v19;
      a7 = a3;
      if (v16 < a4)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:
  v69 = v10 >> 62;
  if (!(v10 >> 62))
  {
    v21 = *(v14 + 16);
    v22 = v21;
    if (v21 >= v16)
    {
      goto LABEL_19;
    }

LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

LABEL_99:
  v56 = __CocoaSet.count.getter();
  if (v56 < v16)
  {
    __break(1u);
    return;
  }

  v22 = v56;
  v21 = __CocoaSet.count.getter();
  if (v21 < v16)
  {
    __break(1u);
    goto LABEL_102;
  }

LABEL_19:
  if (v16 < 0)
  {
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  if (v69)
  {
    v21 = __CocoaSet.count.getter();
  }

  else
  {
    v21 = *(v14 + 16);
  }

  if (v21 < v22)
  {
    goto LABEL_104;
  }

  if (v22 < 0)
  {
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v67 = v14;
  v63 = v10 & 0xC000000000000001;
  if ((v10 & 0xC000000000000001) == 0 || v16 == v22)
  {
  }

  else
  {
    if (v16 >= v22)
    {
      goto LABEL_110;
    }

    v23 = v16;
    a4 = &_sSo7DOCNode_pMR;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      _ArrayBuffer._typeCheckSlowPath(_:)(v23++);
    }

    while (v22 != v23);
  }

  v70 = v10;
  v65 = a7;
  if (v69)
  {

    _CocoaArrayWrapper.subscript.getter();
    v24 = v25;
    a3 = v26;
    v22 = v27 >> 1;
  }

  else
  {
    v24 = v15;
    a3 = v16;
  }

  v11 = MEMORY[0x277D84F90];
  v73 = MEMORY[0x277D84F90];
  swift_unknownObjectRetain();
  v10 = 0x277D04000uLL;
  v28 = a3;
  v66 = v11;
  v72 = v11;
  a7 = a3;
  while (v22 != a7)
  {
    if (v28 < a3 || a7 >= v22)
    {
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v11 = *(v24 + 8 * a7++);
    objc_opt_self();
    v29 = swift_dynamicCastObjCClass();
    if (v29)
    {
      a4 = v29;
      v30 = swift_unknownObjectRetain();
      v11 = &v73;
      MEMORY[0x24C1FB090](v30);
      if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v72 = v73;
      v28 = a7;
    }
  }

  swift_unknownObjectRelease_n();
  if (v69)
  {
    v10 = v70;
    v14 = v67;
    a3 = v65;
    if (__CocoaSet.count.getter() < 0)
    {
      goto LABEL_111;
    }

    v21 = __CocoaSet.count.getter();
  }

  else
  {
    v14 = v67;
    v21 = *(v67 + 16);
    a3 = v65;
    v10 = v70;
  }

  if (v21 < v16)
  {
    goto LABEL_106;
  }

  if (v63)
  {

    if (v16)
    {
      v31 = 0;
      v11 = &_sSo7DOCNode_pMR;
      do
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
        _ArrayBuffer._typeCheckSlowPath(_:)(v31++);
      }

      while (v16 != v31);
    }

    if (!v69)
    {
      goto LABEL_53;
    }

LABEL_55:

    v14 = _CocoaArrayWrapper.subscript.getter();
    v15 = v33;
    v32 = v34;
    v16 = v35 >> 1;
    goto LABEL_56;
  }

  if (v69)
  {
    goto LABEL_55;
  }

LABEL_53:
  v32 = 0;
LABEL_56:
  v73 = MEMORY[0x277D84F90];
  a7 = v14;
  swift_unknownObjectRetain();
  a4 = v32;
  v14 = v32;
  while (v16 != v14)
  {
    if (a4 < v32 || v14 >= v16)
    {
      goto LABEL_90;
    }

    v11 = *(v15 + 8 * v14++);
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v36 = swift_unknownObjectRetain();
      v11 = &v73;
      MEMORY[0x24C1FB090](v36);
      if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v66 = v73;
      a4 = v14;
    }
  }

  swift_unknownObjectRelease_n();
  v21 = v72;
  if (!(v72 >> 62))
  {
    v37 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_66;
  }

LABEL_107:
  v57 = v21;
  v58 = __CocoaSet.count.getter();
  v59 = v57;
  v37 = v58;
  v21 = v59;
LABEL_66:
  v38 = a3;
  a3 = v62;
  if (v37)
  {
    v39 = v21 & 0xC000000000000001;
    if ((v21 & 0xC000000000000001) != 0)
    {
      a4 = v21;
      v40 = MEMORY[0x24C1FC540](0);
      goto LABEL_70;
    }

    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      a4 = v21;
      v40 = *(v21 + 32);
LABEL_70:
      v11 = v40;
      a7 = &selRef_initWithFrame_;
      v14 = [v40 parent];

      if (v14)
      {
        v15 = 0;
        v41 = a4;
        v69 = a4 & 0xFFFFFFFFFFFFFF8;
        while (v37 != v15)
        {
          if (v39)
          {
            v42 = MEMORY[0x24C1FC540](v15, v41);
          }

          else
          {
            if (v15 >= *(v69 + 16))
            {
              __break(1u);
              goto LABEL_99;
            }

            v42 = *(v41 + 8 * v15 + 32);
          }

          v16 = v42;
          if (__OFADD__(v15, 1))
          {
            goto LABEL_91;
          }

          v43 = [v42 &selRef_separatorColor];
          if (!v43)
          {

            goto LABEL_88;
          }

          v44 = v43;
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
          a4 = v14;
          v11 = static NSObject.== infix(_:_:)();

          ++v15;
          v10 = v70;
          v41 = v72;
          if ((v11 & 1) == 0)
          {

LABEL_88:
            v46 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:0];
            a2(v46, 1);

            goto LABEL_94;
          }
        }

        v15 = v66;
        if (v66 >> 62)
        {
          goto LABEL_112;
        }

        v47 = v64;
        v48 = v65;
        if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_86:

          v45 = v60;

          v49 = v14;
          specialized static UIDocumentBrowserAction._fetchParent(items:completion:)(v15, v49, a2, a3, v47, v45, v61, v48);

          goto LABEL_82;
        }

        goto LABEL_113;
      }

      v46 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:0];
      a2(v46, 1);

LABEL_94:

      goto LABEL_95;
    }

    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    v47 = v64;
    v48 = v65;
    if (__CocoaSet.count.getter())
    {
      goto LABEL_86;
    }

LABEL_113:

    v46 = v14;
    closure #2 in FPItemManager.archive(_:destinationFolder:format:progressHandler:completionHandler:)(v14, a2, a3, v47, v60, v61, v48);

    goto LABEL_94;
  }

  v45 = v60;

  specialized static UIDocumentBrowserAction._fetchParent(items:completion:)(v66, a2, v62, v64, v45, v61, v38);
LABEL_82:

  swift_bridgeObjectRelease_n();

LABEL_95:
}

void specialized static UIDocumentBrowserAction.fetchParent(nodes:completion:)(unint64_t a1, void (*a2)(uint64_t *), int64_t a3)
{
  specialized static UIDocumentBrowserAction.fetchParent(nodes:completion:)(a1, a2, a3, specialized static UIDocumentBrowserAction._fetchParent(items:completion:), specialized static UIDocumentBrowserAction._fetchParent(items:completion:));
}

{
  specialized static UIDocumentBrowserAction.fetchParent(nodes:completion:)(a1, a2, a3, specialized static UIDocumentBrowserAction._fetchParent(items:completion:), specialized static UIDocumentBrowserAction._fetchParent(items:completion:));
}

{
  specialized static UIDocumentBrowserAction.fetchParent(nodes:completion:)(a1, a2, a3, specialized static UIDocumentBrowserAction._fetchParent(items:completion:), specialized static UIDocumentBrowserAction._fetchParent(items:completion:));
}

void specialized static UIDocumentBrowserAction.fetchParent(nodes:completion:)(unint64_t a1, void (*a2)(uint64_t *), int64_t a3, void (*a4)(unint64_t, void (*)(void), int64_t), uint64_t a5)
{
  v9 = a1;
  v10 = (a1 >> 62);
  if (a1 >> 62)
  {
LABEL_101:
    v11 = __CocoaSet.count.getter();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11 < 1)
  {
    a2(0);

    return;
  }

  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (v10 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
  }

  v44 = a5;
  v46 = a2;
  v47 = a3;
  a5 = v9 & 0xFFFFFFFFFFFFFF8;
  a3 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v13 = (v9 & 0xFFFFFFFFFFFFFF8) + 32;
  v54 = (v9 & 0xFFFFFFFFFFFFFF8);
  v14 = 0;
  if (a3)
  {
    while (2)
    {
      v15 = (v13 + 8 * v14);
      while (1)
      {
        v16 = *v15;
        swift_getObjectType();
        v10 = v16;
        if (DOCNode.isFINode.getter())
        {
          break;
        }

        ++v14;
        ++v15;
        if (v14 >= a3)
        {
          goto LABEL_21;
        }
      }

      v17 = (v13 + 8 * a3);
      do
      {
        if (v14 >= --a3)
        {
          a5 = v9 & 0xFFFFFFFFFFFFFF8;
          goto LABEL_21;
        }

        v18 = *--v17;
        v10 = v18;
        swift_getObjectType();
      }

      while (DOCNode.isFINode.getter());
      *v15 = *v17;
      *v17 = v16;
      ++v14;
      a5 = v9 & 0xFFFFFFFFFFFFFF8;
      if (v14 < a3)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:
  v19 = (v9 >> 62);
  if (!(v9 >> 62))
  {
    v20 = *(a5 + 16);
    if (v20 >= v14)
    {
      goto LABEL_23;
    }

LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

LABEL_103:
  if (v9 < 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = a5;
  }

  v43 = __CocoaSet.count.getter();
  if (v43 < v14)
  {
    __break(1u);
    return;
  }

  v20 = v43;
  if (__CocoaSet.count.getter() < v14)
  {
    __break(1u);
    goto LABEL_109;
  }

LABEL_23:
  if (v14 < 0)
  {
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    v35 = __CocoaSet.count.getter();
    if (!v35)
    {
LABEL_115:

      v45(v50, v46, v47);

      goto LABEL_116;
    }

    goto LABEL_73;
  }

  if (v19)
  {
    v21 = __CocoaSet.count.getter();
  }

  else
  {
    v21 = *(a5 + 16);
  }

  if (v21 < v20)
  {
    goto LABEL_111;
  }

  if (v20 < 0)
  {
    goto LABEL_112;
  }

  v48 = v9 & 0xC000000000000001;
  if ((v9 & 0xC000000000000001) == 0 || v14 == v20)
  {
  }

  else
  {
    if (v14 >= v20)
    {
      goto LABEL_119;
    }

    v22 = v14;
    a3 = &_sSo7DOCNode_pMR;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      _ArrayBuffer._typeCheckSlowPath(_:)(v22++);
    }

    while (v20 != v22);
  }

  v49 = v9;
  v45 = a4;
  v52 = v19;
  if (v19)
  {

    _CocoaArrayWrapper.subscript.getter();
    a4 = v23;
    a5 = v24;
    v20 = v25 >> 1;
  }

  else
  {
    a4 = v13;
    a5 = v14;
  }

  v10 = MEMORY[0x277D84F90];
  v55 = MEMORY[0x277D84F90];
  swift_unknownObjectRetain();
  v9 = 0x277D04000uLL;
  a2 = a5;
  v50 = v10;
  v51 = v10;
  v26 = a5;
  while (v20 != v26)
  {
    if (a2 < a5 || v26 >= v20)
    {
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    v10 = *(a4 + v26);
    v26 = (v26 + 1);
    objc_opt_self();
    v27 = swift_dynamicCastObjCClass();
    if (v27)
    {
      a3 = v27;
      v28 = swift_unknownObjectRetain();
      MEMORY[0x24C1FB090](v28);
      if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v10 = &v55;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v51 = v55;
      a2 = v26;
    }
  }

  swift_unknownObjectRelease_n();
  if (v52)
  {
    v19 = v49;
    if (v49 < 0)
    {
      v10 = v49;
    }

    else
    {
      v10 = v54;
    }

    if (__CocoaSet.count.getter() < 0)
    {
      goto LABEL_120;
    }

    v29 = __CocoaSet.count.getter();
  }

  else
  {
    v29 = v54[2];
    v19 = v49;
  }

  if (v29 < v14)
  {
    goto LABEL_113;
  }

  if (v48)
  {

    if (v14)
    {
      v30 = 0;
      v10 = &_sSo7DOCNode_pMd;
      do
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
        _ArrayBuffer._typeCheckSlowPath(_:)(v30++);
      }

      while (v14 != v30);
    }

    if (!v52)
    {
      goto LABEL_60;
    }

LABEL_62:

    a5 = _CocoaArrayWrapper.subscript.getter();
    v13 = v31;
    a2 = v32;
    v14 = v33 >> 1;
    goto LABEL_63;
  }

  if (v52)
  {
    goto LABEL_62;
  }

LABEL_60:
  a2 = 0;
  a5 = v54;
LABEL_63:
  v55 = MEMORY[0x277D84F90];
  swift_unknownObjectRetain();
  a3 = a2;
  v9 = a2;
  while (v14 != v9)
  {
    if (a3 < a2 || v9 >= v14)
    {
      goto LABEL_99;
    }

    v10 = *(v13 + 8 * v9++);
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v34 = swift_unknownObjectRetain();
      MEMORY[0x24C1FB090](v34);
      if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        a4 = a5;
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v10 = &v55;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v50 = v55;
      a3 = v9;
    }
  }

  swift_unknownObjectRelease_n();
  a5 = v51;
  if (v51 >> 62)
  {
    goto LABEL_114;
  }

  v35 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v35)
  {
    goto LABEL_115;
  }

LABEL_73:
  a3 = a5 & 0xC000000000000001;
  if ((a5 & 0xC000000000000001) != 0)
  {
    v36 = MEMORY[0x24C1FC540](0, a5);
    goto LABEL_76;
  }

  if (*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v36 = *(a5 + 32);
LABEL_76:
    v37 = v36;
    v54 = [v36 parent];

    if (!v54)
    {

      v46(0);
LABEL_116:

      return;
    }

    v13 = 0;
    a2 = 0x277D04700;
    while (v35 != v13)
    {
      if (a3)
      {
        v38 = MEMORY[0x24C1FC540](v13, a5);
      }

      else
      {
        if (v13 >= *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_103;
        }

        v38 = *(a5 + 8 * v13 + 32);
      }

      v9 = v38;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_100;
      }

      v39 = [v38 parent];
      if (!v39)
      {

        goto LABEL_93;
      }

      a4 = v39;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
      v14 = v54;
      v10 = static NSObject.== infix(_:_:)();

      ++v13;
      if ((v10 & 1) == 0)
      {

LABEL_93:
        v46(0);

        v42 = v54;
        goto LABEL_94;
      }
    }

    a5 = v50;
    if (v50 >> 62)
    {
      goto LABEL_121;
    }

    v40 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_90;
  }

  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  v40 = __CocoaSet.count.getter();
LABEL_90:
  if (v40)
  {

    v41 = v54;
    v44(a5, v41, v46, v47);

    goto LABEL_116;
  }

  v53 = v54;
  v46(v54);

  v42 = v53;
LABEL_94:
}

void specialized static UIDocumentBrowserAction._fetchParent(items:completion:)(unint64_t a1, unint64_t a2, void (*a3)(void), uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v31 = a3;
  v8[4] = a4;
  if (a1 >> 62)
  {
LABEL_29:
    if (__CocoaSet.count.getter() > 0)
    {
      v9 = __CocoaSet.count.getter();
      if (!v9)
      {
        v10 = a1 & 0xC000000000000001;
        v27 = a2;

LABEL_23:
        a2 = [objc_opt_self() defaultManager];
        if (!v10)
        {
          if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v22 = *(a1 + 32);
LABEL_26:
          v23 = v22;
          v24 = [v22 itemID];

          v25 = swift_allocObject();
          *(v25 + 16) = closure #5 in static UIDocumentBrowserAction.fetchParent(nodes:completion:)partial apply;
          *(v25 + 24) = v8;
          aBlock[4] = closure #2 in static UIDocumentBrowserAction._fetchParent(items:completion:)partial apply;
          aBlock[5] = v25;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [FPItem]?, @guaranteed Error?) -> ();
          aBlock[3] = &block_descriptor_352;
          v26 = _Block_copy(aBlock);

          [a2 fetchParentsForItemID:v24 recursively:0 completionHandler:v26];

          _Block_release(v26);

          return;
        }

LABEL_37:
        v22 = MEMORY[0x24C1FC540](0, a1);
        goto LABEL_26;
      }

LABEL_3:
      v30 = v8;
      v10 = a1 & 0xC000000000000001;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v29 = a2;

        v12 = MEMORY[0x24C1FC540](0, a1);
        v32 = a1 & 0xFFFFFFFFFFFFFF8;
        goto LABEL_6;
      }

      v32 = a1 & 0xFFFFFFFFFFFFFF8;
      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v8 = *(a1 + 32);
        v11 = a2;

        v12 = v8;
LABEL_6:
        v33 = [v12 effectiveParentItemIdentifier];

        a2 = 0;
        while (1)
        {
          if (v10)
          {
            v13 = MEMORY[0x24C1FC540](a2, a1);
          }

          else
          {
            if (a2 >= *(v32 + 16))
            {
              goto LABEL_28;
            }

            v13 = *(a1 + 8 * a2 + 32);
          }

          v14 = v13;
          v8 = (a2 + 1);
          if (__OFADD__(a2, 1))
          {
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          v15 = [v13 effectiveParentItemIdentifier];
          v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v18 = v17;
          if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
          {
          }

          else
          {
            v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v21 & 1) == 0)
            {
              v31(0);

              return;
            }
          }

          ++a2;
          if (v8 == v9)
          {

            v8 = v30;
            goto LABEL_23;
          }
        }
      }

      __break(1u);
      goto LABEL_37;
    }
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v28 = a2;

  v31(0);
}

void specialized static UIDocumentBrowserAction._fetchParent(items:completion:)(unint64_t a1, void (*a2)(void), id a3)
{
  if (!(a1 >> 62))
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_32:
    a2(0);
    return;
  }

LABEL_29:
  if (__CocoaSet.count.getter() < 1)
  {
    goto LABEL_32;
  }

  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    v7 = a1 & 0xC000000000000001;
LABEL_23:
    v6 = [objc_opt_self() defaultManager];
    if (!v7)
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v18 = *(a1 + 32);
LABEL_26:
      v19 = v18;
      v20 = [v18 itemID];

      v21 = swift_allocObject();
      *(v21 + 16) = a2;
      *(v21 + 24) = a3;
      aBlock[4] = closure #2 in static UIDocumentBrowserAction._fetchParent(items:completion:)partial apply;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [FPItem]?, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_341;
      v22 = _Block_copy(aBlock);

      [v6 fetchParentsForItemID:v20 recursively:0 completionHandler:v22];

      _Block_release(v22);
      return;
    }

LABEL_36:
    v18 = MEMORY[0x24C1FC540](0, a1);
    goto LABEL_26;
  }

LABEL_3:
  v7 = a1 & 0xC000000000000001;
  v23 = a2;
  v24 = a3;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x24C1FC540](0, a1);
    v25 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_6;
  }

  v25 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_36;
  }

  v8 = *(a1 + 32);
LABEL_6:
  v26 = [v8 effectiveParentItemIdentifier];

  v9 = 0;
  while (1)
  {
    if (v7)
    {
      v10 = MEMORY[0x24C1FC540](v9, a1);
    }

    else
    {
      if (v9 >= *(v25 + 16))
      {
        goto LABEL_28;
      }

      v10 = *(a1 + 8 * v9 + 32);
    }

    a2 = v10;
    a3 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v11 = [v10 effectiveParentItemIdentifier];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
    if (v12 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v14 != v15)
    {
      break;
    }

LABEL_8:
    ++v9;
    if (a3 == v6)
    {

      a2 = v23;
      a3 = v24;
      goto LABEL_23;
    }
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v17)
  {
    goto LABEL_8;
  }

  v23(0);
}

void specialized static UIDocumentBrowserAction.fetchParent(nodes:completion:)(unint64_t a1, int64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_89:
    if (__CocoaSet.count.getter() >= 1)
    {
      goto LABEL_3;
    }

LABEL_90:
    (a2)(0);
    return;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_90;
  }

LABEL_3:

  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  v42 = a2;
  v43 = a3;
  if (v7 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  }

  a2 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v49 = (v6 & 0xFFFFFFFFFFFFFF8);
  v7 = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
  v9 = 0;
  if (a2)
  {
LABEL_7:
    v10 = (v7 + 8 * v9);
    while (1)
    {
      v11 = *v10;
      swift_getObjectType();
      a3 = v11;
      if (DOCNode.isFINode.getter())
      {
        break;
      }

      ++v9;
      ++v10;
      if (v9 >= a2)
      {
        goto LABEL_15;
      }
    }

    v3 = (v7 + 8 * a2);
    while (v9 < --a2)
    {
      v12 = *--v3;
      a3 = v12;
      swift_getObjectType();
      if (!DOCNode.isFINode.getter())
      {
        *v10 = *v3;
        *v3 = v11;
        if (++v9 < a2)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

LABEL_15:
  v13 = v6 >> 62;
  if (!(v6 >> 62))
  {
    v14 = v6 & 0xFFFFFFFFFFFFFF8;
    v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15 >= v9)
    {
      goto LABEL_17;
    }

LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

LABEL_92:
  v14 = v49;
  if (v6 < 0)
  {
    a3 = v6;
  }

  else
  {
    a3 = v49;
  }

  v41 = __CocoaSet.count.getter();
  if (v41 < v9)
  {
    __break(1u);
    return;
  }

  v15 = v41;
  if (__CocoaSet.count.getter() < v9)
  {
    __break(1u);
    goto LABEL_98;
  }

LABEL_17:
  if (v9 < 0)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    v32 = __CocoaSet.count.getter();
    if (!v32)
    {
LABEL_104:

      specialized static UIDocumentBrowserAction._fetchParent(items:completion:)(v3, v42, v43);

      return;
    }

    goto LABEL_66;
  }

  if (v13)
  {
    v16 = __CocoaSet.count.getter();
  }

  else
  {
    v16 = *(v14 + 16);
  }

  if (v16 < v15)
  {
    goto LABEL_100;
  }

  if (v15 < 0)
  {
    goto LABEL_101;
  }

  v44 = v6 & 0xC000000000000001;
  if ((v6 & 0xC000000000000001) != 0 && v9 != v15)
  {
    if (v9 >= v15)
    {
      goto LABEL_109;
    }

    v17 = v9;
    a2 = &_sSo7DOCNode_pMR;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      _ArrayBuffer._typeCheckSlowPath(_:)(v17++);
    }

    while (v15 != v17);
    v46 = v6;
    v47 = v13;
    if (!v13)
    {
      goto LABEL_29;
    }

LABEL_31:

    _CocoaArrayWrapper.subscript.getter();
    v18 = v19;
    v3 = v20;
    v15 = v21 >> 1;
    goto LABEL_32;
  }

  v46 = v6;
  v47 = v13;
  if (v13)
  {
    goto LABEL_31;
  }

LABEL_29:
  v18 = v7;
  v3 = v9;
LABEL_32:
  a3 = MEMORY[0x277D84F90];
  v52 = MEMORY[0x277D84F90];
  swift_unknownObjectRetain();
  v6 = v3;
  v50 = a3;
  v22 = v3;
  while (v15 != v22)
  {
    if (v6 < v3 || v22 >= v15)
    {
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    a3 = *(v18 + 8 * v22++);
    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (v23)
    {
      a2 = v23;
      v24 = swift_unknownObjectRetain();
      MEMORY[0x24C1FB090](v24);
      if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      a3 = &v52;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v50 = v52;
      v6 = v22;
    }
  }

  swift_unknownObjectRelease_n();
  if (v47)
  {
    v13 = v46;
    if (v46 < 0)
    {
      a3 = v46;
    }

    else
    {
      a3 = v49;
    }

    if (__CocoaSet.count.getter() < 0)
    {
      goto LABEL_110;
    }

    v25 = __CocoaSet.count.getter();
  }

  else
  {
    v25 = v49[2];
    v13 = v46;
  }

  if (v25 < v9)
  {
    goto LABEL_102;
  }

  if (v44)
  {

    if (v9)
    {
      v26 = 0;
      a3 = &_sSo7DOCNode_pMd;
      do
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
        _ArrayBuffer._typeCheckSlowPath(_:)(v26++);
      }

      while (v9 != v26);
    }

    if (!v47)
    {
      goto LABEL_53;
    }

LABEL_55:

    _CocoaArrayWrapper.subscript.getter();
    v7 = v28;
    v27 = v29;
    v9 = v30 >> 1;
    goto LABEL_56;
  }

  if (v47)
  {
    goto LABEL_55;
  }

LABEL_53:
  v27 = 0;
LABEL_56:
  v3 = MEMORY[0x277D84F90];
  v52 = MEMORY[0x277D84F90];
  swift_unknownObjectRetain();
  a2 = v27;
  v6 = v27;
  while (v9 != v6)
  {
    if (a2 < v27 || v6 >= v9)
    {
      goto LABEL_87;
    }

    a3 = *(v7 + 8 * v6++);
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v31 = swift_unknownObjectRetain();
      MEMORY[0x24C1FB090](v31);
      if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      a3 = &v52;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v3 = v52;
      a2 = v6;
    }
  }

  swift_unknownObjectRelease_n();
  v15 = v50;
  if (v50 >> 62)
  {
    goto LABEL_103;
  }

  v32 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v32)
  {
    goto LABEL_104;
  }

LABEL_66:
  a2 = v15 & 0xC000000000000001;
  v45 = v3;
  if ((v15 & 0xC000000000000001) != 0)
  {
    v33 = MEMORY[0x24C1FC540](0, v15);
LABEL_69:
    v34 = v33;
    v3 = &selRef_initWithFrame_;
    v49 = [v33 parent];

    if (!v49)
    {

      v42(0);
      return;
    }

    v7 = 0;
    v48 = v15 & 0xFFFFFFFFFFFFFF8;
    while (v32 != v7)
    {
      if (a2)
      {
        v35 = MEMORY[0x24C1FC540](v7, v15);
      }

      else
      {
        if (v7 >= *(v48 + 16))
        {
          __break(1u);
          goto LABEL_92;
        }

        v35 = *(v15 + 8 * v7 + 32);
      }

      v9 = v35;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_88;
      }

      v36 = [v35 &selRef_separatorColor];
      if (!v36)
      {

        goto LABEL_85;
      }

      v6 = v36;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
      v37 = v49;
      a3 = static NSObject.== infix(_:_:)();

      v15 = v50;
      ++v7;
      if ((a3 & 1) == 0)
      {

LABEL_85:
        v42(0);
        v40 = v49;
        goto LABEL_114;
      }
    }

    a2 = v45;
    if (v45 >> 62)
    {
      goto LABEL_111;
    }

    v38 = v42;
    v39 = v43;
    if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_83;
    }

    goto LABEL_112;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v33 = *(v15 + 32);
    goto LABEL_69;
  }

  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  v38 = v42;
  v39 = v43;
  if (__CocoaSet.count.getter())
  {
LABEL_83:
    v51 = v49;

    specialized static UIDocumentBrowserAction._fetchParent(items:completion:)(a2, v51, v38, v39);

    goto LABEL_113;
  }

LABEL_112:

  v51 = v49;
  v38(v49);
LABEL_113:

  v40 = v51;
LABEL_114:
}

id specialized static UIDocumentBrowserAction.deleteAction(title:)(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D05F90];
  v5 = objc_allocWithZone(MEMORY[0x277D05F28]);
  v6 = v4;
  v7 = MEMORY[0x24C1FAD20](a1, a2);
  v13[4] = closure #1 in static UIDocumentBrowserAction.deleteAction(title:);
  v13[5] = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
  v13[3] = &block_descriptor_300;
  v8 = _Block_copy(v13);
  v9 = [v5 initWithIdentifier:v6 localizedTitle:v7 unresolvedHandler:v8];

  _Block_release(v8);

  v10 = MEMORY[0x24C1FAD20](0x6873617274, 0xE500000000000000);
  v11 = [objc_opt_self() systemImageNamed_];

  [v9 setImage_];
  [v9 setAvailability_];
  [v9 setNavigationSide_];
  [v9 setMenuSortOrder_];
  [v9 setActionStyle_];
  [v9 setRequiresFullyFormedItems_];
  return v9;
}

id specialized DOCFolderIconCustomizationApplicator.init(withNode:tagRegistry:tagsControllerCreator:)(void *a1, void *a2, uint64_t a3, uint64_t a4, char *a5)
{
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_allTags;
  v10 = MEMORY[0x277D84F90];
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_allTags] = MEMORY[0x277D84F90];
  v11 = &a5[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_changeTrigger];
  *v11 = DOCGridLayout.specIconWidth.modify;
  *(v11 + 1) = 0;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_folderObserver] = 0;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_traitCollection] = 0;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_unrealizedTagAdditions] = v10;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_unrealizedTagDeletions] = v10;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator____lazy_storage___tagsController] = 0;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_node] = a1;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_tagRegistry] = a2;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_fiNode] = a1;
  v12 = a1;
  a2;
  v13 = specialized DOCNode.fpfs_syncFetchFPItem()();
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v27 = a3;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_249B9FA70;
    *(v15 + 56) = MEMORY[0x277D837D0];
    v16 = lazy protocol witness table accessor for type String and conformance String();
    *(v15 + 64) = v16;
    *(v15 + 32) = 0xD000000000000031;
    *(v15 + 40) = 0x8000000249BDCEC0;
    v17 = [v12 displayName];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    *(v15 + 96) = MEMORY[0x277D837D0];
    *(v15 + 104) = v16;
    *(v15 + 72) = v18;
    *(v15 + 80) = v20;

    os_log(_:dso:log:type:_:)();

    a3 = v27;
  }

  v21 = &a5[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_tagsControllerCreator];
  *v21 = a3;
  *(v21 + 1) = a4;

  v29 = DOCTagRegistry.lightweightUserTags.getter();

  v23 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17DesktopServicesUI20DSLightweightTagInfoC_SayAFGTt0g5Tf4g_n(v22);

  v30 = v23;
  v24 = DOCTagRegistry.lightweightDiscoveredTags.getter();
  v25 = specialized _ArrayProtocol.filter(_:)(v24);

  specialized Array.append<A>(contentsOf:)(v25);

  swift_beginAccess();
  *&a5[v9] = v29;

  v28.receiver = a5;
  v28.super_class = type metadata accessor for DOCFolderIconCustomizationApplicator();
  return objc_msgSendSuper2(&v28, sel_init);
}

{
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_allTags;
  v11 = MEMORY[0x277D84F90];
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_allTags] = MEMORY[0x277D84F90];
  v12 = &a5[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_changeTrigger];
  *v12 = DOCGridLayout.specIconWidth.modify;
  *(v12 + 1) = 0;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_folderObserver] = 0;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_traitCollection] = 0;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_unrealizedTagAdditions] = v11;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_unrealizedTagDeletions] = v11;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator____lazy_storage___tagsController] = 0;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_node] = a1;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_tagRegistry] = a2;
  swift_unknownObjectRetain();
  a2;
  v13 = DOCNode.fpfs_syncFetchFINode()();
  if (v14)
  {

    v13 = 0;
  }

  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_fiNode] = v13;
  v15 = DOCNode.fpfs_syncFetchFPItem()();
  if (v15)
  {
    v16 = v15;
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = a3;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_249B9FA70;
    *(v17 + 56) = MEMORY[0x277D837D0];
    v18 = lazy protocol witness table accessor for type String and conformance String();
    *(v17 + 64) = v18;
    *(v17 + 32) = 0xD000000000000031;
    *(v17 + 40) = 0x8000000249BDCEC0;
    v19 = [a1 displayName];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    *(v17 + 96) = MEMORY[0x277D837D0];
    *(v17 + 104) = v18;
    *(v17 + 72) = v20;
    *(v17 + 80) = v22;
    swift_unknownObjectRelease();
    os_log(_:dso:log:type:_:)();

    a3 = v29;
  }

  v23 = &a5[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator_tagsControllerCreator];
  *v23 = a3;
  *(v23 + 1) = a4;

  v31 = DOCTagRegistry.lightweightUserTags.getter(&selRef_userTags);

  v25 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17DesktopServicesUI20DSLightweightTagInfoC_SayAFGTt0g5Tf4g_n(v24);

  v32 = v25;
  v26 = DOCTagRegistry.lightweightUserTags.getter(&selRef_discoveredTags);
  v27 = specialized _ArrayProtocol.filter(_:)(v26);

  specialized Array.append<A>(contentsOf:)(v27);

  swift_beginAccess();
  *&a5[v10] = v31;

  v30.receiver = a5;
  v30.super_class = type metadata accessor for DOCFolderIconCustomizationApplicator();
  return objc_msgSendSuper2(&v30, sel_init);
}

id specialized static UIDocumentBrowserAction.manageShareAction(with:)(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D05FC8];
  v5 = objc_allocWithZone(MEMORY[0x277D05F28]);
  v6 = v4;
  v7 = MEMORY[0x24C1FAD20](a1, a2);
  v19 = closure #1 in static UIDocumentBrowserAction.manageShareAction(with:);
  v20 = 0;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
  v18 = &block_descriptor_185;
  v8 = _Block_copy(&v15);
  v9 = [v5 initWithIdentifier:v6 localizedTitle:v7 unresolvedHandler:v8];

  _Block_release(v8);

  v10 = MEMORY[0x24C1FAD20](0xD000000000000022, 0x8000000249BDCBA0);
  v11 = [objc_opt_self() systemImageNamed_];

  [v9 setImage_];
  [v9 setSupportsMultipleItems_];
  [v9 setNavigationSide_];
  [v9 setAvailability_];
  [v9 setMenuSortOrder_];
  v19 = specialized closure #1 in static NSPredicate.validateAction(_:);
  v20 = 0;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [String : Any]?) -> (@unowned Bool);
  v18 = &block_descriptor_188;
  v12 = _Block_copy(&v15);
  v13 = [objc_opt_self() predicateWithBlock_];
  _Block_release(v12);

  [v9 setFilteringPredicate_];

  return v9;
}

void specialized static UIDocumentBrowserAction.createiCloudLinkAction(targetNode:)()
{
  v0 = *MEMORY[0x277D05F88];
  v1 = _DocumentManagerBundle();
  if (v1)
  {
    v2 = v1;
    v21._object = 0x8000000249BDCB60;
    v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v3.value._object = 0xEB00000000656C62;
    v4._object = 0x8000000249BDCB40;
    v4._countAndFlagsBits = 0x1000000000000015;
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    v21._countAndFlagsBits = 0xD000000000000033;
    v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v21);

    v7 = objc_allocWithZone(MEMORY[0x277D05F28]);
    v8 = MEMORY[0x24C1FAD20](v6._countAndFlagsBits, v6._object);

    v19 = closure #1 in static UIDocumentBrowserAction.createiCloudLinkAction(targetNode:);
    v20 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
    v18 = &block_descriptor_158_0;
    v9 = _Block_copy(&aBlock);
    v10 = [v7 initWithIdentifier:v0 localizedTitle:v8 unresolvedHandler:v9];

    _Block_release(v9);

    v11 = MEMORY[0x24C1FAD20](1802398060, 0xE400000000000000);
    v12 = [objc_opt_self() systemImageNamed_];

    [v10 setImage_];
    [v10 setAvailability_];
    [v10 setSupportsMultipleItems_];
    [v10 setMenuSortOrder_];
    v19 = specialized closure #1 in static NSPredicate.validateAction(_:);
    v20 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [String : Any]?) -> (@unowned Bool);
    v18 = &block_descriptor_161;
    v13 = _Block_copy(&aBlock);
    v14 = [objc_opt_self() predicateWithBlock_];
    _Block_release(v13);

    [v10 setFilteringPredicate_];
  }

  else
  {

    __break(1u);
  }
}

void specialized static UIDocumentBrowserAction.presentCreateiCloudLinkViewController(actionContext:url:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CreateiCloudLinkView();
  v39 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v37 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any(a1, v41);
  type metadata accessor for DOCActionContext();
  if (swift_dynamicCast())
  {
    v17 = v40;
    v18 = *&v40[OBJC_IVAR___DOCActionContext_presentingViewController];
    type metadata accessor for DOCItemCollectionViewController(0);
    v19 = swift_dynamicCastClass();
    if (v19)
    {
      v20 = v19;
      v38 = v17;
      (*(v13 + 16))(v16, a2, v12);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for CreateiCloudLinkViewModel();
      swift_allocObject();
      v21 = v18;
      CreateiCloudLinkViewModel.init(fileURL:optionsGroups:dismissAction:)();

      CreateiCloudLinkView.init(viewModel:)();
      (*(v39 + 16))(v7, v11, v4);
      v22 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCy012CloudSharingB007CreateiE8LinkViewVGMd));
      v23 = UIHostingController.init(rootView:)();
      [v23 setModalPresentationStyle_];
      [v20 presentViewController:v23 animated:1 completion:0];
      v24 = [v23 presentationController];
      if (v24)
      {
        v25 = v24;
        objc_opt_self();
        v26 = swift_dynamicCastObjCClass();
        if (v26)
        {
          v27 = v26;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_249BA1010;
          v29 = objc_opt_self();
          v37 = v21;
          v30 = v39;
          v31 = v29;
          *(v28 + 32) = [v29 mediumDetent];
          *(v28 + 40) = [v31 largeDetent];
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UISheetPresentationControllerDetent);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v27 setDetents_];

          (*(v30 + 8))(v11, v4);
        }

        else
        {

          (*(v39 + 8))(v11, v4);
        }
      }

      else
      {
        (*(v39 + 8))(v11, v4);
      }

      return;
    }
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logger.UI);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_2493AC000, v34, v35, "No valid presentingViewController found. Can't present create iCloud link view controller.", v36, 2u);
    MEMORY[0x24C1FE850](v36, -1, -1);
  }
}

void specialized static UIDocumentBrowserAction.copyiCloudLinkAction(targetNode:)()
{
  v0 = *MEMORY[0x277D05F80];
  v1 = _DocumentManagerBundle();
  if (v1)
  {
    v2 = v1;
    v21._object = 0x8000000249BDCAB0;
    v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v3.value._object = 0xEB00000000656C62;
    v4._object = 0x8000000249BDCA90;
    v21._countAndFlagsBits = 0xD000000000000031;
    v4._countAndFlagsBits = 0xD000000000000010;
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v21);

    v7 = objc_allocWithZone(MEMORY[0x277D05F28]);
    v8 = MEMORY[0x24C1FAD20](v6._countAndFlagsBits, v6._object);

    v19 = closure #1 in static UIDocumentBrowserAction.copyiCloudLinkAction(targetNode:);
    v20 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
    v18 = &block_descriptor_143;
    v9 = _Block_copy(&aBlock);
    v10 = [v7 initWithIdentifier:v0 localizedTitle:v8 unresolvedHandler:v9];

    _Block_release(v9);

    v11 = MEMORY[0x24C1FAD20](1802398060, 0xE400000000000000);
    v12 = [objc_opt_self() systemImageNamed_];

    [v10 setImage_];
    [v10 setAvailability_];
    [v10 setSupportsMultipleItems_];
    [v10 setMenuSortOrder_];
    v19 = specialized closure #1 in static NSPredicate.validateAction(_:);
    v20 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [String : Any]?) -> (@unowned Bool);
    v18 = &block_descriptor_146;
    v13 = _Block_copy(&aBlock);
    v14 = [objc_opt_self() predicateWithBlock_];
    _Block_release(v13);

    [v10 setFilteringPredicate_];
  }

  else
  {

    __break(1u);
  }
}

id specialized static UIDocumentBrowserAction.fetchPublishingURLAction()()
{
  result = _DocumentManagerBundle();
  if (result)
  {
    v1 = result;
    v22._object = 0x8000000249BDC9C0;
    v2._countAndFlagsBits = 0x6E694C2079706F43;
    v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v3.value._object = 0xEB00000000656C62;
    v2._object = 0xE90000000000006BLL;
    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    v22._countAndFlagsBits = 0xD00000000000004ELL;
    v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v22);

    v6 = *MEMORY[0x277D05F78];
    v7 = objc_allocWithZone(MEMORY[0x277D05F28]);
    v8 = v6;
    v9 = MEMORY[0x24C1FAD20](v5._countAndFlagsBits, v5._object);

    v20 = closure #1 in static UIDocumentBrowserAction.fetchPublishingURLAction();
    v21 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
    v19 = &block_descriptor_134;
    v10 = _Block_copy(&aBlock);
    v11 = [v7 initWithIdentifier:v8 localizedTitle:v9 unresolvedHandler:v10];

    _Block_release(v10);

    v12 = MEMORY[0x24C1FAD20](1802398060, 0xE400000000000000);
    v13 = [objc_opt_self() systemImageNamed_];

    [v11 setImage_];
    [v11 setPerformActionExitsEditMode_];
    [v11 setSupportsMultipleItems_];
    [v11 setNavigationSide_];
    [v11 setAvailability_];
    [v11 setMenuSortOrder_];
    v20 = specialized closure #1 in static NSPredicate.validateAction(_:);
    v21 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [String : Any]?) -> (@unowned Bool);
    v19 = &block_descriptor_137_0;
    v14 = _Block_copy(&aBlock);
    v15 = [objc_opt_self() predicateWithBlock_];
    _Block_release(v14);

    [v11 setFilteringPredicate_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t objectdestroy_93Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

void specialized UIPopoverPresentationController._doc_sourceInfoReloader.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  v6 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo31UIPopoverPresentationControllerC_Tt1B5(v3, static UIPopoverPresentationController.associatedObjectStorageKey);
  KeyPath = swift_getKeyPath();
  if (a1)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    v9 = thunk for @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v11[0] = v9;
  v11[1] = v8;
  v10 = *((*MEMORY[0x277D85000] & *v6) + 0x80);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a1);
  v10(v11, KeyPath);
}

void partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static UIDocumentBrowserAction.copyiCloudLinkAction(targetNode:)()
{
  type metadata accessor for URL();

  closure #1 in closure #1 in closure #1 in closure #1 in static UIDocumentBrowserAction.copyiCloudLinkAction(targetNode:)();
}

void partial apply for closure #1 in closure #1 in closure #1 in static UIDocumentBrowserAction.createiCloudLinkAction(targetNode:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  specialized static UIDocumentBrowserAction.presentCreateiCloudLinkViewController(actionContext:url:)(v0 + 16, v2);
}

void partial apply for closure #1 in static UIDocumentBrowserAction.showManageShare(for:actionContext:)(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  swift_getObjectType();

  specialized presentViewController #1 (_:error:) in static UIDocumentBrowserAction.showManageShare(for:actionContext:)(a1, a2, v6, v5);
}

uint64_t objectdestroy_181Tm()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void partial apply for closure #1 in presentViewController #1 (_:error:) in static UIDocumentBrowserAction.showManageShare(for:actionContext:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in presentViewController #1 (_:error:) in static UIDocumentBrowserAction.showManageShare(for:actionContext:)(v0 + v2, v3);
}

uint64_t _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_211Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroyTm_6()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_311Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_175Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t partial apply for closure #2 in closure #1 in static UIDocumentBrowserAction.copyAction(numberOfItems:)()
{
  v1 = *(v0 + 16);
  *v1 = itemProvidersForPasteboard #1 (nodes:) in static UIDocumentBrowserAction.copyAction(numberOfItems:)(*(v0 + 24));
}

uint64_t outlined destroy of NSURLResourceKey(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type FPItem and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type FPItem and conformance NSObject;
  if (!lazy protocol witness table cache variable for type FPItem and conformance NSObject)
  {
    type metadata accessor for NSMutableAttributedString(255, &lazy cache variable for type metadata for FPItem);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FPItem and conformance NSObject);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FPItem and conformance NSObject;
  if (!lazy protocol witness table cache variable for type FPItem and conformance NSObject)
  {
    type metadata accessor for NSMutableAttributedString(255, &lazy cache variable for type metadata for FPItem);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FPItem and conformance NSObject);
  }

  return result;
}

char *DOCProgressCollectionIndicatorView.__allocating_init(style:source:pacingInterval:)(char *a1, uint64_t a2, uint64_t a3, double a4)
{
  ObjectType = swift_getObjectType();

  return specialized DOCProgressCollectionIndicatorView.__allocating_init(style:source:pacingInterval:)(a1, a2, a4, v4, ObjectType, a3);
}

uint64_t DOCProgressCollectionIndicatorView.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  DOCProgressCollectionIndicatorView.updateInteractions()();
  return swift_unknownObjectRelease();
}

void (*DOCProgressCollectionIndicatorView.delegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCProgressCollectionIndicatorView.delegate.modify;
}

void DOCProgressCollectionIndicatorView.delegate.modify(void **a1, char a2)
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
    DOCProgressCollectionIndicatorView.updateInteractions()();
  }

  free(v3);
}

uint64_t DOCProgressCollectionIndicatorView.enabled.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_enabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCProgressCollectionIndicatorView.enabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_enabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
  DOCProgressCollectionIndicatorView.updateInteractions()();
}

void (*DOCProgressCollectionIndicatorView.enabled.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCProgressCollectionIndicatorView.enabled.modify;
}

void DOCProgressCollectionIndicatorView.enabled.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    DOCProgressCollectionIndicatorView.updateInteractions()();
  }
}

uint64_t DOCProgressCollectionIndicatorView.combinedProgress.getter()
{
  v1 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_combinedProgress;
  swift_beginAccess();
  return *v1;
}

void DOCProgressCollectionIndicatorView.combinedProgress.setter(uint64_t a1, char a2)
{
  v5 = a2 & 1;
  v6 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_combinedProgress;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  *v6 = *&a1;
  *(v6 + 8) = v5;
  if (a2)
  {
    if (v8)
    {
      return;
    }

LABEL_6:
    DOCProgressCollectionIndicatorView.didChangeCombinedProgress(oldValue:)(v7, v8);
    return;
  }

  if ((v8 & 1) != 0 || *&a1 != *&v7)
  {
    goto LABEL_6;
  }
}

void (*DOCProgressCollectionIndicatorView.combinedProgress.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_combinedProgress;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;
  return DOCProgressCollectionIndicatorView.combinedProgress.modify;
}

void DOCProgressCollectionIndicatorView.combinedProgress.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 40) + *(*a1 + 48);
  v4 = *(*a1 + 32);
  v5 = *v3;
  v6 = *(v3 + 8);
  *v3 = v2;
  *(v3 + 8) = v4;
  if (v4)
  {
    if (v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if ((v6 & 1) != 0 || v2 != *&v5)
  {
LABEL_6:
    DOCProgressCollectionIndicatorView.didChangeCombinedProgress(oldValue:)(v5, v6);
  }

LABEL_7:

  free(v1);
}

uint64_t DOCProgressCollectionIndicatorView.autohideContentOnCompletion.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_autohideContentOnCompletion;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCProgressCollectionIndicatorView.autohideContentOnCompletion.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_autohideContentOnCompletion;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *DOCProgressCollectionIndicatorView.preferredIconColor.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_preferredIconColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCProgressCollectionIndicatorView.preferredIconColor.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_preferredIconColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (!a1)
  {
    if (!v4)
    {
      return;
    }

    v6 = 0;
    a1 = 0;
    goto LABEL_9;
  }

  if (!v4)
  {
    v6 = a1;
LABEL_9:
    v9 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_aggregateIndicatorView);
    v10 = *((*MEMORY[0x277D85000] & *v9) + 0x88);
    v11 = a1;
    v12 = v9;
    v10(a1);

    goto LABEL_10;
  }

  v5 = v1;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor);
  v6 = a1;
  v7 = v4;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    v1 = v5;
    a1 = *(v5 + v3);
    goto LABEL_9;
  }

  v4 = v7;
LABEL_10:
}

void (*DOCProgressCollectionIndicatorView.preferredIconColor.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_preferredIconColor;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return DOCProgressCollectionIndicatorView.preferredIconColor.modify;
}

void DOCProgressCollectionIndicatorView.preferredIconColor.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v6 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v7 = *(v6 + v5);
  *(v6 + v5) = *v4;
  if (a2)
  {
    if (v3)
    {
      if (v7)
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor);
        v8 = v3;
        v9 = v7;
        v10 = static NSObject.== infix(_:_:)();

        if (v10)
        {

LABEL_18:
          goto LABEL_19;
        }

        v3 = *(v2[4] + v2[5]);
      }

      else
      {
        v8 = v3;
      }
    }

    else
    {
      if (!v7)
      {
LABEL_19:
        v11 = *v4;
        goto LABEL_22;
      }

      v8 = 0;
      v3 = 0;
    }

    v15 = *(v2[4] + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_aggregateIndicatorView);
    v16 = *((*MEMORY[0x277D85000] & *v15) + 0x88);
    v17 = v3;
    v18 = v15;
    v16(v3);

    v8 = v7;
    goto LABEL_18;
  }

  if (!v3)
  {
    if (!v7)
    {
      goto LABEL_23;
    }

    v14 = 0;
    v11 = 0;
    v3 = 0;
    goto LABEL_21;
  }

  if (!v7)
  {
    v14 = v3;
    v11 = v14;
LABEL_21:
    v19 = *(v2[4] + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_aggregateIndicatorView);
    v20 = *((*MEMORY[0x277D85000] & *v19) + 0x88);
    v21 = v19;
    v22 = v14;
    v20(v3);

    v11 = v7;
    goto LABEL_22;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor);
  v11 = v3;
  v12 = v7;
  v13 = static NSObject.== infix(_:_:)();

  if ((v13 & 1) == 0)
  {
    v14 = *(v2[4] + v2[5]);
    v3 = v14;
    goto LABEL_21;
  }

LABEL_22:
LABEL_23:

  free(v2);
}

id DOCProgressCollectionIndicatorView.didTapGestureRecognizer.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView____lazy_storage___didTapGestureRecognizer;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView____lazy_storage___didTapGestureRecognizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView____lazy_storage___didTapGestureRecognizer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v0 action:sel_didTap];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *DOCProgressCollectionIndicatorView.init(style:source:pacingInterval:)(char *a1, uint64_t a2, uint64_t a3, double a4)
{
  ObjectType = swift_getObjectType();

  return specialized DOCProgressCollectionIndicatorView.init(style:source:pacingInterval:)(a1, a2, v4, a4, ObjectType, a3);
}

void closure #1 in DOCProgressCollectionIndicatorView.init(style:source:pacingInterval:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    DOCProgressCollectionIndicatorView.updateCombinedProgress()();
  }
}

void DOCProgressCollectionIndicatorView.debug(_:)(uint64_t a1, unint64_t a2)
{
  if (one-time initialization token for ProgressUI != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.ProgressUI);
  v6 = v2;

  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315394;
    v10 = &v6[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_debugID];
    v11 = *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_debugID];
    v12 = *(v10 + 1);
    v13 = *(v10 + 2);
    v14 = *(v10 + 3);

    v15 = MEMORY[0x24C1FAE00](v11, v12, v13, v14);
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v20);

    *(v8 + 4) = v18;
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v20);
    _os_log_impl(&dword_2493AC000, oslog, v7, "[Indicator:%s] %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v9, -1, -1);
    MEMORY[0x24C1FE850](v8, -1, -1);
  }
}

void DOCProgressCollectionIndicatorView.configureViews()()
{
  v1 = v0;
  v2 = DOCProgressCollectionIndicatorView.didTapGestureRecognizer.getter();
  [v2 setEnabled_];

  [v0 addGestureRecognizer_];
  v3 = [objc_allocWithZone(MEMORY[0x277D75870]) initWithDelegate_];
  v4 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_pointerInteraction;
  v6 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_pointerInteraction];
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_pointerInteraction] = v3;
  if (!v3)
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    v8 = v6;
    goto LABEL_7;
  }

  if (!v6)
  {
    v25 = v3;
    if (!v4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIPointerInteraction);
  v7 = v4;
  v8 = v6;
  v9 = static NSObject.== infix(_:_:)();

  if ((v9 & 1) == 0)
  {
LABEL_7:
    [v1 removeInteraction_];
    if (!*&v1[v5])
    {
LABEL_9:

      v8 = v6;
      goto LABEL_10;
    }

LABEL_8:
    [v1 addInteraction_];
    goto LABEL_9;
  }

LABEL_10:
LABEL_11:
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_aggregateIndicatorView;
  [*&v1[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_aggregateIndicatorView] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v1[v10] setHidden_];
  [v1 addSubview_];
  v11 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_249BA0470;
  v13 = [*&v1[v10] leadingAnchor];
  v14 = [v1 leadingAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v12 + 32) = v15;
  v16 = [*&v1[v10] trailingAnchor];
  v17 = [v1 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v12 + 40) = v18;
  v19 = [*&v1[v10] topAnchor];
  v20 = [v1 topAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v12 + 48) = v21;
  v22 = [*&v1[v10] bottomAnchor];
  v23 = [v1 bottomAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v12 + 56) = v24;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v11 activateConstraints_];
}

void DOCProgressCollectionIndicatorView.updateInteractions()()
{
  v1 = v0;
  v2 = type metadata accessor for UIShape();
  v20 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit7UIShapeVSgMd);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = &v19 - v9;
  v11 = MEMORY[0x277D85000];
  v12 = *((*MEMORY[0x277D85000] & *v0) + 0xB8);
  if (v12(v8) && (v13 = swift_unknownObjectRelease(), ((*((*v11 & *v0) + 0xD0))(v13) & 1) != 0))
  {
    v14 = v0[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_isShowingContent];
  }

  else
  {
    v14 = 0;
  }

  v15 = DOCProgressCollectionIndicatorView.didTapGestureRecognizer.getter();
  [v15 setEnabled_];

  v16 = [*&v1[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_pointerInteraction] setEnabled_];
  if (v1[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_isShowingContent] == 1 && (v12)(v16))
  {
    swift_unknownObjectRelease();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIHoverStyle);
    static UIShape.circle.getter();
    UIShape.inset(by:)();
    v17 = v20;
    (*(v20 + 8))(v5, v2);
    (*(v17 + 56))(v10, 0, 1, v2);
    v18 = UIHoverStyle.init(shape:)();
    [v1 setHoverStyle_];
  }

  else
  {

    [v1 setHoverStyle_];
  }
}

Swift::Void __swiftcall DOCProgressCollectionIndicatorView.didTap()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0xB8))();
  if (v1)
  {
    [v1 progressIndicatorViewDidReceiveTap_];

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall DOCProgressCollectionIndicatorView.didMoveToWindow()()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for DOCProgressCollectionIndicatorView();
  objc_msgSendSuper2(&v13, sel_didMoveToWindow);
  v11 = v0;
  v1 = [v0 isHidden];
  if ((v1 & 1) != 0 || (v1 = [*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_aggregateIndicatorView] isHidden], v1) || (v1 = objc_msgSend(v0, sel_window)) == 0)
  {
    MEMORY[0x28223BE20](v1, v2);
    v9[2] = partial apply for closure #1 in DOCProgressCollectionIndicatorView.didMoveToWindow();
    v9[3] = &v10;
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = partial apply for thunk for @callee_guaranteed () -> ();
    *(v6 + 24) = v9;
    v7 = swift_allocObject();
    *(v7 + 16) = partial apply for closure #1 in UIView.performWithoutAllAnimation(_:);
    *(v7 + 24) = v6;
    aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_59;
    v8 = _Block_copy(aBlock);

    [v5 performWithoutAnimation_];
    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }

  else
  {

    v3 = [v0 window];
    if (v3)
    {

      v4 = [v0 isHidden];
      if (v4 == v0[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_sourceUpdateHandlerIsInstalled])
      {
        if ((v4 & 1) == 0)
        {
          DOCProgressCollectionIndicatorView.startObserving()();
          return;
        }

        goto LABEL_11;
      }
    }

    else if (v0[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_sourceUpdateHandlerIsInstalled])
    {
LABEL_11:
      DOCProgressCollectionIndicatorView.stopObserving()();
    }
  }
}

void DOCProgressCollectionIndicatorView.isHidden.didset(char a1)
{
  v2 = v1;
  if ([v1 isHidden] != (a1 & 1))
  {
    _StringGuts.grow(_:)(22);

    strcpy(&aBlock, "isHidden now ");
    HIWORD(aBlock) = -4864;
    v3 = [v1 isHidden];
    v4 = v3 == 0;
    if (v3)
    {
      v5 = 1702195828;
    }

    else
    {
      v5 = 0x65736C6166;
    }

    if (v4)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }

    MEMORY[0x24C1FAEA0](v5, v6);

    MEMORY[0x24C1FAEA0](0x20726F6620, 0xE500000000000000);
    v7 = [v1 description];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    MEMORY[0x24C1FAEA0](v8, v10);

    DOCProgressCollectionIndicatorView.debug(_:)(aBlock, *(&aBlock + 1));

    v22[2] = v2;
    v13 = [v2 isHidden];
    if ((v13 & 1) != 0 || (v13 = [*&v2[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_aggregateIndicatorView] isHidden], v13) || (v13 = objc_msgSend(v2, sel_window)) == 0)
    {
      MEMORY[0x28223BE20](v13, v14);
      v21[2] = partial apply for closure #1 in DOCProgressCollectionIndicatorView.isHidden.didset;
      v21[3] = v22;
      v17 = objc_opt_self();
      v18 = swift_allocObject();
      *(v18 + 16) = thunk for @callee_guaranteed () -> ()partial apply;
      *(v18 + 24) = v21;
      v19 = swift_allocObject();
      *(v19 + 16) = closure #1 in UIView.performWithoutAllAnimation(_:)partial apply;
      *(v19 + 24) = v18;
      v26 = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
      v27 = v19;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v24 = thunk for @escaping @callee_guaranteed () -> ();
      v25 = &block_descriptor_71_0;
      v20 = _Block_copy(&aBlock);

      [v17 performWithoutAnimation_];
      _Block_release(v20);
      LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

      if (v17)
      {
        __break(1u);
      }
    }

    else
    {

      v15 = [v2 window];
      if (v15)
      {

        v16 = [v2 isHidden];
        if (v16 == v2[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_sourceUpdateHandlerIsInstalled])
        {
          if ((v16 & 1) == 0)
          {
            DOCProgressCollectionIndicatorView.startObserving()();
            return;
          }

          goto LABEL_18;
        }
      }

      else if (v2[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_sourceUpdateHandlerIsInstalled])
      {
LABEL_18:
        DOCProgressCollectionIndicatorView.stopObserving()();
      }
    }
  }
}

void closure #1 in DOCProgressCollectionIndicatorView.didMoveToWindow()(unsigned __int8 *a1)
{
  v2 = [a1 window];
  if (v2)
  {

    v3 = [a1 isHidden];
    if (v3 != a1[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_sourceUpdateHandlerIsInstalled])
    {
      return;
    }

    if ((v3 & 1) == 0)
    {
      DOCProgressCollectionIndicatorView.startObserving()();
      return;
    }
  }

  else if ((a1[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_sourceUpdateHandlerIsInstalled] & 1) == 0)
  {
    return;
  }

  DOCProgressCollectionIndicatorView.stopObserving()();
}

void DOCProgressCollectionIndicatorView.didChangeCombinedProgress(oldValue:)(uint64_t a1, char a2)
{
  v3 = v2;
  v4 = -1.0;
  if (a2)
  {
    v5 = -1.0;
  }

  else
  {
    v5 = *&a1;
  }

  v6 = MEMORY[0x277D85000];
  v7 = COERCE_DOUBLE((*((*MEMORY[0x277D85000] & *v2) + 0xE8))());
  if ((v8 & 1) == 0)
  {
    v4 = v7;
  }

  aBlock = 0;
  v30 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);
  MEMORY[0x24C1FAEA0](0xD00000000000001FLL, 0x8000000249BDD7C0);
  Double.write<A>(to:)();
  MEMORY[0x24C1FAEA0](0x203A77656E202CLL, 0xE700000000000000);
  Double.write<A>(to:)();
  DOCProgressCollectionIndicatorView.debug(_:)(0, 0xE000000000000000);

  v10 = (*((*v6 & *v2) + 0xB8))(v9);
  if (v10)
  {
    [v10 progressIndicatorViewDidChangeCombinedProgress_];
    swift_unknownObjectRelease();
  }

  if (v5 >= 0.0)
  {
    if (v4 < 0.0)
    {
LABEL_20:
      DOCProgressCollectionIndicatorView.autohideContentIfDesired()();
      return;
    }
  }

  else if (v4 < 0.0 || v4 >= 1.0)
  {
    goto LABEL_20;
  }

  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_aggregateIndicatorView;
  v13 = [*&v3[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_aggregateIndicatorView] isHidden];
  if (v13)
  {
    v28[2] = v3;
    *&v28[3] = v4;
    v15 = [v3 isHidden];
    if ((v15 & 1) != 0 || (v15 = [*&v3[v12] isHidden], v15) || (v15 = objc_msgSend(v3, sel_window)) == 0)
    {
      MEMORY[0x28223BE20](v15, v16);
      v27[2] = partial apply for closure #1 in DOCProgressCollectionIndicatorView.didChangeCombinedProgress(oldValue:);
      v27[3] = v28;
      v23 = objc_opt_self();
      v24 = swift_allocObject();
      *(v24 + 16) = thunk for @callee_guaranteed () -> ()partial apply;
      *(v24 + 24) = v27;
      v25 = swift_allocObject();
      *(v25 + 16) = closure #1 in UIView.performWithoutAllAnimation(_:)partial apply;
      *(v25 + 24) = v24;
      v33 = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
      v34 = v25;
      aBlock = MEMORY[0x277D85DD0];
      v30 = 1107296256;
      v31 = thunk for @escaping @callee_guaranteed () -> ();
      v32 = &block_descriptor_85_0;
      v26 = _Block_copy(&aBlock);

      [v23 performWithoutAnimation_];
      _Block_release(v26);
      LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

      if (v23)
      {
        __break(1u);
      }
    }

    else
    {

      v17 = *&v3[v12];
      v18 = *((*v6 & *v17) + 0x70);
      v19 = v17;
      v18(v4);

      DOCProgressCollectionIndicatorView.revealContent()();
    }
  }

  else
  {
    v20 = *&v3[v12];
    v21 = *((*v6 & *v20) + 0x70);
    v22 = v20;
    v21(v4);
  }
}

id closure #1 in DOCProgressCollectionIndicatorView.didChangeCombinedProgress(oldValue:)(uint64_t a1, double a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_aggregateIndicatorView);
  v4 = *((*MEMORY[0x277D85000] & *v3) + 0x70);
  v5 = v3;
  v4(a2);

  return DOCProgressCollectionIndicatorView.revealContent()();
}

id DOCProgressCollectionIndicatorView.revealContent()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_aggregateIndicatorView;
  result = [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_aggregateIndicatorView) isHidden];
  if (result)
  {
    *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_isShowingContent) = 1;
    v3 = v0;
    DOCProgressCollectionIndicatorView.updateInteractions()();
    v4 = *(v0 + v1);
    v5 = [v4 description];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    MEMORY[0x24C1FAEA0](v6, v8);

    DOCProgressCollectionIndicatorView.debug(_:)(0x6E696C6165766572, 0xEB00000000203A67);

    [*(v3 + v1) setHidden_];
    v9 = *(v3 + v1);

    return [v9 setAlpha_];
  }

  return result;
}

void DOCProgressCollectionIndicatorView.autohideContentIfDesired()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_aggregateIndicatorView;
  if ([*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_aggregateIndicatorView) isHidden] & 1) == 0 && ((*((*MEMORY[0x277D85000] & *v0) + 0x100))())
  {
    strcpy(v17, "autohiding: ");
    BYTE5(v17[1]) = 0;
    HIWORD(v17[1]) = -5120;
    v3 = *(v0 + v2);
    v4 = [v3 description];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    MEMORY[0x24C1FAEA0](v5, v7);

    DOCProgressCollectionIndicatorView.debug(_:)(v17[0], v17[1]);

    v8 = *(**&v1[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_progressGroup] + 432);

    v8(v9);

    v1[OBJC_IVAR____TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView_isShowingContent] = 0;
    DOCProgressCollectionIndicatorView.updateInteractions()();
    v10 = objc_opt_self();
    v11 = swift_allocObject();
    *(v11 + 16) = v1;
    v20 = partial apply for closure #1 in DOCProgressCollectionIndicatorView.autohideContentIfDesired();
    v21 = v11;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 1107296256;
    v18 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v19 = &block_descriptor_47;
    v12 = _Block_copy(v17);
    v13 = v1;

    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    v20 = partial apply for closure #2 in DOCProgressCollectionIndicatorView.autohideContentIfDesired();
    v21 = v14;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 1107296256;
    v18 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v19 = &block_descriptor_53_0;
    v15 = _Block_copy(v17);
    v16 = v13;

    [v10 animateWithDuration:v12 animations:v15 completion:0.2];
    _Block_release(v15);
    _Block_release(v12);
  }
}