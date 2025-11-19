uint64_t GeneratedResponse.getBreadCrumbAttributions(_:)(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v85 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v2);
  v4 = *(a1 + 16);
  v77 = a1;
  v5 = 0;
  if (v4)
  {
    v6 = (a1 + 56);
    v7 = *(a1 + 16);
    v84 = v4;
    do
    {
      v9 = *(v6 - 3);
      v8 = *(v6 - 2);
      v10 = *v6;
      v86 = *(v6 - 1);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      _sxRi_zRi0_zlySaySSGIsegr_SgWOe(v5);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v8);
      v14 = *(v3 + 16);
      v15 = (v12 & 1) == 0;
      v16 = v14 + v15;
      if (__OFADD__(v14, v15))
      {
        goto LABEL_62;
      }

      v17 = v12;
      if (*(v3 + 24) >= v16)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v12 & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          if ((v17 & 1) == 0)
          {
            goto LABEL_12;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, isUniquelyReferenced_nonNull_native);
        v18 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v8);
        if ((v17 & 1) != (v19 & 1))
        {
          goto LABEL_67;
        }

        v13 = v18;
        if ((v17 & 1) == 0)
        {
LABEL_12:
          *(v3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
          v20 = (*(v3 + 48) + 16 * v13);
          *v20 = v9;
          v20[1] = v8;
          *(*(v3 + 56) + 8 * v13) = MEMORY[0x277D84F90];
          v21 = *(v3 + 16);
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_63;
          }

          *(v3 + 16) = v23;
          goto LABEL_14;
        }
      }

LABEL_14:
      v24 = *(v3 + 56);
      v25 = *(v24 + 8 * v13);
      v26 = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v13) = v25;
      if ((v26 & 1) == 0)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
        *(v24 + 8 * v13) = v25;
      }

      v28 = *(v25 + 2);
      v27 = *(v25 + 3);
      if (v28 >= v27 >> 1)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v25);
        *(v24 + 8 * v13) = v25;
      }

      v4 = v84;
      *(v25 + 2) = v28 + 1;
      v29 = &v25[16 * v28];
      *(v29 + 4) = v86;
      *(v29 + 5) = v10;

      v6 += 4;
      v5 = specialized thunk for @callee_guaranteed () -> (@owned [String]);
      --v7;
    }

    while (v7);
  }

  v30 = v3 + 64;
  v31 = 1 << *(v3 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v3 + 64);
  v78 = (v31 + 63) >> 6;

  v34 = 0;
  v81 = v5;
  v82 = v3;
LABEL_23:
  if (v33)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v37 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v37 >= v78)
    {

      if (v4)
      {
        v58 = (v77 + 56);
        v59 = MEMORY[0x277D84F90];
        v60 = v85;
        do
        {
          v64 = *(v58 - 3);
          v63 = *(v58 - 2);
          v66 = *(v58 - 1);
          v65 = *v58;
          v67 = v60[2];

          if (v67 && (, v68 = specialized __RawDictionaryStorage.find<A>(_:)(v66, v65), v70 = v69, , (v70 & 1) != 0))
          {
            v71 = (v60[7] + 16 * v68);
            v64 = *v71;
            v61 = v71[1];

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v59 + 2) + 1, 1, v59);
            }

            v73 = *(v59 + 2);
            v72 = *(v59 + 3);
            v74 = v73 + 1;
            if (v73 >= v72 >> 1)
            {
              v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1, v59);
            }
          }

          else
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v59 + 2) + 1, 1, v59);
            }

            v73 = *(v59 + 2);
            v75 = *(v59 + 3);
            v74 = v73 + 1;
            if (v73 >= v75 >> 1)
            {
              v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v73 + 1, 1, v59);
            }

            v61 = v63;
          }

          *(v59 + 2) = v74;
          v62 = &v59[32 * v73];
          *(v62 + 4) = v64;
          *(v62 + 5) = v61;
          *(v62 + 6) = v66;
          *(v62 + 7) = v65;
          v58 += 4;
          --v4;
          v60 = v85;
        }

        while (v4);

        v5 = v81;
      }

      else
      {

        v59 = MEMORY[0x277D84F90];
      }

      _sxRi_zRi0_zlySaySSGIsegr_SgWOe(v5);
      return v59;
    }

    v33 = *(v30 + 8 * v37);
    ++v34;
    if (v33)
    {
      v34 = v37;
LABEL_22:
      v35 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v36 = *(*(*(v3 + 56) + ((v34 << 9) | (8 * v35))) + 16);
      if (v36 < 2)
      {
        goto LABEL_23;
      }

      v39 = 0;
      v40 = (v38 + 40);
      v79 = v36;
      v80 = v38;
      while (2)
      {
        if (v39 >= *(v38 + 16))
        {
          goto LABEL_64;
        }

        v87 = v39;
        v44 = *(v40 - 1);
        v43 = *v40;
        v83 = v40;

        v45 = String.createBreadcrumbURL(_:)(0);
        v46 = swift_isUniquelyReferenced_nonNull_native();
        v48 = specialized __RawDictionaryStorage.find<A>(_:)(v44, v43);
        v49 = v85[2];
        v50 = (v47 & 1) == 0;
        v51 = v49 + v50;
        if (__OFADD__(v49, v50))
        {
          goto LABEL_65;
        }

        v52 = v47;
        if (v85[3] >= v51)
        {
          if (v46)
          {
            v3 = v82;
            if ((v47 & 1) == 0)
            {
              goto LABEL_39;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            v3 = v82;
            if ((v52 & 1) == 0)
            {
              goto LABEL_39;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v51, v46);
          v53 = specialized __RawDictionaryStorage.find<A>(_:)(v44, v43);
          if ((v52 & 1) != (v54 & 1))
          {
            goto LABEL_67;
          }

          v48 = v53;
          v3 = v82;
          if ((v52 & 1) == 0)
          {
LABEL_39:
            v85[(v48 >> 6) + 8] |= 1 << v48;
            v55 = (v85[6] + 16 * v48);
            *v55 = v44;
            v55[1] = v43;
            *(v85[7] + 16 * v48) = v45;
            v56 = v85[2];
            v22 = __OFADD__(v56, 1);
            v57 = v56 + 1;
            if (v22)
            {
              goto LABEL_66;
            }

            v85[2] = v57;
LABEL_30:
            v39 = v87 + 1;
            v40 = v83 + 2;
            v38 = v80;
            v5 = v81;
            if (v79 == v87 + 1)
            {

              goto LABEL_23;
            }

            continue;
          }
        }

        break;
      }

      v41 = (v85[7] + 16 * v48);
      object = v41->_object;
      *v41 = v45;

      goto LABEL_30;
    }
  }

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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t GeneratedResponse.removeMatchesOverlapWithLinks(_:_:_:)(uint64_t a1, uint64_t a2)
{
  v20 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x253057520](v17))
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2530574C0](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v7 = *(a1 + 32 + 8 * v5);
      }

      v8 = v7;
      if (__OFADD__(v5++, 1))
      {
        break;
      }

      [v7 rangeAtIndex_];
      v10 = Range<>.init(_:in:)();
      if (v12)
      {
LABEL_4:

        if (v5 == i)
        {
          return v6;
        }
      }

      else
      {
        v13 = *(a2 + 16);
        if (v13)
        {
          v14 = (a2 + 40);
          while (v10 >> 14 >= *v14 >> 14 || *(v14 - 1) >> 14 >= v11 >> 14)
          {
            v14 += 2;
            if (!--v13)
            {
              goto LABEL_19;
            }
          }

          goto LABEL_4;
        }

LABEL_19:
        v16 = v8;
        MEMORY[0x253057080]();
        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v19 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v6 = v20;
        if (v5 == i)
        {
          return v6;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    if (a1 < 0)
    {
      v17 = a1;
    }

    else
    {
      v17 = a1 & 0xFFFFFFFFFFFFFF8;
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t Attribution.displayUrl.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Attribution.url.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t static Attribution.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t Attribution.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int Attribution.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Attribution()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Attribution()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Attribution()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Attribution(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t GeneratedFileContent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t GeneratedFileContent.fileName.getter()
{
  v1 = (v0 + *(type metadata accessor for GeneratedFileContent(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t GeneratedFileContent.mimeType.getter()
{
  v1 = (v0 + *(type metadata accessor for GeneratedFileContent(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();

  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v20 = ~v3;
    v21 = a1;
    while (1)
    {
      v23 = v4;
      v5 = *(*(v22 + 48) + v4);
      v6 = v5 == 2 ? 0x6D696D5F656C6966 : 0x5F65746973626577;
      v7 = v5 == 2 ? 0xEE00657079745F65 : 0xEB000000006C7275;
      v8 = *(*(v22 + 48) + v4) ? 0x6D616E5F656C6966 : 0x745F656372756F73;
      v9 = v5 ? 0xE900000000000065 : 0xEB00000000657079;
      v10 = v5 <= 1 ? v8 : v6;
      v11 = v5 <= 1 ? v9 : v7;
      v12 = v21 == 2 ? 0x6D696D5F656C6966 : 0x5F65746973626577;
      v13 = v21 == 2 ? 0xEE00657079745F65 : 0xEB000000006C7275;
      v14 = v21 ? 0x6D616E5F656C6966 : 0x745F656372756F73;
      v15 = v21 ? 0xE900000000000065 : 0xEB00000000657079;
      v16 = v21 <= 1 ? v14 : v12;
      v17 = v21 <= 1 ? v15 : v13;
      if (v10 == v16 && v11 == v17)
      {
        break;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        return v23;
      }

      v4 = (v23 + 1) & v20;
      if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v23;
  }

  return v4;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        outlined init with take of Any(v25, v37);
      }

      else
      {
        outlined init with copy of Any(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = outlined init with take of Any(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26GenerativeAssistantActions22ExtendedAttributeUtilsOSSSgGMd, &_ss18_DictionaryStorageCy26GenerativeAssistantActions22ExtendedAttributeUtilsOSSSgGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
      }

      v22 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySSGGMd, &_ss18_DictionaryStorageCySSSaySSGGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of Any(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26GenerativeAssistantActions22ExtendedAttributeUtilsOSSSgGMd, &_ss18_DictionaryStorageCy26GenerativeAssistantActions22ExtendedAttributeUtilsOSSSgGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 16 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySSGGMd, &_ss18_DictionaryStorageCySSSaySSGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t _sxRi_zRi0_zlySaySSGIsegr_SgWOe(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeneratedResponse.Outcome and conformance GeneratedResponse.Outcome()
{
  result = lazy protocol witness table cache variable for type GeneratedResponse.Outcome and conformance GeneratedResponse.Outcome;
  if (!lazy protocol witness table cache variable for type GeneratedResponse.Outcome and conformance GeneratedResponse.Outcome)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeneratedResponse.Outcome and conformance GeneratedResponse.Outcome);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Attribution and conformance Attribution()
{
  result = lazy protocol witness table cache variable for type Attribution and conformance Attribution;
  if (!lazy protocol witness table cache variable for type Attribution and conformance Attribution)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Attribution and conformance Attribution);
  }

  return result;
}

uint64_t sub_24FE02B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24FE02C20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for GeneratedResponse()
{
  type metadata accessor for [GeneratedResponse.RichContentEntity](319, &lazy cache variable for type metadata for [GeneratedResponse.RichContentEntity], type metadata accessor for GeneratedResponse.RichContentEntity, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [String](319, &lazy cache variable for type metadata for [String], MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [String](319, &lazy cache variable for type metadata for [Attribution], &type metadata for Attribution, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for [GeneratedResponse.RichContentEntity](319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for [String](319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for GenerativeAssistantFeatureFlagManaging();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for [GeneratedResponse.RichContentEntity](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for [String](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t type metadata completion function for GeneratedResponse.RichContentEntity()
{
  result = type metadata accessor for ()();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for GeneratedFileContent(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Attribution(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for Attribution(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24FE03190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24FE03264(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata completion function for GeneratedFileContent()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s26GenerativeAssistantActions17GeneratedResponseVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of GeneratedResponse.RichContentEntity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeneratedResponse.RichContentEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s26GenerativeAssistantActions17GeneratedResponseVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t type metadata accessor for NSTextCheckingResult()
{
  result = lazy cache variable for type metadata for NSTextCheckingResult;
  if (!lazy cache variable for type metadata for NSTextCheckingResult)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSTextCheckingResult);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSTextCheckingKey and conformance NSTextCheckingKey()
{
  result = lazy protocol witness table cache variable for type NSTextCheckingKey and conformance NSTextCheckingKey;
  if (!lazy protocol witness table cache variable for type NSTextCheckingKey and conformance NSTextCheckingKey)
  {
    type metadata accessor for NSTextCheckingKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSTextCheckingKey and conformance NSTextCheckingKey);
  }

  return result;
}

Swift::Void __swiftcall IntentCallbackManager.initializeProgress()()
{
  v1 = v0[1];
  v8 = *v0;
  v9 = v1;
  v10 = v0[2];
  v2 = *(v0 + 7);
  v11 = *(v0 + 6);
  v3 = *(v0 + 8);
  v14 = *(v0 + 72);
  v15 = *(v0 + 88);
  v16 = *(v0 + 104);
  v4 = *(v0 + 15);
  v5 = *(v0 + 16);
  v2();
  v12 = v2;
  v13 = v3;
  v17 = v4;
  v18 = v5;
  v6[0] = v4;
  v6[1] = v5;
  v6[2] = 0;
  v7 = 0;

  IntentCallbackManager.updateIntentProgress(to:)(v6);

  outlined consume of GenerativeAssistantProgressLevel(v4, v5, 0, 0);
}

uint64_t IntentCallbackManager.requestConfirmation(result:confirmationActionName:showPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 40);
  v9 = *(v3 + 48);
  v13 = (v8 + *v8);
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = dispatch thunk of ContentLoaderProviding.load();

  return v13(a1, a2, a3);
}

uint64_t IntentCallbackManager.updateIntentProgress(to:)(uint64_t a1)
{
  v2 = *(a1 + 24);
  v4 = *(v1 + 72);
  v3 = *(v1 + 80);
  if (*v1)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    v7 = *a1;
    outlined copy of GenerativeAssistantProgressLevel(*a1, v5, v6, v2);
    if (v2 <= 2)
    {
      if (v2)
      {
        v8 = 60;
      }

      else
      {
        v8 = 20;
      }

      goto LABEL_14;
    }

    if (v2 <= 4)
    {
      if (v2 == 3)
      {
        v8 = 60;
      }

      else
      {
        v8 = 99;
      }

      goto LABEL_14;
    }

    if (v2 == 5)
    {
      v8 = 100;
LABEL_14:
      v9 = v2;
      goto LABEL_15;
    }
  }

  else
  {
    v7 = *(v1 + 120);
    v5 = *(v1 + 128);

    v6 = 0;
  }

  v9 = 6;
  v8 = 60;
LABEL_15:
  v10 = GenerativeAssistantProgressLevel.localizedDescription.getter();
  v4(v8, v10, v11);

  if (v2 <= 5 && ((1 << v2) & 0x31) != 0)
  {

    return outlined consume of GenerativeAssistantProgressLevel(v7, v5, v6, v9);
  }

  else
  {
    v13 = GenerativeAssistantProgressLevel.localizedDescription.getter();
    v4(v8 - 1, v13, v14);

    v15 = GenerativeAssistantProgressLevel.localizedDescription.getter();
    v17 = v16;
    outlined consume of GenerativeAssistantProgressLevel(v7, v5, v6, v9);
    v4(v8, v15, v17);
  }
}

uint64_t IntentCallbackManager.showJITEnablement()()
{
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v7 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of PartnerStreamWrapper.getStreamedResponse();

  return v7();
}

Swift::Void __swiftcall IntentCallbackManager.sendHeartbeatUpdate()()
{
  v1 = v0[5];
  v13 = v0[4];
  v14 = v1;
  v2 = v0[1];
  v9 = *v0;
  v10 = v2;
  v3 = v0[3];
  v11 = v0[2];
  v12 = v3;
  v4 = *(v0 + 12);
  v5 = *(v0 + 13);
  v6 = *(v0 + 14);
  v18 = *(v0 + 120);
  v15 = v4;
  v16 = v5;
  v17 = v6;
  v7[0] = v5;
  v7[1] = v6;
  v7[2] = 0;
  v8 = 3;

  IntentCallbackManager.updateIntentProgress(to:)(v7);

  outlined consume of GenerativeAssistantProgressLevel(v5, v6, 0, 3u);
}

uint64_t IntentCallbackManager.requestValue(assistantResponse:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v11 = (v6 + *v6);
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = implicit closure #2 in implicit closure #1 in DefaultModelSession.getModelResponse(from:);

  return v11(a1, a2);
}

uint64_t IntentCallbackManager.progressDialogWithPartnerName.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

uint64_t IntentCallbackManager.init(isFirstRequest:partnerName:requestValueCallback:requestConfirmationCallback:initializeIntentProgressCallback:updateIntentProgressCallback:showJITEnablementCallback:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  *(a9 + 96) = a14;
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  v25 = 3;

  v17 = MEMORY[0x277D84F90];
  v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v19.value._countAndFlagsBits = a2;
  v19.value._object = a3;
  v20 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v25, v19, v18);

  *(a9 + 104) = v20;
  v24 = 3;
  v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(v17);
  v22 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v24, 0, v21);

  *(a9 + 120) = v22;
  return result;
}

uint64_t GenerativeAssistantProgressLevel.localizedDescription.getter()
{
  countAndFlagsBits = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (v4 == 2)
  {
    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    v10 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24FE1A560;
    *(inited + 32) = 0xD000000000000027;
    *(inited + 40) = 0x800000024FE35C20;
    v6 = GenerativeAssistantProgressLevel.formatAsLocalizedPercentage(_:)(*&countAndFlagsBits);
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v6;
    *(inited + 56) = v7;
    v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (String, Any)(inited + 32);
    countAndFlagsBits = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v10, 0, v8)._countAndFlagsBits;
  }

  else
  {
    outlined copy of GenerativeAssistantProgressLevel(*v0, *(v0 + 8), *(v0 + 16), v4);
  }

  return countAndFlagsBits;
}

uint64_t outlined copy of GenerativeAssistantProgressLevel(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 6u)
  {
  }

  return result;
}

uint64_t closure #1 in IntentCallbackManager.updateMediaUploadProgress(_:debouncer:)(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 200) = a1;
  *(v6 + 152) = a5;
  *(v6 + 160) = a6;
  type metadata accessor for MainActor();
  *(v6 + 168) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 176) = v8;
  *(v6 + 184) = v7;

  return MEMORY[0x2822009F8](closure #1 in IntentCallbackManager.updateMediaUploadProgress(_:debouncer:), v8, v7);
}

uint64_t closure #1 in IntentCallbackManager.updateMediaUploadProgress(_:debouncer:)()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = swift_allocObject();
  v0[24] = v3;
  *(v3 + 16) = *v2;
  v4 = *(v2 + 64);
  v6 = *(v2 + 16);
  v5 = *(v2 + 32);
  *(v3 + 64) = *(v2 + 48);
  *(v3 + 80) = v4;
  *(v3 + 32) = v6;
  *(v3 + 48) = v5;
  v8 = *(v2 + 96);
  v7 = *(v2 + 112);
  v9 = *(v2 + 80);
  *(v3 + 144) = *(v2 + 128);
  *(v3 + 112) = v8;
  *(v3 + 128) = v7;
  *(v3 + 96) = v9;
  outlined init with copy of IntentCallbackManager(v2, (v0 + 2));

  return MEMORY[0x2822009F8](closure #1 in IntentCallbackManager.updateMediaUploadProgress(_:debouncer:), v1, 0);
}

{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 152);
  if (*(v3 + 112) >= v2)
  {
    v2 = *(v3 + 112);
  }

  *(v3 + 112) = v2;
  v4 = *(v3 + 120);
  v5 = *(v3 + 128);
  *(v3 + 120) = partial apply for closure #1 in closure #1 in IntentCallbackManager.updateMediaUploadProgress(_:debouncer:);
  *(v3 + 128) = v1;

  _sxRi_zRi0_zlySaySSGIsegr_SgWOe(v4);

  v6 = *(v0 + 176);
  v7 = *(v0 + 184);

  return MEMORY[0x2822009F8](closure #1 in IntentCallbackManager.updateMediaUploadProgress(_:debouncer:), v6, v7);
}

{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #1 in closure #1 in IntentCallbackManager.updateMediaUploadProgress(_:debouncer:)(uint64_t a1, float a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = LODWORD(a2);
  v6[0] = LODWORD(a2);
  v6[1] = v2;
  v6[2] = v3;
  v7 = 2;

  IntentCallbackManager.updateIntentProgress(to:)(v6);

  return outlined consume of GenerativeAssistantProgressLevel(v4, v2, v3, 2u);
}

uint64_t GenerativeAssistantProgressLevel.formatAsLocalizedPercentage(_:)(float a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd, _s10Foundation18IntegerFormatStyleV7PercentVySi_GMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v15 = v18 - v14;
  v16 = a1 * 100.0;
  if (COERCE_INT(fabs(a1 * 100.0)) > 2139095039)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v16 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v16 < 9.2234e18)
  {
    v18[1] = v16;
    static Locale.autoupdatingCurrent.getter();
    lazy protocol witness table accessor for type Int and conformance Int();
    IntegerFormatStyle.Percent.init(locale:)();
    static Locale.current.getter();
    MEMORY[0x253055230](v6, v7);
    (*(v3 + 8))(v6, v2);
    v17 = *(v8 + 8);
    v17(v12, v7);
    lazy protocol witness table accessor for type IntegerFormatStyle<Int>.Percent and conformance IntegerFormatStyle<A>.Percent();
    BinaryInteger.formatted<A>(_:)();
    v17(v15, v7);
    return v18[2];
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t UploadProgressUpdateDebouncer.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  v6 = type metadata accessor for TaskPriority();
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in UploadProgressUpdateDebouncer.init(), v9);

  return v1;
}

uint64_t closure #1 in UploadProgressUpdateDebouncer.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = type metadata accessor for ContinuousClock.Instant();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v8 = type metadata accessor for ContinuousClock();
  v4[15] = v8;
  v9 = *(v8 - 8);
  v4[16] = v9;
  v10 = *(v9 + 64) + 15;
  v4[17] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[18] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[19] = v12;
  v4[20] = v11;

  return MEMORY[0x2822009F8](closure #1 in UploadProgressUpdateDebouncer.init(), v12, v11);
}

uint64_t closure #1 in UploadProgressUpdateDebouncer.init()()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[21] = Strong;

    return MEMORY[0x2822009F8](closure #1 in UploadProgressUpdateDebouncer.init(), Strong, 0);
  }

  else
  {
    v4 = v0[17];
    v3 = v0[18];
    v6 = v0[13];
    v5 = v0[14];

    v7 = v0[1];

    return v7();
  }
}

{
  v1 = *(v0 + 168);
  *(v0 + 60) = *(v1 + 112);
  v2 = *(v1 + 120);
  *(v0 + 176) = v2;
  *(v0 + 184) = *(v1 + 128);
  outlined copy of (@escaping @callee_guaranteed (@unowned Float) -> ())?(v2);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);

  return MEMORY[0x2822009F8](closure #1 in UploadProgressUpdateDebouncer.init(), v3, v4);
}

{
  v1 = *(v0 + 176);
  if (v1)
  {
    v2 = *(v0 + 184);
    v3 = *(v0 + 60);

    v1(v4, v3);
    _sxRi_zRi0_zlySaySSGIsegr_SgWOe(v1);
  }

  v5 = *(v0 + 136);
  v6 = static Duration.seconds(_:)();
  v8 = v7;
  static Clock<>.continuous.getter();
  *(v0 + 64) = v6;
  *(v0 + 72) = v8;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;

  return MEMORY[0x2822009F8](closure #1 in UploadProgressUpdateDebouncer.init(), 0, 0);
}

{
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  v7 = lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x277D85928]);
  dispatch thunk of Clock.now.getter();
  lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x277D858F8]);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v5 + 8);
  v0[24] = v8;
  v0[25] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[26] = v10;
  *v10 = v0;
  v10[1] = closure #1 in UploadProgressUpdateDebouncer.init();
  v11 = v0[17];
  v13 = v0[14];
  v12 = v0[15];

  return MEMORY[0x2822008C8](v13, v0 + 5, v12, v7);
}

{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v12 = *v1;
  *(*v1 + 216) = v0;

  v4 = *(v2 + 200);
  if (v0)
  {
    (*(v2 + 192))(*(v2 + 112), *(v2 + 88));
    v5 = closure #1 in UploadProgressUpdateDebouncer.init();
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v9 = *(v2 + 128);
    v8 = *(v2 + 136);
    v10 = *(v2 + 120);
    (*(v2 + 192))(*(v2 + 112), *(v2 + 88));
    (*(v9 + 8))(v8, v10);
    v6 = *(v2 + 152);
    v7 = *(v2 + 160);
    v5 = closure #1 in UploadProgressUpdateDebouncer.init();
  }

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[10];
  _sxRi_zRi0_zlySaySSGIsegr_SgWOe(v0[22]);

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[21] = Strong;

    return MEMORY[0x2822009F8](closure #1 in UploadProgressUpdateDebouncer.init(), Strong, 0);
  }

  else
  {
    v6 = v0[17];
    v5 = v0[18];
    v8 = v0[13];
    v7 = v0[14];

    v9 = v0[1];

    return v9();
  }
}

{
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[19];
  v2 = v0[20];

  return MEMORY[0x2822009F8](closure #1 in UploadProgressUpdateDebouncer.init(), v1, v2);
}

{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[13];
  v6 = v0[14];

  _sxRi_zRi0_zlySaySSGIsegr_SgWOe(v1);

  v8 = v0[1];
  v9 = v0[27];

  return v8();
}

uint64_t UploadProgressUpdateDebouncer.__deallocating_deinit()
{
  v1 = *(v0 + 128);
  _sxRi_zRi0_zlySaySSGIsegr_SgWOe(*(v0 + 120));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for IntentCallbackManager(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t storeEnumTagSinglePayload for IntentCallbackManager(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GenerativeAssistantProgressLevel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 25))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 24);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for GenerativeAssistantProgressLevel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_24FE050FC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24FE05134()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #1 in UploadProgressUpdateDebouncer.init()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of PartnerStreamWrapper.getStreamedResponse();

  return closure #1 in UploadProgressUpdateDebouncer.init()(a1, v4, v5, v6);
}

uint64_t outlined copy of (@escaping @callee_guaranteed (@unowned Float) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24FE05238()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[12];

  v6 = v0[14];

  v7 = v0[16];

  v8 = v0[18];

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IntegerFormatStyle<Int>.Percent and conformance IntegerFormatStyle<A>.Percent()
{
  result = lazy protocol witness table cache variable for type IntegerFormatStyle<Int>.Percent and conformance IntegerFormatStyle<A>.Percent;
  if (!lazy protocol witness table cache variable for type IntegerFormatStyle<Int>.Percent and conformance IntegerFormatStyle<A>.Percent)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd, _s10Foundation18IntegerFormatStyleV7PercentVySi_GMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntegerFormatStyle<Int>.Percent and conformance IntegerFormatStyle<A>.Percent);
  }

  return result;
}

uint64_t sub_24FE0537C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_24FE0544C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ModelResponse()
{
  result = type metadata singleton initialization cache for ModelResponse;
  if (!type metadata singleton initialization cache for ModelResponse)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ModelResponse()
{
  type metadata accessor for [GeneratedResponse.RichContentEntity](319, &lazy cache variable for type metadata for [GeneratedResponse.RichContentEntity], type metadata accessor for GeneratedResponse.RichContentEntity, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for [Attribution], &type metadata for Attribution, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for [GeneratedResponse.RichContentEntity](319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for [String]?();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for Bool?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for [String]?()
{
  if (!lazy cache variable for type metadata for [String]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String]?);
    }
  }
}

uint64_t static ModelResponse.emptyModelResponse()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMR);
  v6 = *(type metadata accessor for GeneratedResponse.RichContentEntity(0) - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  v21 = xmmword_24FE1A560;
  *(v9 + 16) = xmmword_24FE1A560;
  v10 = (v9 + v8);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions11AttributionVGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions11AttributionVGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = v21;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0xE000000000000000;
  *(v11 + 48) = 0;
  *(v11 + 56) = 0xE000000000000000;
  v12 = type metadata accessor for URL();
  v13 = *(*(v12 - 8) + 56);
  v13(v5, 1, 1, v12);
  v14 = type metadata accessor for ModelResponse();
  v15 = v14[8];
  v13((a1 + v15), 1, 1, v12);
  v16 = v14[9];
  *a1 = v9;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  outlined assign with copy of URL?(v5, a1 + v15);
  *(a1 + v16) = &outlined read-only object #0 of static ModelResponse.emptyModelResponse();
  *(a1 + 32) = v11;
  v17 = (a1 + v14[14]);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  *(a1 + v14[10]) = 0;
  *(a1 + v14[11]) = 0;
  v18 = (a1 + v14[12]);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  result = outlined destroy of URL?(v5);
  v20 = (a1 + v14[13]);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  *(a1 + 24) = 0;
  return result;
}

uint64_t ModelResponseText.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26GenerativeAssistantActions17ModelResponseTextV10CodingKeys33_D7F45B405828FE3CD8835A718B38C9D4LLOGMd, &_ss22KeyedEncodingContainerVy26GenerativeAssistantActions17ModelResponseTextV10CodingKeys33_D7F45B405828FE3CD8835A718B38C9D4LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ModelResponseText.CodingKeys and conformance ModelResponseText.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v17[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v17[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v16 = *(v3 + 32);
  v17[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ModelResponseText.CodingKeys()
{
  v1 = 0x7972616D6D7573;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ModelResponseText.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ModelResponseText.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ModelResponseText.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModelResponseText.CodingKeys and conformance ModelResponseText.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModelResponseText.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModelResponseText.CodingKeys and conformance ModelResponseText.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance ModelResponseText@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized ModelResponseText.init(from:)(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t ModelResponse.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ModelResponse();
  v6 = v5[8];
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  GeneratedValues.extract<A>(field:)();
  if (v2)
  {
    v9 = type metadata accessor for GeneratedValues();
    (*(*(v9 - 8) + 8))(a1, v9);
    return outlined destroy of URL?(a2 + v6);
  }

  else
  {
    v11 = (a2 + v5[14]);
    *v11 = v16;
    v11[1] = v17;
    GeneratedValues.extract<A>(field:)();
    *(a2 + 8) = v16;
    *(a2 + 16) = v17;
    GeneratedValues.extract<A>(field:)();
    v12 = v5[9];
    *(a2 + 24) = v16;
    *(a2 + 32) = v8;
    *(a2 + v12) = v8;
    *(a2 + v5[10]) = 0;
    *(a2 + v5[11]) = 0;
    v13 = (a2 + v5[12]);
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v14 = type metadata accessor for GeneratedValues();
    result = (*(*(v14 - 8) + 8))(a1, v14);
    v15 = (a2 + v5[13]);
    *v15 = 0;
    v15[1] = 0xE000000000000000;
  }

  return result;
}

uint64_t protocol witness for static Generable.schema.getter in conformance ModelResponse@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for schema != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Schema();
  v3 = __swift_project_value_buffer(v2, static ModelResponse.schema);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t getEnumTagSinglePayload for ModelResponseText(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for ModelResponseText(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized ModelResponseText.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FE35C50 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized ModelResponseText.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26GenerativeAssistantActions17ModelResponseTextV10CodingKeys33_D7F45B405828FE3CD8835A718B38C9D4LLOGMd, &_ss22KeyedDecodingContainerVy26GenerativeAssistantActions17ModelResponseTextV10CodingKeys33_D7F45B405828FE3CD8835A718B38C9D4LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ModelResponseText.CodingKeys and conformance ModelResponseText.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v26 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v22 = a2;
  v23 = v11;
  v25 = 1;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v15;
  v24 = 2;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v18 = v22;
  *v22 = v23;
  v18[1] = v13;
  v19 = v21;
  v18[2] = v14;
  v18[3] = v19;
  *(v18 + 32) = v16;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModelResponseText.CodingKeys and conformance ModelResponseText.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ModelResponseText.CodingKeys and conformance ModelResponseText.CodingKeys;
  if (!lazy protocol witness table cache variable for type ModelResponseText.CodingKeys and conformance ModelResponseText.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelResponseText.CodingKeys and conformance ModelResponseText.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModelResponseText.CodingKeys and conformance ModelResponseText.CodingKeys;
  if (!lazy protocol witness table cache variable for type ModelResponseText.CodingKeys and conformance ModelResponseText.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelResponseText.CodingKeys and conformance ModelResponseText.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModelResponseText.CodingKeys and conformance ModelResponseText.CodingKeys;
  if (!lazy protocol witness table cache variable for type ModelResponseText.CodingKeys and conformance ModelResponseText.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelResponseText.CodingKeys and conformance ModelResponseText.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModelResponseText.CodingKeys and conformance ModelResponseText.CodingKeys;
  if (!lazy protocol witness table cache variable for type ModelResponseText.CodingKeys and conformance ModelResponseText.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelResponseText.CodingKeys and conformance ModelResponseText.CodingKeys);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ModelResponseText.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ModelResponseText.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of ContentSelectorProviding.select(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = dispatch thunk of PartnerStreamWrapper.getStreamedResponse();

  return v13(a1, a2, a3, a4);
}

uint64_t sub_24FE06A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ScreenContent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24FE06B48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ScreenContent(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for SelectedContent()
{
  result = type metadata singleton initialization cache for SelectedContent;
  if (!type metadata singleton initialization cache for SelectedContent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for SelectedContent()
{
  type metadata accessor for ScreenContent(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ImageInfo?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for ImageInfo?()
{
  if (!lazy cache variable for type metadata for ImageInfo?)
  {
    type metadata accessor for ImageInfo(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ImageInfo?);
    }
  }
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for ContentSelector(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentSelector(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t protocol witness for static CustomNSError.errorDomain.getter in conformance ContentSelector.Error()
{
  v0 = static ContentSelector.Error.errorDomain;

  return v0;
}

uint64_t protocol witness for Error._domain.getter in conformance ContentSelector.Error(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContentSelector.Error and conformance ContentSelector.Error();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance ContentSelector.Error(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContentSelector.Error and conformance ContentSelector.Error();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t ContentSelector.select(from:)(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions15SelectedContentVSgMd, &_s26GenerativeAssistantActions15SelectedContentVSgMR) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v5 = type metadata accessor for SelectedContent();
  v3[17] = v5;
  v6 = *(v5 - 8);
  v3[18] = v6;
  v7 = *(v6 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](ContentSelector.select(from:), 0, 0);
}

uint64_t ContentSelector.select(from:)()
{
  v1 = v0[10];
  v0[7] = MEMORY[0x277D84F90];
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  (*(v4 + 16))(v6, v3, v2);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();

  v7 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v8 = *(MEMORY[0x277D856D8] + 4);
  v9 = swift_task_alloc();
  v0[30] = v9;
  *v9 = v0;
  v9[1] = ContentSelector.select(from:);

  return MEMORY[0x282200310](v0 + 8, 0, 0);
}

{
  v2 = *(*v1 + 240);
  v4 = *v1;

  if (!v0)
  {

    return MEMORY[0x2822009F8](ContentSelector.select(from:), 0, 0);
  }

  return result;
}

{
  v1 = v0[8];
  v0[31] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[32] = v2;
    *v2 = v0;
    v2[1] = ContentSelector.select(from:);
    v3 = v0[16];
    v4 = v0[11];
    v5 = v1;
    v6 = 4;
LABEL_5:

    return ContentSelector.select(from:priority:)(v3, v5, v6);
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v7 = specialized static ContentRanker.rank(contents:)(v0[7]);
  v0[42] = v7;

  if (*(v7 + 16))
  {
    v8 = swift_task_alloc();
    v0[43] = v8;
    *v8 = v0;
    v8[1] = ContentSelector.select(from:);
    v9 = v0[11];
    v3 = v0[12];
    v5 = v7;
    v6 = 0;
    goto LABEL_5;
  }

  v11 = v0[11];

  __swift_project_boxed_opaque_existential_1((v11 + 48), *(v11 + 72));
  if (ScreenLockChecker.isScreenLocked()())
  {
    lazy protocol witness table accessor for type ContentRequestErrors and conformance ContentRequestErrors();
    swift_allocError();
    v13 = 10;
  }

  else
  {
    lazy protocol witness table accessor for type ContentSelector.Error and conformance ContentSelector.Error();
    swift_allocError();
    v13 = 0;
  }

  *v12 = v13;
  swift_willThrow();
  v15 = v0[28];
  v14 = v0[29];
  v17 = v0[26];
  v16 = v0[27];
  v19 = v0[24];
  v18 = v0[25];
  v20 = v0[22];
  v21 = v0[23];
  v23 = v0[20];
  v22 = v0[21];
  v25 = v0[19];
  v26 = v0[16];
  v27 = v0[15];
  v28 = v0[14];
  v29 = v0[13];
  v30 = v0[12];

  v24 = v0[1];

  return v24();
}

{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v8 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = *(v2 + 248);
    v5 = *(v2 + 56);

    v6 = ContentSelector.select(from:);
  }

  else
  {
    v6 = ContentSelector.select(from:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v46 = v0;
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  v4 = *(v2 + 48);
  v0[34] = v4;
  v0[35] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v5 = v4(v3, 1, v1);
  v6 = v0[31];
  if (v5 == 1)
  {
    outlined destroy of OnScreenContent.Document?(v3, &_s26GenerativeAssistantActions15SelectedContentVSgMd, &_s26GenerativeAssistantActions15SelectedContentVSgMR);
    v7 = swift_task_alloc();
    v0[36] = v7;
    *v7 = v0;
    v7[1] = ContentSelector.select(from:);
    v8 = v0[15];
    v9 = v0[11];

    return ContentSelector.select(from:priority:)(v8, v6, 3);
  }

  else
  {
    v11 = v0[29];
    v12 = v0[7];

    _s26GenerativeAssistantActions15SelectedContentVWObTm_0(v3, v11, type metadata accessor for SelectedContent);
    if (one-time initialization token for contentSelector != -1)
    {
      swift_once();
    }

    v13 = v0[28];
    v14 = v0[29];
    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.contentSelector);
    outlined init with copy of SelectedContent(v14, v13, type metadata accessor for SelectedContent);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[28];
    if (v18)
    {
      v20 = v0[27];
      v21 = v0[17];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v45 = v23;
      *v22 = 136315650;
      *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x53746E65746E6F43, 0xEF726F7463656C65, &v45);
      *(v22 + 12) = 2080;
      *(v22 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x66287463656C6573, 0xED0000293A6D6F72, &v45);
      *(v22 + 22) = 2080;
      outlined init with copy of SelectedContent(v19, v20, type metadata accessor for SelectedContent);
      v24 = String.init<A>(describing:)();
      v26 = v25;
      outlined destroy of SelectedContent(v19, type metadata accessor for SelectedContent);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v45);

      *(v22 + 24) = v27;
      _os_log_impl(&dword_24FD67000, v16, v17, "%s.%s selected highest priority content: %s", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v23, -1, -1);
      MEMORY[0x253057F40](v22, -1, -1);
    }

    else
    {

      outlined destroy of SelectedContent(v19, type metadata accessor for SelectedContent);
    }

    _s26GenerativeAssistantActions15SelectedContentVWObTm_0(v0[29], v0[9], type metadata accessor for SelectedContent);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v29 = v0[28];
    v28 = v0[29];
    v31 = v0[26];
    v30 = v0[27];
    v33 = v0[24];
    v32 = v0[25];
    v35 = v0[22];
    v34 = v0[23];
    v36 = v0[20];
    v37 = v0[21];
    v39 = v0[19];
    v40 = v0[16];
    v41 = v0[15];
    v42 = v0[14];
    v43 = v0[13];
    v44 = v0[12];

    v38 = v0[1];

    return v38();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v8 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v4 = *(v2 + 248);
    v5 = *(v2 + 56);

    v6 = ContentSelector.select(from:);
  }

  else
  {
    v6 = ContentSelector.select(from:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v44 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 120);
  v3 = (*(v0 + 272))(v2, 1, *(v0 + 136));
  v4 = *(v0 + 248);
  if (v3 == 1)
  {
    outlined destroy of OnScreenContent.Document?(v2, &_s26GenerativeAssistantActions15SelectedContentVSgMd, &_s26GenerativeAssistantActions15SelectedContentVSgMR);
    v5 = swift_task_alloc();
    *(v0 + 304) = v5;
    *v5 = v0;
    v5[1] = ContentSelector.select(from:);
    v6 = *(v0 + 112);
    v7 = *(v0 + 88);

    return ContentSelector.select(from:priority:)(v6, v4, 2);
  }

  else
  {
    v9 = *(v0 + 208);
    v10 = *(v0 + 56);

    _s26GenerativeAssistantActions15SelectedContentVWObTm_0(v2, v9, type metadata accessor for SelectedContent);
    if (one-time initialization token for contentSelector != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 200);
    v12 = *(v0 + 208);
    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.contentSelector);
    outlined init with copy of SelectedContent(v12, v11, type metadata accessor for SelectedContent);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 216);
      v17 = *(v0 + 200);
      v18 = *(v0 + 136);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v43 = v20;
      *v19 = 136315650;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x53746E65746E6F43, 0xEF726F7463656C65, &v43);
      *(v19 + 12) = 2080;
      *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x66287463656C6573, 0xED0000293A6D6F72, &v43);
      *(v19 + 22) = 2080;
      outlined init with copy of SelectedContent(v17, v16, type metadata accessor for SelectedContent);
      v21 = String.init<A>(describing:)();
      v23 = v22;
      outlined destroy of SelectedContent(v17, type metadata accessor for SelectedContent);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v43);

      *(v19 + 24) = v24;
      _os_log_impl(&dword_24FD67000, v14, v15, "%s.%s selected high priority content: %s", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v20, -1, -1);
      MEMORY[0x253057F40](v19, -1, -1);
    }

    else
    {
      v25 = *(v0 + 200);

      outlined destroy of SelectedContent(v25, type metadata accessor for SelectedContent);
    }

    _s26GenerativeAssistantActions15SelectedContentVWObTm_0(*(v0 + 208), *(v0 + 72), type metadata accessor for SelectedContent);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v27 = *(v0 + 224);
    v26 = *(v0 + 232);
    v29 = *(v0 + 208);
    v28 = *(v0 + 216);
    v31 = *(v0 + 192);
    v30 = *(v0 + 200);
    v33 = *(v0 + 176);
    v32 = *(v0 + 184);
    v34 = *(v0 + 160);
    v35 = *(v0 + 168);
    v37 = *(v0 + 152);
    v38 = *(v0 + 128);
    v39 = *(v0 + 120);
    v40 = *(v0 + 112);
    v41 = *(v0 + 104);
    v42 = *(v0 + 96);

    v36 = *(v0 + 8);

    return v36();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v8 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v4 = *(v2 + 248);
    v5 = *(v2 + 56);

    v6 = ContentSelector.select(from:);
  }

  else
  {
    v6 = ContentSelector.select(from:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v44 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 112);
  v3 = (*(v0 + 272))(v2, 1, *(v0 + 136));
  v4 = *(v0 + 248);
  if (v3 == 1)
  {
    outlined destroy of OnScreenContent.Document?(v2, &_s26GenerativeAssistantActions15SelectedContentVSgMd, &_s26GenerativeAssistantActions15SelectedContentVSgMR);
    v5 = swift_task_alloc();
    *(v0 + 320) = v5;
    *v5 = v0;
    v5[1] = ContentSelector.select(from:);
    v6 = *(v0 + 104);
    v7 = *(v0 + 88);

    return ContentSelector.select(from:priority:)(v6, v4, 1);
  }

  else
  {
    v9 = *(v0 + 192);
    v10 = *(v0 + 56);

    _s26GenerativeAssistantActions15SelectedContentVWObTm_0(v2, v9, type metadata accessor for SelectedContent);
    if (one-time initialization token for contentSelector != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 184);
    v12 = *(v0 + 192);
    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.contentSelector);
    outlined init with copy of SelectedContent(v12, v11, type metadata accessor for SelectedContent);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 216);
      v17 = *(v0 + 184);
      v18 = *(v0 + 136);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v43 = v20;
      *v19 = 136315650;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x53746E65746E6F43, 0xEF726F7463656C65, &v43);
      *(v19 + 12) = 2080;
      *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x66287463656C6573, 0xED0000293A6D6F72, &v43);
      *(v19 + 22) = 2080;
      outlined init with copy of SelectedContent(v17, v16, type metadata accessor for SelectedContent);
      v21 = String.init<A>(describing:)();
      v23 = v22;
      outlined destroy of SelectedContent(v17, type metadata accessor for SelectedContent);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v43);

      *(v19 + 24) = v24;
      _os_log_impl(&dword_24FD67000, v14, v15, "%s.%s selected medium priority content: %s", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v20, -1, -1);
      MEMORY[0x253057F40](v19, -1, -1);
    }

    else
    {
      v25 = *(v0 + 184);

      outlined destroy of SelectedContent(v25, type metadata accessor for SelectedContent);
    }

    _s26GenerativeAssistantActions15SelectedContentVWObTm_0(*(v0 + 192), *(v0 + 72), type metadata accessor for SelectedContent);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v27 = *(v0 + 224);
    v26 = *(v0 + 232);
    v29 = *(v0 + 208);
    v28 = *(v0 + 216);
    v31 = *(v0 + 192);
    v30 = *(v0 + 200);
    v33 = *(v0 + 176);
    v32 = *(v0 + 184);
    v34 = *(v0 + 160);
    v35 = *(v0 + 168);
    v37 = *(v0 + 152);
    v38 = *(v0 + 128);
    v39 = *(v0 + 120);
    v40 = *(v0 + 112);
    v41 = *(v0 + 104);
    v42 = *(v0 + 96);

    v36 = *(v0 + 8);

    return v36();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v8 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v4 = *(v2 + 248);
    v5 = *(v2 + 56);

    v6 = ContentSelector.select(from:);
  }

  else
  {
    v6 = ContentSelector.select(from:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v44 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 104);
  if ((*(v0 + 272))(v2, 1, *(v0 + 136)) == 1)
  {
    v3 = *(v0 + 248);
    outlined destroy of OnScreenContent.Document?(v2, &_s26GenerativeAssistantActions15SelectedContentVSgMd, &_s26GenerativeAssistantActions15SelectedContentVSgMR);
    specialized Array.append<A>(contentsOf:)(v3);
    v4 = *(v0 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, *(v0 + 40));
    v5 = *(MEMORY[0x277D856D8] + 4);
    v6 = swift_task_alloc();
    *(v0 + 240) = v6;
    *v6 = v0;
    v6[1] = ContentSelector.select(from:);

    return MEMORY[0x282200310](v0 + 64, 0, 0);
  }

  else
  {
    v7 = *(v0 + 248);
    v8 = *(v0 + 176);
    v9 = *(v0 + 56);

    _s26GenerativeAssistantActions15SelectedContentVWObTm_0(v2, v8, type metadata accessor for SelectedContent);
    if (one-time initialization token for contentSelector != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 168);
    v11 = *(v0 + 176);
    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.contentSelector);
    outlined init with copy of SelectedContent(v11, v10, type metadata accessor for SelectedContent);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 216);
      v16 = *(v0 + 168);
      v17 = *(v0 + 136);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v43 = v19;
      *v18 = 136315650;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x53746E65746E6F43, 0xEF726F7463656C65, &v43);
      *(v18 + 12) = 2080;
      *(v18 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x66287463656C6573, 0xED0000293A6D6F72, &v43);
      *(v18 + 22) = 2080;
      outlined init with copy of SelectedContent(v16, v15, type metadata accessor for SelectedContent);
      v20 = String.init<A>(describing:)();
      v22 = v21;
      outlined destroy of SelectedContent(v16, type metadata accessor for SelectedContent);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v43);

      *(v18 + 24) = v23;
      _os_log_impl(&dword_24FD67000, v13, v14, "%s.%s selected normal priority content: %s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v19, -1, -1);
      MEMORY[0x253057F40](v18, -1, -1);
    }

    else
    {
      v24 = *(v0 + 168);

      outlined destroy of SelectedContent(v24, type metadata accessor for SelectedContent);
    }

    _s26GenerativeAssistantActions15SelectedContentVWObTm_0(*(v0 + 176), *(v0 + 72), type metadata accessor for SelectedContent);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v26 = *(v0 + 224);
    v25 = *(v0 + 232);
    v28 = *(v0 + 208);
    v27 = *(v0 + 216);
    v30 = *(v0 + 192);
    v29 = *(v0 + 200);
    v32 = *(v0 + 176);
    v31 = *(v0 + 184);
    v33 = *(v0 + 160);
    v34 = *(v0 + 168);
    v37 = *(v0 + 152);
    v38 = *(v0 + 128);
    v39 = *(v0 + 120);
    v40 = *(v0 + 112);
    v41 = *(v0 + 104);
    v42 = *(v0 + 96);

    v35 = *(v0 + 8);

    return v35();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *v1;
  *(*v1 + 352) = v0;

  v5 = *(v2 + 336);

  if (v0)
  {
    v6 = ContentSelector.select(from:);
  }

  else
  {
    v6 = ContentSelector.select(from:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v53 = v0;
  v1 = v0[12];
  if ((*(v0[18] + 48))(v1, 1, v0[17]) == 1)
  {
    outlined destroy of OnScreenContent.Document?(v1, &_s26GenerativeAssistantActions15SelectedContentVSgMd, &_s26GenerativeAssistantActions15SelectedContentVSgMR);
    lazy protocol witness table accessor for type ContentSelector.Error and conformance ContentSelector.Error();
    swift_allocError();
    *v2 = 3;
    swift_willThrow();
    v4 = v0[28];
    v3 = v0[29];
    v6 = v0[26];
    v5 = v0[27];
    v8 = v0[24];
    v7 = v0[25];
    v9 = v0[22];
    v10 = v0[23];
    v11 = v0[20];
    v12 = v0[21];
    v40 = v0[19];
    v41 = v0[16];
    v43 = v0[15];
    v45 = v0[14];
    v47 = v0[13];
    v49 = v0[12];

    v13 = v0[1];
  }

  else
  {
    _s26GenerativeAssistantActions15SelectedContentVWObTm_0(v1, v0[20], type metadata accessor for SelectedContent);
    if (one-time initialization token for contentSelector != -1)
    {
      swift_once();
    }

    v14 = v0[19];
    v15 = v0[20];
    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.contentSelector);
    outlined init with copy of SelectedContent(v15, v14, type metadata accessor for SelectedContent);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = v0[27];
      v20 = v0[19];
      v21 = v0[17];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v52[0] = v23;
      *v22 = 136315650;
      *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x53746E65746E6F43, 0xEF726F7463656C65, v52);
      *(v22 + 12) = 2080;
      *(v22 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x66287463656C6573, 0xED0000293A6D6F72, v52);
      *(v22 + 22) = 2080;
      outlined init with copy of SelectedContent(v20, v19, type metadata accessor for SelectedContent);
      v24 = String.init<A>(describing:)();
      v26 = v25;
      outlined destroy of SelectedContent(v20, type metadata accessor for SelectedContent);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v52);

      *(v22 + 24) = v27;
      _os_log_impl(&dword_24FD67000, v17, v18, "%s.%s selected content: %s", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v23, -1, -1);
      MEMORY[0x253057F40](v22, -1, -1);
    }

    else
    {
      v28 = v0[19];

      outlined destroy of SelectedContent(v28, type metadata accessor for SelectedContent);
    }

    _s26GenerativeAssistantActions15SelectedContentVWObTm_0(v0[20], v0[9], type metadata accessor for SelectedContent);
    v30 = v0[28];
    v29 = v0[29];
    v32 = v0[26];
    v31 = v0[27];
    v34 = v0[24];
    v33 = v0[25];
    v36 = v0[22];
    v35 = v0[23];
    v37 = v0[20];
    v38 = v0[21];
    v42 = v0[19];
    v44 = v0[16];
    v46 = v0[15];
    v48 = v0[14];
    v50 = v0[13];
    v51 = v0[12];

    v13 = v0[1];
  }

  return v13();
}

{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v19 = v0[33];
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[22];
  v8 = v0[23];
  v10 = v0[20];
  v9 = v0[21];
  v13 = v0[19];
  v14 = v0[16];
  v15 = v0[15];
  v16 = v0[14];
  v17 = v0[13];
  v18 = v0[12];

  v11 = v0[1];

  return v11();
}

{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v19 = v0[37];
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[22];
  v8 = v0[23];
  v10 = v0[20];
  v9 = v0[21];
  v13 = v0[19];
  v14 = v0[16];
  v15 = v0[15];
  v16 = v0[14];
  v17 = v0[13];
  v18 = v0[12];

  v11 = v0[1];

  return v11();
}

{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v19 = v0[39];
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[22];
  v8 = v0[23];
  v10 = v0[20];
  v9 = v0[21];
  v13 = v0[19];
  v14 = v0[16];
  v15 = v0[15];
  v16 = v0[14];
  v17 = v0[13];
  v18 = v0[12];

  v11 = v0[1];

  return v11();
}

{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v19 = v0[41];
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[22];
  v8 = v0[23];
  v10 = v0[20];
  v9 = v0[21];
  v13 = v0[19];
  v14 = v0[16];
  v15 = v0[15];
  v16 = v0[14];
  v17 = v0[13];
  v18 = v0[12];

  v11 = v0[1];

  return v11();
}

{
  v19 = v0[44];
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[22];
  v8 = v0[23];
  v10 = v0[20];
  v9 = v0[21];
  v13 = v0[19];
  v14 = v0[16];
  v15 = v0[15];
  v16 = v0[14];
  v17 = v0[13];
  v18 = v0[12];

  v11 = v0[1];

  return v11();
}

uint64_t ContentSelector.select(from:priority:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 260) = a3;
  *(v4 + 16) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR) - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions13ScreenContentOSgMd, &_s26GenerativeAssistantActions13ScreenContentOSgMR) - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = swift_task_alloc();
  v7 = type metadata accessor for ScreenContent(0);
  *(v4 + 72) = v7;
  v8 = *(v7 - 8);
  *(v4 + 80) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions15SelectedContentVSgMd, &_s26GenerativeAssistantActions15SelectedContentVSgMR) - 8) + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  v11 = type metadata accessor for SelectedContent();
  *(v4 + 128) = v11;
  v12 = *(v11 - 8);
  *(v4 + 136) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentVSgMd, &_s23IntelligenceFlowContext15OnScreenContentVSgMR) - 8) + 64) + 15;
  *(v4 + 160) = swift_task_alloc();
  v15 = type metadata accessor for OnScreenContent();
  *(v4 + 168) = v15;
  v16 = *(v15 - 8);
  *(v4 + 176) = v16;
  v17 = *(v16 + 64) + 15;
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](ContentSelector.select(from:priority:), 0, 0);
}

uint64_t ContentSelector.select(from:priority:)()
{
  v70 = v0;
  v1 = *(*(v0 + 24) + 16);
  *(v0 + 208) = v1;
  if (v1)
  {
    v2 = 0;
    v3 = *(v0 + 176);
    *(v0 + 256) = *(v3 + 80);
    *(v0 + 216) = *(v3 + 72);
    *(v0 + 224) = *(v3 + 16);
    do
    {
      *(v0 + 232) = 0;
      *(v0 + 240) = v2;
      v4 = *(v0 + 260);
      v5 = *(v0 + 32);
      v6 = *(v0 + 176) + 16;
      (*(v0 + 224))(*(v0 + 200), *(v0 + 24) + ((*(v0 + 256) + 32) & ~*(v0 + 256)) + *(v0 + 216) * v2, *(v0 + 168));
      if (v4 > ContentSelector.getPriority(content:)())
      {
        (*(*(v0 + 176) + 8))(*(v0 + 200), *(v0 + 168));
      }

      else
      {
        v7 = *(v0 + 200);
        if (OnScreenContent.isAppEntity()())
        {
          v55 = *__swift_project_boxed_opaque_existential_1((*(v0 + 32) + 88), *(*(v0 + 32) + 112));
          v56 = swift_task_alloc();
          *(v0 + 248) = v56;
          *v56 = v0;
          v56[1] = ContentSelector.select(from:priority:);
          v57 = *(v0 + 200);
          v58 = *(v0 + 160);

          return EntityConverter.convert(content:)(v58, v57, v55);
        }

        v8 = *(v0 + 184);
        v10 = *(v0 + 72);
        v9 = *(v0 + 80);
        v11 = *(v0 + 64);
        (*(v0 + 224))(v8, *(v0 + 200), *(v0 + 168));
        ScreenContent.init(_:isAppEntity:)(v8, 0, v11);
        v12 = *(v9 + 48);
        if (v12(v11, 1, v10) == 1)
        {
          outlined destroy of OnScreenContent.Document?(*(v0 + 64), &_s26GenerativeAssistantActions13ScreenContentOSgMd, &_s26GenerativeAssistantActions13ScreenContentOSgMR);
          if (one-time initialization token for contentSelector != -1)
          {
            swift_once();
          }

          v13 = type metadata accessor for Logger();
          __swift_project_value_buffer(v13, static Logger.contentSelector);
          v14 = Logger.logObject.getter();
          v15 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            v17 = swift_slowAlloc();
            v69[0] = v17;
            *v16 = 136315394;
            *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x53746E65746E6F43, 0xEF726F7463656C65, v69);
            *(v16 + 12) = 2080;
            *(v16 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000031, 0x800000024FE35DF0, v69);
            _os_log_impl(&dword_24FD67000, v14, v15, "%s.%s ContextRetrievalScreenContent cannot be converted into ScreenContent, returning nil", v16, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x253057F40](v17, -1, -1);
            MEMORY[0x253057F40](v16, -1, -1);
          }

          v18 = 1;
        }

        else
        {
          v19 = *(v0 + 200);
          v20 = *(v0 + 56);
          v22 = *(v0 + 24);
          v21 = *(v0 + 32);
          _s26GenerativeAssistantActions15SelectedContentVWObTm_0(*(v0 + 64), *(v0 + 104), type metadata accessor for ScreenContent);
          ContentSelector.getAssociatedScreenshot(for:in:)(v19, v22, v20);
          v23 = *(v0 + 72);
          v25 = *(v0 + 48);
          v24 = *(v0 + 56);
          _s26GenerativeAssistantActions15SelectedContentVWObTm_0(*(v0 + 104), *(v0 + 96), type metadata accessor for ScreenContent);
          outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v24, v25, &_s26GenerativeAssistantActions13ScreenContentOSgMd, &_s26GenerativeAssistantActions13ScreenContentOSgMR);
          if (v12(v25, 1, v23) == 1)
          {
            v26 = *(v0 + 40);
            outlined destroy of OnScreenContent.Document?(*(v0 + 48), &_s26GenerativeAssistantActions13ScreenContentOSgMd, &_s26GenerativeAssistantActions13ScreenContentOSgMR);
            v27 = type metadata accessor for ImageInfo(0);
            (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
          }

          else
          {
            v28 = *(v0 + 72);
            outlined init with copy of SelectedContent(*(v0 + 48), *(v0 + 88), type metadata accessor for ScreenContent);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            v30 = *(v0 + 88);
            v31 = *(v0 + 40);
            if (EnumCaseMultiPayload == 1)
            {
              v32 = type metadata accessor for ImageInfo(0);
              (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
              outlined destroy of SelectedContent(v30, type metadata accessor for ScreenContent);
            }

            else
            {
              _s26GenerativeAssistantActions15SelectedContentVWObTm_0(*(v0 + 88), *(v0 + 40), type metadata accessor for ImageInfo);
              v33 = type metadata accessor for ImageInfo(0);
              (*(*(v33 - 8) + 56))(v31, 0, 1, v33);
            }

            outlined destroy of SelectedContent(*(v0 + 48), type metadata accessor for ScreenContent);
          }

          v34 = *(v0 + 128);
          v35 = *(v0 + 112);
          v36 = *(v0 + 40);
          _s26GenerativeAssistantActions15SelectedContentVWObTm_0(*(v0 + 96), v35, type metadata accessor for ScreenContent);
          outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v36, v35 + *(v34 + 20), &_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR);
          v18 = 0;
        }

        v37 = *(v0 + 200);
        v38 = *(v0 + 168);
        v39 = *(v0 + 176);
        v40 = *(v0 + 128);
        v41 = *(v0 + 136);
        v42 = *(v0 + 112);
        v43 = *(v41 + 56);
        v43(v42, v18, 1, v40);
        (*(v39 + 8))(v37, v38);
        if ((*(v41 + 48))(v42, 1, v40) != 1)
        {
          v59 = *(v0 + 144);
          v60 = *(v0 + 16);
          _s26GenerativeAssistantActions15SelectedContentVWObTm_0(*(v0 + 112), v59, type metadata accessor for SelectedContent);
          _s26GenerativeAssistantActions15SelectedContentVWObTm_0(v59, v60, type metadata accessor for SelectedContent);
          v44 = 0;
          v61 = *(v0 + 136) + 56;
          goto LABEL_23;
        }

        outlined destroy of OnScreenContent.Document?(*(v0 + 112), &_s26GenerativeAssistantActions15SelectedContentVSgMd, &_s26GenerativeAssistantActions15SelectedContentVSgMR);
      }

      v2 = *(v0 + 240) + 1;
    }

    while (v2 != *(v0 + 208));
  }

  v43 = *(*(v0 + 136) + 56);
  v44 = 1;
LABEL_23:
  v46 = *(v0 + 192);
  v45 = *(v0 + 200);
  v47 = *(v0 + 184);
  v49 = *(v0 + 152);
  v48 = *(v0 + 160);
  v50 = *(v0 + 144);
  v51 = *(v0 + 120);
  v52 = *(v0 + 112);
  v62 = *(v0 + 104);
  v63 = *(v0 + 96);
  v64 = *(v0 + 88);
  v65 = *(v0 + 64);
  v66 = *(v0 + 56);
  v67 = *(v0 + 48);
  v68 = *(v0 + 40);
  v43(*(v0 + 16), v44, 1, *(v0 + 128));

  v53 = *(v0 + 8);

  return v53();
}

{
  v1 = *(*v0 + 248);
  v3 = *v0;

  return MEMORY[0x2822009F8](ContentSelector.select(from:priority:), 0, 0);
}

{
  v104 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    (*(v2 + 8))(*(v0 + 200), v1);
    outlined destroy of OnScreenContent.Document?(v3, &_s23IntelligenceFlowContext15OnScreenContentVSgMd, &_s23IntelligenceFlowContext15OnScreenContentVSgMR);
    v4 = *(v0 + 232);
  }

  else
  {
    v18 = *(v0 + 232);
    v19 = *(v0 + 192);
    v20 = *(v0 + 120);
    v22 = *(v0 + 24);
    v21 = *(v0 + 32);
    (*(v2 + 32))(v19, v3, v1);
    ContentSelector.getSelectedContent(content:contents:isAppEntity:)(v19, v22, 1, v20);
    if (v18)
    {
      v23 = *(*(v0 + 176) + 8);
      v23(*(v0 + 192), *(v0 + 168));
LABEL_8:
      v24 = *(v0 + 192);
      v25 = *(v0 + 184);
      v26 = *(v0 + 160);
      v28 = *(v0 + 144);
      v27 = *(v0 + 152);
      v29 = *(v0 + 120);
      v89 = *(v0 + 112);
      v90 = *(v0 + 104);
      v91 = *(v0 + 96);
      v93 = *(v0 + 88);
      v95 = *(v0 + 64);
      v97 = *(v0 + 56);
      v99 = *(v0 + 48);
      v101 = *(v0 + 40);
      v23(*(v0 + 200), *(v0 + 168));

      v17 = *(v0 + 8);
      goto LABEL_9;
    }

    v71 = *(v0 + 200);
    v72 = *(v0 + 168);
    v74 = *(v0 + 128);
    v73 = *(v0 + 136);
    v75 = *(v0 + 120);
    v76 = *(*(v0 + 176) + 8);
    v76(*(v0 + 192), v72);
    v76(v71, v72);
    if ((*(v73 + 48))(v75, 1, v74) != 1)
    {
      v77 = *(v0 + 152);
      v78 = *(v0 + 136);
      v79 = *(v0 + 16);
      _s26GenerativeAssistantActions15SelectedContentVWObTm_0(*(v0 + 120), v77, type metadata accessor for SelectedContent);
      _s26GenerativeAssistantActions15SelectedContentVWObTm_0(v77, v79, type metadata accessor for SelectedContent);
      v7 = 0;
      v6 = *(v78 + 56);
      v80 = *(v0 + 136) + 56;
      goto LABEL_5;
    }

    outlined destroy of OnScreenContent.Document?(*(v0 + 120), &_s26GenerativeAssistantActions15SelectedContentVSgMd, &_s26GenerativeAssistantActions15SelectedContentVSgMR);
    v4 = 0;
  }

  v5 = *(v0 + 240) + 1;
  if (v5 == *(v0 + 208))
  {
LABEL_4:
    v6 = *(*(v0 + 136) + 56);
    v7 = 1;
LABEL_5:
    v9 = *(v0 + 192);
    v8 = *(v0 + 200);
    v10 = *(v0 + 184);
    v12 = *(v0 + 152);
    v11 = *(v0 + 160);
    v13 = *(v0 + 144);
    v14 = *(v0 + 120);
    v16 = *(v0 + 104);
    v15 = *(v0 + 112);
    v92 = *(v0 + 96);
    v94 = *(v0 + 88);
    v96 = *(v0 + 64);
    v98 = *(v0 + 56);
    v100 = *(v0 + 48);
    v102 = *(v0 + 40);
    v6(*(v0 + 16), v7, 1, *(v0 + 128));

    v17 = *(v0 + 8);
LABEL_9:

    return v17();
  }

  while (1)
  {
    *(v0 + 232) = v4;
    *(v0 + 240) = v5;
    v31 = *(v0 + 260);
    v32 = *(v0 + 32);
    v33 = *(v0 + 176) + 16;
    (*(v0 + 224))(*(v0 + 200), *(v0 + 24) + ((*(v0 + 256) + 32) & ~*(v0 + 256)) + *(v0 + 216) * v5, *(v0 + 168));
    if (v31 > ContentSelector.getPriority(content:)())
    {
      (*(*(v0 + 176) + 8))(*(v0 + 200), *(v0 + 168));
      goto LABEL_14;
    }

    v34 = *(v0 + 200);
    if (OnScreenContent.isAppEntity()())
    {
      break;
    }

    v35 = *(v0 + 184);
    v37 = *(v0 + 72);
    v36 = *(v0 + 80);
    v38 = *(v0 + 64);
    (*(v0 + 224))(v35, *(v0 + 200), *(v0 + 168));
    ScreenContent.init(_:isAppEntity:)(v35, 0, v38);
    v39 = *(v36 + 48);
    if (v39(v38, 1, v37) == 1)
    {
      outlined destroy of OnScreenContent.Document?(*(v0 + 64), &_s26GenerativeAssistantActions13ScreenContentOSgMd, &_s26GenerativeAssistantActions13ScreenContentOSgMR);
      if (one-time initialization token for contentSelector != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, static Logger.contentSelector);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v103[0] = v44;
        *v43 = 136315394;
        *(v43 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x53746E65746E6F43, 0xEF726F7463656C65, v103);
        *(v43 + 12) = 2080;
        *(v43 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000031, 0x800000024FE35DF0, v103);
        _os_log_impl(&dword_24FD67000, v41, v42, "%s.%s ContextRetrievalScreenContent cannot be converted into ScreenContent, returning nil", v43, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v44, -1, -1);
        MEMORY[0x253057F40](v43, -1, -1);
      }

      v45 = 1;
    }

    else
    {
      v46 = *(v0 + 200);
      v47 = *(v0 + 56);
      v49 = *(v0 + 24);
      v48 = *(v0 + 32);
      _s26GenerativeAssistantActions15SelectedContentVWObTm_0(*(v0 + 64), *(v0 + 104), type metadata accessor for ScreenContent);
      ContentSelector.getAssociatedScreenshot(for:in:)(v46, v49, v47);
      if (v4)
      {
        v88 = *(v0 + 176);
        outlined destroy of SelectedContent(*(v0 + 104), type metadata accessor for ScreenContent);
        v23 = *(v88 + 8);
        goto LABEL_8;
      }

      v50 = *(v0 + 72);
      v52 = *(v0 + 48);
      v51 = *(v0 + 56);
      _s26GenerativeAssistantActions15SelectedContentVWObTm_0(*(v0 + 104), *(v0 + 96), type metadata accessor for ScreenContent);
      outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v51, v52, &_s26GenerativeAssistantActions13ScreenContentOSgMd, &_s26GenerativeAssistantActions13ScreenContentOSgMR);
      if (v39(v52, 1, v50) == 1)
      {
        v53 = *(v0 + 40);
        outlined destroy of OnScreenContent.Document?(*(v0 + 48), &_s26GenerativeAssistantActions13ScreenContentOSgMd, &_s26GenerativeAssistantActions13ScreenContentOSgMR);
        v54 = type metadata accessor for ImageInfo(0);
        (*(*(v54 - 8) + 56))(v53, 1, 1, v54);
      }

      else
      {
        v55 = *(v0 + 72);
        outlined init with copy of SelectedContent(*(v0 + 48), *(v0 + 88), type metadata accessor for ScreenContent);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v57 = *(v0 + 88);
        v58 = *(v0 + 40);
        if (EnumCaseMultiPayload == 1)
        {
          v59 = type metadata accessor for ImageInfo(0);
          (*(*(v59 - 8) + 56))(v58, 1, 1, v59);
          outlined destroy of SelectedContent(v57, type metadata accessor for ScreenContent);
        }

        else
        {
          _s26GenerativeAssistantActions15SelectedContentVWObTm_0(*(v0 + 88), *(v0 + 40), type metadata accessor for ImageInfo);
          v60 = type metadata accessor for ImageInfo(0);
          (*(*(v60 - 8) + 56))(v58, 0, 1, v60);
        }

        outlined destroy of SelectedContent(*(v0 + 48), type metadata accessor for ScreenContent);
      }

      v61 = *(v0 + 128);
      v62 = *(v0 + 112);
      v63 = *(v0 + 40);
      _s26GenerativeAssistantActions15SelectedContentVWObTm_0(*(v0 + 96), v62, type metadata accessor for ScreenContent);
      outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v63, v62 + *(v61 + 20), &_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR);
      v4 = 0;
      v45 = 0;
    }

    v64 = *(v0 + 200);
    v66 = *(v0 + 168);
    v65 = *(v0 + 176);
    v68 = *(v0 + 128);
    v67 = *(v0 + 136);
    v69 = *(v0 + 112);
    v70 = *(v67 + 56);
    v70(v69, v45, 1, v68);
    (*(v65 + 8))(v64, v66);
    if ((*(v67 + 48))(v69, 1, v68) != 1)
    {
      v85 = *(v0 + 144);
      v86 = *(v0 + 16);
      _s26GenerativeAssistantActions15SelectedContentVWObTm_0(*(v0 + 112), v85, type metadata accessor for SelectedContent);
      _s26GenerativeAssistantActions15SelectedContentVWObTm_0(v85, v86, type metadata accessor for SelectedContent);
      v7 = 0;
      v87 = *(v0 + 136) + 56;
      v6 = v70;
      goto LABEL_5;
    }

    outlined destroy of OnScreenContent.Document?(*(v0 + 112), &_s26GenerativeAssistantActions15SelectedContentVSgMd, &_s26GenerativeAssistantActions15SelectedContentVSgMR);
LABEL_14:
    v5 = *(v0 + 240) + 1;
    if (v5 == *(v0 + 208))
    {
      goto LABEL_4;
    }
  }

  v81 = *__swift_project_boxed_opaque_existential_1((*(v0 + 32) + 88), *(*(v0 + 32) + 112));
  v82 = swift_task_alloc();
  *(v0 + 248) = v82;
  *v82 = v0;
  v82[1] = ContentSelector.select(from:priority:);
  v83 = *(v0 + 200);
  v84 = *(v0 + 160);

  return EntityConverter.convert(content:)(v84, v83, v81);
}

uint64_t ContentSelector.getPriority(content:)()
{
  v0 = type metadata accessor for OnScreenContent.UIMetadata();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OnScreenContent.UIMetadata.Window();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (OnScreenContent.isVisualIntelligenceCameraEntity()())
  {
    if (one-time initialization token for contentSelector != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.contentSelector);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v34 = v14;
      *v13 = 136315394;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x53746E65746E6F43, 0xEF726F7463656C65, &v34);
      *(v13 + 12) = 2080;
      *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x800000024FE35E60, &v34);
      _os_log_impl(&dword_24FD67000, v11, v12, "%s.%s content is a Visual Intelligence entity, returning Priority.highest", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v14, -1, -1);
      MEMORY[0x253057F40](v13, -1, -1);
    }

    return 4;
  }

  OnScreenContent.uiMetadata.getter();
  OnScreenContent.UIMetadata.window.getter();
  (*(v1 + 8))(v4, v0);
  v16 = OnScreenContent.UIMetadata.Window.isActive.getter();
  (*(v6 + 8))(v9, v5);
  if ((v16 & 1) == 0 || OnScreenContent.isScreenshot()())
  {
    return 0;
  }

  if (OnScreenContent.isRelevantEntity()())
  {
    if (one-time initialization token for contentSelector != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.contentSelector);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v34 = v22;
      *v21 = 136315394;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x53746E65746E6F43, 0xEF726F7463656C65, &v34);
      *(v21 + 12) = 2080;
      *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x800000024FE35E60, &v34);
      _os_log_impl(&dword_24FD67000, v19, v20, "%s.%s content is a relevant app entity, returning Priority.high", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v22, -1, -1);
      MEMORY[0x253057F40](v21, -1, -1);
    }

    return 3;
  }

  else if (OnScreenContent.isAppEntity()())
  {
    if (one-time initialization token for contentSelector != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.contentSelector);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v34 = v27;
      *v26 = 136315394;
      *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x53746E65746E6F43, 0xEF726F7463656C65, &v34);
      *(v26 + 12) = 2080;
      *(v26 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x800000024FE35E60, &v34);
      _os_log_impl(&dword_24FD67000, v24, v25, "%s.%s content is an app entity, returning Priority.medium", v26, 0x16u);
      v15 = 2;
      swift_arrayDestroy();
      MEMORY[0x253057F40](v27, -1, -1);
      MEMORY[0x253057F40](v26, -1, -1);
    }

    else
    {

      return 2;
    }
  }

  else
  {
    if (OnScreenContent.isWindowContentGeneratedPDF()())
    {
      return 0;
    }

    if (one-time initialization token for contentSelector != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.contentSelector);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v34 = v32;
      *v31 = 136315394;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x53746E65746E6F43, 0xEF726F7463656C65, &v34);
      *(v31 + 12) = 2080;
      *(v31 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x800000024FE35E60, &v34);
      _os_log_impl(&dword_24FD67000, v29, v30, "%s.%s content is a regular document, returning Priority.normal", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v32, -1, -1);
      MEMORY[0x253057F40](v31, -1, -1);
    }

    return 1;
  }

  return v15;
}

uint64_t ContentSelector.getSelectedContent(content:contents:isAppEntity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v55 = a2;
  v57 = a3;
  v56 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v54 = &v50 - v7;
  v8 = type metadata accessor for OnScreenContent();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions13ScreenContentOSgMd, &_s26GenerativeAssistantActions13ScreenContentOSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v53 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v50 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v50 - v20;
  v22 = type metadata accessor for ScreenContent(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v51 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v52 = &v50 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v50 - v29;
  (*(v9 + 16))(v12, a1, v8);
  ScreenContent.init(_:isAppEntity:)(v12, v57, v21);
  v31 = *(v23 + 48);
  if (v31(v21, 1, v22) == 1)
  {
    outlined destroy of OnScreenContent.Document?(v21, &_s26GenerativeAssistantActions13ScreenContentOSgMd, &_s26GenerativeAssistantActions13ScreenContentOSgMR);
    if (one-time initialization token for contentSelector != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.contentSelector);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v59 = v36;
      *v35 = 136315394;
      *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x53746E65746E6F43, 0xEF726F7463656C65, &v59);
      *(v35 + 12) = 2080;
      *(v35 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000031, 0x800000024FE35DF0, &v59);
      _os_log_impl(&dword_24FD67000, v33, v34, "%s.%s ContextRetrievalScreenContent cannot be converted into ScreenContent, returning nil", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v36, -1, -1);
      MEMORY[0x253057F40](v35, -1, -1);
    }

    v37 = type metadata accessor for SelectedContent();
    return (*(*(v37 - 8) + 56))(v56, 1, 1, v37);
  }

  else
  {
    _s26GenerativeAssistantActions15SelectedContentVWObTm_0(v21, v30, type metadata accessor for ScreenContent);
    v39 = v58;
    ContentSelector.getAssociatedScreenshot(for:in:)(a1, v55, v19);
    if (v39)
    {
      return outlined destroy of SelectedContent(v30, type metadata accessor for ScreenContent);
    }

    else
    {
      v40 = v52;
      _s26GenerativeAssistantActions15SelectedContentVWObTm_0(v30, v52, type metadata accessor for ScreenContent);
      v41 = v53;
      outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v19, v53, &_s26GenerativeAssistantActions13ScreenContentOSgMd, &_s26GenerativeAssistantActions13ScreenContentOSgMR);
      if (v31(v41, 1, v22) == 1)
      {
        outlined destroy of OnScreenContent.Document?(v41, &_s26GenerativeAssistantActions13ScreenContentOSgMd, &_s26GenerativeAssistantActions13ScreenContentOSgMR);
        v42 = type metadata accessor for ImageInfo(0);
        v43 = v54;
        (*(*(v42 - 8) + 56))(v54, 1, 1, v42);
      }

      else
      {
        v44 = v51;
        outlined init with copy of SelectedContent(v41, v51, type metadata accessor for ScreenContent);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v43 = v54;
        if (EnumCaseMultiPayload == 1)
        {
          v46 = type metadata accessor for ImageInfo(0);
          (*(*(v46 - 8) + 56))(v43, 1, 1, v46);
          outlined destroy of SelectedContent(v44, type metadata accessor for ScreenContent);
        }

        else
        {
          _s26GenerativeAssistantActions15SelectedContentVWObTm_0(v44, v54, type metadata accessor for ImageInfo);
          v47 = type metadata accessor for ImageInfo(0);
          (*(*(v47 - 8) + 56))(v43, 0, 1, v47);
        }

        outlined destroy of SelectedContent(v41, type metadata accessor for ScreenContent);
      }

      v48 = v56;
      _s26GenerativeAssistantActions15SelectedContentVWObTm_0(v40, v56, type metadata accessor for ScreenContent);
      v49 = type metadata accessor for SelectedContent();
      outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v43, v48 + *(v49 + 20), &_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR);
      return (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
    }
  }
}

uint64_t ContentSelector.getAssociatedScreenshot(for:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v171 = a3;
  v175 = type metadata accessor for IntelligenceProcessInfo();
  v188 = *(v175 - 8);
  v6 = *(v188 + 64);
  MEMORY[0x28223BE20](v175);
  v163 = &v154 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21UIIntelligenceSupport23IntelligenceProcessInfoVSg_ADtMd, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSg_ADtMR);
  v8 = *(*(v174 - 8) + 64);
  MEMORY[0x28223BE20](v174);
  v173 = &v154 - v9;
  v182 = type metadata accessor for OnScreenContent.UIMetadata();
  v180 = *(v182 - 8);
  v10 = *(v180 + 64);
  MEMORY[0x28223BE20](v182);
  v181 = &v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = type metadata accessor for OnScreenContent.UIMetadata.Window();
  v179 = *(v183 - 8);
  v12 = *(v179 + 64);
  v13 = MEMORY[0x28223BE20](v183);
  v15 = &v154 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v162 = &v154 - v17;
  MEMORY[0x28223BE20](v16);
  v178 = &v154 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v167 = &v154 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v185 = &v154 - v24;
  MEMORY[0x28223BE20](v23);
  v190 = &v154 - v25;
  v192 = type metadata accessor for OnScreenContent.Content();
  v26 = *(v192 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v192);
  v191 = &v154 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMR);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = &v154 - v31;
  v33 = type metadata accessor for OnScreenContent();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v160 = &v154 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v154 - v39;
  MEMORY[0x28223BE20](v38);
  v194 = &v154 - v41;
  v184 = a1;
  if (OnScreenContent.isScreenshot()() && (specialized ManagedConfigurationProvider.isAllowScreenshotEnabledInProfile.getter() & 1) == 0)
  {
    if (one-time initialization token for contentSelector != -1)
    {
      swift_once();
    }

    v138 = type metadata accessor for Logger();
    __swift_project_value_buffer(v138, static Logger.contentSelector);
    v139 = Logger.logObject.getter();
    v140 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v205 = v142;
      *v141 = 136315394;
      *(v141 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x53746E65746E6F43, 0xEF726F7463656C65, &v205);
      *(v141 + 12) = 2080;
      *(v141 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x800000024FE35E30, &v205);
      _os_log_impl(&dword_24FD67000, v139, v140, "%s.%s content is a screenshot and screenshots are prohibited, throwing an error", v141, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v142, -1, -1);
      MEMORY[0x253057F40](v141, -1, -1);
    }

    lazy protocol witness table accessor for type ContentSelector.Error and conformance ContentSelector.Error();
    swift_allocError();
    *v143 = 1;
    return swift_willThrow();
  }

  else
  {
    if (OnScreenContent.isScreenshot()())
    {
      v42 = type metadata accessor for ScreenContent(0);
      return (*(*(v42 - 8) + 56))(v171, 1, 1, v42);
    }

    if (specialized ManagedConfigurationProvider.isAllowScreenshotEnabledInProfile.getter())
    {
      v156 = v15;
      v154 = v40;
      v157 = v3;
      v44 = *(a2 + 16);
      if (!v44)
      {
LABEL_51:
        v151 = type metadata accessor for ScreenContent(0);
        return (*(*(v151 - 8) + 56))(v171, 1, 1, v151);
      }

      v45 = a2;
      v46 = v34;
      v47 = v33;
      v49 = *(v46 + 16);
      v46 += 16;
      v48 = v49;
      v50 = v45 + ((*(v46 + 64) + 32) & ~*(v46 + 64));
      v187 = (v26 + 88);
      v177 = (v26 + 8);
      v176 = (v26 + 96);
      v186 = *MEMORY[0x277D1D360];
      v170 = (v180 + 8);
      v169 = (v179 + 8);
      v161 = (v188 + 48);
      v155 = (v188 + 32);
      v158 = (v188 + 8);
      v188 = v46 - 8;
      v51 = *(v46 + 56);
      v193 = v47;
      v189 = v46;
      v166 = v49;
      v164 = v32;
      v165 = v51;
      v49(v194, v50, v47);
      while (1)
      {
        v53 = v191;
        OnScreenContent.content.getter();
        v54 = v192;
        v55 = (*v187)(v53, v192);
        if (v55 == v186)
        {
          (*v176)(v53, v54);
          v56 = type metadata accessor for OnScreenContent.Image();
          v57 = v53;
          v58 = v56;
          v59 = *(v56 - 8);
          (*(v59 + 32))(v32, v57, v56);
          (*(v59 + 56))(v32, 0, 1, v58);
        }

        else
        {
          v60 = v48;
          v61 = v53;
          v58 = type metadata accessor for OnScreenContent.Image();
          (*(*(v58 - 8) + 56))(v32, 1, 1, v58);
          v62 = v61;
          v48 = v60;
          (*v177)(v62, v54);
        }

        type metadata accessor for OnScreenContent.Image();
        v63 = *(v58 - 8);
        if ((*(v63 + 48))(v32, 1, v58) == 1)
        {
          outlined destroy of OnScreenContent.Document?(v32, &_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV5ImageVSgMR);
          v52 = v193;
          goto LABEL_9;
        }

        v64 = OnScreenContent.Image.isSnapshot.getter();
        (*(v63 + 8))(v32, v58);
        v52 = v193;
        if (v64)
        {
          v179 = v50;
          v180 = v44;
          v65 = v181;
          OnScreenContent.uiMetadata.getter();
          v66 = v178;
          OnScreenContent.UIMetadata.window.getter();
          v67 = *v170;
          v68 = v182;
          (*v170)(v65, v182);
          OnScreenContent.UIMetadata.Window.appProcess.getter();
          v69 = *v169;
          v70 = v183;
          (*v169)(v66, v183);
          OnScreenContent.uiMetadata.getter();
          OnScreenContent.UIMetadata.window.getter();
          v168 = v67;
          v67(v65, v68);
          OnScreenContent.UIMetadata.Window.appProcess.getter();
          v71 = v70;
          v72 = v190;
          v172 = v69;
          v69(v66, v71);
          v73 = *(v174 + 48);
          v74 = v173;
          outlined init with copy of IntelligenceProcessInfo?(v72, v173);
          outlined init with copy of IntelligenceProcessInfo?(v185, v74 + v73);
          v75 = *v161;
          v76 = v175;
          if ((*v161)(v74, 1, v175) == 1)
          {
            outlined destroy of OnScreenContent.Document?(v185, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
            outlined destroy of OnScreenContent.Document?(v72, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
            v77 = v75(v74 + v73, 1, v76);
            v52 = v193;
            v32 = v164;
            v44 = v180;
            v50 = v179;
            if (v77 != 1)
            {
              goto LABEL_21;
            }

            outlined destroy of OnScreenContent.Document?(v74, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
LABEL_23:
            v81 = v181;
            OnScreenContent.uiMetadata.getter();
            v82 = v178;
            OnScreenContent.UIMetadata.window.getter();
            v83 = v182;
            v84 = v168;
            v168(v81, v182);
            v159 = OnScreenContent.UIMetadata.Window.isActive.getter();
            v85 = v183;
            v172(v82, v183);
            OnScreenContent.uiMetadata.getter();
            OnScreenContent.UIMetadata.window.getter();
            v86 = v81;
            v52 = v193;
            v87 = v83;
            v88 = v166;
            v84(v86, v87);
            v89 = OnScreenContent.UIMetadata.Window.isActive.getter();
            v90 = v82;
            v48 = v88;
            v51 = v165;
            v172(v90, v85);
            v50 = v179;
            v44 = v180;
            if (((v159 ^ v89) & 1) == 0)
            {
              v91 = v181;
              OnScreenContent.uiMetadata.getter();
              v92 = v162;
              OnScreenContent.UIMetadata.window.getter();
              v93 = v182;
              v94 = v168;
              v168(v91, v182);
              v95 = COERCE_DOUBLE(OnScreenContent.UIMetadata.Window.fractionVisible.getter());
              v97 = v96;
              v98 = v172;
              v172(v92, v183);
              v99 = (v97 & 1) != 0 ? 0.0 : v95;
              OnScreenContent.uiMetadata.getter();
              v100 = v156;
              OnScreenContent.UIMetadata.window.getter();
              v94(v91, v93);
              v101 = COERCE_DOUBLE(OnScreenContent.UIMetadata.Window.fractionVisible.getter());
              v103 = v102;
              v98(v100, v183);
              v104 = (v103 & 1) != 0 ? v99 == 0.0 : v99 == v101;
              v48 = v166;
              v52 = v193;
              v32 = v164;
              v44 = v180;
              v51 = v165;
              v50 = v179;
              if (v104)
              {
                v105 = v181;
                OnScreenContent.uiMetadata.getter();
                v106 = v178;
                OnScreenContent.UIMetadata.window.getter();
                v107 = v182;
                v108 = v168;
                v168(v105, v182);
                OnScreenContent.UIMetadata.Window.boundingBox.getter();
                v109 = v195;
                v110 = v196;
                v111 = v197;
                v112 = v198;
                v113 = v183;
                v114 = v172;
                v172(v106, v183);
                OnScreenContent.uiMetadata.getter();
                OnScreenContent.UIMetadata.window.getter();
                v108(v105, v107);
                OnScreenContent.UIMetadata.Window.boundingBox.getter();
                v115 = v200;
                v116 = v201;
                v117 = v202;
                v118 = v203;
                v114(v106, v113);
                if (v199)
                {
                  v48 = v166;
                  v52 = v193;
                  v32 = v164;
                  v44 = v180;
                  v51 = v165;
                  v50 = v179;
                  if (v204)
                  {
                    goto LABEL_37;
                  }
                }

                else
                {
                  v48 = v166;
                  v52 = v193;
                  v32 = v164;
                  v44 = v180;
                  v51 = v165;
                  v50 = v179;
                  if ((v204 & 1) == 0)
                  {
                    v206.origin.x = v109;
                    v206.origin.y = v110;
                    v206.size.width = v111;
                    v206.size.height = v112;
                    v207.origin.x = v115;
                    v207.origin.y = v116;
                    v207.size.width = v117;
                    v207.size.height = v118;
                    if (CGRectEqualToRect(v206, v207))
                    {
LABEL_37:
                      if (one-time initialization token for contentSelector != -1)
                      {
                        swift_once();
                      }

                      v119 = type metadata accessor for Logger();
                      __swift_project_value_buffer(v119, static Logger.contentSelector);
                      v120 = v154;
                      v48(v154, v194, v52);
                      v121 = Logger.logObject.getter();
                      v122 = static os_log_type_t.info.getter();
                      if (os_log_type_enabled(v121, v122))
                      {
                        v123 = swift_slowAlloc();
                        LODWORD(v191) = v122;
                        v124 = v123;
                        v192 = swift_slowAlloc();
                        v205 = v192;
                        *v124 = 136315650;
                        *(v124 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x53746E65746E6F43, 0xEF726F7463656C65, &v205);
                        *(v124 + 12) = 2080;
                        *(v124 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x800000024FE35E30, &v205);
                        *(v124 + 22) = 2080;
                        v125 = v52;
                        v126 = v160;
                        v48(v160, v120, v125);
                        v127 = String.init<A>(describing:)();
                        v129 = v128;
                        v130 = v48;
                        v131 = *v188;
                        v132 = v130;
                        (*v188)(v120, v193);
                        v133 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v127, v129, &v205);
                        v134 = v193;

                        *(v124 + 24) = v133;
                        v135 = v132;
                        _os_log_impl(&dword_24FD67000, v121, v191, "%s.%s found the associated screenshot: %s", v124, 0x20u);
                        v136 = v192;
                        swift_arrayDestroy();
                        MEMORY[0x253057F40](v136, -1, -1);
                        MEMORY[0x253057F40](v124, -1, -1);

                        v137 = v171;
                      }

                      else
                      {

                        v152 = v48;
                        v131 = *v188;
                        v135 = v152;
                        (*v188)(v120, v52);
                        v137 = v171;
                        v134 = v52;
                        v126 = v160;
                      }

                      v153 = v194;
                      v135(v126, v194, v134);
                      ScreenContent.init(_:isAppEntity:)(v126, 0, v137);
                      return (v131)(v153, v134);
                    }
                  }
                }
              }
            }

            goto LABEL_9;
          }

          v78 = v167;
          outlined init with copy of IntelligenceProcessInfo?(v74, v167);
          if (v75(v74 + v73, 1, v76) == 1)
          {
            outlined destroy of OnScreenContent.Document?(v185, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
            outlined destroy of OnScreenContent.Document?(v190, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
            (*v158)(v78, v76);
            v52 = v193;
            v32 = v164;
            v44 = v180;
            v50 = v179;
LABEL_21:
            outlined destroy of OnScreenContent.Document?(v74, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSg_ADtMd, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSg_ADtMR);
            v48 = v166;
            v51 = v165;
            goto LABEL_9;
          }

          v79 = v163;
          (*v155)(v163, v74 + v73, v76);
          lazy protocol witness table accessor for type IntelligenceProcessInfo and conformance IntelligenceProcessInfo();
          v159 = dispatch thunk of static Equatable.== infix(_:_:)();
          v80 = *v158;
          (*v158)(v79, v76);
          outlined destroy of OnScreenContent.Document?(v185, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
          outlined destroy of OnScreenContent.Document?(v190, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
          v80(v78, v76);
          outlined destroy of OnScreenContent.Document?(v74, &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
          v48 = v166;
          v52 = v193;
          v32 = v164;
          v44 = v180;
          v51 = v165;
          v50 = v179;
          if (v159)
          {
            goto LABEL_23;
          }
        }

LABEL_9:
        (*v188)(v194, v52);
        v50 += v51;
        if (!--v44)
        {
          goto LABEL_51;
        }

        v48(v194, v50, v52);
      }
    }

    if (one-time initialization token for contentSelector != -1)
    {
      swift_once();
    }

    v144 = type metadata accessor for Logger();
    __swift_project_value_buffer(v144, static Logger.contentSelector);
    v145 = Logger.logObject.getter();
    v146 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      v205 = v148;
      *v147 = 136315394;
      *(v147 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x53746E65746E6F43, 0xEF726F7463656C65, &v205);
      *(v147 + 12) = 2080;
      *(v147 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x800000024FE35E30, &v205);
      _os_log_impl(&dword_24FD67000, v145, v146, "%s.%s screenshots are prohibited, returning content without a screenshot", v147, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v148, -1, -1);
      MEMORY[0x253057F40](v147, -1, -1);
    }

    v149 = v171;
    v150 = type metadata accessor for ScreenContent(0);
    return (*(*(v150 - 8) + 56))(v149, 1, 1, v150);
  }
}

unint64_t lazy protocol witness table accessor for type ContentSelector.Error and conformance ContentSelector.Error()
{
  result = lazy protocol witness table cache variable for type ContentSelector.Error and conformance ContentSelector.Error;
  if (!lazy protocol witness table cache variable for type ContentSelector.Error and conformance ContentSelector.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentSelector.Error and conformance ContentSelector.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContentSelector.Error and conformance ContentSelector.Error;
  if (!lazy protocol witness table cache variable for type ContentSelector.Error and conformance ContentSelector.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentSelector.Error and conformance ContentSelector.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContentSelector.Error and conformance ContentSelector.Error;
  if (!lazy protocol witness table cache variable for type ContentSelector.Error and conformance ContentSelector.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentSelector.Error and conformance ContentSelector.Error);
  }

  return result;
}

uint64_t outlined destroy of SelectedContent(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of SelectedContent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s26GenerativeAssistantActions15SelectedContentVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of IntelligenceProcessInfo?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type IntelligenceProcessInfo and conformance IntelligenceProcessInfo()
{
  result = lazy protocol witness table cache variable for type IntelligenceProcessInfo and conformance IntelligenceProcessInfo;
  if (!lazy protocol witness table cache variable for type IntelligenceProcessInfo and conformance IntelligenceProcessInfo)
  {
    type metadata accessor for IntelligenceProcessInfo();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntelligenceProcessInfo and conformance IntelligenceProcessInfo);
  }

  return result;
}

uint64_t static DialogEngineClient.instance.getter()
{
  type metadata accessor for DialogEngineClient();

  return swift_initStaticObject();
}

uint64_t key path setter for DialogEngineClient.locale : DialogEngineClient(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t DialogEngineClient.locale.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t DialogEngineClient.locale.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t outlined init with copy of Result<TemplatingResult, Error>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DialogEngineClient.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t DialogEngineClient.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_24FE0E29C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000657079;
  v3 = 0x745F656372756F73;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6D696D5F656C6966;
    }

    else
    {
      v5 = 0x5F65746973626577;
    }

    if (v4 == 2)
    {
      v6 = 0xEE00657079745F65;
    }

    else
    {
      v6 = 0xEB000000006C7275;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6D616E5F656C6966;
    }

    else
    {
      v5 = 0x745F656372756F73;
    }

    if (v4)
    {
      v6 = 0xE900000000000065;
    }

    else
    {
      v6 = 0xEB00000000657079;
    }
  }

  v7 = 0x6D696D5F656C6966;
  v8 = 0xEE00657079745F65;
  if (a2 != 2)
  {
    v7 = 0x5F65746973626577;
    v8 = 0xEB000000006C7275;
  }

  if (a2)
  {
    v3 = 0x6D616E5F656C6966;
    v2 = 0xE900000000000065;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

{
  v2 = 0xE900000000000079;
  v3 = 0x6C6E4F6563696F76;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x4679616C70736964;
    }

    else
    {
      v5 = 0x4F79616C70736964;
    }

    if (v4 == 2)
    {
      v6 = 0xEE0064726177726FLL;
    }

    else
    {
      v6 = 0xEB00000000796C6ELL;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x726F466563696F76;
    }

    else
    {
      v5 = 0x6C6E4F6563696F76;
    }

    if (v4)
    {
      v6 = 0xEC00000064726177;
    }

    else
    {
      v6 = 0xE900000000000079;
    }
  }

  v7 = 0x4679616C70736964;
  v8 = 0xEE0064726177726FLL;
  if (a2 != 2)
  {
    v7 = 0x4F79616C70736964;
    v8 = 0xEB00000000796C6ELL;
  }

  if (a2)
  {
    v3 = 0x726F466563696F76;
    v2 = 0xEC00000064726177;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

{
  v2 = a1;
  if (a1 <= 4u)
  {
    v13 = 0xE700000000000000;
    v14 = 0xE700000000000000;
    v15 = 0x646F50656D6F68;
    v16 = 0xE300000000000000;
    v17 = 6513005;
    if (a1 != 3)
    {
      v17 = 0x73646F50726961;
      v16 = 0xE700000000000000;
    }

    if (a1 != 2)
    {
      v15 = v17;
      v14 = v16;
    }

    v18 = 0x6565724673657965;
    if (a1)
    {
      v13 = 0xE800000000000000;
    }

    else
    {
      v18 = 0x79616C50726163;
    }

    if (a1 <= 1u)
    {
      v11 = v18;
    }

    else
    {
      v11 = v15;
    }

    if (v2 <= 1)
    {
      v12 = v13;
    }

    else
    {
      v12 = v14;
    }
  }

  else
  {
    v3 = 0xE200000000000000;
    v4 = 22100;
    v5 = 0xE600000000000000;
    v6 = 0x6E6F69736976;
    if (a1 != 9)
    {
      v6 = 0x6E776F6E6B6E75;
      v5 = 0xE700000000000000;
    }

    if (a1 != 8)
    {
      v4 = v6;
      v3 = v5;
    }

    v7 = 0xE600000000000000;
    v8 = 0x656E6F685069;
    v9 = 0xE400000000000000;
    v10 = 1684099177;
    if (a1 != 6)
    {
      v10 = 0x6863746177;
      v9 = 0xE500000000000000;
    }

    if (a1 != 5)
    {
      v8 = v10;
      v7 = v9;
    }

    if (a1 <= 7u)
    {
      v11 = v8;
    }

    else
    {
      v11 = v4;
    }

    if (v2 <= 7)
    {
      v12 = v7;
    }

    else
    {
      v12 = v3;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v19 = 0xE800000000000000;
        if (v11 != 0x6565724673657965)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v19 = 0xE700000000000000;
        if (v11 != 0x79616C50726163)
        {
          goto LABEL_62;
        }
      }
    }

    else if (a2 == 2)
    {
      v19 = 0xE700000000000000;
      if (v11 != 0x646F50656D6F68)
      {
        goto LABEL_62;
      }
    }

    else if (a2 == 3)
    {
      v19 = 0xE300000000000000;
      if (v11 != 6513005)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v19 = 0xE700000000000000;
      if (v11 != 0x73646F50726961)
      {
        goto LABEL_62;
      }
    }
  }

  else if (a2 > 7u)
  {
    if (a2 == 8)
    {
      v19 = 0xE200000000000000;
      if (v11 != 22100)
      {
        goto LABEL_62;
      }
    }

    else if (a2 == 9)
    {
      v19 = 0xE600000000000000;
      if (v11 != 0x6E6F69736976)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v19 = 0xE700000000000000;
      if (v11 != 0x6E776F6E6B6E75)
      {
LABEL_62:
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_63;
      }
    }
  }

  else if (a2 == 5)
  {
    v19 = 0xE600000000000000;
    if (v11 != 0x656E6F685069)
    {
      goto LABEL_62;
    }
  }

  else if (a2 == 6)
  {
    v19 = 0xE400000000000000;
    if (v11 != 1684099177)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v19 = 0xE500000000000000;
    if (v11 != 0x6863746177)
    {
      goto LABEL_62;
    }
  }

  if (v12 != v19)
  {
    goto LABEL_62;
  }

  v20 = 1;
LABEL_63:

  return v20 & 1;
}

{
  v2 = 0xEE00416E51656761;
  v3 = 0x6D49656E696C6E49;
  v4 = a1;
  v5 = 0x6973734174786554;
  v6 = 0xED0000746E617473;
  if (a1 != 5)
  {
    v5 = 0x6E65476567616D49;
    v6 = 0xEF6E6F6974617265;
  }

  v7 = 0x656E654774786554;
  v8 = 0xEE006E6F69746172;
  if (a1 != 3)
  {
    v7 = 0x6764656C776F6E4BLL;
    v8 = 0xE900000000000065;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x746E656D75636F44;
  v10 = 0xEB00000000416E51;
  if (a1 != 1)
  {
    v9 = 0x496E6F6973736553;
    v10 = 0xEF416E516567616DLL;
  }

  if (!a1)
  {
    v9 = 0x6D49656E696C6E49;
    v10 = 0xEE00416E51656761;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEB00000000416E51;
        if (v11 != 0x746E656D75636F44)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xEF416E516567616DLL;
        if (v11 != 0x496E6F6973736553)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xED0000746E617473;
        if (v11 != 0x6973734174786554)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xEF6E6F6974617265;
        if (v11 != 0x6E65476567616D49)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v2 = 0xEE006E6F69746172;
      if (v11 != 0x656E654774786554)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v3 = 0x6764656C776F6E4BLL;
    v2 = 0xE900000000000065;
  }

  if (v11 != v3)
  {
LABEL_36:
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_37;
  }

LABEL_33:
  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

BOOL protocol witness for CarSessionProtocol.isConnectedToCarPlay.getter in conformance CARSessionStatus()
{
  v1 = *v0;
  [*v0 waitForSessionInitialization];
  v2 = [v1 currentSession];
  v3 = v2;
  if (v2)
  {
  }

  return v3 != 0;
}

uint64_t static CarUtils.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t CarUtils.isConnectedToCar(requestMetadata:)(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  if ((*(v4 + 8))(v3, v4))
  {
    v5 = 1;
  }

  else
  {
    if (*(a1 + 42) < 2u && *(a1 + 42))
    {
      v5 = 1;
    }

    else
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v5 & 1;
}

uint64_t CarUtils.errorIntentDialogIfUnsupportedInCar(requestMetadata:partnerName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, Swift::String *a4@<X8>)
{
  v74.value._countAndFlagsBits = a2;
  v74.value._object = a3;
  v75 = a4;
  v6 = type metadata accessor for GenerativeRequestMetadata();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v74 - v11;
  v13 = type metadata accessor for GenerativeAssistantUseCase();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v4[5];
  v18 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v19);
  if ((*(v18 + 8))(v19, v18))
  {
    goto LABEL_5;
  }

  if (*(a1 + 42) < 2u && *(a1 + 42))
  {

LABEL_5:
    (*(v14 + 16))(v17, a1 + *(v6 + 32), v13);
    v21 = (*(v14 + 88))(v17, v13);
    if (v21 == *MEMORY[0x277D0D658] || v21 == *MEMORY[0x277D0D640])
    {
      type metadata accessor for GenerativeAssistantSettingsUserDefaults();
      if (static GenerativeAssistantSettingsUserDefaults.isEnabled()())
      {
        if (one-time initialization token for intent != -1)
        {
          swift_once();
        }

        v23 = type metadata accessor for Logger();
        __swift_project_value_buffer(v23, static Logger.intent);
        outlined init with copy of GenerativeRequestMetadata(a1, v12);
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v76 = v27;
          *v26 = 136315138;
          v28 = &v12[*(v6 + 32)];
          v29 = GenerativeAssistantUseCase.rawValue.getter();
          v31 = v30;
          outlined destroy of GenerativeRequestMetadata(v12);
          v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v76);

          *(v26 + 4) = v32;
          _os_log_impl(&dword_24FD67000, v24, v25, "Intent type %s is supported in the car.", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v27);
          MEMORY[0x253057F40](v27, -1, -1);
          MEMORY[0x253057F40](v26, -1, -1);
        }

        else
        {

          outlined destroy of GenerativeRequestMetadata(v12);
        }

        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10AppIntents12IntentDialogVtMd, &_sSS_10AppIntents12IntentDialogVtMR);
        return (*(*(v73 - 8) + 56))(v75, 1, 1, v73);
      }

      else
      {
        if (one-time initialization token for intent != -1)
        {
          swift_once();
        }

        v48 = type metadata accessor for Logger();
        __swift_project_value_buffer(v48, static Logger.intent);
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&dword_24FD67000, v49, v50, "User needs to enable generative assistant tools when not driving.", v51, 2u);
          MEMORY[0x253057F40](v51, -1, -1);
        }

        type metadata accessor for DialogEngineClient();
        swift_initStaticObject();
        LOBYTE(v76) = 42;
        v52 = MEMORY[0x277D84F90];
        v53 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
        countAndFlagsBits = v74.value._countAndFlagsBits;
        object = v74.value._object;
        v56 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v76, v74, v53);

        v57 = v75;
        *v75 = v56;
        v58 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v52);
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10AppIntents12IntentDialogVtMd, &_sSS_10AppIntents12IntentDialogVtMR);
        v60 = *(v59 + 48);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v76 = v58;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(countAndFlagsBits, object, 0xD000000000000013, 0x800000024FE20070, isUniquelyReferenced_nonNull_native);
        v62 = v76;
        LOBYTE(v76) = 42;
        v63 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v62);

        v64.value._countAndFlagsBits = countAndFlagsBits;
        v64.value._object = object;
        DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v76, v64, v63);

        IntentDialog.init(stringLiteral:)();
        return (*(*(v59 - 8) + 56))(v57, 0, 1, v59);
      }
    }

    else
    {
      (*(v14 + 8))(v17, v13);
      if (one-time initialization token for intent != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, static Logger.intent);
      outlined init with copy of GenerativeRequestMetadata(a1, v10);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v76 = v37;
        *v36 = 136315138;
        v38 = &v10[*(v6 + 32)];
        v39 = GenerativeAssistantUseCase.rawValue.getter();
        v41 = v40;
        outlined destroy of GenerativeRequestMetadata(v10);
        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v76);

        *(v36 + 4) = v42;
        _os_log_impl(&dword_24FD67000, v34, v35, "Intent type %s is not enabled for car use", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x253057F40](v37, -1, -1);
        MEMORY[0x253057F40](v36, -1, -1);
      }

      else
      {

        outlined destroy of GenerativeRequestMetadata(v10);
      }

      type metadata accessor for DialogEngineClient();
      swift_initStaticObject();
      LOBYTE(v76) = 41;
      v65 = MEMORY[0x277D84F90];
      v66 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
      v67 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v76, 0, v66);

      v68 = v75;
      *v75 = v67;
      v69 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v65);
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10AppIntents12IntentDialogVtMd, &_sSS_10AppIntents12IntentDialogVtMR);
      v71 = *(v70 + 48);
      LOBYTE(v76) = 41;
      v72 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v69);

      DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v76, 0, v72);

      IntentDialog.init(stringLiteral:)();
      return (*(*(v70 - 8) + 56))(v68, 0, 1, v70);
    }
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
    goto LABEL_5;
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10AppIntents12IntentDialogVtMd, &_sSS_10AppIntents12IntentDialogVtMR);
  v44 = *(*(v43 - 8) + 56);
  v45 = v43;
  v46 = v75;

  return v44(v46, 1, 1, v45);
}

uint64_t outlined init with copy of GenerativeRequestMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeRequestMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of GenerativeRequestMetadata(uint64_t a1)
{
  v2 = type metadata accessor for GenerativeRequestMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CarUtils.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t type metadata accessor for CARSessionStatus()
{
  result = lazy cache variable for type metadata for CARSessionStatus;
  if (!lazy cache variable for type metadata for CARSessionStatus)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CARSessionStatus);
  }

  return result;
}

uint64_t GenerativeAssistantUseCase.promptSanitizer.getter()
{
  v18 = type metadata accessor for StringRenderedPromptSanitizer.PrewarmMetadata();
  v0 = *(v18 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v18);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StringRenderedPromptSanitizer.DefaultableGuardrails();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StringRenderedPromptSanitizer.DefaultableOverrides();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  GenerativeAssistantUseCase.inputOverrides()(v13);
  (*(v10 + 104))(v13, *MEMORY[0x277D0E5C0], v9);
  v14 = type metadata accessor for StringRenderedPromptSanitizer.Guardrails();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  (*(v5 + 104))(v8, *MEMORY[0x277D0E5C8], v4);
  StringRenderedPromptSanitizer.init(overrides:guardrails:)();
  GenerativeAssistantUseCase.useCaseIdentifier.getter();
  v15 = [objc_opt_self() processInfo];
  [v15 processIdentifier];

  StringRenderedPromptSanitizer.PrewarmMetadata.init(useCaseIdentifier:onBehalfOfProcessId:)();
  StringRenderedPromptSanitizer.prewarm(metadata:)();
  return (*(v0 + 8))(v3, v18);
}

uint64_t GenerativeAssistantUseCase.responseSanitizer.getter()
{
  v18 = type metadata accessor for StringResponseSanitizer.PrewarmMetadata();
  v0 = *(v18 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v18);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StringResponseSanitizer.DefaultableGuardrails();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StringResponseSanitizer.DefaultableOverrides();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  GenerativeAssistantUseCase.outputOverrides()(v13);
  (*(v10 + 104))(v13, *MEMORY[0x277D0E578], v9);
  v14 = type metadata accessor for StringResponseSanitizer.Guardrails();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  (*(v5 + 104))(v8, *MEMORY[0x277D0E580], v4);
  StringResponseSanitizer.init(overrides:guardrails:)();
  GenerativeAssistantUseCase.useCaseIdentifier.getter();
  v15 = [objc_opt_self() processInfo];
  [v15 processIdentifier];

  StringResponseSanitizer.PrewarmMetadata.init(useCaseIdentifier:onBehalfOfProcessId:)();
  StringResponseSanitizer.prewarm(metadata:)();
  return (*(v0 + 8))(v3, v18);
}

uint64_t GenerativeAssistantUseCase.inputDenyList()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels19InputDenyListBundleVSgMd, _s16GenerativeModels19InputDenyListBundleVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v66 - v5;
  v7 = type metadata accessor for GenerativeAssistantUseCase();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v66 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v66 - v16;
  v18 = *(v8 + 16);
  v18(&v66 - v16, v1, v7);
  v19 = (*(v8 + 88))(v17, v7);
  if (v19 == *MEMORY[0x277D0D638])
  {
    static Catalog.Resource.TokenInputDenyList.GenerativeAssistantCompositionInputDenyList()();
LABEL_9:
    v20 = v72;
    v21 = v73;
    v22 = __swift_project_boxed_opaque_existential_1(v71, v72);
    v23 = *(*(v20 - 8) + 64);
    MEMORY[0x28223BE20](v22);
    v25 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v25);
    MEMORY[0x253055870](v25, v20, v21[2].isa);
    v27 = type metadata accessor for InputDenyListBundle();
    (*(*(v27 - 8) + 56))(a1, 0, 1, v27);
    return __swift_destroy_boxed_opaque_existential_0(v71);
  }

  if (v19 == *MEMORY[0x277D0D650])
  {
    static Catalog.Resource.TokenInputDenyList.GenerativeAssistantMediaQAInputDenyList()();
    goto LABEL_9;
  }

  if (v19 == *MEMORY[0x277D0D658])
  {
    static Catalog.Resource.TokenInputDenyList.GenerativeAssistantKnowledgeInputDenyList()();
    goto LABEL_9;
  }

  if (v19 == *MEMORY[0x277D0D640])
  {
    static Catalog.Resource.TokenInputDenyList.GenerativeAssistantKnowledgeFallbackInputDenyList()();
    goto LABEL_9;
  }

  if (v19 == *MEMORY[0x277D0D648])
  {
    static Catalog.Resource.TokenInputDenyList.GenerativeAssistantVisualIntelligenceCameraInputDenyList()();
    v29 = v72;
    v69 = v73;
    v30 = __swift_project_boxed_opaque_existential_1(v71, v72);
    v70 = &v66;
    v31 = *(*(v29 - 8) + 64);
    MEMORY[0x28223BE20](v30);
    v33 = &v66 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v34 + 16))(v33);
    MEMORY[0x253055870](v33, v29, v69[2].isa);
    v35 = type metadata accessor for InputDenyListBundle();
    v36 = *(v35 - 8);
    isa = v36[7].isa;
    v69 = v36 + 7;
    isa(v6, 0, 1, v35);
    __swift_destroy_boxed_opaque_existential_0(v71);
    v37 = v36[6].isa;
    v70 = v35;
    if (v37(v6, 1, v35) == 1)
    {
      if (one-time initialization token for modelInteraction != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Logger.modelInteraction);
      v18(v15, v1, v7);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v71[0] = v67;
        *v41 = 136315650;
        *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x800000024FE35F10, v71);
        *(v41 + 12) = 2080;
        *(v41 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E65447475706E69, 0xEF29287473694C79, v71);
        *(v41 + 22) = 2080;
        v42 = GenerativeAssistantUseCase.rawValue.getter();
        v44 = v43;
        (*(v8 + 8))(v15, v7);
        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, v71);

        *(v41 + 24) = v45;
        _os_log_impl(&dword_24FD67000, v39, v40, "%s.%s Unable to find a valid input deny list for use case: %s, falling back to MediaQA", v41, 0x20u);
        v46 = v67;
        swift_arrayDestroy();
        MEMORY[0x253057F40](v46, -1, -1);
        MEMORY[0x253057F40](v41, -1, -1);
      }

      else
      {

        (*(v8 + 8))(v15, v7);
      }

      static Catalog.Resource.TokenInputDenyList.GenerativeAssistantMediaQAInputDenyList()();
      v59 = v72;
      v60 = v73;
      v61 = __swift_project_boxed_opaque_existential_1(v71, v72);
      v62 = *(*(v59 - 8) + 64);
      MEMORY[0x28223BE20](v61);
      v64 = &v66 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v65 + 16))(v64);
      MEMORY[0x253055870](v64, v59, v60[2].isa);
      outlined destroy of OnScreenContent.Document?(v6, &_s16GenerativeModels19InputDenyListBundleVSgMd, _s16GenerativeModels19InputDenyListBundleVSgMR);
      isa(a1, 0, 1, v70);
      return __swift_destroy_boxed_opaque_existential_0(v71);
    }

    return outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v6, a1, &_s16GenerativeModels19InputDenyListBundleVSgMd, _s16GenerativeModels19InputDenyListBundleVSgMR);
  }

  else
  {
    if (one-time initialization token for modelInteraction != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static Logger.modelInteraction);
    v18(v12, v1, v7);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v71[0] = v70;
      *v50 = 136315650;
      *(v50 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x800000024FE35F10, v71);
      v69 = v48;
      *(v50 + 12) = 2080;
      *(v50 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E65447475706E69, 0xEF29287473694C79, v71);
      *(v50 + 22) = 2080;
      v51 = GenerativeAssistantUseCase.rawValue.getter();
      v53 = v52;
      v54 = *(v8 + 8);
      LODWORD(isa) = v49;
      v54(v12, v7);
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v71);

      *(v50 + 24) = v55;
      v56 = v69;
      _os_log_impl(&dword_24FD67000, v69, isa, "%s.%s Unable to find a valid input deny list for use case: %s", v50, 0x20u);
      v57 = v70;
      swift_arrayDestroy();
      MEMORY[0x253057F40](v57, -1, -1);
      MEMORY[0x253057F40](v50, -1, -1);
    }

    else
    {

      v54 = *(v8 + 8);
      v54(v12, v7);
    }

    v58 = type metadata accessor for InputDenyListBundle();
    (*(*(v58 - 8) + 56))(a1, 1, 1, v58);
    return (v54)(v17, v7);
  }
}

uint64_t GenerativeAssistantUseCase.inputOverrides()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels19InputDenyListBundleVSgMd, _s16GenerativeModels19InputDenyListBundleVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for InputDenyListBundle();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  GenerativeAssistantUseCase.inputDenyList()(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of OnScreenContent.Document?(v5, &_s16GenerativeModels19InputDenyListBundleVSgMd, _s16GenerativeModels19InputDenyListBundleVSgMR);
    v14 = 1;
  }

  else
  {
    (*(v7 + 32))(v13, v5, v6);
    (*(v7 + 16))(v11, v13, v6);
    StringRenderedPromptSanitizer.Overrides.init(denyList:)();
    (*(v7 + 8))(v13, v6);
    v14 = 0;
  }

  v15 = type metadata accessor for StringRenderedPromptSanitizer.Overrides();
  return (*(*(v15 - 8) + 56))(a1, v14, 1, v15);
}

uint64_t GenerativeAssistantUseCase.useCaseIdentifier.getter()
{
  v1 = v0;
  v2 = type metadata accessor for GenerativeAssistantUseCase();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  (*(v3 + 16))(&v17 - v8, v1, v2);
  v10 = (*(v3 + 88))(v9, v2);
  if (v10 == *MEMORY[0x277D0D638] || v10 == *MEMORY[0x277D0D650] || v10 == *MEMORY[0x277D0D658] || v10 == *MEMORY[0x277D0D640] || v10 == *MEMORY[0x277D0D648])
  {
    (*(v3 + 104))(v7, v10, v2);
    v15 = GenerativeAssistantUseCase.rawValue.getter();
    (*(v3 + 8))(v7, v2);
    return v15;
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t GenerativeAssistantUseCase.outputDenyList()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels20OutputDenyListBundleVSgMd, &_s16GenerativeModels20OutputDenyListBundleVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v66 - v5;
  v7 = type metadata accessor for GenerativeAssistantUseCase();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v66 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v66 - v16;
  v18 = *(v8 + 16);
  v18(&v66 - v16, v1, v7);
  v19 = (*(v8 + 88))(v17, v7);
  if (v19 == *MEMORY[0x277D0D638])
  {
    static Catalog.Resource.TokenOutputDenyList.GenerativeAssistantCompositionOutputDenyList()();
LABEL_9:
    v20 = v72;
    v21 = v73;
    v22 = __swift_project_boxed_opaque_existential_1(v71, v72);
    v23 = *(*(v20 - 8) + 64);
    MEMORY[0x28223BE20](v22);
    v25 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v25);
    MEMORY[0x253055890](v25, v20, v21[2].isa);
    v27 = type metadata accessor for OutputDenyListBundle();
    (*(*(v27 - 8) + 56))(a1, 0, 1, v27);
    return __swift_destroy_boxed_opaque_existential_0(v71);
  }

  if (v19 == *MEMORY[0x277D0D650])
  {
    static Catalog.Resource.TokenOutputDenyList.GenerativeAssistantMediaQAOutputDenyList()();
    goto LABEL_9;
  }

  if (v19 == *MEMORY[0x277D0D658])
  {
    static Catalog.Resource.TokenOutputDenyList.GenerativeAssistantKnowledgeOutputDenyList()();
    goto LABEL_9;
  }

  if (v19 == *MEMORY[0x277D0D640])
  {
    static Catalog.Resource.TokenOutputDenyList.GenerativeAssistantKnowledgeFallbackOutputDenyList()();
    goto LABEL_9;
  }

  if (v19 == *MEMORY[0x277D0D648])
  {
    static Catalog.Resource.TokenOutputDenyList.GenerativeAssistantVisualIntelligenceCameraOutputDenyList()();
    v29 = v72;
    v69 = v73;
    v30 = __swift_project_boxed_opaque_existential_1(v71, v72);
    v70 = &v66;
    v31 = *(*(v29 - 8) + 64);
    MEMORY[0x28223BE20](v30);
    v33 = &v66 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v34 + 16))(v33);
    MEMORY[0x253055890](v33, v29, v69[2].isa);
    v35 = type metadata accessor for OutputDenyListBundle();
    v36 = *(v35 - 8);
    isa = v36[7].isa;
    v69 = v36 + 7;
    isa(v6, 0, 1, v35);
    __swift_destroy_boxed_opaque_existential_0(v71);
    v37 = v36[6].isa;
    v70 = v35;
    if (v37(v6, 1, v35) == 1)
    {
      if (one-time initialization token for modelInteraction != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Logger.modelInteraction);
      v18(v15, v1, v7);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v71[0] = v67;
        *v41 = 136315650;
        *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x800000024FE35F10, v71);
        *(v41 + 12) = 2080;
        *(v41 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE35F30, v71);
        *(v41 + 22) = 2080;
        v42 = GenerativeAssistantUseCase.rawValue.getter();
        v44 = v43;
        (*(v8 + 8))(v15, v7);
        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, v71);

        *(v41 + 24) = v45;
        _os_log_impl(&dword_24FD67000, v39, v40, "%s.%s Unable to find a valid output deny list for use case: %s, falling back to MediaQA", v41, 0x20u);
        v46 = v67;
        swift_arrayDestroy();
        MEMORY[0x253057F40](v46, -1, -1);
        MEMORY[0x253057F40](v41, -1, -1);
      }

      else
      {

        (*(v8 + 8))(v15, v7);
      }

      static Catalog.Resource.TokenOutputDenyList.GenerativeAssistantMediaQAOutputDenyList()();
      v59 = v72;
      v60 = v73;
      v61 = __swift_project_boxed_opaque_existential_1(v71, v72);
      v62 = *(*(v59 - 8) + 64);
      MEMORY[0x28223BE20](v61);
      v64 = &v66 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v65 + 16))(v64);
      MEMORY[0x253055890](v64, v59, v60[2].isa);
      outlined destroy of OnScreenContent.Document?(v6, &_s16GenerativeModels20OutputDenyListBundleVSgMd, &_s16GenerativeModels20OutputDenyListBundleVSgMR);
      isa(a1, 0, 1, v70);
      return __swift_destroy_boxed_opaque_existential_0(v71);
    }

    return outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v6, a1, &_s16GenerativeModels20OutputDenyListBundleVSgMd, &_s16GenerativeModels20OutputDenyListBundleVSgMR);
  }

  else
  {
    if (one-time initialization token for modelInteraction != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static Logger.modelInteraction);
    v18(v12, v1, v7);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v71[0] = v70;
      *v50 = 136315650;
      *(v50 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x800000024FE35F10, v71);
      v69 = v48;
      *(v50 + 12) = 2080;
      *(v50 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000024FE35F30, v71);
      *(v50 + 22) = 2080;
      v51 = GenerativeAssistantUseCase.rawValue.getter();
      v53 = v52;
      v54 = *(v8 + 8);
      LODWORD(isa) = v49;
      v54(v12, v7);
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v71);

      *(v50 + 24) = v55;
      v56 = v69;
      _os_log_impl(&dword_24FD67000, v69, isa, "%s.%s Unable to find a valid output deny list for use case: %s", v50, 0x20u);
      v57 = v70;
      swift_arrayDestroy();
      MEMORY[0x253057F40](v57, -1, -1);
      MEMORY[0x253057F40](v50, -1, -1);
    }

    else
    {

      v54 = *(v8 + 8);
      v54(v12, v7);
    }

    v58 = type metadata accessor for OutputDenyListBundle();
    (*(*(v58 - 8) + 56))(a1, 1, 1, v58);
    return (v54)(v17, v7);
  }
}

uint64_t GenerativeAssistantUseCase.outputOverrides()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels20OutputDenyListBundleVSgMd, &_s16GenerativeModels20OutputDenyListBundleVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for OutputDenyListBundle();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  GenerativeAssistantUseCase.outputDenyList()(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of OnScreenContent.Document?(v5, &_s16GenerativeModels20OutputDenyListBundleVSgMd, &_s16GenerativeModels20OutputDenyListBundleVSgMR);
    v14 = 1;
  }

  else
  {
    (*(v7 + 32))(v13, v5, v6);
    (*(v7 + 16))(v11, v13, v6);
    StringResponseSanitizer.Overrides.init(denyList:)();
    (*(v7 + 8))(v13, v6);
    v14 = 0;
  }

  v15 = type metadata accessor for StringResponseSanitizer.Overrides();
  return (*(*(v15 - 8) + 56))(a1, v14, 1, v15);
}

uint64_t sub_24FE11A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for UploadableMedia.Source(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24FE11B4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UploadableMedia.Source(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata completion function for UploadableDocumentData()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UploadableMedia.Source(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for UploadableMedia(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata accessor for (fileName: String, mimeType: String?)()
{
  if (!lazy cache variable for type metadata for (fileName: String, mimeType: String?))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (fileName: String, mimeType: String?));
    }
  }
}

void type metadata accessor for (url: URL?)()
{
  if (!lazy cache variable for type metadata for (url: URL?))
  {
    type metadata accessor for URL?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260]);
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (url: URL?));
    }
  }
}

uint64_t sub_24FE11E70(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UploadableMedia.Source(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_24FE11F30(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UploadableMedia.Source(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for UploadableImageData()
{
  type metadata accessor for IntelligenceFile();
  if (v0 <= 0x3F)
  {
    type metadata accessor for URL?(319, &lazy cache variable for type metadata for CGSize?, type metadata accessor for CGSize);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Float?();
      if (v2 <= 0x3F)
      {
        type metadata accessor for UploadableMedia.Source(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for URL?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for Float?()
{
  if (!lazy cache variable for type metadata for Float?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Float?);
    }
  }
}

void type metadata completion function for ScreenContent()
{
  type metadata accessor for (info: ImageInfo)(319, &lazy cache variable for type metadata for (info: ImageInfo), type metadata accessor for ImageInfo);
  if (v0 <= 0x3F)
  {
    type metadata accessor for (info: ImageInfo)(319, &lazy cache variable for type metadata for (info: DocumentInfo), type metadata accessor for DocumentInfo);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (info: ImageInfo)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24FE122BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_24FE1238C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for ImageInfo()
{
  type metadata accessor for IntelligenceFile();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UIImage(319, &lazy cache variable for type metadata for UIImage, 0x277D755B8);
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?();
      if (v2 <= 0x3F)
      {
        type metadata accessor for OnScreenContent.UIMetadata?(319, &lazy cache variable for type metadata for OnScreenContent.UIMetadata?, MEMORY[0x277D1D388]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24FE12538(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[8];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24FE126D8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}

void type metadata completion function for DocumentInfo()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    type metadata accessor for IntelligenceFile();
    if (v1 <= 0x3F)
    {
      type metadata accessor for OnScreenContent.UIMetadata?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for OnScreenContent.UIMetadata?(319, &lazy cache variable for type metadata for OnScreenContent.UIMetadata?, MEMORY[0x277D1D388]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for OnScreenContent.UIMetadata?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t ScreenContent.init(_:isAppEntity:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v223 = a2;
  v248 = a3;
  v221 = type metadata accessor for DocumentInfo(0);
  v4 = *(*(v221 - 8) + 64);
  MEMORY[0x28223BE20](v221);
  v220 = &v204 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = type metadata accessor for CharacterSet();
  v217 = *(v218 - 8);
  v6 = *(v217 + 64);
  MEMORY[0x28223BE20](v218);
  v216 = &v204 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = type metadata accessor for IntelligenceFile.Attributes();
  v232 = *(v233 - 8);
  v8 = *(v232 + 8);
  v9 = MEMORY[0x28223BE20](v233);
  v219 = &v204 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v225 = &v204 - v12;
  MEMORY[0x28223BE20](v11);
  v230 = &v204 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v231 = &v204 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v236 = &v204 - v19;
  v20 = type metadata accessor for URL();
  v242 = *(v20 - 8);
  v243 = v20;
  v21 = *(v242 + 64);
  MEMORY[0x28223BE20](v20);
  v237 = &v204 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for OnScreenContent.Document();
  v244 = *(v23 - 8);
  v24 = *(v244 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v204 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for OnScreenContent.UIMetadata.Window();
  v206 = *(v207 - 8);
  v27 = *(v206 + 64);
  MEMORY[0x28223BE20](v207);
  v205 = &v204 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd, _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v208 = &v204 - v31;
  v226 = type metadata accessor for IntelligenceProcessInfo();
  v227 = *(v226 - 8);
  v32 = *(v227 + 64);
  v33 = MEMORY[0x28223BE20](v226);
  v229 = &v204 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v210 = &v204 - v36;
  MEMORY[0x28223BE20](v35);
  v224 = &v204 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38 - 8);
  v209 = &v204 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v213 = &v204 - v43;
  MEMORY[0x28223BE20](v42);
  v215 = &v204 - v44;
  v212 = type metadata accessor for ImageInfo(0);
  v45 = *(*(v212 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v212);
  v214 = (&v204 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v46);
  v211 = &v204 - v48;
  v49 = type metadata accessor for IntelligenceImage.Representation();
  v228 = *(v49 - 8);
  v50 = *(v228 + 64);
  MEMORY[0x28223BE20](v49);
  v52 = &v204 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21UIIntelligenceSupport17IntelligenceImageVSgMd, &_s21UIIntelligenceSupport17IntelligenceImageVSgMR);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v56 = &v204 - v55;
  v57 = type metadata accessor for IntelligenceImage();
  v238 = *(v57 - 8);
  v239 = v57;
  v58 = *(v238 + 64);
  MEMORY[0x28223BE20](v57);
  v234 = &v204 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = type metadata accessor for OnScreenContent.Image();
  v241 = *(v235 - 8);
  v60 = *(v241 + 8);
  MEMORY[0x28223BE20](v235);
  v240 = &v204 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for OnScreenContent.Content();
  v63 = *(v62 - 8);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v62);
  v66 = &v204 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for OnScreenContent.UIMetadata();
  v68 = *(v67 - 8);
  v249 = v67;
  v250 = v68;
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v67);
  v71 = &v204 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for ScreenContent(0);
  v246 = *(v72 - 8);
  v247 = v72;
  v73 = *(v246 + 64);
  MEMORY[0x28223BE20](v72);
  v222 = &v204 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = v71;
  OnScreenContent.uiMetadata.getter();
  v245 = a1;
  OnScreenContent.content.getter();
  v75 = (*(v63 + 88))(v66, v62);
  if (v75 == *MEMORY[0x277D1D368])
  {
    (*(v63 + 96))(v66, v62);
    v76 = v244;
    (*(v244 + 32))(v26, v66, v23);
    v77 = OnScreenContent.Document.file.getter();
    v78 = v23;
    v79 = v76;
    if (!v77)
    {
      v95 = type metadata accessor for OnScreenContent();
      (*(*(v95 - 8) + 8))(v245, v95);
      (*(v76 + 8))(v26, v78);
LABEL_10:
      (*(v250 + 8))(v251, v249);
      return (*(v246 + 56))(v248, 1, 1, v247);
    }

    v80 = v77;
    v81 = v236;
    IntelligenceFile.fileURL.getter();
    v83 = v242;
    v82 = v243;
    if ((*(v242 + 48))(v81, 1, v243) == 1)
    {

      v84 = type metadata accessor for OnScreenContent();
      (*(*(v84 - 8) + 8))(v245, v84);
      (*(v79 + 8))(v26, v78);
      (*(v250 + 8))(v251, v249);
      v85 = &_s10Foundation3URLVSgMd;
      v86 = &_s10Foundation3URLVSgMR;
      v87 = v81;
LABEL_13:
      outlined destroy of OnScreenContent.Document?(v87, v85, v86);
      return (*(v246 + 56))(v248, 1, 1, v247);
    }

    v240 = v78;
    v241 = v26;
    (*(v83 + 32))(v237, v81, v82);
    v96 = v230;
    IntelligenceFile.attributes.getter();
    v97 = v231;
    IntelligenceFile.Attributes.contentType.getter();
    v98 = v83;
    v99 = *(v232 + 1);
    v100 = v82;
    v101 = v233;
    v99(v96, v233);
    v102 = type metadata accessor for UTType();
    v103 = *(v102 - 8);
    if ((*(v103 + 48))(v97, 1, v102) == 1)
    {

      v104 = type metadata accessor for OnScreenContent();
      (*(*(v104 - 8) + 8))(v245, v104);
      (*(v98 + 8))(v237, v100);
      (*(v79 + 8))(v241, v240);
      (*(v250 + 8))(v251, v249);
      v85 = &_s22UniformTypeIdentifiers6UTTypeVSgMd;
      v86 = &_s22UniformTypeIdentifiers6UTTypeVSgMR;
      v87 = v97;
      goto LABEL_13;
    }

    v238 = UTType.identifier.getter();
    v239 = v116;
    (*(v103 + 8))(v97, v102);
    v117 = v225;
    IntelligenceFile.attributes.getter();
    v118 = IntelligenceFile.Attributes.fileSize.getter();
    v120 = v119;
    v99(v117, v101);
    if (v120)
    {

      v121 = type metadata accessor for OnScreenContent();
      (*(*(v121 - 8) + 8))(v245, v121);
      (*(v242 + 8))(v237, v243);
      (*(v79 + 8))(v241, v240);
      goto LABEL_10;
    }

    v236 = v99;
    v123 = vcvts_n_f32_s64(v118, 0x14uLL);
    v252 = IntelligenceFile.name.getter();
    v253 = v124;
    v125 = v216;
    static CharacterSet.whitespaces.getter();
    lazy protocol witness table accessor for type String and conformance String();
    v126 = StringProtocol.trimmingCharacters(in:)();
    v128 = v127;
    (*(v217 + 8))(v125, v218);

    v129 = HIBYTE(v128) & 0xF;
    if ((v128 & 0x2000000000000000) == 0)
    {
      v129 = v126 & 0xFFFFFFFFFFFFLL;
    }

    v130 = v237;
    if (v129)
    {
      v131 = IntelligenceFile.name.getter();
    }

    else
    {
      v131 = static IntelligenceLocalizedStrings.document.getter();
    }

    v235 = v131;
    v234 = v132;
    v143 = v242;
    v144 = v243;
    v145 = v220;
    (*(v242 + 16))(v220, v130, v243);
    v146 = v219;
    IntelligenceFile.attributes.getter();
    v147 = v221;
    v148 = v145 + *(v221 + 32);
    IntelligenceFile.Attributes.creationDate.getter();
    v149 = type metadata accessor for OnScreenContent();
    (*(*(v149 - 8) + 8))(v245, v149);
    (v236)(v146, v233);
    (*(v143 + 8))(v130, v144);
    (*(v244 + 8))(v241, v240);
    v150 = v147[10];
    v151 = v250;
    v152 = v249;
    (*(v250 + 32))(v145 + v150, v251, v249);
    (*(v151 + 56))(v145 + v150, 0, 1, v152);
    *(v145 + v147[5]) = v80;
    v153 = (v145 + v147[6]);
    v154 = v234;
    *v153 = v235;
    v153[1] = v154;
    v155 = (v145 + v147[7]);
    v156 = v239;
    *v155 = v238;
    v155[1] = v156;
    *(v145 + v147[9]) = v123;
    *(v145 + v147[11]) = v223 & 1;
    v157 = v222;
    outlined init with take of DocumentInfo(v145, v222, type metadata accessor for DocumentInfo);
    v158 = v247;
LABEL_65:
    swift_storeEnumTagMultiPayload();
    v203 = v248;
    outlined init with take of DocumentInfo(v157, v248, type metadata accessor for ScreenContent);
    return (*(v246 + 56))(v203, 0, 1, v158);
  }

  if (v75 != *MEMORY[0x277D1D360])
  {
    v94 = type metadata accessor for OnScreenContent();
    (*(*(v94 - 8) + 8))(v245, v94);
    (*(v250 + 8))(v251, v249);
    (*(v63 + 8))(v66, v62);
    return (*(v246 + 56))(v248, 1, 1, v247);
  }

  (*(v63 + 96))(v66, v62);
  v88 = v240;
  v89 = v241;
  v90 = v235;
  (*(v241 + 4))(v240, v66, v235);
  OnScreenContent.Image.image.getter();
  v91 = v238;
  v92 = v239;
  if ((*(v238 + 48))(v56, 1, v239) == 1)
  {
    v93 = type metadata accessor for OnScreenContent();
    (*(*(v93 - 8) + 8))(v245, v93);
    (*(v89 + 1))(v88, v90);
    (*(v250 + 8))(v251, v249);
    v85 = &_s21UIIntelligenceSupport17IntelligenceImageVSgMd;
    v86 = &_s21UIIntelligenceSupport17IntelligenceImageVSgMR;
    v87 = v56;
    goto LABEL_13;
  }

  v106 = v234;
  (*(v91 + 32))(v234, v56, v92);
  static ContentLoader.fullRepresentation.getter();
  v107 = IntelligenceImage.image(for:)();
  v108 = *(v228 + 8);
  v108(v52, v49);
  if (!v107)
  {
    v122 = type metadata accessor for OnScreenContent();
    (*(*(v122 - 8) + 8))(v245, v122);
    (*(v91 + 8))(v106, v92);
    (*(v241 + 1))(v88, v90);
    goto LABEL_10;
  }

  static ContentLoader.thumbnailRepresentation.getter();
  v109 = IntelligenceImage.image(for:)();
  v108(v52, v49);
  v110 = v249;
  v111 = v250;
  v112 = v241;
  if (!v109)
  {
LABEL_19:

    v115 = type metadata accessor for OnScreenContent();
    (*(*(v115 - 8) + 8))(v245, v115);
    (*(v238 + 8))(v234, v239);
    (*(v112 + 1))(v240, v90);
    (*(v111 + 8))(v251, v110);
    return (*(v246 + 56))(v248, 1, 1, v247);
  }

  v113 = IntelligenceFile.getImage()();
  if (v114)
  {

    goto LABEL_19;
  }

  v133 = v113;

  if (!v133)
  {
    goto LABEL_19;
  }

  v134 = OnScreenContent.Image.isSnapshot.getter();
  v135 = v215;
  (*(v111 + 16))(v215, v251, v110);
  (*(v111 + 56))(v135, 0, 1, v110);
  v136 = v214;
  *v214 = v107;
  v136[1] = v133;
  *(v136 + 16) = v134 & 1;
  v137 = v212;
  outlined init with copy of Date?(v135, v136 + *(v212 + 32), &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
  *(v136 + *(v137 + 36)) = v223 & 1;
  v138 = v213;
  outlined init with copy of Date?(v135, v213, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
  v139 = *(v111 + 48);
  if (v139(v138, 1, v110) == 1)
  {
    outlined destroy of OnScreenContent.Document?(v138, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
    v140 = MEMORY[0x277D84F90];
    v141 = v226;
    v142 = v227;
    goto LABEL_56;
  }

  v232 = v139;
  v233 = v111 + 48;
  v159 = OnScreenContent.UIMetadata.nestedRemoteProcesses.getter();
  v160 = v110;
  v161 = v159;
  result = (*(v111 + 8))(v138, v160);
  v142 = v227;
  v244 = *(v161 + 16);
  if (!v244)
  {
    v140 = MEMORY[0x277D84F90];
    v141 = v226;
LABEL_55:

    v110 = v249;
    v111 = v250;
    v112 = v241;
    v139 = v232;
LABEL_56:
    v176 = v234;
    if (*(v140 + 16))
    {
      v177 = v210;
      (*(v142 + 16))(v210, v140 + ((*(v142 + 80) + 32) & ~*(v142 + 80)), v141);

      v178 = v141;
      v179 = v110;
      v180 = IntelligenceProcessInfo.bundleIdentifier.getter();
      v182 = v181;
      v183 = type metadata accessor for OnScreenContent();
      (*(*(v183 - 8) + 8))(v245, v183);
      (*(v142 + 8))(v177, v178);
      outlined destroy of OnScreenContent.Document?(v215, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
      (*(v238 + 8))(v176, v239);
      (*(v112 + 1))(v240, v235);
      (*(v111 + 8))(v251, v179);
    }

    else
    {

      v184 = v215;
      v185 = v209;
      outlined init with copy of Date?(v215, v209, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
      if (v139(v185, 1, v110) == 1)
      {
        v186 = type metadata accessor for OnScreenContent();
        (*(*(v186 - 8) + 8))(v245, v186);
        outlined destroy of OnScreenContent.Document?(v184, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
        (*(v238 + 8))(v176, v239);
        (*(v112 + 1))(v240, v235);
        (*(v111 + 8))(v251, v110);
        v187 = v185;
        v188 = &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd;
        v189 = &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR;
      }

      else
      {
        v190 = v205;
        OnScreenContent.UIMetadata.window.getter();
        v191 = *(v111 + 8);
        v191(v185, v110);
        v192 = v110;
        v193 = v208;
        OnScreenContent.UIMetadata.Window.appProcess.getter();
        v194 = v226;
        (*(v206 + 8))(v190, v207);
        if ((*(v142 + 48))(v193, 1, v194) != 1)
        {
          v196 = v193;
          v197 = v142;
          v198 = v194;
          v180 = IntelligenceProcessInfo.bundleIdentifier.getter();
          v182 = v199;
          v200 = type metadata accessor for OnScreenContent();
          (*(*(v200 - 8) + 8))(v245, v200);
          outlined destroy of OnScreenContent.Document?(v215, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
          (*(v238 + 8))(v176, v239);
          (*(v112 + 1))(v240, v235);
          v191(v251, v192);
          (*(v197 + 8))(v196, v198);
          goto LABEL_64;
        }

        v195 = type metadata accessor for OnScreenContent();
        (*(*(v195 - 8) + 8))(v245, v195);
        outlined destroy of OnScreenContent.Document?(v215, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
        (*(v238 + 8))(v176, v239);
        (*(v112 + 1))(v240, v235);
        v191(v251, v192);
        v188 = &_s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMd;
        v189 = _s21UIIntelligenceSupport23IntelligenceProcessInfoVSgMR;
        v187 = v193;
      }

      outlined destroy of OnScreenContent.Document?(v187, v188, v189);
      v180 = 0;
      v182 = 0;
    }

LABEL_64:
    v201 = v214;
    v214[3] = v180;
    *(v201 + 32) = v182;
    v202 = v211;
    outlined init with take of DocumentInfo(v201, v211, type metadata accessor for ImageInfo);
    v157 = v222;
    outlined init with take of DocumentInfo(v202, v222, type metadata accessor for ImageInfo);
    v158 = v247;
    goto LABEL_65;
  }

  v162 = 0;
  v242 = 0x800000024FE20390;
  v243 = v227 + 16;
  v236 = 0x800000024FE20370;
  v231 = 0x800000024FE20340;
  v237 = (v227 + 8);
  v163 = (v227 + 32);
  v140 = MEMORY[0x277D84F90];
  v141 = v226;
  v164 = v224;
  while (v162 < *(v161 + 16))
  {
    v165 = (*(v142 + 80) + 32) & ~*(v142 + 80);
    v166 = *(v142 + 72);
    (*(v142 + 16))(v164, v161 + v165 + v166 * v162, v141);
    v167 = IntelligenceProcessInfo.bundleIdentifier.getter();
    if (v168)
    {
      v169 = v167;
      v170 = v168;
      if (v167 == 0xD000000000000010 && v168 == v242 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v169 == 0xD00000000000001ELL && v170 == v236 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v169 == 0xD000000000000022 && v170 == v231)
      {

LABEL_47:
        v171 = *v163;
        v141 = v226;
        (*v163)(v229, v164, v226);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v252 = v140;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v140 + 16) + 1, 1);
          v141 = v226;
          v140 = v252;
        }

        v174 = *(v140 + 16);
        v173 = *(v140 + 24);
        if (v174 >= v173 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v173 > 1, v174 + 1, 1);
          v141 = v226;
          v140 = v252;
        }

        *(v140 + 16) = v174 + 1;
        result = v171((v140 + v165 + v174 * v166), v229, v141);
        v164 = v224;
        goto LABEL_35;
      }

      v175 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v175)
      {
        goto LABEL_47;
      }

      v141 = v226;
      result = (*v237)(v164, v226);
    }

    else
    {
      result = (*v237)(v164, v141);
    }

LABEL_35:
    ++v162;
    v142 = v227;
    if (v244 == v162)
    {
      goto LABEL_55;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized static ImageInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnScreenContent.UIMetadata();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSg_AFtMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSg_AFtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - v15;
  type metadata accessor for IntelligenceFile();
  if ((MEMORY[0x253055BB0](*a1, *a2) & 1) == 0)
  {
    goto LABEL_4;
  }

  type metadata accessor for UIImage(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  v17 = *(a1 + 8);
  v18 = *(a2 + 8);
  if ((static NSObject.== infix(_:_:)() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_4;
  }

  v21 = *(a1 + 32);
  v22 = *(a2 + 32);
  if (v21)
  {
    if (!v22 || (*(a1 + 24) != *(a2 + 24) || v21 != v22) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else if (v22)
  {
    goto LABEL_4;
  }

  v29 = type metadata accessor for ImageInfo(0);
  v23 = *(v29 + 32);
  v24 = *(v13 + 48);
  outlined init with copy of Date?(a1 + v23, v16, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
  outlined init with copy of Date?(a2 + v23, &v16[v24], &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
  v25 = *(v5 + 48);
  if (v25(v16, 1, v4) == 1)
  {
    if (v25(&v16[v24], 1, v4) == 1)
    {
      outlined destroy of OnScreenContent.Document?(v16, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
LABEL_20:
      v19 = *(a1 + *(v29 + 36)) ^ *(a2 + *(v29 + 36)) ^ 1;
      return v19 & 1;
    }

    goto LABEL_18;
  }

  outlined init with copy of Date?(v16, v12, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
  if (v25(&v16[v24], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_18:
    outlined destroy of OnScreenContent.Document?(v16, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSg_AFtMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSg_AFtMR);
    goto LABEL_4;
  }

  (*(v5 + 32))(v8, &v16[v24], v4);
  lazy protocol witness table accessor for type OnScreenContent.UIMetadata and conformance OnScreenContent.UIMetadata(&lazy protocol witness table cache variable for type OnScreenContent.UIMetadata and conformance OnScreenContent.UIMetadata, MEMORY[0x277D1D388]);
  v26 = dispatch thunk of static Equatable.== infix(_:_:)();
  v27 = *(v5 + 8);
  v27(v8, v4);
  v27(v12, v4);
  outlined destroy of OnScreenContent.Document?(v16, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
  if (v26)
  {
    goto LABEL_20;
  }

LABEL_4:
  v19 = 0;
  return v19 & 1;
}

uint64_t specialized static ScreenContent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v3 = type metadata accessor for DocumentInfo(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  v10 = type metadata accessor for ImageInfo(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - v15;
  v17 = type metadata accessor for ScreenContent(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v36 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions13ScreenContentO_ACtMd, &_s26GenerativeAssistantActions13ScreenContentO_ACtMR);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v36 - v27;
  v29 = *(v26 + 56);
  outlined init with copy of ScreenContent(a1, &v36 - v27);
  outlined init with copy of ScreenContent(v37, &v28[v29]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of ScreenContent(v28, v21);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of DocumentInfo(v21, v9, type metadata accessor for DocumentInfo);
      outlined init with take of DocumentInfo(&v28[v29], v7, type metadata accessor for DocumentInfo);
      v30 = specialized static DocumentInfo.== infix(_:_:)(v9, v7);
      _s26GenerativeAssistantActions12DocumentInfoVWOhTm_0(v7, type metadata accessor for DocumentInfo);
      v31 = v9;
      v32 = type metadata accessor for DocumentInfo;
LABEL_9:
      _s26GenerativeAssistantActions12DocumentInfoVWOhTm_0(v31, v32);
      _s26GenerativeAssistantActions12DocumentInfoVWOhTm_0(v28, type metadata accessor for ScreenContent);
      return v30 & 1;
    }

    v33 = type metadata accessor for DocumentInfo;
    v34 = v21;
  }

  else
  {
    outlined init with copy of ScreenContent(v28, v23);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of DocumentInfo(v23, v16, type metadata accessor for ImageInfo);
      outlined init with take of DocumentInfo(&v28[v29], v14, type metadata accessor for ImageInfo);
      v30 = specialized static ImageInfo.== infix(_:_:)(v16, v14);
      _s26GenerativeAssistantActions12DocumentInfoVWOhTm_0(v14, type metadata accessor for ImageInfo);
      v31 = v16;
      v32 = type metadata accessor for ImageInfo;
      goto LABEL_9;
    }

    v33 = type metadata accessor for ImageInfo;
    v34 = v23;
  }

  _s26GenerativeAssistantActions12DocumentInfoVWOhTm_0(v34, v33);
  outlined destroy of OnScreenContent.Document?(v28, &_s26GenerativeAssistantActions13ScreenContentO_ACtMd, &_s26GenerativeAssistantActions13ScreenContentO_ACtMR);
  v30 = 0;
  return v30 & 1;
}

uint64_t outlined init with copy of ScreenContent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreenContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s26GenerativeAssistantActions12DocumentInfoVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of DocumentInfo(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for UIImage(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t specialized static DocumentInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnScreenContent.UIMetadata();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v60 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v61 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSg_AFtMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSg_AFtMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v62 = &v56 - v13;
  v14 = type metadata accessor for Date();
  v63 = *(v14 - 8);
  v15 = *(v63 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v56 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v56 - v24;
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_21;
  }

  v58 = v5;
  v59 = v4;
  type metadata accessor for IntelligenceFile();
  v26 = type metadata accessor for DocumentInfo(0);
  if ((MEMORY[0x253055BB0](*(a1 + v26[5]), *(a2 + v26[5])) & 1) == 0)
  {
    goto LABEL_21;
  }

  v27 = v26[6];
  v28 = *(a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  if ((v28 != *v30 || v29 != v30[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_21;
  }

  v31 = v26[7];
  v32 = *(a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  if ((v32 != *v34 || v33 != v34[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_21;
  }

  v35 = v26[8];
  v36 = *(v22 + 48);
  outlined init with copy of Date?(a1 + v35, v25, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v57 = v36;
  outlined init with copy of Date?(a2 + v35, &v25[v36], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v37 = *(v63 + 48);
  if (v37(v25, 1, v14) == 1)
  {
    if (v37(&v25[v57], 1, v14) == 1)
    {
      outlined destroy of OnScreenContent.Document?(v25, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_17;
    }

LABEL_14:
    v38 = &_s10Foundation4DateVSg_ADtMd;
    v39 = &_s10Foundation4DateVSg_ADtMR;
    v40 = v25;
    goto LABEL_15;
  }

  outlined init with copy of Date?(v25, v21, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v37(&v25[v57], 1, v14) == 1)
  {
    (*(v63 + 8))(v21, v14);
    goto LABEL_14;
  }

  v42 = v63;
  (*(v63 + 32))(v17, &v25[v57], v14);
  lazy protocol witness table accessor for type OnScreenContent.UIMetadata and conformance OnScreenContent.UIMetadata(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  LODWORD(v57) = dispatch thunk of static Equatable.== infix(_:_:)();
  v43 = *(v42 + 8);
  v43(v17, v14);
  v43(v21, v14);
  outlined destroy of OnScreenContent.Document?(v25, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((v57 & 1) == 0)
  {
LABEL_21:
    v41 = 0;
    return v41 & 1;
  }

LABEL_17:
  if (*(a1 + v26[9]) != *(a2 + v26[9]))
  {
    goto LABEL_21;
  }

  v44 = v26[10];
  v45 = *(v11 + 48);
  v46 = a1 + v44;
  v47 = v62;
  outlined init with copy of Date?(v46, v62, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
  outlined init with copy of Date?(a2 + v44, v47 + v45, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
  v49 = v58;
  v48 = v59;
  v50 = *(v58 + 48);
  if (v50(v47, 1, v59) == 1)
  {
    if (v50(v47 + v45, 1, v48) == 1)
    {
      outlined destroy of OnScreenContent.Document?(v47, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
      v41 = 1;
      return v41 & 1;
    }
  }

  else
  {
    v52 = v61;
    outlined init with copy of Date?(v47, v61, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
    if (v50(v47 + v45, 1, v48) != 1)
    {
      v53 = v47 + v45;
      v54 = v60;
      (*(v49 + 32))(v60, v53, v48);
      lazy protocol witness table accessor for type OnScreenContent.UIMetadata and conformance OnScreenContent.UIMetadata(&lazy protocol witness table cache variable for type OnScreenContent.UIMetadata and conformance OnScreenContent.UIMetadata, MEMORY[0x277D1D388]);
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      v55 = *(v49 + 8);
      v55(v54, v48);
      v55(v52, v48);
      outlined destroy of OnScreenContent.Document?(v47, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
      return v41 & 1;
    }

    (*(v49 + 8))(v52, v48);
  }

  v38 = &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSg_AFtMd;
  v39 = &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSg_AFtMR;
  v40 = v47;
LABEL_15:
  outlined destroy of OnScreenContent.Document?(v40, v38, v39);
  v41 = 0;
  return v41 & 1;
}

uint64_t lazy protocol witness table accessor for type OnScreenContent.UIMetadata and conformance OnScreenContent.UIMetadata(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ContentRequestErrors.logError()()
{
  v1 = *v0;
  v2 = *v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  SELFUtils.recordRequestFailed(code:domain:)(dword_24FE1DBD4[v1], 6);
  lazy protocol witness table accessor for type ContentRequestErrors and conformance ContentRequestErrors();
  result = swift_allocError();
  *v4 = v2;
  return result;
}

uint64_t static ContentRequestErrors.errorDomain.getter()
{
  swift_beginAccess();
  v0 = static ContentRequestErrors.errorDomain;

  return v0;
}

uint64_t static ContentRequestErrors.errorDomain.setter(uint64_t a1, char *a2)
{
  swift_beginAccess();
  static ContentRequestErrors.errorDomain = a1;
  off_27F3A0790 = a2;
}

uint64_t key path setter for static ContentRequestErrors.errorDomain : ContentRequestErrors.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  static ContentRequestErrors.errorDomain = v2;
  off_27F3A0790 = v1;
}

unint64_t ContentRequestErrors.NSLocalizedDescriptionKey.getter()
{
  result = 0xD000000000000014;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
    case 3:
      result = 0xD000000000000019;
      break;
    case 4:
      result = 0xD00000000000001ELL;
      break;
    case 5:
      result = 0xD000000000000047;
      break;
    case 6:
      result = 0xD000000000000026;
      break;
    case 7:
      result = 0xD000000000000028;
      break;
    case 8:
      result = 0xD00000000000001DLL;
      break;
    case 9:
      result = 0xD000000000000027;
      break;
    case 0xA:
      result = 0xD000000000000022;
      break;
    case 0xB:
    case 0xD:
      result = 0xD000000000000035;
      break;
    case 0xC:
      result = 0xD000000000000020;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t ContentRequestErrors.errorUserInfo.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24FE1A560;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x800000024FE1FD40;
  v3 = ContentRequestErrors.NSLocalizedDescriptionKey.getter();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (String, Any)(inited + 32);
  return v5;
}

Swift::Int ContentRequestErrors.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x253057730](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static CustomNSError.errorDomain.getter in conformance ContentRequestErrors()
{
  swift_beginAccess();
  v0 = static ContentRequestErrors.errorDomain;

  return v0;
}

uint64_t protocol witness for Error._domain.getter in conformance ContentRequestErrors(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContentRequestErrors and conformance ContentRequestErrors();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance ContentRequestErrors(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContentRequestErrors and conformance ContentRequestErrors();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_24FE15D40@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_27F3A0790;
  *a1 = static ContentRequestErrors.errorDomain;
  a1[1] = v2;
}

uint64_t getEnumTagSinglePayload for ContentRequestErrors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentRequestErrors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t static SnippetPluginUtils.createConfirmationContainer(payload:)(uint64_t a1)
{
  v2 = type metadata accessor for IntentViewOptions();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = type metadata accessor for AttachmentConfirmationPayload();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GenerativeResultModels();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  GenerativeMediaConfirmationSnippetModel.init(payload:)();
  (*(v10 + 104))(v13, *MEMORY[0x277D0D848], v9);
  lazy protocol witness table accessor for type GenerativeResultModels and conformance GenerativeResultModels();
  SnippetPluginModel.data.getter();
  (*(v10 + 8))(v13, v9);
  static GenerativeResultModels.bundleName.getter();
  IntentViewOptions.init(canReplacePrintableText:)();
  return SnippetPluginContainer.init(data:bundleIdentifier:intentViewOptions:)();
}

unint64_t lazy protocol witness table accessor for type GenerativeResultModels and conformance GenerativeResultModels()
{
  result = lazy protocol witness table cache variable for type GenerativeResultModels and conformance GenerativeResultModels;
  if (!lazy protocol witness table cache variable for type GenerativeResultModels and conformance GenerativeResultModels)
  {
    type metadata accessor for GenerativeResultModels();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenerativeResultModels and conformance GenerativeResultModels);
  }

  return result;
}

uint64_t static ConfirmationButtonActionUtils.getMediaConfirmationButtonActions()(char a1, char a2)
{
  v4 = type metadata accessor for LocalizedStringResource();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v16[-v10];
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  v18 = a1;
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v18, 0, v12);

  LocalizedStringResource.init(stringLiteral:)();
  if (one-time initialization token for userResponseAcceptValues != -1)
  {
    swift_once();
  }

  v17 = a2;
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v17, 0, v13);

  LocalizedStringResource.init(stringLiteral:)();
  if (one-time initialization token for userResponseDeclineValues != -1)
  {
    swift_once();
  }

  static ConfirmationActionName.custom(acceptLabel:acceptAlternatives:denyLabel:denyAlternatives:destructive:)();
  v14 = *(v5 + 8);
  v14(v9, v4);
  return (v14)(v11, v4);
}

uint64_t static ConfirmationButtonActionUtils.getTextConfirmationButtonActions(partnerName:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for LocalizedStringResource();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v17[-v10];
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  v19 = 57;
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v13.value._countAndFlagsBits = a1;
  v13.value._object = a2;
  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v19, v13, v12);

  LocalizedStringResource.init(stringLiteral:)();
  if (one-time initialization token for userResponseAcceptValues != -1)
  {
    swift_once();
  }

  v18 = 58;
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v18, 0, v14);

  LocalizedStringResource.init(stringLiteral:)();
  if (one-time initialization token for userResponseDeclineValues != -1)
  {
    swift_once();
  }

  static ConfirmationActionName.custom(acceptLabel:acceptAlternatives:denyLabel:denyAlternatives:destructive:)();
  v15 = *(v5 + 8);
  v15(v9, v4);
  return (v15)(v11, v4);
}

uint64_t static ConfirmationButtonActionUtils.getSignInRequiredActionConfirmationButtonActions(partnerName:)()
{
  v0 = type metadata accessor for LocalizedStringResource();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v12[-v6];
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  v14 = 55;
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v14, 0, v8);

  LocalizedStringResource.init(stringLiteral:)();
  if (one-time initialization token for userResponseAcceptValues != -1)
  {
    swift_once();
  }

  v13 = 58;
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v13, 0, v9);

  LocalizedStringResource.init(stringLiteral:)();
  if (one-time initialization token for openSettingsDeclineValues != -1)
  {
    swift_once();
  }

  static ConfirmationActionName.custom(acceptLabel:acceptAlternatives:denyLabel:denyAlternatives:destructive:)();
  v10 = *(v1 + 8);
  v10(v5, v0);
  return (v10)(v7, v0);
}

uint64_t AutoBugCaptureHelper.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t Overridable.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 40) == 1)
  {
    v3 = *(v2 + 32);
    return (*(v2 + 24))(*v2);
  }

  else
  {
    v5 = *(*(*(a1 + 16) - 8) + 56);

    return v5(a2, 1, 1);
  }
}

uint64_t type metadata instantiation function for Overridable()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Overridable(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Overridable(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t closure #1 in Overridable<A>.init(key:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  return closure #1 in Overridable<A>.init(key:)(a1, a2, a3, a4);
}

{
  return closure #1 in Overridable<A>.init(key:)(a1, a2, a3, a4);
}

{
  return closure #1 in Overridable<A>.init(key:)(a1, a2, a3, a4);
}

{
  v6 = MEMORY[0x253056EA0](a2, a3);
  v7 = [a1 valueForKey_];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      *a4 = 0;
    }

    v9 = result ^ 1;
  }

  else
  {
    result = outlined destroy of Any?(v12);
    *a4 = 0;
    v9 = 1;
  }

  *(a4 + 8) = v9;
  return result;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in Overridable<A>.init(key:defaultValue:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = MEMORY[0x253056EA0](a2, a3);
  v7 = [a1 valueForKey_];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (!*(&v10 + 1))
  {
    result = outlined destroy of Any?(v11);
    goto LABEL_8;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    *a4 = 0;
    a4[1] = 0;
  }

  return result;
}

uint64_t closure #1 in Overridable<A>.init(key:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = MEMORY[0x253056EA0](a2, a3);
  v7 = [a1 valueForKey_];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (!*(&v10 + 1))
  {
    result = outlined destroy of Any?(v11);
    goto LABEL_8;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    *a4 = 2;
  }

  return result;
}

uint64_t type metadata accessor for SessionConfiguration()
{
  return MEMORY[0x2821D9C40]();
}

{
  return MEMORY[0x2821AB7B8]();
}

Swift::String __swiftcall GenerativeAssistantSettingsProvider.LLMProvider.localizedDisplayName()()
{
  v0 = MEMORY[0x2821658D0]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t GeneratedValues.extract<A>(field:)()
{
  return MEMORY[0x282165F20]();
}

{
  return MEMORY[0x282165F28]();
}

uint64_t Schema.Field.init<A>(name:description:type:)()
{
  return MEMORY[0x282166168]();
}

{
  return MEMORY[0x282166170]();
}

Swift::String __swiftcall GenerativeExperiencesSession.sessionIdentifier()()
{
  v0 = MEMORY[0x2821AB9D8]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x2821FBCC8]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return MEMORY[0x2821FBF68]();
}

{
  return MEMORY[0x2821FBFB0]();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FD988]();
}

{
  return MEMORY[0x2821FD990]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA00]();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FDAC0]();
}

{
  return MEMORY[0x2821FDAC8]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB40]();
}