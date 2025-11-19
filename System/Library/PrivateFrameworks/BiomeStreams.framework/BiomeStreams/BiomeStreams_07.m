uint64_t static UnifiedLibrary.Library.databaseResourceIdentifier(legacyViewName:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for lockedLibraries != -1)
  {
LABEL_10:
    swift_once();
  }

  v4 = static UnifiedLibrary.Library.lockedLibraries;

  os_unfair_lock_lock(v4 + 6);
  v5 = *&v4[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v4 + 6);

  v6 = v5 + 40;
  v7 = -*(v5 + 16);
  v8 = -1;
  while (v7 + v8 != -1)
  {
    if (++v8 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_10;
    }

    v9 = v6 + 16;
    v10 = *(v6 - 8);
    v11 = (*(*v6 + 72))(a1, a2);
    v6 = v9;
    if (v12)
    {
      v13 = v11;

      return v13;
    }
  }

  return 0;
}

id thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@owned String?)(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = v2(v3, v5);
  v8 = v7;

  if (v8)
  {
    v9 = MEMORY[0x1865F6160](v6, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t static UnifiedLibrary.Library.streamIdentifier(legacyStreamName:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for lockedLibraries != -1)
  {
LABEL_10:
    swift_once();
  }

  v4 = static UnifiedLibrary.Library.lockedLibraries;

  os_unfair_lock_lock(v4 + 6);
  v5 = *&v4[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v4 + 6);

  v6 = v5 + 40;
  v7 = -*(v5 + 16);
  v8 = -1;
  while (v7 + v8 != -1)
  {
    if (++v8 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_10;
    }

    v9 = v6 + 16;
    v10 = *(v6 - 8);
    v11 = (*(*v6 + 88))(a1, a2);
    v6 = v9;
    if (v12)
    {
      v13 = v11;

      return v13;
    }
  }

  return 0;
}

uint64_t static UnifiedLibrary.Library.streamIdentifier(uuidString:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for lockedLibraries != -1)
  {
LABEL_10:
    swift_once();
  }

  v4 = static UnifiedLibrary.Library.lockedLibraries;

  os_unfair_lock_lock(v4 + 6);
  v5 = *&v4[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v4 + 6);

  v6 = v5 + 40;
  v7 = -*(v5 + 16);
  v8 = -1;
  while (v7 + v8 != -1)
  {
    if (++v8 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_10;
    }

    v9 = v6 + 16;
    v10 = *(v6 - 8);
    v11 = (*(*v6 + 96))(a1, a2);
    v6 = v9;
    if (v12)
    {
      v13 = v11;

      return v13;
    }
  }

  return 0;
}

uint64_t static UnifiedLibrary.set(libraries:)(uint64_t a1)
{
  if (one-time initialization token for initializedLibrary != -1)
  {
    OUTLINED_FUNCTION_13_0();
  }

  return static UnifiedLibrary.Library.set(libraries:)(a1);
}

uint64_t static UnifiedLibrary.Library.set(libraries:)(uint64_t a1)
{
  if (one-time initialization token for lockedLibraries != -1)
  {
    a1 = swift_once();
  }

  v1 = static UnifiedLibrary.Library.lockedLibraries;
  MEMORY[0x1EEE9AC00](a1);

  os_unfair_lock_lock(v1 + 6);
  partial apply for closure #1 in static UnifiedLibrary.Library.set(libraries:)(v1 + 2);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t static UnifiedLibrary.set(streamsBaseOverride:)(uint64_t a1)
{
  if (one-time initialization token for initializedLibrary != -1)
  {
    OUTLINED_FUNCTION_13_0();
  }

  outlined init with copy of Aggregation(a1, v5);
  v2 = swift_allocObject();
  outlined init with take of Aggregation(v5, v2 + 16);
  static UnifiedLibrary.Library.bmLibraryStreamBasesFunc.setter(partial apply for closure #1 in static UnifiedLibrary.set(streamsBaseOverride:));
  outlined init with copy of Aggregation(a1, v5);
  v3 = swift_allocObject();
  outlined init with take of Aggregation(v5, v3 + 16);
  return static UnifiedLibrary.Library.bmLibraryStreamBaseFunc.setter(partial apply for closure #2 in static UnifiedLibrary.set(streamsBaseOverride:));
}

id closure #2 in static UnifiedLibrary.set(streamsBaseOverride:)(uint64_t a1, void *a2)
{
  v2 = a2[3];
  v3 = __swift_project_boxed_opaque_existential_1(a2, v2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  v5 = *(v25 + 64);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v24 - v7;
  v9 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  (*(v11 + 16))(&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v2);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    v12 = v26;
    if (!v26)
    {
      (*(v25 + 8))(v8, AssociatedTypeWitness);
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v21;
      lazy protocol witness table accessor for type UnifiedLibrary.Error and conformance UnifiedLibrary.Error();
      swift_allocError();
      *v22 = v20;
      v22[1] = v12;
      swift_willThrow();
      return v12;
    }

    v13 = [v26 identifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
    if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
    {
      break;
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      goto LABEL_11;
    }
  }

LABEL_11:
  (*(v25 + 8))(v8, AssociatedTypeWitness);
  return v12;
}

uint64_t one-time initialization function for lockedBMLibraryStreamBasesFunc()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyST_pSo12BMStreamBaseC7ElementSTRts_XPycSgSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyST_pSo12BMStreamBaseC7ElementSTRts_XPycSgSo16os_unfair_lock_sVGMR);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  static UnifiedLibrary.Library.lockedBMLibraryStreamBasesFunc = result;
  return result;
}

uint64_t one-time initialization function for lockedBMLibraryStreamBaseFunc()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySo12BMStreamBaseCSo0C10IdentifieraKcSgSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySo12BMStreamBaseCSo0C10IdentifieraKcSgSo16os_unfair_lock_sVGMR);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  static UnifiedLibrary.Library.lockedBMLibraryStreamBaseFunc = result;
  return result;
}

uint64_t static UnifiedLibrary.Library.bmLibraryStreamBasesFunc.setter(uint64_t a1)
{
  v1 = a1;
  if (one-time initialization token for lockedBMLibraryStreamBasesFunc != -1)
  {
    a1 = swift_once();
  }

  v2 = static UnifiedLibrary.Library.lockedBMLibraryStreamBasesFunc;
  MEMORY[0x1EEE9AC00](a1);

  os_unfair_lock_lock(v2 + 8);
  partial apply for closure #1 in static UnifiedLibrary.Library.bmLibraryStreamBasesFunc.setter(v2 + 2);
  os_unfair_lock_unlock(v2 + 8);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed AnyValue) -> (@out AnyValue?))?(v1);
}

uint64_t closure #1 in static UnifiedLibrary.Library.bmLibraryStreamBasesFunc.setter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (v6)
  {
    v7 = a1[1];
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed AnyValue) -> (@out AnyValue?))?(v6);
  }

  if (a2)
  {
    v8 = a3;
  }

  else
  {
    v8 = 0;
  }

  *a1 = a2;
  a1[1] = v8;
  return _sxRi_zRi0_zlyST_pSo12BMStreamBaseC7ElementSTRts_XPIsegr_SgWOy_0(a2);
}

void *thunk for @escaping @callee_guaranteed (@in_guaranteed BMStreamIdentifier) -> (@out BMStreamBase, @error @owned Error)(uint64_t a1, void *(*a2)(uint64_t *__return_ptr, uint64_t *))
{
  v5 = a1;
  result = a2(&v4, &v5);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t static UnifiedLibrary.Library.bmLibraryStreamBaseFunc.setter(uint64_t a1)
{
  v1 = a1;
  if (one-time initialization token for lockedBMLibraryStreamBaseFunc != -1)
  {
    a1 = swift_once();
  }

  v2 = static UnifiedLibrary.Library.lockedBMLibraryStreamBaseFunc;
  MEMORY[0x1EEE9AC00](a1);

  os_unfair_lock_lock(v2 + 8);
  partial apply for closure #1 in static UnifiedLibrary.Library.bmLibraryStreamBaseFunc.setter(v2 + 2);
  os_unfair_lock_unlock(v2 + 8);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed AnyValue) -> (@out AnyValue?))?(v1);
}

_BYTE *storeEnumTagSinglePayload for UnifiedLibrary(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t closure #1 in static UnifiedLibrary.Library.bmLibraryStreamBaseFunc.setter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (v6)
  {
    v7 = a1[1];
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed AnyValue) -> (@out AnyValue?))?(v6);
  }

  if (a2)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    *(v8 + 24) = a3;
    v9 = thunk for @escaping @callee_guaranteed (@guaranteed BMStreamIdentifier) -> (@owned BMStreamBase, @error @owned Error)partial apply;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a1 = v9;
  a1[1] = v8;
  return _sxRi_zRi0_zlyST_pSo12BMStreamBaseC7ElementSTRts_XPIsegr_SgWOy_0(a2);
}

uint64_t closure #1 in static UnifiedLibrary.Library.set(libraries:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  *a1 = a2;
}

uint64_t static UnifiedLibrary.Library.sqlViewToBiomeStreamMapping.getter()
{
  if (one-time initialization token for lockedLibraries != -1)
  {
LABEL_8:
    OUTLINED_FUNCTION_42_0();
  }

  v0 = static UnifiedLibrary.Library.lockedLibraries;

  os_unfair_lock_lock(v0 + 6);
  v1 = *&v0[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v0 + 6);

  v2 = 0;
  v3 = *(v1 + 16);
  v4 = v1 + 40;
  v5 = MEMORY[0x1E69E7CC8];
  while (v3 != v2)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_8;
    }

    ++v2;
    v6 = *(v4 - 8);
    v7 = (*(*v4 + 24))();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = v5;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v7, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v10);
    v5 = v10;
    v4 += 16;
  }

  return v5;
}

uint64_t static UnifiedLibrary.Library.orderedDataflows.getter()
{
  if (one-time initialization token for lockedLibraries != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v0 = static UnifiedLibrary.Library.lockedLibraries;

    os_unfair_lock_lock(v0 + 6);
    v1 = *&v0[4]._os_unfair_lock_opaque;

    os_unfair_lock_unlock(v0 + 6);

    v2 = *(v1 + 16);
    if (!v2)
    {
      break;
    }

    v3 = v1 + 40;
    v4 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v5 = *(v3 - 8);
      v6 = (*(*v3 + 56))();
      v7 = *(v6 + 16);
      v8 = *(v4 + 16);
      if (__OFADD__(v8, v7))
      {
        break;
      }

      v9 = v6;
      if (!swift_isUniquelyReferenced_nonNull_native() || v8 + v7 > *(v4 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v4 = v10;
      }

      if (*(v9 + 16))
      {
        if ((*(v4 + 24) >> 1) - *(v4 + 16) < v7)
        {
          goto LABEL_20;
        }

        swift_arrayInitWithCopy();

        if (v7)
        {
          v11 = *(v4 + 16);
          v12 = __OFADD__(v11, v7);
          v13 = v11 + v7;
          if (v12)
          {
            goto LABEL_21;
          }

          *(v4 + 16) = v13;
        }
      }

      else
      {

        if (v7)
        {
          goto LABEL_19;
        }
      }

      v3 += 16;
      if (!--v2)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    OUTLINED_FUNCTION_42_0();
  }

  v4 = MEMORY[0x1E69E7CC0];
LABEL_17:

  return v4;
}

void *static UnifiedLibrary.Library.lookupDataflow(name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (one-time initialization token for lockedLibraries != -1)
  {
LABEL_11:
    swift_once();
  }

  v6 = static UnifiedLibrary.Library.lockedLibraries;

  os_unfair_lock_lock(v6 + 6);
  v7 = *&v6[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v6 + 6);

  v8 = 0;
  v9 = *(v7 + 16);
  for (i = v7 + 40; ; i += 16)
  {
    if (v9 == v8)
    {

      _s12BiomeStreams8DataflowVSgWOi0_(__dst);
      v12 = __dst;
      return memcpy(a3, v12, 0x80uLL);
    }

    if (v8 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_11;
    }

    v11 = *(i - 8);
    (*(*i + 64))(v14, a1, a2);
    memcpy(__dst, v14, sizeof(__dst));
    if (_s12BiomeStreams8DataflowVSgWOg(__dst) != 1)
    {
      break;
    }

    ++v8;
  }

  v12 = v14;
  return memcpy(a3, v12, 0x80uLL);
}

uint64_t static UnifiedLibrary.Library.streamBase(for:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for lockedLibraries != -1)
  {
LABEL_17:
    swift_once();
  }

  v4 = static UnifiedLibrary.Library.lockedLibraries;

  os_unfair_lock_lock(v4 + 6);
  v5 = *&v4[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v4 + 6);

  v6 = v5 + 40;
  v7 = -*(v5 + 16);
  v8 = -1;
  while (v7 + v8 != -1)
  {
    if (++v8 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_17;
    }

    v9 = v6 + 16;
    v10 = *(v6 - 8);
    v11 = (*(*v6 + 48))(a1, a2);
    v6 = v9;
    if (v11)
    {
      v12 = v11;

      return v12;
    }
  }

  if (one-time initialization token for lockedBMLibraryStreamBaseFunc != -1)
  {
    swift_once();
  }

  v13 = static UnifiedLibrary.Library.lockedBMLibraryStreamBaseFunc;

  os_unfair_lock_lock(v13 + 8);
  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = v14;
    v17 = swift_allocObject();
    *(v17 + 16) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed BMStreamIdentifier) -> (@out BMStreamBase, @error @owned Error);
    *(v17 + 24) = v16;
    v14 = swift_allocObject();
    *(v14 + 16) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed BMStreamIdentifier) -> (@out BMStreamBase, @error @owned Error);
    *(v14 + 24) = v16;

    v18 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed BMStreamIdentifier) -> (@owned BMStreamBase, @error @owned Error);
    v19 = thunk for @escaping @callee_guaranteed (@guaranteed BMStreamIdentifier) -> (@owned BMStreamBase, @error @owned Error)partial apply;
  }

  else
  {
    v19 = 0;
    v18 = 0;
    v20 = *(v13 + 3);
  }

  *(v13 + 2) = v19;
  *(v13 + 3) = v14;
  os_unfair_lock_unlock(v13 + 8);

  if (!v15)
  {
    return 0;
  }

  v21 = MEMORY[0x1865F6160](a1, a2);
  v24 = v21;
  v18(&v23, &v24);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed AnyValue) -> (@out AnyValue?))?(v18);

  return v23;
}

uint64_t static UnifiedLibrary.Library.streamBases.getter@<X0>(void *a1@<X8>)
{
  v30 = a1;
  v38 = MEMORY[0x1E69E7CD0];
  v37 = MEMORY[0x1E69E7CC0];
  if (one-time initialization token for lockedBMLibraryStreamBasesFunc != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v1 = static UnifiedLibrary.Library.lockedBMLibraryStreamBasesFunc;

    os_unfair_lock_lock(v1 + 8);
    v2 = *&v1[4]._os_unfair_lock_opaque;
    _sxRi_zRi0_zlyST_pSo12BMStreamBaseC7ElementSTRts_XPIsegr_SgWOy_0(v2);
    os_unfair_lock_unlock(v1 + 8);

    if (v2)
    {
      v2(v32, v3);
      v4 = v33;
      v5 = __swift_project_boxed_opaque_existential_1(v32, v33);
      v6 = *(*(v4 - 8) + 64);
      MEMORY[0x1EEE9AC00](v5);
      (*(v8 + 16))(&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_0(v34);
      dispatch thunk of Sequence.makeIterator()();
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      v9 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        __swift_mutable_project_boxed_opaque_existential_1(v34, AssociatedTypeWitness);
        dispatch thunk of IteratorProtocol.next()();
        v10 = v32[0];
        if (!v32[0])
        {
          break;
        }

        v11 = specialized Set._Variant.insert(_:)(v32, [v32[0] identifier]);

        if (v11)
        {
          v12 = v10;
          MEMORY[0x1865F6350]();
          if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v9 = v37;
        }

        else
        {
        }
      }

      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed AnyValue) -> (@out AnyValue?))?(v2);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    v31 = v9;
    if (one-time initialization token for lockedLibraries != -1)
    {
      swift_once();
    }

    v13 = static UnifiedLibrary.Library.lockedLibraries;

    os_unfair_lock_lock(v13 + 6);
    v14 = *&v13[4]._os_unfair_lock_opaque;

    os_unfair_lock_unlock(v13 + 6);

    v15 = *(v14 + 16);
    if (!v15)
    {
      break;
    }

    v16 = 0;
    while (v16 < *(v14 + 16))
    {
      v17 = (v14 + 32 + 16 * v16);
      v18 = *v17;
      (*(v17[1] + 40))(v32);
      v19 = v33;
      v20 = __swift_project_boxed_opaque_existential_1(v32, v33);
      v21 = *(*(v19 - 8) + 64);
      MEMORY[0x1EEE9AC00](v20);
      (*(v23 + 16))(&v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_0(v34);
      dispatch thunk of Sequence.makeIterator()();
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      while (1)
      {
        __swift_mutable_project_boxed_opaque_existential_1(v34, AssociatedTypeWitness);
        dispatch thunk of IteratorProtocol.next()();
        v24 = v32[0];
        if (!v32[0])
        {
          break;
        }

        v25 = specialized Set._Variant.insert(_:)(v32, [v32[0] identifier]);

        if (v25)
        {
          v26 = v24;
          MEMORY[0x1865F6350]();
          if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v31 = v37;
        }

        else
        {
        }
      }

      ++v16;
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      if (v16 == v15)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    swift_once();
  }

LABEL_25:

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12BMStreamBaseCGMd, &_sSaySo12BMStreamBaseCGMR);
  v28 = v30;
  v30[3] = v27;
  result = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [BMStreamBase] and conformance [A], &_sSaySo12BMStreamBaseCGMd, &_sSaySo12BMStreamBaseCGMR);
  v28[4] = result;
  *v28 = v31;
  return result;
}

uint64_t static UnifiedLibrary.Library.view(legacyViewName:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for lockedLibraries != -1)
  {
LABEL_10:
    swift_once();
  }

  v4 = static UnifiedLibrary.Library.lockedLibraries;

  os_unfair_lock_lock(v4 + 6);
  v5 = *&v4[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v4 + 6);

  v6 = v5 + 40;
  v7 = -*(v5 + 16);
  v8 = -1;
  while (v7 + v8 != -1)
  {
    if (++v8 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_10;
    }

    v9 = v6 + 16;
    v10 = *(v6 - 8);
    v11 = (*(*v6 + 80))(a1, a2);
    v6 = v9;
    if (v11)
    {
      v12 = v11;

      return v12;
    }
  }

  return 0;
}

uint64_t static UnifiedLibrary.Library.view(for:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for lockedLibraries != -1)
  {
LABEL_10:
    swift_once();
  }

  v4 = static UnifiedLibrary.Library.lockedLibraries;

  os_unfair_lock_lock(v4 + 6);
  v5 = *&v4[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v4 + 6);

  v6 = v5 + 40;
  v7 = -*(v5 + 16);
  v8 = -1;
  while (v7 + v8 != -1)
  {
    if (++v8 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_10;
    }

    v9 = v6 + 16;
    v10 = *(v6 - 8);
    v11 = (*(*v6 + 32))(a1, a2);
    v6 = v9;
    if (v11)
    {
      v12 = v11;

      return v12;
    }
  }

  return 0;
}

uint64_t static UnifiedLibrary.Library.dataArtifacts.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for lockedLibraries != -1)
  {
    swift_once();
  }

  v2 = static UnifiedLibrary.Library.lockedLibraries;

  os_unfair_lock_lock(v2 + 6);
  v3 = *&v2[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v2 + 6);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12LazySequenceVys07FlattenB0Vys0a3MapB0VySay12BiomeStreams11LibraryBase_pXpGSayAG0G8ArtifactO04DataI0_pXpGGGGMd, &_ss12LazySequenceVys07FlattenB0Vys0a3MapB0VySay12BiomeStreams11LibraryBase_pXpGSayAG0G8ArtifactO04DataI0_pXpGGGGMR);
  result = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type LazySequence<FlattenSequence<LazyMapSequence<[LibraryBase.Type], [LibraryArtifact.DataArtifact.Type]>>> and conformance LazySequence<A>, &_ss12LazySequenceVys07FlattenB0Vys0a3MapB0VySay12BiomeStreams11LibraryBase_pXpGSayAG0G8ArtifactO04DataI0_pXpGGGGMd, &_ss12LazySequenceVys07FlattenB0Vys0a3MapB0VySay12BiomeStreams11LibraryBase_pXpGSayAG0G8ArtifactO04DataI0_pXpGGGGMR);
  a1[4] = result;
  *a1 = v3;
  a1[1] = closure #1 in static UnifiedLibrary.Library.dataArtifacts.getter;
  a1[2] = 0;
  return result;
}

uint64_t closure #1 in static UnifiedLibrary.Library.dataArtifacts.getter@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  (*(a1[1] + 104))(v33, *a1);
  v3 = v34;
  v4 = __swift_project_boxed_opaque_existential_1(v33, v34);
  v5 = dispatch thunk of Sequence.underestimatedCount.getter();
  v32 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  v6 = v32;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = &v26;
  v28 = *(AssociatedTypeWitness - 8);
  v8 = *(v28 + 64);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v26 - v10;
  v12 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  (*(v14 + 16))(&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v4, v3);
  result = dispatch thunk of Sequence.makeIterator()();
  if (v5 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  if (v5)
  {
    v27 = a2;
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      result = dispatch thunk of IteratorProtocol.next()();
      v16 = v30;
      if (!v30)
      {
        goto LABEL_16;
      }

      v17 = v31;
      v32 = v6;
      v19 = *(v6 + 16);
      v18 = *(v6 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18 > 1, v19 + 1, 1);
        v6 = v32;
      }

      *(v6 + 16) = v19 + 1;
      v20 = v6 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      if (!--v5)
      {
        a2 = v27;
        goto LABEL_10;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_10:
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    v21 = v30;
    if (!v30)
    {
      break;
    }

    v22 = v31;
    v32 = v6;
    v24 = *(v6 + 16);
    v23 = *(v6 + 24);
    if (v24 >= v23 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v23 > 1, v24 + 1, 1);
      v6 = v32;
    }

    *(v6 + 16) = v24 + 1;
    v25 = v6 + 16 * v24;
    *(v25 + 32) = v21;
    *(v25 + 40) = v22;
  }

  (*(v28 + 8))(v11, AssociatedTypeWitness);
  *a2 = v6;
  return __swift_destroy_boxed_opaque_existential_1Tm(v33);
}

uint64_t static UnifiedLibrary.Library.dataArtifact(for:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for lockedLibraries != -1)
  {
LABEL_10:
    swift_once();
  }

  v4 = static UnifiedLibrary.Library.lockedLibraries;

  os_unfair_lock_lock(v4 + 6);
  v5 = *&v4[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v4 + 6);

  v6 = v5 + 40;
  v7 = -*(v5 + 16);
  v8 = -1;
  while (v7 + v8 != -1)
  {
    if (++v8 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_10;
    }

    v9 = v6 + 16;
    v10 = *(v6 - 8);
    v11 = (*(*v6 + 112))(a1, a2);
    v6 = v9;
    if (v11)
    {
      v12 = v11;

      return v12;
    }
  }

  return 0;
}

unint64_t UnifiedLibrary.Error.description.getter(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(38);

  MEMORY[0x1865F6280](a1, a2);
  return 0xD000000000000024;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v47 = a5;
  specialized LazyMapSequence.makeIterator()(a1, a2, a3, v46);
  v6 = v46[1];
  v7 = v46[3];
  v8 = v46[4];
  v39 = v46[5];
  v40 = v46[0];
  v9 = (v46[2] + 64) >> 6;

  v38 = v6;
  if (v8)
  {
    while (1)
    {
      v41 = a4;
      v10 = v7;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v40 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v40 + 56) + 8 * v12);
      v45[0] = *v13;
      v45[1] = v14;
      v45[2] = v15;

      v39(&v42, v45);

      v16 = v42;
      v17 = v43;
      v18 = v44;
      v19 = *v47;
      v21 = specialized __RawDictionaryStorage.find<A>(_:)(v42, v43);
      v22 = *(v19 + 16);
      v23 = (v20 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        break;
      }

      v25 = v20;
      if (*(v19 + 24) >= v24)
      {
        if ((v41 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSaySSGGMd, &_ss17_NativeDictionaryVySSSaySSGGMR);
          _NativeDictionary.copy()();
        }
      }

      else
      {
        v26 = v47;
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, v41 & 1);
        v27 = *v26;
        v28 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        if ((v25 & 1) != (v29 & 1))
        {
          goto LABEL_24;
        }

        v21 = v28;
      }

      v8 &= v8 - 1;
      v30 = *v47;
      if (v25)
      {

        v31 = v30[7];
        v32 = *(v31 + 8 * v21);
        *(v31 + 8 * v21) = v18;
      }

      else
      {
        v30[(v21 >> 6) + 8] |= 1 << v21;
        v33 = (v30[6] + 16 * v21);
        *v33 = v16;
        v33[1] = v17;
        *(v30[7] + 8 * v21) = v18;
        v34 = v30[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_23;
        }

        v30[2] = v36;
      }

      a4 = 1;
      v7 = v10;
      v6 = v38;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        outlined consume of [String : [String]].Iterator._Variant();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v41 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v50 = type metadata accessor for SQLDataType();
  v6 = OUTLINED_FUNCTION_2_1(v50);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9();
  v49 = v11;
  v12 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v13 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMd, &_ss18_DictionaryStorageCySS14BiomeSQLParser11SQLDataTypeOGMR);
  v47 = a2;
  v14 = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = v14;
  if (!*(v12 + 16))
  {
LABEL_35:

LABEL_36:
    *v3 = v15;
    return;
  }

  v16 = 0;
  v17 = (v12 + 64);
  v18 = 1 << *(v12 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & *(v12 + 64);
  v21 = (v18 + 63) >> 6;
  v44 = (v8 + 16);
  v45 = v12;
  v46 = v8;
  v48 = (v8 + 32);
  v22 = v14 + 64;
  if (!v20)
  {
LABEL_9:
    v24 = v16;
    while (1)
    {
      v16 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v16 >= v21)
      {
        break;
      }

      v25 = v17[v16];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v20 = (v25 - 1) & v25;
        goto LABEL_14;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v41 = 1 << *(v12 + 32);
    v3 = v2;
    if (v41 >= 64)
    {
      v42 = OUTLINED_FUNCTION_48_0();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v42, v43, v17);
    }

    else
    {
      *v17 = -1 << v41;
    }

    *(v12 + 16) = 0;
    goto LABEL_35;
  }

  while (1)
  {
    v23 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
LABEL_14:
    v26 = v23 | (v16 << 6);
    v27 = *(v12 + 56);
    v28 = (*(v12 + 48) + 16 * v26);
    v30 = *v28;
    v29 = v28[1];
    v31 = *(v46 + 72);
    v32 = v27 + v31 * v26;
    if (v47)
    {
      (*v48)(v49, v32, v50);
    }

    else
    {
      (*v44)(v49, v32, v50);
    }

    v33 = *(v15 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    v34 = Hasher._finalize()() & ~(-1 << *(v15 + 32));
    if (((-1 << v34) & ~*(v22 + 8 * (v34 >> 6))) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_22_3();
LABEL_27:
    *(v22 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
    v40 = (*(v15 + 48) + 16 * v35);
    *v40 = v30;
    v40[1] = v29;
    (*v48)(*(v15 + 56) + v31 * v35, v49, v50);
    ++*(v15 + 16);
    v12 = v45;
    if (!v20)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_21_2();
  while (1)
  {
    OUTLINED_FUNCTION_89_1();
    if (v39)
    {
      if (v37)
      {
        break;
      }
    }

    if (v36 == v38)
    {
      v36 = 0;
    }

    if (*(v22 + 8 * v36) != -1)
    {
      OUTLINED_FUNCTION_20_4();
      goto LABEL_27;
    }
  }

LABEL_38:
  __break(1u);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
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
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v35 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(v5 + 56) + 8 * v19);
    if ((v38 & 1) == 0)
    {
      v24 = v20[1];
    }

    v25 = *(v8 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    *(*(v8 + 56) + 8 * v29) = v23;
    ++*(v8 + 16);
    v5 = v37;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd, &_ss18_DictionaryStorageCySSSiGMR);
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

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14BiomeSQLParser6SchemaVGMd, &_ss18_DictionaryStorageCySS14BiomeSQLParser6SchemaVGMR);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v25 = (*(v5 + 56) + 24 * v22);
      v26 = v25[1];
      v40 = *v25;
      v41 = *v23;
      v27 = v25[2];
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v41;
      v17[1] = v24;
      v18 = (*(v8 + 56) + 24 * v16);
      *v18 = v40;
      v18[1] = v26;
      v18[2] = v27;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t _s12BiomeStreams8DataflowVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed BMStreamIdentifier) -> (@owned BMStreamBase, @error @owned Error)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  return partial apply for thunk for @escaping @callee_guaranteed (@guaranteed BMStreamIdentifier) -> (@owned BMStreamBase, @error @owned Error)(a1, a2);
}

{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  result = v5(*a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a4;

  return a2;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(&v6, *a1, a1[1], a1[2]);
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t specialized LazyMapSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

unint64_t lazy protocol witness table accessor for type UnifiedLibrary.Error and conformance UnifiedLibrary.Error()
{
  result = lazy protocol witness table cache variable for type UnifiedLibrary.Error and conformance UnifiedLibrary.Error;
  if (!lazy protocol witness table cache variable for type UnifiedLibrary.Error and conformance UnifiedLibrary.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnifiedLibrary.Error and conformance UnifiedLibrary.Error);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_55_0()
{
  result = v0;
  v3 = *(v1 - 240);
  return result;
}

uint64_t OUTLINED_FUNCTION_108_0()
{
  v2 = *(v0 - 224);

  return Date.ISO8601Format(_:)();
}

uint64_t outlined init with take of (key: String, value: SQLDataType)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_106(a1, a2, a3, a4);
  OUTLINED_FUNCTION_12(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v123 = a1;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
  v130 = *(v139 - 8);
  v6 = *(v130 + 64);
  v7 = MEMORY[0x1EEE9AC00](v139);
  v127 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v138 = &v119 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v136 = (&v119 - v14);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v135 = (&v119 - v16);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v121 = (&v119 - v18);
  MEMORY[0x1EEE9AC00](v17);
  v120 = (&v119 - v21);
  v142 = MEMORY[0x1E69E7CC0];
  v132 = a3;
  v22 = a3[1];
  if (v22 >= 1)
  {
    v140 = v20;
    v141 = v19;
    v23 = 0;
    v24 = MEMORY[0x1E69E7CC0];
    v25 = &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR;
    v122 = a4;
    while (1)
    {
      v26 = v23;
      v27 = v23 + 1;
      v124 = v23;
      if (v23 + 1 < v22)
      {
        v28 = *v132;
        v29 = *(v130 + 72);
        v30 = v23 + 1;
        v31 = v120;
        outlined init with copy of (key: String, value: SQLDataType)(*v132 + v29 * v27, v120, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, v25);
        v133 = v29;
        v32 = v28 + v29 * v26;
        v33 = v121;
        outlined init with copy of (key: String, value: SQLDataType)(v32, v121, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, v25);
        v34 = *v31 == *v33 && v31[1] == v33[1];
        v119 = v24;
        if (v34)
        {
          LODWORD(v131) = 0;
        }

        else
        {
          LODWORD(v131) = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        outlined destroy of UUID?(v121, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, v25);
        outlined destroy of UUID?(v120, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, v25);
        v35 = v26 + 2;
        v36 = v133 * (v26 + 2);
        v37 = v28 + v36;
        v38 = v30;
        v39 = v133 * v30;
        v40 = v28 + v133 * v30;
        v129 = v22;
        do
        {
          v41 = v35;
          v42 = v38;
          v43 = v39;
          v44 = v36;
          if (v35 >= v22)
          {
            break;
          }

          v137 = v35;
          v45 = v25;
          v46 = v135;
          outlined init with copy of (key: String, value: SQLDataType)(v37, v135, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, v45);
          v47 = v136;
          outlined init with copy of (key: String, value: SQLDataType)(v40, v136, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, v45);
          v48 = *v46 == *v47 && v46[1] == v47[1];
          v49 = v48 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined destroy of UUID?(v136, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
          v25 = &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR;
          outlined destroy of UUID?(v135, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
          v41 = v137;
          v35 = v137 + 1;
          v37 += v133;
          v40 += v133;
          v38 = v42 + 1;
          v39 = v43 + v133;
          v36 = v44 + v133;
          v22 = v129;
        }

        while (((v131 ^ v49) & 1) == 0);
        v24 = v119;
        if (v131)
        {
          if (v41 < v124)
          {
            goto LABEL_135;
          }

          if (v124 >= v41)
          {
            v27 = v41;
            a4 = v122;
            v26 = v124;
            goto LABEL_39;
          }

          v50 = v119;
          v51 = v124 * v133;
          v52 = v124;
          do
          {
            if (v52 != v42)
            {
              v53 = *v132;
              if (!*v132)
              {
                goto LABEL_140;
              }

              outlined init with take of (key: String, value: SQLDataType)(v53 + v51, v127, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
              v54 = v51 < v43 || v53 + v51 >= (v53 + v44);
              if (v54)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v51 != v43)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              outlined init with take of (key: String, value: SQLDataType)(v127, v53 + v43, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
            }

            ++v52;
            v43 -= v133;
            v44 -= v133;
            v51 += v133;
            v55 = v52 < v42--;
          }

          while (v55);
          v27 = v41;
          a4 = v122;
          v24 = v50;
          v25 = &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR;
        }

        else
        {
          v27 = v41;
          a4 = v122;
        }

        v26 = v124;
      }

LABEL_39:
      v56 = v132[1];
      v133 = v27;
      if (v27 < v56)
      {
        v90 = __OFSUB__(v27, v26);
        v57 = v27 - v26;
        if (v90)
        {
          goto LABEL_134;
        }

        if (v57 < a4)
        {
          if (__OFADD__(v26, a4))
          {
            goto LABEL_136;
          }

          if (v26 + a4 >= v56)
          {
            v58 = v56;
          }

          else
          {
            v58 = v26 + a4;
          }

          if (v58 < v26)
          {
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
            return;
          }

          if (v133 != v58)
          {
            v119 = v24;
            v59 = *(v130 + 72);
            v60 = *v132 + v59 * (v133 - 1);
            v61 = -v59;
            v62 = v26 - v133;
            v137 = *v132;
            v125 = v59;
            v126 = v58;
            v63 = v137 + v133 * v59;
            do
            {
              v128 = v63;
              v129 = v62;
              v131 = v60;
              v64 = v60;
              while (1)
              {
                v65 = v140;
                outlined init with copy of (key: String, value: SQLDataType)(v63, v140, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, v25);
                v66 = v25;
                v67 = v141;
                outlined init with copy of (key: String, value: SQLDataType)(v64, v141, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, v66);
                if (*v65 == *v67 && v65[1] == v67[1])
                {
                  break;
                }

                v69 = _stringCompareWithSmolCheck(_:_:expecting:)();
                outlined destroy of UUID?(v67, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, v66);
                outlined destroy of UUID?(v65, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, v66);
                v25 = v66;
                if ((v69 & 1) == 0)
                {
                  goto LABEL_60;
                }

                if (!v137)
                {
                  goto LABEL_138;
                }

                v70 = v138;
                outlined init with take of (key: String, value: SQLDataType)(v63, v138, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, v66);
                swift_arrayInitWithTakeFrontToBack();
                outlined init with take of (key: String, value: SQLDataType)(v70, v64, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, v66);
                v64 += v61;
                v63 += v61;
                v54 = __CFADD__(v62++, 1);
                if (v54)
                {
                  goto LABEL_60;
                }
              }

              outlined destroy of UUID?(v67, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, v66);
              outlined destroy of UUID?(v65, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, v66);
              v25 = v66;
LABEL_60:
              v60 = v131 + v125;
              v62 = v129 - 1;
              v63 = v128 + v125;
              ++v133;
            }

            while (v133 != v126);
            v133 = v126;
            v24 = v119;
            v26 = v124;
          }
        }
      }

      if (v133 < v26)
      {
        goto LABEL_133;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v116 = v24[2];
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v24 = v117;
      }

      v71 = v24[2];
      v72 = v71 + 1;
      if (v71 >= v24[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v24 = v118;
      }

      v24[2] = v72;
      v73 = v24 + 4;
      v74 = &v24[2 * v71 + 4];
      v75 = v133;
      *v74 = v124;
      v74[1] = v75;
      v76 = *v123;
      if (!*v123)
      {
        goto LABEL_141;
      }

      if (v71)
      {
        while (1)
        {
          v77 = v72 - 1;
          v78 = &v73[2 * v72 - 2];
          v79 = &v24[2 * v72];
          if (v72 >= 4)
          {
            break;
          }

          if (v72 == 3)
          {
            v80 = v24[4];
            v81 = v24[5];
            v90 = __OFSUB__(v81, v80);
            v82 = v81 - v80;
            v83 = v90;
LABEL_82:
            if (v83)
            {
              goto LABEL_123;
            }

            v95 = *v79;
            v94 = v79[1];
            v96 = __OFSUB__(v94, v95);
            v97 = v94 - v95;
            v98 = v96;
            if (v96)
            {
              goto LABEL_126;
            }

            v99 = v78[1];
            v100 = v99 - *v78;
            if (__OFSUB__(v99, *v78))
            {
              goto LABEL_129;
            }

            if (__OFADD__(v97, v100))
            {
              goto LABEL_131;
            }

            if (v97 + v100 >= v82)
            {
              if (v82 < v100)
              {
                v77 = v72 - 2;
              }

              goto LABEL_104;
            }

            goto LABEL_97;
          }

          if (v72 < 2)
          {
            goto LABEL_125;
          }

          v102 = *v79;
          v101 = v79[1];
          v90 = __OFSUB__(v101, v102);
          v97 = v101 - v102;
          v98 = v90;
LABEL_97:
          if (v98)
          {
            goto LABEL_128;
          }

          v104 = *v78;
          v103 = v78[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_130;
          }

          if (v105 < v97)
          {
            goto LABEL_111;
          }

LABEL_104:
          if (v77 - 1 >= v72)
          {
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
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
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
            goto LABEL_137;
          }

          if (!*v132)
          {
            goto LABEL_139;
          }

          v109 = &v73[2 * v77 - 2];
          v110 = *v109;
          v111 = &v73[2 * v77];
          v112 = *(v111 + 1);
          v113 = v134;
          specialized _merge<A>(low:mid:high:buffer:by:)(*v132 + *(v130 + 72) * *v109, *v132 + *(v130 + 72) * *v111, *v132 + *(v130 + 72) * v112, v76);
          v134 = v113;
          if (v113)
          {
            v142 = v24;
            goto LABEL_116;
          }

          if (v112 < v110)
          {
            goto LABEL_118;
          }

          v114 = v24;
          v115 = v24[2];
          if (v77 > v115)
          {
            goto LABEL_119;
          }

          *v109 = v110;
          v109[1] = v112;
          if (v77 >= v115)
          {
            goto LABEL_120;
          }

          v72 = v115 - 1;
          specialized UnsafeMutablePointer.moveInitialize(from:count:)(v111 + 16, v115 - 1 - v77, &v73[2 * v77]);
          v114[2] = v115 - 1;
          v55 = v115 > 2;
          v24 = v114;
          v25 = &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR;
          if (!v55)
          {
            goto LABEL_111;
          }
        }

        v84 = &v73[2 * v72];
        v85 = *(v84 - 8);
        v86 = *(v84 - 7);
        v90 = __OFSUB__(v86, v85);
        v87 = v86 - v85;
        if (v90)
        {
          goto LABEL_121;
        }

        v89 = *(v84 - 6);
        v88 = *(v84 - 5);
        v90 = __OFSUB__(v88, v89);
        v82 = v88 - v89;
        v83 = v90;
        if (v90)
        {
          goto LABEL_122;
        }

        v91 = v79[1];
        v92 = v91 - *v79;
        if (__OFSUB__(v91, *v79))
        {
          goto LABEL_124;
        }

        v90 = __OFADD__(v82, v92);
        v93 = v82 + v92;
        if (v90)
        {
          goto LABEL_127;
        }

        if (v93 >= v87)
        {
          v107 = *v78;
          v106 = v78[1];
          v90 = __OFSUB__(v106, v107);
          v108 = v106 - v107;
          if (v90)
          {
            goto LABEL_132;
          }

          if (v82 < v108)
          {
            v77 = v72 - 2;
          }

          goto LABEL_104;
        }

        goto LABEL_82;
      }

LABEL_111:
      v23 = v133;
      v22 = v132[1];
      a4 = v122;
      if (v133 >= v22)
      {
        v142 = v24;
        break;
      }
    }
  }

  if (!*v123)
  {
    goto LABEL_142;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v142, *v123, v132);
LABEL_116:
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v73 = a3;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
  v72 = *(v89 - 8);
  v5 = *(v72 + 64);
  v6 = MEMORY[0x1EEE9AC00](v89);
  v84 = (&v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1EEE9AC00](v6);
  v83 = (&v70 - v9);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v70 - v11);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v70 - v13);
  v74 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_88;
  }

LABEL_2:
  *v74 = v15;
  v82 = a2;
  v86 = v14;
  v87 = v12;
  while (1)
  {
    v17 = *(v15 + 16);
    if (v17 < 2)
    {
      return 1;
    }

    v18 = *v73;
    if (!*v73)
    {
      break;
    }

    v19 = *(v72 + 72);
    if (!v19)
    {
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
      v15 = result;
      goto LABEL_2;
    }

    v20 = v15 + 16 * (v17 - 1);
    v21 = *(v20 + 32);
    v80 = *(v15 + 16 * v17);
    v22 = v19 * v80;
    v23 = v19 * v21;
    v24 = v19 * v21 - v19 * v80;
    v25 = v19 == -1 && v24 == 0x8000000000000000;
    if (v25)
    {
      goto LABEL_86;
    }

    v79 = *(v20 + 40);
    v26 = v19 * v79 - v23;
    if (v19 == -1 && v26 == 0x8000000000000000)
    {
      goto LABEL_87;
    }

    v75 = v17 - 2;
    v76 = v17 - 1;
    v77 = v17;
    v78 = v15;
    v90 = v18 + v22;
    v28 = v18 + v23;
    v29 = (v18 + v19 * v79);
    v30 = a2;
    v31 = v24 / v19;
    v93 = v18 + v22;
    v92 = v30;
    v32 = v26 / v19;
    v33 = v19;
    if (v24 / v19 < v26 / v19)
    {
      specialized UnsafeMutablePointer.moveInitialize(from:count:)();
      v34 = v90;
      v88 = v30 + v31 * v33;
      v91 = v88;
      v35 = v18 + v33 + v33 * v80;
      v36 = v30;
      v12 = v87;
      v37 = v33;
      v85 = v29;
      while (1)
      {
        if (v36 >= v88 || v28 >= v29)
        {
          a2 = v82;
          goto LABEL_77;
        }

        v90 = v35;
        v39 = v37;
        v40 = v34;
        v41 = v28;
        outlined init with copy of (key: String, value: SQLDataType)(v28, v14, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
        outlined init with copy of (key: String, value: SQLDataType)(v36, v12, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
        if (*v14 == *v12 && v14[1] == v12[1])
        {
          break;
        }

        v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined destroy of UUID?(v12, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
        outlined destroy of UUID?(v14, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
        if ((v43 & 1) == 0)
        {
          goto LABEL_32;
        }

        v44 = v41;
        v28 = v41 + v39;
        if (v40 < v41 || v40 >= v28)
        {
          swift_arrayInitWithTakeFrontToBack();
          v37 = v39;
          v46 = v40;
          v14 = v86;
          goto LABEL_41;
        }

        v46 = v40;
        v29 = v85;
        v14 = v86;
        if (v40 == v44)
        {
          v37 = v39;
        }

        else
        {
          swift_arrayInitWithTakeBackToFront();
          v37 = v39;
          v46 = v40;
        }

LABEL_42:
        v34 = v46 + v37;
        v93 = v90;
        v35 = v90 + v37;
        v12 = v87;
      }

      outlined destroy of UUID?(v12, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
      outlined destroy of UUID?(v14, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
LABEL_32:
      if (v40 < v36 || v40 >= v36 + v39)
      {
        swift_arrayInitWithTakeFrontToBack();
        v37 = v39;
        v46 = v40;
        v14 = v86;
      }

      else
      {
        v37 = v39;
        v46 = v40;
        v14 = v86;
        if (v40 != v36)
        {
          swift_arrayInitWithTakeBackToFront();
          v37 = v39;
          v46 = v40;
        }
      }

      v92 = v36 + v39;
      v36 += v39;
      v28 = v41;
LABEL_41:
      v29 = v85;
      goto LABEL_42;
    }

    specialized UnsafeMutablePointer.moveInitialize(from:count:)();
    v48 = (v30 + v32 * v33);
    v49 = -v33;
    v50 = v48;
    v88 = -v33;
LABEL_47:
    v51 = v28 + v49;
    v12 = v29;
    v71 = v50;
    v52 = v50;
    v85 = v51;
    while (1)
    {
      a2 = v82;
      if (v48 <= v82)
      {
        v93 = v28;
        v91 = v52;
        goto LABEL_76;
      }

      if (v90 >= v28)
      {
        break;
      }

      v81 = v52;
      v53 = v28;
      v54 = v88;
      v55 = v48 + v88;
      v56 = v83;
      outlined init with copy of (key: String, value: SQLDataType)(v48 + v88, v83, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
      v57 = v51;
      v58 = v84;
      outlined init with copy of (key: String, value: SQLDataType)(v57, v84, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
      if (*v56 == *v58 && v56[1] == v58[1])
      {
        v60 = 0;
      }

      else
      {
        v60 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v29 = (v12 + v54);
      outlined destroy of UUID?(v84, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
      outlined destroy of UUID?(v83, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
      v28 = v53;
      if (v60)
      {
        if (v12 < v53 || v29 >= v53)
        {
          v28 = v85;
          swift_arrayInitWithTakeFrontToBack();
          v50 = v81;
          v49 = v88;
        }

        else
        {
          v50 = v81;
          v25 = v12 == v53;
          v63 = v85;
          v28 = v85;
          v49 = v88;
          if (!v25)
          {
            v64 = v81;
            swift_arrayInitWithTakeBackToFront();
            v28 = v63;
            v50 = v64;
          }
        }

        goto LABEL_47;
      }

      if (v12 < v48 || v29 >= v48)
      {
        swift_arrayInitWithTakeFrontToBack();
        v12 = v29;
        v48 = v55;
        v52 = v55;
        v51 = v85;
      }

      else
      {
        v52 = v55;
        v25 = v48 == v12;
        v12 = v29;
        v48 = v55;
        v51 = v85;
        if (!v25)
        {
          swift_arrayInitWithTakeBackToFront();
          v12 = v29;
          v48 = v55;
          v52 = v55;
        }
      }
    }

    v93 = v28;
    v91 = v71;
LABEL_76:
    v14 = v86;
LABEL_77:
    specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v93, &v92, &v91);
    v65 = v79;
    v15 = v80;
    v66 = v78;
    if (v79 < v80)
    {
      goto LABEL_84;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = specialized _ArrayBuffer._consumeAndCreateNew()(v66);
    }

    v67 = v76;
    if (v75 >= *(v66 + 2))
    {
      goto LABEL_85;
    }

    v68 = &v66[16 * v77];
    *v68 = v15;
    v68[1] = v65;
    v69 = v74;
    *v74 = v66;
    result = specialized Array.remove(at:)(v67);
    v15 = *v69;
  }

  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
  v8 = *(*(v66 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v66);
  v65 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v64 = (&v57 - v12);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v57 - v14);
  result = MEMORY[0x1EEE9AC00](v13);
  v18 = (&v57 - v17);
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v21 = a2 - a1;
  v22 = a2 - a1 == 0x8000000000000000 && v20 == -1;
  if (v22)
  {
    goto LABEL_72;
  }

  v23 = a2;
  v24 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_73;
  }

  v26 = v21 / v20;
  v69 = a1;
  v68 = a4;
  v27 = v24 / v20;
  if (v21 / v20 < v24 / v20)
  {
    v28 = v23;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)();
    v29 = v28;
    v65 = a4 + v26 * v20;
    v67 = v65;
    v63 = a3;
    while (1)
    {
      if (a4 >= v65 || v29 >= a3)
      {
        goto LABEL_70;
      }

      v31 = v29;
      outlined init with copy of (key: String, value: SQLDataType)(v29, v18, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
      outlined init with copy of (key: String, value: SQLDataType)(a4, v15, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
      if (*v18 == *v15 && v18[1] == v15[1])
      {
        outlined destroy of UUID?(v15, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
        outlined destroy of UUID?(v18, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
      }

      else
      {
        v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined destroy of UUID?(v15, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
        outlined destroy of UUID?(v18, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
        if (v33)
        {
          v34 = v31;
          v35 = v31 + v20;
          if (a1 < v31 || a1 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v31 + v20;
            a3 = v63;
          }

          else
          {
            a3 = v63;
            if (a1 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v29 = v35;
          }

          goto LABEL_37;
        }
      }

      if (a1 < a4 || a1 >= a4 + v20)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v68 = a4 + v20;
      a4 += v20;
      v29 = v31;
      a3 = v63;
LABEL_37:
      a1 += v20;
      v69 = a1;
    }
  }

  v38 = v23;
  specialized UnsafeMutablePointer.moveInitialize(from:count:)();
  v39 = v38;
  v40 = a4 + v27 * v20;
  v41 = -v20;
  v42 = v40;
  v62 = -v20;
  v59 = a4;
LABEL_42:
  v43 = v39 + v41;
  v44 = a3;
  v45 = v42;
  v63 = v39;
  v60 = v42;
  v61 = v43;
  while (1)
  {
    if (v40 <= a4)
    {
      v69 = v39;
      v67 = v45;
      goto LABEL_70;
    }

    if (v39 <= a1)
    {
      break;
    }

    v58 = v45;
    v46 = v62;
    v47 = v40 + v62;
    v48 = v64;
    outlined init with copy of (key: String, value: SQLDataType)(v40 + v62, v64, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
    v49 = v43;
    v50 = v65;
    outlined init with copy of (key: String, value: SQLDataType)(v49, v65, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
    if (*v48 == *v50 && v48[1] == v50[1])
    {
      v52 = 0;
    }

    else
    {
      v52 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    a3 = v44 + v46;
    outlined destroy of UUID?(v65, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
    outlined destroy of UUID?(v64, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
    if (v52)
    {
      v54 = v44 < v63 || a3 >= v63;
      a4 = v59;
      if (v54)
      {
        v55 = v61;
        swift_arrayInitWithTakeFrontToBack();
        v39 = v55;
        v42 = v58;
        v41 = v62;
      }

      else
      {
        v42 = v58;
        v56 = v61;
        v41 = v62;
        v39 = v61;
        if (v44 != v63)
        {
          v42 = v58;
          swift_arrayInitWithTakeBackToFront();
          v39 = v56;
        }
      }

      goto LABEL_42;
    }

    v53 = v44 < v40 || a3 >= v40;
    a4 = v59;
    if (v53)
    {
      swift_arrayInitWithTakeFrontToBack();
      v44 = a3;
      v40 = v47;
      v45 = v47;
      v39 = v63;
      v42 = v60;
      v43 = v61;
    }

    else
    {
      v45 = v47;
      v22 = v40 == v44;
      v44 = a3;
      v40 = v47;
      v39 = v63;
      v42 = v60;
      v43 = v61;
      if (!v22)
      {
        swift_arrayInitWithTakeBackToFront();
        v39 = v63;
        v44 = a3;
        v40 = v47;
        v45 = v47;
      }
    }
  }

  v69 = v39;
  v67 = v42;
LABEL_70:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v69, &v68, &v67);
  return 1;
}

uint64_t getEnumTagSinglePayload for DBViewWriter(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DBViewWriter(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id Streams.StoreStream.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [objc_allocWithZone(BMStoreStream) initWithPublicStream_];
  *a2 = result;
  return result;
}

id Streams.StoreStream.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13BMStoreStreamCMd, &_sSo13BMStoreStreamCMR);
  result = BMStoreStream.__allocating_init(restrictedStreamIdentifier:)(a1, a2);
  *a3 = result;
  return result;
}

id BMStoreStream.__allocating_init(restrictedStreamIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = MEMORY[0x1865F6160](a1, a2);

  v6 = [v4 initWithRestrictedStreamIdentifier_];

  return v6;
}

id Streams.StoreStream.init(_:storeConfig:)()
{
  OUTLINED_FUNCTION_0_23();
  v1 = objc_allocWithZone(BMStoreStream);
  v2 = OUTLINED_FUNCTION_1_21();
  result = @nonobjc BMStoreStream.init(privateStreamIdentifier:storeConfig:)(v2, v3, v4);
  *v0 = result;
  return result;
}

id Streams.StoreStream.init(identifier:storeConfig:)()
{
  OUTLINED_FUNCTION_0_23();
  v1 = objc_allocWithZone(BMStoreStream);
  v2 = OUTLINED_FUNCTION_1_21();
  result = @nonobjc BMStoreStream.init(privateStreamIdentifier:storeConfig:eventDataClass:)(v2, v3, v4, v5);
  *v0 = result;
  return result;
}

uint64_t Streams.StoreStream.prune(predicate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_allocObject();
  v8[2] = *(a3 + 16);
  v8[3] = a1;
  v8[4] = a2;
  v11[4] = partial apply for thunk for @callee_guaranteed (@guaranteed BMStoreEvent<A>?, @unowned UnsafeMutablePointer<ObjCBool>) -> (@unowned Bool);
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@guaranteed BMStoreEvent<A>?, @unowned UnsafeMutablePointer<ObjCBool>) -> (@unowned Bool);
  v11[3] = &block_descriptor_1;
  v9 = _Block_copy(v11);

  [v7 pruneWithPredicateBlock_];
  _Block_release(v9);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed BMStoreEvent<A>?, @unowned UnsafeMutablePointer<ObjCBool>) -> (@unowned Bool)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = a2;
  LOBYTE(a3) = v6(a2, a3);

  return a3 & 1;
}

id @nonobjc BMStoreStream.init(privateStreamIdentifier:storeConfig:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x1865F6160]();

  v6 = [v3 initWithPrivateStreamIdentifier:v5 storeConfig:a3];

  return v6;
}

id @nonobjc BMStoreStream.init(privateStreamIdentifier:storeConfig:eventDataClass:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = MEMORY[0x1865F6160]();

  if (a4)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v9 = [v4 initWithPrivateStreamIdentifier:v7 storeConfig:a3 eventDataClass:ObjCClassFromMetadata];

  return v9;
}

uint64_t partial apply for thunk for @callee_guaranteed (@guaranteed BMStoreEvent<A>?, @unowned UnsafeMutablePointer<ObjCBool>) -> (@unowned Bool)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1() & 1;
}

uint64_t instantiation function for generic protocol witness table for Streams.StoreStream<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata instantiation function for Streams.StoreStream()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id BMPoirotSchematizerShim.BMPoirotRepeatedFieldEnumerator.init(iterator:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC12BiomeStreams23BMPoirotSchematizerShimP33_6AF5E9B2F4D56B14EB8E6E9336EA174F31BMPoirotRepeatedFieldEnumerator_iterator;
  v4 = type metadata accessor for Schematizer.RepeatableFieldIterator();
  __swift_storeEnumTagSinglePayload(&v1[v3], 1, 1, v4);
  _s10Foundation4UUIDVSgWOhTm_0(&v1[v3], &_s17PoirotSchematizer0B0V23RepeatableFieldIteratorVSgMd, &_s17PoirotSchematizer0B0V23RepeatableFieldIteratorVSgMR);
  v5 = *(v4 - 8);
  (*(v5 + 16))(&v1[v3], a1, v4);
  __swift_storeEnumTagSinglePayload(&v1[v3], 0, 1, v4);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for BMPoirotSchematizerShim.BMPoirotRepeatedFieldEnumerator();
  v6 = objc_msgSendSuper2(&v8, sel_init);
  (*(v5 + 8))(a1, v4);
  return v6;
}

uint64_t BMPoirotSchematizerShim.BMPoirotRepeatedFieldEnumerator.nextObject()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17PoirotSchematizer8AnyValueOSgMd, _s17PoirotSchematizer8AnyValueOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v13[-v4];
  v6 = BMPoirotSchematizerShim.BMPoirotRepeatedFieldEnumerator.iterator.modify();
  v8 = v7;
  v9 = type metadata accessor for Schematizer.RepeatableFieldIterator();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9))
  {
    v6(v13, 0);
    v10 = type metadata accessor for AnyValue();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v10);
  }

  else
  {
    Schematizer.RepeatableFieldIterator.next()();
    v6(v13, 0);
  }

  type metadata accessor for BMPoirotSchematizerShim();
  static BMPoirotSchematizerShim.poirotValueToObjcValue(value:)(v5, a1);
  return _s10Foundation4UUIDVSgWOhTm_0(v5, &_s17PoirotSchematizer8AnyValueOSgMd, _s17PoirotSchematizer8AnyValueOSgMR);
}

id BMPoirotSchematizerShim.BMPoirotRepeatedFieldEnumerator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BMPoirotSchematizerShim.BMPoirotRepeatedFieldEnumerator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static BMPoirotSchematizerShim.searchValues(in:withFieldNumber:typeRawValue:error:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v31 = a5;
  v6 = type metadata accessor for Schematizer.RepeatableFieldIterator();
  v7 = OUTLINED_FUNCTION_2_1(v6);
  v29 = v8;
  v30 = v7;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - v14;
  v16 = type metadata accessor for TypeSchema();
  v17 = OUTLINED_FUNCTION_2_1(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13();
  static BMPoirotSchematizerShim.bmTypeToPoirotType(type:)(a4, v21 - v20);
  static Schematizer.makeRepeatableFieldIterator(in:withFieldNumber:type:)();
  v23 = v29;
  v22 = v30;
  (*(v29 + 16))(v13, v15, v30);
  v24 = objc_allocWithZone(type metadata accessor for BMPoirotSchematizerShim.BMPoirotRepeatedFieldEnumerator());
  v25 = BMPoirotSchematizerShim.BMPoirotRepeatedFieldEnumerator.init(iterator:)(v13);
  (*(v23 + 8))(v15, v22);
  v26 = OUTLINED_FUNCTION_1_22();
  v27(v26);
  return v25;
}

uint64_t type metadata accessor for BMPoirotSchematizerShim.BMPoirotRepeatedFieldEnumerator()
{
  result = type metadata singleton initialization cache for BMPoirotSchematizerShim.BMPoirotRepeatedFieldEnumerator;
  if (!type metadata singleton initialization cache for BMPoirotSchematizerShim.BMPoirotRepeatedFieldEnumerator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static BMPoirotSchematizerShim.convertedTypeCallback(convertedType:poirotType:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypeSchema();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v18 - v10;
  switch(a1)
  {
    case 0:
      return a1;
    case 1:
      (*(v5 + 104))(v18 - v10, *MEMORY[0x1E69C4EE0], v4);
      v12 = MEMORY[0x1865F5D20](a2, v11);
      (*(v5 + 8))(v11, v4);
      v13 = closure #1 in static BMPoirotSchematizerShim.convertedTypeCallback(convertedType:poirotType:);
      if ((v12 & 1) == 0)
      {
        goto LABEL_14;
      }

      return v13;
    case 2:
      (*(v5 + 104))(v18 - v10, *MEMORY[0x1E69C4EE0], v4);
      v15 = MEMORY[0x1865F5D20](a2, v11);
      (*(v5 + 8))(v11, v4);
      if ((v15 & 1) == 0)
      {
        goto LABEL_14;
      }

      return 0;
    case 3:
      (*(v5 + 16))(v9, a2, v4);
      v16 = (*(v5 + 88))(v9, v4);
      v13 = closure #2 in static BMPoirotSchematizerShim.convertedTypeCallback(convertedType:poirotType:);
      if (v16 == *MEMORY[0x1E69C4EE8])
      {
        return v13;
      }

      if (v16 == *MEMORY[0x1E69C4ED8])
      {
        return 0;
      }

LABEL_14:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    case 4:
      (*(v5 + 104))(v18 - v10, *MEMORY[0x1E69C4EE8], v4);
      v14 = MEMORY[0x1865F5D20](a2, v11);
      (*(v5 + 8))(v11, v4);
      if ((v14 & 1) == 0)
      {
        goto LABEL_14;
      }

      return 0;
    default:
      v18[2] = 0;
      v18[3] = 0xE000000000000000;
      _StringGuts.grow(_:)(25);
      MEMORY[0x1865F6280](0xD000000000000017, 0x8000000184DDC450);
      v18[1] = a1;
      type metadata accessor for BMConvertedType();
      _print_unlocked<A, B>(_:_:)();
      goto LABEL_14;
  }
}

uint64_t closure #1 in static BMPoirotSchematizerShim.convertedTypeCallback(convertedType:poirotType:)@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v4 = type metadata accessor for AnyValue();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of AnyValue(a1, v7);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    *a2 = *v7 + 978307200.0;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }

  else
  {
    outlined destroy of AnyValue(v7);
    v9[0] = 0;
    v9[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(40);
    MEMORY[0x1865F6280](0xD000000000000026, 0x8000000184DDC560);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t closure #2 in static BMPoirotSchematizerShim.convertedTypeCallback(convertedType:poirotType:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AnyValue();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of AnyValue(a1, v16);
  if (swift_getEnumCaseMultiPayload() == 8)
  {
    v17 = *v16;
    v18 = v16[1];
    UUID.init(uuidString:)();

    if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if (one-time initialization token for SQL != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logging.SQL);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1848EE000, v20, v21, "Could not convert uuid string in BiomeSQL to UUID. Replacing with nil", v22, 2u);
        MEMORY[0x1865F7B70](v22, -1, -1);
      }

      v23 = a2;
      v24 = 1;
    }

    else
    {
      (*(v9 + 32))(v12, v7, v8);
      v32 = UUID.uuid.getter();
      v33 = v25;
      v26 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(&v32, &v34);
      v28 = v27;
      (*(v9 + 8))(v12, v8);
      *a2 = v26;
      a2[1] = v28;
      swift_storeEnumTagMultiPayload();
      v23 = a2;
      v24 = 0;
    }

    result = __swift_storeEnumTagSinglePayload(v23, v24, 1, v13);
    v30 = *MEMORY[0x1E69E9840];
  }

  else
  {
    outlined destroy of AnyValue(v16);
    v32 = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);
    MEMORY[0x1865F6280](0xD000000000000024, 0x8000000184DDC590);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = Data.InlineData.init(_:)();
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = MEMORY[0x1865F5AC0]();
    }

    else
    {
      v6 = MEMORY[0x1865F5AD0]();
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v6;
}

uint64_t static BMPoirotSchematizerShim.setSQLiteValue(in:withFieldNumber:typeRawValue:convertedTypeRawValue:sqliteContext:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(id, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = type metadata accessor for TypeSchema();
  v11 = OUTLINED_FUNCTION_2_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  v18 = v17 - v16;
  v19 = [a1 bytes];
  v20 = [a1 length];
  if (v19)
  {
    v21 = &v20[v19];
  }

  else
  {
    v21 = 0;
  }

  static BMPoirotSchematizerShim.bmTypeToPoirotType(type:)(a3, v18);
  v22 = static BMPoirotSchematizerShim.convertedTypeCallback(convertedType:poirotType:)(a4, v18);
  a6(v19, v21, a2, v18, v22, v23, a5);
  (*(v13 + 8))(v18, v10);
  return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed AnyValue) -> (@out AnyValue?))?(v22);
}

id BMPoirotSchematizerShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BMPoirotSchematizerShim.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BMPoirotSchematizerShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata completion function for BMPoirotSchematizerShim.BMPoirotRepeatedFieldEnumerator()
{
  type metadata accessor for Schematizer.RepeatableFieldIterator?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Schematizer.RepeatableFieldIterator?()
{
  if (!lazy cache variable for type metadata for Schematizer.RepeatableFieldIterator?)
  {
    type metadata accessor for Schematizer.RepeatableFieldIterator();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Schematizer.RepeatableFieldIterator?);
    }
  }
}

unint64_t type metadata accessor for NSError()
{
  result = lazy cache variable for type metadata for NSError;
  if (!lazy cache variable for type metadata for NSError)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSError);
  }

  return result;
}

uint64_t specialized == infix<A>(_:_:)()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t static BMDatabaseInitializer.initializeSQLDatabase(identifier:)(uint64_t a1, unint64_t a2)
{
  __dst[16] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for URL.DirectoryHint();
  v5 = OUTLINED_FUNCTION_2_1(v4);
  v118 = v6;
  v119 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v104 - v13;
  v15 = type metadata accessor for URL();
  v16 = OUTLINED_FUNCTION_2_1(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v23 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v104 - v24;
  if (one-time initialization token for initializedLibrary != -1)
  {
LABEL_45:
    OUTLINED_FUNCTION_13_0();
  }

  v26 = static UnifiedLibrary.Library.lookupDatabaseResource(identifier:)(a1, a2);
  if (!v26)
  {
    if (one-time initialization token for compute != -1)
    {
      OUTLINED_FUNCTION_4_10();
    }

    v67 = type metadata accessor for Logger();
    __swift_project_value_buffer(v67, static Logging.compute);

    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      __dst[0] = v71;
      *v70 = 136315138;
      *(v70 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, __dst);
      OUTLINED_FUNCTION_39_2(&dword_1848EE000, v72, v73, "Error initializing database: could not find %s in IntelligencePlatformLibrary");
      __swift_destroy_boxed_opaque_existential_1Tm(v71);
      OUTLINED_FUNCTION_33_3();
      OUTLINED_FUNCTION_33_3();
    }

    goto LABEL_21;
  }

  v28 = v26;
  v114 = v10;
  v115 = v25;
  v110 = v27;
  v111 = v18;
  type metadata accessor for BMResourceSpecifier();

  v120 = a1;
  v29 = BMResourceSpecifier.__allocating_init(type:name:)(3, a1, a2);
  v30 = [objc_opt_self() sharedInstance];
  __dst[0] = 0;
  v31 = [v30 openContainerForResource:v29 mode:3 error:__dst];

  v32 = __dst[0];
  v116 = v29;
  v117 = v31;
  if (v31)
  {
    v107 = v28;
    v33 = objc_opt_self();
    v34 = v32;
    v35 = v31;
    v36 = [v33 pathForResource:v29 inContainer:v35];
    v109 = v35;

    if (v36)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v113 = v23;

      __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
      LODWORD(v117) = *MEMORY[0x1E6968F70];
      v108 = v15;
      v38 = v118;
      v37 = v119;
      v15 = (v118 + 104);
      v112 = *(v118 + 13);
      v39 = v114;
      v112(v114);
      v23 = v113;
      URL.init(filePath:directoryHint:relativeTo:)();
      __dst[0] = 0x336574696C71732ELL;
      __dst[1] = 0xE800000000000000;
      v121 = v120;
      v122 = a2;

      v121 = String.init<A>(_:)();
      v122 = v40;
      String.append<A>(contentsOf:)();
      __dst[0] = v121;
      __dst[1] = v122;
      (v112)(v39, v117, v37);
      v41 = v108;
      lazy protocol witness table accessor for type String and conformance String();
      v42 = v115;
      URL.appending<A>(path:directoryHint:)();
      (*(v38 + 1))(v39, v37);

      v43 = [objc_opt_self() defaultManager];
      v44 = URL.path.getter();
      v45 = MEMORY[0x1865F6160](v44);

      v46 = [v43 fileExistsAtPath_];

      if (v46)
      {
LABEL_41:

        v102 = *(v111 + 8);
        v102(v23, v41);
        v102(v42, v41);
        result = 1;
        goto LABEL_22;
      }

      a2 = v110;
      v47 = *(v110 + 8);
      v48 = *(v47 + 8);
      v10 = *MEMORY[0x1E698E960];
      a1 = v107;
      v49 = v48(v107, v47);
      v51 = v50;
      v52 = type metadata accessor for SQLDatabaseHandle();
      v53 = *(v52 + 48);
      v54 = *(v52 + 52);
      swift_allocObject();
      v55 = SQLDatabaseHandle.init(identifier:useCase:readOnly:)(v49, v51, v10, 0);
      v112 = 0;
      v105 = v55;
      v88 = (*(a2 + 48))(a1, a2);
      v110 = *(v88 + 16);
      if (!v110)
      {
LABEL_40:

        v41 = v108;
        v42 = v115;
        goto LABEL_41;
      }

      v89 = 0;
      v106 = v88;
      v107 = v88 + 32;
      while (2)
      {
        if (v89 < *(v88 + 16))
        {
          v90 = (v107 + 16 * v89);
          v18 = *v90;
          v25 = v90[1];
          v114 = v89 + 1;
          v91 = static UnifiedLibrary.Library.orderedDataflows.getter();
          v14 = 0;
          v92 = *(v91 + 16);
          v119 = v25;
          v120 = v92;
          v118 = v25 + 16;
          v93 = 32;
          while (1)
          {
            if (v120 == v14)
            {

              v23 = v113;
              goto LABEL_39;
            }

            if (v14 >= *(v91 + 16))
            {
              __break(1u);
              goto LABEL_45;
            }

            a2 = v91;
            v15 = v93;
            memcpy(__dst, (v91 + v93), 0x80uLL);
            v25 = __dst[13];
            v117 = __dst[12];
            v94 = __dst[0];
            a1 = __dst[1];
            v23 = v119;
            v95 = *(v119 + 2);
            outlined init with copy of Dataflow(__dst, &v121);
            v96 = v95(v18, v23);
            v10 = v97;
            if (v94 == v96 && a1 == v97)
            {
              break;
            }

            v99 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v99)
            {
              goto LABEL_37;
            }

            outlined destroy of Dataflow(__dst);
            v93 = v15 + 128;
            ++v14;
            v91 = a2;
          }

LABEL_37:

          v10 = v25;

          outlined destroy of Dataflow(__dst);
          v121 = v105;
          v100._countAndFlagsBits = v117;
          v100._object = v25;
          SQLDatabase.execute(statement:)(v100);
          v112 = v101;
          v23 = v113;
          if (v101)
          {

            v103 = OUTLINED_FUNCTION_29_4();
            v121(v103);
            (v121)(v115, v101);

            if (one-time initialization token for compute != -1)
            {
              OUTLINED_FUNCTION_4_10();
            }

            v56 = type metadata accessor for Logger();
            __swift_project_value_buffer(v56, static Logging.compute);
            v57 = v112;
            v58 = v112;
            v59 = Logger.logObject.getter();
            v60 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v59, v60))
            {
              v61 = swift_slowAlloc();
              v62 = swift_slowAlloc();
              __dst[0] = v62;
              *v61 = 136315138;
              v63 = v112;
              swift_getErrorValue();
              v64 = Error.localizedDescription.getter();
              v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, __dst);

              *(v61 + 4) = v66;
              _os_log_impl(&dword_1848EE000, v59, v60, "Error initializing database: %s", v61, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v62);
              OUTLINED_FUNCTION_33_3();
              OUTLINED_FUNCTION_33_3();
            }

            else
            {
            }

            goto LABEL_21;
          }

LABEL_39:
          v89 = v114;
          v88 = v106;
          if (v114 != v110)
          {
            continue;
          }

          goto LABEL_40;
        }

        break;
      }

      __break(1u);
      goto LABEL_47;
    }
  }

  else
  {
    v74 = __dst[0];
    v75 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  if (one-time initialization token for compute != -1)
  {
LABEL_47:
    OUTLINED_FUNCTION_4_10();
  }

  v76 = type metadata accessor for Logger();
  __swift_project_value_buffer(v76, static Logging.compute);

  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.error.getter();

  v79 = os_log_type_enabled(v77, v78);
  v80 = v120;
  v81 = v117;
  if (v79)
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    __dst[0] = v83;
    *v82 = 136315138;
    *(v82 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, a2, __dst);
    OUTLINED_FUNCTION_39_2(&dword_1848EE000, v84, v85, "Error initializing database: could not find determine database directory path for %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v83);
    OUTLINED_FUNCTION_33_3();
    OUTLINED_FUNCTION_33_3();
  }

LABEL_21:
  result = 0;
LABEL_22:
  v87 = *MEMORY[0x1E69E9840];
  return result;
}

Swift::Int one-time initialization function for streamsSubscribedByNonLibraryViews()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_184D2A670;
  *(inited + 40) = 0xEA0000000000746ELL;
  *(inited + 48) = 0xD000000000000013;
  *(inited + 56) = 0x8000000184DDC690;
  *(inited + 64) = 0xD000000000000019;
  *(inited + 72) = 0x8000000184DDC6B0;
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x8000000184DDC6D0;
  *(inited + 96) = 0xD000000000000021;
  *(inited + 104) = 0x8000000184DDC6F0;
  *(inited + 112) = 0xD000000000000027;
  *(inited + 120) = 0x8000000184DDC720;
  *(inited + 128) = 0xD00000000000001ALL;
  *(inited + 136) = 0x8000000184DDC750;
  *(inited + 144) = 0xD00000000000001BLL;
  *(inited + 152) = 0x8000000184DDC770;
  *(inited + 160) = 0xD000000000000011;
  *(inited + 168) = 0x8000000184DDC790;
  *(inited + 176) = 0x412E6E6F69746F4DLL;
  *(inited + 184) = 0xEF79746976697463;
  *(inited + 192) = 0xD000000000000012;
  *(inited + 200) = 0x8000000184DDC7B0;
  *(inited + 208) = 0xD000000000000026;
  *(inited + 216) = 0x8000000184DDC7D0;
  *(inited + 224) = 0xD000000000000023;
  *(inited + 232) = 0x8000000184DDC800;
  *(inited + 240) = 0xD00000000000001ALL;
  *(inited + 248) = 0x8000000184DDC830;
  *(inited + 256) = 0xD000000000000021;
  *(inited + 264) = 0x8000000184DDC850;
  *(inited + 272) = 0xD00000000000001DLL;
  *(inited + 280) = 0x8000000184DDC880;
  *(inited + 288) = 0xD00000000000001BLL;
  *(inited + 296) = 0x8000000184DDC8A0;
  *(inited + 304) = 0x6172542E65676153;
  *(inited + 312) = 0xEF7470697263736ELL;
  *(inited + 320) = 0xD000000000000016;
  *(inited + 328) = 0x8000000184DDC8C0;
  *(inited + 32) = 0x65746E492E707041;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v1 = static _SetStorage.allocate(capacity:)();
  v2 = 0;
  v3 = v1 + 56;
  while (2)
  {
    v4 = (inited + 32 + 16 * v2);
    v6 = *v4;
    v5 = v4[1];
    ++v2;
    v7 = *(v1 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v9 = ~(-1 << *(v1 + 32));
    while (1)
    {
      v10 = result & v9;
      v11 = (result & v9) >> 6;
      v12 = *(v3 + 8 * v11);
      v13 = 1 << (result & v9);
      if ((v13 & v12) == 0)
      {
        break;
      }

      v14 = (*(v1 + 48) + 16 * v10);
      v15 = *v14 == v6 && v14[1] == v5;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        goto LABEL_13;
      }

      result = v10 + 1;
    }

    *(v3 + 8 * v11) = v13 | v12;
    v16 = (*(v1 + 48) + 16 * v10);
    *v16 = v6;
    v16[1] = v5;
    v17 = *(v1 + 16);
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      __break(1u);
      return result;
    }

    *(v1 + 16) = v19;
LABEL_13:
    if (v2 != 19)
    {
      continue;
    }

    break;
  }

  swift_setDeallocating();
  result = specialized _ContiguousArrayStorage.__deallocating_deinit();
  static BMDatabaseInitializer.streamsSubscribedByNonLibraryViews = v1;
  return result;
}

uint64_t static BMDatabaseInitializer.viewSubscribedStreams()()
{
  if (one-time initialization token for initializedLibrary != -1)
  {
LABEL_35:
    OUTLINED_FUNCTION_13_0();
  }

  v0 = static UnifiedLibrary.Library.sqlViewToBiomeStreamMapping.getter();
  v1 = v0;
  v2 = v0 + 64;
  v3 = 1 << *(v0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v0 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    while (1)
    {
      if (!v5)
      {
        while (1)
        {
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          if (v9 >= v6)
          {
            goto LABEL_21;
          }

          v5 = *(v2 + 8 * v9);
          ++v7;
          if (v5)
          {
            v7 = v9;
            goto LABEL_10;
          }
        }

        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

LABEL_10:
      v10 = (v7 << 9) | (8 * __clz(__rbit64(v5)));
      v11 = *(*(v1 + 56) + v10);
      v12 = *(v11 + 16);
      v13 = v8[2];
      if (__OFADD__(v13, v12))
      {
        goto LABEL_32;
      }

      v14 = *(*(v1 + 56) + v10);

      if (!swift_isUniquelyReferenced_nonNull_native() || v13 + v12 > v8[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v15;
      }

      v5 &= v5 - 1;
      if (!*(v11 + 16))
      {
        break;
      }

      if ((v8[3] >> 1) - v8[2] < v12)
      {
        goto LABEL_33;
      }

      swift_arrayInitWithCopy();

      if (v12)
      {
        v16 = v8[2];
        v17 = __OFADD__(v16, v12);
        v18 = v16 + v12;
        if (v17)
        {
          goto LABEL_34;
        }

        v8[2] = v18;
      }
    }
  }

  while (!v12);
  __break(1u);
LABEL_21:

  v19 = 0;
  v28 = MEMORY[0x1865F6400](v8[2], MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v20 = v8[2];
  v21 = v8 + 5;
  while (v20 != v19)
  {
    if (v19 >= v8[2])
    {
      goto LABEL_31;
    }

    ++v19;
    v23 = *(v21 - 1);
    v22 = *v21;

    specialized Set._Variant.insert(_:)(&v27, v23, v22);

    v21 += 2;
  }

  v24 = v28;
  if (one-time initialization token for streamsSubscribedByNonLibraryViews != -1)
  {
    swift_once();
  }

  return specialized Set.union<A>(_:)(v25, v24);
}

uint64_t specialized Set.union<A>(_:)(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    specialized Set._Variant.insert(_:)(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

id BMDatabaseInitializer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BMDatabaseInitializer.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BMDatabaseInitializer();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BMDatabaseInitializer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BMDatabaseInitializer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Int specialized _SwiftNewtypeWrapper<>._rawHashValue(seed:)()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t specialized UnsafeMutablePointer.assign(repeating:count:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_184D2A680;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL specialized Set._Variant.insert(_:)(void *a1, void *a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  v7 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v4 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      v17 = *v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = *v23;
      v19 = a2;
      specialized _NativeSet.insertNew(_:at:isUnique:)(v19, v8, isUniquelyReferenced_nonNull_native);
      *v23 = v25;
      *a1 = v19;
      return v9 == 0;
    }

    v10 = *(*(v4 + 48) + 8 * v8);
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
    if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
    {

      goto LABEL_12;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      break;
    }

    v6 = v8 + 1;
  }

LABEL_12:
  v20 = *(*(v4 + 48) + 8 * v8);
  *a1 = v20;
  v21 = v20;
  return v9 == 0;
}

BOOL specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *v3;
  v8 = *(*v3 + 16);
  v9 = *(*v3 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    v10 = *v3;
    goto LABEL_4;
  }

  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo18BMStreamIdentifieraGMd, &_ss11_SetStorageCySo18BMStreamIdentifieraGMR);
    v14 = static _SetStorage.resize(original:capacity:move:)();
    v10 = v14;
    if (*(v7 + 16))
    {
      v87 = v7;
      v15 = 0;
      v16 = (v7 + 56);
      v17 = 1 << *(v7 + 32);
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      else
      {
        v18 = -1;
      }

      v19 = v18 & *(v7 + 56);
      v20 = (v17 + 63) >> 6;
      v21 = v14 + 56;
      if (v19)
      {
        while (1)
        {
          v22 = __clz(__rbit64(v19));
          v19 &= v19 - 1;
LABEL_18:
          v25 = *(v10 + 40);
          v89 = *(*(v7 + 48) + 8 * (v22 | (v15 << 6)));
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          Hasher.init(_seed:)();
          String.hash(into:)();
          v26 = Hasher._finalize()();

          v27 = -1 << *(v10 + 32);
          v28 = v26 & ~v27;
          v29 = v28 >> 6;
          if (((-1 << v28) & ~*(v21 + 8 * (v28 >> 6))) == 0)
          {
            break;
          }

          v30 = __clz(__rbit64((-1 << v28) & ~*(v21 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
          v7 = v87;
LABEL_27:
          *(v21 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
          *(*(v10 + 48) + 8 * v30) = v89;
          ++*(v10 + 16);
          if (!v19)
          {
            goto LABEL_13;
          }
        }

        v31 = 0;
        v32 = (63 - v27) >> 6;
        v7 = v87;
        while (++v29 != v32 || (v31 & 1) == 0)
        {
          v33 = v29 == v32;
          if (v29 == v32)
          {
            v29 = 0;
          }

          v31 |= v33;
          v34 = *(v21 + 8 * v29);
          if (v34 != -1)
          {
            v30 = __clz(__rbit64(~v34)) + (v29 << 6);
            goto LABEL_27;
          }
        }

LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

LABEL_13:
      v23 = v15;
      while (1)
      {
        v15 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          __break(1u);
          goto LABEL_84;
        }

        if (v15 >= v20)
        {
          break;
        }

        v24 = v16[v15];
        ++v23;
        if (v24)
        {
          v22 = __clz(__rbit64(v24));
          v19 = (v24 - 1) & v24;
          goto LABEL_18;
        }
      }

      v51 = 1 << *(v7 + 32);
      if (v51 >= 64)
      {
        specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v51 + 63) >> 6, v16);
      }

      else
      {
        *v16 = -1 << v51;
      }

      *(v7 + 16) = 0;
    }

    goto LABEL_75;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo18BMStreamIdentifieraGMd, &_ss11_SetStorageCySo18BMStreamIdentifieraGMR);
  if (v9 <= v8)
  {
    v52 = static _SetStorage.resize(original:capacity:move:)();
    v10 = v52;
    if (*(v7 + 16))
    {
      v88 = v7;
      v53 = 0;
      v56 = *(v7 + 56);
      v55 = v7 + 56;
      v54 = v56;
      v57 = 1 << *(v55 - 24);
      if (v57 < 64)
      {
        v58 = ~(-1 << v57);
      }

      else
      {
        v58 = -1;
      }

      v59 = v58 & v54;
      v60 = (v57 + 63) >> 6;
      v61 = v52 + 56;
      if (v59)
      {
        while (1)
        {
          v62 = __clz(__rbit64(v59));
          v90 = (v59 - 1) & v59;
LABEL_61:
          v65 = *(*(v88 + 48) + 8 * (v62 | (v53 << 6)));
          v66 = *(v10 + 40);
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          Hasher.init(_seed:)();
          v67 = v65;
          String.hash(into:)();
          v68 = Hasher._finalize()();

          v69 = -1 << *(v10 + 32);
          v70 = v68 & ~v69;
          v71 = v70 >> 6;
          if (((-1 << v70) & ~*(v61 + 8 * (v70 >> 6))) == 0)
          {
            break;
          }

          v72 = __clz(__rbit64((-1 << v70) & ~*(v61 + 8 * (v70 >> 6)))) | v70 & 0x7FFFFFFFFFFFFFC0;
LABEL_70:
          *(v61 + ((v72 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v72;
          *(*(v10 + 48) + 8 * v72) = v67;
          ++*(v10 + 16);
          v59 = v90;
          if (!v90)
          {
            goto LABEL_56;
          }
        }

        v73 = 0;
        v74 = (63 - v69) >> 6;
        while (++v71 != v74 || (v73 & 1) == 0)
        {
          v75 = v71 == v74;
          if (v71 == v74)
          {
            v71 = 0;
          }

          v73 |= v75;
          v76 = *(v61 + 8 * v71);
          if (v76 != -1)
          {
            v72 = __clz(__rbit64(~v76)) + (v71 << 6);
            goto LABEL_70;
          }
        }

        goto LABEL_87;
      }

LABEL_56:
      v63 = v53;
      while (1)
      {
        v53 = v63 + 1;
        if (__OFADD__(v63, 1))
        {
          break;
        }

        if (v53 >= v60)
        {
          goto LABEL_75;
        }

        v64 = *(v55 + 8 * v53);
        ++v63;
        if (v64)
        {
          v62 = __clz(__rbit64(v64));
          v90 = (v64 - 1) & v64;
          goto LABEL_61;
        }
      }

LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

LABEL_75:

    *v4 = v10;
    v77 = *(v10 + 40);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v78 = Hasher._finalize()();

    v79 = ~(-1 << *(v10 + 32));
    while (1)
    {
      a2 = v78 & v79;
      if (((*(v10 + 56 + (((v78 & v79) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v78 & v79)) & 1) == 0)
      {
        goto LABEL_4;
      }

      type metadata accessor for BMStreamIdentifier();
      v80 = *(*(v10 + 48) + 8 * a2);
      v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v83 = v82;
      if (v81 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v83 == v84)
      {
        goto LABEL_89;
      }

      v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v86)
      {
        goto LABEL_90;
      }

      v78 = a2 + 1;
    }
  }

  v35 = static _SetStorage.copy(original:)();
  v10 = v35;
  if (*(v7 + 16))
  {
    v36 = (v35 + 56);
    v37 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v7 || v36 >= v7 + 56 + 8 * v37)
    {
      memmove(v36, (v7 + 56), 8 * v37);
    }

    v39 = 0;
    *(v10 + 16) = *(v7 + 16);
    v40 = 1 << *(v7 + 32);
    v41 = *(v7 + 56);
    v42 = -1;
    if (v40 < 64)
    {
      v42 = ~(-1 << v40);
    }

    v43 = v42 & v41;
    v44 = (v40 + 63) >> 6;
    if ((v42 & v41) != 0)
    {
      do
      {
        v45 = __clz(__rbit64(v43));
        v43 &= v43 - 1;
LABEL_46:
        v48 = v45 | (v39 << 6);
        v49 = *(*(v7 + 48) + 8 * v48);
        *(*(v10 + 48) + 8 * v48) = v49;
        v50 = v49;
      }

      while (v43);
    }

    v46 = v39;
    while (1)
    {
      v39 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        goto LABEL_85;
      }

      if (v39 >= v44)
      {
        break;
      }

      v47 = *(v7 + 56 + 8 * v39);
      ++v46;
      if (v47)
      {
        v45 = __clz(__rbit64(v47));
        v43 = (v47 - 1) & v47;
        goto LABEL_46;
      }
    }
  }

  *v3 = v10;
LABEL_4:
  *(v10 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v10 + 48) + 8 * a2) = v6;
  v11 = *(v10 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (!v12)
  {
    *(v10 + 16) = v13;
    return result;
  }

LABEL_88:
  __break(1u);
LABEL_89:

LABEL_90:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *v4;
  v10 = *(*v4 + 16);
  v11 = *(*v4 + 24);
  if (v11 > v10 && (a4 & 1) != 0)
  {
    v12 = *v4;
    goto LABEL_4;
  }

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
    v17 = static _SetStorage.resize(original:capacity:move:)();
    v12 = v17;
    if (*(v9 + 16))
    {
      v95 = v4;
      v18 = v9;
      v19 = 0;
      v97 = v18;
      v22 = *(v18 + 56);
      v21 = (v18 + 56);
      v20 = v22;
      v23 = 1 << *(v21 - 24);
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      else
      {
        v24 = -1;
      }

      v25 = v24 & v20;
      v26 = (v23 + 63) >> 6;
      v27 = v17 + 56;
      if ((v24 & v20) != 0)
      {
        while (1)
        {
          v28 = __clz(__rbit64(v25));
          v25 &= v25 - 1;
LABEL_18:
          v31 = (*(v97 + 48) + 16 * (v28 | (v19 << 6)));
          v32 = *v31;
          v33 = v31[1];
          v34 = *(v12 + 40);
          Hasher.init(_seed:)();
          String.hash(into:)();
          v35 = Hasher._finalize()();
          v36 = -1 << *(v12 + 32);
          v37 = v35 & ~v36;
          v38 = v37 >> 6;
          if (((-1 << v37) & ~*(v27 + 8 * (v37 >> 6))) == 0)
          {
            break;
          }

          v39 = __clz(__rbit64((-1 << v37) & ~*(v27 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
          *(v27 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
          v44 = (*(v12 + 48) + 16 * v39);
          *v44 = v32;
          v44[1] = v33;
          ++*(v12 + 16);
          if (!v25)
          {
            goto LABEL_13;
          }
        }

        v40 = 0;
        v41 = (63 - v36) >> 6;
        while (++v38 != v41 || (v40 & 1) == 0)
        {
          v42 = v38 == v41;
          if (v38 == v41)
          {
            v38 = 0;
          }

          v40 |= v42;
          v43 = *(v27 + 8 * v38);
          if (v43 != -1)
          {
            v39 = __clz(__rbit64(~v43)) + (v38 << 6);
            goto LABEL_27;
          }
        }

LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

LABEL_13:
      v29 = v19;
      while (1)
      {
        v19 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          __break(1u);
          goto LABEL_87;
        }

        if (v19 >= v26)
        {
          break;
        }

        v30 = v21[v19];
        ++v29;
        if (v30)
        {
          v28 = __clz(__rbit64(v30));
          v25 = (v30 - 1) & v30;
          goto LABEL_18;
        }
      }

      v62 = 1 << *(v97 + 32);
      if (v62 >= 64)
      {
        specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v62 + 63) >> 6, v21);
      }

      else
      {
        *v21 = -1 << v62;
      }

      v5 = v95;
      *(v97 + 16) = 0;
    }

    goto LABEL_76;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  if (v11 <= v10)
  {
    v63 = static _SetStorage.resize(original:capacity:move:)();
    v12 = v63;
    if (*(v9 + 16))
    {
      v96 = v4;
      v64 = v9;
      v65 = 0;
      v98 = v64;
      v68 = *(v64 + 56);
      v67 = v64 + 56;
      v66 = v68;
      v69 = 1 << *(v67 - 24);
      if (v69 < 64)
      {
        v70 = ~(-1 << v69);
      }

      else
      {
        v70 = -1;
      }

      v71 = v70 & v66;
      v72 = (v69 + 63) >> 6;
      v73 = v63 + 56;
      if ((v70 & v66) != 0)
      {
        while (1)
        {
          v74 = __clz(__rbit64(v71));
          v71 &= v71 - 1;
LABEL_61:
          v77 = (*(v98 + 48) + 16 * (v74 | (v65 << 6)));
          v78 = *v77;
          v79 = v77[1];
          v80 = *(v12 + 40);
          Hasher.init(_seed:)();

          String.hash(into:)();
          v81 = Hasher._finalize()();
          v82 = -1 << *(v12 + 32);
          v83 = v81 & ~v82;
          v84 = v83 >> 6;
          if (((-1 << v83) & ~*(v73 + 8 * (v83 >> 6))) == 0)
          {
            break;
          }

          v85 = __clz(__rbit64((-1 << v83) & ~*(v73 + 8 * (v83 >> 6)))) | v83 & 0x7FFFFFFFFFFFFFC0;
LABEL_70:
          *(v73 + ((v85 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v85;
          v90 = (*(v12 + 48) + 16 * v85);
          *v90 = v78;
          v90[1] = v79;
          ++*(v12 + 16);
          if (!v71)
          {
            goto LABEL_56;
          }
        }

        v86 = 0;
        v87 = (63 - v82) >> 6;
        while (++v84 != v87 || (v86 & 1) == 0)
        {
          v88 = v84 == v87;
          if (v84 == v87)
          {
            v84 = 0;
          }

          v86 |= v88;
          v89 = *(v73 + 8 * v84);
          if (v89 != -1)
          {
            v85 = __clz(__rbit64(~v89)) + (v84 << 6);
            goto LABEL_70;
          }
        }

        goto LABEL_90;
      }

LABEL_56:
      v75 = v65;
      while (1)
      {
        v65 = v75 + 1;
        if (__OFADD__(v75, 1))
        {
          break;
        }

        if (v65 >= v72)
        {

          v5 = v96;
          goto LABEL_78;
        }

        v76 = *(v67 + 8 * v65);
        ++v75;
        if (v76)
        {
          v74 = __clz(__rbit64(v76));
          v71 = (v76 - 1) & v76;
          goto LABEL_61;
        }
      }

LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

LABEL_76:

LABEL_78:
    *v5 = v12;
    v91 = *(v12 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v92 = ~(-1 << *(v12 + 32));
    while (1)
    {
      a3 = result & v92;
      if (((*(v12 + 56 + (((result & v92) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v92)) & 1) == 0)
      {
        goto LABEL_4;
      }

      v93 = (*(v12 + 48) + 16 * a3);
      v94 = *v93 == v8 && v93[1] == a2;
      if (v94 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_92;
      }

      result = a3 + 1;
    }
  }

  v45 = static _SetStorage.copy(original:)();
  v12 = v45;
  if (*(v9 + 16))
  {
    v46 = (v45 + 56);
    v47 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v9 || v46 >= v9 + 56 + 8 * v47)
    {
      memmove(v46, (v9 + 56), 8 * v47);
    }

    v49 = 0;
    *(v12 + 16) = *(v9 + 16);
    v50 = 1 << *(v9 + 32);
    v51 = *(v9 + 56);
    v52 = -1;
    if (v50 < 64)
    {
      v52 = ~(-1 << v50);
    }

    v53 = v52 & v51;
    v54 = (v50 + 63) >> 6;
    if ((v52 & v51) != 0)
    {
      do
      {
        v55 = __clz(__rbit64(v53));
        v53 &= v53 - 1;
LABEL_46:
        v58 = v55 | (v49 << 6);
        v59 = (*(v9 + 48) + 16 * v58);
        v60 = v59[1];
        v61 = (*(v12 + 48) + 16 * v58);
        *v61 = *v59;
        v61[1] = v60;
      }

      while (v53);
    }

    v56 = v49;
    while (1)
    {
      v49 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        goto LABEL_88;
      }

      if (v49 >= v54)
      {
        break;
      }

      v57 = *(v9 + 56 + 8 * v49);
      ++v56;
      if (v57)
      {
        v55 = __clz(__rbit64(v57));
        v53 = (v57 - 1) & v57;
        goto LABEL_46;
      }
    }
  }

  *v4 = v12;
LABEL_4:
  *(v12 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v13 = (*(v12 + 48) + 16 * a3);
  *v13 = v8;
  v13[1] = a2;
  v14 = *(v12 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v12 + 16) = v16;
    return result;
  }

LABEL_91:
  __break(1u);
LABEL_92:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type SQLRawDataType and conformance SQLRawDataType(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static QueryPlannerMetadata.clearMetadata(materializedViewName:database:)()
{

  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_136_0();
  MEMORY[0x1865F6280]();
  _StringGuts.grow(_:)(23);

  v0 = OUTLINED_FUNCTION_35_3();
  MEMORY[0x1865F6280](v0);

  OUTLINED_FUNCTION_52();
  String.utf8CString.getter();
  OUTLINED_FUNCTION_13_1();
  v6 = sqlite3_exec(v1, v2, v3, v4, v5);

  if (!v6)
  {

    static KeyedAggregationMetadataCache.tableName(materializedViewName:)();
    OUTLINED_FUNCTION_96_2();
    OUTLINED_FUNCTION_10_7();
    _StringGuts.grow(_:)(23);

    v7 = OUTLINED_FUNCTION_35_3();
    MEMORY[0x1865F6280](v7);

    OUTLINED_FUNCTION_52();
    String.utf8CString.getter();
    OUTLINED_FUNCTION_13_1();
    v13 = sqlite3_exec(v8, v9, v10, v11, v12);

    if (!v13)
    {

      static KeyedFirstMatchingRecordCache.tableName(materializedViewName:)();
      OUTLINED_FUNCTION_96_2();
      OUTLINED_FUNCTION_10_7();
      _StringGuts.grow(_:)(23);

      v14 = OUTLINED_FUNCTION_35_3();
      MEMORY[0x1865F6280](v14);

      OUTLINED_FUNCTION_52();
      String.utf8CString.getter();
      OUTLINED_FUNCTION_13_1();
      v20 = sqlite3_exec(v15, v16, v17, v18, v19);

      if (!v20)
      {
      }
    }
  }

  v21 = OUTLINED_FUNCTION_108_1();
  swift_getErrorValue();
  Error.localizedDescription.getter();

  lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_13_1();
  v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v24 = v23;

  lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
  swift_allocError();
  *v25 = 0xD000000000000015;
  *(v25 + 8) = 0x8000000184DDBE10;
  *(v25 + 16) = v22;
  *(v25 + 24) = v24;
  *(v25 + 32) = 1;
  return swift_willThrow();
}

unint64_t MetadataSQLError.description.getter()
{
  v0 = type metadata accessor for AggregationFunction.AggregationType();
  v1 = OUTLINED_FUNCTION_2_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13();
  v8 = v7 - v6;
  v9 = type metadata accessor for MetadataSQLError(0);
  v10 = OUTLINED_FUNCTION_12(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13();
  v15 = (v14 - v13);
  v16 = OUTLINED_FUNCTION_132_0();
  _s12BiomeStreams13StorableValueOWOcTm_0(v16, v17);
  OUTLINED_FUNCTION_29_5();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v51 = *v15;
      v52 = v15[1];
      OUTLINED_FUNCTION_10_7();
      _StringGuts.grow(_:)(93);
      OUTLINED_FUNCTION_55_1();
      OUTLINED_FUNCTION_61_1();
      MEMORY[0x1865F6280](v53 - 7, v54 | 0x8000000000000000);
      OUTLINED_FUNCTION_36_2();
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865F6280](v55);

      OUTLINED_FUNCTION_72_2();
      v22 = 0xD000000000000030;
      goto LABEL_12;
    case 2u:
      v35 = *v15;
      v36 = v15[1];
      OUTLINED_FUNCTION_10_7();
      _StringGuts.grow(_:)(115);
      OUTLINED_FUNCTION_55_1();
      MEMORY[0x1865F6280](0xD000000000000030, 0x8000000184DDCCB0);
      OUTLINED_FUNCTION_36_2();
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865F6280](v37);

      v21 = "s in the query (";
      v22 = 0xD00000000000003FLL;
      goto LABEL_8;
    case 3u:
      v39 = *v15;
      v40 = v15[1];
      OUTLINED_FUNCTION_10_7();
      _StringGuts.grow(_:)(43);

      OUTLINED_FUNCTION_45_2();
      v75 = v41 - 22;
      v42 = OUTLINED_FUNCTION_36_2();
      MEMORY[0x1865F6280](v42);

      v30 = 0x6F6E207361772022;
      v43 = 0xEF646E756F662074;
      goto LABEL_15;
    case 4u:
      v26 = *v15;
      v27 = v15[1];
      OUTLINED_FUNCTION_10_7();
      _StringGuts.grow(_:)(100);
      OUTLINED_FUNCTION_55_1();
      MEMORY[0x1865F6280](0xD000000000000021, 0x8000000184DDCC10);
      v28 = OUTLINED_FUNCTION_36_2();
      MEMORY[0x1865F6280](v28);

      v29 = "metadata field (";
      v30 = 0xD000000000000041;
      goto LABEL_14;
    case 5u:
      v57 = *v15;
      v58 = v15[1];
      OUTLINED_FUNCTION_10_7();
      _StringGuts.grow(_:)(81);
      OUTLINED_FUNCTION_55_1();
      MEMORY[0x1865F6280](0xD000000000000013, 0x8000000184DDCBB0);
      v59 = OUTLINED_FUNCTION_36_2();
      MEMORY[0x1865F6280](v59);

      v29 = "The record field (";
      v30 = 0xD00000000000003CLL;
LABEL_14:
      v43 = v29 | 0x8000000000000000;
LABEL_15:
      MEMORY[0x1865F6280](v30, v43);
      return v75;
    case 6u:
      (*(v3 + 32))(v8, v15, v0);
      OUTLINED_FUNCTION_10_7();
      _StringGuts.grow(_:)(37);
      OUTLINED_FUNCTION_55_1();
      OUTLINED_FUNCTION_61_1();
      MEMORY[0x1865F6280](v60 - 13, v61 | 0x8000000000000000);
      _print_unlocked<A, B>(_:_:)();
      v25 = v75;
      (*(v3 + 8))(v8, v0);
      return v25;
    case 7u:
      v44 = *v15;
      v45 = v15[1];
      v46 = *(v15 + 16);
      OUTLINED_FUNCTION_10_7();
      _StringGuts.grow(_:)(27);
      OUTLINED_FUNCTION_61_1();
      MEMORY[0x1865F6280](v47 - 23, v48 | 0x8000000000000000);
      _print_unlocked<A, B>(_:_:)();
      v49 = OUTLINED_FUNCTION_36_2();
      outlined consume of DatabaseValue(v49, v50, v46);
      return v75;
    case 8u:
      v67 = *v15;
      v66 = v15[1];
      OUTLINED_FUNCTION_10_7();
      _StringGuts.grow(_:)(94);
      OUTLINED_FUNCTION_55_1();
      MEMORY[0x1865F6280](0xD000000000000045, 0x8000000184DDCAF0);
      v68 = MEMORY[0x1865F6370](v67, MEMORY[0x1E69E6158]);
      v70 = v69;

      MEMORY[0x1865F6280](v68, v70);

      MEMORY[0x1865F6280](0xD000000000000015, 0x8000000184DDCB40);
      v65 = OUTLINED_FUNCTION_35_3();
      goto LABEL_19;
    case 9u:
      v31 = *v15;
      v32 = v15[1];
      OUTLINED_FUNCTION_10_7();
      _StringGuts.grow(_:)(25);

      OUTLINED_FUNCTION_45_2();
      v75 = v33 - 25;
      v34 = OUTLINED_FUNCTION_36_2();
      MEMORY[0x1865F6280](v34);
      goto LABEL_20;
    case 0xAu:
      v62 = *v15;
      OUTLINED_FUNCTION_10_7();
      _StringGuts.grow(_:)(39);

      OUTLINED_FUNCTION_45_2();
      v75 = v63 - 11;
      v64 = type metadata accessor for StorableValue(0);
      v65 = v62;
LABEL_19:
      v71 = MEMORY[0x1865F6370](v65, v64);
      v73 = v72;

      MEMORY[0x1865F6280](v71, v73);
      goto LABEL_20;
    case 0xBu:
      OUTLINED_FUNCTION_61_1();
      return v24 | v23;
    case 0xCu:
      return 0xD000000000000040;
    default:
      v18 = *v15;
      v19 = v15[1];
      OUTLINED_FUNCTION_10_7();
      _StringGuts.grow(_:)(92);
      OUTLINED_FUNCTION_55_1();
      MEMORY[0x1865F6280](0xD00000000000002ALL, 0x8000000184DDCDA0);
      OUTLINED_FUNCTION_36_2();
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865F6280](v20);

      v21 = "oup by keys in the query (";
      v22 = 0xD00000000000002ELL;
LABEL_8:
      v38 = v21 | 0x8000000000000000;
LABEL_12:
      MEMORY[0x1865F6280](v22, v38);
      OUTLINED_FUNCTION_36_2();
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865F6280](v56);
LABEL_20:

      return v75;
  }
}

uint64_t _s12BiomeStreams30KeyedQueryPlannerMetadataCachePAAE06updateF3SQL20materializedViewName13groupBySchema07payloadO0SS3sql_SayAA13StorableValueOGAK3key_0S0Qz5valuet_tKc17argumentsFromItemtSS_SaySS06columnL0_0A9SQLParser11SQLDataTypeO8dataTypetG07PayloadO0QztKFZA2kL_AnOt_tKcfU2_AA0c19FirstMatchingRecordG0V_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v181 = a6;
  v188 = a5;
  v193 = a3;
  v207 = type metadata accessor for SQLDataType();
  Description = v207[-1].Description;
  v9 = *(Description + 8);
  MEMORY[0x1EEE9AC00](v207);
  v185 = &v180 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetSgMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v189 = &v180 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v192 = (&v180 - v15);
  v16 = type metadata accessor for StorableValue(0);
  v206 = *(v16 - 8);
  v17 = *(v206 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v182 = &v180 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v183 = &v180 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v191 = &v180 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v187 = &v180 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v190 = &v180 - v27;
  MEMORY[0x1EEE9AC00](v26);
  *&v210 = &v180 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v186 = &v180 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v180 - v33;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
  v195 = *(v202 - 8);
  v35 = *(v195 + 64);
  v36 = MEMORY[0x1EEE9AC00](v202);
  v201 = &v180 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v211 = &v180 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtMd, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtMR);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v194 = (&v180 - v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtSgMd, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtSgMR);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x1EEE9AC00](v42 - 8);
  v46 = &v180 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v48 = (&v180 - v47);
  v205 = v16;
  v49 = Dictionary.init(dictionaryLiteral:)();
  v203 = a1;
  v50 = *(a1 + 16);
  v196 = a4;
  v51 = *(a4 + 16);
  v52 = v50;
  if (v50 != v51)
  {

    type metadata accessor for MetadataSQLError(0);
    lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type MetadataSQLError and conformance MetadataSQLError, type metadata accessor for MetadataSQLError);
    swift_allocError();
    *v89 = v51;
    v89[1] = v52;
LABEL_46:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v53 = 0;
  v184 = Description;
  v204 = (Description + 32);
  v209 = v50;
  v199 = v39;
  v200 = v34;
  v197 = v48;
  v198 = v46;
  while (1)
  {
    v212 = v49;
    if (v53 == v52)
    {
      v54 = 1;
      v55 = v52;
    }

    else
    {
      if (v53 >= v52)
      {
        goto LABEL_76;
      }

      v55 = (v53 + 1);
      if (__OFADD__(v53, 1))
      {
        goto LABEL_77;
      }

      v56 = v194;
      v57 = v196 + ((*(v195 + 80) + 32) & ~*(v195 + 80)) + *(v195 + 72) * v53;
      v58 = *(v39 + 48);
      *v194 = v53;
      outlined init with copy of Date?(v57, v56 + v58, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
      outlined init with take of UUID?(v56, v46, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtMd, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtMR);
      v54 = 0;
    }

    __swift_storeEnumTagSinglePayload(v46, v54, 1, v39);
    outlined init with take of UUID?(v46, v48, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtSgMd, &_sSi6offset_SS10columnName_14BiomeSQLParser11SQLDataTypeO04dataG0t7elementtSgMR);
    if (__swift_getEnumTagSinglePayload(v48, 1, v39) == 1)
    {
      break;
    }

    v208 = v55;
    v59 = *v48;
    v60 = (v48 + *(v39 + 48));
    v61 = *v60;
    v62 = v60[1];
    v64 = v201;
    v63 = v202;
    v65 = *(v202 + 48);
    v66 = *v204;
    v67 = v207;
    (*v204)(&v201[v65], v60 + v65, v207);
    v68 = *(v63 + 48);
    v69 = v211;
    *v211 = v61;
    *(v69 + 8) = v62;
    v66((v69 + v68), &v64[v65], v67);
    if (v59 >= v209)
    {
      goto LABEL_74;
    }

    v70 = *(v206 + 72);
    _s12BiomeStreams13StorableValueOWOcTm_0(v203 + ((*(v206 + 80) + 32) & ~*(v206 + 80)) + v70 * v59, v210);
    v71 = v212;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v213 = v71;
    v73 = v61;
    v74 = specialized __RawDictionaryStorage.find<A>(_:)(v61, v62);
    v76 = v71[2];
    v77 = (v75 & 1) == 0;
    v78 = v76 + v77;
    if (__OFADD__(v76, v77))
    {
      goto LABEL_75;
    }

    v79 = v74;
    v80 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMd, &_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMR);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v78))
    {
      v81 = specialized __RawDictionaryStorage.find<A>(_:)(v73, v62);
      if ((v80 & 1) != (v82 & 1))
      {
        goto LABEL_86;
      }

      v79 = v81;
    }

    v49 = v213;
    if (v80)
    {
      v83 = v79 * v70;
      v84 = v200;
      _s12BiomeStreams13StorableValueOWObTm_1(v213[7] + v83, v200);
      _s12BiomeStreams13StorableValueOWObTm_1(v210, v49[7] + v83);
      __swift_storeEnumTagSinglePayload(v84, 0, 1, v205);
    }

    else
    {
      v213[(v79 >> 6) + 8] |= 1 << v79;
      v85 = (v49[6] + 16 * v79);
      *v85 = v73;
      v85[1] = v62;
      _s12BiomeStreams13StorableValueOWObTm_1(v210, v49[7] + v79 * v70);
      v86 = v49[2];
      v87 = __OFADD__(v86, 1);
      v88 = v86 + 1;
      if (v87)
      {
        goto LABEL_78;
      }

      v49[2] = v88;
      v84 = v200;
      __swift_storeEnumTagSinglePayload(v200, 1, 1, v205);
    }

    outlined destroy of (columnName: String, dataType: SQLDataType)(v84, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
    outlined destroy of (columnName: String, dataType: SQLDataType)(v211, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR);
    v53 = v208;
    v52 = v209;
    v46 = v198;
    v39 = v199;
    v48 = v197;
  }

  v90 = v193;
  v91 = v188;
  if (*(v193 + 16) != *(v188 + 16))
  {

    type metadata accessor for MetadataSQLError(0);
    lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type MetadataSQLError and conformance MetadataSQLError, type metadata accessor for MetadataSQLError);
    swift_allocError();
    v146 = *(v90 + 16);
    *v147 = v91[2];
    v147[1] = v146;
    goto LABEL_46;
  }

  v92 = v188 + 64;
  v93 = 1 << *(v188 + 32);
  v94 = -1;
  if (v93 < 64)
  {
    v94 = ~(-1 << v93);
  }

  v95 = v94 & *(v188 + 64);
  v96 = (v93 + 63) >> 6;
  v200 = v184 + 16;
  v208 = (v184 + 8);

  v97 = 0;
  v98 = v192;
  v99 = v189;
  v201 = v96;
  v202 = (v91 + 8);
  if (!v95)
  {
LABEL_25:
    while (1)
    {
      v100 = v97 + 1;
      if (__OFADD__(v97, 1))
      {
        break;
      }

      if (v100 >= v96)
      {
        v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
        __swift_storeEnumTagSinglePayload(v99, 1, 1, v145);
        v95 = 0;
        goto LABEL_30;
      }

      v95 = *(v92 + 8 * v100);
      ++v97;
      if (v95)
      {
        v97 = v100;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  while (1)
  {
    v100 = v97;
LABEL_29:
    v101 = __clz(__rbit64(v95));
    v95 &= v95 - 1;
    v102 = v101 | (v100 << 6);
    v103 = v91[7];
    v104 = (v91[6] + 16 * v102);
    v106 = *v104;
    v105 = v104[1];
    v107 = v184;
    v108 = v185;
    v109 = v207;
    (*(v184 + 2))(v185, v103 + *(v184 + 9) * v102, v207);
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
    v111 = *(v110 + 48);
    v112 = v189;
    *v189 = v106;
    *(v112 + 1) = v105;
    v99 = v112;
    v107[4](&v112[v111], v108, v109);
    __swift_storeEnumTagSinglePayload(v99, 0, 1, v110);

    v90 = v193;
    v98 = v192;
LABEL_30:
    outlined init with take of UUID?(v99, v98, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetSgMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetSgMR);
    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
    if (__swift_getEnumTagSinglePayload(v98, 1, v113) == 1)
    {
      break;
    }

    v115 = *v98;
    v114 = v98[1];
    v116 = *(v113 + 48);
    if (!*(v90 + 16) || (v117 = specialized __RawDictionaryStorage.find<A>(_:)(*v98, v98[1]), (v118 & 1) == 0))
    {

      type metadata accessor for MetadataSQLError(0);
      lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type MetadataSQLError and conformance MetadataSQLError, type metadata accessor for MetadataSQLError);
      swift_allocError();
      *v149 = v115;
      v149[1] = v114;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return (*v208)(v192 + v116, v207);
    }

    *&v210 = v116;
    v119 = *(v90 + 56);
    v211 = *(v206 + 72);
    v120 = v187;
    _s12BiomeStreams13StorableValueOWOcTm_0(v119 + v211 * v117, v187);
    v121 = v120;
    v122 = v190;
    _s12BiomeStreams13StorableValueOWObTm_1(v121, v190);
    _s12BiomeStreams13StorableValueOWOcTm_0(v122, v191);
    v123 = v212;
    v124 = swift_isUniquelyReferenced_nonNull_native();
    v213 = v123;
    v125 = v115;
    v126 = v115;
    v127 = v114;
    v128 = specialized __RawDictionaryStorage.find<A>(_:)(v126, v114);
    v130 = v123[2];
    v131 = (v129 & 1) == 0;
    v132 = v130 + v131;
    if (__OFADD__(v130, v131))
    {
      goto LABEL_79;
    }

    v133 = v128;
    v134 = v129;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMd, &_ss17_NativeDictionaryVySS12BiomeStreams13StorableValueOGMR);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v124, v132))
    {
      v135 = specialized __RawDictionaryStorage.find<A>(_:)(v125, v127);
      v90 = v193;
      if ((v134 & 1) != (v136 & 1))
      {
        goto LABEL_86;
      }

      v133 = v135;
    }

    else
    {
      v90 = v193;
    }

    v212 = v213;
    if (v134)
    {
      v137 = v212;
      v138 = v133 * v211;
      v139 = v212[7] + v133 * v211;
      v140 = v186;
      _s12BiomeStreams13StorableValueOWObTm_1(v139, v186);
      _s12BiomeStreams13StorableValueOWObTm_1(v191, v137[7] + v138);
      __swift_storeEnumTagSinglePayload(v140, 0, 1, v205);
    }

    else
    {
      v141 = v212;
      v212[(v133 >> 6) + 8] |= 1 << v133;
      v142 = (v141[6] + 16 * v133);
      *v142 = v125;
      v142[1] = v127;
      _s12BiomeStreams13StorableValueOWObTm_1(v191, v141[7] + v133 * v211);
      v143 = v141[2];
      v87 = __OFADD__(v143, 1);
      v144 = v143 + 1;
      if (v87)
      {
        goto LABEL_80;
      }

      v212[2] = v144;
      v140 = v186;
      __swift_storeEnumTagSinglePayload(v186, 1, 1, v205);
    }

    outlined destroy of (columnName: String, dataType: SQLDataType)(v140, &_s12BiomeStreams13StorableValueOSgMd, &_s12BiomeStreams13StorableValueOSgMR);
    _s12BiomeStreams13StorableValueOWOhTm_1();
    v98 = v192;
    (*v208)(v192 + v210, v207);
    v91 = v188;
    v99 = v189;
    v96 = v201;
    v92 = v202;
    if (!v95)
    {
      goto LABEL_25;
    }
  }

  v150 = *(v181 + 16);
  v151 = v212 + 8;
  v152 = (v181 + 40);
  v153 = MEMORY[0x1E69E7CC0];
  if (v150)
  {
    while (1)
    {
      v155 = *(v152 - 1);
      v154 = *v152;
      v156 = v212[2];

      if (!v156)
      {
        break;
      }

      v157 = specialized __RawDictionaryStorage.find<A>(_:)(v155, v154);
      if ((v158 & 1) == 0)
      {
        break;
      }

      v159 = v157;

      if (v159 < 0 || v159 >= 1 << *(v212 + 32))
      {
        goto LABEL_81;
      }

      if (((*(v151 + ((v159 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v159) & 1) == 0)
      {
        goto LABEL_82;
      }

      v160 = *(v206 + 72);
      _s12BiomeStreams13StorableValueOWOcTm_0(v212[7] + v160 * v159, v183);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v162 = v153[2];
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v153 = v163;
      }

      v161 = v153[2];
      if (v161 >= v153[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v153 = v164;
      }

      v153[2] = v161 + 1;
      _s12BiomeStreams13StorableValueOWObTm_1(v183, v153 + ((*(v206 + 80) + 32) & ~*(v206 + 80)) + v161 * v160);
      v152 += 2;
      if (!--v150)
      {
        goto LABEL_61;
      }
    }

    type metadata accessor for MetadataSQLError(0);
    lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type MetadataSQLError and conformance MetadataSQLError, type metadata accessor for MetadataSQLError);
    swift_allocError();
    *v165 = v155;
    v165[1] = v154;
    goto LABEL_46;
  }

LABEL_61:

  v213 = v153;
  v166 = v209;
  if (v209)
  {
    v167 = *(v206 + 80);
    v168 = (v167 + 32) & ~v167;
    v169 = v203 + v168;
    v170 = *(v206 + 72);
    v211 = v168 + 2 * v170;
    v212 = v167;
    v171 = MEMORY[0x1E69E7CC0];
    v210 = xmmword_184D29A90;
    while (1)
    {
      v172 = v182;
      _s12BiomeStreams13StorableValueOWOcTm_0(v169, v182);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12BiomeStreams13StorableValueOGMd, &_ss23_ContiguousArrayStorageCy12BiomeStreams13StorableValueOGMR);
      v173 = swift_allocObject();
      *(v173 + 16) = v210;
      v174 = v173 + v168;
      _s12BiomeStreams13StorableValueOWOcTm_0(v172, v173 + v168);
      _s12BiomeStreams13StorableValueOWObTm_1(v172, v174 + v170);
      v175 = *(v171 + 16);
      if (__OFADD__(v175, 2))
      {
        goto LABEL_83;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || (v176 = *(v171 + 24) >> 1, v176 < v175 + 2))
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v171 = v177;
        v176 = *(v177 + 24) >> 1;
      }

      if (v176 - *(v171 + 16) < 2)
      {
        goto LABEL_84;
      }

      swift_arrayInitWithCopy();

      v178 = *(v171 + 16);
      v87 = __OFADD__(v178, 2);
      v179 = v178 + 2;
      if (v87)
      {
        goto LABEL_85;
      }

      *(v171 + 16) = v179;
      v169 += v170;
      v166 = (v166 - 1);
      if (!v166)
      {
        goto LABEL_72;
      }
    }
  }

  v171 = MEMORY[0x1E69E7CC0];
LABEL_72:
  specialized Array.append<A>(contentsOf:)(v171);
  return v213;
}

uint64_t closure #1 in KeyedAggregationMetadataCache.init(materializedView:database:cacheSize:)()
{
  v0 = SQLExpression.sql.getter();
  v2 = v1;
  if (v0 == SQLExpression.sql.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_20();
    v5 = OUTLINED_FUNCTION_85();
  }

  return v5 & 1;
}

uint64_t type metadata completion function for QueryPlannerMetadata()
{
  result = type metadata accessor for MaterializedView();
  if (v1 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = type metadata accessor for BookmarkCache(319);
    if (v2 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = type metadata accessor for KeyedAggregationMetadataCache(319);
      if (v3 <= 0x3F)
      {
        v7 = *(result - 8) + 64;
        result = type metadata accessor for KeyedFirstMatchingRecordCache(319);
        if (v4 <= 0x3F)
        {
          v8 = *(result - 8) + 64;
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

void type metadata completion function for KeyedFirstMatchingRecordCache()
{
  type metadata accessor for MaterializedView();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Set<[StorableValue]>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for [[StorableValue] : (value: ChangeRecord, event: CacheEvent)](319, &lazy cache variable for type metadata for [[StorableValue] : (value: ChangeRecord, event: CacheEvent)], &_s12BiomeStreams12ChangeRecordV5value_AA10CacheEventO5eventtMd, &_s12BiomeStreams12ChangeRecordV5value_AA10CacheEventO5eventtMR, MEMORY[0x1E69E5E28]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for [[StorableValue] : (value: ChangeRecord, event: CacheEvent)](319, &lazy cache variable for type metadata for OrderedDictionary<[StorableValue], ChangeRecord?>, &_s12BiomeStreams12ChangeRecordVSgMd, &_s12BiomeStreams12ChangeRecordVSgMR, type metadata accessor for OrderedDictionary);
        if (v3 <= 0x3F)
        {
          type metadata accessor for SQLExpressionEvaluator();
          if (v4 <= 0x3F)
          {
            type metadata accessor for [SQLExpression]?(319, &lazy cache variable for type metadata for [SQLExpression]?, &_sSay14BiomeSQLParser13SQLExpressionVGMd, &_sSay14BiomeSQLParser13SQLExpressionVGMR, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              type metadata accessor for [String : SQLDataType]();
              if (v6 <= 0x3F)
              {
                type metadata accessor for [SQLExpression]?(319, &lazy cache variable for type metadata for (sql: String, argumentsFromKey: ())?, &_sSS3sql_yyc16argumentsFromKeytMd, &_sSS3sql_yyc16argumentsFromKeytMR, MEMORY[0x1E69E6720]);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for Set<[StorableValue]>()
{
  if (!lazy cache variable for type metadata for Set<[StorableValue]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12BiomeStreams13StorableValueOGMd, &_sSay12BiomeStreams13StorableValueOGMR);
    lazy protocol witness table accessor for type [StorableValue] and conformance <A> [A]();
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Set<[StorableValue]>);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CacheEvent(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_97_2();
  v5 = type metadata accessor for MaterializedView();
  OUTLINED_FUNCTION_83(v5);
  if (*(v6 + 84) != a2)
  {
    return OUTLINED_FUNCTION_99_2(*(a3 + 20));
  }

  v7 = OUTLINED_FUNCTION_105_2();

  return __swift_getEnumTagSinglePayload(v7, a2, v8);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, int a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_84();
  v8 = type metadata accessor for MaterializedView();
  result = OUTLINED_FUNCTION_83(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = OUTLINED_FUNCTION_110_1();

    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void type metadata completion function for KeyedAggregationMetadataCache()
{
  type metadata accessor for MaterializedView();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Set<[StorableValue]>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for [[StorableValue] : (value: ChangeRecord, event: CacheEvent)](319, &lazy cache variable for type metadata for [[StorableValue] : (value: [[String : StorableValue]], event: CacheEvent)], &_sSaySDySS12BiomeStreams13StorableValueOGG5value_AA10CacheEventO5eventtMd, &_sSaySDySS12BiomeStreams13StorableValueOGG5value_AA10CacheEventO5eventtMR, MEMORY[0x1E69E5E28]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for [[StorableValue] : (value: ChangeRecord, event: CacheEvent)](319, &lazy cache variable for type metadata for OrderedDictionary<[StorableValue], [[String : StorableValue]]?>, &_sSaySDySS12BiomeStreams13StorableValueOGGSgMd, &_sSaySDySS12BiomeStreams13StorableValueOGGSgMR, type metadata accessor for OrderedDictionary);
        if (v3 <= 0x3F)
        {
          type metadata accessor for SQLExpressionEvaluator();
          if (v4 <= 0x3F)
          {
            type metadata accessor for [SQLExpression]?(319, &lazy cache variable for type metadata for [SQLExpression]?, &_sSay14BiomeSQLParser13SQLExpressionVGMd, &_sSay14BiomeSQLParser13SQLExpressionVGMR, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              type metadata accessor for [SQLExpression]?(319, &lazy cache variable for type metadata for [[(metadataKey: String, columnName: String, dataType: SQLDataType)]], &_sSaySS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tGMd, &_sSaySS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tGMR, MEMORY[0x1E69E62F8]);
              if (v6 <= 0x3F)
              {
                type metadata accessor for [SQLExpression]?(319, &lazy cache variable for type metadata for (sql: String, argumentsFromKey: ())?, &_sSS3sql_yyc16argumentsFromKeytMd, &_sSS3sql_yyc16argumentsFromKeytMR, MEMORY[0x1E69E6720]);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for [[StorableValue] : (value: ChangeRecord, event: CacheEvent)](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12BiomeStreams13StorableValueOGMd, &_sSay12BiomeStreams13StorableValueOGMR);
    v9 = OUTLINED_FUNCTION_20();
    v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v9, v10);
    v12 = lazy protocol witness table accessor for type [StorableValue] and conformance <A> [A]();
    v13 = a5(a1, v8, v11, v12);
    if (!v14)
    {
      atomic_store(v13, a2);
    }
  }
}

void type metadata completion function for BookmarkCache()
{
  type metadata accessor for MaterializedView();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [SQLExpression]?(319, &lazy cache variable for type metadata for BMBookmark?, &_sSo10BMBookmark_pMd, &_sSo10BMBookmark_pMR, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SQLExpressionEvaluator();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for [SQLExpression]?(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CacheEvent and conformance CacheEvent()
{
  result = lazy protocol witness table cache variable for type CacheEvent and conformance CacheEvent;
  if (!lazy protocol witness table cache variable for type CacheEvent and conformance CacheEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CacheEvent and conformance CacheEvent);
  }

  return result;
}

void QueryPlannerMetadata.description.getter()
{
  OUTLINED_FUNCTION_204();
  v1 = v0;
  v2 = type metadata accessor for StorableValue(0);
  v3 = OUTLINED_FUNCTION_2_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_13();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_10_7();
  _StringGuts.grow(_:)(139);
  OUTLINED_FUNCTION_55_1();
  MEMORY[0x1865F6280](0xD000000000000031, 0x8000000184DDC970);
  v9 = MaterializedView.name.getter();
  MEMORY[0x1865F6280](v9);

  OUTLINED_FUNCTION_72_2();
  MEMORY[0x1865F6280](0xD000000000000022);
  v185 = v0;
  v186 = v0 + OBJC_IVAR____TtC12BiomeStreams20QueryPlannerMetadata_keyedAggregationMetadata;
  v10 = *(v186 + *(type metadata accessor for KeyedAggregationMetadataCache(0) + 28));
  v11 = *(v10 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v222 = MEMORY[0x1E69E7CC0];

    OUTLINED_FUNCTION_122_0();
    OUTLINED_FUNCTION_114();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v13, v14, v15);
    v215 = v222;
    v16 = 0;
    v17 = v10 + 64;
    v187 = v11;
    v191 = v10;
    v195 = v10 + 64;
    if ((specialized Dictionary.startIndex.getter(v10) & 0x8000000000000000) == 0)
    {
      do
      {
        v18 = *(v10 + 32);
        OUTLINED_FUNCTION_119();
        if (v22 == v23)
        {
          break;
        }

        v24 = v21 << v19;
        if ((*(v17 + 8 * (v19 >> 6)) & v24) == 0)
        {
          goto LABEL_126;
        }

        if (*(v10 + 36) != v20)
        {
          goto LABEL_127;
        }

        v207 = v24;
        v209 = v19 >> 6;
        v203 = v16;
        v211 = v19;
        v1 = *(*(v10 + 48) + 8 * v19);
        OUTLINED_FUNCTION_118_0();
        v25 = *(v1 + 16);
        if (v25)
        {
          v219 = v12;

          OUTLINED_FUNCTION_151_0();
          v26 = v12;
          OUTLINED_FUNCTION_12_6();
          v198 = v1;
          v28 = v1 + v27;
          v30 = *(v29 + 72);
          do
          {
            OUTLINED_FUNCTION_2_12();
            _s12BiomeStreams13StorableValueOWOcTm_0(v28, v8);
            OUTLINED_FUNCTION_101_2();
            _print_unlocked<A, B>(_:_:)();
            v32 = v217;
            v31 = v218;
            OUTLINED_FUNCTION_0_24();
            _s12BiomeStreams13StorableValueOWOhTm_1();
            v219 = v26;
            v34 = *(v26 + 16);
            v33 = *(v26 + 24);
            if (v34 >= v33 >> 1)
            {
              v36 = OUTLINED_FUNCTION_4_9(v33);
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v36, v34 + 1, 1);
              v26 = v219;
            }

            *(v26 + 16) = v34 + 1;
            v35 = v26 + 16 * v34;
            *(v35 + 32) = v32;
            *(v35 + 40) = v31;
            v28 += v30;
            --v25;
          }

          while (v25);
          v11 = v187;
          v10 = v191;
          v12 = MEMORY[0x1E69E7CC0];
          v1 = v198;
        }

        else
        {

          v26 = v12;
        }

        v37 = MEMORY[0x1865F6370](v26, MEMORY[0x1E69E6158]);
        v39 = v38;

        MEMORY[0x1865F6280](v37, v39);

        MEMORY[0x1865F6280](93, 0xE100000000000000);

        OUTLINED_FUNCTION_65_2();
        if (v41)
        {
          v51 = OUTLINED_FUNCTION_4_9(v40);
          OUTLINED_FUNCTION_154_0(v51);
        }

        OUTLINED_FUNCTION_115_0();
        v43 = 1 << v42;
        if (v211 >= 1 << v42)
        {
          goto LABEL_128;
        }

        v17 = v195;
        if ((*(v195 + 8 * v209) & v207) == 0)
        {
          goto LABEL_129;
        }

        OUTLINED_FUNCTION_130_0();
        if (!v44)
        {
          goto LABEL_130;
        }

        OUTLINED_FUNCTION_39_3();
        if (v44)
        {
          OUTLINED_FUNCTION_38_2();
          v45 = v203;
          while (v49 < v48)
          {
            OUTLINED_FUNCTION_79_2();
            if (v1)
            {
              OUTLINED_FUNCTION_152_0(v46, v47);
              OUTLINED_FUNCTION_78_2();
              goto LABEL_27;
            }
          }

          OUTLINED_FUNCTION_152_0(v46, v47);
        }

        else
        {
          OUTLINED_FUNCTION_17_4();
          v45 = v203;
        }

LABEL_27:
        v16 = v45 + 1;
        if (v16 == v11)
        {

          v52 = v215;
          goto LABEL_32;
        }

        v50 = *(v10 + 36);
      }

      while ((v43 & 0x8000000000000000) == 0);
    }

    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v52 = MEMORY[0x1E69E7CC0];
LABEL_32:
  MEMORY[0x1865F6370](v52, MEMORY[0x1E69E6158]);
  OUTLINED_FUNCTION_112_1();

  v53 = OUTLINED_FUNCTION_64_2();
  MEMORY[0x1865F6280](v53);

  MEMORY[0x1865F6280](1528838688, 0xE400000000000000);
  OUTLINED_FUNCTION_139_0();
  v56 = *(v54 + v55);
  v57 = *(v56 + 16);
  v58 = MEMORY[0x1E69E7CC0];
  if (v57)
  {
    v217 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v57, 0);
    v59 = v217;
    v60 = 0;
    v188 = v56;
    v192 = v57;
    if ((specialized Dictionary.startIndex.getter(v56) & 0x8000000000000000) == 0)
    {
      do
      {
        v61 = *(v56 + 32);
        OUTLINED_FUNCTION_119();
        if (v22 == v23)
        {
          break;
        }

        v63 = OUTLINED_FUNCTION_91_2(v62);
        if (v44)
        {
          goto LABEL_132;
        }

        if (*(v56 + 36) != v64)
        {
          goto LABEL_133;
        }

        v199 = v65;
        v201 = v60;
        v204 = v64;
        v212 = v59;
        v66 = *(*(v56 + 56) + 16 * v63);
        OUTLINED_FUNCTION_146_0();
        v67 = *(v66 + 16);
        if (v67)
        {
          v222 = v58;

          v68 = OUTLINED_FUNCTION_122_0();
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v68, v67, 0);
          v58 = v222;
          v69 = (v66 + 32);
          do
          {
            v70 = *v69;

            v71 = Dictionary.description.getter();
            v73 = v72;

            v222 = v58;
            v75 = *(v58 + 16);
            v74 = *(v58 + 24);
            if (v75 >= v74 >> 1)
            {
              v77 = OUTLINED_FUNCTION_4_9(v74);
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v77, v75 + 1, 1);
              v58 = v222;
            }

            *(v58 + 16) = v75 + 1;
            v76 = v58 + 16 * v75;
            *(v76 + 32) = v71;
            *(v76 + 40) = v73;
            ++v69;
            --v67;
          }

          while (v67);
          v56 = v188;
        }

        else
        {
        }

        v222 = v58;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v78 = OUTLINED_FUNCTION_107_2();
        v80 = v79;

        v81 = &v220;
        MEMORY[0x1865F6280](v78, v80);

        MEMORY[0x1865F6280](32032, 0xE200000000000000);

        v82 = v220;
        v83 = v221;
        v59 = v212;
        v217 = v212;
        v1 = *(v212 + 16);
        v84 = *(v212 + 24);
        if (v1 >= v84 >> 1)
        {
          v95 = OUTLINED_FUNCTION_4_9(v84);
          v81 = &v217;
          OUTLINED_FUNCTION_154_0(v95);
          v59 = v217;
        }

        *(v59 + 16) = v1 + 1;
        v85 = v59 + 16 * v1;
        *(v85 + 32) = v82;
        *(v85 + 40) = v83;
        v86 = *(v56 + 32);
        OUTLINED_FUNCTION_120();
        if (v22 == v23)
        {
          goto LABEL_134;
        }

        OUTLINED_FUNCTION_135_0();
        if (v44)
        {
          goto LABEL_135;
        }

        if (*(v56 + 36) != v204)
        {
          goto LABEL_136;
        }

        OUTLINED_FUNCTION_39_3();
        if (v44)
        {
          OUTLINED_FUNCTION_38_2();
          v58 = MEMORY[0x1E69E7CC0];
          v87 = v192;
          v88 = v201;
          v93 = v199;
          while (v92 < v91)
          {
            OUTLINED_FUNCTION_79_2();
            if (v1)
            {
              outlined consume of [[StorableValue] : [String : StorableValue]].Index._Variant(v89, v90, v93 & 1);
              OUTLINED_FUNCTION_78_2();
              goto LABEL_58;
            }
          }

          outlined consume of [[StorableValue] : [String : StorableValue]].Index._Variant(v89, v90, v93 & 1);
        }

        else
        {
          OUTLINED_FUNCTION_17_4();
          v58 = MEMORY[0x1E69E7CC0];
          v87 = v192;
          v88 = v201;
        }

LABEL_58:
        v60 = v88 + 1;
        if (v60 == v87)
        {

          goto LABEL_63;
        }

        v94 = *(v56 + 36);
      }

      while ((v81 & 0x8000000000000000) == 0);
    }

LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  v59 = MEMORY[0x1E69E7CC0];
LABEL_63:
  MEMORY[0x1865F6370](v59, MEMORY[0x1E69E6158]);
  OUTLINED_FUNCTION_112_1();

  v96 = OUTLINED_FUNCTION_64_2();
  MEMORY[0x1865F6280](v96);

  MEMORY[0x1865F6280](0xD000000000000023, 0x8000000184DDC9E0);
  v97 = v185 + OBJC_IVAR____TtC12BiomeStreams20QueryPlannerMetadata_keyedFirstMatchingRecord;
  v98 = *(v97 + *(type metadata accessor for KeyedFirstMatchingRecordCache(0) + 28));
  v99 = *(v98 + 16);
  v100 = MEMORY[0x1E69E7CC0];
  if (v99)
  {
    v222 = MEMORY[0x1E69E7CC0];

    OUTLINED_FUNCTION_122_0();
    OUTLINED_FUNCTION_114();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v101, v102, v103);
    v216 = v222;
    v104 = specialized Dictionary.startIndex.getter(v98);
    v106 = 0;
    v107 = v98 + 64;
    v189 = v99;
    v193 = v98;
    v196 = v98 + 64;
    if ((v104 & 0x8000000000000000) == 0)
    {
      while (v104 < 1 << *(v98 + 32))
      {
        if ((*(v107 + 8 * (v104 >> 6)) & (1 << v104)) == 0)
        {
          goto LABEL_138;
        }

        if (*(v98 + 36) != v105)
        {
          goto LABEL_139;
        }

        v208 = 1 << v104;
        v210 = v104 >> 6;
        v205 = v106;
        v213 = v104;
        v108 = *(*(v98 + 48) + 8 * v104);
        OUTLINED_FUNCTION_118_0();
        v109 = *(v108 + 16);
        if (v109)
        {
          v219 = v100;

          OUTLINED_FUNCTION_151_0();
          v110 = v219;
          OUTLINED_FUNCTION_12_6();
          v112 = v108 + v111;
          v114 = *(v113 + 72);
          do
          {
            OUTLINED_FUNCTION_2_12();
            _s12BiomeStreams13StorableValueOWOcTm_0(v112, v8);
            OUTLINED_FUNCTION_101_2();
            _print_unlocked<A, B>(_:_:)();
            v115 = v217;
            v116 = v218;
            OUTLINED_FUNCTION_0_24();
            _s12BiomeStreams13StorableValueOWOhTm_1();
            v219 = v110;
            v118 = *(v110 + 16);
            v117 = *(v110 + 24);
            v1 = v118 + 1;
            if (v118 >= v117 >> 1)
            {
              v120 = OUTLINED_FUNCTION_4_9(v117);
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v120, v118 + 1, 1);
              v110 = v219;
            }

            *(v110 + 16) = v1;
            v119 = v110 + 16 * v118;
            *(v119 + 32) = v115;
            *(v119 + 40) = v116;
            v112 += v114;
            --v109;
          }

          while (v109);
          v99 = v189;
          v98 = v193;
          v100 = MEMORY[0x1E69E7CC0];
        }

        else
        {

          v110 = v100;
        }

        MEMORY[0x1865F6370](v110, MEMORY[0x1E69E6158]);
        OUTLINED_FUNCTION_112_1();

        v121 = OUTLINED_FUNCTION_64_2();
        MEMORY[0x1865F6280](v121);

        MEMORY[0x1865F6280](93, 0xE100000000000000);

        OUTLINED_FUNCTION_65_2();
        if (v41)
        {
          v131 = OUTLINED_FUNCTION_4_9(v122);
          OUTLINED_FUNCTION_154_0(v131);
        }

        OUTLINED_FUNCTION_115_0();
        v124 = 1 << v123;
        if (v213 >= 1 << v123)
        {
          goto LABEL_140;
        }

        v107 = v196;
        if ((*(v196 + 8 * v210) & v208) == 0)
        {
          goto LABEL_141;
        }

        OUTLINED_FUNCTION_130_0();
        if (!v44)
        {
          goto LABEL_142;
        }

        if ((v127 & (-2 << (v125 & 0x3F))) != 0)
        {
          OUTLINED_FUNCTION_17_4();
        }

        else
        {
          v129 = (v124 + 63) >> 6;
          v130 = v128 + 1;
          while (v130 < v129)
          {
            OUTLINED_FUNCTION_79_2();
            if (v1)
            {
              OUTLINED_FUNCTION_152_0(v125, v126);
              OUTLINED_FUNCTION_78_2();
              goto LABEL_88;
            }
          }

          OUTLINED_FUNCTION_152_0(v125, v126);
        }

LABEL_88:
        v106 = v205 + 1;
        if (v205 + 1 == v99)
        {

          v132 = v216;
          goto LABEL_93;
        }

        v105 = *(v98 + 36);
        v104 = v124;
        if (v124 < 0)
        {
          break;
        }
      }
    }

LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  v132 = MEMORY[0x1E69E7CC0];
LABEL_93:
  v133 = MEMORY[0x1865F6370](v132, MEMORY[0x1E69E6158]);
  v135 = v134;

  MEMORY[0x1865F6280](v133, v135);

  MEMORY[0x1865F6280](1528838688, 0xE400000000000000);
  OUTLINED_FUNCTION_139_0();
  v138 = *(v136 + v137);
  v139 = *(v138 + 16);
  v140 = MEMORY[0x1E69E7CC0];
  if (v139)
  {
    v217 = MEMORY[0x1E69E7CC0];

    v141 = OUTLINED_FUNCTION_41_2();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v141, v142, v143);
    v144 = v217;
    v145 = 0;
    v190 = v138 + 72;
    v194 = v138;
    v197 = v139;
    if ((specialized Dictionary.startIndex.getter(v138) & 0x8000000000000000) == 0)
    {
      do
      {
        v146 = *(v138 + 32);
        OUTLINED_FUNCTION_119();
        if (v22 == v23)
        {
          break;
        }

        v148 = OUTLINED_FUNCTION_91_2(v147);
        if (v44)
        {
          goto LABEL_144;
        }

        if (*(v138 + 36) != v149)
        {
          goto LABEL_145;
        }

        v200 = v150;
        v202 = v145;
        v206 = v149;
        v214 = v144;
        v151 = *(*(v138 + 56) + 16 * v148);
        OUTLINED_FUNCTION_146_0();
        v152 = *(v151 + 16);
        if (v152)
        {
          v222 = v140;

          v153 = OUTLINED_FUNCTION_122_0();
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v153, v152, 0);
          v140 = v222;
          v154 = (v151 + 32);
          do
          {
            v155 = *v154;

            v156 = Dictionary.description.getter();
            v158 = v157;

            v222 = v140;
            v160 = *(v140 + 16);
            v159 = *(v140 + 24);
            if (v160 >= v159 >> 1)
            {
              v162 = OUTLINED_FUNCTION_4_9(v159);
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v162, v160 + 1, 1);
              v140 = v222;
            }

            *(v140 + 16) = v160 + 1;
            v161 = v140 + 16 * v160;
            *(v161 + 32) = v156;
            *(v161 + 40) = v158;
            ++v154;
            --v152;
          }

          while (v152);
          v138 = v194;
        }

        else
        {
        }

        v222 = v140;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        OUTLINED_FUNCTION_107_2();
        OUTLINED_FUNCTION_112_1();

        v163 = &v220;
        v164 = OUTLINED_FUNCTION_64_2();
        MEMORY[0x1865F6280](v164);

        MEMORY[0x1865F6280](32032, 0xE200000000000000);

        v165 = v220;
        v166 = v221;
        v144 = v214;
        v217 = v214;
        v168 = *(v214 + 16);
        v167 = *(v214 + 24);
        v169 = v168 + 1;
        if (v168 >= v167 >> 1)
        {
          v183 = OUTLINED_FUNCTION_4_9(v167);
          v163 = &v217;
          OUTLINED_FUNCTION_154_0(v183);
          v144 = v217;
        }

        *(v144 + 16) = v169;
        v170 = v144 + 16 * v168;
        *(v170 + 32) = v165;
        *(v170 + 40) = v166;
        v171 = *(v138 + 32);
        OUTLINED_FUNCTION_120();
        if (v22 == v23)
        {
          goto LABEL_146;
        }

        OUTLINED_FUNCTION_135_0();
        if (v44)
        {
          goto LABEL_147;
        }

        if (*(v138 + 36) != v206)
        {
          goto LABEL_148;
        }

        OUTLINED_FUNCTION_39_3();
        if (v44)
        {
          OUTLINED_FUNCTION_38_2();
          v179 = (v190 + 8 * v178);
          v140 = MEMORY[0x1E69E7CC0];
          v172 = v197;
          v173 = v202;
          while (v177 < v176)
          {
            v181 = *v179++;
            v180 = v181;
            v169 += 64;
            ++v177;
            if (v181)
            {
              outlined consume of [[StorableValue] : [String : StorableValue]].Index._Variant(v174, v175, v200 & 1);
              v163 = __clz(__rbit64(v180)) + v169;
              goto LABEL_119;
            }
          }

          outlined consume of [[StorableValue] : [String : StorableValue]].Index._Variant(v174, v175, v200 & 1);
        }

        else
        {
          OUTLINED_FUNCTION_17_4();
          v140 = MEMORY[0x1E69E7CC0];
          v172 = v197;
          v173 = v202;
        }

LABEL_119:
        v145 = v173 + 1;
        if (v145 == v172)
        {

          goto LABEL_124;
        }

        v182 = *(v138 + 36);
      }

      while ((v163 & 0x8000000000000000) == 0);
    }

LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
    return;
  }

  v144 = MEMORY[0x1E69E7CC0];
LABEL_124:
  MEMORY[0x1865F6370](v144, MEMORY[0x1E69E6158]);

  v184 = OUTLINED_FUNCTION_36_2();
  MEMORY[0x1865F6280](v184);

  MEMORY[0x1865F6280](2892381, 0xE300000000000000);
  OUTLINED_FUNCTION_169();
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v28 = v27;
  v159 = v29;
  v30 = type metadata accessor for SQLExpression();
  v31 = OUTLINED_FUNCTION_2_1(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_9_0();
  v163 = v34;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_30();
  v182 = v36;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_148_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_30();
  v175 = v40;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_30();
  v174 = v42;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_24_4();
  a10 = MEMORY[0x1E69E7CC0];
  v173 = v28;
  v52 = v28[1];
  if (v52 >= 1)
  {
    v53 = 0;
    v188 = (v50 + 8);
    v167 = v50;
    v187 = (v50 + 32);
    v176 = MEMORY[0x1E69E7CC0];
    v177 = v30;
    v160 = v26;
    v168 = v21;
    v186 = v51;
    v157 = v22;
    do
    {
      v54 = v53;
      v55 = v53 + 1;
      if (v53 + 1 < v52)
      {
        v183 = v52;
        v56 = *v173;
        v57 = v30;
        v58 = *(v167 + 72);
        v169 = v53 + 1;
        v59 = *v173 + v58 * (v53 + 1);
        v60 = *(v167 + 16);
        v61 = OUTLINED_FUNCTION_131_0();
        v62 = v54;
        v60(v61);
        v166 = v60;
        (v60)(v156, v56 + v58 * v54, v57);
        OUTLINED_FUNCTION_20();
        v180 = closure #1 in KeyedAggregationMetadataCache.init(materializedView:database:cacheSize:)();
        if (v20)
        {
          v153 = *v188;
          v154 = OUTLINED_FUNCTION_132_0();
          v153(v154);
          (v153)(v22, v57);
          goto LABEL_119;
        }

        v63 = *v188;
        v64 = OUTLINED_FUNCTION_132_0();
        v63(v64);
        v165 = v63;
        (v63)(v22, v57);
        v158 = v54;
        v65 = v54 + 2;
        v178 = v58;
        v66 = v56 + v58 * (v54 + 2);
        v55 = v169;
        v67 = v183;
        while (1)
        {
          v68 = v65;
          if (v55 + 1 >= v67)
          {
            break;
          }

          v166(v174, v66, v177);
          v69 = OUTLINED_FUNCTION_131_0();
          (v166)(v69);
          v70 = SQLExpression.sql.getter();
          v72 = v71;
          if (v70 == SQLExpression.sql.getter() && v72 == v73)
          {
            v75 = 0;
          }

          else
          {
            v75 = OUTLINED_FUNCTION_85();
          }

          (v63)(v175, v177);
          (v63)(v174, v177);
          v66 += v178;
          v59 += v178;
          ++v55;
          v65 = v68 + 1;
          v67 = v183;
          if ((v180 ^ v75))
          {
            goto LABEL_16;
          }
        }

        v55 = v67;
LABEL_16:
        if (v180)
        {
          v76 = v62;
          v26 = v160;
          if (v55 < v62)
          {
            goto LABEL_141;
          }

          if (v62 >= v55)
          {
            v30 = v177;
            v21 = v168;
            v54 = v158;
            goto LABEL_39;
          }

          if (v67 >= v68)
          {
            v77 = v68;
          }

          else
          {
            v77 = v67;
          }

          v78 = v55;
          v79 = v178 * (v77 - 1);
          v80 = v178 * v77;
          v81 = v62 * v178;
          v170 = v78;
          do
          {
            if (v76 != --v78)
            {
              v82 = *v173;
              if (!*v173)
              {
                goto LABEL_144;
              }

              v184 = *v187;
              (*v187)(v163, v82 + v81, v177);
              v83 = v81 < v79 || v82 + v81 >= (v82 + v80);
              if (v83)
              {
                OUTLINED_FUNCTION_143_0();
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v81 != v79)
              {
                OUTLINED_FUNCTION_143_0();
                swift_arrayInitWithTakeBackToFront();
              }

              v184(v82 + v79, v163, v177);
              v26 = v160;
            }

            ++v76;
            v79 -= v178;
            v80 -= v178;
            v81 += v178;
          }

          while (v76 < v78);
          v30 = v177;
          v21 = v168;
          v55 = v170;
        }

        else
        {
          v30 = v177;
          v26 = v160;
          v21 = v168;
        }

        v54 = v158;
      }

LABEL_39:
      v84 = v173[1];
      if (v55 < v84)
      {
        if (__OFSUB__(v55, v54))
        {
          goto LABEL_138;
        }

        if (v55 - v54 < v26)
        {
          v85 = v54 + v26;
          if (__OFADD__(v54, v26))
          {
            goto LABEL_139;
          }

          if (v85 >= v84)
          {
            v85 = v173[1];
          }

          if (v85 < v54)
          {
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
            return;
          }

          if (v55 != v85)
          {
            v86 = *(v167 + 72);
            v185 = *(v167 + 16);
            v87 = *v173 + v86 * (v55 - 1);
            v179 = -v86;
            v158 = v54;
            v88 = v54 - v55;
            v181 = *v173;
            v161 = v86;
            v89 = *v173 + v55 * v86;
            v162 = v85;
            do
            {
              v171 = v55;
              v164 = v89;
              v165 = v88;
              v166 = v87;
              while (1)
              {
                v185(v186, v89, v30);
                v185(v21, v87, v30);
                v90 = v30;
                v91 = SQLExpression.sql.getter();
                v92 = v21;
                v94 = v93;
                if (v91 == SQLExpression.sql.getter() && v94 == v95)
                {

                  v102 = *v188;
                  v103 = OUTLINED_FUNCTION_29_5();
                  v102(v103);
                  v104 = OUTLINED_FUNCTION_77();
                  v102(v104);
                  v30 = v90;
                  v21 = v92;
                  goto LABEL_60;
                }

                v97 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v98 = *v188;
                v99 = OUTLINED_FUNCTION_29_5();
                v98(v99);
                v100 = OUTLINED_FUNCTION_77();
                v98(v100);
                if ((v97 & 1) == 0)
                {
                  break;
                }

                if (!v181)
                {
                  goto LABEL_142;
                }

                v21 = v92;
                v101 = *v187;
                v30 = v90;
                (*v187)(v182, v89, v90);
                OUTLINED_FUNCTION_69_1();
                swift_arrayInitWithTakeFrontToBack();
                v101(v87, v182, v90);
                v87 += v179;
                v89 += v179;
                v83 = __CFADD__(v88++, 1);
                if (v83)
                {
                  goto LABEL_60;
                }
              }

              v21 = v92;
              v30 = v90;
LABEL_60:
              v55 = v171 + 1;
              v87 = v166 + v161;
              v88 = v165 - 1;
              v89 = v164 + v161;
            }

            while (v171 + 1 != v162);
            v55 = v162;
          }
        }
      }

      v105 = v176;
      if (v55 < v54)
      {
        goto LABEL_137;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v150 = v176[2];
        OUTLINED_FUNCTION_42_1();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v105 = v151;
      }

      v106 = v105[2];
      v176 = v105;
      v107 = v106 + 1;
      if (v106 >= v105[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v176 = v152;
      }

      v176[2] = v107;
      v108 = v176 + 4;
      v109 = &v176[2 * v106 + 4];
      *v109 = v54;
      v109[1] = v55;
      v172 = v55;
      a10 = v176;
      v110 = *v159;
      if (!*v159)
      {
        goto LABEL_145;
      }

      if (v106)
      {
        v111 = v176;
        while (1)
        {
          v112 = v107 - 1;
          v113 = &v108[2 * v107 - 2];
          v114 = &v111[2 * v107];
          v21 = v168;
          if (v107 >= 4)
          {
            break;
          }

          if (v107 == 3)
          {
            v115 = v176[4];
            v116 = v176[5];
            v125 = __OFSUB__(v116, v115);
            v117 = v116 - v115;
            v118 = v125;
LABEL_83:
            if (v118)
            {
              goto LABEL_127;
            }

            v130 = *v114;
            v129 = v114[1];
            v131 = __OFSUB__(v129, v130);
            v132 = v129 - v130;
            v133 = v131;
            if (v131)
            {
              goto LABEL_130;
            }

            v134 = v113[1];
            v135 = v134 - *v113;
            if (__OFSUB__(v134, *v113))
            {
              goto LABEL_133;
            }

            if (__OFADD__(v132, v135))
            {
              goto LABEL_135;
            }

            if (v132 + v135 >= v117)
            {
              if (v117 < v135)
              {
                v112 = v107 - 2;
              }

              goto LABEL_105;
            }

            goto LABEL_98;
          }

          if (v107 < 2)
          {
            goto LABEL_129;
          }

          v137 = *v114;
          v136 = v114[1];
          v125 = __OFSUB__(v136, v137);
          v132 = v136 - v137;
          v133 = v125;
LABEL_98:
          if (v133)
          {
            goto LABEL_132;
          }

          v139 = *v113;
          v138 = v113[1];
          v125 = __OFSUB__(v138, v139);
          v140 = v138 - v139;
          if (v125)
          {
            goto LABEL_134;
          }

          if (v140 < v132)
          {
            a10 = v176;
            goto LABEL_114;
          }

LABEL_105:
          if (v112 - 1 >= v107)
          {
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
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
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
            goto LABEL_140;
          }

          if (!*v173)
          {
            goto LABEL_143;
          }

          v144 = &v108[2 * v112 - 2];
          v145 = *v144;
          v146 = &v108[2 * v112];
          v147 = *(v146 + 1);
          specialized _merge<A>(low:mid:high:buffer:by:)(*v173 + *(v167 + 72) * *v144, *v173 + *(v167 + 72) * *v146, *v173 + *(v167 + 72) * v147, v110, v46, v47, v48, v49, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166);
          if (v20)
          {
            a10 = v176;
            goto LABEL_119;
          }

          if (v147 < v145)
          {
            goto LABEL_122;
          }

          v148 = v176[2];
          if (v112 > v148)
          {
            goto LABEL_123;
          }

          *v144 = v145;
          v144[1] = v147;
          if (v112 >= v148)
          {
            goto LABEL_124;
          }

          v107 = v148 - 1;
          specialized UnsafeMutablePointer.moveInitialize(from:count:)(v146 + 16, v148 - 1 - v112, &v108[2 * v112]);
          v111 = v176;
          v176[2] = v148 - 1;
          v149 = v148 > 2;
          v30 = v177;
          if (!v149)
          {
            a10 = v176;
            goto LABEL_113;
          }
        }

        v119 = &v108[2 * v107];
        v120 = *(v119 - 8);
        v121 = *(v119 - 7);
        v125 = __OFSUB__(v121, v120);
        v122 = v121 - v120;
        if (v125)
        {
          goto LABEL_125;
        }

        v124 = *(v119 - 6);
        v123 = *(v119 - 5);
        v125 = __OFSUB__(v123, v124);
        v117 = v123 - v124;
        v118 = v125;
        if (v125)
        {
          goto LABEL_126;
        }

        v126 = v114[1];
        v127 = v126 - *v114;
        if (__OFSUB__(v126, *v114))
        {
          goto LABEL_128;
        }

        v125 = __OFADD__(v117, v127);
        v128 = v117 + v127;
        if (v125)
        {
          goto LABEL_131;
        }

        if (v128 >= v122)
        {
          v142 = *v113;
          v141 = v113[1];
          v125 = __OFSUB__(v141, v142);
          v143 = v141 - v142;
          if (v125)
          {
            goto LABEL_136;
          }

          if (v117 < v143)
          {
            v112 = v107 - 2;
          }

          goto LABEL_105;
        }

        goto LABEL_83;
      }

LABEL_113:
      v21 = v168;
LABEL_114:
      v53 = v172;
      v52 = v173[1];
      v26 = v160;
      v22 = v157;
    }

    while (v172 < v52);
  }

  if (!*v159)
  {
    goto LABEL_146;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&a10, *v159, v173, v45, v46, v47, v48, v49, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166);
LABEL_119:

  OUTLINED_FUNCTION_65();
}

uint64_t specialized _NativeDictionary.index(after:)(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    result = _HashTable.occupiedBucket(after:)();
    v5 = *(a4 + 36);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

void type metadata completion function for MetadataSQLError()
{
  type metadata accessor for (Int, Int)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AggregationFunction.AggregationType();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ([String], [String])();
      if (v2 <= 0x3F)
      {
        type metadata accessor for [StorableValue]();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for (Int, Int)()
{
  if (!lazy cache variable for type metadata for (Int, Int))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Int, Int));
    }
  }
}

void type metadata accessor for ([String], [String])()
{
  if (!lazy cache variable for type metadata for ([String], [String]))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for ([String], [String]));
    }
  }
}

void type metadata accessor for [StorableValue]()
{
  if (!lazy cache variable for type metadata for [StorableValue])
  {
    type metadata accessor for StorableValue(255);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [StorableValue]);
    }
  }
}

uint64_t OUTLINED_FUNCTION_48_1()
{
  strcpy((v0 - 104), "SELECT * FROM ");
  *(v0 - 89) = -18;

  return static KeyedFirstMatchingRecordCache.tableName(materializedViewName:)();
}

void OUTLINED_FUNCTION_55_1()
{
  v1 = *(v0 - 96);
  *(v0 - 104) = *(v0 - 104);
  *(v0 - 96) = v1;
}

uint64_t OUTLINED_FUNCTION_101_2()
{
  *(v1 - 152) = 0;
  *(v1 - 144) = 0xE000000000000000;
  return v0;
}

id OUTLINED_FUNCTION_108_1()
{

  return BMSQLDatabaseError(v0, v1, 0);
}

uint64_t OUTLINED_FUNCTION_125_0()
{
  v3 = *(v0 + 16);
  result = v1;
  v5 = *(v2 - 128);
  return result;
}

void OUTLINED_FUNCTION_130_0()
{
  *(v2 - 160) = v0;
  v3 = *(v1 + 36);
  v4 = *(v2 - 192);
}

uint64_t OUTLINED_FUNCTION_149_0()
{
  v2 = *(v0 - 160);

  return swift_arrayInitWithTakeFrontToBack();
}

void OUTLINED_FUNCTION_151_0()
{

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_153()
{
  v2 = *(v0 - 368);

  return _s12BiomeStreams13StorableValueOWOhTm_1();
}

void OUTLINED_FUNCTION_154_0(char a1)
{

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(a1, v1, 1);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_OverridingKind(uint64_t a1, uint64_t a2)
{
  Overriding = lazy protocol witness table accessor for type PgQuery_OverridingKind and conformance PgQuery_OverridingKind();

  return MEMORY[0x1EEE15710](a1, a2, Overriding);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_QuerySource(uint64_t a1, uint64_t a2)
{
  Query = lazy protocol witness table accessor for type PgQuery_QuerySource and conformance PgQuery_QuerySource();

  return MEMORY[0x1EEE15710](a1, a2, Query);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_SortByDir(uint64_t a1, uint64_t a2)
{
  SortBy = lazy protocol witness table accessor for type PgQuery_SortByDir and conformance PgQuery_SortByDir();

  return MEMORY[0x1EEE15710](a1, a2, SortBy);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_SortByNulls(uint64_t a1, uint64_t a2)
{
  SortBy = lazy protocol witness table accessor for type PgQuery_SortByNulls and conformance PgQuery_SortByNulls();

  return MEMORY[0x1EEE15710](a1, a2, SortBy);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_A_Expr_Kind(uint64_t a1, uint64_t a2)
{
  A_Expr = lazy protocol witness table accessor for type PgQuery_A_Expr_Kind and conformance PgQuery_A_Expr_Kind();

  return MEMORY[0x1EEE15710](a1, a2, A_Expr);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RoleSpecType(uint64_t a1, uint64_t a2)
{
  RoleSpec = lazy protocol witness table accessor for type PgQuery_RoleSpecType and conformance PgQuery_RoleSpecType();

  return MEMORY[0x1EEE15710](a1, a2, RoleSpec);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_TableLikeOption(uint64_t a1, uint64_t a2)
{
  TableLike = lazy protocol witness table accessor for type PgQuery_TableLikeOption and conformance PgQuery_TableLikeOption();

  return MEMORY[0x1EEE15710](a1, a2, TableLike);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_DefElemAction(uint64_t a1, uint64_t a2)
{
  DefElem = lazy protocol witness table accessor for type PgQuery_DefElemAction and conformance PgQuery_DefElemAction();

  return MEMORY[0x1EEE15710](a1, a2, DefElem);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_PartitionRangeDatumKind(uint64_t a1, uint64_t a2)
{
  PartitionRangeDatum = lazy protocol witness table accessor for type PgQuery_PartitionRangeDatumKind and conformance PgQuery_PartitionRangeDatumKind();

  return MEMORY[0x1EEE15710](a1, a2, PartitionRangeDatum);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RTEKind(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type PgQuery_RTEKind and conformance PgQuery_RTEKind();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_WCOKind(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type PgQuery_WCOKind and conformance PgQuery_WCOKind();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_GroupingSetKind(uint64_t a1, uint64_t a2)
{
  GroupingSet = lazy protocol witness table accessor for type PgQuery_GroupingSetKind and conformance PgQuery_GroupingSetKind();

  return MEMORY[0x1EEE15710](a1, a2, GroupingSet);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CTEMaterialize(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type PgQuery_CTEMaterialize and conformance PgQuery_CTEMaterialize();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_SetOperation(uint64_t a1, uint64_t a2)
{
  Set = lazy protocol witness table accessor for type PgQuery_SetOperation and conformance PgQuery_SetOperation();

  return MEMORY[0x1EEE15710](a1, a2, Set);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ObjectType(uint64_t a1, uint64_t a2)
{
  Object = lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();

  return MEMORY[0x1EEE15710](a1, a2, Object);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_DropBehavior(uint64_t a1, uint64_t a2)
{
  Drop = lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior();

  return MEMORY[0x1EEE15710](a1, a2, Drop);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterTableType(uint64_t a1, uint64_t a2)
{
  AlterTable = lazy protocol witness table accessor for type PgQuery_AlterTableType and conformance PgQuery_AlterTableType();

  return MEMORY[0x1EEE15710](a1, a2, AlterTable);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_GrantTargetType(uint64_t a1, uint64_t a2)
{
  GrantTarget = lazy protocol witness table accessor for type PgQuery_GrantTargetType and conformance PgQuery_GrantTargetType();

  return MEMORY[0x1EEE15710](a1, a2, GrantTarget);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_VariableSetKind(uint64_t a1, uint64_t a2)
{
  VariableSet = lazy protocol witness table accessor for type PgQuery_VariableSetKind and conformance PgQuery_VariableSetKind();

  return MEMORY[0x1EEE15710](a1, a2, VariableSet);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ConstrType(uint64_t a1, uint64_t a2)
{
  Constr = lazy protocol witness table accessor for type PgQuery_ConstrType and conformance PgQuery_ConstrType();

  return MEMORY[0x1EEE15710](a1, a2, Constr);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ImportForeignSchemaType(uint64_t a1, uint64_t a2)
{
  ImportForeignSchema = lazy protocol witness table accessor for type PgQuery_ImportForeignSchemaType and conformance PgQuery_ImportForeignSchemaType();

  return MEMORY[0x1EEE15710](a1, a2, ImportForeignSchema);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RoleStmtType(uint64_t a1, uint64_t a2)
{
  RoleStmt = lazy protocol witness table accessor for type PgQuery_RoleStmtType and conformance PgQuery_RoleStmtType();

  return MEMORY[0x1EEE15710](a1, a2, RoleStmt);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_FetchDirection(uint64_t a1, uint64_t a2)
{
  Direction = lazy protocol witness table accessor for type PgQuery_FetchDirection and conformance PgQuery_FetchDirection();

  return MEMORY[0x1EEE15710](a1, a2, Direction);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_FunctionParameterMode(uint64_t a1, uint64_t a2)
{
  FunctionParameter = lazy protocol witness table accessor for type PgQuery_FunctionParameterMode and conformance PgQuery_FunctionParameterMode();

  return MEMORY[0x1EEE15710](a1, a2, FunctionParameter);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_TransactionStmtKind(uint64_t a1, uint64_t a2)
{
  TransactionStmt = lazy protocol witness table accessor for type PgQuery_TransactionStmtKind and conformance PgQuery_TransactionStmtKind();

  return MEMORY[0x1EEE15710](a1, a2, TransactionStmt);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ViewCheckOption(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type PgQuery_ViewCheckOption and conformance PgQuery_ViewCheckOption();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ClusterOption(uint64_t a1, uint64_t a2)
{
  Cluster = lazy protocol witness table accessor for type PgQuery_ClusterOption and conformance PgQuery_ClusterOption();

  return MEMORY[0x1EEE15710](a1, a2, Cluster);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_DiscardMode(uint64_t a1, uint64_t a2)
{
  Discard = lazy protocol witness table accessor for type PgQuery_DiscardMode and conformance PgQuery_DiscardMode();

  return MEMORY[0x1EEE15710](a1, a2, Discard);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ReindexObjectType(uint64_t a1, uint64_t a2)
{
  ReindexObject = lazy protocol witness table accessor for type PgQuery_ReindexObjectType and conformance PgQuery_ReindexObjectType();

  return MEMORY[0x1EEE15710](a1, a2, ReindexObject);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterTSConfigType(uint64_t a1, uint64_t a2)
{
  AlterTSConfig = lazy protocol witness table accessor for type PgQuery_AlterTSConfigType and conformance PgQuery_AlterTSConfigType();

  return MEMORY[0x1EEE15710](a1, a2, AlterTSConfig);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterSubscriptionType(uint64_t a1, uint64_t a2)
{
  AlterSubscription = lazy protocol witness table accessor for type PgQuery_AlterSubscriptionType and conformance PgQuery_AlterSubscriptionType();

  return MEMORY[0x1EEE15710](a1, a2, AlterSubscription);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_OnCommitAction(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type PgQuery_OnCommitAction and conformance PgQuery_OnCommitAction();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ParamKind(uint64_t a1, uint64_t a2)
{
  Param = lazy protocol witness table accessor for type PgQuery_ParamKind and conformance PgQuery_ParamKind();

  return MEMORY[0x1EEE15710](a1, a2, Param);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CoercionContext(uint64_t a1, uint64_t a2)
{
  Coercion = lazy protocol witness table accessor for type PgQuery_CoercionContext and conformance PgQuery_CoercionContext();

  return MEMORY[0x1EEE15710](a1, a2, Coercion);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CoercionForm(uint64_t a1, uint64_t a2)
{
  Coercion = lazy protocol witness table accessor for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm();

  return MEMORY[0x1EEE15710](a1, a2, Coercion);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_BoolExprType(uint64_t a1, uint64_t a2)
{
  BoolExpr = lazy protocol witness table accessor for type PgQuery_BoolExprType and conformance PgQuery_BoolExprType();

  return MEMORY[0x1EEE15710](a1, a2, BoolExpr);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_SubLinkType(uint64_t a1, uint64_t a2)
{
  SubLink = lazy protocol witness table accessor for type PgQuery_SubLinkType and conformance PgQuery_SubLinkType();

  return MEMORY[0x1EEE15710](a1, a2, SubLink);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RowCompareType(uint64_t a1, uint64_t a2)
{
  RowCompare = lazy protocol witness table accessor for type PgQuery_RowCompareType and conformance PgQuery_RowCompareType();

  return MEMORY[0x1EEE15710](a1, a2, RowCompare);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_MinMaxOp(uint64_t a1, uint64_t a2)
{
  MinMax = lazy protocol witness table accessor for type PgQuery_MinMaxOp and conformance PgQuery_MinMaxOp();

  return MEMORY[0x1EEE15710](a1, a2, MinMax);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_SQLValueFunctionOp(uint64_t a1, uint64_t a2)
{
  SQLValueFunction = lazy protocol witness table accessor for type PgQuery_SQLValueFunctionOp and conformance PgQuery_SQLValueFunctionOp();

  return MEMORY[0x1EEE15710](a1, a2, SQLValueFunction);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_XmlExprOp(uint64_t a1, uint64_t a2)
{
  XmlExpr = lazy protocol witness table accessor for type PgQuery_XmlExprOp and conformance PgQuery_XmlExprOp();

  return MEMORY[0x1EEE15710](a1, a2, XmlExpr);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_XmlOptionType(uint64_t a1, uint64_t a2)
{
  XmlOption = lazy protocol witness table accessor for type PgQuery_XmlOptionType and conformance PgQuery_XmlOptionType();

  return MEMORY[0x1EEE15710](a1, a2, XmlOption);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_NullTestType(uint64_t a1, uint64_t a2)
{
  NullTest = lazy protocol witness table accessor for type PgQuery_NullTestType and conformance PgQuery_NullTestType();

  return MEMORY[0x1EEE15710](a1, a2, NullTest);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_BoolTestType(uint64_t a1, uint64_t a2)
{
  BoolTest = lazy protocol witness table accessor for type PgQuery_BoolTestType and conformance PgQuery_BoolTestType();

  return MEMORY[0x1EEE15710](a1, a2, BoolTest);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CmdType(uint64_t a1, uint64_t a2)
{
  Cmd = lazy protocol witness table accessor for type PgQuery_CmdType and conformance PgQuery_CmdType();

  return MEMORY[0x1EEE15710](a1, a2, Cmd);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_JoinType(uint64_t a1, uint64_t a2)
{
  Join = lazy protocol witness table accessor for type PgQuery_JoinType and conformance PgQuery_JoinType();

  return MEMORY[0x1EEE15710](a1, a2, Join);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AggStrategy(uint64_t a1, uint64_t a2)
{
  Agg = lazy protocol witness table accessor for type PgQuery_AggStrategy and conformance PgQuery_AggStrategy();

  return MEMORY[0x1EEE15710](a1, a2, Agg);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AggSplit(uint64_t a1, uint64_t a2)
{
  Agg = lazy protocol witness table accessor for type PgQuery_AggSplit and conformance PgQuery_AggSplit();

  return MEMORY[0x1EEE15710](a1, a2, Agg);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_SetOpCmd(uint64_t a1, uint64_t a2)
{
  SetOp = lazy protocol witness table accessor for type PgQuery_SetOpCmd and conformance PgQuery_SetOpCmd();

  return MEMORY[0x1EEE15710](a1, a2, SetOp);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_SetOpStrategy(uint64_t a1, uint64_t a2)
{
  SetOp = lazy protocol witness table accessor for type PgQuery_SetOpStrategy and conformance PgQuery_SetOpStrategy();

  return MEMORY[0x1EEE15710](a1, a2, SetOp);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_OnConflictAction(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type PgQuery_OnConflictAction and conformance PgQuery_OnConflictAction();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_LimitOption(uint64_t a1, uint64_t a2)
{
  Limit = lazy protocol witness table accessor for type PgQuery_LimitOption and conformance PgQuery_LimitOption();

  return MEMORY[0x1EEE15710](a1, a2, Limit);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_LockClauseStrength(uint64_t a1, uint64_t a2)
{
  LockClause = lazy protocol witness table accessor for type PgQuery_LockClauseStrength and conformance PgQuery_LockClauseStrength();

  return MEMORY[0x1EEE15710](a1, a2, LockClause);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_LockWaitPolicy(uint64_t a1, uint64_t a2)
{
  LockWait = lazy protocol witness table accessor for type PgQuery_LockWaitPolicy and conformance PgQuery_LockWaitPolicy();

  return MEMORY[0x1EEE15710](a1, a2, LockWait);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_LockTupleMode(uint64_t a1, uint64_t a2)
{
  LockTuple = lazy protocol witness table accessor for type PgQuery_LockTupleMode and conformance PgQuery_LockTupleMode();

  return MEMORY[0x1EEE15710](a1, a2, LockTuple);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_KeywordKind(uint64_t a1, uint64_t a2)
{
  Keyword = lazy protocol witness table accessor for type PgQuery_KeywordKind and conformance PgQuery_KeywordKind();

  return MEMORY[0x1EEE15710](a1, a2, Keyword);
}

uint64_t PgQuery_Token.rawValue.getter(uint64_t result, char a2)
{
  if (a2)
  {
    return qword_184D46A00[result];
  }

  return result;
}

uint64_t protocol witness for Enum.init(rawValue:) in conformance PgQuery_OverridingKind@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PgQuery_OverridingKind@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PgQuery_Token@<X0>(uint64_t *a1@<X8>)
{
  result = PgQuery_Token.rawValue.getter(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PgQuery_OverridingKind()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_Token(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type PgQuery_Token and conformance PgQuery_Token();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PgQuery_OverridingKind()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance PgQuery_ObjectType(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = a5(*a1, *(a1 + 8));
  return v8 == a5(v6, v7);
}

uint64_t one-time initialization function for _protobuf_nameMap()
{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_OverridingKind._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_OverridingKind._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "OVERRIDING_KIND_UNDEFINED";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "OVERRIDING_NOT_SET";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "OVERRIDING_USER_VALUE";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "OVERRIDING_SYSTEM_VALUE";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_QuerySource._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_QuerySource._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "QUERY_SOURCE_UNDEFINED";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "QSRC_ORIGINAL";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "QSRC_PARSER";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "QSRC_INSTEAD_RULE";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "QSRC_QUAL_INSTEAD_RULE";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "QSRC_NON_INSTEAD_RULE";
  *(v18 + 1) = 21;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_SortByDir._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_SortByDir._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SORT_BY_DIR_UNDEFINED";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SORTBY_DEFAULT";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SORTBY_ASC";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SORTBY_DESC";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "SORTBY_USING";
  *(v15 + 8) = 12;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_SortByNulls._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_SortByNulls._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SORT_BY_NULLS_UNDEFINED";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SORTBY_NULLS_DEFAULT";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SORTBY_NULLS_FIRST";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SORTBY_NULLS_LAST";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_A_Expr_Kind._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_A_Expr_Kind._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_184D2AA40;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 0;
  *v5 = "A_EXPR_KIND_UNDEFINED";
  *(v5 + 8) = 21;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "AEXPR_OP";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "AEXPR_OP_ANY";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "AEXPR_OP_ALL";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "AEXPR_DISTINCT";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "AEXPR_NOT_DISTINCT";
  *(v17 + 1) = 18;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "AEXPR_NULLIF";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "AEXPR_OF";
  *(v21 + 1) = 8;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "AEXPR_IN";
  *(v22 + 8) = 8;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "AEXPR_LIKE";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "AEXPR_ILIKE";
  *(v26 + 1) = 11;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "AEXPR_SIMILAR";
  *(v28 + 1) = 13;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "AEXPR_BETWEEN";
  *(v30 + 1) = 13;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "AEXPR_NOT_BETWEEN";
  *(v32 + 1) = 17;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "AEXPR_BETWEEN_SYM";
  *(v34 + 1) = 17;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "AEXPR_NOT_BETWEEN_SYM";
  *(v36 + 1) = 21;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "AEXPR_PAREN";
  *(v37 + 8) = 11;
  *(v37 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_RoleSpecType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_RoleSpecType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_184D2AA30;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 0;
  *v5 = "ROLE_SPEC_TYPE_UNDEFINED";
  *(v5 + 8) = 24;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "ROLESPEC_CSTRING";
  *(v9 + 8) = 16;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "ROLESPEC_CURRENT_USER";
  *(v11 + 1) = 21;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "ROLESPEC_SESSION_USER";
  *(v13 + 1) = 21;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 4;
  *v14 = "ROLESPEC_PUBLIC";
  *(v14 + 8) = 15;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_TableLikeOption._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_TableLikeOption._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_184D2AA50;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 0;
  *v5 = "TABLE_LIKE_OPTION_UNDEFINED";
  *(v5 + 8) = 27;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v26 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "CREATE_TABLE_LIKE_COMMENTS";
  *(v9 + 8) = 26;
  *(v9 + 16) = 2;
  v8();
  v10 = (v26 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "CREATE_TABLE_LIKE_CONSTRAINTS";
  *(v11 + 1) = 29;
  v11[16] = 2;
  v8();
  v12 = (v26 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "CREATE_TABLE_LIKE_DEFAULTS";
  *(v13 + 1) = 26;
  v13[16] = 2;
  v8();
  v14 = (v26 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "CREATE_TABLE_LIKE_GENERATED";
  *(v15 + 1) = 27;
  v15[16] = 2;
  v8();
  v16 = (v26 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "CREATE_TABLE_LIKE_IDENTITY";
  *(v17 + 1) = 26;
  v17[16] = 2;
  v8();
  v18 = (v26 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "CREATE_TABLE_LIKE_INDEXES";
  *(v19 + 1) = 25;
  v19[16] = 2;
  v8();
  v20 = (v26 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "CREATE_TABLE_LIKE_STATISTICS";
  *(v21 + 1) = 28;
  v21[16] = 2;
  v8();
  v22 = v26 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "CREATE_TABLE_LIKE_STORAGE";
  *(v22 + 8) = 25;
  *(v22 + 16) = 2;
  v8();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "CREATE_TABLE_LIKE_ALL";
  *(v24 + 1) = 21;
  v24[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_DefElemAction._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_DefElemAction._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_184D2AA30;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 0;
  *v5 = "DEF_ELEM_ACTION_UNDEFINED";
  *(v5 + 8) = 25;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "DEFELEM_UNSPEC";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "DEFELEM_SET";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "DEFELEM_ADD";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 4;
  *v14 = "DEFELEM_DROP";
  *(v14 + 8) = 12;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_PartitionRangeDatumKind._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_PartitionRangeDatumKind._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "PARTITION_RANGE_DATUM_KIND_UNDEFINED";
  *(v6 + 8) = 36;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PARTITION_RANGE_DATUM_MINVALUE";
  *(v10 + 8) = 30;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PARTITION_RANGE_DATUM_VALUE";
  *(v12 + 1) = 27;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "PARTITION_RANGE_DATUM_MAXVALUE";
  *(v14 + 1) = 30;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_RTEKind._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_RTEKind._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_184D2AA50;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 0;
  *v5 = "RTEKIND_UNDEFINED";
  *(v5 + 8) = 17;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "RTE_RELATION";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "RTE_SUBQUERY";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "RTE_JOIN";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "RTE_FUNCTION";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "RTE_TABLEFUNC";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "RTE_VALUES";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "RTE_CTE";
  *(v21 + 1) = 7;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "RTE_NAMEDTUPLESTORE";
  *(v22 + 8) = 19;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "RTE_RESULT";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_WCOKind._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_WCOKind._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_184D2AA30;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 0;
  *v5 = "WCOKIND_UNDEFINED";
  *(v5 + 8) = 17;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "WCO_VIEW_CHECK";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "WCO_RLS_INSERT_CHECK";
  *(v11 + 1) = 20;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "WCO_RLS_UPDATE_CHECK";
  *(v13 + 1) = 20;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 4;
  *v14 = "WCO_RLS_CONFLICT_CHECK";
  *(v14 + 8) = 22;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_GroupingSetKind._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_GroupingSetKind._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_184D2AA20;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 0;
  *v4 = "GROUPING_SET_KIND_UNDEFINED";
  *(v4 + 8) = 27;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 1;
  *v8 = "GROUPING_SET_EMPTY";
  *(v8 + 8) = 18;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "GROUPING_SET_SIMPLE";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "GROUPING_SET_ROLLUP";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "GROUPING_SET_CUBE";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "GROUPING_SET_SETS";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CTEMaterialize._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CTEMaterialize._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "CTEMATERIALIZE_UNDEFINED";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CTEMaterializeDefault";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "CTEMaterializeAlways";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "CTEMaterializeNever";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_SetOperation._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_SetOperation._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SET_OPERATION_UNDEFINED";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SETOP_NONE";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SETOP_UNION";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SETOP_INTERSECT";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "SETOP_EXCEPT";
  *(v15 + 8) = 12;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_ObjectType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_ObjectType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_184D2AA60;
  v4 = v106 + v3;
  v5 = v106 + v3 + v1[14];
  *(v106 + v3) = 0;
  *v5 = "OBJECT_TYPE_UNDEFINED";
  *(v5 + 8) = 21;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v106 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "OBJECT_ACCESS_METHOD";
  *(v9 + 8) = 20;
  *(v9 + 16) = 2;
  v8();
  v10 = (v106 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "OBJECT_AGGREGATE";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v8();
  v12 = (v106 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "OBJECT_AMOP";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = (v106 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "OBJECT_AMPROC";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v8();
  v16 = (v106 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "OBJECT_ATTRIBUTE";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v106 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "OBJECT_CAST";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v106 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "OBJECT_COLUMN";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = v106 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "OBJECT_COLLATION";
  *(v22 + 8) = 16;
  *(v22 + 16) = 2;
  v8();
  v23 = (v106 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "OBJECT_CONVERSION";
  *(v24 + 1) = 17;
  v24[16] = 2;
  v8();
  v25 = (v106 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "OBJECT_DATABASE";
  *(v26 + 1) = 15;
  v26[16] = 2;
  v8();
  v27 = (v106 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "OBJECT_DEFAULT";
  *(v28 + 1) = 14;
  v28[16] = 2;
  v8();
  v29 = (v106 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "OBJECT_DEFACL";
  *(v30 + 1) = 13;
  v30[16] = 2;
  v8();
  v31 = (v106 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "OBJECT_DOMAIN";
  *(v32 + 1) = 13;
  v32[16] = 2;
  v8();
  v33 = (v106 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "OBJECT_DOMCONSTRAINT";
  *(v34 + 1) = 20;
  v34[16] = 2;
  v8();
  v35 = (v106 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "OBJECT_EVENT_TRIGGER";
  *(v36 + 1) = 20;
  v36[16] = 2;
  v8();
  v37 = v106 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "OBJECT_EXTENSION";
  *(v37 + 8) = 16;
  *(v37 + 16) = 2;
  v8();
  v38 = (v106 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "OBJECT_FDW";
  *(v39 + 1) = 10;
  v39[16] = 2;
  v8();
  v40 = (v106 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "OBJECT_FOREIGN_SERVER";
  *(v41 + 1) = 21;
  v41[16] = 2;
  v8();
  v42 = (v106 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "OBJECT_FOREIGN_TABLE";
  *(v43 + 1) = 20;
  v43[16] = 2;
  v8();
  v44 = (v106 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "OBJECT_FUNCTION";
  *(v45 + 1) = 15;
  v45[16] = 2;
  v8();
  v46 = (v106 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "OBJECT_INDEX";
  *(v47 + 1) = 12;
  v47[16] = 2;
  v8();
  v48 = (v106 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 22;
  *v49 = "OBJECT_LANGUAGE";
  *(v49 + 1) = 15;
  v49[16] = 2;
  v8();
  v50 = (v106 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 23;
  *v51 = "OBJECT_LARGEOBJECT";
  *(v51 + 1) = 18;
  v51[16] = 2;
  v8();
  v52 = (v106 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 24;
  *v53 = "OBJECT_MATVIEW";
  *(v53 + 1) = 14;
  v53[16] = 2;
  v8();
  v54 = (v106 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 25;
  *v55 = "OBJECT_OPCLASS";
  *(v55 + 1) = 14;
  v55[16] = 2;
  v8();
  v56 = (v106 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 26;
  *v57 = "OBJECT_OPERATOR";
  *(v57 + 1) = 15;
  v57[16] = 2;
  v8();
  v58 = (v106 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 27;
  *v59 = "OBJECT_OPFAMILY";
  *(v59 + 1) = 15;
  v59[16] = 2;
  v8();
  v60 = (v106 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 28;
  *v61 = "OBJECT_POLICY";
  *(v61 + 1) = 13;
  v61[16] = 2;
  v8();
  v62 = (v106 + v3 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 29;
  *v63 = "OBJECT_PROCEDURE";
  *(v63 + 1) = 16;
  v63[16] = 2;
  v8();
  v64 = (v106 + v3 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 30;
  *v65 = "OBJECT_PUBLICATION";
  *(v65 + 1) = 18;
  v65[16] = 2;
  v8();
  v66 = (v106 + v3 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 31;
  *v67 = 0x184DE2000;
  *(v67 + 1) = 22;
  v67[16] = 2;
  v8();
  v68 = v106 + v3 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 32;
  *v68 = "OBJECT_ROLE";
  *(v68 + 8) = 11;
  *(v68 + 16) = 2;
  v8();
  v69 = (v106 + v3 + 33 * v2);
  v70 = v69 + v1[14];
  *v69 = 33;
  *v70 = "OBJECT_ROUTINE";
  *(v70 + 1) = 14;
  v70[16] = 2;
  v8();
  v71 = (v106 + v3 + 34 * v2);
  v72 = v71 + v1[14];
  *v71 = 34;
  *v72 = "OBJECT_RULE";
  *(v72 + 1) = 11;
  v72[16] = 2;
  v8();
  v73 = (v106 + v3 + 35 * v2);
  v74 = v73 + v1[14];
  *v73 = 35;
  *v74 = "OBJECT_SCHEMA";
  *(v74 + 1) = 13;
  v74[16] = 2;
  v8();
  v75 = (v106 + v3 + 36 * v2);
  v76 = v75 + v1[14];
  *v75 = 36;
  *v76 = "OBJECT_SEQUENCE";
  *(v76 + 1) = 15;
  v76[16] = 2;
  v8();
  v77 = (v106 + v3 + 37 * v2);
  v78 = v77 + v1[14];
  *v77 = 37;
  *v78 = "OBJECT_SUBSCRIPTION";
  *(v78 + 1) = 19;
  v78[16] = 2;
  v8();
  v79 = (v106 + v3 + 38 * v2);
  v80 = v79 + v1[14];
  *v79 = 38;
  *v80 = "OBJECT_STATISTIC_EXT";
  *(v80 + 1) = 20;
  v80[16] = 2;
  v8();
  v81 = (v106 + v3 + 39 * v2);
  v82 = v81 + v1[14];
  *v81 = 39;
  *v82 = "OBJECT_TABCONSTRAINT";
  *(v82 + 1) = 20;
  v82[16] = 2;
  v8();
  v83 = (v106 + v3 + 40 * v2);
  v84 = v83 + v1[14];
  *v83 = 40;
  *v84 = "OBJECT_TABLE";
  *(v84 + 1) = 12;
  v84[16] = 2;
  v8();
  v85 = (v106 + v3 + 41 * v2);
  v86 = v85 + v1[14];
  *v85 = 41;
  *v86 = "OBJECT_TABLESPACE";
  *(v86 + 1) = 17;
  v86[16] = 2;
  v8();
  v87 = (v106 + v3 + 42 * v2);
  v88 = v87 + v1[14];
  *v87 = 42;
  *v88 = "OBJECT_TRANSFORM";
  *(v88 + 1) = 16;
  v88[16] = 2;
  v8();
  v89 = (v106 + v3 + 43 * v2);
  v90 = v89 + v1[14];
  *v89 = 43;
  *v90 = "OBJECT_TRIGGER";
  *(v90 + 1) = 14;
  v90[16] = 2;
  v8();
  v91 = (v106 + v3 + 44 * v2);
  v92 = v91 + v1[14];
  *v91 = 44;
  *v92 = "OBJECT_TSCONFIGURATION";
  *(v92 + 1) = 22;
  v92[16] = 2;
  v8();
  v93 = (v106 + v3 + 45 * v2);
  v94 = v93 + v1[14];
  *v93 = 45;
  *v94 = "OBJECT_TSDICTIONARY";
  *(v94 + 1) = 19;
  v94[16] = 2;
  v8();
  v95 = (v106 + v3 + 46 * v2);
  v96 = v95 + v1[14];
  *v95 = 46;
  *v96 = "OBJECT_TSPARSER";
  *(v96 + 1) = 15;
  v96[16] = 2;
  v8();
  v97 = (v106 + v3 + 47 * v2);
  v98 = v97 + v1[14];
  *v97 = 47;
  *v98 = "OBJECT_TSTEMPLATE";
  *(v98 + 1) = 17;
  v98[16] = 2;
  v8();
  v99 = (v106 + v3 + 48 * v2);
  v100 = v99 + v1[14];
  *v99 = 48;
  *v100 = "OBJECT_TYPE";
  *(v100 + 1) = 11;
  v100[16] = 2;
  v8();
  v101 = (v106 + v3 + 49 * v2);
  v102 = v101 + v1[14];
  *v101 = 49;
  *v102 = "OBJECT_USER_MAPPING";
  *(v102 + 1) = 19;
  v102[16] = 2;
  v8();
  v103 = (v106 + v3 + 50 * v2);
  v104 = v103 + v1[14];
  *v103 = 50;
  *v104 = "OBJECT_VIEW";
  *(v104 + 1) = 11;
  v104[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_DropBehavior._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_DropBehavior._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "DROP_BEHAVIOR_UNDEFINED";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DROP_RESTRICT";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "DROP_CASCADE";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_AlterTableType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_AlterTableType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v139 = swift_allocObject();
  *(v139 + 16) = xmmword_184D2AA70;
  v4 = v139 + v3;
  v5 = v139 + v3 + v1[14];
  *(v139 + v3) = 0;
  *v5 = "ALTER_TABLE_TYPE_UNDEFINED";
  *(v5 + 8) = 26;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v139 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "AT_AddColumn";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v139 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "AT_AddColumnRecurse";
  *(v11 + 1) = 19;
  v11[16] = 2;
  v8();
  v12 = (v139 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "AT_AddColumnToView";
  *(v13 + 1) = 18;
  v13[16] = 2;
  v8();
  v14 = (v139 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "AT_ColumnDefault";
  *(v15 + 1) = 16;
  v15[16] = 2;
  v8();
  v16 = (v139 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "AT_CookedColumnDefault";
  *(v17 + 1) = 22;
  v17[16] = 2;
  v8();
  v18 = (v139 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "AT_DropNotNull";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  v20 = (v139 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "AT_SetNotNull";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = v139 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "AT_DropExpression";
  *(v22 + 8) = 17;
  *(v22 + 16) = 2;
  v8();
  v23 = (v139 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "AT_CheckNotNull";
  *(v24 + 1) = 15;
  v24[16] = 2;
  v8();
  v25 = (v139 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "AT_SetStatistics";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v8();
  v27 = (v139 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "AT_SetOptions";
  *(v28 + 1) = 13;
  v28[16] = 2;
  v8();
  v29 = (v139 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "AT_ResetOptions";
  *(v30 + 1) = 15;
  v30[16] = 2;
  v8();
  v31 = (v139 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "AT_SetStorage";
  *(v32 + 1) = 13;
  v32[16] = 2;
  v8();
  v33 = (v139 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "AT_DropColumn";
  *(v34 + 1) = 13;
  v34[16] = 2;
  v8();
  v35 = (v139 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "AT_DropColumnRecurse";
  *(v36 + 1) = 20;
  v36[16] = 2;
  v8();
  v37 = v139 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "AT_AddIndex";
  *(v37 + 8) = 11;
  *(v37 + 16) = 2;
  v8();
  v38 = (v139 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "AT_ReAddIndex";
  *(v39 + 1) = 13;
  v39[16] = 2;
  v8();
  v40 = (v139 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "AT_AddConstraint";
  *(v41 + 1) = 16;
  v41[16] = 2;
  v8();
  v42 = (v139 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "AT_AddConstraintRecurse";
  *(v43 + 1) = 23;
  v43[16] = 2;
  v8();
  v44 = (v139 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "AT_ReAddConstraint";
  *(v45 + 1) = 18;
  v45[16] = 2;
  v8();
  v46 = (v139 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "AT_ReAddDomainConstraint";
  *(v47 + 1) = 24;
  v47[16] = 2;
  v8();
  v48 = (v139 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 22;
  *v49 = "AT_AlterConstraint";
  *(v49 + 1) = 18;
  v49[16] = 2;
  v8();
  v50 = (v139 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 23;
  *v51 = "AT_ValidateConstraint";
  *(v51 + 1) = 21;
  v51[16] = 2;
  v8();
  v52 = (v139 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 24;
  *v53 = "AT_ValidateConstraintRecurse";
  *(v53 + 1) = 28;
  v53[16] = 2;
  v8();
  v54 = (v139 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 25;
  *v55 = "AT_AddIndexConstraint";
  *(v55 + 1) = 21;
  v55[16] = 2;
  v8();
  v56 = (v139 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 26;
  *v57 = "AT_DropConstraint";
  *(v57 + 1) = 17;
  v57[16] = 2;
  v8();
  v58 = (v139 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 27;
  *v59 = "AT_DropConstraintRecurse";
  *(v59 + 1) = 24;
  v59[16] = 2;
  v8();
  v60 = (v139 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 28;
  *v61 = "AT_ReAddComment";
  *(v61 + 1) = 15;
  v61[16] = 2;
  v8();
  v62 = (v139 + v3 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 29;
  *v63 = "AT_AlterColumnType";
  *(v63 + 1) = 18;
  v63[16] = 2;
  v8();
  v64 = (v139 + v3 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 30;
  *v65 = "AT_AlterColumnGenericOptions";
  *(v65 + 1) = 28;
  v65[16] = 2;
  v8();
  v66 = (v139 + v3 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 31;
  *v67 = "AT_ChangeOwner";
  *(v67 + 1) = 14;
  v67[16] = 2;
  v8();
  v68 = v139 + v3 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 32;
  *v68 = "AT_ClusterOn";
  *(v68 + 8) = 12;
  *(v68 + 16) = 2;
  v8();
  v69 = (v139 + v3 + 33 * v2);
  v70 = v69 + v1[14];
  *v69 = 33;
  *v70 = "AT_DropCluster";
  *(v70 + 1) = 14;
  v70[16] = 2;
  v8();
  v71 = (v139 + v3 + 34 * v2);
  v72 = v71 + v1[14];
  *v71 = 34;
  *v72 = "AT_SetLogged";
  *(v72 + 1) = 12;
  v72[16] = 2;
  v8();
  v73 = (v139 + v3 + 35 * v2);
  v74 = v73 + v1[14];
  *v73 = 35;
  *v74 = "AT_SetUnLogged";
  *(v74 + 1) = 14;
  v74[16] = 2;
  v8();
  v75 = (v139 + v3 + 36 * v2);
  v76 = v75 + v1[14];
  *v75 = 36;
  *v76 = "AT_DropOids";
  *(v76 + 1) = 11;
  v76[16] = 2;
  v8();
  v77 = (v139 + v3 + 37 * v2);
  v78 = v77 + v1[14];
  *v77 = 37;
  *v78 = "AT_SetTableSpace";
  *(v78 + 1) = 16;
  v78[16] = 2;
  v8();
  v79 = (v139 + v3 + 38 * v2);
  v80 = v79 + v1[14];
  *v79 = 38;
  *v80 = "AT_SetRelOptions";
  *(v80 + 1) = 16;
  v80[16] = 2;
  v8();
  v81 = (v139 + v3 + 39 * v2);
  v82 = v81 + v1[14];
  *v81 = 39;
  *v82 = "AT_ResetRelOptions";
  *(v82 + 1) = 18;
  v82[16] = 2;
  v8();
  v83 = (v139 + v3 + 40 * v2);
  v84 = v83 + v1[14];
  *v83 = 40;
  *v84 = "AT_ReplaceRelOptions";
  *(v84 + 1) = 20;
  v84[16] = 2;
  v8();
  v85 = (v139 + v3 + 41 * v2);
  v86 = v85 + v1[14];
  *v85 = 41;
  *v86 = "AT_EnableTrig";
  *(v86 + 1) = 13;
  v86[16] = 2;
  v8();
  v87 = (v139 + v3 + 42 * v2);
  v88 = v87 + v1[14];
  *v87 = 42;
  *v88 = "AT_EnableAlwaysTrig";
  *(v88 + 1) = 19;
  v88[16] = 2;
  v8();
  v89 = (v139 + v3 + 43 * v2);
  v90 = v89 + v1[14];
  *v89 = 43;
  *v90 = "AT_EnableReplicaTrig";
  *(v90 + 1) = 20;
  v90[16] = 2;
  v8();
  v91 = (v139 + v3 + 44 * v2);
  v92 = v91 + v1[14];
  *v91 = 44;
  *v92 = "AT_DisableTrig";
  *(v92 + 1) = 14;
  v92[16] = 2;
  v8();
  v93 = (v139 + v3 + 45 * v2);
  v94 = v93 + v1[14];
  *v93 = 45;
  *v94 = "AT_EnableTrigAll";
  *(v94 + 1) = 16;
  v94[16] = 2;
  v8();
  v95 = (v139 + v3 + 46 * v2);
  v96 = v95 + v1[14];
  *v95 = 46;
  *v96 = "AT_DisableTrigAll";
  *(v96 + 1) = 17;
  v96[16] = 2;
  v8();
  v97 = (v139 + v3 + 47 * v2);
  v98 = v97 + v1[14];
  *v97 = 47;
  *v98 = "AT_EnableTrigUser";
  *(v98 + 1) = 17;
  v98[16] = 2;
  v8();
  v99 = (v139 + v3 + 48 * v2);
  v100 = v99 + v1[14];
  *v99 = 48;
  *v100 = "AT_DisableTrigUser";
  *(v100 + 1) = 18;
  v100[16] = 2;
  v8();
  v101 = (v139 + v3 + 49 * v2);
  v102 = v101 + v1[14];
  *v101 = 49;
  *v102 = "AT_EnableRule";
  *(v102 + 1) = 13;
  v102[16] = 2;
  v8();
  v103 = (v139 + v3 + 50 * v2);
  v104 = v103 + v1[14];
  *v103 = 50;
  *v104 = "AT_EnableAlwaysRule";
  *(v104 + 1) = 19;
  v104[16] = 2;
  v8();
  v105 = (v139 + v3 + 51 * v2);
  v106 = v105 + v1[14];
  *v105 = 51;
  *v106 = "AT_EnableReplicaRule";
  *(v106 + 1) = 20;
  v106[16] = 2;
  v8();
  v107 = (v139 + v3 + 52 * v2);
  v108 = v107 + v1[14];
  *v107 = 52;
  *v108 = "AT_DisableRule";
  *(v108 + 1) = 14;
  v108[16] = 2;
  v8();
  v109 = (v139 + v3 + 53 * v2);
  v110 = v109 + v1[14];
  *v109 = 53;
  *v110 = "AT_AddInherit";
  *(v110 + 1) = 13;
  v110[16] = 2;
  v8();
  v111 = (v139 + v3 + 54 * v2);
  v112 = v111 + v1[14];
  *v111 = 54;
  *v112 = "AT_DropInherit";
  *(v112 + 1) = 14;
  v112[16] = 2;
  v8();
  v113 = (v139 + v3 + 55 * v2);
  v114 = v113 + v1[14];
  *v113 = 55;
  *v114 = "AT_AddOf";
  *(v114 + 1) = 8;
  v114[16] = 2;
  v8();
  v115 = (v139 + v3 + 56 * v2);
  v116 = v115 + v1[14];
  *v115 = 56;
  *v116 = "AT_DropOf";
  *(v116 + 1) = 9;
  v116[16] = 2;
  v8();
  v117 = (v139 + v3 + 57 * v2);
  v118 = v117 + v1[14];
  *v117 = 57;
  *v118 = "AT_ReplicaIdentity";
  *(v118 + 1) = 18;
  v118[16] = 2;
  v8();
  v119 = (v139 + v3 + 58 * v2);
  v120 = v119 + v1[14];
  *v119 = 58;
  *v120 = "AT_EnableRowSecurity";
  *(v120 + 1) = 20;
  v120[16] = 2;
  v8();
  v121 = (v139 + v3 + 59 * v2);
  v122 = v121 + v1[14];
  *v121 = 59;
  *v122 = "AT_DisableRowSecurity";
  *(v122 + 1) = 21;
  v122[16] = 2;
  v8();
  v123 = (v139 + v3 + 60 * v2);
  v124 = v123 + v1[14];
  *v123 = 60;
  *v124 = "AT_ForceRowSecurity";
  *(v124 + 1) = 19;
  v124[16] = 2;
  v8();
  v125 = (v139 + v3 + 61 * v2);
  v126 = v125 + v1[14];
  *v125 = 61;
  *v126 = "AT_NoForceRowSecurity";
  *(v126 + 1) = 21;
  v126[16] = 2;
  v8();
  v127 = (v139 + v3 + 62 * v2);
  v128 = v127 + v1[14];
  *v127 = 62;
  *v128 = "AT_GenericOptions";
  *(v128 + 1) = 17;
  v128[16] = 2;
  v8();
  v129 = (v139 + v3 + 63 * v2);
  v130 = v129 + v1[14];
  *v129 = 63;
  *v130 = "AT_AttachPartition";
  *(v130 + 1) = 18;
  v130[16] = 2;
  v8();
  v131 = v139 + v3 + (v2 << 6) + v1[14];
  *(v4 + (v2 << 6)) = 64;
  *v131 = "AT_DetachPartition";
  *(v131 + 8) = 18;
  *(v131 + 16) = 2;
  v8();
  v132 = (v139 + v3 + 65 * v2);
  v133 = v132 + v1[14];
  *v132 = 65;
  *v133 = "AT_AddIdentity";
  *(v133 + 1) = 14;
  v133[16] = 2;
  v8();
  v134 = (v139 + v3 + 66 * v2);
  v135 = v134 + v1[14];
  *v134 = 66;
  *v135 = "AT_SetIdentity";
  *(v135 + 1) = 14;
  v135[16] = 2;
  v8();
  v136 = (v139 + v3 + 67 * v2);
  v137 = v136 + v1[14];
  *v136 = 67;
  *v137 = "AT_DropIdentity";
  *(v137 + 1) = 15;
  v137[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_GrantTargetType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_GrantTargetType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "GRANT_TARGET_TYPE_UNDEFINED";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ACL_TARGET_OBJECT";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ACL_TARGET_ALL_IN_SCHEMA";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ACL_TARGET_DEFAULTS";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_VariableSetKind._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_VariableSetKind._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_184D2AA80;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 0;
  *v4 = "VARIABLE_SET_KIND_UNDEFINED";
  *(v4 + 8) = 27;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 1;
  *v8 = "VAR_SET_VALUE";
  *(v8 + 8) = 13;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "VAR_SET_DEFAULT";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "VAR_SET_CURRENT";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "VAR_SET_MULTI";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "VAR_RESET";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "VAR_RESET_ALL";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_ConstrType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_ConstrType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_184D2AA90;
  v4 = v36 + v3;
  v5 = v36 + v3 + v1[14];
  *(v36 + v3) = 0;
  *v5 = "CONSTR_TYPE_UNDEFINED";
  *(v5 + 8) = 21;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v36 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "CONSTR_NULL";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v36 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "CONSTR_NOTNULL";
  *(v11 + 1) = 14;
  v11[16] = 2;
  v8();
  v12 = (v36 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "CONSTR_DEFAULT";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v8();
  v14 = (v36 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "CONSTR_IDENTITY";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v8();
  v16 = (v36 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "CONSTR_GENERATED";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v36 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "CONSTR_CHECK";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v36 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "CONSTR_PRIMARY";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = v36 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "CONSTR_UNIQUE";
  *(v22 + 8) = 13;
  *(v22 + 16) = 2;
  v8();
  v23 = (v36 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "CONSTR_EXCLUSION";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v8();
  v25 = (v36 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "CONSTR_FOREIGN";
  *(v26 + 1) = 14;
  v26[16] = 2;
  v8();
  v27 = (v36 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "CONSTR_ATTR_DEFERRABLE";
  *(v28 + 1) = 22;
  v28[16] = 2;
  v8();
  v29 = (v36 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "CONSTR_ATTR_NOT_DEFERRABLE";
  *(v30 + 1) = 26;
  v30[16] = 2;
  v8();
  v31 = (v36 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "CONSTR_ATTR_DEFERRED";
  *(v32 + 1) = 20;
  v32[16] = 2;
  v8();
  v33 = (v36 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "CONSTR_ATTR_IMMEDIATE";
  *(v34 + 1) = 21;
  v34[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_ImportForeignSchemaType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_ImportForeignSchemaType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "IMPORT_FOREIGN_SCHEMA_TYPE_UNDEFINED";
  *(v6 + 8) = 36;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FDW_IMPORT_SCHEMA_ALL";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "FDW_IMPORT_SCHEMA_LIMIT_TO";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "FDW_IMPORT_SCHEMA_EXCEPT";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_RoleStmtType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_RoleStmtType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ROLE_STMT_TYPE_UNDEFINED";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ROLESTMT_ROLE";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ROLESTMT_USER";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ROLESTMT_GROUP";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_FetchDirection._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_FetchDirection._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_184D2AA30;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 0;
  *v5 = "FETCH_DIRECTION_UNDEFINED";
  *(v5 + 8) = 25;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "FETCH_FORWARD";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "FETCH_BACKWARD";
  *(v11 + 1) = 14;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "FETCH_ABSOLUTE";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 4;
  *v14 = "FETCH_RELATIVE";
  *(v14 + 8) = 14;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_FunctionParameterMode._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_FunctionParameterMode._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "FUNCTION_PARAMETER_MODE_UNDEFINED";
  *(v6 + 8) = 33;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FUNC_PARAM_IN";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "FUNC_PARAM_OUT";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "FUNC_PARAM_INOUT";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "FUNC_PARAM_VARIADIC";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "FUNC_PARAM_TABLE";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_TransactionStmtKind._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_TransactionStmtKind._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_184D2AAA0;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 0;
  *v5 = "TRANSACTION_STMT_KIND_UNDEFINED";
  *(v5 + 8) = 31;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v28 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "TRANS_STMT_BEGIN";
  *(v9 + 8) = 16;
  *(v9 + 16) = 2;
  v8();
  v10 = (v28 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "TRANS_STMT_START";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v8();
  v12 = (v28 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "TRANS_STMT_COMMIT";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = (v28 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "TRANS_STMT_ROLLBACK";
  *(v15 + 1) = 19;
  v15[16] = 2;
  v8();
  v16 = (v28 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "TRANS_STMT_SAVEPOINT";
  *(v17 + 1) = 20;
  v17[16] = 2;
  v8();
  v18 = (v28 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "TRANS_STMT_RELEASE";
  *(v19 + 1) = 18;
  v19[16] = 2;
  v8();
  v20 = (v28 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "TRANS_STMT_ROLLBACK_TO";
  *(v21 + 1) = 22;
  v21[16] = 2;
  v8();
  v22 = v28 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "TRANS_STMT_PREPARE";
  *(v22 + 8) = 18;
  *(v22 + 16) = 2;
  v8();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "TRANS_STMT_COMMIT_PREPARED";
  *(v24 + 1) = 26;
  v24[16] = 2;
  v8();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "TRANS_STMT_ROLLBACK_PREPARED";
  *(v26 + 1) = 28;
  v26[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_ViewCheckOption._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_ViewCheckOption._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "VIEW_CHECK_OPTION_UNDEFINED";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "NO_CHECK_OPTION";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "LOCAL_CHECK_OPTION";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "CASCADED_CHECK_OPTION";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_ClusterOption._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_ClusterOption._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "CLUSTER_OPTION_UNDEFINED";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CLUOPT_RECHECK";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "CLUOPT_VERBOSE";
  *(v11 + 8) = 14;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_DiscardMode._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_DiscardMode._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "DISCARD_MODE_UNDEFINED";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DISCARD_ALL";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "DISCARD_PLANS";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "DISCARD_SEQUENCES";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "DISCARD_TEMP";
  *(v15 + 8) = 12;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_ReindexObjectType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_ReindexObjectType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_184D2AA20;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 0;
  *v4 = "REINDEX_OBJECT_TYPE_UNDEFINED";
  *(v4 + 8) = 29;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 1;
  *v8 = "REINDEX_OBJECT_INDEX";
  *(v8 + 8) = 20;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "REINDEX_OBJECT_TABLE";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "REINDEX_OBJECT_SCHEMA";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "REINDEX_OBJECT_SYSTEM";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "REINDEX_OBJECT_DATABASE";
  *(v16 + 1) = 23;
  v16[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_AlterTSConfigType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_AlterTSConfigType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ALTER_TSCONFIG_TYPE_UNDEFINED";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ALTER_TSCONFIG_ADD_MAPPING";
  *(v10 + 8) = 26;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ALTER_TSCONFIG_ALTER_MAPPING_FOR_TOKEN";
  *(v12 + 1) = 38;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ALTER_TSCONFIG_REPLACE_DICT";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "ALTER_TSCONFIG_REPLACE_DICT_FOR_TOKEN";
  *(v16 + 1) = 37;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "ALTER_TSCONFIG_DROP_MAPPING";
  *(v18 + 1) = 27;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_AlterSubscriptionType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_AlterSubscriptionType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_184D2AA20;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 0;
  *v4 = "ALTER_SUBSCRIPTION_TYPE_UNDEFINED";
  *(v4 + 8) = 33;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 1;
  *v8 = "ALTER_SUBSCRIPTION_OPTIONS";
  *(v8 + 8) = 26;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "ALTER_SUBSCRIPTION_CONNECTION";
  *(v10 + 1) = 29;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ALTER_SUBSCRIPTION_PUBLICATION";
  *(v12 + 1) = 30;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "ALTER_SUBSCRIPTION_REFRESH";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "ALTER_SUBSCRIPTION_ENABLED";
  *(v16 + 1) = 26;
  v16[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_OnCommitAction._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_OnCommitAction._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ON_COMMIT_ACTION_UNDEFINED";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ONCOMMIT_NOOP";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ONCOMMIT_PRESERVE_ROWS";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ONCOMMIT_DELETE_ROWS";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "ONCOMMIT_DROP";
  *(v15 + 8) = 13;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_ParamKind._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_ParamKind._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "PARAM_KIND_UNDEFINED";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PARAM_EXTERN";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PARAM_EXEC";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "PARAM_SUBLINK";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "PARAM_MULTIEXPR";
  *(v15 + 8) = 15;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CoercionContext._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CoercionContext._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "COERCION_CONTEXT_UNDEFINED";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "COERCION_IMPLICIT";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "COERCION_ASSIGNMENT";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "COERCION_EXPLICIT";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CoercionForm._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CoercionForm._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "COERCION_FORM_UNDEFINED";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "COERCE_EXPLICIT_CALL";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "COERCE_EXPLICIT_CAST";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "COERCE_IMPLICIT_CAST";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_BoolExprType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_BoolExprType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "BOOL_EXPR_TYPE_UNDEFINED";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AND_EXPR";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "OR_EXPR";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "NOT_EXPR";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_SubLinkType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_SubLinkType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_184D2AAB0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 0;
  *v5 = "SUB_LINK_TYPE_UNDEFINED";
  *(v5 + 8) = 23;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "EXISTS_SUBLINK";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "ALL_SUBLINK";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "ANY_SUBLINK";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "ROWCOMPARE_SUBLINK";
  *(v15 + 1) = 18;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "EXPR_SUBLINK";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "MULTIEXPR_SUBLINK";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "ARRAY_SUBLINK";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "CTE_SUBLINK";
  *(v22 + 8) = 11;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_RowCompareType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_RowCompareType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_184D2AA80;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 0;
  *v4 = "ROW_COMPARE_TYPE_UNDEFINED";
  *(v4 + 8) = 26;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 1;
  *v8 = "ROWCOMPARE_LT";
  *(v8 + 8) = 13;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "ROWCOMPARE_LE";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ROWCOMPARE_EQ";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "ROWCOMPARE_GE";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "ROWCOMPARE_GT";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "ROWCOMPARE_NE";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_MinMaxOp._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_MinMaxOp._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "MIN_MAX_OP_UNDEFINED";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "IS_GREATEST";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "IS_LEAST";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_SQLValueFunctionOp._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_SQLValueFunctionOp._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_184D2AAC0;
  v4 = v38 + v3;
  v5 = v38 + v3 + v1[14];
  *(v38 + v3) = 0;
  *v5 = "SQLVALUE_FUNCTION_OP_UNDEFINED";
  *(v5 + 8) = 30;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "SVFOP_CURRENT_DATE";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "SVFOP_CURRENT_TIME";
  *(v11 + 1) = 18;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "SVFOP_CURRENT_TIME_N";
  *(v13 + 1) = 20;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "SVFOP_CURRENT_TIMESTAMP";
  *(v15 + 1) = 23;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "SVFOP_CURRENT_TIMESTAMP_N";
  *(v17 + 1) = 25;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "SVFOP_LOCALTIME";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "SVFOP_LOCALTIME_N";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "SVFOP_LOCALTIMESTAMP";
  *(v22 + 8) = 20;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "SVFOP_LOCALTIMESTAMP_N";
  *(v24 + 1) = 22;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "SVFOP_CURRENT_ROLE";
  *(v26 + 1) = 18;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "SVFOP_CURRENT_USER";
  *(v28 + 1) = 18;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "SVFOP_USER";
  *(v30 + 1) = 10;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "SVFOP_SESSION_USER";
  *(v32 + 1) = 18;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "SVFOP_CURRENT_CATALOG";
  *(v34 + 1) = 21;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "SVFOP_CURRENT_SCHEMA";
  *(v36 + 1) = 20;
  v36[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_XmlExprOp._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_XmlExprOp._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_184D2AAB0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 0;
  *v5 = "XML_EXPR_OP_UNDEFINED";
  *(v5 + 8) = 21;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "IS_XMLCONCAT";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "IS_XMLELEMENT";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "IS_XMLFOREST";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "IS_XMLPARSE";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "IS_XMLPI";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "IS_XMLROOT";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "IS_XMLSERIALIZE";
  *(v21 + 1) = 15;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "IS_DOCUMENT";
  *(v22 + 8) = 11;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_XmlOptionType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_XmlOptionType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "XML_OPTION_TYPE_UNDEFINED";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "XMLOPTION_DOCUMENT";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "XMLOPTION_CONTENT";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_NullTestType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_NullTestType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NULL_TEST_TYPE_UNDEFINED";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "IS_NULL";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "IS_NOT_NULL";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_BoolTestType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_BoolTestType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "BOOL_TEST_TYPE_UNDEFINED";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "IS_TRUE";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "IS_NOT_TRUE";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "IS_FALSE";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "IS_NOT_FALSE";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "IS_UNKNOWN";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "IS_NOT_UNKNOWN";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CmdType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CmdType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_184D2AAD0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 0;
  *v5 = "CMD_TYPE_UNDEFINED";
  *(v5 + 8) = 18;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "CMD_UNKNOWN";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "CMD_SELECT";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "CMD_UPDATE";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "CMD_INSERT";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "CMD_DELETE";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "CMD_UTILITY";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "CMD_NOTHING";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_JoinType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_JoinType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_184D2AAB0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 0;
  *v5 = "JOIN_TYPE_UNDEFINED";
  *(v5 + 8) = 19;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "JOIN_INNER";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "JOIN_LEFT";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "JOIN_FULL";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "JOIN_RIGHT";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "JOIN_SEMI";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "JOIN_ANTI";
  *(v19 + 1) = 9;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "JOIN_UNIQUE_OUTER";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "JOIN_UNIQUE_INNER";
  *(v22 + 8) = 17;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_AggStrategy._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_AggStrategy._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_184D2AA30;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 0;
  *v5 = "AGG_STRATEGY_UNDEFINED";
  *(v5 + 8) = 22;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "AGG_PLAIN";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "AGG_SORTED";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "AGG_HASHED";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 4;
  *v14 = "AGG_MIXED";
  *(v14 + 8) = 9;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_AggSplit._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_AggSplit._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "AGG_SPLIT_UNDEFINED";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AGGSPLIT_SIMPLE";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "AGGSPLIT_INITIAL_SERIAL";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "AGGSPLIT_FINAL_DESERIAL";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_SetOpCmd._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_SetOpCmd._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SET_OP_CMD_UNDEFINED";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SETOPCMD_INTERSECT";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SETOPCMD_INTERSECT_ALL";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SETOPCMD_EXCEPT";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "SETOPCMD_EXCEPT_ALL";
  *(v15 + 8) = 19;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_SetOpStrategy._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_SetOpStrategy._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SET_OP_STRATEGY_UNDEFINED";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SETOP_SORTED";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "SETOP_HASHED";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_OnConflictAction._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_OnConflictAction._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ON_CONFLICT_ACTION_UNDEFINED";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ONCONFLICT_NONE";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ONCONFLICT_NOTHING";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ONCONFLICT_UPDATE";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_LimitOption._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_LimitOption._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "LIMIT_OPTION_UNDEFINED";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "LIMIT_OPTION_DEFAULT";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "LIMIT_OPTION_COUNT";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "LIMIT_OPTION_WITH_TIES";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_LockClauseStrength._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_LockClauseStrength._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "LOCK_CLAUSE_STRENGTH_UNDEFINED";
  *(v6 + 8) = 30;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "LCS_NONE";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "LCS_FORKEYSHARE";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "LCS_FORSHARE";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "LCS_FORNOKEYUPDATE";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "LCS_FORUPDATE";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_LockWaitPolicy._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_LockWaitPolicy._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "LOCK_WAIT_POLICY_UNDEFINED";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "LockWaitBlock";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "LockWaitSkip";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "LockWaitError";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_LockTupleMode._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_LockTupleMode._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "LOCK_TUPLE_MODE_UNDEFINED";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "LockTupleKeyShare";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "LockTupleShare";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "LockTupleNoKeyExclusive";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "LockTupleExclusive";
  *(v15 + 8) = 18;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_KeywordKind._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_KeywordKind._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NO_KEYWORD";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "UNRESERVED_KEYWORD";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "COL_NAME_KEYWORD";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "TYPE_FUNC_NAME_KEYWORD";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "RESERVED_KEYWORD";
  *(v15 + 8) = 16;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_Token._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_Token._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v989 = swift_allocObject();
  *(v989 + 16) = xmmword_184D2AAE0;
  v4 = v989 + v3;
  v5 = v989 + v3 + v1[14];
  *(v989 + v3) = 0;
  *v5 = "NUL";
  *(v5 + 8) = 3;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v989 + v3 + v2 + v1[14];
  *(v4 + v2) = 37;
  *v9 = "ASCII_37";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v989 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 40;
  *v11 = "ASCII_40";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v989 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 41;
  *v13 = "ASCII_41";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v989 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 42;
  *v15 = "ASCII_42";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v989 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 43;
  *v17 = "ASCII_43";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v989 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 44;
  *v19 = "ASCII_44";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v989 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 45;
  *v21 = "ASCII_45";
  *(v21 + 1) = 8;
  v21[16] = 2;
  v8();
  v22 = v989 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 46;
  *v22 = "ASCII_46";
  *(v22 + 8) = 8;
  *(v22 + 16) = 2;
  v8();
  v23 = (v989 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 47;
  *v24 = "ASCII_47";
  *(v24 + 1) = 8;
  v24[16] = 2;
  v8();
  v25 = (v989 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 58;
  *v26 = "ASCII_58";
  *(v26 + 1) = 8;
  v26[16] = 2;
  v8();
  v27 = (v989 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 59;
  *v28 = "ASCII_59";
  *(v28 + 1) = 8;
  v28[16] = 2;
  v8();
  v29 = (v989 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 60;
  *v30 = "ASCII_60";
  *(v30 + 1) = 8;
  v30[16] = 2;
  v8();
  v31 = (v989 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 61;
  *v32 = "ASCII_61";
  *(v32 + 1) = 8;
  v32[16] = 2;
  v8();
  v33 = (v989 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 62;
  *v34 = "ASCII_62";
  *(v34 + 1) = 8;
  v34[16] = 2;
  v8();
  v35 = (v989 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 63;
  *v36 = "ASCII_63";
  *(v36 + 1) = 8;
  v36[16] = 2;
  v8();
  v37 = v989 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 91;
  *v37 = "ASCII_91";
  *(v37 + 8) = 8;
  *(v37 + 16) = 2;
  v8();
  v38 = (v989 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 92;
  *v39 = "ASCII_92";
  *(v39 + 1) = 8;
  v39[16] = 2;
  v8();
  v40 = (v989 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 93;
  *v41 = "ASCII_93";
  *(v41 + 1) = 8;
  v41[16] = 2;
  v8();
  v42 = (v989 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 94;
  *v43 = "ASCII_94";
  *(v43 + 1) = 8;
  v43[16] = 2;
  v8();
  v44 = (v989 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 258;
  *v45 = "IDENT";
  *(v45 + 1) = 5;
  v45[16] = 2;
  v8();
  v46 = (v989 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 259;
  *v47 = "UIDENT";
  *(v47 + 1) = 6;
  v47[16] = 2;
  v8();
  v48 = (v989 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 260;
  *v49 = "FCONST";
  *(v49 + 1) = 6;
  v49[16] = 2;
  v8();
  v50 = (v989 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 261;
  *v51 = "SCONST";
  *(v51 + 1) = 6;
  v51[16] = 2;
  v8();
  v52 = (v989 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 262;
  *v53 = "USCONST";
  *(v53 + 1) = 7;
  v53[16] = 2;
  v8();
  v54 = (v989 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 263;
  *v55 = "BCONST";
  *(v55 + 1) = 6;
  v55[16] = 2;
  v8();
  v56 = (v989 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 264;
  *v57 = "XCONST";
  *(v57 + 1) = 6;
  v57[16] = 2;
  v8();
  v58 = (v989 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 265;
  *v59 = "Op";
  *(v59 + 1) = 2;
  v59[16] = 2;
  v8();
  v60 = (v989 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 266;
  *v61 = "ICONST";
  *(v61 + 1) = 6;
  v61[16] = 2;
  v8();
  v62 = (v989 + v3 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 267;
  *v63 = "PARAM";
  *(v63 + 1) = 5;
  v63[16] = 2;
  v8();
  v64 = (v989 + v3 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 268;
  *v65 = "TYPECAST";
  *(v65 + 1) = 8;
  v65[16] = 2;
  v8();
  v66 = (v989 + v3 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 269;
  *v67 = "DOT_DOT";
  *(v67 + 1) = 7;
  v67[16] = 2;
  v8();
  v68 = v989 + v3 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 270;
  *v68 = "COLON_EQUALS";
  *(v68 + 8) = 12;
  *(v68 + 16) = 2;
  v8();
  v69 = (v989 + v3 + 33 * v2);
  v70 = v69 + v1[14];
  *v69 = 271;
  *v70 = "EQUALS_GREATER";
  *(v70 + 1) = 14;
  v70[16] = 2;
  v8();
  v71 = (v989 + v3 + 34 * v2);
  v72 = v71 + v1[14];
  *v71 = 272;
  *v72 = "LESS_EQUALS";
  *(v72 + 1) = 11;
  v72[16] = 2;
  v8();
  v73 = (v989 + v3 + 35 * v2);
  v74 = v73 + v1[14];
  *v73 = 273;
  *v74 = "GREATER_EQUALS";
  *(v74 + 1) = 14;
  v74[16] = 2;
  v8();
  v75 = (v989 + v3 + 36 * v2);
  v76 = v75 + v1[14];
  *v75 = 274;
  *v76 = "NOT_EQUALS";
  *(v76 + 1) = 10;
  v76[16] = 2;
  v8();
  v77 = (v989 + v3 + 37 * v2);
  v78 = v77 + v1[14];
  *v77 = 275;
  *v78 = "SQL_COMMENT";
  *(v78 + 1) = 11;
  v78[16] = 2;
  v8();
  v79 = (v989 + v3 + 38 * v2);
  v80 = v79 + v1[14];
  *v79 = 276;
  *v80 = "C_COMMENT";
  *(v80 + 1) = 9;
  v80[16] = 2;
  v8();
  v81 = (v989 + v3 + 39 * v2);
  v82 = v81 + v1[14];
  *v81 = 277;
  *v82 = "ABORT_P";
  *(v82 + 1) = 7;
  v82[16] = 2;
  v8();
  v83 = (v989 + v3 + 40 * v2);
  v84 = v83 + v1[14];
  *v83 = 278;
  *v84 = "ABSOLUTE_P";
  *(v84 + 1) = 10;
  v84[16] = 2;
  v8();
  v85 = (v989 + v3 + 41 * v2);
  v86 = v85 + v1[14];
  *v85 = 279;
  *v86 = "ACCESS";
  *(v86 + 1) = 6;
  v86[16] = 2;
  v8();
  v87 = (v989 + v3 + 42 * v2);
  v88 = v87 + v1[14];
  *v87 = 280;
  *v88 = "ACTION";
  *(v88 + 1) = 6;
  v88[16] = 2;
  v8();
  v89 = (v989 + v3 + 43 * v2);
  v90 = v89 + v1[14];
  *v89 = 281;
  *v90 = "ADD_P";
  *(v90 + 1) = 5;
  v90[16] = 2;
  v8();
  v91 = (v989 + v3 + 44 * v2);
  v92 = v91 + v1[14];
  *v91 = 282;
  *v92 = "ADMIN";
  *(v92 + 1) = 5;
  v92[16] = 2;
  v8();
  v93 = (v989 + v3 + 45 * v2);
  v94 = v93 + v1[14];
  *v93 = 283;
  *v94 = "AFTER";
  *(v94 + 1) = 5;
  v94[16] = 2;
  v8();
  v95 = (v989 + v3 + 46 * v2);
  v96 = v95 + v1[14];
  *v95 = 284;
  *v96 = "AGGREGATE";
  *(v96 + 1) = 9;
  v96[16] = 2;
  v8();
  v97 = (v989 + v3 + 47 * v2);
  v98 = v97 + v1[14];
  *v97 = 285;
  *v98 = "ALL";
  *(v98 + 1) = 3;
  v98[16] = 2;
  v8();
  v99 = (v989 + v3 + 48 * v2);
  v100 = v99 + v1[14];
  *v99 = 286;
  *v100 = "ALSO";
  *(v100 + 1) = 4;
  v100[16] = 2;
  v8();
  v101 = (v989 + v3 + 49 * v2);
  v102 = v101 + v1[14];
  *v101 = 287;
  *v102 = "ALTER";
  *(v102 + 1) = 5;
  v102[16] = 2;
  v8();
  v103 = (v989 + v3 + 50 * v2);
  v104 = v103 + v1[14];
  *v103 = 288;
  *v104 = "ALWAYS";
  *(v104 + 1) = 6;
  v104[16] = 2;
  v8();
  v105 = (v989 + v3 + 51 * v2);
  v106 = v105 + v1[14];
  *v105 = 289;
  *v106 = "ANALYSE";
  *(v106 + 1) = 7;
  v106[16] = 2;
  v8();
  v107 = (v989 + v3 + 52 * v2);
  v108 = v107 + v1[14];
  *v107 = 290;
  *v108 = "ANALYZE";
  *(v108 + 1) = 7;
  v108[16] = 2;
  v8();
  v109 = (v989 + v3 + 53 * v2);
  v110 = v109 + v1[14];
  *v109 = 291;
  *v110 = "AND";
  *(v110 + 1) = 3;
  v110[16] = 2;
  v8();
  v111 = (v989 + v3 + 54 * v2);
  v112 = v111 + v1[14];
  *v111 = 292;
  *v112 = "ANY";
  *(v112 + 1) = 3;
  v112[16] = 2;
  v8();
  v113 = (v989 + v3 + 55 * v2);
  v114 = v113 + v1[14];
  *v113 = 293;
  *v114 = "ARRAY";
  *(v114 + 1) = 5;
  v114[16] = 2;
  v8();
  v115 = (v989 + v3 + 56 * v2);
  v116 = v115 + v1[14];
  *v115 = 294;
  *v116 = "AS";
  *(v116 + 1) = 2;
  v116[16] = 2;
  v8();
  v117 = (v989 + v3 + 57 * v2);
  v118 = v117 + v1[14];
  *v117 = 295;
  *v118 = "ASC";
  *(v118 + 1) = 3;
  v118[16] = 2;
  v8();
  v119 = (v989 + v3 + 58 * v2);
  v120 = v119 + v1[14];
  *v119 = 296;
  *v120 = "ASSERTION";
  *(v120 + 1) = 9;
  v120[16] = 2;
  v8();
  v121 = (v989 + v3 + 59 * v2);
  v122 = v121 + v1[14];
  *v121 = 297;
  *v122 = "ASSIGNMENT";
  *(v122 + 1) = 10;
  v122[16] = 2;
  v8();
  v123 = (v989 + v3 + 60 * v2);
  v124 = v123 + v1[14];
  *v123 = 298;
  *v124 = "ASYMMETRIC";
  *(v124 + 1) = 10;
  v124[16] = 2;
  v8();
  v125 = (v989 + v3 + 61 * v2);
  v126 = v125 + v1[14];
  *v125 = 299;
  *v126 = "AT";
  *(v126 + 1) = 2;
  v126[16] = 2;
  v8();
  v127 = (v989 + v3 + 62 * v2);
  v128 = v127 + v1[14];
  *v127 = 300;
  *v128 = "ATTACH";
  *(v128 + 1) = 6;
  v128[16] = 2;
  v8();
  v129 = (v989 + v3 + 63 * v2);
  v130 = v129 + v1[14];
  *v129 = 301;
  *v130 = "ATTRIBUTE";
  *(v130 + 1) = 9;
  v130[16] = 2;
  v8();
  v131 = v989 + v3 + (v2 << 6) + v1[14];
  *(v4 + (v2 << 6)) = 302;
  *v131 = "AUTHORIZATION";
  *(v131 + 8) = 13;
  *(v131 + 16) = 2;
  v8();
  v132 = (v989 + v3 + 65 * v2);
  v133 = v132 + v1[14];
  *v132 = 303;
  *v133 = "BACKWARD";
  *(v133 + 1) = 8;
  v133[16] = 2;
  v8();
  v134 = (v989 + v3 + 66 * v2);
  v135 = v134 + v1[14];
  *v134 = 304;
  *v135 = "BEFORE";
  *(v135 + 1) = 6;
  v135[16] = 2;
  v8();
  v136 = (v989 + v3 + 67 * v2);
  v137 = v136 + v1[14];
  *v136 = 305;
  *v137 = "BEGIN_P";
  *(v137 + 1) = 7;
  v137[16] = 2;
  v8();
  v138 = (v989 + v3 + 68 * v2);
  v139 = v138 + v1[14];
  *v138 = 306;
  *v139 = "BETWEEN";
  *(v139 + 1) = 7;
  v139[16] = 2;
  v8();
  v140 = (v989 + v3 + 69 * v2);
  v141 = v140 + v1[14];
  *v140 = 307;
  *v141 = "BIGINT";
  *(v141 + 1) = 6;
  v141[16] = 2;
  v8();
  v142 = (v989 + v3 + 70 * v2);
  v143 = v142 + v1[14];
  *v142 = 308;
  *v143 = "BINARY";
  *(v143 + 1) = 6;
  v143[16] = 2;
  v8();
  v144 = (v989 + v3 + 71 * v2);
  v145 = v144 + v1[14];
  *v144 = 309;
  *v145 = "BIT";
  *(v145 + 1) = 3;
  v145[16] = 2;
  v8();
  v146 = (v989 + v3 + 72 * v2);
  v147 = v146 + v1[14];
  *v146 = 310;
  *v147 = "BOOLEAN_P";
  *(v147 + 1) = 9;
  v147[16] = 2;
  v8();
  v148 = (v989 + v3 + 73 * v2);
  v149 = v148 + v1[14];
  *v148 = 311;
  *v149 = "BOTH";
  *(v149 + 1) = 4;
  v149[16] = 2;
  v8();
  v150 = (v989 + v3 + 74 * v2);
  v151 = v150 + v1[14];
  *v150 = 312;
  *v151 = "BY";
  *(v151 + 1) = 2;
  v151[16] = 2;
  v8();
  v152 = (v989 + v3 + 75 * v2);
  v153 = v152 + v1[14];
  *v152 = 313;
  *v153 = "CACHE";
  *(v153 + 1) = 5;
  v153[16] = 2;
  v8();
  v154 = (v989 + v3 + 76 * v2);
  v155 = v154 + v1[14];
  *v154 = 314;
  *v155 = "CALL";
  *(v155 + 1) = 4;
  v155[16] = 2;
  v8();
  v156 = (v989 + v3 + 77 * v2);
  v157 = v156 + v1[14];
  *v156 = 315;
  *v157 = "CALLED";
  *(v157 + 1) = 6;
  v157[16] = 2;
  v8();
  v158 = (v989 + v3 + 78 * v2);
  v159 = v158 + v1[14];
  *v158 = 316;
  *v159 = "CASCADE";
  *(v159 + 1) = 7;
  v159[16] = 2;
  v8();
  v160 = (v989 + v3 + 79 * v2);
  v161 = v160 + v1[14];
  *v160 = 317;
  *v161 = "CASCADED";
  *(v161 + 1) = 8;
  v161[16] = 2;
  v8();
  v162 = (v989 + v3 + 80 * v2);
  v163 = v162 + v1[14];
  *v162 = 318;
  *v163 = "CASE";
  *(v163 + 1) = 4;
  v163[16] = 2;
  v8();
  v164 = (v989 + v3 + 81 * v2);
  v165 = v164 + v1[14];
  *v164 = 319;
  *v165 = "CAST";
  *(v165 + 1) = 4;
  v165[16] = 2;
  v8();
  v166 = (v989 + v3 + 82 * v2);
  v167 = v166 + v1[14];
  *v166 = 320;
  *v167 = "CATALOG_P";
  *(v167 + 1) = 9;
  v167[16] = 2;
  v8();
  v168 = (v989 + v3 + 83 * v2);
  v169 = v168 + v1[14];
  *v168 = 321;
  *v169 = "CHAIN";
  *(v169 + 1) = 5;
  v169[16] = 2;
  v8();
  v170 = (v989 + v3 + 84 * v2);
  v171 = v170 + v1[14];
  *v170 = 322;
  *v171 = "CHAR_P";
  *(v171 + 1) = 6;
  v171[16] = 2;
  v8();
  v172 = (v989 + v3 + 85 * v2);
  v173 = v172 + v1[14];
  *v172 = 323;
  *v173 = "CHARACTER";
  *(v173 + 1) = 9;
  v173[16] = 2;
  v8();
  v174 = (v989 + v3 + 86 * v2);
  v175 = v174 + v1[14];
  *v174 = 324;
  *v175 = "CHARACTERISTICS";
  *(v175 + 1) = 15;
  v175[16] = 2;
  v8();
  v176 = (v989 + v3 + 87 * v2);
  v177 = v176 + v1[14];
  *v176 = 325;
  *v177 = "CHECK";
  *(v177 + 1) = 5;
  v177[16] = 2;
  v8();
  v178 = (v989 + v3 + 88 * v2);
  v179 = v178 + v1[14];
  *v178 = 326;
  *v179 = "CHECKPOINT";
  *(v179 + 1) = 10;
  v179[16] = 2;
  v8();
  v180 = (v989 + v3 + 89 * v2);
  v181 = v180 + v1[14];
  *v180 = 327;
  *v181 = "CLASS";
  *(v181 + 1) = 5;
  v181[16] = 2;
  v8();
  v182 = (v989 + v3 + 90 * v2);
  v183 = v182 + v1[14];
  *v182 = 328;
  *v183 = "CLOSE";
  *(v183 + 1) = 5;
  v183[16] = 2;
  v8();
  v184 = (v989 + v3 + 91 * v2);
  v185 = v184 + v1[14];
  *v184 = 329;
  *v185 = "CLUSTER";
  *(v185 + 1) = 7;
  v185[16] = 2;
  v8();
  v186 = (v989 + v3 + 92 * v2);
  v187 = v186 + v1[14];
  *v186 = 330;
  *v187 = "COALESCE";
  *(v187 + 1) = 8;
  v187[16] = 2;
  v8();
  v188 = (v989 + v3 + 93 * v2);
  v189 = v188 + v1[14];
  *v188 = 331;
  *v189 = "COLLATE";
  *(v189 + 1) = 7;
  v189[16] = 2;
  v8();
  v190 = (v989 + v3 + 94 * v2);
  v191 = v190 + v1[14];
  *v190 = 332;
  *v191 = "COLLATION";
  *(v191 + 1) = 9;
  v191[16] = 2;
  v8();
  v192 = (v989 + v3 + 95 * v2);
  v193 = v192 + v1[14];
  *v192 = 333;
  *v193 = "COLUMN";
  *(v193 + 1) = 6;
  v193[16] = 2;
  v8();
  v194 = (v989 + v3 + 96 * v2);
  v195 = v194 + v1[14];
  *v194 = 334;
  *v195 = "COLUMNS";
  *(v195 + 1) = 7;
  v195[16] = 2;
  v8();
  v196 = (v989 + v3 + 97 * v2);
  v197 = v196 + v1[14];
  *v196 = 335;
  *v197 = "COMMENT";
  *(v197 + 1) = 7;
  v197[16] = 2;
  v8();
  v198 = (v989 + v3 + 98 * v2);
  v199 = v198 + v1[14];
  *v198 = 336;
  *v199 = "COMMENTS";
  *(v199 + 1) = 8;
  v199[16] = 2;
  v8();
  v200 = (v989 + v3 + 99 * v2);
  v201 = v200 + v1[14];
  *v200 = 337;
  *v201 = "COMMIT";
  *(v201 + 1) = 6;
  v201[16] = 2;
  v8();
  v202 = (v989 + v3 + 100 * v2);
  v203 = v202 + v1[14];
  *v202 = 338;
  *v203 = "COMMITTED";
  *(v203 + 1) = 9;
  v203[16] = 2;
  v8();
  v204 = (v989 + v3 + 101 * v2);
  v205 = v204 + v1[14];
  *v204 = 339;
  *v205 = "CONCURRENTLY";
  *(v205 + 1) = 12;
  v205[16] = 2;
  v8();
  v206 = (v989 + v3 + 102 * v2);
  v207 = v206 + v1[14];
  *v206 = 340;
  *v207 = "CONFIGURATION";
  *(v207 + 1) = 13;
  v207[16] = 2;
  v8();
  v208 = (v989 + v3 + 103 * v2);
  v209 = v208 + v1[14];
  *v208 = 341;
  *v209 = "CONFLICT";
  *(v209 + 1) = 8;
  v209[16] = 2;
  v8();
  v210 = (v989 + v3 + 104 * v2);
  v211 = v210 + v1[14];
  *v210 = 342;
  *v211 = "CONNECTION";
  *(v211 + 1) = 10;
  v211[16] = 2;
  v8();
  v212 = (v989 + v3 + 105 * v2);
  v213 = v212 + v1[14];
  *v212 = 343;
  *v213 = "CONSTRAINT";
  *(v213 + 1) = 10;
  v213[16] = 2;
  v8();
  v214 = (v989 + v3 + 106 * v2);
  v215 = v214 + v1[14];
  *v214 = 344;
  *v215 = "CONSTRAINTS";
  *(v215 + 1) = 11;
  v215[16] = 2;
  v8();
  v216 = (v989 + v3 + 107 * v2);
  v217 = v216 + v1[14];
  *v216 = 345;
  *v217 = "CONTENT_P";
  *(v217 + 1) = 9;
  v217[16] = 2;
  v8();
  v218 = (v989 + v3 + 108 * v2);
  v219 = v218 + v1[14];
  *v218 = 346;
  *v219 = "CONTINUE_P";
  *(v219 + 1) = 10;
  v219[16] = 2;
  v8();
  v220 = (v989 + v3 + 109 * v2);
  v221 = v220 + v1[14];
  *v220 = 347;
  *v221 = "CONVERSION_P";
  *(v221 + 1) = 12;
  v221[16] = 2;
  v8();
  v222 = (v989 + v3 + 110 * v2);
  v223 = v222 + v1[14];
  *v222 = 348;
  *v223 = "COPY";
  *(v223 + 1) = 4;
  v223[16] = 2;
  v8();
  v224 = (v989 + v3 + 111 * v2);
  v225 = v224 + v1[14];
  *v224 = 349;
  *v225 = "COST";
  *(v225 + 1) = 4;
  v225[16] = 2;
  v8();
  v226 = (v989 + v3 + 112 * v2);
  v227 = v226 + v1[14];
  *v226 = 350;
  *v227 = "CREATE";
  *(v227 + 1) = 6;
  v227[16] = 2;
  v8();
  v228 = (v989 + v3 + 113 * v2);
  v229 = v228 + v1[14];
  *v228 = 351;
  *v229 = "CROSS";
  *(v229 + 1) = 5;
  v229[16] = 2;
  v8();
  v230 = (v989 + v3 + 114 * v2);
  v231 = v230 + v1[14];
  *v230 = 352;
  *v231 = "CSV";
  *(v231 + 1) = 3;
  v231[16] = 2;
  v8();
  v232 = (v989 + v3 + 115 * v2);
  v233 = v232 + v1[14];
  *v232 = 353;
  *v233 = "CUBE";
  *(v233 + 1) = 4;
  v233[16] = 2;
  v8();
  v234 = (v989 + v3 + 116 * v2);
  v235 = v234 + v1[14];
  *v234 = 354;
  *v235 = "CURRENT_P";
  *(v235 + 1) = 9;
  v235[16] = 2;
  v8();
  v236 = (v989 + v3 + 117 * v2);
  v237 = v236 + v1[14];
  *v236 = 355;
  *v237 = "CURRENT_CATALOG";
  *(v237 + 1) = 15;
  v237[16] = 2;
  v8();
  v238 = (v989 + v3 + 118 * v2);
  v239 = v238 + v1[14];
  *v238 = 356;
  *v239 = "CURRENT_DATE";
  *(v239 + 1) = 12;
  v239[16] = 2;
  v8();
  v240 = (v989 + v3 + 119 * v2);
  v241 = v240 + v1[14];
  *v240 = 357;
  *v241 = "CURRENT_ROLE";
  *(v241 + 1) = 12;
  v241[16] = 2;
  v8();
  v242 = (v989 + v3 + 120 * v2);
  v243 = v242 + v1[14];
  *v242 = 358;
  *v243 = "CURRENT_SCHEMA";
  *(v243 + 1) = 14;
  v243[16] = 2;
  v8();
  v244 = (v989 + v3 + 121 * v2);
  v245 = v244 + v1[14];
  *v244 = 359;
  *v245 = "CURRENT_TIME";
  *(v245 + 1) = 12;
  v245[16] = 2;
  v8();
  v246 = (v989 + v3 + 122 * v2);
  v247 = v246 + v1[14];
  *v246 = 360;
  *v247 = "CURRENT_TIMESTAMP";
  *(v247 + 1) = 17;
  v247[16] = 2;
  v8();
  v248 = (v989 + v3 + 123 * v2);
  v249 = v248 + v1[14];
  *v248 = 361;
  *v249 = "CURRENT_USER";
  *(v249 + 1) = 12;
  v249[16] = 2;
  v8();
  v250 = (v989 + v3 + 124 * v2);
  v251 = v250 + v1[14];
  *v250 = 362;
  *v251 = "CURSOR";
  *(v251 + 1) = 6;
  v251[16] = 2;
  v8();
  v252 = (v989 + v3 + 125 * v2);
  v253 = v252 + v1[14];
  *v252 = 363;
  *v253 = "CYCLE";
  *(v253 + 1) = 5;
  v253[16] = 2;
  v8();
  v254 = (v989 + v3 + 126 * v2);
  v255 = v254 + v1[14];
  *v254 = 364;
  *v255 = "DATA_P";
  *(v255 + 1) = 6;
  v255[16] = 2;
  v8();
  v256 = (v989 + v3 + 127 * v2);
  v257 = v256 + v1[14];
  *v256 = 365;
  *v257 = "DATABASE";
  *(v257 + 1) = 8;
  v257[16] = 2;
  v8();
  v258 = v989 + v3 + (v2 << 7) + v1[14];
  *(v4 + (v2 << 7)) = 366;
  *v258 = "DAY_P";
  *(v258 + 8) = 5;
  *(v258 + 16) = 2;
  v8();
  v259 = (v989 + v3 + 129 * v2);
  v260 = v259 + v1[14];
  *v259 = 367;
  *v260 = "DEALLOCATE";
  *(v260 + 1) = 10;
  v260[16] = 2;
  v8();
  v261 = (v989 + v3 + 130 * v2);
  v262 = v261 + v1[14];
  *v261 = 368;
  *v262 = "DEC";
  *(v262 + 1) = 3;
  v262[16] = 2;
  v8();
  v263 = (v989 + v3 + 131 * v2);
  v264 = v263 + v1[14];
  *v263 = 369;
  *v264 = "DECIMAL_P";
  *(v264 + 1) = 9;
  v264[16] = 2;
  v8();
  v265 = (v989 + v3 + 132 * v2);
  v266 = v265 + v1[14];
  *v265 = 370;
  *v266 = "DECLARE";
  *(v266 + 1) = 7;
  v266[16] = 2;
  v8();
  v267 = (v989 + v3 + 133 * v2);
  v268 = v267 + v1[14];
  *v267 = 371;
  *v268 = "DEFAULT";
  *(v268 + 1) = 7;
  v268[16] = 2;
  v8();
  v269 = (v989 + v3 + 134 * v2);
  v270 = v269 + v1[14];
  *v269 = 372;
  *v270 = "DEFAULTS";
  *(v270 + 1) = 8;
  v270[16] = 2;
  v8();
  v271 = (v989 + v3 + 135 * v2);
  v272 = v271 + v1[14];
  *v271 = 373;
  *v272 = "DEFERRABLE";
  *(v272 + 1) = 10;
  v272[16] = 2;
  v8();
  v273 = (v989 + v3 + 136 * v2);
  v274 = v273 + v1[14];
  *v273 = 374;
  *v274 = "DEFERRED";
  *(v274 + 1) = 8;
  v274[16] = 2;
  v8();
  v275 = (v989 + v3 + 137 * v2);
  v276 = v275 + v1[14];
  *v275 = 375;
  *v276 = "DEFINER";
  *(v276 + 1) = 7;
  v276[16] = 2;
  v8();
  v277 = (v989 + v3 + 138 * v2);
  v278 = v277 + v1[14];
  *v277 = 376;
  *v278 = "DELETE_P";
  *(v278 + 1) = 8;
  v278[16] = 2;
  v8();
  v279 = (v989 + v3 + 139 * v2);
  v280 = v279 + v1[14];
  *v279 = 377;
  *v280 = "DELIMITER";
  *(v280 + 1) = 9;
  v280[16] = 2;
  v8();
  v281 = (v989 + v3 + 140 * v2);
  v282 = v281 + v1[14];
  *v281 = 378;
  *v282 = "DELIMITERS";
  *(v282 + 1) = 10;
  v282[16] = 2;
  v8();
  v283 = (v989 + v3 + 141 * v2);
  v284 = v283 + v1[14];
  *v283 = 379;
  *v284 = "DEPENDS";
  *(v284 + 1) = 7;
  v284[16] = 2;
  v8();
  v285 = (v989 + v3 + 142 * v2);
  v286 = v285 + v1[14];
  *v285 = 380;
  *v286 = "DESC";
  *(v286 + 1) = 4;
  v286[16] = 2;
  v8();
  v287 = (v989 + v3 + 143 * v2);
  v288 = v287 + v1[14];
  *v287 = 381;
  *v288 = "DETACH";
  *(v288 + 1) = 6;
  v288[16] = 2;
  v8();
  v289 = (v989 + v3 + 144 * v2);
  v290 = v289 + v1[14];
  *v289 = 382;
  *v290 = "DICTIONARY";
  *(v290 + 1) = 10;
  v290[16] = 2;
  v8();
  v291 = (v989 + v3 + 145 * v2);
  v292 = v291 + v1[14];
  *v291 = 383;
  *v292 = "DISABLE_P";
  *(v292 + 1) = 9;
  v292[16] = 2;
  v8();
  v293 = (v989 + v3 + 146 * v2);
  v294 = v293 + v1[14];
  *v293 = 384;
  *v294 = "DISCARD";
  *(v294 + 1) = 7;
  v294[16] = 2;
  v8();
  v295 = (v989 + v3 + 147 * v2);
  v296 = v295 + v1[14];
  *v295 = 385;
  *v296 = "DISTINCT";
  *(v296 + 1) = 8;
  v296[16] = 2;
  v8();
  v297 = (v989 + v3 + 148 * v2);
  v298 = v297 + v1[14];
  *v297 = 386;
  *v298 = "DO";
  *(v298 + 1) = 2;
  v298[16] = 2;
  v8();
  v299 = (v989 + v3 + 149 * v2);
  v300 = v299 + v1[14];
  *v299 = 387;
  *v300 = "DOCUMENT_P";
  *(v300 + 1) = 10;
  v300[16] = 2;
  v8();
  v301 = (v989 + v3 + 150 * v2);
  v302 = v301 + v1[14];
  *v301 = 388;
  *v302 = "DOMAIN_P";
  *(v302 + 1) = 8;
  v302[16] = 2;
  v8();
  v303 = (v989 + v3 + 151 * v2);
  v304 = v303 + v1[14];
  *v303 = 389;
  *v304 = "DOUBLE_P";
  *(v304 + 1) = 8;
  v304[16] = 2;
  v8();
  v305 = (v989 + v3 + 152 * v2);
  v306 = v305 + v1[14];
  *v305 = 390;
  *v306 = "DROP";
  *(v306 + 1) = 4;
  v306[16] = 2;
  v8();
  v307 = (v989 + v3 + 153 * v2);
  v308 = v307 + v1[14];
  *v307 = 391;
  *v308 = "EACH";
  *(v308 + 1) = 4;
  v308[16] = 2;
  v8();
  v309 = (v989 + v3 + 154 * v2);
  v310 = v309 + v1[14];
  *v309 = 392;
  *v310 = "ELSE";
  *(v310 + 1) = 4;
  v310[16] = 2;
  v8();
  v311 = (v989 + v3 + 155 * v2);
  v312 = v311 + v1[14];
  *v311 = 393;
  *v312 = "ENABLE_P";
  *(v312 + 1) = 8;
  v312[16] = 2;
  v8();
  v313 = (v989 + v3 + 156 * v2);
  v314 = v313 + v1[14];
  *v313 = 394;
  *v314 = "ENCODING";
  *(v314 + 1) = 8;
  v314[16] = 2;
  v8();
  v315 = (v989 + v3 + 157 * v2);
  v316 = v315 + v1[14];
  *v315 = 395;
  *v316 = "ENCRYPTED";
  *(v316 + 1) = 9;
  v316[16] = 2;
  v8();
  v317 = (v989 + v3 + 158 * v2);
  v318 = v317 + v1[14];
  *v317 = 396;
  *v318 = "END_P";
  *(v318 + 1) = 5;
  v318[16] = 2;
  v8();
  v319 = (v989 + v3 + 159 * v2);
  v320 = v319 + v1[14];
  *v319 = 397;
  *v320 = "ENUM_P";
  *(v320 + 1) = 6;
  v320[16] = 2;
  v8();
  v321 = (v989 + v3 + 160 * v2);
  v322 = v321 + v1[14];
  *v321 = 398;
  *v322 = "ESCAPE";
  *(v322 + 1) = 6;
  v322[16] = 2;
  v8();
  v323 = (v989 + v3 + 161 * v2);
  v324 = v323 + v1[14];
  *v323 = 399;
  *v324 = "EVENT";
  *(v324 + 1) = 5;
  v324[16] = 2;
  v8();
  v325 = (v989 + v3 + 162 * v2);
  v326 = v325 + v1[14];
  *v325 = 400;
  *v326 = "EXCEPT";
  *(v326 + 1) = 6;
  v326[16] = 2;
  v8();
  v327 = (v989 + v3 + 163 * v2);
  v328 = v327 + v1[14];
  *v327 = 401;
  *v328 = "EXCLUDE";
  *(v328 + 1) = 7;
  v328[16] = 2;
  v8();
  v329 = (v989 + v3 + 164 * v2);
  v330 = v329 + v1[14];
  *v329 = 402;
  *v330 = "EXCLUDING";
  *(v330 + 1) = 9;
  v330[16] = 2;
  v8();
  v331 = (v989 + v3 + 165 * v2);
  v332 = v331 + v1[14];
  *v331 = 403;
  *v332 = "EXCLUSIVE";
  *(v332 + 1) = 9;
  v332[16] = 2;
  v8();
  v333 = (v989 + v3 + 166 * v2);
  v334 = v333 + v1[14];
  *v333 = 404;
  *v334 = "EXECUTE";
  *(v334 + 1) = 7;
  v334[16] = 2;
  v8();
  v335 = (v989 + v3 + 167 * v2);
  v336 = v335 + v1[14];
  *v335 = 405;
  *v336 = "EXISTS";
  *(v336 + 1) = 6;
  v336[16] = 2;
  v8();
  v337 = (v989 + v3 + 168 * v2);
  v338 = v337 + v1[14];
  *v337 = 406;
  *v338 = "EXPLAIN";
  *(v338 + 1) = 7;
  v338[16] = 2;
  v8();
  v339 = (v989 + v3 + 169 * v2);
  v340 = v339 + v1[14];
  *v339 = 407;
  *v340 = "EXPRESSION";
  *(v340 + 1) = 10;
  v340[16] = 2;
  v8();
  v341 = (v989 + v3 + 170 * v2);
  v342 = v341 + v1[14];
  *v341 = 408;
  *v342 = "EXTENSION";
  *(v342 + 1) = 9;
  v342[16] = 2;
  v8();
  v343 = (v989 + v3 + 171 * v2);
  v344 = v343 + v1[14];
  *v343 = 409;
  *v344 = "EXTERNAL";
  *(v344 + 1) = 8;
  v344[16] = 2;
  v8();
  v345 = (v989 + v3 + 172 * v2);
  v346 = v345 + v1[14];
  *v345 = 410;
  *v346 = "EXTRACT";
  *(v346 + 1) = 7;
  v346[16] = 2;
  v8();
  v347 = (v989 + v3 + 173 * v2);
  v348 = v347 + v1[14];
  *v347 = 411;
  *v348 = "FALSE_P";
  *(v348 + 1) = 7;
  v348[16] = 2;
  v8();
  v349 = (v989 + v3 + 174 * v2);
  v350 = v349 + v1[14];
  *v349 = 412;
  *v350 = "FAMILY";
  *(v350 + 1) = 6;
  v350[16] = 2;
  v8();
  v351 = (v989 + v3 + 175 * v2);
  v352 = v351 + v1[14];
  *v351 = 413;
  *v352 = "FETCH";
  *(v352 + 1) = 5;
  v352[16] = 2;
  v8();
  v353 = (v989 + v3 + 176 * v2);
  v354 = v353 + v1[14];
  *v353 = 414;
  *v354 = "FILTER";
  *(v354 + 1) = 6;
  v354[16] = 2;
  v8();
  v355 = (v989 + v3 + 177 * v2);
  v356 = v355 + v1[14];
  *v355 = 415;
  *v356 = "FIRST_P";
  *(v356 + 1) = 7;
  v356[16] = 2;
  v8();
  v357 = (v989 + v3 + 178 * v2);
  v358 = v357 + v1[14];
  *v357 = 416;
  *v358 = "FLOAT_P";
  *(v358 + 1) = 7;
  v358[16] = 2;
  v8();
  v359 = (v989 + v3 + 179 * v2);
  v360 = v359 + v1[14];
  *v359 = 417;
  *v360 = "FOLLOWING";
  *(v360 + 1) = 9;
  v360[16] = 2;
  v8();
  v361 = (v989 + v3 + 180 * v2);
  v362 = v361 + v1[14];
  *v361 = 418;
  *v362 = "FOR";
  *(v362 + 1) = 3;
  v362[16] = 2;
  v8();
  v363 = (v989 + v3 + 181 * v2);
  v364 = v363 + v1[14];
  *v363 = 419;
  *v364 = "FORCE";
  *(v364 + 1) = 5;
  v364[16] = 2;
  v8();
  v365 = (v989 + v3 + 182 * v2);
  v366 = v365 + v1[14];
  *v365 = 420;
  *v366 = "FOREIGN";
  *(v366 + 1) = 7;
  v366[16] = 2;
  v8();
  v367 = (v989 + v3 + 183 * v2);
  v368 = v367 + v1[14];
  *v367 = 421;
  *v368 = "FORWARD";
  *(v368 + 1) = 7;
  v368[16] = 2;
  v8();
  v369 = (v989 + v3 + 184 * v2);
  v370 = v369 + v1[14];
  *v369 = 422;
  *v370 = "FREEZE";
  *(v370 + 1) = 6;
  v370[16] = 2;
  v8();
  v371 = (v989 + v3 + 185 * v2);
  v372 = v371 + v1[14];
  *v371 = 423;
  *v372 = "FROM";
  *(v372 + 1) = 4;
  v372[16] = 2;
  v8();
  v373 = (v989 + v3 + 186 * v2);
  v374 = v373 + v1[14];
  *v373 = 424;
  *v374 = "FULL";
  *(v374 + 1) = 4;
  v374[16] = 2;
  v8();
  v375 = (v989 + v3 + 187 * v2);
  v376 = v375 + v1[14];
  *v375 = 425;
  *v376 = "FUNCTION";
  *(v376 + 1) = 8;
  v376[16] = 2;
  v8();
  v377 = (v989 + v3 + 188 * v2);
  v378 = v377 + v1[14];
  *v377 = 426;
  *v378 = "FUNCTIONS";
  *(v378 + 1) = 9;
  v378[16] = 2;
  v8();
  v379 = (v989 + v3 + 189 * v2);
  v380 = v379 + v1[14];
  *v379 = 427;
  *v380 = "GENERATED";
  *(v380 + 1) = 9;
  v380[16] = 2;
  v8();
  v381 = (v989 + v3 + 190 * v2);
  v382 = v381 + v1[14];
  *v381 = 428;
  *v382 = "GLOBAL";
  *(v382 + 1) = 6;
  v382[16] = 2;
  v8();
  v383 = (v989 + v3 + 191 * v2);
  v384 = v383 + v1[14];
  *v383 = 429;
  *v384 = "GRANT";
  *(v384 + 1) = 5;
  v384[16] = 2;
  v8();
  v385 = (v989 + v3 + 192 * v2);
  v386 = v385 + v1[14];
  *v385 = 430;
  *v386 = "GRANTED";
  *(v386 + 1) = 7;
  v386[16] = 2;
  v8();
  v387 = (v989 + v3 + 193 * v2);
  v388 = v387 + v1[14];
  *v387 = 431;
  *v388 = "GREATEST";
  *(v388 + 1) = 8;
  v388[16] = 2;
  v8();
  v389 = (v989 + v3 + 194 * v2);
  v390 = v389 + v1[14];
  *v389 = 432;
  *v390 = "GROUP_P";
  *(v390 + 1) = 7;
  v390[16] = 2;
  v8();
  v391 = (v989 + v3 + 195 * v2);
  v392 = v391 + v1[14];
  *v391 = 433;
  *v392 = "GROUPING";
  *(v392 + 1) = 8;
  v392[16] = 2;
  v8();
  v393 = (v989 + v3 + 196 * v2);
  v394 = v393 + v1[14];
  *v393 = 434;
  *v394 = "GROUPS";
  *(v394 + 1) = 6;
  v394[16] = 2;
  v8();
  v395 = (v989 + v3 + 197 * v2);
  v396 = v395 + v1[14];
  *v395 = 435;
  *v396 = "HANDLER";
  *(v396 + 1) = 7;
  v396[16] = 2;
  v8();
  v397 = (v989 + v3 + 198 * v2);
  v398 = v397 + v1[14];
  *v397 = 436;
  *v398 = "HAVING";
  *(v398 + 1) = 6;
  v398[16] = 2;
  v8();
  v399 = (v989 + v3 + 199 * v2);
  v400 = v399 + v1[14];
  *v399 = 437;
  *v400 = "HEADER_P";
  *(v400 + 1) = 8;
  v400[16] = 2;
  v8();
  v401 = (v989 + v3 + 200 * v2);
  v402 = v401 + v1[14];
  *v401 = 438;
  *v402 = "HOLD";
  *(v402 + 1) = 4;
  v402[16] = 2;
  v8();
  v403 = (v989 + v3 + 201 * v2);
  v404 = v403 + v1[14];
  *v403 = 439;
  *v404 = "HOUR_P";
  *(v404 + 1) = 6;
  v404[16] = 2;
  v8();
  v405 = (v989 + v3 + 202 * v2);
  v406 = v405 + v1[14];
  *v405 = 440;
  *v406 = "IDENTITY_P";
  *(v406 + 1) = 10;
  v406[16] = 2;
  v8();
  v407 = (v989 + v3 + 203 * v2);
  v408 = v407 + v1[14];
  *v407 = 441;
  *v408 = "IF_P";
  *(v408 + 1) = 4;
  v408[16] = 2;
  v8();
  v409 = (v989 + v3 + 204 * v2);
  v410 = v409 + v1[14];
  *v409 = 442;
  *v410 = "ILIKE";
  *(v410 + 1) = 5;
  v410[16] = 2;
  v8();
  v411 = (v989 + v3 + 205 * v2);
  v412 = v411 + v1[14];
  *v411 = 443;
  *v412 = "IMMEDIATE";
  *(v412 + 1) = 9;
  v412[16] = 2;
  v8();
  v413 = (v989 + v3 + 206 * v2);
  v414 = v413 + v1[14];
  *v413 = 444;
  *v414 = "IMMUTABLE";
  *(v414 + 1) = 9;
  v414[16] = 2;
  v8();
  v415 = (v989 + v3 + 207 * v2);
  v416 = v415 + v1[14];
  *v415 = 445;
  *v416 = "IMPLICIT_P";
  *(v416 + 1) = 10;
  v416[16] = 2;
  v8();
  v417 = (v989 + v3 + 208 * v2);
  v418 = v417 + v1[14];
  *v417 = 446;
  *v418 = "IMPORT_P";
  *(v418 + 1) = 8;
  v418[16] = 2;
  v8();
  v419 = (v989 + v3 + 209 * v2);
  v420 = v419 + v1[14];
  *v419 = 447;
  *v420 = "IN_P";
  *(v420 + 1) = 4;
  v420[16] = 2;
  v8();
  v421 = (v989 + v3 + 210 * v2);
  v422 = v421 + v1[14];
  *v421 = 448;
  *v422 = "INCLUDE";
  *(v422 + 1) = 7;
  v422[16] = 2;
  v8();
  v423 = (v989 + v3 + 211 * v2);
  v424 = v423 + v1[14];
  *v423 = 449;
  *v424 = "INCLUDING";
  *(v424 + 1) = 9;
  v424[16] = 2;
  v8();
  v425 = (v989 + v3 + 212 * v2);
  v426 = v425 + v1[14];
  *v425 = 450;
  *v426 = "INCREMENT";
  *(v426 + 1) = 9;
  v426[16] = 2;
  v8();
  v427 = (v989 + v3 + 213 * v2);
  v428 = v427 + v1[14];
  *v427 = 451;
  *v428 = "INDEX";
  *(v428 + 1) = 5;
  v428[16] = 2;
  v8();
  v429 = (v989 + v3 + 214 * v2);
  v430 = v429 + v1[14];
  *v429 = 452;
  *v430 = "INDEXES";
  *(v430 + 1) = 7;
  v430[16] = 2;
  v8();
  v431 = (v989 + v3 + 215 * v2);
  v432 = v431 + v1[14];
  *v431 = 453;
  *v432 = "INHERIT";
  *(v432 + 1) = 7;
  v432[16] = 2;
  v8();
  v433 = (v989 + v3 + 216 * v2);
  v434 = v433 + v1[14];
  *v433 = 454;
  *v434 = "INHERITS";
  *(v434 + 1) = 8;
  v434[16] = 2;
  v8();
  v435 = (v989 + v3 + 217 * v2);
  v436 = v435 + v1[14];
  *v435 = 455;
  *v436 = "INITIALLY";
  *(v436 + 1) = 9;
  v436[16] = 2;
  v8();
  v437 = (v989 + v3 + 218 * v2);
  v438 = v437 + v1[14];
  *v437 = 456;
  *v438 = "INLINE_P";
  *(v438 + 1) = 8;
  v438[16] = 2;
  v8();
  v439 = (v989 + v3 + 219 * v2);
  v440 = v439 + v1[14];
  *v439 = 457;
  *v440 = "INNER_P";
  *(v440 + 1) = 7;
  v440[16] = 2;
  v8();
  v441 = (v989 + v3 + 220 * v2);
  v442 = v441 + v1[14];
  *v441 = 458;
  *v442 = "INOUT";
  *(v442 + 1) = 5;
  v442[16] = 2;
  v8();
  v443 = (v989 + v3 + 221 * v2);
  v444 = v443 + v1[14];
  *v443 = 459;
  *v444 = "INPUT_P";
  *(v444 + 1) = 7;
  v444[16] = 2;
  v8();
  v445 = (v989 + v3 + 222 * v2);
  v446 = v445 + v1[14];
  *v445 = 460;
  *v446 = "INSENSITIVE";
  *(v446 + 1) = 11;
  v446[16] = 2;
  v8();
  v447 = (v989 + v3 + 223 * v2);
  v448 = v447 + v1[14];
  *v447 = 461;
  *v448 = "INSERT";
  *(v448 + 1) = 6;
  v448[16] = 2;
  v8();
  v449 = (v989 + v3 + 224 * v2);
  v450 = v449 + v1[14];
  *v449 = 462;
  *v450 = "INSTEAD";
  *(v450 + 1) = 7;
  v450[16] = 2;
  v8();
  v451 = (v989 + v3 + 225 * v2);
  v452 = v451 + v1[14];
  *v451 = 463;
  *v452 = "INT_P";
  *(v452 + 1) = 5;
  v452[16] = 2;
  v8();
  v453 = (v989 + v3 + 226 * v2);
  v454 = v453 + v1[14];
  *v453 = 464;
  *v454 = "INTEGER";
  *(v454 + 1) = 7;
  v454[16] = 2;
  v8();
  v455 = (v989 + v3 + 227 * v2);
  v456 = v455 + v1[14];
  *v455 = 465;
  *v456 = "INTERSECT";
  *(v456 + 1) = 9;
  v456[16] = 2;
  v8();
  v457 = (v989 + v3 + 228 * v2);
  v458 = v457 + v1[14];
  *v457 = 466;
  *v458 = "INTERVAL";
  *(v458 + 1) = 8;
  v458[16] = 2;
  v8();
  v459 = (v989 + v3 + 229 * v2);
  v460 = v459 + v1[14];
  *v459 = 467;
  *v460 = "INTO";
  *(v460 + 1) = 4;
  v460[16] = 2;
  v8();
  v461 = (v989 + v3 + 230 * v2);
  v462 = v461 + v1[14];
  *v461 = 468;
  *v462 = "INVOKER";
  *(v462 + 1) = 7;
  v462[16] = 2;
  v8();
  v463 = (v989 + v3 + 231 * v2);
  v464 = v463 + v1[14];
  *v463 = 469;
  *v464 = "IS";
  *(v464 + 1) = 2;
  v464[16] = 2;
  v8();
  v465 = (v989 + v3 + 232 * v2);
  v466 = v465 + v1[14];
  *v465 = 470;
  *v466 = "ISNULL";
  *(v466 + 1) = 6;
  v466[16] = 2;
  v8();
  v467 = (v989 + v3 + 233 * v2);
  v468 = v467 + v1[14];
  *v467 = 471;
  *v468 = "ISOLATION";
  *(v468 + 1) = 9;
  v468[16] = 2;
  v8();
  v469 = (v989 + v3 + 234 * v2);
  v470 = v469 + v1[14];
  *v469 = 472;
  *v470 = "JOIN";
  *(v470 + 1) = 4;
  v470[16] = 2;
  v8();
  v471 = (v989 + v3 + 235 * v2);
  v472 = v471 + v1[14];
  *v471 = 473;
  *v472 = "KEY";
  *(v472 + 1) = 3;
  v472[16] = 2;
  v8();
  v473 = (v989 + v3 + 236 * v2);
  v474 = v473 + v1[14];
  *v473 = 474;
  *v474 = "LABEL";
  *(v474 + 1) = 5;
  v474[16] = 2;
  v8();
  v475 = (v989 + v3 + 237 * v2);
  v476 = v475 + v1[14];
  *v475 = 475;
  *v476 = "LANGUAGE";
  *(v476 + 1) = 8;
  v476[16] = 2;
  v8();
  v477 = (v989 + v3 + 238 * v2);
  v478 = v477 + v1[14];
  *v477 = 476;
  *v478 = "LARGE_P";
  *(v478 + 1) = 7;
  v478[16] = 2;
  v8();
  v479 = (v989 + v3 + 239 * v2);
  v480 = v479 + v1[14];
  *v479 = 477;
  *v480 = "LAST_P";
  *(v480 + 1) = 6;
  v480[16] = 2;
  v8();
  v481 = (v989 + v3 + 240 * v2);
  v482 = v481 + v1[14];
  *v481 = 478;
  *v482 = "LATERAL_P";
  *(v482 + 1) = 9;
  v482[16] = 2;
  v8();
  v483 = (v989 + v3 + 241 * v2);
  v484 = v483 + v1[14];
  *v483 = 479;
  *v484 = "LEADING";
  *(v484 + 1) = 7;
  v484[16] = 2;
  v8();
  v485 = (v989 + v3 + 242 * v2);
  v486 = v485 + v1[14];
  *v485 = 480;
  *v486 = "LEAKPROOF";
  *(v486 + 1) = 9;
  v486[16] = 2;
  v8();
  v487 = (v989 + v3 + 243 * v2);
  v488 = v487 + v1[14];
  *v487 = 481;
  *v488 = "LEAST";
  *(v488 + 1) = 5;
  v488[16] = 2;
  v8();
  v489 = (v989 + v3 + 244 * v2);
  v490 = v489 + v1[14];
  *v489 = 482;
  *v490 = "LEFT";
  *(v490 + 1) = 4;
  v490[16] = 2;
  v8();
  v491 = (v989 + v3 + 245 * v2);
  v492 = v491 + v1[14];
  *v491 = 483;
  *v492 = "LEVEL";
  *(v492 + 1) = 5;
  v492[16] = 2;
  v8();
  v493 = (v989 + v3 + 246 * v2);
  v494 = v493 + v1[14];
  *v493 = 484;
  *v494 = "LIKE";
  *(v494 + 1) = 4;
  v494[16] = 2;
  v8();
  v495 = (v989 + v3 + 247 * v2);
  v496 = v495 + v1[14];
  *v495 = 485;
  *v496 = "LIMIT";
  *(v496 + 1) = 5;
  v496[16] = 2;
  v8();
  v497 = (v989 + v3 + 248 * v2);
  v498 = v497 + v1[14];
  *v497 = 486;
  *v498 = "LISTEN";
  *(v498 + 1) = 6;
  v498[16] = 2;
  v8();
  v499 = (v989 + v3 + 249 * v2);
  v500 = v499 + v1[14];
  *v499 = 487;
  *v500 = "LOAD";
  *(v500 + 1) = 4;
  v500[16] = 2;
  v8();
  v501 = (v989 + v3 + 250 * v2);
  v502 = v501 + v1[14];
  *v501 = 488;
  *v502 = "LOCAL";
  *(v502 + 1) = 5;
  v502[16] = 2;
  v8();
  v503 = (v989 + v3 + 251 * v2);
  v504 = v503 + v1[14];
  *v503 = 489;
  *v504 = "LOCALTIME";
  *(v504 + 1) = 9;
  v504[16] = 2;
  v8();
  v505 = (v989 + v3 + 252 * v2);
  v506 = v505 + v1[14];
  *v505 = 490;
  *v506 = "LOCALTIMESTAMP";
  *(v506 + 1) = 14;
  v506[16] = 2;
  v8();
  v507 = (v989 + v3 + 253 * v2);
  v508 = v507 + v1[14];
  *v507 = 491;
  *v508 = "LOCATION";
  *(v508 + 1) = 8;
  v508[16] = 2;
  v8();
  v509 = (v989 + v3 + 254 * v2);
  v510 = v509 + v1[14];
  *v509 = 492;
  *v510 = "LOCK_P";
  *(v510 + 1) = 6;
  v510[16] = 2;
  v8();
  v511 = (v989 + v3 + 255 * v2);
  v512 = v511 + v1[14];
  *v511 = 493;
  *v512 = "LOCKED";
  *(v512 + 1) = 6;
  v512[16] = 2;
  v8();
  v513 = v989 + v3 + (v2 << 8) + v1[14];
  *(v4 + (v2 << 8)) = 494;
  *v513 = "LOGGED";
  *(v513 + 8) = 6;
  *(v513 + 16) = 2;
  v8();
  v514 = (v989 + v3 + 257 * v2);
  v515 = v514 + v1[14];
  *v514 = 495;
  *v515 = "MAPPING";
  *(v515 + 1) = 7;
  v515[16] = 2;
  v8();
  v516 = (v989 + v3 + 258 * v2);
  v517 = v516 + v1[14];
  *v516 = 496;
  *v517 = "MATCH";
  *(v517 + 1) = 5;
  v517[16] = 2;
  v8();
  v518 = (v989 + v3 + 259 * v2);
  v519 = v518 + v1[14];
  *v518 = 497;
  *v519 = "MATERIALIZED";
  *(v519 + 1) = 12;
  v519[16] = 2;
  v8();
  v520 = (v989 + v3 + 260 * v2);
  v521 = v520 + v1[14];
  *v520 = 498;
  *v521 = "MAXVALUE";
  *(v521 + 1) = 8;
  v521[16] = 2;
  v8();
  v522 = (v989 + v3 + 261 * v2);
  v523 = v522 + v1[14];
  *v522 = 499;
  *v523 = "METHOD";
  *(v523 + 1) = 6;
  v523[16] = 2;
  v8();
  v524 = (v989 + v3 + 262 * v2);
  v525 = v524 + v1[14];
  *v524 = 500;
  *v525 = "MINUTE_P";
  *(v525 + 1) = 8;
  v525[16] = 2;
  v8();
  v526 = (v989 + v3 + 263 * v2);
  v527 = v526 + v1[14];
  *v526 = 501;
  *v527 = "MINVALUE";
  *(v527 + 1) = 8;
  v527[16] = 2;
  v8();
  v528 = (v989 + v3 + 264 * v2);
  v529 = v528 + v1[14];
  *v528 = 502;
  *v529 = "MODE";
  *(v529 + 1) = 4;
  v529[16] = 2;
  v8();
  v530 = (v989 + v3 + 265 * v2);
  v531 = v530 + v1[14];
  *v530 = 503;
  *v531 = "MONTH_P";
  *(v531 + 1) = 7;
  v531[16] = 2;
  v8();
  v532 = (v989 + v3 + 266 * v2);
  v533 = v532 + v1[14];
  *v532 = 504;
  *v533 = "MOVE";
  *(v533 + 1) = 4;
  v533[16] = 2;
  v8();
  v534 = (v989 + v3 + 267 * v2);
  v535 = v534 + v1[14];
  *v534 = 505;
  *v535 = "NAME_P";
  *(v535 + 1) = 6;
  v535[16] = 2;
  v8();
  v536 = (v989 + v3 + 268 * v2);
  v537 = v536 + v1[14];
  *v536 = 506;
  *v537 = "NAMES";
  *(v537 + 1) = 5;
  v537[16] = 2;
  v8();
  v538 = (v989 + v3 + 269 * v2);
  v539 = v538 + v1[14];
  *v538 = 507;
  *v539 = "NATIONAL";
  *(v539 + 1) = 8;
  v539[16] = 2;
  v8();
  v540 = (v989 + v3 + 270 * v2);
  v541 = v540 + v1[14];
  *v540 = 508;
  *v541 = "NATURAL";
  *(v541 + 1) = 7;
  v541[16] = 2;
  v8();
  v542 = (v989 + v3 + 271 * v2);
  v543 = v542 + v1[14];
  *v542 = 509;
  *v543 = "NCHAR";
  *(v543 + 1) = 5;
  v543[16] = 2;
  v8();
  v544 = (v989 + v3 + 272 * v2);
  v545 = v544 + v1[14];
  *v544 = 510;
  *v545 = "NEW";
  *(v545 + 1) = 3;
  v545[16] = 2;
  v8();
  v546 = (v989 + v3 + 273 * v2);
  v547 = v546 + v1[14];
  *v546 = 511;
  *v547 = "NEXT";
  *(v547 + 1) = 4;
  v547[16] = 2;
  v8();
  v548 = (v989 + v3 + 274 * v2);
  v549 = v548 + v1[14];
  *v548 = 512;
  *v549 = "NFC";
  *(v549 + 1) = 3;
  v549[16] = 2;
  v8();
  v550 = (v989 + v3 + 275 * v2);
  v551 = v550 + v1[14];
  *v550 = 513;
  *v551 = "NFD";
  *(v551 + 1) = 3;
  v551[16] = 2;
  v8();
  v552 = (v989 + v3 + 276 * v2);
  v553 = v552 + v1[14];
  *v552 = 514;
  *v553 = "NFKC";
  *(v553 + 1) = 4;
  v553[16] = 2;
  v8();
  v554 = (v989 + v3 + 277 * v2);
  v555 = v554 + v1[14];
  *v554 = 515;
  *v555 = "NFKD";
  *(v555 + 1) = 4;
  v555[16] = 2;
  v8();
  v556 = (v989 + v3 + 278 * v2);
  v557 = v556 + v1[14];
  *v556 = 516;
  *v557 = "NO";
  *(v557 + 1) = 2;
  v557[16] = 2;
  v8();
  v558 = (v989 + v3 + 279 * v2);
  v559 = v558 + v1[14];
  *v558 = 517;
  *v559 = "NONE";
  *(v559 + 1) = 4;
  v559[16] = 2;
  v8();
  v560 = (v989 + v3 + 280 * v2);
  v561 = v560 + v1[14];
  *v560 = 518;
  *v561 = "NORMALIZE";
  *(v561 + 1) = 9;
  v561[16] = 2;
  v8();
  v562 = (v989 + v3 + 281 * v2);
  v563 = v562 + v1[14];
  *v562 = 519;
  *v563 = "NORMALIZED";
  *(v563 + 1) = 10;
  v563[16] = 2;
  v8();
  v564 = (v989 + v3 + 282 * v2);
  v565 = v564 + v1[14];
  *v564 = 520;
  *v565 = "NOT";
  *(v565 + 1) = 3;
  v565[16] = 2;
  v8();
  v566 = (v989 + v3 + 283 * v2);
  v567 = v566 + v1[14];
  *v566 = 521;
  *v567 = "NOTHING";
  *(v567 + 1) = 7;
  v567[16] = 2;
  v8();
  v568 = (v989 + v3 + 284 * v2);
  v569 = v568 + v1[14];
  *v568 = 522;
  *v569 = "NOTIFY";
  *(v569 + 1) = 6;
  v569[16] = 2;
  v8();
  v570 = (v989 + v3 + 285 * v2);
  v571 = v570 + v1[14];
  *v570 = 523;
  *v571 = "NOTNULL";
  *(v571 + 1) = 7;
  v571[16] = 2;
  v8();
  v572 = (v989 + v3 + 286 * v2);
  v573 = v572 + v1[14];
  *v572 = 524;
  *v573 = "NOWAIT";
  *(v573 + 1) = 6;
  v573[16] = 2;
  v8();
  v574 = (v989 + v3 + 287 * v2);
  v575 = v574 + v1[14];
  *v574 = 525;
  *v575 = "NULL_P";
  *(v575 + 1) = 6;
  v575[16] = 2;
  v8();
  v576 = (v989 + v3 + 288 * v2);
  v577 = v576 + v1[14];
  *v576 = 526;
  *v577 = "NULLIF";
  *(v577 + 1) = 6;
  v577[16] = 2;
  v8();
  v578 = (v989 + v3 + 289 * v2);
  v579 = v578 + v1[14];
  *v578 = 527;
  *v579 = "NULLS_P";
  *(v579 + 1) = 7;
  v579[16] = 2;
  v8();
  v580 = (v989 + v3 + 290 * v2);
  v581 = v580 + v1[14];
  *v580 = 528;
  *v581 = "NUMERIC";
  *(v581 + 1) = 7;
  v581[16] = 2;
  v8();
  v582 = (v989 + v3 + 291 * v2);
  v583 = v582 + v1[14];
  *v582 = 529;
  *v583 = "OBJECT_P";
  *(v583 + 1) = 8;
  v583[16] = 2;
  v8();
  v584 = (v989 + v3 + 292 * v2);
  v585 = v584 + v1[14];
  *v584 = 530;
  *v585 = "OF";
  *(v585 + 1) = 2;
  v585[16] = 2;
  v8();
  v586 = (v989 + v3 + 293 * v2);
  v587 = v586 + v1[14];
  *v586 = 531;
  *v587 = "OFF";
  *(v587 + 1) = 3;
  v587[16] = 2;
  v8();
  v588 = (v989 + v3 + 294 * v2);
  v589 = v588 + v1[14];
  *v588 = 532;
  *v589 = "OFFSET";
  *(v589 + 1) = 6;
  v589[16] = 2;
  v8();
  v590 = (v989 + v3 + 295 * v2);
  v591 = v590 + v1[14];
  *v590 = 533;
  *v591 = "OIDS";
  *(v591 + 1) = 4;
  v591[16] = 2;
  v8();
  v592 = (v989 + v3 + 296 * v2);
  v593 = v592 + v1[14];
  *v592 = 534;
  *v593 = "OLD";
  *(v593 + 1) = 3;
  v593[16] = 2;
  v8();
  v594 = (v989 + v3 + 297 * v2);
  v595 = v594 + v1[14];
  *v594 = 535;
  *v595 = "ON";
  *(v595 + 1) = 2;
  v595[16] = 2;
  v8();
  v596 = (v989 + v3 + 298 * v2);
  v597 = v596 + v1[14];
  *v596 = 536;
  *v597 = "ONLY";
  *(v597 + 1) = 4;
  v597[16] = 2;
  v8();
  v598 = (v989 + v3 + 299 * v2);
  v599 = v598 + v1[14];
  *v598 = 537;
  *v599 = "OPERATOR";
  *(v599 + 1) = 8;
  v599[16] = 2;
  v8();
  v600 = (v989 + v3 + 300 * v2);
  v601 = v600 + v1[14];
  *v600 = 538;
  *v601 = "OPTION";
  *(v601 + 1) = 6;
  v601[16] = 2;
  v8();
  v602 = (v989 + v3 + 301 * v2);
  v603 = v602 + v1[14];
  *v602 = 539;
  *v603 = "OPTIONS";
  *(v603 + 1) = 7;
  v603[16] = 2;
  v8();
  v604 = (v989 + v3 + 302 * v2);
  v605 = v604 + v1[14];
  *v604 = 540;
  *v605 = "OR";
  *(v605 + 1) = 2;
  v605[16] = 2;
  v8();
  v606 = (v989 + v3 + 303 * v2);
  v607 = v606 + v1[14];
  *v606 = 541;
  *v607 = "ORDER";
  *(v607 + 1) = 5;
  v607[16] = 2;
  v8();
  v608 = (v989 + v3 + 304 * v2);
  v609 = v608 + v1[14];
  *v608 = 542;
  *v609 = "ORDINALITY";
  *(v609 + 1) = 10;
  v609[16] = 2;
  v8();
  v610 = (v989 + v3 + 305 * v2);
  v611 = v610 + v1[14];
  *v610 = 543;
  *v611 = "OTHERS";
  *(v611 + 1) = 6;
  v611[16] = 2;
  v8();
  v612 = (v989 + v3 + 306 * v2);
  v613 = v612 + v1[14];
  *v612 = 544;
  *v613 = "OUT_P";
  *(v613 + 1) = 5;
  v613[16] = 2;
  v8();
  v614 = (v989 + v3 + 307 * v2);
  v615 = v614 + v1[14];
  *v614 = 545;
  *v615 = "OUTER_P";
  *(v615 + 1) = 7;
  v615[16] = 2;
  v8();
  v616 = (v989 + v3 + 308 * v2);
  v617 = v616 + v1[14];
  *v616 = 546;
  *v617 = "OVER";
  *(v617 + 1) = 4;
  v617[16] = 2;
  v8();
  v618 = (v989 + v3 + 309 * v2);
  v619 = v618 + v1[14];
  *v618 = 547;
  *v619 = "OVERLAPS";
  *(v619 + 1) = 8;
  v619[16] = 2;
  v8();
  v620 = (v989 + v3 + 310 * v2);
  v621 = v620 + v1[14];
  *v620 = 548;
  *v621 = "OVERLAY";
  *(v621 + 1) = 7;
  v621[16] = 2;
  v8();
  v622 = (v989 + v3 + 311 * v2);
  v623 = v622 + v1[14];
  *v622 = 549;
  *v623 = "OVERRIDING";
  *(v623 + 1) = 10;
  v623[16] = 2;
  v8();
  v624 = (v989 + v3 + 312 * v2);
  v625 = v624 + v1[14];
  *v624 = 550;
  *v625 = "OWNED";
  *(v625 + 1) = 5;
  v625[16] = 2;
  v8();
  v626 = (v989 + v3 + 313 * v2);
  v627 = v626 + v1[14];
  *v626 = 551;
  *v627 = "OWNER";
  *(v627 + 1) = 5;
  v627[16] = 2;
  v8();
  v628 = (v989 + v3 + 314 * v2);
  v629 = v628 + v1[14];
  *v628 = 552;
  *v629 = "PARALLEL";
  *(v629 + 1) = 8;
  v629[16] = 2;
  v8();
  v630 = (v989 + v3 + 315 * v2);
  v631 = v630 + v1[14];
  *v630 = 553;
  *v631 = "PARSER";
  *(v631 + 1) = 6;
  v631[16] = 2;
  v8();
  v632 = (v989 + v3 + 316 * v2);
  v633 = v632 + v1[14];
  *v632 = 554;
  *v633 = "PARTIAL";
  *(v633 + 1) = 7;
  v633[16] = 2;
  v8();
  v634 = (v989 + v3 + 317 * v2);
  v635 = v634 + v1[14];
  *v634 = 555;
  *v635 = "PARTITION";
  *(v635 + 1) = 9;
  v635[16] = 2;
  v8();
  v636 = (v989 + v3 + 318 * v2);
  v637 = v636 + v1[14];
  *v636 = 556;
  *v637 = "PASSING";
  *(v637 + 1) = 7;
  v637[16] = 2;
  v8();
  v638 = (v989 + v3 + 319 * v2);
  v639 = v638 + v1[14];
  *v638 = 557;
  *v639 = "PASSWORD";
  *(v639 + 1) = 8;
  v639[16] = 2;
  v8();
  v640 = (v989 + v3 + 320 * v2);
  v641 = v640 + v1[14];
  *v640 = 558;
  *v641 = "PLACING";
  *(v641 + 1) = 7;
  v641[16] = 2;
  v8();
  v642 = (v989 + v3 + 321 * v2);
  v643 = v642 + v1[14];
  *v642 = 559;
  *v643 = "PLANS";
  *(v643 + 1) = 5;
  v643[16] = 2;
  v8();
  v644 = (v989 + v3 + 322 * v2);
  v645 = v644 + v1[14];
  *v644 = 560;
  *v645 = "POLICY";
  *(v645 + 1) = 6;
  v645[16] = 2;
  v8();
  v646 = (v989 + v3 + 323 * v2);
  v647 = v646 + v1[14];
  *v646 = 561;
  *v647 = "POSITION";
  *(v647 + 1) = 8;
  v647[16] = 2;
  v8();
  v648 = (v989 + v3 + 324 * v2);
  v649 = v648 + v1[14];
  *v648 = 562;
  *v649 = "PRECEDING";
  *(v649 + 1) = 9;
  v649[16] = 2;
  v8();
  v650 = (v989 + v3 + 325 * v2);
  v651 = v650 + v1[14];
  *v650 = 563;
  *v651 = "PRECISION";
  *(v651 + 1) = 9;
  v651[16] = 2;
  v8();
  v652 = (v989 + v3 + 326 * v2);
  v653 = v652 + v1[14];
  *v652 = 564;
  *v653 = "PRESERVE";
  *(v653 + 1) = 8;
  v653[16] = 2;
  v8();
  v654 = (v989 + v3 + 327 * v2);
  v655 = v654 + v1[14];
  *v654 = 565;
  *v655 = "PREPARE";
  *(v655 + 1) = 7;
  v655[16] = 2;
  v8();
  v656 = (v989 + v3 + 328 * v2);
  v657 = v656 + v1[14];
  *v656 = 566;
  *v657 = "PREPARED";
  *(v657 + 1) = 8;
  v657[16] = 2;
  v8();
  v658 = (v989 + v3 + 329 * v2);
  v659 = v658 + v1[14];
  *v658 = 567;
  *v659 = "PRIMARY";
  *(v659 + 1) = 7;
  v659[16] = 2;
  v8();
  v660 = (v989 + v3 + 330 * v2);
  v661 = v660 + v1[14];
  *v660 = 568;
  *v661 = "PRIOR";
  *(v661 + 1) = 5;
  v661[16] = 2;
  v8();
  v662 = (v989 + v3 + 331 * v2);
  v663 = v662 + v1[14];
  *v662 = 569;
  *v663 = "PRIVILEGES";
  *(v663 + 1) = 10;
  v663[16] = 2;
  v8();
  v664 = (v989 + v3 + 332 * v2);
  v665 = v664 + v1[14];
  *v664 = 570;
  *v665 = "PROCEDURAL";
  *(v665 + 1) = 10;
  v665[16] = 2;
  v8();
  v666 = (v989 + v3 + 333 * v2);
  v667 = v666 + v1[14];
  *v666 = 571;
  *v667 = "PROCEDURE";
  *(v667 + 1) = 9;
  v667[16] = 2;
  v8();
  v668 = (v989 + v3 + 334 * v2);
  v669 = v668 + v1[14];
  *v668 = 572;
  *v669 = "PROCEDURES";
  *(v669 + 1) = 10;
  v669[16] = 2;
  v8();
  v670 = (v989 + v3 + 335 * v2);
  v671 = v670 + v1[14];
  *v670 = 573;
  *v671 = "PROGRAM";
  *(v671 + 1) = 7;
  v671[16] = 2;
  v8();
  v672 = (v989 + v3 + 336 * v2);
  v673 = v672 + v1[14];
  *v672 = 574;
  *v673 = "PUBLICATION";
  *(v673 + 1) = 11;
  v673[16] = 2;
  v8();
  v674 = (v989 + v3 + 337 * v2);
  v675 = v674 + v1[14];
  *v674 = 575;
  *v675 = "QUOTE";
  *(v675 + 1) = 5;
  v675[16] = 2;
  v8();
  v676 = (v989 + v3 + 338 * v2);
  v677 = v676 + v1[14];
  *v676 = 576;
  *v677 = "RANGE";
  *(v677 + 1) = 5;
  v677[16] = 2;
  v8();
  v678 = (v989 + v3 + 339 * v2);
  v679 = v678 + v1[14];
  *v678 = 577;
  *v679 = "READ";
  *(v679 + 1) = 4;
  v679[16] = 2;
  v8();
  v680 = (v989 + v3 + 340 * v2);
  v681 = v680 + v1[14];
  *v680 = 578;
  *v681 = "REAL";
  *(v681 + 1) = 4;
  v681[16] = 2;
  v8();
  v682 = (v989 + v3 + 341 * v2);
  v683 = v682 + v1[14];
  *v682 = 579;
  *v683 = "REASSIGN";
  *(v683 + 1) = 8;
  v683[16] = 2;
  v8();
  v684 = (v989 + v3 + 342 * v2);
  v685 = v684 + v1[14];
  *v684 = 580;
  *v685 = "RECHECK";
  *(v685 + 1) = 7;
  v685[16] = 2;
  v8();
  v686 = (v989 + v3 + 343 * v2);
  v687 = v686 + v1[14];
  *v686 = 581;
  *v687 = "RECURSIVE";
  *(v687 + 1) = 9;
  v687[16] = 2;
  v8();
  v688 = (v989 + v3 + 344 * v2);
  v689 = v688 + v1[14];
  *v688 = 582;
  *v689 = "REF";
  *(v689 + 1) = 3;
  v689[16] = 2;
  v8();
  v690 = (v989 + v3 + 345 * v2);
  v691 = v690 + v1[14];
  *v690 = 583;
  *v691 = "REFERENCES";
  *(v691 + 1) = 10;
  v691[16] = 2;
  v8();
  v692 = (v989 + v3 + 346 * v2);
  v693 = v692 + v1[14];
  *v692 = 584;
  *v693 = "REFERENCING";
  *(v693 + 1) = 11;
  v693[16] = 2;
  v8();
  v694 = (v989 + v3 + 347 * v2);
  v695 = v694 + v1[14];
  *v694 = 585;
  *v695 = "REFRESH";
  *(v695 + 1) = 7;
  v695[16] = 2;
  v8();
  v696 = (v989 + v3 + 348 * v2);
  v697 = v696 + v1[14];
  *v696 = 586;
  *v697 = "REINDEX";
  *(v697 + 1) = 7;
  v697[16] = 2;
  v8();
  v698 = (v989 + v3 + 349 * v2);
  v699 = v698 + v1[14];
  *v698 = 587;
  *v699 = "RELATIVE_P";
  *(v699 + 1) = 10;
  v699[16] = 2;
  v8();
  v700 = (v989 + v3 + 350 * v2);
  v701 = v700 + v1[14];
  *v700 = 588;
  *v701 = "RELEASE";
  *(v701 + 1) = 7;
  v701[16] = 2;
  v8();
  v702 = (v989 + v3 + 351 * v2);
  v703 = v702 + v1[14];
  *v702 = 589;
  *v703 = "RENAME";
  *(v703 + 1) = 6;
  v703[16] = 2;
  v8();
  v704 = (v989 + v3 + 352 * v2);
  v705 = v704 + v1[14];
  *v704 = 590;
  *v705 = "REPEATABLE";
  *(v705 + 1) = 10;
  v705[16] = 2;
  v8();
  v706 = (v989 + v3 + 353 * v2);
  v707 = v706 + v1[14];
  *v706 = 591;
  *v707 = "REPLACE";
  *(v707 + 1) = 7;
  v707[16] = 2;
  v8();
  v708 = (v989 + v3 + 354 * v2);
  v709 = v708 + v1[14];
  *v708 = 592;
  *v709 = "REPLICA";
  *(v709 + 1) = 7;
  v709[16] = 2;
  v8();
  v710 = (v989 + v3 + 355 * v2);
  v711 = v710 + v1[14];
  *v710 = 593;
  *v711 = "RESET";
  *(v711 + 1) = 5;
  v711[16] = 2;
  v8();
  v712 = (v989 + v3 + 356 * v2);
  v713 = v712 + v1[14];
  *v712 = 594;
  *v713 = "RESTART";
  *(v713 + 1) = 7;
  v713[16] = 2;
  v8();
  v714 = (v989 + v3 + 357 * v2);
  v715 = v714 + v1[14];
  *v714 = 595;
  *v715 = "RESTRICT";
  *(v715 + 1) = 8;
  v715[16] = 2;
  v8();
  v716 = (v989 + v3 + 358 * v2);
  v717 = v716 + v1[14];
  *v716 = 596;
  *v717 = "RETURNING";
  *(v717 + 1) = 9;
  v717[16] = 2;
  v8();
  v718 = (v989 + v3 + 359 * v2);
  v719 = v718 + v1[14];
  *v718 = 597;
  *v719 = "RETURNS";
  *(v719 + 1) = 7;
  v719[16] = 2;
  v8();
  v720 = (v989 + v3 + 360 * v2);
  v721 = v720 + v1[14];
  *v720 = 598;
  *v721 = "REVOKE";
  *(v721 + 1) = 6;
  v721[16] = 2;
  v8();
  v722 = (v989 + v3 + 361 * v2);
  v723 = v722 + v1[14];
  *v722 = 599;
  *v723 = "RIGHT";
  *(v723 + 1) = 5;
  v723[16] = 2;
  v8();
  v724 = (v989 + v3 + 362 * v2);
  v725 = v724 + v1[14];
  *v724 = 600;
  *v725 = "ROLE";
  *(v725 + 1) = 4;
  v725[16] = 2;
  v8();
  v726 = (v989 + v3 + 363 * v2);
  v727 = v726 + v1[14];
  *v726 = 601;
  *v727 = "ROLLBACK";
  *(v727 + 1) = 8;
  v727[16] = 2;
  v8();
  v728 = (v989 + v3 + 364 * v2);
  v729 = v728 + v1[14];
  *v728 = 602;
  *v729 = "ROLLUP";
  *(v729 + 1) = 6;
  v729[16] = 2;
  v8();
  v730 = (v989 + v3 + 365 * v2);
  v731 = v730 + v1[14];
  *v730 = 603;
  *v731 = "ROUTINE";
  *(v731 + 1) = 7;
  v731[16] = 2;
  v8();
  v732 = (v989 + v3 + 366 * v2);
  v733 = v732 + v1[14];
  *v732 = 604;
  *v733 = "ROUTINES";
  *(v733 + 1) = 8;
  v733[16] = 2;
  v8();
  v734 = (v989 + v3 + 367 * v2);
  v735 = v734 + v1[14];
  *v734 = 605;
  *v735 = "ROW";
  *(v735 + 1) = 3;
  v735[16] = 2;
  v8();
  v736 = (v989 + v3 + 368 * v2);
  v737 = v736 + v1[14];
  *v736 = 606;
  *v737 = "ROWS";
  *(v737 + 1) = 4;
  v737[16] = 2;
  v8();
  v738 = (v989 + v3 + 369 * v2);
  v739 = v738 + v1[14];
  *v738 = 607;
  *v739 = "RULE";
  *(v739 + 1) = 4;
  v739[16] = 2;
  v8();
  v740 = (v989 + v3 + 370 * v2);
  v741 = v740 + v1[14];
  *v740 = 608;
  *v741 = "SAVEPOINT";
  *(v741 + 1) = 9;
  v741[16] = 2;
  v8();
  v742 = (v989 + v3 + 371 * v2);
  v743 = v742 + v1[14];
  *v742 = 609;
  *v743 = "SCHEMA";
  *(v743 + 1) = 6;
  v743[16] = 2;
  v8();
  v744 = (v989 + v3 + 372 * v2);
  v745 = v744 + v1[14];
  *v744 = 610;
  *v745 = "SCHEMAS";
  *(v745 + 1) = 7;
  v745[16] = 2;
  v8();
  v746 = (v989 + v3 + 373 * v2);
  v747 = v746 + v1[14];
  *v746 = 611;
  *v747 = "SCROLL";
  *(v747 + 1) = 6;
  v747[16] = 2;
  v8();
  v748 = (v989 + v3 + 374 * v2);
  v749 = v748 + v1[14];
  *v748 = 612;
  *v749 = "SEARCH";
  *(v749 + 1) = 6;
  v749[16] = 2;
  v8();
  v750 = (v989 + v3 + 375 * v2);
  v751 = v750 + v1[14];
  *v750 = 613;
  *v751 = "SECOND_P";
  *(v751 + 1) = 8;
  v751[16] = 2;
  v8();
  v752 = (v989 + v3 + 376 * v2);
  v753 = v752 + v1[14];
  *v752 = 614;
  *v753 = "SECURITY";
  *(v753 + 1) = 8;
  v753[16] = 2;
  v8();
  v754 = (v989 + v3 + 377 * v2);
  v755 = v754 + v1[14];
  *v754 = 615;
  *v755 = "SELECT";
  *(v755 + 1) = 6;
  v755[16] = 2;
  v8();
  v756 = (v989 + v3 + 378 * v2);
  v757 = v756 + v1[14];
  *v756 = 616;
  *v757 = "SEQUENCE";
  *(v757 + 1) = 8;
  v757[16] = 2;
  v8();
  v758 = (v989 + v3 + 379 * v2);
  v759 = v758 + v1[14];
  *v758 = 617;
  *v759 = "SEQUENCES";
  *(v759 + 1) = 9;
  v759[16] = 2;
  v8();
  v760 = (v989 + v3 + 380 * v2);
  v761 = v760 + v1[14];
  *v760 = 618;
  *v761 = "SERIALIZABLE";
  *(v761 + 1) = 12;
  v761[16] = 2;
  v8();
  v762 = (v989 + v3 + 381 * v2);
  v763 = v762 + v1[14];
  *v762 = 619;
  *v763 = "SERVER";
  *(v763 + 1) = 6;
  v763[16] = 2;
  v8();
  v764 = (v989 + v3 + 382 * v2);
  v765 = v764 + v1[14];
  *v764 = 620;
  *v765 = "SESSION";
  *(v765 + 1) = 7;
  v765[16] = 2;
  v8();
  v766 = (v989 + v3 + 383 * v2);
  v767 = v766 + v1[14];
  *v766 = 621;
  *v767 = "SESSION_USER";
  *(v767 + 1) = 12;
  v767[16] = 2;
  v8();
  v768 = (v989 + v3 + 384 * v2);
  v769 = v768 + v1[14];
  *v768 = 622;
  *v769 = "SET";
  *(v769 + 1) = 3;
  v769[16] = 2;
  v8();
  v770 = (v989 + v3 + 385 * v2);
  v771 = v770 + v1[14];
  *v770 = 623;
  *v771 = "SETS";
  *(v771 + 1) = 4;
  v771[16] = 2;
  v8();
  v772 = (v989 + v3 + 386 * v2);
  v773 = v772 + v1[14];
  *v772 = 624;
  *v773 = "SETOF";
  *(v773 + 1) = 5;
  v773[16] = 2;
  v8();
  v774 = (v989 + v3 + 387 * v2);
  v775 = v774 + v1[14];
  *v774 = 625;
  *v775 = "SHARE";
  *(v775 + 1) = 5;
  v775[16] = 2;
  v8();
  v776 = (v989 + v3 + 388 * v2);
  v777 = v776 + v1[14];
  *v776 = 626;
  *v777 = "SHOW";
  *(v777 + 1) = 4;
  v777[16] = 2;
  v8();
  v778 = (v989 + v3 + 389 * v2);
  v779 = v778 + v1[14];
  *v778 = 627;
  *v779 = "SIMILAR";
  *(v779 + 1) = 7;
  v779[16] = 2;
  v8();
  v780 = (v989 + v3 + 390 * v2);
  v781 = v780 + v1[14];
  *v780 = 628;
  *v781 = "SIMPLE";
  *(v781 + 1) = 6;
  v781[16] = 2;
  v8();
  v782 = (v989 + v3 + 391 * v2);
  v783 = v782 + v1[14];
  *v782 = 629;
  *v783 = "SKIP";
  *(v783 + 1) = 4;
  v783[16] = 2;
  v8();
  v784 = (v989 + v3 + 392 * v2);
  v785 = v784 + v1[14];
  *v784 = 630;
  *v785 = "SMALLINT";
  *(v785 + 1) = 8;
  v785[16] = 2;
  v8();
  v786 = (v989 + v3 + 393 * v2);
  v787 = v786 + v1[14];
  *v786 = 631;
  *v787 = "SNAPSHOT";
  *(v787 + 1) = 8;
  v787[16] = 2;
  v8();
  v788 = (v989 + v3 + 394 * v2);
  v789 = v788 + v1[14];
  *v788 = 632;
  *v789 = "SOME";
  *(v789 + 1) = 4;
  v789[16] = 2;
  v8();
  v790 = (v989 + v3 + 395 * v2);
  v791 = v790 + v1[14];
  *v790 = 633;
  *v791 = "SQL_P";
  *(v791 + 1) = 5;
  v791[16] = 2;
  v8();
  v792 = (v989 + v3 + 396 * v2);
  v793 = v792 + v1[14];
  *v792 = 634;
  *v793 = "STABLE";
  *(v793 + 1) = 6;
  v793[16] = 2;
  v8();
  v794 = (v989 + v3 + 397 * v2);
  v795 = v794 + v1[14];
  *v794 = 635;
  *v795 = "STANDALONE_P";
  *(v795 + 1) = 12;
  v795[16] = 2;
  v8();
  v796 = (v989 + v3 + 398 * v2);
  v797 = v796 + v1[14];
  *v796 = 636;
  *v797 = "START";
  *(v797 + 1) = 5;
  v797[16] = 2;
  v8();
  v798 = (v989 + v3 + 399 * v2);
  v799 = v798 + v1[14];
  *v798 = 637;
  *v799 = "STATEMENT";
  *(v799 + 1) = 9;
  v799[16] = 2;
  v8();
  v800 = (v989 + v3 + 400 * v2);
  v801 = v800 + v1[14];
  *v800 = 638;
  *v801 = "STATISTICS";
  *(v801 + 1) = 10;
  v801[16] = 2;
  v8();
  v802 = (v989 + v3 + 401 * v2);
  v803 = v802 + v1[14];
  *v802 = 639;
  *v803 = "STDIN";
  *(v803 + 1) = 5;
  v803[16] = 2;
  v8();
  v804 = (v989 + v3 + 402 * v2);
  v805 = v804 + v1[14];
  *v804 = 640;
  *v805 = "STDOUT";
  *(v805 + 1) = 6;
  v805[16] = 2;
  v8();
  v806 = (v989 + v3 + 403 * v2);
  v807 = v806 + v1[14];
  *v806 = 641;
  *v807 = "STORAGE";
  *(v807 + 1) = 7;
  v807[16] = 2;
  v8();
  v808 = (v989 + v3 + 404 * v2);
  v809 = v808 + v1[14];
  *v808 = 642;
  *v809 = "STORED";
  *(v809 + 1) = 6;
  v809[16] = 2;
  v8();
  v810 = (v989 + v3 + 405 * v2);
  v811 = v810 + v1[14];
  *v810 = 643;
  *v811 = "STRICT_P";
  *(v811 + 1) = 8;
  v811[16] = 2;
  v8();
  v812 = (v989 + v3 + 406 * v2);
  v813 = v812 + v1[14];
  *v812 = 644;
  *v813 = "STRIP_P";
  *(v813 + 1) = 7;
  v813[16] = 2;
  v8();
  v814 = (v989 + v3 + 407 * v2);
  v815 = v814 + v1[14];
  *v814 = 645;
  *v815 = "SUBSCRIPTION";
  *(v815 + 1) = 12;
  v815[16] = 2;
  v8();
  v816 = (v989 + v3 + 408 * v2);
  v817 = v816 + v1[14];
  *v816 = 646;
  *v817 = "SUBSTRING";
  *(v817 + 1) = 9;
  v817[16] = 2;
  v8();
  v818 = (v989 + v3 + 409 * v2);
  v819 = v818 + v1[14];
  *v818 = 647;
  *v819 = "SUPPORT";
  *(v819 + 1) = 7;
  v819[16] = 2;
  v8();
  v820 = (v989 + v3 + 410 * v2);
  v821 = v820 + v1[14];
  *v820 = 648;
  *v821 = "SYMMETRIC";
  *(v821 + 1) = 9;
  v821[16] = 2;
  v8();
  v822 = (v989 + v3 + 411 * v2);
  v823 = v822 + v1[14];
  *v822 = 649;
  *v823 = "SYSID";
  *(v823 + 1) = 5;
  v823[16] = 2;
  v8();
  v824 = (v989 + v3 + 412 * v2);
  v825 = v824 + v1[14];
  *v824 = 650;
  *v825 = "SYSTEM_P";
  *(v825 + 1) = 8;
  v825[16] = 2;
  v8();
  v826 = (v989 + v3 + 413 * v2);
  v827 = v826 + v1[14];
  *v826 = 651;
  *v827 = "TABLE";
  *(v827 + 1) = 5;
  v827[16] = 2;
  v8();
  v828 = (v989 + v3 + 414 * v2);
  v829 = v828 + v1[14];
  *v828 = 652;
  *v829 = "TABLES";
  *(v829 + 1) = 6;
  v829[16] = 2;
  v8();
  v830 = (v989 + v3 + 415 * v2);
  v831 = v830 + v1[14];
  *v830 = 653;
  *v831 = "TABLESAMPLE";
  *(v831 + 1) = 11;
  v831[16] = 2;
  v8();
  v832 = (v989 + v3 + 416 * v2);
  v833 = v832 + v1[14];
  *v832 = 654;
  *v833 = "TABLESPACE";
  *(v833 + 1) = 10;
  v833[16] = 2;
  v8();
  v834 = (v989 + v3 + 417 * v2);
  v835 = v834 + v1[14];
  *v834 = 655;
  *v835 = "TEMP";
  *(v835 + 1) = 4;
  v835[16] = 2;
  v8();
  v836 = (v989 + v3 + 418 * v2);
  v837 = v836 + v1[14];
  *v836 = 656;
  *v837 = "TEMPLATE";
  *(v837 + 1) = 8;
  v837[16] = 2;
  v8();
  v838 = (v989 + v3 + 419 * v2);
  v839 = v838 + v1[14];
  *v838 = 657;
  *v839 = "TEMPORARY";
  *(v839 + 1) = 9;
  v839[16] = 2;
  v8();
  v840 = (v989 + v3 + 420 * v2);
  v841 = v840 + v1[14];
  *v840 = 658;
  *v841 = "TEXT_P";
  *(v841 + 1) = 6;
  v841[16] = 2;
  v8();
  v842 = (v989 + v3 + 421 * v2);
  v843 = v842 + v1[14];
  *v842 = 659;
  *v843 = "THEN";
  *(v843 + 1) = 4;
  v843[16] = 2;
  v8();
  v844 = (v989 + v3 + 422 * v2);
  v845 = v844 + v1[14];
  *v844 = 660;
  *v845 = "TIES";
  *(v845 + 1) = 4;
  v845[16] = 2;
  v8();
  v846 = (v989 + v3 + 423 * v2);
  v847 = v846 + v1[14];
  *v846 = 661;
  *v847 = "TIME";
  *(v847 + 1) = 4;
  v847[16] = 2;
  v8();
  v848 = (v989 + v3 + 424 * v2);
  v849 = v848 + v1[14];
  *v848 = 662;
  *v849 = "TIMESTAMP";
  *(v849 + 1) = 9;
  v849[16] = 2;
  v8();
  v850 = (v989 + v3 + 425 * v2);
  v851 = v850 + v1[14];
  *v850 = 663;
  *v851 = "TO";
  *(v851 + 1) = 2;
  v851[16] = 2;
  v8();
  v852 = (v989 + v3 + 426 * v2);
  v853 = v852 + v1[14];
  *v852 = 664;
  *v853 = "TRAILING";
  *(v853 + 1) = 8;
  v853[16] = 2;
  v8();
  v854 = (v989 + v3 + 427 * v2);
  v855 = v854 + v1[14];
  *v854 = 665;
  *v855 = "TRANSACTION";
  *(v855 + 1) = 11;
  v855[16] = 2;
  v8();
  v856 = (v989 + v3 + 428 * v2);
  v857 = v856 + v1[14];
  *v856 = 666;
  *v857 = "TRANSFORM";
  *(v857 + 1) = 9;
  v857[16] = 2;
  v8();
  v858 = (v989 + v3 + 429 * v2);
  v859 = v858 + v1[14];
  *v858 = 667;
  *v859 = "TREAT";
  *(v859 + 1) = 5;
  v859[16] = 2;
  v8();
  v860 = (v989 + v3 + 430 * v2);
  v861 = v860 + v1[14];
  *v860 = 668;
  *v861 = "TRIGGER";
  *(v861 + 1) = 7;
  v861[16] = 2;
  v8();
  v862 = (v989 + v3 + 431 * v2);
  v863 = v862 + v1[14];
  *v862 = 669;
  *v863 = "TRIM";
  *(v863 + 1) = 4;
  v863[16] = 2;
  v8();
  v864 = (v989 + v3 + 432 * v2);
  v865 = v864 + v1[14];
  *v864 = 670;
  *v865 = "TRUE_P";
  *(v865 + 1) = 6;
  v865[16] = 2;
  v8();
  v866 = (v989 + v3 + 433 * v2);
  v867 = v866 + v1[14];
  *v866 = 671;
  *v867 = "TRUNCATE";
  *(v867 + 1) = 8;
  v867[16] = 2;
  v8();
  v868 = (v989 + v3 + 434 * v2);
  v869 = v868 + v1[14];
  *v868 = 672;
  *v869 = "TRUSTED";
  *(v869 + 1) = 7;
  v869[16] = 2;
  v8();
  v870 = (v989 + v3 + 435 * v2);
  v871 = v870 + v1[14];
  *v870 = 673;
  *v871 = "TYPE_P";
  *(v871 + 1) = 6;
  v871[16] = 2;
  v8();
  v872 = (v989 + v3 + 436 * v2);
  v873 = v872 + v1[14];
  *v872 = 674;
  *v873 = "TYPES_P";
  *(v873 + 1) = 7;
  v873[16] = 2;
  v8();
  v874 = (v989 + v3 + 437 * v2);
  v875 = v874 + v1[14];
  *v874 = 675;
  *v875 = "UESCAPE";
  *(v875 + 1) = 7;
  v875[16] = 2;
  v8();
  v876 = (v989 + v3 + 438 * v2);
  v877 = v876 + v1[14];
  *v876 = 676;
  *v877 = "UNBOUNDED";
  *(v877 + 1) = 9;
  v877[16] = 2;
  v8();
  v878 = (v989 + v3 + 439 * v2);
  v879 = v878 + v1[14];
  *v878 = 677;
  *v879 = "UNCOMMITTED";
  *(v879 + 1) = 11;
  v879[16] = 2;
  v8();
  v880 = (v989 + v3 + 440 * v2);
  v881 = v880 + v1[14];
  *v880 = 678;
  *v881 = "UNENCRYPTED";
  *(v881 + 1) = 11;
  v881[16] = 2;
  v8();
  v882 = (v989 + v3 + 441 * v2);
  v883 = v882 + v1[14];
  *v882 = 679;
  *v883 = "UNION";
  *(v883 + 1) = 5;
  v883[16] = 2;
  v8();
  v884 = (v989 + v3 + 442 * v2);
  v885 = v884 + v1[14];
  *v884 = 680;
  *v885 = "UNIQUE";
  *(v885 + 1) = 6;
  v885[16] = 2;
  v8();
  v886 = (v989 + v3 + 443 * v2);
  v887 = v886 + v1[14];
  *v886 = 681;
  *v887 = "UNKNOWN";
  *(v887 + 1) = 7;
  v887[16] = 2;
  v8();
  v888 = (v989 + v3 + 444 * v2);
  v889 = v888 + v1[14];
  *v888 = 682;
  *v889 = "UNLISTEN";
  *(v889 + 1) = 8;
  v889[16] = 2;
  v8();
  v890 = (v989 + v3 + 445 * v2);
  v891 = v890 + v1[14];
  *v890 = 683;
  *v891 = "UNLOGGED";
  *(v891 + 1) = 8;
  v891[16] = 2;
  v8();
  v892 = (v989 + v3 + 446 * v2);
  v893 = v892 + v1[14];
  *v892 = 684;
  *v893 = "UNTIL";
  *(v893 + 1) = 5;
  v893[16] = 2;
  v8();
  v894 = (v989 + v3 + 447 * v2);
  v895 = v894 + v1[14];
  *v894 = 685;
  *v895 = "UPDATE";
  *(v895 + 1) = 6;
  v895[16] = 2;
  v8();
  v896 = (v989 + v3 + 448 * v2);
  v897 = v896 + v1[14];
  *v896 = 686;
  *v897 = "USER";
  *(v897 + 1) = 4;
  v897[16] = 2;
  v8();
  v898 = (v989 + v3 + 449 * v2);
  v899 = v898 + v1[14];
  *v898 = 687;
  *v899 = "USING";
  *(v899 + 1) = 5;
  v899[16] = 2;
  v8();
  v900 = (v989 + v3 + 450 * v2);
  v901 = v900 + v1[14];
  *v900 = 688;
  *v901 = "VACUUM";
  *(v901 + 1) = 6;
  v901[16] = 2;
  v8();
  v902 = (v989 + v3 + 451 * v2);
  v903 = v902 + v1[14];
  *v902 = 689;
  *v903 = "VALID";
  *(v903 + 1) = 5;
  v903[16] = 2;
  v8();
  v904 = (v989 + v3 + 452 * v2);
  v905 = v904 + v1[14];
  *v904 = 690;
  *v905 = "VALIDATE";
  *(v905 + 1) = 8;
  v905[16] = 2;
  v8();
  v906 = (v989 + v3 + 453 * v2);
  v907 = v906 + v1[14];
  *v906 = 691;
  *v907 = "VALIDATOR";
  *(v907 + 1) = 9;
  v907[16] = 2;
  v8();
  v908 = (v989 + v3 + 454 * v2);
  v909 = v908 + v1[14];
  *v908 = 692;
  *v909 = "VALUE_P";
  *(v909 + 1) = 7;
  v909[16] = 2;
  v8();
  v910 = (v989 + v3 + 455 * v2);
  v911 = v910 + v1[14];
  *v910 = 693;
  *v911 = "VALUES";
  *(v911 + 1) = 6;
  v911[16] = 2;
  v8();
  v912 = (v989 + v3 + 456 * v2);
  v913 = v912 + v1[14];
  *v912 = 694;
  *v913 = "VARCHAR";
  *(v913 + 1) = 7;
  v913[16] = 2;
  v8();
  v914 = (v989 + v3 + 457 * v2);
  v915 = v914 + v1[14];
  *v914 = 695;
  *v915 = "VARIADIC";
  *(v915 + 1) = 8;
  v915[16] = 2;
  v8();
  v916 = (v989 + v3 + 458 * v2);
  v917 = v916 + v1[14];
  *v916 = 696;
  *v917 = "VARYING";
  *(v917 + 1) = 7;
  v917[16] = 2;
  v8();
  v918 = (v989 + v3 + 459 * v2);
  v919 = v918 + v1[14];
  *v918 = 697;
  *v919 = "VERBOSE";
  *(v919 + 1) = 7;
  v919[16] = 2;
  v8();
  v920 = (v989 + v3 + 460 * v2);
  v921 = v920 + v1[14];
  *v920 = 698;
  *v921 = "VERSION_P";
  *(v921 + 1) = 9;
  v921[16] = 2;
  v8();
  v922 = (v989 + v3 + 461 * v2);
  v923 = v922 + v1[14];
  *v922 = 699;
  *v923 = "VIEW";
  *(v923 + 1) = 4;
  v923[16] = 2;
  v8();
  v924 = (v989 + v3 + 462 * v2);
  v925 = v924 + v1[14];
  *v924 = 700;
  *v925 = "VIEWS";
  *(v925 + 1) = 5;
  v925[16] = 2;
  v8();
  v926 = (v989 + v3 + 463 * v2);
  v927 = v926 + v1[14];
  *v926 = 701;
  *v927 = "VOLATILE";
  *(v927 + 1) = 8;
  v927[16] = 2;
  v8();
  v928 = (v989 + v3 + 464 * v2);
  v929 = v928 + v1[14];
  *v928 = 702;
  *v929 = "WHEN";
  *(v929 + 1) = 4;
  v929[16] = 2;
  v8();
  v930 = (v989 + v3 + 465 * v2);
  v931 = v930 + v1[14];
  *v930 = 703;
  *v931 = "WHERE";
  *(v931 + 1) = 5;
  v931[16] = 2;
  v8();
  v932 = (v989 + v3 + 466 * v2);
  v933 = v932 + v1[14];
  *v932 = 704;
  *v933 = "WHITESPACE_P";
  *(v933 + 1) = 12;
  v933[16] = 2;
  v8();
  v934 = (v989 + v3 + 467 * v2);
  v935 = v934 + v1[14];
  *v934 = 705;
  *v935 = "WINDOW";
  *(v935 + 1) = 6;
  v935[16] = 2;
  v8();
  v936 = (v989 + v3 + 468 * v2);
  v937 = v936 + v1[14];
  *v936 = 706;
  *v937 = "WITH";
  *(v937 + 1) = 4;
  v937[16] = 2;
  v8();
  v938 = (v989 + v3 + 469 * v2);
  v939 = v938 + v1[14];
  *v938 = 707;
  *v939 = "WITHIN";
  *(v939 + 1) = 6;
  v939[16] = 2;
  v8();
  v940 = (v989 + v3 + 470 * v2);
  v941 = v940 + v1[14];
  *v940 = 708;
  *v941 = "WITHOUT";
  *(v941 + 1) = 7;
  v941[16] = 2;
  v8();
  v942 = (v989 + v3 + 471 * v2);
  v943 = v942 + v1[14];
  *v942 = 709;
  *v943 = "WORK";
  *(v943 + 1) = 4;
  v943[16] = 2;
  v8();
  v944 = (v989 + v3 + 472 * v2);
  v945 = v944 + v1[14];
  *v944 = 710;
  *v945 = "WRAPPER";
  *(v945 + 1) = 7;
  v945[16] = 2;
  v8();
  v946 = (v989 + v3 + 473 * v2);
  v947 = v946 + v1[14];
  *v946 = 711;
  *v947 = "WRITE";
  *(v947 + 1) = 5;
  v947[16] = 2;
  v8();
  v948 = (v989 + v3 + 474 * v2);
  v949 = v948 + v1[14];
  *v948 = 712;
  *v949 = "XML_P";
  *(v949 + 1) = 5;
  v949[16] = 2;
  v8();
  v950 = (v989 + v3 + 475 * v2);
  v951 = v950 + v1[14];
  *v950 = 713;
  *v951 = "XMLATTRIBUTES";
  *(v951 + 1) = 13;
  v951[16] = 2;
  v8();
  v952 = (v989 + v3 + 476 * v2);
  v953 = v952 + v1[14];
  *v952 = 714;
  *v953 = "XMLCONCAT";
  *(v953 + 1) = 9;
  v953[16] = 2;
  v8();
  v954 = (v989 + v3 + 477 * v2);
  v955 = v954 + v1[14];
  *v954 = 715;
  *v955 = "XMLELEMENT";
  *(v955 + 1) = 10;
  v955[16] = 2;
  v8();
  v956 = (v989 + v3 + 478 * v2);
  v957 = v956 + v1[14];
  *v956 = 716;
  *v957 = "XMLEXISTS";
  *(v957 + 1) = 9;
  v957[16] = 2;
  v8();
  v958 = (v989 + v3 + 479 * v2);
  v959 = v958 + v1[14];
  *v958 = 717;
  *v959 = "XMLFOREST";
  *(v959 + 1) = 9;
  v959[16] = 2;
  v8();
  v960 = (v989 + v3 + 480 * v2);
  v961 = v960 + v1[14];
  *v960 = 718;
  *v961 = "XMLNAMESPACES";
  *(v961 + 1) = 13;
  v961[16] = 2;
  v8();
  v962 = (v989 + v3 + 481 * v2);
  v963 = v962 + v1[14];
  *v962 = 719;
  *v963 = "XMLPARSE";
  *(v963 + 1) = 8;
  v963[16] = 2;
  v8();
  v964 = (v989 + v3 + 482 * v2);
  v965 = v964 + v1[14];
  *v964 = 720;
  *v965 = "XMLPI";
  *(v965 + 1) = 5;
  v965[16] = 2;
  v8();
  v966 = (v989 + v3 + 483 * v2);
  v967 = v966 + v1[14];
  *v966 = 721;
  *v967 = "XMLROOT";
  *(v967 + 1) = 7;
  v967[16] = 2;
  v8();
  v968 = (v989 + v3 + 484 * v2);
  v969 = v968 + v1[14];
  *v968 = 722;
  *v969 = "XMLSERIALIZE";
  *(v969 + 1) = 12;
  v969[16] = 2;
  v8();
  v970 = (v989 + v3 + 485 * v2);
  v971 = v970 + v1[14];
  *v970 = 723;
  *v971 = "XMLTABLE";
  *(v971 + 1) = 8;
  v971[16] = 2;
  v8();
  v972 = (v989 + v3 + 486 * v2);
  v973 = v972 + v1[14];
  *v972 = 724;
  *v973 = "YEAR_P";
  *(v973 + 1) = 6;
  v973[16] = 2;
  v8();
  v974 = (v989 + v3 + 487 * v2);
  v975 = v974 + v1[14];
  *v974 = 725;
  *v975 = "YES_P";
  *(v975 + 1) = 5;
  v975[16] = 2;
  v8();
  v976 = (v989 + v3 + 488 * v2);
  v977 = v976 + v1[14];
  *v976 = 726;
  *v977 = "ZONE";
  *(v977 + 1) = 4;
  v977[16] = 2;
  v8();
  v978 = (v989 + v3 + 489 * v2);
  v979 = v978 + v1[14];
  *v978 = 727;
  *v979 = "NOT_LA";
  *(v979 + 1) = 6;
  v979[16] = 2;
  v8();
  v980 = (v989 + v3 + 490 * v2);
  v981 = v980 + v1[14];
  *v980 = 728;
  *v981 = "NULLS_LA";
  *(v981 + 1) = 8;
  v981[16] = 2;
  v8();
  v982 = (v989 + v3 + 491 * v2);
  v983 = v982 + v1[14];
  *v982 = 729;
  *v983 = "WITH_LA";
  *(v983 + 1) = 7;
  v983[16] = 2;
  v8();
  v984 = (v989 + v3 + 492 * v2);
  v985 = v984 + v1[14];
  *v984 = 730;
  *v985 = "POSTFIXOP";
  *(v985 + 1) = 9;
  v985[16] = 2;
  v8();
  v986 = (v989 + v3 + 493 * v2);
  v987 = v986 + v1[14];
  *v986 = 731;
  *v987 = "UMINUS";
  *(v987 + 1) = 6;
  v987[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_ParseResult._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_ParseResult._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29A90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "stmts";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_ScanResult._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_ScanResult._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29A90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "tokens";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_Node._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_Node._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v677 = swift_allocObject();
  *(v677 + 16) = xmmword_184D2AAF0;
  v4 = v677 + v3;
  v5 = v677 + v3 + v1[14];
  *(v677 + v3) = 1;
  *v5 = "alias";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  *(v5 + 24) = "Alias";
  *(v5 + 32) = 5;
  *(v5 + 40) = 2;
  v6 = *MEMORY[0x1E69AADD8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v677 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "range_var";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  *(v9 + 24) = "RangeVar";
  *(v9 + 32) = 8;
  *(v9 + 40) = 2;
  v8();
  v10 = v1[14];
  v11 = (v677 + v3 + 2 * v2);
  *v11 = 3;
  v12 = v11 + v10;
  *v12 = "table_func";
  *(v12 + 1) = 10;
  v12[16] = 2;
  *(v12 + 3) = "TableFunc";
  *(v12 + 4) = 9;
  v12[40] = 2;
  v8();
  v13 = v1[14];
  v14 = (v677 + v3 + 3 * v2);
  *v14 = 4;
  v15 = v14 + v13;
  *v15 = "expr";
  *(v15 + 1) = 4;
  v15[16] = 2;
  *(v15 + 3) = "Expr";
  *(v15 + 4) = 4;
  v15[40] = 2;
  v8();
  v16 = (v677 + v3 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "var";
  *(v17 + 1) = 3;
  v17[16] = 2;
  *(v17 + 3) = "Var";
  *(v17 + 4) = 3;
  v17[40] = 2;
  v8();
  v18 = v1[14];
  v19 = (v677 + v3 + 5 * v2);
  *v19 = 6;
  v20 = v19 + v18;
  *v20 = "param";
  *(v20 + 1) = 5;
  v20[16] = 2;
  *(v20 + 3) = "Param";
  *(v20 + 4) = 5;
  v20[40] = 2;
  v8();
  v21 = v1[14];
  v22 = (v677 + v3 + 6 * v2);
  *v22 = 7;
  v23 = v22 + v21;
  *v23 = "aggref";
  *(v23 + 1) = 6;
  v23[16] = 2;
  *(v23 + 3) = "Aggref";
  *(v23 + 4) = 6;
  v23[40] = 2;
  v8();
  v24 = v1[14];
  v25 = (v677 + v3 + 7 * v2);
  *v25 = 8;
  v26 = v25 + v24;
  *v26 = "grouping_func";
  *(v26 + 1) = 13;
  v26[16] = 2;
  *(v26 + 3) = "GroupingFunc";
  *(v26 + 4) = 12;
  v26[40] = 2;
  v8();
  v27 = v677 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v27 = "window_func";
  *(v27 + 8) = 11;
  *(v27 + 16) = 2;
  *(v27 + 24) = "WindowFunc";
  *(v27 + 32) = 10;
  *(v27 + 40) = 2;
  v8();
  v28 = (v677 + v3 + 9 * v2);
  v29 = v28 + v1[14];
  *v28 = 10;
  *v29 = "subscripting_ref";
  *(v29 + 1) = 16;
  v29[16] = 2;
  *(v29 + 3) = "SubscriptingRef";
  *(v29 + 4) = 15;
  v29[40] = 2;
  v8();
  v30 = v1[14];
  v31 = (v677 + v3 + 10 * v2);
  *v31 = 11;
  v32 = v31 + v30;
  *v32 = "func_expr";
  *(v32 + 1) = 9;
  v32[16] = 2;
  *(v32 + 3) = "FuncExpr";
  *(v32 + 4) = 8;
  v32[40] = 2;
  v8();
  v33 = v1[14];
  v34 = (v677 + v3 + 11 * v2);
  *v34 = 12;
  v35 = v34 + v33;
  *v35 = "named_arg_expr";
  *(v35 + 1) = 14;
  v35[16] = 2;
  *(v35 + 3) = "NamedArgExpr";
  *(v35 + 4) = 12;
  v35[40] = 2;
  v8();
  v36 = v1[14];
  v37 = (v677 + v3 + 12 * v2);
  *v37 = 13;
  v38 = v37 + v36;
  *v38 = "op_expr";
  *(v38 + 1) = 7;
  v38[16] = 2;
  *(v38 + 3) = "OpExpr";
  *(v38 + 4) = 6;
  v38[40] = 2;
  v8();
  v39 = v1[14];
  v40 = (v677 + v3 + 13 * v2);
  *v40 = 14;
  v41 = v40 + v39;
  *v41 = "distinct_expr";
  *(v41 + 1) = 13;
  v41[16] = 2;
  *(v41 + 3) = "DistinctExpr";
  *(v41 + 4) = 12;
  v41[40] = 2;
  v8();
  v42 = v1[14];
  v43 = (v677 + v3 + 14 * v2);
  *v43 = 15;
  v44 = v43 + v42;
  *v44 = "null_if_expr";
  *(v44 + 1) = 12;
  v44[16] = 2;
  *(v44 + 3) = "NullIfExpr";
  *(v44 + 4) = 10;
  v44[40] = 2;
  v8();
  v45 = v1[14];
  v46 = (v677 + v3 + 15 * v2);
  *v46 = 16;
  v47 = v46 + v45;
  *v47 = "scalar_array_op_expr";
  *(v47 + 1) = 20;
  v47[16] = 2;
  *(v47 + 3) = "ScalarArrayOpExpr";
  *(v47 + 4) = 17;
  v47[40] = 2;
  v8();
  v48 = v677 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v48 = "BOOL_expr";
  *(v48 + 8) = 9;
  *(v48 + 16) = 2;
  *(v48 + 24) = "BoolExpr";
  *(v48 + 32) = 8;
  *(v48 + 40) = 2;
  v8();
  v49 = v1[14];
  v50 = (v677 + v3 + 17 * v2);
  *v50 = 18;
  v51 = v50 + v49;
  *v51 = "sub_link";
  *(v51 + 1) = 8;
  v51[16] = 2;
  *(v51 + 3) = "SubLink";
  *(v51 + 4) = 7;
  v51[40] = 2;
  v8();
  v52 = v1[14];
  v53 = (v677 + v3 + 18 * v2);
  *v53 = 19;
  v54 = v53 + v52;
  *v54 = "sub_plan";
  *(v54 + 1) = 8;
  v54[16] = 2;
  *(v54 + 3) = "SubPlan";
  *(v54 + 4) = 7;
  v54[40] = 2;
  v8();
  v55 = v1[14];
  v56 = (v677 + v3 + 19 * v2);
  *v56 = 20;
  v57 = v56 + v55;
  *v57 = "alternative_sub_plan";
  *(v57 + 1) = 20;
  v57[16] = 2;
  *(v57 + 3) = "AlternativeSubPlan";
  *(v57 + 4) = 18;
  v57[40] = 2;
  v8();
  v58 = v1[14];
  v59 = (v677 + v3 + 20 * v2);
  *v59 = 21;
  v60 = v59 + v58;
  *v60 = "field_select";
  *(v60 + 1) = 12;
  v60[16] = 2;
  *(v60 + 3) = "FieldSelect";
  *(v60 + 4) = 11;
  v60[40] = 2;
  v8();
  v61 = v1[14];
  v62 = (v677 + v3 + 21 * v2);
  *v62 = 22;
  v63 = v62 + v61;
  *v63 = "field_store";
  *(v63 + 1) = 11;
  v63[16] = 2;
  *(v63 + 3) = "FieldStore";
  *(v63 + 4) = 10;
  v63[40] = 2;
  v8();
  v64 = v1[14];
  v65 = (v677 + v3 + 22 * v2);
  *v65 = 23;
  v66 = v65 + v64;
  *v66 = "relabel_type";
  *(v66 + 1) = 12;
  v66[16] = 2;
  *(v66 + 3) = "RelabelType";
  *(v66 + 4) = 11;
  v66[40] = 2;
  v8();
  v67 = v1[14];
  v68 = (v677 + v3 + 23 * v2);
  *v68 = 24;
  v69 = v68 + v67;
  *v69 = "coerce_via_io";
  *(v69 + 1) = 13;
  v69[16] = 2;
  *(v69 + 3) = "CoerceViaIO";
  *(v69 + 4) = 11;
  v69[40] = 2;
  v8();
  v70 = v1[14];
  v71 = (v677 + v3 + 24 * v2);
  *v71 = 25;
  v72 = v71 + v70;
  *v72 = "array_coerce_expr";
  *(v72 + 1) = 17;
  v72[16] = 2;
  *(v72 + 3) = "ArrayCoerceExpr";
  *(v72 + 4) = 15;
  v72[40] = 2;
  v8();
  v73 = v1[14];
  v74 = (v677 + v3 + 25 * v2);
  *v74 = 26;
  v75 = v74 + v73;
  *v75 = "convert_rowtype_expr";
  *(v75 + 1) = 20;
  v75[16] = 2;
  *(v75 + 3) = "ConvertRowtypeExpr";
  *(v75 + 4) = 18;
  v75[40] = 2;
  v8();
  v76 = v1[14];
  v77 = (v677 + v3 + 26 * v2);
  *v77 = 27;
  v78 = v77 + v76;
  *v78 = "collate_expr";
  *(v78 + 1) = 12;
  v78[16] = 2;
  *(v78 + 3) = "CollateExpr";
  *(v78 + 4) = 11;
  v78[40] = 2;
  v8();
  v79 = v1[14];
  v80 = (v677 + v3 + 27 * v2);
  *v80 = 28;
  v81 = v80 + v79;
  *v81 = "case_expr";
  *(v81 + 1) = 9;
  v81[16] = 2;
  *(v81 + 3) = "CaseExpr";
  *(v81 + 4) = 8;
  v81[40] = 2;
  v8();
  v82 = v1[14];
  v83 = (v677 + v3 + 28 * v2);
  *v83 = 29;
  v84 = v83 + v82;
  *v84 = "case_when";
  *(v84 + 1) = 9;
  v84[16] = 2;
  *(v84 + 3) = "CaseWhen";
  *(v84 + 4) = 8;
  v84[40] = 2;
  v8();
  v85 = v1[14];
  v86 = (v677 + v3 + 29 * v2);
  *v86 = 30;
  v87 = v86 + v85;
  *v87 = "case_test_expr";
  *(v87 + 1) = 14;
  v87[16] = 2;
  *(v87 + 3) = "CaseTestExpr";
  *(v87 + 4) = 12;
  v87[40] = 2;
  v8();
  v88 = v1[14];
  v89 = (v677 + v3 + 30 * v2);
  *v89 = 31;
  v90 = v89 + v88;
  *v90 = "array_expr";
  *(v90 + 1) = 10;
  v90[16] = 2;
  *(v90 + 3) = "ArrayExpr";
  *(v90 + 4) = 9;
  v90[40] = 2;
  v8();
  v91 = v1[14];
  v92 = (v677 + v3 + 31 * v2);
  *v92 = 32;
  v93 = v92 + v91;
  *v93 = "row_expr";
  *(v93 + 1) = 8;
  v93[16] = 2;
  *(v93 + 3) = "RowExpr";
  *(v93 + 4) = 7;
  v93[40] = 2;
  v8();
  v94 = v677 + v3 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 33;
  *v94 = "row_compare_expr";
  *(v94 + 8) = 16;
  *(v94 + 16) = 2;
  *(v94 + 24) = "RowCompareExpr";
  *(v94 + 32) = 14;
  *(v94 + 40) = 2;
  v8();
  v95 = v1[14];
  v96 = (v677 + v3 + 33 * v2);
  *v96 = 34;
  v97 = v96 + v95;
  *v97 = "coalesce_expr";
  *(v97 + 1) = 13;
  v97[16] = 2;
  *(v97 + 3) = "CoalesceExpr";
  *(v97 + 4) = 12;
  v97[40] = 2;
  v8();
  v98 = v1[14];
  v99 = (v677 + v3 + 34 * v2);
  *v99 = 35;
  v100 = v99 + v98;
  *v100 = "min_max_expr";
  *(v100 + 1) = 12;
  v100[16] = 2;
  *(v100 + 3) = "MinMaxExpr";
  *(v100 + 4) = 10;
  v100[40] = 2;
  v8();
  v101 = v1[14];
  v102 = (v677 + v3 + 35 * v2);
  *v102 = 36;
  v103 = v102 + v101;
  *v103 = "sqlvalue_function";
  *(v103 + 1) = 17;
  v103[16] = 2;
  *(v103 + 3) = "SQLValueFunction";
  *(v103 + 4) = 16;
  v103[40] = 2;
  v8();
  v104 = v1[14];
  v105 = (v677 + v3 + 36 * v2);
  *v105 = 37;
  v106 = v105 + v104;
  *v106 = "xml_expr";
  *(v106 + 1) = 8;
  v106[16] = 2;
  *(v106 + 3) = "XmlExpr";
  *(v106 + 4) = 7;
  v106[40] = 2;
  v8();
  v107 = v1[14];
  v108 = (v677 + v3 + 37 * v2);
  *v108 = 38;
  v109 = v108 + v107;
  *v109 = "null_test";
  *(v109 + 1) = 9;
  v109[16] = 2;
  *(v109 + 3) = "NullTest";
  *(v109 + 4) = 8;
  v109[40] = 2;
  v8();
  v110 = v1[14];
  v111 = (v677 + v3 + 38 * v2);
  *v111 = 39;
  v112 = v111 + v110;
  *v112 = "BOOLean_test";
  *(v112 + 1) = 12;
  v112[16] = 2;
  *(v112 + 3) = "BooleanTest";
  *(v112 + 4) = 11;
  v112[40] = 2;
  v8();
  v113 = v1[14];
  v114 = (v677 + v3 + 39 * v2);
  *v114 = 40;
  v115 = v114 + v113;
  *v115 = "coerce_to_domain";
  *(v115 + 1) = 16;
  v115[16] = 2;
  *(v115 + 3) = "CoerceToDomain";
  *(v115 + 4) = 14;
  v115[40] = 2;
  v8();
  v116 = v1[14];
  v117 = (v677 + v3 + 40 * v2);
  *v117 = 41;
  v118 = v117 + v116;
  *v118 = "coerce_to_domain_value";
  *(v118 + 1) = 22;
  v118[16] = 2;
  *(v118 + 3) = "CoerceToDomainValue";
  *(v118 + 4) = 19;
  v118[40] = 2;
  v8();
  v119 = v1[14];
  v120 = (v677 + v3 + 41 * v2);
  *v120 = 42;
  v121 = v120 + v119;
  *v121 = "set_to_default";
  *(v121 + 1) = 14;
  v121[16] = 2;
  *(v121 + 3) = "SetToDefault";
  *(v121 + 4) = 12;
  v121[40] = 2;
  v8();
  v122 = v1[14];
  v123 = (v677 + v3 + 42 * v2);
  *v123 = 43;
  v124 = v123 + v122;
  *v124 = "current_of_expr";
  *(v124 + 1) = 15;
  v124[16] = 2;
  *(v124 + 3) = "CurrentOfExpr";
  *(v124 + 4) = 13;
  v124[40] = 2;
  v8();
  v125 = v1[14];
  v126 = (v677 + v3 + 43 * v2);
  *v126 = 44;
  v127 = v126 + v125;
  *v127 = "next_value_expr";
  *(v127 + 1) = 15;
  v127[16] = 2;
  *(v127 + 3) = "NextValueExpr";
  *(v127 + 4) = 13;
  v127[40] = 2;
  v8();
  v128 = v1[14];
  v129 = (v677 + v3 + 44 * v2);
  *v129 = 45;
  v130 = v129 + v128;
  *v130 = "inference_elem";
  *(v130 + 1) = 14;
  v130[16] = 2;
  *(v130 + 3) = "InferenceElem";
  *(v130 + 4) = 13;
  v130[40] = 2;
  v8();
  v131 = v1[14];
  v132 = (v677 + v3 + 45 * v2);
  *v132 = 46;
  v133 = v132 + v131;
  *v133 = "target_entry";
  *(v133 + 1) = 12;
  v133[16] = 2;
  *(v133 + 3) = "TargetEntry";
  *(v133 + 4) = 11;
  v133[40] = 2;
  v8();
  v134 = v1[14];
  v135 = (v677 + v3 + 46 * v2);
  *v135 = 47;
  v136 = v135 + v134;
  *v136 = "range_tbl_ref";
  *(v136 + 1) = 13;
  v136[16] = 2;
  *(v136 + 3) = "RangeTblRef";
  *(v136 + 4) = 11;
  v136[40] = 2;
  v8();
  v137 = v1[14];
  v138 = (v677 + v3 + 47 * v2);
  *v138 = 48;
  v139 = v138 + v137;
  *v139 = "join_expr";
  *(v139 + 1) = 9;
  v139[16] = 2;
  *(v139 + 3) = "JoinExpr";
  *(v139 + 4) = 8;
  v139[40] = 2;
  v8();
  v140 = v1[14];
  v141 = (v677 + v3 + 48 * v2);
  *v141 = 49;
  v142 = v141 + v140;
  *v142 = "from_expr";
  *(v142 + 1) = 9;
  v142[16] = 2;
  *(v142 + 3) = "FromExpr";
  *(v142 + 4) = 8;
  v142[40] = 2;
  v8();
  v143 = v1[14];
  v144 = (v677 + v3 + 49 * v2);
  *v144 = 50;
  v145 = v144 + v143;
  *v145 = "on_conflict_expr";
  *(v145 + 1) = 16;
  v145[16] = 2;
  *(v145 + 3) = "OnConflictExpr";
  *(v145 + 4) = 14;
  v145[40] = 2;
  v8();
  v146 = v1[14];
  v147 = (v677 + v3 + 50 * v2);
  *v147 = 51;
  v148 = v147 + v146;
  *v148 = "into_clause";
  *(v148 + 1) = 11;
  v148[16] = 2;
  *(v148 + 3) = "IntoClause";
  *(v148 + 4) = 10;
  v148[40] = 2;
  v8();
  v149 = v1[14];
  v150 = (v677 + v3 + 51 * v2);
  *v150 = 52;
  v151 = v150 + v149;
  *v151 = "raw_stmt";
  *(v151 + 1) = 8;
  v151[16] = 2;
  *(v151 + 3) = "RawStmt";
  *(v151 + 4) = 7;
  v151[40] = 2;
  v8();
  v152 = v1[14];
  v153 = (v677 + v3 + 52 * v2);
  *v153 = 53;
  v154 = v153 + v152;
  *v154 = "query";
  *(v154 + 1) = 5;
  v154[16] = 2;
  *(v154 + 3) = "Query";
  *(v154 + 4) = 5;
  v154[40] = 2;
  v8();
  v155 = v1[14];
  v156 = (v677 + v3 + 53 * v2);
  *v156 = 54;
  v157 = v156 + v155;
  *v157 = "insert_stmt";
  *(v157 + 1) = 11;
  v157[16] = 2;
  *(v157 + 3) = "InsertStmt";
  *(v157 + 4) = 10;
  v157[40] = 2;
  v8();
  v158 = v1[14];
  v159 = (v677 + v3 + 54 * v2);
  *v159 = 55;
  v160 = v159 + v158;
  *v160 = "delete_stmt";
  *(v160 + 1) = 11;
  v160[16] = 2;
  *(v160 + 3) = "DeleteStmt";
  *(v160 + 4) = 10;
  v160[40] = 2;
  v8();
  v161 = v1[14];
  v162 = (v677 + v3 + 55 * v2);
  *v162 = 56;
  v163 = v162 + v161;
  *v163 = "update_stmt";
  *(v163 + 1) = 11;
  v163[16] = 2;
  *(v163 + 3) = "UpdateStmt";
  *(v163 + 4) = 10;
  v163[40] = 2;
  v8();
  v164 = v1[14];
  v165 = (v677 + v3 + 56 * v2);
  *v165 = 57;
  v166 = v165 + v164;
  *v166 = "select_stmt";
  *(v166 + 1) = 11;
  v166[16] = 2;
  *(v166 + 3) = "SelectStmt";
  *(v166 + 4) = 10;
  v166[40] = 2;
  v8();
  v167 = v1[14];
  v168 = (v677 + v3 + 57 * v2);
  *v168 = 58;
  v169 = v168 + v167;
  *v169 = "alter_table_stmt";
  *(v169 + 1) = 16;
  v169[16] = 2;
  *(v169 + 3) = "AlterTableStmt";
  *(v169 + 4) = 14;
  v169[40] = 2;
  v8();
  v170 = v1[14];
  v171 = (v677 + v3 + 58 * v2);
  *v171 = 59;
  v172 = v171 + v170;
  *v172 = "alter_table_cmd";
  *(v172 + 1) = 15;
  v172[16] = 2;
  *(v172 + 3) = "AlterTableCmd";
  *(v172 + 4) = 13;
  v172[40] = 2;
  v8();
  v173 = v1[14];
  v174 = (v677 + v3 + 59 * v2);
  *v174 = 60;
  v175 = v174 + v173;
  *v175 = "alter_domain_stmt";
  *(v175 + 1) = 17;
  v175[16] = 2;
  *(v175 + 3) = "AlterDomainStmt";
  *(v175 + 4) = 15;
  v175[40] = 2;
  v8();
  v176 = v1[14];
  v177 = (v677 + v3 + 60 * v2);
  *v177 = 61;
  v178 = v177 + v176;
  *v178 = "set_operation_stmt";
  *(v178 + 1) = 18;
  v178[16] = 2;
  *(v178 + 3) = "SetOperationStmt";
  *(v178 + 4) = 16;
  v178[40] = 2;
  v8();
  v179 = v1[14];
  v180 = (v677 + v3 + 61 * v2);
  *v180 = 62;
  v181 = v180 + v179;
  *v181 = "grant_stmt";
  *(v181 + 1) = 10;
  v181[16] = 2;
  *(v181 + 3) = "GrantStmt";
  *(v181 + 4) = 9;
  v181[40] = 2;
  v8();
  v182 = v1[14];
  v183 = (v677 + v3 + 62 * v2);
  *v183 = 63;
  v184 = v183 + v182;
  *v184 = "grant_role_stmt";
  *(v184 + 1) = 15;
  v184[16] = 2;
  *(v184 + 3) = "GrantRoleStmt";
  *(v184 + 4) = 13;
  v184[40] = 2;
  v8();
  v185 = v1[14];
  v186 = (v677 + v3 + 63 * v2);
  *v186 = 64;
  v187 = v186 + v185;
  *v187 = "alter_default_privileges_stmt";
  *(v187 + 1) = 29;
  v187[16] = 2;
  *(v187 + 3) = "AlterDefaultPrivilegesStmt";
  *(v187 + 4) = 26;
  v187[40] = 2;
  v8();
  v188 = v677 + v3 + (v2 << 6) + v1[14];
  *(v4 + (v2 << 6)) = 65;
  *v188 = "close_portal_stmt";
  *(v188 + 8) = 17;
  *(v188 + 16) = 2;
  *(v188 + 24) = "ClosePortalStmt";
  *(v188 + 32) = 15;
  *(v188 + 40) = 2;
  v8();
  v189 = v1[14];
  v190 = (v677 + v3 + 65 * v2);
  *v190 = 66;
  v191 = v190 + v189;
  *v191 = "cluster_stmt";
  *(v191 + 1) = 12;
  v191[16] = 2;
  *(v191 + 3) = "ClusterStmt";
  *(v191 + 4) = 11;
  v191[40] = 2;
  v8();
  v192 = v1[14];
  v193 = (v677 + v3 + 66 * v2);
  *v193 = 67;
  v194 = v193 + v192;
  *v194 = "copy_stmt";
  *(v194 + 1) = 9;
  v194[16] = 2;
  *(v194 + 3) = "CopyStmt";
  *(v194 + 4) = 8;
  v194[40] = 2;
  v8();
  v195 = v1[14];
  v196 = (v677 + v3 + 67 * v2);
  *v196 = 68;
  v197 = v196 + v195;
  *v197 = "create_stmt";
  *(v197 + 1) = 11;
  v197[16] = 2;
  *(v197 + 3) = "CreateStmt";
  *(v197 + 4) = 10;
  v197[40] = 2;
  v8();
  v198 = v1[14];
  v199 = (v677 + v3 + 68 * v2);
  *v199 = 69;
  v200 = v199 + v198;
  *v200 = "define_stmt";
  *(v200 + 1) = 11;
  v200[16] = 2;
  *(v200 + 3) = "DefineStmt";
  *(v200 + 4) = 10;
  v200[40] = 2;
  v8();
  v201 = v1[14];
  v202 = (v677 + v3 + 69 * v2);
  *v202 = 70;
  v203 = v202 + v201;
  *v203 = "drop_stmt";
  *(v203 + 1) = 9;
  v203[16] = 2;
  *(v203 + 3) = "DropStmt";
  *(v203 + 4) = 8;
  v203[40] = 2;
  v8();
  v204 = v1[14];
  v205 = (v677 + v3 + 70 * v2);
  *v205 = 71;
  v206 = v205 + v204;
  *v206 = "truncate_stmt";
  *(v206 + 1) = 13;
  v206[16] = 2;
  *(v206 + 3) = "TruncateStmt";
  *(v206 + 4) = 12;
  v206[40] = 2;
  v8();
  v207 = v1[14];
  v208 = (v677 + v3 + 71 * v2);
  *v208 = 72;
  v209 = v208 + v207;
  *v209 = "comment_stmt";
  *(v209 + 1) = 12;
  v209[16] = 2;
  *(v209 + 3) = "CommentStmt";
  *(v209 + 4) = 11;
  v209[40] = 2;
  v8();
  v210 = v1[14];
  v211 = (v677 + v3 + 72 * v2);
  *v211 = 73;
  v212 = v211 + v210;
  *v212 = "fetch_stmt";
  *(v212 + 1) = 10;
  v212[16] = 2;
  *(v212 + 3) = "FetchStmt";
  *(v212 + 4) = 9;
  v212[40] = 2;
  v8();
  v213 = v1[14];
  v214 = (v677 + v3 + 73 * v2);
  *v214 = 74;
  v215 = v214 + v213;
  *v215 = "index_stmt";
  *(v215 + 1) = 10;
  v215[16] = 2;
  *(v215 + 3) = "IndexStmt";
  *(v215 + 4) = 9;
  v215[40] = 2;
  v8();
  v216 = v1[14];
  v217 = (v677 + v3 + 74 * v2);
  *v217 = 75;
  v218 = v217 + v216;
  *v218 = "create_function_stmt";
  *(v218 + 1) = 20;
  v218[16] = 2;
  *(v218 + 3) = "CreateFunctionStmt";
  *(v218 + 4) = 18;
  v218[40] = 2;
  v8();
  v219 = v1[14];
  v220 = (v677 + v3 + 75 * v2);
  *v220 = 76;
  v221 = v220 + v219;
  *v221 = "alter_function_stmt";
  *(v221 + 1) = 19;
  v221[16] = 2;
  *(v221 + 3) = "AlterFunctionStmt";
  *(v221 + 4) = 17;
  v221[40] = 2;
  v8();
  v222 = v1[14];
  v223 = (v677 + v3 + 76 * v2);
  *v223 = 77;
  v224 = v223 + v222;
  *v224 = "do_stmt";
  *(v224 + 1) = 7;
  v224[16] = 2;
  *(v224 + 3) = "DoStmt";
  *(v224 + 4) = 6;
  v224[40] = 2;
  v8();
  v225 = v1[14];
  v226 = (v677 + v3 + 77 * v2);
  *v226 = 78;
  v227 = v226 + v225;
  *v227 = "rename_stmt";
  *(v227 + 1) = 11;
  v227[16] = 2;
  *(v227 + 3) = "RenameStmt";
  *(v227 + 4) = 10;
  v227[40] = 2;
  v8();
  v228 = v1[14];
  v229 = (v677 + v3 + 78 * v2);
  *v229 = 79;
  v230 = v229 + v228;
  *v230 = "rule_stmt";
  *(v230 + 1) = 9;
  v230[16] = 2;
  *(v230 + 3) = "RuleStmt";
  *(v230 + 4) = 8;
  v230[40] = 2;
  v8();
  v231 = v1[14];
  v232 = (v677 + v3 + 79 * v2);
  *v232 = 80;
  v233 = v232 + v231;
  *v233 = "notify_stmt";
  *(v233 + 1) = 11;
  v233[16] = 2;
  *(v233 + 3) = "NotifyStmt";
  *(v233 + 4) = 10;
  v233[40] = 2;
  v8();
  v234 = v1[14];
  v235 = (v677 + v3 + 80 * v2);
  *v235 = 81;
  v236 = v235 + v234;
  *v236 = "listen_stmt";
  *(v236 + 1) = 11;
  v236[16] = 2;
  *(v236 + 3) = "ListenStmt";
  *(v236 + 4) = 10;
  v236[40] = 2;
  v8();
  v237 = v1[14];
  v238 = (v677 + v3 + 81 * v2);
  *v238 = 82;
  v239 = v238 + v237;
  *v239 = "unlisten_stmt";
  *(v239 + 1) = 13;
  v239[16] = 2;
  *(v239 + 3) = "UnlistenStmt";
  *(v239 + 4) = 12;
  v239[40] = 2;
  v8();
  v240 = v1[14];
  v241 = (v677 + v3 + 82 * v2);
  *v241 = 83;
  v242 = v241 + v240;
  *v242 = "transaction_stmt";
  *(v242 + 1) = 16;
  v242[16] = 2;
  *(v242 + 3) = "TransactionStmt";
  *(v242 + 4) = 15;
  v242[40] = 2;
  v8();
  v243 = v1[14];
  v244 = (v677 + v3 + 83 * v2);
  *v244 = 84;
  v245 = v244 + v243;
  *v245 = "view_stmt";
  *(v245 + 1) = 9;
  v245[16] = 2;
  *(v245 + 3) = "ViewStmt";
  *(v245 + 4) = 8;
  v245[40] = 2;
  v8();
  v246 = v1[14];
  v247 = (v677 + v3 + 84 * v2);
  *v247 = 85;
  v248 = v247 + v246;
  *v248 = "load_stmt";
  *(v248 + 1) = 9;
  v248[16] = 2;
  *(v248 + 3) = "LoadStmt";
  *(v248 + 4) = 8;
  v248[40] = 2;
  v8();
  v249 = v1[14];
  v250 = (v677 + v3 + 85 * v2);
  *v250 = 86;
  v251 = v250 + v249;
  *v251 = "create_domain_stmt";
  *(v251 + 1) = 18;
  v251[16] = 2;
  *(v251 + 3) = "CreateDomainStmt";
  *(v251 + 4) = 16;
  v251[40] = 2;
  v8();
  v252 = v1[14];
  v253 = (v677 + v3 + 86 * v2);
  *v253 = 87;
  v254 = v253 + v252;
  *v254 = "createdb_stmt";
  *(v254 + 1) = 13;
  v254[16] = 2;
  *(v254 + 3) = "CreatedbStmt";
  *(v254 + 4) = 12;
  v254[40] = 2;
  v8();
  v255 = v1[14];
  v256 = (v677 + v3 + 87 * v2);
  *v256 = 88;
  v257 = v256 + v255;
  *v257 = "dropdb_stmt";
  *(v257 + 1) = 11;
  v257[16] = 2;
  *(v257 + 3) = "DropdbStmt";
  *(v257 + 4) = 10;
  v257[40] = 2;
  v8();
  v258 = v1[14];
  v259 = (v677 + v3 + 88 * v2);
  *v259 = 89;
  v260 = v259 + v258;
  *v260 = "vacuum_stmt";
  *(v260 + 1) = 11;
  v260[16] = 2;
  *(v260 + 3) = "VacuumStmt";
  *(v260 + 4) = 10;
  v260[40] = 2;
  v8();
  v261 = v1[14];
  v262 = (v677 + v3 + 89 * v2);
  *v262 = 90;
  v263 = v262 + v261;
  *v263 = "explain_stmt";
  *(v263 + 1) = 12;
  v263[16] = 2;
  *(v263 + 3) = "ExplainStmt";
  *(v263 + 4) = 11;
  v263[40] = 2;
  v8();
  v264 = v1[14];
  v265 = (v677 + v3 + 90 * v2);
  *v265 = 91;
  v266 = v265 + v264;
  *v266 = "create_table_as_stmt";
  *(v266 + 1) = 20;
  v266[16] = 2;
  *(v266 + 3) = "CreateTableAsStmt";
  *(v266 + 4) = 17;
  v266[40] = 2;
  v8();
  v267 = v1[14];
  v268 = (v677 + v3 + 91 * v2);
  *v268 = 92;
  v269 = v268 + v267;
  *v269 = "create_seq_stmt";
  *(v269 + 1) = 15;
  v269[16] = 2;
  *(v269 + 3) = "CreateSeqStmt";
  *(v269 + 4) = 13;
  v269[40] = 2;
  v8();
  v270 = v1[14];
  v271 = (v677 + v3 + 92 * v2);
  *v271 = 93;
  v272 = v271 + v270;
  *v272 = "alter_seq_stmt";
  *(v272 + 1) = 14;
  v272[16] = 2;
  *(v272 + 3) = "AlterSeqStmt";
  *(v272 + 4) = 12;
  v272[40] = 2;
  v8();
  v273 = v1[14];
  v274 = (v677 + v3 + 93 * v2);
  *v274 = 94;
  v275 = v274 + v273;
  *v275 = "variable_set_stmt";
  *(v275 + 1) = 17;
  v275[16] = 2;
  *(v275 + 3) = "VariableSetStmt";
  *(v275 + 4) = 15;
  v275[40] = 2;
  v8();
  v276 = v1[14];
  v277 = (v677 + v3 + 94 * v2);
  *v277 = 95;
  v278 = v277 + v276;
  *v278 = "variable_show_stmt";
  *(v278 + 1) = 18;
  v278[16] = 2;
  *(v278 + 3) = "VariableShowStmt";
  *(v278 + 4) = 16;
  v278[40] = 2;
  v8();
  v279 = v1[14];
  v280 = (v677 + v3 + 95 * v2);
  *v280 = 96;
  v281 = v280 + v279;
  *v281 = "discard_stmt";
  *(v281 + 1) = 12;
  v281[16] = 2;
  *(v281 + 3) = "DiscardStmt";
  *(v281 + 4) = 11;
  v281[40] = 2;
  v8();
  v282 = v1[14];
  v283 = (v677 + v3 + 96 * v2);
  *v283 = 97;
  v284 = v283 + v282;
  *v284 = "create_trig_stmt";
  *(v284 + 1) = 16;
  v284[16] = 2;
  *(v284 + 3) = "CreateTrigStmt";
  *(v284 + 4) = 14;
  v284[40] = 2;
  v8();
  v285 = v1[14];
  v286 = (v677 + v3 + 97 * v2);
  *v286 = 98;
  v287 = v286 + v285;
  *v287 = "create_plang_stmt";
  *(v287 + 1) = 17;
  v287[16] = 2;
  *(v287 + 3) = "CreatePLangStmt";
  *(v287 + 4) = 15;
  v287[40] = 2;
  v8();
  v288 = v1[14];
  v289 = (v677 + v3 + 98 * v2);
  *v289 = 99;
  v290 = v289 + v288;
  *v290 = "create_role_stmt";
  *(v290 + 1) = 16;
  v290[16] = 2;
  *(v290 + 3) = "CreateRoleStmt";
  *(v290 + 4) = 14;
  v290[40] = 2;
  v8();
  v291 = v1[14];
  v292 = (v677 + v3 + 99 * v2);
  *v292 = 100;
  v293 = v292 + v291;
  *v293 = "alter_role_stmt";
  *(v293 + 1) = 15;
  v293[16] = 2;
  *(v293 + 3) = "AlterRoleStmt";
  *(v293 + 4) = 13;
  v293[40] = 2;
  v8();
  v294 = v1[14];
  v295 = (v677 + v3 + 100 * v2);
  *v295 = 101;
  v296 = v295 + v294;
  *v296 = "drop_role_stmt";
  *(v296 + 1) = 14;
  v296[16] = 2;
  *(v296 + 3) = "DropRoleStmt";
  *(v296 + 4) = 12;
  v296[40] = 2;
  v8();
  v297 = v1[14];
  v298 = (v677 + v3 + 101 * v2);
  *v298 = 102;
  v299 = v298 + v297;
  *v299 = "lock_stmt";
  *(v299 + 1) = 9;
  v299[16] = 2;
  *(v299 + 3) = "LockStmt";
  *(v299 + 4) = 8;
  v299[40] = 2;
  v8();
  v300 = v1[14];
  v301 = (v677 + v3 + 102 * v2);
  *v301 = 103;
  v302 = v301 + v300;
  *v302 = "constraints_set_stmt";
  *(v302 + 1) = 20;
  v302[16] = 2;
  *(v302 + 3) = "ConstraintsSetStmt";
  *(v302 + 4) = 18;
  v302[40] = 2;
  v8();
  v303 = v1[14];
  v304 = (v677 + v3 + 103 * v2);
  *v304 = 104;
  v305 = v304 + v303;
  *v305 = "reindex_stmt";
  *(v305 + 1) = 12;
  v305[16] = 2;
  *(v305 + 3) = "ReindexStmt";
  *(v305 + 4) = 11;
  v305[40] = 2;
  v8();
  v306 = v1[14];
  v307 = (v677 + v3 + 104 * v2);
  *v307 = 105;
  v308 = v307 + v306;
  *v308 = "check_point_stmt";
  *(v308 + 1) = 16;
  v308[16] = 2;
  *(v308 + 3) = "CheckPointStmt";
  *(v308 + 4) = 14;
  v308[40] = 2;
  v8();
  v309 = v1[14];
  v310 = (v677 + v3 + 105 * v2);
  *v310 = 106;
  v311 = v310 + v309;
  *v311 = "create_schema_stmt";
  *(v311 + 1) = 18;
  v311[16] = 2;
  *(v311 + 3) = "CreateSchemaStmt";
  *(v311 + 4) = 16;
  v311[40] = 2;
  v8();
  v312 = v1[14];
  v313 = (v677 + v3 + 106 * v2);
  *v313 = 107;
  v314 = v313 + v312;
  *v314 = "alter_database_stmt";
  *(v314 + 1) = 19;
  v314[16] = 2;
  *(v314 + 3) = "AlterDatabaseStmt";
  *(v314 + 4) = 17;
  v314[40] = 2;
  v8();
  v315 = v1[14];
  v316 = (v677 + v3 + 107 * v2);
  *v316 = 108;
  v317 = v316 + v315;
  *v317 = "alter_database_set_stmt";
  *(v317 + 1) = 23;
  v317[16] = 2;
  *(v317 + 3) = "AlterDatabaseSetStmt";
  *(v317 + 4) = 20;
  v317[40] = 2;
  v8();
  v318 = v1[14];
  v319 = (v677 + v3 + 108 * v2);
  *v319 = 109;
  v320 = v319 + v318;
  *v320 = "alter_role_set_stmt";
  *(v320 + 1) = 19;
  v320[16] = 2;
  *(v320 + 3) = "AlterRoleSetStmt";
  *(v320 + 4) = 16;
  v320[40] = 2;
  v8();
  v321 = v1[14];
  v322 = (v677 + v3 + 109 * v2);
  *v322 = 110;
  v323 = v322 + v321;
  *v323 = "create_conversion_stmt";
  *(v323 + 1) = 22;
  v323[16] = 2;
  *(v323 + 3) = "CreateConversionStmt";
  *(v323 + 4) = 20;
  v323[40] = 2;
  v8();
  v324 = v1[14];
  v325 = (v677 + v3 + 110 * v2);
  *v325 = 111;
  v326 = v325 + v324;
  *v326 = "create_cast_stmt";
  *(v326 + 1) = 16;
  v326[16] = 2;
  *(v326 + 3) = "CreateCastStmt";
  *(v326 + 4) = 14;
  v326[40] = 2;
  v8();
  v327 = v1[14];
  v328 = (v677 + v3 + 111 * v2);
  *v328 = 112;
  v329 = v328 + v327;
  *v329 = "create_op_class_stmt";
  *(v329 + 1) = 20;
  v329[16] = 2;
  *(v329 + 3) = "CreateOpClassStmt";
  *(v329 + 4) = 17;
  v329[40] = 2;
  v8();
  v330 = v1[14];
  v331 = (v677 + v3 + 112 * v2);
  *v331 = 113;
  v332 = v331 + v330;
  *v332 = "create_op_family_stmt";
  *(v332 + 1) = 21;
  v332[16] = 2;
  *(v332 + 3) = "CreateOpFamilyStmt";
  *(v332 + 4) = 18;
  v332[40] = 2;
  v8();
  v333 = v1[14];
  v334 = (v677 + v3 + 113 * v2);
  *v334 = 114;
  v335 = v334 + v333;
  *v335 = "alter_op_family_stmt";
  *(v335 + 1) = 20;
  v335[16] = 2;
  *(v335 + 3) = "AlterOpFamilyStmt";
  *(v335 + 4) = 17;
  v335[40] = 2;
  v8();
  v336 = v1[14];
  v337 = (v677 + v3 + 114 * v2);
  *v337 = 115;
  v338 = v337 + v336;
  *v338 = "prepare_stmt";
  *(v338 + 1) = 12;
  v338[16] = 2;
  *(v338 + 3) = "PrepareStmt";
  *(v338 + 4) = 11;
  v338[40] = 2;
  v8();
  v339 = v1[14];
  v340 = (v677 + v3 + 115 * v2);
  *v340 = 116;
  v341 = v340 + v339;
  *v341 = "execute_stmt";
  *(v341 + 1) = 12;
  v341[16] = 2;
  *(v341 + 3) = "ExecuteStmt";
  *(v341 + 4) = 11;
  v341[40] = 2;
  v8();
  v342 = v1[14];
  v343 = (v677 + v3 + 116 * v2);
  *v343 = 117;
  v344 = v343 + v342;
  *v344 = "deallocate_stmt";
  *(v344 + 1) = 15;
  v344[16] = 2;
  *(v344 + 3) = "DeallocateStmt";
  *(v344 + 4) = 14;
  v344[40] = 2;
  v8();
  v345 = v1[14];
  v346 = (v677 + v3 + 117 * v2);
  *v346 = 118;
  v347 = v346 + v345;
  *v347 = "declare_cursor_stmt";
  *(v347 + 1) = 19;
  v347[16] = 2;
  *(v347 + 3) = "DeclareCursorStmt";
  *(v347 + 4) = 17;
  v347[40] = 2;
  v8();
  v348 = v1[14];
  v349 = (v677 + v3 + 118 * v2);
  *v349 = 119;
  v350 = v349 + v348;
  *v350 = "create_table_space_stmt";
  *(v350 + 1) = 23;
  v350[16] = 2;
  *(v350 + 3) = "CreateTableSpaceStmt";
  *(v350 + 4) = 20;
  v350[40] = 2;
  v8();
  v351 = v1[14];
  v352 = (v677 + v3 + 119 * v2);
  *v352 = 120;
  v353 = v352 + v351;
  *v353 = "drop_table_space_stmt";
  *(v353 + 1) = 21;
  v353[16] = 2;
  *(v353 + 3) = "DropTableSpaceStmt";
  *(v353 + 4) = 18;
  v353[40] = 2;
  v8();
  v354 = v1[14];
  v355 = (v677 + v3 + 120 * v2);
  *v355 = 121;
  v356 = v355 + v354;
  *v356 = "alter_object_depends_stmt";
  *(v356 + 1) = 25;
  v356[16] = 2;
  *(v356 + 3) = "AlterObjectDependsStmt";
  *(v356 + 4) = 22;
  v356[40] = 2;
  v8();
  v357 = v1[14];
  v358 = (v677 + v3 + 121 * v2);
  *v358 = 122;
  v359 = v358 + v357;
  *v359 = "alter_object_schema_stmt";
  *(v359 + 1) = 24;
  v359[16] = 2;
  *(v359 + 3) = "AlterObjectSchemaStmt";
  *(v359 + 4) = 21;
  v359[40] = 2;
  v8();
  v360 = v1[14];
  v361 = (v677 + v3 + 122 * v2);
  *v361 = 123;
  v362 = v361 + v360;
  *v362 = "alter_owner_stmt";
  *(v362 + 1) = 16;
  v362[16] = 2;
  *(v362 + 3) = "AlterOwnerStmt";
  *(v362 + 4) = 14;
  v362[40] = 2;
  v8();
  v363 = v1[14];
  v364 = (v677 + v3 + 123 * v2);
  *v364 = 124;
  v365 = v364 + v363;
  *v365 = "alter_operator_stmt";
  *(v365 + 1) = 19;
  v365[16] = 2;
  *(v365 + 3) = "AlterOperatorStmt";
  *(v365 + 4) = 17;
  v365[40] = 2;
  v8();
  v366 = v1[14];
  v367 = (v677 + v3 + 124 * v2);
  *v367 = 125;
  v368 = v367 + v366;
  *v368 = "alter_type_stmt";
  *(v368 + 1) = 15;
  v368[16] = 2;
  *(v368 + 3) = "AlterTypeStmt";
  *(v368 + 4) = 13;
  v368[40] = 2;
  v8();
  v369 = v1[14];
  v370 = (v677 + v3 + 125 * v2);
  *v370 = 126;
  v371 = v370 + v369;
  *v371 = "drop_owned_stmt";
  *(v371 + 1) = 15;
  v371[16] = 2;
  *(v371 + 3) = "DropOwnedStmt";
  *(v371 + 4) = 13;
  v371[40] = 2;
  v8();
  v372 = v1[14];
  v373 = (v677 + v3 + 126 * v2);
  *v373 = 127;
  v374 = v373 + v372;
  *v374 = "reassign_owned_stmt";
  *(v374 + 1) = 19;
  v374[16] = 2;
  *(v374 + 3) = "ReassignOwnedStmt";
  *(v374 + 4) = 17;
  v374[40] = 2;
  v8();
  v375 = v1[14];
  v376 = (v677 + v3 + 127 * v2);
  *v376 = 128;
  v377 = v376 + v375;
  *v377 = "composite_type_stmt";
  *(v377 + 1) = 19;
  v377[16] = 2;
  *(v377 + 3) = "CompositeTypeStmt";
  *(v377 + 4) = 17;
  v377[40] = 2;
  v8();
  v378 = v677 + v3 + (v2 << 7) + v1[14];
  *(v4 + (v2 << 7)) = 129;
  *v378 = "create_enum_stmt";
  *(v378 + 8) = 16;
  *(v378 + 16) = 2;
  *(v378 + 24) = "CreateEnumStmt";
  *(v378 + 32) = 14;
  *(v378 + 40) = 2;
  v8();
  v379 = v1[14];
  v380 = (v677 + v3 + 129 * v2);
  *v380 = 130;
  v381 = v380 + v379;
  *v381 = "create_range_stmt";
  *(v381 + 1) = 17;
  v381[16] = 2;
  *(v381 + 3) = "CreateRangeStmt";
  *(v381 + 4) = 15;
  v381[40] = 2;
  v8();
  v382 = v1[14];
  v383 = (v677 + v3 + 130 * v2);
  *v383 = 131;
  v384 = v383 + v382;
  *v384 = "alter_enum_stmt";
  *(v384 + 1) = 15;
  v384[16] = 2;
  *(v384 + 3) = "AlterEnumStmt";
  *(v384 + 4) = 13;
  v384[40] = 2;
  v8();
  v385 = v1[14];
  v386 = (v677 + v3 + 131 * v2);
  *v386 = 132;
  v387 = v386 + v385;
  *v387 = "alter_tsdictionary_stmt";
  *(v387 + 1) = 23;
  v387[16] = 2;
  *(v387 + 3) = "AlterTSDictionaryStmt";
  *(v387 + 4) = 21;
  v387[40] = 2;
  v8();
  v388 = v1[14];
  v389 = (v677 + v3 + 132 * v2);
  *v389 = 133;
  v390 = v389 + v388;
  *v390 = "alter_tsconfiguration_stmt";
  *(v390 + 1) = 26;
  v390[16] = 2;
  *(v390 + 3) = "AlterTSConfigurationStmt";
  *(v390 + 4) = 24;
  v390[40] = 2;
  v8();
  v391 = v1[14];
  v392 = (v677 + v3 + 133 * v2);
  *v392 = 134;
  v393 = v392 + v391;
  *v393 = "create_fdw_stmt";
  *(v393 + 1) = 15;
  v393[16] = 2;
  *(v393 + 3) = "CreateFdwStmt";
  *(v393 + 4) = 13;
  v393[40] = 2;
  v8();
  v394 = v1[14];
  v395 = (v677 + v3 + 134 * v2);
  *v395 = 135;
  v396 = v395 + v394;
  *v396 = "alter_fdw_stmt";
  *(v396 + 1) = 14;
  v396[16] = 2;
  *(v396 + 3) = "AlterFdwStmt";
  *(v396 + 4) = 12;
  v396[40] = 2;
  v8();
  v397 = v1[14];
  v398 = (v677 + v3 + 135 * v2);
  *v398 = 136;
  v399 = v398 + v397;
  *v399 = "create_foreign_server_stmt";
  *(v399 + 1) = 26;
  v399[16] = 2;
  *(v399 + 3) = "CreateForeignServerStmt";
  *(v399 + 4) = 23;
  v399[40] = 2;
  v8();
  v400 = v1[14];
  v401 = (v677 + v3 + 136 * v2);
  *v401 = 137;
  v402 = v401 + v400;
  *v402 = "alter_foreign_server_stmt";
  *(v402 + 1) = 25;
  v402[16] = 2;
  *(v402 + 3) = "AlterForeignServerStmt";
  *(v402 + 4) = 22;
  v402[40] = 2;
  v8();
  v403 = v1[14];
  v404 = (v677 + v3 + 137 * v2);
  *v404 = 138;
  v405 = v404 + v403;
  *v405 = "create_user_mapping_stmt";
  *(v405 + 1) = 24;
  v405[16] = 2;
  *(v405 + 3) = "CreateUserMappingStmt";
  *(v405 + 4) = 21;
  v405[40] = 2;
  v8();
  v406 = v1[14];
  v407 = (v677 + v3 + 138 * v2);
  *v407 = 139;
  v408 = v407 + v406;
  *v408 = "alter_user_mapping_stmt";
  *(v408 + 1) = 23;
  v408[16] = 2;
  *(v408 + 3) = "AlterUserMappingStmt";
  *(v408 + 4) = 20;
  v408[40] = 2;
  v8();
  v409 = v1[14];
  v410 = (v677 + v3 + 139 * v2);
  *v410 = 140;
  v411 = v410 + v409;
  *v411 = "drop_user_mapping_stmt";
  *(v411 + 1) = 22;
  v411[16] = 2;
  *(v411 + 3) = "DropUserMappingStmt";
  *(v411 + 4) = 19;
  v411[40] = 2;
  v8();
  v412 = v1[14];
  v413 = (v677 + v3 + 140 * v2);
  *v413 = 141;
  v414 = v413 + v412;
  *v414 = "alter_table_space_options_stmt";
  *(v414 + 1) = 30;
  v414[16] = 2;
  *(v414 + 3) = "AlterTableSpaceOptionsStmt";
  *(v414 + 4) = 26;
  v414[40] = 2;
  v8();
  v415 = v1[14];
  v416 = (v677 + v3 + 141 * v2);
  *v416 = 142;
  v417 = v416 + v415;
  *v417 = "alter_table_move_all_stmt";
  *(v417 + 1) = 25;
  v417[16] = 2;
  *(v417 + 3) = "AlterTableMoveAllStmt";
  *(v417 + 4) = 21;
  v417[40] = 2;
  v8();
  v418 = v1[14];
  v419 = (v677 + v3 + 142 * v2);
  *v419 = 143;
  v420 = v419 + v418;
  *v420 = "sec_label_stmt";
  *(v420 + 1) = 14;
  v420[16] = 2;
  *(v420 + 3) = "SecLabelStmt";
  *(v420 + 4) = 12;
  v420[40] = 2;
  v8();
  v421 = v1[14];
  v422 = (v677 + v3 + 143 * v2);
  *v422 = 144;
  v423 = v422 + v421;
  *v423 = "create_foreign_table_stmt";
  *(v423 + 1) = 25;
  v423[16] = 2;
  *(v423 + 3) = "CreateForeignTableStmt";
  *(v423 + 4) = 22;
  v423[40] = 2;
  v8();
  v424 = v1[14];
  v425 = (v677 + v3 + 144 * v2);
  *v425 = 145;
  v426 = v425 + v424;
  *v426 = "import_foreign_schema_stmt";
  *(v426 + 1) = 26;
  v426[16] = 2;
  *(v426 + 3) = "ImportForeignSchemaStmt";
  *(v426 + 4) = 23;
  v426[40] = 2;
  v8();
  v427 = v1[14];
  v428 = (v677 + v3 + 145 * v2);
  *v428 = 146;
  v429 = v428 + v427;
  *v429 = "create_extension_stmt";
  *(v429 + 1) = 21;
  v429[16] = 2;
  *(v429 + 3) = "CreateExtensionStmt";
  *(v429 + 4) = 19;
  v429[40] = 2;
  v8();
  v430 = v1[14];
  v431 = (v677 + v3 + 146 * v2);
  *v431 = 147;
  v432 = v431 + v430;
  *v432 = "alter_extension_stmt";
  *(v432 + 1) = 20;
  v432[16] = 2;
  *(v432 + 3) = "AlterExtensionStmt";
  *(v432 + 4) = 18;
  v432[40] = 2;
  v8();
  v433 = v1[14];
  v434 = (v677 + v3 + 147 * v2);
  *v434 = 148;
  v435 = v434 + v433;
  *v435 = "alter_extension_contents_stmt";
  *(v435 + 1) = 29;
  v435[16] = 2;
  *(v435 + 3) = "AlterExtensionContentsStmt";
  *(v435 + 4) = 26;
  v435[40] = 2;
  v8();
  v436 = v1[14];
  v437 = (v677 + v3 + 148 * v2);
  *v437 = 149;
  v438 = v437 + v436;
  *v438 = "create_event_trig_stmt";
  *(v438 + 1) = 22;
  v438[16] = 2;
  *(v438 + 3) = "CreateEventTrigStmt";
  *(v438 + 4) = 19;
  v438[40] = 2;
  v8();
  v439 = v1[14];
  v440 = (v677 + v3 + 149 * v2);
  *v440 = 150;
  v441 = v440 + v439;
  *v441 = "alter_event_trig_stmt";
  *(v441 + 1) = 21;
  v441[16] = 2;
  *(v441 + 3) = "AlterEventTrigStmt";
  *(v441 + 4) = 18;
  v441[40] = 2;
  v8();
  v442 = v1[14];
  v443 = (v677 + v3 + 150 * v2);
  *v443 = 151;
  v444 = v443 + v442;
  *v444 = "refresh_mat_view_stmt";
  *(v444 + 1) = 21;
  v444[16] = 2;
  *(v444 + 3) = "RefreshMatViewStmt";
  *(v444 + 4) = 18;
  v444[40] = 2;
  v8();
  v445 = v1[14];
  v446 = (v677 + v3 + 151 * v2);
  *v446 = 152;
  v447 = v446 + v445;
  *v447 = "replica_identity_stmt";
  *(v447 + 1) = 21;
  v447[16] = 2;
  *(v447 + 3) = "ReplicaIdentityStmt";
  *(v447 + 4) = 19;
  v447[40] = 2;
  v8();
  v448 = v1[14];
  v449 = (v677 + v3 + 152 * v2);
  *v449 = 153;
  v450 = v449 + v448;
  *v450 = "alter_system_stmt";
  *(v450 + 1) = 17;
  v450[16] = 2;
  *(v450 + 3) = "AlterSystemStmt";
  *(v450 + 4) = 15;
  v450[40] = 2;
  v8();
  v451 = v1[14];
  v452 = (v677 + v3 + 153 * v2);
  *v452 = 154;
  v453 = v452 + v451;
  *v453 = "create_policy_stmt";
  *(v453 + 1) = 18;
  v453[16] = 2;
  *(v453 + 3) = "CreatePolicyStmt";
  *(v453 + 4) = 16;
  v453[40] = 2;
  v8();
  v454 = v1[14];
  v455 = (v677 + v3 + 154 * v2);
  *v455 = 155;
  v456 = v455 + v454;
  *v456 = "alter_policy_stmt";
  *(v456 + 1) = 17;
  v456[16] = 2;
  *(v456 + 3) = "AlterPolicyStmt";
  *(v456 + 4) = 15;
  v456[40] = 2;
  v8();
  v457 = v1[14];
  v458 = (v677 + v3 + 155 * v2);
  *v458 = 156;
  v459 = v458 + v457;
  *v459 = "create_transform_stmt";
  *(v459 + 1) = 21;
  v459[16] = 2;
  *(v459 + 3) = "CreateTransformStmt";
  *(v459 + 4) = 19;
  v459[40] = 2;
  v8();
  v460 = v1[14];
  v461 = (v677 + v3 + 156 * v2);
  *v461 = 157;
  v462 = v461 + v460;
  *v462 = "create_am_stmt";
  *(v462 + 1) = 14;
  v462[16] = 2;
  *(v462 + 3) = "CreateAmStmt";
  *(v462 + 4) = 12;
  v462[40] = 2;
  v8();
  v463 = v1[14];
  v464 = (v677 + v3 + 157 * v2);
  *v464 = 158;
  v465 = v464 + v463;
  *v465 = "create_publication_stmt";
  *(v465 + 1) = 23;
  v465[16] = 2;
  *(v465 + 3) = "CreatePublicationStmt";
  *(v465 + 4) = 21;
  v465[40] = 2;
  v8();
  v466 = v1[14];
  v467 = (v677 + v3 + 158 * v2);
  *v467 = 159;
  v468 = v467 + v466;
  *v468 = "alter_publication_stmt";
  *(v468 + 1) = 22;
  v468[16] = 2;
  *(v468 + 3) = "AlterPublicationStmt";
  *(v468 + 4) = 20;
  v468[40] = 2;
  v8();
  v469 = v1[14];
  v470 = (v677 + v3 + 159 * v2);
  *v470 = 160;
  v471 = v470 + v469;
  *v471 = "create_subscription_stmt";
  *(v471 + 1) = 24;
  v471[16] = 2;
  *(v471 + 3) = "CreateSubscriptionStmt";
  *(v471 + 4) = 22;
  v471[40] = 2;
  v8();
  v472 = v1[14];
  v473 = (v677 + v3 + 160 * v2);
  *v473 = 161;
  v474 = v473 + v472;
  *v474 = "alter_subscription_stmt";
  *(v474 + 1) = 23;
  v474[16] = 2;
  *(v474 + 3) = "AlterSubscriptionStmt";
  *(v474 + 4) = 21;
  v474[40] = 2;
  v8();
  v475 = v1[14];
  v476 = (v677 + v3 + 161 * v2);
  *v476 = 162;
  v477 = v476 + v475;
  *v477 = "drop_subscription_stmt";
  *(v477 + 1) = 22;
  v477[16] = 2;
  *(v477 + 3) = "DropSubscriptionStmt";
  *(v477 + 4) = 20;
  v477[40] = 2;
  v8();
  v478 = v1[14];
  v479 = (v677 + v3 + 162 * v2);
  *v479 = 163;
  v480 = v479 + v478;
  *v480 = "create_stats_stmt";
  *(v480 + 1) = 17;
  v480[16] = 2;
  *(v480 + 3) = "CreateStatsStmt";
  *(v480 + 4) = 15;
  v480[40] = 2;
  v8();
  v481 = v1[14];
  v482 = (v677 + v3 + 163 * v2);
  *v482 = 164;
  v483 = v482 + v481;
  *v483 = "alter_collation_stmt";
  *(v483 + 1) = 20;
  v483[16] = 2;
  *(v483 + 3) = "AlterCollationStmt";
  *(v483 + 4) = 18;
  v483[40] = 2;
  v8();
  v484 = v1[14];
  v485 = (v677 + v3 + 164 * v2);
  *v485 = 165;
  v486 = v485 + v484;
  *v486 = "call_stmt";
  *(v486 + 1) = 9;
  v486[16] = 2;
  *(v486 + 3) = "CallStmt";
  *(v486 + 4) = 8;
  v486[40] = 2;
  v8();
  v487 = v1[14];
  v488 = (v677 + v3 + 165 * v2);
  *v488 = 166;
  v489 = v488 + v487;
  *v489 = "alter_stats_stmt";
  *(v489 + 1) = 16;
  v489[16] = 2;
  *(v489 + 3) = "AlterStatsStmt";
  *(v489 + 4) = 14;
  v489[40] = 2;
  v8();
  v490 = v1[14];
  v491 = (v677 + v3 + 166 * v2);
  *v491 = 167;
  v492 = v491 + v490;
  *v492 = "a_expr";
  *(v492 + 1) = 6;
  v492[16] = 2;
  *(v492 + 3) = "A_Expr";
  *(v492 + 4) = 6;
  v492[40] = 2;
  v8();
  v493 = v1[14];
  v494 = (v677 + v3 + 167 * v2);
  *v494 = 168;
  v495 = v494 + v493;
  *v495 = "column_ref";
  *(v495 + 1) = 10;
  v495[16] = 2;
  *(v495 + 3) = "ColumnRef";
  *(v495 + 4) = 9;
  v495[40] = 2;
  v8();
  v496 = v1[14];
  v497 = (v677 + v3 + 168 * v2);
  *v497 = 169;
  v498 = v497 + v496;
  *v498 = "param_ref";
  *(v498 + 1) = 9;
  v498[16] = 2;
  *(v498 + 3) = "ParamRef";
  *(v498 + 4) = 8;
  v498[40] = 2;
  v8();
  v499 = v1[14];
  v500 = (v677 + v3 + 169 * v2);
  *v500 = 170;
  v501 = v500 + v499;
  *v501 = "a_const";
  *(v501 + 1) = 7;
  v501[16] = 2;
  *(v501 + 3) = "A_Const";
  *(v501 + 4) = 7;
  v501[40] = 2;
  v8();
  v502 = v1[14];
  v503 = (v677 + v3 + 170 * v2);
  *v503 = 171;
  v504 = v503 + v502;
  *v504 = "func_call";
  *(v504 + 1) = 9;
  v504[16] = 2;
  *(v504 + 3) = "FuncCall";
  *(v504 + 4) = 8;
  v504[40] = 2;
  v8();
  v505 = v1[14];
  v506 = (v677 + v3 + 171 * v2);
  *v506 = 172;
  v507 = v506 + v505;
  *v507 = "a_star";
  *(v507 + 1) = 6;
  v507[16] = 2;
  *(v507 + 3) = "A_Star";
  *(v507 + 4) = 6;
  v507[40] = 2;
  v8();
  v508 = v1[14];
  v509 = (v677 + v3 + 172 * v2);
  *v509 = 173;
  v510 = v509 + v508;
  *v510 = "a_indices";
  *(v510 + 1) = 9;
  v510[16] = 2;
  *(v510 + 3) = "A_Indices";
  *(v510 + 4) = 9;
  v510[40] = 2;
  v8();
  v511 = v1[14];
  v512 = (v677 + v3 + 173 * v2);
  *v512 = 174;
  v513 = v512 + v511;
  *v513 = "a_indirection";
  *(v513 + 1) = 13;
  v513[16] = 2;
  *(v513 + 3) = "A_Indirection";
  *(v513 + 4) = 13;
  v513[40] = 2;
  v8();
  v514 = v1[14];
  v515 = (v677 + v3 + 174 * v2);
  *v515 = 175;
  v516 = v515 + v514;
  *v516 = "a_array_expr";
  *(v516 + 1) = 12;
  v516[16] = 2;
  *(v516 + 3) = "A_ArrayExpr";
  *(v516 + 4) = 11;
  v516[40] = 2;
  v8();
  v517 = v1[14];
  v518 = (v677 + v3 + 175 * v2);
  *v518 = 176;
  v519 = v518 + v517;
  *v519 = "res_target";
  *(v519 + 1) = 10;
  v519[16] = 2;
  *(v519 + 3) = "ResTarget";
  *(v519 + 4) = 9;
  v519[40] = 2;
  v8();
  v520 = v1[14];
  v521 = (v677 + v3 + 176 * v2);
  *v521 = 177;
  v522 = v521 + v520;
  *v522 = "multi_assign_ref";
  *(v522 + 1) = 16;
  v522[16] = 2;
  *(v522 + 3) = "MultiAssignRef";
  *(v522 + 4) = 14;
  v522[40] = 2;
  v8();
  v523 = v1[14];
  v524 = (v677 + v3 + 177 * v2);
  *v524 = 178;
  v525 = v524 + v523;
  *v525 = "type_cast";
  *(v525 + 1) = 9;
  v525[16] = 2;
  *(v525 + 3) = "TypeCast";
  *(v525 + 4) = 8;
  v525[40] = 2;
  v8();
  v526 = v1[14];
  v527 = (v677 + v3 + 178 * v2);
  *v527 = 179;
  v528 = v527 + v526;
  *v528 = "collate_clause";
  *(v528 + 1) = 14;
  v528[16] = 2;
  *(v528 + 3) = "CollateClause";
  *(v528 + 4) = 13;
  v528[40] = 2;
  v8();
  v529 = v1[14];
  v530 = (v677 + v3 + 179 * v2);
  *v530 = 180;
  v531 = v530 + v529;
  *v531 = "sort_by";
  *(v531 + 1) = 7;
  v531[16] = 2;
  *(v531 + 3) = "SortBy";
  *(v531 + 4) = 6;
  v531[40] = 2;
  v8();
  v532 = v1[14];
  v533 = (v677 + v3 + 180 * v2);
  *v533 = 181;
  v534 = v533 + v532;
  *v534 = "window_def";
  *(v534 + 1) = 10;
  v534[16] = 2;
  *(v534 + 3) = "WindowDef";
  *(v534 + 4) = 9;
  v534[40] = 2;
  v8();
  v535 = v1[14];
  v536 = (v677 + v3 + 181 * v2);
  *v536 = 182;
  v537 = v536 + v535;
  *v537 = "range_subselect";
  *(v537 + 1) = 15;
  v537[16] = 2;
  *(v537 + 3) = "RangeSubselect";
  *(v537 + 4) = 14;
  v537[40] = 2;
  v8();
  v538 = v1[14];
  v539 = (v677 + v3 + 182 * v2);
  *v539 = 183;
  v540 = v539 + v538;
  *v540 = "range_function";
  *(v540 + 1) = 14;
  v540[16] = 2;
  *(v540 + 3) = "RangeFunction";
  *(v540 + 4) = 13;
  v540[40] = 2;
  v8();
  v541 = v1[14];
  v542 = (v677 + v3 + 183 * v2);
  *v542 = 184;
  v543 = v542 + v541;
  *v543 = "range_table_sample";
  *(v543 + 1) = 18;
  v543[16] = 2;
  *(v543 + 3) = "RangeTableSample";
  *(v543 + 4) = 16;
  v543[40] = 2;
  v8();
  v544 = v1[14];
  v545 = (v677 + v3 + 184 * v2);
  *v545 = 185;
  v546 = v545 + v544;
  *v546 = "range_table_func";
  *(v546 + 1) = 16;
  v546[16] = 2;
  *(v546 + 3) = "RangeTableFunc";
  *(v546 + 4) = 14;
  v546[40] = 2;
  v8();
  v547 = v1[14];
  v548 = (v677 + v3 + 185 * v2);
  *v548 = 186;
  v549 = v548 + v547;
  *v549 = "range_table_func_col";
  *(v549 + 1) = 20;
  v549[16] = 2;
  *(v549 + 3) = "RangeTableFuncCol";
  *(v549 + 4) = 17;
  v549[40] = 2;
  v8();
  v550 = v1[14];
  v551 = (v677 + v3 + 186 * v2);
  *v551 = 187;
  v552 = v551 + v550;
  *v552 = "type_name";
  *(v552 + 1) = 9;
  v552[16] = 2;
  *(v552 + 3) = "TypeName";
  *(v552 + 4) = 8;
  v552[40] = 2;
  v8();
  v553 = v1[14];
  v554 = (v677 + v3 + 187 * v2);
  *v554 = 188;
  v555 = v554 + v553;
  *v555 = "column_def";
  *(v555 + 1) = 10;
  v555[16] = 2;
  *(v555 + 3) = "ColumnDef";
  *(v555 + 4) = 9;
  v555[40] = 2;
  v8();
  v556 = v1[14];
  v557 = (v677 + v3 + 188 * v2);
  *v557 = 189;
  v558 = v557 + v556;
  *v558 = "index_elem";
  *(v558 + 1) = 10;
  v558[16] = 2;
  *(v558 + 3) = "IndexElem";
  *(v558 + 4) = 9;
  v558[40] = 2;
  v8();
  v559 = v1[14];
  v560 = (v677 + v3 + 189 * v2);
  *v560 = 190;
  v561 = v560 + v559;
  *v561 = "constraint";
  *(v561 + 1) = 10;
  v561[16] = 2;
  *(v561 + 3) = "Constraint";
  *(v561 + 4) = 10;
  v561[40] = 2;
  v8();
  v562 = v1[14];
  v563 = (v677 + v3 + 190 * v2);
  *v563 = 191;
  v564 = v563 + v562;
  *v564 = "def_elem";
  *(v564 + 1) = 8;
  v564[16] = 2;
  *(v564 + 3) = "DefElem";
  *(v564 + 4) = 7;
  v564[40] = 2;
  v8();
  v565 = v1[14];
  v566 = (v677 + v3 + 191 * v2);
  *v566 = 192;
  v567 = v566 + v565;
  *v567 = "range_tbl_entry";
  *(v567 + 1) = 15;
  v567[16] = 2;
  *(v567 + 3) = "RangeTblEntry";
  *(v567 + 4) = 13;
  v567[40] = 2;
  v8();
  v568 = v1[14];
  v569 = (v677 + v3 + 192 * v2);
  *v569 = 193;
  v570 = v569 + v568;
  *v570 = "range_tbl_function";
  *(v570 + 1) = 18;
  v570[16] = 2;
  *(v570 + 3) = "RangeTblFunction";
  *(v570 + 4) = 16;
  v570[40] = 2;
  v8();
  v571 = v1[14];
  v572 = (v677 + v3 + 193 * v2);
  *v572 = 194;
  v573 = v572 + v571;
  *v573 = "table_sample_clause";
  *(v573 + 1) = 19;
  v573[16] = 2;
  *(v573 + 3) = "TableSampleClause";
  *(v573 + 4) = 17;
  v573[40] = 2;
  v8();
  v574 = v1[14];
  v575 = (v677 + v3 + 194 * v2);
  *v575 = 195;
  v576 = v575 + v574;
  *v576 = "with_check_option";
  *(v576 + 1) = 17;
  v576[16] = 2;
  *(v576 + 3) = "WithCheckOption";
  *(v576 + 4) = 15;
  v576[40] = 2;
  v8();
  v577 = v1[14];
  v578 = (v677 + v3 + 195 * v2);
  *v578 = 196;
  v579 = v578 + v577;
  *v579 = "sort_group_clause";
  *(v579 + 1) = 17;
  v579[16] = 2;
  *(v579 + 3) = "SortGroupClause";
  *(v579 + 4) = 15;
  v579[40] = 2;
  v8();
  v580 = v1[14];
  v581 = (v677 + v3 + 196 * v2);
  *v581 = 197;
  v582 = v581 + v580;
  *v582 = "grouping_set";
  *(v582 + 1) = 12;
  v582[16] = 2;
  *(v582 + 3) = "GroupingSet";
  *(v582 + 4) = 11;
  v582[40] = 2;
  v8();
  v583 = v1[14];
  v584 = (v677 + v3 + 197 * v2);
  *v584 = 198;
  v585 = v584 + v583;
  *v585 = "window_clause";
  *(v585 + 1) = 13;
  v585[16] = 2;
  *(v585 + 3) = "WindowClause";
  *(v585 + 4) = 12;
  v585[40] = 2;
  v8();
  v586 = v1[14];
  v587 = (v677 + v3 + 198 * v2);
  *v587 = 199;
  v588 = v587 + v586;
  *v588 = "object_with_args";
  *(v588 + 1) = 16;
  v588[16] = 2;
  *(v588 + 3) = "ObjectWithArgs";
  *(v588 + 4) = 14;
  v588[40] = 2;
  v8();
  v589 = v1[14];
  v590 = (v677 + v3 + 199 * v2);
  *v590 = 200;
  v591 = v590 + v589;
  *v591 = "access_priv";
  *(v591 + 1) = 11;
  v591[16] = 2;
  *(v591 + 3) = "AccessPriv";
  *(v591 + 4) = 10;
  v591[40] = 2;
  v8();
  v592 = v1[14];
  v593 = (v677 + v3 + 200 * v2);
  *v593 = 201;
  v594 = v593 + v592;
  *v594 = "create_op_class_item";
  *(v594 + 1) = 20;
  v594[16] = 2;
  *(v594 + 3) = "CreateOpClassItem";
  *(v594 + 4) = 17;
  v594[40] = 2;
  v8();
  v595 = v1[14];
  v596 = (v677 + v3 + 201 * v2);
  *v596 = 202;
  v597 = v596 + v595;
  *v597 = "table_like_clause";
  *(v597 + 1) = 17;
  v597[16] = 2;
  *(v597 + 3) = "TableLikeClause";
  *(v597 + 4) = 15;
  v597[40] = 2;
  v8();
  v598 = v1[14];
  v599 = (v677 + v3 + 202 * v2);
  *v599 = 203;
  v600 = v599 + v598;
  *v600 = "function_parameter";
  *(v600 + 1) = 18;
  v600[16] = 2;
  *(v600 + 3) = "FunctionParameter";
  *(v600 + 4) = 17;
  v600[40] = 2;
  v8();
  v601 = v1[14];
  v602 = (v677 + v3 + 203 * v2);
  *v602 = 204;
  v603 = v602 + v601;
  *v603 = "locking_clause";
  *(v603 + 1) = 14;
  v603[16] = 2;
  *(v603 + 3) = "LockingClause";
  *(v603 + 4) = 13;
  v603[40] = 2;
  v8();
  v604 = v1[14];
  v605 = (v677 + v3 + 204 * v2);
  *v605 = 205;
  v606 = v605 + v604;
  *v606 = "row_mark_clause";
  *(v606 + 1) = 15;
  v606[16] = 2;
  *(v606 + 3) = "RowMarkClause";
  *(v606 + 4) = 13;
  v606[40] = 2;
  v8();
  v607 = v1[14];
  v608 = (v677 + v3 + 205 * v2);
  *v608 = 206;
  v609 = v608 + v607;
  *v609 = "xml_serialize";
  *(v609 + 1) = 13;
  v609[16] = 2;
  *(v609 + 3) = "XmlSerialize";
  *(v609 + 4) = 12;
  v609[40] = 2;
  v8();
  v610 = v1[14];
  v611 = (v677 + v3 + 206 * v2);
  *v611 = 207;
  v612 = v611 + v610;
  *v612 = "with_clause";
  *(v612 + 1) = 11;
  v612[16] = 2;
  *(v612 + 3) = "WithClause";
  *(v612 + 4) = 10;
  v612[40] = 2;
  v8();
  v613 = v1[14];
  v614 = (v677 + v3 + 207 * v2);
  *v614 = 208;
  v615 = v614 + v613;
  *v615 = "infer_clause";
  *(v615 + 1) = 12;
  v615[16] = 2;
  *(v615 + 3) = "InferClause";
  *(v615 + 4) = 11;
  v615[40] = 2;
  v8();
  v616 = v1[14];
  v617 = (v677 + v3 + 208 * v2);
  *v617 = 209;
  v618 = v617 + v616;
  *v618 = "on_conflict_clause";
  *(v618 + 1) = 18;
  v618[16] = 2;
  *(v618 + 3) = "OnConflictClause";
  *(v618 + 4) = 16;
  v618[40] = 2;
  v8();
  v619 = v1[14];
  v620 = (v677 + v3 + 209 * v2);
  *v620 = 210;
  v621 = v620 + v619;
  *v621 = "common_table_expr";
  *(v621 + 1) = 17;
  v621[16] = 2;
  *(v621 + 3) = "CommonTableExpr";
  *(v621 + 4) = 15;
  v621[40] = 2;
  v8();
  v622 = v1[14];
  v623 = (v677 + v3 + 210 * v2);
  *v623 = 211;
  v624 = v623 + v622;
  *v624 = "role_spec";
  *(v624 + 1) = 9;
  v624[16] = 2;
  *(v624 + 3) = "RoleSpec";
  *(v624 + 4) = 8;
  v624[40] = 2;
  v8();
  v625 = v1[14];
  v626 = (v677 + v3 + 211 * v2);
  *v626 = 212;
  v627 = v626 + v625;
  *v627 = "trigger_transition";
  *(v627 + 1) = 18;
  v627[16] = 2;
  *(v627 + 3) = "TriggerTransition";
  *(v627 + 4) = 17;
  v627[40] = 2;
  v8();
  v628 = v1[14];
  v629 = (v677 + v3 + 212 * v2);
  *v629 = 213;
  v630 = v629 + v628;
  *v630 = "partition_elem";
  *(v630 + 1) = 14;
  v630[16] = 2;
  *(v630 + 3) = "PartitionElem";
  *(v630 + 4) = 13;
  v630[40] = 2;
  v8();
  v631 = v1[14];
  v632 = (v677 + v3 + 213 * v2);
  *v632 = 214;
  v633 = v632 + v631;
  *v633 = "partition_spec";
  *(v633 + 1) = 14;
  v633[16] = 2;
  *(v633 + 3) = "PartitionSpec";
  *(v633 + 4) = 13;
  v633[40] = 2;
  v8();
  v634 = v1[14];
  v635 = (v677 + v3 + 214 * v2);
  *v635 = 215;
  v636 = v635 + v634;
  *v636 = "partition_bound_spec";
  *(v636 + 1) = 20;
  v636[16] = 2;
  *(v636 + 3) = "PartitionBoundSpec";
  *(v636 + 4) = 18;
  v636[40] = 2;
  v8();
  v637 = v1[14];
  v638 = (v677 + v3 + 215 * v2);
  *v638 = 216;
  v639 = v638 + v637;
  *v639 = "partition_range_datum";
  *(v639 + 1) = 21;
  v639[16] = 2;
  *(v639 + 3) = "PartitionRangeDatum";
  *(v639 + 4) = 19;
  v639[40] = 2;
  v8();
  v640 = v1[14];
  v641 = (v677 + v3 + 216 * v2);
  *v641 = 217;
  v642 = v641 + v640;
  *v642 = "partition_cmd";
  *(v642 + 1) = 13;
  v642[16] = 2;
  *(v642 + 3) = "PartitionCmd";
  *(v642 + 4) = 12;
  v642[40] = 2;
  v8();
  v643 = v1[14];
  v644 = (v677 + v3 + 217 * v2);
  *v644 = 218;
  v645 = v644 + v643;
  *v645 = "vacuum_relation";
  *(v645 + 1) = 15;
  v645[16] = 2;
  *(v645 + 3) = "VacuumRelation";
  *(v645 + 4) = 14;
  v645[40] = 2;
  v8();
  v646 = v1[14];
  v647 = (v677 + v3 + 218 * v2);
  *v647 = 219;
  v648 = v647 + v646;
  *v648 = "inline_code_block";
  *(v648 + 1) = 17;
  v648[16] = 2;
  *(v648 + 3) = "InlineCodeBlock";
  *(v648 + 4) = 15;
  v648[40] = 2;
  v8();
  v649 = v1[14];
  v650 = (v677 + v3 + 219 * v2);
  *v650 = 220;
  v651 = v650 + v649;
  *v651 = "call_context";
  *(v651 + 1) = 12;
  v651[16] = 2;
  *(v651 + 3) = "CallContext";
  *(v651 + 4) = 11;
  v651[40] = 2;
  v8();
  v652 = v1[14];
  v653 = (v677 + v3 + 220 * v2);
  *v653 = 221;
  v654 = v653 + v652;
  *v654 = "integer";
  *(v654 + 1) = 7;
  v654[16] = 2;
  *(v654 + 3) = "Integer";
  *(v654 + 4) = 7;
  v654[40] = 2;
  v8();
  v655 = v1[14];
  v656 = (v677 + v3 + 221 * v2);
  *v656 = 222;
  v657 = v656 + v655;
  *v657 = "float";
  *(v657 + 1) = 5;
  v657[16] = 2;
  *(v657 + 3) = "Float";
  *(v657 + 4) = 5;
  v657[40] = 2;
  v8();
  v658 = v1[14];
  v659 = (v677 + v3 + 222 * v2);
  *v659 = 223;
  v660 = v659 + v658;
  *v660 = "string";
  *(v660 + 1) = 6;
  v660[16] = 2;
  *(v660 + 3) = "String";
  *(v660 + 4) = 6;
  v660[40] = 2;
  v8();
  v661 = v1[14];
  v662 = (v677 + v3 + 223 * v2);
  *v662 = 224;
  v663 = v662 + v661;
  *v663 = "bit_string";
  *(v663 + 1) = 10;
  v663[16] = 2;
  *(v663 + 3) = "BitString";
  *(v663 + 4) = 9;
  v663[40] = 2;
  v8();
  v664 = v1[14];
  v665 = (v677 + v3 + 224 * v2);
  *v665 = 225;
  v666 = v665 + v664;
  *v666 = "null";
  *(v666 + 1) = 4;
  v666[16] = 2;
  *(v666 + 3) = "Null";
  *(v666 + 4) = 4;
  v666[40] = 2;
  v8();
  v667 = v1[14];
  v668 = (v677 + v3 + 225 * v2);
  *v668 = 226;
  v669 = v668 + v667;
  *v669 = "list";
  *(v669 + 1) = 4;
  v669[16] = 2;
  *(v669 + 3) = "List";
  *(v669 + 4) = 4;
  v669[40] = 2;
  v8();
  v670 = v1[14];
  v671 = (v677 + v3 + 226 * v2);
  *v671 = 227;
  v672 = v671 + v670;
  *v672 = "int_list";
  *(v672 + 1) = 8;
  v672[16] = 2;
  *(v672 + 3) = "IntList";
  *(v672 + 4) = 7;
  v672[40] = 2;
  v8();
  v673 = v1[14];
  v674 = (v677 + v3 + 227 * v2);
  *v674 = 228;
  v675 = v674 + v673;
  *v675 = "oid_list";
  *(v675 + 1) = 8;
  v675[16] = 2;
  *(v675 + 3) = "OidList";
  *(v675 + 4) = 7;
  v675[40] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_Alias._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_Alias._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29A90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "aliasname";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "colnames";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_RangeVar._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_RangeVar._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_184D2AA80;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "catalogname";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "schemaname";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "relname";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "inh";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "relpersistence";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "alias";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "location";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_TableFunc._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_TableFunc._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_184D2AB00;
  v4 = v32 + v3;
  v5 = v32 + v3 + v1[14];
  *(v32 + v3) = 1;
  *v5 = "ns_uris";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "ns_names";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "docexpr";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "rowexpr";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "colnames";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "coltypes";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "coltypmods";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "colcollations";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "colexprs";
  *(v22 + 8) = 8;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "coldefexprs";
  *(v24 + 1) = 11;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "notnulls";
  *(v26 + 1) = 8;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "ordinalitycol";
  *(v28 + 1) = 13;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "location";
  *(v30 + 1) = 8;
  v30[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_Var._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_Var._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_184D2AA50;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "xpr";
  *(v5 + 8) = 3;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v26 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "varno";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v26 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "varattno";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v26 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "vartype";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = (v26 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "vartypmod";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v8();
  v16 = (v26 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "varcollid";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v26 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "varlevelsup";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v26 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "varnosyn";
  *(v21 + 1) = 8;
  v21[16] = 2;
  v8();
  v22 = v26 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "varattnosyn";
  *(v22 + 8) = 11;
  *(v22 + 16) = 2;
  v8();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "location";
  *(v24 + 1) = 8;
  v24[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_Param._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_Param._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_184D2AA80;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "xpr";
  *(v4 + 8) = 3;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "paramkind";
  *(v8 + 8) = 9;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "paramid";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "paramtype";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "paramtypmod";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "paramcollid";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "location";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_Aggref._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_Aggref._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_184D2AB10;
  v4 = v41 + v3;
  v5 = v41 + v3 + v1[14];
  *(v41 + v3) = 1;
  *v5 = "xpr";
  *(v5 + 8) = 3;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v41 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "aggfnoid";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v41 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "aggtype";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v41 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "aggcollid";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v41 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "inputcollid";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v41 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "aggtranstype";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v41 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "aggargtypes";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v41 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "aggdirectargs";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = v41 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "args";
  *(v22 + 8) = 4;
  *(v22 + 16) = 2;
  v8();
  v23 = (v41 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "aggorder";
  *(v24 + 1) = 8;
  v24[16] = 2;
  v8();
  v25 = (v41 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "aggdistinct";
  *(v26 + 1) = 11;
  v26[16] = 2;
  v8();
  v27 = (v41 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "aggfilter";
  *(v28 + 1) = 9;
  v28[16] = 2;
  v8();
  v29 = (v41 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "aggstar";
  *(v30 + 1) = 7;
  v30[16] = 2;
  v8();
  v31 = (v41 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "aggvariadic";
  *(v32 + 1) = 11;
  v32[16] = 2;
  v8();
  v33 = (v41 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "aggkind";
  *(v34 + 1) = 7;
  v34[16] = 2;
  v8();
  v35 = (v41 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "agglevelsup";
  *(v36 + 1) = 11;
  v36[16] = 2;
  v8();
  v37 = v41 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "aggsplit";
  *(v37 + 8) = 8;
  *(v37 + 16) = 2;
  v8();
  v38 = (v41 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "location";
  *(v39 + 1) = 8;
  v39[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_GroupingFunc._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_GroupingFunc._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_184D2AA20;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "xpr";
  *(v4 + 8) = 3;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "args";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "refs";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "cols";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "agglevelsup";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "location";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_WindowFunc._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_WindowFunc._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_184D2AAA0;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v5 = "xpr";
  *(v5 + 8) = 3;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "winfnoid";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "wintype";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "wincollid";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "inputcollid";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "args";
  *(v17 + 1) = 4;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "aggfilter";
  *(v19 + 1) = 9;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "winref";
  *(v21 + 1) = 6;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "winstar";
  *(v22 + 8) = 7;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "winagg";
  *(v24 + 1) = 6;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "location";
  *(v26 + 1) = 8;
  v26[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_SubscriptingRef._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_SubscriptingRef._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_184D2AAB0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "xpr";
  *(v5 + 8) = 3;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "refcontainertype";
  *(v9 + 8) = 16;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "refelemtype";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "reftypmod";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "refcollid";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "refupperindexpr";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "reflowerindexpr";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "refexpr";
  *(v21 + 1) = 7;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "refassgnexpr";
  *(v22 + 8) = 12;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_FuncExpr._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_FuncExpr._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_184D2AA50;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "xpr";
  *(v5 + 8) = 3;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "funcid";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "funcresulttype";
  *(v11 + 1) = 14;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "funcretset";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "funcvariadic";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "funcformat";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "funccollid";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "inputcollid";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "args";
  *(v22 + 8) = 4;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "location";
  *(v24 + 1) = 8;
  v24[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_NamedArgExpr._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_NamedArgExpr._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_184D2AA30;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "xpr";
  *(v5 + 8) = 3;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "arg";
  *(v9 + 8) = 3;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "name";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "argnumber";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "location";
  *(v14 + 8) = 8;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_OpExpr._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_OpExpr._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_184D2AAB0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "xpr";
  *(v5 + 8) = 3;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "opno";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "opfuncid";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "opresulttype";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "opretset";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "opcollid";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "inputcollid";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "args";
  *(v21 + 1) = 4;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "location";
  *(v22 + 8) = 8;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_DistinctExpr._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_DistinctExpr._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_184D2AAB0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "xpr";
  *(v5 + 8) = 3;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "opno";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "opfuncid";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "opresulttype";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "opretset";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "opcollid";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "inputcollid";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "args";
  *(v21 + 1) = 4;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "location";
  *(v22 + 8) = 8;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_NullIfExpr._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_NullIfExpr._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_184D2AAB0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "xpr";
  *(v5 + 8) = 3;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "opno";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "opfuncid";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "opresulttype";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "opretset";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "opcollid";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "inputcollid";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "args";
  *(v21 + 1) = 4;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "location";
  *(v22 + 8) = 8;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_ScalarArrayOpExpr._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_ScalarArrayOpExpr._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_184D2AA80;
  v4 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v4 = "xpr";
  *(v4 + 8) = 3;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v21 + v3 + v2 + v1[14];
  *(v21 + v3 + v2) = 2;
  *v8 = "opno";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v7();
  v9 = (v21 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "opfuncid";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v21 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "use_or";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v7();
  v14 = (v21 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "inputcollid";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v7();
  v16 = (v21 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "args";
  *(v17 + 1) = 4;
  v17[16] = 2;
  v7();
  v18 = (v21 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "location";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_BoolExpr._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_BoolExpr._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "xpr";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "BOOLop";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "args";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "location";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_SubLink._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_SubLink._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_184D2AA80;
  v4 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v4 = "xpr";
  *(v4 + 8) = 3;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v21 + v3 + v2 + v1[14];
  *(v21 + v3 + v2) = 2;
  *v8 = "sub_link_type";
  *(v8 + 8) = 13;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADE8];
  v7();
  v10 = (v21 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "sub_link_id";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v7();
  v12 = (v21 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "testexpr";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v7();
  v14 = (v21 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "oper_name";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v7();
  v16 = (v21 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "subselect";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v7();
  v18 = (v21 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "location";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_SubPlan._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_SubPlan._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_184D2AA40;
  v4 = v40 + v3;
  v5 = v40 + v3 + v1[14];
  *(v40 + v3) = 1;
  *v5 = "xpr";
  *(v5 + 8) = 3;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "sub_link_type";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x1E69AADE8];
  v8();
  v11 = (v4 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "testexpr";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "param_ids";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "plan_id";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "plan_name";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "first_col_type";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "first_col_typmod";
  *(v22 + 1) = 16;
  v22[16] = 2;
  v8();
  v23 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v23 = "first_col_collation";
  *(v23 + 8) = 19;
  *(v23 + 16) = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "use_hash_table";
  *(v25 + 1) = 14;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "unknown_eq_false";
  *(v27 + 1) = 16;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "parallel_safe";
  *(v29 + 1) = 13;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "set_param";
  *(v31 + 1) = 9;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "par_param";
  *(v33 + 1) = 9;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "args";
  *(v35 + 1) = 4;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "startup_cost";
  *(v37 + 1) = 12;
  v37[16] = 2;
  v8();
  v38 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v38 = "per_call_cost";
  *(v38 + 8) = 13;
  *(v38 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_AlternativeSubPlan._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_AlternativeSubPlan._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29A90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "xpr";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "subplans";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_FieldSelect._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_FieldSelect._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_184D2AA20;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "xpr";
  *(v4 + 8) = 3;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "arg";
  *(v8 + 8) = 3;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "fieldnum";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "resulttype";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "resulttypmod";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "resultcollid";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_FieldStore._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_FieldStore._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "xpr";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "arg";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "newvals";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "fieldnums";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "resulttype";
  *(v15 + 8) = 10;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_RelabelType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_RelabelType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_184D2AA80;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "xpr";
  *(v4 + 8) = 3;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "arg";
  *(v8 + 8) = 3;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "resulttype";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "resulttypmod";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "resultcollid";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "relabelformat";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "location";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CoerceViaIO._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CoerceViaIO._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_184D2AA20;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "xpr";
  *(v4 + 8) = 3;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "arg";
  *(v8 + 8) = 3;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "resulttype";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "resultcollid";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "coerceformat";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "location";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_ArrayCoerceExpr._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_ArrayCoerceExpr._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_184D2AAD0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "xpr";
  *(v5 + 8) = 3;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "arg";
  *(v9 + 8) = 3;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "elemexpr";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "resulttype";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "resulttypmod";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "resultcollid";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "coerceformat";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "location";
  *(v21 + 1) = 8;
  v21[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_ConvertRowtypeExpr._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_ConvertRowtypeExpr._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "xpr";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "arg";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "resulttype";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "convertformat";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "location";
  *(v15 + 8) = 8;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CollateExpr._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CollateExpr._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "xpr";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "arg";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "coll_oid";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "location";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CaseExpr._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CaseExpr._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_184D2AA80;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "xpr";
  *(v4 + 8) = 3;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "casetype";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "casecollid";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "arg";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "args";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "defresult";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "location";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CaseWhen._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CaseWhen._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "xpr";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "expr";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "result";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "location";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CaseTestExpr._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CaseTestExpr._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "xpr";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type_id";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "type_mod";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "collation";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_ArrayExpr._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_ArrayExpr._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_184D2AA80;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "xpr";
  *(v4 + 8) = 3;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "array_typeid";
  *(v8 + 8) = 12;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "array_collid";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "element_typeid";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "elements";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "multidims";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "location";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_RowExpr._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_RowExpr._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_184D2AA20;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "xpr";
  *(v4 + 8) = 3;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "args";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "row_typeid";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "row_format";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "colnames";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "location";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_RowCompareExpr._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_RowCompareExpr._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_184D2AA80;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "xpr";
  *(v4 + 8) = 3;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "rctype";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "opnos";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "opfamilies";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "inputcollids";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "largs";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "rargs";
  *(v18 + 1) = 5;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CoalesceExpr._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CoalesceExpr._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "xpr";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "coalescetype";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "coalescecollid";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "args";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "location";
  *(v15 + 8) = 8;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_MinMaxExpr._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_MinMaxExpr._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "xpr";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "minmaxtype";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "minmaxcollid";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "inputcollid";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "op";
  *(v16 + 1) = 2;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "args";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "location";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_SQLValueFunction._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_SQLValueFunction._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_184D2AA30;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "xpr";
  *(v5 + 8) = 3;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "op";
  *(v9 + 8) = 2;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "type";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "typmod";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "location";
  *(v14 + 8) = 8;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_XmlExpr._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_XmlExpr._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_184D2AA50;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "xpr";
  *(v5 + 8) = 3;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "op";
  *(v9 + 8) = 2;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "name";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "named_args";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "arg_names";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "args";
  *(v17 + 1) = 4;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "xmloption";
  *(v19 + 1) = 9;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "type";
  *(v21 + 1) = 4;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "typmod";
  *(v22 + 8) = 6;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "location";
  *(v24 + 1) = 8;
  v24[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_NullTest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_NullTest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "xpr";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "arg";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "nulltesttype";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "argisrow";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "location";
  *(v15 + 8) = 8;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_BooleanTest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_BooleanTest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "xpr";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "arg";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "BOOLtesttype";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "location";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CoerceToDomain._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CoerceToDomain._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_184D2AA80;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "xpr";
  *(v4 + 8) = 3;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "arg";
  *(v8 + 8) = 3;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "resulttype";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "resulttypmod";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "resultcollid";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "coercionformat";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "location";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CurrentOfExpr._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CurrentOfExpr._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "xpr";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cvarno";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "cursor_name";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "cursor_param";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_NextValueExpr._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_NextValueExpr._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "xpr";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "seqid";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "type_id";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x1E69AADE8];
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_InferenceElem._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_InferenceElem._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "xpr";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "expr";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "infercollid";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "inferopclass";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_TargetEntry._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_TargetEntry._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_184D2AAD0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "xpr";
  *(v5 + 8) = 3;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "expr";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "resno";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "resname";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "ressortgroupref";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "resorigtbl";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "resorigcol";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "resjunk";
  *(v21 + 1) = 7;
  v21[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_JoinExpr._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_JoinExpr._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_184D2AAD0;
  v4 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v4 = "jointype";
  *(v4 + 8) = 8;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v23 + v3 + v2 + v1[14];
  *(v23 + v3 + v2) = 2;
  *v8 = "is_natural";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADE8];
  v7();
  v10 = (v23 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "larg";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v7();
  v12 = (v23 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "rarg";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v7();
  v14 = (v23 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "using_clause";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v7();
  v16 = (v23 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "quals";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v7();
  v18 = (v23 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "alias";
  *(v19 + 1) = 5;
  v19[16] = 2;
  v7();
  v20 = (v23 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "rtindex";
  *(v21 + 1) = 7;
  v21[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_FromExpr._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_FromExpr._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29A90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "fromlist";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "quals";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_OnConflictExpr._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_OnConflictExpr._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_184D2AAD0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "action";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "arbiter_elems";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x1E69AADE8];
  v8();
  v11 = (v4 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "arbiter_where";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "constraint";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "on_conflict_set";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "on_conflict_where";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "excl_rel_index";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "excl_rel_tlist";
  *(v22 + 1) = 14;
  v22[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_IntoClause._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_IntoClause._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_184D2AAD0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "rel";
  *(v5 + 8) = 3;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "col_names";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x1E69AADE8];
  v8();
  v11 = (v4 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "access_method";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "options";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "on_commit";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "table_space_name";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "view_query";
  *(v20 + 1) = 10;
  v20[16] = 2;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "skip_data";
  *(v22 + 1) = 9;
  v22[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_RawStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_RawStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "stmt";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "stmt_location";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "stmt_len";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_Query._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_Query._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_184D2AB20;
  v4 = v78 + v3;
  v5 = v78 + v3 + v1[14];
  *(v78 + v3) = 1;
  *v5 = "command_type";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v78 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "query_source";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v78 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "can_set_tag";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v78 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "utility_stmt";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v78 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "result_relation";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v8();
  v16 = (v78 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "has_aggs";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v78 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "has_window_funcs";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v8();
  v20 = (v78 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "has_target_srfs";
  *(v21 + 1) = 15;
  v21[16] = 2;
  *(v21 + 3) = "hasTargetSRFs";
  *(v21 + 4) = 13;
  v21[40] = 2;
  v22 = *MEMORY[0x1E69AADD8];
  v8();
  v23 = v78 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v23 = "has_sub_links";
  *(v23 + 8) = 13;
  *(v23 + 16) = 2;
  v8();
  v24 = (v78 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "has_distinct_on";
  *(v25 + 1) = 15;
  v25[16] = 2;
  v8();
  v26 = (v78 + v3 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "has_recursive";
  *(v27 + 1) = 13;
  v27[16] = 2;
  v8();
  v28 = v1[14];
  v29 = (v78 + v3 + 11 * v2);
  *v29 = 12;
  v30 = v29 + v28;
  *v30 = "has_modifying_cte";
  *(v30 + 1) = 17;
  v30[16] = 2;
  *(v30 + 3) = "hasModifyingCTE";
  *(v30 + 4) = 15;
  v30[40] = 2;
  v8();
  v31 = (v78 + v3 + 12 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "has_for_update";
  *(v32 + 1) = 14;
  v32[16] = 2;
  v8();
  v33 = (v78 + v3 + 13 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "has_row_security";
  *(v34 + 1) = 16;
  v34[16] = 2;
  v8();
  v35 = (v78 + v3 + 14 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "cte_list";
  *(v36 + 1) = 8;
  v36[16] = 2;
  v8();
  v37 = (v78 + v3 + 15 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "rtable";
  *(v38 + 1) = 6;
  v38[16] = 2;
  LODWORD(v22) = *MEMORY[0x1E69AADC8];
  v8();
  v39 = v78 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v39 = "jointree";
  *(v39 + 8) = 8;
  *(v39 + 16) = 2;
  v8();
  v40 = (v78 + v3 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "target_list";
  *(v41 + 1) = 11;
  v41[16] = 2;
  v8();
  v42 = (v78 + v3 + 18 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "override";
  *(v43 + 1) = 8;
  v43[16] = 2;
  v8();
  v44 = (v78 + v3 + 19 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "on_conflict";
  *(v45 + 1) = 11;
  v45[16] = 2;
  v8();
  v46 = (v78 + v3 + 20 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "returning_list";
  *(v47 + 1) = 14;
  v47[16] = 2;
  v8();
  v48 = (v78 + v3 + 21 * v2);
  v49 = v48 + v1[14];
  *v48 = 22;
  *v49 = "group_clause";
  *(v49 + 1) = 12;
  v49[16] = 2;
  v8();
  v50 = (v78 + v3 + 22 * v2);
  v51 = v50 + v1[14];
  *v50 = 23;
  *v51 = "grouping_sets";
  *(v51 + 1) = 13;
  v51[16] = 2;
  v8();
  v52 = (v78 + v3 + 23 * v2);
  v53 = v52 + v1[14];
  *v52 = 24;
  *v53 = "having_qual";
  *(v53 + 1) = 11;
  v53[16] = 2;
  v8();
  v54 = (v78 + v3 + 24 * v2);
  v55 = v54 + v1[14];
  *v54 = 25;
  *v55 = "window_clause";
  *(v55 + 1) = 13;
  v55[16] = 2;
  v8();
  v56 = (v78 + v3 + 25 * v2);
  v57 = v56 + v1[14];
  *v56 = 26;
  *v57 = "distinct_clause";
  *(v57 + 1) = 15;
  v57[16] = 2;
  v8();
  v58 = (v78 + v3 + 26 * v2);
  v59 = v58 + v1[14];
  *v58 = 27;
  *v59 = "sort_clause";
  *(v59 + 1) = 11;
  v59[16] = 2;
  v8();
  v60 = (v78 + v3 + 27 * v2);
  v61 = v60 + v1[14];
  *v60 = 28;
  *v61 = "limit_offset";
  *(v61 + 1) = 12;
  v61[16] = 2;
  v8();
  v62 = (v78 + v3 + 28 * v2);
  v63 = v62 + v1[14];
  *v62 = 29;
  *v63 = "limit_count";
  *(v63 + 1) = 11;
  v63[16] = 2;
  v8();
  v64 = (v78 + v3 + 29 * v2);
  v65 = v64 + v1[14];
  *v64 = 30;
  *v65 = "limit_option";
  *(v65 + 1) = 12;
  v65[16] = 2;
  v8();
  v66 = (v78 + v3 + 30 * v2);
  v67 = v66 + v1[14];
  *v66 = 31;
  *v67 = "row_marks";
  *(v67 + 1) = 9;
  v67[16] = 2;
  v8();
  v68 = (v78 + v3 + 31 * v2);
  v69 = v68 + v1[14];
  *v68 = 32;
  *v69 = "set_operations";
  *(v69 + 1) = 14;
  v69[16] = 2;
  v8();
  v70 = v78 + v3 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 33;
  *v70 = "constraint_deps";
  *(v70 + 8) = 15;
  *(v70 + 16) = 2;
  v8();
  v71 = (v78 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 34;
  *v72 = "with_check_options";
  *(v72 + 1) = 18;
  v72[16] = 2;
  v8();
  v73 = (v78 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 35;
  *v74 = "stmt_location";
  *(v74 + 1) = 13;
  v74[16] = 2;
  v8();
  v75 = (v78 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 36;
  *v76 = "stmt_len";
  *(v76 + 1) = 8;
  v76[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_InsertStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_InsertStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_184D2AA80;
  v4 = v22 + v3;
  v5 = v22 + v3 + v1[14];
  *(v22 + v3) = 1;
  *v5 = "relation";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "cols";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "select_stmt";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v12 = *MEMORY[0x1E69AADE8];
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "on_conflict_clause";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "returning_list";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "with_clause";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "override";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_DeleteStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_DeleteStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_184D2AA30;
  v4 = v17 + v3;
  v5 = v17 + v3 + v1[14];
  *(v17 + v3) = 1;
  *v5 = "relation";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "using_clause";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x1E69AADE8];
  v8();
  v11 = (v4 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "where_clause";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "returning_list";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v8();
  v15 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v15 = "with_clause";
  *(v15 + 8) = 11;
  *(v15 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_UpdateStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_UpdateStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "relation";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "target_list";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "where_clause";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "from_clause";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "returning_list";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "with_clause";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_SelectStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_SelectStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_184D2A670;
  v4 = v44 + v3;
  v5 = v44 + v3 + v1[14];
  *(v44 + v3) = 1;
  *v5 = "distinct_clause";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v44 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "into_clause";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v44 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "target_list";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v44 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "from_clause";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = (v44 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "where_clause";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v44 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "group_clause";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v44 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "having_clause";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v8();
  v20 = (v44 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "window_clause";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = v44 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "values_lists";
  *(v22 + 8) = 12;
  *(v22 + 16) = 2;
  v8();
  v23 = (v44 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "sort_clause";
  *(v24 + 1) = 11;
  v24[16] = 2;
  v8();
  v25 = (v44 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "limit_offset";
  *(v26 + 1) = 12;
  v26[16] = 2;
  v8();
  v27 = (v44 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "limit_count";
  *(v28 + 1) = 11;
  v28[16] = 2;
  v8();
  v29 = (v44 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "limit_option";
  *(v30 + 1) = 12;
  v30[16] = 2;
  v8();
  v31 = (v44 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "locking_clause";
  *(v32 + 1) = 14;
  v32[16] = 2;
  v8();
  v33 = (v44 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "with_clause";
  *(v34 + 1) = 11;
  v34[16] = 2;
  v8();
  v35 = (v44 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "op";
  *(v36 + 1) = 2;
  v36[16] = 2;
  v37 = *MEMORY[0x1E69AADC8];
  v8();
  v38 = v44 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v38 = "all";
  *(v38 + 8) = 3;
  *(v38 + 16) = 2;
  v8();
  v39 = (v44 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "larg";
  *(v40 + 1) = 4;
  v40[16] = 2;
  v8();
  v41 = (v44 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "rarg";
  *(v42 + 1) = 4;
  v42[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_AlterTableStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_AlterTableStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "relation";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cmds";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "relkind";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "missing_ok";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_AlterTableCmd._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_AlterTableCmd._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_184D2AA80;
  v4 = v21 + v3;
  v5 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v5 = "subtype";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "name";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "num";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "newowner";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "def";
  *(v15 + 1) = 3;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "behavior";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "missing_ok";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_AlterDomainStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_AlterDomainStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_184D2AA20;
  v4 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v4 = "subtype";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v19 + v3 + v2 + v1[14];
  *(v19 + v3 + v2) = 2;
  *v8 = "type_name";
  *(v8 + 8) = 9;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADE8];
  v7();
  v10 = (v19 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "name";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v7();
  v12 = (v19 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "def";
  *(v13 + 1) = 3;
  v13[16] = 2;
  v7();
  v14 = (v19 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "behavior";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v7();
  v16 = (v19 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "missing_ok";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_SetOperationStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_SetOperationStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_184D2AAD0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "op";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "all";
  *(v9 + 8) = 3;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "larg";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "rarg";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "col_types";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v16 = *MEMORY[0x1E69AADE8];
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "col_typmods";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "col_collations";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "group_clauses";
  *(v22 + 1) = 13;
  v22[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_GrantStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_GrantStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_184D2AAD0;
  v4 = v22 + v3 + v1[14];
  *(v22 + v3) = 1;
  *v4 = "is_grant";
  *(v4 + 8) = 8;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v22 + v3 + v2 + v1[14];
  *(v22 + v3 + v2) = 2;
  *v8 = "targtype";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v22 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "objtype";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v7();
  v11 = (v22 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "objects";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v7();
  v13 = (v22 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "privileges";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v22 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "grantees";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  v17 = (v22 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "grant_option";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v7();
  v19 = (v22 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "behavior";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_GrantRoleStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_GrantRoleStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_184D2AA20;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "granted_roles";
  *(v4 + 8) = 13;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "grantee_roles";
  *(v8 + 8) = 13;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "is_grant";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "admin_opt";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "grantor";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "behavior";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_AlterDefaultPrivilegesStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_AlterDefaultPrivilegesStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29A90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "options";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "action";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_ClusterStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_ClusterStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "relation";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "indexname";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "options";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CopyStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CopyStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_184D2AAD0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "relation";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "query";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "attlist";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "is_from";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "is_program";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "filename";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "options";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "where_clause";
  *(v21 + 1) = 12;
  v21[16] = 2;
  v22 = *MEMORY[0x1E69AADE8];
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CreateStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CreateStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_184D2AB30;
  v4 = v30 + v3;
  v5 = v30 + v3 + v1[14];
  *(v30 + v3) = 1;
  *v5 = "relation";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v30 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "table_elts";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  LODWORD(v5) = *MEMORY[0x1E69AADE8];
  v8();
  v10 = (v30 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "inh_relations";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v30 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "partbound";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v30 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "partspec";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v30 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "of_typename";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v8();
  v18 = (v30 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "constraints";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v30 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "options";
  *(v21 + 1) = 7;
  v21[16] = 2;
  v8();
  v22 = v30 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "oncommit";
  *(v22 + 8) = 8;
  *(v22 + 16) = 2;
  v8();
  v23 = (v30 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "tablespacename";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v8();
  v25 = (v30 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "access_method";
  *(v26 + 1) = 13;
  v26[16] = 2;
  v8();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "if_not_exists";
  *(v28 + 1) = 13;
  v28[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_DefineStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_DefineStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_184D2AA80;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "kind";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "oldstyle";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "defnames";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "args";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "definition";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "if_not_exists";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "replace";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_DropStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_DropStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "objects";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "remove_type";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "behavior";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "missing_ok";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v9();
  v16 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v16 = "concurrent";
  *(v16 + 8) = 10;
  *(v16 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_TruncateStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_TruncateStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "relations";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "restart_seqs";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "behavior";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CommentStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CommentStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "objtype";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "object";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "comment";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_FetchStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_FetchStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "direction";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "how_many";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "portalname";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "ismove";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_IndexStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_IndexStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_184D2AB40;
  v4 = v52 + v3;
  v5 = v52 + v3 + v1[14];
  *(v52 + v3) = 1;
  *v5 = "idxname";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v52 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "relation";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v52 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "access_method";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v12 = *MEMORY[0x1E69AADE8];
  v8();
  v13 = (v52 + v3 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "table_space";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v8();
  v15 = (v52 + v3 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "index_params";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v8();
  v17 = (v52 + v3 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "index_including_params";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v8();
  v19 = (v52 + v3 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "options";
  *(v20 + 1) = 7;
  v20[16] = 2;
  v8();
  v21 = (v52 + v3 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "where_clause";
  *(v22 + 1) = 12;
  v22[16] = 2;
  v8();
  v23 = v52 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v23 = "exclude_op_names";
  *(v23 + 8) = 16;
  *(v23 + 16) = 2;
  v8();
  v24 = (v52 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "idxcomment";
  *(v25 + 1) = 10;
  v25[16] = 2;
  v8();
  v26 = (v52 + v3 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "index_oid";
  *(v27 + 1) = 9;
  v27[16] = 2;
  v8();
  v28 = (v52 + v3 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "old_node";
  *(v29 + 1) = 8;
  v29[16] = 2;
  v8();
  v30 = (v52 + v3 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "old_create_subid";
  *(v31 + 1) = 16;
  v31[16] = 2;
  v8();
  v32 = (v52 + v3 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "old_first_relfilenode_subid";
  *(v33 + 1) = 27;
  v33[16] = 2;
  v8();
  v34 = (v52 + v3 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "unique";
  *(v35 + 1) = 6;
  v35[16] = 2;
  v8();
  v36 = (v52 + v3 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "primary";
  *(v37 + 1) = 7;
  v37[16] = 2;
  v8();
  v38 = v52 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v38 = "isconstraint";
  *(v38 + 8) = 12;
  *(v38 + 16) = 2;
  v8();
  v39 = (v52 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "deferrable";
  *(v40 + 1) = 10;
  v40[16] = 2;
  v8();
  v41 = (v52 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "initdeferred";
  *(v42 + 1) = 12;
  v42[16] = 2;
  v8();
  v43 = (v52 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "transformed";
  *(v44 + 1) = 11;
  v44[16] = 2;
  v8();
  v45 = (v52 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "concurrent";
  *(v46 + 1) = 10;
  v46[16] = 2;
  v8();
  v47 = (v52 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 22;
  *v48 = "if_not_exists";
  *(v48 + 1) = 13;
  v48[16] = 2;
  v8();
  v49 = (v52 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 23;
  *v50 = "reset_default_tblspc";
  *(v50 + 1) = 20;
  v50[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CreateFunctionStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CreateFunctionStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "is_procedure";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "replace";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "funcname";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "parameters";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "return_type";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v17 = *MEMORY[0x1E69AADE8];
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "options";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_AlterFunctionStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_AlterFunctionStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "objtype";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "func";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "actions";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_RenameStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_RenameStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_184D2AAD0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "rename_type";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "relation_type";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "relation";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v12 = *MEMORY[0x1E69AADC8];
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "object";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "subname";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "newname";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "behavior";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "missing_ok";
  *(v22 + 1) = 10;
  v22[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_RuleStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_RuleStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_184D2AA80;
  v4 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v4 = "relation";
  *(v4 + 8) = 8;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v21 + v3 + v2 + v1[14];
  *(v21 + v3 + v2) = 2;
  *v8 = "rulename";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v21 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "where_clause";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v7();
  v12 = (v21 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "event";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v7();
  v14 = (v21 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "instead";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v7();
  v16 = (v21 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "actions";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v7();
  v18 = (v21 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "replace";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_NotifyStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_NotifyStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29A90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "conditionname";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "payload";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_TransactionStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_TransactionStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_184D2AA30;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "kind";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "options";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "savepoint_name";
  *(v11 + 1) = 14;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "gid";
  *(v13 + 1) = 3;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "chain";
  *(v14 + 8) = 5;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_ViewStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_ViewStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_184D2AA20;
  v4 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v4 = "view";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v19 + v3 + v2 + v1[14];
  *(v19 + v3 + v2) = 2;
  *v8 = "aliases";
  *(v8 + 8) = 7;
  *(v8 + 16) = 2;
  v7();
  v9 = (v19 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "query";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v19 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "replace";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v7();
  v13 = (v19 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "options";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v7();
  v15 = (v19 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "with_check_option";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v17 = *MEMORY[0x1E69AADE8];
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CreateDomainStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CreateDomainStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "domainname";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type_name";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "coll_clause";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "constraints";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CreatedbStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CreatedbStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29A90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "dbname";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "options";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_DropdbStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_DropdbStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "dbname";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "missing_ok";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "options";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_VacuumStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_VacuumStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "options";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rels";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "is_vacuumcmd";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_ExplainStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_ExplainStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29A90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "query";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "options";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CreateTableAsStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CreateTableAsStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "query";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "into";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "relkind";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "is_select_into";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "if_not_exists";
  *(v15 + 8) = 13;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CreateSeqStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CreateSeqStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "sequence";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "options";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "owner_id";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "for_identity";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v9();
  v16 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v16 = "if_not_exists";
  *(v16 + 8) = 13;
  *(v16 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_AlterSeqStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_AlterSeqStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "sequence";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "options";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "for_identity";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "missing_ok";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_VariableSetStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_VariableSetStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "kind";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "name";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "args";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "is_local";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CreateTrigStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CreateTrigStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_184D2AB50;
  v4 = v35 + v3;
  v5 = v35 + v3 + v1[14];
  *(v35 + v3) = 1;
  *v5 = "trigname";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v35 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "relation";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v35 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "funcname";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v35 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "args";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v8();
  v14 = (v35 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "row";
  *(v15 + 1) = 3;
  v15[16] = 2;
  v8();
  v16 = (v35 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "timing";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v8();
  v18 = (v35 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "events";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v8();
  v20 = (v35 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "columns";
  *(v21 + 1) = 7;
  v21[16] = 2;
  v8();
  v22 = v35 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "when_clause";
  *(v22 + 8) = 11;
  *(v22 + 16) = 2;
  v23 = *MEMORY[0x1E69AADE8];
  v8();
  v24 = (v35 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "isconstraint";
  *(v25 + 1) = 12;
  v25[16] = 2;
  v8();
  v26 = (v35 + v3 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "transition_rels";
  *(v27 + 1) = 15;
  v27[16] = 2;
  v8();
  v28 = (v35 + v3 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "deferrable";
  *(v29 + 1) = 10;
  v29[16] = 2;
  v8();
  v30 = (v35 + v3 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "initdeferred";
  *(v31 + 1) = 12;
  v31[16] = 2;
  v8();
  v32 = (v35 + v3 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "constrrel";
  *(v33 + 1) = 9;
  v33[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CreatePLangStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CreatePLangStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "replace";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "plname";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "plhandler";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "plinline";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "plvalidator";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "pltrusted";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CreateRoleStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CreateRoleStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "stmt_type";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "role";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "options";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_AlterRoleStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_AlterRoleStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "role";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "options";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "action";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_DropRoleStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_DropRoleStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29A90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "roles";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "missing_ok";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_LockStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_LockStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "relations";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "mode";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "nowait";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_ConstraintsSetStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_ConstraintsSetStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29A90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "constraints";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "deferred";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_ReindexStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_ReindexStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_184D2AA30;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "kind";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "relation";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "name";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "options";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "concurrent";
  *(v14 + 8) = 10;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CreateSchemaStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CreateSchemaStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "schemaname";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "authrole";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "schema_elts";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "if_not_exists";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_AlterDatabaseStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_AlterDatabaseStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29A90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "dbname";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "options";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_AlterDatabaseSetStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_AlterDatabaseSetStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29A90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "dbname";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "setstmt";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_AlterRoleSetStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_AlterRoleSetStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "role";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "database";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "setstmt";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CreateConversionStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CreateConversionStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "conversion_name";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "for_encoding_name";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "to_encoding_name";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "func_name";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "def";
  *(v15 + 8) = 3;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CreateCastStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CreateCastStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_184D2AA30;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "sourcetype";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "targettype";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "func";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "context";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "inout";
  *(v14 + 8) = 5;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CreateOpClassStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CreateOpClassStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "opclassname";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "opfamilyname";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "amname";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "datatype";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "items";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "is_default";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v19 = *MEMORY[0x1E69AADE8];
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CreateOpFamilyStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CreateOpFamilyStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29A90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "opfamilyname";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "amname";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_AlterOpFamilyStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_AlterOpFamilyStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "opfamilyname";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "amname";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "is_drop";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "items";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_PrepareStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_PrepareStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "argtypes";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "query";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_ExecuteStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_ExecuteStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29A90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "params";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_DeclareCursorStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_DeclareCursorStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "portalname";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "options";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "query";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CreateTableSpaceStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CreateTableSpaceStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "tablespacename";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "owner";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "location";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "options";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_DropTableSpaceStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_DropTableSpaceStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29A90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "tablespacename";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "missing_ok";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_AlterObjectDependsStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_AlterObjectDependsStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "object_type";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "relation";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "object";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "extname";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v9();
  v16 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v16 = "remove";
  *(v16 + 8) = 6;
  *(v16 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_AlterObjectSchemaStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_AlterObjectSchemaStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "object_type";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "relation";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "object";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "newschema";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v9();
  v16 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v16 = "missing_ok";
  *(v16 + 8) = 10;
  *(v16 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_AlterOwnerStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_AlterOwnerStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "object_type";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "relation";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "object";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "newowner";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_AlterOperatorStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_AlterOperatorStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29A90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "opername";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "options";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_DropOwnedStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_DropOwnedStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29A90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "roles";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "behavior";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_ReassignOwnedStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_ReassignOwnedStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29A90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "roles";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "newrole";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CompositeTypeStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CompositeTypeStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29A90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "typevar";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "coldeflist";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_AlterEnumStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_AlterEnumStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_184D2AA20;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "type_name";
  *(v4 + 8) = 9;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "old_val";
  *(v8 + 8) = 7;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "new_val";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "new_val_neighbor";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "new_val_is_after";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "skip_if_new_val_exists";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_AlterTSDictionaryStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_AlterTSDictionaryStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29A90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "dictname";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "options";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_AlterTSConfigurationStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_AlterTSConfigurationStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_184D2AA80;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "kind";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "cfgname";
  *(v8 + 8) = 7;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "tokentype";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "dicts";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "override";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "replace";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "missing_ok";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CreateFdwStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CreateFdwStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "fdwname";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "func_options";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "options";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_AlterFdwStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_AlterFdwStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "fdwname";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "func_options";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "options";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CreateForeignServerStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CreateForeignServerStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "servername";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "servertype";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "version";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "fdwname";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "if_not_exists";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "options";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_AlterForeignServerStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_AlterForeignServerStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "servername";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "version";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "options";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "has_version";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CreateUserMappingStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CreateUserMappingStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "user";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "servername";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "if_not_exists";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "options";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_AlterUserMappingStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_AlterUserMappingStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "user";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "servername";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "options";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_DropUserMappingStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_DropUserMappingStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "user";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "servername";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "missing_ok";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_AlterTableSpaceOptionsStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_AlterTableSpaceOptionsStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "tablespacename";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "options";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "is_reset";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x1E69AADE8];
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_AlterTableMoveAllStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_AlterTableMoveAllStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "orig_tablespacename";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "objtype";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "roles";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "new_tablespacename";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "nowait";
  *(v15 + 8) = 6;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_SecLabelStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_SecLabelStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "objtype";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "object";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "provider";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "label";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CreateForeignTableStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CreateForeignTableStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "base_stmt";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  *(v6 + 24) = "base";
  *(v6 + 32) = 4;
  *(v6 + 40) = 2;
  v7 = *MEMORY[0x1E69AADD8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "servername";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v12 = "options";
  *(v12 + 8) = 7;
  *(v12 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_ImportForeignSchemaStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_ImportForeignSchemaStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "server_name";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "remote_schema";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "local_schema";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "list_type";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "table_list";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "options";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CreateExtensionStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CreateExtensionStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "extname";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "if_not_exists";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "options";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_AlterExtensionStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_AlterExtensionStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29A90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "extname";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "options";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_AlterExtensionContentsStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_AlterExtensionContentsStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "extname";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "action";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "objtype";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "object";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CreateEventTrigStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CreateEventTrigStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "trigname";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "eventname";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "whenclause";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "funcname";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_AlterEventTrigStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_AlterEventTrigStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29A90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "trigname";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "tgenabled";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_RefreshMatViewStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_RefreshMatViewStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "concurrent";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "skip_data";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v12 = "relation";
  *(v12 + 8) = 8;
  *(v12 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_ReplicaIdentityStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_ReplicaIdentityStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29A90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identity_type";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "name";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CreatePolicyStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CreatePolicyStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_184D2AA80;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "policy_name";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "table";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "cmd_name";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "permissive";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "roles";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "qual";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "with_check";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_AlterPolicyStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_AlterPolicyStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "policy_name";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "table";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "roles";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "qual";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "with_check";
  *(v15 + 8) = 10;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CreateTransformStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CreateTransformStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_184D2AA30;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "replace";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "type_name";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "lang";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "fromsql";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "tosql";
  *(v14 + 8) = 5;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CreateAmStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CreateAmStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "amname";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "handler_name";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "amtype";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CreatePublicationStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CreatePublicationStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "pubname";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "options";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "tables";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "for_all_tables";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_AlterPublicationStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_AlterPublicationStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "pubname";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "options";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "tables";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "for_all_tables";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "table_action";
  *(v15 + 8) = 12;
  *(v15 + 16) = 2;
  v16 = *MEMORY[0x1E69AADE8];
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CreateSubscriptionStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CreateSubscriptionStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "subname";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "conninfo";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "publication";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "options";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_AlterSubscriptionStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_AlterSubscriptionStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "kind";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "subname";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "conninfo";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "publication";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "options";
  *(v15 + 8) = 7;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_DropSubscriptionStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_DropSubscriptionStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "subname";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "missing_ok";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "behavior";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CreateStatsStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CreateStatsStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "defnames";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "stat_types";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "exprs";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "relations";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "stxcomment";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "if_not_exists";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CallStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CallStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29A90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "funccall";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "funcexpr";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_AlterStatsStmt._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_AlterStatsStmt._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "defnames";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "stxstattarget";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "missing_ok";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_A_Expr._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_A_Expr._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_184D2AA30;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "kind";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "name";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "lexpr";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "rexpr";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "location";
  *(v14 + 8) = 8;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_ColumnRef._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_ColumnRef._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29A90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "fields";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "location";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_ParamRef._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_ParamRef._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29A90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "number";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "location";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_A_Const._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_A_Const._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29A90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "val";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "location";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_FuncCall._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_FuncCall._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_184D2AA50;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "funcname";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v26 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "args";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v26 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "agg_order";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v26 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "agg_filter";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v26 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "agg_within_group";
  *(v15 + 1) = 16;
  v15[16] = 2;
  v8();
  v16 = (v26 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "agg_star";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v26 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "agg_distinct";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v26 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "func_variadic";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = v26 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "over";
  *(v22 + 8) = 4;
  *(v22 + 16) = 2;
  v8();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "location";
  *(v24 + 1) = 8;
  v24[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_A_Indices._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_A_Indices._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "is_slice";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "lidx";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "uidx";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_A_Indirection._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_A_Indirection._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29A90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "arg";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "indirection";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_A_ArrayExpr._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_A_ArrayExpr._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29A90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "elements";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "location";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_ResTarget._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_ResTarget._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "indirection";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "val";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "location";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_MultiAssignRef._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_MultiAssignRef._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "source";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "colno";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "ncolumns";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_TypeCast._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_TypeCast._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "arg";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type_name";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v12 = "location";
  *(v12 + 8) = 8;
  *(v12 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CollateClause._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CollateClause._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "arg";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "collname";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "location";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_SortBy._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_SortBy._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "node";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sortby_dir";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "sortby_nulls";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "use_op";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v15 = *MEMORY[0x1E69AADE8];
  v9();
  v16 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v16 = "location";
  *(v16 + 8) = 8;
  *(v16 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_WindowDef._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_WindowDef._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_184D2AAD0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "name";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "refname";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "partition_clause";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v12 = *MEMORY[0x1E69AADE8];
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "order_clause";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "frame_options";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "start_offset";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "end_offset";
  *(v20 + 1) = 10;
  v20[16] = 2;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "location";
  *(v22 + 1) = 8;
  v22[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_RangeSubselect._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_RangeSubselect._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lateral";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "subquery";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "alias";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_RangeFunction._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_RangeFunction._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "lateral";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ordinality";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "is_rowsfrom";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "functions";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "alias";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "coldeflist";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_RangeTableSample._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_RangeTableSample._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_184D2AA30;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "relation";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v16 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "method";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v16 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "args";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v16 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "repeatable";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = v16 + v3 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "location";
  *(v14 + 8) = 8;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_RangeTableFunc._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_RangeTableFunc._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_184D2AA80;
  v4 = v21 + v3;
  v5 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v5 = "lateral";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "docexpr";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "rowexpr";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "namespaces";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "columns";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "alias";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "location";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_RangeTableFuncCol._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_RangeTableFuncCol._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_184D2AA80;
  v4 = v22 + v3;
  v5 = v22 + v3 + v1[14];
  *(v22 + v3) = 1;
  *v5 = "colname";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "type_name";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x1E69AADE8];
  v8();
  v11 = (v4 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "for_ordinality";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "is_not_null";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "colexpr";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "coldefexpr";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "location";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_TypeName._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_TypeName._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_184D2AAD0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "names";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "type_oid";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v23 = *MEMORY[0x1E69AADE8];
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "setof";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "pct_type";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "typmods";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "typemod";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "array_bounds";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "location";
  *(v21 + 1) = 8;
  v21[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_ColumnDef._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_ColumnDef._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_184D2AA40;
  v4 = v40 + v3;
  v5 = v40 + v3 + v1[14];
  *(v40 + v3) = 1;
  *v5 = "colname";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "type_name";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v39 = *MEMORY[0x1E69AADE8];
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "inhcount";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "is_local";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "is_not_null";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "is_from_type";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "storage";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "raw_default";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "cooked_default";
  *(v22 + 8) = 14;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "identity";
  *(v24 + 1) = 8;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "identity_sequence";
  *(v26 + 1) = 17;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "generated";
  *(v28 + 1) = 9;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "coll_clause";
  *(v30 + 1) = 11;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "coll_oid";
  *(v32 + 1) = 8;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "constraints";
  *(v34 + 1) = 11;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "fdwoptions";
  *(v36 + 1) = 10;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "location";
  *(v37 + 8) = 8;
  *(v37 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_IndexElem._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_IndexElem._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_184D2AAD0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "name";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "expr";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "indexcolname";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "collation";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "opclass";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "opclassopts";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "ordering";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "nulls_ordering";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_Constraint._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_Constraint._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_184D2AB60;
  v4 = v61 + v3;
  v5 = v61 + v3 + v1[14];
  *(v61 + v3) = 1;
  *v5 = "contype";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v61 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "conname";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v61 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "deferrable";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v61 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "initdeferred";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v61 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "location";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v61 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "is_no_inherit";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v61 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "raw_expr";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v61 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "cooked_expr";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  v22 = v61 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "generated_when";
  *(v22 + 8) = 14;
  *(v22 + 16) = 2;
  v8();
  v23 = (v61 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "keys";
  *(v24 + 1) = 4;
  v24[16] = 2;
  v8();
  v25 = (v61 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "including";
  *(v26 + 1) = 9;
  v26[16] = 2;
  v8();
  v27 = (v61 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "exclusions";
  *(v28 + 1) = 10;
  v28[16] = 2;
  v8();
  v29 = (v61 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "options";
  *(v30 + 1) = 7;
  v30[16] = 2;
  v8();
  v31 = (v61 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "indexname";
  *(v32 + 1) = 9;
  v32[16] = 2;
  v8();
  v33 = (v61 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "indexspace";
  *(v34 + 1) = 10;
  v34[16] = 2;
  v8();
  v35 = (v61 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "reset_default_tblspc";
  *(v36 + 1) = 20;
  v36[16] = 2;
  v8();
  v37 = v61 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "access_method";
  *(v37 + 8) = 13;
  *(v37 + 16) = 2;
  v8();
  v38 = (v61 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "where_clause";
  *(v39 + 1) = 12;
  v39[16] = 2;
  v8();
  v40 = (v61 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "pktable";
  *(v41 + 1) = 7;
  v41[16] = 2;
  v8();
  v42 = (v61 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 20;
  *v43 = "fk_attrs";
  *(v43 + 1) = 8;
  v43[16] = 2;
  v8();
  v44 = (v61 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 21;
  *v45 = "pk_attrs";
  *(v45 + 1) = 8;
  v45[16] = 2;
  v8();
  v46 = (v61 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 22;
  *v47 = "fk_matchtype";
  *(v47 + 1) = 12;
  v47[16] = 2;
  v8();
  v48 = (v61 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 23;
  *v49 = "fk_upd_action";
  *(v49 + 1) = 13;
  v49[16] = 2;
  v8();
  v50 = (v61 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 24;
  *v51 = "fk_del_action";
  *(v51 + 1) = 13;
  v51[16] = 2;
  v8();
  v52 = (v61 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 25;
  *v53 = "old_conpfeqop";
  *(v53 + 1) = 13;
  v53[16] = 2;
  v8();
  v54 = (v61 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 26;
  *v55 = "old_pktable_oid";
  *(v55 + 1) = 15;
  v55[16] = 2;
  v8();
  v56 = (v61 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 27;
  *v57 = "skip_validation";
  *(v57 + 1) = 15;
  v57[16] = 2;
  v8();
  v58 = (v61 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 28;
  *v59 = "initially_valid";
  *(v59 + 1) = 15;
  v59[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_DefElem._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_DefElem._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "defnamespace";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "defname";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "arg";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "defaction";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "location";
  *(v15 + 8) = 8;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_RangeTblEntry._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_RangeTblEntry._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_184D2AB20;
  v4 = v77 + v3;
  v5 = v77 + v3 + v1[14];
  *(v77 + v3) = 1;
  *v5 = "rtekind";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v77 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "relid";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v77 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "relkind";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v77 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "rellockmode";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = (v77 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "tablesample";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v77 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "subquery";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v77 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "security_barrier";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v8();
  v20 = (v77 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "jointype";
  *(v21 + 1) = 8;
  v21[16] = 2;
  v8();
  v22 = v77 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "joinmergedcols";
  *(v22 + 8) = 14;
  *(v22 + 16) = 2;
  v8();
  v23 = (v77 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "joinaliasvars";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v8();
  v25 = (v77 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "joinleftcols";
  *(v26 + 1) = 12;
  v26[16] = 2;
  v8();
  v27 = (v77 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "joinrightcols";
  *(v28 + 1) = 13;
  v28[16] = 2;
  v8();
  v29 = (v77 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "functions";
  *(v30 + 1) = 9;
  v30[16] = 2;
  v8();
  v31 = (v77 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "funcordinality";
  *(v32 + 1) = 14;
  v32[16] = 2;
  v8();
  v33 = (v77 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "tablefunc";
  *(v34 + 1) = 9;
  v34[16] = 2;
  v8();
  v35 = (v77 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "values_lists";
  *(v36 + 1) = 12;
  v36[16] = 2;
  v8();
  v37 = v77 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "ctename";
  *(v37 + 8) = 7;
  *(v37 + 16) = 2;
  v8();
  v38 = (v77 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "ctelevelsup";
  *(v39 + 1) = 11;
  v39[16] = 2;
  v8();
  v40 = (v77 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "self_reference";
  *(v41 + 1) = 14;
  v41[16] = 2;
  v8();
  v42 = (v77 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 20;
  *v43 = "coltypes";
  *(v43 + 1) = 8;
  v43[16] = 2;
  v8();
  v44 = (v77 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 21;
  *v45 = "coltypmods";
  *(v45 + 1) = 10;
  v45[16] = 2;
  v8();
  v46 = (v77 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 22;
  *v47 = "colcollations";
  *(v47 + 1) = 13;
  v47[16] = 2;
  v8();
  v48 = (v77 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 23;
  *v49 = "enrname";
  *(v49 + 1) = 7;
  v49[16] = 2;
  v8();
  v50 = (v77 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 24;
  *v51 = "enrtuples";
  *(v51 + 1) = 9;
  v51[16] = 2;
  v8();
  v52 = (v77 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 25;
  *v53 = "alias";
  *(v53 + 1) = 5;
  v53[16] = 2;
  v8();
  v54 = (v77 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 26;
  *v55 = "eref";
  *(v55 + 1) = 4;
  v55[16] = 2;
  v8();
  v56 = (v77 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 27;
  *v57 = "lateral";
  *(v57 + 1) = 7;
  v57[16] = 2;
  v8();
  v58 = (v77 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 28;
  *v59 = "inh";
  *(v59 + 1) = 3;
  v59[16] = 2;
  v8();
  v60 = (v77 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 29;
  *v61 = "in_from_cl";
  *(v61 + 1) = 10;
  v61[16] = 2;
  v62 = *MEMORY[0x1E69AADE8];
  v8();
  v63 = (v77 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 30;
  *v64 = "required_perms";
  *(v64 + 1) = 14;
  v64[16] = 2;
  v8();
  v65 = (v77 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 31;
  *v66 = "check_as_user";
  *(v66 + 1) = 13;
  v66[16] = 2;
  v8();
  v67 = (v77 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 32;
  *v68 = "selected_cols";
  *(v68 + 1) = 13;
  v68[16] = 2;
  v8();
  v69 = v77 + v3 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 33;
  *v69 = "inserted_cols";
  *(v69 + 8) = 13;
  *(v69 + 16) = 2;
  v8();
  v70 = (v77 + v3 + 33 * v2);
  v71 = v70 + v1[14];
  *v70 = 34;
  *v71 = "updated_cols";
  *(v71 + 1) = 12;
  v71[16] = 2;
  v8();
  v72 = (v77 + v3 + 34 * v2);
  v73 = v72 + v1[14];
  *v72 = 35;
  *v73 = "extra_updated_cols";
  *(v73 + 1) = 18;
  v73[16] = 2;
  v8();
  v74 = (v77 + v3 + 35 * v2);
  v75 = v74 + v1[14];
  *v74 = 36;
  *v75 = "security_quals";
  *(v75 + 1) = 14;
  v75[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_RangeTblFunction._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_RangeTblFunction._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_184D2AA80;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "funcexpr";
  *(v4 + 8) = 8;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "funccolcount";
  *(v8 + 8) = 12;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "funccolnames";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "funccoltypes";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "funccoltypmods";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "funccolcollations";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "funcparams";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_TableSampleClause._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_TableSampleClause._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "tsmhandler";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "args";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "repeatable";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_WithCheckOption._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_WithCheckOption._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_184D2AA30;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "kind";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "relname";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "polname";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "qual";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "cascaded";
  *(v14 + 8) = 8;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_SortGroupClause._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_SortGroupClause._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "tle_sort_group_ref";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "eqop";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "sortop";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "nulls_first";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v9();
  v16 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v16 = "hashable";
  *(v16 + 8) = 8;
  *(v16 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_GroupingSet._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_GroupingSet._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "kind";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "content";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "location";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_WindowClause._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_WindowClause._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_184D2AB50;
  v4 = v35 + v3;
  v5 = v35 + v3 + v1[14];
  *(v35 + v3) = 1;
  *v5 = "name";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v35 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "refname";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v35 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "partition_clause";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v12 = *MEMORY[0x1E69AADE8];
  v8();
  v13 = (v35 + v3 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "order_clause";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v8();
  v15 = (v35 + v3 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "frame_options";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v8();
  v17 = (v35 + v3 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "start_offset";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v8();
  v19 = (v35 + v3 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "end_offset";
  *(v20 + 1) = 10;
  v20[16] = 2;
  v8();
  v21 = (v35 + v3 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "start_in_range_func";
  *(v22 + 1) = 19;
  v22[16] = 2;
  v8();
  v23 = v35 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v23 = "end_in_range_func";
  *(v23 + 8) = 17;
  *(v23 + 16) = 2;
  v8();
  v24 = (v35 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "in_range_coll";
  *(v25 + 1) = 13;
  v25[16] = 2;
  v8();
  v26 = (v35 + v3 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "in_range_asc";
  *(v27 + 1) = 12;
  v27[16] = 2;
  v8();
  v28 = (v35 + v3 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "in_range_nulls_first";
  *(v29 + 1) = 20;
  v29[16] = 2;
  v8();
  v30 = (v35 + v3 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "winref";
  *(v31 + 1) = 6;
  v31[16] = 2;
  v8();
  v32 = (v35 + v3 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "copied_order";
  *(v33 + 1) = 12;
  v33[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_ObjectWithArgs._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_ObjectWithArgs._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "objname";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "objargs";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "args_unspecified";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_AccessPriv._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_AccessPriv._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29A90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "priv_name";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cols";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CreateOpClassItem._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CreateOpClassItem._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_184D2AA20;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "itemtype";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "name";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "number";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "order_family";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "class_args";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "storedtype";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_TableLikeClause._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_TableLikeClause._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "relation";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "options";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "relation_oid";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x1E69AADE8];
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_FunctionParameter._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_FunctionParameter._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "arg_type";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "mode";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "defexpr";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_LockingClause._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_LockingClause._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "locked_rels";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "strength";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v12 = "wait_policy";
  *(v12 + 8) = 11;
  *(v12 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_RowMarkClause._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_RowMarkClause._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "rti";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "strength";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "wait_policy";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "pushed_down";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_XmlSerialize._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_XmlSerialize._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "xmloption";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "expr";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "type_name";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "location";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_WithClause._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_WithClause._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "ctes";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "recursive";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "location";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_InferClause._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_InferClause._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "index_elems";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "where_clause";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "conname";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADC8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "location";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_OnConflictClause._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_OnConflictClause._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_184D2AA30;
  v4 = v17 + v3;
  v5 = v17 + v3 + v1[14];
  *(v17 + v3) = 1;
  *v5 = "action";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "infer";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "target_list";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v12 = *MEMORY[0x1E69AADE8];
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "where_clause";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v8();
  v15 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v15 = "location";
  *(v15 + 8) = 8;
  *(v15 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_CommonTableExpr._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_CommonTableExpr._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_184D2AAA0;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v5 = "ctename";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "aliascolnames";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "ctematerialized";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "ctequery";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "location";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "cterecursive";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "cterefcount";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "ctecolnames";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "ctecoltypes";
  *(v22 + 8) = 11;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "ctecoltypmods";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "ctecolcollations";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_RoleSpec._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_RoleSpec._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "roletype";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rolename";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "location";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_TriggerTransition._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_TriggerTransition._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "is_new";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v12 = "is_table";
  *(v12 + 8) = 8;
  *(v12 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_PartitionElem._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_PartitionElem._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "expr";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "collation";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "opclass";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "location";
  *(v15 + 8) = 8;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_PartitionSpec._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_PartitionSpec._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "strategy";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "part_params";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v12 = "location";
  *(v12 + 8) = 8;
  *(v12 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_PartitionBoundSpec._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_PartitionBoundSpec._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_184D2AAD0;
  v4 = v22 + v3 + v1[14];
  *(v22 + v3) = 1;
  *v4 = "strategy";
  *(v4 + 8) = 8;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v22 + v3 + v2 + v1[14];
  *(v22 + v3 + v2) = 2;
  *v8 = "is_default";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v7();
  v9 = (v22 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "modulus";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v7();
  v11 = (v22 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "remainder";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v22 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "listdatums";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v22 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "lowerdatums";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v7();
  v17 = (v22 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "upperdatums";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v7();
  v19 = (v22 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "location";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_PartitionRangeDatum._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_PartitionRangeDatum._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "kind";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "location";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_PartitionCmd._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_PartitionCmd._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29A90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bound";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_VacuumRelation._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_VacuumRelation._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D29DA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "relation";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "oid";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "va_cols";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_InlineCodeBlock._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_InlineCodeBlock._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "source_text";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "lang_oid";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "lang_is_trusted";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "atomic";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static PgQuery_ScanToken._protobuf_nameMap);
  __swift_project_value_buffer(v0, static PgQuery_ScanToken._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_184D2AA10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "start";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "end";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "token";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "keyword_kind";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v15 = *MEMORY[0x1E69AADE8];
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}