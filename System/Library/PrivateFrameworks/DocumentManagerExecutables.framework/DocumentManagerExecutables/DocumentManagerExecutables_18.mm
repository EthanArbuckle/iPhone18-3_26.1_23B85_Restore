void DOCNodeRenameOperation.performNodeRename(to:displayingFileExtension:shouldDonateAppIntents:completion:finishedBlock:)(void *a1, uint64_t a2, int a3, int a4, void (*a5)(void *, void, uint64_t), uint64_t a6, void (*a7)(uint64_t, void *), uint64_t a8)
{
  v83 = a8;
  v84 = a7;
  v81 = a6;
  v82 = a5;
  LODWORD(v79) = a4;
  v12 = type metadata accessor for CharacterSet();
  v80 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(*v8 + 104);
  v18 = v8;
  v19 = v17(v14);
  HIDWORD(v79) = a3;
  if (a3)
  {
    v20 = [v19 filename];
  }

  else
  {
    v20 = [v19 displayName];
  }

  v21 = v20;
  swift_unknownObjectRelease();
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if (v22 == a1 && v24 == a2)
  {
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v26 & 1) == 0)
    {
      v28 = v18;
      v29 = (*(*v18 + 128))(v27);
      v30._countAndFlagsBits = 46;
      v30._object = 0xE100000000000000;
      if (String.hasPrefix(_:)(v30))
      {
        lazy protocol witness table accessor for type FilenameValidationError and conformance FilenameValidationError();
        v31 = swift_allocError();
        *v32 = 2;
      }

      else
      {
        CharacterSet.init(charactersIn:)();
        v85[0] = a1;
        v85[1] = a2;
        lazy protocol witness table accessor for type String and conformance String();
        StringProtocol.rangeOfCharacter(from:options:range:)();
        if (v38)
        {
          (*(v80 + 8))(v16, v12);
          v39 = *(*v18 + 104);
          v40 = swift_bridgeObjectRetain_n();
          v41 = v39(v40);
          DOCNodeRenameOperation.handleRenameValidationSuccess(forNode:withResult:renameProposition:alertPresentingViewController:shouldDonateAppIntents:completion:finishedBlock:)(v41, a1, a2, BYTE4(v79) & 1, a1, a2, BYTE4(v79) & 1, v29, v79 & 1, v82, v81, v84, v83);
          swift_unknownObjectRelease();
          swift_bridgeObjectRelease_n();

          return;
        }

        lazy protocol witness table accessor for type FilenameValidationError and conformance FilenameValidationError();
        v31 = swift_allocError();
        *v42 = 3;
        (*(v80 + 8))(v16, v12);
      }

      swift_getErrorValue();
      v43 = v31;
      v44 = Error.localizedDescription.getter();
      v46 = v45;
      v47 = MEMORY[0x24C1FAD20]();
      v48 = [objc_opt_self() alertControllerWithTitle:0 message:v47 preferredStyle:1];

      v49 = v48;
      v50 = _DocumentManagerBundle();
      if (!v50)
      {
        goto LABEL_38;
      }

      v51 = v50;
      v87._object = 0xE200000000000000;
      v52.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v52.value._object = 0xEB00000000656C62;
      v53._countAndFlagsBits = 19279;
      v53._object = 0xE200000000000000;
      v54._countAndFlagsBits = 0;
      v54._object = 0xE000000000000000;
      v87._countAndFlagsBits = 19279;
      v55 = NSLocalizedString(_:tableName:bundle:value:comment:)(v53, v52, v51, v54, v87);

      v56 = MEMORY[0x24C1FAD20](v55._countAndFlagsBits, v55._object);

      v57 = [objc_opt_self() actionWithTitle:v56 style:0 handler:0];

      [v49 addAction_];
      v58 = [v49 actions];

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAlertAction);
      v59 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v59;
      if (v59 >> 62)
      {
        v61 = __CocoaSet.count.getter();
        if (v61)
        {
LABEL_21:
          v62 = __OFSUB__(v61, 1);
          v63 = v61 - 1;
          if (!v62)
          {
            if ((v60 & 0xC000000000000001) == 0)
            {
              if ((v63 & 0x8000000000000000) != 0)
              {
                __break(1u);
                goto LABEL_36;
              }

              if (v63 < *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v64 = *(v60 + 8 * v63 + 32);
                goto LABEL_26;
              }

              __break(1u);
LABEL_38:
              __break(1u);
              return;
            }

LABEL_34:
            v64 = MEMORY[0x24C1FC540](v63, v60);
LABEL_26:
            v65 = v64;

            [v49 setPreferredAction_];

            [v29 presentViewController:v49 animated:1 completion:0];
            if (one-time initialization token for Rename == -1)
            {
LABEL_27:
              v66 = type metadata accessor for Logger();
              __swift_project_value_buffer(v66, static Logger.Rename);

              v67 = Logger.logObject.getter();
              v68 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v67, v68))
              {
                v69 = swift_slowAlloc();
                v70 = swift_slowAlloc();
                v85[0] = v70;
                *v69 = 136315394;
                *(v69 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000005ELL, 0x8000000249BD24E0, v85);
                *(v69 + 12) = 2080;
                v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, v85);
                v72 = v29;
                v73 = v71;

                *(v69 + 14) = v73;
                v29 = v72;
                _os_log_impl(&dword_2493AC000, v67, v68, "%s: prompting user with message: %s", v69, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x24C1FE850](v70, -1, -1);
                MEMORY[0x24C1FE850](v69, -1, -1);
              }

              else
              {
              }

              v74 = v84;
              v75 = v82;
              v76 = v31;
              v75(v31, 0, 256);

              v77 = (*(*v28 + 104))();
              v78 = v31;
              v74(v77, v31);

              outlined consume of Result<RenameProposition, Error>(v31, 0, 0, 1);
              swift_unknownObjectRelease();

              return;
            }

LABEL_36:
            swift_once();
            goto LABEL_27;
          }

LABEL_33:
          __break(1u);
          goto LABEL_34;
        }
      }

      else
      {
        v61 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v61)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
      goto LABEL_33;
    }
  }

  lazy protocol witness table accessor for type FilenameValidationError and conformance FilenameValidationError();
  v33 = swift_allocError();
  *v34 = 4;
  v82(v33, 0, 256);

  v35 = (v17)();
  v36 = swift_allocError();
  *v37 = 4;
  v84(v35, v36);

  swift_unknownObjectRelease();
}

uint64_t DOCNodeRenameOperation.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t DOCNodeRenameOperation.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id outlined copy of Result<RenameProposition, Error>(id a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return a1;
  }

  else
  {
    return outlined copy of DOCRenameOperation.NameType();
  }
}

uint64_t objectdestroy_46Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_36Tm()
{

  swift_unknownObjectRelease();
  outlined consume of Result<RenameProposition, Error>(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 49));
  outlined consume of RenameProposition();

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t objectdestroyTm_1()
{
  outlined consume of Result<RenameProposition, Error>(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 33));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_16Tm()
{

  if (*(v0 + 80))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t objectdestroy_20Tm()
{

  if (*(v0 + 80))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t objectdestroy_30Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id DOCNode.fpfs_syncFetchFPItem()()
{
  v6[1] = *MEMORY[0x277D85DE8];
  result = [v0 fpfs_fpItem];
  if (!result)
  {
    v6[0] = 0;
    v2 = [v0 syncFetchFPItem_];
    v3 = v6[0];
    if (v2)
    {
      return v2;
    }

    else
    {
      v4 = v3;
      v5 = _convertNSErrorToError(_:)();

      swift_willThrow();
      return 0;
    }
  }

  return result;
}

uint64_t DOCNode.nodeDescription.getter()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    swift_unknownObjectRetain();
    v3 = [v2 description];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = [v0 displayName];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v4;
}

uint64_t DOCNode.supportsOpenWith.getter()
{
  v1 = [objc_opt_self() contextMenuShowsOpenWithApp];
  v2 = [v1 isEnabled];

  if (!v2 || ([v0 doc_isCollaborationInvitation] & 1) != 0 || (objc_msgSend(v0, sel_isFolder) & 1) != 0)
  {
    return 0;
  }

  if ([v0 isDownloaded])
  {
    return 1;
  }

  result = [v0 cachedDomain];
  if (result)
  {
    v4 = result;
    v5 = FPProviderDomain.supportsOpenWithForEvictedFiles.getter();

    return v5 & 1;
  }

  return result;
}

BOOL DOCNode.supportsAlwaysOpenWith.getter()
{
  if ((DOCNode.supportsOpenWith.getter() & 1) == 0)
  {
    return 0;
  }

  v1 = [objc_opt_self() defaultPermission];
  v2 = [v1 dataOwnerStateForNode_];

  return v2 != 1;
}

uint64_t Array<A>.fpfs_syncFetchAvailableFINodes()(uint64_t a1, uint64_t a2)
{
  v2 = Array<A>._fpfs_prefetchAvailableFPItems()(a1, a2, &lazy cache variable for type metadata for FINode);
  v4 = v3;
  if (v3 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v2 = v13)
  {
    v15 = v2;
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v16 = MEMORY[0x277D84F90];
LABEL_4:
    v8 = v6;
    while ((v4 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x24C1FC540](v8, v4);
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_20;
      }

LABEL_10:
      swift_getObjectType();
      v9 = DOCNode.fpfs_syncFetchFINode()();
      if (v10)
      {

        v2 = swift_unknownObjectRelease();
      }

      else
      {
        v11 = v9;
        v2 = swift_unknownObjectRelease();
        if (v11)
        {
          MEMORY[0x24C1FB090](v2);
          if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v2 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v7 = v16;
          if (v6 == i)
          {
LABEL_19:

            specialized Array.append<A>(contentsOf:)(v7);
            return v15;
          }

          goto LABEL_4;
        }
      }

      ++v8;
      if (v6 == i)
      {
        goto LABEL_19;
      }
    }

    if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

    v2 = swift_unknownObjectRetain();
    v6 = v8 + 1;
    if (!__OFADD__(v8, 1))
    {
      goto LABEL_10;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v13 = v2;
    i = __CocoaSet.count.getter();
  }

  v14 = v2;

  return v14;
}

unint64_t Array<A>.fpfs_syncFetchAllFINodes()(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v5 = Array<A>._fpfs_prefetchAllFPItems()(a1, a2, _sSa9repeating5countSayxGx_SitcfCSo6FINodeCSg_Tt1g5Tf4gn_n);
  v6 = v4;
  v7 = *(v4 + 16);
  if (v7)
  {
    v27 = a1;
    v28 = v2;
    v8 = 0;
    v9 = (v4 + 40);
    while (v8 < *(v6 + 16))
    {
      v2 = *(v9 - 1);
      v10 = *v9;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v11 = DOCNode.fpfs_syncFetchFINode()();
      if (v12)
      {

LABEL_21:
        swift_unknownObjectRelease();
LABEL_22:

        v21 = 0;
        v2 = MEMORY[0x277D84F90];
        v30 = MEMORY[0x277D84F90];
        v22 = *(v5 + 16);
        while (v22 != v21)
        {
          if (v21 >= *(v5 + 16))
          {
            __break(1u);
            goto LABEL_35;
          }

          v23 = *(v5 + 8 * v21++ + 32);
          if (v23)
          {
            v24 = v23;
            MEMORY[0x24C1FB090]();
            if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v2 = v30;
          }
        }

        if (v2 >> 62)
        {
          goto LABEL_39;
        }

        v25 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_31;
      }

      v13 = v11;
      if (!v11)
      {
        goto LABEL_21;
      }

      v14 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew()();
      }

      swift_unknownObjectRelease();
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_37;
      }

      if (v10 >= *(v5 + 16))
      {
        goto LABEL_38;
      }

      ++v8;
      v15 = v5 + 8 * v10;
      v16 = *(v15 + 32);
      *(v15 + 32) = v13;

      v9 += 2;
      if (v7 == v8)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {

    v17 = 0;
    v2 = MEMORY[0x277D84F90];
    v29 = MEMORY[0x277D84F90];
    v18 = *(v5 + 16);
    while (1)
    {
      if (v18 == v17)
      {

        return v2;
      }

      if (v17 >= *(v5 + 16))
      {
        break;
      }

      v19 = *(v5 + 8 * v17++ + 32);
      if (v19)
      {
        v20 = v19;
        MEMORY[0x24C1FB090]();
        if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v2 = v29;
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
  v25 = __CocoaSet.count.getter();
LABEL_31:
  if (v25 != MEMORY[0x24C1FB170](v27, v28))
  {

    return 0;
  }

  return v2;
}

uint64_t Array<A>.fpfs_syncFetchAvailableFPItems()(uint64_t a1, uint64_t a2)
{
  v3 = Array<A>._fpfs_prefetchAvailableFPItems()(a1, a2, &lazy cache variable for type metadata for FPItem);
  v4 = v2;
  if (v2 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D84F90];
    while (1)
    {
      if (i == v6)
      {

        specialized Array.append<A>(contentsOf:)(v7);
        return v3;
      }

      if ((v4 & 0xC000000000000001) == 0)
      {
        break;
      }

      MEMORY[0x24C1FC540](v6, v4);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_16;
      }

LABEL_8:
      v9 = DOCNode.fpfs_syncFetchFPItem()();
      v10 = swift_unknownObjectRelease();
      ++v6;
      if (v9)
      {
        MEMORY[0x24C1FB090](v10);
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v7 = v12;
        v6 = v8;
      }
    }

    if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    swift_unknownObjectRetain();
    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_8;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return v3;
}

unint64_t Array<A>.fpfs_syncFetchAllFPItems()(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v5 = Array<A>._fpfs_prefetchAllFPItems()(a1, a2, _sSa9repeating5countSayxGx_SitcfCSo6FPItemCSg_Tt1g5Tf4gn_n);
  v6 = v4;
  v7 = *(v4 + 16);
  if (v7)
  {
    v24 = v2;
    v8 = 0;
    v9 = (v4 + 40);
    while (v8 < *(v6 + 16))
    {
      v10 = *v9;
      swift_unknownObjectRetain();
      v11 = DOCNode.fpfs_syncFetchFPItem()();
      if (!v11)
      {
        swift_unknownObjectRelease();
LABEL_20:

        v18 = 0;
        v2 = MEMORY[0x277D84F90];
        v26 = MEMORY[0x277D84F90];
        v19 = *(v5 + 16);
        v7 = v24;
        while (v19 != v18)
        {
          if (v18 >= *(v5 + 16))
          {
            __break(1u);
            goto LABEL_33;
          }

          v20 = *(v5 + 8 * v18++ + 32);
          if (v20)
          {
            v21 = v20;
            MEMORY[0x24C1FB090]();
            if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v2 = v26;
          }
        }

        if (v2 >> 62)
        {
          goto LABEL_37;
        }

        v22 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_29;
      }

      v2 = v11;
      v12 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew()();
      }

      swift_unknownObjectRelease();
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_35;
      }

      if (v10 >= *(v5 + 16))
      {
        goto LABEL_36;
      }

      ++v8;
      v13 = v5 + 8 * v10;
      v14 = *(v13 + 32);
      *(v13 + 32) = v2;

      v9 += 2;
      if (v7 == v8)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {

    v3 = 0;
    v2 = MEMORY[0x277D84F90];
    v25 = MEMORY[0x277D84F90];
    v15 = *(v5 + 16);
    while (1)
    {
      if (v15 == v3)
      {

        return v2;
      }

      if (v3 >= *(v5 + 16))
      {
        break;
      }

      v16 = *(v5 + 8 * v3++ + 32);
      if (v16)
      {
        v17 = v16;
        MEMORY[0x24C1FB090]();
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v2 = v25;
      }
    }

LABEL_33:
    __break(1u);
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  v22 = __CocoaSet.count.getter();
LABEL_29:
  if (v22 != MEMORY[0x24C1FB170](v3, v7))
  {

    return 0;
  }

  return v2;
}

uint64_t DOCNode.canBeAddedToDock.getter()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v22 - v9;
  result = [v1 isFolder];
  if (result)
  {
    if ([v1 isAppContainer])
    {
      return 0;
    }

    result = [v1 cachedDomain];
    if (!result)
    {
      return result;
    }

    v12 = result;
    if (![result supportsPickingFolders] || (v13 = objc_msgSend(v12, sel_identifier), v14 = DOCProviderDomainIDIsRemovable(), v13, (v14 & 1) != 0))
    {

      return 0;
    }

    v15 = [v1 nodeURL];
    if (v15)
    {
      v16 = v15;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v3 + 32))(v10, v7, v2);
      v17 = [objc_allocWithZone(MEMORY[0x277D66AB8]) init];
      URL._bridgeToObjectiveC()(v18);
      v20 = v19;
      v21 = [v17 doc:v19 hasConfiguredFilesStackWithURL:?];

      (*(v3 + 8))(v10, v2);
      return v21 ^ 1;
    }

    else
    {

      return 1;
    }
  }

  return result;
}

FINode_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DOCNode.fpfs_syncFetchFINode()()
{
  v0 = swift_allocObject();
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    *(v0 + 16) = v1;
    v3 = v1;
    swift_unknownObjectRetain();
  }

  else
  {
    *(v0 + 16) = 0;
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    v2 = (v5 + 16);
    v6 = dispatch_semaphore_create(0);
    v7 = swift_allocObject();
    v7[2] = v0;
    v7[3] = v5;
    v7[4] = v6;

    v8 = v6;
    DOCNode.fpfs_fetchFINode(completion:)(partial apply for closure #1 in DOCNode.fpfs_syncFetchFINode(), v7);

    OS_dispatch_semaphore.wait()();
    swift_beginAccess();
    v9 = *(v5 + 16);
    if (v9)
    {
      swift_willThrow();
      v10 = v9;

      goto LABEL_6;
    }

    swift_beginAccess();
    v2 = *(v0 + 16);
    v12 = v2;
  }

LABEL_6:
  v11 = v2;
  result.value.super.isa = v11;
  result.is_nil = v4;
  return result;
}

id DOCNode.doc_isAppContainerRoot.getter()
{
  v1 = [v0 fpfs_fpItem];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 doc_isAppContainerRoot];

  return v3;
}

uint64_t DOCNode.areDiskPropertiesSupported.getter()
{
  v1 = [objc_opt_self() usbDiskProperties];
  v2 = [v1 isEnabled];

  if (v2)
  {
    if ([v0 isRootItem])
    {
      v3 = [v0 providerID];
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;

      if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
      {
        LOBYTE(v2) = 1;
      }

      else
      {
        LOBYTE(v2) = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

id DOCNode.sourceIdentifier.getter()
{
  v1 = [v0 providerDomainID];

  return v1;
}

void DOCNode.fetchAndAccessURL(downloadIfNeeded:handler:)(char a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v49 - v10;
  v56 = type metadata accessor for URL();
  v12 = *(v56 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v56, v14);
  v15 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v49 - v18;
  v22 = MEMORY[0x28223BE20](v20, v21);
  v24 = &v49 - v23;
  if ((a1 & 1) != 0 || ![v4 isCloudItem] || objc_msgSend(v4, sel_isDownloaded))
  {
    v25 = swift_allocObject();
    *(v25 + 16) = a2;
    *(v25 + 24) = a3;

    v26 = [v4 nodeURL];
    if (v26)
    {
      v27 = v26;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v54 = a3;
      v55 = v25;
      v53 = *(v12 + 32);
      v28 = v56;
      v53(v24, v19, v56);
      v51 = URL.startAccessingSecurityScopedResource()();
      v29 = objc_opt_self();
      URL._bridgeToObjectiveC()(v30);
      v50 = a2;
      v32 = v31;
      v33 = [v29 readingIntentWithURL:v31 options:0];

      v52 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) init];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_249BA0290;
      *(v34 + 32) = v33;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSFileAccessIntent);
      v49 = v33;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v36 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
      (*(v12 + 16))(v15, v24, v28);
      v37 = (*(v12 + 80) + 17) & ~*(v12 + 80);
      v38 = (v13 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
      v39 = swift_allocObject();
      *(v39 + 16) = v51;
      v53((v39 + v37), v15, v28);
      v40 = (v39 + v38);
      v41 = v54;
      *v40 = v50;
      v40[1] = v41;
      v61 = partial apply for closure #1 in closure #1 in DOCNode.fetchAndAccessURL(downloadIfNeeded:handler:);
      v62 = v39;
      aBlock = MEMORY[0x277D85DD0];
      v58 = 1107296256;
      v59 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
      v60 = &block_descriptor_18_0;
      v42 = _Block_copy(&aBlock);

      v43 = v52;
      [v52 coordinateAccessWithIntents:isa queue:v36 byAccessor:v42];
      _Block_release(v42);

      (*(v12 + 8))(v24, v28);
      return;
    }

    v44 = DOCNode.fpfs_syncFetchFPItem()();
    if (v44)
    {
      v45 = v44;
      v46 = [objc_opt_self() defaultManager];
      v47 = swift_allocObject();
      v47[2] = a2;
      v47[3] = a3;
      v47[4] = partial apply for closure #1 in DOCNode.fetchAndAccessURL(downloadIfNeeded:handler:);
      v47[5] = v25;
      v61 = partial apply for closure #2 in DOCNode.fetchAndAccessURL(downloadIfNeeded:handler:);
      v62 = v47;
      aBlock = MEMORY[0x277D85DD0];
      v58 = 1107296256;
      v59 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
      v60 = &block_descriptor_25;
      v48 = _Block_copy(&aBlock);

      [v46 fetchURLForItem:v45 completionHandler:v48];
      _Block_release(v48);

      return;
    }

    (*(v12 + 56))(v11, 1, 1, v56);
    a2(v11);
  }

  else
  {
    (*(v12 + 56))(v11, 1, 1, v56);
    a2(v11);
  }

  outlined destroy of CharacterSet?(v11, &_s10Foundation3URLVSgMd);
}

uint64_t DOCNode.isFolderSizingSupported.getter()
{
  v1 = v0;
  result = [v0 isFolder];
  if (result)
  {
    result = [v0 cachedDomain];
    if (result)
    {
      v3 = result;
      if (FPProviderDomain.shouldUseDSEnumeration.getter())
      {
LABEL_17:

        return 1;
      }

      v4 = [v1 providerID];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;
      if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
      {
        v10 = 1;
      }

      else
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
      if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
      {
        v15 = 1;
      }

      else
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      if ([v3 isiCloudDriveProvider] & 1) != 0 || (v10)
      {

        goto LABEL_17;
      }

      if (v15)
      {
        v16 = [v1 isRootItem];

        return v16 ^ 1;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

uint64_t DOCNode.performFolderSizingIfSupported(handlerQueue:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v17 - v11;
  if (DOCNode.isFolderSizingSupported.getter())
  {
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = a4;
    v14[5] = v4;
    v14[6] = a1;
    v14[7] = a2;
    v14[8] = a3;
    swift_unknownObjectRetain();
    v15 = a1;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:), v14);
  }

  else
  {
    v17 = 0uLL;
    v18 = 0;
    v19 = 256;
    return callHandler #1 <A>(_:) in DOCNode.performFolderSizingIfSupported(handlerQueue:_:)(&v17, a1, a2, a3);
  }
}

void DOCNode.diskProperties.getter(uint64_t *a1@<X8>)
{
  if ((DOCNode.areDiskPropertiesSupported.getter() & 1) == 0)
  {
    goto LABEL_6;
  }

  v3 = [objc_opt_self() sharedManager];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 providerDomainID];
    v6 = specialized SKManager.doc_disk(forDomainIdentifier:)(v5);

    if (v6)
    {
      v7 = [v6 filesystem];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 localizedName];

        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;

        v13 = [v6 availableSpace];
        v14 = [v6 freeSpace];
        v15 = [v6 purgeableSpace];
        v16 = [v6 totalSpace];

        *a1 = v10;
        a1[1] = v12;
        a1[2] = v13;
        a1[3] = v14;
        a1[4] = v15;
        a1[5] = v16;
        return;
      }

      goto LABEL_8;
    }

LABEL_6:
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
    return;
  }

  __break(1u);
LABEL_8:
  __break(1u);
}

id DOCNode.fetchDiskPropertiesIfSupported(handlerQueue:_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v38 = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v39 = *(v10 - 8);
  v40 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((DOCNode.areDiskPropertiesSupported.getter() & 1) == 0)
  {
    goto LABEL_5;
  }

  v37 = v13;
  v19 = v9;
  v20 = v6;
  v21 = a3;
  v22 = a2;
  result = [objc_opt_self() sharedManager];
  if (result)
  {
    v24 = result;
    v25 = [v3 providerDomainID];
    v26 = specialized SKManager.doc_disk(forDomainIdentifier:)(v25);

    a2 = v22;
    a3 = v21;
    v6 = v20;
    v9 = v19;
    v13 = v37;
    if (v26)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      (*(v15 + 104))(v18, *MEMORY[0x277D851B8], v14);
      v36 = static OS_dispatch_queue.global(qos:)();
      (*(v15 + 8))(v18, v14);
      v27 = swift_allocObject();
      v28 = v38;
      v27[2] = v26;
      v27[3] = v28;
      v27[4] = a2;
      v27[5] = a3;
      v47 = partial apply for closure #2 in DOCNode.fetchDiskPropertiesIfSupported(handlerQueue:_:);
      v48 = v27;
      aBlock = MEMORY[0x277D85DD0];
      v44 = 1107296256;
      v45 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v46 = &block_descriptor_34;
      v29 = _Block_copy(&aBlock);
      v30 = v26;
      v31 = v28;

      static DispatchQoS.unspecified.getter();
      v42 = MEMORY[0x277D84F90];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v32 = v36;
      MEMORY[0x24C1FB9A0](0, v13, v9, v29);
      _Block_release(v29);

LABEL_6:
      (*(v41 + 8))(v9, v6);
      (*(v39 + 8))(v13, v40);
    }

LABEL_5:
    v33 = swift_allocObject();
    *(v33 + 16) = a2;
    *(v33 + 24) = a3;
    v47 = partial apply for closure #1 in DOCNode.fetchDiskPropertiesIfSupported(handlerQueue:_:);
    v48 = v33;
    aBlock = MEMORY[0x277D85DD0];
    v44 = 1107296256;
    v45 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v46 = &block_descriptor_28;
    v34 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v42 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v13, v9, v34);
    _Block_release(v34);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

unint64_t DOCDiskProperties.Size.usedSpace.getter()
{
  v1 = v0[3];
  result = v1 - *v0;
  if (v1 < *v0)
  {
    __break(1u);
  }

  return result;
}

uint64_t Array<A>.contains(node:)()
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  return Sequence.contains(where:)() & 1;
}

void *DOCNode.description.getter()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    v1 = v0;
  }

  else
  {
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (!v1)
    {
      return v1;
    }
  }

  swift_unknownObjectRetain();
  v2 = [v1 debugDescription];
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRelease();

  return v1;
}

id DOCNode.fpfs_syncFetchFPItemResult()()
{
  v7[1] = *MEMORY[0x277D85DE8];
  result = [v0 fpfs_fpItem];
  if (!result)
  {
    v7[0] = 0;
    v2 = [v0 syncFetchFPItem_];
    if (v2)
    {
      v3 = v2;
      v4 = v7[0];
      return v3;
    }

    else
    {
      v5 = v7[0];
      v6 = _convertNSErrorToError(_:)();

      swift_willThrow();
      return v6;
    }
  }

  return result;
}

uint64_t DOCNode.fpfs_fetchFPItem()(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](DOCNode.fpfs_fetchFPItem(), 0, 0);
}

uint64_t DOCNode.fpfs_fetchFPItem()()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6FPItemCSgMd);
  *v2 = v0;
  v2[1] = DOCNode.fpfs_fetchFPItem();

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000012, 0x8000000249BD2BF0, partial apply for closure #1 in DOCNode.fpfs_fetchFPItem(), v1, v3);
}

{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = DOCNode.fpfs_fetchFPItem();
  }

  else
  {

    v2 = DOCNode.fpfs_fetchFPItem();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void closure #1 in DOCNode.fpfs_fetchFPItem()(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo6FPItemCSgs5Error_pGMd);
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = aBlock - v8;
  (*(v5 + 16))(aBlock - v8, a1, v4, v7);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v9, v4);
  aBlock[4] = partial apply for closure #1 in closure #1 in DOCNode.fpfs_fetchFPItem();
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_306;
  v12 = _Block_copy(aBlock);

  [a2 fetchFPItem_];
  _Block_release(v12);
}

id closure #1 in Array<A>._fpfs_prefetchAvailableFPItems()@<X0>(id *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = [*a1 fpfs_fpItem];
  v6 = result;
  if (!result)
  {
    v7 = swift_unknownObjectRetain();
    MEMORY[0x24C1FB090](v7);
    if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  *a3 = v6;
  return result;
}

uint64_t Array<A>.fpfs_fetchAvailableFPItems()(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x2822009F8](Array<A>.fpfs_fetchAvailableFPItems(), 0, 0);
}

uint64_t Array<A>.fpfs_fetchAvailableFPItems()()
{
  v1 = Array<A>._fpfs_prefetchAvailableFPItems()(v0[4], v0[5], &lazy cache variable for type metadata for FPItem);
  v0[3] = v2;
  v0[2] = v1;
  if (v2 >> 62)
  {
    v5 = v1;
    v6 = __CocoaSet.count.getter();
    v1 = v5;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v3 = swift_task_alloc();
    v0[6] = v3;
    *(v3 + 16) = v0 + 3;
    *(v3 + 24) = v0 + 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6FPItemCSgMd);
    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = Array<A>.fpfs_fetchAvailableFPItems();

    return MEMORY[0x282200600]();
  }

  v7 = v1;

  v8 = v0[1];

  return v8(v7);
}

{

  return MEMORY[0x2822009F8](Array<A>.fpfs_fetchAvailableFPItems(), 0, 0);
}

uint64_t closure #1 in Array<A>.fpfs_fetchAvailableFPItems()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[11] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVySo6FPItemCSg_GMd);
  v4[14] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceVyScGySo6FPItemCSgGADGMd);
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceV8IteratorVyScGySo6FPItemCSgGAF_GMd);
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in Array<A>.fpfs_fetchAvailableFPItems(), 0, 0);
}

void closure #1 in Array<A>.fpfs_fetchAvailableFPItems()()
{
  v1 = **(v0 + 96);
  if (v1 >> 62)
  {
    v23 = **(v0 + 96);
    v24 = __CocoaSet.count.getter();
    v1 = v23;
    v2 = v24;
    if (!v24)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_18;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    return;
  }

  v26 = **(v0 + 88);
  v25 = v1 & 0xC000000000000001;
  v3 = v1;

  v4 = v3;
  v5 = 0;
  v27 = v2;
  v28 = v3;
  do
  {
    if (v25)
    {
      v7 = MEMORY[0x24C1FC540](v5, v4);
    }

    else
    {
      v7 = *(v4 + 8 * v5 + 32);
      swift_unknownObjectRetain();
    }

    v8 = *(v0 + 168);
    v9 = *(v0 + 176);
    v10 = type metadata accessor for TaskPriority();
    v11 = *(v10 - 8);
    (*(v11 + 56))(v9, 1, 1, v10);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v7;
    outlined init with copy of DOCGridLayout.Spec?(v9, v8, &_sScPSgMd);
    LODWORD(v8) = (*(v11 + 48))(v8, 1, v10);
    swift_unknownObjectRetain();
    v13 = *(v0 + 168);
    if (v8 == 1)
    {
      outlined destroy of CharacterSet?(*(v0 + 168), &_sScPSgMd);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v11 + 8))(v13, v10);
    }

    if (v12[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = dispatch thunk of Actor.unownedExecutor.getter();
      v16 = v15;
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    v17 = swift_allocObject();
    *(v17 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in Array<A>.fpfs_fetchAvailableFPItems();
    *(v17 + 24) = v12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6FPItemCSgMd);
    v18 = v16 | v14;
    if (v16 | v14)
    {
      v18 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v14;
      *(v0 + 40) = v16;
    }

    ++v5;
    v6 = *(v0 + 176);
    *(v0 + 48) = 1;
    *(v0 + 56) = v18;
    *(v0 + 64) = v26;
    swift_task_create();

    swift_unknownObjectRelease();

    outlined destroy of CharacterSet?(v6, &_sScPSgMd);
    v4 = v28;
  }

  while (v27 != v5);

LABEL_18:
  v19 = *(v0 + 128);
  v20 = *(v0 + 136);
  v21 = *(v0 + 120);
  *(v0 + 72) = **(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScGySo6FPItemCSgGMd);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type TaskGroup<FPItem?> and conformance TaskGroup<A>, &_sScGySo6FPItemCSgGMd);
  AsyncCompactMapSequence.init(_:transform:)();
  MEMORY[0x24C1FC960](v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6FPItemCSgMd);
  TaskGroup.makeAsyncIterator()();
  AsyncMapSequence.Iterator.transform.getter();
  (*(v19 + 8))(v20, v21);
  AsyncCompactMapSequence.Iterator.init(_:transform:)();
  v22 = swift_task_alloc();
  *(v0 + 184) = v22;
  *v22 = v0;
  v22[1] = closure #1 in Array<A>.fpfs_fetchAvailableFPItems();

  _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGySo6FPItemCSgG_ALTg5(0, 0);
}

uint64_t closure #1 in Array<A>.fpfs_fetchAvailableFPItems()(uint64_t a1)
{
  *(*v2 + 192) = a1;

  if (!v1)
  {

    return MEMORY[0x2822009F8](closure #1 in Array<A>.fpfs_fetchAvailableFPItems(), 0, 0);
  }

  return result;
}

uint64_t closure #1 in Array<A>.fpfs_fetchAvailableFPItems()()
{
  v1 = v0[24];
  if (v1)
  {
    v2 = v0[13];
    v3 = v1;
    MEMORY[0x24C1FB090]();
    if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v4 = swift_task_alloc();
    v0[23] = v4;
    *v4 = v0;
    v4[1] = closure #1 in Array<A>.fpfs_fetchAvailableFPItems();

    return _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGySo6FPItemCSgG_ALTg5(0, 0);
  }

  else
  {
    (*(v0[19] + 8))(v0[20], v0[18]);

    v6 = v0[1];

    return v6();
  }
}

uint64_t closure #1 in closure #1 in Array<A>.fpfs_fetchAvailableFPItems()(uint64_t a1)
{
  *(v1 + 16) = a1;
  ObjectType = swift_getObjectType();
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = closure #1 in closure #1 in Array<A>.fpfs_fetchAvailableFPItems();

  return DOCNode.fpfs_fetchFPItem()(ObjectType);
}

{
  v4 = *v2;

  if (v1)
  {

    v5 = closure #1 in closure #1 in Array<A>.fpfs_fetchAvailableFPItems();
  }

  else
  {
    *(v4 + 32) = a1;
    v5 = closure #1 in closure #1 in Array<A>.fpfs_fetchAvailableFPItems();
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t closure #2 in closure #1 in Array<A>.fpfs_fetchAvailableFPItems()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](closure #2 in closure #1 in Array<A>.fpfs_fetchAvailableFPItems(), 0, 0);
}

uint64_t _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGySo6FPItemCSgG_ALTg5(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[12] = v4;
  v3[13] = v6;

  return MEMORY[0x2822009F8](_ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGySo6FPItemCSgG_ALTg5TY0_, v4, v6);
}

uint64_t _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGySo6FPItemCSgG_ALTg5TY0_()
{
  v0[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceV8IteratorVyScGySo6FPItemCSgGAF_GMd);
  v0[15] = AsyncCompactMapSequence.Iterator.baseIterator.modify();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVySo6FPItemCSg_GMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type TaskGroup<FPItem?>.Iterator and conformance TaskGroup<A>.Iterator, &_sScG8IteratorVySo6FPItemCSg_GMd);
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGySo6FPItemCSgG_ALTg5TQ1_;
  v2 = v0[9];
  v3 = v0[10];

  return MEMORY[0x282200310](v0 + 7, v2, v3);
}

uint64_t _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGySo6FPItemCSgG_ALTg5TQ1_()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGySo6FPItemCSgG_ALTg5TY3_;
  }

  else
  {
    (*(v2 + 120))();
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGySo6FPItemCSgG_ALTg5TY2_;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGySo6FPItemCSgG_ALTg5TY2_()
{
  v1 = v0[7];
  v0[17] = v1;
  if (v1 == 1)
  {
    v2 = v0[1];

    return v2(0);
  }

  else
  {
    v0[6] = v1;
    v4 = AsyncMapSequence.Iterator.transform.getter();
    v0[18] = v5;
    v7 = (v4 + *v4);
    v6 = swift_task_alloc();
    v0[19] = v6;
    *v6 = v0;
    v6[1] = _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGySo6FPItemCSgG_ALTg5TQ4_;

    return (v7)(v0 + 8, v0 + 6);
  }
}

uint64_t _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGySo6FPItemCSgG_ALTg5TQ4_()
{
  v1 = *v0;
  v2 = *(*v0 + 136);

  outlined consume of DOCProgressCollectionIndicatorView??(v2);
  v3 = *(v1 + 104);
  v4 = *(v1 + 96);

  return MEMORY[0x2822009F8](_ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGySo6FPItemCSgG_ALTg5TY5_, v4, v3);
}

uint64_t _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGySo6FPItemCSgG_ALTg5TY5_()
{
  if (v0[8])
  {
    v1 = v0[1];

    return v1();
  }

  else
  {
    v0[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceV8IteratorVyScGySo6FPItemCSgGAF_GMd);
    v0[15] = AsyncCompactMapSequence.Iterator.baseIterator.modify();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVySo6FPItemCSg_GMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type TaskGroup<FPItem?>.Iterator and conformance TaskGroup<A>.Iterator, &_sScG8IteratorVySo6FPItemCSg_GMd);
    v3 = swift_task_alloc();
    v0[16] = v3;
    *v3 = v0;
    v3[1] = _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGySo6FPItemCSgG_ALTg5TQ1_;
    v4 = v0[9];
    v5 = v0[10];

    return MEMORY[0x282200310](v0 + 7, v4, v5);
  }
}

uint64_t _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGySo6FINodeCSgG_ALTg5(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[12] = v4;
  v3[13] = v6;

  return MEMORY[0x2822009F8](_ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGySo6FINodeCSgG_ALTg5TY0_, v4, v6);
}

uint64_t _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGySo6FINodeCSgG_ALTg5TY0_()
{
  v0[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceV8IteratorVyScGySo6FINodeCSgGAF_GMd);
  v0[15] = AsyncCompactMapSequence.Iterator.baseIterator.modify();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVySo6FINodeCSg_GMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type TaskGroup<FINode?>.Iterator and conformance TaskGroup<A>.Iterator, &_sScG8IteratorVySo6FINodeCSg_GMd);
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGySo6FINodeCSgG_ALTg5TQ1_;
  v2 = v0[9];
  v3 = v0[10];

  return MEMORY[0x282200310](v0 + 7, v2, v3);
}

uint64_t _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGySo6FINodeCSgG_ALTg5TQ1_()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGySo6FINodeCSgG_ALTg5TY3_;
  }

  else
  {
    (*(v2 + 120))();
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGySo6FINodeCSgG_ALTg5TY2_;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGySo6FINodeCSgG_ALTg5TY2_()
{
  v1 = v0[7];
  v0[17] = v1;
  if (v1 == 1)
  {
    v2 = v0[1];

    return v2(0);
  }

  else
  {
    v0[6] = v1;
    v4 = AsyncMapSequence.Iterator.transform.getter();
    v0[18] = v5;
    v7 = (v4 + *v4);
    v6 = swift_task_alloc();
    v0[19] = v6;
    *v6 = v0;
    v6[1] = _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGySo6FINodeCSgG_ALTg5TQ4_;

    return (v7)(v0 + 8, v0 + 6);
  }
}

uint64_t _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGySo6FINodeCSgG_ALTg5TY3_()
{
  (*(v0 + 120))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGySo6FINodeCSgG_ALTg5TQ4_()
{
  v1 = *v0;
  v2 = *(*v0 + 136);

  outlined consume of DOCProgressCollectionIndicatorView??(v2);
  v3 = *(v1 + 104);
  v4 = *(v1 + 96);

  return MEMORY[0x2822009F8](_ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGySo6FINodeCSgG_ALTg5TY5_, v4, v3);
}

uint64_t _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGySo6FINodeCSgG_ALTg5TY5_()
{
  if (v0[8])
  {
    v1 = v0[1];

    return v1();
  }

  else
  {
    v0[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceV8IteratorVyScGySo6FINodeCSgGAF_GMd);
    v0[15] = AsyncCompactMapSequence.Iterator.baseIterator.modify();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVySo6FINodeCSg_GMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type TaskGroup<FINode?>.Iterator and conformance TaskGroup<A>.Iterator, &_sScG8IteratorVySo6FINodeCSg_GMd);
    v3 = swift_task_alloc();
    v0[16] = v3;
    *v3 = v0;
    v3[1] = _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGySo6FINodeCSgG_ALTg5TQ1_;
    v4 = v0[9];
    v5 = v0[10];

    return MEMORY[0x282200310](v0 + 7, v4, v5);
  }
}

uint64_t closure #1 in Array<A>._fpfs_prefetchAllFPItems()(unint64_t a1, id a2, uint64_t *a3)
{
  v4 = a2;
  v6 = [a2 fpfs_fpItem];
  if (!v6)
  {
    swift_unknownObjectRetain();
    return v4;
  }

  v7 = v6;
  v8 = *a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v8;
  if (result)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()();
  v8 = result;
  *a3 = result;
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (*(v8 + 16) > a1)
  {
    v10 = v8 + 8 * a1;
    v11 = *(v10 + 32);
    *(v10 + 32) = v7;

    return 0;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t Array<A>.fpfs_fetchAllFPItems()(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x2822009F8](Array<A>.fpfs_fetchAllFPItems(), 0, 0);
}

uint64_t Array<A>.fpfs_fetchAllFPItems()()
{
  v1 = Array<A>._fpfs_prefetchAllFPItems()(v0[6], v0[7], _sSa9repeating5countSayxGx_SitcfCSo6FPItemCSg_Tt1g5Tf4gn_n);
  v0[3] = v2;
  v0[2] = v1;
  if (*(v2 + 16))
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *(v3 + 16) = v0 + 3;
    *(v3 + 24) = v0 + 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_So6FPItemCSgtMd);
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = Array<A>.fpfs_fetchAllFPItems();

    return MEMORY[0x282200740]();
  }

  else
  {
    v5 = v1;
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v14 = MEMORY[0x277D84F90];
    v8 = *(v1 + 16);
    while (v8 != v6)
    {
      if (v6 >= *(v5 + 16))
      {
        __break(1u);
        return MEMORY[0x282200740]();
      }

      v9 = *(v5 + 8 * v6++ + 32);
      if (v9)
      {
        v10 = v2;
        v11 = v9;
        MEMORY[0x24C1FB090]();
        if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v7 = v14;
        v2 = v10;
      }
    }

    v12 = v0[1];

    return v12(v7);
  }
}

{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = Array<A>.fpfs_fetchAllFPItems();
  }

  else
  {

    v2 = Array<A>.fpfs_fetchAllFPItems();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = 0;
  v2 = v0[2];
  v3 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
  v4 = *(v2 + 16);
  while (v4 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      goto LABEL_18;
    }

    v5 = *(v2 + 8 * v1++ + 32);
    if (v5)
    {
      v6 = v5;
      MEMORY[0x24C1FB090]();
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v3 = v11;
    }
  }

  if (!(v3 >> 62))
  {
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_10;
  }

LABEL_18:
  v7 = __CocoaSet.count.getter();
LABEL_10:
  if (v7 == MEMORY[0x24C1FB170](v0[6], v0[7]))
  {

    v8 = v0[1];

    return v8(v3);
  }

  else
  {

    type metadata accessor for related decl 'e' for NSFileProviderErrorCode(0);
    v0[5] = -1005;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type related decl 'e' for NSFileProviderErrorCode and conformance related decl 'e' for NSFileProviderErrorCode, type metadata accessor for related decl 'e' for NSFileProviderErrorCode);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #2 in Array<A>.fpfs_fetchAllFPItems()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[12] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScg8IteratorVySi_So6FPItemCSgts5Error_p_GMd);
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in Array<A>.fpfs_fetchAllFPItems(), 0, 0);
}

uint64_t closure #2 in Array<A>.fpfs_fetchAllFPItems()()
{
  v1 = *(v0 + 104);
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3)
  {
    v29 = **(v0 + 96);
    v4 = type metadata accessor for TaskPriority();
    v5 = *(v4 - 8);
    v28 = *(v5 + 56);
    v27 = (v5 + 48);
    v25 = (v5 + 8);

    v6 = (v2 + 40);
    v26 = v4;
    while (1)
    {
      v30 = v3;
      v9 = *(v0 + 144);
      v8 = *(v0 + 152);
      v10 = *(v6 - 1);
      v11 = *v6;
      v28(v8, 1, 1, v4);
      v12 = swift_allocObject();
      v12[2] = 0;
      v13 = v12 + 2;
      v12[3] = 0;
      v12[4] = v11;
      v12[5] = v10;
      outlined init with copy of DOCGridLayout.Spec?(v8, v9, &_sScPSgMd);
      LODWORD(v9) = (*v27)(v9, 1, v4);
      swift_unknownObjectRetain_n();
      v14 = *(v0 + 144);
      if (v9 == 1)
      {
        outlined destroy of CharacterSet?(*(v0 + 144), &_sScPSgMd);
        if (*v13)
        {
          goto LABEL_8;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v25)(v14, v4);
        if (*v13)
        {
LABEL_8:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v15 = dispatch thunk of Actor.unownedExecutor.getter();
          v16 = v17;
          swift_unknownObjectRelease();
          goto LABEL_9;
        }
      }

      v15 = 0;
      v16 = 0;
LABEL_9:

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_So6FPItemCSgtMd);
      v18 = v16 | v15;
      if (v16 | v15)
      {
        v18 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v15;
        *(v0 + 40) = v16;
      }

      v4 = v26;
      v6 += 2;
      v7 = *(v0 + 152);
      *(v0 + 48) = 1;
      *(v0 + 56) = v18;
      *(v0 + 64) = v29;
      swift_task_create();

      swift_unknownObjectRelease();

      outlined destroy of CharacterSet?(v7, &_sScPSgMd);
      v3 = v30 - 1;
      if (v30 == 1)
      {

        break;
      }
    }
  }

  v19 = *(v0 + 112);
  *(v0 + 160) = **(v0 + 96);
  *(v0 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_So6FPItemCSgtMd);
  *(v0 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  ThrowingTaskGroup.makeAsyncIterator()();
  v20 = *v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v19 = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew()();
  }

  **(v0 + 112) = v20;
  v22 = swift_task_alloc();
  *(v0 + 184) = v22;
  *v22 = v0;
  v22[1] = closure #2 in Array<A>.fpfs_fetchAllFPItems();
  v23 = *(v0 + 120);

  return MEMORY[0x2822004E8](v0 + 72, 0, 0, v23, v0 + 88);
}

{

  if (v0)
  {
    v1 = closure #2 in Array<A>.fpfs_fetchAllFPItems();
  }

  else
  {
    v1 = closure #2 in Array<A>.fpfs_fetchAllFPItems();
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

{
  v2 = v0[9];
  v1 = v0[10];
  if (v1 != 1)
  {
    if (!v1)
    {
      MEMORY[0x24C1FB390](v0[20], v0[21], v0[22], MEMORY[0x277D84950]);
      goto LABEL_4;
    }

    v5 = v0[14];
    v6 = *v5;
    v7 = v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v5 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = v0[14];
      *v18 = specialized _ArrayBuffer._consumeAndCreateNew()();
    }

    v9 = v0[14];
    sub_2493CF908(v2, v1);
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v2 < *(*v9 + 16))
    {
      v15 = *v9 + 8 * v2;
      v16 = *(v15 + 32);
      *(v15 + 32) = v1;

      v17 = swift_task_alloc();
      v0[23] = v17;
      *v17 = v0;
      v17[1] = closure #2 in Array<A>.fpfs_fetchAllFPItems();
      v13 = v0[15];
      v14 = v0 + 11;
      v10 = v0 + 9;
      v11 = 0;
      v12 = 0;

      return MEMORY[0x2822004E8](v10, v11, v12, v13, v14);
    }

    __break(1u);
    return MEMORY[0x2822004E8](v10, v11, v12, v13, v14);
  }

LABEL_4:
  (*(v0[16] + 8))(v0[17], v0[15]);

  v3 = v0[1];

  return v3();
}

{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t closure #1 in closure #2 in Array<A>.fpfs_fetchAllFPItems()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](closure #1 in closure #2 in Array<A>.fpfs_fetchAllFPItems(), 0, 0);
}

uint64_t closure #1 in closure #2 in Array<A>.fpfs_fetchAllFPItems()()
{
  **(v0 + 16) = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = closure #1 in closure #2 in Array<A>.fpfs_fetchAllFPItems();

  return DOCNode.fpfs_fetchFPItem()(ObjectType);
}

uint64_t closure #1 in closure #2 in Array<A>.fpfs_fetchAllFPItems()(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 48) = a1;

    return MEMORY[0x2822009F8](closure #1 in closure #2 in Array<A>.fpfs_fetchAllFPItems(), 0, 0);
  }
}

uint64_t Array<A>._fpfs_prefetchAvailableFPItems()(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  type metadata accessor for Array();
  type metadata accessor for NSMutableAttributedString(0, a3);
  swift_getWitnessTable();
  return Sequence.compactMap<A>(_:)();
}

uint64_t closure #1 in Array<A>._fpfs_prefetchAvailableFINodes()@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    *a2 = v4;
    return swift_unknownObjectRetain();
  }

  else
  {
    v6 = swift_unknownObjectRetain();
    MEMORY[0x24C1FB090](v6);
    if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    *a2 = 0;
  }

  return result;
}

uint64_t Array<A>.fpfs_fetchAvailableFINodes()(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x2822009F8](Array<A>.fpfs_fetchAvailableFINodes(), 0, 0);
}

uint64_t Array<A>.fpfs_fetchAvailableFINodes()()
{
  v1 = Array<A>._fpfs_prefetchAvailableFPItems()(v0[4], v0[5], &lazy cache variable for type metadata for FINode);
  v0[3] = v2;
  v0[2] = v1;
  if (v2 >> 62)
  {
    v5 = v1;
    v6 = __CocoaSet.count.getter();
    v1 = v5;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v3 = swift_task_alloc();
    v0[6] = v3;
    *(v3 + 16) = v0 + 3;
    *(v3 + 24) = v0 + 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6FINodeCSgMd);
    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = Array<A>.fpfs_fetchAvailableFINodes();

    return MEMORY[0x282200600]();
  }

  v7 = v1;

  v8 = v0[1];

  return v8(v7);
}

{

  return MEMORY[0x2822009F8](Array<A>.fpfs_fetchAvailableFINodes(), 0, 0);
}

{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t closure #1 in Array<A>.fpfs_fetchAvailableFINodes()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[11] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVySo6FINodeCSg_GMd);
  v4[14] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceVyScGySo6FINodeCSgGADGMd);
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceV8IteratorVyScGySo6FINodeCSgGAF_GMd);
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in Array<A>.fpfs_fetchAvailableFINodes(), 0, 0);
}

void closure #1 in Array<A>.fpfs_fetchAvailableFINodes()()
{
  v1 = **(v0 + 96);
  if (v1 >> 62)
  {
    v23 = **(v0 + 96);
    v24 = __CocoaSet.count.getter();
    v1 = v23;
    v2 = v24;
    if (!v24)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_18;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    return;
  }

  v26 = **(v0 + 88);
  v25 = v1 & 0xC000000000000001;
  v3 = v1;

  v4 = v3;
  v5 = 0;
  v27 = v2;
  v28 = v3;
  do
  {
    if (v25)
    {
      v7 = MEMORY[0x24C1FC540](v5, v4);
    }

    else
    {
      v7 = *(v4 + 8 * v5 + 32);
      swift_unknownObjectRetain();
    }

    v8 = *(v0 + 168);
    v9 = *(v0 + 176);
    v10 = type metadata accessor for TaskPriority();
    v11 = *(v10 - 8);
    (*(v11 + 56))(v9, 1, 1, v10);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v7;
    outlined init with copy of DOCGridLayout.Spec?(v9, v8, &_sScPSgMd);
    LODWORD(v8) = (*(v11 + 48))(v8, 1, v10);
    swift_unknownObjectRetain();
    v13 = *(v0 + 168);
    if (v8 == 1)
    {
      outlined destroy of CharacterSet?(*(v0 + 168), &_sScPSgMd);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v11 + 8))(v13, v10);
    }

    if (v12[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = dispatch thunk of Actor.unownedExecutor.getter();
      v16 = v15;
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    v17 = swift_allocObject();
    *(v17 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in Array<A>.fpfs_fetchAvailableFINodes();
    *(v17 + 24) = v12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6FINodeCSgMd);
    v18 = v16 | v14;
    if (v16 | v14)
    {
      v18 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v14;
      *(v0 + 40) = v16;
    }

    ++v5;
    v6 = *(v0 + 176);
    *(v0 + 48) = 1;
    *(v0 + 56) = v18;
    *(v0 + 64) = v26;
    swift_task_create();

    swift_unknownObjectRelease();

    outlined destroy of CharacterSet?(v6, &_sScPSgMd);
    v4 = v28;
  }

  while (v27 != v5);

LABEL_18:
  v19 = *(v0 + 128);
  v20 = *(v0 + 136);
  v21 = *(v0 + 120);
  *(v0 + 72) = **(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScGySo6FINodeCSgGMd);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type TaskGroup<FINode?> and conformance TaskGroup<A>, &_sScGySo6FINodeCSgGMd);
  AsyncCompactMapSequence.init(_:transform:)();
  MEMORY[0x24C1FC960](v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6FINodeCSgMd);
  TaskGroup.makeAsyncIterator()();
  AsyncMapSequence.Iterator.transform.getter();
  (*(v19 + 8))(v20, v21);
  AsyncCompactMapSequence.Iterator.init(_:transform:)();
  v22 = swift_task_alloc();
  *(v0 + 184) = v22;
  *v22 = v0;
  v22[1] = closure #1 in Array<A>.fpfs_fetchAvailableFINodes();

  _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGySo6FINodeCSgG_ALTg5(0, 0);
}

uint64_t closure #1 in Array<A>.fpfs_fetchAvailableFINodes()(uint64_t a1)
{
  *(*v2 + 192) = a1;

  if (!v1)
  {

    return MEMORY[0x2822009F8](closure #1 in Array<A>.fpfs_fetchAvailableFINodes(), 0, 0);
  }

  return result;
}

uint64_t closure #1 in Array<A>.fpfs_fetchAvailableFINodes()()
{
  v1 = v0[24];
  if (v1)
  {
    v2 = v0[13];
    v3 = v1;
    MEMORY[0x24C1FB090]();
    if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v4 = swift_task_alloc();
    v0[23] = v4;
    *v4 = v0;
    v4[1] = closure #1 in Array<A>.fpfs_fetchAvailableFINodes();

    return _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFScGySo6FINodeCSgG_ALTg5(0, 0);
  }

  else
  {
    (*(v0[19] + 8))(v0[20], v0[18]);

    v6 = v0[1];

    return v6();
  }
}

uint64_t closure #1 in closure #1 in Array<A>.fpfs_fetchAvailableFINodes()(uint64_t a1)
{
  *(v1 + 16) = a1;
  ObjectType = swift_getObjectType();
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = closure #1 in closure #1 in Array<A>.fpfs_fetchAvailableFINodes();

  return DOCNode.fpfs_fetchFINode()(ObjectType);
}

{
  v4 = *v2;

  if (v1)
  {

    v5 = closure #1 in closure #1 in Array<A>.fpfs_fetchAvailableFINodes();
  }

  else
  {
    *(v4 + 32) = a1;
    v5 = closure #1 in closure #1 in Array<A>.fpfs_fetchAvailableFINodes();
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t closure #1 in closure #1 in Array<A>.fpfs_fetchAvailableFINodes()()
{
  **(v0 + 16) = *(v0 + 32);
  return (*(v0 + 8))();
}

{
  **(v0 + 16) = 0;
  return (*(v0 + 8))();
}

uint64_t DOCNode.fpfs_fetchFINode()(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](DOCNode.fpfs_fetchFINode(), 0, 0);
}

uint64_t DOCNode.fpfs_fetchFINode()()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v7 = *(v0 + 8);
    swift_unknownObjectRetain();

    return v7(v2);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 40) = v4;
    *(v4 + 16) = *(v0 + 24);
    v5 = swift_task_alloc();
    *(v0 + 48) = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6FINodeCSgMd);
    *v5 = v0;
    v5[1] = DOCNode.fpfs_fetchFINode();

    return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000012, 0x8000000249BD2C10, partial apply for closure #1 in DOCNode.fpfs_fetchFINode(), v4, v6);
  }
}

{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = DOCNode.fpfs_fetchFINode();
  }

  else
  {

    v2 = DOCNode.fpfs_fetchFINode();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #2 in closure #1 in Array<A>.fpfs_fetchAvailableFINodes()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](closure #2 in closure #1 in Array<A>.fpfs_fetchAvailableFINodes(), 0, 0);
}

uint64_t closure #2 in closure #1 in Array<A>.fpfs_fetchAvailableFINodes()()
{
  v1 = *(v0 + 24);
  **(v0 + 16) = v1;
  v4 = *(v0 + 8);
  v2 = v1;

  return v4();
}

uint64_t Array<A>._fpfs_prefetchAllFPItems()(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t))
{
  v4 = MEMORY[0x24C1FB170]();
  v9 = a3(0, v4);
  v5 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x24C1FAFE0](&v8, v5, WitnessTable);
  type metadata accessor for EnumeratedSequence();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_p_SitMd);
  swift_getWitnessTable();
  Sequence.compactMap<A>(_:)();

  return v9;
}

uint64_t closure #1 in Array<A>._fpfs_prefetchAllFINodes()(unint64_t a1, uint64_t a2, uint64_t *a3)
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    swift_unknownObjectRetain();
    return a2;
  }

  v7 = v6;
  v8 = *a3;
  swift_unknownObjectRetain();
  result = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v8;
  if (result)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()();
  v8 = result;
  *a3 = result;
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (*(v8 + 16) > a1)
  {
    v10 = v8 + 8 * a1;
    v11 = *(v10 + 32);
    *(v10 + 32) = v7;

    return 0;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t Array<A>.fpfs_fetchAllFINodes()(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](Array<A>.fpfs_fetchAllFINodes(), 0, 0);
}

uint64_t Array<A>.fpfs_fetchAllFINodes()()
{
  v1 = Array<A>._fpfs_prefetchAllFPItems()(v0[5], v0[6], _sSa9repeating5countSayxGx_SitcfCSo6FINodeCSg_Tt1g5Tf4gn_n);
  v0[3] = v2;
  v0[2] = v1;
  if (*(v2 + 16))
  {
    v10 = v0[5];
    v9 = v0[6];
    v11 = swift_task_alloc();
    v0[7] = v11;
    v11[2] = v9;
    v11[3] = v0 + 3;
    v11[4] = v0 + 2;
    v11[5] = v10;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_So6FINodeCSgtMd);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo6FINodeCGMd);
    v14 = swift_task_alloc();
    v0[8] = v14;
    *v14 = v0;
    v14[1] = Array<A>.fpfs_fetchAllFINodes();
    v6 = &async function pointer to partial apply for closure #2 in Array<A>.fpfs_fetchAllFINodes();
    v1 = (v0 + 4);
    v2 = v12;
    v3 = v13;
    v4 = 0;
    v5 = 0;
    v7 = v11;
    v8 = v12;

    return MEMORY[0x282200740](v1, v2, v3, v4, v5, v6, v7, v8);
  }

  else
  {
    v15 = 0;
    v16 = MEMORY[0x277D84F90];
    v26 = MEMORY[0x277D84F90];
    v17 = *(v1 + 16);
    v18 = v1 + 32;
    while (v17 != v15)
    {
      if (v15 >= *(v1 + 16))
      {
        __break(1u);
        return MEMORY[0x282200740](v1, v2, v3, v4, v5, v6, v7, v8);
      }

      v19 = *(v18 + 8 * v15++);
      if (v19)
      {
        v20 = v1;
        v21 = v2;
        v22 = v19;
        MEMORY[0x24C1FB090]();
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v16 = v26;
        v2 = v21;
        v1 = v20;
      }
    }

    v23 = v0[1];

    return v23(v16);
  }
}

{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = Array<A>.fpfs_fetchAllFINodes();
  }

  else
  {

    v2 = Array<A>.fpfs_fetchAllFINodes();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2(v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #2 in Array<A>.fpfs_fetchAllFINodes()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScg8IteratorVySi_So6FINodeCSgts5Error_p_GMd);
  v6[18] = v7;
  v6[19] = *(v7 - 8);
  v6[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in Array<A>.fpfs_fetchAllFINodes(), 0, 0);
}

uint64_t closure #2 in Array<A>.fpfs_fetchAllFINodes()()
{
  v1 = *(v0 + 112);
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3)
  {
    v26 = **(v0 + 104);
    v4 = type metadata accessor for TaskPriority();
    v5 = *(v4 - 8);
    v25 = *(v5 + 56);
    v24 = (v5 + 48);
    v22 = (v5 + 8);

    v6 = (v2 + 40);
    v23 = v4;
    while (1)
    {
      v27 = v3;
      v9 = *(v0 + 168);
      v8 = *(v0 + 176);
      v10 = *(v6 - 1);
      v11 = *v6;
      v25(v8, 1, 1, v4);
      v12 = swift_allocObject();
      v12[2] = 0;
      v13 = v12 + 2;
      v12[3] = 0;
      v12[4] = v11;
      v12[5] = v10;
      outlined init with copy of DOCGridLayout.Spec?(v8, v9, &_sScPSgMd);
      LODWORD(v9) = (*v24)(v9, 1, v4);
      swift_unknownObjectRetain_n();
      v14 = *(v0 + 168);
      if (v9 == 1)
      {
        outlined destroy of CharacterSet?(*(v0 + 168), &_sScPSgMd);
        if (*v13)
        {
          goto LABEL_8;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v22)(v14, v4);
        if (*v13)
        {
LABEL_8:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v15 = dispatch thunk of Actor.unownedExecutor.getter();
          v16 = v17;
          swift_unknownObjectRelease();
          goto LABEL_9;
        }
      }

      v15 = 0;
      v16 = 0;
LABEL_9:

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_So6FINodeCSgtMd);
      v18 = v16 | v15;
      if (v16 | v15)
      {
        v18 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v15;
        *(v0 + 40) = v16;
      }

      v4 = v23;
      v6 += 2;
      v7 = *(v0 + 176);
      *(v0 + 48) = 1;
      *(v0 + 56) = v18;
      *(v0 + 64) = v26;
      swift_task_create();

      swift_unknownObjectRelease();

      outlined destroy of CharacterSet?(v7, &_sScPSgMd);
      v3 = v27 - 1;
      if (v27 == 1)
      {

        break;
      }
    }
  }

  *(v0 + 184) = **(v0 + 104);
  *(v0 + 192) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_So6FINodeCSgtMd);
  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  ThrowingTaskGroup.makeAsyncIterator()();
  v19 = swift_task_alloc();
  *(v0 + 208) = v19;
  *v19 = v0;
  v19[1] = closure #2 in Array<A>.fpfs_fetchAllFINodes();
  v20 = *(v0 + 144);

  return MEMORY[0x2822004E8](v0 + 72, 0, 0, v20, v0 + 88);
}

{

  if (v0)
  {
    v1 = closure #2 in Array<A>.fpfs_fetchAllFINodes();
  }

  else
  {
    v1 = closure #2 in Array<A>.fpfs_fetchAllFINodes();
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  if (v1 != 1)
  {
    if (!v1)
    {
      MEMORY[0x24C1FB390](*(v0 + 184), *(v0 + 192), *(v0 + 200), MEMORY[0x277D84950]);
      goto LABEL_4;
    }

    v12 = *(v0 + 120);
    v13 = *v12;
    v14 = v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v12 = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = *(v0 + 120);
      *v26 = specialized _ArrayBuffer._consumeAndCreateNew()();
    }

    v16 = *(v0 + 120);
    sub_2493CF908(v2, v1);
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v2 < *(*v16 + 16))
    {
      v22 = *v16 + 8 * v2;
      v23 = *(v22 + 32);
      *(v22 + 32) = v1;

      v24 = swift_task_alloc();
      *(v0 + 208) = v24;
      *v24 = v0;
      v24[1] = closure #2 in Array<A>.fpfs_fetchAllFINodes();
      v20 = *(v0 + 144);
      v21 = v0 + 88;
      v17 = v0 + 72;
      v18 = 0;
      v19 = 0;

      return MEMORY[0x2822004E8](v17, v18, v19, v20, v21);
    }

    __break(1u);
    return MEMORY[0x2822004E8](v17, v18, v19, v20, v21);
  }

LABEL_4:
  v3 = *(v0 + 120);
  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
  v4 = *v3;
  v5 = MEMORY[0x277D84F90];
  v27 = MEMORY[0x277D84F90];
  v6 = *(v4 + 16);

  for (i = 0; v6 != i; ++i)
  {
    if (i >= *(v4 + 16))
    {
      __break(1u);
      goto LABEL_27;
    }

    v8 = *(v4 + 8 * i + 32);
    if (v8)
    {
      v9 = v8;
      MEMORY[0x24C1FB090]();
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v5 = v27;
    }
  }

  if (!(v5 >> 62))
  {
    v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_13;
  }

LABEL_27:
  v10 = __CocoaSet.count.getter();
LABEL_13:
  if (v10 == MEMORY[0x24C1FB170](*(v0 + 128), *(v0 + 136)))
  {
    **(v0 + 96) = v5;
  }

  else
  {

    [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
    swift_willThrow();
  }

  v11 = *(v0 + 8);

  return v11();
}

{
  (*(v0[19] + 8))(v0[20], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t closure #1 in closure #2 in Array<A>.fpfs_fetchAllFINodes()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](closure #1 in closure #2 in Array<A>.fpfs_fetchAllFINodes(), 0, 0);
}

uint64_t closure #1 in closure #2 in Array<A>.fpfs_fetchAllFINodes()()
{
  **(v0 + 16) = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = closure #1 in closure #2 in Array<A>.fpfs_fetchAllFINodes();

  return DOCNode.fpfs_fetchFINode()(ObjectType);
}

{
  *(*(v0 + 16) + 8) = *(v0 + 48);
  return (*(v0 + 8))();
}

uint64_t closure #1 in closure #2 in Array<A>.fpfs_fetchAllFINodes()(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 48) = a1;

    return MEMORY[0x2822009F8](closure #1 in closure #2 in Array<A>.fpfs_fetchAllFINodes(), 0, 0);
  }
}

uint64_t Array<A>.fetchURLPairs(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a1;
  v31 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v34 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DispatchQoS();
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v9);
  v32 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = MEMORY[0x277D84F90];
  v12 = dispatch_group_create();
  if (MEMORY[0x24C1FB1B0](a3, a4))
  {
    v13 = 4;
    do
    {
      v14 = v13 - 4;
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v16 = *(a3 + 8 * v13);
        swift_unknownObjectRetain();
        v17 = v13 - 3;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        v16 = _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v13 - 3;
        if (__OFADD__(v14, 1))
        {
LABEL_9:
          __break(1u);
          break;
        }
      }

      dispatch_group_enter(v12);
      v18 = swift_allocObject();
      v18[2] = a4;
      v18[3] = v12;
      v18[4] = v16;
      v18[5] = v11;
      v43 = partial apply for closure #1 in Array<A>.fetchURLPairs(_:);
      v44 = v18;
      aBlock = MEMORY[0x277D85DD0];
      v40 = 1107296256;
      v41 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
      v42 = &block_descriptor_63_0;
      v19 = _Block_copy(&aBlock);
      v20 = v12;
      swift_unknownObjectRetain();

      [v16 fetchURL_];
      _Block_release(v19);
      swift_unknownObjectRelease();
      ++v13;
    }

    while (v17 != MEMORY[0x24C1FB1B0](a3, a4));
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v29 = static OS_dispatch_queue.main.getter();
  v21 = swift_allocObject();
  v22 = v31;
  v21[2] = v30;
  v21[3] = v22;
  v21[4] = v11;
  v43 = partial apply for closure #2 in Array<A>.fetchURLPairs(_:);
  v44 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v42 = &block_descriptor_69;
  v23 = _Block_copy(&aBlock);

  v24 = v32;
  static DispatchQoS.unspecified.getter();
  v38 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  v25 = v34;
  v26 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v27 = v29;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v23);

  (*(v36 + 8))(v25, v26);
  (*(v33 + 8))(v24, v35);
}

void closure #1 in Array<A>.fetchURLPairs(_:)(uint64_t a1, void *a2, NSObject *a3, void *a4)
{
  v46 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_p4node_10Foundation3URLV3urltMd);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v47[-1] - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v47[-1] - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v47[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.UI);
    swift_unknownObjectRetain();
    v21 = a2;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v47[0] = v26;
      *v24 = 136446466;
      v27 = [a4 description];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v47);

      *(v24 + 4) = v31;
      *(v24 + 12) = 2112;
      v32 = a2;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 14) = v33;
      *v25 = v33;
      _os_log_impl(&dword_2493AC000, v22, v23, "Error fetching the url for item %{public}s: %@", v24, 0x16u);
      outlined destroy of CharacterSet?(v25, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v25, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x24C1FE850](v26, -1, -1);
      MEMORY[0x24C1FE850](v24, -1, -1);
    }

    v34 = v46;

    dispatch_group_leave(v34);
  }

  else
  {
    outlined init with copy of DOCGridLayout.Spec?(a1, v14, &_s10Foundation3URLVSgMd);
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      outlined destroy of CharacterSet?(v14, &_s10Foundation3URLVSgMd);
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, static Logger.UI);
      swift_unknownObjectRetain();
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v47[0] = v39;
        *v38 = 136446210;
        v40 = [a4 description];
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;

        v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, v47);

        *(v38 + 4) = v44;
        _os_log_impl(&dword_2493AC000, v36, v37, "Error fetching the url for item: %{public}s but also did not get an error", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v39);
        MEMORY[0x24C1FE850](v39, -1, -1);
        MEMORY[0x24C1FE850](v38, -1, -1);
      }
    }

    else
    {
      (*(v16 + 32))(v19, v14, v15);
      v45 = *(v7 + 48);
      *v10 = a4;
      (*(v16 + 16))(&v10[v45], v19, v15);
      swift_beginAccess();
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7DOCNode_p4node_10Foundation3URLV3urltGMd);
      Array.append(_:)();
      swift_endAccess();
      (*(v16 + 8))(v19, v15);
    }

    dispatch_group_leave(v46);
  }
}

uint64_t closure #2 in Array<A>.fetchURLPairs(_:)(void (*a1)(uint64_t))
{
  swift_beginAccess();

  a1(v2);
}

uint64_t Array<A>.fetchURLs(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  Array<A>.fetchURLPairs(_:)(partial apply for closure #1 in Array<A>.fetchURLs(_:), v8, a3, a4);
}

uint64_t closure #1 in Array<A>.fetchURLs(_:)(uint64_t a1, void (*a2)(void, __n128), uint64_t a3)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_p4node_10Foundation3URLV3urltMd);
  v6 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v7);
  v37 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v38 = &v32 - v11;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v15.n128_f64[0] = MEMORY[0x28223BE20](v12, v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 16);
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v32 = a3;
    v33 = a2;
    v39 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
    v19 = v39;
    v20 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v35 = *(v6 + 72);
    v36 = v13;
    v21 = (v13 + 32);
    v22 = v34;
    do
    {
      v23 = v38;
      outlined init with copy of DOCGridLayout.Spec?(v20, v38, &_sSo7DOCNode_p4node_10Foundation3URLV3urltMd);
      v24 = v23;
      v25 = v37;
      outlined init with take of (key: URL, value: FPItem)(v24, v37, &_sSo7DOCNode_p4node_10Foundation3URLV3urltMd);
      swift_unknownObjectRelease();
      v26 = *v21;
      (*v21)(v17, v25 + *(v22 + 48), v12);
      v39 = v19;
      v27 = v17;
      v28 = v12;
      v30 = *(v19 + 16);
      v29 = *(v19 + 24);
      if (v30 >= v29 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v29 > 1, v30 + 1, 1);
        v22 = v34;
        v19 = v39;
      }

      *(v19 + 16) = v30 + 1;
      v26((v19 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v30), v27, v28);
      v20 += v35;
      --v18;
      v12 = v28;
      v17 = v27;
    }

    while (v18);
    a2 = v33;
  }

  a2(v19, v15);
}

Swift::Int DOCNodeType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1);
  return Hasher._finalize()();
}

uint64_t DOCNode.decorationLabel(for:)(_BYTE *a1)
{
  v51[1] = *MEMORY[0x277D85DE8];
  LOBYTE(v2) = *a1;
  v3 = [v1 fpfs_fpItem];
  if (v3)
  {
    v46 = v3;
    v4 = [v1 itemDecorations];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItemDecoration);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v51[0] = MEMORY[0x277D84F90];
    if (v5 >> 62)
    {
      goto LABEL_42;
    }

    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v7 = MEMORY[0x277D84F90];
    if (v6)
    {
      v45 = v2;
      v8 = 0;
      v47 = v5 & 0xFFFFFFFFFFFFFF8;
      v49 = v5 & 0xC000000000000001;
      while (1)
      {
        if (v49)
        {
          v9 = MEMORY[0x24C1FC540](v8, v5);
        }

        else
        {
          if (v8 >= *(v47 + 16))
          {
            goto LABEL_39;
          }

          v9 = *(v5 + 8 * v8 + 32);
        }

        v10 = v9;
        v2 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          v6 = __CocoaSet.count.getter();
          goto LABEL_4;
        }

        v11 = v5;
        v12 = [v9 type];
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;
        if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
        {
        }

        else
        {
          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v18 & 1) == 0)
          {

            goto LABEL_8;
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
LABEL_8:
        v5 = v11;
        ++v8;
        if (v2 == v6)
        {
          v19 = v51[0];
          LOBYTE(v2) = v45;
          v7 = MEMORY[0x277D84F90];
          goto LABEL_23;
        }
      }
    }

    v19 = MEMORY[0x277D84F90];
LABEL_23:

    if (v2)
    {
      v51[0] = v7;
      if ((v19 & 0x8000000000000000) != 0 || (v19 & 0x4000000000000000) != 0)
      {
        v21 = __CocoaSet.count.getter();
        if (v21)
        {
LABEL_27:
          v22 = 0;
          v2 = v19 & 0xC000000000000001;
          while (1)
          {
            if (v2)
            {
              v23 = MEMORY[0x24C1FC540](v22, v19);
            }

            else
            {
              if (v22 >= *(v19 + 16))
              {
                goto LABEL_41;
              }

              v23 = *(v19 + 8 * v22 + 32);
            }

            v24 = v23;
            v25 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              goto LABEL_40;
            }

            v26 = [v23 decorationIdentifier];
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v5 = v27;

            LOBYTE(v26) = specialized Sequence<>.starts<A>(with:)();

            if (v26)
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
            }

            else
            {
            }

            ++v22;
            if (v25 == v21)
            {
              v28 = v51[0];
              goto LABEL_45;
            }
          }
        }
      }

      else
      {
        v21 = *(v19 + 16);
        if (v21)
        {
          goto LABEL_27;
        }
      }

      v28 = MEMORY[0x277D84F90];
LABEL_45:

      v19 = v28;
    }

    if (v19 >> 62)
    {
LABEL_66:
      v29 = __CocoaSet.count.getter();
      if (v29)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v29 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29)
      {
LABEL_48:
        v30 = 0;
        v20 = 0;
        v31 = 0;
        v32 = 0;
        v33 = &selRef_removeFromSuperlayer;
        while (2)
        {
          v34 = v31;
          while (1)
          {
            if ((v19 & 0xC000000000000001) != 0)
            {
              v35 = MEMORY[0x24C1FC540](v34, v19);
              v31 = v34 + 1;
              if (__OFADD__(v34, 1))
              {
                goto LABEL_64;
              }
            }

            else
            {
              if (v34 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_65;
              }

              v35 = *(v19 + 8 * v34 + 32);
              v31 = v34 + 1;
              if (__OFADD__(v34, 1))
              {
LABEL_64:
                __break(1u);
LABEL_65:
                __break(1u);
                goto LABEL_66;
              }
            }

            if (!v30)
            {
              break;
            }

            ++v34;
            if (v31 == v29)
            {
              goto LABEL_68;
            }
          }

          v51[0] = 0;
          v50 = v35;
          v36 = [v35 v33[226]];
          v37 = v51[0];
          if (v36)
          {
            v48 = v32;
            v38 = v33;
            v39 = v36;
            v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v30 = v40;
            v41 = v37;

            v33 = v38;
            v32 = v48;

            if (v31 != v29)
            {
              continue;
            }
          }

          else
          {
            v42 = v51[0];
            v43 = _convertNSErrorToError(_:)();

            swift_willThrow();
            v20 = 0;
            v30 = 0;
            v32 = 0;
            if (v31 != v29)
            {
              continue;
            }
          }

          goto LABEL_68;
        }
      }
    }

    v20 = 0;
LABEL_68:

    return v20;
  }

  return 0;
}

id compactOrDetailed #1 <A>(_:) in DOCNode.localizedSharingStatusDescription(type:options:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v6 = result;
    v11._object = 0x8000000249BD2F20;
    v7._countAndFlagsBits = 0x6220646572616853;
    v7._object = 0xEC00000040252079;
    v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v8.value._object = 0xEB00000000656C62;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v11._countAndFlagsBits = 0xD000000000000035;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v11);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_249B9A480;
    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v10 + 32) = a1;
    *(v10 + 40) = a2;

    a1 = static String.localizedStringWithFormat(_:_:)();

    return a1;
  }

  __break(1u);
  return result;
}

id specialized DOCNode.localizedChildItemCountDescription()()
{
  if (![v0 isFolder])
  {
    goto LABEL_7;
  }

  if ([v0 nodePermissions_] != 2048)
  {
    goto LABEL_7;
  }

  v1 = [v0 childItemCount];
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v1;
  if (([v1 integerValue] & 0x8000000000000000) != 0)
  {

LABEL_7:
    v12 = DOCLocalizedMetadataStringForUnavailablePropertyValue();
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v13;
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v4 = result;
    v14._object = 0x8000000249BD2CF0;
    v5._countAndFlagsBits = 0x6D65746920756C25;
    v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v6.value._object = 0xEB00000000656C62;
    v5._object = 0xE900000000000073;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    v14._countAndFlagsBits = 0xD00000000000003ELL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v14);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_249B9A480;
    v9 = [v2 integerValue];
    v10 = MEMORY[0x277D83C10];
    *(v8 + 56) = MEMORY[0x277D83B88];
    *(v8 + 64) = v10;
    *(v8 + 32) = v9;
    v11 = static String.localizedStringWithFormat(_:_:)();

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = v0;
    if (![v2 isFolder] || objc_msgSend(v2, sel_nodePermissions_, 2048) != 2048)
    {
      v15 = DOCLocalizedMetadataStringForUnavailablePropertyValue();
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v16;
    }
  }

  v4 = [v0 childItemCount];
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = v4;
  if (([v4 integerValue] & 0x8000000000000000) != 0)
  {

LABEL_11:
    v17 = DOCLocalizedMetadataStringForUnavailablePropertyValue();
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v18;
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v7 = result;
    v19._object = 0x8000000249BD2CF0;
    v8._countAndFlagsBits = 0x6D65746920756C25;
    v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v9.value._object = 0xEB00000000656C62;
    v8._object = 0xE900000000000073;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    v19._countAndFlagsBits = 0xD00000000000003ELL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v19);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_249B9A480;
    v12 = [v5 integerValue];
    v13 = MEMORY[0x277D83C10];
    *(v11 + 56) = MEMORY[0x277D83B88];
    *(v11 + 64) = v13;
    *(v11 + 32) = v12;
    v14 = static String.localizedStringWithFormat(_:_:)();

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::String __swiftcall DOCNode.localizedChildItemCountDescription()()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    swift_unknownObjectRetain();
    if (![v2 isFolder] || objc_msgSend(v2, sel_nodePermissions_, 2048) != 2048)
    {
      v17 = DOCLocalizedMetadataStringForUnavailablePropertyValue();
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
      swift_unknownObjectRelease();

      v5 = v18;
      v6 = v20;
      goto LABEL_13;
    }

    swift_unknownObjectRelease();
  }

  v3 = [v0 childItemCount];
  if (!v3)
  {
LABEL_11:
    v21 = DOCLocalizedMetadataStringForUnavailablePropertyValue();
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v5 = v22;
    v6 = v24;
    goto LABEL_13;
  }

  v4 = v3;
  if (([v3 integerValue] & 0x8000000000000000) != 0)
  {

    goto LABEL_11;
  }

  v5 = _DocumentManagerBundle();
  if (v5)
  {
    v7 = v5;
    v26._object = 0x8000000249BD2CF0;
    v8._countAndFlagsBits = 0x6D65746920756C25;
    v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v9.value._object = 0xEB00000000656C62;
    v8._object = 0xE900000000000073;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    v26._countAndFlagsBits = 0xD00000000000003ELL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v26);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_249B9A480;
    v12 = [v4 integerValue];
    v13 = MEMORY[0x277D83C10];
    *(v11 + 56) = MEMORY[0x277D83B88];
    *(v11 + 64) = v13;
    *(v11 + 32) = v12;
    v14 = static String.localizedStringWithFormat(_:_:)();
    v16 = v15;

    v5 = v14;
    v6 = v16;
  }

  else
  {
    __break(1u);
  }

LABEL_13:
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::Int one-time initialization function for propertiesAffectingChildCount()
{
  result = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo8PropertyV_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for propertiesAffectingChildCount);
  static Property.propertiesAffectingChildCount = result;
  return result;
}

BOOL Property.affectsChildCount.getter(Swift::UInt32 a1)
{
  if (one-time initialization token for propertiesAffectingChildCount != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = static Property.propertiesAffectingChildCount;

  return specialized Set.contains(_:)(a1, v2);
}

uint64_t ReadWriteLock.__allocating_init(with:)(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v15 = a2;
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v3);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue_concurrent.Attributes();
  MEMORY[0x28223BE20](v6, v7);
  v8 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = swift_allocObject();
  v12[1] = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue_concurrent);
  static DispatchQoS.userInitiated.getter();
  v16 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type OS_dispatch_queue_concurrent.Attributes and conformance OS_dispatch_queue_concurrent.Attributes, MEMORY[0x277D852E8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo28OS_dispatch_queue_concurrentC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue_concurrent.Attributes] and conformance [A], &_sSaySo28OS_dispatch_queue_concurrentC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v5, *MEMORY[0x277D85268], v13);
  *(v10 + 16) = OS_dispatch_queue_concurrent.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v10;
}

uint64_t ReadWriteLock.init(with:)(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v15 = a1;
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue_concurrent.Attributes();
  MEMORY[0x28223BE20](v6, v7);
  v8 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v8 - 8, v9);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue_concurrent);
  static DispatchQoS.userInitiated.getter();
  v18 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type OS_dispatch_queue_concurrent.Attributes and conformance OS_dispatch_queue_concurrent.Attributes, MEMORY[0x277D852E8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo28OS_dispatch_queue_concurrentC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue_concurrent.Attributes] and conformance [A], &_sSaySo28OS_dispatch_queue_concurrentC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v5, *MEMORY[0x277D85268], v14);
  v10 = OS_dispatch_queue_concurrent.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = v17;
  *(v17 + 16) = v10;
  return v11;
}

uint64_t specialized ReadWriteLock.withReadLock<A>(_:)(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v13 = 0;
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  v6[2] = &v12;
  v6[3] = a1;
  v6[4] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for specialized closure #1 in ReadWriteLock.withReadLock<A>(_:);
  *(v7 + 24) = v6;
  v11[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed () -> ();
  v11[3] = &block_descriptor_243;
  v8 = _Block_copy(v11);

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else if (v13)
  {
    v10 = v12;

    return v10;
  }

  __break(1u);
  return result;
}

{
  v12 = 2;
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  v6[2] = &v12;
  v6[3] = a1;
  v6[4] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for specialized closure #1 in ReadWriteLock.withReadLock<A>(_:);
  *(v7 + 24) = v6;
  aBlock[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_253;
  v8 = _Block_copy(aBlock);

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;
    if (v12 != 2)
    {

      return v10 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t ReadWriteLock.withReadLock<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  v25 = type metadata accessor for Optional();
  v8 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.n128_f64[0] = MEMORY[0x28223BE20](v12, v13);
  v16 = &v24 - v15;
  v17 = *(a3 - 8);
  (*(v17 + 56))(&v24 - v15, 1, 1, a3, v14);
  v18 = *(v4 + 16);
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = v16;
  v19[4] = a1;
  v19[5] = a2;
  v20 = swift_allocObject();
  *(v20 + 16) = partial apply for closure #1 in ReadWriteLock.withReadLock<A>(_:);
  *(v20 + 24) = v19;
  aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_81_0;
  v21 = _Block_copy(aBlock);

  dispatch_sync(v18, v21);
  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  else
  {
    v23 = v25;
    (*(v8 + 16))(v11, v16, v25);
    result = (*(v17 + 48))(v11, 1, a3);
    if (result != 1)
    {
      (*(v17 + 32))(v24, v11, a3);
      (*(v8 + 8))(v16, v23);
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in ReadWriteLock.withReadLock<A>(_:)(uint64_t a1, void (*a2)(double), uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v14 - v11;
  a2(v10);
  (*(*(a4 - 8) + 56))(v12, 0, 1, a4);
  return (*(v8 + 40))(a1, v12, v7);
}

uint64_t ReadWriteLock.withWriteLock(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DispatchWorkItemFlags.barrier.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_87_0;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  MEMORY[0x24C1FB9A0](0, v8, v13, v15);
  _Block_release(v15);
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
}

uint64_t ReadWriteLock.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t static ObjCSync.with<A>(obj:_:)(void *a1, void (*a2)(uint64_t))
{
  v4 = objc_sync_enter(a1);
  a2(v4);
  return objc_sync_exit(a1);
}

uint64_t FINodeItemCountFetcher.__allocating_init(with:)(void *a1)
{
  swift_allocObject();
  v2 = specialized FINodeItemCountFetcher.init(with:)(a1);

  return v2;
}

uint64_t FINodeItemCountFetcher.init(with:)(void *a1)
{
  v2 = specialized FINodeItemCountFetcher.init(with:)(a1);

  return v2;
}

uint64_t key path setter for FINodeItemCountFetcher.isStale : FINodeItemCountFetcher(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;

  ReadWriteLock.withWriteLock(_:)(closure #1 in FINodeItemCountFetcher.isStale.setterpartial apply, v4);
}

uint64_t FINodeItemCountFetcher.isStale.setter(char a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;

  ReadWriteLock.withWriteLock(_:)(partial apply for closure #1 in FINodeItemCountFetcher.isStale.setter, v3);
}

uint64_t (*FINodeItemCountFetcher.isStale.modify(uint64_t a1))(uint64_t *a1)
{
  v2 = v1;
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = specialized ReadWriteLock.withReadLock<A>(_:)(closure #1 in FINodeItemCountFetcher.isStale.getterpartial apply, v2) & 1;
  return FINodeItemCountFetcher.isStale.modify;
}

uint64_t FINodeItemCountFetcher.isStale.modify(uint64_t *a1)
{
  v1 = *(a1 + 16);
  v2 = *a1;
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  ReadWriteLock.withWriteLock(_:)(closure #1 in FINodeItemCountFetcher.isStale.setterpartial apply, v3);
}

uint64_t FINodeItemCountFetcher.itemCountStr(fetchIfStale:completionHandler:)(char a1, uint64_t a2, uint64_t a3)
{
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS.QoSClass();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    return specialized ReadWriteLock.withReadLock<A>(_:)(closure #1 in FINodeItemCountFetcher.itemCountStr.getterpartial apply, v3);
  }

  v44 = v11;
  v45 = v9;
  v46 = v10;
  v47 = v6;
  v48 = v5;
  v49 = v18;
  v61 = 1;
  v59 = 0;
  v60 = 0xE000000000000000;
  MEMORY[0x28223BE20](v18, v19);
  *(&v43 - 4) = &v59;
  *(&v43 - 3) = v3;
  *(&v43 - 2) = &v61;
  LOBYTE(v52) = v22;
  v24 = *(v23 + 16);
  v25 = swift_allocObject();
  v25[2] = &v52;
  v25[3] = partial apply for closure #1 in FINodeItemCountFetcher.itemCountStr(fetchIfStale:completionHandler:);
  v25[4] = &v43 - 6;
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for specialized closure #1 in ReadWriteLock.withReadLock<A>(_:);
  *(v26 + 24) = v25;
  v57 = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  v58 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v54 = 1107296256;
  v55 = thunk for @escaping @callee_guaranteed () -> ();
  v56 = &block_descriptor_110;
  v27 = _Block_copy(&aBlock);

  dispatch_sync(v24, v27);
  _Block_release(v27);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v52)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (v61 == 1)
  {
    v30 = swift_allocObject();
    swift_weakInit();
    v31 = objc_opt_self();

    if ([v31 isMainThread])
    {

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v32 = v49;
      (*(v16 + 104))(v21, *MEMORY[0x277D851B8], v49);
      v33 = static OS_dispatch_queue.global(qos:)();
      (*(v16 + 8))(v21, v32);
      v34 = swift_allocObject();
      v34[2] = partial apply for closure #2 in FINodeItemCountFetcher.itemCountStr(fetchIfStale:completionHandler:);
      v34[3] = v30;
      v36 = v50;
      v35 = v51;
      v34[4] = v50;
      v34[5] = v35;
      v57 = partial apply for closure #3 in FINodeItemCountFetcher.itemCountStr(fetchIfStale:completionHandler:);
      v58 = v34;
      aBlock = MEMORY[0x277D85DD0];
      v54 = 1107296256;
      v55 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v56 = &block_descriptor_119;
      v37 = _Block_copy(&aBlock);

      outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v36);
      static DispatchQoS.unspecified.getter();
      v52 = MEMORY[0x277D84F90];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
      v38 = v45;
      v39 = v48;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x24C1FB9A0](0, v14, v38, v37);
      _Block_release(v37);

      (*(v47 + 8))(v38, v39);
      (*(v44 + 8))(v14, v46);
    }

    else
    {
      v40 = closure #2 in FINodeItemCountFetcher.itemCountStr(fetchIfStale:completionHandler:)();
      v42 = v41;

      v59 = v40;
      v60 = v42;
    }
  }

  return v59;
}

id closure #2 in FINodeItemCountFetcher.itemCountStr(fetchIfStale:completionHandler:)()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = *(Strong + 16);
  v3 = specialized DOCNode.localizedChildItemCountDescription()();
  v5 = v4;

  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v3;
  v6[4] = v5;

  ReadWriteLock.withWriteLock(_:)(partial apply for closure #1 in closure #2 in FINodeItemCountFetcher.itemCountStr(fetchIfStale:completionHandler:), v6);

  return v3;
}

uint64_t closure #3 in FINodeItemCountFetcher.itemCountStr(fetchIfStale:completionHandler:)(uint64_t (*a1)(void), uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v4 = a1();
  v6 = v5;
  if (a3)
  {
    v7 = v4;

    a3(v7, v6);

    return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a3);
  }

  else
  {
  }
}

uint64_t FINodeItemCountFetcher.deinit()
{

  return v0;
}

uint64_t FINodeItemCountFetcher.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t specialized DOCNode.itemCountFetcher(createOnMiss:)(char a1)
{
  v2 = v1;
  objc_sync_enter(v2);
  if (a1)
  {
    if (one-time initialization token for associatedObjectStorageKey != -1)
    {
      swift_once();
    }

    v4 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo6FINodeC_Tt1B5(v2, static FINode.associatedObjectStorageKey);
    KeyPath = swift_getKeyPath();
    v7 = MEMORY[0x28223BE20](KeyPath, v6);
    v10 = v2;
    (*((*MEMORY[0x277D85000] & *v4) + 0x90))(&v11, v7);

    v12 = v11;
  }

  else
  {
    if (one-time initialization token for associatedObjectStorageKey != -1)
    {
      swift_once();
    }

    v8 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo6FINodeC_Tt1B5(v2, static FINode.associatedObjectStorageKey);
    swift_getKeyPath();
    (*((*MEMORY[0x277D85000] & *v8) + 0x60))(&v12);
  }

  objc_sync_exit(v2);
  return v12;
}

void closure #1 in closure #1 in DOCNode.itemCountFetcher(createOnMiss:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for FINodeItemCountFetcher();
  swift_allocObject();
  v4 = a1;
  v5 = specialized FINodeItemCountFetcher.init(with:)(v4);

  *a2 = v5;
}

void *DOCNode.cachedLocalizedChildItemCountDescription(fetchIfStale:completionHandler:)(char a1, uint64_t a2, uint64_t a3)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRetain();
    v6 = specialized DOCNode.localizedChildItemCountDescription()();
  }

  else
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {
      return v6;
    }

    swift_unknownObjectRetain();
    if (![v6 isFolder] || objc_msgSend(v6, sel_nodePermissions_, 2048) != 2048 || !specialized DOCNode.itemCountFetcher(createOnMiss:)(a1 & 1))
    {
      swift_unknownObjectRelease();
      return 0;
    }

    v6 = FINodeItemCountFetcher.itemCountStr(fetchIfStale:completionHandler:)(a1 & 1, a2, a3);
  }

  swift_unknownObjectRelease();
  return v6;
}

uint64_t DOCNode.markCachedLocalizedChildItemCountDescriptionAsStale(forProperty:)(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for propertiesAffectingChildCount != -1)
  {
    v6 = a1;
    swift_once();
    LODWORD(a1) = v6;
  }

  result = specialized Set.contains(_:)(a1, static Property.propertiesAffectingChildCount);
  if (result)
  {
LABEL_5:
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v2 = result;
      swift_unknownObjectRetain();
      objc_sync_enter(v2);
      if (one-time initialization token for associatedObjectStorageKey != -1)
      {
        swift_once();
      }

      v3 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo6FINodeC_Tt1B5(v2, static FINode.associatedObjectStorageKey);
      swift_getKeyPath();
      (*((*MEMORY[0x277D85000] & *v3) + 0x60))(&v7);

      objc_sync_exit(v2);
      v4 = v7;
      if (v7)
      {
        v5 = swift_allocObject();
        *(v5 + 16) = v4;
        *(v5 + 24) = 1;

        ReadWriteLock.withWriteLock(_:)(closure #1 in FINodeItemCountFetcher.isStale.setterpartial apply, v5);

        swift_unknownObjectRelease();
      }

      else
      {
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t DOCNode.compareBySharedStatus(node:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PersonNameComponents();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v51 - v11;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v51 - v15;
  v19 = MEMORY[0x28223BE20](v17, v18);
  v21 = &v51 - v20;
  if ([v2 isSharedByCurrentUser] && (objc_msgSend(a1, sel_isSharedByCurrentUser) & 1) != 0)
  {
    return 0;
  }

  if ([v2 isSharedByCurrentUser] && !objc_msgSend(a1, sel_isSharedByCurrentUser))
  {
    return -1;
  }

  if ([v2 isSharedByCurrentUser] & 1) == 0 && (objc_msgSend(a1, sel_isSharedByCurrentUser))
  {
    return 1;
  }

  result = [v2 ownerNameComponents];
  if (result)
  {
    v23 = result;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = *(v5 + 32);
    v24(v21, v16, v4);
    v25 = [a1 ownerNameComponents];
    if (!v25)
    {
      (*(v5 + 8))(v21, v4);
      return 0;
    }

    v26 = v25;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v24(v12, v8, v4);
    v27 = [objc_opt_self() sharedDefaults];
    v28 = [v27 sortOrder];

    if (v28 == 2)
    {
      v37 = PersonNameComponents.givenName.getter();
      if (!v38)
      {
        goto LABEL_22;
      }

      v31 = v37;
      v32 = v38;
      v33 = PersonNameComponents.givenName.getter();
      if (v34)
      {
LABEL_15:
        v53 = v31;
        v54 = v32;
        v51 = v33;
        v52 = v34;
        lazy protocol witness table accessor for type String and conformance String();
        v35 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();

        if (v35)
        {
          v36 = *(v5 + 8);
          v36(v12, v4);
          v36(v21, v4);
          return v35;
        }

LABEL_22:
        v39 = objc_opt_self();
        isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
        v41 = [v39 localizedStringFromPersonNameComponents:isa style:0 options:0];

        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        v45 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
        v46 = [v39 localizedStringFromPersonNameComponents:v45 style:0 options:0];

        v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = v48;

        v53 = v42;
        v54 = v44;
        v51 = v47;
        v52 = v49;
        lazy protocol witness table accessor for type String and conformance String();
        v35 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();
        v50 = *(v5 + 8);
        v50(v12, v4);
        v50(v21, v4);

        return v35;
      }
    }

    else
    {
      if (v28 != 3)
      {
        goto LABEL_22;
      }

      v29 = PersonNameComponents.familyName.getter();
      if (!v30)
      {
        goto LABEL_22;
      }

      v31 = v29;
      v32 = v30;
      v33 = PersonNameComponents.familyName.getter();
      if (v34)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_22;
  }

  return result;
}

double DOCNode.parentIdentifierKey.getter@<D0>(uint64_t a1@<X8>)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    swift_unknownObjectRetain();
    v4 = [v3 parent];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 identifier];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      return result;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = v8;
      swift_unknownObjectRetain();
      v11 = [v9 parentItemIdentifier];
      type metadata accessor for NSFileProviderItemIdentifier(0);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type NSFileProviderItemIdentifier and conformance NSFileProviderItemIdentifier, type metadata accessor for NSFileProviderItemIdentifier);
      v10 = v11;
      AnyHashable.init<A>(_:)();

      swift_unknownObjectRelease();
      return result;
    }
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t DOCNode.isParentRootItem.getter()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    v1 = v0;
    swift_unknownObjectRetain();
    v2 = [v1 parent];
    if (!v2)
    {
      v4 = 0;
LABEL_15:
      swift_unknownObjectRelease();
      return v4 & 1;
    }

    v3 = v2;
    v4 = [v2 isRootItem];
LABEL_14:

    goto LABEL_15;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    swift_unknownObjectRetain();
    v3 = [v6 parentItemIdentifier];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
    {
      v4 = 1;
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    goto LABEL_14;
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t DOCNode.typeToFocusItem.getter@<X0>(uint64_t *a1@<X8>)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    v5 = &protocol witness table for FPItem;
  }

  else
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v3 = v6;
    v4 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
    v5 = &protocol witness table for FINode;
  }

  a1[3] = v4;
  a1[4] = v5;
  *a1 = v3;

  return swift_unknownObjectRetain();
}

uint64_t protocol witness for DOCTypeToFocusItem.displayName.getter in conformance FPItem()
{
  v1 = [*v0 displayName];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t DOCFolderSize.init(logicalBytes:physicalBytes:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4 & 1;
  return result;
}

uint64_t callHandler #1 <A>(_:) in DOCNode.performFolderSizingIfSupported(handlerQueue:_:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v12 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v16 = *(a1 + 2);
  v17 = *(a1 + 24);
  LOBYTE(a1) = *(a1 + 25);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  *(v18 + 32) = v21;
  *(v18 + 48) = v16;
  *(v18 + 56) = v17;
  *(v18 + 57) = a1;
  aBlock[4] = partial apply for closure #1 in callHandler #1 <A>(_:) in DOCNode.performFolderSizingIfSupported(handlerQueue:_:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_334;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v24 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v15, v11, v19);
  _Block_release(v19);
  (*(v8 + 8))(v11, v7);
  (*(v12 + 8))(v15, v22);
}

uint64_t closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a6;
  v8[4] = a7;
  v8[2] = a5;
  v10 = swift_task_alloc();
  v8[5] = v10;
  *v10 = v8;
  v10[1] = closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:);

  return DOCNode.fpfs_fetchFINode()(a8);
}

uint64_t closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:);
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:)()
{
  v19 = v0;
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = [*(v0 + 56) propertyAsNumber_];
    v3 = v2 == 0;
    if (v2)
    {
      v4 = v2;
      v5 = [v2 longLongValue];
    }

    else
    {
      v5 = 0;
    }

    v8 = [v1 propertyAsNumber_];
    if (v8)
    {
      v9 = v8;
      v6 = [v8 longLongValue];

      v7 = 0;
    }

    else
    {
      v6 = 0;
      v7 = 1;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
    v7 = 1;
    v3 = 1;
  }

  v10 = *(v0 + 24);
  v11 = *(v0 + 32);
  v12 = *(v0 + 16);
  *&v15 = v5;
  *(&v15 + 1) = v3;
  v16 = v6;
  v17 = v7;
  v18 = 0;
  callHandler #1 <A>(_:) in DOCNode.performFolderSizingIfSupported(handlerQueue:_:)(&v15, v12, v10, v11);

  v13 = *(v0 + 8);

  return v13();
}

{
  v10 = v0;
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v7 = 0uLL;
  v8 = 0;
  v9 = 256;
  callHandler #1 <A>(_:) in DOCNode.performFolderSizingIfSupported(handlerQueue:_:)(&v7, v4, v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  outlined init with copy of DOCGridLayout.Spec?(a3, v26 - v11, &_sScPSgMd);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of CharacterSet?(v12, &_sScPSgMd);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      outlined destroy of CharacterSet?(a3, &_sScPSgMd);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of CharacterSet?(a3, &_sScPSgMd);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  outlined init with copy of DOCGridLayout.Spec?(a3, v26 - v11, &_sScPSgMd);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of CharacterSet?(v12, &_sScPSgMd);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      outlined destroy of CharacterSet?(a3, &_sScPSgMd);

      return v23;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of CharacterSet?(a3, &_sScPSgMd);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void DOCNode.fpfs_fetchFINode(completion:)(void (*a1)(uint64_t, void), uint64_t a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    swift_unknownObjectRetain();
    a1(v5, 0);

    swift_unknownObjectRelease();
    return;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    _StringGuts.grow(_:)(61);
    MEMORY[0x24C1FAEA0](0xD00000000000003BLL, 0x8000000249BD2DB0);
    swift_getObjectType();
    v18 = _typeName(_:qualified:)();
    MEMORY[0x24C1FAEA0](v18);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v7 = v6;
  swift_unknownObjectRetain();
  v8 = [v7 cachedDomain];
  if (!v8)
  {
LABEL_16:
    v10 = [objc_opt_self() defaultManager];
    v11 = swift_allocObject();
    v11[2] = v7;
    v11[3] = a1;
    v11[4] = a2;
    v24 = partial apply for closure #2 in DOCNode.fpfs_fetchFINode(completion:);
    v25 = v11;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
    v23 = &block_descriptor_129;
    v12 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    [v10 fetchURLForItem:v7 completionHandler:v12];
    _Block_release(v12);
    swift_unknownObjectRelease();

    return;
  }

  v9 = v8;
  if (![v7 isRootItem] || (FPProviderDomain.shouldUseDSEnumeration.getter() & 1) == 0)
  {
    if (([v9 isUsingFPFS] & 1) == 0 && (FPProviderDomain.shouldUseDSEnumeration.getter() & 1) != 0 && (FPProviderDomain.isPOSIXCompatible.getter() & 1) == 0)
    {
      v13 = objc_opt_self();
      v14 = swift_allocObject();
      v14[2] = v7;
      v14[3] = v9;
      v14[4] = a1;
      v14[5] = a2;
      v24 = partial apply for closure #1 in DOCNode.fpfs_fetchFINode(completion:);
      v25 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v21 = 1107296256;
      v22 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
      v23 = &block_descriptor_135_0;
      v15 = _Block_copy(&aBlock);
      v16 = v9;
      swift_unknownObjectRetain();
      v17 = v16;

      [v13 fiNodeFromItem:v7 inFPv2Domain:v17 completion:v15];
      _Block_release(v15);
      swift_unknownObjectRelease();

      return;
    }

    goto LABEL_16;
  }

  v19 = specialized static DOCRootNode.rootNode(for:)(v9);
  a1(v19, 0);
  swift_unknownObjectRelease();
}

uint64_t closure #1 in DOCNode.fpfs_fetchFINode(completion:)(uint64_t a1, void *a2, void *a3, void *a4, uint64_t (*a5)(uint64_t, void *))
{
  if (!a1)
  {
    if (one-time initialization token for Enumeration != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.Enumeration);
    v10 = a3;
    v11 = a4;
    v12 = a2;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138543874;
      *(v15 + 4) = v10;
      *(v15 + 12) = 2114;
      *(v15 + 14) = v11;
      *v16 = v10;
      v16[1] = v11;
      *(v15 + 22) = 2114;
      v17 = v10;
      v18 = v11;
      if (a2)
      {
        v19 = a2;
        v20 = _swift_stdlib_bridgeErrorToNSError();
        v21 = v20;
      }

      else
      {
        v20 = 0;
        v21 = 0;
      }

      *(v15 + 24) = v20;
      v16[2] = v21;
      _os_log_impl(&dword_2493AC000, v13, v14, "Failed to get an FPv2 FINode: %{public}@, domain: %{public}@ error: %{public}@", v15, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v16, -1, -1);
      MEMORY[0x24C1FE850](v15, -1, -1);
    }

    a1 = 0;
  }

  return a5(a1, a2);
}

uint64_t closure #2 in DOCNode.fpfs_fetchFINode(completion:)(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(void, void *), uint64_t a5)
{
  v56 = a4;
  v57 = a3;
  v51 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v52 = *(v11 - 8);
  v53 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8, v18);
  v20 = &v49 - v19;
  v21 = type metadata accessor for DispatchQoS.QoSClass();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v27 = v56;
    v26 = v57;
    if (one-time initialization token for Enumeration != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.Enumeration);
    v29 = v26;
    v30 = a2;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138543618;
      *(v33 + 4) = v29;
      *v34 = v29;
      *(v33 + 12) = 2114;
      v35 = v29;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 14) = v36;
      v34[1] = v36;
      _os_log_impl(&dword_2493AC000, v31, v32, "Failed to get URL from a FPItem. %{public}@, error: %{public}@", v33, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v34, -1, -1);
      MEMORY[0x24C1FE850](v33, -1, -1);
    }

    else
    {
    }

    return v27(0, a2);
  }

  else
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v37 = a5;
    (*(v22 + 104))(v25, *MEMORY[0x277D851C8], v21);
    v50 = static OS_dispatch_queue.global(qos:)();
    (*(v22 + 8))(v25, v21);
    outlined init with copy of DOCGridLayout.Spec?(v51, v20, &_s10Foundation3URLVSgMd);
    v38 = (*(v16 + 80) + 16) & ~*(v16 + 80);
    v39 = (v17 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    outlined init with take of (key: URL, value: FPItem)(v20, v40 + v38, &_s10Foundation3URLVSgMd);
    v41 = v56;
    v42 = v57;
    *(v40 + v39) = v57;
    v43 = (v40 + ((v39 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v43 = v41;
    v43[1] = v37;
    aBlock[4] = partial apply for closure #1 in closure #2 in DOCNode.fpfs_fetchFINode(completion:);
    aBlock[5] = v40;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_230;
    v44 = _Block_copy(aBlock);
    v45 = v42;

    static DispatchQoS.unspecified.getter();
    v58 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v46 = v55;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v47 = v50;
    MEMORY[0x24C1FB9A0](0, v14, v10, v44);
    _Block_release(v44);

    (*(v54 + 8))(v10, v46);
    (*(v52 + 8))(v14, v53);
  }
}

void closure #1 in closure #2 in DOCNode.fpfs_fetchFINode(completion:)(uint64_t a1, void *a2, void (*a3)(void))
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
  v6 = static FINode.docNode(from:)(a1);
  if (v6 && (v7 = v6, v8 = [v6 presentationNode], v7, v8))
  {
    v16 = v8;
    (a3)(v8, 0);
  }

  else
  {
    if (one-time initialization token for Enumeration != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.Enumeration);
    v10 = a2;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      *(v13 + 4) = v10;
      *v14 = v10;
      v15 = v10;
      _os_log_impl(&dword_2493AC000, v11, v12, "Failed to get an FINode from a URL. %{public}@", v13, 0xCu);
      outlined destroy of CharacterSet?(v14, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v14, -1, -1);
      MEMORY[0x24C1FE850](v13, -1, -1);
    }

    v16 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
    a3(0);
  }
}

uint64_t closure #1 in DOCNode.fpfs_fetchFINode()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo6FINodeCSgs5Error_pGMd);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v11 - v6;
  (*(v3 + 16))(&v11 - v6, a1, v2, v5);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v7, v2);
  DOCNode.fpfs_fetchFINode(completion:)(partial apply for closure #1 in closure #1 in DOCNode.fpfs_fetchFINode(), v9);
}

uint64_t closure #1 in closure #1 in DOCNode.fpfs_fetchFPItem()(void *a1, id a2, uint64_t a3, uint64_t *a4)
{
  if (a2)
  {
    v5 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v7 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4);
    return CheckedContinuation.resume(returning:)();
  }
}

Swift::Int closure #1 in DOCNode.fpfs_syncFetchFINode()(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a3 + 16);
  *(a3 + 16) = a1;
  v9 = a1;

  swift_beginAccess();
  v10 = *(a4 + 16);
  *(a4 + 16) = a2;
  v11 = a2;

  return OS_dispatch_semaphore.signal()();
}

uint64_t DOCDiskProperties.format.getter()
{
  v1 = *v0;

  return v1;
}

__n128 DOCDiskProperties.size.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  v3 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t DOCDiskProperties.Size.init(availableSpace:freeSpace:purgeableSpace:totalSpace:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

__n128 DOCDiskProperties.init(format:size:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  result = *a3;
  v5 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v5;
  return result;
}

void closure #2 in DOCNode.fetchDiskPropertiesIfSupported(handlerQueue:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a1;
  v8[4] = a3;
  v8[5] = a4;
  v12[4] = partial apply for closure #1 in closure #2 in DOCNode.fetchDiskPropertiesIfSupported(handlerQueue:_:);
  v12[5] = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v12[3] = &block_descriptor_312;
  v9 = _Block_copy(v12);
  v10 = a2;
  v11 = a1;

  [v11 expireCacheWithOptions:2 completionBlock:v9];
  _Block_release(v9);
}

uint64_t closure #1 in closure #2 in DOCNode.fetchDiskPropertiesIfSupported(handlerQueue:_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v12 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #2 in DOCNode.fetchDiskPropertiesIfSupported(handlerQueue:_:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_318;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  static DispatchQoS.unspecified.getter();
  v23 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v15, v11, v17);
  _Block_release(v17);
  (*(v8 + 8))(v11, v7);
  (*(v12 + 8))(v15, v21);
}

id closure #1 in closure #1 in closure #2 in DOCNode.fetchDiskPropertiesIfSupported(handlerQueue:_:)(void *a1, void (*a2)(void *))
{
  result = [a1 filesystem];
  if (result)
  {
    v5 = result;
    v6 = [result localizedName];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10[0] = v7;
    v10[1] = v9;
    v10[2] = [a1 availableSpace];
    v10[3] = [a1 freeSpace];
    v10[4] = [a1 purgeableSpace];
    v10[5] = [a1 totalSpace];
    a2(v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in DOCNode.fetchAndAccessURL(downloadIfNeeded:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v23 = URL.startAccessingSecurityScopedResource()();
  v8 = objc_opt_self();
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v12 = [v8 readingIntentWithURL:v10 options:0];

  v13 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_249BA0290;
  *(v14 + 32) = v12;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSFileAccessIntent);
  v22 = v12;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  (*(v5 + 16))(&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v17 = (*(v5 + 80) + 17) & ~*(v5 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v23;
  (*(v5 + 32))(v18 + v17, &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v19 = (v18 + ((v6 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  v20 = v25;
  *v19 = v24;
  v19[1] = v20;
  aBlock[4] = closure #1 in closure #1 in DOCNode.fetchAndAccessURL(downloadIfNeeded:handler:)partial apply;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_344;
  v21 = _Block_copy(aBlock);

  [v13 coordinateAccessWithIntents:isa queue:v16 byAccessor:v21];
  _Block_release(v21);
}

void closure #1 in closure #1 in DOCNode.fetchAndAccessURL(downloadIfNeeded:handler:)(uint64_t a1, char a2, uint64_t a3, void (*a4)(char *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v15 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = v13;
  if (a1)
  {
    (*(v13 + 56))(v11, 1, 1, v12);
  }

  else
  {
    (*(v13 + 16))(v11, a3, v12);
    (*(v14 + 56))(v11, 0, 1, v12);
  }

  a4(v11);
  outlined destroy of CharacterSet?(v11, &_s10Foundation3URLVSgMd);
  if (a2)
  {
    URL.stopAccessingSecurityScopedResource()();
  }
}

uint64_t closure #2 in DOCNode.fetchAndAccessURL(downloadIfNeeded:handler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a3;
  v26 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8, v13);
  v15 = &v25 - v14;
  outlined init with copy of DOCGridLayout.Spec?(a1, &v25 - v14, &_s10Foundation3URLVSgMd);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  outlined init with take of (key: URL, value: FPItem)(v15, v19 + v16, &_s10Foundation3URLVSgMd);
  *(v19 + v17) = a2;
  v20 = (v19 + v18);
  v21 = v26;
  *v20 = v25;
  v20[1] = a4;
  v22 = (v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v21;
  v22[1] = a6;
  v23 = a2;

  DOCRunInMainThread(_:)();
}

uint64_t closure #1 in closure #2 in DOCNode.fetchAndAccessURL(downloadIfNeeded:handler:)(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v22[1] = a6;
  v23 = a5;
  v24 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = v22 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DOCGridLayout.Spec?(a1, v15, &_s10Foundation3URLVSgMd);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    outlined destroy of CharacterSet?(v15, &_s10Foundation3URLVSgMd);
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
    if (!a2)
    {
      v23(v20);
      return (*(v17 + 8))(v20, v16);
    }

    (*(v17 + 8))(v20, v16);
  }

  (*(v17 + 56))(v11, 1, 1, v16);
  v24(v11);
  return outlined destroy of CharacterSet?(v11, &_s10Foundation3URLVSgMd);
}

uint64_t DOCNode.syncErrorDescription.getter()
{
  v1 = [v0 downloadingError];
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v3 = [v0 uploadingError];
    if (!v3)
    {
      return 0;
    }

    v2 = v3;
  }

  swift_getErrorValue();
  v4 = Error.localizedDescription.getter();

  return v4;
}

id DOCNode.shouldBeUploaded.getter()
{
  if ([v0 isUploaded] & 1) != 0 || (objc_msgSend(v0, sel_isActionable) & 1) != 0 || (objc_msgSend(v0, sel_isExternalDownloadPlaceholder))
  {
    return 0;
  }

  else
  {
    return [v0 isCloudItem];
  }
}

id DOCNode.representedLocation.getter()
{
  v1 = [v0 providerDomainID];
  v2 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v1 node:v0];

  [v2 setIsFPV2_];
  return v2;
}

Swift::Void __swiftcall DOCNode.addToDock()()
{
  v2 = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v5[4] = partial apply for closure #1 in DOCNode.addToDock();
  v5[5] = v3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
  v5[3] = &block_descriptor_141;
  v4 = _Block_copy(v5);
  swift_unknownObjectRetain();

  [v1 fetchURL_];
  _Block_release(v4);
}

void closure #1 in DOCNode.addToDock()(uint64_t a1, void *a2, void *a3, void (*a4)(unint64_t, _BYTE *, uint64_t))
{
  v85 = a4;
  v86 = a3;
  v87 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v96 = *(v5 - 1);
  MEMORY[0x28223BE20](v5, v6);
  v94 = &v77[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v95 = type metadata accessor for DispatchQoS();
  v93 = *(v95 - 8);
  MEMORY[0x28223BE20](v95, v8);
  v92 = &v77[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v90 = *(v10 - 8);
  v91 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v89 = &v77[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v77[-v15];
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v88 = &v77[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x28223BE20](v21, v22);
  v25 = &v77[-v24];
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v77[-v27];
  outlined init with copy of DOCGridLayout.Spec?(a1, v16, &_s10Foundation3URLVSgMd);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    outlined destroy of CharacterSet?(v16, &_s10Foundation3URLVSgMd);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.UI);
    v30 = v86;
    swift_unknownObjectRetain();
    v31 = v87;
    v32 = v87;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      aBlock[0] = v36;
      *v35 = 136315650;
      *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x636F446F54646461, 0xEB0000000029286BLL, aBlock);
      *(v35 + 12) = 2080;
      v98 = v30;
      swift_unknownObjectRetain();
      v37 = String.init<A>(describing:)();
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, aBlock);

      *(v35 + 14) = v39;
      *(v35 + 22) = 2080;
      v98 = v31;
      v40 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
      v41 = String.init<A>(describing:)();
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, aBlock);

      *(v35 + 24) = v43;
      _os_log_impl(&dword_2493AC000, v33, v34, "%s unable to get url for node: %s error: %s", v35, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v36, -1, -1);
      MEMORY[0x24C1FE850](v35, -1, -1);
    }
  }

  else
  {
    v44 = *(v18 + 32);
    v86 = (v18 + 32);
    v87 = v5;
    v85 = v44;
    v44(v28, v16, v17);
    v45 = [objc_allocWithZone(MEMORY[0x277D66AB8]) init];
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Logger.UI);
    v82 = *(v18 + 16);
    v82(v25, v28, v17);
    v47 = v45;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      aBlock[0] = v79;
      *v50 = 136315650;
      *(v50 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x636F446F54646461, 0xEB0000000029286BLL, aBlock);
      v81 = v47;
      *(v50 + 12) = 2080;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v78 = v49;
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = v28;
      v53 = v52;
      v54 = *(v18 + 8);
      v83 = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v84 = v54;
      v54(v25, v17);
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, aBlock);

      *(v50 + 14) = v55;
      *(v50 + 22) = 2080;
      v56 = v81;
      v57 = [v56 description];
      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v59;

      v28 = v80;
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, aBlock);
      v47 = v81;

      *(v50 + 24) = v61;
      _os_log_impl(&dword_2493AC000, v48, v78, "%s Adding url: %s to dock using homeScreenService: %s", v50, 0x20u);
      v62 = v79;
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v62, -1, -1);
      MEMORY[0x24C1FE850](v50, -1, -1);
    }

    else
    {

      v63 = *(v18 + 8);
      v83 = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v84 = v63;
      v63(v25, v17);
    }

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v65 = v89;
    v64 = v90;
    v66 = v91;
    (*(v90 + 104))(v89, *MEMORY[0x277D851C8], v91);
    v81 = static OS_dispatch_queue.global(qos:)();
    (*(v64 + 8))(v65, v66);
    v67 = v88;
    v82(v88, v28, v17);
    v68 = (*(v18 + 80) + 24) & ~*(v18 + 80);
    v69 = swift_allocObject();
    *(v69 + 16) = v47;
    v85(v69 + v68, v67, v17);
    aBlock[4] = partial apply for closure #1 in closure #1 in DOCNode.addToDock();
    aBlock[5] = v69;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_224;
    v70 = _Block_copy(aBlock);
    v71 = v47;
    v72 = v92;
    static DispatchQoS.unspecified.getter();
    v98 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    v73 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v74 = v94;
    v75 = v87;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v76 = v81;
    MEMORY[0x24C1FB9A0](0, v72, v74, v70);
    _Block_release(v70);

    (*(v96 + 8))(v74, v75);
    (*(v93 + 8))(v72, v95);
    v84(v73, v17);
  }
}

Swift::Int DOCNodeOperation.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCNodeOperation()
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCNodeOperation()
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](0);
  return Hasher._finalize()();
}

unint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t partial apply for closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:);

  return closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:)(a1, v4, v5, v7, v8, v9, v10, v6);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSo6FPItemCSg_TG5(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSo6FPItemCSg_TG5TQ0_;

  return v5(v2 + 16);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSo6FINodeCSg_TG5(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSo6FINodeCSg_TG5TQ0_;

  return v5(v2 + 16);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSo6FINodeCSg_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_;

  return v5(v2 + 32);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

BOOL specialized Array<A>.contains(node:)(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_15:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  do
  {
    v6 = v5;
    if (v4 == v5)
    {
      break;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C1FC540](v5, a2);
      if (__OFADD__(v6, 1))
      {
LABEL_12:
        __break(1u);
        return v4 != v6;
      }
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      swift_unknownObjectRetain();
      if (__OFADD__(v6, 1))
      {
        goto LABEL_12;
      }
    }

    v7 = DOCNode.isEqualTo(node:)();
    swift_unknownObjectRelease();
    v5 = v6 + 1;
  }

  while ((v7 & 1) == 0);
  return v4 != v6;
}

uint64_t specialized DOCNode.isEqualTo(node:)(uint64_t a1, void *a2)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    swift_unknownObjectRetain();
    v4 = a2;
    v5 = static NSObject.== infix(_:_:)();
    swift_unknownObjectRelease();

    return v5 & 1;
  }

  return result;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo36UIDocumentBrowserActionMenuSortOrderVGMd);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      Hasher.init(_seed:)();
      MEMORY[0x24C1FCBD0](v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void specialized DOCNode.fpfs_fetchFINode(completion:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {
    v15 = a1;

    a4;
    v16 = [v15 cachedDomain];
    if (v16)
    {
      v17 = v16;
      if ([v15 isRootItem] & 1) != 0 && (FPProviderDomain.shouldUseDSEnumeration.getter())
      {
        v18 = specialized static DOCRootNode.rootNode(for:)(v17);
        swift_beginAccess();
        v19 = *(a2 + 16);
        *(a2 + 16) = v18;
        v12 = v18;

        swift_beginAccess();
        v20 = *(a3 + 16);
        *(a3 + 16) = 0;

        OS_dispatch_semaphore.signal()();

        goto LABEL_12;
      }

      if (([v17 isUsingFPFS] & 1) == 0 && (FPProviderDomain.shouldUseDSEnumeration.getter() & 1) != 0 && (FPProviderDomain.isPOSIXCompatible.getter() & 1) == 0)
      {
        v24 = objc_opt_self();
        v25 = swift_allocObject();
        v25[2] = v15;
        v25[3] = v17;
        v25[4] = closure #1 in DOCNode.fpfs_syncFetchFINode()partial apply;
        v25[5] = v8;
        v33 = closure #1 in DOCNode.fpfs_fetchFINode(completion:)partial apply;
        v34 = v25;
        aBlock = MEMORY[0x277D85DD0];
        v30 = 1107296256;
        v31 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
        v32 = &block_descriptor_208;
        v26 = _Block_copy(&aBlock);
        v27 = v17;
        v28 = v15;

        v12 = v27;

        [v24 fiNodeFromItem:v28 inFPv2Domain:v12 completion:v26];
        _Block_release(v26);

        goto LABEL_12;
      }
    }

    v12 = [objc_opt_self() defaultManager];
    v21 = swift_allocObject();
    v21[2] = v15;
    v21[3] = closure #1 in DOCNode.fpfs_syncFetchFINode()partial apply;
    v21[4] = v8;
    v33 = closure #2 in DOCNode.fpfs_fetchFINode(completion:)partial apply;
    v34 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v30 = 1107296256;
    v31 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
    v32 = &block_descriptor_201;
    v22 = _Block_copy(&aBlock);
    v23 = v15;

    [v12 fetchURLForItem:v23 completionHandler:v22];
    _Block_release(v22);

    goto LABEL_12;
  }

  v10 = v9;
  swift_beginAccess();
  v11 = *(a2 + 16);
  *(a2 + 16) = v10;
  v12 = a1;

  v13 = a4;

  swift_beginAccess();
  v14 = *(a3 + 16);
  *(a3 + 16) = 0;

  OS_dispatch_semaphore.signal()();

LABEL_12:
}

uint64_t partial apply for closure #1 in DOCNode.fetchDiskPropertiesIfSupported(handlerQueue:_:)()
{
  v1 = *(v0 + 16);
  memset(v3, 0, sizeof(v3));
  return v1(v3);
}

uint64_t partial apply for closure #1 in Array<A>.fpfs_fetchAvailableFPItems()(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:);

  return closure #1 in Array<A>.fpfs_fetchAvailableFPItems()(a1, a2, v7, v6);
}

uint64_t partial apply for closure #2 in Array<A>.fpfs_fetchAllFPItems()(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:);

  return closure #2 in Array<A>.fpfs_fetchAllFPItems()(a1, a2, v7, v6);
}

uint64_t partial apply for closure #1 in Array<A>.fpfs_fetchAvailableFINodes()(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:);

  return closure #1 in Array<A>.fpfs_fetchAvailableFINodes()(a1, a2, v7, v6);
}

uint64_t partial apply for closure #2 in Array<A>.fpfs_fetchAllFINodes()(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = partial apply for closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:);

  return closure #2 in Array<A>.fpfs_fetchAllFINodes()(a1, a2, v7, v9, v8, v6);
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo8PropertyV_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo8PropertyVGMd);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 4 * v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 4 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 4 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t specialized FINodeItemCountFetcher.init(with:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v25 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for OS_dispatch_queue_concurrent.Attributes();
  MEMORY[0x28223BE20](v24, v7);
  v23[1] = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v11 = DOCLocalizedMetadataStringForUnavailablePropertyValue();
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  *(v2 + 32) = v12;
  *(v2 + 40) = v14;
  *(v2 + 48) = 1;
  *(v2 + 16) = a1;
  v28 = *v2;
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22FINodeItemCountFetcherCmMd);
  v28 = String.init<A>(describing:)();
  v29 = v16;
  MEMORY[0x24C1FAEA0](2564154, 0xE300000000000000);
  v17 = [v15 fileName];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  MEMORY[0x24C1FAEA0](v18, v20);

  MEMORY[0x24C1FAEA0](39, 0xE100000000000000);
  type metadata accessor for ReadWriteLock();
  v21 = swift_allocObject();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue_concurrent);
  static DispatchQoS.userInitiated.getter();
  v28 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type OS_dispatch_queue_concurrent.Attributes and conformance OS_dispatch_queue_concurrent.Attributes, MEMORY[0x277D852E8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo28OS_dispatch_queue_concurrentC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue_concurrent.Attributes] and conformance [A], &_sSaySo28OS_dispatch_queue_concurrentC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v26 + 104))(v25, *MEMORY[0x277D85268], v27);
  *(v21 + 16) = OS_dispatch_queue_concurrent.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v2 + 24) = v21;
  return v2;
}

uint64_t partial apply for closure #1 in FINodeItemCountFetcher.itemCountStr.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

uint64_t partial apply for closure #1 in FINodeItemCountFetcher.itemCountStr(fetchIfStale:completionHandler:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 40);
  *v1 = *(v2 + 32);
  v1[1] = v4;

  *v3 = *(v2 + 48);
  return result;
}

uint64_t partial apply for specialized closure #1 in ReadWriteLock.withReadLock<A>(_:)()
{
  v1 = *(v0 + 16);
  result = (*(v0 + 24))();
  *v1 = 0;
  return result;
}

{
  v1 = *(v0 + 16);
  (*(v0 + 24))(v4);
  v2 = v4[1];
  *v1 = v4[0];
  v1[1] = v2;
}

unint64_t lazy protocol witness table accessor for type DOCNodeType and conformance DOCNodeType()
{
  result = lazy protocol witness table cache variable for type DOCNodeType and conformance DOCNodeType;
  if (!lazy protocol witness table cache variable for type DOCNodeType and conformance DOCNodeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCNodeType and conformance DOCNodeType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCNodeOperation and conformance DOCNodeOperation()
{
  result = lazy protocol witness table cache variable for type DOCNodeOperation and conformance DOCNodeOperation;
  if (!lazy protocol witness table cache variable for type DOCNodeOperation and conformance DOCNodeOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCNodeOperation and conformance DOCNodeOperation);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCFolderSize(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DOCFolderSize(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DOCDiskProperties(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCDiskProperties(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCNodeCollaborationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v5 = *(a1 + 1);
        if (!*(a1 + 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v5 = *(a1 + 1);
        if (!v5)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      if (!v4)
      {
        goto LABEL_19;
      }

      v5 = a1[1];
      if (!a1[1])
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 3;
  }

LABEL_19:
  v7 = *a1;
  if (*a1 >= 2u)
  {
    v8 = (v7 & 0xFE) + 2147483646;
    if ((v8 & 0x7FFFFFFE) != 0)
    {
      return (v8 & 0x7FFFFFFE | v7 & 1u) - 1;
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for DOCNodeCollaborationType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

_BYTE *destructiveInjectEnumTag for DOCNodeCollaborationType(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCNodeOperation(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DOCNodeOperation(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo6FINodeC_Tt0g5Tf4g_nTm(unint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = a2;
    v10 = __CocoaSet.count.getter();
    a2 = v9;
    if (v10)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2);
      v6 = static _SetStorage.allocate(capacity:)();
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = __CocoaSet.count.getter();
      if (!v8)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v6 = MEMORY[0x277D84FA0];
  v7 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(v7 + 16);
  if (!v8)
  {
    return;
  }

LABEL_9:
  v11 = v6 + 56;
  v44 = v8;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v12 = 0;
    v41 = v4;
    while (1)
    {
      v13 = MEMORY[0x24C1FC540](v12, v4);
      v14 = __OFADD__(v12++, 1);
      if (v14)
      {
        break;
      }

      v15 = v13;
      v16 = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v17 = -1 << *(v6 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      v20 = *(v11 + 8 * (v18 >> 6));
      v21 = 1 << v18;
      if (((1 << v18) & v20) != 0)
      {
        v22 = ~v17;
        type metadata accessor for NSMutableAttributedString(0, a4);
        while (1)
        {
          v23 = *(*(v6 + 48) + 8 * v18);
          v24 = static NSObject.== infix(_:_:)();

          if (v24)
          {
            break;
          }

          v18 = (v18 + 1) & v22;
          v19 = v18 >> 6;
          v20 = *(v11 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          if (((1 << v18) & v20) == 0)
          {
            v8 = v44;
            v4 = v41;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v8 = v44;
        v4 = v41;
        if (v12 == v44)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v11 + 8 * v19) = v21 | v20;
        *(*(v6 + 48) + 8 * v18) = v15;
        v25 = *(v6 + 16);
        v14 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v14)
        {
          goto LABEL_32;
        }

        *(v6 + 16) = v26;
        if (v12 == v8)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v27 = 0;
    v42 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v27 != v42)
    {
      v28 = *(v6 + 40);
      v29 = *(v4 + 32 + 8 * v27);
      v30 = NSObject._rawHashValue(seed:)(v28);
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = *(v11 + 8 * (v32 >> 6));
      v35 = 1 << v32;
      if (((1 << v32) & v34) != 0)
      {
        v36 = ~v31;
        type metadata accessor for NSMutableAttributedString(0, a4);
        while (1)
        {
          v37 = *(*(v6 + 48) + 8 * v32);
          v38 = static NSObject.== infix(_:_:)();

          if (v38)
          {
            break;
          }

          v32 = (v32 + 1) & v36;
          v33 = v32 >> 6;
          v34 = *(v11 + 8 * (v32 >> 6));
          v35 = 1 << v32;
          if (((1 << v32) & v34) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v11 + 8 * v33) = v35 | v34;
        *(*(v6 + 48) + 8 * v32) = v29;
        v39 = *(v6 + 16);
        v14 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v14)
        {
          goto LABEL_34;
        }

        *(v6 + 16) = v40;
      }

      if (++v27 == v44)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo27DOCDocumentSourceIdentifiera_Tt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = static _SetStorage.allocate(capacity:)();
    v5 = 0;
    v6 = v4 + 56;
    v26 = v2;
    v27 = a1 + 32;
    v7 = v2;
    while (1)
    {
      v8 = *(v27 + 8 * v5);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v28 = v8;
      String.hash(into:)();
      v9 = Hasher._finalize()();

      v11 = -1 << *(v4 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v6 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;
        if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
        {

LABEL_4:
          v7 = v26;
          goto LABEL_5;
        }

        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v22)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v6 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v7 = v26;
LABEL_15:
      *(v6 + 8 * v13) = v15 | v14;
      *(*(v4 + 48) + 8 * v12) = v28;
      v23 = *(v4 + 16);
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        __break(1u);
        return result;
      }

      *(v4 + 16) = v25;
LABEL_5:
      if (++v5 == v7)
      {
        return v4;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(a1, v4);
}

void partial apply for closure #1 in closure #1 in DOCNode.addToDock()()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = *(v0 + 16);
  URL._bridgeToObjectiveC()(((*(v1 + 80) + 24) & ~*(v1 + 80)));
  v4 = v3;
  [v2 doc:v3 addFileStackWithURL:?];
}

void partial apply for closure #1 in closure #2 in DOCNode.fpfs_fetchFINode(completion:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in closure #2 in DOCNode.fpfs_fetchFINode(completion:)(v0 + v2, v4, v5);
}

uint64_t partial apply for closure #1 in closure #2 in FINodeItemCountFetcher.itemCountStr(fetchIfStale:completionHandler:)()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;

  *(v1 + 48) = 0;
  return result;
}

void *partial apply for specialized closure #1 in ReadWriteLock.withReadLock<A>(_:)()
{
  v1 = *(v0 + 16);
  result = (*(v0 + 24))(&v3);
  *v1 = v3;
  return result;
}

uint64_t partial apply for closure #1 in closure #2 in Array<A>.fpfs_fetchAllFINodes()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return closure #1 in closure #2 in Array<A>.fpfs_fetchAllFINodes()(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in closure #1 in Array<A>.fpfs_fetchAvailableFINodes()(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return closure #1 in closure #1 in Array<A>.fpfs_fetchAvailableFINodes()(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSo6FINodeCSg_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSo6FINodeCSg_TG5(a1, v4);
}

uint64_t objectdestroy_255Tm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #1 in closure #2 in Array<A>.fpfs_fetchAllFPItems()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:);

  return closure #1 in closure #2 in Array<A>.fpfs_fetchAllFPItems()(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_232Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, 40, 7);
}

uint64_t partial apply for closure #1 in closure #1 in Array<A>.fpfs_fetchAvailableFPItems()(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:);

  return closure #1 in closure #1 in Array<A>.fpfs_fetchAvailableFPItems()(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSo6FPItemCSg_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSo6FPItemCSg_TG5(a1, v4);
}

uint64_t objectdestroy_263Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t objectdestroy_30Tm_1()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR26DocumentManagerExecutables14AnimationImageV_Tg5(a1, v4);
}

uint64_t partial apply for closure #1 in callHandler #1 <A>(_:) in DOCNode.performFolderSizingIfSupported(handlerQueue:_:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56) | (*(v0 + 57) << 8);
  v5 = *(v0 + 32);
  v6 = v2;
  v7 = v3;
  return v1(&v5);
}

uint64_t partial apply for closure #1 in closure #2 in DOCNode.fetchAndAccessURL(downloadIfNeeded:handler:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + v4 + 8);
  v8 = v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return closure #1 in closure #2 in DOCNode.fetchAndAccessURL(downloadIfNeeded:handler:)(v0 + v2, v5, v6, v7, v9, v10);
}

uint64_t objectdestroy_14Tm()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

void partial apply for closure #1 in closure #1 in DOCNode.fetchAndAccessURL(downloadIfNeeded:handler:)(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 17) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in closure #1 in DOCNode.fetchAndAccessURL(downloadIfNeeded:handler:)(a1, v5, v1 + v4, v6);
}

uint64_t partial apply for thunk for @callee_guaranteed (@unowned Int, @guaranteed A) -> (@owned (DOCNode, Int)?)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  return partial apply for thunk for @callee_guaranteed (@unowned Int, @guaranteed A) -> (@owned (DOCNode, Int)?)(a1, a2);
}

{
  result = (*(v2 + 24))(*a1, a1[1]);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t specialized Dictionary.removeValue(forKey:)(uint64_t a1)
{
  v2 = v1;
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  specialized _NativeDictionary._delete(at:)(v5, v7);
  *v2 = v7;
  return v10;
}

{
  v2 = v1;
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v7 = v10;
  }

  outlined destroy of AnyHashable(*(v7 + 48) + 40 * v5);
  v8 = *(*(v7 + 56) + 8 * v5);
  specialized _NativeDictionary._delete(at:)(v5, v7);
  *v2 = v7;
  return v8;
}

id DOCFileOperationsManager.__allocating_init(serviceImpl:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = specialized DOCFileOperationsManager.__allocating_init(serviceImpl:)(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

id DOCFileOperationsManager.init(serviceImpl:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = MEMORY[0x28223BE20](v5, v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  v10 = specialized DOCFileOperationsManager.init(serviceImpl:)(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v10;
}

uint64_t DOCFileOperationsManager.unorderedFileOperations.getter()
{
  v1 = type metadata accessor for DOCFileOperation();
  v35 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCFileOperationsManager_trackedItemsByID;
  swift_beginAccess();
  v6 = *(v0 + v5);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v44 = MEMORY[0x277D84F90];

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
  v8 = v44;
  v9 = v6 + 64;
  result = _HashTable.startBucket.getter();
  v11 = result;
  v12 = 0;
  v13 = *(v6 + 36);
  v31 = v6 + 72;
  v32 = v7;
  v34 = v6 + 64;
  v33 = v13;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(v6 + 32))
  {
    v16 = v11 >> 6;
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_23;
    }

    if (v13 != *(v6 + 36))
    {
      goto LABEL_24;
    }

    v36 = v12;
    outlined init with copy of AnyHashable(*(v6 + 48) + 40 * v11, v42);
    v17 = *(*(v6 + 56) + 8 * v11);
    v39[0] = v42[0];
    v39[1] = v42[1];
    v40 = v43;
    v41 = v17;
    outlined init with copy of DOCGridLayout.Spec?(v39, v37, &_ss11AnyHashableV3key_26DocumentManagerExecutables24DOCFileOperationProgressC5valuetMd);
    v13 = v6;
    v18 = v8;
    v19 = *(*v38 + 440);

    v19(v20);
    v8 = v18;

    outlined destroy of CharacterSet?(v39, &_ss11AnyHashableV3key_26DocumentManagerExecutables24DOCFileOperationProgressC5valuetMd);
    outlined destroy of AnyHashable(v37);
    v44 = v18;
    v22 = *(v18 + 16);
    v21 = *(v18 + 24);
    if (v22 >= v21 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v22 + 1, 1);
      v8 = v44;
    }

    *(v8 + 16) = v22 + 1;
    result = outlined init with take of DOCFileOperation(v4, v8 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v22);
    v14 = 1 << *(v13 + 32);
    if (v11 >= v14)
    {
      goto LABEL_25;
    }

    v9 = v34;
    v23 = *(v34 + 8 * v16);
    if ((v23 & (1 << v11)) == 0)
    {
      goto LABEL_26;
    }

    v6 = v13;
    v24 = *(v13 + 36);
    LODWORD(v13) = v33;
    if (v33 != v24)
    {
      goto LABEL_27;
    }

    v25 = v23 & (-2 << (v11 & 0x3F));
    if (v25)
    {
      v14 = __clz(__rbit64(v25)) | v11 & 0x7FFFFFFFFFFFFFC0;
      v15 = v32;
    }

    else
    {
      v26 = v16 << 6;
      v27 = v16 + 1;
      v28 = (v31 + 8 * v16);
      v15 = v32;
      while (v27 < (v14 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          result = outlined consume of Set<UIPress>.Index._Variant(v11, v33, 0);
          v14 = __clz(__rbit64(v29)) + v26;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<UIPress>.Index._Variant(v11, v33, 0);
    }

LABEL_4:
    v12 = v36 + 1;
    v11 = v14;
    if (v36 + 1 == v15)
    {

      return v8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t DOCFileOperationsManager.addObserver(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCFileOperationsManager_observers;
  v4 = *(**(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCFileOperationsManager_observers) + 144);

  LOBYTE(v4) = v4(a1);

  if ((v4 & 1) == 0)
  {
    v6 = *(**(v1 + v3) + 128);

    v6(a1);

    DOCFileOperationsManager.updateOperationsIfNecessary()();

    return DOCFileOperationsManager.startObservingIfNecessary()();
  }

  return result;
}

uint64_t DOCFileOperationsManager.removeObserver(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(**(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCFileOperationsManager_observers) + 136);

  v4(a1);

  return DOCFileOperationsManager.stopObservingIfNecessary()();
}

uint64_t key path setter for DOCFileOperationsManager.testablesProviderObservance : DOCFileOperationsManager(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v9 - v6;
  outlined init with copy of DOCGridLayout.Spec?(a1, &v9 - v6, &_s10Foundation4UUIDVSgMd);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x118))(v7);
}

uint64_t DOCFileOperationsManager.testablesProviderObservance.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCFileOperationsManager_testablesProviderObservance;
  swift_beginAccess();
  return outlined init with copy of DOCGridLayout.Spec?(v1 + v3, a1, &_s10Foundation4UUIDVSgMd);
}

uint64_t DOCFileOperationsManager.testablesProviderObservance.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCFileOperationsManager_testablesProviderObservance;
  swift_beginAccess();
  outlined assign with take of UUID?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t DOCFileOperationsManager.startObservingIfNecessary()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v19 - v4;
  v6 = *(**(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCFileOperationsManager_observers) + 120);

  v8 = v6(v7);

  if (v8 == 1)
  {
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCFileOperationsManager_impl;
    swift_beginAccess();
    v12 = *(v11 + 24);
    v13 = *(v11 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    v14 = *(v13 + 24);

    v14(partial apply for closure #1 in DOCFileOperationsManager.startObservingIfNecessary(), v10, v12, v13);
    swift_endAccess();
    v15 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCFileOperationsManager_testablesProvider);
    v16 = swift_allocObject();
    *(v16 + 16) = partial apply for closure #1 in DOCFileOperationsManager.startObservingIfNecessary();
    *(v16 + 24) = v10;
    v17 = *(*v15 + 112);

    v17(partial apply for thunk for @callee_guaranteed () -> (), v16);

    v18 = type metadata accessor for UUID();
    (*(*(v18 - 8) + 56))(v5, 0, 1, v18);
    (*((*MEMORY[0x277D85000] & *v1) + 0x118))(v5);
  }

  return result;
}

uint64_t closure #1 in DOCFileOperationsManager.startObservingIfNecessary()()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = static os_log_type_t.default.getter();
    DOCFileOperationsManager.log(_:_:)(v2, 0xD00000000000001BLL, 0x8000000249BD30D0);
    *(swift_allocObject() + 16) = v1;
    v3 = v1;
    DOCRunInMainThread(_:)();
  }

  return result;
}

uint64_t DOCFileOperationsManager.stopObservingIfNecessary()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v25 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(**(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCFileOperationsManager_observers) + 120);

  v17 = v15(v16);

  if (!v17)
  {
    v19 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCFileOperationsManager_impl;
    swift_beginAccess();
    v20 = *(v19 + 24);
    v21 = *(v19 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    (*(v21 + 24))(0, 0, v20, v21);
    v22 = swift_endAccess();
    v23 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v1) + 0x110))(v22);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      return outlined destroy of CharacterSet?(v9, &_s10Foundation4UUIDVSgMd);
    }

    else
    {
      (*(v11 + 32))(v14, v9, v10);
      v24 = *(**(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCFileOperationsManager_testablesProvider) + 120);

      v24(v14);

      (*(v11 + 56))(v5, 1, 1, v10);
      (*((*v23 & *v1) + 0x118))(v5);
      return (*(v11 + 8))(v14, v10);
    }
  }

  return result;
}

void DOCFileOperationsManager.updateOperationsIfNecessary()()
{
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCFileOperationsManager_needsUpdate) == 1)
  {
    v1 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCFileOperationsManager_hasUpdateInProgress;
    if ((*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCFileOperationsManager_hasUpdateInProgress) & 1) == 0)
    {
      *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCFileOperationsManager_needsUpdate) = 0;
      *(v0 + v1) = 1;
      v2 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCFileOperationsManager_impl;
      swift_beginAccess();
      outlined init with copy of DOCSidebarItemIconProvider(v0 + v2, &v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables26DOCFileOperationsProviding_pMd);
      v3 = String.init<A>(describing:)();
      v5 = v4;
      v15 = 0;
      v16 = 0xE000000000000000;
      v6 = v0;
      _StringGuts.grow(_:)(38);

      v15 = 0xD000000000000024;
      v16 = 0x8000000249BD30F0;
      MEMORY[0x24C1FAEA0](v3, v5);
      v7 = v15;
      v8 = v16;
      v9 = static os_log_type_t.default.getter();
      DOCFileOperationsManager.log(_:_:)(v9, v7, v8);

      outlined init with copy of DOCSidebarItemIconProvider(v6 + v2, &v15);
      v10 = v17;
      v11 = v18;
      __swift_project_boxed_opaque_existential_1(&v15, v17);
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      v13[2] = v12;
      v13[3] = v3;
      v13[4] = v5;
      v14 = *(v11 + 8);

      v14(partial apply for closure #1 in DOCFileOperationsManager.updateOperationsIfNecessary(), v13, v10, v11);

      __swift_destroy_boxed_opaque_existential_0(&v15);
    }
  }
}

void closure #1 in DOCFileOperationsManager.updateOperationsIfNecessary()(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a2)
    {
      swift_getErrorValue();
      v11 = a2;
      v12 = Error.localizedDescription.getter();
      v14 = v13;
      v15 = static os_log_type_t.fault.getter();
      _StringGuts.grow(_:)(60);
      MEMORY[0x24C1FAEA0](0xD00000000000003ALL, 0x8000000249BD3120);
      MEMORY[0x24C1FAEA0](v12, v14);

      DOCFileOperationsManager.log(_:_:)(v15, 0, 0xE000000000000000);
    }

    else
    {
      v16 = swift_allocObject();
      v16[2] = v10;
      v16[3] = a4;
      v16[4] = a5;
      v16[5] = a1;

      v17 = v10;

      DOCRunInMainThread(_:)();
    }
  }
}

uint64_t closure #1 in closure #1 in DOCFileOperationsManager.updateOperationsIfNecessary()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _StringGuts.grow(_:)(40);

  MEMORY[0x24C1FAEA0](a2, a3);
  MEMORY[0x24C1FAEA0](8250, 0xE200000000000000);
  if (a4)
  {
    v8 = type metadata accessor for DOCFileOperation();
    v9 = MEMORY[0x24C1FB0D0](a4, v8);
    v11 = v10;
    v12 = a4;
  }

  else
  {
    v11 = 0xE500000000000000;
    v9 = 0x2A6C696E2ALL;
    v12 = MEMORY[0x277D84F90];
  }

  MEMORY[0x24C1FAEA0](v9, v11);

  v13 = static os_log_type_t.default.getter();
  DOCFileOperationsManager.log(_:_:)(v13, 0xD000000000000022, 0x8000000249BD3160);

  DOCFileOperationsManager.updateTrackedItemsWithProvider(receivedOperations:)(v12);

  *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCFileOperationsManager_hasUpdateInProgress) = 0;
  return DOCFileOperationsManager.updateOperationsIfNecessary()(v14);
}

uint64_t DOCFileOperationsManager.updateTrackedItemsWithProvider(receivedOperations:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DOCFileOperation();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(**&v1[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCFileOperationsManager_testablesProvider] + 128);

  v11 = v9(v10);

  v30 = a1;

  specialized Array.append<A>(contentsOf:)(v11);
  v12 = v30;
  v13 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCFileOperationsManager_trackedItemsByID;
  swift_beginAccess();

  v15 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCs11AnyHashableV_SD4KeysVyAE26DocumentManagerExecutables24DOCFileOperationProgressC_GTt0g5(v14);
  v16 = *&v2[v13];

  v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_26DocumentManagerExecutables24DOCFileOperationProgressCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v29 = v17;
  v18 = *(v12 + 16);
  if (v18)
  {
    v19 = 0;
    while (v19 < *(v12 + 16))
    {
      outlined init with copy of DOCFileOperation(v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19, v8);
      closure #1 in closure #1 in DOCFileOperationsManager.updateTrackedItemsWithProvider(receivedOperations:)(v8, v16, v2);
      ++v19;
      outlined destroy of DOCFileOperation(v8);
      if (v18 == v19)
      {
        v20 = v29;
        goto LABEL_7;
      }
    }

    __break(1u);

    result = outlined destroy of DOCFileOperation(v8);
    __break(1u);
  }

  else
  {
    v20 = v17;
LABEL_7:

    *&v2[v13] = v20;

    v22 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCs11AnyHashableV_SD4KeysVyAE26DocumentManagerExecutables24DOCFileOperationProgressC_GTt0g5(v21);
    v23 = _sSh2eeoiySbShyxG_ABtFZs11AnyHashableV_Tt1g5(v22, v15);

    if ((v23 & 1) == 0)
    {
      v26 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCFileOperationsManager_observers];
      MEMORY[0x28223BE20](result, v25);
      *&v28[-16] = v2;
      v27 = *(*v26 + 152);

      v27(closure #1 in DOCFileOperationsManager.noteInProgressOperationsDidUpdate()partial apply, &v28[-32]);
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in DOCFileOperationsManager.updateTrackedItemsWithProvider(receivedOperations:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for DOCFileOperation();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = v35 - v12;
  MEMORY[0x28223BE20](v14, v15);
  v17 = v35 - v16;
  outlined init with copy of AnyHashable(a1, v37);
  if (*(a2 + 16) && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(v37), (v19 & 1) != 0))
  {
    v20 = *(*(a2 + 56) + 8 * v18);
  }

  else
  {
    outlined init with copy of DOCFileOperation(a1, v17);
    type metadata accessor for DOCFileOperationProgress(0);
    v21 = swift_allocObject();
    outlined init with copy of DOCFileOperation(v17, v13);
    outlined init with copy of DOCFileOperation(v17, v9);
    v20 = specialized DOCOperationProgress.init(_:progressProvider:observing:)(v13, v9, &outlined read-only object #0 of closure #1 in closure #1 in DOCFileOperationsManager.updateTrackedItemsWithProvider(receivedOperations:), v21);
    outlined destroy of DOCFileOperation(v17);
    v22 = *(*v20 + 168);

    v22(1);

    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    outlined init with copy of AnyHashable(v37, v35);
    v24 = swift_allocObject();
    v25 = v35[1];
    *(v24 + 24) = v35[0];
    *(v24 + 16) = v23;
    *(v24 + 40) = v25;
    *(v24 + 56) = v36;
    v26 = *(*v20 + 424);

    v26(partial apply for closure #1 in closure #1 in closure #1 in DOCFileOperationsManager.updateTrackedItemsWithProvider(receivedOperations:), v24);

    *&v35[0] = 0;
    *(&v35[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(37);
    v27 = [a3 description];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    *&v35[0] = v28;
    *(&v35[0] + 1) = v30;
    MEMORY[0x24C1FAEA0](0xD000000000000021, 0x8000000249BD30A0);
    v31 = (*(*v20 + 656))(0);
    MEMORY[0x24C1FAEA0](v31);

    v32 = v35[0];
    v33 = static os_log_type_t.default.getter();
    DOCFileOperationsManager.log(_:_:)(v33, v32, *(&v32 + 1));
  }

  outlined init with copy of AnyHashable(v37, v35);
  specialized Dictionary.subscript.setter(v20, v35);
  return outlined destroy of AnyHashable(v37);
}

void closure #1 in closure #1 in closure #1 in DOCFileOperationsManager.updateTrackedItemsWithProvider(receivedOperations:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 512))(v7);
  if ((v7[0] & 0xFE) != 2)
  {
    (*(*a1 + 168))(0);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      DOCFileOperationsManager.removeTrackedOperation(forOperationID:)(a3);
    }
  }
}

uint64_t DOCFileOperationsManager.removeTrackedOperation(forOperationID:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();

  v5 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCs11AnyHashableV_SD4KeysVyAE26DocumentManagerExecutables24DOCFileOperationProgressC_GTt0g5(v4);
  swift_beginAccess();
  specialized Dictionary.removeValue(forKey:)(a1);
  swift_endAccess();

  v7 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCs11AnyHashableV_SD4KeysVyAE26DocumentManagerExecutables24DOCFileOperationProgressC_GTt0g5(v6);
  LOBYTE(a1) = _sSh2eeoiySbShyxG_ABtFZs11AnyHashableV_Tt1g5(v7, v5);

  if ((a1 & 1) == 0)
  {
    v10 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCFileOperationsManager_observers);
    MEMORY[0x28223BE20](result, v9);
    v12[2] = v2;
    v11 = *(*v10 + 152);

    v11(partial apply for closure #1 in DOCFileOperationsManager.noteInProgressOperationsDidUpdate(), v12);
  }

  return result;
}

uint64_t DOCFileOperationsManager.log(_:_:)(os_log_type_t a1, uint64_t a2, unint64_t a3)
{
  if (one-time initialization token for progressUI != -1)
  {
    swift_once();
  }

  v7 = static OS_os_log.progressUI;
  result = os_log_type_enabled(static OS_os_log.progressUI, a1);
  if (result)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v9 = 138412546;
    *(v9 + 4) = v3;
    *v10 = v3;
    *(v9 + 12) = 2080;
    v12 = v3;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v13);
    _os_log_impl(&dword_2493AC000, v7, a1, "[%@] %s", v9, 0x16u);
    outlined destroy of CharacterSet?(v10, &_sSo8NSObjectCSgMd);
    MEMORY[0x24C1FE850](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C1FE850](v11, -1, -1);
    return MEMORY[0x24C1FE850](v9, -1, -1);
  }

  return result;
}

id DOCFileOperationsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCFileOperationsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCFileOperationsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized DOCFileOperationsManager.init(serviceImpl:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a3;
  v17[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCFileOperationsManager_trackedItemsByID;
  v9 = MEMORY[0x277D84F90];
  *&a2[v8] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_26DocumentManagerExecutables24DOCFileOperationProgressCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCFileOperationsManager_observers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCWeakArrayCyAA017DOCFileOperationsB8Observer_pGMd);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *&a2[v10] = v11;
  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCFileOperationsManager_testablesProviderObservance;
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
  a2[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCFileOperationsManager_needsUpdate] = 1;
  a2[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCFileOperationsManager_hasUpdateInProgress] = 0;
  outlined init with copy of DOCSidebarItemIconProvider(v17, &a2[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCFileOperationsManager_impl]);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *&a2[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCFileOperationsManager_testablesProvider] = static DOCSharedTestableProgressOperationProvider.shared;
  v16.receiver = a2;
  v16.super_class = type metadata accessor for DOCFileOperationsManager();

  v14 = objc_msgSendSuper2(&v16, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v17);
  return v14;
}

id specialized DOCFileOperationsManager.__allocating_init(serviceImpl:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(type metadata accessor for DOCFileOperationsManager());
  (*(v7 + 16))(v9, a1, a3);
  return specialized DOCFileOperationsManager.init(serviceImpl:)(v9, v10, a3, a4);
}

uint64_t outlined assign with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for DOCFileOperationsManager()
{
  result = type metadata singleton initialization cache for DOCFileOperationsManager;
  if (!type metadata singleton initialization cache for DOCFileOperationsManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for DOCFileOperationsManager()
{
  type metadata accessor for UUID?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for UUID?()
{
  if (!lazy cache variable for type metadata for UUID?)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UUID?);
    }
  }
}

char *DOCItemInfoContainerDataSource.containedViewController.getter()
{
  v1 = v0[7];
  if (v1)
  {
    v2 = v0[7];
  }

  else
  {
    v3 = v0[2];
    v5 = v0[5];
    v4 = v0[6];
    v6 = v0[4];
    objc_allocWithZone(type metadata accessor for DOCColumnInfoViewController());
    v7 = v3;

    v8 = v6;
    v9 = v5;
    v10 = v6;
    v11 = v0;
    v12 = specialized DOCColumnInfoViewController.init(configuration:nodes:documentManager:actionManager:)(v7, v4, v10, v5);

    v13 = v0[7];
    v11[7] = v12;
    v2 = v12;

    v1 = 0;
  }

  v14 = v1;
  return v2;
}

void DOCItemInfoContainerDataSource.containedViewController.setter(uint64_t a1)
{
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
}

void (*DOCItemInfoContainerDataSource.containedViewController.modify(char **a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DOCItemInfoContainerDataSource.containedViewController.getter();
  return DOCItemInfoContainerDataSource.containedViewController.modify;
}

void DOCItemInfoContainerDataSource.containedViewController.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 56);
  *(v1 + 56) = v2;
}

uint64_t DOCItemInfoContainerDataSource.__allocating_init(configuration:documentManager:location:actionManager:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  DOCItemInfoContainerDataSource.init(configuration:documentManager:location:actionManager:)(a1, a2, a3, a4);
  return v8;
}

uint64_t DOCItemInfoContainerDataSource.init(configuration:documentManager:location:actionManager:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v4[7] = 0;
  type metadata accessor for DOCConcreteSelectionLocation();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = *((*MEMORY[0x277D85000] & *v10) + 0x58);
    v12 = a3;
    v13 = v11();
  }

  else
  {
    v14 = [a3 node];
    if (!v14)
    {
      v13 = MEMORY[0x277D84F90];
      if (!(MEMORY[0x277D84F90] >> 62))
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }

    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_249BA0290;
    *(v13 + 32) = v15;
  }

  if (!(v13 >> 62))
  {
LABEL_6:
    v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_7;
  }

LABEL_10:
  v16 = __CocoaSet.count.getter();
LABEL_7:

  if (v16 < 1)
  {
    _StringGuts.grow(_:)(82);
    MEMORY[0x24C1FAEA0](0xD00000000000003ELL, 0x8000000249BD31E0);
    v18 = [a3 description];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    MEMORY[0x24C1FAEA0](v19, v21);

    MEMORY[0x24C1FAEA0](0xD000000000000012, 0x8000000249BD3220);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v5[2] = a1;
    v5[3] = a3;
    v5[4] = a2;
    v5[5] = a4;
    v5[6] = v13;
    return v5;
  }

  return result;
}

char *DOCItemInfoContainerDataSource.containedViewController(for:)(uint64_t a1)
{
  if (a1 == 4 || a1 == 1)
  {
    return DOCItemInfoContainerDataSource.containedViewController.getter();
  }

  else
  {
    return 0;
  }
}

id *DOCItemInfoContainerDataSource.deinit()
{

  return v0;
}

uint64_t DOCItemInfoContainerDataSource.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

char *protocol witness for DOCBrowserContainerDataSource.containedViewController(for:) in conformance DOCItemInfoContainerDataSource(uint64_t a1)
{
  if (a1 == 4 || a1 == 1)
  {
    return DOCItemInfoContainerDataSource.containedViewController.getter();
  }

  else
  {
    return 0;
  }
}

uint64_t static DOCIntentDonationManager.shared.getter()
{
  type metadata accessor for DOCIntentDonationManager();

  return swift_initStaticObject();
}

uint64_t CreateFolderIntent.init(fileName:target:bounceOnCollision:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v89 = a4;
  v87 = a2;
  v88 = a3;
  v86 = a1;
  *&v76 = type metadata accessor for FINodeEntity();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76, v4);
  v85 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v84 = &v66 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb10AppIntentsE17IntentDisplayNameVSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v83 = &v66 - v11;
  v12 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v81 = *(v12 - 8);
  v82 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v80 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v15 - 8, v16);
  v79 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v18 - 8, v19);
  v77 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for LocalizedStringResource();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v78 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12FINodeEntityVSgMd);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v92 = &v66 - v27;
  v97 = type metadata accessor for InputConnectionBehavior();
  v28 = *(v97 - 8);
  MEMORY[0x28223BE20](v97, v29);
  v96 = &v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd);
  MEMORY[0x28223BE20](v31 - 8, v32);
  v69 = &v66 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v35);
  v37 = &v66 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10AppIntentsE18IntentInputOptionsVSgMd);
  MEMORY[0x28223BE20](v38 - 8, v39);
  v41 = &v66 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v42 - 8, v43);
  v45 = &v66 - v44;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySSSgGMd);
  v46 = *(v22 + 56);
  v72 = v21;
  v46(v45, 1, 1, v21);
  v71 = v46;
  v73 = v22 + 56;
  v47 = type metadata accessor for String.IntentInputOptions();
  v98 = 0;
  v99 = 0;
  (*(*(v47 - 8) + 56))(v41, 1, 1, v47);
  v48 = type metadata accessor for IntentDialog();
  v49 = *(v48 - 8);
  v90 = *(v49 + 56);
  v91 = v49 + 56;
  v90(v37, 1, 1, v48);
  v95 = *MEMORY[0x277CBA308];
  v93 = *(v28 + 104);
  v94 = v28 + 104;
  v93(v96);
  v66 = v45;
  v74 = IntentParameter<>.init(description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy26DocumentManagerExecutables12FINodeEntityVGMd);
  v46(v45, 1, 1, v21);
  (*(v75 + 56))(v92, 1, 1, v76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd);
  type metadata accessor for UTType();
  v50 = swift_allocObject();
  v76 = xmmword_249B9A480;
  *(v50 + 16) = xmmword_249B9A480;

  static UTType.folder.getter();
  v51 = v37;
  v67 = v37;
  v52 = v48;
  v70 = v48;
  v53 = v48;
  v54 = v90;
  v90(v51, 1, 1, v53);
  v54(v69, 1, 1, v52);
  v55 = swift_allocObject();
  *(v55 + 16) = v76;
  static UTType.folder.getter();
  type metadata accessor for FileEntitySpotlight.Source();
  swift_allocObject();
  v98 = FileEntitySpotlight.Source.init(supportedContentTypes:shouldExcludeTrashedItems:)(v55, 1);
  (v93)(v96, v95, v97);
  lazy protocol witness table accessor for type CreateFolderTargetProvider and conformance CreateFolderTargetProvider();
  lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity();
  v56 = v66;
  v92 = IntentParameter<>.init<A>(description:default:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:optionsProvider:)();
  *&v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySbSgGMd);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v57 = *MEMORY[0x277CC9110];
  v58 = v80;
  v59 = *(v81 + 104);
  v60 = v82;
  v59(v80, v57, v82);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v59(v58, v57, v60);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v71(v56, 0, 1, v72);
  LOBYTE(v98) = 1;
  v61 = type metadata accessor for Bool.IntentDisplayName();
  (*(*(v61 - 8) + 56))(v83, 1, 1, v61);
  v90(v67, 1, 1, v70);
  (v93)(v96, v95, v97);
  IntentParameter<>.init(title:description:default:displayName:requestValueDialog:inputConnectionBehavior:)();
  v98 = v86;
  v99 = v87;

  v62 = v74;
  IntentParameter.wrappedValue.setter();
  v63 = v88;
  v64 = v84;
  outlined init with copy of FINodeEntity(v88, v84);
  outlined init with copy of FINodeEntity(v64, v85);
  IntentParameter.wrappedValue.setter();
  outlined destroy of FINodeEntity(v64);
  LOBYTE(v98) = v89;
  IntentParameter.wrappedValue.setter();
  outlined destroy of FINodeEntity(v63);

  return v62;
}

uint64_t RenameItemIntent.init(target:newName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = a2;
  v85 = a3;
  v86 = a1;
  v3 = type metadata accessor for FINodeEntity();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v83 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v82 = &v72 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb10AppIntentsE17IntentDisplayNameVSgMd);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v81 = &v72 - v12;
  v80 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v77 = *(v80 - 8);
  MEMORY[0x28223BE20](v80, v13);
  v78 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v15 - 8, v16);
  v75 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v18 - 8, v19);
  v76 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for LocalizedStringResource();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v79 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10AppIntentsE18IntentInputOptionsVSgMd);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v74 = &v72 - v27;
  v97 = type metadata accessor for InputConnectionBehavior();
  v95 = *(v97 - 8);
  MEMORY[0x28223BE20](v97, v28);
  v30 = &v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd);
  MEMORY[0x28223BE20](v31 - 8, v32);
  v34 = &v72 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v36);
  v92 = &v72 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12FINodeEntityVSgMd);
  MEMORY[0x28223BE20](v38 - 8, v39);
  v41 = &v72 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v42 - 8, v43);
  v45 = &v72 - v44;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy26DocumentManagerExecutables12FINodeEntityVGMd);
  v46 = *(v22 + 56);
  v96 = v45;
  v93 = v22 + 56;
  v94 = v21;
  v91 = v46;
  v46(v45, 1, 1, v21);
  (*(v4 + 56))(v41, 1, 1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_249B9FA70;
  static UTType.item.getter();
  static UTType.folder.getter();
  if (one-time initialization token for needsInputFileDialog != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for IntentDialog();
  v48 = __swift_project_value_buffer(v47, static RenameItemIntent.needsInputFileDialog);
  v49 = *(v47 - 8);
  v50 = *(v49 + 16);
  v51 = v92;
  v50(v92, v48, v47);
  v52 = *(v49 + 56);
  v52(v51, 0, 1, v47);
  v89 = v52;
  v90 = v49 + 56;
  v52(v34, 1, 1, v47);
  v53 = *(v95 + 104);
  v88 = *MEMORY[0x277CBA308];
  v54 = v95 + 104;
  v87 = v53;
  v53(v30);
  lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity();
  v55 = v96;
  v56 = IntentParameter<>.init(description:default:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySSGMd);
  v91(v55, 1, 1, v94);
  v57 = type metadata accessor for String.IntentInputOptions();
  v98 = 0;
  v99 = 0;
  (*(*(v57 - 8) + 56))(v74, 1, 1, v57);
  v58 = one-time initialization token for needsNewNameDialog;
  v73 = v56;

  v59 = v30;
  if (v58 != -1)
  {
    swift_once();
  }

  v60 = __swift_project_value_buffer(v47, static RenameItemIntent.needsNewNameDialog);
  v61 = v92;
  v50(v92, v60, v47);
  v89(v61, 0, 1, v47);
  v95 = v54;
  v87(v30, v88, v97);
  v74 = IntentParameter<>.init(description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySbSgGMd);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v62 = *MEMORY[0x277CC9110];
  v63 = *(v77 + 13);
  v64 = v78;
  v65 = v80;
  v63(v78, v62, v80);
  v77 = v59;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v63(v64, v62, v65);
  v66 = v96;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v91(v66, 0, 1, v94);
  LOBYTE(v98) = 0;
  v67 = type metadata accessor for Bool.IntentDisplayName();
  (*(*(v67 - 8) + 56))(v81, 1, 1, v67);
  v89(v61, 1, 1, v47);
  v87(v77, v88, v97);
  IntentParameter<>.init(title:description:default:displayName:requestValueDialog:inputConnectionBehavior:)();
  v68 = v86;
  v69 = v82;
  outlined init with copy of FINodeEntity(v86, v82);
  outlined init with copy of FINodeEntity(v69, v83);

  v70 = v73;
  IntentParameter.wrappedValue.setter();
  outlined destroy of FINodeEntity(v69);
  v98 = v84;
  v99 = v85;
  IntentParameter.wrappedValue.setter();
  outlined destroy of FINodeEntity(v68);

  return v70;
}

unint64_t lazy protocol witness table accessor for type CreateFolderTargetProvider and conformance CreateFolderTargetProvider()
{
  result = lazy protocol witness table cache variable for type CreateFolderTargetProvider and conformance CreateFolderTargetProvider;
  if (!lazy protocol witness table cache variable for type CreateFolderTargetProvider and conformance CreateFolderTargetProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CreateFolderTargetProvider and conformance CreateFolderTargetProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CreateFolderTargetProvider and conformance CreateFolderTargetProvider;
  if (!lazy protocol witness table cache variable for type CreateFolderTargetProvider and conformance CreateFolderTargetProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CreateFolderTargetProvider and conformance CreateFolderTargetProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity()
{
  result = lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity;
  if (!lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity)
  {
    type metadata accessor for FINodeEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity;
  if (!lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity)
  {
    type metadata accessor for FINodeEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity;
  if (!lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity)
  {
    type metadata accessor for FINodeEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity);
  }

  return result;
}

uint64_t outlined init with copy of FINodeEntity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FINodeEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of FINodeEntity(uint64_t a1)
{
  v2 = type metadata accessor for FINodeEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of DOCIntentDonationManager.donateCreateFolder(folderName:parentFolder:bounceOnCollision:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 80) + **(*v4 + 80));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DOCIntentDonationManager.donateRenameItem(_:newName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 96) + **(*v3 + 96));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return v10(a1, a2, a3);
}

uint64_t @objc NSProgress.isDownloadingOperation.getter(void *a1)
{
  v1 = a1;
  v2 = NSProgress.isDownloadingOperation.getter();

  return v2 & 1;
}

uint64_t NSProgress.isDownloadingOperation.getter()
{
  return NSProgress.isDownloadingOperation.getter();
}

{
  v0 = NSProgress.operationKind.getter();
  if (v0)
  {
    v1 = v0;
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
    if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t NSProgress.operationKind.getter()
{
  v1 = [v0 userInfo];
  type metadata accessor for NSProgressUserInfoKey(0);
  lazy protocol witness table accessor for type NSProgressUserInfoKey and conformance NSProgressUserInfoKey();
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x277CCA628]), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(v2 + 56) + 32 * v3, v7);

    type metadata accessor for NSProgressFileOperationKind(0);
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t @objc NSProgress.isUploadingOperation.getter(void *a1)
{
  v1 = a1;
  v2 = NSProgress.isUploadingOperation.getter();

  return v2 & 1;
}

unint64_t lazy protocol witness table accessor for type NSProgressUserInfoKey and conformance NSProgressUserInfoKey()
{
  result = lazy protocol witness table cache variable for type NSProgressUserInfoKey and conformance NSProgressUserInfoKey;
  if (!lazy protocol witness table cache variable for type NSProgressUserInfoKey and conformance NSProgressUserInfoKey)
  {
    type metadata accessor for NSProgressUserInfoKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSProgressUserInfoKey and conformance NSProgressUserInfoKey);
  }

  return result;
}

double DOCGridLayout.Environment.preferredSystemSpec.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v7[8] = v1[4];
  v7[9] = v3;
  v7[10] = v1[6];
  v4 = v1[1];
  v7[4] = *v1;
  v7[5] = v4;
  v5 = v1[3];
  v7[6] = v1[2];
  v7[7] = v5;
  DOCGridLayout.Environment.preferredSystemLayoutMetrics.getter(v7);
  *&result = static DOCGridLayout.Spec.preferredSystemSpec(for:layoutMetrics:)(v1, v7, a1).n128_u64[0];
  return result;
}

uint64_t DOCGridLayout.Environment.preferredMinColumns.getter()
{
  v1 = v0[5];
  v8[4] = v0[4];
  v9 = v1;
  v10 = v0[6];
  v2 = v0[1];
  v8[0] = *v0;
  v8[1] = v2;
  v3 = v0[3];
  v8[2] = v0[2];
  v8[3] = v3;
  if (*v8 < DOCGridLayout.Environment.thresholdForAllowingMoreThanOneColumn.getter())
  {
    return 1;
  }

  v5 = qword_249BA4940[SBYTE8(v9)];
  v6 = minColumnsIfRegularSizeSetting #1 () in DOCGridLayout.Environment.preferredMinColumns.getter(v8, *v8);
  v7 = __OFADD__(v6, v5);
  result = v6 + v5;
  if (v7)
  {
    __break(1u);
  }

  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v29[0] = (v2 + 32);
  v29[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 104;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 - 72;
          if (*v12 >= *(v12 - 9))
          {
            break;
          }

          v24 = *v12;
          v14 = *(v12 + 1);
          v15 = *(v12 + 2);
          v16 = *(v12 + 3);
          v28 = *(v12 + 8);
          v26 = v15;
          v27 = v16;
          v25 = v14;
          *(v12 + 8) = *(v12 - 1);
          v17 = *(v12 - 24);
          *(v12 + 2) = *(v12 - 40);
          *(v12 + 3) = v17;
          v18 = *(v12 - 56);
          *v12 = *v13;
          *(v12 + 1) = v18;
          *v13 = v24;
          v19 = v28;
          v20 = v27;
          v21 = v25;
          *(v12 - 40) = v26;
          *(v12 - 24) = v20;
          *(v12 - 1) = v19;
          *(v12 - 56) = v21;
          v12 -= 72;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 72;
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
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    *&v24 = v7 + 32;
    *(&v24 + 1) = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(&v24, v23, v29, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v20[0] = (v2 + 32);
  v20[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 5);
          if (*(v12 + 1) >= v13)
          {
            break;
          }

          v14 = v12[32];
          v15 = *(v12 + 1);
          v16 = *v12;
          *(v12 + 1) = *(v12 - 1);
          *(v12 + 2) = v16;
          *(v12 - 1) = v15;
          *v12 = v14;
          *(v12 + 1) = v13;
          v12 -= 32;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables24DOCItemSizeGroupCategoryO3key_s5Int64V5valuetMd);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v18, v19, v20, v5);
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

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

uint64_t DOCGridLayout.Environment.preferredSystemLayoutMetrics.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v28 = 1;
  v20 = v3;
  v24 = *(v1 + 56);
  v25 = *(v1 + 72);
  v26 = *(v1 + 88);
  v27 = *(v1 + 104);
  v21 = *(v1 + 8);
  v22 = *(v1 + 24);
  v23 = *(v1 + 40);
  result = specialized static DOCGridLayout.Spec.LayoutMetrics.allLayoutMetricSpecsFromSmallToLarge(for:)(&v20);
  v5 = *(result + 16);
  if (v5)
  {
    if (v3 <= *(result + 72 * v5 - 40))
    {
      v10 = (result + 72 * v5);
      do
      {
        v11 = v10;
        if (!--v5)
        {
          break;
        }

        v10 -= 9;
      }

      while (v3 <= *(v11 - 14));
      v8 = *v11;
      v9 = *(v11 + 1);
      v6 = *(v11 - 2);
      v7 = *(v11 - 1);
    }

    else
    {
      v6 = 0uLL;
      v7 = 0uLL;
      v8 = 0uLL;
      v9 = 0uLL;
      if (v28)
      {
        v16 = *(result + 40);
        v17 = *(result + 56);
        v18 = *(result + 72);
        v19 = *(result + 88);

        v20 = v3;
        v24 = *(v1 + 56);
        v25 = *(v1 + 72);
        v26 = *(v1 + 88);
        v27 = *(v1 + 104);
        v21 = *(v1 + 8);
        v22 = *(v1 + 24);
        v23 = *(v1 + 40);
        result = specialized static DOCGridLayout.logInvalidLayoutSpec_unableToDetermineBestMetrics(environment:fallback:)();
        *a1 = v16;
        a1[1] = v17;
        a1[2] = v18;
        a1[3] = v19;
        return result;
      }
    }

    goto LABEL_11;
  }

  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  if ((v28 & 1) == 0)
  {
LABEL_11:
    v12 = v7;
    v13 = v9;
    v14 = v6;
    v15 = v8;

    *a1 = v14;
    a1[1] = v12;
    a1[2] = v15;
    a1[3] = v13;
    return result;
  }

  __break(1u);
  return result;
}