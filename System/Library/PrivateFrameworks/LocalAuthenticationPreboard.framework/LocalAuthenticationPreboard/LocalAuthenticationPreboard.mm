uint64_t sub_2560DF458()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

__CFString *NSStringFromLAPreboardUseCase(uint64_t a1)
{
  if ((a1 + 1) > 5)
  {
    return @"Unknown case";
  }

  else
  {
    return off_279820D70[a1 + 1];
  }
}

uint64_t static LocalizedStrings.confirmationAlertEnableBatchMessage(items:)(uint64_t a1)
{
  _StringGuts.grow(_:)(42);

  *&v32 = 0xD000000000000028;
  *(&v32 + 1) = 0x80000002560E4850;
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  *&v29 = v4;
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x259C59FE0](v5);

  v24 = v32;
  if (v3)
  {
    if (a1 < 0)
    {
      v20 = a1;
    }

    else
    {
      v20 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v6 = MEMORY[0x259C5A140](v20);
    if (v6)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_5:
      v7 = 0;
      v25 = a1 & 0xC000000000000001;
      v8 = MEMORY[0x277D84F90];
      v9 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v25)
        {
          v10 = MEMORY[0x259C5A0B0](v7, a1);
          v3 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_30;
          }
        }

        else
        {
          v2 = *(v9 + 16);
          if (v7 >= v2)
          {
            goto LABEL_31;
          }

          v10 = *(a1 + 8 * v7 + 32);
          v3 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            if (a1 < 0)
            {
              v23 = a1;
            }

            else
            {
              v23 = v2;
            }

            v4 = MEMORY[0x259C5A140](v23);
            goto LABEL_3;
          }
        }

        v11 = a1;
        v12 = v10;
        v13 = [v12 title];
        if (!v13)
        {
          break;
        }

        v14 = v13;
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        if (!v17)
        {
          goto LABEL_15;
        }

        v27 = MEMORY[0x277D837D0];
        v28 = lazy protocol witness table accessor for type String and conformance String();
        *&v26 = v15;
        *(&v26 + 1) = v17;
        outlined init with take of CVarArg(&v26, &v32);
LABEL_16:
        v29 = v32;
        v30 = v33;
        v31 = v34;

        if (*(&v30 + 1))
        {
          outlined init with take of CVarArg(&v29, &v32);
          outlined init with take of CVarArg(&v32, &v29);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
          }

          v19 = v8[2];
          v18 = v8[3];
          if (v19 >= v18 >> 1)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v8);
          }

          v8[2] = v19 + 1;
          outlined init with take of CVarArg(&v29, &v8[5 * v19 + 4]);
        }

        else
        {
          outlined destroy of CVarArg?(&v29);
        }

        a1 = v11;
        ++v7;
        if (v3 == v6)
        {
          goto LABEL_29;
        }
      }

LABEL_15:
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      goto LABEL_16;
    }
  }

LABEL_29:
  v21 = specialized static LocalizedStrings.localizedString(tableSuffix:key:_:)(v24, *(&v24 + 1));

  return v21;
}

uint64_t static LocalizedStrings.confirmationAlertInstallProfileMessage(teamName:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2560E4480;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  v5 = specialized static LocalizedStrings.localizedString(tableSuffix:key:_:)(0xD00000000000002ALL, 0x80000002560E4910);

  return v5;
}

uint64_t static LocalizedStrings.installProfileMessage(teamName:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2560E4480;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  v5 = specialized static LocalizedStrings.localizedString(tableSuffix:key:_:)(0xD000000000000017, 0x80000002560E4A00);

  return v5;
}

id one-time initialization function for current()
{
  type metadata accessor for NSBundle.Sentinel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  static NSBundle.current = result;
  return result;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t specialized static LocalizedStrings.localizedString(tableSuffix:key:)(uint64_t a1, void *a2)
{
  MEMORY[0x259C59FE0](0, 0xE000000000000000);

  if (one-time initialization token for current != -1)
  {
    swift_once();
  }

  v4 = static NSBundle.current;
  v10._object = 0xE000000000000000;
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v6.value._object = 0xEB00000000656C62;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v10)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t outlined destroy of CVarArg?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pSgMd, &_ss7CVarArg_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t outlined init with take of CVarArg(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
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

uint64_t specialized static LocalizedStrings.localizedString(tableSuffix:key:_:)(uint64_t a1, void *a2)
{
  MEMORY[0x259C59FE0](0, 0xE000000000000000);

  if (one-time initialization token for current != -1)
  {
    swift_once();
  }

  v4 = static NSBundle.current;
  v10._object = 0xE000000000000000;
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v6.value._object = 0xEB00000000656C62;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v10);

  v8 = String.init(format:arguments:)();

  return v8;
}

uint64_t static LAPreboard.newInstance(globalDomain:)(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LACLog.preboard.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v41[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x80000002560E4C50, v41);
    _os_log_impl(&dword_2560DE000, v7, v8, "%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x259C5A510](v10, -1, -1);
    MEMORY[0x259C5A510](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  outlined init with copy of Any(a1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23LACGlobalDomainPreboard_pMd, _sSo23LACGlobalDomainPreboard_pMR);
  if (swift_dynamicCast())
  {
    v11 = [objc_allocWithZone(MEMORY[0x277D240E0]) initWithBypassEntitlementChecks_];
    v12 = [objc_allocWithZone(MEMORY[0x277D240D8]) initWithConfig_];

    v13 = objc_opt_self();
    v14 = v12;
    v15 = [v13 sharedInstance];
    v16 = objc_allocWithZone(type metadata accessor for LACPreboardStorage());
    v17 = LACPreboardStorage.init(secureStorage:sysUtility:)();
    v18 = type metadata accessor for LACPreboardACMContextProviderFactory();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    LACPreboardACMContextProviderFactory.init()();
    v21 = [objc_allocWithZone(type metadata accessor for LAPreboard.LifecycleManagerMock()) init];
    v22 = [objc_allocWithZone(MEMORY[0x277D240C8]) initWithLifecycleManager_];

    v41[3] = type metadata accessor for LACPreboardLauncher();
    v41[4] = MEMORY[0x277D23E00];
    v41[0] = v22;
    v23 = type metadata accessor for LACPreboardPasscodeVerifier();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    v26 = LACPreboardPasscodeVerifier.init()();
    v40[13] = v23;
    v40[14] = MEMORY[0x277D23DF8];
    v40[10] = v26;
    v27 = type metadata accessor for LACPreboardUPPManager();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    v30 = v17;
    v31 = LACPreboardUPPManager.init(storage:)();
    v40[8] = v27;
    v40[9] = MEMORY[0x277D23DE8];
    v40[5] = v31;
    v32 = type metadata accessor for LACPreboardUseCaseProvider();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    swift_unknownObjectRetain();
    v35 = LACPreboardUseCaseProvider.init(globalDomain:)();
    v40[3] = v32;
    v40[4] = MEMORY[0x277D23DF0];
    v40[0] = v35;
    v36 = objc_allocWithZone(type metadata accessor for LACPreboardController());
    v37 = LACPreboardController.init(contextProviderFactory:launcher:passcodeVerifier:storage:uppManager:useCaseProvider:)();
    v38 = [objc_allocWithZone(LAPreboard) initWithController_];
    swift_unknownObjectRelease();

    return v38;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
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

unint64_t type metadata accessor for LACPreboardLauncher()
{
  result = lazy cache variable for type metadata for LACPreboardLauncher;
  if (!lazy cache variable for type metadata for LACPreboardLauncher)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LACPreboardLauncher);
  }

  return result;
}

id LAPreboard.LifecycleManagerMock.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LAPreboard.LifecycleManagerMock();
  return objc_msgSendSuper2(&v2, sel_dealloc);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, "z\v");
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, "z\v");
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo22LACPreboardBatchOptionaGMd, &_ss23_ContiguousArrayStorageCySo22LACPreboardBatchOptionaGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
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

uint64_t LAPreboardItem.iconSystemName.getter()
{
  v1 = *(v0 + OBJC_IVAR___LAPreboardItem_iconSystemName);
  v2 = *(v0 + OBJC_IVAR___LAPreboardItem_iconSystemName + 8);

  return v1;
}

id @objc LAPreboardItem.iconSystemName.getter(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v3[1];

    v7 = MEMORY[0x259C59FB0](v5, v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t LAPreboardItem.title.getter()
{
  v1 = *(v0 + OBJC_IVAR___LAPreboardItem_title);
  v2 = *(v0 + OBJC_IVAR___LAPreboardItem_title + 8);

  return v1;
}

id LAPreboardItem.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id LAPreboardItem.init(batchOption:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithBatchOption_];
}

void LAPreboardItem.init(batchOption:)()
{
  _StringGuts.grow(_:)(24);
  MEMORY[0x259C59FE0](0xD000000000000016, 0x80000002560E4D90);
  type metadata accessor for LACPreboardBatchOption();
  _print_unlocked<A, B>(_:_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void type metadata accessor for LACPreboardBatchOption()
{
  if (!lazy cache variable for type metadata for LACPreboardBatchOption)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for LACPreboardBatchOption);
    }
  }
}

unint64_t type metadata accessor for LAPreboardItem()
{
  result = lazy cache variable for type metadata for LAPreboardItem;
  if (!lazy cache variable for type metadata for LAPreboardItem)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LAPreboardItem);
  }

  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance LACPreboardBatchOption(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x259C5A040](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance LACPreboardBatchOption(uint64_t a1, uint64_t a2)
{
  v3 = static Int._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance LACPreboardBatchOption@<X0>(uint64_t *a1@<X8>)
{
  result = static Int._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance LACPreboardBatchOption@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance LACPreboardBatchOption()
{
  v2 = *v0;
  lazy protocol witness table accessor for type LACPreboardBatchOption and conformance LACPreboardBatchOption(&lazy protocol witness table cache variable for type LACPreboardBatchOption and conformance LACPreboardBatchOption);
  lazy protocol witness table accessor for type LACPreboardBatchOption and conformance LACPreboardBatchOption(&lazy protocol witness table cache variable for type LACPreboardBatchOption and conformance LACPreboardBatchOption);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t lazy protocol witness table accessor for type LACPreboardBatchOption and conformance LACPreboardBatchOption(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LACPreboardBatchOption();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id LAPreboard.init(defaults:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 initWithDefaults];
}

{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D240E0]) initWithBypassEntitlementChecks_];
  v3 = [objc_allocWithZone(MEMORY[0x277D240D8]) initWithConfig_];

  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 sharedInstance];
  v7 = objc_allocWithZone(type metadata accessor for LACPreboardStorage());
  v8 = LACPreboardStorage.init(secureStorage:sysUtility:)();
  v9 = type metadata accessor for LACPreboardACMContextProviderFactory();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  LACPreboardACMContextProviderFactory.init()();
  v12 = [objc_opt_self() sharedInstance];
  [objc_allocWithZone(MEMORY[0x277D240C8]) initWithLifecycleManager_];

  type metadata accessor for LACPreboardLauncher(0, &lazy cache variable for type metadata for LACPreboardLauncher, 0x277D240C8);
  v13 = type metadata accessor for LACPreboardPasscodeVerifier();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  LACPreboardPasscodeVerifier.init()();
  v16 = type metadata accessor for LACPreboardUPPManager();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = v8;
  LACPreboardUPPManager.init(storage:)();
  v20 = [objc_opt_self() sharedInstance];
  v21 = type metadata accessor for LACPreboardUseCaseProvider();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v28 = LACPreboardUseCaseProvider.init(globalDomain:)();
  v24 = objc_allocWithZone(type metadata accessor for LACPreboardController());
  v25 = LACPreboardController.init(contextProviderFactory:launcher:passcodeVerifier:storage:uppManager:useCaseProvider:)();
  v26 = [v1 initWithController_];

  return v26;
}

unint64_t LAPreboard.iconSystemName.getter()
{
  v1 = [v0 useCase];
  v2 = 1918985575;
  if (v1 != 3)
  {
    v2 = 0;
  }

  if (v1 == 4)
  {
    return 0xD000000000000034;
  }

  else
  {
    return v2;
  }
}

char *LAPreboard.items.getter()
{
  v1 = [objc_msgSend(v0 controller)];
  swift_unknownObjectRelease();
  type metadata accessor for LACPreboardLauncher(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x259C5A140](v17))
  {
    v4 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x259C5A0B0](v5, v2);
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v6 integerValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
      }

      v11 = *(v4 + 2);
      v10 = *(v4 + 3);
      if (v11 >= v10 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v4);
      }

      *(v4 + 2) = v11 + 1;
      *&v4[8 * v11 + 32] = v9;
      ++v5;
      if (v8 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    if (v2 < 0)
    {
      v17 = v2;
    }

    else
    {
      v17 = v2 & 0xFFFFFFFFFFFFFF8;
    }
  }

LABEL_16:

  v18 = v4;

  specialized MutableCollection<>.sort(by:)(&v18);

  v12 = v18;
  v13 = *(v18 + 2);
  if (v13)
  {
    v18 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v14 = 32;
    do
    {
      [objc_allocWithZone(LAPreboardItem) initWithBatchOption_];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v15 = *(v18 + 2);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v14 += 8;
      --v13;
    }

    while (v13);

    return v18;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

uint64_t type metadata accessor for LACPreboardLauncher(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

Swift::String __swiftcall LAPreboard.actionTitle(withHomeButton:)(Swift::Bool withHomeButton)
{
  [v1 useCase];
  if (withHomeButton)
  {

    v3 = static LocalizedStrings.pressHomeToContinue.getter();
  }

  else
  {

    v3 = static LocalizedStrings.swipeUpToContinue.getter();
  }

  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

id @objc LAPreboard.message.getter(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  if (v7)
  {
    v8 = MEMORY[0x259C59FB0](v5, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t LAPreboard.message.getter(uint64_t (*a1)(uint64_t, unint64_t), uint64_t (*a2)(void))
{
  v5 = [v2 useCase];
  if (v5 == 4)
  {
    return a2();
  }

  if (v5 != 3)
  {
    return 0;
  }

  v6 = [objc_msgSend(v2 controller)];
  swift_unknownObjectRelease();
  if (v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  v11 = a1(v7, v9);

  return v11;
}

uint64_t LAPreboard.passcodeTitle.getter()
{
  [v0 useCase];

  return static LocalizedStrings.enterPasscode.getter();
}

id @objc LAPreboard.title.getter(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v6 = a1;
  v7 = [v6 useCase];
  if (v7 == -1)
  {
    goto LABEL_5;
  }

  if (v7 == 4)
  {
    v8 = a4();
    goto LABEL_7;
  }

  if (v7 != 3)
  {
LABEL_5:

    v10 = 0;
    goto LABEL_8;
  }

  v8 = a3();
LABEL_7:
  v11 = v8;
  v12 = v9;

  v13 = MEMORY[0x259C59FB0](v11, v12);

  v10 = v13;
LABEL_8:

  return v10;
}

uint64_t LAPreboard.title.getter(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v5 = [v2 useCase];
  if (v5 == 4)
  {
    return a2();
  }

  if (v5 == 3)
  {
    return a1();
  }

  return 0;
}

id LAPreboard.isRequired.getter()
{
  v1 = [objc_msgSend(v0 controller)];
  swift_unknownObjectRelease();
  return v1;
}

id LAPreboard.useCase.getter()
{
  v1 = [objc_msgSend(v0 controller)];
  swift_unknownObjectRelease();
  return v1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LAPreboard.launch()()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v1 = [objc_msgSend(v0 controller)];
  swift_unknownObjectRelease();
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void LAPreboard.setEnvironmentVariableWithPasscode(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x259C59FB0]();
  v9[4] = a3;
  v9[5] = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v9[3] = &block_descriptor_3;
  v8 = _Block_copy(v9);

  [v4 enableCurrentUseCaseWithPasscode:v7 completion:v8];
  _Block_release(v8);
}

void LAPreboard.enableCurrentUseCase(withPasscode:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = [v4 controller];
  v10 = MEMORY[0x259C59FB0](a1, a2);
  v12[4] = a3;
  v12[5] = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v12[3] = &block_descriptor_6;
  v11 = _Block_copy(v12);

  [v9 enableCurrentUseCaseWithPasscode:v10 completion:v11];
  _Block_release(v11);
  swift_unknownObjectRelease();
}

uint64_t LAPreboard.launch(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v9 = [v4 controller];
  v12[4] = a1;
  v12[5] = a2;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v12[3] = a3;
  v10 = _Block_copy(v12);

  [v9 *a4];
  _Block_release(v10);
  return swift_unknownObjectRelease();
}

uint64_t @objc LAPreboard.launch(completion:)(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a1;
  v14 = [v13 controller];
  v17[4] = a5;
  v17[5] = v12;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v17[3] = a6;
  v15 = _Block_copy(v17);

  [v14 *a7];

  _Block_release(v15);
  return swift_unknownObjectRelease();
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (*v13 < v11)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      type metadata accessor for LACPreboardBatchOption();
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

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v11 >= v10) ^ (v13 < v14);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v11 < v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v11 < v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (*v26 < v24)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v4 >= *v6)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*v17 >= v21)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo22LACPreboardBatchOptionaGMd, &_ss23_ContiguousArrayStorageCySo22LACPreboardBatchOptionaGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = MEMORY[0x28211C320](_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}