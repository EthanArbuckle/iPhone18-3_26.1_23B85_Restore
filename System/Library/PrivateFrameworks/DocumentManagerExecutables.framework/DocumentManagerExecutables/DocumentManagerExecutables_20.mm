uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(id *__dst, id *__src, id *a3, unint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      v15 = a4;
      memmove(a4, __dst, 8 * v11);
      a4 = v15;
      v5 = v4;
    }

    v16 = (a4 + 8 * v11);
    if (v9 < 8)
    {
LABEL_10:
      v7 = v8;
      goto LABEL_50;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_10;
      }

      v18 = v16;
      v19 = v7;
      v53 = *v7;
      v20 = v5;
      v21 = a4;
      v52 = *a4;
      v22 = v52;
      v23 = v53;
      v24 = v22;
      v25 = closure #2 in LocationSectionManager.handleSourceUpdate(_:)(&v53, &v52);
      if (v20)
      {

        v42 = v21;
        v44 = v18 - v21 + 7;
        if ((v18 - v21) >= 0)
        {
          v44 = v18 - v21;
        }

        v45 = v44 >> 3;
        if (v8 < v21 || v8 >= v21 + (v44 & 0xFFFFFFFFFFFFFFF8))
        {
          memmove(v8, v21, 8 * v45);
          return 1;
        }

        if (v8 == v21)
        {
          return 1;
        }

        v43 = 8 * v45;
        v41 = v8;
        goto LABEL_56;
      }

      v26 = v25;

      if (v26)
      {
        break;
      }

      v17 = v21;
      a4 = v21 + 8;
      v7 = v19;
      if (v8 != v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v8;
      v16 = v18;
      v5 = 0;
      if (a4 >= v18)
      {
        goto LABEL_10;
      }
    }

    v17 = v19;
    v7 = v19 + 1;
    a4 = v21;
    if (v8 == v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v14] <= a4)
  {
    v27 = a4;
    memmove(a4, __src, 8 * v14);
    a4 = v27;
    v5 = v4;
  }

  v16 = (a4 + 8 * v14);
  if (v12 < 8 || v7 <= v8)
  {
LABEL_50:
    v46 = &v16[-a4 + 7];
    if (&v16[-a4] >= 0)
    {
      v46 = &v16[-a4];
    }

    if (v7 < a4 || v7 >= a4 + (v46 & 0xFFFFFFFFFFFFFFF8) || v7 != a4)
    {
      v43 = 8 * (v46 >> 3);
      v41 = v7;
      v42 = a4;
LABEL_56:
      memmove(v41, v42, v43);
    }

    return 1;
  }

  v28 = -a4;
  v51 = a4;
  v48 = -a4;
  v49 = v8;
LABEL_25:
  v50 = v7;
  v29 = v7 - 1;
  v30 = &v16[v28];
  --v6;
  v31 = v16;
  while (1)
  {
    v32 = *(v31 - 1);
    v31 -= 8;
    v53 = v32;
    v33 = v29;
    v52 = *v29;
    v34 = v52;
    v35 = v32;
    v36 = v34;
    v37 = closure #2 in LocationSectionManager.handleSourceUpdate(_:)(&v53, &v52);
    if (v5)
    {
      break;
    }

    v38 = v37;

    v39 = (v6 + 1);
    if (v38)
    {
      if (v39 != v50)
      {
        *v6 = *v33;
      }

      a4 = v51;
      if (v16 <= v51 || (v7 = v33, v28 = v48, v33 <= v49))
      {
        v7 = v33;
        goto LABEL_50;
      }

      goto LABEL_25;
    }

    if (v39 != v16)
    {
      *v6 = *v31;
    }

    v30 -= 8;
    --v6;
    v16 = v31;
    v29 = v33;
    if (v31 <= v51)
    {
      v16 = v31;
      v7 = v50;
      a4 = v51;
      goto LABEL_50;
    }
  }

  if (v30 >= 0)
  {
    v40 = v30;
  }

  else
  {
    v40 = v30 + 7;
  }

  v41 = v50;
  v42 = v51;
  if (v50 < v51 || v50 >= &v51[v40 & 0xFFFFFFFFFFFFFFF8] || v50 != v51)
  {
    v43 = 8 * (v40 >> 3);
    goto LABEL_56;
  }

  return 1;
}

id specialized LocationSectionManager.generateTabGroup(using:alertPresenting:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = specialized LocationSectionManager.generateTabs(using:alertPresenting:)(a1, a2, a3, a4, a5);
  if (v5 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }

LABEL_5:

    return 0;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = [objc_opt_self() mainBundle];
  v20._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0x6E6F697461636F4CLL;
  v7._object = 0xE900000000000073;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v20._countAndFlagsBits = 0;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v20);

  v10 = MEMORY[0x24C1FAD20](0x7265646C6F66, 0xE600000000000000);
  v11 = [objc_opt_self() systemImageNamed_];

  v12 = objc_allocWithZone(MEMORY[0x277D75B30]);
  v13 = MEMORY[0x24C1FAD20](v9._countAndFlagsBits, v9._object);

  v14 = MEMORY[0x24C1FAD20](0x6E6F697461636F6CLL, 0xE900000000000073);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITab);
  isa = Array._bridgeToObjectiveC()().super.isa;

  aBlock[4] = closure #1 in LocationSectionManager.generateTabGroup(using:alertPresenting:);
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed _UIContentViewEditingState) -> (@owned _UIContentViewEditingState);
  aBlock[3] = &block_descriptor_130;
  v16 = _Block_copy(aBlock);

  v17 = [v12 initWithTitle:v13 image:v11 identifier:v14 children:isa viewControllerProvider:v16];
  _Block_release(v16);

  return v17;
}

uint64_t specialized LocationSectionManager.generateTabs(using:alertPresenting:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = (*(**(a3 + 56) + 136))(3);
  v8 = v7;
  ObjectType = swift_getObjectType();
  result = (*(v8 + 72))(2, ObjectType, v8);
  v11 = result;
  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  v70 = a5;
  v74 = MEMORY[0x277D84F90];
  v14 = *(result + 16);
  v15 = *MEMORY[0x277D05DD0];
  v16 = result - 16;
LABEL_2:
  v17 = (v16 + 48 * v12);
  while (1)
  {
    if (v14 == v12)
    {
      swift_unknownObjectRelease();

      return v13;
    }

    if (v12 >= *(v11 + 16))
    {
      break;
    }

    ++v12;
    v18 = (v17 + 3);
    v19 = v17[3];
    v20 = v17[4];
    *&v76[9] = *(v17 + 73);
    v75 = v19;
    *v76 = v20;
    v17 += 3;
    if (v76[24] == 1)
    {
      v66 = v16;
      v68 = v6;
      v21 = *v18;
      v22 = v75;
      outlined init with copy of DOCSidebarItem(&v75, &v72);
      v63 = v21;
      v23 = [v22 identifier];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
      v67 = v15;
      if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
      {

        v30 = 0;
      }

      else
      {
        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v30 = 0;
        if ((v29 & 1) == 0)
        {
          type metadata accessor for DOCFileProviderSource();
          v31 = swift_dynamicCastClass();
          if (v31)
          {
            v30 = [v31 isEjectable] ^ 1;
          }

          else
          {
            v30 = 1;
          }
        }
      }

      v32 = [v22 displayName];
      if (!v32)
      {
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = MEMORY[0x24C1FAD20](v33);
      }

      v34 = (*(v70 + 8))(&v75, a4);
      outlined destroy of DOCSidebarItem(&v75);
      v72 = 0x6E6F697461636F6CLL;
      v73 = 0xE90000000000002ELL;
      v35 = [v22 identifier];
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      MEMORY[0x24C1FAEA0](v36, v38);

      v39 = v72;
      v40 = v73;
      v41 = objc_allocWithZone(MEMORY[0x277D75B08]);
      v42 = MEMORY[0x24C1FAD20](v39, v40);

      v43 = [v41 initWithTitle:v32 image:v34 identifier:v42 viewControllerProvider:0];

      [v43 setAllowsHiding_];
      if (v30)
      {
        DOCSourceVisibilityController.visitedSourceIdentifiers.getter();
        v45 = v44;
        v46 = [v22 identifier];
        v47 = specialized Set.contains(_:)(v46, v45);

        v48 = (v47 & 1) == 0 && [v22 status] && objc_msgSend(v22, sel_status) != 2;
        [v43 setHiddenByDefault_];
        type metadata accessor for DOCFileProviderSource();
        v49 = swift_dynamicCastClass();
        if (v49)
        {
          v50 = (*((*MEMORY[0x277D85000] & *v49) + 0xF8))(v63);
          if (v50 == 2)
          {
            v51 = [v43 isHiddenByDefault];
          }

          else
          {
            v51 = v50 ^ 1;
          }

          [v43 setHidden_];
          outlined destroy of DOCSidebarItem(&v75);
        }

        else
        {
          [v43 setHidden_];
        }
      }

      [v43 setUserInfo_];
      type metadata accessor for DOCFileProviderSource();
      v52 = swift_dynamicCastClass();
      if (v52)
      {
        v53 = *(v52 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
        if (v53)
        {
          v54 = v52;
          v55 = swift_allocObject();
          *(v55 + 16) = v43;
          type metadata accessor for ProviderDomainState();
          swift_allocObject();
          outlined init with copy of DOCSidebarItem(&v75, &v72);
          v56 = v53;
          outlined init with copy of DOCSidebarItem(&v75, &v72);
          v57 = v56;
          v58 = v43;
          v59 = ProviderDomainState.init(source:domain:alertPresenting:stateDidChange:)(v54, v57, a2, partial apply for closure #1 in LocationSectionManager.startObservingState(for:tab:alertPresenting:), v55);
          v60 = [v57 identifier];
          swift_beginAccess();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v71 = *(a3 + 104);
          *(a3 + 104) = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v59, v60, isUniquelyReferenced_nonNull_native);

          *(a3 + 104) = v71;
          swift_endAccess();

          outlined destroy of DOCSidebarItem(&v75);
        }
      }

      v62 = outlined destroy of DOCSidebarItem(&v75);
      MEMORY[0x24C1FB090](v62);
      if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v13 = v74;
      v15 = v67;
      v6 = v68;
      v16 = v66;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

void *specialized LocationSectionManager.init(configuration:sourceObserver:sourceVisibilityController:mutableSectionsData:dataSource:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v4 + 16) = 3;
  swift_unknownObjectWeakInit();
  *(v4 + 96) = 0;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  v9 = MEMORY[0x277D84F90];
  v5[13] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo18FPProviderDomainIDa_26DocumentManagerExecutables08ProviderD5State33_8DF2B3C7EA992A572C5DD842497A91B1LLCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v5[14] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo18FPProviderDomainIDa_SbTt0g5Tf4g_n(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_249B9A480;
  v11 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 32) = 0xD000000000000027;
  *(v10 + 40) = 0x8000000249BD3A40;
  print(_:separator:terminator:)();

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_249B9A480;
  _StringGuts.grow(_:)(35);

  v13 = [a1 hiddenSourcesIdentifiers];
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = MEMORY[0x24C1FB0D0](v14, v11);
  v17 = v16;

  MEMORY[0x24C1FAEA0](v15, v17);

  *(v12 + 56) = v11;
  *(v12 + 32) = 0xD000000000000021;
  *(v12 + 40) = 0x8000000249BD3A70;
  print(_:separator:terminator:)();

  v5[3] = a1;
  v5[5] = a2;
  v5[6] = a3;
  v5[7] = a4;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return v5;
}

uint64_t specialized LocationSectionManager.validateDropOperation(for:onto:)(void *a1, void *a2)
{
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a2 userInfo])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v60 = 0u;
    v61 = 0u;
  }

  v62[0] = v60;
  v62[1] = v61;
  if (!*(&v61 + 1))
  {
LABEL_22:
    outlined destroy of CharacterSet?(v62, &_sypSgMd);
    return 1;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCDocumentSource);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 1;
  }

  v10 = v59;
  type metadata accessor for DOCFileProviderSource();
  v11 = swift_dynamicCastClass();
  if (!v11 || (v12 = v11, v13 = MEMORY[0x277D85000], (v14 = (*((*MEMORY[0x277D85000] & *v11) + 0xE0))()) == 0))
  {
LABEL_23:

    return 1;
  }

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v14);
  v15 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  swift_getObjectType();
  if (specialized static FPItem.sessionContainsDOCNode(_:)(a1, v15))
  {
    if ([a1 localDragSession])
    {
      swift_unknownObjectRelease();
      static UTType.item.getter();
      v16 = specialized static FPItem.nodesFromLocalDropSession(_:itemContentType:)(a1, v9);
      (*(v5 + 8))(v9, v4);
      *&v62[0] = MEMORY[0x277D84F90];
      if (v16 >> 62)
      {
        goto LABEL_75;
      }

      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:
      v55 = v10;
      v18 = v17;
      v58 = v16;
      if (v17)
      {
        v19 = 0;
        v20 = v16 & 0xC000000000000001;
        v10 = (v16 & 0xFFFFFFFFFFFFFF8);
        v16 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
        while (1)
        {
          if (v20)
          {
            v21 = MEMORY[0x24C1FC540](v19, v58);
            v22 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
LABEL_21:
              __break(1u);
              goto LABEL_22;
            }
          }

          else
          {
            if (v19 >= v10[2])
            {
              __break(1u);
LABEL_73:
              __break(1u);
LABEL_74:
              __break(1u);
LABEL_75:
              v17 = __CocoaSet.count.getter();
              goto LABEL_12;
            }

            v21 = *(v58 + 8 * v19 + 32);
            swift_unknownObjectRetain();
            v22 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              goto LABEL_21;
            }
          }

          v23 = [v21 doc_eligibleActions];
          type metadata accessor for FPAction(0);
          lazy protocol witness table accessor for type FPAction and conformance FPAction();
          v24 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
          swift_unknownObjectRelease();

          specialized Array.append<A>(contentsOf:)(v24);
          ++v19;
          if (v22 == v18)
          {
            v27 = *&v62[0];
            v10 = v55;
            v16 = v58;
            goto LABEL_30;
          }
        }
      }

      v27 = MEMORY[0x277D84F90];
LABEL_30:
      v28 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8FPActiona_SayAEGTt0g5Tf4g_n(v27);

      if (DOCFileProviderSource.isRootWritable.getter())
      {
        if (specialized Set.contains(_:)(*MEMORY[0x277CC6048], v28))
        {

          v29 = 0;
          v56 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain;
          v57 = v16 & 0xC000000000000001;
          v54 = v16 & 0xFFFFFFFFFFFFFF8;
          while (v18 != v29)
          {
            if (v57)
            {
              v30 = MEMORY[0x24C1FC540](v29, v16);
              if (__OFADD__(v29, 1))
              {
                goto LABEL_49;
              }
            }

            else
            {
              if (v29 >= *(v54 + 16))
              {
                goto LABEL_73;
              }

              v30 = *(v16 + 8 * v29 + 32);
              swift_unknownObjectRetain();
              if (__OFADD__(v29, 1))
              {
LABEL_49:
                __break(1u);
                goto LABEL_50;
              }
            }

            v31 = [v30 providerDomainID];
            v32 = *(v12 + v56);
            if (v32)
            {
              v33 = [v32 identifier];
              v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v36 = v35;
              if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
              {

                v38 = 0;
              }

              else
              {
                v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v38 = v39 ^ 1;
              }

              v31 = v33;
              v10 = v55;
              v16 = v58;
            }

            else
            {
              v38 = 1;
            }

            v40 = [v30 isRootItem];
            result = swift_unknownObjectRelease();
            if (v40)
            {
              ++v29;
              if ((v38 & 1) == 0)
              {
                continue;
              }
            }

            v42 = 0;
            while (1)
            {
              if (v57)
              {
                v43 = MEMORY[0x24C1FC540](v42, v16);
              }

              else
              {
                if (v42 >= *(v54 + 16))
                {
                  __break(1u);
                  return result;
                }

                v43 = *(v16 + 8 * v42 + 32);
                swift_unknownObjectRetain();
              }

              v44 = v42 + 1;
              if (__OFADD__(v42, 1))
              {
                goto LABEL_74;
              }

              v45 = [v43 providerDomainID];
              v46 = *(v12 + v56);
              if (!v46)
              {

                swift_unknownObjectRelease();
                goto LABEL_70;
              }

              v47 = [v46 identifier];
              v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v50 = v49;
              if (v48 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v50 == v51)
              {

                swift_unknownObjectRelease();
              }

              else
              {
                v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

                swift_unknownObjectRelease();

                if ((v53 & 1) == 0)
                {

LABEL_70:

                  return 2;
                }
              }

              ++v42;
              v10 = v55;
              v16 = v58;
              if (v44 == v18)
              {

                return 3;
              }
            }
          }
        }

        else
        {

          v41 = specialized Set.contains(_:)(*MEMORY[0x277CC5FD8], v28);

          if (v41)
          {
            return 2;
          }
        }
      }

      else
      {
LABEL_50:
      }

      return 1;
    }

    goto LABEL_23;
  }

  v26 = (*((*v13 & *v12) + 0x130))();

  if (v26)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

void specialized LocationSectionManager.performDrop(session:onto:alertPresenting:completion:)(uint64_t a1, id a2, uint64_t a3, void (*a4)(void))
{
  if ([a2 userInfo])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (*(&v15 + 1))
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCDocumentSource);
    if (swift_dynamicCast())
    {
      v7 = v13;
      type metadata accessor for DOCFileProviderSource();
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = *((*MEMORY[0x277D85000] & *v8) + 0xE0);
        v7 = v13;
        v10 = v9();
        if (v10)
        {
          v11 = v10;
          v12 = v10(a1, 3, a3);
          (a4)(v12);
          outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v11);

          return;
        }
      }
    }
  }

  else
  {
    outlined destroy of CharacterSet?(v16, &_sypSgMd);
  }

  a4();
}

uint64_t dispatch thunk of TabIconProvider.getIcon(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a3 + 8);
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  v9 = v3;
  v10 = v4;
  return v5(v8);
}

uint64_t type metadata accessor for ProviderDomainState()
{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

uint64_t type metadata accessor for EjectStateDelegate()
{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

void specialized LocationSectionManager.warnAboutInvalidUSBName(name:alertPresenting:)(void *a1)
{
  v2 = _DocumentManagerBundle();
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  v27._object = 0x8000000249BD3ED0;
  v4._object = 0x8000000249BD3EB0;
  v27._countAndFlagsBits = 0xD00000000000004ALL;
  v4._countAndFlagsBits = 0xD000000000000017;
  v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v5.value._object = 0xEB00000000656C62;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v27);

  v8 = _DocumentManagerBundle();
  if (!v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = v8;
  v28._object = 0x8000000249BD3F60;
  v10._object = 0x8000000249BD3F20;
  v28._countAndFlagsBits = 0xD00000000000003CLL;
  v10._countAndFlagsBits = 0x1000000000000031;
  v11.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v11.value._object = 0xEB00000000656C62;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v28);

  v14 = MEMORY[0x24C1FAD20](v7._countAndFlagsBits, v7._object);

  v15 = MEMORY[0x24C1FAD20](v13._countAndFlagsBits, v13._object);

  v16 = [objc_opt_self() alertControllerWithTitle:v14 message:v15 preferredStyle:1];

  v17 = _DocumentManagerBundle();
  if (!v17)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v18 = v17;
  v29._object = 0xE000000000000000;
  v19._countAndFlagsBits = 19279;
  v19._object = 0xE200000000000000;
  v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v20.value._object = 0xEB00000000656C62;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0;
  v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v29);

  v23 = MEMORY[0x24C1FAD20](v22._countAndFlagsBits, v22._object);

  v25 = [objc_opt_self() actionWithTitle:v23 style:0 handler:0];

  v24 = v16;
  [v24 addAction_];
  [v24 setPreferredAction_];

  [a1 presentViewController:v24 animated:1 completion:0];
}

uint64_t objectdestroy_4Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_17Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

unint64_t lazy protocol witness table accessor for type FPAction and conformance FPAction()
{
  result = lazy protocol witness table cache variable for type FPAction and conformance FPAction;
  if (!lazy protocol witness table cache variable for type FPAction and conformance FPAction)
  {
    type metadata accessor for FPAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FPAction and conformance FPAction);
  }

  return result;
}

uint64_t DOCDocumentSourceIdentifierIsNonManagedICloud(void *a1)
{
  v1 = a1;
  if ([v1 hasPrefix:*MEMORY[0x277D060C0]] & 1) != 0 || (objc_msgSend(v1, "hasPrefix:", *MEMORY[0x277D060E8]) & 1) != 0 || (objc_msgSend(v1, "hasPrefix:", *MEMORY[0x277D060C8]))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 hasPrefix:*MEMORY[0x277D060D8]];
  }

  return v2;
}

uint64_t DOCItemCollectionListSpec.init(defaultRowHeight:defaultIconVerticalMargin:titleFontStyle:subtitleFontStyle:rowStyle:titleMaxRows:subtitleMaxRows:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  *a6 = a7;
  *(a6 + 8) = a8;
  *(a6 + 16) = result;
  *(a6 + 24) = a2;
  *(a6 + 32) = a3;
  *(a6 + 40) = 1;
  *(a6 + 48) = a4;
  *(a6 + 56) = a5;
  return result;
}

double DOCItemCollectionListSpec.init(traitCollection:sizeClass:sizeClassOrientation:)@<D0>(void *a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  specialized DOCItemCollectionListSpec.init(traitCollection:sizeClass:sizeClassOrientation:)(a1, a2, v7);
  v4 = v7[1];
  *a3 = v7[0];
  a3[1] = v4;
  result = *&v8;
  v6 = v9;
  a3[2] = v8;
  a3[3] = v6;
  return result;
}

uint64_t DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors.hash(into:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  MEMORY[0x24C1FCBD0](qword_249BA4F30[v1]);
  MEMORY[0x24C1FCBD0](v2);
  return DOCItemCollectionLayoutTraits.ListItemTraits.hash(into:)();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors()
{
  Hasher.init(_seed:)();
  DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors()
{
  Hasher.init(_seed:)();
  DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors.hash(into:)();
  return Hasher._finalize()();
}

void *one-time initialization function for cachedHeights()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables25DOCItemCollectionListSpecV0F24HeightDeterminingFactors33_007BF96B63A761DA9097C9AAC5823B90LLV_12CoreGraphics7CGFloatVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  static DOCItemCollectionListSpec.cachedHeights = result;
  return result;
}

double DOCItemCollectionListSpec.rowHeight(for:gridItemLayoutTraits:listItemLayoutTraits:)(void *a1, __int128 *a2, __int128 *a3)
{
  v4 = v3;
  v6 = a2[9];
  v122 = a2[8];
  v123 = v6;
  v124[0] = a2[10];
  *(v124 + 9) = *(a2 + 169);
  v7 = a2[5];
  v118 = a2[4];
  v119 = v7;
  v8 = a2[7];
  v120 = a2[6];
  v121 = v8;
  v9 = a2[1];
  v114 = *a2;
  v115 = v9;
  v10 = a2[3];
  v116 = a2[2];
  v117 = v10;
  v11 = a3[5];
  v129 = a3[4];
  v130 = v11;
  v12 = a3[7];
  v131 = a3[6];
  v132 = v12;
  v13 = a3[1];
  v125 = *a3;
  v126 = v13;
  v14 = a3[3];
  v127 = a3[2];
  v128 = v14;
  v15 = [a1 preferredContentSizeCategory];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
  {

LABEL_5:
    v21 = [objc_opt_self() defaultContentSizeCategory];
    v22 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];

    goto LABEL_7;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
    goto LABEL_5;
  }

  v22 = a1;
LABEL_7:
  lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
  UITraitCollection.subscript.getter();
  v23 = BYTE8(v82);
  v24 = *(v4 + 24);
  v102 = *(v4 + 16);
  v101 = v24;
  outlined init with copy of UIFontTextStyle(&v102, &v82);
  outlined init with copy of UIFontTextStyle(&v101, &v82);
  v25 = [v22 preferredContentSizeCategory];
  UITraitCollection.subscript.getter();
  v110 = v129;
  v111 = v130;
  v112 = v131;
  v113 = v132;
  v106 = v125;
  v107 = v126;
  v108 = v127;
  v109 = v128;
  v103[0] = v102;
  v103[1] = v101;
  v103[2] = v25;
  v104 = v23;
  v105 = v83;
  outlined init with copy of DOCItemCollectionLayoutTraits.ListItemTraits(&v125, &v82);
  v26 = [v22 preferredContentSizeCategory];
  v27 = UIContentSizeCategory.isAccessibilityCategory.getter();

  if ((v27 & 1) == 0)
  {
    v32 = [objc_opt_self() defaultMetrics];
    [v32 scaledValueForValue_];
    v31 = v33;

    goto LABEL_14;
  }

  if (one-time initialization token for cachedHeights != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v28 = static DOCItemCollectionListSpec.cachedHeights;
  if (*(static DOCItemCollectionListSpec.cachedHeights + 2))
  {
    v29 = specialized __RawDictionaryStorage.find<A>(_:)(v103);
    if (v30)
    {
      v31 = *(v28[7] + 8 * v29);
      swift_endAccess();
LABEL_14:
      outlined destroy of DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors(v103);

      return v31;
    }
  }

  swift_endAccess();
  v34 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v35 = objc_allocWithZone(type metadata accessor for DOCItemCollectionLargeTextListCell(0));
  v69 = v34;
  v36 = DOCItemCollectionListCell.init(frame:containerView:)(v34, 0.0, 0.0, 0.0, 0.0);
  v37 = [objc_allocWithZone(type metadata accessor for DOCItemCollectionCellContent(0)) init];
  v90 = v122;
  v91 = v123;
  v92[0] = v124[0];
  *(v92 + 9) = *(v124 + 9);
  v86 = v118;
  v87 = v119;
  v88 = v120;
  v89 = v121;
  v82 = v114;
  v83 = v115;
  v84 = v116;
  v85 = v117;
  DOCGridLayout.specIconWidth.modify(*&v116, *&v117);
  v79 = v90;
  v80 = v91;
  v81[0] = v92[0];
  *(v81 + 9) = *(v92 + 9);
  v75 = v86;
  v76 = v87;
  v77 = v88;
  v78 = v89;
  v71 = v82;
  v72 = v83;
  v73 = v84;
  v74 = v85;
  v38 = MEMORY[0x277D85000];
  v39 = *((*MEMORY[0x277D85000] & *v37) + 0x2E0);
  outlined init with copy of DOCItemCollectionLayoutTraits.GridItemTraits(&v114, v70);
  v39(&v71);
  v97 = v129;
  v98 = v130;
  v99 = v131;
  v100 = v132;
  v93 = v125;
  v94 = v126;
  v95 = v127;
  v96 = v128;
  DOCGridLayout.specIconWidth.modify(*&v127, *&v128);
  v75 = v97;
  v76 = v98;
  v77 = v99;
  v78 = v100;
  v71 = v93;
  v72 = v94;
  v73 = v95;
  v74 = v96;
  v40 = *((*v38 & *v37) + 0x2F8);
  outlined init with copy of DOCItemCollectionLayoutTraits.ListItemTraits(&v125, v70);
  v40(&v71);
  (*((*v38 & *v37) + 0x328))([objc_allocWithZone(MEMORY[0x277D05EA0]) init]);
  v41 = *((*v38 & *v36) + 0x210);
  v42 = v36;
  v68 = v37;
  v41(v37);
  v43 = *((*v38 & *v42) + 0x348);
  v44 = v42;
  v43();
  v45 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_subtitleLabel;
  [*(v44 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_subtitleLabel) setHidden_];
  v46 = [a1 preferredContentSizeCategory];
  v47 = [v44 traitCollection];
  v48 = [v47 preferredContentSizeCategory];

  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;
  if (v49 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v51 == v52)
  {
  }

  else
  {
    v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v53 & 1) == 0)
    {

      outlined destroy of DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors(v103);
      return 0.0;
    }
  }

  v54 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_listTitleLabel;
  v55 = *(v44 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionListCell_listTitleLabel);

  v56 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v57 = MEMORY[0x24C1FAD20](6425185, 0xE300000000000000);
  v58 = [v56 initWithString_];

  [v55 setAttributedText_];
  v59 = *(v44 + v45);

  v60 = MEMORY[0x24C1FAD20](6556259, 0xE300000000000000);
  [v59 setText_];

  v61 = *(v44 + v54);
  [v61 invalidateIntrinsicContentSize];

  v62 = *(v44 + v45);
  [v62 invalidateIntrinsicContentSize];

  [objc_opt_self() separatorThicknessForTraitCollection_];
  v64 = v63;
  [v69 systemLayoutSizeFittingSize_];
  v31 = v64 + v65;
  swift_beginAccess();
  outlined init with copy of DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors(v103, &v71);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v71 = static DOCItemCollectionListSpec.cachedHeights;
  static DOCItemCollectionListSpec.cachedHeights = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v103, isUniquelyReferenced_nonNull_native, v31);
  outlined destroy of DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors(v103);
  static DOCItemCollectionListSpec.cachedHeights = v71;
  swift_endAccess();
  outlined destroy of DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors(v103);

  return v31;
}

uint64_t specialized static DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v30 = *(a1 + 32);
  v3 = *(a1 + 120);
  v53 = *(a1 + 104);
  v54 = v3;
  v4 = *(a1 + 152);
  v55 = *(a1 + 136);
  v56 = v4;
  v5 = *(a1 + 56);
  v49 = *(a1 + 40);
  v50 = v5;
  v6 = *(a1 + 88);
  v51 = *(a1 + 72);
  v52 = v6;
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 152);
  v63 = *(a2 + 136);
  v64 = v9;
  v10 = *(a2 + 120);
  v61 = *(a2 + 104);
  v62 = v10;
  v11 = *(a2 + 88);
  v59 = *(a2 + 72);
  v60 = v11;
  v12 = *(a2 + 56);
  v57 = *(a2 + 40);
  v58 = v12;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;
  if (v23 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v25 != v26)
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v27)
    {
      goto LABEL_13;
    }

LABEL_16:
    v28 = 0;
    return v28 & 1;
  }

LABEL_13:
  v28 = 0;
  if (qword_249BA4F30[v2] == qword_249BA4F30[v7] && v30 == v8)
  {
    v43 = v53;
    v44 = v54;
    v45 = v55;
    v46 = v56;
    v39 = v49;
    v40 = v50;
    v41 = v51;
    v42 = v52;
    v35 = v61;
    v36 = v62;
    v37 = v63;
    v38 = v64;
    v31 = v57;
    v32 = v58;
    v33 = v59;
    v34 = v60;
    outlined init with copy of DOCItemCollectionLayoutTraits.ListItemTraits(&v49, v48);
    outlined init with copy of DOCItemCollectionLayoutTraits.ListItemTraits(&v57, v48);
    v28 = specialized static DOCItemCollectionLayoutTraits.ListItemTraits.== infix(_:_:)(&v39, &v31);
    v47[4] = v35;
    v47[5] = v36;
    v47[6] = v37;
    v47[7] = v38;
    v47[0] = v31;
    v47[1] = v32;
    v47[2] = v33;
    v47[3] = v34;
    outlined destroy of DOCItemCollectionLayoutTraits.ListItemTraits(v47);
    v48[4] = v43;
    v48[5] = v44;
    v48[6] = v45;
    v48[7] = v46;
    v48[0] = v39;
    v48[1] = v40;
    v48[2] = v41;
    v48[3] = v42;
    outlined destroy of DOCItemCollectionLayoutTraits.ListItemTraits(v48);
  }

  return v28 & 1;
}

uint64_t specialized static DOCItemCollectionListSpec.defaultIconSize(for:sizeSliderValue:)(char a1, uint64_t a2)
{
  if (!a1)
  {
    return 36;
  }

  if (a1 == 1)
  {
    return 48;
  }

  result = a2 - 16;
  if (__OFSUB__(a2, 16))
  {
    __break(1u);
  }

  return result;
}

void specialized DOCItemCollectionListSpec.init(traitCollection:sizeClass:sizeClassOrientation:)(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
  UITraitCollection.subscript.getter();
  if (v15 == 3)
  {
    v6 = MEMORY[0x277D76918];
    v7 = 8;
  }

  else
  {
    v6 = qword_278FA3228[a2];
    v7 = qword_249BA4F48[a2];
  }

  v8 = *v6;
  v9 = 8.0;
  if (v16 != 2)
  {
    if (v16 == 1)
    {
      v10 = 48;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v10 = v17 - 16;
  if (__OFSUB__(v17, 16))
  {
    __break(1u);
LABEL_10:
    v9 = 6.0;
    v10 = 36;
  }

LABEL_11:
  v11 = *MEMORY[0x277D76938];
  v12 = [a1 preferredContentSizeCategory];
  v13 = UIContentSizeCategory.isAccessibilityCategory.getter();

  *a3 = v9 + v9 + v10;
  *(a3 + 8) = v9;
  if (v13)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  *(a3 + 16) = v8;
  *(a3 + 24) = v11;
  *(a3 + 32) = v7;
  *(a3 + 40) = 1;
  *(a3 + 48) = v14;
  *(a3 + 56) = v14;
}

uint64_t outlined init with copy of UIFontTextStyle(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UIFontTextStyle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for DOCItemCollectionListSpec(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCItemCollectionListSpec(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors and conformance DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors()
{
  result = lazy protocol witness table cache variable for type DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors and conformance DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors;
  if (!lazy protocol witness table cache variable for type DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors and conformance DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors and conformance DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors);
  }

  return result;
}

id DOCVisualEffectView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DOCVisualEffectView.__allocating_init(effect:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithEffect_];

  return v3;
}

id DOCVisualEffectView.init(effect:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DOCVisualEffectView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithEffect_, a1);

  return v3;
}

id DOCVisualEffectView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCVisualEffectView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static UIColor.doc_colorForStandardPlatter.getter()
{
  v0 = [objc_opt_self() secondarySystemBackgroundColor];

  return v0;
}

uint64_t UIBackgroundConfiguration.doc_configureWithStandardPlatter(cornerRadius:)(double a1)
{
  v2 = [objc_opt_self() secondarySystemBackgroundColor];
  result = UIBackgroundConfiguration.backgroundColor.setter();
  if (a1 > 0.0)
  {

    return UIBackgroundConfiguration.cornerRadius.setter();
  }

  return result;
}

void UIView.doc_configureWithStandardPlatter(cornerRadius:)(double a1)
{
  v3 = [objc_opt_self() secondarySystemBackgroundColor];
  [v1 setBackgroundColor_];

  if (a1 > 0.0)
  {

    [v1 _setCornerRadius_];
  }
}

Swift::Void __swiftcall UIView.doc_configureWithNoPlatter()()
{
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor_];
}

void static DOCFileRenamingSupport._renameDocumentIfNotRateLimited(atURL:newName:hostIdentifier:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void), uint64_t a7)
{
  v47 = a6;
  v48 = a7;
  v41 = a1;
  v42 = a5;
  v40 = a4;
  aBlock[7] = *MEMORY[0x277D85DE8];
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v43 = *(v13 - 8);
  v44 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS.QoSClass();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = objc_opt_self();
  v23 = MEMORY[0x24C1FAD20](a2, a3);
  aBlock[0] = 0;
  v24 = [v22 _validateFileName_error_];

  v25 = aBlock[0];
  if (v24)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    (*(v18 + 104))(v21, *MEMORY[0x277D851B8], v17);
    v26 = v25;
    v27 = static OS_dispatch_queue.global(qos:)();
    (*(v18 + 8))(v21, v17);
    v28 = swift_allocObject();
    v30 = v41;
    v29 = v42;
    v31 = v47;
    v32 = v48;
    v28[2] = v41;
    v28[3] = v31;
    v28[4] = v32;
    v28[5] = a2;
    v33 = v40;
    v28[6] = a3;
    v28[7] = v33;
    v28[8] = v29;
    aBlock[4] = partial apply for closure #1 in static DOCFileRenamingSupport._renameDocumentIfNotRateLimited(atURL:newName:hostIdentifier:completion:);
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_28;
    v34 = _Block_copy(aBlock);
    v35 = v30;

    static DispatchQoS.unspecified.getter();
    v49 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v36 = v46;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v16, v12, v34);
    _Block_release(v34);

    (*(v45 + 8))(v12, v36);
    (*(v43 + 8))(v16, v44);
  }

  else
  {
    v37 = aBlock[0];
    v38 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v39 = v38;
    v47(0, v38);
  }
}

void closure #1 in static DOCFileRenamingSupport._renameDocumentIfNotRateLimited(atURL:newName:hostIdentifier:completion:)(void *a1, void (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v50 = a4;
  v51 = a7;
  v49 = a6;
  v52 = a2;
  v53 = a3;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v49 - v16;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
  v18 = [a1 url];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v10 + 56))(v17, 0, 1, v9);
  v19 = static FINode.docNode(from:)(v17);
  outlined destroy of CharacterSet?(v17, &_s10Foundation3URLVSgMd);
  if (v19)
  {
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    v21 = objc_opt_self();
    v22 = v19;

    v23 = [v21 shared];
    v24 = objc_allocWithZone(type metadata accessor for DOCRenameOperation());
    v25 = v50;
    v26 = specialized DOCRenameOperation.init(node:newName:shouldDonateAppIntents:undoManager:)(v22, v50, a5, 1, 0, v23, v24);

    v27 = swift_allocObject();
    v28 = v52;
    v29 = v53;
    v27[2] = v20;
    v27[3] = v28;
    v27[4] = v29;
    v30 = MEMORY[0x277D85000];
    v31 = *((*MEMORY[0x277D85000] & *v26) + 0x190);

    v31(partial apply for closure #1 in closure #1 in static DOCFileRenamingSupport._renameDocumentIfNotRateLimited(atURL:newName:hostIdentifier:completion:), v27);
    v32 = swift_allocObject();
    v33 = v49;
    v32[2] = v20;
    v32[3] = v33;
    v32[4] = v51;
    v32[5] = v25;
    v32[6] = a5;
    v32[7] = v22;
    v34 = *((*v30 & *v26) + 0x178);
    v35 = v22;

    v36 = v34(partial apply for closure #2 in closure #1 in static DOCFileRenamingSupport._renameDocumentIfNotRateLimited(atURL:newName:hostIdentifier:completion:), v32);
    (*((*v30 & *v26) + 0x1B8))(v36);
  }

  else
  {
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.Rename);
    v38 = a1;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v54 = v42;
      *v41 = 136315138;
      v43 = [v38 url];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      (*(v10 + 8))(v13, v9);
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v54);

      *(v41 + 4) = v47;
      _os_log_impl(&dword_2493AC000, v39, v40, "[Rename] failed to fetch a node for URL: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x24C1FE850](v42, -1, -1);
      MEMORY[0x24C1FE850](v41, -1, -1);
    }

    v48 = v52;
    v26 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
    v48(0, v26);
  }
}

void closure #1 in closure #1 in static DOCFileRenamingSupport._renameDocumentIfNotRateLimited(atURL:newName:hostIdentifier:completion:)(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void, void *), uint64_t a5)
{
  swift_beginAccess();
  v9 = *(a3 + 16);
  if (v9)
  {
    v10 = v9;
    a4(0, v9);
  }

  else if (a2)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a4;
    *(v11 + 24) = a5;
    aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in static DOCFileRenamingSupport._renameDocumentIfNotRateLimited(atURL:newName:hostIdentifier:completion:);
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_78;
    v12 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [a2 fetchURL_];
    _Block_release(v12);
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
    a4(0, v13);
  }
}

void closure #1 in closure #1 in closure #1 in static DOCFileRenamingSupport._renameDocumentIfNotRateLimited(atURL:newName:hostIdentifier:completion:)(uint64_t a1, void *a2, void (*a3)(id, id))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v24[-v8];
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v24[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v24[-v17];
  outlined init with copy of URL?(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    (*(v11 + 32))(v18, v9, v10);
    if (!a2)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPSandboxingURLWrapper);
      (*(v11 + 16))(v14, v18, v10);
      v22 = @nonobjc FPSandboxingURLWrapper.__allocating_init(url:readonly:)(v14, 0);
      v23 = v22;
      a3(v22, 0);

      (*(v11 + 8))(v18, v10);
      return;
    }

    (*(v11 + 8))(v18, v10);
    goto LABEL_6;
  }

  outlined destroy of CharacterSet?(v9, &_s10Foundation3URLVSgMd);
  if (a2)
  {
LABEL_6:
    v19 = a2;
    goto LABEL_7;
  }

  v19 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
LABEL_7:
  v20 = a2;
  v21 = v19;
  a3(0, v19);
}

id closure #2 in closure #1 in static DOCFileRenamingSupport._renameDocumentIfNotRateLimited(atURL:newName:hostIdentifier:completion:)(int a1, id a2, id a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  if (a2)
  {
    v57 = a7;
    v13 = [a2 error];
  }

  else
  {
    v13 = a3;
    if (!a3)
    {
      v15 = 0;
      goto LABEL_30;
    }

    v57 = a7;
    v14 = a3;
  }

  v15 = _convertErrorToNSError(_:)();

  v16 = v15;
  v17 = [v16 domain];
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
      goto LABEL_13;
    }
  }

  if ([v16 code] == -1001)
  {
LABEL_18:

LABEL_19:
    v58[0] = 0xD000000000000032;
    v58[1] = 0x8000000249BD45F0;
    v58[2] = 0;
    v58[3] = 0;
    v58[4] = a5;
    v58[5] = a6;
    v59 = 1;
    v30 = one-time initialization token for shared;

    if (v30 != -1)
    {
      swift_once();
    }

    specialized DOCAnalyticsManager.sendEvent(_:)(v58, static DOCAnalyticsManager.shared);
    outlined destroy of DOCAnalyticsAPIAbuseEvent(v58);
    v31 = swift_allocObject();
    v31[2] = v57;
    v31[3] = a8;
    v31[4] = a9;

    v32 = a9;
    DOCRunInMainThreadSync(_:)();

    v33 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:0];
    swift_beginAccess();
    v34 = *(a4 + 16);
    *(a4 + 16) = v33;

    v35 = objc_allocWithZone(MEMORY[0x277D04718]);
    v36 = v33;
    v37 = _convertErrorToNSError(_:)();

    v38 = [v35 initWithResolution:5 error:v37];
    goto LABEL_38;
  }

LABEL_13:
  v24 = [v16 domain];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
  {

    goto LABEL_17;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {
LABEL_17:
    if ([v16 code] == 516)
    {
      goto LABEL_18;
    }
  }

  v39 = [v16 domain];
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  if (v40 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v42 == v43)
  {
  }

  else
  {
    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v44 & 1) == 0)
    {

      goto LABEL_30;
    }
  }

  v45 = [v16 code];

  if (v45 == -48)
  {
    goto LABEL_19;
  }

LABEL_30:
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, static Logger.Rename);
  v47 = v15;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v50 = 138412290;
    *(v50 + 4) = v47;
    *v51 = v15;
    v52 = v47;
    _os_log_impl(&dword_2493AC000, v48, v49, "[Rename] Rename API failed with error: %@", v50, 0xCu);
    outlined destroy of CharacterSet?(v51, &_sSo8NSObjectCSgMd);
    MEMORY[0x24C1FE850](v51, -1, -1);
    MEMORY[0x24C1FE850](v50, -1, -1);
  }

  swift_beginAccess();
  v53 = *(a4 + 16);
  *(a4 + 16) = v15;
  v16 = v47;

  if (v15)
  {
    v54 = v16;
    v37 = _convertErrorToNSError(_:)();
  }

  else
  {
    v37 = 0;
  }

  v38 = [objc_allocWithZone(MEMORY[0x277D04718]) initWithResolution:5 error:v37];
LABEL_38:
  v55 = v38;

  return v55;
}

id closure #1 in closure #2 in closure #1 in static DOCFileRenamingSupport._renameDocumentIfNotRateLimited(atURL:newName:hostIdentifier:completion:)(uint64_t a1, uint64_t a2, void *a3)
{
  result = _DocumentManagerBundle();
  if (result)
  {
    v7 = result;
    v24._object = 0x8000000249BD46F0;
    v8._object = 0x8000000249BD46B0;
    v8._countAndFlagsBits = 0x100000000000003ALL;
    v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v9.value._object = 0xEB00000000656C62;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    v24._countAndFlagsBits = 0xD000000000000050;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_249B9A480;
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v11 + 32) = a1;
    *(v11 + 40) = a2;

    v12 = String.init(format:_:)();
    v14 = v13;

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v15 = static DOCSystemAlert.shared;

    result = _DocumentManagerBundle();
    if (result)
    {
      v16 = result;
      v25._object = 0xE200000000000000;
      v17._countAndFlagsBits = 19279;
      v17._object = 0xE200000000000000;
      v18.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v18.value._object = 0xEB00000000656C62;
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      v25._countAndFlagsBits = 19279;
      v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v18, v16, v19, v25);

      v21 = swift_allocObject();
      *(v21 + 16) = a3;
      v22 = *(*v15 + 144);
      v23 = a3;
      v22(v12, v14, 0, 0xE000000000000000, v20._countAndFlagsBits, v20._object, 0, 0, partial apply for closure #1 in closure #1 in closure #2 in closure #1 in static DOCFileRenamingSupport._renameDocumentIfNotRateLimited(atURL:newName:hostIdentifier:completion:), v21);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void closure #1 in closure #1 in closure #2 in closure #1 in static DOCFileRenamingSupport._renameDocumentIfNotRateLimited(atURL:newName:hostIdentifier:completion:)(uint64_t a1, void *a2)
{
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.Rename);
  v4 = a2;
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v4;
    *v7 = v4;
    v8 = v4;
    _os_log_impl(&dword_2493AC000, oslog, v5, "Rename: cancelled due to name conflict: %@", v6, 0xCu);
    outlined destroy of CharacterSet?(v7, &_sSo8NSObjectCSgMd);
    MEMORY[0x24C1FE850](v7, -1, -1);
    MEMORY[0x24C1FE850](v6, -1, -1);
  }
}

uint64_t @objc static DOCFileRenamingSupport._renameDocumentIfNotRateLimited(atURL:newName:hostIdentifier:completion:)(int a1, int a2, void *a3, int a4, int a5, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  _Block_copy(v7);
  v14 = a3;
  specialized static DOCFileRenamingSupport._renameDocumentIfNotRateLimited(atURL:newName:hostIdentifier:completion:)(v14, v8, v10, v11, v13, v7);
  _Block_release(v7);
  _Block_release(v7);
}

uint64_t static DOCFileRenamingSupport._renameDocument(atURL:newName:hostIdentifier:roleIdentifier:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void, id), uint64_t a9)
{
  v17 = swift_allocObject();
  v17[2] = v9;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  v17[6] = a4;
  v17[7] = a5;
  v17[8] = a8;
  v17[9] = a9;
  v21 = 0;
  v18 = a1;

  specialized static DOCFileRenamingSupport._performRateLimitedCall(apiIdentifier:hostIdentifier:roleIdentifier:blockToRun:completionIfBlockToRunDoesNotRun:)(&v21, a4, a5, a6, a7, partial apply for closure #1 in static DOCFileRenamingSupport._renameDocument(atURL:newName:hostIdentifier:roleIdentifier:completion:), v17, a8);
}

void closure #1 in static DOCFileRenamingSupport._renameDocument(atURL:newName:hostIdentifier:roleIdentifier:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void, void), uint64_t a8)
{
  v48 = a7;
  v49 = a8;
  v42 = a2;
  v43 = a6;
  v41 = a5;
  aBlock[7] = *MEMORY[0x277D85DE8];
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v10 - 8);
  v47 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v44 = *(v14 - 8);
  v45 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS.QoSClass();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = objc_opt_self();
  v24 = MEMORY[0x24C1FAD20](a3, a4);
  aBlock[0] = 0;
  v25 = [v23 _validateFileName_error_];

  v26 = aBlock[0];
  if (v25)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    (*(v19 + 104))(v22, *MEMORY[0x277D851B8], v18);
    v27 = v26;
    v28 = static OS_dispatch_queue.global(qos:)();
    (*(v19 + 8))(v22, v18);
    v29 = swift_allocObject();
    v31 = v42;
    v30 = v43;
    v32 = v48;
    v33 = v49;
    v29[2] = v42;
    v29[3] = v32;
    v29[4] = v33;
    v29[5] = a3;
    v34 = v41;
    v29[6] = a4;
    v29[7] = v34;
    v29[8] = v30;
    aBlock[4] = closure #1 in static DOCFileRenamingSupport._renameDocumentIfNotRateLimited(atURL:newName:hostIdentifier:completion:)partial apply;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_57_0;
    v35 = _Block_copy(aBlock);
    v36 = v31;

    static DispatchQoS.unspecified.getter();
    v50 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v37 = v47;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v17, v13, v35);
    _Block_release(v35);

    (*(v46 + 8))(v13, v37);
    (*(v44 + 8))(v17, v45);
  }

  else
  {
    v38 = aBlock[0];
    v39 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v40 = v39;
    v48(0, v39);
  }
}

uint64_t @objc static DOCFileRenamingSupport._renameDocument(atURL:newName:hostIdentifier:roleIdentifier:completion:)(int a1, int a2, void *a3, int a4, int a5, uint64_t a6, void *aBlock)
{
  v9 = _Block_copy(aBlock);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (a6)
  {
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a6 = v17;
  }

  else
  {
    v16 = 0;
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v9;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v20 = swift_allocObject();
  v20[2] = ObjCClassMetadata;
  v20[3] = a3;
  v20[4] = v10;
  v20[5] = v12;
  v20[6] = v13;
  v20[7] = v15;
  v20[8] = thunk for @escaping @callee_unowned @convention(block) (@unowned FPSandboxingURLWrapper?, @unowned NSError?) -> ()partial apply;
  v20[9] = v18;
  v23 = 0;
  v21 = a3;

  specialized static DOCFileRenamingSupport._performRateLimitedCall(apiIdentifier:hostIdentifier:roleIdentifier:blockToRun:completionIfBlockToRunDoesNotRun:)(&v23, v13, v15, v16, a6, closure #1 in static DOCFileRenamingSupport._renameDocument(atURL:newName:hostIdentifier:roleIdentifier:completion:)partial apply, v20, thunk for @escaping @callee_unowned @convention(block) (@unowned FPSandboxingURLWrapper?, @unowned NSError?) -> ()partial apply);
}

void static DOCFileRenamingSupport._importDocument(atURL:hostIdentifier:roleIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, id), uint64_t a7)
{
  v13 = 2;
  v8 = a2;
  v9 = a3;
  v10 = a6;
  v11 = a7;
  v12 = a1;
  specialized static DOCFileRenamingSupport._performRateLimitedCall(apiIdentifier:hostIdentifier:roleIdentifier:blockToRun:completionIfBlockToRunDoesNotRun:)(&v13, a2, a3, a4, a5, partial apply for blockToRunIfNotRateLimited #1 () in static DOCFileRenamingSupport._importDocument(atURL:hostIdentifier:roleIdentifier:completion:), v7, a6);
}

void blockToRunIfNotRateLimited #1 () in static DOCFileRenamingSupport._importDocument(atURL:hostIdentifier:roleIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v11 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(a1, a2, 0);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = MEMORY[0x24C1FAD20](a1, a2);
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  v15[6] = v13;
  v15[7] = a5;
  aBlock[4] = partial apply for closure #1 in blockToRunIfNotRateLimited #1 () in static DOCFileRenamingSupport._importDocument(atURL:hostIdentifier:roleIdentifier:completion:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_32;
  v16 = _Block_copy(aBlock);

  v17 = a5;

  [v12 defaultSourceForBundleIdentifier:v14 completionBlock:v16];

  _Block_release(v16);
}

void closure #1 in blockToRunIfNotRateLimited #1 () in static DOCFileRenamingSupport._importDocument(atURL:hostIdentifier:roleIdentifier:completion:)(void *a1, void *a2, uint64_t a3, unint64_t a4, void (*a5)(void, void), uint64_t a6, void *a7, void *a8)
{
  if (a1)
  {
    v12 = a1;
    v13 = [v12 identifier];
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
        v20 = [v12 identifier];
LABEL_15:
        v35 = v20;
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPProviderDomain);
        v36 = v35;
        v37 = specialized @nonobjc FPProviderDomain.__allocating_init(id:cachePolicy:)(v36, 3);

        v38 = objc_opt_self();
        v39 = v37;
        v40 = [v38 defaultManager];
        v41 = swift_allocObject();
        v41[2] = a7;
        v41[3] = v39;
        v41[4] = a5;
        v41[5] = a6;
        v41[6] = a8;
        aBlock[4] = partial apply for closure #1 in closure #1 in blockToRunIfNotRateLimited #1 () in static DOCFileRenamingSupport._importDocument(atURL:hostIdentifier:roleIdentifier:completion:);
        aBlock[5] = v41;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
        aBlock[3] = &block_descriptor_38_0;
        v42 = _Block_copy(aBlock);
        v43 = v39;

        v44 = a8;
        v45 = a7;

        [v40 fetchDefaultLocationForApplicationRecord:v45 defaultProviderDomain:v43 completionHandler:v42];

        _Block_release(v42);
        return;
      }
    }

    v20 = *MEMORY[0x277D060F0];
    goto LABEL_15;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.UI);

  v25 = a2;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = a5;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v29 = 136315394;
    *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, aBlock);
    *(v29 + 12) = 2112;
    if (a2)
    {
      v32 = a2;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      v34 = v33;
    }

    else
    {
      v33 = 0;
      v34 = 0;
    }

    *(v29 + 14) = v33;
    *v30 = v34;
    _os_log_impl(&dword_2493AC000, v26, v27, "Failed to get default source to import document for bundle identifier %s: %@", v29, 0x16u);
    outlined destroy of CharacterSet?(v30, &_sSo8NSObjectCSgMd);
    MEMORY[0x24C1FE850](v30, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x24C1FE850](v31, -1, -1);
    MEMORY[0x24C1FE850](v29, -1, -1);

    a5 = v28;
  }

  else
  {
  }

  a5(0, a2);
}

void closure #1 in closure #1 in blockToRunIfNotRateLimited #1 () in static DOCFileRenamingSupport._importDocument(atURL:hostIdentifier:roleIdentifier:completion:)(void *a1, void *a2, void *a3, void *a4, void (*a5)(void, void), uint64_t a6, void *a7)
{
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd);
    v19 = *(v15 + 80);
    v51 = a5;
    v20 = (v19 + 32) & ~v19;
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_249B9A480;
    v22 = a1;
    v23 = [a7 url];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v15 + 32))(v21 + v20, v18, v14);
    v24 = objc_allocWithZone(MEMORY[0x277CC6398]);
    v25 = v22;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v27 = [v24 initWithURLs:isa destinationFolder:v25];

    v28 = v27;
    [v28 setShouldBounceOnCollision_];
    [v28 setLastUsageUpdatePolicy_];

    v29 = swift_allocObject();
    v30 = v51;
    v29[2] = a7;
    v29[3] = v30;
    v29[4] = a6;
    v29[5] = v28;
    v29[6] = v25;
    aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in blockToRunIfNotRateLimited #1 () in static DOCFileRenamingSupport._importDocument(atURL:hostIdentifier:roleIdentifier:completion:);
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_44_1;
    v31 = _Block_copy(aBlock);
    v32 = v28;
    v33 = v25;
    v34 = v32;
    v35 = a7;

    [v34 setActionCompletionBlock_];
    _Block_release(v31);

    v36 = [objc_opt_self() defaultManager];
    [v36 scheduleAction_];
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.UI);
    v38 = a3;
    v39 = a4;
    v40 = a2;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412802;
      *(v43 + 4) = v38;
      *(v43 + 12) = 2112;
      *(v43 + 14) = v39;
      *v44 = v38;
      v44[1] = v39;
      *(v43 + 22) = 2112;
      v45 = v38;
      v46 = v39;
      if (a2)
      {
        v47 = a2;
        v48 = _swift_stdlib_bridgeErrorToNSError();
        v49 = v48;
      }

      else
      {
        v48 = 0;
        v49 = 0;
      }

      *(v43 + 24) = v48;
      v44[2] = v49;
      _os_log_impl(&dword_2493AC000, v41, v42, "Failed to get FPItem representing default location for %@ in %@: %@", v43, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v44, -1, -1);
      MEMORY[0x24C1FE850](v43, -1, -1);
    }

    a5(0, a2);
  }
}

void closure #1 in closure #1 in closure #1 in blockToRunIfNotRateLimited #1 () in static DOCFileRenamingSupport._importDocument(atURL:hostIdentifier:roleIdentifier:completion:)(void *a1, void *a2, void (*a3)(void, void), uint64_t a4, void *a5, void *a6)
{
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v62 = v13;
    v18 = a1;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.UI);
    v20 = a1;
    v21 = a2;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v61 = a3;
      v25 = v24;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v60[1] = a4;
      v28 = v27;
      *&aBlock = v27;
      *v25 = 136315394;
      v29 = [v21 url];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      (*(v62 + 8))(v17, v12);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &aBlock);

      *(v25 + 4) = v33;
      *(v25 + 12) = 2112;
      v34 = a1;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v35;
      *v26 = v35;
      _os_log_impl(&dword_2493AC000, v22, v23, "Failed to import document at %s: %@", v25, 0x16u);
      outlined destroy of CharacterSet?(v26, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v26, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x24C1FE850](v28, -1, -1);
      v36 = v25;
      a3 = v61;
      MEMORY[0x24C1FE850](v36, -1, -1);
    }

    v37 = a1;
    a3(0, a1);
  }

  else
  {
    v38 = [a5 transferResults];
    if (v38)
    {
      v39 = v38;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
      v40 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      [a5 setActionCompletionBlock_];
      if (v40)
      {
        specialized Collection.first.getter(v40, &v63);

        if (*(&v64 + 1))
        {
          aBlock = v63;
          v68 = v64;
          v41 = v66;
          v69 = v65;
          v70 = v66;
          outlined destroy of AnyHashable(&aBlock);
          v42 = [objc_opt_self() defaultManager];
          v43 = swift_allocObject();
          v43[2] = a6;
          v43[3] = a3;
          v43[4] = a4;
          v69 = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in blockToRunIfNotRateLimited #1 () in static DOCFileRenamingSupport._importDocument(atURL:hostIdentifier:roleIdentifier:completion:);
          v70 = v43;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          *&v68 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
          *(&v68 + 1) = &block_descriptor_50_0;
          v44 = _Block_copy(&aBlock);
          v45 = a6;

          [v42 fetchURLForItem:v41 completionHandler:v44];
          _Block_release(v44);

          return;
        }

        outlined destroy of CharacterSet?(&v63, &_ss11AnyHashableV3key_So6FPItemC5valuetSgMd);
      }
    }

    else
    {
      [a5 setActionCompletionBlock_];
    }

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Logger.UI);
    v47 = a2;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v61 = a3;
      v52 = v51;
      *&aBlock = v51;
      *v50 = 136315138;
      v53 = [v47 url];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      (*(v13 + 8))(v17, v12);
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, &aBlock);

      *(v50 + 4) = v57;
      _os_log_impl(&dword_2493AC000, v48, v49, "Failed to get a transfer result for importing %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      v58 = v52;
      a3 = v61;
      MEMORY[0x24C1FE850](v58, -1, -1);
      MEMORY[0x24C1FE850](v50, -1, -1);
    }

    v59 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
    a3(0, v59);
  }
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in blockToRunIfNotRateLimited #1 () in static DOCFileRenamingSupport._importDocument(atURL:hostIdentifier:roleIdentifier:completion:)(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(id, void *), uint64_t a5)
{
  v38[5] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v38 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  MEMORY[0x28223BE20](v16, v17);
  v19 = v38 - v18;
  MEMORY[0x28223BE20](v20, v21);
  v23 = v38 - v22;
  outlined init with copy of URL?(a1, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of CharacterSet?(v12, &_s10Foundation3URLVSgMd);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.UI);
    v25 = a3;
    v26 = a2;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412546;
      *(v29 + 4) = v25;
      *v30 = v25;
      *(v29 + 12) = 2112;
      v31 = v25;
      if (a2)
      {
        v32 = a2;
        v33 = _swift_stdlib_bridgeErrorToNSError();
        v34 = v33;
      }

      else
      {
        v33 = 0;
        v34 = 0;
      }

      *(v29 + 14) = v33;
      v30[1] = v34;
      _os_log_impl(&dword_2493AC000, v27, v28, "Failed to get URL for FPItem %@: %@", v29, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v30, -1, -1);
      MEMORY[0x24C1FE850](v29, -1, -1);
    }

    return a4(0, a2);
  }

  else
  {
    (*(v14 + 32))(v23, v12, v13);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPSandboxingURLWrapper);
    (*(v14 + 16))(v19, v23, v13);
    v35 = @nonobjc FPSandboxingURLWrapper.__allocating_init(url:readonly:)(v19, 0);
    v36 = v35;
    a4(v35, 0);

    return (*(v14 + 8))(v23, v13);
  }
}

uint64_t @objc static DOCFileRenamingSupport._importDocument(atURL:hostIdentifier:roleIdentifier:completion:)(int a1, int a2, void *a3, int a4, uint64_t a5, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (a5)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a5 = v13;
  }

  else
  {
    v12 = 0;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  v20 = 2;
  MEMORY[0x28223BE20](v14, v15);
  v19[2] = v9;
  v19[3] = v11;
  v19[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned FPSandboxingURLWrapper?, @unowned NSError?) -> ();
  v19[5] = v16;
  v19[6] = a3;
  v17 = a3;
  specialized static DOCFileRenamingSupport._performRateLimitedCall(apiIdentifier:hostIdentifier:roleIdentifier:blockToRun:completionIfBlockToRunDoesNotRun:)(&v20, v9, v11, v12, a5, blockToRunIfNotRateLimited #1 () in static DOCFileRenamingSupport._importDocument(atURL:hostIdentifier:roleIdentifier:completion:)partial apply, v19, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned FPSandboxingURLWrapper?, @unowned NSError?) -> ());
}

uint64_t specialized static DOCFileRenamingSupport._renameDocumentIfNotRateLimited(atURL:newName:hostIdentifier:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void, void, void))
{
  v47 = a5;
  v44 = a4;
  v45 = a1;
  aBlock[7] = *MEMORY[0x277D85DE8];
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v46 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v48 = *(v12 - 8);
  v49 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v43 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS.QoSClass();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a6;
  v21 = objc_opt_self();
  _Block_copy(a6);
  v22 = a2;
  v23 = a2;
  v24 = a3;
  v25 = MEMORY[0x24C1FAD20](v23, a3);
  aBlock[0] = 0;
  v26 = [v21 _validateFileName_error_];

  v27 = aBlock[0];
  if (v26)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    (*(v16 + 104))(v19, *MEMORY[0x277D851B8], v15);
    v28 = v27;
    v29 = static OS_dispatch_queue.global(qos:)();
    (*(v16 + 8))(v19, v15);
    v30 = swift_allocObject();
    v31 = v44;
    v32 = v45;
    v30[2] = v45;
    v30[3] = thunk for @escaping @callee_unowned @convention(block) (@unowned FPSandboxingURLWrapper?, @unowned NSError?) -> ()partial apply;
    v30[4] = v20;
    v30[5] = v22;
    v30[6] = v24;
    v30[7] = v31;
    v30[8] = v47;
    aBlock[4] = closure #1 in static DOCFileRenamingSupport._renameDocumentIfNotRateLimited(atURL:newName:hostIdentifier:completion:)partial apply;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_26;
    v33 = _Block_copy(aBlock);
    v34 = v32;

    v35 = v43;
    static DispatchQoS.unspecified.getter();
    v52 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v36 = v46;
    v37 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v35, v36, v33);
    _Block_release(v33);

    (*(v50 + 8))(v36, v37);
    (*(v48 + 8))(v35, v49);
  }

  else
  {
    v38 = aBlock[0];
    v39 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v40 = v39;
    v41 = _convertErrorToNSError(_:)();
    (a6)[2](a6, 0, v41);
  }
}

void specialized static DOCFileRenamingSupport._performRateLimitedCall(apiIdentifier:hostIdentifier:roleIdentifier:blockToRun:completionIfBlockToRunDoesNotRun:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void, id))
{
  v14 = *a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  LOBYTE(v39[0]) = 0;
  v15 = *(*static DOCAPIRateLimiter.shared + 88);

  v16 = v15(v39, a2, a3, a4, a5, a6, a7);

  if (v16)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.UI);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v39[0] = v21;
      *v20 = 136315394;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000071, 0x8000000249BD4630, v39);
      *(v20 + 12) = 2080;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v39);

      *(v20 + 14) = v24;
      _os_log_impl(&dword_2493AC000, v18, v19, "%s %s function ran without rate-limiting.", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v21, -1, -1);
      MEMORY[0x24C1FE850](v20, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.UI);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v39[0] = v29;
      *v28 = 136315394;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000071, 0x8000000249BD4630, v39);
      *(v28 + 12) = 2080;
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v39);

      *(v28 + 14) = v32;
      _os_log_impl(&dword_2493AC000, v26, v27, "%s %s function is rate-limited. Returning error.", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v29, -1, -1);
      MEMORY[0x24C1FE850](v28, -1, -1);
    }

    v33 = 0xD000000000000032;
    v34 = "ics.createDocumentSPIEvent";
    if (v14 == 1)
    {
      v35 = "ics.importDocumentSPIEvent";
    }

    else
    {
      v35 = "v56@0:8@16@24@32@40@?48";
    }

    if (v14)
    {
      v33 = 0xD00000000000003ALL;
      v34 = v35;
    }

    v39[0] = v33;
    v39[1] = v34 | 0x8000000000000000;
    v39[2] = 0;
    v39[3] = 0;
    v39[4] = a2;
    v39[5] = a3;
    v40 = 0;
    v36 = one-time initialization token for shared;

    if (v36 != -1)
    {
      swift_once();
    }

    specialized DOCAnalyticsManager.sendEvent(_:)(v39, static DOCAnalyticsManager.shared);

    v37 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:0];
    a8(0, v37);
  }
}

uint64_t objectdestroy_2Tm_1()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t objectdestroyTm_2()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t a1, unsigned __int8 a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = a1 + 32;
    v5 = a2;
    while (1)
    {
      v7 = *(v4 + v3);
      if ((DOCItemSortMode.isDateMode.getter() & 1) == 0)
      {
        goto LABEL_4;
      }

      if (v7 > 4)
      {
        if (v7 <= 6)
        {
          if (v7 == 5)
          {
            v9 = 1684957547;
          }

          else
          {
            v9 = 0x7942646572616873;
          }

          if (v7 == 5)
          {
            v8 = 0xE400000000000000;
          }

          else
          {
            v8 = 0xE800000000000000;
          }

          if (v5 <= 4)
          {
LABEL_34:
            if (v5 <= 1)
            {
              v11 = 0x646573557473616CLL;
              v10 = 0xEC00000065746144;
              if (v5)
              {
                goto LABEL_58;
              }

              v10 = 0x8000000249BC5DF0;
              if (v9 != 0xD000000000000010)
              {
                goto LABEL_3;
              }
            }

            else
            {
              v10 = 0xE400000000000000;
              if (v5 == 2)
              {
                if (v9 != 1701667182)
                {
                  goto LABEL_3;
                }
              }

              else if (v5 == 3)
              {
                if (v9 != 1936154996)
                {
                  goto LABEL_3;
                }
              }

              else if (v9 != 1702521203)
              {
                goto LABEL_3;
              }
            }

            goto LABEL_59;
          }
        }

        else if (v7 == 7)
        {
          v9 = 0x6E6F697461657263;
          v8 = 0xEC00000065746144;
          if (v5 <= 4)
          {
            goto LABEL_34;
          }
        }

        else if (v7 == 8)
        {
          v9 = 0x6564644165746164;
          v8 = 0xE900000000000064;
          if (v5 <= 4)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v9 = 0x745364756F6C6369;
          v8 = 0xEC00000073757461;
          if (v5 <= 4)
          {
            goto LABEL_34;
          }
        }
      }

      else
      {
        if (v7 <= 1)
        {
          v9 = 0x646573557473616CLL;
          v8 = 0xEC00000065746144;
          if (!v7)
          {
            v9 = 0xD000000000000010;
            v8 = 0x8000000249BC5DF0;
            if (v5 <= 4)
            {
              goto LABEL_34;
            }

            goto LABEL_45;
          }
        }

        else
        {
          v8 = 0xE400000000000000;
          if (v7 == 2)
          {
            v9 = 1701667182;
            if (v5 <= 4)
            {
              goto LABEL_34;
            }

            goto LABEL_45;
          }

          if (v7 == 3)
          {
            v9 = 1936154996;
            if (v5 <= 4)
            {
              goto LABEL_34;
            }

            goto LABEL_45;
          }

          v9 = 1702521203;
        }

        if (v5 <= 4)
        {
          goto LABEL_34;
        }
      }

LABEL_45:
      if (v5 <= 6)
      {
        if (v5 == 5)
        {
          v10 = 0xE400000000000000;
          if (v9 != 1684957547)
          {
            goto LABEL_3;
          }
        }

        else
        {
          v10 = 0xE800000000000000;
          if (v9 != 0x7942646572616873)
          {
LABEL_3:
            v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v6 & 1) == 0)
            {
              return v3;
            }

            goto LABEL_4;
          }
        }

        goto LABEL_59;
      }

      if (v5 == 7)
      {
        v10 = 0xEC00000065746144;
        if (v9 != 0x6E6F697461657263)
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v5 != 8)
        {
          v11 = 0x745364756F6C6369;
          v10 = 0xEC00000073757461;
LABEL_58:
          if (v9 != v11)
          {
            goto LABEL_3;
          }

          goto LABEL_59;
        }

        v10 = 0xE900000000000064;
        if (v9 != 0x6564644165746164)
        {
          goto LABEL_3;
        }
      }

LABEL_59:
      if (v8 != v10)
      {
        goto LABEL_3;
      }

LABEL_4:
      if (v2 == ++v3)
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t DOCUIAction.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DOCUIAction.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void __swiftcall DOCUIAction.init(identifier:name:predicate:)(DocumentManagerExecutables::DOCUIAction *__return_ptr retstr, Swift::String identifier, Swift::String name, NSPredicate *predicate)
{
  retstr->identifier = identifier;
  retstr->name = name;
  retstr->predicate.super.isa = predicate;
}

uint64_t static DOCFileProviderSource.webDAVProviderSource.getter()
{
  swift_beginAccess();
  v0 = static DOCFileProviderSource.webDAVProviderSource;
  v1 = static DOCFileProviderSource.webDAVProviderSource;
  return v0;
}

void static DOCFileProviderSource.webDAVProviderSource.setter(uint64_t a1)
{
  swift_beginAccess();
  v2 = static DOCFileProviderSource.webDAVProviderSource;
  static DOCFileProviderSource.webDAVProviderSource = a1;
}

void key path setter for static DOCFileProviderSource.webDAVProviderSource : DOCFileProviderSource.Type(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = static DOCFileProviderSource.webDAVProviderSource;
  static DOCFileProviderSource.webDAVProviderSource = v1;
  v3 = v1;
}

void *DOCFileProviderSource.providerDomain.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
  v2 = v1;
  return v1;
}

uint64_t key path getter for DOCFileProviderSource.dropAction : DOCFileProviderSource@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE0))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed UIDropSession, @unowned UIDropOperation, @guaranteed UIViewController) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOCFileProviderSource.dropAction : DOCFileProviderSource(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UIDropSession, @in_guaranteed UIDropOperation, @in_guaranteed UIViewController) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_dropAction);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v8);
}

uint64_t DOCFileProviderSource.dropAction.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_dropAction);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*v1);
  return v2;
}

uint64_t DOCFileProviderSource.isProviderDomainEnabled.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_isProviderDomainEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCFileProviderSource.isProviderDomainEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_isProviderDomainEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id DOCFileProviderSource.actionManager.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___actionManager;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___actionManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___actionManager);
  }

  else
  {
    v4 = closure #1 in DOCFileProviderSource.actionManager.getter(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void DOCFileProviderSource.actionManager.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___actionManager);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___actionManager) = a1;
}

id closure #1 in DOCFileProviderSource.actionManager.getter(uint64_t a1)
{
  if ((*(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type + 8) & 1) != 0 || (v1 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain)) == 0)
  {
    v12 = objc_allocWithZone(DOCActionManager);

    return [v12 init];
  }

  else
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v1;
    v3 = type metadata accessor for DOCLazyActionManager();
    v4 = objc_allocWithZone(v3);
    *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCLazyActionManager____lazy_storage____lazyActions] = 0;
    v5 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCLazyActionManager_actionsClosure];
    *v5 = partial apply for closure #1 in closure #1 in DOCFileProviderSource.actionManager.getter;
    v5[1] = v2;
    v6 = objc_opt_self();
    v7 = v1;

    v8 = [v6 defaultManager];
    v9 = [objc_opt_self() defaultPermission];
    v13.receiver = v4;
    v13.super_class = v3;
    v10 = objc_msgSendSuper2(&v13, sel_initWithItemManager_managedPermission_, v8, v9);

    return v10;
  }
}

uint64_t closure #1 in closure #1 in DOCFileProviderSource.actionManager.getter(void *a1)
{
  v1 = a1;
  v2 = [objc_opt_self() actionsForProviderDomain_];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPUIAction);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    goto LABEL_18;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    while (1)
    {
      v32 = MEMORY[0x277D84F90];
      result = specialized ContiguousArray.reserveCapacity(_:)();
      if (v4 < 0)
      {
        break;
      }

      v6 = 0;
      v28 = v3 & 0xC000000000000001;
      v23 = v3 & 0xFFFFFFFFFFFFFF8;
      v24 = v31;
      v26 = v3;
      v27 = v1;
      v25 = v4;
      while (1)
      {
        v1 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v28)
        {
          v15 = MEMORY[0x24C1FC540](v6, v3);
        }

        else
        {
          if (v6 >= *(v23 + 16))
          {
            goto LABEL_17;
          }

          v15 = *(v3 + 8 * v6 + 32);
        }

        v16 = v15;
        v29 = [v15 isNonUIAction];
        v17 = [v16 identifier];
        if (!v17)
        {
          v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = MEMORY[0x24C1FAD20](v18);
        }

        v19 = [v16 uiActionProviderIdentifier];
        v20 = [v27 providerID];
        v21 = [v16 displayName];
        if (!v21)
        {
          v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = MEMORY[0x24C1FAD20](v22);
        }

        v7 = [v16 predicate];
        v8 = [v16 displayInline];
        v9 = [objc_allocWithZone(MEMORY[0x277D05F30]) initWithIdentifier:v17 uiActionProviderIdentifier:v19 fileProviderIdentifier:v20 displayName:v21 predicate:v7 displayInline:v8];

        v10 = [objc_allocWithZone(MEMORY[0x277D05F28]) initWithUIActionDescriptor:v9 providerDomain:v27];
        [v10 setAvailability_];
        v11 = swift_allocObject();
        *(v11 + 16) = v10;
        *(v11 + 24) = v29;
        *(v11 + 32) = v27;
        v31[2] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in DOCFileProviderSource.actionManager.getter;
        v31[3] = v11;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v31[0] = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
        v31[1] = &block_descriptor_305;
        v12 = _Block_copy(aBlock);
        v13 = v10;
        v14 = v27;

        [v13 setUnresolvedHandler_];

        _Block_release(v12);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v6;
        v3 = v26;
        if (v1 == v25)
        {

          return v32;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      v4 = __CocoaSet.count.getter();
      if (!v4)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    return MEMORY[0x277D84F90];
  }

  return result;
}

void closure #1 in closure #1 in closure #1 in closure #1 in DOCFileProviderSource.actionManager.getter(unint64_t a1, uint64_t a2, void *a3, char a4, void *a5)
{
  outlined init with copy of Any(a2, aBlock);
  type metadata accessor for DOCActionContext();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v9 = aBlock[6];
  v10 = [a3 uiActionProviderIdentifier];
  if (!v10)
  {

    return;
  }

  v11 = v10;
  All = specialized Array<A>.fpfs_syncFetchAllFPItems()(a1);
  if (!All)
  {
LABEL_29:

    return;
  }

  v13 = All;
  if (All >> 62)
  {
    v14 = __CocoaSet.count.getter();
    if (v14)
    {
      goto LABEL_6;
    }

LABEL_17:

    goto LABEL_18;
  }

  v14 = *((All & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_17;
  }

LABEL_6:
  v43 = a3;
  v44 = v11;
  aBlock[0] = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14 & ~(v14 >> 63), 0);
  if (v14 < 0)
  {
    __break(1u);
    return;
  }

  v15 = 0;
  v16 = aBlock[0];
  do
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x24C1FC540](v15, v13);
    }

    else
    {
      v17 = *(v13 + 8 * v15 + 32);
    }

    v18 = v17;
    v19 = [v17 itemIdentifier];

    aBlock[0] = v16;
    v21 = *(v16 + 16);
    v20 = *(v16 + 24);
    if (v21 >= v20 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
      v16 = aBlock[0];
    }

    ++v15;
    *(v16 + 16) = v21 + 1;
    *(v16 + 8 * v21 + 32) = v19;
  }

  while (v14 != v15);

  v11 = v44;
  a3 = v43;
LABEL_18:
  v22 = [a3 identifier];
  v23 = v22;
  if ((a4 & 1) == 0)
  {
    if (!v22)
    {
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = MEMORY[0x24C1FAD20](v35);
    }

    v36 = [a3 localizedTitle];
    if (!v36)
    {
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = MEMORY[0x24C1FAD20](v37);
    }

    v38 = objc_opt_self();
    type metadata accessor for NSFileProviderItemIdentifier(0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v40 = [a5 identifier];
    v41 = [v38 actionControllerForActionIdentifier:v23 actionTitle:v36 items:isa providerIdentifier:v11 domainIdentifier:v40];

    v42 = *&v9[OBJC_IVAR___DOCActionContext_presentingViewController];
    [v42 presentViewController:v41 animated:1 completion:0];

    goto LABEL_29;
  }

  if (!v22)
  {
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = MEMORY[0x24C1FAD20](v24);
  }

  v25 = [a3 localizedTitle];
  if (!v25)
  {
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = MEMORY[0x24C1FAD20](v26);
  }

  v27 = objc_opt_self();
  type metadata accessor for NSFileProviderItemIdentifier(0);
  v28 = Array._bridgeToObjectiveC()().super.isa;

  v29 = [a5 identifier];
  v30 = [v27 actionControllerForActionIdentifier:v23 actionTitle:v25 items:v28 providerIdentifier:v11 domainIdentifier:v29];

  v31 = swift_allocObject();
  *(v31 + 16) = a3;
  aBlock[4] = partial apply for closure #2 in closure #1 in closure #1 in closure #1 in closure #1 in DOCFileProviderSource.actionManager.getter;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_311;
  v32 = _Block_copy(aBlock);
  v33 = a3;

  v34 = [v30 performActionWithCompletionHandler_];

  _Block_release(v32);
}

uint64_t closure #2 in closure #1 in closure #1 in closure #1 in closure #1 in DOCFileProviderSource.actionManager.getter(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_249B9FA70;
    v5 = [a2 identifier];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    *(v4 + 56) = MEMORY[0x277D837D0];
    *(v4 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v4 + 32) = v6;
    *(v4 + 40) = v8;
    *(v4 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError);
    *(v4 + 104) = lazy protocol witness table accessor for type NSError and conformance NSObject();
    *(v4 + 72) = v3;
    v9 = v3;
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.info.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_249B9A480;
    v11 = [a2 identifier];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v10 + 32) = v12;
    *(v10 + 40) = v14;
    os_log(_:dso:log:type:_:)();
  }
}

void (*DOCFileProviderSource.actionManager.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DOCFileProviderSource.actionManager.getter();
  return DOCFileProviderSource.actionManager.modify;
}

void DOCFileProviderSource.actionManager.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___actionManager);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___actionManager) = v2;
}

uint64_t DOCFileProviderSource.containingApplicationIdentifier.getter()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___containingApplicationIdentifier);
  v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___containingApplicationIdentifier);
  v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___containingApplicationIdentifier + 8);
  v5 = v3;
  if (v4 == 1)
  {
    v5 = closure #1 in DOCFileProviderSource.containingApplicationIdentifier.getter(v1);
    v6 = *v2;
    v7 = v2[1];
    *v2 = v5;
    v2[1] = v8;

    outlined consume of String??(v6, v7);
  }

  outlined copy of String??(v3, v4);
  return v5;
}

uint64_t closure #1 in DOCFileProviderSource.containingApplicationIdentifier.getter(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v29[-v9];
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v29[-v13];
  v15 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  v17 = [v16 extensionBundleURL];
  if (!v17)
  {
    goto LABEL_13;
  }

  v18 = v17;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v3 + 32))(v14, v10, v2);
  (*(v3 + 16))(v6, v14, v2);
  v19 = objc_allocWithZone(MEMORY[0x277CC1E50]);
  v20 = @nonobjc LSApplicationExtensionRecord.init(url:)(v6);
  if (!v20)
  {
    (*(v3 + 8))(v14, v2);
LABEL_13:

    return 0;
  }

  v21 = v20;
  v22 = [v20 containingBundleRecord];
  if (!v22)
  {
    (*(v3 + 8))(v14, v2);
LABEL_12:

    goto LABEL_13;
  }

  v23 = v22;
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (v24)
  {
    v25 = [v24 bundleIdentifier];
    if (v25)
    {
      v26 = v25;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v3 + 8))(v14, v2);
      return v27;
    }

    (*(v3 + 8))(v14, v2);

    goto LABEL_12;
  }

  (*(v3 + 8))(v14, v2);
  return 0;
}

uint64_t DOCFileProviderSource.containingApplicationIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___containingApplicationIdentifier);
  v4 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___containingApplicationIdentifier);
  v5 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___containingApplicationIdentifier + 8);
  *v3 = a1;
  v3[1] = a2;
  return outlined consume of String??(v4, v5);
}

uint64_t (*DOCFileProviderSource.containingApplicationIdentifier.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = DOCFileProviderSource.containingApplicationIdentifier.getter();
  a1[1] = v3;
  return DOCFileProviderSource.containingApplicationIdentifier.modify;
}

uint64_t DOCFileProviderSource.containingApplicationIdentifier.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = (a1[2] + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___containingApplicationIdentifier);
  v4 = *v3;
  v5 = v3[1];
  *v3 = *a1;
  v3[1] = v2;
  if (a2)
  {

    outlined consume of String??(v4, v5);
  }

  else
  {

    return outlined consume of String??(v4, v5);
  }
}

uint64_t DOCFileProviderSource._displayName.getter()
{
  v1 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage____displayName];
  if (*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage____displayName + 8])
  {
    v2 = *v1;
  }

  else
  {
    v2 = closure #1 in DOCFileProviderSource._displayName.getter(v0);
    *v1 = v2;
    v1[1] = v3;
  }

  return v2;
}

uint64_t closure #1 in DOCFileProviderSource._displayName.getter(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
  if (!v1)
  {
    v5 = [a1 identifier];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
    {

      goto LABEL_10;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {

LABEL_10:
      v12 = [objc_opt_self() recentDocumentsLocation];
      v13 = [v12 displayName];
      goto LABEL_11;
    }

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
    if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
    {

      goto LABEL_22;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {

LABEL_22:
      v12 = [objc_opt_self() sharedItemsLocation];
      v13 = [v12 displayName];
      goto LABEL_11;
    }

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
    if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
    {
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v25 & 1) == 0)
      {
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;
        if (v26 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v28 == v29)
        {
        }

        else
        {
          v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v30 & 1) == 0)
          {
            return 0;
          }
        }

        v12 = [objc_opt_self() searchLocation];
        v13 = [v12 displayName];
LABEL_11:
        v3 = v13;

        if (v3)
        {
          v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          goto LABEL_13;
        }

        return 0;
      }
    }

    v12 = [objc_opt_self() trashedItemsLocation];
    v13 = [v12 displayName];
    goto LABEL_11;
  }

  v2 = v1;
  v3 = DOCLocalizedDisplayName();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_13:
  return v4;
}

uint64_t DOCFileProviderSource._providerName.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage____providerName);
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage____providerName + 8))
  {
    v2 = *v1;
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
    if (v3)
    {
      v4 = v3;
      v5 = DOCLocalizedProviderOnlyDisplayName();
      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;
    }

    else
    {
      v2 = 0;
      v7 = 0xE000000000000000;
    }

    *v1 = v2;
    v1[1] = v7;
  }

  return v2;
}

uint64_t DOCFileProviderSource._domainName.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage____domainName);
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage____domainName);
  v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage____domainName + 8);
  v4 = v2;
  if (v3 == 1)
  {
    v5 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
    if (v5)
    {
      v6 = v5;
      v7 = [v6 domainDisplayName];
      if (v7)
      {
        v8 = v7;
        v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v9;

LABEL_7:
        v11 = *v1;
        v12 = v1[1];
        *v1 = v4;
        v1[1] = v10;

        outlined consume of String??(v11, v12);
        goto LABEL_8;
      }
    }

    v4 = 0;
    v10 = 0;
    goto LABEL_7;
  }

LABEL_8:
  outlined copy of String??(v2, v3);
  return v4;
}

void canOpen #1 (node:) in static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:)(void *a1, void *a2, uint64_t a3, SEL *a4)
{
  v34 = a3;
  v43 = a1;
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v35 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v34 - v12;
  v16 = MEMORY[0x28223BE20](v14, v15);
  v37 = &v34 - v17;
  v18 = [a2 *a4];
  v40 = v6;
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = 0;
  v38 = *(v19 + 16);
  v39 = v19;
  v36 = v7;
  v41 = v7 + 8;
  v42 = v7 + 16;
  do
  {
    if (v38 == v20)
    {

      return;
    }

    if (v20 >= *(v39 + 16))
    {
      __break(1u);
      return;
    }

    v21 = v36;
    v22 = v37;
    v23 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v24 = *(v36 + 72);
    v25 = *(v36 + 16);
    v26 = v40;
    v25(v37, v39 + v23 + v24 * v20++, v40);
    v27 = [v43 contentType];
    static UTType._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v27) = UTType.conforms(to:)();
    v28 = *(v21 + 8);
    v28(v13, v26);
    v28(v22, v26);
  }

  while ((v27 & 1) == 0);

  v29 = v35;
  v30 = v34 + v23;
  v31 = *(v34 + 16) + 1;
  v32 = v40;
  do
  {
    if (!--v31)
    {
      break;
    }

    v39 = v30 + v24;
    (v25)(v29);
    v33 = [v43 contentType];
    static UTType._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v33) = UTType.conforms(to:)();
    v28(v13, v32);
    v28(v29, v32);
    v30 = v39;
  }

  while ((v33 & 1) == 0);
}

uint64_t closure #1 in static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  outlined init with copy of Any(a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  if (swift_dynamicCast())
  {
    swift_getObjectType();
    if (([v13 isTrashed] & 1) == 0 && (DOCNode.isSharedServerNode.getter() & 1) == 0)
    {
      canOpen #1 (node:) in static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:)(v13, a3, a4, &selRef_recentDocumentsContentTypes);
      if (v8 & 1) != 0 && ([a5 canHostAppPerformAction:2 targetNode:v13])
      {
        v9 = [v13 cachedDomain];
        if (!v9)
        {
          swift_unknownObjectRelease();
          return 1;
        }

        v10 = v9;
        if ([v9 isEnabled])
        {
          v11 = [v10 needsAuthentication];

          swift_unknownObjectRelease();
          return v11 ^ 1;
        }
      }
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t closure #2 in static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  outlined init with copy of Any(a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  if (swift_dynamicCast())
  {
    swift_getObjectType();
    if (([v13 isTrashed] & 1) == 0 && (objc_msgSend(v13, sel_isTopLevelSharedItem) & 1) != 0 && (DOCNode.isSharedServerNode.getter() & 1) == 0)
    {
      if ([v13 isFolder] & 1) != 0 || (canOpen #1 (node:) in static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:)(v13, a3, a4, &selRef_recentDocumentsContentTypes), (v8))
      {
        if ([a5 canHostAppPerformAction:2 targetNode:v13])
        {
          v9 = [v13 cachedDomain];
          if (!v9)
          {
            swift_unknownObjectRelease();
            return 1;
          }

          v10 = v9;
          if ([v9 isEnabled])
          {
            v11 = [v10 needsAuthentication];

            swift_unknownObjectRelease();
            return v11 ^ 1;
          }
        }
      }
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

id closure #3 in static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:)(uint64_t a1, uint64_t a2, void *a3)
{
  outlined init with copy of Any(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  if (swift_dynamicCast())
  {
    swift_getObjectType();
    if ([v6 isTrashed] && (DOCNode.isSharedServerNode.getter() & 1) == 0)
    {
      v5 = [a3 canHostAppPerformAction:2 targetNode:v6];
      swift_unknownObjectRelease();
      return v5;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

id closure #4 in static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:)(uint64_t a1, uint64_t a2, void *a3)
{
  outlined init with copy of Any(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  if (swift_dynamicCast())
  {
    swift_getObjectType();
    if (([v6 isTrashed] & 1) == 0 && (DOCNode.isSharedServerNode.getter() & 1) == 0)
    {
      v5 = [a3 canHostAppPerformAction:2 targetNode:v6];
      swift_unknownObjectRelease();
      return v5;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t closure #5 in static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  outlined init with copy of Any(a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  if (swift_dynamicCast())
  {
    if ([v13 isFolder] & 1) != 0 || (canOpen #1 (node:) in static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:)(v13, a3, a4, &selRef_documentContentTypes), (v8))
    {
      if ([a5 canHostAppPerformAction:2 targetNode:v13])
      {
        v9 = [v13 cachedDomain];
        if (!v9)
        {
          swift_unknownObjectRelease();
          return 1;
        }

        v10 = v9;
        if ([v9 isEnabled])
        {
          v11 = [v10 needsAuthentication];

          swift_unknownObjectRelease();
          return v11 ^ 1;
        }
      }
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

id closure #6 in static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  outlined init with copy of Any(a1, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!a3)
  {
    goto LABEL_21;
  }

  v10 = [a3 tagIdentifiers];
  if (!v10)
  {
    goto LABEL_21;
  }

  v11 = v10;
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  ObjectType = swift_getObjectType();
  v14 = [v39 tags];
  if (v14)
  {
    v15 = v14;
    v35 = ObjectType;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPTag);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v36 = v39;
    v33 = a5;
    v34 = a6;
    v32 = a4;
    v38 = v12;
    if (v16 >> 62)
    {
LABEL_29:
      v37 = v16 & 0xFFFFFFFFFFFFFF8;
      v17 = __CocoaSet.count.getter();
    }

    else
    {
      v37 = v16 & 0xFFFFFFFFFFFFFF8;
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = 0;
    do
    {
      if (v17 == v18)
      {

        [v36 isTrashed];
        goto LABEL_21;
      }

      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x24C1FC540](v18, v16);
      }

      else
      {
        if (v18 >= *(v37 + 16))
        {
          goto LABEL_28;
        }

        v19 = *(v16 + 8 * v18 + 32);
      }

      v20 = v19;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v21 = [v19 label];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v40[0] = v22;
      v40[1] = v24;
      MEMORY[0x28223BE20](v25, v26);
      v31[2] = v40;
      LOBYTE(v21) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v31, v38);

      ++v18;
    }

    while ((v21 & 1) == 0);

    v27 = v36;
    if (([v36 isTrashed] & 1) == 0 && (DOCNode.isSharedServerNode.getter() & 1) == 0)
    {
      if ([v27 isFolder] & 1) != 0 || (canOpen #1 (node:) in static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:)(v27, v32, v33, &selRef_recentDocumentsContentTypes), (v29))
      {
        v30 = [v34 canHostAppPerformAction:2 targetNode:v27];
        swift_unknownObjectRelease();
        return v30;
      }
    }

LABEL_21:
    swift_unknownObjectRelease();
    return 0;
  }

  swift_unknownObjectRelease();

  return 0;
}

uint64_t closure #7 in static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:)(uint64_t a1, Class isa, void *a3, void *a4)
{
  outlined init with copy of Any(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 1;
  }

  if (a3)
  {
    swift_unknownObjectRetain();
    if (isa)
    {
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    v8 = [a3 evaluateWithObject:v11 substitutionVariables:isa];
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 1;
  }

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9 && [v9 isTrashed] || (v8 & 1) == 0)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  else
  {
    v10 = [a4 canHostAppPerformAction:2 targetNode:v11];
    swift_unknownObjectRelease();
    return v10;
  }
}

uint64_t DOCFileProviderSource.requiresCustomEnumerationProperties.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_requiresCustomEnumerationProperties;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCFileProviderSource.requiresCustomEnumerationProperties.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_requiresCustomEnumerationProperties;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCFileProviderSource.defaultSorting.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_defaultSorting;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t DOCFileProviderSource.groupingEnabledByDefault.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_groupingEnabledByDefault;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCFileProviderSource.defaultGroupingMode.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_defaultGroupingMode;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t DOCFileProviderSource.groupingModes.getter()
{
  v29 = *((*MEMORY[0x277D85000] & *v0) + 0x1D0);
  v1 = v29();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      v6 = *v3++;
      v5 = v6;
      if (v6 > 4 || v5 != 2)
      {
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v7)
        {
          goto LABEL_4;
        }

        if (v5 != 3)
        {
          v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v8)
          {
            goto LABEL_4;
          }

          if (v5 <= 8)
          {
            v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v9 & 1) == 0)
            {
              v30 = v4;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1);
                v4 = v30;
              }

              v11 = *(v4 + 2);
              v10 = *(v4 + 3);
              if (v11 >= v10 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
                v4 = v30;
              }

              *(v4 + 2) = v11 + 1;
              v4[v11 + 32] = v5;
            }

            goto LABEL_4;
          }
        }
      }

LABEL_4:
      if (!--v2)
      {
        goto LABEL_18;
      }
    }
  }

  v4 = MEMORY[0x277D84F90];
LABEL_18:

  v30 = v4;
  v13 = (v29)(v12);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = 0;
    while (1)
    {
      if (v15 >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_56;
      }

      v16 = *(v13 + v15 + 32);
      if (v16 <= 4 && *(v13 + v15 + 32) <= 2u && v16 != 1 && v16 != 2)
      {
        break;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        goto LABEL_39;
      }

      if (v16 < 4 && v16 != 2 && v16 != 3)
      {
        break;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_39;
      }

      if (v16 > 6 && v16 != 8 && v16 != 9)
      {
        break;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v19)
      {
        goto LABEL_39;
      }

      if (v16 > 6 && v16 != 9)
      {
        break;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        goto LABEL_39;
      }

      if (v14 == ++v15)
      {
        goto LABEL_38;
      }
    }

LABEL_39:

    result = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v30, v16);
    v4 = v30;
    v22 = *(v30 + 2);
    if (result > v22)
    {
      __break(1u);
    }

    else
    {
      v23 = result;
      if ((result & 0x8000000000000000) == 0)
      {
        v24 = result;
        if (!__OFADD__(v22, result - v22))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v24 > *(v4 + 3) >> 1)
          {
            if (v22 <= v24)
            {
              v26 = v24;
            }

            else
            {
              v26 = v22;
            }

            v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v26, 1, v4);
            v30 = v4;
          }

          specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v23, v22, 0);
          goto LABEL_49;
        }

LABEL_59:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_59;
  }

LABEL_38:

LABEL_49:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_56:
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
  }

  v28 = *(v4 + 2);
  v27 = *(v4 + 3);
  if (v28 >= v27 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v4);
  }

  *(v4 + 2) = v28 + 1;
  v4[v28 + 32] = 6;
  return v4;
}

uint64_t DOCFileProviderSource.defaultGroupingBehavior.getter@<X0>(char *a1@<X8>)
{
  v3 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x1E8))();
  if (result)
  {
    result = (*((*v3 & *v1) + 0x200))(&v6);
    v5 = v6;
  }

  else
  {
    v5 = 10;
  }

  *a1 = v5;
  return result;
}

uint64_t key path setter for DOCFileProviderSource.sortingModes : DOCFileProviderSource(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

uint64_t DOCFileProviderSource.errorCount.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_errorCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCFileProviderSource.errorCount.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_errorCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *DOCFileProviderSource.type.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type);
  outlined copy of DOCFileProviderSourceType(v1);
  return v1;
}

uint64_t DOCFileProviderSource.supportsImportInDefaultSaveLocation.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_supportsImportInDefaultSaveLocation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCFileProviderSource.supportsImportInDefaultSaveLocation.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_supportsImportInDefaultSaveLocation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCFileProviderSource.description.getter()
{
  v1 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
  if (v1)
  {
    v12 = 0;
    v13 = 0xE000000000000000;
    v11.receiver = v0;
    v11.super_class = type metadata accessor for DOCFileProviderSource();
    v2 = v1;
    v3 = objc_msgSendSuper2(&v11, sel_description);
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    MEMORY[0x24C1FAEA0](v4, v6);

    MEMORY[0x24C1FAEA0](0x3A6469203ALL, 0xE500000000000000);
    v10 = [v2 identifier];
    type metadata accessor for FPProviderDomainID(0);
    _print_unlocked<A, B>(_:_:)();

    return v12;
  }

  else
  {
    v14.receiver = v0;
    v14.super_class = type metadata accessor for DOCFileProviderSource();
    v8 = objc_msgSendSuper2(&v14, sel_description);
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v9;
  }
}

void *DOCFileProviderSource.init(_:)(void *a1)
{
  v2 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_dropAction];
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_isProviderDomainEnabled;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_isProviderDomainEnabled] = 2;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___actionManager] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___containingApplicationIdentifier] = xmmword_249BA5030;
  v4 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage____displayName];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage____providerName];
  *v5 = 0;
  v5[1] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage____domainName] = xmmword_249BA5030;
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_isEjectable;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_isEjectable] = 0;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_requiresCustomEnumerationProperties] = 0;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_defaultSorting] = 2;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_sortingModes] = &outlined read-only object #0 of DOCFileProviderSource.init(_:);
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_groupingEnabledByDefault] = 0;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_defaultGroupingMode] = 5;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_availableDisplayModes] = &outlined read-only object #1 of DOCFileProviderSource.init(_:);
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_errorCount] = 0;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_supportsImportInDefaultSaveLocation] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain] = a1;
  v7 = a1;
  v8 = [v7 providerID];
  v9 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type];
  *v9 = v8;
  v9[8] = 0;
  v10 = 0;
  if ([v7 isEnabled])
  {
    v10 = [v7 isHidden] ^ 1;
  }

  swift_beginAccess();
  v1[v3] = v10;
  v11 = [v7 canDisconnect];
  swift_beginAccess();
  v1[v6] = v11;
  v31.receiver = v1;
  v31.super_class = type metadata accessor for DOCFileProviderSource();
  v12 = objc_msgSendSuper2(&v31, sel_init);
  v13 = [v7 topLevelBundleIdentifier];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  (*((*MEMORY[0x277D85000] & *v12) + 0x140))(v14, v16);
  v17 = [v7 identifier];
  [v12 setIdentifier_];

  isa = [v7 supportedFileTypes];
  if (!isa)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v19 = [objc_opt_self() doc:isa contentTypesForIdentifiers:?];

  type metadata accessor for UTType();
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v20 + 16))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd);
    *(swift_allocObject() + 16) = xmmword_249B9FA70;
    static UTType.content.getter();
    static UTType.item.getter();
  }

  v21 = Array._bridgeToObjectiveC()().super.isa;

  [v12 setDocumentContentTypes_];

  v22 = [objc_opt_self() outlineView];
  v23 = [v22 isEnabled];

  if (v23 && [v7 isiCloudDriveProvider])
  {
    v24 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_sortingModes;
    swift_beginAccess();
    v25 = *(v12 + v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v12 + v24) = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
      *(v12 + v24) = v25;
    }

    v28 = *(v25 + 2);
    v27 = *(v25 + 3);
    if (v28 >= v27 >> 1)
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v25);
    }

    *(v25 + 2) = v28 + 1;
    v25[v28 + 32] = 9;
    *(v12 + v24) = v25;
    swift_endAccess();
    v29 = v7;
    v7 = v12;
  }

  else
  {
    v29 = v12;
  }

  return v12;
}

id DOCFileProviderSource.enumerationIdentifier.getter()
{
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type + 8) == 1)
  {
    v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type);

    return v1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id DOCFileProviderSource.init(enumerationIdentifier:defaultIdentifier:)(void *a1, void *a2)
{
  v5 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_dropAction];
  *v5 = 0;
  v5[1] = 0;
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_isProviderDomainEnabled] = 2;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___actionManager] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___containingApplicationIdentifier] = xmmword_249BA5030;
  v6 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage____displayName];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage____providerName];
  *v7 = 0;
  v7[1] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage____domainName] = xmmword_249BA5030;
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_isEjectable] = 0;
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_requiresCustomEnumerationProperties] = 0;
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_defaultSorting] = 2;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_sortingModes] = &outlined read-only object #0 of DOCFileProviderSource.init(enumerationIdentifier:defaultIdentifier:);
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_groupingEnabledByDefault] = 0;
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_defaultGroupingMode] = 5;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_availableDisplayModes] = &outlined read-only object #1 of DOCFileProviderSource.init(enumerationIdentifier:defaultIdentifier:);
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_errorCount] = 0;
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_supportsImportInDefaultSaveLocation] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain] = 0;
  v8 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type];
  *v8 = a1;
  v8[8] = 1;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for DOCFileProviderSource();
  v9 = a1;
  v10 = objc_msgSendSuper2(&v13, sel_init);
  [v10 setIdentifier_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_249B9FA70;
  static UTType.content.getter();
  static UTType.item.getter();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setDocumentContentTypes_];

  return v10;
}

uint64_t DOCFileProviderSource.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, &v26);
  v3 = v27;
  if (v27)
  {
    v4 = __swift_project_boxed_opaque_existential_1(&v26, v27);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x28223BE20](v4, v4);
    v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(&v26);
  }

  else
  {
    v9 = 0;
  }

  v10 = type metadata accessor for DOCFileProviderSource();
  v25.receiver = v1;
  v25.super_class = v10;
  v11 = objc_msgSendSuper2(&v25, sel_isEqual_, v9);
  swift_unknownObjectRelease();
  if (!v11)
  {
    goto LABEL_17;
  }

  outlined init with copy of Any?(a1, &v26);
  if (!v27)
  {
    outlined destroy of Any?(&v26);
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v20 = 0;
    return v20 & 1;
  }

  v12 = MEMORY[0x277D85000];
  v13 = (*((*MEMORY[0x277D85000] & *v1) + 0xF8))();
  result = outlined init with copy of Any?(a1, &v23);
  if (v24)
  {
    outlined init with take of Any(&v23, &v26);
    v15 = swift_dynamicCast();
    v16 = v22;
    v17 = (*((*v12 & *v22) + 0xF8))(v15);

    v18 = v13 == 2;
    if (v17 != 2)
    {
      v18 = 0;
    }

    v19 = v13 == 2 || v17 == 2;
    v20 = v17 ^ v13 ^ 1;
    if (v19)
    {
      v20 = v18;
    }

    return v20 & 1;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall DOCFileProviderSource.eject(alertPresenting:)(UIViewController *alertPresenting)
{
  v2 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v2;
    v9 = [v3 defaultManager];
    FPItemManager.disconnect(domain:alertPresenting:)(v4);
  }

  else
  {
    _StringGuts.grow(_:)(61);
    MEMORY[0x24C1FAEA0](0xD00000000000003BLL, 0x8000000249BD4890);
    v5 = [v1 description];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    MEMORY[0x24C1FAEA0](v6, v8);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void *one-time initialization function for recentDocumentsSource()
{
  result = closure #1 in variable initialization expression of static DOCFileProviderSource.recentDocumentsSource();
  static DOCFileProviderSource.recentDocumentsSource = result;
  return result;
}

void *closure #1 in variable initialization expression of static DOCFileProviderSource.recentDocumentsSource()
{
  v0 = *MEMORY[0x277D060F8];
  v1 = objc_allocWithZone(type metadata accessor for DOCFileProviderSource());
  v2 = DOCFileProviderSource.init(enumerationIdentifier:defaultIdentifier:)(@"com.apple.DocumentManager.SpotlightFileProvider.recentDocuments", v0);
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_defaultSorting;
  swift_beginAccess();
  *(v2 + v3) = 1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_sortingModes;
  swift_beginAccess();
  *(v2 + v4) = &outlined read-only object #0 of closure #1 in variable initialization expression of static DOCFileProviderSource.recentDocumentsSource;

  v6 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0x1B8))(&v9, v5);
  LOBYTE(v0) = v9;
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_defaultGroupingMode;
  swift_beginAccess();
  *(v2 + v7) = v0;
  (*((*v6 & *v2) + 0x1A8))(1);
  (*((*v6 & *v2) + 0x260))(1);
  return v2;
}

void *one-time initialization function for sharedItemsSource()
{
  result = closure #1 in variable initialization expression of static DOCFileProviderSource.sharedItemsSource();
  static DOCFileProviderSource.sharedItemsSource = result;
  return result;
}

void *closure #1 in variable initialization expression of static DOCFileProviderSource.sharedItemsSource()
{
  v0 = *MEMORY[0x277D05DC0];
  v1 = objc_allocWithZone(type metadata accessor for DOCSharedDocumentsSource()) + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCSharedDocumentsSource____lazy_storage____displayName;
  *v1 = 0;
  v1[1] = 0;
  v2 = DOCFileProviderSource.init(enumerationIdentifier:defaultIdentifier:)(@"com.apple.DocumentManager.SpotlightFileProvider.sharedItems", v0);
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_defaultSorting;
  swift_beginAccess();
  v2[v3] = 1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_sortingModes;
  swift_beginAccess();
  *&v2[v4] = &outlined read-only object #0 of closure #1 in variable initialization expression of static DOCFileProviderSource.sharedItemsSource;
  v5 = v2;

  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_groupingEnabledByDefault;
  swift_beginAccess();
  *(v5 + v6) = 0;
  (*((*MEMORY[0x277D85000] & *v5) + 0x1A8))(1);

  return v5;
}

id DOCSharedDocumentsSource.__allocating_init(enumerationIdentifier:defaultIdentifier:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCSharedDocumentsSource____lazy_storage____displayName];
  *v6 = 0;
  *(v6 + 1) = 0;
  return DOCFileProviderSource.init(enumerationIdentifier:defaultIdentifier:)(a1, a2);
}

uint64_t *DOCFileProviderSource.sharedItemsSource.unsafeMutableAddressor()
{
  if (one-time initialization token for sharedItemsSource != -1)
  {
    swift_once();
  }

  return &static DOCFileProviderSource.sharedItemsSource;
}

uint64_t one-time initialization function for taggedItemsSource()
{
  v0 = *MEMORY[0x277D05DC8];
  v1 = objc_allocWithZone(type metadata accessor for DOCFileProviderSource());
  v2 = DOCFileProviderSource.init(enumerationIdentifier:defaultIdentifier:)(@"com.apple.DocumentManager.SpotlightFileProvider.taggedItems", v0);
  (*((*MEMORY[0x277D85000] & *v2) + 0x1A8))(1);
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_sortingModes;
  swift_beginAccess();
  *(v2 + v3) = &outlined read-only object #0 of closure #1 in variable initialization expression of static DOCFileProviderSource.taggedItemsSource;

  static DOCFileProviderSource.taggedItemsSource = v2;
  return result;
}

uint64_t *DOCFileProviderSource.taggedItemsSource.unsafeMutableAddressor()
{
  if (one-time initialization token for taggedItemsSource != -1)
  {
    swift_once();
  }

  return &static DOCFileProviderSource.taggedItemsSource;
}

void *one-time initialization function for searchSource()
{
  result = closure #1 in variable initialization expression of static DOCFileProviderSource.searchSource();
  static DOCFileProviderSource.searchSource = result;
  return result;
}

void *closure #1 in variable initialization expression of static DOCFileProviderSource.searchSource()
{
  v0 = *MEMORY[0x277D05DB8];
  v1 = objc_allocWithZone(type metadata accessor for DOCFileProviderSource());
  v2 = DOCFileProviderSource.init(enumerationIdentifier:defaultIdentifier:)(@"com.apple.DocumentManager.SpotlightFileProvider.search", v0);
  (*((*MEMORY[0x277D85000] & *v2) + 0x1A8))(1);
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_sortingModes;
  swift_beginAccess();
  *(v2 + v3) = &outlined read-only object #0 of closure #1 in variable initialization expression of static DOCFileProviderSource.searchSource;

  v4 = objc_opt_self();
  v5 = [v4 outlineView];
  v6 = [v5 isEnabled];

  if (v6 && (v7 = [v4 enableOldListToo], v8 = objc_msgSend(v7, sel_isEnabled), v7, (v8 & 1) == 0))
  {
    v9 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_availableDisplayModes;
    swift_beginAccess();
    v10 = &outlined read-only object #1 of closure #1 in variable initialization expression of static DOCFileProviderSource.searchSource;
  }

  else
  {
    v9 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_availableDisplayModes;
    swift_beginAccess();
    v10 = &outlined read-only object #2 of closure #1 in variable initialization expression of static DOCFileProviderSource.searchSource;
  }

  *(v2 + v9) = v10;

  return v2;
}

id DOCTrashedItemsSource.__allocating_init(enumerationIdentifier:defaultIdentifier:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCTrashedItemsSource____lazy_storage____displayName];
  *v6 = 0;
  *(v6 + 1) = 0;
  return DOCFileProviderSource.init(enumerationIdentifier:defaultIdentifier:)(a1, a2);
}

uint64_t closure #1 in static DOCFileProviderSource.createSpotlightSources()(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  swift_getObjectType();
  result = specialized static FPItem.sessionContainsDOCNode(_:)(a1, v5);
  if (result)
  {

    return specialized static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)(a1, a3);
  }

  return result;
}

void closure #1 in closure #1 in static DOCFileProviderSource.createSpotlightSources()(unint64_t a1, void *a2)
{
  v12 = MEMORY[0x277D84F90];
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_20:
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (v5 != v6)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C1FC540](v6, a1);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_19;
      }

      swift_unknownObjectRetain();
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    swift_getObjectType();
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

  v11 = [objc_opt_self() defaultManager];
  FPItemManager.trashOrDeleteItems(_:alertPresenting:userCancellationHandler:)(v7, a2, 0, 0);
}

void *static DOCFileProviderSource.createSource(from:with:)(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = specialized static DOCFileProviderSource.newSource(from:with:)(a1, a2, a3);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = (v4 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_dropAction);
  swift_beginAccess();
  v7 = *v6;
  *v6 = partial apply for closure #1 in static DOCFileProviderSource.createSource(from:with:);
  v6[1] = v5;
  v8 = a1;
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v7);
  return v4;
}

void closure #1 in static DOCFileProviderSource.createSource(from:with:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v38 = a4;
  v35 = a1;
  v36 = a3;
  v40 = type metadata accessor for DispatchTimeInterval();
  v4 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v5);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = type metadata accessor for DispatchTime();
  v8 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v34 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v37 = (v16 + 16);
  v17 = dispatch_semaphore_create(0);
  v18 = [objc_opt_self() defaultManager];
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = v17;
  aBlock[4] = partial apply for closure #1 in closure #1 in static DOCFileProviderSource.createSource(from:with:);
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed DOCNode?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_216_0;
  v20 = _Block_copy(aBlock);
  v41 = v16;

  v21 = v17;

  [v18 doc:v38 fetchRootNodeForProviderDomain:v20 completionHandler:?];
  _Block_release(v20);

  static DispatchTime.now()();
  *v7 = 1;
  v22 = v40;
  (*(v4 + 104))(v7, *MEMORY[0x277D85188], v40);
  MEMORY[0x24C1FAA90](v11, v7);
  (*(v4 + 8))(v7, v22);
  v23 = *(v8 + 8);
  v24 = v11;
  v25 = v39;
  v23(v24, v39);
  MEMORY[0x24C1FBB60](v15);
  v23(v15, v25);
  if ((static DispatchTimeoutResult.== infix(_:_:)() & 1) != 0 && (v26 = v37, swift_beginAccess(), (v27 = *v26) != 0))
  {
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    v29 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    v30 = v35;
    swift_getObjectType();
    swift_unknownObjectRetain_n();
    if (specialized static FPItem.sessionContainsDOCNode(_:)(v30, v29))
    {
      swift_unknownObjectRetain();

      specialized static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)(v30, v36, v29, v27, partial apply for closure #2 in closure #1 in static DOCFileProviderSource.createSource(from:with:), v28);

      swift_unknownObjectRelease_n();
    }

    else
    {
      v32 = [v30 items];
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem);
      v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      swift_getObjectType();

      specialized static FPItem.performExternalDrop(_:underItem:alertPresenting:completion:)(v33, v27, v36, partial apply for closure #2 in closure #1 in static DOCFileProviderSource.createSource(from:with:), v28);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_249B9A480;
    *(v31 + 56) = MEMORY[0x277D837D0];
    *(v31 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v31 + 32) = 0xD000000000000018;
    *(v31 + 40) = 0x8000000249BD4E00;
    os_log(_:dso:log:type:_:)();
  }
}

Swift::Int closure #1 in closure #1 in static DOCFileProviderSource.createSource(from:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a3 + 16) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return OS_dispatch_semaphore.signal()();
}

uint64_t closure #2 in closure #1 in static DOCFileProviderSource.createSource(from:with:)(uint64_t a1, void *a2)
{
  if (a1)
  {
    v4 = one-time initialization token for UI;

    if (v4 != -1)
    {
      swift_once();
    }

    static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_249BA08C0;
    v6 = MEMORY[0x277D837D0];
    *(v5 + 56) = MEMORY[0x277D837D0];
    v7 = lazy protocol witness table accessor for type String and conformance String();
    *(v5 + 64) = v7;
    *(v5 + 32) = 0xD000000000000018;
    *(v5 + 40) = 0x8000000249BD4E00;
    *(v5 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7DOCNode_pGMd);
    *(v5 + 104) = lazy protocol witness table accessor for type [DOCNode] and conformance [A]();
    *(v5 + 72) = a1;
    v8 = [a2 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    *(v5 + 136) = v6;
    *(v5 + 144) = v7;
    *(v5 + 112) = v9;
    *(v5 + 120) = v11;
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_249B9FA70;
    v13 = MEMORY[0x277D837D0];
    *(v12 + 56) = MEMORY[0x277D837D0];
    v14 = lazy protocol witness table accessor for type String and conformance String();
    *(v12 + 64) = v14;
    *(v12 + 32) = 0xD000000000000018;
    *(v12 + 40) = 0x8000000249BD4E00;
    v15 = [a2 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    *(v12 + 96) = v13;
    *(v12 + 104) = v14;
    *(v12 + 72) = v16;
    *(v12 + 80) = v18;
  }

  os_log(_:dso:log:type:_:)();
}

void closure #3 in closure #1 in static DOCFileProviderSource.createSource(from:with:)(unint64_t a1, void *a2, void *a3, void (*a4)(void), uint64_t a5)
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  swift_getObjectType();

  specialized static FPItem.performDrop(_:underItem:alertPresenting:completion:)(a1, a3, a2, a4, a5);
}

id DOCFileProviderSource.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t DOCFileProviderSource.isValid(for:)(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
  if (!v3)
  {
    goto LABEL_9;
  }

  if ([*&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain] isHiddenByProvider])
  {
    return 0;
  }

  v4 = v3;
  if ([a1 supportsRemovableFileProviders])
  {
  }

  else
  {
    if ([v4 canDisconnect])
    {
LABEL_25:

      return 0;
    }

    v27 = [v4 identifier];
    v28 = DOCProviderDomainIDIsExternalDevice();

    if (v28)
    {
      return 0;
    }
  }

  v4 = [v4 identifier];
  if (DOCProviderDomainIDIsExternalDevice())
  {
    v5 = [objc_opt_self() defaultPermission];
    v6 = [v5 isUSBAccessAllowed];

    if ((v6 & 1) == 0)
    {

      goto LABEL_25;
    }
  }

  v7 = DOCProviderDomainIDIsWebDAV();
  v8 = DOCProviderDomainIDIsSharedServerDomainID();

  v9 = [objc_opt_self() defaultPermission];
  v10 = [v9 isNetworkDriveAllowed];

  if (((v7 | v8) & 1) != 0 && !v10)
  {
    return 0;
  }

LABEL_9:
  v11 = [v1 identifier];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
  {

    return 0;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v17)
  {
    return 0;
  }

  if ([v1 isAvailableSystemWide])
  {
    goto LABEL_27;
  }

  if (!v3)
  {
    return 0;
  }

  v18 = [v3 topLevelBundleIdentifier];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = [a1 hostIdentifier];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  if (v19 == v23 && v21 == v25)
  {

    goto LABEL_27;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v29 & 1) == 0)
  {
    return 0;
  }

LABEL_27:
  if ([a1 forPickingDocuments])
  {
    return 1;
  }

  v30.receiver = v1;
  v30.super_class = type metadata accessor for DOCFileProviderSource();
  return objc_msgSendSuper2(&v30, sel_isValidForConfiguration_, a1);
}

void DOCFileProviderSource.updateProviderDomainEnabled(for:)(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
  if (v3)
  {
    v4 = v2;
    v7 = v3;
    v8 = [v7 isHidden];
    v9 = [objc_opt_self() protectedApps];
    v10 = [v9 isEnabled];

    if (v10 && [v7 isHidden])
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.UI);
      v45 = v4;
      v12 = v4;

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v47 = v44;
        *v15 = 136315906;
        *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x8000000249BD4CE0, &v47);
        *(v15 + 12) = 2080;
        v16 = v7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16FPProviderDomainCSgMd);
        v17 = String.init<A>(describing:)();
        v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v47);

        *(v15 + 14) = v19;
        *(v15 + 22) = 2080;
        v20 = [v16 topLevelBundleIdentifier];
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        v46[0] = v21;
        v46[1] = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
        v24 = String.init<A>(describing:)();
        v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v47);

        *(v15 + 24) = v26;
        *(v15 + 32) = 2080;
        *(v15 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v47);
        _os_log_impl(&dword_2493AC000, v13, v14, "[PROTECTED APPS] %s providerDomain: %s topLevelBundleIdentifier: %s hostIdentifier: %s", v15, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v44, -1, -1);
        MEMORY[0x24C1FE850](v15, -1, -1);
      }

      v4 = v45;
      if ([v7 owningApplicationIsHidden])
      {
        v27 = [v7 topLevelBundleIdentifier];
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        if (v28 == a1 && v30 == a2)
        {
          v31 = 1;
        }

        else
        {
          v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        if ([v7 owningApplicationIsHidden] && (v31 & 1) != 0 && (objc_msgSend(v7, sel_isHiddenByProvider) & 1) == 0 && (objc_msgSend(v7, sel_isHiddenByUser) & 1) == 0)
        {
          v33 = v7;
          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            v46[0] = v37;
            *v36 = 136315650;
            *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x8000000249BD4CE0, v46);
            *(v36 + 12) = 2080;
            v38 = v33;
            v39 = [v38 description];
            v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v42 = v41;

            v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, v46);

            *(v36 + 14) = v43;
            *(v36 + 22) = 1024;
            *(v36 + 24) = 0;
            _os_log_impl(&dword_2493AC000, v34, v35, "[PROTECTED APPS] %s providerDomain: %s shouldHide: %{BOOL}d", v36, 0x1Cu);
            swift_arrayDestroy();
            MEMORY[0x24C1FE850](v37, -1, -1);
            MEMORY[0x24C1FE850](v36, -1, -1);
          }

          v8 = 0;
          v4 = v45;
        }
      }

      else
      {
        [v7 owningApplicationIsHidden];
      }
    }

    v32 = [v7 isEnabled];
    (*((*MEMORY[0x277D85000] & *v4) + 0x100))(v32 & (v8 ^ 1));
  }
}

id DOCFileProviderSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t static DOCFileProviderSource.getMainICloudSourceIfEnabled(configuration:sourceObserver:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;

  [a2 startObservingSources];
  v9 = swift_allocObject();
  *(v9 + 16) = partial apply for closure #1 in static DOCFileProviderSource.getMainICloudSourceIfEnabled(configuration:sourceObserver:completion:);
  *(v9 + 24) = v8;
  v12[4] = partial apply for closure #1 in static DOCFileProviderSource.getICloudSourcesIfEnabled(configuration:sourceObserver:completion:);
  v12[5] = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [DOCDocumentSource], @guaranteed Error?) -> ();
  v12[3] = &block_descriptor_29;
  v10 = _Block_copy(v12);

  [a2 retrieveSourcesForConfiguration:a1 usingBlock:v10];
  _Block_release(v10);
}

void closure #1 in static DOCFileProviderSource.getMainICloudSourceIfEnabled(configuration:sourceObserver:completion:)(unint64_t a1, void (*a2)(void *))
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C1FC540](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
      if (v9)
      {
        v11 = v7;
        v10 = [v9 isMainiCloudDriveDomain];
        v7 = v11;
        if (v10)
        {
          goto LABEL_17;
        }
      }

      ++v5;
      if (v8 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:
  v7 = 0;
LABEL_17:
  v12 = v7;
  a2(v7);
}

void static DOCFileProviderSource.getICloudSourcesIfEnabled(configuration:sourceObserver:completion:)(uint64_t a1, id a2, uint64_t a3, uint64_t a4)
{
  [a2 startObservingSources];
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[4] = closure #1 in static DOCFileProviderSource.getICloudSourcesIfEnabled(configuration:sourceObserver:completion:)partial apply;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [DOCDocumentSource], @guaranteed Error?) -> ();
  v10[3] = &block_descriptor_17_0;
  v9 = _Block_copy(v10);

  [a2 retrieveSourcesForConfiguration:a1 usingBlock:v9];
  _Block_release(v9);
}

uint64_t closure #1 in static DOCFileProviderSource.getICloudSourcesIfEnabled(configuration:sourceObserver:completion:)(unint64_t a1, void *a2, void (*a3)(uint64_t), unint64_t a4)
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = (&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v12, *MEMORY[0x277D851F0], v8);
  v13 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
    goto LABEL_23;
  }

  if (one-time initialization token for UI != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.UI);
    v15 = a2;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v35 = v19;
      *v18 = 136315138;
      if (a2)
      {
        swift_getErrorValue();
        v20 = Error.localizedDescription.getter();
        v22 = v21;
      }

      else
      {
        v22 = 0xE300000000000000;
        v20 = 7104878;
      }

      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v35);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_2493AC000, v16, v17, "[Default Source UI]: Got list of sources with error: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x24C1FE850](v19, -1, -1);
      MEMORY[0x24C1FE850](v18, -1, -1);
    }

    v35 = MEMORY[0x277D84F90];
    if (a1 >> 62)
    {
      break;
    }

    v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v31 = a4;
    v32 = a3;
    if (!v24)
    {
      goto LABEL_26;
    }

LABEL_10:
    v25 = 0;
    a2 = 0;
    a4 = a1 & 0xC000000000000001;
    v26 = MEMORY[0x277D84F90];
    while (1)
    {
      if (a4)
      {
        v27 = MEMORY[0x24C1FC540](v25, a1);
      }

      else
      {
        if (v25 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v27 = *(a1 + 8 * v25 + 32);
      }

      v28 = v27;
      a3 = (v25 + 1);
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v34 = v27;
      closure #1 in closure #1 in static DOCFileProviderSource.getICloudSourcesIfEnabled(configuration:sourceObserver:completion:)(&v34, &v33);

      if (v33)
      {
        MEMORY[0x24C1FB090](v29);
        if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v26 = v35;
      }

      ++v25;
      if (a3 == v24)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  v24 = __CocoaSet.count.getter();
  v31 = a4;
  v32 = a3;
  if (v24)
  {
    goto LABEL_10;
  }

LABEL_26:
  v26 = MEMORY[0x277D84F90];
LABEL_27:
  v32(v26);
}

void closure #1 in closure #1 in static DOCFileProviderSource.getICloudSourcesIfEnabled(configuration:sourceObserver:completion:)(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.UI);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v59 = v56;
    *v7 = 136315394;
    v8 = [v4 displayName];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v59);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2080;
    v13 = v4;
    v14 = [v13 description];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v59);

    *(v7 + 14) = v18;
    _os_log_impl(&dword_2493AC000, v5, v6, "[Default Source UI]: \t %s — %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v56, -1, -1);
    MEMORY[0x24C1FE850](v7, -1, -1);
  }

  type metadata accessor for DOCFileProviderSource();
  v19 = swift_dynamicCastClass();
  if (v19)
  {
    v20 = *(v19 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
    if (v20)
    {
      v21 = v19;
      v22 = v4;
      v23 = v20;
      if ([v23 isiCloudDriveProvider] && objc_msgSend(v23, sel_isEnabled) && (objc_msgSend(v23, sel_isHidden) & 1) == 0 && (v24 = objc_msgSend(objc_opt_self(), sel_defaultManager), v25 = objc_msgSend(v24, sel_ubiquityIdentityToken), v24, v25))
      {
        swift_unknownObjectRelease();
        v26 = [objc_opt_self() defaultPermission];
        v27 = [v26 canHostAppPerformAction:1 fileProviderDomain:v23];

        v23 = v22;
        if (v27)
        {
          goto LABEL_26;
        }
      }

      else
      {
      }
    }
  }

  v28 = v4;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v59 = v57;
    *v31 = 136316162;
    v32 = [v28 displayName];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v59);

    *(v31 + 4) = v36;
    *(v31 + 12) = 2080;
    v37 = swift_dynamicCastClass();
    if (v37)
    {
      v38 = *(v37 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16FPProviderDomainCSgMd);
    v39 = String.init<A>(describing:)();
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v59);

    *(v31 + 14) = v41;
    *(v31 + 22) = 2080;
    v42 = swift_dynamicCastClass();
    if (v42)
    {
      v43 = *(v42 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
      if (v43)
      {
        [v43 isEnabled];
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd);
    v44 = String.init<A>(describing:)();
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v59);

    *(v31 + 24) = v46;
    *(v31 + 32) = 2080;
    v47 = swift_dynamicCastClass();
    if (v47)
    {
      v48 = *(v47 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
      if (v48)
      {
        [v48 isHidden];
      }
    }

    v49 = String.init<A>(describing:)();
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v59);

    *(v31 + 34) = v51;
    *(v31 + 42) = 2080;
    v52 = [objc_opt_self() defaultManager];
    [v52 ubiquityIdentityToken];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSCoding_So9NSCopyingSo8NSObjectpSgMd);
    v53 = String.init<A>(describing:)();
    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v59);

    *(v31 + 44) = v55;
    _os_log_impl(&dword_2493AC000, v29, v30, "[Default Source UI]: Filtered OUT source %s: \n\t domain: %s \n\t isEnabled: %s \n\t isHidden: %s \n\t ubiquityToken %s ", v31, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v57, -1, -1);
    MEMORY[0x24C1FE850](v31, -1, -1);

    v21 = 0;
  }

  else
  {

    v21 = 0;
  }

LABEL_26:
  *a2 = v21;
}

id DOCTrashedItemsSource._displayName.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCTrashedItemsSource____lazy_storage____displayName);
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCTrashedItemsSource____lazy_storage____displayName + 8))
  {
    countAndFlagsBits = *v1;
LABEL_5:

    return countAndFlagsBits;
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v4 = result;
    v9._object = 0x8000000249BD4D80;
    v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v5.value._object = 0xEB00000000656C62;
    v6._countAndFlagsBits = 0xD00000000000001ALL;
    v6._object = 0x8000000249BD4D60;
    v7._object = 0x8000000249BD09B0;
    v9._countAndFlagsBits = 0xD000000000000037;
    v7._countAndFlagsBits = 0xD000000000000010;
    v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v9);
    countAndFlagsBits = v8._countAndFlagsBits;

    *v1 = v8;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void *DOCTrashedItemsSource.__allocating_init(_:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCTrashedItemsSource____lazy_storage____displayName];
  *v4 = 0;
  *(v4 + 1) = 0;
  return DOCFileProviderSource.init(_:)(a1);
}

void *DOCTrashedItemsSource.init(_:)(void *a1)
{
  v2 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCTrashedItemsSource____lazy_storage____displayName);
  *v2 = 0;
  v2[1] = 0;
  return DOCFileProviderSource.init(_:)(a1);
}

id DOCTrashedItemsSource.init(enumerationIdentifier:defaultIdentifier:)(void *a1, void *a2)
{
  v3 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCTrashedItemsSource____lazy_storage____displayName);
  *v3 = 0;
  v3[1] = 0;
  return DOCFileProviderSource.init(enumerationIdentifier:defaultIdentifier:)(a1, a2);
}

id DOCSharedDocumentsSource._displayName.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCSharedDocumentsSource____lazy_storage____displayName);
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCSharedDocumentsSource____lazy_storage____displayName + 8))
  {
    countAndFlagsBits = *v1;
LABEL_5:

    return countAndFlagsBits;
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v4 = result;
    v9._object = 0x8000000249BD4D30;
    v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v5.value._object = 0xEB00000000656C62;
    v6._countAndFlagsBits = 0x646572616853;
    v7._object = 0x8000000249BD4D10;
    v9._countAndFlagsBits = 0xD00000000000002FLL;
    v7._countAndFlagsBits = 0xD000000000000010;
    v6._object = 0xE600000000000000;
    v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v5, v4, v6, v9);
    countAndFlagsBits = v8._countAndFlagsBits;

    *v1 = v8;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id @objc DOCFileProviderSource.displayName.getter(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  v8 = MEMORY[0x24C1FAD20](v5, v7);

  return v8;
}

uint64_t DOCTrashedItemsSource.providerName.getter()
{
  v1 = [v0 displayName];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id @objc DOCTrashedItemsSource.displayName.setter(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6.receiver = a1;
  v6.super_class = a4();
  return objc_msgSendSuper2(&v6, sel_setDisplayName_, a3);
}

void DOCTrashedItemsSource.displayName.setter(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = MEMORY[0x24C1FAD20]();

  v7.receiver = v3;
  v7.super_class = a3(v6);
  objc_msgSendSuper2(&v7, sel_setDisplayName_, v5);
}

void *DOCSharedDocumentsSource.__allocating_init(_:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCSharedDocumentsSource____lazy_storage____displayName];
  *v4 = 0;
  *(v4 + 1) = 0;
  return DOCFileProviderSource.init(_:)(a1);
}

void *DOCSharedDocumentsSource.init(_:)(void *a1)
{
  v2 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCSharedDocumentsSource____lazy_storage____displayName);
  *v2 = 0;
  v2[1] = 0;
  return DOCFileProviderSource.init(_:)(a1);
}

id DOCSharedDocumentsSource.init(enumerationIdentifier:defaultIdentifier:)(void *a1, void *a2)
{
  v3 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCSharedDocumentsSource____lazy_storage____displayName);
  *v3 = 0;
  v3[1] = 0;
  return DOCFileProviderSource.init(enumerationIdentifier:defaultIdentifier:)(a1, a2);
}

id DOCFileProviderSource.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id @nonobjc LSApplicationExtensionRecord.init(url:)(uint64_t a1)
{
  v2 = v1;
  v15 = *MEMORY[0x277D85DE8];
  URL._bridgeToObjectiveC()(v15);
  v5 = v4;
  v14 = 0;
  v6 = [v2 initWithURL:v4 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t *a1, unsigned __int8 a2)
{
  v4 = *a1;
  result = specialized Collection.firstIndex(where:)(*a1, a2);
  v7 = result;
  if (v2)
  {
    return v7;
  }

  if (v6)
  {
    return *(v4 + 16);
  }

  if (__OFADD__(result, 1))
  {
    goto LABEL_84;
  }

  v9 = (v4 + 16);
  v8 = *(v4 + 16);
  if (result + 1 == v8)
  {
    return v7;
  }

  v10 = result + 33;
  v11 = a2;
  while (1)
  {
    v13 = v10 - 32;
    if (v10 - 32 >= v8)
    {
      break;
    }

    v14 = *(v4 + v10);
    result = DOCItemSortMode.isDateMode.getter();
    if ((result & 1) == 0)
    {
      goto LABEL_73;
    }

    if (v14 > 4)
    {
      if (v14 <= 6)
      {
        if (v14 == 5)
        {
          v21 = 0xE400000000000000;
          v20 = 1684957547;
        }

        else
        {
          v21 = 0xE800000000000000;
          v20 = 0x7942646572616873;
        }

        v18 = 0xEC00000065746144;
      }

      else
      {
        v18 = 0xEC00000065746144;
        if (v14 == 7)
        {
          v20 = 0x6E6F697461657263;
          v21 = 0xEC00000065746144;
          v16 = 0x646573557473616CLL;
          goto LABEL_42;
        }

        if (v14 == 8)
        {
          v20 = 0x6564644165746164;
          v21 = 0xE900000000000064;
        }

        else
        {
          v20 = 0x745364756F6C6369;
          v21 = 0xEC00000073757461;
        }
      }

      v16 = 0x646573557473616CLL;
    }

    else
    {
      if (v14 == 3)
      {
        v15 = 1936154996;
      }

      else
      {
        v15 = 1702521203;
      }

      if (v14 == 2)
      {
        v15 = 1701667182;
      }

      v16 = 0x646573557473616CLL;
      if (v14)
      {
        v17 = 0x646573557473616CLL;
      }

      else
      {
        v17 = 0xD000000000000010;
      }

      v18 = 0xEC00000065746144;
      if (v14)
      {
        v19 = 0xEC00000065746144;
      }

      else
      {
        v19 = 0x8000000249BC5DF0;
      }

      if (v14 <= 1)
      {
        v20 = v17;
      }

      else
      {
        v20 = v15;
      }

      if (v14 <= 1)
      {
        v21 = v19;
      }

      else
      {
        v21 = 0xE400000000000000;
      }
    }

LABEL_42:
    v22 = 0x745364756F6C6369;
    if (v11 == 8)
    {
      v22 = 0x6564644165746164;
    }

    v23 = 0xEC00000073757461;
    if (v11 == 8)
    {
      v23 = 0xE900000000000064;
    }

    if (v11 == 7)
    {
      v22 = 0x6E6F697461657263;
      v23 = 0xEC00000065746144;
    }

    v24 = 0x7942646572616873;
    if (v11 == 5)
    {
      v24 = 1684957547;
    }

    v25 = 0xE800000000000000;
    if (v11 == 5)
    {
      v25 = 0xE400000000000000;
    }

    if (v11 <= 6)
    {
      v22 = v24;
      v23 = v25;
    }

    if (v11 == 3)
    {
      v26 = 1936154996;
    }

    else
    {
      v26 = 1702521203;
    }

    v27 = 0xE400000000000000;
    if (v11 == 2)
    {
      v26 = 1701667182;
      v27 = 0xE400000000000000;
    }

    if (!v11)
    {
      v16 = 0xD000000000000010;
      v18 = 0x8000000249BC5DF0;
    }

    if (v11 <= 1)
    {
      v26 = v16;
      v27 = v18;
    }

    if (v11 <= 4)
    {
      v28 = v26;
    }

    else
    {
      v28 = v22;
    }

    if (v11 <= 4)
    {
      v29 = v27;
    }

    else
    {
      v29 = v23;
    }

    if (v20 == v28 && v21 == v29)
    {
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v30 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

LABEL_73:
    if (v13 != v7)
    {
      if ((v7 & 0x8000000000000000) != 0)
      {
        goto LABEL_81;
      }

      if (v7 >= *v9)
      {
        goto LABEL_82;
      }

      if (v13 >= *v9)
      {
        goto LABEL_83;
      }

      v31 = *(v4 + 32 + v7);
      v32 = *(v4 + v10);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
        v4 = result;
      }

      *(v4 + v7 + 32) = v32;
      *(v4 + v10) = v31;
      *a1 = v4;
    }

    ++v7;
LABEL_10:
    v9 = (v4 + 16);
    v8 = *(v4 + 16);
    v12 = v10 - 31;
    ++v10;
    if (v12 == v8)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
  return result;
}

uint64_t specialized static DOCFileProviderSourceType.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a4)
    {
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;
      if (v4 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v6 != v7)
      {
LABEL_11:
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_12;
      }

LABEL_10:
      v8 = 1;
LABEL_12:

      return v8 & 1;
    }
  }

  else if ((a4 & 1) == 0)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    if (v9 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v11 != v12)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v8 = 0;
  return v8 & 1;
}

uint64_t outlined consume of String??(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t outlined copy of String??(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

id specialized static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:)(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = *(a4 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd);
  type metadata accessor for UTType();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_249B9A480;
  static UTType.url.getter();
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {

    goto LABEL_15;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
LABEL_15:
    v26 = swift_allocObject();
    v26[2] = v8;
    v26[3] = v9;
    v26[4] = a3;
    v27 = swift_allocObject();
    *(v27 + 16) = partial apply for closure #1 in static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:);
    *(v27 + 24) = v26;
    v86 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @guaranteed [String : Any]?) -> (@unowned Bool)partial apply;
    v87 = v27;
    v82 = MEMORY[0x277D85DD0];
    v83 = 1107296256;
    v84 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [String : Any]?) -> (@unowned Bool);
    v85 = &block_descriptor_293;
    v28 = _Block_copy(&v82);
    v29 = objc_opt_self();
    v30 = v8;
    v31 = a3;
    v32 = [v29 predicateWithBlock_];
    goto LABEL_16;
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
  {

    goto LABEL_19;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v21)
  {
LABEL_19:
    v36 = swift_allocObject();
    v36[2] = v8;
    v36[3] = v9;
    v36[4] = a3;
    v37 = swift_allocObject();
    *(v37 + 16) = partial apply for closure #2 in static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:);
    *(v37 + 24) = v36;
    v86 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @guaranteed [String : Any]?) -> (@unowned Bool)partial apply;
    v87 = v37;
    v82 = MEMORY[0x277D85DD0];
    v83 = 1107296256;
    v84 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [String : Any]?) -> (@unowned Bool);
    v85 = &block_descriptor_283;
    v28 = _Block_copy(&v82);
    v38 = objc_opt_self();
    v39 = v8;
    v40 = a3;
    v32 = [v38 predicateWithBlock_];
    goto LABEL_16;
  }

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;
  if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
  {

LABEL_21:

    v42 = swift_allocObject();
    *(v42 + 16) = a3;
    v43 = swift_allocObject();
    *(v43 + 16) = partial apply for closure #3 in static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:);
    *(v43 + 24) = v42;
    v86 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @guaranteed [String : Any]?) -> (@unowned Bool)partial apply;
    v87 = v43;
    v82 = MEMORY[0x277D85DD0];
    v83 = 1107296256;
    v84 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [String : Any]?) -> (@unowned Bool);
    v85 = &block_descriptor_273;
    v28 = _Block_copy(&v82);
    v44 = objc_opt_self();
    v45 = a3;
    v32 = [v44 predicateWithBlock_];
    goto LABEL_16;
  }

  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v41)
  {
    goto LABEL_21;
  }

  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;
  if (v46 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v48 == v49)
  {

LABEL_26:

    v51 = swift_allocObject();
    *(v51 + 16) = a3;
    v52 = swift_allocObject();
    *(v52 + 16) = partial apply for closure #4 in static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:);
    *(v52 + 24) = v51;
    v86 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @guaranteed [String : Any]?) -> (@unowned Bool)partial apply;
    v87 = v52;
    v82 = MEMORY[0x277D85DD0];
    v83 = 1107296256;
    v84 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [String : Any]?) -> (@unowned Bool);
    v85 = &block_descriptor_263;
    v28 = _Block_copy(&v82);
    v53 = objc_opt_self();
    v54 = a3;
    v32 = [v53 predicateWithBlock_];
    goto LABEL_16;
  }

  v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v50)
  {
    goto LABEL_26;
  }

  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v56;
  if (v55 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v57 == v58)
  {
  }

  else
  {
    v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v59 & 1) == 0)
    {
      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v66;
      if (v65 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v67 == v68)
      {
      }

      else
      {
        v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v69 & 1) == 0)
        {

          v77 = swift_allocObject();
          *(v77 + 16) = a5;
          *(v77 + 24) = a3;
          v78 = swift_allocObject();
          *(v78 + 16) = partial apply for closure #7 in static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:);
          *(v78 + 24) = v77;
          v86 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @guaranteed [String : Any]?) -> (@unowned Bool);
          v87 = v78;
          v82 = MEMORY[0x277D85DD0];
          v83 = 1107296256;
          v84 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [String : Any]?) -> (@unowned Bool);
          v85 = &block_descriptor_233;
          v28 = _Block_copy(&v82);
          v79 = objc_opt_self();
          v80 = a5;
          v81 = a3;
          v32 = [v79 predicateWithBlock_];
          goto LABEL_16;
        }
      }

      v70 = swift_allocObject();
      v70[2] = a2;
      v70[3] = v8;
      v70[4] = v9;
      v70[5] = a3;
      v71 = swift_allocObject();
      *(v71 + 16) = partial apply for closure #6 in static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:);
      *(v71 + 24) = v70;
      v86 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @guaranteed [String : Any]?) -> (@unowned Bool)partial apply;
      v87 = v71;
      v82 = MEMORY[0x277D85DD0];
      v83 = 1107296256;
      v84 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [String : Any]?) -> (@unowned Bool);
      v85 = &block_descriptor_243_0;
      v72 = _Block_copy(&v82);
      v73 = objc_opt_self();
      v74 = a2;
      v75 = v8;
      v76 = a3;
      v33 = [v73 predicateWithBlock_];
      v34 = v72;
      goto LABEL_17;
    }
  }

  v60 = swift_allocObject();
  v60[2] = v8;
  v60[3] = v9;
  v60[4] = a3;
  v61 = swift_allocObject();
  *(v61 + 16) = partial apply for closure #5 in static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:);
  *(v61 + 24) = v60;
  v86 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @guaranteed [String : Any]?) -> (@unowned Bool)partial apply;
  v87 = v61;
  v82 = MEMORY[0x277D85DD0];
  v83 = 1107296256;
  v84 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [String : Any]?) -> (@unowned Bool);
  v85 = &block_descriptor_253_0;
  v28 = _Block_copy(&v82);
  v62 = objc_opt_self();
  v63 = v8;
  v64 = a3;
  v32 = [v62 predicateWithBlock_];
LABEL_16:
  v33 = v32;
  v34 = v28;
LABEL_17:
  _Block_release(v34);

  return v33;
}

void specialized static DOCFileProviderSource.createSpotlightSources()()
{
  v0 = *MEMORY[0x277D05D78];
  v1 = type metadata accessor for DOCFileProviderSource();
  v2 = objc_allocWithZone(v1);
  v3 = DOCFileProviderSource.init(enumerationIdentifier:defaultIdentifier:)(@"com.apple.DocumentManager.SpotlightFileProvider.activities", v0);
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_defaultSorting;
  swift_beginAccess();
  *(v3 + v4) = 1;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_sortingModes;
  swift_beginAccess();
  *(v3 + v5) = &outlined read-only object #0 of static DOCFileProviderSource.createSpotlightSources();

  (*((*MEMORY[0x277D85000] & *v3) + 0x1A8))(1);
  v6 = *MEMORY[0x277D05DA0];
  v7 = objc_allocWithZone(v1);
  v8 = DOCFileProviderSource.init(enumerationIdentifier:defaultIdentifier:)(@"com.apple.DocumentManager.SpotlightFileProvider.favoriteFolders", v6);
  v9 = *MEMORY[0x277D05DD0];
  v10 = objc_allocWithZone(type metadata accessor for DOCTrashedItemsSource()) + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCTrashedItemsSource____lazy_storage____displayName;
  *v10 = 0;
  v10[1] = 0;
  v11 = DOCFileProviderSource.init(enumerationIdentifier:defaultIdentifier:)(@"com.apple.DocumentManager.SpotlightFileProvider.trashedItems", v9);
  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_defaultSorting;
  swift_beginAccess();
  v11[v12] = 2;
  v13 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_sortingModes;
  swift_beginAccess();
  *&v11[v13] = &outlined read-only object #1 of static DOCFileProviderSource.createSpotlightSources();
  v14 = v11;

  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 trashedItemsLocation];
  v18 = [v17 promptText];

  if (v18)
  {
    [v16 setPromptText_];

    v19 = &v16[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_dropAction];
    swift_beginAccess();
    v20 = *v19;
    *v19 = closure #1 in static DOCFileProviderSource.createSpotlightSources();
    v19[1] = 0;
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_249BA5040;
    if (one-time initialization token for searchSource != -1)
    {
      swift_once();
    }

    v22 = static DOCFileProviderSource.searchSource;
    *(v21 + 32) = static DOCFileProviderSource.searchSource;
    v23 = one-time initialization token for recentDocumentsSource;
    v24 = v22;
    if (v23 != -1)
    {
      swift_once();
    }

    v25 = static DOCFileProviderSource.recentDocumentsSource;
    *(v21 + 40) = static DOCFileProviderSource.recentDocumentsSource;
    *(v21 + 48) = v3;
    v26 = one-time initialization token for taggedItemsSource;
    v27 = v25;
    v28 = v3;
    if (v26 != -1)
    {
      swift_once();
    }

    v29 = static DOCFileProviderSource.taggedItemsSource;
    *(v21 + 56) = static DOCFileProviderSource.taggedItemsSource;
    *(v21 + 64) = v8;
    v30 = one-time initialization token for sharedItemsSource;
    v31 = v29;
    v32 = v8;
    if (v30 != -1)
    {
      swift_once();
    }

    v33 = static DOCFileProviderSource.sharedItemsSource;
    *(v21 + 72) = static DOCFileProviderSource.sharedItemsSource;
    *(v21 + 80) = v16;
    v34 = v33;
  }

  else
  {
    __break(1u);
  }
}

void *specialized static DOCFileProviderSource.newSource(from:with:)(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = [a1 identifier];
  v7 = DOCProviderDomainIDIsLegacyWebDAV();

  if (v7)
  {
    v8 = type metadata accessor for DOCFileProviderSource();
LABEL_7:
    v13 = objc_allocWithZone(v8);
    return DOCFileProviderSource.init(_:)(a1);
  }

  v9 = [a1 identifier];
  v10 = DOCProviderDomainIDIsSharedServerDomainID();

  if (v10)
  {
    v8 = type metadata accessor for DOCSharedServerSource();
    goto LABEL_7;
  }

  v11 = [a1 identifier];
  v12 = DOCProviderDomainIDIsExternalDevice();

  if (v12)
  {
    v8 = type metadata accessor for DOCExternalDeviceSource();
    goto LABEL_7;
  }

  v15 = objc_allocWithZone(type metadata accessor for DOCFileProviderSource());
  v16 = DOCFileProviderSource.init(_:)(a1);
  DOCFileProviderSource.updateProviderDomainEnabled(for:)(a2, a3);
  return v16;
}

void specialized DOCFileProviderSource.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_dropAction);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_isProviderDomainEnabled) = 2;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___actionManager) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___containingApplicationIdentifier) = xmmword_249BA5030;
  v2 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage____displayName);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage____providerName);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage____domainName) = xmmword_249BA5030;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_isEjectable) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_requiresCustomEnumerationProperties) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_defaultSorting) = 2;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_sortingModes) = &outlined read-only object #0 of DOCFileProviderSource.init(coder:);
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_groupingEnabledByDefault) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_defaultGroupingMode) = 5;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_availableDisplayModes) = &outlined read-only object #1 of DOCFileProviderSource.init(coder:);
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_errorCount) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_supportsImportInDefaultSaveLocation) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t keypath_set_31Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for DOCFileProviderSourceType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
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

uint64_t storeEnumTagSinglePayload for DOCFileProviderSourceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UIDropSession, @in_guaranteed UIDropOperation, @in_guaranteed UIViewController) -> (@out ())(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v7 = a2;
  v8 = a1;
  v6 = a3;
  return v4(&v8, &v7, &v6);
}

unint64_t lazy protocol witness table accessor for type [DOCNode] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DOCNode] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DOCNode] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo7DOCNode_pGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DOCNode] and conformance [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [DOCNode] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DOCNode] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo7DOCNode_pGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DOCNode] and conformance [A]);
  }

  return result;
}

uint64_t objectdestroy_245Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t lazy protocol witness table accessor for type NSError and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NSError and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSError and conformance NSObject)
  {
    type metadata accessor for NSMutableAttributedString(255, &lazy cache variable for type metadata for NSError);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSError and conformance NSObject);
  }

  return result;
}

void static DOCBrowserLayout.grid.getter(void *a1@<X8>)
{
  a1[3] = &type metadata for DOCBrowserGridLayout_Modern;
  a1[4] = &protocol witness table for DOCBrowserGridLayout_Modern;
  a1[5] = &protocol witness table for DOCBrowserGridLayout_Modern;
}

id DOCItemCollectionGridCell_Base.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCItemCollectionGridCell_Base();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *DOCBrowserGridLayout_Modern.newCell(frame:containerViewForSizing:)(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = objc_allocWithZone(type metadata accessor for DOCItemCollectionGridCell());
  v11 = a1;
  return DOCItemCollectionGridCell.init(frame:containerView:)(a1, a2, a3, a4, a5);
}

void *protocol witness for DOCBrowserGridCellFactory.newCell(frame:containerViewForSizing:) in conformance DOCBrowserGridLayout_Modern(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = objc_allocWithZone(type metadata accessor for DOCItemCollectionGridCell());
  v11 = a1;
  return DOCItemCollectionGridCell.init(frame:containerView:)(a1, a2, a3, a4, a5);
}

uint64_t DOCUnicode.rawValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables10DOCUnicode_rawValue);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id DOCUnicode.__allocating_init(rawValue:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC26DocumentManagerExecutables10DOCUnicode_rawValue];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id DOCUnicode.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables10DOCUnicode_rawValue];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for DOCUnicode();
  return objc_msgSendSuper2(&v5, sel_init);
}

id DOCUnicode.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCUnicode.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCUnicode();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DOCUnicode@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 112))(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance DOCUnicode@<X0>(uint64_t *a1@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **v1) + 0x58))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

id static DOCUnicode.nonBreakingSpace(zeroWidth:)(char a1)
{
  if (a1)
  {
    if (one-time initialization token for nonBreakingSpace_zeroWidth != -1)
    {
      swift_once();
    }

    v1 = &static DOCUnicode.nonBreakingSpace_zeroWidth;
  }

  else
  {
    if (one-time initialization token for nonBreakingSpace != -1)
    {
      swift_once();
    }

    v1 = &static DOCUnicode.nonBreakingSpace;
  }

  v2 = *v1;

  return v2;
}

id @objc static DOCUnicode.horizontalEllipsis.getter(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

id DOCServiceActionPopoverTrackerController.__allocating_init(fullViewController:action:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables40DOCServiceActionPopoverTrackerController_action] = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

id DOCServiceActionPopoverTrackerController.init(fullViewController:action:)(void *a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables40DOCServiceActionPopoverTrackerController_action] = a2;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for DOCServiceActionPopoverTrackerController();
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

uint64_t DOCServiceActionPopoverTrackerController.getFrameFor(_:waitForNewThumbnail:completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = a3;
  v7[4] = a4;
  v8 = v4;

  DOCRunInMainThread(_:)();
}

void closure #1 in DOCServiceActionPopoverTrackerController.getFrameFor(_:waitForNewThumbnail:completionBlock:)(uint64_t a1, void (*a2)(double, double, double, double), unint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v6 = Strong;
  v7 = [Strong dataSource];

  v8 = (*((*MEMORY[0x277D85000] & *v7) + 0xF0))();
  if (v8 >> 62)
  {
    goto LABEL_31;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_32:

    return;
  }

LABEL_4:
  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (v10)
  {
    __break(1u);
  }

  else if ((v8 & 0xC000000000000001) == 0)
  {
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v12 = *(v8 + 8 * v11 + 32);
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_39;
  }

  v12 = MEMORY[0x24C1FC540](v11, v8);
LABEL_9:
  v66 = v12;

  v13 = [v66 toolbarItems];
  v63 = a2;
  if (!v13)
  {
    goto LABEL_41;
  }

  v8 = v13;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);
  a3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (a3 >> 62)
  {
LABEL_39:
    v14 = __CocoaSet.count.getter();
    if (!v14)
    {
LABEL_40:

      a2 = v63;
LABEL_41:
      type metadata accessor for DOCBrowserContainerController();
      v27 = swift_dynamicCastClass();
      if (v27)
      {
        goto LABEL_42;
      }

      goto LABEL_64;
    }

    goto LABEL_12;
  }

  v14 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_40;
  }

LABEL_12:
  v15 = 0;
  v64 = OBJC_IVAR____TtC26DocumentManagerExecutables40DOCServiceActionPopoverTrackerController_action;
  while (1)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x24C1FC540](v15, a3);
    }

    else
    {
      if (v15 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v16 = *(a3 + 8 * v15 + 32);
    }

    v17 = v16;
    a2 = (v15 + 1);
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      v9 = __CocoaSet.count.getter();
      if (!v9)
      {
        goto LABEL_32;
      }

      goto LABEL_4;
    }

    v8 = type metadata accessor for DOCActionToolBarItem();
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      break;
    }

LABEL_14:

    ++v15;
    if (a2 == v14)
    {
      goto LABEL_40;
    }
  }

  v19 = *((*MEMORY[0x277D85000] & *v18) + 0x60);
  v20 = v17;
  v21 = v19();
  if (!v21)
  {

    goto LABEL_14;
  }

  v22 = v21;
  v23 = *(a1 + v64);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v24 = v23;
  v25 = static NSObject.== infix(_:_:)();

  if ((v25 & 1) == 0)
  {
    goto LABEL_14;
  }

  v26 = swift_dynamicCastClass();
  if (v26)
  {
    a2 = v63;
    goto LABEL_58;
  }

  type metadata accessor for DOCBrowserContainerController();
  v27 = swift_dynamicCastClass();
  a2 = v63;
  if (!v27)
  {
    goto LABEL_64;
  }

LABEL_42:
  v28 = *((*MEMORY[0x277D85000] & *v27) + 0x238);
  v29 = v66;
  v30 = v28();

  if (!v30)
  {
    __break(1u);
    return;
  }

  v31 = UINavigationItem.doc_allUnderlyingBarButtonItems.getter();

  if (!(v31 >> 62))
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32)
    {
      goto LABEL_45;
    }

LABEL_63:

    a2 = v63;
LABEL_64:
    a2(0.0, 0.0, 0.0, 0.0);
    goto LABEL_65;
  }

  while (2)
  {
    v32 = __CocoaSet.count.getter();
    if (!v32)
    {
      goto LABEL_63;
    }

LABEL_45:
    v33 = 0;
    v65 = OBJC_IVAR____TtC26DocumentManagerExecutables40DOCServiceActionPopoverTrackerController_action;
LABEL_48:
    if ((v31 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x24C1FC540](v33, v31);
    }

    else
    {
      if (v33 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

      v34 = *(v31 + 8 * v33 + 32);
    }

    v35 = v34;
    v36 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
      continue;
    }

    break;
  }

  type metadata accessor for DOCActionToolBarItem();
  v37 = swift_dynamicCastClass();
  if (!v37)
  {
    goto LABEL_47;
  }

  v38 = *((*MEMORY[0x277D85000] & *v37) + 0x60);
  v39 = v35;
  v40 = v38();
  if (!v40)
  {

    goto LABEL_47;
  }

  v41 = v40;
  v42 = *(a1 + v65);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v43 = v42;
  v44 = static NSObject.== infix(_:_:)();

  if ((v44 & 1) == 0)
  {
LABEL_47:

    ++v33;
    if (v36 == v32)
    {
      goto LABEL_63;
    }

    goto LABEL_48;
  }

  v26 = swift_dynamicCastClass();
  a2 = v63;
  if (!v26)
  {

    goto LABEL_64;
  }

LABEL_58:
  v45 = v26;
  v46 = [v45 _doc_ipi_viewForPresenting];
  [v45 _doc_ipi_rectForPresenting];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;

  [v46 convertRect:0 toView:{v48, v50, v52, v54}];
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;

  a2(v56, v58, v60, v62);
LABEL_65:
}

id DOCServiceItemPopoverTrackerController.__allocating_init(itemCollection:node:)(char *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v6 = *&a1[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration];
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables38DOCServiceItemPopoverTrackerController_configuration] = v6;
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables38DOCServiceItemPopoverTrackerController_node] = a2;
  v10.receiver = v5;
  v10.super_class = v2;
  v7 = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);

  return v8;
}

id DOCServiceItemPopoverTrackerController.init(itemCollection:node:)(char *a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5 = *&a1[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration];
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables38DOCServiceItemPopoverTrackerController_configuration] = v5;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables38DOCServiceItemPopoverTrackerController_node] = a2;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for DOCServiceItemPopoverTrackerController();
  v6 = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

uint64_t DOCServiceItemPopoverTrackerController.getFrameFor(_:waitForNewThumbnail:completionBlock:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = [*&v4[OBJC_IVAR____TtC26DocumentManagerExecutables38DOCServiceItemPopoverTrackerController_configuration] hostIdentifier];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = [objc_opt_self() mainBundle];
  v15 = [v14 bundleIdentifier];

  if (!v15)
  {

    goto LABEL_9;
  }

  v27 = a4;
  v16 = a3;
  v17 = a1;
  v18 = a2;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (v11 == v19 && v13 == v21)
  {

    a2 = v18;
    a1 = v17;
    a3 = v16;
    a4 = v27;
    goto LABEL_11;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  a2 = v18;
  a1 = v17;
  a3 = v16;
  a4 = v27;
  if ((v23 & 1) == 0)
  {
LABEL_9:
    *(v9 + 16) = 1;
  }

LABEL_11:
  v24 = swift_allocObject();
  *(v24 + 16) = v4;
  *(v24 + 24) = a3;
  *(v24 + 32) = a4;
  *(v24 + 40) = a1;
  *(v24 + 48) = a2 & 1;
  *(v24 + 56) = v9;
  v25 = v4;

  DOCRunInMainThread(_:)();
}

uint64_t closure #1 in DOCServiceItemPopoverTrackerController.getFrameFor(_:waitForNewThumbnail:completionBlock:)(char *a1, uint64_t (*a2)(void *, double, double, double, double), uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v29 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v28 - v13;
  v15 = type metadata accessor for IndexPath();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a2(Strong, 0.0, 0.0, 0.0, 0.0);
  }

  v21 = Strong;
  (*((*MEMORY[0x277D85000] & *Strong) + 0xD98))(*&a1[OBJC_IVAR____TtC26DocumentManagerExecutables38DOCServiceItemPopoverTrackerController_node]);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {

    Strong = outlined destroy of IndexPath?(v14);
    return a2(Strong, 0.0, 0.0, 0.0, 0.0);
  }

  (*(v16 + 32))(v19, v14, v15);
  v23 = swift_allocObject();
  v24 = v29;
  *(v23 + 24) = a1;
  *(v23 + 32) = v24;
  *(v23 + 16) = v21;
  *(v23 + 40) = a5 & 1;
  *(v23 + 48) = a6;
  *(v23 + 56) = a2;
  *(v23 + 64) = a3;
  v25 = *((*MEMORY[0x277D85000] & *v21) + 0x18D8);
  v26 = v21;
  v27 = a1;

  v25(v19, partial apply for closure #1 in closure #1 in DOCServiceItemPopoverTrackerController.getFrameFor(_:waitForNewThumbnail:completionBlock:), v23);

  return (*(v16 + 8))(v19, v15);
}

uint64_t closure #1 in closure #1 in DOCServiceItemPopoverTrackerController.getFrameFor(_:waitForNewThumbnail:completionBlock:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables38DOCServiceItemPopoverTrackerController_node);
  swift_beginAccess();
  v14 = *(a5 + 16);
  v15 = swift_allocObject();
  *(v15 + 16) = a6;
  *(v15 + 24) = a7;
  v16 = *((*MEMORY[0x277D85000] & *a1) + 0x17F8);

  v16(v13, a3, a4, v14, partial apply for closure #1 in closure #1 in closure #1 in DOCServiceItemPopoverTrackerController.getFrameFor(_:waitForNewThumbnail:completionBlock:), v15);
}

uint64_t DOCServiceTransitionController.sceneIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCServiceTransitionController_sceneIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t DOCServiceTransitionController.sceneIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCServiceTransitionController_sceneIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id DOCServiceTransitionController.__allocating_init(itemCollection:node:sceneIdentifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  swift_unknownObjectWeakInit();
  v11 = &v10[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCServiceTransitionController_sceneIdentifier];
  *v11 = 0;
  *(v11 + 1) = 0;
  swift_unknownObjectWeakAssign();
  *&v10[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCServiceTransitionController_node] = a2;
  swift_beginAccess();
  *v11 = a3;
  *(v11 + 1) = a4;
  swift_unknownObjectRetain();

  v14.receiver = v10;
  v14.super_class = v5;
  v12 = objc_msgSendSuper2(&v14, sel_init);

  swift_unknownObjectRelease();
  return v12;
}

id DOCServiceTransitionController.init(itemCollection:node:sceneIdentifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = specialized DOCServiceTransitionController.init(itemCollection:node:sceneIdentifier:)(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v5;
}

uint64_t DOCServiceTransitionController.setHasProgress(_:loadingFractionCompleted:setIsIndeterminate:)(char a1, char a2, double a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 25) = a2;
  *(v7 + 32) = a3;
  v8 = v3;
  DOCRunInMainThread(_:)();
}

void closure #1 in DOCServiceTransitionController.setHasProgress(_:loadingFractionCompleted:setIsIndeterminate:)(uint64_t a1, char a2, char a3, double a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v9 = MEMORY[0x277D85000];
  v32 = Strong;
  if (a2)
  {
    v10 = *((*MEMORY[0x277D85000] & *Strong) + 0xBF8);
    v11 = v10();
    if (v11 && (v12 = v11, swift_unknownObjectRetain(), outlined consume of (progress: NSProgress, node: DOCNode)?(v12), swift_getObjectType(), v13 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCServiceTransitionController_node), LOBYTE(v12) = DOCNode.isEqualTo(node:)(), v14 = swift_unknownObjectRelease(), (v12 & 1) != 0))
    {
      v15 = (v10)(v14);
      if (!v15)
      {
LABEL_29:
        __break(1u);
        return;
      }

      v17 = v15;
      v18 = v16;
    }

    else
    {
      v17 = [objc_allocWithZone(MEMORY[0x277CCAC48]) init];
      v18 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCServiceTransitionController_node);
      swift_unknownObjectRetain();
      v13 = v18;
    }

    v22 = sel_setTotalUnitCount_;
    v23 = v17;
    if (a3)
    {
      v24 = -1;
      goto LABEL_18;
    }

    [v17 setTotalUnitCount_];
    v25 = a4 * 1000.0;
    if (COERCE__INT64(fabs(a4 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v25 > -9.22337204e18)
    {
      if (v25 < 9.22337204e18)
      {
        v24 = v25;
        v22 = sel_setCompletedUnitCount_;
        v23 = v17;
LABEL_18:
        [v23 v22];
        v26 = (*((*v9 & *v32) + 0x18D0))(v13);
        if (v26)
        {
          v27 = v26;
          v28 = (*((*v9 & *v26) + 0x208))();

          if (v28)
          {
            v29 = *((*v9 & *v28) + 0x540);
            v30 = v17;
            v29(v17);
          }
        }

        v31 = *((*v9 & *v32) + 0xC00);
        v21 = v17;
        swift_unknownObjectRetain();
        v31(v17, v18);
        swift_unknownObjectRelease();
        goto LABEL_22;
      }

      goto LABEL_28;
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  (*((*MEMORY[0x277D85000] & *Strong) + 0xC00))(0, 0);
  v19 = (*((*v9 & *v32) + 0x18D0))(*(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCServiceTransitionController_node));
  if (v19)
  {
    v20 = v19;
    v21 = (*((*v9 & *v19) + 0x208))();

    if (v21)
    {
      (*((*v9 & *v21) + 0x540))(0);
LABEL_22:
    }
  }
}

uint64_t DOCServiceTransitionController.getDisplayInformation(waitForNewThumbnail:_:)(char a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = a1;
  v8 = v3;

  DOCRunInMainThread(_:)();
}

uint64_t closure #1 in DOCServiceTransitionController.getDisplayInformation(waitForNewThumbnail:_:)(uint64_t a1, uint64_t (*a2)(void, void, double, double, double, double), uint64_t a3, char a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCServiceTransitionController_node);
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a3;
    v12 = *((*MEMORY[0x277D85000] & *v9) + 0x17F8);

    v12(v10, 0, a4 & 1, 0, partial apply for closure #1 in closure #1 in DOCServiceTransitionController.getDisplayInformation(waitForNewThumbnail:_:), v11);
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.UI);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = v18;
      *v17 = 136315138;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002DLL, 0x8000000249BD5330, &v19);
      _os_log_impl(&dword_2493AC000, v15, v16, "%s itemCollection is nil. Can not get display imformation.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x24C1FE850](v18, -1, -1);
      MEMORY[0x24C1FE850](v17, -1, -1);
    }

    return a2(0, 0, 0.0, 0.0, 0.0, 0.0);
  }
}

void closure #1 in DOCServiceTransitionController.startTransition()(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCServiceTransitionController_node);
    v4 = MEMORY[0x277D85000];
    v5 = *((*MEMORY[0x277D85000] & *Strong) + 0xC18);
    v9 = Strong;
    swift_unknownObjectRetain();
    v5(0, v3);
    v6 = (*((*v4 & *v9) + 0x18D0))(v3);
    if (v6)
    {
      v7 = v6;
      v8 = *(v6 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView);

      [v8 setHidden_];
    }
  }
}

uint64_t DOCServiceTransitionController.startTransition()()
{
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  DOCRunInMainThread(_:)();
}

void closure #1 in DOCServiceTransitionController.endTransition()(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = MEMORY[0x277D85000];
    v17 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0xC18))(0, 0);
    v4 = (*((*v3 & *v17) + 0x18D0))(*(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCServiceTransitionController_node));
    if (v4)
    {
      v5 = v4;
      v6 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView);

      [v6 setHidden_];
    }

    v7 = (*((*v3 & *v17) + 0xBD8))() == 3;
    v8 = (*((*v3 & *v17) + 0x1300))(v7, MEMORY[0x277D84F90]);
    v9 = (*((*v3 & *a1) + 0x80))(v8);
    if (v10)
    {
      v11 = MEMORY[0x24C1FAD20](v9);
    }

    else
    {
      v11 = 0;
    }

    v12 = specialized static DOCInteractionManager.sharedManager(for:)(v11);

    (*((*v3 & *v12) + 0x68))(0);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.UI);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      MEMORY[0x24C1FE850](v16, -1, -1);
    }
  }
}

void @objc DOCServiceTransitionController.startTransition()(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  DOCRunInMainThread(_:)();
}

id DOCServiceTransitionController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCServiceActionPopoverTrackerController.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id specialized DOCServiceTransitionController.init(itemCollection:node:sceneIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  v8 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCServiceTransitionController_sceneIdentifier];
  *v8 = 0;
  *(v8 + 1) = 0;
  swift_unknownObjectWeakAssign();
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCServiceTransitionController_node] = a2;
  swift_beginAccess();
  *v8 = a3;
  *(v8 + 1) = a4;
  swift_unknownObjectRetain();

  v10.receiver = v4;
  v10.super_class = type metadata accessor for DOCServiceTransitionController();
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t objectdestroyTm_3(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

void *outlined consume of (progress: NSProgress, node: DOCNode)?(void *result)
{
  if (result)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t outlined destroy of IndexPath?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  return specialized Sequence<>.contains(_:)(a1, a2, MEMORY[0x277CC9AF8], &lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
}

{
  return specialized Sequence<>.contains(_:)(a1, a2, MEMORY[0x277D85578], &lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x277D85578]);
}

{
  return specialized Sequence<>.contains(_:)(a1, a2, MEMORY[0x277CC9578], &lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
}

{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

{
  v3 = a2 + 32;
  v4 = *(a2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = v3 + 56;
    outlined init with copy of DOCIdentityHashableLocation(v3, v9);
    Hasher.init(_seed:)();
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    dispatch thunk of Hashable.hash(into:)();
    v6 = Hasher._finalize()();
    Hasher.init(_seed:)();
    __swift_project_boxed_opaque_existential_1((a1 + 8), *(a1 + 32));
    dispatch thunk of Hashable.hash(into:)();
    v7 = Hasher._finalize()();
    outlined destroy of DOCIdentityHashableLocation(v9);
    v3 = v5;
  }

  while (v6 != v7);
  return v4 != 0;
}

{
  v3 = a2 + 32;
  v4 = *(a2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = v3 + 80;
    outlined init with copy of DOCGridLayout.Spec?(v3, v8, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd);
    v6 = MEMORY[0x24C1FC430](v8, a1);
    outlined destroy of CharacterSet?(v8, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd);
    v3 = v5;
  }

  while ((v6 & 1) == 0);
  return v4 != 0;
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = 0;
  v9 = *(a2 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    a3(0);
    ++v8;
    lazy protocol witness table accessor for type IndexPath and conformance IndexPath(a4, a5);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v9 != v10;
}

uint64_t specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  for (i = a2 + 32; ; i += 80)
  {
    outlined init with copy of DOCGridLayout.Spec?(i, v9, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd);
    outlined init with copy of DOCGridLayout.Spec?(a1, &v11, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd);
    if (!v10)
    {
      break;
    }

    outlined init with copy of DOCGridLayout.Spec?(v9, v8, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd);
    if (!*(&v12 + 1))
    {
      outlined destroy of CharacterSet?(v8, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd);
      goto LABEL_4;
    }

    v7[2] = v13;
    v7[3] = v14;
    v7[4] = v15;
    v7[0] = v11;
    v7[1] = v12;
    v5 = MEMORY[0x24C1FC430](v8, v7);
    outlined destroy of CharacterSet?(v7, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd);
    outlined destroy of CharacterSet?(v8, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd);
    outlined destroy of CharacterSet?(v9, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd);
    if (v5)
    {
      return 1;
    }

LABEL_5:
    if (!--v2)
    {
      return 0;
    }
  }

  if (*(&v12 + 1))
  {
LABEL_4:
    outlined destroy of CharacterSet?(v9, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSg_AFtMd);
    goto LABEL_5;
  }

  outlined destroy of CharacterSet?(v9, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd);
  return 1;
}

void DOCFileTypeSuggestion.apply(on:)(void *a1)
{
  v30 = type metadata accessor for UTType();
  v3 = *(v30 - 8);
  v5 = MEMORY[0x28223BE20](v30, v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 allowedContentTypes];
  if (v8)
  {

    __break(1u);
    goto LABEL_11;
  }

  v9 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_7932FEBB571AFC57FDF941318C04239B21DOCFileTypeSuggestion_contentTypes);
  if (!v9)
  {
LABEL_11:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v26 = a1;
    v31 = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v11 = v31;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v14 = *(v12 + 64);
    v25[1] = v9;
    v15 = v9 + ((v14 + 32) & ~v14);
    v27 = *(v12 + 56);
    v28 = v13;
    v29 = v12;
    v16 = (v12 - 8);
    do
    {
      v17 = v30;
      v28(v7, v15, v30);
      v18 = UTType.identifier.getter();
      v20 = v19;
      (*v16)(v7, v17);
      v31 = v11;
      v22 = *(v11 + 16);
      v21 = *(v11 + 24);
      if (v22 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
        v11 = v31;
      }

      *(v11 + 16) = v22 + 1;
      v23 = v11 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v20;
      v15 += v27;
      --v10;
    }

    while (v10);

    a1 = v26;
  }

  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v11);

  isa = Set._bridgeToObjectiveC()().super.isa;

  [a1 setAllowedContentTypes_];
}

id DOCFileTypeSuggestion.__allocating_init(inputString:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_7932FEBB571AFC57FDF941318C04239B21DOCFileTypeSuggestion_contentTypes] = 0;
  v5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchSuggestion_category] = 0;
  v6 = &v5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchSuggestion_inputString];
  *v6 = a1;
  v6[1] = a2;
  v8.receiver = v5;
  v8.super_class = type metadata accessor for DOCSearchSuggestion();
  return objc_msgSendSuper2(&v8, sel_init);
}

Swift::Void __swiftcall DOCFileTypeSuggester.deliverSuggestions(for:forSearchId:confirmedSuggestions:)(Swift::String a1, Swift::Int forSearchId, Swift::OpaquePointer confirmedSuggestions)
{
  v4 = v3;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v9 = type metadata accessor for UTType();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v39 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = MEMORY[0x277D84F90];
  if (specialized DOCFileTypeSuggester.shouldDeliverSuggestions(forConfirmedSuggestions:)(confirmedSuggestions._rawValue))
  {
    v40 = v9;
    v19 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_configuration);
    if ([v19 isFilesApp])
    {
      v20 = MEMORY[0x277D84F90];
      if (!*(MEMORY[0x277D84F90] + 16))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v24 = v13;
      v25 = v10;
      v26 = object;
      v27 = countAndFlagsBits;
      v28 = forSearchId;
      v29 = [v19 documentContentTypes];
      v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      forSearchId = v28;
      countAndFlagsBits = v27;
      object = v26;
      v10 = v25;
      v13 = v24;
      if (!v20[2])
      {
LABEL_17:
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        v34 = static DOCUTIDescriptorCollector.shared;
        v35 = MEMORY[0x277D85000];
        (*((*MEMORY[0x277D85000] & *static DOCUTIDescriptorCollector.shared) + 0xA8))();
        v36 = swift_allocObject();
        v36[2] = countAndFlagsBits;
        v36[3] = object;
        v36[4] = v18;
        v36[5] = v4;
        v36[6] = forSearchId;
        v37 = *((*v35 & *v34) + 0xA0);

        v38 = v4;
        v37(countAndFlagsBits, object, v20, partial apply for closure #1 in DOCFileTypeSuggester.deliverSuggestions(for:forSearchId:confirmedSuggestions:), v36);

        return;
      }
    }

    v39 = forSearchId;
    static UTType.folder.getter();
    v30 = specialized Sequence<>.contains(_:)(v17, v20, MEMORY[0x277D85578], &lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x277D85578]);
    v31 = v40;
    (*(v10 + 8))(v17, v40);
    if (!v30)
    {
      static UTType.folder.getter();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20);
      }

      v33 = v20[2];
      v32 = v20[3];
      if (v33 >= v32 >> 1)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1, v20);
      }

      v20[2] = v33 + 1;
      (*(v10 + 32))(v20 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v33, v13, v31);
    }

    forSearchId = v39;
    goto LABEL_17;
  }

  if ((*((*MEMORY[0x277D85000] & *v4) + 0x60))())
  {
    v22 = v21;
    ObjectType = swift_getObjectType();
    (*(v22 + 8))(v4, MEMORY[0x277D84F90], forSearchId, countAndFlagsBits, object, ObjectType, v22);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t closure #1 in DOCFileTypeSuggester.deliverSuggestions(for:forSearchId:confirmedSuggestions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a5;
  v12[7] = a6;

  v13 = a5;
  DOCRunInMainThread(_:)();
}

uint64_t closure #1 in closure #1 in DOCFileTypeSuggester.deliverSuggestions(for:forSearchId:confirmedSuggestions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{

  specialized Sequence.forEach(_:)(a1, a2, a3, (a4 + 16));

  result = (*((*MEMORY[0x277D85000] & *a5) + 0x60))(v12);
  if (result)
  {
    v15 = v14;
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v17 = *(a4 + 16);
    v18 = *(v15 + 8);

    v18(a5, v17, a6, a2, a3, ObjectType, v15);

    return swift_unknownObjectRelease();
  }

  return result;
}

void closure #1 in closure #1 in closure #1 in DOCFileTypeSuggester.deliverSuggestions(for:forSearchId:confirmedSuggestions:)(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v64 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v58 - v9;
  v69 = type metadata accessor for UTType();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v11);
  v63 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v61 = &v58 - v15;
  v65 = *a1;
  v17 = a1[2];
  v16 = a1[3];
  v18 = objc_allocWithZone(type metadata accessor for DOCFileTypeSuggestion());
  *&v18[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_7932FEBB571AFC57FDF941318C04239B21DOCFileTypeSuggestion_contentTypes] = 0;
  v18[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchSuggestion_category] = 0;
  v19 = &v18[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchSuggestion_inputString];
  *v19 = a2;
  v19[1] = a3;
  v20 = type metadata accessor for DOCSearchSuggestion();
  v68.receiver = v18;
  v68.super_class = v20;

  v21 = objc_msgSendSuper2(&v68, sel_init);
  v22 = MEMORY[0x277D85000];
  v23 = *((*MEMORY[0x277D85000] & *v21) + 0xB8);
  swift_bridgeObjectRetain_n();
  v24 = v21;
  v23(v17, v16);
  v25 = *((*v22 & *v24) + 0xE8);
  v26 = v24;
  v27 = v17;
  v28 = v65;
  v25(v27, v16);
  v62 = v21;
  (*((*v22 & *v26) + 0x1C0))(2);
  v29 = 1 << *(v28 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v28 + 56);
  v32 = (v29 + 63) >> 6;
  v33 = (v67 + 48);
  v60 = (v67 + 32);

  v34 = 0;
  v66 = MEMORY[0x277D84F90];
  while (1)
  {
    v35 = v34;
    if (!v31)
    {
      break;
    }

LABEL_8:
    v31 &= v31 - 1;

    UTType.init(_:)();
    if ((*v33)(v10, 1, v69) == 1)
    {
      outlined destroy of CharacterSet?(v10, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
    }

    else
    {
      v59 = *v60;
      v59(v61, v10, v69);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v66 + 2) + 1, 1, v66);
      }

      v37 = *(v66 + 2);
      v36 = *(v66 + 3);
      v38 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        v58 = v37 + 1;
        v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v36 > 1, v37 + 1, 1, v66);
        v38 = v58;
        v66 = v41;
      }

      v40 = v66;
      v39 = v67;
      *(v66 + 2) = v38;
      v59(&v40[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v37], v61, v69);
    }
  }

  while (1)
  {
    v34 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v34 >= v32)
    {
      break;
    }

    v31 = *(v28 + 56 + 8 * v34);
    ++v35;
    if (v31)
    {
      goto LABEL_8;
    }
  }

  *(v26 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_7932FEBB571AFC57FDF941318C04239B21DOCFileTypeSuggestion_contentTypes) = v66;

  if (*(v28 + 16) != 1)
  {
    goto LABEL_22;
  }

  v42 = specialized Collection.first.getter(v28);
  if (v43)
  {
    v44 = v42;
    v45 = v43;
    v46 = v63;
    static UTType.folder.getter();
    v47 = UTType.identifier.getter();
    v49 = v48;
    (*(v67 + 8))(v46, v69);
    if (v44 == v47 && v45 == v49)
    {

      goto LABEL_21;
    }

    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v50)
    {
LABEL_21:
      v51 = MEMORY[0x24C1FAD20](0x7265646C6F66, 0xE600000000000000);
      v52 = [objc_opt_self() systemImageNamed_];

      v53 = MEMORY[0x277D85000];
      v54 = *((*MEMORY[0x277D85000] & *v26) + 0x118);
      v55 = v52;
      v54(v52);
      (*((*v53 & *v26) + 0x148))(v52);
    }

LABEL_22:

    v56 = v64;
    v57 = swift_beginAccess();
    MEMORY[0x24C1FB090](v57);
    if (*((*v56 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_23:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      return;
    }

LABEL_25:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_23;
  }

  __break(1u);
}

id DOCFileTypeSuggester.__allocating_init(configuration:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_configuration] = a1;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for DOCSuggester();
  return objc_msgSendSuper2(&v5, sel_init);
}

id DOCFileTypeSuggester.init(configuration:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_configuration] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for DOCSuggester();
  return objc_msgSendSuper2(&v4, sel_init);
}

id one-time initialization function for defaultNaturalLanguageFileTypeDescriptors()
{
  result = closure #1 in variable initialization expression of static DOCNaturalLanguageFileTypeSuggester.defaultNaturalLanguageFileTypeDescriptors();
  static DOCNaturalLanguageFileTypeSuggester.defaultNaturalLanguageFileTypeDescriptors = result;
  return result;
}

id closure #1 in variable initialization expression of static DOCNaturalLanguageFileTypeSuggester.defaultNaturalLanguageFileTypeDescriptors()
{
  v120 = type metadata accessor for DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor();
  v0 = *(v120 - 8);
  MEMORY[0x28223BE20](v120, v1);
  v3 = (&v113 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4, v5);
  v7 = (&v113 - v6);
  MEMORY[0x28223BE20](v8, v9);
  v11 = (&v113 - v10);
  MEMORY[0x28223BE20](v12, v13);
  v15 = (&v113 - v14);
  MEMORY[0x28223BE20](v16, v17);
  v19 = (&v113 - v18);
  result = _DocumentManagerBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v21 = result;
  v22.value._object = 0xEB00000000656C62;
  v22.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v121._object = 0x8000000249BD5530;
  v23._countAndFlagsBits = 0xD000000000000015;
  v23._object = 0x8000000249BD5510;
  v121._countAndFlagsBits = 0xD00000000000002CLL;
  v24._countAndFlagsBits = 0x736567616D49;
  v24._object = 0xE600000000000000;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v22, v21, v24, v121);
  object = v25._object;
  countAndFlagsBits = v25._countAndFlagsBits;

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v26 = result;
  v116 = v0;
  v117 = v3;
  v27._object = 0xEF656C7469546D6FLL;
  v122._object = 0x8000000249BD5560;
  v27._countAndFlagsBits = 0x7441736567616D49;
  v122._countAndFlagsBits = 0xD000000000000027;
  v28.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v28.value._object = 0xEB00000000656C62;
  v29._countAndFlagsBits = 0x736567616D49;
  v29._object = 0xE600000000000000;
  v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v28, v26, v29, v122);

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v31 = result;
  v123._object = 0x8000000249BD55B0;
  v32._countAndFlagsBits = 0x707C736567616D69;
  v32._object = 0xEF73657275746369;
  v33._object = 0x8000000249BD5590;
  v123._countAndFlagsBits = 0xD000000000000063;
  v33._countAndFlagsBits = 0xD000000000000013;
  v34.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v34.value._object = 0xEB00000000656C62;
  v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, v34, v31, v32, v123);

  v36 = String.doc_pipeSeparatedSanitizedComponentsForComparison.getter(v35._countAndFlagsBits, v35._object);

  static UTType.image.getter();
  v37 = object;
  v19->_countAndFlagsBits = countAndFlagsBits;
  v19->_object = v37;
  v19[1]._countAndFlagsBits = 0x6F746F6870;
  v19[1]._object = 0xE500000000000000;
  v19[2] = v30;
  v19[3]._countAndFlagsBits = 0x6F746F6870;
  v19[3]._object = 0xE500000000000000;
  v19[4]._countAndFlagsBits = v36;
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v38 = result;
  v124._object = 0x8000000249BD5640;
  v39._countAndFlagsBits = 0xD000000000000015;
  v39._object = 0x8000000249BD5620;
  v124._countAndFlagsBits = 0xD00000000000002CLL;
  v40.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v40.value._object = 0xEB00000000656C62;
  v41._countAndFlagsBits = 0x736F65646956;
  v41._object = 0xE600000000000000;
  v42 = NSLocalizedString(_:tableName:bundle:value:comment:)(v39, v40, v38, v41, v124);
  object = v42._object;
  countAndFlagsBits = v42._countAndFlagsBits;

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v43 = result;
  v125._object = 0x8000000249BD5670;
  v44._countAndFlagsBits = 0x7441736F65646956;
  v125._countAndFlagsBits = 0xD000000000000027;
  v44._object = 0xEF656C7469546D6FLL;
  v45.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v45.value._object = 0xEB00000000656C62;
  v46._countAndFlagsBits = 0x736F65646956;
  v46._object = 0xE600000000000000;
  v47 = NSLocalizedString(_:tableName:bundle:value:comment:)(v44, v45, v43, v46, v125);

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v48 = result;
  v126._object = 0x8000000249BD56C0;
  v49._countAndFlagsBits = 0x6D7C736F65646976;
  v49._object = 0xED0000736569766FLL;
  v50._object = 0x8000000249BD56A0;
  v126._countAndFlagsBits = 0xD000000000000063;
  v50._countAndFlagsBits = 0xD000000000000013;
  v51.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v51.value._object = 0xEB00000000656C62;
  v52 = NSLocalizedString(_:tableName:bundle:value:comment:)(v50, v51, v48, v49, v126);

  v53 = String.doc_pipeSeparatedSanitizedComponentsForComparison.getter(v52._countAndFlagsBits, v52._object);

  static UTType.movie.getter();
  v54 = object;
  v15->_countAndFlagsBits = countAndFlagsBits;
  v15->_object = v54;
  v15[1]._countAndFlagsBits = 0x6569766F6DLL;
  v15[1]._object = 0xE500000000000000;
  v15[2] = v47;
  v15[3]._countAndFlagsBits = 0x6569766F6DLL;
  v15[3]._object = 0xE500000000000000;
  v15[4]._countAndFlagsBits = v53;
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v55 = result;
  v127._object = 0x8000000249BD5750;
  v56._countAndFlagsBits = 0xD000000000000015;
  v56._object = 0x8000000249BD5730;
  v127._countAndFlagsBits = 0xD000000000000031;
  v57.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v57.value._object = 0xEB00000000656C62;
  v58._countAndFlagsBits = 0x6946206F69647541;
  v58._object = 0xEB0000000073656CLL;
  v59 = NSLocalizedString(_:tableName:bundle:value:comment:)(v56, v57, v55, v58, v127);
  object = v59._object;
  countAndFlagsBits = v59._countAndFlagsBits;

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v60 = result;
  v128._object = 0x8000000249BD5790;
  v61._countAndFlagsBits = 0x7441736F69647541;
  v128._countAndFlagsBits = 0xD00000000000002CLL;
  v61._object = 0xEF656C7469546D6FLL;
  v62.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v62.value._object = 0xEB00000000656C62;
  v63._countAndFlagsBits = 0x6946206F69647541;
  v63._object = 0xEB0000000073656CLL;
  v64 = NSLocalizedString(_:tableName:bundle:value:comment:)(v61, v62, v60, v63, v128);

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v65 = result;
  v129._object = 0x8000000249BD57E0;
  v66._countAndFlagsBits = 0x6F737C6F69647561;
  v66._object = 0xEB00000000646E75;
  v67._object = 0x8000000249BD57C0;
  v129._countAndFlagsBits = 0xD000000000000068;
  v67._countAndFlagsBits = 0xD000000000000013;
  v68.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v68.value._object = 0xEB00000000656C62;
  v69 = NSLocalizedString(_:tableName:bundle:value:comment:)(v67, v68, v65, v66, v129);

  v70 = String.doc_pipeSeparatedSanitizedComponentsForComparison.getter(v69._countAndFlagsBits, v69._object);

  static UTType.audio.getter();
  v71 = object;
  v11->_countAndFlagsBits = countAndFlagsBits;
  v11->_object = v71;
  v11[1]._countAndFlagsBits = 0x636973756DLL;
  v11[1]._object = 0xE500000000000000;
  v11[2] = v64;
  v11[3]._countAndFlagsBits = 0x636973756DLL;
  v11[3]._object = 0xE500000000000000;
  v11[4]._countAndFlagsBits = v70;
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v72 = result;
  v115 = v11;
  v130._object = 0x8000000249BD5870;
  v73._countAndFlagsBits = 0xD00000000000001CLL;
  v73._object = 0x8000000249BD5850;
  v130._countAndFlagsBits = 0xD000000000000038;
  v74.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v74.value._object = 0xEB00000000656C62;
  v75._countAndFlagsBits = 0x61746E6573657250;
  v75._object = 0xED0000736E6F6974;
  v76 = NSLocalizedString(_:tableName:bundle:value:comment:)(v73, v74, v72, v75, v130);
  object = v76._object;
  countAndFlagsBits = v76._countAndFlagsBits;

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v77 = result;
  v114 = v15;
  v131._object = 0x8000000249BD58D0;
  v78._countAndFlagsBits = 0xD000000000000016;
  v78._object = 0x8000000249BD58B0;
  v131._countAndFlagsBits = 0xD000000000000033;
  v79.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v79.value._object = 0xEB00000000656C62;
  v80._countAndFlagsBits = 0x61746E6573657250;
  v80._object = 0xED0000736E6F6974;
  v81 = NSLocalizedString(_:tableName:bundle:value:comment:)(v78, v79, v77, v80, v131);

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v82 = result;
  v132._object = 0x8000000249BD5950;
  v83._countAndFlagsBits = 0xD00000000000001ALL;
  v83._object = 0x8000000249BD5910;
  v84._countAndFlagsBits = 0xD000000000000014;
  v84._object = 0x8000000249BD5930;
  v132._countAndFlagsBits = 0xD00000000000006FLL;
  v85.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v85.value._object = 0xEB00000000656C62;
  v86 = NSLocalizedString(_:tableName:bundle:value:comment:)(v83, v85, v82, v84, v132);

  v87 = String.doc_pipeSeparatedSanitizedComponentsForComparison.getter(v86._countAndFlagsBits, v86._object);

  static UTType.presentation.getter();
  v88 = object;
  v7->_countAndFlagsBits = countAndFlagsBits;
  v7->_object = v88;
  v7[1]._countAndFlagsBits = 0x642E6E6F2E636F64;
  v7[1]._object = 0xEA0000000000636FLL;
  v7[2] = v81;
  v7[3]._countAndFlagsBits = 0x642E6E6F2E636F64;
  v7[3]._object = 0xEA0000000000636FLL;
  v7[4]._countAndFlagsBits = v87;
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v89 = result;
  v133._object = 0x8000000249BD59E0;
  v90._countAndFlagsBits = 0xD000000000000018;
  v90._object = 0x8000000249BD59C0;
  v133._countAndFlagsBits = 0xD000000000000037;
  v91.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v91.value._object = 0xEB00000000656C62;
  v92._countAndFlagsBits = 0x4320656372756F53;
  v92._object = 0xEB0000000065646FLL;
  v93 = NSLocalizedString(_:tableName:bundle:value:comment:)(v90, v91, v89, v92, v133);
  object = v93._object;
  countAndFlagsBits = v93._countAndFlagsBits;

  result = _DocumentManagerBundle();
  v95 = v114;
  v94 = v115;
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v96 = result;
  v97._countAndFlagsBits = 0xD000000000000012;
  v134._object = 0x8000000249BD5A40;
  v97._object = 0x8000000249BD5A20;
  v134._countAndFlagsBits = 0xD000000000000032;
  v98.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v98.value._object = 0xEB00000000656C62;
  v99._countAndFlagsBits = 0x4320656372756F53;
  v99._object = 0xEB0000000065646FLL;
  v100 = NSLocalizedString(_:tableName:bundle:value:comment:)(v97, v98, v96, v99, v134);

  result = _DocumentManagerBundle();
  if (result)
  {
    v101 = result;
    v135._object = 0x8000000249BD5AC0;
    v102._countAndFlagsBits = 0xD000000000000016;
    v102._object = 0x8000000249BD5A80;
    v103._countAndFlagsBits = 0xD000000000000016;
    v103._object = 0x8000000249BD5AA0;
    v135._countAndFlagsBits = 0xD00000000000006ELL;
    v104.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v104.value._object = 0xEB00000000656C62;
    v105 = NSLocalizedString(_:tableName:bundle:value:comment:)(v102, v104, v101, v103, v135);

    v106 = String.doc_pipeSeparatedSanitizedComponentsForComparison.getter(v105._countAndFlagsBits, v105._object);

    v107 = v117;
    static UTType.sourceCode.getter();
    v108 = object;
    v107->_countAndFlagsBits = countAndFlagsBits;
    v107->_object = v108;
    v107[1]._countAndFlagsBits = 0x642E6E6F2E636F64;
    v107[1]._object = 0xEA0000000000636FLL;
    v107[2] = v100;
    v107[3]._countAndFlagsBits = 0x642E6E6F2E636F64;
    v107[3]._object = 0xEA0000000000636FLL;
    v107[4]._countAndFlagsBits = v106;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables35DOCNaturalLanguageFileTypeSuggesterC0ghiJ10Descriptor33_7932FEBB571AFC57FDF941318C04239BLLVGMd);
    v109 = *(v116 + 72);
    v110 = (*(v116 + 80) + 32) & ~*(v116 + 80);
    v111 = swift_allocObject();
    *(v111 + 16) = xmmword_249BA54A0;
    v112 = v111 + v110;
    outlined init with copy of DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor(v19, v112);
    outlined init with copy of DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor(v95, v112 + v109);
    outlined init with copy of DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor(v94, v112 + 2 * v109);
    outlined init with copy of DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor(v7, v112 + 3 * v109);
    outlined init with take of DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor(v107, v112 + 4 * v109);
    outlined destroy of DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor(v7);
    outlined destroy of DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor(v94);
    outlined destroy of DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor(v95);
    outlined destroy of DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor(v19);
    return v111;
  }

LABEL_31:
  __break(1u);
  return result;
}

Swift::Void __swiftcall DOCNaturalLanguageFileTypeSuggester.deliverSuggestions(for:forSearchId:confirmedSuggestions:)(Swift::String a1, Swift::Int forSearchId, Swift::OpaquePointer confirmedSuggestions)
{
  v4 = v3;
  v76 = a1;
  v7 = type metadata accessor for DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor();
  v8 = *(v7 - 8);
  v74 = v7;
  v75 = v8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = &v68 - v15;
  if ([*(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_configuration) isFilesApp] && specialized DOCFileTypeSuggester.shouldDeliverSuggestions(forConfirmedSuggestions:)(confirmedSuggestions._rawValue))
  {
    v70 = forSearchId;
    v17 = swift_allocObject();
    *(v17 + 16) = MEMORY[0x277D84F90];
    v82 = v76;
    v18 = [objc_opt_self() currentLocale];
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = type metadata accessor for Locale();
    (*(*(v19 - 8) + 56))(v16, 0, 1, v19);
    lazy protocol witness table accessor for type String and conformance String();
    v20 = StringProtocol.folding(options:locale:)();
    v22 = v21;
    outlined destroy of CharacterSet?(v16, &_s10Foundation6LocaleVSgMd);
    v71 = v4;
    v23 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables35DOCNaturalLanguageFileTypeSuggester_naturalLanguageFileTypeDescriptors);
    v79 = *(v23 + 16);
    if (v79)
    {
      v73 = (v17 + 16);
      v69 = v17;
      v24 = v75;
      v78 = v23 + ((*(v75 + 80) + 32) & ~*(v75 + 80));

      v25 = 0;
      v72 = xmmword_249B9A480;
      v77 = v23;
      while (2)
      {
        if (v25 >= *(v23 + 16))
        {
LABEL_22:
          __break(1u);
          return;
        }

        outlined init with copy of DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor(v78 + *(v24 + 72) * v25, v11);
        v80 = v25 + 1;
        v26 = *(v11 + 8);
        v27 = v26 + 40;
        v28 = -*(v26 + 16);
        v29 = -1;
        while (v28 + v29 != -1)
        {
          if (++v29 >= *(v26 + 16))
          {
            __break(1u);
            goto LABEL_22;
          }

          v30 = v27 + 16;

          v31._countAndFlagsBits = v20;
          v31._object = v22;
          v32 = String.hasPrefix(_:)(v31);

          v27 = v30;
          if (v32)
          {
            v33 = objc_allocWithZone(type metadata accessor for DOCFileTypeSuggestion());
            *&v33[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_7932FEBB571AFC57FDF941318C04239B21DOCFileTypeSuggestion_contentTypes] = 0;
            v33[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchSuggestion_category] = 0;
            v34 = &v33[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchSuggestion_inputString];
            object = v76._object;
            *v34 = v76._countAndFlagsBits;
            v34[1] = object;
            v36 = type metadata accessor for DOCSearchSuggestion();
            v81.receiver = v33;
            v81.super_class = v36;

            v37 = objc_msgSendSuper2(&v81, sel_init);
            v38 = *v11;
            v39 = *(v11 + 1);
            v40 = MEMORY[0x277D85000];
            v41 = *((*MEMORY[0x277D85000] & *v37) + 0xB8);
            v42 = v37;

            v41(v38, v39);
            v43 = *(v11 + 4);
            v44 = *(v11 + 5);
            v45 = *((*v40 & *v42) + 0xE8);
            v46 = v42;

            v45(v43, v44);
            v47 = MEMORY[0x277D85000];
            (*((*MEMORY[0x277D85000] & *v46) + 0x1C0))(2);
            v48 = MEMORY[0x24C1FAD20](*(v11 + 2), *(v11 + 3));
            v49 = objc_opt_self();
            v50 = [v49 systemImageNamed_];

            (*((*v47 & *v46) + 0x118))(v50);
            v51 = MEMORY[0x24C1FAD20](*(v11 + 6), *(v11 + 7));
            v52 = [v49 systemImageNamed_];

            (*((*v47 & *v46) + 0x148))(v52);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd);
            v53 = type metadata accessor for UTType();
            v54 = *(v53 - 8);
            v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
            v56 = swift_allocObject();
            *(v56 + 16) = v72;
            (*(v54 + 16))(v56 + v55, &v11[*(v74 + 36)], v53);
            *(v46 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_7932FEBB571AFC57FDF941318C04239B21DOCFileTypeSuggestion_contentTypes) = v56;

            v58 = v73;
            MEMORY[0x24C1FB090](v57);
            if (*((*v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v24 = v75;
            break;
          }
        }

        outlined destroy of DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor(v11);
        v25 = v80;
        v23 = v77;
        if (v80 != v79)
        {
          continue;
        }

        break;
      }

      v17 = v69;
    }

    v62 = swift_allocObject();
    v64 = v70;
    v63 = v71;
    v62[2] = v71;
    v62[3] = v17;
    countAndFlagsBits = v76._countAndFlagsBits;
    v66 = v76._object;
    v62[4] = v64;
    v62[5] = countAndFlagsBits;
    v62[6] = v66;
    v67 = v63;

    DOCRunInMainThread(_:)();
  }

  else if ((*((*MEMORY[0x277D85000] & *v4) + 0x60))())
  {
    v60 = v59;
    ObjectType = swift_getObjectType();
    (*(v60 + 8))(v4, MEMORY[0x277D84F90], forSearchId, v76._countAndFlagsBits, v76._object, ObjectType, v60);

    swift_unknownObjectRelease();
  }
}

uint64_t closure #2 in DOCNaturalLanguageFileTypeSuggester.deliverSuggestions(for:forSearchId:confirmedSuggestions:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = (*((*MEMORY[0x277D85000] & *a1) + 0x60))();
  if (result)
  {
    v12 = v11;
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v14 = *(a2 + 16);
    v15 = *(v12 + 8);

    v15(a1, v14, a3, a4, a5, ObjectType, v12);

    return swift_unknownObjectRelease();
  }

  return result;
}

id DOCNaturalLanguageFileTypeSuggester.__allocating_init(configuration:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables35DOCNaturalLanguageFileTypeSuggester_naturalLanguageFileTypeDescriptors;
  if (one-time initialization token for defaultNaturalLanguageFileTypeDescriptors != -1)
  {
    swift_once();
  }

  *&v4[v5] = static DOCNaturalLanguageFileTypeSuggester.defaultNaturalLanguageFileTypeDescriptors;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_configuration] = a1;
  v7.receiver = v4;
  v7.super_class = type metadata accessor for DOCSuggester();

  return objc_msgSendSuper2(&v7, sel_init);
}

id DOCNaturalLanguageFileTypeSuggester.init(configuration:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables35DOCNaturalLanguageFileTypeSuggester_naturalLanguageFileTypeDescriptors;
  if (one-time initialization token for defaultNaturalLanguageFileTypeDescriptors != -1)
  {
    swift_once();
  }

  *&v1[v3] = static DOCNaturalLanguageFileTypeSuggester.defaultNaturalLanguageFileTypeDescriptors;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_configuration] = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DOCSuggester();

  return objc_msgSendSuper2(&v5, sel_init);
}

id DOCFileTypeSuggestion.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(result + 16);
  if (v5)
  {
    v9 = v5 - 1;
    v10 = (result + 40);
    do
    {
      v11 = v9;
      v12 = v10[3];
      v13 = v10[4];
      v14 = v10[1];
      v15 = v10[2];
      v16 = *v10;
      v17[0] = *(v10 - 1);
      v17[1] = v16;
      v17[2] = v14;
      v17[3] = v15;
      v17[4] = v12;
      v17[5] = v13;

      closure #1 in closure #1 in closure #1 in DOCFileTypeSuggester.deliverSuggestions(for:forSearchId:confirmedSuggestions:)(v17, a2, a3, a4);

      if (v4)
      {
        break;
      }

      v9 = v11 - 1;
      v10 += 6;
    }

    while (v11);
  }

  return result;
}

BOOL specialized DOCFileTypeSuggester.shouldDeliverSuggestions(forConfirmedSuggestions:)(unint64_t a1)
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
  v5 = MEMORY[0x277D85000];
  do
  {
    v6 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x24C1FC540](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_14;
      }

      v7 = *(a1 + 8 * v4 + 32);
    }

    v8 = v7;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v9 = (*((*v5 & *v7) + 0x1B8))();

    v4 = v6 + 1;
  }

  while (v9 != 2);
  return v3 == v6;
}

uint64_t type metadata accessor for DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor()
{
  result = type metadata singleton initialization cache for DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor;
  if (!type metadata singleton initialization cache for DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor(uint64_t a1)
{
  v2 = type metadata accessor for DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata completion function for DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor()
{
  type metadata accessor for [String]();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UTType();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for [String]()
{
  if (!lazy cache variable for type metadata for [String])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String]);
    }
  }
}