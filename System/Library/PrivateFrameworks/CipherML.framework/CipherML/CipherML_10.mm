double AllowList.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 40);
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = (*(v5 + 56) + (v6 << 6));
    v9 = *(v8 + 41);
    v10 = v8[2];
    v11 = *v8;
    v15[1] = v8[1];
    v16[0] = v10;
    v15[0] = v11;
    *(v16 + 9) = v9;
    v12 = v8[1];
    *a3 = *v8;
    *(a3 + 16) = v12;
    *(a3 + 32) = v8[2];
    *(a3 + 41) = *(v8 + 41);
    outlined init with copy of UseCase(v15, &v14);
  }

  else
  {
    *(a3 + 48) = 0;
    result = 0.0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    *(a3 + 56) = -1;
  }

  return result;
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    v12 = *(a3(0) - 8);
    ++v9;
    v13 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v11;
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_7(a4, a5);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v10 != v11;
}

uint64_t AllowList.__allocating_init(rlweParams:heSchemes:groups:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  AllowList.init(rlweParams:heSchemes:groups:)(a1, a2, a3);
  return v6;
}

uint64_t AllowList.saveAllowList(path:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = type metadata accessor for PropertyListEncoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  lazy protocol witness table accessor for type AllowListFormat and conformance AllowListFormat();
  v8 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v10 = v9;

  if (!v1)
  {
    Data.write(to:options:)();
    return outlined consume of Data._Representation(v8, v10);
  }

  return result;
}

uint64_t one-time initialization function for empty()
{
  v0 = MEMORY[0x277D84F90];
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16CryptoKitPrivate2HEO13SecurityLevelO_SayAE10RlweParamsOGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML12UseCaseGroupVTt0g5Tf4g_n(v0);
  type metadata accessor for AllowList();
  v3 = swift_allocObject();
  result = AllowList.init(rlweParams:heSchemes:groups:)(v1, v0, v2);
  static AllowList.empty = v3;
  return result;
}

uint64_t static AllowList.empty.getter()
{
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }
}

void *AllowList.keys.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5Tm(*(v1 + 16), 0, &_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v4 = specialized Sequence._copySequenceContents(initializing:)(&v6, v3 + 4, v2, v1);

  outlined consume of [String : [TokenCache.CachedToken]].Iterator._Variant();
  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t AllowList.init(rlweParams:heSchemes:groups:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v121[2] = *v4;
  v130 = type metadata accessor for UseCaseGroup();
  v126 = *(v130 - 8);
  v8 = *(v126 + 64);
  MEMORY[0x28223BE20](v130);
  v125 = v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_8CipherML12UseCaseGroupV5valuetSgMd, &_sSS3key_8CipherML12UseCaseGroupV5valuetSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = (v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v16 = (v121 - v15);
  v4[2] = a1;
  v4[3] = a2;
  v122 = v4;
  v4[4] = a3;
  v17 = *(a3 + 64);
  v124 = a3 + 64;
  v18 = 1 << *(a3 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v17;
  v123 = (v18 + 63) >> 6;
  v129 = a3;

  v21 = 0;
  v22 = MEMORY[0x277D84F98];
  v138 = MEMORY[0x277D84F98];
  v23 = MEMORY[0x277D84F98];
  v128 = v14;
  v127 = v16;
LABEL_6:
  v133 = v23;
  if (v20)
  {
    v26 = v21;
LABEL_14:
    v132 = (v20 - 1) & v20;
    v28 = __clz(__rbit64(v20)) | (v26 << 6);
    v29 = (*(v129 + 48) + 16 * v28);
    v31 = *v29;
    v30 = v29[1];
    v32 = v125;
    _s8CipherML12UseCaseGroupVWOcTm_1(*(v129 + 56) + *(v126 + 72) * v28, v125, type metadata accessor for UseCaseGroup);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_8CipherML12UseCaseGroupV5valuetMd, &_sSS3key_8CipherML12UseCaseGroupV5valuetMR);
    v34 = *(v33 + 48);
    *v14 = v31;
    v14[1] = v30;
    _s8CipherML12UseCaseGroupVWObTm_1(v32, v14 + v34, type metadata accessor for UseCaseGroup);
    (*(*(v33 - 8) + 56))(v14, 0, 1, v33);

    v131 = v26;
LABEL_15:
    outlined init with take of (key: String, value: UseCaseGroup)?(v14, v16);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_8CipherML12UseCaseGroupV5valuetMd, &_sSS3key_8CipherML12UseCaseGroupV5valuetMR);
    if ((*(*(v35 - 8) + 48))(v16, 1, v35) != 1)
    {
      v36 = v16[1];
      v136 = *v16;
      v139 = v36;
      v37 = v16 + *(v35 + 48);
      v38 = *(v37 + *(v130 + 32));

      _s8CipherML28AspireHeEncryptionParametersVWOhTm_0(v37, type metadata accessor for UseCaseGroup);
      v39 = 0;
      v41 = v38 + 64;
      v40 = *(v38 + 64);
      v137 = v38;
      v42 = 1 << *(v38 + 32);
      if (v42 < 64)
      {
        v43 = ~(-1 << v42);
      }

      else
      {
        v43 = -1;
      }

      v44 = v43 & v40;
      v45 = (v42 + 63) >> 6;
      v46 = MEMORY[0x277D84F90];
      v47 = v22;
      v135 = v41;
      v134 = v45;
      if ((v43 & v40) == 0)
      {
        goto LABEL_20;
      }

      while (1)
      {
LABEL_24:
        v49 = __clz(__rbit64(v44)) | (v39 << 6);
        v50 = (*(v137 + 48) + 16 * v49);
        v51 = *v50;
        v52 = v50[1];
        v53 = (*(v137 + 56) + (v49 << 6));
        v54 = *(v53 + 41);
        v55 = *v53;
        v56 = v53[2];
        v144 = v53[1];
        *v145 = v56;
        *&v145[9] = v54;
        v143 = v55;
        v57 = v47[2];

        if (v57)
        {
          outlined init with copy of UseCase(&v143, v141);
          v58 = specialized __RawDictionaryStorage.find<A>(_:)(v51, v52);
          if (v59)
          {
            v110 = v58;

            outlined destroy of UseCase(&v143);
            v111 = (v47[7] + 16 * v110);
            v112 = *v111;
            v113 = v111[1];

            type metadata accessor for CipherMLError();
            _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_7(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
            swift_allocError();
            *v114 = v51;
            v114[1] = v52;
            v114[2] = v112;
            v114[3] = v113;
            v115 = v139;
            v114[4] = v136;
            v114[5] = v115;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            v116 = v122;
            v117 = v122[2];

            v118 = v116[3];

            v119 = v116[4];

            swift_deallocPartialClassInstance();
            return v116;
          }
        }

        else
        {
          outlined init with copy of UseCase(&v143, v141);
        }

        v60 = v46;
        v61 = v47;
        v62 = v138;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v146 = v62;
        v140 = v51;
        v65 = specialized __RawDictionaryStorage.find<A>(_:)(v51, v52);
        v66 = v62[2];
        v67 = (v64 & 1) == 0;
        v68 = v66 + v67;
        if (__OFADD__(v66, v67))
        {
          goto LABEL_61;
        }

        v69 = v64;
        if (v62[3] >= v68)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v64)
            {
              goto LABEL_35;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            if (v69)
            {
              goto LABEL_35;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v68, isUniquelyReferenced_nonNull_native);
          v70 = specialized __RawDictionaryStorage.find<A>(_:)(v140, v52);
          if ((v69 & 1) != (v71 & 1))
          {
            goto LABEL_65;
          }

          v65 = v70;
          if (v69)
          {
LABEL_35:
            v138 = v146;
            v72 = (v146[7] + (v65 << 6));
            v74 = v72[1];
            v73 = v72[2];
            v75 = *v72;
            *&v142[9] = *(v72 + 41);
            v141[1] = v74;
            *v142 = v73;
            v141[0] = v75;
            v76 = v143;
            v77 = v144;
            v78 = *v145;
            *(v72 + 41) = *&v145[9];
            v72[1] = v77;
            v72[2] = v78;
            *v72 = v76;
            outlined destroy of UseCase(v141);
            v79 = v140;
            goto LABEL_39;
          }
        }

        v80 = v146;
        v146[(v65 >> 6) + 8] |= 1 << v65;
        v81 = (v80[6] + 16 * v65);
        v79 = v140;
        *v81 = v140;
        v81[1] = v52;
        v82 = (v80[7] + (v65 << 6));
        v83 = *&v145[9];
        v85 = v144;
        v84 = *v145;
        *v82 = v143;
        v82[1] = v85;
        v82[2] = v84;
        *(v82 + 41) = v83;
        v86 = v80[2];
        v87 = __OFADD__(v86, 1);
        v88 = v86 + 1;
        if (v87)
        {
          goto LABEL_63;
        }

        v138 = v80;
        v80[2] = v88;

LABEL_39:

        v89 = swift_isUniquelyReferenced_nonNull_native();
        *&v141[0] = v61;
        v90 = specialized __RawDictionaryStorage.find<A>(_:)(v79, v52);
        v92 = v61[2];
        v93 = (v91 & 1) == 0;
        v87 = __OFADD__(v92, v93);
        v94 = v92 + v93;
        if (v87)
        {
          goto LABEL_62;
        }

        v95 = v91;
        if (v61[3] >= v94)
        {
          v46 = v60;
          if (v89)
          {
            v47 = *&v141[0];
            if ((v91 & 1) == 0)
            {
              goto LABEL_48;
            }
          }

          else
          {
            v100 = v90;
            specialized _NativeDictionary.copy()();
            v90 = v100;
            v47 = *&v141[0];
            if ((v95 & 1) == 0)
            {
              goto LABEL_48;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v94, v89);
          v90 = specialized __RawDictionaryStorage.find<A>(_:)(v79, v52);
          if ((v95 & 1) != (v96 & 1))
          {
            goto LABEL_65;
          }

          v46 = v60;
          v47 = *&v141[0];
          if ((v95 & 1) == 0)
          {
LABEL_48:
            v47[(v90 >> 6) + 8] |= 1 << v90;
            v101 = (v47[6] + 16 * v90);
            *v101 = v79;
            v101[1] = v52;
            v102 = (v47[7] + 16 * v90);
            v103 = v139;
            *v102 = v136;
            v102[1] = v103;
            v104 = v47[2];
            v87 = __OFADD__(v104, 1);
            v105 = v104 + 1;
            if (v87)
            {
              goto LABEL_64;
            }

            v47[2] = v105;

            goto LABEL_50;
          }
        }

        v97 = (v47[7] + 16 * v90);
        v98 = v97[1];
        v99 = v139;
        *v97 = v136;
        v97[1] = v99;

LABEL_50:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v46 + 2) + 1, 1, v46);
        }

        v107 = *(v46 + 2);
        v106 = *(v46 + 3);
        if (v107 >= v106 >> 1)
        {
          v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v106 > 1), v107 + 1, 1, v46);
        }

        v44 &= v44 - 1;
        *(v46 + 2) = v107 + 1;
        v108 = &v46[16 * v107];
        *(v108 + 4) = v140;
        *(v108 + 5) = v52;
        v41 = v135;
        v45 = v134;
        if (!v44)
        {
LABEL_20:
          while (1)
          {
            v48 = v39 + 1;
            if (__OFADD__(v39, 1))
            {
              break;
            }

            if (v48 >= v45)
            {
              v22 = v47;

              v24 = v133;
              v25 = swift_isUniquelyReferenced_nonNull_native();
              *&v143 = v24;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v46, v136, v139, v25, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));

              v23 = v143;
              v21 = v131;
              v14 = v128;
              v16 = v127;
              v20 = v132;
              goto LABEL_6;
            }

            v44 = *(v41 + 8 * v48);
            ++v39;
            if (v44)
            {
              v39 = v48;
              goto LABEL_24;
            }
          }

          __break(1u);
          goto LABEL_60;
        }
      }
    }

    v116 = v122;
    v122[5] = v138;
    v116[6] = v22;
    v116[7] = v133;
    return v116;
  }

  else
  {
    if (v123 <= v21 + 1)
    {
      v27 = v21 + 1;
    }

    else
    {
      v27 = v123;
    }

    while (1)
    {
      v26 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v26 >= v123)
      {
        v131 = v27 - 1;
        v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_8CipherML12UseCaseGroupV5valuetMd, &_sSS3key_8CipherML12UseCaseGroupV5valuetMR);
        (*(*(v109 - 8) + 56))(v14, 1, 1, v109);
        v132 = 0;
        goto LABEL_15;
      }

      v20 = *(v124 + 8 * v26);
      ++v21;
      if (v20)
      {
        goto LABEL_14;
      }
    }

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
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

void *AllowList.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  return v0;
}

uint64_t AllowList.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  return swift_deallocClassInstance();
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
      v22 = *v6;
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
    v26 = *v5;
    v27 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for Date();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a3, a1, v18);
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v20 = *v5;
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v20 = *v5;
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for UseCaseGroup();
      return outlined assign with take of AspireApiConfig(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for UseCaseGroup);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
  v22 = *v5;
  v23 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a3, a1, v18, type metadata accessor for UseCaseGroup, type metadata accessor for UseCaseGroup);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));
}

{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for AspireApiConfig(0);
      return outlined assign with take of AspireApiConfig(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for AspireApiConfig);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
  v22 = *v5;
  v23 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a3, a1, v18, type metadata accessor for AspireApiConfig, type metadata accessor for AspireApiConfig);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v24 = *v9;
      v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 16 * v15);
  *v30 = a2;
  v30[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for SecretKey();
      return outlined assign with take of AspireApiConfig(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for SecretKey);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
  v22 = *v5;
  v23 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a3, a1, v18, type metadata accessor for SecretKey, type metadata accessor for SecretKey);

  return outlined copy of Data._Representation(a2, a3);
}

{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
      return outlined assign with take of AspireApiConfig(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for AspireHeEvaluationKeyConfig);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
  v22 = *v5;
  v23 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a3, a1, v18, type metadata accessor for AspireHeEvaluationKeyConfig, type metadata accessor for AspireHeEvaluationKeyConfig);

  return outlined copy of Data._Representation(a2, a3);
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Date();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = _s8CipherML12UseCaseGroupVWObTm_1(a4, v12 + *(*(v13 - 8) + 72) * a1, a7);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = _s8CipherML12UseCaseGroupVWObTm_1(a4, v12 + *(*(v13 - 8) + 72) * a1, a7);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 10) | (16 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        outlined copy of Data._Representation(v18, *(&v18 + 1));
        goto LABEL_24;
      }

      ++v11;
      outlined copy of Data._Representation(v18, *(&v18 + 1));
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t specialized AllowList.__allocating_init(file:)(unint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Data.init(contentsOf:options:)();
  if (v1)
  {
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    v16 = __swift_project_value_buffer(v17, static Logger.framework);
    (*(v4 + 16))(v7, a1, v3);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v32 = v3;
      v21 = v20;
      v22 = swift_slowAlloc();
      v30[1] = v1;
      v23 = v22;
      v33 = v22;
      *v21 = 136446210;
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_7(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = a1;
      v26 = v25;
      v27 = *(v4 + 8);
      v27(v7, v32);
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v33);
      a1 = v31;

      *(v21 + 4) = v16;
      _os_log_impl(&dword_224E26000, v18, v19, "Unable to load allow list from '%{public}s'", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x22AA61F40](v23, -1, -1);
      v28 = v21;
      v3 = v32;
      MEMORY[0x22AA61F40](v28, -1, -1);
    }

    else
    {

      v27 = *(v4 + 8);
      v27(v7, v3);
    }

    swift_willThrow();
    v27(a1, v3);
  }

  else
  {
    v31 = v9;
    v32 = v3;
    v10 = v8;
    v11 = specialized static AllowListParser.parseAllowList(allowListData:)();
    v13 = v12;
    v15 = v14;
    type metadata accessor for AllowList();
    v16 = swift_allocObject();

    AllowList.init(rlweParams:heSchemes:groups:)(v11, v13, v15);
    outlined consume of Data._Representation(v10, v31);

    (*(v4 + 8))(a1, v32);
  }

  return v16;
}

char *specialized AllowList.__allocating_init()()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - v7;
  type metadata accessor for CMLXPCServer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = MEMORY[0x22AA609C0](0x696C2D776F6C6C61, 0xEA00000000007473);
  v12 = MEMORY[0x22AA609C0](0x7473696C70, 0xE500000000000000);
  v13 = [v10 URLForResource:v11 withExtension:v12];

  if (v13)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v2 + 16))(v6, v8, v1);
    v14 = specialized AllowList.__allocating_init(file:)(v6);
    if (!v0)
    {
      v6 = v14;
    }

    (*(v2 + 8))(v8, v1);
  }

  else
  {
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.framework);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_224E26000, v16, v17, "Can't get url for default allow list", v18, 2u);
      MEMORY[0x22AA61F40](v18, -1, -1);
    }

    type metadata accessor for CipherMLError();
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_7(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v6;
}

uint64_t _s8CipherML12UseCaseGroupVWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of (key: String, value: UseCaseGroup)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_8CipherML12UseCaseGroupV5valuetSgMd, &_sSS3key_8CipherML12UseCaseGroupV5valuetSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s8CipherML28AspireHeEncryptionParametersVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s8CipherML12UseCaseGroupVWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of AspireApiConfig(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_7(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TokenFetcherTask.currentDate.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void *TokenFetcherTask.__allocating_init(allowListLock:getCurrentDate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *TokenFetcherTask.init(allowListLock:getCurrentDate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t TokenFetcherTask.run()()
{
  v1[14] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12TokenFetcherVSgMd, &_s8CipherML12TokenFetcherVSgMR) - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v3 = type metadata accessor for TokenFetcher(0);
  v1[16] = v3;
  v4 = *(v3 - 8);
  v1[17] = v4;
  v5 = *(v4 + 64) + 15;
  v1[18] = swift_task_alloc();
  v6 = type metadata accessor for NetworkManagerConfig(0);
  v1[19] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v8 = type metadata accessor for NetworkManagerType(0);
  v1[21] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[22] = swift_task_alloc();
  v10 = type metadata accessor for UseCaseGroup();
  v1[23] = v10;
  v11 = *(v10 - 8);
  v1[24] = v11;
  v12 = *(v11 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_8CipherML12UseCaseGroupV5valuetSgMd, &_sSS3key_8CipherML12UseCaseGroupV5valuetSgMR) - 8) + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](TokenFetcherTask.run(), 0, 0);
}

{
  v1 = *(*(v0 + 112) + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  *(v0 + 232) = v2;

  os_unfair_lock_unlock((v1 + 24));
  v3 = *(v2 + 32);
  *(v0 + 240) = v3;
  v4 = *(v3 + 32);
  *(v0 + 312) = v4;
  v5 = 1 << v4;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v3 + 64);
  *(v0 + 248) = 0;

  v8 = 0;
  v9 = &_sSS3key_8CipherML12UseCaseGroupV5valuetMd;
LABEL_7:
  if (!v7)
  {
LABEL_9:
    v13 = ((1 << *(v0 + 312)) + 63) >> 6;
    if (v13 <= (v8 + 1))
    {
      v14 = v8 + 1;
    }

    else
    {
      v14 = ((1 << *(v0 + 312)) + 63) >> 6;
    }

    v15 = v14 - 1;
    while (1)
    {
      v16 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
        v47 = *(v0 + 216);
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, &_sSS3key_8CipherML12UseCaseGroupV5valuetMR);
        (*(*(v48 - 8) + 56))(v47, 1, 1, v48);
        v7 = 0;
        v8 = v15;
        goto LABEL_18;
      }

      v12 = *(v0 + 240);
      v7 = *(v12 + 8 * v16 + 64);
      ++v8;
      if (v7)
      {
        v8 = v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_38:
    _s8CipherML12UseCaseGroupVWObTm_2(*(v0 + 120), *(v0 + 144), type metadata accessor for TokenFetcher);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v65 = static TokenCache.shared;
    v66 = (*(v0 + 144) + *(*(v0 + 128) + 20));
    v67 = *v66;
    v68 = v66[1];
    v69 = *(static TokenCache.shared + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock);
    v70 = swift_task_alloc();
    v70[2] = v65;
    v70[3] = v67;
    v70[4] = v68;
    os_unfair_lock_lock((v69 + 24));
    partial apply for closure #1 in TokenCache.count(user:)((v69 + 16), (v0 + 104));
    os_unfair_lock_unlock((v69 + 24));
    v71 = *(v0 + 104);

    if (v71 >= 5)
    {
      *(v0 + 296) = 0;
      v79 = *(v0 + 280);

      v72 = TokenFetcherTask.run();
      v73 = 0;
      v74 = 0;
    }

    else
    {
      v75 = __OFSUB__(10, v71);
      v76 = 10 - v71;
      if (!v75)
      {
        v77 = swift_task_alloc();
        *(v0 + 288) = v77;
        *v77 = v0;
        v77[1] = TokenFetcherTask.run();
        v78 = *(v0 + 144);

        return TokenFetcher.fetchTokensInBackground(count:)(v76);
      }

      __break(1u);
    }

    return MEMORY[0x2822009F8](v72, v73, v74);
  }

  while (1)
  {
    v12 = *(v0 + 240);
LABEL_17:
    v18 = *(v0 + 208);
    v17 = *(v0 + 216);
    v19 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v20 = v19 | (v8 << 6);
    v21 = (*(v12 + 48) + 16 * v20);
    v22 = *v21;
    v23 = v21[1];
    _s8CipherML12UseCaseGroupVWOcTm_2(*(v12 + 56) + *(*(v0 + 192) + 72) * v20, v18, type metadata accessor for UseCaseGroup);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, &_sSS3key_8CipherML12UseCaseGroupV5valuetMR);
    v25 = *(v24 + 48);
    *v17 = v22;
    v17[1] = v23;
    _s8CipherML12UseCaseGroupVWObTm_2(v18, v17 + v25, type metadata accessor for UseCaseGroup);
    (*(*(v24 - 8) + 56))(v17, 0, 1, v24);

LABEL_18:
    *(v0 + 256) = v7;
    *(v0 + 264) = v8;
    v26 = *(v0 + 224);
    outlined init with take of (key: String, value: UseCaseGroup)?(*(v0 + 216), v26);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, &_sSS3key_8CipherML12UseCaseGroupV5valuetMR);
    if ((*(*(v27 - 8) + 48))(v26, 1, v27) == 1)
    {
      break;
    }

    v28 = v9;
    v29 = *(v0 + 224);
    v30 = *(v0 + 200);
    v32 = *(v0 + 176);
    v31 = *(v0 + 184);
    v33 = *(v0 + 168);
    *(v0 + 272) = *v29;
    *(v0 + 280) = v29[1];
    _s8CipherML12UseCaseGroupVWObTm_2(v29 + *(v27 + 48), v30, type metadata accessor for UseCaseGroup);
    v34 = *(v31 + 36);
    _s8CipherML12UseCaseGroupVWOcTm_2(v30 + v34, v32, type metadata accessor for NetworkManagerType);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v10 = *(v0 + 176);
      _s8CipherML12UseCaseGroupVWOhTm_0(*(v0 + 200), type metadata accessor for UseCaseGroup);

      v11 = type metadata accessor for NetworkManagerType;
LABEL_6:
      _s8CipherML12UseCaseGroupVWOhTm_0(v10, v11);
      v9 = v28;
      goto LABEL_7;
    }

    v35 = *(v0 + 176);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMR);
    v37 = *(v35 + *(v36 + 64) + 8);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v35 + *(v36 + 48), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v38 = type metadata accessor for URL();
    (*(*(v38 - 8) + 8))(v35, v38);
    if (!v37)
    {
      v10 = *(v0 + 200);

      v11 = type metadata accessor for UseCaseGroup;
      goto LABEL_6;
    }

    v40 = *(v0 + 152);
    v39 = *(v0 + 160);

    _s8CipherML12UseCaseGroupVWOcTm_2(v30 + v34, v39, type metadata accessor for NetworkConfig);
    v41 = (v39 + *(v40 + 20));
    *v41 = 0;
    v41[1] = 0;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    (*(*static NetworkManagerHelper.shared + 96))(*(v0 + 160));
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + 16, v0 + 56, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
    if (*(v0 + 80))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14NetworkManager_pMd, &_s8CipherML14NetworkManager_pMR);
      type metadata accessor for AspireNetworkManager();
      v9 = v28;
      if (swift_dynamicCast())
      {
        v43 = *(v0 + 128);
        v42 = *(v0 + 136);
        v44 = *(v0 + 120);
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(*(v0 + 96) + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_tokenFetcher, v44, &_s8CipherML12TokenFetcherVSgMd, &_s8CipherML12TokenFetcherVSgMR);

        if ((*(v42 + 48))(v44, 1, v43) != 1)
        {
          goto LABEL_38;
        }

        v45 = *(v0 + 200);
        v46 = *(v0 + 160);

        outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 16, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
        _s8CipherML12UseCaseGroupVWOhTm_0(v46, type metadata accessor for NetworkManagerConfig);
        _s8CipherML12UseCaseGroupVWOhTm_0(v45, type metadata accessor for UseCaseGroup);
        goto LABEL_31;
      }

      v51 = *(v0 + 200);
      v52 = *(v0 + 160);

      outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 16, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
      _s8CipherML12UseCaseGroupVWOhTm_0(v52, type metadata accessor for NetworkManagerConfig);
      _s8CipherML12UseCaseGroupVWOhTm_0(v51, type metadata accessor for UseCaseGroup);
    }

    else
    {
      v49 = *(v0 + 200);
      v50 = *(v0 + 160);

      outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 16, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
      _s8CipherML12UseCaseGroupVWOhTm_0(v50, type metadata accessor for NetworkManagerConfig);
      _s8CipherML12UseCaseGroupVWOhTm_0(v49, type metadata accessor for UseCaseGroup);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 56, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
      v9 = v28;
    }

    (*(*(v0 + 136) + 56))(*(v0 + 120), 1, 1, *(v0 + 128));
LABEL_31:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 120), &_s8CipherML12TokenFetcherVSgMd, &_s8CipherML12TokenFetcherVSgMR);
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  v53 = *(v0 + 240);

  v55 = *(v0 + 224);
  v54 = *(v0 + 232);
  v57 = *(v0 + 208);
  v56 = *(v0 + 216);
  v58 = *(v0 + 200);
  v59 = *(v0 + 176);
  v60 = *(v0 + 160);
  v61 = *(v0 + 144);
  v62 = *(v0 + 120);

  v63 = *(v0 + 8);

  return v63();
}

{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;

  if (v0)
  {
    v2[38] = v0;
    v5 = TokenFetcherTask.run();
  }

  else
  {
    v2[37] = 0;
    v6 = v2[35];

    v5 = TokenFetcherTask.run();
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v1 = *(v0 + 200);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 16, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
  _s8CipherML12UseCaseGroupVWOhTm_0(v2, type metadata accessor for NetworkManagerConfig);
  _s8CipherML12UseCaseGroupVWOhTm_0(v1, type metadata accessor for UseCaseGroup);
  _s8CipherML12UseCaseGroupVWOhTm_0(v3, type metadata accessor for TokenFetcher);
  v4 = &_sSS3key_8CipherML12UseCaseGroupV5valuetMd;
  v5 = *(v0 + 296);
  v7 = *(v0 + 256);
  v6 = *(v0 + 264);
  v78 = v5;
  v80 = *(v0 + 248);
  if (!v7)
  {
    goto LABEL_6;
  }

  do
  {
    while (1)
    {
      v10 = *(v0 + 240);
LABEL_14:
      v16 = *(v0 + 208);
      v15 = *(v0 + 216);
      v17 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v18 = v17 | (v6 << 6);
      v19 = (*(v10 + 48) + 16 * v18);
      v20 = *v19;
      v21 = v19[1];
      _s8CipherML12UseCaseGroupVWOcTm_2(*(v10 + 56) + *(*(v0 + 192) + 72) * v18, v16, type metadata accessor for UseCaseGroup);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, &_sSS3key_8CipherML12UseCaseGroupV5valuetMR);
      v23 = *(v22 + 48);
      *v15 = v20;
      v15[1] = v21;
      _s8CipherML12UseCaseGroupVWObTm_2(v16, v15 + v23, type metadata accessor for UseCaseGroup);
      (*(*(v22 - 8) + 56))(v15, 0, 1, v22);

LABEL_15:
      *(v0 + 256) = v7;
      *(v0 + 264) = v6;
      v24 = *(v0 + 224);
      outlined init with take of (key: String, value: UseCaseGroup)?(*(v0 + 216), v24);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, &_sSS3key_8CipherML12UseCaseGroupV5valuetMR);
      if ((*(*(v25 - 8) + 48))(v24, 1, v25) == 1)
      {
        v51 = *(v0 + 240);

        v53 = *(v0 + 224);
        v52 = *(v0 + 232);
        v54 = *(v0 + 208);
        v55 = *(v0 + 216);
        v56 = *(v0 + 200);
        v57 = *(v0 + 176);
        v58 = *(v0 + 160);
        v59 = *(v0 + 144);
        v79 = *(v0 + 120);
        if (v80)
        {
          swift_willThrow();
        }

        v60 = *(v0 + 8);

        return v60();
      }

      v26 = v4;
      v27 = *(v0 + 224);
      v28 = *(v0 + 200);
      v29 = *(v0 + 176);
      v30 = *(v0 + 184);
      v31 = *(v0 + 168);
      *(v0 + 272) = *v27;
      *(v0 + 280) = v27[1];
      _s8CipherML12UseCaseGroupVWObTm_2(v27 + *(v25 + 48), v28, type metadata accessor for UseCaseGroup);
      v32 = *(v30 + 36);
      _s8CipherML12UseCaseGroupVWOcTm_2(v28 + v32, v29, type metadata accessor for NetworkManagerType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      v8 = *(v0 + 176);
      _s8CipherML12UseCaseGroupVWOhTm_0(*(v0 + 200), type metadata accessor for UseCaseGroup);

      v9 = type metadata accessor for NetworkManagerType;
LABEL_4:
      _s8CipherML12UseCaseGroupVWOhTm_0(v8, v9);
      v4 = v26;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    v33 = *(v0 + 176);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMR);
    v35 = *(v33 + *(v34 + 64) + 8);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v33 + *(v34 + 48), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v36 = type metadata accessor for URL();
    (*(*(v36 - 8) + 8))(v33, v36);
    if (!v35)
    {
      v8 = *(v0 + 200);

      v9 = type metadata accessor for UseCaseGroup;
      goto LABEL_4;
    }

    v38 = *(v0 + 152);
    v37 = *(v0 + 160);

    _s8CipherML12UseCaseGroupVWOcTm_2(v28 + v32, v37, type metadata accessor for NetworkConfig);
    v39 = (v37 + *(v38 + 20));
    *v39 = 0;
    v39[1] = 0;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    (*(*static NetworkManagerHelper.shared + 96))(*(v0 + 160));
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + 16, v0 + 56, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
    if (!*(v0 + 80))
    {
      v47 = *(v0 + 200);
      v48 = *(v0 + 160);

      outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 16, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
      _s8CipherML12UseCaseGroupVWOhTm_0(v48, type metadata accessor for NetworkManagerConfig);
      _s8CipherML12UseCaseGroupVWOhTm_0(v47, type metadata accessor for UseCaseGroup);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 56, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
LABEL_28:
      v4 = v26;
      (*(*(v0 + 136) + 56))(*(v0 + 120), 1, 1, *(v0 + 128));
      goto LABEL_29;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14NetworkManager_pMd, &_s8CipherML14NetworkManager_pMR);
    type metadata accessor for AspireNetworkManager();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v49 = *(v0 + 200);
      v50 = *(v0 + 160);

      outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 16, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
      _s8CipherML12UseCaseGroupVWOhTm_0(v50, type metadata accessor for NetworkManagerConfig);
      _s8CipherML12UseCaseGroupVWOhTm_0(v49, type metadata accessor for UseCaseGroup);
      goto LABEL_28;
    }

    v40 = *(v0 + 128);
    v41 = *(v0 + 136);
    v42 = *(v0 + 120);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(*(v0 + 96) + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_tokenFetcher, v42, &_s8CipherML12TokenFetcherVSgMd, &_s8CipherML12TokenFetcherVSgMR);

    if ((*(v41 + 48))(v42, 1, v40) != 1)
    {
      goto LABEL_37;
    }

    v43 = *(v0 + 200);
    v44 = *(v0 + 160);

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 16, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
    _s8CipherML12UseCaseGroupVWOhTm_0(v44, type metadata accessor for NetworkManagerConfig);
    _s8CipherML12UseCaseGroupVWOhTm_0(v43, type metadata accessor for UseCaseGroup);
    v4 = v26;
LABEL_29:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 120), &_s8CipherML12TokenFetcherVSgMd, &_s8CipherML12TokenFetcherVSgMR);
  }

  while (v7);
LABEL_6:
  v11 = ((1 << *(v0 + 312)) + 63) >> 6;
  if (v11 <= (v6 + 1))
  {
    v12 = v6 + 1;
  }

  else
  {
    v12 = ((1 << *(v0 + 312)) + 63) >> 6;
  }

  v13 = v12 - 1;
  while (1)
  {
    v14 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      v45 = *(v0 + 216);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, &_sSS3key_8CipherML12UseCaseGroupV5valuetMR);
      (*(*(v46 - 8) + 56))(v45, 1, 1, v46);
      v7 = 0;
      v6 = v13;
      goto LABEL_15;
    }

    v10 = *(v0 + 240);
    v7 = *(v10 + 8 * v14 + 64);
    ++v6;
    if (v7)
    {
      v6 = v14;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_37:
  _s8CipherML12UseCaseGroupVWObTm_2(*(v0 + 120), *(v0 + 144), type metadata accessor for TokenFetcher);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v62 = static TokenCache.shared;
  v63 = (*(v0 + 144) + *(*(v0 + 128) + 20));
  v64 = *v63;
  v65 = v63[1];
  v66 = *(static TokenCache.shared + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock);
  v67 = swift_task_alloc();
  v67[2] = v62;
  v67[3] = v64;
  v67[4] = v65;
  os_unfair_lock_lock((v66 + 24));
  partial apply for closure #1 in TokenCache.count(user:)((v66 + 16), (v0 + 104));
  os_unfair_lock_unlock((v66 + 24));
  if (v78)
  {

    *(v0 + 304) = v78;
    v68 = TokenFetcherTask.run();
LABEL_47:
    v70 = v68;
    v71 = 0;
    v72 = 0;

    return MEMORY[0x2822009F8](v70, v71, v72);
  }

  v69 = *(v0 + 104);

  if (v69 >= 5)
  {
    *(v0 + 296) = 0;
    v77 = *(v0 + 280);

    v68 = TokenFetcherTask.run();
    goto LABEL_47;
  }

  v73 = __OFSUB__(10, v69);
  v74 = 10 - v69;
  if (v73)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v70, v71, v72);
  }

  v75 = swift_task_alloc();
  *(v0 + 288) = v75;
  *v75 = v0;
  v75[1] = TokenFetcherTask.run();
  v76 = *(v0 + 144);

  return TokenFetcher.fetchTokensInBackground(count:)(v74);
}

{
  v100 = v0;
  if (one-time initialization token for networking != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 304);
  v2 = *(v0 + 280);
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.networking);

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 304);
    v9 = *(v0 + 272);
    v8 = *(v0 + 280);
    v10 = *(v0 + 248);
    v94 = *(v0 + 160);
    v95 = *(v0 + 200);
    v97 = *(v0 + 144);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v99 = v13;
    *v11 = 136446466;
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v99);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2114;
    v15 = v7;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v16;
    *v12 = v16;
    _os_log_impl(&dword_224E26000, v5, v6, "Failed to fetch more tokens for group '%{public}s': %{public}@", v11, 0x16u);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AA61F40](v13, -1, -1);
    MEMORY[0x22AA61F40](v11, -1, -1);

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 16, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
    _s8CipherML12UseCaseGroupVWOhTm_0(v94, type metadata accessor for NetworkManagerConfig);
    _s8CipherML12UseCaseGroupVWOhTm_0(v95, type metadata accessor for UseCaseGroup);
    v17 = v97;
  }

  else
  {
    v18 = *(v0 + 280);
    v19 = *(v0 + 200);
    v20 = *(v0 + 160);
    v21 = *(v0 + 144);

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 16, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
    _s8CipherML12UseCaseGroupVWOhTm_0(v20, type metadata accessor for NetworkManagerConfig);
    _s8CipherML12UseCaseGroupVWOhTm_0(v19, type metadata accessor for UseCaseGroup);
    v17 = v21;
  }

  _s8CipherML12UseCaseGroupVWOhTm_0(v17, type metadata accessor for TokenFetcher);
  v22 = &_sSS3key_8CipherML12UseCaseGroupV5valuetMd;
  v23 = *(v0 + 256);
  v24 = *(v0 + 264);
  v98 = *(v0 + 304);
  *(v0 + 248) = v98;
  if (!v23)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v27 = *(v0 + 240);
LABEL_19:
    v33 = *(v0 + 208);
    v32 = *(v0 + 216);
    v34 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v35 = v34 | (v24 << 6);
    v36 = (*(v27 + 48) + 16 * v35);
    v37 = *v36;
    v38 = v36[1];
    _s8CipherML12UseCaseGroupVWOcTm_2(*(v27 + 56) + *(*(v0 + 192) + 72) * v35, v33, type metadata accessor for UseCaseGroup);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, &_sSS3key_8CipherML12UseCaseGroupV5valuetMR);
    v40 = *(v39 + 48);
    *v32 = v37;
    v32[1] = v38;
    _s8CipherML12UseCaseGroupVWObTm_2(v33, v32 + v40, type metadata accessor for UseCaseGroup);
    (*(*(v39 - 8) + 56))(v32, 0, 1, v39);

LABEL_20:
    *(v0 + 256) = v23;
    *(v0 + 264) = v24;
    v41 = *(v0 + 224);
    outlined init with take of (key: String, value: UseCaseGroup)?(*(v0 + 216), v41);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, &_sSS3key_8CipherML12UseCaseGroupV5valuetMR);
    if ((*(*(v42 - 8) + 48))(v41, 1, v42) == 1)
    {
      break;
    }

    v43 = v22;
    v44 = *(v0 + 224);
    v45 = *(v0 + 200);
    v47 = *(v0 + 176);
    v46 = *(v0 + 184);
    v48 = *(v0 + 168);
    *(v0 + 272) = *v44;
    *(v0 + 280) = v44[1];
    _s8CipherML12UseCaseGroupVWObTm_2(v44 + *(v42 + 48), v45, type metadata accessor for UseCaseGroup);
    v49 = *(v46 + 36);
    _s8CipherML12UseCaseGroupVWOcTm_2(v45 + v49, v47, type metadata accessor for NetworkManagerType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v50 = *(v0 + 176);
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMR);
      v52 = *(v50 + *(v51 + 64) + 8);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v50 + *(v51 + 48), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v53 = type metadata accessor for URL();
      (*(*(v53 - 8) + 8))(v50, v53);
      if (!v52)
      {
        v25 = *(v0 + 200);

        v26 = type metadata accessor for UseCaseGroup;
        goto LABEL_9;
      }

      v55 = *(v0 + 152);
      v54 = *(v0 + 160);

      _s8CipherML12UseCaseGroupVWOcTm_2(v45 + v49, v54, type metadata accessor for NetworkConfig);
      v56 = (v54 + *(v55 + 20));
      *v56 = 0;
      v56[1] = 0;
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      (*(*static NetworkManagerHelper.shared + 96))(*(v0 + 160));
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + 16, v0 + 56, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
      if (*(v0 + 80))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14NetworkManager_pMd, &_s8CipherML14NetworkManager_pMR);
        type metadata accessor for AspireNetworkManager();
        v22 = v43;
        if (swift_dynamicCast())
        {
          v57 = *(v0 + 128);
          v58 = *(v0 + 136);
          v59 = *(v0 + 120);
          outlined init with copy of AMDPbHEConfig.OneOf_Config?(*(v0 + 96) + OBJC_IVAR____TtC8CipherML20AspireNetworkManager_tokenFetcher, v59, &_s8CipherML12TokenFetcherVSgMd, &_s8CipherML12TokenFetcherVSgMR);

          if ((*(v58 + 48))(v59, 1, v57) != 1)
          {
            goto LABEL_42;
          }

          v60 = *(v0 + 200);
          v61 = *(v0 + 160);

          outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 16, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
          _s8CipherML12UseCaseGroupVWOhTm_0(v61, type metadata accessor for NetworkManagerConfig);
          _s8CipherML12UseCaseGroupVWOhTm_0(v60, type metadata accessor for UseCaseGroup);
          goto LABEL_34;
        }

        v66 = *(v0 + 200);
        v67 = *(v0 + 160);

        outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 16, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
        _s8CipherML12UseCaseGroupVWOhTm_0(v67, type metadata accessor for NetworkManagerConfig);
        _s8CipherML12UseCaseGroupVWOhTm_0(v66, type metadata accessor for UseCaseGroup);
      }

      else
      {
        v64 = *(v0 + 200);
        v65 = *(v0 + 160);

        outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 16, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
        _s8CipherML12UseCaseGroupVWOhTm_0(v65, type metadata accessor for NetworkManagerConfig);
        _s8CipherML12UseCaseGroupVWOhTm_0(v64, type metadata accessor for UseCaseGroup);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 56, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
        v22 = v43;
      }

      (*(*(v0 + 136) + 56))(*(v0 + 120), 1, 1, *(v0 + 128));
LABEL_34:
      outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 120), &_s8CipherML12TokenFetcherVSgMd, &_s8CipherML12TokenFetcherVSgMR);
      if (!v23)
      {
LABEL_11:
        v28 = ((1 << *(v0 + 312)) + 63) >> 6;
        if (v28 <= (v24 + 1))
        {
          v29 = v24 + 1;
        }

        else
        {
          v29 = ((1 << *(v0 + 312)) + 63) >> 6;
        }

        v30 = v29 - 1;
        while (1)
        {
          v31 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (v31 >= v28)
          {
            v62 = *(v0 + 216);
            v63 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, &_sSS3key_8CipherML12UseCaseGroupV5valuetMR);
            (*(*(v63 - 8) + 56))(v62, 1, 1, v63);
            v23 = 0;
            v24 = v30;
            goto LABEL_20;
          }

          v27 = *(v0 + 240);
          v23 = *(v27 + 8 * v31 + 64);
          ++v24;
          if (v23)
          {
            v24 = v31;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_42:
        _s8CipherML12UseCaseGroupVWObTm_2(*(v0 + 120), *(v0 + 144), type metadata accessor for TokenFetcher);
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        v79 = static TokenCache.shared;
        v80 = (*(v0 + 144) + *(*(v0 + 128) + 20));
        v81 = *v80;
        v82 = v80[1];
        v83 = *(static TokenCache.shared + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock);
        v84 = swift_task_alloc();
        v84[2] = v79;
        v84[3] = v81;
        v84[4] = v82;
        os_unfair_lock_lock((v83 + 24));
        partial apply for closure #1 in TokenCache.count(user:)((v83 + 16), (v0 + 104));
        os_unfair_lock_unlock((v83 + 24));
        v85 = *(v0 + 104);

        if (v85 >= 5)
        {
          *(v0 + 296) = 0;
          v93 = *(v0 + 280);

          v86 = TokenFetcherTask.run();
          v87 = 0;
          v88 = 0;
        }

        else
        {
          v89 = __OFSUB__(10, v85);
          v90 = 10 - v85;
          if (!v89)
          {
            v91 = swift_task_alloc();
            *(v0 + 288) = v91;
            *v91 = v0;
            v91[1] = TokenFetcherTask.run();
            v92 = *(v0 + 144);

            return TokenFetcher.fetchTokensInBackground(count:)(v90);
          }

          __break(1u);
        }

        return MEMORY[0x2822009F8](v86, v87, v88);
      }
    }

    else
    {
      v25 = *(v0 + 176);
      _s8CipherML12UseCaseGroupVWOhTm_0(*(v0 + 200), type metadata accessor for UseCaseGroup);

      v26 = type metadata accessor for NetworkManagerType;
LABEL_9:
      _s8CipherML12UseCaseGroupVWOhTm_0(v25, v26);
      v22 = v43;
      if (!v23)
      {
        goto LABEL_11;
      }
    }
  }

  v68 = *(v0 + 240);

  v70 = *(v0 + 224);
  v69 = *(v0 + 232);
  v71 = *(v0 + 208);
  v72 = *(v0 + 216);
  v73 = *(v0 + 200);
  v74 = *(v0 + 176);
  v75 = *(v0 + 160);
  v76 = *(v0 + 144);
  v96 = *(v0 + 120);
  if (v98)
  {
    swift_willThrow();
  }

  v77 = *(v0 + 8);

  return v77();
}

uint64_t TokenFetcherTask.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t TokenFetcherTask.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ScheduledActivityHandler.run@Sendable () in conformance TokenFetcherTask()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return TokenFetcherTask.run()();
}

void specialized static TokenFetcherTask.submitBackgroundTask()()
{
  v13[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() sharedScheduler];
  v1 = MEMORY[0x22AA609C0](0xD000000000000023, 0x8000000225037D00);
  v2 = [v0 taskRequestForIdentifier_];

  if (!v2)
  {
    v3 = objc_allocWithZone(MEMORY[0x277CF07C8]);
    v4 = MEMORY[0x22AA609C0](0xD000000000000023, 0x8000000225037D00);
    v5 = [v3 initWithIdentifier_];

    v2 = v5;
    [v2 setRequiresNetworkConnectivity_];
    [v2 setRequiresUserInactivity_];
    [v2 setScheduleAfter_];
    [v2 setRandomInitialDelay_];
    [v2 scheduleAfter];
    v7 = v6;
    [v2 randomInitialDelay];
    v9 = v8;

    [v2 setTrySchedulingBefore_];
    v13[0] = 0;
    if (![v0 submitTaskRequest:v2 error:v13])
    {
      v12 = v13[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      goto LABEL_5;
    }

    v10 = v13[0];
  }

LABEL_5:
  v11 = *MEMORY[0x277D85DE8];
}

uint64_t _s8CipherML12UseCaseGroupVWOcTm_2(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s8CipherML12UseCaseGroupVWObTm_2(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s8CipherML12UseCaseGroupVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

int *TokenFetcher.init(issuer:userToken:urlSession:privacyProxyFailClosed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for URL();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for TokenFetcher(0);
  v14 = (a6 + result[5]);
  *v14 = a2;
  v14[1] = a3;
  *(a6 + result[6]) = a4;
  *(a6 + result[7]) = a5;
  return result;
}

uint64_t TokenFetcher.addTokenAuthorization(to:)(uint64_t a1)
{
  *(v1 + 112) = a1;
  v2 = swift_task_alloc();
  *(v1 + 120) = v2;
  *v2 = v1;
  v2[1] = TokenFetcher.addTokenAuthorization(to:);

  return TokenFetcher.getToken()();
}

uint64_t TokenFetcher.addTokenAuthorization(to:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 120);
  v8 = *v3;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    *(v6 + 128) = a2;
    *(v6 + 136) = a1;

    return MEMORY[0x2822009F8](TokenFetcher.addTokenAuthorization(to:), 0, 0);
  }
}

uint64_t TokenFetcher.addTokenAuthorization(to:)()
{
  countAndFlagsBits = v0[8]._countAndFlagsBits;
  object = v0[8]._object;
  v13 = v0[7]._countAndFlagsBits;
  _StringGuts.grow(_:)(21);

  v0[1] = Data.base64EncodedString(options:)(0);
  v0[2]._countAndFlagsBits = 43;
  v0[2]._object = 0xE100000000000000;
  v0[3]._countAndFlagsBits = 45;
  v0[3]._object = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v3 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v5 = v4;

  v0[4]._countAndFlagsBits = v3;
  v0[4]._object = v5;
  v0[5]._countAndFlagsBits = 47;
  v0[5]._object = 0xE100000000000000;
  v0[6]._countAndFlagsBits = 95;
  v0[6]._object = 0xE100000000000000;
  v6 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v8 = v7;

  MEMORY[0x22AA60A80](v6, v8);

  v9.value._countAndFlagsBits = 0xD000000000000013;
  v10._countAndFlagsBits = 0x7A69726F68747541;
  v10._object = 0xED00006E6F697461;
  v9.value._object = 0x8000000225035BE0;
  URLRequest.setValue(_:forHTTPHeaderField:)(v9, v10);

  outlined consume of Data._Representation(object, countAndFlagsBits);
  v11 = v0->_object;

  return v11();
}

uint64_t TokenFetcher.backgroundTokenFetch()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](TokenFetcher.backgroundTokenFetch(), 0, 0);
}

{
  v16 = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = static TokenCache.shared;
  v3 = (v1 + *(type metadata accessor for TokenFetcher(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v2 + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock);
  v7 = swift_task_alloc();
  v7[2] = v2;
  v7[3] = v4;
  v7[4] = v5;
  os_unfair_lock_lock((v6 + 24));
  partial apply for closure #1 in TokenCache.count(user:)((v6 + 16), &v15);
  os_unfair_lock_unlock((v6 + 24));
  v8 = v15;

  if (v8 >= 5)
  {
    v14 = v0[1];

    return v14();
  }

  else
  {
    v10 = __OFSUB__(10, v8);
    v11 = 10 - v8;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      v12 = swift_task_alloc();
      v0[3] = v12;
      *v12 = v0;
      v12[1] = TokenFetcher.backgroundTokenFetch();
      v13 = v0[2];

      return TokenFetcher.fetchTokensInBackground(count:)(v11);
    }
  }

  return result;
}

{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t TokenFetcher.issuer.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TokenFetcher.userToken.getter()
{
  v1 = (v0 + *(type metadata accessor for TokenFetcher(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TokenFetcher.urlSession.getter()
{
  v1 = *(v0 + *(type metadata accessor for TokenFetcher(0) + 24));
}

uint64_t TokenFetcher.tokenIssuerDirectoryURL.getter()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[0] = 0xD00000000000002ALL;
  v7[1] = 0x8000000225037D30;
  (*(v1 + 104))(v5, *MEMORY[0x277CC91D8], v0, v3);
  lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(path:directoryHint:)();
  return (*(v1 + 8))(v5, v0);
}

void TokenFetcher.urlRequest(url:)()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x277CCAB70]);
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v9 = [v2 initWithURL_];

  v6 = type metadata accessor for TokenFetcher(0);
  [v9 _setPrivacyProxyFailClosed_];
  MEMORY[0x22AA60A80](*(v1 + *(v6 + 20)), *(v1 + *(v6 + 20) + 8));
  v7 = MEMORY[0x22AA609C0](0x20726572616542, 0xE700000000000000);

  v8 = MEMORY[0x22AA609C0](0x7A69726F68747541, 0xED00006E6F697461);
  [v9 setValue:v7 forHTTPHeaderField:v8];

  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t TokenFetcher.getToken()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](TokenFetcher.getToken(), 0, 0);
}

{
  v20 = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = static TokenCache.shared;
  v3 = (v1 + *(type metadata accessor for TokenFetcher(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock;
  v7 = *(v2 + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock);
  v8 = swift_task_alloc();
  v8[2] = v2;
  v8[3] = v4;
  v8[4] = v5;
  os_unfair_lock_lock((v7 + 24));
  partial apply for closure #1 in TokenCache.removeToken(user:)((v7 + 16), &v18);
  os_unfair_lock_unlock((v7 + 24));

  v9 = v19;
  if (v19 >> 60 == 15)
  {
    v10 = swift_task_alloc();
    v0[3] = v10;
    *v10 = v0;
    v10[1] = TokenFetcher.getToken();
    v11 = v0[2];

    return TokenFetcher.fetchToken()();
  }

  else
  {
    v13 = v18;
    v14 = *(v2 + v6);
    v15 = swift_task_alloc();
    v15[2] = v2;
    v15[3] = v4;
    v15[4] = v5;
    os_unfair_lock_lock((v14 + 24));
    closure #1 in TokenCache.count(user:)partial apply((v14 + 16), &v18);
    os_unfair_lock_unlock((v14 + 24));
    v16 = v18;

    if (v16 < 5)
    {
      TokenFetcher.submitBackgroundTask()();
    }

    v17 = v0[1];

    return v17(v13, v9);
  }
}

uint64_t TokenFetcher.getToken()(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 24);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t TokenFetcher.fetchToken()()
{
  v1[2] = v0;
  v2 = type metadata accessor for TokenCache.CachedToken(0);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  Context = type metadata accessor for TokenFetcher.TokenFetchContext(0);
  v1[6] = Context;
  v6 = *(*(Context - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMd, &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMR);
  v1[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v9 = swift_task_alloc();
  v1[10] = v9;
  v10 = swift_task_alloc();
  v1[11] = v10;
  *v10 = v1;
  v10[1] = TokenFetcher.fetchToken();

  return TokenFetcher.fetchContext()(v9);
}

{
  v1 = v0[6].i64[0];
  v2 = (v0[5].i64[0] + v0[11].i32[2]);
  v3 = v0[7];
  *v2 = vextq_s8(v3, v3, 8uLL);
  v2[1].i64[0] = v1;
  if ((v3.i64[0] & 0x2000000000000000) != 0)
  {
    v11 = v0[7].i64[1];
    v12 = v0[4].i64[1];
    v13 = v0[3].i64[1];
    v14 = v0[4].i64[0];
    v15 = v0[3].i64[0];
    v16 = v0[7].i64[0] & 0xDFFFFFFFFFFFFFFFLL;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0[5].i64[0], v12, &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMd, &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMR);
    v17 = (v12 + *(v14 + 48));
    v18 = v17[2];
    outlined consume of TokenFetcher.TokenKey(*v17, v17[1]);
    outlined init with take of TokenCache.CachedToken(v12, v13, type metadata accessor for TokenFetcher.IssuerInfo);
    v19 = (v13 + *(v15 + 20));
    *v19 = v11;
    v19[1] = v16;
    outlined copy of Data._Representation(v11, v16);
    v20 = swift_task_alloc();
    v0[8].i64[0] = v20;
    *v20 = v0;
    v20[1] = TokenFetcher.fetchToken();
    v21 = v0[3].i64[1];
    v22 = v0[1].i64[0];

    return TokenFetcher.fetchToken(context:)(v21);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[10].i64[0] = v4;
    *v4 = v0;
    v4[1] = TokenFetcher.fetchToken();
    v6 = v0[7].i64[0];
    v5 = v0[7].i64[1];
    v7 = v0[6].i64[0];
    v8 = v0[5].i64[0];
    v9 = v0[1].i64[0];

    return TokenFetcher.fetchCredential(issuerInfo:tokenKey:rateLimit:)(v8, v5, v6, v7);
  }
}

{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[9];
  v4 = v0[7];
  v5 = v0[5];
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[10], &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMd, &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMR);

  v6 = v0[1];

  return v6(v2, v1);
}

{
  v1 = v0[21];
  v2 = v0[22];
  v3 = ARCToken.Credential.present()();
  if (v2)
  {
    v5 = v0[21];
    v6 = v0[10];
LABEL_11:

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMd, &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMR);
    v31 = v0[9];
    v30 = v0[10];
    v32 = v0[7];
    v33 = v0[5];

    v34 = v0[1];

    return v34();
  }

  v40 = v3;
  v41 = v4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = v0[21];
  v8 = v0[5];
  v9 = v0[2];
  v10 = v0[3];
  v11 = static TokenCache.shared;
  v12 = (v9 + *(type metadata accessor for TokenFetcher(0) + 20));
  v14 = *v12;
  v13 = v12[1];
  v15 = *(v11 + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock);

  os_unfair_lock_lock((v15 + 24));
  v16 = TokenCache.validTokens(tokensForUser:user:)(*(v15 + 16), v14, v13);
  v17 = *(v11 + OBJC_IVAR____TtC8CipherML10TokenCache_currentDate + 8);
  (*(v11 + OBJC_IVAR____TtC8CipherML10TokenCache_currentDate))();
  v18 = (v8 + *(v10 + 20));
  *v18 = v7;
  v18[1] = 0;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
  }

  v20 = v16[2];
  v19 = v16[3];
  if (v20 >= v19 >> 1)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1, v20 + 1, 1, v16);
  }

  v21 = v0[21];
  v23 = v0[4];
  v22 = v0[5];
  v16[2] = v20 + 1;
  outlined init with take of TokenCache.CachedToken(v22, v16 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v20, type metadata accessor for TokenCache.CachedToken);

  v24 = *(v15 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *(v15 + 16);
  *(v15 + 16) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, v14, v13, isUniquelyReferenced_nonNull_native);

  v26 = *(v15 + 16);
  *(v15 + 16) = v42;

  os_unfair_lock_unlock((v15 + 24));

  TokenCache.save()();
  v27 = v0[21];
  if (v28)
  {
    v6 = v0[10];
    v29 = v0[21];
    outlined consume of Data._Representation(v40, v41);
    goto LABEL_11;
  }

  v36 = v0[9];
  v37 = v0[7];
  v38 = v0[5];
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[10], &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMd, &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMR);

  v39 = v0[1];

  return v39(v40, v41);
}

{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[10], &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMd, &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMR);
  v1 = v0[17];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[10], &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMd, &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMR);
  v1 = v0[22];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t TokenFetcher.fetchToken()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v4;
  v8 = *(*v4 + 88);
  v9 = *v4;
  *(v7 + 96) = a3;
  *(v7 + 104) = v3;

  if (v3)
  {
    v10 = RequestsManager.PIRContext.requestOPRFData(for:networkManager:);
  }

  else
  {
    v11 = *(v7 + 64);
    *(v7 + 112) = a2;
    *(v7 + 120) = a1;
    *(v7 + 184) = *(v11 + 48);
    v10 = TokenFetcher.fetchToken();
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t TokenFetcher.fetchToken()(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 128);
  v8 = *v3;
  v6[17] = v2;

  v9 = v6[7];
  if (v2)
  {
    outlined destroy of TokenFetcher.TokenFetchContext(v9, type metadata accessor for TokenFetcher.TokenFetchContext);
    v10 = TokenFetcher.fetchToken();
  }

  else
  {
    v6[18] = a2;
    v6[19] = a1;
    outlined destroy of TokenFetcher.TokenFetchContext(v9, type metadata accessor for TokenFetcher.TokenFetchContext);
    v10 = TokenFetcher.fetchToken();
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t TokenFetcher.fetchToken()(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 160);
  v7 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v5 = TokenFetcher.fetchToken();
  }

  else
  {
    v5 = TokenFetcher.fetchToken();
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t TokenFetcher.fetchTokensInBackground(count:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for TokenCache.CachedToken(0);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  Context = type metadata accessor for TokenFetcher.TokenFetchContext(0);
  v2[7] = Context;
  v7 = *(*(Context - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMd, &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMR);
  v2[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v10 = swift_task_alloc();
  v2[11] = v10;
  v11 = swift_task_alloc();
  v2[12] = v11;
  *v11 = v2;
  v11[1] = TokenFetcher.fetchTokensInBackground(count:);

  return TokenFetcher.fetchContext()(v10);
}

{
  v3 = *v2;
  v4 = *(*v2 + 160);
  v7 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v5 = TokenFetcher.fetchTokensInBackground(count:);
  }

  else
  {
    v5 = TokenFetcher.fetchTokensInBackground(count:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t TokenFetcher.fetchTokensInBackground(count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v4;
  v8 = *(*v4 + 96);
  v9 = *v4;
  *(v7 + 104) = a3;
  *(v7 + 112) = v3;

  if (v3)
  {
    v10 = TokenFetcher.fetchTokensInBackground(count:);
  }

  else
  {
    v11 = *(v7 + 72);
    *(v7 + 120) = a2;
    *(v7 + 128) = a1;
    *(v7 + 184) = *(v11 + 48);
    v10 = TokenFetcher.fetchTokensInBackground(count:);
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t TokenFetcher.fetchTokensInBackground(count:)()
{
  v1 = *(v0 + 104);
  v2 = (*(v0 + 88) + *(v0 + 184));
  v3 = *(v0 + 120);
  *v2 = vextq_s8(v3, v3, 8uLL);
  v2[1].i64[0] = v1;
  if ((v3.i64[0] & 0x2000000000000000) != 0)
  {
    v11 = *(v0 + 128);
    v12 = *(v0 + 80);
    v13 = *(v0 + 64);
    v14 = *(v0 + 72);
    v15 = *(v0 + 56);
    v17 = *(v0 + 16);
    v16 = *(v0 + 24);
    v18 = *(v0 + 120) & 0xDFFFFFFFFFFFFFFFLL;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(*(v0 + 88), v12, &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMd, &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMR);
    v19 = (v12 + *(v14 + 48));
    v20 = v19[2];
    outlined consume of TokenFetcher.TokenKey(*v19, v19[1]);
    outlined init with take of TokenCache.CachedToken(v12, v13, type metadata accessor for TokenFetcher.IssuerInfo);
    v21 = (v13 + *(v15 + 20));
    *v21 = v11;
    v21[1] = v18;
    outlined copy of Data._Representation(v11, v18);
    v22 = swift_task_alloc();
    *(v0 + 136) = v22;
    v22[2] = v17;
    v22[3] = v16;
    v22[4] = v13;
    v23 = *(MEMORY[0x277D85A48] + 4);
    v24 = swift_task_alloc();
    *(v0 + 144) = v24;
    *v24 = v0;
    v24[1] = TokenFetcher.fetchTokensInBackground(count:);

    return MEMORY[0x2822008A8]();
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 160) = v4;
    *v4 = v0;
    v4[1] = TokenFetcher.fetchTokensInBackground(count:);
    v6 = *(v0 + 120);
    v5 = *(v0 + 128);
    v7 = *(v0 + 104);
    v8 = *(v0 + 88);
    v9 = *(v0 + 24);

    return TokenFetcher.fetchCredential(issuerInfo:tokenKey:rateLimit:)(v8, v5, v6, v7);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = TokenFetcher.fetchTokensInBackground(count:);
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = TokenFetcher.fetchTokensInBackground(count:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  outlined destroy of TokenFetcher.TokenFetchContext(v0[8], type metadata accessor for TokenFetcher.TokenFetchContext);
  v1 = v0[19];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  TokenCache.save()();
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v2, &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMd, &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMR);
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[6];

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[17];
  v2 = v0[11];
  v3 = v0[8];

  outlined destroy of TokenFetcher.TokenFetchContext(v3, type metadata accessor for TokenFetcher.TokenFetchContext);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v2, &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMd, &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMR);
  v4 = v0[19];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[8];
  v8 = v0[6];

  v9 = v0[1];

  return v9();
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = static TokenCache.shared;
  v6 = (v3 + *(type metadata accessor for TokenFetcher(0) + 20));
  v8 = *v6;
  v7 = v6[1];
  v9 = *(v5 + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock);

  os_unfair_lock_lock((v9 + 24));
  v10 = TokenCache.validTokens(tokensForUser:user:)(*(v9 + 16), v8, v7);
  v11 = *(v5 + OBJC_IVAR____TtC8CipherML10TokenCache_currentDate);
  v12 = *(v5 + OBJC_IVAR____TtC8CipherML10TokenCache_currentDate + 8);
  v11();
  v13 = (v2 + *(v4 + 20));
  *v13 = v1;
  v13[1] = 0;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10[2] + 1, 1, v10);
  }

  v15 = v10[2];
  v14 = v10[3];
  if (v15 >= v14 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v14 > 1, v15 + 1, 1, v10);
  }

  v16 = v0[21];
  v18 = v0[5];
  v17 = v0[6];
  v10[2] = v15 + 1;
  outlined init with take of TokenCache.CachedToken(v17, v10 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v15, type metadata accessor for TokenCache.CachedToken);

  v19 = *(v9 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = *(v9 + 16);
  *(v9 + 16) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, v8, v7, isUniquelyReferenced_nonNull_native);

  *(v9 + 16) = v29;
  os_unfair_lock_unlock((v9 + 24));

  v21 = v0[22];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v22 = v0[11];
  TokenCache.save()();
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v22, &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMd, &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMR);
  v24 = v0[10];
  v23 = v0[11];
  v25 = v0[8];
  v26 = v0[6];

  v27 = v0[1];

  return v27();
}

{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v5 = v0[6];

  v6 = v0[1];

  return v6();
}

{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[11], &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMd, &_s8CipherML12TokenFetcherV10IssuerInfo33_BD0C5630996361E1FDE806BA0BB9D37CLLV06issuerF0_AC0C3KeyO05tokenO0tMR);
  v1 = v0[22];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v5 = v0[6];

  v6 = v0[1];

  return v6();
}

uint64_t TokenFetcher.fetchContext()(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = type metadata accessor for URL.DirectoryHint();
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v5 = *(v4 + 64) + 15;
  v2[15] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v2[18] = v7;
  v8 = *(v7 - 8);
  v2[19] = v8;
  v9 = *(v8 + 64) + 15;
  v2[20] = swift_task_alloc();
  v10 = *(*(type metadata accessor for TokenIssuerDirectory() - 8) + 64) + 15;
  v11 = swift_task_alloc();
  v2[21] = v11;
  v12 = swift_task_alloc();
  v2[22] = v12;
  *v12 = v2;
  v12[1] = TokenFetcher.fetchContext();

  return TokenFetcher.fetchTokenDirectory()(v11);
}

uint64_t TokenFetcher.fetchContext()()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = TokenFetcher.fetchContext();
  }

  else
  {
    v3 = TokenFetcher.fetchContext();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[21];
  v2 = v0[19];
  v27 = v0[18];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  v8 = v0[12];
  v7 = v0[13];
  URL.absoluteString.getter();
  v0[9] = 0xD00000000000002ALL;
  v0[10] = 0x8000000225037D30;
  (*(v5 + 104))(v6, *MEMORY[0x277CC91D8], v7);
  lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(path:directoryHint:)();
  (*(v5 + 8))(v6, v7);
  (*(v2 + 56))(v4, 0, 1, v27);
  URL.init(string:relativeTo:)();

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v2 + 48))(v3, 1, v27) == 1)
  {
    v9 = v0[21];
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[17], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    lazy protocol witness table accessor for type AuthenticationError and conformance AuthenticationError();
    swift_allocError();
    *v10 = xmmword_2250298B0;
    *(v10 + 16) = 2;
    swift_willThrow();
LABEL_8:
    outlined destroy of TokenFetcher.TokenFetchContext(v9, type metadata accessor for TokenIssuerDirectory);
    v22 = v0[20];
    v21 = v0[21];
    v24 = v0[16];
    v23 = v0[17];
    v25 = v0[15];

    v26 = v0[1];

    return v26();
  }

  v11 = v0[12];
  (*(v0[19] + 32))(v0[20], v0[17], v0[18]);
  v12 = URL.host(percentEncoded:)(1);
  if (!v12.value._object)
  {
    v17 = v0[20];
    v9 = v0[21];
    v18 = v0[18];
    v19 = v0[19];
    lazy protocol witness table accessor for type AuthenticationError and conformance AuthenticationError();
    swift_allocError();
    *v20 = xmmword_2250298A0;
    *(v20 + 16) = 2;
    swift_willThrow();
    (*(v19 + 8))(v17, v18);
    goto LABEL_8;
  }

  v13 = v0[11];
  (*(v0[19] + 16))(v13, v0[20], v0[18]);
  *(v13 + *(type metadata accessor for TokenFetcher.IssuerInfo(0) + 20)) = v12;
  v14 = swift_task_alloc();
  v0[24] = v14;
  *v14 = v0;
  v14[1] = TokenFetcher.fetchContext();
  v15 = v0[12];

  return TokenFetcher.fetchTokenKey()();
}

{
  v1 = *(v0 + 168);
  TokenIssuerDirectory.findTokenKey(tokenKey:currentTime:)(*(v0 + 200), *(v0 + 208), implicit closure #1 in default argument 2 of TokenIssuerDirectory.isValid(tokenKey:tokenType:currentTime:), 0, v0 + 16);
  if (*(v0 + 32))
  {
    v2 = *(v0 + 16);
    if (v2 == 58796)
    {
      if ((*(v0 + 64) & 1) == 0)
      {
        v4 = *(v0 + 56);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 16, &_s8CipherML8TokenKeyVSgMd, &_s8CipherML8TokenKeyVSgMR);
        v5 = *(v0 + 208);
        goto LABEL_14;
      }

      v15 = *(v0 + 200);
      v14 = *(v0 + 208);
      v9 = *(v0 + 160);
      v8 = *(v0 + 168);
      v10 = *(v0 + 144);
      v11 = *(v0 + 152);
      v12 = *(v0 + 88);
      lazy protocol witness table accessor for type AuthenticationError and conformance AuthenticationError();
      swift_allocError();
      *v16 = xmmword_2250298C0;
      v17 = 2;
    }

    else
    {
      if (v2 == 2)
      {
        v3 = *(v0 + 208);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 16, &_s8CipherML8TokenKeyVSgMd, &_s8CipherML8TokenKeyVSgMR);
        v4 = 0;
        v5 = v3 | 0x2000000000000000;
LABEL_14:
        v25 = *(v0 + 168);
        v27 = *(v0 + 128);
        v26 = *(v0 + 136);
        v28 = *(v0 + 120);
        (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
        outlined destroy of TokenFetcher.TokenFetchContext(v25, type metadata accessor for TokenIssuerDirectory);

        v29 = *(v0 + 8);
        v30 = *(v0 + 200);

        return v29(v30, v5, v4);
      }

      v15 = *(v0 + 200);
      v14 = *(v0 + 208);
      v9 = *(v0 + 160);
      v8 = *(v0 + 168);
      v10 = *(v0 + 144);
      v11 = *(v0 + 152);
      v12 = *(v0 + 88);
      lazy protocol witness table accessor for type AuthenticationError and conformance AuthenticationError();
      swift_allocError();
      *v16 = v2;
      *(v16 + 8) = 0;
      v17 = 1;
    }

    *(v16 + 16) = v17;
    swift_willThrow();
    outlined consume of Data._Representation(v15, v14);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 16, &_s8CipherML8TokenKeyVSgMd, &_s8CipherML8TokenKeyVSgMR);
  }

  else
  {
    v7 = *(v0 + 200);
    v6 = *(v0 + 208);
    v9 = *(v0 + 160);
    v8 = *(v0 + 168);
    v10 = *(v0 + 144);
    v11 = *(v0 + 152);
    v12 = *(v0 + 88);
    lazy protocol witness table accessor for type AuthenticationError and conformance AuthenticationError();
    swift_allocError();
    *v13 = xmmword_2250298D0;
    *(v13 + 16) = 2;
    swift_willThrow();
    outlined consume of Data._Representation(v7, v6);
  }

  outlined destroy of TokenFetcher.TokenFetchContext(v12, type metadata accessor for TokenFetcher.IssuerInfo);
  (*(v11 + 8))(v9, v10);
  outlined destroy of TokenFetcher.TokenFetchContext(v8, type metadata accessor for TokenIssuerDirectory);
  v19 = *(v0 + 160);
  v18 = *(v0 + 168);
  v21 = *(v0 + 128);
  v20 = *(v0 + 136);
  v22 = *(v0 + 120);

  v23 = *(v0 + 8);

  return v23();
}

{
  v1 = v0[23];
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  outlined destroy of TokenFetcher.TokenFetchContext(v0[11], type metadata accessor for TokenFetcher.IssuerInfo);
  (*(v4 + 8))(v1, v3);
  outlined destroy of TokenFetcher.TokenFetchContext(v2, type metadata accessor for TokenIssuerDirectory);
  v5 = v0[27];
  v7 = v0[20];
  v6 = v0[21];
  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[15];

  v11 = v0[1];

  return v11();
}

uint64_t TokenFetcher.fetchContext()(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 192);
  v8 = *v3;
  v4[25] = a1;
  v4[26] = a2;
  v4[27] = v2;

  if (v2)
  {
    v6 = TokenFetcher.fetchContext();
  }

  else
  {
    v6 = TokenFetcher.fetchContext();
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t TokenFetcher.fetchCredential(issuerInfo:tokenKey:rateLimit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[28] = a4;
  v5[29] = v4;
  v5[26] = a2;
  v5[27] = a3;
  v5[25] = a1;
  v6 = type metadata accessor for URLRequest();
  v5[30] = v6;
  v7 = *(v6 - 8);
  v5[31] = v7;
  v8 = *(v7 + 64) + 15;
  v5[32] = swift_task_alloc();
  v9 = type metadata accessor for TokenFetcher.IssuerInfo(0);
  v5[33] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](TokenFetcher.fetchCredential(issuerInfo:tokenKey:rateLimit:), 0, 0);
}

uint64_t TokenFetcher.fetchCredential(issuerInfo:tokenKey:rateLimit:)()
{
  v49 = v0;
  if (one-time initialization token for networking != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 272);
  v2 = *(v0 + 200);
  v3 = type metadata accessor for Logger();
  *(v0 + 280) = __swift_project_value_buffer(v3, static Logger.networking);
  outlined init with copy of TokenFetcher(v2, v1, type metadata accessor for TokenFetcher.IssuerInfo);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 272);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v39 = v9;
    *v8 = 136446210;
    v10 = URL.absoluteString.getter();
    v12 = v11;
    outlined destroy of TokenFetcher.TokenFetchContext(v7, type metadata accessor for TokenFetcher.IssuerInfo);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v39);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_224E26000, v4, v5, "Fetching credential from '%{public}s'", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA61F40](v9, -1, -1);
    MEMORY[0x22AA61F40](v8, -1, -1);
  }

  else
  {

    outlined destroy of TokenFetcher.TokenFetchContext(v7, type metadata accessor for TokenFetcher.IssuerInfo);
  }

  v14 = (*(v0 + 200) + *(*(v0 + 264) + 20));
  specialized static ARCToken.request(issuerName:issuerKey:rateLimit:)(*v14, v14[1], *(v0 + 208), *(v0 + 216), *(v0 + 224), &v39);
  v15 = v39;
  v16 = BYTE2(v39);
  v17 = v40;
  *(v0 + 288) = v40;
  v18 = v41;
  v19 = v42;
  *(v0 + 296) = v41;
  v20 = v43;
  v21 = v44;
  v23 = v45;
  v22 = v46;
  *(v0 + 304) = v46;
  v24 = v47;
  *(v0 + 312) = v47;
  v25 = v48;
  *(v0 + 320) = v48;
  v26 = *(v0 + 256);
  v27 = v18;
  v28 = *(v0 + 232);
  v29 = *(v0 + 200);
  *(v0 + 16) = v15;
  *(v0 + 18) = v16;
  *(v0 + 24) = v17;
  *(v0 + 32) = v18;
  *(v0 + 48) = v19;
  *(v0 + 64) = v20;
  *(v0 + 80) = v21;
  *(v0 + 96) = v23;
  *(v0 + 104) = v22;
  *(v0 + 112) = v24;
  *(v0 + 128) = v25;
  TokenFetcher.urlRequest(url:)();
  URLRequest.httpMethod.setter();
  ARCToken.TokenRequest.requestData.getter(v15 | (v16 << 16), v17, v27);
  URLRequest.httpBody.setter();
  v30._countAndFlagsBits = 0x747065636341;
  v31.value._countAndFlagsBits = 0xD000000000000027;
  v31.value._object = 0x8000000225037E70;
  v30._object = 0xE600000000000000;
  URLRequest.setValue(_:forHTTPHeaderField:)(v31, v30);
  v32._countAndFlagsBits = 0x2D746E65746E6F43;
  v32._object = 0xEC00000065707954;
  v33.value._object = 0x8000000225037EA0;
  v33.value._countAndFlagsBits = 0xD000000000000026;
  URLRequest.setValue(_:forHTTPHeaderField:)(v33, v32);
  v34 = *(*(v28 + *(type metadata accessor for TokenFetcher(0) + 24)) + 16);
  v35 = *(MEMORY[0x277CC9D18] + 4);
  v36 = swift_task_alloc();
  *(v0 + 328) = v36;
  *v36 = v0;
  v36[1] = TokenFetcher.fetchCredential(issuerInfo:tokenKey:rateLimit:);
  v37 = *(v0 + 256);

  return MEMORY[0x28211ECF8](v37, 0);
}

{
  v1 = *(v0 + 352);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = v2;
  v4 = *(v0 + 352);
  if ([v3 statusCode] != 200 || (v5 = MEMORY[0x22AA609C0](0x2D746E65746E6F43, 0xEC00000065707954), v6 = objc_msgSend(v3, sel_valueForHTTPHeaderField_, v5), v5, !v6))
  {

    goto LABEL_11;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = *(v0 + 352);
  if (v7 == 0xD000000000000027 && 0x8000000225037E70 == v9)
  {

    goto LABEL_18;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v12 & 1) == 0)
  {
LABEL_11:
    v13 = *(v0 + 280);
    v14 = *(v0 + 352);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 352);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138543362;
      *(v18 + 4) = v17;
      *v19 = v17;
      v20 = v17;
      _os_log_impl(&dword_224E26000, v15, v16, "Failed to fetch credential. %{public}@", v18, 0xCu);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v19, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x22AA61F40](v19, -1, -1);
      MEMORY[0x22AA61F40](v18, -1, -1);
    }

    v21 = *(v0 + 344);
    v56 = *(v0 + 352);
    v22 = *(v0 + 336);
    v24 = *(v0 + 288);
    v23 = *(v0 + 296);
    v26 = *(v0 + 248);
    v25 = *(v0 + 256);
    v27 = *(v0 + 240);

    lazy protocol witness table accessor for type AuthenticationError and conformance AuthenticationError();
    swift_allocError();
    *v28 = xmmword_2250298E0;
    *(v28 + 16) = 2;
    swift_willThrow();
    outlined consume of Data._Representation(v24, v23);
    outlined consume of Data._Representation(v22, v21);
    outlined destroy of ARCToken.ClientState(v0 + 40);

    (*(v26 + 8))(v25, v27);
    goto LABEL_14;
  }

LABEL_18:
  v33 = *(v0 + 360);
  v34 = *(v0 + 336);
  v35 = *(v0 + 344);
  v37 = *(v0 + 312);
  v36 = *(v0 + 320);
  v38 = *(v0 + 304);
  v39 = *(v0 + 248);
  outlined init with copy of ARCToken.TokenChallenge(v0 + 40, v0 + 136);
  outlined copy of Data._Representation(v38, v37);
  v40 = dispatch thunk of ARCAwaitingActivationWrapper.makeCredential(responseData:)();
  v41 = v33;
  v42 = (v39 + 8);
  v43 = *(v0 + 344);
  v44 = *(v0 + 352);
  v45 = *(v0 + 336);
  v47 = *(v0 + 304);
  v46 = *(v0 + 312);
  v49 = *(v0 + 288);
  v48 = *(v0 + 296);
  if (v41)
  {
    (*v42)(*(v0 + 256), *(v0 + 240));
    outlined consume of Data._Representation(v47, v46);
    outlined destroy of ARCToken.TokenChallenge(v0 + 40);

    outlined consume of Data._Representation(v45, v43);
    outlined destroy of ARCToken.ClientState(v0 + 40);
    outlined consume of Data._Representation(v49, v48);
LABEL_14:
    v29 = *(v0 + 272);
    v30 = *(v0 + 256);

    v31 = *(v0 + 8);

    return v31();
  }

  v50 = v40;
  v55 = *(v0 + 120);
  v57 = *(v0 + 272);
  (*v42)(*(v0 + 256), *(v0 + 240));
  outlined consume of Data._Representation(v49, v48);

  outlined consume of Data._Representation(v45, v43);
  outlined destroy of ARCToken.ClientState(v0 + 40);
  type metadata accessor for ARCToken.Credential();
  v51 = swift_allocObject();
  v52 = *(v0 + 56);
  *(v51 + 16) = *(v0 + 40);
  *(v51 + 32) = v52;
  v53 = *(v0 + 88);
  *(v51 + 48) = *(v0 + 72);
  *(v51 + 64) = v53;
  *(v51 + 80) = v47;
  *(v51 + 88) = v46;
  *(v51 + 96) = v55;
  *(v51 + 104) = v50;

  v54 = *(v0 + 8);

  return v54(v51);
}

{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  outlined consume of Data._Representation(v0[36], v0[37]);
  outlined destroy of ARCToken.ClientState((v0 + 5));
  (*(v2 + 8))(v1, v3);
  v4 = v0[45];
  v5 = v0[34];
  v6 = v0[32];

  v7 = v0[1];

  return v7();
}

uint64_t TokenFetcher.fetchCredential(issuerInfo:tokenKey:rateLimit:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 328);
  v9 = *v4;
  v5[42] = a1;
  v5[43] = a2;
  v5[44] = a3;
  v5[45] = v3;

  if (v3)
  {
    v7 = TokenFetcher.fetchCredential(issuerInfo:tokenKey:rateLimit:);
  }

  else
  {
    v7 = TokenFetcher.fetchCredential(issuerInfo:tokenKey:rateLimit:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t closure #1 in TokenFetcher.fetchTokenTasks(context:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v6 = *(type metadata accessor for TokenFetcher.TokenFetchContext(0) - 8);
  v5[13] = v6;
  v5[14] = *(v6 + 64);
  v5[15] = swift_task_alloc();
  v7 = *(type metadata accessor for TokenFetcher(0) - 8);
  v5[16] = v7;
  v5[17] = *(v7 + 64);
  v5[18] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in TokenFetcher.fetchTokenTasks(context:count:), 0, 0);
}

void closure #1 in TokenFetcher.fetchTokenTasks(context:count:)()
{
  v1 = *(v0 + 80);
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v1)
    {
      v36 = *(v0 + 104);
      v37 = *(v0 + 128);
      v35 = **(v0 + 72);
      v2 = type metadata accessor for TaskPriority();
      v3 = 0;
      v4 = *(v2 - 8);
      v34 = *(v4 + 56);
      v33 = (v4 + 48);
      v32 = (v4 + 8);
      do
      {
        v8 = *(v0 + 160);
        v38 = *(v0 + 152);
        v39 = v3;
        v9 = *(v0 + 136);
        v10 = *(v0 + 144);
        v11 = *(v0 + 112);
        v12 = *(v0 + 120);
        v13 = *(v0 + 88);
        v14 = *(v0 + 96);
        v34(v8, 1, 1, v2);
        outlined init with copy of TokenFetcher(v13, v10, type metadata accessor for TokenFetcher);
        outlined init with copy of TokenFetcher(v14, v12, type metadata accessor for TokenFetcher.TokenFetchContext);
        v15 = (*(v37 + 80) + 32) & ~*(v37 + 80);
        v16 = v2;
        v17 = (v9 + *(v36 + 80) + v15) & ~*(v36 + 80);
        v18 = swift_allocObject();
        *(v18 + 16) = 0;
        v19 = (v18 + 16);
        *(v18 + 24) = 0;
        outlined init with take of TokenCache.CachedToken(v10, v18 + v15, type metadata accessor for TokenFetcher);
        v20 = v18 + v17;
        v2 = v16;
        outlined init with take of TokenCache.CachedToken(v12, v20, type metadata accessor for TokenFetcher.TokenFetchContext);
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v8, v38, &_sScPSgMd, &_sScPSgMR);
        v21 = (*v33)(v38, 1, v16);
        v22 = *(v0 + 152);
        if (v21 == 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 152), &_sScPSgMd, &_sScPSgMR);
          if (!*v19)
          {
            goto LABEL_10;
          }
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*v32)(v22, v2);
          if (!*v19)
          {
LABEL_10:
            v24 = 0;
            v26 = 0;
            goto LABEL_11;
          }
        }

        v23 = *(v18 + 24);
        swift_getObjectType();
        swift_unknownObjectRetain();
        v24 = dispatch thunk of Actor.unownedExecutor.getter();
        v26 = v25;
        swift_unknownObjectRelease();
LABEL_11:

        if (v26 | v24)
        {
          v5 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v24;
          *(v0 + 40) = v26;
        }

        else
        {
          v5 = 0;
        }

        v3 = v39 + 1;
        v6 = *(v0 + 160);
        v7 = *(v0 + 80);
        *(v0 + 48) = 1;
        *(v0 + 56) = v5;
        *(v0 + 64) = v35;
        swift_task_create();

        outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_sScPSgMd, &_sScPSgMR);
      }

      while (v39 + 1 != v7);
    }

    v28 = *(v0 + 152);
    v27 = *(v0 + 160);
    v29 = *(v0 + 144);
    v30 = *(v0 + 120);

    v31 = *(v0 + 8);

    v31();
  }
}

uint64_t closure #1 in closure #1 in TokenFetcher.fetchTokenTasks(context:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v6 = type metadata accessor for TokenCache.CachedToken(0);
  v4[3] = v6;
  v7 = *(v6 - 8);
  v4[4] = v7;
  v8 = *(v7 + 64) + 15;
  v4[5] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = closure #1 in closure #1 in TokenFetcher.fetchTokenTasks(context:count:);

  return TokenFetcher.fetchTokenInner(context:)(a4);
}

uint64_t closure #1 in closure #1 in TokenFetcher.fetchTokenTasks(context:count:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 48);
  v6 = *v3;
  v4[7] = a1;
  v4[8] = a2;

  if (v2)
  {
    v7 = v4[5];

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {

    return MEMORY[0x2822009F8](closure #1 in closure #1 in TokenFetcher.fetchTokenTasks(context:count:), 0, 0);
  }
}

uint64_t closure #1 in closure #1 in TokenFetcher.fetchTokenTasks(context:count:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];
  v6 = static TokenCache.shared;
  v7 = (v4 + *(type metadata accessor for TokenFetcher(0) + 20));
  v9 = *v7;
  v8 = v7[1];
  v10 = *(v6 + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock);
  outlined copy of Data._Representation(v2, v1);
  os_unfair_lock_lock((v10 + 24));
  v25 = v9;
  v11 = TokenCache.validTokens(tokensForUser:user:)(*(v10 + 16), v9, v8);
  v12 = *(v6 + OBJC_IVAR____TtC8CipherML10TokenCache_currentDate);
  v13 = *(v6 + OBJC_IVAR____TtC8CipherML10TokenCache_currentDate + 8);
  v12();
  v14 = (v3 + *(v5 + 20));
  *v14 = v2;
  v14[1] = v1 | 0x2000000000000000;
  outlined copy of Data._Representation(v2, v1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
  }

  v16 = v11[2];
  v15 = v11[3];
  if (v16 >= v15 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v15 > 1, v16 + 1, 1, v11);
  }

  v18 = v0[7];
  v17 = v0[8];
  v19 = v0[4];
  v20 = v0[5];
  v11[2] = v16 + 1;
  outlined init with take of TokenCache.CachedToken(v20, v11 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v16, type metadata accessor for TokenCache.CachedToken);

  v21 = *(v10 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(v10 + 16);
  *(v10 + 16) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, v25, v8, isUniquelyReferenced_nonNull_native);

  *(v10 + 16) = v26;
  os_unfair_lock_unlock((v10 + 24));
  outlined consume of Data._Representation(v18, v17);
  outlined consume of Data._Representation(v18, v17);

  v23 = v0[1];

  return v23();
}

uint64_t TokenFetcher.fetchTokenInner(context:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for URLRequest();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  Context = type metadata accessor for TokenFetcher.TokenFetchContext(0);
  v2[7] = Context;
  v7 = *(*(Context - 8) + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](TokenFetcher.fetchTokenInner(context:), 0, 0);
}

uint64_t TokenFetcher.fetchTokenInner(context:)()
{
  v38 = v0;
  if (one-time initialization token for networking != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  v0[9] = __swift_project_value_buffer(v3, static Logger.networking);
  outlined init with copy of TokenFetcher(v2, v1, type metadata accessor for TokenFetcher.TokenFetchContext);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v37 = v9;
    *v8 = 136446210;
    v10 = URL.absoluteString.getter();
    v12 = v11;
    outlined destroy of TokenFetcher.TokenFetchContext(v7, type metadata accessor for TokenFetcher.TokenFetchContext);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v37);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_224E26000, v4, v5, "Fetching token from '%{public}s'", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA61F40](v9, -1, -1);
    MEMORY[0x22AA61F40](v8, -1, -1);
  }

  else
  {

    outlined destroy of TokenFetcher.TokenFetchContext(v7, type metadata accessor for TokenFetcher.TokenFetchContext);
  }

  v14 = v0[7];
  v15 = v0[2];
  v16 = type metadata accessor for TokenFetcher.IssuerInfo(0);
  v17 = specialized static PrivateAccessToken.newBlindRSATokenChallenge(for:)(*(v15 + *(v16 + 20)), *(v15 + *(v16 + 20) + 8));
  v0[10] = v17;
  v0[11] = v18;
  v19 = specialized static PrivateAccessToken.TokenRequest.request(challenge:publicKey:)(v17, v18, *(v15 + *(v14 + 20)), *(v15 + *(v14 + 20) + 8));
  v0[12] = v20;
  v0[13] = v21;
  v0[14] = v22;
  LODWORD(v15) = v19;
  v23 = v0[6];
  v24 = v0[2];
  v25 = v0[3];
  v26 = v20;
  v27 = v21;
  TokenFetcher.urlRequest(url:)();
  URLRequest.httpMethod.setter();
  PrivateAccessToken.TokenRequest.requestData.getter(v15 & 0xFFFFFF, v26, v27);
  URLRequest.httpBody.setter();
  v28._countAndFlagsBits = 0x747065636341;
  v29.value._countAndFlagsBits = 0xD000000000000022;
  v29.value._object = 0x8000000225037DE0;
  v28._object = 0xE600000000000000;
  URLRequest.setValue(_:forHTTPHeaderField:)(v29, v28);
  v30._countAndFlagsBits = 0x2D746E65746E6F43;
  v30._object = 0xEC00000065707954;
  v31.value._object = 0x8000000225037E10;
  v31.value._countAndFlagsBits = 0xD000000000000021;
  URLRequest.setValue(_:forHTTPHeaderField:)(v31, v30);
  v32 = *(*(v25 + *(type metadata accessor for TokenFetcher(0) + 24)) + 16);
  v33 = *(MEMORY[0x277CC9D18] + 4);
  v34 = swift_task_alloc();
  v0[15] = v34;
  *v34 = v0;
  v34[1] = TokenFetcher.fetchTokenInner(context:);
  v35 = v0[6];

  return MEMORY[0x28211ECF8](v35, 0);
}

{
  v1 = *(v0 + 144);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = v2;
  v4 = *(v0 + 144);
  if ([v3 statusCode] != 200 || (v5 = MEMORY[0x22AA609C0](0x2D746E65746E6F43, 0xEC00000065707954), v6 = objc_msgSend(v3, sel_valueForHTTPHeaderField_, v5), v5, !v6))
  {

    goto LABEL_11;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = *(v0 + 144);
  if (v7 == 0xD000000000000022 && 0x8000000225037DE0 == v9)
  {

    goto LABEL_18;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v12 & 1) == 0)
  {
LABEL_11:
    v13 = *(v0 + 72);
    v14 = *(v0 + 144);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 144);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138543362;
      *(v18 + 4) = v17;
      *v19 = v17;
      v20 = v17;
      _os_log_impl(&dword_224E26000, v15, v16, "Failed to fetch token. %{public}@", v18, 0xCu);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v19, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x22AA61F40](v19, -1, -1);
      MEMORY[0x22AA61F40](v18, -1, -1);
    }

    v21 = *(v0 + 128);
    v23 = *(v0 + 104);
    v22 = *(v0 + 112);
    v25 = *(v0 + 88);
    v24 = *(v0 + 96);
    v26 = *(v0 + 80);
    v27 = *(v0 + 40);
    v49 = *(v0 + 48);
    v51 = *(v0 + 144);
    v46 = *(v0 + 136);
    v47 = *(v0 + 32);

    lazy protocol witness table accessor for type AuthenticationError and conformance AuthenticationError();
    swift_allocError();
    *v28 = xmmword_2250298E0;
    *(v28 + 16) = 2;
    swift_willThrow();

    outlined consume of Data._Representation(v24, v23);
    outlined consume of Data._Representation(v26, v25);
    outlined consume of Data._Representation(v21, v46);

    (*(v27 + 8))(v49, v47);
    goto LABEL_14;
  }

LABEL_18:
  v33 = *(v0 + 152);
  v34 = (*(**(v0 + 112) + 96))(*(v0 + 128), *(v0 + 136));
  v36 = v33;
  v37 = *(v0 + 136);
  v38 = *(v0 + 144);
  v39 = *(v0 + 128);
  v40 = *(v0 + 104);
  v41 = *(v0 + 112);
  v42 = *(v0 + 88);
  v43 = *(v0 + 96);
  v44 = *(v0 + 80);
  if (v36)
  {
    (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));

    outlined consume of Data._Representation(v39, v37);

    outlined consume of Data._Representation(v43, v40);
    outlined consume of Data._Representation(v44, v42);
LABEL_14:
    v29 = *(v0 + 64);
    v30 = *(v0 + 48);

    v31 = *(v0 + 8);

    return v31();
  }

  v48 = *(v0 + 64);
  v50 = v35;
  v52 = v34;
  (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));

  outlined consume of Data._Representation(v39, v37);

  outlined consume of Data._Representation(v43, v40);
  outlined consume of Data._Representation(v44, v42);

  v45 = *(v0 + 8);

  return v45(v52, v50);
}

{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[4];

  outlined consume of Data._Representation(v3, v2);
  outlined consume of Data._Representation(v5, v4);
  (*(v7 + 8))(v6, v8);
  v9 = v0[19];
  v10 = v0[8];
  v11 = v0[6];

  v12 = v0[1];

  return v12();
}

uint64_t TokenFetcher.fetchTokenInner(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 120);
  v9 = *v4;
  v5[16] = a1;
  v5[17] = a2;
  v5[18] = a3;
  v5[19] = v3;

  if (v3)
  {
    v7 = TokenFetcher.fetchTokenInner(context:);
  }

  else
  {
    v7 = TokenFetcher.fetchTokenInner(context:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t TokenFetcher.fetchTokenDirectory()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for URLRequest();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](TokenFetcher.fetchTokenDirectory(), 0, 0);
}

uint64_t TokenFetcher.fetchTokenDirectory()()
{
  v1 = v0[3];
  TokenFetcher.tokenDirectoryRequest()(v0[6]);
  v2 = v0[3];
  v3 = *(*(v2 + *(type metadata accessor for TokenFetcher(0) + 24)) + 16);
  v4 = *(MEMORY[0x277CC9D18] + 4);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = TokenFetcher.fetchTokenDirectory();
  v6 = v0[6];

  return MEMORY[0x28211ECF8](v6, 0);
}

{
  v1 = *(v0 + 80);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = v2;
  v4 = *(v0 + 80);
  if ([v3 statusCode] != 200)
  {

LABEL_10:
    if (one-time initialization token for networking != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 80);
    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.networking);
    v28 = v26;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 80);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138543362;
      *(v32 + 4) = v31;
      *v33 = v31;
      v34 = v31;
      _os_log_impl(&dword_224E26000, v29, v30, "Failed to fetch Token Issuer Directory. %{public}@", v32, 0xCu);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v33, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x22AA61F40](v33, -1, -1);
      MEMORY[0x22AA61F40](v32, -1, -1);
    }

    v35 = *(v0 + 72);
    v36 = *(v0 + 80);
    v37 = *(v0 + 64);

    lazy protocol witness table accessor for type AuthenticationError and conformance AuthenticationError();
    swift_allocError();
    *v38 = xmmword_225029900;
    *(v38 + 16) = 2;
    swift_willThrow();
    outlined consume of Data._Representation(v37, v35);

    goto LABEL_15;
  }

  v5 = *(v0 + 88);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 16);
  v9 = type metadata accessor for JSONDecoder();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for TokenIssuerDirectory();
  lazy protocol witness table accessor for type TokenIssuerDirectory and conformance TokenIssuerDirectory(&lazy protocol witness table cache variable for type TokenIssuerDirectory and conformance TokenIssuerDirectory, type metadata accessor for TokenIssuerDirectory);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v12 = *(v0 + 80);
  if (v5)
  {
    v13 = v5;

    if (one-time initialization token for networking != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.networking);
    v15 = v5;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138543362;
      v20 = v13;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_224E26000, v16, v17, "Failed to parse Token Issuer Directory: %{public}@", v18, 0xCu);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v19, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x22AA61F40](v19, -1, -1);
      MEMORY[0x22AA61F40](v18, -1, -1);
    }

    v22 = *(v0 + 72);
    v23 = *(v0 + 80);
    v24 = *(v0 + 64);

    lazy protocol witness table accessor for type AuthenticationError and conformance AuthenticationError();
    swift_allocError();
    *v25 = xmmword_2250298F0;
    *(v25 + 16) = 2;
    swift_willThrow();

    outlined consume of Data._Representation(v24, v22);
LABEL_15:
    (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
    v39 = *(v0 + 48);

    v40 = *(v0 + 8);
    goto LABEL_16;
  }

  v43 = *(v0 + 64);
  v42 = *(v0 + 72);
  (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));

  outlined consume of Data._Representation(v43, v42);

  v40 = *(v0 + 8);
LABEL_16:

  return v40();
}

{
  v1 = v0[11];
  (*(v0[5] + 8))(v0[6], v0[4]);
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t TokenFetcher.fetchTokenDirectory()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 56);
  v9 = *v4;
  v5[8] = a1;
  v5[9] = a2;
  v5[10] = a3;
  v5[11] = v3;

  if (v3)
  {
    v7 = TokenFetcher.fetchTokenDirectory();
  }

  else
  {
    v7 = TokenFetcher.fetchTokenDirectory();
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t TokenFetcher.fetchTokenKey()()
{
  v1[4] = v0;
  v2 = type metadata accessor for URL.DirectoryHint();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v7 = *(v6 + 64) + 15;
  v1[10] = swift_task_alloc();
  v8 = type metadata accessor for URLRequest();
  v1[11] = v8;
  v9 = *(v8 - 8);
  v1[12] = v9;
  v10 = *(v9 + 64) + 15;
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](TokenFetcher.fetchTokenKey(), 0, 0);
}

{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[4];
  v0[2] = 0xD000000000000018;
  v0[3] = 0x8000000225037D60;
  (*(v7 + 104))(v5, *MEMORY[0x277CC91D8], v6);
  lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(path:directoryHint:)();
  (*(v7 + 8))(v5, v6);
  TokenFetcher.urlRequest(url:)();
  (*(v3 + 8))(v2, v4);
  v9 = *(*(v8 + *(type metadata accessor for TokenFetcher(0) + 24)) + 16);
  v10 = *(MEMORY[0x277CC9D18] + 4);
  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = TokenFetcher.fetchTokenKey();
  v12 = v0[13];

  return MEMORY[0x28211ECF8](v12, 0);
}

{
  v1 = v0[17];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2 && [v2 statusCode] == 200)
  {
    v3 = v0[17];
    v4 = v0[10];
    v5 = v0[7];
    (*(v0[12] + 8))(v0[13], v0[11]);

    v6 = v0[1];
    v7 = v0[15];
    v8 = v0[16];

    return v6(v7, v8);
  }

  else
  {
    if (one-time initialization token for networking != -1)
    {
      swift_once();
    }

    v10 = v0[17];
    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.networking);
    v12 = v10;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = v0[17];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543362;
      *(v16 + 4) = v15;
      *v17 = v15;
      v18 = v15;
      _os_log_impl(&dword_224E26000, v13, v14, "Failed to fetch token key. %{public}@", v16, 0xCu);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x22AA61F40](v17, -1, -1);
      MEMORY[0x22AA61F40](v16, -1, -1);
    }

    v19 = v0[16];
    v20 = v0[17];
    v21 = v0[15];

    lazy protocol witness table accessor for type AuthenticationError and conformance AuthenticationError();
    swift_allocError();
    *v22 = xmmword_225029910;
    *(v22 + 16) = 2;
    swift_willThrow();
    outlined consume of Data._Representation(v21, v19);

    v23 = v0[10];
    v24 = v0[7];
    (*(v0[12] + 8))(v0[13], v0[11]);

    v25 = v0[1];

    return v25();
  }
}

{
  v1 = v0[18];
  v2 = v0[10];
  v3 = v0[7];
  (*(v0[12] + 8))(v0[13], v0[11]);

  v4 = v0[1];

  return v4();
}

uint64_t TokenFetcher.fetchTokenKey()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 112);
  v9 = *v4;
  v5[15] = a1;
  v5[16] = a2;
  v5[17] = a3;
  v5[18] = v3;

  if (v3)
  {
    v7 = TokenFetcher.fetchTokenKey();
  }

  else
  {
    v7 = TokenFetcher.fetchTokenKey();
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t TokenFetcher.fetchToken(context:)(uint64_t a1)
{
  v2[95] = v1;
  v2[89] = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v2[101] = swift_task_alloc();
  v4 = *(type metadata accessor for TokenFetcher.TokenFetchContext(0) - 8);
  v2[102] = v4;
  v2[103] = *(v4 + 64);
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v5 = *(type metadata accessor for TokenFetcher(0) - 8);
  v2[106] = v5;
  v2[107] = *(v5 + 64);
  v2[108] = swift_task_alloc();
  v2[109] = swift_task_alloc();

  return MEMORY[0x2822009F8](TokenFetcher.fetchToken(context:), 0, 0);
}

uint64_t TokenFetcher.fetchToken(context:)()
{
  v1 = v0[109];
  v2 = v0[107];
  v3 = v0[106];
  v4 = v0[105];
  v24 = v0[108];
  v25 = v0[104];
  v20 = v0[103];
  v5 = v0[102];
  v6 = v0[101];
  v7 = v0[89];
  v22 = v7;
  v23 = v0[95];
  outlined init with copy of TokenFetcher(v23, v1, type metadata accessor for TokenFetcher);
  outlined init with copy of TokenFetcher(v7, v4, type metadata accessor for TokenFetcher.TokenFetchContext);
  v8 = *(v3 + 80);
  v9 = (v8 + 16) & ~v8;
  v10 = *(v5 + 80);
  v21 = v2 + v10;
  v11 = (v2 + v10 + v9) & ~v10;
  v12 = swift_allocObject();
  outlined init with take of TokenCache.CachedToken(v1, v12 + v9, type metadata accessor for TokenFetcher);
  outlined init with take of TokenCache.CachedToken(v4, v12 + v11, type metadata accessor for TokenFetcher.TokenFetchContext);
  v13 = swift_allocObject();
  v0[110] = v13;
  *(v13 + 16) = &async function pointer to partial apply for implicit closure #1 in TokenFetcher.fetchToken(context:);
  *(v13 + 24) = v12;
  swift_asyncLet_begin();
  TokenFetcher.submitBackgroundTask()();
  v14 = os_transaction_create();
  v0[111] = v14;
  static TaskPriority.background.getter();
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v6, 0, 1, v15);
  outlined init with copy of TokenFetcher(v23, v24, type metadata accessor for TokenFetcher);
  outlined init with copy of TokenFetcher(v22, v25, type metadata accessor for TokenFetcher.TokenFetchContext);
  v16 = (v8 + 32) & ~v8;
  v17 = (v21 + v16) & ~v10;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  outlined init with take of TokenCache.CachedToken(v24, v18 + v16, type metadata accessor for TokenFetcher);
  outlined init with take of TokenCache.CachedToken(v25, v18 + v17, type metadata accessor for TokenFetcher.TokenFetchContext);
  *(v18 + ((v20 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
  swift_unknownObjectRetain();
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in TokenFetcher.fetchToken(context:), v18);

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_sScPSgMd, &_sScPSgMR);

  return MEMORY[0x282200930](v0 + 2, v0 + 87, TokenFetcher.fetchToken(context:), v0 + 82);
}

{
  *(v1 + 896) = v0;
  if (v0)
  {
    v2 = TokenFetcher.fetchToken(context:);
  }

  else
  {
    v2 = TokenFetcher.fetchToken(context:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[111];
  swift_unknownObjectRelease();
  v2 = v0[87];
  v0[113] = v2;
  v3 = v0[88];
  v0[114] = v3;
  outlined copy of Data._Representation(v2, v3);

  return MEMORY[0x282200920](v0 + 2, v0 + 87, TokenFetcher.fetchToken(context:), v0 + 96);
}

{
  return MEMORY[0x2822009F8](TokenFetcher.fetchToken(context:), 0, 0);
}

{
  v1 = v0[110];
  v2 = v0[109];
  v3 = v0[108];
  v4 = v0[105];
  v5 = v0[104];
  v6 = v0[101];

  v7 = v0[1];
  v8 = v0[114];
  v9 = v0[113];

  return v7(v9, v8);
}

{
  v1 = *(v0 + 888);
  swift_unknownObjectRelease();

  return MEMORY[0x282200920](v0 + 16, v0 + 696, TokenFetcher.fetchToken(context:), v0 + 720);
}

{
  return MEMORY[0x2822009F8](TokenFetcher.fetchToken(context:), 0, 0);
}

{
  v1 = v0[110];
  v2 = v0[109];
  v3 = v0[108];
  v4 = v0[105];
  v5 = v0[104];
  v6 = v0[101];

  v7 = v0[1];
  v8 = v0[112];

  return v7();
}

uint64_t implicit closure #1 in TokenFetcher.fetchToken(context:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = implicit closure #1 in TokenFetcher.fetchToken(context:);

  return TokenFetcher.fetchTokenInner(context:)(a2);
}

{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t _s10Foundation4DataVs5Error_pIegHozo_ACsAD_pIegHTrzo_TR(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = _s10Foundation4DataVs5Error_pIegHozo_ACsAD_pIegHTrzo_TRTQ0_;

  return v6();
}

uint64_t _s10Foundation4DataVs5Error_pIegHozo_ACsAD_pIegHTrzo_TRTQ0_(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (!v2)
  {
    v9 = *(v6 + 16);
    *v9 = a1;
    v9[1] = a2;
  }

  v10 = *(v8 + 8);

  return v10();
}

uint64_t closure #1 in TokenFetcher.fetchToken(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](closure #1 in TokenFetcher.fetchToken(context:), 0, 0);
}

uint64_t closure #1 in TokenFetcher.fetchToken(context:)()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  v2 = *(v0 + 16);
  *(v1 + 16) = 3;
  *(v1 + 24) = v2;
  v3 = *(MEMORY[0x277D85A48] + 4);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = closure #1 in TokenFetcher.fetchToken(context:);

  return MEMORY[0x2822008A8]();
}

{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = closure #1 in TokenFetcher.fetchToken(context:);
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = closure #1 in TokenFetcher.fetchToken(context:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  TokenCache.save()();
  if (v2)
  {
    if (one-time initialization token for networking != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.networking);
    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138543362;
      v9 = v2;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_224E26000, v5, v6, "Failed to fetch extra tokens: %{public}@", v7, 0xCu);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x22AA61F40](v8, -1, -1);
      MEMORY[0x22AA61F40](v7, -1, -1);
    }

    else
    {
    }
  }

  v11 = *(v0 + 8);

  return v11();
}

{
  v1 = v0[4];

  v2 = v0[6];
  if (one-time initialization token for networking != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.networking);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_224E26000, v5, v6, "Failed to fetch extra tokens: %{public}@", v7, 0xCu);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v8, -1, -1);
    MEMORY[0x22AA61F40](v7, -1, -1);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a3, v27 - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t TokenFetcher.tokenDirectoryURL()()
{
  v1 = type metadata accessor for URL.DirectoryHint();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v20 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + *(type metadata accessor for TokenFetcher(0) + 28)) == 1)
  {
    if (!URL.host(percentEncoded:)(1).value._object)
    {
LABEL_5:
      lazy protocol witness table accessor for type AuthenticationError and conformance AuthenticationError();
      swift_allocError();
      *v15 = 0;
      *(v15 + 8) = 0;
      *(v15 + 16) = 2;
      return swift_willThrow();
    }

    URL.init(string:)();
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {

      outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      goto LABEL_5;
    }

    (*(v11 + 32))(v14, v9, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd, &_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMR);
    v17 = *(type metadata accessor for URLQueryItem() - 8);
    v18 = *(v17 + 72);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    *(swift_allocObject() + 16) = xmmword_225022960;
    URLQueryItem.init(name:value:)();

    URL.appending(queryItems:)();

    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    v20[0] = 0xD00000000000002ALL;
    v20[1] = 0x8000000225037D30;
    (*(v2 + 104))(v5, *MEMORY[0x277CC91D8], v1);
    lazy protocol witness table accessor for type String and conformance String();
    URL.appending<A>(path:directoryHint:)();
    return (*(v2 + 8))(v5, v1);
  }
}

uint64_t TokenFetcher.tokenDirectoryRequest()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v33[-v10];
  MEMORY[0x28223BE20](v9);
  v13 = &v33[-v12];
  result = TokenFetcher.tokenDirectoryURL()();
  if (!v1)
  {
    v40 = 0;
    if (one-time initialization token for networking != -1)
    {
      swift_once();
    }

    v39 = a1;
    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.networking);
    v38 = v4[2];
    v38(v11, v13, v3);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v36 = v18;
      v37 = swift_slowAlloc();
      v41 = v37;
      *v18 = 136446210;
      lazy protocol witness table accessor for type TokenIssuerDirectory and conformance TokenIssuerDirectory(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v35 = v16;
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      v22 = v4[1];
      v34 = v17;
      v23 = v11;
      v24 = v22;
      v22(v23, v3);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v41);

      v27 = v35;
      v26 = v36;
      *(v36 + 1) = v25;
      v28 = v26;
      _os_log_impl(&dword_224E26000, v27, v34, "Fetching token issuer directory from %{public}s", v26, 0xCu);
      v29 = v37;
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x22AA61F40](v29, -1, -1);
      MEMORY[0x22AA61F40](v28, -1, -1);
    }

    else
    {

      v30 = v11;
      v24 = v4[1];
      v24(v30, v3);
    }

    v38(v8, v13, v3);
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    v31._countAndFlagsBits = 0x747065636341;
    v32.value._object = 0x8000000225037D80;
    v32.value._countAndFlagsBits = 0xD00000000000002ALL;
    v31._object = 0xE600000000000000;
    URLRequest.setValue(_:forHTTPHeaderField:)(v32, v31);
    return (v24)(v13, v3);
  }

  return result;
}

uint64_t outlined init with take of TokenCache.CachedToken(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in TokenFetcher.fetchTokenTasks(context:count:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return closure #1 in TokenFetcher.fetchTokenTasks(context:count:)(a1, a2, v6, v7, v8);
}

uint64_t type metadata completion function for TokenFetcher()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ManagedURLSession();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TokenFetcher.TokenKey(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 24))
  {
    return (*a1 + 3);
  }

  v3 = ((2 * ((*(a1 + 8) & 0x1000000000000000) != 0)) | ((*(a1 + 8) >> 60) >> 1) & 1) ^ 3;
  if (v3 >= 2)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for TokenFetcher.TokenKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 3;
    if (a3 >= 3)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((2 * a2) & 2 | 1u) << 60;
      *(result + 16) = 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t type metadata completion function for TokenFetcher.IssuerInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TokenIssuerDirectory and conformance TokenIssuerDirectory(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of TokenFetcher(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in TokenFetcher.fetchTokenTasks(context:count:)()
{
  v2 = *(type metadata accessor for TokenFetcher(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for TokenFetcher.TokenFetchContext(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return closure #1 in closure #1 in TokenFetcher.fetchTokenTasks(context:count:)(v7, v8, v0 + v3, v0 + v6);
}

uint64_t partial apply for implicit closure #1 in TokenFetcher.fetchToken(context:)()
{
  v2 = *(type metadata accessor for TokenFetcher(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for TokenFetcher.TokenFetchContext(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = dispatch thunk of XPCHandler.requestData(byLatitude:longitude:clientConfig:);

  return implicit closure #1 in TokenFetcher.fetchToken(context:)(v0 + v3, v0 + v6);
}

uint64_t _s10Foundation4DataVs5Error_pIegHozo_ACsAD_pIegHTrzo_TRTA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return _s10Foundation4DataVs5Error_pIegHozo_ACsAD_pIegHTrzo_TR(a1, v5);
}

uint64_t partial apply for closure #1 in TokenFetcher.fetchToken(context:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TokenFetcher(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for TokenFetcher.TokenFetchContext(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return closure #1 in TokenFetcher.fetchToken(context:)(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t outlined destroy of TokenFetcher.TokenFetchContext(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t *TokenCache.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static TokenCache.shared;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TokenCache.clearTokens(user:)(Swift::String user)
{
  v3 = *(v1 + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock);
  os_unfair_lock_lock((v3 + 24));
  partial apply for closure #1 in TokenCache.clearTokens(user:)((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
  if (v2)
  {
    __break(1u);
  }

  else
  {
    TokenCache.save()();
  }
}

void TokenCache.removeToken(user:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock);
  os_unfair_lock_lock((v1 + 24));
  partial apply for closure #1 in TokenCache.removeToken(user:)((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TokenCache.count(user:)(Swift::String user)
{
  v3 = *(v1 + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock);
  os_unfair_lock_lock((v3 + 24));
  partial apply for closure #1 in TokenCache.count(user:)((v3 + 16), &v5);
  os_unfair_lock_unlock((v3 + 24));
  if (!v2)
  {
    return v5;
  }

  return result;
}

void TokenCache.addToken(user:cached:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for TokenCache.CachedToken(0);
  v10 = v9 - 8;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v4 + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock);
  os_unfair_lock_lock((v15 + 24));
  v16 = TokenCache.validTokens(tokensForUser:user:)(*(v15 + 16), a1, a2);
  v17 = *(v4 + OBJC_IVAR____TtC8CipherML10TokenCache_currentDate);
  v18 = *(v4 + OBJC_IVAR____TtC8CipherML10TokenCache_currentDate + 8);
  v17();
  v19 = &v14[*(v10 + 28)];
  *v19 = a3;
  v19[1] = a4;
  outlined copy of TokenCache.CachedData(a3, a4);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
  }

  v21 = v16[2];
  v20 = v16[3];
  if (v21 >= v20 >> 1)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1, v16);
  }

  v16[2] = v21 + 1;
  outlined init with take of TokenCache.CachedToken(v14, v16 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v21);

  v22 = *(v15 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v15 + 16);
  *(v15 + 16) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v15 + 16) = v25;
  os_unfair_lock_unlock((v15 + 24));
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TokenCache.save()()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v18 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2 + OBJC_IVAR____TtC8CipherML10TokenCache_persistanceFile, v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v12 = type metadata accessor for PropertyListEncoder();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    dispatch thunk of PropertyListEncoder.outputFormat.setter();
    v15 = *(v2 + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock);
    os_unfair_lock_lock((v15 + 24));
    partial apply for closure #1 in TokenCache.save()((v15 + 16), v18);
    os_unfair_lock_unlock((v15 + 24));
    if (v1)
    {

      (*(v8 + 8))(v11, v7);
    }

    else
    {
      v16 = v18[0];
      v17 = v18[1];
      Data.write(to:options:)();
      (*(v8 + 8))(v11, v7);
      outlined consume of Data._Representation(v16, v17);
    }
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TokenCache.CachedData.CodingKeys()
{
  if (*v0)
  {
    result = 0x6E656B6F74;
  }

  else
  {
    result = 0x69746E6564657263;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TokenCache.CachedData.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x69746E6564657263 && a2 == 0xEA00000000006C61;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TokenCache.CachedData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenCache.CachedData.CodingKeys and conformance TokenCache.CachedData.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TokenCache.CachedData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenCache.CachedData.CodingKeys and conformance TokenCache.CachedData.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TokenCache.CachedData.CredentialCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenCache.CachedData.CredentialCodingKeys and conformance TokenCache.CachedData.CredentialCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TokenCache.CachedData.CredentialCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenCache.CachedData.CredentialCodingKeys and conformance TokenCache.CachedData.CredentialCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TokenCache.CachedData.CredentialCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TokenCache.CachedData.TokenCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenCache.CachedData.TokenCodingKeys and conformance TokenCache.CachedData.TokenCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TokenCache.CachedData.TokenCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenCache.CachedData.TokenCodingKeys and conformance TokenCache.CachedData.TokenCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TokenCache.CachedData.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML10TokenCacheC10CachedDataO0F10CodingKeys017_83261207007594D2L14ED1815B21BCDBELLOGMd, &_ss22KeyedEncodingContainerVy8CipherML10TokenCacheC10CachedDataO0F10CodingKeys017_83261207007594D2L14ED1815B21BCDBELLOGMR);
  v24 = *(v4 - 8);
  v25 = v4;
  v5 = *(v24 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML10TokenCacheC10CachedDataO20CredentialCodingKeys017_83261207007594D2M14ED1815B21BCDBELLOGMd, &_ss22KeyedEncodingContainerVy8CipherML10TokenCacheC10CachedDataO20CredentialCodingKeys017_83261207007594D2M14ED1815B21BCDBELLOGMR);
  v23 = *(v8 - 8);
  v9 = *(v23 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML10TokenCacheC10CachedDataO10CodingKeys017_83261207007594D2L14ED1815B21BCDBELLOGMd, &_ss22KeyedEncodingContainerVy8CipherML10TokenCacheC10CachedDataO10CodingKeys017_83261207007594D2L14ED1815B21BCDBELLOGMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TokenCache.CachedData.CodingKeys and conformance TokenCache.CachedData.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = (v13 + 8);
  if ((v26 & 0x2000000000000000) != 0)
  {
    v19 = v26 & 0xDFFFFFFFFFFFFFFFLL;
    LOBYTE(v28) = 1;
    lazy protocol witness table accessor for type TokenCache.CachedData.TokenCodingKeys and conformance TokenCache.CachedData.TokenCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v28 = v27;
    v29 = v19;
    lazy protocol witness table accessor for type Data and conformance Data();
    v20 = v25;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v24 + 8))(v7, v20);
  }

  else
  {
    LOBYTE(v28) = 0;
    lazy protocol witness table accessor for type TokenCache.CachedData.CredentialCodingKeys and conformance TokenCache.CachedData.CredentialCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v28 = v27;
    type metadata accessor for ARCToken.Credential();
    lazy protocol witness table accessor for type ARCToken.Credential and conformance ARCToken.Credential(&lazy protocol witness table cache variable for type ARCToken.Credential and conformance ARCToken.Credential, type metadata accessor for ARCToken.Credential);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v23 + 8))(v11, v8);
  }

  return (*v18)(v16, v12);
}

void *protocol witness for Decodable.init(from:) in conformance TokenCache.CachedData@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = specialized TokenCache.CachedData.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t TokenCache.CachedToken.issuance.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TokenCache.CachedToken.cached.getter()
{
  v1 = (v0 + *(type metadata accessor for TokenCache.CachedToken(0) + 20));
  v2 = *v1;
  outlined copy of TokenCache.CachedData(*v1, v1[1]);
  return v2;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TokenCache.CachedToken.CodingKeys()
{
  if (*v0)
  {
    result = 0x646568636163;
  }

  else
  {
    result = 0x65636E6175737369;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TokenCache.CachedToken.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65636E6175737369 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646568636163 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TokenCache.CachedToken.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenCache.CachedToken.CodingKeys and conformance TokenCache.CachedToken.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TokenCache.CachedToken.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenCache.CachedToken.CodingKeys and conformance TokenCache.CachedToken.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TokenCache.CachedToken.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML10TokenCacheC06CachedF0V10CodingKeys017_83261207007594D2K14ED1815B21BCDBELLOGMd, &_ss22KeyedEncodingContainerVy8CipherML10TokenCacheC06CachedF0V10CodingKeys017_83261207007594D2K14ED1815B21BCDBELLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TokenCache.CachedToken.CodingKeys and conformance TokenCache.CachedToken.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = 0;
  type metadata accessor for Date();
  lazy protocol witness table accessor for type ARCToken.Credential and conformance ARCToken.Credential(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for TokenCache.CachedToken(0) + 20));
    v12 = v11[1];
    v15 = *v11;
    v16 = v12;
    v14[15] = 1;
    outlined copy of TokenCache.CachedData(v15, v12);
    lazy protocol witness table accessor for type TokenCache.CachedData and conformance TokenCache.CachedData();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of TokenCache.CachedData(v15, v16);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t TokenCache.CachedToken.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v31 = type metadata accessor for Date();
  v28 = *(v31 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v31);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML10TokenCacheC06CachedF0V10CodingKeys017_83261207007594D2K14ED1815B21BCDBELLOGMd, &_ss22KeyedDecodingContainerVy8CipherML10TokenCacheC06CachedF0V10CodingKeys017_83261207007594D2K14ED1815B21BCDBELLOGMR);
  v8 = *(v7 - 8);
  v29 = v7;
  v30 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for TokenCache.CachedToken(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TokenCache.CachedToken.CodingKeys and conformance TokenCache.CachedToken.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v26 = v12;
  v17 = v15;
  v18 = v28;
  LOBYTE(v32) = 0;
  lazy protocol witness table accessor for type ARCToken.Credential and conformance ARCToken.Credential(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  v19 = v31;
  v20 = v29;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = *(v18 + 32);
  v25 = v17;
  v21(v17, v6, v19);
  v33 = 1;
  lazy protocol witness table accessor for type TokenCache.CachedData and conformance TokenCache.CachedData();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v30 + 8))(v11, v20);
  v22 = v25;
  *(v25 + *(v26 + 20)) = v32;
  outlined init with copy of TokenCache.CachedToken(v22, v27);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return outlined destroy of TokenCache.CachedToken(v22);
}

uint64_t TokenCache.CachedToken.init(issuance:cached:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for TokenCache.CachedToken(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TokenCache.TokenCacheFormat.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F46736E656B6F74 && a2 == 0xED00007265735572)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TokenCache.TokenCacheFormat.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenCache.TokenCacheFormat.CodingKeys and conformance TokenCache.TokenCacheFormat.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TokenCache.TokenCacheFormat.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenCache.TokenCacheFormat.CodingKeys and conformance TokenCache.TokenCacheFormat.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TokenCache.TokenCacheFormat.encode(to:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML10TokenCacheC0fG6FormatV10CodingKeys017_83261207007594D2K14ED1815B21BCDBELLOGMd, &_ss22KeyedEncodingContainerVy8CipherML10TokenCacheC0fG6FormatV10CodingKeys017_83261207007594D2K14ED1815B21BCDBELLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TokenCache.TokenCacheFormat.CodingKeys and conformance TokenCache.TokenCacheFormat.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSay8CipherML10TokenCacheC06CachedC0VGGMd, &_sSDySSSay8CipherML10TokenCacheC06CachedC0VGGMR);
  lazy protocol witness table accessor for type [String : [TokenCache.CachedToken]] and conformance <> [A : B]();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

void *protocol witness for Decodable.init(from:) in conformance TokenCache.TokenCacheFormat@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = specialized TokenCache.TokenCacheFormat.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t static TokenCache.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t TokenCache.currentDate.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8CipherML10TokenCache_currentDate);
  v2 = *(v0 + OBJC_IVAR____TtC8CipherML10TokenCache_currentDate + 8);

  return v1;
}

uint64_t TokenCache.__allocating_init(tokensForUser:file:currentDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2, v11 + OBJC_IVAR____TtC8CipherML10TokenCache_persistanceFile, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v12 = (v11 + OBJC_IVAR____TtC8CipherML10TokenCache_currentDate);
  *v12 = a3;
  v12[1] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySDySSSay8CipherML10TokenCacheC06CachedE0VGGSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySDySSSay8CipherML10TokenCacheC06CachedE0VGGSo16os_unfair_lock_sVGMR);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;

  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(v13 + 16) = a1;

  *(v11 + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock) = v13;
  return v11;
}

uint64_t TokenCache.init(tokensForUser:file:currentDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2, v4 + OBJC_IVAR____TtC8CipherML10TokenCache_persistanceFile, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = (v4 + OBJC_IVAR____TtC8CipherML10TokenCache_currentDate);
  *v9 = a3;
  v9[1] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySDySSSay8CipherML10TokenCacheC06CachedE0VGGSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySDySSSay8CipherML10TokenCacheC06CachedE0VGGSo16os_unfair_lock_sVGMR);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;

  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(v10 + 16) = a1;

  *(v4 + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock) = v10;
  return v4;
}

uint64_t closure #1 in TokenCache.save()@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *a1;
  lazy protocol witness table accessor for type TokenCache.TokenCacheFormat and conformance TokenCache.TokenCacheFormat();
  result = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t TokenCache.saveAsync()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - v3;
  static TaskPriority.background.getter();
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  return _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in TokenCache.saveAsync(), v6);
}

uint64_t closure #1 in TokenCache.saveAsync()()
{
  v1 = *(v0 + 16);
  os_transaction_create();
  TokenCache.save()();
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a3, v24 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
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

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      outlined destroy of AMDPbHEConfig.OneOf_Config?(a3, &_sScPSgMd, &_sScPSgMR);

      return v22;
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

  outlined destroy of AMDPbHEConfig.OneOf_Config?(a3, &_sScPSgMd, &_sScPSgMR);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

unint64_t closure #1 in TokenCache.removeToken(user:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v53 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v51 = v47 - v11;
  v12 = type metadata accessor for TokenCache.CachedToken(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v52 = a2;
  v18 = TokenCache.validTokens(tokensForUser:user:)(v17, a3, a4);
  v56 = v18;
  result = specialized Collection.randomElement()(0, *(v18 + 16));
  if (v20)
  {

    v21 = 0;
    v22 = 0xF000000000000000;
    goto LABEL_9;
  }

  v23 = result;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (result >= *(v18 + 16))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v24 = (v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * result + *(v12 + 20));
  v21 = *v24;
  v25 = v24[1];
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = *v24;

    v27 = v54;
    v28 = ARCToken.Credential.present()();
    if (v27)
    {
      outlined consume of TokenCache.CachedData(v21, v25);
    }

    v48 = v28;
    v49 = v25;
    v50 = v29;
    v54 = 0;
    v47[1] = *(v21 + 104);
    v37 = ARCToken.Credential.presentationContext.getter();
    v47[0] = v38;
    v39 = *(v21 + 96);
    v40 = dispatch thunk of ARCCredentialWrapper.getRemainingPresentationCount(presentationContext:presentationLimit:)();
    outlined consume of Data._Representation(v37, v47[0]);
    if (!v40)
    {
      specialized Array.remove(at:)(v23, v16);
      outlined destroy of TokenCache.CachedToken(v16);
      v41 = v56;

      v42 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55 = *a1;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v41, a3, a4, isUniquelyReferenced_nonNull_native);

      *a1 = v55;
      v44 = v51;
      static TaskPriority.background.getter();
      v45 = type metadata accessor for TaskPriority();
      (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
      v46 = swift_allocObject();
      v46[2] = 0;
      v46[3] = 0;
      v46[4] = v52;

      _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v44, &closure #1 in TokenCache.saveAsync()partial apply, v46);
    }

    outlined consume of TokenCache.CachedData(v21, v49);

    v21 = v48;
    v36 = v53;
    v22 = v50;
    goto LABEL_10;
  }

  v22 = v25 & 0xDFFFFFFFFFFFFFFFLL;
  outlined copy of Data._Representation(*v24, v25 & 0xDFFFFFFFFFFFFFFFLL);
  specialized Array.remove(at:)(v23, v16);
  outlined destroy of TokenCache.CachedToken(v16);
  v30 = v56;

  v31 = *a1;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *a1;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v30, a3, a4, v32);

  *a1 = v55;
  v33 = v51;
  static TaskPriority.background.getter();
  v34 = type metadata accessor for TaskPriority();
  (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v35[4] = v52;

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v33, &closure #1 in TokenCache.saveAsync()partial apply, v35);

LABEL_9:
  v36 = v53;
LABEL_10:
  *v36 = v21;
  v36[1] = v22;
  return result;
}

uint64_t TokenCache.validTokens(tokensForUser:user:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!*(a1 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v15 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = *(*(a1 + 56) + 8 * v14);
  v17 = v4 + OBJC_IVAR____TtC8CipherML10TokenCache_currentDate;
  v19 = *(v4 + OBJC_IVAR____TtC8CipherML10TokenCache_currentDate);
  v18 = *(v17 + 1);

  v21 = v19(v20);
  MEMORY[0x28223BE20](v21);
  *&v24[-16] = v13;
  *&v24[-8] = v8;
  v22 = specialized _ArrayProtocol.filter(_:)(closure #1 in TokenCache.validTokens(tokensForUser:user:)partial apply, &v24[-32], v16);
  (*(v10 + 8))(v13, v9);
  return v22;
}

int64_t specialized Collection.randomElement()(int64_t a1, int64_t a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  result = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result < 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = specialized RandomNumberGenerator.next<A>(upperBound:)(result);
  v6 = __OFADD__(a1, v5);
  result = a1 + v5;
  if (v6)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (result < a1 || result > a2)
  {
    goto LABEL_14;
  }

  return result;
}

size_t specialized Array.remove(at:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for TokenCache.CachedToken(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = outlined init with take of TokenCache.CachedToken(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t closure #1 in TokenCache.clearTokens(user:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;

  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  LOBYTE(v6) = v8;

  if (v6)
  {
    v10 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *a1;
    v15 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v7 + 8);

    v14 = *(*(v12 + 56) + 8 * v7);

    result = specialized _NativeDictionary._delete(at:)(v7, v12);
    *a1 = v12;
  }

  return result;
}

uint64_t closure #1 in TokenCache.validTokens(tokensForUser:user:)(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + *(type metadata accessor for TokenCache.CachedToken(0) + 20) + 8);
  Date.addingTimeInterval(_:)();
  LOBYTE(a1) = static Date.> infix(_:_:)();
  (*(v3 + 8))(v6, v2);
  return a1 & 1;
}

uint64_t closure #1 in TokenCache.count(user:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v5 = v4;
  v42 = a4;
  v9 = type metadata accessor for TokenCache.CachedToken(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v45 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = TokenCache.validTokens(tokensForUser:user:)(*a1, a2, a3);
  if (*(v13 + 16))
  {

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v13;

  specialized Dictionary.subscript.setter(v14, a2, a3);
  v16 = *(v15 + 16);
  if (v16)
  {
    v41[1] = v5;
    v46 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
    v17 = v46;
    v18 = *(v10 + 80);
    v41[0] = v15;
    v19 = v15 + ((v18 + 32) & ~v18);
    v20 = *(v10 + 72);
    v21 = v45;
    v43 = v20;
    v44 = v9;
    do
    {
      outlined init with copy of TokenCache.CachedToken(v19, v21);
      v22 = (v21 + *(v9 + 20));
      v23 = v22[1];
      if ((v23 & 0x2000000000000000) != 0)
      {
        outlined destroy of TokenCache.CachedToken(v21);
        v30 = 1;
      }

      else
      {
        v24 = *v22;
        v25 = *(*v22 + 104);

        v26 = ARCToken.Credential.presentationContext.getter();
        v28 = v27;
        v29 = *(v24 + 96);
        v30 = dispatch thunk of ARCCredentialWrapper.getRemainingPresentationCount(presentationContext:presentationLimit:)();
        v31 = v28;
        v9 = v44;
        v21 = v45;
        outlined consume of Data._Representation(v26, v31);
        outlined destroy of TokenCache.CachedToken(v21);
        v32 = v24;
        v20 = v43;
        outlined consume of TokenCache.CachedData(v32, v23);
      }

      v46 = v17;
      v34 = v17[2];
      v33 = v17[3];
      if (v34 >= v33 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
        v21 = v45;
        v17 = v46;
      }

      v17[2] = v34 + 1;
      v17[v34 + 4] = v30;
      v19 += v20;
      --v16;
    }

    while (v16);

    v36 = v17[2];
    if (v36)
    {
LABEL_13:
      v37 = 0;
      v38 = v17 + 4;
      while (1)
      {
        v39 = *v38++;
        v40 = __OFADD__(v37, v39);
        v37 += v39;
        if (v40)
        {
          break;
        }

        if (!--v36)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
      return result;
    }
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
    v36 = *(MEMORY[0x277D84F90] + 16);
    if (v36)
    {
      goto LABEL_13;
    }
  }

  v37 = 0;
LABEL_19:

  *v42 = v37;
  return result;
}

uint64_t outlined copy of TokenCache.CachedData(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    return outlined copy of Data._Representation(a1, a2 & 0xDFFFFFFFFFFFFFFFLL);
  }

  else
  {
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TokenCache.pruneCache()()
{
  v2 = *(v0 + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock);
  os_unfair_lock_lock((v2 + 24));
  partial apply for closure #1 in TokenCache.pruneCache()((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
  if (v1)
  {
    __break(1u);
  }

  else
  {
    TokenCache.save()();
  }
}

uint64_t closure #1 in TokenCache.pruneCache()(void *a1, uint64_t *a2)
{
  v63 = *a2;
  v62 = type metadata accessor for Date();
  v5 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v61 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a1;
  v8 = *a1;
  v9 = *(*a1 + 16);
  v64 = v2;
  if (v9)
  {
    v10 = v6;
    v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(v9, 0);
    v66 = specialized Sequence._copySequenceContents(initializing:)(&v67, v11 + 4, v9, v8);

    outlined consume of [String : [TokenCache.CachedToken]].Iterator._Variant();
    if (v66 != v9)
    {
      goto LABEL_32;
    }

    v12 = v11;
    v6 = v10;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v66 = v12[2];
  if (!v66)
  {
  }

  v13 = 0;
  v60 = a2 + OBJC_IVAR____TtC8CipherML10TokenCache_currentDate;
  v59 = (v6 + 8);
  v14 = v12 + 5;
  v65 = v12;
  while (v13 < v12[2])
  {
    v17 = *(v14 - 1);
    v18 = *v14;
    v19 = v8[2];

    if (v19 && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18), (v21 & 1) != 0))
    {
      v22 = *(v8[7] + 8 * v20);
      v24 = *v60;
      v23 = *(v60 + 1);

      v26 = v61;
      v27 = v24(v25);
      MEMORY[0x28223BE20](v27);
      v28 = v63;
      v29 = v64;
      *(&v58 - 2) = v26;
      *(&v58 - 1) = v28;
      v30 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in TokenCache.validTokens(tokensForUser:user:), (&v58 - 4), v22);
      v64 = v29;
      v31 = v26;
      v12 = v65;
      (*v59)(v31, v62);
      if (!*(v30 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      v30 = MEMORY[0x277D84F90];
      if (!*(MEMORY[0x277D84F90] + 16))
      {
LABEL_14:

        v32 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18);
        v34 = v33;

        v35 = v68;
        if (v34)
        {
          v36 = *v68;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v8 = *v35;
          v67 = *v35;
          if (!isUniquelyReferenced_nonNull_native)
          {
            specialized _NativeDictionary.copy()();
            v8 = v67;
          }

          v38 = *(v8[6] + 16 * v32 + 8);

          v39 = *(v8[7] + 8 * v32);

          specialized _NativeDictionary._delete(at:)(v32, v8);
          *v35 = v8;
        }

        goto LABEL_9;
      }
    }

    v40 = v68;
    v41 = *v68;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v67 = *v40;
    v43 = v67;
    v45 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18);
    v46 = v43[2];
    v47 = (v44 & 1) == 0;
    v48 = v46 + v47;
    if (__OFADD__(v46, v47))
    {
      goto LABEL_30;
    }

    v49 = v44;
    if (v43[3] >= v48)
    {
      if ((v42 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v48, v42);
      v50 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18);
      if ((v49 & 1) != (v51 & 1))
      {
        goto LABEL_33;
      }

      v45 = v50;
    }

    v52 = v68;
    v12 = v65;
    if (v49)
    {

      v8 = v67;
      v15 = v67[7];
      v16 = *(v15 + 8 * v45);
      *(v15 + 8 * v45) = v30;
    }

    else
    {
      v8 = v67;
      v67[(v45 >> 6) + 8] |= 1 << v45;
      v53 = (v8[6] + 16 * v45);
      *v53 = v17;
      v53[1] = v18;
      *(v8[7] + 8 * v45) = v30;
      v54 = v8[2];
      v55 = __OFADD__(v54, 1);
      v56 = v54 + 1;
      if (v55)
      {
        goto LABEL_31;
      }

      v8[2] = v56;
    }

    *v52 = v8;
LABEL_9:
    ++v13;
    v14 += 2;
    if (v66 == v13)
    {
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t TokenCache.deinit()
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + OBJC_IVAR____TtC8CipherML10TokenCache_persistanceFile, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock);

  v2 = *(v0 + OBJC_IVAR____TtC8CipherML10TokenCache_currentDate + 8);

  return v0;
}

uint64_t TokenCache.__deallocating_deinit()
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + OBJC_IVAR____TtC8CipherML10TokenCache_persistanceFile, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock);

  v2 = *(v0 + OBJC_IVAR____TtC8CipherML10TokenCache_currentDate + 8);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t outlined init with take of TokenCache.CachedToken(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TokenCache.CachedToken(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type TokenCache.CachedData.CodingKeys and conformance TokenCache.CachedData.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TokenCache.CachedData.CodingKeys and conformance TokenCache.CachedData.CodingKeys;
  if (!lazy protocol witness table cache variable for type TokenCache.CachedData.CodingKeys and conformance TokenCache.CachedData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenCache.CachedData.CodingKeys and conformance TokenCache.CachedData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenCache.CachedData.CodingKeys and conformance TokenCache.CachedData.CodingKeys;
  if (!lazy protocol witness table cache variable for type TokenCache.CachedData.CodingKeys and conformance TokenCache.CachedData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenCache.CachedData.CodingKeys and conformance TokenCache.CachedData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenCache.CachedData.CodingKeys and conformance TokenCache.CachedData.CodingKeys;
  if (!lazy protocol witness table cache variable for type TokenCache.CachedData.CodingKeys and conformance TokenCache.CachedData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenCache.CachedData.CodingKeys and conformance TokenCache.CachedData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenCache.CachedData.CodingKeys and conformance TokenCache.CachedData.CodingKeys;
  if (!lazy protocol witness table cache variable for type TokenCache.CachedData.CodingKeys and conformance TokenCache.CachedData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenCache.CachedData.CodingKeys and conformance TokenCache.CachedData.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TokenCache.CachedData.TokenCodingKeys and conformance TokenCache.CachedData.TokenCodingKeys()
{
  result = lazy protocol witness table cache variable for type TokenCache.CachedData.TokenCodingKeys and conformance TokenCache.CachedData.TokenCodingKeys;
  if (!lazy protocol witness table cache variable for type TokenCache.CachedData.TokenCodingKeys and conformance TokenCache.CachedData.TokenCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenCache.CachedData.TokenCodingKeys and conformance TokenCache.CachedData.TokenCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenCache.CachedData.TokenCodingKeys and conformance TokenCache.CachedData.TokenCodingKeys;
  if (!lazy protocol witness table cache variable for type TokenCache.CachedData.TokenCodingKeys and conformance TokenCache.CachedData.TokenCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenCache.CachedData.TokenCodingKeys and conformance TokenCache.CachedData.TokenCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenCache.CachedData.TokenCodingKeys and conformance TokenCache.CachedData.TokenCodingKeys;
  if (!lazy protocol witness table cache variable for type TokenCache.CachedData.TokenCodingKeys and conformance TokenCache.CachedData.TokenCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenCache.CachedData.TokenCodingKeys and conformance TokenCache.CachedData.TokenCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenCache.CachedData.TokenCodingKeys and conformance TokenCache.CachedData.TokenCodingKeys;
  if (!lazy protocol witness table cache variable for type TokenCache.CachedData.TokenCodingKeys and conformance TokenCache.CachedData.TokenCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenCache.CachedData.TokenCodingKeys and conformance TokenCache.CachedData.TokenCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TokenCache.CachedData.CredentialCodingKeys and conformance TokenCache.CachedData.CredentialCodingKeys()
{
  result = lazy protocol witness table cache variable for type TokenCache.CachedData.CredentialCodingKeys and conformance TokenCache.CachedData.CredentialCodingKeys;
  if (!lazy protocol witness table cache variable for type TokenCache.CachedData.CredentialCodingKeys and conformance TokenCache.CachedData.CredentialCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenCache.CachedData.CredentialCodingKeys and conformance TokenCache.CachedData.CredentialCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenCache.CachedData.CredentialCodingKeys and conformance TokenCache.CachedData.CredentialCodingKeys;
  if (!lazy protocol witness table cache variable for type TokenCache.CachedData.CredentialCodingKeys and conformance TokenCache.CachedData.CredentialCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenCache.CachedData.CredentialCodingKeys and conformance TokenCache.CachedData.CredentialCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenCache.CachedData.CredentialCodingKeys and conformance TokenCache.CachedData.CredentialCodingKeys;
  if (!lazy protocol witness table cache variable for type TokenCache.CachedData.CredentialCodingKeys and conformance TokenCache.CachedData.CredentialCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenCache.CachedData.CredentialCodingKeys and conformance TokenCache.CachedData.CredentialCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenCache.CachedData.CredentialCodingKeys and conformance TokenCache.CachedData.CredentialCodingKeys;
  if (!lazy protocol witness table cache variable for type TokenCache.CachedData.CredentialCodingKeys and conformance TokenCache.CachedData.CredentialCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenCache.CachedData.CredentialCodingKeys and conformance TokenCache.CachedData.CredentialCodingKeys);
  }

  return result;
}

uint64_t specialized TokenCache.__allocating_init(file:currentDate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v29 = a3;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v27 - v9;
  v11 = Data.init(contentsOf:options:)();
  v13 = v12;
  v14 = type metadata accessor for PropertyListDecoder();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  lazy protocol witness table accessor for type TokenCache.TokenCacheFormat and conformance TokenCache.TokenCacheFormat();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v18 = v30;
  (*(v5 + 16))(v10, a1, v4);
  (*(v5 + 56))(v10, 0, 1, v4);
  v19 = type metadata accessor for TokenCache(0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v10, v22 + OBJC_IVAR____TtC8CipherML10TokenCache_persistanceFile, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v23 = (v22 + OBJC_IVAR____TtC8CipherML10TokenCache_currentDate);
  v24 = v29;
  *v23 = v28;
  v23[1] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySDySSSay8CipherML10TokenCacheC06CachedE0VGGSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySDySSSay8CipherML10TokenCacheC06CachedE0VGGSo16os_unfair_lock_sVGMR);
  v25 = v10;
  v26 = swift_allocObject();
  *(v26 + 24) = 0;

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(v26 + 16) = v18;

  outlined consume of Data._Representation(v11, v13);
  *(v22 + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock) = v26;
  (*(v5 + 8))(a1, v4);
  return v22;
}

void *specialized TokenCache.CachedData.init(from:)(uint64_t *a1)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML10TokenCacheC10CachedDataO0F10CodingKeys017_83261207007594D2L14ED1815B21BCDBELLOGMd, &_ss22KeyedDecodingContainerVy8CipherML10TokenCacheC10CachedDataO0F10CodingKeys017_83261207007594D2L14ED1815B21BCDBELLOGMR);
  v34 = *(v36 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  v4 = &v32 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML10TokenCacheC10CachedDataO20CredentialCodingKeys017_83261207007594D2M14ED1815B21BCDBELLOGMd, &_ss22KeyedDecodingContainerVy8CipherML10TokenCacheC10CachedDataO20CredentialCodingKeys017_83261207007594D2M14ED1815B21BCDBELLOGMR);
  v35 = *(v5 - 8);
  v6 = *(v35 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML10TokenCacheC10CachedDataO10CodingKeys017_83261207007594D2L14ED1815B21BCDBELLOGMd, &_ss22KeyedDecodingContainerVy8CipherML10TokenCacheC10CachedDataO10CodingKeys017_83261207007594D2L14ED1815B21BCDBELLOGMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  v14 = a1[3];
  v15 = a1[4];
  v43 = a1;
  v16 = __swift_project_boxed_opaque_existential_1(a1, v14);
  lazy protocol witness table accessor for type TokenCache.CachedData.CodingKeys and conformance TokenCache.CachedData.CodingKeys();
  v17 = v37;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v17)
  {
    v33 = v5;
    v18 = v36;
    v37 = v10;
    v19 = KeyedDecodingContainer.allKeys.getter();
    v20 = (2 * *(v19 + 16)) | 1;
    v39 = v19;
    v40 = v19 + 32;
    v41 = 0;
    v42 = v20;
    v21 = specialized Collection<>.popFirst()();
    v22 = v9;
    if (v21 == 2 || v41 != v42 >> 1)
    {
      v24 = v9;
      v25 = type metadata accessor for DecodingError();
      swift_allocError();
      v27 = v26;
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v27 = &type metadata for TokenCache.CachedData;
      v16 = v13;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
      swift_willThrow();
      (*(v37 + 8))(v13, v24);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v21)
      {
        LOBYTE(v38) = 1;
        lazy protocol witness table accessor for type TokenCache.CachedData.TokenCodingKeys and conformance TokenCache.CachedData.TokenCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v23 = v37;
        lazy protocol witness table accessor for type Data and conformance Data();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v34 + 8))(v4, v18);
        (*(v23 + 8))(v13, v22);
      }

      else
      {
        LOBYTE(v38) = 0;
        lazy protocol witness table accessor for type TokenCache.CachedData.CredentialCodingKeys and conformance TokenCache.CachedData.CredentialCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v30 = v37;
        type metadata accessor for ARCToken.Credential();
        lazy protocol witness table accessor for type ARCToken.Credential and conformance ARCToken.Credential(&lazy protocol witness table cache variable for type ARCToken.Credential and conformance ARCToken.Credential, type metadata accessor for ARCToken.Credential);
        v31 = v33;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v35 + 8))(v8, v31);
        (*(v30 + 8))(v13, v9);
      }

      swift_unknownObjectRelease();
      v16 = v38;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v43);
  return v16;
}

unint64_t lazy protocol witness table accessor for type TokenCache.CachedToken.CodingKeys and conformance TokenCache.CachedToken.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TokenCache.CachedToken.CodingKeys and conformance TokenCache.CachedToken.CodingKeys;
  if (!lazy protocol witness table cache variable for type TokenCache.CachedToken.CodingKeys and conformance TokenCache.CachedToken.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenCache.CachedToken.CodingKeys and conformance TokenCache.CachedToken.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenCache.CachedToken.CodingKeys and conformance TokenCache.CachedToken.CodingKeys;
  if (!lazy protocol witness table cache variable for type TokenCache.CachedToken.CodingKeys and conformance TokenCache.CachedToken.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenCache.CachedToken.CodingKeys and conformance TokenCache.CachedToken.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenCache.CachedToken.CodingKeys and conformance TokenCache.CachedToken.CodingKeys;
  if (!lazy protocol witness table cache variable for type TokenCache.CachedToken.CodingKeys and conformance TokenCache.CachedToken.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenCache.CachedToken.CodingKeys and conformance TokenCache.CachedToken.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenCache.CachedToken.CodingKeys and conformance TokenCache.CachedToken.CodingKeys;
  if (!lazy protocol witness table cache variable for type TokenCache.CachedToken.CodingKeys and conformance TokenCache.CachedToken.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenCache.CachedToken.CodingKeys and conformance TokenCache.CachedToken.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ARCToken.Credential and conformance ARCToken.Credential(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type TokenCache.CachedData and conformance TokenCache.CachedData()
{
  result = lazy protocol witness table cache variable for type TokenCache.CachedData and conformance TokenCache.CachedData;
  if (!lazy protocol witness table cache variable for type TokenCache.CachedData and conformance TokenCache.CachedData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenCache.CachedData and conformance TokenCache.CachedData);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenCache.CachedData and conformance TokenCache.CachedData;
  if (!lazy protocol witness table cache variable for type TokenCache.CachedData and conformance TokenCache.CachedData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenCache.CachedData and conformance TokenCache.CachedData);
  }

  return result;
}

uint64_t outlined consume of TokenCache.CachedData(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    return outlined consume of Data._Representation(a1, a2 & 0xDFFFFFFFFFFFFFFFLL);
  }

  else
  {
  }
}

uint64_t outlined init with copy of TokenCache.CachedToken(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TokenCache.CachedToken(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TokenCache.CachedToken(uint64_t a1)
{
  v2 = type metadata accessor for TokenCache.CachedToken(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type TokenCache.TokenCacheFormat.CodingKeys and conformance TokenCache.TokenCacheFormat.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TokenCache.TokenCacheFormat.CodingKeys and conformance TokenCache.TokenCacheFormat.CodingKeys;
  if (!lazy protocol witness table cache variable for type TokenCache.TokenCacheFormat.CodingKeys and conformance TokenCache.TokenCacheFormat.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenCache.TokenCacheFormat.CodingKeys and conformance TokenCache.TokenCacheFormat.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenCache.TokenCacheFormat.CodingKeys and conformance TokenCache.TokenCacheFormat.CodingKeys;
  if (!lazy protocol witness table cache variable for type TokenCache.TokenCacheFormat.CodingKeys and conformance TokenCache.TokenCacheFormat.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenCache.TokenCacheFormat.CodingKeys and conformance TokenCache.TokenCacheFormat.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenCache.TokenCacheFormat.CodingKeys and conformance TokenCache.TokenCacheFormat.CodingKeys;
  if (!lazy protocol witness table cache variable for type TokenCache.TokenCacheFormat.CodingKeys and conformance TokenCache.TokenCacheFormat.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenCache.TokenCacheFormat.CodingKeys and conformance TokenCache.TokenCacheFormat.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenCache.TokenCacheFormat.CodingKeys and conformance TokenCache.TokenCacheFormat.CodingKeys;
  if (!lazy protocol witness table cache variable for type TokenCache.TokenCacheFormat.CodingKeys and conformance TokenCache.TokenCacheFormat.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenCache.TokenCacheFormat.CodingKeys and conformance TokenCache.TokenCacheFormat.CodingKeys);
  }

  return result;
}

void *specialized TokenCache.TokenCacheFormat.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML10TokenCacheC0fG6FormatV10CodingKeys017_83261207007594D2K14ED1815B21BCDBELLOGMd, &_ss22KeyedDecodingContainerVy8CipherML10TokenCacheC0fG6FormatV10CodingKeys017_83261207007594D2K14ED1815B21BCDBELLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TokenCache.TokenCacheFormat.CodingKeys and conformance TokenCache.TokenCacheFormat.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSay8CipherML10TokenCacheC06CachedC0VGGMd, &_sSDySSSay8CipherML10TokenCacheC06CachedC0VGGMR);
    lazy protocol witness table accessor for type [String : [TokenCache.CachedToken]] and conformance <> [A : B]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v9;
}

uint64_t partial apply for closure #1 in TokenCache.saveAsync()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return closure #1 in TokenCache.saveAsync()(a1, v4, v5, v6);
}

void type metadata completion function for TokenCache()
{
  type metadata accessor for URL?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for TokenCache.CachedData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 16))
  {
    return (*a1 + 3);
  }

  v3 = ((2 * ((*(a1 + 8) & 0x1000000000000000) != 0)) | ((*(a1 + 8) >> 60) >> 1) & 1) ^ 3;
  if (v3 >= 2)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for TokenCache.CachedData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    if (a3 >= 3)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((2 * a2) & 2 | 1u) << 60;
    }
  }

  return result;
}

uint64_t type metadata completion function for TokenCache.CachedToken()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t partial apply for closure #1 in TokenCache.validTokens(tokensForUser:user:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return closure #1 in TokenCache.validTokens(tokensForUser:user:)(a1) & 1;
}

unint64_t lazy protocol witness table accessor for type TokenCache.TokenCacheFormat and conformance TokenCache.TokenCacheFormat()
{
  result = lazy protocol witness table cache variable for type TokenCache.TokenCacheFormat and conformance TokenCache.TokenCacheFormat;
  if (!lazy protocol witness table cache variable for type TokenCache.TokenCacheFormat and conformance TokenCache.TokenCacheFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenCache.TokenCacheFormat and conformance TokenCache.TokenCacheFormat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenCache.TokenCacheFormat and conformance TokenCache.TokenCacheFormat;
  if (!lazy protocol witness table cache variable for type TokenCache.TokenCacheFormat and conformance TokenCache.TokenCacheFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenCache.TokenCacheFormat and conformance TokenCache.TokenCacheFormat);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [TokenCache.CachedToken] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8CipherML10TokenCacheC06CachedC0VGMd, &_sSay8CipherML10TokenCacheC06CachedC0VGMR);
    lazy protocol witness table accessor for type ARCToken.Credential and conformance ARCToken.Credential(a2, type metadata accessor for TokenCache.CachedToken);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t closure #1 in TokenCache.saveAsync()partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return closure #1 in TokenCache.saveAsync()(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t UserIdentifier.created.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t UserIdentifier.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UserIdentifier() + 20);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for UserIdentifier()
{
  result = type metadata singleton initialization cache for UserIdentifier;
  if (!type metadata singleton initialization cache for UserIdentifier)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UserIdentifier.secretKeys.getter()
{
  v1 = *(v0 + *(type metadata accessor for UserIdentifier() + 24));
}

uint64_t UserIdentifier.secretKeys.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UserIdentifier() + 24);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

unint64_t UserIdentifier.init()@<X0>(uint64_t a1@<X8>)
{
  static Date.now.getter();
  v2 = type metadata accessor for UserIdentifier();
  v3 = a1 + *(v2 + 20);
  UUID.init()();
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DataV_8CipherML9SecretKeyVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(a1 + *(v2 + 24)) = result;
  return result;
}

uint64_t UserIdentifier.init(date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  v6 = type metadata accessor for UserIdentifier();
  v7 = a2 + *(v6 + 20);
  UUID.init()();
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DataV_8CipherML9SecretKeyVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  result = (*(v5 + 8))(a1, v4);
  *(a2 + *(v6 + 24)) = v8;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance UserIdentifier.CodingKeys()
{
  v1 = 1684632949;
  if (*v0 != 1)
  {
    v1 = 0x654B746572636573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64657461657263;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance UserIdentifier.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized UserIdentifier.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance UserIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UserIdentifier.CodingKeys and conformance UserIdentifier.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance UserIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UserIdentifier.CodingKeys and conformance UserIdentifier.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserIdentifier.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML14UserIdentifierV10CodingKeys33_C0ECEE5EAFC13A5B107955733BF81CC0LLOGMd, &_ss22KeyedEncodingContainerVy8CipherML14UserIdentifierV10CodingKeys33_C0ECEE5EAFC13A5B107955733BF81CC0LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type UserIdentifier.CodingKeys and conformance UserIdentifier.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  type metadata accessor for Date();
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for UserIdentifier();
    v12 = *(v11 + 20);
    v16 = 1;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = *(v3 + *(v11 + 24));
    v14[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy10Foundation4DataV8CipherML9SecretKeyVGMd, &_sSDy10Foundation4DataV8CipherML9SecretKeyVGMR);
    lazy protocol witness table accessor for type [Data : SecretKey] and conformance <> [A : B]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t UserIdentifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v33 = type metadata accessor for UUID();
  v30 = *(v33 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v33);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x28223BE20](v6);
  v34 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML14UserIdentifierV10CodingKeys33_C0ECEE5EAFC13A5B107955733BF81CC0LLOGMd, &_ss22KeyedDecodingContainerVy8CipherML14UserIdentifierV10CodingKeys33_C0ECEE5EAFC13A5B107955733BF81CC0LLOGMR);
  v32 = *(v35 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v35);
  v11 = &v27 - v10;
  v12 = type metadata accessor for UserIdentifier();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type UserIdentifier.CodingKeys and conformance UserIdentifier.CodingKeys();
  v36 = v11;
  v17 = v37;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v28 = v12;
  v37 = a1;
  v18 = v15;
  v20 = v32;
  v19 = v33;
  v41 = 0;
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  v21 = v34;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = *(v31 + 32);
  v34 = v6;
  v22(v18, v21);
  v40 = 1;
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v23 = v5;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24 = v28;
  (*(v30 + 32))(v18 + *(v28 + 20), v23, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy10Foundation4DataV8CipherML9SecretKeyVGMd, &_sSDy10Foundation4DataV8CipherML9SecretKeyVGMR);
  v39 = 2;
  lazy protocol witness table accessor for type [Data : SecretKey] and conformance <> [A : B]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = v37;
  (*(v20 + 8))(v36, v35);
  *(v18 + *(v24 + 24)) = v38;
  outlined init with copy of UserIdentifier(v18, v29);
  __swift_destroy_boxed_opaque_existential_0(v25);
  return outlined destroy of UserIdentifier(v18);
}

unint64_t lazy protocol witness table accessor for type UserIdentifier.CodingKeys and conformance UserIdentifier.CodingKeys()
{
  result = lazy protocol witness table cache variable for type UserIdentifier.CodingKeys and conformance UserIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type UserIdentifier.CodingKeys and conformance UserIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserIdentifier.CodingKeys and conformance UserIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserIdentifier.CodingKeys and conformance UserIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type UserIdentifier.CodingKeys and conformance UserIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserIdentifier.CodingKeys and conformance UserIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserIdentifier.CodingKeys and conformance UserIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type UserIdentifier.CodingKeys and conformance UserIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserIdentifier.CodingKeys and conformance UserIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserIdentifier.CodingKeys and conformance UserIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type UserIdentifier.CodingKeys and conformance UserIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserIdentifier.CodingKeys and conformance UserIdentifier.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Date and conformance Date(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of UserIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserIdentifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of UserIdentifier(uint64_t a1)
{
  v2 = type metadata accessor for UserIdentifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata completion function for UserIdentifier()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      type metadata accessor for [Data : SecretKey]();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t specialized UserIdentifier.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64657461657263 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654B746572636573 && a2 == 0xEA00000000007379)
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

uint64_t RequestsManager.similarityScores(elements:shardIndices:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v6 = *(*(type metadata accessor for AspireApiRequest(0) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v7 = type metadata accessor for RequestsManager.PECContext();
  v3[12] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v9 = swift_task_alloc();
  v3[13] = v9;
  v10 = swift_task_alloc();
  v3[14] = v10;
  *v10 = v3;
  v10[1] = RequestsManager.similarityScores(elements:shardIndices:context:);

  return RequestsManager.loadContext(requestContext:allowingKeyRotation:)(v9, a3, 1);
}

uint64_t RequestsManager.similarityScores(elements:shardIndices:context:)()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = RequestsManager.similarityScores(elements:shardIndices:context:);
  }

  else
  {
    v3 = RequestsManager.similarityScores(elements:shardIndices:context:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[7];
  v4 = *(v0[12] + 24);
  v5 = type metadata accessor for SimilarityClient();
  specialized RequestsManager.convertToFloats(_:embeddingDimension:)(v3, *(v2 + *(v5 + 20) + v4 + 8));
  if (v1)
  {
    outlined destroy of RequestsManager.PECContext(v0[13], type metadata accessor for RequestsManager.PECContext);
    v13 = v0[13];
    v14 = v0[10];
    v15 = v0[11];

    v16 = v0[1];

    return v16();
  }

  else
  {
    v7 = v6;
    v9 = v0[10];
    v8 = v0[11];
    v10 = v0[8];
    v11 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    RequestsManager.PECContext.preparePECRequest(elements:shardIndices:keyConfig:)(v7, v10, v9, v8);
    v12 = v0[9];
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[10], &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);

    specialized RequestContext.networkManager()((v0 + 2));
    v18 = swift_task_alloc();
    v0[16] = v18;
    *v18 = v0;
    v18[1] = RequestsManager.similarityScores(elements:shardIndices:context:);
    v19 = v0[13];
    v20 = v0[11];

    return RequestsManager.PECContext.requestData(request:networkManager:)(v20, (v0 + 2));
  }
}

{
  v1 = v0[13];
  v2 = v0[10];
  outlined destroy of RequestsManager.PECContext(v0[11], type metadata accessor for AspireApiRequest);
  outlined destroy of RequestsManager.PECContext(v1, type metadata accessor for RequestsManager.PECContext);

  v3 = v0[1];
  v4 = v0[18];

  return v3(v4);
}

{
  v1 = v0[15];
  v2 = v0[13];
  v4 = v0[10];
  v3 = v0[11];

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[13];
  outlined destroy of RequestsManager.PECContext(v0[11], type metadata accessor for AspireApiRequest);
  outlined destroy of RequestsManager.PECContext(v1, type metadata accessor for RequestsManager.PECContext);
  v2 = v0[17];
  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];

  v6 = v0[1];

  return v6();
}

uint64_t RequestsManager.similarityScores(elements:shardIndices:context:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0((v4 + 16));
    v7 = RequestsManager.similarityScores(elements:shardIndices:context:);
  }

  else
  {
    *(v4 + 144) = a1;
    __swift_destroy_boxed_opaque_existential_0((v4 + 16));
    v7 = RequestsManager.similarityScores(elements:shardIndices:context:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t type metadata accessor for RequestsManager.PECContext()
{
  result = type metadata singleton initialization cache for RequestsManager.PECContext;
  if (!type metadata singleton initialization cache for RequestsManager.PECContext)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RequestsManager.setPECConfig(config:context:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for AspireHeEncryptionParameters(0);
  v3[10] = v5;
  v6 = *(v5 - 8);
  v3[11] = v6;
  v7 = *(v6 + 64) + 15;
  v3[12] = swift_task_alloc();
  v8 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v3[13] = v8;
  v9 = *(v8 - 8);
  v3[14] = v9;
  v10 = *(v9 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v12 = type metadata accessor for AspireApiKeyStatus(0);
  v3[21] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v16 = type metadata accessor for AspireApiPECConfig(0);
  v3[25] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v18 = *(*(type metadata accessor for BinaryDecodingOptions() - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v19 = type metadata accessor for AspireApiConfig(0);
  v3[30] = v19;
  v20 = *(v19 - 8);
  v3[31] = v20;
  v21 = *(v20 + 64) + 15;
  v3[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](RequestsManager.setPECConfig(config:context:), 0, 0);
}

{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 368);
  v7 = *v3;
  v5[47] = a1;
  v5[48] = a2;
  v5[49] = v2;

  v8 = v4[45];
  v9 = v4[35];

  if (v2)
  {
    v10 = RequestsManager.setPECConfig(config:context:);
  }

  else
  {
    v10 = RequestsManager.setPECConfig(config:context:);
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t RequestsManager.setPECConfig(config:context:)()
{
  v1 = *(v0 + 256);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 48);
  v5 = **(v0 + 56);
  *(v0 + 264) = v5;
  v6 = [v5 useCase];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(v0 + 272) = v7;
  *(v0 + 280) = v9;
  v10 = [v4 serializedPECConfig];
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  *(v0 + 16) = v11;
  *(v0 + 24) = v13;
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type AspireApiConfig and conformance AspireApiConfig(&lazy protocol witness table cache variable for type AspireApiConfig and conformance AspireApiConfig, type metadata accessor for AspireApiConfig);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  v14 = *(v0 + 192);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(*(v0 + 256), v14, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v15 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  v16 = (*(*(v15 - 8) + 48))(v14, 1, v15);
  v17 = *(v0 + 192);
  if (v16 == 1)
  {

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v17, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
LABEL_8:
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.framework);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_224E26000, v29, v30, "CMLPECConfig is missing pecConfig.", v31, 2u);
      MEMORY[0x22AA61F40](v31, -1, -1);
    }

    v32 = *(v0 + 256);

    type metadata accessor for CipherMLError();
    lazy protocol witness table accessor for type AspireApiConfig and conformance AspireApiConfig(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined destroy of RequestsManager.PECContext(v32, type metadata accessor for AspireApiConfig);
    v33 = *(v0 + 256);
    v35 = *(v0 + 224);
    v34 = *(v0 + 232);
    v37 = *(v0 + 208);
    v36 = *(v0 + 216);
    v39 = *(v0 + 184);
    v38 = *(v0 + 192);
    v40 = *(v0 + 176);
    v41 = *(v0 + 152);
    v42 = *(v0 + 160);
    v44 = *(v0 + 144);
    v45 = *(v0 + 136);
    v46 = *(v0 + 128);
    v47 = *(v0 + 120);
    v48 = *(v0 + 96);
    v49 = *(v0 + 72);

    v43 = *(v0 + 8);

    return v43();
  }

  v18 = *(v0 + 192);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    outlined destroy of RequestsManager.PECContext(v17, type metadata accessor for AspireApiConfig.OneOf_Config);
    goto LABEL_8;
  }

  v20 = *(v0 + 248);
  v19 = *(v0 + 256);
  v21 = *(v0 + 240);
  v22 = *(v0 + 184);
  v23 = *(v0 + 64);
  _s8CipherML18AspireApiPECConfigVWObTm_0(v17, *(v0 + 216), type metadata accessor for AspireApiPECConfig);
  v24 = *(v23 + 16);
  *(v0 + 288) = v24;
  *(v0 + 296) = *(v24 + 16);
  outlined init with copy of AspireApiConfig(v19, v22, type metadata accessor for AspireApiConfig);
  (*(v20 + 56))(v22, 0, 1, v21);

  v25 = swift_task_alloc();
  *(v0 + 304) = v25;
  *v25 = v0;
  v25[1] = RequestsManager.setPECConfig(config:context:);
  v26 = *(v0 + 184);

  return specialized DatabaseTable<>.set(key:value:)(v7, v9, v26);
}

{
  v2 = *v1;
  v3 = (*v1)[38];
  v4 = *v1;
  v2[39] = v0;

  v5 = v2[37];
  if (v0)
  {
    v6 = v2[35];
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v2[23], &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);

    v7 = RequestsManager.setPECConfig(config:context:);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v2[23], &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);

    v7 = RequestsManager.setPECConfig(config:context:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v1 = *(v0 + 312);
  v2 = *(v0 + 224);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  v5 = [*(v0 + 48) serializedKeyStatus];
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *(v0 + 32) = v6;
  *(v0 + 40) = v8;
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type AspireApiConfig and conformance AspireApiConfig(&lazy protocol witness table cache variable for type AspireApiKeyStatus and conformance AspireApiKeyStatus, type metadata accessor for AspireApiKeyStatus);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v1)
  {
    v9 = *(v0 + 280);
    v10 = *(v0 + 216);
    outlined destroy of RequestsManager.PECContext(*(v0 + 256), type metadata accessor for AspireApiConfig);

    outlined destroy of RequestsManager.PECContext(v10, type metadata accessor for AspireApiPECConfig);
    v11 = *(v0 + 256);
    v13 = *(v0 + 224);
    v12 = *(v0 + 232);
    v15 = *(v0 + 208);
    v14 = *(v0 + 216);
    v17 = *(v0 + 184);
    v16 = *(v0 + 192);
    v18 = *(v0 + 176);
    v19 = *(v0 + 160);
    v40 = *(v0 + 152);
    v41 = *(v0 + 144);
    v42 = *(v0 + 136);
    v43 = *(v0 + 128);
    v44 = *(v0 + 120);
    v45 = *(v0 + 96);
    v47 = *(v0 + 72);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    v22 = *(v0 + 216);
    v24 = *(v0 + 168);
    v23 = *(v0 + 176);
    v25 = *(v0 + 152);
    v26 = *(v0 + 104);
    v27 = *(v0 + 112);
    *(v0 + 320) = *(*(v0 + 288) + 24);
    v28 = *(v22 + 32);
    v29 = *(v22 + 40);
    v30 = *(v24 + 24);
    *(v0 + 400) = v30;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v23 + v30, v25, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    v31 = *(v27 + 48);
    *(v0 + 328) = v31;
    *(v0 + 336) = (v27 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v32 = v31(v25, 1, v26);
    v33 = *(v0 + 152);
    v34 = *(v0 + 160);
    if (v32 == 1)
    {
      v35 = *(v0 + 104);
      v48 = v28;
      v36 = *(v0 + 88);
      v46 = *(v0 + 80);
      *v34 = MEMORY[0x277D84F90];
      *(v34 + 8) = 0;
      v37 = *(v35 + 24);

      UnknownStorage.init()();
      (*(v36 + 56))(v34 + *(v35 + 28), 1, 1, v46);
      v28 = v48;
      if (v31(v33, 1, v35) != 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 152), &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
      }
    }

    else
    {
      _s8CipherML18AspireApiPECConfigVWObTm_0(*(v0 + 152), *(v0 + 160), type metadata accessor for AspireHeEvaluationKeyConfig);
    }

    (*(*(v0 + 112) + 56))(*(v0 + 160), 0, 1, *(v0 + 104));
    v38 = swift_task_alloc();
    *(v0 + 344) = v38;
    *v38 = v0;
    v38[1] = RequestsManager.setPECConfig(config:context:);
    v39 = *(v0 + 160);

    return specialized DatabaseTable<>.set(key:value:)(v28, v29, v39);
  }
}

{
  v2 = *v1;
  v3 = (*v1)[43];
  v4 = *v1;
  v2[44] = v0;

  v5 = v2[40];
  if (v0)
  {
    v6 = v2[35];
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v2[20], &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);

    v7 = RequestsManager.setPECConfig(config:context:);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v2[20], &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);

    v7 = RequestsManager.setPECConfig(config:context:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v107 = v0;
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 216);
  v4 = *(v0 + 144);
  v5 = *(v0 + 104);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(*(v0 + 176) + *(v0 + 400), v4, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  if (v2(v4, 1, v5) == 1)
  {
    v9 = *(v0 + 328);
    v8 = *(v0 + 336);
    v10 = *(v0 + 144);
    v11 = *(v0 + 128);
    v12 = *(v0 + 104);
    v13 = *(v0 + 80);
    v14 = *(v0 + 88);
    *v11 = MEMORY[0x277D84F90];
    *(v11 + 8) = 0;
    v15 = v11 + *(v12 + 24);
    UnknownStorage.init()();
    (*(v14 + 56))(v11 + *(v12 + 28), 1, 1, v13);
    if (v9(v10, 1, v12) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 144), &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    }
  }

  else
  {
    _s8CipherML18AspireApiPECConfigVWObTm_0(*(v0 + 144), *(v0 + 128), type metadata accessor for AspireHeEvaluationKeyConfig);
  }

  v16 = *(v0 + 352);
  v17 = *(v0 + 128);
  v18 = specialized Message.hash()();
  if (v16)
  {
    v20 = *(v0 + 280);
    v21 = *(v0 + 256);
    v22 = *(v0 + 216);
    v23 = *(v0 + 176);
    v24 = *(v0 + 128);

    outlined destroy of RequestsManager.PECContext(v24, type metadata accessor for AspireHeEvaluationKeyConfig);
LABEL_7:
    outlined destroy of RequestsManager.PECContext(v23, type metadata accessor for AspireApiKeyStatus);
    outlined destroy of RequestsManager.PECContext(v21, type metadata accessor for AspireApiConfig);
    outlined destroy of RequestsManager.PECContext(v22, type metadata accessor for AspireApiPECConfig);
    v25 = *(v0 + 256);
    v27 = *(v0 + 224);
    v26 = *(v0 + 232);
    v29 = *(v0 + 208);
    v28 = *(v0 + 216);
    v31 = *(v0 + 184);
    v30 = *(v0 + 192);
    v32 = *(v0 + 176);
    v33 = *(v0 + 152);
    v34 = *(v0 + 160);
    v98 = *(v0 + 144);
    v99 = *(v0 + 136);
    v100 = *(v0 + 128);
    v101 = *(v0 + 120);
    v102 = *(v0 + 96);
    v103 = *(v0 + 72);

    v35 = *(v0 + 8);

    return v35();
  }

  v37 = v18;
  v38 = v19;
  outlined destroy of RequestsManager.PECContext(*(v0 + 128), type metadata accessor for AspireHeEvaluationKeyConfig);
  v39 = specialized static Data.== infix(_:_:)(v6, v7, v37, v38);
  outlined consume of Data._Representation(v37, v38);
  if ((v39 & 1) == 0)
  {
    v50 = *(v0 + 328);
    v49 = *(v0 + 336);
    v51 = *(v0 + 136);
    v52 = *(v0 + 104);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(*(v0 + 176) + *(v0 + 400), v51, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    if (v50(v51, 1, v52) == 1)
    {
      v54 = *(v0 + 328);
      v53 = *(v0 + 336);
      v55 = *(v0 + 136);
      v56 = *(v0 + 120);
      v57 = *(v0 + 104);
      v58 = *(v0 + 80);
      v59 = *(v0 + 88);
      *v56 = MEMORY[0x277D84F90];
      *(v56 + 8) = 0;
      v60 = v56 + *(v57 + 24);
      UnknownStorage.init()();
      (*(v59 + 56))(v56 + *(v57 + 28), 1, 1, v58);
      if (v54(v55, 1, v57) != 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 136), &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
      }
    }

    else
    {
      _s8CipherML18AspireApiPECConfigVWObTm_0(*(v0 + 136), *(v0 + 120), type metadata accessor for AspireHeEvaluationKeyConfig);
    }

    v62 = *(v0 + 120);
    v69 = specialized Message.hash()();
    v71 = v70;
    outlined destroy of RequestsManager.PECContext(*(v0 + 120), type metadata accessor for AspireHeEvaluationKeyConfig);
    v72 = Data.hexString.getter(v69, v71);
    v74 = v73;
    outlined consume of Data._Representation(v69, v71);
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v75 = *(v0 + 280);
    v77 = *(v0 + 208);
    v76 = *(v0 + 216);
    v78 = type metadata accessor for Logger();
    __swift_project_value_buffer(v78, static Logger.framework);
    outlined init with copy of AspireApiConfig(v76, v77, type metadata accessor for AspireApiPECConfig);

    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();

    v81 = os_log_type_enabled(v79, v80);
    v82 = *(v0 + 280);
    if (v81)
    {
      v105 = *(v0 + 272);
      v83 = *(v0 + 208);
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v106[0] = v85;
      *v84 = 136446722;
      v104 = v72;
      v86 = Data.hexString.getter(*(v83 + 32), *(v83 + 40));
      v88 = v87;
      outlined destroy of RequestsManager.PECContext(v83, type metadata accessor for AspireApiPECConfig);
      v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v88, v106);

      *(v84 + 4) = v89;
      *(v84 + 12) = 2082;
      v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, v82, v106);

      *(v84 + 14) = v90;
      *(v84 + 22) = 2082;
      v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v74, v106);

      *(v84 + 24) = v91;
      _os_log_impl(&dword_224E26000, v79, v80, "Invalid PEC config hash '%{public}s' for useCase '%{public}s', expected: '%{public}s'", v84, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA61F40](v85, -1, -1);
      MEMORY[0x22AA61F40](v84, -1, -1);
    }

    else
    {
      v92 = *(v0 + 208);

      outlined destroy of RequestsManager.PECContext(v92, type metadata accessor for AspireApiPECConfig);
    }

    v21 = *(v0 + 256);
    v22 = *(v0 + 216);
    v23 = *(v0 + 176);
    type metadata accessor for CipherMLError();
    lazy protocol witness table accessor for type AspireApiConfig and conformance AspireApiConfig(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_7;
  }

  v40 = *(v0 + 80);
  v41 = *(v0 + 88);
  v42 = *(v0 + 72);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(*(v0 + 216) + *(*(v0 + 200) + 40), v42, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v43 = *(v41 + 48);
  v44 = v43(v42, 1, v40);
  v45 = *(v0 + 96);
  if (v44 == 1)
  {
    v46 = *(v0 + 72);
    v47 = *(v0 + 80);
    *v45 = 0;
    *(v45 + 8) = 0;
    *(v45 + 16) = MEMORY[0x277D84F90];
    *(v45 + 24) = 0;
    *(v45 + 32) = 1;
    *(v45 + 40) = 0;
    *(v45 + 48) = 1;
    *(v45 + 56) = 0;
    *(v45 + 64) = 1;
    v48 = v45 + *(v47 + 40);
    UnknownStorage.init()();
    if (v43(v46, 1, v47) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 72), &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    }
  }

  else
  {
    _s8CipherML18AspireApiPECConfigVWObTm_0(*(v0 + 72), v45, type metadata accessor for AspireHeEncryptionParameters);
  }

  v61 = *(v0 + 64);
  RequestsManager.validateConfig(useCase:keyStatus:encryptionParams:)(*(v0 + 272), *(v0 + 280), *(v0 + 176), *(v0 + 96));
  v63 = *(v0 + 264);
  outlined destroy of RequestsManager.PECContext(*(v0 + 96), type metadata accessor for AspireHeEncryptionParameters);
  v64 = [v63 sourceApplicationBundleIdentifier];
  if (v64)
  {
    v65 = v64;
    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v68 = v67;
  }

  else
  {
    v66 = 0;
    v68 = 0;
  }

  *(v0 + 360) = v68;
  v93 = swift_task_alloc();
  *(v0 + 368) = v93;
  *v93 = v0;
  v93[1] = RequestsManager.setPECConfig(config:context:);
  v95 = *(v0 + 272);
  v94 = *(v0 + 280);
  v96 = *(v0 + 176);
  v97 = *(v0 + 64);

  return RequestsManager.rotateKeysOffline(useCase:keyStatus:networkDelegation:)(v95, v94, v96, v66, v68);
}

{
  v1 = v0[32];
  v2 = v0[7];
  outlined destroy of RequestsManager.PECContext(v0[22], type metadata accessor for AspireApiKeyStatus);
  outlined destroy of RequestsManager.PECContext(v1, type metadata accessor for AspireApiConfig);
  if (*(v2 + 48))
  {
    v20 = v0[47];
    v21 = v0[48];
  }

  else
  {
    outlined consume of Data?(v0[47], v0[48]);
    v20 = 0;
    v21 = 0xF000000000000000;
  }

  v3 = v0[32];
  v5 = v0[28];
  v4 = v0[29];
  v6 = v0[26];
  v7 = v0[23];
  v8 = v0[24];
  v9 = v0[22];
  v10 = v0[20];
  v13 = v0[19];
  v14 = v0[18];
  v15 = v0[17];
  v16 = v0[16];
  v17 = v0[15];
  v18 = v0[12];
  v19 = v0[9];
  outlined destroy of RequestsManager.PECContext(v0[27], type metadata accessor for AspireApiPECConfig);

  v11 = v0[1];

  return v11(v20, v21);
}

{
  v1 = v0[27];
  outlined destroy of RequestsManager.PECContext(v0[32], type metadata accessor for AspireApiConfig);
  outlined destroy of RequestsManager.PECContext(v1, type metadata accessor for AspireApiPECConfig);
  v20 = v0[39];
  v2 = v0[32];
  v4 = v0[28];
  v3 = v0[29];
  v6 = v0[26];
  v5 = v0[27];
  v8 = v0[23];
  v7 = v0[24];
  v9 = v0[22];
  v11 = v0[19];
  v10 = v0[20];
  v14 = v0[18];
  v15 = v0[17];
  v16 = v0[16];
  v17 = v0[15];
  v18 = v0[12];
  v19 = v0[9];

  v12 = v0[1];

  return v12();
}

{
  v1 = v0[32];
  v2 = v0[27];
  outlined destroy of RequestsManager.PECContext(v0[22], type metadata accessor for AspireApiKeyStatus);
  outlined destroy of RequestsManager.PECContext(v1, type metadata accessor for AspireApiConfig);
  outlined destroy of RequestsManager.PECContext(v2, type metadata accessor for AspireApiPECConfig);
  v21 = v0[44];
  v3 = v0[32];
  v5 = v0[28];
  v4 = v0[29];
  v7 = v0[26];
  v6 = v0[27];
  v9 = v0[23];
  v8 = v0[24];
  v10 = v0[22];
  v12 = v0[19];
  v11 = v0[20];
  v15 = v0[18];
  v16 = v0[17];
  v17 = v0[16];
  v18 = v0[15];
  v19 = v0[12];
  v20 = v0[9];

  v13 = v0[1];

  return v13();
}

{
  v1 = v0[32];
  v2 = v0[27];
  outlined destroy of RequestsManager.PECContext(v0[22], type metadata accessor for AspireApiKeyStatus);
  outlined destroy of RequestsManager.PECContext(v1, type metadata accessor for AspireApiConfig);
  outlined destroy of RequestsManager.PECContext(v2, type metadata accessor for AspireApiPECConfig);
  v21 = v0[49];
  v3 = v0[32];
  v5 = v0[28];
  v4 = v0[29];
  v7 = v0[26];
  v6 = v0[27];
  v9 = v0[23];
  v8 = v0[24];
  v10 = v0[22];
  v12 = v0[19];
  v11 = v0[20];
  v15 = v0[18];
  v16 = v0[17];
  v17 = v0[16];
  v18 = v0[15];
  v19 = v0[12];
  v20 = v0[9];

  v13 = v0[1];

  return v13();
}

uint64_t RequestsManager.encryptBatch(batchOfElements:shardIndices:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for RequestsManager.PECContext();
  v4[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](RequestsManager.encryptBatch(batchOfElements:shardIndices:context:), 0, 0);
}

{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = type metadata accessor for AspireApiRequest(0);
  v4[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = *(*(type metadata accessor for RequestsManager.PECContext() - 8) + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](RequestsManager.encryptBatch(batchOfElements:shardIndices:context:), 0, 0);
}

uint64_t RequestsManager.encryptBatch(batchOfElements:shardIndices:context:)()
{
  v20 = v0;
  v1 = v0[4];
  v2 = [*v1 useCase];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (*(v1 + 48) == 1)
  {

    v6 = swift_task_alloc();
    v0[8] = v6;
    *v6 = v0;
    v6[1] = RequestsManager.encryptBatch(batchOfElements:shardIndices:context:);
    v7 = v0[7];
    v8 = v0[4];
    v9 = v0[5];

    return RequestsManager.loadContext(requestContext:allowingKeyRotation:)(v7, v8, 1);
  }

  else
  {
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.framework);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19[0] = v15;
      *v14 = 136315394;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000033, 0x8000000225037F50, v19);
      *(v14 + 12) = 2082;
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v5, v19);

      *(v14 + 14) = v16;
      _os_log_impl(&dword_224E26000, v12, v13, "%s should not be called for differentially private use case '%{public}s'. Call 'encryptDifferentiallyPrivateFakes' instead.", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA61F40](v15, -1, -1);
      MEMORY[0x22AA61F40](v14, -1, -1);
    }

    else
    {
    }

    type metadata accessor for CipherMLError();
    lazy protocol witness table accessor for type AspireApiConfig and conformance AspireApiConfig(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v17 = v0[7];

    v18 = v0[1];

    return v18();
  }
}

{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = closure #1 in XPCHandler.removeCachedEntries(byKeywords:clientConfig:);
  }

  else
  {
    v3 = RequestsManager.encryptBatch(batchOfElements:shardIndices:context:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[2];
  v4 = *(v0[6] + 24);
  v5 = type metadata accessor for SimilarityClient();
  specialized RequestsManager.convertToFloats(_:embeddingDimension:)(v3, *(v2 + *(v5 + 20) + v4 + 8));
  v0[10] = v6;
  if (v1)
  {
    outlined destroy of RequestsManager.PECContext(v0[7], type metadata accessor for RequestsManager.PECContext);
    v7 = v0[7];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v6;
    v11 = swift_task_alloc();
    v0[11] = v11;
    *v11 = v0;
    v11[1] = RequestsManager.encryptBatch(batchOfElements:shardIndices:context:);
    v12 = v0[4];
    v13 = v0[5];
    v14 = v0[3];

    return RequestsManager.encryptBatch(batchOfElements:shardIndices:context:)(v10, v14, v12);
  }
}

{
  outlined destroy of RequestsManager.PECContext(v0[7], type metadata accessor for RequestsManager.PECContext);

  v1 = v0[1];
  v3 = v0[13];
  v2 = v0[14];

  return v1(v2, v3);
}

{
  outlined destroy of RequestsManager.PECContext(v0[7], type metadata accessor for RequestsManager.PECContext);
  v1 = v0[12];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

{
  v22 = v0;
  v1 = v0[4];
  v2 = [*v1 useCase];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (*(v1 + 48) == 1)
  {

    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = RequestsManager.encryptBatch(batchOfElements:shardIndices:context:);
    v7 = v0[9];
    v8 = v0[4];
    v9 = v0[5];

    return RequestsManager.loadContext(requestContext:allowingKeyRotation:)(v7, v8, 1);
  }

  else
  {
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.framework);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21[0] = v15;
      *v14 = 136315394;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000033, 0x8000000225037F50, v21);
      *(v14 + 12) = 2082;
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v5, v21);

      *(v14 + 14) = v16;
      _os_log_impl(&dword_224E26000, v12, v13, "%s should not be called for differentially private use case '%{public}s'. Call 'encryptDifferentiallyPrivateFakes' instead.", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA61F40](v15, -1, -1);
      MEMORY[0x22AA61F40](v14, -1, -1);
    }

    else
    {
    }

    type metadata accessor for CipherMLError();
    lazy protocol witness table accessor for type AspireApiConfig and conformance AspireApiConfig(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v18 = v0[8];
    v17 = v0[9];
    v19 = v0[6];

    v20 = v0[1];

    return v20();
  }
}

{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = RequestsManager.encryptBatch(batchOfElements:shardIndices:context:);
  }

  else
  {
    v3 = RequestsManager.encryptBatch(batchOfElements:shardIndices:context:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[6];
  v6 = v0[2];
  v5 = v0[3];
  v7 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  RequestsManager.PECContext.preparePECRequest(elements:shardIndices:keyConfig:)(v6, v5, v4, v2);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  if (v1)
  {
    outlined destroy of RequestsManager.PECContext(v0[9], type metadata accessor for RequestsManager.PECContext);
    v14 = v0[8];
    v13 = v0[9];
    v15 = v0[6];

    v16 = v0[1];

    return v16();
  }

  else
  {
    v8 = v0[7];
    v9 = v0[8];
    lazy protocol witness table accessor for type AspireApiConfig and conformance AspireApiConfig(&lazy protocol witness table cache variable for type AspireApiRequest and conformance AspireApiRequest, type metadata accessor for AspireApiRequest);
    v11 = Message.serializedData(partial:)();
    v12 = v0[9];
    v18 = v0[6];
    v19 = v11;
    v20 = v10;
    outlined destroy of RequestsManager.PECContext(v0[8], type metadata accessor for AspireApiRequest);
    outlined destroy of RequestsManager.PECContext(v12, type metadata accessor for RequestsManager.PECContext);

    v21 = v0[1];

    return v21(v19, v20);
  }
}

{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t RequestsManager.encryptBatch(batchOfElements:shardIndices:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 88);
  v8 = *(*v3 + 80);
  v9 = *v3;
  *(*v3 + 96) = v2;

  if (v2)
  {
    v10 = RequestsManager.encryptBatch(batchOfElements:shardIndices:context:);
  }

  else
  {
    *(v6 + 104) = a2;
    *(v6 + 112) = a1;
    v10 = RequestsManager.encryptBatch(batchOfElements:shardIndices:context:);
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t RequestsManager.encryptDifferentiallyPrivateFakes(batchOfElements:shardIndex:shardCount:pecConfig:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v7 = *(*(type metadata accessor for FakeQueriesList() - 8) + 64) + 15;
  v5[15] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR) - 8) + 64) + 15;
  v5[16] = swift_task_alloc();
  v9 = *(*(type metadata accessor for BinaryDecodingOptions() - 8) + 64) + 15;
  v5[17] = swift_task_alloc();
  v10 = type metadata accessor for AspireApiKeyStatus(0);
  v5[18] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[19] = swift_task_alloc();
  v12 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v5[20] = v12;
  v13 = *(v12 - 8);
  v5[21] = v13;
  v14 = *(v13 + 64) + 15;
  v5[22] = swift_task_alloc();
  v15 = type metadata accessor for RequestsManager.PECContext();
  v5[23] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v17 = swift_task_alloc();
  v5[24] = v17;
  v18 = swift_task_alloc();
  v5[25] = v18;
  *v18 = v5;
  v18[1] = RequestsManager.encryptDifferentiallyPrivateFakes(batchOfElements:shardIndex:shardCount:pecConfig:context:);

  return RequestsManager.loadContext(requestContext:allowingKeyRotation:)(v17, a5, 1);
}

uint64_t RequestsManager.encryptDifferentiallyPrivateFakes(batchOfElements:shardIndex:shardCount:pecConfig:context:)()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = RequestsManager.encryptDifferentiallyPrivateFakes(batchOfElements:shardIndex:shardCount:pecConfig:context:);
  }

  else
  {
    v3 = RequestsManager.encryptDifferentiallyPrivateFakes(batchOfElements:shardIndex:shardCount:pecConfig:context:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v87 = v0;
  v1 = *(v0 + 112);
  v2 = [*v1 useCase];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (*(v1 + 48))
  {
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.framework);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *&v85[0] = v10;
      *v9 = 136446210;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v5, v85);

      *(v9 + 4) = v11;
      _os_log_impl(&dword_224E26000, v7, v8, "Missing differential privacy parameters for the use case '%{public}s.'", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x22AA61F40](v10, -1, -1);
      MEMORY[0x22AA61F40](v9, -1, -1);
    }

    else
    {
    }

    v22 = *(v0 + 192);
    type metadata accessor for CipherMLError();
    lazy protocol witness table accessor for type AspireApiConfig and conformance AspireApiConfig(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
LABEL_17:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_18;
  }

  v12 = *(v0 + 112);
  v13 = *(v0 + 80);
  v14 = *(v12 + 40);
  v15 = *(v12 + 24);
  *(v0 + 16) = *(v12 + 8);
  *(v0 + 32) = v15;
  *(v0 + 48) = v14;
  v16 = *(v13 + 16);
  if (v16 != 1)
  {

    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v23 = *(v0 + 80);
    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.framework);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 80);
    if (v27)
    {
      v29 = swift_slowAlloc();
      *v29 = 134349056;
      *(v29 + 4) = v16;

      _os_log_impl(&dword_224E26000, v25, v26, "encryptDifferentiallyPrivateFakes requires batchOfElements.count == 1,\nfound '%{public}ld.'\nIn the future, we may support a batch of > 1 embedding vector.", v29, 0xCu);
      MEMORY[0x22AA61F40](v29, -1, -1);
    }

    else
    {
      v30 = *(v0 + 80);
    }

    v22 = *(v0 + 192);
    type metadata accessor for CipherMLError();
    lazy protocol witness table accessor for type AspireApiConfig and conformance AspireApiConfig(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    goto LABEL_17;
  }

  v17 = *(v0 + 208);
  v18 = *(v0 + 192);
  v19 = *(*(v0 + 184) + 24);
  v20 = *(v18 + *(type metadata accessor for SimilarityClient() + 20) + v19 + 8);
  specialized RequestsManager.convertToFloats(_:embeddingDimension:)(v13, v20);
  if (v17)
  {
    v22 = *(v0 + 192);

LABEL_18:
    outlined destroy of RequestsManager.PECContext(v22, type metadata accessor for RequestsManager.PECContext);
    v31 = *(v0 + 192);
    v32 = *(v0 + 176);
    v33 = *(v0 + 152);
    v35 = *(v0 + 128);
    v34 = *(v0 + 136);
    v36 = *(v0 + 120);

    v37 = *(v0 + 8);

    return v37();
  }

  v83 = v20;
  v84 = v21;
  v39 = *(v0 + 144);
  v40 = *(v0 + 152);
  v41 = *(v0 + 136);
  v42 = [*(v0 + 104) serializedKeyStatus];
  v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;

  *(v0 + 56) = v43;
  *(v0 + 64) = v45;
  v86 = 0;
  memset(v85, 0, sizeof(v85));
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type AspireApiConfig and conformance AspireApiConfig(&lazy protocol witness table cache variable for type AspireApiKeyStatus and conformance AspireApiKeyStatus, type metadata accessor for AspireApiKeyStatus);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  v46 = *(v0 + 160);
  v47 = *(v0 + 168);
  v48 = *(v0 + 128);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(*(v0 + 152) + *(*(v0 + 144) + 24), v48, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v49 = *(v47 + 48);
  v50 = v49(v48, 1, v46);
  v51 = *(v0 + 176);
  if (v50 == 1)
  {
    v53 = *(v0 + 152);
    v52 = *(v0 + 160);
    v54 = *(v0 + 128);
    *v51 = MEMORY[0x277D84F90];
    *(v51 + 8) = 0;
    v55 = v51 + *(v52 + 24);
    UnknownStorage.init()();
    outlined destroy of RequestsManager.PECContext(v53, type metadata accessor for AspireApiKeyStatus);
    v56 = *(v52 + 28);
    v57 = type metadata accessor for AspireHeEncryptionParameters(0);
    (*(*(v57 - 8) + 56))(v51 + v56, 1, 1, v57);
    v58 = v49(v54, 1, v52);
    v59 = v83;
    if (v58 != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 128), &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    }
  }

  else
  {
    v60 = *(v0 + 128);
    outlined destroy of RequestsManager.PECContext(*(v0 + 152), type metadata accessor for AspireApiKeyStatus);
    _s8CipherML18AspireApiPECConfigVWObTm_0(v60, v51, type metadata accessor for AspireHeEvaluationKeyConfig);
    v59 = v83;
  }

  v61 = *(v0 + 120);
  v62 = *(v0 + 96);

  FakeQueriesList.init(dpParameters:shardCount:useCase:)(v0 + 16, v62, v3, v5, v61);
  v63 = *(v0 + 120);
  FakeQueriesList.returnFakeQueries()();
  v65 = v64;
  outlined destroy of RequestsManager.PECContext(*(v0 + 120), type metadata accessor for FakeQueriesList);

  *(v0 + 72) = v65;
  v66 = *(v65 + 16);
  if (v59)
  {
    v67 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v67 + 16) = v59;
    bzero((v67 + 32), 4 * v59);
  }

  else
  {
    v67 = MEMORY[0x277D84F90];
  }

  v68 = *(v0 + 192);
  v69 = *(v0 + 176);
  v70 = *(v0 + 88);
  v71 = specialized RandomNumberGenerator.next<A>(upperBound:)(v66 + 1);
  v72 = swift_task_alloc();
  v72[2] = v71;
  v72[3] = v68;
  v72[4] = v84;
  v72[5] = v70;
  v72[6] = v69;
  v72[7] = v67;
  v72[8] = v0 + 72;
  v73 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_10Foundation4DataVsAE_pTg5(partial apply for closure #1 in RequestsManager.encryptDifferentiallyPrivateFakes(batchOfElements:shardIndex:shardCount:pecConfig:context:), v72, 0, v66 + 1);
  v74 = *(v0 + 192);
  v75 = *(v0 + 176);
  v76 = *(v0 + 152);
  v78 = *(v0 + 128);
  v77 = *(v0 + 136);
  v79 = *(v0 + 120);
  v80 = v73;

  v81 = *(v0 + 72);

  outlined destroy of RequestsManager.PECContext(v75, type metadata accessor for AspireHeEvaluationKeyConfig);
  outlined destroy of RequestsManager.PECContext(v74, type metadata accessor for RequestsManager.PECContext);

  v82 = *(v0 + 8);

  return v82(v80);
}

{
  v1 = v0[26];
  v2 = v0[24];
  v3 = v0[22];
  v4 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];

  v8 = v0[1];

  return v8();
}

uint64_t RequestsManager.decryptBatch(batchOfSimilarityScores:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a1;
  v3[5] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = *(*(type metadata accessor for AspireApiPECResponse(0) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(type metadata accessor for BinaryDecodingOptions() - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = type metadata accessor for AspireApiResponse(0);
  v3[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = type metadata accessor for RequestsManager.PECContext();
  v3[11] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v12 = swift_task_alloc();
  v3[12] = v12;
  v13 = swift_task_alloc();
  v3[13] = v13;
  *v13 = v3;
  v13[1] = RequestsManager.decryptBatch(batchOfSimilarityScores:context:);

  return RequestsManager.loadContext(requestContext:allowingKeyRotation:)(v12, a3, 0);
}

uint64_t RequestsManager.decryptBatch(batchOfSimilarityScores:context:)()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = RequestsManager.decryptBatch(batchOfSimilarityScores:context:);
  }

  else
  {
    v3 = RequestsManager.decryptBatch(batchOfSimilarityScores:context:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[4];
  v0[2] = v1;
  v2 = v0[14];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  v6 = v0[5];
  v0[3] = v6;
  outlined copy of Data._Representation(v1, v6);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type AspireApiConfig and conformance AspireApiConfig(&lazy protocol witness table cache variable for type AspireApiResponse and conformance AspireApiResponse, type metadata accessor for AspireApiResponse);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v2)
  {
    v7 = v0[12];
LABEL_9:
    outlined destroy of RequestsManager.PECContext(v7, type metadata accessor for RequestsManager.PECContext);
    v22 = v0[12];
    v23 = v0[10];
    v25 = v0[7];
    v24 = v0[8];
    v26 = v0[6];

    v27 = v0[1];

    return v27();
  }

  v8 = v0[6];
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0[10], v8, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v9 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  v10 = (*(*(v9 - 8) + 48))(v8, 1, v9);
  v11 = v0[6];
  if (v10 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[6], &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
LABEL_8:
    v20 = v0[12];
    v21 = v0[10];
    type metadata accessor for CipherMLError();
    lazy protocol witness table accessor for type AspireApiConfig and conformance AspireApiConfig(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined destroy of RequestsManager.PECContext(v21, type metadata accessor for AspireApiResponse);
    v7 = v20;
    goto LABEL_9;
  }

  v12 = v0[6];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of RequestsManager.PECContext(v11, type metadata accessor for AspireApiResponse.OneOf_Response);
    goto LABEL_8;
  }

  v14 = v0[11];
  v13 = v0[12];
  v15 = v0[7];
  _s8CipherML18AspireApiPECConfigVWObTm_0(v11, v15, type metadata accessor for AspireApiPECResponse);
  v16 = v13 + *(v14 + 24);
  SimilarityClient.decryptSimilarityScores(_:)(v15);
  v18 = v0[12];
  v19 = v0[10];
  v29 = v0[8];
  v30 = v0[6];
  v31 = v17;
  outlined destroy of RequestsManager.PECContext(v0[7], type metadata accessor for AspireApiPECResponse);
  outlined destroy of RequestsManager.PECContext(v19, type metadata accessor for AspireApiResponse);
  outlined destroy of RequestsManager.PECContext(v18, type metadata accessor for RequestsManager.PECContext);

  v32 = v0[1];

  return v32(v31);
}

{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];

  v7 = v0[1];

  return v7();
}