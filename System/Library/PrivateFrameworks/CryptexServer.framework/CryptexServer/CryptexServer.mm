uint64_t outlined init with take of BootstrapVirtualEnv.Strategy(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_226121570(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FilePath();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2261215DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FilePath();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22612164C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FilePath();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2261216B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FilePath();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_226121728()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226121770()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2261217A8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void XPCClientAuthenticator.authenticate(request:with:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34[4] = *MEMORY[0x277D85DE8];
  v11 = type metadata accessor for CryptexError();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20]();
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v32 = a5;
  if (xpc_copy_entitlements_data_for_token())
  {
    swift_getObjectType();
    v16 = OS_xpc_object.data()();
    if (v5)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = v16;
      v20 = v17;
      v28 = a1;
      v21 = objc_opt_self();
      isa = Data._bridgeToObjectiveC()().super.isa;
      v33[0] = 0;
      v23 = [v21 propertyListWithData:isa options:0 format:0 error:v33];

      v24 = v33[0];
      if (v23)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        outlined init with copy of Any(v34, v33);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
        if (swift_dynamicCast())
        {
          v25 = *(v28 + 4);
          __swift_project_boxed_opaque_existential_1(v28, *(v28 + 3));
          dispatch thunk of Request.checkEntitlement(entitlements:)();
          __swift_destroy_boxed_opaque_existential_0(v34);
          outlined consume of Data._Representation(v19, v20);
          swift_unknownObjectRelease();
        }

        else
        {
          (*(v12 + 104))(v15, *MEMORY[0x277D02D48], v11);
          v27 = "ientAuthenticator.swift";
          v28 = "Failed to get entitlements data";
          type metadata accessor for CryptexErrorMessage();
          lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
          swift_allocError();
          static CryptexError.error(_:_:file:function:lineNumber:)();
          (*(v12 + 8))(v15, v11);
          swift_willThrow();
          outlined consume of Data._Representation(v19, v20);
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_0(v34);
        }
      }

      else
      {
        v26 = v24;
        v28 = _convertNSErrorToError(_:)();

        swift_willThrow();
        (*(v12 + 104))(v15, *MEMORY[0x277D02D48], v11);
        v27 = "ientAuthenticator.swift";
        type metadata accessor for CryptexErrorMessage();
        lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
        swift_allocError();
        static CryptexError.error(_:_:file:function:lineNumber:)();
        (*(v12 + 8))(v15, v11);
        swift_willThrow();
        outlined consume of Data._Representation(v19, v20);
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    (*(v12 + 104))(v15, *MEMORY[0x277D02D90], v11);
    type metadata accessor for CryptexErrorMessage();
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)();
    (*(v12 + 8))(v15, v11);
    swift_willThrow();
  }

  v18 = *MEMORY[0x277D85DE8];
}

unint64_t lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage()
{
  result = lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage;
  if (!lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage)
  {
    type metadata accessor for CryptexErrorMessage();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage);
  }

  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCClientAuthenticator(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for XPCClientAuthenticator(_WORD *result, int a2, int a3)
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

uint64_t Inventory.name.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t key path setter for Inventory.venvConfig : Inventory(uint64_t a1, uint64_t a2)
{
  v4 = *(*(type metadata accessor for VirtualEnvConfig() - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of VirtualEnvConfig(a1, v6);
  return (*(**a2 + 144))(v6);
}

uint64_t Inventory.venvConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13CryptexServer9Inventory_venvConfig;
  swift_beginAccess();
  return outlined init with copy of VirtualEnvConfig(v1 + v3, a1);
}

uint64_t outlined init with copy of VirtualEnvConfig(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VirtualEnvConfig();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Inventory.venvConfig.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13CryptexServer9Inventory_venvConfig;
  swift_beginAccess();
  outlined assign with take of VirtualEnvConfig(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t outlined assign with take of VirtualEnvConfig(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VirtualEnvConfig();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Inventory.logger.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t key path setter for Inventory.cryptexStorage : Inventory(uint64_t a1, uint64_t a2)
{
  v4 = *(*(type metadata accessor for FilePath() - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 168))(v6);
}

uint64_t Inventory.cryptexStorage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13CryptexServer9Inventory_cryptexStorage;
  swift_beginAccess();
  v4 = type metadata accessor for FilePath();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t Inventory.cryptexStorage.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13CryptexServer9Inventory_cryptexStorage;
  swift_beginAccess();
  v4 = type metadata accessor for FilePath();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t Inventory.cryptexGraftArea.getter()
{
  v1 = *(*(type metadata accessor for FilePath() - 8) + 64);
  MEMORY[0x28223BE20]();
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v0 + OBJC_IVAR____TtC13CryptexServer9Inventory_runtimeDirectory);
  return FilePath.appending(_:)();
}

uint64_t Inventory.cryptexes.getter()
{
  v2 = v1;
  v77[1] = *MEMORY[0x277D85DE8];
  v73 = type metadata accessor for Logger();
  v76 = *(v73 - 8);
  v3 = *(v76 + 64);
  MEMORY[0x28223BE20](v73);
  v72 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FilePath();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v71 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v61 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v61 - v13;
  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_13CryptexServer0C0CTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v16 = [objc_opt_self() defaultManager];
  v17 = *(*v0 + 160);
  v18 = *v0 + 160;
  v74 = v0;
  v68 = v18;
  v69 = v17;
  v17();
  v19 = FilePath.string.getter();
  v21 = v20;
  v22 = *(v6 + 8);
  v70 = v14;
  v66 = v6 + 8;
  v67 = v5;
  v65 = v22;
  v22(v14, v5);
  v23 = MEMORY[0x22AA76630](v19, v21);

  v77[0] = 0;
  v24 = [v16 contentsOfDirectoryAtPath:v23 error:v77];

  v25 = v77[0];
  if (!v24)
  {
    v58 = v77[0];

    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_22;
  }

  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v25;

  v64 = *(v26 + 16);
  if (!v64)
  {
LABEL_19:

LABEL_22:
    v59 = *MEMORY[0x277D85DE8];
    return v15;
  }

  v28 = 0;
  v62 = (v76 + 16);
  v63 = OBJC_IVAR____TtC13CryptexServer9Inventory_logger;
  v29 = (v26 + 40);
  v61 = v26;
  while (1)
  {
    if (v28 >= *(v26 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
    }

    v76 = v28;
    v33 = *(v29 - 1);
    v32 = *v29;

    v35 = v74;
    (v69)(v34);
    FilePath.appending(_:)();
    type metadata accessor for Cryptex();
    v36 = FilePath.string.getter();
    v37 = v71;
    MEMORY[0x22AA76600](v36);
    v38 = v72;
    (*v62)(v72, v35 + v63, v73);
    v39 = Cryptex.__allocating_init(dir:logger:)(v37, v38);
    if (v2)
    {
      v65(v12, v67);

      goto LABEL_22;
    }

    v40 = v39;
    v41 = v12;
    v75 = 0;
    v43 = *(v39 + 16);
    v42 = *(v39 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77[0] = v15;
    v46 = specialized __RawDictionaryStorage.find<A>(_:)(v43, v42, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
    v47 = v15;
    v48 = v15[2];
    v49 = (v45 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      goto LABEL_24;
    }

    v51 = v45;
    if (v47[3] < v50)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v12 = v41;
      if (v45)
      {
        goto LABEL_4;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      v12 = v41;
      if (v51)
      {
LABEL_4:

        v15 = v77[0];
        v30 = *(v77[0] + 7);
        v31 = *(v30 + 8 * v46);
        *(v30 + 8 * v46) = v40;

        v65(v12, v67);
        goto LABEL_5;
      }
    }

LABEL_15:
    v15 = v77[0];
    *(v77[0] + (v46 >> 6) + 8) |= 1 << v46;
    v54 = (v15[6] + 16 * v46);
    *v54 = v43;
    v54[1] = v42;
    *(v15[7] + 8 * v46) = v40;

    v65(v12, v67);
    v55 = v15[2];
    v56 = __OFADD__(v55, 1);
    v57 = v55 + 1;
    if (v56)
    {
      goto LABEL_25;
    }

    v15[2] = v57;
LABEL_5:
    v2 = v75;
    v28 = v76 + 1;
    v29 += 2;
    v26 = v61;
    if (v64 == v76 + 1)
    {
      goto LABEL_19;
    }
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v50, isUniquelyReferenced_nonNull_native);
  v52 = specialized __RawDictionaryStorage.find<A>(_:)(v43, v42, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
  if ((v51 & 1) == (v53 & 1))
  {
    v46 = v52;
    v12 = v41;
    if (v51)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t Inventory.numInstalled.getter()
{
  v3 = (*(*v1 + 192))();
  if (!v2)
  {
    v0 = *(v3 + 16);
  }

  return v0;
}

uint64_t Inventory.authenticator.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13CryptexServer9Inventory_authenticator;
  swift_beginAccess();
  return outlined init with copy of AssetAuthenticatorProtocol(v1 + v3, a1);
}

uint64_t Inventory.authenticator.setter(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC13CryptexServer9Inventory_authenticator;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + v3));
  outlined init with take of BootstrapVirtualEnv.Strategy(a1, v1 + v3);
  return swift_endAccess();
}

char *Inventory.__allocating_init(name:runtimeDirectory:cryptexStorage:authenticator:venvConfig:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v83 = a5;
  v7 = v6;
  v82 = a6;
  v92 = a4;
  v88 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v81 = &v65 - v12;
  v87 = type metadata accessor for VirtualEnvConfig();
  v80 = *(v87 - 8);
  v13 = *(v80 + 64);
  MEMORY[0x28223BE20](v87);
  v85 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v75 = &v65 - v17;
  v86 = type metadata accessor for FilePath();
  v89 = *(v86 - 8);
  v18 = *(v89 + 64);
  v19 = MEMORY[0x28223BE20](v86);
  v73 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v72 = &v65 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v65 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v65 - v26;
  v28 = type metadata accessor for Logger();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v7 + 48);
  v34 = *(v7 + 52);
  v70 = v7;
  v35 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v35 + 112) = a1;
  *(v35 + 120) = a2;
  swift_bridgeObjectRetain_n();
  Logger.init(category:)(a1, a2);
  v68 = v29;
  v36 = *(v29 + 32);
  v67 = OBJC_IVAR____TtC13CryptexServer9Inventory_logger;
  v69 = v28;
  v36(v35 + OBJC_IVAR____TtC13CryptexServer9Inventory_logger, v32, v28);
  v37 = v89;
  v38 = v86;
  v74 = *(v89 + 16);
  v74(v25, v88, v86);
  v39 = a1;
  v40 = v38;
  v78 = v39;
  v79 = a2;
  v90 = v39;
  v91 = a2;

  MEMORY[0x22AA76680](47, 0xE100000000000000);
  FilePath.appending(_:)();
  v41 = v75;
  v42 = *(v37 + 32);
  v66 = OBJC_IVAR____TtC13CryptexServer9Inventory_runtimeDirectory;
  v76 = v35;
  v77 = v27;
  v42(v35 + OBJC_IVAR____TtC13CryptexServer9Inventory_runtimeDirectory, v27, v40);
  outlined init with copy of FilePath?(v92, v41, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v43 = v37;
  if ((*(v37 + 48))(v41, 1, v40) == 1)
  {
    outlined destroy of FilePath?(v41, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
    v44 = v88;
    v74(v25, v88, v40);
    v90 = v78;
    v91 = v79;
    MEMORY[0x22AA76680](0x786574707972632FLL, 0xEB000000002F7365);
    v45 = v77;
    FilePath.appending(_:)();
    v46 = v44;
  }

  else
  {
    v71 = v42;
    v47 = v42;
    v48 = v72;
    v47(v72, v41, v40);
    v74(v25, v48, v40);
    v90 = v78;
    v91 = v79;
    MEMORY[0x22AA76680](0x786574707972632FLL, 0xEB000000002F7365);
    v45 = v77;
    FilePath.appending(_:)();
    v49 = v48;
    v42 = v71;
    (*(v43 + 8))(v49, v40);
    v46 = v88;
  }

  v50 = v76;
  v42(&v76[OBJC_IVAR____TtC13CryptexServer9Inventory_cryptexStorage], v45, v40);
  v51 = v83;
  outlined init with copy of AssetAuthenticatorProtocol(v83, &v50[OBJC_IVAR____TtC13CryptexServer9Inventory_authenticator]);
  v53 = v81;
  v52 = v82;
  outlined init with copy of FilePath?(v82, v81, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
  v54 = *(v80 + 48);
  v55 = v54(v53, 1, v87);
  v56 = v84;
  if (v55 != 1)
  {
    outlined destroy of FilePath?(v52, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
    __swift_destroy_boxed_opaque_existential_0(v51);
    outlined destroy of FilePath?(v92, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
    (*(v89 + 8))(v46, v40);
    v63 = v85;
    outlined init with take of VirtualEnvConfig(v53, v85, type metadata accessor for VirtualEnvConfig);
LABEL_10:
    outlined init with take of VirtualEnvConfig(v63, &v50[OBJC_IVAR____TtC13CryptexServer9Inventory_venvConfig], type metadata accessor for VirtualEnvConfig);
    return v50;
  }

  v57 = v73;
  MEMORY[0x22AA76580](0xD000000000000013, 0x80000002261455E0);
  VirtualEnvConfig.init(globalEnvRoot:)(v57, v85);
  if (!v56)
  {
    outlined destroy of FilePath?(v52, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
    __swift_destroy_boxed_opaque_existential_0(v51);
    outlined destroy of FilePath?(v92, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
    (*(v89 + 8))(v46, v86);
    if (v54(v53, 1, v87) != 1)
    {
      outlined destroy of FilePath?(v53, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
    }

    v63 = v85;
    goto LABEL_10;
  }

  if (v54(v53, 1, v87) != 1)
  {
    outlined destroy of FilePath?(v53, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
  }

  v58 = *(v50 + 15);

  (*(v68 + 8))(&v50[v67], v69);
  v59 = *(v89 + 8);
  v60 = v86;
  v59(&v50[v66], v86);
  v59(&v50[OBJC_IVAR____TtC13CryptexServer9Inventory_cryptexStorage], v60);
  __swift_destroy_boxed_opaque_existential_0(&v50[OBJC_IVAR____TtC13CryptexServer9Inventory_authenticator]);
  swift_defaultActor_destroy();
  outlined destroy of FilePath?(v52, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
  __swift_destroy_boxed_opaque_existential_0(v51);
  outlined destroy of FilePath?(v92, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v59(v46, v60);
  v61 = *(*v50 + 48);
  v62 = *(*v50 + 52);
  swift_deallocPartialClassInstance();
  return v50;
}

char *Inventory.init(name:runtimeDirectory:cryptexStorage:authenticator:venvConfig:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v76 = a5;
  v7 = v6;
  v75 = a6;
  v81 = a4;
  v84 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v74 = &v61 - v12;
  v79 = type metadata accessor for VirtualEnvConfig();
  v71 = *(v79 - 8);
  v13 = *(v71 + 64);
  MEMORY[0x28223BE20](v79);
  v72 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v68 = &v61 - v17;
  v80 = type metadata accessor for FilePath();
  v18 = *(v80 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v80);
  v66 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v65 = &v61 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v61 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v61 - v27;
  v29 = type metadata accessor for Logger();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v61 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v7 + 14) = a1;
  *(v7 + 15) = a2;
  swift_bridgeObjectRetain_n();
  Logger.init(category:)(a1, a2);
  v63 = v30;
  v34 = *(v30 + 32);
  v62 = OBJC_IVAR____TtC13CryptexServer9Inventory_logger;
  v64 = v29;
  v34(&v7[OBJC_IVAR____TtC13CryptexServer9Inventory_logger], v33, v29);
  v35 = v18;
  v36 = *(v18 + 16);
  v37 = v80;
  v67 = v36;
  v36(v26, v84, v80);
  v69 = a1;
  v70 = a2;
  v82 = a1;
  v83 = a2;

  MEMORY[0x22AA76680](47, 0xE100000000000000);
  FilePath.appending(_:)();
  v38 = v68;
  v39 = v35;
  v40 = *(v35 + 32);
  v78 = v7;
  v61 = OBJC_IVAR____TtC13CryptexServer9Inventory_runtimeDirectory;
  v41 = &v7[OBJC_IVAR____TtC13CryptexServer9Inventory_runtimeDirectory];
  v42 = v39;
  v40(v41, v28, v37);
  outlined init with copy of FilePath?(v81, v38, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v43 = (*(v42 + 48))(v38, 1, v37);
  v73 = v42;
  if (v43 == 1)
  {
    outlined destroy of FilePath?(v38, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
    v67(v26, v84, v37);
    v82 = v69;
    v83 = v70;
    MEMORY[0x22AA76680](0x786574707972632FLL, 0xEB000000002F7365);
    FilePath.appending(_:)();
  }

  else
  {
    v44 = v65;
    v40(v65, v38, v37);
    v67(v26, v44, v37);
    v82 = v69;
    v83 = v70;
    MEMORY[0x22AA76680](0x786574707972632FLL, 0xEB000000002F7365);
    FilePath.appending(_:)();
    (*(v42 + 8))(v44, v37);
  }

  v45 = v78;
  v40(&v78[OBJC_IVAR____TtC13CryptexServer9Inventory_cryptexStorage], v28, v37);
  v46 = v76;
  outlined init with copy of AssetAuthenticatorProtocol(v76, &v45[OBJC_IVAR____TtC13CryptexServer9Inventory_authenticator]);
  v48 = v74;
  v47 = v75;
  outlined init with copy of FilePath?(v75, v74, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
  v49 = *(v71 + 48);
  if (v49(v48, 1, v79) != 1)
  {
    outlined destroy of FilePath?(v47, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
    __swift_destroy_boxed_opaque_existential_0(v46);
    outlined destroy of FilePath?(v81, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
    (*(v73 + 8))(v84, v37);
    v51 = v72;
    outlined init with take of VirtualEnvConfig(v48, v72, type metadata accessor for VirtualEnvConfig);
LABEL_10:
    outlined init with take of VirtualEnvConfig(v51, &v45[OBJC_IVAR____TtC13CryptexServer9Inventory_venvConfig], type metadata accessor for VirtualEnvConfig);
    return v45;
  }

  v50 = v66;
  MEMORY[0x22AA76580](0xD000000000000013, 0x80000002261455E0);
  v51 = v72;
  v52 = v77;
  VirtualEnvConfig.init(globalEnvRoot:)(v50, v72);
  if (!v52)
  {
    outlined destroy of FilePath?(v47, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
    __swift_destroy_boxed_opaque_existential_0(v46);
    outlined destroy of FilePath?(v81, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
    (*(v73 + 8))(v84, v80);
    if (v49(v48, 1, v79) != 1)
    {
      outlined destroy of FilePath?(v48, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
    }

    goto LABEL_10;
  }

  v53 = v49(v48, 1, v79);
  v54 = v73;
  if (v53 != 1)
  {
    outlined destroy of FilePath?(v48, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
  }

  v55 = *(v45 + 15);

  (*(v63 + 8))(&v45[v62], v64);
  v56 = *(v54 + 8);
  v57 = v80;
  v56(&v45[v61], v80);
  v56(&v45[OBJC_IVAR____TtC13CryptexServer9Inventory_cryptexStorage], v57);
  __swift_destroy_boxed_opaque_existential_0(&v45[OBJC_IVAR____TtC13CryptexServer9Inventory_authenticator]);
  type metadata accessor for Inventory();
  swift_defaultActor_destroy();
  outlined destroy of FilePath?(v47, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
  __swift_destroy_boxed_opaque_existential_0(v46);
  outlined destroy of FilePath?(v81, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v56(v84, v57);
  v58 = *(*v45 + 48);
  v59 = *(*v45 + 52);
  swift_deallocPartialClassInstance();
  return v45;
}

char *static Inventory.create(name:runtimeDirectory:cryptexStorage:)(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t), uint64_t a4, char *a5, uint64_t a6)
{
  v89 = a5;
  v93 = a3;
  v87 = a1;
  v99 = type metadata accessor for VirtualEnvConfig();
  v9 = *(v99 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v99);
  v90 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v92 = *(v12 - 8);
  v13 = *(v92 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v94 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v97 = &v76 - v20;
  v21 = type metadata accessor for FilePath();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v81 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v80 = &v76 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v96 = &v76 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v86 = &v76 - v31;
  MEMORY[0x28223BE20](v30);
  v98 = &v76 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v84 = &v76 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v103 = &v76 - v38;
  MEMORY[0x28223BE20](v37);
  v40 = &v76 - v39;
  v95 = v21;
  if (a6)
  {

    MEMORY[0x22AA76600](v89, a6);
    (*(v22 + 56))(v40, 0, 1, v21);
  }

  else
  {
    (*(v22 + 56))(&v76 - v39, 1, 1, v21);
  }

  v41 = v98;
  MEMORY[0x22AA76600](v93, a4);
  v89 = v40;
  outlined init with copy of FilePath?(v40, v103, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v102[3] = type metadata accessor for Image4Auth();
  v102[4] = MEMORY[0x277D02E18];
  __swift_allocate_boxed_opaque_existential_1(v102);
  Image4Auth.init()();
  v88 = v9;
  (*(v9 + 56))(v97, 1, 1, v99);
  v42 = type metadata accessor for Inventory();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  v78 = v42;
  v45 = swift_allocObject();
  swift_defaultActor_initialize();
  v46 = v87;
  *(v45 + 112) = v87;
  *(v45 + 120) = a2;
  swift_bridgeObjectRetain_n();
  Logger.init(category:)(v46, a2);
  v47 = *(v92 + 32);
  v77 = OBJC_IVAR____TtC13CryptexServer9Inventory_logger;
  v79 = v12;
  v47(v45 + OBJC_IVAR____TtC13CryptexServer9Inventory_logger, v15, v12);
  v48 = v22;
  v49 = *(v22 + 16);
  v50 = v95;
  v82 = v49;
  v49(v96, v41, v95);
  v100 = v46;
  v101 = a2;

  MEMORY[0x22AA76680](47, 0xE100000000000000);
  v51 = v86;
  FilePath.appending(_:)();
  v52 = *(v48 + 32);
  v85 = v45;
  v76 = OBJC_IVAR____TtC13CryptexServer9Inventory_runtimeDirectory;
  v93 = v52;
  v52((v45 + OBJC_IVAR____TtC13CryptexServer9Inventory_runtimeDirectory), v51, v50);
  v53 = v84;
  outlined init with copy of FilePath?(v103, v84, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v83 = v48;
  if ((*(v48 + 48))(v53, 1, v50) == 1)
  {
    outlined destroy of FilePath?(v53, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
    v54 = v95;
    v82(v96, v98, v95);
    v100 = v46;
    v101 = a2;
    MEMORY[0x22AA76680](0x786574707972632FLL, 0xEB000000002F7365);
    FilePath.appending(_:)();
    v55 = v83;
  }

  else
  {
    v56 = v80;
    v57 = v95;
    v93(v80, v53, v95);
    v82(v96, v56, v57);
    v100 = v46;
    v101 = a2;
    MEMORY[0x22AA76680](0x786574707972632FLL, 0xEB000000002F7365);
    FilePath.appending(_:)();
    v55 = v83;
    (*(v83 + 8))(v56, v57);
    v54 = v57;
  }

  v58 = v51;
  v59 = v85;
  v93(&v85[OBJC_IVAR____TtC13CryptexServer9Inventory_cryptexStorage], v58, v54);
  outlined init with copy of AssetAuthenticatorProtocol(v102, &v59[OBJC_IVAR____TtC13CryptexServer9Inventory_authenticator]);
  v60 = v97;
  v61 = v94;
  outlined init with copy of FilePath?(v97, v94, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
  v62 = *(v88 + 48);
  v63 = v62(v61, 1, v99);
  v64 = v90;
  if (v63 != 1)
  {
    outlined destroy of FilePath?(v60, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
    __swift_destroy_boxed_opaque_existential_0(v102);
    outlined destroy of FilePath?(v103, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
    (*(v55 + 8))(v98, v54);
    outlined init with take of VirtualEnvConfig(v61, v64, type metadata accessor for VirtualEnvConfig);
    v67 = v89;
LABEL_13:
    outlined init with take of VirtualEnvConfig(v64, &v59[OBJC_IVAR____TtC13CryptexServer9Inventory_venvConfig], type metadata accessor for VirtualEnvConfig);
    v73 = v67;
    goto LABEL_14;
  }

  v65 = v81;
  MEMORY[0x22AA76580](0xD000000000000013, 0x80000002261455E0);
  v66 = v91;
  VirtualEnvConfig.init(globalEnvRoot:)(v65, v64);
  v67 = v89;
  if (!v66)
  {
    outlined destroy of FilePath?(v97, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
    __swift_destroy_boxed_opaque_existential_0(v102);
    outlined destroy of FilePath?(v103, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
    (*(v55 + 8))(v98, v54);
    v75 = v94;
    if (v62(v94, 1, v99) != 1)
    {
      outlined destroy of FilePath?(v75, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
    }

    goto LABEL_13;
  }

  v68 = v94;
  if (v62(v94, 1, v99) != 1)
  {
    outlined destroy of FilePath?(v68, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
  }

  v69 = *(v59 + 15);

  (*(v92 + 8))(&v59[v77], v79);
  v70 = *(v55 + 8);
  v70(&v59[v76], v54);
  v70(&v59[OBJC_IVAR____TtC13CryptexServer9Inventory_cryptexStorage], v54);
  __swift_destroy_boxed_opaque_existential_0(&v59[OBJC_IVAR____TtC13CryptexServer9Inventory_authenticator]);
  swift_defaultActor_destroy();
  outlined destroy of FilePath?(v97, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
  __swift_destroy_boxed_opaque_existential_0(v102);
  outlined destroy of FilePath?(v103, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v70(v98, v54);
  v71 = *(*v59 + 48);
  v72 = *(*v59 + 52);
  swift_deallocPartialClassInstance();
  v73 = v67;
LABEL_14:
  outlined destroy of FilePath?(v73, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  return v59;
}

char *static Inventory.create(name:runtimeDirectory:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v88 = a4;
  v91 = a3;
  v93 = a1;
  v5 = type metadata accessor for VirtualEnvConfig();
  v98 = *(v5 - 8);
  v6 = v98[8];
  MEMORY[0x28223BE20](v5);
  v86 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v89 = *(v8 - 8);
  v90 = v8;
  v9 = *(v89 + 64);
  MEMORY[0x28223BE20](v8);
  v83 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v92 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v73 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v80 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v73 - v21;
  v94 = &v73 - v21;
  v23 = type metadata accessor for FilePath();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v78 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v77 = &v73 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v73 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v73 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v73 - v36;

  v38 = v88;

  MEMORY[0x22AA76600](v91, v38);
  (*(v24 + 56))(v22, 1, 1, v23);
  v97[3] = type metadata accessor for Image4Auth();
  v97[4] = MEMORY[0x277D02E18];
  __swift_allocate_boxed_opaque_existential_1(v97);
  Image4Auth.init()();
  v39 = v98[7];
  v88 = v16;
  v85 = v5;
  v39(v16, 1, 1, v5);
  v40 = type metadata accessor for Inventory();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  v76 = v40;
  v43 = swift_allocObject();
  swift_defaultActor_initialize();
  v44 = v93;
  *(v43 + 112) = v93;
  *(v43 + 120) = a2;
  swift_bridgeObjectRetain_n();
  v45 = v83;
  Logger.init(category:)(v44, a2);
  v46 = *(v89 + 32);
  v75 = OBJC_IVAR____TtC13CryptexServer9Inventory_logger;
  v46(v43 + OBJC_IVAR____TtC13CryptexServer9Inventory_logger, v45, v90);
  v47 = *(v24 + 16);
  v91 = v37;
  v79 = v47;
  v47(v32, v37, v23);
  v95 = v44;
  v96 = a2;
  v83 = a2;

  MEMORY[0x22AA76680](47, 0xE100000000000000);
  v48 = v32;
  FilePath.appending(_:)();
  v49 = v80;
  v50 = *(v24 + 32);
  v81 = v43;
  v74 = OBJC_IVAR____TtC13CryptexServer9Inventory_runtimeDirectory;
  v82 = v35;
  v50(v43 + OBJC_IVAR____TtC13CryptexServer9Inventory_runtimeDirectory, v35, v23);
  outlined init with copy of FilePath?(v94, v49, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v51 = v24;
  v52 = (*(v24 + 48))(v49, 1, v23);
  v84 = v24;
  if (v52 == 1)
  {
    outlined destroy of FilePath?(v49, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
    v79(v48, v91, v23);
    v95 = v93;
    v96 = v83;
    MEMORY[0x22AA76680](0x786574707972632FLL, 0xEB000000002F7365);
    v53 = v50;
    v54 = v82;
    FilePath.appending(_:)();
  }

  else
  {
    v55 = v77;
    v50(v77, v49, v23);
    v79(v48, v55, v23);
    v95 = v93;
    v96 = v83;
    MEMORY[0x22AA76680](0x786574707972632FLL, 0xEB000000002F7365);
    v53 = v50;
    v54 = v82;
    FilePath.appending(_:)();
    (*(v51 + 8))(v55, v23);
  }

  v56 = v23;
  v57 = v81;
  v53(&v81[OBJC_IVAR____TtC13CryptexServer9Inventory_cryptexStorage], v54, v23);
  outlined init with copy of AssetAuthenticatorProtocol(v97, &v57[OBJC_IVAR____TtC13CryptexServer9Inventory_authenticator]);
  v58 = v88;
  v59 = v92;
  outlined init with copy of FilePath?(v88, v92, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
  v60 = v98[6];
  v61 = v85;
  v62 = v60(v59, 1, v85);
  v63 = v86;
  if (v62 != 1)
  {
    outlined destroy of FilePath?(v58, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
    __swift_destroy_boxed_opaque_existential_0(v97);
    outlined destroy of FilePath?(v94, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
    (*(v84 + 8))(v91, v56);
    outlined init with take of VirtualEnvConfig(v59, v63, type metadata accessor for VirtualEnvConfig);
LABEL_10:
    outlined init with take of VirtualEnvConfig(v63, &v57[OBJC_IVAR____TtC13CryptexServer9Inventory_venvConfig], type metadata accessor for VirtualEnvConfig);
    return v57;
  }

  v64 = v78;
  MEMORY[0x22AA76580](0xD000000000000013, 0x80000002261455E0);
  v65 = v87;
  VirtualEnvConfig.init(globalEnvRoot:)(v64, v63);
  if (!v65)
  {
    outlined destroy of FilePath?(v58, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
    __swift_destroy_boxed_opaque_existential_0(v97);
    outlined destroy of FilePath?(v94, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
    (*(v84 + 8))(v91, v56);
    v72 = v92;
    if (v60(v92, 1, v61) != 1)
    {
      outlined destroy of FilePath?(v72, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
    }

    goto LABEL_10;
  }

  v66 = v92;
  if (v60(v92, 1, v61) != 1)
  {
    outlined destroy of FilePath?(v66, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
  }

  v67 = *(v57 + 15);

  (*(v89 + 8))(&v57[v75], v90);
  v68 = *(v84 + 8);
  v68(&v57[v74], v56);
  v68(&v57[OBJC_IVAR____TtC13CryptexServer9Inventory_cryptexStorage], v56);
  __swift_destroy_boxed_opaque_existential_0(&v57[OBJC_IVAR____TtC13CryptexServer9Inventory_authenticator]);
  swift_defaultActor_destroy();
  outlined destroy of FilePath?(v88, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
  __swift_destroy_boxed_opaque_existential_0(v97);
  outlined destroy of FilePath?(v94, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v68(v91, v56);
  v69 = *(*v57 + 48);
  v70 = *(*v57 + 52);
  swift_deallocPartialClassInstance();
  return v57;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Inventory.start()()
{
  v2 = (*(*v0 + 248))();
  if (!v1)
  {
    (*(*v0 + 336))(v2);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Inventory.layDownDirectoryStructure()()
{
  v1 = v0;
  v45[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for FilePath();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = objc_opt_self();
  v7 = [v44 defaultManager];
  v8 = FilePath.string.getter();
  v9 = MEMORY[0x22AA76630](v8);

  v45[0] = 0;
  v10 = [v7 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:v45];

  v11 = v45[0];
  if (!v10)
  {
    goto LABEL_6;
  }

  v12 = v45[0];
  v13 = [v44 defaultManager];
  v14 = *(*v1 + 160);
  v15 = v2;
  v40 = *v1 + 160;
  v41 = v14;
  (v14)(v13, v16);
  v17 = FilePath.string.getter();
  v19 = v18;
  v21 = v3 + 8;
  v20 = *(v3 + 8);
  v42 = v21;
  v43 = v15;
  v20(v6, v15);
  v22 = MEMORY[0x22AA76630](v17, v19);

  v45[0] = 0;
  LODWORD(v19) = [v13 0x278584791];

  v11 = v45[0];
  if (!v19)
  {
    goto LABEL_6;
  }

  v23 = v45[0];
  v24 = [v44 defaultManager];
  v41();
  v25 = FilePath.string.getter();
  v27 = v26;
  v28 = v43;
  v20(v6, v43);
  v29 = MEMORY[0x22AA76630](v25, v27);

  v45[0] = 0;
  LODWORD(v27) = [v24 0x278584791];

  v11 = v45[0];
  if (!v27)
  {
    goto LABEL_6;
  }

  v30 = v45[0];
  v31 = [v44 defaultManager];
  (*(*v1 + 184))();
  v32 = FilePath.string.getter();
  v34 = v33;
  v20(v6, v28);
  v35 = MEMORY[0x22AA76630](v32, v34);

  v45[0] = 0;
  v36 = [v31 0x278584791];

  v11 = v45[0];
  if (v36)
  {
    v37 = v45[0];
  }

  else
  {
LABEL_6:
    v38 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v39 = *MEMORY[0x277D85DE8];
}

void Inventory.authenticate(_:)(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for CryptexAssetType();
  v100 = *(v5 - 8);
  v6 = v100[8];
  v7 = MEMORY[0x28223BE20](v5);
  v98 = v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v99 = v84 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v84 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v84 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v84 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v84 - v21;
  v104 = (*(*a1 + 120))(v20);
  v23 = CryptexCore.image4Ticket.getter();
  if (v23)
  {
    v97 = v3;
    v24 = v23;
    v25 = dispatch thunk of CryptexAsset.data.getter();
    if (v2)
    {
    }

    else
    {
      v91 = v13;
      v92 = v16;
      v93 = v5;
      v94 = v24;
      v95 = v25;
      v96 = v26;
      v30 = *(*v97 + 208);
      v31 = *v97 + 208;
      v30(v101);
      v32 = v102;
      v33 = v103;
      v34 = __swift_project_boxed_opaque_existential_1(v101, v102);
      CryptexCore.infoPlist.getter();
      v88 = v34;
      v89 = v33;
      v90 = v32;
      v86 = v31;
      v87 = v30;
      v35 = dispatch thunk of CryptexAsset.data.getter();
      v37 = v36;

      CryptexCore.infoPlist.getter();
      CryptexAsset.type.getter();

      CryptexAssetType._4cc.getter();
      v39 = v38;
      v40 = v35;
      v41 = v37;
      v43 = (v100 + 1);
      v42 = v100[1];
      v44 = v22;
      v45 = v93;
      v42(v44, v93);
      v85 = v39;
      dispatch thunk of AssetAuthenticatorProtocol.authenticate(fileData:with4cc:against:)();
      v90 = v42;
      outlined consume of Data._Representation(v40, v41);

      __swift_destroy_boxed_opaque_existential_0(v101);
      v46 = *(v104 + 16);
      v47 = *MEMORY[0x277D02DD0];
      v48 = v100[13];
      v100 += 13;
      v48(v19, v47, v45);
      if (*(v46 + 16) && (v49 = specialized __RawDictionaryStorage.find<A>(_:)(v19), (v50 & 1) != 0))
      {
        v88 = v48;
        v51 = v43;
        v52 = *(*(v46 + 56) + 8 * v49);

        v53 = v19;
        v54 = v93;
        v55 = v90;
        v56 = (v90)(v53, v93);
        v87(v101, v56);
        v91 = v103;
        v89 = __swift_project_boxed_opaque_existential_1(v101, v102);
        v60 = dispatch thunk of CryptexAsset.data.getter();
        v85 = v61;
        v62 = v92;
        CryptexAsset.type.getter();
        v84[1] = CryptexAssetType._4cc.getter();
        v63 = v62;
        v64 = v85;
        v55(v63, v54);
        dispatch thunk of AssetAuthenticatorProtocol.authenticate(fileData:with4cc:against:)();
        v65 = v104;
        v92 = v51;
        outlined consume of Data._Representation(v60, v64);

        __swift_destroy_boxed_opaque_existential_0(v101);
        v48 = v88;
      }

      else
      {
        v57 = (v90)(v19, v93);
        v87(v101, v57);
        v58 = v103;
        __swift_project_boxed_opaque_existential_1(v101, v102);
        v65 = v104;
        CryptexCore.diskImage.getter();
        v92 = v43;
        v59 = dispatch thunk of CryptexAsset.data.getter();
        v67 = v66;
        v89 = v58;
        v68 = v59;

        CryptexCore.diskImage.getter();
        v88 = v68;
        v69 = v91;
        CryptexAsset.type.getter();

        v85 = CryptexAssetType._4cc.getter();
        v71 = v70;
        v72 = v69;
        v73 = v88;
        v90(v72, v93);
        v91 = v71;
        dispatch thunk of AssetAuthenticatorProtocol.authenticate(fileData:with4cc:against:)();
        outlined consume of Data._Representation(v73, v67);

        __swift_destroy_boxed_opaque_existential_0(v101);
      }

      v74 = *(v65 + 16);
      v75 = v99;
      v48(v99, *MEMORY[0x277D02DC8], v93);
      if (*(v74 + 16) && (v76 = specialized __RawDictionaryStorage.find<A>(_:)(v75), (v77 & 1) != 0))
      {
        v78 = *(*(v74 + 56) + 8 * v76);

        v79 = (v90)(v75, v93);
        v87(v101, v79);
        v100 = v103;
        v99 = __swift_project_boxed_opaque_existential_1(v101, v102);
        v80 = dispatch thunk of CryptexAsset.data.getter();
        v82 = v81;
        v83 = v98;
        CryptexAsset.type.getter();
        CryptexAssetType._4cc.getter();
        v90(v83, v93);
        dispatch thunk of AssetAuthenticatorProtocol.authenticate(fileData:with4cc:against:)();
        outlined consume of Data._Representation(v80, v82);

        outlined consume of Data._Representation(v95, v96);

        __swift_destroy_boxed_opaque_existential_0(v101);
      }

      else
      {
        v90(v75, v93);
        outlined consume of Data._Representation(v95, v96);
      }
    }
  }

  else
  {
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_226120000, v27, v28, "Cryptex is unauthenticated", v29, 2u);
      MEMORY[0x22AA76E00](v29, -1, -1);
    }
  }
}

void *Inventory.bootstrappers(forOptions:)()
{
  v2 = type metadata accessor for FilePath();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for VirtualEnvConfig();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((Cryptex.BootstrapOptions.globalEnvironment.getter() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  (*(*v0 + 136))();
  (*(v3 + 32))(v6, v10, v2);
  v11 = type metadata accessor for BootstrapVirtualEnv();
  v27 = v11;
  v28 = &protocol witness table for BootstrapVirtualEnv;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  BootstrapVirtualEnv.init(envRoot:)(v6, boxed_opaque_existential_1);
  if (v1)
  {
    __swift_deallocate_boxed_opaque_existential_1(v26);
  }

  else
  {
    v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v14 = v0[2];
    v13 = v0[3];
    if (v14 >= v13 >> 1)
    {
      v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v0);
    }

    v15 = v27;
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    v17 = *(*(v15 - 8) + 64);
    MEMORY[0x28223BE20](v16);
    v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v19);
    v24 = v11;
    v25 = &protocol witness table for BootstrapVirtualEnv;
    v21 = __swift_allocate_boxed_opaque_existential_1(&v23);
    outlined init with take of VirtualEnvConfig(v19, v21, type metadata accessor for BootstrapVirtualEnv);
    v0[2] = v14 + 1;
    outlined init with take of BootstrapVirtualEnv.Strategy(&v23, &v0[5 * v14 + 4]);
    __swift_destroy_boxed_opaque_existential_0(v26);
  }

  return v0;
}

uint64_t Inventory.bootstrap(_:via:)(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v4 = type metadata accessor for CryptexError();
  v64 = *(v4 - 8);
  v65 = v4;
  v5 = *(v64 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v56 - v10;
  v12 = type metadata accessor for FilePath();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v56 - v19;
  (*(*v2 + 184))(v18);
  v21 = v66;
  (*(*a1 + 256))(v17);
  v66 = v21;
  if (!v21)
  {
    *&v60 = v7;
    v61 = a1;
    v62 = v20;
    v23 = *(v13 + 8);
    v23(v17, v12);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      outlined destroy of FilePath?(v11, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
      v25 = v64;
      v24 = v65;
      v26 = v60;
      (*(v64 + 104))(v60, *MEMORY[0x277D02D88], v65);
      type metadata accessor for CryptexErrorMessage();
      lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28]);
      swift_allocError();
      static CryptexError.error(_:_:file:function:lineNumber:)();
      (*(v25 + 8))(v26, v24);
      return swift_willThrow();
    }

    v57 = v23;
    v58 = v13 + 8;
    v59 = v12;
    v27 = v62;
    (*(v13 + 32))(v62, v11, v12);
    v29 = *(v63 + 16);
    if (!v29)
    {
      return v57(v27, v59);
    }

    v64 = OBJC_IVAR____TtC13CryptexServer9Inventory_logger;
    v30 = v63 + 32;
    *&v28 = 136315650;
    v60 = v28;
    v31 = v61;
    while (1)
    {
      outlined init with copy of AssetAuthenticatorProtocol(v30, v69);
      v32 = v70;
      v33 = v71;
      __swift_project_boxed_opaque_existential_1(v69, v70);
      v34 = (*(v33 + 8))(v31, v32, v33);
      outlined init with copy of AssetAuthenticatorProtocol(v69, v67);

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v72 = v63;
        *v37 = v60;
        LODWORD(v65) = v34;
        v38 = v68;
        v39 = __swift_project_boxed_opaque_existential_1(v67, v68);
        v40 = *(*(v38 - 8) + 64);
        MEMORY[0x28223BE20](v39);
        (*(v42 + 16))(&v56 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
        v43 = String.init<A>(describing:)();
        v45 = v44;
        __swift_destroy_boxed_opaque_existential_0(v67);
        v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v72);

        *(v37 + 4) = v46;
        *(v37 + 12) = 2080;
        if (v65)
        {
          v47 = 0;
        }

        else
        {
          v47 = 1953459744;
        }

        if (v65)
        {
          v48 = 0xE000000000000000;
        }

        else
        {
          v48 = 0xE400000000000000;
        }

        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &v72);
        v50 = v65;

        *(v37 + 14) = v49;
        v31 = v61;
        *(v37 + 22) = 2080;
        *(v37 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v31 + 16), *(v31 + 24), &v72);
        _os_log_impl(&dword_226120000, v35, v36, "%s is%s applicable to %s", v37, 0x20u);
        v51 = v63;
        swift_arrayDestroy();
        MEMORY[0x22AA76E00](v51, -1, -1);
        v52 = v37;
        v27 = v62;
        MEMORY[0x22AA76E00](v52, -1, -1);

        if ((v50 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(v67);
        if ((v34 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v53 = v70;
      v54 = v71;
      __swift_project_boxed_opaque_existential_1(v69, v70);
      v55 = v66;
      (*(v54 + 16))(v31, v27, v53, v54);
      v66 = v55;
      if (v55)
      {
        v57(v27, v59);
        return __swift_destroy_boxed_opaque_existential_0(v69);
      }

LABEL_8:
      __swift_destroy_boxed_opaque_existential_0(v69);
      v30 += 40;
      if (!--v29)
      {
        return v57(v27, v59);
      }
    }
  }

  return (*(v13 + 8))(v17, v12);
}

uint64_t Inventory.unbootstrap(_:via:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for FilePath();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v23 - v13;
  (*(*v2 + 184))(v12);
  (*(*a1 + 256))(v9);
  (*(v6 + 8))(v9, v5);
  v16 = *(a2 + 16);
  if (v16)
  {
    v26 = OBJC_IVAR____TtC13CryptexServer9Inventory_logger;
    v17 = a2 + 32;
    *&v15 = 136315394;
    v23 = v15;
    v24 = v14;
    v25 = v2;
    do
    {
      outlined init with copy of AssetAuthenticatorProtocol(v17, v27);
      v18 = v28;
      v19 = v29;
      __swift_project_boxed_opaque_existential_1(v27, v28);
      if ((*(v19 + 8))(a1, v18, v19))
      {
        v20 = v28;
        v21 = v29;
        __swift_project_boxed_opaque_existential_1(v27, v28);
        (*(v21 + 24))(a1, v14, v20, v21);
      }

      __swift_destroy_boxed_opaque_existential_0(v27);
      v17 += 40;
      --v16;
    }

    while (v16);
  }

  return outlined destroy of FilePath?(v14, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
}

uint64_t Inventory.contains(_:version:)(uint64_t a1, uint64_t a2)
{
  if (*((*(*v2 + 192))() + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
    v6 = v5;

    if (v6)
    {
      return 1;
    }
  }

  else
  {
  }

  v8 = type metadata accessor for CryptexError();
  lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, MEMORY[0x277D02DB8]);
  v9 = swift_allocError();
  (*(*(v8 - 8) + 104))(v10, *MEMORY[0x277D02D68], v8);
  swift_willThrow();

  return 0;
}

void Inventory.uninstall(byName:version:withOptions:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit0A0C16BootstrapOptionsVSgMd, &_s10CryptexKit0A0C16BootstrapOptionsVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for Cryptex.BootstrapOptions();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (*(*v2 + 192))(v14);
  if (!v3)
  {
    v18 = v17;
    if (*(v17 + 16) && (v19 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, specialized __RawDictionaryStorage.find<A>(_:hashValue:)), (v20 & 1) != 0))
    {
      v21 = *(*(v18 + 56) + 8 * v19);

      (*(*v21 + 176))(v22);
      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {
        outlined destroy of FilePath?(v10, &_s10CryptexKit0A0C16BootstrapOptionsVSgMd, &_s10CryptexKit0A0C16BootstrapOptionsVSgMR);
        v25 = MEMORY[0x277D84F90];
      }

      else
      {
        (*(v12 + 32))(v16, v10, v11);
        v25 = (*(*v4 + 264))(v16);
        (*(v12 + 8))(v16, v11);
      }

      (*(*v4 + 328))(v21, v25);

      (*(*v21 + 272))(v26);
    }

    else
    {

      v23 = type metadata accessor for CryptexError();
      lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, MEMORY[0x277D02DB8]);
      swift_allocError();
      (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D02D68], v23);
      swift_willThrow();
    }
  }
}

uint64_t Inventory.install(_:withOptions:)(uint64_t a1, uint64_t a2)
{
  v88 = a2;
  v4 = type metadata accessor for CryptexError();
  v5 = *(v4 - 8);
  v93 = v4;
  v94 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v92 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for Cryptex.BootstrapOptions();
  v86 = *(v89 - 8);
  v8 = *(v86 + 64);
  MEMORY[0x28223BE20](v89);
  v87 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for URL.DirectoryHint();
  v102 = *(v105 - 8);
  v10 = *(v102 + 64);
  MEMORY[0x28223BE20](v105);
  v100 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for URL();
  v98 = *(v101 - 8);
  v12 = *(v98 + 64);
  v13 = MEMORY[0x28223BE20](v101);
  v96 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v97 = &v80 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v99 = &v80 - v18;
  v95 = type metadata accessor for FilePath();
  v103 = *(v95 - 8);
  v19 = *(v103 + 64);
  v20 = MEMORY[0x28223BE20](v95);
  v90 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v80 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v80 - v25;
  v27 = type metadata accessor for UUID();
  v104 = *(v27 - 8);
  v28 = *(v104 + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a1 + 24);
  v106 = *(a1 + 16);
  v91 = a1;
  v32 = *(*v2 + 192);

  v34 = v109;
  v35 = v32(v33);
  v109 = v34;
  if (v34)
  {
  }

  v84 = v30;
  v37 = v104;
  v85 = v31;
  v38 = v105;
  v81 = v24;
  v83 = v26;
  v82 = v2;
  if (*(v35 + 16))
  {
    v39 = v106;
    v40 = v85;
    specialized __RawDictionaryStorage.find<A>(_:)(v106, v85, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
    v42 = v41;

    v43 = v38;
    v44 = v37;
    if (v42)
    {

      lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, MEMORY[0x277D02DB8]);
      v45 = v93;
      v46 = swift_allocError();
      (*(v94 + 104))(v47, *MEMORY[0x277D02D70], v45);
      v109 = v46;
      return swift_willThrow();
    }
  }

  else
  {

    v43 = v38;
    v40 = v85;
    v39 = v106;
    v44 = v37;
  }

  v107 = v39;
  v108 = v40;

  MEMORY[0x22AA76680](45, 0xE100000000000000);
  v48 = v84;
  UUID.init()();
  v49 = UUID.uuidString.getter();
  v51 = v50;
  (*(v44 + 8))(v48, v27);
  MEMORY[0x22AA76680](v49, v51);

  v52 = v107;
  v53 = v108;
  v54 = [objc_opt_self() defaultManager];
  v55 = [v54 temporaryDirectory];

  v56 = v96;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v107 = v52;
  v108 = v53;
  v57 = v102;
  v58 = v100;
  (*(v102 + 104))(v100, *MEMORY[0x277CC91D8], v43);
  lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(path:directoryHint:)();
  (*(v57 + 8))(v58, v43);
  (*(v98 + 8))(v56, v101);

  v59 = v99;
  FilePath.init(_:)();
  v60 = v103;
  v61 = v95;
  if ((*(v103 + 48))(v59, 1, v95) == 1)
  {

    outlined destroy of FilePath?(v59, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
    v62 = v93;
    v63 = v94;
    v64 = v92;
    (*(v94 + 104))(v92, *MEMORY[0x277D02D48], v93);
    type metadata accessor for CryptexErrorMessage();
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28]);
    v65 = swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)();
    (*(v63 + 8))(v64, v62);
    v109 = v65;
    return swift_willThrow();
  }

  v66 = v83;
  (*(v60 + 32))(v83, v59, v61);
  v67 = v109;
  v68 = (*(*v91 + 232))(v66);
  v109 = v67;
  if (v67)
  {
    (*(v60 + 8))(v66, v61);
  }

  v69 = v68;
  v70 = v82;
  v71 = (*(*v82 + 256))();
  v109 = 0;
  (*(*v70 + 160))(v71);
  v72 = v81;
  FilePath.appending(_:)();
  v73 = v109;
  (*(*v69 + 240))(v72);
  v109 = v73;
  if (v73)
  {
    v74 = (*(v60 + 8))(v72, v61);
LABEL_16:
    (*(*v69 + 272))(v74);
    swift_willThrow();

    return (*(v60 + 8))(v66, v61);
  }

  v75 = v87;
  Cryptex.InstallOptions.bootstrap.getter();
  v76 = v109;
  (*(*v70 + 320))(v69, v75, 0);
  v77 = (v86 + 8);
  v78 = (v60 + 8);
  v109 = v76;
  if (v76)
  {
    (*v77)(v75, v89);
    v74 = (*v78)(v72, v61);
    v66 = v83;
    goto LABEL_16;
  }

  (*v77)(v75, v89);
  v79 = *v78;
  (*v78)(v72, v61);
  return v79(v83, v61);
}

uint64_t Inventory.infoPlistFDs()()
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v37 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*v0 + 192))(v9);
  if (!v1)
  {
    v13 = result;
    v40 = v11;
    v43 = v5;
    v41 = MEMORY[0x277D84F90];
    v47 = MEMORY[0x277D84F90];
    v14 = result + 64;
    v15 = 1 << *(result + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(result + 64);
    v18 = (v15 + 63) >> 6;
    v42 = (v7 + 48);
    v38 = (v7 + 32);
    v39 = (v7 + 8);

    v20 = 0;
    v44 = v6;
    v45 = v19;
LABEL_5:
    v21 = v20;
    if (!v17)
    {
      goto LABEL_7;
    }

    do
    {
      v20 = v21;
LABEL_10:
      v22 = __clz(__rbit64(v17)) | (v20 << 6);
      v23 = *(v13[6] + 16 * v22 + 8);
      v24 = *(**(v13[7] + 8 * v22) + 120);

      v24(v25);
      CryptexCore.infoPlist.getter();
      v17 &= v17 - 1;

      v26 = v43;
      dispatch thunk of CryptexAsset.url.getter();
      v27 = v26;

      v28 = v26;
      v6 = v44;
      if ((*v42)(v28, 1, v44) != 1)
      {
        (*v38)(v40, v27, v6);
        URL._bridgeToObjectiveC()(v29);
        v31 = v30;
        v32 = objc_opt_self();
        v46 = 0;
        v37 = [v32 fileHandleForReadingFromURL:v31 error:&v46];

        v13 = v46;
        if (!v37)
        {
          goto LABEL_20;
        }

        v6 = v39;
        v41 = *v39;
        v33 = v46;
        v41(v40, v44);

        MEMORY[0x22AA766B0](v34);
        if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v6 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v41 = v47;
        v13 = v45;
        goto LABEL_5;
      }

      outlined destroy of FilePath?(v27, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

      v21 = v20;
      v13 = v45;
    }

    while (v17);
LABEL_7:
    while (1)
    {
      v20 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v20 >= v18)
      {

        result = v41;
        goto LABEL_18;
      }

      v17 = *(v14 + 8 * v20);
      ++v21;
      if (v17)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_20:
    v36 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*v39)(v40, v6);
  }

LABEL_18:
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Inventory.activate(installed:options:skipGraft:)(uint64_t a1, uint64_t a2, int a3)
{
  v62 = a3;
  v6 = type metadata accessor for CryptexError();
  v64 = *(v6 - 8);
  v7 = *(v64 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FilePath();
  v63 = *(v10 - 8);
  v11 = *(v63 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v53 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v53 - v18;
  v20 = v67;
  result = (*(*v3 + 264))(a2);
  if (v20)
  {
    return result;
  }

  v55 = v14;
  v56 = v17;
  v57 = a2;
  v58 = v3;
  v59 = v19;
  v60 = v10;
  v67 = result;
  v61 = 0;
  v22 = (*(*a1 + 144))();
  v24 = v64;
  v25 = v9;
  if (!v23)
  {
LABEL_11:

    (*(v24 + 104))(v25, *MEMORY[0x277D02D48], v6);
    type metadata accessor for CryptexErrorMessage();
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28]);
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)();
    (*(v24 + 8))(v25, v6);
    return swift_willThrow();
  }

  v26 = v22;
  v27 = v23;
  v28 = (*(*a1 + 160))();
  if (!v29)
  {
LABEL_10:

    goto LABEL_11;
  }

  v30 = v29;
  v31 = v26;
  v32 = v28;
  v33 = *(*a1 + 152);
  v54 = a1;
  v34 = v33();
  if (!v35)
  {

    goto LABEL_10;
  }

  v65 = v34;
  v66 = v35;
  MEMORY[0x22AA76680](47, 0xE100000000000000);
  MEMORY[0x22AA76680](v31, v27);

  MEMORY[0x22AA76680](47, 0xE100000000000000);
  MEMORY[0x22AA76680](v32, v30);

  v36 = v59;
  v37 = MEMORY[0x22AA76600](v65, v66);
  if (v62)
  {
    v38 = v54;

    v39 = v58;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();

    v42 = os_log_type_enabled(v40, v41);
    v43 = v63;
    if (v42)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v65 = v45;
      *v44 = 136315138;
      *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v38 + 16), *(v38 + 24), &v65);
      _os_log_impl(&dword_226120000, v40, v41, "Cryptex %s is already grafted.", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x22AA76E00](v45, -1, -1);
      MEMORY[0x22AA76E00](v44, -1, -1);
    }

    v46 = v60;
  }

  else
  {
    v39 = v58;
    v47 = v55;
    (*(*v58 + 184))(v37);
    v48 = v56;
    FilePath.appending(_:)();
    v43 = v63;
    v49 = *(v63 + 8);
    v50 = v47;
    v46 = v60;
    v49(v50, v60);
    v38 = v54;
    v51 = v61;
    (*(*v54 + 248))(v48);
    v61 = v51;
    if (v51)
    {
      v49(v48, v46);
LABEL_18:
      (*(*v39 + 328))(v38, v67);

      swift_willThrow();
      return (*(v43 + 8))(v36, v46);
    }

    v49(v48, v46);
  }

  v52 = v61;
  (*(*v38 + 184))(v57);
  if (v52)
  {
    v61 = v52;
    goto LABEL_18;
  }

  (*(*v39 + 272))(v38, v67);
  v61 = 0;
  (*(v43 + 8))(v36, v46);
}

uint64_t Inventory.deactivate(_:bootstrappers:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for FilePath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*(*v3 + 280))(a1, a2);
  (*(*v3 + 184))(v11);
  (*(*a1 + 264))(v10);
  return (*(v7 + 8))(v10, v6);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Inventory.rediscoverInstalled()()
{
  v2 = v0;
  v218[1] = *MEMORY[0x277D85DE8];
  v189 = type metadata accessor for CryptexError();
  v3 = *(v189 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v189);
  v182 = &v165 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit0A0C16BootstrapOptionsVSgMd, &_s10CryptexKit0A0C16BootstrapOptionsVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v184 = &v165 - v8;
  v207 = type metadata accessor for Cryptex.BootstrapOptions();
  v211 = *(v207 - 8);
  v9 = *(v211 + 64);
  MEMORY[0x28223BE20](v207);
  v183 = &v165 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathV10graftPoint_ACSg03dmgC0tSgMd, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v186 = &v165 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v190 = &v165 - v16;
  v206 = type metadata accessor for Logger();
  v210 = *(v206 - 8);
  v17 = *(v210 + 64);
  MEMORY[0x28223BE20](v206);
  v205 = &v165 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = type metadata accessor for FilePath();
  v19 = *(v217 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v217);
  v203 = &v165 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v202 = &v165 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v185 = &v165 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v187 = &v165 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v188 = &v165 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v204 = &v165 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v216 = &v165 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v208 = &v165 - v36;
  MEMORY[0x28223BE20](v35);
  v38 = &v165 - v37;
  v212 = OBJC_IVAR____TtC13CryptexServer9Inventory_logger;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.info.getter();
  v41 = os_log_type_enabled(v39, v40);
  v193 = v2;
  if (v41)
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_226120000, v39, v40, "Scanning installed cryptexes...", v42, 2u);
    v43 = v42;
    v2 = v193;
    MEMORY[0x22AA76E00](v43, -1, -1);
  }

  v44 = *(*v2 + 184);
  v45 = *v2 + 184;
  v44();
  v46 = static APFSAdapter.allDisksGrafted(under:logger:)(v38, v2 + v212);
  if (!v1)
  {
    v209 = v3;
    v213 = 0;
    v181 = v46;
    v178 = v45;
    v179 = v44;
    v47 = *(v19 + 8);
    v48 = v38;
    v49 = v217;
    v47(v48, v217);
    v199 = objc_opt_self();
    v50 = [v199 defaultManager];
    v51 = *(*v2 + 160);
    v52 = v208;
    v200 = *v2 + 160;
    v201 = v51;
    v51();
    v53 = FilePath.string.getter();
    v55 = v54;
    v215 = v19 + 8;
    v47(v52, v49);
    v56 = MEMORY[0x22AA76630](v53, v55);

    v218[0] = 0;
    v57 = [v50 contentsOfDirectoryAtPath:v56 error:v218];

    v58 = v218[0];
    if (!v57)
    {
      v163 = v218[0];

      _convertNSErrorToError(_:)();

      swift_willThrow();
      goto LABEL_36;
    }

    v59 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v58;

    v198 = *(v59 + 16);
    if (!v198)
    {
LABEL_34:

      goto LABEL_36;
    }

    v196 = type metadata accessor for Cryptex();
    v61 = 0;
    v195 = (v210 + 16);
    v180 = (v19 + 48);
    v176 = (v19 + 32);
    v173 = (v211 + 48);
    v172 = (v211 + 32);
    v171 = (v211 + 8);
    v211 = v19 + 16;
    v170 = *MEMORY[0x277D02D60];
    v177 = (v209 + 13);
    v169 = "ed:options:skipGraft:)";
    v168 = "Cryptex is not grafted";
    v167 = "ached bootstrap options";
    v166 = (v209 + 1);
    v175 = (v19 + 56);
    v174 = *MEMORY[0x277D02D78];
    v62 = (v59 + 40);
    *&v63 = 136315138;
    v192 = v63;
    *&v63 = 136315394;
    v191 = v63;
    v64 = v207;
    v214 = v47;
    v197 = v59;
    while (1)
    {
      if (v61 >= *(v59 + 16))
      {
        __break(1u);
      }

      v65 = v64;
      v209 = v62;
      v210 = v61;
      v67 = *(v62 - 1);
      v66 = *v62;

      v69 = v201;
      (v201)(v68);

      v70 = FilePath.appending(_:)();
      (v69)(v70);
      v71 = v204;
      FilePath.appending(_:)();
      v72 = v205;
      (*v195)(v205, v2 + v212, v206);
      v73 = v213;
      v74 = Cryptex.__allocating_init(dir:logger:)(v71, v72);
      v75 = v73;
      if (v73)
      {
        v213 = 0;
        v76 = v217;
        v77 = v202;
      }

      else
      {
        v78 = v74;
        (*(*v74 + 120))();
        CryptexCore.diskImage.getter();
        v79 = v217;

        v80 = v79;
        v81 = v190;
        dispatch thunk of CryptexAsset.path.getter();

        if ((*v180)(v81, 1, v80) == 1)
        {
          outlined destroy of FilePath?(v81, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
          v82 = Logger.logObject.getter();
          v83 = static os_log_type_t.error.getter();
          v84 = os_log_type_enabled(v82, v83);
          v77 = v202;
          if (v84)
          {
            v85 = swift_slowAlloc();
            *v85 = 0;
            _os_log_impl(&dword_226120000, v82, v83, "dmg asset lacks a path", v85, 2u);
            MEMORY[0x22AA76E00](v85, -1, -1);
          }

          lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, MEMORY[0x277D02DB8]);
          v86 = v189;
          v87 = swift_allocError();
          v89 = v88;
          v90 = v217;
          (*v175)(v88, 1, 1, v217);
          v91 = v86;
          v76 = v90;
          v75 = v87;
          (*v177)(v89, v174, v91);
          swift_willThrow();

          v213 = 0;
        }

        else
        {
          v92 = v188;
          (*v176)(v188, v81, v80);
          v93 = (*(*v2 + 256))(v78);
          v94 = v187;
          v95 = (v179)(v93);
          MEMORY[0x28223BE20](v95);
          *(&v165 - 2) = v92;
          *(&v165 - 1) = v94;
          v96 = specialized Sequence.first(where:)(partial apply for closure #1 in Inventory.rediscoverInstalled(), v181, v186);
          v97 = v185;
          v98 = v184;
          (*(*v78 + 176))(v96);
          v135 = (*v173)(v98, 1, v64);
          if (v135 != 1)
          {
            v141 = v183;
            (*v172)(v183, v98, v64);
            v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathV10graftPoint_ACSg03dmgC0tMd, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMR);
            v143 = v186;
            v144 = (*(*(v142 - 8) + 48))(v186, 1, v142) != 1;
            (*(*v2 + 320))(v78, v141, v144);
            v145 = v143;
            v213 = 0;
            v146 = v217;
            (*v211)(v97, v216, v217);
            v147 = Logger.logObject.getter();
            v148 = v97;
            v149 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v147, v149))
            {
              v150 = swift_slowAlloc();
              v194 = v150;
              v151 = swift_slowAlloc();
              v218[0] = v151;
              *v150 = v192;
              lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage(&lazy protocol witness table cache variable for type FilePath and conformance FilePath, MEMORY[0x277D854C0]);
              v152 = dispatch thunk of CustomStringConvertible.description.getter();
              v154 = v153;
              v155 = v214;
              v214(v148, v146);
              v156 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v152, v154, v218);
              v2 = v193;

              v157 = v194;
              *(v194 + 4) = v156;
              v158 = v149;
              v159 = v157;
              _os_log_impl(&dword_226120000, v147, v158, "Resumed management of cryptex installed at %s", v157, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v151);
              v160 = v151;
              v161 = v186;
              v64 = v207;
              MEMORY[0x22AA76E00](v160, -1, -1);
              MEMORY[0x22AA76E00](v159, -1, -1);

              (*v171)(v183, v64);
              v155(v216, v146);
              v59 = v197;
            }

            else
            {

              v155 = v214;
              v214(v148, v146);
              v162 = v65;
              (*v171)(v183, v65);
              v155(v216, v146);
              v59 = v197;
              v161 = v145;
              v64 = v162;
            }

            outlined destroy of FilePath?(v161, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tSgMd, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tSgMR);
            v155(v187, v146);
            v155(v188, v146);
            goto LABEL_26;
          }

          outlined destroy of FilePath?(v98, &_s10CryptexKit0A0C16BootstrapOptionsVSgMd, &_s10CryptexKit0A0C16BootstrapOptionsVSgMR);
          v136 = v182;
          v137 = v189;
          (*v177)(v182, v170, v189);
          type metadata accessor for CryptexErrorMessage();
          lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28]);
          v138 = swift_allocError();
          static CryptexError.error(_:_:file:function:lineNumber:)();
          (*v166)(v136, v137);
          swift_willThrow();

          outlined destroy of FilePath?(v186, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tSgMd, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tSgMR);
          v76 = v217;
          v139 = v214;
          v214(v187, v217);
          v140 = v92;
          v75 = v138;
          v139(v140, v76);
          v213 = 0;
          v77 = v202;
        }
      }

      v99 = *v211;
      (*v211)(v77, v216, v76);
      MEMORY[0x22AA76CB0](v75);
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v100, v101))
      {
        v102 = v77;
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v194 = v99;
        v106 = v105;
        v218[0] = v105;
        *v103 = v191;
        lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage(&lazy protocol witness table cache variable for type FilePath and conformance FilePath, MEMORY[0x277D854C0]);
        v107 = dispatch thunk of CustomStringConvertible.description.getter();
        v109 = v108;
        v214(v102, v217);
        v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v109, v218);
        v76 = v217;

        *(v103 + 4) = v110;
        *(v103 + 12) = 2112;
        MEMORY[0x22AA76CB0](v75);
        v111 = v75;
        v112 = _swift_stdlib_bridgeErrorToNSError();
        *(v103 + 14) = v112;
        *v104 = v112;
        _os_log_impl(&dword_226120000, v100, v101, "Failed to manage cryptex installed at %s: %@", v103, 0x16u);
        outlined destroy of FilePath?(v104, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v113 = v104;
        v2 = v193;
        MEMORY[0x22AA76E00](v113, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v106);
        v114 = v106;
        v99 = v194;
        MEMORY[0x22AA76E00](v114, -1, -1);
        MEMORY[0x22AA76E00](v103, -1, -1);
      }

      else
      {
        v111 = v75;

        v214(v77, v76);
      }

      v115 = v203;
      v99(v203, v216, v76);
      v116 = Logger.logObject.getter();
      v117 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v116, v117))
      {
        v118 = v115;
        v119 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v218[0] = v120;
        *v119 = v192;
        lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage(&lazy protocol witness table cache variable for type FilePath and conformance FilePath, MEMORY[0x277D854C0]);
        v121 = dispatch thunk of CustomStringConvertible.description.getter();
        v122 = v76;
        v123 = v121;
        v125 = v124;
        v214(v118, v122);
        v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v125, v218);

        *(v119 + 4) = v126;
        _os_log_impl(&dword_226120000, v116, v117, "Deleting cryptex installed at %s", v119, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v120);
        MEMORY[0x22AA76E00](v120, -1, -1);
        MEMORY[0x22AA76E00](v119, -1, -1);
      }

      else
      {

        v214(v115, v76);
      }

      v64 = v207;
      v127 = [v199 defaultManager];
      v128 = v216;
      v129 = FilePath.string.getter();
      v130 = MEMORY[0x22AA76630](v129);

      v218[0] = 0;
      v131 = [v127 removeItemAtPath:v130 error:v218];

      if (v131)
      {
        v132 = v218[0];
        v214(v128, v217);
      }

      else
      {
        v133 = v218[0];
        v134 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v214(v128, v217);
        v213 = 0;
      }

      v59 = v197;
LABEL_26:
      v61 = v210 + 1;
      v62 = v209 + 2;
      if (v198 == v210 + 1)
      {
        goto LABEL_34;
      }
    }
  }

  (*(v19 + 8))(v38, v217);
LABEL_36:
  v164 = *MEMORY[0x277D85DE8];
}

BOOL FilePath.sameFile(as:)(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for POSIXError();
  v37 = *(v2 - 8);
  v3 = *(v37 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v36 = &v35 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v35 - v10;
  v12 = type metadata accessor for FilePath();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(&v40, 0, sizeof(v40));
  memset(&v41, 0, sizeof(v41));
  v17 = v16;
  v19 = v18;
  outlined init with copy of FilePath?(a1, v11, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  if ((*(v19 + 48))(v11, 1, v17) != 1)
  {
    v35 = v19;
    (*(v19 + 32))(v15, v11, v17);
    FilePath.string.getter();
    v21 = String.utf8CString.getter();

    v22 = lstat((v21 + 32), &v41);

    if (v22)
    {
      MEMORY[0x22AA76470](v23);
      v24 = POSIXErrorCode.init(rawValue:)();
      if ((v24 & 0x100000000) != 0)
      {
        LODWORD(v24) = static POSIXErrorCode.ELAST.getter();
      }

      LODWORD(v38) = v24;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
      lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage(&lazy protocol witness table cache variable for type POSIXError and conformance POSIXError, MEMORY[0x277CC8658]);
      _BridgedStoredNSError.init(_:userInfo:)();
      POSIXError._nsError.getter();
      (*(v37 + 8))(v6, v2);
      v38 = 0x20746174736CLL;
      v39 = 0xE600000000000000;
      lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage(&lazy protocol witness table cache variable for type FilePath and conformance FilePath, MEMORY[0x277D854C0]);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AA76680](v25);

      MEMORY[0x22AA76680](0x64656C69616620, 0xE700000000000000);
      v26 = v17;
      type metadata accessor for CryptexErrorMessage();
      lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28]);
      swift_allocError();
    }

    else
    {
      FilePath.string.getter();
      v27 = String.utf8CString.getter();

      v28 = lstat((v27 + 32), &v40);

      if (!v28)
      {
        (*(v35 + 8))(v15, v17);
        if (v41.st_dev == v40.st_dev)
        {
          v20 = v41.st_ino == v40.st_ino;
          goto LABEL_13;
        }

        goto LABEL_3;
      }

      MEMORY[0x22AA76470](v29);
      v30 = POSIXErrorCode.init(rawValue:)();
      if ((v30 & 0x100000000) != 0)
      {
        LODWORD(v30) = static POSIXErrorCode.ELAST.getter();
      }

      LODWORD(v38) = v30;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
      lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage(&lazy protocol witness table cache variable for type POSIXError and conformance POSIXError, MEMORY[0x277CC8658]);
      v31 = v36;
      _BridgedStoredNSError.init(_:userInfo:)();
      POSIXError._nsError.getter();
      (*(v37 + 8))(v31, v2);
      v38 = 0x20746174736CLL;
      v39 = 0xE600000000000000;
      lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage(&lazy protocol witness table cache variable for type FilePath and conformance FilePath, MEMORY[0x277D854C0]);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AA76680](v32);

      MEMORY[0x22AA76680](0x64656C69616620, 0xE700000000000000);
      v26 = v17;
      type metadata accessor for CryptexErrorMessage();
      lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28]);
      swift_allocError();
    }

    CryptexErrorMessage.init(_:_:file:function:lineNumber:)();
    swift_willThrow();
    (*(v35 + 8))(v15, v26);
    goto LABEL_13;
  }

  outlined destroy of FilePath?(v11, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
LABEL_3:
  v20 = 0;
LABEL_13:
  v33 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t FilePath.isParentOf(other:)(uint64_t a1)
{
  v59 = a1;
  v1 = type metadata accessor for URL.DirectoryHint();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FilePath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v56 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v47 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = MEMORY[0x28223BE20](v17);
  v50 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v51 = &v47 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v47 - v25;
  MEMORY[0x28223BE20](v24);
  v53 = &v47 - v27;
  v28 = *(v7 + 16);
  v54 = v7 + 16;
  v55 = v6;
  v52 = v28;
  v28(v10, v60, v6);
  v29 = *MEMORY[0x277CC91D8];
  v30 = *(v2 + 104);
  v60 = v1;
  v58 = v2 + 104;
  v30(v5, v29, v1);
  v57 = v5;
  URL.init(filePath:directoryHint:)(v10, v5, v16);
  v31 = v18[6];
  if (v31(v16, 1, v17) == 1)
  {
    v32 = v16;
LABEL_5:
    outlined destroy of FilePath?(v32, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return 0;
  }

  URL.resolvingSymlinksInPath()();
  v49 = v18[1];
  v49(v16, v17);
  v47 = v18[4];
  v48 = v30;
  v33 = v53;
  v47(v53, v26, v17);
  v52(v10, v59, v55);
  v34 = v57;
  v48(v57, v29, v60);
  v35 = v56;
  URL.init(filePath:directoryHint:)(v10, v34, v56);
  if (v31(v35, 1, v17) == 1)
  {
    v49(v33, v17);
    v32 = v35;
    goto LABEL_5;
  }

  v37 = v50;
  URL.resolvingSymlinksInPath()();
  v38 = v49;
  v49(v35, v17);
  v39 = v51;
  v47(v51, v37, v17);
  v40 = v33;
  v41 = URL.pathComponents.getter();
  v42 = URL.pathComponents.getter();
  v43 = *(v41 + 16);
  if (*(v42 + 16) >= v43)
  {
    if (v43)
    {
      v45 = 0;
      while (1)
      {
        v46 = *(v41 + v45 + 32) == *(v42 + v45 + 32) && *(v41 + v45 + 40) == *(v42 + v45 + 40);
        if (!v46 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          break;
        }

        v45 += 16;
        if (!--v43)
        {
          goto LABEL_17;
        }
      }

      v44 = 0;
    }

    else
    {
LABEL_17:
      v44 = 1;
    }
  }

  else
  {
    v44 = 0;
  }

  v38(v39, v17);
  v38(v40, v17);
  return v44;
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathV10graftPoint_ACSg03dmgC0tMd, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v19 - v11;
  v13 = *(a2 + 16);
  if (v13)
  {
    v19 = v10;
    v20 = v9;
    v21 = a3;
    v14 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v15 = *(v10 + 72);
    while (1)
    {
      outlined init with copy of FilePath?(v14, v12, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMd, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMR);
      v16 = a1(v12);
      if (v3)
      {
        return outlined destroy of FilePath?(v12, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMd, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMR);
      }

      if (v16)
      {
        break;
      }

      outlined destroy of FilePath?(v12, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMd, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMR);
      v14 += v15;
      if (!--v13)
      {
        v17 = 1;
        a3 = v21;
        goto LABEL_10;
      }
    }

    a3 = v21;
    outlined init with take of (graftPoint: FilePath, dmgPath: FilePath?)(v12, v21);
    v17 = 0;
LABEL_10:
    v10 = v19;
    v9 = v20;
  }

  else
  {
    v17 = 1;
  }

  return (*(v10 + 56))(a3, v17, 1, v9);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Inventory.destroy()()
{
  v50[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for FilePath();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v44 - v9;
  v11 = (*(*v0 + 192))(v8);
  if (!v1)
  {
    v44 = v7;
    v45 = v10;
    v12 = 0;
    v13 = v11 + 64;
    v14 = 1 << *(v11 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v11 + 64);
    v17 = (v14 + 63) >> 6;
    v47 = (v3 + 8);
    v48 = v0;
    v46 = v2;
    while (v16)
    {
      v49 = 0;
LABEL_11:
      v19 = v11;
      v20 = *(*(v11 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v16)))));
      v21 = *(*v48 + 184);

      v23 = v45;
      v21(v22);
      v24 = v49;
      (*(*v20 + 264))(v23);
      if (v24)
      {
        (*v47)(v23, v46);

        goto LABEL_18;
      }

      v16 &= v16 - 1;
      v25 = v23;
      v2 = v46;
      v26 = (*v47)(v25, v46);
      (*(*v20 + 272))(v26);

      v11 = v19;
    }

    while (1)
    {
      v18 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
      }

      if (v18 >= v17)
      {
        break;
      }

      v16 = *(v13 + 8 * v18);
      ++v12;
      if (v16)
      {
        v49 = 0;
        v12 = v18;
        goto LABEL_11;
      }
    }

    v27 = objc_opt_self();
    v28 = [v27 defaultManager];
    v29 = v44;
    (*(*v48 + 160))();
    v30 = FilePath.string.getter();
    v32 = v31;
    (*v47)(v29, v2);
    v33 = MEMORY[0x22AA76630](v30, v32);

    v50[0] = 0;
    v34 = [v28 removeItemAtPath:v33 error:v50];

    v35 = v50[0];
    if (!v34)
    {
      goto LABEL_16;
    }

    v36 = v50[0];
    v37 = [v27 defaultManager];
    v38 = FilePath.string.getter();
    v39 = MEMORY[0x22AA76630](v38);

    v50[0] = 0;
    v40 = [v37 removeItemAtPath:v39 error:v50];

    v35 = v50[0];
    if (v40)
    {
      v41 = v50[0];
    }

    else
    {
LABEL_16:
      v42 = v35;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

LABEL_18:
  v43 = *MEMORY[0x277D85DE8];
}

uint64_t Inventory.deinit()
{
  v1 = *(v0 + 120);

  v2 = OBJC_IVAR____TtC13CryptexServer9Inventory_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  outlined destroy of VirtualEnvConfig(v0 + OBJC_IVAR____TtC13CryptexServer9Inventory_venvConfig);
  v4 = OBJC_IVAR____TtC13CryptexServer9Inventory_runtimeDirectory;
  v5 = type metadata accessor for FilePath();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtC13CryptexServer9Inventory_cryptexStorage, v5);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC13CryptexServer9Inventory_authenticator));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t Inventory.__deallocating_deinit()
{
  v1 = *(v0 + 120);

  v2 = OBJC_IVAR____TtC13CryptexServer9Inventory_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  outlined destroy of VirtualEnvConfig(v0 + OBJC_IVAR____TtC13CryptexServer9Inventory_venvConfig);
  v4 = OBJC_IVAR____TtC13CryptexServer9Inventory_runtimeDirectory;
  v5 = type metadata accessor for FilePath();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtC13CryptexServer9Inventory_cryptexStorage, v5);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC13CryptexServer9Inventory_authenticator));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t URL.init(filePath:directoryHint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v29 = v26 - v7;
  v8 = type metadata accessor for URL.DirectoryHint();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FilePath();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  (*(v14 + 16))(v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13);
  v17 = String.init(validating:)();
  if (v18)
  {
    v19 = *(v9 + 16);
    v26[1] = v17;
    v28 = v8;
    v19(v12, a2, v8);
    v20 = type metadata accessor for URL();
    v26[0] = a2;
    v21 = v20;
    v22 = *(*(v20 - 8) + 56);
    v27 = a1;
    v23 = v30;
    v22(v29, 1, 1, v20);
    URL.init(filePath:directoryHint:relativeTo:)();
    (*(v9 + 8))(v26[0], v28);
    (*(v14 + 8))(v27, v13);
    return (v22)(v23, 0, 1, v21);
  }

  else
  {
    (*(v9 + 8))(a2, v8);
    (*(v14 + 8))(a1, v13);
    v25 = type metadata accessor for URL();
    return (*(*(v25 - 8) + 56))(v30, 1, 1, v25);
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13CryptexServer17BootstrapProtocol_pGMd, &_ss23_ContiguousArrayStorageCy13CryptexServer17BootstrapProtocol_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13CryptexServer17BootstrapProtocol_pMd, &_s13CryptexServer17BootstrapProtocol_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, Swift::Int))
{
  v6 = *(v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();

  return a3(a1, a2, v7);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for CryptexAssetType();
  lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage(&lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType, MEMORY[0x277D02DF8]);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS13CryptexServer0C0CGMd, &_ss18_DictionaryStorageCySS13CryptexServer0C0CGMR);
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for CryptexAssetType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage(&lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType, MEMORY[0x277D02DF8]);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS13CryptexServer0C0CGMd, &_ss18_DictionaryStorageCySS13CryptexServer0C0CGMR);
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_13CryptexServer0C0CTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS13CryptexServer0C0CGMd, &_ss18_DictionaryStorageCySS13CryptexServer0C0CGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t type metadata accessor for Inventory()
{
  result = type metadata singleton initialization cache for Inventory;
  if (!type metadata singleton initialization cache for Inventory)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x22AA76E00);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t outlined init with take of VirtualEnvConfig(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of AssetAuthenticatorProtocol(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t partial apply for closure #1 in Inventory.rediscoverInstalled()(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathV10graftPoint_ACSg03dmgC0tMd, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMR);
  v7 = FilePath.sameFile(as:)(a1 + *(v6 + 48));
  if (v2 || !v7)
  {
    return 0;
  }

  else
  {
    return FilePath.isParentOf(other:)(a1) & 1;
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of FilePath?(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
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

uint64_t outlined destroy of VirtualEnvConfig(uint64_t a1)
{
  v2 = type metadata accessor for VirtualEnvConfig();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata completion function for Inventory()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for FilePath();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t outlined init with copy of FilePath?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of FilePath?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of (graftPoint: FilePath, dmgPath: FilePath?)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathV10graftPoint_ACSg03dmgC0tMd, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(category:)(0x61727473746F6F62, 0xEE00766E65762D70);
}

uint64_t BootstrapVirtualEnv.envRoot.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FilePath();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BootstrapVirtualEnv.cleanup()()
{
  v1 = type metadata accessor for FilePath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v6[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v0;
  MEMORY[0x22AA76580](46, 0xE100000000000000);
  FilePath.recurseDirectory(bottomUp:relpath:_:)();
  (*(v2 + 8))(v5, v1);
}

uint64_t closure #1 in BootstrapVirtualEnv.cleanup()()
{
  v0 = type metadata accessor for FilePath();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  FilePath.appending(_:)();
  v8 = FilePath.symlinkExists()();
  if (v9)
  {
    return (*(v1 + 8))(v7, v0);
  }

  if (!v8)
  {
    v14 = FilePath.directoryExists()();
    if (!v15 && v14)
    {
      v16 = *(FilePath.directoryContents()() + 16);

      if (!v16)
      {
        FilePath.delete()();
      }
    }

    return (*(v1 + 8))(v7, v0);
  }

  FilePath.symlinkTarget()();
  v11 = FilePath.exists()();
  if (v12)
  {
    v13 = *(v1 + 8);
    v13(v5, v0);
    return (v13)(v7, v0);
  }

  else
  {
    v17 = v11;
    v18 = *(v1 + 8);
    v18(v5, v0);
    if (v17)
    {
      return (*(v1 + 8))(v7, v0);
    }

    FilePath.delete()();
    if (!v19)
    {
      return (*(v1 + 8))(v7, v0);
    }

    return (v18)(v7, v0);
  }
}

uint64_t BootstrapVirtualEnv.unbootstrap(from:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CryptexError();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v60 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for BootstrapVirtualEnv();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v49[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for FilePath();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v12);
  v55 = &v49[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v57 = &v49[-v18];
  MEMORY[0x28223BE20](v17);
  v20 = &v49[-v19];
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, logger);
  v22 = v13[2];
  v61 = a1;
  v22(v20, a1, v12);
  outlined init with copy of BootstrapVirtualEnv(v1, v11);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  v25 = os_log_type_enabled(v23, v24);
  v58 = v13;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v54 = v4;
    v27 = v26;
    v51 = swift_slowAlloc();
    v62 = v51;
    *v27 = 136315394;
    _s10CryptexKit0A12ErrorMessageVACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type FilePath and conformance FilePath, MEMORY[0x277D854C0]);
    v52 = v2;
    v53 = v5;
    v50 = v24;
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v12;
    v31 = v30;
    v56 = v13[1];
    v56(v20, v29);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v31, &v62);
    v12 = v29;

    *(v27 + 4) = v32;
    *(v27 + 12) = 2080;
    v2 = v52;
    v5 = v53;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    outlined destroy of BootstrapVirtualEnv(v11);
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v62);

    *(v27 + 14) = v36;
    _os_log_impl(&dword_226120000, v23, v50, "Removing links to %s from link farm at %s", v27, 0x16u);
    v37 = v51;
    swift_arrayDestroy();
    MEMORY[0x22AA76E00](v37, -1, -1);
    v38 = v27;
    v4 = v54;
    MEMORY[0x22AA76E00](v38, -1, -1);
  }

  else
  {

    outlined destroy of BootstrapVirtualEnv(v11);
    v56 = v13[1];
    v56(v20, v12);
  }

  v39 = v61;
  if (FilePath.isAbsolute.getter() & 1) != 0 && (v40 = FilePath.isAbsolute.getter(), (v40))
  {
    MEMORY[0x28223BE20](v40);
    *&v49[-16] = v39;
    *&v49[-8] = v2;
    v41 = v57;
    MEMORY[0x22AA76580](46, 0xE100000000000000);
    v42 = v59;
    FilePath.recurseDirectory(bottomUp:relpath:_:)();
    if (v42)
    {
      return (v56)(v41, v12);
    }

    else
    {
      v45 = v41;
      v46 = v56;
      v47 = (v56)(v45, v12);
      MEMORY[0x28223BE20](v47);
      *&v49[-16] = v2;
      v48 = v55;
      MEMORY[0x22AA76580](46, 0xE100000000000000);
      FilePath.recurseDirectory(bottomUp:relpath:_:)();
      return v46(v48, v12);
    }
  }

  else
  {
    v44 = v60;
    (*(v5 + 104))(v60, *MEMORY[0x277D02D48], v4);
    type metadata accessor for CryptexErrorMessage();
    _s10CryptexKit0A12ErrorMessageVACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28]);
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)();
    (*(v5 + 8))(v44, v4);
    return swift_willThrow();
  }
}

uint64_t type metadata accessor for BootstrapVirtualEnv()
{
  result = type metadata singleton initialization cache for BootstrapVirtualEnv;
  if (!type metadata singleton initialization cache for BootstrapVirtualEnv)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t outlined init with copy of BootstrapVirtualEnv(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BootstrapVirtualEnv();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of BootstrapVirtualEnv(uint64_t a1)
{
  v2 = type metadata accessor for BootstrapVirtualEnv();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in BootstrapVirtualEnv.unbootstrap(from:)()
{
  v0 = type metadata accessor for FilePath();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - v6;
  FilePath.appending(_:)();
  FilePath.appending(_:)();
  v8 = FilePath.directoryExists()();
  if (v9)
  {
    goto LABEL_2;
  }

  if (v8)
  {
    v12 = type metadata accessor for BootstrapVirtualEnv.Directory();
    v13 = &protocol witness table for BootstrapVirtualEnv.Directory;
LABEL_5:
    v14 = swift_allocObject();
    *(&v22 + 1) = v12;
    v23 = v13;
    *&v21 = v14;
    outlined init with take of BootstrapVirtualEnv.Strategy(&v21, v24);
    v15 = v25;
    v16 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    (*(v16 + 16))(v7, v5, v15, v16);
    v17 = *(v1 + 8);
    v17(v5, v0);
    v17(v7, v0);
    return __swift_destroy_boxed_opaque_existential_0(v24);
  }

  v18 = FilePath.fileExists()();
  if (v19)
  {
LABEL_2:
    v10 = *(v1 + 8);
    v10(v5, v0);
    return (v10)(v7, v0);
  }

  if (v18)
  {
    v12 = type metadata accessor for BootstrapVirtualEnv.Symlink();
    v13 = &protocol witness table for BootstrapVirtualEnv.Symlink;
    goto LABEL_5;
  }

  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v20 = *(v1 + 8);
  v20(v5, v0);
  v20(v7, v0);
  return outlined destroy of FilePath?(&v21, &_s13CryptexServer19BootstrapVirtualEnvV8Strategy33_208152451A27CF1F362939E4B64E7455LL_pSgMd, &_s13CryptexServer19BootstrapVirtualEnvV8Strategy33_208152451A27CF1F362939E4B64E7455LL_pSgMR);
}

uint64_t partial apply for closure #1 in BootstrapVirtualEnv.unbootstrap(from:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #1 in BootstrapVirtualEnv.unbootstrap(from:)();
}

uint64_t BootstrapVirtualEnv.bootstrap(from:dryRun:)(uint64_t a1, int a2)
{
  v16 = a2;
  v5 = type metadata accessor for FilePath();
  v17 = *(v5 - 8);
  v6 = *(v17 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for CryptexError();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v15[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (FilePath.isAbsolute.getter() & 1) != 0 && (FilePath.isAbsolute.getter())
  {
    result = FilePath.createDirectory(permissions:intermediateDirectories:)();
    if (!v3)
    {
      MEMORY[0x28223BE20](result);
      *&v15[-32] = a1;
      *&v15[-24] = v2;
      v15[-16] = v16 & 1;
      MEMORY[0x22AA76580](46, 0xE100000000000000);
      FilePath.recurseDirectory(bottomUp:relpath:_:)();
      return (*(v17 + 8))(v8, v5);
    }
  }

  else
  {
    (*(v10 + 104))(v13, *MEMORY[0x277D02D48], v9);
    type metadata accessor for CryptexErrorMessage();
    _s10CryptexKit0A12ErrorMessageVACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28]);
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)();
    (*(v10 + 8))(v13, v9);
    return swift_willThrow();
  }

  return result;
}

uint64_t closure #1 in BootstrapVirtualEnv.bootstrap(from:dryRun:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = type metadata accessor for FilePath();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  FilePath.appending(_:)();
  FilePath.appending(_:)();
  v13 = FilePath.directoryExists()();
  if (v14)
  {
    goto LABEL_2;
  }

  if (v13)
  {
    v17 = type metadata accessor for BootstrapVirtualEnv.Directory();
    v18 = &protocol witness table for BootstrapVirtualEnv.Directory;
LABEL_5:
    v19 = swift_allocObject();
    *(&v27 + 1) = v17;
    v28 = v18;
    *&v26 = v19;
    outlined init with take of BootstrapVirtualEnv.Strategy(&v26, v29);
    v20 = v30;
    v21 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    (*(v21 + 8))(v12, v10, a4 & 1, v20, v21);
    v22 = *(v6 + 8);
    v22(v10, v5);
    v22(v12, v5);
    return __swift_destroy_boxed_opaque_existential_0(v29);
  }

  v23 = FilePath.fileExists()();
  if (v24)
  {
LABEL_2:
    v15 = *(v6 + 8);
    v15(v10, v5);
    return (v15)(v12, v5);
  }

  if (v23)
  {
    v17 = type metadata accessor for BootstrapVirtualEnv.Symlink();
    v18 = &protocol witness table for BootstrapVirtualEnv.Symlink;
    goto LABEL_5;
  }

  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v25 = *(v6 + 8);
  v25(v10, v5);
  v25(v12, v5);
  return outlined destroy of FilePath?(&v26, &_s13CryptexServer19BootstrapVirtualEnvV8Strategy33_208152451A27CF1F362939E4B64E7455LL_pSgMd, &_s13CryptexServer19BootstrapVirtualEnvV8Strategy33_208152451A27CF1F362939E4B64E7455LL_pSgMR);
}

uint64_t BootstrapVirtualEnv.bootstrap(from:)(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = type metadata accessor for BootstrapVirtualEnv();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for FilePath();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v31[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, logger);
  (*(v11 + 16))(v14, a1, v10);
  outlined init with copy of BootstrapVirtualEnv(v1, v9);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v34 = v2;
    v19 = v18;
    v33 = swift_slowAlloc();
    v37 = v33;
    *v19 = 136315394;
    _s10CryptexKit0A12ErrorMessageVACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type FilePath and conformance FilePath, MEMORY[0x277D854C0]);
    v35 = a1;
    v32 = v17;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v4;
    v22 = v21;
    (*(v11 + 8))(v14, v10);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v37);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    a1 = v35;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    outlined destroy of BootstrapVirtualEnv(v9);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v37);

    *(v19 + 14) = v27;
    _os_log_impl(&dword_226120000, v16, v32, "Linking files from %s into link farm at %s", v19, 0x16u);
    v28 = v33;
    swift_arrayDestroy();
    MEMORY[0x22AA76E00](v28, -1, -1);
    v29 = v19;
    v3 = v34;
    MEMORY[0x22AA76E00](v29, -1, -1);
  }

  else
  {

    outlined destroy of BootstrapVirtualEnv(v9);
    (*(v11 + 8))(v14, v10);
  }

  result = BootstrapVirtualEnv.bootstrap(from:dryRun:)(a1, 1);
  if (!v3)
  {
    return BootstrapVirtualEnv.bootstrap(from:dryRun:)(a1, 0);
  }

  return result;
}

uint64_t BootstrapVirtualEnv.unbootstrap(cryptex:graftedAt:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for FilePath();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of FilePath?(a2, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return outlined destroy of FilePath?(v6, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  }

  (*(v8 + 32))(v11, v6, v7);
  BootstrapVirtualEnv.unbootstrap(from:)(v11);
  return (*(v8 + 8))(v11, v7);
}

uint64_t BootstrapVirtualEnv.init(envRoot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CryptexError();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (FilePath.isAbsolute.getter())
  {
    v9 = type metadata accessor for FilePath();
    return (*(*(v9 - 8) + 32))(a2, a1, v9);
  }

  else
  {
    (*(v5 + 104))(v8, *MEMORY[0x277D02D48], v4);
    type metadata accessor for CryptexErrorMessage();
    _s10CryptexKit0A12ErrorMessageVACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28]);
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)();
    (*(v5 + 8))(v8, v4);
    swift_willThrow();
    v11 = type metadata accessor for FilePath();
    return (*(*(v11 - 8) + 8))(a1, v11);
  }
}

uint64_t protocol witness for BootstrapProtocol.unbootstrap(cryptex:graftedAt:) in conformance BootstrapVirtualEnv(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for FilePath();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of FilePath?(a2, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return outlined destroy of FilePath?(v6, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  }

  (*(v8 + 32))(v11, v6, v7);
  BootstrapVirtualEnv.unbootstrap(from:)(v11);
  return (*(v8 + 8))(v11, v7);
}

void protocol witness for BootstrapVirtualEnv.Strategy.unbootstrap(src:dest:) in conformance BootstrapVirtualEnv.Directory()
{
  v0 = FilePath.directoryExists()();
  if (!v1 && v0)
  {
    v2 = *(FilePath.directoryContents()() + 16);

    if (!v2)
    {
      FilePath.delete()();
    }
  }
}

void protocol witness for BootstrapVirtualEnv.Strategy.unbootstrap(src:dest:) in conformance BootstrapVirtualEnv.Symlink()
{
  v0 = type metadata accessor for FilePath();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = FilePath.symlinkExists()();
  if (!v6 && v5)
  {
    FilePath.symlinkTarget()();
    v7 = FilePath.lexicallyEqual(_:)();
    (*(v1 + 8))(v4, v0);
    if (v7)
    {
      FilePath.delete()();
    }
  }
}

uint64_t _s10CryptexKit0A12ErrorMessageVACs0C0AAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of FilePath?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata completion function for BootstrapVirtualEnv()
{
  result = type metadata accessor for FilePath();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void specialized BootstrapVirtualEnv.Symlink.bootstrap(src:dest:dryRun:)(uint64_t a1, uint64_t a2, int a3)
{
  v50 = a3;
  v51 = a1;
  v4 = type metadata accessor for CryptexError();
  v54 = *(v4 - 8);
  v5 = *(v54 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FilePath();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v47 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v47 - v17;
  v19 = FilePath.symlinkExists()();
  if (!v20)
  {
    v48 = v16;
    v49 = v9;
    v21 = a2;
    v22 = v54;
    if (v19 && (FilePath.symlinkTarget()(), v47[1] = 0, v23 = FilePath.lexicallyEqual(_:)(), v47[0] = *(v49 + 8), (v47[0])(v18, v8), (v23 & 1) != 0))
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, logger);
      v25 = v48;
      v26 = *(v49 + 16);
      v26(v48, v21, v8);
      v27 = v13;
      v26(v13, v51, v8);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v52 = v54;
        *v30 = 136315394;
        _s10CryptexKit0A12ErrorMessageVACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type FilePath and conformance FilePath, MEMORY[0x277D854C0]);
        LODWORD(v51) = v29;
        v31 = dispatch thunk of CustomStringConvertible.description.getter();
        v33 = v32;
        v34 = v25;
        v35 = v47[0];
        (v47[0])(v34, v8);
        v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v52);

        *(v30 + 4) = v36;
        *(v30 + 12) = 2080;
        v37 = dispatch thunk of CustomStringConvertible.description.getter();
        v39 = v38;
        v35(v27, v8);
        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v52);

        *(v30 + 14) = v40;
        _os_log_impl(&dword_226120000, v28, v51, "%s is already a symlink pointing at %s", v30, 0x16u);
        v41 = v54;
        swift_arrayDestroy();
        MEMORY[0x22AA76E00](v41, -1, -1);
        MEMORY[0x22AA76E00](v30, -1, -1);
      }

      else
      {

        v45 = v27;
        v46 = v47[0];
        (v47[0])(v45, v8);
        v46(v25, v8);
      }
    }

    else
    {
      v42 = FilePath.exists()();
      if (!v43)
      {
        if (v42)
        {
          (*(v22 + 104))(v7, *MEMORY[0x277D02D60], v4);
          v52 = 0;
          v53 = 0xE000000000000000;
          _StringGuts.grow(_:)(37);

          v52 = 0xD000000000000023;
          v53 = 0x8000000226145A00;
          _s10CryptexKit0A12ErrorMessageVACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type FilePath and conformance FilePath, MEMORY[0x277D854C0]);
          v44 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x22AA76680](v44);

          type metadata accessor for CryptexErrorMessage();
          _s10CryptexKit0A12ErrorMessageVACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28]);
          swift_allocError();
          static CryptexError.error(_:_:file:function:lineNumber:)();

          (*(v22 + 8))(v7, v4);
          swift_willThrow();
        }

        else if ((v50 & 1) == 0)
        {
          FilePath.createSymlink(targeting:)();
        }
      }
    }
  }
}

void specialized BootstrapVirtualEnv.Directory.bootstrap(src:dest:dryRun:)(uint64_t a1, uint64_t a2, int a3)
{
  v43 = a3;
  v46 = a2;
  v3 = type metadata accessor for FilePath();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CryptexError();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = FilePath.directoryExists()();
  if (v14)
  {
    return;
  }

  v40 = v7;
  v41 = v4;
  v42 = v3;
  if (!v13)
  {
    v32 = v12;
    v33 = v8;
    (*(v9 + 104))(v12, *MEMORY[0x277D02D60], v8);
    v44 = 0;
    v45 = 0xE000000000000000;
    _StringGuts.grow(_:)(21);
    _s10CryptexKit0A12ErrorMessageVACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type FilePath and conformance FilePath, MEMORY[0x277D854C0]);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;

    v44 = v34;
    v45 = v36;
    MEMORY[0x22AA76680](0xD000000000000013, 0x8000000226145990);
    type metadata accessor for CryptexErrorMessage();
    _s10CryptexKit0A12ErrorMessageVACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28]);
    swift_allocError();
LABEL_10:
    static CryptexError.error(_:_:file:function:lineNumber:)();

    (*(v9 + 8))(v32, v33);
    swift_willThrow();
    return;
  }

  v15 = v46;
  v16 = FilePath.directoryExists()();
  if (v17)
  {
    return;
  }

  if (v16)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, logger);
    v20 = v40;
    v19 = v41;
    v21 = v42;
    (*(v41 + 16))(v40, v15, v42);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = v19;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v44 = v26;
      *v25 = 136315138;
      _s10CryptexKit0A12ErrorMessageVACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type FilePath and conformance FilePath, MEMORY[0x277D854C0]);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v20;
      v30 = v29;
      (*(v24 + 8))(v28, v21);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v30, &v44);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_226120000, v22, v23, "Directory already exists at %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x22AA76E00](v26, -1, -1);
      MEMORY[0x22AA76E00](v25, -1, -1);
    }

    else
    {

      (*(v19 + 8))(v20, v21);
    }

    return;
  }

  v32 = v12;
  v37 = FilePath.exists()();
  if (v38)
  {
    return;
  }

  if (v37)
  {
    v33 = v8;
    (*(v9 + 104))(v12, *MEMORY[0x277D02D60], v8);
    v44 = 0;
    v45 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v44 = 0xD000000000000025;
    v45 = 0x80000002261459D0;
    _s10CryptexKit0A12ErrorMessageVACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type FilePath and conformance FilePath, MEMORY[0x277D854C0]);
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x22AA76680](v39);

    type metadata accessor for CryptexErrorMessage();
    _s10CryptexKit0A12ErrorMessageVACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28]);
    swift_allocError();
    goto LABEL_10;
  }

  if ((v43 & 1) == 0)
  {
    FilePath.createDirectory(permissions:intermediateDirectories:)();
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t CryptexCore.type.getter@<X0>(uint64_t a1@<X8>)
{
  CryptexCore.createType()(a1);
  if (v1)
  {

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = type metadata accessor for CryptexType();
  return (*(*(v4 - 8) + 56))(a1, v3, 1, v4);
}

uint64_t CryptexCore.createType()@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit18Image4PropertySpecVys6UInt64VGMd, &_s10CryptexKit18Image4PropertySpecVys6UInt64VGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v40 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v37 - v7;
  v9 = type metadata accessor for Image4Auth();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!CryptexCore.image4Ticket.getter())
  {
    v20 = type metadata accessor for CryptexError();
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, MEMORY[0x277D02DB8]);
    swift_allocError();
    (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D02DA0], v20);
    return swift_willThrow();
  }

  v41 = v9;
  v42 = v10;
  Image4Auth.init()();
  static Image4PropertySpec.subType.getter();
  v14 = dispatch thunk of CryptexAsset.data.getter();
  if (v1)
  {

    (*(v3 + 8))(v8, v2);
    return (*(v42 + 8))(v13, v41);
  }

  v16 = v14;
  v17 = v15;
  v18 = Image4Auth.read(property:from:)();
  v23 = v22;
  v37[1] = v18;
  v38 = v13;
  v24 = *(v3 + 8);
  v24(v8, v2);
  outlined consume of Data._Representation(v16, v17);
  if (v23)
  {
    v25 = type metadata accessor for CryptexError();
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, MEMORY[0x277D02DB8]);
    swift_allocError();
    v27 = v26;
    v28 = MEMORY[0x277D02D58];
  }

  else
  {
    v29 = v24;
    v30 = v40;
    static Image4PropertySpec.type.getter();
    v31 = dispatch thunk of CryptexAsset.data.getter();
    v33 = v32;
    Image4Auth.read(property:from:)();
    v34 = v30;
    LOBYTE(v30) = v35;
    v29(v34, v2);
    outlined consume of Data._Representation(v31, v33);
    if ((v30 & 1) == 0)
    {
      CryptexType.init(type:subtype:)();
      goto LABEL_9;
    }

    v25 = type metadata accessor for CryptexError();
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, MEMORY[0x277D02DB8]);
    swift_allocError();
    v27 = v36;
    v28 = MEMORY[0x277D02D40];
  }

  (*(*(v25 - 8) + 104))(v27, *v28, v25);
  swift_willThrow();
LABEL_9:

  return (*(v42 + 8))(v38, v41);
}

uint64_t CryptexCore.infoPlist.getter(unsigned int *a1)
{
  v3 = type metadata accessor for CryptexAssetType();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *a1, v3);
  v8 = *(v1 + 16);
  if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    v12 = *(v4 + 8);

    v12(v7, v3);
  }

  else
  {
    v11 = type metadata accessor for CryptexError();
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, MEMORY[0x277D02DB8]);
    swift_allocError();
    v14 = v13;
    (*(v4 + 16))(v13, v7, v3);
    (*(*(v11 - 8) + 104))(v14, *MEMORY[0x277D02DA8], v11);
    swift_willThrow();
    (*(v4 + 8))(v7, v3);
  }

  return v11;
}

uint64_t CryptexCore.image4Ticket.getter()
{
  v1 = type metadata accessor for CryptexAssetType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  (*(v2 + 104))(v5, *MEMORY[0x277D02DD8], v1);
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    v10 = *(v2 + 8);

    v10(v5, v1);
    return v9;
  }

  else
  {
    (*(v2 + 8))(v5, v1);
    return 0;
  }
}

uint64_t CryptexCore.__allocating_init(assets:)(uint64_t a1)
{
  v2 = swift_allocObject();
  CryptexCore.init(assets:)(a1);
  return v2;
}

uint64_t CryptexCore.init(assets:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CryptexAssetType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  *(v2 + 16) = a1;
  v12 = *(v5 + 104);
  v12(&v23 - v10, *MEMORY[0x277D02DF0], v4);
  if (!*(a1 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v11), (v13 & 1) == 0))
  {
    v16 = type metadata accessor for CryptexError();
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, MEMORY[0x277D02DB8]);
    swift_allocError();
    v18 = v17;
    (*(v5 + 16))(v17, v11, v4);
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D02DA8], v16);
    swift_willThrow();
    (*(v5 + 8))(v11, v4);
LABEL_8:

    return v2;
  }

  v14 = *(v5 + 8);
  v25 = v5 + 8;
  v24 = v14;
  v14(v11, v4);
  v12(v9, *MEMORY[0x277D02DE8], v4);
  if (!*(*(v2 + 16) + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v9), (v15 & 1) == 0))
  {
    v19 = type metadata accessor for CryptexError();
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, MEMORY[0x277D02DB8]);
    swift_allocError();
    v21 = v20;
    (*(v5 + 16))(v20, v9, v4);
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D02DA8], v19);
    swift_willThrow();
    v24(v9, v4);
    goto LABEL_8;
  }

  v24(v9, v4);
  return v2;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CryptexCore.isPackage()()
{
  v1 = type metadata accessor for CryptexError();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CryptexType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  CryptexCore.createType()(v10);
  if (!v0)
  {
    LOBYTE(v1) = CryptexType.isPackage()();
    (*(v7 + 8))(v10, v6);
    return v1 & 1;
  }

  v13 = v0;
  MEMORY[0x22AA76CB0]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (!swift_dynamicCast())
  {
LABEL_7:

    return v1 & 1;
  }

  if ((*(v2 + 88))(v5, v1) != *MEMORY[0x277D02DA0])
  {
    (*(v2 + 8))(v5, v1);
    goto LABEL_7;
  }

  LOBYTE(v1) = 1;
  return v1 & 1;
}

uint64_t CryptexCore.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t CryptexCore.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t lazy protocol witness table accessor for type CryptexError and conformance CryptexError(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Cryptex.cfBundleID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t key path getter for Cryptex.core : Cryptex@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t key path setter for Cryptex.core : Cryptex(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 128);

  return v3(v4);
}

uint64_t Cryptex.core.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t Cryptex.core.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t Cryptex.name.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(v3 + 56) + 32 * v4, v8);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t Cryptex.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13CryptexServer7Cryptex_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Cryptex.assets.getter()
{
  v1 = *((*(*v0 + 120))() + 16);

  return v1;
}

uint64_t Cryptex.bootstrapOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for CryptexAssetType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *((*(*v1 + 120))(v7) + 16);

  (*(v5 + 104))(v9, *MEMORY[0x277D02DE0], v4);
  if (*(v10 + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(v9), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    v14 = *(v5 + 8);

    v14(v9, v4);

    v15 = type metadata accessor for JSONDecoder();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    v18 = dispatch thunk of CryptexAsset.data.getter();
    if (v2)
    {
    }

    else
    {
      v20 = v18;
      v21 = v19;
      v22 = type metadata accessor for Cryptex.BootstrapOptions();
      lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions, MEMORY[0x277D02D10]);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();

      outlined consume of Data._Representation(v20, v21);
      return (*(*(v22 - 8) + 56))(a1, 0, 1, v22);
    }
  }

  else
  {

    (*(v5 + 8))(v9, v4);
    v23 = type metadata accessor for Cryptex.BootstrapOptions();
    return (*(*(v23 - 8) + 56))(a1, 1, 1, v23);
  }
}

uint64_t Cryptex.cache(bootstrapOptions:)(uint64_t a1)
{
  v99 = a1;
  v103 = type metadata accessor for CryptexError();
  v2 = *(v103 - 1);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v103);
  v5 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for CryptexAssetType();
  v104 = *(v102 - 8);
  v6 = *(v104 + 8);
  MEMORY[0x28223BE20](v102);
  v101 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v84 - v10;
  v12 = type metadata accessor for FilePath();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v84 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v84 - v22;
  v24 = *(*v1 + 192);
  v98 = v1;
  v24(v21);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of FilePath?(v11, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
    v25 = *(v2 + 104);
    v26 = v2;
    v27 = v103;
    v25(v5, *MEMORY[0x277D02D60], v103);
    type metadata accessor for CryptexErrorMessage();
    lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28]);
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)();
    (*(v26 + 8))(v5, v27);
    return swift_willThrow();
  }

  v94 = v2;
  v95 = v5;
  (*(v13 + 32))(v23, v11, v12);
  v29 = *(v13 + 16);
  v97 = v23;
  v90 = v13 + 16;
  v91 = v29;
  v29(v17, v23, v12);
  v30 = v104;
  v32 = v104 + 104;
  v31 = *(v104 + 13);
  v33 = v101;
  v34 = v102;
  v93 = *MEMORY[0x277D02DE0];
  v92 = v31;
  v31(v101);
  v96 = v12;
  CryptexAssetType.fileName.getter();
  v36 = *(v30 + 1);
  v35 = v30 + 8;
  v37 = v34;
  v38 = v20;
  v39 = v36;
  v36(v33, v37);
  FilePath.appending(_:)();
  v40 = type metadata accessor for JSONEncoder();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  v43 = JSONEncoder.init()();
  type metadata accessor for Cryptex.BootstrapOptions();
  lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions, MEMORY[0x277D02D10]);
  v44 = v100;
  v45 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v44)
  {

    v47 = *(v13 + 8);
    v48 = v96;
    v47(v38, v96);
    v49 = v97;
    v50 = v48;
    return (v47)(v49, v50);
  }

  v87 = v32;
  v88 = v39;
  v104 = v35;
  v99 = v43;
  v100 = v13;
  v51 = v45;
  v52 = v46;
  v53 = [objc_opt_self() defaultManager];
  v89 = v38;
  v54 = FilePath.string.getter();
  v55 = MEMORY[0x22AA76630](v54);

  isa = Data._bridgeToObjectiveC()().super.isa;
  v57 = [v53 createFileAtPath:v55 contents:isa attributes:0];

  if (v57)
  {
    v85 = v51;
    v86 = v52;
    v58 = v89;
    v59 = FilePath.string.getter();
    v60 = MEMORY[0x22AA76630](v59);

    v61 = [objc_opt_self() fileHandleForReadingAtPath_];

    v62 = v103;
    v63 = v94;
    v64 = v95;
    if (!v61)
    {
      v82 = v96;
      v91(v95, v58, v96);
      v83 = v100;
      (*(v100 + 56))(v64, 0, 1, v82);
      (*(v63 + 104))(v64, *MEMORY[0x277D02D78], v62);
      v104 = " bootstrap options file";
      type metadata accessor for CryptexErrorMessage();
      lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28]);
      swift_allocError();
      static CryptexError.error(_:_:file:function:lineNumber:)();
      (*(v63 + 8))(v64, v62);
      swift_willThrow();
      outlined consume of Data._Representation(v85, v86);

      v47 = *(v83 + 8);
      v47(v89, v82);
      v49 = v97;
      v50 = v82;
      return (v47)(v49, v50);
    }

    v66 = v101;
    v65 = v102;
    v67 = v92;
    v92(v101, v93, v102);
    v68 = type metadata accessor for CryptexAsset();
    v69 = *(v68 + 48);
    v70 = *(v68 + 52);
    swift_allocObject();
    v103 = v61;
    v71 = CryptexAsset.init(type:file:)();
    v72 = v98;
    v73 = *((*(*v98 + 120))() + 16);

    v67(v66, v93, v65);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v105 = v73;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v71, v66, isUniquelyReferenced_nonNull_native);
    v88(v66, v65);
    type metadata accessor for CryptexCore();

    v76 = CryptexCore.__allocating_init(assets:)(v75);

    (*(*v72 + 128))(v76);
    outlined consume of Data._Representation(v85, v86);
  }

  else
  {
    v77 = v94;
    v78 = v95;
    v79 = v103;
    (*(v94 + 104))(v95, *MEMORY[0x277D02D60], v103);
    v104 = "common to all cryptex assets";
    type metadata accessor for CryptexErrorMessage();
    lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28]);
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)();
    (*(v77 + 8))(v78, v79);
    swift_willThrow();
    outlined consume of Data._Representation(v51, v52);
  }

  v80 = *(v100 + 8);
  v81 = v96;
  v80(v89, v96);
  return (v80)(v97, v81);
}

uint64_t key path setter for Cryptex.rootDirectory : Cryptex(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of FilePath?(a1, &v9 - v6, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  return (*(**a2 + 200))(v7);
}

uint64_t Cryptex.rootDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13CryptexServer7Cryptex_rootDirectory;
  swift_beginAccess();
  return outlined init with copy of FilePath?(v1 + v3, a1, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
}

uint64_t Cryptex.rootDirectory.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13CryptexServer7Cryptex_rootDirectory;
  swift_beginAccess();
  outlined assign with take of FilePath?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t Cryptex.__allocating_init(assets:rootDirectory:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  Cryptex.init(assets:rootDirectory:)(a1, a2);
  return v7;
}

void *Cryptex.init(assets:rootDirectory:)(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v61 = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for Logger();
  v55 = *(v5 - 8);
  v6 = *(v55 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CryptexError();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC13CryptexServer7Cryptex_rootDirectory;
  v15 = type metadata accessor for FilePath();
  v16 = v2 + v14;
  v17 = v2;
  (*(*(v15 - 8) + 56))(v16, 1, 1, v15);
  type metadata accessor for CryptexCore();
  v18 = CryptexCore.__allocating_init(assets:)(a1);
  if (v3)
  {
    outlined destroy of FilePath?(v56, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
    goto LABEL_5;
  }

  v51 = v8;
  v52 = v5;
  v53 = v10;
  v54 = v13;
  v19 = v2;
  v2[4] = v18;

  CryptexCore.infoPlist.getter();

  v20 = dispatch thunk of CryptexAsset.data.getter();
  v22 = v56;
  v29 = v20;
  v30 = v21;

  v31 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v29, v30);
  v59 = 0;
  v33 = [v31 propertyListWithData:isa options:0 format:0 error:&v59];

  if (!v33)
  {
    v44 = v59;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v23 = v22;
LABEL_4:
    outlined destroy of FilePath?(v23, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
    v17 = v19;
    v24 = v19[4];

    goto LABEL_5;
  }

  v34 = v59;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v46 = v53;
    v45 = v54;
    (*(v53 + 104))(v54, *MEMORY[0x277D02D48], v9);
    type metadata accessor for CryptexErrorMessage();
    lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28]);
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)();
    (*(v46 + 8))(v45, v9);
    swift_willThrow();
    v23 = v56;
    goto LABEL_4;
  }

  v35 = v57;
  v19[5] = v57;
  v36 = v9;
  v37 = v54;
  if (*(v35 + 16))
  {

    v38 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000012, 0x8000000226145BF0);
    if (v39)
    {
      outlined init with copy of Any(*(v35 + 56) + 32 * v38, &v59);

      if (swift_dynamicCast())
      {
        v40 = v57;
        v41 = v58;
        v17 = v19;
        v19[2] = v57;
        v19[3] = v41;
        v59 = 0x2D78657470797263;
        v60 = 0xE800000000000000;

        MEMORY[0x22AA76680](v40, v41);

        v42 = v51;
        Logger.init(category:)(v59, v60);
        (*(v55 + 32))(v17 + OBJC_IVAR____TtC13CryptexServer7Cryptex_logger, v42, v52);
        v43 = OBJC_IVAR____TtC13CryptexServer7Cryptex_rootDirectory;
        swift_beginAccess();
        outlined assign with take of FilePath?(v56, v17 + v43);
        swift_endAccess();
        goto LABEL_6;
      }
    }

    else
    {
    }
  }

  v47 = v53;
  (*(v53 + 104))(v37, *MEMORY[0x277D02D48], v36);
  type metadata accessor for CryptexErrorMessage();
  lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28]);
  swift_allocError();
  static CryptexError.error(_:_:file:function:lineNumber:)();
  (*(v47 + 8))(v37, v36);
  swift_willThrow();
  outlined destroy of FilePath?(v56, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v17 = v19;
  v48 = v19[4];

  v49 = v19[5];

LABEL_5:
  outlined destroy of FilePath?(v17 + OBJC_IVAR____TtC13CryptexServer7Cryptex_rootDirectory, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  type metadata accessor for Cryptex();
  v25 = *(*v17 + 48);
  v26 = *(*v17 + 52);
  swift_deallocPartialClassInstance();
LABEL_6:
  v27 = *MEMORY[0x277D85DE8];
  return v17;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Cryptex.isPackage()()
{
  (*(*v0 + 120))();
  v1 = CryptexCore.isPackage()();

  return v1;
}

uint64_t Cryptex.__allocating_init(dir:logger:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20[-v7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_226145000;
  v23 = 0;
  v24 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v23 = 0xD000000000000018;
  v24 = 0x8000000226145C40;
  v10 = type metadata accessor for FilePath();
  lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type FilePath and conformance FilePath, MEMORY[0x277D854C0]);
  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x22AA76680](v11);

  v12 = v23;
  v13 = v24;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 32) = v12;
  *(v9 + 40) = v13;
  print(_:separator:terminator:)();

  v14 = static CryptexAssetType.allCases.getter();
  v21 = a1;
  v22 = a2;
  v15 = specialized Sequence.reduce<A>(into:_:)(MEMORY[0x277D84F98], partial apply for closure #1 in Cryptex.init(dir:logger:), v20, v14);

  v16 = *(v10 - 8);
  (*(v16 + 16))(v8, a1, v10);
  (*(v16 + 56))(v8, 0, 1, v10);
  v17 = (*(v2 + 216))(v15, v8);
  v18 = type metadata accessor for Logger();
  (*(*(v18 - 8) + 8))(a2, v18);
  (*(v16 + 8))(a1, v10);
  return v17;
}

uint64_t closure #1 in Cryptex.init(dir:logger:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a1;
  v60 = a4;
  v63 = type metadata accessor for CryptexAssetType();
  v6 = *(v63 - 8);
  v7 = *(v6 + 64);
  v8 = (MEMORY[0x28223BE20])();
  v61 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v55 - v10;
  v12 = type metadata accessor for FilePath();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v62 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v55 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v55 - v20;
  v22 = *(v13 + 16);
  v22(v19, a3, v12);
  CryptexAssetType.fileName.getter();
  FilePath.appending(_:)();
  v23 = FilePath.string.getter();
  v24 = MEMORY[0x22AA76630](v23);

  v25 = [objc_opt_self() fileHandleForReadingAtPath_];

  if (!v25)
  {
    return (*(v13 + 8))(v21, v12);
  }

  v57 = v13;
  v58 = v12;
  v56 = v6;
  v26 = *(v6 + 16);
  v27 = v63;
  v26(v11, a2, v63);
  v28 = type metadata accessor for CryptexAsset();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v55 = v25;
  v31 = CryptexAsset.init(type:file:)();
  v32 = v59;
  v33 = *v59;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v32;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, a2, isUniquelyReferenced_nonNull_native);
  *v32 = v64;
  v35 = v61;
  v26(v61, a2, v27);
  v36 = v58;
  v37 = v62;
  v22(v62, v21, v58);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v64 = v60;
    *v40 = 136315394;
    v41 = CryptexAssetType.name.getter();
    v42 = v35;
    v44 = v43;
    (*(v56 + 8))(v42, v63);
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v44, &v64);

    *(v40 + 4) = v45;
    *(v40 + 12) = 2080;
    lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type FilePath and conformance FilePath, MEMORY[0x277D854C0]);
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v36;
    v49 = v48;
    v50 = *(v57 + 8);
    v50(v37, v47);
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v49, &v64);

    *(v40 + 14) = v51;
    _os_log_impl(&dword_226120000, v38, v39, "Found %s at %s", v40, 0x16u);
    v52 = v60;
    swift_arrayDestroy();
    MEMORY[0x22AA76E00](v52, -1, -1);
    MEMORY[0x22AA76E00](v40, -1, -1);

    return (v50)(v21, v47);
  }

  else
  {

    v54 = *(v57 + 8);
    v54(v37, v36);
    (*(v56 + 8))(v35, v63);
    return (v54)(v21, v36);
  }
}

uint64_t specialized Sequence.reduce<A>(into:_:)(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(type metadata accessor for CryptexAssetType() - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

id Cryptex.copy(to:)(uint64_t a1)
{
  v190 = *MEMORY[0x277D85DE8];
  v157 = type metadata accessor for CryptexError();
  v156 = *(v157 - 8);
  v2 = *(v156 + 64);
  MEMORY[0x28223BE20](v157);
  v155 = &v153 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v153 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v154 = &v153 - v10;
  MEMORY[0x28223BE20](v9);
  v178 = &v153 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathV9ComponentVSgMd, &_s6System8FilePathV9ComponentVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v160 = &v153 - v14;
  v187 = type metadata accessor for CryptexAssetType();
  v167 = *(v187 - 1);
  v15 = *(v167 + 64);
  v16 = MEMORY[0x28223BE20](v187);
  v184 = &v153 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v182 = &v153 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit0A9AssetTypeO3key_AA0aC0C5valuetSgMd, &_s10CryptexKit0A9AssetTypeO3key_AA0aC0C5valuetSgMR);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v177 = &v153 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v169 = &v153 - v23;
  v24 = type metadata accessor for FilePath();
  v25 = *(v24 - 8);
  v26 = v25[8];
  v27 = MEMORY[0x28223BE20](v24);
  v166 = &v153 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v153 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v153 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v153 - v35;
  v186 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10CryptexKit0C9AssetTypeO_AC0cE0CTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v37 = 0x278584000uLL;
  v181 = objc_opt_self();
  v38 = [v181 defaultManager];
  v39 = v25[2];
  v175 = a1;
  v171 = v25 + 2;
  v170 = v39;
  v39(v34, a1, v24);
  FilePath.removingLastComponent()();
  v40 = FilePath.string.getter();
  v42 = v41;
  v159 = v25;
  v43 = v25[1];
  v168 = v36;
  v179 = v43;
  v180 = v25 + 1;
  v43(v36, v24);
  v44 = MEMORY[0x22AA76630](v40, v42);

  v188 = 0;
  LODWORD(v42) = [v38 createDirectoryAtPath:v44 withIntermediateDirectories:1 attributes:0 error:&v188];

  if (!v42)
  {
    goto LABEL_31;
  }

  v176 = v31;
  v45 = v188;
  v46 = [v181 defaultManager];
  v47 = FilePath.string.getter();
  v48 = MEMORY[0x22AA76630](v47);

  v188 = 0;
  v49 = [v46 createDirectoryAtPath:v48 withIntermediateDirectories:0 attributes:0 error:&v188];

  if (!v49)
  {
LABEL_31:
    v106 = v188;
    v107 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v184 = 0;
    v58 = v186;
    v108 = v181;
    goto LABEL_32;
  }

  v158 = v8;
  v50 = *((*(*v185 + 120))(v188) + 16);

  v51 = 0;
  v53 = v50 + 64;
  v52 = *(v50 + 64);
  v162 = v50;
  v54 = 1 << *(v50 + 32);
  v55 = -1;
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  v56 = v55 & v52;
  v57 = (v54 + 63) >> 6;
  v173 = (v167 + 16);
  v174 = (v167 + 32);
  v165 = (v159 + 6);
  v172 = (v167 + 8);
  v183 = v24;
  v58 = v186;
  v60 = v177;
  v59 = v178;
  v164 = v53;
  for (i = v57; ; v57 = i)
  {
    v186 = v58;
    if (v56)
    {
      v64 = v51;
LABEL_18:
      v67 = __clz(__rbit64(v56));
      v56 &= v56 - 1;
      v68 = v67 | (v64 << 6);
      v69 = v162;
      v70 = v167;
      (*(v167 + 16))(v182, *(v162 + 48) + *(v167 + 72) * v68, v187);
      v71 = *(*(v69 + 56) + 8 * v68);
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit0A9AssetTypeO3key_AA0aC0C5valuetMd, &_s10CryptexKit0A9AssetTypeO3key_AA0aC0C5valuetMR);
      v73 = *(v72 + 48);
      v60 = v177;
      (*(v70 + 32))();
      *&v60[v73] = v71;
      (*(*(v72 - 8) + 56))(v60, 0, 1, v72);

      v24 = v183;
      v59 = v178;
      v58 = v186;
    }

    else
    {
      v65 = v57 <= v51 + 1 ? v51 + 1 : v57;
      v66 = v65 - 1;
      while (1)
      {
        v64 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          __break(1u);
LABEL_60:
          __break(1u);
        }

        if (v64 >= v57)
        {
          break;
        }

        v56 = *(v53 + 8 * v64);
        ++v51;
        if (v56)
        {
          v51 = v64;
          goto LABEL_18;
        }
      }

      v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit0A9AssetTypeO3key_AA0aC0C5valuetMd, &_s10CryptexKit0A9AssetTypeO3key_AA0aC0C5valuetMR);
      (*(*(v105 - 8) + 56))(v60, 1, 1, v105);
      v56 = 0;
      v51 = v66;
    }

    v74 = v60;
    v75 = v169;
    outlined init with take of (key: CryptexAssetType, value: CryptexAsset)?(v74, v169, &_s10CryptexKit0A9AssetTypeO3key_AA0aC0C5valuetSgMd, &_s10CryptexKit0A9AssetTypeO3key_AA0aC0C5valuetSgMR);
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit0A9AssetTypeO3key_AA0aC0C5valuetMd, &_s10CryptexKit0A9AssetTypeO3key_AA0aC0C5valuetMR);
    if ((*(*(v76 - 8) + 48))(v75, 1, v76) == 1)
    {
      break;
    }

    v77 = *(v75 + *(v76 + 48));
    (*v174)(v184, v75, v187);
    v185 = v77;
    dispatch thunk of CryptexAsset.path.getter();
    if ((*v165)(v59, 1, v24) == 1)
    {
      outlined destroy of FilePath?(v59, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
      v78 = v176;
LABEL_24:
      v83 = v182;
      CryptexAsset.type.getter();
      CryptexAssetType._4cc.getter();
      (*v172)(v83, v187);
      goto LABEL_26;
    }

    v79 = v160;
    MEMORY[0x22AA76570]();
    v179(v59, v24);
    v80 = type metadata accessor for FilePath.Component();
    v81 = *(v80 - 8);
    v82 = (*(v81 + 48))(v79, 1, v80);
    v78 = v176;
    if (v82 == 1)
    {
      outlined destroy of FilePath?(v79, &_s6System8FilePathV9ComponentVSgMd, &_s6System8FilePathV9ComponentVSgMR);
      v24 = v183;
      goto LABEL_24;
    }

    FilePath.Component.string.getter();
    (*(v81 + 8))(v79, v80);
    v24 = v183;
LABEL_26:
    v170(v168, v175, v24);
    FilePath.appending(_:)();
    v84 = [v181 defaultManager];
    v85 = FilePath.string.getter();
    v86 = MEMORY[0x22AA76630](v85);

    [v84 createFileAtPath:v86 contents:0 attributes:0];

    v87 = FilePath.string.getter();
    v88 = MEMORY[0x22AA76630](v87);

    v89 = objc_opt_self();
    v90 = [v89 fileHandleForWritingAtPath_];

    if (!v90)
    {
      v139 = v78;
      v140 = v155;
      v141 = v183;
      v170(v155, v139, v183);
      (v159[7])(v140, 0, 1, v141);
      v142 = v156;
      (*(v156 + 104))(v140, *MEMORY[0x277D02D78], v157);
      v188 = 0;
      v189 = 0xE000000000000000;
      _StringGuts.grow(_:)(32);

      v188 = 0x742064656C696146;
      v189 = 0xEF206E65706F206FLL;
      lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType, MEMORY[0x277D02DF8]);
      v143 = v184;
      v144 = v187;
      v145 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AA76680](v145);

      MEMORY[0x22AA76680](0x6F662079706F6320, 0xEF65746972772072);
      type metadata accessor for CryptexErrorMessage();
      lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28]);
      v107 = swift_allocError();
      static CryptexError.error(_:_:file:function:lineNumber:)();

      (*(v142 + 8))(v140, v157);
      v24 = v141;
      swift_willThrow();

      v179(v176, v141);
      (*v172)(v143, v144);
      v184 = 0;
      v8 = v158;
      v58 = v186;
      v108 = v181;
      v37 = 0x278584000;
      goto LABEL_32;
    }

    v91 = CryptexAsset.file.getter();
    v92 = [v91 fileDescriptor];

    fcopyfile(v92, [v90 fileDescriptor], 0, 0xC000Fu);
    v93 = FilePath.string.getter();
    v94 = MEMORY[0x22AA76630](v93);

    v95 = [v89 fileHandleForReadingAtPath_];

    if (!v95)
    {
      v146 = v155;
      v24 = v183;
      v170(v155, v78, v183);
      (v159[7])(v146, 0, 1, v24);
      v147 = v156;
      v148 = v157;
      (*(v156 + 104))(v146, *MEMORY[0x277D02D78], v157);
      v188 = 0;
      v189 = 0xE000000000000000;
      _StringGuts.grow(_:)(31);

      v188 = 0x742064656C696146;
      v189 = 0xEF206E65706F206FLL;
      lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType, MEMORY[0x277D02DF8]);
      v149 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AA76680](v149);

      MEMORY[0x22AA76680](0x6F662079706F6320, 0xEE00646165722072);
      type metadata accessor for CryptexErrorMessage();
      lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28]);
      v107 = swift_allocError();
      static CryptexError.error(_:_:file:function:lineNumber:)();

      (*(v147 + 8))(v146, v148);
      swift_willThrow();
      v188 = 0;
      if ([v90 closeAndReturnError_])
      {
        v150 = v188;
      }

      else
      {
        v151 = v188;
        v152 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v178 = v152;
      }

      v8 = v158;
      v58 = v186;
      v108 = v181;
      v37 = 0x278584000;

      v179(v176, v24);
      (*v172)(v184, v187);
      v184 = 0;
      goto LABEL_32;
    }

    v96 = v184;
    (*v173)(v182, v184, v187);
    v97 = type metadata accessor for CryptexAsset();
    v98 = *(v97 + 48);
    v99 = *(v97 + 52);
    swift_allocObject();
    v100 = v95;
    v101 = CryptexAsset.init(type:file:)();
    v102 = v186;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v188 = v102;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v101, v96, isUniquelyReferenced_nonNull_native);

    v58 = v188;
    v188 = 0;
    if ([v90 closeAndReturnError_])
    {
      v104 = v188;
    }

    else
    {
      v61 = v188;
      v62 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v161 = 0;
    }

    v63 = v176;
    v60 = v177;
    v59 = v178;

    v24 = v183;
    v179(v63, v183);
    (*v172)(v184, v187);
    v53 = v164;
  }

  v133 = v154;
  (v170)(v154);
  (v159[7])(v133, 0, 1, v24);
  v134 = type metadata accessor for Cryptex();
  v135 = *(v134 + 48);
  v136 = *(v134 + 52);
  v113 = swift_allocObject();

  v138 = v161;
  Cryptex.init(assets:rootDirectory:)(v137, v133);
  if (!v138)
  {
    goto LABEL_50;
  }

  v184 = 0;
  v8 = v158;
  v37 = 0x278584000;
  v107 = v138;
  v108 = v181;
LABEL_32:
  v109 = [v108 *(v37 + 1368)];
  v110 = FilePath.string.getter();
  v111 = MEMORY[0x22AA76630](v110);

  v188 = 0;
  v112 = [v109 removeItemAtPath:v111 error:&v188];

  v113 = v188;
  if (v112)
  {
    v182 = v107;
    v114 = v58 + 64;
    v115 = 1 << *(v58 + 32);
    v116 = -1;
    if (v115 < 64)
    {
      v116 = ~(-1 << v115);
    }

    v117 = v116 & *(v58 + 64);
    v118 = (v115 + 63) >> 6;
    v187 = (v159 + 6);
    v185 = v159 + 4;
    v119 = v188;

    v120 = 0;
    v158 = v8;
    v183 = v24;
    v186 = v58;
    if (v117)
    {
      goto LABEL_38;
    }

    while (1)
    {
LABEL_39:
      v121 = v120 + 1;
      if (__OFADD__(v120, 1))
      {
        goto LABEL_60;
      }

      if (v121 >= v118)
      {
        break;
      }

      v117 = *(v114 + 8 * v121);
      ++v120;
      if (v117)
      {
        while (1)
        {
          v122 = __clz(__rbit64(v117));
          v117 &= v117 - 1;
          v123 = *(*(v58 + 56) + ((v121 << 9) | (8 * v122)));

          v113 = v123;
          dispatch thunk of CryptexAsset.path.getter();
          if ((*v187)(v8, 1, v24) == 1)
          {

            outlined destroy of FilePath?(v8, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
            v120 = v121;
            if (!v117)
            {
              goto LABEL_39;
            }
          }

          else
          {
            (*v185)(v166, v8, v24);
            v124 = [v181 defaultManager];
            v125 = FilePath.string.getter();
            v126 = MEMORY[0x22AA76630](v125);

            v188 = 0;
            v127 = [v124 removeItemAtPath:v126 error:&v188];

            v113 = v188;
            if (v127)
            {
              v128 = v188;
              v24 = v183;
              v179(v166, v183);
            }

            else
            {
              v129 = v188;
              v113 = _convertNSErrorToError(_:)();

              swift_willThrow();

              v24 = v183;
              v179(v166, v183);
              v184 = 0;
            }

            v120 = v121;
            v8 = v158;
            v58 = v186;
            if (!v117)
            {
              goto LABEL_39;
            }
          }

LABEL_38:
          v121 = v120;
        }
      }
    }

    swift_willThrow();
  }

  else
  {
    v130 = v188;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

LABEL_50:

  v131 = *MEMORY[0x277D85DE8];
  return v113;
}

uint64_t Cryptex.move(to:)(uint64_t a1)
{
  v166 = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for CryptexError();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v128 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathV9ComponentVSgMd, &_s6System8FilePathV9ComponentVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v150 = &v124 - v8;
  v159 = type metadata accessor for FilePath.Component();
  v155 = *(v159 - 8);
  v9 = *(v155 + 64);
  v10 = MEMORY[0x28223BE20](v159);
  v147 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v158 = &v124 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v126 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v151 = &v124 - v17;
  v163 = type metadata accessor for FilePath();
  v18 = *(v163 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v163);
  v146 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v149 = &v124 - v23;
  MEMORY[0x28223BE20](v22);
  v160 = &v124 - v24;
  v25 = type metadata accessor for CryptexAssetType();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v162 = &v124 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v157 = &v124 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit0A9AssetTypeO3key_AA0aC0C5valuetSgMd, &_s10CryptexKit0A9AssetTypeO3key_AA0aC0C5valuetSgMR);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v153 = &v124 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v152 = &v124 - v35;
  v161 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10CryptexKit0C9AssetTypeO_AC0cE0CTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v145 = objc_opt_self();
  v36 = [v145 defaultManager];
  v148 = a1;
  v37 = FilePath.string.getter();
  v38 = MEMORY[0x22AA76630](v37);

  v164 = 0;
  v39 = [v36 createDirectoryAtPath:v38 withIntermediateDirectories:1 attributes:0 error:&v164];

  if (v39)
  {
    v124 = v3;
    v125 = v2;
    v40 = *((*(*v129 + 120))(v164) + 16);

    v41 = 0;
    v42 = *(v40 + 64);
    v130 = v40 + 64;
    v140 = v40;
    v43 = 1 << *(v40 + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v45 = v44 & v42;
    v46 = (v43 + 63) >> 6;
    v154 = (v26 + 16);
    v156 = (v26 + 32);
    v142 = (v18 + 48);
    v139 = (v18 + 32);
    v138 = (v155 + 48);
    v134 = (v155 + 32);
    v143 = (v18 + 16);
    v133 = (v155 + 16);
    v144 = v18;
    v137 = (v18 + 8);
    v135 = (v155 + 8);
    v141 = (v26 + 8);
    v47 = v160;
    v132 = v26;
    v48 = v161;
    v131 = v46;
    v136 = v25;
    if ((v44 & v42) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    v161 = v48;
    v49 = v41;
LABEL_13:
    v51 = __clz(__rbit64(v45));
    v45 &= v45 - 1;
    v52 = v51 | (v49 << 6);
    v53 = v140;
    v54 = v157;
    v55 = v26;
    (*(v26 + 16))(v157, *(v140 + 48) + *(v26 + 72) * v52, v25);
    v56 = *(*(v53 + 56) + 8 * v52);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit0A9AssetTypeO3key_AA0aC0C5valuetMd, &_s10CryptexKit0A9AssetTypeO3key_AA0aC0C5valuetMR);
    v58 = *(v57 + 48);
    v59 = *(v55 + 32);
    v60 = v153;
    v59(v153, v54, v25);
    *&v60[v58] = v56;
    (*(*(v57 - 8) + 56))(v60, 0, 1, v57);

    v155 = v49;
    v61 = v144;
    v47 = v160;
    v48 = v161;
    while (1)
    {
      v62 = v60;
      v63 = v152;
      outlined init with take of (key: CryptexAssetType, value: CryptexAsset)?(v62, v152, &_s10CryptexKit0A9AssetTypeO3key_AA0aC0C5valuetSgMd, &_s10CryptexKit0A9AssetTypeO3key_AA0aC0C5valuetSgMR);
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit0A9AssetTypeO3key_AA0aC0C5valuetMd, &_s10CryptexKit0A9AssetTypeO3key_AA0aC0C5valuetMR);
      if ((*(*(v64 - 8) + 48))(v63, 1, v64) == 1)
      {
        break;
      }

      v65 = *(v63 + *(v64 + 48));
      (*v156)(v162, v63, v25);
      v66 = v151;
      dispatch thunk of CryptexAsset.path.getter();
      v67 = v163;
      if ((*v142)(v66, 1, v163) == 1)
      {

        outlined destroy of FilePath?(v66, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
        v101 = v124;
        v102 = v128;
        v103 = v125;
        (*(v124 + 104))(v128, *MEMORY[0x277D02D48], v125);
        type metadata accessor for CryptexErrorMessage();
        lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28]);
        swift_allocError();
        static CryptexError.error(_:_:file:function:lineNumber:)();
        (*(v101 + 8))(v102, v103);
        swift_willThrow();

        v104 = *v141;
        v105 = v162;
LABEL_27:
        v111 = v25;
        goto LABEL_31;
      }

      v161 = v65;
      v68 = (*v139)(v47, v66, v67);
      v69 = v150;
      MEMORY[0x22AA76570](v68);
      v70 = v159;
      if ((*v138)(v69, 1, v159) == 1)
      {

        outlined destroy of FilePath?(v69, &_s6System8FilePathV9ComponentVSgMd, &_s6System8FilePathV9ComponentVSgMR);
        v106 = v67;
        v107 = v128;
        (*(v61 + 16))(v128, v47, v106);
        (*(v61 + 56))(v107, 0, 1, v106);
        v108 = v124;
        (*(v124 + 104))(v107, *MEMORY[0x277D02D78], v125);
        v164 = 0;
        v165 = 0xE000000000000000;
        _StringGuts.grow(_:)(29);

        v164 = 0xD00000000000001BLL;
        v165 = 0x8000000226145C80;
        lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType, MEMORY[0x277D02DF8]);
        v109 = v162;
        v110 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x22AA76680](v110);

        type metadata accessor for CryptexErrorMessage();
        lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28]);
        swift_allocError();
        static CryptexError.error(_:_:file:function:lineNumber:)();

        (*(v108 + 8))(v107, v125);
        swift_willThrow();

        (*(v61 + 8))(v160, v163);
        v104 = *v141;
        v105 = v109;
        goto LABEL_27;
      }

      v71 = v158;
      (*v134)(v158, v69, v70);
      v72 = *v143;
      (*v143)(v146, v148, v67);
      (*v133)(v147, v71, v70);
      v73 = v149;
      FilePath.appending(_:)();
      v74 = [v145 defaultManager];
      v75 = FilePath.string.getter();
      v76 = MEMORY[0x22AA76630](v75);

      v77 = FilePath.string.getter();
      v78 = MEMORY[0x22AA76630](v77);

      v164 = 0;
      v79 = [v74 moveItemAtPath:v76 toPath:v78 error:&v164];

      if (!v79)
      {
        v112 = v164;

        _convertNSErrorToError(_:)();

        swift_willThrow();

        v113 = *v137;
        v114 = v73;
        v115 = v163;
        (*v137)(v114, v163);
        (*v135)(v158, v159);
        v113(v160, v115);
        v104 = *v141;
        v105 = v162;
        goto LABEL_30;
      }

      v80 = v164;
      v81 = FilePath.string.getter();
      v82 = MEMORY[0x22AA76630](v81);

      v83 = [objc_opt_self() fileHandleForReadingAtPath_];

      if (!v83)
      {

        v116 = v128;
        v117 = v163;
        v72(v128, v73, v163);
        v118 = v144 + 56;
        (*(v144 + 56))(v116, 0, 1, v117);
        v119 = v124;
        (*(v124 + 104))(v116, *MEMORY[0x277D02D78], v125);
        v164 = 0;
        v165 = 0xE000000000000000;
        _StringGuts.grow(_:)(31);

        v164 = 0x742064656C696146;
        v165 = 0xEF206E65706F206FLL;
        lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType, MEMORY[0x277D02DF8]);
        v120 = v162;
        v121 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x22AA76680](v121);

        MEMORY[0x22AA76680](0x6F66207473656420, 0xEE00646165722072);
        type metadata accessor for CryptexErrorMessage();
        lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28]);
        swift_allocError();
        static CryptexError.error(_:_:file:function:lineNumber:)();

        (*(v119 + 8))(v116, v125);
        swift_willThrow();

        v122 = *(v118 - 48);
        v122(v149, v117);
        (*v135)(v158, v159);
        v122(v160, v117);
        v104 = *v141;
        v105 = v120;
LABEL_30:
        v111 = v136;
LABEL_31:
        result = (v104)(v105, v111);
        goto LABEL_32;
      }

      v84 = v162;
      v25 = v136;
      (*v154)(v157, v162, v136);
      v85 = type metadata accessor for CryptexAsset();
      v86 = *(v85 + 48);
      v87 = *(v85 + 52);
      swift_allocObject();
      v88 = v83;
      v89 = CryptexAsset.init(type:file:)();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v164 = v48;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v89, v84, isUniquelyReferenced_nonNull_native);

      v91 = *v137;
      v92 = v73;
      v93 = v163;
      v48 = v164;
      (*v137)(v92, v163);
      (*v135)(v158, v159);
      v47 = v160;
      v91(v160, v93);
      (*v141)(v84, v25);
      v41 = v155;
      v26 = v132;
      v46 = v131;
      if (v45)
      {
        goto LABEL_5;
      }

LABEL_6:
      if (v46 <= v41 + 1)
      {
        v50 = v41 + 1;
      }

      else
      {
        v50 = v46;
      }

      while (1)
      {
        v49 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          __break(1u);
        }

        if (v49 >= v46)
        {
          break;
        }

        v45 = *(v130 + 8 * v49);
        ++v41;
        if (v45)
        {
          v161 = v48;
          goto LABEL_13;
        }
      }

      v155 = v50 - 1;
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit0A9AssetTypeO3key_AA0aC0C5valuetMd, &_s10CryptexKit0A9AssetTypeO3key_AA0aC0C5valuetMR);
      v60 = v153;
      (*(*(v94 - 8) + 56))(v153, 1, 1, v94);
      v45 = 0;
      v61 = v144;
    }

    type metadata accessor for CryptexCore();
    v97 = v127;
    result = CryptexCore.__allocating_init(assets:)(v48);
    v98 = v163;
    if (!v97)
    {
      v99 = v129;
      (*(*v129 + 128))(result);
      v100 = v126;
      (*(v61 + 16))(v126, v148, v98);
      (*(v61 + 56))(v100, 0, 1, v98);
      result = (*(*v99 + 200))(v100);
    }
  }

  else
  {
    v95 = v164;

    _convertNSErrorToError(_:)();

    result = swift_willThrow();
  }

LABEL_32:
  v123 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Cryptex.graft(at:)(uint64_t a1)
{
  v72[1] = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for FilePath();
  v4 = *(v3 - 8);
  v69 = v3;
  v70 = v4;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v65 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v66 = &v64 - v8;
  v9 = type metadata accessor for CryptexAssetType();
  v10 = *(v9 - 8);
  v67 = v9;
  v68 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v64 - v19;
  v21 = [objc_opt_self() defaultManager];
  v22 = FilePath.string.getter();
  v23 = MEMORY[0x22AA76630](v22);

  v72[0] = 0;
  v24 = [v21 createDirectoryAtPath:v23 withIntermediateDirectories:1 attributes:0 error:v72];

  if (!v24)
  {
    v41 = v72[0];
    _convertNSErrorToError(_:)();

LABEL_12:
    result = swift_willThrow();
    goto LABEL_13;
  }

  v25 = *(*v1 + 256);
  v26 = v72[0];
  v27 = v71;
  result = v25(a1);
  if (v27)
  {
    goto LABEL_13;
  }

  v64 = a1;
  v71 = v1;
  v29 = v69;
  v30 = *(v70 + 48);
  v31 = v30(v20, 1, v69);
  v32 = outlined destroy of FilePath?(v20, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  if (v31 != 1)
  {
    v42 = type metadata accessor for CryptexError();
    lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, MEMORY[0x277D02DB8]);
    swift_allocError();
    v44 = v43;
    v45 = MEMORY[0x277D02D70];
LABEL_11:
    (*(*(v42 - 8) + 104))(v44, *v45, v42);
    goto LABEL_12;
  }

  v33 = *((*(*v71 + 120))(v32) + 16);

  v34 = v67;
  (*(v68 + 104))(v13, *MEMORY[0x277D02DE8], v67);
  if (!*(v33 + 16) || (v35 = specialized __RawDictionaryStorage.find<A>(_:)(v13), (v36 & 1) == 0))
  {

    (*(v68 + 8))(v13, v34);
    v42 = type metadata accessor for CryptexError();
    lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, MEMORY[0x277D02DB8]);
    swift_allocError();
    v44 = v46;
    v45 = MEMORY[0x277D02D48];
    goto LABEL_11;
  }

  v37 = *(*(v33 + 56) + 8 * v35);
  v38 = *(v68 + 8);

  v38(v13, v67);

  dispatch thunk of CryptexAsset.path.getter();
  if (v30(v18, 1, v29) == 1)
  {
    outlined destroy of FilePath?(v18, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
    v39 = type metadata accessor for CryptexError();
    lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, MEMORY[0x277D02DB8]);
    swift_allocError();
    (*(*(v39 - 8) + 104))(v40, *MEMORY[0x277D02D80], v39);
    swift_willThrow();
  }

  else
  {
    v48 = v70;
    v49 = v66;
    (*(v70 + 32))(v66, v18, v29);
    v50 = v64;
    static APFSAdapter.graft(dmg:at:)();
    v68 = v37;
    v51 = v65;
    (*(v48 + 16))(v65, v50, v29);
    v52 = v71;

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      LODWORD(v64) = v54;
      v56 = v55;
      v67 = swift_slowAlloc();
      v72[0] = v67;
      *v56 = 136315394;
      *(v56 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v52 + 16), *(v52 + 24), v72);
      *(v56 + 12) = 2080;
      lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type FilePath and conformance FilePath, MEMORY[0x277D854C0]);
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v58;
      v60 = *(v48 + 8);
      v60(v51, v29);
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, v72);

      *(v56 + 14) = v61;
      _os_log_impl(&dword_226120000, v53, v64, "%s grafted at %s", v56, 0x16u);
      v62 = v67;
      swift_arrayDestroy();
      MEMORY[0x22AA76E00](v62, -1, -1);
      MEMORY[0x22AA76E00](v56, -1, -1);

      result = (v60)(v66, v29);
    }

    else
    {

      v63 = *(v48 + 8);
      v63(v51, v29);
      result = (v63)(v49, v29);
    }
  }

LABEL_13:
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

size_t Cryptex.graftPoint(under:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a1;
  v59 = a2;
  v74 = type metadata accessor for FilePath();
  v62 = *(v74 - 8);
  v3 = *(v62 + 64);
  MEMORY[0x28223BE20](v74);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSg_ADtMd, &_s6System8FilePathVSg_ADtMR);
  v6 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v8 = &v56 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v56 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathV10graftPoint_ACSg03dmgC0tMd, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMR);
  v72 = *(v16 - 8);
  v17 = *(v72 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v56 - v21;
  v23 = v73;
  result = static APFSAdapter.allDisksGrafted(under:logger:)(v69, v2 + OBJC_IVAR____TtC13CryptexServer7Cryptex_logger);
  if (!v23)
  {
    v66 = v15;
    v67 = v13;
    v73 = 0;
    v68 = v20;
    v69 = v16;
    v58 = v22;
    v64 = *(result + 16);
    if (!v64)
    {
LABEL_14:

      return (*(v62 + 56))(v59, 1, 1, v74);
    }

    v70 = v8;
    v25 = 0;
    v63 = (v62 + 48);
    v57 = (v62 + 32);
    v60 = (v62 + 8);
    v61 = v2;
    v27 = v68;
    v26 = v69;
    v28 = v2;
    v65 = result;
    while (1)
    {
      if (v25 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v30 = v5;
      v31 = v28;
      v32 = v74;
      v33 = outlined init with copy of FilePath?(result + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v25, v27, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMd, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMR);
      v34 = *(v26 + 48);
      v35 = v31;
      (*(*v31 + 120))(v33);
      v36 = v73;
      CryptexCore.diskImage.getter();
      v73 = v36;
      if (v36)
      {

        v49 = &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMd;
        v50 = &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMR;
        v51 = v27;
        return outlined destroy of FilePath?(v51, v49, v50);
      }

      v37 = v66;
      dispatch thunk of CryptexAsset.path.getter();

      v38 = *(v71 + 48);
      v39 = v27 + v34;
      v40 = v37;
      v41 = v70;
      outlined init with copy of FilePath?(v39, v70, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
      outlined init with copy of FilePath?(v40, v41 + v38, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
      v42 = *v63;
      if ((*v63)(v41, 1, v32) == 1)
      {
        break;
      }

      outlined init with copy of FilePath?(v41, v67, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
      if (v42(v41 + v38, 1, v74) == 1)
      {
        outlined destroy of FilePath?(v40, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
        (*v60)(v67, v74);
        v5 = v30;
        v26 = v69;
        v28 = v61;
LABEL_5:
        outlined destroy of FilePath?(v41, &_s6System8FilePathVSg_ADtMd, &_s6System8FilePathVSg_ADtMR);
        v27 = v68;
        goto LABEL_6;
      }

      v5 = v30;
      v43 = v30;
      v44 = v74;
      (*v57)(v43, v41 + v38, v74);
      lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type FilePath and conformance FilePath, MEMORY[0x277D854C0]);
      v45 = v67;
      v46 = dispatch thunk of static Equatable.== infix(_:_:)();
      v47 = *v60;
      (*v60)(v5, v44);
      outlined destroy of FilePath?(v40, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
      v47(v45, v44);
      outlined destroy of FilePath?(v70, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
      v27 = v68;
      v26 = v69;
      v48 = v58;
      v28 = v61;
      if (v46)
      {
        goto LABEL_17;
      }

LABEL_6:
      ++v25;
      outlined destroy of FilePath?(v27, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMd, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMR);
      result = v65;
      if (v64 == v25)
      {
        goto LABEL_14;
      }
    }

    outlined destroy of FilePath?(v40, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
    v29 = v42(v41 + v38, 1, v74);
    v28 = v35;
    v5 = v30;
    v26 = v69;
    if (v29 == 1)
    {
      outlined destroy of FilePath?(v41, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
      v48 = v58;
      v27 = v68;
LABEL_17:

      outlined init with take of (key: CryptexAssetType, value: CryptexAsset)?(v27, v48, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMd, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMR);
      v52 = *(v26 + 48);
      v53 = v62;
      v54 = v59;
      v55 = v74;
      (*(v62 + 32))(v59, v48, v74);
      (*(v53 + 56))(v54, 0, 1, v55);
      v49 = &_s6System8FilePathVSgMd;
      v50 = &_s6System8FilePathVSgMR;
      v51 = v48 + v52;
      return outlined destroy of FilePath?(v51, v49, v50);
    }

    goto LABEL_5;
  }

  return result;
}

uint64_t Cryptex.ungraft(from:)(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v29 - v7;
  v9 = type metadata accessor for FilePath();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  result = (*(*v3 + 256))(a1);
  if (!v2)
  {
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      return outlined destroy of FilePath?(v8, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
    }

    else
    {
      (*(v10 + 32))(v16, v8, v9);
      static APFSAdapter.ungraft(_:)();
      (*(v10 + 16))(v14, v16, v9);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v33 = v32;
        *v20 = 136315394;
        *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v3 + 16), *(v3 + 24), &v33);
        *(v20 + 12) = 2080;
        lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type FilePath and conformance FilePath, MEMORY[0x277D854C0]);
        v31 = v19;
        v21 = dispatch thunk of CustomStringConvertible.description.getter();
        v23 = v22;
        v30 = v18;
        v24 = *(v10 + 8);
        v24(v14, v9);
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v33);

        *(v20 + 14) = v25;
        v26 = v30;
        _os_log_impl(&dword_226120000, v30, v31, "%s ungrafted from %s", v20, 0x16u);
        v27 = v32;
        swift_arrayDestroy();
        MEMORY[0x22AA76E00](v27, -1, -1);
        MEMORY[0x22AA76E00](v20, -1, -1);

        return (v24)(v16, v9);
      }

      else
      {

        v28 = *(v10 + 8);
        v28(v14, v9);
        return (v28)(v16, v9);
      }
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Cryptex.unlinkAssets()()
{
  v1 = v0;
  v86[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v67 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v69 = &v65 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v65 - v8;
  v85 = type metadata accessor for FilePath();
  v10 = *(v85 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v85);
  v77 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v68 = &v65 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v65 - v17;
  v19 = *((*(*v0 + 120))(v16) + 16);

  v21 = 0;
  v22 = v19 + 64;
  v23 = 1 << *(v19 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v19 + 64);
  v26 = (v23 + 63) >> 6;
  v84 = (v10 + 48);
  v80 = (v10 + 32);
  v74 = (v10 + 16);
  v75 = OBJC_IVAR____TtC13CryptexServer7Cryptex_logger;
  v66 = v10;
  v27 = (v10 + 8);
  v28 = v18;
  v83 = v27;
  *&v20 = 136315138;
  v72 = v20;
  v73 = v0;
  v78 = v18;
  v79 = v9;
  v76 = v19;
  if (v25)
  {
    goto LABEL_6;
  }

  while (1)
  {
LABEL_7:
    v29 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
    }

    if (v29 >= v26)
    {
      break;
    }

    v25 = *(v22 + 8 * v29);
    ++v21;
    if (v25)
    {
      while (1)
      {
        v30 = __clz(__rbit64(v25));
        v25 &= v25 - 1;
        v31 = *(*(v19 + 56) + ((v29 << 9) | (8 * v30)));

        dispatch thunk of CryptexAsset.path.getter();
        if ((*v84)(v9, 1, v85) == 1)
        {

          outlined destroy of FilePath?(v9, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
          v21 = v29;
          if (!v25)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v82 = v31;
          v32 = v85;
          (*v80)(v28, v9, v85);
          v33 = v77;
          (*v74)(v77, v28, v32);
          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v70 = v36;
            v71 = swift_slowAlloc();
            v86[0] = v71;
            *v36 = v72;
            v37 = FilePath.string.getter();
            v39 = v38;
            v81 = *v83;
            v81(v33, v85);
            v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, v86);

            v41 = v70;
            *(v70 + 1) = v40;
            v42 = v41;
            _os_log_impl(&dword_226120000, v34, v35, "Deleting %s", v41, 0xCu);
            v43 = v71;
            __swift_destroy_boxed_opaque_existential_0(v71);
            MEMORY[0x22AA76E00](v43, -1, -1);
            MEMORY[0x22AA76E00](v42, -1, -1);
          }

          else
          {

            v81 = *v83;
            v81(v33, v85);
          }

          v44 = [objc_opt_self() defaultManager];
          v28 = v78;
          v45 = FilePath.string.getter();
          v46 = MEMORY[0x22AA76630](v45);

          v86[0] = 0;
          v47 = [v44 removeItemAtPath:v46 error:v86];

          v48 = v86[0];
          v9 = v79;
          if (!v47)
          {
            v63 = v48;
            _convertNSErrorToError(_:)();

            swift_willThrow();

            v81(v28, v85);
            goto LABEL_23;
          }

          v81(v28, v85);

          v21 = v29;
          v1 = v73;
          v19 = v76;
          if (!v25)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v29 = v21;
      }
    }
  }

  v50 = v69;
  (*(*v1 + 192))(v49);
  if ((*v84)(v50, 1, v85) == 1)
  {
    outlined destroy of FilePath?(v50, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  }

  else
  {
    v51 = v68;
    (*v80)(v68, v50, v85);
    v52 = [objc_opt_self() defaultManager];
    v53 = FilePath.string.getter();
    v54 = MEMORY[0x22AA76630](v53);

    v86[0] = 0;
    v55 = [v52 removeItemAtPath:v54 error:v86];

    v56 = v86[0];
    if (v55)
    {
      v57 = v66 + 56;
      v58 = v67;
      v59 = v85;
      (*(v66 + 56))(v67, 1, 1, v85);
      v60 = *(*v1 + 200);
      v61 = v56;
      v60(v58);
      (*(v57 - 48))(v51, v59);
    }

    else
    {
      v62 = v86[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      (*v83)(v51, v85);
    }
  }

LABEL_23:
  v64 = *MEMORY[0x277D85DE8];
}

char *Cryptex.deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 4);

  v3 = *(v0 + 5);

  v4 = OBJC_IVAR____TtC13CryptexServer7Cryptex_logger;
  v5 = type metadata accessor for Logger();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  outlined destroy of FilePath?(&v0[OBJC_IVAR____TtC13CryptexServer7Cryptex_rootDirectory], &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  return v0;
}

uint64_t Cryptex.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 4);

  v3 = *(v0 + 5);

  v4 = OBJC_IVAR____TtC13CryptexServer7Cryptex_logger;
  v5 = type metadata accessor for Logger();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  outlined destroy of FilePath?(&v0[OBJC_IVAR____TtC13CryptexServer7Cryptex_rootDirectory], &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for CryptexAssetType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10CryptexKit0C9AssetTypeOAC0cE0CGMd, &_ss18_DictionaryStorageCy10CryptexKit0C9AssetTypeOAC0cE0CGMR);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType, MEMORY[0x277D02DF8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for CryptexAssetType();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a3 & 1);
    v25 = *v4;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t outlined assign with take of FilePath?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for Cryptex()
{
  result = type metadata singleton initialization cache for Cryptex;
  if (!type metadata singleton initialization cache for Cryptex)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for CryptexAssetType();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v34 = type metadata accessor for CryptexAssetType();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20]();
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10CryptexKit0C9AssetTypeOAC0cE0CGMd, &_ss18_DictionaryStorageCy10CryptexKit0C9AssetTypeOAC0cE0CGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10CryptexKit0C9AssetTypeO_AC0cE0CTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit0A9AssetTypeO_AA0aC0CtMd, &_s10CryptexKit0A9AssetTypeO_AA0aC0CtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10CryptexKit0C9AssetTypeOAC0cE0CGMd, &_ss18_DictionaryStorageCy10CryptexKit0C9AssetTypeOAC0cE0CGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of FilePath?(v10, v6, &_s10CryptexKit0A9AssetTypeO_AA0aC0CtMd, &_s10CryptexKit0A9AssetTypeO_AA0aC0CtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for CryptexAssetType();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t outlined init with take of (key: CryptexAssetType, value: CryptexAsset)?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void type metadata completion function for Cryptex()
{
  v0 = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for FilePath?();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for FilePath?()
{
  if (!lazy cache variable for type metadata for FilePath?)
  {
    type metadata accessor for FilePath();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FilePath?);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t InventoryManager.__allocating_init(persistent:ephemeral:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = a1;
  *(v4 + 120) = a2;
  return v4;
}

uint64_t InventoryManager.init(persistent:ephemeral:)(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return v2;
}

uint64_t InventoryManager.allInventories()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13CryptexServer9InventoryCSgGMd, &_ss23_ContiguousArrayStorageCy13CryptexServer9InventoryCSgGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2261450B0;
  v2 = *(v0 + 120);
  *(v1 + 32) = *(v0 + 112);
  *(v1 + 40) = v2;

  return v1;
}

uint64_t InventoryManager.processAllInventories(closure:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](InventoryManager.processAllInventories(closure:), v2, 0);
}

uint64_t InventoryManager.processAllInventories(closure:)()
{
  result = (*(**(v0 + 32) + 112))();
  *(v0 + 40) = result;
  v2 = *(result + 16);
  *(v0 + 48) = v2;
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 16);
    while (1)
    {
      *(v0 + 56) = v3;
      if (v3 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v5 = *(result + 32 + 8 * v3);
      *(v0 + 64) = v5;
      if (v5)
      {
        break;
      }

      if (v2 == ++v3)
      {
        goto LABEL_6;
      }
    }

    swift_retain_n();
    v10 = (v4 + *v4);
    v7 = v4[1];
    v8 = swift_task_alloc();
    *(v0 + 72) = v8;
    *v8 = v0;
    v8[1] = InventoryManager.processAllInventories(closure:);
    v9 = *(v0 + 24);

    return v10(v5);
  }

  else
  {
LABEL_6:

    v6 = *(v0 + 8);

    return v6();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  v2[10] = v0;

  v5 = v2[4];
  if (v0)
  {
    v6 = v2[5];

    v7 = InventoryManager.processAllInventories(closure:);
  }

  else
  {
    v8 = v2[8];

    v7 = InventoryManager.processAllInventories(closure:);
  }

  return MEMORY[0x2822009F8](v7, v5, 0);
}

{
  v1 = v0[8];

  v3 = v0[7] + 5;
  v4 = 1 - v0[6];
  while (v4 + v3 != 5)
  {
    v0[7] = v3 - 4;
    v5 = v0[5];
    if ((v3 - 4) >= *(v5 + 16))
    {
      __break(1u);
      return result;
    }

    v6 = *(v5 + 8 * v3);
    v0[8] = v6;
    ++v3;
    if (v6)
    {
      v7 = v0[2];
      swift_retain_n();
      v13 = (v7 + *v7);
      v8 = v7[1];
      v9 = swift_task_alloc();
      v0[9] = v9;
      *v9 = v0;
      v9[1] = InventoryManager.processAllInventories(closure:);
      v10 = v0[3];

      return v13(v6);
    }
  }

  v11 = v0[5];

  v12 = v0[1];

  return v12();
}

{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t InventoryManager.start()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](InventoryManager.start(), v0, 0);
}

{
  v1 = *(v0 + 16);
  v2 = *(v1 + 120);
  *(v0 + 24) = v2;
  if (v2)
  {
    v3 = (*v2 + 240) & 0xFFFFFFFFFFFFLL | 0x15AC000000000000;
    *(v0 + 32) = *(*v2 + 240);
    *(v0 + 40) = v3;
    v4 = InventoryManager.start();
    return MEMORY[0x2822009F8](v4, v2, 0);
  }

  *(v0 + 56) = 0;
  v2 = *(v1 + 112);
  *(v0 + 64) = v2;
  if (v2)
  {
    v5 = (*v2 + 240) & 0xFFFFFFFFFFFFLL | 0x15AC000000000000;
    *(v0 + 72) = *(*v2 + 240);
    *(v0 + 80) = v5;
    v4 = InventoryManager.start();
    return MEMORY[0x2822009F8](v4, v2, 0);
  }

  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  (*(v0 + 32))();
  *(v0 + 48) = 0;
  v3 = *(v0 + 16);

  return MEMORY[0x2822009F8](InventoryManager.start(), v3, 0);
}

{
  *(v0 + 56) = *(v0 + 48);
  v1 = *(*(v0 + 16) + 112);
  *(v0 + 64) = v1;
  if (!v1)
  {
    return (*(v0 + 8))();
  }

  v2 = (*v1 + 240) & 0xFFFFFFFFFFFFLL | 0x15AC000000000000;
  *(v0 + 72) = *(*v1 + 240);
  *(v0 + 80) = v2;
  return MEMORY[0x2822009F8](InventoryManager.start(), v1, 0);
}

{
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  (*(v0 + 72))();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t InventoryManager.deinit()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t InventoryManager.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t dispatch thunk of InventoryManager.processAllInventories(closure:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 120);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of InventoryManager.processAllInventories(closure:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of InventoryManager.processAllInventories(closure:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t dispatch thunk of InventoryManager.start()()
{
  v2 = *(*v0 + 128);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of InventoryManager.start();

  return v6();
}

uint64_t VirtualEnvConfig.globalEnvRoot.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FilePath();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t VirtualEnvConfig.init(globalEnvRoot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CryptexError();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (FilePath.isAbsolute.getter())
  {
    v9 = type metadata accessor for FilePath();
    return (*(*(v9 - 8) + 32))(a2, a1, v9);
  }

  else
  {
    (*(v5 + 104))(v8, *MEMORY[0x277D02D48], v4);
    type metadata accessor for CryptexErrorMessage();
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)();
    (*(v5 + 8))(v8, v4);
    swift_willThrow();
    v11 = type metadata accessor for FilePath();
    return (*(*(v11 - 8) + 8))(a1, v11);
  }
}

uint64_t type metadata accessor for VirtualEnvConfig()
{
  result = type metadata singleton initialization cache for VirtualEnvConfig;
  if (!type metadata singleton initialization cache for VirtualEnvConfig)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Server.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13CryptexServer6Server_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t Server.__allocating_init(queue:xpcListener:persistentInventory:ephemeralInventory:clientAuthenticator:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(v5 + 48);
  v11 = *(v5 + 52);
  v12 = swift_allocObject();
  Logger.init(category:)(0x726576726573, 0xE600000000000000);
  *(v12 + OBJC_IVAR____TtC13CryptexServer6Server_xpcListener) = SendableXPCObj.value.getter();
  type metadata accessor for InventoryManager();

  *(v12 + OBJC_IVAR____TtC13CryptexServer6Server_inventoryManager) = InventoryManager.__allocating_init(persistent:ephemeral:)(v13, a4);
  *(v12 + OBJC_IVAR____TtC13CryptexServer6Server_queue) = a1;
  outlined init with copy of FilePath?(a5, &v15, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMd, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMR);
  if (v16)
  {
    outlined destroy of FilePath?(a5, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMd, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMR);

    outlined init with take of BootstrapVirtualEnv.Strategy(&v15, &v17);
  }

  else
  {
    v18 = &type metadata for XPCClientAuthenticator;
    v19 = &protocol witness table for XPCClientAuthenticator;
    XPCClientAuthenticator.init()();

    outlined destroy of FilePath?(a5, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMd, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMR);
    if (v16)
    {
      outlined destroy of FilePath?(&v15, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMd, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMR);
    }
  }

  outlined init with take of BootstrapVirtualEnv.Strategy(&v17, v12 + OBJC_IVAR____TtC13CryptexServer6Server_clientAuthenticator);
  return v12;
}

uint64_t Server.init(queue:xpcListener:persistentInventory:ephemeralInventory:clientAuthenticator:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(category:)(0x726576726573, 0xE600000000000000);
  (*(v12 + 32))(v6 + OBJC_IVAR____TtC13CryptexServer6Server_logger, v15, v11);
  *(v6 + OBJC_IVAR____TtC13CryptexServer6Server_xpcListener) = SendableXPCObj.value.getter();
  type metadata accessor for InventoryManager();

  *(v6 + OBJC_IVAR____TtC13CryptexServer6Server_inventoryManager) = InventoryManager.__allocating_init(persistent:ephemeral:)(v16, a4);
  *(v6 + OBJC_IVAR____TtC13CryptexServer6Server_queue) = a1;
  outlined init with copy of FilePath?(a5, &v20, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMd, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMR);
  if (v21)
  {
    v17 = a1;
    outlined destroy of FilePath?(a5, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMd, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMR);

    outlined init with take of BootstrapVirtualEnv.Strategy(&v20, &v22);
  }

  else
  {
    v23 = &type metadata for XPCClientAuthenticator;
    v24 = &protocol witness table for XPCClientAuthenticator;
    v18 = a1;
    XPCClientAuthenticator.init()();

    outlined destroy of FilePath?(a5, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMd, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMR);
    if (v21)
    {
      outlined destroy of FilePath?(&v20, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMd, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMR);
    }
  }

  outlined init with take of BootstrapVirtualEnv.Strategy(&v22, v6 + OBJC_IVAR____TtC13CryptexServer6Server_clientAuthenticator);
  return v6;
}

uint64_t static Server.createAnonymous(queue:persistentInventory:ephemeralInventory:)(void *a1, uint64_t a2, uint64_t a3)
{
  xpc_connection_create(0, 0);
  v5 = objc_allocWithZone(type metadata accessor for SendableXPCObj());
  swift_unknownObjectRetain();
  v6 = SendableXPCObj.init(_:)();
  v7 = type metadata accessor for Server();
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  Logger.init(category:)(0x726576726573, 0xE600000000000000);
  *(v10 + OBJC_IVAR____TtC13CryptexServer6Server_xpcListener) = SendableXPCObj.value.getter();
  type metadata accessor for InventoryManager();

  *(v10 + OBJC_IVAR____TtC13CryptexServer6Server_inventoryManager) = InventoryManager.__allocating_init(persistent:ephemeral:)(v11, a3);
  *(v10 + OBJC_IVAR____TtC13CryptexServer6Server_queue) = a1;
  outlined init with copy of FilePath?(v20, &v15, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMd, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMR);
  if (v16)
  {
    v12 = a1;
    swift_unknownObjectRelease();

    outlined destroy of FilePath?(v20, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMd, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMR);
    outlined init with take of BootstrapVirtualEnv.Strategy(&v15, &v17);
  }

  else
  {
    v18 = &type metadata for XPCClientAuthenticator;
    v19 = &protocol witness table for XPCClientAuthenticator;
    v13 = a1;
    XPCClientAuthenticator.init()();
    swift_unknownObjectRelease();

    outlined destroy of FilePath?(v20, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMd, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMR);
    if (v16)
    {
      outlined destroy of FilePath?(&v15, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMd, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMR);
    }
  }

  outlined init with take of BootstrapVirtualEnv.Strategy(&v17, v10 + OBJC_IVAR____TtC13CryptexServer6Server_clientAuthenticator);
  return v10;
}

uint64_t type metadata accessor for Server()
{
  result = type metadata singleton initialization cache for Server;
  if (!type metadata singleton initialization cache for Server)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void Server.handle(clientError:)(uint64_t a1)
{
  v2 = XPC_ERROR_CONNECTION_INTERRUPTED.getter();
  swift_unknownObjectRelease();
  if (v2 == a1)
  {
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Client connection interrupted";
LABEL_8:
      _os_log_impl(&dword_226120000, oslog, v4, v6, v5, 2u);
      MEMORY[0x22AA76E00](v5, -1, -1);
    }
  }

  else
  {
    v3 = XPC_ERROR_CONNECTION_INVALID.getter();
    swift_unknownObjectRelease();
    if (v3 != a1)
    {
      return;
    }

    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Client connection invalid";
      goto LABEL_8;
    }
  }
}

uint64_t Server.handle(request:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for CryptexError();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for Cryptex.InstallOptions();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  type metadata accessor for Server();
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type Server and conformance Server, type metadata accessor for Server);
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[13] = v12;
  v3[14] = v11;

  return MEMORY[0x2822009F8](Server.handle(request:), v12, v11);
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for Server();
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type Server and conformance Server, type metadata accessor for Server);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[5] = v5;
  v3[6] = v4;

  return MEMORY[0x2822009F8](Server.handle(request:), v5, v4);
}

uint64_t Server.handle(request:)()
{
  v1 = v0[12];
  v2 = v0[3];
  type metadata accessor for Cryptex();
  v3 = RequestInstall.assets.getter();
  v4 = type metadata accessor for FilePath();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v0[15] = Cryptex.__allocating_init(assets:rootDirectory:)(v3, v1);
  v0[16] = 0;
  v11 = v0[11];
  v12 = v0[8];
  v13 = v0[9];
  v14 = v0[3];
  v15 = v0[4];
  RequestInstall.options.getter();
  v16 = Cryptex.InstallOptions.ephemeral.getter();
  v17 = *(v13 + 8);
  v0[17] = v17;
  v0[18] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v11, v12);
  v18 = 112;
  if (v16)
  {
    v18 = 120;
  }

  v19 = *(*(v15 + OBJC_IVAR____TtC13CryptexServer6Server_inventoryManager) + v18);
  v0[19] = v19;
  if (v19)
  {
    v20 = v0[10];
    v21 = v0[3];

    RequestInstall.options.getter();
    v22 = *v19 + 304;
    v0[20] = *v22;
    v0[21] = v22 & 0xFFFFFFFFFFFFLL | 0x7A20000000000000;

    return MEMORY[0x2822009F8](Server.handle(request:), v19, 0);
  }

  else
  {
    v24 = v0[6];
    v23 = v0[7];
    v25 = v0[5];
    (*(v24 + 104))(v23, *MEMORY[0x277D02D50], v25);
    type metadata accessor for CryptexErrorMessage();
    lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28]);
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)();
    (*(v24 + 8))(v23, v25);
    swift_willThrow();

    v6 = v0[11];
    v5 = v0[12];
    v7 = v0[10];
    v8 = v0[7];

    v9 = v0[1];

    return v9();
  }
}

{
  v1 = *(v0 + 168);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);
  v6 = *(v0 + 80);
  v7 = *(v0 + 64);
  (*(v0 + 160))(*(v0 + 120), v6);
  *(v0 + 176) = v4;
  v5(v6, v7);
  v8 = *(v0 + 104);
  v9 = *(v0 + 112);
  if (v4)
  {
    v10 = Server.handle(request:);
  }

  else
  {
    v10 = Server.handle(request:);
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

{
  v1 = v0[19];
  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v6 = v0[7];
  v7 = v0[2];
  ResponseInstall.init()();

  v8 = v0[1];

  return v8();
}

{
  v1 = v0[19];
  v2 = v0[15];

  v3 = v0[22];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
  v7 = v0[7];

  v8 = v0[1];

  return v8();
}

{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  *(v0 + 80) = 0;
  v3 = *(v1 + OBJC_IVAR____TtC13CryptexServer6Server_inventoryManager);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v0 + 80;
  v5 = *(*v3 + 120);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = Server.handle(request:);

  return v9(&async function pointer to partial apply for closure #1 in Server.handle(request:), v4);
}

{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = v2[5];
    v5 = v2[6];
    v6 = Server.handle(request:);
  }

  else
  {
    v7 = v2[7];

    v4 = v2[5];
    v5 = v2[6];
    v6 = Server.handle(request:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 16);
    ResponseUninstall.init()();
  }

  else
  {
    v3 = type metadata accessor for CryptexError();
    lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, MEMORY[0x277D02DB8]);
    swift_allocError();
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x277D02D68], v3);
    swift_willThrow();
  }

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[7];

  v2 = v0[9];
  v3 = v0[1];

  return v3();
}

{
  v1 = v0[4];
  v0[2] = MEMORY[0x277D84F90];
  v2 = *(v1 + OBJC_IVAR____TtC13CryptexServer6Server_inventoryManager);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v0 + 2;
  v4 = *(*v2 + 120);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = Server.handle(request:);

  return v8(&async function pointer to partial apply for closure #1 in Server.handle(request:), v3);
}

{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = v2[5];
    v5 = v2[6];
    v6 = Server.handle(request:);
  }

  else
  {
    v7 = v2[7];

    v4 = v2[5];
    v5 = v2[6];
    v6 = Server.handle(request:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v1 = v0[2];
  v2 = v0[3];
  ResponseInstalledInfoPlists.init(infoPlistFDs:)();
  v3 = v0[1];

  return v3();
}

{
  v1 = v0[7];

  v2 = v0[2];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

{
  type metadata accessor for Server();
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type Server and conformance Server, type metadata accessor for Server);
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](Server.handle(request:), v1, v0);
}

{
  v1 = type metadata accessor for CryptexError();
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, MEMORY[0x277D02DB8]);
  swift_allocError();
  (*(*(v1 - 8) + 104))(v2, *MEMORY[0x277D02D68], v1);
  swift_willThrow();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t closure #1 in Server.handle(request:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for Cryptex.UninstallOptions();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit0A7VersionVSgMd, &_s10CryptexKit0A7VersionVSgMR) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in Server.handle(request:), 0, 0);
}

uint64_t closure #1 in Server.handle(request:)()
{
  v1 = v0[9];
  v3 = v0[2];
  v2 = v0[3];
  v0[10] = RequestUninstall.identifier.getter();
  v0[11] = v4;
  v5 = type metadata accessor for CryptexVersion();
  v0[12] = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  v0[13] = v7;
  v0[14] = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v7(v1, 1, 1, v5);
  v8 = *v3 + 288;
  v0[15] = *v8;
  v0[16] = v8 & 0xFFFFFFFFFFFFLL | 0xB243000000000000;

  return MEMORY[0x2822009F8](closure #1 in Server.handle(request:), v3, 0);
}

{
  v1 = *(v0 + 128);
  v2 = *(v0 + 72);
  v3 = *(v0 + 16);
  *(v0 + 176) = (*(v0 + 120))(*(v0 + 80), *(v0 + 88), v2) & 1;

  outlined destroy of FilePath?(v2, &_s10CryptexKit0A7VersionVSgMd, &_s10CryptexKit0A7VersionVSgMR);

  return MEMORY[0x2822009F8](closure #1 in Server.handle(request:), 0, 0);
}

{
  if (*(v0 + 176) == 1)
  {
    v2 = *(v0 + 104);
    v1 = *(v0 + 112);
    v3 = *(v0 + 96);
    v5 = *(v0 + 56);
    v4 = *(v0 + 64);
    v6 = *(v0 + 24);
    v7 = *(v0 + 16);
    **(v0 + 32) = 1;
    *(v0 + 136) = RequestUninstall.identifier.getter();
    *(v0 + 144) = v8;
    v2(v4, 1, 1, v3);
    Cryptex.UninstallOptions.init()();
    v9 = *v7 + 296;
    *(v0 + 152) = *v9;
    *(v0 + 160) = v9 & 0xFFFFFFFFFFFFLL | 0x16D3000000000000;

    return MEMORY[0x2822009F8](closure #1 in Server.handle(request:), v7, 0);
  }

  else
  {
    v11 = *(v0 + 64);
    v10 = *(v0 + 72);
    v12 = *(v0 + 56);

    v13 = *(v0 + 8);

    return v13();
  }
}

{
  v1 = *(v0 + 160);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 16);
  (*(v0 + 152))(*(v0 + 136), *(v0 + 144), v2, v3);
  *(v0 + 168) = 0;

  (*(v5 + 8))(v3, v4);
  outlined destroy of FilePath?(v2, &_s10CryptexKit0A7VersionVSgMd, &_s10CryptexKit0A7VersionVSgMR);
  v8 = *(v0 + 64);
  v7 = *(v0 + 72);
  v9 = *(v0 + 56);

  v10 = *(v0 + 8);

  return v10();
}

{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[21];

  return v4();
}

{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  *(v0 + 48) = (*(v0 + 32))();

  return MEMORY[0x2822009F8](closure #1 in Server.handle(request:), 0, 0);
}

{
  v1 = v0[3];
  specialized Array.append<A>(contentsOf:)(v0[6]);
  v2 = v0[1];

  return v2();
}

uint64_t Server.handle(request:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  type metadata accessor for Server();
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type Server and conformance Server, type metadata accessor for Server);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](Server.handle(request:), v4, v3);
}

uint64_t closure #1 in Server.handle(request:)(void *a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *a1 + 312;
  v2[4] = *v3;
  v2[5] = v3 & 0xFFFFFFFFFFFFLL | 0x3917000000000000;
  return MEMORY[0x2822009F8](closure #1 in Server.handle(request:), a1, 0);
}

uint64_t Server.handle(anyRequest:)(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = type metadata accessor for CryptexError();
  v3[25] = v4;
  v5 = *(v4 - 8);
  v3[26] = v5;
  v6 = *(v5 + 64) + 15;
  v3[27] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit16RequestUninstallVSgMd, &_s10CryptexKit16RequestUninstallVSgMR) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v8 = type metadata accessor for RequestUninstall();
  v3[29] = v8;
  v9 = *(v8 - 8);
  v3[30] = v9;
  v10 = *(v9 + 64) + 15;
  v3[31] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit16RequestTestErrorVSgMd, &_s10CryptexKit16RequestTestErrorVSgMR) - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v12 = type metadata accessor for RequestTestError();
  v3[33] = v12;
  v13 = *(v12 - 8);
  v3[34] = v13;
  v14 = *(v13 + 64) + 15;
  v3[35] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit14RequestInstallVSgMd, &_s10CryptexKit14RequestInstallVSgMR) - 8) + 64) + 15;
  v3[36] = swift_task_alloc();
  v16 = type metadata accessor for RequestInstall();
  v3[37] = v16;
  v17 = *(v16 - 8);
  v3[38] = v17;
  v18 = *(v17 + 64) + 15;
  v3[39] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit26RequestInstalledInfoPlistsVSgMd, &_s10CryptexKit26RequestInstalledInfoPlistsVSgMR) - 8) + 64) + 15;
  v3[40] = swift_task_alloc();
  v20 = type metadata accessor for RequestInstalledInfoPlists();
  v3[41] = v20;
  v21 = *(v20 - 8);
  v3[42] = v21;
  v22 = *(v21 + 64) + 15;
  v3[43] = swift_task_alloc();
  type metadata accessor for Server();
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type Server and conformance Server, type metadata accessor for Server);
  v24 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[44] = v24;
  v3[45] = v23;

  return MEMORY[0x2822009F8](Server.handle(anyRequest:), v24, v23);
}

uint64_t Server.handle(anyRequest:)()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[40];
  outlined init with copy of AssetAuthenticatorProtocol(v0[23], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit7Request_pMd, &_s10CryptexKit7Request_pMR);
  v4 = swift_dynamicCast();
  v5 = *(v2 + 56);
  if (v4)
  {
    v7 = v0[42];
    v6 = v0[43];
    v9 = v0[40];
    v8 = v0[41];
    v10 = v0[24];
    v11 = v0[22];
    v5(v9, 0, 1, v8);
    (*(v7 + 32))(v6, v9, v8);
    v12 = *(*v10 + 160);
    v13 = type metadata accessor for ResponseInstalledInfoPlists();
    v14 = MEMORY[0x277D02E38];
    v11[3] = v13;
    v11[4] = v14;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
    v99 = (v12 + *v12);
    v16 = v12[1];
    v17 = swift_task_alloc();
    v0[46] = v17;
    *v17 = v0;
    v17[1] = Server.handle(anyRequest:);
    v18 = v0[43];
    v19 = v0[24];
    v20 = boxed_opaque_existential_1;
    v21 = v99;

    return v21(v20, v18);
  }

  v22 = v0[40];
  v23 = v0[37];
  v24 = v0[38];
  v25 = v0[36];
  v26 = v0[23];
  v5(v22, 1, 1, v0[41]);
  outlined destroy of FilePath?(v22, &_s10CryptexKit26RequestInstalledInfoPlistsVSgMd, &_s10CryptexKit26RequestInstalledInfoPlistsVSgMR);
  outlined init with copy of AssetAuthenticatorProtocol(v26, (v0 + 7));
  v27 = swift_dynamicCast();
  v28 = *(v24 + 56);
  if (v27)
  {
    v30 = v0[38];
    v29 = v0[39];
    v32 = v0[36];
    v31 = v0[37];
    v33 = v0[24];
    v34 = v0[22];
    v28(v32, 0, 1, v31);
    (*(v30 + 32))(v29, v32, v31);
    v35 = *(*v33 + 144);
    v36 = type metadata accessor for ResponseInstall();
    v37 = MEMORY[0x277D02E20];
    v34[3] = v36;
    v34[4] = v37;
    v38 = __swift_allocate_boxed_opaque_existential_1(v34);
    v100 = (v35 + *v35);
    v39 = v35[1];
    v40 = swift_task_alloc();
    v0[48] = v40;
    *v40 = v0;
    v40[1] = Server.handle(anyRequest:);
    v18 = v0[39];
    v41 = v0[24];
    v20 = v38;
    v21 = v100;

    return v21(v20, v18);
  }

  v42 = v0[36];
  v43 = v0[33];
  v44 = v0[34];
  v45 = v0[32];
  v46 = v0[23];
  v28(v42, 1, 1, v0[37]);
  outlined destroy of FilePath?(v42, &_s10CryptexKit14RequestInstallVSgMd, &_s10CryptexKit14RequestInstallVSgMR);
  outlined init with copy of AssetAuthenticatorProtocol(v46, (v0 + 12));
  v47 = swift_dynamicCast();
  v48 = *(v44 + 56);
  if (v47)
  {
    v50 = v0[34];
    v49 = v0[35];
    v52 = v0[32];
    v51 = v0[33];
    v53 = v0[24];
    v54 = v0[22];
    v48(v52, 0, 1, v51);
    (*(v50 + 32))(v49, v52, v51);
    v55 = *(*v53 + 168);
    v56 = type metadata accessor for ResponseTestError();
    v57 = MEMORY[0x277D02E28];
    v54[3] = v56;
    v54[4] = v57;
    v58 = __swift_allocate_boxed_opaque_existential_1(v54);
    v101 = (v55 + *v55);
    v59 = v55[1];
    v60 = swift_task_alloc();
    v0[50] = v60;
    *v60 = v0;
    v60[1] = Server.handle(anyRequest:);
    v18 = v0[35];
    v61 = v0[24];
    v20 = v58;
    v21 = v101;

    return v21(v20, v18);
  }

  v62 = v0[32];
  v63 = v0[29];
  v64 = v0[30];
  v65 = v0[28];
  v66 = v0[23];
  v48(v62, 1, 1, v0[33]);
  outlined destroy of FilePath?(v62, &_s10CryptexKit16RequestTestErrorVSgMd, &_s10CryptexKit16RequestTestErrorVSgMR);
  outlined init with copy of AssetAuthenticatorProtocol(v66, (v0 + 17));
  v67 = swift_dynamicCast();
  v68 = *(v64 + 56);
  if (v67)
  {
    v70 = v0[30];
    v69 = v0[31];
    v72 = v0[28];
    v71 = v0[29];
    v73 = v0[24];
    v74 = v0[22];
    v68(v72, 0, 1, v71);
    (*(v70 + 32))(v69, v72, v71);
    v75 = *(*v73 + 152);
    v76 = type metadata accessor for ResponseUninstall();
    v77 = MEMORY[0x277D02E30];
    v74[3] = v76;
    v74[4] = v77;
    v78 = __swift_allocate_boxed_opaque_existential_1(v74);
    v102 = (v75 + *v75);
    v79 = v75[1];
    v80 = swift_task_alloc();
    v0[52] = v80;
    *v80 = v0;
    v80[1] = Server.handle(anyRequest:);
    v18 = v0[31];
    v81 = v0[24];
    v20 = v78;
    v21 = v102;

    return v21(v20, v18);
  }

  v83 = v0[28];
  v85 = v0[26];
  v84 = v0[27];
  v86 = v0[25];
  v87 = v0[23];
  v68(v83, 1, 1, v0[29]);
  outlined destroy of FilePath?(v83, &_s10CryptexKit16RequestUninstallVSgMd, &_s10CryptexKit16RequestUninstallVSgMR);
  (*(v85 + 104))(v84, *MEMORY[0x277D02D48], v86);
  _StringGuts.grow(_:)(47);

  __swift_project_boxed_opaque_existential_1(v87, v87[3]);
  swift_getDynamicType();
  v88 = _typeName(_:qualified:)();
  MEMORY[0x22AA76680](v88);

  MEMORY[0x22AA76680](0xD000000000000013, 0x8000000226145E20);
  type metadata accessor for CryptexErrorMessage();
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28]);
  swift_allocError();
  static CryptexError.error(_:_:file:function:lineNumber:)();

  (*(v85 + 8))(v84, v86);
  swift_willThrow();
  v89 = v0[43];
  v91 = v0[39];
  v90 = v0[40];
  v93 = v0[35];
  v92 = v0[36];
  v95 = v0[31];
  v94 = v0[32];
  v97 = v0[27];
  v96 = v0[28];

  v98 = v0[1];

  return v98();
}

{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *v1;
  *(*v1 + 376) = v0;

  v5 = *(v2 + 360);
  v6 = *(v2 + 352);
  if (v0)
  {
    v7 = Server.handle(anyRequest:);
  }

  else
  {
    v7 = Server.handle(anyRequest:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v1 = v0[40];
  v2 = v0[39];
  v4 = v0[35];
  v3 = v0[36];
  v6 = v0[31];
  v5 = v0[32];
  v8 = v0[27];
  v7 = v0[28];
  (*(v0[42] + 8))(v0[43], v0[41]);

  v9 = v0[1];

  return v9();
}

{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *v1;
  *(*v1 + 392) = v0;

  v5 = *(v2 + 360);
  v6 = *(v2 + 352);
  if (v0)
  {
    v7 = Server.handle(anyRequest:);
  }

  else
  {
    v7 = Server.handle(anyRequest:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v1 = v0[43];
  v2 = v0[40];
  v4 = v0[35];
  v3 = v0[36];
  v6 = v0[31];
  v5 = v0[32];
  v8 = v0[27];
  v7 = v0[28];
  (*(v0[38] + 8))(v0[39], v0[37]);

  v9 = v0[1];

  return v9();
}

{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v4 = *v1;
  *(*v1 + 408) = v0;

  v5 = *(v2 + 360);
  v6 = *(v2 + 352);
  if (v0)
  {
    v7 = Server.handle(anyRequest:);
  }

  else
  {
    v7 = Server.handle(anyRequest:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v1 = v0[43];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[36];
  v6 = v0[31];
  v5 = v0[32];
  v8 = v0[27];
  v7 = v0[28];
  (*(v0[34] + 8))(v0[35], v0[33]);

  v9 = v0[1];

  return v9();
}

{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v4 = *v1;
  *(*v1 + 424) = v0;

  v5 = *(v2 + 360);
  v6 = *(v2 + 352);
  if (v0)
  {
    v7 = Server.handle(anyRequest:);
  }

  else
  {
    v7 = Server.handle(anyRequest:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v1 = v0[43];
  v3 = v0[39];
  v2 = v0[40];
  v5 = v0[35];
  v4 = v0[36];
  v6 = v0[32];
  v8 = v0[27];
  v7 = v0[28];
  (*(v0[30] + 8))(v0[31], v0[29]);

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[22];
  (*(v0[42] + 8))(v0[43], v0[41]);
  __swift_deallocate_boxed_opaque_existential_1(v1);
  v2 = v0[47];
  v3 = v0[43];
  v5 = v0[39];
  v4 = v0[40];
  v7 = v0[35];
  v6 = v0[36];
  v9 = v0[31];
  v8 = v0[32];
  v11 = v0[27];
  v10 = v0[28];

  v12 = v0[1];

  return v12();
}

{
  v1 = v0[22];
  (*(v0[38] + 8))(v0[39], v0[37]);
  __swift_deallocate_boxed_opaque_existential_1(v1);
  v2 = v0[49];
  v3 = v0[43];
  v5 = v0[39];
  v4 = v0[40];
  v7 = v0[35];
  v6 = v0[36];
  v9 = v0[31];
  v8 = v0[32];
  v11 = v0[27];
  v10 = v0[28];

  v12 = v0[1];

  return v12();
}

{
  v1 = v0[22];
  (*(v0[34] + 8))(v0[35], v0[33]);
  __swift_deallocate_boxed_opaque_existential_1(v1);
  v2 = v0[51];
  v3 = v0[43];
  v5 = v0[39];
  v4 = v0[40];
  v7 = v0[35];
  v6 = v0[36];
  v9 = v0[31];
  v8 = v0[32];
  v11 = v0[27];
  v10 = v0[28];

  v12 = v0[1];

  return v12();
}

{
  v1 = v0[22];
  (*(v0[30] + 8))(v0[31], v0[29]);
  __swift_deallocate_boxed_opaque_existential_1(v1);
  v2 = v0[53];
  v3 = v0[43];
  v5 = v0[39];
  v4 = v0[40];
  v7 = v0[35];
  v6 = v0[36];
  v9 = v0[31];
  v8 = v0[32];
  v11 = v0[27];
  v10 = v0[28];

  v12 = v0[1];

  return v12();
}