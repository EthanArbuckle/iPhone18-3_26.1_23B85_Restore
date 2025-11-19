uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for TetraSessionState() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    if (v3 < 0)
    {
      v7 = v3;
    }

    else
    {
      v7 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    MEMORY[0x231891D10](v7);
    goto LABEL_14;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_14:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t specialized implicit closure #3 in implicit closure #2 in closure #3 in Data.append<A>(contentsOf:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = NSData.startIndex.getter();
  v9 = result;
  if (!a2)
  {
LABEL_12:
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
LABEL_15:
    *a1 = a4;
    a1[1] = v9;
    v14 = a4;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    while (1)
    {
      v11 = v9 + v10;
      if (v9 + v10 == NSData.endIndex.getter())
      {
        v9 += v10;
        a3 = v10;
        goto LABEL_15;
      }

      v12 = NSData.subscript.getter();
      v13 = NSData.startIndex.getter();
      result = NSData.endIndex.getter();
      if (v11 < v13 || v11 >= result)
      {
        break;
      }

      *(a2 + v10) = v12;
      if (a3 - 1 == v10)
      {
        v9 += v10 + 1;
        goto LABEL_15;
      }

      if (__OFADD__(++v10, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in TetraRatchetState.openMessage<A>(_:sessionDST:didRatchet:)(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = v7[2];
  v14(&v26 - v12, *a1 + OBJC_IVAR____TtC17MessageProtection24ReceivingKeyTetraRatchet_receivingKey, v6);
  v15 = a3(0);
  v16 = (v14)(v11, a2 + *(v15 + 28), v6);
  v17 = MEMORY[0x231891580](v16);
  v19 = v18;
  v20 = MEMORY[0x231891580]();
  v22 = v21;
  v23 = specialized static Data.== infix(_:_:)(v17, v19, v20, v21);
  outlined consume of Data._Representation(v20, v22);
  outlined consume of Data._Representation(v17, v19);
  v24 = v7[1];
  v24(v11, v6);
  v24(v13, v6);
  return v23 & 1;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x231890D50]();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t specialized static Data.== infix(_:_:)(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data.withUnsafeBytes<A>(_:)(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for TetraSessionState();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v4, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMd, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMR, type metadata accessor for TetraSessionState);
    *v2 = v4;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, a2, 0);
  *v2 = v4;
  return result;
}

void specialized static TetraAPI.conversationInfo(sendingURI:sendingPushToken:senderPublicKeyCompactRepresentation:receivingURI:receivingPushToken:receivingPublicKeyCompactRepresentation:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, void *a8, uint64_t a9, unint64_t a10)
{
  v14 = static os_log_type_t.info.getter();
  v15 = MessageProtectionLog();
  if (!v15)
  {
    goto LABEL_43;
  }

  v16 = v15;
  v18 = a9;
  v17 = a10;
  v116 = a8;
  if (os_log_type_enabled(v15, v14))
  {
    v19 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    v123 = v114;
    *v19 = 136316418;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v123);
    *(v19 + 12) = 2080;
    v20 = [a3 base64EncodedStringWithOptions_];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v113 = v14;
    v22 = a5;
    v24 = v23;

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v24, &v123);

    *(v19 + 14) = v25;
    *(v19 + 22) = 2080;
    v26 = Data.base64EncodedString(options:)(0);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26._countAndFlagsBits, v26._object, &v123);

    *(v19 + 24) = v27;
    *(v19 + 32) = 2080;
    *(v19 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a6, a7, &v123);
    *(v19 + 42) = 2080;
    v28 = [a8 base64EncodedStringWithOptions_];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v123);
    v18 = a9;

    *(v19 + 44) = v32;
    *(v19 + 52) = 2080;
    v17 = a10;
    v33 = Data.base64EncodedString(options:)(0);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33._countAndFlagsBits, v33._object, &v123);
    a5 = v22;

    *(v19 + 54) = v34;
    _os_log_impl(&dword_22B404000, v16, v113, "Computing ConversationID with sendingURI:%s, sendingPushToken:%s, sendingPublicKey:%s receivingURI: %s receivingPushToken: %s receivingPublicKey:%s", v19, 0x3Eu);
    swift_arrayDestroy();
    MEMORY[0x231892DF0](v114, -1, -1);
    MEMORY[0x231892DF0](v19, -1, -1);
  }

  v35 = a5 >> 62;
  if ((a5 >> 62) <= 1)
  {
    if (!v35)
    {
      v36 = BYTE6(a5);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v35 != 2)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v38 = *(a4 + 16);
  v37 = *(a4 + 24);
  v39 = __OFSUB__(v37, v38);
  v36 = v37 - v38;
  if (v39)
  {
    __break(1u);
LABEL_11:
    LODWORD(v36) = HIDWORD(a4) - a4;
    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v36 = v36;
  }

LABEL_13:
  if (v36 != 32)
  {
    goto LABEL_44;
  }

  v40 = v17 >> 62;
  if ((v17 >> 62) <= 1)
  {
    if (!v40)
    {
      v41 = BYTE6(v17);
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (v40 != 2)
  {
    goto LABEL_45;
  }

  v43 = *(v18 + 16);
  v42 = *(v18 + 24);
  v39 = __OFSUB__(v42, v43);
  v41 = v42 - v43;
  if (v39)
  {
    __break(1u);
LABEL_21:
    LODWORD(v41) = HIDWORD(v18) - v18;
    if (__OFSUB__(HIDWORD(v18), v18))
    {
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v41 = v41;
  }

LABEL_23:
  if (v41 == 32)
  {
    v115 = a5;
    v44 = String.count.getter();
    v45 = I2OSP(value:outputByteCount:)(v44, 4);
    v47 = v46;

    v48 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(a1, a2);
    v50 = v49;
    v127 = v45;
    v128 = v47;
    v51 = MEMORY[0x277CC9318];
    v125 = MEMORY[0x277CC9318];
    v126 = MEMORY[0x277CC9300];
    v123 = v48;
    v124 = v49;
    v52 = __swift_project_boxed_opaque_existential_1(&v123, MEMORY[0x277CC9318]);
    v53 = *v52;
    v54 = v52[1];
    outlined copy of Data._Representation(v45, v47);
    outlined copy of Data._Representation(v48, v50);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v53, v54);
    outlined consume of Data._Representation(v48, v50);
    outlined consume of Data._Representation(v45, v47);
    __swift_destroy_boxed_opaque_existential_1(&v123);
    v55 = v127;
    v56 = v128;
    v57 = NSData.startIndex.getter();
    v58 = NSData.endIndex.getter();
    v59 = NSData.startIndex.getter();
    v60 = NSData.endIndex.getter();
    if (v57 < v59 || v60 < v57)
    {
      __break(1u);
    }

    else
    {
      v61 = NSData.startIndex.getter();
      v62 = NSData.endIndex.getter();
      if (v58 >= v61 && v62 >= v58)
      {
        if (!__OFSUB__(v58, v57))
        {
          v63 = I2OSP(value:outputByteCount:)(v58 - v57, 4);
          v65 = v64;
          v129 = v55;
          v130 = v56;
          v125 = v51;
          v66 = MEMORY[0x277CC9300];
          v126 = MEMORY[0x277CC9300];
          v123 = v63;
          v124 = v64;
          v67 = __swift_project_boxed_opaque_existential_1(&v123, v51);
          v68 = *v67;
          v69 = v67[1];
          outlined copy of Data._Representation(v55, v56);
          outlined copy of Data._Representation(v63, v65);
          specialized Data._Representation.withUnsafeBytes<A>(_:)(v68, v69);
          outlined consume of Data._Representation(v63, v65);
          outlined consume of Data._Representation(v55, v56);
          __swift_destroy_boxed_opaque_existential_1(&v123);
          v70 = v129;
          v71 = v130;
          v127 = v129;
          v128 = v130;
          outlined copy of Data._Representation(v129, v130);
          specialized Data.append<A>(contentsOf:)(a3);
          outlined consume of Data._Representation(v70, v71);
          v72 = v127;
          v73 = v128;
          v129 = v127;
          v130 = v128;
          v125 = v51;
          v126 = v66;
          v123 = a4;
          v124 = v115;
          v74 = __swift_project_boxed_opaque_existential_1(&v123, v51);
          v75 = *v74;
          v76 = v74[1];
          outlined copy of Data._Representation(a4, v115);
          outlined copy of Data._Representation(v72, v73);
          specialized Data._Representation.withUnsafeBytes<A>(_:)(v75, v76);
          outlined consume of Data._Representation(v72, v73);
          __swift_destroy_boxed_opaque_existential_1(&v123);
          v77 = v129;
          v122 = v130;
          v78 = String.count.getter();
          v79 = I2OSP(value:outputByteCount:)(v78, 4);
          v81 = v80;

          v82 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(a6, a7);
          v84 = v83;
          v127 = v79;
          v128 = v81;
          v125 = v51;
          v126 = v66;
          v123 = v82;
          v124 = v83;
          v85 = __swift_project_boxed_opaque_existential_1(&v123, v51);
          v86 = *v85;
          v87 = v85[1];
          outlined copy of Data._Representation(v79, v81);
          outlined copy of Data._Representation(v82, v84);
          specialized Data._Representation.withUnsafeBytes<A>(_:)(v86, v87);
          outlined consume of Data._Representation(v82, v84);
          outlined consume of Data._Representation(v79, v81);
          __swift_destroy_boxed_opaque_existential_1(&v123);
          v88 = v127;
          v89 = v128;
          v90 = NSData.startIndex.getter();
          v91 = NSData.endIndex.getter();
          v92 = NSData.startIndex.getter();
          v93 = NSData.endIndex.getter();
          if (v90 >= v92 && v93 >= v90)
          {
            v94 = NSData.startIndex.getter();
            v95 = NSData.endIndex.getter();
            if (v91 >= v94 && v95 >= v91)
            {
              if (!__OFSUB__(v91, v90))
              {
                v96 = I2OSP(value:outputByteCount:)(v91 - v90, 4);
                v98 = v97;
                v129 = v88;
                v130 = v89;
                v125 = v51;
                v120 = v77;
                v99 = MEMORY[0x277CC9300];
                v126 = MEMORY[0x277CC9300];
                v123 = v96;
                v124 = v97;
                v100 = __swift_project_boxed_opaque_existential_1(&v123, v51);
                v101 = *v100;
                v102 = v100[1];
                outlined copy of Data._Representation(v88, v89);
                outlined copy of Data._Representation(v96, v98);
                specialized Data._Representation.withUnsafeBytes<A>(_:)(v101, v102);
                outlined consume of Data._Representation(v96, v98);
                outlined consume of Data._Representation(v88, v89);
                __swift_destroy_boxed_opaque_existential_1(&v123);
                v103 = v129;
                v104 = v130;
                v127 = v129;
                v128 = v130;
                outlined copy of Data._Representation(v129, v130);
                specialized Data.append<A>(contentsOf:)(v116);
                outlined consume of Data._Representation(v103, v104);
                v105 = v127;
                v106 = v128;
                v129 = v127;
                v130 = v128;
                v125 = v51;
                v126 = v99;
                v123 = a9;
                v124 = a10;
                v107 = __swift_project_boxed_opaque_existential_1(&v123, v51);
                v108 = *v107;
                v109 = v107[1];
                outlined copy of Data._Representation(a9, a10);
                outlined copy of Data._Representation(v105, v106);
                specialized Data._Representation.withUnsafeBytes<A>(_:)(v108, v109);
                outlined consume of Data._Representation(v105, v106);
                __swift_destroy_boxed_opaque_existential_1(&v123);
                v110 = v129;
                v111 = v130;
                v112 = swift_allocObject();
                v112[2] = v120;
                v112[3] = v122;
                v112[4] = v110;
                v112[5] = v111;
                return;
              }

              goto LABEL_40;
            }

LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
            goto LABEL_41;
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_45:
  __break(1u);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_yXlTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefayXlGMd, &_ss18_DictionaryStorageCySo11CFStringRefayXlGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefaypGMd, &_ss18_DictionaryStorageCySo11CFStringRefaypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of TetraSessionStates?(v4, &v11, &_sSo11CFStringRefa_yptMd, &_sSo11CFStringRefa_yptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t specialized static TetraAPI.markForStateReset(ourURI:ourPushToken:theirURI:theirPushToken:theirRegistration:signedByOur:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5, char *a6, char *a7, void *a8)
{
  v227 = a5;
  v228 = a6;
  v225 = a3;
  v226 = a4;
  v230[3] = *MEMORY[0x277D85DE8];
  v217 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v211 = *(v217 - 8);
  v12 = *(v211 + 8);
  MEMORY[0x28223BE20](v217);
  v212 = &v201 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v213 = &v201 - v16;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMd, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMR);
  v17 = *(*(v214 - 8) + 64);
  MEMORY[0x28223BE20](v214);
  v215 = &v201 - v18;
  v223 = type metadata accessor for TetraSessionState();
  v216 = *(v223 - 1);
  v19 = *(v216 + 64);
  v20 = MEMORY[0x28223BE20](v223);
  v220 = &v201 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v219 = &v201 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v221 = (&v201 - v25);
  MEMORY[0x28223BE20](v24);
  v224 = (&v201 - v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v201 - v29;
  v31 = type metadata accessor for TetraSessionStates();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v222 = (&v201 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = [a8 publicKey];
  v36 = [v35 compactRepresentation];

  v37 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v218 = a7;
  v40 = [*&a7[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_signingPublicKey] compactRepresentation];
  v41 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  specialized static TetraAPI.conversationInfo(sendingURI:sendingPushToken:senderPublicKeyCompactRepresentation:receivingURI:receivingPushToken:receivingPublicKeyCompactRepresentation:)(a1, a2, v225, v37, v39, v226, v227, v228, v41, v43);
  v45 = v44;
  v47 = v46;
  outlined consume of Data._Representation(v41, v43);
  outlined consume of Data._Representation(v37, v39);
  v48 = v45(1);
  v50 = v49;
  v51.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v48, v50);
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v52 = static TetraDBManager.sharedInstance;
  TetraDBManager.getSessionForNGMIdentity(conversationID:)(v51.super.isa, v30);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    outlined destroy of TetraSessionStates?(v30, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
    v53 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
    v54 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v54, v53))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138412290;
      *(v55 + 4) = v51;
      v56->super.isa = v51.super.isa;
      v57 = v51.super.isa;
      _os_log_impl(&dword_22B404000, v54, v53, "We failed to reset the session state for the provided session: %@.", v55, 0xCu);
      outlined destroy of TetraSessionStates?(v56, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x231892DF0](v56, -1, -1);
      MEMORY[0x231892DF0](v55, -1, -1);
    }

    v58 = 0;
LABEL_7:

    v59 = *MEMORY[0x277D85DE8];
    return v58;
  }

  v61 = v222;
  outlined init with take of TetraRatchetOuterMessage(v30, v222, type metadata accessor for TetraSessionStates);
  v62 = *(v31 + 20);
  v63 = *(v61 + v62);
  if ((v63 == 2 || (v63 & 1) == 0) && (*(v61 + v223[9]) & 1) == 0)
  {
LABEL_29:
    TetraDBManager.saveTetraSession(conversationID:sessionStates:needsSync:)(v51.super.isa, v61, 0);
    v86 = static os_log_type_t.info.getter();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
    isa = static OS_os_log.default.getter();
    if (os_log_type_enabled(isa, v86))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      *v88 = 138412290;
      *(v88 + 4) = v51;
      v89->super.isa = v51.super.isa;
      v90 = v51.super.isa;
      _os_log_impl(&dword_22B404000, isa, v86, "Persisted the request to reset the following session: %@.", v88, 0xCu);
      outlined destroy of TetraSessionStates?(v89, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x231892DF0](v89, -1, -1);
      MEMORY[0x231892DF0](v88, -1, -1);
    }

    else
    {
      v90 = isa;
      isa = v51.super.isa;
    }

    outlined destroy of TetraOuterMessageType(v61, type metadata accessor for TetraSessionStates);
    v58 = 1;
    goto LABEL_7;
  }

  v64 = v218;
  v65 = v224;
  TetraSessionState.init(remoteTetraRegistration:sessionDST:)(v64, v45, v47, v224);
  v210 = v62;
  v66 = v65;
  if (specialized static TetraSessionState.== infix(_:_:)(v61, v65))
  {
    outlined assign with copy of TetraSessionState(v65, v61);
LABEL_28:
    TetraSessionStates.cleanupPreviousSessionStates()();
    outlined destroy of TetraOuterMessageType(v66, type metadata accessor for TetraSessionState);
    *(v61 + v210) = 0;
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMd, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMR);
  v67 = ((*(v216 + 80) + 32) & ~*(v216 + 80));
  v226 = *(v216 + 72);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_22B48D7C0;
  v218 = v67;
  outlined init with copy of TetraOuterMessageType(v61, &v67[v68], type metadata accessor for TetraSessionState);
  v69 = *(v31 + 24);
  v70 = *(v61 + v69);
  v230[0] = v68;
  specialized Array.append<A>(contentsOf:)(v70);
  v71 = v230[0];
  v72 = outlined assign with copy of TetraSessionState(v66, v61);
  MEMORY[0x28223BE20](v72);
  v200 = v66;
  v73 = specialized Collection.firstIndex(where:)(closure #1 in TetraSessionStates.makeDefault(_:)partial apply, (&v201 - 4), v71);
  if (v74)
  {
    v75 = *(v71 + 16);
    v76 = v75;
    goto LABEL_19;
  }

  v76 = v73;
  v207 = v69;
  v208 = v52;
  v75 = v73 + 1;
  if (__OFADD__(v73, 1))
  {
LABEL_200:
    __break(1u);
LABEL_201:
    __break(1u);
LABEL_202:
    __break(1u);
LABEL_203:
    __break(1u);
LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
  }

  v209 = &v201;
  v78 = (v71 + 16);
  v77 = *(v71 + 16);
  v79 = v221;
  v80 = v224;
  if (v75 == v77)
  {
LABEL_17:
    if (v75 >= v76)
    {
      v69 = v207;
      if ((v76 & 0x8000000000000000) == 0)
      {
LABEL_19:
        v225 = v76;
        if (!__OFADD__(v75, v76 - v75))
        {
          v81 = v75;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v222 + v69) = v71;
          if (isUniquelyReferenced_nonNull_native && v76 <= *(v71 + 24) >> 1)
          {
            v83 = v81;
            v61 = v222;
          }

          else
          {
            if (v81 <= v76)
            {
              v84 = v76;
            }

            else
            {
              v84 = v81;
            }

            v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v84, 1, v71, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMd, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMR, type metadata accessor for TetraSessionState);
            v83 = v81;
            v71 = v85;
            v61 = v222;
            *(v222 + v69) = v85;
          }

          specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v225, v83, 0);
          *(v61 + v69) = v71;
          v66 = v224;
          goto LABEL_28;
        }

        goto LABEL_197;
      }

LABEL_196:
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
      goto LABEL_200;
    }

LABEL_195:
    __break(1u);
    goto LABEL_196;
  }

  v206 = (v211 + 48);
  v203 = (v211 + 32);
  v204 = (v211 + 8);
  v91 = &v218[v226 * v75];
  while (1)
  {
    v228 = v75;
    if (v75 >= v77)
    {
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
      goto LABEL_195;
    }

    v227 = v71;
    v92 = outlined init with copy of TetraOuterMessageType(&v91[v71], v79, type metadata accessor for TetraSessionState);
    if (*v79 != *v80)
    {
      goto LABEL_157;
    }

    v225 = v76;
    v93 = v223;
    v94 = v223[6];
    v95 = MEMORY[0x231891720](v92);
    v97 = v96;
    v98 = v93[6];
    v99 = MEMORY[0x231891720]();
    v101 = v97 >> 62;
    v102 = v100 >> 62;
    v216 = v95;
    if (v97 >> 62 == 3)
    {
      v103 = 0;
      if (v95)
      {
        v79 = v221;
        v76 = v225;
      }

      else
      {
        v79 = v221;
        v76 = v225;
        if (v97 == 0xC000000000000000 && v100 >> 62 == 3)
        {
          v103 = 0;
          if (!v99 && v100 == 0xC000000000000000)
          {
            outlined consume of Data._Representation(0, 0xC000000000000000);
            v104 = 0;
            v105 = 0xC000000000000000;
            goto LABEL_71;
          }
        }
      }
    }

    else if (v101 > 1)
    {
      v79 = v221;
      v76 = v225;
      if (v101 == 2)
      {
        v107 = *(v216 + 16);
        v106 = *(v216 + 24);
        v108 = __OFSUB__(v106, v107);
        v103 = v106 - v107;
        if (v108)
        {
          goto LABEL_202;
        }
      }

      else
      {
        v103 = 0;
      }
    }

    else
    {
      v79 = v221;
      v76 = v225;
      if (v101)
      {
        LODWORD(v103) = HIDWORD(v216) - v216;
        if (__OFSUB__(HIDWORD(v216), v216))
        {
          goto LABEL_201;
        }

        v103 = v103;
      }

      else
      {
        v103 = BYTE6(v97);
      }
    }

    v211 = v97;
    if (v102 > 1)
    {
      if (v102 != 2)
      {
        if (v103)
        {
LABEL_69:
          outlined consume of Data._Representation(v99, v100);
          outlined consume of Data._Representation(v216, v211);
          goto LABEL_157;
        }

LABEL_70:
        outlined consume of Data._Representation(v99, v100);
        v104 = v216;
        v105 = v211;
LABEL_71:
        outlined consume of Data._Representation(v104, v105);
        goto LABEL_72;
      }

      v111 = *(v99 + 16);
      v110 = *(v99 + 24);
      v108 = __OFSUB__(v110, v111);
      v109 = v110 - v111;
      if (v108)
      {
        goto LABEL_199;
      }
    }

    else if (v102)
    {
      LODWORD(v109) = HIDWORD(v99) - v99;
      if (__OFSUB__(HIDWORD(v99), v99))
      {
        goto LABEL_198;
      }

      v109 = v109;
    }

    else
    {
      v109 = BYTE6(v100);
    }

    if (v103 != v109)
    {
      goto LABEL_69;
    }

    if (v103 < 1)
    {
      goto LABEL_70;
    }

    if (v101 > 1)
    {
      if (v101 != 2)
      {
        memset(v230, 0, 14);
        v146 = v99;
        v147 = v100;
        outlined copy of Data._Representation(v99, v100);
        closure #1 in static Data.== infix(_:_:)(v230, v146, v147, &v229);
        outlined consume of Data._Representation(v146, v147);
        outlined consume of Data._Representation(v146, v147);
        outlined consume of Data._Representation(v216, v211);
        if ((v229 & 1) == 0)
        {
          goto LABEL_157;
        }

        goto LABEL_72;
      }

      v127 = *(v216 + 16);
      v202 = *(v216 + 24);
      v205 = v99;
      v128 = v100;
      outlined copy of Data._Representation(v99, v100);
      v129 = v211;
      v130 = __DataStorage._bytes.getter();
      if (v130)
      {
        v131 = __DataStorage._offset.getter();
        if (__OFSUB__(v127, v131))
        {
          goto LABEL_209;
        }

        v130 += v127 - v131;
        v129 = v211;
      }

      if (__OFSUB__(v202, v127))
      {
        goto LABEL_208;
      }

      MEMORY[0x231890D50]();
      v132 = v205;
      closure #1 in static Data.== infix(_:_:)(v130, v205, v128, v230);
      outlined consume of Data._Representation(v132, v128);
      v133 = v132;
      v134 = v128;
    }

    else
    {
      if (!v101)
      {
        v230[0] = v216;
        v112 = v216;
        v113 = v211;
        LODWORD(v230[1]) = v211;
        WORD2(v230[1]) = WORD2(v211);
        v205 = v230 + BYTE6(v211);
        v114 = v99;
        v115 = v100;
        outlined copy of Data._Representation(v99, v100);
        closure #1 in static Data.== infix(_:_:)(v230, v114, v115, &v229);
        outlined consume of Data._Representation(v114, v115);
        outlined consume of Data._Representation(v114, v115);
        outlined consume of Data._Representation(v112, v113);
        v116 = v229;
        goto LABEL_156;
      }

      v141 = v216;
      if (v216 >> 32 < v216)
      {
        goto LABEL_207;
      }

      v205 = v99;
      v202 = v100;
      outlined copy of Data._Representation(v99, v100);
      v142 = __DataStorage._bytes.getter();
      if (v142)
      {
        v143 = v142;
        v144 = __DataStorage._offset.getter();
        if (__OFSUB__(v141, v144))
        {
          goto LABEL_210;
        }

        v145 = v141 - v144 + v143;
      }

      else
      {
        v145 = 0;
      }

      v129 = v211;
      MEMORY[0x231890D50]();
      v180 = v205;
      v181 = v202;
      closure #1 in static Data.== infix(_:_:)(v145, v205, v202, v230);
      outlined consume of Data._Representation(v180, v181);
      v133 = v180;
      v134 = v181;
    }

    outlined consume of Data._Representation(v133, v134);
    outlined consume of Data._Representation(v216, v129);
    v116 = v230[0];
    v79 = v221;
LABEL_156:
    v76 = v225;
    if ((v116 & 1) == 0)
    {
      goto LABEL_157;
    }

LABEL_72:
    v117 = v223[8];
    v118 = *(v79 + v117);
    v119 = *(v79 + v117 + 8);
    v120 = (v224 + v117);
    result = *v120;
    v121 = v120[1];
    v122 = v119 >> 62;
    v123 = v121 >> 62;
    if (v119 >> 62 == 3)
    {
      v124 = 0;
      if (!v118 && v119 == 0xC000000000000000 && v121 >> 62 == 3)
      {
        v124 = 0;
        if (!result && v121 == 0xC000000000000000)
        {
          goto LABEL_109;
        }
      }
    }

    else if (v122 > 1)
    {
      if (v122 == 2)
      {
        v126 = *(v118 + 16);
        v125 = *(v118 + 24);
        v108 = __OFSUB__(v125, v126);
        v124 = v125 - v126;
        if (v108)
        {
          goto LABEL_205;
        }
      }

      else
      {
        v124 = 0;
      }
    }

    else if (v122)
    {
      LODWORD(v124) = HIDWORD(v118) - v118;
      if (__OFSUB__(HIDWORD(v118), v118))
      {
        goto LABEL_206;
      }

      v124 = v124;
    }

    else
    {
      v124 = BYTE6(v119);
    }

    if (v123 > 1)
    {
      if (v123 != 2)
      {
        v140 = v217;
        v76 = v225;
        if (!v124)
        {
          goto LABEL_133;
        }

        goto LABEL_157;
      }

      v137 = *(result + 16);
      v136 = *(result + 24);
      v108 = __OFSUB__(v136, v137);
      v135 = v136 - v137;
      if (v108)
      {
        goto LABEL_204;
      }
    }

    else if (v123)
    {
      LODWORD(v135) = HIDWORD(result) - result;
      if (__OFSUB__(HIDWORD(result), result))
      {
        goto LABEL_203;
      }

      v135 = v135;
    }

    else
    {
      v135 = BYTE6(v121);
    }

    if (v124 != v135)
    {
      goto LABEL_141;
    }

    if (v124 < 1)
    {
LABEL_109:
      v140 = v217;
LABEL_133:
      v211 = v91;
      v155 = v79;
      v156 = v223[7];
      v157 = v215;
      v158 = *(v214 + 48);
      outlined init with copy of TetraSessionStates?(v155 + v156, v215, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
      v216 = v158;
      v159 = v140;
      outlined init with copy of TetraSessionStates?(v224 + v156, v157 + v158, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
      v160 = *v206;
      if ((*v206)(v157, 1, v140) == 1)
      {
        v161 = v160(v157 + v216, 1, v140) == 1;
        v162 = v157;
        v91 = v211;
        if (v161)
        {
          outlined destroy of TetraSessionStates?(v157, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
          v79 = v221;
          outlined destroy of TetraOuterMessageType(v221, type metadata accessor for TetraSessionState);
          v71 = v227;
          v163 = v228;
          v80 = v224;
          v76 = v225;
          goto LABEL_167;
        }

LABEL_139:
        v168 = &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMd;
        v169 = &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMR;
LABEL_140:
        outlined destroy of TetraSessionStates?(v162, v168, v169);
        v79 = v221;
LABEL_141:
        v76 = v225;
        goto LABEL_157;
      }

      v164 = v157;
      v165 = v157;
      v166 = v213;
      outlined init with copy of TetraSessionStates?(v164, v213, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
      v167 = v216;
      if (v160(v165 + v216, 1, v159) == 1)
      {
        (*v204)(v166, v159);
        v162 = v165;
        v91 = v211;
        goto LABEL_139;
      }

      v170 = (*v203)(v212, v165 + v167, v159);
      v171 = MEMORY[0x231891580](v170);
      v173 = v172;
      result = MEMORY[0x231891580]();
      v175 = v173 >> 62;
      v176 = v174 >> 62;
      v91 = v211;
      if (v173 >> 62 == 3)
      {
        v177 = 0;
        if (!v171 && v173 == 0xC000000000000000 && v174 >> 62 == 3)
        {
          v177 = 0;
          if (!result && v174 == 0xC000000000000000)
          {
            outlined consume of Data._Representation(0, 0xC000000000000000);
            v178 = 0;
            v179 = 0xC000000000000000;
LABEL_189:
            outlined consume of Data._Representation(v178, v179);
            v198 = *v204;
            v199 = v217;
            (*v204)(v212, v217);
            v198(v213, v199);
            outlined destroy of TetraSessionStates?(v215, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
            v79 = v221;
            outlined destroy of TetraOuterMessageType(v221, type metadata accessor for TetraSessionState);
            v80 = v224;
            v76 = v225;
            v71 = v227;
            v163 = v228;
            goto LABEL_167;
          }
        }
      }

      else if (v175 == 2)
      {
        v187 = *(v171 + 16);
        v186 = *(v171 + 24);
        v108 = __OFSUB__(v186, v187);
        v177 = v186 - v187;
        if (v108)
        {
          goto LABEL_217;
        }
      }

      else if (v175 == 1)
      {
        LODWORD(v177) = HIDWORD(v171) - v171;
        if (__OFSUB__(HIDWORD(v171), v171))
        {
          goto LABEL_218;
        }

        v177 = v177;
      }

      else
      {
        v177 = BYTE6(v173);
      }

      if (v176 <= 1)
      {
        if (v176)
        {
          LODWORD(v188) = HIDWORD(result) - result;
          if (__OFSUB__(HIDWORD(result), result))
          {
            goto LABEL_216;
          }

          v188 = v188;
        }

        else
        {
          v188 = BYTE6(v174);
        }

        goto LABEL_182;
      }

      if (v176 == 2)
      {
        v190 = *(result + 16);
        v189 = *(result + 24);
        v108 = __OFSUB__(v189, v190);
        v188 = v189 - v190;
        if (v108)
        {
          goto LABEL_215;
        }

LABEL_182:
        if (v177 == v188)
        {
          if (v177 < 1)
          {
            goto LABEL_188;
          }

          v191 = result;
          v192 = v174;
          outlined copy of Data._Representation(result, v174);
          v193 = specialized Data.withUnsafeBytes<A>(_:)(v171, v173, v191, v192);
          outlined consume of Data._Representation(v191, v192);
          outlined consume of Data._Representation(v171, v173);
          v194 = *v204;
          v195 = v217;
          (*v204)(v212, v217);
          v194(v213, v195);
          outlined destroy of TetraSessionStates?(v215, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
          v79 = v221;
          outlined destroy of TetraOuterMessageType(v221, type metadata accessor for TetraSessionState);
          v80 = v224;
          v76 = v225;
          if (v193)
          {
            v71 = v227;
            v163 = v228;
            goto LABEL_167;
          }

          goto LABEL_158;
        }
      }

      else if (!v177)
      {
LABEL_188:
        outlined consume of Data._Representation(result, v174);
        v178 = v171;
        v179 = v173;
        goto LABEL_189;
      }

      outlined consume of Data._Representation(result, v174);
      outlined consume of Data._Representation(v171, v173);
      v196 = *v204;
      v197 = v217;
      (*v204)(v212, v217);
      v196(v213, v197);
      v162 = v215;
      v168 = &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd;
      v169 = _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR;
      goto LABEL_140;
    }

    if (v122 <= 1)
    {
      break;
    }

    if (v122 == 2)
    {
      v148 = *(v118 + 16);
      v211 = *(v118 + 24);
      v216 = result;
      outlined copy of Data._Representation(result, v121);
      result = __DataStorage._bytes.getter();
      v149 = result;
      if (result)
      {
        result = __DataStorage._offset.getter();
        if (__OFSUB__(v148, result))
        {
          goto LABEL_213;
        }

        v149 += v148 - result;
      }

      if (__OFSUB__(v211, v148))
      {
        goto LABEL_212;
      }

      goto LABEL_129;
    }

    memset(v230, 0, 14);
    v154 = result;
    outlined copy of Data._Representation(result, v121);
    closure #1 in static Data.== infix(_:_:)(v230, v154, v121, &v229);
    v139 = v154;
LABEL_131:
    outlined consume of Data._Representation(v139, v121);
    v153 = v229;
    v140 = v217;
LABEL_132:
    v76 = v225;
    if (v153)
    {
      goto LABEL_133;
    }

LABEL_157:
    outlined destroy of TetraOuterMessageType(v79, type metadata accessor for TetraSessionState);
    v80 = v224;
LABEL_158:
    v71 = v227;
    v163 = v228;
    if (v228 != v76)
    {
      if (v76 < 0)
      {
        goto LABEL_191;
      }

      v182 = *v78;
      if (v76 >= *v78)
      {
        goto LABEL_192;
      }

      v183 = v76;
      v184 = v76 * v226;
      outlined init with copy of TetraOuterMessageType(&v218[v227 + v184], v219, type metadata accessor for TetraSessionState);
      if (v228 >= v182)
      {
        goto LABEL_193;
      }

      outlined init with copy of TetraOuterMessageType(&v91[v71], v220, type metadata accessor for TetraSessionState);
      v185 = swift_isUniquelyReferenced_nonNull_native();
      v79 = v221;
      if ((v185 & 1) == 0)
      {
        v71 = specialized _ArrayBuffer._consumeAndCreateNew()(v71);
      }

      outlined assign with take of TetraSessionState(v220, &v218[v71 + v184], type metadata accessor for TetraSessionState);
      if (v228 >= *(v71 + 16))
      {
        goto LABEL_194;
      }

      outlined assign with take of TetraSessionState(v219, &v91[v71], type metadata accessor for TetraSessionState);
      v76 = v183;
      v163 = v228;
    }

    ++v76;
LABEL_167:
    v75 = (v163 + 1);
    v78 = (v71 + 16);
    v77 = *(v71 + 16);
    v91 += v226;
    if (v75 == v77)
    {
      goto LABEL_17;
    }
  }

  if (!v122)
  {
    v230[0] = v118;
    LOWORD(v230[1]) = v119;
    BYTE2(v230[1]) = BYTE2(v119);
    BYTE3(v230[1]) = BYTE3(v119);
    BYTE4(v230[1]) = BYTE4(v119);
    BYTE5(v230[1]) = BYTE5(v119);
    v138 = result;
    outlined copy of Data._Representation(result, v121);
    closure #1 in static Data.== infix(_:_:)(v230, v138, v121, &v229);
    v139 = v138;
    goto LABEL_131;
  }

  v150 = v118;
  v151 = v118 >> 32;
  v211 = (v151 - v150);
  if (v151 >= v150)
  {
    v216 = result;
    outlined copy of Data._Representation(result, v121);
    v149 = __DataStorage._bytes.getter();
    if (v149)
    {
      result = __DataStorage._offset.getter();
      if (__OFSUB__(v150, result))
      {
        goto LABEL_214;
      }

      v149 += v150 - result;
    }

LABEL_129:
    MEMORY[0x231890D50]();
    v152 = v216;
    closure #1 in static Data.== infix(_:_:)(v149, v216, v121, v230);
    outlined consume of Data._Representation(v152, v121);
    v153 = v230[0];
    v140 = v217;
    v79 = v221;
    goto LABEL_132;
  }

  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  __break(1u);
LABEL_217:
  __break(1u);
LABEL_218:
  __break(1u);
  return result;
}

Class specialized static TetraAPI.seal(message:authenticatedData:guid:sendingURI:sendingPushToken:receivingURI:receivingPushToken:receiverRegistration:encryptedAttributes:resetState:signedBy:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, void *a10, char *a11, uint64_t a12, char a13, void *a14)
{
  v534 = a5;
  v542 = a8;
  v535 = a6;
  v536 = a7;
  v515 = a4;
  v514 = a3;
  v543 = a1;
  v537 = a14;
  v541 = a11;
  v549 = *MEMORY[0x277D85DE8];
  v513 = type metadata accessor for TetraKEM768Key(0);
  v512 = *(v513 - 1);
  v15 = *(v512 + 64);
  MEMORY[0x28223BE20](v513);
  v508 = &v486 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v517 = &v486 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v500 = &v486 - v22;
  MEMORY[0x28223BE20](v21);
  v520 = (&v486 - v23);
  v516 = type metadata accessor for TetraRatchetOuterMessage(0);
  v24 = *(*(v516 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v516);
  v510 = &v486 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v498 = &v486 - v28;
  MEMORY[0x28223BE20](v27);
  v511 = &v486 - v29;
  v521 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v529 = *(v521 - 8);
  v30 = *(v529 + 64);
  v31 = MEMORY[0x28223BE20](v521);
  v522 = &v486 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v495 = &v486 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v499 = &v486 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v518 = &v486 - v38;
  MEMORY[0x28223BE20](v37);
  v497 = &v486 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  v44 = &v486 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v503 = &v486 - v45;
  v506 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMd, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMR);
  v46 = *(*(v506 - 8) + 64);
  v47 = MEMORY[0x28223BE20](v506);
  v496 = &v486 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v507 = &v486 - v49;
  v532 = type metadata accessor for TetraSessionState();
  v509 = *(v532 - 1);
  v50 = *(v509 + 64);
  v51 = MEMORY[0x28223BE20](v532);
  v526 = &v486 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v51);
  v504 = &v486 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v505 = &v486 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v502 = &v486 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v519 = (&v486 - v60);
  v61 = MEMORY[0x28223BE20](v59);
  v525 = (&v486 - v62);
  v63 = MEMORY[0x28223BE20](v61);
  v524 = &v486 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v523 = (&v486 - v66);
  MEMORY[0x28223BE20](v65);
  v527 = (&v486 - v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
  v69 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68 - 8);
  v71 = &v486 - v70;
  v531 = type metadata accessor for TetraSessionStates();
  v528 = *(v531 - 8);
  v72 = *(v528 + 64);
  v73 = MEMORY[0x28223BE20](v531);
  v501 = &v486 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v73);
  v530 = (&v486 - v75);
  v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a12 + 16))
  {
    v78 = specialized __RawDictionaryStorage.find<A>(_:)(v76, v77);
    v80 = v79;

    if (v80)
    {
      v81 = (*(a12 + 56) + 16 * v78);
      v82 = *v81;
      v538 = v81[1];
      v539 = v82;
      outlined copy of Data._Representation(v82, v538);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v538 = 0xF000000000000000;
  v539 = 0;
LABEL_6:
  v540 = a2;
  outlined copy of Data._Representation(v543, a2);
  v83 = [v537 publicKey];
  v84 = [v83 compactRepresentation];

  v85 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v87 = v86;

  v88 = [*(v541 + OBJC_IVAR____TtC17MessageProtection17TetraRegistration_signingPublicKey) compactRepresentation];
  v89 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v91 = v90;

  specialized static TetraAPI.conversationInfo(sendingURI:sendingPushToken:senderPublicKeyCompactRepresentation:receivingURI:receivingPushToken:receivingPublicKeyCompactRepresentation:)(v534, v535, v536, v85, v87, v542, a9, a10, v89, v91);
  v93 = v92;
  v95 = v94;
  outlined consume of Data._Representation(v89, v91);
  outlined consume of Data._Representation(v85, v87);

  v536 = v93;
  v96 = v93(1);
  v98 = v97;
  v542 = v95;

  v99.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v96, v98);
  v100 = static os_log_type_t.info.getter();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  v101 = static OS_os_log.default.getter();
  v102 = os_log_type_enabled(v101, v100);
  v535 = v44;
  if (v102)
  {
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    *&v545 = v104;
    *v103 = 136315138;
    v105 = [(objc_class *)v99.super.isa base64EncodedStringWithOptions:0];
    isa = v99.super.isa;
    v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v109 = v108;

    v110 = v107;
    v99.super.isa = isa;
    v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v109, &v545);

    *(v103 + 4) = v111;
    _os_log_impl(&dword_22B404000, v101, v100, "Encrypting for conversationID: %s", v103, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v104);
    MEMORY[0x231892DF0](v104, -1, -1);
    MEMORY[0x231892DF0](v103, -1, -1);
  }

  static os_log_type_t.debug.getter();
  v112 = MessageProtectionLog();
  v113 = v540;
  if (!v112)
  {
    goto LABEL_430;
  }

  v114 = v112;
  os_log(_:dso:log:_:_:)();

  if (one-time initialization token for conversationLock != -1)
  {
    swift_once();
  }

  v115 = &unk_280F9F000;
  v116 = conversationLock;
  OS_dispatch_semaphore.wait()();

  v117 = static os_log_type_t.debug.getter();
  v118 = MessageProtectionLog();
  if (!v118)
  {
LABEL_431:
    __break(1u);
  }

  v119 = v118;
  v120 = MEMORY[0x277D84F90];
  os_log(_:dso:log:_:_:)();

  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v121 = static TetraDBManager.sharedInstance;
  v122 = v533;
  TetraDBManager.getSessionForNGMIdentity(conversationID:)(v99.super.isa, v71);
  v123 = v122;
  if (v122)
  {
    goto LABEL_64;
  }

  v533 = v121;
  v124 = v529;
  v125 = v531;
  if ((*(v528 + 48))(v71, 1, v531) == 1)
  {
    v528 = v124;
    outlined destroy of TetraSessionStates?(v71, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
    v126 = v542;

    v127 = v541;
    v128 = v526;
    TetraSessionState.init(remoteTetraRegistration:sessionDST:)(v127, v536, v126, v526);
    v494 = v99.super.isa;

    v129 = TetraRegistration.computeKeysHash()();
    v131 = v129;
    v132 = *&v127[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_tetraVersion];
    if (v132 >= 0xF)
    {
      v132 = 15;
    }

    LODWORD(v530) = v132;
    *v128 = v132;
    v133 = *(v128 + v532[9]);
    v534 = v130;
    if (v133)
    {
      v541 = 0;
      v535 = 0xF000000000000000;
    }

    else
    {
      v143 = v130;
      outlined copy of Data._Representation(v129, v130);
      v541 = v131;
      v535 = v143;
    }

    v144 = v128 + v532[5];
    v145 = type metadata accessor for TetraRatchetState(0);
    v146 = &v144[*(v145 + 24)];

    TetraOutgoingSymmetricRatchet.sealMessage(_:)(v543, v540, v539, v538, &v545);
    v147 = v545;
    v148 = *(v145 + 28);
    v149 = *&v144[v148];
    if (v149 < 0x28)
    {
      *&v144[v148] = v149 + 1;
    }

    LODWORD(v527) = v546;
    v532 = v547;
    v529 = v548;
    v519 = *(&v147 + 1);
    v525 = v147;
    outlined copy of Data._Representation(v147, *(&v147 + 1));
    TetraECDHKey.publicKey.getter();
    v150 = type metadata accessor for TetraOutgoingKeyContent(0);
    v151 = *(v150 + 20);
    v152 = 1;
    if (!(*(v512 + 48))(&v146[v151], 1, v513))
    {
      v153 = v508;
      outlined init with copy of TetraOuterMessageType(&v146[v151], v508, type metadata accessor for TetraKEM768Key);
      TetraKEM768Key.publicKey.getter(v517);
      outlined destroy of TetraOuterMessageType(v153, type metadata accessor for TetraKEM768Key);
      v152 = 0;
    }

    v154 = type metadata accessor for Kyber768.PublicKey();
    v513 = *(*(v154 - 8) + 56);
    v513(v517, v152, 1, v154);
    v155 = &v146[*(v150 + 28)];
    v156 = v155[1];
    v523 = *v155;
    v520 = v156;
    outlined copy of Data?(v523, v156);
    v536 = (v536)(1);
    v524 = v157;
    outlined consume of Data._Representation(v131, v534);
    v158 = v525;
    v159 = v519;
    outlined consume of Data._Representation(v525, v519);
    v160 = v516;
    v518 = *(v516 + 32);
    v161 = v510;
    v513(v510 + v518, 1, 1, v154);
    v162 = v161 + v160[9];
    *v162 = xmmword_22B48D7D0;
    v163 = v161 + v160[10];
    *v163 = xmmword_22B48D7D0;
    v164 = v160[12];
    v534 = v161 + v160[13];
    *(v161 + 8) = v158;
    *(v161 + 16) = v159;
    v165 = (v161 + v164);
    v166 = v514;
    v167 = v515;
    *v165 = v514;
    v165[1] = v167;
    *(v161 + 24) = v527;
    (*(v528 + 32))(v161 + v160[7], v522, v521);
    outlined copy of Data._Representation(v166, v167);
    outlined assign with take of P256.KeyAgreement.PublicKey?(v517, v161 + v518, &_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
    outlined consume of Data?(*v162, *(v162 + 8));
    v168 = v520;
    *v162 = v523;
    *(v162 + 8) = v168;
    outlined consume of Data?(*v163, *(v163 + 8));

    v169 = v535;
    *v163 = v541;
    *(v163 + 8) = v169;
    v170 = (v161 + v160[11]);
    v171 = v529;
    *v170 = v532;
    v170[1] = v171;
    *v161 = v530;
    v172 = (v161 + v160[14]);
    v173 = v537;
    v174 = v524;
    *v172 = v536;
    v172[1] = v174;
    v175 = v534;
    *v534 = 0;
    *(v175 + 4) = 1;
    v71 = TetraRatchetOuterMessage.serializedData(signedBy:)(v173);
    v117 = v246;
    outlined destroy of TetraOuterMessageType(v161, type metadata accessor for TetraRatchetOuterMessage);
    v247 = v526;
    v248 = v501;
    outlined init with copy of TetraOuterMessageType(v526, v501, type metadata accessor for TetraSessionState);
    v249 = v531;
    *(v248 + *(v531 + 20)) = 0;
    *(v248 + *(v249 + 24)) = v120;
    v120 = v248;
    v250 = v494;
    TetraDBManager.saveTetraSession(conversationID:sessionStates:needsSync:)(v494, v248, 1);
    v113 = v540;
    outlined destroy of TetraOuterMessageType(v248, type metadata accessor for TetraSessionStates);
    v237 = static os_log_type_t.debug.getter();
    v383 = MessageProtectionLog();
    if (v383)
    {
      v384 = v383;
      os_log(_:dso:log:_:_:)();

      v385 = conversationLock;
      OS_dispatch_semaphore.signal()();

      v239 = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data._Representation(v543, v113);
      outlined consume of Data?(v539, v538);
      outlined consume of Data._Representation(v71, v117);

      v351 = type metadata accessor for TetraSessionState;
      v352 = v247;
      goto LABEL_241;
    }

LABEL_455:
    __break(1u);
    for (i = v492; ; i = v120)
    {
      outlined consume of Data._Representation(i, v237);
      __break(1u);
      outlined consume of Data._Representation(v492, v491);
      __break(1u);
      outlined consume of Data._Representation(v492, v113);
      __break(1u);
      outlined consume of Data._Representation(v71, v117);
      __break(1u);
    }
  }

  v134 = v71;
  v135 = v530;
  outlined init with take of TetraRatchetOuterMessage(v134, v530, type metadata accessor for TetraSessionStates);
  v136 = *(v135 + *(v125 + 20));
  v137 = v532;
  v138 = v541;
  if ((v136 == 2 || (v136 & 1) == 0) && (*(v135 + v532[9]) != 1 || (a13 & 1) == 0))
  {
    v528 = v124;
    goto LABEL_48;
  }

  v510 = *(v125 + 20);
  v139 = v542;

  v140 = v138;
  v141 = v527;
  TetraSessionState.init(remoteTetraRegistration:sessionDST:)(v140, v536, v139, v527);
  v528 = v124;
  v142 = v141;
  if ((specialized static TetraSessionState.== infix(_:_:)(v135, v141) & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMd, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMR);
    v176 = (*(v509 + 80) + 32) & ~*(v509 + 80);
    v526 = *(v509 + 72);
    v177 = swift_allocObject();
    *(v177 + 16) = xmmword_22B48D7C0;
    v522 = v176;
    outlined init with copy of TetraOuterMessageType(v135, v177 + v176, type metadata accessor for TetraSessionState);
    v501 = *(v531 + 24);
    v178 = *(v135 + v501);
    *&v545 = v177;
    specialized Array.append<A>(contentsOf:)(v178);
    v179 = v545;
    v180 = outlined assign with copy of TetraSessionState(v142, v135);
    v493 = &v486;
    MEMORY[0x28223BE20](v180);
    v485 = v142;
    v181 = specialized Collection.firstIndex(where:)(closure #1 in TetraSessionStates.makeDefault(_:)partial apply, (&v486 - 4), v179);
    if (v182)
    {
      v120 = *(v179 + 16);
      v181 = v120;
LABEL_39:
      v186 = v181;
      if (__OFADD__(v120, v181 - v120))
      {
        goto LABEL_408;
      }

      v187 = v181;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v189 = v501;
      *(v135 + v501) = v179;
      if (!isUniquelyReferenced_nonNull_native || v186 > *(v179 + 24) >> 1)
      {
        if (v120 <= v186)
        {
          v190 = v186;
        }

        else
        {
          v190 = v120;
        }

        v191 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v190, 1, v179, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMd, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMR, type metadata accessor for TetraSessionState);
        v189 = v501;
        v179 = v191;
        *(v135 + v501) = v191;
      }

      v192 = v120;
      v193 = v189;
      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v187, v192, 0);
      *(v135 + v193) = v179;
      v137 = v532;
      v142 = v527;
      goto LABEL_47;
    }

    v494 = v99.super.isa;
    v120 = v181 + 1;
    if (__OFADD__(v181, 1))
    {
      goto LABEL_412;
    }

    v184 = (v179 + 16);
    v183 = *(v179 + 16);
    v185 = v523;
    if (v120 == v183)
    {
LABEL_37:
      if (v120 < v181)
      {
        goto LABEL_406;
      }

      v113 = v540;
      v99.super.isa = v494;
      if (v181 < 0)
      {
        goto LABEL_407;
      }

      goto LABEL_39;
    }

    v490 = (v529 + 48);
    v488 = (v529 + 32);
    v489 = (v529 + 8);
    v251 = &v522[v526 * v120];
    while (1)
    {
      if (v120 >= v183)
      {
        __break(1u);
LABEL_402:
        __break(1u);
LABEL_403:
        __break(1u);
LABEL_404:
        __break(1u);
LABEL_405:
        __break(1u);
LABEL_406:
        __break(1u);
LABEL_407:
        __break(1u);
LABEL_408:
        __break(1u);
LABEL_409:
        __break(1u);
LABEL_410:
        __break(1u);
LABEL_411:
        __break(1u);
LABEL_412:
        __break(1u);
LABEL_413:
        __break(1u);
LABEL_414:
        __break(1u);
LABEL_415:
        __break(1u);
LABEL_416:
        __break(1u);
LABEL_417:
        __break(1u);
LABEL_418:
        __break(1u);
LABEL_419:
        __break(1u);
LABEL_420:
        __break(1u);
LABEL_421:
        __break(1u);
LABEL_422:
        __break(1u);
LABEL_423:
        __break(1u);
LABEL_424:
        __break(1u);
LABEL_425:
        __break(1u);
LABEL_426:
        __break(1u);
LABEL_427:
        __break(1u);
LABEL_428:
        __break(1u);
LABEL_429:
        __break(1u);
LABEL_430:
        __break(1u);
        goto LABEL_431;
      }

      v534 = v181;
      v252 = outlined init with copy of TetraOuterMessageType(v179 + v251, v185, type metadata accessor for TetraSessionState);
      if (*v185 != *v142)
      {
        goto LABEL_160;
      }

      v517 = v179;
      v253 = v532;
      v254 = v532[6];
      v255 = MEMORY[0x231891720](v252);
      v257 = v256;
      v237 = v142 + v253[6];
      v258 = MEMORY[0x231891720]();
      v260 = v257 >> 62;
      v261 = v259 >> 62;
      if (v257 >> 62 == 3)
      {
        v262 = 0;
        if (v255)
        {
          v185 = v523;
        }

        else
        {
          v185 = v523;
          if (v257 == 0xC000000000000000 && v259 >> 62 == 3)
          {
            v262 = 0;
            if (!v258 && v259 == 0xC000000000000000)
            {
              outlined consume of Data._Representation(0, 0xC000000000000000);
              v263 = 0;
              v264 = 0xC000000000000000;
              goto LABEL_110;
            }
          }
        }
      }

      else if (v260 > 1)
      {
        v185 = v523;
        if (v260 == 2)
        {
          v266 = *(v255 + 16);
          v265 = *(v255 + 24);
          v267 = __OFSUB__(v265, v266);
          v262 = v265 - v266;
          if (v267)
          {
            goto LABEL_414;
          }
        }

        else
        {
          v262 = 0;
        }
      }

      else
      {
        v185 = v523;
        if (v260)
        {
          LODWORD(v262) = HIDWORD(v255) - v255;
          if (__OFSUB__(HIDWORD(v255), v255))
          {
            goto LABEL_413;
          }

          v262 = v262;
        }

        else
        {
          v262 = BYTE6(v257);
        }
      }

      if (v261 > 1)
      {
        if (v261 != 2)
        {
          if (v262)
          {
LABEL_108:
            outlined consume of Data._Representation(v258, v259);
            outlined consume of Data._Representation(v255, v257);
LABEL_158:
            v135 = v530;
            goto LABEL_159;
          }

LABEL_109:
          outlined consume of Data._Representation(v258, v259);
          v263 = v255;
          v264 = v257;
LABEL_110:
          outlined consume of Data._Representation(v263, v264);
          goto LABEL_127;
        }

        v270 = *(v258 + 16);
        v269 = *(v258 + 24);
        v267 = __OFSUB__(v269, v270);
        v268 = v269 - v270;
        if (v267)
        {
          goto LABEL_410;
        }
      }

      else if (v261)
      {
        LODWORD(v268) = HIDWORD(v258) - v258;
        if (__OFSUB__(HIDWORD(v258), v258))
        {
          goto LABEL_409;
        }

        v268 = v268;
      }

      else
      {
        v268 = BYTE6(v259);
      }

      if (v262 != v268)
      {
        goto LABEL_108;
      }

      if (v262 < 1)
      {
        goto LABEL_109;
      }

      v492 = v258;
      if (v260 > 1)
      {
        if (v260 != 2)
        {
          *(&v545 + 6) = 0;
          *&v545 = 0;
          v280 = v258;
          v281 = v259;
          outlined copy of Data._Representation(v258, v259);
          v282 = v280;
          v237 = v281;
          closure #1 in static Data.== infix(_:_:)(&v545, v282, v281, &v544);
          v123 = 0;
          v283 = v492;
          outlined consume of Data._Representation(v492, v237);
          v273 = v283;
          v274 = v237;
          goto LABEL_123;
        }

        v275 = *(v255 + 16);
        v487 = *(v255 + 24);
        v491 = v259;
        outlined copy of Data._Representation(v258, v259);
        v276 = __DataStorage._bytes.getter();
        if (v276)
        {
          v277 = __DataStorage._offset.getter();
          if (__OFSUB__(v275, v277))
          {
            goto LABEL_425;
          }

          v276 += v275 - v277;
        }

        if (__OFSUB__(v487, v275))
        {
          goto LABEL_424;
        }
      }

      else
      {
        if (!v260)
        {
          *&v545 = v255;
          WORD4(v545) = v257;
          BYTE10(v545) = BYTE2(v257);
          BYTE11(v545) = BYTE3(v257);
          BYTE12(v545) = BYTE4(v257);
          BYTE13(v545) = BYTE5(v257);
          v271 = v258;
          v237 = v259;
          outlined copy of Data._Representation(v258, v259);
          closure #1 in static Data.== infix(_:_:)(&v545, v271, v237, &v544);
          v123 = 0;
          v272 = v492;
          outlined consume of Data._Representation(v492, v237);
          v273 = v272;
          v274 = v237;
LABEL_123:
          outlined consume of Data._Representation(v273, v274);
          outlined consume of Data._Representation(v255, v257);
          v284 = v544;
          goto LABEL_126;
        }

        if (v255 >> 32 < v255)
        {
          goto LABEL_423;
        }

        v491 = v259;
        outlined copy of Data._Representation(v258, v259);
        v278 = __DataStorage._bytes.getter();
        if (v278)
        {
          v487 = v278;
          v279 = __DataStorage._offset.getter();
          if (__OFSUB__(v255, v279))
          {
            goto LABEL_426;
          }

          v276 = v255 - v279 + v487;
        }

        else
        {
          v276 = 0;
        }
      }

      MEMORY[0x231890D50]();
      closure #1 in static Data.== infix(_:_:)(v276, v492, v491, &v545);
      v123 = 0;
      v237 = v492;
      v285 = v491;
      outlined consume of Data._Representation(v492, v491);
      outlined consume of Data._Representation(v237, v285);
      outlined consume of Data._Representation(v255, v257);
      v284 = v545;
LABEL_126:
      v135 = v530;
      v185 = v523;
      v179 = v517;
      if (!v284)
      {
        goto LABEL_160;
      }

LABEL_127:
      v286 = v532[8];
      v287 = *(v185 + v286);
      v288 = *(v185 + v286 + 8);
      v289 = v527 + v286;
      v71 = *v289;
      v117 = *(v289 + 1);
      v290 = v288 >> 62;
      v291 = v117 >> 62;
      if (v288 >> 62 == 3)
      {
        v292 = 0;
        if (!v287 && v288 == 0xC000000000000000 && v117 >> 62 == 3)
        {
          v292 = 0;
          if (!v71 && v117 == 0xC000000000000000)
          {
            goto LABEL_172;
          }
        }
      }

      else if (v290 > 1)
      {
        if (v290 == 2)
        {
          v294 = *(v287 + 16);
          v293 = *(v287 + 24);
          v267 = __OFSUB__(v293, v294);
          v292 = v293 - v294;
          if (v267)
          {
            goto LABEL_421;
          }
        }

        else
        {
          v292 = 0;
        }
      }

      else if (v290)
      {
        LODWORD(v292) = HIDWORD(v287) - v287;
        if (__OFSUB__(HIDWORD(v287), v287))
        {
          goto LABEL_422;
        }

        v292 = v292;
      }

      else
      {
        v292 = BYTE6(v288);
      }

      if (v291 > 1)
      {
        if (v291 != 2)
        {
          v135 = v530;
          v179 = v517;
          if (v292)
          {
            goto LABEL_160;
          }

          goto LABEL_187;
        }

        v297 = *(v71 + 2);
        v296 = *(v71 + 3);
        v267 = __OFSUB__(v296, v297);
        v295 = v296 - v297;
        if (v267)
        {
          goto LABEL_415;
        }
      }

      else if (v291)
      {
        LODWORD(v295) = HIDWORD(v71) - v71;
        if (__OFSUB__(HIDWORD(v71), v71))
        {
          goto LABEL_416;
        }

        v295 = v295;
      }

      else
      {
        v295 = BYTE6(v117);
      }

      if (v292 != v295)
      {
        goto LABEL_158;
      }

      if (v292 < 1)
      {
LABEL_172:
        v135 = v530;
        goto LABEL_187;
      }

      if (v290 > 1)
      {
        if (v290 == 2)
        {
          v304 = *(v287 + 16);
          v305 = *(v287 + 24);
          outlined copy of Data._Representation(v71, v117);
          LOBYTE(v304) = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v304, v305, v288 & 0x3FFFFFFFFFFFFFFFLL, v71, v117);
          v123 = 0;
          outlined consume of Data._Representation(v71, v117);
          v135 = v530;
          v185 = v523;
          v179 = v517;
          if ((v304 & 1) == 0)
          {
            goto LABEL_160;
          }
        }

        else
        {
          *(&v545 + 6) = 0;
          *&v545 = 0;
          outlined copy of Data._Representation(v71, v117);
          closure #1 in static Data.== infix(_:_:)(&v545, v71, v117, &v544);
          v123 = 0;
          outlined consume of Data._Representation(v71, v117);
          v135 = v530;
          v179 = v517;
          if (!v544)
          {
            goto LABEL_160;
          }
        }
      }

      else
      {
        if (v290)
        {
          v113 = v287;
          v306 = v287 >> 32;
          v492 = v306 - v113;
          if (v306 < v113)
          {
            goto LABEL_433;
          }

          outlined copy of Data._Representation(v71, v117);
          v307 = __DataStorage._bytes.getter();
          if (v307)
          {
            v491 = v307;
            v237 = v288 & 0x3FFFFFFFFFFFFFFFLL;
            v308 = __DataStorage._offset.getter();
            if (__OFSUB__(v113, v308))
            {
              goto LABEL_436;
            }

            v309 = v113 - v308 + v491;
          }

          else
          {
            v309 = 0;
          }

          MEMORY[0x231890D50]();
          closure #1 in static Data.== infix(_:_:)(v309, v71, v117, &v545);
          v123 = 0;
          outlined consume of Data._Representation(v71, v117);
          v298 = v545;
          v135 = v530;
          v185 = v523;
        }

        else
        {
          *&v545 = v287;
          WORD4(v545) = v288;
          BYTE10(v545) = BYTE2(v288);
          BYTE11(v545) = BYTE3(v288);
          BYTE12(v545) = BYTE4(v288);
          BYTE13(v545) = BYTE5(v288);
          outlined copy of Data._Representation(v71, v117);
          closure #1 in static Data.== infix(_:_:)(&v545, v71, v117, &v544);
          v123 = 0;
          outlined consume of Data._Representation(v71, v117);
          v298 = v544;
          v135 = v530;
        }

        v179 = v517;
        if (!v298)
        {
          goto LABEL_160;
        }
      }

LABEL_187:
      v491 = v251;
      v310 = v532[7];
      v311 = *(v506 + 48);
      v312 = v185 + v310;
      v313 = v507;
      outlined init with copy of TetraSessionStates?(v312, v507, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
      v492 = v311;
      outlined init with copy of TetraSessionStates?(v527 + v310, v313 + v311, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
      v314 = *v490;
      v315 = v521;
      if ((*v490)(v313, 1, v521) == 1)
      {
        v316 = v314(v313 + v492, 1, v315);
        v251 = v491;
        if (v316 == 1)
        {
          outlined destroy of TetraSessionStates?(v313, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
          v185 = v523;
          outlined destroy of TetraOuterMessageType(v523, type metadata accessor for TetraSessionState);
          goto LABEL_227;
        }

        goto LABEL_192;
      }

      v317 = v503;
      outlined init with copy of TetraSessionStates?(v313, v503, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
      if (v314(v313 + v492, 1, v315) == 1)
      {
        (*v489)(v317, v315);
        v251 = v491;
LABEL_192:
        outlined destroy of TetraSessionStates?(v313, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMd, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMR);
        goto LABEL_193;
      }

      v318 = v313 + v492;
      v319 = v497;
      v320 = (*v488)(v497, v318, v315);
      v71 = MEMORY[0x231891580](v320);
      v117 = v321;
      v237 = v319;
      v322 = MEMORY[0x231891580]();
      v324 = v117 >> 62;
      v325 = v323 >> 62;
      v251 = v491;
      if (v117 >> 62 == 3)
      {
        v326 = 0;
        if (v71)
        {
          v113 = v503;
        }

        else
        {
          v113 = v503;
          if (v117 == 0xC000000000000000 && v323 >> 62 == 3)
          {
            v326 = 0;
            if (!v322 && v323 == 0xC000000000000000)
            {
              outlined consume of Data._Representation(0, 0xC000000000000000);
              v327 = 0;
              v328 = 0xC000000000000000;
              goto LABEL_226;
            }
          }
        }
      }

      else if (v324 == 2)
      {
        v330 = *(v71 + 2);
        v329 = *(v71 + 3);
        v267 = __OFSUB__(v329, v330);
        v326 = v329 - v330;
        v113 = v503;
        if (v267)
        {
          goto LABEL_444;
        }
      }

      else
      {
        v113 = v503;
        if (v324 == 1)
        {
          LODWORD(v326) = HIDWORD(v71) - v71;
          if (__OFSUB__(HIDWORD(v71), v71))
          {
            goto LABEL_445;
          }

          v326 = v326;
        }

        else
        {
          v326 = BYTE6(v117);
        }
      }

      if (v325 > 1)
      {
        if (v325 != 2)
        {
          if (!v326)
          {
LABEL_225:
            outlined consume of Data._Representation(v322, v323);
            v327 = v71;
            v328 = v117;
LABEL_226:
            outlined consume of Data._Representation(v327, v328);
            v341 = *v489;
            v342 = v521;
            (*v489)(v497, v521);
            v341(v113, v342);
            outlined destroy of TetraSessionStates?(v507, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
            v185 = v523;
            outlined destroy of TetraOuterMessageType(v523, type metadata accessor for TetraSessionState);
            v135 = v530;
LABEL_227:
            v179 = v517;
LABEL_228:
            v181 = v534;
            v142 = v527;
            goto LABEL_170;
          }

LABEL_224:
          outlined consume of Data._Representation(v322, v323);
          outlined consume of Data._Representation(v71, v117);
          v339 = *v489;
          v340 = v521;
          (*v489)(v497, v521);
          v339(v113, v340);
          outlined destroy of TetraSessionStates?(v507, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
          v135 = v530;
LABEL_193:
          v185 = v523;
LABEL_159:
          v179 = v517;
LABEL_160:
          outlined destroy of TetraOuterMessageType(v185, type metadata accessor for TetraSessionState);
          goto LABEL_161;
        }

        v333 = *(v322 + 16);
        v332 = *(v322 + 24);
        v267 = __OFSUB__(v332, v333);
        v331 = v332 - v333;
        if (v267)
        {
          goto LABEL_440;
        }
      }

      else if (v325)
      {
        LODWORD(v331) = HIDWORD(v322) - v322;
        if (__OFSUB__(HIDWORD(v322), v322))
        {
          goto LABEL_441;
        }

        v331 = v331;
      }

      else
      {
        v331 = BYTE6(v323);
      }

      if (v326 != v331)
      {
        goto LABEL_224;
      }

      if (v326 < 1)
      {
        goto LABEL_225;
      }

      v334 = v322;
      v335 = v323;
      outlined copy of Data._Representation(v322, v323);
      LODWORD(v492) = specialized Data.withUnsafeBytes<A>(_:)(v71, v117, v334, v335);
      v336 = v335;
      v337 = v521;
      outlined consume of Data._Representation(v334, v336);
      outlined consume of Data._Representation(v71, v117);
      v338 = *v489;
      (*v489)(v497, v337);
      v338(v503, v337);
      outlined destroy of TetraSessionStates?(v507, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
      v185 = v523;
      outlined destroy of TetraOuterMessageType(v523, type metadata accessor for TetraSessionState);
      v135 = v530;
      v179 = v517;
      if (v492)
      {
        goto LABEL_228;
      }

LABEL_161:
      v299 = v534;
      v142 = v527;
      if (v120 != v534)
      {
        if ((v534 & 0x8000000000000000) != 0)
        {
          goto LABEL_402;
        }

        v300 = v179;
        v301 = *v184;
        if (v534 >= *v184)
        {
          goto LABEL_403;
        }

        v302 = v300;
        v303 = v534 * v526;
        outlined init with copy of TetraOuterMessageType(&v522[v300 + v534 * v526], v524, type metadata accessor for TetraSessionState);
        if (v120 >= v301)
        {
          goto LABEL_404;
        }

        outlined init with copy of TetraOuterMessageType(v302 + v251, v525, type metadata accessor for TetraSessionState);
        v179 = v302;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v179 = specialized _ArrayBuffer._consumeAndCreateNew()(v302);
        }

        outlined assign with take of TetraSessionState(v525, &v522[v179 + v303], type metadata accessor for TetraSessionState);
        if (v120 >= *(v179 + 16))
        {
          goto LABEL_405;
        }

        outlined assign with take of TetraSessionState(v524, v179 + v251, type metadata accessor for TetraSessionState);
        v299 = v534;
      }

      v181 = v299 + 1;
LABEL_170:
      ++v120;
      v184 = (v179 + 16);
      v183 = *(v179 + 16);
      v251 += v526;
      if (v120 == v183)
      {
        goto LABEL_37;
      }
    }
  }

  outlined assign with copy of TetraSessionState(v141, v135);
LABEL_47:
  TetraSessionStates.cleanupPreviousSessionStates()();
  outlined destroy of TetraOuterMessageType(v142, type metadata accessor for TetraSessionState);

  *(v135 + v510) = 0;
  v138 = v541;
LABEL_48:
  v194 = TetraRegistration.computeKeysHash()();
  v196 = v195;
  v197 = *(v135 + v137[9]);
  v534 = v194;
  if (v197)
  {
    v198 = *&v138[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_tetraVersion];
    if (v198 >= 0xF)
    {
      v198 = 15;
    }

    LODWORD(v531) = v198;
    *v135 = v198;

    v541 = 0;
    v535 = 0xF000000000000000;
LABEL_56:
    v204 = v135 + v137[5];
    v205 = type metadata accessor for TetraRatchetState(0);
    v206 = &v204[*(v205 + 24)];
    TetraOutgoingSymmetricRatchet.sealMessage(_:)(v543, v113, v539, v538, &v545);
    v525 = 0;
    v494 = v99.super.isa;
    v207 = v545;
    v208 = *(v205 + 28);
    v209 = *&v204[v208];
    if (v209 < 0x28)
    {
      *&v204[v208] = v209 + 1;
    }

    v527 = v196;
    LODWORD(v526) = v546;
    v532 = v547;
    v529 = v548;
    outlined copy of Data._Representation(v207, *(&v207 + 1));
    TetraECDHKey.publicKey.getter();
    v210 = type metadata accessor for TetraOutgoingKeyContent(0);
    v211 = *(v210 + 20);
    v212 = 1;
    if (!(*(v512 + 48))(&v206[v211], 1, v513))
    {
      v213 = v508;
      outlined init with copy of TetraOuterMessageType(&v206[v211], v508, type metadata accessor for TetraKEM768Key);
      TetraKEM768Key.publicKey.getter(v520);
      outlined destroy of TetraOuterMessageType(v213, type metadata accessor for TetraKEM768Key);
      v212 = 0;
    }

    v214 = type metadata accessor for Kyber768.PublicKey();
    v215 = *(*(v214 - 8) + 56);
    v215(v520, v212, 1, v214);
    v216 = &v206[*(v210 + 28)];
    v217 = v216[1];
    v523 = *v216;
    v522 = v217;
    outlined copy of Data?(v523, v217);
    v536 = (v536)(1);
    v524 = v218;
    outlined consume of Data._Representation(v534, v527);
    outlined consume of Data._Representation(v207, *(&v207 + 1));
    v117 = v516;
    v219 = *(v516 + 32);
    v120 = v511;
    v215(&v511[v219], 1, 1, v214);
    v220 = v120 + *(v117 + 36);
    *v220 = xmmword_22B48D7D0;
    v221 = v120 + *(v117 + 40);
    *v221 = xmmword_22B48D7D0;
    v222 = *(v117 + 48);
    v534 = v120 + *(v117 + 52);
    *(v120 + 8) = v207;
    v223 = (v120 + v222);
    v224 = v514;
    v225 = v515;
    *v223 = v514;
    v223[1] = v225;
    *(v120 + 24) = v526;
    (*(v528 + 32))(v120 + *(v117 + 28), v518, v521);
    outlined copy of Data._Representation(v224, v225);
    outlined assign with take of P256.KeyAgreement.PublicKey?(v520, v120 + v219, &_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
    outlined consume of Data?(*v220, *(v220 + 8));
    v226 = v522;
    *v220 = v523;
    *(v220 + 8) = v226;
    outlined consume of Data?(*v221, *(v221 + 8));

    v227 = v535;
    *v221 = v541;
    *(v221 + 8) = v227;
    v228 = (v120 + *(v117 + 44));
    v229 = v529;
    *v228 = v532;
    v228[1] = v229;
    *v120 = v531;
    v230 = (v120 + *(v117 + 56));
    v231 = v524;
    *v230 = v536;
    v230[1] = v231;
    v232 = v534;
    *v534 = 0;
    *(v232 + 4) = 1;
    v113 = v540;
    v99.super.isa = v494;
    v115 = &unk_280F9F000;
    v71 = v530;
    v123 = v525;
    goto LABEL_61;
  }

  v199 = v194;
  v200 = (v135 + v137[8]);
  v202 = *v200;
  v201 = v200[1];

  if (specialized static Data.== infix(_:_:)(v202, v201, v199, v196))
  {
    v203 = *(v541 + OBJC_IVAR____TtC17MessageProtection17TetraRegistration_tetraVersion);
    if (v203 >= 0xF)
    {
      v203 = 15;
    }

    LODWORD(v531) = v203;
    *v135 = v203;
    outlined copy of Data._Representation(v199, v196);
    v541 = v199;
    v535 = v196;
    v137 = v532;
    goto LABEL_56;
  }

  v235 = v541;
  v236 = v519;
  TetraSessionState.init(remoteTetraRegistration:sessionDST:)(v235, v536, v542, v519);
  v244 = *&v235[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_tetraVersion];
  if (v244 >= 0xF)
  {
    v244 = 15;
  }

  LODWORD(v525) = v244;
  *v236 = v244;
  v245 = v532;
  if (*(v236 + v532[9]))
  {
    v541 = 0;
    v526 = 0xF000000000000000;
  }

  else
  {
    v343 = v534;
    outlined copy of Data._Representation(v534, v196);
    v541 = v343;
    v526 = v196;
  }

  v344 = v236 + v245[5];
  v345 = type metadata accessor for TetraRatchetState(0);
  v346 = &v344[*(v345 + 24)];
  TetraOutgoingSymmetricRatchet.sealMessage(_:)(v543, v113, v539, v538, &v545);
  v494 = v99.super.isa;
  v353 = v545;
  v354 = *(v345 + 28);
  v355 = *&v344[v354];
  if (v355 < 0x28)
  {
    *&v344[v354] = v355 + 1;
  }

  v527 = v196;
  LODWORD(v522) = v546;
  v524 = v547;
  v523 = v548;
  outlined copy of Data._Representation(v353, *(&v353 + 1));
  TetraECDHKey.publicKey.getter();
  v356 = type metadata accessor for TetraOutgoingKeyContent(0);
  v357 = *(v356 + 20);
  v358 = 1;
  if (!(*(v512 + 48))(&v346[v357], 1, v513))
  {
    v359 = v508;
    outlined init with copy of TetraOuterMessageType(&v346[v357], v508, type metadata accessor for TetraKEM768Key);
    TetraKEM768Key.publicKey.getter(v500);
    outlined destroy of TetraOuterMessageType(v359, type metadata accessor for TetraKEM768Key);
    v358 = 0;
  }

  v360 = type metadata accessor for Kyber768.PublicKey();
  v361 = *(*(v360 - 8) + 56);
  v361(v500, v358, 1, v360);
  v362 = &v346[*(v356 + 28)];
  v363 = v362[1];
  v518 = *v362;
  v517 = v363;
  outlined copy of Data?(v518, v363);
  v536 = (v536)(1);
  v520 = v364;
  outlined consume of Data._Representation(v353, *(&v353 + 1));
  v365 = v516;
  v366 = *(v516 + 32);
  v367 = v498;
  v361(v498 + v366, 1, 1, v360);
  v368 = v367 + v365[9];
  *v368 = xmmword_22B48D7D0;
  v369 = v367 + v365[10];
  *v369 = xmmword_22B48D7D0;
  v370 = v365[12];
  v371 = v367 + v365[13];
  *(v367 + 8) = v353;
  v372 = (v367 + v370);
  v373 = v514;
  v374 = v515;
  *v372 = v514;
  v372[1] = v374;
  *(v367 + 24) = v522;
  v375 = *(v528 + 32);
  v376 = v367 + v365[7];
  v528 += 32;
  v522 = v375;
  (v375)(v376, v499, v521);
  outlined copy of Data._Representation(v373, v374);
  outlined assign with take of P256.KeyAgreement.PublicKey?(v500, v367 + v366, &_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
  outlined consume of Data?(*v368, *(v368 + 8));
  v377 = v517;
  *v368 = v518;
  *(v368 + 8) = v377;
  outlined consume of Data?(*v369, *(v369 + 8));
  v378 = v526;
  *v369 = v541;
  *(v369 + 8) = v378;
  v379 = (v367 + v365[11]);
  v380 = v523;
  *v379 = v524;
  v379[1] = v380;
  *v367 = v525;
  v381 = (v367 + v365[14]);
  v382 = v520;
  *v381 = v536;
  v381[1] = v382;
  *v371 = 0;
  *(v371 + 4) = 1;
  v71 = v530;
  v117 = v519;
  if ((specialized static TetraSessionState.== infix(_:_:)(v530, v519) & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMd, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMR);
    v113 = (*(v509 + 80) + 32) & ~*(v509 + 80);
    v526 = *(v509 + 72);
    v386 = swift_allocObject();
    *(v386 + 16) = xmmword_22B48D7C0;
    outlined init with copy of TetraOuterMessageType(v71, v386 + v113, type metadata accessor for TetraSessionState);
    v117 = *(v531 + 24);
    v387 = *&v71[v117];
    *&v545 = v386;
    specialized Array.append<A>(contentsOf:)(v387);
    v237 = v519;
    v120 = v545;
    v388 = outlined assign with copy of TetraSessionState(v519, v71);
    MEMORY[0x28223BE20](v388);
    v485 = v237;
    v389 = specialized Collection.firstIndex(where:)(closure #1 in TetraSessionStates.makeDefault(_:)partial apply, (&v486 - 4), v120);
    v115 = &unk_280F9F000;
    v525 = &v486;
    v541 = v120;
    if (v390)
    {
      v391 = *(v120 + 16);
      v389 = v391;
LABEL_248:
      v393 = v389;
      if (__OFADD__(v391, v389 - v391))
      {
        goto LABEL_429;
      }

      v394 = v389;
      v395 = v541;
      v396 = swift_isUniquelyReferenced_nonNull_native();
      *&v71[v117] = v395;
      if (!v396 || v393 > v395[3] >> 1)
      {
        if (v391 <= v393)
        {
          v397 = v393;
        }

        else
        {
          v397 = v391;
        }

        v395 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v396, v397, 1, v395, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMd, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMR, type metadata accessor for TetraSessionState);
        *&v71[v117] = v395;
      }

      v120 = v511;
      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v394, v391, 0);
      *&v71[v117] = v395;
      v113 = v540;
      v99.super.isa = v494;
      v117 = v519;
      goto LABEL_256;
    }

    v531 = v113;
    v523 = v117;
    v391 = v389 + 1;
    if (__OFADD__(v389, 1))
    {
LABEL_437:
      __break(1u);
LABEL_438:
      __break(1u);
LABEL_439:
      __break(1u);
LABEL_440:
      __break(1u);
LABEL_441:
      __break(1u);
LABEL_442:
      __break(1u);
LABEL_443:
      __break(1u);
LABEL_444:
      __break(1u);
LABEL_445:
      __break(1u);
LABEL_446:
      __break(1u);
LABEL_447:
      __break(1u);
LABEL_448:
      __break(1u);
LABEL_449:
      __break(1u);
LABEL_450:
      __break(1u);
LABEL_451:
      __break(1u);
LABEL_452:
      __break(1u);
LABEL_453:
      __break(1u);
LABEL_454:
      __break(1u);
      goto LABEL_455;
    }

    v113 = v541 + 16;
    v392 = *(v541 + 16);
    v120 = v532;
    v117 = v502;
    if (v391 == v392)
    {
LABEL_246:
      v71 = v530;
      if (v391 < v389)
      {
        goto LABEL_427;
      }

      v117 = v523;
      if (v389 < 0)
      {
        goto LABEL_428;
      }

      goto LABEL_248;
    }

    v520 = (v529 + 48);
    v518 = v529 + 8;
    v71 = (v531 + v526 * v391);
    while (1)
    {
      v536 = v389;
      if (v391 >= v392)
      {
        goto LABEL_411;
      }

      v399 = outlined init with copy of TetraOuterMessageType(&v71[v541], v117, type metadata accessor for TetraSessionState);
      if (*v117 != *v237)
      {
        goto LABEL_354;
      }

      v400 = *(v120 + 24);
      v401 = MEMORY[0x231891720](v399);
      v403 = v402;
      v404 = *(v120 + 24);
      v405 = MEMORY[0x231891720]();
      v407 = v403 >> 62;
      v408 = v406 >> 62;
      if (v403 >> 62 == 3)
      {
        v409 = 0;
        if (v401)
        {
          v237 = v519;
          v117 = v502;
        }

        else
        {
          v237 = v519;
          v117 = v502;
          if (v403 == 0xC000000000000000 && v406 >> 62 == 3)
          {
            v409 = 0;
            if (!v405 && v406 == 0xC000000000000000)
            {
              outlined consume of Data._Representation(0, 0xC000000000000000);
              v410 = 0;
              v411 = 0xC000000000000000;
              goto LABEL_295;
            }
          }
        }
      }

      else if (v407 > 1)
      {
        v237 = v519;
        v117 = v502;
        if (v407 == 2)
        {
          v413 = *(v401 + 16);
          v412 = *(v401 + 24);
          v267 = __OFSUB__(v412, v413);
          v409 = v412 - v413;
          if (v267)
          {
            goto LABEL_439;
          }
        }

        else
        {
          v409 = 0;
        }
      }

      else
      {
        v237 = v519;
        v117 = v502;
        if (v407)
        {
          LODWORD(v409) = HIDWORD(v401) - v401;
          if (__OFSUB__(HIDWORD(v401), v401))
          {
            goto LABEL_438;
          }

          v409 = v409;
        }

        else
        {
          v409 = BYTE6(v403);
        }
      }

      if (v408 > 1)
      {
        if (v408 != 2)
        {
          if (v409)
          {
LABEL_293:
            outlined consume of Data._Representation(v405, v406);
            outlined consume of Data._Representation(v401, v403);
            v115 = &unk_280F9F000;
            goto LABEL_354;
          }

LABEL_294:
          outlined consume of Data._Representation(v405, v406);
          v410 = v401;
          v411 = v403;
LABEL_295:
          outlined consume of Data._Representation(v410, v411);
          goto LABEL_296;
        }

        v416 = *(v405 + 16);
        v415 = *(v405 + 24);
        v267 = __OFSUB__(v415, v416);
        v414 = v415 - v416;
        if (v267)
        {
          goto LABEL_435;
        }
      }

      else if (v408)
      {
        LODWORD(v414) = HIDWORD(v405) - v405;
        if (__OFSUB__(HIDWORD(v405), v405))
        {
          goto LABEL_434;
        }

        v414 = v414;
      }

      else
      {
        v414 = BYTE6(v406);
      }

      if (v409 != v414)
      {
        goto LABEL_293;
      }

      if (v409 < 1)
      {
        goto LABEL_294;
      }

      v529 = v405;
      if (v407 > 1)
      {
        if (v407 == 2)
        {
          v431 = *(v401 + 24);
          v524 = *(v401 + 16);
          v517 = v431;
          v432 = v405;
          v433 = v406;
          outlined copy of Data._Representation(v405, v406);
          v434 = v524;
          v524 = v433;
          LODWORD(v517) = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v434, v517, v403 & 0x3FFFFFFFFFFFFFFFLL, v432, v433);
          v123 = 0;
          v435 = v529;
          v436 = v524;
          outlined consume of Data._Representation(v529, v524);
          outlined consume of Data._Representation(v435, v436);
          v437 = v401;
          goto LABEL_335;
        }

        *(&v545 + 6) = 0;
        *&v545 = 0;
        v444 = v405;
        v445 = v406;
        outlined copy of Data._Representation(v405, v406);
        v446 = v444;
        v421 = v445;
        closure #1 in static Data.== infix(_:_:)(&v545, v446, v445, &v544);
        v123 = 0;
        v419 = v529;
        v420 = v529;
      }

      else
      {
        if (v407)
        {
          v120 = v401;
          v524 = v401;
          v237 = v401 >> 32;
          if (v401 >> 32 < v401)
          {
            goto LABEL_448;
          }

          v441 = v406;
          outlined copy of Data._Representation(v405, v406);
          v442 = v120;
          v443 = v529;
          LODWORD(v517) = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v442, v237, v403 & 0x3FFFFFFFFFFFFFFFLL, v529, v441);
          v123 = 0;
          outlined consume of Data._Representation(v443, v441);
          outlined consume of Data._Representation(v443, v441);
          v437 = v524;
LABEL_335:
          outlined consume of Data._Representation(v437, v403);
          v115 = &unk_280F9F000;
          v237 = v519;
          if ((v517 & 1) == 0)
          {
            goto LABEL_354;
          }

          goto LABEL_296;
        }

        *&v545 = v401;
        WORD4(v545) = v403;
        BYTE10(v545) = BYTE2(v403);
        BYTE11(v545) = BYTE3(v403);
        BYTE12(v545) = BYTE4(v403);
        BYTE13(v545) = BYTE5(v403);
        v524 = &v545 + BYTE6(v403);
        v417 = v405;
        v418 = v406;
        outlined copy of Data._Representation(v405, v406);
        v524 = v418;
        closure #1 in static Data.== infix(_:_:)(&v545, v417, v418, &v544);
        v123 = 0;
        v419 = v529;
        v420 = v529;
        v421 = v524;
      }

      outlined consume of Data._Representation(v420, v421);
      outlined consume of Data._Representation(v419, v421);
      outlined consume of Data._Representation(v401, v403);
      v115 = &unk_280F9F000;
      v237 = v519;
      if (!v544)
      {
        goto LABEL_354;
      }

LABEL_296:
      v422 = v532[8];
      v423 = *(v117 + v422);
      v120 = *(v117 + v422 + 8);
      v424 = (v237 + v422);
      v425 = *v424;
      v237 = v424[1];
      v426 = v120 >> 62;
      v427 = v237 >> 62;
      if (v120 >> 62 == 3)
      {
        v428 = 0;
        if (!v423 && v120 == 0xC000000000000000 && v237 >> 62 == 3)
        {
          v428 = 0;
          if (!v425 && v237 == 0xC000000000000000)
          {
            goto LABEL_330;
          }
        }
      }

      else if (v426 > 1)
      {
        if (v426 == 2)
        {
          v430 = *(v423 + 16);
          v429 = *(v423 + 24);
          v267 = __OFSUB__(v429, v430);
          v428 = v429 - v430;
          if (v267)
          {
            goto LABEL_447;
          }
        }

        else
        {
          v428 = 0;
        }
      }

      else if (v426)
      {
        LODWORD(v428) = HIDWORD(v423) - v423;
        if (__OFSUB__(HIDWORD(v423), v423))
        {
          goto LABEL_446;
        }

        v428 = v428;
      }

      else
      {
        v428 = BYTE6(v120);
      }

      if (v427 > 1)
      {
        if (v427 != 2)
        {
          v115 = &unk_280F9F000;
          v237 = v519;
          if (v428)
          {
            goto LABEL_354;
          }

          goto LABEL_347;
        }

        v440 = *(v425 + 16);
        v439 = *(v425 + 24);
        v267 = __OFSUB__(v439, v440);
        v438 = v439 - v440;
        if (v267)
        {
          goto LABEL_443;
        }
      }

      else if (v427)
      {
        LODWORD(v438) = HIDWORD(v425) - v425;
        if (__OFSUB__(HIDWORD(v425), v425))
        {
          goto LABEL_442;
        }

        v438 = v438;
      }

      else
      {
        v438 = BYTE6(v237);
      }

      if (v428 != v438)
      {
        v115 = &unk_280F9F000;
        v237 = v519;
        goto LABEL_354;
      }

      if (v428 < 1)
      {
LABEL_330:
        v115 = &unk_280F9F000;
        goto LABEL_347;
      }

      if (v426 > 1)
      {
        if (v426 == 2)
        {
          v447 = *(v423 + 16);
          v117 = *(v423 + 24);
          goto LABEL_343;
        }

        *(&v545 + 6) = 0;
        *&v545 = 0;
        outlined copy of Data._Representation(v425, v237);
      }

      else
      {
        if (v426)
        {
          v447 = v423;
          v117 = v423 >> 32;
          if (v423 >> 32 < v423)
          {
            goto LABEL_449;
          }

LABEL_343:
          outlined copy of Data._Representation(v425, v237);
          v448 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v447, v117, v120 & 0x3FFFFFFFFFFFFFFFLL, v425, v237);
          v123 = 0;
          outlined consume of Data._Representation(v425, v237);
          v115 = &unk_280F9F000;
          v237 = v519;
          v117 = v502;
          if ((v448 & 1) == 0)
          {
            goto LABEL_354;
          }

          goto LABEL_347;
        }

        *&v545 = v423;
        WORD4(v545) = v120;
        BYTE10(v545) = BYTE2(v120);
        BYTE11(v545) = BYTE3(v120);
        BYTE12(v545) = BYTE4(v120);
        BYTE13(v545) = BYTE5(v120);
        outlined copy of Data._Representation(v425, v237);
      }

      closure #1 in static Data.== infix(_:_:)(&v545, v425, v237, &v544);
      v123 = 0;
      outlined consume of Data._Representation(v425, v237);
      v115 = &unk_280F9F000;
      v237 = v519;
      if (!v544)
      {
        goto LABEL_354;
      }

LABEL_347:
      v524 = v71;
      v449 = v532[7];
      v450 = *(v506 + 48);
      v451 = v496;
      outlined init with copy of TetraSessionStates?(v117 + v449, v496, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
      v529 = v450;
      outlined init with copy of TetraSessionStates?(v519 + v449, v451 + v450, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
      v71 = *v520;
      v452 = v521;
      if ((*v520)(v451, 1, v521) == 1)
      {
        v453 = (v71)(v451 + v529, 1, v452);
        v71 = v524;
        if (v453 == 1)
        {
          outlined destroy of TetraSessionStates?(v451, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
          v117 = v502;
          outlined destroy of TetraOuterMessageType(v502, type metadata accessor for TetraSessionState);
          goto LABEL_399;
        }

        goto LABEL_352;
      }

      outlined init with copy of TetraSessionStates?(v451, v535, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
      v117 = v529;
      if ((v71)(v451 + v529, 1, v452) == 1)
      {
        (*v518)(v535, v452);
        v71 = v524;
LABEL_352:
        outlined destroy of TetraSessionStates?(v451, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMd, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMR);
        goto LABEL_353;
      }

      v461 = v451 + v117;
      v120 = v495;
      v462 = (v522)(v495, v461, v452);
      v463 = MEMORY[0x231891580](v462);
      v465 = v464;
      v237 = v120;
      v466 = MEMORY[0x231891580]();
      v468 = v465 >> 62;
      v469 = v467 >> 62;
      if (v465 >> 62 == 3)
      {
        v470 = 0;
        if (!v463 && v465 == 0xC000000000000000 && v467 >> 62 == 3)
        {
          v470 = 0;
          if (!v466 && v467 == 0xC000000000000000)
          {
            outlined consume of Data._Representation(0, 0xC000000000000000);
            outlined consume of Data._Representation(0, 0xC000000000000000);
            v71 = v524;
            goto LABEL_398;
          }
        }
      }

      else if (v468 == 2)
      {
        v472 = *(v463 + 16);
        v471 = *(v463 + 24);
        v267 = __OFSUB__(v471, v472);
        v470 = v471 - v472;
        if (v267)
        {
          goto LABEL_452;
        }
      }

      else if (v468 == 1)
      {
        LODWORD(v470) = HIDWORD(v463) - v463;
        if (__OFSUB__(HIDWORD(v463), v463))
        {
          goto LABEL_453;
        }

        v470 = v470;
      }

      else
      {
        v470 = BYTE6(v465);
      }

      if (v469 > 1)
      {
        if (v469 != 2)
        {
          v71 = v524;
          if (!v470)
          {
LABEL_397:
            outlined consume of Data._Representation(v466, v467);
            outlined consume of Data._Representation(v463, v465);
LABEL_398:
            v482 = *v518;
            v483 = v521;
            (*v518)(v495, v521);
            v482(v535, v483);
            outlined destroy of TetraSessionStates?(v496, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
            v117 = v502;
            outlined destroy of TetraOuterMessageType(v502, type metadata accessor for TetraSessionState);
            v115 = &unk_280F9F000;
LABEL_399:
            v120 = v532;
            v237 = v519;
            goto LABEL_400;
          }

LABEL_396:
          outlined consume of Data._Representation(v466, v467);
          outlined consume of Data._Representation(v463, v465);
          v480 = *v518;
          v481 = v521;
          (*v518)(v495, v521);
          v480(v535, v481);
          outlined destroy of TetraSessionStates?(v496, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
          v115 = &unk_280F9F000;
LABEL_353:
          v237 = v519;
          v117 = v502;
LABEL_354:
          outlined destroy of TetraOuterMessageType(v117, type metadata accessor for TetraSessionState);
          goto LABEL_355;
        }

        v475 = *(v466 + 16);
        v474 = *(v466 + 24);
        v267 = __OFSUB__(v474, v475);
        v473 = v474 - v475;
        if (v267)
        {
          goto LABEL_451;
        }
      }

      else if (v469)
      {
        LODWORD(v473) = HIDWORD(v466) - v466;
        if (__OFSUB__(HIDWORD(v466), v466))
        {
          goto LABEL_450;
        }

        v473 = v473;
      }

      else
      {
        v473 = BYTE6(v467);
      }

      v71 = v524;
      if (v470 != v473)
      {
        goto LABEL_396;
      }

      if (v470 < 1)
      {
        goto LABEL_397;
      }

      v476 = v466;
      v477 = v467;
      outlined copy of Data._Representation(v466, v467);
      LODWORD(v529) = specialized Data.withUnsafeBytes<A>(_:)(v463, v465, v476, v477);
      outlined consume of Data._Representation(v476, v477);
      outlined consume of Data._Representation(v463, v465);
      v478 = *v518;
      v479 = v521;
      (*v518)(v495, v521);
      v478(v535, v479);
      outlined destroy of TetraSessionStates?(v496, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
      v117 = v502;
      outlined destroy of TetraOuterMessageType(v502, type metadata accessor for TetraSessionState);
      v115 = &unk_280F9F000;
      v237 = v519;
      if (v529)
      {
        v120 = v532;
LABEL_400:
        v455 = v541;
        v389 = v536;
        goto LABEL_365;
      }

LABEL_355:
      v454 = v536;
      if (v391 == v536)
      {
        v120 = v532;
        v455 = v541;
      }

      else
      {
        if ((v536 & 0x8000000000000000) != 0)
        {
          goto LABEL_417;
        }

        v456 = *v113;
        if (v536 >= *v113)
        {
          goto LABEL_418;
        }

        v455 = v541;
        v457 = v531;
        v458 = v536 * v526;
        outlined init with copy of TetraOuterMessageType(v541 + v531 + v536 * v526, v505, type metadata accessor for TetraSessionState);
        if (v391 >= v456)
        {
          goto LABEL_419;
        }

        outlined init with copy of TetraOuterMessageType(&v71[v455], v504, type metadata accessor for TetraSessionState);
        v459 = swift_isUniquelyReferenced_nonNull_native();
        v237 = v519;
        if ((v459 & 1) == 0)
        {
          v455 = specialized _ArrayBuffer._consumeAndCreateNew()(v455);
        }

        outlined assign with take of TetraSessionState(v504, v455 + v457 + v458, type metadata accessor for TetraSessionState);
        if (v391 >= *(v455 + 16))
        {
          goto LABEL_420;
        }

        outlined assign with take of TetraSessionState(v505, &v71[v455], type metadata accessor for TetraSessionState);
        v120 = v532;
        v454 = v536;
      }

      v389 = v454 + 1;
LABEL_365:
      ++v391;
      v541 = v455;
      v460 = *(v455 + 16);
      v113 = v455 + 16;
      v392 = v460;
      v71 += v526;
      if (v391 == v460)
      {
        goto LABEL_246;
      }
    }
  }

  outlined assign with copy of TetraSessionState(v117, v71);
  v113 = v540;
  v99.super.isa = v494;
  v115 = &unk_280F9F000;
  v120 = v511;
LABEL_256:
  v398 = v527;
  TetraSessionStates.cleanupPreviousSessionStates()();
  outlined consume of Data._Representation(v534, v398);
  outlined destroy of TetraOuterMessageType(v117, type metadata accessor for TetraSessionState);
  outlined init with take of TetraRatchetOuterMessage(v498, v120, type metadata accessor for TetraRatchetOuterMessage);

LABEL_61:
  v233 = TetraRatchetOuterMessage.serializedData(signedBy:)(v537);
  if (!v123)
  {
    v117 = v233;
    v243 = v120;
    v120 = v234;
    outlined destroy of TetraOuterMessageType(v243, type metadata accessor for TetraRatchetOuterMessage);
    v237 = v533;
    TetraDBManager.saveTetraSession(conversationID:sessionStates:needsSync:)(v99.super.isa, v71, 1);
    v71 = static os_log_type_t.debug.getter();
    v347 = MessageProtectionLog();
    if (v347)
    {
      v348 = v347;
      os_log(_:dso:log:_:_:)();

      v349 = v115[483];
      OS_dispatch_semaphore.signal()();

      v350 = v120;
      v239 = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data._Representation(v117, v350);
      outlined consume of Data._Representation(v543, v113);
      outlined consume of Data?(v539, v538);

      v351 = type metadata accessor for TetraSessionStates;
      v352 = v530;
LABEL_241:
      outlined destroy of TetraOuterMessageType(v352, v351);

      goto LABEL_66;
    }

    goto LABEL_454;
  }

  outlined destroy of TetraOuterMessageType(v120, type metadata accessor for TetraRatchetOuterMessage);
  outlined destroy of TetraOuterMessageType(v71, type metadata accessor for TetraSessionStates);
LABEL_64:
  v237 = static os_log_type_t.debug.getter();
  v238 = MessageProtectionLog();
  if (!v238)
  {
    __break(1u);
LABEL_433:
    __break(1u);
LABEL_434:
    __break(1u);
LABEL_435:
    __break(1u);
LABEL_436:
    __break(1u);
    goto LABEL_437;
  }

  v239 = v238;
  os_log(_:dso:log:_:_:)();

  v240 = v115[483];
  OS_dispatch_semaphore.signal()();

  swift_willThrow();

  outlined consume of Data._Representation(v543, v113);
  outlined consume of Data?(v539, v538);
LABEL_66:
  v241 = *MEMORY[0x277D85DE8];
  return v239;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MessageProtectionFeatureFlags and conformance MessageProtectionFeatureFlags()
{
  result = lazy protocol witness table cache variable for type MessageProtectionFeatureFlags and conformance MessageProtectionFeatureFlags;
  if (!lazy protocol witness table cache variable for type MessageProtectionFeatureFlags and conformance MessageProtectionFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageProtectionFeatureFlags and conformance MessageProtectionFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageProtectionFeatureFlags and conformance MessageProtectionFeatureFlags;
  if (!lazy protocol witness table cache variable for type MessageProtectionFeatureFlags and conformance MessageProtectionFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageProtectionFeatureFlags and conformance MessageProtectionFeatureFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TetraGeneralError and conformance TetraGeneralError()
{
  result = lazy protocol witness table cache variable for type TetraGeneralError and conformance TetraGeneralError;
  if (!lazy protocol witness table cache variable for type TetraGeneralError and conformance TetraGeneralError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraGeneralError and conformance TetraGeneralError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraGeneralError and conformance TetraGeneralError;
  if (!lazy protocol witness table cache variable for type TetraGeneralError and conformance TetraGeneralError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraGeneralError and conformance TetraGeneralError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TetraAKE and conformance TetraAKE()
{
  result = lazy protocol witness table cache variable for type TetraAKE and conformance TetraAKE;
  if (!lazy protocol witness table cache variable for type TetraAKE and conformance TetraAKE)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraAKE and conformance TetraAKE);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraAKE and conformance TetraAKE;
  if (!lazy protocol witness table cache variable for type TetraAKE and conformance TetraAKE)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraAKE and conformance TetraAKE);
  }

  return result;
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of TetraSessionStates?(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSyXlGMd, &_ss18_DictionaryStorageCySSyXlGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of TetraSessionStates?(v4, v13, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_23;
  }

  v3 = a3;
  v6 = a2;
  v7 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v8 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ReceivingKeyTetraRatchet(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v10);
  v10 = v3 - v10;
  if (v12)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v10)
  {
    goto LABEL_20;
  }

  v9 = v7 >> 62;
  if (!(v7 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_24:
  if (v7 < 0)
  {
    v18 = v7;
  }

  else
  {
    v18 = v4;
  }

  result = MEMORY[0x231891D10](v18);
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_29;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v8[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v9)
  {
    if (v7 < 0)
    {
      v17 = v7;
    }

    else
    {
      v17 = v4;
    }

    result = MEMORY[0x231891D10](v17);
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_30;
  }

  v4[2] = result + v10;
LABEL_20:
  if (v3 > 0)
  {
LABEL_31:
    __break(1u);
  }

  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    a3 = *v4 & 0xFFFFFFFFFFFFFF8;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }
  }

  if (v6 < 0)
  {
    v13 = v6;
  }

  else
  {
    v13 = a3;
  }

  result = MEMORY[0x231891D10](v13);
  if (result < v3)
  {
    goto LABEL_21;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  if (v7)
  {
    if (v6 < 0)
    {
      v11 = v6;
    }

    else
    {
      v11 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v10 = MEMORY[0x231891D10](v11);
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v12)
  {
    goto LABEL_24;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);

  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v5, v3, 0);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd, &_ss18_DictionaryStorageCySS10Foundation4DataVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      outlined copy of Data._Representation(v7, v8);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t outlined assign with copy of TetraSessionState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TetraSessionState();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void specialized static TetraAPI.open(message:authenticatedData:guid:sendingURI:sendingPushToken:receivingURI:receivingPushToken:theirIdentity:signedBy:tetraVersion:ourPrekeys:ourSigningPublicKeyCompactRepresentation:decryptionBlock:)(unint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, void *a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, void *a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19)
{
  v514 = a7;
  v506 = a6;
  v505 = a5;
  v512 = a4;
  v511 = a3;
  v510 = a2;
  v509 = a1;
  v20 = a19;
  v513 = a12;
  v526 = *MEMORY[0x277D85DE8];
  v470 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMd, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMR);
  v21 = *(*(v470 - 8) + 64);
  MEMORY[0x28223BE20](v470);
  v473 = &v466 - v22;
  v23 = type metadata accessor for TetraRatchetState(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v485 = &v466 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v483 = type metadata accessor for P256.Signing.PublicKey();
  v482 = *(v483 - 1);
  v26 = *(v482 + 64);
  MEMORY[0x28223BE20](v483);
  v487 = &v466 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v484 = type metadata accessor for TetraSessionState();
  v472 = *(v484 - 1);
  v28 = *(v472 + 64);
  v29 = MEMORY[0x28223BE20](v484);
  v477 = &v466 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v476 = &v466 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v478 = (&v466 - v34);
  v35 = MEMORY[0x28223BE20](v33);
  v480 = (&v466 - v36);
  v37 = MEMORY[0x28223BE20](v35);
  v481 = (&v466 - v38);
  MEMORY[0x28223BE20](v37);
  v479 = (&v466 - v39);
  v493 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v492 = *(v493 - 8);
  v40 = *(v492 + 64);
  v41 = MEMORY[0x28223BE20](v493);
  v469 = &v466 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v488 = v42;
  MEMORY[0x28223BE20](v41);
  v489 = &v466 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v44 - 8);
  v471 = &v466 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v46);
  v486 = &v466 - v49;
  MEMORY[0x28223BE20](v48);
  v491 = &v466 - v50;
  v497 = type metadata accessor for TetraSessionStates();
  v496 = *(v497 - 8);
  v51 = *(v496 + 64);
  v52 = MEMORY[0x28223BE20](v497);
  v490 = &v466 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v52);
  v507 = &v466 - v55;
  MEMORY[0x28223BE20](v54);
  v499 = &v466 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
  v58 = *(*(v57 - 8) + 64);
  v59 = MEMORY[0x28223BE20](v57 - 8);
  v474 = &v466 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x28223BE20](v59);
  v475 = (&v466 - v62);
  v63 = MEMORY[0x28223BE20](v61);
  v494 = &v466 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v495 = &v466 - v66;
  MEMORY[0x28223BE20](v65);
  v502 = &v466 - v67;
  v498 = type metadata accessor for TetraRatchetOuterMessage(0);
  v68 = *(*(v498 - 8) + 64);
  MEMORY[0x28223BE20](v498);
  v70 = &v466 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for TetraNoRatchetOuterMessage(0);
  v72 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71 - 8);
  v500 = (&v466 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
  v508 = type metadata accessor for TetraOuterMessageType(0);
  v74 = *(*(v508 - 8) + 64);
  v75 = MEMORY[0x28223BE20](v508);
  v503 = &v466 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = MEMORY[0x28223BE20](v75);
  v501 = &v466 - v78;
  MEMORY[0x28223BE20](v77);
  v515 = a14;
  v516 = &v466 - v79;
  v520 = a19;
  v80 = [a14 compactRepresentation];
  v81 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v83 = v82;

  v84 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v86 = v85;
  specialized static TetraAPI.conversationInfo(sendingURI:sendingPushToken:senderPublicKeyCompactRepresentation:receivingURI:receivingPushToken:receivingPublicKeyCompactRepresentation:)(v514, a8, a9, v81, v83, a10, a11, v513, v84, v85);
  v88 = v87;
  v90 = v89;
  outlined consume of Data._Representation(v84, v86);
  outlined consume of Data._Representation(v81, v83);

  v91 = v88(0);
  v93 = v92;

  v94.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v91, v93);
  v95 = static os_log_type_t.info.getter();
  v514 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  v96 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v96, v95))
  {
    v97 = swift_slowAlloc();
    v513 = swift_slowAlloc();
    *&aBlock = v513;
    *v97 = 136315138;
    v98 = [(objc_class *)v94.super.isa base64EncodedStringWithOptions:0];
    v99 = v88;
    v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    LODWORD(v468) = v95;
    v101 = v90;
    v103 = v102;

    v104 = v100;
    v88 = v99;
    v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v103, &aBlock);
    v90 = v101;
    v20 = a19;

    *(v97 + 4) = v105;
    _os_log_impl(&dword_22B404000, v96, v468, "Decrypting for conversationID: %s", v97, 0xCu);
    v106 = v513;
    __swift_destroy_boxed_opaque_existential_1(v513);
    MEMORY[0x231892DF0](v106, -1, -1);
    MEMORY[0x231892DF0](v97, -1, -1);
  }

  static os_log_type_t.debug.getter();
  v107 = MessageProtectionLog();
  v108 = v516;
  if (!v107)
  {
LABEL_298:
    __break(1u);
    goto LABEL_299;
  }

  v109 = v107;
  v110 = v20;
  os_log(_:dso:log:_:_:)();

  if (one-time initialization token for conversationLock != -1)
  {
    swift_once();
  }

  v504 = v70;
  isa = v94.super.isa;
  v112 = conversationLock;
  OS_dispatch_semaphore.wait()();

  static os_log_type_t.debug.getter();
  v113 = MessageProtectionLog();
  if (!v113)
  {
LABEL_299:
    __break(1u);
  }

  v114 = v113;
  v115 = MEMORY[0x277D84F90];
  os_log(_:dso:log:_:_:)();

  v116 = v88;
  v117 = v88(1);
  v119 = v118;

  v120 = v108;
  v121 = v515;
  v122 = 0;
  parseTetraOuterMessage(serializedData:authenticatedData:signedBy:onSessionWithDST:)(v509, v510, v511, v512, v515, v117, v119, v120);
  v513 = a16;
  LODWORD(v512) = a15;
  outlined consume of Data._Representation(v117, v119);
  v523 = &type metadata for MessageProtectionFeatureFlags;
  v524 = lazy protocol witness table accessor for type MessageProtectionFeatureFlags and conformance MessageProtectionFeatureFlags();
  LOBYTE(aBlock) = 3;
  v148 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v149 = v116;
  v150 = isa;
  v151 = v110;
  v152 = v507;
  if (v148)
  {
    v153 = v501;
    outlined init with copy of TetraOuterMessageType(v516, v501, type metadata accessor for TetraOuterMessageType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v154 = a13;
      v155 = v500;
      outlined init with take of TetraRatchetOuterMessage(v153, v500, type metadata accessor for TetraNoRatchetOuterMessage);
      v156 = static os_log_type_t.info.getter();
      v157 = static OS_os_log.default.getter();
      if (os_log_type_enabled(v157, v156))
      {
        v158 = swift_slowAlloc();
        v514 = a13;
        v159 = v158;
        v160 = swift_slowAlloc();
        *&aBlock = v160;
        *v159 = 136315138;
        v161 = v149;
        v162 = [(objc_class *)v150 base64EncodedStringWithOptions:0];
        v163 = v150;
        v164 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v165 = v90;
        v167 = v166;

        v168 = v164;
        v150 = v163;
        v121 = v515;
        v169 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v168, v167, &aBlock);
        v90 = v165;

        *(v159 + 4) = v169;
        v149 = v161;
        v155 = v500;
        _os_log_impl(&dword_22B404000, v157, v156, "Decrypting TetraNoRatchet for conversationID: %s", v159, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v160);
        MEMORY[0x231892DF0](v160, -1, -1);
        v170 = v159;
        v154 = v514;
        MEMORY[0x231892DF0](v170, -1, -1);
      }

      if (v154)
      {

        specialized static TetraAPI.openNoRatchet(tetraOuterMessage:sessionDST:guid:authenticatedData:ourPrekeys:theirIdentity:tetraVersion:signedBy:decryptionBlock:)(v155, v149, v90, v505, v506, v513, v154, v512, v121, partial apply for thunk for @callee_unowned @convention(block) (@unowned NSData?, @unowned NSDictionary?, @unowned NSError?, @unowned (@escaping @callee_unowned @convention(block) (@unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@unowned ObjCBool))?) -> (), v519);

        static os_log_type_t.debug.getter();
        v171 = MessageProtectionLog();
        if (v171)
        {
          v172 = v171;
          os_log(_:dso:log:_:_:)();

          v173 = conversationLock;
          OS_dispatch_semaphore.signal()();

          outlined destroy of TetraOuterMessageType(v155, type metadata accessor for TetraNoRatchetOuterMessage);
          outlined destroy of TetraOuterMessageType(v516, type metadata accessor for TetraOuterMessageType);
          goto LABEL_18;
        }

        goto LABEL_305;
      }

LABEL_304:
      __break(1u);
LABEL_305:
      __break(1u);
LABEL_306:
      __break(1u);
LABEL_307:
      __break(1u);
LABEL_308:
      __break(1u);
LABEL_309:
      __break(1u);
      goto LABEL_310;
    }

    outlined destroy of TetraOuterMessageType(v153, type metadata accessor for TetraOuterMessageType);
  }

  v174 = v150;
  v175 = v516;
  v176 = v503;
  outlined init with copy of TetraOuterMessageType(v516, v503, type metadata accessor for TetraOuterMessageType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of TetraOuterMessageType(v176, type metadata accessor for TetraOuterMessageType);
    lazy protocol witness table accessor for type TetraGeneralError and conformance TetraGeneralError();
    v177 = swift_allocError();
    *v178 = 0;
    swift_willThrow();
    outlined destroy of TetraOuterMessageType(v175, type metadata accessor for TetraOuterMessageType);
    v179 = v174;
    goto LABEL_8;
  }

  outlined init with take of TetraRatchetOuterMessage(v176, v504, type metadata accessor for TetraRatchetOuterMessage);
  if (one-time initialization token for sharedInstance != -1)
  {
    goto LABEL_98;
  }

LABEL_30:
  v180 = static TetraDBManager.sharedInstance;
  v181 = v502;
  v179 = v174;
  TetraDBManager.getSessionForNGMIdentity(conversationID:)(v174, v502);
  v511 = v122;
  if (v122)
  {
    outlined destroy of TetraOuterMessageType(v516, type metadata accessor for TetraOuterMessageType);
    outlined destroy of TetraOuterMessageType(v504, type metadata accessor for TetraRatchetOuterMessage);
LABEL_32:
    v177 = v511;
    goto LABEL_8;
  }

  v503 = v180;
  v468 = a18;
  v182 = v181;
  v183 = v495;
  outlined init with copy of TetraSessionStates?(v182, v495, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
  v184 = *(v496 + 48);
  v501 = v496 + 48;
  v500 = v184;
  v185 = (v184)(v183, 1, v497);
  v186 = v504;
  if (v185 == 1)
  {
    outlined destroy of TetraSessionStates?(v183, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
  }

  else
  {
    outlined init with take of TetraRatchetOuterMessage(v183, v499, type metadata accessor for TetraSessionStates);
    v518 = 0;
    v190 = v498;
    if (*(v186 + *(v498 + 36) + 8) >> 60 == 15)
    {
      goto LABEL_41;
    }

    v191 = (v186 + *(v498 + 40));
    if (v191[1] >> 60 == 15)
    {
      goto LABEL_41;
    }

    v192 = v498;
    outlined init with copy of TetraOuterMessageType(v499, v152, type metadata accessor for TetraSessionStates);
    v193 = v492;
    v194 = v186 + *(v192 + 28);
    v152 = v491;
    v195 = v493;
    (*(v492 + 16))(v491, v194, v493);
    (*(v193 + 56))(v152, 0, 1, v195);
    v196 = v191[1];
    if (v196 >> 60 == 15)
    {
      goto LABEL_318;
    }

    v197 = v507;
    v198 = TetraSessionStates.hasSessionForEphemeralAndPrekeyHash(_:prekeyHash:)(v152, *v191, v196);
    outlined destroy of TetraSessionStates?(v152, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
    outlined destroy of TetraOuterMessageType(v197, type metadata accessor for TetraSessionStates);
    v190 = v498;
    if (v198)
    {
LABEL_41:
      v199 = (v186 + *(v190 + 40));
      v200 = *v199;
      v201 = v199[1];

      v202 = v511;
      v203 = TetraSessionStates.openMessage(_:prekeysHash:sessionDST:theirTetraVersion:didRatchet:)(v186, v200, v201, v149, v90, v512, &v518);
      v177 = v202;
      if (v202)
      {

        *&aBlock = v202;
        v219 = v202;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v220 = swift_dynamicCast();
        v221 = v517;

        v186 = v504;
        v222 = v494;
        if (v220 && v221 != 2)
        {
          TetraDBManager.getSessionForNGMIdentity(conversationID:)(v179, v494);
          v237 = v497;
          v238 = (v500)(v222, 1, v497);
          if (v238 == 1)
          {
            outlined destroy of TetraSessionStates?(v222, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
            v239 = static os_log_type_t.fault.getter();
            v240 = static OS_os_log.default.getter();
            if (os_log_type_enabled(v240, v239))
            {
              v241 = swift_slowAlloc();
              v242 = swift_slowAlloc();
              *v241 = 138412290;
              *(v241 + 4) = v179;
              *v242 = v179;
              v243 = v179;
              _os_log_impl(&dword_22B404000, v240, v239, "Failed to retrieve the session state %@ for saving errored state.", v241, 0xCu);
              outlined destroy of TetraSessionStates?(v242, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
              v244 = v242;
              v186 = v504;
              MEMORY[0x231892DF0](v244, -1, -1);
              MEMORY[0x231892DF0](v241, -1, -1);
            }
          }

          else
          {
            v271 = v222;
            v272 = v490;
            outlined init with take of TetraRatchetOuterMessage(v271, v490, type metadata accessor for TetraSessionStates);
            *(v272 + *(v237 + 20)) = 1;
            TetraDBManager.saveTetraSession(conversationID:sessionStates:needsSync:)(v179, v272, 0);
            outlined destroy of TetraOuterMessageType(v490, type metadata accessor for TetraSessionStates);
          }
        }

        swift_willThrow();
        outlined destroy of TetraOuterMessageType(v499, type metadata accessor for TetraSessionStates);
        goto LABEL_294;
      }

      v208 = v205;
      v209 = v206;
      v210 = v179;
      v513 = v203;
      v515 = v204;

      v211 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      if (v209 >> 60 != 15)
      {
        v212 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v213 = v151;
        v214 = v90;
        v216 = v215;
        outlined copy of Data._Representation(v208, v209);
        outlined copy of Data._Representation(v208, v209);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&aBlock = v211;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v208, v209, v212, v216, isUniquelyReferenced_nonNull_native);
        outlined consume of Data?(v208, v209);
        v90 = v214;
        v151 = v213;

        v211 = aBlock;
      }

      v218 = v493;
      TetraDBManager.saveTetraSession(conversationID:sessionStates:needsSync:)(v210, v499, v518);
      v467 = v151;
      v514 = v90;
      static os_log_type_t.debug.getter();
      v245 = MessageProtectionLog();
      if (v245)
      {
        v246 = v245;
        os_log(_:dso:log:_:_:)();

        v247 = conversationLock;
        OS_dispatch_semaphore.signal()();

        v511 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v211);

        v248 = *(v504 + 6);
        v249 = v492;
        v250 = v489;
        (*(v492 + 16))(v489, &v504[*(v498 + 28)], v218);
        v251 = (*(v249 + 80) + 32) & ~*(v249 + 80);
        v252 = (v488 + v251 + 7) & 0xFFFFFFFFFFFFFFF8;
        v253 = swift_allocObject();
        *(v253 + 16) = v468;
        *(v253 + 24) = v210;
        (*(v249 + 32))(v253 + v251, v250, v218);
        *(v253 + v252) = v248;
        v512 = v210;
        v254 = v513;
        v255 = v515;
        v256 = Data._bridgeToObjectiveC()().super.isa;
        v257 = Dictionary._bridgeToObjectiveC()().super.isa;
        v524 = closure #1 in static TetraAPI.commitStateAfterSuccessfulDecryptionOfMessage(conversationID:ephemeralECDHPublicKey:messageIndex:)partial apply;
        v525 = v253;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v522 = thunk for @escaping @callee_guaranteed (@unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@unowned Bool);
        v523 = &block_descriptor_17;
        v258 = _Block_copy(&aBlock);

        (*(v467 + 2))(v467, v256, v257, 0, v258);
        _Block_release(v258);

        outlined consume of Data._Representation(v254, v255);
        outlined consume of Data?(v208, v209);

        outlined destroy of TetraOuterMessageType(v499, type metadata accessor for TetraSessionStates);
        outlined destroy of TetraOuterMessageType(v516, type metadata accessor for TetraOuterMessageType);
        outlined destroy of TetraSessionStates?(v502, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
        v259 = v504;
LABEL_76:
        outlined destroy of TetraOuterMessageType(v259, type metadata accessor for TetraRatchetOuterMessage);
        goto LABEL_18;
      }

LABEL_321:
      __break(1u);
LABEL_322:
      __break(1u);
LABEL_323:
      __break(1u);
LABEL_324:
      __break(1u);
LABEL_325:
      __break(1u);
LABEL_326:
      __break(1u);
LABEL_327:
      __break(1u);
LABEL_328:
      __break(1u);
LABEL_329:
      __break(1u);
LABEL_330:
      __break(1u);
LABEL_331:
      __break(1u);
LABEL_332:
      __break(1u);
LABEL_333:
      __break(1u);
LABEL_334:
      __break(1u);
LABEL_335:
      __break(1u);
LABEL_336:
      __break(1u);
LABEL_337:
      __break(1u);
LABEL_338:
      __break(1u);
LABEL_339:
      __break(1u);
      return;
    }

    outlined destroy of TetraOuterMessageType(v499, type metadata accessor for TetraSessionStates);
  }

  v187 = (v186 + *(v498 + 40));
  v188 = v187[1];
  v122 = v513;
  if (v188 >> 60 == 15)
  {
    lazy protocol witness table accessor for type TetraAKE and conformance TetraAKE();
    v177 = swift_allocError();
    *v189 = 0;
LABEL_45:
    swift_willThrow();
    goto LABEL_294;
  }

  if (*(v186 + *(v498 + 36) + 8) >> 60 == 15)
  {
    lazy protocol witness table accessor for type TetraAKE and conformance TetraAKE();
    v177 = swift_allocError();
    *v207 = 1;
    goto LABEL_45;
  }

  v223 = *v187;
  *&aBlock = v115;
  if (v513 >> 62)
  {
    v459 = v223;
    if (v513 < 0)
    {
      v460 = v513;
    }

    else
    {
      v460 = v513 & 0xFFFFFFFFFFFFFF8;
    }

    v461 = v188;
    v462 = MEMORY[0x231891D10](v460);
    v188 = v461;
    v224 = v462;
    v223 = v459;
  }

  else
  {
    v224 = *((v513 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v508 = v223;
  v509 = v188;
  outlined copy of Data._Representation(v223, v188);
  v466 = v149;
  if (!v224)
  {
    v236 = MEMORY[0x277D84F90];
    goto LABEL_78;
  }

  v174 = 0;
  v514 = v122 & 0xC000000000000001;
  v510 = (v122 & 0xFFFFFFFFFFFFFF8);
  v467 = v151;
  v507 = v224;
  do
  {
    if (v514)
    {
      v226 = MEMORY[0x231891C80](v174, v122);
    }

    else
    {
      if (v174 >= v510[2])
      {
        goto LABEL_97;
      }

      v226 = *(v122 + 8 * v174 + 32);
    }

    v152 = v226;
    v151 = (v174 + 1);
    if (__OFADD__(v174, 1))
    {
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      swift_once();
      goto LABEL_30;
    }

    v227 = [v226 tetraRegistration];
    if (v227)
    {
      v228 = v227;
      v229 = v149;
      v115 = v179;
      v230 = v90;
      v231 = TetraRegistration.computeKeysHash()();
      v233 = v232;
      v234 = specialized static Data.== infix(_:_:)(v231, v232, v508, v509);
      outlined consume of Data._Representation(v231, v233);

      if (v234)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v235 = *(aBlock + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      v90 = v230;
      v179 = v115;
      v149 = v229;
      v122 = v513;
      v224 = v507;
    }

    else
    {
    }

    ++v174;
    v225 = v151 == v224;
    v151 = v467;
  }

  while (!v225);
  v236 = aBlock;
  v186 = v504;
LABEL_78:
  if (v236 < 0 || (v236 & 0x4000000000000000) != 0)
  {
    if (!MEMORY[0x231891D10](v236))
    {
      goto LABEL_292;
    }

    if (MEMORY[0x231891D10](v236) != 1)
    {
      goto LABEL_291;
    }

LABEL_82:
    if ((v236 & 0xC000000000000001) != 0)
    {
      v261 = v186;
      v262 = MEMORY[0x231891C80](0, v236);
      goto LABEL_85;
    }

    if (*(v236 + 16))
    {
      v261 = v186;
      v262 = *(v236 + 32);
LABEL_85:
      v263 = v262;
      v264 = [v515 compactRepresentation];
      v265 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v267 = v266;

      *&aBlock = v265;
      *(&aBlock + 1) = v267;
      v268 = v487;
      v269 = v511;
      P256.Signing.PublicKey.init<A>(compactRepresentation:)();
      v177 = v269;
      if (v269)
      {
        outlined destroy of TetraOuterMessageType(v516, type metadata accessor for TetraOuterMessageType);
        outlined consume of Data?(v508, v509);

        outlined destroy of TetraSessionStates?(v502, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
        v270 = v261;
        goto LABEL_295;
      }

      v513 = v236;
      v515 = v179;
      v273 = v492;
      v274 = *(v492 + 16);
      v495 = *(v498 + 28);
      v275 = v486;
      v276 = v493;
      v499 = v492 + 16;
      v498 = v274;
      v274(v486, v261 + v495, v493);
      v277 = *(v273 + 56);
      v277(v275, 0, 1, v276);
      v278 = v484;
      v279 = v481;
      v514 = v484[7];
      v277(v481 + v514, 1, 1, v276);
      v280 = &v279[v278[8]];
      v281 = v508;
      v282 = v509;
      v510 = v280;
      *v280 = v508;
      *(v280 + 1) = v282;
      v283 = v482;
      v284 = *(v482 + 16);
      v507 = v278[6];
      v285 = v268;
      v286 = v483;
      v284(&v279[v507], v285, v483);
      v279[v278[9]] = 1;
      outlined copy of Data?(v281, v282);
      v287 = v263;
      TetraRatchetState.init(asReceiverWithFullPrekey:)(v287, v485);
      v511 = 0;
      v510 = v287;
      (*(v283 + 8))(v487, v286);
      outlined init with take of TetraRatchetOuterMessage(v485, &v279[v278[5]], type metadata accessor for TetraRatchetState);
      if (v512 >= 0xF)
      {
        v288 = 15;
      }

      else
      {
        v288 = v512;
      }

      *v279 = v288;
      outlined assign with take of P256.KeyAgreement.PublicKey?(v486, &v279[v514], &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
      v289 = v479;
      outlined init with take of TetraRatchetOuterMessage(v279, v479, type metadata accessor for TetraSessionState);
      v518 = 0;
      *v289 = v288;
      *(v289 + v278[9]) = 1;
      v290 = v278[5];

      v291 = v504;
      v292 = v511;
      specialized TetraRatchetState.openMessage<A>(_:sessionDST:didRatchet:)(v504, v466, v90, &v518);
      v511 = v292;
      if (v292)
      {

        outlined consume of Data?(v508, v509);
        outlined destroy of TetraOuterMessageType(v289, type metadata accessor for TetraSessionState);
        outlined destroy of TetraOuterMessageType(v516, type metadata accessor for TetraOuterMessageType);

        outlined destroy of TetraSessionStates?(v502, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
        outlined destroy of TetraOuterMessageType(v291, type metadata accessor for TetraRatchetOuterMessage);
        v179 = v515;
        goto LABEL_32;
      }

      v485 = v293;
      v486 = v294;
      v491 = v295;
      v494 = v296;
      v467 = v151;
      v514 = v90;

      v297 = v502;
      v298 = v475;
      outlined init with copy of TetraSessionStates?(v502, v475, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
      v299 = v497;
      v300 = (v500)(v298, 1, v497);
      outlined destroy of TetraSessionStates?(v298, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
      if (v300 == 1)
      {
        outlined destroy of TetraSessionStates?(v297, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
        outlined init with copy of TetraOuterMessageType(v289, v297, type metadata accessor for TetraSessionState);
        *(v297 + *(v299 + 20)) = 0;
        *(v297 + *(v299 + 24)) = MEMORY[0x277D84F90];
        (*(v496 + 56))(v297, 0, 1, v299);
LABEL_118:
        v326 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
        v327 = v494;
        if (v494 >> 60 != 15)
        {
          v328 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v330 = v329;
          v331 = v491;
          outlined copy of Data._Representation(v491, v327);
          outlined copy of Data._Representation(v331, v327);
          v332 = swift_isUniquelyReferenced_nonNull_native();
          *&aBlock = v326;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v331, v327, v328, v330, v332);
          outlined consume of Data?(v331, v327);

          v326 = aBlock;
        }

        v333 = v474;
        outlined init with copy of TetraSessionStates?(v502, v474, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
        if ((v500)(v333, 1, v497) == 1)
        {
          goto LABEL_336;
        }

        v334 = v511;
        TetraDBManager.saveTetraSession(conversationID:sessionStates:needsSync:)(v515, v333, v518);
        if (v334)
        {
          v177 = v334;

          outlined consume of Data._Representation(v485, v486);
          outlined consume of Data?(v491, v494);

          outlined consume of Data?(v508, v509);
          outlined destroy of TetraOuterMessageType(v479, type metadata accessor for TetraSessionState);
          outlined destroy of TetraOuterMessageType(v516, type metadata accessor for TetraOuterMessageType);

          outlined destroy of TetraOuterMessageType(v333, type metadata accessor for TetraSessionStates);
          outlined destroy of TetraSessionStates?(v502, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
          outlined destroy of TetraOuterMessageType(v504, type metadata accessor for TetraRatchetOuterMessage);
          v179 = v515;
          v151 = v467;
          goto LABEL_8;
        }

        outlined destroy of TetraOuterMessageType(v333, type metadata accessor for TetraSessionStates);
        static os_log_type_t.debug.getter();
        v335 = MessageProtectionLog();
        if (!v335)
        {
          goto LABEL_338;
        }

        v336 = v335;
        os_log(_:dso:log:_:_:)();

        v337 = conversationLock;
        OS_dispatch_semaphore.signal()();

        v338 = static os_log_type_t.info.getter();
        v339 = MessageProtectionLog();
        if (v339)
        {
          v340 = v339;

          if (os_log_type_enabled(v340, v338))
          {
            v341 = swift_slowAlloc();
            v342 = swift_slowAlloc();
            *&aBlock = v342;
            *v341 = 136315138;
            *(v341 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v505, v506, &aBlock);
            _os_log_impl(&dword_22B404000, v340, v338, "Successfully decrypted %s", v341, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v342);
            MEMORY[0x231892DF0](v342, -1, -1);
            MEMORY[0x231892DF0](v341, -1, -1);
          }

          specialized _dictionaryUpCast<A, B, C, D>(_:)(v326);

          v343 = v504;
          v344 = *(v504 + 6);
          v345 = v489;
          v346 = v493;
          (v498)(v489, &v504[v495], v493);
          v347 = v492;
          v348 = (*(v492 + 80) + 32) & ~*(v492 + 80);
          v349 = (v488 + v348 + 7) & 0xFFFFFFFFFFFFFFF8;
          v350 = swift_allocObject();
          v351 = v515;
          *(v350 + 16) = v468;
          *(v350 + 24) = v351;
          (*(v347 + 32))(v350 + v348, v345, v346);
          *(v350 + v349) = v344;
          v352 = v351;
          v353 = v485;
          v354 = v486;
          v355 = Data._bridgeToObjectiveC()().super.isa;
          v356 = Dictionary._bridgeToObjectiveC()().super.isa;
          v524 = closure #1 in static TetraAPI.commitStateAfterSuccessfulDecryptionOfMessage(conversationID:ephemeralECDHPublicKey:messageIndex:)partial apply;
          v525 = v350;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          v522 = thunk for @escaping @callee_guaranteed (@unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@unowned Bool);
          v523 = &block_descriptor;
          v357 = _Block_copy(&aBlock);

          (*(v467 + 2))(v467, v355, v356, 0, v357);
          _Block_release(v357);

          outlined consume of Data._Representation(v353, v354);
          outlined consume of Data?(v491, v494);

          outlined consume of Data?(v508, v509);
          outlined destroy of TetraOuterMessageType(v479, type metadata accessor for TetraSessionState);
          outlined destroy of TetraOuterMessageType(v516, type metadata accessor for TetraOuterMessageType);
          outlined destroy of TetraSessionStates?(v502, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
          v259 = v343;
          goto LABEL_76;
        }

        goto LABEL_339;
      }

      outlined init with copy of TetraOuterMessageType(v289, v480, type metadata accessor for TetraSessionState);
      if ((v500)(v297, 1, v299) == 1)
      {
        goto LABEL_337;
      }

      if (specialized static TetraSessionState.== infix(_:_:)(v502, v480))
      {
        outlined assign with copy of TetraSessionState(v480, v502);
LABEL_117:
        TetraSessionStates.cleanupPreviousSessionStates()();
        outlined destroy of TetraOuterMessageType(v480, type metadata accessor for TetraSessionState);
        goto LABEL_118;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMd, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMR);
      v301 = (*(v472 + 80) + 32) & ~*(v472 + 80);
      v507 = *(v472 + 72);
      v302 = swift_allocObject();
      *(v302 + 16) = xmmword_22B48D7C0;
      v496 = v301;
      v303 = v502;
      outlined init with copy of TetraOuterMessageType(v502, v302 + v301, type metadata accessor for TetraSessionState);
      v304 = *(v497 + 24);
      v305 = *&v304[v303];
      *&aBlock = v302;

      specialized Array.append<A>(contentsOf:)(v306);
      v307 = *&v304[v303];
      *&v304[v303] = aBlock;

      v308 = v480;
      v309 = outlined assign with copy of TetraSessionState(v480, v303);
      v483 = &v466;
      MEMORY[0x28223BE20](v309);
      v465[2] = v308;
      v487 = v304;
      v310 = *&v304[v303];
      v311 = v310;
      v312 = v511;
      v313 = specialized Collection.firstIndex(where:)(closure #1 in TetraSessionStates.makeDefault(_:)partial apply, v465, v310);
      v511 = v312;
      if (v314)
      {
        v315 = v311[2];
LABEL_107:
        v319 = *&v487[v502];
        v320 = v319[2];
        if (v315 > v320)
        {
LABEL_310:
          __break(1u);
          goto LABEL_311;
        }

        if (v315 < 0)
        {
LABEL_311:
          __break(1u);
LABEL_312:
          __break(1u);
LABEL_313:
          __break(1u);
LABEL_314:
          __break(1u);
LABEL_315:
          __break(1u);
LABEL_316:
          __break(1u);
LABEL_317:
          __break(1u);
LABEL_318:
          __break(1u);
LABEL_319:
          __break(1u);
LABEL_320:
          __break(1u);
          goto LABEL_321;
        }

        if (__OFADD__(v320, v315 - v320))
        {
          goto LABEL_312;
        }

        v321 = *&v487[v502];
        v322 = swift_isUniquelyReferenced_nonNull_native();
        *&v487[v502] = v319;
        if (!v322 || v315 > v319[3] >> 1)
        {
          if (v320 <= v315)
          {
            v323 = v315;
          }

          else
          {
            v323 = v320;
          }

          v319 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v322, v323, 1, v319, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMd, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMR, type metadata accessor for TetraSessionState);
          *&v487[v502] = v319;
        }

        v324 = v502;
        v325 = v487;
        specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v315, v320, 0);
        *&v325[v324] = v319;
        goto LABEL_117;
      }

      v316 = v313 + 1;
      if (__OFADD__(v313, 1))
      {
        goto LABEL_315;
      }

      v318 = v311 + 2;
      v317 = v311[2];
      if (v316 == v317)
      {
        v315 = v313;
        goto LABEL_107;
      }

      v482 = v492 + 48;
      v475 = (v492 + 32);
      v481 = (v492 + 8);
      v358 = v496 + v507 * v316;
      v359 = v478;
      v315 = v313;
      while (1)
      {
        if (v316 >= v317)
        {
          goto LABEL_303;
        }

        v512 = v311;
        v360 = outlined init with copy of TetraOuterMessageType(v311 + v358, v359, type metadata accessor for TetraSessionState);
        if (*v359 != *v480)
        {
          goto LABEL_238;
        }

        v490 = v315;
        v361 = v484;
        v362 = v484[6];
        v363 = MEMORY[0x231891720](v360);
        v365 = v364;
        v366 = v361[6];
        v367 = MEMORY[0x231891720]();
        v369 = v367;
        v370 = v368;
        v371 = v365 >> 62;
        v372 = v368 >> 62;
        if (v365 >> 62 == 3)
        {
          v373 = 0;
          v374 = v363;
          if (!v363 && v365 == 0xC000000000000000 && v368 >> 62 == 3)
          {
            v373 = 0;
            if (!v367 && v368 == 0xC000000000000000)
            {
              outlined consume of Data._Representation(0, 0xC000000000000000);
              v375 = 0;
              v376 = 0xC000000000000000;
              goto LABEL_165;
            }
          }
        }

        else
        {
          v374 = v363;
          if (v371 > 1)
          {
            if (v371 == 2)
            {
              v378 = *(v363 + 16);
              v377 = *(v363 + 24);
              v379 = __OFSUB__(v377, v378);
              v373 = v377 - v378;
              if (v379)
              {
                goto LABEL_317;
              }
            }

            else
            {
              v373 = 0;
            }
          }

          else if (v371)
          {
            LODWORD(v373) = HIDWORD(v363) - v363;
            if (__OFSUB__(HIDWORD(v363), v363))
            {
              goto LABEL_316;
            }

            v373 = v373;
          }

          else
          {
            v373 = BYTE6(v365);
          }
        }

        if (v372 > 1)
        {
          if (v372 != 2)
          {
            if (v373)
            {
LABEL_163:
              outlined consume of Data._Representation(v367, v368);
              outlined consume of Data._Representation(v374, v365);
              goto LABEL_237;
            }

LABEL_164:
            outlined consume of Data._Representation(v367, v368);
            v375 = v374;
            v376 = v365;
LABEL_165:
            outlined consume of Data._Representation(v375, v376);
            v359 = v478;
            goto LABEL_182;
          }

          v382 = *(v367 + 16);
          v381 = *(v367 + 24);
          v379 = __OFSUB__(v381, v382);
          v380 = v381 - v382;
          if (v379)
          {
            goto LABEL_314;
          }
        }

        else if (v372)
        {
          LODWORD(v380) = HIDWORD(v367) - v367;
          if (__OFSUB__(HIDWORD(v367), v367))
          {
            goto LABEL_313;
          }

          v380 = v380;
        }

        else
        {
          v380 = BYTE6(v368);
        }

        if (v373 != v380)
        {
          goto LABEL_163;
        }

        if (v373 < 1)
        {
          goto LABEL_164;
        }

        if (v371 > 1)
        {
          if (v371 != 2)
          {
            *(&aBlock + 6) = 0;
            *&aBlock = 0;
            outlined copy of Data._Representation(v367, v368);
            v395 = v511;
            closure #1 in static Data.== infix(_:_:)(&aBlock, v369, v370, &v517);
            v511 = v395;
            outlined consume of Data._Representation(v369, v370);
            outlined consume of Data._Representation(v369, v370);
            v384 = v374;
            goto LABEL_177;
          }

          v385 = *(v374 + 16);
          v472 = *(v374 + 24);
          outlined copy of Data._Representation(v367, v368);
          v386 = __DataStorage._bytes.getter();
          if (v386)
          {
            v387 = __DataStorage._offset.getter();
            if (__OFSUB__(v385, v387))
            {
              goto LABEL_326;
            }

            v386 += v385 - v387;
          }

          if (__OFSUB__(v472, v385))
          {
            goto LABEL_325;
          }

          MEMORY[0x231890D50]();
          v388 = v386;
          v389 = v511;
          closure #1 in static Data.== infix(_:_:)(v388, v369, v370, &aBlock);
          v511 = v389;
          outlined consume of Data._Representation(v369, v370);
          outlined consume of Data._Representation(v369, v370);
          v390 = v374;
        }

        else
        {
          if (!v371)
          {
            *&aBlock = v374;
            WORD4(aBlock) = v365;
            BYTE10(aBlock) = BYTE2(v365);
            BYTE11(aBlock) = BYTE3(v365);
            BYTE12(aBlock) = BYTE4(v365);
            BYTE13(aBlock) = BYTE5(v365);
            outlined copy of Data._Representation(v367, v368);
            v383 = v511;
            closure #1 in static Data.== infix(_:_:)(&aBlock, v369, v370, &v517);
            v511 = v383;
            outlined consume of Data._Representation(v369, v370);
            outlined consume of Data._Representation(v369, v370);
            v384 = v374;
LABEL_177:
            outlined consume of Data._Representation(v384, v365);
            v396 = v517;
            goto LABEL_181;
          }

          v472 = v374;
          if (v374 >> 32 < v374)
          {
            goto LABEL_324;
          }

          outlined copy of Data._Representation(v367, v368);
          v391 = __DataStorage._bytes.getter();
          if (v391)
          {
            v392 = v391;
            v393 = __DataStorage._offset.getter();
            if (__OFSUB__(v374, v393))
            {
              goto LABEL_327;
            }

            v394 = v374 - v393 + v392;
          }

          else
          {
            v394 = 0;
          }

          MEMORY[0x231890D50]();
          v397 = v394;
          v398 = v511;
          closure #1 in static Data.== infix(_:_:)(v397, v369, v370, &aBlock);
          v511 = v398;
          outlined consume of Data._Representation(v369, v370);
          outlined consume of Data._Representation(v369, v370);
          v390 = v472;
        }

        outlined consume of Data._Representation(v390, v365);
        v396 = aBlock;
LABEL_181:
        v359 = v478;
        v315 = v490;
        if (!v396)
        {
          goto LABEL_238;
        }

LABEL_182:
        v399 = v484[8];
        v400 = *(v359 + v399);
        v401 = *(v359 + v399 + 8);
        v402 = (v480 + v399);
        v404 = *v402;
        v403 = v402[1];
        v405 = v401 >> 62;
        v406 = v403 >> 62;
        if (v401 >> 62 == 3)
        {
          v407 = 0;
          if (!v400 && v401 == 0xC000000000000000 && v403 >> 62 == 3)
          {
            v407 = 0;
            if (!v404 && v403 == 0xC000000000000000)
            {
              goto LABEL_213;
            }
          }
        }

        else if (v405 > 1)
        {
          if (v405 == 2)
          {
            v409 = *(v400 + 16);
            v408 = *(v400 + 24);
            v379 = __OFSUB__(v408, v409);
            v407 = v408 - v409;
            if (v379)
            {
              goto LABEL_322;
            }
          }

          else
          {
            v407 = 0;
          }
        }

        else if (v405)
        {
          LODWORD(v407) = HIDWORD(v400) - v400;
          if (__OFSUB__(HIDWORD(v400), v400))
          {
            goto LABEL_323;
          }

          v407 = v407;
        }

        else
        {
          v407 = BYTE6(v401);
        }

        if (v406 > 1)
        {
          if (v406 != 2)
          {
            v359 = v478;
            v315 = v490;
            if (v407)
            {
              goto LABEL_238;
            }

            goto LABEL_230;
          }

          v412 = *(v404 + 16);
          v411 = *(v404 + 24);
          v379 = __OFSUB__(v411, v412);
          v410 = v411 - v412;
          if (v379)
          {
            goto LABEL_320;
          }
        }

        else if (v406)
        {
          LODWORD(v410) = HIDWORD(v404) - v404;
          if (__OFSUB__(HIDWORD(v404), v404))
          {
            goto LABEL_319;
          }

          v410 = v410;
        }

        else
        {
          v410 = BYTE6(v403);
        }

        if (v407 != v410)
        {
          goto LABEL_237;
        }

        if (v407 < 1)
        {
LABEL_213:
          v359 = v478;
          goto LABEL_230;
        }

        if (v405 > 1)
        {
          if (v405 == 2)
          {
            v414 = *(v400 + 16);
            v413 = *(v400 + 24);
            outlined copy of Data._Representation(v404, v403);
            v415 = __DataStorage._bytes.getter();
            if (v415)
            {
              v416 = __DataStorage._offset.getter();
              if (__OFSUB__(v414, v416))
              {
                goto LABEL_330;
              }

              v415 += v414 - v416;
            }

            if (__OFSUB__(v413, v414))
            {
              goto LABEL_329;
            }

            goto LABEL_226;
          }

          *(&aBlock + 6) = 0;
          *&aBlock = 0;
          outlined copy of Data._Representation(v404, v403);
        }

        else
        {
          if (v405)
          {
            v417 = v400;
            if (v400 >> 32 < v400)
            {
              goto LABEL_328;
            }

            outlined copy of Data._Representation(v404, v403);
            v415 = __DataStorage._bytes.getter();
            if (v415)
            {
              v418 = __DataStorage._offset.getter();
              if (__OFSUB__(v417, v418))
              {
                goto LABEL_331;
              }

              v415 += v417 - v418;
            }

LABEL_226:
            MEMORY[0x231890D50]();
            v419 = v511;
            closure #1 in static Data.== infix(_:_:)(v415, v404, v403, &aBlock);
            v511 = v419;
            outlined consume of Data._Representation(v404, v403);
            v420 = aBlock;
            goto LABEL_229;
          }

          *&aBlock = v400;
          WORD4(aBlock) = v401;
          BYTE10(aBlock) = BYTE2(v401);
          BYTE11(aBlock) = BYTE3(v401);
          BYTE12(aBlock) = BYTE4(v401);
          BYTE13(aBlock) = BYTE5(v401);
          outlined copy of Data._Representation(v404, v403);
        }

        v421 = v511;
        closure #1 in static Data.== infix(_:_:)(&aBlock, v404, v403, &v517);
        v511 = v421;
        outlined consume of Data._Representation(v404, v403);
        v420 = v517;
LABEL_229:
        v359 = v478;
        v315 = v490;
        if (!v420)
        {
          goto LABEL_238;
        }

LABEL_230:
        v422 = v484[7];
        v423 = *(v470 + 48);
        v424 = v473;
        outlined init with copy of TetraSessionStates?(v359 + v422, v473, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
        outlined init with copy of TetraSessionStates?(v480 + v422, v424 + v423, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
        v425 = *v482;
        if ((*v482)(v424, 1, v493) == 1)
        {
          if (v425(v473 + v423, 1, v493) == 1)
          {
            goto LABEL_283;
          }

          goto LABEL_235;
        }

        v426 = v473;
        outlined init with copy of TetraSessionStates?(v473, v471, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
        if (v425(v426 + v423, 1, v493) == 1)
        {
          (*v481)(v471, v493);
LABEL_235:
          v427 = v473;
          v428 = &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMd;
          v429 = &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMR;
          goto LABEL_236;
        }

        v433 = (*v475)(v469, v473 + v423, v493);
        v434 = MEMORY[0x231891580](v433);
        v436 = v435;
        v437 = MEMORY[0x231891580]();
        v439 = v437;
        v440 = v438;
        v441 = v436 >> 62;
        v442 = v438 >> 62;
        if (v436 >> 62 == 3)
        {
          v443 = 0;
          if (!v434 && v436 == 0xC000000000000000 && v438 >> 62 == 3)
          {
            v443 = 0;
            if (!v437 && v438 == 0xC000000000000000)
            {
              outlined consume of Data._Representation(0, 0xC000000000000000);
              v444 = 0;
              v445 = 0xC000000000000000;
              goto LABEL_282;
            }
          }
        }

        else if (v441 == 2)
        {
          v447 = *(v434 + 16);
          v446 = *(v434 + 24);
          v379 = __OFSUB__(v446, v447);
          v443 = v446 - v447;
          if (v379)
          {
            goto LABEL_334;
          }
        }

        else if (v441 == 1)
        {
          LODWORD(v443) = HIDWORD(v434) - v434;
          if (__OFSUB__(HIDWORD(v434), v434))
          {
            goto LABEL_335;
          }

          v443 = v443;
        }

        else
        {
          v443 = BYTE6(v436);
        }

        if (v442 > 1)
        {
          if (v442 != 2)
          {
            if (!v443)
            {
LABEL_281:
              outlined consume of Data._Representation(v437, v438);
              v444 = v434;
              v445 = v436;
LABEL_282:
              outlined consume of Data._Representation(v444, v445);
              v457 = *v481;
              v458 = v493;
              (*v481)(v469, v493);
              v457(v471, v458);
LABEL_283:
              outlined destroy of TetraSessionStates?(v473, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
              v359 = v478;
              outlined destroy of TetraOuterMessageType(v478, type metadata accessor for TetraSessionState);
              v315 = v490;
LABEL_284:
              v311 = v512;
              goto LABEL_249;
            }

LABEL_280:
            outlined consume of Data._Representation(v437, v438);
            outlined consume of Data._Representation(v434, v436);
            v455 = *v481;
            v456 = v493;
            (*v481)(v469, v493);
            v455(v471, v456);
            v427 = v473;
            v428 = &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd;
            v429 = _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR;
LABEL_236:
            outlined destroy of TetraSessionStates?(v427, v428, v429);
LABEL_237:
            v359 = v478;
            v315 = v490;
LABEL_238:
            outlined destroy of TetraOuterMessageType(v359, type metadata accessor for TetraSessionState);
            goto LABEL_239;
          }

          v450 = *(v437 + 16);
          v449 = *(v437 + 24);
          v379 = __OFSUB__(v449, v450);
          v448 = v449 - v450;
          if (v379)
          {
            goto LABEL_332;
          }
        }

        else if (v442)
        {
          LODWORD(v448) = HIDWORD(v437) - v437;
          if (__OFSUB__(HIDWORD(v437), v437))
          {
            goto LABEL_333;
          }

          v448 = v448;
        }

        else
        {
          v448 = BYTE6(v438);
        }

        if (v443 != v448)
        {
          goto LABEL_280;
        }

        if (v443 < 1)
        {
          goto LABEL_281;
        }

        outlined copy of Data._Representation(v437, v438);
        v451 = v511;
        v452 = specialized Data.withUnsafeBytes<A>(_:)(v434, v436, v439, v440);
        v511 = v451;
        outlined consume of Data._Representation(v439, v440);
        outlined consume of Data._Representation(v434, v436);
        v453 = *v481;
        v454 = v493;
        (*v481)(v469, v493);
        v453(v471, v454);
        outlined destroy of TetraSessionStates?(v473, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
        v359 = v478;
        outlined destroy of TetraOuterMessageType(v478, type metadata accessor for TetraSessionState);
        v315 = v490;
        if (v452)
        {
          goto LABEL_284;
        }

LABEL_239:
        if (v316 == v315)
        {
          v311 = v512;
        }

        else
        {
          if (v315 < 0)
          {
            goto LABEL_306;
          }

          v430 = *v318;
          if (v315 >= *v318)
          {
            goto LABEL_307;
          }

          v431 = v512;
          v432 = v315 * v507;
          outlined init with copy of TetraOuterMessageType(v512 + v496 + v315 * v507, v476, type metadata accessor for TetraSessionState);
          if (v316 >= v430)
          {
            goto LABEL_308;
          }

          outlined init with copy of TetraOuterMessageType(v431 + v358, v477, type metadata accessor for TetraSessionState);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v512 = specialized _ArrayBuffer._consumeAndCreateNew()(v512);
          }

          v311 = v512;
          outlined assign with take of TetraSessionState(v477, v512 + v496 + v432, type metadata accessor for TetraSessionState);
          if (v316 >= v311[2])
          {
            goto LABEL_309;
          }

          outlined assign with take of TetraSessionState(v476, v311 + v358, type metadata accessor for TetraSessionState);
          *&v487[v502] = v311;
          v359 = v478;
        }

        ++v315;
LABEL_249:
        ++v316;
        v318 = v311 + 2;
        v317 = v311[2];
        v358 += v507;
        if (v316 == v317)
        {
          goto LABEL_107;
        }
      }
    }

    __break(1u);
    goto LABEL_298;
  }

  v260 = *(v236 + 16);
  if (!v260)
  {
LABEL_292:

    lazy protocol witness table accessor for type TetraGeneralError and conformance TetraGeneralError();
    v177 = swift_allocError();
    v464 = 4;
    goto LABEL_293;
  }

  if (v260 == 1)
  {
    goto LABEL_82;
  }

LABEL_291:

  lazy protocol witness table accessor for type TetraGeneralError and conformance TetraGeneralError();
  v177 = swift_allocError();
  v464 = 5;
LABEL_293:
  *v463 = v464;
  swift_willThrow();
  outlined consume of Data?(v508, v509);
LABEL_294:
  outlined destroy of TetraOuterMessageType(v516, type metadata accessor for TetraOuterMessageType);
  outlined destroy of TetraSessionStates?(v502, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
  v270 = v186;
LABEL_295:
  outlined destroy of TetraOuterMessageType(v270, type metadata accessor for TetraRatchetOuterMessage);
LABEL_8:
  *&aBlock = v177;
  v123 = v177;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast() && v518 == 3)
  {
    v124 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v125 = MEMORY[0x231891960](0xD00000000000001BLL, 0x800000022B494BB0);
    v126 = [v124 initWithDomain:v125 code:5 userInfo:0];

    static os_log_type_t.debug.getter();
    v127 = MessageProtectionLog();
    if (v127)
    {
      v128 = v127;
      os_log(_:dso:log:_:_:)();

      v129 = conversationLock;
      OS_dispatch_semaphore.signal()();

      v130 = v126;
      v131 = _convertErrorToNSError(_:)();
      (*(v151 + 2))(v151, 0, 0, v131, 0);

      v132 = aBlock;
      goto LABEL_17;
    }

LABEL_301:
    __break(1u);
    goto LABEL_302;
  }

  v133 = v177;
  v134 = static os_log_type_t.error.getter();
  v135 = MessageProtectionLog();
  if (!v135)
  {
    __break(1u);
    goto LABEL_301;
  }

  v136 = v135;
  if (os_log_type_enabled(v135, v134))
  {
    v137 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    *&aBlock = v138;
    *v137 = 67109634;
    *(v137 + 4) = 1;
    *(v137 + 8) = 2080;
    *(v137 + 10) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v505, v506, &aBlock);
    *(v137 + 18) = 2080;
    swift_getErrorValue();
    v139 = Error.localizedDescription.getter();
    v141 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v139, v140, &aBlock);

    *(v137 + 20) = v141;
    _os_log_impl(&dword_22B404000, v136, v134, "Tetra (Tetra Ratchet = %{BOOL}d) failed decrypting %s with error: %s", v137, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x231892DF0](v138, -1, -1);
    MEMORY[0x231892DF0](v137, -1, -1);
  }

  static os_log_type_t.debug.getter();
  v142 = MessageProtectionLog();
  if (!v142)
  {
LABEL_302:
    __break(1u);
LABEL_303:
    __break(1u);
    goto LABEL_304;
  }

  v143 = v142;
  os_log(_:dso:log:_:_:)();

  v144 = conversationLock;
  OS_dispatch_semaphore.signal()();

  v145 = v177;
  v146 = _convertErrorToNSError(_:)();
  (*(v151 + 2))(v151, 0, 0, v146, 0);

  v132 = v177;
LABEL_17:

LABEL_18:

  v147 = *MEMORY[0x277D85DE8];
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

NSObject *partial apply for closure #1 in static TetraAPI.commitStateAfterSuccessfulDecryptionOfMessage(conversationID:ephemeralECDHPublicKey:messageIndex:)(uint64_t a1)
{
  v3 = *(type metadata accessor for P256.KeyAgreement.PublicKey() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return closure #1 in static TetraAPI.commitStateAfterSuccessfulDecryptionOfMessage(conversationID:ephemeralECDHPublicKey:messageIndex:)(a1, v6, v7, v1 + v4, v5);
}

uint64_t lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for specialized closure #1 in TetraRatchetState.openMessage<A>(_:sessionDST:didRatchet:)(void *a1)
{
  return specialized closure #1 in TetraRatchetState.openMessage<A>(_:sessionDST:didRatchet:)(a1, *(v1 + 16), type metadata accessor for TetraNoRatchetOuterMessage) & 1;
}

{
  return specialized closure #1 in TetraRatchetState.openMessage<A>(_:sessionDST:didRatchet:)(a1, *(v1 + 16), type metadata accessor for TetraRatchetOuterMessage) & 1;
}

unint64_t lazy protocol witness table accessor for type TetraRatchetingErrors and conformance TetraRatchetingErrors()
{
  result = lazy protocol witness table cache variable for type TetraRatchetingErrors and conformance TetraRatchetingErrors;
  if (!lazy protocol witness table cache variable for type TetraRatchetingErrors and conformance TetraRatchetingErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraRatchetingErrors and conformance TetraRatchetingErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraRatchetingErrors and conformance TetraRatchetingErrors;
  if (!lazy protocol witness table cache variable for type TetraRatchetingErrors and conformance TetraRatchetingErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraRatchetingErrors and conformance TetraRatchetingErrors);
  }

  return result;
}

uint64_t outlined init with take of TetraRatchetOuterMessage(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of TetraSessionState(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of P256.KeyAgreement.PublicKey?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of KEM.EncapsulationResult?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit3KEMO19EncapsulationResultVSgMd, &_s9CryptoKit3KEMO19EncapsulationResultVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of TetraSessionStates?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type TetraCommitmentError and conformance TetraCommitmentError()
{
  result = lazy protocol witness table cache variable for type TetraCommitmentError and conformance TetraCommitmentError;
  if (!lazy protocol witness table cache variable for type TetraCommitmentError and conformance TetraCommitmentError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraCommitmentError and conformance TetraCommitmentError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraCommitmentError and conformance TetraCommitmentError;
  if (!lazy protocol witness table cache variable for type TetraCommitmentError and conformance TetraCommitmentError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraCommitmentError and conformance TetraCommitmentError);
  }

  return result;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for OS_os_log(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t outlined destroy of TetraSessionStates?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id partial apply for specialized closure #3 in Data.append<A>(contentsOf:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = specialized closure #3 in Data.append<A>(contentsOf:)(a1, a2, *(v3 + 16), **(v3 + 32));
  if (!v4)
  {
    *a3 = result;
    a3[1] = v7;
    a3[2] = v8;
  }

  return result;
}

uint64_t outlined init with take of ContiguousBytes(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id specialized closure #3 in Data.append<A>(contentsOf:)(id result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = result;
  if (!result)
  {
    v8 = a4;
    NSData.startIndex.getter();
    return v8;
  }

  v6 = a2 - result - a3;
  if (!__OFSUB__(a2 - result, a3))
  {
    v7 = a4;
    specialized implicit closure #3 in implicit closure #2 in closure #3 in Data.append<A>(contentsOf:)(&v9, v4 + a3, v6, v7);
    v8 = v9;

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t outlined init with copy of TetraOuterMessageType(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of TetraOuterMessageType(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id Kyber1024ObjC.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t Kyber1024ObjCPrivateKey.init(sepKeyBytes:)(uint64_t a1, unint64_t a2)
{
  v6 = type metadata accessor for SecureEnclave.Kyber1024.PrivateKey(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TetraKEM1024Key(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined copy of Data._Representation(a1, a2);
  SecureEnclave.Kyber1024.PrivateKey.init(dataRepresentation:)(a1, a2, v10);
  if (v3)
  {
    outlined consume of Data._Representation(a1, a2);
  }

  else
  {
    v17 = type metadata accessor for Kyber1024.PrivateKey();
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    v18 = *(v11 + 20);
    outlined init with take of SecureEnclave.Kyber1024.PrivateKey(v10, &v14[v18], type metadata accessor for SecureEnclave.Kyber1024.PrivateKey);
    (*(v7 + 56))(&v14[v18], 0, 1, v6);
    v19 = type metadata accessor for Kyber1024ObjCPrivateKey(0);
    v20 = objc_allocWithZone(v19);
    outlined init with copy of TetraKEM1024Key(v14, v20 + OBJC_IVAR____TtC17MessageProtection23Kyber1024ObjCPrivateKey_privKey);
    v22.receiver = v20;
    v22.super_class = v19;
    v6 = objc_msgSendSuper2(&v22, sel_init);
    outlined consume of Data._Representation(a1, a2);
    outlined destroy of TetraKEM1024Key(v14);
  }

  swift_getObjectType();
  v15 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
  v16 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return v6;
}

uint64_t Kyber1024ObjCPrivateKey.init(apKeyBytes:)(uint64_t a1, unint64_t a2)
{
  v6 = type metadata accessor for Kyber1024.PrivateKey();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TetraKEM1024Key(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  v24 = a2;
  outlined copy of Data._Representation(a1, a2);
  Kyber1024.PrivateKey.init<A>(bytes:)();
  if (v3)
  {
    outlined consume of Data._Representation(a1, a2);
  }

  else
  {
    (*(v7 + 32))(v14, v10, v6);
    (*(v7 + 56))(v14, 0, 1, v6);
    v17 = *(v11 + 20);
    v18 = type metadata accessor for SecureEnclave.Kyber1024.PrivateKey(0);
    (*(*(v18 - 8) + 56))(&v14[v17], 1, 1, v18);
    v19 = type metadata accessor for Kyber1024ObjCPrivateKey(0);
    v20 = objc_allocWithZone(v19);
    outlined init with copy of TetraKEM1024Key(v14, v20 + OBJC_IVAR____TtC17MessageProtection23Kyber1024ObjCPrivateKey_privKey);
    v22.receiver = v20;
    v22.super_class = v19;
    v6 = objc_msgSendSuper2(&v22, sel_init);
    outlined consume of Data._Representation(a1, a2);
    outlined destroy of TetraKEM1024Key(v14);
  }

  swift_getObjectType();
  v15 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
  v16 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return v6;
}

uint64_t @objc Kyber1024ObjCPrivateKey.init(sepKeyBytes:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = a3;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  return a5(v7, v9);
}

uint64_t type metadata accessor for Kyber1024ObjCPublicKey(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for Kyber1024ObjCPublicKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t outlined init with copy of TetraKEM1024Key(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TetraKEM1024Key(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TetraKEM1024Key(uint64_t a1)
{
  v2 = type metadata accessor for TetraKEM1024Key(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of SecureEnclave.Kyber1024.PrivateKey(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id TetraMessageHasher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TetraMessageHasher.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TetraMessageHasher();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TetraMessageHasher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TetraMessageHasher();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized static TetraMessageHasher.hashMessage(_:)()
{
  v0 = type metadata accessor for SHA256();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SHA256Digest();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BinaryDecodingOptions();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = type metadata accessor for TetraPB_TetraMessage(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v16;
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type TetraPB_TetraMessage and conformance TetraPB_TetraMessage(&lazy protocol witness table cache variable for type TetraPB_TetraMessage and conformance TetraPB_TetraMessage, type metadata accessor for TetraPB_TetraMessage);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  v17 = &v15[*(v12 + 24)];
  v18 = *v17;
  v19 = v17[1];
  if (v19 >> 60 == 15)
  {
    v20 = 0;
  }

  else
  {
    v20 = *v17;
  }

  v29 = v5;
  v30 = v6;
  v21 = v9;
  if (v19 >> 60 == 15)
  {
    v22 = 0xC000000000000000;
  }

  else
  {
    v22 = v19;
  }

  outlined copy of Data?(v18, v19);
  lazy protocol witness table accessor for type TetraPB_TetraMessage and conformance TetraPB_TetraMessage(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540]);
  dispatch thunk of HashFunction.init()();
  outlined copy of Data._Representation(v20, v22);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v20, v22);
  outlined consume of Data._Representation(v20, v22);
  dispatch thunk of HashFunction.finalize()();
  outlined consume of Data._Representation(v20, v22);
  (*(v1 + 8))(v4, v0);
  v23 = v29;
  *(&v32 + 1) = v29;
  v33 = lazy protocol witness table accessor for type TetraPB_TetraMessage and conformance TetraPB_TetraMessage(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x277CC5290]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v31);
  v25 = v30;
  (*(v30 + 16))(boxed_opaque_existential_1, v21, v23);
  __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  (*(v25 + 8))(v21, v23);
  outlined destroy of TetraPB_TetraMessage(v15);
  v26 = v34;
  __swift_destroy_boxed_opaque_existential_1(&v31);
  return v26;
}

uint64_t lazy protocol witness table accessor for type TetraPB_TetraMessage and conformance TetraPB_TetraMessage(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t outlined destroy of TetraPB_TetraMessage(uint64_t a1)
{
  v2 = type metadata accessor for TetraPB_TetraMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata completion function for StructWrapper(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TetraDBErrors()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x231891EE0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TetraDBErrors()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x231891EE0](v1);
  return Hasher._finalize()();
}

id StructWrapper.__deallocating_deinit()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v3.receiver = v0;
  v3.super_class = type metadata accessor for StructWrapper();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id one-time initialization function for sharedInstance()
{
  result = [objc_allocWithZone(type metadata accessor for TetraDBManager()) init];
  static TetraDBManager.sharedInstance = result;
  return result;
}

char *TetraDBManager.().init()()
{
  *&v0[OBJC_IVAR____TtC17MessageProtection14TetraDBManager__persistentContainer] = 0;
  v1 = OBJC_IVAR____TtC17MessageProtection14TetraDBManager_cache;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  *&v0[OBJC_IVAR____TtC17MessageProtection14TetraDBManager____lazy_storage___persistentContainer] = 0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for TetraDBManager();
  v2 = objc_msgSendSuper2(&v7, sel_init);
  v3 = OBJC_IVAR____TtC17MessageProtection14TetraDBManager_cache;
  v4 = *&v2[OBJC_IVAR____TtC17MessageProtection14TetraDBManager_cache];
  v5 = v2;
  [v4 setCountLimit_];
  [*&v2[v3] setDelegate_];

  return v5;
}

id TetraDBManager.persistentContainer.getter()
{
  v1 = OBJC_IVAR____TtC17MessageProtection14TetraDBManager____lazy_storage___persistentContainer;
  v2 = *(v0 + OBJC_IVAR____TtC17MessageProtection14TetraDBManager____lazy_storage___persistentContainer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17MessageProtection14TetraDBManager____lazy_storage___persistentContainer);
  }

  else
  {
    swift_getObjectType();
    v4 = closure #1 in TetraDBManager.persistentContainer.getter();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t closure #1 in TetraDBManager.persistentContainer.getter()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &aBlock - v6;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = MEMORY[0x231891960](0x42446172746554, 0xE700000000000000);
  v11 = MEMORY[0x231891960](1684893549, 0xE400000000000000);
  v12 = [v9 URLForResource:v10 withExtension:v11];

  if (v12)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v1 + 32))(v7, v5, v0);
    v13 = objc_allocWithZone(MEMORY[0x277CBE450]);
    URL._bridgeToObjectiveC()(v14);
    v16 = v15;
    v17 = [v13 initWithContentsOfURL_];

    if (v17)
    {
      v18 = specialized static TetraDBManager.persistentStoreDescription()();
      v19 = objc_allocWithZone(MEMORY[0x277CBE4A0]);
      v20 = v17;
      v21 = MEMORY[0x231891960](0x42446172746554, 0xE700000000000000);
      v22 = [v19 initWithName:v21 managedObjectModel:v20];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_22B48D980;
      *(v23 + 32) = v18;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSPersistentStoreDescription, 0x277CBE4E0);
      v24 = v18;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v22 setPersistentStoreDescriptions_];

      v33 = closure #1 in closure #1 in TetraDBManager.persistentContainer.getter;
      v34 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v30 = 1107296256;
      v31 = thunk for @escaping @callee_guaranteed (@guaranteed NSPersistentStoreDescription, @guaranteed Error?) -> ();
      v32 = &block_descriptor_0;
      v26 = _Block_copy(&aBlock);
      [v22 loadPersistentStoresWithCompletionHandler_];
      _Block_release(v26);

      (*(v1 + 8))(v7, v0);
      return v22;
    }

    aBlock = 0;
    v30 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    aBlock = 0xD000000000000022;
    v30 = 0x800000022B494FE0;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2318919B0](v28);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void closure #1 in closure #1 in TetraDBManager.persistentContainer.getter(int a1, id a2)
{
  if (a2)
  {
    goto LABEL_7;
  }

  static os_log_type_t.info.getter();
  v2 = MessageProtectionLog();
  if (!v2)
  {
    __break(1u);
LABEL_7:
    v3 = a2;
    _StringGuts.grow(_:)(40);

    swift_getErrorValue();
    v4 = Error.localizedDescription.getter();
    MEMORY[0x2318919B0](v4);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v5 = v2;
  os_log(_:dso:log:_:_:)();
}

void thunk for @escaping @callee_guaranteed (@guaranteed NSPersistentStoreDescription, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

uint64_t TetraDBManager.getSessionForNGMIdentity(conversationID:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v33 - v8;
  v10 = [objc_allocWithZone(MEMORY[0x277CBE440]) initWithConcurrencyType_];
  v11 = TetraDBManager.persistentContainer.getter();
  v12 = [v11 persistentStoreCoordinator];

  [v10 setPersistentStoreCoordinator_];
  [v10 setMergePolicy_];
  [v10 setShouldPerformSecureOperation_];
  v13 = *(v2 + OBJC_IVAR____TtC17MessageProtection14TetraDBManager_cache);
  v14 = [v13 objectForKey_];
  if (v14)
  {
    v15 = v14;
    v16 = *((*MEMORY[0x277D85000] & *v14) + 0x58);
    swift_beginAccess();
    v17 = TetraSessionStates.hasSessionWithCompatibleVersion()();
    swift_endAccess();
    if (v17)
    {

      outlined init with copy of TetraSessionStates(v15 + v16, a2);
      v18 = type metadata accessor for TetraSessionStates();
      return (*(*(v18 - 8) + 56))(a2, 0, 1, v18);
    }

    [v13 removeObjectForKey_];
  }

  v33 = a2;
  v20 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v21 = MEMORY[0x231891960](0xD000000000000016, 0x800000022B495160);
  v22 = [v20 initWithEntityName_];

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSPredicate, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_22B48D7C0;
  v24 = [a1 base64EncodedStringWithOptions_];
  v25 = v9;
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v3;
  v28 = v27;

  *(v23 + 56) = MEMORY[0x277D837D0];
  *(v23 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v23 + 32) = v26;
  *(v23 + 40) = v28;
  v29 = NSPredicate.init(format:_:)();
  [v22 setPredicate_];

  [v22 setFetchLimit_];
  v30 = type metadata accessor for TetraSessionStates();
  v31 = (*(*(v30 - 8) + 56))(v25, 1, 1, v30);
  MEMORY[0x28223BE20](v31);
  *(&v33 - 4) = v10;
  *(&v33 - 3) = v22;
  *(&v33 - 2) = v25;
  v32 = v34;
  NSManagedObjectContext.performAndWait<A>(_:)();

  if (v32)
  {
    return outlined destroy of TetraSessionStates?(v25, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
  }

  else
  {
    return outlined init with take of TetraSessionStates?(v25, v33);
  }
}

uint64_t closure #1 in TetraDBManager.getSessionForNGMIdentity(conversationID:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TetraSessionStates();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TetraSessionSerialized();
  v11 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {

    v12 = 2;
LABEL_6:
    lazy protocol witness table accessor for type TetraDBErrors and conformance TetraDBErrors();
    swift_allocError();
    *v17 = v12;
    return swift_willThrow();
  }

  v13 = v11 & 0xFFFFFFFFFFFFFF8;
  v14 = v11 >> 62;
  if (v11 >> 62)
  {
    if (v11 < 0)
    {
      v13 = v11;
    }

    v19 = v11;
    v15 = MEMORY[0x231891D10](v13);
    v11 = v19;
    v16 = v15 == 1;
    if (v15 > 1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v15 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = v15 == 1;
    if (v15 > 1)
    {
LABEL_5:

      v12 = 3;
      goto LABEL_6;
    }
  }

  if (!v16)
  {
    if (!v15)
    {
    }

    goto LABEL_35;
  }

  v20 = v11 & 0xFFFFFFFFFFFFFF8;
  if (v14)
  {
    if (v11 < 0)
    {
      v20 = v11;
    }

    v22 = v11;
    v21 = MEMORY[0x231891D10](v20);
    v11 = v22;
  }

  else
  {
    v21 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v21)
  {
    __break(1u);
    goto LABEL_31;
  }

  v38[1] = v11;
  if ((v11 & 0xC000000000000001) != 0)
  {
LABEL_31:
    v23 = MEMORY[0x231891C80](0, v11);
    goto LABEL_23;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_33;
  }

  v23 = *(v11 + 32);
LABEL_23:
  v24 = v23;
  v25 = type metadata accessor for PropertyListDecoder();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v38[3] = PropertyListDecoder.init()();
  v38[0] = v24;
  v28 = [v24 serializedSession];
  if (!v28)
  {
LABEL_33:
    __break(1u);
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v29 = v28;
  v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type TetraSessionStates and conformance TetraSessionStates, type metadata accessor for TetraSessionStates);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  outlined consume of Data._Representation(v30, v32);
  if (TetraSessionStates.hasSessionWithCompatibleVersion()())
  {

    outlined destroy of TetraSessionStates?(a3, &_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
    outlined init with take of TetraSessionStates(v10, a3);
    return (*(v7 + 56))(a3, 0, 1, v6);
  }

  v33 = static os_log_type_t.error.getter();
  v34 = MessageProtectionLog();
  v35 = v38[0];
  if (!v34)
  {
    goto LABEL_34;
  }

  v36 = v34;

  if (os_log_type_enabled(v36, v33))
  {
    v37 = swift_slowAlloc();
    *v37 = 67109120;
    *(v37 + 4) = 15;
    _os_log_impl(&dword_22B404000, v36, v33, "Deleting session states due to not having a valid session version (expected: %u.", v37, 8u);
    MEMORY[0x231892DF0](v37, -1, -1);
  }

  [a1 deleteObject_];

  return outlined destroy of TetraSessionStates(v10);
}

void TetraDBManager.saveTetraSession(conversationID:sessionStates:needsSync:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = type metadata accessor for TetraSessionStates();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v3 + OBJC_IVAR____TtC17MessageProtection14TetraDBManager_cache);
  outlined init with copy of TetraSessionStates(a2, v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection13StructWrapperCyAA18TetraSessionStatesVGMd, &_s17MessageProtection13StructWrapperCyAA18TetraSessionStatesVGMR);
  v13 = objc_allocWithZone(v12);
  outlined init with copy of TetraSessionStates(v10, v13 + *((*MEMORY[0x277D85000] & *v13) + 0x58));
  v23.receiver = v13;
  v23.super_class = v12;
  v14 = objc_msgSendSuper2(&v23, sel_init);
  outlined destroy of TetraSessionStates(v10);
  [v11 setObject:v14 forKey:a1];

  v15 = [objc_allocWithZone(MEMORY[0x277CBE440]) initWithConcurrencyType_];
  v16 = TetraDBManager.persistentContainer.getter();
  v17 = [v16 persistentStoreCoordinator];

  [v15 setPersistentStoreCoordinator_];
  [v15 setMergePolicy_];
  [v15 setShouldPerformSecureOperation_];
  v19 = v15;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  NSManagedObjectContext.performAndWait<A>(_:)();
}

void closure #1 in TetraDBManager.saveTetraSession(conversationID:sessionStates:needsSync:)(void *a1, void *a2)
{
  v27[1] = *MEMORY[0x277D85DE8];
  type metadata accessor for TetraSessionSerialized();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v6 = [a2 base64EncodedStringWithOptions_];
  if (!v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = MEMORY[0x231891960](v7);
  }

  [v5 setRemoteIdentifier_];

  v8 = type metadata accessor for PropertyListEncoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for TetraSessionStates();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type TetraSessionStates and conformance TetraSessionStates, type metadata accessor for TetraSessionStates);
  v11 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (!v2)
  {
    v21 = v11;
    v22 = v12;
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v21, v22);
    [v5 setSerializedSession_];

    v27[0] = 0;
    if ([a1 save_])
    {
      v24 = v27[0];
    }

    else
    {
      v25 = v27[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    goto LABEL_12;
  }

  v13 = static os_log_type_t.error.getter();
  v14 = MessageProtectionLog();
  if (v14)
  {
    v15 = v14;
    if (os_log_type_enabled(v14, v13))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v2;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_22B404000, v15, v13, "Failed to encode the session: %@", v16, 0xCu);
      outlined destroy of TetraSessionStates?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x231892DF0](v17, -1, -1);
      MEMORY[0x231892DF0](v16, -1, -1);
    }

    lazy protocol witness table accessor for type TetraDBErrors and conformance TetraDBErrors();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();

LABEL_12:
    v26 = *MEMORY[0x277D85DE8];
    return;
  }

  __break(1u);
}

id TetraDBManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TetraDBManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized static TetraDBManager.isBATS()()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v2 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(1398030658, 0xE400000000000000), (v3 & 1) != 0) && *(v2 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(4478800, 0xE300000000000000), (v5 & 1) != 0))
  {
    v6 = (*(v2 + 56) + 16 * v4);
    v8 = *v6;
    v7 = v6[1];

    if (v8 == 0xD000000000000032 && 0x800000022B4950F0 == v7)
    {

      return 1;
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return v10 & 1;
    }
  }

  else
  {

    return 0;
  }
}

id specialized static TetraDBManager.persistentStoreDescription()()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22B48D990;
  v7 = NSHomeDirectory();
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(v6 + 32) = v8;
  *(v6 + 40) = v10;
  *(v6 + 48) = 0xD000000000000019;
  *(v6 + 56) = 0x800000022B4950B0;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = [v5 pathWithComponents_];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = objc_opt_self();
  v17 = [v16 processInfo];
  v18 = [v17 environment];

  v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v19 + 16) || (v20 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x800000022B4950D0), (v21 & 1) == 0))
  {

    if ((specialized static TetraDBManager.isBATS()() & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v22 = (*(v19 + 56) + 16 * v20);
  v23 = *v22;
  v24 = v22[1];

  v25._countAndFlagsBits = 0x747365746378;
  v25._object = 0xE600000000000000;
  v26 = String.hasSuffix(_:)(v25);

  if (v26 || (specialized static TetraDBManager.isBATS()() & 1) != 0)
  {
LABEL_5:

    v27 = NSTemporaryDirectory();
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v28;
  }

LABEL_6:
  v43 = 0x424461727465542FLL;
  v44 = 0xE90000000000002DLL;
  v29 = [v16 processInfo];
  v30 = [v29 processName];

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  MEMORY[0x2318919B0](v31, v33);

  MEMORY[0x2318919B0](6448174, 0xE300000000000000);
  v41 = v13;
  v42 = v15;
  v41 = String.init<A>(_:)();
  v42 = v34;
  String.append<A>(contentsOf:)();

  URL.init(fileURLWithPath:)();

  v35 = objc_allocWithZone(MEMORY[0x277CBE4E0]);
  URL._bridgeToObjectiveC()(v36);
  v38 = v37;
  v39 = [v35 initWithURL_];

  [v39 setOption:*MEMORY[0x277CCA1A0] forKey:*MEMORY[0x277CBE240]];
  [v39 setShouldAddStoreAsynchronously_];
  (*(v1 + 8))(v4, v0);
  return v39;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void specialized TetraDBManager.cache(_:willEvictObject:)(uint64_t a1)
{
  v2 = type metadata accessor for P256.Signing.PublicKey();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = static os_log_type_t.info.getter();
  v8 = MessageProtectionLog();
  if (v8)
  {
    v9 = v8;
    outlined init with copy of Any(a1, v25);
    if (os_log_type_enabled(v9, v7))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v10 = 136315138;
      outlined init with copy of Any(v25, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection13StructWrapperCyAA18TetraSessionStatesVGMd, &_s17MessageProtection13StructWrapperCyAA18TetraSessionStatesVGMR);
      swift_dynamicCast();
      v12 = v22;
      v13 = v22 + *((*MEMORY[0x277D85000] & *v22) + 0x58);
      swift_beginAccess();
      v14 = type metadata accessor for TetraSessionState();
      v15 = (*(v3 + 16))(v6, &v13[*(v14 + 24)], v2);
      v16 = MEMORY[0x231891720](v15);
      v18 = v17;
      (*(v3 + 8))(v6, v2);
      v19 = Data.base64EncodedString(options:)(0);
      outlined consume of Data._Representation(v16, v18);

      __swift_destroy_boxed_opaque_existential_1(v25);
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19._countAndFlagsBits, v19._object, &v24);

      *(v10 + 4) = v20;
      _os_log_impl(&dword_22B404000, v9, v7, "TetraCache: Removing object %s from cache.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x231892DF0](v11, -1, -1);
      MEMORY[0x231892DF0](v10, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v25);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t outlined init with copy of TetraSessionStates(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TetraSessionStates();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TetraSessionStates(uint64_t a1)
{
  v2 = type metadata accessor for TetraSessionStates();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void partial apply for closure #1 in TetraDBManager.saveTetraSession(conversationID:sessionStates:needsSync:)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  closure #1 in TetraDBManager.saveTetraSession(conversationID:sessionStates:needsSync:)(*(v0 + 16), *(v0 + 24));
}

unint64_t lazy protocol witness table accessor for type TetraDBErrors and conformance TetraDBErrors()
{
  result = lazy protocol witness table cache variable for type TetraDBErrors and conformance TetraDBErrors;
  if (!lazy protocol witness table cache variable for type TetraDBErrors and conformance TetraDBErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraDBErrors and conformance TetraDBErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraDBErrors and conformance TetraDBErrors;
  if (!lazy protocol witness table cache variable for type TetraDBErrors and conformance TetraDBErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraDBErrors and conformance TetraDBErrors);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t outlined init with take of TetraSessionStates?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection18TetraSessionStatesVSgMd, &_s17MessageProtection18TetraSessionStatesVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with take of TetraSessionStates(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TetraSessionStates();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for TetraDBErrors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TetraDBErrors(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t one-time initialization function for GLT_SEED_EXTRACTION_LABEL()
{
  result = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(0xD000000000000017, 0x800000022B495490);
  GLT_SEED_EXTRACTION_LABEL = result;
  *algn_27D8C1E88 = v1;
  return result;
}

id GLTDiversifiedKey.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GLTKeyDiversificationSwift.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GLTKeyDiversificationSwift();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GLTDiversifiedKey.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(uint64_t *a1, size_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v3 = a1[1];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      *(&bytes + 7) = 0;
      *&bytes = 0;
      result = SecRandomCopyBytes(*MEMORY[0x277CDC540], a2, &bytes);
      goto LABEL_14;
    }

    v9 = *a1;

    outlined consume of Data._Representation(v4, v3);
    *&bytes = v4;
    *(&bytes + 1) = v3 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_22B48D660;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v10 = *(&bytes + 1);
    v11 = *(bytes + 16);
    result = __DataStorage._bytes.getter();
    if (!result)
    {
      __break(1u);
      goto LABEL_26;
    }

    v12 = result;
    v13 = __DataStorage._offset.getter();
    v14 = __OFSUB__(v11, v13);
    v15 = v11 - v13;
    if (!v14)
    {
      MEMORY[0x231890D50]();
      result = SecRandomCopyBytes(*MEMORY[0x277CDC540], a2, (v12 + v15));
      *a1 = bytes;
      a1[1] = v10 | 0x8000000000000000;
      goto LABEL_14;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v5)
  {
    outlined consume of Data._Representation(v4, v3);
    *&bytes = v4;
    WORD4(bytes) = v3;
    BYTE10(bytes) = BYTE2(v3);
    BYTE11(bytes) = BYTE3(v3);
    BYTE12(bytes) = BYTE4(v3);
    BYTE13(bytes) = BYTE5(v3);
    BYTE14(bytes) = BYTE6(v3);
    result = SecRandomCopyBytes(*MEMORY[0x277CDC540], a2, &bytes);
    v7 = DWORD2(bytes) | ((WORD6(bytes) | (BYTE14(bytes) << 16)) << 32);
    *a1 = bytes;
    a1[1] = v7;
LABEL_14:
    v18 = *MEMORY[0x277D85DE8];
    return result;
  }

  v16 = v3 & 0x3FFFFFFFFFFFFFFFLL;

  outlined consume of Data._Representation(v4, v3);
  *a1 = xmmword_22B48D660;
  outlined consume of Data._Representation(0, 0xC000000000000000);
  v17 = v4 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v17 < v4)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v4, __DataStorage._offset.getter()))
    {
LABEL_24:
      __break(1u);
    }

    v19 = type metadata accessor for __DataStorage();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v22 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v16 = v22;
  }

  if (v17 < v4)
  {
    goto LABEL_21;
  }

  result = __DataStorage._bytes.getter();
  if (result)
  {
    v23 = result;
    v24 = __DataStorage._offset.getter();
    v25 = v4 - v24;
    if (!__OFSUB__(v4, v24))
    {
      MEMORY[0x231890D50]();
      v26 = SecRandomCopyBytes(*MEMORY[0x277CDC540], a2, (v23 + v25));

      *a1 = v4;
      a1[1] = v16 | 0x4000000000000000;
      v27 = *MEMORY[0x277D85DE8];
      return v26;
    }

    goto LABEL_22;
  }

LABEL_26:
  __break(1u);
  return result;
}

void specialized static GLTKeyDiversificationSwift.validateKeyType(_:isPublicKey:)(__SecKey *a1)
{
  v1 = SecKeyCopyAttributes(a1);
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v4 = 0;
      type metadata accessor for CFStringRef(0);
      lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef);
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  lazy protocol witness table accessor for type GLTKeyDiversificationError and conformance GLTKeyDiversificationError();
  swift_allocError();
  *v3 = 2;
  swift_willThrow();
}

void specialized static GLTKeyDiversificationSwift.diversify(publicKey:trackingPreventionSalt:docId:)(__SecKey *a1, uint64_t a2, unint64_t a3, uint64_t a4, const __CFData *a5)
{
  v79 = a4;
  isa = a5;
  error[1] = *MEMORY[0x277D85DE8];
  v9 = type metadata accessor for P256.Signing.PublicKey();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v72 - v15;
  error[0] = 0;
  specialized static GLTKeyDiversificationSwift.validateKeyType(_:isPublicKey:)(a1);
  if (v5)
  {
    goto LABEL_5;
  }

  v76 = a2;
  v77 = v14;
  v17 = isa;
  v78 = v16;
  v74 = v9;
  v75 = v10;
  v18 = SecKeyCopyExternalRepresentation(a1, error);
  if (!v18)
  {
    v22 = error[0];
    lazy protocol witness table accessor for type GLTKeyDiversificationError and conformance GLTKeyDiversificationError();
    swift_allocError();
    *v23 = v22;
    swift_willThrow();
LABEL_5:
    v24 = *MEMORY[0x277D85DE8];
    return;
  }

  v19 = v18;
  v82 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v83 = v20;
  v21 = MEMORY[0x277CC9318];
  P256.Signing.PublicKey.init<A>(x963Representation:)();
  v72 = v19;
  v73 = 0;
  v25 = a3;
  if (a3 >> 60 == 15)
  {
    v26 = type metadata accessor for __DataStorage();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    v29 = __DataStorage.init(length:)();
    v82 = 0x2000000000;
    v83 = v29;
    v30 = v73;
    specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(&v82, 0);
    v88 = v82;
    v89 = v83 | 0x4000000000000000;
    v31 = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(&v88, 0x20uLL);
    v73 = v30;
    if (v31)
    {
      __break(1u);
    }

    v33 = v88;
    v32 = v89;
    v34 = v79;
    v35 = v76;
  }

  else
  {
    v35 = v76;
    v88 = v76;
    v89 = a3;
    v32 = a3;
    v33 = v76;
    v34 = v79;
  }

  outlined copy of Data?(v35, v25);
  v36 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(v34, v17);
  v38 = v37;
  v86 = v33;
  v87 = v32;
  v84 = v21;
  v85 = MEMORY[0x277CC9300];
  v82 = v36;
  v83 = v37;
  v39 = __swift_project_boxed_opaque_existential_1(&v82, v21);
  v40 = v33;
  v41 = *v39;
  v42 = v39[1];
  outlined copy of Data._Representation(v40, v32);
  outlined copy of Data._Representation(v36, v38);
  v43 = v73;
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v41, v42);
  v73 = v43;
  outlined consume of Data._Representation(v36, v38);
  __swift_destroy_boxed_opaque_existential_1(&v82);
  v44 = v86;
  v45 = v87;
  if (one-time initialization token for GLT_SEED_EXTRACTION_LABEL != -1)
  {
    swift_once();
  }

  P256.Signing.PublicKey.keyFromDiversification(with:seedExtractionLabel:)();
  v46 = outlined consume of Data._Representation(v44, v45);
  v47 = MEMORY[0x231891740](v46);
  v49 = v48;
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v47, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B48DAE0;
  v51 = *MEMORY[0x277CDC028];
  *(inited + 32) = *MEMORY[0x277CDC028];
  v52 = *MEMORY[0x277CDC040];
  type metadata accessor for CFStringRef(0);
  v53 = MEMORY[0x277CDBFE0];
  *(inited + 40) = v52;
  v54 = *v53;
  *(inited + 64) = v55;
  *(inited + 72) = v54;
  v56 = *MEMORY[0x277CDC000];
  *(inited + 80) = *MEMORY[0x277CDC000];
  v57 = *MEMORY[0x277CDC018];
  *(inited + 104) = v55;
  *(inited + 112) = v57;
  *(inited + 144) = MEMORY[0x277D83B88];
  *(inited + 120) = 256;
  v58 = v51;
  v59 = v52;
  v60 = v54;
  v61 = v56;
  v62 = v57;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_yptMd, &_sSo11CFStringRefa_yptMR);
  swift_arrayDestroy();
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef);
  v63 = Dictionary._bridgeToObjectiveC()().super.isa;

  v64 = isa;
  v65 = SecKeyCreateWithData(isa, v63, error);

  v66 = v77;
  if (v65)
  {
    v67 = Data._bridgeToObjectiveC()().super.isa;
    v68 = type metadata accessor for GLTDiversifiedKey();
    v69 = objc_allocWithZone(v68);
    *&v69[OBJC_IVAR____TtC17MessageProtection17GLTDiversifiedKey_diversifiedKey] = v65;
    *&v69[OBJC_IVAR____TtC17MessageProtection17GLTDiversifiedKey_trackingPreventionSalt] = v67;
    v81.receiver = v69;
    v81.super_class = v68;
    [(__SecKey *)&v81 init];

    v70 = v74;
    v71 = *(v75 + 8);
    v71(v66, v74);
    v71(v78, v70);
    outlined consume of Data._Representation(v88, v89);
    goto LABEL_5;
  }

  __break(1u);
}

void specialized static GLTKeyDiversificationSwift.diversify(privateKey:docId:trackingPreventionSalt:)(__SecKey *a1, uint64_t a2, unint64_t a3, uint64_t a4, const __CFData *a5)
{
  isa = a5;
  error[1] = *MEMORY[0x277D85DE8];
  v10 = type metadata accessor for P256.Signing.PrivateKey();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v65 - v16;
  error[0] = 0;
  specialized static GLTKeyDiversificationSwift.validateKeyType(_:isPublicKey:)(a1);
  if (v5)
  {
    goto LABEL_5;
  }

  v67 = v15;
  v68 = v11;
  v18 = SecKeyCopyExternalRepresentation(a1, error);
  if (!v18)
  {
    v22 = error[0];
    lazy protocol witness table accessor for type GLTKeyDiversificationError and conformance GLTKeyDiversificationError();
    swift_allocError();
    *v23 = v22;
    swift_willThrow();
LABEL_5:
    v24 = *MEMORY[0x277D85DE8];
    return;
  }

  v19 = v18;
  v70 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v71 = v20;
  v21 = v17;
  P256.Signing.PrivateKey.init<A>(x963Representation:)();
  v25 = isa >> 62;
  if ((isa >> 62) > 1)
  {
    v26 = v68;
    v27 = v10;
    if (v25 != 2)
    {
      goto LABEL_18;
    }

    v28 = a4;
    v31 = *(a4 + 16);
    v30 = *(a4 + 24);
    v32 = __OFSUB__(v30, v31);
    v29 = v30 - v31;
    if (!v32)
    {
LABEL_11:
      v33 = a2;
      if (v29 == 32)
      {
        goto LABEL_12;
      }

LABEL_18:
      lazy protocol witness table accessor for type GLTKeyDiversificationError and conformance GLTKeyDiversificationError();
      swift_allocError();
      *v64 = 1;
      swift_willThrow();

      (*(v26 + 8))(v21, v27);
      goto LABEL_5;
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  v26 = v68;
  v27 = v10;
  v28 = a4;
  if (!v25)
  {
    v29 = BYTE6(isa);
    goto LABEL_11;
  }

  v63 = HIDWORD(a4) - a4;
  if (__OFSUB__(HIDWORD(a4), a4))
  {
    goto LABEL_20;
  }

  v33 = a2;
  if (v63 != 32)
  {
    goto LABEL_18;
  }

LABEL_12:

  v34 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(v33, a3);
  v36 = v35;
  v37 = isa;
  v74 = v28;
  v75 = isa;
  v72 = MEMORY[0x277CC9318];
  v73 = MEMORY[0x277CC9300];
  v70 = v34;
  v71 = v35;
  v38 = __swift_project_boxed_opaque_existential_1(&v70, MEMORY[0x277CC9318]);
  v39 = *v38;
  v66 = v38[1];
  outlined copy of Data._Representation(v28, v37);
  outlined copy of Data._Representation(v34, v36);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v39, v66);
  v65[1] = 0;
  outlined consume of Data._Representation(v34, v36);
  __swift_destroy_boxed_opaque_existential_1(&v70);
  v40 = v74;
  v41 = v75;
  if (one-time initialization token for GLT_SEED_EXTRACTION_LABEL != -1)
  {
    swift_once();
  }

  MEMORY[0x2318916B0](v40, v41, GLT_SEED_EXTRACTION_LABEL, *algn_27D8C1E88);
  v42 = outlined consume of Data._Representation(v40, v41);
  v43 = MEMORY[0x231891680](v42);
  v45 = v44;
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v43, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B48DAE0;
  v47 = *MEMORY[0x277CDC028];
  *(inited + 32) = *MEMORY[0x277CDC028];
  v66 = inited + 32;
  v48 = *MEMORY[0x277CDC040];
  type metadata accessor for CFStringRef(0);
  v65[2] = v49;
  v50 = MEMORY[0x277CDBFE0];
  *(inited + 40) = v48;
  v51 = *v50;
  *(inited + 64) = v49;
  *(inited + 72) = v51;
  v52 = *MEMORY[0x277CDBFF0];
  *(inited + 80) = *MEMORY[0x277CDBFF0];
  v53 = *MEMORY[0x277CDC018];
  *(inited + 104) = v49;
  *(inited + 112) = v53;
  *(inited + 144) = MEMORY[0x277D83B88];
  *(inited + 120) = 256;
  v54 = v47;
  v55 = v48;
  v56 = v51;
  v57 = v52;
  v58 = v53;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_yptMd, &_sSo11CFStringRefa_yptMR);
  swift_arrayDestroy();
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef);
  v59 = Dictionary._bridgeToObjectiveC()().super.isa;

  v60 = isa;
  v61 = SecKeyCreateWithData(isa, v59, error);

  if (v61)
  {

    v62 = *(v68 + 8);
    v62(v67, v10);
    v62(v21, v10);
    goto LABEL_5;
  }

  __break(1u);
}

unint64_t lazy protocol witness table accessor for type GLTKeyDiversificationError and conformance GLTKeyDiversificationError()
{
  result = lazy protocol witness table cache variable for type GLTKeyDiversificationError and conformance GLTKeyDiversificationError;
  if (!lazy protocol witness table cache variable for type GLTKeyDiversificationError and conformance GLTKeyDiversificationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GLTKeyDiversificationError and conformance GLTKeyDiversificationError);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFStringRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GLTKeyDiversificationError(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 3;
  if (v5 >= 5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GLTKeyDiversificationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t getEnumTag for GLTKeyDiversificationError(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void *destructiveInjectEnumTag for GLTKeyDiversificationError(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

unint64_t MPPB_SKPaddedStatus.paddedData()()
{
  v2 = type metadata accessor for MPPB_SKPaddedStatus(0);
  lazy protocol witness table accessor for type MPPB_RatchetState and conformance MPPB_RatchetState(&lazy protocol witness table cache variable for type MPPB_SKPaddedStatus and conformance MPPB_SKPaddedStatus, type metadata accessor for MPPB_SKPaddedStatus);
  result = Message.serializedData(partial:)();
  if (v1)
  {
    return result;
  }

  v5 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v5)
    {
      v6 = BYTE6(v4);
      outlined consume of Data._Representation(result, v4);
      v7 = v6;
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if (v5 != 2)
  {
    goto LABEL_13;
  }

  v9 = *(result + 16);
  v8 = *(result + 24);
  result = outlined consume of Data._Representation(result, v4);
  v10 = __OFSUB__(v8, v9);
  v7 = v8 - v9;
  if (v10)
  {
    __break(1u);
LABEL_9:
    v11 = HIDWORD(result);
    v12 = result;
    result = outlined consume of Data._Representation(result, v4);
    if (__OFSUB__(v11, v12))
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = v11 - v12;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_14;
  }

  __break(1u);
LABEL_13:
  outlined consume of Data._Representation(result, v4);
  v7 = 0;
LABEL_14:
  result = static Padme.paddedMessageByteCount(_:)();
  if (v13)
  {
    lazy protocol witness table accessor for type StatusKitErrors and conformance StatusKitErrors();
    swift_allocError();
    *v14 = 6;
    return swift_willThrow();
  }

  v15 = result >= v7;
  v16 = result - v7;
  if (!v15)
  {
    goto LABEL_35;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v17 = result;
  v27 = specialized Data.init(count:)(v16);
  v28 = v18;
  result = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(&v27, v16);
  if (result)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v19 = v27;
  v20 = v28;
  v21 = v0 + *(v2 + 24);
  outlined consume of Data?(*v21, *(v21 + 8));
  *v21 = v19;
  *(v21 + 8) = v20;
  result = Message.serializedData(partial:)();
  v23 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v23 != 2)
    {
      v24 = 0;
      goto LABEL_32;
    }

    v26 = *(result + 16);
    v25 = *(result + 24);
    v10 = __OFSUB__(v25, v26);
    v24 = v25 - v26;
    if (!v10)
    {
      goto LABEL_32;
    }

    __break(1u);
  }

  else if (!v23)
  {
    v24 = BYTE6(v22);
    goto LABEL_32;
  }

  LODWORD(v24) = HIDWORD(result) - result;
  if (__OFSUB__(HIDWORD(result), result))
  {
LABEL_39:
    __break(1u);
    return result;
  }

  v24 = v24;
LABEL_32:
  if (v24 < 0 || v24 != v17)
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  return result;
}

id closure #1 in SymmetricKey.toZeroizingNSData()@<X0>(id result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (result)
  {
    result = [objc_opt_self() _newZeroingDataWithBytes_length_];
    if (result)
    {
      *a3 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t SymmetricRatchet.init(data:step:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v92 = a2;
  v93 = a3;
  v6 = type metadata accessor for SymmetricKey();
  v102 = *(v6 - 8);
  v103 = v6;
  v7 = *(v102 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v108 = v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v100 = v88 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v98 = v88 - v13;
  v96 = type metadata accessor for MPPB_KeyAndIndex(0);
  v104 = *(v96 - 8);
  v14 = *(v104 + 64);
  v15 = MEMORY[0x28223BE20](v96);
  v101 = v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v97 = v88 - v17;
  v18 = type metadata accessor for BinaryDecodingOptions();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection17MPPB_RatchetStateVSgMd, &_s17MessageProtection17MPPB_RatchetStateVSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = v88 - v22;
  v24 = type metadata accessor for MPPB_RatchetState(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = (v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for SymmetricRatchet();
  v30 = *(v29 + 20);
  v91 = a4;
  *&v30[a4] = MEMORY[0x277D84F98];
  v31 = v92;
  v107 = 0;
  v105 = 0u;
  v106 = 0u;
  outlined copy of Data._Representation(a1, v92);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type MPPB_RatchetState and conformance MPPB_RatchetState(&lazy protocol witness table cache variable for type MPPB_RatchetState and conformance MPPB_RatchetState, type metadata accessor for MPPB_RatchetState);
  v32 = v99;
  Message.init(serializedData:extensions:partial:options:)();
  if (v32)
  {

    (*(v25 + 56))(v23, 1, 1, v24);
    outlined destroy of TetraSessionStates?(v23, &_s17MessageProtection17MPPB_RatchetStateVSgMd, &_s17MessageProtection17MPPB_RatchetStateVSgMR);
    lazy protocol witness table accessor for type SymmetricRatchetErrors and conformance SymmetricRatchetErrors();
    swift_allocError();
    *v33 = 2;
    swift_willThrow();
    outlined consume of Data._Representation(a1, v31);
    return __swift_destroy_boxed_opaque_existential_1(v93);
  }

  v35 = a1;
  v88[1] = 0;
  v99 = v30;
  (*(v25 + 56))(v23, 0, 1, v24);
  outlined init with take of MPPB_KeyAndIndex(v23, v28, type metadata accessor for MPPB_RatchetState);
  v36 = *(v29 + 24);
  v37 = v91;
  outlined init with copy of SymmetricRatchetStep(v93, v91 + v36);
  v38 = v98;
  outlined init with copy of TetraSessionStates?(v28 + *(v24 + 24), v98, &_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
  v39 = *(v104 + 48);
  v40 = v96;
  v41 = v39(v38, 1, v96);
  v90 = v35;
  if (v41 == 1)
  {
    v42 = v97;
    UnknownStorage.init()();
    *(v42 + *(v40 + 20)) = xmmword_22B48D7D0;
    v43 = v42 + *(v40 + 24);
    *v43 = 0;
    *(v43 + 8) = 1;
    v44 = v39(v38, 1, v40);
    v45 = v102;
    v46 = v100;
    if (v44 != 1)
    {
      outlined destroy of TetraSessionStates?(v98, &_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
    }
  }

  else
  {
    v42 = v97;
    outlined init with take of MPPB_KeyAndIndex(v38, v97, type metadata accessor for MPPB_KeyAndIndex);
    v45 = v102;
    v46 = v100;
  }

  v47 = (v42 + *(v40 + 20));
  v48 = *v47;
  v49 = v47[1];
  if (v49 >> 60 == 15)
  {
    v50 = 0;
  }

  else
  {
    v50 = *v47;
  }

  v51 = 0xC000000000000000;
  if (v49 >> 60 != 15)
  {
    v51 = v49;
  }

  *&v105 = v50;
  *(&v105 + 1) = v51;
  outlined copy of Data?(v48, v49);
  SymmetricKey.init<A>(data:)();
  v52 = v42 + *(v40 + 24);
  v53 = *v52;
  v54 = *(v52 + 8);
  outlined destroy of MPPB_RatchetState(v42, type metadata accessor for MPPB_KeyAndIndex);
  if (v54)
  {
    v53 = 0;
  }

  *(v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR) + 48)) = v53;
  v89 = v28;
  v98 = *v28;
  v56 = v103;
  v55 = v104;
  v57 = v101;
  v58 = v99;
  v97 = *(v98 + 16);
  if (!v97)
  {
LABEL_38:
    outlined consume of Data._Representation(v90, v92);
    __swift_destroy_boxed_opaque_existential_1(v93);
    return outlined destroy of MPPB_RatchetState(v89, type metadata accessor for MPPB_RatchetState);
  }

  v59 = 0;
  v60 = *(v40 + 20);
  v96 = v101 + *(v40 + 24);
  v61 = (v101 + v60);
  v95 = v98 + ((*(v104 + 80) + 32) & ~*(v104 + 80));
  v62 = (v45 + 32);
  v94 = v45 + 40;
  while (v59 < *(v98 + 16))
  {
    outlined init with copy of MPPB_KeyAndIndex(v95 + *(v55 + 72) * v59, v57);
    if (*(v96 + 8))
    {
      v64 = 0;
    }

    else
    {
      v64 = *v96;
    }

    v65 = *v61;
    v66 = v61[1];
    if (v66 >> 60 == 15)
    {
      v67 = 0;
    }

    else
    {
      v67 = *v61;
    }

    v68 = 0xC000000000000000;
    if (v66 >> 60 != 15)
    {
      v68 = v61[1];
    }

    *&v105 = v67;
    *(&v105 + 1) = v68;
    outlined copy of Data?(v65, v66);
    SymmetricKey.init<A>(data:)();
    v69 = *v62;
    (*v62)(v108, v46, v56);
    v70 = *&v58[v37];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72 = v58;
    v73 = isUniquelyReferenced_nonNull_native;
    v74 = v37;
    *&v105 = *&v72[v37];
    v75 = v105;
    v76 = specialized __RawDictionaryStorage.find<A>(_:)(v64);
    v78 = *(v75 + 16);
    v79 = (v77 & 1) == 0;
    v80 = __OFADD__(v78, v79);
    v81 = v78 + v79;
    if (v80)
    {
      goto LABEL_40;
    }

    v82 = v77;
    if (*(v75 + 24) >= v81)
    {
      v56 = v103;
      if (v73)
      {
        v84 = v105;
        if (v77)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v87 = v76;
        specialized _NativeDictionary.copy()();
        v56 = v103;
        v76 = v87;
        v84 = v105;
        if (v82)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v81, v73);
      v76 = specialized __RawDictionaryStorage.find<A>(_:)(v64);
      if ((v82 & 1) != (v83 & 1))
      {
        goto LABEL_42;
      }

      v56 = v103;
      v84 = v105;
      if (v82)
      {
LABEL_16:
        (*(v102 + 40))(v84[7] + *(v102 + 72) * v76, v108, v56);
        v57 = v101;
        outlined destroy of MPPB_RatchetState(v101, type metadata accessor for MPPB_KeyAndIndex);
        goto LABEL_17;
      }
    }

    v84[(v76 >> 6) + 8] |= 1 << v76;
    *(v84[6] + 8 * v76) = v64;
    v69((v84[7] + *(v102 + 72) * v76), v108, v56);
    v57 = v101;
    outlined destroy of MPPB_RatchetState(v101, type metadata accessor for MPPB_KeyAndIndex);
    v85 = v84[2];
    v80 = __OFADD__(v85, 1);
    v86 = v85 + 1;
    if (v80)
    {
      goto LABEL_41;
    }

    v84[2] = v86;
LABEL_17:
    ++v59;
    v37 = v74;
    v63 = v99;
    *&v99[v74] = v84;
    v58 = v63;
    v46 = v100;
    v55 = v104;
    if (v97 == v59)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t SymmetricRatchet.serializedData()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v114 = &v87 - v3;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  v4 = *(*(v91 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v91);
  v95 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v96 = &v87 - v7;
  v8 = type metadata accessor for MPPB_KeyAndIndex(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v89 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v87 = &v87 - v14;
  MEMORY[0x28223BE20](v13);
  v94 = &v87 - v15;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_9CryptoKit12SymmetricKeyV5valuetMd, &_ss6UInt64V3key_9CryptoKit12SymmetricKeyV5valuetMR);
  v16 = *(*(v112 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v112);
  v103 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v102 = &v87 - v20;
  MEMORY[0x28223BE20](v19);
  v111 = (&v87 - v21);
  v22 = type metadata accessor for MPPB_RatchetState(0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = &v26[*(v24 + 20)];
  UnknownStorage.init()();
  v93 = v22;
  v28 = *(v22 + 24);
  v29 = *(v9 + 56);
  v98 = v26;
  v90 = v28;
  v107 = v9 + 56;
  v108 = v8;
  v106 = v29;
  v29(&v26[v28], 1, 1, v8);
  v30 = *(type metadata accessor for SymmetricRatchet() + 20);
  v92 = v0;
  v31 = *(v0 + v30);
  v32 = v31 + 64;
  v33 = 1 << *(v31 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v31 + 64);
  v36 = (v33 + 63) >> 6;
  v88 = v9;
  v99 = (v9 + 48);
  v104 = v31;

  v37 = 0;
  v113 = 0;
  v97 = MEMORY[0x277D84F90];
  v105 = xmmword_22B48D7D0;
  v100 = v36;
  v101 = v32;
  v38 = v102;
LABEL_4:
  v39 = v37;
  if (!v35)
  {
    goto LABEL_6;
  }

  do
  {
    v37 = v39;
LABEL_9:
    v40 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
    v41 = v40 | (v37 << 6);
    v42 = *(v104 + 56);
    v43 = *(*(v104 + 48) + 8 * v41);
    v44 = type metadata accessor for SymmetricKey();
    v110 = *(v44 - 8);
    v45 = v42 + *(v110 + 72) * v41;
    v47 = v111;
    v46 = v112;
    v48 = *(v112 + 48);
    v49 = *(v110 + 16);
    v109 = v44;
    v49(v111 + v48, v45, v44);
    *v47 = v43;
    *v38 = v43;
    v49(&v38[*(v46 + 48)], v47 + v48, v44);
    UnknownStorage.init()();
    v50 = v108;
    v51 = v114 + *(v108 + 20);
    *v51 = v105;
    v52 = v114 + *(v50 + 24);
    *v52 = 0;
    *(v52 + 8) = 1;
    type metadata accessor for NSData();
    v53 = v113;
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v113 = v53;
    v54 = v115;
    v55 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    v58 = *v51;
    v59 = *(v51 + 8);
    *v51 = v55;
    *(v51 + 8) = v57;
    outlined consume of Data?(v58, v59);
    v60 = v103;
    outlined init with take of (key: UInt64, value: SymmetricKey)(v38, v103);
    v61 = *v60;
    (*(v110 + 8))(&v60[*(v112 + 48)], v109);
    *v52 = v61;
    v62 = v114;
    *(v52 + 8) = 0;
    v106(v62, 0, 1, v50);
    outlined destroy of TetraSessionStates?(v111, &_ss6UInt64V3key_9CryptoKit12SymmetricKeyV5valuetMd, &_ss6UInt64V3key_9CryptoKit12SymmetricKeyV5valuetMR);
    if ((*v99)(v62, 1, v50) != 1)
    {
      v63 = v87;
      outlined init with take of MPPB_KeyAndIndex(v114, v87, type metadata accessor for MPPB_KeyAndIndex);
      outlined init with take of MPPB_KeyAndIndex(v63, v89, type metadata accessor for MPPB_KeyAndIndex);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v100;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v97 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v97[2] + 1, 1, v97);
      }

      v66 = v97[2];
      v65 = v97[3];
      if (v66 >= v65 >> 1)
      {
        v97 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v65 > 1, v66 + 1, 1, v97);
      }

      v67 = v97;
      v97[2] = v66 + 1;
      outlined init with take of MPPB_KeyAndIndex(v89, v67 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v66, type metadata accessor for MPPB_KeyAndIndex);
      v32 = v101;
      goto LABEL_4;
    }

    outlined destroy of TetraSessionStates?(v114, &_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
    v39 = v37;
    v36 = v100;
    v32 = v101;
  }

  while (v35);
  while (1)
  {
LABEL_6:
    v37 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v37 >= v36)
    {
      break;
    }

    v35 = *(v32 + 8 * v37);
    ++v39;
    if (v35)
    {
      goto LABEL_9;
    }
  }

  *v98 = v97;
  v68 = v96;
  outlined init with copy of TetraSessionStates?(v92, v96, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  v69 = v91;
  v112 = *(v68 + *(v91 + 48));
  v70 = v112;
  v114 = type metadata accessor for SymmetricKey();
  v71 = *(v114 - 8);
  v72 = v95;
  (*(v71 + 16))(v95, v68, v114);
  *(v72 + *(v69 + 48)) = v70;
  v73 = v94;
  UnknownStorage.init()();
  v74 = v108;
  v75 = v73 + *(v108 + 20);
  *v75 = v105;
  v76 = v73 + *(v74 + 24);
  *v76 = 0;
  *(v76 + 8) = 1;
  type metadata accessor for NSData();
  v77 = v113;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v78 = v115;
  v79 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v81 = v80;

  outlined destroy of TetraSessionStates?(v72, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  outlined consume of Data?(*v75, *(v75 + 8));
  *v75 = v79;
  *(v75 + 8) = v81;
  *v76 = v112;
  *(v76 + 8) = 0;
  (*(v71 + 8))(v68, v114);
  v82 = v90;
  v83 = v98;
  outlined destroy of TetraSessionStates?(v98 + v90, &_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
  outlined init with take of MPPB_KeyAndIndex(v73, v83 + v82, type metadata accessor for MPPB_KeyAndIndex);
  v106(v83 + v82, 0, 1, v108);
  lazy protocol witness table accessor for type MPPB_RatchetState and conformance MPPB_RatchetState(&lazy protocol witness table cache variable for type MPPB_RatchetState and conformance MPPB_RatchetState, type metadata accessor for MPPB_RatchetState);
  v84 = Message.serializedData(partial:)();
  if (!v77)
  {
    v85 = v84;
    outlined destroy of MPPB_RatchetState(v83, type metadata accessor for MPPB_RatchetState);
    return v85;
  }

LABEL_20:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t type metadata accessor for NSData()
{
  result = lazy cache variable for type metadata for NSData;
  if (!lazy cache variable for type metadata for NSData)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSData);
  }

  return result;
}

uint64_t outlined init with take of (key: UInt64, value: SymmetricKey)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_9CryptoKit12SymmetricKeyV5valuetMd, &_ss6UInt64V3key_9CryptoKit12SymmetricKeyV5valuetMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type MPPB_RatchetState and conformance MPPB_RatchetState(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type StatusKitErrors and conformance StatusKitErrors()
{
  result = lazy protocol witness table cache variable for type StatusKitErrors and conformance StatusKitErrors;
  if (!lazy protocol witness table cache variable for type StatusKitErrors and conformance StatusKitErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StatusKitErrors and conformance StatusKitErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StatusKitErrors and conformance StatusKitErrors;
  if (!lazy protocol witness table cache variable for type StatusKitErrors and conformance StatusKitErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StatusKitErrors and conformance StatusKitErrors);
  }

  return result;
}

uint64_t specialized Data.init(count:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return specialized Data.InlineData.init(count:)(result);
    }

    else
    {
      v2 = type metadata accessor for __DataStorage();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymmetricRatchetErrors and conformance SymmetricRatchetErrors()
{
  result = lazy protocol witness table cache variable for type SymmetricRatchetErrors and conformance SymmetricRatchetErrors;
  if (!lazy protocol witness table cache variable for type SymmetricRatchetErrors and conformance SymmetricRatchetErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymmetricRatchetErrors and conformance SymmetricRatchetErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymmetricRatchetErrors and conformance SymmetricRatchetErrors;
  if (!lazy protocol witness table cache variable for type SymmetricRatchetErrors and conformance SymmetricRatchetErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymmetricRatchetErrors and conformance SymmetricRatchetErrors);
  }

  return result;
}

uint64_t outlined init with take of MPPB_KeyAndIndex(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of SymmetricRatchetStep(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined destroy of MPPB_RatchetState(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of MPPB_KeyAndIndex(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MPPB_KeyAndIndex(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata completion function for MPPB_RatchetState()
{
  type metadata accessor for [MPPB_KeyAndIndex](319, &lazy cache variable for type metadata for [MPPB_KeyAndIndex], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for [MPPB_KeyAndIndex](319, &lazy cache variable for type metadata for MPPB_KeyAndIndex?, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for [MPPB_KeyAndIndex](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for MPPB_KeyAndIndex(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata completion function for MPPB_KeyAndIndex()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Data?(319, &lazy cache variable for type metadata for Data?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Data?(319, &lazy cache variable for type metadata for UInt64?);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Data?(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}